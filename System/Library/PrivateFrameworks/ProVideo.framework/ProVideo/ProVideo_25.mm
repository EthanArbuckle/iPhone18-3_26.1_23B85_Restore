void HGGLNode::GetOutput(HGGLNode *this, HGRenderer *a2)
{
  v3 = *(this + 51);
  if (v3[1141] == 1)
  {
    (*(*v3 + 16))(*(this + 51), a2);
    v4 = *(this + 52);
    if (v4 == v3)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      if (v4)
      {
        (*(*v4 + 24))(v4);
      }

      *(this + 52) = v3;
    }
  }

  v5[0] = 0;
  v5[1] = 0;
  HGArrayDataRef::allocate(v5);
}

void sub_25FBD9424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  (*(*v2 + 24))(v2);
  HGTransform::~HGTransform(va);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray((v3 - 120));
  _Unwind_Resume(a1);
}

void sub_25FBD9474(_Unwind_Exception *a1)
{
  HGObject::operator delete(v1);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray((v2 - 120));
  _Unwind_Resume(a1);
}

uint64_t HGGLNode::hglDrawElements(HGGLNode *this, int a2, atomic_uint **a3)
{
  v3 = *(this + 51);
  v8 = 0;
  v9 = 0x300000000;
  v4 = *a3;
  if (*a3)
  {
    v8 = *a3;
    atomic_fetch_add(v4, 1u);
  }

  LODWORD(v9) = *(a3 + 2);
  result = HGRasterizer::drawElements(v3, a2, &v8);
  v6 = v8;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    v7 = *(v6 + 2);
    if (v7)
    {
      MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
    }

    return MEMORY[0x2666E9F00](v6, 0x1080C4098BBCF0FLL);
  }

  return result;
}

uint64_t HGArrayData::Release(uint64_t this)
{
  add = atomic_fetch_add(this, 0xFFFFFFFF);
  if (this && add == 1)
  {
    v3 = *(this + 16);
    if (v3)
    {
      MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
    }

    JUMPOUT(0x2666E9F00);
  }

  return this;
}

void HGRasterizer::HGRasterizer(HGRasterizer *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28720A498;
  *(v1 + 408) = 897988541;
  *(v1 + 416) = 0;
  *(v1 + 424) = 0;
  HGArrayDataRef::allocate((v1 + 416));
}

void sub_25FBD9BFC(_Unwind_Exception *a1)
{
  HGObject::operator delete(v5);
  v7 = *(v1 + 1224);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  if (*(v1 + 1223) < 0)
  {
    operator delete(*(v1 + 1200));
  }

  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v4);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v3);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(v2);
  HGTransform::~HGTransform((v1 + 912));
  HGTransform::~HGTransform((v1 + 768));
  v8 = *(v1 + 592);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  v9 = *(v1 + 584);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  v10 = *(v1 + 576);
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  v11 = *(v1 + 568);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  v12 = *(v1 + 560);
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  v13 = *(v1 + 552);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  v14 = *(v1 + 544);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = *(v1 + 536);
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  v16 = *(v1 + 528);
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  v17 = *(v1 + 520);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  v18 = *(v1 + 512);
  if (v18)
  {
    (*(*v18 + 24))(v18);
  }

  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray((v1 + 416));
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGRasterizer::~HGRasterizer(HGRasterizer *this)
{
  *this = &unk_28720A498;
  v2 = *(this + 62);
  if (v2)
  {
    HGeometryData::~HGeometryData(v2);
    MEMORY[0x2666E9F00]();
  }

  v3 = *(this + 63);
  if (v3)
  {
    HGeometryData::~HGeometryData(v3);
    MEMORY[0x2666E9F00]();
  }

  v4 = *(this + 54);
  if (v4)
  {
    (*(**v4 + 24))();
    v5 = v4[19];
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }

    HGTransform::~HGTransform((v4 + 1));
    MEMORY[0x2666E9F00](v4, 0x10A0C408B9E766ELL);
  }

  v6 = *(this + 55);
  if (v6)
  {
    (*(**v6 + 24))();
    v7 = v6[19];
    if (v7)
    {
      (*(*v7 + 24))(v7);
    }

    HGTransform::~HGTransform((v6 + 1));
    MEMORY[0x2666E9F00](v6, 0x10A0C408B9E766ELL);
  }

  v8 = *(this + 56);
  if (v8)
  {
    (*(**v8 + 24))();
    v9 = v8[19];
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }

    HGTransform::~HGTransform((v8 + 1));
    MEMORY[0x2666E9F00](v8, 0x10A0C408B9E766ELL);
  }

  v10 = *(this + 57);
  if (v10)
  {
    (*(**v10 + 24))();
    v11 = v10[19];
    if (v11)
    {
      (*(*v11 + 24))(v11);
    }

    HGTransform::~HGTransform((v10 + 1));
    MEMORY[0x2666E9F00](v10, 0x10A0C408B9E766ELL);
  }

  v12 = *(this + 58);
  if (v12)
  {
    (*(**v12 + 24))();
    v13 = v12[19];
    if (v13)
    {
      (*(*v13 + 24))(v13);
    }

    HGTransform::~HGTransform((v12 + 1));
    MEMORY[0x2666E9F00](v12, 0x10A0C408B9E766ELL);
  }

  v14 = *(this + 59);
  if (v14)
  {
    (*(**v14 + 24))();
    v15 = v14[19];
    if (v15)
    {
      (*(*v15 + 24))(v15);
    }

    HGTransform::~HGTransform((v14 + 1));
    MEMORY[0x2666E9F00](v14, 0x10A0C408B9E766ELL);
  }

  v16 = *(this + 60);
  if (v16)
  {
    (*(**v16 + 24))();
    v17 = v16[19];
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }

    HGTransform::~HGTransform((v16 + 1));
    MEMORY[0x2666E9F00](v16, 0x10A0C408B9E766ELL);
  }

  v18 = *(this + 61);
  if (v18)
  {
    (*(**v18 + 24))();
    v19 = v18[19];
    if (v19)
    {
      (*(*v19 + 24))(v19);
    }

    HGTransform::~HGTransform((v18 + 1));
    MEMORY[0x2666E9F00](v18, 0x10A0C408B9E766ELL);
  }

  v20 = *(this + 94);
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  v21 = *(this + 95);
  if (v21)
  {
    (*(*v21 + 24))(v21);
  }

  v22 = *(this + 153);
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  if (*(this + 1223) < 0)
  {
    operator delete(*(this + 150));
  }

  v23 = *(this + 147);
  if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    v24 = *(v23 + 16);
    if (v24)
    {
      MEMORY[0x2666E9ED0](v24, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v23, 0x1080C4098BBCF0FLL);
  }

  v25 = *(this + 145);
  if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
  {
    v26 = *(v25 + 16);
    if (v26)
    {
      MEMORY[0x2666E9ED0](v26, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v25, 0x1080C4098BBCF0FLL);
  }

  v27 = *(this + 143);
  if (v27 && atomic_fetch_add(v27, 0xFFFFFFFF) == 1)
  {
    v28 = *(v27 + 16);
    if (v28)
    {
      MEMORY[0x2666E9ED0](v28, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v27, 0x1080C4098BBCF0FLL);
  }

  HGTransform::~HGTransform((this + 912));
  HGTransform::~HGTransform((this + 768));
  v29 = *(this + 74);
  if (v29)
  {
    (*(*v29 + 24))(v29);
  }

  v30 = *(this + 73);
  if (v30)
  {
    (*(*v30 + 24))(v30);
  }

  v31 = *(this + 72);
  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  v32 = *(this + 71);
  if (v32)
  {
    (*(*v32 + 24))(v32);
  }

  v33 = *(this + 70);
  if (v33)
  {
    (*(*v33 + 24))(v33);
  }

  v34 = *(this + 69);
  if (v34)
  {
    (*(*v34 + 24))(v34);
  }

  v35 = *(this + 68);
  if (v35)
  {
    (*(*v35 + 24))(v35);
  }

  v36 = *(this + 67);
  if (v36)
  {
    (*(*v36 + 24))(v36);
  }

  v37 = *(this + 66);
  if (v37)
  {
    (*(*v37 + 24))(v37);
  }

  v38 = *(this + 65);
  if (v38)
  {
    (*(*v38 + 24))(v38);
  }

  v39 = *(this + 64);
  if (v39)
  {
    (*(*v39 + 24))(v39);
  }

  v40 = *(this + 52);
  if (v40 && atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
  {
    v41 = *(v40 + 16);
    if (v41)
    {
      MEMORY[0x2666E9ED0](v41, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](v40, 0x1080C4098BBCF0FLL);
  }

  HGNode::~HGNode(this);
}

{
  HGRasterizer::~HGRasterizer(this);

  HGObject::operator delete(v1);
}

uint64_t HGRasterizer::getActiveShaderNode(HGRasterizer *this)
{
  if (*(this + 1077) == 1 && *(this + 95))
  {
    return *(this + 95);
  }

  else
  {
    return *(this + 94);
  }
}

uint64_t HGRasterizer::enableXFormConcatenation(uint64_t result, uint64_t a2)
{
  *(result + 1108) |= 0x80u;
  if ((*(result + 1141) & 1) == 0)
  {
    v3 = result;
    result = *(result + 760);
    if (result)
    {
      result = (*(*result + 24))(result);
    }

    if (a2)
    {
      result = (*(*a2 + 16))(a2);
    }

    *(v3 + 760) = a2;
  }

  return result;
}

uint64_t HGRasterizer::RenderInputOrder(HGRasterizer *this, unsigned int a2)
{
  if (a2 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t HGRasterizer::GetProgram(uint64_t a1)
{
  if (*(a1 + 1077) == 1 && (v2 = *(a1 + 760)) != 0)
  {
    return (*(*v2 + 184))();
  }

  else
  {
    return (*(**(a1 + 752) + 184))();
  }
}

uint64_t HGRasterizer::InitProgramDescriptor(uint64_t a1)
{
  if (*(a1 + 1077) == 1 && (v2 = *(a1 + 760)) != 0)
  {
    return (*(*v2 + 328))();
  }

  else
  {
    return (*(**(a1 + 752) + 328))();
  }
}

uint64_t HGRasterizer::RenderTile(atomic_uint *this, HGTile *a2)
{
  if (((*(*this + 152))(this, 0xFFFFFFFFLL) & 0x80) != 0)
  {
    add = atomic_fetch_add(this + 279, 1u);
    v7 = (*(**(*(a2 + 42) + 152) + 128))(*(*(a2 + 42) + 152), 5);
    v8 = *(a2 + 1);
    v9 = (*(a2 + 3) - v8) / v7;
    v10 = v9 * add;
    v11 = v9 * add + v8;
    v12 = v11 + v9;
    if (add == v7 - 1)
    {
      v13 = *(a2 + 3);
    }

    else
    {
      v13 = v12;
    }

    v14 = HGRectMake4i(*a2, v11, *(a2 + 2), v13);
    v16 = v15;
    memcpy(v17, a2, sizeof(v17));
    v17[0] = v14;
    v17[1] = v16;
    v17[2] += 16 * (*(a2 + 6) * v10);
    return (*(*this + 656))(this, v17, 0);
  }

  else
  {
    v4 = *(*this + 656);

    return v4(this, a2, 1);
  }
}

void HGRasterizer::RenderTile(HGRasterizer *this, HGTile *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  HGTile::Renderer(a2);
  operator new();
}

void sub_25FBDB03C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HGSampleRectStat *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  HGSampleRectStat::~HGSampleRectStat(v37);
  HGSampleRectStat::~HGSampleRectStat(v33);
  HGSampleRectStat::~HGSampleRectStat(v38);
  HGSampleRectStat::~HGSampleRectStat(v36);
  HGSampleRectStat::~HGSampleRectStat(v35);
  HGSampleRectStat::~HGSampleRectStat(v34);
  HGSampleRectStat::~HGSampleRectStat(a10);
  HGSampleRectStat::~HGSampleRectStat(&a33);
  HGTransform::~HGTransform(&a13);
  _Unwind_Resume(a1);
}

void sub_25FBDB090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTransform::~HGTransform(va);
  _Unwind_Resume(a1);
}

char *HGRasterizer::begin(char *this, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (this[1140])
  {
    this[1140] = 0;
    *(this + 274) = a2;
    *(this + 298) = a2;
  }

  else
  {
    v2 = *(this + 62);
    *(v2 + 240) = 1;
    v3 = *(v2 + 80);
    if (v3)
    {
      LODWORD(v3) = *(v3 + 8);
    }

    v4 = this;
    HGRasterizer::drawArrays(this, *(this + 274), *(this + 278), v3 - *(this + 278));
    v4[1140] = 1;
    snprintf(__str, 0x100uLL, "%s: invalid call between hglBegin/hglEnd", "hglBegin");
    *(v4 + 275) = 1282;
    return HGLogger::warning("%s", v5, v6, __str);
  }

  return this;
}

void HGRasterizer::end(HGRasterizer *this)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(this + 1140) == 1)
  {
    snprintf(__str, 0x100uLL, "%s: invalid call outside hglBegin/hglEnd", "hglEnd");
    *(this + 275) = 1282;
    HGLogger::warning("%s", v2, v3, __str);
  }

  else
  {
    v4 = *(this + 62);
    *(v4 + 240) = 1;
    v5 = *(v4 + 80);
    if (v5)
    {
      LODWORD(v5) = *(v5 + 8);
    }

    HGRasterizer::drawArrays(this, *(this + 274), *(this + 278), v5 - *(this + 278));
    *(this + 1140) = 1;
  }
}

void HGRasterizer::drawArrays(HGRasterizer *this, int a2, int a3, unsigned int a4)
{
  v4 = a4 - 2;
  if (a4 < 2)
  {
    return;
  }

  v9 = *(this + 62);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v10 + 8);
    v12 = *(v9 + 244);
    if (*(v9 + 240))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = 0;
    v12 = *(v9 + 244);
    if (*(v9 + 240))
    {
      goto LABEL_15;
    }
  }

  __asm { FMOV            V0.4S, #1.0 }

  v83 = _Q0;
  v20 = *(v9 + 64);
  v18 = (v9 + 64);
  v19 = v20;
  if (!v20)
  {
    HGArrayDataRef::allocate(v18);
  }

  v21 = *(v19 + 8) + a4;
  v22 = a4;
  if (*(v19 + 12) < v21)
  {
    v23 = *(v19 + 4) * v21;
    *(v19 + 12) = v21;
    if (v23)
    {
      operator new[]();
    }

    v24 = *(v19 + 16);
    if (v24)
    {
      MEMORY[0x2666E9ED0](v24, 0x1000C8077774924);
    }

    *(v19 + 16) = 0;
    v22 = a4;
  }

  do
  {
    HGArray<__simd128_float32_t,(HGFormat)28>::append((*(this + 62) + 64), &v83);
    --v22;
  }

  while (v22);
LABEL_15:
  if (a2 == 1)
  {
    HGRasterizer::drawLines(this);
    return;
  }

  *(this + 278) += a4;
  if (a2 > 5)
  {
    if (a2 != 6)
    {
      if (a2 != 7)
      {
        goto LABEL_27;
      }

      v4 = (a4 >> 1) & 0x3FFFFFFE;
    }

    goto LABEL_25;
  }

  if (a2 != 4)
  {
    if (a2 != 5)
    {
LABEL_27:
      puts("Unknown polygon mode in drawArrays");
      v25 = 0;
      v4 = 0;
      v26 = *(this + 62);
      if (!*(v26 + 244))
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

LABEL_25:
    v25 = 3 * v4;
    v26 = *(this + 62);
    if (!*(v26 + 244))
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v4 = a4 / 3;
  v25 = 3 * (a4 / 3);
  v26 = *(this + 62);
  if (!*(v26 + 244))
  {
    goto LABEL_33;
  }

LABEL_30:
  if (*(this + 273) == 4)
  {
    v27 = *(this + 143);
    if (v27)
    {
      v28 = *(v27 + 8) - 1;
    }

    else
    {
      v28 = -1;
    }

    v59 = *(v27 + 16) + *(v27 + 4) * v28;
    *(v59 + *(this + 288)) += v25;
    HGeometryData::SizeIndexArrays(v26, v4, v25);
    if (a2 <= 5)
    {
      goto LABEL_34;
    }

LABEL_49:
    if (a2 == 6)
    {
      if (v4)
      {
        v72 = *(this + 62);
        v73 = v72[2];
        v74 = *(v73 + 16);
        v75 = *v72;
        v76 = *(*v72 + 16);
        v77 = v72[6];
        v78 = *(v77 + 16);
        v79 = a3;
        do
        {
          v80 = *(v73 + 4);
          v81 = *(v72 + 6);
          *(v74 + v80 * v11 + v81) = a3;
          v82 = v79++ + 2;
          *(v74 + v80 + v80 * v11 + v81) = v79;
          *(v74 + v80 * (v11 + 2) + v81) = v82;
          *(v76 + *(v75 + 4) * v12 + *(v72 + 2)) = v11;
          *(v78 + *(v77 + 4) * v12 + *(v72 + 14)) = 3;
          v11 += 3;
          ++v12;
          --v4;
        }

        while (v4);
      }
    }

    else
    {
      if (a2 != 7)
      {
        goto LABEL_55;
      }

      if (a4 >= 4)
      {
        v60 = a4 >> 2;
        v61 = *(this + 62);
        v62 = *v61;
        v63 = *(*v61 + 16);
        v64 = v61[6];
        v65 = *(v64 + 16);
        v66 = v61[2];
        v67 = *(v66 + 16);
        do
        {
          *(v63 + *(v62 + 4) * v12 + *(v61 + 2)) = v11;
          *(v65 + *(v64 + 4) * v12 + *(v61 + 14)) = 3;
          v68 = *(v66 + 4);
          v69 = *(v61 + 6);
          *(v67 + v68 * v11 + v69) = a3;
          *(v67 + v68 + v68 * v11 + v69) = a3 + 1;
          *(v67 + v68 * (v11 + 2) + v69) = a3 + 2;
          *(v63 + *(v62 + 4) * (v12 + 1) + *(v61 + 2)) = v11 + 3;
          *(v65 + *(v64 + 4) * (v12 + 1) + *(v61 + 14)) = 3;
          v12 += 2;
          v70 = *(v66 + 4);
          v71 = *(v61 + 6);
          *(v67 + v70 * (v11 + 3) + v71) = a3;
          *(v67 + v70 * (v11 + 4) + v71) = a3 + 2;
          *(v67 + v70 * (v11 + 5) + v71) = a3 + 3;
          a3 += 4;
          v11 += 6;
          --v60;
        }

        while (v60);
      }
    }

    return;
  }

LABEL_33:
  *(this + 273) = 4;
  LODWORD(v83) = v25;
  HGArray<int,(HGFormat)34>::append((this + 1144), &v83);
  LODWORD(v83) = 4;
  HGArray<int,(HGFormat)34>::append((this + 1160), &v83);
  LODWORD(v83) = *(*(this + 62) + 244);
  HGArray<int,(HGFormat)34>::append((this + 1176), &v83);
  HGeometryData::SizeIndexArrays(*(this + 62), v4, v25);
  if (a2 > 5)
  {
    goto LABEL_49;
  }

LABEL_34:
  if (a2 != 4)
  {
    if (a2 == 5)
    {
      if (v4)
      {
        v29 = 0;
        v30 = *(this + 62);
        v31 = v30[2];
        v32 = *(v31 + 16);
        v33 = *v30;
        v34 = *(*v30 + 16);
        v35 = v30[6];
        v36 = *(v35 + 16);
        do
        {
          v37 = *(v31 + 4);
          v38 = *(v30 + 6);
          *(v32 + v37 * v11 + v38) = a3 + v29;
          *(v32 + v37 + v37 * v11 + v38) = a3 + v29 + 1;
          *(v32 + v37 * (v11 + 2) + v38) = a3 + v29 + 2;
          *(v34 + *(v33 + 4) * (v12 + v29) + *(v30 + 2)) = v11;
          *(v36 + *(v35 + 4) * (v12 + v29) + *(v30 + 14)) = 3;
          v11 += 3;
          v29 += 2;
        }

        while (v29 < v4);
        if (v4 != 1)
        {
          v39 = *(this + 62);
          v40 = v39[2];
          v41 = *(v40 + 16);
          v42 = *v39;
          v43 = *(*v39 + 16);
          v44 = v39[6];
          v45 = *(v44 + 16);
          for (i = 1; i < v4; i += 2)
          {
            v47 = *(v40 + 4);
            v48 = v47 * v11;
            v49 = *(v39 + 6);
            *(v41 + v48 + v49) = a3 + i + 1;
            *(v41 + v47 + v48 + v49) = a3 + i;
            *(v41 + v47 * (v11 + 2) + v49) = a3 + i + 2;
            *(v43 + *(v42 + 4) * (v12 + i) + *(v39 + 2)) = v11;
            *(v45 + *(v44 + 4) * (v12 + i) + *(v39 + 14)) = 3;
            v11 += 3;
          }
        }
      }

      return;
    }

LABEL_55:
    puts("Unknown polygon mode in drawArrays");
    return;
  }

  if (v4)
  {
    v50 = *(this + 62);
    v51 = v50[2];
    v52 = *(v51 + 16);
    v53 = *v50;
    v54 = *(*v50 + 16);
    v55 = v50[6];
    v56 = *(v55 + 16);
    do
    {
      v57 = *(v51 + 4);
      v58 = *(v50 + 6);
      *(v52 + v57 * v11 + v58) = a3;
      *(v52 + v57 + v57 * v11 + v58) = a3 + 1;
      *(v52 + v57 * (v11 + 2) + v58) = a3 + 2;
      *(v54 + *(v53 + 4) * v12 + *(v50 + 2)) = v11;
      *(v56 + *(v55 + 4) * v12 + *(v50 + 14)) = 3;
      a3 += 3;
      v11 += 3;
      ++v12;
      --v4;
    }

    while (v4);
  }
}

uint64_t HGRasterizer::loadTransform(uint64_t result)
{
  v1 = *(result + 1104);
  if (v1 == 5890)
  {
    result = **(result + 8 * *(result + 1088) + 432);
    if (result)
    {
      return (*(*result + 96))();
    }
  }

  else if (v1 == 5888)
  {
    return (*(*(result + 768) + 96))();
  }

  return result;
}

uint64_t HGRasterizer::translatef(uint64_t this, float a2, float a3, float a4)
{
  v4 = *(this + 1104);
  if (v4 == 5890)
  {
    this = **(this + 8 * *(this + 1088) + 432);
    if (!this)
    {
      return this;
    }
  }

  else
  {
    if (v4 != 5888)
    {
      return this;
    }

    this += 768;
  }

  return (*(*this + 120))(a2, a3, a4);
}

uint64_t HGRasterizer::scalef(uint64_t this, float a2, float a3, float a4)
{
  v4 = *(this + 1104);
  if (v4 == 5890)
  {
    this = **(this + 8 * *(this + 1088) + 432);
    if (!this)
    {
      return this;
    }
  }

  else
  {
    if (v4 != 5888)
    {
      return this;
    }

    this += 768;
  }

  return (*(*this + 144))(a2, a3, a4);
}

float HGRasterizer::getSuperSampleScale(uint64_t a1)
{
  v1 = *(a1 + 1224);
  result = 1.0;
  if (*(v1 + 12) == 1 && *(v1 + 16) == 1)
  {
    return *(v1 + 20);
  }

  return result;
}

const char *HGRasterizer::label_B(HGRasterizer *this)
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (*(this + 1077) == 1)
  {
    if (*(this + 95) || *(this + 94))
    {
      *(&__p.__r_.__value_.__s + 23) = 8;
      strcpy(&__p, "Shader: ");
      v2 = *(this + 95);
      if (v2)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    return "No shader";
  }

  if (!*(this + 94))
  {
    return "No shader";
  }

  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "Shader: ");
LABEL_8:
  v2 = *(this + 94);
LABEL_9:
  v3 = (*(*v2 + 48))(v2);
  v4 = std::string::append(&__p, v3);
  v5 = v4->__r_.__value_.__r.__words[0];
  v10[0] = v4->__r_.__value_.__l.__size_;
  *(v10 + 7) = *(&v4->__r_.__value_.__r.__words[1] + 7);
  v6 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v7 = (this + 1200);
  if (*(this + 1223) < 0)
  {
    operator delete(*v7);
  }

  *(this + 150) = v5;
  *(this + 151) = v10[0];
  *(this + 1215) = *(v10 + 7);
  *(this + 1223) = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((*(this + 1223) & 0x80) == 0)
    {
      return v7;
    }

    return *v7;
  }

  if (v6 < 0)
  {
    return *v7;
  }

  return v7;
}

void sub_25FBDBCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGRasterizer::addFragmentShader(uint64_t this, HGNode3D *a2)
{
  if ((*(this + 1141) & 1) == 0)
  {
    v3 = this;
    *(this + 1064) = 1;
    v4 = *(this + 752);
    if (v4)
    {
      (*(*v4 + 24))(v4);
    }

    if (!a2)
    {
      v5 = HGObject::operator new(0x1B0uLL);
      HRasterizerGenerator::HRasterizerGenerator(v5);
    }

    this = (*(*a2 + 16))(a2);
    *(v3 + 752) = a2;
  }

  return this;
}

__n128 HGRasterizer::color4f(__n128 *this, __n128 result, float a3, float a4, float a5)
{
  result.n128_f32[1] = a3;
  result.n128_u64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  this[38] = result;
  return result;
}

uint64_t HGRasterizer::texCoord2f(__n128 *this, __n128 a2, float a3)
{
  this[66].n128_u32[3] |= 1u;
  a2.n128_f32[1] = a3;
  a2.n128_u32[2] = 0;
  a2.n128_u32[3] = 1.0;
  this[39] = a2;
  v3 = this[27].n128_u64[0];
  result = (*(**v3 + 224))();
  if (!result)
  {
    v5 = *(**v3 + 208);

    return v5();
  }

  return result;
}

uint64_t HGRasterizer::addVertex(HGRasterizer *this, float a2, float a3, float a4, float a5)
{
  HGeometryData::AllocArrays(*(this + 62), *(this + 270) + 1, *(this + 267));
  v6.i64[0] = __PAIR64__(LODWORD(a3), LODWORD(a2));
  v7 = *(this + 62);
  v6.i64[1] = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v19 = v6;
  HGArray<__simd128_float32_t,(HGFormat)28>::append((v7 + 80), &v19);
  __asm { FMOV            V1.4S, #1.0 }

  v19 = vmaxq_f32(vminq_f32(*(this + 38), _Q1), 0);
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((*(this + 62) + 64), &v19);
  v14 = *(this + 267);
  if (v14)
  {
    result = HGArray<__simd128_float32_t,(HGFormat)28>::append((*(this + 62) + 112), this + 39);
    v14 = *(this + 267);
    if ((v14 & 2) == 0)
    {
LABEL_3:
      if ((v14 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((*(this + 62) + 128), this + 40);
  v14 = *(this + 267);
  if ((v14 & 4) == 0)
  {
LABEL_4:
    if ((v14 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((*(this + 62) + 144), this + 41);
  v14 = *(this + 267);
  if ((v14 & 8) == 0)
  {
LABEL_5:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((*(this + 62) + 160), this + 42);
  v14 = *(this + 267);
  if ((v14 & 0x10) == 0)
  {
LABEL_6:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((*(this + 62) + 176), this + 43);
  v14 = *(this + 267);
  if ((v14 & 0x20) == 0)
  {
LABEL_7:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    result = HGArray<__simd128_float32_t,(HGFormat)28>::append((*(this + 62) + 208), this + 45);
    if ((*(this + 267) & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_16:
  result = HGArray<__simd128_float32_t,(HGFormat)28>::append((*(this + 62) + 192), this + 44);
  v14 = *(this + 267);
  if ((v14 & 0x40) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((v14 & 0x80) != 0)
  {
LABEL_9:
    result = HGArray<__simd128_float32_t,(HGFormat)28>::append((*(this + 62) + 224), this + 46);
  }

LABEL_10:
  ++*(this + 270);
  return result;
}

const char *HGRasterizer::vertex4f(HGRasterizer *this, float a2, float a3, float a4, float a5)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(this + 1140) == 1)
  {
    snprintf(__str, 0x100uLL, "%s: invalid call outside hglBegin/hglEnd", "hglVertex4f");
    *(this + 275) = 1282;
    return HGLogger::warning("%s", v6, v7, __str);
  }

  else
  {

    return HGRasterizer::addVertex(this, a2, a3, a4, a5);
  }
}

HGNode *HGRasterizer::EnableInplaceHardwareBlending(HGNode *this)
{
  (*(*this + 584))(this);

  return HGNode::EnableInplaceHardwareBlending(this);
}

uint64_t HGRasterizer::enableBlending(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    v3 = 37;
  }

  else
  {
    v3 = 5;
  }

  *(result + 1108) |= v3;
  *(result + 1060) = a2;
  return result;
}

uint64_t HGRasterizer::SetParameter(HGRasterizer *this, const char *a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a4 >= 0.0)
  {
    v8 = a4;
  }

  else
  {
    v8 = 0.0;
  }

  if (a5 >= 0.0)
  {
    v9 = a5;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *(this + 153);
  v11 = *(v10 + 12);
  v12 = *(v10 + 16);
  v13 = *(v10 + 20);
  v14 = v8 != 0.0;
  LODWORD(v10) = vcvtps_s32_f32(v9);
  v15 = v10 & 0xFFFFFFFE;
  if ((v10 & 0xFFFFFFFC) != 0)
  {
    v15 = 4;
  }

  if (v9 == 0.0)
  {
    v16 = 4;
  }

  else
  {
    v16 = v15;
  }

  if (v16 != v9)
  {
    v17 = this;
    v18 = a3;
    HGLogger::warning("Requested raster sample count for anti-aliasing was reduced from %3.2f to %d.\n", a2, a7, v9, v16);
    a3 = v18;
    this = v17;
  }

  if ((((a3 == 1.0) ^ v11) & 1) == 0 && v12 == v14 && v13 == v16)
  {
    return 0;
  }

  v20 = *(this + 153);
  *(v20 + 12) = a3 == 1.0;
  *(v20 + 16) = v14;
  *(v20 + 20) = v16;
  return 1;
}

float HGRasterizer::GetParameter(HGRasterizer *this, int a2, float *a3, float result)
{
  if (!a2)
  {
    v4 = *(this + 153);
    v5 = 1.0;
    v6 = 0;
    if (!*(v4 + 16))
    {
      v5 = 0.0;
    }

    LOBYTE(v6) = *(v4 + 12);
    *a3 = v6;
    a3[1] = v5;
    result = *(v4 + 20);
    a3[2] = result;
    a3[3] = 0.0;
  }

  return result;
}

uint64_t HGRasterizer::SetActiveShaderNodeParameter(HGRasterizer *this, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = *(this + 95);
  if (v6)
  {
    v7 = a2.n128_u32[0];
    v8 = a3.n128_u32[0];
    v9 = a4.n128_u32[0];
    v10 = a5.n128_u32[0];
    (*(*v6 + 96))(v6);
    a2.n128_u32[0] = v7;
    a3.n128_u32[0] = v8;
    a4.n128_u32[0] = v9;
    a5.n128_u32[0] = v10;
  }

  v11 = *(**(this + 94) + 96);

  return v11(a2, a3, a4, a5);
}

uint64_t HGRasterizer::GetROI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (((*(*a2 + 304))(a2) & 1) == 0 && (*(a1 + 1109) & 4) != 0 && (v10 = *(a1 + 752)) != 0)
  {
    v11 = *(*v10 + 400);

    return v11();
  }

  else
  {
    v13 = *(*a1 + 632);

    return v13(a1, 0xFFFFFFFFLL, a2, a3, a4, a5);
  }
}

uint64_t HGRasterizer::GetROI(HGRasterizer *this, int a2, HGRenderer *a3, uint64_t a4, HGRect a5)
{
  v5 = *&a5.var2;
  if ((*(*a3 + 304))(a3))
  {
LABEL_14:
    if (a2 == -1)
    {
      v18 = *(*(this + 63) + 80);
      if (v18)
      {
        if (*(v18 + 8) >= 0xF4241u)
        {
          operator new();
        }
      }
    }

    operator new();
  }

  Input = HGRenderer::GetInput(a3, this, a4);
  v11 = this + 432;
  if (*(*(this + a4 + 54) + 168))
  {
    Input = HGRenderer::GetInput(a3, Input, 0);
  }

  if ((*(this + 1109) & 2) != 0)
  {
    if (!Input)
    {
      goto LABEL_14;
    }
  }

  else if (!Input || ((*(*Input + 152))(Input, 0xFFFFFFFFLL) & 4) == 0)
  {
    goto LABEL_14;
  }

  DOD = HGRenderer::GetDOD(a3, Input);
  v14 = v13;
  if (HGRectIsInfinite(DOD, v13) || (HIDWORD(v14) - HIDWORD(DOD)) * (v14 - DOD) > 0x4000)
  {
    goto LABEL_14;
  }

  if (!HGRectIsNull(DOD, v14))
  {
    if (HGTransform::IsIdentity((*&v11[8 * a4] + 8)) || (v19 = *(this + 95)) == 0)
    {
      v15 = (*(**(this + 94) + 400))(*(this + 94), a3, a4, DOD, v14);
    }

    else
    {
      (*(*v19 + 400))(v19, a3, a4, DOD, v14);
      v15 = (*(**(*&v11[8 * a4] + 152) + 400))();
    }

    v5 = v15;
    *&v21.var0 = v15;
    *&v21.var2 = v16;
  }

  v20 = *&v11[8 * a4];
  *(v20 + 194) = 1;
  *(v20 + 176) = v21;
  return v5;
}

void sub_25FBDCD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(va);
  _Unwind_Resume(a1);
}

void sub_25FBDCD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGArray<__simd128_float32_t,(HGFormat)28>::~HGArray(va);
  _Unwind_Resume(a1);
}

unint64_t HGRasterizer::GetROI(HGRasterizer *this, HGRenderer *a2, uint64_t a3, HGRect a4, HGeometryData *a5, double a6, int32x2_t a7, double a8, double a9, double a10, __n128 a11)
{
  if (((*(this + 267) >> a3) & 1) == 0)
  {
    return 0;
  }

  v13 = this + 432;
  v14 = *(this + a3 + 54);
  if (*(v14 + 194) == 1)
  {
    return *(v14 + 176);
  }

  v17 = *(this + 64);
  if (v17)
  {
    v18 = *(v17 + 28) - *(v17 + 20);
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    v19 = *(a5 + 10);
    if (!v19)
    {
      return 0;
    }

    v18 = *(v19 + 8);
    if (!v18)
    {
      return 0;
    }
  }

  v20 = 0;
  v21 = a5 + 16 * a3;
  a11.n128_u64[0] = 0x8000000080000000;
  v22 = 0x8000000080000000;
  __asm { FMOV            V8.2S, #-1.0 }

  v28 = v18;
  do
  {
    v31 = *(this + a3 + 67);
    if (!v31)
    {
      v33 = (*(*(v21 + 14) + 16) + *(*(v21 + 14) + 4) * v20 + *(v21 + 30));
      a7.i32[0] = v33[1].i32[1];
      v34 = vdiv_f32(*v33, vdup_lane_s32(a7, 0));
      if (v34.f32[0] <= v22)
      {
        goto LABEL_10;
      }

LABEL_20:
      v22 = v22 & 0xFFFFFFFF00000000 | (ceilf(v34.f32[0]) + 1.0);
      goto LABEL_10;
    }

    if ((*(v31 + 12) & 0x20) != 0)
    {
      v40 = a11;
      Content = HGMetalBuffer::GetContent(v31);
      a11 = v40;
    }

    else
    {
      Content = *(v31 + 80);
    }

    a7.i32[0] = HIDWORD(*(Content + 16 * v20));
    v34 = vdiv_f32(*(Content + 16 * v20), vdup_lane_s32(a7, 0));
    if (v34.f32[0] > v22)
    {
      goto LABEL_20;
    }

LABEL_10:
    v29 = vrndm_f32(v34);
    a7 = vcgt_f32(vcvt_f32_s32(a11.n128_u64[0]), v34);
    a11.n128_u64[0] = vbsl_s8(a7, vcvt_s32_f32(vbsl_s8(vceqz_f32(vsub_f32(v34, v29)), vadd_f32(v29, _D8), v29)), a11.n128_u64[0]);
    v30 = (ceilf(v34.f32[1]) + 1.0);
    if (v34.f32[1] > SHIDWORD(v22))
    {
      v22 = v22 | (v30 << 32);
    }

    ++v20;
  }

  while (v28 != v20);
  v35 = a11.n128_u32[1];
  v36 = a11.n128_u32[0];
  v37 = a11.n128_u64[0];
  if (!HGRectIsNull(a11.n128_i64[0], v22))
  {
    if (HGTransform::IsIdentity((*&v13[8 * a3] + 8)) || (v39 = *(this + 95)) == 0)
    {
      v38 = (*(**(this + 94) + 400))(*(this + 94), a2, a3, v37, v22);
    }

    else
    {
      (*(*v39 + 400))(v39, a2, a3, v37, v22);
      v38 = (*(**(*&v13[8 * a3] + 152) + 400))();
    }

    v35 = HIDWORD(v38);
    v36 = v38;
  }

  return v36 | (v35 << 32);
}

uint64_t HGRasterizer::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if ((*(this + 1109) & 8) == 0)
  {
    if (a3 || (IsNull = HGRectIsNull(*&a4.var0, *&a4.var2), v7 = a2, IsNull) && (Input = HGRenderer::GetInput(a2, this, 0), v7 = a2, Input))
    {
      *&a4.var0 = 0;
    }

    else
    {
      *&a4.var0 = (*(*this + 640))(this, v7);
    }
  }

  return *&a4.var0;
}

uint64_t HGRasterizer::GetDOD(HGNode *this, int a2, HGRenderer *a3, int a4, HGRect a5)
{
  if (a4 || HGRectIsNull(*&a5.var0, *&a5.var2) && HGRenderer::GetInput(a3, this, 0))
  {
    return 0;
  }

  (*(*this + 640))(this, a3);
  return *(*(*(this + 52) + 16) + *(*(this + 52) + 4) * a2 + *(this + 106));
}

unint64_t HGRasterizer::CalculatePolygonDODs(HGRasterizer *this, HGRenderer *a2)
{
  v123 = *MEMORY[0x277D85DE8];
  v2 = this + 1124;
  if (*(this + 1076))
  {
    goto LABEL_2;
  }

  v8 = (this + 768);
  v9 = (*(*(this + 96) + 224))(this + 768);
  if (((*(*a2 + 304))(a2) & 1) == 0)
  {
    v10 = *(this + 64);
    if (v10)
    {
      v3 = 0;
      v4 = 0;
      v11 = 0;
      if ((*(v10 + 12) & 0x20) != 0)
      {
        Content = HGMetalBuffer::GetContent(*(this + 64));
        v11 = 0;
        v13 = (*(*(this + 64) + 28) - *(*(this + 64) + 20));
        if (!v13)
        {
LABEL_30:
          if (!v9)
          {
            v33 = v11;
            v34 = HGTransformUtils::MinW(Content);
            *&v124.var0 = v33;
            DOD = HGTransformUtils::GetDOD(v8, (v3 | (v4 << 32)), v124, 0.5, v34);
            v4 = HIDWORD(DOD);
            v3 = DOD;
          }

          *v2 = v3 | (v4 << 32);
          *(v2 + 1) = v11;
          return v3 | (v4 << 32);
        }
      }

      else
      {
        Content = *(v10 + 80);
        v13 = (*(v10 + 28) - *(v10 + 20));
        if (!v13)
        {
          goto LABEL_30;
        }
      }

      v26 = vcvt_s32_f32(*Content);
      v3 = v26.i32[0];
      v4 = v26.u32[1];
      v11 = v26;
      if (v13 != 1)
      {
        v27 = (Content + 16);
        v28 = v13 - 1;
        do
        {
          v29 = *v27;
          v27 += 2;
          v30 = vcvt_s32_f32(v29);
          v26 = vmin_s32(v26, v30);
          if (v11.i32[0] <= v30.i32[0])
          {
            v31 = v30.u32[0];
          }

          else
          {
            v31 = v11.u32[0];
          }

          if (v11.i32[1] <= v30.i32[1])
          {
            v32 = v30.u32[1];
          }

          else
          {
            v32 = v11.u32[1];
          }

          v11 = (v31 | (v32 << 32));
          --v28;
        }

        while (v28);
        v4 = v26.u32[1];
        v3 = v26.i32[0];
      }

      goto LABEL_30;
    }
  }

  if ((*(*a2 + 304))(a2) && *(this + 64) && (HGRasterizer::transformBuffersToGeometryInfo(this, v14, v15) & 1) == 0)
  {
    v3 = 0;
    v4 = 0;
    return v3 | (v4 << 32);
  }

  v16.n128_f64[0] = HGeometryData::operator=(*(this + 63), *(this + 62));
  v17 = (*(*a2 + 304))(a2, v16);
  if (v17)
  {
    v22 = (*(*this + 648))(this, a2);
    v4 = HIDWORD(v22);
    v3 = v22;
    return v3 | (v4 << 32);
  }

  *(this + 1076) = 1;
  if (*(this + 1109))
  {
    v36 = *(this + 52);
    if (v36)
    {
      if ((*(v36 + 12) & 0x80000000) != 0)
      {
        *(v36 + 12) = 0;
        v17 = *(v36 + 16);
        if (v17)
        {
          v17 = MEMORY[0x2666E9ED0](v17, 0x1000C8077774924);
        }

        *(v36 + 16) = 0;
        *(v36 + 8) = 0;
      }

      else
      {
        *(v36 + 8) = 0;
      }
    }
  }

  else
  {
    v23 = *(*(this + 63) + 244);
    v24 = *(this + 52);
    if (v24)
    {
      if (*(v24 + 12) < v23)
      {
        v25 = *(v24 + 4) * v23;
        *(v24 + 12) = v23;
        if (v25)
        {
          operator new[]();
        }

        v17 = *(v24 + 16);
        if (v17)
        {
          v17 = MEMORY[0x2666E9ED0](v17, 0x1000C8077774924);
        }

        *(v24 + 16) = 0;
      }

      *(v24 + 8) = v23;
    }

    else if (v23 > 0)
    {
      HGArrayDataRef::allocate((this + 416));
    }
  }

  v37 = *(this + 63);
  v38 = *(v37 + 244);
  if ((*(this + 1109) & 1) == 0 || v38 < 0x65)
  {
    if (!v38)
    {
LABEL_2:
      v3 = *v2;
      v4 = *(v2 + 1);
      return v3 | (v4 << 32);
    }

    v53 = 0;
    while (1)
    {
      v18.n128_u32[0] = 0;
      *&v21 = vrev64_s32(0);
      v56 = 0.0;
      v57 = *(v37 + 48);
      v58 = *(v57 + 16);
      v59 = *(v57 + 4);
      v60 = v53;
      v61 = v58 + v59 * v53;
      v62 = *(v37 + 56);
      v63 = *(v61 + v62);
      if (v63 >= 1)
      {
        break;
      }

      v65 = 0;
LABEL_140:
      v107 = HGRectIntegral(v37, v18.n128_f32[0], *(&v21 + 1), *&v21, v56);
      v54 = v107;
      v55 = v108;
      if (v65)
      {
        if (v107 == v108)
        {
          v55 = (v108 + 1) | v108 & 0xFFFFFFFF00000000;
        }

        if (!((v55 ^ v107) >> 32))
        {
          v55 = (v108 & 0xFFFFFFFF00000000) + v55 + 0x100000000;
        }
      }

      if ((*(this + 1109) & 1) == 0)
      {
        v109 = (*(*(this + 52) + 16) + *(*(this + 52) + 4) * v60 + *(this + 106));
        *v109 = v107;
        v109[1] = v55;
      }

      if (v60 && !HGRectIsNull(*v2, *(v2 + 1)))
      {
        IsNull = HGRectIsNull(v54, v55);
        v111 = *v2;
        v112 = *(v2 + 1);
        if (!IsNull)
        {
          v111 = HGRectUnion(v111, v112, v54, v55);
        }

        v54 = v111;
        v55 = v112;
      }

      *v2 = v54;
      *(v2 + 1) = v55;
      v53 = v60 + 1;
      v37 = *(this + 63);
      if ((v60 + 1) >= *(v37 + 244))
      {
        goto LABEL_2;
      }
    }

    v64 = 0;
    v65 = 0;
    v66 = 0.0;
    while (1)
    {
      v68 = *(*(*v37 + 16) + *(*v37 + 4) * v60 + *(v37 + 8));
      if (v63 <= v64)
      {
        v69 = 0;
      }

      else
      {
        v69 = v64;
      }

      v70 = v69 + v68;
      v71 = *(v37 + 16);
      v72 = *(v71 + 16);
      v73 = *(v71 + 4);
      v74 = v72 + v70 * v73;
      v75 = *(v37 + 24);
      v76 = *(v74 + v75);
      v77 = *(v37 + 80);
      if (v9)
      {
        v78 = *(v77 + 16);
        v79 = *(v77 + 4);
        v80 = *(v37 + 88);
        v81 = (v78 + v79 * v76 + v80);
        LODWORD(v19) = *v81;
        v120.i32[0] = *v81;
        v82 = v81[1];
        v120.i32[1] = v82;
        v121 = v81[2];
        LODWORD(v20) = v81[3];
        v122 = *&v20;
        v18.n128_u32[0] = *(this + 102);
        if (*&v20 < v18.n128_f32[0])
        {
          v83 = *(v58 + v60 * v59 + v62);
          v84 = v83 - 1;
          if (v83 >= v64)
          {
            v85 = v64 - 1;
          }

          else
          {
            v85 = 0;
          }

          if (v64)
          {
            v84 = v85;
          }

          v86 = (v78 + v79 * *(v72 + (v84 + v68) * v73 + v75) + v80);
          v117 = *v86;
          v118 = v86[1].i32[0];
          LODWORD(v19) = v86[1].i32[1];
          v119 = *&v19;
          if (v83 > v64 + 1)
          {
            v87 = v64 + 1;
          }

          else
          {
            v87 = 0;
          }

          v88 = (v78 + v79 * *(v72 + (v87 + v68) * v73 + v75) + v80);
          v114 = *v88;
          v115 = v88[1].i32[0];
          v116 = v88[1].f32[1];
          if (*&v19 >= v18.n128_f32[0])
          {
            goto LABEL_128;
          }

          goto LABEL_87;
        }

        DWORD1(v19) = v82;
        v18.n128_u64[0] = vdiv_f32(*&v19, vdup_lane_s32(*&v20, 0));
        if (*&v20 != 1.0)
        {
          *&v19 = v18.n128_f64[0];
        }

        v18.n128_u32[0] = v19;
        if (v65)
        {
          goto LABEL_114;
        }
      }

      else
      {
        v113 = v21;
        if (v77 && (v92 = *(v77 + 16)) != 0)
        {
          v93 = v92 + *(v77 + 4) * *(v74 + v75) + *(v37 + 88);
        }

        else
        {
          v93 = 0;
        }

        (*(*(this + 96) + 208))(v8, &v120, v93, 1, v18);
        *&v20 = v122;
        if (v122 < *(this + 102))
        {
          v94 = v64 - 1;
          v95 = *(this + 63);
          v96 = *(*(*(v95 + 6) + 16) + *(*(v95 + 6) + 4) * v60 + v95[14]);
          v97 = v96 - 1;
          if (v96 < v64)
          {
            v94 = 0;
          }

          if (v64)
          {
            v97 = v94;
          }

          v98 = *(v95 + 10);
          if (v98 && (v99 = *(v98 + 16)) != 0)
          {
            v100 = v99 + *(v98 + 4) * *(*(*(v95 + 2) + 16) + *(*(v95 + 2) + 4) * (v97 + *(*(*v95 + 16) + *(*v95 + 4) * v60 + v95[2])) + v95[6]) + v95[22];
          }

          else
          {
            v100 = 0;
          }

          (*(*(this + 96) + 208))(v8, &v117, v100, 1);
          v101 = *(this + 63);
          if (*(*(*(v101 + 6) + 16) + *(*(v101 + 6) + 4) * v60 + v101[14]) > v64 + 1)
          {
            v102 = v64 + 1;
          }

          else
          {
            v102 = 0;
          }

          v103 = *(v101 + 10);
          if (v103 && (v104 = *(v103 + 16)) != 0)
          {
            v105 = v104 + *(v103 + 4) * *(*(*(v101 + 2) + 16) + *(*(v101 + 2) + 4) * (v102 + *(*(*v101 + 16) + *(*v101 + 4) * v60 + v101[2])) + v101[6]) + v101[22];
          }

          else
          {
            v105 = 0;
          }

          (*(*(this + 96) + 208))(v8, &v114, v105, 1);
          *&v19 = v119;
          v18.n128_u32[0] = *(this + 102);
          v21 = v113;
          if (v119 >= v18.n128_f32[0])
          {
LABEL_128:
            v106 = COERCE_DOUBLE(vadd_f32(v120, vmul_n_f32(vsub_f32(v117, v120), (v18.n128_f32[0] - v122) / (*&v19 - v122))));
            *&v20 = vdiv_f32(*&v106, vdup_lane_s32(v18.n128_u64[0], 0));
            if (v18.n128_f32[0] == 1.0)
            {
              *&v20 = v106;
            }

            v89 = *&v20;
            if (v65)
            {
              if (*&v20 >= v66)
              {
                v89 = v66;
              }

              *&v21 = vbsl_s8(vcgt_f32(__PAIR64__(DWORD1(v21), v20), __PAIR64__(DWORD1(v20), v21)), *&v20, *&v21);
              if (*(&v20 + 1) <= v56)
              {
                v65 = 1;
                v90 = v116;
                if (v116 < v18.n128_f32[0])
                {
                  goto LABEL_135;
                }

                goto LABEL_88;
              }
            }

            else
            {
              *&v21 = v20;
            }

            v56 = *(&v20 + 1);
            v65 = 1;
            v90 = v116;
            if (v116 < v18.n128_f32[0])
            {
LABEL_135:
              v18.n128_f32[0] = v89;
              goto LABEL_72;
            }

            goto LABEL_88;
          }

LABEL_87:
          v89 = v66;
          v90 = v116;
          if (v116 < v18.n128_f32[0])
          {
            goto LABEL_135;
          }

LABEL_88:
          *&v20 = vadd_f32(v120, vmul_n_f32(vsub_f32(v114, v120), (v18.n128_f32[0] - v122) / (v90 - v122)));
          v91 = v18.n128_f32[0] == 1.0;
          v18.n128_u64[0] = vdiv_f32(*&v20, vdup_lane_s32(v18.n128_u64[0], 0));
          if (!v91)
          {
            *&v20 = v18.n128_f64[0];
          }

          v18.n128_u32[0] = v20;
          if (v65)
          {
            if (*&v20 >= v89)
            {
              v18.n128_f32[0] = v89;
            }

            v19 = v20;
            DWORD1(v19) = DWORD1(v21);
            *&v21 = vbsl_s8(vcgt_f32(*&v19, __PAIR64__(DWORD1(v20), v21)), *&v20, *&v21);
            if (*(&v20 + 1) > v56)
            {
              v56 = *(&v20 + 1);
            }
          }

          else
          {
            *&v21 = v20;
            v56 = *(&v20 + 1);
          }

          goto LABEL_71;
        }

        *&v19 = v120;
        v21 = v113;
        v18.n128_u64[0] = vdiv_f32(v120, vdup_lane_s32(*&v20, 0));
        if (v122 != 1.0)
        {
          *&v19 = v18.n128_f64[0];
        }

        v18.n128_u32[0] = v19;
        if (v65)
        {
LABEL_114:
          if (v18.n128_f32[0] >= v66)
          {
            v18.n128_f32[0] = v66;
          }

          v20 = v19;
          DWORD1(v20) = DWORD1(v21);
          *&v20 = vcgt_f32(*&v20, __PAIR64__(DWORD1(v19), v21));
          *&v21 = vbsl_s8(*&v20, *&v19, *&v21);
          if (*(&v19 + 1) <= v56)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }
      }

      *&v21 = v19;
LABEL_70:
      v56 = *(&v19 + 1);
LABEL_71:
      v65 = 1;
LABEL_72:
      ++v64;
      v37 = *(this + 63);
      v67 = *(v37 + 48);
      v58 = *(v67 + 16);
      v59 = *(v67 + 4);
      v62 = *(v37 + 56);
      v63 = *(v58 + v59 * v60 + v62);
      v66 = v18.n128_f32[0];
      if (v64 >= v63)
      {
        goto LABEL_140;
      }
    }
  }

  v3 = 0;
  v4 = 0;
  v39 = 0;
  v40 = *(v37 + 80);
  if (v40)
  {
    v41 = *(v40 + 8);
    if (v41)
    {
      v42 = (*(v40 + 16) + *(v37 + 88));
      v43 = vcvt_s32_f32(*v42);
      v3 = v43.i32[0];
      v4 = v43.u32[1];
      v39 = v43;
      v44 = v41 - 1;
      if (v44)
      {
        v45 = *(v40 + 4);
        v46 = v45;
        do
        {
          v47 = vcvt_s32_f32(*(v42 + v46));
          v43 = vmin_s32(v43, v47);
          if (v39.i32[0] <= v47.i32[0])
          {
            v48 = v47.u32[0];
          }

          else
          {
            v48 = v39.u32[0];
          }

          if (v39.i32[1] <= v47.i32[1])
          {
            v49 = v47.u32[1];
          }

          else
          {
            v49 = v39.u32[1];
          }

          v39 = (v48 | (v49 << 32));
          v46 += v45;
          --v44;
        }

        while (v44);
        v4 = v43.u32[1];
        v3 = v43.i32[0];
      }
    }
  }

  if (!v9)
  {
    v50 = v39;
    v51 = HGTransformUtils::MinW(v17);
    *&v125.var0 = v50;
    v52 = HGTransformUtils::GetDOD(v8, (v3 | (v4 << 32)), v125, 0.5, v51);
    v4 = HIDWORD(v52);
    v3 = v52;
  }

  *v2 = v3 | (v4 << 32);
  *(v2 + 1) = v39;
  return v3 | (v4 << 32);
}

uint64_t HGRasterizer::transformBuffersToGeometryInfo(HGRasterizer *this, const char *a2, char *a3)
{
  if (*(this + 270))
  {
    return 0;
  }

  v5 = *(this + 64);
  if (!v5)
  {
    v22 = "Rasterizer::transformBuffersToGeometryInfo - no populated vertexBuffer set.";
LABEL_52:
    HGLogger::warning(v22, a2, a3);
    return 0;
  }

  v76 = *(v5 + 80);
  v6 = *(this + 66);
  if (v6 && *(v6 + 28) - *(v6 + 20) != *(v5 + 28) - *(v5 + 20))
  {
    v22 = "Rasterizer::transformBuffersToGeometryInfo - size mismatch between color and vertex buffers.";
    goto LABEL_52;
  }

  v74 = *(v6 + 80);
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v7 = *(this + 67);
  if (v7)
  {
    if (*(v7 + 28) - *(v7 + 20) != *(v5 + 28) - *(v5 + 20))
    {
      goto LABEL_30;
    }

    v7 = *(v7 + 80);
  }

  *&v77 = v7;
  v8 = *(this + 68);
  if (v8)
  {
    if (*(v8 + 28) - *(v8 + 20) != *(v5 + 28) - *(v5 + 20))
    {
      goto LABEL_30;
    }

    v8 = *(v8 + 80);
  }

  *(&v77 + 1) = v8;
  v9 = *(this + 69);
  if (v9)
  {
    if (*(v9 + 28) - *(v9 + 20) != *(v5 + 28) - *(v5 + 20))
    {
      goto LABEL_30;
    }

    v9 = *(v9 + 80);
  }

  *&v78 = v9;
  v10 = *(this + 70);
  if (v10)
  {
    if (*(v10 + 28) - *(v10 + 20) != *(v5 + 28) - *(v5 + 20))
    {
      goto LABEL_30;
    }

    v10 = *(v10 + 80);
  }

  *(&v78 + 1) = v10;
  v11 = *(this + 71);
  if (v11)
  {
    if (*(v11 + 28) - *(v11 + 20) != *(v5 + 28) - *(v5 + 20))
    {
      goto LABEL_30;
    }

    v11 = *(v11 + 80);
  }

  *&v79 = v11;
  v12 = *(this + 72);
  if (v12)
  {
    if (*(v12 + 28) - *(v12 + 20) != *(v5 + 28) - *(v5 + 20))
    {
      goto LABEL_30;
    }

    v12 = *(v12 + 80);
  }

  *(&v79 + 1) = v12;
  v13 = *(this + 73);
  if (v13)
  {
    if (*(v13 + 28) - *(v13 + 20) != *(v5 + 28) - *(v5 + 20))
    {
      goto LABEL_30;
    }

    v13 = *(v13 + 80);
  }

  *&v80 = v13;
  v14 = *(this + 74);
  if (!v14)
  {
    goto LABEL_31;
  }

  if (*(v14 + 28) - *(v14 + 20) == *(v5 + 28) - *(v5 + 20))
  {
    *(&v80 + 1) = *(v14 + 80);
    goto LABEL_31;
  }

LABEL_30:
  HGLogger::warning("Rasterizer::transformBuffersToGeometryInfo - size mismatch between color and tex coord buffers.", a2, a3);
  v5 = *(this + 64);
LABEL_31:
  if (*(v5 + 28) != *(v5 + 20))
  {
    v23 = 0;
    v24 = this + 624;
    __asm { FMOV            V0.4S, #1.0 }

    v75 = _Q0;
    do
    {
      v30 = v75;
      if (*(this + 66))
      {
        v30 = *(v74 + 16 * v23);
      }

      v31 = 0;
      *(this + 38) = v30;
      v32 = 624;
      do
      {
        v33 = *(&v77 + v31);
        if (!v33)
        {
          if (atomic_load_explicit(&qword_280C5CE58, memory_order_acquire))
          {
            if ((atomic_load_explicit(qword_280C5CE60, memory_order_acquire) & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          else
          {
            HGRasterizer::transformBuffersToGeometryInfo();
            if ((atomic_load_explicit(qword_280C5CE60, memory_order_acquire) & 1) == 0)
            {
LABEL_48:
              HGRasterizer::transformBuffersToGeometryInfo();
            }
          }

          *&v24[16 * v31] = xmmword_280C5CE70;
          goto LABEL_42;
        }

        v34 = *(v33 + 16 * v23);
        *(this + 267) |= 1 << v31;
        *&v24[16 * v31] = v34;
        v35 = *(this + v31 + 54);
        if (!(*(**v35 + 224))())
        {
          (*(**v35 + 208))(*v35, this + v32, this + v32, 1);
        }

LABEL_42:
        ++v31;
        v32 += 16;
      }

      while (v31 != 8);
      HGRasterizer::addVertex(this, COERCE_FLOAT(*(v76 + 16 * v23)), COERCE_FLOAT(HIDWORD(*(v76 + 16 * v23))), COERCE_FLOAT(*(v76 + 16 * v23 + 8)), COERCE_FLOAT(HIDWORD(*(v76 + 16 * v23))));
      ++v23;
    }

    while (v23 < (*(*(this + 64) + 28) - *(*(this + 64) + 20)));
  }

  v15 = *(this + 62);
  *(v15 + 240) = 1;
  v16 = *(this + 65);
  if (!v16)
  {
    v36 = *(v15 + 80);
    if (v36)
    {
      LODWORD(v36) = *(v36 + 8);
    }

    HGRasterizer::drawArrays(this, *(this + 274), *(this + 278), v36 - *(this + 278));
    return 1;
  }

  v17 = *(v16 + 28);
  v18 = *(v16 + 20);
  (*(*v16 + 16))(*(this + 65));
  v19 = *(v16 + 80);
  (*(*v16 + 24))(v16);
  v20 = (v17 - v18);
  if (v17 == v18)
  {
    v21 = 0;
    goto LABEL_71;
  }

  if (v20 < 4)
  {
    v37 = 0;
    v21 = 0;
    goto LABEL_67;
  }

  if (v20 < 0x10)
  {
    v21 = 0;
    v37 = 0;
LABEL_64:
    v48 = v37;
    v37 = v20 & 0xFFFFFFFC;
    v49 = v21;
    v50 = (v19 + 2 * v48);
    v51 = v48 - v37;
    v52.i64[0] = 0x100000001;
    v52.i64[1] = 0x100000001;
    do
    {
      v53 = *v50++;
      v49 = vaddq_s32(v49, vandq_s8(vmovl_u16(vceq_s16(v53, -1)), v52));
      v51 += 4;
    }

    while (v51);
    v21 = vaddvq_s32(v49);
    if (v37 == v20)
    {
      goto LABEL_71;
    }

    goto LABEL_67;
  }

  v37 = v20 & 0xFFFFFFF0;
  v38 = v19 + 1;
  v39 = 0uLL;
  v40.i64[0] = -1;
  v40.i64[1] = -1;
  v41.i64[0] = 0x100000001;
  v41.i64[1] = 0x100000001;
  v42 = v37;
  v43 = 0uLL;
  v44 = 0uLL;
  v45 = 0uLL;
  do
  {
    v46 = vceqq_s16(v38[-1], v40);
    v47 = vceqq_s16(*v38, v40);
    v43 = vaddq_s32(v43, vandq_s8(vmovl_high_u16(v46), v41));
    v39 = vaddq_s32(v39, vandq_s8(vmovl_u16(*v46.i8), v41));
    v45 = vaddq_s32(v45, vandq_s8(vmovl_high_u16(v47), v41));
    v44 = vaddq_s32(v44, vandq_s8(vmovl_u16(*v47.i8), v41));
    v38 += 2;
    v42 -= 16;
  }

  while (v42);
  v21 = vaddvq_s32(vaddq_s32(vaddq_s32(v44, v39), vaddq_s32(v45, v43)));
  if (v37 == v20)
  {
    goto LABEL_71;
  }

  if (((v17 - v18) & 0xC) != 0)
  {
    goto LABEL_64;
  }

LABEL_67:
  v54 = v19 + v37;
  v55 = v20 - v37;
  do
  {
    v56 = *v54++;
    if (v56 == -1)
    {
      ++v21;
    }

    --v55;
  }

  while (v55);
LABEL_71:
  v57 = v21 + v20;
  v58 = *(this + 62);
  v61 = *(v58 + 32);
  v59 = (v58 + 32);
  v60 = v61;
  if (v61)
  {
    if (*(v60 + 12) < v57)
    {
      v62 = *(v60 + 4) * v57;
      *(v60 + 12) = v57;
      if (v62)
      {
        operator new[]();
      }

      v64 = *(v60 + 16);
      if (v64)
      {
        MEMORY[0x2666E9ED0](v64, 0x1000C8077774924);
      }

      *(v60 + 16) = 0;
    }

    *(v60 + 8) = v57;
    if (v17 != v18)
    {
      goto LABEL_83;
    }
  }

  else
  {
    if (v57 > 0)
    {
      HGArrayDataRef::allocate(v59);
    }

    if (v17 != v18)
    {
LABEL_83:
      v65 = 0;
      do
      {
        while (1)
        {
          v67 = v19->u16[0];
          if (v67 == 0xFFFF)
          {
            break;
          }

          v63 = *(this + 62);
          v66 = *(*(v63 + 32) + 16) + *(*(v63 + 32) + 4) * v65++;
          *(v66 + *(v63 + 40)) = v67;
          v19 = (v19 + 2);
          if (!--v20)
          {
            goto LABEL_87;
          }
        }

        v63 = *(this + 62);
        v68 = *(v63 + 32);
        v69 = *(v68 + 16);
        v70 = *(v68 + 4);
        v71 = *(v63 + 40);
        *(v69 + v70 * v65 + v71) = v19[-1].i16[7];
        v72 = v19->u16[1];
        v19 = (v19 + 2);
        v73 = v70 + v70 * v65;
        v65 += 2;
        *(v69 + v73 + v71) = v72;
        --v20;
      }

      while (v20);
      goto LABEL_87;
    }
  }

  v63 = *(this + 62);
LABEL_87:
  HGRasterizer::drawElements(this, *(this + 274), (v63 + 32));
  return 1;
}

uint64_t HGRasterizer::CalculatePolygonDODsCPU(HGRasterizer *this, HGRenderer *a2)
{
  if ((*(this + 1076) & 1) == 0)
  {
    *(this + 1076) = 1;
    v3 = *(*(this + 63) + 244);
    v4 = *(this + 52);
    if (v4)
    {
      if (*(v4 + 12) < v3)
      {
        v5 = *(v4 + 4) * v3;
        *(v4 + 12) = v3;
        if (v5)
        {
          operator new[]();
        }

        v6 = *(v4 + 16);
        if (v6)
        {
          MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
        }

        *(v4 + 16) = 0;
      }

      *(v4 + 8) = v3;
    }

    else if (v3 > 0)
    {
      HGArrayDataRef::allocate((this + 416));
    }

    v7[0] = 0;
    v7[1] = 0x1C00000000;
    HGArrayDataRef::allocate(v7);
  }

  return *(this + 1124);
}

uint64_t HGRasterizer::BindTexture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 && (*(a1 + 1108) & 0x40) != 0)
  {
    v3 = a1;
    v4 = a3;
    v5 = a2;
    v6 = (*(*a1 + 288))();
    (*(*v5 + 136))(v5, 0, v6, *&v6, *&v6, *&v6);
    a1 = v3;
    a2 = v5;
    a3 = v4;
  }

  if (*(a1 + 1077) != 1 || (v7 = *(a1 + 760)) == 0)
  {
    v7 = *(a1 + 752);
  }

  v8 = *(*v7 + 208);

  return v8(v7, a2, a3);
}

uint64_t HGRasterizer::Bind(uint64_t a1)
{
  if (*(a1 + 1077) == 1 && (v2 = *(a1 + 760)) != 0)
  {
    return (*(*v2 + 200))();
  }

  else
  {
    return (*(**(a1 + 752) + 200))();
  }
}

uint64_t HGRasterizer::UnBind(uint64_t a1)
{
  if (*(a1 + 1077) == 1 && (v2 = *(a1 + 760)) != 0)
  {
    return (*(*v2 + 216))();
  }

  else
  {
    return (*(**(a1 + 752) + 216))();
  }
}

char *HGRasterizer::GeometryRenderPageMetal(HGRasterizer *this, HGPage *a2, HGMetalHandler *a3)
{
  v5 = *(this + 64);
  if (v5)
  {
    (*(*v5 + 16))(*(this + 64), a2);
    v80 = v5;
    HGMetalHandler::SetVertices(a3, &v80);
    result = v80;
    if (v80)
    {
      result = (*(*v80 + 24))(v80);
    }

    if (!*(this + 64))
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = *(this + 63);
    v10 = *(v9 + 80);
    if (v10)
    {
      v11 = *(v10 + 16);
      if (v11)
      {
        result = HGMetalHandler::SetVertices(a3, (v11 + *(v9 + 88)), *(v10 + 4), *(v10 + 8));
        if (!*(this + 64))
        {
          goto LABEL_19;
        }
      }

      else
      {
        result = HGMetalHandler::SetVertices(a3, 0, *(v10 + 4), *(v10 + 8));
        if (!*(this + 64))
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      result = HGMetalHandler::SetVertices(a3, 0, 0, 0);
      if (!*(this + 64))
      {
        goto LABEL_19;
      }
    }
  }

  v7 = *(this + 65);
  if (v7)
  {
    (*(*v7 + 16))(*(this + 65));
    v79 = v7;
    HGMetalHandler::SetIndices(a3, &v79);
    result = v79;
    if (v79)
    {
      result = (*(*v79 + 24))(v79);
    }
  }

  if (*(this + 64))
  {
    v8 = *(this + 66);
    if (v8)
    {
      (*(*v8 + 16))(*(this + 66));
      v78 = v8;
      HGMetalHandler::SetColors(a3, &v78);
      result = v78;
      if (v78)
      {
        result = (*(*v78 + 24))(v78);
      }

      goto LABEL_27;
    }
  }

LABEL_19:
  v12 = *(this + 63);
  if (*(v12 + 240) == 1)
  {
    v13 = *(v12 + 64);
    if (v13)
    {
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = (v14 + *(v12 + 72));
      }

      else
      {
        v15 = 0;
      }

      v17 = *(v13 + 8);
      v16 = *(v13 + 4);
    }

    else
    {
      v16 = 0;
      v15 = 0;
      v17 = 0;
    }

    result = HGMetalHandler::SetColors(a3, v15, v16, v17);
  }

LABEL_27:
  if (*(this + 64))
  {
    if (*(this + 1068))
    {
      v18 = *(this + 67);
      if (v18)
      {
        (*(*v18 + 16))(*(this + 67));
      }

      v77 = v18;
      HGMetalHandler::SetTextureCoords(a3, &v77, 0);
      result = v77;
      if (v77)
      {
        result = (*(*v77 + 24))(v77);
      }
    }

    if ((*(this + 1068) & 2) != 0)
    {
      v19 = *(this + 68);
      if (v19)
      {
        (*(*v19 + 16))(*(this + 68));
      }

      v77 = v19;
      HGMetalHandler::SetTextureCoords(a3, &v77, 1u);
      result = v77;
      if (v77)
      {
        result = (*(*v77 + 24))(v77);
      }
    }

    if ((*(this + 1068) & 4) != 0)
    {
      v20 = *(this + 69);
      if (v20)
      {
        (*(*v20 + 16))(*(this + 69));
      }

      v77 = v20;
      HGMetalHandler::SetTextureCoords(a3, &v77, 2u);
      result = v77;
      if (v77)
      {
        result = (*(*v77 + 24))(v77);
      }
    }

    if ((*(this + 1068) & 8) != 0)
    {
      v21 = *(this + 70);
      if (v21)
      {
        (*(*v21 + 16))(*(this + 70));
      }

      v77 = v21;
      HGMetalHandler::SetTextureCoords(a3, &v77, 3u);
      result = v77;
      if (v77)
      {
        result = (*(*v77 + 24))(v77);
      }
    }

    if ((*(this + 1068) & 0x10) != 0)
    {
      v22 = *(this + 71);
      if (v22)
      {
        (*(*v22 + 16))(*(this + 71));
      }

      v77 = v22;
      HGMetalHandler::SetTextureCoords(a3, &v77, 4u);
      result = v77;
      if (v77)
      {
        result = (*(*v77 + 24))(v77);
      }
    }

    if ((*(this + 1068) & 0x20) != 0)
    {
      v23 = *(this + 72);
      if (v23)
      {
        (*(*v23 + 16))(*(this + 72));
      }

      v77 = v23;
      HGMetalHandler::SetTextureCoords(a3, &v77, 5u);
      result = v77;
      if (v77)
      {
        result = (*(*v77 + 24))(v77);
      }
    }

    if ((*(this + 1068) & 0x40) != 0)
    {
      v24 = *(this + 73);
      if (v24)
      {
        (*(*v24 + 16))(*(this + 73));
      }

      v77 = v24;
      HGMetalHandler::SetTextureCoords(a3, &v77, 6u);
      result = v77;
      if (v77)
      {
        result = (*(*v77 + 24))(v77);
      }
    }

    if ((*(this + 1068) & 0x80) != 0)
    {
      v25 = *(this + 74);
      if (v25)
      {
        (*(*v25 + 16))(*(this + 74));
      }

      v77 = v25;
      HGMetalHandler::SetTextureCoords(a3, &v77, 7u);
      result = v77;
      if (v77)
      {
        result = (*(*v77 + 24))(v77);
      }
    }

LABEL_76:
    if (*(this + 64))
    {
      goto LABEL_77;
    }

    goto LABEL_140;
  }

  v26 = *(this + 267);
  if ((v26 & 1) == 0)
  {
    if ((v26 & 2) == 0)
    {
      goto LABEL_70;
    }

LABEL_91:
    v33 = *(this + 63);
    v34 = *(v33 + 128);
    if (v34)
    {
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = (v35 + *(v33 + 136));
      }

      else
      {
        v36 = 0;
      }

      result = HGMetalHandler::SetTextureCoords(a3, v36, *(v34 + 4), *(v34 + 8), 1u);
      v26 = *(this + 267);
      if ((v26 & 4) != 0)
      {
        goto LABEL_98;
      }
    }

    else
    {
      result = HGMetalHandler::SetTextureCoords(a3, 0, 0, 0, 1u);
      v26 = *(this + 267);
      if ((v26 & 4) != 0)
      {
        goto LABEL_98;
      }
    }

LABEL_71:
    if ((v26 & 8) == 0)
    {
      goto LABEL_72;
    }

LABEL_105:
    v41 = *(this + 63);
    v42 = *(v41 + 160);
    if (v42)
    {
      v43 = *(v42 + 16);
      if (v43)
      {
        v44 = (v43 + *(v41 + 168));
      }

      else
      {
        v44 = 0;
      }

      result = HGMetalHandler::SetTextureCoords(a3, v44, *(v42 + 4), *(v42 + 8), 3u);
      v26 = *(this + 267);
      if ((v26 & 0x10) != 0)
      {
        goto LABEL_112;
      }
    }

    else
    {
      result = HGMetalHandler::SetTextureCoords(a3, 0, 0, 0, 3u);
      v26 = *(this + 267);
      if ((v26 & 0x10) != 0)
      {
        goto LABEL_112;
      }
    }

LABEL_73:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_74;
    }

LABEL_119:
    v49 = *(this + 63);
    v50 = *(v49 + 192);
    if (v50)
    {
      v51 = *(v50 + 16);
      if (v51)
      {
        v52 = (v51 + *(v49 + 200));
      }

      else
      {
        v52 = 0;
      }

      result = HGMetalHandler::SetTextureCoords(a3, v52, *(v50 + 4), *(v50 + 8), 5u);
      v26 = *(this + 267);
      if ((v26 & 0x40) != 0)
      {
        goto LABEL_126;
      }
    }

    else
    {
      result = HGMetalHandler::SetTextureCoords(a3, 0, 0, 0, 5u);
      v26 = *(this + 267);
      if ((v26 & 0x40) != 0)
      {
        goto LABEL_126;
      }
    }

LABEL_75:
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_133;
  }

  v29 = *(this + 63);
  v30 = *(v29 + 112);
  if (v30)
  {
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = (v31 + *(v29 + 120));
    }

    else
    {
      v32 = 0;
    }

    result = HGMetalHandler::SetTextureCoords(a3, v32, *(v30 + 4), *(v30 + 8), 0);
    v26 = *(this + 267);
    if ((v26 & 2) != 0)
    {
      goto LABEL_91;
    }
  }

  else
  {
    result = HGMetalHandler::SetTextureCoords(a3, 0, 0, 0, 0);
    v26 = *(this + 267);
    if ((v26 & 2) != 0)
    {
      goto LABEL_91;
    }
  }

LABEL_70:
  if ((v26 & 4) == 0)
  {
    goto LABEL_71;
  }

LABEL_98:
  v37 = *(this + 63);
  v38 = *(v37 + 144);
  if (v38)
  {
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = (v39 + *(v37 + 152));
    }

    else
    {
      v40 = 0;
    }

    result = HGMetalHandler::SetTextureCoords(a3, v40, *(v38 + 4), *(v38 + 8), 2u);
    v26 = *(this + 267);
    if ((v26 & 8) != 0)
    {
      goto LABEL_105;
    }
  }

  else
  {
    result = HGMetalHandler::SetTextureCoords(a3, 0, 0, 0, 2u);
    v26 = *(this + 267);
    if ((v26 & 8) != 0)
    {
      goto LABEL_105;
    }
  }

LABEL_72:
  if ((v26 & 0x10) == 0)
  {
    goto LABEL_73;
  }

LABEL_112:
  v45 = *(this + 63);
  v46 = *(v45 + 176);
  if (v46)
  {
    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = (v47 + *(v45 + 184));
    }

    else
    {
      v48 = 0;
    }

    result = HGMetalHandler::SetTextureCoords(a3, v48, *(v46 + 4), *(v46 + 8), 4u);
    v26 = *(this + 267);
    if ((v26 & 0x20) != 0)
    {
      goto LABEL_119;
    }
  }

  else
  {
    result = HGMetalHandler::SetTextureCoords(a3, 0, 0, 0, 4u);
    v26 = *(this + 267);
    if ((v26 & 0x20) != 0)
    {
      goto LABEL_119;
    }
  }

LABEL_74:
  if ((v26 & 0x40) == 0)
  {
    goto LABEL_75;
  }

LABEL_126:
  v53 = *(this + 63);
  v54 = *(v53 + 208);
  if (v54)
  {
    v55 = *(v54 + 16);
    if (v55)
    {
      v56 = (v55 + *(v53 + 216));
    }

    else
    {
      v56 = 0;
    }

    result = HGMetalHandler::SetTextureCoords(a3, v56, *(v54 + 4), *(v54 + 8), 6u);
    if ((*(this + 267) & 0x80) == 0)
    {
      goto LABEL_76;
    }
  }

  else
  {
    result = HGMetalHandler::SetTextureCoords(a3, 0, 0, 0, 6u);
    if ((*(this + 267) & 0x80) == 0)
    {
      goto LABEL_76;
    }
  }

LABEL_133:
  v57 = *(this + 63);
  v58 = *(v57 + 224);
  if (v58)
  {
    v59 = *(v58 + 16);
    if (v59)
    {
      v60 = (v59 + *(v57 + 232));
    }

    else
    {
      v60 = 0;
    }

    result = HGMetalHandler::SetTextureCoords(a3, v60, *(v58 + 4), *(v58 + 8), 7u);
    if (!*(this + 64))
    {
      goto LABEL_140;
    }
  }

  else
  {
    result = HGMetalHandler::SetTextureCoords(a3, 0, 0, 0, 7u);
    if (!*(this + 64))
    {
LABEL_140:
      v61 = *(this + 143);
      if (!v61)
      {
        HGMetalHandler::PrimitivesStart(a3);
        goto LABEL_161;
      }

      v62 = *(v61 + 8);
      HGMetalHandler::PrimitivesStart(a3);
      if (v62 < 1)
      {
        goto LABEL_161;
      }

      v63 = 0;
      while (1)
      {
        v71 = *(this + 63);
        v72 = *(v71 + 2);
        if (v72 && (v73 = *(v72 + 16)) != 0)
        {
          v74 = v73 + *(v72 + 4) * *(*(*v71 + 16) + *(*v71 + 4) * *(*(*(this + 147) + 16) + *(*(this + 147) + 4) * v63 + *(this + 296)) + v71[2]);
          v75 = v71[6];
          v65 = v71[7];
          v64 = (v74 + v75);
          if (v65 != 34 && v65 != 3)
          {
            goto LABEL_152;
          }
        }

        else
        {
          v64 = 0;
          v65 = v71[7];
          if (v65 != 34 && v65 != 3)
          {
            goto LABEL_152;
          }
        }

        if (v65 == 34)
        {
          v67 = 4;
        }

        else
        {
          v67 = 2;
        }

        v68 = *(*(this + 143) + 16) + *(*(this + 143) + 4) * v63;
        v69 = *(this + 288);
        v70 = *(v68 + v69);
        HGMetalHandler::SetIndices(a3, v64, v67, *(v68 + v69));
        HGMetalHandler::PrimitivesIndexed(a3, 3, 0, v70);
LABEL_152:
        if (v62 == ++v63)
        {
          goto LABEL_161;
        }
      }
    }
  }

LABEL_77:
  v27 = *(this + 298);
  if ((v27 & 0xFFFFFFFE) == 4)
  {
    if (v27 == 4)
    {
      v28 = 3;
    }

    else
    {
      v28 = 4;
    }

    HGMetalHandler::PrimitivesStart(a3);
    if (*(this + 65))
    {
      HGMetalHandler::PrimitivesIndexed(a3, v28, 0, 0);
    }

    else
    {
      HGMetalHandler::Primitives(a3, v28);
    }

LABEL_161:
    HGMetalHandler::PrimitivesEnd(a3);
  }

  return result;
}

void sub_25FBDF6D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGRasterizer::drawElements(uint64_t a1, int a2, int *a3)
{
  if (*a3)
  {
    v5 = *(*a3 + 8);
    v6 = *(a1 + 496);
    if (*(v6 + 240))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = 0;
    v6 = *(a1 + 496);
    if (*(v6 + 240))
    {
      goto LABEL_10;
    }
  }

  *(v6 + 240) = 1;
  __asm { FMOV            V0.4S, #1.0 }

  v170 = _Q0;
  v12 = *(v6 + 80);
  if (v12)
  {
    v13 = *(v12 + 8);
    if (v13 >= 1)
    {
      v14 = a2;
      do
      {
        HGArray<__simd128_float32_t,(HGFormat)28>::append((*(a1 + 496) + 64), &v170);
        --v13;
      }

      while (v13);
      v6 = *(a1 + 496);
      a2 = v14;
    }
  }

LABEL_10:
  v15 = *(v6 + 244);
  LODWORD(v170) = v15;
  v16 = *(v6 + 16);
  if (v16)
  {
    v17 = *(v16 + 8);
    if (a2 <= 5)
    {
      goto LABEL_12;
    }

LABEL_22:
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v25 = (v5 >> 1) & 0x7FFFFFFE;
        v19 = 3 * v25;
        v26 = v15 + v25;
        v29 = *(v6 + 48);
        v27 = (v6 + 48);
        v28 = v29;
        *(v27 + 49) = v15 + v25;
        if (v29)
        {
          if (*(v28 + 12) < v26)
          {
            v30 = *(v28 + 4) * v26;
            *(v28 + 12) = v26;
            if (v30)
            {
              operator new[]();
            }

            v142 = *(v28 + 16);
            if (v142)
            {
              MEMORY[0x2666E9ED0](v142, 0x1000C8077774924);
            }

            *(v28 + 16) = 0;
          }

          *(v28 + 8) = v26;
        }

        else if (v26 > 0)
        {
          HGArrayDataRef::allocate(v27);
        }

        v49 = *(a1 + 496);
        v52 = *(v49 + 16);
        v50 = (v49 + 16);
        v51 = v52;
        if (v52)
        {
          v53 = *(v51 + 8) + v19;
          if (*(v51 + 12) < v53)
          {
            v54 = *(v51 + 4) * v53;
            *(v51 + 12) = v53;
            if (v54)
            {
              operator new[]();
            }

            v144 = *(v51 + 16);
            if (v144)
            {
              MEMORY[0x2666E9ED0](v144, 0x1000C8077774924);
            }

            *(v51 + 16) = 0;
          }

          *(v51 + 8) = v53;
        }

        else if (v19 > 0)
        {
          HGArrayDataRef::allocate(v50);
        }

        result = *(a1 + 496);
        v58 = *(result + 244);
        v59 = *result;
        if (*result)
        {
          if (*(v59 + 12) < v58)
          {
            v60 = *(v59 + 4) * v58;
            *(v59 + 12) = v58;
            if (v60)
            {
              operator new[]();
            }

            result = *(v59 + 16);
            if (result)
            {
              result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
            }

            *(v59 + 16) = 0;
          }

          *(v59 + 8) = v58;
        }

        else if (v58 > 0)
        {
          HGArrayDataRef::allocate(result);
        }

        if (v25)
        {
          v95 = *(a1 + 496);
          v96 = *v95;
          v97 = *(*v95 + 16);
          v98 = v95[6];
          v99 = *(v98 + 16);
          v100 = *a3;
          v101 = *(*a3 + 16);
          v102 = v95[2];
          v103 = *(v102 + 16);
          v104 = 1;
          result = v170;
          do
          {
            v105 = result + v104 - 1;
            *(v97 + *(v96 + 4) * v105 + *(v95 + 2)) = v17;
            *(v97 + *(v96 + 4) * (result + v104) + *(v95 + 2)) = v17 + 3;
            *(v99 + *(v98 + 4) * v105 + *(v95 + 14)) = 3;
            *(v99 + *(v98 + 4) * (result + v104) + *(v95 + 14)) = 3;
            v106 = *(v100 + 4);
            v107 = v101 + v106 * (v104 - 1);
            v108 = a3[2];
            v109 = *(v102 + 4);
            v110 = *(v95 + 6);
            *(v103 + v109 * v17 + v110) = *(v107 + v108);
            *(v103 + v109 + v109 * v17 + v110) = *(v101 + v106 * v104 + v108);
            v111 = v104 + 1;
            v112 = v101 + v106 * (v104 + 1);
            *(v103 + v109 * (v17 + 2) + v110) = *(v112 + v108);
            *(v103 + v109 * (v17 + 3) + v110) = *(v107 + v108);
            *(v103 + v109 * (v17 + 4) + v110) = *(v112 + v108);
            v104 += 2;
            *(v103 + v109 * (v17 + 5) + v110) = *(v101 + v106 * v104 + v108);
            v17 += 6;
          }

          while (v111 < v25);
          goto LABEL_176;
        }

LABEL_175:
        v19 = 0;
        goto LABEL_176;
      }

LABEL_31:
      result = puts("Unknown polygon mode in hglEnd");
      goto LABEL_175;
    }

    v38 = v15 + v5 - 2;
    v41 = *(v6 + 48);
    v39 = (v6 + 48);
    v40 = v41;
    *(v39 + 49) = v38;
    if (v41)
    {
      if (*(v40 + 12) < v38)
      {
        v42 = *(v40 + 4) * v38;
        *(v40 + 12) = v38;
        if (v42)
        {
          operator new[]();
        }

        v146 = *(v40 + 16);
        if (v146)
        {
          MEMORY[0x2666E9ED0](v146, 0x1000C8077774924);
        }

        *(v40 + 16) = 0;
      }

      *(v40 + 8) = v38;
    }

    else if (v38 > 0)
    {
      HGArrayDataRef::allocate(v39);
    }

    v19 = 3 * (v5 - 2);
    v116 = *(a1 + 496);
    v117 = *(v116 + 61);
    v118 = *v116;
    if (*v116)
    {
      if (*(v118 + 12) < v117)
      {
        v119 = *(v118 + 4) * v117;
        *(v118 + 12) = v117;
        if (v119)
        {
          operator new[]();
        }

        v147 = *(v118 + 16);
        if (v147)
        {
          MEMORY[0x2666E9ED0](v147, 0x1000C8077774924);
        }

        *(v118 + 16) = 0;
      }

      *(v118 + 8) = v117;
      v148 = *(a1 + 496);
      v149 = *(v148 + 16);
      result = v148 + 16;
      v133 = v149;
      if (!v149)
      {
        goto LABEL_165;
      }
    }

    else
    {
      if (v117 > 0)
      {
        HGArrayDataRef::allocate(v116);
      }

      v132 = *(a1 + 496);
      v134 = *(v132 + 16);
      result = v132 + 16;
      v133 = v134;
      if (!v134)
      {
LABEL_165:
        if (v19 > 0)
        {
          HGArrayDataRef::allocate(result);
        }

        if (v5 == 2)
        {
          goto LABEL_175;
        }

LABEL_168:
        v150 = *a3;
        v151 = *(*a3 + 16);
        v152 = *(a1 + 496);
        v153 = v152[2];
        v154 = *(v153 + 16);
        v155 = *v152;
        v156 = *(*v152 + 16);
        v157 = v152[6];
        v158 = *(v157 + 16);
        v159 = 2;
        LODWORD(result) = v170;
        do
        {
          v160 = (v151 + a3[2]);
          v161 = *(v153 + 4);
          v162 = *(v152 + 6);
          *(v154 + v161 * v17 + v162) = *v160;
          v163 = *(v150 + 4);
          *(v154 + v161 + v161 * v17 + v162) = *(v160 + v163 * (v159 - 1));
          *(v154 + v161 * (v17 + 2) + v162) = *(v160 + v163 * v159);
          *(v156 + *(v155 + 4) * result + *(v152 + 2)) = v17;
          *(v158 + *(v157 + 4) * result + *(v152 + 14)) = 3;
          result = (result + 1);
          ++v159;
          v17 += 3;
        }

        while (v5 != v159);
        goto LABEL_176;
      }
    }

    v135 = *(v133 + 8) + v19;
    if (*(v133 + 12) < v135)
    {
      v136 = *(v133 + 4) * v135;
      *(v133 + 12) = v135;
      if (v136)
      {
        operator new[]();
      }

      result = *(v133 + 16);
      if (result)
      {
        result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
      }

      *(v133 + 16) = 0;
    }

    *(v133 + 8) = v135;
    if (v5 == 2)
    {
      goto LABEL_175;
    }

    goto LABEL_168;
  }

  v17 = 0;
  if (a2 > 5)
  {
    goto LABEL_22;
  }

LABEL_12:
  if (a2 == 4)
  {
    v32 = v5 / 3;
    v33 = v15 + v5 / 3;
    v36 = *(v6 + 48);
    v34 = (v6 + 48);
    v35 = v36;
    *(v34 + 49) = v33;
    if (v36)
    {
      if (*(v35 + 12) < v33)
      {
        v37 = *(v35 + 4) * v33;
        *(v35 + 12) = v33;
        if (v37)
        {
          operator new[]();
        }

        v145 = *(v35 + 16);
        if (v145)
        {
          MEMORY[0x2666E9ED0](v145, 0x1000C8077774924);
        }

        *(v35 + 16) = 0;
      }

      *(v35 + 8) = v33;
    }

    else if (v33 > 0)
    {
      HGArrayDataRef::allocate(v34);
    }

    result = *(a1 + 496);
    v113 = *(result + 244);
    v114 = *result;
    if (*result)
    {
      if (*(v114 + 12) < v113)
      {
        v115 = *(v114 + 4) * v113;
        *(v114 + 12) = v113;
        if (v115)
        {
          operator new[]();
        }

        result = *(v114 + 16);
        if (result)
        {
          result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
        }

        *(v114 + 16) = 0;
      }

      *(v114 + 8) = v113;
    }

    else if (v113 > 0)
    {
      HGArrayDataRef::allocate(result);
    }

    v19 = 3 * v32;
    v120 = *(a1 + 496);
    if (v5 >= 3)
    {
      v121 = v120[6];
      v122 = *(v121 + 16);
      v123 = *v120;
      v124 = *(*v120 + 16);
      v125 = v170;
      do
      {
        *(v122 + *(v121 + 4) * v125 + *(v120 + 14)) = 3;
        *(v124 + *(v123 + 4) * v125 + *(v120 + 2)) = v17;
        v17 += 3;
        ++v125;
        --v32;
      }

      while (v32);
    }

    v126 = v120[2];
    if (v126)
    {
      v127 = *(v126 + 8);
      v128 = *a3;
      if (v127)
      {
        if (v128)
        {
          v129 = *(v128 + 8);
          v130 = *(v126 + 4);
          v131 = v129 + v127;
          if (*(v126 + 12) < v129 + v127)
          {
            goto LABEL_121;
          }
        }

        else
        {
          v129 = 0;
          v130 = *(v126 + 4);
          v131 = *(v126 + 8);
          if (*(v126 + 12) < v127)
          {
LABEL_121:
            *(v126 + 12) = v131;
            if (v130 * v131)
            {
              operator new[]();
            }

            v167 = *(v126 + 16);
            if (v167)
            {
              MEMORY[0x2666E9ED0](v167, 0x1000C8077774924);
            }

            *(v126 + 16) = 0;
            *(v126 + 8) = v131;
            v168 = v120[2];
            if (v168)
            {
              v139 = (*(v168 + 16) + *(v168 + 4) * v127);
              v140 = *a3;
              if (*a3)
              {
                goto LABEL_186;
              }
            }

            else
            {
              v139 = 0;
              v140 = *a3;
              if (*a3)
              {
LABEL_186:
                result = memmove(v139, *(v140 + 16), v130 * v129);
                if (!v170)
                {
                  goto LABEL_190;
                }

                goto LABEL_177;
              }
            }

LABEL_189:
            result = memmove(v139, 0, v130 * v129);
            if (!v170)
            {
              goto LABEL_190;
            }

            goto LABEL_177;
          }
        }

        *(v126 + 8) = v131;
        v139 = (*(v126 + 16) + *(v126 + 4) * v127);
        v140 = *a3;
        if (*a3)
        {
          goto LABEL_186;
        }

        goto LABEL_189;
      }

      if (v126 == v128)
      {
        goto LABEL_138;
      }

      if (atomic_fetch_add(v126, 0xFFFFFFFF) == 1)
      {
        v138 = *(v126 + 16);
        if (v138)
        {
          MEMORY[0x2666E9ED0](v138, 0x1000C8077774924);
        }

        result = MEMORY[0x2666E9F00](v126, 0x1080C4098BBCF0FLL);
      }

      v137 = *a3;
      v120[2] = *a3;
      if (!v137)
      {
LABEL_138:
        v120[3] = *(a3 + 1);
        if (!v170)
        {
          goto LABEL_190;
        }

        goto LABEL_177;
      }
    }

    else
    {
      v137 = *a3;
      if (!*a3)
      {
        goto LABEL_138;
      }

      v120[2] = v137;
    }

    atomic_fetch_add(v137, 1u);
    goto LABEL_138;
  }

  if (a2 != 5)
  {
    goto LABEL_31;
  }

  v18 = v5 - 2;
  v19 = 3 * v18;
  v20 = v15 + v18;
  v23 = *(v6 + 48);
  v21 = (v6 + 48);
  v22 = v23;
  *(v21 + 49) = v15 + v18;
  if (v23)
  {
    if (*(v22 + 12) < v20)
    {
      v24 = *(v22 + 4) * v20;
      *(v22 + 12) = v20;
      if (v24)
      {
        operator new[]();
      }

      v141 = *(v22 + 16);
      if (v141)
      {
        MEMORY[0x2666E9ED0](v141, 0x1000C8077774924);
      }

      *(v22 + 16) = 0;
    }

    *(v22 + 8) = v20;
  }

  else if (v20 > 0)
  {
    HGArrayDataRef::allocate(v21);
  }

  v43 = *(a1 + 496);
  v46 = *(v43 + 16);
  v44 = (v43 + 16);
  v45 = v46;
  if (v46)
  {
    v47 = *(v45 + 8) + v19;
    if (*(v45 + 12) < v47)
    {
      v48 = *(v45 + 4) * v47;
      *(v45 + 12) = v47;
      if (v48)
      {
        operator new[]();
      }

      v143 = *(v45 + 16);
      if (v143)
      {
        MEMORY[0x2666E9ED0](v143, 0x1000C8077774924);
      }

      *(v45 + 16) = 0;
    }

    *(v45 + 8) = v47;
  }

  else if (v19 > 0)
  {
    HGArrayDataRef::allocate(v44);
  }

  result = *(a1 + 496);
  v55 = *(result + 244);
  v56 = *result;
  if (*result)
  {
    if (*(v56 + 12) < v55)
    {
      v57 = *(v56 + 4) * v55;
      *(v56 + 12) = v55;
      if (v57)
      {
        operator new[]();
      }

      result = *(v56 + 16);
      if (result)
      {
        result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
      }

      *(v56 + 16) = 0;
    }

    *(v56 + 8) = v55;
  }

  else if (v55 > 0)
  {
    HGArrayDataRef::allocate(result);
  }

  if (!v18)
  {
    goto LABEL_175;
  }

  v61 = 0;
  v62 = *a3;
  v63 = *(*a3 + 16);
  v64 = *(a1 + 496);
  v65 = v64[2];
  v66 = *(v65 + 16);
  v67 = *v64;
  v68 = *(*v64 + 16);
  v69 = v64[6];
  v70 = *(v69 + 16);
  v71 = v170;
  result = 3;
  v72 = v17;
  do
  {
    v73 = v62[1];
    v74 = a3[2];
    v75 = *(v65 + 4);
    v76 = v75 * v72;
    v77 = *(v64 + 6);
    *(v66 + v76 + v77) = *(v63 + (v73 * v61) + v74);
    *(v66 + v75 + v76 + v77) = *(v63 + (v73 + v73 * v61) + v74);
    v78 = v71 + v61;
    *(v66 + v75 * (v72 + 2) + v77) = *(v63 + (v73 * (v61 + 2)) + v74);
    *(v68 + *(v67 + 4) * v78 + *(v64 + 2)) = v72;
    *(v70 + *(v69 + 4) * v78 + *(v64 + 14)) = 3;
    v72 += 6;
    v61 += 2;
  }

  while (v61 < v18);
  if (v18 != 1)
  {
    v79 = *a3;
    v80 = *(*a3 + 16);
    v81 = *(a1 + 496);
    v82 = v81[2];
    v83 = *(v82 + 16);
    v84 = *v81;
    v85 = *(*v81 + 16);
    v86 = v81[6];
    v87 = *(v86 + 16);
    v88 = v170 + 1;
    LODWORD(result) = v17 + 3;
    v89 = 1;
    do
    {
      v90 = v79[1];
      v91 = a3[2];
      v92 = *(v82 + 4);
      v93 = v92 * result;
      v94 = *(v81 + 6);
      *(v83 + v93 + v94) = *(v80 + (v90 + v90 * v89) + v91);
      *(v83 + v92 + v93 + v94) = *(v80 + (v90 * v89) + v91);
      v89 += 2;
      *(v83 + v92 * (result + 2) + v94) = *(v80 + (v90 * v89) + v91);
      *(v85 + *(v84 + 4) * v88 + *(v81 + 2)) = result;
      *(v87 + *(v86 + 4) * v88 + *(v81 + 14)) = 3;
      v88 += 2;
      result = (result + 6);
    }

    while (v89 < v18);
  }

LABEL_176:
  if (!v170)
  {
LABEL_190:
    *(a1 + 1092) = 4;
    v169 = v19;
    HGArray<int,(HGFormat)34>::append((a1 + 1144), &v169);
    v169 = 4;
    HGArray<int,(HGFormat)34>::append((a1 + 1160), &v169);
    return HGArray<int,(HGFormat)34>::append((a1 + 1176), &v170);
  }

LABEL_177:
  if (*(a1 + 1092) != 4)
  {
    goto LABEL_190;
  }

  v164 = *(a1 + 1144);
  if (v164)
  {
    v165 = *(v164 + 8) - 1;
  }

  else
  {
    v165 = -1;
  }

  v166 = *(v164 + 16) + *(v164 + 4) * v165;
  *(v166 + *(a1 + 1152)) += v19;
  return result;
}

void HGRasterizer::GeometryRenderPage(HGRasterizer *this, HGPage *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = *(this + 143);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  buffers[1] = 0;
  glGenVertexArraysOES();
  glBindVertexArrayOES();
  v5 = *(*(this + 63) + 92);
  if (v5 == 21)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  if (v5 == 28)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  buffers[0] = 0;
  glGenBuffers(1, buffers);
  glBindBuffer(0x8892u, buffers[0]);
  v8 = *(this + 63);
  v9 = *(v8 + 80);
  if (v9)
  {
    v10 = *(v9 + 8) * *(v9 + 4);
    v11 = *(v9 + 16);
    if (v11)
    {
      v12 = (v11 + *(v8 + 88));
      goto LABEL_15;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = 0;
LABEL_15:
  glBufferData(0x8892u, v10, v12, 0x88E4u);
  glEnableVertexAttribArray(0);
  glVertexAttribPointer(0, v7, 0x1406u, 0, 0, 0);
  v13 = *(this + 63);
  v45 = v4;
  if (*(v13 + 240) == 1)
  {
    v14 = *(v13 + 76);
    if (v14 == 21)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    if (v14 == 28)
    {
      v16 = 4;
    }

    else
    {
      v16 = v15;
    }

    buffer[0] = 0;
    glGenBuffers(1, buffer);
    glBindBuffer(0x8892u, buffer[0]);
    v17 = *(this + 63);
    v18 = *(v17 + 64);
    if (v18)
    {
      v19 = *(v18 + 8) * *(v18 + 4);
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = (v20 + *(v17 + 72));
LABEL_28:
        glBufferData(0x8892u, v19, v21, 0x88E4u);
        glEnableVertexAttribArray(1u);
        glVertexAttribPointer(1u, v16, 0x1406u, 0, 0, 0);
        goto LABEL_29;
      }
    }

    else
    {
      v19 = 0;
    }

    v21 = 0;
    goto LABEL_28;
  }

  glDisableVertexAttribArray(1u);
LABEL_29:
  v22 = 0;
  v23 = 0;
  v24 = 0;
  do
  {
    buffer[v22] = 0;
    if (((*(this + 267) >> v22) & 1) == 0)
    {
      v25 = v22 + 1;
      goto LABEL_31;
    }

    v26 = *(*(this + 63) + 16 * v22 + 124);
    if (v26 == 21)
    {
      v27 = 3;
    }

    else
    {
      v27 = 2;
    }

    if (v26 == 28)
    {
      v28 = 4;
    }

    else
    {
      v28 = v27;
    }

    v25 = v22 + 1;
    v23 = (*(**(a2 + 29) + 168))(*(a2 + 29), 10, v22 + 1);
    if (v24 < v23)
    {
      while (1)
      {
        glGenBuffers(1, &buffer[v22]);
        glBindBuffer(0x8892u, buffer[v22]);
        v31 = *(this + 63) + 16 * v22;
        v34 = *(v31 + 112);
        v32 = v31 + 112;
        v33 = v34;
        if (v34)
        {
          v29 = *(v33 + 8) * *(v33 + 4);
          v35 = *(v33 + 16);
          if (v35)
          {
            v30 = (v35 + *(v32 + 8));
            goto LABEL_43;
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = 0;
LABEL_43:
        glBufferData(0x8892u, v29, v30, 0x88E4u);
        glEnableVertexAttribArray(v24 + 8);
        glVertexAttribPointer(v24 + 8, v28, 0x1406u, 0, 0, 0);
        if (v23 == ++v24)
        {
          v24 = v23;
          break;
        }
      }
    }

LABEL_31:
    v22 = v25;
  }

  while (v25 != 8);
  if (v23 <= 7)
  {
    v36 = v23 + 8;
    do
    {
      glDisableVertexAttribArray(v36++);
    }

    while (v36 != 16);
  }

  glDisableVertexAttribArray(2u);
  if (v45)
  {
    for (i = 0; i != v45; ++i)
    {
      v39 = *(*(**(this + 63) + 16) + *(**(this + 63) + 4) * *(*(*(this + 147) + 16) + *(*(this + 147) + 4) * i + *(this + 296)) + *(*(this + 63) + 8));
      v40 = *(*(*(this + 145) + 16) + *(*(this + 145) + 4) * i + *(this + 292));
      v41 = *(*(*(this + 143) + 16) + *(*(this + 143) + 4) * i + *(this + 288));
      v47 = 0;
      glGenBuffers(1, &v47);
      glBindBuffer(0x8893u, v47);
      v42 = *(this + 63);
      v43 = *(v42 + 16);
      if (v43 && (v44 = *(v43 + 16)) != 0)
      {
        v38 = (v44 + *(v43 + 4) * v39 + *(v42 + 24));
      }

      else
      {
        v38 = 0;
      }

      glBufferData(0x8893u, 2 * v41, v38, 0x88E4u);
      glDrawElements(v40, v41, 0x1403u, 0);
    }
  }

  glDisableVertexAttribArray(0);
  glDisableVertexAttribArray(1u);
  glDisableVertexAttribArray(2u);
  glDisableVertexAttribArray(8u);
  glDisableVertexAttribArray(9u);
  glDisableVertexAttribArray(0xAu);
  glDisableVertexAttribArray(0xBu);
  glDisableVertexAttribArray(0xCu);
  glDisableVertexAttribArray(0xDu);
  glDisableVertexAttribArray(0xEu);
  glDisableVertexAttribArray(0xFu);
  v47 = 0;
  glBindVertexArrayOES();
  glGetVertexAttribiv(0, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(1u, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(2u, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(3u, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(4u, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(5u, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(6u, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(7u, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(8u, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(9u, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(0xAu, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(0xBu, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(0xCu, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(0xDu, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(0xEu, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetVertexAttribiv(0xFu, 0x889Fu, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glGetIntegerv(0x8895u, &v47);
  if (v47)
  {
    glDeleteBuffers(1, &v47);
  }

  glDeleteVertexArraysOES();
  glDisable(0xBE2u);
}

uint64_t HGRasterizer::RenderPageMetal(HGNode *this, HGPage *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 8);
  v4 = *(a2 + 1);
  *(a2 + 1) = 0;
  HGPagePullMetalTexturesGuard::HGPagePullMetalTexturesGuard(&v60, this, a2);
  *v5 = v4;
  (*(**a2 + 144))(*a2, 0);
  v6 = (*(*this + 48))(this);
  snprintf(__str, 0x100uLL, "%s::RenderPageMetal( [%d %d %d %d])", v6, *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
  HGTraceGuard::HGTraceGuard(v59, "gpu", 1, __str);
  v7 = *(this + 153);
  if (__PAIR64__(*(v7 + 16), *(v7 + 12)) == 1)
  {
    v37 = *(v7 + 20);
  }

  else
  {
    v37 = 1;
  }

  if (((*(*this + 592))(this) & 2) != 0)
  {
    v8 = 1;
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_8:
    (*(**(a2 + 1) + 16))(*(a2 + 1));
    goto LABEL_9;
  }

  v8 = ((*(*this + 592))(this) >> 3) & 1;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_6:
  *(a2 + 1) = HGGPURenderer::CreateBuffer(*a2, *(a2 + 1), *(a2 + 8), 1, (*(this + 4) >> 12) & 1, *(a2 + 248));
LABEL_9:
  if (((*(*this + 592))(this) & 1) != 0 && ((*(*this + 592))(this) & 0x10) == 0)
  {
    HGGPURenderer::ClearMetal(*a2, *(a2 + 1), *(a2 + 1), v9);
  }

  if (*(this + 1077) != 1 || (v10 = *(this + 95)) == 0)
  {
    v10 = *(this + 94);
  }

  v11 = *(a2 + 1);
  (*(*v10 + 160))(v10, *(*(this + 54) + 160));
  v12 = (*(**a2 + 368))(*a2, *(this + 8), this);
  if (v12)
  {
    if (v13)
    {
      v14 = v13;
      v54 = v37;
      v15 = v8;
      v16 = (*(*this + 48))(this);
      v17 = strlen(v16);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      __dst.columns[1].i8[7] = v17;
      if (v17)
      {
        memmove(&__dst, v16, v17);
      }

      __dst.columns[0].i8[v18] = 0;
      HGMetalHandler::SetDebugLabel(v14, &__dst);
      v19 = v15;
      if (__dst.columns[1].i8[7] < 0)
      {
        operator delete(__dst.columns[0].i64[0]);
      }

      HGMetalHandler::BindBuffer(v14, v11, v54);
      if (v15)
      {
        HGMetalHandler::EnableDepthBuffer(v14);
      }

      v21 = *(a2 + 21);
      if (v21)
      {
        v20 = HGMetalHandler::BindTexture(v14, 0, v21);
      }

      v22 = *(a2 + 22);
      if (v22)
      {
        v20 = HGMetalHandler::BindTexture(v14, 1, v22);
      }

      v23 = *(a2 + 23);
      if (v23)
      {
        v20 = HGMetalHandler::BindTexture(v14, 2, v23);
      }

      v24 = *(a2 + 24);
      if (v24)
      {
        v20 = HGMetalHandler::BindTexture(v14, 3, v24);
      }

      v25 = *(a2 + 25);
      if (v25)
      {
        v20 = HGMetalHandler::BindTexture(v14, 4, v25);
      }

      v26 = *(a2 + 26);
      if (v26)
      {
        v20 = HGMetalHandler::BindTexture(v14, 5, v26);
      }

      v27 = *(a2 + 27);
      if (v27)
      {
        v20 = HGMetalHandler::BindTexture(v14, 6, v27);
      }

      v28 = *(a2 + 28);
      if (v28)
      {
        v20 = HGMetalHandler::BindTexture(v14, 7, v28);
      }

      (*(*this + 488))(this, a2, 0, v14, v20);
      if (!HGTransform::IsIdentity((this + 768)))
      {
        memset(&__dst, 0, sizeof(__dst));
        Matrixfloat4x4 = HGTransform::GetMatrixfloat4x4(this + 48, &__dst);
        (*(v14->__r_.__value_.__r.__words[0] + 176))(v14, &__dst, Matrixfloat4x4);
      }

      HGMetalHandler::SetScissorRect(v14, a2 + 1);
      HGMetalHandler::SetScissorTest(v14, 1);
      __dst.columns[0].i64[0] = 0;
      *(__dst.columns + 8) = xmmword_26038F230;
      __dst.columns[1].i64[1] = 0;
      if (*(this + 1141))
      {
        goto LABEL_50;
      }

      v31 = HGNode::IsInPlaceHardwareBlendingEnabled(this);
      v32 = *this;
      if (v31)
      {
        v33 = (*(v32 + 256))(this);
        v34 = *(v33 + 16);
        __dst.columns[0] = *v33;
        __dst.columns[1] = v34;
LABEL_48:
        HGMetalHandler::EnableBlending(v14);
        v35 = HGMetalHandler::SetBlendingInfo(v14, &__dst);
        v36 = (*(*this + 272))(this, v35);
        HGMetalHandler::SetBlendingColor(v14, v36);
        goto LABEL_50;
      }

      if (((*(v32 + 592))(this) & 4) == 0)
      {
LABEL_50:
        if (*(this + 1077) == 1)
        {
          v38 = (*(**(a2 + 29) + 168))(*(a2 + 29), 3, 0);
          if (v38)
          {
            v39 = 0;
            v40 = 0;
            v41 = v38;
            do
            {
              v42 = v39 + 1;
              v43 = (*(**(a2 + 29) + 168))(*(a2 + 29), 10, v39 + 1);
              if (v40 < v43)
              {
                do
                {
                  (*(v14->__r_.__value_.__r.__words[0] + 80))(v14, v40);
                  MatrixPtr = HGTransform::GetMatrixPtr((*(this + v39 + 54) + 8));
                  (*(v14->__r_.__value_.__r.__words[0] + 112))(v14, MatrixPtr);
                  v40 = (v40 + 1);
                }

                while (v43 != v40);
                v40 = v43;
              }

              ++v39;
            }

            while (v42 != v41);
          }
        }

        HGRasterizer::GeometryRenderPageMetal(this, v30, v14);
        HGMetalHandler::SetScissorTest(v14, 0);
        HGMetalHandler::DisableBlending(v14);
        if (v19)
        {
          HGMetalHandler::DisableDepthBuffer(v14);
        }

        if (((*(*this + 592))(this) & 4) != 0)
        {
          v55 = 0;
          *&v46 = 0x100000001;
          *(&v46 + 1) = 0x100000001;
          v56 = v46;
          v57 = 0;
          v45 = HGMetalHandler::SetBlendingInfo(v14, &v55);
        }

        (*(*this + 496))(this, a2, 0, v14, v45);
        goto LABEL_62;
      }

      v49 = (*(*this + 600))(this);
      if (v49 > 1)
      {
        switch(v49)
        {
          case 4:
            __dst.columns[0].i64[0] = 0;
            v51.i64[0] = 0x100000001;
            v51.i64[1] = 0x100000001;
            *(__dst.columns + 8) = v51;
            v52 = 0x300000003;
            break;
          case 3:
            __dst.columns[0].i64[0] = 0;
            v53.i64[0] = 0x100000001;
            v53.i64[1] = 0x100000001;
            *(__dst.columns + 8) = v53;
            v52 = 0x400000004;
            break;
          case 2:
            __dst.columns[0].i64[0] = 0;
            v50.i64[0] = 0x100000001;
            v50.i64[1] = 0x100000001;
LABEL_75:
            *(__dst.columns + 8) = v50;
            __dst.columns[1].i64[1] = 0;
            goto LABEL_48;
          default:
            goto LABEL_48;
        }

        __dst.columns[1].i64[1] = v52;
        goto LABEL_48;
      }

      if (v49)
      {
        if (v49 != 1)
        {
          goto LABEL_48;
        }

        __dst.columns[0].i64[0] = 0;
        v50 = xmmword_26038F220;
      }

      else
      {
        __dst.columns[0].i64[0] = 0;
        v50 = xmmword_26034A870;
      }

      goto LABEL_75;
    }
  }

LABEL_62:
  v47 = *(a2 + 1);
  HGTraceGuard::~HGTraceGuard(v59);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&v60);
  return v47;
}

void sub_25FBE17B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, HGPage *a33)
{
  HGTraceGuard::~HGTraceGuard(&a31);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&a33);
  _Unwind_Resume(a1);
}

uint64_t HGRasterizer::RenderPage(HGRasterizer *this, HGPage *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = (*(*this + 48))(this);
  snprintf(__str, 0x100uLL, "%s::RenderPage( [%d %d %d %d])", v4, *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
  HGTraceGuard::HGTraceGuard(v72, "gpu", 1, __str);
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v6)
  {
    (*(*v5 + 144))(*a2, *(a2 + 1));
  }

  *(a2 + 1) = 0;
  HGPagePullTexturesGuard::HGPagePullTexturesGuard(&v71, this, a2);
  *(a2 + 1) = v6;
  if (v6)
  {
    (*(*v6 + 16))(v6);
    Buffer = *(a2 + 1);
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(v5, *(a2 + 1), *(a2 + 8), 0, (*(this + 4) >> 12) & 1, *(a2 + 248));
    *(a2 + 1) = Buffer;
  }

  (*(*v5 + 144))(v5, Buffer);
  if (((*(*this + 592))(this) & 2) == 0)
  {
    (*(*this + 592))(this);
  }

  v9 = *(this + 153);
  if (*(v9 + 12) != 1 || *(v9 + 16) || (v10 = *(v9 + 20), v10 < 2))
  {
    v11 = 0;
  }

  else
  {
    HGGPURenderer::BindMultiSampleBuffer(v5, v10, 0, 0, v8);
    v11 = 1;
  }

  if (((*(*this + 592))(this) & 1) != 0 && ((*(*this + 592))(this) & 0x10) == 0)
  {
    HGGPURenderer::Clear(v5, *(a2 + 1), v12, v13);
  }

  v14 = *(a2 + 1);
  v15 = *(a2 + 21);
  v16 = *(*(this + 54) + 160);
  if (v16 == -1)
  {
    v17 = *(a2 + 21);
    v16 = (*(*v5 + 128))(v5, 23);
    v15 = v17;
  }

  (*(*v5 + 152))(v5, 0, v15, 0, v16 == 1);
  v18 = *(a2 + 22);
  v19 = *(*(this + 55) + 160);
  if (v19 == -1)
  {
    v20 = *(a2 + 22);
    v19 = (*(*v5 + 128))(v5, 23);
    v18 = v20;
  }

  (*(*v5 + 152))(v5, 1, v18, 0, v19 == 1);
  v21 = *(a2 + 23);
  v22 = *(*(this + 56) + 160);
  if (v22 == -1)
  {
    v23 = *(a2 + 23);
    v22 = (*(*v5 + 128))(v5, 23);
    v21 = v23;
  }

  (*(*v5 + 152))(v5, 2, v21, 0, v22 == 1);
  v24 = *(a2 + 24);
  v25 = *(*(this + 57) + 160);
  if (v25 == -1)
  {
    v26 = *(a2 + 24);
    v25 = (*(*v5 + 128))(v5, 23);
    v24 = v26;
  }

  (*(*v5 + 152))(v5, 3, v24, 0, v25 == 1);
  v27 = *(a2 + 25);
  v28 = *(*(this + 58) + 160);
  if (v28 == -1)
  {
    v29 = *(a2 + 25);
    v28 = (*(*v5 + 128))(v5, 23);
    v27 = v29;
  }

  (*(*v5 + 152))(v5, 4, v27, 0, v28 == 1);
  v30 = *(a2 + 26);
  v31 = *(*(this + 59) + 160);
  if (v31 == -1)
  {
    v32 = *(a2 + 26);
    v31 = (*(*v5 + 128))(v5, 23);
    v30 = v32;
  }

  (*(*v5 + 152))(v5, 5, v30, 0, v31 == 1);
  v33 = *(a2 + 27);
  v34 = *(*(this + 60) + 160);
  if (v34 == -1)
  {
    v35 = *(a2 + 27);
    v34 = (*(*v5 + 128))(v5, 23);
    v33 = v35;
  }

  (*(*v5 + 152))(v5, 6, v33, 0, v34 == 1);
  v36 = *(a2 + 28);
  v37 = *(*(this + 61) + 160);
  if (v37 == -1)
  {
    v38 = *(a2 + 28);
    v37 = (*(*v5 + 128))(v5, 23);
    v36 = v38;
  }

  (*(*v5 + 152))(v5, 7, v36, 0, v37 == 1);
  glActiveTexture(0x84C0u);
  v39 = this + 432;
  if (*(this + 1077) != 1 || (v40 = *(this + 95)) == 0)
  {
    v40 = *(this + 94);
  }

  (*(*v40 + 160))(v40, *(*v39 + 160));
  v41 = (*(*v5 + 368))(v5, *(this + 8), this);
  (*(*this + 488))(this, a2, 0, v41);
  if (!HGTransform::IsIdentity((this + 768)))
  {
    memset(&v70, 0, sizeof(v70));
    Matrixfloat4x4 = HGTransform::GetMatrixfloat4x4(this + 48, &v70);
    (*(*v41 + 176))(v41, &v70, Matrixfloat4x4);
  }

  if (v14)
  {
  }

  else
  {
    v43 = 0;
  }

  v44 = (v43 + 136);
  if (!v43)
  {
    v44 = (v14 + 20);
  }

  v45 = *v44;
  v46 = HGRectIntersection(*(a2 + 2), *(a2 + 3), *v44, v44[1]);
  glScissor(v46 - v45, HIDWORD(v46) - HIDWORD(v45), v47 - v46, v48 - HIDWORD(v46));
  glEnable(0xC11u);
  if ((*(this + 1141) & 1) == 0)
  {
    if (HGNode::IsInPlaceHardwareBlendingEnabled(this))
    {
      v49 = (*(*this + 256))(this);
      HGGLBlendingInfo::HGGLBlendingInfo(&v70, v49);
      Size = PVPerfStats::FrameStats::GetSize(&v70);
      DstRGBFactor = HGGLBlendingInfo::GetDstRGBFactor(&v70);
      v52 = LiImageSource::imageSpace(&v70);
      DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(&v70);
      glBlendFuncSeparate(Size, DstRGBFactor, v52, DstAlphaFactor);
      RGBOperation = HGGLBlendingInfo::GetRGBOperation(&v70);
      AlphaOperation = HGGLBlendingInfo::GetAlphaOperation(&v70);
      glBlendEquationSeparate(RGBOperation, AlphaOperation);
      glEnable(0xBE2u);
    }

    else
    {
      if (((*(*this + 592))(this) & 4) != 0)
      {
        glEnable(0xBE2u);
        v56 = (*(*this + 600))(this);
        if (v56 <= 1)
        {
          if (v56)
          {
            if (v56 != 1)
            {
              goto LABEL_60;
            }

            glBlendEquation(0x8006u);
            v58 = 1;
            v59 = 773;
          }

          else
          {
            glBlendEquation(0x8006u);
            v58 = 771;
            v59 = 1;
          }
        }

        else
        {
          switch(v56)
          {
            case 2:
              v57 = 32774;
              break;
            case 3:
              v57 = 32776;
              break;
            case 4:
              v57 = 32775;
              break;
            default:
              goto LABEL_60;
          }

          glBlendEquation(v57);
          v59 = 1;
          v58 = 1;
        }

        glBlendFunc(v59, v58);
        goto LABEL_60;
      }

      glDisable(0xBE2u);
    }
  }

LABEL_60:
  glEnable(0xDE1u);
  v69 = v11;
  if (*(this + 1077) == 1)
  {
    v60 = (*(**(a2 + 29) + 168))(*(a2 + 29), 3, 0);
    if (v60)
    {
      v61 = 0;
      v62 = 0;
      v63 = v60;
      do
      {
        v64 = v61 + 1;
        v65 = (*(**(a2 + 29) + 168))(*(a2 + 29), 10, v61 + 1);
        if (v62 < v65)
        {
          do
          {
            (*(*v41 + 80))(v41, v62);
            MatrixPtr = HGTransform::GetMatrixPtr((*&v39[8 * v61] + 8));
            (*(*v41 + 112))(v41, MatrixPtr);
            v62 = (v62 + 1);
          }

          while (v65 != v62);
          v62 = v65;
        }

        ++v61;
      }

      while (v64 != v63);
    }
  }

  (*(*this + 616))(this, a2);
  if (v69)
  {
    HGGPURenderer::ResolveMultiSampleBuffer(v5);
  }

  glDisable(0xBE2u);
  glDisable(0xC11u);
  glFlush();
  if (((*(*this + 592))(this) & 4) != 0)
  {
    glBlendEquation(0x8006u);
    glBlendFunc(1u, 1u);
  }

  (*(*this + 496))(this, a2, 0, v41);
  v67 = *(a2 + 1);
  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(&v71);
  HGTraceGuard::~HGTraceGuard(v72);
  return v67;
}

void sub_25FBE24A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, HGPage *);
  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(va);
  HGTraceGuard::~HGTraceGuard(va1);
  _Unwind_Resume(a1);
}

uint64_t HGRasterizer::SetState(HGRasterizer *this, HGRenderer *a2, int a3)
{
  if (a3 == 1)
  {
    atomic_store(0, this + 279);
  }

  if (((*(*a2 + 304))(a2) & 1) != 0 || !*(this + 64))
  {
    (*(*this + 640))(this, a2);
  }

  return HGNode::SetState(this, a2, a3);
}

uint64_t HGRasterizer::RenderFragment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (atomic_load_explicit(HGRasterizer::getIsROIDebug(void)::envCheck, memory_order_acquire) != -1)
  {
    v13 = &v11;
    v12 = &v13;
    v6 = a2;
    v7 = a3;
    std::__call_once(HGRasterizer::getIsROIDebug(void)::envCheck, &v12, std::__call_once_proxy[abi:ne200100]<std::tuple<HGRasterizer::getIsROIDebug(void)::$_0 &&>>);
    a2 = v6;
    a3 = v7;
  }

  if (HGRasterizer::_isROIDebug == 1)
  {
    if (!*(a1 + 1077) || (v8 = *(a1 + 760)) == 0)
    {
      v8 = *(a1 + 752);
    }

    return (*(*v8 + 584))(v8, a2, a3, a4);
  }

  else
  {
    if (!*(a1 + 1077) || (v10 = *(a1 + 760)) == 0)
    {
      v10 = *(a1 + 752);
    }

    return (*(*v10 + 576))(v10, a2, a3);
  }
}

void *HGRasterizer::vertexArray(void *this, const HGArrayDataRef *a2, char *a3)
{
  v3 = this;
  if ((*(this + 1084) & 8) != 0)
  {
    v14 = *(a2 + 3);
    switch(v14)
    {
      case 13:
        this = CopyArray2f((this[62] + 80), a2, 0);
        break;
      case 21:
        this = CopyArray3f((this[62] + 80), a2, 0);
        break;
      case 28:
        v15 = this[62];
        v16 = *(v15 + 80);
        v17 = *a2;
        if (v16 != *a2)
        {
          if (v16)
          {
            if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
            {
              v18 = a2;
              v19 = *(v16 + 16);
              if (v19)
              {
                MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
              }

              this = MEMORY[0x2666E9F00](v16, 0x1080C4098BBCF0FLL);
              a2 = v18;
            }

            v17 = *a2;
          }

          *(v15 + 80) = v17;
          if (v17)
          {
            atomic_fetch_add(v17, 1u);
          }
        }

        *(v15 + 88) = *(a2 + 2);
        break;
      default:
        *(this + 275) = 1280;
        this = HGLogger::warning("%s", a2, a3, "hglVertexArray: invalid type");
        break;
    }
  }

  v4 = *(v3 + 1088);
  v5 = *(v3 + 1084);
  *(v3 + 1084) = 4;
  v6 = *(v3 + 432);
  if (*(v6 + 193) == 1)
  {
    *(v3 + 1068) |= 1u;
    *(v6 + 192) = 1;
    *(v3 + 1088) = 0;
    this = HGRasterizer::texCoordArray(v3, (*(v3 + 496) + 80));
    v7 = *(v3 + 440);
    if (*(v7 + 193) != 1)
    {
LABEL_4:
      v8 = *(v3 + 448);
      if (*(v8 + 193) != 1)
      {
        goto LABEL_5;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v7 = *(v3 + 440);
    if (*(v7 + 193) != 1)
    {
      goto LABEL_4;
    }
  }

  *(v3 + 1068) |= 2u;
  *(v7 + 192) = 1;
  *(v3 + 1088) = 1;
  this = HGRasterizer::texCoordArray(v3, (*(v3 + 496) + 80));
  v8 = *(v3 + 448);
  if (*(v8 + 193) != 1)
  {
LABEL_5:
    v9 = *(v3 + 456);
    if (*(v9 + 193) != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v3 + 1068) |= 4u;
  *(v8 + 192) = 1;
  *(v3 + 1088) = 2;
  this = HGRasterizer::texCoordArray(v3, (*(v3 + 496) + 80));
  v9 = *(v3 + 456);
  if (*(v9 + 193) != 1)
  {
LABEL_6:
    v10 = *(v3 + 464);
    if (*(v10 + 193) != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v3 + 1068) |= 8u;
  *(v9 + 192) = 1;
  *(v3 + 1088) = 3;
  this = HGRasterizer::texCoordArray(v3, (*(v3 + 496) + 80));
  v10 = *(v3 + 464);
  if (*(v10 + 193) != 1)
  {
LABEL_7:
    v11 = *(v3 + 472);
    if (*(v11 + 193) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v3 + 1068) |= 0x10u;
  *(v10 + 192) = 1;
  *(v3 + 1088) = 4;
  this = HGRasterizer::texCoordArray(v3, (*(v3 + 496) + 80));
  v11 = *(v3 + 472);
  if (*(v11 + 193) != 1)
  {
LABEL_8:
    v12 = *(v3 + 480);
    if (*(v12 + 193) != 1)
    {
      goto LABEL_9;
    }

LABEL_31:
    *(v3 + 1068) |= 0x40u;
    *(v12 + 192) = 1;
    *(v3 + 1088) = 6;
    this = HGRasterizer::texCoordArray(v3, (*(v3 + 496) + 80));
    v13 = *(v3 + 488);
    if (*(v13 + 193) != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_30:
  *(v3 + 1068) |= 0x20u;
  *(v11 + 192) = 1;
  *(v3 + 1088) = 5;
  this = HGRasterizer::texCoordArray(v3, (*(v3 + 496) + 80));
  v12 = *(v3 + 480);
  if (*(v12 + 193) == 1)
  {
    goto LABEL_31;
  }

LABEL_9:
  v13 = *(v3 + 488);
  if (*(v13 + 193) == 1)
  {
LABEL_10:
    *(v3 + 1068) |= 0x80u;
    *(v13 + 192) = 1;
    *(v3 + 1088) = 7;
    this = HGRasterizer::texCoordArray(v3, (*(v3 + 496) + 80));
  }

LABEL_11:
  *(v3 + 1088) = v4;
  *(v3 + 1084) = v5;
  return this;
}

atomic_uint *volatile *CopyArray3f(atomic_uint *volatile *this, int *a2, uint64_t a3)
{
  v5 = this;
  if (!*a2)
  {
    atomic_fetch_add(*this, 1u);
    v7 = *this;
    if (!*this)
    {
      goto LABEL_32;
    }

    v6 = 0;
    if (v7[3] >= 0)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v6 = *(*a2 + 8);
  atomic_fetch_add(*this, 1u);
  v7 = *this;
  if (*this)
  {
    if (v7[3] >= v6)
    {
LABEL_14:
      v7[2] = v6;
      goto LABEL_15;
    }

LABEL_7:
    v8 = v7[1] * v6;
    v7[3] = v6;
    if (v8)
    {
      operator new[]();
    }

    this = *(v7 + 2);
    if (this)
    {
      this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
    }

    *(v7 + 2) = 0;
    goto LABEL_14;
  }

  if (v6 > 0)
  {
    HGArrayDataRef::allocate(this);
  }

LABEL_15:
  if (v6)
  {
    if (a3)
    {
      v9 = 0;
      while (1)
      {
        v11 = *a2;
        if (!*a2)
        {
          goto LABEL_23;
        }

        v12 = *(v11 + 16);
        if (v12)
        {
          break;
        }

        v11 = 0;
        v13 = *v5;
        if (!*v5)
        {
          goto LABEL_18;
        }

LABEL_24:
        v14 = *(v13 + 2);
        if (v14)
        {
          v10 = (v14 + v13[1] * v9 + *(v5 + 2));
          goto LABEL_19;
        }

LABEL_18:
        v10 = 0;
LABEL_19:
        *v10 = *v11;
        v10[1] = *(v11 + 4);
        v10[2] = *(v11 + 8);
        v10[3] = 1065353216;
        this = (*(*a3 + 208))(a3, v10, v10, 1);
        if (v6 == ++v9)
        {
          goto LABEL_32;
        }
      }

      v11 = v12 + *(v11 + 4) * v9 + a2[2];
LABEL_23:
      v13 = *v5;
      if (!*v5)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

    v15 = *a2;
    v16 = *v5;
    v17 = *(*a2 + 16) + a2[2];
    if (!*v5)
    {
      v30 = 0;
      for (i = *(v15 + 4); ; v30 += i)
      {
        v32 = v17 + v30;
        MEMORY[4] = *(v32 + 4);
        MEMORY[8] = *(v32 + 8);
        MEMORY[0xC] = 1065353216;
      }
    }

    v18 = *(v16 + 2);
    v19 = *(v15 + 4);
    v20 = 0;
    if (!v18)
    {
      while (1)
      {
        v33 = v17 + v20;
        MEMORY[4] = *(v33 + 4);
        MEMORY[8] = *(v33 + 8);
        MEMORY[0xC] = 1065353216;
        v20 += v19;
      }
    }

    v21 = 0;
    v22 = v18 + *(v5 + 2);
    v23 = v16[1];
    do
    {
      v24 = (v17 + v20);
      v25 = (v22 + v21);
      *v25 = *v24;
      v25[1] = v24[1];
      v25[2] = v24[2];
      v25[3] = 1065353216;
      v21 += v23;
      v20 += v19;
      --v6;
    }

    while (v6);
  }

LABEL_32:
  v26 = *v5;
  add = atomic_fetch_add(v26, 0xFFFFFFFF);
  if (v26)
  {
    v28 = add == 1;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v29 = *(v26 + 2);
    if (v29)
    {
      MEMORY[0x2666E9ED0](v29, 0x1000C8077774924);
    }

    JUMPOUT(0x2666E9F00);
  }

  return this;
}

atomic_uint *volatile *CopyArray2f(atomic_uint *volatile *this, int *a2, uint64_t a3)
{
  v5 = this;
  if (!*a2)
  {
    atomic_fetch_add(*this, 1u);
    v7 = *this;
    if (!*this)
    {
      goto LABEL_32;
    }

    v6 = 0;
    if (v7[3] >= 0)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v6 = *(*a2 + 8);
  atomic_fetch_add(*this, 1u);
  v7 = *this;
  if (*this)
  {
    if (v7[3] >= v6)
    {
LABEL_14:
      v7[2] = v6;
      goto LABEL_15;
    }

LABEL_7:
    v8 = v7[1] * v6;
    v7[3] = v6;
    if (v8)
    {
      operator new[]();
    }

    this = *(v7 + 2);
    if (this)
    {
      this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
    }

    *(v7 + 2) = 0;
    goto LABEL_14;
  }

  if (v6 > 0)
  {
    HGArrayDataRef::allocate(this);
  }

LABEL_15:
  if (v6)
  {
    if (a3)
    {
      v9 = 0;
      while (1)
      {
        v11 = *a2;
        if (!*a2)
        {
          goto LABEL_23;
        }

        v12 = *(v11 + 16);
        if (v12)
        {
          break;
        }

        v11 = 0;
        v13 = *v5;
        if (!*v5)
        {
          goto LABEL_18;
        }

LABEL_24:
        v14 = *(v13 + 2);
        if (v14)
        {
          v10 = v14 + v13[1] * v9 + *(v5 + 2);
          goto LABEL_19;
        }

LABEL_18:
        v10 = 0;
LABEL_19:
        *v10 = *v11;
        *(v10 + 4) = *(v11 + 4);
        *(v10 + 8) = 0x3F80000000000000;
        this = (*(*a3 + 208))(a3, v10, v10, 1);
        if (v6 == ++v9)
        {
          goto LABEL_32;
        }
      }

      v11 = v12 + *(v11 + 4) * v9 + a2[2];
LABEL_23:
      v13 = *v5;
      if (!*v5)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

    v15 = *a2;
    v16 = *v5;
    v17 = *(*a2 + 16);
    v18 = v17 + a2[2];
    if (!*v5)
    {
      if (v17)
      {
        v31 = 0;
        v32 = v18 + 4;
        for (i = *(v15 + 4); ; v31 += i)
        {
          MEMORY[4] = *(v32 + v31);
          MEMORY[8] = 0;
          MEMORY[0xC] = 1065353216;
        }
      }

      while (1)
      {
        MEMORY[8] = 0;
        MEMORY[0xC] = 1065353216;
      }
    }

    v19 = *(v16 + 2);
    v20 = *(v15 + 4);
    v21 = 0;
    if (!v19)
    {
      v34 = v18 + 4;
      while (1)
      {
        MEMORY[4] = *(v34 + v21);
        MEMORY[8] = 0;
        MEMORY[0xC] = 1065353216;
        v21 += v20;
      }
    }

    v22 = 0;
    v23 = v19 + *(v5 + 2);
    v24 = v16[1];
    do
    {
      v25 = (v18 + v21);
      v26 = v23 + v22;
      *v26 = *v25;
      *(v26 + 4) = v25[1];
      *(v26 + 8) = 0x3F80000000000000;
      v22 += v24;
      v21 += v20;
      --v6;
    }

    while (v6);
  }

LABEL_32:
  v27 = *v5;
  add = atomic_fetch_add(v27, 0xFFFFFFFF);
  if (v27)
  {
    v29 = add == 1;
  }

  else
  {
    v29 = 0;
  }

  if (v29)
  {
    v30 = *(v27 + 2);
    if (v30)
    {
      MEMORY[0x2666E9ED0](v30, 0x1000C8077774924);
    }

    JUMPOUT(0x2666E9F00);
  }

  return this;
}

const char *HGRasterizer::texCoordArray(const char *this, const HGArrayDataRef *a2)
{
  if ((this[1084] & 4) != 0)
  {
    v3 = this;
    v4 = *(this + 1088);
    v5 = this + 432;
    v6 = *&this[8 * v4 + 432];
    *(this + 267) |= 1 << v4;
    this = (*(**v6 + 224))();
    v9 = *(a2 + 3);
    if (v9 == 13)
    {
      if (this)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v6;
      }

      this = CopyArray2f((*(v3 + 496) + 16 * *(v3 + 1088) + 112), a2, v15);
      goto LABEL_25;
    }

    if (v9 == 21)
    {
      if (this)
      {
        v14 = 0;
      }

      else
      {
        v14 = *v6;
      }

      this = CopyArray3f((*(v3 + 496) + 16 * *(v3 + 1088) + 112), a2, v14);
      goto LABEL_25;
    }

    if (v9 != 28)
    {
      *(v3 + 1100) = 1280;
      return HGLogger::warning("%s", v7, v8, "hglTexCoordArray: invalid type");
    }

    v10 = *(v3 + 496) + 16 * *(v3 + 1088);
    v11 = *a2;
    if (this)
    {
      v12 = *(v10 + 112);
      if (v12 != v11)
      {
        if (v12)
        {
          if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
          {
            v13 = *(v12 + 16);
            if (v13)
            {
              MEMORY[0x2666E9ED0](v13, 0x1000C8077774924);
            }

            this = MEMORY[0x2666E9F00](v12, 0x1080C4098BBCF0FLL);
          }

          v11 = *a2;
        }

        *(v10 + 112) = v11;
        if (v11)
        {
          atomic_fetch_add(v11, 1u);
        }
      }

      *(v10 + 120) = *(a2 + 2);
      goto LABEL_25;
    }

    v16 = *v6;
    if (v11)
    {
      v17 = v11[2];
      v18 = *(v10 + 112);
      if (!v18)
      {
        if (v17 > 0)
        {
          HGArrayDataRef::allocate((v10 + 112));
        }

        goto LABEL_40;
      }
    }

    else
    {
      v18 = *(v10 + 112);
      if (!v18)
      {
        goto LABEL_25;
      }

      v17 = 0;
    }

    if (*(v18 + 12) < v17)
    {
      v19 = *(v18 + 4) * v17;
      *(v18 + 12) = v17;
      if (v19)
      {
        operator new[]();
      }

      this = *(v18 + 16);
      if (this)
      {
        this = MEMORY[0x2666E9ED0](this, 0x1000C8077774924);
      }

      *(v18 + 16) = 0;
    }

    *(v18 + 8) = v17;
LABEL_40:
    if (v17)
    {
      if (!v16)
      {
        v26 = *a2;
        v27 = *(v10 + 112);
        v28 = *(*a2 + 16) + *(a2 + 2);
        if (!v27)
        {
          v37 = 0;
          for (i = *(v26 + 4); ; v37 += i)
          {
            v39 = (v28 + v37);
            MEMORY[4] = v39[1];
            MEMORY[8] = v39[2];
            MEMORY[0xC] = v39[3];
          }
        }

        v29 = *(v27 + 16);
        v30 = *(v26 + 4);
        v31 = 0;
        if (!v29)
        {
          while (1)
          {
            v40 = (v28 + v31);
            MEMORY[4] = v40[1];
            MEMORY[8] = v40[2];
            MEMORY[0xC] = v40[3];
            v31 += v30;
          }
        }

        v32 = 0;
        v33 = v29 + *(v10 + 120);
        v34 = *(v27 + 4);
        do
        {
          v35 = (v28 + v31);
          v36 = (v33 + v32);
          *v36 = *v35;
          v36[1] = v35[1];
          v36[2] = v35[2];
          v36[3] = v35[3];
          v32 += v34;
          v31 += v30;
          --v17;
        }

        while (v17);
        goto LABEL_25;
      }

      v20 = 0;
      while (1)
      {
        v22 = *a2;
        if (!*a2)
        {
          goto LABEL_48;
        }

        v23 = *(v22 + 16);
        if (v23)
        {
          break;
        }

        v22 = 0;
        v24 = *(v10 + 112);
        if (!v24)
        {
          goto LABEL_43;
        }

LABEL_49:
        v25 = *(v24 + 16);
        if (v25)
        {
          v21 = (v25 + *(v24 + 4) * v20 + *(v10 + 120));
          goto LABEL_44;
        }

LABEL_43:
        v21 = 0;
LABEL_44:
        *v21 = *v22;
        v21[1] = *(v22 + 4);
        v21[2] = *(v22 + 8);
        v21[3] = *(v22 + 12);
        this = (*(*v16 + 208))(v16, v21, v21, 1);
        if (v17 == ++v20)
        {
          goto LABEL_25;
        }
      }

      v22 = v23 + *(v22 + 4) * v20 + *(a2 + 2);
LABEL_48:
      v24 = *(v10 + 112);
      if (!v24)
      {
        goto LABEL_43;
      }

      goto LABEL_49;
    }

LABEL_25:
    *(*&v5[8 * *(v3 + 1088)] + 192) = 1;
  }

  return this;
}

char *HGRasterizer::texParameterfv(char *this, const char *a2, char *a3, float *a4)
{
  v4 = this;
  v19 = *MEMORY[0x277D85DE8];
  if ((this[1140] & 1) == 0)
  {
    v6 = *(this + 62);
    *(v6 + 240) = 1;
    v7 = *(v6 + 80);
    if (v7)
    {
      LODWORD(v7) = *(v7 + 8);
    }

    HGRasterizer::drawArrays(this, *(this + 274), *(this + 278), v7 - *(this + 278));
    v4[1140] = 1;
    snprintf(__str, 0x100uLL, "%s: invalid call between hglBegin/hglEnd", "hglTexParameteri");
    v10 = 1282;
    goto LABEL_30;
  }

  if (a2 != 3553)
  {
    goto LABEL_29;
  }

  if (a3 <= 10240)
  {
    if (a3 == 4100)
    {
      v16 = *&this[8 * this[1088] + 432];
      v16[49] = *a4;
      v16[50] = a4[1];
      v16[51] = a4[2];
      v16[52] = a4[3];
      return this;
    }

    if (a3 != 10240)
    {
      goto LABEL_29;
    }

    v11 = 160;
    if (this[1088])
    {
      v12 = a4;
      v13 = "hglTexParameterfv: HGL_TEXTURE_MAG_FILTER invalid unit.  Currently filter type can only be set on unit 0 and it applies to all inputs.";
LABEL_17:
      *(this + 275) = 1281;
      this = HGLogger::warning("%s", a2, a3, v13);
      v14 = v4[1088];
      a4 = v12;
      goto LABEL_25;
    }

LABEL_24:
    v14 = 0;
LABEL_25:
    v17 = *&v4[8 * v14 + 432];
    if (*a4 == 9728.0)
    {
      *(v17 + v11) = 0;
      return this;
    }

    if (*a4 == 9729.0)
    {
      *(v17 + v11) = 1;
      return this;
    }

    goto LABEL_29;
  }

  switch(a3)
  {
    case 0x2801:
      v11 = 164;
      if (this[1088])
      {
        v12 = a4;
        v13 = "hglTexParameterfv: HGL_TEXTURE_MIN_FILTER invalid unit.  Currently filter type can only be set on unit 0 and it applies to all inputs.";
        goto LABEL_17;
      }

      goto LABEL_24;
    case 0x2802:
      v5 = 168;
LABEL_19:
      v15 = *&this[8 * this[1088] + 432];
      if (*a4 == 33069.0)
      {
        *(v15 + v5) = 2;
        return this;
      }

      if (*a4 == 33071.0)
      {
        *(v15 + v5) = 1;
        return this;
      }

      break;
    case 0x2803:
      v5 = 172;
      goto LABEL_19;
  }

LABEL_29:
  snprintf(__str, 0x100uLL, "%s: invalid type", "hglTexParameteri");
  v10 = 1280;
LABEL_30:
  *(v4 + 275) = v10;
  return HGLogger::warning("%s", v8, v9, __str);
}

uint64_t HGArray<int,(HGFormat)34>::append(HGArrayDataRef *this, int *a2)
{
  v3 = *a2;
  v4 = *this;
  if (!*this)
  {
    HGArrayDataRef::allocate(this);
  }

  v6 = *(v4 + 8);
  v5 = *(v4 + 12);
  v7 = v6 + 1;
  v8 = 2 * (v6 + 1);
  if (v6 < v5 || v5 >= v8)
  {
    goto LABEL_13;
  }

  v10 = *(v4 + 4) * v8;
  *(v4 + 12) = v8;
  if (v10)
  {
    operator new[]();
  }

  v11 = *(v4 + 16);
  if (v11)
  {
    MEMORY[0x2666E9ED0](v11, 0x1000C8077774924);
  }

  *(v4 + 16) = 0;
  v4 = *this;
  if (!*this)
  {
    if ((v6 & 0x80000000) == 0)
    {
      HGArrayDataRef::allocate(this);
    }
  }

  else
  {
LABEL_13:
    if (*(v4 + 12) >= v7)
    {
      *(v4 + 8) = v7;
    }

    else
    {
      v12 = *(v4 + 4) * v7;
      *(v4 + 12) = v7;
      if (v12)
      {
        operator new[]();
      }

      v13 = *(v4 + 16);
      if (v13)
      {
        MEMORY[0x2666E9ED0](v13, 0x1000C8077774924);
      }

      *(v4 + 16) = 0;
      *(v4 + 8) = v7;
    }
  }

  v14 = *(*this + 16) + *(*this + 4) * v6;
  v15 = *(this + 2);
  *(v14 + v15) = v3;
  return v14 + v15;
}

float HGRasterizer::drawLines(HGRasterizer *this)
{
  v2[6] = *MEMORY[0x277D85DE8];
  result = *(this + 150);
  if (result >= 1.0)
  {
    v2[0] = 0;
    v2[1] = 0x1C00000000;
    HGArrayDataRef::allocate(v2);
  }

  return result;
}

void sub_25FBE4988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, atomic_uint *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, atomic_uint *a31)
{
  if (a25 && atomic_fetch_add(a25, 0xFFFFFFFF) == 1)
  {
    HGRasterizer::drawLines(a25);
  }

  if (a23 && atomic_fetch_add(a23, 0xFFFFFFFF) == 1)
  {
    v32 = *(a23 + 16);
    if (v32)
    {
      MEMORY[0x2666E9ED0](v32, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](a23, 0x1080C4098BBCF0FLL);
  }

  if (a21 && atomic_fetch_add(a21, 0xFFFFFFFF) == 1)
  {
    v33 = *(a21 + 16);
    if (v33)
    {
      MEMORY[0x2666E9ED0](v33, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](a21, 0x1080C4098BBCF0FLL);
  }

  if (a19 && atomic_fetch_add(a19, 0xFFFFFFFF) == 1)
  {
    v34 = *(a19 + 16);
    if (v34)
    {
      MEMORY[0x2666E9ED0](v34, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](a19, 0x1080C4098BBCF0FLL);
  }

  if (a17 && atomic_fetch_add(a17, 0xFFFFFFFF) == 1)
  {
    v35 = *(a17 + 16);
    if (v35)
    {
      MEMORY[0x2666E9ED0](v35, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](a17, 0x1080C4098BBCF0FLL);
  }

  if (a15 && atomic_fetch_add(a15, 0xFFFFFFFF) == 1)
  {
    v36 = *(a15 + 16);
    if (v36)
    {
      MEMORY[0x2666E9ED0](v36, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](a15, 0x1080C4098BBCF0FLL);
  }

  if (a13 && atomic_fetch_add(a13, 0xFFFFFFFF) == 1)
  {
    v37 = *(a13 + 16);
    if (v37)
    {
      MEMORY[0x2666E9ED0](v37, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](a13, 0x1080C4098BBCF0FLL);
  }

  if (a11 && atomic_fetch_add(a11, 0xFFFFFFFF) == 1)
  {
    v38 = *(a11 + 16);
    if (v38)
    {
      MEMORY[0x2666E9ED0](v38, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](a11, 0x1080C4098BBCF0FLL);
  }

  if (a31 && atomic_fetch_add(a31, 0xFFFFFFFF) == 1)
  {
    HGRasterizer::drawLines(a31);
  }

  if (a29 && atomic_fetch_add(a29, 0xFFFFFFFF) == 1)
  {
    v39 = *(a29 + 16);
    if (v39)
    {
      MEMORY[0x2666E9ED0](v39, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](a29, 0x1080C4098BBCF0FLL);
  }

  if (a27 && atomic_fetch_add(a27, 0xFFFFFFFF) == 1)
  {
    v40 = *(a27 + 16);
    if (v40)
    {
      MEMORY[0x2666E9ED0](v40, 0x1000C8077774924);
    }

    MEMORY[0x2666E9F00](a27, 0x1080C4098BBCF0FLL);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *HGRasterizer::enableClientState(char *this, int a2, int a3)
{
  v3 = this;
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = "hglEnableClientState";
  }

  else
  {
    v4 = "hglDisableClientState";
  }

  if (this[1140])
  {
    v6 = a2 - 32884;
    if (a2 - 32884) < 5 && ((0x17u >> v6))
    {
      v7 = *&asc_26038F278[4 * v6];
      if (!a3)
      {
LABEL_8:
        v8 = *(v3 + 271) & ~v7;
LABEL_11:
        *(v3 + 271) = v8;
        return this;
      }
    }

    else
    {
      snprintf(__str, 0x100uLL, "%s: invalid parameter passed to function", v4);
      *(v3 + 275) = 1280;
      this = HGLogger::warning("%s", v9, v10, __str);
      v7 = 0;
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    v8 = *(v3 + 271) | v7;
    goto LABEL_11;
  }

  v11 = *(this + 62);
  *(v11 + 240) = 1;
  v12 = *(v11 + 80);
  if (v12)
  {
    LODWORD(v12) = *(v12 + 8);
  }

  HGRasterizer::drawArrays(this, *(this + 274), *(this + 278), v12 - *(this + 278));
  v3[1140] = 1;
  snprintf(__str, 0x100uLL, "%s: invalid call between hglBegin/hglEnd", v4);
  *(v3 + 275) = 1282;
  return HGLogger::warning("%s", v13, v14, __str);
}

uint64_t HGRasterizer::SetInput(HGNode *this, unsigned int a2, HGNode *a3)
{
  if (a2 || !a3)
  {
    v7 = 1 << a2;
    if (!a3)
    {
      v8 = *(this + 264) & ~v7;
      goto LABEL_15;
    }
  }

  else
  {
    if ((*(this + 1064) & 1) == 0)
    {
      v4 = *(this + 94);
      if (v4)
      {
        (*(*v4 + 24))(v4);
      }

      if (*(this + 64))
      {
        v5 = *(this + 66);
        v6 = HGObject::operator new(0x1C0uLL);
        if (v5)
        {
          HRasterizerTexture::HRasterizerTexture(v6);
        }

        HRasterizerTextureNoColor::HRasterizerTextureNoColor(v6);
      }

      v9 = HGObject::operator new(0x1C0uLL);
      HRasterizerTexture::HRasterizerTexture(v9);
    }

    v7 = 1;
  }

  v8 = *(this + 264) | v7;
LABEL_15:
  *(this + 264) = v8;

  return HGNode::SetInput(this, a2, a3);
}

uint64_t HGRasterizer::addInputTransform(uint64_t a1, int a2, const HGTransform *a3, uint64_t *a4)
{
  *(a1 + 1077) = 1;
  v6 = *(a1 + 8 * a2 + 432);
  HGTransform::LoadIdentity((v6 + 8));
  HGTransform::LoadTransform((v6 + 8), a3);
  v7 = HGTransform::Invert2D((v6 + 8));
  v8 = *(v6 + 152);
  result = *a4;
  if (v8 != *a4)
  {
    if (v8)
    {
      (*(*v8 + 24))(*(v6 + 152), v7);
      result = *a4;
    }

    *(v6 + 152) = result;
    if (result)
    {
      v10 = *(*result + 16);

      return v10(v7);
    }
  }

  return result;
}

void HGRasterizerAntiAliasingImplementation::~HGRasterizerAntiAliasingImplementation(HGRasterizerAntiAliasingImplementation *this)
{
  HGObject::~HGObject(this);

  HGObject::operator delete(v1);
}

const char *std::__call_once_proxy[abi:ne200100]<std::tuple<HGRasterizer::getIsROIDebug(void)::$_0 &&>>()
{
  result = getenv("ROI_DEBUG");
  if (result)
  {
    result = atoi(result);
    HGRasterizer::_isROIDebug = result == 1;
  }

  else
  {
    HGRasterizer::_isROIDebug = 0;
  }

  return result;
}

void OUTLINED_FUNCTION_0_2()
{

  JUMPOUT(0x2666E9F00);
}

void OUTLINED_FUNCTION_1()
{

  JUMPOUT(0x2666E9ED0);
}

void HGRasterizer::transformBuffersToGeometryInfo()
{
  if (__cxa_guard_acquire(&qword_280C5CE58))
  {
    _MergedGlobals_10 = nanf("");

    __cxa_guard_release(&qword_280C5CE58);
  }
}

{
  if (__cxa_guard_acquire(qword_280C5CE60))
  {
    v0 = &_MergedGlobals_10;
    v1 = vld1q_dup_f32(v0);
    xmmword_280C5CE70 = v1;

    __cxa_guard_release(qword_280C5CE60);
  }
}

void HGRasterizer::drawLines(uint64_t a1)
{
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_1();
  }

  OUTLINED_FUNCTION_0_2();
}

uint64_t HGMetalDeviceInfo::getMainDevice(HGMetalDeviceInfo *this)
{
  v1 = MTLCreateSystemDefaultDevice();
  if (atomic_load_explicit(&_MergedGlobals_11, memory_order_acquire) != -1)
  {
    v9 = &v7;
    v8 = &v9;
    std::__call_once(&_MergedGlobals_11, &v8, std::__call_once_proxy[abi:ne200100]<std::tuple<HGMetalDeviceInfo::_initAllDevices(void)::$_0 &&>>);
  }

  v2 = qword_280C5CE88;
  std::mutex::lock(qword_280C5CE88);
  v3 = *qword_280C5CE90;
  v4 = *(qword_280C5CE90 + 8);
  if (*qword_280C5CE90 == v4)
  {
LABEL_6:
    v5 = 0;
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      if (*(*v3 + 16) == v1)
      {
        break;
      }

      if (++v3 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  std::mutex::unlock(v2);

  return v5;
}

uint64_t HGMetalDeviceInfo::getDeviceInfo(uint64_t a1)
{
  if (atomic_load_explicit(&_MergedGlobals_11, memory_order_acquire) != -1)
  {
    v9 = &v7;
    v8 = &v9;
    std::__call_once(&_MergedGlobals_11, &v8, std::__call_once_proxy[abi:ne200100]<std::tuple<HGMetalDeviceInfo::_initAllDevices(void)::$_0 &&>>);
  }

  v2 = qword_280C5CE88;
  std::mutex::lock(qword_280C5CE88);
  v3 = *qword_280C5CE90;
  v4 = *(qword_280C5CE90 + 8);
  if (*qword_280C5CE90 == v4)
  {
LABEL_6:
    v5 = 0;
  }

  else
  {
    while (1)
    {
      v5 = *v3;
      if (*(*v3 + 16) == a1)
      {
        break;
      }

      if (++v3 == v4)
      {
        goto LABEL_6;
      }
    }
  }

  std::mutex::unlock(v2);
  return v5;
}

void HGMetalDeviceInfo::_init(HGMetalDeviceInfo *this)
{
  v85 = *MEMORY[0x277D85DE8];
  HGTraceGuard::HGTraceGuard(v83, "metal", 1, "HGMetalDeviceInfo::_init()");
  *(this + 3) = [*(this + 2) registryID];
  *(this + 8) = 4203;
  v81 = 8;
  v82 = 0;
  *v84 = 0x1800000006;
  sysctl(v84, 2u, &v82, &v81, 0, 0);
  *(this + 5) = v82;
  v3 = atomic_load(HGLogger::_enabled);
  if ((v3 & 1) != 0 && HGLogger::getLevel("metal", v2) >= 1)
  {
    v6 = atomic_load(HGLogger::_enabled);
    if (v6)
    {
      HGLogger::log("metal", 1, "device          : %p\n", v4, v5, *(this + 2));
    }

    v7 = atomic_load(HGLogger::_enabled);
    if (v7)
    {
      v8 = [objc_msgSend(*(this + 2) "name")];
      HGLogger::log("metal", 1, "name            : %s\n", v9, v10, v8);
    }

    v11 = atomic_load(HGLogger::_enabled);
    if (v11)
    {
      HGLogger::log("metal", 1, "registryID      : 0x%llx\n", v4, v5, *(this + 3));
    }

    v12 = atomic_load(HGLogger::_enabled);
    if (v12)
    {
      HGLogger::log("metal", 1, "  vendorID      : 0x%4x\n", v4, v5, *(this + 8));
    }

    v13 = atomic_load(HGLogger::_enabled);
    if (v13)
    {
      HGLogger::log("metal", 1, "  deviceID      : 0x%4x\n", v4, v5, *(this + 9));
    }

    v14 = atomic_load(HGLogger::_enabled);
    if (v14)
    {
      v15 = "no";
      if (*(this + 8) == 4098)
      {
        v15 = "yes";
      }

      HGLogger::log("metal", 1, "AMD             : %s\n", v4, v5, v15);
    }

    v16 = atomic_load(HGLogger::_enabled);
    if (v16)
    {
      v17 = "no";
      if (*(this + 8) == 32902)
      {
        v17 = "yes";
      }

      HGLogger::log("metal", 1, "Intel           : %s\n", v4, v5, v17);
    }

    v18 = atomic_load(HGLogger::_enabled);
    if (v18)
    {
      v19 = "no";
      if (*(this + 8) == 4203)
      {
        v19 = "yes";
      }

      HGLogger::log("metal", 1, "Apple           : %s\n", v4, v5, v19);
    }

    v20 = atomic_load(HGLogger::_enabled);
    if (v20)
    {
      HGLogger::log("metal", 1, "headless        : %s\n", v4, v5, "no");
    }

    v21 = atomic_load(HGLogger::_enabled);
    if (v21)
    {
      HGLogger::log("metal", 1, "lowPower        : %s\n", v4, v5, "no");
    }

    v22 = atomic_load(HGLogger::_enabled);
    if (v22)
    {
      HGLogger::log("metal", 1, "removable       : %s\n", v4, v5, "no");
    }

    v23 = atomic_load(HGLogger::_enabled);
    if (v23)
    {
      v24 = [*(this + 2) hasUnifiedMemory];
      v27 = "no";
      if (v24)
      {
        v27 = "yes";
      }

      HGLogger::log("metal", 1, "unifiedMemory   : %s\n", v25, v26, v27);
    }

    v28 = atomic_load(HGLogger::_enabled);
    if (v28)
    {
      HGLogger::log("metal", 1, "memory          : %.1f GB\n", v4, v5, vcvts_n_f32_u64(*(this + 5), 0x1EuLL));
    }
  }

  v29 = [*(this + 2) supportsFamily:1001];
  v30 = [*(this + 2) supportsFamily:1002];
  v31 = [*(this + 2) supportsFamily:1003];
  v32 = [*(this + 2) supportsFamily:1004];
  v33 = [*(this + 2) supportsFamily:1005];
  v34 = [*(this + 2) supportsFamily:1006];
  v35 = [*(this + 2) supportsFamily:1007];
  v36 = [*(this + 2) supportsFamily:2002];
  v80 = [*(this + 2) supportsFamily:3001];
  v79 = [*(this + 2) supportsFamily:3002];
  v78 = [*(this + 2) supportsFamily:3003];
  v38 = atomic_load(HGLogger::_enabled);
  if ((v38 & 1) != 0 && HGLogger::getLevel("metal", v37) >= 1)
  {
    v41 = atomic_load(HGLogger::_enabled);
    if (v41)
    {
      v42 = "no";
      if (v29)
      {
        v42 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyApple1 : %s\n", v39, v40, v42);
    }

    v43 = atomic_load(HGLogger::_enabled);
    if (v43)
    {
      v44 = "no";
      if (v30)
      {
        v44 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyApple2 : %s\n", v39, v40, v44);
    }

    v45 = atomic_load(HGLogger::_enabled);
    if (v45)
    {
      v46 = "no";
      if (v31)
      {
        v46 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyApple3 : %s\n", v39, v40, v46);
    }

    v47 = atomic_load(HGLogger::_enabled);
    if (v47)
    {
      v48 = "no";
      if (v32)
      {
        v48 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyApple4 : %s\n", v39, v40, v48);
    }

    v49 = atomic_load(HGLogger::_enabled);
    if (v49)
    {
      v50 = "no";
      if (v33)
      {
        v50 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyApple5 : %s\n", v39, v40, v50);
    }

    v51 = atomic_load(HGLogger::_enabled);
    if (v51)
    {
      v52 = "no";
      if (v34)
      {
        v52 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyApple6 : %s\n", v39, v40, v52);
    }

    v53 = atomic_load(HGLogger::_enabled);
    if (v53)
    {
      v54 = "no";
      if (v35)
      {
        v54 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyApple7 : %s\n", v39, v40, v54);
    }

    v55 = atomic_load(HGLogger::_enabled);
    if (v55)
    {
      v56 = "no";
      if (v36)
      {
        v56 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyMac2 : %s\n", v39, v40, v56);
    }

    v57 = atomic_load(HGLogger::_enabled);
    if (v57)
    {
      v58 = "no";
      if (v80)
      {
        v58 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyCommon1 : %s\n", v39, v40, v58);
    }

    v59 = atomic_load(HGLogger::_enabled);
    if (v59)
    {
      v60 = "no";
      if (v79)
      {
        v60 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyCommon2 : %s\n", v39, v40, v60);
    }

    v61 = atomic_load(HGLogger::_enabled);
    if (v61)
    {
      v62 = "no";
      if (v78)
      {
        v62 = "yes";
      }

      HGLogger::log("metal", 1, "gpuFamilyCommon3 : %s\n", v39, v40, v62);
    }
  }

  if (v31)
  {
    v63 = 0x4000;
  }

  else
  {
    v63 = 0x2000;
  }

  *(this + 12) = v63;
  *(this + 56) = v30;
  *(this + 57) = v32;
  v64 = *(this + 2);
  if ([v64 supportsTextureSampleCount:8])
  {
    *(this + 13) = 8;
    v67 = atomic_load(HGLogger::_enabled);
    if ((v67 & 1) == 0)
    {
      goto LABEL_97;
    }

LABEL_96:
    HGLogger::log("metal", 1, "maxTextureSize = %d\n", v65, v66, *(this + 12));
    goto LABEL_97;
  }

  if ([v64 supportsTextureSampleCount:4])
  {
    *(this + 13) = 4;
    v68 = atomic_load(HGLogger::_enabled);
    if (v68)
    {
      goto LABEL_96;
    }
  }

  else
  {
    if ([v64 supportsTextureSampleCount:2])
    {
      v69 = 2;
    }

    else
    {
      v69 = 1;
    }

    *(this + 13) = v69;
    v70 = atomic_load(HGLogger::_enabled);
    if (v70)
    {
      goto LABEL_96;
    }
  }

LABEL_97:
  v71 = atomic_load(HGLogger::_enabled);
  if (v71)
  {
    HGLogger::log("metal", 1, "maxSampleCount = %d\n", v65, v66, *(this + 13));
  }

  v72 = atomic_load(HGLogger::_enabled);
  if (v72)
  {
    if (*(this + 56))
    {
      v73 = "yes";
    }

    else
    {
      v73 = "no";
    }

    HGLogger::log("metal", 1, "clampToZeroBuffers = %s\n", v65, v66, v73);
  }

  v74 = atomic_load(HGLogger::_enabled);
  if (v74)
  {
    if (*(this + 57))
    {
      v75 = "yes";
    }

    else
    {
      v75 = "no";
    }

    HGLogger::log("metal", 1, "quadShuffleSupported = %s\n", v65, v66, v75);
  }

  v76 = atomic_load(HGLogger::_enabled);
  if (v76)
  {
    if (*(this + 58))
    {
      v77 = "yes";
    }

    else
    {
      v77 = "no";
    }

    HGLogger::log("metal", 1, "bufferlessClientStorageSupported = %s\n", v65, v66, v77);
  }

  HGTraceGuard::~HGTraceGuard(v83);
}

void sub_25FBE5C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FBE5D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGMetalDeviceInfo::~HGMetalDeviceInfo(id *this)
{
  *this = &unk_28720A7A8;

  HGObject::~HGObject(this);
}

{
  *this = &unk_28720A7A8;

  HGObject::~HGObject(this);

  HGObject::operator delete(v2);
}

uint64_t HGMetalDeviceInfo::name(id *this)
{
  v1 = [this[2] name];

  return [v1 UTF8String];
}

uint64_t HGMetalDeviceInfo::validateTextureSampleCount(HGMetalDeviceInfo *this, const char *a2, char *a3)
{
  v3 = *(this + 13);
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v3;
  }

  if (v3 < a2)
  {
    HGLogger::warning("Requested sample count: %d, differs from final sample count: %d", a2, a3, a2, v4);
  }

  return v4;
}

void sub_25FBE6030(_Unwind_Exception *a1)
{
  HGObject::~HGObject(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](uint64_t a1, void *a2)
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
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
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

void HGYUVPlanarToRGBA::HGYUVPlanarToRGBA(HGNode *a1, int a2, char a3)
{
  HGNode::HGNode(a1);
  *v5 = &unk_28720A7F8;
  *(v5 + 408) = 0;
  *(v5 + 416) = a2;
  *(v5 + 420) = 0x300000001;
  *(v5 + 432) = 0;
  *(v5 + 433) = a3;
  *(v5 + 436) = 1;
}

void HGYUVPlanarToRGBA::~HGYUVPlanarToRGBA(HGYUVPlanarToRGBA *this)
{
  *this = &unk_28720A7F8;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGYUVPlanarToRGBA::~HGYUVPlanarToRGBA(HGNode *this)
{
  *this = &unk_28720A7F8;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

HGColorConform *HGYUVPlanarToRGBA::GetOutputForXRsRGB(HGYUVPlanarToRGBA *this, HGRenderer *a2, HGNode *a3)
{
  v3 = a3;
  v5 = *(this + 109);
  if (!v5)
  {
    v6 = 2;
LABEL_9:
    v7 = (this + 428);
LABEL_10:
    (*(*a3 + 16))(a3, a2);
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_9;
  }

  v7 = (this + 428);
  if (*(this + 107) != 2)
  {
    v6 = 5;
    goto LABEL_10;
  }

  v8 = HGObject::operator new(0x1E0uLL);
  HGGamutMap::HGGamutMap(v8);
  v6 = 5;
  HGGamutMap::SetConversion(v8, 5, 1, 0, 0, 8, 0);
  (*(*v8 + 120))(v8, 0, v3);
  v3 = v8;
LABEL_11:
  v9 = HGObject::operator new(0x320uLL);
  HGColorConform::HGColorConform(v9);
  HGColorConform::SetConversion(v9, v6, 1, 0, 0, 8, 0);
  (*(*v9 + 120))(v9, 0, v3);
  if (*v7 == 1 && *(this + 109) == 2)
  {
    v10 = HGObject::operator new(0x1C0uLL);
    HGColorClamp::HGColorClamp(v10);
  }

  (*(*v9 + 16))(v9);
  v11 = HGObject::operator new(0x320uLL);
  HGColorConform::HGColorConform(v11);
  HGColorConform::SetConversion(v11, 11, v12);
  (*(*v11 + 120))(v11, 0, v9);
  (*(*v3 + 24))(v3);
  (*(*v9 + 24))(v9);
  (*(*v9 + 24))(v9);
  return v11;
}

void HGYUVPlanarToRGBA::GetOutputForPlanar(HGNode *this, HGRenderer *a2)
{
  HGRenderer::GetInput(a2, this, 0);
  HGRenderer::GetInput(a2, this, 1u);
  if (*(this + 433) == 1)
  {
    Input = HGRenderer::GetInput(a2, this, 2u);
  }

  else
  {
    Input = 0;
  }

  v5 = *(this + 104);
  v6 = *(this + 105);
  v7 = HGObject::operator new(0x1A0uLL);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 5) = 0u;
  *(v7 + 6) = 0u;
  *(v7 + 7) = 0u;
  *(v7 + 8) = 0u;
  *(v7 + 9) = 0u;
  *(v7 + 10) = 0u;
  *(v7 + 11) = 0u;
  *(v7 + 12) = 0u;
  *(v7 + 13) = 0u;
  *(v7 + 14) = 0u;
  *(v7 + 15) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 17) = 0u;
  *(v7 + 18) = 0u;
  *(v7 + 19) = 0u;
  *(v7 + 20) = 0u;
  *(v7 + 21) = 0u;
  *(v7 + 22) = 0u;
  *(v7 + 23) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 25) = 0u;
  if (v5 != 1)
  {
    if (v5 == 2)
    {
      if (v6 != 2)
      {
        if (!v6)
        {
          if (Input)
          {
            HgcYUV444TriPlanar_601ToRGB::HgcYUV444TriPlanar_601ToRGB(v7);
          }

          HgcYUV444BiPlanar_601ToRGB::HgcYUV444BiPlanar_601ToRGB(v7);
        }

        if (Input)
        {
          HgcYUV444TriPlanar_709ToRGB::HgcYUV444TriPlanar_709ToRGB(v7);
        }

        HgcYUV444BiPlanar_709ToRGB::HgcYUV444BiPlanar_709ToRGB(v7);
      }

      if (Input)
      {
        HgcYUV444TriPlanar_2020ToRGB::HgcYUV444TriPlanar_2020ToRGB(v7);
      }

      HgcYUV444BiPlanar_2020ToRGB::HgcYUV444BiPlanar_2020ToRGB(v7);
    }

    if (v6 != 2)
    {
      if (!v6)
      {
        if (Input)
        {
          HgcYUV420TriPlanar_601ToRGB::HgcYUV420TriPlanar_601ToRGB(v7);
        }

        HgcYUV420BiPlanar_601ToRGB::HgcYUV420BiPlanar_601ToRGB(v7);
      }

      if (Input)
      {
        HgcYUV420TriPlanar_709ToRGB::HgcYUV420TriPlanar_709ToRGB(v7);
      }

      HgcYUV420BiPlanar_709ToRGB::HgcYUV420BiPlanar_709ToRGB(v7);
    }

    if (Input)
    {
      HgcYUV420TriPlanar_2020ToRGB::HgcYUV420TriPlanar_2020ToRGB(v7);
    }

    HgcYUV420BiPlanar_2020ToRGB::HgcYUV420BiPlanar_2020ToRGB(v7);
  }

  if (v6 != 2)
  {
    if (!v6)
    {
      if (Input)
      {
        HgcYUV422TriPlanar_601ToRGB::HgcYUV422TriPlanar_601ToRGB(v7);
      }

      HgcYUV422BiPlanar_601ToRGB::HgcYUV422BiPlanar_601ToRGB(v7);
    }

    if (Input)
    {
      HgcYUV422TriPlanar_709ToRGB::HgcYUV422TriPlanar_709ToRGB(v7);
    }

    HgcYUV422BiPlanar_709ToRGB::HgcYUV422BiPlanar_709ToRGB(v7);
  }

  if (Input)
  {
    HgcYUV422TriPlanar_2020ToRGB::HgcYUV422TriPlanar_2020ToRGB(v7);
  }

  HgcYUV422BiPlanar_2020ToRGB::HgcYUV422BiPlanar_2020ToRGB(v7);
}

void sub_25FBE6EE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGYUVPlanarToRGBA::SetParameter(HGYUVPlanarToRGBA *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2 == 2)
  {
    v7 = a3 != 0.0;
    v8 = a4;
    v9 = a5;
    if (*(this + 432) == v7 && *(this + 109) == v8 && *(this + 107) == v9)
    {
      return 0;
    }

    else
    {
      *(this + 432) = v7;
      *(this + 109) = v8;
      *(this + 107) = v9;
      return 1;
    }
  }

  else if (a2 == 1)
  {
    if (*(this + 106) == a3)
    {
      return 0;
    }

    else
    {
      *(this + 106) = a3;
      return 1;
    }
  }

  else if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else if (*(this + 105) == a3)
  {
    return 0;
  }

  else
  {
    *(this + 105) = a3;
    return 1;
  }
}

void HGYUV444ToPlanarLuma::HGYUV444ToPlanarLuma(HGNode *a1, int a2)
{
  HGNode::HGNode(a1);
  *v3 = &unk_28720AA48;
  *(v3 + 408) = 0;
  *(v3 + 416) = a2;
}

void HGYUV444ToPlanarLuma::~HGYUV444ToPlanarLuma(HGYUV444ToPlanarLuma *this)
{
  *this = &unk_28720AA48;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGYUV444ToPlanarLuma::~HGYUV444ToPlanarLuma(HGNode *this)
{
  *this = &unk_28720AA48;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

void HGYUV444ToPlanarLuma::GetOutput(HGYUV444ToPlanarLuma *this, HGRenderer *a2)
{
  v2 = *(this + 104);
  v3 = HGObject::operator new(0x1A0uLL);
  if (v2 != 1)
  {
    if (!v2)
    {
      HgcYUV420BiPlanar_luma_pack4::HgcYUV420BiPlanar_luma_pack4(v3);
    }

    HgcYUV420BiPlanar_luma::HgcYUV420BiPlanar_luma(v3);
  }

  HgcYUV420BiPlanar_luma_pack2::HgcYUV420BiPlanar_luma_pack2(v3);
}

void sub_25FBE7350(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void HGYUV444ToPlanarChroma::HGYUV444ToPlanarChroma(HGNode *a1, int a2, int a3)
{
  HGNode::HGNode(a1);
  *v5 = &unk_28720AC98;
  *(v5 + 408) = 0;
  *(v5 + 416) = a3;
  *(v5 + 420) = a2;
}

void HGYUV444ToPlanarChroma::~HGYUV444ToPlanarChroma(HGYUV444ToPlanarChroma *this)
{
  *this = &unk_28720AC98;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGYUV444ToPlanarChroma::~HGYUV444ToPlanarChroma(HGNode *this)
{
  *this = &unk_28720AC98;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

void HGYUV444ToPlanarChroma::GetOutput(HGYUV444ToPlanarChroma *this, HGRenderer *a2)
{
  v2 = *(this + 104);
  v3 = *(this + 105);
  if (v2 != 1)
  {
    if (!v2)
    {
      v4 = HGObject::operator new(0x1A0uLL);
      if (v3)
      {
        HgcYUV420BiPlanar_chroma::HgcYUV420BiPlanar_chroma(v4);
      }

      HgcYUV420BiPlanar_chroma_pack2::HgcYUV420BiPlanar_chroma_pack2(v4);
    }

    if (v3)
    {
      v6 = HGObject::operator new(0x200uLL);
      HgcYUV444BiPlanar_chroma::HgcYUV444BiPlanar_chroma(v6);
    }

    v7 = HGObject::operator new(0x1A0uLL);
    HgcYUV444BiPlanar_chroma_pack2::HgcYUV444BiPlanar_chroma_pack2(v7);
  }

  v5 = HGObject::operator new(0x1A0uLL);
  if (v3)
  {
    HgcYUV422BiPlanar_chroma::HgcYUV422BiPlanar_chroma(v5);
  }

  HgcYUV422BiPlanar_chroma_pack2::HgcYUV422BiPlanar_chroma_pack2(v5);
}

void sub_25FBE78D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void PlanarToRGB<HgcYUV444TriPlanar_601ToRGB>::~PlanarToRGB(HgcYUV444TriPlanar_601ToRGB *a1)
{
  HgcYUV444TriPlanar_601ToRGB::~HgcYUV444TriPlanar_601ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV444TriPlanar_601ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV444BiPlanar_601ToRGB>::~PlanarToRGB(HgcYUV444BiPlanar_601ToRGB *a1)
{
  HgcYUV444BiPlanar_601ToRGB::~HgcYUV444BiPlanar_601ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV444BiPlanar_601ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV444TriPlanar_2020ToRGB>::~PlanarToRGB(HgcYUV444TriPlanar_2020ToRGB *a1)
{
  HgcYUV444TriPlanar_2020ToRGB::~HgcYUV444TriPlanar_2020ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV444TriPlanar_2020ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV444BiPlanar_2020ToRGB>::~PlanarToRGB(HgcYUV444BiPlanar_2020ToRGB *a1)
{
  HgcYUV444BiPlanar_2020ToRGB::~HgcYUV444BiPlanar_2020ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV444BiPlanar_2020ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV444TriPlanar_709ToRGB>::~PlanarToRGB(HgcYUV444TriPlanar_709ToRGB *a1)
{
  HgcYUV444TriPlanar_709ToRGB::~HgcYUV444TriPlanar_709ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV444TriPlanar_709ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV444BiPlanar_709ToRGB>::~PlanarToRGB(HgcYUV444BiPlanar_709ToRGB *a1)
{
  HgcYUV444BiPlanar_709ToRGB::~HgcYUV444BiPlanar_709ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV444BiPlanar_709ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV422TriPlanar_601ToRGB>::~PlanarToRGB(HgcYUV422TriPlanar_601ToRGB *a1)
{
  HgcYUV422TriPlanar_601ToRGB::~HgcYUV422TriPlanar_601ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV422TriPlanar_601ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV422BiPlanar_601ToRGB>::~PlanarToRGB(HgcYUV422BiPlanar_601ToRGB *a1)
{
  HgcYUV422BiPlanar_601ToRGB::~HgcYUV422BiPlanar_601ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV422BiPlanar_601ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV422TriPlanar_2020ToRGB>::~PlanarToRGB(HgcYUV422TriPlanar_2020ToRGB *a1)
{
  HgcYUV422TriPlanar_2020ToRGB::~HgcYUV422TriPlanar_2020ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV422TriPlanar_2020ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV422BiPlanar_2020ToRGB>::~PlanarToRGB(HgcYUV422BiPlanar_2020ToRGB *a1)
{
  HgcYUV422BiPlanar_2020ToRGB::~HgcYUV422BiPlanar_2020ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV422BiPlanar_2020ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV422TriPlanar_709ToRGB>::~PlanarToRGB(HgcYUV422TriPlanar_709ToRGB *a1)
{
  HgcYUV422TriPlanar_709ToRGB::~HgcYUV422TriPlanar_709ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV422TriPlanar_709ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV422BiPlanar_709ToRGB>::~PlanarToRGB(HgcYUV422BiPlanar_709ToRGB *a1)
{
  HgcYUV422BiPlanar_709ToRGB::~HgcYUV422BiPlanar_709ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV422BiPlanar_709ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV420TriPlanar_601ToRGB>::~PlanarToRGB(HgcYUV420TriPlanar_601ToRGB *a1)
{
  HgcYUV420TriPlanar_601ToRGB::~HgcYUV420TriPlanar_601ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV420TriPlanar_601ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV420BiPlanar_601ToRGB>::~PlanarToRGB(HgcYUV420BiPlanar_601ToRGB *a1)
{
  HgcYUV420BiPlanar_601ToRGB::~HgcYUV420BiPlanar_601ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV420BiPlanar_601ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV420TriPlanar_2020ToRGB>::~PlanarToRGB(HgcYUV420TriPlanar_2020ToRGB *a1)
{
  HgcYUV420TriPlanar_2020ToRGB::~HgcYUV420TriPlanar_2020ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV420TriPlanar_2020ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV420BiPlanar_2020ToRGB>::~PlanarToRGB(HgcYUV420BiPlanar_2020ToRGB *a1)
{
  HgcYUV420BiPlanar_2020ToRGB::~HgcYUV420BiPlanar_2020ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV420BiPlanar_2020ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV420TriPlanar_709ToRGB>::~PlanarToRGB(HgcYUV420TriPlanar_709ToRGB *a1)
{
  HgcYUV420TriPlanar_709ToRGB::~HgcYUV420TriPlanar_709ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV420TriPlanar_709ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void PlanarToRGB<HgcYUV420BiPlanar_709ToRGB>::~PlanarToRGB(HgcYUV420BiPlanar_709ToRGB *a1)
{
  HgcYUV420BiPlanar_709ToRGB::~HgcYUV420BiPlanar_709ToRGB(a1);

  HGObject::operator delete(v1);
}

uint64_t PlanarToRGB<HgcYUV420BiPlanar_709ToRGB>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

const char *HGFormat_repr(unsigned int a1)
{
  if (a1 > 0x29)
  {
    return "unknown format";
  }

  else
  {
    return off_279AA83E0[a1];
  }
}

HGObject *HGComicLookupFilterLUTBitmapResourceImplementation::HGComicLookupFilterLUTBitmapResourceImplementation(HGObject *a1, HGComicLookupFilterLUTBitmapResourceImplementation *a2)
{
  HGObject::HGObject(a1);
  *v4 = &unk_28720DA80;
  *(v4 + 12) = a2;
  {
    HGComicLookupFilterLUTBitmapResourceImplementation::HGComicLookupFilterLUTBitmapResourceImplementation();
  }

  std::mutex::lock(&HGComicLookupFilterLUTBitmapResourceImplementation::getInstanceMutex(void)::instanceMutex);
  HGComicLookupFilterLUTBitmapResourceImplementation::getCachedLUT(a2, &v20);
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  else
  {
    Rect = HGComicLUT::GetRect(0);
    v7 = v6;
    Format = HGComicLUT::GetFormat(Rect);
    Data = HGComicLUT::GetData(a2);
    v10 = HGObject::operator new(0x80uLL);
    v11 = HGBitmap::HGBitmap(v10, Rect, v7, Format, Data);
    v12 = HGComicLUT::GetFormat(v11);
    if (v12 == 17)
    {
      v13 = HGComicLUT::GetRect(v12);
      v15 = v14;
      v16 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v16, v13, v15, 24);
      v19 = v16;
      HGComicLookupFilterLUTBitmapResourceImplementation::cacheLUT(a2, &v19);
      if (v16)
      {
        (*(*v16 + 24))(v16);
      }

      HGRenderUtils::BufferReformatter::BufferReformatter(v18);
    }

    if (v10)
    {
      (*(*v10 + 24))(v10);
    }
  }

  std::mutex::unlock(&HGComicLookupFilterLUTBitmapResourceImplementation::getInstanceMutex(void)::instanceMutex);
  return a1;
}

void sub_25FBE827C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGRenderUtils::BufferReformatter::~BufferReformatter(va);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  std::mutex::unlock(&HGComicLookupFilterLUTBitmapResourceImplementation::getInstanceMutex(void)::instanceMutex);
  HGObject::~HGObject(v2);
  _Unwind_Resume(a1);
}

void HGComicLookupFilterLUTBitmapResourceImplementation::getCachedLUT(HGComicLookupFilterLUTBitmapResourceImplementation *this@<X0>, void *a2@<X8>)
{
  v2 = this;
  {
    std::mutex::lock(&HGComicLookupFilterLUTBitmapResourceImplementation::getCacheMutex(void)::cacheMutex);
    if (v2 <= 5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    HGComicLookupFilterLUTBitmapResourceImplementation::getCachedLUT();
    std::mutex::lock(&HGComicLookupFilterLUTBitmapResourceImplementation::getCacheMutex(void)::cacheMutex);
    if (v2 <= 5)
    {
LABEL_3:
      {
        v4 = *(&HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data + v2);
        *a2 = v4;
        if (!v4)
        {
          goto LABEL_6;
        }
      }

      else
      {
        HGComicLookupFilterLUTBitmapResourceImplementation::getCachedLUT();
        v4 = *(&HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data + v2);
        *a2 = v4;
        if (!v4)
        {
LABEL_6:

          goto LABEL_8;
        }
      }

      (*(*v4 + 16))(v4);
      goto LABEL_6;
    }
  }

  *a2 = 0;

LABEL_8:
  std::mutex::unlock(&HGComicLookupFilterLUTBitmapResourceImplementation::getCacheMutex(void)::cacheMutex);
}

void HGComicLookupFilterLUTBitmapResourceImplementation::cacheLUT(int a1, uint64_t *a2)
{
  {
    std::mutex::lock(&HGComicLookupFilterLUTBitmapResourceImplementation::getCacheMutex(void)::cacheMutex);
    if (a1 > 5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    HGComicLookupFilterLUTBitmapResourceImplementation::getCachedLUT();
    std::mutex::lock(&HGComicLookupFilterLUTBitmapResourceImplementation::getCacheMutex(void)::cacheMutex);
    if (a1 > 5)
    {
      goto LABEL_9;
    }
  }

  {
    v4 = *(&HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data + a1);
    v5 = *a2;
    if (v4 == *a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    HGComicLookupFilterLUTBitmapResourceImplementation::getCachedLUT();
    v4 = *(&HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data + a1);
    v5 = *a2;
    if (v4 == *a2)
    {
      goto LABEL_9;
    }
  }

  if (v4)
  {
    (*(*v4 + 24))(v4);
    v5 = *a2;
  }

  *(&HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data + a1) = v5;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

LABEL_9:

  std::mutex::unlock(&HGComicLookupFilterLUTBitmapResourceImplementation::getCacheMutex(void)::cacheMutex);
}

void HGComicLookupFilterLUTBitmapResourceImplementation::~HGComicLookupFilterLUTBitmapResourceImplementation(HGComicLookupFilterLUTBitmapResourceImplementation *this)
{
  HGObject::~HGObject(this);

  HGObject::operator delete(v1);
}

uint64_t HGComicLookupFilterLUTBitmapResource::HGComicLookupFilterLUTBitmapResource(uint64_t a1, HGComicLookupFilterLUTBitmapResourceImplementation *a2)
{
  HGNode::HGNode(a1);
  *v4 = &unk_28720DAB8;
  v4[51] = 0;
  v5 = HGObject::operator new(0x10uLL);
  HGComicLookupFilterLUTBitmapResourceImplementation::HGComicLookupFilterLUTBitmapResourceImplementation(v5, a2);
  *(a1 + 416) = v5;
  return a1;
}

void sub_25FBE869C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  v4 = *(v1 + 408);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGComicLookupFilterLUTBitmapResource::~HGComicLookupFilterLUTBitmapResource(HGNode *this)
{
  *this = &unk_28720DAB8;
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
  *this = &unk_28720DAB8;
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

HGBitmapLoader *HGComicLookupFilterLUTBitmapResource::GetOutput(HGComicLookupFilterLUTBitmapResource *this, HGRenderer *a2)
{
  HGComicLookupFilterLUTBitmapResourceImplementation::getCachedLUT(*(*(this + 52) + 12), &v7);
  v3 = v7;
  v4 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v4, v3);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v5 = *(this + 51);
  if (v5 == v4)
  {
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 24))(v5);
    }

    *(this + 51) = v4;
    if (v4)
    {
      (*(*v4 + 16))(v4);
LABEL_9:
      (*(*v4 + 24))(v4);
    }
  }

  return v4;
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D82690];

  return __cxa_atexit(v4, a2, a3);
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1, uint64_t a2, void *a3)
{

  return __cxa_atexit(__cxx_global_array_dtor, 0, a3);
}

void HGComicLookupFilterLUTBitmapResourceImplementation::HGComicLookupFilterLUTBitmapResourceImplementation()
{
  if (v0)
  {
    OUTLINED_FUNCTION_0_3(v0, &HGComicLookupFilterLUTBitmapResourceImplementation::getInstanceMutex(void)::instanceMutex, &dword_25F8F0000);
  }
}

void HGComicLookupFilterLUTBitmapResourceImplementation::getCachedLUT()
{
  if (v0)
  {
    OUTLINED_FUNCTION_0_3(v0, &HGComicLookupFilterLUTBitmapResourceImplementation::getCacheMutex(void)::cacheMutex, &dword_25F8F0000);
  }
}

{
  if (v0)
  {
    off_27FDC4A10 = 0u;
    *&off_27FDC4A20 = 0u;
    HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data = 0u;
    OUTLINED_FUNCTION_1_0(v0, v1, &dword_25F8F0000);
  }
}

uint64_t __cxx_global_array_dtor()
{
  if (off_27FDC4A28)
  {
    (*(*off_27FDC4A28 + 24))(off_27FDC4A28);
  }

  if (off_27FDC4A20)
  {
    (*(*off_27FDC4A20 + 24))(off_27FDC4A20);
  }

  if (*(&off_27FDC4A10 + 1))
  {
    (*(**(&off_27FDC4A10 + 1) + 24))(*(&off_27FDC4A10 + 1));
  }

  if (off_27FDC4A10)
  {
    (*(*off_27FDC4A10 + 24))(off_27FDC4A10);
  }

  if (*(&HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data + 1))
  {
    (*(**(&HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data + 1) + 24))(*(&HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data + 1));
  }

  result = HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data;
  if (HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data)
  {
    return (*(*HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data + 24))(HGComicLookupFilterLUTBitmapResourceImplementation::getData(void)::data);
  }

  return result;
}

void HGCache::HGCache(HGCache *this)
{
  *this = &unk_28720DD38;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  pthread_mutex_init((this + 40), 0);
}

void HGCache::~HGCache(HGCache *this)
{
  *this = &unk_28720DD38;
  v1 = *(this + 2);
  if (v1)
  {
    do
    {
      v3 = v1[5];
      if (v3)
      {
        (*(*v3 + 24))(v3);
      }

      v2 = *v1;
      MEMORY[0x2666E9F00](v1, 0x1020C40063BF169);
      v1 = v2;
    }

    while (v2);
  }
}

{
  *this = &unk_28720DD38;
  v1 = *(this + 2);
  if (v1)
  {
    do
    {
      v3 = v1[5];
      if (v3)
      {
        (*(*v3 + 24))(v3);
      }

      v2 = *v1;
      MEMORY[0x2666E9F00](v1, 0x1020C40063BF169);
      v1 = v2;
    }

    while (v2);
  }

  JUMPOUT(0x2666E9F00);
}

void HGCinematic::HGCinematic(HGCinematic *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_28720DD68;
  *(v2 + 420) = 0;
  *(v2 + 424) = 256;
  *(v2 + 440) = 0;
  *(v2 + 448) = 0;
  *(v2 + 432) = 0;
  *(v2 + 464) = 0;
  *(v2 + 472) = 0;
  *(v2 + 16) = *(v2 + 16) & 0xFFFFF9FF | 0x400;
  atomic_store(0, (v2 + 456));
  HGNode::SetFlags(v2, 0, 2);
  (*(*this + 136))(this, 1, 2);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 2);
  (*(*this + 136))(this, 0, 0x2000);
  (*(*this + 136))(this, 1, 0x2000);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 128);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 4);
  *(this + 104) = 100;
}

void sub_25FBE923C(_Unwind_Exception *a1)
{
  if (*(v1 + 455) < 0)
  {
    operator delete(*(v1 + 432));
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGCinematic::~HGCinematic(id *this)
{
  *this = &unk_28720DD68;

  if (*(this + 455) < 0)
  {
    operator delete(this[54]);
    v2 = this;
  }

  else
  {
    v2 = this;
  }

  HGNode::~HGNode(v2);
}

{
  *this = &unk_28720DD68;

  if (*(this + 455) < 0)
  {
    operator delete(this[54]);
    HGNode::~HGNode(this);
  }

  else
  {
    HGNode::~HGNode(this);
  }

  HGObject::operator delete(v2);
}

uint64_t HGCinematic::GetDOD(HGCinematic *this, HGRenderer *a2, uint64_t a3, HGRect a4)
{
  v5 = (*(*this + 128))(this, 0, a3, *&a4.var0, *&a4.var2);

  return HGRenderer::GetDOD(a2, v5);
}

uint64_t HGCinematic::GetROI(HGCinematic *this, HGRenderer *a2, uint64_t a3, HGRect a4)
{
  if (a3 > 1)
  {
    return *&a4.var0;
  }

  v6 = (*(*this + 128))(this, a3);

  return HGRenderer::GetDOD(a2, v6);
}

uint64_t HGCinematic::RenderPageMetal(HGNode *this, HGPage *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  HGPagePullMetalTexturesGuard::HGPagePullMetalTexturesGuard(&v26, this, a2);
  v4 = (*(*this + 48))(this);
  snprintf(__str, 0x100uLL, "%s::RenderPageMetal( [%d %d %d %d])", v4, *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
  HGTraceGuard::HGTraceGuard(v25, "gpu", 1, __str);
  HGGPURenderer::GetMetalContext(*a2);
  v5 = *(a2 + 1);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    Buffer = *(a2 + 1);
  }

  else
  {
    v7 = *a2;
    DOD = HGRenderer::GetDOD(*a2, this);
    v10 = v9;
    *&v29.var0 = DOD;
    *&v29.var2 = v10;
    Buffer = HGGPURenderer::CreateBuffer(v7, v29, *(a2 + 8), 1, 1, 0);
    *(a2 + 1) = Buffer;
  }

  v11 = HGGPURenderer::ConvertToMetalTexture(*a2, Buffer);
  v12 = *(a2 + 36);
  v13 = *(a2 + 44);
  v14 = *(a2 + 52);
  v15 = *(a2 + 60);
  Input = HGRenderer::GetInput(*a2, this, 0);
  v17 = HGRenderer::GetInput(*a2, this, 1u);
  *&v30.var0 = v12;
  *&v30.var2 = v13;
  NodeMetalTexture = HGGPURenderer::GetNodeMetalTexture(*a2, Input, v30, 0, 0);
  v24 = NodeMetalTexture;
  *&v31.var0 = v14;
  *&v31.var2 = v15;
  v19 = HGGPURenderer::GetNodeMetalTexture(*a2, v17, v31, 0, 0);
  v20 = v19;
  v23 = v19;
  if (NodeMetalTexture)
  {
    if (v19)
    {
      HGGPURenderer::FlushMetalCommandBuffer(*a2);
      if (*(NodeMetalTexture + 18))
      {
        if (*(v20 + 18))
        {
          v22[0] = 0;
          v22[1] = v22;
          v22[2] = 0x2020000000;
          operator new();
        }
      }
    }
  }

  (*(*v11 + 24))(v11);
  if (v23)
  {
    (*(*v23 + 24))(v23);
  }

  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  HGTraceGuard::~HGTraceGuard(v25);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&v26);
  return *(a2 + 1);
}

void sub_25FBE98C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, HGPage *a30)
{
  *(v31 + 8) = v30;
  _Block_object_dispose(&a22, 8);
  if (a26)
  {
    (*(*a26 + 24))(a26);
  }

  if (a27)
  {
    (*(*a27 + 24))(a27);
  }

  HGTraceGuard::~HGTraceGuard(&a28);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&a30);
  _Unwind_Resume(a1);
}

void sub_25FBE99C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t ___ZN11HGCinematic15RenderPageMetalEP6HGPage_block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      v3 = v1[1];
      v4 = *v1;
      if (v3 != v2)
      {
        do
        {
          v6 = *(v3 - 1);
          v3 -= 8;
          v5 = v6;
          if (v6)
          {
            (*(*v5 + 24))(v5);
          }
        }

        while (v3 != v2);
        v4 = *v1;
      }

      v1[1] = v2;
      operator delete(v4);
    }

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t HGCinematic::setRenderDisparity(uint64_t this)
{
  *(this + 424) = 1;
  *(this + 420) = 2;
  return this;
}

void HGCinematic::performPortraitWithDevice(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v37 = *MEMORY[0x277D85DE8];
  if (HGCinematic::prepCachePipelinesAndLocks(void)::onceToken != -1)
  {
    HGCinematic::performPortraitWithDevice();
  }

  v14 = HGCinematic::_cachePipelinesLock;
  std::mutex::lock(HGCinematic::_cachePipelinesLock);
  Pipeline = HGCinematic::getPipeline(a1, a2, a4, a5);
  context = objc_autoreleasePoolPush();
  v16 = [a3 commandBuffer];
  if (*(a1 + 424) == 1 && *(a1 + 425) == 1)
  {
    v17 = [Pipeline[2] upscaleDisparity:a5 inRGBA:a4 commandBuffer:v16];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 pixelFormat];
      v20 = [a6 pixelFormat];
      if (v19 != v20)
      {
        v21 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v20 width:objc_msgSend(v18 height:"width") mipmapped:objc_msgSend(v18, "height"), 0];
        [v21 setUsage:3];
        v22 = [a2 newTextureWithDescriptor:v21];
        v23 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF498]);
        v24 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF488]);
        v25 = CGColorConversionInfoCreate(v23, v24);
        memset(v36, 0, sizeof(v36));
        v26 = [objc_alloc(MEMORY[0x277CD74F8]) initWithDevice:a2 srcAlpha:1 destAlpha:1 backgroundColor:v36 conversionInfo:v25];
        [v26 encodeToCommandBuffer:v16 sourceTexture:v18 destinationTexture:v22];

        CFRelease(v25);
        CGColorSpaceRelease(v23);
        CGColorSpaceRelease(v24);
        v27 = [v18 width];
        if (v27 == [a6 width])
        {
          [v18 height];
          [a6 height];
        }

        v28 = [objc_alloc(MEMORY[0x277CD74E0]) initWithDevice:a2];
        [v28 encodeToCommandBuffer:v16 sourceTexture:v22 destinationTexture:a6];
        [v16 addCompletedHandler:&__block_literal_global_24_0];
        [v16 commit];
      }
    }

    goto LABEL_26;
  }

  v29 = objc_opt_new();
  [v29 setRenderState:Pipeline[3]];
  [v29 setSourceColor:{objc_msgSend(MEMORY[0x277D3E8F0], "createRGBA:", a4)}];
  [v29 setDestinationColor:{objc_msgSend(MEMORY[0x277D3E8F0], "createRGBA:", a6)}];
  v30 = (a1 + 432);
  if (*(a1 + 455) < 0)
  {
    if (!*(a1 + 440))
    {
      goto LABEL_16;
    }

    v30 = *v30;
    goto LABEL_15;
  }

  if (*(a1 + 455))
  {
LABEL_15:
    [objc_msgSend(v29 "sourceColor")];
  }

LABEL_16:
  [v29 setSourceDisparity:a5];
  [objc_msgSend(v29 "destinationColor")];
  if (*(a1 + 472) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 472) applyToRenderRequest:v29];
  }

  v32 = *(a1 + 464);
  if (v32)
  {
    [v32 applyToRenderRequest:v29];
  }

  LODWORD(v31) = *(a1 + 408);
  [v29 setAperture:v31];
  LODWORD(v33) = *(a1 + 412);
  [v29 setFocusDistance:v33];
  v34 = [Pipeline[1] encodeRenderTo:v16 withRenderRequest:v29];

  if (v34)
  {
    NSLog(&cfstr_Error.isa, [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v34 userInfo:0]);
  }

  if (a7)
  {
    [v16 addCompletedHandler:a7];
  }

  [v16 commit];
  [v16 waitUntilScheduled];
LABEL_26:
  objc_autoreleasePoolPop(context);
  std::mutex::unlock(v14);
}

void **HGCinematic::getPipeline(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = [a3 width];
  v9 = [a3 height];
  v10 = [a4 width];
  v11 = [a4 height];
  v12 = HGCinematic::_cachePipelines;
  v13 = *(HGCinematic::_cachePipelines + 8);
  if (*(HGCinematic::_cachePipelines + 16) == v13 || (v14 = *(HGCinematic::_cachePipelines + 32), v15 = (v13 + 8 * (v14 >> 9)), v16 = (*v15 + 8 * (v14 & 0x1FF)), v17 = *(v13 + (((*(HGCinematic::_cachePipelines + 40) + v14) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(HGCinematic::_cachePipelines + 40) + v14) & 0x1FF), v16 == v17))
  {
LABEL_21:
    if (v12[5] == 1)
    {
      v28 = v12[4];
      v29 = v12[1];
      v30 = *(*(v29 + ((v28 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v28 & 0x1FF));
      if (v30)
      {

        *v30 = 0u;
        *(v30 + 1) = 0u;
        MEMORY[0x2666E9F00](v30, 0x1080C406D05D2F5);
        v12 = HGCinematic::_cachePipelines;
        v28 = *(HGCinematic::_cachePipelines + 32);
        v31 = *(HGCinematic::_cachePipelines + 40);
        v29 = *(HGCinematic::_cachePipelines + 8);
      }

      else
      {
        v31 = 1;
      }

      v32 = v12[2];
      if (v32 == v29)
      {
        v33 = 0;
      }

      else
      {
        v33 = ((v32 - v29) << 6) - 1;
      }

      v12[5] = v31 - 1;
      if (v33 - (v31 + v28) + 1 >= 0x400)
      {
        operator delete(*(v32 - 8));
        v12[2] -= 8;
      }
    }

    v34 = objc_alloc(MEMORY[0x277D3E8B0]);
    v35 = [v34 initWithDevice:a2 version:objc_msgSend(MEMORY[0x277D3E8A0] colorSize:"latestVersion") disparitySize:{v8, v9, v10, v11}];
    [v35 setDebugRendering:*(a1 + 420)];
    [v35 setUseRGBA:1];
    operator new();
  }

  while (1)
  {
    v18 = **v16;
    v19 = [objc_msgSend(v18 "device")];
    if (v19 == [a2 registryID])
    {
      [v18 colorInputSize];
      if (v21 == v8 && v20 == v9)
      {
        [v18 disparitySize];
        if (v24 == v10 && v23 == v11 && [v18 debugRendering] == *(a1 + 420))
        {
          result = *v16;
          if (*(*v16 + 8) == *(a1 + 416))
          {
            return result;
          }
        }
      }
    }

    if ((++v16 - *v15) == 4096)
    {
      v27 = v15[1];
      ++v15;
      v16 = v27;
    }

    if (v16 == v17)
    {
      v12 = HGCinematic::_cachePipelines;
      goto LABEL_21;
    }
  }
}

uint64_t HGCinematic::setDisplayMode(uint64_t this, int a2)
{
  if (a2 != 4)
  {
    if (a2 == 1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    if (a2 == 3)
    {
      v3 = 4;
    }

    else
    {
      v3 = v2;
    }

    *(this + 420) = v3;
  }

  return this;
}

uint64_t HGCinematic::RenderTile(atomic_uint *this, HGTile *a2)
{
  if (!atomic_fetch_add(this + 114, 1u))
  {
    v3 = this;
    context = objc_autoreleasePoolPush();
    v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
    v36 = MTLCreateSystemDefaultDevice();
    v32 = [v36 newCommandQueue];
    v4 = HGTile::Renderer(a2);
    Input = HGRenderer::GetInput(v4, v3, 0);
    if (Input)
    {
      v6 = Input;
      v35 = 0;
      v7 = 0;
      v8 = 1;
      do
      {
        ROI = HGRenderer::GetROI(v4, v6);
        v11 = v10;
        v12 = a2;
        v13 = v3;
        HGRenderer::RenderInput(v4, *(a2 + 42), v3, v7, &v43, ROI, v10, 0);
        if (v8)
        {
          v14 = 28;
        }

        else
        {
          v14 = 7;
        }

        v15 = 16 * v44;
        v16 = HGObject::operator new(0x80uLL);
        HGBitmap::HGBitmap(v16, ROI, v11, v14, v43, v15);
        v17 = objc_alloc_init(MEMORY[0x277CD7058]);
        v18 = v17;
        if (v8)
        {
          v19 = 125;
        }

        else
        {
          v19 = 55;
        }

        [v17 setPixelFormat:v19];
        [v18 setWidth:v11 - ROI];
        [v18 setHeight:(v11 - (ROI & 0xFFFFFFFF00000000)) >> 32];
        v20 = [v36 newTextureWithDescriptor:v18];
        v3 = v13;
        v21 = [v18 width];
        v22 = [v18 height];
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = v21;
        v41 = v22;
        v42 = 1;
        [v20 replaceRegion:&v37 mipmapLevel:0 withBytes:v16[10] bytesPerRow:v16[8]];
        if (!v35)
        {
          [v18 setUsage:2];
          v35 = [v36 newTextureWithDescriptor:v18];
        }

        [v34 addObject:v20];
        (*(*v16 + 24))(v16);
        v23 = HGRenderer::GetInput(v4, v13, v7 + 1);
        a2 = v12;
        if (!v23)
        {
          break;
        }

        v6 = v23;
        --v8;
      }

      while (v7++ < 7);
    }

    else
    {
      v35 = 0;
    }

    (*(*v3 + 576))(v3, v36, v32, [v34 objectAtIndex:0], objc_msgSend(v34, "objectAtIndex:", 1), v35, 0);
    v25 = objc_autoreleasePoolPush();
    v26 = (*(a2 + 2) - *a2);
    v27 = (*(a2 + 3) - *(a2 + 1));
    v28 = [v32 commandBuffer];
    [objc_msgSend(v28 "blitCommandEncoder")];
    [v28 commit];
    [v28 waitUntilCompleted];
    v29 = *(a2 + 2);
    v30 = 16 * *(a2 + 6);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = v26;
    v41 = v27;
    v42 = 1;
    [v35 getBytes:v29 bytesPerRow:v30 fromRegion:&v37 mipmapLevel:0];
    objc_autoreleasePoolPop(v25);

    objc_autoreleasePoolPop(context);
  }

  return 0;
}

void sub_25FBEA814(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

PTGlobalRenderingMetadata *HGCinematic::SetGlobalRenderingMetadata(PTGlobalRenderingMetadata *this, PTGlobalRenderingMetadata *a2)
{
  v2 = *(this + 58);
  if (v2 != a2)
  {
    v4 = this;

    this = a2;
    *(v4 + 58) = this;
  }

  return this;
}

void *HGCinematic::SetTimedRenderingMetadata(void *result, void *a2)
{
  v2 = result[59];
  if (v2 != a2)
  {
    v4 = result;

    result = a2;
    v4[59] = result;
  }

  return result;
}

void HGCinematic::ClearCachePipelines(HGCinematic *this)
{
  if (HGCinematic::prepCachePipelinesAndLocks(void)::onceToken != -1)
  {
    HGCinematic::performPortraitWithDevice();
  }

  v1 = HGCinematic::_cachePipelinesLock;
  std::mutex::lock(HGCinematic::_cachePipelinesLock);
  v2 = HGCinematic::_cachePipelines;
  v3 = *(HGCinematic::_cachePipelines + 8);
  v4 = (v3 + 8 * (*(HGCinematic::_cachePipelines + 32) >> 9));
  if (*(HGCinematic::_cachePipelines + 16) == v3)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v5 = (*v4 + 8 * (*(HGCinematic::_cachePipelines + 32) & 0x1FFLL));
  while (1)
  {
    v6 = *(v2 + 40) + *(v2 + 32);
    if ((*(v3 + ((v6 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v6 & 0x1FF)) == v5)
    {
      break;
    }

    while (1)
    {
      v7 = *v5;

      *v7 = 0u;
      *(v7 + 1) = 0u;
      v4 = std::deque<Pipeline *>::erase(HGCinematic::_cachePipelines, v4, v5);
      v5 = v8;
      v2 = HGCinematic::_cachePipelines;
      v3 = *(HGCinematic::_cachePipelines + 8);
      if (*(HGCinematic::_cachePipelines + 16) != v3)
      {
        break;
      }

LABEL_8:
      if (!v5)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_11:

  std::mutex::unlock(v1);
}

void **std::deque<Pipeline *>::erase(int64x2_t *a1, char *a2, char *a3)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 >> 9));
  if (v8 == v7)
  {
    v10 = 0;
    if (!a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *v9 + 8 * (a1[2].i64[0] & 0x1FF);
    if (a3 == v10)
    {
LABEL_3:
      v11 = 0;
      v12 = *v9;
      v13 = 1;
      v14 = (v7 + 8 * (v6 >> 9));
LABEL_14:
      v26 = (a3 - v12) >> 3;
      if (v26 < 0)
      {
        v30 = 510 - v26;
        v28 = &v14[-(v30 >> 9)];
        v29 = *v28 + 8 * (~v30 & 0x1FF);
      }

      else
      {
        v27 = v26 + 1;
        v28 = &v14[v27 >> 9];
        v29 = *v28 + 8 * (v27 & 0x1FF);
      }

      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<Pipeline *,Pipeline **,Pipeline *&,Pipeline ***,long,512l>,std::__deque_iterator<Pipeline *,Pipeline **,Pipeline *&,Pipeline ***,long,512l>,0>(v9, v10, v14, a3, v28, v29, v41);
      v31 = vaddq_s64(a1[2], xmmword_260342880);
      a1[2] = v31;
      v32 = v31.i64[0];
      v33 = a1->i64[1];
      if (v31.i64[0] >= 0x400uLL)
      {
        operator delete(*v33);
        v33 = (a1->i64[1] + 8);
        a1->i64[1] = v33;
        v32 = a1[2].i64[0] - 512;
        a1[2].i64[0] = v32;
      }

      goto LABEL_19;
    }
  }

  v15 = (&a3[-*a2] >> 3) + ((a2 - v9) << 6);
  v12 = *v9;
  v16 = v10 - *v9;
  v11 = v15 - (v16 >> 3);
  v13 = v15 == v16 >> 3;
  if (!v11)
  {
    a3 = v10;
    v14 = (v7 + 8 * (v6 >> 9));
    goto LABEL_14;
  }

  if (v15 < 1)
  {
    v17 = 511 - v15;
    LOWORD(v15) = ~(511 - v15);
    v14 = &v9[-(v17 >> 9)];
  }

  else
  {
    v14 = &v9[v15 >> 9];
  }

  v12 = *v14;
  a3 = *v14 + 8 * (v15 & 0x1FF);
  v18 = a1[2].i64[1];
  if (v11 <= (v18 - 1) >> 1)
  {
    goto LABEL_14;
  }

  v19 = (a3 - v12) >> 3;
  if (v19 < 0)
  {
    v37 = 510 - v19;
    v21 = &v14[-(v37 >> 9)];
    v22 = *v21 + 8 * (~v37 & 0x1FF);
    v23 = v18 + v6;
    v24 = (v7 + 8 * ((v18 + v6) >> 9));
    if (v8 != v7)
    {
      goto LABEL_13;
    }

LABEL_27:
    v25 = 0;
    goto LABEL_28;
  }

  v20 = v19 + 1;
  v21 = &v14[v20 >> 9];
  v22 = *v21 + 8 * (v20 & 0x1FF);
  v23 = v18 + v6;
  v24 = (v7 + 8 * ((v18 + v6) >> 9));
  if (v8 == v7)
  {
    goto LABEL_27;
  }

LABEL_13:
  v25 = *v24 + 8 * (v23 & 0x1FF);
LABEL_28:
  v41[0] = v14;
  v41[1] = a3;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<Pipeline *,Pipeline **,Pipeline *&,Pipeline ***,long,512l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<std::__deque_iterator<Pipeline *,Pipeline **,Pipeline *&,Pipeline ***,long,512l>,std::__deque_iterator<Pipeline *,Pipeline **,Pipeline *&,Pipeline ***,long,512l>>>(v21, v22, v24, v25, v41);
  v33 = a1->i64[1];
  v38 = a1[1].i64[0];
  v32 = a1[2].u64[0];
  v39 = a1[2].i64[1];
  a1[2].i64[1] = v39 - 1;
  v40 = ((v38 - v33) << 6) - 1;
  if (v38 == v33)
  {
    v40 = 0;
  }

  if (v40 - (v39 + v32) + 1 >= 0x400)
  {
    operator delete(*(v38 - 1));
    v13 = 0;
    v33 = a1->i64[1];
    a1[1].i64[0] -= 8;
    v32 = a1[2].u64[0];
  }

  else
  {
    v13 = 0;
  }

LABEL_19:
  result = &v33[v32 >> 9];
  if (a1[1].i64[0] == v33)
  {
    v35 = 0;
    if (v13)
    {
      return result;
    }
  }

  else
  {
    v35 = *result + 8 * (v32 & 0x1FF);
    if (v13)
    {
      return result;
    }
  }

  v36 = v11 + ((v35 - *result) >> 3);
  if (v36 < 1)
  {
    result -= (511 - v36) >> 9;
  }

  else
  {
    result += v36 >> 9;
  }

  return result;
}

uint64_t std::vector<HGRef<HGMetalTexture>>::__emplace_back_slow_path<HGRef<HGMetalTexture> const&>(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 2 > v3)
  {
    v3 = v5 >> 2;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    v6 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    if (!(v6 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = (8 * v2);
  __p = 0;
  v16 = v7;
  v17 = 8 * v2;
  v18 = 0;
  v8 = *a2;
  *v7 = *a2;
  if (v8)
  {
    (*(*v8 + 16))(v8);
    v7 = v17;
  }

  v17 = (v7 + 1);
  std::vector<HGRef<HGMetalTexture>>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  v10 = v16;
LABEL_13:
  v11 = v17;
  while (v11 != v10)
  {
    v13 = *(v11 - 8);
    v11 -= 8;
    v12 = v13;
    v17 = v11;
    if (v13)
    {
      (*(*v12 + 24))(v12);
      goto LABEL_13;
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_25FBEAEC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<HGRef<HGMetalTexture>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<HGRef<HGMetalTexture>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = (v4 + *result - v5);
  v14 = v7;
  if (*result != v5)
  {
    v8 = (v4 + v6 - v5);
    v9 = *result;
    do
    {
      v10 = *v9;
      *v8 = *v9;
      if (v10)
      {
        (*(*v10 + 16))(v10);
        v8 = v14;
      }

      v9 += 8;
      v14 = ++v8;
    }

    while (v9 != v5);
    do
    {
      result = *v6;
      if (*v6)
      {
        result = (*(*result + 24))(result);
      }

      v6 += 8;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v11 = *v3;
  v3[1] = *v3;
  *v3 = a2[1];
  a2[1] = v11;
  v12 = v3[1];
  v3[1] = a2[2];
  a2[2] = v12;
  v13 = v3[2];
  v3[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

const void **std::deque<Pipeline *>::__add_front_capacity(uint64_t a1)
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

void sub_25FBEB3EC(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<Pipeline *,Pipeline **,Pipeline *&,Pipeline ***,long,512l>,std::__deque_iterator<Pipeline *,Pipeline **,Pipeline *&,Pipeline ***,long,512l>,0>@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  if (a1 == a3)
  {
    if (a2 == a4)
    {
      goto LABEL_42;
    }

    v13 = *a5;
    v14 = a4;
    while (1)
    {
      v15 = &a6[-v13] >> 3;
      if ((v14 - a2) >> 3 < v15)
      {
        v15 = (v14 - a2) >> 3;
      }

      v14 -= 8 * v15;
      a6 -= 8 * v15;
      if (v15)
      {
        result = memmove(a6, v14, 8 * v15);
      }

      if (v14 == a2)
      {
        break;
      }

      v17 = *--v8;
      v13 = v17;
      a6 = (v17 + 4096);
    }

    goto LABEL_40;
  }

  v19 = *a3;
  if (*a3 != a4)
  {
    v20 = *a5;
    v21 = a4;
    while (1)
    {
      v22 = &a6[-v20] >> 3;
      if ((v21 - v19) >> 3 < v22)
      {
        v22 = (v21 - v19) >> 3;
      }

      v21 -= 8 * v22;
      a6 -= 8 * v22;
      if (v22)
      {
        result = memmove(a6, v21, 8 * v22);
      }

      if (v21 == v19)
      {
        break;
      }

      v23 = *--v8;
      v20 = v23;
      a6 = (v23 + 4096);
    }

    if (*v8 + 4096 == a6)
    {
      v24 = v8[1];
      ++v8;
      a6 = v24;
    }
  }

  v25 = a3 - 1;
  if (a3 - 1 != a1)
  {
    v26 = *v8;
    do
    {
      while (1)
      {
        v27 = *v25;
        v28 = *v25 + 4096;
        while (1)
        {
          v29 = (a6 - v26) >> 3;
          if ((v28 - v27) >> 3 < v29)
          {
            v29 = (v28 - v27) >> 3;
          }

          v28 -= 8 * v29;
          a6 -= 8 * v29;
          if (v29)
          {
            result = memmove(a6, v28, 8 * v29);
          }

          if (v28 == v27)
          {
            break;
          }

          v30 = *--v8;
          v26 = v30;
          a6 = v30 + 4096;
        }

        v26 = *v8;
        if (*v8 + 4096 == a6)
        {
          break;
        }

        if (--v25 == a1)
        {
          goto LABEL_32;
        }
      }

      v31 = v8[1];
      ++v8;
      v26 = v31;
      a6 = v31;
      --v25;
    }

    while (v25 != a1);
  }

LABEL_32:
  v32 = *v25 + 4096;
  if (v32 != a2)
  {
    v33 = *v8;
    while (1)
    {
      v34 = &a6[-v33] >> 3;
      if ((v32 - a2) >> 3 < v34)
      {
        v34 = (v32 - a2) >> 3;
      }

      v32 -= 8 * v34;
      a6 -= 8 * v34;
      if (v34)
      {
        result = memmove(a6, v32, 8 * v34);
      }

      if (v32 == a2)
      {
        break;
      }

      v35 = *--v8;
      v33 = v35;
      a6 = (v35 + 4096);
    }

LABEL_40:
    if (*v8 + 4096 == a6)
    {
      v36 = v8[1];
      ++v8;
      a6 = v36;
    }
  }

LABEL_42:
  *a7 = a3;
  a7[1] = a4;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}