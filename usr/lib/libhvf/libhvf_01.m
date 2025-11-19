void *HVF::SwiftShapeShim::SwiftShapeShim(void *this, const HVF::SwiftShapeShim *a2)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  v2 = *(a2 + 1);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
  }

  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
  }

  this[6] = 0;
  this[7] = 0;
  this[8] = 0;
  v6 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  this[9] = 0;
  this[10] = 0;
  this[11] = 0;
  v8 = *(a2 + 9);
  v7 = *(a2 + 10);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_298ACB840(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      v8 = *v2;
      if (!*v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 56) = v7;
  operator delete(v7);
  v8 = *v2;
  if (!*v2)
  {
LABEL_4:
    v9 = *v1;
    if (!*v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(v1 + 32) = v8;
  operator delete(v8);
  v9 = *v1;
  if (!*v1)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_5:
  *(v1 + 8) = v9;
  operator delete(v9);
  goto LABEL_6;
}

void sub_298ACB8C8()
{
  if (!*v0)
  {
    JUMPOUT(0x298ACB86CLL);
  }

  JUMPOUT(0x298ACB864);
}

uint64_t std::__split_buffer<std::any>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *(v2 - 32);
    v2 -= 32;
    v4 = v5;
    *(a1 + 16) = v2;
    if (v5)
    {
      v4(0);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void HVF::SwiftShapeShim::~SwiftShapeShim(HVF::SwiftShapeShim *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void HVF::Composite::~Composite(HVF::Composite *this)
{
  HVF::Part::~Part(this);

  JUMPOUT(0x29C293CF0);
}

uint64_t HVF::Composite::shim(HVF::Composite *this)
{
  v3 = *(this + 1);
  v4 = *(this + 2);
  v2 = (this + 8);
  if (v3 == v4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v6 = 0u;
    if (v3 < *(this + 3))
    {
      *v4 = 0;
      v4[1] = 0;
      operator new();
    }

    std::vector<std::any>::__emplace_back_slow_path<HVF::SwiftCompositeShim>(v2);
  }

  return (*v3)(3);
}

void sub_298ACBBFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = v10;
  *(v9 + 16) = v11;
  HVF::SwiftCompositeShim::~SwiftCompositeShim(&a9);
  _Unwind_Resume(a1);
}

uint64_t HVF::Composite::finalizeShim(HVF::Composite *this)
{
  v2 = HVF::Composite::shim(this);
  v3 = *(this + 9);
  if (v3 != (v2[1] - *v2) >> 3)
  {
    return 0;
  }

  v4 = *(this + 8);
  v5 = *(this + 11);
  v6 = v5 - v4;
  if (v5 < v4)
  {
    return 0;
  }

  v7 = *(this + 10);
  if (v3 >= v7)
  {
    return 0;
  }

  v8 = (v2[7] - v2[6]) >> 1;
  v9 = v2[12];
  v10 = v2[13];
  if (v8 != v10 - v9)
  {
    return 0;
  }

  v11 = (v2[10] - v2[9]) >> 1;
  v13 = v2[15];
  v12 = v2[16];
  if (v11 != v12 - v13)
  {
    return 0;
  }

  v14 = v2[4];
  if (v11 != *(v14 - 2))
  {
    return 0;
  }

  v15 = 2 * v4;
  v16 = (v14 - v2[3]) >> 1;
  if (v16 - 1 != v15)
  {
    return 0;
  }

  v18 = v2[21];
  v17 = v2[22];
  v19 = (v17 - v18) >> 3;
  if (v19 != (v2[19] - v2[18]) >> 1)
  {
    return 0;
  }

  v21 = v2[27];
  v20 = v2[28];
  v22 = v20 - v21;
  if (v22 != (v2[25] - v2[24]) >> 1)
  {
    return 0;
  }

  v24 = v2[33];
  v23 = v2[34];
  v25 = (v23 - v24) >> 3;
  v26 = v2[30];
  if (v25 != (v2[31] - v26) >> 2)
  {
    return 0;
  }

  v74 = v2[39];
  v75 = v2[40];
  if (v75 - v74 != v2[37] - v2[36])
  {
    return 0;
  }

  v27 = 0;
  if (v8 <= v6 && v11 <= v15 * v6)
  {
    v28 = v7 - 1;
    if (v19 <= v28 && v22 <= v28)
    {
      v29 = v15 * v28;
      if (v25 <= v29 && v75 - v74 <= v29)
      {
        if (*(this + 12) <= 2 * v5)
        {
          v66 = v2[3];
          v70 = v2[30];
          v68 = (v2[7] - v2[6]) >> 1;
          v69 = (v17 - v18) >> 3;
          v64 = *v2;
          v65 = *(this + 9);
          v71 = v2[33];
          v72 = v2[34];
          v73 = v2[21];
          v67 = v2;
          if (v9 == v10)
          {
LABEL_32:
            v63 = v9;
            if (v13 == v12)
            {
LABEL_43:
              if (v21 == v20)
              {
LABEL_54:
                v39 = v74;
                v38 = v75;
                if (v74 == v75)
                {
LABEL_75:
                  if (std::none_of[abi:ne200100]<std::__wrap_iter<HVF::Composite::Translation *>,HVF::Composite::finalizeShim(void)::$_0>(v18, v17) && std::none_of[abi:ne200100]<std::__wrap_iter<HVF::Composite::Translation *>,HVF::Composite::finalizeShim(void)::$_0>(v24, v23))
                  {
                    *(this + 7) = v64;
                    *(this + 8) = v65;
                    *(this + 9) = v66;
                    *(this + 10) = v16;
                    v45 = v67[6];
                    v46 = (v67[7] - v45) >> 1;
                    *(this + 11) = v45;
                    *(this + 12) = v46;
                    v47 = v67[9];
                    v48 = (v67[10] - v47) >> 1;
                    *(this + 13) = v47;
                    *(this + 14) = v48;
                    *(this + 15) = v63;
                    *(this + 16) = v68;
                    v49 = v67[15];
                    v50 = (v67[16] - v49) >> 2;
                    *(this + 17) = v49;
                    *(this + 18) = v50;
                    v51 = v67[18];
                    v52 = (v67[19] - v51) >> 1;
                    *(this + 19) = v51;
                    *(this + 20) = v52;
                    *(this + 21) = v18;
                    *(this + 22) = v69;
                    v53 = v67[24];
                    v54 = (v67[25] - v53) >> 1;
                    *(this + 23) = v53;
                    *(this + 24) = v54;
                    v55 = v67[27];
                    v56 = (v67[28] - v55) >> 2;
                    *(this + 25) = v55;
                    *(this + 26) = v56;
                    *(this + 27) = v26;
                    *(this + 28) = (v23 - v24) >> 3;
                    v57 = v67[33];
                    v58 = (v67[34] - v57) >> 3;
                    *(this + 29) = v57;
                    *(this + 30) = v58;
                    v59 = v67[36];
                    v60 = (v67[37] - v59) >> 2;
                    *(this + 31) = v59;
                    *(this + 32) = v60;
                    v61 = v67[39];
                    v62 = (v67[40] - v61) >> 2;
                    *(this + 33) = v61;
                    *(this + 34) = v62;
                    return 1;
                  }
                }

                else
                {
                  do
                  {
                    while (*v39 == 0.0)
                    {
                      if (++v39 == v75)
                      {
                        goto LABEL_65;
                      }
                    }

                    v40 = fabsf(*v39);
                    if (v40 == INFINITY)
                    {
                      return 0;
                    }

                    ++v39;
                  }

                  while (v40 >= 1.1755e-38 && v39 != v75);
                  if (v40 < 1.1755e-38)
                  {
                    return 0;
                  }

LABEL_65:
                  v42 = v74;
                  while (1)
                  {
                    while (*v42 == 0.0)
                    {
                      if (++v42 == v38)
                      {
                        goto LABEL_75;
                      }
                    }

                    v43 = fabsf(*v42);
                    if (v43 == INFINITY)
                    {
                      break;
                    }

                    ++v42;
                    v38 = v75;
                    if (v43 < 1.1755e-38 || v42 == v75)
                    {
                      if (v43 < 1.1755e-38)
                      {
                        return 0;
                      }

                      goto LABEL_75;
                    }
                  }
                }
              }

              else
              {
                while (1)
                {
                  while (*v21 == 0.0)
                  {
                    if (++v21 == v20)
                    {
                      goto LABEL_54;
                    }
                  }

                  v36 = fabsf(*v21);
                  if (v36 == INFINITY)
                  {
                    break;
                  }

                  ++v21;
                  if (v36 < 1.1755e-38 || v21 == v20)
                  {
                    if (v36 < 1.1755e-38)
                    {
                      return 0;
                    }

                    goto LABEL_54;
                  }
                }
              }
            }

            else
            {
              while (1)
              {
                while (*v13 == 0.0)
                {
                  if (++v13 == v12)
                  {
                    goto LABEL_43;
                  }
                }

                v34 = fabsf(*v13);
                if (v34 == INFINITY)
                {
                  break;
                }

                ++v13;
                if (v34 < 1.1755e-38 || v13 == v12)
                {
                  if (v34 < 1.1755e-38)
                  {
                    return 0;
                  }

                  goto LABEL_43;
                }
              }
            }
          }

          else
          {
            v31 = v2[12];
            while (1)
            {
              while (*v31 == 0.0)
              {
                if (++v31 == v10)
                {
                  goto LABEL_32;
                }
              }

              v32 = fabsf(*v31);
              if (v32 == INFINITY)
              {
                break;
              }

              ++v31;
              if (v32 < 1.1755e-38 || v31 == v10)
              {
                if (v32 < 1.1755e-38)
                {
                  return 0;
                }

                goto LABEL_32;
              }
            }
          }
        }

        return 0;
      }
    }
  }

  return v27;
}

uint64_t std::none_of[abi:ne200100]<std::__wrap_iter<HVF::Composite::Translation *>,HVF::Composite::finalizeShim(void)::$_0>(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(a1 + 4);
    if (*a1 != 0.0)
    {
      v4 = *a1 & 0x7FFFFFFF;
      if (v4 == 2139095040 || (v4 - 1) < 0x7FFFFF)
      {
        break;
      }
    }

    if (v3 != 0.0 && ((LODWORD(v3) & 0x7FFFFFFF) == 0x7F800000 || (LODWORD(v3) & 0x7FFFFFFFu) - 1 < 0x7FFFFF))
    {
      break;
    }

    a1 += 8;
    if (a1 == a2)
    {
      return 1;
    }
  }

  return 0;
}

void std::vector<std::any>::__emplace_back_slow_path<HVF::SwiftCompositeShim>(void *a1)
{
  v1 = (a1[1] - *a1) >> 5;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 59))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 4 > v2)
    {
      v2 = v3 >> 4;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFE0)
    {
      v4 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    if (v4)
    {
      if (!(v4 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v5 = (32 * v1);
    *v5 = 0;
    v5[1] = 0;
    operator new();
  }

  std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
}

void sub_298ACC348(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::any>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__any_imp::_LargeHandler<HVF::SwiftCompositeShim>::__handle[abi:ne200100](int a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v10 = *(a2 + 8);
      operator new();
    }

    v7 = a2;
    HVF::SwiftCompositeShim::~SwiftCompositeShim(*(a2 + 8));
    operator delete(v8);
    result = 0;
    *v7 = 0;
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      v9 = *(a2 + 8);
      *a3 = std::__any_imp::_LargeHandler<HVF::SwiftCompositeShim>::__handle[abi:ne200100];
      a3[1] = v9;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N3HVF18SwiftCompositeShimE")
      {
        if (((v5 & "N3HVF18SwiftCompositeShimE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N3HVF18SwiftCompositeShimE"))
        {
          return 0;
        }

        v11 = a2;
        v12 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N3HVF18SwiftCompositeShimE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v11;
        if (v12)
        {
          return 0;
        }
      }
    }

    else if (a5 != &std::__any_imp::__unique_typeinfo<HVF::SwiftCompositeShim>::__id)
    {
      return 0;
    }

    return *(a2 + 8);
  }

  return result;
}

__n128 HVF::SwiftCompositeShim::SwiftCompositeShim(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  *(a1 + 3) = *(a2 + 24);
  a1[5] = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *(a1 + 3) = *(a2 + 48);
  a1[8] = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  a1[12] = 0;
  a1[13] = 0;
  a1[14] = 0;
  *(a1 + 6) = *(a2 + 96);
  a1[14] = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  *(a1 + 15) = *(a2 + 120);
  a1[17] = *(a2 + 136);
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  a1[18] = 0;
  a1[19] = 0;
  a1[20] = 0;
  *(a1 + 9) = *(a2 + 144);
  a1[20] = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  *(a1 + 21) = *(a2 + 168);
  a1[23] = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  a1[24] = 0;
  a1[25] = 0;
  a1[26] = 0;
  *(a1 + 12) = *(a2 + 192);
  a1[26] = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  a1[27] = 0;
  a1[28] = 0;
  a1[29] = 0;
  *(a1 + 27) = *(a2 + 216);
  a1[29] = *(a2 + 232);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  a1[30] = 0;
  a1[31] = 0;
  a1[32] = 0;
  *(a1 + 15) = *(a2 + 240);
  a1[32] = *(a2 + 256);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 256) = 0;
  a1[33] = 0;
  a1[34] = 0;
  a1[35] = 0;
  a1[33] = *(a2 + 264);
  *(a1 + 17) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  a1[36] = 0;
  a1[37] = 0;
  a1[38] = 0;
  *(a1 + 18) = *(a2 + 288);
  a1[38] = *(a2 + 304);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  a1[39] = 0;
  a1[40] = 0;
  a1[41] = 0;
  a1[39] = *(a2 + 312);
  result = *(a2 + 320);
  *(a1 + 20) = result;
  *(a2 + 312) = 0;
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  return result;
}

void *HVF::SwiftCompositeShim::SwiftCompositeShim(void *this, const HVF::SwiftCompositeShim *a2)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  v2 = *(a2 + 1);
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
  }

  this[3] = 0;
  this[4] = 0;
  this[5] = 0;
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
  }

  this[6] = 0;
  this[7] = 0;
  this[8] = 0;
  v6 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
  }

  this[9] = 0;
  this[10] = 0;
  this[11] = 0;
  v8 = *(a2 + 9);
  v7 = *(a2 + 10);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
  }

  this[12] = 0;
  this[13] = 0;
  this[14] = 0;
  v10 = *(a2 + 12);
  v9 = *(a2 + 13);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  this[15] = 0;
  this[16] = 0;
  this[17] = 0;
  v12 = *(a2 + 15);
  v11 = *(a2 + 16);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  this[18] = 0;
  this[19] = 0;
  this[20] = 0;
  v14 = *(a2 + 18);
  v13 = *(a2 + 19);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
  }

  this[21] = 0;
  this[22] = 0;
  this[23] = 0;
  v16 = *(a2 + 21);
  v15 = *(a2 + 22);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  this[24] = 0;
  this[25] = 0;
  this[26] = 0;
  v18 = *(a2 + 24);
  v17 = *(a2 + 25);
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
  }

  this[27] = 0;
  this[28] = 0;
  this[29] = 0;
  v20 = *(a2 + 27);
  v19 = *(a2 + 28);
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  this[30] = 0;
  this[31] = 0;
  this[32] = 0;
  v22 = *(a2 + 30);
  v21 = *(a2 + 31);
  if (v21 != v22)
  {
    if (((v21 - v22) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  this[33] = 0;
  this[34] = 0;
  this[35] = 0;
  v24 = *(a2 + 33);
  v23 = *(a2 + 34);
  if (v23 != v24)
  {
    if (((v23 - v24) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  this[36] = 0;
  this[37] = 0;
  this[38] = 0;
  v26 = *(a2 + 36);
  v25 = *(a2 + 37);
  if (v25 != v26)
  {
    if (((v25 - v26) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  this[39] = 0;
  this[40] = 0;
  this[41] = 0;
  v28 = *(a2 + 39);
  v27 = *(a2 + 40);
  if (v27 != v28)
  {
    if (((v27 - v28) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
  }

  return this;
}

void sub_298ACCBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, void **a12, void **a13, void **a14)
{
  v21 = *(v14 + 312);
  if (v21)
  {
    *(v14 + 320) = v21;
    operator delete(v21);
    v22 = *(v14 + 288);
    if (!v22)
    {
LABEL_3:
      v23 = *(v14 + 264);
      if (!v23)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v22 = *(v14 + 288);
    if (!v22)
    {
      goto LABEL_3;
    }
  }

  *(v14 + 296) = v22;
  operator delete(v22);
  v23 = *(v14 + 264);
  if (!v23)
  {
LABEL_4:
    v24 = *v18;
    if (!*v18)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v14 + 272) = v23;
  operator delete(v23);
  v24 = *v18;
  if (!*v18)
  {
LABEL_5:
    v25 = *v17;
    if (!*v17)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v14 + 248) = v24;
  operator delete(v24);
  v25 = *v17;
  if (!*v17)
  {
LABEL_6:
    v26 = *v16;
    if (!*v16)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v14 + 224) = v25;
  operator delete(v25);
  v26 = *v16;
  if (!*v16)
  {
LABEL_7:
    v27 = *v15;
    if (!*v15)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v14 + 200) = v26;
  operator delete(v26);
  v27 = *v15;
  if (!*v15)
  {
LABEL_8:
    v28 = *v19;
    if (!*v19)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v14 + 176) = v27;
  operator delete(v27);
  v28 = *v19;
  if (!*v19)
  {
LABEL_9:
    v29 = *a10;
    if (!*a10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  *(v14 + 152) = v28;
  operator delete(v28);
  v29 = *a10;
  if (!*a10)
  {
LABEL_11:
    v30 = *a11;
    if (*a11)
    {
      *(v14 + 104) = v30;
      operator delete(v30);
    }

    v31 = *a12;
    if (*a12)
    {
      *(v14 + 80) = v31;
      operator delete(v31);
    }

    v32 = *a13;
    if (*a13)
    {
      *(v14 + 56) = v32;
      operator delete(v32);
    }

    v33 = *a14;
    if (*a14)
    {
      *(v14 + 32) = v33;
      operator delete(v33);
    }

    v34 = *v14;
    if (*v14)
    {
      *(v14 + 8) = v34;
      operator delete(v34);
    }

    _Unwind_Resume(exception_object);
  }

LABEL_10:
  *(v14 + 128) = v29;
  operator delete(v29);
  goto LABEL_11;
}

void sub_298ACCD9C()
{
  if (!*v0)
  {
    JUMPOUT(0x298ACCC3CLL);
  }

  JUMPOUT(0x298ACCC34);
}

void sub_298ACCDAC()
{
  if (!*v0)
  {
    JUMPOUT(0x298ACCC50);
  }

  JUMPOUT(0x298ACCC48);
}

void sub_298ACCDBC()
{
  if (!*v0)
  {
    JUMPOUT(0x298ACCC64);
  }

  JUMPOUT(0x298ACCC5CLL);
}

void sub_298ACCDCC()
{
  if (!*v0)
  {
    JUMPOUT(0x298ACCC78);
  }

  JUMPOUT(0x298ACCC70);
}

void sub_298ACCDDC()
{
  if (!*v0)
  {
    JUMPOUT(0x298ACCC8CLL);
  }

  JUMPOUT(0x298ACCC84);
}

void HVF::SwiftCompositeShim::~SwiftCompositeShim(HVF::SwiftCompositeShim *this)
{
  v2 = *(this + 39);
  if (v2)
  {
    *(this + 40) = v2;
    operator delete(v2);
  }

  v3 = *(this + 36);
  if (v3)
  {
    *(this + 37) = v3;
    operator delete(v3);
  }

  v4 = *(this + 33);
  if (v4)
  {
    *(this + 34) = v4;
    operator delete(v4);
  }

  v5 = *(this + 30);
  if (v5)
  {
    *(this + 31) = v5;
    operator delete(v5);
  }

  v6 = *(this + 27);
  if (v6)
  {
    *(this + 28) = v6;
    operator delete(v6);
  }

  v7 = *(this + 24);
  if (v7)
  {
    *(this + 25) = v7;
    operator delete(v7);
  }

  v8 = *(this + 21);
  if (v8)
  {
    *(this + 22) = v8;
    operator delete(v8);
  }

  v9 = *(this + 18);
  if (v9)
  {
    *(this + 19) = v9;
    operator delete(v9);
  }

  v10 = *(this + 15);
  if (v10)
  {
    *(this + 16) = v10;
    operator delete(v10);
  }

  v11 = *(this + 12);
  if (v11)
  {
    *(this + 13) = v11;
    operator delete(v11);
  }

  v12 = *(this + 9);
  if (v12)
  {
    *(this + 10) = v12;
    operator delete(v12);
  }

  v13 = *(this + 6);
  if (v13)
  {
    *(this + 7) = v13;
    operator delete(v13);
  }

  v14 = *(this + 3);
  if (v14)
  {
    *(this + 4) = v14;
    operator delete(v14);
  }

  v15 = *this;
  if (*this)
  {
    *(this + 1) = v15;
    operator delete(v15);
  }
}

double HVF::BlendContext::setBlendValues(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v4 = (a1 + 48);
  v5 = *(a2 + 8);
  v6 = (*(a1 + 56) - v3) >> 3;
  if (2 * v5 <= v6)
  {
    if (2 * v5 < v6)
    {
      *(a1 + 56) = v3 + 16 * v5;
    }
  }

  else
  {
    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__append(a1 + 48, 2 * v5 - v6);
    v3 = *v4;
    v5 = *(a2 + 8);
  }

  if (v5)
  {
    v8 = *a2;
    v9 = 8 * v5;
    do
    {
      while (*v8 < 0.0)
      {
        result = 0.0;
        *v3 = -*v8;
        *(v3 + 8) = 0;
        v3 += 16;
        ++v8;
        v9 -= 8;
        if (!v9)
        {
          return result;
        }
      }

      *v3 = 0;
      v10 = *v8++;
      result = v10;
      *(v3 + 8) = v10;
      v3 += 16;
      v9 -= 8;
    }

    while (v9);
  }

  return result;
}

void std::vector<double,default_init_allocator<double,std::allocator<double>>>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (a2 <= (v2 - v3) >> 3)
  {
    *(a1 + 8) = &v3[8 * a2];
  }

  else
  {
    v4 = *a1;
    v5 = &v3[-*a1];
    v6 = v5 >> 3;
    v7 = (v5 >> 3) + a2;
    if (v7 >> 61)
    {
      std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v2 - v4;
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

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = v5 >> 3;
    v11 = 8 * v6 + 8 * a2;
    if (v4 != v3)
    {
      v12 = v3 - v4 - 8;
      v13 = *a1;
      v14 = 0;
      if (v12 < 0x58)
      {
        goto LABEL_28;
      }

      v15 = 8 * v10;
      v13 = *a1;
      v14 = 0;
      if ((v5 - v4 - 8 * v10) < 0x20)
      {
        goto LABEL_28;
      }

      v16 = (v12 >> 3) + 1;
      v14 = (8 * (v16 & 0x3FFFFFFFFFFFFFFCLL));
      v13 = v14 + v4;
      v17 = (8 * v6 - v15 + 16);
      v18 = (v4 + 16);
      v19 = v16 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v18;
        *(v17 - 1) = *(v18 - 1);
        *v17 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v16 != (v16 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_28:
        do
        {
          v21 = *v13;
          v13 += 8;
          *v14++ = v21;
        }

        while (v13 != v3);
      }
    }

    *a1 = 0;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v4)
    {

      operator delete(v4);
    }
  }
}

uint64_t HVF::wrapContext@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = &unk_2A1F1A310;
  a3[1] = a2;
  a3[2] = result;
  a3[3] = a3;
  return result;
}

uint64_t HVF::PartTransformRenderer::PartTransformRenderer(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v12 = *MEMORY[0x29EDCA608];
  v7 = *(a3 + 24);
  if (v7)
  {
    if (v7 == a3)
    {
      v11 = v10;
      (*(*v7 + 24))(v7, v10);
    }

    else
    {
      v11 = (*(*v7 + 16))(v7);
    }
  }

  else
  {
    v11 = 0;
  }

  HVF::FlatPartCache::FlatPartCache(a1, v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
  }

  else if (v11)
  {
    (*(*v11 + 40))();
  }

  *(a1 + 64) = a4;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  HVF::PartTransformRenderer::setRenderPart(a1, a2);
  v8 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298ACD31C(_Unwind_Exception *a1)
{
  HVF::SwiftShapeShim::~SwiftShapeShim((v1 + 136));
  v3 = *(v1 + 112);
  if (v3)
  {
    *(v1 + 120) = v3;
    operator delete(v3);
  }

  HVF::PartTransformRenderer::PartTransformRenderer((v1 + 88), v1);
  _Unwind_Resume(a1);
}

void sub_298ACD354(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>::~function(va);
  _Unwind_Resume(a1);
}

void HVF::PartTransformRenderer::setRenderPart(HVF::PartTransformRenderer *this, char *a2)
{
  *(this + 10) = a2;
  v3 = HVF::FlatPartCache::partAtIndex(this, a2);
  *(this + 9) = v3;
  if (v3)
  {
    v4 = (*(*v3 + 72))(v3);
    v5 = *(this + 23);
    if (v4 > (*(this + 25) - v5) >> 3)
    {
      if (!(v4 >> 61))
      {
        v6 = *(this + 24) - v5;
        operator new();
      }

      std::vector<double,default_init_allocator<double,std::allocator<double>>>::__throw_length_error[abi:ne200100]();
    }

    if (*(this + 64) == 1)
    {
      v7 = (*(**(this + 9) + 48))(*(this + 9));
      v8 = *(this + 17);
      v9 = (*(this + 18) - v8) >> 3;
      if (v7 <= v9)
      {
        if (v7 < v9)
        {
          *(this + 18) = v8 + 8 * v7;
        }
      }

      else
      {
        std::vector<double,default_init_allocator<double,std::allocator<double>>>::__append(this + 136, v7 - v9);
      }

      v10 = (*(**(this + 9) + 56))(*(this + 9));
      v11 = *(this + 20);
      v12 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 21) - v11) >> 5);
      if (v10 <= v12)
      {
        if (v10 < v12)
        {
          *(this + 21) = v11 + 96 * v10;
        }
      }

      else
      {
        std::vector<simd::double3x3>::__append(this + 160, v10 - v12);
      }
    }

    v13 = (*(**(this + 9) + 48))(*(this + 9));
    v14 = *(this + 11);
    v15 = *(this + 12);
    v16 = (v15 - v14) >> 3;
    if (v13 <= v16)
    {
      if (v13 < v16)
      {
        v15 = &v14[8 * v13];
        *(this + 12) = v15;
      }
    }

    else
    {
      std::vector<double,default_init_allocator<double,std::allocator<double>>>::__append(this + 88, v13 - v16);
      v14 = *(this + 11);
      v15 = *(this + 12);
    }

    bzero(v14, v15 - v14);
    *(this + 15) = *(this + 14);
    v17 = (*(**(this + 9) + 56))(*(this + 9));
    v18 = *(MEMORY[0x29EDCA918] + 48);
    var30[2] = *(MEMORY[0x29EDCA918] + 32);
    var30[3] = v18;
    v22 = *(MEMORY[0x29EDCA918] + 64);
    v23 = *(MEMORY[0x29EDCA918] + 80);
    v19 = *(MEMORY[0x29EDCA918] + 16);
    var30[0] = *MEMORY[0x29EDCA918];
    var30[1] = v19;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 15) - *(this + 14)) >> 5);
    if (v17 <= v20)
    {
      if (v17 < v20)
      {
        *(this + 15) = *(this + 14) + 96 * v17;
      }
    }

    else
    {
      std::vector<simd::double3x3>::__append(this + 112, v17 - v20, var30);
    }
  }
}

uint64_t HVF::PartTransformRenderer::PartTransformRenderer(uint64_t a1, uint64_t a2, char a3)
{
  v10 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v9 = v8;
      (*(*v5 + 24))(v5, v8);
    }

    else
    {
      v9 = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v9 = 0;
  }

  HVF::FlatPartCache::FlatPartCache(a1, v8);
  if (v9 == v8)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))();
  }

  *(a1 + 64) = a3;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  v6 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_298ACD838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>::~function(va);
  _Unwind_Resume(a1);
}

void HVF::PartTransformRenderer::clearCache(unsigned int **this)
{
  this[9] = 0;
  this[10] = -1;
  HVF::FlatPartCache::clear(this);
}

double HVF::PartTransformRenderer::getPartTranslation(HVF::PartTransformRenderer *this)
{
  v1 = *(this + 14);
  result = *(v1 + 16);
  v3 = *(v1 + 48);
  return result;
}

double HVF::PartTransformRenderer::setPartTranslation(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  *(v2 + 16) = *a2;
  result = *(a2 + 8);
  *(v2 + 48) = result;
  return result;
}

void HVF::PartTransformRenderer::setPartRotation(HVF::PartTransformRenderer *this, const double *a2)
{
  v4 = *(this + 14);
  v2.f64[0] = v4[1].f64[0];
  v3.f64[0] = v4[3].f64[0];
  if (*a2 == 0.0)
  {
    v6 = *MEMORY[0x29EDCA918];
    v5 = *(MEMORY[0x29EDCA918] + 16);
    v8 = *(MEMORY[0x29EDCA918] + 32);
    v7 = *(MEMORY[0x29EDCA918] + 48);
    v9 = *MEMORY[0x29EDCA918];
    v10 = v5;
    v12 = *(MEMORY[0x29EDCA918] + 64);
    v11 = *(MEMORY[0x29EDCA918] + 80);
    v13 = v8;
    _Q6 = v7;
    v15 = v12;
    _Q0 = v11;
  }

  else
  {
    v35 = v3;
    v36 = v2;
    v18 = __sincos_stret(*a2 * 0.5);
    cosval = v18.__cosval;
    _Q0.f64[0] = v18.__sinval;
    v3 = v35;
    v2 = v36;
    _Q7 = vmulq_n_f64(0, v18.__sinval);
    _D16 = _Q7.f64[1];
    v9.f64[0] = vmuld_lane_f64(-_Q7.f64[1], _Q7, 1) + _Q7.f64[0] * _Q7.f64[0] - _Q0.f64[0] * _Q0.f64[0] + cosval * cosval;
    v13.f64[0] = cosval * _Q0.f64[0] + _Q7.f64[0] * _Q7.f64[1] + cosval * _Q0.f64[0] + _Q7.f64[0] * _Q7.f64[1];
    v10.f64[0] = vmuld_lane_f64(v18.__cosval, _Q7, 1);
    v21.f64[0] = -(v18.__cosval * _Q7.f64[1]);
    v22 = -(cosval * _Q0.f64[0] - _Q7.f64[0] * _Q7.f64[1]) - (cosval * _Q0.f64[0] - _Q7.f64[0] * _Q7.f64[1]);
    __asm { FMLA            D4, D16, V7.D[1] }

    v21.f64[1] = v18.__cosval * _Q7.f64[0];
    v28 = _D4 + cosval * cosval - _Q7.f64[0] * _Q7.f64[0];
    _Q6 = vmlaq_n_f64(v21, _Q7, v18.__sinval);
    v15 = vaddq_f64(_Q6, _Q6);
    v10.f64[0] = v10.f64[0] + _Q0.f64[0] * _Q7.f64[0] + v10.f64[0] + _Q0.f64[0] * _Q7.f64[0];
    __asm { FMLA            D6, D0, V7.D[1] }

    _Q6.f64[0] = _Q6.f64[0] + _Q6.f64[0];
    __asm { FMLS            D0, D16, V7.D[1] }

    v9.f64[1] = v22;
    v13.f64[1] = v28;
    v6 = *MEMORY[0x29EDCA918];
    v5 = *(MEMORY[0x29EDCA918] + 16);
    v8 = *(MEMORY[0x29EDCA918] + 32);
    v7 = *(MEMORY[0x29EDCA918] + 48);
    v12 = *(MEMORY[0x29EDCA918] + 64);
    v11 = *(MEMORY[0x29EDCA918] + 80);
  }

  *&v29 = *&vaddq_f64(v2, v5);
  v30 = vaddq_f64(v6, 0);
  *&v31 = *&vaddq_f64(v3, v7);
  v32 = vaddq_f64(v8, 0);
  *&v33 = *&vaddq_f64(v11, 0);
  v34 = vaddq_f64(v12, 0);
  *v4 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v9, v30.f64[0]), v13, v30, 1), v15, v29);
  v4[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v10, v30.f64[0]), _Q6, v30, 1), _Q0, v29);
  v4[2] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v9, v32.f64[0]), v13, v32, 1), v15, v31);
  v4[3] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v10, v32.f64[0]), _Q6, v32, 1), _Q0, v31);
  v4[4] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v9, v34.f64[0]), v13, v34, 1), v15, v33);
  v4[5] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v10, v34.f64[0]), _Q6, v34, 1), _Q0, v33);
}

double HVF::PartTransformRenderer::getPartAxisValueAtIndex(HVF::PartTransformRenderer *this, unint64_t a2)
{
  v3 = *(this + 9);
  v4 = 0.0;
  if (v3)
  {
    if ((*(*v3 + 40))(v3) > a2)
    {
      v6 = *(this + 11);
      if (a2 < (*(this + 12) - v6) >> 3)
      {
        return *(v6 + 8 * a2);
      }
    }
  }

  return v4;
}

double HVF::PartTransformRenderer::setPartAxisValueAtIndex(HVF::PartTransformRenderer *this, unint64_t a2, double *a3)
{
  v4 = *(this + 9);
  if (v4 && (*(*v4 + 40))(v4) > a2)
  {
    v8 = *(this + 11);
    if (a2 < (*(this + 12) - v8) >> 3)
    {
      result = *a3;
      *(v8 + 8 * a2) = *a3;
    }
  }

  return result;
}

double HVF::PartTransformRenderer::getSubpartTranslationAtIndex(HVF::PartTransformRenderer *this, unint64_t a2)
{
  v2 = *(this + 14);
  result = 0.0;
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 15) - v2) >> 5) > a2)
  {
    v4 = v2 + 96 * a2;
    result = *(v4 + 16);
    v5 = *(v4 + 48);
  }

  return result;
}

double HVF::PartTransformRenderer::setSubpartTranslationAtIndex(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 112);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120) - v3) >> 5) > a2)
  {
    v4 = v3 + 96 * a2;
    *(v4 + 16) = *a3;
    result = *(a3 + 8);
    *(v4 + 48) = result;
  }

  return result;
}

double HVF::PartTransformRenderer::getBlendedTranslationAtIndex(HVF::PartTransformRenderer *this, unint64_t a2)
{
  if (*(this + 64) == 1)
  {
    v2 = *(this + 20);
    v3 = *(this + 21);
  }

  else
  {
    v2 = *(this + 14);
    v3 = *(this + 15);
  }

  result = 0.0;
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) > a2)
  {
    v5 = v2 + 96 * a2;
    result = *(v5 + 16);
    v6 = *(v5 + 48);
  }

  return result;
}

long double HVF::PartTransformRenderer::getSubpartRotationAtIndex(HVF::PartTransformRenderer *this, unint64_t a2)
{
  v2 = *(this + 14);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 15) - v2) >> 5) <= a2)
  {
    return 0.0;
  }

  else
  {
    return atan2(*(v2 + 96 * a2 + 32), *(v2 + 96 * a2));
  }
}

void HVF::PartTransformRenderer::setSubpartRotationAtIndex(HVF::PartTransformRenderer *this, unint64_t a2, const double *a3)
{
  v5 = *(this + 14);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 15) - v5) >> 5) > a2)
  {
    v6 = (v5 + 96 * a2);
    v3.f64[0] = v6[1].f64[0];
    v4.f64[0] = v6[3].f64[0];
    if (*a3 == 0.0)
    {
      v8 = *MEMORY[0x29EDCA918];
      v7 = *(MEMORY[0x29EDCA918] + 16);
      v10 = *(MEMORY[0x29EDCA918] + 32);
      v9 = *(MEMORY[0x29EDCA918] + 48);
      v11 = *MEMORY[0x29EDCA918];
      v12 = v7;
      v14 = *(MEMORY[0x29EDCA918] + 64);
      v13 = *(MEMORY[0x29EDCA918] + 80);
      v15 = v10;
      _Q6 = v9;
      v17 = v14;
      _Q0 = v13;
    }

    else
    {
      v37 = v4;
      v38 = v3;
      v20 = __sincos_stret(*a3 * 0.5);
      cosval = v20.__cosval;
      _Q0.f64[0] = v20.__sinval;
      v4 = v37;
      v3 = v38;
      _Q7 = vmulq_n_f64(0, v20.__sinval);
      _D16 = _Q7.f64[1];
      v11.f64[0] = vmuld_lane_f64(-_Q7.f64[1], _Q7, 1) + _Q7.f64[0] * _Q7.f64[0] - _Q0.f64[0] * _Q0.f64[0] + cosval * cosval;
      v15.f64[0] = cosval * _Q0.f64[0] + _Q7.f64[0] * _Q7.f64[1] + cosval * _Q0.f64[0] + _Q7.f64[0] * _Q7.f64[1];
      v12.f64[0] = vmuld_lane_f64(v20.__cosval, _Q7, 1);
      v23.f64[0] = -(v20.__cosval * _Q7.f64[1]);
      v24 = -(cosval * _Q0.f64[0] - _Q7.f64[0] * _Q7.f64[1]) - (cosval * _Q0.f64[0] - _Q7.f64[0] * _Q7.f64[1]);
      __asm { FMLA            D4, D16, V7.D[1] }

      v23.f64[1] = v20.__cosval * _Q7.f64[0];
      v30 = _D4 + cosval * cosval - _Q7.f64[0] * _Q7.f64[0];
      _Q6 = vmlaq_n_f64(v23, _Q7, v20.__sinval);
      v17 = vaddq_f64(_Q6, _Q6);
      v12.f64[0] = v12.f64[0] + _Q0.f64[0] * _Q7.f64[0] + v12.f64[0] + _Q0.f64[0] * _Q7.f64[0];
      __asm { FMLA            D6, D0, V7.D[1] }

      _Q6.f64[0] = _Q6.f64[0] + _Q6.f64[0];
      __asm { FMLS            D0, D16, V7.D[1] }

      v11.f64[1] = v24;
      v15.f64[1] = v30;
      v8 = *MEMORY[0x29EDCA918];
      v7 = *(MEMORY[0x29EDCA918] + 16);
      v10 = *(MEMORY[0x29EDCA918] + 32);
      v9 = *(MEMORY[0x29EDCA918] + 48);
      v14 = *(MEMORY[0x29EDCA918] + 64);
      v13 = *(MEMORY[0x29EDCA918] + 80);
    }

    *&v31 = *&vaddq_f64(v3, v7);
    v32 = vaddq_f64(v8, 0);
    *&v33 = *&vaddq_f64(v4, v9);
    v34 = vaddq_f64(v10, 0);
    *&v35 = *&vaddq_f64(v13, 0);
    v36 = vaddq_f64(v14, 0);
    *v6 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v11, v32.f64[0]), v15, v32, 1), v17, v31);
    v6[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v12, v32.f64[0]), _Q6, v32, 1), _Q0, v31);
    v6[2] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v11, v34.f64[0]), v15, v34, 1), v17, v33);
    v6[3] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v12, v34.f64[0]), _Q6, v34, 1), _Q0, v33);
    v6[4] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v11, v36.f64[0]), v15, v36, 1), v17, v35);
    v6[5] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v12, v36.f64[0]), _Q6, v36, 1), _Q0, v35);
  }
}

long double HVF::PartTransformRenderer::getBlendedRotationAtIndex(HVF::PartTransformRenderer *this, unint64_t a2)
{
  if (*(this + 64) == 1)
  {
    v2 = *(this + 20);
    v3 = *(this + 21);
  }

  else
  {
    v2 = *(this + 14);
    v3 = *(this + 15);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) <= a2)
  {
    return 0.0;
  }

  else
  {
    return atan2(*(v2 + 96 * a2 + 32), *(v2 + 96 * a2));
  }
}

double HVF::PartTransformRenderer::getSubpartAxisValueAtIndex(HVF::PartTransformRenderer *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 11);
  result = 0.0;
  if (a3 + a2 < ((*(this + 12) - v3) >> 3))
  {
    return *(v3 + 8 * (a3 + a2));
  }

  return result;
}

double HVF::PartTransformRenderer::setSubpartAxisValueAtIndex(HVF::PartTransformRenderer *this, uint64_t a2, uint64_t a3, double *a4)
{
  v4 = *(this + 11);
  if (a3 + a2 < ((*(this + 12) - v4) >> 3))
  {
    result = *a4;
    *(v4 + 8 * (a3 + a2)) = *a4;
  }

  return result;
}

double HVF::PartTransformRenderer::getBlendedAxisValueAtIndex(HVF::PartTransformRenderer *this, uint64_t a2, uint64_t a3)
{
  v3 = a3 + a2;
  if (*(this + 64) != 1)
  {
    v4 = *(this + 11);
    result = 0.0;
    if (v3 >= (*(this + 12) - v4) >> 3)
    {
      return result;
    }

    return *(v4 + 8 * v3);
  }

  v4 = *(this + 17);
  result = 0.0;
  if (v3 < (*(this + 18) - v4) >> 3)
  {
    return *(v4 + 8 * v3);
  }

  return result;
}

uint64_t HVF::PartTransformRenderer::blendedAxisValueBounds(uint64_t this)
{
  v1 = 88;
  if (*(this + 64))
  {
    v1 = 136;
  }

  v2 = (this + v1);
  v4 = *v2;
  v3 = v2[1];
  v5 = v4 + 1;
  if (v4 == v3 || v5 == v3)
  {
    v7 = v4;
    v5 = v4;
  }

  else
  {
    v10 = v4[1];
    if (v10 >= *v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 + 1;
    }

    if (v10 < *v4)
    {
      v5 = v4;
    }

    v11 = v4 + 2;
    if (v4 + 2 != v3)
    {
      if (v10 >= *v4)
      {
        v10 = *v4;
      }

      while (1)
      {
        v13 = v11;
        v14 = v11 + 1;
        if (v14 == v3)
        {
          break;
        }

        v16 = *v13;
        v15 = v13[1];
        if (v15 >= *v13)
        {
          v12 = v4 + 3;
          if (v16 < v10)
          {
            v10 = *v13;
            v7 = v13;
          }

          if (v15 >= *v5)
          {
            v5 = v12;
          }

          v11 = v13 + 2;
          v4 = v13;
          if (v13 + 2 == v3)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v10 = *v7;
          if (v15 < *v7)
          {
            v10 = v13[1];
            v7 = v14;
          }

          if (v16 >= *v5)
          {
            v5 = v13;
          }

          v11 = v13 + 2;
          v4 = v13;
          if (v13 + 2 == v3)
          {
            goto LABEL_9;
          }
        }
      }

      if (*v13 >= *v7)
      {
        if (*v13 >= *v5)
        {
          v5 = v13;
        }
      }

      else
      {
        v7 = v13;
      }
    }
  }

LABEL_9:
  if (v7 != v3)
  {
    v8 = *v7;
  }

  if (v5 != v3)
  {
    v9 = *v5;
  }

  return this;
}

uint64_t HVF::PartTransformRenderer::partIndexAtSubpartIndex(HVF::PartTransformRenderer *this, char *a2, unint64_t a3)
{
  v4 = HVF::FlatPartCache::partAtIndex(this, a2);
  if ((*(*v4 + 16))(v4) && v4[8] > a3)
  {
    return *(v4[7] + 8 * a3);
  }

  else
  {
    return 0;
  }
}

uint64_t HVF::PartTransformRenderer::nestixAtSubpartIndex(HVF::PartTransformRenderer *this, char *a2, unint64_t a3)
{
  v4 = HVF::FlatPartCache::partAtIndex(this, a2);
  if ((*(*v4 + 16))(v4) && v4[8] > a3)
  {
    return *(v4[7] + 8 * a3 + 4) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t HVF::PartTransformRenderer::treeAxixAtSubpartIndex(HVF::PartTransformRenderer *this, char *a2, unint64_t a3)
{
  v4 = HVF::FlatPartCache::partAtIndex(this, a2);
  if ((*(*v4 + 16))(v4) && *(v4 + 64) > a3)
  {
    return *(v4 + 32) + *(*(v4 + 56) + 8 * a3 + 6);
  }

  else
  {
    return 0;
  }
}

char *HVF::PartTransformRenderer::axisCountForPart(char **this, char *a2)
{
  if (this[10] == a2 && (result = this[9]) != 0 || (result = HVF::FlatPartCache::partAtIndex(this, a2)) != 0)
  {
    v4 = *(*result + 40);

    return v4();
  }

  return result;
}

uint64_t HVF::PartTransformRenderer::subpartCountForPart(HVF::PartTransformRenderer *this, char *a2)
{
  result = HVF::FlatPartCache::partAtIndex(this, a2);
  if (result)
  {
    v3 = result;
    if ((*(*result + 16))(result))
    {
      return *(v3 + 64);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t HVF::PartTransformRenderer::renderToContext(uint64_t a1, uint64_t a2, size_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 72);
  if (!v3)
  {
    result = 0;
    goto LABEL_17;
  }

  v20 = 0u;
  v21 = 0u;
  if (*(a1 + 64) == 1)
  {
    v5 = a2;
    memcpy(*(a1 + 136), *(a1 + 88), *(a1 + 96) - *(a1 + 88));
    v6 = *(a1 + 112);
    v7 = *(a1 + 120);
    v8 = *(a1 + 160);
    a3 = v7 - v6;
    if (v7 != v6)
    {
      memmove(v8, v6, a3);
      v8 = *(a1 + 160);
    }

    a2 = v5;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 168) - v8) >> 5);
    v10 = *(a1 + 136);
    v11 = (*(a1 + 144) - v10) >> 3;
    *&v20 = v8;
    *(&v20 + 1) = v9;
    *&v21 = v10;
    *(&v21 + 1) = v11;
    v3 = *(a1 + 72);
    v12 = *(a1 + 80);
    v13 = *(a2 + 24);
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120) - *(a1 + 112)) >> 5);
    v16 = *(a1 + 88);
    v17 = (*(a1 + 96) - v16) >> 3;
    *&v20 = *(a1 + 112);
    *(&v20 + 1) = v15;
    *&v21 = v16;
    *(&v21 + 1) = v17;
    v12 = *(a1 + 80);
    v13 = *(a2 + 24);
    if (v13)
    {
LABEL_6:
      if (v13 == a2)
      {
        v23 = v22;
        (*(*v13 + 24))(v13, v22, a3);
      }

      else
      {
        v23 = (*(*v13 + 16))(v13);
      }

      goto LABEL_12;
    }
  }

  v23 = 0;
LABEL_12:
  result = HVF::PartTransformRenderer::render(a1, v12, v3, &v20, v22);
  if (v23 == v22)
  {
    v18 = result;
    (*(*v23 + 32))(v23);
    goto LABEL_16;
  }

  if (v23)
  {
    v18 = result;
    (*(*v23 + 40))(v23);
LABEL_16:
    result = v18;
  }

LABEL_17:
  v19 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298ACE42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::function<HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t HVF::PartTransformRenderer::render(HVF::FlatPartCache *a1, uint64_t a2, void *a3, int64x2_t **a4, uint64_t a5)
{
  v28 = *MEMORY[0x29EDCA608];
  v19 = 0u;
  v20 = 0u;
  v18 = a2;
  v23 = 0;
  v21 = 0;
  v22 = &v18;
  v6 = *(a5 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v10 = (*(*v6 + 48))(v6, &v23, &v22);
  if (v10 == 2)
  {
    goto LABEL_18;
  }

  if (v10 || ((*(*a3 + 32))(a3) & 1) != 0)
  {
    goto LABEL_25;
  }

  v11 = (*(*a3 + 16))(a3);
  v12 = *(a5 + 24);
  if (!v11)
  {
    if (v12)
    {
      if (v12 == a5)
      {
        v25 = v24;
        (*(*v12 + 24))(v12, v24);
      }

      else
      {
        v25 = (*(*v12 + 16))(v12);
      }
    }

    else
    {
      v25 = 0;
    }

    v13 = HVF::PartTransformRenderer::renderShape(a1, a3, a4, v24);
    v14 = v25;
    if (v25 == v24)
    {
      (*(*v25 + 32))(v25);
      if ((v13 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    if (!v25)
    {
      goto LABEL_17;
    }

LABEL_24:
    (*(*v14 + 40))(v14);
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (v12)
  {
    if (v12 == a5)
    {
      v27 = v26;
      (*(*v12 + 24))(v12, v26);
    }

    else
    {
      v27 = (*(*v12 + 16))(v12);
    }
  }

  else
  {
    v27 = 0;
  }

  v13 = HVF::PartTransformRenderer::renderComposite(a1, a3, a4, v26);
  v14 = v27;
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  if (v27)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (!v13)
  {
LABEL_18:
    result = 0;
    v16 = *MEMORY[0x29EDCA608];
    return result;
  }

LABEL_25:
  HVF::PartTransformRenderer::render(&v18, (a5 + 24));
  result = 1;
  v17 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298ACE760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::function<HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t HVF::PartTransformRenderer::renderComposite(HVF::FlatPartCache *a1, void *a2, float64x2_t **a3, uint64_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  HVF::PartTransformRenderer::blendComposite(a1, a2, a3);
  v8 = a2[8];
  if (v8)
  {
    v9 = a2[7];
    v43 = &v9[2 * v8];
    while (1)
    {
      v10 = *v9;
      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = HVF::FlatPartCache::partAtIndex(a1, v10);
      v14 = v13;
      if (!v13)
      {
        break;
      }

      if (((*(*v13 + 32))(v13) & 1) == 0)
      {
        v15 = (*(*a2 + 40))(a2);
        if (a3[1] <= v11)
        {
          break;
        }

        v16 = v11 + 1;
        v17 = v15 + v12;
        v18 = (*(*v14 + 56))(v14) + v16 > a3[1] || v17 > a3[3];
        if (v18 || (*(*v14 + 48))(v14) + v17 > a3[3])
        {
          break;
        }

        v19 = (*(*v14 + 56))(v14);
        v20 = a3[1] - v16;
        if (v19 != -1)
        {
          v20 = v19;
        }

        v44[0] = &(*a3)[6 * v16];
        v44[1] = v20;
        v21 = (*(*v14 + 48))(v14);
        v22 = a3[3] - v17;
        if (v21 != -1)
        {
          v22 = v21;
        }

        v44[2] = a3[2] + 8 * v17;
        v44[3] = v22;
        v23 = v44[0];
        v24 = *(v44[0] + 16);
        v26 = *(v44[0] + 32);
        v25 = *(v44[0] + 48);
        v27 = *(v44[0] + 64);
        v28 = *(v44[0] + 80);
        v30 = **a3;
        v29 = (*a3)[1];
        v32 = (*a3)[2];
        v31 = (*a3)[3];
        v34 = (*a3)[4];
        v33 = (*a3)[5];
        v35 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v24, v30.f64[0]), v25, v30, 1), v28, v29.f64[0]);
        v36 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v44[0], v30.f64[0]), v26, v30, 1), v27, v29.f64[0]);
        v37 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v44[0], v32.f64[0]), v26, v32, 1), v27, v31.f64[0]);
        v38 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v44[0], v34.f64[0]), v26, v34, 1), v27, v33.f64[0]);
        *v44[0] = v36;
        v23[1] = v35;
        v23[2] = v37;
        v23[3] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v24, v32.f64[0]), v25, v32, 1), v28, v31.f64[0]);
        v23[4] = v38;
        v23[5] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v24, v34.f64[0]), v25, v34, 1), v28, v33.f64[0]);
        v39 = *(a4 + 24);
        if (v39)
        {
          if (v39 == a4)
          {
            v46 = v45;
            (*(*v39 + 24))(v39, v45);
          }

          else
          {
            v46 = (*(*v39 + 16))(v39);
          }
        }

        else
        {
          v46 = 0;
        }

        v40 = HVF::PartTransformRenderer::render(a1, v10, v14, v44, v45);
        if (v46 == v45)
        {
          (*(*v46 + 32))(v46);
          if ((v40 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          if (v46)
          {
            (*(*v46 + 40))();
          }

          if ((v40 & 1) == 0)
          {
            break;
          }
        }
      }

      v9 += 2;
      if (v9 == v43)
      {
        goto LABEL_27;
      }
    }

    result = 0;
  }

  else
  {
LABEL_27:
    result = 1;
  }

  v42 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298ACEB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::function<HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::~function(va);
  _Unwind_Resume(a1);
}

BOOL HVF::PartTransformRenderer::renderShape(void *a1, uint64_t a2, int64x2_t **a3, uint64_t a4)
{
  HVF::PartTransformRenderer::blendShape(a1, a2, a3);
  v7 = 1;
  if (*(a2 + 56))
  {
    v8 = 0;
    v9 = a1[26];
    v10 = *(a2 + 48);
    while (1)
    {
      while (1)
      {
        v11 = *v10;
        if (v11 > 2)
        {
          break;
        }

        v9 += 2 * v11;
        if (++v10 == (*(a2 + 48) + 2 * *(a2 + 56)) || v8 == 2)
        {
          return v8 != 2;
        }
      }

      v30 = 1;
      v29 = 0;
      v12 = *(a4 + 24);
      if (!v12)
      {
        goto LABEL_37;
      }

      if ((*(*v12 + 48))(v12, &v30, &v29) == 2)
      {
        return 0;
      }

      v13 = *v9;
      v14 = *(v9 + 1);
      *&v27 = *v9;
      *(&v27 + 1) = v14;
      v30 = 2;
      v29 = &v27;
      v15 = *(a4 + 24);
      if (!v15)
      {
        goto LABEL_37;
      }

      v8 = (*(*v15 + 48))(v15, &v30, &v29);
      v16 = v9 + 1;
      v17 = *v10;
      if (v17 >= 2 && v8 != 2)
      {
        v18 = 2;
        do
        {
          v27 = *v16;
          v28 = v16[1];
          if (!v8)
          {
            v30 = 4;
            v29 = &v27;
            v19 = *(a4 + 24);
            if (!v19)
            {
              goto LABEL_37;
            }

            v8 = (*(*v19 + 48))(v19, &v30, &v29);
            LOWORD(v17) = *v10;
          }

          v16 += 2;
          if (v18 >= v17)
          {
            break;
          }

          ++v18;
        }

        while (v8 != 2);
        v9 = v16 - 1;
      }

      v20 = *(v9 + 3);
      *&v27 = *v16;
      *(&v27 + 1) = v20;
      *&v28 = v13;
      *(&v28 + 1) = v14;
      if (!v8)
      {
        v30 = 4;
        v29 = &v27;
        v21 = *(a4 + 24);
        if (!v21)
        {
          goto LABEL_37;
        }

        v8 = (*(*v21 + 48))(v21, &v30, &v29);
        if (!v8)
        {
          v30 = 6;
          v29 = 0;
          v22 = *(a4 + 24);
          if (!v22)
          {
            goto LABEL_37;
          }

          v8 = (*(*v22 + 48))(v22, &v30, &v29);
        }
      }

      if (v8 != 2)
      {
        v30 = 7;
        v29 = 0;
        v23 = *(a4 + 24);
        if (!v23)
        {
LABEL_37:
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v9 += 2;
        v8 = (*(*v23 + 48))(v23, &v30, &v29);
        if (++v10 != (*(a2 + 48) + 2 * *(a2 + 56)) && v8 != 2)
        {
          continue;
        }
      }

      return v8 != 2;
    }
  }

  return v7;
}

void HVF::PartTransformRenderer::blendShape(void *a1, uint64_t a2, int64x2_t **a3)
{
  HVF::BlendContext::setBlendValues((a1 + 17), (a3 + 2));
  v6 = a1[26];
  v7 = *(a2 + 88);
  v8 = (a1[27] - v6) >> 3;
  if (v7 <= v8)
  {
    if (v7 < v8)
    {
      a1[27] = &v6[8 * v7];
    }
  }

  else
  {
    std::vector<double,default_init_allocator<double,std::allocator<double>>>::__append((a1 + 26), v7 - v8);
    v7 = *(a2 + 88);
    v6 = a1[26];
  }

  v9 = memcpy(v6, *(a2 + 80), 8 * v7);
  v11 = a1[26];
  v10 = a1[27];
  v13 = a1[23];
  v12 = a1[24];
  if (v12 != v13)
  {
    v14 = (v10 - v11) >> 3;
    if (v14)
    {
      v15 = *(a2 + 96);
      v16 = (v14 - 1) & 0x1FFFFFFFFFFFFFFFLL;
      if (v16 < 3)
      {
        do
        {
          v17 = *v13;
          if (*v13 == 0.0)
          {
            v15 += v14;
          }

          else
          {
            v18 = 8 * v14;
            v19 = v11;
            do
            {
              v20 = *v15++;
              *v19 = *v19 + v20 * v17;
              ++v19;
              v18 -= 8;
            }

            while (v18);
          }

          ++v13;
        }

        while (v13 != v12);
        goto LABEL_27;
      }

      v21 = 8 * (v14 - 1) + 8;
      v22 = v16 + 1;
      v23 = v22 & 0x3FFFFFFFFFFFFFFCLL;
      v9 = v11 + v23 * 8;
      do
      {
        v25 = *v13;
        if (*v13 == 0.0)
        {
          v24 = &v15[v14];
        }

        else
        {
          if (v15 + v21 <= v11 || v15 >= (v11->f64 + v21))
          {
            v24 = &v15[v23];
            v27 = vdupq_lane_s64(v25, 0);
            v28 = (v15 + 2);
            v29 = v22 & 0x3FFFFFFFFFFFFFFCLL;
            v30 = v11 + 1;
            do
            {
              v31 = vmlaq_f64(*v30, v27, *v28);
              v30[-1] = vmlaq_f64(v30[-1], v27, v28[-1]);
              *v30 = v31;
              v30 += 2;
              v28 += 2;
              v29 -= 4;
            }

            while (v29);
            v26 = &v11->f64[v23];
            if (v22 == (v22 & 0x3FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_17;
            }
          }

          else
          {
            v24 = v15;
            v26 = v11;
          }

          do
          {
            v32 = *v24++;
            *v26 = *v26 + v32 * *&v25;
            ++v26;
          }

          while (v26 != &v11->f64[v14]);
        }

LABEL_17:
        ++v13;
        v15 = v24;
      }

      while (v13 != v12);
    }
  }

LABEL_27:
  v33 = *(a2 + 56);
  if (v33)
  {
    v34 = *(a2 + 48);
    v35 = *(a2 + 64);
    v36 = 2 * v33;
    do
    {
      v37 = *v34++;
      v44[0] = v11;
      v44[1] = (4 * v37);
      v43[0] = v35;
      v43[1] = v37;
      HVF::PartTransformRenderer::adjustShapePoints(v9, v44, v43);
      v11 += 2 * v37;
      v35 += v37;
      v36 -= 2;
    }

    while (v36);
    v11 = a1[26];
    v10 = a1[27];
  }

  if (v11 != v10)
  {
    v38 = **a3;
    v39 = (*a3)[2];
    v40 = vzip1q_s64(v38, v39);
    v41 = vzip2q_s64(v38, v39);
    v42 = vzip1q_s64((*a3)[1], (*a3)[3]);
    *&v40.f64[1] = vextq_s8(v40, v40, 8uLL).u64[0];
    *&v41.f64[1] = vextq_s8(v41, v41, 8uLL).u64[0];
    *&v42.f64[1] = vextq_s8(v42, v42, 8uLL).u64[0];
    do
    {
      *v11 = vaddq_f64(v42, vmlaq_n_f64(vmulq_n_f64(v40, v11->f64[0]), v41, v11->f64[1]));
      ++v11;
    }

    while (v11 != v10);
  }
}

void HVF::PartTransformRenderer::adjustShapePoints(uint64_t a1, float64x2_t **a2, unsigned __int8 **a3)
{
  v3 = a3[1];
  if (!v3)
  {
    return;
  }

  v4 = v3 - 1;
  v5 = *a2;
  v6 = *a3;
  v7 = (*a2)[2 * (v3 - 1) + 1];
  v8 = (*a2)[1];
  v9 = **a3;
  if (!**a3)
  {
    v10 = 1.0;
    if (*v5 <= 1.0)
    {
      v10 = *v5;
    }

    if (*v5 >= 0.0)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0.0;
    }

    *v5 = vmlaq_n_f64(v7, vsubq_f64(v8, v7), v11);
LABEL_13:
    if (v3 == 1)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v9 == 2)
  {
    HVF::PartTransformRenderer::adjustShapePoints(*a2, v8, v7);
    if (v3 == 1)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v9 != 3)
  {
    goto LABEL_13;
  }

  HVF::PartTransformRenderer::adjustShapePoints((v3 - 1), *a2, v7);
  if (v3 == 1)
  {
    return;
  }

LABEL_16:
  v12 = 0;
  v13 = v6 + 1;
  v14 = 8;
  do
  {
    v18 = &v5[v12];
    v19 = *&v5[v12 + 2];
    v20 = *&v5[v12 + 6];
    v22 = *v13++;
    v21 = v22;
    if (v22)
    {
      if (v21 == 3)
      {
        if (v4 == 1)
        {
          v23 = 0;
        }

        else
        {
          v23 = v14;
        }

        v24 = &v5[v12];
        v25 = &v5[v23];
        v26 = v25[1];
        v27 = vpmaxq_f64(vabdq_f64(v26, v19));
        if (v27 == INFINITY || (*&v27 & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v38 = *&v5[v12 + 2];
        }

        else
        {
          v29 = vsubq_f64(v26, v19);
          v30 = vdivq_f64(v29, vdupq_lane_s64(*&v27, 0));
          v31 = vmulq_n_f64(v30, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v30, v30))));
          v32 = vaddvq_f64(vmulq_f64(v31, vsubq_f64(v24[2], v19)));
          v33 = sqrt(vaddvq_f64(vmulq_f64(v29, v29)));
          if (v33 >= v32)
          {
            v34 = v32;
          }

          else
          {
            v34 = v33;
          }

          if (v32 >= 0.0)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0.0;
          }

          v36 = vmulq_n_f64(v31, v35);
          v37 = vaddvq_f64(vmulq_f64(v31, vsubq_f64(*v25, v19)));
          if (v33 >= v37)
          {
            v33 = v37;
          }

          if (v37 < 0.0)
          {
            v33 = 0.0;
          }

          v38 = vaddq_f64(v19, vmulq_n_f64(v31, v33));
          v19 = vaddq_f64(v19, v36);
        }

        v24[2] = v19;
        *v25 = v38;
      }

      else if (v21 == 2)
      {
        HVF::PartTransformRenderer::adjustShapePoints(v5, v14 - 4, v20, v19);
      }
    }

    else
    {
      v15 = v18[4];
      if (v15 <= 1.0)
      {
        v16 = v18[4];
      }

      else
      {
        v16 = 1.0;
      }

      if (v15 >= 0.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0.0;
      }

      *(v18 + 2) = vmlaq_n_f64(v19, vsubq_f64(v20, v19), v17);
    }

    v14 += 4;
    v12 += 4;
    --v4;
  }

  while (v4);
}

uint64_t HVF::PartTransformRenderer::blendComposite(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 32);
  v31 = a3[2];
  v32 = v6;
  HVF::BlendContext::setBlendValues(a1 + 136, &v31);
  v7 = a3[2] + 8 * *(a2 + 32);
  v8 = (*(a2 + 40) - 1);
  v31 = *a3 + 96;
  v32 = v8;
  v9 = *(a2 + 96);
  if (v9)
  {
    v10 = *(a2 + 88);
    v11 = *(a2 + 120);
    v12 = 2 * v9;
    do
    {
      v13 = *v11++;
      v14 = v13;
      v15 = *v10++;
      *(v7 + 8 * v15) = *(v7 + 8 * v15) + v14;
      v12 -= 2;
    }

    while (v12);
  }

  v16 = *(a2 + 112);
  if (v16)
  {
    v17 = *(a2 + 136);
    v18 = *(a2 + 104);
    v19 = &v18[v16];
    v20 = *(a2 + 72);
    v21 = *(a1 + 184);
    v22 = 0.0;
    v23 = v17;
    v24 = v18;
    do
    {
      if (*v20 == v24 - v18)
      {
        ++v20;
        v28 = *v21++;
        v22 = v28;
        if (v28 == 0.0)
        {
          v29 = *v20;
          v24 = &v18[v29];
          v23 = &v17[v29];
        }
      }

      else
      {
        v25 = *v23++;
        v26 = v25;
        v27 = *v24++;
        *(v7 + 8 * v27) = *(v7 + 8 * v27) + v22 * v26;
      }
    }

    while (v24 != v19);
  }

  if (*(a2 + 192) | *(a2 + 256))
  {
    return HVF::PartTransformRenderer::blendTransforms(a1, a2, &v31);
  }

  else
  {
    return HVF::PartTransformRenderer::blendTranslations(a1, a2, &v31);
  }
}

uint64_t HVF::PartTransformRenderer::blendTranslations(uint64_t result, void *a2, void *a3)
{
  v3 = a2[19];
  v4 = &v3[a2[20]];
  v5 = a2[21];
  v6 = &v5[a2[22]];
  v7 = a2[27];
  v8 = &v7[a2[28]];
  v9 = a2[29];
  v10 = &v9[a2[30]];
  v41 = -1;
  v11 = vdupq_n_s64(0x7FF8000000000000uLL);
  v12 = MEMORY[0x29EDCA918];
  while (1)
  {
    LODWORD(v30) = 0xFFFF;
    if (v3 != v4 && v5 != v6)
    {
      LODWORD(v30) = *v3;
    }

    v31 = v9 == v10 || v7 == v8;
    v32 = v31 ? &v41 : v7;
    v33 = *v32;
    v30 = v30 >= v33 ? v33 : v30;
    if (a3[1] <= v30)
    {
      return result;
    }

    if (v3 == v4)
    {
      v34 = 0uLL;
      v3 = v4;
      v36 = v11;
      if (v30 != 0xFFFF)
      {
        goto LABEL_26;
      }
    }

    else if (v5 == v6)
    {
      v34 = 0uLL;
      v5 = v6;
      v36 = v11;
      if (v30 != 0xFFFF)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v34 = 0uLL;
      if (v30 != *v3)
      {
        goto LABEL_26;
      }

      v35 = *v5++;
      ++v3;
      v36 = vaddq_f64(vcvtq_f64_f32(v35), 0);
    }

    v34 = v36;
LABEL_26:
    while (v7 == v8)
    {
      if (v30 != 0xFFFF)
      {
        v7 = v8;
        goto LABEL_3;
      }

      v39 = 0xFFFFLL;
      v7 = v8;
      v40 = v11;
LABEL_25:
      v34 = vmlaq_n_f64(v34, v40, *(*(result + 184) + 8 * v39));
    }

    if (v9 != v10)
    {
      v37 = *v7;
      if (v30 != v37)
      {
        goto LABEL_3;
      }

      v38 = *v9++;
      ++v7;
      v39 = v37 >> 16;
      v40 = vcvtq_f64_f32(v38);
      goto LABEL_25;
    }

    if (v30 == 0xFFFF)
    {
      v39 = 0xFFFFLL;
      v9 = v10;
      v40 = v11;
      goto LABEL_25;
    }

    v9 = v10;
LABEL_3:
    v13 = *a3 + 96 * v30;
    v14 = *(v13 + 16);
    v16 = *(v13 + 32);
    v15 = *(v13 + 48);
    v17 = *(v13 + 64);
    v18 = *(v13 + 80);
    v19 = vdupq_laneq_s64(v34, 1);
    *&v20 = *&vaddq_f64(v34, v12[1]);
    v21 = vaddq_f64(*v12, 0);
    *&v22 = *&vaddq_f64(v19, v12[3]);
    v23 = vaddq_f64(v12[2], 0);
    *&v24 = *&vaddq_f64(v12[5], 0);
    v25 = vaddq_f64(v12[4], 0);
    v26 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v14, v21.f64[0]), v15, v21, 1), v18, v20);
    v27 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v13, v21.f64[0]), v16, v21, 1), v17, v20);
    v28 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v13, v23.f64[0]), v16, v23, 1), v17, v22);
    v29 = vmlaq_laneq_f64(vmulq_n_f64(*v13, v25.f64[0]), v16, v25, 1);
    *v13 = v27;
    *(v13 + 16) = v26;
    *(v13 + 32) = v28;
    *(v13 + 48) = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v14, v23.f64[0]), v15, v23, 1), v18, v22);
    *(v13 + 64) = vmlaq_n_f64(v29, v17, v24);
    *(v13 + 80) = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v14, v25.f64[0]), v15, v25, 1), v18, v24);
  }
}

uint64_t HVF::PartTransformRenderer::blendTransforms(uint64_t result, void *a2, void *a3)
{
  v4 = a2[23];
  v5 = &v4[a2[24]];
  v6 = a2[25];
  v7 = &v6[a2[26]];
  v192 = 2143289344;
  v152 = a2[19];
  v8 = &v152[a2[20]];
  v151 = a2[21];
  v147 = &v151[a2[22]];
  v148 = v7;
  v9 = a2[31] + 4 * a2[32];
  v156 = a2[31];
  v187 = v156;
  v188 = v9;
  v10 = a2[33] + 4 * a2[34];
  v11 = a2[27] + 4 * a2[28];
  v12 = a2[29];
  v13 = &v12[2 * a2[30]];
  v154 = a2[27];
  v155 = a2[33];
  v189 = v155;
  v190 = v10;
  v191 = 0x7FC00000FFFFFFFFLL;
  v153 = v12;
  v185 = -1;
  v186 = vneg_f32(0x3F0000003FLL);
  v145 = v5;
  v146 = a3;
  v157 = result;
  v144 = v8;
  while (1)
  {
    _ZF = v4 == v5 || v6 == v148;
    v23 = _ZF;
    if (_ZF)
    {
      v24 = 0xFFFF;
      v25 = 0xFFFF;
      if (v152 == v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v24 = *v4;
      v25 = 0xFFFF;
      if (v152 == v8)
      {
        goto LABEL_16;
      }
    }

    if (v151 != v147)
    {
      v25 = *v152;
    }

LABEL_16:
    v26 = v156;
    if (v155 == v10 || v156 == v9)
    {
      v26 = &v191;
    }

    v28 = *v26;
    v29 = v154;
    if (v153 == v13 || v154 == v11)
    {
      v29 = &v185;
    }

    v31 = *v29;
    if (v25 < v24)
    {
      v24 = v25;
    }

    if (v28 >= v24)
    {
      v32 = v24;
    }

    else
    {
      v32 = v28;
    }

    if (v24 > v28)
    {
      v24 = v28;
    }

    v33 = v32 <= v31 ? v24 : v31;
    if (a3[1] <= v33)
    {
      return result;
    }

    v34 = *MEMORY[0x29EDCA918];
    v35 = *(MEMORY[0x29EDCA918] + 16);
    v36 = *(MEMORY[0x29EDCA918] + 32);
    v37 = *(MEMORY[0x29EDCA918] + 48);
    v38 = *(MEMORY[0x29EDCA918] + 64);
    v39 = *(MEMORY[0x29EDCA918] + 80);
    if (v4 == v5)
    {
      if (v33 != 0xFFFF)
      {
        v4 = v5;
LABEL_45:
        v41 = *MEMORY[0x29EDCA918];
        v42 = *(MEMORY[0x29EDCA918] + 16);
        v43 = *(MEMORY[0x29EDCA918] + 32);
        v44 = *(MEMORY[0x29EDCA918] + 48);
        v45 = *(MEMORY[0x29EDCA918] + 64);
        v46 = *(MEMORY[0x29EDCA918] + 80);
        goto LABEL_51;
      }

LABEL_46:
      v40 = &v192;
      goto LABEL_47;
    }

    if (v6 == v148)
    {
      if (v33 != 0xFFFF)
      {
        v6 = v148;
        goto LABEL_45;
      }

      goto LABEL_46;
    }

    v40 = v6;
    if (v33 != *v4)
    {
      goto LABEL_45;
    }

LABEL_47:
    v47 = *(MEMORY[0x29EDCA918] + 64);
    _Q0 = *(MEMORY[0x29EDCA918] + 80);
    v49 = *(MEMORY[0x29EDCA918] + 32);
    _Q5 = *(MEMORY[0x29EDCA918] + 48);
    v51 = *MEMORY[0x29EDCA918];
    v52 = *(MEMORY[0x29EDCA918] + 16);
    if (*v40 != 0.0)
    {
      v182 = *MEMORY[0x29EDCA918];
      v175 = *(MEMORY[0x29EDCA918] + 32);
      v178 = *(MEMORY[0x29EDCA918] + 16);
      v169 = *(MEMORY[0x29EDCA918] + 64);
      v172 = *(MEMORY[0x29EDCA918] + 48);
      v166 = *(MEMORY[0x29EDCA918] + 80);
      v54 = __sincos_stret(*v40 * 0.5);
      cosval = v54.__cosval;
      *&_Q0 = v54.__sinval;
      v39 = v166;
      v38 = v169;
      v37 = v172;
      v36 = v175;
      v35 = v178;
      v34 = v182;
      result = v157;
      _Q7 = vmulq_n_f64(0, v54.__sinval);
      _D16 = _Q7.f64[1];
      v51.f64[0] = vmuld_lane_f64(-_Q7.f64[1], _Q7, 1) + _Q7.f64[0] * _Q7.f64[0] - *&_Q0 * *&_Q0 + cosval * cosval;
      v49.f64[0] = cosval * *&_Q0 + _Q7.f64[0] * _Q7.f64[1] + cosval * *&_Q0 + _Q7.f64[0] * _Q7.f64[1];
      *&_Q5 = vmuld_lane_f64(v54.__cosval, _Q7, 1);
      v57.f64[0] = -(v54.__cosval * _Q7.f64[1]);
      v58 = -(cosval * *&_Q0 - _Q7.f64[0] * _Q7.f64[1]) - (cosval * *&_Q0 - _Q7.f64[0] * _Q7.f64[1]);
      __asm { FMLA            D3, D16, V7.D[1] }

      v63 = _D3 + cosval * cosval - _Q7.f64[0] * _Q7.f64[0];
      v57.f64[1] = v54.__cosval * _Q7.f64[0];
      v52 = vmlaq_n_f64(v57, _Q7, v54.__sinval);
      v47 = vaddq_f64(v52, v52);
      v52.f64[0] = *&_Q5 + *&_Q0 * _Q7.f64[0] + *&_Q5 + *&_Q0 * _Q7.f64[0];
      __asm { FMLA            D5, D0, V7.D[1] }

      *&_Q5 = *&_Q5 + *&_Q5;
      __asm { FMLS            D0, D16, V7.D[1] }

      v51.f64[1] = v58;
      v49.f64[1] = v63;
    }

    v41 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v34, v51.f64[0]), v36, v51, 1), v38, v52.f64[0]);
    v42 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v35, v51.f64[0]), v37, v51, 1), v39, v52.f64[0]);
    v43 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v34, v49.f64[0]), v36, v49, 1), v38, *&_Q5);
    v44 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v35, v49.f64[0]), v37, v49, 1), v39, *&_Q5);
    v45 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v34, v47.f64[0]), v36, v47, 1), v38, *&_Q0);
    v46 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v35, v47.f64[0]), v37, v47, 1), v39, *&_Q0);
    if (!v23)
    {
      ++v4;
      ++v6;
    }

LABEL_51:
    v64 = v152;
    v149 = v6;
    v150 = v4;
    if (v152 == v8)
    {
      if (v33 == 0xFFFF)
      {
        v66 = vdupq_n_s64(0x7FF8000000000000uLL);
        v64 = v8;
        goto LABEL_61;
      }

      v152 = v8;
    }

    else if (v151 == v147)
    {
      if (v33 == 0xFFFF)
      {
        v66 = vdupq_n_s64(0x7FF8000000000000uLL);
        v151 = v147;
        goto LABEL_61;
      }

      v151 = v147;
    }

    else if (v33 == *v152)
    {
      v65 = *v151++;
      v64 = v152 + 1;
      v66 = vcvtq_f64_f32(v65);
LABEL_61:
      v152 = v64;
      v67 = vaddq_f64(v34, 0);
      v68 = vaddq_f64(v36, 0);
      v69 = vaddq_f64(v38, 0);
      v70 = vmlaq_laneq_f64(vmulq_n_f64(v41, v67.f64[0]), v43, v67, 1);
      v71 = vmlaq_laneq_f64(vmulq_n_f64(v42, v67.f64[0]), v44, v67, 1);
      v72 = vdupq_laneq_s64(v66, 1);
      *&v73 = *&vaddq_f64(v35, v66);
      *&v72.f64[0] = *&vaddq_f64(v37, v72);
      *&v71.f64[0] = *&vmlaq_n_f64(v71, v46, v73);
      v74 = vmlaq_n_f64(v70, v45, v73);
      *&v75 = *&vaddq_f64(v39, 0);
      *&v76 = *&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v42, v68.f64[0]), v44, v68, 1), v46, v72.f64[0]);
      v77 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v41, v68.f64[0]), v43, v68, 1), v45, v72.f64[0]);
      v78 = vmlaq_laneq_f64(vmulq_n_f64(v41, v69.f64[0]), v43, v69, 1);
      *&v79 = *&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v42, v69.f64[0]), v44, v69, 1), v46, v75);
      v41 = v74;
      v42.f64[0] = v71.f64[0];
      v43 = v77;
      v44.f64[0] = v76;
      v45 = vmlaq_n_f64(v78, v45, v75);
      v46.f64[0] = v79;
    }

    v81 = v153;
    v80 = v154;
    v83 = v155;
    v82 = v156;
    while (1)
    {
      v96 = v83 == v10 || v82 == v9;
      v97 = v96 ? &v191 : v82;
      if (v33 != *v97)
      {
        v98 = v81 == v13 || v80 == v11;
        v99 = v98 ? &v185 : v80;
        if (v33 != *v99)
        {
          break;
        }
      }

      if (v82 == v9 || v83 == v10)
      {
        v101 = 0xFFFF;
        v100 = &v191;
        if (v33 != 0xFFFF)
        {
          if (v80 == v11)
          {
            goto LABEL_100;
          }

          goto LABEL_92;
        }
      }

      else
      {
        v100 = v82;
        if (v33 != *v82)
        {
          v101 = 0xFFFF;
          if (v80 == v11)
          {
            goto LABEL_100;
          }

          goto LABEL_92;
        }
      }

      v101 = *(v100 + 1);
      if (v80 == v11)
      {
        goto LABEL_100;
      }

LABEL_92:
      if (v81 != v13)
      {
        v102 = v80;
        if (v33 != *v80)
        {
          goto LABEL_101;
        }

        goto LABEL_94;
      }

LABEL_100:
      v102 = &v185;
      if (v33 != 0xFFFF)
      {
LABEL_101:
        if (v82 == v9)
        {
          goto LABEL_97;
        }

        goto LABEL_102;
      }

LABEL_94:
      v103 = *(v102 + 1);
      if (v103 < v101)
      {
        v101 = v103;
      }

      if (v82 == v9)
      {
LABEL_97:
        v104 = 0.0;
        if (v33 == 0xFFFF)
        {
          v104 = NAN;
          if (v101 != 0xFFFF)
          {
            v104 = 0.0;
          }

          v82 = v9;
          if (v80 == v11)
          {
LABEL_63:
            if ((v33 & v101) == 0xFFFF)
            {
              v84 = NAN;
            }

            else
            {
              v84 = 0.0;
            }

            v80 = v11;
            v85 = v84;
            v86 = *(*(result + 184) + 8 * v101);
            if (v86 == 0.0)
            {
              goto LABEL_67;
            }

            goto LABEL_122;
          }
        }

        else
        {
          v82 = v9;
          if (v80 == v11)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_111;
      }

LABEL_102:
      if (v83 == v10)
      {
        v104 = NAN;
        if ((v33 & v101) != 0xFFFF)
        {
          v104 = 0.0;
        }

        v83 = v10;
      }

      else
      {
        v104 = 0.0;
        if (v33 == *v82 && v101 == HIWORD(*v82))
        {
          v105 = *v83++;
          v104 = v105;
          v82 = (v82 + 4);
          v187 = v82;
          v189 = v83;
          v155 = v83;
          v156 = v82;
          if (v80 == v11)
          {
            goto LABEL_63;
          }

          goto LABEL_111;
        }
      }

      if (v80 == v11)
      {
        goto LABEL_63;
      }

LABEL_111:
      if (v81 == v13)
      {
        if ((v33 & v101) == 0xFFFF)
        {
          v84 = NAN;
        }

        else
        {
          v84 = 0.0;
        }

        v81 = v13;
        v85 = v84;
        v86 = *(*(result + 184) + 8 * v101);
        if (v86 == 0.0)
        {
LABEL_67:
          v87 = v38;
          v88 = v39;
          v89 = v36;
          v90 = v37;
          v91 = v34;
          v92 = v35;
          goto LABEL_68;
        }
      }

      else
      {
        v84 = 0.0;
        if (v33 == *v80 && v101 == HIWORD(*v80))
        {
          v84 = *v81;
          v85 = v81[1];
          v81 += 2;
          ++v80;
          v153 = v81;
          v154 = v80;
          v86 = *(*(result + 184) + 8 * v101);
          if (v86 == 0.0)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v85 = 0.0;
          v86 = *(*(result + 184) + 8 * v101);
          if (v86 == 0.0)
          {
            goto LABEL_67;
          }
        }
      }

LABEL_122:
      v158 = v86;
      v160 = v42.f64[0];
      v161 = v41;
      v162 = v43;
      v163 = v44.f64[0];
      v164 = v45;
      v165 = v46.f64[0];
      v167 = v39;
      v170 = v38;
      v173 = v37;
      v176 = v36;
      v179 = v35;
      v183 = v34;
      v106 = remainder(v104, 6.28318531);
      v107.f64[0] = v84;
      if (fabs(v106) > 2.22044605e-10)
      {
        v109 = v106;
        v180 = v107.f64[0];
        v110 = __sincos_stret(v106);
        v111.f64[0] = __divdc3(v180, v85, 1.0 - v110.__cosval, 0.0 - v110.__sinval);
        v3.f64[0] = v112;
        v34 = *MEMORY[0x29EDCA918];
        v35 = *(MEMORY[0x29EDCA918] + 16);
        v36 = *(MEMORY[0x29EDCA918] + 32);
        v37 = *(MEMORY[0x29EDCA918] + 48);
        v38 = *(MEMORY[0x29EDCA918] + 64);
        v39 = *(MEMORY[0x29EDCA918] + 80);
        v113 = v158 * v109;
        v114 = *MEMORY[0x29EDCA918];
        v115 = v35;
        v116 = v36;
        _Q5 = v37;
        v118 = v38;
        _Q0 = v39;
        if (v158 * v109 != 0.0)
        {
          v184 = *MEMORY[0x29EDCA918];
          v177 = *(MEMORY[0x29EDCA918] + 32);
          v181 = *(MEMORY[0x29EDCA918] + 16);
          v171 = *(MEMORY[0x29EDCA918] + 64);
          v174 = *(MEMORY[0x29EDCA918] + 48);
          v168 = *(MEMORY[0x29EDCA918] + 80);
          v159 = v111;
          v121 = __sincos_stret(v113 * 0.5);
          v120 = v121.__cosval;
          _Q0.f64[0] = v121.__sinval;
          v111 = v159;
          v39 = v168;
          v38 = v171;
          v37 = v174;
          v36 = v177;
          v35 = v181;
          v34 = v184;
          _Q7 = vmulq_n_f64(0, v121.__sinval);
          _D16 = _Q7.f64[1];
          v114.f64[0] = vmuld_lane_f64(-_Q7.f64[1], _Q7, 1) + _Q7.f64[0] * _Q7.f64[0] - _Q0.f64[0] * _Q0.f64[0] + v120 * v120;
          v116.f64[0] = v120 * _Q0.f64[0] + _Q7.f64[0] * _Q7.f64[1] + v120 * _Q0.f64[0] + _Q7.f64[0] * _Q7.f64[1];
          _Q5.f64[0] = vmuld_lane_f64(v121.__cosval, _Q7, 1);
          v124.f64[0] = -(v121.__cosval * _Q7.f64[1]);
          v125 = -(v120 * _Q0.f64[0] - _Q7.f64[0] * _Q7.f64[1]) - (v120 * _Q0.f64[0] - _Q7.f64[0] * _Q7.f64[1]);
          __asm { FMLA            D4, D16, V7.D[1] }

          v127 = _D4 + v120 * v120 - _Q7.f64[0] * _Q7.f64[0];
          v124.f64[1] = v121.__cosval * _Q7.f64[0];
          v115 = vmlaq_n_f64(v124, _Q7, v121.__sinval);
          v118 = vaddq_f64(v115, v115);
          v115.f64[0] = _Q5.f64[0] + _Q0.f64[0] * _Q7.f64[0] + _Q5.f64[0] + _Q0.f64[0] * _Q7.f64[0];
          __asm { FMLA            D5, D0, V7.D[1] }

          _Q5.f64[0] = _Q5.f64[0] + _Q5.f64[0];
          __asm { FMLS            D0, D16, V7.D[1] }

          v114.f64[1] = v125;
          v116.f64[1] = v127;
        }

        v128.f64[0] = v111.f64[0];
        v128.f64[1] = v3.f64[0];
        v129 = vdupq_laneq_s64(vnegq_f64(v128), 1);
        v130 = vsubq_f64(v35, v128);
        v131 = vaddq_f64(v34, 0);
        v132 = vaddq_f64(v37, v129);
        v133 = vaddq_f64(v36, 0);
        v134 = vaddq_f64(v39, 0);
        v135 = vaddq_f64(v38, 0);
        v136 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v130, v114), v132, v114, 1), v115, v134);
        v137 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v131, v114.f64[0]), v133, v114, 1), v135, v115.f64[0]);
        v138 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v131, v116.f64[0]), v133, v116, 1), v135, _Q5.f64[0]);
        v139 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v130, v116), v132, v116, 1), _Q5, v134);
        v140 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v130, v118), v132, v118, 1), _Q0, v134);
        v141 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v131, v118.f64[0]), v133, v118, 1), v135, _Q0.f64[0]);
        v142 = vaddq_f64(v35, v111);
        v143 = vaddq_f64(v37, v3);
        v91 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v137, v131.f64[0]), v138, v131, 1), v141, v142.f64[0]);
        v92 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v131, v136), v139, v131, 1), v142, v140);
        v89 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v137, v133.f64[0]), v138, v133, 1), v141, v143.f64[0]);
        v90 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v133, v136), v139, v133, 1), v143, v140);
        v87 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v137, v135.f64[0]), v138, v135, 1), v141, v134.f64[0]);
        v88 = vmlaq_f64(vmlaq_laneq_f64(vmulq_f64(v135, v136), v139, v135, 1), v134, v140);
      }

      else
      {
        v107.f64[1] = v85;
        v108 = vmulq_n_f64(v107, v158);
        v36 = v176;
        v35 = v179;
        v92 = vaddq_f64(v108, v179);
        v34 = v183;
        v91 = vaddq_f64(v183, 0);
        v38 = v170;
        v37 = v173;
        v90 = vaddq_f64(vdupq_laneq_s64(v108, 1), v173);
        v89 = vaddq_f64(v176, 0);
        v87 = vaddq_f64(v170, 0);
        v39 = v167;
        v88 = vaddq_f64(v167, 0);
      }

      result = v157;
      v45 = v164;
      v46.f64[0] = v165;
      v43 = v162;
      v44.f64[0] = v163;
      v42.f64[0] = v160;
      v41 = v161;
LABEL_68:
      *&v93 = *&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v92, v41.f64[0]), v90, v41, 1), v88, v42.f64[0]);
      *&v94 = *&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v92, v43.f64[0]), v90, v43, 1), v88, v44.f64[0]);
      v41 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v91, v41.f64[0]), v89, v41, 1), v87, v42.f64[0]);
      v42.f64[0] = v93;
      *&v95 = *&vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v92, v45.f64[0]), v90, v45, 1), v88, v46.f64[0]);
      v43 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v91, v43.f64[0]), v89, v43, 1), v87, v44.f64[0]);
      v44.f64[0] = v94;
      v45 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v91, v45.f64[0]), v89, v45, 1), v87, v46.f64[0]);
      v46.f64[0] = v95;
    }

    a3 = v146;
    v14 = *v146 + 96 * v33;
    v15 = *(v14 + 16);
    v17 = *(v14 + 32);
    v16 = *(v14 + 48);
    v18 = *(v14 + 64);
    v19 = *(v14 + 80);
    v20 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v14, v43.f64[0]), v17, v43, 1), v18, v44.f64[0]);
    v21 = vmlaq_laneq_f64(vmulq_n_f64(*v14, v45.f64[0]), v17, v45, 1);
    *v14 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*v14, v41.f64[0]), v17, v41, 1), v18, v42.f64[0]);
    *(v14 + 16) = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v15, v41.f64[0]), v16, v41, 1), v19, v42.f64[0]);
    *(v14 + 32) = v20;
    *(v14 + 48) = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v15, v43.f64[0]), v16, v43, 1), v19, v44.f64[0]);
    *(v14 + 64) = vmlaq_n_f64(v21, v18, v46.f64[0]);
    *(v14 + 80) = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v15, v45.f64[0]), v16, v45, 1), v19, v46.f64[0]);
    v6 = v149;
    v4 = v150;
    v8 = v144;
    v5 = v145;
  }
}

void HVF::PartTransformRenderer::~PartTransformRenderer(HVF::PartTransformRenderer *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    *(this + 27) = v2;
    operator delete(v2);
  }

  v3 = *(this + 23);
  if (v3)
  {
    *(this + 24) = v3;
    operator delete(v3);
  }

  v4 = *(this + 20);
  if (v4)
  {
    *(this + 21) = v4;
    operator delete(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    *(this + 18) = v5;
    operator delete(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    *(this + 15) = v6;
    operator delete(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    *(this + 12) = v7;
    operator delete(v7);
  }

  *this = &unk_2A1F19EF0;
  std::__tree<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::variant<HVF::Shape,HVF::Composite>>>>::destroy(this + 40, *(this + 6));
  v8 = *(this + 4);
  if (v8 == (this + 8))
  {
    (*(*v8 + 32))(v8);
    v9 = this;
  }

  else
  {
    if (v8)
    {
      (*(*v8 + 40))(v8);
    }

    v9 = this;
  }

  destructiveProjectEnumData for AxisExtremum(v9);
}

void std::vector<simd::double3x3>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 5) >= a2)
  {
    if (a2)
    {
      v9 = 96 * ((96 * a2 - 96) / 0x60) + 96;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5) + a2;
    if (v6 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 5);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x155555555555555)
    {
      v8 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = (32 * ((v4 - *a1) >> 5));
    v11 = 96 * ((96 * a2 - 96) / 0x60) + 96;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void std::vector<simd::double3x3>::__append(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = &v4[6 * a2];
      v11 = 96 * a2;
      do
      {
        v12 = a3[1];
        *v4 = *a3;
        v4[1] = v12;
        v13 = a3[2];
        v14 = a3[3];
        v15 = a3[5];
        v4[4] = a3[4];
        v4[5] = v15;
        v4[2] = v13;
        v4[3] = v14;
        v4 += 6;
        v11 -= 96;
      }

      while (v11);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<simd::double3x3>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = 96 * v6;
    v17 = 96 * a2;
    v18 = 96 * v6 + 96 * a2;
    v19 = 96 * v6;
    do
    {
      v20 = a3[1];
      *v19 = *a3;
      *(v19 + 16) = v20;
      v21 = a3[2];
      v22 = a3[3];
      v23 = a3[5];
      *(v19 + 64) = a3[4];
      *(v19 + 80) = v23;
      *(v19 + 32) = v21;
      *(v19 + 48) = v22;
      v19 += 96;
      v17 -= 96;
    }

    while (v17);
    v24 = *a1;
    v25 = *(a1 + 8) - *a1;
    v26 = v16 - v25;
    memcpy((v16 - v25), *a1, v25);
    *a1 = v26;
    *(a1 + 8) = v18;
    *(a1 + 16) = 0;
    if (v24)
    {

      operator delete(v24);
    }
  }
}

__n128 std::__function::__func<HVF::wrapContext(HVFPartRenderAction (*)(HVFPartRenderInstruction,HVFPartRenderParameters const*,void *),void *)::$_0,std::allocator<HVF::wrapContext(HVFPartRenderAction (*)(HVFPartRenderInstruction,HVFPartRenderParameters const*,void *),void *)::$_0>,HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F1A310;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<HVF::wrapContext(HVFPartRenderAction (*)(HVFPartRenderInstruction,HVFPartRenderParameters const*,void *),void *)::$_0,std::allocator<HVF::wrapContext(HVFPartRenderAction (*)(HVFPartRenderInstruction,HVFPartRenderParameters const*,void *),void *)::$_0>,HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3HVF11wrapContextEPF19HVFPartRenderAction24HVFPartRenderInstructionPK23HVFPartRenderParametersPvES5_E3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3HVF11wrapContextEPF19HVFPartRenderAction24HVFPartRenderInstructionPK23HVFPartRenderParametersPvES5_E3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3HVF11wrapContextEPF19HVFPartRenderAction24HVFPartRenderInstructionPK23HVFPartRenderParametersPvES5_E3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3HVF11wrapContextEPF19HVFPartRenderAction24HVFPartRenderInstructionPK23HVFPartRenderParametersPvES5_E3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

double OUTLINED_FUNCTION_0(float64x2_t a1, float64x2_t a2, double a3, float64x2_t a4)
{
  v4 = vdivq_f64(a1, vdupq_lane_s64(*&a3, 0));
  v5 = vaddvq_f64(vmulq_f64(vmulq_n_f64(v4, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v4, v4)))), vsubq_f64(a4, a2)));
  result = sqrt(vaddvq_f64(vmulq_f64(a1, a1)));
  if (result >= v5)
  {
    return v5;
  }

  return result;
}

void HVFPartRenderer::HVFPartRenderer(HVFPartRenderer *this, const void *a2, unint64_t a3, const void *a4, unint64_t a5)
{
  v9 = *MEMORY[0x29EDCA608];
  v6 = &unk_2A1F1A100;
  v7 = HVF::LoaderHVGL::LoaderHVGL(this, a2, a3, a4, a5);
  v8 = &v6;
  HVF::PartTransformRenderer::PartTransformRenderer(v7 + 136, &v6, 0);
  if (v8 == &v6)
  {
    (*(*v8 + 4))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 5))();
  }

  v5 = *MEMORY[0x29EDCA608];
}

{
  v9 = *MEMORY[0x29EDCA608];
  v6 = &unk_2A1F1A100;
  v7 = HVF::LoaderHVGL::LoaderHVGL(this, a2, a3, a4, a5);
  v8 = &v6;
  HVF::PartTransformRenderer::PartTransformRenderer(v7 + 136, &v6, 0);
  if (v8 == &v6)
  {
    (*(*v8 + 4))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 5))();
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_298AD07F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>::~function(va);
  HVF::LoaderHVGL::~LoaderHVGL(v2);
  _Unwind_Resume(a1);
}

void sub_298AD0904(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>::~function(va);
  HVF::LoaderHVGL::~LoaderHVGL(v2);
  _Unwind_Resume(a1);
}

void HVFPartRenderer::~HVFPartRenderer(HVFPartRenderer *this)
{
  HVF::PartTransformRenderer::~PartTransformRenderer((this + 136));

  HVF::LoaderHVGL::~LoaderHVGL(this);
}

uint64_t HVF_open_part_renderer(void *a1, unint64_t a2, void *a3, unint64_t a4, HVF::LoaderHVGL *this, unint64_t a6, int a7, int a8, uint64_t a9, char a10)
{
  v20 = *MEMORY[0x29EDCA608];
  result = 0xFFFFFFFFLL;
  if (a6 < 0x170 || (this & 7) != 0)
  {
    goto LABEL_8;
  }

  HVF::LoaderHVGL::LoaderHVGL(this, a1, a2, a3, a4);
  v18[0] = &unk_2A1F1A100;
  v18[1] = this;
  v19 = v18;
  HVF::PartTransformRenderer::PartTransformRenderer(this + 136, v18, 0);
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
    result = 0;
LABEL_8:
    v17 = *MEMORY[0x29EDCA608];
    return result;
  }

  if (v19)
  {
    (*(*v19 + 40))();
  }

  result = 0;
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t HVF_table_version(HVF::LoaderHVGL *a1)
{
  HIDWORD(v2) = HVF::LoaderHVGL::version(a1);
  LODWORD(v2) = HIDWORD(v2);
  return (v2 >> 16);
}

uint64_t HVF_part_count(void *a1)
{
  if ((*(*a1 + 16))(a1))
  {
    return a1[6];
  }

  else
  {
    return 0;
  }
}

uint64_t HVF_set_render_part(uint64_t a1, char *a2)
{
  HVF::PartTransformRenderer::setRenderPart((a1 + 136), a2);
  if (*(a1 + 208))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t HVF_render_part_axis_count(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    return (*(*v1 + 40))(v1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t HVF_set_axis_value(uint64_t a1, int a2, double a3)
{
  v4 = a3;
  HVF::PartTransformRenderer::setPartAxisValueAtIndex((a1 + 136), a2, &v4);
  return 0;
}

uint64_t HVF_render_current_part(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x29EDCA608];
  HVF::wrapContext(a2, a3, v8);
  v5 = HVF::PartTransformRenderer::renderToContext(a1 + 136, v8, v4);
  if (v9 == v8)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))();
  }

  v6 = *MEMORY[0x29EDCA608];
  return (v5 - 1);
}

void sub_298AD0D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t HVF_close_part_renderer(uint64_t a1)
{
  HVF::PartTransformRenderer::~PartTransformRenderer((a1 + 136));
  HVF::LoaderHVGL::~LoaderHVGL(a1);
  return 0;
}

uint64_t std::function<HVF::Part const* ()(unsigned long,HVF::PartCache &)>::~function(uint64_t a1)
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

uint64_t std::function<HVFPartRenderAction ()(HVFPartRenderInstruction,HVFPartRenderParameters const*)>::~function(uint64_t a1)
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

double __divdc3(double a1, double a2, double a3, double a4)
{
  v4 = fmax(fabs(a3), fabs(a4));
  v5 = -INFINITY;
  v6 = __clz(*&v4);
  v7 = (((*&v4 << (v6 - 11) >> 52) & 0x7FF) - v6 - 1012);
  if (*&v4 >> 52)
  {
    v7 = ((*&v4 >> 52) - 1023);
  }

  if (v4 != 0.0)
  {
    v5 = v7;
  }

  if (*&v4 >> 52 == 2047)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v9 = v8;
  v22 = -v8;
  if (a3 == 0.0 || (v23 = (*&a3 >> 52) & 0x7FFLL, v23 == 2047))
  {
LABEL_34:
    if (a4 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  v24 = *&a3 & 0xFFFFFFFFFFFFFLL;
  if (!v23)
  {
    v25 = __clz(v24);
    v26 = v24 << (v25 - 11);
    LODWORD(v23) = 12 - v25;
    v24 = v26 & 0xFFEFFFFFFFFFFFFFLL;
  }

  v20 = __OFADD__(v23, v22);
  LODWORD(v23) = v23 - v8;
  if (v20)
  {
    v23 = (v23 >> 31) ^ 0x80000000;
  }

  else
  {
    v23 = v23;
  }

  v27 = *&a3 & 0x8000000000000000;
  if (v23 < 2047)
  {
    if (v23 <= 0)
    {
      v37 = v24 | v27 | 0x10000000000000;
      if (v23 <= -1021)
      {
        v38 = -1021;
      }

      else
      {
        v38 = v23;
      }

      a3 = *&v37 * COERCE_DOUBLE((v38 + 1022) << 52);
      if (a4 == 0.0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    *&a3 = v27 | (v23 << 52) | v24;
    goto LABEL_34;
  }

  a3 = COERCE_DOUBLE(v27 | 0x7FE0000000000000) + COERCE_DOUBLE(v27 | 0x7FE0000000000000);
  if (a4 == 0.0)
  {
    goto LABEL_10;
  }

LABEL_35:
  v28 = (*&a4 >> 52) & 0x7FFLL;
  if (v28 != 2047)
  {
    v29 = *&a4 & 0xFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v30 = __clz(v29);
      v31 = v29 << (v30 - 11);
      LODWORD(v28) = 12 - v30;
      v29 = v31 & 0xFFEFFFFFFFFFFFFFLL;
    }

    v20 = __OFADD__(v28, v22);
    LODWORD(v32) = v28 - v8;
    if (v20)
    {
      v32 = (v32 >> 31) ^ 0x80000000;
    }

    else
    {
      v32 = v32;
    }

    v33 = *&a4 & 0x8000000000000000;
    if (v32 < 2047)
    {
      if (v32 <= 0)
      {
        if (v32 <= -1021)
        {
          LODWORD(v32) = -1021;
        }

        a4 = COERCE_DOUBLE(v29 | v33 | 0x10000000000000) * COERCE_DOUBLE((v32 + 1022) << 52);
      }

      else
      {
        *&a4 = v33 | (v32 << 52) | v29;
      }
    }

    else
    {
      a4 = COERCE_DOUBLE(v33 | 0x7FE0000000000000) + COERCE_DOUBLE(v33 | 0x7FE0000000000000);
    }
  }

LABEL_10:
  v10 = a4 * a4 + a3 * a3;
  v11 = (a4 * a2 + a1 * a3) / v10;
  v12 = -v9;
  if (v11 != 0.0)
  {
    v13 = (a4 * a2 + a1 * a3) / v10;
    v14 = (*&v11 >> 52) & 0x7FFLL;
    if (v14 != 2047)
    {
      v15 = *&v13 & 0xFFFFFFFFFFFFFLL;
      v16 = __clz(*&v13 & 0xFFFFFFFFFFFFFLL);
      v17 = (*&v13 & 0xFFFFFFFFFFFFFLL) << (v16 - 11);
      v18 = 12 - v16;
      v19 = v17 & 0xFFEFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v19;
        LODWORD(v14) = v18;
      }

      v20 = __OFADD__(v14, v12);
      LODWORD(v14) = v14 + v12;
      if (v20)
      {
        v14 = (v14 >> 31) ^ 0x80000000;
      }

      else
      {
        v14 = v14;
      }

      v21 = *&v11 & 0x8000000000000000;
      if (v14 < 2047)
      {
        if (v14 <= 0)
        {
          v34 = v15 | v21 | 0x10000000000000;
          if (v14 <= -1021)
          {
            v35 = -1021;
          }

          else
          {
            v35 = v14;
          }

          return *&v34 * COERCE_DOUBLE((v35 + 1022) << 52);
        }

        else
        {
          *&v11 = v21 | (v14 << 52) | v15;
        }
      }

      else
      {
        return COERCE_DOUBLE(v21 | 0x7FE0000000000000) + COERCE_DOUBLE(v21 | 0x7FE0000000000000);
      }
    }
  }

  return v11;
}

void HVF::PartTransformRenderer::PartTransformRenderer(void **a1, HVF::FlatPartCache *this)
{
  v3 = *a1;
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  HVF::FlatPartCache::~FlatPartCache(this);
}

uint64_t HVF::PartTransformRenderer::render(uint64_t a1, void *a2)
{
  v3 = 8;
  v4 = a1;
  if (!*a2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(**a2 + 48))(*a2, &v3, &v4);
}

uint64_t HVF::PartTransformRenderer::adjustShapePoints(uint64_t result, float64x2_t *a2, float64x2_t a3)
{
  v3 = &a2[2 * (result != 0)];
  v4 = v3[1];
  v5 = vpmaxq_f64(vabdq_f64(v4, a3));
  if (v5 == INFINITY || (*&v5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v15 = a3;
  }

  else
  {
    v7 = vsubq_f64(v4, a3);
    v8 = vdivq_f64(v7, vdupq_lane_s64(*&v5, 0));
    v9 = vmulq_n_f64(v8, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v8, v8))));
    v10 = vaddvq_f64(vmulq_f64(v9, vsubq_f64(*a2, a3)));
    v11 = sqrt(vaddvq_f64(vmulq_f64(v7, v7)));
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    if (v10 < 0.0)
    {
      v12 = 0.0;
    }

    v13 = vmulq_n_f64(v9, v12);
    v14 = vaddvq_f64(vmulq_f64(v9, vsubq_f64(*v3, a3)));
    if (v11 >= v14)
    {
      v11 = v14;
    }

    if (v14 < 0.0)
    {
      v11 = 0.0;
    }

    v15 = vaddq_f64(a3, vmulq_n_f64(v9, v11));
    a3 = vaddq_f64(a3, v13);
  }

  *a2 = a3;
  *v3 = v15;
  return result;
}

void HVF::PartTransformRenderer::adjustShapePoints(float64x2_t *a1, float64x2_t a2, float64x2_t a3)
{
  v3 = vpmaxq_f64(vabdq_f64(a2, a3));
  if (v3 != INFINITY && (*&v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = OUTLINED_FUNCTION_0(vsubq_f64(a2, a3), a3, v3, *a1);
    if (v8 < 0.0)
    {
      v5 = 0.0;
    }

    a3 = vaddq_f64(v6, vmulq_n_f64(v7, v5));
  }

  *a1 = a3;
}

void HVF::PartTransformRenderer::adjustShapePoints(uint64_t a1, uint64_t a2, float64x2_t a3, float64x2_t a4)
{
  v4 = (a1 + 8 * a2);
  v5 = vpmaxq_f64(vabdq_f64(a3, a4));
  if (v5 != INFINITY && (*&v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = OUTLINED_FUNCTION_0(vsubq_f64(a3, a4), a4, v5, *v4);
    if (v10 < 0.0)
    {
      v7 = 0.0;
    }

    a4 = vaddq_f64(v8, vmulq_n_f64(v9, v7));
  }

  *v4 = a4;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2A1C76650](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}