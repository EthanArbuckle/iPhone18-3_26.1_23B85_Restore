void non-virtual thunk tocc::curve::aspline::color_t<double>::~color_t(uint64_t a1)
{
  *(a1 - 32) = &unk_2871D8940;
  *a1 = &unk_2871D8980;
  v2 = (a1 + 40);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 - 24);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t non-virtual thunk tocc::curve::aspline::color_t<double>::~color_t(uint64_t a1)
{
  v2 = a1 - 32;
  *(a1 - 32) = &unk_2871D8940;
  *a1 = &unk_2871D8980;
  v4 = (a1 + 40);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 - 24);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return MEMORY[0x2666E9F00](v2, 0x10A1C40D66B6438);
}

uint64_t non-virtual thunk tocc::curve::aspline::color_t<double>::evaluate(uint64_t a1)
{
  v1 = *(a1 + 72);
  v2 = *(a1 + 80);
  v3 = a1 + (v2 >> 1);
  if (v2)
  {
    v1 = *(*(v3 + 32) + v1);
  }

  return v1(v3 + 32);
}

BOOL non-virtual thunk tocc::curve::aspline::color_t<double>::evaluateAsBytes(uint64_t a1, _WORD *a2, int a3, int a4, void (*a5)(double *), float a6, float a7)
{
  if (a3)
  {
    v10 = a2;
    v11 = a1 + 64;
    v12 = &a2[a3];
    v13 = a7 - a6;
    v14 = v13;
    v15 = a6;
    v16 = (1.0 / v13);
    v17 = (-a6 / v13);
    v18 = 0.0;
    v19 = 1.0 / (~a4 + a3);
    do
    {
      v27 = v18 * v14 + v15;
      v20 = (*(*v11 + 16))(v11, &v27);
      v27 = v20;
      if (a5)
      {
        a5(&v27);
        v20 = v27;
      }

      v21 = v20 * v16 + v17;
      if (v21 <= 1.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1.0;
      }

      v23 = v22 * 65535.0;
      v24 = v21 < 0.0;
      v25 = 0.0;
      if (!v24)
      {
        v25 = v23;
      }

      *v10++ = v25;
      v18 = v19 + v18;
    }

    while (v10 < v12);
    if (a4)
    {
      *v10 = *(v10 - 1);
    }
  }

  return a3 != 0;
}

uint64_t non-virtual thunk tocc::curve::aspline::color_t<double>::evaluateAsLUT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (*(a2 + 24) <= 0x3FFuLL)
  {
    if (*(a2 + 16))
    {
      operator new[]();
    }

    v7 = *(a2 + 8);
    if (v7)
    {
      memmove(0, *(a2 + 8), 0);
      *(a2 + 24) = 1024;
      MEMORY[0x2666E9ED0](v7, 0x1000C80BDFB0063);
    }

    else
    {
      *(a2 + 24) = 1024;
    }

    operator new[]();
  }

  *(a2 + 16) = 1024;
  v8 = *(a2 + 8);
  v9 = *(*(a1 + 64) + 24);
  v10 = a1 + 64;

  return v9(v10, v8, 1024, a3, a4, a5, a6);
}

double cc::curve::aspline::bezier_t<double,false>::evalNonPeriodic(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3) <= 3)
  {
    return *a2;
  }

  v5 = v2[1];
  result = *a2;
  if (*a2 < v5)
  {
    v6 = v2[2];
    v7 = v2[4] - v5;
    if (v7 != 0.0)
    {
      v8 = v2[5] - v6;
LABEL_10:
      v9 = v8 / v7;
      return v6 + (result - v5) * v9;
    }

    goto LABEL_11;
  }

  v5 = *(v3 - 16);
  if (result > v5)
  {
    v6 = *(v3 - 8);
    v7 = v5 - *(v3 - 40);
    if (v7 != 0.0)
    {
      v8 = v6 - *(v3 - 32);
      goto LABEL_10;
    }

LABEL_11:
    v9 = 0.0;
    return v6 + (result - v5) * v9;
  }

  v10 = (v3 - 24);
  if (v2 != (v3 - 24))
  {
    for (i = v2 + 6; ; i += 9)
    {
      v12 = v2[1];
      if (result >= v12)
      {
        v13 = i[4];
        if (result <= v13)
        {
          break;
        }
      }

      v2 += 9;
      if (v2 == v10)
      {
        return result;
      }
    }

    v14 = *(i - 2);
    v15 = i[1] * 3.0;
    v16 = v13 + v14 * 3.0 - v12 - v15;
    v17 = v12 * 3.0 + v14 * -6.0 + v15;
    v18 = v14 * 3.0 - v12 * 3.0;
    v19 = 0.0;
    while (1)
    {
      v20 = v19 * (v19 * v19);
      v21 = v12 + v19 * v18 + v19 * v19 * v17 + v20 * v16;
      if (v21 >= result)
      {
        break;
      }

      v19 = v19 + 0.05;
      if (v19 >= 1.05)
      {
        return result;
      }
    }

    v22 = v19 + -0.05;
    v23 = v22 * (v22 * v22);
    v24 = v12 + (v19 + -0.05) * v18 + v22 * v22 * v17 + v23 * v16;
    v25 = v2[2];
    v26 = *(i - 1);
    v27 = i[2] * 3.0;
    v28 = i[5] + v26 * 3.0 - v25 - v27;
    v29 = v25 * 3.0 + v26 * -6.0 + v27;
    v30 = v26 * 3.0 - v25 * 3.0;
    v31 = v25 + (v19 + -0.05) * v30 + v22 * v22 * v29 + v23 * v28;
    v32 = v25 + v19 * v30 + v19 * v19 * v29 + v20 * v28;
    v33 = v21 - v24;
    if (v21 - v24 >= 0.0)
    {
      v34 = v21 - v24;
    }

    else
    {
      v34 = -(v21 - v24);
    }

    v35 = 0.0;
    if (v34 >= 0.00000011920929)
    {
      v35 = (result - v24) / v33;
    }

    return v32 * v35 + v31 * (1.0 - v35);
  }

  return result;
}

uint64_t cc::curve::aspline::bezier_t<double,false>::~bezier_t(uint64_t a1)
{
  v3 = (a1 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

{
  v3 = (a1 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x2666E9F00](a1, 0xA1C40D2948F72);
}

uint64_t cc::curve::aspline::bezier_t<double,false>::evaluate(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = (a1 + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t non-virtual thunk tocc::curve::aspline::bezier_t<double,false>::~bezier_t(uint64_t a1)
{
  v1 = a1 - 32;
  v3 = (a1 - 24);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x2666E9F00](v1, 0xA1C40D2948F72);
}

uint64_t non-virtual thunk tocc::curve::aspline::bezier_t<double,false>::evaluate(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = (a1 + (v2 >> 1) - 32);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void HFixDV::HFixDV(HFixDV *this, float a2, float a3)
{
  HGNode::HGNode(this);
  v6 = 0;
  *v5 = &unk_2871D8A88;
  *(v5 + 408) = 0x4040000040000000;
  *(v5 + 416) = 257;
  *(v5 + 424) = 0;
  *(v5 + 432) = a2;
  *(v5 + 436) = a3;
  v7 = v5 + 448;
  do
  {
    v8 = 0;
    v9 = *(v7 + 16 * v6);
    v10 = HGColorMatrix::sRGBtoYCbCr[v6];
    do
    {
      v20 = v10;
      v11 = *(&v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3)));
      v21 = v9;
      *(&v21 & 0xFFFFFFFFFFFFFFF3 | (4 * (v8 & 3))) = v11;
      v9 = v21;
      ++v8;
    }

    while (v8 != 4);
    *(v7 + 16 * v6++) = v21;
  }

  while (v6 != 4);
  v12 = 0;
  v13 = v5 + 512;
  do
  {
    v14 = 0;
    v15 = *(v13 + 16 * v12);
    v16 = HGColorMatrix::YCbCrTosRGB[v12];
    do
    {
      v18 = v16;
      v17 = *(&v18 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3)));
      v19 = v15;
      *(&v19 & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3))) = v17;
      v15 = v19;
      ++v14;
    }

    while (v14 != 4);
    *(v13 + 16 * v12++) = v19;
  }

  while (v12 != 4);
}

HgcGamma *HFixDV::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  v4 = Input;
  if (Input)
  {
    (*(*Input + 16))(Input);
    v5 = (this + 424);
    v6 = *(this + 53);
    if (v6 == v4)
    {
      (*(*v4 + 24))(v4);
      goto LABEL_8;
    }
  }

  else
  {
    v5 = (this + 424);
    v6 = *(this + 53);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  *v5 = v4;
LABEL_8:
  if (*(this + 102) != 1.0)
  {
    v7 = HGObject::operator new(0x1A0uLL);
    HgcGamma::HgcGamma(v7);
    (*(*v7 + 96))(v7, 0, *(this + 102), *(this + 102), *(this + 102), 1.0);
    (*(*v7 + 120))(v7, 0, *v5);
    v8 = *v5;
    if (*v5 != v7)
    {
      if (v8)
      {
        (*(*v8 + 24))(v8);
      }

      *v5 = v7;
      (*(*v7 + 16))(v7);
    }

    (*(*v7 + 24))(v7);
  }

  if (*(this + 416) == 1)
  {
    v9 = HGObject::operator new(0x1F0uLL);
    HGColorMatrix::HGColorMatrix(v9);
  }

  v10 = *(this + 103);
  if (v10 != 0.0)
  {
    v11 = *(this + 108);
    v12 = *(this + 109);
    v13 = HGObject::operator new(0x220uLL);
    HGBlur::HGBlur(v13);
    (*(*v13 + 96))(v13, 0, v10 * v11, v10 * v12, 0.0, 0.0);
    (*(*v13 + 120))(v13, 0, *v5);
    v14 = HGObject::operator new(0x1A0uLL);
    HgcChannelBlur::HgcChannelBlur(v14);
    (*(*v14 + 120))(v14, 0, *v5);
    (*(*v14 + 120))(v14, 1, v13);
    (*(*v14 + 96))(v14, 0, 0.0, 1.0, 1.0, 0.0);
    v15 = *v5;
    if (*v5 != v14)
    {
      if (v15)
      {
        (*(*v15 + 24))(v15);
      }

      *v5 = v14;
      (*(*v14 + 16))(v14);
    }

    (*(*v14 + 24))(v14);
    (*(*v13 + 24))(v13);
  }

  if (*(this + 417) == 1)
  {
    v16 = HGObject::operator new(0x1F0uLL);
    HGColorMatrix::HGColorMatrix(v16);
  }

  if (*(this + 102) != 1.0)
  {
    v17 = HGObject::operator new(0x1A0uLL);
    HgcGamma::HgcGamma(v17);
    (*(*v17 + 96))(v17, 0, 1.0 / *(this + 102), 1.0 / *(this + 102), 1.0 / *(this + 102), 1.0);
    (*(*v17 + 120))(v17, 0, *v5);
    v18 = *v5;
    if (*v5 != v17)
    {
      if (v18)
      {
        (*(*v18 + 24))(v18);
      }

      *v5 = v17;
      (*(*v17 + 16))(v17);
    }

    (*(*v17 + 24))(v17);
  }

  return *v5;
}

void sub_25FA2AACC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HFixDV::setRGBToYCbCrMatrix(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result + 448;
  do
  {
    v4 = 0;
    v5 = *(v3 + 16 * v2);
    do
    {
      v6 = *(a2 + 16 * v2 + 4 * (v4 & 3));
      v7 = v5;
      *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))) = v6;
      v5 = v7;
      *(v3 + 16 * v2) = v7;
      ++v4;
    }

    while (v4 != 4);
    ++v2;
  }

  while (v2 != 4);
  return result;
}

uint64_t HFixDV::setYCbCrToRGBMatrix(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = result + 512;
  do
  {
    v4 = 0;
    v5 = *(v3 + 16 * v2);
    do
    {
      v6 = *(a2 + 16 * v2 + 4 * (v4 & 3));
      v7 = v5;
      *(&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v4 & 3))) = v6;
      v5 = v7;
      *(v3 + 16 * v2) = v7;
      ++v4;
    }

    while (v4 != 4);
    ++v2;
  }

  while (v2 != 4);
  return result;
}

void HFixDV::~HFixDV(HGNode *this)
{
  HFixDV::~HFixDV(this);

  HGObject::operator delete(v1);
}

{
  *this = &unk_2871D8A88;
  v2 = *(this + 53);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);
}

uint64_t desiredRGBToYCbCrMatrix(void *a1, uint64_t a2, uint64_t a3)
{
  result = [objc_msgSend(objc_msgSend(a1 apiForProtocol:{&unk_287359A98), "colorMatrixFromDesiredRGBToYCbCrAtTime:", a3), "matrix"}];
  for (i = 0; i != 4; ++i)
  {
    v6 = 0;
    v7 = *(a2 + 16 * i);
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 4;
      v10 = v9;
      v11 = v7;
      *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3))) = v10;
      v7 = v11;
      *(a2 + 16 * i) = v11;
      ++v6;
    }

    while (v6 != 4);
    result += 8;
  }

  return result;
}

uint64_t desiredYCbCrToRGBMatrix(void *a1, uint64_t a2, uint64_t a3)
{
  result = [objc_msgSend(objc_msgSend(a1 apiForProtocol:{&unk_287359A98), "colorMatrixFromYCbCrToDesiredRGBAtTime:", a3), "matrix"}];
  for (i = 0; i != 4; ++i)
  {
    v6 = 0;
    v7 = *(a2 + 16 * i);
    v8 = result;
    do
    {
      v9 = *v8;
      v8 += 4;
      v10 = v9;
      v11 = v7;
      *(&v11 & 0xFFFFFFFFFFFFFFF3 | (4 * (v6 & 3))) = v10;
      v7 = v11;
      *(a2 + 16 * i) = v11;
      ++v6;
    }

    while (v6 != 4);
    result += 8;
  }

  return result;
}

uint64_t OMHisto::calculateHistogram(uint64_t a1, int *a2, float *a3, float a4)
{
  v8 = [*(a1 + 120) pixelFormat];
  v9 = v8 != 0;
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  if (v8)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (v8)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = [*(a1 + 120) dataPtr];
  v14 = [*(a1 + 120) width];
  v15 = [*(a1 + 120) height];
  v16 = [*(a1 + 120) rowBytes] >> 2;
  v17 = 1.0 / a4;
  result = *(a1 + 88);
  if (((*(result + 8) - *result) & 0x3FFFFFFFCLL) != 0x100000)
  {
    if (v15 < 1)
    {
      goto LABEL_55;
    }

    v41 = 0;
    v42 = 4 * v16;
    v21 = 0.0;
    v22 = 0.0;
    while (v14 < 1)
    {
LABEL_53:
      ++v41;
      v13 += v42;
      if (v41 == v15)
      {
        goto LABEL_56;
      }
    }

    v43 = v14;
    v44 = 4 * v11;
    v45 = 4 * v12;
    v46 = 4 * v9;
    v47 = 4 * v10;
    while (1)
    {
      v48 = *(v13 + v47);
      v49 = v48;
      if (v48 >= 0.5 || v49 <= 0.1)
      {
        if (v48 <= 0.5 || v49 >= 0.9)
        {
          goto LABEL_52;
        }

        v56 = *(v13 + v44);
        v57.i32[0] = *(v13 + v45);
        v57.i32[1] = *(v13 + v46);
        v58 = vcvt_n_s32_f32(vmul_n_f32(v57, v17), 5uLL);
        v59 = vcvts_n_s32_f32(v17 * v56, 5uLL);
        v60 = vand_s8(vcgez_s32(v58), vshl_u32(vmin_s32(v58, 0x1F0000001FLL), 0xA00000005));
        if (v59 >= 31)
        {
          v59 = 31;
        }

        v54 = vadd_s32(v60, vdup_lane_s32(v60, 1)).u32[0] | v59 & ~(v59 >> 31);
        if (v56 > v21)
        {
          v21 = *(v13 + v44);
        }

        v55 = (a1 + 8);
      }

      else
      {
        v50.i32[0] = *(v13 + v45);
        v51 = vcvts_n_s32_f32(v17 * *(v13 + v44), 5uLL);
        if (v51 >= 31)
        {
          v51 = 31;
        }

        if (v50.f32[0] > v22)
        {
          v22 = *(v13 + v45);
        }

        v50.i32[1] = *(v13 + v46);
        v52 = vcvt_n_s32_f32(vmul_n_f32(v50, v17), 5uLL);
        v53 = vand_s8(vcgez_s32(v52), vshl_u32(vmin_s32(v52, 0x1F0000001FLL), 0xA00000005));
        v54 = vadd_s32(v53, vdup_lane_s32(v53, 1)).u32[0] | v51 & ~(v51 >> 31);
        v55 = (a1 + 48);
      }

      ++*(*v55 + 4 * v54);
LABEL_52:
      v47 += 16;
      v46 += 16;
      v45 += 16;
      v44 += 16;
      if (!--v43)
      {
        goto LABEL_53;
      }
    }
  }

  if (v15 >= 1)
  {
    v19 = 0;
    v20 = 4 * v16;
    v21 = 0.0;
    v22 = 0.0;
    while (v14 < 1)
    {
LABEL_31:
      ++v19;
      v13 += v20;
      if (v19 == v15)
      {
        goto LABEL_56;
      }
    }

    v23 = v14;
    v24 = 4 * v11;
    v25 = 4 * v12;
    v26 = 4 * v9;
    v27 = 4 * v10;
    while (1)
    {
      v28 = *(v13 + v27);
      v29 = v28;
      if (v28 >= 0.5 || v29 <= 0.1)
      {
        if (v28 <= 0.5 || v29 >= 0.9)
        {
          goto LABEL_30;
        }

        v36 = *(v13 + v24);
        v37.i32[0] = *(v13 + v25);
        v37.i32[1] = *(v13 + v26);
        v38 = vcvt_n_s32_f32(vmul_n_f32(v37, v17), 6uLL);
        v39 = vcvts_n_s32_f32(v17 * v36, 6uLL);
        v40 = vand_s8(vcgez_s32(v38), vshl_u32(vmin_s32(v38, 0x3F0000003FLL), 0xC00000006));
        if (v39 >= 63)
        {
          v39 = 63;
        }

        v34 = vadd_s32(v40, vdup_lane_s32(v40, 1)).u32[0] | v39 & ~(v39 >> 31);
        if (v36 > v21)
        {
          v21 = *(v13 + v24);
        }

        v35 = (a1 + 8);
      }

      else
      {
        v30.i32[0] = *(v13 + v25);
        v31 = vcvts_n_s32_f32(v17 * *(v13 + v24), 6uLL);
        if (v31 >= 63)
        {
          v31 = 63;
        }

        if (v30.f32[0] > v22)
        {
          v22 = *(v13 + v25);
        }

        v30.i32[1] = *(v13 + v26);
        v32 = vcvt_n_s32_f32(vmul_n_f32(v30, v17), 6uLL);
        v33 = vand_s8(vcgez_s32(v32), vshl_u32(vmin_s32(v32, 0x3F0000003FLL), 0xC00000006));
        v34 = vadd_s32(v33, vdup_lane_s32(v33, 1)).u32[0] | v31 & ~(v31 >> 31);
        v35 = (a1 + 48);
      }

      ++*(*v35 + 4 * v34);
LABEL_30:
      v27 += 16;
      v26 += 16;
      v25 += 16;
      v24 += 16;
      if (!--v23)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_55:
  v22 = 0.0;
  v21 = 0.0;
LABEL_56:
  v61 = (a1 + 8);
  v62 = *(a1 + 36);
  if (v62 == -1)
  {
    v63 = *(a1 + 32);
    if (v63 < 1)
    {
      v62 = 0;
      v65 = 0;
    }

    else
    {
      v64 = 0;
      v65 = 0;
      v62 = 0;
      do
      {
        if (*&(*v61)[4 * v64] > v62)
        {
          v62 = *&(*v61)[4 * v64];
          v65 = v64;
        }

        ++v64;
      }

      while (v63 != v64);
    }

    *(a1 + 36) = v62;
    *(a1 + 40) = v65;
  }

  v66 = (a1 + 48);
  v67 = *(a1 + 76);
  if (v67 == -1)
  {
    v68 = *(a1 + 72);
    if (v68 < 1)
    {
      v67 = 0;
      v70 = 0;
    }

    else
    {
      v69 = 0;
      v70 = 0;
      v67 = 0;
      do
      {
        if (*(*v66 + 4 * v69) > v67)
        {
          v67 = *(*v66 + 4 * v69);
          v70 = v69;
        }

        ++v69;
      }

      while (v68 != v69);
    }

    *(a1 + 76) = v67;
    *(a1 + 80) = v70;
  }

  if (v62 > v67)
  {
    v71 = 0;
    v72 = 32;
    if (result == v61)
    {
      v22 = v21;
      goto LABEL_81;
    }

    v73 = 16;
    v22 = v21;
    goto LABEL_79;
  }

  v71 = 1;
  v72 = 72;
  if (result != v66)
  {
    v73 = 56;
    v61 = (a1 + 48);
LABEL_79:
    v74 = result;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(result, *v61, *(a1 + v73), (*(a1 + v73) - *v61) >> 2);
    result = v74;
  }

LABEL_81:
  v75 = *(a1 + v72);
  *(result + 32) = *(a1 + v72 + 8);
  *(result + 24) = v75;
  *a2 = v71;
  *a3 = v22;
  return result;
}

void ColorHisto::calculateCenterSamples(ColorHisto *a1, const void **a2, float a3)
{
  v6 = ColorHisto::calculateMaxHistogramIdx(a1);
  if (*(a1 + 6) == 0x40000)
  {
    v14 = 10;
  }

  else
  {
    v14 = 7;
  }

  if (*(a1 + 6) == 0x40000)
  {
    v15 = -4;
  }

  else
  {
    v15 = -8;
  }

  if (*(a1 + 6) == 0x40000)
  {
    v16 = 2;
  }

  else
  {
    v16 = 4;
  }

  if (*(a1 + 6) == 0x40000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (*(a1 + 6) == 0x40000)
  {
    v18 = 252;
  }

  else
  {
    v18 = 248;
  }

  if (*(a1 + 6) == 0x40000)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  v20 = ((v6 << v19) & v18 | v16) / 255.0;
  v21 = ((v6 >> v17) & v18 | v16) / 255.0;
  v22 = ((v6 >> v14) & v15 | v16) / 255.0;
  OMColorUtil::getRGBToYCbCrMatrix(1, v7, v8, v9, v10, v11, v12, v13, v40);
  v33 = v22;
  v34 = v21;
  v35 = v20;
  v36 = 1065353216;
  operator*(v40, &v33, &v37);
  proj(&v37, &v38, v23);
  v32 = 0;
  if (*(a1 + 6) >= 1)
  {
    v24 = 0;
    v25 = a3 * 0.2;
    v26 = a3 * 0.04;
    do
    {
      v33 = ((v24 >> v14) & v15 | v16) / 255.0;
      v34 = ((v24 >> v17) & v18 | v16) / 255.0;
      v35 = ((v24 << v19) & v18 | v16) / 255.0;
      v36 = 1065353216;
      operator*(v40, &v33, &v37);
      proj(&v37, &v30, v27);
      v28 = v32;
      if (*(*a1 + 4 * v32) >= 11 && vabds_f32(v30, v38) < v25)
      {
        v29 = vsub_f32(v31, v39);
        if (sqrtf(vaddv_f32(vmul_f32(v29, v29))) < v26)
        {
          std::vector<int>::push_back[abi:ne200100](a2, &v32);
          v28 = v32;
        }
      }

      v24 = v28 + 1;
      v32 = v24;
    }

    while (v24 < *(a1 + 6));
  }
}

uint64_t ColorHisto::calculateMaxHistogramIdx(ColorHisto *this)
{
  if (*(this + 7) != -1)
  {
    return *(this + 8);
  }

  v2 = *(this + 6);
  if (v2 < 1)
  {
    v4 = 0;
    v1 = 0;
  }

  else
  {
    v3 = 0;
    LODWORD(v1) = 0;
    v4 = 0;
    do
    {
      if (*(*this + 4 * v3) <= v4)
      {
        v1 = v1;
      }

      else
      {
        v4 = *(*this + 4 * v3);
        v1 = v3;
      }

      ++v3;
    }

    while (v2 != v3);
  }

  *(this + 7) = v4;
  *(this + 8) = v1;
  return v1;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
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
}

void ColorHisto::calculateCenterSamplesHDR(ColorHisto *a1, const void **a2, float a3)
{
  v6 = ColorHisto::calculateMaxHistogramIdx(a1);
  if (*(a1 + 6) == 0x40000)
  {
    v14 = 10;
  }

  else
  {
    v14 = 7;
  }

  if (*(a1 + 6) == 0x40000)
  {
    v15 = -4;
  }

  else
  {
    v15 = -8;
  }

  if (*(a1 + 6) == 0x40000)
  {
    v16 = 2;
  }

  else
  {
    v16 = 4;
  }

  if (*(a1 + 6) == 0x40000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (*(a1 + 6) == 0x40000)
  {
    v18 = 252;
  }

  else
  {
    v18 = 248;
  }

  if (*(a1 + 6) == 0x40000)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  v20 = ((v6 << v19) & v18 | v16) / 255.0;
  v21 = ((v6 >> v17) & v18 | v16) / 255.0;
  v22 = ((v6 >> v14) & v15 | v16) / 255.0;
  OMColorUtil::getRGBToYCbCrMatrix(1, v7, v8, v9, v10, v11, v12, v13, v41);
  v34 = v22;
  v35 = v21;
  v36 = v20;
  v37 = 1065353216;
  operator*(v41, &v34, &v38);
  proj(&v38, &v39, v23);
  v24 = sqrtf((v39.f32[1] * v39.f32[1]) + (v40 * v40));
  if (a3 <= 0.9)
  {
    v26 = 0.08;
    v27 = a3 * 0.08;
  }

  else
  {
    v25 = (a3 + -0.9) * 3.0;
    if (v25 > 1.0)
    {
      v25 = 1.0;
    }

    v26 = (v25 * -0.06) + 0.08;
    v27 = ((((v24 - v26) + -0.072) / 0.9) * a3) + (((((v24 - v26) + -0.072) / 0.9) * -0.9) + 0.072);
  }

  v33 = 0;
  if (*(a1 + 6) >= 1)
  {
    v28 = 0;
    do
    {
      v34 = ((v28 >> v14) & v15 | v16) / 255.0;
      v35 = ((v28 >> v17) & v18 | v16) / 255.0;
      v36 = ((v28 << v19) & v18 | v16) / 255.0;
      v37 = 1065353216;
      operator*(v41, &v34, &v38);
      proj(&v38, &v31, v29);
      if (*(*a1 + 4 * v33) >= 11)
      {
        v30 = sqrtf((v31.f32[1] * v31.f32[1]) + (v32 * v32));
        if (v30 >= v24 || v30 > v26 && sqrtf(((v31.f32[1] - v39.f32[1]) * (v31.f32[1] - v39.f32[1])) + ((v32 - v40) * (v32 - v40))) < v27)
        {
          std::vector<int>::push_back[abi:ne200100](a2, &v33);
        }
      }

      v28 = v33 + 1;
      v33 = v28;
    }

    while (v28 < *(a1 + 6));
  }
}

void sub_25FA2BFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA2CB2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  (*(*v26 + 24))(v26);
  if (v24)
  {
    (*(*v24 + 24))(v24);
  }

  (*(*v23 + 24))(v23);
  (*(*v25 + 24))(v25);
  (*(*v22 + 24))(v22);
  (*(*a16 + 24))(a16);
  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  _Unwind_Resume(a1);
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
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

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void OMHisto::OMHisto(OMHisto *this, int a2, FxBitmap *a3)
{
  *this = &unk_2871D8D38;
  v6 = this + 8;
  v7 = a2;
  std::vector<int>::vector[abi:ne200100](this + 1, a2);
  *(this + 8) = a2;
  *(this + 36) = -1;
  std::vector<int>::vector[abi:ne200100](this + 6, v7);
  *(this + 12) = 0;
  *(this + 18) = a2;
  *(this + 76) = -1;
  *(this + 11) = v6;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = a3;
  v8 = a3;
}

void sub_25FA2D150(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[13] = v5;
    operator delete(v5);
  }

  v6 = v1[6];
  if (v6)
  {
    v1[7] = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    v1[2] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void OMHisto_32x32x32::~OMHisto_32x32x32(id *this)
{
  OMHisto::~OMHisto(this);

  JUMPOUT(0x2666E9F00);
}

void OMHisto::~OMHisto(id *this)
{
  *this = &unk_2871D8D38;

  v2 = this[12];
  if (v2)
  {
    this[13] = v2;
    operator delete(v2);
  }

  v3 = this[6];
  if (v3)
  {
    this[7] = v3;
    operator delete(v3);
  }

  v4 = this[1];
  if (v4)
  {
    this[2] = v4;
    operator delete(v4);
  }
}

uint64_t *HGRef<anonymous namespace::_RgbToSatCbCrEvaluator>::~HGRef(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*(v2 + 8) + 24))();
  }

  return a1;
}

void sub_25FA2EC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  (*(*v21 + 24))(v21);
  if (a21)
  {
    (*(*a21 + 24))(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::UploadCurveAndSetParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0.0;
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[4] - v10;
  v13.n128_u64[0] = 0;
  if (v12 != 0.0)
  {
    v13.n128_f64[0] = (v8[5] - v11) / v12;
    v13.n128_f32[0] = v13.n128_f64[0];
  }

  v14 = v10;
  v15 = v11;
  (*(*a2 + 96))(a2, a4, v14, v15, v13, 0.0);
  v17.n128_u64[0] = *(v9 - 16);
  v18.n128_u64[0] = *(v9 - 8);
  v19.n128_f64[0] = v17.n128_f64[0] - *(v9 - 40);
  if (v19.n128_f64[0] != 0.0)
  {
    v19.n128_f64[0] = (v18.n128_f64[0] - *(v9 - 32)) / v19.n128_f64[0];
    v7 = v19.n128_f64[0];
  }

  v17.n128_f32[0] = v17.n128_f64[0];
  v18.n128_f32[0] = v18.n128_f64[0];
  v20 = *(*a2 + 96);
  v16.n128_u64[0] = 0;
  v19.n128_f32[0] = v7;

  return v20(a2, (a4 + 1), v17, v18, v19, v16);
}

uint64_t ___ZN12_GLOBAL__N_113PAEUseACEScctEv_block_invoke_0()
{
  result = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  return result;
}

void anonymous namespace::_Evaluator::~_Evaluator(_anonymous_namespace_::_Evaluator *this)
{
  *this = &unk_2871D8DB0;
  v2 = *(this + 6);
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C8052888210);
  }

  v3 = *(this + 7);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8052888210);
  }

  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8052888210);
  }
}

{

  JUMPOUT(0x2666E9F00);
}

float anonymous namespace::_Evaluator::evaluate(uint64_t a1, __int128 *a2, _OWORD *a3)
{
  v3 = *(a1 + 40);
  v4 = *a2;
  LODWORD(v5) = HIDWORD(*a2);
  LODWORD(v6) = *(a2 + 1);
  if (v3)
  {
    if (v3 == 2)
    {
      v7 = &cc::matrix::rgb_to_YCbCr2020;
    }

    else
    {
      v7 = &cc::matrix::rgb_to_YCbCr709;
    }
  }

  else
  {
    v7 = &cc::matrix::rgb_to_YCbCr601;
  }

  if (v5 >= v6)
  {
    LODWORD(v8) = *(a2 + 1);
  }

  else
  {
    LODWORD(v8) = HIDWORD(*a2);
  }

  if (v5 <= v6)
  {
    LODWORD(v9) = *(a2 + 1);
  }

  else
  {
    LODWORD(v9) = HIDWORD(*a2);
  }

  if (*&v4 >= v8)
  {
    v10 = v8;
  }

  else
  {
    LODWORD(v10) = *a2;
  }

  if (*&v4 > v9)
  {
    LODWORD(v9) = *a2;
  }

  v11 = v10 + v9;
  v12 = (v10 + v9) * 0.5;
  v13.i64[0] = 0;
  v13.i64[1] = LODWORD(v12);
  v14 = v9 - v10;
  v15 = (v9 - v10);
  if ((v9 - v10) < 0.0)
  {
    v15 = -v15;
  }

  if (v15 >= 0.00000011920929)
  {
    if (v12 > 0.5)
    {
      v16 = 2.0 - v9 - v10;
      v11 = v16;
    }

    v17 = -v11;
    if (v11 >= 0.0)
    {
      v17 = v11;
    }

    if (v17 < 0.00000011921)
    {
      v11 = 0.00000011921;
    }

    v18 = v14 / v11;
    v19 = *&v4 - v9;
    if ((*&v4 - v9) < 0.0)
    {
      v19 = -(*&v4 - v9);
    }

    if (v19 >= 0.00000011921)
    {
      v24 = v5 - v9;
      if ((v5 - v9) < 0.0)
      {
        v24 = -(v5 - v9);
      }

      v25 = *&v4 - v10;
      if ((*&v4 - v10) < 0.0)
      {
        v25 = -(*&v4 - v10);
      }

      v21 = v25 < 0.00000011921;
      v26 = ((v9 - *&v4) / v14);
      v27 = 5.0 - v26;
      if (v21)
      {
        v27 = ((v9 - v5) / v14) + 3.0;
      }

      v28 = v6 - v10;
      if (v28 < 0.0)
      {
        v28 = -v28;
      }

      v23 = 3.0 - ((v9 - v6) / v14);
      if (v28 < 0.00000011921)
      {
        v23 = v26 + 1.0;
      }

      if (v24 >= 0.00000011921)
      {
        v23 = v27;
      }
    }

    else
    {
      v20 = v5 - v10;
      if (v20 < 0.0)
      {
        v20 = -v20;
      }

      v21 = v20 < 0.00000011921;
      v22 = 1.0 - ((v9 - v5) / v14);
      v23 = ((v9 - v6) / v14) + 5.0;
      if (!v21)
      {
        v23 = v22;
      }
    }

    v29 = v23;
    v30 = v29 / 6.0;
    v13.i64[0] = __PAIR64__(LODWORD(v18), LODWORD(v30));
    if (v30 <= 1.0)
    {
      if (v30 >= 0.0)
      {
        goto LABEL_52;
      }

      v31 = (v30 + -v30) + 1.0;
    }

    else
    {
      v31 = v30 - v30;
    }

    *v13.i32 = v31;
  }

LABEL_52:
  v32 = ((*(a1 + 72) - 1) * *v13.i32);
  v33 = *(*(a1 + 48) + 4 * v32);
  *v13.i32 = v33;
  if (v33 <= 1.0)
  {
    if (v33 >= 0.0)
    {
      goto LABEL_57;
    }

    v34 = (v33 + -v33) + 1.0;
  }

  else
  {
    v34 = v33 - v33;
  }

  *v13.i32 = v34;
LABEL_57:
  if (*v13.i32 <= 1.0)
  {
    if (*v13.i32 >= 0.0)
    {
      v35 = *v13.i32;
    }

    else
    {
      v35 = (*v13.i32 + -*v13.i32) + 1.0;
    }
  }

  else
  {
    v35 = *v13.i32 - *v13.i32;
  }

  v36 = *v7;
  v37 = v7[1];
  v38 = v7[2];
  v39 = *&v13.i32[2];
  v40 = (*&v13.i32[2] + *&v13.i32[1]) - (*&v13.i32[2] * *&v13.i32[1]);
  if (*&v13.i32[2] <= 0.5)
  {
    v41 = (*&v13.i32[1] + 1.0) * v39;
    v40 = v41;
  }

  if (*&v13.i32[1] >= 0.0)
  {
    v42 = *&v13.i32[1];
  }

  else
  {
    v42 = -*&v13.i32[1];
  }

  if (v42 < 0.00000011920929)
  {
    v43 = vdupq_laneq_s32(v13, 2);
    v43.i32[3] = 0;
    goto LABEL_84;
  }

  v44 = v35 * 6.0;
  v45 = v44;
  v46 = v39 + v39 - v40;
  v47 = (v44 - floor(v44)) * (v40 - v46);
  v48 = v47 + v46;
  v49 = v40 - v47;
  if (v45 <= 2)
  {
    if (v45)
    {
      if (v45 == 1)
      {
        v43.i32[3] = 0;
        v43.f32[0] = v40 - v47;
        v43.f32[1] = v40;
        goto LABEL_81;
      }

      if (v45 == 2)
      {
        v43.i64[0] = __PAIR64__(LODWORD(v40), LODWORD(v46));
        v43.i64[1] = LODWORD(v48);
        goto LABEL_84;
      }
    }

LABEL_78:
    v43.i32[3] = 0;
    v43.i64[0] = __PAIR64__(LODWORD(v48), LODWORD(v40));
LABEL_81:
    v43.f32[2] = v46;
    goto LABEL_84;
  }

  switch(v45)
  {
    case 3:
      v43.i32[3] = 0;
      v43.i64[0] = __PAIR64__(LODWORD(v49), LODWORD(v46));
      break;
    case 4:
      v43.i32[3] = 0;
      v43.f32[0] = v47 + v46;
      v43.f32[1] = v46;
      break;
    case 5:
      v43.i64[0] = __PAIR64__(LODWORD(v46), LODWORD(v40));
      v43.i64[1] = LODWORD(v49);
      goto LABEL_84;
    default:
      goto LABEL_78;
  }

  v43.f32[2] = v40;
LABEL_84:
  v50 = &cc::matrix::rgb_to_YCbCr601;
  v51 = &cc::matrix::rgb_to_YCbCr709;
  if (v3 == 2)
  {
    v51 = &cc::matrix::rgb_to_YCbCr2020;
  }

  if (v3)
  {
    v50 = v51;
  }

  v52 = *(*(a1 + 56) + 4 * v32);
  v54 = &cc::matrix::YCbCr709_to_rgb;
  if (v3 == 2)
  {
    v54 = &cc::matrix::YCbCr2020_to_rgb;
  }

  if (v3)
  {
    v55 = v54;
  }

  else
  {
    v55 = &cc::matrix::YCbCr601_to_rgb;
  }

  v56 = ((*&v4 * v36) + (v5 * v37)) + (v6 * v38);
  v57 = ((*v50 * v43.f32[0]) + vmuls_lane_f32(v50[1], *v43.f32, 1)) + vmuls_lane_f32(v50[2], v43, 2);
  if (!*(a1 + 44))
  {
    v56 = v57;
  }

  v53 = *(*(a1 + 64) + 4 * v32);
  v58 = (v56 * v53) + ((1.0 - v53) * 0.0);
  v59 = (1.0 - v52) * 0.0;
  v60 = ((((v50[6] * v43.f32[0]) + vmuls_lane_f32(v50[7], *v43.f32, 1)) + vmuls_lane_f32(v50[8], v43, 2)) * v52) + v59;
  v61 = ((((v50[3] * v43.f32[0]) + vmuls_lane_f32(v50[4], *v43.f32, 1)) + vmuls_lane_f32(v50[5], v43, 2)) * v52) + v59;
  *&v62 = ((v58 * *v55) + (v61 * v55[1])) + (v60 * v55[2]);
  *&v63 = ((v58 * v55[3]) + (v61 * v55[4])) + (v60 * v55[5]);
  v64 = (v58 * v55[6]) + (v61 * v55[7]);
  v65 = v60 * v55[8];
  *&v66 = __PAIR64__(v63, v62);
  result = v64 + v65;
  *(&v66 + 1) = LODWORD(result);
  *a3 = v66;
  return result;
}

double anonymous namespace::SatBytesEval(_anonymous_namespace_ *this, double *a2)
{
  result = *this + 0.5;
  *this = result;
  return result;
}

void anonymous namespace::_RgbToSatCbCrEvaluator::~_RgbToSatCbCrEvaluator(_anonymous_namespace_::_RgbToSatCbCrEvaluator *this)
{
  *this = &unk_2871D8E58;
  v1 = (this + 8);
  *(this + 1) = &unk_2871D8E98;
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGObject::~HGObject(v1);
}

{

  HGObject::operator delete(v1);
}

void non-virtual thunk toanonymous namespace::_RgbToSatCbCrEvaluator::~_RgbToSatCbCrEvaluator(_anonymous_namespace_::_RgbToSatCbCrEvaluator *this)
{
}

{

  HGObject::operator delete(v1);
}

void anonymous namespace::_RgbToSatCbCrEvaluator::_BitmapStorageObject::~_BitmapStorageObject(_anonymous_namespace_::_RgbToSatCbCrEvaluator::_BitmapStorageObject *this)
{
  *this = &unk_2871D8F08;
  v2 = *(this + 2);
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C8077774924);
  }

  HGObject::~HGObject(this);
}

{

  HGObject::operator delete(v1);
}

void anonymous namespace::HgSatCurves::~HgSatCurves(HGNode *this)
{
  HgcSatCurves::~HgcSatCurves(this);

  HGObject::operator delete(v1);
}

uint64_t anonymous namespace::HgSatCurves::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t anonymous namespace::HgSatCurves::GetROI(_anonymous_namespace_::HgSatCurves *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (!a3)
  {
    return *&a4.var0;
  }

  if (a3 <= 3)
  {
    v4 = 1024;
    v5 = 1;
    return HGRectMake4i(0, 0, v4, v5);
  }

  if (a3 == 4)
  {
    v4 = 289;
    v5 = 17;
    return HGRectMake4i(0, 0, v4, v5);
  }

  return 0;
}

void sub_25FA2FEBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  HGObject::operator delete(v11);
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(a1);
}

void HGrowShrinkMatte::HGrowShrinkMatte(HGrowShrinkMatte *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871D91C0;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
}

void HGrowShrinkMatte::~HGrowShrinkMatte(HGNode *this)
{
  *this = &unk_2871D91C0;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);
}

{
  HGrowShrinkMatte::~HGrowShrinkMatte(this);

  HGObject::operator delete(v1);
}

uint64_t HGrowShrinkMatte::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  v4 = Input;
  if (Input)
  {
    (*(*Input + 16))(Input);
    v5 = this + 416;
    v6 = *(this + 52);
    if (v6 == v4)
    {
      (*(*v4 + 24))(v4);
      v6 = *v5;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = this + 416;
    v6 = *(this + 52);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  *v5 = v4;
  v6 = v4;
LABEL_8:
  v7 = *(this + 102);
  if (v7 == 0.0)
  {
    return v6;
  }

  if (v6)
  {
    (*(*v6 + 16))(v6);
  }

  v8 = (*(*this + 152))(this, 0);
  v9 = fabsf(v7);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v8 & 2;
    do
    {
      v12 = HGObject::operator new(0x1B0uLL);
      HGaussianBlur::HGaussianBlur(v12);
      HGaussianBlur::init(v12, 1.283, 1.0, 1.0, 0, 0, 0);
      (*(*v12 + 120))(v12, 0, v6);
      v13 = HGObject::operator new(0x1A0uLL);
      HgcShrinkGrowMatte::HgcShrinkGrowMatte(v13);
      if (*(this + 102) >= 0.0)
      {
        v14.n128_f32[0] = 0.0;
      }

      else
      {
        v14.n128_f32[0] = -1.0;
      }

      (*(*v13 + 96))(v13, 0, 2.0, v14, 0.0, 0.0);
      (*(*v13 + 120))(v13, 0, v12);
      if (!v10 && v11)
      {
        (*(*v13 + 136))(v13, 0, 2);
      }

      if (v6 != v13)
      {
        if (v6)
        {
          (*(*v6 + 24))(v6);
        }

        v6 = v13;
        (*(*v13 + 16))(v13);
      }

      (*(*v13 + 24))(v13);
      (*(*v12 + 24))(v12);
      ++v10;
    }

    while (v9 != v10);
  }

  v15 = v9 - v9;
  if (v15 > 0.0)
  {
    v16 = HGObject::operator new(0x1B0uLL);
    HGaussianBlur::HGaussianBlur(v16);
    HGaussianBlur::init(v16, 1.283, 1.0, 1.0, 0, 0, 0);
    (*(*v16 + 120))(v16, 0, v6);
    v17 = v15 + 1.0;
    v18 = *(this + 102);
    v19 = 1.0 - v17;
    if (v18 >= 0.0)
    {
      v19 = 0.0;
    }

    if (v18 <= 0.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = HGObject::operator new(0x1A0uLL);
    HgcShrinkGrowMatte::HgcShrinkGrowMatte(v21);
    (*(*v21 + 96))(v21, 0, v17, v20, 0.0, 0.0);
    (*(*v21 + 120))(v21, 0, v16);
    if (v6 != v21)
    {
      if (v6)
      {
        (*(*v6 + 24))(v6);
      }

      v6 = v21;
      (*(*v21 + 16))(v21);
    }

    (*(*v21 + 24))(v21);
    (*(*v16 + 24))(v16);
  }

  result = *v5;
  if (*v5 == v6)
  {
    if (!v6)
    {
      return result;
    }

    goto LABEL_42;
  }

  if (result)
  {
    (*(*result + 24))(result);
  }

  *v5 = v6;
  if (v6)
  {
    (*(*v6 + 16))(v6);
LABEL_42:
    (*(*v6 + 24))(v6);
    return *v5;
  }

  return 0;
}

void sub_25FA30684(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  (*(*v2 + 24))(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

void HErode::HErode(HErode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871D9410;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
}

void HErode::~HErode(HGNode *this)
{
  *this = &unk_2871D9410;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);
}

{
  HErode::~HErode(this);

  HGObject::operator delete(v1);
}

HgcErode *HErode::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  v4 = Input;
  if (Input)
  {
    (*(*Input + 16))(Input);
    v5 = (this + 416);
    v6 = *(this + 52);
    if (v6 == v4)
    {
      (*(*v4 + 24))(v4);
      goto LABEL_8;
    }
  }

  else
  {
    v5 = (this + 416);
    v6 = *(this + 52);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  *v5 = v4;
LABEL_8:
  if (*(this + 102) > 0.0)
  {
    v7 = HGObject::operator new(0x1B0uLL);
    HGaussianBlur::HGaussianBlur(v7);
    HGaussianBlur::init(v7, *(this + 102) * 4.0, 1.0, 1.0, 0, 0, 0);
    (*(*v7 + 120))(v7, 0, *v5);
    v8 = HGObject::operator new(0x1A0uLL);
    HgcErode::HgcErode(v8);
    (*(*v8 + 120))(v8, 0, *v5);
    (*(*v8 + 120))(v8, 1, v7);
    v9 = *v5;
    if (*v5 != v8)
    {
      if (v9)
      {
        (*(*v9 + 24))(v9);
      }

      *v5 = v8;
      (*(*v8 + 16))(v8);
    }

    (*(*v8 + 24))(v8);
    (*(*v7 + 24))(v7);
  }

  return *v5;
}

void sub_25FA30BA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA31134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  (*(*v11 + 24))(v11);
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t HDroplet::GetDOD(HDroplet *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v9 = *(this + 86);
  v10 = fabsf(v9);
  v11 = HGRectMake4i(-v10, -v10, v10, v10);
  v4 = HGRectGrow(v6, v5, v11);
  v13 = v12;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v14 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v4, v13, v14);
  }

  return v4;
}

unint64_t HDroplet::GetROI(HDroplet *this, HGRenderer *a2, int a3, HGRect a4)
{
  v53 = a4;
  if (a3)
  {
    var1 = a4.var1;
  }

  else
  {
    v6 = *(this + 85);
    v7 = 1.0 / v6;
    v8 = *(this + 86);
    v9 = -*(this + 84) / v6;
    Interval::pixelToFloat(&v53.var0, v51.f64);
    v10 = *(this + 57);
    v45.i64[0] = *(this + 52);
    v45.i64[1] = v45.i64[0];
    v46.i64[0] = v10;
    v46.i64[1] = v10;
    PCVector2<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator*=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v51.f64, v45.i64);
    v11 = *(this + 59);
    v45.i64[0] = *(this + 55);
    v45.i64[1] = v45.i64[0];
    v46.i64[0] = v11;
    v46.i64[1] = v11;
    PCVector2<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator+=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v51.f64, v45.i64);
    v50[0] = v51;
    v50[1] = v52;
    Interval::length<double>(v51.f64, v49.i64);
    v45 = v49;
    v46 = v49;
    v47 = v49;
    v48 = v49;
    Interval::normalized<double>(&v51, &v41);
    v51 = v41;
    v52 = v42;
    v41.f64[0] = v7;
    v41.f64[1] = v7;
    PCVector4<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator*=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v45.i64, v41.f64);
    v41.f64[0] = v9;
    v41.f64[1] = v9;
    *v42.i64 = v9;
    *&v42.i64[1] = v9;
    *v43.i64 = v9;
    *&v43.i64[1] = v9;
    *v44.i64 = v9;
    *&v44.i64[1] = v9;
    PCVector4<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator+=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v45.i64, v41.f64);
    v12 = fegetround();
    fesetround(0x400000);
    v41.f64[0] = 0.0;
    fesetround(v12);
    v13 = fegetround();
    fesetround(0x400000);
    v41.f64[0] = 1.0;
    fesetround(v13);
    v14 = fegetround();
    fesetround(0x400000);
    v41.f64[0] = 2.0;
    fesetround(v14);
    v15 = fegetround();
    fesetround(0x400000);
    v41.f64[0] = 3.0;
    fesetround(v15);
    v37.f64[0] = -0.0;
    v37.f64[1] = 0.0;
    *v38.i64 = --1.0;
    v38.i64[1] = 0x3FF0000000000000;
    *v39.i64 = --2.0;
    v39.i64[1] = 0x4000000000000000;
    *v40.i64 = --3.0;
    v40.i64[1] = 0x4008000000000000;
    operator-<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v45.i64, v37.f64, v41.f64);
    v45 = v41;
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v35 = v41;
    v36[0] = v42;
    v36[1] = v43;
    v36[2] = v44;
    Interval::smoothstep(&v35, &v37, 0.0, 1.0);
    v45 = v37;
    v46 = v38;
    v47 = v39;
    v48 = v40;
    v16 = fegetround();
    fesetround(0x400000);
    v37.f64[0] = 1.0;
    fesetround(v16);
    v17 = fegetround();
    fesetround(0x400000);
    v37.f64[0] = -2.0;
    fesetround(v17);
    v18 = fegetround();
    fesetround(0x400000);
    v37.f64[0] = 1.0;
    fesetround(v18);
    v19 = fegetround();
    fesetround(0x400000);
    v37.f64[0] = 0.0;
    fesetround(v19);
    v37.f64[0] = --1.0;
    v37.f64[1] = 1.0;
    *v38.i64 = -2.0;
    v38.i64[1] = 0xC000000000000000;
    *v39.i64 = --1.0;
    v39.i64[1] = 0x3FF0000000000000;
    *v40.i64 = -0.0;
    v40.i64[1] = 0;
    PCVector4<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator*=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v45.i64, v37.f64);
    v20 = fegetround();
    fesetround(0x400000);
    v37.f64[0] = 0.0;
    fesetround(v20);
    v21 = fegetround();
    fesetround(0x400000);
    v37.f64[0] = 1.0;
    fesetround(v21);
    v22 = fegetround();
    fesetround(0x400000);
    v37.f64[0] = -1.0;
    fesetround(v22);
    v23 = fegetround();
    fesetround(0x400000);
    v37.f64[0] = 0.0;
    fesetround(v23);
    v37.f64[0] = -0.0;
    v37.f64[1] = 0.0;
    *v38.i64 = --1.0;
    v38.i64[1] = 0x3FF0000000000000;
    *v39.i64 = -1.0;
    v39.i64[1] = 0xBFF0000000000000;
    *v40.i64 = -0.0;
    v40.i64[1] = 0;
    PCVector4<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator+=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v45.i64, v37.f64);
    *&v24.f64[1] = v45.i64[1];
    v24.f64[0] = 0.0;
    v25 = vandq_s8(v45, vcgtq_f64(v24, v45.u64[0]));
    *&v26.f64[0] = v46.i64[0];
    *&v26.f64[1] = v25.i64[1];
    *&v24.f64[0] = v25.i64[0];
    *&v24.f64[1] = v46.i64[1];
    v27 = vbslq_s8(vcgtq_f64(v24, v26), v46, v25);
    *&v26.f64[0] = v47.i64[0];
    *&v26.f64[1] = v27.i64[1];
    *&v24.f64[0] = v27.i64[0];
    *&v24.f64[1] = v47.i64[1];
    v28 = vbslq_s8(vcgtq_f64(v24, v26), v47, v27);
    *&v26.f64[1] = v28.i64[1];
    v26.f64[0] = 0.0;
    v35 = vandq_s8(v28, vcgtq_f64(v26, v28.u64[0]));
    v36[0] = v35;
    boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v35.i64, v51.f64, v34);
    boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v36, v52.i64, v54.i64);
    v37 = v34[0];
    v38 = v54;
    v33[0] = v8;
    v33[1] = v8;
    boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v37.f64, v33, v35.i64);
    boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v38.i64, v33, v54.i64);
    v34[0] = v35;
    v34[1] = v54;
    operator+<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v34, v50, v35.i64);
    v37 = v35;
    v38 = v36[0];
    v29 = *(this + 73);
    v35.i64[0] = *(this + 68);
    v35.i64[1] = v35.i64[0];
    *&v36[0] = v29;
    *(&v36[0] + 1) = v29;
    PCVector2<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator*=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v37.f64, v35.i64);
    v30 = *(this + 75);
    v35.i64[0] = *(this + 71);
    v35.i64[1] = v35.i64[0];
    *&v36[0] = v30;
    *(&v36[0] + 1) = v30;
    PCVector2<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator+=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v37.f64, v35.i64);
    v31 = Interval::floatToPixel(v37.f64);
    a4.var0 = (v31 + -1.0);
    var1 = (SHIDWORD(v31) + -1.0);
  }

  return a4.var0 | (var1 << 32);
}

double *PCVector2<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator*=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(double *a1, double *a2)
{
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(a1, a2, &v5);
  *a1 = v5;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(a1 + 2, a2 + 2, &v5);
  *(a1 + 1) = v5;
  return a1;
}

double *PCVector2<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator+=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(double *a1, double *a2)
{
  v4 = fegetround();
  fesetround(0x400000);
  v5 = a1[1] + a2[1];
  *a1 = -(-*a1 - *a2);
  a1[1] = v5;
  fesetround(v4);
  v6 = fegetround();
  fesetround(0x400000);
  v7 = a1[3] + a2[3];
  a1[2] = -(-a1[2] - a2[2]);
  a1[3] = v7;
  fesetround(v6);
  return a1;
}

uint64_t Interval::length<double>@<X0>(double *a1@<X0>, double *a2@<X8>)
{
  v2 = a1;
  v4 = a1[1];
  v11[0] = *a1;
  v11[1] = v4;
  v10[0] = v11[0];
  v10[1] = v4;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v11, v10, v12);
  v5 = v2[3];
  v8[0] = v2[2];
  v8[1] = v5;
  v7[0] = v8[0];
  v7[1] = v5;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v8, v7, v9);
  LODWORD(v2) = fegetround();
  fesetround(0x400000);
  v13[0] = -v12[0] - v9[0];
  v13[0] = -v13[0];
  v13[1] = v12[1] + v9[1];
  fesetround(v2);
  return boost::numeric::sqrt<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v13, a2);
}

int8x16_t Interval::normalized<double>@<Q0>(float64x2_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = vextq_s8(v4, v4, 8uLL);
  if (a1->f64[0] > 0.0)
  {
    if (v4.f64[0] > 0.0)
    {
      v6 = vmulq_f64(v3, v3);
      v7 = vmulq_f64(v4, v4);
      v8 = vextq_s8(v7, v7, 8uLL);
      goto LABEL_4;
    }

    v14 = vmulq_f64(v3, v3);
    v15 = sqrt(v14.f64[0] + v4.f64[0] * v4.f64[0]);
    if (v4.f64[1] < 0.0)
    {
      v16 = vzip2q_s64(v3, v4);
      v9.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v16, v16)));
      v16.f64[0] = v15;
      v16.f64[1] = v9.f64[0];
      v10 = vdivq_f64(v3, v16);
      if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v10, 1), v10))).u8[0])
      {
        boost::numeric::interval_lib::exception_create_empty::operator()();
      }

      v9.f64[1] = v15;
      goto LABEL_15;
    }

    v45 = v15;
    v48 = v5;
    v24 = sqrt(vaddq_f64(v14, vdupq_laneq_s64(vmulq_f64(v4, v4), 1)).f64[0]);
    v25 = v3.f64[0] / v15;
    v44 = v24;
    v26 = v3.f64[0] / v24;
    if (v25 <= v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    if (v27 > 1.0)
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    v35 = fegetround();
    fesetround(0x400000);
    v36.f64[0] = --v27;
    v36.f64[1] = 1.0;
    v50 = v36;
    fesetround(v35);
    v37.f64[0] = v44;
    v37.f64[1] = v45;
    v38 = v48;
LABEL_50:
    v13 = vdivq_f64(v38, v37);
    if (vmovn_s64(vmvnq_s8(vcgeq_f64(v13, vdupq_laneq_s64(v13, 1)))).u8[0])
    {
      goto LABEL_51;
    }

LABEL_52:
    v10 = v50;
    goto LABEL_53;
  }

  if (v3.f64[1] >= 0.0)
  {
    if (v4.f64[0] <= 0.0)
    {
      if (v4.f64[1] >= 0.0)
      {
        v39 = fegetround();
        fesetround(0x400000);
        fesetround(v39);
        v40 = fegetround();
        fesetround(0x400000);
        fesetround(v40);
        v10.f64[0] = -1.0;
        v13.f64[0] = 1.0;
        v10.f64[1] = 1.0;
        v13.f64[1] = -1.0;
        goto LABEL_53;
      }

      v28 = vsqrtq_f64(vaddq_f64(vmulq_f64(v3, v3), vdupq_laneq_s64(vmulq_f64(v4, v4), 1)));
      v29 = vdivq_f64(v3, v28);
      if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v29, 1), v29))).u8[0])
      {
        boost::numeric::interval_lib::exception_create_empty::operator()();
      }

      v50 = v29;
      v30 = vdivq_f64(vdupq_laneq_s64(v4, 1), v28);
      if (v30.f64[0] <= v30.f64[1])
      {
        v31 = v30.f64[0];
      }

      else
      {
        v31 = v30.f64[1];
      }

      if (v31 >= -1.0)
      {
        v32 = fegetround();
        fesetround(0x400000);
        v47 = *&v31;
        fesetround(v32);
        v22 = -1.0;
        goto LABEL_41;
      }
    }

    else
    {
      v17 = vsqrtq_f64(vaddq_f64(vmulq_f64(v3, v3), vdupq_lane_s64(COERCE__INT64(v4.f64[0] * v4.f64[0]), 0)));
      v18 = vdivq_f64(v3, v17);
      if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v18, 1), v18))).u8[0])
      {
        boost::numeric::interval_lib::exception_create_empty::operator()();
      }

      v50 = v18;
      v19 = vdivq_f64(vdupq_lane_s64(*&v4.f64[0], 0), v17);
      if (v19.f64[0] <= v19.f64[1])
      {
        v20 = v19.f64[0];
      }

      else
      {
        v20 = v19.f64[1];
      }

      if (v20 <= 1.0)
      {
        v21 = fegetround();
        fesetround(0x400000);
        v47 = 0x3FF0000000000000;
        fesetround(v21);
        v22 = --v20;
LABEL_41:
        *&v13.f64[0] = v47;
        v13.f64[1] = v22;
        goto LABEL_52;
      }
    }

LABEL_51:
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

  if (v4.f64[0] > 0.0)
  {
    v11 = vsqrtq_f64(vaddq_f64(vmulq_f64(v3, v3), vmulq_f64(v4, v4)));
    v10 = vdivq_f64(v3, v11);
    if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v10, 1), v10))).u8[0])
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    v12 = vdivq_f64(v4, v11);
    v13 = vextq_s8(v12, v12, 8uLL);
    goto LABEL_16;
  }

  v23 = vmulq_f64(v4, v4);
  v8 = vextq_s8(v23, v23, 8uLL);
  if (v4.f64[1] >= 0.0)
  {
    v46 = vsqrtq_f64(vaddq_f64(vdupq_lane_s64(COERCE__INT64(v3.f64[1] * v3.f64[1]), 0), v8));
    v49 = v5;
    v33 = vdivq_f64(vdupq_laneq_s64(v3, 1), v46);
    if (v33.f64[1] >= v33.f64[0])
    {
      v34 = v33.f64[1];
    }

    else
    {
      v34 = v33.f64[0];
    }

    if (v34 < -1.0)
    {
      boost::numeric::interval_lib::exception_create_empty::operator()();
    }

    v41 = fegetround();
    fesetround(0x400000);
    v42.f64[0] = -1.0;
    v42.f64[1] = v34;
    v50 = v42;
    fesetround(v41);
    v37 = v46;
    v38 = v49;
    goto LABEL_50;
  }

  v6 = vmulq_f64(v3, v3);
LABEL_4:
  v9 = vsqrtq_f64(vaddq_f64(v6, v8));
  v10 = vdivq_f64(v3, v9);
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v10, 1), v10))).u8[0])
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

LABEL_15:
  v13 = vdivq_f64(v5, v9);
  v12 = vdupq_laneq_s64(v13, 1);
LABEL_16:
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(v13, v12))).u8[0])
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

LABEL_53:
  result = vextq_s8(v13, v13, 8uLL);
  *a2 = v10;
  *(a2 + 16) = result;
  return result;
}

double *PCVector4<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator*=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(double *a1, double *a2)
{
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(a1, a2, &v5);
  *a1 = v5;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(a1 + 2, a2, &v5);
  *(a1 + 1) = v5;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(a1 + 4, a2, &v5);
  *(a1 + 2) = v5;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(a1 + 6, a2, &v5);
  *(a1 + 3) = v5;
  return a1;
}

{
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(a1, a2, &v5);
  *a1 = v5;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(a1 + 2, a2 + 2, &v5);
  *(a1 + 1) = v5;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(a1 + 4, a2 + 4, &v5);
  *(a1 + 2) = v5;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(a1 + 6, a2 + 6, &v5);
  *(a1 + 3) = v5;
  return a1;
}

double *PCVector4<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator+=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(double *a1, double *a2)
{
  v4 = fegetround();
  fesetround(0x400000);
  v5 = a1[1] + a2[1];
  *a1 = -(-*a1 - *a2);
  a1[1] = v5;
  fesetround(v4);
  v6 = fegetround();
  fesetround(0x400000);
  v7 = a1[3] + a2[3];
  a1[2] = -(-a1[2] - a2[2]);
  a1[3] = v7;
  fesetround(v6);
  v8 = fegetround();
  fesetround(0x400000);
  v9 = a1[5] + a2[5];
  a1[4] = -(-a1[4] - a2[4]);
  a1[5] = v9;
  fesetround(v8);
  v10 = fegetround();
  fesetround(0x400000);
  v11 = a1[7] + a2[7];
  a1[6] = -(-a1[6] - a2[6]);
  a1[7] = v11;
  fesetround(v10);
  return a1;
}

double operator-<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v6 = fegetround();
  fesetround(0x400000);
  v7 = a2[1] - *a1;
  v8 = a1[1] - *a2;
  fesetround(v6);
  v9 = fegetround();
  fesetround(0x400000);
  v10 = a2[3] - a1[2];
  v11 = a1[3] - a2[2];
  fesetround(v9);
  v12 = fegetround();
  fesetround(0x400000);
  v13 = a2[5] - a1[4];
  v14 = a1[5] - a2[4];
  fesetround(v12);
  v15 = fegetround();
  fesetround(0x400000);
  v16 = a2[7] - a1[6];
  v17 = a1[7] - a2[6];
  fesetround(v15);
  result = -v16;
  *a3 = -v7;
  a3[1] = v8;
  a3[2] = -v10;
  a3[3] = v11;
  a3[4] = -v13;
  a3[5] = v14;
  a3[6] = -v16;
  a3[7] = v17;
  return result;
}

{
  v6 = fegetround();
  fesetround(0x400000);
  v7 = a2[1] - *a1;
  v8 = a1[1] - *a2;
  fesetround(v6);
  v9 = fegetround();
  fesetround(0x400000);
  v10 = a2[3] - a1[2];
  v11 = a1[3] - a2[2];
  fesetround(v9);
  result = -v10;
  *a3 = -v7;
  a3[1] = v8;
  a3[2] = -v10;
  a3[3] = v11;
  return result;
}

double Interval::smoothstep@<D0>(float64x2_t *a1@<X0>, _OWORD *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  *&v5 = a3;
  *&v6 = (a4 - a3);
  v7 = vdupq_lane_s64(v5, 0);
  v8 = vdupq_lane_s64(v6, 0);
  v9 = vdivq_f64(vsubq_f64(*a1, v7), v8);
  __asm { FMOV            V7.2D, #1.0 }

  v15 = vbicq_s8(vbslq_s8(vcgtq_f64(v9, _Q7), _Q7, v9), vcltzq_f64(v9));
  v16 = vdivq_f64(vsubq_f64(a1[1], v7), v8);
  v17 = vbicq_s8(vbslq_s8(vcgtq_f64(v16, _Q7), _Q7, v16), vcltzq_f64(v16));
  v18 = vdivq_f64(vsubq_f64(a1[2], v7), v8);
  v19 = vbslq_s8(vcgtq_f64(v18, _Q7), _Q7, v18);
  v20 = vcltzq_f64(v18);
  v21 = vdivq_f64(vsubq_f64(a1[3], v7), v8);
  v22 = vcgtq_f64(v21, _Q7);
  v38 = v15;
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v15, 1), v15))).u8[0])
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

  v23 = vcltzq_f64(v21);
  v24 = vbslq_s8(v22, _Q7, v21);
  v25 = vbicq_s8(v19, v20);
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v17, 1), v17))).u8[0])
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

  v26 = vbicq_s8(v24, v23);
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v25, 1), v25))).u8[0])
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

  if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v26, 1), v26))).u8[0])
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

  v53 = v38;
  v54 = v17;
  v55 = v25;
  v56 = v26;
  v27 = fegetround();
  fesetround(0x400000);
  fesetround(v27);
  v28 = fegetround();
  fesetround(0x400000);
  fesetround(v28);
  v29 = fegetround();
  fesetround(0x400000);
  fesetround(v29);
  v30 = fegetround();
  fesetround(0x400000);
  fesetround(v30);
  v52[0] = --3.0;
  v52[1] = 3.0;
  v52[2] = --3.0;
  v52[3] = 3.0;
  v52[4] = --3.0;
  v52[5] = 3.0;
  v52[6] = --3.0;
  v52[7] = 3.0;
  v31 = fegetround();
  fesetround(0x400000);
  fesetround(v31);
  v32 = fegetround();
  fesetround(0x400000);
  fesetround(v32);
  v33 = fegetround();
  fesetround(0x400000);
  fesetround(v33);
  v34 = fegetround();
  fesetround(0x400000);
  fesetround(v34);
  v48[0] = --2.0;
  v48[1] = 2.0;
  v49[0] = --2.0;
  v49[1] = 2.0;
  v50[0] = --2.0;
  v50[1] = 2.0;
  v51[0] = --2.0;
  v51[1] = 2.0;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v53.f64, v53.f64, &v40);
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v54.f64, v54.f64, v39);
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v55.f64, v55.f64, &v60);
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v56.f64, v56.f64, &v59);
  v44 = v40;
  v45 = v39[0];
  v46 = v60;
  v47 = v59;
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v48, v53.f64, &v40);
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v49, v54.f64, &v60);
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v50, v55.f64, &v59);
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v51, v56.f64, &v58);
  v39[0] = v40;
  v39[1] = v60;
  v39[2] = v59;
  v39[3] = v58;
  operator-<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v52, v39, &v40);
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(&v44, &v40, &v60);
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(&v45, &v41, &v59);
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(&v46, &v42, &v58);
  boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(&v47, &v43, &v57);
  v35 = v59;
  *a2 = v60;
  a2[1] = v35;
  v37 = v57;
  result = *&v58;
  a2[2] = v58;
  a2[3] = v37;
  return result;
}

double operator+<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v6 = fegetround();
  fesetround(0x400000);
  v7 = -*a1 - *a2;
  v8 = a1[1] + a2[1];
  fesetround(v6);
  v9 = fegetround();
  fesetround(0x400000);
  v10 = -a1[2] - a2[2];
  v11 = a1[3] + a2[3];
  fesetround(v9);
  result = -v10;
  *a3 = -v7;
  a3[1] = v8;
  a3[2] = -v10;
  a3[3] = v11;
  return result;
}

uint64_t HDroplet::GetOutput(HDroplet *this, HGRenderer *a2)
{
  if ((*(*a2 + 304))(a2))
  {
    (*(*this + 136))(this, 0, 2);
  }

  return HgcDroplet::GetOutput(this, a2);
}

uint64_t HDroplet::SetOutputToImage(double *a1, double *a2)
{
  v2 = a1 + 52;
  if (a1 + 52 != a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v2[i] = v4[i];
      }

      ++v3;
      v2 += 4;
      v4 += 4;
    }

    while (v3 != 4);
  }

  v6 = *a2;
  v7 = a2[5];
  v8 = a2[3];
  v9 = a2[7];
  return (*(*a1 + 96))(a1, 0, v6, v7, v8, v9);
}

uint64_t HDroplet::SetImageToInput(double *a1, double *a2)
{
  v2 = a1 + 68;
  if (a1 + 68 != a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v2[i] = v4[i];
      }

      ++v3;
      v2 += 4;
      v4 += 4;
    }

    while (v3 != 4);
  }

  v6 = *a2;
  v7 = a2[5];
  v8 = a2[3];
  v9 = a2[7];
  return (*(*a1 + 96))(a1, 1, v6, v7, v8, v9);
}

uint64_t HDroplet::SetBiasThicknessAndScale(HDroplet *this, double a2, double a3, double a4)
{
  *(this + 84) = a2;
  *(this + 85) = a3;
  *(this + 86) = a4;
  v4 = 1.0 / a3;
  v5 = -a2 / a3;
  v6 = a4;
  return (*(*this + 96))(this, 2, v4, v5, v6, 0.0);
}

void HDroplet::~HDroplet(HGNode *this)
{
  HgcDroplet::~HgcDroplet(this);

  HGObject::operator delete(v1);
}

uint64_t boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>@<X0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v6 = fegetround();
  fesetround(0x400000);
  v8 = *a1;
  v7 = a1[1];
  if (*a1 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v17 = *a2;
      v9 = a2[1];
      if (*a2 < 0.0)
      {
        v18 = -(v17 * v7);
        if (v9 <= 0.0)
        {
          v25 = -v18;
          v26 = v8 * v9;
          goto LABEL_30;
        }

        v28 = v18;
        goto LABEL_23;
      }

      if (v9 > 0.0)
      {
        v22 = -(v17 * v8);
        goto LABEL_22;
      }
    }

LABEL_27:
    *a3 = 0.0;
    a3[1] = 0.0;
    return fesetround(v6);
  }

  v10 = *a2;
  v9 = a2[1];
  if (v7 <= 0.0)
  {
    if (v10 < 0.0)
    {
      v19 = -v9;
      v20 = v8 * v10;
      if (v9 <= 0.0)
      {
        v21 = v7 * v19;
      }

      else
      {
        v21 = v8 * v19;
      }

      v25 = -v21;
      v29 = v20;
      goto LABEL_33;
    }

    if (v9 > 0.0)
    {
      v23 = --(v9 * v8);
      v24 = v7 * v10;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v10 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v22 = -(v9 * v8);
LABEL_22:
      v28 = v22;
LABEL_23:
      v23 = -v28;
      v24 = v7 * v9;
LABEL_26:
      *a3 = v23;
      a3[1] = v24;
      return fesetround(v6);
    }

    goto LABEL_27;
  }

  if (v9 <= 0.0)
  {
    v25 = --(v10 * v7);
    v26 = v8 * v10;
LABEL_30:
    v29 = v26;
LABEL_33:
    *a3 = v25;
    a3[1] = v29;
    return fesetround(v6);
  }

  v11 = -(v9 * v8);
  v12 = -(v10 * v7);
  v13 = v8 * v10;
  v14 = v7 * v9;
  if (v12 <= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  v16 = -v15;
  if (v13 >= v14)
  {
    v14 = v13;
  }

  *a3 = v16;
  a3[1] = v14;
  return fesetround(v6);
}

uint64_t boost::numeric::sqrt<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>@<X0>(double *a1@<X0>, double *a2@<X8>)
{
  if (a1[1] < 0.0)
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

  v4 = fegetround();
  fesetround(0x400000);
  v5 = 0.0;
  if (*a1 > 0.0)
  {
    fesetround(0x800000);
    v5 = sqrt(*a1);
    fesetround(0x400000);
  }

  v7 = sqrt(a1[1]);
  *a2 = v5;
  a2[1] = v7;
  return fesetround(v4);
}

uint64_t HConcentricCirclesGradient::GetROI(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

void HConcentricCirclesGradient::~HConcentricCirclesGradient(HGNode *this)
{
  HgcConcentricCirclesGradient::~HgcConcentricCirclesGradient(this);

  HGObject::operator delete(v1);
}

unint64_t HSlicedScale::GetDOD(HSlicedScale *this, HGRenderer *a2, int a3, HGRect a4)
{
  v60 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    LODWORD(v4) = 0;
    LODWORD(v5) = 0;
  }

  else
  {
    (*(*this + 104))(this, 5, &v57, *&a4.var0, *&a4.var2);
    v51 = v57;
    v7 = v58;
    v52 = v59;
    (*(*this + 104))(this, 6, &v57);
    v49 = v57;
    v50 = v59;
    v46 = v7.f32[1] * 0.0;
    v48 = v58;
    (*(*this + 104))(this, 7, &v57);
    v47 = v57;
    v56 = v59;
    v54 = v58;
    (*(*this + 104))(this, 8, &v57);
    v53 = v57;
    v55 = v59;
    v45 = v58;
    (*(*this + 104))(this, 10, &v57);
    v43 = v58.f32[0];
    v44 = v57;
    (*(*this + 104))(this, 9, &v57);
    v9 = v57;
    v8 = v58.f32[0];
    (*(*this + 104))(this, 0, &v57);
    v11 = v57;
    v10 = v58.f32[0];
    (*(*this + 104))(this, 1, &v57);
    v12 = v57;
    (*(*this + 104))(this, 2, &v57);
    v13 = v57;
    (*(*this + 104))(this, 3, &v57);
    v14 = v57;
    (*(*this + 104))(this, 4, &v57);
    v15 = v57;
    (*(*this + 104))(this, 11, &v57);
    if (v12 <= (0.5 - v57))
    {
      v16 = v12;
    }

    else
    {
      v16 = 0.5 - v57;
    }

    if (v14 <= (0.5 - v57))
    {
      v17 = v14;
    }

    else
    {
      v17 = 0.5 - v57;
    }

    if (v13 >= (v57 + -0.5))
    {
      v18 = v13;
    }

    else
    {
      v18 = v57 + -0.5;
    }

    if (v15 >= (v57 + -0.5))
    {
      v19 = v15;
    }

    else
    {
      v19 = v57 + -0.5;
    }

    v22.f32[0] = *(this + 104);
    v20 = *(this + 105);
    v21 = *(this + 106);
    v22.i32[1] = 0;
    v23 = vmul_f32(v48, COERCE_UNSIGNED_INT(*(this + 107)));
    v24 = (v47 * ((v52 + (v46 + ((v51 * v22.f32[0]) + (v7.f32[0] * v20)))) / v9)) - (v18 - (v11 * v18));
    v25 = (((v50 + (v23.f32[1] + ((v49 * v22.f32[0]) + (v20 * v48.f32[0])))) / v8) * v45.f32[0]) - (v19 - (v10 * v19));
    if (v10 <= v57)
    {
      v25 = v43 * v25;
    }

    v26 = ((v10 * v17) - v17) + (((v50 + (v23.f32[1] + ((v49 * v21) + v23.f32[0]))) / v8) * v45.f32[0]);
    if (v10 <= v57)
    {
      v26 = v43 * v26;
    }

    if (v11 <= v57)
    {
      v27 = v44 * v24;
    }

    else
    {
      v27 = v24;
    }

    v28 = v51 * (v9 * v27);
    v29 = (v8 * v25) * v48.f32[0];
    v22.f32[0] = (v8 * v26) * v48.f32[0];
    v30 = vmul_f32(v54, v22);
    v31 = v56 + (v30.f32[1] + ((v47 * v28) + (v29 * v54.f32[0])));
    v32 = vmul_f32(v45, v22);
    v33 = v55 + (v32.f32[1] + ((v53 * v28) + (v29 * v45.f32[0])));
    v34 = ((v11 * v16) - v16) + (v47 * ((v52 + (v46 + ((v51 * v21) + (v7.f32[0] * *(this + 107))))) / v9));
    if (v11 <= v57)
    {
      v34 = v44 * v34;
    }

    v4 = HGRectMake4i(vcvtmd_s64_f64(v31 + -1.0 + 0.0000001), vcvtmd_s64_f64(v33 + -1.0 + 0.0000001), vcvtpd_s64_f64((v56 + (v30.f32[1] + ((v47 * (v51 * (v9 * v34))) + v30.f32[0]))) + 1.0), vcvtpd_s64_f64((v55 + (v32.f32[1] + ((v53 * (v51 * (v9 * v34))) + v32.f32[0]))) + 1.0));
    v5 = HIDWORD(v4);
    if ((v4 - 0x7FFFFFFF) < 3 || (v35 - 0x7FFFFFFF) < 3 || v5 == 0x7FFFFFFF || SHIDWORD(v4) < -2147483646 || HIDWORD(v35) == 0x7FFFFFFF || SHIDWORD(v35) < -2147483646)
    {
      LODWORD(v4) = 0;
      LODWORD(v5) = 0;
    }
  }

  return v4 | (v5 << 32);
}

unint64_t HSlicedScale::GetROI(HSlicedScale *this, HGRenderer *a2, int a3, HGRect a4)
{
  v77 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    LODWORD(v4) = 0;
    LODWORD(v5) = 0;
    return v4 | (v5 << 32);
  }

  var2 = a4.var2;
  var0 = a4.var0;
  var3 = a4.var3;
  var1 = a4.var1;
  (*(*this + 104))(this, 5, &v74);
  v63 = v76;
  v65 = var1;
  v73 = v74;
  v66 = v74 * var0;
  v62 = v75;
  (*(*this + 104))(this, 6, &v74);
  v61 = v74;
  v64 = v75.f32[1];
  v59 = v76;
  v60 = v75.f32[0];
  (*(*this + 104))(this, 7, &v74);
  v58 = v74;
  v68 = v75.f32[1];
  v71 = v75.f32[0];
  v72 = v76;
  (*(*this + 104))(this, 8, &v74);
  v11 = v75;
  v69 = v74;
  v70 = v76;
  (*(*this + 104))(this, 10, &v74);
  v56 = v75.f32[0];
  v57 = v74;
  (*(*this + 104))(this, 9, &v74);
  v12 = v74;
  v13 = v75.f32[0];
  (*(*this + 104))(this, 0, &v74);
  v15 = v74;
  v14 = v75.f32[0];
  (*(*this + 104))(this, 1, &v74);
  v16 = v74;
  (*(*this + 104))(this, 2, &v74);
  v17 = v74;
  (*(*this + 104))(this, 3, &v74);
  v18 = v74;
  (*(*this + 104))(this, 4, &v74);
  v19 = v74;
  (*(*this + 104))(this, 11, &v74);
  v20 = 0.5 - v74;
  if (v16 <= (0.5 - v74))
  {
    v21 = v16;
  }

  else
  {
    v21 = 0.5 - v74;
  }

  if (v18 <= v20)
  {
    v20 = v18;
  }

  if (v17 >= (v74 + -0.5))
  {
    v22 = v17;
  }

  else
  {
    v22 = v74 + -0.5;
  }

  if (v19 >= (v74 + -0.5))
  {
    v23 = v19;
  }

  else
  {
    v23 = v74 + -0.5;
  }

  v28 = vmul_f32(v62, LODWORD(v65));
  v24 = (v58 * ((v63 + ((v66 + v28.f32[0]) + v28.f32[1])) / v12)) / v57;
  v25 = (v11.f32[0] * ((v59 + (((v61 * var0) + (v60 * v65)) + (v64 * 0.0))) / v13)) / v56;
  v26 = v15 * v21;
  v67 = v15;
  v27 = v15 * v22;
  v28.f32[0] = v14 * v20;
  v29 = v14 * v23;
  v30 = v22 - (v15 * v22);
  if (v24 >= (v15 * v21))
  {
    v31 = v24 - (v26 - v21);
  }

  else
  {
    if (v24 > v27)
    {
      v31 = 0.0;
      v32 = v73;
      v33 = v71;
      v34 = v69;
      v35 = v11.f32[0];
      if (v24 < v26)
      {
        v31 = v24 / v67;
      }

      goto LABEL_21;
    }

    v31 = v24 + v30;
  }

  v32 = v73;
  v33 = v71;
  v34 = v69;
  v35 = v11.f32[0];
LABEL_21:
  v36 = var2;
  v37 = var3;
  v38 = v23 - v29;
  if (v25 >= v28.f32[0])
  {
    v39 = v25 - (v28.f32[0] - v20);
  }

  else if (v25 <= v29)
  {
    v39 = v25 + v38;
  }

  else
  {
    v39 = 0.0;
    if (v25 < v28.f32[0])
    {
      v39 = v25 / v14;
    }
  }

  v40 = v32 * (v12 * v31);
  v41 = v60 * (v13 * v39);
  v42 = (v68 * 0.0) + ((v58 * v40) + (v33 * v41));
  v43 = (v11.f32[1] * 0.0) + ((v34 * v40) + (v35 * v41));
  v44 = (v58 * ((v63 + (((v32 * v36) + (v37 * v62.f32[0])) + v28.f32[1])) / v12)) / v57;
  v45 = (v35 * ((v59 + (((v61 * v36) + (v60 * v37)) + (v64 * 0.0))) / v13)) / v56;
  if (v44 >= v26)
  {
    v46 = v44 - (v26 - v21);
  }

  else if (v44 <= v27)
  {
    v46 = v44 + v30;
  }

  else if (v44 < v26)
  {
    v46 = v44 / v67;
  }

  else
  {
    v46 = 0.0;
  }

  if (v45 >= v28.f32[0])
  {
    v47 = v45 - (v28.f32[0] - v20);
  }

  else if (v45 <= v29)
  {
    v47 = v45 + v38;
  }

  else
  {
    v47 = 0.0;
    if (v45 < v28.f32[0])
    {
      v47 = v45 / v14;
    }
  }

  v4 = HGRectMake4i(vcvtmd_s64_f64((v72 + v42) + -1.0 + 0.0000001), vcvtmd_s64_f64((v70 + v43) + -1.0 + 0.0000001), vcvtpd_s64_f64((v72 + ((v68 * 0.0) + ((v58 * (v32 * (v12 * v46))) + (v33 * (v60 * (v13 * v47)))))) + 1.0), vcvtpd_s64_f64((v70 + ((v11.f32[1] * 0.0) + ((v34 * (v32 * (v12 * v46))) + (v35 * (v60 * (v13 * v47)))))) + 1.0));
  v5 = HIDWORD(v4);
  if ((v4 - 0x7FFFFFFF) < 3 || (v48 - 0x7FFFFFFF) < 3 || v5 == 0x7FFFFFFF || SHIDWORD(v4) < -2147483646 || HIDWORD(v48) == 0x7FFFFFFF || SHIDWORD(v48) < -2147483646)
  {
    LODWORD(v4) = 0;
    LODWORD(v5) = 0;
  }

  return v4 | (v5 << 32);
}

void HSlicedScale::~HSlicedScale(HGNode *this)
{
  HgcSlicedScale::~HgcSlicedScale(this);

  HGObject::operator delete(v1);
}

void sub_25FA33F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HGObject::operator delete(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25FA34858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a17)
  {
    (*(*a17 + 24))(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA3502C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v10 + 24))(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25FA35664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  HGObject::operator delete(v11);
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(a1);
}

void sub_25FA369DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  HGObject::operator delete(v29);
  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  _Unwind_Resume(a1);
}

void sub_25FA37434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  (*(*v14 + 24))(v14);
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  _Unwind_Resume(a1);
}

CGColorSpace **convertRGBColor(double *a1, double *a2, double *a3)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  v9 = PCGetNCLCColorSpace(&kPCNCLC_Rec2020);
  PCColor::PCColor(&v14, v6, v7, v8, v9);
  v13 = 0;
  v12 = 0.0;
  v10 = PCGetNCLCColorSpace(&kPCNCLC_Rec709);
  PCColor::getRGB(&v14, &v13 + 1, &v13, &v12, v10);
  *a1 = *(&v13 + 1);
  *a2 = *&v13;
  *a3 = v12;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v14.var1._obj);
}

void sub_25FA38368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  HGObject::operator delete(v24);
  (*(*v23 + 24))(v23);
  (*(*v22 + 24))(v22);
  if (v22)
  {
    (*(*v22 + 24))(v22);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25FA38C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  (*(*v11 + 24))(v11);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_25FA39B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  if (v18)
  {
    (*(*v18 + 24))(v18);
  }

  (*(*v17 + 24))(v17);
  if (a17)
  {
    (*(*a17 + 24))(a17);
  }

  _Unwind_Resume(a1);
}

void sub_25FA3A090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *v10 = &unk_2871D9E68;
  *(v10 + 32) = &unk_2871D9EA8;
  a10 = (v10 + 80);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_25FA3BCB4(_Unwind_Exception *a1)
{
  *(v3 - 152) = v2;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100]((v3 - 152));
  *(v3 - 152) = v1;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100]((v3 - 152));
  _Unwind_Resume(a1);
}

uint64_t cc::curve::aspline::offsetcolor_t<double>::~offsetcolor_t(uint64_t a1)
{
  *a1 = &unk_2871D9E68;
  *(a1 + 32) = &unk_2871D9EA8;
  v3 = (a1 + 80);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

{
  *a1 = &unk_2871D9E68;
  *(a1 + 32) = &unk_2871D9EA8;
  v3 = (a1 + 80);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (a1 + 8);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return MEMORY[0x2666E9F00](a1, 0x10A1C4008CDC881);
}

double *anonymous namespace::NewCurve@<X0>(double a1@<D0>, double a2@<D1>, double a3@<D2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  v6 = (a4 + 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *a4 = &unk_2871D9E68;
  *(a4 + 32) = &unk_2871D9EA8;
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  *(a4 + 80) = 0;
  v7 = (a4 + 80);
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = &unk_2871D89F0;
  *(a4 + 104) = &unk_2871D8A18;
  *(a4 + 112) = cc::curve::aspline::bezier_t<double,false>::evalNonPeriodic;
  *(a4 + 120) = 0;
  v62 = 0uLL;
  v61 = &unk_2871D0EF8;
  std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100]((a4 + 8), &v61);
  v61 = &unk_2871D0EF8;
  v62 = xmmword_2603426F0;
  result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](v6, &v61);
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
  if (v11 <= 1)
  {
    return std::vector<cc::point_t<double,false,false>>::resize((a4 + 80), 4uLL);
  }

  if (v11 <= 0x5555555555555554)
  {
    v12 = v10 - 24;
    if (v10 - 24 == v9)
    {
      v13 = v10 - 24;
    }

    else
    {
      v13 = v10 - 48;
    }

    v62 = 0uLL;
    v61 = &unk_2871D0EF8;
    result = std::vector<cc::point_t<double,false,false>>::resize((a4 + 80), ((v10 - v9) >> 3) - 2);
    v14 = *v6;
    if (*v6 != v12)
    {
      v15 = 0;
      v16 = 0;
      v17 = (*v7 + 32);
      v18 = *v6;
      do
      {
        v19 = v14 + v16;
        v20 = *(v14 + v16 + 32);
        v21 = *(v14 + v16 + 40);
        v22 = *(v14 + v16 + 8);
        v23 = vcgtq_f64(v22, v20);
        v24 = vsubq_f64(v20, v22);
        v25 = vbslq_s8(v23, vnegq_f64(v24), v24);
        v62 = v25;
        if (v25.f64[0] < 0.0)
        {
          v25.f64[0] = -v25.f64[0];
        }

        v25.f64[0] = v25.f64[0] * 0.3334;
        *(v17 - 3) = *(v19 + 8);
        if (v15)
        {
          v26 = *(v19 - 8);
          v27 = v20.f64[0] - *(v19 - 16);
          v28 = -v27;
          if (v27 >= 0.0)
          {
            v28 = v20.f64[0] - *(v19 - 16);
          }

          v29 = (v21 - v26) / v27;
          if (v28 < 0.00000011920929)
          {
            v29 = 0.0;
          }

          *(&v62 + 1) = v29;
          *&v62 = 0x3FF0000000000000;
          v30 = *(v19 + 16);
          v31 = v26 >= v30;
          v32 = v21 < v30;
          if (v32 != v31)
          {
            *(&v62 + 1) = 0;
            v29 = 0.0;
          }

          v33 = v25.f64[0] * v29 + *(v19 + 16);
          *v17 = v25.f64[0] + *(v19 + 8);
          v17[1] = v33;
          v34 = v17 + 1;
          if (v32 != v31)
          {
            *(v17 - 5) = v33;
          }

          v35 = v21;
          result = v17;
          v36 = v20.f64[0];
          if (v19 >= v13)
          {
            goto LABEL_26;
          }
        }

        else if (v19 >= v13)
        {
          v35 = v21;
          result = (v18 + 8);
          v36 = v20.f64[0];
          goto LABEL_25;
        }

        v36 = *(v14 + v16 + 56);
        v35 = *(v14 + v16 + 64);
        result = (v18 + 8);
LABEL_25:
        v34 = (v18 + 16);
LABEL_26:
        v37 = v36 - *result;
        v38 = v35 - *v34;
        v39 = -v37;
        if (v37 >= 0.0)
        {
          v39 = v37;
        }

        v40 = v38 / v37;
        if (v39 < 0.00000011920929)
        {
          v40 = 0.0;
        }

        *(&v62 + 1) = v40;
        *&v62 = 0x3FF0000000000000;
        v41 = v20.f64[0] - v25.f64[0];
        v42 = v21 - v25.f64[0] * v40;
        v17[3] = v41;
        v17[4] = v42;
        if (!v16)
        {
          v43 = v17[3] - *(v19 + 8);
          v44 = v42 - *(v19 + 16);
          v45 = -v43;
          if (v43 >= 0.0)
          {
            v45 = v17[3] - *(v19 + 8);
          }

          v46 = v44 / v43;
          if (v45 < 0.00000011920929)
          {
            v46 = 0.0;
          }

          *(&v62 + 1) = v46;
          *&v62 = 0x3FF0000000000000;
          v25.f64[1] = v25.f64[0] * v46;
          *v17 = vaddq_f64(v25, *(v17 - 3));
        }

        v18 += 24;
        v17 += 9;
        v16 += 24;
        --v15;
      }

      while (v14 + v16 != v12);
    }

    *(*(a4 + 88) - 16) = *(v10 - 16);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a4 + 16) - v14) >> 3) >= 3 && v14 != v12)
    {
      v48 = 0;
      v49 = (*v7 + 64);
      v50 = v14 + 24;
      do
      {
        v51 = *(v50 + 8);
        v52 = *(v14 + 8);
        v53 = vcgtq_f64(v52, v51);
        v54 = vsubq_f64(v51, v52);
        v55 = vbslq_s8(v53, vnegq_f64(v54), v54);
        v62 = v55;
        v56 = 1.0;
        if (*&v55.i64[1] > 0.00000011920929)
        {
          v56 = 0.0;
          if (*v55.i64 > 0.00000011920929)
          {
            v57 = *&v55.i64[1] / *v55.i64 * -3.0 + 1.0;
            if (v57 >= 0.0)
            {
              v56 = 1.0;
              if (v57 <= 1.0)
              {
                v56 = v57;
              }
            }
          }
        }

        v58 = v56 * *(v49 - 6);
        v59 = 1.0 - v56;
        *(v49 - 3) = v58 + (1.0 - v56) * *(v49 - 3);
        v60 = v56 * v49[3];
        *v49 = v60 + v59 * *v49;
        if (v14 != v13)
        {
          v49[6] = v60 + v59 * v49[6];
        }

        if (v48)
        {
          *(v49 - 9) = v58 + v59 * *(v49 - 9);
        }

        v14 += 24;
        v48 -= 24;
        v49 += 9;
        v50 += 24;
      }

      while (v14 != v12);
    }
  }

  return result;
}

void sub_25FA3C2FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = v3;
  v2[4] = v4;
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *cc::curve::aspline::offsetcolor_t<double>::insertPointIsolation(uint64_t *result, uint64_t *a2, __n128 a3, double a4, double a5)
{
  v8 = result;
  v9 = 1.0;
  if (a3.n128_f64[0] <= 1.0)
  {
    v9 = a3.n128_f64[0];
  }

  if (a3.n128_f64[0] >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v94 = v10;
  v11 = result[1];
  v12 = result[2];
  v13 = result + 1;
  if (v11 == v12)
  {
LABEL_18:
    v20 = (*(*result + 24))(result, &v94) - *(result + 8);
    v95 = &unk_2871D0EF8;
    v96.f64[0] = v94;
    v96.f64[1] = v20;
    result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](a2, &v95);
    a3.n128_f64[0] = v94;
  }

  else
  {
    v14 = v10 - a5;
    v15 = v10 + a5;
    v16 = v10 - v10;
    if (v10 - v10 < 0.0)
    {
      v16 = -(v10 - v10);
    }

    while (1)
    {
      v17 = *(v11 + 8);
      if (v17 > v14 && v17 < v15)
      {
        break;
      }

      if (v17 >= 0.0)
      {
        v19 = v17 - v10;
        if (v19 < 0.0)
        {
          v19 = -v19;
        }

        if (v19 <= v16)
        {
          break;
        }
      }

      v11 += 24;
      if (v11 == v12)
      {
        goto LABEL_18;
      }
    }

    a3.n128_f64[0] = v10;
  }

  v21 = a3.n128_f64[0] - a4;
  v94 = v21;
  if (v21 > 0.0)
  {
    v22 = v8[1];
    v23 = v8[2];
    if (v22 == v23)
    {
LABEL_36:
      v29 = (*(*v8 + 24))(v8, &v94) - *(v8 + 8);
      v95 = &unk_2871D0EF8;
      v96.f64[0] = v94;
      v96.f64[1] = v29;
      result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](a2, &v95);
    }

    else
    {
      v24 = v21 - v10;
      if (v21 - v10 < 0.0)
      {
        v24 = -(v21 - v10);
      }

      while (1)
      {
        v25 = *(v22 + 8);
        if (v25 > v21 - a5 && v25 < v21 + a5)
        {
          break;
        }

        if (v25 >= 0.0)
        {
          v27 = v25 - v10;
          if (v25 - v10 < 0.0)
          {
            v27 = -(v25 - v10);
          }

          if (v27 <= v24)
          {
            v28 = v25 - v21;
            if (v28 < 0.0)
            {
              v28 = -v28;
            }

            if (v28 <= v24)
            {
              break;
            }
          }
        }

        v22 += 24;
        if (v22 == v23)
        {
          goto LABEL_36;
        }
      }
    }
  }

  a3.n128_f64[0] = v10 + a4;
  v94 = v10 + a4;
  if (v10 + a4 < 1.0)
  {
    v30 = v8[1];
    v31 = v8[2];
    if (v30 == v31)
    {
LABEL_53:
      v37 = (*(*v8 + 24))(v8, &v94, a3) - *(v8 + 8);
      v95 = &unk_2871D0EF8;
      v96.f64[0] = v94;
      v96.f64[1] = v37;
      result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](a2, &v95);
    }

    else
    {
      v32 = a3.n128_f64[0] - v10;
      if (a3.n128_f64[0] - v10 < 0.0)
      {
        v32 = -(a3.n128_f64[0] - v10);
      }

      while (1)
      {
        v33 = *(v30 + 8);
        if (v33 > a3.n128_f64[0] - a5 && v33 < a3.n128_f64[0] + a5)
        {
          break;
        }

        if (v33 >= 0.0)
        {
          v35 = v33 - v10;
          if (v33 - v10 < 0.0)
          {
            v35 = -(v33 - v10);
          }

          if (v35 <= v32)
          {
            v36 = v33 - a3.n128_f64[0];
            if (v36 < 0.0)
            {
              v36 = -v36;
            }

            if (v36 <= v32)
            {
              break;
            }
          }
        }

        v30 += 24;
        if (v30 == v31)
        {
          goto LABEL_53;
        }
      }
    }
  }

  for (i = *a2; i != a2[1]; i += 24)
  {
    v39 = v8[1];
    v40 = v8[2];
    if (v39 == v40)
    {
LABEL_60:
      result = std::vector<cc::point_t<double,false,false>>::push_back[abi:ne200100](v13, i);
    }

    else
    {
      v41 = v8[1];
      while (*(v41 + 8) < *(i + 8))
      {
        v41 += 24;
        v39 += 24;
        if (v41 == v40)
        {
          goto LABEL_60;
        }
      }

      result = std::vector<cc::point_t<double,false,false>>::insert(v13, v39, i);
    }
  }

  v42 = v8[1];
  v43 = v8[2];
  v44 = 0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3);
  if (v44 <= 1)
  {
    return std::vector<cc::point_t<double,false,false>>::resize(v8 + 10, 4uLL);
  }

  if (v44 <= 0x5555555555555554)
  {
    v45 = v43 - 24;
    if (v43 - 24 == v42)
    {
      v46 = v43 - 24;
    }

    else
    {
      v46 = v43 - 48;
    }

    v96 = 0uLL;
    v95 = &unk_2871D0EF8;
    result = std::vector<cc::point_t<double,false,false>>::resize(v8 + 10, ((v43 - v42) >> 3) - 2);
    v47 = v8[1];
    if (v47 != v45)
    {
      v48 = 0;
      v49 = 0;
      v50 = (v8[10] + 32);
      v51 = v8[1];
      do
      {
        v52 = v47 + v49;
        v53 = *(v47 + v49 + 32);
        v54 = *(v47 + v49 + 40);
        v55 = *(v47 + v49 + 8);
        v56 = vcgtq_f64(v55, v53);
        v57 = vsubq_f64(v53, v55);
        v58 = vbslq_s8(v56, vnegq_f64(v57), v57);
        v96 = v58;
        if (v58.f64[0] < 0.0)
        {
          v58.f64[0] = -v58.f64[0];
        }

        v58.f64[0] = v58.f64[0] * 0.3334;
        *(v50 - 3) = *(v52 + 8);
        if (v48)
        {
          v59 = *(v52 - 8);
          v60 = v53.f64[0] - *(v52 - 16);
          v61 = -v60;
          if (v60 >= 0.0)
          {
            v61 = v53.f64[0] - *(v52 - 16);
          }

          v62 = (v54 - v59) / v60;
          if (v61 < 0.00000011920929)
          {
            v62 = 0.0;
          }

          v96.f64[1] = v62;
          v96.f64[0] = 1.0;
          v63 = *(v52 + 16);
          v64 = v59 >= v63;
          v65 = v54 < v63;
          if (v65 != v64)
          {
            v96.f64[1] = 0.0;
            v62 = 0.0;
          }

          v66 = v58.f64[0] * v62 + *(v52 + 16);
          *v50 = v58.f64[0] + *(v52 + 8);
          v50[1] = v66;
          v67 = v50 + 1;
          if (v65 != v64)
          {
            *(v50 - 5) = v66;
          }

          v68 = v54;
          result = v50;
          v69 = v53.f64[0];
          if (v52 >= v46)
          {
            goto LABEL_88;
          }
        }

        else if (v52 >= v46)
        {
          v68 = v54;
          result = (v51 + 8);
          v69 = v53.f64[0];
          goto LABEL_87;
        }

        v69 = *(v47 + v49 + 56);
        v68 = *(v47 + v49 + 64);
        result = (v51 + 8);
LABEL_87:
        v67 = (v51 + 16);
LABEL_88:
        v70 = v69 - *result;
        v71 = v68 - *v67;
        v72 = -v70;
        if (v70 >= 0.0)
        {
          v72 = v70;
        }

        v73 = v71 / v70;
        if (v72 < 0.00000011920929)
        {
          v73 = 0.0;
        }

        v96.f64[1] = v73;
        v96.f64[0] = 1.0;
        v74 = v53.f64[0] - v58.f64[0];
        v75 = v54 - v58.f64[0] * v73;
        v50[3] = v74;
        v50[4] = v75;
        if (!v49)
        {
          v76 = v50[3] - *(v52 + 8);
          v77 = v75 - *(v52 + 16);
          v78 = -v76;
          if (v76 >= 0.0)
          {
            v78 = v50[3] - *(v52 + 8);
          }

          v79 = v77 / v76;
          if (v78 < 0.00000011920929)
          {
            v79 = 0.0;
          }

          v96.f64[1] = v79;
          v96.f64[0] = 1.0;
          v58.f64[1] = v58.f64[0] * v79;
          *v50 = vaddq_f64(v58, *(v50 - 3));
        }

        v51 += 24;
        v50 += 9;
        v49 += 24;
        --v48;
      }

      while (v47 + v49 != v45);
    }

    *(v8[11] - 16) = *(v43 - 16);
    if (0xAAAAAAAAAAAAAAABLL * ((v8[2] - v47) >> 3) >= 3 && v47 != v45)
    {
      v81 = 0;
      v82 = (v8[10] + 64);
      v83 = v47 + 24;
      do
      {
        v84 = *(v83 + 8);
        v85 = *(v47 + 8);
        v86 = vcgtq_f64(v85, v84);
        v87 = vsubq_f64(v84, v85);
        v88 = vbslq_s8(v86, vnegq_f64(v87), v87);
        v96 = v88;
        v89 = 1.0;
        if (*&v88.i64[1] > 0.00000011920929)
        {
          v89 = 0.0;
          if (*v88.i64 > 0.00000011920929)
          {
            v90 = *&v88.i64[1] / *v88.i64 * -3.0 + 1.0;
            if (v90 >= 0.0)
            {
              v89 = 1.0;
              if (v90 <= 1.0)
              {
                v89 = v90;
              }
            }
          }
        }

        v91 = v89 * *(v82 - 6);
        v92 = 1.0 - v89;
        *(v82 - 3) = v91 + (1.0 - v89) * *(v82 - 3);
        v93 = v89 * v82[3];
        *v82 = v93 + v92 * *v82;
        if (v47 != v46)
        {
          v82[6] = v93 + v92 * v82[6];
        }

        if (v81)
        {
          *(v82 - 9) = v91 + v92 * *(v82 - 9);
        }

        v47 += 24;
        v81 -= 24;
        v82 += 9;
        v83 += 24;
      }

      while (v47 != v45);
    }
  }

  return result;
}

double cc::curve::aspline::offsetcolor_t<double>::evaluate(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 120);
  v3 = a1 + (v2 >> 1);
  if (v2)
  {
    v1 = *(*(v3 + 72) + v1);
  }

  return v1(v3 + 72) + *(a1 + 64);
}

BOOL cc::curve::aspline::offsetcolor_t<double>::evaluateAsBytes(uint64_t a1, _WORD *a2, int a3, int a4, void (*a5)(double *), float a6, float a7)
{
  if (a3)
  {
    v10 = a2;
    v11 = a1 + 104;
    v12 = &a2[a3];
    v13 = a7 - a6;
    v14 = v13;
    v15 = a6;
    v16 = (1.0 / v13);
    v17 = (-a6 / v13);
    v18 = 0.0;
    v19 = 1.0 / (~a4 + a3);
    do
    {
      v27 = v18 * v14 + v15;
      v20 = (*(*v11 + 16))(v11, &v27);
      v27 = v20;
      if (a5)
      {
        a5(&v27);
        v20 = v27;
      }

      v21 = v20 * v16 + v17;
      if (v21 <= 1.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1.0;
      }

      v23 = v22 * 65535.0;
      v24 = v21 < 0.0;
      v25 = 0.0;
      if (!v24)
      {
        v25 = v23;
      }

      *v10++ = v25;
      v18 = v19 + v18;
    }

    while (v10 < v12);
    if (a4)
    {
      *v10 = *(v10 - 1);
    }
  }

  return a3 != 0;
}

uint64_t cc::curve::aspline::offsetcolor_t<double>::evaluateAsLUT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (*(a2 + 24) <= 0x3FFuLL)
  {
    if (*(a2 + 16))
    {
      operator new[]();
    }

    v7 = *(a2 + 8);
    if (v7)
    {
      memmove(0, *(a2 + 8), 0);
      *(a2 + 24) = 1024;
      MEMORY[0x2666E9ED0](v7, 0x1000C80BDFB0063);
    }

    else
    {
      *(a2 + 24) = 1024;
    }

    operator new[]();
  }

  *(a2 + 16) = 1024;
  v8 = *(a2 + 8);
  v9 = *(*(a1 + 104) + 24);
  v10 = a1 + 104;

  return v9(v10, v8, 1024, a3, a4, a5, a6);
}

void non-virtual thunk tocc::curve::aspline::offsetcolor_t<double>::~offsetcolor_t(uint64_t a1)
{
  *(a1 - 32) = &unk_2871D9E68;
  *a1 = &unk_2871D9EA8;
  v2 = (a1 + 48);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 - 24);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t non-virtual thunk tocc::curve::aspline::offsetcolor_t<double>::~offsetcolor_t(uint64_t a1)
{
  v2 = a1 - 32;
  *(a1 - 32) = &unk_2871D9E68;
  *a1 = &unk_2871D9EA8;
  v4 = (a1 + 48);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 - 24);
  std::vector<cc::point_t<double,false,false>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return MEMORY[0x2666E9F00](v2, 0x10A1C4008CDC881);
}

double non-virtual thunk tocc::curve::aspline::offsetcolor_t<double>::evaluate(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  v3 = a1 + (v2 >> 1);
  if (v2)
  {
    v1 = *(*(v3 + 40) + v1);
  }

  return v1(v3 + 40) + *(a1 + 32);
}

BOOL non-virtual thunk tocc::curve::aspline::offsetcolor_t<double>::evaluateAsBytes(uint64_t a1, _WORD *a2, int a3, int a4, void (*a5)(double *), float a6, float a7)
{
  if (a3)
  {
    v10 = a2;
    v11 = a1 + 72;
    v12 = &a2[a3];
    v13 = a7 - a6;
    v14 = v13;
    v15 = a6;
    v16 = (1.0 / v13);
    v17 = (-a6 / v13);
    v18 = 0.0;
    v19 = 1.0 / (~a4 + a3);
    do
    {
      v27 = v18 * v14 + v15;
      v20 = (*(*v11 + 16))(v11, &v27);
      v27 = v20;
      if (a5)
      {
        a5(&v27);
        v20 = v27;
      }

      v21 = v20 * v16 + v17;
      if (v21 <= 1.0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 1.0;
      }

      v23 = v22 * 65535.0;
      v24 = v21 < 0.0;
      v25 = 0.0;
      if (!v24)
      {
        v25 = v23;
      }

      *v10++ = v25;
      v18 = v19 + v18;
    }

    while (v10 < v12);
    if (a4)
    {
      *v10 = *(v10 - 1);
    }
  }

  return a3 != 0;
}

uint64_t non-virtual thunk tocc::curve::aspline::offsetcolor_t<double>::evaluateAsLUT(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5, __n128 a6)
{
  if (*(a2 + 24) <= 0x3FFuLL)
  {
    if (*(a2 + 16))
    {
      operator new[]();
    }

    v7 = *(a2 + 8);
    if (v7)
    {
      memmove(0, *(a2 + 8), 0);
      *(a2 + 24) = 1024;
      MEMORY[0x2666E9ED0](v7, 0x1000C80BDFB0063);
    }

    else
    {
      *(a2 + 24) = 1024;
    }

    operator new[]();
  }

  *(a2 + 16) = 1024;
  v8 = *(a2 + 8);
  v9 = *(*(a1 + 72) + 24);
  v10 = a1 + 72;

  return v9(v10, v8, 1024, a3, a4, a5, a6);
}

void sub_25FA3DB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double PCMatrix33Tmpl<double>::operator*@<D0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v5 = *(a1 + 48);
  v10[2] = *(a1 + 32);
  v10[3] = v5;
  v11 = *(a1 + 64);
  PCMatrix33Tmpl<double>::operator*=(v10, a2);
  v7 = *(v6 + 16);
  *a3 = *v6;
  *(a3 + 16) = v7;
  v8 = *(v6 + 48);
  *(a3 + 32) = *(v6 + 32);
  *(a3 + 48) = v8;
  result = *(v6 + 64);
  *(a3 + 64) = result;
  return result;
}

double PCMatrix33Tmpl<double>::operator*=(double *a1, double *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a1 = *a1 * *a2 + v3 * a2[3] + v4 * a2[6];
  a1[1] = v2 * a2[1] + v3 * a2[4] + v4 * a2[7];
  a1[2] = v2 * a2[2] + v3 * a2[5] + v4 * a2[8];
  v6 = a1[4];
  v7 = a1[5];
  a1[3] = v5 * *a2 + v6 * a2[3] + v7 * a2[6];
  a1[4] = v5 * a2[1] + v6 * a2[4] + v7 * a2[7];
  a1[5] = v5 * a2[2] + v6 * a2[5] + v7 * a2[8];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  a1[6] = v8 * *a2 + v9 * a2[3] + v10 * a2[6];
  a1[7] = v8 * a2[1] + v9 * a2[4] + v10 * a2[7];
  result = v8 * a2[2] + v9 * a2[5] + v10 * a2[8];
  a1[8] = result;
  return result;
}

HGNode *HEquirectGaussianBlur::init(uint64_t a1, int a2, int a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6, float32x2_t *a7, float a8, float a9, float a10)
{
  *(a1 + 408) = a8;
  *(a1 + 412) = a9;
  *(a1 + 416) = a10;
  *(a1 + 420) = a2;
  *(a1 + 424) = a3;
  *v33 = a2;
  *(v33 + 1) = a3;
  NewEquirectWrapNode(v33, a4, a5, a6, a7, &v42);
  v12 = *(a1 + 432);
  v13 = v42;
  if (v12 != v42)
  {
    if (v12)
    {
      (*(*v12 + 24))(*(a1 + 432));
      v13 = v42;
    }

    *(a1 + 432) = v13;
    if (v13)
    {
      (*(*v13 + 16))(v13);
    }
  }

  v14 = HGObject::operator new(0x1B0uLL);
  HGaussianBlur::HGaussianBlur(v14);
  (*(*v14 + 120))(v14, 0, v42);
  HGaussianBlur::init(v14, *(a1 + 408), 0.0, *(a1 + 416), 0, 0, 0);
  (*(*v14 + 16))(v14);
  if (*(a1 + 412) > 0.0)
  {
    v15 = HGObject::operator new(0x1A0uLL);
    HgcEquirectToSinusoidal::HgcEquirectToSinusoidal(v15);
  }

  v16 = *(a1 + 420);
  v17.i64[0] = v16;
  v17.i64[1] = SHIDWORD(v16);
  v18 = vcvtq_f64_s64(v17);
  __asm { FMOV            V1.2D, #-0.5 }

  v40 = vmulq_f64(v18, _Q1);
  v41 = v18;
  v39 = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0x3FF0000000000000;
  v34 = 0;
  v37 = 0u;
  v38 = 0u;
  v24 = vcvtq_f64_f32(a6[1]);
  v33[0] = vcvtq_f64_f32(*a6);
  v33[1] = v24;
  v25 = vcvtq_f64_f32(a7[1]);
  v33[2] = vcvtq_f64_f32(*a7);
  v33[3] = v25;
  PCMatrix44Tmpl<double>::transformRect<double>(v33, v40.f64, &v40);
  v26 = HGRectMake4i(vcvtmd_s64_f64(v40.f64[0]), vcvtmd_s64_f64(v40.f64[1]), vcvtpd_s64_f64(v40.f64[0] + v41.f64[0]), vcvtpd_s64_f64(v40.f64[1] + v41.f64[1]));
  v28 = v27;
  v29 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v29);
  (*(*v29 + 120))(v29, 0, v14);
  (*(*v29 + 96))(v29, 0, v26, SHIDWORD(v26), v28, SHIDWORD(v28));
  v30 = *(a1 + 440);
  if (v30 != v29)
  {
    if (v30)
    {
      (*(*v30 + 24))(v30);
    }

    *(a1 + 440) = v29;
    (*(*v29 + 16))(v29);
  }

  (*(*v29 + 24))(v29);
  (*(*v14 + 24))(v14);
  (*(*v14 + 24))(v14);
  result = v42;
  if (v42)
  {
    return (*(*v42 + 24))(v42);
  }

  return result;
}

void sub_25FA3E7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  HGObject::operator delete(v11);
  (*(*v13 + 24))(v13);
  (*(*v12 + 24))(v12);
  (*(*v10 + 24))(v10);
  (*(*v9 + 24))(v9);
  (*(*v9 + 24))(v9);
  v16 = *(v14 - 112);
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t HEquirectGaussianBlur::GetOutput(HEquirectGaussianBlur *this, HGRenderer *a2)
{
  v3 = *(this + 54);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v3 + 120))(v3, 0, Input);
  return *(this + 55);
}

void HEquirectGaussianBlur::~HEquirectGaussianBlur(HGNode *this)
{
  HEquirectGaussianBlur::~HEquirectGaussianBlur(this);

  HGObject::operator delete(v1);
}

{
  *this = &unk_2871D9F38;
  v2 = *(this + 55);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 54);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

void HPolarToRect::InvTransformPoint(uint64_t a1@<X0>, float32x2_t *a2@<X1>, float32x2_t *a3@<X8>)
{
  v15[2] = *MEMORY[0x277D85DE8];
  (*(*a1 + 104))(a1, 0, v15);
  v6 = *v15;
  (*(*a1 + 104))(a1, 1, v15);
  v7 = v15[0];
  (*(*a1 + 104))(a1, 2, v15);
  v8 = v15[0];
  (*(*a1 + 104))(a1, 3, v15);
  v9 = v15[0];
  (*(*a1 + 104))(a1, 4, v15);
  v10 = v15[0];
  v14 = vsub_f32(vadd_f32(v8, vmul_f32(v9, *a2)), v7);
  v11 = atan2f(v14.f32[0], v14.f32[1]);
  if (v11 < 0.0)
  {
    v12 = v11 + 6.28318531;
    v11 = v12;
  }

  v13.f32[0] = v6 * v11;
  v13.i32[1] = sqrtf(vaddv_f32(vmul_f32(v14, v14)));
  *a3 = vmul_f32(v10, vsub_f32(v13, v8));
}

unint64_t HPolarToRect::GetDOD(HPolarToRect *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v4 = 0;
    LODWORD(v5) = 0;
  }

  else
  {
    v7 = HGRectMake4i(vcvtms_s32_f32(*(this + 104)), vcvtms_s32_f32(*(this + 105)), vcvtps_s32_f32(*(this + 106)), vcvtps_s32_f32(*(this + 107)));
    v4 = v7;
    v9 = v8;
    v5 = HIDWORD(v7);
    if (!HGRectIsInfinite(v7, v8) && *(this + 432) == 1)
    {
      v15.f32[0] = v4;
      v15.f32[1] = v5;
      v14.f32[0] = v9;
      v14.f32[1] = v5;
      v13.f32[0] = v9;
      v13.f32[1] = SHIDWORD(v9);
      v12.f32[0] = v4;
      v12.f32[1] = SHIDWORD(v9);
      HPolarToRect::InvTransformPoint(this, &v15, &v11);
      HPolarToRect::InvTransformPoint(this, &v14, &v11);
      HPolarToRect::InvTransformPoint(this, &v13, &v11);
      HPolarToRect::InvTransformPoint(this, &v12, &v11);
    }
  }

  return v4 | (v5 << 32);
}

uint64_t mix_hull@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, float64x2_t *a3@<X8>)
{
  v3.f64[0] = *a2;
  v3.f64[1] = *(result + 8);
  v4.f64[0] = *result;
  v4.f64[1] = *(a2 + 8);
  v5 = vbslq_s8(vcgtq_f64(v4, v3), *a2, *result);
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v5, 1), v5))).u8[0])
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

  v6.f64[0] = *(a2 + 16);
  v6.f64[1] = *(result + 24);
  v7.f64[0] = *(result + 16);
  v7.f64[1] = *(a2 + 24);
  v8 = vbslq_s8(vcgtq_f64(v7, v6), *(a2 + 16), *(result + 16));
  if (vmovn_s64(vmvnq_s8(vcgeq_f64(vdupq_laneq_s64(v8, 1), v8))).u8[0])
  {
    boost::numeric::interval_lib::exception_create_empty::operator()();
  }

  *a3 = v5;
  a3[1] = v8;
  return result;
}

unint64_t HPolarToRect::GetROI(HPolarToRect *this, HGRenderer *a2, int a3, HGRect a4)
{
  v54 = *MEMORY[0x277D85DE8];
  v44 = a4;
  if (a3)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = this;
    (*(*this + 104))(this, 0, &v50);
    v7 = *&v50;
    v8 = fegetround();
    fesetround(0x400000);
    v50 = -v7;
    v9 = -v50;
    v50 = v7;
    v43[0] = v9;
    v43[1] = v7;
    fesetround(v8);
    (*(*v6 + 104))(v6, 1, &v50);
    v10 = v50;
    v11 = fegetround();
    fesetround(0x400000);
    v50 = *&v10;
    fesetround(v11);
    v12 = fegetround();
    fesetround(0x400000);
    v50 = *(&v10 + 1);
    fesetround(v12);
    (*(*v6 + 104))(v6, 2, &v50);
    v13 = v50;
    v14 = fegetround();
    fesetround(0x400000);
    v50 = *&v13;
    fesetround(v14);
    v15 = fegetround();
    fesetround(0x400000);
    v50 = *(&v13 + 1);
    fesetround(v15);
    v50 = --*&v13;
    v51 = *&v13;
    v52 = --*(&v13 + 1);
    v53 = *(&v13 + 1);
    v16 = fegetround();
    fesetround(0x400000);
    *&v48 = 0;
    fesetround(v16);
    operator*<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,double>(&v50, &v48, 2.0);
    v41 = v48;
    v42 = *v49;
    (*(*v6 + 104))(v6, 3, &v48);
    v17 = v48;
    v18 = fegetround();
    fesetround(0x400000);
    *&v48 = *&v17;
    fesetround(v18);
    v19 = fegetround();
    fesetround(0x400000);
    *&v48 = *(&v17 + 1);
    fesetround(v19);
    *&v48 = --*&v17;
    *(&v48 + 1) = *&v17;
    v49[0] = --*(&v17 + 1);
    v49[1] = *(&v17 + 1);
    (*(*v6 + 104))(v6, 4, v47);
    v20 = v47[0];
    v21 = fegetround();
    fesetround(0x400000);
    v47[0] = *&v20;
    fesetround(v21);
    v22 = fegetround();
    fesetround(0x400000);
    v47[0] = *(&v20 + 1);
    fesetround(v22);
    v47[0] = --*&v20;
    v47[1] = *&v20;
    v47[2] = --*(&v20 + 1);
    v47[3] = *(&v20 + 1);
    (*(*v6 + 104))(v6, 5, &v45);
    Interval::pixelToFloat(&v44.var0, v45.f64);
    PCVector2<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator*=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v45.f64, &v48);
    LODWORD(v6) = fegetround();
    fesetround(0x400000);
    v45.f64[0] = -(-v45.f64[0] - v50);
    v45.f64[1] = v45.f64[1] + v51;
    fesetround(v6);
    LODWORD(v6) = fegetround();
    fesetround(0x400000);
    v37.f64[0] = *(&v46 + 1) + v53;
    *&v46 = -(-*&v46 - v52);
    *(&v46 + 1) = *(&v46 + 1) + v53;
    fesetround(v6);
    boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v45.f64, v43, v40);
    v39 = v46;
    *v34 = xmmword_260342EE0;
    boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(&v39, v34, v35.f64);
    LODWORD(v6) = fegetround();
    fesetround(0x400000);
    v23 = -*&v10 - v35.f64[0];
    v37.f64[0] = *&v10 + v35.f64[1];
    v24 = v37.f64[0];
    fesetround(v6);
    v31[0] = xmmword_260342EE0;
    boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(&v39, v31, v32.f64);
    LODWORD(v6) = fegetround();
    fesetround(0x400000);
    v25 = -*(&v10 + 1) - v32.f64[0];
    v37.f64[0] = *(&v10 + 1) + v32.f64[1];
    v26 = v37.f64[0];
    fesetround(v6);
    v37.f64[0] = -v23;
    v37.f64[1] = v24;
    *&v38 = -v25;
    *(&v38 + 1) = v26;
    boost::numeric::operator/<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v37.f64, &v41, v35.f64);
    boost::numeric::operator/<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(&v38, &v42, v34);
    *v34 = 0;
    *&v34[8] = xmmword_2603426F0;
    *&v34[24] = 0x3FF0000000000000;
    boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(v34, &v41, v32.f64);
    boost::numeric::operator*<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(&v34[16], &v42, v31);
    v35 = v32;
    v36 = v31[0];
    operator-<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(&v41, v35.f64, v34);
    v31[0] = v35;
    v31[1] = v36;
    v30[0] = *v34;
    v30[1] = *&v34[16];
    mix_hull(v31, v30, &v32);
    *v34 = v32;
    *&v34[16] = v33;
    v37 = v32;
    v38 = v33;
    LODWORD(v6) = fegetround();
    fesetround(0x400000);
    v32.f64[0] = v37.f64[1] - v50;
    v37.f64[0] = -(v51 - v37.f64[0]);
    v37.f64[1] = v37.f64[1] - v50;
    fesetround(v6);
    LODWORD(v6) = fegetround();
    fesetround(0x400000);
    v32.f64[0] = *(&v38 + 1) - v52;
    *&v38 = -(v53 - *&v38);
    *(&v38 + 1) = *(&v38 + 1) - v52;
    fesetround(v6);
    PCVector2<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>::operator*=<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>>(v37.f64, v47);
    v45 = v37;
    v46 = v38;
    v27 = Interval::floatToPixel(v45.f64);
    v28 = HIDWORD(v27);
    v4 = v27 - 1;
    v5 = v28 - 1;
  }

  return v4 | (v5 << 32);
}

void sub_25FA3F6A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t operator*<boost::numeric::interval<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>,double>@<X0>(double *a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  v6 = fegetround();
  fesetround(0x400000);
  if (a3 >= 0.0)
  {
    v7 = 0.0;
    v9 = 0.0;
    if (a3 == 0.0)
    {
      goto LABEL_6;
    }

    v7 = --(*a1 * a3);
    v8 = a1[1];
  }

  else
  {
    v7 = --(a1[1] * a3);
    v8 = *a1;
  }

  v9 = v8 * a3;
LABEL_6:
  fesetround(v6);
  v10 = fegetround();
  fesetround(0x400000);
  if (a3 < 0.0)
  {
    v11 = --(a1[3] * a3);
    v12 = a1[2];
LABEL_10:
    v13 = v12 * a3;
    goto LABEL_11;
  }

  v11 = 0.0;
  v13 = 0.0;
  if (a3 != 0.0)
  {
    v11 = --(a1[2] * a3);
    v12 = a1[3];
    goto LABEL_10;
  }

LABEL_11:
  result = fesetround(v10);
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v11;
  a2[3] = v13;
  return result;
}

uint64_t HPolarToRect::GetOutput(HPolarToRect *this, HGRenderer *a2)
{
  (*(*this + 136))(this, 0, 2);

  return HgcPolarToRect::GetOutput(this, a2);
}

void HPolarToRect::~HPolarToRect(HGNode *this)
{
  HgcPolarToRect::~HgcPolarToRect(this);

  HGObject::operator delete(v1);
}

double *boost::numeric::operator/<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>@<X0>(double *result@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v4 = result;
  if (*a2 <= 0.0)
  {
    v6 = a2[1];
    if (v6 >= 0.0)
    {
      if (*a2 == 0.0)
      {
        if (v6 == 0.0)
        {
          boost::numeric::interval_lib::exception_create_empty::operator()();
        }

        v7 = *result;
        if (*result != 0.0 || (v8 = result[1], v8 != 0.0))
        {
          v9 = fegetround();
          fesetround(0x400000);
          v13 = v4[1];
          if (v13 >= 0.0)
          {
            if (*v4 >= 0.0)
            {
              v11 = -(*v4 / -a2[1]);
              v12 = INFINITY;
              goto LABEL_29;
            }

            v12 = INFINITY;
          }

          else
          {
            v12 = v13 / a2[1];
          }

          v11 = -INFINITY;
LABEL_29:
          *a3 = v11;
          a3[1] = v12;
          return fesetround(v9);
        }
      }

      else if (v6 == 0.0)
      {
        v7 = *result;
        if (*result != 0.0 || (v8 = result[1], v8 != 0.0))
        {
          v9 = fegetround();
          fesetround(0x400000);
          v10 = v4[1];
          if (v10 >= 0.0)
          {
            if (*v4 >= 0.0)
            {
              v12 = *v4 / *a2;
            }

            else
            {
              v12 = INFINITY;
            }

            v11 = -INFINITY;
          }

          else
          {
            v11 = -(v10 / -*a2);
            v12 = INFINITY;
          }

          goto LABEL_29;
        }
      }

      else
      {
        v7 = *result;
        v8 = result[1];
        if (*result != 0.0 || v8 != 0.0)
        {
          v7 = -INFINITY;
          v8 = INFINITY;
        }
      }

      *a3 = v7;
      a3[1] = v8;
      return result;
    }
  }

  return boost::numeric::interval_lib::detail::div_non_zero<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>(result, a2, a3);
}

uint64_t boost::numeric::interval_lib::detail::div_non_zero<double,boost::numeric::interval_lib::policies<boost::numeric::interval_lib::rounded_math<double>,boost::numeric::interval_lib::checking_strict<double>>>@<X0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v6 = fegetround();
  fesetround(0x400000);
  v7 = a1[1];
  if (v7 >= 0.0)
  {
    v11 = *a1;
    v12 = a2[1];
    if (*a1 >= 0.0)
    {
      v15 = -v12;
      if (v12 < 0.0)
      {
        v9 = v7 / v15;
        v12 = *a2;
        goto LABEL_10;
      }

      v17 = v11 / v15;
      v16 = *a2;
    }

    else
    {
      if (v12 < 0.0)
      {
        v9 = v7 / -v12;
LABEL_10:
        v10 = v11 / v12;
        goto LABEL_11;
      }

      v16 = *a2;
      v17 = v11 / -*a2;
    }

    v13 = v7 / v16;
    v14 = -v17;
    goto LABEL_15;
  }

  v8 = a2[1];
  if (v8 >= 0.0)
  {
    v13 = v7 / v8;
    v14 = -(*a1 / -*a2);
LABEL_15:
    *a3 = v14;
    a3[1] = v13;
    return fesetround(v6);
  }

  v9 = v7 / -*a2;
  v10 = *a1 / v8;
LABEL_11:
  *a3 = -v9;
  a3[1] = v10;
  return fesetround(v6);
}

void sub_25FA40218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HGObject::operator delete(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25FA4095C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  HGObject::operator delete(v11);
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(a1);
}

void sub_25FA41374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 24))(a3);
  }

  HGTransform::~HGTransform(va);
  (*(*v4 + 24))(v4);
  (*(*v3 + 24))(v3);
  _Unwind_Resume(a1);
}

void sub_25FA420DC(_Unwind_Exception *a1)
{
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  (*(*v2 + 24))(v2);
  (*(*v2 + 24))(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

void sub_25FA423C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA428EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  HGObject::operator delete(v15);
  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  (*(*v14 + 24))(v14);
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  _Unwind_Resume(a1);
}

unint64_t HGlow::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0x8000000080000000;
  }

  else
  {
    return a4;
  }
}

uint64_t HGlow::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HGlow::~HGlow(HGNode *this)
{
  HgcGlow::~HgcGlow(this);

  HGObject::operator delete(v1);
}

unint64_t HGlowCombine::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0x8000000080000000;
  }

  else
  {
    return a4;
  }
}

uint64_t HGlowCombine::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HGlowCombine::~HGlowCombine(HGNode *this)
{
  HgcGlowCombineFx::~HgcGlowCombineFx(this);

  HGObject::operator delete(v1);
}

void sub_25FA433CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HGObject::operator delete(v10);
  (*(*v9 + 24))(v9);
  HGTransform::~HGTransform(&a9);
  _Unwind_Resume(a1);
}

void sub_25FA43D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a18)
  {
    (*(*a18 + 24))(a18);
  }

  if (v44)
  {
    (*(*v44 + 24))(v44);
  }

  if (v43)
  {
    (*(*v43 + 24))(v43);
  }

  (*(*v38 + 24))(v38);
  if (v42)
  {
    (*(*v42 + 24))(v42);
  }

  if (v41)
  {
    (*(*v41 + 24))(v41);
  }

  if (v40)
  {
    (*(*v40 + 24))(v40);
  }

  if (a22)
  {
    (*(*a22 + 24))(a22);
  }

  if (a26)
  {
    (*(*a26 + 24))(a26);
  }

  if (a30)
  {
    (*(*a30 + 24))(a30);
  }

  if (a34)
  {
    (*(*a34 + 24))(a34);
  }

  if (a38)
  {
    (*(*a38 + 24))(a38);
  }

  (*(*v38 + 24))(v38);
  v47 = *(v45 - 112);
  if (v47)
  {
    (*(*v47 + 24))(v47);
  }

  if (v39)
  {
    (*(*v39 + 24))(v39);
  }

  _Unwind_Resume(a1);
}

void sub_25FA44CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  HGObject::operator delete(v65);
  (*(*v66 + 24))(v66);
  (*(*v66 + 24))(v66);
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  if (a65)
  {
    (*(*a65 + 24))(a65);
  }

  _Unwind_Resume(a1);
}

void sub_25FA45C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RandMersenne::~RandMersenne(va);
  _Unwind_Resume(a1);
}

void sub_25FA45E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RandMersenne::~RandMersenne(va);
  _Unwind_Resume(a1);
}

void sub_25FA47398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HBadFilm::~HBadFilm(HGNode *this)
{
  HgcBadFilm::~HgcBadFilm(this);

  HGObject::operator delete(v1);
}

void sub_25FA47AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  v11 = *(v9 - 24);
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA4825C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  (*(*v11 + 24))(v11);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

unint64_t HGloom::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0x8000000080000000;
  }

  else
  {
    return a4;
  }
}

uint64_t HGloom::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HGloom::~HGloom(HGNode *this)
{
  HgcGloom::~HgcGloom(this);

  HGObject::operator delete(v1);
}

void sub_25FA48D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FA49B84(_Unwind_Exception *a1)
{
  (*(*v1 + 24))(v1);
  v4 = *(v2 - 152);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  _Unwind_Resume(a1);
}

const char *HgcFisheye::GetProgram(HgcFisheye *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004ac\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0;\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy;\n    s0.w = float(c0.w);\n    s1.x = dot(s0.xyw, hg_Params[2].xyz);\n    s1.y = dot(s0.xyw, hg_Params[3].xyz);\n    s1.xy = s1.xy - hg_Params[6].xy;\n    s1.zw = s1.xy*s1.xy;\n    s1.z = dot(s1.zw, hg_Params[5].xy);\n    s1.z = rsqrt(s1.z);\n    r0.w = -half(hg_Params[4].x);\n    s1.w = pow(s1.z, float(r0.w));\n    s0.x = s1.z*s1.w;\n    s1.xy = s1.xy*s0.xx;\n    s1.zw = float2(c0.xw);\n    s1 = s1 + hg_Params[6];\n    s0.x = dot(s1, hg_Params[0]);\n    s0.y = dot(s1, hg_Params[1]);\n    s0.xy = s0.xy + hg_Params[7].xy;\n    s0.xy = s0.xy*hg_Params[7].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=b78c9d66:00ca1048:8b1d8cf2:66078d3a\n//SIG=00400000:00000000:00000000:00000001:0001:0008:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000047c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy;\n    r0.w = c0.w;\n    r1.x = dot(r0.xyw, hg_Params[2].xyz);\n    r1.y = dot(r0.xyw, hg_Params[3].xyz);\n    r1.xy = r1.xy - hg_Params[6].xy;\n    r1.zw = r1.xy*r1.xy;\n    r1.z = dot(r1.zw, hg_Params[5].xy);\n    r1.z = rsqrt(r1.z);\n    r0.w = -hg_Params[4].x;\n    r1.w = pow(r1.z, r0.w);\n    r0.x = r1.z*r1.w;\n    r1.xy = r1.xy*r0.xx;\n    r1.zw = c0.xw;\n    r1 = r1 + hg_Params[6];\n    r0.x = dot(r1, hg_Params[0]);\n    r0.y = dot(r1, hg_Params[1]);\n    r0.xy = r0.xy + hg_Params[7].xy;\n    r0.xy = r0.xy*hg_Params[7].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=c5177f84:f976086c:5b695247:46ab06e4\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000573\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    highp vec4 r0, r1;\n\n    r0.xy = hg_TexCoord0.xy;\n    r0.w = c0.w;\n    r1.x = dot(r0.xyw, hg_ProgramLocal2.xyz);\n    r1.y = dot(r0.xyw, hg_ProgramLocal3.xyz);\n    r1.xy = r1.xy - hg_ProgramLocal6.xy;\n    r1.zw = r1.xy*r1.xy;\n    r1.z = dot(r1.zw, hg_ProgramLocal5.xy);\n    r1.z = inversesqrt(r1.z);\n    r0.w = -hg_ProgramLocal4.x;\n    r1.w = pow(r1.z, r0.w);\n    r0.x = r1.z*r1.w;\n    r1.xy = r1.xy*r0.xx;\n    r1.zw = c0.xw;\n    r1 = r1 + hg_ProgramLocal6;\n    r0.x = dot(r1, hg_ProgramLocal0);\n    r0.y = dot(r1, hg_ProgramLocal1);\n    r0.xy = r0.xy + hg_ProgramLocal7.xy;\n    r0.xy = r0.xy*hg_ProgramLocal7.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=09ee19a3:6f261b88:5f74ed2a:56627056\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA4AB94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344490;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FA4AD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA4AD64()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA4AD5CLL);
}

uint64_t std::vector<HGBinding>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<HGBinding>::__emplace_back_slow_path<HGBinding>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t HgcFisheye::BindTexture(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 228) - *(a2 + 220));
    v8.n128_f32[0] = 1.0 / (*(a2 + 232) - *(a2 + 224));
  }

  v5.n128_f32[0] = *(a2 + 240);
  v6.n128_f32[0] = *(a2 + 244);
  (*(*a2 + 136))(a2, 7, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcFisheye::Bind(HgcFisheye *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcFisheye::RenderTile(uint64_t a1, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = a2[2];
    v8 = 16 * a2[3].i32[0];
    v9 = v5;
    do
    {
      if (v6 >= 1)
      {
        v10 = 0;
        v11 = v9;
        do
        {
          v12 = v11;
          v12.i32[3] = 1.0;
          v13 = *(a1 + 408);
          v14.i64[0] = v11.i64[0];
          v14.i64[1] = vextq_s8(v12, v12, 8uLL).u64[0];
          v15 = *(v13 + 96);
          v16 = *(v13 + 112);
          *v12.f32 = vqtbl1_s8(v14, *v16.i8);
          *&v12.u32[2] = vqtbl1_s8(v14, *&vextq_s8(v16, v16, 8uLL));
          v17 = vmulq_f32(*(v13 + 32), v12);
          v18 = vmulq_f32(*(v13 + 48), v12);
          v19 = vaddq_f32(v18, vrev64q_s32(v18));
          v20 = vextq_s8(v18, v18, 4uLL);
          v21 = *(v13 + 128);
          v22 = *(v13 + 144);
          v23.i64[0] = vsubq_f32(vbslq_s8(v21, vaddq_f32(vextq_s8(v17, v17, 8uLL), vaddq_f32(v17, vrev64q_s32(v17))), vaddq_f32(v20, v19)), v15).u64[0];
          *v17.f32 = vmul_f32(*v23.i8, *v23.i8);
          v17.i64[1] = v23.i64[0];
          v24 = vmulq_f32(*(v13 + 80), v17);
          v19.i64[0] = v23.i64[0];
          v19.i64[1] = vaddq_f32(vdupq_lane_s64(*&v24, 0), vextq_s8(*&v5, v24, 0xCuLL)).i64[1];
          v25 = vminq_f32(vrsqrteq_f32(v19), v22);
          v26 = vminq_f32(vmulq_f32(v25, vrsqrtsq_f32(vmulq_f32(v25, v19), v25)), v22);
          v27 = vmulq_f32(v26, vrsqrtsq_f32(vmulq_f32(v26, v19), v26));
          v28 = vnegq_f32(vextq_s8(*(v13 + 64), *(v13 + 64), 4uLL));
          v29 = *(v13 + 160);
          v20.i64[0] = v23.i64[0];
          v23.i64[1] = vdupq_laneq_s64(v27, 1).u64[0];
          v30 = vbslq_s8(vcgtq_f32(vandq_s8(v29, vceqq_f32(v22, v28)), v22), v29, vrev64q_s32(v23));
          v31 = vorrq_s8(vandq_s8(v30, v16), v29);
          v32 = vandq_s8(v29, vcgtq_f32(v31, *(v13 + 224)));
          v33 = vsubq_f32(vsubq_f32(v31, v29), vmulq_f32(vmulq_f32(*(v13 + 240), v32), v31));
          v34 = vmulq_f32(v33, v33);
          v35 = vmaxq_f32(vmulq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(*(v13 + 192), vcgtq_f32(*(v13 + 176), v30))), *(v13 + 208)), v32), vmulq_f32(v33, vaddq_f32(*(v13 + 352), vmulq_f32(v33, vaddq_f32(vaddq_f32(*(v13 + 320), vmulq_f32(*(v13 + 336), v33)), vmulq_f32(v34, vaddq_f32(vaddq_f32(*(v13 + 256), vmulq_f32(*(v13 + 272), v33)), vmulq_f32(v34, vaddq_f32(*(v13 + 288), vmulq_f32(*(v13 + 304), v33)))))))))), v28), *(v13 + 368));
          v36 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
          v37 = vsubq_f32(v36, vandq_s8(v29, vcgtq_f32(v36, v35)));
          v38 = vsubq_f32(v35, v37);
          v20.i64[1] = v27.i64[1];
          v39 = vbslq_s8(*(v13 + 480), vmulq_f32(vaddq_f32(v29, vmulq_f32(v38, vaddq_f32(*(v13 + 448), vmulq_f32(v38, vaddq_f32(vaddq_f32(*(v13 + 416), vmulq_f32(*(v13 + 432), v38)), vmulq_f32(vmulq_f32(v38, v38), vaddq_f32(*(v13 + 384), vmulq_f32(*(v13 + 400), v38)))))))), vshlq_n_s32(vaddq_s32(*(v13 + 464), vcvtq_s32_f32(v37)), 0x17uLL)), v20);
          v40 = vaddq_f32(v15, vbslq_s8(*(v13 + 496), vmulq_n_f32(v39, vmulq_laneq_f32(vdupq_laneq_s32(v39, 3), v39, 2).f32[0]), v29));
          v41 = vmulq_f32(*v13, v40);
          v42 = vaddq_f32(v41, vextq_s8(v41, v41, 4uLL));
          v43 = vmulq_f32(*(v13 + 16), v40);
          v44 = vaddq_f32(v43, vextq_s8(v43, v43, 4uLL));
          v45 = vsubq_f32(vbslq_s8(v21, vaddq_f32(v42, vextq_s8(v42, v42, 8uLL)), vaddq_f32(v44, vextq_s8(v44, v44, 8uLL))), v5);
          v46 = a2[11].i32[0];
          v47 = vaddq_s32(vcvtq_s32_f32(v45), vcltzq_f32(v45));
          v45.i64[0] = vsubq_f32(v45, vcvtq_f32_s32(v47)).u64[0];
          v48 = (*&a2[10] + 16 * (v47.i32[0] + v47.i32[1] * v46));
          v49 = vaddq_f32(*v48, vmulq_n_f32(vsubq_f32(v48[1], *v48), v45.f32[0]));
          *(*&v7 + v10) = vaddq_f32(v49, vmulq_lane_f32(vsubq_f32(vaddq_f32(v48[v46], vmulq_n_f32(vsubq_f32(v48[v46 + 1], v48[v46]), v45.f32[0])), v49), *v45.f32, 1));
          v11 = vaddq_f32(v11, xmmword_2603429B0);
          v10 += 16;
        }

        while (16 * v6 != v10);
      }

      v9 = vaddq_f32(v9, xmmword_2603429C0);
      ++v4;
      *&v7 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcFisheye::GetDOD(HgcFisheye *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v4 = &HGRectNull;
  }

  else
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    HGRectGrow(v6, v5, v7);
    v4 = &HGRectInfinite;
  }

  return *v4;
}

uint64_t HgcFisheye::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(DOD, v9, v10);
}

void HgcFisheye::HgcFisheye(HgcFisheye *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DAE28;
  operator new();
}

void HgcFisheye::~HgcFisheye(HGNode *this)
{
  *this = &unk_2871DAE28;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4027AB4E27);
  }

  HGNode::~HGNode(this);
}

{
  HgcFisheye::~HgcFisheye(this);

  HGObject::operator delete(v1);
}

uint64_t HgcFisheye::SetParameter(HgcFisheye *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v11 = *(this + 51);
        if (*v11 != a3.n128_f32[0] || *(v11 + 4) != a4 || *(v11 + 8) != a5 || *(v11 + 12) != a6)
        {
          *v11 = a3.n128_u32[0];
          *(v11 + 4) = a4;
          *(v11 + 8) = a5;
          *(v11 + 12) = a6;
          goto LABEL_44;
        }

        return 0;
      case 1:
        v14 = *(this + 51);
        if (*(v14 + 16) != a3.n128_f32[0] || *(v14 + 20) != a4 || *(v14 + 24) != a5 || *(v14 + 28) != a6)
        {
          *(v14 + 16) = a3.n128_u32[0];
          *(v14 + 20) = a4;
          *(v14 + 24) = a5;
          *(v14 + 28) = a6;
          goto LABEL_44;
        }

        return 0;
      case 2:
        v9 = *(this + 51);
        if (v9[2].n128_f32[0] != a3.n128_f32[0] || v9[2].n128_f32[1] != a4 || v9[2].n128_f32[2] != a6 || v9[2].n128_f32[3] != 0.0)
        {
          v9[2].n128_u32[0] = a3.n128_u32[0];
          v9[2].n128_f32[1] = a4;
          v9[2].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v9[2].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v9[32] = a3;
          goto LABEL_44;
        }

        return 0;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v12 = *(this + 51);
        if (v12[3].n128_f32[0] != a3.n128_f32[0] || v12[3].n128_f32[1] != a4 || v12[3].n128_f32[2] != a6 || v12[3].n128_f32[3] != 0.0)
        {
          v12[3].n128_u32[0] = a3.n128_u32[0];
          v12[3].n128_f32[1] = a4;
          v12[3].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v12[3].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v12[33] = a3;
          goto LABEL_44;
        }
      }

      else
      {
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a4 || *(v8 + 72) != a5 || *(v8 + 76) != a6)
        {
          *(v8 + 64) = a3.n128_u32[0];
          *(v8 + 68) = a4;
          *(v8 + 72) = a5;
          *(v8 + 76) = a6;
LABEL_44:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }
      }

      return 0;
    }

    if (a2 == 5)
    {
      v13 = *(this + 51);
      if (*(v13 + 80) != a3.n128_f32[0] || *(v13 + 84) != a4 || *(v13 + 88) != a5 || *(v13 + 92) != a6)
      {
        *(v13 + 80) = a3.n128_u32[0];
        *(v13 + 84) = a4;
        *(v13 + 88) = a5;
        *(v13 + 92) = a6;
        goto LABEL_44;
      }

      return 0;
    }

    if (a2 == 6)
    {
      v10 = *(this + 51);
      if (*(v10 + 96) != a3.n128_f32[0] || *(v10 + 100) != a4 || *(v10 + 104) != a5 || *(v10 + 108) != a6)
      {
        *(v10 + 96) = a3.n128_u32[0];
        *(v10 + 100) = a4;
        *(v10 + 104) = a5;
        *(v10 + 108) = a6;
        goto LABEL_44;
      }

      return 0;
    }
  }

  return v7;
}

float HgcFisheye::GetParameter(HgcFisheye *this, int a2, float *a3)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = *(this + 51);
        *a3 = v9[4];
        a3[1] = v9[5];
        a3[2] = v9[6];
        v4 = v9 + 7;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v5 = *(this + 51);
        *a3 = v5[128];
        a3[1] = v5[129];
        a3[2] = v5[130];
        v4 = v5 + 131;
      }
    }

    else
    {
      v7 = *(this + 51);
      *a3 = *v7;
      a3[1] = v7[1];
      a3[2] = v7[2];
      v4 = v7 + 3;
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      v8 = *(this + 51);
      *a3 = v8[20];
      a3[1] = v8[21];
      a3[2] = v8[22];
      v4 = v8 + 23;
    }

    else
    {
      if (a2 != 6)
      {
        return result;
      }

      v6 = *(this + 51);
      *a3 = v6[24];
      a3[1] = v6[25];
      a3[2] = v6[26];
      v4 = v6 + 27;
    }
  }

  else
  {
    v3 = *(this + 51);
    if (a2 == 3)
    {
      *a3 = v3[132];
      a3[1] = v3[133];
      a3[2] = v3[134];
      v4 = v3 + 135;
    }

    else
    {
      *a3 = v3[16];
      a3[1] = v3[17];
      a3[2] = v3[18];
      v4 = v3 + 19;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

double HgcFisheye::State::State(HgcFisheye::State *this)
{
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = xmmword_2603444A0;
  *(this + 8) = xmmword_2603444B0;
  *(this + 9) = xmmword_2603444C0;
  *(this + 10) = xmmword_2603427D0;
  *(this + 11) = xmmword_2603444D0;
  *(this + 12) = xmmword_2603444E0;
  *(this + 13) = xmmword_2603444F0;
  *(this + 14) = xmmword_260344500;
  *(this + 15) = xmmword_260344510;
  *(this + 16) = xmmword_260344520;
  *(this + 17) = xmmword_260344530;
  *(this + 18) = xmmword_260344540;
  *(this + 19) = xmmword_260344550;
  *(this + 20) = xmmword_260344560;
  *(this + 21) = xmmword_260344570;
  *(this + 22) = xmmword_260344580;
  *(this + 23) = xmmword_260344590;
  *(this + 24) = xmmword_2603445A0;
  *(this + 25) = xmmword_2603445B0;
  *(this + 26) = xmmword_2603445C0;
  *(this + 27) = xmmword_2603445D0;
  *(this + 28) = xmmword_2603445E0;
  *(this + 29) = xmmword_2603445F0;
  *(this + 30) = xmmword_260344600;
  *(this + 31) = xmmword_260344610;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  return result;
}

void std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<HGBinding>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<HGBinding>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    if (*(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }
  }

  a1[1] = v2;
}

const char *HgcPageCurlBackground::GetProgram(HgcPageCurlBackground *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000a7f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.9990000129, -0.01872929931);\n    const half4 c1 = half4(-0.2121143937, 1.570728779, 0.07426100224, 1.570796371);\n    const half4 c2 = half4(-0.5000000000, 2.000000000, 0.5000000000, 3.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*hg_Params[1].xy + hg_Params[1].zw;\n    s0.zw = s0.xy - hg_Params[2].xy;\n    s1.w = dot(s0.zw, hg_Params[3].xy);\n    s0.x = -s1.w/hg_Params[4].x;\n    s1.x = select(float(c0.x), s0.x, s1.w < 0.00000h);\n    s0.x = float(c0.y) - s1.x;\n    s0.x = -fabs(s0.x) + float(c0.y);\n    s0.x = fmin(s0.x, float(c0.z));\n    s0.x = fmax(s0.x, -float(c0.z));\n    s0.y = abs(s0.x);\n    s1.z = s0.y*float(c0.w) + float(c1.z);\n    s1.y = float(c0.y) - s0.y;\n    s1.z = s0.y*s1.z + float(c1.x);\n    s0.y = s0.y*s1.z + float(c1.y);\n    s1.z = fmax(-s1.x, float(c0.x));\n    s1.y = sqrt(s1.y);\n    s0.y = -s1.y*s0.y + float(c1.w);\n    s0.x = float(s0.x < float(c0.x));\n    s0.x = s0.x*s0.y;\n    s1.y = s0.x*float(c2.y) + -s0.y;\n    s0.y = hg_Params[3].x;\n    s0.x = -hg_Params[3].y;\n    s0.w = dot(s0.zw, s0.xy);\n    s0.z = s1.y*hg_Params[4].x;\n    s0.z = select(s1.w, s0.z, s1.w < 0.00000h);\n    s1.y = -s1.x*s1.x + float(c0.y);\n    s0.y = -hg_Params[3].y;\n    s0.x = hg_Params[3].x;\n    s0.xy = s0.zw*s0.xy;\n    s0.w = dot(s0.zw, hg_Params[3].yx);\n    s0.z = dot(s0.xy, 1.00000f);\n    s0.xy = s0.zw + hg_Params[2].xy;\n    s0.xy = s0.xy*hg_Params[0].xy + hg_Params[0].zw;\n    s0.xy = s0.xy + hg_Params[6].xy;\n    s0.xy = s0.xy*hg_Params[6].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    s1.z = s1.z*s1.z;\n    s1.z = float(r0.w)*s1.z;\n    s0.xyz = s1.zzz*hg_Params[5].xyz;\n    s1.z = sqrt(fabs(s1.y));\n    s1.z = select(float(c0.y), s1.z, s1.w < 0.00000h);\n    s1.y = dot(float2(c2.xz), s1.xz);\n    s1.z = s1.y + float(c2.z);\n    s1.x = float(c0.y) - hg_Params[4].x;\n    s1.y = -s1.x - hg_Params[4].x;\n    s1.z = fmax(s1.z, float(c0.x));\n    s1.y = s1.y - float(c0.y);\n    s1.x = s1.w - s1.x;\n    s1.x = clamp(s1.x/s1.y, 0.00000f, 1.00000f);\n    s1.y = -s1.x*float(c2.y) + float(c2.w);\n    s1.x = s1.x*s1.x;\n    s2.w = float(r0.w);\n    s2.xyz = float3(r0.xyz)*s1.zzz + s0.xyz;\n    s1.x = s1.x*s1.y;\n    output.color0 = s1.xxxx*-s2 + s2;\n    return output;\n}\n//MD5=62f0f9f1:87a6b438:db8662bf:b2986826\n//SIG=00400000:00000000:00000000:00000001:0003:0007:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000009a7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.9990000129, -0.01872929931);\n    const float4 c1 = float4(-0.2121143937, 1.570728779, 0.07426100224, 1.570796371);\n    const float4 c2 = float4(-0.5000000000, 2.000000000, 0.5000000000, 3.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*hg_Params[1].xy + hg_Params[1].zw;\n    r0.zw = r0.xy - hg_Params[2].xy;\n    r1.w = dot(r0.zw, hg_Params[3].xy);\n    r0.x = -r1.w/hg_Params[4].x;\n    r1.x = select(c0.x, r0.x, r1.w < 0.00000f);\n    r0.x = c0.y - r1.x;\n    r0.x = -fabs(r0.x) + c0.y;\n    r0.x = fmin(r0.x, c0.z);\n    r0.x = fmax(r0.x, -c0.z);\n    r0.y = abs(r0.x);\n    r1.z = r0.y*c0.w + c1.z;\n    r1.y = c0.y - r0.y;\n    r1.z = r0.y*r1.z + c1.x;\n    r0.y = r0.y*r1.z + c1.y;\n    r1.z = fmax(-r1.x, c0.x);\n    r1.y = sqrt(r1.y);\n    r0.y = -r1.y*r0.y + c1.w;\n    r0.x = float(r0.x < c0.x);\n    r0.x = r0.x*r0.y;\n    r1.y = r0.x*c2.y + -r0.y;\n    r0.y = hg_Params[3].x;\n    r0.x = -hg_Params[3].y;\n    r0.w = dot(r0.zw, r0.xy);\n    r0.z = r1.y*hg_Params[4].x;\n    r0.z = select(r1.w, r0.z, r1.w < 0.00000f);\n    r1.y = -r1.x*r1.x + c0.y;\n    r0.y = -hg_Params[3].y;\n    r0.x = hg_Params[3].x;\n    r0.xy = r0.zw*r0.xy;\n    r0.w = dot(r0.zw, hg_Params[3].yx);\n    r0.z = dot(r0.xy, 1.00000f);\n    r0.xy = r0.zw + hg_Params[2].xy;\n    r0.xy = r0.xy*hg_Params[0].xy + hg_Params[0].zw;\n    r0.xy = r0.xy + hg_Params[6].xy;\n    r0.xy = r0.xy*hg_Params[6].zw;\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r1.z = r1.z*r1.z;\n    r1.z = r0.w*r1.z;\n    r2.xyz = r1.zzz*hg_Params[5].xyz;\n    r1.z = sqrt(fabs(r1.y));\n    r1.z = select(c0.y, r1.z, r1.w < 0.00000f);\n    r1.y = dot(c2.xz, r1.xz);\n    r1.z = r1.y + c2.z;\n    r1.x = c0.y - hg_Params[4].x;\n    r1.y = -r1.x - hg_Params[4].x;\n    r1.z = fmax(r1.z, c0.x);\n    r1.y = r1.y - c0.y;\n    r1.x = r1.w - r1.x;\n    r1.x = clamp(r1.x/r1.y, 0.00000f, 1.00000f);\n    r1.y = -r1.x*c2.y + c2.w;\n    r1.x = r1.x*r1.x;\n    r0.xyz = r0.xyz*r1.zzz + r2.xyz;\n    r1.x = r1.x*r1.y;\n    output.color0 = r1.xxxx*-r0 + r0;\n    return output;\n}\n//MD5=b51a5692:9e68dfea:987ceeb9:6c3395b2\n//SIG=00000000:00000000:00000000:00000000:0003:0007:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000a83\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.9990000129, -0.01872929931);\n    const highp vec4 c1 = vec4(-0.2121143937, 1.570728779, 0.07426100224, 1.570796371);\n    const highp vec4 c2 = vec4(-0.5000000000, 2.000000000, 0.5000000000, 3.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord0.xy*hg_ProgramLocal1.xy + hg_ProgramLocal1.zw;\n    r0.zw = r0.xy - hg_ProgramLocal2.xy;\n    r1.w = dot(r0.zw, hg_ProgramLocal3.xy);\n    r0.x = -r1.w/hg_ProgramLocal4.x;\n    r1.x = r1.w < 0.00000 ? r0.x : c0.x;\n    r0.x = c0.y - r1.x;\n    r0.x = -abs(r0.x) + c0.y;\n    r0.x = min(r0.x, c0.z);\n    r0.x = max(r0.x, -c0.z);\n    r0.y = abs(r0.x);\n    r1.z = r0.y*c0.w + c1.z;\n    r1.y = c0.y - r0.y;\n    r1.z = r0.y*r1.z + c1.x;\n    r0.y = r0.y*r1.z + c1.y;\n    r1.z = max(-r1.x, c0.x);\n    r1.y = sqrt(r1.y);\n    r0.y = -r1.y*r0.y + c1.w;\n    r0.x = float(r0.x < c0.x);\n    r0.x = r0.x*r0.y;\n    r1.y = r0.x*c2.y + -r0.y;\n    r0.y = hg_ProgramLocal3.x;\n    r0.x = -hg_ProgramLocal3.y;\n    r0.w = dot(r0.zw, r0.xy);\n    r0.z = r1.y*hg_ProgramLocal4.x;\n    r0.z = r1.w < 0.00000 ? r0.z : r1.w;\n    r1.y = -r1.x*r1.x + c0.y;\n    r0.y = -hg_ProgramLocal3.y;\n    r0.x = hg_ProgramLocal3.x;\n    r0.xy = r0.zw*r0.xy;\n    r0.w = dot(r0.zw, hg_ProgramLocal3.yx);\n    r0.z = dot(r0.xy, vec2(1.00000));\n    r0.xy = r0.zw + hg_ProgramLocal2.xy;\n    r0.xy = r0.xy*hg_ProgramLocal0.xy + hg_ProgramLocal0.zw;\n    r0.xy = r0.xy + hg_ProgramLocal6.xy;\n    r0.xy = r0.xy*hg_ProgramLocal6.zw;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r1.z = r1.z*r1.z;\n    r1.z = r0.w*r1.z;\n    r2.xyz = r1.zzz*hg_ProgramLocal5.xyz;\n    r1.z = sqrt(abs(r1.y));\n    r1.z = r1.w < 0.00000 ? r1.z : c0.y;\n    r1.y = dot(c2.xz, r1.xz);\n    r1.z = r1.y + c2.z;\n    r1.x = c0.y - hg_ProgramLocal4.x;\n    r1.y = -r1.x - hg_ProgramLocal4.x;\n    r1.z = max(r1.z, c0.x);\n    r1.y = r1.y - c0.y;\n    r1.x = r1.w - r1.x;\n    r1.x = clamp(r1.x/r1.y, 0.00000, 1.00000);\n    r1.y = -r1.x*c2.y + c2.w;\n    r1.x = r1.x*r1.x;\n    r0.xyz = r0.xyz*r1.zzz + r2.xyz;\n    r1.x = r1.x*r1.y;\n    gl_FragColor = r1.xxxx*-r0 + r0;\n}\n//MD5=aa701ea4:29eb492c:c2092974:03ade4f5\n//SIG=00000000:00000000:00000000:00000000:0003:0007:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA4BCA0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_2603446C0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FA4BE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA4BE70()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA4BE68);
}

uint64_t HgcPageCurlBackground::BindTexture(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 228) - *(a2 + 220));
    v8.n128_f32[0] = 1.0 / (*(a2 + 232) - *(a2 + 224));
  }

  v5.n128_f32[0] = *(a2 + 240);
  v6.n128_f32[0] = *(a2 + 244);
  (*(*a2 + 136))(a2, 6, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcPageCurlBackground::Bind(HgcPageCurlBackground *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcPageCurlBackground::RenderTile(HgcPageCurlBackground *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = 0;
    *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
    v9.i64[1] = 0x3F80000000000000;
    v10 = *(a2 + 2) - v6.i32[0];
    v11 = *(a2 + 2);
    v12 = 16 * *(a2 + 6);
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = v9;
    do
    {
      if (v10 < 2)
      {
        v15 = 0;
        v17 = v14;
      }

      else
      {
        v15 = 0;
        v16 = v10;
        v17 = v14;
        do
        {
          v18 = vaddq_f32(v17, xmmword_2603429B0);
          v19 = *(this + 51);
          v20 = *(v19 + 16);
          v21 = vextq_s8(v20, v20, 8uLL);
          v22 = *(v19 + 32);
          v23 = *(v19 + 48);
          v24 = vsubq_f32(vaddq_f32(vmulq_f32(v17, v20), v21), v22);
          v25 = vsubq_f32(vaddq_f32(vmulq_f32(v18, v20), v21), v22);
          v26 = vmulq_f32(v23, v24);
          v27 = vmulq_f32(v23, v25);
          v28 = vaddq_f32(vextq_s8(v26, v26, 4uLL), vextq_s8(v26, v26, 8uLL));
          v29 = vaddq_f32(vextq_s8(v27, v27, 4uLL), vextq_s8(v27, v27, 8uLL));
          v30 = *(v19 + 64);
          v32 = *(v19 + 96);
          v31 = *(v19 + 112);
          v33 = vminq_f32(vmaxq_f32(vrecpeq_f32(v30), v32), v31);
          v34 = vminq_f32(vmaxq_f32(vmulq_f32(v33, vrecpsq_f32(v30, v33)), v32), v31);
          v35 = vmulq_f32(v34, vrecpsq_f32(v30, v34));
          v36 = vmulq_f32(v35, vnegq_f32(vdupq_laneq_s32(v28, 3)));
          v37 = vmulq_f32(v35, vnegq_f32(vdupq_laneq_s32(v29, 3)));
          v38 = *(v19 + 128);
          v39 = *(v19 + 144);
          v40 = vbslq_s8(vcgtq_f32(v38, vextq_s8(v28, v28, 0xCuLL)), v36, v38);
          v41 = vsubq_f32(v39, v40);
          v40.i64[1] = v28.i64[1];
          v42 = vbslq_s8(vcgtq_f32(v38, vextq_s8(v29, v29, 0xCuLL)), v37, v38);
          v43 = vsubq_f32(v39, v42);
          v42.i64[1] = v29.i64[1];
          v44 = *(v19 + 160);
          v45 = *(v19 + 176);
          v43.i64[0] = vorrq_s8(v44, v43).u64[0];
          *v44.f32 = vmin_f32(vadd_f32(*v39.f32, *&vorrq_s8(v44, v41)), *v45.f32);
          v46 = *(v19 + 192);
          v47 = *(v19 + 208);
          *v44.f32 = vmax_f32(*v44.f32, *v46.f32);
          v44.i64[1] = v24.i64[0];
          *v24.f32 = vqtbl1_s8(v44, *v47.f32);
          v48 = vextq_s8(v47, v47, 8uLL).u64[0];
          *v44.f32 = vqtbl1_s8(v44, v48);
          *v43.f32 = vmax_f32(vmin_f32(vadd_f32(*v39.f32, *v43.f32), *v45.f32), *v46.f32);
          v43.i64[1] = v25.i64[0];
          *v25.f32 = vqtbl1_s8(v43, *v47.f32);
          *v43.f32 = vqtbl1_s8(v43, v48);
          v49 = *(v19 + 224);
          *v47.f32 = vand_s8(v49, *v24.f32);
          v47.i64[1] = v44.i64[0];
          *v50.f32 = vand_s8(v49, *v25.f32);
          v50.i64[1] = v43.i64[0];
          *v24.f32 = vext_s8(*v47.f32, *v44.f32, 4uLL);
          *v44.f32 = vext_s8(*v44.f32, *v47.f32, 4uLL);
          v44.i64[1] = v24.i64[0];
          *v24.f32 = vext_s8(*v50.f32, *v43.f32, 4uLL);
          *v43.f32 = vext_s8(*v43.f32, *v50.f32, 4uLL);
          v43.i64[1] = v24.i64[0];
          v51 = vaddq_f32(v39, vmulq_f32(v38, v43));
          v53 = *(v19 + 240);
          v52 = *(v19 + 256);
          v54 = vbslq_s8(v52, vsubq_f32(v46, v47), vbslq_s8(v53, vaddq_f32(v39, vmulq_f32(v38, v44)), v40));
          v55 = vbslq_s8(v52, vsubq_f32(v46, v50), vbslq_s8(v53, v51, v42));
          v56 = vbslq_s8(v53, vaddq_f32(v32, vmulq_lane_f32(v54, *v47.f32, 1)), v54);
          v57 = vbslq_s8(v53, vaddq_f32(v32, vmulq_lane_f32(v55, *v50.f32, 1)), v55);
          v58 = vbslq_s8(v52, vaddq_f32(v45, vmulq_laneq_f32(v47, v56, 2)), v47);
          v59 = vbslq_s8(v52, vaddq_f32(v45, vmulq_laneq_f32(v50, v57, 2)), v50);
          v60 = vnegq_f32(vextq_s8(v56, v56, 8uLL));
          v61 = vnegq_f32(vextq_s8(v57, v57, 8uLL));
          v63 = *(v19 + 272);
          v62 = *(v19 + 288);
          v64 = vbslq_s8(v53, vmaxq_f32(v60, v63), v54);
          v65 = vbslq_s8(v53, vmaxq_f32(v61, v63), v55);
          v66 = vminq_f32(vrsqrteq_f32(v64), v63);
          v67 = vminq_f32(vrsqrteq_f32(v65), v63);
          v68 = vminq_f32(vmulq_f32(v66, vrsqrtsq_f32(vmulq_f32(v66, v64), v66)), v63);
          v69 = vminq_f32(vmulq_f32(v67, vrsqrtsq_f32(vmulq_f32(v67, v65), v67)), v63);
          v70 = vbslq_s8(v52, vsubq_f32(v39, vmulq_f32(vbslq_s8(v52, vmulq_f32(vminq_f32(vmulq_f32(v68, vrsqrtsq_f32(vmulq_f32(v68, v64), v68)), v63), v64), v64), v58)), v47);
          v71 = vbslq_s8(v52, vsubq_f32(v39, vmulq_f32(vbslq_s8(v52, vmulq_f32(vminq_f32(vmulq_f32(v69, vrsqrtsq_f32(vmulq_f32(v69, v65), v69)), v63), v65), v65), v59)), v50);
          v72 = vbslq_s8(v62, vandq_s8(v39, vcgtq_f32(v63, v70)), v70);
          v73 = vbslq_s8(v62, vandq_s8(v39, vcgtq_f32(v63, v71)), v71);
          v74 = vbslq_s8(v62, vmulq_lane_f32(v72, *v72.f32, 1), v70);
          v75 = vbslq_s8(v62, vmulq_lane_f32(v73, *v73.f32, 1), v71);
          v76 = vbslq_s8(v52, vsubq_f32(vmulq_n_f32(v38, v74.f32[0]), v74), v64);
          v77 = vrev64q_s32(v23);
          v58.i64[0] = v77.i64[0];
          v58.i64[1] = v74.i64[1];
          v78 = vbslq_s8(v52, vsubq_f32(vmulq_n_f32(v38, v75.f32[0]), v75), v65);
          v74.i64[0] = v77.i64[0];
          v74.i64[1] = v75.i64[1];
          v79 = vnegq_f32(v23);
          v80 = vrev64q_s32(v79);
          v81 = vbslq_s8(v62, v80, v58);
          v82 = vbslq_s8(v62, v80, v74);
          v83 = vmulq_f32(vextq_s8(v81, v81, 8uLL), v81);
          v84 = vmulq_f32(vextq_s8(v82, v82, 8uLL), v82);
          v85 = vaddq_f32(vextq_s8(v83, v83, 4uLL), vextq_s8(v83, v83, 8uLL));
          v86 = vaddq_f32(vextq_s8(v84, v84, 4uLL), vextq_s8(v84, v84, 8uLL));
          v87 = vextq_s8(v30, v30, 8uLL);
          v88 = vbslq_s8(v53, vmulq_lane_f32(v87, *v76.i8, 1), v85);
          v89 = vbslq_s8(v53, vmulq_lane_f32(v87, *v78.i8, 1), v86);
          v90 = vrev64q_s32(v76);
          v91 = vrev64q_s32(v78);
          v92 = vbslq_s8(v53, vbslq_s8(vcgtq_f32(v63, v90), v88, v90), v85);
          v88.i64[0] = v79.i64[0];
          v88.i64[1] = v92.i64[1];
          v79.i64[1] = vbslq_s8(v53, vbslq_s8(vcgtq_f32(v63, v91), v89, *&v91), v86).i64[1];
          v93 = vbslq_s8(v62, v23, v88);
          v94 = vbslq_s8(v62, v23, v79);
          v95 = vmulq_f32(vdupq_laneq_s64(v93, 1), v93);
          v96 = vmulq_f32(vdupq_laneq_s64(v94, 1), v94);
          v97 = vmulq_f32(v77, vextq_s8(v93, v95, 8uLL));
          v98 = vmulq_f32(v77, vextq_s8(v94, v96, 8uLL));
          v99 = vaddq_f32(vextq_s8(v97, v97, 4uLL), vdupq_lane_s64(v97.i64[0], 0));
          v100 = vaddq_f32(vextq_s8(v98, v98, 4uLL), vdupq_lane_s64(v98.i64[0], 0));
          v101 = vextq_s8(v99, v95, 8uLL);
          v102.i64[0] = vextq_s8(v99, v95, 0xCuLL).u64[0];
          *v97.i8 = vext_s8(*v95.i8, *&vextq_s8(v99, v99, 8uLL), 4uLL);
          v95.i64[1] = v99.i64[1];
          v103 = vextq_s8(v100, v96, 8uLL);
          v104.i64[0] = vextq_s8(v100, v96, 0xCuLL).u64[0];
          v96.i64[1] = v100.i64[1];
          v102.i64[1] = v97.i64[0];
          *&v104.u32[2] = vext_s8(*v96.i8, *&vextq_s8(v100, v100, 8uLL), 4uLL);
          v105 = vbslq_s8(v53, vaddq_f32(v101, v102), v95);
          v106 = vbslq_s8(v53, vaddq_f32(v103, v104), v96);
          v107 = vaddq_f32(v22, vextq_s8(v105, v105, 8uLL));
          v108 = vaddq_f32(v22, vextq_s8(v106, v106, 8uLL));
          v109 = vextq_s8(*v19, *v19, 8uLL);
          v110 = vaddq_f32(v109, vmulq_f32(*v19, v108));
          v111 = *(a2 + 22);
          v112 = vsubq_f32(vaddq_f32(v109, vmulq_f32(*v19, v107)), v9);
          v113 = *(a2 + 10);
          if (v5)
          {
            v114 = vaddq_s32(vcvtq_s32_f32(v112), vcltzq_f32(v112));
            v115 = vsubq_f32(v112, vcvtq_f32_s32(v114)).u64[0];
            v116 = vsubq_f32(v110, v9);
            v117 = vaddq_s32(vcvtq_s32_f32(v116), vcltzq_f32(v116));
            v118 = vsubq_f32(v116, vcvtq_f32_s32(v117)).u64[0];
            *v114.i8 = vmla_s32(vzip1_s32(*v114.i8, *v117.i8), vzip2_s32(*v114.i8, *v117.i8), vdup_n_s32(v111));
            v119 = (v113 + 16 * v114.i32[0]);
            v120 = vaddq_f32(*v119, vmulq_n_f32(vsubq_f32(v119[1], *v119), v115.f32[0]));
            v121 = vaddq_f32(v120, vmulq_lane_f32(vsubq_f32(vaddq_f32(v119[v111], vmulq_n_f32(vsubq_f32(v119[v111 + 1], v119[v111]), v115.f32[0])), v120), v115, 1));
            v122 = (v113 + 16 * v114.i32[1]);
            v123 = vaddq_f32(*v122, vmulq_n_f32(vsubq_f32(v122[1], *v122), v118.f32[0]));
            v124 = vaddq_f32(v123, vmulq_lane_f32(vsubq_f32(vaddq_f32(v122[v111], vmulq_n_f32(vsubq_f32(v122[v111 + 1], v122[v111]), v118.f32[0])), v123), v118, 1));
          }

          else
          {
            v125 = vaddq_f32(v112, v13);
            v126 = vcvtq_s32_f32(v125);
            v127 = vaddq_f32(vsubq_f32(v110, v9), v13);
            v128 = vcvtq_s32_f32(v127);
            *v125.f32 = vadd_s32(*v126.i8, *&vcgtq_f32(vcvtq_f32_s32(v126), v125));
            *v127.f32 = vadd_s32(*v128.i8, *&vcgtq_f32(vcvtq_f32_s32(v128), v127));
            *v127.f32 = vmla_s32(vzip1_s32(*v125.f32, *v127.f32), vzip2_s32(*v125.f32, *v127.f32), vdup_n_s32(v111));
            v129 = v127.i32[1];
            v121 = *(v113 + 16 * v127.i32[0]);
            v124 = *(v113 + 16 * v129);
          }

          v130 = vmvnq_s8(v53);
          v131 = vmvnq_s8(v52);
          v132 = vmvnq_s8(v62);
          v133 = vbslq_s8(v52, vsubq_f32(v46, vmulq_n_f32(v90, *v76.i32)), v64);
          v134 = vbslq_s8(v52, vsubq_f32(v46, vmulq_n_f32(v91, *v78.i32)), v65);
          v135 = vandq_s8(v133, v130);
          v136 = vandq_s8(v134, v130);
          v137 = vorrq_s8(vandq_s8(v53, vmulq_laneq_f32(vorrq_s8(vandq_s8(v53, vmulq_f32(v133, v133)), v135), v121, 3)), v135);
          v138 = vorrq_s8(vandq_s8(v53, vmulq_laneq_f32(vorrq_s8(vandq_s8(v53, vmulq_f32(v134, v134)), v136), v124, 3)), v136);
          v139 = *(v19 + 80);
          v140 = vmulq_laneq_f32(v139, v137, 2);
          v141 = vabsq_f32(vextq_s8(v137, v137, 0xCuLL));
          v142 = vabsq_f32(vextq_s8(v138, v138, 0xCuLL));
          v143 = vminq_f32(vrsqrteq_f32(v141), v31);
          v144 = vminq_f32(vrsqrteq_f32(v142), v31);
          v145 = vminq_f32(vmulq_f32(v143, vrsqrtsq_f32(vmulq_f32(v143, v141), v143)), v31);
          v146 = vminq_f32(vmulq_f32(v144, vrsqrtsq_f32(vmulq_f32(v144, v142), v144)), v31);
          v147 = vorrq_s8(vandq_s8(v53, vmulq_f32(v141, vminq_f32(vmulq_f32(v145, vrsqrtsq_f32(vmulq_f32(v141, v145), v145)), v31))), v135);
          v148 = vorrq_s8(vandq_s8(v53, vmulq_f32(v142, vminq_f32(vmulq_f32(v146, vrsqrtsq_f32(vmulq_f32(v142, v146), v146)), v31))), v136);
          v149 = *(v19 + 304);
          v150 = *(v19 + 320);
          v151 = vorrq_s8(vandq_s8(vbslq_s8(vcgtq_f32(v63, vrev64q_s32(v147)), v147, v149), v53), v135);
          v152 = vorrq_s8(vandq_s8(vbslq_s8(vcgtq_f32(v63, vrev64q_s32(v148)), v148, v149), v53), v136);
          v148.i64[0] = vextq_s8(v152, v152, 8uLL).u64[0];
          *v147.f32 = vmul_f32(*v149.i8, vqtbl1_s8(v151, *&v150));
          *v145.f32 = vmul_f32(*v149.i8, vqtbl1_s8(v152, *&v150));
          *v147.f32 = vadd_f32(*v147.f32, vdup_lane_s32(*v147.f32, 0));
          *&v147.u32[2] = vext_s8(*v147.f32, *&vextq_s8(v151, v151, 8uLL), 4uLL);
          *&v148.u32[2] = vext_s8(vadd_f32(*v145.f32, vdup_lane_s32(*v145.f32, 0)), *v148.f32, 4uLL);
          v154 = *(v19 + 336);
          v153 = *(v19 + 352);
          v155 = vorrq_s8(vandq_s8(v53, vaddq_f32(v154, v147)), vandq_s8(v151, v130));
          v156 = vorrq_s8(vandq_s8(v53, vaddq_f32(v154, v148)), vandq_s8(v152, v130));
          v147.i64[0] = vsubq_f32(v154, v30).u64[0];
          v148.i64[0] = v147.i64[0];
          v148.i64[1] = v155.i64[1];
          v147.i64[1] = v156.i64[1];
          v157 = vorrq_s8(vandq_s8(vrev64q_s32(vsubq_f32(vnegq_f32(v148), v30)), v52), vandq_s8(v148, v131));
          v158 = vorrq_s8(vandq_s8(vrev64q_s32(vsubq_f32(vnegq_f32(v147), v30)), v52), vandq_s8(v147, v131));
          v159 = vorrq_s8(vandq_s8(v157, v130), vandq_s8(v53, vmaxq_f32(v157, v153)));
          v160 = vorrq_s8(vandq_s8(v158, v130), vandq_s8(v53, vmaxq_f32(v158, v153)));
          v161 = *(v19 + 368);
          v162 = *(v19 + 384);
          v163 = vorrq_s8(vandq_s8(v52, vsubq_f32(v159, v161)), vandq_s8(v159, v131));
          v164 = vorrq_s8(vandq_s8(v52, vsubq_f32(v160, v161)), vandq_s8(v160, v131));
          v165 = vorrq_s8(vandq_s8(v62, vsubq_f32(vextq_s8(v163, v163, 0xCuLL), v163)), vandq_s8(v163, v132));
          v166 = vorrq_s8(vandq_s8(v62, vsubq_f32(vextq_s8(v164, v164, 0xCuLL), v164)), vandq_s8(v164, v132));
          v167 = vrev64q_s32(v165);
          v168 = vrev64q_s32(v166);
          v169 = vminq_f32(vmaxq_f32(vrecpeq_f32(v167), v32), v31);
          v170 = vminq_f32(vmaxq_f32(vrecpeq_f32(v168), v32), v31);
          v171 = vminq_f32(vmaxq_f32(vmulq_f32(v169, vrecpsq_f32(v167, v169)), v32), v31);
          v172 = vminq_f32(vmaxq_f32(vmulq_f32(v170, vrecpsq_f32(v168, v170)), v32), v31);
          v173.i64[0] = vminq_f32(vmaxq_f32(vmulq_f32(vmulq_f32(v171, vrecpsq_f32(v167, v171)), v165), v161), v154).u64[0];
          v172.i64[0] = vminq_f32(vmaxq_f32(vmulq_f32(vmulq_f32(v172, vrecpsq_f32(v168, v172)), v166), v161), v154).u64[0];
          v161.i64[0] = v173.i64[0];
          v161.i64[1] = v165.i64[1];
          v167.i64[0] = v172.i64[0];
          v167.i64[1] = v166.i64[1];
          v173.i64[1] = vdupq_laneq_s64(v165, 1).u64[0];
          v172.i64[1] = vdupq_laneq_s64(v166, 1).u64[0];
          v174 = vsubq_f32(v154, vmulq_f32(v38, vrev64q_s32(v173)));
          v175 = vsubq_f32(v154, vmulq_f32(v38, vrev64q_s32(v172)));
          v176 = vorrq_s8(vandq_s8(v52, v174), vandq_s8(v161, v131));
          v177 = vorrq_s8(vandq_s8(v52, v175), vandq_s8(v167, v131));
          v178 = vorrq_s8(vandq_s8(v62, vmulq_f32(v176, v176)), vandq_s8(v176, v132));
          v179 = vorrq_s8(vandq_s8(v62, vmulq_f32(v177, v177)), vandq_s8(v177, v132));
          v180 = vbslq_s8(v162, v121, vaddq_f32(v140, vmulq_laneq_f32(v121, v178, 2)));
          v181 = vbslq_s8(v162, v124, vaddq_f32(vmulq_laneq_f32(v139, v138, 2), vmulq_laneq_f32(v124, v179, 2)));
          v182 = (v11 + 16 * v15);
          *v182 = vsubq_f32(v180, vmulq_n_f32(v180, vmulq_lane_f32(v178, *v178.f32, 1).f32[0]));
          v182[1] = vsubq_f32(v181, vmulq_n_f32(v181, vmulq_lane_f32(v179, *v179.f32, 1).f32[0]));
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v183 = *(this + 51);
        v184 = *(v183 + 32);
        v185 = *(v183 + 48);
        v186 = vsubq_f32(vaddq_f32(vmulq_f32(v17, *(v183 + 16)), vextq_s8(*(v183 + 16), *(v183 + 16), 8uLL)), v184);
        v187 = vmulq_f32(v185, v186);
        v188 = vaddq_f32(vextq_s8(v187, v187, 4uLL), vextq_s8(v187, v187, 8uLL));
        v189 = *(v183 + 64);
        v190 = *(v183 + 96);
        v191 = *(v183 + 112);
        v192 = vminq_f32(vmaxq_f32(vrecpeq_f32(v189), v190), v191);
        v193 = vminq_f32(vmaxq_f32(vmulq_f32(v192, vrecpsq_f32(v189, v192)), v190), v191);
        v194 = vmulq_f32(vmulq_f32(v193, vrecpsq_f32(v189, v193)), vnegq_f32(vdupq_laneq_s32(v188, 3)));
        v195 = *(v183 + 128);
        v196 = *(v183 + 144);
        v197 = vbslq_s8(vcgtq_f32(v195, vextq_s8(v188, v188, 0xCuLL)), v194, v195);
        v198 = vsubq_f32(v196, v197);
        v197.i64[1] = v188.i64[1];
        v199 = *(v183 + 176);
        *v188.f32 = vmin_f32(vadd_f32(*v196.f32, *&vorrq_s8(*(v183 + 160), v198)), *v199.f32);
        v201 = *(v183 + 192);
        v200 = *(v183 + 208);
        *v188.f32 = vmax_f32(*v188.f32, *v201.f32);
        v188.i64[1] = v186.i64[0];
        *v202.f32 = vand_s8(vqtbl1_s8(v188, *v200.i8), *(v183 + 224));
        *&v202.u32[2] = vqtbl1_s8(v188, *&vextq_s8(v200, v200, 8uLL));
        *v188.f32 = vext_s8(*&v202.u32[2], *v202.f32, 4uLL);
        *&v188.u32[2] = vext_s8(*v202.f32, *&v202.u32[2], 4uLL);
        v204 = *(v183 + 240);
        v203 = *(v183 + 256);
        v205 = vbslq_s8(v203, vsubq_f32(v201, v202), vbslq_s8(v204, vaddq_f32(v196, vmulq_f32(v195, v188)), v197));
        v206 = vbslq_s8(v204, vaddq_f32(v190, vmulq_lane_f32(v205, *v202.f32, 1)), v205);
        v207 = vbslq_s8(v203, vaddq_f32(v199, vmulq_laneq_f32(v202, v206, 2)), v202);
        v208 = vnegq_f32(vextq_s8(v206, v206, 8uLL));
        v210 = *(v183 + 272);
        v209 = *(v183 + 288);
        v211 = vbslq_s8(v204, vmaxq_f32(v208, v210), v205);
        v212 = vminq_f32(vrsqrteq_f32(v211), v210);
        v213 = vminq_f32(vmulq_f32(v212, vrsqrtsq_f32(vmulq_f32(v212, v211), v212)), v210);
        v214 = vbslq_s8(v203, vsubq_f32(v196, vmulq_f32(vbslq_s8(v203, vmulq_f32(vminq_f32(vmulq_f32(v213, vrsqrtsq_f32(vmulq_f32(v213, v211), v213)), v210), v211), v211), v207)), v202);
        v215 = vbslq_s8(v209, vandq_s8(v196, vcgtq_f32(v210, v214)), v214);
        v216 = vbslq_s8(v209, vmulq_lane_f32(v215, *v215.f32, 1), v214);
        v217 = vbslq_s8(v203, vsubq_f32(vmulq_n_f32(v195, v216.f32[0]), v216), v211);
        v218 = vrev64q_s32(v185);
        v219 = vnegq_f32(v185);
        v220.i64[0] = v218.i64[0];
        v220.i64[1] = v216.i64[1];
        v221 = vbslq_s8(v209, vrev64q_s32(v219), v220);
        v222 = vmulq_f32(vextq_s8(v221, v221, 8uLL), v221);
        v223 = vaddq_f32(vextq_s8(v222, v222, 4uLL), vextq_s8(v222, v222, 8uLL));
        v224 = vrev64q_s32(v217);
        v219.i64[1] = vbslq_s8(v204, vbslq_s8(vcgtq_f32(v210, v224), vbslq_s8(v204, vmulq_lane_f32(vdupq_lane_s64(*&v189, 0), *&v217, 1), v223), *&v224), v223).i64[1];
        v225 = vbslq_s8(v209, v185, v219);
        v226 = vmulq_f32(vdupq_laneq_s64(v225, 1), v225);
        v227 = vmulq_f32(v218, vextq_s8(v225, v226, 8uLL));
        v228 = vaddq_f32(vextq_s8(v227, v227, 4uLL), vdupq_lane_s64(v227.i64[0], 0));
        v229 = vextq_s8(v228, v226, 8uLL);
        v220.i64[0] = vextq_s8(v228, v226, 0xCuLL).u64[0];
        v226.i64[1] = v228.i64[1];
        v220.u64[1] = vext_s8(*v226.i8, *&vextq_s8(v228, v228, 8uLL), 4uLL);
        v230 = vbslq_s8(v204, vaddq_f32(v229, v220), v226);
        v231 = *(a2 + 22);
        v232 = vsubq_f32(vaddq_f32(vextq_s8(*v183, *v183, 8uLL), vmulq_f32(*v183, vaddq_f32(v184, vextq_s8(v230, v230, 8uLL)))), v9);
        v233 = *(a2 + 10);
        if (v5)
        {
          v234 = vaddq_s32(vcvtq_s32_f32(v232), vcltzq_f32(v232));
          v235 = vsubq_f32(v232, vcvtq_f32_s32(v234)).u64[0];
          v236 = (v233 + 16 * (v234.i32[0] + v234.i32[1] * v231));
          v237 = vaddq_f32(*v236, vmulq_n_f32(vsubq_f32(v236[1], *v236), v235.f32[0]));
          v238 = vaddq_f32(v237, vmulq_lane_f32(vsubq_f32(vaddq_f32(v236[v231], vmulq_n_f32(vsubq_f32(v236[v231 + 1], v236[v231]), v235.f32[0])), v237), v235, 1));
        }

        else
        {
          v239 = vaddq_f32(v232, v13);
          v240 = vcvtq_s32_f32(v239);
          v239.i64[0] = vaddq_s32(v240, vcgtq_f32(vcvtq_f32_s32(v240), v239)).u64[0];
          v238 = *(v233 + 16 * (v239.i32[0] + v239.i32[1] * v231));
        }

        v241 = vmvnq_s8(v204);
        v242 = vmvnq_s8(v203);
        v243 = vmvnq_s8(v209);
        v244 = vbslq_s8(v203, vsubq_f32(v201, vmulq_n_f32(v224, *v217.i32)), v211);
        v245 = vandq_s8(v204, vmulq_f32(v244, v244));
        v246 = vandq_s8(v244, v241);
        v247 = vorrq_s8(vandq_s8(v204, vmulq_laneq_f32(vorrq_s8(v245, v246), v238, 3)), v246);
        v248 = vabsq_f32(vextq_s8(v247, v247, 0xCuLL));
        v249 = vminq_f32(vrsqrteq_f32(v248), v191);
        v250 = vminq_f32(vmulq_f32(v249, vrsqrtsq_f32(vmulq_f32(v249, v248), v249)), v191);
        v251 = vorrq_s8(vandq_s8(v204, vmulq_f32(vminq_f32(vmulq_f32(v250, vrsqrtsq_f32(vmulq_f32(v250, v248), v250)), v191), v248)), v246);
        v252 = *(v183 + 304);
        v253 = vorrq_s8(vandq_s8(vbslq_s8(vcgtq_f32(v210, vrev64q_s32(v251)), v251, v252), v204), v246);
        *v252.f32 = vmul_f32(*v252.f32, vqtbl1_s8(v253, *(v183 + 320)));
        *v252.f32 = vadd_f32(*v252.f32, vdup_lane_s32(*v252.f32, 0));
        *&v252.u32[2] = vext_s8(*v252.f32, *&vextq_s8(v253, v253, 8uLL), 4uLL);
        v254 = *(v183 + 336);
        v255 = vorrq_s8(vandq_s8(v204, vaddq_f32(v254, v252)), vandq_s8(v253, v241));
        v252.i64[0] = vsubq_f32(v254, v189).u64[0];
        v252.i64[1] = v255.i64[1];
        v256 = vorrq_s8(vandq_s8(vrev64q_s32(vsubq_f32(vnegq_f32(v252), v189)), v203), vandq_s8(v252, v242));
        v257 = vorrq_s8(vandq_s8(v256, v241), vandq_s8(v204, vmaxq_f32(v256, *(v183 + 352))));
        v258 = *(v183 + 368);
        v259 = vorrq_s8(vandq_s8(v203, vsubq_f32(v257, v258)), vandq_s8(v257, v242));
        v260 = vorrq_s8(vandq_s8(v209, vsubq_f32(vextq_s8(v259, v259, 0xCuLL), v259)), vandq_s8(v259, v243));
        v261 = vrev64q_s32(v260);
        v262 = vminq_f32(vmaxq_f32(vrecpeq_f32(v261), v190), v191);
        v263 = vminq_f32(vmaxq_f32(vmulq_f32(v262, vrecpsq_f32(v261, v262)), v190), v191);
        v263.i64[0] = vminq_f32(vmaxq_f32(vmulq_f32(vmulq_f32(v263, vrecpsq_f32(v261, v263)), v260), v258), v254).u64[0];
        v264.i64[0] = v263.i64[0];
        v264.i64[1] = v260.i64[1];
        v263.i64[1] = vdupq_laneq_s64(v260, 1).u64[0];
        v265 = vorrq_s8(vandq_s8(v203, vsubq_f32(v254, vmulq_f32(v195, vrev64q_s32(v263)))), vandq_s8(v264, v242));
        v266 = vorrq_s8(vandq_s8(v209, vmulq_f32(v265, v265)), vandq_s8(v265, v243));
        v267 = vbslq_s8(*(v183 + 384), v238, vaddq_f32(vmulq_laneq_f32(*(v183 + 80), v247, 2), vmulq_laneq_f32(v238, v266, 2)));
        *(v11 + 16 * v15) = vsubq_f32(v267, vmulq_n_f32(v267, vmulq_lane_f32(v266, *v266.f32, 1).f32[0]));
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcPageCurlBackground::GetDOD(HgcPageCurlBackground *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v4 = &HGRectNull;
  }

  else
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      HGRectGrow(v6, v5, v7);
    }

    v4 = &HGRectInfinite;
  }

  return *v4;
}

uint64_t HgcPageCurlBackground::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(DOD, v9, v10);
  }

  return DOD;
}

void HgcPageCurlBackground::HgcPageCurlBackground(HgcPageCurlBackground *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DB090;
  operator new();
}

void HgcPageCurlBackground::~HgcPageCurlBackground(HGNode *this)
{
  *this = &unk_2871DB090;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C407DC911DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcPageCurlBackground::~HgcPageCurlBackground(this);

  HGObject::operator delete(v1);
}

uint64_t HgcPageCurlBackground::SetParameter(HgcPageCurlBackground *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v10 = *(this + 51);
        if (*v10 != a3.n128_f32[0] || *(v10 + 4) != a4 || *(v10 + 8) != a5 || *(v10 + 12) != a6)
        {
          *v10 = a3.n128_u32[0];
          *(v10 + 4) = a4;
          *(v10 + 8) = a5;
          *(v10 + 12) = a6;
          goto LABEL_40;
        }

        return 0;
      case 1:
        v13 = *(this + 51);
        if (*(v13 + 16) != a3.n128_f32[0] || *(v13 + 20) != a4 || *(v13 + 24) != a5 || *(v13 + 28) != a6)
        {
          *(v13 + 16) = a3.n128_u32[0];
          *(v13 + 20) = a4;
          *(v13 + 24) = a5;
          *(v13 + 28) = a6;
          goto LABEL_40;
        }

        return 0;
      case 2:
        v9 = *(this + 51);
        if (*(v9 + 32) != a3.n128_f32[0] || *(v9 + 36) != a4 || *(v9 + 40) != a5 || *(v9 + 44) != a6)
        {
          *(v9 + 32) = a3.n128_u32[0];
          *(v9 + 36) = a4;
          *(v9 + 40) = a5;
          *(v9 + 44) = a6;
          goto LABEL_40;
        }

        return 0;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v11 = *(this + 51);
        if (*(v11 + 48) != a3.n128_f32[0] || *(v11 + 52) != a4 || *(v11 + 56) != a5 || *(v11 + 60) != a6)
        {
          *(v11 + 48) = a3.n128_u32[0];
          *(v11 + 52) = a4;
          *(v11 + 56) = a5;
          *(v11 + 60) = a6;
          goto LABEL_40;
        }
      }

      else
      {
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a4 || *(v8 + 72) != a5 || *(v8 + 76) != a6)
        {
          *(v8 + 64) = a3.n128_u32[0];
          *(v8 + 68) = a4;
          *(v8 + 72) = a5;
          *(v8 + 76) = a6;
LABEL_40:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }
      }

      return 0;
    }

    if (a2 == 5)
    {
      v12 = *(this + 51);
      if (*(v12 + 80) != a3.n128_f32[0] || *(v12 + 84) != a4 || *(v12 + 88) != a5 || *(v12 + 92) != a6)
      {
        *(v12 + 80) = a3.n128_u32[0];
        *(v12 + 84) = a4;
        *(v12 + 88) = a5;
        *(v12 + 92) = a6;
        goto LABEL_40;
      }

      return 0;
    }

    if (a2 == 6)
    {
      v7 = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(*(this + 51) + 400) = a3;
    }
  }

  return v7;
}

float HgcPageCurlBackground::GetParameter(HgcPageCurlBackground *this, int a2, float *a3)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = *(this + 51);
        *a3 = v9[4];
        a3[1] = v9[5];
        a3[2] = v9[6];
        v4 = v9 + 7;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v5 = *(this + 51);
        *a3 = v5[8];
        a3[1] = v5[9];
        a3[2] = v5[10];
        v4 = v5 + 11;
      }
    }

    else
    {
      v7 = *(this + 51);
      *a3 = *v7;
      a3[1] = v7[1];
      a3[2] = v7[2];
      v4 = v7 + 3;
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      v8 = *(this + 51);
      *a3 = v8[20];
      a3[1] = v8[21];
      a3[2] = v8[22];
      v4 = v8 + 23;
    }

    else
    {
      if (a2 != 6)
      {
        return result;
      }

      v6 = *(this + 51);
      *a3 = v6[100];
      a3[1] = v6[101];
      a3[2] = v6[102];
      v4 = v6 + 103;
    }
  }

  else
  {
    v3 = *(this + 51);
    if (a2 == 3)
    {
      *a3 = v3[12];
      a3[1] = v3[13];
      a3[2] = v3[14];
      v4 = v3 + 15;
    }

    else
    {
      *a3 = v3[16];
      a3[1] = v3[17];
      a3[2] = v3[18];
      v4 = v3 + 19;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

const char *HgcPageCurlForeground::GetProgram(HgcPageCurlForeground *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000b0b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.9990000129, -0.01872929931);\n    const half4 c1 = half4(-0.2121143937, 0.07426100224, 1.570728779, -1.570796371);\n    const half4 c2 = half4(-3.141592741, -1.000000000, 1.000000000, 0.5000000000);\n    const half4 c3 = half4(3.000000000, -2.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*hg_Params[1].xy + hg_Params[1].zw;\n    s0.xy = s0.xy - hg_Params[2].xy;\n    s1.w = dot(s0.xy, hg_Params[3].xy);\n    s0.z = s1.w/hg_Params[4].x;\n    s1.x = select(float(c0.x), s0.z, s1.w < 0.00000h);\n    s0.z = s1.x + float(c0.y);\n    s0.z = -fabs(s0.z) + float(c0.y);\n    s0.w = clamp(fmin(s0.z, float(c0.z)), 0.00000f, 1.00000f);\n    s2.y = s0.w*float(c0.w) + float(c1.y);\n    s2.x = float(c0.y) - s0.w;\n    s2.y = s0.w*s2.y + float(c1.x);\n    s0.w = s0.w*s2.y + float(c1.z);\n    s2.x = sqrt(s2.x);\n    s0.z = s2.x*s0.w + float(c1.w);\n    s0.z = s0.z*hg_Params[4].x;\n    s0.z = select(s1.w, s0.z, s1.w < 0.00000h);\n    s2.x = float(c2.x)*hg_Params[4].x + -s0.z;\n    s0.w = hg_Params[3].x;\n    s0.z = -hg_Params[3].y;\n    s2.y = dot(s0.xy, s0.zw);\n    s0.z = -s1.x*s1.x + float(c0.y);\n    s0.y = -hg_Params[3].y;\n    s0.x = hg_Params[3].x;\n    s0.x = dot(s2.xy, s0.xy);\n    s0.y = sqrt(fabs(s0.z));\n    s0.zw = s2.xy*hg_Params[3].yx;\n    s1.z = select(float(c0.y), s0.y, s1.w < 0.00000h);\n    s2.x = dot(s1.xz, float2(c2.yz));\n    s0.y = dot(s0.zw, 1.00000f);\n    s0.z = s2.x*float(c2.w) + float(c2.w);\n    s0.xy = s0.xy + hg_Params[2].xy;\n    s2.x = fmax(s0.z, float(c0.x));\n    s0.xy = s0.xy*hg_Params[0].xy + hg_Params[0].zw;\n    s0.xy = s0.xy + hg_Params[7].xy;\n    s0.xy = s0.xy*hg_Params[7].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    s0.w = float(r0.w);\n    s0.xyz = float3(r0.xyz)*s2.xxx;\n    r0.xyz = half3(s0.www)*half3(hg_Params[6].xyz);\n    s1.y = float(c2.z) - hg_Params[6].w;\n    s0.xyz = s0.xyz*s1.yyy + float3(r0.xyz);\n    s2.y = fmax(-s1.x, float(c0.x));\n    s2.z = s2.y*s2.y;\n    s2.x = float(c2.z) - hg_Params[4].x;\n    s2.y = -s2.x - hg_Params[4].x;\n    s2.z = s0.w*s2.z;\n    s2.y = s2.y - float(c2.z);\n    s2.x = s1.w - s2.x;\n    s2.x = clamp(s2.x/s2.y, 0.00000f, 1.00000f);\n    s2.y = s2.x*float(c3.y) + float(c3.x);\n    s2.x = s2.x*s2.x;\n    s0.xyz = s2.zzz*hg_Params[5].xyz + s0.xyz;\n    s2.x = s2.x*s2.y;\n    output.color0 = s2.xxxx*-s0 + s0;\n    return output;\n}\n//MD5=26f7cb92:eab89336:68976724:cd5be2d2\n//SIG=00400000:00000000:00000000:00000001:0004:0008:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000a26\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.9990000129, -0.01872929931);\n    const float4 c1 = float4(-0.2121143937, 0.07426100224, 1.570728779, -1.570796371);\n    const float4 c2 = float4(-3.141592741, -1.000000000, 1.000000000, 0.5000000000);\n    const float4 c3 = float4(3.000000000, -2.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*hg_Params[1].xy + hg_Params[1].zw;\n    r0.xy = r0.xy - hg_Params[2].xy;\n    r1.w = dot(r0.xy, hg_Params[3].xy);\n    r0.z = r1.w/hg_Params[4].x;\n    r1.x = select(c0.x, r0.z, r1.w < 0.00000f);\n    r0.z = r1.x + c0.y;\n    r0.z = -fabs(r0.z) + c0.y;\n    r0.w = clamp(fmin(r0.z, c0.z), 0.00000f, 1.00000f);\n    r2.y = r0.w*c0.w + c1.y;\n    r2.x = c0.y - r0.w;\n    r2.y = r0.w*r2.y + c1.x;\n    r0.w = r0.w*r2.y + c1.z;\n    r2.x = sqrt(r2.x);\n    r0.z = r2.x*r0.w + c1.w;\n    r0.z = r0.z*hg_Params[4].x;\n    r0.z = select(r1.w, r0.z, r1.w < 0.00000f);\n    r2.x = c2.x*hg_Params[4].x + -r0.z;\n    r0.w = hg_Params[3].x;\n    r0.z = -hg_Params[3].y;\n    r2.y = dot(r0.xy, r0.zw);\n    r0.z = -r1.x*r1.x + c0.y;\n    r0.y = -hg_Params[3].y;\n    r0.x = hg_Params[3].x;\n    r0.x = dot(r2.xy, r0.xy);\n    r0.y = sqrt(fabs(r0.z));\n    r0.zw = r2.xy*hg_Params[3].yx;\n    r1.z = select(c0.y, r0.y, r1.w < 0.00000f);\n    r2.x = dot(r1.xz, c2.yz);\n    r0.y = dot(r0.zw, 1.00000f);\n    r0.z = r2.x*c2.w + c2.w;\n    r0.xy = r0.xy + hg_Params[2].xy;\n    r2.x = fmax(r0.z, c0.x);\n    r0.xy = r0.xy*hg_Params[0].xy + hg_Params[0].zw;\n    r0.xy = r0.xy + hg_Params[7].xy;\n    r0.xy = r0.xy*hg_Params[7].zw;\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r0.xyz = r0.xyz*r2.xxx;\n    r2.xyz = r0.www*hg_Params[6].xyz;\n    r1.y = c2.z - hg_Params[6].w;\n    r0.xyz = r0.xyz*r1.yyy + r2.xyz;\n    r2.y = fmax(-r1.x, c0.x);\n    r2.z = r2.y*r2.y;\n    r2.x = c2.z - hg_Params[4].x;\n    r2.y = -r2.x - hg_Params[4].x;\n    r2.z = r0.w*r2.z;\n    r2.y = r2.y - c2.z;\n    r2.x = r1.w - r2.x;\n    r2.x = clamp(r2.x/r2.y, 0.00000f, 1.00000f);\n    r2.y = r2.x*c3.y + c3.x;\n    r2.x = r2.x*r2.x;\n    r0.xyz = r2.zzz*hg_Params[5].xyz + r0.xyz;\n    r2.x = r2.x*r2.y;\n    output.color0 = r2.xxxx*-r0 + r0;\n    return output;\n}\n//MD5=b626b4ab:6754877a:aab8114a:ec365a38\n//SIG=00000000:00000000:00000000:00000000:0004:0008:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000b34\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.9990000129, -0.01872929931);\n    const highp vec4 c1 = vec4(-0.2121143937, 0.07426100224, 1.570728779, -1.570796371);\n    const highp vec4 c2 = vec4(-3.141592741, -1.000000000, 1.000000000, 0.5000000000);\n    const highp vec4 c3 = vec4(3.000000000, -2.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord0.xy*hg_ProgramLocal1.xy + hg_ProgramLocal1.zw;\n    r0.xy = r0.xy - hg_ProgramLocal2.xy;\n    r1.w = dot(r0.xy, hg_ProgramLocal3.xy);\n    r0.z = r1.w/hg_ProgramLocal4.x;\n    r1.x = r1.w < 0.00000 ? r0.z : c0.x;\n    r0.z = r1.x + c0.y;\n    r0.z = -abs(r0.z) + c0.y;\n    r0.w = clamp(min(r0.z, c0.z), 0.00000, 1.00000);\n    r2.y = r0.w*c0.w + c1.y;\n    r2.x = c0.y - r0.w;\n    r2.y = r0.w*r2.y + c1.x;\n    r0.w = r0.w*r2.y + c1.z;\n    r2.x = sqrt(r2.x);\n    r0.z = r2.x*r0.w + c1.w;\n    r0.z = r0.z*hg_ProgramLocal4.x;\n    r0.z = r1.w < 0.00000 ? r0.z : r1.w;\n    r2.x = c2.x*hg_ProgramLocal4.x + -r0.z;\n    r0.w = hg_ProgramLocal3.x;\n    r0.z = -hg_ProgramLocal3.y;\n    r2.y = dot(r0.xy, r0.zw);\n    r0.z = -r1.x*r1.x + c0.y;\n    r0.y = -hg_ProgramLocal3.y;\n    r0.x = hg_ProgramLocal3.x;\n    r0.x = dot(r2.xy, r0.xy);\n    r0.y = sqrt(abs(r0.z));\n    r0.zw = r2.xy*hg_ProgramLocal3.yx;\n    r1.z = r1.w < 0.00000 ? r0.y : c0.y;\n    r2.x = dot(r1.xz, c2.yz);\n    r0.y = dot(r0.zw, vec2(1.00000));\n    r0.z = r2.x*c2.w + c2.w;\n    r0.xy = r0.xy + hg_ProgramLocal2.xy;\n    r2.x = max(r0.z, c0.x);\n    r0.xy = r0.xy*hg_ProgramLocal0.xy + hg_ProgramLocal0.zw;\n    r0.xy = r0.xy + hg_ProgramLocal7.xy;\n    r0.xy = r0.xy*hg_ProgramLocal7.zw;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r0.xyz = r0.xyz*r2.xxx;\n    r2.xyz = r0.www*hg_ProgramLocal6.xyz;\n    r1.y = c2.z - hg_ProgramLocal6.w;\n    r0.xyz = r0.xyz*r1.yyy + r2.xyz;\n    r2.y = max(-r1.x, c0.x);\n    r2.z = r2.y*r2.y;\n    r2.x = c2.z - hg_ProgramLocal4.x;\n    r2.y = -r2.x - hg_ProgramLocal4.x;\n    r2.z = r0.w*r2.z;\n    r2.y = r2.y - c2.z;\n    r2.x = r1.w - r2.x;\n    r2.x = clamp(r2.x/r2.y, 0.00000, 1.00000);\n    r2.y = r2.x*c3.y + c3.x;\n    r2.x = r2.x*r2.x;\n    r0.xyz = r2.zzz*hg_ProgramLocal5.xyz + r0.xyz;\n    r2.x = r2.x*r2.y;\n    gl_FragColor = r2.xxxx*-r0 + r0;\n}\n//MD5=2561706a:1ef3d5e9:193f64ab:daef44e1\n//SIG=00000000:00000000:00000000:00000000:0004:0008:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA4D6A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344490;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FA4D820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA4D870()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA4D868);
}

uint64_t HgcPageCurlForeground::BindTexture(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 228) - *(a2 + 220));
    v8.n128_f32[0] = 1.0 / (*(a2 + 232) - *(a2 + 224));
  }

  v5.n128_f32[0] = *(a2 + 240);
  v6.n128_f32[0] = *(a2 + 244);
  (*(*a2 + 136))(a2, 7, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcPageCurlForeground::Bind(HgcPageCurlForeground *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcPageCurlForeground::RenderTile(HgcPageCurlForeground *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = 0;
    *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
    v9.i64[1] = 0x3F80000000000000;
    v10 = *(a2 + 2) - v6.i32[0];
    v11 = *(a2 + 2);
    v12 = 16 * *(a2 + 6);
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = v9;
    do
    {
      if (v10 < 2)
      {
        v15 = 0;
        v17 = v14;
      }

      else
      {
        v15 = 0;
        v16 = v10;
        v17 = v14;
        do
        {
          v18 = vaddq_f32(v17, xmmword_2603429B0);
          v19 = *(this + 51);
          v20 = *(v19 + 16);
          v21 = vextq_s8(v20, v20, 8uLL);
          v23 = *(v19 + 32);
          v22 = *(v19 + 48);
          v24 = vsubq_f32(vaddq_f32(vmulq_f32(v17, v20), v21), v23);
          v25 = vsubq_f32(vaddq_f32(vmulq_f32(v18, v20), v21), v23);
          v26 = vmulq_f32(v22, v24);
          v27 = vmulq_f32(v22, v25);
          v28 = vaddq_f32(vextq_s8(v26, v26, 4uLL), vextq_s8(v26, v26, 8uLL));
          v29 = vaddq_f32(vextq_s8(v27, v27, 4uLL), vextq_s8(v27, v27, 8uLL));
          v30 = *(v19 + 64);
          v31 = vextq_s8(v30, v30, 8uLL);
          v33 = *(v19 + 112);
          v32 = *(v19 + 128);
          v34 = vminq_f32(vmaxq_f32(vrecpeq_f32(v31), v33), v32);
          v35 = vminq_f32(vmaxq_f32(vmulq_f32(v34, vrecpsq_f32(v31, v34)), v33), v32);
          v36 = vmulq_f32(v35, vrecpsq_f32(v31, v35));
          v37 = vbslq_s8(vcgtq_f32(v33, vextq_s8(v28, v28, 0xCuLL)), vdupq_laneq_s64(vmulq_laneq_f32(v36, v28, 3), 1), v33);
          v38 = vbslq_s8(vcgtq_f32(v33, vextq_s8(v29, v29, 0xCuLL)), vdupq_laneq_s64(vmulq_laneq_f32(v36, v29, 3), 1), v33);
          v39 = vextq_s8(v28, v37, 8uLL);
          v40.i64[0] = v37.i64[0];
          v41 = vmulq_n_f32(v39, *v37.i32);
          v37.i64[1] = v28.i64[1];
          v42 = vextq_s8(v29, v38, 8uLL);
          v43 = *(v19 + 144);
          v44 = *(v19 + 160);
          v45.i64[0] = v24.i64[0];
          v45.i64[1] = vdupq_laneq_s64(vaddq_f32(v43, vorrq_s8(v44, vaddq_f32(v43, v39))), 1).u64[0];
          v46 = vrev64q_s32(v45);
          v45.i64[0] = v25.i64[0];
          v45.i64[1] = vdupq_laneq_s64(vaddq_f32(v43, vorrq_s8(v44, vaddq_f32(v43, v42))), 1).u64[0];
          v47 = vminq_f32(vrev64q_s32(v45), v43);
          v48 = vmaxq_f32(vminq_f32(v46, v43), v33);
          v49 = vmaxq_f32(v47, v33);
          v51 = *(v19 + 176);
          v50 = *(v19 + 192);
          v52 = vminq_f32(v48, v51);
          v53 = vminq_f32(v49, v51);
          v54.i64[0] = vextq_s8(v52, v24, 0xCuLL).u64[0];
          *&v54.u32[2] = vext_s8(*v24.f32, *&vextq_s8(v52, v52, 8uLL), 4uLL);
          v48.i64[0] = vextq_s8(v53, v25, 0xCuLL).u64[0];
          *&v48.u32[2] = vext_s8(*v25.f32, *&vextq_s8(v53, v53, 8uLL), 4uLL);
          v55 = vsubq_f32(v51, v54);
          v56 = vsubq_f32(v51, v48);
          v57 = vbslq_s8(v50, v55, vaddq_f32(v33, vmulq_laneq_f32(vbslq_s8(v50, v55, vaddq_f32(v51, vmulq_f32(v43, vextq_s8(v52, v24, 8uLL)))), v52, 3)));
          v58 = vbslq_s8(v50, v56, vaddq_f32(v33, vmulq_laneq_f32(vbslq_s8(v50, v56, vaddq_f32(v51, vmulq_f32(v43, vextq_s8(v53, v25, 8uLL)))), v53, 3)));
          v59 = *(v19 + 208);
          v60 = *(v19 + 224);
          v61 = vminq_f32(vrsqrteq_f32(v57), v59);
          v62 = vminq_f32(vrsqrteq_f32(v58), v59);
          v63 = vminq_f32(vmulq_f32(v61, vrsqrtsq_f32(vmulq_f32(v61, v57), v61)), v59);
          v64 = vminq_f32(vmulq_f32(v62, vrsqrtsq_f32(vmulq_f32(v62, v58), v62)), v59);
          v65.i64[0] = v38.i64[0];
          v38.i64[1] = v29.i64[1];
          v66 = vmulq_n_f32(vaddq_f32(v59, vmulq_n_f32(vrev64q_s32(vaddq_f32(v59, vmulq_lane_f32(v52, *v57.f32, 1))), vmulq_f32(vminq_f32(vmulq_f32(v63, vrsqrtsq_f32(vmulq_f32(v63, v57), v63)), v59), v57).f32[0])), v30.f32[0]);
          v40.i64[1] = vdupq_laneq_s64(v28, 1).u64[0];
          v67 = vrev64q_s32(v40);
          v65.i64[1] = vdupq_laneq_s64(v29, 1).u64[0];
          v68 = vrev64q_s32(v65);
          v69 = vcgtq_f32(v51, v67);
          v70 = vcgtq_f32(v51, v68);
          v71 = vextq_s8(vbslq_s8(v69, v66, v67), v24, 8uLL);
          v72 = vextq_s8(vbslq_s8(v70, vmulq_n_f32(vaddq_f32(v59, vmulq_n_f32(vrev64q_s32(vaddq_f32(v59, vmulq_lane_f32(v53, *v58.f32, 1))), vmulq_f32(vminq_f32(vmulq_f32(v64, vrsqrtsq_f32(vmulq_f32(v64, v58), v64)), v59), v58).f32[0])), v30.f32[0]), v68), v25, 8uLL);
          v73 = vmulq_laneq_f32(v30, v60, 2);
          v74 = vsubq_f32(v73, v71);
          v75 = vextq_s8(v22, v22, 4uLL);
          v58.i64[1] = v75.i64[1];
          v58.i64[0] = v24.i64[0];
          v75.i64[0] = v25.i64[0];
          v76 = vsubq_f32(v73, v72);
          v77 = vnegq_f32(v22);
          v78 = vextq_s8(v77, v77, 0xCuLL);
          v80 = *(v19 + 240);
          v79 = *(v19 + 256);
          v81 = vbslq_s8(v80, v78, v58);
          v82 = vbslq_s8(v80, v78, v75);
          v83 = vmulq_f32(vextq_s8(v81, v81, 8uLL), v81);
          v84 = vmulq_f32(vextq_s8(v82, v82, 8uLL), v82);
          v85 = vbslq_s8(v50, v74, vaddq_f32(v83, vrev64q_s32(v83)));
          v86 = vbslq_s8(v50, v76, vaddq_f32(v84, vrev64q_s32(v84)));
          v84.i64[0] = v77.i64[0];
          v84.i64[1] = vsubq_f32(v43, v41).i64[1];
          v77.i64[1] = vsubq_f32(v43, vmulq_n_f32(v42, *&v38)).i64[1];
          v87 = vbslq_s8(v50, v22, v84);
          v88 = vbslq_s8(v50, v22, v77);
          v89 = vmulq_f32(v87, v85);
          v90 = vmulq_f32(v88, v86);
          v91 = vaddq_f32(v89, vrev64q_s32(v89));
          v92 = vaddq_f32(v90, vrev64q_s32(v90));
          v93 = vextq_s8(v87, v91, 8uLL);
          v94 = vabsq_f32(vextq_s8(v93, v93, 0xCuLL));
          v95 = vextq_s8(v88, v92, 8uLL);
          v96 = vabsq_f32(vextq_s8(v95, v95, 0xCuLL));
          v97 = vminq_f32(vrsqrteq_f32(v94), v60);
          v98 = vminq_f32(vrsqrteq_f32(v96), v60);
          v99 = vminq_f32(vmulq_f32(v97, vrsqrtsq_f32(vmulq_f32(v97, v94), v97)), v60);
          v100 = vminq_f32(vmulq_f32(v98, vrsqrtsq_f32(vmulq_f32(v98, v96), v98)), v60);
          v94.i64[0] = vbslq_s8(v50, v91, vmulq_f32(vminq_f32(vmulq_f32(v99, vrsqrtsq_f32(vmulq_f32(v99, v94), v99)), v60), v94)).u64[0];
          v96.i64[0] = vbslq_s8(v50, v92, vmulq_f32(vminq_f32(vmulq_f32(v100, vrsqrtsq_f32(vmulq_f32(v100, v96), v100)), v60), v96)).u64[0];
          *v91.f32 = vqtbl1_s8(v22, *v79.i8);
          v92.i64[0] = vextq_s8(v79, v79, 8uLL).u64[0];
          *&v91.u32[2] = vqtbl1_s8(v22, *v92.i8);
          v101 = vmulq_f32(vdupq_lane_s64(v85.i64[0], 0), v91);
          v102 = vmulq_f32(vdupq_lane_s64(v86.i64[0], 0), v91);
          v86.i64[0] = vextq_s8(v101, v101, 8uLL).u64[0];
          v94.i64[1] = v101.i64[1];
          v99.i64[0] = vextq_s8(v102, v102, 8uLL).u64[0];
          v100.i64[0] = v96.i64[0];
          v100.i64[1] = v102.i64[1];
          v103 = vbslq_s8(v80, vbslq_s8(v69, vextq_s8(v94, v94, 0xCuLL), v43), v37);
          v104 = vbslq_s8(v80, vbslq_s8(v70, vextq_s8(v100, v100, 0xCuLL), v43), v38);
          *v80.f32 = vqtbl1_s8(v103, *v79.i8);
          *&v80.u32[2] = vqtbl1_s8(v103, *v92.i8);
          *v69.f32 = vqtbl1_s8(v104, *v79.i8);
          *&v69.u32[2] = vqtbl1_s8(v104, *v92.i8);
          v105 = *(v19 + 272);
          v106 = vmulq_f32(v105, v80);
          v107 = vmulq_f32(v105, v69);
          v108 = vrev64q_s32(v106);
          v106.i64[0] = vaddq_f32(v106, v108).u64[0];
          *v108.f32 = vadd_f32(*v86.f32, vext_s8(*v94.f32, *v86.f32, 4uLL));
          *v70.i8 = vadd_f32(*v99.f32, vext_s8(*v96.f32, *v99.f32, 4uLL));
          v109 = vbslq_s8(v50, v94, v108);
          v110 = vbslq_s8(v50, v100, v70);
          v111 = vaddq_f32(v105, vmulq_f32(v105, vdupq_lane_s64(v106.i64[0], 0)));
          v112 = vaddq_f32(v105, vmulq_f32(v105, vdupq_lane_s64(vaddq_f32(v107, vrev64q_s32(v107)).i64[0], 0)));
          v113 = vaddq_f32(v23, v109);
          v106.i64[0] = v113.i64[0];
          v106.i64[1] = v111.i64[1];
          v114 = vaddq_f32(v23, v110);
          v23.i64[0] = v114.i64[0];
          v23.i64[1] = v112.i64[1];
          v115 = vextq_s8(*v19, *v19, 8uLL);
          v116 = vaddq_f32(v115, vmulq_f32(*v19, v23));
          v117 = *(a2 + 22);
          v118 = vsubq_f32(vaddq_f32(v115, vmulq_f32(*v19, v106)), v9);
          v119 = *(a2 + 10);
          if (v5)
          {
            v120 = vaddq_s32(vcvtq_s32_f32(v118), vcltzq_f32(v118));
            v121 = vsubq_f32(v118, vcvtq_f32_s32(v120)).u64[0];
            v122 = vsubq_f32(v116, v9);
            v123 = vaddq_s32(vcvtq_s32_f32(v122), vcltzq_f32(v122));
            v124 = vsubq_f32(v122, vcvtq_f32_s32(v123)).u64[0];
            *v120.i8 = vmla_s32(vzip1_s32(*v120.i8, *v123.i8), vzip2_s32(*v120.i8, *v123.i8), vdup_n_s32(v117));
            v125 = (v119 + 16 * v120.i32[0]);
            v126 = vaddq_f32(*v125, vmulq_n_f32(vsubq_f32(v125[1], *v125), v121.f32[0]));
            v127 = vaddq_f32(v126, vmulq_lane_f32(vsubq_f32(vaddq_f32(v125[v117], vmulq_n_f32(vsubq_f32(v125[v117 + 1], v125[v117]), v121.f32[0])), v126), v121, 1));
            v128 = (v119 + 16 * v120.i32[1]);
            v129 = vaddq_f32(*v128, vmulq_n_f32(vsubq_f32(v128[1], *v128), v124.f32[0]));
            v130 = vaddq_f32(v129, vmulq_lane_f32(vsubq_f32(vaddq_f32(v128[v117], vmulq_n_f32(vsubq_f32(v128[v117 + 1], v128[v117]), v124.f32[0])), v129), v124, 1));
          }

          else
          {
            v131 = vaddq_f32(v118, v13);
            v132 = vcvtq_s32_f32(v131);
            v133 = vaddq_f32(vsubq_f32(v116, v9), v13);
            v134 = vcvtq_s32_f32(v133);
            *v131.f32 = vadd_s32(*v132.i8, *&vcgtq_f32(vcvtq_f32_s32(v132), v131));
            *v133.f32 = vadd_s32(*v134.i8, *&vcgtq_f32(vcvtq_f32_s32(v134), v133));
            *v133.f32 = vmla_s32(vzip1_s32(*v131.f32, *v133.f32), vzip2_s32(*v131.f32, *v133.f32), vdup_n_s32(v117));
            v135 = v133.i32[1];
            v127 = *(v119 + 16 * v133.i32[0]);
            v130 = *(v119 + 16 * v135);
          }

          v136 = vmvnq_s8(v50);
          LODWORD(v137) = vmaxq_f32(vextq_s8(v111, v113, 8uLL), v60).u32[0];
          LODWORD(v138) = vmaxq_f32(vextq_s8(v112, v114, 8uLL), v60).u32[0];
          v139 = vmulq_n_f32(v127, v137);
          v140 = vmulq_n_f32(v130, v138);
          v141 = *(v19 + 288);
          v142 = *(v19 + 304);
          v143 = vbslq_s8(v141, v127, v139);
          v144 = vbslq_s8(v141, v130, v140);
          v146 = *(v19 + 80);
          v145 = *(v19 + 96);
          v147 = vmulq_laneq_f32(v145, v143, 3);
          v148 = vmulq_laneq_f32(v145, v144, 3);
          v149 = vsubq_f32(v105, vextq_s8(v145, v145, 8uLL));
          v150 = vbslq_s8(v142, v149, v103);
          v151 = vbslq_s8(v142, v149, v104);
          v152 = vbslq_s8(v141, v127, vaddq_f32(v147, vmulq_lane_f32(v143, *v150.i8, 1)));
          v153 = vbslq_s8(v141, v130, vaddq_f32(v148, vmulq_lane_f32(v144, *v151.i8, 1)));
          v154 = vmaxq_f32(vnegq_f32(vrev64q_s32(v150)), v59);
          v155 = vmaxq_f32(vnegq_f32(vrev64q_s32(v151)), v59);
          v143.i64[0] = vsubq_f32(v51, v30).u64[0];
          v147.i64[0] = v143.i64[0];
          v147.i64[1] = vmulq_lane_f32(vextq_s8(*&v9, v154, 0xCuLL), *&v154, 1).i64[1];
          v143.i64[1] = vmulq_lane_f32(vextq_s8(*&v9, v155, 0xCuLL), *&v155, 1).i64[1];
          v156 = vbslq_s8(v142, vrev64q_s32(vsubq_f32(vnegq_f32(v147), v30)), v147);
          v157 = vbslq_s8(v142, vrev64q_s32(vsubq_f32(vnegq_f32(v143), v30)), v143);
          v156.i64[1] = vmulq_laneq_f32(v156, v152, 3).i64[1];
          v157.i64[1] = vmulq_laneq_f32(v157, v153, 3).i64[1];
          v158 = *(v19 + 320);
          v159 = *(v19 + 336);
          v160 = vbslq_s8(v142, vsubq_f32(v156, v158), v156);
          v161 = vbslq_s8(v142, vsubq_f32(v157, v158), v157);
          v162 = vorrq_s8(vandq_s8(v50, vsubq_f32(vextq_s8(v150, v150, 0xCuLL), v160)), vandq_s8(v160, v136));
          v163 = vorrq_s8(vandq_s8(v50, vsubq_f32(vextq_s8(v151, v151, 0xCuLL), v161)), vandq_s8(v161, v136));
          v164 = vrev64q_s32(v162);
          v165 = vrev64q_s32(v163);
          v166 = vminq_f32(vmaxq_f32(vrecpeq_f32(v164), v43), v32);
          v167 = vminq_f32(vmaxq_f32(vrecpeq_f32(v165), v43), v32);
          v168 = vminq_f32(vmaxq_f32(vmulq_f32(v166, vrecpsq_f32(v164, v166)), v43), v32);
          v169 = vminq_f32(vmaxq_f32(vmulq_f32(v167, vrecpsq_f32(v165, v167)), v43), v32);
          v170.i64[0] = vminq_f32(vmaxq_f32(vmulq_f32(vmulq_f32(v168, vrecpsq_f32(v164, v168)), v162), v158), v51).u64[0];
          v164.i64[0] = v170.i64[0];
          v164.i64[1] = v162.i64[1];
          v169.i64[0] = vminq_f32(vmaxq_f32(vmulq_f32(vmulq_f32(v169, vrecpsq_f32(v165, v169)), v163), v158), v51).u64[0];
          v171.i64[0] = v169.i64[0];
          v171.i64[1] = v163.i64[1];
          v170.i64[1] = vdupq_laneq_s64(v162, 1).u64[0];
          v169.i64[1] = vdupq_laneq_s64(v163, 1).u64[0];
          v172 = *(v19 + 352);
          v173 = vbslq_s8(v142, vaddq_f32(v159, vmulq_f32(v172, vrev64q_s32(v170))), v164);
          v174 = vbslq_s8(v142, vaddq_f32(v159, vmulq_f32(v172, vrev64q_s32(v169))), v171);
          v175 = vorrq_s8(vandq_s8(v50, vmulq_f32(v173, v173)), vandq_s8(v173, v136));
          v176 = vorrq_s8(vandq_s8(v50, vmulq_f32(v174, v174)), vandq_s8(v174, v136));
          v177 = vbslq_s8(v141, v127, vaddq_f32(vmulq_laneq_f32(v146, v175, 2), v152));
          v178 = vbslq_s8(v141, v130, vaddq_f32(vmulq_laneq_f32(v146, v176, 2), v153));
          v179 = (v11 + 16 * v15);
          *v179 = vsubq_f32(v177, vmulq_n_f32(v177, vmulq_lane_f32(v175, *v175.f32, 1).f32[0]));
          v179[1] = vsubq_f32(v178, vmulq_n_f32(v178, vmulq_lane_f32(v176, *v176.f32, 1).f32[0]));
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v180 = *(this + 51);
        v182 = *(v180 + 32);
        v181 = *(v180 + 48);
        v183 = vsubq_f32(vaddq_f32(vmulq_f32(v17, *(v180 + 16)), vextq_s8(*(v180 + 16), *(v180 + 16), 8uLL)), v182);
        v184 = vmulq_f32(v181, v183);
        v185 = vaddq_f32(vextq_s8(v184, v184, 4uLL), vextq_s8(v184, v184, 8uLL));
        v186 = *(v180 + 64);
        v187 = vextq_s8(v186, v186, 8uLL);
        v189 = *(v180 + 112);
        v188 = *(v180 + 128);
        v190 = vminq_f32(vmaxq_f32(vrecpeq_f32(v187), v189), v188);
        v191 = vminq_f32(vmaxq_f32(vmulq_f32(v190, vrecpsq_f32(v187, v190)), v189), v188);
        v192 = vbslq_s8(vcgtq_f32(v189, vextq_s8(v185, v185, 0xCuLL)), vdupq_laneq_s64(vmulq_laneq_f32(vmulq_f32(v191, vrecpsq_f32(v187, v191)), v185, 3), 1), v189);
        v193 = vextq_s8(v185, v192, 8uLL);
        v194.i64[0] = v192.i64[0];
        v195.i64[0] = v192.i64[0];
        v195.i64[1] = v185.i64[1];
        v196 = *(v180 + 144);
        v197 = vmulq_n_f32(v193, *v192.i32);
        v192.i64[0] = v183.i64[0];
        v192.i64[1] = vdupq_laneq_s64(vaddq_f32(v196, vorrq_s8(*(v180 + 160), vaddq_f32(v196, v193))), 1).u64[0];
        v198 = vmaxq_f32(vminq_f32(vrev64q_s32(v192), v196), v189);
        v200 = *(v180 + 176);
        v199 = *(v180 + 192);
        v201 = vminq_f32(v198, v200);
        v202.i64[0] = vextq_s8(v201, v183, 0xCuLL).u64[0];
        *&v202.u32[2] = vext_s8(*v183.f32, *&vextq_s8(v201, v201, 8uLL), 4uLL);
        v203 = vsubq_f32(v200, v202);
        v204 = vbslq_s8(v199, v203, vaddq_f32(v189, vmulq_laneq_f32(vbslq_s8(v199, v203, vaddq_f32(v200, vmulq_f32(v196, vextq_s8(v201, v183, 8uLL)))), v201, 3)));
        v205 = vmulq_lane_f32(v201, *v204.f32, 1);
        v206 = *(v180 + 208);
        v207 = *(v180 + 224);
        v208 = vminq_f32(vrsqrteq_f32(v204), v206);
        v209 = vminq_f32(vmulq_f32(v208, vrsqrtsq_f32(vmulq_f32(v208, v204), v208)), v206);
        v194.i64[1] = vdupq_laneq_s64(v185, 1).u64[0];
        v210 = vrev64q_s32(v194);
        v211 = vcgtq_f32(v200, v210);
        v212 = vextq_s8(vbslq_s8(v211, vmulq_n_f32(vaddq_f32(v206, vmulq_n_f32(vrev64q_s32(vaddq_f32(v206, v205)), vmulq_f32(vminq_f32(vmulq_f32(v209, vrsqrtsq_f32(vmulq_f32(v209, v204), v209)), v206), v204).f32[0])), v186.f32[0]), v210), v183, 8uLL);
        v213 = vextq_s8(v181, v181, 4uLL);
        v213.i64[0] = v183.i64[0];
        v214 = vsubq_f32(vmulq_laneq_f32(v186, v207, 2), v212);
        v215 = vnegq_f32(v181);
        v216 = *(v180 + 240);
        v217 = *(v180 + 256);
        v218 = vbslq_s8(v216, vextq_s8(v215, v215, 0xCuLL), v213);
        v219 = vmulq_f32(vextq_s8(v218, v218, 8uLL), v218);
        v220 = vbslq_s8(v199, v214, vaddq_f32(v219, vrev64q_s32(v219)));
        v215.i64[1] = vsubq_f32(v196, v197).i64[1];
        v221 = vbslq_s8(v199, v181, v215);
        v222 = vmulq_f32(v221, v220);
        v223 = vaddq_f32(v222, vrev64q_s32(v222));
        v224 = vextq_s8(v221, v223, 8uLL);
        v225 = vabsq_f32(vextq_s8(v224, v224, 0xCuLL));
        v226 = vminq_f32(vrsqrteq_f32(v225), v207);
        v227 = vminq_f32(vmulq_f32(v226, vrsqrtsq_f32(vmulq_f32(v226, v225), v226)), v207);
        v225.i64[0] = vbslq_s8(v199, v223, vmulq_f32(vminq_f32(vmulq_f32(v227, vrsqrtsq_f32(vmulq_f32(v227, v225), v227)), v207), v225)).u64[0];
        v223.i64[0] = vextq_s8(v217, v217, 8uLL).u64[0];
        *v181.f32 = vqtbl1_s8(v181, *v223.i8);
        v181.i64[1] = v181.i64[0];
        v228 = vmulq_f32(v181, vdupq_lane_s64(v220.i64[0], 0));
        v229 = vextq_s8(v228, v228, 8uLL);
        v225.i64[1] = v228.i64[1];
        v230 = vbslq_s8(v216, vbslq_s8(v211, vextq_s8(v225, v225, 0xCuLL), v196), v195);
        *v211.f32 = vqtbl1_s8(v230, *v217.i8);
        *&v211.u32[2] = vqtbl1_s8(v230, *v223.i8);
        v231 = *(v180 + 272);
        v232 = vmulq_f32(v231, v211);
        *v229.i8 = vadd_f32(*v229.i8, vext_s8(*v225.f32, *v229.i8, 4uLL));
        v233 = vbslq_s8(v199, v225, v229);
        v234 = vaddq_f32(v231, vmulq_f32(v231, vdupq_lane_s64(vaddq_f32(v232, vrev64q_s32(v232)).i64[0], 0)));
        v235 = vaddq_f32(v182, v233);
        v233.i64[0] = v235.i64[0];
        v233.i64[1] = v234.i64[1];
        v236 = *(a2 + 22);
        v237 = vsubq_f32(vaddq_f32(vextq_s8(*v180, *v180, 8uLL), vmulq_f32(*v180, v233)), v9);
        v238 = *(a2 + 10);
        if (v5)
        {
          v239 = vaddq_s32(vcvtq_s32_f32(v237), vcltzq_f32(v237));
          v240 = vsubq_f32(v237, vcvtq_f32_s32(v239)).u64[0];
          v241 = (v238 + 16 * (v239.i32[0] + v239.i32[1] * v236));
          v242 = vaddq_f32(*v241, vmulq_n_f32(vsubq_f32(v241[1], *v241), v240.f32[0]));
          v243 = vaddq_f32(v242, vmulq_lane_f32(vsubq_f32(vaddq_f32(v241[v236], vmulq_n_f32(vsubq_f32(v241[v236 + 1], v241[v236]), v240.f32[0])), v242), v240, 1));
        }

        else
        {
          v244 = vaddq_f32(v237, v13);
          v245 = vcvtq_s32_f32(v244);
          v244.i64[0] = vaddq_s32(v245, vcgtq_f32(vcvtq_f32_s32(v245), v244)).u64[0];
          v243 = *(v238 + 16 * (v244.i32[0] + v244.i32[1] * v236));
        }

        v246 = vmulq_n_f32(v243, vmaxq_f32(vextq_s8(v234, v235, 8uLL), v207).f32[0]);
        v247 = *(v180 + 288);
        v248 = *(v180 + 304);
        v249 = vbslq_s8(v247, v243, v246);
        v250 = *(v180 + 96);
        v251 = vbslq_s8(v248, vsubq_f32(v231, vextq_s8(v250, v250, 8uLL)), v230);
        v252 = vbslq_s8(v247, v243, vaddq_f32(vmulq_laneq_f32(v250, v249, 3), vmulq_lane_f32(v249, *v251.i8, 1)));
        v253 = vmaxq_f32(vnegq_f32(vrev64q_s32(v251)), v206);
        v249.i64[0] = vsubq_f32(v200, v186).u64[0];
        v249.i64[1] = vmulq_lane_f32(vextq_s8(*&v9, v253, 0xCuLL), *&v253, 1).i64[1];
        v254 = vbslq_s8(v248, vrev64q_s32(vsubq_f32(vnegq_f32(v249), v186)), v249);
        v254.i64[1] = vmulq_laneq_f32(v254, v252, 3).i64[1];
        v255 = vmvnq_s8(v199);
        v256 = *(v180 + 320);
        v257 = vbslq_s8(v248, vsubq_f32(v254, v256), v254);
        v258 = vorrq_s8(vandq_s8(v199, vsubq_f32(vextq_s8(v251, v251, 0xCuLL), v257)), vandq_s8(v257, v255));
        v259 = vrev64q_s32(v258);
        v260 = vminq_f32(vmaxq_f32(vrecpeq_f32(v259), v196), v188);
        v261 = vminq_f32(vmaxq_f32(vmulq_f32(v260, vrecpsq_f32(v259, v260)), v196), v188);
        v261.i64[0] = vminq_f32(vmaxq_f32(vmulq_f32(vmulq_f32(v261, vrecpsq_f32(v259, v261)), v258), v256), v200).u64[0];
        v262.i64[0] = v261.i64[0];
        v262.i64[1] = v258.i64[1];
        v261.i64[1] = vdupq_laneq_s64(v258, 1).u64[0];
        v263 = vbslq_s8(v248, vaddq_f32(*(v180 + 336), vmulq_f32(*(v180 + 352), vrev64q_s32(v261))), v262);
        v264 = vorrq_s8(vandq_s8(v199, vmulq_f32(v263, v263)), vandq_s8(v263, v255));
        v265 = vbslq_s8(v247, v243, vaddq_f32(vmulq_laneq_f32(*(v180 + 80), v264, 2), v252));
        *(v11 + 16 * v15) = vsubq_f32(v265, vmulq_n_f32(v265, vmulq_lane_f32(v264, *v264.f32, 1).f32[0]));
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcPageCurlForeground::GetDOD(HgcPageCurlForeground *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v4 = &HGRectNull;
  }

  else
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      HGRectGrow(v6, v5, v7);
    }

    v4 = &HGRectInfinite;
  }

  return *v4;
}

uint64_t HgcPageCurlForeground::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(DOD, v9, v10);
  }

  return DOD;
}

void HgcPageCurlForeground::HgcPageCurlForeground(HgcPageCurlForeground *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DB2F8;
  operator new();
}

void HgcPageCurlForeground::~HgcPageCurlForeground(HGNode *this)
{
  *this = &unk_2871DB2F8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcPageCurlForeground::~HgcPageCurlForeground(this);

  HGObject::operator delete(v1);
}

uint64_t HgcPageCurlForeground::SetParameter(HgcPageCurlForeground *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcPageCurlForeground::GetParameter(HgcPageCurlForeground *this, unsigned int a2, float *a3)
{
  if (a2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcSlicedScale::GetProgram(HgcSlicedScale *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n"
             "//LEN=0000000c61\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< half > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]])\n"
             "{\n"
             "    const half4 c0 = half4(-0.5000000000, 0.000000000, 1.000000000, 0.000000000);\n"
             "    half4 r0, r1;\n"
             "    float4 s0, s1;\n"
             "    FragmentOut output;\n"
             "\n"
             "    r0.x = c0.x + half(hg_Params[11].x);\n"
             "    r1.y = -c0.x - half(hg_Params[11].x);\n"
             "    r0.y = fmax(r0.x, half(hg_Params[2].y));\n"
             "    r0.z = r0.y*half(hg_Params[0].x);\n"
             "    r1.z = fmin(r1.y, half(hg_Params[1].z));\n"
             "    r1.w = r1.z*half(hg_Params[0].x);\n"
             "    r1.x = dot(half4(frag._texCoord0), half4(hg_Params[5]));\n"
             "    r1.x = r1.x/half(hg_Params[9].x);\n"
             "    r1.x = r1.x*half(hg_Params[7].x);\n"
             "    r1.x = r1.x/half(hg_Params[10].x);\n"
             "    r1.z = r1.z*half(hg_Params[0].x) + -r1.z;\n"
             "    r0.y = -r0.y*half(hg_Params[0].x) + r0.y;\n"
             "    s0.x = float(float(r1.x) < float(r1.w));\n"
             "    s1.xyz = float3(r0.xyz);\n"
             "    s1.w = float(float(r0.z) < float(r1.x));\n"
             "    s0.y = s1.w*-s0.x;\n"
             "    s1.w = float(s1.z >= float(r1.x));\n"
             "    s1.z = float(float(r1.x) >= float(r1.w));\n"
             "    r1.zw = r1.xx - r1.zw;\n"
             "    r1.z = select(r1.z, c0.y, r1.w < 0.00000h);\n"
             "    s1.y = float(r1.x) + s1.y;\n"
             "    r1.x = r1.x/half(hg_Params[0].x);\n"
             "    r1.w = fmin(r1.y, half(hg_Params[3].w));\n"
             "    s1.z = float(c0.z) - s1.z;\n"
             "    s0.x = float(-s1.w >= float(c0.y));\n"
             "    s0.x = fmin(s1.z, s0.x);\n"
             "    s1.z = fmin(s1.z, s1.w);\n"
             "    r1.z = select(r1.z, half(s1.y), -half(s1.z) < 0.00000h);\n"
             "    s0.x = fmin(s0.x, s0.y);\n"
             "    r1.x = select(r1.z, r1.x, half(s0.x) < 0.00000h);\n"
             "    r1.z = fmax(half(s1.x), half(hg_Params[4].z));\n"
             "    r0.xy = r1.wz*half2(hg_Params[0].yy);\n"
             "    r1.x = r1.x*half(hg_Params[9].x);\n"
             "    r1.y = dot(half4(frag._texCoord0), half4(hg_Params[6]));\n"
             "    r1.y = r1.y/half(hg_Params[9].y);\n"
             "    r1.y = r1.y*half(hg_Params[8].y);\n"
             "    r1.y = r1.y/half(hg_Params[10].y);\n"
             "    r1.w = r1.w*half(hg_Params[0].y) + -r1.w;\n"
             "    s0.xy = float2(r0.xy);\n"
             "    s0.w = float(float(r1.y) < float(r0.x));\n"
             "    s0.z = float(s0.y < float(r1.y));\n"
             "    s1.x = fmin(s0.z, s0.w);\n"
             "    s0.z = float(s0.y >= float(r1.y));\n"
             "    s0.y = float(float(r1.y) >= s0.x);\n"
             "    s0.w = s0.z;\n"
             "    s0.x = float(r1.y) - s0.x;\n"
             "    r1.w = r1.y - r1.w;\n"
             "    s0.yw = float2(-s0.yw >= float2(c0.yy));\n"
             "    s0.yw = fmin(s0.yy, s0.zw);\n"
             "    s0.w = fmin(s0.w, s1.x);\n"
             "    r1.z = -r1.z*half(hg_Params[0].y) + r1.z;\n"
             "    r1.w = select(r1.w, c0.y, half(s0.x) < 0.00000h);\n"
             "    s0.x = float(r1.y) + float(r1.z);\n"
             "    r1.w = select(r1.w, half(s0.x), -half(s0.y) < 0.00000h);\n"
             "    r1.y = r1.y/half(hg_Params[0].y);\n"
             "    r1.y = select(r1.w, r1.y, -half(s0.w) < 0.00000h);\n"
             "    s1.x = float(r1.x)*hg_Params[5].x;\n"
             "    r1.x = r1.y*half(hg_Params[9].y);\n"
             "    s1.w = float(c0.z);\n"
             "    s1.y = float(r1.x)*hg_Params[6].y;\n"
             "    s0.y = dot(s1.xyw, hg_Params[8].xyw);\n"
             "    s0.x = dot(s1.xyw, hg_Params[7].xyw);\n"
             "    s0.xy = s0.xy + hg_Params[12].xy;\n"
             "    s0.xy = s0.xy*hg_Params[12].zw;\n"
             "    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n"
             "    return output;\n"
             "}\n"
             "//MD5=f41186f5:ebdceff1:2e0de634:ce1bca06\n"
             "//SIG=00400000:00000000:00000000:00000001:0001:000d:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000aa3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.5000000000, 0.000000000, 1.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.x = c0.x + hg_Params[11].x;\n    r1.y = -c0.x - hg_Params[11].x;\n    r0.y = fmax(r0.x, hg_Params[2].y);\n    r0.z = r0.y*hg_Params[0].x;\n    r1.z = fmin(r1.y, hg_Params[1].z);\n    r1.w = r1.z*hg_Params[0].x;\n    r1.x = dot(frag._texCoord0, hg_Params[5]);\n    r1.x = r1.x/hg_Params[9].x;\n    r1.x = r1.x*hg_Params[7].x;\n    r1.x = r1.x/hg_Params[10].x;\n    r1.z = r1.z*hg_Params[0].x + -r1.z;\n    r0.y = -r0.y*hg_Params[0].x + r0.y;\n    r2.x = float(r1.x < r1.w);\n    r0.w = float(r0.z < r1.x);\n    r2.y = r0.w*-r2.x;\n    r0.w = float(r0.z >= r1.x);\n    r0.z = float(r1.x >= r1.w);\n    r1.zw = r1.xx - r1.zw;\n    r1.z = select(r1.z, c0.y, r1.w < 0.00000f);\n    r0.y = r1.x + r0.y;\n    r1.x = r1.x/hg_Params[0].x;\n    r1.w = fmin(r1.y, hg_Params[3].w);\n    r0.z = c0.z - r0.z;\n    r2.x = float(-r0.w >= c0.y);\n    r2.x = fmin(r0.z, r2.x);\n    r0.z = fmin(r0.z, r0.w);\n    r1.z = select(r1.z, r0.y, -r0.z < 0.00000f);\n    r2.x = fmin(r2.x, r2.y);\n    r1.x = select(r1.z, r1.x, r2.x < 0.00000f);\n    r1.z = fmax(r0.x, hg_Params[4].z);\n    r2.xy = r1.wz*hg_Params[0].yy;\n    r1.x = r1.x*hg_Params[9].x;\n    r1.y = dot(frag._texCoord0, hg_Params[6]);\n    r1.y = r1.y/hg_Params[9].y;\n    r1.y = r1.y*hg_Params[8].y;\n    r1.y = r1.y/hg_Params[10].y;\n    r1.w = r1.w*hg_Params[0].y + -r1.w;\n    r2.w = float(r1.y < r2.x);\n    r2.z = float(r2.y < r1.y);\n    r0.x = fmin(r2.z, r2.w);\n    r2.z = float(r2.y >= r1.y);\n    r2.y = float(r1.y >= r2.x);\n    r2.w = r2.z;\n    r2.x = r1.y - r2.x;\n    r1.w = r1.y - r1.w;\n    r2.yw = float2(-r2.yw >= c0.yy);\n    r2.yw = fmin(r2.yy, r2.zw);\n    r2.w = fmin(r2.w, r0.x);\n    r1.z = -r1.z*hg_Params[0].y + r1.z;\n    r1.w = select(r1.w, c0.y, r2.x < 0.00000f);\n    r2.x = r1.y + r1.z;\n    r1.w = select(r1.w, r2.x, -r2.y < 0.00000f);\n    r1.y = r1.y/hg_Params[0].y;\n    r1.y = select(r1.w, r1.y, -r2.w < 0.00000f);\n    r0.x = r1.x*hg_Params[5].x;\n    r1.x = r1.y*hg_Params[9].y;\n    r0.w = c0.z;\n    r0.y = r1.x*hg_Params[6].y;\n    r2.y = dot(r0.xyw, hg_Params[8].xyw);\n    r2.x = dot(r0.xyw, hg_Params[7].xyw);\n    r2.xy = r2.xy + hg_Params[12].xy;\n    r2.xy = r2.xy*hg_Params[12].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r2.xy);\n    return output;\n}\n//MD5=e0d37d90:fe73f5ca:07fc9ff0:84c27f71\n//SIG=00000000:00000000:00000000:00000000:0001:000d:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n"
           "//LEN=0000000c7b\n"
           "#ifndef GL_ES\n"
           "#define lowp\n"
           "#define mediump\n"
           "#define highp\n"
           "#endif\n"
           "#define defaultp mediump\n"
           "uniform defaultp sampler2D hg_Texture0;\n"
           "uniform highp vec4 hg_ProgramLocal0;\n"
           "uniform highp vec4 hg_ProgramLocal1;\n"
           "uniform highp vec4 hg_ProgramLocal2;\n"
           "uniform highp vec4 hg_ProgramLocal3;\n"
           "uniform highp vec4 hg_ProgramLocal4;\n"
           "uniform highp vec4 hg_ProgramLocal5;\n"
           "uniform highp vec4 hg_ProgramLocal6;\n"
           "uniform highp vec4 hg_ProgramLocal7;\n"
           "uniform highp vec4 hg_ProgramLocal8;\n"
           "uniform highp vec4 hg_ProgramLocal9;\n"
           "uniform highp vec4 hg_ProgramLocal10;\n"
           "uniform highp vec4 hg_ProgramLocal11;\n"
           "uniform highp vec4 hg_ProgramLocal12;\n"
           "varying highp vec4 hg_TexCoord0;\n"
           "void main()\n"
           "{\n"
           "    const highp vec4 c0 = vec4(-0.5000000000, 0.000000000, 1.000000000, 0.000000000);\n"
           "    highp vec4 r0, r1, r2;\n"
           "\n"
           "    r0.x = c0.x + hg_ProgramLocal11.x;\n"
           "    r1.y = -c0.x - hg_ProgramLocal11.x;\n"
           "    r0.y = max(r0.x, hg_ProgramLocal2.y);\n"
           "    r0.z = r0.y*hg_ProgramLocal0.x;\n"
           "    r1.z = min(r1.y, hg_ProgramLocal1.z);\n"
           "    r1.w = r1.z*hg_ProgramLocal0.x;\n"
           "    r1.x = dot(hg_TexCoord0, hg_ProgramLocal5);\n"
           "    r1.x = r1.x/hg_ProgramLocal9.x;\n"
           "    r1.x = r1.x*hg_ProgramLocal7.x;\n"
           "    r1.x = r1.x/hg_ProgramLocal10.x;\n"
           "    r1.z = r1.z*hg_ProgramLocal0.x + -r1.z;\n"
           "    r0.y = -r0.y*hg_ProgramLocal0.x + r0.y;\n"
           "    r2.x = float(r1.x < r1.w);\n"
           "    r0.w = float(r0.z < r1.x);\n"
           "    r2.y = r0.w*-r2.x;\n"
           "    r0.w = float(r0.z >= r1.x);\n"
           "    r0.z = float(r1.x >= r1.w);\n"
           "    r1.zw = r1.xx - r1.zw;\n"
           "    r1.z = r1.w < 0.00000 ? c0.y : r1.z;\n"
           "    r0.y = r1.x + r0.y;\n"
           "    r1.x = r1.x/hg_ProgramLocal0.x;\n"
           "    r1.w = min(r1.y, hg_ProgramLocal3.w);\n"
           "    r0.z = c0.z - r0.z;\n"
           "    r2.x = float(-r0.w >= c0.y);\n"
           "    r2.x = min(r0.z, r2.x);\n"
           "    r0.z = min(r0.z, r0.w);\n"
           "    r1.z = -r0.z < 0.00000 ? r0.y : r1.z;\n"
           "    r2.x = min(r2.x, r2.y);\n"
           "    r1.x = r2.x < 0.00000 ? r1.x : r1.z;\n"
           "    r1.z = max(r0.x, hg_ProgramLocal4.z);\n"
           "    r2.xy = r1.wz*hg_ProgramLocal0.yy;\n"
           "    r1.x = r1.x*hg_ProgramLocal9.x;\n"
           "    r1.y = dot(hg_TexCoord0, hg_ProgramLocal6);\n"
           "    r1.y = r1.y/hg_ProgramLocal9.y;\n"
           "    r1.y = r1.y*hg_ProgramLocal8.y;\n"
           "    r1.y = r1.y/hg_ProgramLocal10.y;\n"
           "    r1.w = r1.w*hg_ProgramLocal0.y + -r1.w;\n"
           "    r2.w = float(r1.y < r2.x);\n"
           "    r2.z = float(r2.y < r1.y);\n"
           "    r0.x = min(r2.z, r2.w);\n"
           "    r2.z = float(r2.y >= r1.y);\n"
           "    r2.y = float(r1.y >= r2.x);\n"
           "    r2.w = r2.z;\n"
           "    r2.x = r1.y - r2.x;\n"
           "    r1.w = r1.y - r1.w;\n"
           "    r2.yw = vec2(greaterThanEqual(-r2.yw, c0.yy));\n"
           "    r2.yw = min(r2.yy, r2.zw);\n"
           "    r2.w = min(r2.w, r0.x);\n"
           "    r1.z = -r1.z*hg_ProgramLocal0.y + r1.z;\n"
           "    r1.w = r2.x < 0.00000 ? c0.y : r1.w;\n"
           "    r2.x = r1.y + r1.z;\n"
           "    r1.w = -r2.y < 0.00000 ? r2.x : r1.w;\n"
           "    r1.y = r1.y/hg_ProgramLocal0.y;\n"
           "    r1.y = -r2.w < 0.00000 ? r1.y : r1.w;\n"
           "    r0.x = r1.x*hg_ProgramLocal5.x;\n"
           "    r1.x = r1.y*hg_ProgramLocal9.y;\n"
           "    r0.w = c0.z;\n"
           "    r0.y = r1.x*hg_ProgramLocal6.y;\n"
           "    r2.y = dot(r0.xyw, hg_ProgramLocal8.xyw);\n"
           "    r2.x = dot(r0.xyw, hg_ProgramLocal7.xyw);\n"
           "    r2.xy = r2.xy + hg_ProgramLocal12.xy;\n"
           "    r2.xy = r2.xy*hg_ProgramLocal12.zw;\n"
           "    gl_FragColor = texture2D(hg_Texture0, r2.xy);\n"
           "}\n"
           "//MD5=a855e8cc:e7e9e0ad:b70918bc:4185df98\n"
           "//SIG=00000000:00000000:00000000:00000000:0001:000d:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA4ED2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344850;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FA4EEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA4EEFC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA4EEF4);
}

uint64_t HgcSlicedScale::BindTexture(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 228) - *(a2 + 220));
    v8.n128_f32[0] = 1.0 / (*(a2 + 232) - *(a2 + 224));
  }

  v5.n128_f32[0] = *(a2 + 240);
  v6.n128_f32[0] = *(a2 + 244);
  (*(*a2 + 136))(a2, 12, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcSlicedScale::Bind(HgcSlicedScale *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*a2 + 144))(a2, 10, *(this + 51) + 160, 1);
  (*(*a2 + 144))(a2, 11, *(this + 51) + 176, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSlicedScale::RenderTile(HgcSlicedScale *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = 0;
    *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
    v9.i64[1] = 0x3F80000000000000;
    v10 = *(a2 + 2) - v6.i32[0];
    v11 = xmmword_2603429B0;
    v12 = xmmword_2603429C0;
    v13 = *(a2 + 2);
    v14 = 16 * *(a2 + 6);
    v15 = 1.0;
    v16 = v9;
    v305 = v9;
    do
    {
      if (v10 < 2)
      {
        v17 = 0;
        v19 = v16;
      }

      else
      {
        v17 = 0;
        v18 = v10;
        v304 = v16;
        v19 = v16;
        do
        {
          v20 = v11;
          v21 = vaddq_f32(v19, v11);
          v22 = *(this + 51);
          v23 = *(v22 + 12);
          v24 = *(v22 + 13);
          v26 = *(v22 + 10);
          v25 = *(v22 + 11);
          v27 = vaddq_f32(v25, v23);
          v28 = vsubq_f32(v23, vrev64q_s32(v25));
          v29 = *(v22 + 3);
          v30.i64[0] = vbslq_s8(v24, v27, vmaxq_f32(vrev64q_s32(v27), *(v22 + 2))).u64[0];
          v30.i64[1] = vmulq_lane_f32(vdupq_lane_s64(*v22, 0), *&v30, 1).i64[1];
          v31 = vminq_f32(vextq_s8(v28, v28, 0xCuLL), *(v22 + 1));
          v28.i64[1] = v31.i64[1];
          v33 = *(v22 + 14);
          v32 = *(v22 + 15);
          v34 = vbslq_s8(v33, vmulq_laneq_f32(vextq_s8(*v22, *v22, 4uLL), v31, 2), v28);
          v35 = *(v22 + 4);
          v36 = *(v22 + 5);
          v37 = vmulq_f32(v19, v36);
          v38 = vmulq_f32(v21, v36);
          v39 = vaddq_f32(v37, vextq_s8(v37, v37, 4uLL));
          v40 = vaddq_f32(v38, vextq_s8(v38, v38, 4uLL));
          v41 = vbslq_s8(v24, vaddq_f32(v40, vextq_s8(v40, v40, 8uLL)), v34);
          v43 = *(v22 + 8);
          v42 = *(v22 + 9);
          v44 = vrecpeq_f32(v42);
          v45 = *(v22 + 16);
          v46 = *(v22 + 17);
          v47 = vminq_f32(vmaxq_f32(v44, v32), v45);
          v48 = vminq_f32(vmaxq_f32(vmulq_f32(v47, vrecpsq_f32(v42, v47)), v32), v45);
          v49 = vmulq_f32(v48, vrecpsq_f32(v42, v48));
          v50 = vmulq_f32(v49, vbslq_s8(v24, vaddq_f32(v39, vextq_s8(v39, v39, 8uLL)), v34));
          v52 = *(v22 + 6);
          v51 = *(v22 + 7);
          v53 = vbslq_s8(v24, vmulq_f32(v51, vbslq_s8(v24, vmulq_f32(v49, v41), v34)), v34);
          v54 = vrecpeq_f32(v26);
          v55 = vminq_f32(vmaxq_f32(v54, v32), v45);
          v56 = vminq_f32(vmaxq_f32(vmulq_f32(v55, vrecpsq_f32(v26, v55)), v32), v45);
          v57 = vmulq_f32(v56, vrecpsq_f32(v26, v56));
          v58 = vbslq_s8(v24, vmulq_f32(v57, vbslq_s8(v24, vmulq_f32(v51, vbslq_s8(v24, v50, v34)), v34)), v34);
          v59 = vbslq_s8(v24, vmulq_f32(v57, v53), v34);
          v60 = vbslq_s8(v46, vsubq_f32(vmulq_n_f32(v58, COERCE_FLOAT(*v22)), v58), v58);
          v61 = vbslq_s8(v46, vsubq_f32(vmulq_n_f32(v59, COERCE_FLOAT(*v22)), v59), v59);
          v63 = *(v22 + 18);
          v62 = *(v22 + 19);
          v64 = vbslq_s8(v63, vsubq_f32(v30, vmulq_n_f32(v30, COERCE_FLOAT(*v22))), v30);
          v65 = vextq_s8(v60, v60, 4uLL);
          v66 = vextq_s8(v61, v61, 4uLL);
          v67 = vrev64q_s32(v64);
          v68 = vbslq_s8(v33, vandq_s8(v62, vcgtq_f32(v65, v67)), v64);
          v69 = vbslq_s8(v33, vandq_s8(v62, vcgtq_f32(v66, v67)), v64);
          v70 = vnegq_f32(v62);
          v71.i64[0] = 0x8000000080000000;
          v71.i64[1] = 0x8000000080000000;
          v72 = vrev64q_s32(vbslq_s8(vcgtq_f32(vextq_s8(v61, v61, 0xCuLL), v61), v70, v71));
          v73 = vmulq_laneq_f32(vrev64q_s32(vbslq_s8(vcgtq_f32(vextq_s8(v60, v60, 0xCuLL), v60), v70, v71)), v68, 3);
          v74 = vmulq_laneq_f32(v72, v69, 3);
          v68.i64[1] = vandq_s8(*&v62, vcgeq_f32(vrev64q_s32(*&v68), v65)).i64[1];
          v75 = vbslq_s8(v46, vandq_s8(v62, vcgeq_f32(vextq_s8(v60, v60, 8uLL), vrev64q_s32(v60))), v68);
          v69.i64[1] = vandq_s8(*&v62, vcgeq_f32(vrev64q_s32(*&v69), v66)).i64[1];
          v76 = vbslq_s8(v46, vandq_s8(v62, vcgeq_f32(vextq_s8(v61, v61, 8uLL), vrev64q_s32(v61))), v69);
          v77 = vsubq_f32(vdupq_lane_s32(*v60.f32, 0), v60);
          v78 = vsubq_f32(vdupq_lane_s32(*v61.f32, 0), v61);
          v69.i64[0] = v60.i64[0];
          v69.i64[1] = vdupq_laneq_s64(v77, 1).u64[0];
          v68.i64[0] = v61.i64[0];
          v68.i64[1] = vdupq_laneq_s64(v78, 1).u64[0];
          v79 = vbslq_s8(vcgtq_f32(v32, vrev64q_s32(v69)), v32, v77);
          v66.i64[0] = v60.i64[0];
          v66.i64[1] = v79.i64[1];
          v80 = vbslq_s8(vcgtq_f32(v32, vrev64q_s32(v68)), v32, v78);
          v69.i64[0] = v61.i64[0];
          v69.i64[1] = v80.i64[1];
          v60.i64[1] = vdupq_laneq_s64(v79, 1).u64[0];
          v61.i64[1] = vdupq_laneq_s64(v80, 1).u64[0];
          v81 = vbslq_s8(v63, vaddq_f32(vrev64q_s32(v60), v75), v75);
          v82 = vbslq_s8(v63, vaddq_f32(vrev64q_s32(v61), v76), v76);
          v83 = vrecpeq_f32(*v22);
          v84 = vminq_f32(vmaxq_f32(v83, v32), v45);
          v85 = vminq_f32(vmaxq_f32(vmulq_f32(v84, vrecpsq_f32(*v22, v84)), v32), v45);
          v86 = vmulq_f32(v85, vrecpsq_f32(*v22, v85));
          v87 = vbslq_s8(v24, vmulq_f32(v86, v66), v66);
          v88 = vbslq_s8(v24, vmulq_f32(v86, v69), v69);
          v89 = vbslq_s8(v33, vminq_f32(vextq_s8(v87, v87, 8uLL), v29), v87);
          v90 = vbslq_s8(v33, vminq_f32(vextq_s8(v88, v88, 8uLL), v29), v88);
          v91 = vbslq_s8(v46, vsubq_f32(v62, v81), v81);
          v92 = vbslq_s8(v46, vsubq_f32(v62, v82), v82);
          v94 = *(v22 + 20);
          v93 = *(v22 + 21);
          v95 = vbslq_s8(v24, vminq_f32(vextq_s8(v91, v91, 8uLL), vbslq_s8(v24, vandq_s8(v62, vcgeq_f32(vnegq_f32(vextq_s8(v91, v91, 0xCuLL)), v94)), v73)), v73);
          v96 = vbslq_s8(v24, vminq_f32(vextq_s8(v92, v92, 8uLL), vbslq_s8(v24, vandq_s8(v62, vcgeq_f32(vnegq_f32(vextq_s8(v92, v92, 0xCuLL)), v94)), v74)), v74);
          v97 = vminq_f32(v91, vrev64q_s32(v91));
          v98 = vextq_s8(v97, v91, 8uLL);
          v91.i64[1] = v97.i64[1];
          v99 = vminq_f32(v92, vrev64q_s32(v92));
          v100 = vextq_s8(v99, v92, 8uLL);
          v92.i64[1] = v99.i64[1];
          v101 = vbslq_s8(v46, vbslq_s8(vcgtq_f32(v91, v94), vextq_s8(v91, v91, 0xCuLL), v89), v89);
          v102 = vbslq_s8(v46, vbslq_s8(vcgtq_f32(v92, v94), vextq_s8(v92, v92, 0xCuLL), v90), v90);
          v95.i64[0] = vbslq_s8(vcgtq_f32(v94, vminq_f32(v95, vrev64q_s32(v95))), v101, vdupq_laneq_s64(v101, 1)).u64[0];
          v90.i64[0] = vbslq_s8(vcgtq_f32(v94, vminq_f32(v96, vrev64q_s32(v96))), v102, vdupq_laneq_s64(v102, 1)).u64[0];
          v95.i64[1] = v101.i64[1];
          v103 = vbslq_s8(v46, vmaxq_f32(v98, v35), v95);
          v90.i64[1] = v102.i64[1];
          v104 = vbslq_s8(v46, vmaxq_f32(v100, v35), v90);
          *v102.f32 = vqtbl1_s8(v103, *v93.i8);
          v35.i64[0] = vextq_s8(v93, v93, 8uLL).u64[0];
          *&v102.u32[2] = vqtbl1_s8(v103, *v35.f32);
          *v90.f32 = vqtbl1_s8(v104, *v93.i8);
          *&v90.u32[2] = vqtbl1_s8(v104, *v35.f32);
          v105 = vmulq_lane_f32(v102, *v22, 1);
          v106 = vmulq_lane_f32(v90, *v22, 1);
          v102.i64[0] = vmulq_f32(v42, v103).u64[0];
          v90.i64[0] = vmulq_f32(v42, v104).u64[0];
          v102.i64[1] = v103.i64[1];
          v90.i64[1] = v104.i64[1];
          v107 = vmulq_f32(v19, v52);
          v108 = vmulq_f32(v21, v52);
          v109 = vaddq_f32(v107, vextq_s8(v107, v107, 4uLL));
          v110 = vaddq_f32(v108, vextq_s8(v108, v108, 4uLL));
          v111 = vminq_f32(vmaxq_f32(v44, v94), v45);
          v112 = vminq_f32(vmaxq_f32(vmulq_f32(v111, vrecpsq_f32(v42, v111)), v94), v45);
          v113 = vmulq_f32(v112, vrecpsq_f32(v42, v112));
          v114 = vbslq_s8(v63, vmulq_f32(v43, vbslq_s8(v63, vmulq_f32(v113, vbslq_s8(v63, vaddq_f32(v109, vextq_s8(v109, v109, 8uLL)), v102)), v102)), v102);
          v115 = vbslq_s8(v63, vmulq_f32(v43, vbslq_s8(v63, vmulq_f32(v113, vbslq_s8(v63, vaddq_f32(v110, vextq_s8(v110, v110, 8uLL)), v90)), v90)), v90);
          v116 = vminq_f32(vmaxq_f32(v54, v94), v45);
          v117 = vminq_f32(vmaxq_f32(vmulq_f32(v116, vrecpsq_f32(v26, v116)), v94), v45);
          v118 = vmulq_f32(v117, vrecpsq_f32(v26, v117));
          v119 = vbslq_s8(v63, vmulq_f32(v118, v114), v102);
          v120 = vbslq_s8(v63, vmulq_f32(v118, v115), v90);
          v121 = vbslq_s8(v33, vsubq_f32(vmulq_lane_f32(v119, *v22, 1), v119), v119);
          v122 = vbslq_s8(v33, vsubq_f32(vmulq_lane_f32(v120, *v22, 1), v120), v120);
          v123 = vextq_s8(v121, v121, 8uLL);
          v124 = vextq_s8(v122, v122, 8uLL);
          v105.i64[1] = vandq_s8(*&v94, vcgtq_f32(vextq_s8(*&v105, *&v105, 4uLL), v123)).i64[1];
          v106.i64[1] = vandq_s8(*&v94, vcgtq_f32(vextq_s8(*&v106, *&v106, 4uLL), v124)).i64[1];
          v125 = vandq_s8(v62, vcgtq_f32(v121, v105));
          v126 = vandq_s8(v62, vcgtq_f32(v122, v106));
          v127 = vextq_s8(v126, v126, 0xCuLL);
          v128 = vbslq_s8(v46, vextq_s8(v125, v125, 0xCuLL), v105);
          v129 = vbslq_s8(v46, v127, v106);
          v130 = vextq_s8(v20, vandq_s8(v62, vcgeq_f32(v128, v121)), 0xCuLL);
          v127.i64[0] = vdupq_laneq_s64(v130, 1).u64[0];
          v130.i64[0] = v128.i64[0];
          v131 = vminq_f32(vextq_s8(v128, v128, 0xCuLL), v128);
          v128.i64[1] = v127.i64[0];
          v132 = vextq_s8(v20, vandq_s8(v62, vcgeq_f32(v129, v122)), 0xCuLL);
          v127.i64[0] = vdupq_laneq_s64(v132, 1).u64[0];
          v132.i64[0] = v129.i64[0];
          v133 = vminq_f32(vextq_s8(v129, v129, 0xCuLL), v129);
          v129.i64[1] = v127.i64[0];
          v134 = vbslq_s8(v63, vandq_s8(v62, vcgeq_f32(v121, vrev64q_s32(v128))), v130);
          v135 = vbslq_s8(v63, vandq_s8(v62, vcgeq_f32(v122, vrev64q_s32(v129))), v132);
          v136 = vbslq_s8(v33, vrev64q_s32(v134), v134);
          v137 = vbslq_s8(v33, vrev64q_s32(v135), v135);
          v138 = vbslq_s8(v24, vsubq_f32(vrev64q_s32(v121), v136), v136);
          v139 = vbslq_s8(v24, vsubq_f32(vrev64q_s32(v122), v137), v137);
          v140 = vbslq_s8(v33, vsubq_f32(v123, v121), v119);
          v141 = *(v22 + 23);
          v142 = vbslq_s8(*(v22 + 22), v138, vandq_s8(v62, vcgeq_f32(vnegq_f32(v138), v32)));
          v143 = vbslq_s8(*(v22 + 22), v139, vandq_s8(v62, vcgeq_f32(vnegq_f32(v139), v32)));
          *v127.f32 = vqtbl1_s8(v142, *v93.i8);
          *&v127.u32[2] = vqtbl1_s8(v142, *v35.f32);
          *v138.f32 = vqtbl1_s8(v143, *v93.i8);
          *&v138.u32[2] = vqtbl1_s8(v143, *v35.f32);
          v144 = vbslq_s8(v33, vsubq_f32(v124, v122), v120);
          v145 = vbslq_s8(v24, v142, vminq_f32(vdupq_lane_s64(v142.i64[0], 0), v127));
          v146 = vbslq_s8(v24, v143, vminq_f32(vdupq_lane_s64(v143.i64[0], 0), v138));
          v147 = vminq_f32(v145, v131);
          v139.i64[0] = vextq_s8(v147, v145, 0xCuLL).u64[0];
          *v138.f32 = vext_s8(*v145.f32, *&vextq_s8(v147, v147, 8uLL), 4uLL);
          v145.i64[1] = v147.i64[1];
          v148 = vbslq_s8(v46, vsubq_f32(v140, vmulq_lane_f32(v140, *v22, 1)), v140);
          v149 = vminq_f32(v146, v133);
          v138.i64[1] = v139.i64[0];
          v150 = vbslq_s8(v46, vsubq_f32(v144, vmulq_lane_f32(v144, *v22, 1)), v144);
          v139.i64[0] = vextq_s8(v149, v146, 0xCuLL).u64[0];
          v46.i64[0] = v146.i64[0];
          v46.i64[1] = v149.i64[1];
          *v146.f32 = vext_s8(*v146.f32, *&vextq_s8(v149, v149, 8uLL), 4uLL);
          v146.i64[1] = v139.i64[0];
          v151 = vbslq_s8(v33, vbslq_s8(vcgtq_f32(v32, v138), v32, v148), v148);
          v152 = vbslq_s8(v33, vbslq_s8(vcgtq_f32(v32, v146), v32, v150), v150);
          v153 = vbslq_s8(v24, vaddq_f32(vrev64q_s32(v151), vextq_s8(v151, v151, 8uLL)), v145);
          v154 = vbslq_s8(v24, vaddq_f32(vrev64q_s32(v152), vextq_s8(v152, v152, 8uLL)), v46);
          v155 = vextq_s8(v153, v153, 4uLL);
          v156 = vcgtq_f32(vextq_s8(v153, v153, 8uLL), v32);
          v151.i64[1] = vbslq_s8(v156, v155, *&v151).i64[1];
          v157 = vcgtq_f32(vextq_s8(v154, v154, 8uLL), v32);
          v152.i64[1] = vbslq_s8(v157, vextq_s8(v154, v154, 4uLL), *&v152).i64[1];
          v158 = vminq_f32(vmaxq_f32(v83, v94), v45);
          v159 = vminq_f32(vmaxq_f32(vmulq_f32(v158, vrecpsq_f32(*v22, v158)), v94), v45);
          v160 = vmulq_f32(v159, vrecpsq_f32(*v22, v159));
          v161 = vbslq_s8(v63, vmulq_f32(v160, v151), v151);
          v162 = vbslq_s8(v63, vmulq_f32(v160, v152), v152);
          v163 = vbslq_s8(v24, v161, vbslq_s8(v156, v161, vextq_s8(v161, v161, 8uLL)));
          v164 = vbslq_s8(v24, v162, vbslq_s8(v157, v162, vextq_s8(v162, v162, 8uLL)));
          v165 = vmulq_f32(v36, v163);
          v166 = vmulq_f32(v36, v164);
          v167 = vrev64q_s32(v42);
          v165.i32[3] = 1.0;
          v15 = 1.0;
          v166.i32[3] = 1.0;
          v168 = vbslq_s8(v63, vmulq_n_f32(v52, vmulq_lane_f32(v167, *v163.f32, 1).f32[0]), v165);
          v169 = vbslq_s8(v63, vmulq_n_f32(v52, vmulq_lane_f32(v167, *v164.f32, 1).f32[0]), v166);
          v170 = vmulq_f32(v43, v168);
          v171 = vmulq_f32(v43, v169);
          *v167.f32 = vqtbl1_s8(v170, *v141.i8);
          v139.i64[0] = vextq_s8(v141, v141, 8uLL).u64[0];
          *v170.i8 = vqtbl1_s8(v170, *v139.f32);
          v149.i64[0] = v167.i64[0];
          v172 = vext_s8(*v170.i8, *v167.f32, 4uLL);
          *v36.f32 = vext_s8(*v167.f32, *v170.i8, 4uLL);
          v167.i64[1] = v170.i64[0];
          *v32.f32 = vqtbl1_s8(v171, *v141.i8);
          *v171.i8 = vqtbl1_s8(v171, *v139.f32);
          v149.i64[1] = v170.i64[0];
          v170.i64[0] = v32.i64[0];
          *v42.f32 = vext_s8(*v32.f32, *v171.i8, 4uLL);
          v32.i64[1] = v171.i64[0];
          v170.i64[1] = v171.i64[0];
          *&v36.u32[2] = v172;
          *&v42.u32[2] = vext_s8(*v171.i8, *v32.f32, 4uLL);
          v173 = vaddq_f32(vaddq_f32(vrev64q_s32(v149), v167), v36);
          v174 = vmulq_f32(v51, v168);
          v175 = vmulq_f32(v51, v169);
          *v167.f32 = vqtbl1_s8(v174, *v141.i8);
          *v174.f32 = vqtbl1_s8(v174, *v139.f32);
          v149.i64[0] = v167.i64[0];
          v149.i64[1] = v174.i64[0];
          v176 = vqtbl1_s8(v175, *v141.i8);
          *v175.f32 = vqtbl1_s8(v175, *v139.f32);
          *v139.f32 = v176;
          v139.i64[1] = v175.i64[0];
          v36.i64[0] = v167.i64[0];
          v36.i64[1] = v174.i64[0];
          v177 = vaddq_f32(vrev64q_s32(v36), v149);
          *v36.f32 = v176;
          v36.i64[1] = v175.i64[0];
          v174.i64[1] = v167.i64[0];
          *&v175.u32[2] = v176;
          v178 = vbslq_s8(v24, vaddq_f32(vaddq_f32(vrev64q_s32(v36), v139), v175), vaddq_f32(vaddq_f32(vrev64q_s32(v170), v32), v42));
          v179 = *(a2 + 22);
          v180 = vsubq_f32(vbslq_s8(v24, vaddq_f32(v177, v174), v173), v305);
          v181 = *(a2 + 10);
          if (v5)
          {
            v182 = vaddq_s32(vcvtq_s32_f32(v180), vcltzq_f32(v180));
            v183 = vsubq_f32(v180, vcvtq_f32_s32(v182)).u64[0];
            v184 = vsubq_f32(v178, v305);
            v185 = vaddq_s32(vcvtq_s32_f32(v184), vcltzq_f32(v184));
            v186 = vsubq_f32(v184, vcvtq_f32_s32(v185)).u64[0];
            *v182.i8 = vmla_s32(vzip1_s32(*v182.i8, *v185.i8), vzip2_s32(*v182.i8, *v185.i8), vdup_n_s32(v179));
            v187 = v182.i32[1];
            v188 = (v181 + 16 * v182.i32[0]);
            v189 = vaddq_f32(*v188, vmulq_n_f32(vsubq_f32(v188[1], *v188), v183.f32[0]));
            v190 = vaddq_f32(v189, vmulq_lane_f32(vsubq_f32(vaddq_f32(v188[v179], vmulq_n_f32(vsubq_f32(v188[v179 + 1], v188[v179]), v183.f32[0])), v189), v183, 1));
            v191 = (v181 + 16 * v187);
            v192 = vaddq_f32(*v191, vmulq_n_f32(vsubq_f32(v191[1], *v191), v186.f32[0]));
            v193 = vaddq_f32(v192, vmulq_lane_f32(vsubq_f32(vaddq_f32(v191[v179], vmulq_n_f32(vsubq_f32(v191[v179 + 1], v191[v179]), v186.f32[0])), v192), v186, 1));
          }

          else
          {
            v194.i64[0] = 0x3F0000003F000000;
            v194.i64[1] = 0x3F0000003F000000;
            v195 = vaddq_f32(v180, v194);
            v196 = vcvtq_s32_f32(v195);
            v197 = vaddq_f32(vsubq_f32(v178, v305), v194);
            v198 = vcvtq_s32_f32(v197);
            *v195.f32 = vadd_s32(*v196.i8, *&vcgtq_f32(vcvtq_f32_s32(v196), v195));
            *v197.f32 = vadd_s32(*v198.i8, *&vcgtq_f32(vcvtq_f32_s32(v198), v197));
            *v195.f32 = vmla_s32(vzip1_s32(*v195.f32, *v197.f32), vzip2_s32(*v195.f32, *v197.f32), vdup_n_s32(v179));
            v190 = *(v181 + 16 * v195.i32[0]);
            v193 = *(v181 + 16 * v195.i32[1]);
          }

          v199 = (v13 + 16 * v17);
          *v199 = v190;
          v199[1] = v193;
          v11 = v20;
          v19 = vaddq_f32(v21, v20);
          v17 += 2;
          v18 -= 2;
        }

        while (v18 > 1);
        v17 = v17;
        v16 = v304;
        v9 = v305;
        v12 = xmmword_2603429C0;
      }

      if (v17 < v10)
      {
        v200 = *(this + 51);
        v201 = *(v200 + 12);
        v202 = *(v200 + 13);
        v204 = *(v200 + 10);
        v203 = *(v200 + 11);
        v205 = vaddq_f32(v203, v201);
        v206 = vsubq_f32(v201, vrev64q_s32(v203));
        v207.i64[0] = vbslq_s8(v202, v205, vmaxq_f32(vrev64q_s32(v205), *(v200 + 2))).u64[0];
        v207.i64[1] = vmulq_lane_f32(vdupq_lane_s64(*v200, 0), *&v207, 1).i64[1];
        v208 = vminq_f32(vextq_s8(v206, v206, 0xCuLL), *(v200 + 1));
        v206.i64[1] = v208.i64[1];
        v210 = *(v200 + 14);
        v209 = *(v200 + 15);
        v211 = vbslq_s8(v210, vmulq_laneq_f32(vextq_s8(*v200, *v200, 4uLL), v208, 2), v206);
        v212 = *(v200 + 5);
        v213 = vmulq_f32(v19, v212);
        v214 = vaddq_f32(v213, vextq_s8(v213, v213, 4uLL));
        v216 = *(v200 + 8);
        v215 = *(v200 + 9);
        v217 = vrecpeq_f32(v215);
        v218 = *(v200 + 16);
        v219 = *(v200 + 17);
        v220 = vminq_f32(vmaxq_f32(v217, v209), v218);
        v221 = vminq_f32(vmaxq_f32(vmulq_f32(v220, vrecpsq_f32(v215, v220)), v209), v218);
        v223 = *(v200 + 6);
        v222 = *(v200 + 7);
        v224 = vbslq_s8(v202, vmulq_f32(v222, vbslq_s8(v202, vmulq_f32(vmulq_f32(v221, vrecpsq_f32(v215, v221)), vbslq_s8(v202, vaddq_f32(v214, vextq_s8(v214, v214, 8uLL)), v211)), v211)), v211);
        v225 = vrecpeq_f32(v204);
        v226 = vminq_f32(vmaxq_f32(v225, v209), v218);
        v227 = vminq_f32(vmaxq_f32(vmulq_f32(v226, vrecpsq_f32(v204, v226)), v209), v218);
        v228 = vbslq_s8(v202, vmulq_f32(vmulq_f32(v227, vrecpsq_f32(v204, v227)), v224), v211);
        v229 = vbslq_s8(v219, vsubq_f32(vmulq_n_f32(v228, COERCE_FLOAT(*v200)), v228), v228);
        v230 = *(v200 + 18);
        v231 = *(v200 + 19);
        v232 = vbslq_s8(v230, vsubq_f32(v207, vmulq_n_f32(v207, COERCE_FLOAT(*v200))), v207);
        v233 = vextq_s8(v229, v229, 4uLL);
        v234 = vbslq_s8(v210, vandq_s8(v231, vcgtq_f32(v233, vrev64q_s32(v232))), v232);
        v235.i64[0] = 0x8000000080000000;
        v235.i64[1] = 0x8000000080000000;
        v236 = vmulq_laneq_f32(vrev64q_s32(vbslq_s8(vcgtq_f32(vextq_s8(v229, v229, 0xCuLL), v229), vnegq_f32(v231), v235)), v234, 3);
        v234.i64[1] = vandq_s8(*&v231, vcgeq_f32(vrev64q_s32(*&v234), v233)).i64[1];
        v237 = vbslq_s8(v219, vandq_s8(v231, vcgeq_f32(vextq_s8(v229, v229, 8uLL), vrev64q_s32(v229))), v234);
        v238 = vsubq_f32(vdupq_lane_s32(*v229.f32, 0), v229);
        v235.i64[0] = v229.i64[0];
        v235.i64[1] = vdupq_laneq_s64(v238, 1).u64[0];
        v239 = vbslq_s8(vcgtq_f32(v209, vrev64q_s32(v235)), v209, v238);
        v205.i64[0] = v229.i64[0];
        v205.i64[1] = v239.i64[1];
        v229.i64[1] = vdupq_laneq_s64(v239, 1).u64[0];
        v240 = vbslq_s8(v230, vaddq_f32(vrev64q_s32(v229), v237), v237);
        v241 = vrecpeq_f32(*v200);
        v242 = vminq_f32(vmaxq_f32(v241, v209), v218);
        v243 = vminq_f32(vmaxq_f32(vmulq_f32(v242, vrecpsq_f32(*v200, v242)), v209), v218);
        v244 = vbslq_s8(v202, vmulq_f32(vmulq_f32(v243, vrecpsq_f32(*v200, v243)), v205), v205);
        v245 = vbslq_s8(v210, vminq_f32(vextq_s8(v244, v244, 8uLL), *(v200 + 3)), v244);
        v246 = vbslq_s8(v219, vsubq_f32(v231, v240), v240);
        v248 = *(v200 + 20);
        v247 = *(v200 + 21);
        v249 = vbslq_s8(v202, vminq_f32(vextq_s8(v246, v246, 8uLL), vbslq_s8(v202, vandq_s8(v231, vcgeq_f32(vnegq_f32(vextq_s8(v246, v246, 0xCuLL)), v248)), v236)), v236);
        v250 = vminq_f32(v246, vrev64q_s32(v246));
        v251 = vextq_s8(v250, v246, 8uLL);
        v246.i64[1] = v250.i64[1];
        v252 = vbslq_s8(v219, vbslq_s8(vcgtq_f32(v246, v248), vextq_s8(v246, v246, 0xCuLL), v245), v245);
        v245.i64[0] = vbslq_s8(vcgtq_f32(v248, vminq_f32(v249, vrev64q_s32(v249))), v252, vdupq_laneq_s64(v252, 1)).u64[0];
        v245.i64[1] = v252.i64[1];
        v253 = vbslq_s8(v219, vmaxq_f32(v251, *(v200 + 4)), v245);
        *v245.f32 = vqtbl1_s8(v253, *v247.i8);
        v254 = vextq_s8(v247, v247, 8uLL).u64[0];
        *&v245.u32[2] = vqtbl1_s8(v253, v254);
        v255 = vmulq_lane_f32(v245, *v200, 1);
        v249.i64[0] = vmulq_f32(v215, v253).u64[0];
        v249.i64[1] = v253.i64[1];
        v256 = vmulq_f32(v19, v223);
        v257 = vaddq_f32(v256, vextq_s8(v256, v256, 4uLL));
        v258 = vminq_f32(vmaxq_f32(v217, v248), v218);
        v259 = vminq_f32(vmaxq_f32(vmulq_f32(v258, vrecpsq_f32(v215, v258)), v248), v218);
        v260 = vbslq_s8(v230, vmulq_f32(v216, vbslq_s8(v230, vmulq_f32(vmulq_f32(v259, vrecpsq_f32(v215, v259)), vbslq_s8(v230, vaddq_f32(v257, vextq_s8(v257, v257, 8uLL)), v249)), v249)), v249);
        v261 = vminq_f32(vmaxq_f32(v225, v248), v218);
        v262 = vminq_f32(vmaxq_f32(vmulq_f32(v261, vrecpsq_f32(v204, v261)), v248), v218);
        v263 = vbslq_s8(v230, vmulq_f32(vmulq_f32(v262, vrecpsq_f32(v204, v262)), v260), v249);
        v264 = vbslq_s8(v210, vsubq_f32(vmulq_lane_f32(v263, *v200, 1), v263), v263);
        v265 = vextq_s8(v264, v264, 8uLL);
        v255.i64[1] = vandq_s8(*&v248, vcgtq_f32(vextq_s8(*&v255, *&v255, 4uLL), v265)).i64[1];
        v266 = vandq_s8(v231, vcgtq_f32(v264, v255));
        v267 = vbslq_s8(v219, vextq_s8(v266, v266, 0xCuLL), v255);
        v268 = vextq_s8(v9, vandq_s8(v231, vcgeq_f32(v267, v264)), 0xCuLL);
        v204.i64[0] = vdupq_laneq_s64(v268, 1).u64[0];
        v268.i64[0] = v267.i64[0];
        v269 = vminq_f32(vextq_s8(v267, v267, 0xCuLL), v267);
        v267.i64[1] = v204.i64[0];
        v270 = vbslq_s8(v230, vandq_s8(v231, vcgeq_f32(v264, vrev64q_s32(v267))), v268);
        v271 = vbslq_s8(v210, vrev64q_s32(v270), v270);
        v272 = vbslq_s8(v202, vsubq_f32(vrev64q_s32(v264), v271), v271);
        v273 = vbslq_s8(v210, vsubq_f32(v265, v264), v263);
        v274 = *(v200 + 23);
        v275 = vbslq_s8(*(v200 + 22), v272, vandq_s8(v231, vcgeq_f32(vnegq_f32(v272), v209)));
        *v272.f32 = vqtbl1_s8(v275, *v247.i8);
        *&v272.u32[2] = vqtbl1_s8(v275, v254);
        v276 = vbslq_s8(v202, v275, vminq_f32(vdupq_lane_s64(v275.i64[0], 0), v272));
        v277 = vminq_f32(v276, v269);
        v269.i64[0] = vextq_s8(v277, v276, 0xCuLL).u64[0];
        *v272.f32 = vext_s8(*v276.f32, *&vextq_s8(v277, v277, 8uLL), 4uLL);
        v276.i64[1] = v277.i64[1];
        v278 = vbslq_s8(v219, vsubq_f32(v273, vmulq_lane_f32(v273, *v200, 1)), v273);
        v272.i64[1] = v269.i64[0];
        v279 = vbslq_s8(v210, vbslq_s8(vcgtq_f32(v209, v272), v209, v278), v278);
        v280 = vbslq_s8(v202, vaddq_f32(vrev64q_s32(v279), vextq_s8(v279, v279, 8uLL)), v276);
        v281 = vextq_s8(v280, v280, 4uLL);
        v282 = vcgtq_f32(vextq_s8(v280, v280, 8uLL), v209);
        v279.i64[1] = vbslq_s8(v282, v281, *&v279).i64[1];
        v283 = vminq_f32(vmaxq_f32(v241, v248), v218);
        v284 = vminq_f32(vmaxq_f32(vmulq_f32(v283, vrecpsq_f32(*v200, v283)), v248), v218);
        v285 = vbslq_s8(v230, vmulq_f32(vmulq_f32(v284, vrecpsq_f32(*v200, v284)), v279), v279);
        v286 = vbslq_s8(v202, v285, vbslq_s8(v282, v285, vextq_s8(v285, v285, 8uLL)));
        v287 = vmulq_f32(v212, v286);
        *&v287.i32[3] = v15;
        v288 = vbslq_s8(v230, vmulq_lane_f32(v223, *&vmulq_f32(v215, v286), 1), v287);
        v289 = vmulq_f32(v216, v288);
        *v284.f32 = vqtbl1_s8(v289, *v274.i8);
        v269.i64[0] = vextq_s8(v274, v274, 8uLL).u64[0];
        *v289.f32 = vqtbl1_s8(v289, *v269.f32);
        v273.i64[0] = v284.i64[0];
        v290 = vext_s8(*v289.f32, *v284.f32, 4uLL);
        v268.i64[0] = v284.i64[0];
        v268.i64[1] = v289.i64[0];
        v273.i64[1] = v289.i64[0];
        *v289.f32 = vext_s8(*v284.f32, *v289.f32, 4uLL);
        *&v289.u32[2] = v290;
        v291 = vmulq_f32(v222, v288);
        *v274.i8 = vqtbl1_s8(v291, *v274.i8);
        *v291.f32 = vqtbl1_s8(v291, *v269.f32);
        v284.i64[0] = v274.i64[0];
        v284.i64[1] = v291.i64[0];
        v269.i64[0] = v274.i64[0];
        v269.i64[1] = v291.i64[0];
        v291.i64[1] = v274.i64[0];
        v292 = *(a2 + 22);
        v293 = vsubq_f32(vbslq_s8(v202, vaddq_f32(vaddq_f32(vrev64q_s32(v269), v284), v291), vaddq_f32(vaddq_f32(vrev64q_s32(v273), v268), v289)), v9);
        v294 = *(a2 + 10);
        if (v5)
        {
          v295 = vaddq_s32(vcvtq_s32_f32(v293), vcltzq_f32(v293));
          v296 = vsubq_f32(v293, vcvtq_f32_s32(v295)).u64[0];
          v297 = (v294 + 16 * (v295.i32[0] + v295.i32[1] * v292));
          v298 = vaddq_f32(*v297, vmulq_n_f32(vsubq_f32(v297[1], *v297), v296.f32[0]));
          v299 = vaddq_f32(v298, vmulq_lane_f32(vsubq_f32(vaddq_f32(v297[v292], vmulq_n_f32(vsubq_f32(v297[v292 + 1], v297[v292]), v296.f32[0])), v298), v296, 1));
        }

        else
        {
          v300.i64[0] = 0x3F0000003F000000;
          v300.i64[1] = 0x3F0000003F000000;
          v301 = vaddq_f32(v293, v300);
          v302 = vcvtq_s32_f32(v301);
          v301.i64[0] = vaddq_s32(v302, vcgtq_f32(vcvtq_f32_s32(v302), v301)).u64[0];
          v299 = *(v294 + 16 * (v301.i32[0] + v301.i32[1] * v292));
        }

        *(v13 + 16 * v17) = v299;
      }

      v16 = vaddq_f32(v16, v12);
      v13 += v14;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcSlicedScale::GetDOD(HgcSlicedScale *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v4 = &HGRectNull;
  }

  else
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      HGRectGrow(v6, v5, v7);
    }

    v4 = &HGRectInfinite;
  }

  return *v4;
}

uint64_t HgcSlicedScale::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(DOD, v9, v10);
  }

  return DOD;
}

void HgcSlicedScale::HgcSlicedScale(HgcSlicedScale *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DB560;
  operator new();
}

void HgcSlicedScale::~HgcSlicedScale(HGNode *this)
{
  *this = &unk_2871DB560;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40502CBA4ALL);
  }

  HGNode::~HGNode(this);
}

{
  HgcSlicedScale::~HgcSlicedScale(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSlicedScale::SetParameter(HgcSlicedScale *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        v13 = *(this + 51);
        if (*(v13 + 96) != a3.n128_f32[0] || *(v13 + 100) != a4 || *(v13 + 104) != a5 || *(v13 + 108) != a6)
        {
          *(v13 + 96) = a3.n128_u32[0];
          *(v13 + 100) = a4;
          *(v13 + 104) = a5;
          *(v13 + 108) = a6;
          goto LABEL_74;
        }
      }

      else if (a2 == 7)
      {
        v17 = *(this + 51);
        if (*(v17 + 112) != a3.n128_f32[0] || *(v17 + 116) != a4 || *(v17 + 120) != a5 || *(v17 + 124) != a6)
        {
          *(v17 + 112) = a3.n128_u32[0];
          *(v17 + 116) = a4;
          *(v17 + 120) = a5;
          *(v17 + 124) = a6;
          goto LABEL_74;
        }
      }

      else
      {
        v9 = *(this + 51);
        if (*(v9 + 128) != a3.n128_f32[0] || *(v9 + 132) != a4 || *(v9 + 136) != a5 || *(v9 + 140) != a6)
        {
          *(v9 + 128) = a3.n128_u32[0];
          *(v9 + 132) = a4;
          *(v9 + 136) = a5;
          *(v9 + 140) = a6;
          goto LABEL_74;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        v15 = *(this + 51);
        if (*(v15 + 144) != a3.n128_f32[0] || *(v15 + 148) != a4 || *(v15 + 152) != a5 || *(v15 + 156) != a6)
        {
          *(v15 + 144) = a3.n128_u32[0];
          *(v15 + 148) = a4;
          *(v15 + 152) = a5;
          *(v15 + 156) = a6;
          goto LABEL_74;
        }

        return 0;
      case 0xA:
        v19 = *(this + 51);
        if (*(v19 + 160) != a3.n128_f32[0] || *(v19 + 164) != a4 || *(v19 + 168) != a5 || *(v19 + 172) != a6)
        {
          *(v19 + 160) = a3.n128_u32[0];
          *(v19 + 164) = a4;
          *(v19 + 168) = a5;
          *(v19 + 172) = a6;
          goto LABEL_74;
        }

        return 0;
      case 0xB:
        v11 = *(this + 51);
        if (*(v11 + 176) != a3.n128_f32[0] || *(v11 + 180) != a4 || *(v11 + 184) != a5 || *(v11 + 188) != a6)
        {
          *(v11 + 176) = a3.n128_u32[0];
          *(v11 + 180) = a4;
          *(v11 + 184) = a5;
          *(v11 + 188) = a6;
          goto LABEL_74;
        }

        return 0;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v14 = *(this + 51);
        if (v14[3].n128_f32[0] != 0.0 || v14[3].n128_f32[1] != 0.0 || v14[3].n128_f32[2] != 0.0 || v14[3].n128_f32[3] != a3.n128_f32[0])
        {
          v14[3].n128_u64[0] = 0;
          v14[3].n128_u32[3] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v14[3].n128_u32[2] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v14[26] = a3;
          goto LABEL_74;
        }
      }

      else if (a2 == 4)
      {
        v18 = *(this + 51);
        if (v18[4].n128_f32[0] != 0.0 || v18[4].n128_f32[1] != 0.0 || v18[4].n128_f32[2] != a3.n128_f32[0] || v18[4].n128_f32[3] != 0.0)
        {
          v18[4].n128_u64[0] = 0;
          v18[4].n128_u32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v18[4].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v18[27] = a3;
          goto LABEL_74;
        }
      }

      else
      {
        v10 = *(this + 51);
        if (*(v10 + 80) != a3.n128_f32[0] || *(v10 + 84) != a4 || *(v10 + 88) != a5 || *(v10 + 92) != a6)
        {
          *(v10 + 80) = a3.n128_u32[0];
          *(v10 + 84) = a4;
          *(v10 + 88) = a5;
          *(v10 + 92) = a6;
          goto LABEL_74;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 0:
        v12 = *(this + 51);
        if (*v12 != a3.n128_f32[0] || *(v12 + 4) != a4 || *(v12 + 8) != a5 || *(v12 + 12) != a6)
        {
          *v12 = a3.n128_u32[0];
          *(v12 + 4) = a4;
          *(v12 + 8) = a5;
          *(v12 + 12) = a6;
          goto LABEL_74;
        }

        return 0;
      case 1:
        v16 = *(this + 51);
        if (v16[1].n128_f32[0] != 0.0 || v16[1].n128_f32[1] != 0.0 || v16[1].n128_f32[2] != a3.n128_f32[0] || v16[1].n128_f32[3] != 0.0)
        {
          v16[1].n128_u64[0] = 0;
          v16[1].n128_u32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v16[1].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v16[24] = a3;
          goto LABEL_74;
        }

        return 0;
      case 2:
        v8 = *(this + 51);
        if (v8[2].n128_f32[0] != 0.0 || v8[2].n128_f32[1] != a3.n128_f32[0] || v8[2].n128_f32[2] != 0.0 || v8[2].n128_f32[3] != 0.0)
        {
          v8[2].n128_u32[0] = 0;
          v8[2].n128_u32[1] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v8[2].n128_u64[1] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v8[25] = a3;
LABEL_74:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

uint64_t HgcSlicedScale::GetParameter(HgcSlicedScale *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        v10 = *(this + 51);
        *a3 = v10[24];
        a3[1] = v10[25];
        a3[2] = v10[26];
        v5 = v10 + 27;
      }

      else
      {
        v6 = *(this + 51);
        if (a2 == 7)
        {
          *a3 = v6[28];
          a3[1] = v6[29];
          a3[2] = v6[30];
          v5 = v6 + 31;
        }

        else
        {
          *a3 = v6[32];
          a3[1] = v6[33];
          a3[2] = v6[34];
          v5 = v6 + 35;
        }
      }

      goto LABEL_26;
    }

    switch(a2)
    {
      case 9:
        v12 = *(this + 51);
        *a3 = v12[36];
        a3[1] = v12[37];
        a3[2] = v12[38];
        v5 = v12 + 39;
        goto LABEL_26;
      case 10:
        v14 = *(this + 51);
        *a3 = v14[40];
        a3[1] = v14[41];
        a3[2] = v14[42];
        v5 = v14 + 43;
        goto LABEL_26;
      case 11:
        v8 = *(this + 51);
        *a3 = v8[44];
        a3[1] = v8[45];
        a3[2] = v8[46];
        v5 = v8 + 47;
        goto LABEL_26;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v11 = *(this + 51);
        *a3 = v11[104];
        a3[1] = v11[105];
        a3[2] = v11[106];
        v5 = v11 + 107;
      }

      else
      {
        v7 = *(this + 51);
        if (a2 == 4)
        {
          *a3 = v7[108];
          a3[1] = v7[109];
          a3[2] = v7[110];
          v5 = v7 + 111;
        }

        else
        {
          *a3 = v7[20];
          a3[1] = v7[21];
          a3[2] = v7[22];
          v5 = v7 + 23;
        }
      }

      goto LABEL_26;
    }

    switch(a2)
    {
      case 0:
        v9 = *(this + 51);
        *a3 = *v9;
        a3[1] = v9[1];
        a3[2] = v9[2];
        v5 = v9 + 3;
        goto LABEL_26;
      case 1:
        v13 = *(this + 51);
        *a3 = v13[96];
        a3[1] = v13[97];
        a3[2] = v13[98];
        v5 = v13 + 99;
        goto LABEL_26;
      case 2:
        v4 = *(this + 51);
        *a3 = v4[100];
        a3[1] = v4[101];
        a3[2] = v4[102];
        v5 = v4 + 103;
LABEL_26:
        v3 = 0;
        a3[3] = *v5;
        break;
    }
  }

  return v3;
}

const char *HgcSlicedTile::GetProgram(HgcSlicedTile *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_12;
    }

    else
    {
      return aMetal10Len0000_13;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_3;
  }
}

void sub_25FA50CF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_2603448D0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FA50E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA50EC8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA50EC0);
}

uint64_t HgcSlicedTile::BindTexture(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 228) - *(a2 + 220));
    v8.n128_f32[0] = 1.0 / (*(a2 + 232) - *(a2 + 224));
  }

  v5.n128_f32[0] = *(a2 + 240);
  v6.n128_f32[0] = *(a2 + 244);
  (*(*a2 + 136))(a2, 14, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcSlicedTile::Bind(HgcSlicedTile *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*a2 + 144))(a2, 10, *(this + 51) + 160, 1);
  (*(*a2 + 144))(a2, 11, *(this + 51) + 176, 1);
  (*(*a2 + 144))(a2, 12, *(this + 51) + 192, 1);
  (*(*a2 + 144))(a2, 13, *(this + 51) + 208, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSlicedTile::RenderTile(HgcSlicedTile *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = 0;
    *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
    v9.i64[1] = 0x3F80000000000000;
    v10 = *(a2 + 2) - v6.i32[0];
    v11 = *(a2 + 2);
    v12 = 16 * *(a2 + 6);
    v181 = v9;
    v182 = v9;
    do
    {
      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v181;
        do
        {
          v15 = *(this + 51);
          v17 = *(v15 + 12);
          v16 = *(v15 + 13);
          v19 = *(v15 + 14);
          v18 = *(v15 + 15);
          v20 = vsubq_f32(v19, vextq_s8(v16, v16, 8uLL));
          v21 = *v15;
          v187 = *(v15 + 1);
          v22 = vminq_f32(vextq_s8(v20, v20, 4uLL), vrev64q_s32(v187));
          v23 = vaddq_f32(v16, v19);
          v24 = *(v15 + 2);
          v183 = *(v15 + 3);
          v25 = vbslq_s8(v18, vmulq_lane_f32(*v15, *v22.i8, 1), vrev64q_s32(vmaxq_f32(v23, v24)));
          v26 = *(v15 + 4);
          v186 = *(v15 + 5);
          v27 = vmulq_f32(v14, v186);
          v28 = vaddq_f32(v27, vextq_s8(v27, v27, 4uLL));
          v30 = *(v15 + 8);
          v29 = *(v15 + 9);
          v32 = *(v15 + 16);
          v31 = *(v15 + 17);
          v33 = vminq_f32(vmaxq_f32(vrecpeq_f32(v29), v32), v31);
          v34 = vminq_f32(vmaxq_f32(vmulq_f32(v33, vrecpsq_f32(v29, v33)), v32), v31);
          v184 = *(v15 + 6);
          v185 = *(v15 + 7);
          v35 = vbslq_s8(v18, vmulq_f32(v185, vbslq_s8(v18, vmulq_f32(vmulq_f32(v34, vrecpsq_f32(v29, v34)), vbslq_s8(v18, vaddq_f32(v28, vextq_s8(v28, v28, 8uLL)), v22)), v22)), v22);
          v36 = vminq_f32(vmaxq_f32(vrecpeq_f32(v17), v32), v31);
          v37 = vminq_f32(vmaxq_f32(vmulq_f32(v36, vrecpsq_f32(v17, v36)), v32), v31);
          v38 = vbslq_s8(v18, vmulq_f32(vmulq_f32(v37, vrecpsq_f32(v17, v37)), v35), v22);
          v39 = vextq_s8(v21, v21, 8uLL);
          v40 = vmulq_lane_f32(v39, *v25.f32, 1);
          v41 = vextq_s8(v40, v38, 8uLL);
          v38.i64[1] = v40.i64[1];
          v42 = *(v15 + 18);
          v43 = *(v15 + 19);
          v40.i64[0] = vandq_s8(v42, vcgeq_f32(v41, v38)).u64[0];
          v40.i64[1] = v20.i64[1];
          v44.i64[0] = v25.i64[0];
          v44.i64[1] = vandq_s8(v42, vcgeq_f32(v38, v25)).u64[0];
          v25.i64[1] = vandq_s8(*&v32, vcgeq_f32(vnegq_f32(vrev64q_s32(v44)), v42)).i64[1];
          v45 = vandq_s8(v42, vcgeq_f32(vnegq_f32(v40), v43));
          v47 = *(v15 + 20);
          v46 = *(v15 + 21);
          v48 = vbslq_s8(v47, vminq_f32(v25, vbslq_s8(v47, vextq_s8(v45, v45, 4uLL), v38)), v38);
          v49 = vbslq_s8(v46, vsubq_f32(vmulq_n_f32(v48, COERCE_FLOAT(*v15)), v48), v48);
          v50 = vextq_s8(v49, v49, 8uLL);
          v51 = *(v15 + 22);
          v52 = *(v15 + 23);
          v53 = vbslq_s8(v51, vandq_s8(v43, vcgtq_f32(v50, v49)), v25);
          v54 = vbslq_s8(v46, vminq_f32(v50, vbslq_s8(v46, vminq_f32(vextq_s8(v53, v53, 4uLL), vbslq_s8(v46, vrev64q_s32(vandq_s8(v42, vcgtq_f32(v53, v49))), v40)), v40)), v40);
          v55 = vbslq_s8(v51, vandq_s8(v43, vcgtq_f32(v49, v50)), v25);
          v56 = vbslq_s8(v47, vminq_f32(vextq_s8(v54, v54, 8uLL), vrev64q_s32(v55)), v49);
          v57 = vbslq_s8(v47, vbslq_s8(vcgtq_f32(v56, v43), vrev64q_s32(v56), vextq_s8(v56, v56, 4uLL)), v49);
          v58 = vrev64q_s32(v57);
          v59 = vbslq_s8(v51, vminq_f32(vextq_s8(v54, v54, 0xCuLL), vbslq_s8(v51, vandq_s8(v43, vcgtq_f32(v58, vextq_s8(v55, v55, 8uLL))), v25)), v25);
          v60 = vextq_s8(v59, v59, 4uLL);
          v61 = vbslq_s8(v47, vbslq_s8(vcgtq_f32(vrev64q_s32(v59), v43), v60, v57), v49);
          v62 = vbslq_s8(v18, v61, vsubq_f32(vrev64q_s32(v61), v61));
          v63 = vrev64q_s32(vbslq_s8(v47, vsubq_f32(v60, v58), v54));
          v64 = vminq_f32(vmaxq_f32(vrecpeq_f32(v63), v42), v31);
          v65 = vminq_f32(vmaxq_f32(vmulq_f32(v64, vrecpsq_f32(v63, v64)), v42), v31);
          v63.i64[0] = vdupq_laneq_s64(vmulq_n_f32(vmulq_f32(vmulq_f32(v65, vrecpsq_f32(v63, v65)), v62), COERCE_FLOAT(*v15)), 1).u64[0];
          v65.i64[0] = v62.i64[0];
          v65.i64[1] = v63.i64[0];
          v66 = vrev64q_s32(v65);
          v67 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
          v68 = vbslq_s8(v47, vsubq_f32(v66, vsubq_f32(v67, vandq_s8(v32, vcgtq_f32(v67, v66)))), v54);
          v66.i64[0] = vbslq_s8(v18, v23, vsubq_f32(vdupq_laneq_s64(v68, 1), vmulq_n_f32(v43, COERCE_FLOAT(*v15)))).u64[0];
          v69 = vmulq_f32(v39, v32);
          v60.i64[0] = v66.i64[0];
          v60.i64[1] = v69.i64[1];
          v70 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
          v66.i64[1] = vsubq_f32(v69, vsubq_f32(v70, vbslq_s8(vcgtq_f32(v70, v60), *&v43, 0))).i64[1];
          v71 = vbslq_s8(v51, vandq_s8(v43, vcgeq_f32(*(v15 + 10), v52)), v25);
          v72 = vbslq_s8(v46, vsubq_f32(v66, v52), v66);
          v73 = vextq_s8(v68, v68, 0xCuLL);
          v74.i64[0] = v62.i64[0];
          v74.i64[1] = vminq_f32(v73, v71).i64[1];
          v75 = vandq_s8(v32, vcgeq_f32(vnegq_f32(vextq_s8(v71, v71, 4uLL)), v42));
          v72.i64[1] = vandq_s8(*&v32, vcgtq_f32(v52, vnegq_f32(vrev64q_s32(v72)))).i64[1];
          v76 = vbslq_s8(v51, vminq_f32(v74, vextq_s8(v75, v75, 0xCuLL)), v72);
          v77 = vbslq_s8(vcgtq_f32(v76, v52), v52, vrev64q_s32(v76));
          v76.i64[1] = v77.i64[1];
          v62.i64[1] = vbslq_s8(vcgtq_f32(v74, v52), *&v77, *&v43).i64[1];
          v78 = vbslq_s8(v18, vsubq_f32(v62, v71), v71);
          v79 = vbslq_s8(v18, vaddq_f32(v62, vrev64q_s32(vbslq_s8(v46, vsubq_f32(v78, vmulq_n_f32(v78, COERCE_FLOAT(*v15))), v78))), v62);
          v80 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
          v81 = vbslq_s8(v18, v76, vsubq_f32(v76, vsubq_f32(v80, vandq_s8(v32, vcgtq_f32(v80, v76)))));
          v77.i64[0] = v79.i64[0];
          v77.i64[1] = vdupq_laneq_s64(vminq_f32(v73, v79), 1).u64[0];
          v82 = vbslq_s8(v47, vbslq_s8(vcgtq_f32(vrev64q_s32(v77), v52), vextq_s8(v81, v81, 8uLL), v68), v54);
          v83 = vbslq_s8(v18, v76, vsubq_f32(v32, vextq_s8(v82, v82, 8uLL)));
          v84 = vnegq_f32(vextq_s8(*(v15 + 11), *(v15 + 11), 8uLL));
          v81.i64[0] = v79.i64[0];
          v81.i64[1] = vdupq_laneq_s64(vmulq_lane_f32(v84, *v82.f32, 1), 1).u64[0];
          v85 = vbslq_s8(vcgtq_f32(v52, vrev64q_s32(v81)), vdupq_lane_s64(v83.i64[0], 0), v82);
          v86 = vmaxq_f32(v83, v26);
          v87 = vextq_s8(v21, v21, 0xCuLL);
          v88 = vmulq_n_f32(v87, v86.f32[0]);
          v86.i64[0] = vrev64q_s32(v86).u64[0];
          v86.i64[1] = v88.i64[1];
          v81.i64[0] = v75.i64[0];
          v81.i64[1] = vdupq_laneq_s64(v85, 1).u64[0];
          v89 = vminq_f32(v82, vextq_s8(v183, v183, 8uLL));
          v82.i64[1] = v89.i64[1];
          v75.i64[1] = v85.i64[1];
          v90 = vbslq_s8(v47, vmulq_laneq_f32(v39, v89, 2), v82);
          v91 = vmulq_f32(v14, v184);
          v92 = vaddq_f32(v91, vextq_s8(v91, v91, 4uLL));
          v93 = vextq_s8(v29, v29, 0xCuLL);
          v94 = vminq_f32(vmaxq_f32(vrecpeq_f32(v93), v42), v31);
          v95 = vminq_f32(vmaxq_f32(vmulq_f32(v94, vrecpsq_f32(v93, v94)), v42), v31);
          v96 = vmulq_f32(vaddq_f32(v92, vdupq_lane_s64(v92.i64[0], 0)), vmulq_f32(v95, vrecpsq_f32(v93, v95)));
          v97 = vextq_s8(v17, v17, 0xCuLL);
          v98 = vminq_f32(vmaxq_f32(vrecpeq_f32(v97), v42), v31);
          v99 = vminq_f32(vmaxq_f32(vmulq_f32(v98, vrecpsq_f32(v97, v98)), v42), v31);
          v100 = vmulq_f32(v99, vrecpsq_f32(v97, v99));
          v99.i64[0] = v79.i64[0];
          v101 = vmulq_f32(vmulq_lane_f32(v96, *v30.f32, 1), v100);
          *v100.f32 = vext_s8(*v79.f32, *&vextq_s8(v101, v101, 8uLL), 4uLL);
          v102 = vbslq_s8(v51, vandq_s8(v43, vcgtq_f32(v52, vrev64q_s32(v81))), v75);
          v81.i64[0] = vextq_s8(v101, v79, 0xCuLL).u64[0];
          v103 = vextq_s8(v101, v79, 8uLL);
          v99.i64[1] = v101.i64[1];
          v104 = vbslq_s8(v47, vrev64q_s32(vandq_s8(v43, vcgeq_f32(v86, v99))), v86);
          v100.i64[1] = v81.i64[0];
          v105 = vandq_s8(v43, vcgtq_f32(v99, v104));
          v106 = vextq_s8(v90, v90, 8uLL);
          v107 = vbslq_s8(v18, vextq_s8(v105, v105, 8uLL), vandq_s8(v32, vcgtq_f32(v106, v100)));
          v108 = vbslq_s8(v46, vsubq_f32(v100, v106), v78);
          v109 = vextq_s8(v90, v90, 0xCuLL);
          v110 = vbslq_s8(v18, vandq_s8(v42, vcgtq_f32(v109, v103)), v104);
          v111 = vbslq_s8(v46, vbslq_s8(vcgtq_f32(v42, vrev64q_s32(v108)), v42, v99), v99);
          v112 = vandq_s8(v43, vcgtq_f32(v104, v99));
          v113 = vextq_s8(v112, v112, 8uLL);
          v114 = vbslq_s8(v18, vminq_f32(vbslq_s8(v18, vminq_f32(v110, vbslq_s8(v18, vandq_s8(v42, vcgeq_f32(vnegq_f32(vextq_s8(v110, v110, 0xCuLL)), v52)), v102)), v102), vrev64q_s32(vbslq_s8(v18, v113, vminq_f32(vrev64q_s32(v107), v107)))), v102);
          v115 = vbslq_s8(vcgtq_f32(vbslq_s8(v18, v113, vminq_f32(v90, vextq_s8(v114, v114, 4uLL))), v42), v42, vextq_s8(v114, v114, 8uLL));
          v116 = vbslq_s8(v18, vminq_f32(v114, vbslq_s8(v18, v113, v115)), v115);
          v117 = vbslq_s8(vcgtq_f32(vextq_s8(v116, v116, 8uLL), v52), v110, v111);
          v118 = vbslq_s8(v47, vminq_f32(v108, vextq_s8(v90, v90, 4uLL)), v108);
          v108.i64[0] = v114.i64[0];
          v108.i64[1] = vdupq_laneq_s64(v117, 1).u64[0];
          v114.i64[1] = v117.i64[1];
          v119 = vbslq_s8(v47, vandq_s8(v32, vcgtq_f32(vrev64q_s32(v108), v90)), v114);
          v120 = vbslq_s8(v47, vminq_f32(vextq_s8(v119, v119, 4uLL), v119), v114);
          v121 = vrev64q_s32(v90);
          v108.i64[0] = v120.i64[0];
          v108.i64[1] = vbslq_s8(vcgtq_f32(vrev64q_s32(v120), v52), *&v121, *&v120).i64[1];
          v122 = vbslq_s8(v18, vsubq_f32(v109, vextq_s8(v110, v110, 8uLL)), v115);
          v123 = vextq_s8(v122, v122, 8uLL);
          v124 = vminq_f32(vmaxq_f32(vrecpeq_f32(v123), v42), v31);
          v125 = vminq_f32(vmaxq_f32(vmulq_f32(v124, vrecpsq_f32(v123, v124)), v42), v31);
          v126 = vmulq_lane_f32(vbslq_s8(v51, vmulq_f32(vmulq_f32(v125, vrecpsq_f32(v123, v125)), vbslq_s8(v51, vsubq_f32(v108, v110), v110)), v110), *v15, 1);
          v125.i64[0] = v120.i64[0];
          v125.i64[1] = v126.i64[1];
          v127 = vcvtq_f32_s32(vcvtq_s32_f32(v125));
          v128 = vsubq_f32(v125, vsubq_f32(v127, vbslq_s8(vcgtq_f32(v127, v125), v43, 0)));
          v129 = vbslq_s8(v51, vmulq_f32(v87, v32), v110);
          v130 = vcvtq_f32_s32(vcvtq_s32_f32(v129));
          v131 = vsubq_f32(v129, vsubq_f32(v130, vandq_s8(v43, vcgtq_f32(v130, v129))));
          v129.i64[0] = v120.i64[0];
          v129.i64[1] = v128.i64[1];
          v130.i64[0] = vdupq_laneq_s64(v128, 1).u64[0];
          v132 = vextq_s8(v120, v120, 8uLL);
          v120.i64[1] = v130.i64[0];
          v133 = vbslq_s8(v47, vsubq_f32(vrev64q_s32(v120), vmulq_lane_f32(v19, *v15, 1)), v111);
          v134 = *(v15 + 24);
          v135 = *(v15 + 25);
          v136 = vbslq_s8(v47, vsubq_f32(v133, v134), v111);
          v137 = vbslq_s8(v51, vminq_f32(v132, v118), v118);
          v138 = vbslq_s8(v46, vminq_f32(vextq_s8(v137, v137, 4uLL), v129), v129);
          v139 = vextq_s8(v122, vandq_s8(v32, vcgtq_f32(v122, v32)), 0xCuLL);
          v140 = vbslq_s8(v51, vbslq_s8(vcgtq_f32(v137, v134), vbslq_s8(v51, vbslq_s8(vcgtq_f32(vextq_s8(v138, v138, 0xCuLL), v134), v134, vbslq_s8(v51, vandq_s8(v43, vcgtq_f32(v134, vnegq_f32(vbslq_s8(v51, v131, v110)))), v110)), v110), v43), v118);
          v137.i64[0] = vdupq_laneq_s64(v139, 1).u64[0];
          v139.i64[0] = v122.i64[0];
          v122.i64[1] = v137.i64[0];
          v141 = vbslq_s8(v47, vminq_f32(v106, vrev64q_s32(v122)), v138);
          v138.i64[0] = vbslq_s8(vcgtq_f32(vextq_s8(v140, v140, 8uLL), v134), vrev64q_s32(v136), v136).u64[0];
          v138.i64[1] = v136.i64[1];
          v142 = vextq_s8(v141, v141, 8uLL);
          v143 = vcvtq_f32_s32(vcvtq_s32_f32(v138));
          v130.i64[0] = v140.i64[0];
          v130.i64[1] = vdupq_laneq_s64(vminq_f32(v142, v140), 1).u64[0];
          v144 = vbslq_s8(v47, vbslq_s8(vcgtq_f32(vrev64q_s32(v130), v52), vbslq_s8(v47, vsubq_f32(v138, vsubq_f32(v143, vandq_s8(v32, vcgtq_f32(v143, v138)))), v138), vrev64q_s32(v141)), v138);
          v145 = vrev64q_s32(v144);
          v130.i64[0] = v140.i64[0];
          v130.i64[1] = vmulq_n_f32(v84, *&v141).i64[1];
          v146 = vbslq_s8(vcgtq_f32(v134, v130), vbslq_s8(v51, vsubq_f32(v43, v145), v110), v145);
          v137.i64[0] = v140.i64[0];
          v137.i64[1] = v146.i64[1];
          v147 = vbslq_s8(v51, vminq_f32(v142, vbslq_s8(v51, vandq_s8(v43, vcgtq_f32(v134, v137)), v110)), v110);
          v140.i64[1] = vbslq_s8(vcgtq_f32(v147, v134), *&v134, v146).i64[1];
          v148 = vextq_s8(v140, v140, 8uLL);
          v149 = vbslq_s8(v18, vbslq_s8(vcgtq_f32(vbslq_s8(v18, vminq_f32(v141, vbslq_s8(v18, vandq_s8(v42, vcgtq_f32(v148, v42)), v144)), v144), v134), v42, v148), v144);
          v150 = vextq_s8(v147, v147, 0xCuLL);
          v151 = vbslq_s8(v18, vminq_f32(v147, v150), v140);
          v152 = vsubq_f32(v150, vmulq_lane_f32(v87, *v147.f32, 1));
          v153 = vbslq_s8(v18, v141, vbslq_s8(vcgtq_f32(v142, v134), v32, v139));
          v154 = vsubq_f32(v187, v24);
          v155 = vbslq_s8(v47, vaddq_f32(vextq_s8(v24, v24, 4uLL), vmulq_lane_f32(vextq_s8(v154, v154, 4uLL), *v153.f32, 1)), v149);
          v156 = vbslq_s8(v46, vbslq_s8(vcgtq_f32(v90, v134), vextq_s8(v155, v155, 8uLL), v155), v155);
          v157 = vbslq_s8(v47, vsubq_f32(vmulq_laneq_f32(v39, v90, 2), v121), v156);
          v158 = vbslq_s8(v47, vsubq_f32(vrev64q_s32(v157), v157), v156);
          v157.i64[0] = v151.i64[0];
          v157.i64[1] = v152.i64[1];
          v159 = vbslq_s8(v51, vaddq_f32(v157, v158), v158);
          v160 = vextq_s8(v152, v151, 8uLL);
          v161 = vbslq_s8(v47, vbslq_s8(vcgtq_f32(v52, v160), v52, v159), v159);
          v162 = vbslq_s8(v18, vaddq_f32(v26, vmulq_f32(vsubq_f32(v183, v26), v161)), v161);
          v162.i64[1] = vbslq_s8(vcgtq_f32(v160, v134), *&v162, vrev64q_s32(*&v162)).i64[1];
          v163 = vbslq_s8(v46, vmulq_n_f32(v162, v29.f32[0]), v162);
          v153.i64[0] = vbslq_s8(v18, vmulq_lane_f32(vbslq_s8(v18, vbslq_s8(vcgtq_f32(v153, v134), v163, vextq_s8(v163, v163, 8uLL)), v163), *v29.f32, 1), v163).u64[0];
          v164 = vmulq_lane_f32(v186, *v153.f32, 1);
          v164.i32[3] = 1.0;
          v165 = vbslq_s8(v46, vmulq_n_f32(v184, v153.f32[0]), v164);
          v166 = vmulq_f32(v30, v165);
          *v160.f32 = vqtbl1_s8(v166, *v135.i8);
          v157.i64[0] = vextq_s8(v135, v135, 8uLL).u64[0];
          *v166.f32 = vqtbl1_s8(v166, *v157.f32);
          v154.i64[0] = v160.i64[0];
          *v152.i8 = vext_s8(*v166.f32, *v160.f32, 4uLL);
          v147.i64[0] = v160.i64[0];
          v147.i64[1] = v166.i64[0];
          v154.i64[1] = v166.i64[0];
          *v166.f32 = vext_s8(*v160.f32, *v166.f32, 4uLL);
          v166.i64[1] = v152.i64[0];
          v167 = vaddq_f32(vaddq_f32(vrev64q_s32(v154), v147), v166);
          v168 = vmulq_f32(v185, v165);
          *v160.f32 = vqtbl1_s8(v168, *v135.i8);
          *v168.f32 = vqtbl1_s8(v168, *v157.f32);
          v157.i64[0] = v160.i64[0];
          v157.i64[1] = v168.i64[0];
          v154.i64[0] = v160.i64[0];
          v154.i64[1] = v168.i64[0];
          v168.i64[1] = v160.i64[0];
          v169 = *(a2 + 22);
          v170 = vsubq_f32(vbslq_s8(v18, vaddq_f32(vaddq_f32(vrev64q_s32(v154), v157), v168), v167), v182);
          v171 = *(a2 + 10);
          if (v5)
          {
            v172 = vaddq_s32(vcvtq_s32_f32(v170), vcltzq_f32(v170));
            v173 = vsubq_f32(v170, vcvtq_f32_s32(v172)).u64[0];
            v174 = (v171 + 16 * (v172.i32[0] + v172.i32[1] * v169));
            v175 = vaddq_f32(*v174, vmulq_n_f32(vsubq_f32(v174[1], *v174), v173.f32[0]));
            v176 = vaddq_f32(v175, vmulq_lane_f32(vsubq_f32(vaddq_f32(v174[v169], vmulq_n_f32(vsubq_f32(v174[v169 + 1], v174[v169]), v173.f32[0])), v175), v173, 1));
          }

          else
          {
            v177.i64[0] = 0x3F0000003F000000;
            v177.i64[1] = 0x3F0000003F000000;
            v178 = vaddq_f32(v170, v177);
            v179 = vcvtq_s32_f32(v178);
            v178.i64[0] = vaddq_s32(v179, vcgtq_f32(vcvtq_f32_s32(v179), v178)).u64[0];
            v176 = *(v171 + 16 * (v178.i32[0] + v178.i32[1] * v169));
          }

          *(v11 + v13) = v176;
          v14 = vaddq_f32(v14, xmmword_2603429B0);
          v13 += 16;
        }

        while (16 * v10 != v13);
      }

      v181 = vaddq_f32(v181, xmmword_2603429C0);
      ++v8;
      v11 += v12;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcSlicedTile::GetDOD(HgcSlicedTile *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v4 = &HGRectNull;
  }

  else
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      HGRectGrow(v6, v5, v7);
    }

    v4 = &HGRectInfinite;
  }

  return *v4;
}

uint64_t HgcSlicedTile::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(DOD, v9, v10);
  }

  return DOD;
}

void HgcSlicedTile::HgcSlicedTile(HgcSlicedTile *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DB7C8;
  operator new();
}

void HgcSlicedTile::~HgcSlicedTile(HGNode *this)
{
  *this = &unk_2871DB7C8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4003455651);
  }

  HGNode::~HGNode(this);
}

{
  HgcSlicedTile::~HgcSlicedTile(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSlicedTile::SetParameter(HgcSlicedTile *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  switch(a2)
  {
    case 0:
      v7 = *(this + 51);
      if (*v7 == a3.n128_f32[0] && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
      {
        return 0;
      }

      *v7 = a3.n128_f32[0];
      v7[1] = a4;
      v7[2] = a5;
      v7[3] = a6;
      goto LABEL_72;
    case 1:
      v15 = *(this + 51);
      if (v15[4] == a3.n128_f32[0] && v15[5] == a4 && v15[6] == a5 && v15[7] == a6)
      {
        return 0;
      }

      v15[4] = a3.n128_f32[0];
      v15[5] = a4;
      v15[6] = a5;
      v15[7] = a6;
      goto LABEL_72;
    case 2:
      v12 = *(this + 51);
      if (v12[8] == a3.n128_f32[0] && v12[9] == a4 && v12[10] == a5 && v12[11] == a6)
      {
        return 0;
      }

      v12[8] = a3.n128_f32[0];
      v12[9] = a4;
      v12[10] = a5;
      v12[11] = a6;
      goto LABEL_72;
    case 3:
      v13 = *(this + 51);
      if (v13[12] == a3.n128_f32[0] && v13[13] == a4 && v13[14] == a5 && v13[15] == a6)
      {
        return 0;
      }

      v13[12] = a3.n128_f32[0];
      v13[13] = a4;
      v13[14] = a5;
      v13[15] = a6;
      goto LABEL_72;
    case 4:
      v9 = *(this + 51);
      if (v9[16] == a3.n128_f32[0] && v9[17] == a4 && v9[18] == a5 && v9[19] == a6)
      {
        return 0;
      }

      v9[16] = a3.n128_f32[0];
      v9[17] = a4;
      v9[18] = a5;
      v9[19] = a6;
      goto LABEL_72;
    case 5:
      v16 = *(this + 51);
      if (v16[20] == a3.n128_f32[0] && v16[21] == a4 && v16[22] == a5 && v16[23] == a6)
      {
        return 0;
      }

      v16[20] = a3.n128_f32[0];
      v16[21] = a4;
      v16[22] = a5;
      v16[23] = a6;
      goto LABEL_72;
    case 6:
      v18 = *(this + 51);
      if (v18[24] == a3.n128_f32[0] && v18[25] == a4 && v18[26] == a5 && v18[27] == a6)
      {
        return 0;
      }

      v18[24] = a3.n128_f32[0];
      v18[25] = a4;
      v18[26] = a5;
      v18[27] = a6;
      goto LABEL_72;
    case 7:
      v14 = *(this + 51);
      if (v14[28] == a3.n128_f32[0] && v14[29] == a4 && v14[30] == a5 && v14[31] == a6)
      {
        return 0;
      }

      v14[28] = a3.n128_f32[0];
      v14[29] = a4;
      v14[30] = a5;
      v14[31] = a6;
      goto LABEL_72;
    case 8:
      v21 = *(this + 51);
      if (v21[32] == a3.n128_f32[0] && v21[33] == a4 && v21[34] == a5 && v21[35] == a6)
      {
        return 0;
      }

      v21[32] = a3.n128_f32[0];
      v21[33] = a4;
      v21[34] = a5;
      v21[35] = a6;
      goto LABEL_72;
    case 9:
      v11 = *(this + 51);
      if (v11[36] == a3.n128_f32[0] && v11[37] == a4 && v11[38] == a5 && v11[39] == a6)
      {
        return 0;
      }

      v11[36] = a3.n128_f32[0];
      v11[37] = a4;
      v11[38] = a5;
      v11[39] = a6;
      goto LABEL_72;
    case 10:
      v19 = -fabsf(a3.n128_f32[0]);
      v20 = *(this + 51);
      if (v20[10].n128_f32[0] == 0.0 && v20[10].n128_f32[1] == 0.0 && v20[10].n128_f32[2] == v19 && v20[10].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v20[10].n128_u64[0] = 0;
      v20[10].n128_f32[2] = v19;
      a3.n128_f32[1] = a4;
      v20[10].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v20[26] = a3;
      goto LABEL_72;
    case 11:
      v8 = *(this + 51);
      if (v8[44] == a3.n128_f32[0] && v8[45] == a4 && v8[46] == a5 && v8[47] == a6)
      {
        return 0;
      }

      v8[44] = a3.n128_f32[0];
      v8[45] = a4;
      v8[46] = a5;
      v8[47] = a6;
      goto LABEL_72;
    case 12:
      v10 = *(this + 51);
      if (v10[48] == a3.n128_f32[0] && v10[49] == a4 && v10[50] == a5 && v10[51] == a6)
      {
        return 0;
      }

      v10[48] = a3.n128_f32[0];
      v10[49] = a4;
      v10[50] = a5;
      v10[51] = a6;
      goto LABEL_72;
    case 13:
      v17 = *(this + 51);
      if (v17[52] == a3.n128_f32[0] && v17[53] == a4 && v17[54] == a5 && v17[55] == a6)
      {
        return 0;
      }

      v17[52] = a3.n128_f32[0];
      v17[53] = a4;
      v17[54] = a5;
      v17[55] = a6;
LABEL_72:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

uint64_t HgcSlicedTile::GetParameter(HgcSlicedTile *this, int a2, float *a3)
{
  switch(a2)
  {
    case 0:
      v3 = *(this + 51);
      *a3 = *v3;
      a3[1] = v3[1];
      a3[2] = v3[2];
      v4 = v3 + 3;
      goto LABEL_16;
    case 1:
      v12 = *(this + 51);
      *a3 = v12[4];
      a3[1] = v12[5];
      a3[2] = v12[6];
      v4 = v12 + 7;
      goto LABEL_16;
    case 2:
      v9 = *(this + 51);
      *a3 = v9[8];
      a3[1] = v9[9];
      a3[2] = v9[10];
      v4 = v9 + 11;
      goto LABEL_16;
    case 3:
      v10 = *(this + 51);
      *a3 = v10[12];
      a3[1] = v10[13];
      a3[2] = v10[14];
      v4 = v10 + 15;
      goto LABEL_16;
    case 4:
      v6 = *(this + 51);
      *a3 = v6[16];
      a3[1] = v6[17];
      a3[2] = v6[18];
      v4 = v6 + 19;
      goto LABEL_16;
    case 5:
      v13 = *(this + 51);
      *a3 = v13[20];
      a3[1] = v13[21];
      a3[2] = v13[22];
      v4 = v13 + 23;
      goto LABEL_16;
    case 6:
      v15 = *(this + 51);
      *a3 = v15[24];
      a3[1] = v15[25];
      a3[2] = v15[26];
      v4 = v15 + 27;
      goto LABEL_16;
    case 7:
      v11 = *(this + 51);
      *a3 = v11[28];
      a3[1] = v11[29];
      a3[2] = v11[30];
      v4 = v11 + 31;
      goto LABEL_16;
    case 8:
      v17 = *(this + 51);
      *a3 = v17[32];
      a3[1] = v17[33];
      a3[2] = v17[34];
      v4 = v17 + 35;
      goto LABEL_16;
    case 9:
      v8 = *(this + 51);
      *a3 = v8[36];
      a3[1] = v8[37];
      a3[2] = v8[38];
      v4 = v8 + 39;
      goto LABEL_16;
    case 10:
      v16 = *(this + 51);
      *a3 = v16[104];
      a3[1] = v16[105];
      a3[2] = v16[106];
      v4 = v16 + 107;
      goto LABEL_16;
    case 11:
      v5 = *(this + 51);
      *a3 = v5[44];
      a3[1] = v5[45];
      a3[2] = v5[46];
      v4 = v5 + 47;
      goto LABEL_16;
    case 12:
      v7 = *(this + 51);
      *a3 = v7[48];
      a3[1] = v7[49];
      a3[2] = v7[50];
      v4 = v7 + 51;
      goto LABEL_16;
    case 13:
      v14 = *(this + 51);
      *a3 = v14[52];
      a3[1] = v14[53];
      a3[2] = v14[54];
      v4 = v14 + 55;
LABEL_16:
      result = 0;
      a3[3] = *v4;
      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}