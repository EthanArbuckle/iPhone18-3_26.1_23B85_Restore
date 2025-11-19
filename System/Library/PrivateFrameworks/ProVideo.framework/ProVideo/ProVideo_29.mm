uint64_t HGString::Digest::push(HGString::Digest *this, const HGString::Digest *a2, const HGLimits *a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v5;
  *this = v3;
  *(this + 1) = v4;
  v6 = *(this + 26) + 1;
  *(this + 26) = v6;
  v7 = *(this + 56) + 1;
  *(this + 56) = v7;
  v8 = *(this + 59) + 1;
  *(this + 59) = v8;
  v9 = *(this + 58) + 1;
  *(this + 58) = v9;
  if (v6 <= 0xFFu)
  {
    v6 |= (v6 << 12) | ((v7 & 0xF) << 8);
    *(this + 26) = v6;
  }

  if (a3)
  {
    if (*(a3 + 18) < v6)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = 0xFFFFFFFFLL;
    if (*(a3 + 40) < v7 || v8 > 8u)
    {
      return v11;
    }

    if (*(this + 20) + v8 + *(this + 43) + *(this + 42) + *(this + 44) + *(this + 25) > *(a3 + 27) + *(a3 + 12) + *(a3 + 26) + *(a3 + 28) + *(a3 + 17) + *(a3 + 43))
    {
      return 0xFFFFFFFFLL;
    }

    if (*(a3 + 42) < v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return *(a2 + 56);
}

uint64_t HGString::push(HGString *this, const HGLimits *a2)
{
  HGString::digest(this, &v28);
  v24 = v28;
  v25 = v29[0];
  v26 = v29[1];
  v27 = v30;
  v4 = WORD2(v30) + 1;
  WORD2(v27) = WORD2(v30) + 1;
  v5 = BYTE8(v30) + 1;
  BYTE8(v27) = BYTE8(v30) + 1;
  BYTE11(v27) = BYTE11(v30) + 1;
  BYTE10(v27) = BYTE10(v30) + 1;
  if ((WORD2(v30) + 1) <= 0xFFu)
  {
    v4 |= (v4 << 12) | ((v5 & 0xF) << 8);
    WORD2(v27) = v4;
  }

  if (!a2)
  {
    goto LABEL_10;
  }

  if (*(a2 + 18) < v4)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0xFFFFFFFFLL;
  if (*(a2 + 40) >= v5 && (BYTE11(v30) + 1) <= 8u && WORD4(v26) + (BYTE11(v30) + 1) + BYTE11(v26) + BYTE10(v26) + BYTE12(v26) + WORD1(v27) <= *(a2 + 27) + *(a2 + 12) + *(a2 + 26) + *(a2 + 28) + *(a2 + 17) + *(a2 + 43) && *(a2 + 42) >= (BYTE10(v30) + 1))
  {
LABEL_10:
    v6 = BYTE8(v30);
    LOBYTE(v23) = 1;
    HIBYTE(v23) = BYTE8(v30) + 1;
    std::vector<HGShaderHistory>::push_back[abi:ne200100](this + 24, &v23);
    if ((v29[0] & 0xFFFFF) - 394305 >= 0xFFFFFECF)
    {
      arb::begin(this, v29, &v25, v7);
      arb::end(this, &v25, &v24, v13, v14, v15);
      return v6;
    }

    if ((v29[0] & 0xFFFFF) - 394785 >= 0xFFFFFFEF)
    {
      v8 = glsl::begin(this, v29, &v25, v7);
    }

    else
    {
      if ((v29[0] & 0xFFFFF) != 0x60B10)
      {
        if (LODWORD(v29[0]))
        {
          return v6;
        }

        DWORD2(v25) |= (v4 & 0xFF00) >> 8;
        *(this + 1) = 0;
        v16 = this;
        v17 = 1;
        goto LABEL_19;
      }

      v11 = v25;
      v12 = *(this + 1);
      if (v12)
      {
        str_alloc(this, v12);
        if (LODWORD(v29[0]) != v11)
        {
          goto LABEL_24;
        }
      }

      else
      {
        str_alloc(this, 33);
        *(this + 1) = 33;
        if (LODWORD(v29[0]) != v11)
        {
LABEL_24:
          v19 = v11 >> 4;
          v20 = *this;
          *(v20 + 3) = 1818326117;
          *v20 = 1699557167;
          if (v19 | v11 & 0xF)
          {
            *(v20 + 7) = v19 | 0x30;
            *(v20 + 8) = 46;
            v21 = (v20 + 10);
            *(v20 + 9) = v11 & 0xF | 0x30;
          }

          else
          {
            v21 = (v20 + 7);
          }

          v22 = *this;
          memset(v21, 32, *this + 15 - v21);
          qmemcpy((v22 + 15), "\n//LEN=0000000000\n", 18);
          v8 = *"//LEN=0000000000\n";
        }
      }
    }

    v16 = this;
    v17 = 0;
LABEL_19:
    glsl::end(v16, &v25, &v24, v17, v8, v9, v10);
  }

  return v6;
}

double glsl::begin(string_t *this, string_t *a2, const HGLimits *a3, const HGLimits *a4)
{
  v7 = *a3;
  v8 = this[1];
  if (v8)
  {
    str_alloc(this, v8);
    if (*a2 == *a3)
    {
      return result;
    }
  }

  else
  {
    str_alloc(this, 33);
    this[1] = 33;
    if (*a2 == *a3)
    {
      return result;
    }
  }

  v10 = *this;
  v11 = v7 & 0xFFF00;
  if ((v7 & 0xFFF00u) <= 0x605FF)
  {
    switch(v11)
    {
      case 132608:
        v13 = 29552;
        break;
      case 329216:
        v13 = 29558;
        break;
      case 329472:
        v12 = 29558;
        goto LABEL_20;
      default:
        return result;
    }

LABEL_17:
    *(v10 + 2) = v13;
    *v10 = 1279733551;
    v14 = v7 >> 4;
    v15 = v7 & 0xF;
    if (!(v14 | v7 & 0xF))
    {
LABEL_21:
      v16 = v10 + 6;
      goto LABEL_22;
    }

LABEL_18:
    v10[6] = v14 | 0x30;
    v10[7] = 46;
    v16 = v10 + 9;
    v10[8] = v15 | 0x30;
LABEL_22:
    v17 = *this;
    memset(v16, 32, v17 + 15 - v16);
    qmemcpy((v17 + 15), "\n//LEN=0000000000\n", 18);
    return *"//LEN=0000000000\n";
  }

  switch(v11)
  {
    case 394752:
      v13 = 29542;
      goto LABEL_17;
    case 395008:
      v12 = 29542;
LABEL_20:
      *(v10 + 2) = v12;
      *v10 = 1195585327;
      v14 = v7 >> 4;
      v15 = v7 & 0xF;
      if (!(v14 | v7 & 0xF))
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    case 460288:
      v13 = 29557;
      goto LABEL_17;
  }

  return result;
}

uint64_t HGString::Digest::push(HGString::Digest *this, HGShaderBinding *a2, const HGString::Digest *a3, const HGString::Digest *a4, int a5, const HGLimits *a6)
{
  v6 = *(a3 + 4);
  if (!v6)
  {
    v9 = *(a4 + 4);
    if ((v9 & 0xFFFFFu) - 394000 < 0x131 || (v9 & 0xFFFFFu) - 394768 < 0x11 || (v9 & 0xFFFFF) == 396048)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  v7 = v6 & 0xFFFFF;
  if (v7 != 396048 && (v7 - 394000) >= 0x131 && (v7 - 394768) > 0x10)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v7 - 394305) >= 0xFFFFFECF)
  {
    if ((*(a4 + 4) & 0xFFFFFu) - 394305 < 0xFFFFFECF)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v7 - 394785) < 0xFFFFFFEF)
    {
      if (v7 == 396048)
      {
        v9 = *(a4 + 4);
        if ((v9 & 0xFFFFF) == 0x60B10)
        {
          goto LABEL_25;
        }

LABEL_19:
        if (!v9)
        {
          return *(a3 + 58);
        }

        return 0xFFFFFFFFLL;
      }

LABEL_22:
      if (!*(a4 + 4))
      {
        return *(a3 + 58);
      }

      return 0xFFFFFFFFLL;
    }

    if ((*(a4 + 4) & 0xFFFFFu) - 394785 < 0xFFFFFFEF)
    {
      goto LABEL_22;
    }
  }

LABEL_25:
  if (a5)
  {
    v12 = 0xFFFFFFFFLL;
    if (*(a4 + 26) > 1u || *(a4 + 56) > 1u)
    {
      return v12;
    }
  }

  v12 = 0xFFFFFFFFLL;
  if ((*(a3 + 5) & *(a4 + 5) & 0x8000000) != 0 || *(a4 + 58) != 1)
  {
    return v12;
  }

  v13 = *(a4 + 59);
  if (v13 <= 1)
  {
    LOBYTE(v13) = 1;
  }

  v14 = v13 + *(a3 + 58);
  *(this + 59) = v14;
  if (v14 <= *(a3 + 59))
  {
    v15 = *(a3 + 59);
  }

  else
  {
    v15 = v14;
  }

  *(this + 59) = v15;
  if (v15 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = *(a3 + 25);
  v17 = *(a3 + 18);
  *a2 = v16;
  *(a2 + 1) = v17;
  v18 = *(a3 + 26);
  v19 = *(a3 + 58);
  *(a2 + 2) = v18;
  *(a2 + 3) = v19;
  v20 = *(a3 + 19);
  v21 = *(a3 + 15);
  *(a2 + 4) = v20;
  *(a2 + 5) = v21;
  v22 = *(a3 + 56);
  *(a2 + 6) = v22;
  *(a2 + 28) = 0xFFFFFFFFLL;
  v24 = *(a3 + 4);
  v23 = *(a3 + 5);
  v25 = *(a4 + 5);
  if (v24 <= *(a4 + 4))
  {
    v24 = *(a4 + 4);
  }

  if (v19)
  {
    v26 = *(a3 + 5);
  }

  else
  {
    v26 = *(a4 + 5);
  }

  v27 = v25 & 0xEFFFFFFF | v23 & 0xDBFFFFFF | v26 & 0x20000000;
  v28 = *(a4 + 24) | *(a3 + 24);
  v29 = *(a4 + 23) | *(a3 + 23);
  v30 = *(a4 + 57) | *(a3 + 57);
  v31 = v25 | v23;
  v32 = v23 & v25 & 0xC0000000;
  if (v31 < 0)
  {
    v32 = 0x80000000;
  }

  v33 = v27 | v32;
  v34 = (*(a4 + 8) << v22) | *(a3 + 8);
  *(this + 4) = v24;
  *(this + 5) = v33;
  v35 = vand_s8(vshl_u32(*(a4 + 24), vdup_n_s32(v22)), 0xFF000000FFLL);
  v36 = vorr_s8(v35, *(a3 + 24));
  *(this + 3) = v36;
  *(this + 8) = v34;
  *(this + 24) = v28;
  *(this + 23) = v29;
  *(this + 58) = v19 + 1;
  *(this + 57) = v30;
  v37 = *(a4 + 26);
  if (a5)
  {
    v37 = 1;
  }

  v38 = v37 + v18;
  v39 = (v37 + v18) | v18 & 0xFF00;
  *(this + 26) = v39;
  v40 = *(a4 + 56);
  if (a5)
  {
    v40 = 1;
  }

  v41 = v40 + v22;
  *(this + 56) = v40 + v22;
  v42 = *(a2 + 6);
  if (!a5 && !*(a2 + 2) && !v42 && (*(a4 + 4) & 0xFFFFF) != 0x60B10)
  {
    if (v39 > v41)
    {
      v41 = v38;
    }

    *(this + 56) = v41;
    LOBYTE(v39) = v41;
    *(this + 26) = v41;
  }

  v43 = *(a4 + 19) + v20;
  *(this + 19) = v43;
  *(this + 15) = *(a4 + 15) + v21;
  v44 = *(a4 + 18) + v17;
  *(this + 18) = v44;
  v45 = *(a4 + 20);
  if (v45 <= *(a3 + 20))
  {
    v45 = *(a3 + 20);
  }

  *(this + 20) = v45;
  v36.i32[0] = *(a4 + 42);
  v35.i32[0] = *(a3 + 42);
  v46 = vmax_u16(*&vmovl_u8(v36), *&vmovl_u8(v35));
  *(this + 42) = vuzp1_s8(v46, v46).u32[0];
  v47 = *(a4 + 25) + v16;
  *(this + 25) = v47;
  if (!a6)
  {
    goto LABEL_64;
  }

  if (*(a6 + 18) < v39 || *(a6 + 40) < v41 || *(a6 + 11) < v43)
  {
    return 0xFFFFFFFFLL;
  }

  v49 = *(a6 + 10);
  v12 = 0xFFFFFFFFLL;
  if (v44 > v49 || v44 + v43 > v49)
  {
    return v12;
  }

  if (v45 + v15 + v46.u8[2] + v46.u8[0] + v46.u8[4] + v47 > *(a6 + 27) + *(a6 + 12) + *(a6 + 26) + *(a6 + 28) + *(a6 + 17) + *(a6 + 43))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_64:
  if (v42)
  {
    v50 = *a4;
    if (v42 < 1)
    {
      v62 = *(a4 + 2);
      v61 = *(a4 + 3);
      v54 = (v61 >> v42) | (v50 >> -v42);
      v63 = *(a4 + 1);
      v56 = (v63 >> -v42) | (v50 >> v42);
      v57 = (v62 >> -v42) | (v63 >> v42);
      v59 = v61 >> -v42;
      v58 = v62 >> v42;
    }

    else
    {
      v52 = *(a4 + 2);
      v51 = *(a4 + 3);
      v53 = ~v42;
      v54 = (v50 << v42) | (v51 >> 1 >> ~v42);
      v55 = *(a4 + 1);
      v56 = (v55 << v42) | (v50 >> 1 >> ~v42);
      v57 = (v52 << v42) | (v55 >> 1 >> ~v42);
      v58 = v51 << v42;
      v59 = v52 >> 1 >> v53;
    }

    v60 = v58 | v59;
  }

  else
  {
    v54 = *a4;
    v56 = *(a4 + 1);
    v57 = *(a4 + 2);
    v60 = *(a4 + 3);
  }

  if (v19)
  {
    v64 = v19 & 7;
    v65 = v54 << (v19 & 7);
    v66 = -v19 & 7;
    v54 = (v65 | (v54 >> v66)) | (((v54 >> 8 << v64) | (BYTE1(v54) >> v66)) << 8) | (((HIWORD(v54) << v64) | (BYTE2(v54) >> v66)) << 16) | (((HIBYTE(v54) << v64) | (HIBYTE(v54) >> v66)) << 24);
    v56 = ((v56 << v64) | (v56 >> v66)) | (((v56 >> 8 << v64) | (BYTE1(v56) >> v66)) << 8) | (((HIWORD(v56) << v64) | (BYTE2(v56) >> v66)) << 16) | (((HIBYTE(v56) << v64) | (HIBYTE(v56) >> v66)) << 24);
    v57 = ((v57 << v64) | (v57 >> v66)) | (((v57 >> 8 << v64) | (BYTE1(v57) >> v66)) << 8) | (((HIWORD(v57) << v64) | (BYTE2(v57) >> v66)) << 16) | (((HIBYTE(v57) << v64) | (HIBYTE(v57) >> v66)) << 24);
    v60 = ((v60 << v64) | (v60 >> v66)) | (((v60 >> 8 << v64) | (BYTE1(v60) >> v66)) << 8) | (((HIWORD(v60) << v64) | (BYTE2(v60) >> v66)) << 16) | (((HIBYTE(v60) << v64) | (HIBYTE(v60) >> v66)) << 24);
  }

  *this = *a3 ^ v54;
  *(this + 1) = *(a3 + 1) ^ v56;
  *(this + 2) = *(a3 + 2) ^ v57;
  *(this + 3) = *(a3 + 3) ^ v60;
  return *(a2 + 3);
}

void std::vector<HGShaderHistory>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
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
  v8 = v7 >> 1;
  if (v7 >> 1 <= -2)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v9 = v3 - v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(2 * v8) = *a2;
  v5 = 2 * v8 + 2;
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

uint64_t HGString::push(HGString *this, HGShaderBinding *a2, const HGString *a3, BOOL a4, int a5, const HGLimits *a6)
{
  HGString::digest(this, v39);
  HGString::digest(a3, v36);
  v35 = 0u;
  memset(v34, 0, sizeof(v34));
  if (!LODWORD(v40[0]))
  {
    *(this + 1) = 0;
  }

  result = HGString::Digest::push(v33, a2, v39, v36, a5, a6);
  if (result != -1)
  {
    v12 = result;
    LOBYTE(v32) = v38;
    HIBYTE(v32) = BYTE8(v35);
    std::vector<HGShaderHistory>::push_back[abi:ne200100](this + 24, &v32);
    if ((v37 & 0xFFFFFu) - 394305 >= 0xFFFFFECF)
    {
      arb::begin(this, v40, v34, v13);
      arb::write(this, a2, v40, 0xFFFFFFFFLL, 0xFFFFFFFF, *a3, 1, 0, v29, v30, *v31, v31[4]);
      arb::end(this, v34, v33, v17, v18, v19);
      return v12;
    }

    if ((v37 & 0xFFFFFu) - 394785 >= 0xFFFFFFEF)
    {
      glsl::begin(this, v40, v34, v13);
      glsl::write(this, a2, 0xFFFFFFFFLL, *a3, 1, 0, v20, v21, v29, v30, *v31, v31[4]);
LABEL_19:
      glsl::end(this, v34, v33, 0, v22, v23, v24);
      return v12;
    }

    if ((v37 & 0xFFFFF) != 0x60B10)
    {
      return 0xFFFFFFFFLL;
    }

    v14 = v34[0];
    v15 = *(this + 1);
    if (v15)
    {
      str_alloc(this, v15);
      if (LODWORD(v40[0]) == v14)
      {
        goto LABEL_18;
      }
    }

    else
    {
      str_alloc(this, 33);
      *(this + 1) = 33;
      if (LODWORD(v40[0]) == v14)
      {
LABEL_18:
        metal::write(this, a2, v34, 0xFFFFFFFFLL, *a3, 1, 0, v16, v29, v30, *v31, v31[4]);
        goto LABEL_19;
      }
    }

    v25 = v14 >> 4;
    v26 = *this;
    *(v26 + 3) = 1818326117;
    *v26 = 1699557167;
    if (v25 | v14 & 0xF)
    {
      *(v26 + 7) = v25 | 0x30;
      *(v26 + 8) = 46;
      v27 = (v26 + 10);
      *(v26 + 9) = v14 & 0xF | 0x30;
    }

    else
    {
      v27 = (v26 + 7);
    }

    v28 = *this;
    memset(v27, 32, *this + 15 - v27);
    qmemcpy((v28 + 15), "\n//LEN=0000000000\n", 18);
    goto LABEL_18;
  }

  return result;
}

void glsl::write(glsl *this, string_t *a2, const HGShaderBinding *a3, const HGLimits *__s1, int a5, const HGLimits *a6, unsigned int a7, const char *a8, BOOL a9, unsigned int a10, int a11, BOOL a12)
{
  v307 = a6;
  v305 = a3;
  v14 = __s1 + 33;
  v13 = *(__s1 + 33);
  v15 = v13 == 35;
  if (v13 == 35)
  {
    if (strncmp(__s1 + 33, "#ifndef GL_ES", 0xDuLL))
    {
      v306 = 0;
LABEL_13:
      v25 = 0;
      v304 = 0;
      v26 = 0;
      v27 = v14;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            --v27;
            do
            {
              v29 = *++v27;
              v28 = v29;
            }

            while ((v29 - 33) > 0xFFFFFFDF);
            v30 = v25;
            if (v28 != 47)
            {
              break;
            }

            while (v27[1] == 47)
            {
              v32 = *(this + 1);
              v31 = *(this + 2);
              v33 = v32 + v27 - v14;
              if (v31)
              {
                if (v33 >= *v31)
                {
                  v40 = (v33 + 255) & 0xFFFFFFFFFFFFFF00;
                  v34 = malloc_type_realloc(*(v31 + 16), v40, 0x100004077774924uLL);
                  v41 = *(this + 2);
                  v41[2] = v34;
                  *v41 = v40;
                  *this = v34;
                }

                else
                {
                  v34 = *this;
                }
              }

              else
              {
                v35 = (v33 + 255) & 0xFFFFFFFFFFFFFF00;
                v36 = malloc_type_malloc(0x18uLL, 0x1010040A79CA2DEuLL);
                v37 = malloc_type_malloc(v35, 0x100004077774924uLL);
                *(v36 + 2) = v37;
                bzero(v37, v35);
                *(v36 + 1) = 1;
                v38 = *(this + 1);
                if (v38)
                {
                  memcpy(*(v36 + 2), *this, v38);
                }

                v39 = *(this + 2);
                if (v39)
                {
                  --*(v39 + 8);
                }

                *v36 = v35;
                *(this + 2) = v36;
                v34 = *(v36 + 2);
                *this = v34;
                v25 = v30;
              }

              *(this + 1) += v27 - v14;
              memcpy(&v34[v32], v14, v27 - v14);
              v42 = *v27;
              if (*v27)
              {
                v43 = v42 == 10;
              }

              else
              {
                v43 = 1;
              }

              if (!v43)
              {
                do
                {
                  v44 = *++v27;
                  v42 = v44;
                  if (v44)
                  {
                    v45 = v42 == 10;
                  }

                  else
                  {
                    v45 = 1;
                  }
                }

                while (!v45);
              }

              if (v42 == 10)
              {
                ++v27;
              }

              v28 = *v27;
              v14 = v27;
              if (v28 != 47)
              {
                goto LABEL_39;
              }
            }

LABEL_96:
            if ((v28 - 48) >= 0xA && (ctype[2 * v28] & 0x40) != 0)
            {
              do
              {
                v74 = *++v27;
              }

              while ((ctype[2 * v74] & 0x40) != 0);
              goto LABEL_359;
            }

LABEL_134:
            if (!*++v27)
            {
              return;
            }
          }

LABEL_39:
          if (!v28)
          {
            return;
          }

          if (v28 != 118)
          {
            break;
          }

          if (!strncmp(v27 + 1, "ec4 main", 8uLL))
          {
            v27 += 9;
            if (a5)
            {
              v50 = *(this + 1);
              v49 = *(this + 2);
              v51 = v50 + v27 - v14;
              if (v49)
              {
                if (v51 >= *v49)
                {
                  v52 = (v51 + 255) & 0xFFFFFFFFFFFFFF00;
                  v53 = malloc_type_realloc(*(v49 + 16), v52, 0x100004077774924uLL);
                  v54 = *(this + 2);
                  v54[2] = v53;
                  *v54 = v52;
                  *this = v53;
                }
              }

              else
              {
                str_alloc(this, v51);
              }

              v83 = *this;
              *(this + 1) += v27 - v14;
              memcpy((v83 + v50), v14, v27 - v14);
              v84 = *(a2 + 3);
              v86 = *(this + 1);
              v85 = *(this + 2);
              v87 = v86 + 20;
              if (v85)
              {
                if (v87 >= *v85)
                {
                  v88 = malloc_type_realloc(*(v85 + 16), (v86 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v89 = *(this + 2);
                  v89[2] = v88;
                  *v89 = (v86 + 275) & 0xFFFFFFFFFFFFFF00;
                  v25 = v30;
                  *this = v88;
                }
              }

              else
              {
                str_alloc(this, v87);
              }

              v90 = (*this + v86);
              v91 = v84;
              goto LABEL_117;
            }

LABEL_359:
            if (!*v27)
            {
              return;
            }
          }

          else
          {
            if (strncmp(v27 + 1, "oid main", 8uLL))
            {
              do
              {
                v46 = *++v27;
              }

              while ((ctype[2 * v46] & 0x40) != 0);
              goto LABEL_359;
            }

            if (a5)
            {
              v57 = *(this + 1);
              v56 = *(this + 2);
              v58 = v57 + v27 - v14;
              if (v56)
              {
                if (v58 >= *v56)
                {
                  v59 = (v58 + 255) & 0xFFFFFFFFFFFFFF00;
                  v60 = malloc_type_realloc(*(v56 + 16), v59, 0x100004077774924uLL);
                  v61 = *(this + 2);
                  v61[2] = v60;
                  *v61 = v59;
                  *this = v60;
                }
              }

              else
              {
                str_alloc(this, v58);
              }

              v101 = *this;
              *(this + 1) += v27 - v14;
              memcpy((v101 + v57), v14, v27 - v14);
              if (v306)
              {
                v103 = *(this + 1);
                v102 = *(this + 2);
                v104 = v103 + 9;
                if (v102)
                {
                  if (v104 >= *v102)
                  {
                    v105 = malloc_type_realloc(*(v102 + 16), (v103 + 264) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                    v106 = *(this + 2);
                    v106[2] = v105;
                    *v106 = (v103 + 264) & 0xFFFFFFFFFFFFFF00;
                    *this = v105;
                  }
                }

                else
                {
                  str_alloc(this, v104);
                }

                v134 = *this;
                *(this + 1) += 9;
                v135 = v134 + v103;
                *v135 = *"defaultp ";
                *(v135 + 8) = 32;
              }

              v137 = *(this + 1);
              v136 = *(this + 2);
              v138 = v137 + 9;
              if (v136)
              {
                if (v138 >= *v136)
                {
                  v139 = malloc_type_realloc(*(v136 + 16), (v137 + 264) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v140 = *(this + 2);
                  v140[2] = v139;
                  *v140 = (v137 + 264) & 0xFFFFFFFFFFFFFF00;
                  *this = v139;
                }
              }

              else
              {
                str_alloc(this, v138);
              }

              v141 = *this;
              *(this + 1) += 9;
              v142 = v141 + v137;
              *v142 = *"vec4 main";
              *(v142 + 8) = 110;
              v143 = *(a2 + 3);
              v145 = *(this + 1);
              v144 = *(this + 2);
              v146 = v145 + 20;
              if (v144)
              {
                if (v146 >= *v144)
                {
                  v147 = malloc_type_realloc(*(v144 + 16), (v145 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v148 = *(this + 2);
                  v148[2] = v147;
                  *v148 = (v145 + 275) & 0xFFFFFFFFFFFFFF00;
                  *this = v147;
                }
              }

              else
              {
                str_alloc(this, v146);
              }

              *(this + 1) += itoa((*this + v145), v143);
              v27 += 9;
              v25 = 1;
              v14 = v27;
              goto LABEL_359;
            }

            v25 = 0xFFFFFFFFLL;
            v64 = v27[9];
            v27 += 9;
            if (!v64)
            {
              return;
            }
          }
        }

        if (v28 != 116 || (a5 & 1) != 0)
        {
          break;
        }

        if (!strncmp(v27 + 1, "exture2DRect(hg_Texture", 0x17uLL))
        {
          v63 = v27 + 24;
          v62 = v27[24];
          if ((v62 - 58) >= 0xFFFFFFF6)
          {
            v26 = 0;
            do
            {
              v26 = v62 + 10 * v26 - 48;
              v81 = *++v63;
              v62 = v81;
            }

            while ((v81 - 58) > 0xFFFFFFF5);
          }

          else
          {
            v63 = 0;
          }

          if (v307)
          {
            v82 = v26;
            if (((v307 >> v26) & 1) == 0 || v26 == -1)
            {
              goto LABEL_124;
            }
          }

          else if (v305 == -1 || v26 < v305 || (v82 = v26 - v305, v26 - v305 == -1))
          {
            do
            {
LABEL_124:
              v97 = *++v27;
            }

            while ((ctype[2 * v97] & 0x40) != 0);
            goto LABEL_359;
          }

          v93 = *(this + 1);
          v92 = *(this + 2);
          v94 = v93 + v27 - v14;
          if (v92)
          {
            if (v94 >= *v92)
            {
              v302 = (v94 + 255) & 0xFFFFFFFFFFFFFF00;
              v95 = malloc_type_realloc(*(v92 + 16), v302, 0x100004077774924uLL);
              v96 = *(this + 2);
              v96[2] = v95;
              *v96 = v302;
              *this = v95;
            }
          }

          else
          {
            str_alloc(this, v94);
          }

          v113 = *this;
          *(this + 1) += v27 - v14;
          memcpy((v113 + v93), v14, v27 - v14);
          v115 = *(this + 1);
          v114 = *(this + 2);
          v116 = v115 + 4;
          if (v114)
          {
            v25 = v30;
            if (v116 >= *v114)
            {
              v117 = malloc_type_realloc(*(v114 + 16), (v115 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v118 = *(this + 2);
              v118[2] = v117;
              *v118 = (v115 + 259) & 0xFFFFFFFFFFFFFF00;
              *this = v117;
            }
          }

          else
          {
            str_alloc(this, v116);
            v25 = v30;
          }

          v119 = *this;
          *(this + 1) += 4;
          *(v119 + v115) = 1852399981;
          v121 = *(this + 1);
          v120 = *(this + 2);
          v122 = v121 + 20;
          if (v120)
          {
            if (v122 >= *v120)
            {
              v123 = malloc_type_realloc(*(v120 + 16), (v121 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v124 = *(this + 2);
              v124[2] = v123;
              *v124 = (v121 + 275) & 0xFFFFFFFFFFFFFF00;
              *this = v123;
            }
          }

          else
          {
            str_alloc(this, v122);
          }

          v125 = itoa((*this + v121), v82);
          v126 = *(this + 2);
          v127 = *(this + 1) + v125;
          *(this + 1) = v127;
          v128 = v127 + 1;
          if (v126)
          {
            if (v128 >= *v126)
            {
              v129 = malloc_type_realloc(*(v126 + 16), (v127 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
              v130 = *(this + 2);
              v130[2] = v129;
              *v130 = (v127 & 0xFFFFFFFFFFFFFF00) + 256;
              *this = v129;
            }
          }

          else
          {
            str_alloc(this, v128);
          }

          v131 = *this;
          ++*(this + 1);
          *(v131 + v127) = 40;
          if (v63)
          {
            v27 = v63;
          }

          v132 = *v27;
          if (*v27)
          {
            do
            {
              if (v132 == 41)
              {
                break;
              }

              v133 = *++v27;
              v132 = v133;
            }

            while (v133);
          }
        }

        else
        {
          if (strncmp(v27 + 1, "exture2D(hg_Texture", 0x13uLL))
          {
            do
            {
              v47 = *++v27;
            }

            while ((ctype[2 * v47] & 0x40) != 0);
            goto LABEL_359;
          }

          v66 = v27 + 20;
          v65 = v27[20];
          if ((v65 - 58) >= 0xFFFFFFF6)
          {
            v26 = 0;
            do
            {
              v26 = v65 + 10 * v26 - 48;
              v98 = *++v66;
              v65 = v98;
            }

            while ((v98 - 58) > 0xFFFFFFF5);
          }

          else
          {
            v66 = 0;
          }

          if (v307)
          {
            v99 = v26;
            if (((v307 >> v26) & 1) == 0 || v26 == -1)
            {
              goto LABEL_147;
            }
          }

          else if (v305 == -1 || v26 < v305 || (v99 = v26 - v305, v26 - v305 == -1))
          {
            do
            {
LABEL_147:
              v112 = *++v27;
            }

            while ((ctype[2 * v112] & 0x40) != 0);
            goto LABEL_359;
          }

          v108 = *(this + 1);
          v107 = *(this + 2);
          v109 = v108 + v27 - v14;
          if (v107)
          {
            if (v109 >= *v107)
            {
              v303 = (v109 + 255) & 0xFFFFFFFFFFFFFF00;
              v110 = malloc_type_realloc(*(v107 + 16), v303, 0x100004077774924uLL);
              v111 = *(this + 2);
              v111[2] = v110;
              *v111 = v303;
              *this = v110;
            }
          }

          else
          {
            str_alloc(this, v109);
          }

          v158 = *this;
          *(this + 1) += v27 - v14;
          memcpy((v158 + v108), v14, v27 - v14);
          v160 = *(this + 1);
          v159 = *(this + 2);
          v161 = v160 + 4;
          if (v159)
          {
            v25 = v30;
            if (v161 >= *v159)
            {
              v162 = malloc_type_realloc(*(v159 + 16), (v160 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v163 = *(this + 2);
              v163[2] = v162;
              *v163 = (v160 + 259) & 0xFFFFFFFFFFFFFF00;
              *this = v162;
            }
          }

          else
          {
            str_alloc(this, v161);
            v25 = v30;
          }

          v164 = *this;
          *(this + 1) += 4;
          *(v164 + v160) = 1852399981;
          v166 = *(this + 1);
          v165 = *(this + 2);
          v167 = v166 + 20;
          if (v165)
          {
            if (v167 >= *v165)
            {
              v168 = malloc_type_realloc(*(v165 + 16), (v166 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v169 = *(this + 2);
              v169[2] = v168;
              *v169 = (v166 + 275) & 0xFFFFFFFFFFFFFF00;
              *this = v168;
            }
          }

          else
          {
            str_alloc(this, v167);
          }

          v170 = itoa((*this + v166), v99);
          v171 = *(this + 2);
          v172 = *(this + 1) + v170;
          *(this + 1) = v172;
          v173 = v172 + 1;
          if (v171)
          {
            if (v173 >= *v171)
            {
              v174 = malloc_type_realloc(*(v171 + 16), (v172 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
              v175 = *(this + 2);
              v175[2] = v174;
              *v175 = (v172 & 0xFFFFFFFFFFFFFF00) + 256;
              *this = v174;
            }
          }

          else
          {
            str_alloc(this, v173);
          }

          v176 = *this;
          ++*(this + 1);
          *(v176 + v172) = 40;
          if (v66)
          {
            v27 = v66;
          }

          v132 = *v27;
          if (*v27)
          {
            do
            {
              if (v132 == 41)
              {
                break;
              }

              v177 = *++v27;
              v132 = v177;
            }

            while (v177);
          }
        }

        v14 = v27;
        if (!v132)
        {
          return;
        }
      }

      if (v28 > 122)
      {
        if (v28 == 123)
        {
          if (!v304 && v25 == 1)
          {
            ++v27;
            v76 = *(this + 1);
            v75 = *(this + 2);
            v77 = v76 + v27 - v14;
            if (v75)
            {
              if (v77 >= *v75)
              {
                v78 = (v77 + 255) & 0xFFFFFFFFFFFFFF00;
                v79 = malloc_type_realloc(*(v75 + 16), v78, 0x100004077774924uLL);
                v80 = *(this + 2);
                v80[2] = v79;
                *v80 = v78;
                *this = v79;
              }
            }

            else
            {
              str_alloc(this, v77);
            }

            v149 = *this;
            *(this + 1) += v27 - v14;
            memcpy((v149 + v76), v14, v27 - v14);
            v151 = *(this + 1);
            v150 = *(this + 2);
            if (v306)
            {
              v152 = v151 + 32;
              if (v150)
              {
                if (v152 >= *v150)
                {
                  v153 = malloc_type_realloc(*(v150 + 16), (v151 + 287) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v154 = *(this + 2);
                  v154[2] = v153;
                  *v154 = (v151 + 287) & 0xFFFFFFFFFFFFFF00;
                  *this = v153;
                }
              }

              else
              {
                str_alloc(this, v152);
              }

              v192 = *this;
              *(this + 1) += 32;
              qmemcpy((v192 + v151), "\n    defaultp vec4 hg_FragColor;", 32);
            }

            else
            {
              v155 = v151 + 23;
              if (v150)
              {
                if (v155 >= *v150)
                {
                  v156 = malloc_type_realloc(*(v150 + 16), (v151 + 278) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v157 = *(this + 2);
                  v157[2] = v156;
                  *v157 = (v151 + 278) & 0xFFFFFFFFFFFFFF00;
                  *this = v156;
                }
              }

              else
              {
                str_alloc(this, v155);
              }

              v193 = *this;
              *(this + 1) += 23;
              qmemcpy((v193 + v151), "\n    vec4 hg_FragColor;", 23);
            }

            v304 = 1;
            v14 = v27;
            v25 = 1;
            goto LABEL_359;
          }

          v55 = v304 + 1;
          goto LABEL_133;
        }

        if (v28 == 125)
        {
          v55 = v304 - 1;
          if (v304 == 1)
          {
            if (v25 == -1)
            {
              v301 = str_ext(this, v27 - v14, v27 - v14);
              memcpy(v301, v14, v27 - v14);
              *str_ext(this, 2, 2) = 2685;
              return;
            }

            if (v25 == 1)
            {
              v300 = str_ext(this, v27 - v14, v27 - v14);
              memcpy(v300, v14, v27 - v14);
              qmemcpy(str_ext(this, 27, 27), "    return hg_FragColor;\n}\n", 27);
              return;
            }
          }

LABEL_133:
          v304 = v55;
          goto LABEL_134;
        }

LABEL_81:
        if (v28 != 109 || !a5 || v27[1] != 97 || v27[2] != 105 || v27[3] != 110)
        {
          goto LABEL_96;
        }

        v27 += 4;
        v68 = *(this + 1);
        v67 = *(this + 2);
        v69 = v68 + v27 - v14;
        if (v67)
        {
          if (v69 >= *v67)
          {
            v70 = (v69 + 255) & 0xFFFFFFFFFFFFFF00;
            v71 = malloc_type_realloc(*(v67 + 16), v70, 0x100004077774924uLL);
            v72 = *(this + 2);
            v72[2] = v71;
            *v72 = v70;
            *this = v71;
          }
        }

        else
        {
          str_alloc(this, v69);
        }

        v221 = *this;
        *(this + 1) += v27 - v14;
        memcpy((v221 + v68), v14, v27 - v14);
        v222 = *(a2 + 3);
        v224 = *(this + 1);
        v223 = *(this + 2);
        v225 = v224 + 20;
        if (v223)
        {
          if (v225 >= *v223)
          {
            v226 = malloc_type_realloc(*(v223 + 16), (v224 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v227 = *(this + 2);
            v227[2] = v226;
            *v227 = (v224 + 275) & 0xFFFFFFFFFFFFFF00;
            *this = v226;
          }
        }

        else
        {
          str_alloc(this, v225);
        }

        *(this + 1) += itoa((*this + v224), v222);
        goto LABEL_358;
      }

      if (v28 == 103)
      {
        if (v27[1] != 108 || v27[2] != 95)
        {
          goto LABEL_96;
        }

        if (strncmp(v27 + 3, "TexCoord[", 9uLL))
        {
          if ((a5 & 1) != 0 && !strncmp(v27 + 3, "FragColor", 9uLL))
          {
            v216 = *(this + 1);
            v215 = *(this + 2);
            v217 = v216 + v27 - v14;
            if (v215)
            {
              if (v217 >= *v215)
              {
                v218 = (v217 + 255) & 0xFFFFFFFFFFFFFF00;
                v219 = malloc_type_realloc(*(v215 + 16), v218, 0x100004077774924uLL);
                v220 = *(this + 2);
                v220[2] = v219;
                *v220 = v218;
                *this = v219;
              }
            }

            else
            {
              str_alloc(this, v217);
            }

            v279 = *this;
            *(this + 1) += v27 - v14;
            memcpy((v279 + v216), v14, v27 - v14);
            v281 = *(this + 1);
            v280 = *(this + 2);
            v282 = v281 + 12;
            if (v280)
            {
              v25 = v30;
              if (v282 >= *v280)
              {
                v283 = malloc_type_realloc(*(v280 + 16), (v281 + 267) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v284 = *(this + 2);
                v284[2] = v283;
                *v284 = (v281 + 267) & 0xFFFFFFFFFFFFFF00;
                *this = v283;
              }
            }

            else
            {
              str_alloc(this, v282);
              v25 = v30;
            }

            v285 = *this;
            *(this + 1) += 12;
            v286 = v285 + v281;
            *v286 = *"hg_FragColor";
            *(v286 + 8) = 1919904879;
            v27 += 12;
            v14 = v27;
          }

          else
          {
            do
            {
              v73 = *++v27;
            }

            while ((ctype[2 * v73] & 0x40) != 0);
          }

          goto LABEL_359;
        }

        v185 = v27 + 11 - v14;
        v187 = *(this + 1);
        v186 = *(this + 2);
        v188 = v187 + v185;
        if (v186)
        {
          if (v188 >= *v186)
          {
            v189 = (v188 + 255) & 0xFFFFFFFFFFFFFF00;
            v190 = malloc_type_realloc(*(v186 + 16), v189, 0x100004077774924uLL);
            v191 = *(this + 2);
            v191[2] = v190;
            *v191 = v189;
            *this = v190;
          }
        }

        else
        {
          str_alloc(this, v188);
        }

        v209 = *this;
        *(this + 1) += v185;
        memcpy((v209 + v187), v14, v27 + 11 - v14);
        v210 = v27[11];
        if ((v210 - 58) >= 0xFFFFFFF6)
        {
          v26 = 0;
          v211 = v27 + 11;
          do
          {
            v26 = v210 + 10 * v26 - 48;
            v212 = *++v211;
            v210 = v212;
          }

          while ((v212 - 58) > 0xFFFFFFF5);
        }

        else
        {
          v26 = 0;
          v211 = 0;
        }

        if (v211)
        {
          v27 = v211;
        }

        else
        {
          v27 += 11;
        }

        v213 = *(a2 + 2);
        goto LABEL_292;
      }

      if (v28 != 104)
      {
        goto LABEL_81;
      }

      if (v27[1] != 103 || v27[2] != 95)
      {
        goto LABEL_96;
      }

      if (!strncmp(v27 + 3, "Texture", 7uLL))
      {
        v178 = v27 + 10;
        if (!a5)
        {
          v200 = *v178;
          if ((v200 - 58) >= 0xFFFFFFF6)
          {
            v26 = 0;
            v201 = v27 + 10;
            do
            {
              v26 = v200 + 10 * v26 - 48;
              v228 = *++v201;
              v200 = v228;
            }

            while ((v228 - 58) > 0xFFFFFFF5);
          }

          else
          {
            v26 = 0;
            v201 = 0;
          }

          if (v307)
          {
            v229 = v26;
            if (((v307 >> v26) & 1) == 0)
            {
LABEL_275:
              v243 = *(this + 1);
              v242 = *(this + 2);
              v244 = v243 + v178 - v14;
              if (v242)
              {
                if (v244 >= *v242)
                {
                  v245 = (v244 + 255) & 0xFFFFFFFFFFFFFF00;
                  v246 = malloc_type_realloc(*(v242 + 16), v245, 0x100004077774924uLL);
                  v247 = *(this + 2);
                  v247[2] = v246;
                  *v247 = v245;
                  *this = v246;
                }
              }

              else
              {
                str_alloc(this, v244);
              }

              v257 = *this;
              *(this + 1) += v178 - v14;
              memcpy((v257 + v243), v14, v178 - v14);
              v258 = *(a2 + 6);
              goto LABEL_336;
            }
          }

          else
          {
            if (v305 == -1)
            {
              goto LABEL_275;
            }

            v229 = v26 - v305;
            if (v26 < v305)
            {
              goto LABEL_275;
            }
          }

          if (v229 != -1)
          {
            if (v201)
            {
              v234 = v201;
            }

            else
            {
              v234 = v27;
            }

            v235 = v234 - v14;
            for (i = v234; *i != 117 || strncmp(i, "uniform", 7uLL); --i)
            {
              --v235;
            }

            v238 = *(this + 1);
            v237 = *(this + 2);
            v239 = v238 + v235;
            if (v237)
            {
              if (v239 >= *v237)
              {
                v240 = malloc_type_realloc(*(v237 + 16), (v238 + v235 + 255) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v241 = *(this + 2);
                v241[2] = v240;
                *v241 = (v238 + v235 + 255) & 0xFFFFFFFFFFFFFF00;
                *this = v240;
              }
            }

            else
            {
              str_alloc(this, v239);
            }

            v293 = *this;
            *(this + 1) += v235;
            memcpy((v293 + v238), v14, v235);
            v294 = *v234;
            if (*v234)
            {
              do
              {
                if (v294 == 59)
                {
                  break;
                }

                v295 = *++v234;
                v294 = v295;
              }

              while (v295);
            }

            goto LABEL_352;
          }

          goto LABEL_275;
        }

        v180 = *(this + 1);
        v179 = *(this + 2);
        v181 = v180 + v178 - v14;
        if (v179)
        {
          if (v181 >= *v179)
          {
            v182 = (v181 + 255) & 0xFFFFFFFFFFFFFF00;
            v183 = malloc_type_realloc(*(v179 + 16), v182, 0x100004077774924uLL);
            v184 = *(this + 2);
            v184[2] = v183;
            *v184 = v182;
            *this = v183;
          }
        }

        else
        {
          str_alloc(this, v181);
        }

        v230 = *this;
        *(this + 1) += v178 - v14;
        memcpy((v230 + v180), v14, v178 - v14);
        v231 = *v178;
        if ((v231 - 58) >= 0xFFFFFFF6)
        {
          v26 = 0;
          v232 = v27 + 10;
          v25 = v30;
          do
          {
            v26 = v231 + 10 * v26 - 48;
            v233 = *++v232;
            v231 = v233;
          }

          while ((v233 - 58) > 0xFFFFFFF5);
        }

        else
        {
          v26 = 0;
          v232 = 0;
          v25 = v30;
        }

        if (v232)
        {
          v27 = v232;
        }

        else
        {
          v27 += 10;
        }

        v213 = *(a2 + 6);
      }

      else
      {
        if (strncmp(v27 + 3, "TexCoord", 8uLL))
        {
          if (strncmp(v27 + 3, "ProgramLocal", 0xCuLL))
          {
            do
            {
              v48 = *++v27;
            }

            while ((ctype[2 * v48] & 0x40) != 0);
            goto LABEL_359;
          }

          v202 = v27 + 15 - v14;
          v204 = *(this + 1);
          v203 = *(this + 2);
          v205 = v204 + v202;
          if (v203)
          {
            if (v205 >= *v203)
            {
              v206 = (v205 + 255) & 0xFFFFFFFFFFFFFF00;
              v207 = malloc_type_realloc(*(v203 + 16), v206, 0x100004077774924uLL);
              v208 = *(this + 2);
              v208[2] = v207;
              *v208 = v206;
              *this = v207;
            }
          }

          else
          {
            str_alloc(this, v205);
          }

          v250 = *this;
          *(this + 1) += v202;
          memcpy((v250 + v204), v14, v27 + 15 - v14);
          v251 = v27[15];
          if ((v251 - 58) >= 0xFFFFFFF6)
          {
            v26 = 0;
            v252 = v27 + 15;
            do
            {
              v26 = v251 + 10 * v26 - 48;
              v253 = *++v252;
              v251 = v253;
            }

            while ((v253 - 58) > 0xFFFFFFF5);
          }

          else
          {
            v26 = 0;
            v252 = 0;
          }

          if (v252)
          {
            v27 = v252;
          }

          else
          {
            v27 += 15;
          }

          v213 = *(a2 + 4);
LABEL_292:
          v255 = *(this + 1);
          v254 = *(this + 2);
          v256 = v255 + 20;
          if (!v254)
          {
            str_alloc(this, v256);
            v25 = v30;
            goto LABEL_311;
          }

          v25 = v30;
          if (v256 < *v254)
          {
LABEL_311:
            v90 = (*this + v255);
            v91 = v213 + v26;
LABEL_117:
            *(this + 1) += itoa(v90, v91);
            v14 = v27;
            goto LABEL_359;
          }

LABEL_309:
          v264 = malloc_type_realloc(*(v254 + 16), (v255 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v265 = *(this + 2);
          v265[2] = v264;
          *v265 = (v255 + 275) & 0xFFFFFFFFFFFFFF00;
          *this = v264;
          goto LABEL_311;
        }

        v178 = v27 + 11;
        if (!a5)
        {
          v214 = *v178;
          if ((v214 - 58) >= 0xFFFFFFF6)
          {
            v26 = 0;
            v201 = v27 + 11;
            do
            {
              v26 = v214 + 10 * v26 - 48;
              v248 = *++v201;
              v214 = v248;
            }

            while ((v248 - 58) > 0xFFFFFFF5);
          }

          else
          {
            v26 = 0;
            v201 = 0;
          }

          if (v307)
          {
            v249 = v26;
            if (((v307 >> v26) & 1) == 0)
            {
              goto LABEL_325;
            }

LABEL_314:
            if (v249 == -1)
            {
              goto LABEL_325;
            }

            if (v201)
            {
              v234 = v201;
            }

            else
            {
              v234 = v27;
            }

            v266 = v234 - v14;
            for (j = v234; *j != 118 || strncmp(j, "varying", 7uLL); --j)
            {
              --v266;
            }

            v269 = *(this + 1);
            v268 = *(this + 2);
            v270 = v269 + v266;
            if (v268)
            {
              if (v270 >= *v268)
              {
                v271 = malloc_type_realloc(*(v268 + 16), (v269 + v266 + 255) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v272 = *(this + 2);
                v272[2] = v271;
                *v272 = (v269 + v266 + 255) & 0xFFFFFFFFFFFFFF00;
                *this = v271;
              }
            }

            else
            {
              str_alloc(this, v270);
            }

            v296 = *this;
            *(this + 1) += v266;
            memcpy((v296 + v269), v14, v266);
            v294 = *v234;
            if (*v234)
            {
              do
              {
                if (v294 == 59)
                {
                  break;
                }

                v297 = *++v234;
                v294 = v297;
              }

              while (v297);
            }

LABEL_352:
            v43 = v294 == 59;
            v298 = v294 == 59;
            if (v43)
            {
              v299 = v234 + 1;
            }

            else
            {
              v299 = v234;
            }

            if (*v299 == 10)
            {
              ++v298;
            }

            v27 = &v234[v298];
LABEL_358:
            v14 = v27;
            v25 = v30;
            goto LABEL_359;
          }

          if (v305 != -1)
          {
            v249 = v26 - v305;
            if (v26 >= v305)
            {
              goto LABEL_314;
            }
          }

LABEL_325:
          v274 = *(this + 1);
          v273 = *(this + 2);
          v275 = v274 + v178 - v14;
          if (v273)
          {
            if (v275 >= *v273)
            {
              v276 = (v275 + 255) & 0xFFFFFFFFFFFFFF00;
              v277 = malloc_type_realloc(*(v273 + 16), v276, 0x100004077774924uLL);
              v278 = *(this + 2);
              v278[2] = v277;
              *v278 = v276;
              *this = v277;
            }
          }

          else
          {
            str_alloc(this, v275);
          }

          v287 = *this;
          *(this + 1) += v178 - v14;
          memcpy((v287 + v274), v14, v178 - v14);
          v258 = *(a2 + 2);
LABEL_336:
          v289 = *(this + 1);
          v288 = *(this + 2);
          v290 = v289 + 20;
          if (v288)
          {
            if (v290 >= *v288)
            {
              v291 = malloc_type_realloc(*(v288 + 16), (v289 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v292 = *(this + 2);
              v292[2] = v291;
              *v292 = (v289 + 275) & 0xFFFFFFFFFFFFFF00;
              *this = v291;
            }
          }

          else
          {
            str_alloc(this, v290);
          }

          *(this + 1) += itoa((*this + v289), v258 + v26);
          if (v201)
          {
            v27 = v201;
          }

          else
          {
            v27 = v178;
          }

          goto LABEL_358;
        }

        v195 = *(this + 1);
        v194 = *(this + 2);
        v196 = v195 + v178 - v14;
        if (v194)
        {
          if (v196 >= *v194)
          {
            v197 = (v196 + 255) & 0xFFFFFFFFFFFFFF00;
            v198 = malloc_type_realloc(*(v194 + 16), v197, 0x100004077774924uLL);
            v199 = *(this + 2);
            v199[2] = v198;
            *v199 = v197;
            *this = v198;
          }
        }

        else
        {
          str_alloc(this, v196);
        }

        v259 = *this;
        *(this + 1) += v178 - v14;
        memcpy((v259 + v195), v14, v178 - v14);
        v260 = *v178;
        if ((v260 - 58) >= 0xFFFFFFF6)
        {
          v26 = 0;
          v261 = v27 + 11;
          v25 = v30;
          do
          {
            v26 = v260 + 10 * v26 - 48;
            v262 = *++v261;
            v260 = v262;
          }

          while ((v262 - 58) > 0xFFFFFFF5);
        }

        else
        {
          v26 = 0;
          v261 = 0;
          v25 = v30;
        }

        if (v261)
        {
          v27 = v261;
        }

        else
        {
          v27 += 11;
        }

        v213 = *(a2 + 2);
      }

      v255 = *(this + 1);
      v254 = *(this + 2);
      v263 = v255 + 20;
      if (!v254)
      {
        str_alloc(this, v263);
        goto LABEL_311;
      }

      if (v263 < *v254)
      {
        goto LABEL_311;
      }

      goto LABEL_309;
    }

    v306 = v15;
    if (*(this + 1) == 33)
    {
      v17 = *(this + 2);
      if (v17)
      {
        if (*v17 <= 0x7AuLL)
        {
          v18 = malloc_type_realloc(*(v17 + 16), 0x100uLL, 0x100004077774924uLL);
          v19 = *(this + 2);
          v19[2] = v18;
          *v19 = 256;
          *this = v18;
        }
      }

      else
      {
        str_alloc(this, 122);
      }

      v20 = *this;
      *(this + 1) += 89;
      v21 = *(v14 + 1);
      *(v20 + 33) = *v14;
      v22 = *(v14 + 2);
      v23 = *(v14 + 3);
      v24 = *(v14 + 4);
      *(v20 + 106) = *(v14 + 73);
      *(v20 + 97) = v24;
      *(v20 + 81) = v23;
      *(v20 + 65) = v22;
      *(v20 + 49) = v21;
    }

    v14 = __s1 + 122;
    if (*(__s1 + 122))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v306 = 0;
    if (*(__s1 + 33))
    {
      goto LABEL_13;
    }
  }
}

void metal::write(metal *this, string_t *a2, const HGShaderBinding *a3, const HGLimits *a4, uint64_t a5, const HGLimits *a6, unsigned int a7, const char *a8, BOOL a9, unsigned int a10, int a11, BOOL a12)
{
  v456 = a6;
  v457 = 0;
  v12 = a5;
  v452 = a4;
  if (!strncmp((a5 + 16), "//LEN=", 6uLL))
  {
    atox(v12 + 22, &v457);
    if (v457 >= 0x22)
    {
      v14 = 0;
      v455 = &v12[v457];
      v15 = v12 + 33;
      while (1)
      {
        v19 = 0;
        v20 = v15 + 1;
        do
        {
          v21 = v20;
          v22 = v15[v19++];
          ++v20;
        }

        while ((v22 - 33) > 0xFFFFFFDF);
        v18 = &v15[v19];
        v23 = &v15[v19 - 1];
        if (v22 != 47 || *v18 != 47)
        {
          break;
        }

        v24 = v15 - v12;
        v25 = v15 - v12 + v19 - 1;
        v27 = *(this + 1);
        v26 = *(this + 2);
        v28 = v25 + v27;
        if (v26)
        {
          if (v28 >= *v26)
          {
            v29 = malloc_type_realloc(*(v26 + 16), (v27 + v24 + v19 + 254) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v30 = *(this + 2);
            v30[2] = v29;
            *v30 = (v27 + v24 + v19 + 254) & 0xFFFFFFFFFFFFFF00;
            *this = v29;
          }
        }

        else
        {
          str_alloc(this, v28);
        }

        v54 = *this;
        *(this + 1) = *(this + 1) + v24 + v19 - 1;
        memcpy((v54 + v27), v12, v25);
        v55 = *v23;
        if (*v23)
        {
          v56 = v55 == 10;
        }

        else
        {
          v56 = 1;
        }

        if (!v56)
        {
          do
          {
            v57 = *++v23;
            v55 = v57;
            if (v57)
            {
              v58 = v55 == 10;
            }

            else
            {
              v58 = 1;
            }
          }

          while (!v58);
        }

        if (v55 == 10)
        {
          v12 = v23 + 1;
        }

        else
        {
          v12 = v23;
        }

LABEL_6:
        v18 = v12;
LABEL_7:
        v15 = v18;
        if (v18 >= v455)
        {
          return;
        }
      }

      if (!strncmp(&v15[v19 - 1], "[[ visible ]]", 0xDuLL))
      {
        v37 = v15 - v12;
        v38 = v15 - v12 + v19 - 1;
        v40 = *(this + 1);
        v39 = *(this + 2);
        v41 = v38 + v40;
        if (v39)
        {
          if (v41 >= *v39)
          {
            v42 = malloc_type_realloc(*(v39 + 16), (v40 + v37 + v19 + 254) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v43 = *(this + 2);
            v43[2] = v42;
            *v43 = (v40 + v37 + v19 + 254) & 0xFFFFFFFFFFFFFF00;
            *this = v42;
          }
        }

        else
        {
          str_alloc(this, v41);
        }

        v47 = *this;
        *(this + 1) = *(this + 1) + v37 + v19 - 1;
        memcpy((v47 + v40), v12, v38);
        v48 = &v15[v19 - 1];
        v49 = *v23;
        if (*v23)
        {
          do
          {
            if (v49 == 41)
            {
              break;
            }

            ++v21;
            v50 = *++v48;
            v49 = v50;
          }

          while (v50);
        }

        v56 = v49 == 41;
        v51 = v49 == 41;
        if (v56)
        {
          v18 = (v48 + 1);
        }

        else
        {
          v18 = v48;
        }

        v52 = *v18;
        if (v52 != 59)
        {
          do
          {
            do
            {
              v53 = v52;
              v52 = v21[v51++];
            }

            while (v53 != 125);
          }

          while (v52 != 10);
          v18 = &v21[v51 - 2];
        }

        v12 = &v15[v19 - 1];
        goto LABEL_7;
      }

      if (v456)
      {
        if (!strncmp(&v15[v19 - 1], "fragment ", 9uLL))
        {
          v60 = v15 - v12;
          v62 = *(this + 1);
          v61 = *(this + 2);
          v63 = v15 - v12 + v19 - 1 + v62;
          if (v61)
          {
            if (v63 >= *v61)
            {
              v64 = malloc_type_realloc(*(v61 + 16), (v62 + v60 + v19 + 254) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v65 = *(this + 2);
              v65[2] = v64;
              *v65 = (v62 + v60 + v19 + 254) & 0xFFFFFFFFFFFFFF00;
              *this = v64;
            }
          }

          else
          {
            str_alloc(this, v63);
          }

          v84 = *this;
          *(this + 1) = *(this + 1) + v60 + v19 - 1;
          memcpy((v84 + v62), v12, v15 - v12 + v19 - 1);
          v86 = *(this + 1);
          v85 = *(this + 2);
          v87 = v86 + 7;
          if (v85)
          {
            if (v87 >= *v85)
            {
              v88 = malloc_type_realloc(*(v85 + 16), (v86 + 262) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v89 = *(this + 2);
              v89[2] = v88;
              *v89 = (v86 + 262) & 0xFFFFFFFFFFFFFF00;
              *this = v88;
            }
          }

          else
          {
            str_alloc(this, v87);
          }

          v12 = &v15[v19 + 8];
          v16 = *this;
          *(this + 1) += 7;
          v17 = (v16 + v86);
          *(v17 + 3) = 543385972;
          *v17 = 1952543859;
          goto LABEL_6;
        }

        if (strncmp(&v15[v19 - 1], "fragmentFunc", 0xCuLL))
        {
LABEL_26:
          v44 = &v15[v19];
          v45 = &v15[v19 + 9];
          if (strncmp(&v15[v19 - 1], "hg_Texture", 0xAuLL))
          {
            if (strncmp(&v15[v19 - 1], "hg_Sampler", 0xAuLL))
            {
              if (!strncmp(&v15[v19 - 1], "hg_Params[", 0xAuLL))
              {
                v69 = v15 - v12;
                v70 = v15 - v12 + v19 + 9;
                v72 = *(this + 1);
                v71 = *(this + 2);
                v73 = v70 + v72;
                if (v71)
                {
                  if (v73 >= *v71)
                  {
                    v74 = malloc_type_realloc(*(v71 + 16), (v72 + v69 + v19 + 264) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                    v75 = *(this + 2);
                    v75[2] = v74;
                    *v75 = (v72 + v69 + v19 + 264) & 0xFFFFFFFFFFFFFF00;
                    *this = v74;
                  }
                }

                else
                {
                  str_alloc(this, v73);
                }

                v315 = *this;
                *(this + 1) += v69 + v19 + 9;
                memcpy((v315 + v72), v12, v70);
                v316 = v44[9];
                v12 = &v15[v19 + 9];
                if ((v316 - 58) >= 0xFFFFFFF6)
                {
                  v317 = 0;
                  v12 = &v15[v19 + 9];
                  do
                  {
                    v317 = v316 + 10 * v317 - 48;
                    v318 = *++v12;
                    v316 = v318;
                  }

                  while ((v318 - 58) > 0xFFFFFFF5);
                  v319 = *(a2 + 4);
LABEL_398:
                  v14 = v319 + v317;
                }
              }

              else
              {
                if (strncmp(&v15[v19 - 1], "_texCoord", 9uLL))
                {
                  if ((v22 - 48) < 0xA || (ctype[2 * v22] & 0x40) == 0)
                  {
                    goto LABEL_7;
                  }

                  do
                  {
                    v46 = *++v23;
                  }

                  while ((ctype[2 * v46] & 0x40) != 0);
                  goto LABEL_110;
                }

                v110 = v15 - v12;
                v111 = v15 - v12 + v19 + 8;
                v113 = *(this + 1);
                v112 = *(this + 2);
                v114 = v111 + v113;
                if (v112)
                {
                  if (v114 >= *v112)
                  {
                    v115 = malloc_type_realloc(*(v112 + 16), (v113 + v110 + v19 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                    v116 = *(this + 2);
                    v116[2] = v115;
                    *v116 = (v113 + v110 + v19 + 263) & 0xFFFFFFFFFFFFFF00;
                    *this = v115;
                  }
                }

                else
                {
                  str_alloc(this, v114);
                }

                v438 = &v15[v19];
                v439 = &v15[v19 + 8];
                v440 = *this;
                *(this + 1) += v110 + v19 + 8;
                memcpy((v440 + v113), v12, v111);
                v441 = v438[8];
                v12 = v439;
                if ((v441 - 58) >= 0xFFFFFFF6)
                {
                  v317 = 0;
                  v12 = v439;
                  do
                  {
                    v317 = v441 + 10 * v317 - 48;
                    v442 = *++v12;
                    v441 = v442;
                  }

                  while ((v442 - 58) > 0xFFFFFFF5);
                  v319 = *(a2 + 2);
                  goto LABEL_398;
                }
              }

              v444 = *(this + 1);
              v443 = *(this + 2);
              v445 = v444 + 20;
              if (v443)
              {
                if (v445 >= *v443)
                {
                  v446 = malloc_type_realloc(*(v443 + 16), (v444 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v447 = *(this + 2);
                  v447[2] = v446;
                  *v447 = (v444 + 275) & 0xFFFFFFFFFFFFFF00;
                  *this = v446;
                }
              }

              else
              {
                str_alloc(this, v445);
              }

              *(this + 1) += itoa((*this + v444), v14);
              goto LABEL_6;
            }

            v66 = v44[9];
            if ((v66 - 58) >= 0xFFFFFFF6)
            {
              v14 = 0;
              do
              {
                v14 = v66 + 10 * v14 - 48;
                v97 = *++v45;
                v66 = v97;
              }

              while ((v97 - 58) > 0xFFFFFFF5);
            }

            else
            {
              v45 = 0;
            }

            v98 = v14 - v452;
            if (v14 < v452 || v452 == -1)
            {
              v98 = -1;
            }

            if ((a7 >> v14))
            {
              v100 = v14;
            }

            else
            {
              v100 = -1;
            }

            if (a7)
            {
              v98 = v100;
            }

            if (v98 == -1 && v456 == 0)
            {
              v450 = *(a2 + 6);
              v103 = v15 - v12;
              v104 = v15 - v12 + v19 - 1;
              v106 = *(this + 1);
              v105 = *(this + 2);
              v107 = v104 + v106;
              if (v105)
              {
                if (v107 >= *v105)
                {
                  v108 = malloc_type_realloc(*(v105 + 16), (v106 + v103 + v19 + 254) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v109 = *(this + 2);
                  v109[2] = v108;
                  *v109 = (v106 + v103 + v19 + 254) & 0xFFFFFFFFFFFFFF00;
                  *this = v108;
                }
              }

              else
              {
                str_alloc(this, v107);
              }

              v378 = *this;
              *(this + 1) = *(this + 1) + v103 + v19 - 1;
              memcpy((v378 + v106), v12, v104);
              v380 = *(this + 1);
              v379 = *(this + 2);
              v381 = v380 + 10;
              if (v379)
              {
                if (v381 >= *v379)
                {
                  v382 = malloc_type_realloc(*(v379 + 16), (v380 + 265) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v383 = *(this + 2);
                  v383[2] = v382;
                  *v383 = (v380 + 265) & 0xFFFFFFFFFFFFFF00;
                  *this = v382;
                }
              }

              else
              {
                str_alloc(this, v381);
              }

              v384 = *this;
              *(this + 1) += 10;
              v385 = v384 + v380;
              *v385 = *"hg_Sampler";
              *(v385 + 8) = 29285;
              v387 = *(this + 1);
              v386 = *(this + 2);
              v388 = v387 + 20;
              if (v386)
              {
                if (v388 >= *v386)
                {
                  v389 = malloc_type_realloc(*(v386 + 16), (v387 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v390 = *(this + 2);
                  v390[2] = v389;
                  *v390 = (v387 + 275) & 0xFFFFFFFFFFFFFF00;
                  *this = v389;
                }
              }

              else
              {
                str_alloc(this, v388);
              }

              *(this + 1) += itoa((*this + v387), v450 + v14);
              if (v45)
              {
                v12 = v45;
              }

              else
              {
                v12 = &v15[v19 - 1];
              }

              v18 = v12;
              do
              {
                v391 = *++v18;
              }

              while ((ctype[2 * v391] & 0x40) != 0);
              goto LABEL_7;
            }

            do
            {
              v102 = *++v23;
            }

            while ((ctype[2 * v102] & 0x40) != 0);
LABEL_110:
            v18 = v23;
            goto LABEL_7;
          }

          v59 = v44[9];
          if ((v59 - 58) >= 0xFFFFFFF6)
          {
            v14 = 0;
            do
            {
              v14 = v59 + 10 * v14 - 48;
              v67 = *++v45;
              v59 = v67;
            }

            while ((v67 - 58) > 0xFFFFFFF5);
          }

          else
          {
            v45 = 0;
          }

          if (a7)
          {
            v68 = v14;
            if (((a7 >> v14) & 1) == 0)
            {
              goto LABEL_82;
            }
          }

          else if (v452 == -1 || (v68 = v14 - v452, v14 < v452))
          {
LABEL_82:
            if (!v456)
            {
              v449 = *(a2 + 6);
              v90 = v15 - v12;
              v91 = v15 - v12 + v19 - 1;
              v93 = *(this + 1);
              v92 = *(this + 2);
              v94 = v91 + v93;
              if (v92)
              {
                if (v94 >= *v92)
                {
                  v95 = malloc_type_realloc(*(v92 + 16), (v93 + v90 + v19 + 254) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v96 = *(this + 2);
                  v96[2] = v95;
                  *v96 = (v93 + v90 + v19 + 254) & 0xFFFFFFFFFFFFFF00;
                  *this = v95;
                }
              }

              else
              {
                str_alloc(this, v94);
              }

              v364 = *this;
              *(this + 1) = *(this + 1) + v90 + v19 - 1;
              memcpy((v364 + v93), v12, v91);
              v366 = *(this + 1);
              v365 = *(this + 2);
              v367 = v366 + 10;
              if (v365)
              {
                if (v367 >= *v365)
                {
                  v368 = malloc_type_realloc(*(v365 + 16), (v366 + 265) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v369 = *(this + 2);
                  v369[2] = v368;
                  *v369 = (v366 + 265) & 0xFFFFFFFFFFFFFF00;
                  *this = v368;
                }
              }

              else
              {
                str_alloc(this, v367);
              }

              v370 = *this;
              *(this + 1) += 10;
              v371 = v370 + v366;
              *v371 = *"hg_Texture";
              *(v371 + 8) = 25970;
              v373 = *(this + 1);
              v372 = *(this + 2);
              v374 = v373 + 20;
              if (v372)
              {
                if (v374 >= *v372)
                {
                  v375 = malloc_type_realloc(*(v372 + 16), (v373 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                  v376 = *(this + 2);
                  v376[2] = v375;
                  *v376 = (v373 + 275) & 0xFFFFFFFFFFFFFF00;
                  *this = v375;
                }
              }

              else
              {
                str_alloc(this, v374);
              }

              *(this + 1) += itoa((*this + v373), v449 + v14);
              if (v45)
              {
                v12 = v45;
              }

              else
              {
                v12 = &v15[v19 - 1];
              }

              v18 = v12;
              do
              {
                v377 = *++v18;
              }

              while ((ctype[2 * v377] & 0x40) != 0);
              goto LABEL_7;
            }

            do
            {
              v83 = *++v23;
            }

            while ((ctype[2 * v83] & 0x40) != 0);
            goto LABEL_110;
          }

          if (v68 == -1)
          {
            goto LABEL_82;
          }

          v448 = v68;
          v76 = v15 - v12;
          v77 = v15 - v12 + v19 - 1;
          v79 = *(this + 1);
          v78 = *(this + 2);
          v80 = v77 + v79;
          if (v78)
          {
            if (v80 >= *v78)
            {
              v81 = malloc_type_realloc(*(v78 + 16), (v79 + v76 + v19 + 254) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v82 = *(this + 2);
              v82[2] = v81;
              *v82 = (v79 + v76 + v19 + 254) & 0xFFFFFFFFFFFFFF00;
              *this = v81;
            }
          }

          else
          {
            str_alloc(this, v80);
          }

          v320 = *this;
          *(this + 1) = *(this + 1) + v76 + v19 - 1;
          memcpy((v320 + v79), v12, v77);
          v322 = *(this + 1);
          v321 = *(this + 2);
          v323 = v322 + 12;
          if (v321)
          {
            v324 = v448;
            if (v323 >= *v321)
            {
              v325 = malloc_type_realloc(*(v321 + 16), (v322 + 267) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v326 = *(this + 2);
              v326[2] = v325;
              *v326 = (v322 + 267) & 0xFFFFFFFFFFFFFF00;
              *this = v325;
            }
          }

          else
          {
            str_alloc(this, v323);
            v324 = v448;
          }

          v327 = *this;
          *(this + 1) += 12;
          v328 = v327 + v322;
          *v328 = *"fragmentFunc";
          *(v328 + 8) = 1668183366;
          v330 = *(this + 1);
          v329 = *(this + 2);
          v331 = v330 + 20;
          if (v329)
          {
            if (v331 >= *v329)
            {
              v332 = malloc_type_realloc(*(v329 + 16), (v330 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v333 = *(this + 2);
              v333[2] = v332;
              *v333 = (v330 + 275) & 0xFFFFFFFFFFFFFF00;
              *this = v332;
            }
          }

          else
          {
            str_alloc(this, v331);
          }

          v334 = itoa((*this + v330), v324);
          v335 = *(this + 2);
          v336 = *(this + 1) + v334;
          *(this + 1) = v336;
          v337 = v336 + 1;
          if (v335)
          {
            if (v337 >= *v335)
            {
              v338 = malloc_type_realloc(*(v335 + 16), (v336 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
              v339 = *(this + 2);
              v339[2] = v338;
              *v339 = (v336 & 0xFFFFFFFFFFFFFF00) + 256;
              *this = v338;
            }
          }

          else
          {
            str_alloc(this, v337);
          }

          v340 = *this;
          ++*(this + 1);
          *(v340 + v336) = 40;
          v342 = *(this + 1);
          v341 = *(this + 2);
          v343 = v342 + 4;
          if (v341)
          {
            if (v343 >= *v341)
            {
              v344 = malloc_type_realloc(*(v341 + 16), (v342 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v345 = *(this + 2);
              v345[2] = v344;
              *v345 = (v342 + 259) & 0xFFFFFFFFFFFFFF00;
              *this = v344;
            }
          }

          else
          {
            str_alloc(this, v343);
          }

          v346 = *this;
          *(this + 1) += 4;
          *(v346 + v342) = 1734439526;
          v348 = *(this + 1);
          v347 = *(this + 2);
          v349 = v348 + 2;
          if (v347)
          {
            if (v349 >= *v347)
            {
              v350 = malloc_type_realloc(*(v347 + 16), (v348 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v351 = *(this + 2);
              v351[2] = v350;
              *v351 = (v348 + 257) & 0xFFFFFFFFFFFFFF00;
              *this = v350;
            }
          }

          else
          {
            str_alloc(this, v349);
          }

          v352 = *this;
          *(this + 1) += 2;
          *(v352 + v348) = 8236;
          v354 = *(this + 1);
          v353 = *(this + 2);
          v355 = v354 + 9;
          if (v353)
          {
            if (v355 >= *v353)
            {
              v356 = malloc_type_realloc(*(v353 + 16), (v354 + 264) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v357 = *(this + 2);
              v357[2] = v356;
              *v357 = (v354 + 264) & 0xFFFFFFFFFFFFFF00;
              *this = v356;
            }
          }

          else
          {
            str_alloc(this, v355);
          }

          v358 = *this;
          *(this + 1) += 9;
          v359 = v358 + v354;
          *v359 = *"hg_Params";
          *(v359 + 8) = 115;
          v360 = *(this + 3);
          if (v324)
          {
            if (v324 >= ((*(this + 4) - v360) >> 1))
            {
              v361 = 0;
              v392 = 2 * v324;
              v363 = v360[v392];
              if (!v360[v392])
              {
LABEL_382:
                if (v45)
                {
                  v430 = v45;
                }

                else
                {
                  v430 = v23;
                }

                v12 = v430 + 1;
                v431 = *v430;
                if (v431)
                {
                  do
                  {
                    if (v431 == 41)
                    {
                      break;
                    }

                    v431 = *v12++;
                  }

                  while (*(v12 - 1));
                }

                v433 = *(this + 1);
                v432 = *(this + 2);
                v434 = v433 + 8;
                if (v432)
                {
                  if (v434 >= *v432)
                  {
                    v435 = malloc_type_realloc(*(v432 + 16), (v433 + 263) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                    v436 = *(this + 2);
                    v436[2] = v435;
                    *v436 = (v433 + 263) & 0xFFFFFFFFFFFFFF00;
                    *this = v435;
                  }
                }

                else
                {
                  str_alloc(this, v434);
                }

                v437 = *this;
                *(this + 1) += 8;
                *(v437 + v433) = 0x30726F6C6F632E29;
                goto LABEL_6;
              }
            }

            else
            {
              v361 = v360[2 * v324 - 1];
              v362 = 2 * v324;
              v363 = v360[v362];
              if (!v360[v362])
              {
                goto LABEL_382;
              }
            }
          }

          else
          {
            v361 = 0;
            v363 = *v360;
            if (!*v360)
            {
              goto LABEL_382;
            }
          }

          v393 = *(this + 1);
          do
          {
            v394 = v393 + 2;
            v395 = *(this + 2);
            if (v395)
            {
              if (v394 >= *v395)
              {
                v396 = malloc_type_realloc(*(v395 + 16), (v393 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v397 = *(this + 2);
                v397[2] = v396;
                *v397 = (v393 + 257) & 0xFFFFFFFFFFFFFF00;
                *this = v396;
              }
            }

            else
            {
              str_alloc(this, v394);
            }

            v398 = *this;
            *(this + 1) += 2;
            *(v398 + v393) = 8236;
            v400 = *(this + 1);
            v399 = *(this + 2);
            v401 = v400 + 10;
            if (v399)
            {
              if (v401 >= *v399)
              {
                v402 = malloc_type_realloc(*(v399 + 16), (v400 + 265) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v403 = *(this + 2);
                v403[2] = v402;
                *v403 = (v400 + 265) & 0xFFFFFFFFFFFFFF00;
                *this = v402;
              }
            }

            else
            {
              str_alloc(this, v401);
            }

            v404 = *this;
            *(this + 1) += 10;
            v405 = v404 + v400;
            *v405 = *"hg_Texture";
            *(v405 + 8) = 25970;
            v407 = *(this + 1);
            v406 = *(this + 2);
            v408 = v407 + 20;
            if (v406)
            {
              if (v408 >= *v406)
              {
                v409 = malloc_type_realloc(*(v406 + 16), (v407 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v410 = *(this + 2);
                v410[2] = v409;
                *v410 = (v407 + 275) & 0xFFFFFFFFFFFFFF00;
                *this = v409;
              }
            }

            else
            {
              str_alloc(this, v408);
            }

            v411 = itoa((*this + v407), v361);
            v412 = *(this + 2);
            v413 = *(this + 1) + v411;
            *(this + 1) = v413;
            v414 = v413 + 2;
            if (v412)
            {
              if (v414 >= *v412)
              {
                v415 = malloc_type_realloc(*(v412 + 16), (v413 + 257) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v416 = *(this + 2);
                v416[2] = v415;
                *v416 = (v413 + 257) & 0xFFFFFFFFFFFFFF00;
                *this = v415;
              }
            }

            else
            {
              str_alloc(this, v414);
            }

            v417 = *this;
            *(this + 1) += 2;
            *(v417 + v413) = 8236;
            v419 = *(this + 1);
            v418 = *(this + 2);
            v420 = v419 + 10;
            if (v418)
            {
              if (v420 >= *v418)
              {
                v421 = malloc_type_realloc(*(v418 + 16), (v419 + 265) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v422 = *(this + 2);
                v422[2] = v421;
                *v422 = (v419 + 265) & 0xFFFFFFFFFFFFFF00;
                *this = v421;
              }
            }

            else
            {
              str_alloc(this, v420);
            }

            v423 = *this;
            *(this + 1) += 10;
            v424 = v423 + v419;
            *v424 = *"hg_Sampler";
            *(v424 + 8) = 29285;
            v426 = *(this + 1);
            v425 = *(this + 2);
            v427 = v426 + 20;
            if (v425)
            {
              if (v427 >= *v425)
              {
                v428 = malloc_type_realloc(*(v425 + 16), (v426 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v429 = *(this + 2);
                v429[2] = v428;
                *v429 = (v426 + 275) & 0xFFFFFFFFFFFFFF00;
                *this = v428;
              }
            }

            else
            {
              str_alloc(this, v427);
            }

            v393 = *(this + 1) + itoa((*this + v426), v361);
            *(this + 1) = v393;
            ++v361;
            --v363;
          }

          while (v363);
          goto LABEL_382;
        }

        v31 = v15 - v12;
        v33 = *(this + 1);
        v32 = *(this + 2);
        v34 = v15 - v12 + v19 + 11 + v33;
        if (v32)
        {
          if (v34 >= *v32)
          {
            v35 = malloc_type_realloc(*(v32 + 16), (v33 + v31 + v19 + 266) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v36 = *(this + 2);
            v36[2] = v35;
            *v36 = (v33 + v31 + v19 + 266) & 0xFFFFFFFFFFFFFF00;
            *this = v35;
          }
        }

        else
        {
          str_alloc(this, v34);
        }

        v117 = *this;
        *(this + 1) += v31 + v19 + 11;
        memcpy((v117 + v33), v12, v15 - v12 + v19 + 11);
        v118 = *(a2 + 3);
        v120 = *(this + 1);
        v119 = *(this + 2);
        v121 = v120 + 20;
        if (v119)
        {
          if (v121 >= *v119)
          {
            v122 = malloc_type_realloc(*(v119 + 16), (v120 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v123 = *(this + 2);
            v123[2] = v122;
            *v123 = (v120 + 275) & 0xFFFFFFFFFFFFFF00;
            *this = v122;
          }
        }

        else
        {
          str_alloc(this, v121);
        }

        v18 = &v15[v19 + 11];
        *(this + 1) += itoa((*this + v120), v118);
        v12 = v18;
        if (*v18 != 40)
        {
          goto LABEL_7;
        }
      }

      else
      {
        if (strncmp(&v15[v19 - 1], "fragmentFunc", 0xCuLL))
        {
          goto LABEL_26;
        }

        v18 = &v15[v19 + 11];
        if (*v18 != 40)
        {
          goto LABEL_7;
        }
      }

      v125 = *(this + 1);
      v124 = *(this + 2);
      v126 = v125 + v18 - v12;
      if (v124)
      {
        if (v126 >= *v124)
        {
          v127 = (v126 + 255) & 0xFFFFFFFFFFFFFF00;
          v128 = malloc_type_realloc(*(v124 + 16), v127, 0x100004077774924uLL);
          v129 = *(this + 2);
          v129[2] = v128;
          *v129 = v127;
          *this = v128;
        }
      }

      else
      {
        str_alloc(this, v126);
      }

      v130 = *this;
      *(this + 1) += v18 - v12;
      memcpy((v130 + v125), v12, v18 - v12);
      v12 = &v15[v19 + 12];
      if (*v12 == 41)
      {
        v131 = v18;
LABEL_129:
        if ((v456 & 1) != 0 || !*(a3 + 40))
        {
LABEL_284:
          v309 = *(this + 1);
          v308 = *(this + 2);
          v310 = v12 - v131 + v309;
          if (v308)
          {
            if (v310 >= *v308)
            {
              v311 = (v310 + 255) & 0xFFFFFFFFFFFFFF00;
              v312 = malloc_type_realloc(*(v308 + 16), v311, 0x100004077774924uLL);
              v313 = *(this + 2);
              v313[2] = v312;
              *v313 = v311;
              *this = v312;
            }
          }

          else
          {
            str_alloc(this, v310);
          }

          v314 = *this;
          *(this + 1) += v12 - v131;
          memcpy((v314 + v309), v131, v12 - v131);
          goto LABEL_6;
        }

        v192 = 0;
        while (1)
        {
          v195 = *(this + 1);
          v194 = *(this + 2);
          v196 = v195 + 1;
          if (v194)
          {
            if (v196 >= *v194)
            {
              v197 = malloc_type_realloc(*(v194 + 16), (v195 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
              v198 = *(this + 2);
              v198[2] = v197;
              *v198 = (v195 & 0xFFFFFFFFFFFFFF00) + 256;
              *this = v197;
            }
          }

          else
          {
            str_alloc(this, v196);
          }

          v199 = *this;
          ++*(this + 1);
          *(v199 + v195) = 44;
          v201 = *(this + 1);
          v200 = *(this + 2);
          v202 = v201 + 1;
          if (v200)
          {
            if (v202 >= *v200)
            {
              v203 = malloc_type_realloc(*(v200 + 16), (v201 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
              v204 = *(this + 2);
              v204[2] = v203;
              *v204 = (v201 & 0xFFFFFFFFFFFFFF00) + 256;
              *this = v203;
            }
          }

          else
          {
            str_alloc(this, v202);
          }

          v205 = *this;
          ++*(this + 1);
          *(v205 + v201) = 10;
          v207 = *(this + 1);
          v206 = *(this + 2);
          v208 = v207 + 4;
          if (v206)
          {
            if (v208 >= *v206)
            {
              v209 = malloc_type_realloc(*(v206 + 16), (v207 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v210 = *(this + 2);
              v210[2] = v209;
              *v210 = (v207 + 259) & 0xFFFFFFFFFFFFFF00;
              *this = v209;
            }
          }

          else
          {
            str_alloc(this, v208);
          }

          v211 = *this;
          *(this + 1) += 4;
          *(v211 + v207) = 538976288;
          v213 = *(this + 1);
          v212 = *(this + 2);
          v214 = v213 + v12 - v131;
          if (v212)
          {
            if (v214 >= *v212)
            {
              v215 = (v214 + 255) & 0xFFFFFFFFFFFFFF00;
              v216 = malloc_type_realloc(*(v212 + 16), v215, 0x100004077774924uLL);
              v217 = *(this + 2);
              v217[2] = v216;
              *v217 = v215;
              *this = v216;
            }
          }

          else
          {
            str_alloc(this, v214);
          }

          v218 = *this;
          *(this + 1) += v12 - v131;
          memcpy((v218 + v213), v131, v12 - v131);
          if (v192 <= 7 && ((*(a3 + 4) >> v192) & 1) != 0)
          {
            v220 = *(this + 1);
            v219 = *(this + 2);
            v221 = v220 + 28;
            if (v219)
            {
              if (v221 >= *v219)
              {
                v222 = malloc_type_realloc(*(v219 + 16), (v220 + 283) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v223 = *(this + 2);
                v223[2] = v222;
                *v223 = (v220 + 283) & 0xFFFFFFFFFFFFFF00;
                *this = v222;
              }
            }

            else
            {
              str_alloc(this, v221);
            }

            v235 = *this;
            *(this + 1) += 28;
            qmemcpy((v235 + v220), "texture2d< half > hg_Texture", 28);
            v231 = *(this + 1);
            v230 = *(this + 2);
            v232 = v231 + 20;
            if (!v230)
            {
              goto LABEL_234;
            }
          }

          else
          {
            v225 = *(this + 1);
            v224 = *(this + 2);
            v226 = v225 + 29;
            if (v224)
            {
              if (v226 >= *v224)
              {
                v227 = malloc_type_realloc(*(v224 + 16), (v225 + 284) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v228 = *(this + 2);
                v228[2] = v227;
                *v228 = (v225 + 284) & 0xFFFFFFFFFFFFFF00;
                *this = v227;
              }
            }

            else
            {
              str_alloc(this, v226);
            }

            v229 = *this;
            *(this + 1) += 29;
            qmemcpy((v229 + v225), "texture2d< float > hg_Texture", 29);
            v231 = *(this + 1);
            v230 = *(this + 2);
            v232 = v231 + 20;
            if (!v230)
            {
LABEL_234:
              str_alloc(this, v232);
              goto LABEL_235;
            }
          }

          if (v232 >= *v230)
          {
            v233 = malloc_type_realloc(*(v230 + 16), (v231 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
            v234 = *(this + 2);
            v234[2] = v233;
            *v234 = (v231 + 275) & 0xFFFFFFFFFFFFFF00;
            *this = v233;
          }

LABEL_235:
          v236 = itoa((*this + v231), v192);
          v237 = *(this + 2);
          v238 = *(this + 1) + v236;
          *(this + 1) = v238;
          v239 = v238 + 12;
          if (v237)
          {
            if (v239 >= *v237)
            {
              v240 = malloc_type_realloc(*(v237 + 16), (v238 + 267) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v241 = *(this + 2);
              v241[2] = v240;
              *v241 = (v238 + 267) & 0xFFFFFFFFFFFFFF00;
              *this = v240;
            }
          }

          else
          {
            str_alloc(this, v239);
          }

          v242 = *this;
          *(this + 1) += 12;
          v243 = v242 + v238;
          *v243 = *" [[ texture(";
          *(v243 + 8) = 677737077;
          v245 = *(this + 1);
          v244 = *(this + 2);
          v246 = v245 + 20;
          if (v244)
          {
            if (v246 >= *v244)
            {
              v247 = malloc_type_realloc(*(v244 + 16), (v245 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v248 = *(this + 2);
              v248[2] = v247;
              *v248 = (v245 + 275) & 0xFFFFFFFFFFFFFF00;
              *this = v247;
            }
          }

          else
          {
            str_alloc(this, v246);
          }

          v249 = itoa((*this + v245), v192);
          v250 = *(this + 2);
          v251 = *(this + 1) + v249;
          *(this + 1) = v251;
          v252 = v251 + 4;
          if (v250)
          {
            if (v252 >= *v250)
            {
              v253 = malloc_type_realloc(*(v250 + 16), (v251 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v254 = *(this + 2);
              v254[2] = v253;
              *v254 = (v251 + 259) & 0xFFFFFFFFFFFFFF00;
              *this = v253;
            }
          }

          else
          {
            str_alloc(this, v252);
          }

          v255 = *this;
          *(this + 1) += 4;
          *(v255 + v251) = 1566384169;
          v257 = *(this + 1);
          v256 = *(this + 2);
          v258 = v257 + 1;
          if (v256)
          {
            if (v258 >= *v256)
            {
              v259 = malloc_type_realloc(*(v256 + 16), (v257 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
              v260 = *(this + 2);
              v260[2] = v259;
              *v260 = (v257 & 0xFFFFFFFFFFFFFF00) + 256;
              *this = v259;
            }
          }

          else
          {
            str_alloc(this, v258);
          }

          v261 = *this;
          ++*(this + 1);
          *(v261 + v257) = 44;
          v263 = *(this + 1);
          v262 = *(this + 2);
          v264 = v263 + 1;
          if (v262)
          {
            if (v264 >= *v262)
            {
              v265 = malloc_type_realloc(*(v262 + 16), (v263 & 0xFFFFFFFFFFFFFF00) + 256, 0x100004077774924uLL);
              v266 = *(this + 2);
              v266[2] = v265;
              *v266 = (v263 & 0xFFFFFFFFFFFFFF00) + 256;
              *this = v265;
            }
          }

          else
          {
            str_alloc(this, v264);
          }

          v267 = *this;
          ++*(this + 1);
          *(v267 + v263) = 10;
          v269 = *(this + 1);
          v268 = *(this + 2);
          v270 = v269 + 4;
          if (v268)
          {
            if (v270 >= *v268)
            {
              v271 = malloc_type_realloc(*(v268 + 16), (v269 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v272 = *(this + 2);
              v272[2] = v271;
              *v272 = (v269 + 259) & 0xFFFFFFFFFFFFFF00;
              *this = v271;
            }
          }

          else
          {
            str_alloc(this, v270);
          }

          v273 = *this;
          *(this + 1) += 4;
          *(v273 + v269) = 538976288;
          v275 = *(this + 1);
          v274 = *(this + 2);
          if (v274)
          {
            v276 = *v274;
            if (v275 >= *v274)
            {
              v276 = (v275 + 255) & 0xFFFFFFFFFFFFFF00;
              v277 = malloc_type_realloc(*(v274 + 16), v276, 0x100004077774924uLL);
              v275 = *(this + 1);
              v274 = *(this + 2);
              *(v274 + 16) = v277;
              *v274 = v276;
              *this = v277;
            }

            v278 = v275 + 18;
            if (v275 + 18 < v276)
            {
              goto LABEL_268;
            }

LABEL_266:
            v279 = (v278 + 255) & 0xFFFFFFFFFFFFFF00;
            v280 = malloc_type_realloc(*(v274 + 16), v279, 0x100004077774924uLL);
            v281 = *(this + 2);
            v281[2] = v280;
            *v281 = v279;
            *this = v280;
            goto LABEL_268;
          }

          str_alloc(this, *(this + 1));
          v275 = *(this + 1);
          v274 = *(this + 2);
          v278 = v275 + 18;
          if (!v274)
          {
            str_alloc(this, v278);
            goto LABEL_268;
          }

          if (v278 >= *v274)
          {
            goto LABEL_266;
          }

LABEL_268:
          v282 = *this;
          *(this + 1) += 18;
          v283 = v282 + v275;
          *v283 = *"sampler hg_Sampler";
          *(v283 + 16) = 29285;
          v285 = *(this + 1);
          v284 = *(this + 2);
          v286 = v285 + 20;
          if (v284)
          {
            if (v286 >= *v284)
            {
              v287 = malloc_type_realloc(*(v284 + 16), (v285 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v288 = *(this + 2);
              v288[2] = v287;
              *v288 = (v285 + 275) & 0xFFFFFFFFFFFFFF00;
              *this = v287;
            }
          }

          else
          {
            str_alloc(this, v286);
          }

          v289 = itoa((*this + v285), v192);
          v290 = *(this + 2);
          v291 = *(this + 1) + v289;
          *(this + 1) = v291;
          v292 = v291 + 12;
          if (v290)
          {
            if (v292 >= *v290)
            {
              v293 = malloc_type_realloc(*(v290 + 16), (v291 + 267) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v294 = *(this + 2);
              v294[2] = v293;
              *v294 = (v291 + 267) & 0xFFFFFFFFFFFFFF00;
              *this = v293;
            }
          }

          else
          {
            str_alloc(this, v292);
          }

          v295 = *this;
          *(this + 1) += 12;
          v296 = v295 + v291;
          *v296 = *" [[ sampler(";
          *(v296 + 8) = 678585708;
          v298 = *(this + 1);
          v297 = *(this + 2);
          v299 = v298 + 20;
          if (v297)
          {
            if (v299 >= *v297)
            {
              v300 = malloc_type_realloc(*(v297 + 16), (v298 + 275) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v301 = *(this + 2);
              v301[2] = v300;
              *v301 = (v298 + 275) & 0xFFFFFFFFFFFFFF00;
              *this = v300;
            }
          }

          else
          {
            str_alloc(this, v299);
          }

          v302 = itoa((*this + v298), v192);
          v303 = *(this + 2);
          v304 = *(this + 1) + v302;
          *(this + 1) = v304;
          v305 = v304 + 4;
          if (v303)
          {
            if (v305 >= *v303)
            {
              v306 = malloc_type_realloc(*(v303 + 16), (v304 + 259) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v307 = *(this + 2);
              v307[2] = v306;
              *v307 = (v304 + 259) & 0xFFFFFFFFFFFFFF00;
              *this = v306;
            }
          }

          else
          {
            str_alloc(this, v305);
          }

          v193 = *this;
          *(this + 1) += 4;
          *(v193 + v304) = 1566384169;
          ++v192;
          v131 = v12;
          if (v192 >= *(a3 + 40))
          {
            v131 = v12;
            goto LABEL_284;
          }
        }
      }

      v132 = &v15[v19 + 12];
      while (1)
      {
        v136 = 0;
        v137 = (v132 + 12);
        v138 = (v132 + 1);
        do
        {
          v139 = v137;
          v140 = *(v132 + v136);
          v131 = v138;
          ++v136;
          ++v137;
          ++v138;
        }

        while ((v140 - 33) > 0xFFFFFFDF);
        v12 = (v132 + v136);
        v141 = (v132 + v136 - 1);
        if (!strncmp(v141, "[[ stage_in", 0xBuLL))
        {
          break;
        }

        if (!strncmp((v132 + v136 - 1), "[[ buffer(", 0xAuLL))
        {
          v150 = v132 - v18;
          v152 = *(this + 1);
          v151 = *(this + 2);
          v153 = v132 - v18 + v136 - 2 + v152;
          if (v151)
          {
            if (v153 >= *v151)
            {
              v154 = malloc_type_realloc(*(v151 + 16), (v152 + v150 + v136 + 253) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v155 = *(this + 2);
              v155[2] = v154;
              *v155 = (v152 + v150 + v136 + 253) & 0xFFFFFFFFFFFFFF00;
              *this = v154;
            }
          }

          else
          {
            str_alloc(this, v153);
          }

          v181 = v132 + v136 - 2;
          v182 = *this;
          *(this + 1) = *(this + 1) + v150 + v136 - 2;
          memcpy((v182 + v152), v18, v132 - v18 + v136 - 2);
          v183 = 257;
          while (*(v131 - 2) != 93 || *(v131 - 1) != 93)
          {
            ++v131;
            ++v183;
          }

          if (v456)
          {
            goto LABEL_135;
          }

          v167 = v183 - 255;
          v185 = *(this + 1);
          v184 = *(this + 2);
          v186 = v183 - 255 + v185;
          if (v184)
          {
            if (v186 >= *v184)
            {
              v187 = malloc_type_realloc(*(v184 + 16), (v185 + v183) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
              v188 = *(this + 2);
              v188[2] = v187;
              *v188 = (v185 + v183) & 0xFFFFFFFFFFFFFF00;
              *this = v187;
            }
          }

          else
          {
            str_alloc(this, v186);
          }

          v189 = *this;
          *(this + 1) = *(this + 1) + v183 - 255;
          v134 = (v189 + v185);
          v135 = v181;
          goto LABEL_134;
        }

        if (!strncmp((v132 + v136 - 1), "[[ texture(", 0xBuLL))
        {
          v156 = v12[10];
          if ((v156 - 58) >= 0xFFFFFFF6)
          {
            v14 = 0;
            do
            {
              v14 = v156 + 10 * v14 - 48;
              v157 = *v139++;
              v156 = v157;
            }

            while ((v157 - 58) > 0xFFFFFFF5);
          }

          if (v456)
          {
            v158 = v132 - v18;
            v160 = *(this + 1);
            v159 = *(this + 2);
            v161 = v132 - v18 + v136 - 2 + v160;
            if (v159)
            {
              if (v161 >= *v159)
              {
                v162 = malloc_type_realloc(*(v159 + 16), (v160 + v158 + v136 + 253) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v163 = *(this + 2);
                v163[2] = v162;
                *v163 = (v160 + v158 + v136 + 253) & 0xFFFFFFFFFFFFFF00;
                *this = v162;
              }
            }

            else
            {
              str_alloc(this, v161);
            }

            v190 = *this;
            *(this + 1) = *(this + 1) + v158 + v136 - 2;
            memcpy((v190 + v160), v18, v132 - v18 + v136 - 2);
          }

          while (*(v131 - 2) != 93 || *(v131 - 1) != 93)
          {
            ++v131;
          }
        }

        else
        {
          if (strncmp((v132 + v136 - 1), "[[ sampler(", 0xBuLL))
          {
            if ((v140 - 48) >= 0xA && (ctype[2 * v140] & 0x40) != 0)
            {
              do
              {
                v142 = *++v141;
              }

              while ((ctype[2 * v142] & 0x40) != 0);
              v131 = v18;
              v12 = v141;
            }

            else
            {
              v131 = v18;
            }

            goto LABEL_136;
          }

          v173 = v12[10];
          if ((v173 - 58) >= 0xFFFFFFF6)
          {
            v14 = 0;
            do
            {
              v14 = v173 + 10 * v14 - 48;
              v174 = *v139++;
              v173 = v174;
            }

            while ((v174 - 58) > 0xFFFFFFF5);
          }

          if (v456)
          {
            v175 = v132 - v18;
            v177 = *(this + 1);
            v176 = *(this + 2);
            v178 = v132 - v18 + v136 - 2 + v177;
            if (v176)
            {
              if (v178 >= *v176)
              {
                v179 = malloc_type_realloc(*(v176 + 16), (v177 + v175 + v136 + 253) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
                v180 = *(this + 2);
                v180[2] = v179;
                *v180 = (v177 + v175 + v136 + 253) & 0xFFFFFFFFFFFFFF00;
                *this = v179;
              }
            }

            else
            {
              str_alloc(this, v178);
            }

            v191 = *this;
            *(this + 1) = *(this + 1) + v175 + v136 - 2;
            memcpy((v191 + v177), v18, v132 - v18 + v136 - 2);
          }

          while (*(v131 - 2) != 93 || *(v131 - 1) != 93)
          {
            ++v131;
          }
        }

LABEL_135:
        v12 = v131;
LABEL_136:
        v132 = v12;
        v18 = v131;
        if (*v12 == 41)
        {
          goto LABEL_129;
        }
      }

      v143 = v132 - v18;
      v144 = v132 - v18 + v136 - 2;
      v146 = *(this + 1);
      v145 = *(this + 2);
      v147 = v144 + v146;
      if (v145)
      {
        if (v147 >= *v145)
        {
          v148 = malloc_type_realloc(*(v145 + 16), (v146 + v143 + v136 + 253) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v149 = *(this + 2);
          v149[2] = v148;
          *v149 = (v146 + v143 + v136 + 253) & 0xFFFFFFFFFFFFFF00;
          *this = v148;
        }
      }

      else
      {
        str_alloc(this, v147);
      }

      v164 = v12 - 2;
      v165 = *this;
      *(this + 1) = *(this + 1) + v143 + v136 - 2;
      memcpy((v165 + v146), v18, v144);
      v166 = 257;
      while (*(v131 - 2) != 93 || *(v131 - 1) != 93)
      {
        ++v131;
        ++v166;
      }

      if (v456)
      {
        goto LABEL_135;
      }

      v167 = v166 - 255;
      v169 = *(this + 1);
      v168 = *(this + 2);
      v170 = v166 - 255 + v169;
      if (v168)
      {
        if (v170 >= *v168)
        {
          v171 = malloc_type_realloc(*(v168 + 16), (v169 + v166) & 0xFFFFFFFFFFFFFF00, 0x100004077774924uLL);
          v172 = *(this + 2);
          v172[2] = v171;
          *v172 = (v169 + v166) & 0xFFFFFFFFFFFFFF00;
          *this = v171;
        }
      }

      else
      {
        str_alloc(this, v170);
      }

      v133 = *this;
      *(this + 1) = *(this + 1) + v166 - 255;
      v134 = (v133 + v169);
      v135 = v164;
LABEL_134:
      memcpy(v134, v135, v167);
      goto LABEL_135;
    }
  }
}

uint64_t HGString::Digest::pop(HGString::Digest *this, HGShaderBinding *a2, const HGString::Digest *a3, const HGString::Digest *a4, int a5, const HGLimits *a6)
{
  v6 = *(a3 + 4);
  v7 = v6 & 0xFFFFF;
  if ((v6 & 0xFFFFF) - 394305 > 0xFFFFFECE)
  {
    v9 = *(a4 + 4);
    if ((v9 & 0xFFFFF) - 394305 >= 0xFFFFFECF)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v8 = v7 != 396048 && (v7 - 394768) >= 0x11;
  if (v8)
  {
    if (*(a4 + 4))
    {
      *(a2 + 8) = 0;
      *a2 = 0u;
      *(a2 + 1) = 0u;
      v11 = *a4;
      v12 = *(a4 + 1);
      v13 = *(a4 + 3);
      *(this + 2) = *(a4 + 2);
      *(this + 3) = v13;
      *this = v11;
      *(this + 1) = v12;
      return *(a4 + 58);
    }

    return 0xFFFFFFFFLL;
  }

  if ((v7 - 394785) >= 0xFFFFFFEF)
  {
    v9 = *(a4 + 4);
    if ((v9 & 0xFFFFF) - 394785 >= 0xFFFFFFEF)
    {
      goto LABEL_18;
    }

LABEL_12:
    if (!*(a4 + 4))
    {
      return *(a3 + 58);
    }

    return 0xFFFFFFFFLL;
  }

  if (v7 != 396048)
  {
    goto LABEL_12;
  }

  v9 = *(a4 + 4);
  if ((v9 & 0xFFFFF) != 0x60B10)
  {
    if (!v9)
    {
      return *(a3 + 58);
    }

    return 0xFFFFFFFFLL;
  }

LABEL_18:
  v15 = *(a3 + 5);
  v16 = *(a4 + 5);
  if ((v16 & v15 & 0x8000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a4 + 56))
  {
    v17 = 0;
LABEL_32:
    v22 = 0;
    v23 = *(a3 + 52) - v17;
    goto LABEL_34;
  }

  v17 = 0;
  v18 = 0;
  v19 = -1;
  do
  {
    if (v19 == -1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    if (((1 << v18) & a5) != 0)
    {
      ++v17;
    }

    else
    {
      v19 = v20;
    }

    ++v18;
  }

  while (*(a4 + 56) != v18);
  if (v19 == -1)
  {
    goto LABEL_32;
  }

  v21 = *(a3 + 26);
  if (v21 > 0xFF)
  {
    v24 = ~v19;
    v22 = ((v21 >> 8) & 0xF) + v24;
    v23 = v24 + (v21 >> 12);
  }

  else
  {
    v22 = *(a3 + 56) - v19;
    v23 = v21 - v19;
  }

LABEL_34:
  if (v6 <= v9)
  {
    v6 = v9;
  }

  *(this + 4) = v6;
  v25 = *(a3 + 6);
  v26 = *(a3 + 28);
  v27 = v16 & 0xEFFFFFFF | v15 & 0xDBFFFFFF;
  v28 = *(a4 + 24) | *(a3 + 24);
  v29 = *(a4 + 23) | *(a3 + 23);
  v30 = *(a4 + 57) | *(a3 + 57);
  if ((v16 | v15) >= 0)
  {
    v31 = v16 & v15 & 0xC0000000;
  }

  else
  {
    v31 = 0x80000000;
  }

  v32 = v27 | v31;
  v33 = *(a4 + 6) & ~a5;
  if ((v22 & 0x80000000) != 0)
  {
    v34 = v33 >> -v22;
  }

  else
  {
    v34 = v33 << v22;
  }

  v35 = vand_s8(vshl_u32(vand_s8(*(a4 + 28), vdup_n_s32(~a5)), vdup_n_s32(v22)), 0xFF000000FFLL);
  *(this + 5) = v32;
  *(this + 6) = v34 | v25;
  v36 = vorr_s8(v35, v26);
  *(this + 28) = v36;
  *(this + 24) = v28;
  *(this + 23) = v29;
  v37 = *(a4 + 18) + *(a3 + 18);
  *(this + 18) = v37;
  v38 = *(a4 + 19) + *(a3 + 19);
  *(this + 19) = v38;
  *(this + 15) = *(a4 + 15) + *(a3 + 15);
  v39 = *(a4 + 20);
  if (v39 <= *(a3 + 20))
  {
    v39 = *(a3 + 20);
  }

  *(this + 20) = v39;
  v36.i32[0] = *(a4 + 42);
  v35.i32[0] = *(a3 + 42);
  v40 = vmax_u16(*&vmovl_u8(v36), *&vmovl_u8(v35));
  *(this + 42) = vuzp1_s8(v40, v40).u32[0];
  v41 = *(a4 + 25) + *(a3 + 25);
  *(this + 25) = v41;
  v42 = (*(a4 + 26) + v23);
  *(this + 26) = *(a4 + 26) + v23;
  if (*(a3 + 52) <= v42)
  {
    v43 = v42;
  }

  else
  {
    v43 = *(a3 + 52);
  }

  *(this + 26) = v43;
  v44 = (*(a4 + 56) + v22);
  *(this + 56) = *(a4 + 56) + v22;
  if (*(a3 + 56) <= v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = *(a3 + 56);
  }

  *(this + 56) = v45;
  *(this + 57) = v30;
  v46 = *(a4 + 58);
  *(this + 58) = v46;
  v47 = *(a4 + 59);
  if (*(a3 + 59) > v47)
  {
    v47 = *(a3 + 59);
  }

  *(this + 59) = v47;
  if (!a6)
  {
    goto LABEL_61;
  }

  if (v43 > *(a6 + 18) || v45 > *(a6 + 40) || *(a6 + 11) < v38)
  {
    return 0xFFFFFFFFLL;
  }

  v48 = *(a6 + 10);
  v14 = 0xFFFFFFFFLL;
  if (v37 > v48 || v37 + v38 > v48)
  {
    return v14;
  }

  if (v39 + v40.u8[2] + v40.u8[0] + v40.u8[4] + v41 + v47 > *(a6 + 27) + *(a6 + 12) + *(a6 + 26) + *(a6 + 28) + *(a6 + 17) + *(a6 + 43) || v46 > *(a6 + 42))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_61:
  v49 = *(a3 + 18);
  *a2 = *(a3 + 25);
  *(a2 + 1) = v49;
  *(a2 + 2) = v23;
  *(a2 + 3) = 0;
  v50 = *(a3 + 15);
  *(a2 + 4) = *(a3 + 19);
  *(a2 + 5) = v50;
  *(a2 + 6) = v22;
  *(a2 + 28) = 0xFFFFFFFFLL;
  v51 = bswap32(*a3);
  v52 = bswap32(*(a3 + 1));
  v53 = bswap32(*(a3 + 2));
  v54 = bswap32(*(a3 + 3));
  v8 = v51 >= *a4;
  *this = v51 - *a4;
  v55 = !v8;
  v56 = v52 - *(a4 + 1) - v55;
  *(this + 1) = v56;
  v57 = (__PAIR64__(v53, v52) - __PAIR64__(*(a4 + 2), v56)) >> 32;
  *(this + 2) = v57;
  *(this + 3) = (__PAIR64__(v54, v53) - __PAIR64__(*(a4 + 3), v57)) >> 32;
  return *(a2 + 3);
}

uint64_t HGString::pop(HGString *this, HGShaderBinding *a2, const HGString *a3, const char *a4, const HGLimits *a5)
{
  HGString::digest(this, v35);
  HGString::digest(a3, v33);
  memset(v32, 0, sizeof(v32));
  result = HGString::Digest::pop(&v28, a2, v35, v33, a4, a5);
  if (result != -1)
  {
    if ((v34 & 0xFFFFFu) - 394305 >= 0xFFFFFECF)
    {
      v12 = result;
      arb::begin(this, v36, v32, v11);
      arb::write(this, a2, v36, 0xFFFFFFFFLL, 0, *a3, 0, a4, v28, v29, v30, v31);
      arb::end(this, v32, &v28, v16, v17, v18);
      return v12;
    }

    if ((v34 & 0xFFFFFu) - 394785 >= 0xFFFFFFEF)
    {
      v12 = result;
      glsl::begin(this, v36, v32, v11);
      glsl::write(this, a2, 0, *a3, 0, a4, v19, v20, v28, v29, v30, v31);
LABEL_17:
      glsl::end(this, v32, &v28, 0, v21, v22, v23);
      return v12;
    }

    if ((v34 & 0xFFFFF) != 0x60B10)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = result;
    v13 = v32[0];
    v14 = *(this + 1);
    if (v14)
    {
      str_alloc(this, v14);
      if (LODWORD(v36[0]) == v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      str_alloc(this, 33);
      *(this + 1) = 33;
      if (LODWORD(v36[0]) == v13)
      {
LABEL_16:
        metal::write(this, a2, v32, 0, *a3, 0, a4, v15, v28, v29, v30, v31);
        goto LABEL_17;
      }
    }

    v24 = v13 >> 4;
    v25 = *this;
    *(v25 + 3) = 1818326117;
    *v25 = 1699557167;
    if (v24 | v13 & 0xF)
    {
      *(v25 + 7) = v24 | 0x30;
      *(v25 + 8) = 46;
      v26 = (v25 + 10);
      *(v25 + 9) = v13 & 0xF | 0x30;
    }

    else
    {
      v26 = (v25 + 7);
    }

    v27 = *this;
    memset(v26, 32, *this + 15 - v26);
    qmemcpy((v27 + 15), "\n//LEN=0000000000\n", 18);
    goto LABEL_16;
  }

  return result;
}

uint64_t HGString::undo(HGString *this)
{
  v2 = *(this + 1);
  HGString::signature(this, v18);
  if ((v18[0] & 0xFFFFFu) - 394305 >= 0xFFFFFECF)
  {
    arb::undo(this, v3);
    v2 = arb::undo(this, v9);
    v10 = *(this + 4);
    if (*(this + 3) == v10)
    {
      return v2;
    }

    goto LABEL_27;
  }

  if ((v18[0] & 0xFFFFF) != 0x60B10)
  {
    goto LABEL_26;
  }

  v4 = *this;
  v5 = *(this + 1);
  v6 = *this;
  if (*this + v5 - 139 != *this)
  {
    v7 = v5 - 139;
    do
    {
      v8 = &v4[v7];
      if (v4[v7] == 47 && v8[1] == 47 && !strncmp(v8, "//SIG=", 6uLL))
      {
        v6 = &v4[v7];
        goto LABEL_13;
      }

      --v7;
    }

    while (v7);
    v6 = v4;
  }

LABEL_13:
  if (strncmp(v6, "//Metal1.0     \n", 0x10uLL))
  {
    v11 = v6 + 96 - v4;
    bzero((v6 + 96), v5 - v11);
    *(this + 1) = v11;
    v12 = *this;
    v13 = *this;
    if (*this + v11 - 139 == *this)
    {
      goto LABEL_24;
    }

LABEL_17:
    v14 = v11 - 139;
    do
    {
      v15 = &v12[v14];
      if (v12[v14] == 47 && v15[1] == 47 && !strncmp(v15, "//SIG=", 6uLL))
      {
        v13 = &v12[v14];
        goto LABEL_24;
      }

      --v14;
    }

    while (v14);
    v13 = v12;
    goto LABEL_24;
  }

  *(this + 1) = 0;
  *v4 = 0;
  v12 = *this;
  v11 = *(this + 1);
  v13 = *this;
  if (*this + v11 - 139 != *this)
  {
    goto LABEL_17;
  }

LABEL_24:
  if (!strncmp(v13, "//Metal1.0     \n", 0x10uLL))
  {
    *(this + 1) = 0;
    *v12 = 0;
    v2 = *(this + 1);
    v10 = *(this + 4);
    if (*(this + 3) == v10)
    {
      return v2;
    }

    goto LABEL_27;
  }

  v16 = (v13 + 96);
  v2 = v13 + 96 - v12;
  bzero(v16, v11 - v2);
  *(this + 1) = v2;
LABEL_26:
  v10 = *(this + 4);
  if (*(this + 3) != v10)
  {
LABEL_27:
    *(this + 4) = v10 - 2;
  }

  return v2;
}

uint64_t arb::undo(arb *this, string_t *a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v7 = *this;
  v6 = *(this + 1);
  v8 = *this;
  v9 = *this + v6;
  v10 = (v9 - 143);
  v11 = (v9 - 285);
  for (i = v6 - 141; ; --i)
  {
    v13 = *v10;
    if (v13 != 36)
    {
      break;
    }

    if (v10[1] == 116)
    {
      v14 = v10 + 2;
      v15 = v10[2];
      if ((v15 - 58) >= 0xFFFFFFF6)
      {
        v3 = 0;
        do
        {
          v3 = v15 + 10 * v3 - 48;
          v16 = *++v14;
          v15 = v16;
        }

        while ((v16 - 58) > 0xFFFFFFF5);
        if (v15)
        {
          if ((v15 - 33) >= 0xFFFFFFE0)
          {
            do
            {
LABEL_11:
              v17 = *++v14;
              v15 = v17;
            }

            while ((v17 - 33) > 0xFFFFFFDF);
          }

LABEL_12:
          if (v15 == 35)
          {
            v18 = v14;
            while (1)
            {
              v19 = *++v18;
              v15 = v19;
              if (!v19)
              {
                break;
              }

              v20 = *v14;
              v14 = v18;
              if (v20 == 10)
              {
                v14 = v18;
                if ((v15 - 33) >= 0xFFFFFFE0)
                {
                  goto LABEL_11;
                }

                goto LABEL_12;
              }
            }
          }
        }
      }

      if (v3 + 1 <= v5 + v4)
      {
        v21 = v5;
      }

      else
      {
        v21 = v3 + 1 - v4;
      }

      v22 = v5 + v4 - v3;
      if (v3 >= v4)
      {
        v5 = v21;
      }

      else
      {
        v4 = v3;
        v5 = v22;
      }
    }

LABEL_3:
    --v10;
    --v11;
  }

  if (v13 != 64)
  {
    goto LABEL_3;
  }

  while (v13 != 35 || v8[i] != 36)
  {
    v13 = *(v7 + i - 3);
    --v11;
    --i;
  }

  if ((i - 2) > 0xA8)
  {
    if (*(v9 - 3) != 59 || *(v7 + i - 5) != 59)
    {
      if (v6)
      {
        v23 = v5 + v4;
        if (v23 <= 8 && v9 - 142 >= v7 && v5)
        {
          v24 = v23 - 1;
          v25 = v6 + v7 - 149;
          do
          {
            if (*(v25 + 7) == 36 && *(v25 + 8) == 116 && *(v25 + 9) == (v24 + 48))
            {
              if (!strncmp(v25, "#UTPUT ", 7uLL))
              {
                *v25 = 79;
                --v24;
                --v5;
              }

              else
              {
                *(v25 + 8) = 111;
              }
            }

            v26 = v25 + 6;
            v8 = *this;
            --v25;
          }

          while (v26 >= *this && v5 != 0);
        }
      }

      v28 = *(v7 + i - 5);
      if (v28 <= 96)
      {
        v29 = 0;
      }

      else
      {
        v29 = -39;
      }

      v30 = v28 + v29 - 48;
      if (v30 <= 7)
      {
        v31 = v8 + 128;
        if (v30)
        {
          v32 = 4 * v30;
          memcpy(v8 + 128, "TEMP $t0,$t1,$t2,$t3,$t4,$t5,$t6,$t7;  \n", v32 + 4);
          v31[v32 + 4] = 59;
          memset(&v31[v32 + 5], 32, 34 - v32);
          v8[167] = 10;
        }

        else
        {
          qmemcpy(v8 + 128, "##                                     \n", 40);
        }
      }

      *(this + 1) = &v11[-*this + 142];
      *v11 = 69;
    }
  }

  else
  {
    *(this + 1) = 0;
    *v8 = 0;
  }

  return *(this + 1);
}

uint64_t HGString::setp(HGString *this, uint64_t a2)
{
  v2 = *this;
  if (**this != 47 || strncmp(*this, "//GLfs", 6uLL) || strncmp(v2 + 33, "#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp ", 0x51uLL))
  {
    return 0;
  }

  v6 = *(v2 + 114);
  if (v6 == 104)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v6 == 108)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v8 == a2)
  {
    return a2;
  }

  str_alloc(this, *(this + 1));
  if (a2 == 2)
  {
    *(v2 + 117) = 538996840;
    *(v2 + 114) = 1751607656;
    return v8;
  }

  else
  {
    if (a2)
    {
      *(v2 + 117) = 1886221673;
      *(v2 + 114) = 1768187245;
    }

    else
    {
      *(v2 + 117) = 538976368;
      *(v2 + 114) = 1886875500;
    }

    return v8;
  }
}

unsigned __int8 *atox(unsigned __int8 *result, unsigned int *a2)
{
  v2 = *result;
  if ((ctype[2 * v2] & 0x10) != 0)
  {
    if (v2 <= 96)
    {
      v3 = 0;
    }

    else
    {
      v3 = -39;
    }

    v4 = v2 + v3 - 48;
    v5 = result[1];
    if ((ctype[2 * v5] & 0x10) != 0)
    {
      v6 = v5 <= 96 ? 0 : -39;
      v4 = (v5 + v6 - 48) | (16 * v4);
      v7 = result[2];
      if ((ctype[2 * v7] & 0x10) != 0)
      {
        v8 = v7 <= 96 ? 0 : -39;
        v4 = (v7 + v8 - 48) | (16 * v4);
        v9 = result[3];
        if ((ctype[2 * v9] & 0x10) != 0)
        {
          v10 = v9 <= 96 ? 0 : -39;
          v4 = (v9 + v10 - 48) | (16 * v4);
          v11 = result[4];
          if ((ctype[2 * v11] & 0x10) != 0)
          {
            v12 = v11 <= 96 ? 0 : -39;
            v4 = (v11 + v12 - 48) | (16 * v4);
            v13 = result[5];
            if ((ctype[2 * v13] & 0x10) != 0)
            {
              v14 = v13 <= 96 ? 0 : -39;
              v4 = (v13 + v14 - 48) | (16 * v4);
              v15 = result[6];
              if ((ctype[2 * v15] & 0x10) != 0)
              {
                v16 = v15 <= 96 ? 0 : -39;
                v4 = (v15 + v16 - 48) | (16 * v4);
                v17 = result[7];
                if ((ctype[2 * v17] & 0x10) != 0)
                {
                  v18 = v17 <= 96 ? 0 : -39;
                  v4 = (v17 + v18 - 48) | (16 * v4);
                  v19 = result[8];
                  if ((ctype[2 * v19] & 0x10) != 0)
                  {
                    v20 = v19 <= 96 ? 0 : -39;
                    v4 = (v19 + v20 - 48) | (16 * v4);
                    v21 = result[9];
                    if ((ctype[2 * v21] & 0x10) != 0)
                    {
                      if (v21 <= 96)
                      {
                        v22 = 0;
                      }

                      else
                      {
                        v22 = -39;
                      }

                      v4 = (v21 + v22 - 48) | (16 * v4);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    *a2 = v4;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint32x2_t *merge(uint32x2_t *result, int8x8_t *a2, int8x8_t *a3, int a4, int a5)
{
  v5 = result[5].u8[3];
  if (v5 <= 1)
  {
    LOBYTE(v5) = 1;
  }

  v6 = v5 + a2[5].i8[2];
  v7 = v6;
  a3[5].i8[3] = v6;
  v8 = a2[5].u8[3];
  if (v7 > v8)
  {
    LOBYTE(v8) = v7;
  }

  a3[5].i8[3] = v8;
  v9 = a2->i32[1];
  v10 = result->i32[1];
  v11 = v10 & 0xEFFFFFFF | v9 & 0xDBFFFFFF;
  v12 = a2[5].i8[2];
  if (v12)
  {
    v13 = a2->i32[1];
  }

  else
  {
    v13 = result->i32[1];
  }

  v14 = result[4].i16[0] | a2[4].i16[0];
  v15 = result[3].i16[3] | a2[3].i16[3];
  v16 = result[5].i8[1] | a2[5].i8[1];
  v17 = v10 | v9;
  v18 = v13 & 0x20000000;
  v19 = v9 & v10 & 0xC0000000;
  if (v17 < 0)
  {
    v19 = 0x80000000;
  }

  v20 = v11 | v19 | v18;
  v21 = a2[4].i16[2];
  v22 = (result[2].i32[0] << v21) | a2[2].i32[0];
  a3->i32[0] = a2->i32[0];
  a3->i32[1] = v20;
  a3[1] = vorr_s8(vand_s8(vshl_u32(result[1], vdup_n_s32(v21)), 0xFF000000FFLL), a2[1]);
  a3[2].i32[0] = v22;
  a3[4].i16[0] = v14;
  a3[3].i16[3] = v15;
  a3[5].i8[2] = v12 + 1;
  a3[5].i8[1] = v16;
  v23 = result[4].i16[2];
  if ((a4 & a5) != 0)
  {
    v23 = 1;
  }

  a3[4].i16[2] = (v23 + v21) | v21 & 0xFF00;
  v24 = result[5].i8[0];
  if ((a4 & a5) != 0)
  {
    v24 = 1;
  }

  a3[5].i8[0] = v24 + a2[5].i8[0];
  a3[2].i16[3] = result[2].i16[3] + a2[2].i16[3];
  a3[5].i32[1] = result[5].i32[1] + a2[5].i32[1];
  return result;
}

uint64_t arb::obj_decl(uint64_t a1, uint64_t a2, arb *this, uint64_t a4, uint64_t a5)
{
  v5 = *this;
  if (!*this)
  {
    return 0;
  }

  v6 = this;
  v70 = 0;
  if ((v5 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_3:
      v7 = *(v6 + 1);
      v6 = (v6 + 1);
      v5 = v7;
    }

    while ((v7 - 33) > 0xFFFFFFDF);
  }

LABEL_4:
  if (v5 == 35)
  {
    v8 = v6;
    while (1)
    {
      v9 = *(v8 + 1);
      v8 = (v8 + 1);
      v5 = v9;
      if (!v9)
      {
        return 0;
      }

      v10 = *v6;
      v6 = v8;
      if (v10 == 10)
      {
        v6 = v8;
        if ((v5 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }
  }

  if (!v5)
  {
    return 0;
  }

  v15 = arb::alen(v6, 1);
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = *a1 + 88 * v17;
  if (!v17)
  {
    goto LABEL_24;
  }

  v19 = *a1;
  while (1)
  {
    v20 = v17 >> 1;
    *v71 = v6;
    v21 = &v19[88 * (v17 >> 1)];
    v22 = arb::ascan(v71, v15, v21, 1);
    if (!v22)
    {
      break;
    }

    if (v22 > 0)
    {
      v17 -= v20 + 1;
    }

    else
    {
      v18 = &v19[88 * (v17 >> 1)];
      v17 >>= 1;
    }

    if (v22 > 0)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = 0;
    }

    v19 += 88 * v23;
    if (!v17)
    {
      goto LABEL_24;
    }
  }

  if (!v19)
  {
LABEL_24:
    v21 = v18;
  }

  v69 = 0x2E8BA2E8BA2E8BA3 * ((v21 - v16) >> 3);
  v24 = v15 + v6;
  v25 = *(v15 + v6);
  if (!*(v15 + v6))
  {
    return 0;
  }

  if ((v25 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_27:
      v26 = *++v24;
      v25 = v26;
    }

    while ((v26 - 33) > 0xFFFFFFDF);
  }

LABEL_28:
  if (v25 == 35)
  {
    v27 = v24;
    while (1)
    {
      v28 = *++v27;
      v25 = v28;
      if (!v28)
      {
        return 0;
      }

      v29 = *v24;
      v24 = v27;
      if (v29 == 10)
      {
        v24 = v27;
        if ((v25 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }
  }

  if (v25 != 61)
  {
    return 0;
  }

  v32 = v24[1];
  v31 = v24 + 1;
  v30 = v32;
  if (v32)
  {
    if ((v30 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_37:
        v33 = *++v31;
        v30 = v33;
      }

      while ((v33 - 33) > 0xFFFFFFDF);
    }

LABEL_38:
    if (v30 == 35)
    {
      ++v31;
      while (1)
      {
        v30 = *v31;
        if (!*v31)
        {
          break;
        }

        v34 = *(v31++ - 1);
        if (v34 == 10)
        {
          --v31;
          if ((v30 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_37;
          }

          goto LABEL_38;
        }
      }
    }
  }

  v35 = 0;
  do
  {
    v36 = *(v6 + ++v35);
  }

  while ((ctype[2 * v36] & 0x40) != 0);
  v37 = (v6 + v35);
  if (v36)
  {
    if ((v36 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_49:
        v38 = *(v37 + 1);
        v37 = (v37 + 1);
        v36 = v38;
      }

      while ((v38 - 33) > 0xFFFFFFDF);
    }

LABEL_50:
    if (v36 == 35)
    {
      v37 = (v37 + 1);
      while (1)
      {
        v36 = *v37;
        if (!*v37)
        {
          break;
        }

        v39 = *(v37 - 1);
        v37 = (v37 + 1);
        if (v39 == 10)
        {
          v37 = (v37 - 1);
          if ((v36 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_49;
          }

          goto LABEL_50;
        }
      }
    }
  }

  *v71 = 0;
  v68 = 0;
  if (!arb::aidx(v37, v71, &v68, v14))
  {
    v70 = -1;
    arb::obj_declare(a1, &v69, a2, v6, v35, &v70, v31, a4, a5);
    return 1;
  }

  v40 = a1;
  v41 = a5;
  if (v68 != -1)
  {
    v68 = *v71 - 1;
  }

  *v71 = 0;
  v42 = *v31;
  if (!*v31)
  {
    goto LABEL_68;
  }

  if ((v42 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_61:
      v43 = *++v31;
      v42 = v43;
    }

    while ((v43 - 33) > 0xFFFFFFDF);
  }

LABEL_62:
  if (v42 == 35)
  {
    v44 = v31;
    while (1)
    {
      v45 = *++v44;
      v42 = v45;
      if (!v45)
      {
        break;
      }

      v46 = *v31;
      v31 = v44;
      if (v46 == 10)
      {
        v31 = v44;
        if ((v42 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }

LABEL_68:
    v47 = 0;
    goto LABEL_69;
  }

  if (v42 == 123)
  {
    v63 = v31[1];
    v47 = (v31 + 1);
    v62 = v63;
    if (v63)
    {
      if ((v62 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_100:
          v64 = *(v47 + 1);
          v47 = (v47 + 1);
          v62 = v64;
        }

        while ((v64 - 33) > 0xFFFFFFDF);
      }

LABEL_101:
      if (v62 == 35)
      {
        v47 = (v47 + 1);
        while (1)
        {
          v62 = *v47;
          if (!*v47)
          {
            break;
          }

          v65 = *(v47 - 1);
          v47 = (v47 + 1);
          if (v65 == 10)
          {
            v47 = (v47 - 1);
            if ((v62 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_100;
            }

            goto LABEL_101;
          }
        }
      }
    }
  }

  else
  {
    v47 = 0;
  }

  v40 = a1;
  v41 = a5;
LABEL_69:
  v70 = 0;
  v48 = arb::obj_declare(v40, &v69, a2, v6, v35, &v70, v47, a4, v41);
  if (v48)
  {
    v49 = v48;
    while (v70 <= v68)
    {
      v50 = *v49;
      if (!*v49)
      {
        break;
      }

      if ((v50 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_74:
          v51 = *++v49;
          v50 = v51;
        }

        while ((v51 - 33) > 0xFFFFFFDF);
      }

LABEL_75:
      if (v50 == 35)
      {
        v52 = v49;
        while (1)
        {
          v53 = *++v52;
          v50 = v53;
          if (!v53)
          {
            return 1;
          }

          v54 = *v49;
          v49 = v52;
          if (v54 == 10)
          {
            v49 = v52;
            if ((v50 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_74;
            }

            goto LABEL_75;
          }
        }
      }

      if (v50 != 44)
      {
        return 1;
      }

      v57 = v49[1];
      v55 = (v49 + 1);
      v56 = v57;
      if (v57)
      {
        if ((v56 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_84:
            v58 = *(v55 + 1);
            v55 = (v55 + 1);
            v56 = v58;
          }

          while ((v58 - 33) > 0xFFFFFFDF);
        }

LABEL_85:
        if (v56 == 35)
        {
          v55 = (v55 + 1);
          while (1)
          {
            v56 = *v55;
            if (!*v55)
            {
              break;
            }

            v59 = *(v55 - 1);
            v55 = (v55 + 1);
            if (v59 == 10)
            {
              v55 = (v55 - 1);
              if ((v56 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_84;
              }

              goto LABEL_85;
            }
          }
        }
      }

      v49 = arb::obj_declare(a1, &v69, a2, v6, v35, &v70, v55, a4, a5);
      if (!v49)
      {
        goto LABEL_92;
      }
    }

    return 1;
  }

LABEL_92:
  v60 = a1;
  v61 = *(a1 + 8);
  if (v69 + 1 < v61)
  {
    memcpy((*a1 + 88 * v69), (*a1 + 88 * v69 + 88), 88 * (v61 + ~v69));
    v60 = a1;
    v61 = *(a1 + 8);
  }

  result = 0;
  *(v60 + 8) = v61 - 1;
  return result;
}

unsigned __int8 *arb::obj_alias(uint64_t a1, char *__s1, uint64_t a3)
{
  v6 = strncmp(__s1, "ALIAS", 5uLL);
  result = 0;
  v8 = (__s1 + 5);
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v6)
  {
    return result;
  }

  v10 = *v8;
  if (!*v8)
  {
    v9 = v8;
    goto LABEL_15;
  }

LABEL_7:
  if ((v10 - 33) >= 0xFFFFFFE0)
  {
    do
    {
      v11 = *++v8;
      v10 = v11;
    }

    while ((v11 - 33) > 0xFFFFFFDF);
  }

  if (v10 == 35)
  {
    v12 = v8;
    while (1)
    {
      v13 = *++v8;
      v10 = v13;
      if (!v13)
      {
        goto LABEL_15;
      }

      v14 = *v12;
      v12 = v8;
      if (v14 == 10)
      {
        goto LABEL_7;
      }
    }
  }

  if (!v10)
  {
LABEL_15:
    v15 = 0;
    result = v9;
    v16 = v9;
    i = *v9;
    if (i == 35)
    {
      goto LABEL_18;
    }

    while (i != 59)
    {
      if ((i - 33) < 0xFFFFFFE0)
      {
        result = v16 + 1;
      }

      v16 = &v9[++v15];
      for (i = v9[v15]; i == 35; i = *v16)
      {
LABEL_18:
        if ((i - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_19:
            v18 = *++v16;
            i = v18;
          }

          while ((v18 - 33) > 0xFFFFFFDF);
        }

LABEL_20:
        if (i == 35)
        {
          ++v16;
          while (1)
          {
            i = *v16;
            if (!*v16)
            {
              break;
            }

            v19 = *(v16++ - 1);
            if (v19 == 10)
            {
              --v16;
              if ((i - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_19;
              }

              goto LABEL_20;
            }
          }
        }

        v15 = v16 - v9;
      }
    }

    return result;
  }

  v20 = 0;
  do
  {
    v21 = *(v20 + v8 + 1);
    v20 = (v20 + 1);
  }

  while ((ctype[2 * v21] & 0x40) != 0);
  v22 = v20 + v8;
  if (v21)
  {
    if ((v21 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_36:
        v23 = *++v22;
        v21 = v23;
      }

      while ((v23 - 33) > 0xFFFFFFDF);
    }

LABEL_37:
    if (v21 == 35)
    {
      ++v22;
      while (1)
      {
        v21 = *v22;
        if (!*v22)
        {
          break;
        }

        v24 = *(v22++ - 1);
        if (v24 == 10)
        {
          --v22;
          if ((v21 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_36;
          }

          goto LABEL_37;
        }
      }
    }
  }

  v27 = v22[1];
  v26 = (v22 + 1);
  v25 = v27;
  if (v27)
  {
    if ((v25 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_45:
        v28 = *++v26;
        v25 = v28;
      }

      while ((v28 - 33) > 0xFFFFFFDF);
    }

LABEL_46:
    if (v25 == 35)
    {
      ++v26;
      while (1)
      {
        v25 = *v26;
        if (!*v26)
        {
          break;
        }

        v29 = *(v26++ - 1);
        if (v29 == 10)
        {
          --v26;
          if ((v25 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_45;
          }

          goto LABEL_46;
        }
      }
    }
  }

  v30 = 0;
  v31 = v26;
  v32 = v26;
  if (v25 != 35)
  {
    goto LABEL_55;
  }

  do
  {
LABEL_59:
    if ((v25 - 33) >= 0xFFFFFFE0)
    {
      do
      {
        v33 = *++v32;
        v25 = v33;
      }

      while ((v33 - 33) > 0xFFFFFFDF);
    }

    if (v25 == 35)
    {
      ++v32;
      while (1)
      {
        v25 = *v32;
        if (!*v32)
        {
          break;
        }

        v34 = *(v32++ - 1);
        if (v34 == 10)
        {
          --v32;
          goto LABEL_59;
        }
      }
    }

    v30 = v32 - v26;
    v25 = *v32;
  }

  while (v25 == 35);
LABEL_55:
  while (v25 != 59)
  {
    if ((v25 - 33) < 0xFFFFFFE0)
    {
      v31 = v32 + 1;
    }

    v25 = v26[++v30];
    v32 = &v26[v30];
    if (v25 == 35)
    {
      goto LABEL_59;
    }
  }

  v35 = (v31 - v26);
  v36 = arb::obj_add(a1, v26, (v31 - v26), a3, 0);
  if (v36)
  {
    v37 = *(v36 + 5);
    v38 = *(v36 + 6);
    v39 = *(v36 + 14);
    v40 = *(v36 + 8);
    *v70 = *(v36 + 72);
    v41 = *a1 + 88 * arb::obj_key(a1, v8, v20);
    *(v41 + 40) = v37;
    *(v41 + 48) = v38;
    *(v41 + 56) = v39;
    *(v41 + 64) = v40;
    *(v41 + 72) = *v70;
    goto LABEL_15;
  }

  v71 = v35;
  v43 = *a1;
  v42 = *(a1 + 8);
  if (!v42)
  {
    goto LABEL_78;
  }

  v44 = *a1;
  v45 = *(a1 + 8);
  while (1)
  {
    v46 = v45 >> 1;
    v72 = v26;
    v47 = arb::ascan(&v72, v71, &v44[88 * (v45 >> 1)], 1);
    if (!v47)
    {
      break;
    }

    if (v47 <= 0)
    {
      v45 >>= 1;
    }

    else
    {
      v45 -= v46 + 1;
    }

    if (v47 > 0)
    {
      v48 = v46 + 1;
    }

    else
    {
      v48 = 0;
    }

    v44 += 88 * v48;
    if (!v45)
    {
      goto LABEL_78;
    }
  }

  v9 = v72;
  v50 = &v44[88 * (v45 >> 1)];
  if (!v44)
  {
LABEL_78:
    if (!v42)
    {
      goto LABEL_100;
    }

    while (1)
    {
      v49 = v42 >> 1;
      v72 = v26;
      v50 = &v43[88 * (v42 >> 1)];
      v51 = arb::ascan(&v72, v71, v50, 0);
      if (!v51)
      {
        break;
      }

      if (v51 <= 0)
      {
        v42 >>= 1;
      }

      else
      {
        v42 -= v49 + 1;
      }

      if (v51 > 0)
      {
        v52 = v49 + 1;
      }

      else
      {
        v52 = 0;
      }

      v43 += 88 * v52;
      if (!v42)
      {
        goto LABEL_100;
      }
    }

    v9 = v72;
    if (!v43)
    {
LABEL_100:
      v57 = *a1 + 88 * arb::obj_key(a1, v8, v20);
      *(v57 + 40) = v26;
      *(v57 + 48) = v20;
      *(v57 + 56) = -1;
      *(v57 + 72) = 0;
      *(v57 + 80) = 0;
      *(v57 + 64) = 0;
      goto LABEL_15;
    }
  }

  v53 = arb::obj_key(a1, v8, v20);
  v54 = *v9;
  if (*v9)
  {
    if ((v54 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_93:
        v55 = *++v9;
        v54 = v55;
      }

      while ((v55 - 33) > 0xFFFFFFDF);
    }

LABEL_94:
    if (v54 == 35)
    {
      ++v9;
      while (1)
      {
        v54 = *v9;
        if (!*v9)
        {
          break;
        }

        v56 = *(v9++ - 1);
        if (v56 == 10)
        {
          --v9;
          if ((v54 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_93;
          }

          goto LABEL_94;
        }
      }
    }
  }

  v58 = 0;
  v59 = v9;
  v60 = v9;
  if (v54 != 35)
  {
    goto LABEL_104;
  }

  do
  {
LABEL_108:
    if ((v54 - 33) >= 0xFFFFFFE0)
    {
      do
      {
        v61 = *++v60;
        v54 = v61;
      }

      while ((v61 - 33) > 0xFFFFFFDF);
    }

    if (v54 == 35)
    {
      ++v60;
      while (1)
      {
        v54 = *v60;
        if (!*v60)
        {
          break;
        }

        v62 = *(v60++ - 1);
        if (v62 == 10)
        {
          --v60;
          goto LABEL_108;
        }
      }
    }

    v58 = v60 - v9;
    v54 = *v60;
  }

  while (v54 == 35);
LABEL_104:
  while (v54 != 59)
  {
    if ((v54 - 33) < 0xFFFFFFE0)
    {
      v59 = v60 + 1;
    }

    v54 = v9[++v58];
    v60 = &v9[v58];
    if (v54 == 35)
    {
      goto LABEL_108;
    }
  }

  v63 = *(v50 + 6);
  v64 = *(v50 + 14);
  v65 = v59 - v9;
  if (v59 == v9)
  {
    v67 = *(v50 + 8);
    v68 = *(v50 + 9);
    v66 = *(v50 + 10);
  }

  else
  {
    v66 = *(v50 + 10) | 0x20;
    v67 = v9;
    v68 = v65;
  }

  v69 = *a1 + 88 * v53;
  *(v69 + 40) = *(v50 + 5);
  *(v69 + 48) = v63;
  *(v69 + 56) = v64;
  *(v69 + 64) = v67;
  *(v69 + 72) = v68;
  *(v69 + 80) = v66;
  return &v9[v65];
}

char *arb::isunpremult(uint64_t a1, char *__s1, _BYTE *a3)
{
  v143 = 0;
  v6 = strncmp(__s1, "DIVA", 4uLL);
  v8 = (__s1 + 4);
  if (v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = __s1 + 4;
  }

  *v144 = v9;
  if (!v6)
  {
    v10 = *v8;
    if ((v10 - 33) >= 0xFFFFFFE0)
    {
LABEL_38:
      if ((v10 - 33) >= 0xFFFFFFE0)
      {
        do
        {
          v24 = *(v8 + 1);
          v8 = (v8 + 1);
          v10 = v24;
        }

        while ((v24 - 33) > 0xFFFFFFDF);
      }

      if (v10 == 35)
      {
        v8 = (v8 + 1);
        while (1)
        {
          v10 = *v8;
          if (!*v8)
          {
            break;
          }

          v25 = *(v8 - 1);
          v8 = (v8 + 1);
          if (v25 == 10)
          {
            v8 = (v8 - 1);
            goto LABEL_38;
          }
        }
      }

      v26 = arb::asymbol(v8, v144, &v143, v7);
      if (v8 != *v144)
      {
        return 0;
      }

      v29 = v26;
      if ((v143 + *v144) == v26 || !strncmp(v26 - 4, "xyzw", 4uLL))
      {
        if (!v29)
        {
          return 0;
        }
      }

      else
      {
        v30 = strncmp(v29 - 4, "rgba", 4uLL);
        result = 0;
        if (v30 || !v29)
        {
          return result;
        }
      }

      v31 = *v29;
      if (*v29)
      {
        if ((v31 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_56:
            v32 = *++v29;
            v31 = v32;
          }

          while ((v32 - 33) > 0xFFFFFFDF);
        }

LABEL_57:
        if (v31 == 35)
        {
          v33 = v29;
          while (1)
          {
            v34 = *++v33;
            v31 = v34;
            if (!v34)
            {
              break;
            }

            v35 = *v29;
            v29 = v33;
            if (v35 == 10)
            {
              v29 = v33;
              if ((v31 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_56;
              }

              goto LABEL_57;
            }
          }
        }

        else if (v31 == 44)
        {
          v45 = *(v29 + 1);
          v44 = (v29 + 1);
          v43 = v45;
          if (v45)
          {
            if ((v43 - 33) >= 0xFFFFFFE0)
            {
              do
              {
LABEL_77:
                v46 = *(v44 + 1);
                v44 = (v44 + 1);
                v43 = v46;
              }

              while ((v46 - 33) > 0xFFFFFFDF);
            }

LABEL_78:
            if (v43 == 35)
            {
              v44 = (v44 + 1);
              while (1)
              {
                v43 = *v44;
                if (!*v44)
                {
                  break;
                }

                v47 = *(v44 - 1);
                v44 = (v44 + 1);
                if (v47 == 10)
                {
                  v44 = (v44 - 1);
                  if ((v43 - 33) >= 0xFFFFFFE0)
                  {
                    goto LABEL_77;
                  }

                  goto LABEL_78;
                }
              }
            }
          }

LABEL_85:
          result = arb::asymbol(v44, v144, &v143, v27);
          v48 = *v144;
          if (v44 == *v144)
          {
            v49 = v143;
            if (v143 + *v144 == result || (v50 = result - 4, v51 = result, v52 = strncmp(result - 4, "xyzw", 4uLL), result = v51, !v52))
            {
              if (!result)
              {
                return result;
              }
            }

            else
            {
              v53 = strncmp(v50, "rgba", 4uLL);
              result = 0;
              if (v53 || !v51)
              {
                return result;
              }
            }

            v54 = *(a1 + 8);
            if (v54)
            {
              v55 = *a1;
              while (1)
              {
                v56 = v54 >> 1;
                v145 = v48;
                v57 = v55 + 88 * (v54 >> 1);
                v58 = arb::ascan(&v145, v49, v57, 1);
                if (!v58)
                {
                  break;
                }

                if (v58 <= 0)
                {
                  v54 >>= 1;
                }

                else
                {
                  v54 -= v56 + 1;
                }

                if (v58 > 0)
                {
                  v59 = v56 + 1;
                }

                else
                {
                  v59 = 0;
                }

                v55 += 88 * v59;
                if (!v54)
                {
                  goto LABEL_102;
                }
              }
            }

            else
            {
LABEL_102:
              v57 = 0;
            }

            if (*(v57 + 40) != *(a1 + 48))
            {
              return 0;
            }

            result = __s1;
            if (*(v57 + 56) != *(a1 + 56))
            {
              return 0;
            }

            goto LABEL_105;
          }

          return 0;
        }
      }

      v44 = 0;
      goto LABEL_85;
    }
  }

  v11 = *__s1;
  if (v11 == 77)
  {
    if (__s1[1] != 65)
    {
      return 0;
    }

    if (__s1[2] != 88)
    {
      return 0;
    }

    v12 = __s1 + 3;
    *v144 = __s1 + 3;
    v13 = __s1[3];
    if ((v13 - 33) < 0xFFFFFFE0)
    {
      return 0;
    }

    if (*a3 != 82)
    {
      return 0;
    }

    if (a3[1] != 67)
    {
      return 0;
    }

    if (a3[2] != 80)
    {
      return 0;
    }

    v15 = a3[3];
    v14 = a3 + 3;
    if ((v15 - 33) < 0xFFFFFFE0)
    {
      return 0;
    }

    if ((v13 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_15:
        v16 = *++v12;
        v13 = v16;
      }

      while ((v16 - 33) > 0xFFFFFFDF);
    }

LABEL_16:
    if (v13 == 35)
    {
      ++v12;
      while (1)
      {
        v13 = *v12;
        if (!*v12)
        {
          break;
        }

        v17 = *(v12++ - 1);
        if (v17 == 10)
        {
          --v12;
          if ((v13 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_15;
          }

          goto LABEL_16;
        }
      }
    }

    v36 = -1;
    do
    {
      v37 = v12[++v36];
    }

    while ((ctype[2 * v37] & 0x40) != 0);
    if (!v37)
    {
      return 0;
    }

    v38 = &v12[v36];
    if ((v37 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_67:
        v39 = *++v38;
        v37 = v39;
      }

      while ((v39 - 33) > 0xFFFFFFDF);
    }

LABEL_68:
    if (v37 == 35)
    {
      v40 = v38;
      while (1)
      {
        v41 = *++v40;
        v37 = v41;
        if (!v41)
        {
          return 0;
        }

        v42 = *v38;
        v38 = v40;
        if (v42 == 10)
        {
          v38 = v40;
          if ((v37 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_67;
          }

          goto LABEL_68;
        }
      }
    }

    if (v37 != 46)
    {
      return 0;
    }

    v139 = v12;
    v141 = v36;
    v69 = v38[1];
    v68 = (v38 + 1);
    v67 = v69;
    if (v69)
    {
      if ((v67 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_120:
          v70 = *++v68;
          v67 = v70;
        }

        while ((v70 - 33) > 0xFFFFFFDF);
      }

LABEL_121:
      if (v67 == 35)
      {
        ++v68;
        while (1)
        {
          v67 = *v68;
          if (!*v68)
          {
            break;
          }

          v71 = *(v68++ - 1);
          if (v71 == 10)
          {
            --v68;
            if ((v67 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_120;
            }

            goto LABEL_121;
          }
        }
      }
    }

    *v144 = v68;
    v77 = *v68;
    if (v77 != 119 && v77 != 97)
    {
      return 0;
    }

    result = arb::achr((v68 + 1), 0x2C);
    if (!result)
    {
      return result;
    }

    v79 = result;
    v80 = arb::asymbol(result, v144, &v143, v78);
    v82 = v143;
    v81 = *v144;
    result = arb::isidentity(v79, *v144, v143, v80, 4);
    if (!result)
    {
      return result;
    }

    v83 = arb::obj_search(*a1, *(a1 + 8), v81, v82);
    if (*(v83 + 5) != *(a1 + 48))
    {
      return 0;
    }

    if (*(v83 + 14) != *(a1 + 56))
    {
      return 0;
    }

    v84 = arb::achr(v80, 0x2C);
    arb::asymbol(v84, v144, &v143, v85);
    v86 = *v144;
    if (v84 != *v144)
    {
      return 0;
    }

    v87 = v143;
    v88 = arb::obj_search(*a1, *(a1 + 8), *v144, v143);
    if ((!v88 || *(v88 + 5) != &constantKind || !arb::isepsilon(*(v88 + 8), v87 + v86, v89)) && !arb::isepsilon(v84, v87 + v86, v89))
    {
      return 0;
    }

    v115 = arb::atok(v14, v90);
    if (strncmp(v115, v139, v141) || (ctype[2 * v115[v141]] & 0x40) != 0)
    {
      return 0;
    }

    v117 = arb::atok(&v115[v141], v116);
    result = arb::achr(v117, 0x2E);
    if (!result)
    {
      return result;
    }

    v118 = *result;
    if (v118 == 114)
    {
      if (result[1] != 103 || result[2] != 98)
      {
        return 0;
      }
    }

    else if (v118 != 120 || result[1] != 121 || result[2] != 122)
    {
      return 0;
    }

    result = arb::achr((result + 3), 0x2C);
    if (!result)
    {
      return result;
    }

    v119 = result;
    if (strncmp(result, v139, v141) || (ctype[2 * v119[v141]] & 0x40) != 0)
    {
      return 0;
    }

    result = arb::achr(&v119[v141], 0x2E);
    if (!result)
    {
      return result;
    }

    v120 = *result;
    if (v120 != 119 && v120 != 97)
    {
      return 0;
    }

    v121 = arb::achr((result + 1), 0x3B);
    if (*v121 != 83)
    {
      return 0;
    }

    if (v121[1] != 87)
    {
      return 0;
    }

    if (v121[2] != 90)
    {
      return 0;
    }

    if (v121[3] - 33 < 0xFFFFFFE0)
    {
      return 0;
    }

    v123 = arb::atok(v121 + 3, v122);
    if (strncmp(v123, v139, v141) || (ctype[2 * v123[v141]] & 0x40) != 0)
    {
      return 0;
    }

    result = arb::achr(&v123[v141], 0x2E);
    if (!result)
    {
      return result;
    }

    v124 = *result;
    if (v124 != 119 && v124 != 97)
    {
      return 0;
    }

    result = arb::achr((result + 1), 0x2C);
    if (!result)
    {
      return result;
    }

    v125 = result;
    if (strncmp(result, v139, v141) || (ctype[2 * v125[v141]] & 0x40) != 0)
    {
      return 0;
    }

    result = arb::achr(&v125[v141], 0x2C);
    if (!result)
    {
      return result;
    }

    if (*result == 120)
    {
      result = arb::achr((result + 1), 0x2C);
      if (!result)
      {
        return result;
      }

      if (*result == 121)
      {
        result = arb::achr((result + 1), 0x2C);
        if (!result)
        {
          return result;
        }

        if (*result == 122)
        {
          result = arb::achr((result + 1), 0x2C);
          if (!result)
          {
            return result;
          }

          if (*result == 49)
          {
            result = arb::achr((result + 1), 0x3B);
            if (result)
            {
              v127 = result;
              if (*result != 77 || result[1] != 85 || result[2] != 76)
              {
                return 0;
              }

              v128 = arb::atok(result + 3, v126);
              v130 = arb::asymbol(v128, v144, &v143, v129);
              result = arb::achr(v130, 0x2C);
              if (result)
              {
                v132 = result;
                v133 = arb::asymbol(result, v144, &v143, v131);
                v135 = v143;
                v134 = *v144;
                result = arb::isidentity(v132, *v144, v143, v133, 4);
                if (result)
                {
                  v136 = arb::obj_search(*a1, *(a1 + 8), v134, v135);
                  if (*(v136 + 5) != *(a1 + 48) || *(v136 + 14) != *(a1 + 56))
                  {
                    return 0;
                  }

                  result = arb::achr(v133, 0x2C);
                  if (result)
                  {
                    v137 = result;
                    if (strncmp(result, v139, v141))
                    {
                      return 0;
                    }

                    if ((ctype[2 * v137[v141]] & 0x40) != 0)
                    {
                      return 0;
                    }

                    v138 = arb::achr(&v137[v141], 0x3B);
                    result = v127;
                    if (!v138)
                    {
                      return 0;
                    }

LABEL_105:
                    *(a1 + 32) = __s1;
                    *(a1 + 40) = result;
                    return result;
                  }
                }
              }
            }

            return result;
          }
        }
      }
    }

    return 0;
  }

  if (v11 != 82)
  {
    return 0;
  }

  if (__s1[1] != 67)
  {
    return 0;
  }

  if (__s1[2] != 80)
  {
    return 0;
  }

  v18 = __s1 + 3;
  *v144 = __s1 + 3;
  v19 = __s1[3];
  if ((v19 - 33) < 0xFFFFFFE0)
  {
    return 0;
  }

  if (*a3 != 83)
  {
    return 0;
  }

  if (a3[1] != 87)
  {
    return 0;
  }

  if (a3[2] != 90)
  {
    return 0;
  }

  v21 = a3[3];
  v20 = a3 + 3;
  if ((v21 - 33) < 0xFFFFFFE0)
  {
    return 0;
  }

  if ((v19 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_31:
      v22 = *++v18;
      v19 = v22;
    }

    while ((v22 - 33) > 0xFFFFFFDF);
  }

LABEL_32:
  if (v19 == 35)
  {
    ++v18;
    while (1)
    {
      v19 = *v18;
      if (!*v18)
      {
        break;
      }

      v23 = *(v18++ - 1);
      if (v23 == 10)
      {
        --v18;
        if ((v19 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }
  }

  v60 = -1;
  do
  {
    v61 = v18[++v60];
  }

  while ((ctype[2 * v61] & 0x40) != 0);
  if (!v61)
  {
    return 0;
  }

  v62 = &v18[v60];
  if ((v61 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_110:
      v63 = *++v62;
      v61 = v63;
    }

    while ((v63 - 33) > 0xFFFFFFDF);
  }

LABEL_111:
  if (v61 == 35)
  {
    v64 = v62;
    while (1)
    {
      v65 = *++v64;
      v61 = v65;
      if (!v65)
      {
        return 0;
      }

      v66 = *v62;
      v62 = v64;
      if (v66 == 10)
      {
        v62 = v64;
        if ((v61 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_110;
        }

        goto LABEL_111;
      }
    }
  }

  v140 = v18;
  v142 = v60;
  if (v61 != 46)
  {
    return 0;
  }

  v74 = v62[1];
  v73 = (v62 + 1);
  v72 = v74;
  if (v74)
  {
    if ((v72 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_130:
        v75 = *++v73;
        v72 = v75;
      }

      while ((v75 - 33) > 0xFFFFFFDF);
    }

LABEL_131:
    if (v72 == 35)
    {
      ++v73;
      while (1)
      {
        v72 = *v73;
        if (!*v73)
        {
          break;
        }

        v76 = *(v73++ - 1);
        if (v76 == 10)
        {
          --v73;
          if ((v72 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_130;
          }

          goto LABEL_131;
        }
      }
    }
  }

  *v144 = v73;
  v91 = *v73;
  if (v91 == 114)
  {
    if (v73[1] != 103 || v73[2] != 98)
    {
      return 0;
    }
  }

  else if (v91 != 120 || v73[1] != 121 || v73[2] != 122)
  {
    return 0;
  }

  result = arb::achr((v73 + 3), 0x2C);
  if (!result)
  {
    return result;
  }

  arb::asymbol(result, v144, &v143, v92);
  v94 = v143;
  v93 = *v144;
  v95 = arb::obj_search(*a1, *(a1 + 8), *v144, v143);
  if (*(v95 + 5) != *(a1 + 48))
  {
    return 0;
  }

  if (*(v95 + 14) != *(a1 + 56))
  {
    return 0;
  }

  v96 = v94 + v93;
  if (*(v94 + v93) != 46)
  {
    return 0;
  }

  v97 = v96[1];
  if (v97 != 119 && v97 != 97)
  {
    return 0;
  }

  result = arb::achr((v96 + 2), 0x3B);
  if (!result)
  {
    return result;
  }

  v99 = arb::atok(v20, v98);
  if (strncmp(v99, v140, v142) || (ctype[2 * v99[v142]] & 0x40) != 0)
  {
    return 0;
  }

  result = arb::achr(&v99[v142], 0x2E);
  if (!result)
  {
    return result;
  }

  v100 = *result;
  if (v100 != 119 && v100 != 97)
  {
    return 0;
  }

  result = arb::achr((result + 1), 0x2C);
  if (!result)
  {
    return result;
  }

  v101 = result;
  if (strncmp(result, v140, v142) || (ctype[2 * v101[v142]] & 0x40) != 0)
  {
    return 0;
  }

  result = arb::achr(&v101[v142], 0x2C);
  if (!result)
  {
    return result;
  }

  if (*result != 120)
  {
    return 0;
  }

  result = arb::achr((result + 1), 0x2C);
  if (!result)
  {
    return result;
  }

  if (*result != 121)
  {
    return 0;
  }

  result = arb::achr((result + 1), 0x2C);
  if (!result)
  {
    return result;
  }

  if (*result != 122)
  {
    return 0;
  }

  result = arb::achr((result + 1), 0x2C);
  if (!result)
  {
    return result;
  }

  if (*result != 49)
  {
    return 0;
  }

  result = arb::achr((result + 1), 0x3B);
  if (result)
  {
    v103 = result;
    if (*result != 77 || result[1] != 85 || result[2] != 76)
    {
      return 0;
    }

    v104 = arb::atok(result + 3, v102);
    v106 = arb::asymbol(v104, v144, &v143, v105);
    result = arb::achr(v106, 0x2C);
    if (result)
    {
      v108 = result;
      v109 = arb::asymbol(result, v144, &v143, v107);
      v111 = v143;
      v110 = *v144;
      result = arb::isidentity(v108, *v144, v143, v109, 4);
      if (result)
      {
        v112 = arb::obj_search(*a1, *(a1 + 8), v110, v111);
        if (*(v112 + 5) != *(a1 + 48) || *(v112 + 14) != *(a1 + 56))
        {
          return 0;
        }

        result = arb::achr(v109, 0x2C);
        if (result)
        {
          v113 = result;
          if (strncmp(result, v140, v142))
          {
            return 0;
          }

          if ((ctype[2 * v113[v142]] & 0x40) != 0)
          {
            return 0;
          }

          v114 = arb::achr(&v113[v142], 0x3B);
          result = v103;
          if (!v114)
          {
            return 0;
          }

          goto LABEL_105;
        }
      }
    }
  }

  return result;
}

unsigned __int8 *arb::aidx(arb *this, char *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *this;
  if (!*this)
  {
    return 0;
  }

  if ((v4 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_3:
      v5 = *(this + 1);
      this = (this + 1);
      v4 = v5;
    }

    while ((v5 - 33) > 0xFFFFFFDF);
  }

LABEL_4:
  if (v4 == 35)
  {
    v6 = this;
    while (1)
    {
      v7 = *(v6 + 1);
      v6 = (v6 + 1);
      v4 = v7;
      if (!v7)
      {
        return 0;
      }

      v8 = *this;
      this = v6;
      if (v8 == 10)
      {
        this = v6;
        if ((v4 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }
    }
  }

  if (v4 != 91)
  {
    return 0;
  }

  v11 = *(this + 1);
  v9 = this + 1;
  v10 = v11;
  if (!v11)
  {
LABEL_21:
    if (a3)
    {
      if (a2)
      {
        *a2 = 0;
      }

      goto LABEL_24;
    }

    return 0;
  }

  if ((v10 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_13:
      v12 = *++v9;
      v10 = v12;
    }

    while ((v12 - 33) > 0xFFFFFFDF);
  }

LABEL_14:
  if (v10 == 35)
  {
    ++v9;
    while (1)
    {
      v10 = *v9;
      if (!*v9)
      {
        goto LABEL_21;
      }

      v13 = *(v9++ - 1);
      if (v13 == 10)
      {
        --v9;
        if ((v10 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }
  }

  if ((v10 - 58) < 0xFFFFFFF6)
  {
    goto LABEL_21;
  }

  v21 = 0;
  do
  {
    v21 = v10 + 10 * v21 - 48;
    v22 = *++v9;
    v10 = v22;
  }

  while ((v22 - 58) > 0xFFFFFFF5);
  if (v10)
  {
    if ((v10 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_44:
        v23 = *++v9;
        v10 = v23;
      }

      while ((v23 - 33) > 0xFFFFFFDF);
    }

LABEL_45:
    if (v10 == 35)
    {
      ++v9;
      while (1)
      {
        v10 = *v9;
        if (!*v9)
        {
          break;
        }

        v24 = *(v9++ - 1);
        if (v24 == 10)
        {
          --v9;
          if ((v10 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_44;
          }

          goto LABEL_45;
        }
      }
    }
  }

  if (a2)
  {
    *a2 = v21;
  }

  if (!a3)
  {
    goto LABEL_26;
  }

  *a3 = v21;
  v15 = *v9;
  if (v15 == 46)
  {
    if (v9[1] != 46)
    {
      goto LABEL_26;
    }

    v26 = v9[2];
    v9 += 2;
    v25 = v26;
    if (v26)
    {
      v27 = v9;
      if ((v25 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_58:
          v28 = *++v27;
          v25 = v28;
        }

        while ((v28 - 33) > 0xFFFFFFDF);
      }

LABEL_59:
      if (v25 == 35)
      {
        v29 = v27;
        while (1)
        {
          v30 = *++v29;
          v25 = v30;
          if (!v30)
          {
            break;
          }

          v31 = *v27;
          v27 = v29;
          if (v31 == 10)
          {
            v27 = v29;
            if ((v25 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_58;
            }

            goto LABEL_59;
          }
        }
      }

      else if ((v25 - 58) >= 0xFFFFFFF6)
      {
        v14 = 0;
        do
        {
          v14 = v25 + 10 * v14 - 48;
          v32 = *++v27;
          v25 = v32;
        }

        while ((v32 - 58) > 0xFFFFFFF5);
        if (!v25)
        {
          goto LABEL_77;
        }

        if ((v25 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_70:
            v33 = *++v27;
            v25 = v33;
          }

          while ((v33 - 33) > 0xFFFFFFDF);
        }

LABEL_71:
        if (v25 == 35)
        {
          v9 = v27 + 1;
          while (1)
          {
            v25 = *v9;
            if (!*v9)
            {
              break;
            }

            v34 = *(v9++ - 1);
            if (v34 == 10)
            {
              v27 = v9 - 1;
              if ((v25 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_70;
              }

              goto LABEL_71;
            }
          }
        }

        else
        {
LABEL_77:
          v9 = v27;
        }

        goto LABEL_25;
      }
    }

LABEL_24:
    v14 = -1;
LABEL_25:
    *a3 = v14;
LABEL_26:
    v15 = *v9;
  }

  if (!v15)
  {
    return 0;
  }

  if ((v15 - 33) >= 0xE0u)
  {
    do
    {
LABEL_29:
      v16 = *++v9;
      LOBYTE(v15) = v16;
    }

    while ((v16 - 33) > 0xDFu);
  }

LABEL_30:
  if (v15 == 35)
  {
    v17 = v9;
    while (1)
    {
      v18 = *++v17;
      LOBYTE(v15) = v18;
      if (!v18)
      {
        return 0;
      }

      v19 = *v9;
      v9 = v17;
      if (v19 == 10)
      {
        v9 = v17;
        if ((v15 - 33) >= 0xE0u)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }
  }

  if (v15 == 93)
  {
    return v9 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t arb::obj_key(char **a1, unsigned __int8 *a2, const char **a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = &(*a1)[88 * v6];
  if (!v6)
  {
    goto LABEL_13;
  }

  v8 = *a1;
  v9 = a1[1];
  while (1)
  {
    v10 = v9 >> 1;
    v29 = a2;
    v11 = &v8[88 * (v9 >> 1)];
    v12 = arb::ascan(&v29, a3, v11, 1);
    if (!v12)
    {
      break;
    }

    if (v12 > 0)
    {
      v9 -= v10 + 1;
    }

    else
    {
      v7 = &v8[88 * (v9 >> 1)];
      v9 >>= 1;
    }

    if (v12 > 0)
    {
      v13 = v10 + 1;
    }

    else
    {
      v13 = 0;
    }

    v8 += 88 * v13;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (!v8)
  {
LABEL_13:
    v14 = 0x2E8BA2E8BA2E8BA3 * ((v7 - v5) >> 3);
    v15 = a1[2];
    v16 = (v6 & 0xFFFFFFFFFFFFFFF0) + 16;
    if (v6 + 1 > v15 && v15 != v16)
    {
      a1[2] = v16;
      v26 = malloc_type_realloc(v5, 88 * v16, 0x10500400A17BEF8uLL);
      v5 = v26;
      *a1 = v26;
      v6 = a1[1];
      v27 = a1[2];
      if (v6 > v27)
      {
        a1[1] = v27;
        v6 = v27;
      }
    }

    if (v6 > v14)
    {
      memmove(&v5[88 * v14 + 88], &v5[88 * v14], 88 * (v6 - v14));
      v5 = *a1;
      v6 = a1[1];
    }

    a1[1] = (v6 + 1);
    v11 = &v5[88 * v14];
    v18 = 0;
    if (a3)
    {
      v19 = 0;
      do
      {
        v20 = a2[v19];
        if ((v20 - 33) <= 0xFFFFFFDF)
        {
          v11[v18++] = v20;
          v21 = &a2[++v19];
          if (a2[v19] == 35)
          {
LABEL_28:
            v22 = 35;
LABEL_30:
            if (v22 == 35)
            {
              ++v21;
              while (1)
              {
                v22 = *v21;
                if (!*v21)
                {
                  break;
                }

                v24 = *(v21++ - 1);
                if (v24 == 10)
                {
                  --v21;
                  if ((v22 - 33) >= 0xFFFFFFE0)
                  {
                    do
                    {
                      v23 = *++v21;
                      v22 = v23;
                    }

                    while ((v23 - 33) > 0xFFFFFFDF);
                  }

                  goto LABEL_30;
                }
              }
            }

            v19 = v21 - a2;
          }
        }

        else
        {
          v21 = &a2[++v19];
          if (a2[v19] == 35)
          {
            goto LABEL_28;
          }
        }
      }

      while (v19 < a3);
    }

    v11[v18] = 0;
    v5 = *a1;
  }

  return 0x2E8BA2E8BA2E8BA3 * ((v11 - v5) >> 3);
}

_BYTE *arb::achr(arb *this, const char *a2)
{
  v2 = *this;
  if (*this)
  {
    if ((v2 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_3:
        v3 = *(this + 1);
        this = (this + 1);
        v2 = v3;
      }

      while ((v3 - 33) > 0xFFFFFFDF);
    }

LABEL_4:
    if (v2 == 35)
    {
      this = (this + 1);
      while (1)
      {
        v2 = *this;
        if (!*this)
        {
          break;
        }

        v4 = *(this - 1);
        this = (this + 1);
        if (v4 == 10)
        {
          this = (this - 1);
          if ((v2 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }
    }
  }

  if (v2 != a2)
  {
    return 0;
  }

  v7 = *(this + 1);
  result = this + 1;
  v6 = v7;
  if (v7)
  {
    if ((v6 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_13:
        v8 = *++result;
        v6 = v8;
      }

      while ((v8 - 33) > 0xFFFFFFDF);
    }

LABEL_14:
    if (v6 == 35)
    {
      ++result;
      while (1)
      {
        v6 = *result;
        if (!*result)
        {
          break;
        }

        v9 = *(result++ - 1);
        if (v9 == 10)
        {
          --result;
          if ((v6 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_13;
          }

          goto LABEL_14;
        }
      }
    }
  }

  return result;
}

char *arb::obj_texop(uint64_t a1, char *a2, unsigned __int8 *a3, unint64_t *a4, int8x8_t *a5)
{
  v5 = 1;
  if (a3[1] == 69)
  {
    v5 = 2;
  }

  v120 = v5;
  if (a3[v5] != 88)
  {
    return 0;
  }

  __s1 = 0;
  v119 = 0;
  v117 = 0;
  v9 = *a3;
  if ((ctype[2 * *a3] & 0x40) != 0)
  {
    v19 = a3 + 2;
    do
    {
      v20 = v9;
      v9 = *(v19 - 1);
      if (v20 == 95 && v9 == 83)
      {
        if (*v19 == 83)
        {
          v10 = 1;
          goto LABEL_6;
        }

        v9 = 83;
      }

      ++v19;
    }

    while ((ctype[2 * v9] & 0x40) != 0);
  }

  v10 = 0;
LABEL_6:
  v11 = a3[2];
  v12 = a3 + 2;
  do
  {
    v14 = *++v12;
    v13 = v14;
  }

  while ((ctype[2 * v14] & 0x40) != 0);
  if (v11 == 88)
  {
    v15 = a4;
  }

  else
  {
    v15 = 0;
  }

  v113 = v10;
  if (v13)
  {
    if ((v13 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_13:
        v16 = *++v12;
        v13 = v16;
      }

      while ((v16 - 33) > 0xFFFFFFDF);
    }

LABEL_14:
    if (v13 == 35)
    {
      ++v12;
      while (1)
      {
        v13 = *v12;
        if (!*v12)
        {
          break;
        }

        v17 = *(v12++ - 1);
        if (v17 == 10)
        {
          --v12;
          if ((v13 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_13;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
      while (v13 == 46)
      {
        v23 = v12[1];
        v21 = v12 + 1;
        v22 = v23;
        if (v23)
        {
          if ((v22 - 33) >= 0xFFFFFFE0)
          {
            do
            {
LABEL_30:
              v24 = *++v21;
              v22 = v24;
            }

            while ((v24 - 33) > 0xFFFFFFDF);
          }

LABEL_31:
          if (v22 == 35)
          {
            ++v21;
            while (1)
            {
              v22 = *v21;
              if (!*v21)
              {
                break;
              }

              v25 = *(v21++ - 1);
              if (v25 == 10)
              {
                --v21;
                if ((v22 - 33) >= 0xFFFFFFE0)
                {
                  goto LABEL_30;
                }

                goto LABEL_31;
              }
            }
          }
        }

        v12 = v21 - 1;
        do
        {
          v26 = *++v12;
          v13 = v26;
        }

        while ((ctype[2 * v26] & 0x40) != 0);
        if (!v13)
        {
          break;
        }

        if ((v13 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_41:
            v27 = *++v12;
            v13 = v27;
          }

          while ((v27 - 33) > 0xFFFFFFDF);
        }

LABEL_42:
        if (v13 == 35)
        {
          ++v12;
          while (1)
          {
            v13 = *v12;
            if (!*v12)
            {
              goto LABEL_49;
            }

            v28 = *(v12++ - 1);
            if (v28 == 10)
            {
              --v12;
              if ((v13 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_41;
              }

              goto LABEL_42;
            }
          }
        }
      }
    }
  }

LABEL_49:
  v29 = arb::asymbol(v12, &v119, &v117, a4);
  v31 = *v29;
  if (!*v29)
  {
    goto LABEL_102;
  }

  v32 = v29;
LABEL_51:
  if ((v31 - 33) >= 0xFFFFFFE0)
  {
    do
    {
      v33 = *++v32;
      v31 = v33;
    }

    while ((v33 - 33) > 0xFFFFFFDF);
  }

  if (v31 == 35)
  {
    v34 = v32;
    while (1)
    {
      v35 = *++v32;
      v31 = v35;
      if (!v35)
      {
        goto LABEL_102;
      }

      v36 = *v34;
      v34 = v32;
      if (v36 == 10)
      {
        goto LABEL_51;
      }
    }
  }

  if (v31 != 40)
  {
    goto LABEL_83;
  }

  while (1)
  {
    if (v31 != 35)
    {
      v39 = *++v32;
      v31 = v39;
      goto LABEL_69;
    }

LABEL_62:
    if (v31 == 35)
    {
      break;
    }

LABEL_69:
    v40 = v31 == 41 || v31 == 0;
    if (v40)
    {
      goto LABEL_74;
    }
  }

  ++v32;
  while (1)
  {
    v31 = *v32;
    if (!*v32)
    {
      break;
    }

    v38 = *(v32++ - 1);
    if (v38 == 10)
    {
      --v32;
      if ((v31 - 33) >= 0xFFFFFFE0)
      {
        do
        {
          v37 = *++v32;
          v31 = v37;
        }

        while ((v37 - 33) > 0xFFFFFFDF);
      }

      goto LABEL_62;
    }
  }

LABEL_74:
  v41 = *++v32;
  v31 = v41;
  if (v41)
  {
    if ((v31 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_76:
        v42 = *++v32;
        v31 = v42;
      }

      while ((v42 - 33) > 0xFFFFFFDF);
    }

LABEL_77:
    if (v31 == 35)
    {
      v43 = v32;
      while (1)
      {
        v44 = *++v43;
        v31 = v44;
        if (!v44)
        {
          goto LABEL_102;
        }

        v45 = *v32;
        v32 = v43;
        if (v45 == 10)
        {
          v32 = v43;
          if ((v31 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_76;
          }

          goto LABEL_77;
        }
      }
    }

LABEL_83:
    if (!v31)
    {
      goto LABEL_102;
    }

    if ((v31 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_85:
        v46 = *++v32;
        v31 = v46;
      }

      while ((v46 - 33) > 0xFFFFFFDF);
    }

LABEL_86:
    if (v31 == 35)
    {
      v47 = v32;
      while (1)
      {
        v48 = *++v47;
        v31 = v48;
        if (!v48)
        {
          goto LABEL_102;
        }

        v49 = *v32;
        v32 = v47;
        if (v49 == 10)
        {
          v32 = v47;
          if ((v31 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_85;
          }

          goto LABEL_86;
        }
      }
    }

    if (v31 != 44)
    {
      goto LABEL_102;
    }

    v52 = v32[1];
    v51 = (v32 + 1);
    v50 = v52;
    if (v52)
    {
      if ((v50 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_95:
          v53 = *(v51 + 1);
          v51 = (v51 + 1);
          v50 = v53;
        }

        while ((v53 - 33) > 0xFFFFFFDF);
      }

LABEL_96:
      if (v50 == 35)
      {
        v51 = (v51 + 1);
        while (1)
        {
          v50 = *v51;
          if (!*v51)
          {
            break;
          }

          v54 = *(v51 - 1);
          v51 = (v51 + 1);
          if (v54 == 10)
          {
            v51 = (v51 - 1);
            if ((v50 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_95;
            }

            goto LABEL_96;
          }
        }
      }
    }
  }

  else
  {
LABEL_102:
    v51 = 0;
  }

  v115 = 0;
  *v116 = 0;
  v55 = arb::asymbol(v51, v116, &v115, v30);
  v56 = v55;
  if (v11 == 81)
  {
    v15 = 0;
    v57 = 1;
    v58 = *v55;
    if (!*v55)
    {
      goto LABEL_131;
    }

LABEL_109:
    v60 = v56;
    if ((v58 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_110:
        v61 = *++v60;
        v58 = v61;
      }

      while ((v61 - 33) > 0xFFFFFFDF);
    }

LABEL_111:
    if (v58 == 35)
    {
      v62 = v60;
      while (1)
      {
        v63 = *++v62;
        v58 = v63;
        if (!v63)
        {
          goto LABEL_131;
        }

        v64 = *v60;
        v60 = v62;
        if (v64 == 10)
        {
          v60 = v62;
          if ((v58 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_110;
          }

          goto LABEL_111;
        }
      }
    }

    if (v58 != 44)
    {
      goto LABEL_131;
    }

    v69 = *(v60 + 1);
    v68 = (v60 + 1);
    v67 = v69;
    if (v69)
    {
      if ((v67 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_124:
          v70 = *(v68 + 1);
          v68 = (v68 + 1);
          v67 = v70;
        }

        while ((v70 - 33) > 0xFFFFFFDF);
      }

LABEL_125:
      if (v67 == 35)
      {
        v68 = (v68 + 1);
        while (1)
        {
          v67 = *v68;
          if (!*v68)
          {
            break;
          }

          v71 = *(v68 - 1);
          v68 = (v68 + 1);
          if (v71 == 10)
          {
            v68 = (v68 - 1);
            if ((v67 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_124;
            }

            goto LABEL_125;
          }
        }
      }
    }
  }

  else
  {
    if (v51 != *v116 || (v59 = v55, &v115[*v116] != v55) && (v65 = strncmp(v55 - 4, "xyzw", 4uLL), v59 = v56, v65) && (v66 = strncmp(v56 - 4, "rgba", 4uLL), v59 = v56, v66))
    {
      v59 = 0;
    }

    v57 = v59 != 0;
    v58 = *v56;
    if (*v56)
    {
      goto LABEL_109;
    }

LABEL_131:
    v68 = 0;
  }

  v73 = arb::obj_add(a1, *v116, v115, a5, 0);
  if (v11 == 68)
  {
    if (a5)
    {
      v74 = arb::asymbol(v68, &__s1, &v120, v72);
      arb::obj_add(a1, __s1, v120, a5, 1);
      v76 = *v74;
      if (!*v74)
      {
        goto LABEL_153;
      }

      if ((v76 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_136:
          v77 = *++v74;
          v76 = v77;
        }

        while ((v77 - 33) > 0xFFFFFFDF);
      }

LABEL_137:
      if (v76 == 35)
      {
        v78 = v74;
        while (1)
        {
          v79 = *++v78;
          v76 = v79;
          if (!v79)
          {
            break;
          }

          v80 = *v74;
          v74 = v78;
          if (v80 == 10)
          {
            v74 = v78;
            if ((v76 - 33) >= 0xFFFFFFE0)
            {
              goto LABEL_136;
            }

            goto LABEL_137;
          }
        }

LABEL_153:
        v82 = 0;
      }

      else
      {
        if (v76 != 44)
        {
          goto LABEL_153;
        }

        v83 = v74[1];
        v82 = (v74 + 1);
        v81 = v83;
        if (v83)
        {
          if ((v81 - 33) >= 0xFFFFFFE0)
          {
            do
            {
LABEL_146:
              v84 = *(v82 + 1);
              v82 = (v82 + 1);
              v81 = v84;
            }

            while ((v84 - 33) > 0xFFFFFFDF);
          }

LABEL_147:
          if (v81 == 35)
          {
            v82 = (v82 + 1);
            while (1)
            {
              v81 = *v82;
              if (!*v82)
              {
                break;
              }

              v85 = *(v82 - 1);
              v82 = (v82 + 1);
              if (v85 == 10)
              {
                v82 = (v82 - 1);
                if ((v81 - 33) >= 0xFFFFFFE0)
                {
                  goto LABEL_146;
                }

                goto LABEL_147;
              }
            }
          }
        }
      }

      v86 = arb::asymbol(v82, &__s1, &v120, v75);
      arb::obj_add(a1, __s1, v120, a5, 1);
      v87 = *v86;
      if (*v86)
      {
        if ((v87 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_156:
            v88 = *++v86;
            v87 = v88;
          }

          while ((v88 - 33) > 0xFFFFFFDF);
        }

LABEL_157:
        if (v87 == 35)
        {
          v89 = v86;
          while (1)
          {
            v90 = *++v89;
            v87 = v90;
            if (!v90)
            {
              goto LABEL_173;
            }

            v91 = *v86;
            v86 = v89;
            if (v91 == 10)
            {
              v86 = v89;
              if ((v87 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_156;
              }

              goto LABEL_157;
            }
          }
        }

        if (v87 != 44)
        {
          goto LABEL_173;
        }

        v93 = v86[1];
        v68 = (v86 + 1);
        v92 = v93;
        if (v93)
        {
          if ((v92 - 33) >= 0xFFFFFFE0)
          {
            do
            {
LABEL_166:
              v94 = *(v68 + 1);
              v68 = (v68 + 1);
              v92 = v94;
            }

            while ((v94 - 33) > 0xFFFFFFDF);
          }

LABEL_167:
          if (v92 == 35)
          {
            v68 = (v68 + 1);
            while (1)
            {
              v92 = *v68;
              if (!*v68)
              {
                break;
              }

              v95 = *(v68 - 1);
              v68 = (v68 + 1);
              if (v95 == 10)
              {
                v68 = (v68 - 1);
                if ((v92 - 33) >= 0xFFFFFFE0)
                {
                  goto LABEL_166;
                }

                goto LABEL_167;
              }
            }
          }
        }
      }

      else
      {
LABEL_173:
        v68 = 0;
      }
    }

    v15 = 0;
  }

  if (!strncmp(v68, "texture", 7uLL))
  {
    v97 = (v68 + 7);
    *a2 = 0;
    v98 = arb::aidx(v97, a2, 0, v96);
    if (!v98)
    {
      v98 = v97;
    }

    if (a5)
    {
      a5->i32[1] |= 1 << *a2;
      if (*a2 >= a5[5].u8[0])
      {
        a5[5].i8[0] = *a2 + 1;
      }
    }

    if (!v73 || *(v73 + 5) != &fragmentKind)
    {
      v57 &= a5 == 0;
      goto LABEL_184;
    }

    v103 = *(v73 + 8);
    if (v15)
    {
      if (v103)
      {
LABEL_201:
        v57 = 0;
        LOBYTE(v15) = 1;
        goto LABEL_184;
      }

      if (*a2 == *(v73 + 14))
      {
        if (a5)
        {
          v104 = arb::achr(v98, 0x2C);
          v106 = arb::atok(v104, v105);
          if (strncmp(v106, "RECT", 4uLL))
          {
            LOBYTE(v15) = 0;
            goto LABEL_184;
          }

          if (!arb::isidentity(v51, *v116, v115, v56, 2))
          {
            goto LABEL_201;
          }

          v109 = arb::achr((v106 + 4), 0x2C);
          if (v109)
          {
            v110 = arb::achr(v109, 0x28);
            if (v110)
            {
              *v114 = 0;
              do
              {
                v112 = arb::atoi(v110, v114, v111);
                if (!v112)
                {
                  break;
                }

                if (*v114)
                {
                  goto LABEL_201;
                }

                v110 = arb::achr(v112, 0x2C);
              }

              while (v110);
            }
          }
        }

        LOBYTE(v15) = 1;
        goto LABEL_184;
      }
    }

    else if (v103)
    {
      v57 = 0;
      LOBYTE(v15) = 0;
      goto LABEL_184;
    }

    v57 = 0;
    if (a5)
    {
      v107 = *(v73 + 14);
      if (*a2 != v107)
      {
        v57 = 0;
        v108 = 1 << v107;
        a5[1] = vand_s8(a5[1], vdup_n_s32(~v108));
        a5[2].i32[0] &= ~v108;
      }
    }
  }

LABEL_184:
  v18 = v119;
  if (v119)
  {
    v99 = arb::obj_add(a1, v119, v117, a5, 1);
    if (a5)
    {
      if (v99)
      {
        v100 = *(v99 + 5);
        *(a1 + 48) = v100;
        *(a1 + 56) = *(v99 + 14);
        v40 = v100 == &outputKind;
        v101 = v113 ^ 1;
        if (!v40)
        {
          v101 = 1;
        }

        if ((v101 & 1) == 0)
        {
          *(a1 + 60) = 1;
        }

LABEL_192:
        if (v57)
        {
          if (v15)
          {
LABEL_197:
            a5[2].i32[0] &= ~(1 << *a2);
            return v18;
          }
        }

        else
        {
          a5[1].i32[0] &= ~(1 << *a2);
        }

        a5[1].i32[1] &= ~(1 << *a2);
        goto LABEL_197;
      }
    }
  }

  if (a5)
  {
    goto LABEL_192;
  }

  return v18;
}

uint64_t arb::alen(arb *this, const char *a2)
{
  v3 = *this;
  v4 = (v3 - 48) < 0xA || (ctype[2 * *this] & 0x40) == 0;
  v5 = this;
  if (v4)
  {
    return v5 - this;
  }

  v7 = a2;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = this;
  v5 = this;
  while (1)
  {
    v12 = v5;
    do
    {
      v13 = *(v12 + 1);
      v12 = (v12 + 1);
    }

    while ((ctype[2 * v13] & 0x40) != 0);
    if (v9)
    {
      if (v3 == 101 && *(v5 + 1) == 121 && *(v5 + 2) == 101)
      {
        v9 = 0;
        v8 = v5 + 3;
      }

      else
      {
        v14 = strncmp(v5, "object", 6uLL);
        v9 = 0;
        if (v14)
        {
          v8 = 0;
        }

        else
        {
          v8 = v5 + 6;
        }
      }
    }

    else if (v10)
    {
      v15 = strncmp(v5, "texgen", 6uLL);
      v10 = 0;
      v9 = v5 + 6;
      if (v15)
      {
        v9 = 0;
      }
    }

    else if (v11 == this)
    {
      v16 = strncmp(v5, "state", 5uLL);
      v9 = 0;
      if (v16)
      {
        v10 = 0;
      }

      else
      {
        v10 = v5 + 5;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v17 = *v12;
    if (!*v12)
    {
      v28 = v12;
      goto LABEL_69;
    }

    v18 = v12;
    while (1)
    {
      v11 = v12;
      v19 = v17;
      v12 = v18;
      if ((v17 - 33) >= 0xFFFFFFE0)
      {
        do
        {
LABEL_29:
          v20 = *(v12 + 1);
          v12 = (v12 + 1);
          v19 = v20;
        }

        while ((v20 - 33) > 0xFFFFFFDF);
      }

LABEL_30:
      v21 = v12;
      if (v19 == 35)
      {
        break;
      }

      if (v19 != 91)
      {
        goto LABEL_49;
      }

      do
      {
        v25 = *++v21;
        v24 = v25;
        if (!v25)
        {
          break;
        }

        if ((v24 - 33) >= 0xFFFFFFE0)
        {
          do
          {
LABEL_38:
            v26 = *++v21;
            v24 = v26;
          }

          while ((v26 - 33) > 0xFFFFFFDF);
        }

LABEL_39:
        if (v24 == 35)
        {
          ++v21;
          while (1)
          {
            v24 = *v21;
            if (!*v21)
            {
              goto LABEL_47;
            }

            v27 = *(v21++ - 1);
            if (v27 == 10)
            {
              --v21;
              if ((v24 - 33) >= 0xFFFFFFE0)
              {
                goto LABEL_38;
              }

              goto LABEL_39;
            }
          }
        }
      }

      while (v24 && v24 != 93);
LABEL_47:
      v29 = v21[1];
      v28 = v21 + 1;
      v17 = v29;
      v18 = v28;
      if (!v29)
      {
        goto LABEL_69;
      }
    }

    while (1)
    {
      v22 = *++v21;
      v19 = v22;
      if (!v22)
      {
        break;
      }

      v23 = *v12;
      v12 = v21;
      if (v23 == 10)
      {
        v12 = v21;
        if ((v19 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

LABEL_49:
    v30 = v18;
    if ((v17 - 33) >= 0xFFFFFFE0)
    {
      do
      {
LABEL_50:
        v31 = *++v30;
        v17 = v31;
      }

      while ((v31 - 33) > 0xFFFFFFDF);
    }

LABEL_51:
    if (v17 == 35)
    {
      v32 = v30;
      while (1)
      {
        v33 = *++v32;
        v17 = v33;
        if (!v33)
        {
          break;
        }

        v34 = *v30;
        v30 = v32;
        if (v34 == 10)
        {
          v30 = v32;
          if ((v17 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }
      }

LABEL_68:
      v28 = v18;
      v12 = v11;
LABEL_69:
      if (v7)
      {
        return v28 - this;
      }

      else
      {
        return v12 - this;
      }
    }

    if (v17 != 46)
    {
      goto LABEL_68;
    }

    v5 = (v30 + 1);
    v3 = v30[1];
    if (!v8 && (ctype[2 * v30[1]] & 0x20) != 0)
    {
      v35 = ctype[2 * v30[2]];
      if ((v35 & 0x20) != 0)
      {
        v35 = ctype[2 * v30[3]];
        if ((v35 & 0x20) != 0)
        {
          v35 = ctype[2 * v30[4]];
          if ((v35 & 0x20) != 0)
          {
            v35 = ctype[2 * v30[5]];
          }
        }
      }

      if ((v35 & 0x40) == 0)
      {
        break;
      }
    }

    if ((v3 - 48) < 0xA || (ctype[2 * v30[1]] & 0x40) == 0)
    {
      return v5 - this;
    }
  }

  if (v7)
  {
    return v18 - this;
  }

  else
  {
    return v11 - this;
  }
}

unsigned __int8 *arb::obj_declare(char **a1, unint64_t *a2, uint64_t a3, const void *a4, size_t __n, signed int *a6, arb *this, uint64_t a8, uint64_t a9)
{
  v10 = a6;
  *v138 = 0;
  v15 = *this;
  if (*this)
  {
    v16 = *this;
    v17 = this;
    if ((v15 - 33) < 0xFFFFFFE0)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_3:
      v18 = *(v17 + 1);
      v17 = (v17 + 1);
      v16 = v18;
    }

    while ((v18 - 33) > 0xFFFFFFDF);
LABEL_4:
    while (v16 == 35)
    {
      v19 = v17;
      do
      {
        v20 = *(v19 + 1);
        v19 = (v19 + 1);
        v16 = v20;
        if (!v20)
        {
          goto LABEL_20;
        }

        v21 = *v17;
        v17 = v19;
      }

      while (v21 != 10);
      v17 = v19;
      if ((v16 - 33) >= 0xFFFFFFE0)
      {
        goto LABEL_3;
      }
    }

    if (v16 == 123)
    {
      v24 = *(v17 + 1);
      v23 = v17 + 1;
      v22 = v24;
      if (v24)
      {
        if ((v22 - 33) < 0xFFFFFFE0)
        {
          goto LABEL_14;
        }

        do
        {
LABEL_13:
          v25 = *++v23;
          v22 = v25;
        }

        while ((v25 - 33) > 0xFFFFFFDF);
LABEL_14:
        while (v22 == 35)
        {
          ++v23;
          do
          {
            v22 = *v23;
            if (!*v23)
            {
              goto LABEL_212;
            }

            v26 = *(v23++ - 1);
          }

          while (v26 != 10);
          --v23;
          if ((v22 - 33) >= 0xFFFFFFE0)
          {
            goto LABEL_13;
          }
        }

        if (v22)
        {
          do
          {
            while (1)
            {
              if ((v22 - 33) >= 0xFFFFFFE0)
              {
                do
                {
                  v130 = *++v23;
                  v22 = v130;
                }

                while ((v130 - 33) > 0xFFFFFFDF);
              }

              if (v22 != 35)
              {
                break;
              }

              ++v23;
              do
              {
                v22 = *v23;
                if (!*v23)
                {
                  goto LABEL_212;
                }

                v132 = *(v23++ - 1);
              }

              while (v132 != 10);
              --v23;
            }

            if (!v22)
            {
              break;
            }

            if (v22 == 125)
            {
              break;
            }

            v131 = *++v23;
            v22 = v131;
          }

          while (v131);
        }
      }

LABEL_212:
      v122 = *a2;
      v123 = *a6;
      v124 = a1[1];
      v125 = a1[2];
      if (v124 + 1 <= v125)
      {
        v127 = *a1;
      }

      else
      {
        v126 = (v124 & 0xFFFFFFFFFFFFFFF0) + 16;
        v127 = *a1;
        if (v125 != v126)
        {
          a1[2] = v126;
          v127 = malloc_type_realloc(v127, 88 * v126, 0x10500400A17BEF8uLL);
          *a1 = v127;
          v124 = a1[1];
          v128 = a1[2];
          if (v124 > v128)
          {
            a1[1] = v128;
            v124 = v128;
          }
        }
      }

      if (v124 > v122)
      {
        memmove(&v127[88 * v122 + 88], &v127[88 * v122], 88 * (v124 - v122));
        v127 = *a1;
        v124 = a1[1];
      }

      v40 = v23 + 1;
      a1[1] = (v124 + 1);
      v129 = &v127[88 * v122];
      memcpy(v129, a4, __n);
      if (v123 != -1)
      {
        v129[__n] = 91;
        __n += itoa(&v129[__n + 1], v123) + 2;
        v129[__n - 1] = 93;
      }

      v47 = a9;
      v129[__n] = 0;
      v46 = (*a2)++;
      v48 = *(a9 + 20);
      v49 = v40 - this;
LABEL_47:
      v50 = &(*a1)[88 * v46];
      *(v50 + 40) = &constantKind;
      *(v50 + 48) = 2;
      *(v50 + 56) = v48;
      *(v50 + 64) = this;
      *(v50 + 72) = v49;
      *(v50 + 80) = a8;
      ++*v10;
      *(v47 + 20) = v48 + 1;
      return v40;
    }
  }

LABEL_20:
  if ((v15 - 48) < 0xA || (ctype[2 * v15] & 0x40) == 0)
  {
    v28 = 0;
    do
    {
      v29 = ctype[2 * *(this + v28++)];
    }

    while (v29 < 0);
    v30 = *a2;
    v31 = *a6;
    v32 = a1[1];
    v33 = a1[2];
    if (v32 + 1 <= v33)
    {
      v35 = *a1;
    }

    else
    {
      v34 = (v32 & 0xFFFFFFFFFFFFFFF0) + 16;
      v35 = *a1;
      if (v33 != v34)
      {
        a1[2] = v34;
        v35 = malloc_type_realloc(v35, 88 * v34, 0x10500400A17BEF8uLL);
        *a1 = v35;
        v32 = a1[1];
        v36 = a1[2];
        if (v32 > v36)
        {
          a1[1] = v36;
          v32 = v36;
        }
      }
    }

    if (v32 > v30)
    {
      memmove(&v35[88 * v30 + 88], &v35[88 * v30], 88 * (v32 - v30));
      v35 = *a1;
      v32 = a1[1];
    }

    v40 = this + v28 - 1;
    a1[1] = (v32 + 1);
    v45 = &v35[88 * v30];
    memcpy(v45, a4, __n);
    if (v31 != -1)
    {
      v45[__n] = 91;
      __n += itoa(&v45[__n + 1], v31) + 2;
      v45[__n - 1] = 93;
    }

    v45[__n] = 0;
    v46 = (*a2)++;
    v47 = a9;
    v48 = *(a9 + 20);
    v49 = v28 - 1;
    goto LABEL_47;
  }

  v134 = arb::alen(this, 0);
  v37 = this + v134;
  v39 = arb::aidx((this + v134), &v138[4], v138, v38);
  if (!v39)
  {
    v42 = 0;
    v51 = 0;
    *v138 = 0;
    v40 = this + v134;
    goto LABEL_93;
  }

  v40 = v39;
  v41 = *v39;
  if (!*v39)
  {
    goto LABEL_92;
  }

  v42 = v39;
  if ((v41 - 33) >= 0xFFFFFFE0)
  {
    do
    {
LABEL_34:
      v43 = *++v42;
      v41 = v43;
    }

    while ((v43 - 33) > 0xFFFFFFDF);
  }

LABEL_35:
  if (v41 == 35)
  {
    ++v42;
    while (1)
    {
      v41 = *v42;
      if (!*v42)
      {
        goto LABEL_53;
      }

      v44 = *(v42++ - 1);
      if (v44 == 10)
      {
        --v42;
        if ((v41 - 33) >= 0xFFFFFFE0)
        {
          goto LABEL_34;
        }

        goto LABEL_35;
      }
    }
  }

  if (v41 <= 58)
  {
    if (!v41)
    {
LABEL_53:
      v40 = v42;
      v51 = v42;
      goto LABEL_93;
    }

    if (v41 != 44)
    {
      goto LABEL_57;
    }

LABEL_56:
    v51 = 0;
    v42 = v39;
    goto LABEL_93;
  }

  if (v41 == 59 || v41 == 125)
  {
    goto LABEL_56;
  }

LABEL_57:
  v52 = 0;
  v40 = v42;
  while (!v52)
  {
    v53 = 0;
    if (v41 > 122)
    {
      if (v41 != 123)
      {
        if (v41 == 125)
        {
          goto LABEL_92;
        }

        goto LABEL_88;
      }

LABEL_87:
      v53 = (v52 + 1);
      goto LABEL_88;
    }

    v54 = v41 - 40;
    if ((v41 - 40) <= 0x35)
    {
      if (((1 << v54) & 0x8000000000001) != 0)
      {
        goto LABEL_87;
      }

      if (((1 << v54) & 0x20000000000002) != 0)
      {
        goto LABEL_85;
      }

      if (((1 << v54) & 0x80010) != 0)
      {
        goto LABEL_92;
      }
    }

    if (v41 == 35)
    {
      goto LABEL_75;
    }

LABEL_88:
    v57 = *++v40;
    v41 = v57;
    v52 = v53;
LABEL_89:
    v42 = v40;
    v51 = v40;
    if (!v41)
    {
      goto LABEL_93;
    }
  }

  if (v41 > 90)
  {
    if (v41 > 122)
    {
      if (v41 == 125)
      {
        goto LABEL_85;
      }

      if (v41 == 123)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v41 == 91)
      {
        goto LABEL_87;
      }

      if (v41 == 93)
      {
        goto LABEL_85;
      }
    }

LABEL_84:
    v53 = v52;
    goto LABEL_88;
  }

  if (v41 != 35)
  {
    if (v41 == 40)
    {
      goto LABEL_87;
    }

    if (v41 == 41)
    {
LABEL_85:
      v53 = (v52 - 1);
      goto LABEL_88;
    }

    goto LABEL_84;
  }

LABEL_75:
  if ((v41 - 33) >= 0xFFFFFFE0)
  {
    do
    {
      v55 = *++v40;
      v41 = v55;
    }

    while ((v55 - 33) > 0xFFFFFFDF);
  }

  if (v41 != 35)
  {
    goto LABEL_89;
  }

  ++v40;
  while (1)
  {
    v41 = *v40;
    if (!*v40)
    {
      break;
    }

    v56 = *(v40++ - 1);
    if (v56 == 10)
    {
      --v40;
      goto LABEL_75;
    }
  }

LABEL_92:
  v42 = v40;
  v51 = v40;
LABEL_93:
  v135 = v10;
  if (a3 == &paramKind)
  {
    if (!v51)
    {
      if (strncmp(this, "program", 7uLL) || (v118 = arb::achr((this + 7), 0x2E)) == 0 || strncmp(v118, "local", 5uLL))
      {
        if (!strncmp(this, "state", 5uLL) && (v119 = arb::achr((this + 5), 0x2E)) != 0 && !strncmp(v119, "matrix", 6uLL))
        {
          if (*(v37 - 3) != 114 || *(v37 - 2) != 111 || *(v37 - 1) != 119)
          {
            *v138 = 3;
            *&v138[4] = 0;
            a8 |= 0x10uLL;
            if (v42)
            {
              v40 = v42;
            }
          }
        }

        else
        {
          v90 = *&v138[4];
          if (!v42)
          {
            v90 = -1;
          }

          *&v138[4] = v90;
        }

        *(a9 + 4) |= 0x8000000u;
LABEL_144:
        v91 = *&v138[4];
        if (*&v138[4] != -1)
        {
LABEL_145:
          if ((a8 & 0x10) == 0)
          {
            v92 = *v37;
            if (*v37)
            {
              if ((v92 - 33) >= 0xFFFFFFE0)
              {
                do
                {
LABEL_148:
                  v93 = *++v37;
                  v92 = v93;
                }

                while ((v93 - 33) > 0xFFFFFFDF);
              }

LABEL_149:
              if (v92 == 35)
              {
                ++v37;
                while (1)
                {
                  v92 = *v37;
                  if (!*v37)
                  {
                    break;
                  }

                  v94 = *(v37++ - 1);
                  if (v94 == 10)
                  {
                    --v37;
                    if ((v92 - 33) >= 0xFFFFFFE0)
                    {
                      goto LABEL_148;
                    }

                    goto LABEL_149;
                  }
                }
              }
            }

            v134 = v37 - this + 1;
          }

          if (v91 > *v138)
          {
            return v40;
          }

          v133 = v40;
          v95 = v91;
          do
          {
            v98 = *a2;
            v99 = (*v10)++;
            v100 = a1[1];
            v101 = a1[2];
            if (v100 + 1 <= v101)
            {
              v103 = *a1;
            }

            else
            {
              v102 = (v100 & 0xFFFFFFFFFFFFFFF0) + 16;
              v103 = *a1;
              if (v101 != v102)
              {
                a1[2] = v102;
                v103 = malloc_type_realloc(v103, 88 * v102, 0x10500400A17BEF8uLL);
                *a1 = v103;
                v100 = a1[1];
                v104 = a1[2];
                if (v100 > v104)
                {
                  a1[1] = v104;
                  v100 = v104;
                }
              }
            }

            if (v100 > v98)
            {
              memmove(&v103[88 * v98 + 88], &v103[88 * v98], 88 * (v100 - v98));
              v103 = *a1;
              v100 = a1[1];
            }

            a1[1] = (v100 + 1);
            v105 = &v103[88 * v98];
            memcpy(v105, a4, __n);
            v106 = __n;
            if (v99 != -1)
            {
              v105[__n] = 91;
              v106 = __n + 2 + itoa(&v105[__n + 1], v99);
              v105[v106 - 1] = 93;
            }

            v105[v106] = 0;
            v96 = (*a2)++;
            v97 = &(*a1)[88 * v96];
            *(v97 + 40) = this;
            *(v97 + 48) = v134;
            *(v97 + 56) = v95;
            *(v97 + 64) = 0;
            *(v97 + 72) = 0;
            *(v97 + 80) = a8;
            v63 = v95++ >= *v138;
          }

          while (!v63);
          return v133;
        }

LABEL_176:
        v107 = *a2;
        v108 = (*v10)++;
        v109 = a1[1];
        v110 = a1[2];
        if (v109 + 1 <= v110)
        {
          v112 = *a1;
        }

        else
        {
          v111 = (v109 & 0xFFFFFFFFFFFFFFF0) + 16;
          v112 = *a1;
          if (v110 != v111)
          {
            a1[2] = v111;
            v112 = malloc_type_realloc(v112, 88 * v111, 0x10500400A17BEF8uLL);
            *a1 = v112;
            v109 = a1[1];
            v113 = a1[2];
            if (v109 > v113)
            {
              a1[1] = v113;
              v109 = v113;
            }
          }
        }

        v114 = v40;
        if (v109 > v107)
        {
          memmove(&v112[88 * v107 + 88], &v112[88 * v107], 88 * (v109 - v107));
          v112 = *a1;
          v109 = a1[1];
        }

        a1[1] = (v109 + 1);
        v115 = &v112[88 * v107];
        memcpy(v115, a4, __n);
        if (v108 != -1)
        {
          v115[__n] = 91;
          __n += itoa(&v115[__n + 1], v108) + 2;
          v115[__n - 1] = 93;
        }

        v115[__n] = 0;
        v116 = (*a2)++;
        v40 = v114;
        v117 = &(*a1)[88 * v116];
        *(v117 + 40) = this;
        *(v117 + 48) = v114 - this;
        *(v117 + 56) = -1;
        *(v117 + 64) = 0;
        *(v117 + 72) = 0;
        *(v117 + 80) = a8;
        return v40;
      }

      v58 = *v138;
      if (*v138 >= *(a9 + 22))
      {
        *(a9 + 22) = *v138 + 1;
        *(a9 + 44) = 16 * (v58 + 1);
      }

      goto LABEL_100;
    }

    v73 = *(a9 + 22);
    *(a9 + 22) = v73 + 1;
LABEL_124:
    *v138 = v73;
    *&v138[4] = v73;
    goto LABEL_125;
  }

  if (a3 == &fragmentKind)
  {
    if (v51)
    {
LABEL_123:
      v73 = *(a9 + 36);
      *(a9 + 36) = v73 + 1;
      goto LABEL_124;
    }

    if (!strncmp(this, "fragment", 8uLL))
    {
      v74 = arb::achr((this + 8), 0x2E);
      if (v74)
      {
        v75 = v74;
        if (!strncmp(v74, "texcoord", 8uLL))
        {
          goto LABEL_205;
        }

        if (!strncmp(v75, "position", 8uLL))
        {
LABEL_173:
          v91 = *&v138[4];
          if (!v42)
          {
            v91 = -1;
          }

          *&v138[4] = v91;
          if (v91 != -1)
          {
            goto LABEL_145;
          }

          goto LABEL_176;
        }
      }
    }

LABEL_172:
    *(a9 + 4) |= 0x8000000u;
    goto LABEL_173;
  }

  if (a3 == &vertexKind)
  {
    if (v51)
    {
      goto LABEL_123;
    }

    if (!strncmp(this, "vertex", 6uLL))
    {
      v120 = arb::achr((this + 6), 0x2E);
      if (v120)
      {
        if (!strncmp(v120, "texcoord", 8uLL))
        {
LABEL_205:
          v58 = *v138;
          if (*v138 >= *(a9 + 36))
          {
            *(a9 + 36) = *v138 + 1;
          }

          goto LABEL_100;
        }
      }
    }

    goto LABEL_172;
  }

  if (a3 == &outputKind)
  {
    if (v51)
    {
      v73 = *(a9 + 42);
      *(a9 + 42) = v73 + 1;
      goto LABEL_124;
    }

    if (strncmp(this, "result", 6uLL) || (v121 = arb::achr((this + 6), 0x2E)) == 0 || strncmp(v121, "color", 5uLL))
    {
      *(a9 + 12) = 0;
      v91 = *&v138[4];
      if (!v42)
      {
        v91 = -1;
      }

      *&v138[4] = v91;
      if (v91 != -1)
      {
        goto LABEL_145;
      }

      goto LABEL_176;
    }

    v58 = *v138;
    if (*v138 >= *(a9 + 42))
    {
      *(a9 + 42) = v138[0] + 1;
    }

LABEL_100:
    v59 = *&v138[4];
    if (*&v138[4] > v58)
    {
      return v40;
    }

    v133 = v40;
    do
    {
      v64 = *a2;
      v65 = (*v10)++;
      v66 = a1[1];
      v67 = a1[2];
      if (v66 + 1 <= v67)
      {
        v69 = *a1;
      }

      else
      {
        v68 = (v66 & 0xFFFFFFFFFFFFFFF0) + 16;
        v69 = *a1;
        if (v67 != v68)
        {
          a1[2] = v68;
          v69 = malloc_type_realloc(v69, 88 * v68, 0x10500400A17BEF8uLL);
          *a1 = v69;
          v66 = a1[1];
          v70 = a1[2];
          if (v66 > v70)
          {
            a1[1] = v70;
            v66 = v70;
          }
        }
      }

      if (v66 > v64)
      {
        memmove(&v69[88 * v64 + 88], &v69[88 * v64], 88 * (v66 - v64));
        v69 = *a1;
        v66 = a1[1];
      }

      a1[1] = (v66 + 1);
      v71 = &v69[88 * v64];
      memcpy(v71, a4, __n);
      v72 = __n;
      if (v65 != -1)
      {
        v71[__n] = 91;
        v72 = __n + 2 + itoa(&v71[__n + 1], v65);
        v71[v72 - 1] = 93;
      }

      v71[v72] = 0;
      v60 = (*a2)++;
      v61 = 1;
      if (*(a3 + 1))
      {
        v61 = 2;
      }

      v62 = &(*a1)[88 * v60];
      *(v62 + 40) = a3;
      *(v62 + 48) = v61;
      *(v62 + 56) = v59;
      *(v62 + 64) = 0;
      *(v62 + 72) = 0;
      *(v62 + 80) = a8;
      v63 = v59++ >= *v138;
      v10 = v135;
    }

    while (!v63);
    return v133;
  }

  if (!a3)
  {
    goto LABEL_144;
  }

  if (!v51)
  {
    v58 = *v138;
    goto LABEL_100;
  }

LABEL_125:
  v76 = *a2;
  v77 = (*v10)++;
  v78 = a1[1];
  v79 = a1[2];
  if (v78 + 1 <= v79)
  {
    v81 = *a1;
  }

  else
  {
    v80 = (v78 & 0xFFFFFFFFFFFFFFF0) + 16;
    v81 = *a1;
    if (v79 != v80)
    {
      a1[2] = v80;
      v81 = malloc_type_realloc(v81, 88 * v80, 0x10500400A17BEF8uLL);
      *a1 = v81;
      v78 = a1[1];
      v82 = a1[2];
      if (v78 > v82)
      {
        a1[1] = v82;
        v78 = v82;
      }
    }
  }

  v83 = v40;
  if (v78 > v76)
  {
    memmove(&v81[88 * v76 + 88], &v81[88 * v76], 88 * (v78 - v76));
    v81 = *a1;
    v78 = a1[1];
  }

  a1[1] = (v78 + 1);
  v84 = &v81[88 * v76];
  memcpy(v84, a4, __n);
  if (v77 != -1)
  {
    v84[__n] = 91;
    __n += itoa(&v84[__n + 1], v77) + 2;
    v84[__n - 1] = 93;
  }

  v84[__n] = 0;
  v85 = (*a2)++;
  v86 = 1;
  if (*(a3 + 1))
  {
    v86 = 2;
  }

  v87 = *&v138[4];
  v88 = &(*a1)[88 * v85];
  *(v88 + 40) = a3;
  *(v88 + 48) = v86;
  *(v88 + 56) = v87;
  *(v88 + 64) = this;
  *(v88 + 72) = v51 - this;
  *(v88 + 80) = a8;
  return v83;
}