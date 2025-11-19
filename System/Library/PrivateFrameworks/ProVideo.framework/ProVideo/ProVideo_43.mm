void sub_25FD0CAF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (a37 < 0)
  {
    operator delete(__p);
    v49 = a47;
    if (!a47)
    {
LABEL_3:
      v50 = a44;
      if (!a44)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v49 = a47;
    if (!a47)
    {
      goto LABEL_3;
    }
  }

  operator delete(v49);
  v50 = a44;
  if (!a44)
  {
LABEL_4:
    v51 = a41;
    if (!a41)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(v50);
  v51 = a41;
  if (!a41)
  {
LABEL_5:
    v52 = a38;
    if (!a38)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(v51);
  v52 = a38;
  if (!a38)
  {
LABEL_6:
    v53 = *(v47 - 136);
    if (!v53)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v52);
  v53 = *(v47 - 136);
  if (!v53)
  {
LABEL_7:
    v54 = *(v47 - 160);
    if (!v54)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v53);
  v54 = *(v47 - 160);
  if (!v54)
  {
LABEL_8:
    v55 = *(v47 - 184);
    if (!v55)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v54);
  v55 = *(v47 - 184);
  if (!v55)
  {
LABEL_9:
    v56 = *(v47 - 208);
    if (!v56)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v55);
  v56 = *(v47 - 208);
  if (!v56)
  {
LABEL_10:
    _Unwind_Resume(exception_object);
  }

LABEL_19:
  operator delete(v56);
  _Unwind_Resume(exception_object);
}

uint64_t HGTW::HGTextureWrapRepeat::RenderTile(HGNode *this, HGTile *a2)
{
  v4 = *(a2 + 42);
  v5 = *(v4 + 152);
  Input = HGRenderer::GetInput(v5, this, 0);
  DOD = HGRenderer::GetDOD(v5, Input);
  v9 = v8;
  v10 = *a2;
  v11 = *(a2 + 1);
  HGTW::HGTextureWrapRepeat::_computeRoiSegments(this, DOD, v8, *a2, v11, &v40);
  HGTW::HGTextureWrapRepeat::_computeRoiSegments(this, DOD >> 32, v9 >> 32, v10 >> 32, v11 >> 32, &v39);
  v37 = v40;
  v38 = v39;
  HGExecutionUnit::CommitStack(v4, *(a2 + 2), *(a2 + 6) * (*(a2 + 3) - *(a2 + 1)));
  v12 = v38;
  if (v37 != *(&v37 + 1) && v38 != *(&v38 + 1))
  {
    for (i = v37; i != *(&v37 + 1); i += 5)
    {
      v16 = v38;
      do
      {
        v17 = HGRectMake4i(i[2], v16[2], i[3], v16[3]);
        *(a2 + 26) = v17;
        *(a2 + 27) = v18;
        *&v40 = 0;
        DWORD2(v40) = 0;
        HGRenderer::RenderInput(v5, v4, this, 0, &v40, v17, v18, 0);
        *(a2 + 5) = v40;
        if (*(i + 16) == 1)
        {
          v19 = i[2];
          v20 = 1;
          v12 = v38;
          v21 = *(a2 + 22);
          if (*(v16 + 16) == 1)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v19 = i[3] - 1;
          v20 = -1;
          v12 = v38;
          v21 = *(a2 + 22);
          if (*(v16 + 16) == 1)
          {
LABEL_19:
            v22 = v16[2];
            v23 = 1;
            v24 = v16[1];
            v25 = *v16;
            if (v25 >= v24)
            {
              goto LABEL_13;
            }

            goto LABEL_20;
          }
        }

        v22 = v16[3] - 1;
        v23 = -1;
        v24 = v16[1];
        v25 = *v16;
        if (v25 >= v24)
        {
          goto LABEL_13;
        }

LABEL_20:
        LODWORD(v26) = i[1];
        if (*i < v26)
        {
          v27 = *(a2 + 6);
          v28 = v22;
          v29 = 16 * (v25 - *(a2 + 1)) * v27 - 16 * *a2;
          v30 = 16 * v27;
          v31 = 16 * (v28 - *(a2 + 53)) * v21 + 16 * v19 - 16 * *(a2 + 52);
          v32 = 16 * v23 * v21;
          v33 = 16 * v20;
          do
          {
            v34 = *i;
            if (v34 < v26)
            {
              v35 = *(a2 + 2) + v29;
              v36 = (*(a2 + 10) + v31);
              do
              {
                *(v35 + 16 * v34++) = *v36;
                v26 = i[1];
                v36 = (v36 + v33);
              }

              while (v34 < v26);
              v24 = v16[1];
            }

            ++v25;
            v29 += v30;
            v31 += v32;
          }

          while (v25 < v24);
        }

LABEL_13:
        v16 += 5;
      }

      while (v16 != *(&v38 + 1));
    }
  }

  if (v12)
  {
    operator delete(v12);
  }

  if (v37)
  {
    operator delete(v37);
  }

  return 0;
}

void sub_25FD0CF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::vector<HGTW::HGTextureWrapRepeat::Segment>,std::vector<HGTW::HGTextureWrapRepeat::Segment>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_25FD0CF1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FD0CF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::vector<HGTW::HGTextureWrapRepeat::Segment>,std::vector<HGTW::HGTextureWrapRepeat::Segment>>::~pair(va);
  _Unwind_Resume(a1);
}

void sub_25FD0CF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::pair<std::vector<HGTW::HGTextureWrapRepeat::Segment>,std::vector<HGTW::HGTextureWrapRepeat::Segment>>::~pair(va);
  _Unwind_Resume(a1);
}

void HGTW::HGTextureWrapRepeat::_computeRoiSegments(HGTW::HGTextureWrapRepeat *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v6 = a3 - a2;
  v7 = (a4 - a2) / (a3 - a2);
  v8 = (a4 - a2) % (a3 - a2);
  v54 = a2;
  v9 = (a5 - a2) / (a3 - a2);
  v10 = (a5 - a2) % (a3 - a2);
  v11 = v8 >> 63;
  v12 = (v8 >> 63) + v7;
  v13 = v10 >> 63;
  v14 = (v10 >> 63) + v9;
  if (v12 <= v14)
  {
    v15 = a5;
    v16 = a3;
    v17 = (v11 & v6) + v8;
    v18 = v13 & v6;
    v19 = (v13 & v6) + v10;
    v20 = v19 + a2;
    v21 = v12 * v6 + a2;
    v22 = v21 + v17;
    v23 = v21 + v19;
    if (v12 != v14)
    {
      v23 = v12 * v6 + a3;
    }

    v49 = a3 + a2;
    v50 = v20;
    if (v12 == v14)
    {
      v24 = v20;
    }

    else
    {
      v24 = a3;
    }

    v25 = *(this + 449);
    v26 = v12;
    *&v55 = __PAIR64__(v23, v22);
    v27 = a3 + a2 - v24;
    v51 = v17;
    v28 = (v12 & 1) == 0 || (v25 & 1) == 0;
    if (v28)
    {
      v27 = v17 + a2;
    }

    else
    {
      v24 = a3 - v17;
    }

    *(&v55 + 1) = __PAIR64__(v24, v27);
    v56 = v28;
    std::vector<HGTW::HGTextureWrapRepeat::Segment>::push_back[abi:ne200100](a6, &v55);
    if (v26 != v14)
    {
      v29 = v26;
      v30 = v9;
      v31 = 0;
      v32 = v11 + v7 + 1;
      v33 = v7;
      v34 = v16 + v32 * v6;
      v35 = v13;
      v36 = v54 + (v16 - v54) * v32;
      v37 = v18 + v15 + (v32 - v30) * v6;
      v38 = v35 + v30 - v11 - v33;
      v39 = v38 - 1;
      do
      {
        v40 = v29;
        v41 = v29 + v31;
        v42 = v50;
        if (v31 == -1)
        {
          v43 = v51;
        }

        else
        {
          v43 = 0;
        }

        v44 = v43 + v54;
        if (v39 == v31)
        {
          v45 = v37;
        }

        else
        {
          v45 = v34;
        }

        if (v39 != v31)
        {
          v42 = v16;
        }

        v46 = v41 | ~*(this + 449);
        LODWORD(v55) = v36 + v43;
        DWORD1(v55) = v45;
        v47 = v16 - v43;
        v48 = v46 & 1;
        if (v48)
        {
          v47 = v42;
        }

        else
        {
          v44 = v49 - v42;
        }

        *(&v55 + 1) = __PAIR64__(v47, v44);
        v56 = v48;
        std::vector<HGTW::HGTextureWrapRepeat::Segment>::push_back[abi:ne200100](a6, &v55);
        ++v31;
        v34 += v6;
        v36 += v16 - v54;
        v37 += v6;
        v29 = v40;
      }

      while (v38 != v31);
    }
  }
}

void sub_25FD0D154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = *a14;
  if (*a14)
  {
    *(a14 + 8) = v15;
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HGTW::HGTextureWrapRepeat::Segment>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 4);
    *v3 = v5;
    v6 = v3 + 20;
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 2);
  v9 = v8 + 1;
  if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 2);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x666666666666666)
  {
    v11 = 0xCCCCCCCCCCCCCCCLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xCCCCCCCCCCCCCCCLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v12 = 4 * ((v3 - *a1) >> 2);
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 4);
  v6 = 20 * v8 + 20;
  v13 = 20 * v8 - (v3 - v7);
  memcpy((v12 - (v3 - v7)), v7, v3 - v7);
  *a1 = v13;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void HGTW::HGTextureWrapRepeat::_buildRoiSegments(uint64_t a1@<X0>, int32x2_t **a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = *a2;
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2);
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v20 = v5[1];
      std::vector<HGBlurGroup::BlurVal>::push_back[abi:ne200100](a4, &v20);
    }

    else if (v6 >= 3)
    {
      v12 = v5[1].i32[0];
      v13 = v5[1].i32[1];
      v15 = v5[3].i32[1];
      v14 = v5[4].i32[0];
      if (v15 < v12)
      {
        v12 = v15;
      }

      if (v13 > v14)
      {
        v14 = v13;
      }

      v20 = __PAIR64__(v14, v12);
      std::vector<HGBlurGroup::BlurVal>::push_back[abi:ne200100](a4, &v20);
    }

    return;
  }

  if (!a3 || (*(a1 + 449) & 1) != 0)
  {
    v10 = v5[1].i32[0];
    v7 = v5[1].i32[1];
    v8 = v5[3].i32[1];
    v11 = v5[4].i32[0];
  }

  else
  {
    v7 = v5[1].i32[1];
    v8 = v5[3].i32[1];
    if (v7 < v8)
    {
      v9 = a2;
      v10 = v5[1].i32[0];
      v11 = v5[4].i32[0];
LABEL_23:
      v17 = v8 < v10;
      v18 = 2;
      if (v17)
      {
        v18 = 7;
      }

      v17 = v11 < v7;
      v19 = 3;
      if (v17)
      {
        v19 = 8;
      }

      LODWORD(v20) = v5->i32[v18];
      HIDWORD(v20) = v5->i32[v19];
      std::vector<HGBlurGroup::BlurVal>::push_back[abi:ne200100](a4, &v20);
      v20 = vmax_s32((*v9)[1], *(*v9 + 28));
      std::vector<HGBlurGroup::BlurVal>::push_back[abi:ne200100](a4, &v20);
      return;
    }

    v11 = v5[4].i32[0];
    v10 = v5[1].i32[0];
    if (v11 < v10)
    {
      v9 = a2;
      goto LABEL_23;
    }
  }

  if (v8 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v8;
  }

  if (v7 <= v11)
  {
    v7 = v11;
  }

  v20 = __PAIR64__(v7, v16);
  std::vector<HGBlurGroup::BlurVal>::push_back[abi:ne200100](a4, &v20);
}

void sub_25FD0D434(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGTextureWrap::SetTextureWrapMode(uint64_t a1, const char *a2, char *a3)
{
  *(a1 + 416) = a2;
  WrapNode = HGTextureWrap::_createWrapNode(a1, a2, a3);
  v9 = *(a1 + 408);
  if (v9 == WrapNode)
  {
    if (WrapNode)
    {
      (*(*WrapNode + 24))(WrapNode);
      v9 = *(a1 + 408);
    }
  }

  else
  {
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }

    *(a1 + 408) = WrapNode;
    v9 = WrapNode;
  }

  v5.n128_u32[0] = *(a1 + 420);
  v6.n128_u32[0] = *(a1 + 424);
  v7.n128_u32[0] = *(a1 + 428);
  v8.n128_u32[0] = *(a1 + 432);
  v10 = *(*v9 + 96);

  return v10(v5, v6, v7, v8);
}

void sub_25FD0D544(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void HGTextureWrap::HGTextureWrap(HGTextureWrap *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287224918;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
  *(v1 + 436) = HGRectInfinite;
  *(v1 + 452) = 0;
  *(v1 + 428) = 0;
  *(v1 + 420) = 0;
  HGTextureWrap::SetTextureWrapMode(v1, 0, v2);
}

void sub_25FD0D5FC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 408);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGTextureWrap::~HGTextureWrap(HGTextureWrap *this)
{
  *this = &unk_287224918;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGTextureWrap::~HGTextureWrap(HGNode *this)
{
  *this = &unk_287224918;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGTextureWrap::SetParameter(HGTextureWrap *this, int a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 2)
  {
    v9 = (this + 436);
    v10 = HGRectMake4i(a3, a4, a5, a6);
    v12 = v11;
    if (!HGRectIsEqual(*v9, v9[1], v10, v11))
    {
      *v9 = v10;
      v9[1] = v12;
      return 1;
    }

    return 0;
  }

  if (a2 != 1)
  {
    if (!a2)
    {

      return HGTextureWrap::SetTextureWrapMode(this, a3, a7);
    }

    return 0;
  }

  *(this + 105) = a3;
  *(this + 106) = a4;
  *(this + 107) = a5;
  *(this + 108) = a6;
  v8 = *(**(this + 51) + 96);

  return v8();
}

uint64_t HGTextureWrap::SetTextureBorderColor(HGTextureWrap *this, float *a2)
{
  *(this + 105) = *a2;
  *(this + 106) = a2[1];
  *(this + 107) = a2[2];
  *(this + 108) = a2[3];
  return (*(**(this + 51) + 96))(*(this + 51), 2);
}

uint64_t HGTextureWrap::SetCropRect(HGTextureWrap *this, const HGRect *a2)
{
  v3 = (this + 436);
  if (HGRectIsEqual(*(this + 436), *(this + 444), *&a2->var0, *&a2->var2))
  {
    return 0;
  }

  *v3 = *a2;
  return 1;
}

char *HGTextureWrap::_createWrapNode(uint64_t a1, const char *a2, char *a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v6 = HGObject::operator new(0x1D0uLL);
      HGNode::HGNode(v6);
      *v6 = &unk_287224478;
      *(v6 + 408) = HGRectInfinite;
      *(v6 + 54) = 0;
      *(v6 + 55) = 0;
      v6[448] = 0;
      *(v6 + 4) |= 0x600u;
      HGNode::SetFlags(v6, 0, 0x2000);
      return v6;
    }

    if (a2 == 1)
    {
      v3 = HGObject::operator new(0x1D0uLL);
      HGTW::HGTextureWrapClampToEdge::HGTextureWrapClampToEdge(v3);
    }

LABEL_9:
    HGLogger::warning("HGTextureWrap -- invalid mode", a2, a3);
    v6 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v6);
    return v6;
  }

  if (a2 == 2)
  {
    v5 = HGObject::operator new(0x1D0uLL);
    HGNode::HGNode(v5);
    *v5 = &unk_2872246C8;
    *(v5 + 408) = HGRectInfinite;
    *(v5 + 224) = 257;
    *(v5 + 424) = xmmword_260346870;
    *(v5 + 55) = 0;
    HGNode::SetFlags(v5, 0, 16);
    (*(*v5 + 136))(v5, 0, 32);
    (*(*v5 + 136))(v5, 0xFFFFFFFFLL, 32);
  }

  else
  {
    if (a2 != 3)
    {
      goto LABEL_9;
    }

    v5 = HGObject::operator new(0x1D0uLL);
    HGNode::HGNode(v5);
    *v5 = &unk_2872246C8;
    *(v5 + 408) = HGRectInfinite;
    *(v5 + 224) = 1;
    *(v5 + 424) = xmmword_260346870;
    *(v5 + 55) = 0;
    HGNode::SetFlags(v5, 0, 16);
    (*(*v5 + 136))(v5, 0, 32);
    (*(*v5 + 136))(v5, 0xFFFFFFFFLL, 32);
  }

  *(v5 + 4) |= 0x600u;
  return v5;
}

void sub_25FD0DB7C(_Unwind_Exception *a1)
{
  HGNode::~HGNode(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

float HGTextureWrap::GetTextureBorderColor(HGTextureWrap *this, float *a2)
{
  *a2 = *(this + 105);
  a2[1] = *(this + 106);
  a2[2] = *(this + 107);
  result = *(this + 108);
  a2[3] = result;
  return result;
}

HGNode *HGTextureWrap::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  *&v10.var0 = HGRenderer::GetDOD(a2, Input);
  *&v10.var2 = v5;
  if (!HGRect::IsInfinite(&v10))
  {
    (*(**(this + 51) + 120))(*(this + 51), 0, Input);
    HGNode::SetOutputFormatComponents(*(this + 51), *(this + 8), v6);
    HGNode::SetSupportedFormatPrecisions(*(this + 51), *(this + 9), v7);
    (*(**(this + 51) + 96))(*(this + 51), 0, *(this + 109), *(this + 110), *(this + 111), *(this + 112));
    v8.n128_u64[0] = 0;
    if (*(this + 452))
    {
      v8.n128_f32[0] = 1.0;
    }

    (*(**(this + 51) + 96))(*(this + 51), 1, v8, 0.0, 0.0, 0.0);
    return *(this + 51);
  }

  return Input;
}

const char *HGTW::HGTextureWrapRepeat::label_B(HGTW::HGTextureWrapRepeat *this)
{
  if (*(this + 449))
  {
    return "(mirror)";
  }

  else
  {
    return "(repeat)";
  }
}

void HGNodeBuffer::ReadTile(HGNodeBuffer *this, char *a2, HGRect a3, uint64_t a4)
{
  v5 = *(this + 17);
  v6 = *(v5 + 36);
  v7 = *(v5 + 112);
  HGExecutionUnit::RenderTile(v5, a2, *&a3.var0, *&a3.var2, *(this + 16), a4);
  v8 = *(this + 17);
  *(v8 + 36) = v6;
  *(v8 + 112) = v7;
}

void HGXForm::HGXForm(HGXForm *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_287224C30;
  v3 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v3);
  *(this + 51) = v3;
  v4 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v4);
  *(this + 52) = v4;
  v5 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v5);
  *(this + 53) = v5;
  *(this + 108) = 1;
  *(this + 55) = 0;
  *(this + 56) = this;
  *(this + 57) = this;
  *(this + 58) = 1065353216;
  *(this + 59) = 0;
  *(this + 484) = xmmword_260345850;
  *(this + 500) = 1098907648;
  *(this + 127) = 3;
  *(this + 512) = 0;
  *(this + 129) = HGTransformUtils::MinW(v6);
  *(this + 130) = 0;
  v7 = *(this + 4) | 0x600;
  *(this + 3) = 1481003597;
  *(this + 4) = v7;
}

void sub_25FD0DEB0(_Unwind_Exception *a1)
{
  v3 = v2;
  HGObject::operator delete(v3);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGXForm::~HGXForm(HGXForm *this)
{
  *this = &unk_287224C30;
  v2 = *(this + 56);
  if (v2 != this)
  {
    (*(*v2 + 24))(v2);
    *(this + 56) = this;
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
    *(this + 51) = 0;
  }

  v4 = *(this + 52);
  if (v4)
  {
    (*(*v4 + 24))(v4);
    *(this + 52) = 0;
  }

  v5 = *(this + 53);
  if (v5)
  {
    (*(*v5 + 24))(v5);
    *(this + 53) = 0;
  }

  HGNode::~HGNode(this);
}

{
  HGXForm::~HGXForm(this);

  HGObject::operator delete(v1);
}

uint64_t HGXForm::info@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (a2 < 1)
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  else
  {
    v7 = (*(*result + 584))(result);
    v8 = (*(*v7 + 272))(v7);

    return HGLoggerUtils::matrixPrettyString(v8, 4, 4, a3, a4);
  }

  return result;
}

uint64_t HGXForm::QueueNode(HGXForm *this, HGNode *a2)
{
  if (*(this + 56) == this)
  {
    result = (*(*a2 + 120))(a2, 0, *(this + 55));
  }

  else
  {
    (*(*a2 + 120))(a2, 0);
    result = (*(**(this + 56) + 24))(*(this + 56));
  }

  *(this + 56) = a2;
  return result;
}

uint64_t HGXForm::AttemptEarlyConcatenation(HGXForm *this, HGNode *a2)
{
  result = (*(*a2 + 128))(a2, 0);
  if (*(a2 + 3) != *(this + 3) || result == 0)
  {
    return result;
  }

  v6 = *(a2 + 126);
  v7 = *(this + 126);
  if (v6 == 0.0 || v7 == 0.0)
  {
    if (v6 != 0.0 || v7 != 0.0 || *(a2 + 108) < *(this + 108) || *(a2 + 116) != *(this + 116) || *(a2 + 117) != *(this + 117) || *(a2 + 121) != *(this + 121) || *(a2 + 122) != *(this + 122))
    {
      return result;
    }

    goto LABEL_24;
  }

  if (*(a2 + 108) >= *(this + 108) && v6 >= v7)
  {
    v9 = *(a2 + 123);
    v10 = *(this + 123);
    if ((*(a2 + 124) - v9) <= (*(this + 124) - v10) && (*(a2 + 125) - v9) >= (*(this + 125) - v10) && *(a2 + 127) >= *(this + 127))
    {
LABEL_24:
      v11 = result;
      v12 = HGObject::operator new(0x90uLL);
      HGTransform::HGTransform(v12);
      v13 = (*(*this + 584))(this);
      (*(*v12 + 96))(v12, v13);
      v14 = (*(*a2 + 584))(a2);
      (*(*v12 + 200))(v12, v14);
      (*(*this + 120))(this, 0, v11);
      (*(*this + 576))(this, v12);
      v15.n128_f32[0] = *(a2 + 123) + *(this + 123);
      (*(*this + 608))(this, v15);
      result = (*(*v12 + 24))(v12);
      v16 = *(a2 + 130);
      if (v16 <= *(this + 130))
      {
        v16 = *(this + 130);
      }

      *(this + 130) = v16;
    }
  }

  return result;
}

HGXForm *HGXForm::GetOutput(HGXForm *this, HGRenderer *a2)
{
  v87 = *MEMORY[0x277D85DE8];
  *(this + 108) = (*(*this + 312))(this);
  (*(**(this + 52) + 96))(*(this + 52), *(this + 51));
  v4 = *(this + 56);
  if (v4 != this)
  {
    (*(*v4 + 24))(v4);
    *(this + 56) = this;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  *(this + 55) = Input;
  *(this + 4) &= ~0x10u;
  *(this + 59) = 0;
  (*(**(this + 52) + 184))(*(this + 52));
  if (!Input)
  {
    goto LABEL_22;
  }

  if (*(Input + 3) == *(this + 3) && HGRenderer::IsMergeable(a2, this, 0, 0) && *(Input + 123) == 0.0 && *(Input + 124) == 0.0)
  {
    v6 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v6);
    v7 = HGObject::operator new(0x90uLL);
    HGTransform::HGTransform(v7);
    (*(*v7 + 96))(v7, *(this + 52));
    (*(*v7 + 200))(v7, *(Input + 52));
    v8 = HGRenderer::GetInput(a2, Input, 0);
    (*(*v6 + 120))(v6, 0, v8);
    (*(*v6 + 576))(v6, v7);
    (*(*v6 + 160))(v6, *(this + 108));
    v9.n128_u32[0] = *(this + 116);
    (*(*v6 + 592))(v6, *(this + 117), v9);
    (*(*v6 + 96))(v6, 0, *(this + 123), *(this + 124), *(this + 125), *(this + 126));
    v10 = *(this + 130);
    if (v10 <= *(Input + 130))
    {
      v10 = *(Input + 130);
    }

    (*(*v6 + 96))(v6, 1, v10, 0.0, 0.0, 0.0);
    (*(*v6 + 640))(v6, *(this + 127));
    *(this + 56) = v6;
    (*(*v7 + 24))(v7);
    return v6;
  }

  if (!v11 || (v12 = v11, !HGRenderer::IsMergeable(a2, this, 0, 0)))
  {
LABEL_22:
    (*(**(this + 52) + 184))(*(this + 52));
    v18 = *(this + 123);
    if (v18 == 0.0)
    {
      if ((*(**(this + 52) + 224))(*(this + 52)))
      {
        return Input;
      }

      v18 = *(this + 123);
    }

    if (v18 == 0.0 && (*(**(this + 52) + 240))(*(this + 52)))
    {
      v19 = (*(**(this + 52) + 272))(*(this + 52));
      Input = HGObject::operator new(0x1B0uLL);
      HGFlipAndOffset::HGFlipAndOffset(Input);
      (*(*Input + 160))(Input, *(this + 108));
      v20 = *(v19 + 96);
      v21 = *(v19 + 104);
      (*(*Input + 96))(Input, 0, v20, v21, 0.0, 0.0);
      v22.n128_u64[0] = *v19;
      v23.n128_u64[0] = -1.0;
      if (*v19 == -1.0)
      {
        v22.n128_f32[0] = 1.0;
      }

      else
      {
        v22.n128_f32[0] = 0.0;
      }

      if (*(v19 + 40) == -1.0)
      {
        v23.n128_f32[0] = 1.0;
      }

      else
      {
        v23.n128_f32[0] = 0.0;
      }

      (*(*Input + 96))(Input, 1, v22, v23, 0.0, 0.0);
      (*(*Input + 96))(Input, 2, *(this + 130), 0.0, 0.0, 0.0);
      if (*(this + 56) == this)
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    if (*(this + 126) > 0.0)
    {
      Input = HGObject::operator new(0x1F0uLL);
      HGAnisotropicXForm::HGAnisotropicXForm(Input);
      (*(*Input + 576))(Input, *(this + 51));
      (*(*Input + 160))(Input, *(this + 108));
      (*(*Input + 592))(Input, *(this + 127));
      (*(*Input + 96))(Input, 0, *(this + 123), *(this + 124), *(this + 125), *(this + 126));
      (*(*Input + 96))(Input, 1, *(this + 130), 0.0, 0.0, 0.0);
      if (*(this + 56) == this)
      {
LABEL_34:
        (*(*Input + 120))(Input, 0, *(this + 55));
        *(this + 56) = Input;
        return Input;
      }

LABEL_37:
      (*(*Input + 120))(Input, 0);
      (*(**(this + 56) + 24))(*(this + 56));
      *(this + 56) = Input;
      return Input;
    }

    (*(**(this + 53) + 96))(*(this + 53), *(this + 52));
    (*(**(this + 53) + 168))(*(this + 53));
    v86[0] = 0.0;
    v83 = 0.0;
    v25 = (*(**(this + 53) + 272))();
    v28.n128_u64[0] = *(v25 + 8);
    if (v28.n128_f64[0] == 0.0 && (v28.n128_u64[0] = *(v25 + 16), v28.n128_f64[0] == 0.0) && (v28.n128_u64[0] = *(v25 + 24), v28.n128_f64[0] == 0.0) && (v28.n128_u64[0] = *(v25 + 32), v28.n128_f64[0] == 0.0) && (v28.n128_u64[0] = *(v25 + 48), v28.n128_f64[0] == 0.0) && (v28.n128_u64[0] = *(v25 + 56), v28.n128_f64[0] == 0.0) && (v28.n128_u64[0] = *(v25 + 64), v28.n128_f64[0] == 0.0) && (v28.n128_u64[0] = *(v25 + 72), v28.n128_f64[0] == 0.0) && (v28.n128_u64[0] = *(v25 + 88), v28.n128_f64[0] == 0.0))
    {
      v29 = *(v25 + 120);
      if (v29 == 0.0)
      {
        v28.n128_u64[0] = 0x7FF0000000000000;
        v30 = INFINITY;
      }

      else
      {
        v28.n128_f64[0] = *v25 / v29;
        v30 = *(v25 + 40) / v29;
      }

      v34 = fabs(v28.n128_f64[0]);
      v32 = fabs(v30);
      v75 = atomic_load(HGLogger::_enabled);
      v33 = 1;
      if (v75)
      {
        HGLogger::log("xform", 1, "scalex=%.3f, scaley=%.3f (accurate)\n", v26, v27, *&v34, *&v32);
      }
    }

    else
    {
      v31 = atomic_load(HGLogger::_enabled);
      v32 = 0.0;
      if (v31)
      {
        HGLogger::log("xform", 1, "scalex=%.3f, scaley=%.3f (using l_EQX and l_EQY)\n", v26, v27, 0, 0);
      }

      v33 = 0;
      v34 = 0.0;
    }

    v28.n128_u32[0] = *(this + 116);
    if (v28.n128_f32[0] <= 0.0)
    {
      goto LABEL_122;
    }

    v35 = v33 ^ 1;
    if (*(this + 117) != 6)
    {
      v35 = 0;
    }

    if (v35)
    {
      goto LABEL_122;
    }

    HGXForm::ComputePreFilterAmount(this, v86, &v83);
    if (v86[0] <= 0.0)
    {
      v28.n128_f32[0] = v83;
      if (v83 <= 0.0)
      {
        goto LABEL_122;
      }
    }

    v38 = atomic_load(HGLogger::_enabled);
    if (v38)
    {
      HGLogger::log("xform", 1, "Prefilter = %f, l_EQX = %f, l_EQY=%f\n", v36, v37, *(this + 116), v86[0], v83);
    }

    v39 = *(this + 117);
    if (!v39)
    {
      v51 = HGObject::operator new(0x220uLL);
      HGBlur::HGBlur(v51);
      v52 = v86[0];
      v53 = v83;
      (*(*v51 + 96))(v51, 0, v86[0], v83, 0.0, 0.0);
      *(v51 + 106) = 1;
      HGXForm::QueueNode(this, v51);
      if (!*(v51 + 106))
      {
        goto LABEL_122;
      }

      HGTransform::HGTransform(v85);
      HGBlur::GetDecimation(v51, v52);
      v55 = v54;
      HGBlur::GetDecimation(v51, v53);
      v57 = v56;
      v58 = ldexpf(1.0, v55);
      v59 = ldexpf(1.0, v57);
      HGTransform::Scale(v85, v58, v59, 1.0);
      (*(**(this + 52) + 200))(*(this + 52), v85);
      goto LABEL_121;
    }

    if (v39 == 6)
    {
      v40 = 1.0 / v34;
      for (i = 0; v40 < 0.5; v40 = v40 + v40)
      {
        ++i;
      }

      v28.n128_f64[0] = 1.0 / v32;
      v28.n128_f32[0] = 1.0 / v32;
      for (j = 0; v28.n128_f32[0] < 0.5; v28.n128_f32[0] = v28.n128_f32[0] + v28.n128_f32[0])
      {
        ++j;
      }

      if (i <= j)
      {
        v43 = j;
      }

      else
      {
        v43 = i;
      }

      v44 = *(this + 55);
      if (v43 < 1)
      {
        v50 = *(this + 55);
      }

      else
      {
        v45 = v43 + 1;
        v46 = j;
        v47 = i;
        do
        {
          HGTransform::HGTransform(v85);
          if (v47 <= 0)
          {
            v48 = 1.0;
          }

          else
          {
            v48 = 0.5;
          }

          if (v46 <= 0)
          {
            v49 = 1.0;
          }

          else
          {
            v49 = 0.5;
          }

          HGTransform::Scale(v85, v48, v49, 1.0);
          v50 = HGObject::operator new(0x210uLL);
          HGXForm::HGXForm(v50);
          (*(*v50 + 120))(v50, 0, v44);
          (*(*v50 + 576))(v50, v85);
          (*(*v50 + 160))(v50, 1);
          (*(*v50 + 592))(v50, 0, 0.0);
          (*(*v50 + 136))(v50, 0xFFFFFFFFLL, 32);
          (*(*v50 + 136))(v50, 0, 32);
          (*(*v50 + 136))(v50, 1, 32);
          if (v44 != *(this + 55))
          {
            (*(*v44 + 24))(v44);
          }

          HGTransform::~HGTransform(v85);
          --v45;
          --v46;
          --v47;
          v44 = v50;
        }

        while (v45 > 1);
      }

      if (v43)
      {
        *(this + 56) = v50;
        HGTransform::HGTransform(v85);
        v73 = ldexpf(1.0, i);
        v74 = ldexpf(1.0, j);
        HGTransform::Scale(v85, v73, v74, 1.0);
        (*(**(this + 52) + 200))(*(this + 52), v85);
LABEL_121:
        HGTransform::~HGTransform(v85);
      }

LABEL_122:
      if (*(this + 56) != this)
      {
        if (!(*(**(this + 52) + 224))(*(this + 52), v28))
        {
          v80 = HGObject::operator new(0x210uLL);
          HGXForm::HGXForm(v80);
          (*(*v80 + 576))(v80, *(this + 52));
          (*(*v80 + 160))(v80, *(this + 108));
          (*(*v80 + 592))(v80, 0, 0.0);
          *(v80 + 57) = this;
          *(v80 + 130) = *(this + 130);
          if (*(this + 56) == this)
          {
            (*(*v80 + 120))(v80, 0, *(this + 55));
          }

          else
          {
            (*(*v80 + 120))(v80, 0);
            (*(**(this + 56) + 24))(*(this + 56));
          }

          *(this + 56) = v80;
        }

        return *(this + 56);
      }

      *(this + 4) |= 0x10u;
      *(this + 118) = 1;
      *(this + 119) = (*(**(this + 53) + 248))(*(this + 53), v28);
      v81 = *(this + 108);
      if (v81 == 1)
      {
        v82 = 1056964608;
      }

      else
      {
        if (!v81)
        {
          *(this + 120) = 0;
          return *(this + 56);
        }

        v82 = 1069547520;
      }

      *(this + 120) = v82;
      return *(this + 56);
    }

    if (v33)
    {
      v60 = v34;
    }

    else
    {
      v60 = v86[0];
    }

    v61 = 1.0;
    v62 = -1;
    do
    {
      v63 = v61;
      v61 = v61 + v61;
      ++v62;
    }

    while (v61 <= v60);
    if (v33)
    {
      v64 = v32;
    }

    else
    {
      v64 = v83;
    }

    v65 = 1.0;
    v66 = -1;
    do
    {
      v67 = v65;
      v65 = v65 + v65;
      ++v66;
    }

    while (v65 <= v64);
    if (v62 >= v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = v62;
    }

    if (v39 == 2 && v68 >= 2)
    {
      v69 = v68 + 1;
      v70 = 5;
      v71 = 2.0;
      v72 = 0.2;
      goto LABEL_117;
    }

    v72 = 0.0;
    v71 = 1.0;
    if (v39 > 3)
    {
      if (v39 == 4)
      {
        v70 = 7;
        goto LABEL_116;
      }

      if (v39 == 5)
      {
        v70 = 2;
        goto LABEL_116;
      }
    }

    else
    {
      if ((v39 - 1) < 2)
      {
        v70 = 5;
LABEL_116:
        v69 = v68;
LABEL_117:
        HGTransform::HGTransform(v85);
        HGTransform::Scale(v85, 1.0 / v63, 1.0 / v67, 1.0);
        v76 = HGObject::operator new(0x1F0uLL);
        HGAnisotropicXForm::HGAnisotropicXForm(v76);
        (*(*v76 + 576))(v76, v85);
        (*(*v76 + 160))(v76, 0);
        (*(*v76 + 592))(v76, v70);
        (*(*v76 + 96))(v76, 0, v72, v68, v69, v71);
        HGXForm::QueueNode(this, v76);
        HGTransform::HGTransform(v84);
        HGTransform::Scale(v84, v63, v67, 1.0);
        (*(**(this + 52) + 200))(*(this + 52), v84);
        (*(**(this + 53) + 96))(*(this + 53), *(this + 52));
        (*(**(this + 53) + 168))(*(this + 53));
        v77 = v60 / v63;
        if (v77 != 1.0)
        {
          v78 = v64 / v67;
          if (v78 != 1.0)
          {
            v79 = HGObject::operator new(0x220uLL);
            HGConvolution::HGConvolution(v79);
            HGXForm::SetConvolutionFilter(this, v79, v77, v78);
            HGXForm::QueueNode(this, v79);
          }
        }

        HGTransform::~HGTransform(v84);
        goto LABEL_121;
      }

      if (v39 == 3)
      {
        v70 = 6;
        goto LABEL_116;
      }
    }

    v70 = 0;
    goto LABEL_116;
  }

  (*(*v12 + 104))(v12, 0, v84);
  (*(*v12 + 104))(v12, 1, v85);
  if (v85[0] == 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = -1.0;
  }

  if (v85[1] == 0.0)
  {
    v14 = 1.0;
  }

  else
  {
    v14 = -1.0;
  }

  Input = HGObject::operator new(0x210uLL);
  HGXForm::HGXForm(Input);
  v15 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v15);
  (*(*v15 + 56))(v15);
  (*(*v15 + 144))(v15, v13, v14, 1.0);
  (*(*v15 + 120))(v15, v84[0], v84[1], 0.0);
  (*(*v15 + 192))(v15, *(this + 52));
  v16 = HGRenderer::GetInput(a2, v12, 0);
  (*(*Input + 120))(Input, 0, v16);
  (*(*Input + 576))(Input, v15);
  (*(*Input + 160))(Input, *(this + 108));
  (*(*Input + 592))(Input, 0, *(this + 116));
  (*(*Input + 96))(Input, 0, *(this + 123), *(this + 124), *(this + 125), *(this + 126));
  (*(*v12 + 104))(v12, 2, v86);
  v17 = v86[0];
  if (*(this + 130) > v86[0])
  {
    v17 = *(this + 130);
  }

  (*(*Input + 96))(Input, 1, v17, 0.0, 0.0, 0.0);
  (*(*Input + 640))(Input, *(this + 127));
  *(this + 56) = Input;
  (*(*v15 + 24))(v15);
  return Input;
}

void sub_25FD0FB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  HGObject::operator delete(v31);
  HGTransform::~HGTransform(&a13);
  HGTransform::~HGTransform(&a31);
  _Unwind_Resume(a1);
}

void sub_25FD0FBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  HGObject::operator delete(v31);
  HGTransform::~HGTransform(&a31);
  _Unwind_Resume(a1);
}

void sub_25FD0FC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  HGTransform::~HGTransform(&a13);
  HGTransform::~HGTransform(&a31);
  _Unwind_Resume(a1);
}

void sub_25FD0FCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  HGObject::operator delete(v31);
  HGTransform::~HGTransform(&a31);
  _Unwind_Resume(a1);
}

void HGXForm::ComputePreFilterAmount(HGXForm *this, float *a2, float *a3)
{
  v6 = (*(**(this + 53) + 272))(*(this + 53));
  v7 = v6[12];
  v8 = v6[13];
  v9 = v6[15];
  v10 = fmax(fabs((*v6 * v9 - v6[3] * v7) / (v9 * v9)), fabs((v6[4] * v9 - v6[3] * v8) / (v9 * v9))) * *(this + 121);
  v11 = fmax(fabs((v6[1] * v9 - v6[7] * v7) / (v9 * v9)), fabs((v6[5] * v9 - v6[7] * v8) / (v9 * v9))) * *(this + 122);
  v30 = exp2f(-*(this + 116));
  v12 = 0.0;
  v13 = 0.0;
  if (v10 > 1.0)
  {
    v14 = 1.0 / v10;
    v15 = log2f(v14);
    v16 = floorf(v15);
    v17 = exp2f(v16);
    v18 = 0.0;
    if (v17 < 1.0)
    {
      v19 = v17 * 3.14159265;
      v13 = (sqrtf(logf(v30) * -2.0) * 3.0) / v19;
    }

    v20 = exp2f(v16 + 1.0);
    if (v20 < 1.0)
    {
      v21 = v20 * 3.14159265;
      v18 = (sqrtf(logf(v30) * -2.0) * 3.0) / v21;
    }

    v13 = v13 + ((v15 - v16) * (v18 - v13));
  }

  if (v11 > 1.0)
  {
    v22 = 1.0 / v11;
    v23 = log2f(v22);
    v24 = floorf(v23);
    v25 = exp2f(v24);
    v26 = 0.0;
    if (v25 < 1.0)
    {
      v27 = v25 * 3.14159265;
      v12 = (sqrtf(logf(v30) * -2.0) * 3.0) / v27;
    }

    v28 = exp2f(v24 + 1.0);
    if (v28 < 1.0)
    {
      v29 = v28 * 3.14159265;
      v26 = (sqrtf(logf(v30) * -2.0) * 3.0) / v29;
    }

    v12 = v12 + ((v23 - v24) * (v26 - v12));
  }

  *a2 = v13;
  *a3 = v12;
}

void HGXForm::SetConvolutionFilter(HGXForm *this, HGConvolution *a2, float a3, float a4)
{
  HGLinearFilter2D::HGLinearFilter2D(v13);
  HGLinearFilter2D::HGLinearFilter2D(v12);
  v8 = *(this + 117) - 1;
  if (v8 >= 5 || (v9 = dword_2608176AC[v8], v10 = exp2f(-*(this + 116)), SeparablePrefilter = HGPrefilterUtils::GetSeparablePrefilter(v13, v9, 0, v10, a3, 0.0), (SeparablePrefilter | HGPrefilterUtils::GetSeparablePrefilter(v12, v9, 1, v10, a4, 0.0)) == 1))
  {
    HGConvolution::SeparableFilter2D(a2, v13, v12);
  }

  HGLinearFilter2D::~HGLinearFilter2D(v12);
  HGLinearFilter2D::~HGLinearFilter2D(v13);
}

void sub_25FD1010C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  HGLinearFilter2D::~HGLinearFilter2D(&a9);
  HGLinearFilter2D::~HGLinearFilter2D(&a13);
  _Unwind_Resume(a1);
}

uint64_t HGXForm::SetTransform(HGXForm *this, HGTransform *a2)
{
  v3 = **(this + 51);
  if (a2)
  {
    if ((*(v3 + 232))())
    {
      return 0;
    }

    else
    {
      (*(**(this + 51) + 96))(*(this + 51), a2);
      HGNode::ClearBits(this, v6, v7);
      return 1;
    }
  }

  else if ((*(v3 + 224))())
  {
    return 0;
  }

  else
  {
    (*(**(this + 51) + 56))(*(this + 51));
    HGNode::ClearBits(this, v8, v9);
    return 1;
  }
}

uint64_t HGXForm::SetPreFilter(uint64_t a1, uint64_t a2, char *a3, float a4)
{
  if (*(a1 + 464) == a4 && *(a1 + 468) == a2)
  {
    return 0;
  }

  *(a1 + 464) = a4;
  *(a1 + 468) = a2;
  HGNode::ClearBits(a1, a2, a3);
  return 1;
}

HGXForm *HGXForm::SetFilterSize(HGXForm *this, float a2, float a3)
{
  if (a2 == 0.0)
  {
    a2 = 0.00000011921;
  }

  *(this + 121) = a2;
  if (a3 == 0.0)
  {
    v3 = 0.00000011921;
  }

  else
  {
    v3 = a3;
  }

  *(this + 122) = v3;
  return this;
}

uint64_t HGXForm::GetDOD(HGXForm *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 || !*(this + 118))
  {
    return HGNode::GetDOD(this, a2, v4, *&a4.var0);
  }

  v6 = *&a4.var2;
  return HGTransformUtils::GetDOD(*(this + 52), *&a4.var0, a4, *(this + 120), *(this + 129));
}

uint64_t HGXForm::GetROI(HGXForm *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 || !*(this + 118))
  {

    return HGNode::GetROI(this, a2, v5, *&a4.var0);
  }

  else
  {
    v9 = *&a4.var0;
    v10 = *&a4.var2;
    v11 = *&a4.var2;
    ROI = HGTransformUtils::GetROI(*(this + 53), *&a4.var0, a4, *(this + 120), *(this + 129));
    v14 = v13;
    if (*(this + 10) != 1)
    {
      Input = HGRenderer::GetInput(a2, *(this + 56), 0);
      DOD = HGRenderer::GetDOD(a2, Input);
      *&v19.var0 = HGRectIntersection(ROI, v14, DOD, v17);
      *&v19.var2 = v18;
      *&v20.var0 = v9;
      *&v20.var2 = v10;
      if (HGXForm::TestPerspective(this, v18, v19, v20))
      {
        (*(*Input + 136))(Input, 0xFFFFFFFFLL, 2);
      }
    }

    return ROI;
  }
}

BOOL HGXForm::TestPerspective(HGXForm *this, HGRenderer *a2, HGRect a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  var2 = a3.var2;
  v69 = *MEMORY[0x277D85DE8];
  var3 = a3.var3;
  v9 = (a3.var0 - 2);
  v10 = (a3.var1 - 2);
  (*(**(this + 52) + 216))(*(this + 52), &v61, v9, v10);
  (*(**(this + 52) + 216))(*(this + 52), &v63, (var2 + 2), v10);
  (*(**(this + 52) + 216))(*(this + 52), &v65, (var2 + 2), (var3 + 2));
  (*(**(this + 52) + 216))(*(this + 52), &v67, v9, (var3 + 2));
  v11 = v61;
  v12 = v62;
  v13 = v63;
  v14 = v64;
  v15 = v67;
  v16 = v68;
  v17 = v65;
  v18 = v66 - v68;
  v19 = v63 - v61;
  v20 = v65 - v67;
  v21 = v62 - v64;
  if (vabdd_f64(v19 * v18, v21 * v20) >= 0.000001)
  {
    v29 = v19 * v18 - v21 * v20;
    v22 = v12 - v16;
    v30 = ((v12 - v16) * v20 - (v11 - v15) * v18) / v29;
    v31 = v19 * v30 + v11;
    v32 = (v14 - v12) * v30 + v12;
    v33 = v4;
    v34 = SHIDWORD(v5);
    v35 = SHIDWORD(v4);
    if (v31 >= v5 && v31 <= v33 && v32 >= v34 && v32 <= v35)
    {
      return 1;
    }

    v39 = (v19 * v22 - (v14 - v12) * (v11 - v15)) / v29;
    v40 = v18 * v39 + v16;
    v41 = v20 * v39 + v15;
    v42 = v41 < v5 || v41 > v33;
    v43 = v42 || v40 < v34;
    if (!v43 && v40 <= v35)
    {
      return 1;
    }
  }

  else
  {
    v22 = v12 - v16;
  }

  v23 = v66 - v14;
  v24 = v15 - v11;
  v25 = (v15 - v11) * v23;
  v26 = v17 - v13;
  v27 = v22 * (v17 - v13);
  if (vabdd_f64(v25, v27) < 0.000001)
  {
    return 0;
  }

  v45 = v25 - v27;
  v46 = v11 - v13;
  v47 = (v21 * v26 - (v11 - v13) * v23) / v45;
  v48 = v16 - v12;
  v49 = v24 * v47 + v11;
  v50 = (v16 - v12) * v47 + v12;
  v51 = v4;
  v52 = SHIDWORD(v5);
  v53 = SHIDWORD(v4);
  if (v49 >= v5 && v49 <= v51 && v50 >= v52 && v50 <= v53)
  {
    return 1;
  }

  v57 = (v21 * v24 - v46 * v48) / v45;
  v58 = v23 * v57 + v14;
  v59 = v26 * v57 + v13;
  v60 = v59 >= v5;
  if (v58 < v52)
  {
    v60 = 0;
  }

  if (v59 > v51)
  {
    v60 = 0;
  }

  return v58 <= v53 && v60;
}

uint64_t HGXForm::RenderTile(HGXForm *this, HGTile *a2)
{
  if (*(this + 118))
  {
    v4 = *(*(a2 + 42) + 152);
    Input = HGRenderer::GetInput(v4, this, 0);
    ROI = HGRenderer::GetROI(v4, Input);
    v8 = v7;
    if (((*(*this + 152))(this, 0) & 2) != 0)
    {
      HGRenderer::RenderInput(v4, *(a2 + 42), this, 0, &v16, ROI, v8, 0);
      v12 = v17;
      v10 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v10, ROI, v8, 28, v16, 16 * v12);
    }

    else
    {
      v9 = (*(*v4 + 128))(v4, 19);
      v10 = HGObject::operator new(0x90uLL);
      v11 = *(a2 + 42);
      HGBuffer::HGBuffer(v10, ROI, v8, v9, 0);
      *v10 = &unk_287224BC8;
      v10[16] = Input;
      v10[17] = v11;
    }

    *(*(a2 + 42) + 36) = *(this + 108);
    v13 = (*(*v4 + 128))(v4, 4);
    v14 = *(a2 + 42);
    v14[7].i32[0] = v13;
    HGSampler::ReadTile(v14, v10, *(this + 53), *(a2 + 2), *a2, *(a2 + 1), *(a2 + 6) - *(a2 + 1) + *a2);
    if (v10)
    {
      (*(*v10 + 24))(v10);
    }
  }

  return 0;
}

void sub_25FD10994(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

const char *HGXForm::GetProgram(HGXForm *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target > 0x60B0F)
  {
    v5 = (*(*a2 + 128))(a2, 20);
    v6 = "//Metal1.0     \n//LEN=0000000328\nfragment FragmentOut fragmentFunc(VertexInOut           frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >     hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    FragmentOut out;\n    float4 opacity = float4(hg_Params[0]);\n    out.color0 = float4(0.0f);\n    if (frag._texCoord0.w > 0)\n    {\n        float2 coords = frag._texCoord0.xy / frag._texCoord0.w;\n        out.color0 = hg_Texture0.sample(hg_Sampler0, coords) * opacity;\n    }\n    return out;\n}\n//MD5=ff0a9e5f:fb2b6628:41f3111f:93dff02b\n//SIG=00000000:00000000:00000000:00000000:0002:0001:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    if (v5 == 27)
    {
      v6 = "//Metal1.0     \n//LEN=0000000351\nfragment FragmentOut fragmentFunc(VertexInOut           frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    FragmentOut out;\n    half4 opacity = half4(hg_Params[0]);\n    half4 color = half4(0.0f);\n    if (frag._texCoord0.w > 0)\n    {\n        float2 coords = frag._texCoord0.xy / frag._texCoord0.w;\n        color = hg_Texture0.sample(hg_Sampler0, coords);\n        color *= opacity;\n    }\n    out.color0 = float4(color);\n    return out;\n}\n//MD5=d87d279d:1a15ee10:6cfaa609:bc4cd42e\n//SIG=00000000:00000000:00000000:00000001:0002:0001:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    v7 = "//Metal1.0     \n//LEN=00000002c6\nfragment FragmentOut fragmentFunc(VertexInOut           frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    FragmentOut out;\n    half4 opacity = half4(hg_Params[0]);\n    half4 color = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    out.color0 = float4(color * opacity);\n    return out;\n}\n//MD5=a3cb44f9:6715c139:a9f991d6:a1c11988\n//SIG=00000000:00000000:00000000:00000001:0000:0001:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    if (v5 != 27)
    {
      v7 = "//Metal1.0     \n//LEN=00000002c1\nfragment FragmentOut fragmentFunc(VertexInOut           frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >     hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    FragmentOut out;\n    float4 opacity = float4(hg_Params[0]);\n    float4 color = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    out.color0 = color * opacity;\n    return out;\n}\n//MD5=b060eb93:167cbcc8:62f25ab3:18c99b04\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    }

    if (*(this + 119))
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  v9 = Target;
  if (Target > 0x6060F)
  {
    v10 = Target;
    v11 = (*(*a2 + 128))(a2, 46);
    v9 = v10;
    if (!v11)
    {
      if (*(this + 512) == 1 && *(this + 118))
      {
        return "//GLfs2.0      \n//LEN=0000000295\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r1;\n    lowp vec4 r0;\n    bvec4 b0;\n\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    b0.xy = lessThan(vec2(0.0), hg_TexCoord0.xy);\n    b0.zw = lessThan(hg_TexCoord0.xy, vec2(1.0));\n    r0 = vec4(all(b0));\n    gl_FragColor = r1*hg_ProgramLocal0*r0;\n}\n//MD5=8924dd58:af75c4ef:65163cb7:950dc52e\n//SIG=00000000:00000000:00000000:00000000:0004:0001:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
      }

      if (*(this + 119))
      {
        return "//GLfs2.0      \n//LEN=00000001f3\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n\n    gl_FragColor = hg_TexCoord0.w>0. ? texture2DProj(hg_Texture0, hg_TexCoord0)*hg_ProgramLocal0 : vec4(0.);\n}\n//MD5=6da3c304:b0faeba4:dba5c887:64ab3ead\n//SIG=00000000:00000000:00000000:00000000:0002:0001:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
      }

      if (*(this + 118))
      {
        return "//GLfs2.0      \n//LEN=00000001f6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0*hg_ProgramLocal0;\n}\n//MD5=67977a2c:d8a14038:8edc7643:d46e92bc\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
      }

      v21 = HGString::sample2d(0x60620, 0, 0, v24);
      v19 = HGString::c_str(v24, v21, v22, v23);
LABEL_25:
      v20 = v19;
      HGString::~HGString(v24);
      return v20;
    }
  }

  if (!*(this + 118))
  {
    HGString::sampleRect(0x60310, 0, v24);
    v19 = HGString::c_str(v24, v16, v17, v18);
    goto LABEL_25;
  }

  result = "!!ARBfp1.0     \n##LEN=000000020e\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\n##%\nTEMP r0;\n##@\nRCP r0.x,$f0.w;\nMUL r0.xy,$f0,r0.xxxx;\n##0\nTEX r0,r0,texture[0],RECT;\nMUL r0,r0,$p0;\nCMP $o0,-$f0.wwww,r0,0;\nEND\n##MD5=ba6baee1:6abbea5d:27d71074:2b006e3e\n##SIG=00000000:00000000:00000000:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  if (v9 <= 0x6043F && v9 - 394016 >= 0xF0)
  {
    v12 = *(this + 108);
    v13 = v12 == 0;
    if (v12)
    {
      v14 = "!!ARBfp1.0     \n##LEN=0000000470\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\nPARAM $p3=program.local[3];\nPARAM $c0={0.5,0.5,0,0};\nPARAM $c1={1,0,0,0};\nPARAM $c2={1,1,0,0};\nPARAM $c3={0,1,0,0};\n##%\nTEMP r0,r1,r2,r3,r4,r5,r6;\n##@\nMOV r1,$f0;\nFLR r1.xy,r1;\nADD r1.xy,r1,$c0;\nDP4 r0.x,r1,$p1;\nDP4 r0.y,r1,$p2;\nDP4 r0.w,r1,$p3;\nRCP r6.w,r0.w;\nMUL r0.xy,r0,r6.w;\nADD r0.xy,r0,$f1;\nSUB r5.xy,r0,$c0;\nFLR r4.xy,r5;\nADD r0.xy,r4,$c0;\nADD r1.xy,r0,$c1;\nADD r2.xy,r0,$c2;\nADD r3.xy,r0,$c3;\nSUB r4.xy,r5,r4;\n##0\nTEX r0,r0,texture[0],RECT;\n##0\nTEX r1,r1,texture[0],RECT;\n##0\nTEX r2,r2,texture[0],RECT;\n##0\nTEX r3,r3,texture[0],RECT;\nLRP r0,r4.xxxx,r1,r0;\nLRP r3,r4.xxxx,r2,r3;\nLRP r4,r4.yyyy,r3,r0;\nMUL r4,r4,$p0;\nCMP $o0,-r6.wwww,r4,0;\nEND\n##MD5=e8e320ed:12e7f96c:37a47e61:fd7395c2\n##SIG=00000000:00000000:00000000:00000000:0004:0004:0007:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
    }

    else
    {
      v14 = "!!ARBfp1.0     \n##LEN=000000030a\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\nPARAM $p3=program.local[3];\nPARAM $c0={0.5,0.5,0,0};\n##%\nTEMP r0,r1;\n##@\nMOV r1,$f0;\nFLR r1.xy,r1;\nADD r1.xy,r1,$c0;\nDP4 r0.x,r1,$p1;\nDP4 r0.y,r1,$p2;\nDP4 r0.w,r1,$p3;\nRCP r1.w,r0.w;\nMUL r0.xy,r0,r1.w;\nADD r0.xy,r0,$f1;\n##0\nTEX r0,r0,texture[0],RECT;\nMUL r0,r0,$p0;\nCMP $o0,-r1.wwww,r0,0;\nEND\n##MD5=bffa8b15:90b4d691:b0bcecc3:a4d117c6\n##SIG=00000000:00000000:00000000:00000000:0001:0004:0002:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
    }

    v15 = "!!ARBfp1.0     \n##LEN=0000000390\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\nPARAM $c0={0.5,0.5,0,0};\nPARAM $c1={1,0,0,0};\nPARAM $c2={1,1,0,0};\nPARAM $c3={0,1,0,0};\n##%\nTEMP r0,r1,r2,r3,r4,r5,r6;\n##@\nRCP r6.x,$f0.w;\nMUL r0.xy,$f0,r6.xxxx;\nSUB r5.xy,r0,$c0;\nFLR r4.xy,r5;\nADD r0.xy,r4,$c0;\nADD r1.xy,r0,$c1;\nADD r2.xy,r0,$c2;\nADD r3.xy,r0,$c3;\nSUB r4.xy,r5,r4;\n##0\nTEX r0,r0,texture[0],RECT;\n##0\nTEX r1,r1,texture[0],RECT;\n##0\nTEX r2,r2,texture[0],RECT;\n##0\nTEX r3,r3,texture[0],RECT;\nLRP r0,r4.xxxx,r1,r0;\nLRP r3,r4.xxxx,r2,r3;\nLRP r4,r4.yyyy,r3,r0;\nMUL r4,r4,$p0;\nCMP $o0,-$f0.wwww,r4,0;\nEND\n##MD5=3b007a19:592e1872:2b7c0a61:288374c5\n##SIG=00000000:00000000:00000000:00000000:0004:0001:0007:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    if (v13)
    {
      v15 = "!!ARBfp1.0     \n##LEN=000000020e\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\n##%\nTEMP r0;\n##@\nRCP r0.x,$f0.w;\nMUL r0.xy,$f0,r0.xxxx;\n##0\nTEX r0,r0,texture[0],RECT;\nMUL r0,r0,$p0;\nCMP $o0,-$f0.wwww,r0,0;\nEND\n##MD5=ba6baee1:6abbea5d:27d71074:2b006e3e\n##SIG=00000000:00000000:00000000:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    }

    if (v9 > 0x6030F)
    {
      return v15;
    }

    else
    {
      return v14;
    }
  }

  return result;
}

void sub_25FD11268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100]((v46 - 128));
  std::vector<HGBinding>::~vector[abi:ne200100]((v46 - 96));
  if (*(v46 - 41) < 0)
  {
    operator delete(*(v46 - 64));
  }

  _Unwind_Resume(a1);
}

uint64_t HGXForm::Bind(HGXForm *this, HGRenderer **a2)
{
  v4 = (*(*this + 288))(this);
  (*(*a2 + 17))(a2, 0, v4, *&v4, *&v4, *&v4);
  if ((*(*a2[18] + 128))(a2[18], 46))
  {
    v5 = (*(**(this + 53) + 272))(*(this + 53));
    if (HGRenderer::GetTarget(a2[18], 393216) <= 0x6030F)
    {
      HGHandler::TexCoord(a2, 0, 0, 0, 0);
      v6 = *v5;
      v7 = v5[4];
      v8 = v5[8];
      v9 = v5[12];
      (*(*a2 + 17))(a2, 1, v6, v7, v8, v9);
      v10 = v5[1];
      v11 = v5[5];
      v12 = v5[9];
      v13 = v5[13];
      (*(*a2 + 17))(a2, 2, v10, v11, v12, v13);
      v14 = v5[3];
      v15 = v5[7];
      v16 = v5[11];
      v17 = v5[15];
      (*(*a2 + 17))(a2, 3, v14, v15, v16, v17);
    }
  }

  return 0;
}

uint64_t HGXForm::BindTexture(HGXForm *this, HGRenderer **a2, int a3)
{
  if (a3)
  {
    return 0;
  }

  if ((*(*a2[18] + 128))(a2[18], 46))
  {
    Target = HGRenderer::GetTarget(a2[18], 393216);
    if (Target <= 0x6030F)
    {
      (*(*a2 + 9))(a2, 0, 0);
      (*(*a2 + 6))(a2, 0, 0);
      HGHandler::TexOffset(a2, 1, 0, 0);
      return 0;
    }

    else
    {
      v7 = Target;
      v8 = (*(**(this + 53) + 272))(*(this + 53));
      HGHandler::TexCoord(a2, 0, 0, 0, v8);
      (*(*a2 + 9))(a2, 0, 0);
      if (v7 > 0x6043F || v7 - 394016 <= 0xEF)
      {
        (*(*a2 + 6))(a2, *(this + 108), *(this + 108));
      }

      else
      {
        (*(*a2 + 6))(a2, 0, 0);
      }

      return 0;
    }
  }

  else
  {
    v9 = (*(**(this + 53) + 272))(*(this + 53));
    (*(*a2 + 9))(a2, 0, 0);
    (*(*a2 + 6))(a2, *(this + 108), *(this + 108));
    HGHandler::TexCoord(a2, 0, 0, 0, v9);
    (*(*a2 + 21))(a2);
    return 0;
  }
}

uint64_t HGXForm::IntermediateFormat(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 520);
  if (v2 <= a2)
  {
    return a2;
  }

  else
  {
    return v2;
  }
}

const char *HGXForm::GetParameterName(HGXForm *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return "bias:min:max:anisotropy";
  }
}

uint64_t HGXForm::SetParameter(HGXForm *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2 != 1)
  {
    if (!a2)
    {
      v10 = (*(*this + 608))(this, a3);
      v11 = (*(*this + 616))(this, a4) | v10;
      v12 = (*(*this + 624))(this, a5);
      return v11 | v12 | (*(*this + 632))(this, a6);
    }

    return 0;
  }

  if (*(this + 130) == a3)
  {
    return 0;
  }

  *(this + 130) = a3;
  return 1;
}

float HGXForm::GetParameter(HGXForm *this, int a2, float *a3)
{
  if (!a2)
  {
    *a3 = *(this + 123);
    a3[1] = *(this + 124);
    a3[2] = *(this + 125);
    result = *(this + 126);
    a3[3] = result;
  }

  return result;
}

uint64_t HGXForm::SetLodBias(HGXForm *this, float a2, uint64_t a3, char *a4)
{
  if (*(this + 123) == a2)
  {
    return 0;
  }

  *(this + 123) = a2;
  HGNode::ClearBits(this, a3, a4);
  return 1;
}

uint64_t HGXForm::SetMinLod(HGXForm *this, float a2, uint64_t a3, char *a4)
{
  if (*(this + 124) == a2)
  {
    return 0;
  }

  *(this + 124) = a2;
  HGNode::ClearBits(this, a3, a4);
  return 1;
}

uint64_t HGXForm::SetMaxLod(HGXForm *this, float a2, uint64_t a3, char *a4)
{
  if (*(this + 125) == a2)
  {
    return 0;
  }

  *(this + 125) = a2;
  HGNode::ClearBits(this, a3, a4);
  return 1;
}

uint64_t HGXForm::SetAnisotropy(HGXForm *this, float a2, uint64_t a3, char *a4)
{
  if (*(this + 126) == a2)
  {
    return 0;
  }

  *(this + 126) = a2;
  HGNode::ClearBits(this, a3, a4);
  return 1;
}

uint64_t HGXForm::SetLodFilter(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a1 + 508) == a2)
  {
    return 0;
  }

  *(a1 + 508) = a2;
  HGNode::ClearBits(a1, a2, a3);
  return 1;
}

uint64_t HGXForm::SetClipDistance(HGXForm *this, float a2, uint64_t a3, char *a4)
{
  if (*(this + 129) == a2)
  {
    return 0;
  }

  *(this + 129) = a2;
  HGNode::ClearBits(this, a3, a4);
  return 1;
}

void HGNodeBuffer::~HGNodeBuffer(HGNodeBuffer *this)
{
  HGBuffer::~HGBuffer(this);

  HGObject::operator delete(v1);
}

void sub_25FD11D94(_Unwind_Exception *a1)
{
  v3 = v2;
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 592);
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 68);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  HGHWBlendFlipped::~HGHWBlendFlipped(v1);
  _Unwind_Resume(a1);
}

uint64_t HGHWMultiBlend::SetInput(HGHWMultiBlend *this, uint64_t a2, HGNode *a3, uint64_t a4, float a5, uint64_t a6)
{
  __asm { FMOV            V1.4S, #1.0 }

  v12 = _Q1;
  return (*(*this + 640))(this, a2, a3, a4, &v12, a6, a5);
}

uint64_t HGHWMultiBlend::SetInput(HGNode *this, uint64_t a2, HGNode *a3, int a4, __int128 *a5, int a6, float a7)
{
  v13 = a2 & 0xFFFFFFF8;
  v14 = (this + 568);
  v15 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 72) - *(this + 71)) >> 4);
  v16 = ((a2 & 0xFFFFFFF8) + 8);
  if (v16 > v15)
  {
    v17 = a3;
    std::vector<HGLayerParams>::__append(this + 568, v16 - v15);
    a3 = v17;
  }

  v18 = *(this + 22);
  if (v18 <= a2)
  {
    if (v18 < a2)
    {
      v32 = a3;
      v19 = HGObject::operator new(0x1A0uLL);
      HGNode::HGNode(v19);
      v20 = *(this + 22);
      if (v20 < a2)
      {
        do
        {
          HGNode::SetInput(this, v20++, v19);
        }

        while (a2 != v20);
      }

      (*(*v19 + 24))(v19);
      v18 = *(this + 22);
      a3 = v32;
    }

    if (v18 < v16)
    {
      v21 = *v14;
      v22 = v13 + 8;
      v23 = v22 - v18;
      if (v23 >= 2)
      {
        v24 = (v23 & 0xFFFFFFFFFFFFFFFELL) + v18;
        v25 = (v21 + 48 * v18 + 56);
        v26 = v23 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v25 - 12) = v18;
          *v25 = v18 + 1;
          v25 += 24;
          v18 += 2;
          v26 -= 2;
        }

        while (v26);
        if (v23 == (v23 & 0xFFFFFFFFFFFFFFFELL))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v24 = v18;
      }

      v27 = (v21 + 48 * v24 + 8);
      do
      {
        *v27 = v24;
        v27 += 12;
        ++v24;
      }

      while (v22 != v24);
    }
  }

LABEL_16:
  result = HGNode::SetInput(this, a2, a3);
  if (a2 >= 1)
  {
    v29 = result;
    (*(*this + 136))(this, a2, 16);
    result = v29;
    v30 = *a5;
    v31 = *(this + 71) + 48 * a2;
    *v31 = a4;
    *(v31 + 4) = a7;
    *(v31 + 8) = a6;
    *(v31 + 16) = v30;
    *(v31 + 32) = 0;
  }

  return result;
}

uint64_t HGHWMultiBlend::SetInput(HGHWMultiBlend *this, uint64_t a2, HGNode *a3, uint64_t a4, float a5)
{
  __asm { FMOV            V1.4S, #1.0 }

  v11 = _Q1;
  return (*(*this + 640))(this, a2, a3, a4, &v11, a2, a5);
}

HGHWMultiBlend *HGHWMultiBlend::GetOutput(HGHWMultiBlend *this, HGRenderer *a2)
{
  HGTraceGuard::HGTraceGuard(v106, "multiblend", 1, "HGHWMultiBlend::GetOutput");
  if ((*(*a2 + 304))(a2))
  {
    goto LABEL_2;
  }

  (*(*this + 592))(this, a2);
  Input = HGRenderer::GetInput(a2, this, 0);
  if (*(this + 22) >= 2)
  {
    v97 = 0;
    v96 = 0;
    v6 = 0;
    v91 = 0;
    v7 = 1;
    while (1)
    {
      v10 = *(this + 71) + 48 * v7;
      *(this + 106) = *v10;
      v11 = *(v10 + 4);
      *(this + 104) = v11;
      *(this + 31) = *(v10 + 16);
      if (v11 == 0.0)
      {
        goto LABEL_8;
      }

      v12 = HGRenderer::GetInput(a2, this, v7);
      DOD = HGRenderer::GetDOD(a2, v12);
      v15 = HGRectIntersection(DOD, v14, *(this + 69), *(this + 70));
      v17 = v16;
      if (HGRectIsNull(v15, v16))
      {
        goto LABEL_8;
      }

      *(*(this + 71) + 48 * v7 + 32) |= 1u;
      v18 = *(v10 + 8);
      if (v18)
      {
        LODWORD(__p[0]) = *(v10 + 8);
        v19 = *(this + 75);
        if (v19)
        {
          v20 = vcnt_s8(v19);
          v20.i16[0] = vaddlv_u8(v20);
          if (v20.u32[0] > 1uLL)
          {
            v21 = v18;
            if (v19 <= v18)
            {
              v21 = v18 % v19;
            }
          }

          else
          {
            v21 = (v19 - 1) & v18;
          }

          v22 = *(*(this + 74) + 8 * v21);
          if (v22)
          {
            v23 = *v22;
            if (v23)
            {
              if (v20.u32[0] < 2uLL)
              {
                v24 = v19 - 1;
                while (1)
                {
                  v26 = v23[1];
                  if (v26 == v18)
                  {
                    if (*(v23 + 4) == v18)
                    {
                      goto LABEL_33;
                    }
                  }

                  else if ((v26 & v24) != v21)
                  {
                    goto LABEL_34;
                  }

                  v23 = *v23;
                  if (!v23)
                  {
                    goto LABEL_34;
                  }
                }
              }

              do
              {
                v25 = v23[1];
                if (v25 == v18)
                {
                  if (*(v23 + 4) == v18)
                  {
LABEL_33:
                    v15 = HGRectUnion(*(v23 + 20), *(v23 + 28), v15, v17);
                    v17 = v27;
                    break;
                  }
                }

                else
                {
                  if (v25 >= v19)
                  {
                    v25 %= v19;
                  }

                  if (v25 != v21)
                  {
                    break;
                  }
                }

                v23 = *v23;
              }

              while (v23);
            }
          }
        }

LABEL_34:
        v100[0] = __p;
        v28 = std::__hash_table<std::__hash_value_type<int,HGRect>,std::__unordered_map_hasher<int,std::__hash_value_type<int,HGRect>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,HGRect>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,HGRect>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 74, __p);
        *(v28 + 20) = v15;
        *(v28 + 28) = v17;
      }

      if (HGHWBlendFlipped::IsHardwareBlendSupported(this, a2))
      {
        *(*(this + 71) + 48 * v7 + 32) |= 2u;
        if (HGNode::DoInplaceHardwareBlending(v12, a2, this, *(this + 104)))
        {
          *(*(this + 71) + 48 * v7 + 32) |= 4u;
        }
      }

      ++v97;
      if (v7 >= 2)
      {
        v29 = *(this + 71);
        v30 = v29 + 48 * v6;
        v31 = v29 + 48 * v7;
        v32 = *(v30 + 32);
        if (*(v30 + 8) == *(v31 + 8))
        {
          *(v30 + 32) = v32 | 8;
          v8 = (v31 + 32);
          v9 = 8;
        }

        else
        {
          if ((v32 & 2) != 0)
          {
            goto LABEL_7;
          }

          v33 = *(v31 + 32);
          v8 = (v31 + 32);
          if ((v33 & 2) != 0)
          {
            goto LABEL_7;
          }

          *(v30 + 32) = v32 | 0x10;
          v91 = 1;
          v9 = 16;
        }

        *v8 |= v9;
      }

LABEL_7:
      v6 = v7;
      v96 = v7;
LABEL_8:
      if (++v7 >= *(this + 22))
      {
        goto LABEL_44;
      }
    }
  }

  v91 = 0;
  v96 = 0;
  v97 = 0;
LABEL_44:
  v34 = atomic_load(HGLogger::_enabled);
  if ((v34 & 1) != 0 && HGLogger::getLevel("multiblend", v5) >= 1)
  {
    v35 = *(this + 22);
    if (v35 >= 2)
    {
      v36 = 0;
      v37 = 1;
      v94 = *(MEMORY[0x277D82818] + 64);
      v95 = *MEMORY[0x277D82818];
      v93 = *(MEMORY[0x277D82818] + 72);
      do
      {
        v38 = *(this + 71);
        v39 = v38 + v36;
        if (*(v38 + v36 + 80))
        {
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v100);
          *(&v103[1].__locale_ + *(v101 - 24)) = 3;
          v40 = MEMORY[0x2666E9B50]();
          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " : [", 4);
          if ((*(v39 + 80) & 2) != 0)
          {
            v42 = "H";
          }

          else
          {
            v42 = " ";
          }

          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, 1);
          if ((*(v39 + 80) & 4) != 0)
          {
            v44 = "I";
          }

          else
          {
            v44 = " ";
          }

          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v44, 1);
          if ((*(v39 + 80) & 8) != 0)
          {
            v46 = "S";
          }

          else
          {
            v46 = " ";
          }

          v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v46, 1);
          if ((*(v39 + 80) & 0x10) != 0)
          {
            v48 = "C";
          }

          else
          {
            v48 = " ";
          }

          v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, 1);
          v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "] p(", 4);
          v51 = MEMORY[0x2666E9B50](v50, *(v38 + v36 + 56));
          v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ") ", 2);
          v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "o(", 2);
          v54 = *v53;
          *(v53 + *(*v53 - 24) + 8) = *(v53 + *(*v53 - 24) + 8) & 0xFFFFFEFB | 4;
          *(v53 + *(v54 - 24) + 16) = 2;
          v55 = std::ostream::operator<<();
          v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ") ", 2);
          BlendModeLabel = HGHWBlendFlipped::GetBlendModeLabel(*(v39 + 48));
          v58 = strlen(BlendModeLabel);
          v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, BlendModeLabel, v58);
          v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "(", 1);
          v61 = MEMORY[0x2666E9B50](v60, *(v39 + 48));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ") ", 2);
          v62 = atomic_load(HGLogger::_enabled);
          if (v62)
          {
            std::stringbuf::str();
            v65 = __p;
            if (v99 < 0)
            {
              v65 = __p[0];
            }

            HGLogger::log("multiblend", 1, "  %s\n", v63, v64, v65);
            if (v99 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v100[0] = v95;
          *(v100 + *(v95 - 24)) = v94;
          v101 = v93;
          v102 = MEMORY[0x277D82878] + 16;
          if (v104 < 0)
          {
            operator delete(v103[7].__locale_);
          }

          v102 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(v103);
          std::iostream::~basic_iostream();
          MEMORY[0x2666E9E10](&v105);
          v35 = *(this + 22);
        }

        ++v37;
        v36 += 48;
      }

      while (v37 < v35);
    }
  }

  if (!v97)
  {
    v4 = Input;
    goto LABEL_103;
  }

  if (v97 == 1)
  {
    v66 = HGObject::operator new(0x220uLL);
    HGHWBlendFlipped::HGHWBlendFlipped(v66);
    v67 = *(this + 68);
    if (v67 == v66)
    {
      if (v66)
      {
        (*(*v66 + 24))(v66);
      }
    }

    else
    {
      if (v67)
      {
        (*(*v67 + 24))(v67);
      }

      *(this + 68) = v66;
    }

    v77 = HGRenderer::GetInput(a2, this, v96);
    (*(**(this + 68) + 120))(*(this + 68), 0, Input);
    (*(**(this + 68) + 120))(*(this + 68), 1, v77);
    v78 = (*(this + 71) + 48 * v96);
    (*(**(this + 68) + 96))(*(this + 68), 0, v78->n128_i32[0], 0.0, 0.0, 0.0);
    (*(**(this + 68) + 96))(*(this + 68), 1, v78->n128_f32[1], 0.0, 0.0, 0.0);
    (*(**(this + 68) + 96))(*(this + 68), 2, 0.0, 0.0, 0.0, 0.0);
    v79 = HGRenderer::GetDOD(a2, Input);
    v81 = HGRectIntersection(v79, v80, *(this + 69), *(this + 70));
    v83 = v82;
    v84 = HGRenderer::GetDOD(a2, v77);
    v86 = HGRectIntersection(v84, v85, *(this + 69), *(this + 70));
    IsEqual = HGRectIsEqual(v81, v83, v86, v87);
    v89.n128_u32[0] = 1.0;
    if (!IsEqual)
    {
      v89.n128_f32[0] = 2.0;
    }

    (*(**(this + 68) + 96))(*(this + 68), 3, v89, 0.0, 0.0, 0.0);
    (*(**(this + 68) + 96))(*(this + 68), 4, *(this + 119), 0.0, 0.0, 0.0);
    (*(**(this + 68) + 96))(*(this + 68), 5, *(this + 105), 0.0, 0.0, 0.0);
    (*(**(this + 68) + 96))(*(this + 68), 6, v78[1], COERCE_FLOAT(HIDWORD(v78[1].n128_u64[0])), COERCE_FLOAT(v78[1].n128_u64[1]), COERCE_FLOAT(HIDWORD(*&v78[1])));
    v4 = *(this + 68);
  }

  else
  {
    if ((v91 & 1) == 0)
    {
LABEL_2:
      v4 = this;
      goto LABEL_103;
    }

    v68 = HGRenderer::GetInput(a2, this, 0);
    v69 = v68;
    if (v68)
    {
      (*(*v68 + 16))(v68);
    }

    if (*(this + 22) >= 2)
    {
      v70 = 0;
      v71 = 1;
      do
      {
        v72 = *(this + 71);
        v73 = v72 + v70;
        if (*(v72 + v70 + 80))
        {
          v74 = HGRenderer::GetInput(a2, this, v71);
          if ((*(v73 + 80) & 0x10) == 0)
          {
            v75 = HGObject::operator new(0x280uLL);
            HGHWMultiBlend::HGHWMultiBlend(v75);
          }

          v76 = HGObject::operator new(0x220uLL);
          HGHWBlendFlipped::HGHWBlendFlipped(v76);
          (*(*v76 + 120))(v76, 0, v69);
          (*(*v76 + 120))(v76, 1, v74);
          (*(*v76 + 96))(v76, 0, *(v73 + 48), 0.0, 0.0, 0.0);
          (*(*v76 + 96))(v76, 1, *(v72 + v70 + 52), 0.0, 0.0, 0.0);
          (*(*v76 + 96))(v76, 2, 0.0, 0.0, 0.0, 0.0);
          (*(*v76 + 96))(v76, 3, 0.0, 0.0, 0.0, 0.0);
          (*(*v76 + 96))(v76, 4, *(this + 119), 0.0, 0.0, 0.0);
          (*(*v76 + 96))(v76, 5, *(this + 105), 0.0, 0.0, 0.0);
          (*(*v76 + 96))(v76, 6, *(v72 + v70 + 64), COERCE_FLOAT(HIDWORD(*(v72 + v70 + 64))), COERCE_FLOAT(*(v72 + v70 + 72)), COERCE_FLOAT(HIDWORD(*(v72 + v70 + 64))));
          if (v69 != v76)
          {
            if (v69)
            {
              (*(*v69 + 24))(v69);
            }

            v69 = v76;
            (*(*v76 + 16))(v76);
          }

          (*(*v76 + 24))(v76);
        }

        ++v71;
        v70 += 48;
      }

      while (v71 < *(this + 22));
    }

    v4 = *(this + 68);
    if (v4 != v69)
    {
      if (v4)
      {
        (*(*v4 + 24))(*(this + 68));
      }

      *(this + 68) = v69;
      if (v69)
      {
        (*(*v69 + 16))(v69);
        v4 = *(this + 68);
      }

      else
      {
        v4 = 0;
      }
    }

    if (v69)
    {
      (*(*v69 + 24))(v69);
    }
  }

LABEL_103:
  HGTraceGuard::~HGTraceGuard(v106);
  return v4;
}

uint64_t HGHWMultiBlend::GetDOD(HGHWMultiBlend *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if ((a3 & 0x80000000) != 0 || *(this + 22) <= a3 || a3 && *(*(this + 71) + 48 * a3 + 4) == 0.0)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HGHWMultiBlend::GetROI(HGHWMultiBlend *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if ((a3 & 0x80000000) != 0 || *(this + 22) <= a3 || a3 && *(*(this + 71) + 48 * a3 + 4) == 0.0)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HGHWMultiBlend::RenderTile(HGNode *this, HGTile *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(this + 22) >= 2)
  {
    v4 = 0;
    v5 = *(a2 + 42);
    v6 = *(v5 + 152);
    v7 = 1;
    do
    {
      if (*(*(this + 71) + v4 + 52) != 0.0)
      {
        Input = HGRenderer::GetInput(v6, this, v7);
        DOD = HGRenderer::GetDOD(v6, Input);
        v11 = HGRectIntersection(DOD, v10, *a2, *(a2 + 1));
        if (!HGRectIsNull(v11, v12))
        {
          isObjectRef = OZChannelBase::isObjectRef(this);
          v15 = *(this + 71);
          v16 = v15 + v4;
          v17 = *(v15 + v4 + 48) & 0xFFFFFFFE;
          v18.i32[0] = *(v15 + v4 + 52);
          if (isObjectRef)
          {
            if (v17 == 36)
            {
              v19 = (v15 + v4);
              *v23.i32 = *v18.i32 * v19[16];
              v22.i32[0] = v23.i32[0];
              *&v23.i32[1] = *(v16 + 52) * v19[17];
              v22.i32[1] = v23.i32[1];
              *&v23.i32[2] = *(v16 + 52) * v19[18];
              v22.i32[2] = v23.i32[2];
              v23.i32[3] = *(v16 + 52);
              v22.i32[3] = v23.i32[3];
            }

            else
            {
              v18 = vdupq_lane_s32(*v18.i8, 0);
              v22 = v18;
              v23 = v18;
            }

            v18.i32[0] = *(this + 105);
            *v14.i32 = 1.0 / *v18.i32;
            v24 = vdupq_lane_s32(v14, 0);
            v25 = v24;
            v26 = vdupq_lane_s32(*v18.i8, 0);
            v27 = v26;
          }

          else
          {
            if (v17 == 36)
            {
              v20 = (v15 + v4);
              *v22.i32 = *v18.i32 * v20[16];
              *&v22.i32[1] = *(v16 + 52) * v20[17];
              *&v22.i32[2] = *(v16 + 52) * v20[18];
              v22.i32[3] = *(v16 + 52);
            }

            else
            {
              v18 = vdupq_lane_s32(*v18.i8, 0);
              v22 = v18;
            }

            v18.i32[0] = *(this + 105);
            *v14.i32 = 1.0 / *v18.i32;
            v23 = vdupq_lane_s32(v14, 0);
            v24 = vdupq_lane_s32(*v18.i8, 0);
          }

          HGRenderer::RenderInput(v6, v5, this, v7, a2 + 96, *a2, *(a2 + 1), 1);
          HGHWBlendFlipped::RenderTile(this, a2, *(*(this + 71) + v4 + 48), v22.i32);
        }
      }

      ++v7;
      v4 += 48;
    }

    while (v7 < *(this + 22));
  }

  return 0;
}

char *HGHWMultiBlend::RenderPage(HGHWMultiBlend *this, HGPage *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 48))(this);
  v59 = (a2 + 24);
  v60 = (a2 + 16);
  snprintf(__str, 0x100uLL, "%s::RenderPage( [%d %d %d %d])", v4, *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
  HGTraceGuard::HGTraceGuard(v63, "gpu", 1, __str);
  v5 = *a2;
  Buffer = *(a2 + 1);
  v7 = (Buffer + 16);
  if (!Buffer)
  {
    v7 = (a2 + 32);
  }

  v53 = *v7;
  Input = HGRenderer::GetInput(v5, this, *(this + 107));
  if (Buffer)
  {
    (*(*Buffer + 16))(Buffer);
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(v5, *(a2 + 1), v53, 0, (*(this + 4) >> 12) & 1, *(a2 + 248));
    *(a2 + 1) = Buffer;
  }

  *&v71.var0 = *v60;
  *&v71.var2 = *v59;
  NodeBitmap = HGGPURenderer::GetNodeBitmap(v5, Input, v71, Buffer, 1u);
  v10 = NodeBitmap;
  if (NodeBitmap && NodeBitmap == Buffer)
  {
    HGRenderer::DotLogInplaceRendering(v5, Input);
  }

  v11 = *(this + 22);
  if (v11 < 2)
  {
    v49 = 0;
    if (!Buffer)
    {
LABEL_82:
      if (v49)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

LABEL_81:
    (*(*Buffer + 24))(Buffer);
    goto LABEL_82;
  }

  v56 = v10;
  v57 = 0;
  v12 = 0;
  v58 = 0;
  v55 = 0;
  v51 = *(this + 106);
  v52 = *(this + 31);
  v13 = *(this + 104);
  v14 = 1;
  v10 = Buffer;
  do
  {
    v15 = *(this + 71);
    v16 = v15 + v12;
    if (*(v15 + v12 + 52) != 0.0)
    {
      v17 = HGRenderer::GetInput(v5, this, v14);
      DOD = HGRenderer::GetDOD(v5, v17);
      v20 = HGRectIntersection(DOD, v19, *v60, *v59);
      v61 = v21;
      v62 = v20;
      if (HGRectIsNull(v20, v21))
      {
        goto LABEL_14;
      }

      *(this + 106) = *(v16 + 48);
      *(this + 104) = *(v16 + 52);
      *(this + 31) = *(v15 + v12 + 64);
      if (HGHWBlendFlipped::IsHardwareBlendSupported(this, v5))
      {
        if (!v58 && v56 && v56 != v10)
        {
          *&v66.var0 = *v60;
          *&v66.var2 = *v59;
          v57 = HGGPURenderer::ConvertToGLTexture(v5, v66, v56);
        }

        if (!v10)
        {
          v10 = HGGPURenderer::CreateBuffer(v5, *(a2 + 1), v53, 0, (*(this + 4) >> 12) & 1, *(a2 + 248));
          *(a2 + 1) = v10;
          v55 = *(v15 + v12 + 56);
        }

        (*(*v5 + 144))(v5, v10);
        if (!v58 && v56 != v10)
        {
          (*(*v5 + 152))(v5, 0, v57, 0, 0);
          *&v67.var0 = *v60;
          *&v67.var2 = *v59;
          HGGPURenderer::Copy(v5, v67, 0, v22);
          (*(*v5 + 152))(v5, 0, 0, 0, 0);
          if (v56)
          {
            (*(*v56 + 24))(v56);
          }

          v56 = 0;
        }

        v23 = *(this + 104);
        v24 = v23 != 1.0;
        if (HGNode::DoInplaceHardwareBlending(v17, v5, this, v23))
        {
          (*(*v17 + 240))(v17);
          if (*(this + 119))
          {
            v25 = 41;
          }

          else
          {
            v25 = *(this + 106);
          }

          v40 = HGBlendingInfo::Get(v25);
          (*(*v17 + 248))(v17, v40);
          (*(*v17 + 280))(v17, *(this + 104));
          (*(*v17 + 264))(v17, this + 496);
          *&v74.var2 = v61;
          *&v74.var0 = v62;
          v39 = HGGPURenderer::GetNodeBitmap(v5, v17, v74, v10, 1u);
          HGNode::DisableInplaceHardwareBlending(v17);
          HGRenderer::DotLogHWBlending(v5, v17, this, 1);
          v24 = 0;
          if (!v39)
          {
            goto LABEL_11;
          }
        }

        else
        {
          *&v73.var2 = v61;
          *&v73.var0 = v62;
          v39 = HGGPURenderer::GetNodeBitmap(v5, v17, v73, 0, 1u);
          if (!v39)
          {
            goto LABEL_11;
          }
        }

        if (v39 != v10)
        {
          *&v69.var2 = v61;
          *&v69.var0 = v62;
          v41 = HGGPURenderer::ConvertToGLTexture(v5, v69, v39);
          (*(*v5 + 144))(v5, v10);
          (*(*v5 + 152))(v5, 0, v41, 0, 0);
          if (v24)
          {
            v42 = (*(*this + 600))(this, v5);
            v43 = (*(*v5 + 376))(v5, v42, this);
            *(this + 481) = 1;
            v44 = v61;
            *(a2 + 36) = v62;
            *(a2 + 44) = v44;
            *(a2 + 21) = v41;
            HGNode::PageBegin(this, a2, 0, v43);
            *(this + 481) = 0;
          }

          else
          {
            v43 = 0;
          }

          (*(*this + 240))(this);
          if (*(this + 119))
          {
            v45 = 41;
          }

          else
          {
            v45 = *(this + 106);
          }

          v46 = HGBlendingInfo::Get(v45);
          (*(*this + 248))(this, v46);
          (*(*this + 264))(this, this + 496);
          (*(*this + 344))(this);
          *&v48.var2 = v61;
          *&v48.var0 = v62;
          if (v43)
          {
            HGGPURenderer::Rect(v5, v43, v48, 1);
          }

          else
          {
            *&v70.var0 = v62;
            *&v70.var2 = v61;
            HGGPURenderer::Copy(v5, v70, 0, v47);
          }

          (*(*this + 352))(this);
          HGNode::DisableInplaceHardwareBlending(this);
          if (v43)
          {
            (*(*this + 496))(this, a2, 0, v43);
          }

          (*(*v5 + 152))(v5, 0, 0, 0, 0);
          (*(*v41 + 24))(v41);
          *(a2 + 21) = 0;
          *(a2 + 22) = 0;
          HGRenderer::DotLogHWBlending(v5, v17, this, 0);
          goto LABEL_12;
        }

LABEL_11:
        if (!v39)
        {
LABEL_13:
          ++v58;
LABEL_14:
          v11 = *(this + 22);
          goto LABEL_15;
        }

LABEL_12:
        (*(*v39 + 24))(v39);
        goto LABEL_13;
      }

      v26 = v15 + v12;
      v27 = *(v15 + v12 + 56);
      if (!v58)
      {
        v28 = v56;
        if (!v56)
        {
LABEL_37:
          if (v55 != v27 && v58 != 0 || v28 == v10)
          {
            (*(*v5 + 144))(v5, 0);
            (*(*v5 + 144))(v5, v10);
            if (v57)
            {
              (*(*v57 + 24))(v57);
            }

            v57 = (*(*v5 + 328))(v5);
            (*(*v5 + 144))(v5, 0);
            if (v10)
            {
              (*(*v10 + 24))(v10);
              v10 = 0;
            }
          }

          Program = HGHWBlendFlipped::GetProgram(this, v5);
          v54 = v27;
          *&v72.var2 = v61;
          *&v72.var0 = v62;
          NodeTexture = HGGPURenderer::GetNodeTexture(v5, v17, v72, 0, 1u);
          v33 = v55;
          if (!v10)
          {
            v10 = HGGPURenderer::CreateBuffer(v5, *(a2 + 1), v53, 0, (*(this + 4) >> 12) & 1, *(a2 + 248));
            *(a2 + 1) = v10;
            v33 = *(v26 + 56);
          }

          (*(*v5 + 144))(v5, v10);
          v34 = (*(*v5 + 376))(v5, Program, this);
          (*(*v5 + 152))(v5, 0, v57, 0, 0);
          (*(*v5 + 152))(v5, 1, NodeTexture, 0, 0);
          *(a2 + 36) = *v60;
          v35 = v61;
          *(a2 + 52) = v62;
          *(a2 + 60) = v35;
          *(a2 + 21) = v57;
          *(a2 + 22) = NodeTexture;
          HGNode::PageBegin(this, a2, 0, v34);
          v36 = (a2 + 16);
          if (v55 == v54)
          {
            v36 = &v62;
          }

          *&v37.var0 = *v36;
          v38 = (a2 + 24);
          if (v55 == v54)
          {
            v38 = &v61;
          }

          *&v37.var2 = *v38;
          HGGPURenderer::Rect(v5, v34, v37, 2);
          (*(*this + 496))(this, a2, 0, v34);
          (*(*v5 + 152))(v5, 0, 0, 0, 0);
          (*(*v5 + 152))(v5, 1, 0, 0, 0);
          (*(*NodeTexture + 24))(NodeTexture);
          *(a2 + 21) = 0;
          *(a2 + 22) = 0;
          v55 = v33;
          goto LABEL_13;
        }

        *&v68.var0 = *v60;
        *&v68.var2 = *v59;
        v57 = HGGPURenderer::ConvertToGLTexture(v5, v68, v56);
      }

      v28 = v56;
      goto LABEL_37;
    }

LABEL_15:
    ++v14;
    v12 += 48;
  }

  while (v14 < v11);
  *(this + 106) = v51;
  *(this + 104) = v13;
  *(this + 31) = v52;
  if (!v58)
  {
    Buffer = v10;
    v10 = v56;
    v49 = v57;
    if (!Buffer)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v49 = v57;
  if (v56)
  {
    (*(*v56 + 24))(v56);
  }

  if (v57)
  {
LABEL_83:
    (*(*v49 + 24))(v49);
  }

LABEL_84:
  HGTraceGuard::~HGTraceGuard(v63);
  return v10;
}

HGBitmap *HGHWMultiBlend::RenderPageMetal(HGHWMultiBlend *this, HGPage *a2)
{
  v183 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 48))(this);
  v171 = (a2 + 24);
  v172 = (a2 + 16);
  snprintf(__str, 0x100uLL, "%s::RenderPageMetal( [%d %d %d %d])", v4, *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
  HGTraceGuard::HGTraceGuard(v180, "gpu", 1, __str);
  v5 = *a2;
  Buffer = *(a2 + 1);
  v7 = (Buffer + 16);
  if (!Buffer)
  {
    v7 = (a2 + 32);
  }

  v161 = *v7;
  Input = HGRenderer::GetInput(v5, this, *(this + 107));
  v9 = (*(*v5 + 128))(v5, 46);
  if (!Buffer || (Buffer[12] & 1) != 0)
  {
    Buffer = HGGPURenderer::CreateBuffer(v5, *(a2 + 1), v161, 1, 0, *(a2 + 248));
  }

  else
  {
    (*(*Buffer + 16))(Buffer);
  }

  v166 = v5;
  v10 = HGGPURenderer::ConvertToMetalTexture(v5, Buffer);
  v11 = HGObject::operator new(0x80uLL);
  HGBuffer::HGBuffer(v11, *(Buffer + 20), v10);
  (*(*v10 + 24))(v10);
  v14 = atomic_load(HGLogger::_enabled);
  if (v14)
  {
    HGLogger::log("multiblend", 2, "RENDER INPUT : GetNodeBitmap(0)\n", v12, v13);
  }

  *&v188.var0 = *v172;
  *&v188.var2 = *v171;
  v15 = v5;
  NodeBitmap = HGGPURenderer::GetNodeBitmap(v5, Input, v188, v11, 1u);
  v17 = NodeBitmap;
  if (NodeBitmap && NodeBitmap == v11)
  {
    HGRenderer::DotLogInplaceRendering(v5, Input);
  }

  v18 = *(this + 106);
  v19 = *(this + 31);
  v20 = *(this + 104);
  *v177 = 0u;
  *__p = 0u;
  v179 = 1065353216;
  v21 = *(this + 22);
  if (v21 < 2)
  {
    v151 = 0;
    v152 = 1;
    *(this + 106) = v18;
    *(this + 104) = v20;
    *(this + 31) = v19;
    if (v11)
    {
LABEL_256:
      (*(*v11 + 24))(v11);
    }
  }

  else
  {
    v158 = v9;
    v159 = v18;
    v160 = v19;
    v170 = v11;
    v164 = Buffer;
    v165 = v17;
    v162 = 0;
    v168 = 0;
    v163 = 0;
    for (i = 1; i < v21; ++i)
    {
      v23 = *(this + 71) + 48 * i;
      if (*(v23 + 4) != 0.0)
      {
        v169 = HGRenderer::GetInput(v15, this, i);
        DOD = HGRenderer::GetDOD(v15, v169);
        v26 = HGRectIntersection(DOD, v25, *v172, *v171);
        v175 = v27;
        v176 = v26;
        if (!HGRectIsNull(v26, v27))
        {
          v167 = v23;
          if (v177[1])
          {
            v30 = vcnt_s8(v177[1]);
            v30.i16[0] = vaddlv_u8(v30);
            if (v30.u32[0] > 1uLL)
            {
              v31 = i;
              if (v177[1] <= i)
              {
                v31 = i % v177[1];
              }
            }

            else
            {
              v31 = (v177[1] + 0x7FFFFFFF) & i;
            }

            v32 = *(v177[0] + v31);
            if (v32)
            {
              v33 = *v32;
              if (v33)
              {
                if (v30.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v35 = v33[1];
                    if (v35 == i)
                    {
                      if (i == *(v33 + 4))
                      {
                        goto LABEL_40;
                      }
                    }

                    else if ((v35 & (v177[1] - 1)) != v31)
                    {
                      goto LABEL_42;
                    }

                    v33 = *v33;
                    if (!v33)
                    {
                      goto LABEL_42;
                    }
                  }
                }

                do
                {
                  v34 = v33[1];
                  if (v34 == i)
                  {
                    if (i == *(v33 + 4))
                    {
LABEL_40:
                      v36 = 0;
                      v37 = atomic_load(HGLogger::_enabled);
                      if ((v37 & 1) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    if (v34 >= v177[1])
                    {
                      v34 %= v177[1];
                    }

                    if (v34 != v31)
                    {
                      break;
                    }
                  }

                  v33 = *v33;
                }

                while (v33);
              }
            }
          }

LABEL_42:
          v36 = 1;
          v38 = atomic_load(HGLogger::_enabled);
          if ((v38 & 1) == 0)
          {
            goto LABEL_46;
          }

LABEL_43:
          v39 = "YES";
          if (v36)
          {
            v39 = "NO";
          }

          HGLogger::log("multiblend", 2, "layer #%d -- input already rendered ? %s\n", v28, v29, i, v39);
LABEL_46:
          if (v36)
          {
            HGTraceGuard::HGTraceGuard(&v173, "multiblend", 1, "PreRenderInputs");
            if (__p[1])
            {
              v42 = __p[0];
              if (__p[0])
              {
                do
                {
                  v74 = *v42;
                  v75 = v42[3];
                  if (v75)
                  {
                    (*(*v75 + 24))(v75);
                  }

                  operator delete(v42);
                  v42 = v74;
                }

                while (v74);
              }

              __p[0] = 0;
              if (v177[1])
              {
                bzero(v177[0], 8 * v177[1]);
              }

              __p[1] = 0;
            }

            v174 = i;
            if (i < *(this + 22))
            {
              v43 = 0;
              v44 = i;
              do
              {
                v45 = *(this + 71) + 48 * v44;
                if ((*(v45 + 32) & 1) == 0)
                {
                  v46 = atomic_load(HGLogger::_enabled);
                  if (v46)
                  {
                    HGLogger::log("multiblend", 2, "layer #%d -- null layer\n", v40, v41, v174);
                  }

                  goto LABEL_54;
                }

                v47 = HGRenderer::GetInput(v15, this, v44);
                v48 = HGRenderer::GetDOD(v15, v47);
                v50 = HGRectIntersection(v48, v49, *v172, *v171);
                v52 = v51;
                if (HGRectIsNull(v50, v51))
                {
                  v53 = atomic_load(HGLogger::_enabled);
                  if (v53)
                  {
                    HGLogger::log("multiblend", 2, "layer #%d -- null ROI\n", v40, v41, v174);
                  }

                  goto LABEL_54;
                }

                v54 = a2;
                v55 = v174;
                v56 = *(v45 + 32);
                v57 = *(v45 + 8);
                if (i == v174 && (v56 & 8) != 0)
                {
                  v58 = 1;
                  v59 = atomic_load(HGLogger::_enabled);
                  if (v59)
                  {
                    goto LABEL_72;
                  }
                }

                else
                {
                  if (v57)
                  {
                    v60 = v57 == v43;
                  }

                  else
                  {
                    v60 = 0;
                  }

                  v58 = v60;
                  v61 = atomic_load(HGLogger::_enabled);
                  if (v61)
                  {
LABEL_72:
                    v62 = "N";
                    if (i == v174)
                    {
                      v63 = "Y";
                    }

                    else
                    {
                      v63 = "N";
                    }

                    if ((v56 & 2) != 0)
                    {
                      v64 = "Y";
                    }

                    else
                    {
                      v64 = "N";
                    }

                    if (v58)
                    {
                      v65 = "Y";
                    }

                    else
                    {
                      v65 = "N";
                    }

                    if ((v56 & 4) != 0)
                    {
                      v62 = "Y";
                    }

                    HGLogger::log("multiblend", 2, "next layer #%d -- newGroup(%s), hardware(%s), sharedPass(%s), inplace(%s)\n", v40, v41, v174, v63, v64, v65, v62);
                  }
                }

                v66 = atomic_load(HGLogger::_enabled);
                if (!((i == v55) | (v56 >> 1) & 1 | v58 & 1) || (v56 & 4) != 0)
                {
                  a2 = v54;
                  v15 = v166;
                  if (v66)
                  {
                    HGLogger::log("multiblend", 2, "  break. done rendering inputs (total = %lu).\n", v40, v41, __p[1]);
                  }

                  break;
                }

                v15 = v166;
                if (v66)
                {
                  HGLogger::log("multiblend", 2, "  RENDER INPUT : GetNodeBitmap(%d)\n", v40, v41, v174);
                }

                *&v189.var0 = v50;
                *&v189.var2 = v52;
                v67 = HGGPURenderer::GetNodeBitmap(v166, v47, v189, 0, 1u);
                *&v184.var0 = v50;
                *&v184.var2 = v52;
                v70 = HGGPURenderer::ConvertToMetalTexture(v166, v184, v67);
                a2 = v54;
                v71 = atomic_load(HGLogger::_enabled);
                if (v71)
                {
                  HGLogger::log("multiblend", 2, "    result bitmap : %p [%d %d %d %d]\n", v68, v69, v67, *(v67 + 5), *(v67 + 6), *(v67 + 7), *(v67 + 8));
                }

                if (v70)
                {
                  (*(*v70 + 16))(v70);
                }

                v181 = &v174;
                v72 = std::__hash_table<std::__hash_value_type<int,HGRef<HGBitmap>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,HGRef<HGBitmap>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,HGRef<HGBitmap>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,HGRef<HGBitmap>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v177, &v174);
                v73 = v72[3];
                if (v73 == v70)
                {
                  if (v70)
                  {
                    (*(*v70 + 24))(v70);
                  }
                }

                else
                {
                  if (v73)
                  {
                    (*(*v73 + 24))(v73);
                  }

                  v72[3] = v70;
                }

                (*(*v70 + 24))(v70);
                (*(*v67 + 24))(v67);
                v43 = v57;
LABEL_54:
                v44 = v174 + 1;
                v174 = v44;
              }

              while (v44 < *(this + 22));
            }

            HGTraceGuard::~HGTraceGuard(&v173);
          }

          *(this + 106) = *v167;
          *(this + 104) = v167[1];
          v76 = (v167 + 4);
          *(this + 31) = *(v167 + 1);
          IsHardwareBlendSupported = HGHWBlendFlipped::IsHardwareBlendSupported(this, v15);
          v80 = v167[2];
          if (IsHardwareBlendSupported)
          {
            v81 = atomic_load(HGLogger::_enabled);
            if (v81)
            {
              v82 = "YES";
              if (v163 != v80)
              {
                v82 = "NO";
              }

              HGLogger::log("multiblend", 2, "  RENDER LAYER %d -- hw blending (same pass = %s)\n", v78, v79, i, v82);
            }

            if (!v168 && v165 && v165 != v170)
            {
              v162 = HGGPURenderer::ConvertToMetalTexture(v15, v165);
            }

            if (v164)
            {
              v83 = v163;
              if (v168)
              {
                goto LABEL_147;
              }

LABEL_143:
              if (v165 != v170)
              {
                *&v190.var0 = *v172;
                *&v190.var2 = *v171;
                HGGPURenderer::CopyMetal(v15, v170, v190, v162);
                if (v165)
                {
                  (*(*v165 + 24))(v165);
                }

                v165 = 0;
              }
            }

            else
            {
              v164 = HGGPURenderer::CreateBuffer(v15, *(a2 + 1), v161, 1, 0, *(a2 + 248));
              if (v170)
              {
                (*(*v170 + 24))(v170);
              }

              v88 = HGGPURenderer::ConvertToMetalTexture(v15, v164);
              v170 = HGObject::operator new(0x80uLL);
              HGBuffer::HGBuffer(v170, *(v164 + 20), v88);
              (*(*v88 + 24))(v88);
              v83 = v167[2];
              if (!v168)
              {
                goto LABEL_143;
              }
            }

LABEL_147:
            v89 = *(this + 104);
            v90 = v89 != 1.0;
            if (HGNode::DoInplaceHardwareBlending(v169, v15, this, v89))
            {
              v93 = atomic_load(HGLogger::_enabled);
              if (v93)
              {
                HGLogger::log("multiblend", 2, "  great! using in-place input rendering as well!\n", v91, v92);
              }

              (*(*v169 + 240))(v169);
              v94 = HGBlendingInfo::Get(*v167);
              (*(*v169 + 248))(v169, v94);
              (*(*v169 + 280))(v169, *(this + 104));
              (*(*v169 + 264))(v169, this + 496);
              *&v191.var2 = v175;
              *&v191.var0 = v176;
              v95 = HGGPURenderer::GetNodeBitmap(v15, v169, v191, v170, 1u);
              HGNode::DisableInplaceHardwareBlending(v169);
              HGRenderer::DotLogHWBlending(v15, v169, this, 1);
              v90 = 0;
              if (v95)
              {
                v96 = v95 == v170;
              }

              else
              {
                v96 = 1;
              }

              if (v96)
              {
                goto LABEL_155;
              }

LABEL_225:
              *&v186.var2 = v175;
              *&v186.var0 = v176;
              v134 = HGGPURenderer::ConvertToMetalTexture(v15, v186, v95);
              if (v90)
              {
                v135 = (*(*this + 608))(this, v15);
                if (v135 && (v136 = (*(**a2 + 376))(*a2, v135, this)) != 0)
                {
                  if (v139)
                  {
                    v140 = atomic_load(HGLogger::_enabled);
                    if (v140)
                    {
                      HGLogger::log("multiblend", 2, "  hw blend render pass -- with opacity\n", v137, v138);
                    }

                    *(&v173.__r_.__value_.__s + 23) = 13;
                    strcpy(&v173, "mblendInplace");
                    HGMetalHandler::SetDebugLabel(v139, &v173);
                    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v173.__r_.__value_.__l.__data_);
                    }

                    HGMetalHandler::EnableBlending(v139);
                    v141 = HGBlendingInfo::Get(*v167);
                    HGMetalHandler::SetBlendingInfo(v139, v141);
                    HGMetalHandler::SetBlendingColor(v139, v76);
                    (*(v139->__r_.__value_.__r.__words[0] + 136))(v139, 0, *(this + 104), *(this + 104), *(this + 104), *(this + 104));
                    HGMetalHandler::BindBuffer(v139, v170);
                    HGMetalHandler::BindTexture(v139, 0, v134);
                    v142 = v175;
                    v143 = v176;
                    *&v187.var0 = v176;
                    *&v187.var2 = v175;
                    HGMetalHandler::InitTextureUnit(v139, v187, 0);
                    (*(v139->__r_.__value_.__r.__words[0] + 72))(v139, 0, 0);
                    (*(v139->__r_.__value_.__r.__words[0] + 48))(v139, 0, 0);
                    HGHandler::TexCoord(v139, 0, 0, 0, 0);
                    if (!v158)
                    {
                      (*(v139->__r_.__value_.__r.__words[0] + 168))(v139);
                    }

                    (*(v139->__r_.__value_.__r.__words[0] + 40))(v139);
                    (*(v139->__r_.__value_.__r.__words[0] + 192))(v139, v143, v142, 1);
                  }
                }

                else
                {
                  v139 = 0;
                }

                (*(*this + 496))(this, a2, 0, v139);
                (*(*v134 + 24))(v134);
              }

              else
              {
                v144 = atomic_load(HGLogger::_enabled);
                if (v144)
                {
                  HGLogger::log("multiblend", 2, "  hw blend render pass -- no opacity\n", v132, v133);
                }

                v145 = v175;
                v146 = v176;
                v147 = HGBlendingInfo::Get(*v167);
                *&v194.var0 = v146;
                *&v194.var2 = v145;
                HGGPURenderer::CopyMetal(v15, v170, v194, v134, v147, v76, 1);
                (*(*v134 + 24))(v134);
              }

              *(a2 + 21) = 0;
              *(a2 + 22) = 0;
              HGRenderer::DotLogHWBlending(v15, v169, this, 0);
              goto LABEL_242;
            }

            if (!v177[1])
            {
              goto LABEL_221;
            }

            v97 = vcnt_s8(v177[1]);
            v97.i16[0] = vaddlv_u8(v97);
            if (v97.u32[0] > 1uLL)
            {
              v98 = i;
              if (v177[1] <= i)
              {
                v98 = i % v177[1];
              }
            }

            else
            {
              v98 = (v177[1] + 0x7FFFFFFF) & i;
            }

            v126 = *(v177[0] + v98);
            if (!v126 || (v127 = *v126) == 0)
            {
LABEL_221:
              *&v193.var2 = v175;
              *&v193.var0 = v176;
              v130 = HGGPURenderer::GetNodeBitmap(v15, v169, v193, 0, 1u);
              v95 = v130;
              if (v130)
              {
                v131 = v130 == v170;
              }

              else
              {
                v131 = 1;
              }

              if (!v131)
              {
                goto LABEL_225;
              }

              goto LABEL_155;
            }

            if (v97.u32[0] < 2uLL)
            {
              while (1)
              {
                v129 = v127[1];
                if (v129 == i)
                {
                  if (i == *(v127 + 4))
                  {
                    goto LABEL_245;
                  }
                }

                else if ((v129 & (v177[1] - 1)) != v98)
                {
                  goto LABEL_221;
                }

                v127 = *v127;
                if (!v127)
                {
                  goto LABEL_221;
                }
              }
            }

            while (1)
            {
              v128 = v127[1];
              if (v128 == i)
              {
                if (i == *(v127 + 4))
                {
LABEL_245:
                  v149 = v127[3];
                  if (!v149)
                  {
                    goto LABEL_15;
                  }

                  (*(*v149 + 16))(v149);
                  v95 = v127[3];
                  if (v95)
                  {
                    v150 = v95 == v170;
                  }

                  else
                  {
                    v150 = 1;
                  }

                  if (!v150)
                  {
                    goto LABEL_225;
                  }

LABEL_155:
                  if (!v95)
                  {
LABEL_15:
                    ++v168;
                    v163 = v83;
                    goto LABEL_16;
                  }

LABEL_242:
                  (*(*v95 + 24))(v95);
                  goto LABEL_15;
                }
              }

              else
              {
                if (v128 >= v177[1])
                {
                  v128 %= v177[1];
                }

                if (v128 != v98)
                {
                  goto LABEL_221;
                }
              }

              v127 = *v127;
              if (!v127)
              {
                goto LABEL_221;
              }
            }
          }

          v84 = atomic_load(HGLogger::_enabled);
          if (v84)
          {
            v85 = "YES";
            if (v163 != v80)
            {
              v85 = "NO";
            }

            HGLogger::log("multiblend", 2, "BLEND LAYER %d -- shader blending (same pass = %s)\n", v78, v79, i, v85);
          }

          if (v168 || !v165)
          {
            v87 = v163 == v80 || v168 == 0;
            if (!v87 || v165 == v170)
            {
              if (v162)
              {
                (*(*v162 + 24))(v162);
              }

              v162 = HGGPURenderer::ConvertToMetalTexture(v15, v170);
              if (v170)
              {
                (*(*v170 + 24))(v170);
              }

              v86 = v164;
              if (v164)
              {
LABEL_138:
                (*(*v164 + 24))(v86);
              }

LABEL_139:
              v170 = 0;
              v164 = 0;
            }
          }

          else
          {
            v162 = HGGPURenderer::ConvertToMetalTexture(v15, v165);
            if (v170)
            {
              if (v170 == v165)
              {
                (*(*v170 + 24))();
                v86 = v164;
                if (v164)
                {
                  goto LABEL_138;
                }

                goto LABEL_139;
              }
            }

            else
            {
              v170 = 0;
            }
          }

          v99 = (*(*v15 + 128))(v15, 32);
          (*(*v15 + 120))(v15, 32, 396048);
          Program = HGHWBlendFlipped::GetProgram(this, v15);
          (*(*v15 + 120))(v15, 32, v99);
          if (!v177[1])
          {
            goto LABEL_181;
          }

          v101 = vcnt_s8(v177[1]);
          v101.i16[0] = vaddlv_u8(v101);
          if (v101.u32[0] > 1uLL)
          {
            v102 = i;
            if (v177[1] <= i)
            {
              v102 = i % v177[1];
            }
          }

          else
          {
            v102 = (v177[1] + 0x7FFFFFFF) & i;
          }

          v103 = *(v177[0] + v102);
          if (!v103 || (v104 = *v103) == 0)
          {
LABEL_181:
            v108 = v175;
            v107 = v176;
            *&v192.var0 = v176;
            *&v192.var2 = v175;
            v109 = HGGPURenderer::GetNodeBitmap(v15, v169, v192, 0, 1u);
            goto LABEL_182;
          }

          if (v101.u32[0] < 2uLL)
          {
            while (1)
            {
              v106 = v104[1];
              if (v106 == i)
              {
                if (i == *(v104 + 4))
                {
                  goto LABEL_243;
                }
              }

              else if ((v106 & (v177[1] - 1)) != v102)
              {
                goto LABEL_181;
              }

              v104 = *v104;
              if (!v104)
              {
                goto LABEL_181;
              }
            }
          }

          while (1)
          {
            v105 = v104[1];
            if (v105 == i)
            {
              if (i == *(v104 + 4))
              {
LABEL_243:
                v148 = v104[3];
                if (v148)
                {
                  (*(*v148 + 16))(v148);
                  v109 = v104[3];
                }

                else
                {
                  v109 = 0;
                }

                v108 = v175;
                v107 = v176;
LABEL_182:
                *&v185.var0 = v107;
                *&v185.var2 = v108;
                v110 = HGGPURenderer::ConvertToMetalTexture(v15, v185, v109);
                (*(*v109 + 24))(v109);
                if (v164)
                {
                  v83 = v163;
                  if (v162)
                  {
                    goto LABEL_184;
                  }

LABEL_188:
                  v111 = 0;
                }

                else
                {
                  v164 = HGGPURenderer::CreateBuffer(v166, *(a2 + 1), v161, 1, 0, *(a2 + 248));
                  if (v170)
                  {
                    (*(*v170 + 24))(v170);
                  }

                  v112 = HGGPURenderer::ConvertToMetalTexture(v166, v164);
                  v170 = HGObject::operator new(0x80uLL);
                  HGBuffer::HGBuffer(v170, *(v164 + 20), v112);
                  (*(*v112 + 24))(v112);
                  v83 = v167[2];
                  if (!v162)
                  {
                    goto LABEL_188;
                  }

LABEL_184:
                  v111 = HGObject::operator new(0x80uLL);
                  HGTexture::HGTexture(v111, *(v162 + 20), v162);
                }

                *(a2 + 21) = v111;
                v113 = HGObject::operator new(0x80uLL);
                HGTexture::HGTexture(v113, *(v110 + 20), v110);
                *(a2 + 22) = v113;
                v114 = (*(*v166 + 376))(v166, Program, this);
                if (v114)
                {
                  if (v115)
                  {
                    v118 = v115;
                    v119 = atomic_load(HGLogger::_enabled);
                    if (v119)
                    {
                      HGLogger::log("multiblend", 2, "  dual inputs blend shader pass\n", v116, v117);
                    }

                    *(&v173.__r_.__value_.__s + 23) = 13;
                    strcpy(&v173, "mblend2Inputs");
                    HGMetalHandler::SetDebugLabel(v118, &v173);
                    if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v173.__r_.__value_.__l.__data_);
                    }

                    HGMetalHandler::DisableBlending(v118);
                    (*(v118->__r_.__value_.__r.__words[0] + 136))(v118, 0, *(this + 104), *(this + 104), *(this + 104), *(this + 104));
                    HGMetalHandler::BindBuffer(v118, v170);
                    HGMetalHandler::BindTexture(v118, 0, *(a2 + 21));
                    HGMetalHandler::BindTexture(v118, 1, *(a2 + 22));
                    *(a2 + 36) = *v172;
                    v120 = v175;
                    *(a2 + 52) = v176;
                    *(a2 + 60) = v120;
                    HGNode::PageBegin(this, a2, 0, v118);
                    v121 = v172;
                    if (v163 == v80)
                    {
                      v121 = &v176;
                    }

                    v122 = *v121;
                    v123 = v171;
                    if (v163 == v80)
                    {
                      v123 = &v175;
                    }

                    (*(v118->__r_.__value_.__r.__words[0] + 192))(v118, v122, *v123, 2);
                    (*(*this + 496))(this, a2, 0, v118);
                  }
                }

                (*(*v110 + 24))(v110);
                v124 = *(a2 + 21);
                if (v124)
                {
                  (*(*v124 + 24))(v124);
                }

                v125 = *(a2 + 22);
                if (v125)
                {
                  (*(*v125 + 24))(v125);
                }

                *(a2 + 21) = 0;
                *(a2 + 22) = 0;
                v15 = v166;
                goto LABEL_15;
              }
            }

            else
            {
              if (v105 >= v177[1])
              {
                v105 %= v177[1];
              }

              if (v105 != v102)
              {
                goto LABEL_181;
              }
            }

            v104 = *v104;
            if (!v104)
            {
              goto LABEL_181;
            }
          }
        }

LABEL_16:
        v21 = *(this + 22);
      }
    }

    v152 = v168 == 0;
    Buffer = v164;
    v17 = v165;
    v151 = v162;
    v11 = v170;
    *(this + 106) = v159;
    *(this + 104) = v20;
    *(this + 31) = v160;
    if (v170)
    {
      goto LABEL_256;
    }
  }

  if (v152)
  {
    if (Buffer)
    {
      (*(*Buffer + 24))(Buffer);
    }

    if (v151)
    {
      (*(*v151 + 24))(v151);
    }
  }

  else
  {
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }

    if (!v151)
    {
      v17 = Buffer;
      v153 = __p[0];
      if (!__p[0])
      {
        goto LABEL_267;
      }

      goto LABEL_273;
    }

    (*(*v151 + 24))(v151);
    v17 = Buffer;
  }

  v153 = __p[0];
  if (!__p[0])
  {
    goto LABEL_267;
  }

  do
  {
LABEL_273:
    v156 = *v153;
    v157 = v153[3];
    if (v157)
    {
      (*(*v157 + 24))(v157);
    }

    operator delete(v153);
    v153 = v156;
  }

  while (v156);
LABEL_267:
  v154 = v177[0];
  v177[0] = 0;
  if (v154)
  {
    operator delete(v154);
  }

  HGTraceGuard::~HGTraceGuard(v180);
  return v17;
}

void sub_25FD15F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  HGTraceGuard::~HGTraceGuard(&__p);
  std::unordered_map<int,HGRef<HGBitmap>>::~unordered_map[abi:ne200100](&a38);
  HGTraceGuard::~HGTraceGuard(&a44);
  _Unwind_Resume(a1);
}

uint64_t HGHWMultiBlend::PrepareOutputNode(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(result + 552) = a3;
  *(result + 560) = a4;
  return result;
}

void HGHWMultiBlend::~HGHWMultiBlend(HGHWMultiBlend *this)
{
  HGHWMultiBlend::~HGHWMultiBlend(this);

  HGObject::operator delete(v1);
}

{
  *this = &unk_287224F08;
  v2 = *(this + 76);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(this + 74);
  *(this + 74) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 71);
  if (v5)
  {
    *(this + 72) = v5;
    operator delete(v5);
  }

  v6 = *(this + 68);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  HGHWBlendFlipped::~HGHWBlendFlipped(this);
}

void std::vector<HGLayerParams>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 48 * a2;
      __asm { FMOV            V0.4S, #1.0 }

      do
      {
        *v3 = 0x3F80000000000000;
        *(v3 + 8) = 0;
        *(v3 + 16) = _Q0;
        *(v3 + 32) = 0;
        v3 += 48;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v6 = v5 + a2;
    if (v5 + a2 > 0x555555555555555)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v15 = 48 * v5;
    v16 = 48 * v5 + 48 * a2;
    __asm { FMOV            V0.4S, #1.0 }

    v18 = 48 * v5;
    do
    {
      *v18 = 0x3F80000000000000;
      *(v18 + 8) = 0;
      *(v18 + 16) = _Q0;
      *(v18 + 32) = 0;
      v18 += 48;
    }

    while (v18 != v16);
    v19 = *a1;
    v20 = *(a1 + 8) - *a1;
    v21 = v15 - v20;
    memcpy((v15 - v20), *a1, v20);
    *a1 = v21;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v19)
    {

      operator delete(v19);
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<int,HGRect>,std::__unordered_map_hasher<int,std::__hash_value_type<int,HGRect>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,HGRect>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,HGRect>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t std::unordered_map<int,HGRef<HGBitmap>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        (*(*v6 + 24))(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,HGRef<HGBitmap>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,HGRef<HGBitmap>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,HGRef<HGBitmap>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,HGRef<HGBitmap>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (*(v7 + 4) == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_25FD16A74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<int,HGRef<HGBitmap>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,HGRef<HGBitmap>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<int,HGRef<HGBitmap>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,HGRef<HGBitmap>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        v5 = v2;
        (*(*v4 + 24))(v2[3]);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void HGLightWrapBlend::HGLightWrapBlend(HGLightWrapBlend *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_2872251C0;
  *(v2 + 408) = 0x412000003F800000;
  *(v2 + 432) = 9;
  *(v2 + 440) = 0;
  *(v2 + 448) = 0;
  v3 = HGObject::operator new(0x1C0uLL);
  HGLightWrap::HGLightWrap(v3);
  v4 = *(this + 55);
  if (v4 == v3)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }
  }

  else
  {
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    *(this + 55) = v3;
  }

  v5 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v5);
  v6 = *(this + 56);
  if (v6 == v5)
  {
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 24))(v6);
    }

    *(this + 56) = v5;
  }
}

void sub_25FD16C6C(_Unwind_Exception *a1)
{
  v3 = v2;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v5 = *(v1 + 448);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(v1 + 440);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGLightWrapBlend::~HGLightWrapBlend(HGNode *this)
{
  *this = &unk_2872251C0;
  v2 = *(this + 56);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 55);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2872251C0;
  v2 = *(this + 56);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 55);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGLightWrapBlend::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  v5 = Input;
  if (Input)
  {
    (*(*Input + 16))(Input);
  }

  v6 = HGRenderer::GetInput(a2, this, 1u);
  v7 = v6;
  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  v8 = HGObject::operator new(0x280uLL);
  HGHWMultiBlend::HGHWMultiBlend(v8);
  (*(*v8 + 120))(v8, 0, v5);
  (*(*v8 + 624))(v8, 1, v7, *(this + 108), *(this + 102));
  v9 = HGObject::operator new(0x220uLL);
  HGBlur::HGBlur(v9);
  (*(*v9 + 96))(v9, 0, *(this + 103), *(this + 103), 0.0, 0.0);
  (*(*v9 + 120))(v9, 0, v5);
  v10 = HGObject::operator new(0x1B0uLL);
  HGGamma::HGGamma(v10);
  HGGamma::SetPremultiplyState(v10, 0);
  v11 = *(this + 104);
  if (v11 < 0.06)
  {
    v11 = 0.06;
  }

  v12 = 1.0 / v11;
  (*(*v10 + 96))(v10, 0, v12, v12, v12, 1.0);
  if (*(this + 105) != 1.0)
  {
    v13 = HGObject::operator new(0x1F0uLL);
    HGColorMatrix::HGColorMatrix(v13);
  }

  (*(*v10 + 120))(v10, 0, v9);
  (*(**(this + 55) + 120))(*(this + 55), 1, v10);
  v14 = HGObject::operator new(0x220uLL);
  HGBlur::HGBlur(v14);
  (*(*v14 + 96))(v14, 0, *(this + 103), *(this + 103), *(this + 103), *(this + 103));
  (*(*v14 + 120))(v14, 0, v7);
  (*(**(this + 55) + 120))(*(this + 55), 0, v14);
  (*(**(this + 55) + 120))(*(this + 55), 2, v7);
  (*(**(this + 55) + 96))(*(this + 55), 0, 1.0, 1.0, 1.0, 1.0);
  (*(**(this + 56) + 120))(*(this + 56), 0, v8);
  (*(**(this + 56) + 624))(*(this + 56), 1, *(this + 55), *(this + 107), *(this + 106));
  v15 = *(this + 56);
  (*(*v14 + 24))(v14);
  (*(*v10 + 24))(v10);
  (*(*v9 + 24))(v9);
  (*(*v8 + 24))(v8);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  return v15;
}

void sub_25FD17594(_Unwind_Exception *a1)
{
  HGObject::operator delete(v7);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  (*(*v5 + 24))(v5);
  (*(*v4 + 24))(v4);
  (*(*v3 + 24))(v3);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t HGLightWrapBlend::SetParameter(HGNode *this, int a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 1)
  {
    *(this + 102) = a3;
  }

  else if (!a2)
  {
    *(this + 108) = vcvtms_u32_f32(a3);
  }

  return HGNode::SetParameter(this, a2, a3, a4, a5, a6, a7);
}

uint64_t HGLightWrapBlend::SetLightWrapParams(uint64_t result, int a2, float a3, float a4, float a5, float a6)
{
  *(result + 412) = a3;
  *(result + 416) = a4;
  *(result + 420) = a5;
  *(result + 428) = a2;
  *(result + 424) = a6;
  return result;
}

void HGUserExecUnit::HGUserExecUnit(HGUserExecUnit *this, HGRenderQueue *a2)
{
  *this = &unk_287225428;
  *(this + 2) = a2;
  *(this + 6) = ++HGUserExecUnit::_count;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

HGSynchronizable *HGUserExecUnit::RunLoop(HGUserExecUnit *this)
{
  pthread_setname_np("com.apple.helium-render-queue-exec-unit-user");
  while (!HGRenderQueue::IsShuttingDown(*(this + 2)))
  {
    v5 = 0;
    if (HGRenderQueue::GetUserJob(*(this + 2), this, &v5))
    {
      *(this + 2) = 2;
      HGUserJob::SetState(v5, 3);
      HGUserJob::CallNotifyFunc(v5);
      v4 = *(*(this + 2) + 472);
      HGSynchronizable::Lock(v4);
      std::list<HGGPUReadbackJob *>::remove((*(this + 2) + 400), &v5);
      HGSynchronizable::Unlock(v4);
      (*(*v5 + 24))(v5);
      *(this + 2) = 1;
    }
  }

  v2 = *(*(this + 2) + 472);
  HGSynchronizable::Lock(v2);
  *(this + 2) = 3;
  return HGSynchronizable::Unlock(v2);
}

void sub_25FD179AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HGUserExecUnit::StartRunLoop(HGUserExecUnit *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = (this + 32);
  if (*(this + 4))
  {
    return 0;
  }

  pthread_attr_init(&v5);
  pthread_attr_setdetachstate(&v5, 2);
  v4 = pthread_create(v1, &v5, StartUserExecUnitFunc, this);
  pthread_attr_destroy(&v5);
  return v4;
}

void HGUserJob::HGUserJob(HGUserJob *this)
{
  HGObject::HGObject(this);
  *v1 = &unk_287225458;
  *(v1 + 12) = 0x100000005;
  *(v1 + 20) = 0u;
  *(v1 + 36) = 0u;
  *(v1 + 52) = 0u;
  *(v1 + 68) = 0;
}

void HGUserJob::~HGUserJob(void **this)
{
  *this = &unk_287225458;
  if (this[6])
  {
    v2 = this;
    free(this[6]);
    this = v2;
    v1 = vars8;
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_287225458;
  if (this[6])
  {
    v2 = this;
    free(this[6]);
    this = v2;
    v1 = vars8;
  }

  HGObject::~HGObject(this);
}

void HGUserJob::~HGUserJob(HGUserJob *this)
{
  *this = &unk_287225458;
  v2 = *(this + 6);
  if (v2)
  {
    free(v2);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

uint64_t HGUserJob::CallNotifyFunc(HGUserJob *this)
{
  v2 = mach_absolute_time();
  v3 = *(this + 8);
  if (v3)
  {
    v3(this);
  }

  v4 = mach_absolute_time();
  *(this + 3) = HGTiming::GetMachTimeConversionFactor(v4) * (v4 - v2);
  result = HGRenderQueue::GetDebugQueueVerboseMask(*(this + 7));
  if ((result & 0x200) != 0)
  {
    v6 = *(this + 4);
    if (v6 > 1)
    {
      if (v6 > 3)
      {
        if (v6 == 4)
        {
          return printf("UserJob<%p>::CallNotifyFunc():kStateCancelled  : %5.1f ms\n");
        }

        else if (v6 == 5)
        {
          return printf("UserJob<%p>::CallNotifyFunc():kStateFinished  : %5.1f ms\n");
        }
      }

      else if (v6 == 2)
      {
        return printf("UserJob<%p>::CallNotifyFunc():kStateQueued  : %5.1f ms\n");
      }

      else
      {
        return printf("UserJob<%p>::CallNotifyFunc():kStateExecuting  : %5.1f ms\n");
      }
    }

    else if (v6 < 0)
    {
      if (v6 == -1000)
      {
        return printf("UserJob<%p>::CallNotifyFunc():kStateError  : %5.1f ms\n");
      }

      else if (v6 == -999)
      {
        return printf("UserJob<%p>::CallNotifyFunc():kStateEnqueueFail  : %5.1f ms\n");
      }
    }

    else if (v6)
    {
      if (v6 == 1)
      {
        return printf("UserJob<%p>::CallNotifyFunc():kStateInitialized  : %5.1f ms\n");
      }
    }

    else
    {
      return printf("UserJob<%p>::CallNotifyFunc():kStateNoError  : %5.1f ms\n");
    }
  }

  return result;
}

void HGDotGraph::HGDotGraph(HGDotGraph *this)
{
  *(this + 1) = 0;
  *this = this + 8;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = this + 32;
  *(this + 28) = 256;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
}

void HGDotGraph::~HGDotGraph(HGDotGraph *this)
{
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>>>::destroy(this + 24, *(this + 4));
  std::__tree<std::__value_type<unsigned long,HGDotGraph::Node>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,HGDotGraph::Node>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,HGDotGraph::Node>>>::destroy(this, *(this + 1));
}

void HGDotGraph::begin(HGDotGraph *this, const char *a2)
{
  if (*(this + 56) == 1)
  {
    HGLogger::setLevel("dot", 1);
    v4 = fopen(a2, "w");
    *(this + 6) = v4;
    if (!v4)
    {
      v7 = atomic_load(HGLogger::_enabled);
      if (v7)
      {
        HGLogger::log("dot", 1, "ERROR - invalid path for dot files : %s\n", v5, v6, a2);
      }

      v8 = atomic_load(HGLogger::_enabled);
      if (v8)
      {
        HGLogger::log("dot", 1, "  Use HG_ENV_DOT_GRAPH_OUTPUT_DIR or HGRenderer::SetDotGraphOutputDir() with a valid directory.\n", v5, v6);
      }
    }
  }

  if (*(this + 56) == 1)
  {
    v9 = *(this + 6);
    if (v9)
    {
      fwrite("digraph rendertree\n", 0x13uLL, 1uLL, v9);
      v10 = *(this + 6);

      fwrite("{\n", 2uLL, 1uLL, v10);
    }
  }
}

void HGDotGraph::end(HGDotGraph *this)
{
  if (*(this + 56) == 1 && *(this + 6))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v8);
    HGDotGraph::_streamAll(this, &v9);
    v2 = *(this + 6);
    std::stringbuf::str();
    if (v7 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    fputs(p_p, v2);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    fwrite("}\n", 2uLL, 1uLL, *(this + 6));
    v8[0] = *MEMORY[0x277D82818];
    v4 = *(MEMORY[0x277D82818] + 72);
    *(v8 + *(v8[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v9 = v4;
    v10 = MEMORY[0x277D82878] + 16;
    if (v12 < 0)
    {
      operator delete(v11[7].__locale_);
    }

    v10 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v11);
    std::iostream::~basic_iostream();
    MEMORY[0x2666E9E10](&v13);
  }

  v5 = *(this + 6);
  if (v5)
  {
    fclose(v5);
    *(this + 6) = 0;
  }

  std::__tree<std::__value_type<unsigned long,HGDotGraph::Node>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,HGDotGraph::Node>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,HGDotGraph::Node>>>::destroy(this, *(this + 1));
  *this = this + 8;
  *(this + 2) = 0;
  *(this + 1) = 0;
  std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>>>::destroy(this + 24, *(this + 4));
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  *(this + 4) = 0;
}

void sub_25FD18120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a12, MEMORY[0x277D82818]);
  MEMORY[0x2666E9E10](&a28);
  _Unwind_Resume(a1);
}

void HGDotGraph::_streamAll(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  v5 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      HGDotGraph::Node::Node(&v20 + 8, (v5 + 5));
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "_0x", 3);
      *(v6 + *(*v6 - 24) + 8) = *(v6 + *(*v6 - 24) + 8) & 0xFFFFFFB5 | 8;
      v7 = MEMORY[0x2666E9B80]();
      v8 = operator<<(v7, &v20 + 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ";\n", 2);
      if (v28 < 0)
      {
        operator delete(__p);
        if ((v26 & 0x80000000) == 0)
        {
LABEL_6:
          if ((v24 & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_12;
        }
      }

      else if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      operator delete(v25);
      if ((v24 & 0x80000000) == 0)
      {
LABEL_7:
        if ((v22.__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_13;
      }

LABEL_12:
      operator delete(v22.__r_.__value_.__r.__words[2]);
      if ((v22.__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
      {
LABEL_8:
        v9 = v5[1];
        if (v9)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

LABEL_13:
      operator delete(v21);
      v9 = v5[1];
      if (v9)
      {
        do
        {
LABEL_14:
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
        goto LABEL_3;
      }

      do
      {
LABEL_16:
        v10 = v5[2];
        v11 = *v10 == v5;
        v5 = v10;
      }

      while (!v11);
LABEL_3:
      v5 = v10;
    }

    while (v10 != v4);
  }

  v12 = *(a1 + 24);
  if (v12 != (a1 + 32))
  {
    do
    {
      v20 = *(v12 + 2);
      v21 = v12[6];
      if (*(v12 + 79) < 0)
      {
        std::string::__init_copy_ctor_external(&v22, v12[7], v12[8]);
      }

      else
      {
        v22 = *(v12 + 7);
      }

      v23 = *(v12 + 80);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "_0x", 3);
      *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 8;
      v14 = MEMORY[0x2666E9B80]();
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " -> _0x", 7);
      v16 = MEMORY[0x2666E9B80](v15, *(&v20 + 1));
      v17 = operator<<(v16, &v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ";\n", 2);
      if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
        v18 = v12[1];
        if (v18)
        {
          do
          {
LABEL_29:
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
          goto LABEL_21;
        }
      }

      else
      {
        v18 = v12[1];
        if (v18)
        {
          goto LABEL_29;
        }
      }

      do
      {
        v19 = v12[2];
        v11 = *v19 == v12;
        v12 = v19;
      }

      while (!v11);
LABEL_21:
      v12 = v19;
    }

    while (v19 != (a1 + 32));
  }

  if (*(a1 + 57))
  {
    operator new();
  }
}

void sub_25FD184C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGDotGraph::node(uint64_t result, unint64_t a2, uint64_t a3, int a4)
{
  if (*(result + 56) == 1)
  {
    v4 = *(result + 8);
    if (!v4)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v5 = v4;
        v6 = v4[4];
        if (v6 <= a2)
        {
          break;
        }

        v4 = *v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if (v6 >= a2)
      {
        break;
      }

      v4 = v5[1];
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    *(v5 + 10) = a4;
    if (a3)
    {

      JUMPOUT(0x2666E99D0);
    }
  }

  return result;
}

uint64_t HGDotGraph::dashed(uint64_t this, unint64_t a2)
{
  if (*(this + 56) == 1)
  {
    v2 = *(this + 8);
    if (!v2)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v3 = v2;
        v4 = v2[4];
        if (v4 <= a2)
        {
          break;
        }

        v2 = *v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      if (v4 >= a2)
      {
        break;
      }

      v2 = v3[1];
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    *(v3 + 149) = 1;
  }

  return this;
}

uint64_t HGDotGraph::outline(uint64_t this, unint64_t a2, const char *a3)
{
  if (*(this + 56) == 1)
  {
    for (i = *(this + 8); i; i = v5[1])
    {
      while (1)
      {
        v5 = i;
        v6 = i[4];
        if (v6 <= a2)
        {
          break;
        }

        i = *v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if (v6 >= a2)
      {
        *(v5 + 148) = 1;

        JUMPOUT(0x2666E99D0);
      }
    }

LABEL_8:
    operator new();
  }

  return this;
}

uint64_t HGDotGraph::filled(uint64_t this, unint64_t a2, const char *a3)
{
  if (*(this + 56) == 1)
  {
    for (i = *(this + 8); i; i = v5[1])
    {
      while (1)
      {
        v5 = i;
        v6 = i[4];
        if (v6 <= a2)
        {
          break;
        }

        i = *v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if (v6 >= a2)
      {

        JUMPOUT(0x2666E99D0);
      }
    }

LABEL_8:
    operator new();
  }

  return this;
}

uint64_t HGDotGraph::fontColor(uint64_t this, unint64_t a2, const char *a3)
{
  if (a3 && (*(this + 56) & 1) != 0)
  {
    for (i = *(this + 8); i; i = v4[1])
    {
      while (1)
      {
        v4 = i;
        v5 = i[4];
        if (v5 <= a2)
        {
          break;
        }

        i = *v4;
        if (!*v4)
        {
          goto LABEL_9;
        }
      }

      if (v5 >= a2)
      {

        JUMPOUT(0x2666E99D0);
      }
    }

LABEL_9:
    operator new();
  }

  return this;
}

uint64_t HGDotGraph::fontSize(uint64_t this, unint64_t a2, int a3)
{
  if (a3 && (*(this + 56) & 1) != 0)
  {
    v3 = *(this + 8);
    if (!v3)
    {
LABEL_9:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v4 = v3;
        v5 = v3[4];
        if (v5 <= a2)
        {
          break;
        }

        v3 = *v4;
        if (!*v4)
        {
          goto LABEL_9;
        }
      }

      if (v5 >= a2)
      {
        break;
      }

      v3 = v4[1];
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    *(v4 + 36) = a3;
  }

  return this;
}

uint64_t HGDotGraph::record(uint64_t this, unint64_t a2, const char *a3)
{
  if (*(this + 56) == 1)
  {
    v3 = *(this + 8);
    if (!v3)
    {
LABEL_8:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v4 = v3;
        v5 = v3[4];
        if (v5 <= a2)
        {
          break;
        }

        v3 = *v4;
        if (!*v4)
        {
          goto LABEL_8;
        }
      }

      if (v5 >= a2)
      {
        break;
      }

      v3 = v4[1];
      if (!v3)
      {
        goto LABEL_8;
      }
    }

    *(v4 + 10) = 4;
    if (a3)
    {

      JUMPOUT(0x2666E99D0);
    }
  }

  return this;
}

uint64_t HGDotGraph::link(uint64_t this, unint64_t a2, unint64_t a3, const char *a4, char a5)
{
  if (*(this + 56) != 1)
  {
    return this;
  }

  v5 = *(this + 32);
  if (!v5)
  {
LABEL_10:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v5;
      v7 = v5[4];
      if (v7 <= a2)
      {
        break;
      }

LABEL_4:
      v5 = *v6;
      if (!*v6)
      {
        goto LABEL_10;
      }
    }

    if (v7 >= a2)
    {
      break;
    }

LABEL_9:
    v5 = v6[1];
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v8 = v6[5];
  if (v8 > a3)
  {
    goto LABEL_4;
  }

  if (v8 < a3)
  {
    goto LABEL_9;
  }

  *(v6 + 80) = a5;
  if (a4)
  {

    JUMPOUT(0x2666E99D0);
  }

  return this;
}

uint64_t HGDotGraph::linkStyle(uint64_t result, unint64_t a2, unint64_t a3, int a4, int a5)
{
  if (*(result + 56) == 1)
  {
    v5 = *(result + 32);
    if (!v5)
    {
LABEL_10:
      operator new();
    }

    while (1)
    {
      v6 = v5;
      v7 = v5[4];
      if (v7 > a2)
      {
        goto LABEL_4;
      }

      if (v7 < a2)
      {
        goto LABEL_9;
      }

      v8 = v6[5];
      if (v8 > a3)
      {
LABEL_4:
        v5 = *v6;
        if (!*v6)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v8 >= a3)
        {
          if (a4)
          {
            *(v6 + 12) = a5;
          }

          else
          {
            *(v6 + 13) = a5;
          }

          return result;
        }

LABEL_9:
        v5 = v6[1];
        if (!v5)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return result;
}

uint64_t HGDotGraph::beginRank(uint64_t this)
{
  if (*(this + 56) == 1)
  {
    if (*(this + 48))
    {
      JUMPOUT(0x2666E99D0);
    }
  }

  return this;
}

std::string *HGDotGraph::rank(std::string *this, const void *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  if (this[2].__r_.__value_.__s.__data_[8] == 1)
  {
    if (this[2].__r_.__value_.__r.__words[0])
    {
      v2 = this;
      snprintf(__str, 0x20uLL, "_%p", a2);
      std::string::append((v2 + 64), __str);
      return std::string::append((v2 + 64), " ");
    }
  }

  return this;
}

uint64_t HGDotGraph::endRank(uint64_t this)
{
  if (*(this + 56) == 1 && *(this + 48))
  {
    v2 = (this + 64);
    v3 = this;
    std::string::append((this + 64), "}\n");
    v4 = *(v3 + 48);
    if (*(v3 + 87) < 0)
    {
      v5 = *v2;
    }

    else
    {
      v5 = v2;
    }

    return fputs(v5, v4);
  }

  return this;
}

void *operator<<(void *a1, unsigned int *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [shape=", 8);
  v5 = strlen(operator<<(std::ostream &,HGDotGraph::Node const&)::shapeStrings[*a2]);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, operator<<(std::ostream &,HGDotGraph::Node const&)::shapeStrings[*a2], v5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "]", 1);
  if (*(a2 + 55) >= 0)
  {
    v7 = *(a2 + 55);
  }

  else
  {
    v7 = *(a2 + 5);
  }

  if ((a2[27] & 1) != 0 || (*(a2 + 109) & 1) != 0 || v7)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [style=", 9);
    if (*(a2 + 108) == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "bold,", 5);
      if (*(a2 + 109) != 1)
      {
LABEL_9:
        if (!v7)
        {
LABEL_11:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 2);
          goto LABEL_12;
        }

LABEL_10:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "filled,", 7);
        goto LABEL_11;
      }
    }

    else if (*(a2 + 109) != 1)
    {
      goto LABEL_9;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "dashed,", 7);
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_12:
  v8 = *(a2 + 31);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 2);
  }

  if (v8)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [color=", 9);
    v10 = *(a2 + 31);
    if (v10 >= 0)
    {
      v11 = (a2 + 2);
    }

    else
    {
      v11 = *(a2 + 1);
    }

    if (v10 >= 0)
    {
      v12 = *(a2 + 31);
    }

    else
    {
      v12 = *(a2 + 2);
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "]", 2);
  }

  v14 = *(a2 + 55);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a2 + 5);
  }

  if (v14)
  {
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [fillcolor=", 13);
    v16 = *(a2 + 55);
    if (v16 >= 0)
    {
      v17 = (a2 + 8);
    }

    else
    {
      v17 = *(a2 + 4);
    }

    if (v16 >= 0)
    {
      v18 = *(a2 + 55);
    }

    else
    {
      v18 = *(a2 + 5);
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "]", 2);
  }

  v20 = *(a2 + 79);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a2 + 8);
  }

  if (v20)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [fontcolor=", 13);
    v22 = *(a2 + 79);
    if (v22 >= 0)
    {
      v23 = (a2 + 14);
    }

    else
    {
      v23 = *(a2 + 7);
    }

    if (v22 >= 0)
    {
      v24 = *(a2 + 79);
    }

    else
    {
      v24 = *(a2 + 8);
    }

    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "]", 2);
  }

  if (a2[26])
  {
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [fontsize=", 11);
    v27 = MEMORY[0x2666E9B60](v26, a2[26]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "]", 1);
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [label=", 9);
  v31 = *(a2 + 10);
  v30 = a2 + 20;
  v29 = v31;
  v32 = *(v30 + 23);
  if (v32 >= 0)
  {
    v33 = v30;
  }

  else
  {
    v33 = v29;
  }

  if (v32 >= 0)
  {
    v34 = *(v30 + 23);
  }

  else
  {
    v34 = *(v30 + 1);
  }

  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v33, v34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "]", 2);
  return a1;
}

{
  v5 = *a2;
  v4 = a2[1];
  if (*a2)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = " [dir=both]";
LABEL_8:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v7, 11);
    goto LABEL_9;
  }

  if (!(v5 | v4))
  {
    v7 = " [dir=none]";
    goto LABEL_8;
  }

  if (!v5 && v4)
  {
    v7 = " [dir=back]";
    goto LABEL_8;
  }

LABEL_9:
  if (*a2)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [arrowhead=", 12);
    v9 = strlen(operator<<(std::ostream &,HGDotGraph::Edge const&)::arrowStrings[*a2]);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, operator<<(std::ostream &,HGDotGraph::Edge const&)::arrowStrings[*a2], v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "]", 1);
  }

  if (a2[1])
  {
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [arrowtail=", 12);
    v12 = strlen(operator<<(std::ostream &,HGDotGraph::Edge const&)::arrowStrings[a2[1]]);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, operator<<(std::ostream &,HGDotGraph::Edge const&)::arrowStrings[a2[1]], v12);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "]", 1);
  }

  if (*(a2 + 32) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [style=dotted]", 15);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " [headlabel=", 13);
  v17 = *(a2 + 1);
  v16 = a2 + 2;
  v15 = v17;
  v18 = *(v16 + 23);
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 1);
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v19, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "]", 2);
  return a1;
}

uint64_t HGDotGraph::Node::Node(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 32);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 32) = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
LABEL_6:
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  v8 = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 104) = v8;
  return a1;
}

void sub_25FD195C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 31) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 32));
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v2);
  _Unwind_Resume(exception_object);
}

uint64_t std::pair<unsigned long const,HGDotGraph::Node>::~pair(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 40));
      if ((*(a1 + 39) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 87) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 64));
  if (*(a1 + 63) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*(a1 + 16));
  return a1;
}

void std::__tree<std::__value_type<unsigned long,HGDotGraph::Node>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,HGDotGraph::Node>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,HGDotGraph::Node>>>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long,HGDotGraph::Node>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,HGDotGraph::Node>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,HGDotGraph::Node>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long,HGDotGraph::Node>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,HGDotGraph::Node>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,HGDotGraph::Node>>>::destroy(a1, *(a2 + 8));
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
      if ((*(a2 + 119) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(a2 + 95) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 119) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 96));
    if ((*(a2 + 95) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a2 + 71) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    operator delete(*(a2 + 72));
    if ((*(a2 + 71) & 0x80000000) == 0)
    {
LABEL_6:
      v4 = a2;

LABEL_8:
      operator delete(v4);
      return;
    }

LABEL_13:
    operator delete(*(a2 + 48));
    v4 = a2;

    goto LABEL_8;
  }
}

void std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>,std::__map_value_compare<std::tuple<unsigned long,unsigned long>,std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>,std::less<std::tuple<unsigned long,unsigned long>>,true>,std::allocator<std::__value_type<std::tuple<unsigned long,unsigned long>,HGDotGraph::Edge>>>::destroy(a1, *(a2 + 1));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

void HGGamutMap::HGGamutMap(HGGamutMap *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872254A8;
  *(v1 + 456) = 0;
  *(v1 + 464) = 0;
  *(v1 + 468) = 0;
  *(v1 + 416) = 0;
  *(v1 + 424) = 0;
  *(v1 + 408) = 0;
  *(v1 + 432) = 0;
  *(v1 + 436) = xmmword_260817720;
}

void HGGamutMap::~HGGamutMap(CGColorSpaceRef *this)
{
  *this = &unk_2872254A8;
  CGColorSpaceRelease(this[51]);
  CGColorSpaceRelease(this[52]);
  v2 = this[57];
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2872254A8;
  CGColorSpaceRelease(this[51]);
  CGColorSpaceRelease(this[52]);
  v2 = this[57];
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

void HGGamutMap::SetConversion(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  *(a1 + 424) = 1;
  *(a1 + 428) = a2;
  *(a1 + 436) = a3;
  *(a1 + 444) = a4;
  *(a1 + 432) = a5;
  *(a1 + 440) = a6;
  *(a1 + 448) = a7;
  CGColorSpaceRelease(*(a1 + 408));
  *(a1 + 408) = 0;
  CGColorSpaceRelease(*(a1 + 416));
  *(a1 + 416) = 0;
}

HGNode *HGGamutMap::GetOutput(HGNode *this, HGRenderer *a2)
{
  result = HGRenderer::GetInput(a2, this, 0);
  v4 = result;
  if (*(this + 468) == 1)
  {
    v5 = HGObject::operator new(0x1A0uLL);
    HgcGamutDebug::HgcGamutDebug(v5);
  }

  v6 = *(this + 51);
  if (v6 && (v7 = *(this + 52)) != 0)
  {
    if (v6 != v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!*(this + 106))
    {
      return result;
    }

    if (v6 != *(this + 52))
    {
      goto LABEL_10;
    }
  }

  if (*(this + 106))
  {
LABEL_10:
    if (result)
    {
      (*(*result + 16))(result);
    }

    v8 = HGObject::operator new(0x320uLL);
    HGColorConform::HGColorConform(v8);
    (*(*v8 + 120))(v8, 0, v4);
    v10 = *(this + 106);
    if (v10)
    {
      if (v10 == 1)
      {
        HGColorConform::SetConversion(v8, *(this + 107), *(this + 109), *(this + 111), *(this + 108), *(this + 110), *(this + 112));
      }

      else
      {
        HGColorConform::SetConversion(v8, v10, v9);
      }
    }

    else
    {
      HGColorConform::SetConversion(v8, *(this + 51), *(this + 52));
    }

    v11 = HGObject::operator new(0x1A0uLL);
    HgcGamutMap::HgcGamutMap(v11);
  }

  return result;
}

void sub_25FD19D8C(_Unwind_Exception *a1)
{
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  (*(*v2 + 24))(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

void HGRenderContext::HGRenderContext(HGRenderContext *this)
{
  HGObject::HGObject(this);
  *v1 = &unk_287225710;
  v1[2] = 0;
  v1[3] = 0;
  v1[14] = 0;
  v1[15] = 0;
  v1[16] = 0;
  operator new();
}

void sub_25FD19FC0(_Unwind_Exception *a1)
{
  v5 = v3;
  MEMORY[0x2666E9F00](v5, 0x10A1C40BBCAB520);
  v7 = *v4;
  if (*v4)
  {
    *(v1 + 15) = v7;
    operator delete(v7);
  }

  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v2);
  HGObject::~HGObject(v1);
  _Unwind_Resume(a1);
}

void HGRenderContext::~HGRenderContext(HGRenderContext *this)
{
  *this = &unk_287225710;
  v2 = *(this + 8);
  if (v2)
  {
    if ((*(v2 + 8) & 1) == 0)
    {
      HGSynchronizable::Unlock(*v2);
    }

    MEMORY[0x2666E9F00](v2, 0x1020C405F07FB98);
  }

  v3 = *(this + 7);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    *(this + 15) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = this;
  }

  else
  {
    v6 = this;
  }

  HGObject::~HGObject(v6);
}

uint64_t HGRenderContext::Lock(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t HGRenderContext::Unlock(uint64_t this)
{
  v1 = *(this + 64);
  if (v1)
  {
    v2 = this;
    if ((*(v1 + 8) & 1) == 0)
    {
      HGSynchronizable::Unlock(*v1);
    }

    this = MEMORY[0x2666E9F00](v1, 0x1020C405F07FB98);
    *(v2 + 64) = 0;
  }

  return this;
}

void HGRenderContext::PushRenderTime(HGRenderContext *this, float a2)
{
  v2 = this;
  v9 = a2;
  v5 = *(this + 14);
  v4 = *(this + 15);
  v3 = this + 112;
  if (*(v3 - 1) < ((v4 - v5) >> 2))
  {
    v6 = v4 - (v5 + 4);
    if (v4 != v5 + 4)
    {
      v7 = v3;
      v8 = v2;
      memmove(v5, (v5 + 4), v4 - (v5 + 4));
      v2 = v8;
      v3 = v7;
    }

    *(v2 + 15) = v5 + v6;
  }

  std::vector<float>::push_back[abi:ne200100](v3, &v9);
}

void std::vector<float>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 2;
  v9 = (v7 >> 2) + 1;
  if (v9 >> 62)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 1 > v9)
  {
    v9 = v10 >> 1;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(4 * v8) = *a2;
  v5 = 4 * v8 + 4;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void HGRenderContext::DumpHistogram(HGRenderContext *this)
{
  if (*(this + 92) == 1)
  {
    v2 = *(this + 14);
    v1 = *(this + 15);
    v3 = (v1 - v2) >> 2;
    v4 = *(this + 12);
    v5 = v3 - v4;
    if (v3 >= v4)
    {
      if (v3 > v4)
      {
        v6 = 0.0;
        v7 = (v2 + 4 * v4);
        v8 = *(this + 12);
        if (v5 <= 7)
        {
          goto LABEL_9;
        }

        v8 = v4 + (v5 & 0xFFFFFFFFFFFFFFF8);
        v9 = v7 + 1;
        v10 = vdupq_n_s64(0x408F400000000000uLL);
        v11 = v5 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v12 = v9[-1];
          v13 = vcvtq_f64_f32(*v12.f32);
          v14 = vmulq_f64(vcvt_hight_f64_f32(v12), v10);
          v15 = vmulq_f64(v13, v10);
          v16 = vmulq_f64(vcvt_hight_f64_f32(*v9), v10);
          v17 = vmulq_f64(vcvtq_f64_f32(*v9->f32), v10);
          v6 = v6 + v15.f64[0] + v15.f64[1] + v14.f64[0] + v14.f64[1] + v17.f64[0] + v17.f64[1] + v16.f64[0] + v16.f64[1];
          v9 += 2;
          v11 -= 8;
        }

        while (v11);
        if (v5 != (v5 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_9:
          v18 = v3 - v8;
          v19 = (v2 + 4 * v8);
          do
          {
            v20 = *v19++;
            v6 = v6 + v20 * 1000.0;
            --v18;
          }

          while (v18);
        }

        v37 = v5;
        v39 = v6 / v5;
        v38 = 0.0;
        if (v5 < 8)
        {
          goto LABEL_15;
        }

        v4 += v5 & 0xFFFFFFFFFFFFFFF8;
        v21 = vdupq_lane_s64(*&v39, 0);
        v22 = &v7[1];
        v23 = vdupq_n_s64(0x408F400000000000uLL);
        v24 = v5 & 0xFFFFFFFFFFFFFFF8;
        do
        {
          v25 = *v22[-2].f32;
          v26 = vsubq_f64(vmulq_f64(vcvtq_f64_f32(*v25.f32), v23), v21);
          v27 = vsubq_f64(vmulq_f64(vcvt_hight_f64_f32(v25), v23), v21);
          v28 = vsubq_f64(vmulq_f64(vcvtq_f64_f32(*v22), v23), v21);
          v29 = vsubq_f64(vmulq_f64(vcvt_hight_f64_f32(*v22->f32), v23), v21);
          v30 = vmulq_f64(v27, v27);
          v31 = vmulq_f64(v26, v26);
          v32 = vmulq_f64(v29, v29);
          v33 = vmulq_f64(v28, v28);
          v38 = v38 + v31.f64[0] + v31.f64[1] + v30.f64[0] + v30.f64[1] + v33.f64[0] + v33.f64[1] + v32.f64[0] + v32.f64[1];
          v22 += 4;
          v24 -= 8;
        }

        while (v24);
        if (v5 != (v5 & 0xFFFFFFFFFFFFFFF8))
        {
LABEL_15:
          v34 = v3 - v4;
          v35 = (v2 + 4 * v4);
          do
          {
            v36 = *v35++;
            v38 = v38 + (v36 * 1000.0 - v39) * (v36 * 1000.0 - v39);
            --v34;
          }

          while (v34);
        }
      }

      else
      {
        v37 = v5;
        v38 = 0.0;
        v39 = 0.0 / v5;
      }

      v41[0] = 0;
      v41[1] = 0;
      v40 = v41;
      if (v2 != v1)
      {
        operator new();
      }

      printf("Num renders: %lu  Average: %.1f ms  Std Deviation: %.1f  Mode: %d\n\n", (*(this + 15) - *(this + 14)) >> 2, v39, sqrt(v38 / v37), 0);
      std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v40, v41[0]);
    }
  }
}

void HGRenderExecUnit::HGRenderExecUnit(HGRenderExecUnit *this, HGRenderContext *a2, HGRenderQueue *a3, int a4)
{
  v6 = *MEMORY[0x277D85DE8];
  *this = &unk_287225768;
  *(this + 2) = a4;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 6) = a2;
  (*(*a2 + 16))(a2);
  v5 = *(*(this + 6) + 72);
  *(this + 7) = v5;
  (*(*v5 + 16))(v5);
  *(this + 9) = 0;
  operator new();
}

void sub_25FD1AAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  v7 = *v5;
  if (*v5)
  {
    *(v4 + 120) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

void HGRenderExecUnit::~HGRenderExecUnit(HGRenderExecUnit *this)
{
  *this = &unk_287225768;
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }
}

{
  HGRenderExecUnit::~HGRenderExecUnit(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t HGRenderExecUnit::CanPerformJobType(uint64_t a1, int a2)
{
  v3 = HGPixelBufferObj::format(*(a1 + 48));
  if (a2 <= 3)
  {
    if (a2 < 2)
    {
      return (v3 & 0xFFFFFFFD) == 0;
    }

    if (a2 == 2 || a2 == 3)
    {
      return (v3 - 1) < 2;
    }
  }

  else
  {
    if ((a2 - 4) < 3)
    {
      return 1;
    }

    if ((a2 - 7) <= 1)
    {
      return (v3 & 0xFFFFFFFD) == 0;
    }
  }

  return 0;
}

HGSynchronizable *HGRenderExecUnit::AddEnqueuedRenderJob(HGRenderExecUnit *this, HGRenderJob *a2)
{
  v5 = a2;
  v3 = *(this + 10);
  HGSynchronizable::Lock(v3);
  std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this + 112, &v5);
  return HGSynchronizable::Unlock(v3);
}

void sub_25FD1AD40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGSynchronizer::~HGSynchronizer(va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderExecUnit::RemoveEnqueuedRenderJob(HGRenderExecUnit *this, HGRenderJob *a2)
{
  v4 = *(this + 10);
  HGSynchronizable::Lock(v4);
  v6 = *(this + 14);
  v5 = *(this + 15);
  if (v6 == v5)
  {
LABEL_5:
    v8 = 0;
  }

  else
  {
    v7 = v5 - v6 - 8;
    while (*v6 != a2)
    {
      ++v6;
      v7 -= 8;
      if (v6 == v5)
      {
        goto LABEL_5;
      }
    }

    if (v6 + 1 != v5)
    {
      memmove(v6, v6 + 1, v7);
    }

    *(this + 15) = v6 + v7;
    v8 = 1;
  }

  HGSynchronizable::Unlock(v4);
  return v8;
}

BOOL HGRenderExecUnit::HasEnqueuedRenderJob(HGRenderExecUnit *this, HGRenderJob *a2)
{
  v4 = *(this + 10);
  HGSynchronizable::Lock(v4);
  v6 = *(this + 14);
  v5 = *(this + 15);
  if (v6 == v5)
  {
    v9 = 0;
  }

  else
  {
    v7 = v6 + 8;
    do
    {
      v8 = *(v7 - 8);
      v9 = v8 == a2;
      v10 = v8 == a2 || v7 == v5;
      v7 += 8;
    }

    while (!v10);
  }

  HGSynchronizable::Unlock(v4);
  return v9;
}

uint64_t HGRenderExecUnit::NumEnqueuedRenderJobs(HGRenderExecUnit *this)
{
  v2 = *(this + 10);
  HGSynchronizable::Lock(v2);
  v5 = this + 112;
  v3 = *(this + 14);
  v4 = *(v5 + 1);
  HGSynchronizable::Unlock(v2);
  return (v4 - v3) >> 3;
}

HGSynchronizable *HGRenderExecUnit::RunLoop(HGRenderExecUnit *this)
{
  v125 = *MEMORY[0x277D85DE8];
  if (*(this + 10) == 1)
  {
    snprintf(__str, 0x200uLL, "com.apple.helium.rq.cpu-ru%d", *(this + 2));
    pthread_setname_np(__str);
  }

  else
  {
    v2 = *(this + 6);
    if (v3)
    {
      v4 = v3;
      FrameStats = PVRenderJob::GetFrameStats(v3);
      v6 = *FrameStats;
      v7 = *(FrameStats + 8);
      *policy_infoCnt = *FrameStats;
      v122 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      HGGPUComputeDevice::GetGLVirtualScreen(v6);
      HGGPURenderContext::GetGLContext(v4, &v120);
      v119.var0 = v120.var0;
      HGGLSetCurrentContext(&v119.var0);
      PCSharedCount::PCSharedCount(&v119);
      PCSharedCount::PCSharedCount(&v120);
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v2 = *(this + 6);
    }

    if (v2[10] == 1)
    {
      snprintf(__str, 0x200uLL, "com.apple.helium.rq.gpu-cu%d.vs%d");
    }

    else
    {
      snprintf(__str, 0x200uLL, "com.apple.helium.rq.gpu-ru%d.vs%d");
    }

    pthread_setname_np(__str);
  }

  v8 = dispatch_group_create();
  if (!HGRenderQueue::IsShuttingDown(*(this + 8)))
  {
    while (1)
    {
      v120.var0 = 0;
      if (HGRenderQueue::GetRenderJob(*(this + 8), this, &v120))
      {
        break;
      }

LABEL_166:
      if (HGRenderQueue::IsShuttingDown(*(this + 8)))
      {
        goto LABEL_15;
      }
    }

    HGAutoReleasePoolScopeGuard::HGAutoReleasePoolScopeGuard(&v118);
    HGRenderContext::Lock(*(this + 6));
    *(v120.var0 + 29) = *(this + 6);
    v11 = (*(**(this + 7) + 128))(*(this + 7), 15);
    v12 = (*(**(this + 7) + 128))(*(this + 7), 30);
    v13 = (*(**(this + 7) + 128))(*(this + 7), 22);
    v14 = *(this + 6);
    var0 = v120.var0;
    v17 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = *(var0 + 9);
    *(var0 + 8) = v17;
    *(var0 + 9) = v16;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      v19 = v120.var0;
      v20 = *(v120.var0 + 3);
      if (v20 > 3)
      {
LABEL_22:
        if (v20 > 6)
        {
          if ((v20 - 7) >= 2)
          {
LABEL_165:
            *(this + 6) = 2;
            HGRenderContext::Unlock(*(this + 6));
            HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(&v118);
            goto LABEL_166;
          }

          kdebug_trace();
          HGRenderJob::SetState(v120.var0, 4);
          v23 = v120.var0;
          v24 = *(v120.var0 + 29);
          if (v24)
          {
            if (!*(this + 9))
            {
              if (HGRenderContext::IsCPU(*(this + 6)))
              {
                snprintf(__str, 0x200uLL, "com.apple.helium.rq.cpu-render-unit%d.gcd", *(this + 2));
              }

              v25 = PVRenderJob::GetFrameStats(*(this + 6));
              v26 = *v25;
              v27 = *(v25 + 8);
              *policy_infoCnt = *v25;
              v122 = v27;
              if (v27)
              {
                atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              HGGPUComputeDevice::GetGLVirtualScreen(v26);
              if (*(*(this + 6) + 40) == 1)
              {
                snprintf(__str, 0x200uLL, "com.apple.helium.rq.gpu-cu%d.vs%d.gcd");
              }

              else
              {
                snprintf(__str, 0x200uLL, "com.apple.helium.rq.gpu-ru%d.vs%d.gcd");
              }

              if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v27->__on_zero_shared)(v27);
                std::__shared_weak_count::__release_weak(v27);
              }

              v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
              *(this + 9) = dispatch_queue_create(__str, v28);
              v24 = *(v120.var0 + 29);
            }

            if (v24 == 3)
            {
              v29 = 25;
            }

            else
            {
              v29 = 21;
            }

            block[0] = MEMORY[0x277D85DD0];
            block[1] = 0x40000000;
            block[2] = ___ZN16HGRenderExecUnit7RunLoopEv_block_invoke_2;
            block[3] = &__block_descriptor_tmp_16;
            if (v24 == 1)
            {
              v30 = QOS_CLASS_UTILITY;
            }

            else
            {
              v30 = v29;
            }

            block[4] = v23;
            block[5] = this;
            v31 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_DETACHED, v30, 0, block);
            dispatch_group_async(v8, *(this + 9), v31);
            dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
            _Block_release(v31);
          }

          else
          {
            HGRenderJob::CallNotifyFunc(v120.var0);
          }

          v44 = *(*(this + 8) + 344);
          *__str = v44;
          LOBYTE(v124) = 0;
          HGSynchronizable::Lock(v44);
          std::list<HGGPUReadbackJob *>::remove((*(this + 8) + 160), &v120);
          HGSynchronizable::Unlock(v44);
          if ((*(*(this + 8) + 68) & 8) != 0)
          {
            if (*(this + 10))
            {
              v45 = *(this + 2);
              v46 = *(v120.var0 + 20);
              UserName = HGRenderJob::GetUserName(v120.var0);
              printf("%s : kCustomJobFinished :  time: %5.1f (ms)  attached: -  '%s'  job <%p>\n", v45, v46 * 1000.0, UserName, v120.var0);
            }

            else
            {
              v70 = PVRenderJob::GetFrameStats(*(this + 6));
              v71 = *v70;
              v72 = *(v70 + 8);
              *__str = *v70;
              v124 = v72;
              if (v72)
              {
                atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v73 = TXParagraphStyleFolder_Factory::version(v71);
              v74 = 3;
              if (v73)
              {
                v74 = 2;
              }

              ++_MergedGlobals_24[v74];
              v75 = *(this + 2);
              v76 = *(v120.var0 + 20);
              v77 = HGRenderJob::GetUserName(v120.var0);
              printf("%s : kCustomJobFinished :  time: %5.1f (ms)  attached: %d  '%s'  count: %d/%d  job <%p>\n", v75, v76 * 1000.0, v73, v77, dword_280C5E4B0, *algn_280C5E4B4, v120.var0);
              if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v72->__on_zero_shared)(v72);
                std::__shared_weak_count::__release_weak(v72);
              }
            }
          }

          kdebug_trace();
          v19 = v120.var0;
          if (*(v120.var0 + 3) == 8)
          {
            HGSynchronizable::NotifyAll(*(v120.var0 + 37));
            v19 = v120.var0;
          }
        }

        else if (v20 != 4)
        {
          if (v20 == 5)
          {
            v37 = *(v19 + 38);
            v38 = *v37;
            v39 = *(*v37 + 136);
            if (v39)
            {
              HGRenderQueue::ReleasePBOToSharedPool(*(this + 8), v39);
              v19 = v120.var0;
              v40 = *(v120.var0 + 38);
              v38 = *v40;
              *(*v40 + 136) = 0;
            }

            v41 = *(v38 + 16);
            if (v41)
            {
              (*(*v41 + 24))(v41);
              v19 = v120.var0;
              v42 = *(v120.var0 + 38);
              v38 = *v42;
              *(*v42 + 16) = 0;
            }

            v43 = *(v38 + 24);
            if (!v43)
            {
              goto LABEL_81;
            }

            (*(*v43 + 24))(v43);
          }

          else
          {
            v21 = *(**(v19 + 38) + 24);
            (*(*v21 + 24))(v21);
          }

          v19 = v120.var0;
          *(**(v120.var0 + 38) + 24) = 0;
        }

LABEL_81:
        (*(*v19 + 24))(v19);
        goto LABEL_165;
      }
    }

    else
    {
      v19 = v120.var0;
      v20 = *(v120.var0 + 3);
      if (v20 > 3)
      {
        goto LABEL_22;
      }
    }

    if (v20 >= 2)
    {
      if (v20 == 2)
      {
        v34 = **(v19 + 38);
        HGRenderExecUnit::ExecuteCopyCPUBitmapToGPUTexture(this, v34);
        v35 = *(this + 8);
        if (*(v35 + 77) == 1)
        {
          v36 = *(v35 + 344);
          *__str = v36;
          LOBYTE(v124) = 0;
          HGSynchronizable::Lock(v36);
          std::list<HGGPUReadbackJob *>::remove((*(this + 8) + 136), &v120);
          HGSynchronizable::Unlock(v36);
        }

        HGRenderNode::CallNotifyFunc(v34);
        HGRenderNode::NotifyRenderJobFinished(v34);
        (*(*v120.var0 + 24))(v120.var0);
      }

      else if (v20 == 3)
      {
        v22 = **(v19 + 38);
        HGRenderNode::CallNotifyFunc(v22);
        HGRenderNode::NotifyRenderJobFinished(v22);
        (*(*v120.var0 + 24))(v120.var0);
      }

      goto LABEL_165;
    }

    v32 = *(this + 7);
    if (v20 == 1 && *(v19 + 22))
    {
      v32 = *(v19 + 22);
    }

    (*(*v32 + 120))(v32, 22, *(v19 + 196));
    v33 = v120.var0;
    if (*(v120.var0 + 69))
    {
      (*(*v32 + 120))(v32, 30);
      v33 = v120.var0;
    }

    if (*(v33 + 68))
    {
      (*(*v32 + 120))(v32, 15);
      v33 = v120.var0;
    }

    if (*(v33 + 70))
    {
      (*(*v32 + 120))(v32, 16);
      v33 = v120.var0;
    }

    if (*(v33 + 197) == 1)
    {
      (*(*v32 + 120))(v32, 40, 1);
    }

    if (*(this + 10))
    {
      v116 = 0;
      goto LABEL_99;
    }

    v116 = (*(*v32 + 128))(v32, 43);
    v48 = *(v120.var0 + 25);
    if (v48 != 2 || v116 == 1)
    {
      if (v48 != 1 || !v116)
      {
LABEL_89:
        if (*(v120.var0 + 34))
        {
          v50 = 28;
        }

        else
        {
          v50 = 27;
        }

        (*(*v32 + 120))(v32, 20, v50);
        v51 = v120.var0;
        if ((*(*(this + 8) + 60) & 0x80000000) == 0 && *(v120.var0 + 25) != 1)
        {
          HasCPUBufferDestinationsOnly = HGRenderJob::HasCPUBufferDestinationsOnly(v120.var0);
          v51 = v120.var0;
          if (!HasCPUBufferDestinationsOnly && (*(v120.var0 + 197) & 1) == 0)
          {
            (*(*v32 + 120))(v32, 42, *(*(this + 8) + 60));
            v51 = v120.var0;
          }
        }

        if (*(v51 + 71))
        {
          (*(*v32 + 120))(v32, 47);
        }

LABEL_99:
        v53 = *(v120.var0 + 33) - 1;
        if (v53 <= 2)
        {
          (*(*v32 + 120))(v32, 19, dword_260817788[v53]);
        }

        v54 = mach_absolute_time();
        v55 = v54;
        v56 = v120.var0;
        *(v120.var0 + 18) = v54;
        if ((*(*(this + 8) + 70) & 2) != 0)
        {
          if (*(this + 10))
          {
            printf("Executing CPU Render Job <%p>:                %llu\n", v56, v54);
          }

          else
          {
            v66 = PVRenderJob::GetFrameStats(*(this + 6));
            v67 = *v66;
            v68 = *(v66 + 8);
            *__str = *v66;
            v124 = v68;
            if (v68)
            {
              atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            GLVirtualScreen = HGGPUComputeDevice::GetGLVirtualScreen(v67);
            printf("Executing GPU Render Job <%p>:                %llu   vs%i\n", v120.var0, v55, GLVirtualScreen);
            if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v68->__on_zero_shared)(v68);
              std::__shared_weak_count::__release_weak(v68);
            }
          }
        }

        kdebug_trace();
        v57 = v120.var0;
        if (*(this + 10) != 1)
        {
          *(v120.var0 + 5) = 2;
          HGRenderJob::SetState(v57, 4);
          HGRenderJob::CallNotifyFunc(v120.var0);
          v64 = *(this + 6);
          if (v64)
          {
          }

          else
          {
            v65 = 0;
          }

          HGGPURenderContext::GetGLContextPriority(v65);
          HGGPURenderContext::SetGLContextPriority(v65);
        }

        *(v120.var0 + 5) = 1;
        HGRenderJob::SetState(v57, 4);
        HGRenderJob::CallNotifyFunc(v120.var0);
        v58 = (*(*v32 + 128))(v32, 6);
        v61 = (*(**(this + 7) + 128))(*(this + 7), 5);
        v62 = v120.var0;
        if (*(v120.var0 + 24) >= 1)
        {
          (*(*v32 + 120))(v32, 5);
          v62 = v120.var0;
        }

        v63 = *(v62 + 28);
        if (v63 <= 4)
        {
          (*(*v32 + 120))(v32, 6);
        }

        HGRenderExecUnit::ExecuteRenderCPU(this, v120.var0, v63, v59, v60);
        (*(*v32 + 120))(v32, 6, v58);
        if (*(v120.var0 + 24) >= 1)
        {
          (*(*v32 + 120))(v32, 5, v61);
        }

        v78 = mach_absolute_time();
        v79 = HGTiming::GetMachTimeConversionFactor(v78) * (v78 - v55);
        v80 = v120.var0;
        *(v120.var0 + 19) = v79;
        if ((*(*(this + 8) + 70) & 2) != 0)
        {
          if (*(this + 10))
          {
            printf("Completed CPU Render Job <%p>:                %llu  %5.1f ms\n", v80, v78, v79 * 1000.0);
          }

          else
          {
            v89 = PVRenderJob::GetFrameStats(*(this + 6));
            v90 = *v89;
            v91 = *(v89 + 8);
            *__str = *v89;
            v124 = v91;
            if (v91)
            {
              atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v92 = HGGPUComputeDevice::GetGLVirtualScreen(v90);
            printf("Completed GPU Render Job <%p>:                %llu  %5.1f ms  vs%i\n", v120.var0, v78, *(v120.var0 + 19) * 1000.0, v92);
            if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v91->__on_zero_shared)(v91);
              std::__shared_weak_count::__release_weak(v91);
            }
          }
        }

        kdebug_trace();
        v81 = *(this + 6);
        if (*(v81 + 92) == 1)
        {
          v82 = *(v120.var0 + 19);
          HGRenderContext::PushRenderTime(v81, v82);
        }

        if ((*(*(this + 8) + 68) & 8) == 0)
        {
          goto LABEL_136;
        }

        if (*(this + 10))
        {
          v83 = *(this + 2);
          v84 = *(v120.var0 + 19);
          v85 = HGRenderJob::GetUserName(v120.var0);
          printf("%s : kRenderFinished    :  time: %5.1f (ms)  attached: -  '%s'\n", v83, v84 * 1000.0, v85);
          goto LABEL_136;
        }

        v93 = PVRenderJob::GetFrameStats(*(this + 6));
        v94 = *v93;
        v95 = *(v93 + 8);
        *__str = v94;
        v124 = v95;
        if (v95)
        {
          atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v96 = TXParagraphStyleFolder_Factory::version(v94);
        v115 = v8;
        v97 = 1;
        if (v96)
        {
          v97 = 0;
        }

        atomic_fetch_add(&_MergedGlobals_24[v97], 1u);
        v98 = atomic_load(_MergedGlobals_24);
        if (v98 && (v99 = atomic_load(&dword_280C5E4AC)) != 0)
        {
          v100 = *(this + 2);
          v101 = *(v120.var0 + 19);
          v102 = HGRenderJob::GetUserName(v120.var0);
          v103 = _MergedGlobals_24[0];
          v104 = dword_280C5E4AC;
          NumJobsInRenderQueue = HGRenderQueue::GetNumJobsInRenderQueue(*(this + 8));
          printf("%s : kRenderFinished    :  time: %5.1f (ms)  attached: %d  '%s'  gpu split: %d:%d  num enqueued: %zu\n", v100, v101 * 1000.0, v96, v102, v103, v104, NumJobsInRenderQueue);
          v8 = v115;
          v106 = v124;
          if (!v124)
          {
LABEL_136:
            v86 = *(*(this + 8) + 344);
            *__str = v86;
            LOBYTE(v124) = 0;
            HGSynchronizable::Lock(v86);
            std::list<HGGPUReadbackJob *>::remove((*(this + 8) + 136), &v120);
            HGSynchronizable::Unlock(v86);
            v87 = *(this + 8);
            if (*(v87 + 72) == 1 && !*(this + 10))
            {
              v107 = *(v87 + 128);
              *__str = v107;
              LOBYTE(v124) = 0;
              HGSynchronizable::Lock(v107);
              HGSynchronizable::NotifyAll(v107);
              HGSynchronizable::Unlock(v107);
            }

            else if (*(v87 + 73) == 1 && *(this + 10) == 1)
            {
              v88 = *(v87 + 120);
              *__str = v88;
              LOBYTE(v124) = 0;
              HGSynchronizable::Lock(v88);
              HGSynchronizable::NotifyAll(v88);
              HGSynchronizable::Unlock(v88);
            }

            v108 = *(v120.var0 + 27);
            if (v108 == -1000 || v108 == 6)
            {
              HGRenderJob::CallNotifyFunc(v120.var0);
              v109 = *(v120.var0 + 38);
              if (*(v120.var0 + 39) != v109)
              {
                v110 = 0;
                do
                {
                  v111 = *(v109 + 8 * v110);
                  HGRenderNode::CallNotifyFunc(v111);
                  HGRenderNode::NotifyRenderJobFinished(v111);
                  ++v110;
                  v109 = *(v120.var0 + 38);
                }

                while (v110 < (*(v120.var0 + 39) - v109) >> 3);
              }
            }

            else
            {
              HGRenderJob::SetState(v120.var0, 7);
              HGRenderJob::CallNotifyFunc(v120.var0);
              HGRenderExecUnit::FinalizeRenderNodes(this, v120.var0);
            }

            (*(*v120.var0 + 24))(v120.var0);
            (*(*v32 + 120))(v32, 15, v11);
            (*(*v32 + 120))(v32, 30, v12);
            (*(*v32 + 120))(v32, 40, 0);
            (*(*v32 + 120))(v32, 19, *(*(this + 6) + 80));
            (*(*v32 + 120))(v32, 22, v13);
            (*(*v32 + 120))(v32, 47, 0);
            if (!*(this + 10))
            {
              (*(*v32 + 120))(v32, 43, v116);
            }

            ++*(this + 11);
            goto LABEL_165;
          }
        }

        else
        {
          v112 = *(this + 2);
          v113 = *(v120.var0 + 19);
          v114 = HGRenderJob::GetUserName(v120.var0);
          printf("%s : kRenderFinished    :  time: %5.1f (ms)  attached: %d  '%s'\n", v112, v113 * 1000.0, v96, v114);
          v106 = v124;
          if (!v124)
          {
            goto LABEL_136;
          }
        }

        if (!atomic_fetch_add(&v106->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v106->__on_zero_shared)(v106);
          std::__shared_weak_count::__release_weak(v106);
        }

        goto LABEL_136;
      }

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    (*(*v32 + 120))(v32, 43, v49);
    goto LABEL_89;
  }

LABEL_15:
  dispatch_release(v8);
  v9 = *(*(this + 8) + 344);
  HGSynchronizable::Lock(v9);
  *(this + 6) = 5;
  return HGSynchronizable::Unlock(v9);
}

void sub_25FD1C68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, PCSharedCount a35, PCSharedCount a36, char a37, uint64_t a38, char a39)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a37);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(&a34);
  _Unwind_Resume(a1);
}

void sub_25FD1C824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a39);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(&a34);
  _Unwind_Resume(a1);
}

void sub_25FD1C89C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FD1C8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, HGSynchronizable *a39)
{
  HGSynchronizer::~HGSynchronizer(&a39);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(&a34);
  _Unwind_Resume(a1);
}

uint64_t HGRenderExecUnit::StartRunLoop(HGRenderExecUnit *this)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = (this + 32);
  if (*(this + 4))
  {
    return 0;
  }

  v5 = 0;
  pthread_attr_init(&v6);
  pthread_attr_getstacksize(&v6, &v5);
  if (!(v5 >> 20))
  {
    pthread_attr_setstacksize(&v6, 0x100000uLL);
  }

  pthread_attr_setdetachstate(&v6, 2);
  v4 = pthread_create(v1, &v6, StartRenderExecUnitFunc, this);
  pthread_attr_destroy(&v6);
  return v4;
}

void HGRenderExecUnit::ExecuteRenderGPU(HGRenderExecUnit *this, HGRenderJob *a2)
{
  HGAutoReleasePoolScopeGuard::HGAutoReleasePoolScopeGuard(&v73);
  v4 = *(a2 + 38);
  v5 = *(a2 + 39) - v4;
  v6 = v5 >> 3;
  v7 = *(this + 7);
  if (*(a2 + 3) == 1 && *(a2 + 22))
  {
    v7 = *(a2 + 22);
  }

  if (v6 == 1)
  {
    v8 = *v4;
    HGRenderNode::SetRenderer(*v4, v7);
    if (*(v8 + 60) == 1 && !*(v8 + 24))
    {
      v9 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v9, *(v8 + 32), *(v8 + 40), *(v8 + 48));
      HGRenderNode::SetBitmap(v8, v9);
      *(v8 + 64) = 1;
      (*(*v9 + 24))(v9);
    }

    v10 = *(v8 + 24);
    if (!v10)
    {
      v37 = *(v8 + 60) - 3;
      if (v37 > 3)
      {
        v38 = 0;
      }

      else
      {
        v38 = dword_2608177B0[v37];
      }

      v72 = 0;
      *__p = 0u;
      v71 = 0u;
      HGRendererOutput::HGRendererOutput(__p, *(v8 + 16), *(v8 + 32), *(v8 + 40), *(v8 + 48), v38);
      HGRenderer::RenderNode(v7, __p);
    }

    (*(*v7 + 64))(v7, v10, *(v8 + 16));
    if ((*(*v7 + 128))(v7, 13))
    {
      HGRenderNode::SetState(v8, 8);
      (*(*v7 + 120))(v7, 13, 0);
    }

    else
    {
      *(v8 + 96) = 0;
      *(v8 + 56) = 9;
      if ((*(*(v8 + 24) + 12) & 0x30) != 0)
      {
        *(v8 + 64) = 4;
      }
    }

    goto LABEL_130;
  }

  if (v6 < 2)
  {
    goto LABEL_130;
  }

  v64 = this;
  v65 = 0;
  v11 = 0;
  v66 = 0;
  v67 = 0;
  v12 = (v5 >> 3) & 0x7FFFFFFF;
  do
  {
    while (1)
    {
      v15 = *(*(a2 + 38) + 8 * v11);
      HGRenderNode::SetRenderer(v15, v7);
      if (!*(v15 + 24))
      {
        break;
      }

      v72 = 0;
      *__p = 0u;
      v71 = 0u;
      HGRendererOutput::HGRendererOutput(__p, *(v15 + 16), *(v15 + 24));
      v18 = v66;
      if (v66 >= v67)
      {
        v19 = v65;
        v20 = 0xCCCCCCCCCCCCCCCDLL * ((v66 - v65) >> 3);
        v21 = v20 + 1;
        if (v20 + 1 > 0x666666666666666)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        if (0x999999999999999ALL * ((v67 - v65) >> 3) > v21)
        {
          v21 = 0x999999999999999ALL * ((v67 - v65) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v67 - v65) >> 3) >= 0x333333333333333)
        {
          v22 = 0x666666666666666;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          if (v22 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        goto LABEL_38;
      }

LABEL_13:
      v13 = *__p;
      v14 = v71;
      *(v18 + 4) = v72;
      *v18 = v13;
      *(v18 + 1) = v14;
      v66 = v18 + 40;
      if (v12 == ++v11)
      {
        goto LABEL_41;
      }
    }

    v23 = *(v15 + 60) - 1;
    if (v23 >= 6)
    {
      v24 = 0;
    }

    else
    {
      v24 = dword_260817794[v23];
    }

    v72 = 0;
    *__p = 0u;
    v71 = 0u;
    HGRendererOutput::HGRendererOutput(__p, *(v15 + 16), *(v15 + 32), *(v15 + 40), *(v15 + 48), v24);
    v18 = v66;
    if (v66 < v67)
    {
      goto LABEL_13;
    }

    v19 = v65;
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v66 - v65) >> 3);
    v25 = v20 + 1;
    if (v20 + 1 > 0x666666666666666)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    if (0x999999999999999ALL * ((v67 - v65) >> 3) > v25)
    {
      v25 = 0x999999999999999ALL * ((v67 - v65) >> 3);
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((v67 - v65) >> 3) >= 0x333333333333333)
    {
      v22 = 0x666666666666666;
    }

    else
    {
      v22 = v25;
    }

    if (v22)
    {
      if (v22 <= 0x666666666666666)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

LABEL_38:
    v26 = 40 * v20;
    v27 = 40 * v22;
    v28 = v71;
    *v26 = *__p;
    *(v26 + 16) = v28;
    *(v26 + 32) = v72;
    v29 = 40 * v20 + 40;
    v30 = (40 * v20 - (v18 - v19));
    memcpy((v26 - (v18 - v19)), v19, v18 - v19);
    v65 = v30;
    v66 = v29;
    v67 = v27;
    if (v19)
    {
      operator delete(v19);
    }

    v66 = v29;
    ++v11;
  }

  while (v12 != v11);
LABEL_41:
  HGRenderer::RenderNodes(v7, &v65, 1, v16, v17, __p);
  if (!(*(*v7 + 128))(v7, 13))
  {
    v39 = 0;
    while (1)
    {
      v40 = *(*(a2 + 38) + 8 * v39);
      v41 = __p[0];
      v42 = *(__p[0] + v39);
      if (!v42)
      {
        *(v40 + 56) = -999;
        goto LABEL_63;
      }

      (*(*v42 + 16))(v42);
      v43 = v41[v39];
      v44 = *(v40 + 24);
      if (v44)
      {
        (*(*v44 + 24))(v44);
      }

      if ((~*(v43 + 12) & 0x110) == 0)
      {
        v45 = (*(*v7 + 104))(v7, v43);
        (*(*v43 + 24))(v43);
        v43 = v45;
      }

      *(v40 + 24) = v43;
      if (*(v40 + 60) == 3 && (*(v43 + 12) & 1) != 0)
      {
        v46 = *(v40 + 48);
        if (*(v43 + 16) != v46)
        {
          Buffer = HGGPURenderer::CreateBuffer(v7, *(v43 + 20), v46, 0, 0, 0);
          HGGPURenderer::BufferCopyOpenGL(v7, Buffer, *(*(v40 + 24) + 20), *(v40 + 24));
          v43 = HGGPURenderer::ConvertToGLTexture(v7, *(Buffer + 20), Buffer);
          (*(*Buffer + 24))(Buffer);
          (*(**(v40 + 24) + 24))(*(v40 + 24));
          *(v40 + 24) = v43;
        }
      }

      *(v40 + 96) = 0;
      *(v40 + 56) = 9;
      v48 = *(v43 + 12);
      if ((v48 & 0x31) != 0)
      {
        break;
      }

      *(v40 + 64) = 1;
LABEL_86:
      v51 = *(v40 + 88);
      if (v51)
      {
        if (*(v40 + 64) == 1)
        {
          goto LABEL_88;
        }

        v52 = *(v40 + 72);
        if (!v52)
        {
          VirtualScreen = HGGLContext::getVirtualScreen(v51);
          HGComputeDeviceManager::GetGPUComputeDeviceForCGLVirtualScreen(VirtualScreen, &v68);
          v55 = v68;
          v54 = v69;
          if (v69)
          {
            atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v56 = *(v40 + 80);
          *(v40 + 72) = v55;
          *(v40 + 80) = v54;
          if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
          }

          v57 = v69;
          if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v57->__on_zero_shared)(v57);
            std::__shared_weak_count::__release_weak(v57);
          }

          v52 = *(v40 + 72);
        }
      }

      else
      {
        v52 = *(v40 + 72);
        if (!v52 || LODWORD(v52->__shared_owners_) != 1)
        {
          goto LABEL_63;
        }

        if (*(v40 + 64) == 1)
        {
LABEL_88:
          *(v40 + 96) = 1;
          *(v40 + 56) = 3;
          goto LABEL_63;
        }
      }

      v58 = *(a2 + 8);
      if (v52 != v58)
      {
        *(v40 + 96) = 1;
        if (v58)
        {
          if (v59)
          {
            v60 = *(a2 + 9);
            if (v60)
            {
              atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
              v52 = *(v40 + 72);
              if (!v52)
              {
                goto LABEL_108;
              }

LABEL_111:
              if (!v61)
              {
                v52 = 0;
                if (*(*(v64 + 8) + 78) != 1)
                {
                  goto LABEL_123;
                }

                goto LABEL_116;
              }

              v52 = *(v40 + 80);
              if (v52)
              {
                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
                if (*(*(v64 + 8) + 78) != 1)
                {
                  goto LABEL_123;
                }

LABEL_116:
                v62 = v59[17];
                if (v62 && v62 == v61[17] && (*(*(v40 + 24) + 12) & 0x21) != 0)
                {
                  v63 = 6;
                }

                else
                {
LABEL_123:
                  v63 = 5;
                }

                *(v40 + 56) = v63;
                if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v52->__on_zero_shared)(v52);
                  std::__shared_weak_count::__release_weak(v52);
                }

                if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v60->__on_zero_shared)(v60);
                  std::__shared_weak_count::__release_weak(v60);
                }

                goto LABEL_63;
              }

LABEL_115:
              if (*(*(v64 + 8) + 78) != 1)
              {
                goto LABEL_123;
              }

              goto LABEL_116;
            }

LABEL_110:
            if (v52)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v60 = 0;
            if (v52)
            {
              goto LABEL_111;
            }
          }

LABEL_108:
          v61 = 0;
          goto LABEL_115;
        }

        v59 = 0;
        v60 = 0;
        goto LABEL_110;
      }

LABEL_63:
      if (v12 == ++v39)
      {
        goto LABEL_45;
      }
    }

    if (v48)
    {
      v49 = 6;
    }

    else if ((v48 & 0x20) != 0)
    {
      v49 = 5;
    }

    else
    {
      if ((v48 & 0x10) == 0)
      {
LABEL_82:
        if ((*(v40 + 60) - 1) <= 1 || (v50 = *(v40 + 72)) != 0 && !*(v50 + 8))
        {
          *(v40 + 96) = 1;
          *(v40 + 56) = 4;
        }

        goto LABEL_86;
      }

      v49 = 3;
    }

    *(v40 + 64) = v49;
    goto LABEL_82;
  }

  v31 = 0;
  do
  {
    HGRenderNode::SetState(*(*(a2 + 38) + 8 * v31++), 8);
  }

  while (v12 != v31);
  (*(*v7 + 120))(v7, 13, 0);
LABEL_45:
  v32 = __p[0];
  if (__p[0])
  {
    v33 = __p[1];
    v34 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v36 = *(v33 - 1);
        v33 -= 8;
        v35 = v36;
        if (v36)
        {
          (*(*v35 + 24))(v35);
        }
      }

      while (v33 != v32);
      v34 = __p[0];
    }

    __p[1] = v32;
    operator delete(v34);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

LABEL_130:
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(&v73);
}

void sub_25FD1D968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard((v17 - 88));
  _Unwind_Resume(a1);
}

void HGRenderExecUnit::ExecuteRenderCPU(HGRenderExecUnit *this, HGRenderJob *a2, uint64_t a3, const char *a4, char *a5)
{
  v6 = *(a2 + 38);
  v7 = *(a2 + 39) - v6;
  v8 = v7 >> 3;
  v9 = *(this + 7);
  if (*(a2 + 3) == 1 && *(a2 + 22))
  {
    v9 = *(a2 + 22);
  }

  if (v8 == 1)
  {
    v10 = *v6;
    HGRenderNode::SetRenderer(*v6, v9);
    v11 = *(v10 + 24);
    if (v11)
    {
      (*(*v9 + 64))(v9, v11, *(v10 + 16));
      if ((*(*v9 + 128))(v9, 13))
      {
        HGRenderNode::SetState(v10, 8);
        (*(*v9 + 120))(v9, 13, 0);
      }

      else
      {
        *(v10 + 96) = 0;
        *(v10 + 56) = 9;
        *(v10 + 64) = *(v10 + 60);
      }

      return;
    }

    if (*(v10 + 60) != 6)
    {
      v71 = 0;
      *__p = 0u;
      v70 = 0u;
      HGRendererOutput::HGRendererOutput(__p, *(v10 + 16), *(v10 + 32), *(v10 + 40), *(v10 + 48), 0);
      HGRenderer::RenderNode(v9, __p);
    }

    HGCVBitmap::create(*(v10 + 32), *(v10 + 40), *(v10 + 48), __p);
    if (__p[0])
    {
      (*(*__p[0] + 16))(__p[0]);
      v46 = __p[0];
    }

    else
    {
      v46 = 0;
    }

    HGCVBitmap::lock(v46, 0);
    (*(*v9 + 64))(v9, v46, *(v10 + 16));
    HGCVBitmap::unlock(v46, 0);
    if ((*(*v9 + 128))(v9, 13))
    {
      HGRenderNode::SetState(v10, 8);
      (*(*v9 + 120))(v9, 13, 0);
      (*(*v46 + 24))(v46);
      v60 = *(v10 + 72);
      if (!v60)
      {
        goto LABEL_105;
      }
    }

    else
    {
      *(v10 + 24) = v46;
      *(v10 + 64) = 6;
      v60 = *(v10 + 72);
      if (!v60)
      {
LABEL_105:
        if (!*(v10 + 88))
        {
          *(v10 + 96) = 0;
          *(v10 + 56) = 9;
          v62 = __p[0];
          if (!__p[0])
          {
            return;
          }

          goto LABEL_110;
        }

        LOBYTE(v61) = 1;
LABEL_107:
        *(v10 + 96) = v61;
        *(v10 + 56) = 3;
        v62 = __p[0];
        if (!__p[0])
        {
          return;
        }

LABEL_110:
        (*(*v62 + 24))(v62);
        return;
      }
    }

    v61 = *(v60 + 8);
    if (v61 == 1)
    {
      goto LABEL_107;
    }

    goto LABEL_105;
  }

  if (v8 < 2)
  {
    return;
  }

  v64 = *(*v6 + 52);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v12 = (v7 >> 3) & 0x7FFFFFFF;
  v13 = 8 * v12;
  v63 = v12;
  if (v12)
  {
    v14 = 0;
    while (1)
    {
      v18 = *(*(a2 + 38) + v14);
      HGRenderNode::SetRenderer(v18, v9);
      v19 = *(v18 + 24);
      if (v19)
      {
        break;
      }

      if (*(v18 + 60) != 6)
      {
        v71 = 0;
        *__p = 0u;
        v70 = 0u;
        HGRendererOutput::HGRendererOutput(__p, *(v18 + 16), *(v18 + 32), *(v18 + 40), *(v18 + 48), 0);
        v20 = v67;
        if (v67 >= v68)
        {
          v21 = v66;
          v22 = 0xCCCCCCCCCCCCCCCDLL * ((v67 - v66) >> 3);
          v26 = v22 + 1;
          if (v22 + 1 > 0x666666666666666)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          if (0x999999999999999ALL * ((v68 - v66) >> 3) > v26)
          {
            v26 = 0x999999999999999ALL * ((v68 - v66) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v68 - v66) >> 3) >= 0x333333333333333)
          {
            v24 = 0x666666666666666;
          }

          else
          {
            v24 = v26;
          }

          if (v24)
          {
            if (v24 <= 0x666666666666666)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

LABEL_40:
          v27 = 40 * v22;
          v28 = 40 * v24;
          v29 = v70;
          *v27 = *__p;
          *(v27 + 16) = v29;
          *(v27 + 32) = v71;
          v17 = 40 * v22 + 40;
          v30 = (40 * v22 - (v20 - v21));
          memcpy((v27 - (v20 - v21)), v21, v20 - v21);
          v66 = v30;
          v67 = v17;
          v68 = v28;
          if (v21)
          {
            operator delete(v21);
          }

LABEL_12:
          v67 = v17;
          goto LABEL_13;
        }

LABEL_11:
        v15 = *__p;
        v16 = v70;
        *(v20 + 4) = v71;
        *v20 = v15;
        *(v20 + 1) = v16;
        v17 = (v20 + 40);
        goto LABEL_12;
      }

      HGCVBitmap::create(*(v18 + 32), *(v18 + 40), *(v18 + 48), &v65);
      if (v65)
      {
        (*(*v65 + 16))(v65);
        v25 = v65;
      }

      else
      {
        v25 = 0;
      }

      HGCVBitmap::lock(v25, 0);
      v71 = 0;
      *__p = 0u;
      v70 = 0u;
      HGRendererOutput::HGRendererOutput(__p, *(v18 + 16), v25);
      v31 = v67;
      if (v67 >= v68)
      {
        v35 = v66;
        v36 = 0xCCCCCCCCCCCCCCCDLL * ((v67 - v66) >> 3);
        v37 = v36 + 1;
        if (v36 + 1 > 0x666666666666666)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        if (0x999999999999999ALL * ((v68 - v66) >> 3) > v37)
        {
          v37 = 0x999999999999999ALL * ((v68 - v66) >> 3);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v68 - v66) >> 3) >= 0x333333333333333)
        {
          v38 = 0x666666666666666;
        }

        else
        {
          v38 = v37;
        }

        if (v38)
        {
          if (v38 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v39 = 8 * ((v67 - v66) >> 3);
        v40 = v70;
        *v39 = *__p;
        *(v39 + 16) = v40;
        *(v39 + 32) = v71;
        v41 = 40 * v36 + 40;
        v42 = (40 * v36 - (v31 - v35));
        memcpy((v39 - (v31 - v35)), v35, v31 - v35);
        v66 = v42;
        v67 = v41;
        v68 = 0;
        if (v35)
        {
          operator delete(v35);
        }

        v67 = v41;
        v34 = v65;
        if (!v65)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v32 = *__p;
        v33 = v70;
        *(v67 + 4) = v71;
        *v31 = v32;
        *(v31 + 1) = v33;
        v67 = v31 + 40;
        v34 = v65;
        if (!v65)
        {
          goto LABEL_13;
        }
      }

      (*(*v34 + 24))(v34);
LABEL_13:
      v14 += 8;
      if (v13 == v14)
      {
        goto LABEL_60;
      }
    }

    if (*(v19 + 12))
    {
      HGCVBitmap::lock(v19, 0);
      v19 = *(v18 + 24);
    }

    (*(*v19 + 16))(v19);
    v71 = 0;
    *__p = 0u;
    v70 = 0u;
    HGRendererOutput::HGRendererOutput(__p, *(v18 + 16), *(v18 + 24));
    v20 = v67;
    if (v67 >= v68)
    {
      v21 = v66;
      v22 = 0xCCCCCCCCCCCCCCCDLL * ((v67 - v66) >> 3);
      v23 = v22 + 1;
      if (v22 + 1 > 0x666666666666666)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      if (0x999999999999999ALL * ((v68 - v66) >> 3) > v23)
      {
        v23 = 0x999999999999999ALL * ((v68 - v66) >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v68 - v66) >> 3) >= 0x333333333333333)
      {
        v24 = 0x666666666666666;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        if (v24 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      goto LABEL_40;
    }

    goto LABEL_11;
  }

LABEL_60:
  HGRenderer::RenderNodes(v9, &v66, v64, a4, a5, __p);
  if ((*(*v9 + 128))(v9, 13))
  {
    if (v63)
    {
      v43 = 0;
      v44 = 8;
      do
      {
        HGRenderNode::SetState(*(*(a2 + 38) + v43), 8);
        v45 = *(v66 + v44);
        if (v45)
        {
          (*(*v45 + 24))(v45);
        }

        v43 += 8;
        v44 += 40;
      }

      while (v13 != v43);
    }

    (*(*v9 + 120))(v9, 13, 0);
    goto LABEL_70;
  }

  if (v63)
  {
    v52 = 0;
    v53 = 8;
    do
    {
      v54 = *(*(a2 + 38) + v52);
      v55 = *(v54 + 24);
      if (v55)
      {
        (*(*v55 + 24))(*(v54 + 24));
      }

      v56 = __p[0];
      v57 = *(__p[0] + v52);
      if (v57)
      {
        (*(*v57 + 16))(v57);
        v57 = *&v56[v52];
      }

      *(v54 + 24) = v57;
      v58 = *(v66 + v53);
      if (v58)
      {
        (*(*v58 + 24))(*(v66 + v53));
        v57 = *(v54 + 24);
      }

      if (*(v57 + 12))
      {
        HGCVBitmap::unlock(v57, 0);
        *(v54 + 64) = 6;
        *(v54 + 96) = 0;
        *(v54 + 56) = 9;
        if (!v55)
        {
LABEL_94:
          if (*(v54 + 60) != 1 && ((v59 = *(v54 + 72)) != 0 && *(v59 + 8) == 1 || *(v54 + 88)))
          {
            *(v54 + 96) = 1;
            *(v54 + 56) = 3;
          }
        }
      }

      else
      {
        *(v54 + 64) = 1;
        *(v54 + 96) = 0;
        *(v54 + 56) = 9;
        if (!v55)
        {
          goto LABEL_94;
        }
      }

      v52 += 8;
      v53 += 40;
    }

    while (v13 != v52);
  }

LABEL_70:
  v47 = __p[0];
  if (__p[0])
  {
    v48 = __p[1];
    v49 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v51 = *(v48 - 1);
        v48 -= 8;
        v50 = v51;
        if (v51)
        {
          (*(*v50 + 24))(v50);
        }
      }

      while (v48 != v47);
      v49 = __p[0];
    }

    __p[1] = v47;
    operator delete(v49);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_25FD1E618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void HGRenderExecUnit::FinalizeRenderNodes(HGRenderExecUnit *this, HGRenderJob *a2)
{
  v4 = *(this + 7);
  if (*(a2 + 3) == 1 && *(a2 + 22))
  {
    v4 = *(a2 + 22);
  }

  v5 = *(a2 + 39) - *(a2 + 38);
  if (v5)
  {
    v6 = 0;
    v7 = v5 >> 3;
    v8 = 1;
    do
    {
      v9 = *(*(a2 + 38) + 8 * v6);
      if (*(v9 + 96) == 1)
      {
        v10 = *(v9 + 56);
        if ((v10 - 4) < 2)
        {
          v13 = *(this + 6);
          if (v13)
          {
            if (v14)
            {
              FrameStats = PVRenderJob::GetFrameStats(v14);
              v16 = FrameStats[1];
              v23 = *FrameStats;
              v24 = v16;
              if (v16)
              {
                atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              HGGPURenderer::GetCurrentContext(v4, &v22);
              v17 = HGObject::operator new(0x30uLL);
              v21.var0 = v22.var0;
              HGGPUReadbackJob::HGGPUReadbackJob(v17, &v23, &v21, v9);
              PCSharedCount::PCSharedCount(&v21);
              HGRenderQueue::EnqueueGPUReadbackJob(*(this + 8), v17);
              (*(*v17 + 3))(v17);
              PCSharedCount::PCSharedCount(&v22);
              v18 = v24;
              if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v18->__on_zero_shared)(v18);
                std::__shared_weak_count::__release_weak(v18);
              }
            }
          }

          goto LABEL_7;
        }

        if (v10 == 6)
        {
          v11 = HGObject::operator new(0x160uLL);
          HGRenderJob::HGRenderJob(v11);
          HGRenderJob::AddRenderNodeInternal(v11, v9);
          HGUserJob::SetPriority(v11, 3);
          HGUserJob::SetState(v11, 6);
          HGRenderJob::SetComputeDevice(v11, (v9 + 72));
          HGRenderJob::SetPriority(v11, 11);
LABEL_25:
          HGRenderNode::CallNotifyFunc(v9);
          if (HGRenderQueue::EnqueueRenderJob(*(this + 8), v11))
          {
            *(v9 + 56) = -997;
            HGRenderNode::CallNotifyFunc(v9);
            HGRenderNode::NotifyRenderJobFinished(v9);
          }

          (*(*v11 + 24))(v11);
          goto LABEL_7;
        }

        if (v10 == 3)
        {
          v11 = HGObject::operator new(0x160uLL);
          HGRenderJob::HGRenderJob(v11);
          HGRenderJob::AddRenderNodeInternal(v11, v9);
          HGUserJob::SetPriority(v11, 2);
          HGUserJob::SetState(v11, 2);
          HGRenderJob::SetPriority(v11, 11);
          v12 = *(v9 + 72);
          if (v12 && *(v12 + 8) == 1)
          {
            HGRenderJob::SetComputeDevice(v11, (v9 + 72));
          }

          else
          {
            v19 = *(v9 + 88);
            if (v19)
            {
              VirtualScreen = HGGLContext::getVirtualScreen(v19);
              HGRenderJob::SetVirtualScreen(v11, VirtualScreen);
            }
          }

          goto LABEL_25;
        }
      }

      else
      {
        HGRenderNode::CallNotifyFunc(v9);
        HGRenderNode::NotifyRenderJobFinished(v9);
      }

LABEL_7:
      v6 = v8++;
    }

    while (v7 > v6);
  }
}

void sub_25FD1EA60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10, char a11)
{
  PCSharedCount::PCSharedCount(&a9);
  HGObject::operator delete(v11);
  PCSharedCount::PCSharedCount(&a10);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_25FD1EA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FD1EAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10, char a11)
{
  PCSharedCount::PCSharedCount(&a10);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t HGRenderExecUnit::ExecuteCopyCPUBitmapToGPUTexture(uint64_t this, HGRenderNode *a2)
{
  v3 = this;
  if (!*(a2 + 3))
  {
    if (!*(a2 + 17))
    {
      return this;
    }

    v11 = mach_absolute_time();
    v12 = v11;
    if ((*(*(v3 + 64) + 70) & 2) != 0)
    {
      printf("Executing PBO-to-GPU Buffer Copy Job <%p>:    %llu\n", *(a2 + 24), v11);
    }

    kdebug_trace();
    v13 = HGObject::operator new(0x88uLL);
    HGPBOBitmap::HGPBOBitmap(v13, *(a2 + 17));
    v14 = (*(**(v3 + 56) + 104))(*(v3 + 56), v13);
    (*(*v13 + 24))(v13);
    v15 = mach_absolute_time();
    v16 = HGTiming::GetMachTimeConversionFactor(v15) * (v15 - v12);
    *(a2 + 15) = v16;
    *(a2 + 13) = *(a2 + 13) + v16;
    if ((*(*(v3 + 64) + 70) & 2) != 0)
    {
      printf("Completed PBO-to-GPU Buffer Copy Job <%p>:    %llu  %5.1f ms\n", *(a2 + 24), v15, v16 * 1000.0);
    }

    this = kdebug_trace();
    if (v14)
    {
      v17 = *(a2 + 3);
      if (v17)
      {
        HGRenderQueue::EnqueueDeleteHGGLTexture(*(v3 + 64), v18);
      }

      *(a2 + 3) = v14;
      *(a2 + 14) = 9;
      *(a2 + 16) = 3;
      HGPixelBufferObj::ReleaseDataPtr(*(a2 + 17));
      this = HGRenderQueue::ReleasePBOToSharedPool(*(v3 + 64), *(a2 + 17));
      *(a2 + 17) = 0;
      if ((*(*(v3 + 64) + 70) & 4) == 0)
      {
        return this;
      }
    }

    else
    {
      *(a2 + 14) = -997;
      if ((*(*(v3 + 64) + 70) & 4) == 0)
      {
        return this;
      }
    }

    v25 = *(a2 + 24);
    v26 = vcvt_f32_f64(vmulq_f64(*(a2 + 7), vdupq_n_s64(0x408F400000000000uLL)));
    v27 = *(v3 + 16);
    if (*(a2 + 14) == -997)
    {
      v28 = "kXGPUCopy *ERROR*  ";
    }

    else
    {
      v28 = "kXGPUCopyFinished  ";
    }

    v29 = vaddv_f32(v26);
    v30 = v26.f32[0];
    v31 = v26.f32[1];
    v32 = *(v25 + 184);
    UserName = HGRenderJob::GetUserName(v25);
    return printf("%s : %s: from vs=%d   time: %5.1f (ms)  download time: %5.1f (ms)  upload time: %5.1f (ms) '%s'\n", v27, v28, v32, v29, v30, v31, UserName);
  }

  v4 = mach_absolute_time();
  v6 = v4;
  if ((*(*(v3 + 64) + 70) & 2) != 0)
  {
    printf("Executing CPU-to-GPU Buffer Copy Job <%p>:    %llu\n", *(a2 + 24), v4);
  }

  v7 = *(a2 + 3);
  v8 = *(v3 + 56);
  if (v8)
  {
  }

  v9 = *(a2 + 15);
  if (v9)
  {
    if (v9 == 3 || v9 == 6 && *(*(a2 + 24) + 100) == 1)
    {
      v10 = v9 == 6;
      goto LABEL_23;
    }

    v19 = v9 == 6;
  }

  else
  {
    v19 = 0;
    v10 = 0;
    if (*(*(a2 + 24) + 100) == 1)
    {
LABEL_23:
      GLTexture = HGGPURenderer::GetGLTexture(v8, v7, v5);
      mach_absolute_time();
      v21 = 0;
      *(a2 + 15) = 0;
      v22.n128_u64[0] = 0;
      v19 = v10;
      if ((*(*(v3 + 64) + 70) & 2) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_30;
    }
  }

  MetalContext = HGGPURenderer::GetMetalContext(v8);
  *&v45.var0 = *(v7 + 28);
  *&v45.var2 = 1;
  HGMetalTexture::createFromBitmap(MetalContext, 0xD, *(v7 + 20), v45, v7, 1, &v44);
  if (v44)
  {
    (*(*v44 + 16))(v44);
    GLTexture = v44;
    if (v44)
    {
      (*(*v44 + 24))(v44);
    }
  }

  else
  {
    GLTexture = 0;
  }

  v24 = mach_absolute_time();
  v22.n128_f64[0] = HGTiming::GetMachTimeConversionFactor(v24) * (v24 - v6);
  *(a2 + 15) = v22.n128_u64[0];
  *(a2 + 13) = *(a2 + 13) + v22.n128_f64[0];
  v22.n128_f64[0] = v22.n128_f64[0] * 1000.0;
  v21 = 1;
  if ((*(*(v3 + 64) + 70) & 2) != 0)
  {
LABEL_30:
    if ((v21 | !v19))
    {
      if ((v21 | v19))
      {
        if ((v21 & v19) == 1)
        {
          printf("Completed CPU-to-GPU Buffer Copy Job <%p>: MTL-IOSurface :  %llu  %5.1f ms\n");
        }

        else
        {
          printf("Completed CPU-to-GPU Buffer Copy Job <%p>: MTLTexture    :  %llu  %5.1f ms\n");
        }
      }

      else
      {
        printf("Completed CPU-to-GPU Buffer Copy Job <%p>: GLTexture     :  %llu  %5.1f ms\n");
      }
    }

    else
    {
      printf("Completed CPU-to-GPU Buffer Copy Job <%p>: GL-IOSurface  :  %llu  %5.1f ms\n");
    }
  }

LABEL_42:
  if (*(a2 + 14) == 5 && (*(*(v3 + 64) + 70) & 4) != 0)
  {
    v34 = *(a2 + 24);
    v35 = vcvt_f32_f64(vmulq_f64(*(a2 + 7), vdupq_n_s64(0x408F400000000000uLL)));
    v36 = *(v3 + 16);
    v37 = vaddv_f32(v35);
    v38 = v35.f32[0];
    v39 = v35.f32[1];
    v40 = *(v34 + 184);
    v41 = HGRenderJob::GetUserName(v34);
    printf("%s : %s: from vs=%d   time: %5.1f (ms)  download time: %5.1f (ms)  upload time: %5.1f (ms) '%s'\n", v36, "kXGPUCopyFinished  ", v40, v37, v38, v39, v41);
  }

  this = (*(*v7 + 24))(v7, v22);
  if (GLTexture)
  {
    *(a2 + 3) = GLTexture;
    *(a2 + 14) = 9;
    v42 = *(GLTexture + 3);
    if (v42)
    {
      v43 = 6;
    }

    else if ((v42 & 0x20) != 0)
    {
      v43 = 5;
    }

    else
    {
      if ((v42 & 0x10) == 0)
      {
        return this;
      }

      v43 = 3;
    }

    *(a2 + 16) = v43;
  }

  else
  {
    *(a2 + 3) = 0;
    *(a2 + 14) = -997;
  }

  return this;
}

void sub_25FD1F0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  _Unwind_Resume(exception_object);
}

void *std::shared_ptr<HGComputeDevice const>::operator=[abi:ne200100]<HGGPUComputeDevice const,0>(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[1];
  *result = v3;
  result[1] = v2;
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = result;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      return v5;
    }
  }

  return result;
}

void *HGToGPUComputeDevicePtr@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void HGRenderJob::HGRenderJob(HGRenderJob *this)
{
  HGObject::HGObject(this);
  *v1 = &unk_287225798;
  *(v1 + 12) = 0;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = xmmword_2608177C0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0xFFFFFFFFLL;
  *(v1 + 136) = 1;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0;
  *(v1 + 192) = -9999;
  *(v1 + 196) = -16777215;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 280) = 0;
  *(v1 + 264) = 0u;
  *(v1 + 344) = 0;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 296) = 0u;
  operator new();
}

void sub_25FD1F350(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x2666E9F00](v4, 0x10A1C40BBCAB520);
  v6 = *(v1 + 328);
  if (v6)
  {
    *(v1 + 336) = v6;
    operator delete(v6);
  }

  v7 = *(v1 + 304);
  if (v7)
  {
    *(v1 + 312) = v7;
    operator delete(v7);
  }

  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v1 + 80);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v1 + 64);
  std::vector<std::shared_ptr<HGComputeDevice const>>::~vector[abi:ne200100]((v1 + 40));
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v2);
  HGObject::~HGObject(v1);
  _Unwind_Resume(a1);
}

void HGRenderJob::~HGRenderJob(HGRenderJob *this)
{
  *this = &unk_287225798;
  v2 = *(this + 38);
  if (*(this + 39) != v2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      (*(**(v2 + 8 * v3) + 24))(*(v2 + 8 * v3));
      v3 = v4;
      v2 = *(this + 38);
      ++v4;
    }

    while (v3 < (*(this + 39) - v2) >> 3);
  }

  *(this + 39) = v2;
  *(this + 31) = 0;
  v5 = *(this + 36);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 27);
  if (v6)
  {
    free(v6);
  }

  v7 = *(this + 37);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 41);
  if (v8)
  {
    *(this + 42) = v8;
    operator delete(v8);
  }

  v9 = *(this + 38);
  if (v9)
  {
    *(this + 39) = v9;
    operator delete(v9);
  }

  v10 = *(this + 11);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 9);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(this + 5);
  if (v12)
  {
    v13 = *(this + 6);
    v14 = *(this + 5);
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 8);
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        v13 -= 16;
      }

      while (v13 != v12);
      v14 = *(this + 5);
    }

    *(this + 6) = v12;
    operator delete(v14);
  }

  v16 = *(this + 4);
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  HGObject::~HGObject(this);
}

{
  HGRenderJob::~HGRenderJob(this);

  HGObject::operator delete(v1);
}

const char *HGRenderJob::GetTypeLabel(HGRenderJob *this)
{
  v1 = *(this + 3);
  if (v1 > 8)
  {
    return "?????? unknown job type ???????";
  }

  else
  {
    return off_279AA9340[v1];
  }
}

void HGRenderJob::AddRenderNode(HGRenderJob *this, HGRenderNode *a2)
{
  v4 = a2;
  (*(*a2 + 16))(a2);
  std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this + 304, &v4);
  *(this + 31) = (*(this + 39) - *(this + 38)) >> 3;
  v3 = *(this + 22);
  if (v3)
  {
    HGRenderNode::SetRenderer(v4, v3);
  }
}

void HGRenderJob::AddRenderNodeInternal(HGRenderJob *this, HGRenderNode *a2)
{
  v4 = a2;
  (*(*a2 + 16))(a2);
  std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this + 304, &v4);
  v3 = *(this + 22);
  if (v3)
  {
    HGRenderNode::SetRenderer(v4, v3);
  }
}

void HGRenderJob::SetComputeDevice(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

HGRenderJob *HGRenderJob::SetRenderer(HGRenderJob *this, HGRenderer *a2)
{
  v3 = this;
  *(this + 22) = a2;
  v4 = *(this + 38);
  if (*(this + 39) != v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      this = HGRenderNode::SetRenderer(*(v4 + 8 * v5), a2);
      v5 = v6;
      v4 = *(v3 + 38);
      ++v6;
    }

    while (v5 < (*(v3 + 39) - v4) >> 3);
  }

  if (a2)
  {
    this = (*(*a2 + 304))(a2);
    if (this)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    *(v3 + 4) = v7;
  }

  return this;
}