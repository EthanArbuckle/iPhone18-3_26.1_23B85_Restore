uint64_t *sub_29AEAE75C(uint64_t *result, void *a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = a2[1] + *result - v2;
  if (v2 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v2;
    do
    {
      *v6 = *v5;
      *(v6 + 8) = *(v5 + 8);
      *(v5 + 8) = 0;
      v5 += 16;
      v6 += 16;
    }

    while (v5 != v2);
    do
    {
      v7 = *(v3 + 8);
      if ((v7 & 7) != 0)
      {
        atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v3 += 16;
    }

    while (v3 != v2);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v8;
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

uint64_t sub_29AEAE800(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v3 != v2)
  {
    v4 = v3 - 16;
    *(a1 + 16) = v3 - 16;
    v5 = *(v3 - 8);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      v3 = *(a1 + 16);
    }

    else
    {
      v3 = v4;
    }
  }

  v6 = *a1;
  if (*a1)
  {
    operator delete(v6);
  }

  return a1;
}

void sub_29AEAE870(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if ((v5 & 7) != 0)
        {
          atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = **a1;
    }

    v1[1] = v2;
    operator delete(v4);
  }
}

uint64_t sub_29AEAE8D0(tbb::internal::allocate_continuation_proxy *this)
{
  v33 = *MEMORY[0x29EDCA608];
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
  v6 = *(this + 2);
  v7 = *(this + 3);
  v8 = v4 - v6;
  if (v7 < v4 - v6)
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
        v12 = *(this + 1);
        v13 = *(this + 2);
        *v11 = &unk_2A2099D78;
        *(v11 + 8) = v12;
        v14 = v13 + ((v12 - v13) >> 1);
        *(this + 1) = v14;
        *(v11 + 16) = v14;
        *(v11 + 24) = *(this + 24);
        v15 = *(this + 5) >> 1;
        *(this + 5) = v15;
        *(v11 + 40) = v15;
        *(v11 + 48) = 2;
        *(v11 + 52) = *(this + 52);
        (***(v11 - 40))();
        v6 = *(this + 2);
        v7 = *(this + 3);
        v4 = *(this + 1);
        v8 = v4 - v6;
        if (v7 >= v4 - v6)
        {
          break;
        }

        v16 = *(this + 5);
        if (v16 <= 1)
        {
          if (!v16 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v7 < v8 && *(this + 52))
  {
    *v30 = 0x10000;
    v31 = *v5;
    v32 = *(this + 3);
    while (1)
    {
      sub_29A3B10B4(v30, *(this + 52));
      v17 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if (v17)
      {
        v18 = *(this + 52) + 1;
        *(this + 52) = v18;
        v19 = v30[2];
        if (v30[2] >= 2u)
        {
          v20 = v30[1];
          v21 = v30[v30[1] + 3];
          v22 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
          *(v22 - 11) = 1;
          *v22 = &unk_2A204C520;
          __dmb(0xBu);
          v22[8] = 0;
          *(this - 4) = v22;
          *(v22 - 3) = 2;
          v23 = tbb::internal::allocate_child_proxy::allocate(v22, 0x38uLL);
          v24 = &v31 + 24 * v20;
          *(v23 - 11) = 1;
          *v23 = &unk_2A2099D78;
          v25 = *v24;
          *(v23 + 24) = *(v24 + 2);
          *(v23 + 8) = v25;
          v26 = *(this + 4);
          v27 = *(this + 5) >> 1;
          *(this + 5) = v27;
          *(v23 + 32) = v26;
          *(v23 + 40) = v27;
          *(v23 + 48) = 2;
          *(v23 + 52) = *(this + 52) - v21;
          (***(v23 - 40))();
          v19 = --v30[2];
          v30[1] = (v30[1] + 1) & 7;
          goto LABEL_25;
        }

        v28 = v30[0];
        if (v30[v30[0] + 3] < v18 && *(&v31 + 3 * v30[0] + 2) < *(&v31 + 3 * v30[0]) - *(&v31 + 3 * v30[0] + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        v28 = v30[0];
      }

      sub_29AEAECF0(*(this + 4), *(&v31 + 3 * v28 + 1), *(&v31 + 3 * v28));
      v19 = --v30[2];
      v30[0] = (v30[0] - 1) & 7;
LABEL_25:
      if (!v19 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }
  }

  sub_29AEAECF0(*(this + 4), v6, v4);
  return 0;
}

void sub_29AEAECF0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    v6 = *(a1 + 8);
    do
    {
      v7 = (**a1 + 16 * v4);
      v8 = v4 + 1;
      *(*(v6 + 80) + 4 * *v7) = (v4 + 1);
      v9 = *(v7 + 1) & 0xFFFFFFFFFFFFFFF8;
      if (v9)
      {
        EmptyString = (v9 + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(a1);
      }

      pxrInternal__aapl__pxrReserved__::HdStTextureUtils::GetAllMipImages(EmptyString, **(a1 + 16), &v18);
      if (v18 != v19)
      {
        v11 = *(a1 + 24);
        v12 = *v11;
        v13 = v11[1];
        while (v12 != v13)
        {
          v14 = v18;
          if (v19 != v18)
          {
            v14 = v19 - 2;
            while (1)
            {
              v15 = *(v12 + 8);
              if (v15 <= (*(**v14 + 48))())
              {
                v16 = *(v12 + 12);
                if (v16 <= (*(**v14 + 56))())
                {
                  break;
                }
              }

              v17 = v14 == v18;
              v14 -= 2;
              if (v17)
              {
                v14 = v18;
                break;
              }
            }
          }

          pxrInternal__aapl__pxrReserved__::HdStTextureUtils::ReadAndConvertImage(v14, 1, **(a1 + 32), v12, v4, *(v6 + 56));
          v12 += 32;
        }
      }

      v20 = &v18;
      sub_29A0176E4(&v20);
      ++v4;
    }

    while (v8 != a3);
  }
}

void sub_29AEAEE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_29A0176E4(&a12);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow *pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow::HdSt_UnitTestWindow(pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow *this, pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing *a2, int a3, int a4)
{
  result = pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::GarchGLDebugWindow(this, "Hd Test", a3, a4);
  *result = &unk_2A2099DC0;
  *(result + 6) = a2;
  *(result + 56) = 0;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::GarchGLDebugWindow(this, "Hd Test", a3, a4);
  *result = &unk_2A2099DC0;
  *(result + 6) = a2;
  *(result + 56) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow::~HdSt_UnitTestWindow(pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow *this)
{
  pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::~GarchGLDebugWindow(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow::OnInitializeGL(pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow *this)
{
  v2 = pxrInternal__aapl__pxrReserved__::internal::GLApi::GarchGLApiLoad(this);
  pxrInternal__aapl__pxrReserved__::GlfRegisterDefaultDebugOutputMessageCallback(v2);
  String = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7936);
  v4 = strlen(String);
  v5 = MEMORY[0x29EDC93C8];
  v6 = sub_29A00911C(MEMORY[0x29EDC93C8], String, v4);
  sub_29A00911C(v6, "\n", 1);
  v7 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7937);
  v8 = strlen(v7);
  v9 = sub_29A00911C(v5, v7, v8);
  sub_29A00911C(v9, "\n", 1);
  v10 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetString(7938);
  v11 = strlen(v10);
  v12 = sub_29A00911C(v5, v10, v11);
  sub_29A00911C(v12, "\n", 1);
  v13 = *(**(this + 6) + 16);

  return v13();
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow::OnPaintGL(pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow *this)
{
  (*(**(this + 6) + 32))(*(this + 6));
  v2 = *(**(this + 6) + 88);

  return v2();
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow::OnIdle(uint64_t this)
{
  if (*(this + 56) == 1)
  {
    return (*(**(this + 48) + 80))();
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow::OnKeyRelease(pxrInternal__aapl__pxrReserved__::HdSt_UnitTestWindow *this, int a2)
{
  if (a2 == 113)
  {
    return pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::ExitApp(this);
  }

  else
  {
    return (*(**(this + 6) + 72))();
  }
}

double pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing::HdSt_UnitTestGLDrawing(pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing *this)
{
  *this = &unk_2A2099E28;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 39) = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing::RunTest(pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing *this, int a2, char **a3)
{
  if (a2 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = a3;
    v7 = a2;
    while (1)
    {
      sub_29A008E78(&v19, *v6);
      if (v20 < 0)
      {
        if (*(&v19 + 1) != 11)
        {
          operator delete(v19);
LABEL_21:
          sub_29A008E78(&v19, *v6);
          if (v20 < 0)
          {
            v12 = *(&v19 + 1) == 9 && *v19 == 0x74616D696E612D2DLL && *(v19 + 8) == 101;
            operator delete(v19);
          }

          else
          {
            v12 = v20 == 9 && v19 == 0x74616D696E612D2DLL && BYTE8(v19) == 101;
          }

          v5 |= v12;
          goto LABEL_40;
        }

        v10 = *v19 != 0x72637366666F2D2DLL || *(v19 + 3) != 0x6E65657263736666;
        operator delete(v19);
        if (v10)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v20 != 11)
        {
          goto LABEL_21;
        }

        if (v19 != 0x72637366666F2D2DLL || *(&v19 + 3) != 0x6E65657263736666)
        {
          goto LABEL_21;
        }
      }

      v4 = 1;
LABEL_40:
      ++v6;
      if (!--v7)
      {
        goto LABEL_43;
      }
    }
  }

  v5 = 0;
  v4 = 0;
LABEL_43:
  (*(*this + 96))(this, a2, a3);
  v14 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::GarchGLDebugWindow(v14, "Hd Test", 640, 480);
  *v14 = &unk_2A2099DC0;
  *(v14 + 6) = this;
  *(v14 + 56) = 0;
  *(this + 1) = v14;
  pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::Init(v14);
  v15 = *(this + 1);
  if (v4)
  {
    return (*(**(v15 + 48) + 40))(*(v15 + 48));
  }

  if (v5)
  {
    *(v15 + 56) = 1;
  }

  return pxrInternal__aapl__pxrReserved__::GarchGLDebugWindow::Run(v15);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing::MousePress(uint64_t this, int a2, int a3, int a4)
{
  *(this + a2 + 44) = 1;
  *(this + 36) = a3;
  *(this + 40) = a4;
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing::MouseMove(uint64_t this, unsigned int a2, unsigned int a3, char a4)
{
  if ((a4 & 2) != 0)
  {
    v4 = vsub_s32(__PAIR64__(a3, a2), *(this + 36));
    if (*(this + 44) == 1)
    {
      *v4.i32 = *(this + 20) + v4.i32[0];
      *(this + 16) = *(this + 16) + v4.i32[1];
      *(this + 20) = v4.i32[0];
    }

    else if (*(this + 45) == 1)
    {
      v5.i64[0] = v4.i32[0];
      v5.i64[1] = v4.i32[1];
      v6 = vmulq_f64(vcvtq_f64_s64(v5), vdupq_n_s64(0x3FB999999999999AuLL));
      v7 = vcvtq_f64_f32(*(this + 24));
      *&v8.f64[0] = *&vaddq_f64(v6, v7);
      v8.f64[1] = vsubq_f64(v7, v6).f64[1];
      *(this + 24) = vcvt_f32_f64(v8);
    }

    else if (*(this + 46) == 1)
    {
      v9 = v4.i32[0] * 0.1 + *(this + 32);
      *(this + 32) = v9;
    }
  }

  *(this + 36) = a2;
  *(this + 40) = a3;
  return this;
}

double pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing::GetViewMatrix@<D0>(float32x2_t *this@<X0>, double *a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a2, 1.0);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12 = 0x3FF0000000000000uLL;
  v13 = 0.0;
  v14 = -90.0;
  v4 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(&v15, &v12);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, v4);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = this[2].f32[1];
  v12 = xmmword_29B432590;
  v13 = 0.0;
  v14 = v5;
  v6 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(&v15, &v12);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, v6);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = this[2].f32[0];
  v13 = 0.0;
  v12 = 0x3FF0000000000000uLL;
  v14 = v7;
  v8 = pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetRotate(&v15, &v12);
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, v8);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = this[4].f32[0];
  v12 = vcvtq_f64_f32(this[3]);
  v13 = v9;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetTranslate(&v15, &v12);
  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(a2, v10);
}

void pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing::GetProjectionMatrix(pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing *this@<X0>, uint64_t a2@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing::GetFrustum(this, v3);
  pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeProjectionMatrix(v3, a2);
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v3);
}

void pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing::GetFrustum(pxrInternal__aapl__pxrReserved__::HdSt_UnitTestGLDrawing *this@<X0>, pxrInternal__aapl__pxrReserved__::GfFrustum *a2@<X8>)
{
  v2 = *(*(this + 1) + 40) / *(*(this + 1) + 44);
  pxrInternal__aapl__pxrReserved__::GfFrustum::GfFrustum(a2);
  pxrInternal__aapl__pxrReserved__::GfFrustum::SetPerspective(v3, 45.0, v2, 1.0, 100000.0);
}

void sub_29AEAF834()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HD_MAX_VBO_SIZE))
  {
    sub_29B2CB424();
  }
}

double pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::CreateBufferArray@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v8 = a4;
  sub_29AEB20BC((a1 + 8), a2, a3, &v8, v7);
  result = v7[0];
  *a5 = *v7;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::CreateBufferArrayRange@<D0>(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager *this@<X0>, _OWORD *a2@<X8>)
{
  sub_29AEB2240(this + 1, v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::ComputeAggregationId(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = a3;
  if ((atomic_load_explicit(&qword_2A174F7E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F7E8))
  {
    qword_2A174F7E0 = pxrInternal__aapl__pxrReserved__::ArchHash("ComputeAggregationId", 0x15);
    __cxa_guard_release(&qword_2A174F7E8);
  }

  v6 = 0;
  v7 = 0;
  sub_29AE5F688(&v6, &qword_2A174F7E0, a2, &v5);
  return bswap64(0x9E3779B97F4A7C55 * v6);
}

void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::GetBufferSpecs(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GetBufferSpecs(v2, a2);
  if (v3)
  {

    sub_29A014BEC(v3);
  }
}

void sub_29AEAFA24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GetBufferSpecs@<X0>(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29AE4C758(a2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 26) - *(this + 25)) >> 3));
  v5 = *(this + 26);
  v14 = *(this + 25);
  v15 = v5;
  while (v14 != v15)
  {
    v6 = *sub_29ADF30C4(&v14);
    v7 = *(*sub_29ADF30C4(&v14) + 8);
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v10 = a2[1];
    if (v10 >= a2[2])
    {
      v12 = sub_29AE03FE4(a2, v6, &v13);
    }

    else
    {
      v11 = *v6;
      *v10 = *v6;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10[1] = v8;
      v10[2] = v9;
      v12 = (v10 + 3);
    }

    a2[1] = v12;
    result = sub_29ADF30FC(&v14);
  }

  return result;
}

void sub_29AEAFB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABC6FA0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::GetResourceAllocation(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v8 = *(v4 + 200);
  v7 = *(v4 + 208);
  v22 = v8;
  v23 = v7;
  while (v22 != v23)
  {
    v9 = sub_29ADF30C4(&v22);
    v10 = *v9;
    v11 = **(*v9 + 8);
    if (v11)
    {
      v11 = (*(*v11 + 24))(v11);
    }

    v21 = v11;
    for (i = v25[0]; i; i = *i)
    {
      v13 = i[4];
      if (v11 >= v13)
      {
        if (v13 >= v11)
        {
          goto LABEL_19;
        }

        ++i;
      }
    }

    v14 = sub_29A0F2BE4(&v24, &v21, &v21);
    v15 = *(v10 + 8);
    if ((*(v15 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      EmptyString = ((*(v15 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
      v15 = *(v10 + 8);
    }

    v17 = *(v15 + 16);
    if (pxrInternal__aapl__pxrReserved__::VtDictionary::count(a3, EmptyString))
    {
      v18 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, EmptyString);
      v26 = &v17[*sub_29AC1F544(v18)];
      v27 = &unk_2A2044983;
      v19 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, EmptyString);
    }

    else
    {
      v26 = v17;
      v27 = &unk_2A2044983;
      v19 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, EmptyString);
    }

    sub_29A18606C(v19, &v26);
    sub_29A186B14(&v26);
    v6 += v17;
LABEL_19:
    sub_29ADF30FC(&v22);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A082B84(&v24, v25[0]);
  return v6;
}

void sub_29AEAFD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  sub_29A186B14(va1);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A082B84(va, v9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::_StripedBufferArray(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v10)
  {
    v10 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  v11 = *(v10 + 13);
  v32 = v11;
  if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v32 &= 0xFFFFFFFFFFFFFFF8;
  }

  pxrInternal__aapl__pxrReserved__::HdBufferArray::HdBufferArray(a1, a3, &v32, a5);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a1 = &unk_2A2099EC8;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 188) = 0;
  *(a1 + 180) = 0;
  sub_29A0ECEEC(&v30, "hdSt", "pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::_StripedBufferArray(HdStResourceRegistry *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint)");
  v12 = *(a4 + 8);
  v23 = *a4;
  v24 = v12;
  while (v23 != v24)
  {
    v13 = sub_29AE5D60C(&v23);
    v14 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(*v13 + 8), *(*v13 + 16));
    v15 = *sub_29AE5D60C(&v23);
    v16 = sub_29AE5D60C(&v23);
    pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::_AddResource(a1, v15, *(*v16 + 8), *(*v16 + 16), 0, v14, &v28);
    if (v29)
    {
      sub_29A014BEC(v29);
    }

    sub_29AE5D634(&v23);
  }

  *(a1 + 152) = -1;
  v17 = *(a1 + 208);
  v23 = *(a1 + 200);
  v24 = v17;
  while (v23 != v24)
  {
    v18 = sub_29ADF30C4(&v23);
    v19 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(*(*v18 + 8) + 32), *(*(*v18 + 8) + 40));
    v20 = *(a1 + 184);
    if (v20 <= v19)
    {
      v20 = v19;
    }

    *(a1 + 184) = v20;
    sub_29ADF30FC(&v23);
  }

  if (!*(a1 + 184))
  {
    v23 = "hdSt/vboMemoryManager.cpp";
    v24 = "_StripedBufferArray";
    v25 = 185;
    v26 = "pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::_StripedBufferArray(HdStResourceRegistry *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint)";
    v27 = 0;
    if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v23, "_maxBytesPerElement != 0", 0) & 1) == 0)
    {
      *(a1 + 184) = 1;
    }
  }

  if ((a5 & 8) != 0)
  {
    *(a1 + 192) |= 8u;
  }

  if ((a5 & 0x10) != 0)
  {
    *(a1 + 192) |= 4u;
  }

  v21 = *(a1 + 192);
  if ((a5 & 0x20) != 0)
  {
    *(a1 + 192) = v21 | 2;
  }

  else if (!v21)
  {
    v23 = "hdSt/vboMemoryManager.cpp";
    v24 = "_StripedBufferArray";
    v25 = 200;
    v26 = "pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::_StripedBufferArray(HdStResourceRegistry *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint)";
    v27 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v23, 1, "Buffer usage was not specified!");
  }

  if (v30)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v31, v30);
  }

  return a1;
}

void sub_29AEB001C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A0E9CEC(&a16);
  sub_29A3E01A4(&a9);
  pxrInternal__aapl__pxrReserved__::HdBufferArray::~HdBufferArray(v16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::_AddResource@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v17[0] = a3;
  v17[1] = a4;
  v15 = a6;
  v16 = a5;
  if (sub_29ABCF8C0(27))
  {
    pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GetResource(a1, a2, a7);
    if (*a7)
    {
      v13[0] = "hdSt/vboMemoryManager.cpp";
      v13[1] = "_AddResource";
      v13[2] = 214;
      v13[3] = "HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::_AddResource(const TfToken &, HdTupleType, int, int)";
      v14 = 0;
      result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "!bufferRes", 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    v10 = a7[1];
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  sub_29AE467A0(a1 + 16, v17, &v16, &v15, a7);
  v11 = a1[26];
  if (v11 >= a1[27])
  {
    result = sub_29AE46890((a1 + 25), a2, a7);
  }

  else
  {
    result = (sub_29AE469C4(v11, a2, a7) + 3);
  }

  a1[26] = result;
  return result;
}

void sub_29AEB0188(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GetResource@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 200);
  v4 = *(result + 208);
  if (v3 == v4)
  {
LABEL_4:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while ((*a2 ^ *v3) > 7)
    {
      v3 += 3;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    v6 = v3[1];
    v5 = v3[2];
    *a3 = v6;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::~_StripedBufferArray(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray *this)
{
  *this = &unk_2A2099EC8;
  sub_29A0ECEEC(&v6, "hdSt", "virtual pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::~_StripedBufferArray()");
  v2 = atomic_load(this + 7);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      sub_29AE5D948(this, i, &v4);
      if (v4)
      {
        *(v4 + 16) = 0;
      }

      if (v5)
      {
        sub_29A014BEC(v5);
      }
    }
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  v6 = (this + 200);
  sub_29A3E01A4(&v6);
  pxrInternal__aapl__pxrReserved__::HdBufferArray::~HdBufferArray(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::~_StripedBufferArray(this);

  operator delete(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GarbageCollect(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray *this)
{
  sub_29A0ECEEC(&v9, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GarbageCollect()");
  if (*(this + 176) == 1)
  {
    pxrInternal__aapl__pxrReserved__::HdBufferArray::RemoveUnusedRanges(this);
    memset(v8, 0, sizeof(v8));
    v2 = atomic_load(this + 7);
    sub_29A039314(v8, v2);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        pxrInternal__aapl__pxrReserved__::HdBufferArray::GetRange(this, i, &v6);
        v7 = 0uLL;
        if (*(&v6 + 1))
        {
          *(&v7 + 1) = std::__shared_weak_count::lock(*(&v6 + 1));
          if (*(&v7 + 1))
          {
            *&v7 = v6;
          }

          if (*(&v6 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v6 + 1));
          }

          if (v7)
          {
            sub_29A017F80(v8, &v7);
          }
        }

        if (*(&v7 + 1))
        {
          sub_29A014BEC(*(&v7 + 1));
        }
      }
    }

    sub_29A014C58(&v7, this + 1);
    (*(*this + 24))(this, v8, &v7);
    if (*(&v7 + 1))
    {
      sub_29A014BEC(*(&v7 + 1));
    }

    *&v7 = v8;
    sub_29A0176E4(&v7);
  }

  v4 = atomic_load(this + 7);
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::_DeallocateResources(this);
  }

  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return v4 == 0;
}

void sub_29AEB046C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    sub_29A014BEC(a13);
  }

  a12 = &a14;
  sub_29A0176E4(&a12);
  sub_29A0E9CEC(v14 - 48);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::_DeallocateResources(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **this)
{
  result = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(this[21]);
  v3 = this[26];
  v6 = this[25];
  v7 = v3;
  if (v6 != v3)
  {
    v4 = result;
    do
    {
      v5 = sub_29ADF30C4(&v6);
      (*(*v4 + 104))(v4, *(*v5 + 8));
      result = sub_29ADF30FC(&v6);
    }

    while (v6 != v7);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::Reallocate(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_29A0ECEEC(&v76, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)");
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v7)
  {
    v7 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v6, (v7 + 304));
  v9 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 208) - *(a1 + 200) == *(v9 + 208) - *(v9 + 200) || (__p = "hdSt/vboMemoryManager.cpp", v67 = "Reallocate", v68 = 285, *&v69 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)", BYTE8(v69) = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "GetResources().size() == curRangeOwner_->GetResources().size()", 0) & 1) != 0))
  {
    v58 = v8;
    v55 = a2;
    if (sub_29ABCF8C0(27))
    {
      v10 = 0;
      v11 = *(a1 + 208);
      v59 = *(a1 + 200);
      v60 = v11;
      while (v59 != v60)
      {
        v12 = *(v9 + 200);
        v13 = sub_29ADF30C4(&v59);
        v14 = *(v9 + 200);
        v15 = *(v9 + 208);
        if (v14 == v15)
        {
LABEL_14:
          v16 = 0;
          v17 = 0;
        }

        else
        {
          while ((*v14 ^ **v13) > 7)
          {
            v14 += 3;
            if (v14 == v15)
            {
              goto LABEL_14;
            }
          }

          v17 = v14[1];
          v16 = v14[2];
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        if (*(v12 + 24 * v10 + 8) != v17)
        {
          __p = "hdSt/vboMemoryManager.cpp";
          v67 = "Reallocate";
          v68 = 294;
          *&v69 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
          BYTE8(v69) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "curRangeOwner_->GetResources()[bresIdx++].second == curRangeOwner_->GetResource(bresIt->first)", 0);
        }

        a2 = v55;
        if (v16)
        {
          sub_29A014BEC(v16);
        }

        ++v10;
        sub_29ADF30FC(&v59);
      }
    }

    v74 = 0;
    v75 = 0;
    v72 = 0;
    v73 = 0;
    sub_29A08AF9C(&v72, (a2[1] - *a2) >> 4);
    v18 = a2[1];
    v59 = *a2;
    v60 = v18;
    while (v59 != v60)
    {
      v19 = sub_29ABC5C14(&v59);
      if (*v19)
      {
        sub_29A018094(&v72, &v75);
        v75 += (*(**v19 + 88))();
      }

      else
      {
        __p = "hdSt/vboMemoryManager.cpp";
        v67 = "Reallocate";
        v68 = 306;
        *&v69 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
        BYTE8(v69) = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Expired range found in the reallocation list");
      }

      sub_29ABC5C44(&v59);
    }

    pxrInternal__aapl__pxrReserved__::HdBufferArray::_SetRangeList(a1, a2);
    *(a1 + 180) = v75;
    Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(a1 + 168));
    GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(*(a1 + 168));
    (*(*GlobalBlitCmds + 24))(GlobalBlitCmds, "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)");
    v53 = GlobalBlitCmds;
    v22 = *(a1 + 200);
    if (*(a1 + 208) != v22)
    {
      v23 = 0;
      v57 = a1;
      v54 = v9;
      do
      {
        v24 = v22 + 24 * v23;
        v26 = *(v24 + 8);
        v25 = (v24 + 8);
        v27 = *(v9 + 200);
        v28 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(v26 + 32), *(v26 + 40));
        if (v28 <= 0)
        {
          __p = "hdSt/vboMemoryManager.cpp";
          v67 = "Reallocate";
          v68 = 334;
          *&v69 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
          BYTE8(v69) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "bytesPerElement > 0", 0);
        }

        v29 = *(a1 + 180);
        v30 = v29 * v28;
        v31 = *v25;
        v32 = *(v27 + 24 * v23 + 8);
        v71 = 0uLL;
        if (v30)
        {
          __p = 0;
          v67 = 0;
          v68 = 0;
          v70.n128_u64[1] = 0;
          LODWORD(v69) = *(v57 + 192);
          *(&v69 + 1) = v29 * v28;
          v70.n128_u32[0] = v28;
          v33 = *(*(v57 + 200) + 24 * v23) & 0xFFFFFFFFFFFFFFF8;
          if (v33)
          {
            v34 = (v33 + 16);
            if (*(v33 + 39) < 0)
            {
              v34 = *v34;
            }
          }

          else
          {
            v34 = "";
          }

          MEMORY[0x29C2C1A60](&__p, v34);
          v35 = (*(*Hgi + 96))(Hgi, &__p);
          v71.n128_u64[0] = v35;
          v71.n128_u64[1] = v37;
          if (SHIBYTE(v68) < 0)
          {
            operator delete(__p);
            v35 = v71.n128_u64[0];
          }

          if (*v32)
          {
            v38 = v35 == 0;
          }

          else
          {
            v38 = 1;
          }

          if (!v38)
          {
            v39 = v72;
            __p = 0;
            v67 = 0;
            v68 = 0;
            v69 = *v32;
            v70 = v71;
            v40 = v55[1];
            v64 = *v55;
            v65 = v40;
            while (v64 != v65)
            {
              v41 = sub_29ABC5C14(&v64);
              v43 = *v41;
              v42 = *(v41 + 8);
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v43)
              {
                v44 = v43[10];
                v45 = (*(*v43 + 88))(v43);
                if (v44 >= v45)
                {
                  v44 = v45;
                }

                v46 = (*(*v43 + 72))(v43);
                if (v44 * v28 >= 1)
                {
                  pxrInternal__aapl__pxrReserved__::HdStBufferRelocator::AddRange(&__p, v46 * v28, *v39 * v28, v44 * v28);
                }

                ++v39;
              }

              else
              {
                v59 = "hdSt/vboMemoryManager.cpp";
                v60 = "Reallocate";
                v61 = 365;
                v62 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
                v63 = 0;
                pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v59, 1, "_StripedBufferArrayRange expired unexpectedly.");
              }

              if (v42)
              {
                sub_29A014BEC(v42);
              }

              sub_29ABC5C44(&v64);
            }

            pxrInternal__aapl__pxrReserved__::HdStBufferRelocator::Commit(&__p, v53, v36);
            if (__p)
            {
              v67 = __p;
              operator delete(__p);
            }
          }
        }

        if (v31->n128_u64[0])
        {
          (*(*Hgi + 104))(Hgi, v31);
        }

        v21 = pxrInternal__aapl__pxrReserved__::HdStBufferResource::SetAllocation(*v25, &v71, v30);
        ++v23;
        a1 = v57;
        v22 = *(v57 + 200);
        v9 = v54;
      }

      while (v23 < 0xAAAAAAAAAAAAAAABLL * ((*(v57 + 208) - v22) >> 3));
    }

    v47 = *v55;
    if (v55[1] != *v55)
    {
      v48 = 0;
      v49 = 0;
      do
      {
        v50 = v47 + v48;
        v51 = *v50;
        v52 = *(v50 + 8);
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v51)
        {
          v51[6] = v72[v49];
          v51[10] = (*(*v51 + 88))(v51, v21);
        }

        else
        {
          __p = "hdSt/vboMemoryManager.cpp";
          v67 = "Reallocate";
          v68 = 414;
          *&v69 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
          BYTE8(v69) = 0;
          pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "_StripedBufferArrayRange expired unexpectedly.", v21.n128_f64[0]);
        }

        if (v52)
        {
          sub_29A014BEC(v52);
        }

        ++v49;
        v47 = *v55;
        v48 += 16;
      }

      while (v49 < (v55[1] - *v55) >> 4);
    }

    (*(*v53 + 32))(v53, v21);
    *(a1 + 24) = 0;
    *(a1 + 176) = 0;
    pxrInternal__aapl__pxrReserved__::HdBufferArray::IncrementVersion(a1);
    v8 = v58;
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }
  }

  else
  {
    __p = "hdSt/vboMemoryManager.cpp";
    v67 = "Reallocate";
    v68 = 286;
    *&v69 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
    BYTE8(v69) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "Resource mismatch when reallocating buffer array");
  }

  if (v8)
  {
    sub_29A014BEC(v8);
  }

  if (v76)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v77, v76);
  }
}

void sub_29AEB0D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (v28)
  {
    sub_29A014BEC(v28);
  }

  sub_29A0E9CEC(v29 - 104);
  _Unwind_Resume(a1);
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GetMaxNumElements(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **this)
{
  if ((atomic_load_explicit(&qword_2A174F7F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F7F8))
  {
    v5 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_MAX_VBO_SIZE);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    qword_2A174F7F0 = *v5;
    __cxa_guard_release(&qword_2A174F7F8);
  }

  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(this[21]);
  v3 = *((*(*Hgi + 200))(Hgi) + 16);
  if (qword_2A174F7F0 < v3)
  {
    v3 = qword_2A174F7F0;
  }

  return v3 / this[23];
}

void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::DebugDump(uint64_t a1, void *a2)
{
  sub_29A00911C(a2, "  HdStVBOMemoryManager\n", 23);
  v4 = sub_29A00911C(a2, "  total capacity = ", 19);
  v5 = MEMORY[0x29C2C1ED0](v4, *(a1 + 180));
  sub_29A00911C(v5, "\n", 1);
  v6 = sub_29A00911C(a2, "    Range entries ", 18);
  v7 = atomic_load((a1 + 56));
  v8 = MEMORY[0x29C2C1F00](v6, v7);
  sub_29A00911C(v8, ":\n", 2);
  v9 = atomic_load((a1 + 56));
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      sub_29AE5D948(a1, i, &v13);
      if (v13)
      {
        v11 = sub_29A00911C(a2, "      ", 6);
        v12 = MEMORY[0x29C2C1F00](v11, i);
        pxrInternal__aapl__pxrReserved__::operator<<(v12, v13);
      }

      if (v14)
      {
        sub_29A014BEC(v14);
      }
    }
  }
}

void sub_29AEB1030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GetResource@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 200) == *(this + 208))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v3 = this;
    this = sub_29ABCF8C0(27);
    v4 = *(v3 + 200);
    if (this)
    {
      v5 = *(v4 + 8);
      v6 = *(v3 + 208);
      v11 = *(v3 + 200);
      v12 = v6;
      if (v4 != v6)
      {
        do
        {
          if (*(*(*sub_29ADF30C4(&v11) + 8) + 8) != *(v5 + 8))
          {
            v9[0] = "hdSt/vboMemoryManager.cpp";
            v9[1] = "GetResource";
            v9[2] = 480;
            v9[3] = "HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GetResource() const";
            v10 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "GetResource(void) called onHdBufferArray having multiple GPU resources");
          }

          this = sub_29ADF30FC(&v11);
        }

        while (v11 != v12);
        v4 = *(v3 + 200);
      }
    }

    v8 = *(v4 + 8);
    v7 = *(v4 + 16);
    *a2 = v8;
    a2[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::~_StripedBufferArrayRange(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange *this)
{
  *this = &unk_2A2099F08;
  v2 = *(this + 2);
  if (v2)
  {
    *(v2 + 176) = 1;
    pxrInternal__aapl__pxrReserved__::HdBufferArray::IncrementVersion(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::~HdStBufferArrayRange(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::~_StripedBufferArrayRange(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::IsImmutable(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return *(v1 + 160) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::Resize(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange *this, uint64_t a2)
{
  sub_29A0ECEEC(&v15, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::Resize(int)");
  if (*(this + 2) || (v10 = "hdSt/vboMemoryManager.cpp", v11 = "Resize", v12 = 560, v13 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::Resize(int)", v14 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v10, "_stripedBufferArray", 0) & 1) != 0))
  {
    v4 = *(this + 10);
    v5 = v4 != a2;
    if (v4 != a2)
    {
      v6 = (*(*this + 112))(this);
      v8 = v6;
      if (v6 < a2)
      {
        v10 = "hdSt/vboMemoryManager.cpp";
        v11 = "Resize";
        v12 = 609;
        v13 = "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::Resize(int)";
        v14 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v10, "Attempting to resize the BAR with 0x%x elements when the max number of elements in the buffer array is 0x%lx. Clamping BAR size to the latter.", v7, a2, v6);
        LODWORD(a2) = v8;
      }

      *(*(this + 2) + 24) = 1;
    }

    *(this + 4) = a2;
  }

  else
  {
    v5 = 0;
  }

  if (v15)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v16, v15);
  }

  return v5;
}

void sub_29AEB1360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::CopyData(uint64_t a1, uint64_t a2)
{
  sub_29A0ECEEC(&v51, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::CopyData(const HdBufferSourceSharedPtr &)");
  v4 = *(a1 + 16);
  if (!v4)
  {
    v45[0] = "hdSt/vboMemoryManager.cpp";
    v45[1] = "CopyData";
    v45[2] = 629;
    v45[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::CopyData(const HdBufferSourceSharedPtr &)";
    LOBYTE(v45[4]) = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v45, "_stripedBufferArray", 0))
    {
      goto LABEL_35;
    }

    v4 = *(a1 + 16);
  }

  v5 = (*(**a2 + 16))();
  v6 = *(v4 + 200);
  v7 = *(v4 + 208);
  if (v6 == v7)
  {
LABEL_5:
    v8 = 0;
    v9 = 0;
  }

  else
  {
    while ((*v6 ^ *v5) > 7)
    {
      v6 += 3;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    v8 = v6[1];
    v9 = v6[2];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8 && *v8)
    {
      goto LABEL_16;
    }
  }

  v45[0] = "hdSt/vboMemoryManager.cpp";
  v45[1] = "CopyData";
  v45[2] = 636;
  v45[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::CopyData(const HdBufferSourceSharedPtr &)";
  LOBYTE(v45[4]) = 0;
  v12 = *(*(**a2 + 16))() & 0xFFFFFFFFFFFFFFF8;
  if (v12)
  {
    v13 = (v12 + 16);
    if (*(v12 + 39) < 0)
    {
      v13 = *v13;
    }
  }

  else
  {
    v13 = "";
  }

  v14 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("VBO doesn't exist for %s", v10, v11, v13);
  if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v45, "(VBO && VBO->GetHandle())", v14) & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  if ((*(**a2 + 56))() != *(v8 + 32) || v15 != *(v8 + 40))
  {
    v45[0] = "hdSt/vboMemoryManager.cpp";
    v45[1] = "CopyData";
    v45[2] = 649;
    v45[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::CopyData(const HdBufferSourceSharedPtr &)";
    LOBYTE(v45[4]) = 0;
    v32 = *(*(**a2 + 16))() & 0xFFFFFFFFFFFFFFF8;
    if (v32)
    {
      v33 = (v32 + 16);
      if (*(v32 + 39) < 0)
      {
        v33 = *v33;
      }
    }

    else
    {
      v33 = "";
    }

    v34 = (*(**a2 + 56))();
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2076058, v34, v49);
    if (v50 >= 0)
    {
      v35 = v49;
    }

    else
    {
      v35 = v49[0];
    }

    v44 = v35;
    v36 = (*(**a2 + 56))();
    (*(**a2 + 56))();
    v38 = v37;
    pxrInternal__aapl__pxrReserved__::TfEnum::GetName(qword_2A2076058, *(v8 + 32), __p);
    v41 = __p;
    if (v48 < 0)
    {
      v41 = __p[0];
    }

    v42 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("'%s': (%s (%i) x %zu) != (%s (%i) x %zu)\n", v39, v40, v33, v44, v36, v38, v41, *(v8 + 32), *(v8 + 40));
    v43 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v45, "bufferSource->GetTupleType() == VBO->GetTupleType()", v42);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    if (v50 < 0)
    {
      operator delete(v49[0]);
    }

    if (!v43)
    {
      goto LABEL_33;
    }

    v15 = *(v8 + 40);
  }

  v17 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(v8 + 32), v15);
  v18 = *(a1 + 32);
  v19 = (*(**a2 + 64))();
  v20 = (*(**a2 + 56))();
  v22 = v18 * v17;
  v23 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(v20, v21) * v19;
  if (v23 <= v22)
  {
    v22 = v23;
  }

  else
  {
    v45[0] = "hdSt/vboMemoryManager.cpp";
    v45[1] = "CopyData";
    v45[2] = 663;
    v45[3] = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::CopyData(const HdBufferSourceSharedPtr &)";
    LOBYTE(v45[4]) = 0;
    v25 = *(*(**a2 + 16))() & 0xFFFFFFFFFFFFFFF8;
    if (v25)
    {
      v26 = (v25 + 16);
      if (*(v25 + 39) < 0)
      {
        v26 = *v26;
      }
    }

    else
    {
      v26 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v45, "%s: size %ld is larger than the range (%ld)", v24, v26, v23, v22);
  }

  v27 = *(a1 + 24);
  v28 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v28)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v29 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
  if (!v29)
  {
    v29 = sub_29ADCD5DC(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v28, (v29 + 8));
  v46 = 0;
  memset(&v45[1], 0, 32);
  v45[0] = (*(**a2 + 48))();
  *&v45[2] = *v8;
  v45[1] = 0;
  v45[4] = v27 * v17;
  v46 = v22;
  ResourceRegistry = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::GetResourceRegistry(a1);
  StagingBuffer = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetStagingBuffer(ResourceRegistry);
  pxrInternal__aapl__pxrReserved__::HdStStagingBuffer::StageCopy(StagingBuffer, v45);
LABEL_33:
  if (v9)
  {
    sub_29A014BEC(v9);
  }

LABEL_35:
  if (v51)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v52, v51);
  }
}

void sub_29AEB18D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v30 - 105) < 0)
  {
    operator delete(*(v30 - 128));
  }

  if (v29)
  {
    sub_29A014BEC(v29);
  }

  sub_29A0E9CEC(v30 - 104);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::GetByteOffset(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2)
{
  v4 = *(this + 2);
  if (!v4)
  {
    v13 = "hdSt/vboMemoryManager.cpp";
    v14 = "GetByteOffset";
    v15 = 687;
    v16 = "virtual int pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::GetByteOffset(const TfToken &) const";
    v17 = 0;
    v10 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v13, "_stripedBufferArray", 0))
    {
      return v10;
    }

    v4 = *(this + 2);
  }

  v5 = *(v4 + 200);
  v6 = *(v4 + 208);
  if (v5 == v6)
  {
LABEL_5:
    v7 = 0;
  }

  else
  {
    while ((*v5 ^ *a2) > 7)
    {
      v5 += 3;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    v12 = v5[1];
    v7 = v5[2];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v12 && (*v12 || !*(this + 4)))
    {
      v10 = *(this + 6) * pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(v12[4], v12[5]);
      if (!v7)
      {
        return v10;
      }

      goto LABEL_11;
    }
  }

  v13 = "hdSt/vboMemoryManager.cpp";
  v14 = "GetByteOffset";
  v15 = 692;
  v16 = "virtual int pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::GetByteOffset(const TfToken &) const";
  v17 = 0;
  v8 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v8)
  {
    v9 = (v8 + 16);
    if (*(v8 + 39) < 0)
    {
      v9 = *v9;
    }
  }

  else
  {
    v9 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v13, 1, "VBO doesn't exist for %s", v9);
  v10 = 0;
  if (v7)
  {
LABEL_11:
    sub_29A014BEC(v7);
  }

  return v10;
}

void sub_29AEB1ADC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::ReadData(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v19, "hdSt", "virtual VtValue pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::ReadData(const TfToken &) const");
  a3[1] = 0;
  v6 = *(this + 2);
  if (!v6)
  {
    v21 = "hdSt/vboMemoryManager.cpp";
    v22 = "ReadData";
    v23 = 707;
    v24 = "virtual VtValue pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::ReadData(const TfToken &) const";
    v25 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v21, "_stripedBufferArray", 0))
    {
      goto LABEL_12;
    }

    v6 = *(this + 2);
  }

  v7 = *(v6 + 200);
  v8 = *(v6 + 208);
  if (v7 == v8)
  {
LABEL_5:
    v9 = 0;
  }

  else
  {
    while ((*v7 ^ *a2) > 7)
    {
      v7 += 3;
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    v12 = v7[1];
    v9 = v7[2];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v12 && (*v12 || !*(this + 4)))
    {
      v13 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(v12 + 32), *(v12 + 40));
      v14 = *(this + 6);
      v15 = *(v12 + 32);
      v16 = *(v12 + 40);
      v17 = *(this + 4);
      ResourceRegistry = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::GetResourceRegistry(this);
      pxrInternal__aapl__pxrReserved__::HdStReadBuffer(v12, v15, v16, v14 * v13, 0, v17, 0, ResourceRegistry, &v21);
      sub_29A18606C(a3, &v21);
      sub_29A186B14(&v21);
      if (!v9)
      {
        goto LABEL_12;
      }

LABEL_11:
      sub_29A014BEC(v9);
      goto LABEL_12;
    }
  }

  v21 = "hdSt/vboMemoryManager.cpp";
  v22 = "ReadData";
  v23 = 712;
  v24 = "virtual VtValue pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::ReadData(const TfToken &) const";
  v25 = 0;
  v10 = *a2 & 0xFFFFFFFFFFFFFFF8;
  if (v10)
  {
    v11 = (v10 + 16);
    if (*(v10 + 39) < 0)
    {
      v11 = *v11;
    }
  }

  else
  {
    v11 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v21, 1, "VBO doesn't exist for %s", v11);
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v19)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v20, v19);
  }
}

void sub_29AEB1D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A186B14(v3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::GetUsageHint(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return *(v1 + 160);
  }

  v5[0] = "hdSt/vboMemoryManager.cpp";
  v5[1] = "GetUsageHint";
  v5[2] = 738;
  v5[3] = "virtual HdBufferArrayUsageHint pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::GetUsageHint() const";
  v6 = 0;
  v4 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_stripedBufferArray", 0);
  result = 0;
  if (v4)
  {
    v1 = *(this + 2);
    return *(v1 + 160);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::GetResource@<X0>(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 2);
  if (!v4)
  {
    v6[0] = "hdSt/vboMemoryManager.cpp";
    v6[1] = "GetResource";
    v6[2] = 749;
    v6[3] = "virtual HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::GetResource() const";
    v7 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "_stripedBufferArray", 0);
    if (!result)
    {
      *a2 = 0;
      a2[1] = 0;
      return result;
    }

    v4 = *(this + 2);
  }

  return pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GetResource(v4, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::GetResource@<X0>(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 2);
  if (!v6)
  {
    v8[0] = "hdSt/vboMemoryManager.cpp";
    v8[1] = "GetResource";
    v8[2] = 757;
    v8[3] = "virtual HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::GetResource(const TfToken &)";
    v9 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "_stripedBufferArray", 0);
    if (!result)
    {
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    v6 = *(this + 2);
  }

  return pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::GetResource(v6, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::GetResources(pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    if ((sub_29B2CB458(v3, this + 2, &v4, &v5) & 1) == 0)
    {
      return v5;
    }

    v1 = v4;
  }

  return v1 + 200;
}

void *pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArrayRange::DebugDump(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "[StripedBAR] offset = ", 22);
  v4 = MEMORY[0x29C2C1ED0](v3, *(a1 + 24));
  v5 = sub_29A00911C(v4, ", numElements = ", 16);
  v6 = MEMORY[0x29C2C1F00](v5, *(a1 + 32));
  v7 = sub_29A00911C(v6, ", capacity = ", 13);
  v8 = MEMORY[0x29C2C1ED0](v7, *(a1 + 40));

  return sub_29A00911C(v8, "\n", 1);
}

void sub_29AEB2060(pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy *a1)
{
  pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy::~HdStAggregationStrategy(a1);

  operator delete(v1);
}

void sub_29AEB20BC(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, int *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0xF8uLL);
  sub_29AEB2150(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;

  sub_29A017894(a5, v10 + 4, (v10 + 3));
}

void *sub_29AEB2150(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209A070;
  pxrInternal__aapl__pxrReserved__::HdStVBOMemoryManager::_StripedBufferArray::_StripedBufferArray((a1 + 3), *a2, a3, a4, *a5);
  return a1;
}

void sub_29AEB21D4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209A070;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AEB2240@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x48uLL);
  result = sub_29AEB229C(v4, a1);
  *a2 = v4 + 24;
  a2[1] = v4;
  return result;
}

uint64_t sub_29AEB229C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A209A0C0;
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::HdStBufferArrayRange((a1 + 24), *a2);
  *(a1 + 24) = &unk_2A2099F08;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void sub_29AEB2348(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209A0C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

double pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::CreateBufferArray@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v8 = a4;
  sub_29AEB3FE8((a1 + 8), a2, a3, &v8, v7);
  result = v7[0];
  *a5 = *v7;
  return result;
}

double pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::CreateBufferArrayRange@<D0>(pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager *this@<X0>, _OWORD *a2@<X8>)
{
  sub_29AEB4150(this + 1, v4);
  result = v4[0];
  *a2 = *v4;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::GetBufferSpecs(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GetBufferSpecs(v2, a2);
  if (v3)
  {

    sub_29A014BEC(v3);
  }
}

void sub_29AEB24BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29A014BEC(v1);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GetBufferSpecs@<X0>(pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_29AE4C758(a2, 0xAAAAAAAAAAAAAAABLL * ((*(this + 26) - *(this + 25)) >> 3));
  v5 = *(this + 26);
  v14 = *(this + 25);
  v15 = v5;
  while (v14 != v15)
  {
    v6 = *sub_29ADF30C4(&v14);
    v7 = *(*sub_29ADF30C4(&v14) + 8);
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v10 = a2[1];
    if (v10 >= a2[2])
    {
      v12 = sub_29AE03FE4(a2, v6, &v13);
    }

    else
    {
      v11 = *v6;
      *v10 = *v6;
      if ((v11 & 7) != 0 && (atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v10 &= 0xFFFFFFFFFFFFFFF8;
      }

      v10[1] = v8;
      v10[2] = v9;
      v12 = (v10 + 3);
    }

    a2[1] = v12;
    result = sub_29ADF30FC(&v14);
  }

  return result;
}

void sub_29AEB25CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29ABC6FA0(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::GetResourceAllocation(uint64_t a1, uint64_t *a2, pxrInternal__aapl__pxrReserved__::VtDictionary *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = 0;
  v8 = *(v4 + 200);
  v7 = *(v4 + 208);
  v23 = v8;
  v24 = v7;
  while (v23 != v24)
  {
    v9 = sub_29ADF30C4(&v23);
    v10 = *v9;
    v11 = **(*v9 + 8);
    if (v11)
    {
      v12 = (*(*v11 + 24))(v11);
      v22 = v12;
      if (v12)
      {
        for (i = v26[0]; i; i = *i)
        {
          v14 = i[4];
          if (v12 >= v14)
          {
            if (v14 >= v12)
            {
              goto LABEL_19;
            }

            ++i;
          }
        }

        v15 = sub_29A0F2BE4(&v25, &v22, &v22);
        v16 = *(v10 + 8);
        if ((*(v16 + 24) & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*(v16 + 24) & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v15);
          v16 = *(v10 + 8);
        }

        v18 = *(v16 + 16);
        if (pxrInternal__aapl__pxrReserved__::VtDictionary::count(a3, EmptyString))
        {
          v19 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, EmptyString);
          v27 = &v18[*sub_29AC1F544(v19)];
          v28 = &unk_2A2044983;
          v20 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, EmptyString);
        }

        else
        {
          v27 = v18;
          v28 = &unk_2A2044983;
          v20 = pxrInternal__aapl__pxrReserved__::VtDictionary::operator[](a3, EmptyString);
        }

        sub_29A18606C(v20, &v27);
        sub_29A186B14(&v27);
        v6 += v18;
      }
    }

LABEL_19:
    sub_29ADF30FC(&v23);
  }

  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A082B84(&v25, v26[0]);
  return v6;
}

void sub_29AEB27C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);
  sub_29A186B14(va1);
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  sub_29A082B84(va, v9);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::_SimpleBufferArray(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v5 = a5;
  v29 = 0;
  pxrInternal__aapl__pxrReserved__::HdBufferArray::HdBufferArray(a1, a3, &v29, a5);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  *a1 = &unk_2A209A110;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_29A0ECEEC(&v27, "hdSt", "pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::_SimpleBufferArray(HdStResourceRegistry *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint)");
  v9 = *(a4 + 8);
  v20 = *a4;
  v21 = v9;
  while (v20 != v21)
  {
    v10 = sub_29AE5D60C(&v20);
    v11 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(*v10 + 8), *(*v10 + 16));
    v12 = *sub_29AE5D60C(&v20);
    v13 = sub_29AE5D60C(&v20);
    pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::_AddResource(a1, v12, *(*v13 + 8), *(*v13 + 16), 0, v11, &v25);
    if (v26)
    {
      sub_29A014BEC(v26);
    }

    sub_29AE5D634(&v20);
  }

  *(a1 + 152) = 1;
  v14 = *(a1 + 208);
  v20 = *(a1 + 200);
  v21 = v14;
  while (v20 != v21)
  {
    v15 = sub_29ADF30C4(&v20);
    v16 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(*(*v15 + 8) + 32), *(*(*v15 + 8) + 40));
    v17 = *(a1 + 184);
    if (v17 <= v16)
    {
      v17 = v16;
    }

    *(a1 + 184) = v17;
    sub_29ADF30FC(&v20);
  }

  if ((v5 & 4) != 0)
  {
    *(a1 + 192) |= 1u;
  }

  if ((v5 & 8) != 0)
  {
    *(a1 + 192) |= 8u;
  }

  v18 = *(a1 + 192);
  if ((v5 & 0x10) != 0)
  {
    *(a1 + 192) = v18 | 4;
  }

  else if (!v18)
  {
    v20 = "hdSt/vboSimpleMemoryManager.cpp";
    v21 = "_SimpleBufferArray";
    v22 = 163;
    v23 = "pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::_SimpleBufferArray(HdStResourceRegistry *, const TfToken &, const HdBufferSpecVector &, HdBufferArrayUsageHint)";
    v24 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v20, 1, "Buffer usage was not specified!");
  }

  if (v27)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v28, v27);
  }

  return a1;
}

void sub_29AEB2A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  sub_29A0E9CEC(&a16);
  sub_29A3E01A4(&a9);
  pxrInternal__aapl__pxrReserved__::HdBufferArray::~HdBufferArray(v16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::_AddResource@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t *a7@<X8>)
{
  v17[0] = a3;
  v17[1] = a4;
  v15 = a6;
  v16 = a5;
  if (sub_29ABCF8C0(27))
  {
    pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GetResource(a1, a2, a7);
    if (*a7)
    {
      v13[0] = "hdSt/vboSimpleMemoryManager.cpp";
      v13[1] = "_AddResource";
      v13[2] = 178;
      v13[3] = "HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::_AddResource(const TfToken &, HdTupleType, int, int)";
      v14 = 0;
      result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v13, "!bufferRes", 0);
      if ((result & 1) == 0)
      {
        return result;
      }
    }

    v10 = a7[1];
    if (v10)
    {
      sub_29A014BEC(v10);
    }
  }

  sub_29AE467A0(a1 + 16, v17, &v16, &v15, a7);
  v11 = a1[26];
  if (v11 >= a1[27])
  {
    result = sub_29AE46890((a1 + 25), a2, a7);
  }

  else
  {
    result = (sub_29AE469C4(v11, a2, a7) + 3);
  }

  a1[26] = result;
  return result;
}

void sub_29AEB2B8C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_29A014BEC(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GetResource@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 200);
  v4 = *(result + 208);
  if (v3 == v4)
  {
LABEL_4:
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    while ((*a2 ^ *v3) > 7)
    {
      v3 += 3;
      if (v3 == v4)
      {
        goto LABEL_4;
      }
    }

    v6 = v3[1];
    v5 = v3[2];
    *a3 = v6;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::~_SimpleBufferArray(std::mutex *this)
{
  sub_29A0ECEEC(&opaque, "hdSt", "virtual pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::~_SimpleBufferArray()");
  sub_29AEB2C90(this, &v2);
  if (v2)
  {
    *(v2 + 16) = 0;
  }

  if (v3)
  {
    sub_29A014BEC(v3);
  }

  if (opaque)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v5, opaque);
  }

  opaque = this[3].__m_.__opaque;
  sub_29A3E01A4(&opaque);
  pxrInternal__aapl__pxrReserved__::HdBufferArray::~HdBufferArray(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::~_SimpleBufferArray(this);

  operator delete(v1);
}

void sub_29AEB2C90(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (atomic_load((a1 + 56)))
  {
    pxrInternal__aapl__pxrReserved__::HdBufferArray::GetRange(a1, 0, &v5);
    if (*(&v5 + 1) && (v4 = std::__shared_weak_count::lock(*(&v5 + 1))) != 0)
    {
      *a2 = v5;
      a2[1] = v4;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_29A014BEC(v4);
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v5 + 1));
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GarbageCollect(pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray *this)
{
  sub_29A0ECEEC(&v9, "hdSt", "virtual BOOL pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GarbageCollect()");
  v2 = atomic_load(this + 7);
  if (v2 && ((pxrInternal__aapl__pxrReserved__::HdBufferArray::GetRange(this, 0, &v8), !*(&v8 + 1)) || (v3 = *(*(&v8 + 1) + 8), std::__shared_weak_count::__release_weak(*(&v8 + 1)), v3 == -1)))
  {
    pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::_DeallocateResources(this);
    v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
    }

    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    if (!v6)
    {
      v6 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v5, (v6 + 104));
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v10, v9);
  }

  return v4;
}

void sub_29AEB2E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::_DeallocateResources(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **this)
{
  result = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(this[21]);
  v3 = this[26];
  v6 = this[25];
  v7 = v3;
  if (v6 != v3)
  {
    v4 = result;
    do
    {
      v5 = sub_29ADF30C4(&v6);
      (*(*v4 + 104))(v4, *(*v5 + 8));
      result = sub_29ADF30FC(&v6);
    }

    while (v6 != v7);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::DebugDump(uint64_t a1, void *a2)
{
  sub_29A00911C(a2, "  HdStVBOSimpleMemoryManager", 28);
  v4 = sub_29A00911C(a2, "  total capacity = ", 19);
  v5 = MEMORY[0x29C2C1ED0](v4, *(a1 + 176));

  return sub_29A00911C(v5, "\n", 1);
}

BOOL pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::Resize(pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray *this, int a2)
{
  sub_29A0ECEEC(&v6, "hdSt", "BOOL pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::Resize(int)");
  v4 = *(this + 44);
  if (v4 != a2)
  {
    *(this + 24) = 1;
  }

  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v7, v6);
  }

  return v4 != a2;
}

void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::Reallocate(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29A0ECEEC(&v43, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)");
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
  }

  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  if (!v7)
  {
    v7 = sub_29ABC4598(&pxrInternal__aapl__pxrReserved__::HdPerfTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v6, (v7 + 304));
  sub_29A014C58(&v25, (a1 + 8));
  if (*a3 == v25)
  {
    if (*(&v25 + 1))
    {
      sub_29A014BEC(*(&v25 + 1));
    }
  }

  else
  {
    __p = "hdSt/vboSimpleMemoryManager.cpp";
    v31 = "Reallocate";
    v32 = 254;
    v33 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
    LOBYTE(v34) = 0;
    v23 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&__p, "curRangeOwner == shared_from_this()", 0);
    if (*(&v25 + 1))
    {
      sub_29A014BEC(*(&v25 + 1));
    }

    if ((v23 & 1) == 0)
    {
      __p = "hdSt/vboSimpleMemoryManager.cpp";
      v31 = "Reallocate";
      v32 = 255;
      v33 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
      LOBYTE(v34) = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "HdStVBOSimpleMemoryManager can't reassign ranges");
      goto LABEL_38;
    }
  }

  if (*(a2 + 8) - *a2 >= 0x11uLL)
  {
    __p = "hdSt/vboSimpleMemoryManager.cpp";
    v31 = "Reallocate";
    v32 = 260;
    v33 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
    LOBYTE(v34) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "HdStVBOSimpleMemoryManager can't take multiple ranges");
    goto LABEL_38;
  }

  pxrInternal__aapl__pxrReserved__::HdBufferArray::_SetRangeList(a1, a2);
  sub_29AEB2C90(a1, &v41);
  if (!v41)
  {
    __p = "hdSt/vboSimpleMemoryManager.cpp";
    v31 = "Reallocate";
    v32 = 268;
    v33 = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)";
    LOBYTE(v34) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&__p, 1, "_SimpleBufferArrayRange expired unexpectedly.");
    goto LABEL_36;
  }

  v24 = *(v41 + 24);
  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(*(a1 + 168));
  GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(*(a1 + 168));
  (*(*GlobalBlitCmds + 24))(GlobalBlitCmds, "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::Reallocate(const std::vector<HdBufferArrayRangeSharedPtr> &, const HdBufferArraySharedPtr &)");
  v10 = *(a1 + 208);
  v39 = *(a1 + 200);
  v40 = v10;
  while (v39 != v40)
  {
    v11 = sub_29ADF30C4(&v39);
    v12 = *v11;
    v13 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(*(*v11 + 8) + 32), *(*(*v11 + 8) + 40));
    v14 = v13;
    if ((v13 * v24) <= 0x100)
    {
      v15 = 256;
    }

    else
    {
      v15 = v13 * v24;
    }

    v38 = **(v12 + 8);
    v37 = 0uLL;
    __p = 0;
    v31 = 0;
    v32 = 0;
    v36 = 0;
    v34 = v15;
    LODWORD(v33) = *(a1 + 192);
    v35 = v13;
    v16 = **sub_29ADF30C4(&v39) & 0xFFFFFFFFFFFFFFF8;
    if (v16)
    {
      v17 = (v16 + 16);
      if (*(v16 + 39) < 0)
      {
        v17 = *v17;
      }
    }

    else
    {
      v17 = "";
    }

    MEMORY[0x29C2C1A60](&__p, v17);
    v37.n128_u64[0] = (*(*Hgi + 96))(Hgi, &__p);
    v37.n128_u64[1] = v18;
    v19 = *(v41 + 24);
    if (*(*(v41 + 16) + 176) < v19)
    {
      v19 = *(*(v41 + 16) + 176);
    }

    v20 = v14 * v19;
    if (v20)
    {
      if (!v38)
      {
        goto LABEL_31;
      }

      v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v21)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
      if (!v22)
      {
        v22 = sub_29ADCD5DC(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v21, v22);
      v29 = 0;
      v26 = 0;
      v25 = v38;
      v28 = v37;
      v27 = v20;
      (*(*GlobalBlitCmds + 56))(GlobalBlitCmds, &v25);
    }

    if (v38)
    {
      (*(*Hgi + 104))(Hgi, &v38);
    }

LABEL_31:
    pxrInternal__aapl__pxrReserved__::HdStBufferResource::SetAllocation(*(v12 + 8), &v37, v15);
    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p);
    }

    sub_29ADF30FC(&v39);
  }

  (*(*GlobalBlitCmds + 32))(GlobalBlitCmds);
  *(a1 + 176) = v24;
  *(a1 + 24) = 0;
  pxrInternal__aapl__pxrReserved__::HdBufferArray::IncrementVersion(a1);
LABEL_36:
  if (v42)
  {
    sub_29A014BEC(v42);
  }

LABEL_38:
  if (v43)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v44, v43);
  }
}

unint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GetMaxNumElements(pxrInternal__aapl__pxrReserved__::HdStResourceRegistry **this)
{
  if ((atomic_load_explicit(&qword_2A174F830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F830))
  {
    v5 = atomic_load(pxrInternal__aapl__pxrReserved__::HD_MAX_VBO_SIZE);
    if (!v5)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    qword_2A174F828 = *v5;
    __cxa_guard_release(&qword_2A174F830);
  }

  Hgi = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetHgi(this[21]);
  v3 = *((*(*Hgi + 200))(Hgi) + 16);
  if (qword_2A174F828 < v3)
  {
    v3 = qword_2A174F828;
  }

  return v3 / this[23];
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GetResource@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (*(this + 200) == *(this + 208))
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v3 = this;
    this = sub_29ABCF8C0(27);
    v4 = *(v3 + 200);
    if (this)
    {
      v5 = *(v4 + 8);
      v6 = *(v3 + 208);
      v11 = *(v3 + 200);
      v12 = v6;
      if (v4 != v6)
      {
        do
        {
          if (*(*(*sub_29ADF30C4(&v11) + 8) + 8) != *(v5 + 8))
          {
            v9[0] = "hdSt/vboSimpleMemoryManager.cpp";
            v9[1] = "GetResource";
            v9[2] = 375;
            v9[3] = "HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GetResource() const";
            v10 = 0;
            pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "GetResource(void) called onHdBufferArray having multiple GPU resources");
          }

          this = sub_29ADF30FC(&v11);
        }

        while (v11 != v12);
        v4 = *(v3 + 200);
      }
    }

    v8 = *(v4 + 8);
    v7 = *(v4 + 16);
    *a2 = v8;
    a2[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::IsImmutable(pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return *(v1 + 160) & 1;
  }

  else
  {
    return 0;
  }
}

void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::CopyData(pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange *a1, uint64_t a2)
{
  sub_29A0ECEEC(&v31, "hdSt", "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::CopyData(const HdBufferSourceSharedPtr &)");
  v4 = *(a1 + 2);
  if (!v4)
  {
    v26 = "hdSt/vboSimpleMemoryManager.cpp";
    v27 = "CopyData";
    *&v28 = 438;
    *(&v28 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::CopyData(const HdBufferSourceSharedPtr &)";
    LOBYTE(v29) = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "_bufferArray", 0))
    {
      goto LABEL_13;
    }

    v4 = *(a1 + 2);
  }

  v5 = (*(**a2 + 16))();
  v6 = *(v4 + 200);
  v7 = *(v4 + 208);
  if (v6 == v7)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    while ((*v6 ^ *v5) > 7)
    {
      v6 += 3;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    v11 = v6[1];
    v8 = v6[2];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11 && *v11)
    {
      v12 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(*(v11 + 4), *(v11 + 5));
      v13 = *(a1 + 3);
      v14 = (*(**a2 + 64))();
      v15 = (*(**a2 + 56))();
      v17 = v13 * v12;
      v18 = pxrInternal__aapl__pxrReserved__::HdDataSizeOfTupleType(v15, v16) * v14;
      if (v18 <= v17)
      {
        v17 = v18;
      }

      else
      {
        v26 = "hdSt/vboSimpleMemoryManager.cpp";
        v27 = "CopyData";
        *&v28 = 458;
        *(&v28 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::CopyData(const HdBufferSourceSharedPtr &)";
        LOBYTE(v29) = 0;
        v20 = *(*(**a2 + 16))() & 0xFFFFFFFFFFFFFFF8;
        if (v20)
        {
          v21 = (v20 + 16);
          if (*(v20 + 39) < 0)
          {
            v21 = *v21;
          }
        }

        else
        {
          v21 = "";
        }

        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v26, "%s: size %ld is larger than the range (%ld)", v19, v21, v18, v17);
      }

      v22 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_instance);
      if (!v22)
      {
        pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::HdPerfLog>::_CreateInstance();
      }

      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
      if (!v23)
      {
        v23 = sub_29ADCD5DC(&pxrInternal__aapl__pxrReserved__::HdStPerfTokens);
      }

      pxrInternal__aapl__pxrReserved__::HdPerfLog::IncrementCounter(v22, (v23 + 8));
      v26 = (*(**a2 + 48))();
      v28 = *v11;
      v27 = 0;
      v29 = 0;
      v30 = v17;
      ResourceRegistry = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::GetResourceRegistry(a1);
      GlobalBlitCmds = pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::GetGlobalBlitCmds(ResourceRegistry);
      (*(*GlobalBlitCmds + 64))(GlobalBlitCmds, &v26);
      goto LABEL_11;
    }
  }

  v26 = "hdSt/vboSimpleMemoryManager.cpp";
  v27 = "CopyData";
  *&v28 = 445;
  *(&v28 + 1) = "virtual void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::CopyData(const HdBufferSourceSharedPtr &)";
  LOBYTE(v29) = 0;
  v9 = *(*(**a2 + 16))() & 0xFFFFFFFFFFFFFFF8;
  if (v9)
  {
    v10 = (v9 + 16);
    if (*(v9 + 39) < 0)
    {
      v10 = *v10;
    }
  }

  else
  {
    v10 = "";
  }

  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v26, 1, "VBO doesn't exist for %s", v10);
LABEL_11:
  if (v8)
  {
    sub_29A014BEC(v8);
  }

LABEL_13:
  if (v31)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v32, v31);
  }
}

void sub_29AEB3AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::ReadData(pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  sub_29A0ECEEC(&v22, "hdSt", "virtual VtValue pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::ReadData(const TfToken &) const");
  v6 = *(this + 2);
  if (!v6)
  {
    v17 = "hdSt/vboSimpleMemoryManager.cpp";
    v18 = "ReadData";
    v19 = 483;
    v20 = "virtual VtValue pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::ReadData(const TfToken &) const";
    v21 = 0;
    if (!pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v17, "_bufferArray", 0))
    {
      a3[1] = 0;
      goto LABEL_13;
    }

    v6 = *(this + 2);
  }

  v7 = *(v6 + 200);
  v8 = *(v6 + 208);
  if (v7 == v8)
  {
LABEL_5:
    v9 = 0;
LABEL_6:
    v17 = "hdSt/vboSimpleMemoryManager.cpp";
    v18 = "ReadData";
    v19 = 488;
    v20 = "virtual VtValue pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::ReadData(const TfToken &) const";
    v21 = 0;
    v10 = *a2 & 0xFFFFFFFFFFFFFFF8;
    if (v10)
    {
      v11 = (v10 + 16);
      if (*(v10 + 39) < 0)
      {
        v11 = *v11;
      }
    }

    else
    {
      v11 = "";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v17, 1, "VBO doesn't exist for %s", v11);
    a3[1] = 0;
    goto LABEL_11;
  }

  while ((*v7 ^ *a2) > 7)
  {
    v7 += 3;
    if (v7 == v8)
    {
      goto LABEL_5;
    }
  }

  v12 = v7[1];
  v9 = v7[2];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = *(this + 3);
  if (!*v12)
  {
    if (v13)
    {
      goto LABEL_6;
    }
  }

  v14 = *(v12 + 32);
  v15 = *(v12 + 40);
  ResourceRegistry = pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::GetResourceRegistry(this);
  pxrInternal__aapl__pxrReserved__::HdStReadBuffer(v12, v14, v15, 0, 0, v13, 0, ResourceRegistry, a3);
LABEL_11:
  if (v9)
  {
    sub_29A014BEC(v9);
  }

LABEL_13:
  if (v22)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v23, v22);
  }
}

void sub_29AEB3CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29A0E9CEC(va);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::GetUsageHint(pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    return *(v1 + 160);
  }

  v5[0] = "hdSt/vboSimpleMemoryManager.cpp";
  v5[1] = "GetUsageHint";
  v5[2] = 510;
  v5[3] = "virtual HdBufferArrayUsageHint pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::GetUsageHint() const";
  v6 = 0;
  v4 = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_bufferArray", 0);
  result = 0;
  if (v4)
  {
    v1 = *(this + 2);
    return *(v1 + 160);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::GetResource@<X0>(pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 2);
  if (!v4)
  {
    v6[0] = "hdSt/vboSimpleMemoryManager.cpp";
    v6[1] = "GetResource";
    v6[2] = 520;
    v6[3] = "virtual HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::GetResource() const";
    v7 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "_bufferArray", 0);
    if (!result)
    {
      *a2 = 0;
      a2[1] = 0;
      return result;
    }

    v4 = *(this + 2);
  }

  return pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GetResource(v4, a2);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::GetResource@<X0>(pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange *this@<X0>, const pxrInternal__aapl__pxrReserved__::TfToken *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 2);
  if (!v6)
  {
    v8[0] = "hdSt/vboSimpleMemoryManager.cpp";
    v8[1] = "GetResource";
    v8[2] = 528;
    v8[3] = "virtual HdStBufferResourceSharedPtr pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::GetResource(const TfToken &)";
    v9 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v8, "_bufferArray", 0);
    if (!result)
    {
      *a3 = 0;
      a3[1] = 0;
      return result;
    }

    v6 = *(this + 2);
  }

  return pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::GetResource(v6, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::GetResources(pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    if ((sub_29B2CB53C(v3, this + 2, &v4, &v5) & 1) == 0)
    {
      return v5;
    }

    v1 = v4;
  }

  return v1 + 200;
}

void *pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArrayRange::DebugDump(uint64_t a1, void *a2)
{
  v3 = sub_29A00911C(a2, "[SimpleBAR] numElements = ", 26);
  v4 = MEMORY[0x29C2C1F00](v3, *(a1 + 24));

  return sub_29A00911C(v4, "\n", 1);
}

void sub_29AEB3F50(pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy *a1)
{
  pxrInternal__aapl__pxrReserved__::HdStAggregationStrategy::~HdStAggregationStrategy(a1);

  operator delete(v1);
}

void sub_29AEB3F7C(pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange *a1)
{
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::~HdStBufferArrayRange(a1);

  operator delete(v1);
}

void sub_29AEB3FE8(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, int *a4@<X4>, void *a5@<X8>)
{
  v10 = operator new(0xF8uLL);
  sub_29AEB407C(v10, a1, a2, a3, a4);
  *a5 = v10 + 3;
  a5[1] = v10;

  sub_29A017894(a5, v10 + 4, (v10 + 3));
}

void *sub_29AEB407C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, int *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209A2B8;
  pxrInternal__aapl__pxrReserved__::HdStVBOSimpleMemoryManager::_SimpleBufferArray::_SimpleBufferArray((a1 + 3), *a2, a3, a4, *a5);
  return a1;
}

void sub_29AEB4100(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209A2B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void *sub_29AEB4150@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x38uLL);
  result = sub_29AEB41AC(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *sub_29AEB41AC(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209A308;
  pxrInternal__aapl__pxrReserved__::HdStBufferArrayRange::HdStBufferArrayRange(a1 + 3, *a2);
  a1[3] = &unk_2A209A1B8;
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

void sub_29AEB424C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209A308;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AEB42A0()
{
  v0 = atomic_load(&qword_2A174F858);
  if (!v0)
  {
    v0 = sub_29AEB465C();
  }

  v1 = operator new(0x10uLL);
  *v1 = &unk_2A2079BC0;
  v1[2] = 1103101952;
  sub_29AC01310(&v7, v1);
  v8 = v7;
  v7 = 0uLL;
  pxrInternal__aapl__pxrReserved__::HdRetainedContainerDataSource::New(v0, &v8, __p);
  v9 = __p[0];
  v10 = __p[1];
  __p[0] = 0;
  __p[1] = 0;
  if (*(&v8 + 1))
  {
    sub_29A014BEC(*(&v8 + 1));
  }

  v2 = *(&v7 + 1);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }

  Instance = pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::GetInstance(v2);
  sub_29A008E78(__p, "GL");
  v4 = atomic_load(&qword_2A174F858);
  if (!v4)
  {
    v4 = sub_29AEB465C();
  }

  pxrInternal__aapl__pxrReserved__::HdSceneIndexPluginRegistry::RegisterSceneIndexForRenderer(Instance, __p, (v4 + 8), &v9, 0, 1);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }
}

void sub_29AEB43C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (*(v19 - 40))
  {
    sub_29A014BEC(*(v19 - 40));
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HdSt_VelocityMotionResolvingSceneIndexPlugin::HdSt_VelocityMotionResolvingSceneIndexPlugin(void *this)
{
  *this = &unk_2A209A358;
  return this;
}

{
  *this = &unk_2A209A358;
  return this;
}

void sub_29AEB44A8(pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin *a1)
{
  pxrInternal__aapl__pxrReserved__::HdSceneIndexPlugin::~HdSceneIndexPlugin(a1);

  operator delete(v1);
}

uint64_t sub_29AEB44D0()
{
  v5 = *MEMORY[0x29EDCA608];
  v2 = nullsub_1718;
  v3.__vftable = &unk_2A2086100;
  v3.__type_name = pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_VelocityMotionResolvingSceneIndexPlugin>;
  v4 = &v3;
  pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_SetFactory(&v1, &v3);
  return sub_29AB10084(&v3);
}

void sub_29AEB45AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AB10084(va);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin<pxrInternal__aapl__pxrReserved__::HdSt_VelocityMotionResolvingSceneIndexPlugin>()
{
  sub_29A0ECEEC(&v2, "hdSt", "static HfPluginBase *pxrInternal__aapl__pxrReserved__::HfPluginRegistry::_CreatePlugin() [T = pxrInternal__aapl__pxrReserved__::HdSt_VelocityMotionResolvingSceneIndexPlugin]");
  v0 = operator new(8uLL);
  *v0 = &unk_2A209A358;
  if (v2)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v3, v2);
  }

  return v0;
}

unint64_t sub_29AEB465C()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "fps", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "HdSt_VelocityMotionResolvingSceneIndexPlugin", 0);
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A174F858, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A174F858);
  }

  return v0;
}

void sub_29AEB47A0(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

pxrInternal__aapl__pxrReserved__::HdRprim *pxrInternal__aapl__pxrReserved__::HdStVolume::HdStVolume(pxrInternal__aapl__pxrReserved__::HdStVolume *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HdVolume::HdVolume(this, a2);
  *result = &unk_2A209A3A0;
  *(result + 58) = 0;
  *(result + 59) = 0;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::HdVolume::HdVolume(this, a2);
  *result = &unk_2A209A3A0;
  *(result + 58) = 0;
  *(result + 59) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStVolume::~HdStVolume(pxrInternal__aapl__pxrReserved__::HdStVolume *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    sub_29A014BEC(v2);
  }

  pxrInternal__aapl__pxrReserved__::HdVolume::~HdVolume(this);
}

{
  pxrInternal__aapl__pxrReserved__::HdStVolume::~HdStVolume(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::HdStVolume::_InitRepr(pxrInternal__aapl__pxrReserved__::HdStVolume *this, const pxrInternal__aapl__pxrReserved__::TfToken *a2, unsigned int *a3)
{
  if (!*(this + 58))
  {
    sub_29AE3C6BC(&v18);
    v6 = v18;
    v18 = 0uLL;
    v7 = *(this + 59);
    *(this + 29) = v6;
    if (v7)
    {
      sub_29A014BEC(v7);
      if (*(&v18 + 1))
      {
        sub_29A014BEC(*(&v18 + 1));
      }
    }

    sub_29A0ECEEC(&v18, "hdSt", "new HdStDrawItem");
    v8 = malloc(0x50uLL);
    if (v18)
    {
      pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(DWORD2(v18), v18);
    }

    pxrInternal__aapl__pxrReserved__::HdStDrawItem::HdStDrawItem(v8, this + 32);
    v8[72] = 1;
    *(v8 + 5) = 8;
    v9 = *(this + 58);
    *&v18 = v8;
    sub_29AE23DC4(v9, (*v9 + 8 * *(v9 + 24)), &v18);
    ++*(v9 + 24);
    v10 = v18;
    *&v18 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    *a3 |= 0x800000u;
  }

  v11 = *(this + 55);
  v12 = *(this + 56);
  v13 = *a2;
  if ((*a2 & 7) != 0 && (atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v13 &= 0xFFFFFFFFFFFFFFF8;
  }

  if (v11 != v12)
  {
    while ((v13 ^ *v11) >= 8)
    {
      v11 += 3;
      if (v11 == v12)
      {
        v11 = v12;
        break;
      }
    }
  }

  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(this + 56);
  if (v11 == v14)
  {
    v15 = *a2;
    *&v18 = v15;
    if ((v15 & 7) != 0)
    {
      v16 = (v15 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed) & 1) == 0)
      {
        *&v18 = v16;
      }
    }

    v17 = *(this + 59);
    *(&v18 + 1) = *(this + 58);
    v19 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_29AE780A0(this + 55, v14, &v18);
    if (v19)
    {
      sub_29A014BEC(v19);
    }

    if ((v18 & 7) != 0)
    {
      atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

void sub_29AEB4B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a9)
  {
    sub_29B2C9DCC(a9);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HdStVolume::Sync(pxrInternal__aapl__pxrReserved__::HdRenderParam ****this, pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::SdfPath *a4, const pxrInternal__aapl__pxrReserved__::TfToken *a5)
{
  pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateVisibility(this, a2, a4);
  if ((*a4 & 0x80) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStSetMaterialId(a2, a3, this, v9);
    v11 = **this[58];
    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
    if (!v12)
    {
      v12 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdStSetMaterialTag(a3, v11, (v12 + 40), v10);
  }

  pxrInternal__aapl__pxrReserved__::HdStVolume::_UpdateRepr(this, a2, a3, v9, a4);
  *a4 &= 0xFF800000;
}

void pxrInternal__aapl__pxrReserved__::HdStVolume::_UpdateRepr(pxrInternal__aapl__pxrReserved__::HdStDrawItem ****this, pxrInternal__aapl__pxrReserved__::HdInstancer **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, const pxrInternal__aapl__pxrReserved__::TfToken *a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  sub_29A0ECEEC(&v10, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStVolume::_UpdateRepr(HdSceneDelegate *, HdRenderParam *, const TfToken &, HdDirtyBits *)");
  if (sub_29ABCF8C0(26))
  {
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::DumpDirtyBits(*a5);
  }

  v9 = *a5;
  if ((*a5 & 0xFFFFFFFD) != 0)
  {
    pxrInternal__aapl__pxrReserved__::HdStVolume::_UpdateDrawItem(this, a2, a3, **this[58], a5);
    v9 = *a5;
  }

  *a5 = v9 & 0xFF7FFFFF;
  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v11, v10);
  }
}

void pxrInternal__aapl__pxrReserved__::HdStVolume::Finalize(pxrInternal__aapl__pxrReserved__::HdStVolume *this, pxrInternal__aapl__pxrReserved__::HdRenderParam *a2)
{
  pxrInternal__aapl__pxrReserved__::HdStMarkGarbageCollectionNeeded(a2, a2);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  if (!v4)
  {
    v4 = sub_29ADC79B8(&pxrInternal__aapl__pxrReserved__::HdStMaterialTagTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseMaterialTagCount(a2, (v4 + 40));

  pxrInternal__aapl__pxrReserved__::HdStRenderParam::DecreaseRenderTagCount(a2, (this + 432));
}

void pxrInternal__aapl__pxrReserved__::HdStVolume::_UpdateDrawItem(pxrInternal__aapl__pxrReserved__::HdStVolume *this, pxrInternal__aapl__pxrReserved__::HdInstancer **a2, pxrInternal__aapl__pxrReserved__::HdRenderParam *a3, pxrInternal__aapl__pxrReserved__::HdStDrawItem *a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  v82 = *MEMORY[0x29EDCA608];
  sub_29A0ECEEC(&v63, "hdSt", "void pxrInternal__aapl__pxrReserved__::HdStVolume::_UpdateDrawItem(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)");
  pxrInternal__aapl__pxrReserved__::HdRprim::_UpdateInstancer(this, a2, a5);
  pxrInternal__aapl__pxrReserved__::HdStUpdateInstancerData(a2[1], a3, this, a4, (this + 32), *a5);
  v62 = a5;
  if (pxrInternal__aapl__pxrReserved__::HdStShouldPopulateConstantPrimvars(a5, (this + 376), v10))
  {
    __p = 0;
    v68 = 0;
    pxrInternal__aapl__pxrReserved__::HdStGetPrimvarDescriptors(this, a4, a2, 0, &__p, 0, 0, 0, __dst);
    if (v68)
    {
      sub_29A014BEC(v68);
    }

    pxrInternal__aapl__pxrReserved__::HdStPopulateConstantPrimvars(this, this + 32, a2, a3, a4, a5, __dst, 0);
    __p = __dst;
    sub_29ABEE9FC(&__p);
  }

  v11 = *a5;
  if ((*v62 & 0x80) != 0)
  {
    v12 = a2[1];
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    if (!v13)
    {
      v13 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
    }

    pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetSprim(v12, (v13 + 152), (this + 16));
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetResourceRegistry(__dst, a2[1]);
  v65 = *__dst;
  v66 = *&__dst[8];
  if (*&__dst[8])
  {
    atomic_fetch_add_explicit((*&__dst[8] + 8), 1uLL, memory_order_relaxed);
    if (*&__dst[8])
    {
      sub_29A014BEC(*&__dst[8]);
    }
  }

  v14 = *(a4 + 7);
  {
    v16 = v15;
    v17 = *(a4 + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *v62;
    if ((v11 & 0x80) == 0 && (v18 & 0x400000) != 0)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::UpdateTextureHandles(v15, a2);
      v18 = *v62;
    }

    if ((v18 & 0x440088) != 0)
    {
      v19 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 3), *(a4 + 13));
      if ((pxrInternal__aapl__pxrReserved__::HdStIsValidBAR(v19) & 1) == 0)
      {
        if ((atomic_load_explicit(&qword_2A174F878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F878))
        {
          v60 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
          if (!v60)
          {
            v60 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
          }

          v61 = *(v60 + 59);
          *__dst = v61;
          if ((v61 & 7) != 0 && (atomic_fetch_add_explicit((v61 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
          {
            *__dst &= 0xFFFFFFFFFFFFFFF8;
          }

          *&__dst[8] = xmmword_29B70CC80;
          qword_2A174F868 = 0;
          unk_2A174F870 = 0;
          qword_2A174F860 = 0;
          sub_29AE030F0(&qword_2A174F860, __dst, &__dst[24], 1uLL);
          if ((__dst[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((*__dst & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          __cxa_atexit(sub_29AEB6228, &qword_2A174F860, &dword_299FE7000);
          __cxa_guard_release(&qword_2A174F878);
        }

        v20 = v65;
        v21 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v21)
        {
          v21 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateNonUniformBufferArrayRange(v20, v21 + 520, &qword_2A174F860, 0x10u, __dst);
        pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Set(this + 4, *(a4 + 13), __dst);
        if (*&__dst[8])
        {
          sub_29A014BEC(*&__dst[8]);
        }
      }

      v22 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 3), *(a4 + 13));
      pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::SetPointsBar(v16, v22);
      if ((*(v16 + 248) & 1) == 0)
      {
        pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 3), *(a4 + 13));
        if (!atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens))
        {
          sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        sub_29A193124(__dst, 8uLL);
        SafeMin = pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::GetSafeMin(this + 7);
        v26 = v25;
        v28 = v27;
        SafeMax = pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::GetSafeMax(this + 7);
        v31 = v30;
        v33 = v32;
        v34 = 0;
        v35 = 0;
        __p = *&SafeMin;
        v68 = *&SafeMax;
        do
        {
          v36 = 0;
          v37 = *(&__p + v35);
          v77 = v26;
          v78 = v31;
          v38 = v37;
          do
          {
            v39 = 0;
            v40 = (&v77)[v36];
            v80 = v28;
            v81 = v33;
            v41 = *&v40;
            v42 = 12 * v34;
            do
            {
              v43 = (&v80)[v39];
              sub_29A1935CC(__dst);
              v44 = *&v43;
              v45 = (v70 + v42);
              *v45 = v38;
              v45[1] = v41;
              v45[2] = v44;
              ++v34;
              ++v39;
              v42 += 12;
            }

            while (v39 != 2);
            ++v36;
          }

          while (v36 != 2);
          v35 += 8;
        }

        while (v35 != 16);
        v79[7] = &off_2A20433C0;
        v46 = operator new(0x30uLL);
        v47 = *&__dst[16];
        *v46 = *__dst;
        *(v46 + 1) = v47;
        v48 = v70;
        *(v46 + 4) = v70;
        if (v48)
        {
          v49 = (v48 - 16);
          if (*(v46 + 3))
          {
            v49 = *(v46 + 3);
          }

          atomic_fetch_add_explicit(v49, 1uLL, memory_order_relaxed);
        }

        atomic_store(0, v46 + 10);
        v79[6] = v46;
        atomic_fetch_add_explicit(v46 + 10, 1u, memory_order_relaxed);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
      }
    }

    if ((*(v62 + 2) & 0x80) != 0)
    {
      pxrInternal__aapl__pxrReserved__::HdSt_VolumeShaderKey::HdSt_VolumeShaderKey(&__p);
      pxrInternal__aapl__pxrReserved__::HdSt_GeometricShader::Create(&__p, &v65, __dst);
      v50 = *__dst;
      v51 = *&__dst[8];
      if (*&__dst[8])
      {
        atomic_fetch_add_explicit((*&__dst[8] + 8), 1uLL, memory_order_relaxed);
      }

      v52 = *(a4 + 6);
      *(a4 + 5) = v50;
      *(a4 + 6) = v51;
      if (v52)
      {
        sub_29A014BEC(v52);
      }

      if (*&__dst[8])
      {
        sub_29A014BEC(*&__dst[8]);
      }

      v53 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v53)
      {
        v53 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((atomic_load_explicit(&qword_2A174F8D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A174F8D0))
      {
        v74 = xmmword_29B712E6C;
        v75 = unk_29B712E7C;
        v76 = xmmword_29B712E8C;
        v70 = xmmword_29B712E2C;
        v71 = unk_29B712E3C;
        v72 = xmmword_29B712E4C;
        v73 = unk_29B712E5C;
        *__dst = xmmword_29B712E0C;
        *&__dst[16] = unk_29B712E1C;
        sub_29AEB6CA4(&v77, __dst, 12);
        qword_2A174F8C8 = &off_2A2048110;
        sub_29A18ECC8(&qword_2A174F8C0, &v77);
        pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
      }

      sub_29AEB6FAC((v53 + 312), &qword_2A174F8C0, &v80);
      v54 = v81;
      v77 = v80;
      v78 = v81;
      if (v81)
      {
        atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memset(__dst, 0, 24);
      sub_29AD9CF88(__dst, &v77, v79, 1uLL);
      if (v78)
      {
        sub_29A014BEC(v78);
      }

      v55 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 3), *(a4 + 4));
      if ((pxrInternal__aapl__pxrReserved__::HdStIsValidBAR(v55) & 1) == 0)
      {
        v78 = 0;
        v77 = 0;
        v79[0] = 0;
        sub_29AE22748(__dst, &v77);
        v56 = v65;
        v57 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
        if (!v57)
        {
          v57 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
        }

        pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AllocateNonUniformBufferArrayRange(v56, v57 + 520, &v77, 0x20u, &v80);
        pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Set(this + 4, *(a4 + 4), &v80);
        if (v81)
        {
          sub_29A014BEC(v81);
        }

        v80 = &v77;
        sub_29ABC6FA0(&v80);
      }

      v58 = v65;
      v59 = pxrInternal__aapl__pxrReserved__::HdBufferArrayRangeContainer::Get(*(a4 + 3), *(a4 + 4));
      pxrInternal__aapl__pxrReserved__::HdStResourceRegistry::AddSources(v58, v59, __dst);
      v77 = __dst;
      sub_29A0176E4(&v77);
      if (v54)
      {
        sub_29A014BEC(v54);
      }

      pxrInternal__aapl__pxrReserved__::HdSt_VolumeShaderKey::~HdSt_VolumeShaderKey(&__p);
    }

    if (v17)
    {
      sub_29A014BEC(v17);
    }
  }

  else
  {
    *__dst = "hdSt/volume.cpp";
    *&__dst[8] = "_UpdateDrawItem";
    *&__dst[16] = 569;
    *&__dst[24] = "void pxrInternal__aapl__pxrReserved__::HdStVolume::_UpdateDrawItem(HdSceneDelegate *, HdRenderParam *, HdStDrawItem *, HdDirtyBits *)";
    LOBYTE(v70) = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(__dst, 1, "Expected valid volume shader for draw item.");
  }

  if (v66)
  {
    sub_29A014BEC(v66);
  }

  if (v63)
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End(v64, v63);
  }
}

void sub_29AEB5E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  __cxa_guard_abort(&qword_2A174F878);
  if (v37)
  {
    sub_29A014BEC(v37);
  }

  if (a37)
  {
    sub_29A014BEC(a37);
  }

  sub_29A0E9CEC(&a20);
  _Unwind_Resume(a1);
}

void **sub_29AEB6228(void **a1)
{
  v3 = a1;
  sub_29ABC6FA0(&v3);
  return a1;
}

void sub_29AEB6260(void *a1, uint64_t a2)
{
  if (a1[1] < a1[2])
  {
    sub_29ADD6530(a1[1], a2);
  }

  sub_29AEB6424(a1, a2);
}

void **sub_29AEB62B4(void **a1)
{
  sub_29A155EF4((a1 + 3));
  v3 = a1;
  sub_29ABF537C(&v3);
  return a1;
}

void sub_29AEB6358(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A209A410;
  pxrInternal__aapl__pxrReserved__::HdSt_VolumeShader::HdSt_VolumeShader((a1 + 3));
}

void sub_29AEB63D4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A209A410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AEB6424(void *a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) <= 0x276276276276276)
  {
    if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3) > v3)
    {
      v3 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 3);
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
    {
      v5 = 0x276276276276276;
    }

    else
    {
      v5 = v3;
    }

    v11 = a1;
    if (v5)
    {
      v6 = sub_29A09B7D4(a1, v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = &v6[104 * v2];
    v9 = v8;
    v10 = &v6[104 * v5];
    sub_29ADD6530(v8, a2);
  }

  sub_29A00C9A4();
}

void sub_29AEB6558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29AE0D138(va);
  _Unwind_Resume(a1);
}

void sub_29AEB656C()
{
  v10[26] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HdStPackageFallbackVolumeShader(v10);
  if ((v10[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v10[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v0);
  }

  v2 = atomic_load(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  if (!v2)
  {
    v2 = sub_29AB64494(&pxrInternal__aapl__pxrReserved__::HioGlslfxTokens);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::HioGlslfx(v7, EmptyString, v2 + 112);
  if ((v10[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v10[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::HioGlslfx::GetVolumeSource(v7, &qword_2A174F880);
  v3 = atomic_load(&qword_2A174F8B8);
  if (!v3)
  {
    v3 = sub_29AEB6A5C();
  }

  v9[1] = &unk_2A2044C63;
  LODWORD(v9[0]) = 0;
  v4 = atomic_load(&qword_2A174F8B8);
  if (!v4)
  {
    v4 = sub_29AEB6A5C();
  }

  v5 = *v4;
  v8 = v5;
  if ((v5 & 7) != 0 && (atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  memset(v6, 0, sizeof(v6));
  sub_29A12EF7C(v6, &v8, v9, 1uLL);
  pxrInternal__aapl__pxrReserved__::HdSt_MaterialParam::HdSt_MaterialParam(v10, 3, v3, v9);
}

void sub_29AEB68E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_29A186B14(&a66);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  __p = &a22;
  sub_29A124AB0(&__p);
  if ((a68 & 7) != 0)
  {
    atomic_fetch_add_explicit((a68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_29A186B14(&a69);
  while (v71 != &a71)
  {
    v71 -= 104;
    sub_29AE10CA0(v71);
  }

  if (byte_2A174F897 < 0)
  {
    operator delete(qword_2A174F880);
  }

  sub_29ADC1D14(&a25);
  _Unwind_Resume(a1);
}

void sub_29AEB6A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a68 & 7) != 0)
  {
    atomic_fetch_add_explicit((a68 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  JUMPOUT(0x29AEB6A34);
}

unint64_t sub_29AEB6A5C()
{
  v13 = *MEMORY[0x29EDCA608];
  v0 = operator new(0x28uLL);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0, "density", 0);
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v0 + 1, "emission", 0);
  v1 = v0 + 2;
  v2 = *v0;
  v11 = v2;
  if ((v2 & 7) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v3, 2u, memory_order_relaxed) & 1) == 0)
    {
      v11 = v3;
    }
  }

  v4 = v0[1];
  v12 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v12 = v5;
    }
  }

  *v1 = 0;
  v0[3] = 0;
  v0[4] = 0;
  sub_29A12EF7C(v1, &v11, &v13, 2uLL);
  for (i = 8; i != -8; i -= 8)
  {
    v7 = *(&v11 + i);
    if ((v7 & 7) != 0)
    {
      atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  v8 = 0;
  atomic_compare_exchange_strong(&qword_2A174F8B8, &v8, v0);
  if (v8)
  {
    v9 = sub_29A1DAC64(v0);
    operator delete(v9);
    return atomic_load(&qword_2A174F8B8);
  }

  return v0;
}

void sub_29AEB6BA0(_Unwind_Exception *a1)
{
  v4 = 8;
  while (1)
  {
    v5 = *(v2 + v4);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v4 -= 8;
    if (v4 == -8)
    {
      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      operator delete(v1);
      _Unwind_Resume(a1);
    }
  }
}

void *sub_29AEB6C1C(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    sub_29AB89A2C(result, a4);
    result = sub_29AE64B1C(v6, a2, a3, *(v6 + 8));
    *(v6 + 8) = result;
  }

  return result;
}

void sub_29AEB6C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_29ADD60F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEB6CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29AEB6CF8(a1, a2, a2 + 12 * a3);
  return a1;
}

unint64_t *sub_29AEB6CF8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = a3;
  v9 = a2;
  sub_29A21C3C8(a1);
  v7[0] = &v9;
  v7[1] = &v8;
  return sub_29AEB6D64(a1, 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 2), v7);
}

unint64_t *sub_29AEB6D64(unint64_t *result, unint64_t a2, uint64_t ***a3)
{
  v3 = *result;
  if (*result == a2)
  {
    return result;
  }

  v5 = result;
  if (a2)
  {
    v7 = result[4];
    if (v7)
    {
      if (!result[3])
      {
        v8 = atomic_load(v7 - 2);
        if (v8 == 1)
        {
          if (v3 < a2)
          {
            v9 = result[4];
            if (*(v9 - 8) < a2)
            {
              result = sub_29A21C644(result, a2);
              v7 = result;
              if (v3)
              {
                v10 = 0;
                do
                {
                  v11 = result + v10;
                  v12 = *(v9 + v10);
                  *(v11 + 2) = *(v9 + v10 + 8);
                  *v11 = v12;
                  v10 += 12;
                }

                while (12 * v3 != v10);
              }
            }

            v13 = **a3;
            v14 = *a3[1];
            if (v13 != v14)
            {
              v15 = 12 * v3;
              do
              {
                v16 = v7 + v15;
                v17 = *v13;
                *(v16 + 2) = *(v13 + 2);
                *v16 = v17;
                v13 = (v13 + 12);
                v15 += 12;
              }

              while (v13 != v14);
            }
          }

          v18 = v7;
LABEL_34:
          if (v18 != v5[4])
          {
            pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
          }

          *v5 = a2;
          return result;
        }

        v7 = result[4];
      }

      if (v3 >= a2)
      {
        v23 = a2;
      }

      else
      {
        v23 = *result;
      }

      result = sub_29A21C644(result, a2);
      v18 = result;
      if (v3)
      {
        v24 = 12 * v23;
        v25 = result;
        do
        {
          v26 = *v7;
          *(v25 + 2) = *(v7 + 2);
          *v25 = v26;
          v25 = (v25 + 12);
          v7 = (v7 + 12);
          v24 -= 12;
        }

        while (v24);
      }

      if (v3 < a2)
      {
        v27 = **a3;
        v28 = *a3[1];
        if (v27 != v28)
        {
          v29 = 12 * v3;
          do
          {
            v30 = result + v29;
            v31 = *v27;
            *(v30 + 2) = *(v27 + 2);
            *v30 = v31;
            v27 = (v27 + 12);
            v29 += 12;
          }

          while (v27 != v28);
        }
      }

      goto LABEL_34;
    }

    if (a2 < 0x1555555555555556)
    {
      result = sub_29A21C644(result, a2);
      v18 = result;
      v19 = **a3;
      v20 = *a3[1];
      if (v19 != v20)
      {
        v21 = result;
        do
        {
          v22 = *v19;
          *(v21 + 2) = *(v19 + 2);
          *v21 = v22;
          v21 = (v21 + 12);
          v19 = (v19 + 12);
        }

        while (v19 != v20);
      }

      goto LABEL_34;
    }
  }

  return sub_29A21C3C8(result);
}

void *sub_29AEB6FAC@<X0>(const pxrInternal__aapl__pxrReserved__::TfToken *a1@<X1>, const pxrInternal__aapl__pxrReserved__::VtValue *a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x58uLL);
  result = sub_29AEB7010(v6, a1, a2);
  *a3 = v6 + 3;
  a3[1] = v6;
  return result;
}

void *sub_29AEB7010(void *a1, const pxrInternal__aapl__pxrReserved__::TfToken *a2, const pxrInternal__aapl__pxrReserved__::VtValue *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20928E0;
  pxrInternal__aapl__pxrReserved__::HdVtBufferSource::HdVtBufferSource((a1 + 3), a2, a3, 1, 1);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::Block::guttering(unsigned int *a1, pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader *a2, uint64_t a3, char a4, int a5, int a6, _BYTE *a7, int a8, int a9)
{
  if (a5 <= a6)
  {
    v14 = a6;
  }

  else
  {
    v14 = a5;
  }

  __p = operator new[](v14 * a8);
  v15 = 0;
  if ((*(*a3 + 40))(a3))
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v65 = v16;
  v17 = a6;
  v62 = a5;
  v63 = a6;
  v18 = a5;
  v19 = a8;
  v20 = &a7[a9 + a9 * a6];
  v21 = &a7[a8 + a8 * a5];
  do
  {
    if ((v15 & 0x7FFFFFFD) != 0)
    {
      v22 = v63;
    }

    else
    {
      v22 = v62;
    }

    pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::sampleNeighbor(a2, __p, *a1, v15, v22, a8);
    if (v22 >= 1)
    {
      v23 = 0;
      v24 = __p;
      do
      {
        if (v15 > 1)
        {
          v25 = &v20[(v18 - v23) * a8];
          v26 = &a7[(v17 - v23) * a9];
          if (v15 != 3)
          {
            v26 = a7;
          }

          if (v15 != 2)
          {
            v25 = v26;
          }
        }

        else if (v15)
        {
          v25 = &v21[a9 + a9 * v23];
          if (v15 != 1)
          {
            v25 = a7;
          }
        }

        else
        {
          v25 = &a7[a8 + a8 * v23];
        }

        v27 = a8;
        if (a8 >= 1)
        {
          do
          {
            v28 = *v24++;
            *v25++ = v28;
            --v27;
          }

          while (v27);
        }

        ++v23;
      }

      while (v23 != v22);
    }

    ++v15;
  }

  while (v15 != v65);
  operator delete[](__p);
  v29 = (*(*a3 + 88))(a3);
  v30 = v29;
  if (v29 < 0)
  {
    v31 = -1;
  }

  else
  {
    v31 = 4 * v29;
  }

  v32 = operator new[](v31);
  v33 = 0;
  do
  {
    v34 = &dword_29B712F18[2 * v33];
    v36 = *v34;
    v35 = v34[1];
    CornerPixel = pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::getCornerPixel(a2, v32, v30, *a1, v33, (*(a1 + 18) - a4));
    v38 = v33 - 1;
    v64 = v33;
    v39 = v33 & 0x7FFFFFFE;
    if (CornerPixel)
    {
      if (v38 >= 2)
      {
        v40 = 0;
      }

      else
      {
        v40 = v62;
      }

      v41 = v36 + v40;
      if (v39 == 2)
      {
        v42 = v63;
      }

      else
      {
        v42 = 0;
      }

      v43 = &a7[a9 * (v35 + v42) + v19 * v41];
      v44 = (*(*a3 + 48))(a3);
      sub_29B273F54(v43, v32, v44, v30);
    }

    else
    {
      v45 = 0;
      v46 = v38 >= 2;
      v47 = v62 - 1;
      if (v46)
      {
        v47 = 0;
      }

      v48 = v36 + v47;
      v49 = v39 == 2;
      v50 = v63 - 1;
      if (!v49)
      {
        v50 = 0;
      }

      v51 = v48;
      __pa = (v35 + v50);
      v52 = 1;
      do
      {
        v53 = 0;
        v54 = v52;
        v55 = a7;
        v56 = &a7[(__pa + v45) * a9];
        v57 = 1;
        do
        {
          v58 = v57;
          v59 = &v56[(v53 + v51) * v19];
          v60 = (*(*a3 + 48))(a3);
          sub_29B273F54(v59, v32, v60, v30);
          v57 = 0;
          v53 = 1;
        }

        while ((v58 & 1) != 0);
        v52 = 0;
        v45 = 1;
        a7 = v55;
      }

      while ((v54 & 1) != 0);
    }

    v33 = v64 + 1;
  }

  while (v64 + 1 != v65);

  operator delete[](v32);
}

void pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::sampleNeighbor(pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader *this, unsigned __int8 *a2, uint64_t a3, int a4, int a5, int a6)
{
  v12 = (*(**(this + 6) + 128))(*(this + 6), a3);
  v13 = v12 + 4;
  v14 = *(v12 + 4 + 4 * a4);
  if (v14 != -1)
  {
    v15 = v12;
    v16 = (*(v12 + 2) >> (2 * a4)) & 3;
    if ((*(v12 + 3) & 8) != 0)
    {
      goto LABEL_5;
    }

    if ((*((*(**(this + 6) + 128))(*(this + 6), v14) + 3) & 8) != 0)
    {
      if ((*(**(this + 6) + 40))(*(this + 6)) == 1)
      {
        a5 /= 2;
        pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::resampleBorder(this, v14, v16, a2, a5, a6, 0.0, 1.0);
        v38 = (*(**(this + 6) + 128))(*(this + 6), v14);
        v39 = v16 - 1;
        if (!v16)
        {
          v39 = 3;
        }

        v35 = *(v38 + 4 * v39 + 4);
        if (((*(v38 + 2) >> (2 * v39)) & 3) != 0)
        {
          v36 = ((*(v38 + 2) >> (2 * v39)) & 3) - 1;
        }

        else
        {
          v36 = 3;
        }

        v37 = &a2[a5 * a6];
        v26 = 0.0;
        v33 = 1.0;
        v34 = this;
        goto LABEL_26;
      }

      v41 = "hdSt/ptexMipmapTextureLoader.cpp";
      v42 = "sampleNeighbor";
      v40 = 643;
      goto LABEL_38;
    }

    if ((*(v15 + 3) & 8) != 0)
    {
LABEL_5:
      if ((*((*(**(this + 6) + 128))(*(this + 6), v14) + 3) & 8) == 0)
      {
        if ((*(**(this + 6) + 40))(*(this + 6)) == 1)
        {
          v18 = (a4 + 1) & 3;
          if (a4 + 1 <= 0)
          {
            v18 = -(-(a4 + 1) & 3);
          }

          v19 = *(v13 + 4 * v18);
          v20 = (*(v15 + 2) >> (2 * v18)) & 3;
          v21 = (*(**(this + 6) + 128))(*(this + 6), v19);
          if (v20 == 3)
          {
            v22 = 0;
          }

          else
          {
            v22 = v20 + 1;
          }

          v23 = *(v21 + 4 * v22 + 4);
          v24 = (*((*(**(this + 6) + 128))(*(this + 6), v19) + 2) >> (2 * v22)) & 3;
          if (v23 == v14 && v24 == v16)
          {
            v26 = 0.0;
            v33 = 0.5;
            goto LABEL_25;
          }

          v26 = 0.5;
LABEL_24:
          v33 = 1.0;
LABEL_25:
          v34 = this;
          v35 = v14;
          v36 = v16;
          v37 = a2;
LABEL_26:

          pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::resampleBorder(v34, v35, v36, v37, a5, a6, v26, v33);
          return;
        }

        v41 = "hdSt/ptexMipmapTextureLoader.cpp";
        v42 = "sampleNeighbor";
        v40 = 669;
LABEL_38:
        v43 = v40;
        v44 = "void pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::sampleNeighbor(unsigned char *, int, int, int, int)";
        v45 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v41, "Assuming quad mesh format", v17);
        return;
      }
    }

    v26 = 0.0;
    goto LABEL_24;
  }

  pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::resampleBorder(this, a3, a4, a2, a5, a6, 0.0, 1.0);
  if (a5 >= 2)
  {
    v27 = 0;
    v28 = &a2[(a5 - 1) * a6];
    do
    {
      v29 = a2;
      v30 = v28;
      v31 = a6;
      if (a6 >= 1)
      {
        do
        {
          v32 = *v29;
          *v29++ = *v30;
          *v30++ = v32;
          --v31;
        }

        while (v31);
      }

      ++v27;
      v28 -= a6;
      a2 += a6;
    }

    while (v27 != a5 >> 1);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::getCornerPixel(pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader *this, float *a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v8 = a4;
  v64 = *MEMORY[0x29EDCA608];
  v12 = (*(**(this + 6) + 128))(*(this + 6), a4);
  v15 = v12;
  if (a5 == 3 && (*(v12 + 3) & 8) != 0)
  {
    v16 = *(v12 + 16);
    if (v16 != -1)
    {
      v12 = (*(**(this + 6) + 128))(*(this + 6), *(v12 + 16));
      if ((*(v12 + 3) & 8) == 0)
      {
        v17 = *(v15 + 2) >> 6;
        v18 = *this + 20 * v16;
        v19 = *(v18 + 18);
        if (a6 + 1 < v19)
        {
          LOBYTE(v19) = a6 + 1;
        }

        v20 = *(v18 + 19);
        if (a6 + 1 < v20)
        {
          LOBYTE(v20) = a6 + 1;
        }

        v21 = v19;
        v22 = (1 << v19) / 2;
        v23 = v22 - 1;
        v24 = (1 << v20) / 2;
        v25 = v19;
        if (v17 == 2)
        {
          v26 = ~(-1 << v20);
        }

        else
        {
          v26 = v24 - 1;
        }

        if (v17 != 2)
        {
          v23 = 0;
        }

        v27 = -1 << v19;
        if (v17)
        {
          v28 = ~v27;
        }

        else
        {
          v24 = 0;
          v28 = v22;
        }

        if (*(v15 + 2) >> 6 <= 1u)
        {
          v29 = v21;
        }

        else
        {
          v29 = v25;
        }

        if (*(v15 + 2) >> 6 <= 1u)
        {
          v30 = v24;
        }

        else
        {
          v30 = v26;
        }

        if (*(v15 + 2) >> 6 <= 1u)
        {
          v31 = v28;
        }

        else
        {
          v31 = v23;
        }

        v32 = *(this + 6);
        v33 = v29 & 0xFFFFFFFFFFFF00FFLL | (v20 << 8);
LABEL_56:
        (*(*v32 + 176))(v32, v16, v31, v30, a2, 0, a3, v33);
        return 1;
      }
    }
  }

  else if (a5 == 1 && (*(v12 + 3) & 8) != 0)
  {
    v16 = *(v12 + 4);
    if (v16 != -1)
    {
      v12 = (*(**(this + 6) + 128))(*(this + 6), *(v12 + 4));
      if ((*(v12 + 3) & 8) == 0)
      {
        v34 = *(v15 + 2) & 3;
        v35 = *this + 20 * v16;
        v36 = *(v35 + 18);
        if (a6 + 1 < v36)
        {
          LOBYTE(v36) = a6 + 1;
        }

        v37 = *(v35 + 19);
        if (a6 + 1 < v37)
        {
          LOBYTE(v37) = a6 + 1;
        }

        v38 = v36;
        v39 = v36;
        if (v34 == 2)
        {
          v40 = (1 << v36) / 2;
        }

        else
        {
          v40 = 0;
        }

        if (v34 == 2)
        {
          v41 = ~(-1 << v37);
        }

        else
        {
          v41 = (1 << v37) / 2;
        }

        v42 = (1 << v36) / 2 - 1;
        v43 = -1 << v36;
        v44 = (1 << v37) / 2 - 1;
        if ((*(v15 + 2) & 3) != 0)
        {
          v45 = ~v43;
        }

        else
        {
          v45 = v42;
        }

        if ((*(v15 + 2) & 3) == 0)
        {
          v44 = 0;
        }

        if ((*(v15 + 2) & 3u) <= 1)
        {
          v46 = v38;
        }

        else
        {
          v46 = v39;
        }

        if ((*(v15 + 2) & 3u) <= 1)
        {
          v31 = v45;
        }

        else
        {
          v31 = v40;
        }

        if ((*(v15 + 2) & 3u) <= 1)
        {
          v30 = v44;
        }

        else
        {
          v30 = v41;
        }

        v32 = *(this + 6);
        v33 = v46 & 0xFFFFFFFFFFFF00FFLL | (v37 << 8);
        goto LABEL_56;
      }
    }
  }

  MEMORY[0x2A1C7C4A8](v12, v13, v14);
  v47 = v61 - ((4 * a3 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v47, 4 * a3);
  MEMORY[0x2A1C7C4A8](v48, v49, v50);
  v51 = v47;
  bzero(v47, 4 * a3);
  sub_29AEB94F8(v61, *(this + 6), v8, a5, a6);
  if (v62)
  {
    v52 = 0;
  }

  else
  {
    v52 = 0;
    do
    {
      sub_29AEB8E58(v61, v47);
      v53 = a3;
      v54 = (v61 - ((4 * a3 + 15) & 0xFFFFFFFFFFFFFFF0));
      v55 = v54;
      v56 = a2;
      if (a3 >= 1)
      {
        do
        {
          v57 = *v54;
          *v55 = *v54 + *v55;
          if (v52 == 2)
          {
            *v56 = v57;
          }

          ++v56;
          ++v55;
          ++v54;
          --v53;
        }

        while (v53);
      }

      sub_29AEB8EF4(v61);
      ++v52;
    }

    while ((v62 & 1) == 0);
    if (v52 == 4)
    {
      if (v63 != 1)
      {
        return 1;
      }

      v52 = 4;
    }
  }

  if (a3 >= 1)
  {
    v58 = a3;
    do
    {
      v59 = *v51++;
      *a2++ = v59 / v52;
      --v58;
    }

    while (v58);
  }

  return 0;
}

void pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::Block::Generate(unsigned int *a1, pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader *a2, uint64_t a3, uint64_t a4, int a5, int a6, signed int a7)
{
  v12 = (*(*a3 + 128))(a3, *a1);
  v13 = 0;
  v14 = *(a1 + 18);
  v15 = *(a1 + 19);
  if ((*(v12 + 3) & 8) != 0)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= v14)
  {
    v16 = *(a1 + 18);
  }

  if (v16 >= v15)
  {
    v17 = *(a1 + 19);
  }

  else
  {
    v17 = v16;
  }

  v18 = *(a1 + 5);
  v29 = a1;
  v19 = *(a1 + 4);
  v25 = (a6 * a5);
  v23 = a7;
  v24 = v17;
  do
  {
    if (a7 != -1 && v13 > a7)
    {
      break;
    }

    v19 += (v13 << 31 >> 31) & ((1 << (v14 + 1)) + 2);
    v20 = (v13 & 1) != 0 || v13 == 0;
    v21 = (1 << (v15 + 1)) + 2;
    if (v20)
    {
      v21 = 0;
    }

    v18 += v21;
    v7 = v14 | (v15 << 8) | v7 & 0xFFFFFFFFFFFF0000;
    (*(*a3 + 144))(a3, *v29, a4 + a6 * a5 + v18 * v25 + a5 + v19 * a5, v25, v7);
    pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::Block::guttering(v29, a2, a3, v13++, 1 << v14, 1 << v15, (a4 + v18 * v25 + v19 * a5), a5, v25);
    if (v14 <= v24)
    {
      break;
    }

    --v14;
    v22 = v15-- <= v24;
    a7 = v23;
  }

  while (!v22);
  v29[1] = v13;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::Block::SetSize(uint64_t this, char a2, char a3, int a4)
{
  *(this + 18) = a2;
  *(this + 19) = a3;
  v4 = 1 << a2;
  v5 = 1 << a3;
  if (a4)
  {
    LOWORD(v4) = v4 + v4 / 2 + 4;
    LOWORD(v5) = (1 << a3) + 2;
  }

  *(this + 12) = v4;
  *(this + 14) = v5;
  return this;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::HdStPtexMipmapTextureLoader(uint64_t *a1, uint64_t a2, int a3, int a4, unint64_t a5, int a6)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  a1[6] = a2;
  *(a1 + 14) = a4;
  *(a1 + 60) = 0u;
  v11 = a1 + 15;
  *(a1 + 76) = 0u;
  *(a1 + 23) = 0;
  v12 = (*(*a2 + 88))(a2);
  *v11 = dword_29B712F08[(*(*a2 + 48))(a2)] * v12;
  v13 = (*(*a2 + 96))(a2);
  sub_29AEB80BC(a1, v13);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 20 * v13;
    do
    {
      v17 = (*(*a2 + 128))(a2, v15);
      v18 = *a1;
      *(*a1 + v14) = v15;
      if (a6)
      {
        v19 = v17[1];
        if (v19 >= *v17)
        {
          LOBYTE(v19) = *v17;
        }

        v20 = *(a1 + 14);
        v21 = v18 + v14;
        *(v21 + 18) = v19;
        *(v21 + 19) = v19;
        v22 = 1 << v19;
        if (v20)
        {
          LOWORD(v23) = v22 + 2;
          v22 += v22 / 2 + 4;
        }

        else
        {
          LOWORD(v23) = v22;
        }
      }

      else
      {
        v24 = *v17;
        v25 = v17[1];
        v26 = *(a1 + 14);
        v27 = v18 + v14;
        *(v27 + 18) = *v17;
        *(v27 + 19) = v25;
        v22 = 1 << v24;
        v23 = 1 << v25;
        if (v26)
        {
          v22 += v22 / 2 + 4;
          LOWORD(v23) = v23 + 2;
        }
      }

      v28 = v18 + v14;
      *(v28 + 12) = v22;
      *(v28 + 14) = v23;
      v15 = (v15 + 1);
      v14 += 20;
    }

    while (v16 != v14);
  }

  pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::optimizePacking(a1, a3, a5);
  pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::generateBuffers(a1);
  return a1;
}

void sub_29AEB8088(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEB80BC(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29AEB9644(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 20 * a2;
  }
}

void *pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::optimizePacking(pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader *this, int a2, unint64_t a3)
{
  v86 = &v86;
  v87 = &v86;
  v88 = 0;
  v6 = *this;
  v7 = *(this + 1);
  if (*this == v7)
  {
    v9 = 0;
    v8 = 0;
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = &v86;
    do
    {
      v11 = operator new(0x18uLL);
      v11[1] = &v86;
      v11[2] = v6;
      *v11 = v10;
      v10[1] = v11;
      ++v9;
      v86 = v11;
      v88 = v9;
      v8 += *(v6 + 14) * *(v6 + 12);
      v6 += 20;
      v10 = v11;
    }

    while (v6 != v7);
    if (!a3)
    {
      goto LABEL_25;
    }
  }

  v12 = *(this + 15);
  if (v8 * v12 > a3)
  {
    v73 = a2;
    v13 = &v74;
    v74 = &v74;
    __p = &v74;
    v76 = 0;
    v14 = v87;
    if (v87 == &v86)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      v16 = &v74;
      do
      {
        v17 = v14[2];
        if (*(v17 + 18) >= 2 && *(v17 + 19) >= 2)
        {
          v18 = operator new(0x18uLL);
          v18[1] = &v74;
          v18[2] = v17;
          *v18 = v16;
          v16[1] = v18;
          ++v15;
          v16 = v18;
          v74 = v18;
          v76 = v15;
        }

        v14 = v14[1];
      }

      while (v14 != &v86);
      v13 = __p;
    }

    v80 = sub_29AEB92C0;
    sub_29AEB97B8(v13, &v74, v15, &v80);
    v19 = a3 / v12;
    a2 = v73;
    while (v8 > v19)
    {
      v20 = v76;
      if (!v76)
      {
        break;
      }

      v21 = __p;
      v22 = *(__p + 1);
      v23 = *(__p + 2);
      v24 = *__p;
      *(v24 + 8) = v22;
      *v22 = v24;
      v76 = v20 - 1;
      operator delete(v21);
      if (*(v23 + 18) >= 2 && *(v23 + 19) >= 2)
      {
        v25 = operator new(0x18uLL);
        v25[1] = &v74;
        v25[2] = v23;
        v26 = v74;
        *v25 = v74;
        v26[1] = v25;
        v74 = v25;
        ++v76;
        v27 = *(v23 + 12);
        v28 = *(v23 + 14);
        v29 = *(v23 + 18) - 1;
        v30 = *(v23 + 19) - 1;
        v31 = *(this + 14);
        *(v23 + 18) = v29;
        *(v23 + 19) = v30;
        v32 = 1 << v29;
        v33 = 1 << v30;
        if (v31)
        {
          v32 += v32 / 2 + 4;
          LOWORD(v33) = v33 + 2;
        }

        *(v23 + 12) = v32;
        *(v23 + 14) = v33;
        v8 = v8 - v28 * v27 + v33 * v32;
      }
    }

    sub_29A0EB800(&v74);
    v9 = v88;
  }

LABEL_25:
  v74 = sub_29AEB92E4;
  sub_29AEB97B8(v87, &v86, v9, &v74);
  v35 = v87;
  v34 = v88;
  if (v88)
  {
    v36 = v87[2];
    v34 = *(v36 + 6);
    v37 = *(v36 + 7) * v34;
  }

  else
  {
    v37 = 0;
  }

  if (v87 == &v86)
  {
    v45 = 0;
    v44 = 0;
    v38 = v34;
  }

  else
  {
    v38 = v34;
    v39 = v87;
    do
    {
      v41 = v39 + 1;
      v39 = v39[1];
      v40 = v41[1];
      v42 = *(v40 + 6);
      v43 = *(v40 + 7);
      if (v43 * v42 < v37)
      {
        v37 = v43 * v42;
      }

      if (v42 < v34)
      {
        v34 = v42;
      }

      if (v43 < v38)
      {
        v38 = v43;
      }
    }

    while (v39 != &v86);
    if (v87 == &v86)
    {
      v45 = 0;
      v44 = 0;
    }

    else
    {
      v44 = 0;
      v45 = 0;
      v46 = v87;
      do
      {
        v48 = v46 + 1;
        v46 = v46[1];
        v47 = v48[1];
        if (v44 <= *(v47 + 6))
        {
          v44 = *(v47 + 6);
        }

        v49 = *(v47 + 7);
        if (v45 <= v49)
        {
          v45 = v49;
        }
      }

      while (v46 != &v86);
    }
  }

  if (v44 <= 0x200)
  {
    v44 = 512;
  }

  if (v45 <= 0x200)
  {
    v45 = 512;
  }

  v50 = v8 / v44 / v45;
  v51 = a2 / 2;
  if (a2 / 2 <= 1)
  {
    v51 = 1;
  }

  if (v50 > v51)
  {
    v44 *= (v8 / v44 / v45) / v51;
    if (v44 >= 0x1000)
    {
      v44 = 4096;
    }

    v50 = v8 / v44 / v45;
  }

  if (v50 > v51)
  {
    v45 *= v50 / v51;
    if (v45 >= 0x1000)
    {
      v45 = 4096;
    }
  }

  *(this + 16) = v44;
  *(this + 17) = v45;
  v83 = v37;
  v84 = v34;
  v85 = v38;
  v80 = &v80;
  v81 = &v80;
  v82 = 0;
  if (v35 == &v86)
  {
    v66 = 0;
    v65 = *(this + 4);
    v64 = &v80;
  }

  else
  {
    do
    {
      v52 = v35[2];
      for (i = v81; i != &v80; i = i[1])
      {
        v74 = i[2];
        if (sub_29AEB931C(v74, v52, &v83))
        {
          v60 = *i;
          v59 = i[1];
          *(v60 + 1) = v59;
          *v59 = v60;
          --v82;
          operator delete(i);
          v61 = v74;
          if (v74[5])
          {
            v62 = operator new(0x18uLL);
            *(v62 + 1) = &v80;
            *(v62 + 2) = v61;
            v63 = v80;
            *v62 = v80;
            *(v63 + 1) = v62;
            v80 = v62;
            ++v82;
          }

          else
          {
            sub_29A0A71C8(this + 24, &v74);
          }

          goto LABEL_72;
        }
      }

      v54 = operator new(0x30uLL);
      sub_29AEB95C0(v54, *(this + 32), *(this + 34));
      v79 = v54;
      v55 = sub_29AEB931C(v54, v52, &v83);
      v56 = v79;
      if (v79[5])
      {
        v57 = operator new(0x18uLL);
        *(v57 + 1) = &v80;
        *(v57 + 2) = v56;
        v58 = v80;
        *v57 = v80;
        *(v58 + 1) = v57;
        v80 = v57;
        ++v82;
      }

      else
      {
        sub_29A0A71C8(this + 24, &v79);
      }

      if ((v55 & 1) == 0)
      {
        v74 = "hdSt/ptexMipmapTextureLoader.cpp";
        __p = "optimizePacking";
        v76 = 1004;
        v77 = "void pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::optimizePacking(int, size_t)";
        v78 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v74, "added", 0);
      }

LABEL_72:
      v35 = v35[1];
    }

    while (v35 != &v86);
    v64 = v81;
    v65 = *(this + 4);
    if (v81 == &v80)
    {
      v66 = 0;
    }

    else
    {
      v66 = 0;
      v67 = v81;
      do
      {
        ++v66;
        v67 = v67[1];
      }

      while (v67 != &v80);
    }
  }

  sub_29A36E228(this + 3, v65, v64, &v80, v66);
  for (j = *this; j != *(this + 1); j += 20)
  {
    v69 = 0;
    v70 = 0;
    v71 = *j;
    do
    {
      v70 = pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::getLevelDiff(this, v71, v69++) | (16 * v70);
    }

    while (v69 != 4);
    *(j + 16) = v70;
  }

  sub_29A0EB800(&v80);
  return sub_29A0EB800(&v86);
}

void sub_29AEB86F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_29A0EB800(va);
  sub_29A0EB800(va1);
  _Unwind_Resume(a1);
}

char *pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::generateBuffers(pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader *this)
{
  v22 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 1) - *this) >> 2);
  v2 = (*(this + 4) - *(this + 3)) >> 3;
  v24 = *(this + 16) * *(this + 15) * *(this + 17);
  v3 = v24 * v2;
  v4 = operator new[](v3);
  *(this + 9) = v4;
  *(this + 11) = v3;
  bzero(v4, v3);
  v5 = v2 & 0x7FFFFFFF;
  v23 = v2;
  if (v2 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(this + 3) + 8 * v6);
      v8 = *(v7 + 8);
      if (v8 != v7)
      {
        v9 = *(this + 6);
        v10 = *(this + 9) + v6 * v24;
        v12 = *(this + 15);
        v11 = *(this + 16);
        v13 = *(this + 14);
        do
        {
          pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::Block::Generate(*(v8 + 16), this, v9, v10, v12, v11, v13);
          v8 = *(v8 + 8);
        }

        while (v8 != v7);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  result = operator new[](12 * v22);
  v15 = *(this + 11) + 12 * v22;
  *(this + 10) = result;
  *(this + 11) = v15;
  if (v23 >= 1)
  {
    v16 = 0;
    v17 = *(this + 3);
    do
    {
      v18 = *(v17 + 8 * v16);
      for (i = *(v18 + 8); i != v18; i = *(i + 8))
      {
        v20 = *(i + 16);
        v21 = &result[12 * *v20];
        *v21 = v16;
        *(v21 + 1) = *(v20 + 2) - 1;
        *(v21 + 2) = *(v20 + 4) + 1;
        *(v21 + 3) = *(v20 + 5) + 1;
        *(v21 + 4) = *(v20 + 8);
        *(v21 + 5) = *(v20 + 19) | (*(v20 + 18) << 8);
      }

      ++v16;
    }

    while (v16 != v5);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::~HdStPtexMipmapTextureLoader(pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        sub_29A0EB800(v5 + 3);
        sub_29A0EB800(v5);
        operator delete(v5);
        v3 = *(this + 3);
        v2 = *(this + 4);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = *(this + 9);
  if (v6)
  {
    operator delete[](v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    operator delete[](v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    *(this + 4) = v8;
    operator delete(v8);
  }

  v9 = *this;
  if (*this)
  {
    *(this + 1) = v9;
    operator delete(v9);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::resampleBorder(pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader *this, uint64_t a2, int a3, unsigned __int8 *a4, int a5, int a6, float a7, float a8)
{
  v16 = *this;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 1) - *this) >> 2) <= a2)
  {
    v70 = "hdSt/ptexMipmapTextureLoader.cpp";
    v71 = "resampleBorder";
    v72 = 507;
    v73 = "int pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::resampleBorder(int, int, unsigned char *, int, int, float, float)";
    v74 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v70, "static_cast<size_t>(face) < _blocks.size()", 0);
    v16 = *this;
  }

  v17 = v16 + 20 * a2;
  v18 = *(v17 + 18);
  v19 = *(v17 + 19);
  v20 = *(v17 + 18);
  if ((a3 | 2) != 2)
  {
    v20 = v19;
  }

  v21 = 1 << v20;
  v22 = (1 << v20);
  v23 = ((a8 - a7) * v22);
  v69 = a6;
  if (v23 <= a5)
  {
    v44 = (*(**(this + 6) + 160))(*(this + 6), a2, v18 | (v19 << 8));
    if (v44)
    {
      v29 = v44;
      v66 = a5;
      v64 = a4;
      v68 = operator new[](v23 * a6);
      if (v23 >= 1)
      {
        v45 = (v22 * a7);
        v46 = ~(-1 << v19);
        v47 = v21;
        v48 = -1 << v18;
        v49 = v68;
        v50 = ~v45 + v47;
        v51 = ((a8 - a7) * v22);
        do
        {
          if (a3 == 3)
          {
            v52 = v45;
          }

          else
          {
            v52 = 0;
          }

          if (a3 == 2)
          {
            v53 = v45;
          }

          else
          {
            v53 = 0;
          }

          if (a3 == 2)
          {
            v52 = v46;
          }

          if (a3 == 1)
          {
            v53 = ~v48;
            v52 = v50;
          }

          if (a3)
          {
            v54 = v53;
          }

          else
          {
            v54 = v50;
          }

          if (a3)
          {
            v55 = v52;
          }

          else
          {
            v55 = 0;
          }

          (*(*v29 + 40))(v29, v54, v55, v49);
          --v50;
          ++v45;
          v49 += v69;
          --v51;
        }

        while (v51);
      }

      if (v66 >= 1)
      {
        v56 = 0;
        v57 = 0;
        v58 = v66;
        do
        {
          if (v69 >= 1)
          {
            memcpy(&v64[v56], &v68[v57 / v66 * v69], v69);
          }

          v57 += v23;
          v56 += v69;
          --v58;
        }

        while (v58);
      }

      v43 = v68;
      goto LABEL_70;
    }

    v70 = "hdSt/ptexMipmapTextureLoader.cpp";
    v71 = "resampleBorder";
    v59 = 521;
LABEL_73:
    v72 = v59;
    v73 = "int pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::resampleBorder(int, int, unsigned char *, int, int, float, float)";
    v74 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v70, "Ptex missing texture face for face %d at res (%d x %d)", v28, a2, (1 << v18), (1 << v19));
    return v23;
  }

  if (v18)
  {
    v24 = v19 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    do
    {
      LOBYTE(v18) = v18 - 1;
      LOBYTE(v19) = v19 - 1;
      v23 = (v23 / 2);
    }

    while (v23 > a5 && v18 != 0 && v19 != 0);
  }

  v27 = (*(**(this + 6) + 160))(*(this + 6), a2, v18 | (v19 << 8));
  if (!v27)
  {
    v70 = "hdSt/ptexMipmapTextureLoader.cpp";
    v71 = "resampleBorder";
    v59 = 568;
    goto LABEL_73;
  }

  v29 = v27;
  v30 = operator new[](v23 * a6);
  if ((a3 | 2) == 2)
  {
    v31 = v18;
  }

  else
  {
    v31 = v19;
  }

  v62 = v30;
  if (a5 > 0)
  {
    v63 = a4;
    v32 = 0;
    v33 = 1 << v31;
    v34 = (v33 * a7);
    v65 = ~(-1 << v19);
    v67 = -1 << v18;
    __n = a6;
    v35 = a6;
    v36 = a5;
    v37 = ~v34 + v33;
    v38 = v30;
    do
    {
      if (a3 == 3)
      {
        v39 = v34;
      }

      else
      {
        v39 = 0;
      }

      if (a3 == 2)
      {
        v40 = v34;
      }

      else
      {
        v40 = 0;
      }

      if (a3 == 2)
      {
        v39 = v65;
      }

      if (a3 == 1)
      {
        v40 = ~v67;
        v39 = v37;
      }

      if (a3)
      {
        v41 = v40;
      }

      else
      {
        v41 = v37;
      }

      if (a3)
      {
        v42 = v39;
      }

      else
      {
        v42 = 0;
      }

      (*(*v29 + 40))(v29, v41, v42, v38);
      if (a6 >= 1)
      {
        memcpy(&v63[v32], &v62[v32], __n);
      }

      --v37;
      ++v34;
      a6 = v69;
      v32 += v69;
      v38 += v35;
      --v36;
    }

    while (v36);
  }

  v43 = v62;
LABEL_70:
  operator delete[](v43);
  (*(*v29 + 16))(v29);
  return v23;
}

uint64_t sub_29AEB8E58(void *a1, uint64_t a2)
{
  if (*(a1 + 36) >= (*(a1 + 28) + ((16 * *(a1 + 39)) >> 7)))
  {
    v2 = (*(a1 + 28) + ((16 * *(a1 + 39)) >> 7));
  }

  else
  {
    v2 = *(a1 + 36);
  }

  if (*(a1 + 37) < v2)
  {
    LOBYTE(v2) = *(a1 + 37);
  }

  v3 = &dword_29B712F18[2 * *(a1 + 6)];
  return (*(**a1 + 176))(*a1, *(a1 + 5), (*v3 * ~(-1 << v2)), (v3[1] * ~(-1 << v2)), a2, 0, *(a1 + 2), v2 | (v2 << 8));
}

__n128 sub_29AEB8EF4(unsigned int *a1)
{
  if ((*(a1 + 31) & 1) == 0)
  {
    v2 = (*(**a1 + 128))(*a1, a1[5]);
    result = *v2;
    v26 = *v2;
    v27 = v2[1].n128_u32[0];
    v5 = a1[6];
    if (*(a1 + 29) == 1)
    {
      a1[5] = v26.n128_u32[v5 + 1];
      if (*(a1 + 30) == 1)
      {
        v6 = *((*(**a1 + 128))() + 12);
        a1[5] = v6;
        a1[6] = 1;
        *(a1 + 30) = 0;
        goto LABEL_16;
      }

      if ((v26.n128_u8[3] & 8) != 0 && (v13 = (*(**a1 + 128))(), v5 = a1[6], (*(v13 + 3) & 8) == 0) && v5 == 3)
      {
        *(a1 + 30) = 1;
        v11 = v26.n128_u8[2] >> 6;
      }

      else
      {
        *(a1 + 30) = 0;
        v12 = (v26.n128_u8[2] >> (2 * v5)) & 3;
        if (v12 == 3)
        {
          v11 = 0;
        }

        else
        {
          v11 = v12 + 1;
        }
      }
    }

    else
    {
      v7 = v5 + 3;
      v8 = (-v7 & 0x80000000) != 0;
      v9 = -v7 & 3;
      v10 = v7 & 3;
      if (!v8)
      {
        v10 = -v9;
      }

      a1[5] = v26.n128_u32[v10 + 1];
      v11 = (v26.n128_u8[2] >> (2 * v10)) & 3;
    }

    a1[6] = v11;
    v6 = a1[5];
LABEL_16:
    if (v6 == -1)
    {
      if (*(a1 + 29) != 1)
      {
        goto LABEL_26;
      }

      v14 = (*(**a1 + 128))(*a1, a1[3]);
      v25 = *(v14 + 16);
      v24 = *v14;
      v15 = a1[4] + 3;
      v8 = -v15 < 0;
      v16 = -v15 & 3;
      v17 = v15 & 3;
      if (!v8)
      {
        v17 = -v16;
      }

      v6 = *(&v24 + v17 + 1);
      v18 = (BYTE2(v24) >> (2 * v17)) & 3;
      a1[5] = v6;
      a1[6] = v18;
      *(a1 + 29) = 0;
    }

    v19 = (*(**a1 + 128))(*a1, v6, v3);
    if ((*(a1 + 29) & 1) != 0 || (v26.n128_u8[3] & 8) != 0 || (*(v19 + 3) & 8) == 0 || a1[6] != 3)
    {
      v21 = a1[5];
    }

    else
    {
      v21 = *(v19 + 12);
      *(a1 + 5) = v21;
    }

    if (v21 != -1)
    {
      if (v21 == a1[3])
      {
        *(a1 + 31) = 1;
      }

      else
      {
        v22 = (*(**a1 + 128))(*a1, v21, v20);
        v23 = v22[1].n128_u32[0];
        result = *v22;
        *(a1 + 9) = *v22;
        a1[13] = v23;
      }

      return result;
    }

LABEL_26:
    *(a1 + 31) = 1;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader::getLevelDiff(pxrInternal__aapl__pxrReserved__::HdStPtexMipmapTextureLoader *this, int a2, int a3)
{
  v6 = (*(**(this + 6) + 128))(*(this + 6));
  v7 = (*(*this + 20 * a2 + 18) + ((*(v6 + 3) & 8) != 0));
  sub_29AEB94F8(v11, *(this + 6), a2, a3, *(*this + 20 * a2 + 18) + ((*(v6 + 3) & 8) != 0));
  if (v13)
  {
    return 0;
  }

  LODWORD(v8) = 0;
  do
  {
    v9 = v7 - ((v14 >> 3) & 1) - *(*this + 20 * v12 + 18);
    if (v8 <= v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = v8;
    }

    sub_29AEB8EF4(v11);
  }

  while (v13 != 1);
  return v8;
}

BOOL sub_29AEB92E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 14);
  v3 = *(a2 + 14);
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *(a1 + 12) > *(a2 + 12);
  }

  return 0;
}

uint64_t sub_29AEB931C(uint64_t *a1, _WORD *a2, uint64_t a3)
{
  v3 = a1 + 3;
  v4 = a1[4];
  if (v4 == a1 + 3)
  {
    return 0;
  }

  v8 = a2[6];
  v9 = a1[4];
  while (1)
  {
    if (v8 <= *(v9 + 10))
    {
      v10 = a2[7];
      if (v10 <= *(v9 + 11))
      {
        break;
      }
    }

    v9 = v9[1];
    if (v9 == v3)
    {
      return 0;
    }
  }

  v12 = operator new(0x18uLL);
  v12[1] = a1;
  v12[2] = a2;
  v13 = *a1;
  *v12 = *a1;
  *(v13 + 8) = v12;
  *a1 = v12;
  ++a1[2];
  v14 = *(v9 + 8);
  a2[4] = v14;
  v15 = *(v9 + 9);
  a2[5] = v15;
  v16 = *(v9 + 10);
  v17 = v16 - v8;
  if (v16 > v8 && v10 * (v16 - v8) >= *a3 && *(a3 + 4) <= v17 && v10 >= *(a3 + 6))
  {
    v18 = v14 + v8;
    v19 = operator new(0x18uLL);
    v19[1] = v4;
    v19[2] = (v17 << 32) | (v10 << 48) | (v15 << 16) | v18;
    *v19 = v3;
    *v4 = v19;
    v20 = a1[5] + 1;
    a1[4] = v19;
    a1[5] = v20;
  }

  v21 = *(v9 + 11);
  if (v21 > v10)
  {
    v22 = *(v9 + 10);
    v23 = v21 - v10;
    if (v22 * (v21 - v10) >= *a3 && v22 >= *(a3 + 4) && *(a3 + 6) <= (v21 - v10))
    {
      v25 = *(v9 + 8);
      v26 = *(v9 + 9) + v10;
      v27 = operator new(0x18uLL);
      v27[1] = v3;
      v27[2] = (v23 << 48) | (v22 << 32) | (v26 << 16) | v25;
      v28 = a1[3];
      *v27 = v28;
      *(v28 + 8) = v27;
      a1[3] = v27;
      ++a1[5];
    }
  }

  v30 = *v9;
  v29 = v9[1];
  *(v30 + 8) = v29;
  *v29 = v30;
  --a1[5];
  operator delete(v9);
  return 1;
}

void *sub_29AEB94F8(void *a1, uint64_t a2, int a3, int a4, char a5)
{
  *a1 = a2;
  *(a1 + 3) = a3;
  *(a1 + 4) = a4;
  *(a1 + 5) = a3;
  *(a1 + 6) = a4;
  *(a1 + 28) = a5;
  *(a1 + 29) = 16777217;
  *(a1 + 9) = 0;
  a1[5] = -1;
  a1[6] = -1;
  *(a1 + 2) = (*(*a2 + 88))(a2);
  v6 = (*(**a1 + 128))(*a1, *(a1 + 5));
  v7 = *(v6 + 16);
  *(a1 + 36) = *v6;
  *(a1 + 13) = v7;
  if ((*(a1 + 39) & 8) != 0)
  {
    ++*(a1 + 28);
  }

  return a1;
}

void *sub_29AEB95C0(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  v6 = a1 + 3;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  v7 = operator new(0x18uLL);
  v7[1] = v6;
  v7[2] = (a2 << 32) | (a3 << 48);
  *v7 = v6;
  a1[3] = v7;
  a1[4] = v7;
  a1[5] = 1;
  return a1;
}

void sub_29AEB9628(_Unwind_Exception *a1)
{
  sub_29A0EB800(v2);
  sub_29A0EB800(v1);
  _Unwind_Resume(a1);
}

void sub_29AEB9644(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v11 = 20 * ((20 * a2 - 20) / 0x14) + 20;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_29A0BE284(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[20 * v6];
    v13 = &v10[20 * v9];
    v14 = 20 * ((20 * a2 - 20) / 0x14) + 20;
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

uint64_t *sub_29AEB97B8(uint64_t **a1, uint64_t **a2, unint64_t a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      if ((*a4)((*a2)[2], a1[2]))
      {
        v10 = *v8;
        v9 = v8[1];
        *(v10 + 8) = v9;
        *v9 = v10;
        v11 = *v4;
        v11[1] = v8;
        *v8 = v11;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v13 = a3 >> 1;
      v14 = (a3 >> 1) + 1;
      v15 = a1;
      do
      {
        v15 = v15[1];
        --v14;
      }

      while (v14 > 1);
      v16 = sub_29AEB97B8(a1, v15, a3 >> 1, a4);
      v4 = sub_29AEB97B8(v15, a2, a3 - v13, a4);
      if ((*a4)(v4[2], v16[2]))
      {
          ;
        }

        v19 = *i;
        v20 = *(*i + 8);
        v21 = *v4;
        v21[1] = v20;
        *v20 = v21;
        v22 = *v16;
        v18 = v16[1];
        v22[1] = v4;
        *v4 = v22;
        *v16 = v19;
        v19[1] = v16;
      }

      else
      {
        v18 = v16[1];
        i = v4;
        v4 = v16;
      }

      if (v18 != i && i != a2)
      {
        v23 = i;
        do
        {
          if ((*a4)(i[2], v18[2]))
          {
              ;
            }

            v26 = *j;
            v27 = *(*j + 8);
            v28 = *i;
            *(v28 + 8) = v27;
            *v27 = v28;
            if (v23 == i)
            {
              v23 = j;
            }

            v29 = *v18;
            v25 = v18[1];
            *(v29 + 8) = i;
            *i = v29;
            *v18 = v26;
            *(v26 + 8) = v18;
            i = j;
          }

          else
          {
            v25 = v18[1];
          }

          v30 = v25 == v23 || i == a2;
          v18 = v25;
        }

        while (!v30);
      }
    }
  }

  return v4;
}

void sub_29AEB99AC()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A209A450, 0, "HDX_DEBUG_DUMP_SHADOW_TEXTURES", 0);
  v0 = sub_29AEB9AA8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "HDX_DEBUG_DUMP_SHADOW_TEXTURES", "Output shadow textures to image files");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A209A450, 1, "HDX_DISABLE_ALPHA_TO_COVERAGE", 0);
  v1 = sub_29AEB9AA8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v1 + 4, "HDX_DISABLE_ALPHA_TO_COVERAGE", "Disable alpha to coverage transpancy");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A209A450, 2, "HDX_INTERSECT", 0);
  v2 = sub_29AEB9AA8();
  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v2 + 8, "HDX_INTERSECT", "Output debug info of intersector");
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A209A450, 3, "HDX_SELECTION_SETUP", 0);
  v3 = sub_29AEB9AA8() + 12;

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v3, "HDX_SELECTION_SETUP", "Output debug info during creation of selection buffer");
}

uint64_t sub_29AEB9AA8()
{
  if ((atomic_load_explicit(&qword_2A14F9E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9E60))
  {
    v1 = operator new(0x10uLL);
    *v1 = 0;
    v1[1] = 0;
    qword_2A14F9E58 = v1;
    __cxa_guard_release(&qword_2A14F9E60);
  }

  return qword_2A14F9E58;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::Hdx_UnitTestDelegate(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, pxrInternal__aapl__pxrReserved__::HdRenderIndex *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v3 = pxrInternal__aapl__pxrReserved__::HdSceneDelegate::HdSceneDelegate(this, a2, a3);
  *v3 = &unk_2A209A470;
  *(v3 + 4) = 0;
  *(v3 + 3) = v3 + 32;
  *(v3 + 5) = 0;
  *(v3 + 7) = 0;
  *(v3 + 6) = v3 + 56;
  *(v3 + 10) = 0;
  *(v3 + 8) = 0;
  *(v3 + 9) = v3 + 80;
  *(v3 + 11) = 0;
  *(v3 + 13) = 0;
  *(v3 + 12) = v3 + 104;
  *(v3 + 14) = 0;
  *(v3 + 16) = 0;
  *(v3 + 15) = v3 + 128;
  *(v3 + 17) = 0;
  *(v3 + 20) = 0;
  *(v3 + 19) = 0;
  *(v3 + 14) = 0u;
  v4 = v3 + 224;
  *(v3 + 18) = v3 + 152;
  *(v3 + 23) = 0;
  *(v3 + 22) = v3 + 184;
  *(v3 + 42) = 0;
  *(v3 + 24) = 0;
  *(v3 + 26) = 0;
  *(v3 + 25) = v3 + 208;
  *(v3 + 27) = 0;
  *(v3 + 15) = 0u;
  *(v3 + 64) = 1065353216;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(v3 + 66);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v4 + 11);
  sub_29A008E78(&v6, "/camera");
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(v5, &v6);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

void sub_29AEB9D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum((v18 - 216));
  sub_29A1DCEA8((v16 + 40));
  sub_29AEC007C(v16);
  sub_29A1EF938(v17, *(v9 + 26));
  sub_29A1EF938(v15, *(v9 + 23));
  sub_29AEC0A9C(v14, *(v9 + 19));
  sub_29AEC0A00(v13, *(v9 + 16));
  sub_29A447324(v12, *(v9 + 13));
  sub_29AD0392C(v11, *(v9 + 10));
  sub_29AEC0928(v10, *(v9 + 7));
  sub_29AEC0884(a9, *(v9 + 4));
  pxrInternal__aapl__pxrReserved__::HdSceneDelegate::~HdSceneDelegate(v9);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetRefineLevel(void *this, int a2)
{
  v3 = this;
  *(this + 42) = a2;
  v4 = this[3];
  v5 = this + 4;
  v10 = v4;
  v11 = this + 4;
  while (v4 != v5)
  {
    v6 = *(v3 + 8);
    v7 = sub_29AEB9EC8(&v10);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((v6 + 440), (*v7 + 32), 16);
    this = sub_29AEB9F00(&v10);
    v4 = v10;
    v5 = v11;
  }

  v8 = *(v3 + 96);
  v9 = v3 + 104;
  v10 = v8;
  v11 = (v3 + 104);
  while (v8 != v9)
  {
    *(*sub_29ACF5400(&v10) + 36) = a2;
    this = sub_29ACF5438(&v10);
    v8 = v10;
    v9 = v11;
  }

  return this;
}

void *sub_29AEB9EC8(void *result)
{
  if (*result == result[1])
  {
    sub_29B2CB620();
  }

  return result;
}

void *sub_29AEB9F00(void *a1)
{
  v2 = *a1;
  if (*a1 == a1[1])
  {
    v7[0] = "tf/iterator.h";
    v7[1] = "operator++";
    v7[2] = 233;
    v7[3] = "TfIterator<T, Reverse> &pxrInternal__aapl__pxrReserved__::TfIterator<std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::_Mesh>>::operator++() [T = std::map<pxrInternal__aapl__pxrReserved__::SdfPath, pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::_Mesh>, Reverse = false]";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "iterator exhausted");
  }

  else
  {
    v3 = v2[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = *v3;
      }

      while (v3);
    }

    else
    {
      do
      {
        v4 = v2[2];
        v5 = *v4 == v2;
        v2 = v4;
      }

      while (!v5);
    }

    *a1 = v4;
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetCamera(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a4)
{
  v10 = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(&v9, 1.0);
  v4 = 0x497424003F800000;
  __p = 0;
  v7 = 0;
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::GfCamera::GfCamera(v5, &v9, 0, &v4, 20.955, 15.2908, 0.0, 0.0, 50.0);
}

void sub_29AEBA4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddCamera(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v11[2] = *MEMORY[0x29EDCA608];
  v4 = *(this + 1);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(v4, (v5 + 136), this, a2);
  v11[0] = a2;
  v6 = sub_29AEC0BF4(this + 224, a2, &unk_29B4D6118, v11);
  v11[1] = (&off_2A2078C98 + 3);
  LODWORD(v11[0]) = 2;
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  if (!v7)
  {
    v7 = sub_29ABC9BE0(&pxrInternal__aapl__pxrReserved__::HdCameraTokens);
  }

  v10 = (v7 + 184);
  v8 = sub_29AC1E77C((v6 + 3), v7 + 23, &unk_29B4D6118, &v10);
  sub_29A18606C(v8 + 3, v11);
  return sub_29A186B14(v11);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::UpdateCamera(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v10 = a2;
  v8 = sub_29AEC0BF4(a1 + 224, a2, &unk_29B4D6118, &v10);
  v10 = a3;
  v9 = sub_29AC1E77C((v8 + 3), a3, &unk_29B4D6118, &v10);
  sub_29A1854E8(v9 + 3, a4);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty((*(a1 + 8) + 440), a2, 15);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddLight(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GlfSimpleLight *a3)
{
  v6 = *(this + 1);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(v6, (v7 + 280), this, a2);
  *&v14[0] = a2;
  v8 = sub_29AEC0BF4(this + 224, a2, &unk_29B4D6118, v14);
  v15 = 0u;
  memset(v16, 0, 21);
  BYTE4(v16[1]) = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::HasShadow(a3);
  LODWORD(v16[1]) = 512;
  v9 = operator new(0x88uLL);
  sub_29AEBAAF8(v9, a3);
  sub_29AEBACA4(v14, v9);
  v10 = v14[0];
  v14[0] = 0uLL;
  v11 = *(&v15 + 1);
  v15 = v10;
  if (v11)
  {
    sub_29A014BEC(v11);
    if (*(&v14[0] + 1))
    {
      sub_29A014BEC(*(&v14[0] + 1));
    }
  }

  v16[0] = xmmword_29B712FA0;
  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v12)
  {
    v12 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  *&v14[0] = v12 + 240;
  v13 = sub_29AC1E77C((v8 + 3), v12 + 30, &unk_29B4D6118, v14);
  sub_29AE62178((v13 + 3), a3);
}

void sub_29AEBAA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = *(v13 - 104);
  if (v15)
  {
    sub_29A014BEC(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEBAAF8(uint64_t a1, pxrInternal__aapl__pxrReserved__::GlfSimpleLight *a2)
{
  *a1 = &unk_2A209A648;
  pxrInternal__aapl__pxrReserved__::GfFrustum::GfFrustum(v37);
  v43 = 0;
  pxrInternal__aapl__pxrReserved__::GfFrustum::_DirtyFrustumPlanes(v4);
  __asm { FMOV            V0.2D, #-10.0 }

  v40 = _Q0;
  __asm { FMOV            V0.2D, #10.0 }

  v41 = _Q0;
  pxrInternal__aapl__pxrReserved__::GfFrustum::_DirtyFrustumPlanes(v37);
  v42 = xmmword_29B4D9410;
  pxrInternal__aapl__pxrReserved__::GfFrustum::_DirtyFrustumPlanes(v37);
  Position = pxrInternal__aapl__pxrReserved__::GlfSimpleLight::GetPosition(a2);
  v12 = *Position;
  v13 = *(Position + 8);
  v37[0] = 0;
  v37[1] = 0;
  v37[2] = 0x4024000000000000;
  pxrInternal__aapl__pxrReserved__::GfFrustum::_DirtyFrustumPlanes(v37);
  v21 = 0uLL;
  *&v22 = 0x3FF0000000000000;
  v19 = vcvtq_f64_f32(v12);
  v20 = v13;
  pxrInternal__aapl__pxrReserved__::GfRotation::SetRotateInto(&v29, v21.f64, v19.f64);
  v38 = v29;
  v39 = v30;
  pxrInternal__aapl__pxrReserved__::GfFrustum::_DirtyFrustumPlanes(v37);
  pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeViewMatrix(v37, &v21);
  pxrInternal__aapl__pxrReserved__::GfFrustum::ComputeProjectionMatrix(v37, &v19);
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  pxrInternal__aapl__pxrReserved__::GfMatrix4d::operator*=(v29.f64, v19.f64);
  v14 = v34;
  *(a1 + 72) = v33;
  *(a1 + 88) = v14;
  v15 = v36;
  *(a1 + 104) = v35;
  *(a1 + 120) = v15;
  v16 = v30;
  *(a1 + 8) = v29;
  *(a1 + 24) = v16;
  v17 = v32;
  *(a1 + 40) = v31;
  *(a1 + 56) = v17;
  pxrInternal__aapl__pxrReserved__::GfFrustum::~GfFrustum(v37);
  return a1;
}

void *sub_29AEBACA4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A209A6A0;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AEBACFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_29B2CB66C(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AEBAD14(void *a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A209A708;
  sub_29AEC1190(a1, a2);
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AEBADA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetLight(uint64_t a1, uint64_t *a2, uint64_t *a3, pxrInternal__aapl__pxrReserved__::VtValue *a4)
{
  v17[0] = a2;
  v8 = sub_29AEC0BF4(a1 + 224, a2, &unk_29B4D6118, v17);
  v17[0] = a3;
  v9 = sub_29AC1E77C((v8 + 3), a3, &unk_29B4D6118, v17);
  sub_29A1854E8(v9 + 3, a4);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v10)
  {
    v10 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  if ((*(v10 + 30) ^ *a3) <= 7)
  {
    v11 = sub_29AE61430(a4);
    sub_29AB82270(v17, v11);
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v12 + 80) ^ *a3) <= 7)
  {
    v13 = (*(a1 + 8) + 440);
    v14 = a2;
    v15 = 1;
LABEL_13:
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty(v13, v14, v15);
    return;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  if (!v16)
  {
    v16 = sub_29ABFED74(&pxrInternal__aapl__pxrReserved__::HdLightTokens);
  }

  if ((*(v16 + 31) ^ *a3) <= 7)
  {
    v13 = (*(a1 + 8) + 440);
    v14 = a2;
    v15 = 8;
    goto LABEL_13;
  }
}

void sub_29AEBB068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  operator delete(v18);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  pxrInternal__aapl__pxrReserved__::GlfSimpleLight::~GlfSimpleLight(&a17);
  _Unwind_Resume(a1);
}

void **sub_29AEBB0AC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_29AEC11F8(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::VtValue::_FailGet(a1, sub_29AEC1284, &stru_2A209A7C0);
  }
}

uint64_t *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::RemoveLight(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v4 = *(this + 1);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::RemoveSprim(v4, (v5 + 280), a2);

  return sub_29AEC131C(this + 28, a2);
}

__n128 pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::UpdateTransform(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a3)
{
  if (this + 4 != sub_29A55CDFC((this + 3)))
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(&v21, a3);
    v29 = a2;
    v6 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v29);
    v7 = v26;
    v9 = v27;
    v8 = v28;
    *(v6 + 15) = v25;
    *(v6 + 17) = v7;
    *(v6 + 19) = v9;
    *(v6 + 21) = v8;
    v10 = v22;
    v12 = v23;
    v11 = v24;
    *(v6 + 7) = v21;
    *(v6 + 9) = v10;
    *(v6 + 11) = v12;
    *(v6 + 13) = v11;
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2, 512);
  }

  if (this + 19 != sub_29A55CDFC((this + 18)))
  {
    pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(&v21, a3);
    v29 = a2;
    v14 = sub_29AEC0B38(this + 18, a2, &unk_29B4D6118, &v29);
    v16 = v23;
    v15 = v24;
    v17 = v22;
    *(v14 + 40) = v21;
    v19 = v27;
    v18 = v28;
    v20 = v26;
    *(v14 + 104) = v25;
    *(v14 + 120) = v20;
    *(v14 + 136) = v19;
    *(v14 + 152) = v18;
    *(v14 + 56) = v17;
    *(v14 + 72) = v16;
    *(v14 + 88) = v15;
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty((this[1] + 55), a2, 512);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddRenderBuffer(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, uint64_t a3)
{
  v6 = *(a1 + 1);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertBprim(v6, (v7 + 312), a1, a2);
  v12 = a2;
  v8 = sub_29AEC0BF4(a1 + 224, a2, &unk_29B4D6118, &v12);
  v9 = atomic_load(&qword_2A174F8D8);
  if (!v9)
  {
    v9 = sub_29AEC14F4();
  }

  v12 = v9;
  v10 = sub_29AC1E77C((v8 + 3), v9, &unk_29B4D6118, &v12);
  return sub_29AEBB3D4(v10 + 3, a3);
}

void *sub_29AEBB3D4(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  sub_29A186978(v6, a1);
  a1[1] = &off_2A209A7D0;
  v4 = operator new(0x18uLL);
  *v4 = *a2;
  v4[4] = *(a2 + 16);
  atomic_store(0, v4 + 5);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 5, 1u, memory_order_relaxed);
  if (v7)
  {
    (*(v7 + 32))(v6);
  }

  return a1;
}

void sub_29AEBB488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::UpdateRenderBuffer(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(a1 + 224, a2, &unk_29B4D6118, &v9);
  v7 = atomic_load(&qword_2A174F8D8);
  if (!v7)
  {
    v7 = sub_29AEC14F4();
  }

  v9 = v7;
  v8 = sub_29AC1E77C((v6 + 3), v7, &unk_29B4D6118, &v9);
  sub_29AEBB3D4(v8 + 3, a3);
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkBprimDirty((*(a1 + 8) + 440), a2, 1);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddDrawTarget(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v20[2] = *MEMORY[0x29EDCA608];
  v4 = *(this + 1);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v5)
  {
    v5 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(v4, (v5 + 144), this, a2);
  v12[0] = a2;
  sub_29AEC0BF4(this + 224, a2, &unk_29B4D6118, v12);
  memset(v10, 0, sizeof(v10));
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(&v11, "color");
  pxrInternal__aapl__pxrReserved__::SdfPath::AppendProperty(a2, &v11, &v9);
  v7 = xmmword_29B712FB0;
  LOBYTE(v8) = 1;
  pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddRenderBuffer(this, &v9, &v7);
  v12[0] = 0;
  v12[1] = 0;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(&v13);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(&v14);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v19 = 1065353216;
  sub_29A166F2C(v12, &v11);
  sub_29A2258F0(&v13, &v9);
  sub_29A225948(&v14, &v9 + 1);
  v20[1] = &off_2A2042A68 + 2;
  v6 = operator new(0x14uLL);
  *v6 = xmmword_29B712FC0;
  atomic_store(0, v6 + 4);
  v20[0] = v6;
  atomic_fetch_add_explicit(v6 + 4, 1u, memory_order_relaxed);
  sub_29A18606C(&v15, v20);
  sub_29A186B14(v20);
  sub_29AEBBD78(v10, v12);
}

void sub_29AEBBC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19)
{
  a19 = &a14;
  sub_29AC943DC(&a19);
  _Unwind_Resume(a1);
}

void sub_29AEBBD78(void *a1, uint64_t *a2)
{
  if (a1[1] < a1[2])
  {
    sub_29AE9CD44(a1, a1[1], a2);
  }

  sub_29AEC18B4(a1, a2);
}

uint64_t sub_29AEBBDD8(uint64_t a1)
{
  sub_29AC1E22C(a1 + 40);
  sub_29A186B14(a1 + 24);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetDrawTarget(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v17 = a2;
  v8 = sub_29AEC0BF4(a1 + 224, a2, &unk_29B4D6118, &v17);
  v17 = a3;
  v9 = sub_29AC1E77C((v8 + 3), a3, &unk_29B4D6118, &v17);
  sub_29A1854E8(v9 + 3, a4);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  if (!v10)
  {
    v10 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  }

  if ((*(v10 + 2) ^ *a3) < 8)
  {
    v11 = 1;
LABEL_25:
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkSprimDirty((*(a1 + 8) + 440), a2, v11);
    return;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  if (!v12)
  {
    v12 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  }

  if ((*v12 ^ *a3) < 8)
  {
    v11 = 2;
    goto LABEL_25;
  }

  v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  if (!v13)
  {
    v13 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  }

  if ((*(v13 + 3) ^ *a3) < 8)
  {
    v11 = 4;
    goto LABEL_25;
  }

  v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  if (!v14)
  {
    v14 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  }

  if ((*(v14 + 4) ^ *a3) < 8)
  {
    v11 = 16;
    goto LABEL_25;
  }

  v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  if (!v15)
  {
    v15 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  }

  if ((*(v15 + 5) ^ *a3) < 8)
  {
    v11 = 64;
    goto LABEL_25;
  }

  v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  if (!v16)
  {
    v16 = sub_29AE49338(&pxrInternal__aapl__pxrReserved__::HdStDrawTargetTokens);
  }

  if ((*(v16 + 1) ^ *a3) <= 7)
  {
    v11 = 128;
    goto LABEL_25;
  }
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddRenderTask(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AEBC29C(this[1], this, a2);
  v17[0] = a2;
  v4 = sub_29AEC0BF4((this + 28), a2, &unk_29B4D6118, v17);
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  if (!v6)
  {
    v6 = sub_29AC91284(&pxrInternal__aapl__pxrReserved__::HdReprTokens);
  }

  v7 = *(v6 + 3);
  v14 = v7;
  if ((v7 & 7) != 0)
  {
    v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v8;
    }
  }

  v15 = 0;
  v16 = 0;
  v13 = 0;
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::HdRprimCollection(v17, (v5 + 288), &v14, 0, &v13);
  v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v9)
  {
    v9 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v18 = (v9 + 96);
  v10 = sub_29AC1E77C((v4 + 3), v9 + 12, &unk_29B4D6118, &v18);
  sub_29AE622B8((v10 + 3), v17);
  pxrInternal__aapl__pxrReserved__::HdRprimCollection::~HdRprimCollection(v17);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  memset(v17, 0, 24);
  v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v11)
  {
    v11 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v18 = (v11 + 560);
  v12 = sub_29AC1E77C((v4 + 3), v11 + 70, &unk_29B4D6118, &v18);
  sub_29A34A3E4((v12 + 3));
}

void sub_29AEBC208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if ((a10 & 7) != 0)
  {
    atomic_fetch_add_explicit((a10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a13 & 7) != 0)
  {
    atomic_fetch_add_explicit((a13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a12 & 7) != 0)
  {
    atomic_fetch_add_explicit((a12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((a11 & 7) != 0)
  {
    atomic_fetch_add_explicit((a11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEBC29C(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209A960;
  v6[3] = &unk_2A209A9B0;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEBC340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddRenderSetupTask(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v10[2] = *MEMORY[0x29EDCA608];
  sub_29AEBC500(this[1], this, a2);
  *&v4[0] = a2;
  sub_29AEC0BF4((this + 28), a2, &unk_29B4D6118, v4);
  sub_29AEC0310(v4);
  sub_29A2258F0(&v5, this + 66);
  sub_29A225948(v6, this + 67);
  v7 = 0;
  v8 = 0;
  v9 = vdupq_n_s64(0x4080000000000000uLL);
  v10[1] = &off_2A209AB10;
  sub_29AEC2674(v10, v4);
}

void sub_29AEBC4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEBC500(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209AA40;
  v6[3] = &unk_2A209AA90;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEBC5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEBC5BC(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 248));
  sub_29A1DE3A4((a1 + 244));
  v3 = (a1 + 128);
  sub_29AC943DC(&v3);
  v3 = (a1 + 104);
  sub_29AC943DC(&v3);
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddSimpleLightTask(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v7[2] = *MEMORY[0x29EDCA608];
  sub_29AEBC7CC(this[1], this, a2);
  *v4 = a2;
  sub_29AEC0BF4((this + 28), a2, &unk_29B4D6118, v4);
  sub_29AEC0468(v4);
  sub_29A2258F0(v4, this + 66);
  sub_29A225948(&v4[1], this + 67);
  v6 = xmmword_29B712FE0;
  v5 = 1;
  v7[1] = &off_2A209ACB8;
  sub_29AEC2CC4(v7, v4);
}

void sub_29AEBC790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEBC7CC(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209ABE8;
  v6[3] = &unk_2A209AC38;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEBC870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_29AEBC888(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::~GlfSimpleMaterial((a1 + 120));
  v3 = (a1 + 32);
  sub_29A1E234C(&v3);
  v3 = (a1 + 8);
  sub_29A1E234C(&v3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 4));
  return sub_29A1DE3A4(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddShadowTask(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v10[2] = *MEMORY[0x29EDCA608];
  sub_29AEBCA40(this[1], this, a2);
  v10[0] = a2;
  v4 = sub_29AEC0BF4((this + 28), a2, &unk_29B4D6118, v10);
  v10[1] = &off_2A209AE60;
  v5 = operator new(0x40uLL);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 16) = 256;
  *(v5 + 9) = 0;
  v5[40] = 0;
  *(v5 + 44) = 0x3F80000000000000;
  *(v5 + 52) = 0x400000003;
  atomic_store(0, v5 + 15);
  v10[0] = v5;
  atomic_fetch_add_explicit(v5 + 15, 1u, memory_order_relaxed);
  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v6)
  {
    v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v9 = (v6 + 440);
  v7 = sub_29AC1E77C((v4 + 3), v6 + 55, &unk_29B4D6118, &v9);
  sub_29A18606C(v7 + 3, v10);
  return sub_29A186B14(v10);
}

void sub_29AEBCA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void sub_29AEBCA40(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209AD90;
  v6[3] = &unk_2A209ADE0;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEBCAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AEBCB0C(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209AF38;
  v6[3] = &unk_2A209AF88;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEBCBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddDrawTargetTask(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AEBCCAC(this[1], this, a2);
  *&v8[0] = a2;
  v4 = sub_29AEC0BF4((this + 28), a2, &unk_29B4D6118, v8);
  v10 = 0;
  memset(v8, 0, sizeof(v8));
  v11 = 1;
  v12 = 0x3F80000000000000;
  v13 = 3;
  v14 = 1;
  v15 = 4;
  v9 = 1;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v16 = (v5 + 440);
  v6 = sub_29AC1E77C((v4 + 3), v5 + 55, &unk_29B4D6118, &v16);
  return sub_29AEBCD68(v6 + 3, v8);
}

void sub_29AEBCCAC(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209B018;
  v6[3] = &unk_2A209B068;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEBCD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AEBCD68(void *a1, _OWORD *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  sub_29A186978(v8, a1);
  a1[1] = &off_2A209B0E8;
  v4 = operator new(0x44uLL);
  v5 = a2[1];
  *v4 = *a2;
  *(v4 + 1) = v5;
  v6 = a2[3];
  *(v4 + 2) = a2[2];
  *(v4 + 3) = v6;
  atomic_store(0, v4 + 16);
  *a1 = v4;
  atomic_fetch_add_explicit(v4 + 16, 1u, memory_order_relaxed);
  if (v9)
  {
    (*(v9 + 32))(v8);
  }

  return a1;
}

void sub_29AEBCE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddPickTask(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  sub_29AEBCF88(this[1], this, a2);
  v9[0] = a2;
  v4 = sub_29AEC0BF4((this + 28), a2, &unk_29B4D6118, v9);
  LODWORD(v10) = 1;
  BYTE4(v10) = 1;
  v5 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v5)
  {
    v5 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v9[0] = (v5 + 440);
  v6 = sub_29AC1E77C((v4 + 3), v5 + 55, &unk_29B4D6118, v9);
  sub_29AEBD044(v6 + 3, &v10);
  memset(v9, 0, sizeof(v9));
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v7)
  {
    v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  v11 = (v7 + 560);
  v8 = sub_29AC1E77C((v4 + 3), v7 + 70, &unk_29B4D6118, &v11);
  sub_29A34A3E4((v8 + 3));
}

void sub_29AEBCF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 - 24) = &a10;
  sub_29A124AB0((v10 - 24));
  _Unwind_Resume(a1);
}

void sub_29AEBCF88(uint64_t *a1, unint64_t a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2A209B1C0;
  v6[3] = &unk_2A209B210;
  *&v7 = v6 + 3;
  *(&v7 + 1) = v6;
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::_InsertSceneDelegateTask(a1, a2, a3, &v7);
  if (*(&v7 + 1))
  {
    sub_29A014BEC(*(&v7 + 1));
  }
}

void sub_29AEBD02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_29A014BEC(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AEBD044(void *a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29A186978(v5, a1);
  a1[1] = &off_2A209B290 + 1;
  *a1 = *a2;
  if (v6)
  {
    (*(v6 + 32))(v5);
  }

  return a1;
}

void sub_29AEBD0D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetTaskParam(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v13 = a2;
  v8 = sub_29AEC0BF4(a1 + 224, a2, &unk_29B4D6118, &v13);
  v13 = a3;
  v9 = sub_29AC1E77C((v8 + 3), a3, &unk_29B4D6118, &v13);
  sub_29A1854E8(v9 + 3, a4);
  v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v10)
  {
    v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v10 + 12) ^ *a3) < 8)
  {
    v11 = 8;
LABEL_9:
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkTaskDirty((*(a1 + 8) + 440), a2, v11);
    return;
  }

  v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v12)
  {
    v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  if ((*(v12 + 55) ^ *a3) <= 7)
  {
    v11 = 4;
    goto LABEL_9;
  }
}

void *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetTaskParam@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v9 = a2;
  v6 = sub_29AEC0BF4(this + 224, a2, &unk_29B4D6118, &v9);
  v9 = a3;
  v7 = sub_29AC1E77C((v6 + 3), a3, &unk_29B4D6118, &v9);
  return sub_29A186EF4(a4, v7 + 3);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddInstancer(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3, const pxrInternal__aapl__pxrReserved__::GfMatrix4f *a4)
{
  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertInstancer(*(this + 1), this, a2);
  v11 = 0uLL;
  v12 = 0;
  memset(v10, 0, 160);
  v13 = a2;
  v6 = sub_29AD04230(this + 6, a2, &unk_29B4D6118, &v13);
  if (v6 + 5 != v10)
  {
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  v8 = v10[12];
  v7 = v10[13];
  v9 = v10[11];
  *(v6 + 25) = v10[10];
  *(v6 + 27) = v9;
  *(v6 + 29) = v8;
  *(v6 + 31) = v7;
  sub_29A1E23D4(v6 + 33);
  *(v6 + 33) = v11;
  v6[35] = v12;
  v12 = 0;
  v11 = 0uLL;
  v13 = &v11;
  sub_29A1E234C(&v13);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AEBD504(uint64_t a1)
{
  v1 = (a1 + 224);
  sub_29A1E234C(&v1);
  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetInstancerProperties(uint64_t a1, _DWORD *a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  v12 = *a3;
  if (*a3 != *a4)
  {
    v22[0] = "hdx/unitTestDelegate.cpp";
    v22[1] = "SetInstancerProperties";
    v22[2] = 512;
    v22[3] = "void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetInstancerProperties(const SdfPath &, const VtIntArray &, const VtVec3fArray &, const VtVec4fArray &, const VtVec3fArray &)";
    v23 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v22, "prototypeIndex.size() == scale.size()", 0);
    if (!result)
    {
      return result;
    }

    v12 = *a3;
  }

  if (v12 != *a5)
  {
    v20[0] = "hdx/unitTestDelegate.cpp";
    v20[1] = "SetInstancerProperties";
    v20[2] = 513;
    v20[3] = "void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetInstancerProperties(const SdfPath &, const VtIntArray &, const VtVec3fArray &, const VtVec4fArray &, const VtVec3fArray &)";
    v21 = 0;
    result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v20, "prototypeIndex.size() == rotate.size()", 0);
    if (!result)
    {
      return result;
    }

    v12 = *a3;
  }

  if (v12 == *a6 || (v18[0] = "hdx/unitTestDelegate.cpp", v18[1] = "SetInstancerProperties", v18[2] = 514, v18[3] = "void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetInstancerProperties(const SdfPath &, const VtIntArray &, const VtVec3fArray &, const VtVec4fArray &, const VtVec3fArray &)", v19 = 0, result = pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v18, "prototypeIndex.size() == translate.size()", 0), (result & 1) != 0))
  {
    v22[0] = a2;
    v13 = sub_29AD04230((a1 + 48), a2, &unk_29B4D6118, v22);
    sub_29A4ADDE0((v13 + 5), a4);
    v22[0] = a2;
    v14 = sub_29AD04230((a1 + 48), a2, &unk_29B4D6118, v22);
    sub_29A4AE538(v14 + 5, a5);
    v22[0] = a2;
    v15 = sub_29AD04230((a1 + 48), a2, &unk_29B4D6118, v22);
    sub_29A4ADDE0((v15 + 15), a6);
    v22[0] = a2;
    v16 = sub_29AD04230((a1 + 48), a2, &unk_29B4D6118, v22);
    return sub_29A27CF04(v16 + 10, a3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, int a8, uint64_t *a9, uint64_t *a10, char a11)
{
  v35[69] = *MEMORY[0x29EDCA608];
  v18 = *(a1 + 1);
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v19)
  {
    v19 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(v18, (v19 + 56), a1, a2);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v34[1] = &off_2A2042840 + 2;
  v20 = operator new(0x10uLL);
  __asm { FMOV            V0.2S, #1.0 }

  *v20 = _D0;
  v20[2] = 0;
  atomic_store(0, v20 + 3);
  atomic_fetch_add_explicit(v20 + 3, 1u, memory_order_relaxed);
  v33[1] = &unk_2A2044C63;
  v34[0] = v20;
  LODWORD(v33[0]) = 1065353216;
  sub_29AEC053C(v35, a9, a10, a3, a4, a5, a6, v30, v34, 0, v33, 0, a7, a11);
  v32 = a2;
  v29 = sub_29AEC13B0(a1 + 3, a2, &unk_29B4D6118, &v32);
  sub_29AEBD9F8((v29 + 5), v35);
  sub_29AEC0710(v35);
}

void sub_29AEBD9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, char a47, uint64_t a48, char a49)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEBD9F8(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    if ((*a1 & 7) != 0)
    {
      atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *a1 = *a2;
    *a2 = 0;
    v4 = *(a1 + 8);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v7;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
    v8 = *(a2 + 80);
    v9 = *(a2 + 96);
    v10 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v10;
    *(a1 + 80) = v8;
    *(a1 + 96) = v9;
    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
  }

  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v13 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v13;
  *(a1 + 16) = v11;
  *(a1 + 32) = v12;
  v14 = *(a2 + 80);
  v15 = *(a2 + 96);
  v16 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v16;
  *(a1 + 80) = v14;
  *(a1 + 96) = v15;
  sub_29AD011F0((a1 + 264), (a2 + 264));
  sub_29A18606C((a1 + 496), (a2 + 496));
  *(a1 + 512) = *(a2 + 512);
  sub_29A18606C((a1 + 520), (a2 + 520));
  v17 = *(a2 + 540);
  *(a1 + 536) = *(a2 + 536);
  *(a1 + 540) = v17;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t *a7, void *a8, int a9, void *a10, int a11, char a12, uint64_t a13, uint64_t *a14, uint64_t *a15, char a16)
{
  v28[69] = *MEMORY[0x29EDCA608];
  v18 = *(a1 + 1);
  v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v19)
  {
    v19 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertRprim(v18, (v19 + 56), a1, a2);
  sub_29AEC053C(v28, a14, a15, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a16);
  v27 = a2;
  v20 = sub_29AEC13B0(a1 + 3, a2, &unk_29B4D6118, &v27);
  sub_29AEBD9F8((v20 + 5), v28);
  sub_29AEC0710(v28);
}

void sub_29AEBDD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_299FEDEEC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddCube(pxrInternal__aapl__pxrReserved__::HdSceneDelegate *a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2, __int128 *a3, char a4, uint64_t a5, uint64_t *a6, void *a7, int a8, void *a9, int a10)
{
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v18)
  {
    v18 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  if ((*(v18 + 8) ^ *a6) <= 7)
  {
    sub_29AEBE080(&unk_29B712FF0, 8, v38);
    sub_29AEBE114(&unk_29B713050, 12, v37);
    sub_29AEBE114(&unk_29B713080, 36, v36);
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v19)
    {
      v19 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(a1, a2, a3, v38, v37, v36, &v21, a7, a8, a9, a10, a4, a5, a6, v19 + 71, 0);
  }

  sub_29AEBE080(&unk_29B712FF0, 8, v38);
  sub_29AEBE114(&unk_29B713110, 6, v37);
  sub_29AEBE114(&unk_29B713128, 24, v36);
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v20)
  {
    v20 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(a1, a2, a3, v38, v37, v36, &v21, a7, a8, a9, a10, a4, a5, a6, v20 + 71, 0);
}

void *sub_29AEBE080@<X0>(const void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  sub_29A193124(a3, a2);
  result = sub_29A1935CC(a3);
  if (a2)
  {
    v8 = *(a3 + 32);

    return memmove(v8, a1, 12 * v6);
  }

  return result;
}

void *sub_29AEBE114@<X0>(const void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  sub_29A19D6E4(a3, a2);
  result = sub_29A19DBEC(a3);
  if (a2)
  {
    v8 = *(a3 + 32);

    return memmove(v8, a1, 4 * v6);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddGrid(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, BOOL a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5)
{
  v9 = 0;
  v37[2] = *MEMORY[0x29EDCA608];
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  do
  {
    for (i = 0; i != 22; i += 2)
    {
      v12 = i / 10.0 + -1.0;
      *v25 = v12;
      *&v11 = (2 * v9) / 10.0 + -1.0;
      *(v25 + 4) = v11;
      sub_29A8F3D60(v34, v25);
    }

    ++v9;
  }

  while (v9 != 11);
  v13 = 0;
  v14 = 11;
  do
  {
    v15 = 10;
    v16 = v14;
    do
    {
      LODWORD(v25[0]) = 4;
      sub_29A7ACA64(v32, v25);
      LODWORD(v25[0]) = v16 - 11;
      sub_29A7ACA64(v30, v25);
      LODWORD(v25[0]) = v16 - 10;
      sub_29A7ACA64(v30, v25);
      LODWORD(v25[0]) = v16 + 1;
      sub_29A7ACA64(v30, v25);
      LODWORD(v25[0]) = v16;
      sub_29A7ACA64(v30, v25);
      ++v16;
      --v15;
    }

    while (v15);
    ++v13;
    v14 += 11;
  }

  while (v13 != 10);
  sub_29A1935CC(v34);
  sub_29AEBE080(v35, v34[0], v29);
  sub_29A19DBEC(v32);
  sub_29AEBE114(v33, v32[0], v28);
  sub_29A19DBEC(v30);
  sub_29AEBE114(v31, v30[0], v27);
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  v37[1] = &off_2A2042840 + 2;
  v17 = operator new(0x10uLL);
  __asm { FMOV            V0.2S, #1.0 }

  *v17 = _D0;
  v17[2] = 0;
  atomic_store(0, v17 + 3);
  atomic_fetch_add_explicit(v17 + 3, 1u, memory_order_relaxed);
  v36[1] = &unk_2A2044C63;
  v37[0] = v17;
  LODWORD(v36[0]) = 1065353216;
  v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v23)
  {
    v23 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v24 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v24)
  {
    v24 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(this, a2, a3, v29, v28, v27, v25, v37, 0, v36, 0, 0, a5, v23 + 7, v24 + 71, 0);
}

void sub_29AEBE4CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddTet(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::GfMatrix4d *a3, char a4, const pxrInternal__aapl__pxrReserved__::SdfPath *a5, const pxrInternal__aapl__pxrReserved__::TfToken *a6)
{
  v25[2] = *MEMORY[0x29EDCA608];
  sub_29AEBE080(&unk_29B713188, 21, v23);
  sub_29AEBE114(&unk_29B713284, 24, v22);
  sub_29AEBE114(&unk_29B7132E4, 96, v21);
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v25[1] = &off_2A2042840 + 2;
  v12 = operator new(0x10uLL);
  __asm { FMOV            V0.2S, #1.0 }

  *v12 = _D0;
  v12[2] = 1065353216;
  atomic_store(0, v12 + 3);
  atomic_fetch_add_explicit(v12 + 3, 1u, memory_order_relaxed);
  v24[1] = &unk_2A2044C63;
  v25[0] = v12;
  LODWORD(v24[0]) = 1065353216;
  v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v18)
  {
    v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMesh(this, a2, a3, v23, v22, v21, v19, v25, 0, v24, 0, a4, a5, a6, v18 + 71, 0);
}

void sub_29AEBE74C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_299FEDEEC(exception_object);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetRefineLevel(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, int a3)
{
  v5 = a2;
  *(sub_29AD04BE4(this + 12, a2, &unk_29B4D6118, &v5) + 9) = a3;
  pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2, 16);
}

uint64_t **pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetReprSelector@<X0>(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, atomic_uint **a3@<X8>)
{
  result = sub_29A55CDFC((this + 3));
  if (this + 4 == result)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v9 = a2;
    result = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v9);
    v7 = result[73];
    *a3 = v7;
    if ((v7 & 7) != 0)
    {
      v8 = (v7 & 0xFFFFFFFFFFFFFFF8);
      if ((atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed) & 1) == 0)
      {
        *a3 = v8;
      }
    }

    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::SetReprName(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::TfToken *a3)
{
  if (this + 4 != sub_29A55CDFC((this + 3)))
  {
    v7 = a2;
    v6 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v7);
    sub_29A166F2C(v6 + 73, a3);
    pxrInternal__aapl__pxrReserved__::HdChangeTracker::MarkRprimDirty((this[1] + 55), a2, 0x40000);
  }
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetExtent(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  *(a3 + 16) = xmmword_29B43C5A0;
  *(a3 + 32) = vdupq_n_s64(0xC7EFFFFFE0000000);
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  if (this + 4 != sub_29A55CDFC((this + 3)))
  {
    *&v11.f64[0] = a2;
    v6 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v11);
    sub_29A4ADDE0(v15, (v6 + 23));
  }

  sub_29A1935CC(v15);
  v7 = v16;
  sub_29A1935CC(v15);
  v13 = v7;
  v14 = v16 + 12 * *&v15[0];
  while (v13 != v14)
  {
    v10 = sub_29A21D194(&v13, v8, v9);
    v11 = vcvtq_f64_f32(*v10);
    v12 = v10[1].f32[0];
    sub_29A87C7EC(a3, &v11);
    sub_29A21D214(&v13);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

char *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetTransform@<X0>(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, _OWORD *a3@<X8>)
{
  if (this + 4 != sub_29A55CDFC((this + 3)))
  {
    v17 = a2;
    result = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v17);
    v7 = *(result + 56);
    v8 = *(result + 72);
    v9 = *(result + 104);
    a3[2] = *(result + 88);
    a3[3] = v9;
    *a3 = v7;
    a3[1] = v8;
    v10 = *(result + 120);
    v11 = *(result + 136);
    v12 = *(result + 152);
    v13 = *(result + 168);
LABEL_5:
    a3[6] = v12;
    a3[7] = v13;
    a3[4] = v10;
    a3[5] = v11;
    return result;
  }

  if (this + 19 != sub_29A55CDFC((this + 18)))
  {
    v17 = a2;
    result = sub_29AEC0B38(this + 18, a2, &unk_29B4D6118, &v17);
    v14 = *(result + 40);
    v15 = *(result + 56);
    v16 = *(result + 88);
    a3[2] = *(result + 72);
    a3[3] = v16;
    *a3 = v14;
    a3[1] = v15;
    v10 = *(result + 104);
    v11 = *(result + 120);
    v12 = *(result + 136);
    v13 = *(result + 152);
    goto LABEL_5;
  }

  return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a3, 1.0);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetMeshTopology(uint64_t **this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(v9);
  v10 = a2;
  v6 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v10);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  if (!v7)
  {
    v7 = sub_29AB6F55C(&pxrInternal__aapl__pxrReserved__::PxOsdOpenSubdivTokens);
  }

  v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
  if (!v8)
  {
    v8 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdMeshTopology::HdMeshTopology(a3, v7 + 56, v8 + 568, v6 + 28, v6 + 33, 0);
  pxrInternal__aapl__pxrReserved__::HdMeshTopology::~HdMeshTopology(v9);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::Get@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v21[2] = *MEMORY[0x29EDCA608];
  v8 = sub_29A2F4F50(this + 28, a2);
  v21[1] = 0;
  if (!v8 || (v9 = sub_29A16039C(v8 + 3, a3)) == 0)
  {
    v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v10)
    {
      v10 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v10 + 59) ^ *a3) <= 7)
    {
      if ((this + 32) != sub_29A55CDFC(this + 24))
      {
        v20 = a2;
        v11 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v20) + 23;
LABEL_9:
        a4[1] = &off_2A20433C0;
        sub_29A18ECC8(a4, v11);
        return sub_29A186B14(v21);
      }

      goto LABEL_36;
    }

    v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v12)
    {
      v12 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    if ((*(v12 + 19) ^ *a3) > 7)
    {
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
      if (!v14)
      {
        v14 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
      }

      if ((*(v14 + 20) ^ *a3) > 7)
      {
        v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
        if (!v15)
        {
          v15 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
        }

        if ((*(v15 + 8) ^ *a3) > 7)
        {
          v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
          if (!v16)
          {
            v16 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
          }

          if ((*(v16 + 7) ^ *a3) > 7)
          {
            v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
            if (!v18)
            {
              v18 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
            }

            if ((*(v18 + 9) ^ *a3) <= 7 && (this + 56) != sub_29A55CDFC(this + 48))
            {
              v20 = a2;
              v11 = sub_29AD04230(this + 6, a2, &unk_29B4D6118, &v20) + 15;
              goto LABEL_9;
            }
          }

          else if ((this + 56) != sub_29A55CDFC(this + 48))
          {
            v20 = a2;
            v17 = sub_29AD04230(this + 6, a2, &unk_29B4D6118, &v20);
            a4[1] = &off_2A20435E8;
            sub_29A18ECC8(a4, (v17 + 10));
            return sub_29A186B14(v21);
          }
        }

        else if ((this + 56) != sub_29A55CDFC(this + 48))
        {
          v20 = a2;
          v11 = sub_29AD04230(this + 6, a2, &unk_29B4D6118, &v20) + 5;
          goto LABEL_9;
        }

LABEL_36:
        a4[1] = 0;
        return sub_29A186B14(v21);
      }

      if ((this + 32) == sub_29A55CDFC(this + 24))
      {
        goto LABEL_36;
      }

      v20 = a2;
      v13 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v20) + 70;
    }

    else
    {
      if ((this + 32) == sub_29A55CDFC(this + 24))
      {
        goto LABEL_36;
      }

      v20 = a2;
      v13 = sub_29AEC13B0(this + 3, a2, &unk_29B4D6118, &v20) + 67;
    }

    sub_29A186EF4(a4, v13);
    return sub_29A186B14(v21);
  }

  sub_29A1854E8(v21, v9 + 3);
  sub_29A186A3C(a4, v21);
  return sub_29A186B14(v21);
}

void sub_29AEBF050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetInstanceIndices(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X2>, uint64_t *a3@<X8>)
{
  sub_29A19D6E4(a3, 0);
  v7 = sub_29A55CDFC(this + 48);
  v8 = (this + 56) == v7;
  if ((this + 56) == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v7 + 5;
  }

  if (!v8)
  {
    v10 = v7[33];
    v11 = (v7[34] - v10) >> 3;
    v12 = 0;
    if (v7[34] != v10)
    {
      if (v11 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = (v7[34] - v10) >> 3;
      }

      while (*(v10 + 8 * v12) != *a2)
      {
        if (v13 == ++v12)
        {
          v12 = v13;
          break;
        }
      }
    }

    if (v12 != v11 && v9[15])
    {
      v14 = 0;
      do
      {
        sub_29A19DBEC((v9 + 15));
        if (v12 == *(v9[19] + 4 * v14))
        {
          v15 = v14;
          sub_29A7ACA64(a3, &v15);
        }

        ++v14;
      }

      while (v14 < v9[15]);
    }
  }
}

pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetInstancerPrototypes@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, void *a2@<X8>)
{
  result = sub_29A55CDFC(this + 48);
  if ((this + 56) != result)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;

    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetInstancerTransform@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, pxrInternal__aapl__pxrReserved__::GfMatrix4d *a2@<X8>)
{
  v5 = sub_29A55CDFC(this + 48);
  if ((this + 56) == v5)
  {

    return pxrInternal__aapl__pxrReserved__::GfMatrix4d::SetDiagonal(a2, 1.0);
  }

  else
  {

    return pxrInternal__aapl__pxrReserved__::GfMatrix4d::GfMatrix4d(a2, (v5 + 200));
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetDisplayStyle(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  if (this + 13 == sub_29A1EF6EC((this + 12)))
  {
    v4 = (this + 21);
  }

  else
  {
    v7 = a2;
    v4 = sub_29AD04BE4(this + 12, a2, &unk_29B4D6118, &v7) + 9;
  }

  sub_29AD01650(&v6, *v4, 0, 1, 0, 0, 0);
  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetPrimvarDescriptors@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v28 = a3;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (a3 == 3)
  {
    v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v7)
    {
      v7 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    if (!v8)
    {
      v8 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    }

    v9 = a4[1];
    if (v9 >= a4[2])
    {
      v10 = sub_29AD04E7C(a4, v7 + 59, &v28, v8 + 4);
    }

    else
    {
      sub_29ACCA394(a4[1], v7 + 59, v28, v8 + 4, 0);
      v10 = v9 + 32;
    }

    a4[1] = v10;
  }

  result = sub_29A55CDFC(a1 + 24);
  if (a1 + 32 == result)
  {
    goto LABEL_27;
  }

  v29[0] = a2;
  v12 = sub_29AEC13B0((a1 + 24), a2, &unk_29B4D6118, v29);
  if (*(v12 + 138) == v28)
  {
    v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v13)
    {
      v13 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    if (!v14)
    {
      v14 = sub_29AD033E0(&pxrInternal__aapl__pxrReserved__::HdPrimvarRoleTokens);
    }

    v15 = a4[1];
    if (v15 >= a4[2])
    {
      v16 = sub_29AD04E7C(a4, v13 + 19, &v28, v14 + 1);
    }

    else
    {
      sub_29ACCA394(a4[1], v13 + 19, v28, v14 + 1, 0);
      v16 = v15 + 32;
    }

    a4[1] = v16;
  }

  v29[0] = a2;
  result = sub_29AEC13B0((a1 + 24), a2, &unk_29B4D6118, v29);
  v17 = v28;
  if (*(result + 576) == v28)
  {
    v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v18)
    {
      v18 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    v19 = a4[1];
    if (v19 >= a4[2])
    {
      result = sub_29AD04FA4(a4, v18 + 20, &v28);
    }

    else
    {
      sub_29AD050C0(a4, a4[1], v18 + 20, &v28);
      result = v19 + 32;
    }

    a4[1] = result;
LABEL_27:
    v17 = v28;
  }

  if (v17 == 5)
  {
    result = sub_29A55CDFC(a1 + 48);
    if (a1 + 56 != result)
    {
      v20 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v20)
      {
        v20 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v21 = a4[1];
      if (v21 >= a4[2])
      {
        v22 = sub_29AD04FA4(a4, v20 + 8, &v28);
      }

      else
      {
        sub_29AD050C0(a4, a4[1], v20 + 8, &v28);
        v22 = v21 + 32;
      }

      a4[1] = v22;
      v23 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v23)
      {
        v23 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v24 = a4[1];
      if (v24 >= a4[2])
      {
        v25 = sub_29AD04FA4(a4, v23 + 7, &v28);
      }

      else
      {
        sub_29AD050C0(a4, a4[1], v23 + 7, &v28);
        v25 = v24 + 32;
      }

      a4[1] = v25;
      v26 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      if (!v26)
      {
        v26 = sub_29ABD4260(&pxrInternal__aapl__pxrReserved__::HdInstancerTokens);
      }

      v27 = a4[1];
      if (v27 >= a4[2])
      {
        result = sub_29AD04FA4(a4, v26 + 9, &v28);
      }

      else
      {
        sub_29AD050C0(a4, a4[1], v26 + 9, &v28);
        result = v27 + 32;
      }

      a4[1] = result;
    }
  }

  return result;
}

void sub_29AEBF674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  *(v12 + 8) = v13;
  a12 = v12;
  sub_29ABEE9FC(&a12);
  _Unwind_Resume(a1);
}

void *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::AddMaterialResource(uint64_t a1, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v7)
  {
    v7 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::InsertSprim(v6, (v7 + 152), a1, a2);
  v10 = a2;
  v8 = sub_29AD04B48((a1 + 72), a2, &unk_29B4D6118, &v10);
  return sub_29A1854E8(v8 + 5, a3);
}

int *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::BindMaterial(uint64_t **this, const pxrInternal__aapl__pxrReserved__::SdfPath *a2, const pxrInternal__aapl__pxrReserved__::SdfPath *a3)
{
  v6 = a2;
  v4 = sub_29A326108(this + 22, a2, &unk_29B4D6118, &v6);
  sub_29A2258F0(v4 + 9, a3);
  return sub_29A225948(v4 + 10, a3 + 1);
}

BOOL pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetMaterialId@<W0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  return sub_29AD04E1C(this + 176, a2, a3);
}

void *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetMaterialResource@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, void *a2@<X8>)
{
  result = sub_29A55CDFC(this + 72);
  if ((this + 80) == result)
  {
    a2[1] = 0;
  }

  else
  {

    return sub_29A186EF4(a2, result + 5);
  }

  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetInstancerId@<W0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, int *a3@<X8>)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a3);
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(a3 + 1);
  return sub_29AD04E1C(this + 200, a2, a3);
}

uint64_t pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetCameraParamValue@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, const pxrInternal__aapl__pxrReserved__::TfToken *a3@<X2>, void *a4@<X8>)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v6 = sub_29A2F4F50(this + 28, a2);
  v9[1] = 0;
  if (v6 && (v7 = sub_29A16039C(v6 + 3, a3)) != 0)
  {
    sub_29A1854E8(v9, v7 + 3);
    sub_29A186A3C(a4, v9);
  }

  else
  {
    a4[1] = 0;
  }

  return sub_29A186B14(v9);
}

void sub_29AEBF98C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

double pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetRenderBufferDescriptor@<D0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = sub_29A2F4F50(this + 28, a2);
  if (v4)
  {
    v5 = v4;
    v11 = 0;
    v6 = atomic_load(&qword_2A174F8D8);
    if (!v6)
    {
      v6 = sub_29AEC14F4();
    }

    v7 = sub_29A16039C(v5 + 3, v6);
    if (v7 && (sub_29A1854E8(&v10, v7 + 3), (sub_29AEBFAC0(&v10) & 1) != 0))
    {
      if ((v11 & 4) != 0)
      {
        v8 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 168))(&v10);
      }

      else
      {
        v8 = v10;
      }

      *a3 = *v8;
      *(a3 + 16) = *(v8 + 16);
    }

    else
    {
      *a3 = xmmword_29B6C2BB0;
      *(a3 + 16) = 0;
    }

    sub_29A186B14(&v10);
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_29B6C2BB0;
    *(a3 + 16) = 0;
  }

  return result;
}

void sub_29AEBFAAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29A186B14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEBFAC0(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (!strcmp((*(*(v1 & 0xFFFFFFFFFFFFFFF8) + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x800000029B71374CLL & 0x7FFFFFFFFFFFFFFFLL)))
  {
    return 1;
  }

  if ((v1 & 4) == 0)
  {
    return 0;
  }

  return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_2A209A888);
}

void *pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::GetTaskRenderTags@<X0>(pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate *this@<X0>, const pxrInternal__aapl__pxrReserved__::SdfPath *a2@<X1>, void *a3@<X8>)
{
  result = sub_29A2F4F50(this + 28, a2);
  if (result)
  {
    v5 = result;
    v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdTokens);
    if (!v6)
    {
      v6 = sub_29ABC26C8(&pxrInternal__aapl__pxrReserved__::HdTokens);
    }

    result = sub_29A160470((v5 + 24), v6 + 70);
    if (result)
    {
      sub_29A1DE690((result + 3));
      a3[1] = 0;
      a3[2] = 0;
      *a3 = 0;

      std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::Hdx_UnitTestDelegate::WriteRenderBufferToFile(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfPath *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  if (!v4)
  {
    v4 = sub_29ABED3B4(&pxrInternal__aapl__pxrReserved__::HdPrimTypeTokens);
  }

  pxrInternal__aapl__pxrReserved__::HdRenderIndex::GetBprim(v3, (v4 + 312), a2);
}

void sub_29AEBFFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a5)
  {
    sub_29A014BEC(a5);
  }

  sub_29A1847D4(va);
  _Unwind_Resume(a1);
}

void sub_29AEC0054(uint64_t a1)
{
  sub_29AEC07B8(a1);

  operator delete(v1);
}

uint64_t sub_29AEC007C(uint64_t a1)
{
  sub_29AEC00B8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_29AEC00B8(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_29AEC00FC(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

_DWORD *sub_29AEC00FC(_DWORD *a1)
{
  sub_29AC1E22C((a1 + 2));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(a1 + 1);

  return sub_29A1DE3A4(a1);
}

char *sub_29AEC0144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v8 + 1) = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 88);
  v7[4] = *(a1 + 72);
  v7[5] = v2;
  v3 = *(a1 + 120);
  v7[6] = *(a1 + 104);
  v7[7] = v3;
  v4 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = v4;
  v5 = *(a1 + 56);
  v7[2] = *(a1 + 40);
  v7[3] = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  return sub_29AEC027C(a2, v7, &v8, 1uLL);
}

char *sub_29AEC01DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v8 + 1) = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 88);
  v7[4] = *(a1 + 72);
  v7[5] = v2;
  v3 = *(a1 + 120);
  v7[6] = *(a1 + 104);
  v7[7] = v3;
  v4 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = v4;
  v5 = *(a1 + 56);
  v7[2] = *(a1 + 40);
  v7[3] = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  return sub_29AEC027C(a2, v7, &v8, 1uLL);
}

char *sub_29AEC027C(char *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A79C588(result, a4);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[3];
      v7[2] = a2[2];
      v7[3] = v10;
      *v7 = v8;
      v7[1] = v9;
      v11 = a2[4];
      v12 = a2[5];
      v13 = a2[7];
      v7[6] = a2[6];
      v7[7] = v13;
      v7[4] = v11;
      v7[5] = v12;
      a2 += 8;
      v7 += 8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29AEC02F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AEC0310(uint64_t a1)
{
  *(a1 + 28) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 44) = 0x404000003F800000;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 257;
  *(a1 + 62) = 1;
  *(a1 + 64) = xmmword_29B47CF20;
  *(a1 + 80) = xmmword_29B6DBB70;
  *(a1 + 96) = 1077936128;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1;
  *(a1 + 156) = 0x3F80000000000000;
  *(a1 + 164) = 3;
  *(a1 + 168) = 1;
  *(a1 + 172) = 7;
  *(a1 + 180) = -1;
  *(a1 + 189) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = xmmword_29B6DBBA0;
  *(a1 + 216) = 1;
  *(a1 + 233) = 0;
  *(a1 + 220) = 0;
  *(a1 + 228) = 0;
  *(a1 + 241) = 257;
  *(a1 + 243) = 1;
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle((a1 + 244));
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle((a1 + 248));
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming((a1 + 252));
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 4;
  *(a1 + 324) = 0;
  *(a1 + 328) = 0;
  return a1;
}

void sub_29AEC0434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  sub_29A1DCEA8((v10 + 244));
  a10 = (v10 + 128);
  sub_29AC943DC(&a10);
  a10 = v12;
  sub_29AC943DC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEC0468(uint64_t a1)
{
  *a1 = 0;
  v2 = (a1 + 8);
  v3 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle(a1);
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle(v3 + 1);
  v5 = pxrInternal__aapl__pxrReserved__::SdfPath::AbsoluteRootPath(v4);
  sub_29A34A4F0(v2, 1uLL, v5);
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  pxrInternal__aapl__pxrReserved__::CameraUtilFraming::CameraUtilFraming((a1 + 76));
  *(a1 + 112) = 0;
  *(a1 + 116) = 2;
  pxrInternal__aapl__pxrReserved__::GlfSimpleMaterial::GlfSimpleMaterial((a1 + 120));
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return a1;
}

void sub_29AEC0504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  sub_29A1E234C(&a10);
  sub_29A1E234C(&a10);
  sub_29A1DCEA8(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_29AEC053C(uint64_t a1, uint64_t *a2, uint64_t *a3, __int128 *a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t *a8, void *a9, int a10, void *a11, int a12, char a13, char a14)
{
  v15 = *a2;
  *a1 = *a2;
  if ((v15 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a1 &= 0xFFFFFFFFFFFFFFF8;
  }

  v16 = *a3;
  *(a1 + 8) = *a3;
  if ((v16 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a1 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v17 = *a4;
  v18 = a4[1];
  v19 = a4[3];
  *(a1 + 48) = a4[2];
  *(a1 + 64) = v19;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  v20 = a4[4];
  v21 = a4[5];
  v22 = a4[7];
  *(a1 + 112) = a4[6];
  *(a1 + 128) = v22;
  *(a1 + 80) = v20;
  *(a1 + 96) = v21;
  v23 = *(a5 + 16);
  *(a1 + 144) = *a5;
  *(a1 + 160) = v23;
  v24 = *(a5 + 32);
  *(a1 + 176) = v24;
  if (v24)
  {
    v25 = (v24 - 16);
    if (*(a1 + 168))
    {
      v25 = *(a1 + 168);
    }

    atomic_fetch_add_explicit(v25, 1uLL, memory_order_relaxed);
  }

  v26 = *a6;
  *(a1 + 200) = a6[1];
  *(a1 + 184) = v26;
  v27 = *(a6 + 4);
  *(a1 + 216) = v27;
  if (v27)
  {
    v28 = (v27 - 16);
    if (*(a1 + 208))
    {
      v28 = *(a1 + 208);
    }

    atomic_fetch_add_explicit(v28, 1uLL, memory_order_relaxed);
  }

  v29 = *(a7 + 16);
  *(a1 + 224) = *a7;
  *(a1 + 240) = v29;
  v30 = *(a7 + 32);
  *(a1 + 256) = v30;
  if (v30)
  {
    v31 = (v30 - 16);
    if (*(a1 + 248))
    {
      v31 = *(a1 + 248);
    }

    atomic_fetch_add_explicit(v31, 1uLL, memory_order_relaxed);
  }

  sub_29AB6F3BC(a1 + 264, a8);
  sub_29A186EF4((a1 + 496), a9);
  *(a1 + 512) = a10;
  sub_29A186EF4((a1 + 520), a11);
  *(a1 + 536) = a12;
  *(a1 + 540) = a13;
  *(a1 + 541) = a14;
  *(a1 + 544) = 0;
  return a1;
}