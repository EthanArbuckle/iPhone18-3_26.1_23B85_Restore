void sub_224703B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_224714ED8(_Unwind_Exception *a1)
{
  if (STACK[0x280])
  {
    operator delete(STACK[0x280]);
    if (!v1)
    {
LABEL_4:

      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_4;
  }

  operator delete(v1);
  goto LABEL_4;
}

void sub_2247261B8(_Unwind_Exception *a1)
{
  if (STACK[0x280])
  {
    operator delete(STACK[0x280]);
    if (!v1)
    {
LABEL_4:

      _Unwind_Resume(a1);
    }
  }

  else if (!v1)
  {
    goto LABEL_4;
  }

  operator delete(v1);
  goto LABEL_4;
}

uint64_t nvmGetModuleSerialNumber(const unsigned __int8 *a1, uint64_t a2, char (*__s)[32])
{
  v3 = &a1[-a2 + 33536];
  v4 = *v3;
  if (v4 <= 8)
  {
    if (*v3 <= 5u)
    {
      if (v4 != 1 && v4 != 4)
      {
        goto LABEL_22;
      }
    }

    else if (v4 != 6 && v4 != 7 && v4 != 8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*v3 > 0x35u)
    {
      if (v4 != 54 && v4 != 64 && v4 != 65)
      {
        goto LABEL_22;
      }

LABEL_15:
      result = getModuleSerialNumStringBase37(__s, &a1[-a2 + 33621], __s);
      if (result)
      {
        (*__s)[18] = 0;
        return 1;
      }

      return result;
    }

    if (v4 != 9)
    {
      if (v4 != 36 && v4 != 38)
      {
LABEL_22:
        peridot_depth_log_error("unknown VSR buffer version (%u)", *v3);
        return 0;
      }

      goto LABEL_15;
    }
  }

  v7 = &a1[-a2 + 33561];

  return getModuleSerialNumStringBase34(__s, v7, __s);
}

void sub_2247269EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, int a40)
{
  if (!v40)
  {
    _Unwind_Resume(exception_object);
  }

  *(a13 + 8) = v40;
  operator delete(v40);
  _Unwind_Resume(exception_object);
}

void sub_224726A88()
{
  if (v0)
  {
    JUMPOUT(0x224726A74);
  }

  JUMPOUT(0x224726A34);
}

void getBackglassInfo(const void **a1)
{
  v2 = *(a1 + 23);
  v3 = v2;
  v4 = *a1;
  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  if (v2 >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v2;
  }

  v34 = v5;
  if (!v2)
  {
    v7 = v5;
    *(&__dst + v5) = 0;
    if (v5 == 3)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

  if (v3 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = v4;
  }

  memcpy(&__dst, v6, v5);
  v7 = v34;
  *(&__dst + v5) = 0;
  if ((v7 & 0x80) == 0)
  {
    if (v7 == 3)
    {
LABEL_12:
      if (__dst == 14404 && BYTE2(__dst) == 51)
      {
        return;
      }

      if (__dst == 14404 && BYTE2(__dst) == 52)
      {
        return;
      }

      if (__dst == 14660 && BYTE2(__dst) == 51)
      {
        return;
      }

      if (__dst == 14660 && BYTE2(__dst) == 52)
      {
        return;
      }

      if (__dst == 14154 && BYTE2(__dst) == 49)
      {
        return;
      }

      p_dst = &__dst;
      goto LABEL_58;
    }

LABEL_34:
    v14 = (v7 & 0x80u) != 0;
    goto LABEL_35;
  }

  if (v33 != 3)
  {
    v14 = (v7 & 0x80u) != 0;
    goto LABEL_65;
  }

  p_dst = __dst;
  if (*__dst == 14404 && *(__dst + 2) == 51)
  {
    goto LABEL_86;
  }

  if (*__dst == 14404 && *(__dst + 2) == 52)
  {
    goto LABEL_86;
  }

  if (*__dst == 14660 && *(__dst + 2) == 51)
  {
    goto LABEL_86;
  }

  if (*__dst == 14660 && *(__dst + 2) == 52)
  {
    goto LABEL_86;
  }

  if (*__dst == 14154 && *(__dst + 2) == 49)
  {
    goto LABEL_86;
  }

LABEL_58:
  v21 = *p_dst;
  v22 = *(p_dst + 2);
  if (v21 != 14154 || v22 != 50)
  {
    v14 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80) != 0)
    {
LABEL_65:
      if (v33 == 3)
      {
        v15 = __dst;
LABEL_67:
        v24 = *v15;
        v25 = *(v15 + 2);
        if (v24 == 13654 && v25 == 51)
        {
          goto LABEL_85;
        }

        goto LABEL_71;
      }

      goto LABEL_71;
    }

LABEL_35:
    if (v7 == 3)
    {
      v15 = &__dst;
      goto LABEL_67;
    }

LABEL_71:
    if (v14)
    {
      if (v33 != 3)
      {
        goto LABEL_80;
      }

      v27 = __dst;
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_80;
      }

      v27 = &__dst;
    }

    v28 = *v27;
    v29 = *(v27 + 2);
    if (v28 != 13654 || v29 != 52)
    {
LABEL_80:
      if (v3 >= 0)
      {
        v31 = a1;
      }

      else
      {
        v31 = v4;
      }

      peridot_depth_log_error("No backglass info for device %s. Will use defaults", v31);
      if ((v7 & 0x80) != 0)
      {
        goto LABEL_86;
      }

      return;
    }

LABEL_85:
    if ((v7 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_86;
  }

  if ((v7 & 0x80) != 0)
  {
LABEL_86:
    operator delete(__dst);
  }
}

void sub_224726DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void getNominalExtrinsics(uint64_t a1, const void **a2, __n128 a3)
{
  {
    getNominalExtrinsics(std::string const&)::R_z_90 = xmmword_2247A4AD0;
    *algn_27D0FB570 = 0u;
    xmmword_27D0FB580 = xmmword_2247A4AE0;
    *&qword_27D0FB590 = 0u;
    xmmword_27D0FB5A0 = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    xmmword_27D0FB5B0 = _Q0;
  }

  {
    getNominalExtrinsics(std::string const&)::cos3 = 0x3FEFF4C5ED12E61DLL;
  }

  {
    getNominalExtrinsics(std::string const&)::sin3 = 0x3FAACBC748EFC90DLL;
  }

  {
    a3.n128_u64[0] = getNominalExtrinsics(std::string const&)::cos3;
    *&v51 = -*&getNominalExtrinsics(std::string const&)::sin3;
    getNominalExtrinsics(std::string const&)::R_y_3 = xmmword_2247A4AD0;
    *algn_27D0FB630 = 0u;
    getNominalExtrinsics(std::string const&)::R_y_3 = getNominalExtrinsics(std::string const&)::cos3;
    *algn_27D0FB610 = v51;
    getNominalExtrinsics(std::string const&)::R_y_3 = getNominalExtrinsics(std::string const&)::sin3;
    *algn_27D0FB650 = a3;
  }

  {
    getNominalExtrinsics(std::string const&)::R_Vx = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(getNominalExtrinsics(std::string const&)::R_y_3, *&getNominalExtrinsics(std::string const&)::R_z_90), getNominalExtrinsics(std::string const&)::R_y_3, getNominalExtrinsics(std::string const&)::R_z_90, 1), getNominalExtrinsics(std::string const&)::R_y_3, *algn_27D0FB570);
    *algn_27D0FB690 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*algn_27D0FB610, *&getNominalExtrinsics(std::string const&)::R_z_90), *algn_27D0FB630, getNominalExtrinsics(std::string const&)::R_z_90, 1), *algn_27D0FB650, *algn_27D0FB570);
    xmmword_27D0FB6A0 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(getNominalExtrinsics(std::string const&)::R_y_3, *&xmmword_27D0FB580), getNominalExtrinsics(std::string const&)::R_y_3, xmmword_27D0FB580, 1), getNominalExtrinsics(std::string const&)::R_y_3, *&qword_27D0FB590);
    unk_27D0FB6B0 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*algn_27D0FB610, *&xmmword_27D0FB580), *algn_27D0FB630, xmmword_27D0FB580, 1), *algn_27D0FB650, *&qword_27D0FB590);
    xmmword_27D0FB6C0 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(getNominalExtrinsics(std::string const&)::R_y_3, *&xmmword_27D0FB5A0), getNominalExtrinsics(std::string const&)::R_y_3, xmmword_27D0FB5A0, 1), getNominalExtrinsics(std::string const&)::R_y_3, *&xmmword_27D0FB5B0);
    unk_27D0FB6D0 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(*algn_27D0FB610, *&xmmword_27D0FB5A0), *algn_27D0FB630, xmmword_27D0FB5A0, 1), *algn_27D0FB650, *&xmmword_27D0FB5B0);
  }

  v5 = *(a2 + 23);
  v6 = v5;
  v7 = *a2;
  if ((v5 & 0x80u) != 0)
  {
    v5 = a2[1];
  }

  if (v5 >= 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = v5;
  }

  v54 = v8;
  if (!v5)
  {
    v10 = v8;
    *(&__dst + v8) = 0;
    if (v8 == 3)
    {
LABEL_17:
      if (__dst == 14404 && BYTE2(__dst) == 51)
      {
        a3.n128_u64[0] = 0x400326E978D4FDF4;
        v14 = xmmword_2247A4AF0;
        v28 = &getNominalExtrinsics(std::string const&)::R_z_90;
        LOBYTE(v10) = 3;
        goto LABEL_117;
      }

      if (__dst != 14404 || BYTE2(__dst) != 52)
      {
        v13 = __dst == 14660 && BYTE2(__dst) == 51;
        a3.n128_u64[0] = 0x400570A3D70A3D71;
        v14 = xmmword_2247A4B10;
        if (v13)
        {
          goto LABEL_106;
        }

        if (__dst == 14660 && BYTE2(__dst) == 52)
        {
          goto LABEL_106;
        }

        if (__dst == 14154 && BYTE2(__dst) == 49)
        {
          goto LABEL_102;
        }

        p_dst = &__dst;
        goto LABEL_63;
      }

      goto LABEL_103;
    }

LABEL_39:
    v18 = (v10 & 0x80u) != 0;
    goto LABEL_40;
  }

  if (v6 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = v7;
  }

  memcpy(&__dst, v9, v8);
  v10 = v54;
  *(&__dst + v8) = 0;
  if ((v10 & 0x80) == 0)
  {
    if (v10 == 3)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

  if (v53 == 3)
  {
    p_dst = __dst;
    if (*__dst == 14404 && *(__dst + 2) == 51)
    {
      a3.n128_u64[0] = 0x400326E978D4FDF4;
      v14 = xmmword_2247A4AF0;
      goto LABEL_106;
    }

    if (*__dst != 14404 || *(__dst + 2) != 52)
    {
      v22 = *__dst == 14660 && *(__dst + 2) == 51;
      a3.n128_u64[0] = 0x400570A3D70A3D71;
      v14 = xmmword_2247A4B10;
      if (v22)
      {
        goto LABEL_106;
      }

      if (*__dst == 14660 && *(__dst + 2) == 52)
      {
        goto LABEL_106;
      }

      if (*__dst == 14154 && *(__dst + 2) == 49)
      {
        goto LABEL_102;
      }

LABEL_63:
      v25 = *p_dst;
      v26 = *(p_dst + 2);
      if (v25 == 14154 && v26 == 50)
      {
        goto LABEL_102;
      }

      v18 = (v10 & 0x80u) != 0;
      if ((v10 & 0x80) != 0)
      {
        goto LABEL_71;
      }

LABEL_40:
      if (v10 != 3)
      {
        goto LABEL_77;
      }

      v19 = &__dst;
      goto LABEL_73;
    }

LABEL_103:
    a3.n128_u64[0] = 0x4003AE147AE147AELL;
    v14 = xmmword_2247A4B00;
    goto LABEL_106;
  }

  v18 = (v10 & 0x80u) != 0;
LABEL_71:
  if (v53 != 3)
  {
    goto LABEL_77;
  }

  v19 = __dst;
LABEL_73:
  v29 = *v19;
  v30 = *(v19 + 2);
  if (v29 == 14410 && v30 == 49)
  {
    goto LABEL_102;
  }

LABEL_77:
  if (!v18)
  {
    if (v10 != 3)
    {
      goto LABEL_111;
    }

    if (__dst != 14410 || BYTE2(__dst) != 50)
    {
      if (__dst != 13654 || BYTE2(__dst) != 51)
      {
        v36 = &__dst;
LABEL_107:
        v37 = *v36;
        v38 = *(v36 + 2);
        if (v37 != 13654 || v38 != 52)
        {
          goto LABEL_111;
        }

        a3.n128_u64[0] = 0x3FE970A3D70A3D71;
        v14 = xmmword_2247A4B40;
LABEL_116:
        v28 = &getNominalExtrinsics(std::string const&)::R_Vx;
        goto LABEL_117;
      }

LABEL_104:
      a3.n128_u64[0] = 0x3FE970A3D70A3D71;
      v14 = xmmword_2247A4B30;
      goto LABEL_116;
    }

    goto LABEL_102;
  }

  if (v53 == 3 && *__dst == 14410 && *(__dst + 2) == 50)
  {
LABEL_102:
    v14 = xmmword_2247A4B20;
    a3 = 0uLL;
LABEL_106:
    v28 = &getNominalExtrinsics(std::string const&)::R_z_90;
    goto LABEL_117;
  }

  if (v53 == 3 && *__dst == 13654 && *(__dst + 2) == 51)
  {
    goto LABEL_104;
  }

  if (v53 == 3)
  {
    v36 = __dst;
    goto LABEL_107;
  }

LABEL_111:
  if (v6 >= 0)
  {
    v40 = a2;
  }

  else
  {
    v40 = v7;
  }

  peridot_depth_log_error("No extrinsics info for device %s. Will use 90 degree and a zero baseline", v40);
  v14 = 0uLL;
  v28 = &getNominalExtrinsics(std::string const&)::R_z_90;
  a3 = 0uLL;
LABEL_117:
  v41 = v28[1];
  v42 = v28[2];
  v43 = v28[3];
  v44 = v28[4];
  v45 = v28[5];
  *a1 = *v28;
  *(a1 + 16) = v41;
  *(a1 + 32) = v42;
  *(a1 + 48) = v43;
  *(a1 + 64) = v44;
  *(a1 + 80) = v45;
  *(a1 + 96) = v14;
  *(a1 + 112) = a3;
  if ((v10 & 0x80) != 0)
  {
    v46 = __dst;

    operator delete(v46);
  }
}

void sub_224727484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (v10)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *getModuleSerialNumStringBase37(char *a1, unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = v4 >> 2;
  if (v4 > 0xE3)
  {
    v5 = 0;
  }

  *a1 = a0123456789abcd[v5];
  if (((a2[1] >> 4) & 0xFFFFFFCF | (16 * (*a2 & 3))) <= 0x38)
  {
    v6 = (a2[1] >> 4) & 0xFFFFFFCF | (16 * (*a2 & 3));
  }

  else
  {
    v6 = 0;
  }

  a1[1] = a0123456789abcd[v6];
  if (((a2[2] >> 6) & 0xFFFFFFC3 | (4 * (a2[1] & 0xF))) <= 0x38)
  {
    v7 = (a2[2] >> 6) & 0xFFFFFFC3 | (4 * (a2[1] & 0xF));
  }

  else
  {
    v7 = 0;
  }

  a1[2] = a0123456789abcd[v7];
  v8 = a2[2] & 0x3F;
  if (v8 > 0x38)
  {
    v8 = 0;
  }

  a1[3] = a0123456789abcd[v8];
  v9 = a2[3];
  if (v9 <= 0xE3)
  {
    v10 = v9 >> 2;
  }

  else
  {
    v10 = 0;
  }

  a1[4] = a0123456789abcd[v10];
  if (((a2[4] >> 4) & 0xFFFFFFCF | (16 * (a2[3] & 3))) <= 0x38)
  {
    v11 = (a2[4] >> 4) & 0xFFFFFFCF | (16 * (a2[3] & 3));
  }

  else
  {
    v11 = 0;
  }

  a1[5] = a0123456789abcd[v11];
  if (((a2[5] >> 6) & 0xFFFFFFC3 | (4 * (a2[4] & 0xF))) <= 0x38)
  {
    v12 = (a2[5] >> 6) & 0xFFFFFFC3 | (4 * (a2[4] & 0xF));
  }

  else
  {
    v12 = 0;
  }

  a1[6] = a0123456789abcd[v12];
  v13 = a2[5] & 0x3F;
  if (v13 > 0x38)
  {
    v13 = 0;
  }

  a1[7] = a0123456789abcd[v13];
  v14 = a2[6];
  if (v14 <= 0xE3)
  {
    v15 = v14 >> 2;
  }

  else
  {
    v15 = 0;
  }

  a1[8] = a0123456789abcd[v15];
  if (((a2[7] >> 4) & 0xFFFFFFCF | (16 * (a2[6] & 3))) <= 0x38)
  {
    v16 = (a2[7] >> 4) & 0xFFFFFFCF | (16 * (a2[6] & 3));
  }

  else
  {
    v16 = 0;
  }

  a1[9] = a0123456789abcd[v16];
  if (((a2[8] >> 6) & 0xFFFFFFC3 | (4 * (a2[7] & 0xF))) <= 0x38)
  {
    v17 = (a2[8] >> 6) & 0xFFFFFFC3 | (4 * (a2[7] & 0xF));
  }

  else
  {
    v17 = 0;
  }

  a1[10] = a0123456789abcd[v17];
  v18 = a2[8] & 0x3F;
  if (v18 > 0x38)
  {
    v18 = 0;
  }

  a1[11] = a0123456789abcd[v18];
  v19 = a2[9];
  if (v19 <= 0xE3)
  {
    v20 = v19 >> 2;
  }

  else
  {
    v20 = 0;
  }

  a1[12] = a0123456789abcd[v20];
  if (((a2[10] >> 4) & 0xFFFFFFCF | (16 * (a2[9] & 3))) <= 0x38)
  {
    v21 = (a2[10] >> 4) & 0xFFFFFFCF | (16 * (a2[9] & 3));
  }

  else
  {
    v21 = 0;
  }

  a1[13] = a0123456789abcd[v21];
  v22 = (a2[11] >> 6) & 0xFFFFFFC3 | (4 * (a2[10] & 0xF));
  if (v22 > 0x38)
  {
    v22 = 0;
  }

  a1[14] = a0123456789abcd[v22];
  v23 = a2[11] & 0x3F;
  if (v23 > 0x38)
  {
    v23 = 0;
  }

  a1[15] = a0123456789abcd[v23];
  v24 = a2[12];
  if (v24 <= 0xE3)
  {
    v25 = v24 >> 2;
  }

  else
  {
    v25 = 0;
  }

  a1[16] = a0123456789abcd[v25];
  if (((a2[13] >> 4) & 0xFFFFFFCF | (16 * (a2[12] & 3))) <= 0x38)
  {
    v26 = (a2[13] >> 4) & 0xFFFFFFCF | (16 * (a2[12] & 3));
  }

  else
  {
    v26 = 0;
  }

  v27 = a0123456789abcd[v26];
  qmemcpy(v48, "0123456789ABCDEFGHJKLMNPQRSTUVWX", sizeof(v48));
  a1[17] = v27;
  v28 = (a2[14] >> 6) & 0xFFFFFFC3 | (4 * (a2[13] & 0xF));
  if (v28 > 0x38)
  {
    v28 = 0;
  }

  a1[18] = a0123456789abcd[v28];
  v29 = a2[14] & 0x3F;
  if (v29 > 0x38)
  {
    v29 = 0;
  }

  v30 = a0123456789abcd[v29];
  v49 = 2841177;
  a1[19] = v30;
  v31 = a2[15];
  if (v31 <= 0xE3)
  {
    v32 = v31 >> 2;
  }

  else
  {
    v32 = 0;
  }

  a1[20] = a0123456789abcd[v32];
  if (((a2[16] >> 4) & 0xFFFFFFCF | (16 * (a2[15] & 3))) <= 0x38)
  {
    v33 = (a2[16] >> 4) & 0xFFFFFFCF | (16 * (a2[15] & 3));
  }

  else
  {
    v33 = 0;
  }

  a1[21] = a0123456789abcd[v33];
  if (((a2[17] >> 6) & 0xFFFFFFC3 | (4 * (a2[16] & 0xF))) <= 0x38)
  {
    v34 = (a2[17] >> 6) & 0xFFFFFFC3 | (4 * (a2[16] & 0xF));
  }

  else
  {
    v34 = 0;
  }

  a1[22] = a0123456789abcd[v34];
  v35 = a2[17] & 0x3F;
  if (v35 > 0x38)
  {
    v35 = 0;
  }

  a1[23] = a0123456789abcd[v35];
  v36 = a2[18];
  if (v36 <= 0xE3)
  {
    v37 = v36 >> 2;
  }

  else
  {
    v37 = 0;
  }

  *(a1 + 12) = a0123456789abcd[v37];
  v38 = strlen(a1);
  if (v38 < 3)
  {
    return 0;
  }

  v40 = 0;
  v41 = (v38 - 1);
  v42 = v38 & 0x7FFFFFFF;
  v43 = &a1[v41 - 1];
  v44 = 1;
  while (1)
  {
    v45 = *v43--;
    result = strchr(v48, v45);
    if (!result)
    {
      break;
    }

    v46 = result - v48;
    if (v44)
    {
      v46 *= 3;
    }

    v40 += v46;
    if (v42 == ++v44)
    {
      if (v40 % 34 < 1)
      {
        v47 = 48;
      }

      else
      {
        v47 = (&v48[2] - (v40 % 34))[2];
      }

      return (v47 == a1[v41]);
    }
  }

  return result;
}

char *getModuleSerialNumStringBase34(char *__s, uint64_t a2, const unsigned __int8 *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = bswap32(*a2);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = *(a2 + 7);
  strcpy(v54, "0123456789ABCDEFGHJKLMNPQRSTUVWXYZ");
  *(__s + 17) = 0;
  *(__s + 3) = 0;
  v9 = v4 % 0x2B54A20;
  if (v4 >= 0x5C13D840)
  {
    v10 = 63;
  }

  else
  {
    v10 = v54[v4 / 0x2B54A20];
  }

  *__s = v10;
  v11 = v9 % 0x146410;
  if (v9 >= 0x2B54A20)
  {
    v12 = 63;
  }

  else
  {
    v12 = v54[v9 / 0x146410];
  }

  __s[1] = v12;
  v13 = v11 % 0x9988;
  if (v11 >= 0x146410)
  {
    v14 = 63;
  }

  else
  {
    v14 = v54[v11 / 0x9988];
  }

  v15 = v5 << 16;
  __s[2] = v14;
  v16 = v13 % 0x484;
  if (v13 > 0x9987)
  {
    v17 = 63;
  }

  else
  {
    v17 = v54[v13 / 0x484];
  }

  v18 = v15 | (v6 << 8);
  __s[3] = v17;
  v19 = v16 % 0x22;
  if (v16 > 0x483)
  {
    v20 = 63;
  }

  else
  {
    v20 = v54[v16 / 0x22];
  }

  v21 = v18 | v7;
  __s[4] = v20;
  if (v19 > 0x21)
  {
    v22 = 63;
  }

  else
  {
    v22 = v54[v19];
  }

  __s[5] = v22;
  v23 = (26328987 * v21) >> 45;
  v24 = v21 - 1336336 * v23;
  __s[6] = *(v54 | v23);
  v25 = v24 % 0x9988;
  if (v24 >= 0x146410)
  {
    v26 = 63;
  }

  else
  {
    v26 = v54[v24 / 0x9988];
  }

  __s[7] = v26;
  v27 = v25 % 0x484;
  if (v25 > 0x9987)
  {
    v28 = 63;
  }

  else
  {
    v28 = v54[v25 / 0x484];
  }

  __s[8] = v28;
  v29 = v27 % 0x22;
  if (v27 > 0x483)
  {
    v30 = 63;
  }

  else
  {
    v30 = v54[v27 / 0x22];
  }

  v31 = bswap32(v8);
  __s[9] = v30;
  if (v29 > 0x21)
  {
    v32 = 63;
  }

  else
  {
    v32 = v54[v29];
  }

  __s[10] = v32;
  v33 = v31 % 0x2B54A20;
  if (v31 >= 0x5C13D840)
  {
    v34 = 63;
  }

  else
  {
    v34 = v54[v31 / 0x2B54A20];
  }

  __s[11] = v34;
  v35 = v33 % 0x146410;
  if (v33 >= 0x2B54A20)
  {
    v36 = 63;
  }

  else
  {
    v36 = v54[v33 / 0x146410];
  }

  __s[12] = v36;
  v37 = v35 % 0x9988;
  if (v35 >= 0x146410)
  {
    v38 = 63;
  }

  else
  {
    v38 = v54[v35 / 0x9988];
  }

  __s[13] = v38;
  v39 = v37 % 0x484;
  if (v37 > 0x9987)
  {
    v40 = 63;
  }

  else
  {
    v40 = v54[v37 / 0x484];
  }

  __s[14] = v40;
  v41 = v39 % 0x22;
  if (v39 > 0x483)
  {
    v42 = 63;
  }

  else
  {
    v42 = v54[v39 / 0x22];
  }

  __s[15] = v42;
  if (v41 > 0x21)
  {
    v43 = 63;
  }

  else
  {
    v43 = v54[v41];
  }

  __s[16] = v43;
  v44 = strlen(__s);
  v45 = v44 - 1;
  if (v44 <= 1)
  {
LABEL_57:
    v53 = 48;
    return (v53 == __s[v45]);
  }

  else
  {
    v46 = 0;
    v47 = v44 & 0x7FFFFFFF;
    v48 = &__s[v45 - 1];
    v49 = 1;
    while (1)
    {
      v50 = *v48--;
      result = strchr(v54, v50);
      if (!result)
      {
        break;
      }

      v52 = result - v54;
      if (v49)
      {
        v52 *= 3;
      }

      v46 += v52;
      if (v47 == ++v49)
      {
        if (v46 % 34 < 1)
        {
          goto LABEL_57;
        }

        v53 = v54[-(v46 % 34) + 34];
        return (v53 == __s[v45]);
      }
    }
  }

  return result;
}

void PeridotSuperFrame::PeridotSuperFrame(PeridotSuperFrame *this)
{
  *(this + 578) = 0;
  *this = 0;
  *(this + 1) = 0;
}

{
  *(this + 578) = 0;
  *this = 0;
  *(this + 1) = 0;
}

uint64_t PeridotSuperFrame::readSpConfigs<sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 <= 3)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = (result + 8 * v3 + 24);
      v15 = a2 + 384 * v3 + 2;
      do
      {
        *v14++ = v15;
        v15 += 384;
        --v13;
      }

      while (v13);
      return result;
    }

    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v4 = xmmword_2247A4650;
    v5 = (result + 40);
    v6 = vdupq_n_s64(2uLL);
    v7 = vdupq_n_s64(a2);
    v8 = vdupq_n_s64(0x302uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v4.i64[0];
      v11.i64[1] = 384 * v4.i64[1];
      v12 = vaddq_s64(v7, v11);
      v5[-1] = vaddq_s64(v12, v6);
      *v5 = vaddq_s64(v12, v8);
      v4 = vaddq_s64(v4, v9);
      v5 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t PeridotSuperFrame::readSpConfigs<peridot::frameV2_configV7::sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 4)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = (result + 8 * v3 + 24);
      v15 = a2 + 384 * v3 + 2;
      do
      {
        *v14++ = v15;
        v15 += 384;
        --v13;
      }

      while (v13);
      return result;
    }

    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v4 = xmmword_2247A4650;
    v5 = (result + 40);
    v6 = vdupq_n_s64(2uLL);
    v7 = vdupq_n_s64(a2);
    v8 = vdupq_n_s64(0x302uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v4.i64[0];
      v11.i64[1] = 384 * v4.i64[1];
      v12 = vaddq_s64(v7, v11);
      v5[-1] = vaddq_s64(v12, v6);
      *v5 = vaddq_s64(v12, v8);
      v4 = vaddq_s64(v4, v9);
      v5 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t PeridotSuperFrame::readSpConfigs<peridot::frameV3_configV10::sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 4)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = (result + 8 * v3 + 24);
      v15 = a2 + 384 * v3 + 2;
      do
      {
        *v14++ = v15;
        v15 += 384;
        --v13;
      }

      while (v13);
      return result;
    }

    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v4 = xmmword_2247A4650;
    v5 = (result + 40);
    v6 = vdupq_n_s64(2uLL);
    v7 = vdupq_n_s64(a2);
    v8 = vdupq_n_s64(0x302uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v4.i64[0];
      v11.i64[1] = 384 * v4.i64[1];
      v12 = vaddq_s64(v7, v11);
      v5[-1] = vaddq_s64(v12, v6);
      *v5 = vaddq_s64(v12, v8);
      v4 = vaddq_s64(v4, v9);
      v5 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t PeridotSuperFrame::readBankConfigs<sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 <= 3)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = (result + 8 * v3 + 920);
      v15 = a2 + 384 * v3 + 130;
      do
      {
        *v14++ = v15;
        v15 += 384;
        --v13;
      }

      while (v13);
      return result;
    }

    v4 = (result + 920);
    v5 = xmmword_2247A4650;
    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = vdupq_n_s64(a2);
    v7 = vdupq_n_s64(0x82uLL);
    v8 = vdupq_n_s64(0x382uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v5.i64[0];
      v11.i64[1] = 384 * v5.i64[1];
      v12 = vaddq_s64(v6, v11);
      *v4 = vaddq_s64(v12, v7);
      v4[1] = vaddq_s64(v12, v8);
      v4 += 2;
      v5 = vaddq_s64(v5, v9);
      v10 -= 4;
    }

    while (v10);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t PeridotSuperFrame::readBankConfigs<peridot::frameV2_configV7::sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 4)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = (result + 8 * v3 + 920);
      v15 = a2 + 384 * v3 + 130;
      do
      {
        *v14++ = v15;
        v15 += 384;
        --v13;
      }

      while (v13);
      return result;
    }

    v4 = (result + 920);
    v5 = xmmword_2247A4650;
    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = vdupq_n_s64(a2);
    v7 = vdupq_n_s64(0x82uLL);
    v8 = vdupq_n_s64(0x382uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v5.i64[0];
      v11.i64[1] = 384 * v5.i64[1];
      v12 = vaddq_s64(v6, v11);
      *v4 = vaddq_s64(v12, v7);
      v4[1] = vaddq_s64(v12, v8);
      v4 += 2;
      v5 = vaddq_s64(v5, v9);
      v10 -= 4;
    }

    while (v10);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t PeridotSuperFrame::readBankConfigs<peridot::frameV3_configV10::sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 4)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = (result + 8 * v3 + 920);
      v15 = a2 + 384 * v3 + 130;
      do
      {
        *v14++ = v15;
        v15 += 384;
        --v13;
      }

      while (v13);
      return result;
    }

    v4 = (result + 920);
    v5 = xmmword_2247A4650;
    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = vdupq_n_s64(a2);
    v7 = vdupq_n_s64(0x82uLL);
    v8 = vdupq_n_s64(0x382uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v5.i64[0];
      v11.i64[1] = 384 * v5.i64[1];
      v12 = vaddq_s64(v6, v11);
      *v4 = vaddq_s64(v12, v7);
      v4[1] = vaddq_s64(v12, v8);
      v4 += 2;
      v5 = vaddq_s64(v5, v9);
      v10 -= 4;
    }

    while (v10);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t PeridotSuperFrame::readPriConfigs<sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 <= 3)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = (result + 8 * v3 + 1816);
      v15 = a2 + 384 * v3 + 226;
      do
      {
        *v14++ = v15;
        v15 += 384;
        --v13;
      }

      while (v13);
      return result;
    }

    v4 = (result + 1816);
    v5 = xmmword_2247A4650;
    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = vdupq_n_s64(a2);
    v7 = vdupq_n_s64(0xE2uLL);
    v8 = vdupq_n_s64(0x3E2uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v5.i64[0];
      v11.i64[1] = 384 * v5.i64[1];
      v12 = vaddq_s64(v6, v11);
      *v4 = vaddq_s64(v12, v7);
      v4[1] = vaddq_s64(v12, v8);
      v4 += 2;
      v5 = vaddq_s64(v5, v9);
      v10 -= 4;
    }

    while (v10);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t PeridotSuperFrame::readPriConfigs<peridot::frameV2_configV7::sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 4)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = (result + 8 * v3 + 1816);
      v15 = a2 + 384 * v3 + 226;
      do
      {
        *v14++ = v15;
        v15 += 384;
        --v13;
      }

      while (v13);
      return result;
    }

    v4 = (result + 1816);
    v5 = xmmword_2247A4650;
    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = vdupq_n_s64(a2);
    v7 = vdupq_n_s64(0xE2uLL);
    v8 = vdupq_n_s64(0x3E2uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v5.i64[0];
      v11.i64[1] = 384 * v5.i64[1];
      v12 = vaddq_s64(v6, v11);
      *v4 = vaddq_s64(v12, v7);
      v4[1] = vaddq_s64(v12, v8);
      v4 += 2;
      v5 = vaddq_s64(v5, v9);
      v10 -= 4;
    }

    while (v10);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t PeridotSuperFrame::readPriConfigs<peridot::frameV3_configV10::sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 < 4)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = (result + 8 * v3 + 1816);
      v15 = a2 + 384 * v3 + 226;
      do
      {
        *v14++ = v15;
        v15 += 384;
        --v13;
      }

      while (v13);
      return result;
    }

    v4 = (result + 1816);
    v5 = xmmword_2247A4650;
    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = vdupq_n_s64(a2);
    v7 = vdupq_n_s64(0xE2uLL);
    v8 = vdupq_n_s64(0x3E2uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v5.i64[0];
      v11.i64[1] = 384 * v5.i64[1];
      v12 = vaddq_s64(v6, v11);
      *v4 = vaddq_s64(v12, v7);
      v4[1] = vaddq_s64(v12, v8);
      v4 += 2;
      v5 = vaddq_s64(v5, v9);
      v10 -= 4;
    }

    while (v10);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t PeridotSuperFrame::readOutputParams<sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    if (a3 <= 3)
    {
      v3 = 0;
LABEL_7:
      v13 = a3 - v3;
      v14 = (result + 8 * v3 + 2712);
      v15 = a2 + 384 * v3 + 307;
      do
      {
        *v14++ = v15;
        v15 += 384;
        --v13;
      }

      while (v13);
      return result;
    }

    v4 = (result + 2712);
    v5 = xmmword_2247A4650;
    v3 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = vdupq_n_s64(a2);
    v7 = vdupq_n_s64(0x133uLL);
    v8 = vdupq_n_s64(0x433uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v5.i64[0];
      v11.i64[1] = 384 * v5.i64[1];
      v12 = vaddq_s64(v6, v11);
      *v4 = vaddq_s64(v12, v7);
      v4[1] = vaddq_s64(v12, v8);
      v4 += 2;
      v5 = vaddq_s64(v5, v9);
      v10 -= 4;
    }

    while (v10);
    if (v3 != a3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t PeridotSuperFrame::loadFromBuffer(PeridotSuperFrame *this, _BYTE *a2, unint64_t a3, unint64_t *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  if (a3 <= 0x13F)
  {
    peridot_depth_log("Size of peridot frame is too small: %lu", a2);
    return 0;
  }

  v4 = a2[63];
  if (v4 - 2 >= 3)
  {
    peridot_depth_log("Unknown Peridot DT1 version %u", a2);
    return 0;
  }

  v5 = a2[51];
  if (v4 <= 3)
  {
    v6 = 9664 * a2[51];
  }

  else
  {
    v6 = 9664 * a2[51] + 1024;
  }

  if (v6 > a3)
  {
    peridot_depth_log("Size of peridot frame is too small: expected %lu (should be %lu frames), got %lu", a2);
    return 0;
  }

  if (v5 >= 0x71)
  {
    peridot_depth_log("Super frame contains more frames (%lu) than supported (%lu)", a2);
    return 0;
  }

  v8 = &a2[9280 * a2[51]];
  v9 = *v8;
  if (a2[51])
  {
    v10 = 0;
    v11 = a2 + 50;
    v12 = &a2[9280 * a2[51]];
    do
    {
      if (v11[13] - 2 >= 3)
      {
        peridot_depth_log("Unknown Peridot DT1 version %u for frame %lu in super frame", a2);
        return 0;
      }

      if (*v12 != v9)
      {
        peridot_depth_log("Super frame contains frames of mixed versions. This is not supported", a2);
        return 0;
      }

      if (v10 != *v11)
      {
        peridot_depth_log("Mismatch in frameIdxSuperframe", a2);
        return 0;
      }

      ++v10;
      v12 += 192;
      v11 += 9280;
    }

    while (v5 != v10);
  }

  if ((v9 - 7) < 2)
  {
    PeridotSuperFrame::readFrameConfigs<peridot::frameV2_configV7::sCIspPeridotFrameConfig>(this, &a2[9280 * a2[51]], v5);
  }

  if ((v9 - 9) < 2)
  {
    PeridotSuperFrame::readFrameConfigs<peridot::frameV3_configV10::sCIspPeridotFrameConfig>(this, &a2[9280 * a2[51]], v5);
  }

  if (v9 != 11)
  {
    peridot_depth_log("Unknown frame config version %hu in super frame", a2);
    return 0;
  }

  PeridotSuperFrame::readFrameConfigs<sCIspPeridotFrameConfig>(this, &a2[9280 * a2[51]], v5);
  if (!v5)
  {
    v22 = -1;
    v17 = this;
LABEL_47:
    *v17 = v5;
    *(v17 + 1) = v22 + 1;
    *(v17 + 2) = a2;
    if (a2[63] >= 4u)
    {
      *(v17 + 451) = &v8[192 * v5];
    }

    if (a4)
    {
      *a4 = v6;
    }

    return 1;
  }

  v16 = 0;
  v17 = this;
  v18 = this + 3952;
  v19 = this + 4176;
  v20 = this + 4400;
  v21 = a2 + 52;
  v22 = -1;
  v23 = 256;
  do
  {
    v24 = this + 8 * v16;
    v25 = *(*(v24 + 115) + 2);
    if (v23 != v25)
    {
      v26 = v22 + 1;
      if (v22 == 27)
      {
        peridot_depth_log("Too many banks in a single super frame. This is not supported.", v31);
        return 0;
      }

      *(this + v26 + 466) = v16;
      *&v18[8 * v26] = -1;
      *&v19[8 * v26] = -1;
      *&v20[8 * v26] = -1;
      *&v31[8 * v26 + 224] = 0;
      ++v22;
      v23 = v25;
      *&v31[8 * v26] = 0;
    }

    v27 = *(*(v24 + 339) + 1);
    switch(v27)
    {
      case 3:
        v29 = &v19[8 * v22];
LABEL_38:
        if (*v29 == -1)
        {
          goto LABEL_26;
        }

        break;
      case 2:
        v29 = &v20[8 * v22];
        goto LABEL_38;
      case 0:
        v28 = 8 * v22;
        ++*&v31[v28];
        v29 = &v18[v28];
        if (*v29 == -1)
        {
          *&v31[8 * v22 + 224] = (*v21 >> 4) * (*v21 >> 12);
LABEL_26:
          *v29 = v16;
        }

        break;
    }

    ++v16;
    v21 += 4640;
  }

  while (v5 != v16);
  if (v22 < 0)
  {
    goto LABEL_47;
  }

  v30 = 0;
  while (*&v31[8 * v30 + 224] == *&v31[8 * v30])
  {
    if (v22 < ++v30)
    {
      goto LABEL_47;
    }
  }

  peridot_depth_log("Expected %zu normal frames for bank, but got %zu", v31);
  return 0;
}

void PeridotSuperFrame::readFrameConfigs<peridot::frameV2_configV7::sCIspPeridotFrameConfig>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    goto LABEL_27;
  }

  v3 = vdupq_n_s64(a2);
  if (a3 > 3)
  {
    v4 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = xmmword_2247A4650;
    v6 = (a1 + 40);
    v7 = vdupq_n_s64(2uLL);
    v8 = vdupq_n_s64(0x302uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v5.i64[0];
      v11.i64[1] = 384 * v5.i64[1];
      v12 = vaddq_s64(v3, v11);
      v6[-1] = vaddq_s64(v12, v7);
      *v6 = vaddq_s64(v12, v8);
      v5 = vaddq_s64(v5, v9);
      v6 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v4 == a3)
    {
      v13 = a1 + 920;
      v14 = a3;
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = a3 - v4;
  v16 = (a1 + 8 * v4 + 24);
  v17 = a2 + 384 * v4 + 2;
  do
  {
    *v16++ = v17;
    v17 += 384;
    --v15;
  }

  while (v15);
  v13 = a1 + 920;
  if (a3 < 4)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v14 = a3 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_13:
  v18 = vdupq_n_s64(0x82uLL);
  v19 = vdupq_n_s64(0x382uLL);
  v20 = xmmword_2247A4650;
  v21 = vdupq_n_s64(4uLL);
  v22 = (a1 + 920);
  v23 = v14;
  do
  {
    v24.i64[0] = 384 * v20.i64[0];
    v24.i64[1] = 384 * v20.i64[1];
    v25 = vaddq_s64(v3, v24);
    *v22 = vaddq_s64(v25, v18);
    v22[1] = vaddq_s64(v25, v19);
    v22 += 2;
    v20 = vaddq_s64(v20, v21);
    v23 -= 4;
  }

  while (v23);
  if (v14 == a3)
  {
    v26 = a1 + 1816;
LABEL_22:
    v30 = xmmword_2247A4650;
    v31 = (a1 + 1816);
    v32 = vdupq_n_s64(0xE2uLL);
    v33 = vdupq_n_s64(0x3E2uLL);
    v34 = vdupq_n_s64(4uLL);
    v35 = v14;
    do
    {
      v36.i64[0] = 384 * v30.i64[0];
      v36.i64[1] = 384 * v30.i64[1];
      v37 = vaddq_s64(v3, v36);
      *v31 = vaddq_s64(v37, v32);
      v31[1] = vaddq_s64(v37, v33);
      v31 += 2;
      v30 = vaddq_s64(v30, v34);
      v35 -= 4;
    }

    while (v35);
    if (v14 != a3)
    {
      goto LABEL_25;
    }

LABEL_27:
    operator new[]();
  }

LABEL_17:
  v27 = a3 - v14;
  v28 = (v13 + 8 * v14);
  v29 = a2 + 384 * v14 + 130;
  do
  {
    *v28++ = v29;
    v29 += 384;
    --v27;
  }

  while (v27);
  v26 = a1 + 1816;
  if (a3 < 4)
  {
    v14 = 0;
LABEL_25:
    v38 = a3 - v14;
    v39 = (v26 + 8 * v14);
    v40 = a2 + 384 * v14 + 226;
    do
    {
      *v39++ = v40;
      v40 += 384;
      --v38;
    }

    while (v38);
    goto LABEL_27;
  }

  v14 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  goto LABEL_22;
}

void PeridotSuperFrame::readFrameConfigs<peridot::frameV3_configV10::sCIspPeridotFrameConfig>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    goto LABEL_27;
  }

  v3 = vdupq_n_s64(a2);
  if (a3 > 3)
  {
    v4 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = xmmword_2247A4650;
    v6 = (a1 + 40);
    v7 = vdupq_n_s64(2uLL);
    v8 = vdupq_n_s64(0x302uLL);
    v9 = vdupq_n_s64(4uLL);
    v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v11.i64[0] = 384 * v5.i64[0];
      v11.i64[1] = 384 * v5.i64[1];
      v12 = vaddq_s64(v3, v11);
      v6[-1] = vaddq_s64(v12, v7);
      *v6 = vaddq_s64(v12, v8);
      v5 = vaddq_s64(v5, v9);
      v6 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v4 == a3)
    {
      v13 = a1 + 920;
      v14 = a3;
      goto LABEL_13;
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = a3 - v4;
  v16 = (a1 + 8 * v4 + 24);
  v17 = a2 + 384 * v4 + 2;
  do
  {
    *v16++ = v17;
    v17 += 384;
    --v15;
  }

  while (v15);
  v13 = a1 + 920;
  if (a3 < 4)
  {
    v14 = 0;
    goto LABEL_17;
  }

  v14 = a3 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_13:
  v18 = vdupq_n_s64(0x82uLL);
  v19 = vdupq_n_s64(0x382uLL);
  v20 = xmmword_2247A4650;
  v21 = vdupq_n_s64(4uLL);
  v22 = (a1 + 920);
  v23 = v14;
  do
  {
    v24.i64[0] = 384 * v20.i64[0];
    v24.i64[1] = 384 * v20.i64[1];
    v25 = vaddq_s64(v3, v24);
    *v22 = vaddq_s64(v25, v18);
    v22[1] = vaddq_s64(v25, v19);
    v22 += 2;
    v20 = vaddq_s64(v20, v21);
    v23 -= 4;
  }

  while (v23);
  if (v14 == a3)
  {
    v26 = a1 + 1816;
LABEL_22:
    v30 = xmmword_2247A4650;
    v31 = (a1 + 1816);
    v32 = vdupq_n_s64(0xE2uLL);
    v33 = vdupq_n_s64(0x3E2uLL);
    v34 = vdupq_n_s64(4uLL);
    v35 = v14;
    do
    {
      v36.i64[0] = 384 * v30.i64[0];
      v36.i64[1] = 384 * v30.i64[1];
      v37 = vaddq_s64(v3, v36);
      *v31 = vaddq_s64(v37, v32);
      v31[1] = vaddq_s64(v37, v33);
      v31 += 2;
      v30 = vaddq_s64(v30, v34);
      v35 -= 4;
    }

    while (v35);
    if (v14 != a3)
    {
      goto LABEL_25;
    }

LABEL_27:
    operator new[]();
  }

LABEL_17:
  v27 = a3 - v14;
  v28 = (v13 + 8 * v14);
  v29 = a2 + 384 * v14 + 130;
  do
  {
    *v28++ = v29;
    v29 += 384;
    --v27;
  }

  while (v27);
  v26 = a1 + 1816;
  if (a3 < 4)
  {
    v14 = 0;
LABEL_25:
    v38 = a3 - v14;
    v39 = (v26 + 8 * v14);
    v40 = a2 + 384 * v14 + 226;
    do
    {
      *v39++ = v40;
      v40 += 384;
      --v38;
    }

    while (v38);
    goto LABEL_27;
  }

  v14 = a3 & 0xFFFFFFFFFFFFFFFCLL;
  goto LABEL_22;
}

uint64_t PeridotSuperFrame::readFrameConfigs<sCIspPeridotFrameConfig>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v3 = vdupq_n_s64(a2);
    if (a3 > 3)
    {
      v4 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v5 = xmmword_2247A4650;
      v6 = (result + 40);
      v7 = vdupq_n_s64(2uLL);
      v8 = vdupq_n_s64(0x302uLL);
      v9 = vdupq_n_s64(4uLL);
      v10 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v11.i64[0] = 384 * v5.i64[0];
        v11.i64[1] = 384 * v5.i64[1];
        v12 = vaddq_s64(v3, v11);
        v6[-1] = vaddq_s64(v12, v7);
        *v6 = vaddq_s64(v12, v8);
        v5 = vaddq_s64(v5, v9);
        v6 += 2;
        v10 -= 4;
      }

      while (v10);
      if (v4 == a3)
      {
        v13 = result + 920;
        v14 = a3;
        goto LABEL_13;
      }
    }

    else
    {
      v4 = 0;
    }

    v15 = a3 - v4;
    v16 = (result + 8 * v4 + 24);
    v17 = a2 + 384 * v4 + 2;
    do
    {
      *v16++ = v17;
      v17 += 384;
      --v15;
    }

    while (v15);
    v13 = result + 920;
    if (a3 < 4)
    {
      v14 = 0;
      goto LABEL_17;
    }

    v14 = a3 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_13:
    v18 = vdupq_n_s64(0x82uLL);
    v19 = vdupq_n_s64(0x382uLL);
    v20 = xmmword_2247A4650;
    v21 = vdupq_n_s64(4uLL);
    v22 = (result + 920);
    v23 = v14;
    do
    {
      v24.i64[0] = 384 * v20.i64[0];
      v24.i64[1] = 384 * v20.i64[1];
      v25 = vaddq_s64(v3, v24);
      *v22 = vaddq_s64(v25, v18);
      v22[1] = vaddq_s64(v25, v19);
      v22 += 2;
      v20 = vaddq_s64(v20, v21);
      v23 -= 4;
    }

    while (v23);
    if (v14 == a3)
    {
      v26 = result + 1816;
      goto LABEL_22;
    }

LABEL_17:
    v27 = a3 - v14;
    v28 = (v13 + 8 * v14);
    v29 = a2 + 384 * v14 + 130;
    do
    {
      *v28++ = v29;
      v29 += 384;
      --v27;
    }

    while (v27);
    v26 = result + 1816;
    if (a3 < 4)
    {
      v14 = 0;
      goto LABEL_26;
    }

    v14 = a3 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_22:
    v30 = xmmword_2247A4650;
    v31 = (result + 1816);
    v32 = vdupq_n_s64(0xE2uLL);
    v33 = vdupq_n_s64(0x3E2uLL);
    v34 = vdupq_n_s64(4uLL);
    v35 = v14;
    do
    {
      v36.i64[0] = 384 * v30.i64[0];
      v36.i64[1] = 384 * v30.i64[1];
      v37 = vaddq_s64(v3, v36);
      *v31 = vaddq_s64(v37, v32);
      v31[1] = vaddq_s64(v37, v33);
      v31 += 2;
      v30 = vaddq_s64(v30, v34);
      v35 -= 4;
    }

    while (v35);
    if (v14 == a3)
    {
      v38 = result + 2712;
      goto LABEL_31;
    }

LABEL_26:
    v39 = a3 - v14;
    v40 = (v26 + 8 * v14);
    v41 = a2 + 384 * v14 + 226;
    do
    {
      *v40++ = v41;
      v41 += 384;
      --v39;
    }

    while (v39);
    v38 = result + 2712;
    if (a3 < 4)
    {
      v14 = 0;
LABEL_34:
      v50 = a3 - v14;
      v51 = (v38 + 8 * v14);
      v52 = a2 + 384 * v14 + 307;
      do
      {
        *v51++ = v52;
        v52 += 384;
        --v50;
      }

      while (v50);
LABEL_36:
      v53 = (result + 3616);
      v54 = (a2 + 306);
      do
      {
        *v53++ = *v54;
        v54 += 384;
        --a3;
      }

      while (a3);
      return result;
    }

    v14 = a3 & 0xFFFFFFFFFFFFFFFCLL;
LABEL_31:
    v42 = xmmword_2247A4650;
    v43 = (result + 2712);
    v44 = vdupq_n_s64(0x133uLL);
    v45 = vdupq_n_s64(0x433uLL);
    v46 = vdupq_n_s64(4uLL);
    v47 = v14;
    do
    {
      v48.i64[0] = 384 * v42.i64[0];
      v48.i64[1] = 384 * v42.i64[1];
      v49 = vaddq_s64(v3, v48);
      *v43 = vaddq_s64(v49, v44);
      v43[1] = vaddq_s64(v49, v45);
      v43 += 2;
      v42 = vaddq_s64(v42, v46);
      v47 -= 4;
    }

    while (v47);
    if (v14 == a3)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  return result;
}

uint64_t PeridotSuperFrame::framesForBank(PeridotSuperFrame *this, unint64_t a2)
{
  v2 = this + 8 * a2;
  if (*(this + 1) - 1 <= a2)
  {
    v3 = this;
  }

  else
  {
    v3 = (v2 + 3736);
  }

  return *v3 - *(v2 + 466);
}

CFTypeRef PixelBufferUtils::copyAttachment(CVBufferRef buffer, const __CFString *a2, CVAttachmentMode *a3, CVAttachmentMode *a4)
{
  result = 0;
  if (buffer && a2)
  {
    result = CVBufferGetAttachment(buffer, a2, a3);
    if (result)
    {
      v6 = result;
      CFRetain(result);
      return v6;
    }
  }

  return result;
}

__CVBuffer *PixelBufferUtils::copyAttachments(__CVBuffer *this, __CVBuffer *a2, CVAttachmentMode a3)
{
  if (this)
  {
    this = CVBufferGetAttachments(this, a2);
    if (this)
    {
      v3 = this;
      CFRetain(this);
      return v3;
    }
  }

  return this;
}

unint64_t PixelBufferUtils::pixelFormatAsString@<X0>(unint64_t this@<X0>, char *a2@<X8>)
{
  if (this == 32)
  {
    a2[23] = 4;
    v3 = 1111970369;
    goto LABEL_5;
  }

  if (this == 24)
  {
    a2[23] = 4;
    v3 = 1196569650;
LABEL_5:
    *a2 = v3;
    a2[4] = 0;
    return this;
  }

  __s[0] = BYTE3(this);
  __s[1] = BYTE2(this);
  __s[2] = BYTE1(this);
  v19 = this;
  __s[3] = this;
  __s[4] = 0;
  this = strlen(__s);
  if (this >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = this;
  if (this >= 0x17)
  {
    operator new();
  }

  a2[23] = this;
  if (this)
  {
    this = memcpy(a2, __s, this);
  }

  a2[v4] = 0;
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (*v5 <= 31)
  {
    v18 = a2[23];
    __p = *a2;
    v33[6] = 0;
    v6 = MEMORY[0x277D82890] + 104;
    v33[0] = MEMORY[0x277D82890] + 104;
    v7 = MEMORY[0x277D82890] + 64;
    v24 = MEMORY[0x277D82890] + 64;
    v8 = MEMORY[0x277D82818];
    v9 = *(MEMORY[0x277D82818] + 24);
    *__s = *(MEMORY[0x277D82818] + 16);
    *&__s[*(*__s - 24)] = v9;
    v23 = 0;
    v10 = &__s[*(*__s - 24)];
    std::ios_base::init(v10, &v25);
    v11 = MEMORY[0x277D82890] + 24;
    v10[1].__vftable = 0;
    v10[1].__fmtflags_ = -1;
    v12 = v8[5];
    v24 = v8[4];
    *(&v24 + *(v24 - 24)) = v12;
    *__s = v8[1];
    *&__s[*(*__s - 24)] = v8[6];
    v33[0] = v6;
    *__s = v11;
    v13 = MEMORY[0x277D82868] + 16;
    v24 = v7;
    v25 = MEMORY[0x277D82868] + 16;
    MEMORY[0x22AA530C0](v26);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    memset(&v30, 0, sizeof(v30));
    v14 = MEMORY[0x277D82878] + 16;
    v32 = 24;
    v25 = MEMORY[0x277D82878] + 16;
    v26[1].__locale_ = &v30;
    v26[2].__locale_ = &v30;
    v26[3].__locale_ = &v30;
    v31 = &v30;
    std::string::resize(&v30, 0x16uLL, 0);
    size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v30.__r_.__value_.__l.__size_;
    }

    v27 = &v30;
    v28 = &v30;
    v29 = &v30 + size;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "0x", 2);
    *(&v24 + *(v24 - 24) + 8) = *(&v24 + *(v24 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x22AA53000](&v24, v19);
    std::stringbuf::str();
    if (v18 < 0)
    {
      operator delete(__p);
    }

    *a2 = v20;
    *(a2 + 2) = v21;
    *__s = *v8;
    v16 = v8[9];
    *&__s[*(*__s - 24)] = v8[8];
    v24 = v16;
    v25 = v14;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v25 = v13;
    std::locale::~locale(v26);
    std::iostream::~basic_iostream();
    return MEMORY[0x22AA53140](v33);
  }

  return this;
}

void sub_224729928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  MEMORY[0x22AA53140](a13);
  if (a12 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AA52FC0](v21, a1);
  if (v21[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_28;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v23 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v23 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v23 < 0)
      {
        v19 = v18;
        operator delete(__b.__locale_);
        if (v19 != v16)
        {
LABEL_28:
          std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
          goto LABEL_29;
        }
      }

      else if (v18 != v16)
      {
        goto LABEL_28;
      }
    }

    if (v11 - v12 >= 1 && (*(*v7 + 96))(v7, v12, v11 - v12) != v11 - v12)
    {
      goto LABEL_28;
    }

    *(v6 + 3) = 0;
  }

LABEL_29:
  MEMORY[0x22AA52FD0](v21);
  return a1;
}

void sub_224729C4C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x22AA52FD0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x224729C20);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t PixelBufferUtils::pixelFormatFromString(PixelBufferUtils *this, const char *a2)
{
  if (!strcmp(this, "24RG"))
  {
    return 24;
  }

  if (!strcmp(this, "ARGB"))
  {
    return 32;
  }

  return bswap32(*this);
}

unint64_t PixelBufferUtils::pixelFormatAsFileExtension@<X0>(PixelBufferUtils *this@<X0>, uint64_t a2@<X8>)
{
  result = PixelBufferUtils::pixelFormatAsString(this, a2);
  v4 = *(a2 + 23);
  v5 = v4;
  v6 = *a2;
  v7 = *(a2 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  if (!v9)
  {
    goto LABEL_69;
  }

  v10 = v8;
  if (v9 < 8)
  {
LABEL_139:
    v32 = &v8[v9];
    do
    {
      if (*v10 == 47)
      {
        *v10 = 58;
      }

      ++v10;
    }

    while (v10 != v32);
    goto LABEL_68;
  }

  if (v9 < 0x10)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v11 = v9 & 0xFFFFFFFFFFFFFFF0;
  v16 = v8 + 7;
  v17.i64[0] = 0x2F2F2F2F2F2F2F2FLL;
  v17.i64[1] = 0x2F2F2F2F2F2F2F2FLL;
  v18 = v9 & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v19 = vceqq_s8(*(v16 - 7), v17);
    if (v19.i8[0])
    {
      *(v16 - 7) = 58;
      if ((v19.i8[1] & 1) == 0)
      {
LABEL_36:
        if ((v19.i8[2] & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_53;
      }
    }

    else if ((v19.i8[1] & 1) == 0)
    {
      goto LABEL_36;
    }

    *(v16 - 6) = 58;
    if ((v19.i8[2] & 1) == 0)
    {
LABEL_37:
      if ((v19.i8[3] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(v16 - 5) = 58;
    if ((v19.i8[3] & 1) == 0)
    {
LABEL_38:
      if ((v19.i8[4] & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(v16 - 4) = 58;
    if ((v19.i8[4] & 1) == 0)
    {
LABEL_39:
      if ((v19.i8[5] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(v16 - 3) = 58;
    if ((v19.i8[5] & 1) == 0)
    {
LABEL_40:
      if ((v19.i8[6] & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    *(v16 - 2) = 58;
    if ((v19.i8[6] & 1) == 0)
    {
LABEL_41:
      if ((v19.i8[7] & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    *(v16 - 1) = 58;
    if ((v19.i8[7] & 1) == 0)
    {
LABEL_42:
      if ((v19.i8[8] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    *v16 = 58;
    if ((v19.i8[8] & 1) == 0)
    {
LABEL_43:
      if ((v19.i8[9] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    v16[1] = 58;
    if ((v19.i8[9] & 1) == 0)
    {
LABEL_44:
      if ((v19.i8[10] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    v16[2] = 58;
    if ((v19.i8[10] & 1) == 0)
    {
LABEL_45:
      if ((v19.i8[11] & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_62;
    }

LABEL_61:
    v16[3] = 58;
    if ((v19.i8[11] & 1) == 0)
    {
LABEL_46:
      if ((v19.i8[12] & 1) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_63;
    }

LABEL_62:
    v16[4] = 58;
    if ((v19.i8[12] & 1) == 0)
    {
LABEL_47:
      if ((v19.i8[13] & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_64;
    }

LABEL_63:
    v16[5] = 58;
    if ((v19.i8[13] & 1) == 0)
    {
LABEL_48:
      if (v19.i8[14])
      {
        goto LABEL_65;
      }

      goto LABEL_49;
    }

LABEL_64:
    v16[6] = 58;
    if (v19.i8[14])
    {
LABEL_65:
      v16[7] = 58;
      if ((v19.i8[15] & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_66;
    }

LABEL_49:
    if ((v19.i8[15] & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_66:
    v16[8] = 58;
LABEL_33:
    v16 += 16;
    v18 -= 16;
  }

  while (v18);
  if (v9 == v11)
  {
    goto LABEL_68;
  }

  if ((v9 & 8) == 0)
  {
    v10 = &v8[v11];
    goto LABEL_139;
  }

LABEL_11:
  v12 = v9 & 0xFFFFFFFFFFFFFFF8;
  v13 = v11 - (v9 & 0xFFFFFFFFFFFFFFF8);
  v14 = &v8[v11 + 3];
  while (2)
  {
    v15 = vceq_s8(*(v14 - 3), 0x2F2F2F2F2F2F2F2FLL);
    if (v15.i8[0])
    {
      *(v14 - 3) = 58;
      if (v15.i8[1])
      {
        goto LABEL_23;
      }

LABEL_15:
      if ((v15.i8[2] & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_24:
      *(v14 - 1) = 58;
      if (v15.i8[3])
      {
        goto LABEL_25;
      }

LABEL_17:
      if ((v15.i8[4] & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_26:
      v14[1] = 58;
      if (v15.i8[5])
      {
        goto LABEL_27;
      }

LABEL_19:
      if ((v15.i8[6] & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_28:
      v14[3] = 58;
      if (v15.i8[7])
      {
LABEL_29:
        v14[4] = 58;
      }
    }

    else
    {
      if ((v15.i8[1] & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      *(v14 - 2) = 58;
      if (v15.i8[2])
      {
        goto LABEL_24;
      }

LABEL_16:
      if ((v15.i8[3] & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_25:
      *v14 = 58;
      if (v15.i8[4])
      {
        goto LABEL_26;
      }

LABEL_18:
      if ((v15.i8[5] & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_27:
      v14[2] = 58;
      if (v15.i8[6])
      {
        goto LABEL_28;
      }

LABEL_20:
      if (v15.i8[7])
      {
        goto LABEL_29;
      }
    }

    v14 += 8;
    v13 += 8;
    if (v13)
    {
      continue;
    }

    break;
  }

  if (v9 != v12)
  {
    v10 = &v8[v12];
    goto LABEL_139;
  }

LABEL_68:
  v4 = *(a2 + 23);
  v6 = *a2;
  v7 = *(a2 + 8);
  v5 = *(a2 + 23);
LABEL_69:
  if (v5 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = v6;
  }

  if (v5 >= 0)
  {
    v21 = v4;
  }

  else
  {
    v21 = v7;
  }

  if (!v21)
  {
    return result;
  }

  v22 = v20;
  if (v21 < 8)
  {
LABEL_145:
    v33 = &v20[v21];
    do
    {
      if (*v22 == 46)
      {
        *v22 = 95;
      }

      ++v22;
    }

    while (v22 != v33);
    return result;
  }

  if (v21 < 0x10)
  {
    v23 = 0;
    goto LABEL_79;
  }

  v23 = v21 & 0xFFFFFFFFFFFFFFF0;
  v28 = v20 + 7;
  v29.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v29.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
  v30 = v21 & 0xFFFFFFFFFFFFFFF0;
  while (2)
  {
    v31 = vceqq_s8(*(v28 - 7), v29);
    if (v31.i8[0])
    {
      *(v28 - 7) = 95;
      if (v31.i8[1])
      {
        goto LABEL_120;
      }

LABEL_104:
      if ((v31.i8[2] & 1) == 0)
      {
        goto LABEL_105;
      }

LABEL_121:
      *(v28 - 5) = 95;
      if (v31.i8[3])
      {
        goto LABEL_122;
      }

LABEL_106:
      if ((v31.i8[4] & 1) == 0)
      {
        goto LABEL_107;
      }

LABEL_123:
      *(v28 - 3) = 95;
      if (v31.i8[5])
      {
        goto LABEL_124;
      }

LABEL_108:
      if ((v31.i8[6] & 1) == 0)
      {
        goto LABEL_109;
      }

LABEL_125:
      *(v28 - 1) = 95;
      if (v31.i8[7])
      {
        goto LABEL_126;
      }

LABEL_110:
      if ((v31.i8[8] & 1) == 0)
      {
        goto LABEL_111;
      }

LABEL_127:
      v28[1] = 95;
      if (v31.i8[9])
      {
        goto LABEL_128;
      }

LABEL_112:
      if ((v31.i8[10] & 1) == 0)
      {
        goto LABEL_113;
      }

LABEL_129:
      v28[3] = 95;
      if (v31.i8[11])
      {
        goto LABEL_130;
      }

LABEL_114:
      if ((v31.i8[12] & 1) == 0)
      {
        goto LABEL_115;
      }

LABEL_131:
      v28[5] = 95;
      if (v31.i8[13])
      {
        goto LABEL_132;
      }

LABEL_116:
      if ((v31.i8[14] & 1) == 0)
      {
        goto LABEL_117;
      }

LABEL_133:
      v28[7] = 95;
      if (v31.i8[15])
      {
LABEL_134:
        v28[8] = 95;
      }
    }

    else
    {
      if ((v31.i8[1] & 1) == 0)
      {
        goto LABEL_104;
      }

LABEL_120:
      *(v28 - 6) = 95;
      if (v31.i8[2])
      {
        goto LABEL_121;
      }

LABEL_105:
      if ((v31.i8[3] & 1) == 0)
      {
        goto LABEL_106;
      }

LABEL_122:
      *(v28 - 4) = 95;
      if (v31.i8[4])
      {
        goto LABEL_123;
      }

LABEL_107:
      if ((v31.i8[5] & 1) == 0)
      {
        goto LABEL_108;
      }

LABEL_124:
      *(v28 - 2) = 95;
      if (v31.i8[6])
      {
        goto LABEL_125;
      }

LABEL_109:
      if ((v31.i8[7] & 1) == 0)
      {
        goto LABEL_110;
      }

LABEL_126:
      *v28 = 95;
      if (v31.i8[8])
      {
        goto LABEL_127;
      }

LABEL_111:
      if ((v31.i8[9] & 1) == 0)
      {
        goto LABEL_112;
      }

LABEL_128:
      v28[2] = 95;
      if (v31.i8[10])
      {
        goto LABEL_129;
      }

LABEL_113:
      if ((v31.i8[11] & 1) == 0)
      {
        goto LABEL_114;
      }

LABEL_130:
      v28[4] = 95;
      if (v31.i8[12])
      {
        goto LABEL_131;
      }

LABEL_115:
      if ((v31.i8[13] & 1) == 0)
      {
        goto LABEL_116;
      }

LABEL_132:
      v28[6] = 95;
      if (v31.i8[14])
      {
        goto LABEL_133;
      }

LABEL_117:
      if (v31.i8[15])
      {
        goto LABEL_134;
      }
    }

    v28 += 16;
    v30 -= 16;
    if (v30)
    {
      continue;
    }

    break;
  }

  if (v21 == v23)
  {
    return result;
  }

  if ((v21 & 8) == 0)
  {
    v22 = &v20[v23];
    goto LABEL_145;
  }

LABEL_79:
  v24 = v21 & 0xFFFFFFFFFFFFFFF8;
  v25 = v23 - (v21 & 0xFFFFFFFFFFFFFFF8);
  v26 = &v20[v23 + 3];
  while (2)
  {
    v27 = vceq_s8(*(v26 - 3), 0x2E2E2E2E2E2E2E2ELL);
    if (v27.i8[0])
    {
      *(v26 - 3) = 95;
      if (v27.i8[1])
      {
        goto LABEL_91;
      }

LABEL_83:
      if ((v27.i8[2] & 1) == 0)
      {
        goto LABEL_84;
      }

LABEL_92:
      *(v26 - 1) = 95;
      if (v27.i8[3])
      {
        goto LABEL_93;
      }

LABEL_85:
      if ((v27.i8[4] & 1) == 0)
      {
        goto LABEL_86;
      }

LABEL_94:
      v26[1] = 95;
      if (v27.i8[5])
      {
        goto LABEL_95;
      }

LABEL_87:
      if ((v27.i8[6] & 1) == 0)
      {
        goto LABEL_88;
      }

LABEL_96:
      v26[3] = 95;
      if (v27.i8[7])
      {
LABEL_97:
        v26[4] = 95;
      }
    }

    else
    {
      if ((v27.i8[1] & 1) == 0)
      {
        goto LABEL_83;
      }

LABEL_91:
      *(v26 - 2) = 95;
      if (v27.i8[2])
      {
        goto LABEL_92;
      }

LABEL_84:
      if ((v27.i8[3] & 1) == 0)
      {
        goto LABEL_85;
      }

LABEL_93:
      *v26 = 95;
      if (v27.i8[4])
      {
        goto LABEL_94;
      }

LABEL_86:
      if ((v27.i8[5] & 1) == 0)
      {
        goto LABEL_87;
      }

LABEL_95:
      v26[2] = 95;
      if (v27.i8[6])
      {
        goto LABEL_96;
      }

LABEL_88:
      if (v27.i8[7])
      {
        goto LABEL_97;
      }
    }

    v26 += 8;
    v25 += 8;
    if (v25)
    {
      continue;
    }

    break;
  }

  if (v21 != v24)
  {
    v22 = &v20[v24];
    goto LABEL_145;
  }

  return result;
}

uint64_t PixelBufferUtils::pixelFormatFromFileExtension(PixelBufferUtils *this, const char *a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:this];
  if (([v2 isEqualToString:&stru_28380C970] & 1) != 0 || objc_msgSend(v2, "length") != 4)
  {
    v6 = 0;
  }

  else
  {
    v3 = [v2 stringByReplacingOccurrencesOfString:@":" withString:@"/"];

    v4 = [v3 stringByReplacingOccurrencesOfString:@"_" withString:@"."];

    v2 = v4;
    v5 = [v4 UTF8String];
    if (!strcmp(v5, "24RG"))
    {
      v6 = 24;
    }

    else if (!strcmp(v5, "ARGB"))
    {
      v6 = 32;
    }

    else
    {
      v6 = bswap32(*v5);
    }
  }

  return v6;
}

uint64_t PixelBufferUtils::wrapAsDifferentPixelFormat(PixelBufferUtils *this, __CVBuffer *a2, CVPixelBufferRef *a3, __CVBuffer **a4)
{
  v5 = a2;
  CVPixelBufferRetain(this);
  CVPixelBufferLockBaseAddress(this, 1uLL);
  v7 = *MEMORY[0x277CBECE8];
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  CVPixelBufferCreateWithBytes(v7, Width, Height, v5, BaseAddress, BytesPerRow, pixelBufferDeallocator, this, 0, a3);

  return CVPixelBufferUnlockBaseAddress(this, 1uLL);
}

void PixelBufferUtils::asVImageBuffer(PixelBufferUtils *this@<X0>, __CVBuffer *a2@<X1>, CGRect a3@<0:D0, 8:D1, 16:D2, 24:D3>, vImage_Buffer *a4@<X8>)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(this, a2);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(this, a2);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(this, a2);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(this, a2);
  if (!BaseAddressOfPlane)
  {
    NSLog(&cfstr_SDErrorAsvimag.isa, "asVImageBuffer", 231);
    BytesPerRowOfPlane = 0;
    WidthOfPlane = 0;
    HeightOfPlane = 0;
  }

  v16[0] = BaseAddressOfPlane;
  v16[1] = HeightOfPlane;
  v16[2] = WidthOfPlane;
  v16[3] = BytesPerRowOfPlane;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  cropVImageBuffer(a4, v16, v17, PixelFormatType, a2);
}

void cropVImageBuffer(vImage_Buffer *a1, uint64_t a2, CGRect a3, PixelBufferUtils *a4, uint64_t a5)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = *(a2 + 16);
  *&a1->data = *a2;
  *&a1->width = v13;
  *&v13 = y;
  if (!CGRectIsEmpty(a3))
  {
    v14 = PixelBufferUtils::verticalSubsamplingForPixelFormat(a4, a5);
    v15 = PixelBufferUtils::horizontalSubsamplingForPixelFormat(a4, a5);
    v16 = PixelBufferUtils::pixelSizeForPixelFormat(a4, a5);
    v17 = *(a2 + 24);
    v19 = *a2;
    v18 = *(a2 + 8);
    v20 = vcvtpd_u64_f64(width / v15);
    v21 = (*a2 + v17 * (y / v14) + x / v15 * v16);
    v22 = vcvtpd_u64_f64(height / v14);
    a1->height = v22;
    a1->width = v20;
    a1->data = v21;
    v23 = v19 + v18 * v17;
    v24 = v21 < v19 || v21 >= v23;
    if (v24 || (width >= v20 ? (v25 = height < v22) : (v25 = 1), v25))
    {
      NSLog(&cfstr_SDErrorCropOri.isa, "cropVImageBuffer", 206, *&x, *&y, *&width, *&height, *(a2 + 16) * v15, v18 * v14);
      *&a1->data = 0u;
      *&a1->width = 0u;
    }
  }
}

uint64_t PixelBufferUtils::verticalSubsamplingForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  result = 1;
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return result;
        }

        v5 = 1751410032;
      }

      else
      {
        if (this == 1751411059 || this == 1919365990)
        {
          return result;
        }

        v5 = 1932996149;
      }
    }

    else if (this <= 1380411456)
    {
      if (this == 1380401729)
      {
        return result;
      }

      v5 = 1380410945;
    }

    else
    {
      if (this == 1380411457 || this == 1647392359)
      {
        return result;
      }

      v5 = 1717855600;
    }
  }

  else if (this > 875704437)
  {
    if (this <= 1111970368)
    {
      if (this == 875704438)
      {
        goto LABEL_35;
      }

      v5 = 1094862674;
    }

    else
    {
      if (this == 1111970369 || this == 1278226488)
      {
        return result;
      }

      v5 = 1278226536;
    }
  }

  else
  {
    if (this > 825437746)
    {
      if (this == 825437747 || this == 843264104)
      {
        return result;
      }

      if (this != 875704422)
      {
        goto LABEL_30;
      }

LABEL_35:
      if (a2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    if (this == 32)
    {
      return result;
    }

    v5 = 825306677;
  }

  if (this == v5)
  {
    return result;
  }

LABEL_30:
  v6 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (v6)
  {
    v7 = v6;
    if (PixelBufferUtils::planeCountForPixelFormat(this))
    {
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
      v9 = [v8 objectAtIndexedSubscript:a2];

      v7 = v9;
    }

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F78]];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 intValue];
    }

    else
    {
      v12 = 1;
    }

    return v12;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "verticalSubsamplingForPixelFormat", 416, this, v13);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_22472AB1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferUtils::horizontalSubsamplingForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  result = 1;
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return result;
        }

        v5 = 1751410032;
      }

      else
      {
        if (this == 1751411059 || this == 1919365990)
        {
          return result;
        }

        v5 = 1932996149;
      }
    }

    else if (this <= 1380411456)
    {
      if (this == 1380401729)
      {
        return result;
      }

      v5 = 1380410945;
    }

    else
    {
      if (this == 1380411457 || this == 1647392359)
      {
        return result;
      }

      v5 = 1717855600;
    }
  }

  else if (this > 875704437)
  {
    if (this <= 1111970368)
    {
      if (this == 875704438)
      {
        goto LABEL_35;
      }

      v5 = 1094862674;
    }

    else
    {
      if (this == 1111970369 || this == 1278226488)
      {
        return result;
      }

      v5 = 1278226536;
    }
  }

  else
  {
    if (this > 825437746)
    {
      if (this == 825437747 || this == 843264104)
      {
        return result;
      }

      if (this != 875704422)
      {
        goto LABEL_30;
      }

LABEL_35:
      if (a2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    if (this == 32)
    {
      return result;
    }

    v5 = 825306677;
  }

  if (this == v5)
  {
    return result;
  }

LABEL_30:
  v6 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (v6)
  {
    v7 = v6;
    if (PixelBufferUtils::planeCountForPixelFormat(this))
    {
      v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
      v9 = [v8 objectAtIndexedSubscript:a2];

      v7 = v9;
    }

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F60]];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 intValue];
    }

    else
    {
      v12 = 1;
    }

    return v12;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v15 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "horizontalSubsamplingForPixelFormat", 369, this, v13);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_22472AE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t PixelBufferUtils::pixelSizeForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  if (this > 1278226535)
  {
    if (this <= 1717855599)
    {
      if (this <= 1380410944)
      {
        if (this != 1278226536)
        {
          if (this != 1380401729)
          {
            goto LABEL_40;
          }

          return 4;
        }

        return 2;
      }

      if (this == 1380410945)
      {
        return 16;
      }

      if (this == 1380411457)
      {
        return 8;
      }

      v4 = 1647392359;
    }

    else if (this > 1751411058)
    {
      if (this == 1751411059)
      {
        return 2;
      }

      if (this == 1919365990)
      {
        return 4;
      }

      v4 = 1932996149;
    }

    else
    {
      if (this == 1717855600 || this == 1717856627)
      {
        return 4;
      }

      v4 = 1751410032;
    }

LABEL_33:
    if (this != v4)
    {
      goto LABEL_40;
    }

    return 2;
  }

  if (this <= 875704437)
  {
    if (this > 825437746)
    {
      if (this != 825437747)
      {
        if (this != 843264104)
        {
          v3 = 875704422;
          goto LABEL_16;
        }

        return 4;
      }

      return 2;
    }

    if (this == 32)
    {
      return 4;
    }

    v4 = 825306677;
    goto LABEL_33;
  }

  if (this > 1094862673)
  {
    if (this != 1094862674 && this != 1111970369)
    {
      if (this == 1278226488)
      {
        return 1;
      }

      goto LABEL_40;
    }

    return 4;
  }

  if (this == 875704438 || this == 875836518)
  {
    goto LABEL_17;
  }

  v3 = 875836534;
LABEL_16:
  if (this == v3)
  {
LABEL_17:
    if (a2)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

LABEL_40:
  v7 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (PixelBufferUtils::planeCountForPixelFormat(this))
  {
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
    v9 = [v8 objectAtIndexedSubscript:a2];

    v7 = v9;
  }

  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4ED0]];
  v11 = v10;
  if (v10)
  {
    [v10 floatValue];
    v13 = vcvtps_u32_f32(v12 * 0.125);

    return v13;
  }

  else
  {

    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v16 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "pixelSizeForPixelFormat", 464, this, v14);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_22472B17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PixelBufferUtils::planeCountForPixelFormat(PixelBufferUtils *this)
{
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return 0;
        }

        v2 = 1751410032;
      }

      else
      {
        if (this == 1751411059)
        {
          return 0;
        }

        if (this == 1919365990)
        {
          return 3;
        }

        v2 = 1932996149;
      }
    }

    else if (this <= 1380411456)
    {
      if (this == 1380401729)
      {
        return 0;
      }

      v2 = 1380410945;
    }

    else
    {
      if (this == 1380411457 || this == 1647392359)
      {
        return 0;
      }

      v2 = 1717855600;
    }

LABEL_29:
    if (this != v2)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (this > 875704437)
  {
    if (this <= 1111970368)
    {
      if (this == 875704438)
      {
        return 2;
      }

      v2 = 1094862674;
    }

    else
    {
      if (this == 1111970369 || this == 1278226488)
      {
        return 0;
      }

      v2 = 1278226536;
    }

    goto LABEL_29;
  }

  if (this <= 825437746)
  {
    if (this == 32)
    {
      return 0;
    }

    v2 = 825306677;
    goto LABEL_29;
  }

  if (this == 825437747 || this == 843264104)
  {
    return 0;
  }

  if (this == 875704422)
  {
    return 2;
  }

LABEL_34:
  v4 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  if (!v4)
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v11 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "planeCountForPixelFormat", 554, this, v9);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  v5 = v4;
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 count];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_22472B444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22472B460(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void PixelBufferUtils::asVImageBuffer(PixelBufferUtils *this@<X0>, CGRect a2@<0:D0, 8:D1, 16:D2, 24:D3>, vImage_Buffer *a3@<X8>)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  BaseAddress = CVPixelBufferGetBaseAddress(this);
  v11 = CVPixelBufferGetHeight(this);
  v12 = CVPixelBufferGetWidth(this);
  BytesPerRow = CVPixelBufferGetBytesPerRow(this);
  if (!BaseAddress)
  {
    NSLog(&cfstr_SDErrorAsvimag.isa, "asVImageBuffer", 249);
    BytesPerRow = 0;
    v12 = 0;
    v11 = 0;
  }

  v15[0] = BaseAddress;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = BytesPerRow;
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  cropVImageBuffer(a3, v15, v16, PixelFormatType, 0);
}

CVPixelBufferRef PixelBufferUtils::createPixelBuffer(size_t width, size_t height, OSType pixelFormatType, int a4)
{
  BufferAttributes = 0;
  pixelBufferOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  if (a4)
  {
    BufferAttributes = getBufferAttributes();
  }

  if (CVPixelBufferCreate(v8, width, height, pixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

uint64_t getBufferAttributes(void)
{
  v3[2] = *MEMORY[0x277D85DE8];
  {
    v1 = *MEMORY[0x277CC4D60];
    v2[0] = *MEMORY[0x277CC4DE8];
    v2[1] = v1;
    v3[0] = MEMORY[0x277CBEC10];
    v3[1] = &unk_2838110C8;
    getBufferAttributes(void)::bufAttr = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:2];
  }

  return getBufferAttributes(void)::bufAttr;
}

CVPixelBufferRef PixelBufferUtils::createPixelBufferWithSameSizeAndFormat(PixelBufferUtils *this, __CVBuffer *a2)
{
  v2 = a2;
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  BufferAttributes = 0;
  pixelBufferOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  if (v2)
  {
    BufferAttributes = getBufferAttributes();
  }

  if (CVPixelBufferCreate(v8, Width, Height, PixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

CVPixelBufferRef PixelBufferUtils::createPixelBufferWithSameSize(PixelBufferUtils *this, __CVBuffer *a2, int a3)
{
  v4 = a2;
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  BufferAttributes = 0;
  pixelBufferOut = 0;
  v9 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    BufferAttributes = getBufferAttributes();
  }

  if (CVPixelBufferCreate(v9, Width, Height, v4, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

CVPixelBufferRef PixelBufferUtils::createPixelBuffer(OSType pixelFormatType, CGSize a2, int a3)
{
  height = a2.height;
  width = a2.width;
  BufferAttributes = 0;
  pixelBufferOut = 0;
  v7 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    BufferAttributes = getBufferAttributes();
  }

  if (CVPixelBufferCreate(v7, width, height, pixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    return 0;
  }

  else
  {
    return pixelBufferOut;
  }
}

unint64_t PixelBufferUtils::componentsPerPixelForPixelFormat(PixelBufferUtils *this, uint64_t a2)
{
  result = 4;
  if (this > 1380401728)
  {
    if (this > 1717856626)
    {
      if (this <= 1751411058)
      {
        if (this == 1717856627)
        {
          return 1;
        }

        v4 = 1751410032;
      }

      else
      {
        if (this == 1751411059 || this == 1919365990)
        {
          return 1;
        }

        v4 = 1932996149;
      }

      goto LABEL_31;
    }

    if (this > 1380411456)
    {
      if (this == 1380411457)
      {
        return result;
      }

      if (this == 1647392359)
      {
        return 1;
      }

      v4 = 1717855600;
      goto LABEL_31;
    }

    if (this == 1380401729)
    {
      return result;
    }

    v5 = 1380410945;
LABEL_27:
    if (this == v5)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (this > 875704437)
  {
    if (this > 1111970368)
    {
      if (this == 1111970369)
      {
        return result;
      }

      if (this == 1278226488)
      {
        return 1;
      }

      v4 = 1278226536;
      goto LABEL_31;
    }

    if (this == 875704438)
    {
      goto LABEL_34;
    }

    v5 = 1094862674;
    goto LABEL_27;
  }

  if (this > 825437746)
  {
    if (this != 825437747)
    {
      if (this == 843264104)
      {
        return 2;
      }

      if (this != 875704422)
      {
        goto LABEL_38;
      }

LABEL_34:
      if (a2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

    return 1;
  }

  if (this == 32)
  {
    return result;
  }

  v4 = 825306677;
LABEL_31:
  if (this == v4)
  {
    return 1;
  }

LABEL_38:
  v7 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v8 = [v7 objectForKeyedSubscript:@"BitsPerComponent"];
  if (v8)
  {
    v9 = PixelBufferUtils::pixelSizeForPixelFormat(this, a2);
    [v8 floatValue];
    v11 = (v9 / ceilf(v10 * 0.125));

    return v11;
  }

  else
  {

    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v14 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "componentsPerPixelForPixelFormat", 508, this, v12);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }
}

void sub_22472BB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL PixelBufferUtils::isPixelFormatCompressed(PixelBufferUtils *this)
{
  v2 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v3 = 0;
  v4 = *MEMORY[0x277CC4F70];
  v5 = *MEMORY[0x277CC4F18];
  while (v3 < PixelBufferUtils::planeCountForPixelFormat(this))
  {
    v6 = [v2 objectForKeyedSubscript:v4];
    v7 = [v6 objectAtIndexedSubscript:v3];

    v8 = [v7 objectForKeyedSubscript:v5];
    v9 = v8;
    if (v8 && [v8 intValue])
    {

      v10 = 1;
      goto LABEL_10;
    }

    ++v3;
  }

  v11 = [v2 objectForKeyedSubscript:v5];
  v7 = v11;
  if (v11)
  {
    v10 = [v11 intValue] != 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_10:

  return v10;
}

PixelBufferUtils *PixelBufferUtils::uncompressedEquivalentForPixelFormat(PixelBufferUtils *this)
{
  v2 = CVPixelFormatDescriptionGetDescriptionWithPixelFormatType();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CC4F50]];
  v4 = v3;
  if (v3)
  {
    this = [v3 unsignedIntValue];
  }

  else if (PixelBufferUtils::isPixelFormatCompressed(this))
  {
    PixelBufferUtils::pixelFormatAsString(this, __p);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "uncompressedEquivalentForPixelFormat", 593, this, v5);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    this = 0;
  }

  return this;
}

void sub_22472BDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CVBuffer *PixelBufferUtils::createRotatedPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, int a3)
{
  if (!this)
  {
    return 0;
  }

  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  if ((a2 & 0xFFFFFFFD) == 1)
  {
    v9 = Height;
  }

  else
  {
    v9 = Width;
  }

  if ((a2 & 0xFFFFFFFD) != 1)
  {
    Width = Height;
  }

  pixelBufferOut = 0;
  v10 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v10, v9, Width, PixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    v12 = 0;
  }

  else
  {
    v12 = pixelBufferOut;
  }

  if (PixelBufferUtils::rotatePixelBuffer(this, v12, a2, a3))
  {
    CVPixelBufferRelease(v12);
    return 0;
  }

  return v12;
}

uint64_t PixelBufferUtils::rotatePixelBuffer(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, __CVBuffer *a3, int a4)
{
  v30 = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (pixelBuffer && a2)
  {
    v8 = a3;
    v9 = a3 & 0xFFFFFFFD;
    Width = CVPixelBufferGetWidth(pixelBuffer);
    if (v9 == 1)
    {
      if (Width != CVPixelBufferGetHeight(a2) || (Height = CVPixelBufferGetHeight(pixelBuffer), Height != CVPixelBufferGetWidth(a2)))
      {
LABEL_15:
        NSLog(&cfstr_SDErrorInvalid.isa, "rotatePixelBuffer", 879);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (Width != CVPixelBufferGetWidth(a2))
      {
        goto LABEL_15;
      }

      v12 = CVPixelBufferGetHeight(pixelBuffer);
      if (v12 != CVPixelBufferGetHeight(a2))
      {
        goto LABEL_15;
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    if (a4)
    {
      if (PixelFormatType <= 1717856626)
      {
        if (PixelFormatType > 1380410944)
        {
          if (PixelFormatType == 1380410945)
          {
            goto LABEL_26;
          }

          v14 = 1380411457;
        }

        else
        {
          if (PixelFormatType == 825306677)
          {
            goto LABEL_26;
          }

          v14 = 825437747;
        }
      }

      else if (PixelFormatType <= 1919365989)
      {
        if (PixelFormatType == 1717856627)
        {
          goto LABEL_26;
        }

        v14 = 1751411059;
      }

      else
      {
        if (PixelFormatType == 1919365990 || PixelFormatType == 1919365992)
        {
          goto LABEL_26;
        }

        v14 = 1932996149;
      }

      if (PixelFormatType != v14)
      {
        src.data = 0;
        if (VTImageRotationSessionCreate())
        {
          MEMORY[0x22AA52DC0](src.data);
          CFRelease(src.data);
          NSLog(&cfstr_SDErrorUnableT_2.isa, "createVTRotationSession", 802);
          v22 = MEMORY[0x22AA52DD0](0, pixelBuffer, a2);
        }

        else
        {
          v22 = MEMORY[0x22AA52DD0](src.data, pixelBuffer, a2);
        }

        if (!v22)
        {
          return 0;
        }

        NSLog(&cfstr_SDErrorVtimage.isa, "rotatePixelBufferVT", 842);
        return 0xFFFFFFFFLL;
      }
    }

LABEL_26:
    v15 = v9 == 1;
    v16 = CVPixelBufferGetPixelFormatType(pixelBuffer);
    CVPixelBufferLockBaseAddress(a2, 0);
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    memset(&src, 0, sizeof(src));
    v17 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(pixelBuffer, *MEMORY[0x277CBF3A0], &src);
    memset(&dest, 0, sizeof(dest));
    PixelBufferUtils::asVImageBuffer(a2, *v17, &dest);
    if (v15)
    {
      if (src.width != dest.height || src.height != dest.width)
      {
LABEL_40:
        CVPixelBufferUnlockBaseAddress(a2, 0);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
        return 0xFFFFFFFFLL;
      }
    }

    else if (src.width != dest.width || src.height != dest.height)
    {
      goto LABEL_40;
    }

    *backColor = 0;
    v29 = 0;
    if (v16 > 1380410944)
    {
      v18 = v8;
      if (v16 > 1751410031)
      {
        if (v16 > 1919365989)
        {
          if (v16 == 1919365990)
          {
            PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *v17, &__p);
            src = __p;
            PixelBufferUtils::asVImageBuffer(a2, 0, *v17, &__p);
            dest = __p;
            v19 = vImageRotate90_PlanarF(&src, &dest, v8, 0.0, 0);
            if (v19)
            {
              goto LABEL_73;
            }

            PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, *v17, &__p);
            src = __p;
            PixelBufferUtils::asVImageBuffer(a2, 1, *v17, &__p);
            dest = __p;
            v19 = vImageRotate90_PlanarF(&src, &dest, v8, 0.0, 0);
            if (v19)
            {
              goto LABEL_73;
            }

            PixelBufferUtils::asVImageBuffer(pixelBuffer, 2, *v17, &__p);
            src = __p;
            PixelBufferUtils::asVImageBuffer(a2, 2, *v17, &__p);
            dest = __p;
            v20 = vImageRotate90_PlanarF(&src, &dest, v8, 0.0, 0);
            goto LABEL_72;
          }

          if (v16 == 1919365992)
          {
            PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *v17, &__p);
            src = __p;
            PixelBufferUtils::asVImageBuffer(a2, 0, *v17, &__p);
            dest = __p;
            v19 = vImageRotate90_Planar16F(&src, &dest, v8, 0, 0);
            if (v19)
            {
              goto LABEL_73;
            }

            PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, *v17, &__p);
            src = __p;
            PixelBufferUtils::asVImageBuffer(a2, 1, *v17, &__p);
            dest = __p;
            v19 = vImageRotate90_Planar16F(&src, &dest, v8, 0, 0);
            if (v19)
            {
              goto LABEL_73;
            }

            PixelBufferUtils::asVImageBuffer(pixelBuffer, 2, *v17, &__p);
            src = __p;
            PixelBufferUtils::asVImageBuffer(a2, 2, *v17, &__p);
            dest = __p;
            v20 = vImageRotate90_Planar16F(&src, &dest, v8, 0, 0);
            goto LABEL_72;
          }

          v18 = v8;
          if (v16 != 1932996149)
          {
            goto LABEL_85;
          }

          goto LABEL_71;
        }

        if (v16 == 1751410032)
        {
          goto LABEL_71;
        }

        v23 = 1751411059;
LABEL_70:
        if (v16 != v23)
        {
          goto LABEL_85;
        }

        goto LABEL_71;
      }

      if (v16 <= 1647392358)
      {
        if (v16 == 1380410945)
        {
          v20 = vImageRotate90_ARGBFFFF(&src, &dest, v8, backColor, 0);
          goto LABEL_72;
        }

        if (v16 == 1380411457)
        {
          v20 = vImageRotate90_ARGB16U(&src, &dest, v8, backColor, 0);
          goto LABEL_72;
        }

        goto LABEL_85;
      }

      if (v16 == 1647392359)
      {
LABEL_71:
        v20 = vImageRotate90_Planar16U(&src, &dest, v18, 0, 0);
        goto LABEL_72;
      }

      if (v16 != 1717855600 && v16 != 1717856627)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v18 = v8;
      if (v16 <= 1094862673)
      {
        if (v16 > 825437746)
        {
          if (v16 != 825437747)
          {
            if (v16 == 875704422 || v16 == 875704438)
            {
              PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *v17, &src);
              PixelBufferUtils::asVImageBuffer(a2, 0, *v17, &dest);
              v19 = vImageRotate90_Planar8(&src, &dest, v8, 0, 0);
              if (v19)
              {
LABEL_73:
                CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
                CVPixelBufferUnlockBaseAddress(a2, 0);
                return v19 != 0;
              }

              PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, *v17, &__p);
              src = __p;
              PixelBufferUtils::asVImageBuffer(a2, 1, *v17, &__p);
              dest = __p;
              v20 = vImageRotate90_Planar16U(&src, &dest, v8, 0, 0);
LABEL_72:
              v19 = v20;
              goto LABEL_73;
            }

LABEL_85:
            PixelBufferUtils::pixelFormatAsString(v16, &__p);
            if ((__p.width & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.data;
            }

            NSLog(&cfstr_SDErrorPixelFo.isa, "rotatePixelBufferVImage", 765, v16, p_p);
            if (SHIBYTE(__p.width) < 0)
            {
              operator delete(__p.data);
            }

            v19 = -21773;
            goto LABEL_73;
          }

          goto LABEL_71;
        }

        if (v16 != 32)
        {
          v23 = 825306677;
          goto LABEL_70;
        }

LABEL_67:
        v20 = vImageRotate90_ARGB8888(&src, &dest, v8, backColor, 0);
        goto LABEL_72;
      }

      if (v16 <= 1278226533)
      {
        if (v16 == 1094862674)
        {
          goto LABEL_67;
        }

        v21 = 1111970369;
        goto LABEL_66;
      }

      if (v16 != 1278226534)
      {
        if (v16 == 1278226536)
        {
          goto LABEL_71;
        }

        v21 = 1380401729;
LABEL_66:
        if (v16 != v21)
        {
          goto LABEL_85;
        }

        goto LABEL_67;
      }
    }

    v20 = vImageRotate90_PlanarF(&src, &dest, v18, 0.0, 0);
    goto LABEL_72;
  }

  return result;
}

void sub_22472C800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__CVBuffer *PixelBufferUtils::createCroppedAndScaledPixelBuffer(PixelBufferUtils *this, __CVBuffer *a2, CGRect a3, CGSize a4)
{
  height = a4.height;
  width = a4.width;
  v7 = a3.size.height;
  v8 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    v8 = CVPixelBufferGetWidth(this);
    v7 = CVPixelBufferGetHeight(this);
    x = 0.0;
    y = 0.0;
  }

  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    width = v8;
    height = v7;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(this);
  pixelBufferOut = 0;
  v13 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v13, width, height, PixelFormatType, BufferAttributes, &pixelBufferOut))
  {
    v15 = 0;
  }

  else
  {
    v15 = pixelBufferOut;
  }

  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = v8;
  v18.size.height = v7;
  if (PixelBufferUtils::cropAndScalePixelBuffer(this, v15, a2, v18, *MEMORY[0x277CBF3A0]))
  {
    CVPixelBufferRelease(v15);
    return 0;
  }

  return v15;
}

uint64_t PixelBufferUtils::cropAndScalePixelBuffer(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, __CVBuffer *a3, CGRect a4, CGRect a5)
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v8 = a4.size.height;
  v9 = a4.size.width;
  v10 = a4.origin.y;
  v11 = a4.origin.x;
  if (!a3)
  {
    goto LABEL_17;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PixelFormatType <= 1751410031)
  {
    if (PixelFormatType > 1717855599)
    {
      if (PixelFormatType == 1717855600 || PixelFormatType == 1717856627)
      {
        goto LABEL_17;
      }
    }

    else if (PixelFormatType == 825306677 || PixelFormatType == 825437747)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (PixelFormatType > 1919365989)
    {
      if (PixelFormatType != 1919365990 && PixelFormatType != 1919365992 && PixelFormatType != 1932996149)
      {
        goto LABEL_47;
      }

LABEL_17:
      v15 = CVPixelBufferGetWidth(pixelBuffer);
      v16 = CVPixelBufferGetHeight(pixelBuffer);
      v17 = CVPixelBufferGetWidth(a2);
      v18 = CVPixelBufferGetHeight(a2);
      v61.origin.x = v11;
      v61.origin.y = v10;
      v61.size.width = v9;
      v61.size.height = v8;
      IsEmpty = CGRectIsEmpty(v61);
      v20 = v16;
      if (IsEmpty)
      {
        v11 = 0.0;
        v10 = 0.0;
        v9 = v15;
      }

      else
      {
        v20 = v8;
      }

      rect = v20;
      v62.origin.x = x;
      v62.origin.y = y;
      v62.size.width = width;
      v62.size.height = height;
      v21 = CGRectIsEmpty(v62);
      if (v21)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = x;
      }

      if (v21)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = y;
      }

      v50 = v23;
      if (v21)
      {
        v24 = v17;
      }

      else
      {
        v24 = width;
      }

      v51 = v24;
      v52 = v22;
      if (v21)
      {
        v25 = v18;
      }

      else
      {
        v25 = height;
      }

      v63.origin.x = v11;
      v63.origin.y = v10;
      v63.size.width = v9;
      v63.size.height = rect;
      v64 = CGRectIntegral(v63);
      if (v64.origin.x < 0.0 || v64.origin.y < 0.0 || (v64.origin.x + v64.size.width <= v15 ? (v26 = v64.origin.y + v64.size.height <= v16) : (v26 = 0), !v26))
      {
        NSLog(&cfstr_SDErrorCropOri_0.isa, "cropAndScalePixelBufferVImage", 945, *&v64.origin.x, *&v64.origin.y, *&v64.size.width, *&v64.size.height);
        return 0xFFFFFFFFLL;
      }

      if (v52 < 0.0 || v50 < 0.0 || (v51 + v52 <= v17 ? (v28 = v25 + v50 <= v18) : (v28 = 0), !v28))
      {
        NSLog(&cfstr_SDErrorDestrec.isa, "cropAndScalePixelBufferVImage", 951, *&v52, *&v50, *&v51, *&v25);
        return 0xFFFFFFFFLL;
      }

      v31 = v64.size.height;
      v32 = v64.size.width;
      v33 = v64.origin.y;
      v34 = v64.origin.x;
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      memset(&v60, 0, sizeof(v60));
      v66.origin.x = v34;
      v66.origin.y = v33;
      v66.size.width = v32;
      v66.size.height = v31;
      PixelBufferUtils::asVImageBuffer(pixelBuffer, v66, &v60);
      memset(&v59, 0, sizeof(v59));
      v67.origin.x = v52;
      v67.origin.y = v50;
      v67.size.width = v51;
      v67.size.height = v25;
      PixelBufferUtils::asVImageBuffer(a2, v67, &v59);
      v35 = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v36 = v35;
      if (v35 <= 1380401728)
      {
        if (v35 > 875836517)
        {
          v37 = v32;
          v38 = v31;
          v39 = v34;
          v40 = v33;
          if (v35 <= 1111970368)
          {
            if (v35 != 875836518 && v35 != 875836534)
            {
              if (v35 != 1094862674)
              {
                goto LABEL_101;
              }

              goto LABEL_92;
            }

LABEL_68:
            memset(&src, 0, sizeof(src));
            PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *&v39, &src);
            memset(&dest, 0, sizeof(dest));
            v68.origin.x = v52;
            v68.origin.y = v50;
            v68.size.width = v51;
            v68.size.height = v25;
            PixelBufferUtils::asVImageBuffer(a2, 0, v68, &dest);
            v42 = vImageScale_Planar8(&src, &dest, 0, 0);
            if (!v42)
            {
              memset(&v56, 0, sizeof(v56));
              v69.origin.x = v34;
              v69.origin.y = v33;
              v69.size.width = v32;
              v69.size.height = v31;
              PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, v69, &v56);
              memset(&v55, 0, sizeof(v55));
              v70.origin.x = v52;
              v70.origin.y = v50;
              v70.size.width = v51;
              v70.size.height = v25;
              PixelBufferUtils::asVImageBuffer(a2, 1, v70, &v55);
              v42 = vImageScale_CbCr8(&v56, &v55, 0, 0);
            }

            goto LABEL_107;
          }

          if (v35 != 1111970369)
          {
            if (v35 != 1278226534)
            {
              v41 = 1278226536;
LABEL_78:
              if (v35 == v41)
              {
                goto LABEL_79;
              }

LABEL_101:
              PixelBufferUtils::pixelFormatAsString(v35, &src);
              if ((src.width & 0x8000000000000000) == 0)
              {
                p_src = &src;
              }

              else
              {
                p_src = src.data;
              }

              NSLog(&cfstr_SDErrorPixelFo.isa, "cropAndScalePixelBufferVImage", 1044, v36, p_src);
              if (SHIBYTE(src.width) < 0)
              {
                operator delete(src.data);
              }

              v42 = -21778;
              goto LABEL_107;
            }

            goto LABEL_83;
          }

LABEL_92:
          v42 = vImageScale_ARGB8888(&v60, &v59, 0, 0);
          goto LABEL_107;
        }

        v37 = v32;
        v38 = v31;
        v39 = v34;
        v40 = v33;
        if (v35 > 825437746)
        {
          if (v35 != 825437747)
          {
            if (v35 == 875704422 || v35 == 875704438)
            {
              goto LABEL_68;
            }

            goto LABEL_101;
          }

          goto LABEL_87;
        }

        if (v35 == 32)
        {
          goto LABEL_92;
        }

        v47 = 825306677;
LABEL_86:
        if (v35 != v47)
        {
          goto LABEL_101;
        }

        goto LABEL_87;
      }

      if (v35 <= 1717856626)
      {
        if (v35 <= 1380411456)
        {
          if (v35 != 1380401729)
          {
            if (v35 == 1380410945)
            {
              v42 = vImageScale_ARGBFFFF(&v60, &v59, 0, 0);
              goto LABEL_107;
            }

            goto LABEL_101;
          }

          goto LABEL_92;
        }

        if (v35 == 1380411457)
        {
          v42 = vImageScale_ARGB16F(&v60, &v59, 0, 0);
          goto LABEL_107;
        }

        if (v35 != 1647392359)
        {
          if (v35 != 1717855600)
          {
            goto LABEL_101;
          }

          goto LABEL_83;
        }

LABEL_87:
        vImageScale_NearestNeighbor<unsigned short>(&v60, &v59);
        goto LABEL_88;
      }

      if (v35 <= 1919365989)
      {
        if (v35 != 1717856627)
        {
          if (v35 == 1751410032)
          {
LABEL_79:
            vImageScale_NearestNeighbor<half>(&v60, &v59);
LABEL_88:
            v42 = 0;
LABEL_107:
            CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
            CVPixelBufferUnlockBaseAddress(a2, 0);
            return v42 != 0;
          }

          v41 = 1751411059;
          goto LABEL_78;
        }

LABEL_83:
        vImageScale_NearestNeighbor<float>(&v60, &v59);
        goto LABEL_88;
      }

      if (v35 == 1919365990)
      {
        v76.origin.x = v34;
        v76.origin.y = v33;
        v76.size.width = v32;
        v76.size.height = v31;
        PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, v76, &src);
        v60 = src;
        v77.origin.x = v52;
        v77.origin.y = v50;
        v77.size.width = v51;
        v77.size.height = v25;
        PixelBufferUtils::asVImageBuffer(a2, 0, v77, &src);
        v59 = src;
        v48 = vImageScale_PlanarF(&v60, &v59, 0, 0);
        if (!v48)
        {
          v78.origin.x = v34;
          v78.origin.y = v33;
          v78.size.width = v32;
          v78.size.height = v31;
          PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, v78, &src);
          v60 = src;
          v79.origin.x = v52;
          v79.origin.y = v50;
          v79.size.width = v51;
          v79.size.height = v25;
          PixelBufferUtils::asVImageBuffer(a2, 1, v79, &src);
          v59 = src;
          v48 = vImageScale_PlanarF(&v60, &v59, 0, 0);
          if (!v48)
          {
            v80.origin.x = v34;
            v80.origin.y = v33;
            v80.size.width = v32;
            v80.size.height = v31;
            PixelBufferUtils::asVImageBuffer(pixelBuffer, 2, v80, &src);
            v60 = src;
            v81.origin.x = v52;
            v81.origin.y = v50;
            v81.size.width = v51;
            v81.size.height = v25;
            PixelBufferUtils::asVImageBuffer(a2, 2, v81, &src);
            v59 = src;
            v48 = vImageScale_PlanarF(&v60, &v59, 0, 0);
          }
        }
      }

      else
      {
        v43 = v32;
        v44 = v31;
        v45 = v34;
        v46 = v33;
        if (v35 != 1919365992)
        {
          v47 = 1932996149;
          goto LABEL_86;
        }

        PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *&v45, &src);
        v60 = src;
        v71.origin.x = v52;
        v71.origin.y = v50;
        v71.size.width = v51;
        v71.size.height = v25;
        PixelBufferUtils::asVImageBuffer(a2, 0, v71, &src);
        v59 = src;
        v48 = vImageScale_Planar16F(&v60, &v59, 0, 0);
        if (!v48)
        {
          v72.origin.x = v34;
          v72.origin.y = v33;
          v72.size.width = v32;
          v72.size.height = v31;
          PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, v72, &src);
          v60 = src;
          v73.origin.x = v52;
          v73.origin.y = v50;
          v73.size.width = v51;
          v73.size.height = v25;
          PixelBufferUtils::asVImageBuffer(a2, 1, v73, &src);
          v59 = src;
          v48 = vImageScale_Planar16F(&v60, &v59, 0, 0);
          if (!v48)
          {
            v74.origin.x = v34;
            v74.origin.y = v33;
            v74.size.width = v32;
            v74.size.height = v31;
            PixelBufferUtils::asVImageBuffer(pixelBuffer, 2, v74, &src);
            v60 = src;
            v75.origin.x = v52;
            v75.origin.y = v50;
            v75.size.width = v51;
            v75.size.height = v25;
            PixelBufferUtils::asVImageBuffer(a2, 2, v75, &src);
            v59 = src;
            v42 = vImageScale_Planar16F(&v60, &v59, 0, 0);
            goto LABEL_107;
          }
        }
      }

      v42 = v48;
      goto LABEL_107;
    }

    if (PixelFormatType == 1751410032 || PixelFormatType == 1751411059)
    {
      goto LABEL_17;
    }
  }

LABEL_47:
  v65.origin.x = v11;
  v65.origin.y = v10;
  v65.size.width = v9;
  v65.size.height = v8;
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = height;
  VTTransferSession = createVTTransferSession(v65, v82);
  v30 = VTPixelTransferSessionTransferImage(VTTransferSession, pixelBuffer, a2);
  if (VTTransferSession)
  {
    VTPixelTransferSessionInvalidate(VTTransferSession);
    CFRelease(VTTransferSession);
  }

  if (v30)
  {
    NSLog(&cfstr_SDErrorVtpixel.isa, "cropAndScalePixelBufferVT", 1109);
    return 0xFFFFFFFFLL;
  }

  return 0;
}

void sub_22472D308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

VTPixelTransferSessionRef createVTTransferSession(CGRect a1, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  v6 = a1.size.height;
  v7 = a1.size.width;
  v8 = a1.origin.y;
  v9 = a1.origin.x;
  pixelTransferSessionOut = 0;
  v10 = VTPixelTransferSessionCreate(0, &pixelTransferSessionOut);
  v15.origin.x = v9;
  v15.origin.y = v8;
  v15.size.width = v7;
  v15.size.height = v6;
  if (!CGRectIsEmpty(v15))
  {
    v16.origin.x = v9;
    v16.origin.y = v8;
    v16.size.width = v7;
    v16.size.height = v6;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v16);
    v10 |= VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE28B8], DictionaryRepresentation);
    CFRelease(DictionaryRepresentation);
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  if (!CGRectIsEmpty(v17))
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v12 = CGRectCreateDictionaryRepresentation(v18);
    v10 |= VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x277CE2868], v12);
    CFRelease(v12);
  }

  result = pixelTransferSessionOut;
  if (v10)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
    NSLog(&cfstr_SDErrorUnableT_1.isa, "createVTTransferSession", 1080);
    return 0;
  }

  return result;
}

uint64_t *vImageScale_NearestNeighbor<float>(uint64_t *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = a2[2];
    if (v3)
    {
      v4 = 0;
      v5 = result[3];
      v6 = result[2];
      v7 = *result;
      v8 = result[1];
      v9 = *a2;
      v10 = a2[3];
      do
      {
        for (i = 0; i != v3; ++i)
        {
          *(v9 + 4 * i) = *(v7 + v5 * ((v8 * v4) * (1.0 / v2)) + 4 * ((v6 * i) * (1.0 / v3)));
        }

        ++v4;
        v9 += v10;
      }

      while (v4 != v2);
    }
  }

  return result;
}

uint64_t *vImageScale_NearestNeighbor<unsigned short>(uint64_t *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = a2[2];
    if (v3)
    {
      v4 = 0;
      v5 = result[3];
      v6 = result[2];
      v7 = *result;
      v8 = result[1];
      v9 = *a2;
      v10 = a2[3];
      do
      {
        for (i = 0; i != v3; ++i)
        {
          *(v9 + 2 * i) = *(v7 + v5 * ((v8 * v4) * (1.0 / v2)) + 2 * ((v6 * i) * (1.0 / v3)));
        }

        ++v4;
        v9 += v10;
      }

      while (v4 != v2);
    }
  }

  return result;
}

uint64_t *vImageScale_NearestNeighbor<half>(uint64_t *result, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = a2[2];
    if (v3)
    {
      v4 = 0;
      v5 = result[3];
      v6 = result[2];
      v7 = *result;
      v8 = result[1];
      v9 = *a2;
      v10 = a2[3];
      do
      {
        for (i = 0; i != v3; ++i)
        {
          *(v9 + 2 * i) = *(v7 + v5 * ((v8 * v4) * (1.0 / v2)) + 2 * ((v6 * i) * (1.0 / v3)));
        }

        ++v4;
        v9 += v10;
      }

      while (v4 != v2);
    }
  }

  return result;
}

__CVBuffer *PixelBufferUtils::createConvertedPixelBufferFormat(PixelBufferUtils *this, __CVBuffer *a2, __CVBuffer *a3)
{
  v4 = a2;
  Width = CVPixelBufferGetWidth(this);
  Height = CVPixelBufferGetHeight(this);
  pixelBufferOut = 0;
  v8 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v8, Width, Height, v4, BufferAttributes, &pixelBufferOut))
  {
    v10 = 0;
  }

  else
  {
    v10 = pixelBufferOut;
  }

  if (PixelBufferUtils::convertPixelBufferFormat(this, v10, a3))
  {
    CVPixelBufferRelease(v10);
    return 0;
  }

  return v10;
}

uint64_t PixelBufferUtils::convertPixelBufferFormat(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, __CVBuffer *a3)
{
  result = 0xFFFFFFFFLL;
  if (!pixelBuffer || !a2)
  {
    return result;
  }

  v6 = a3;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v8 = CVPixelBufferGetPixelFormatType(a2);
  v10 = v8;
  if (v6)
  {
    if (PixelFormatType <= 1751410031)
    {
      if (PixelFormatType > 1717855599)
      {
        if (PixelFormatType == 1717855600)
        {
          goto LABEL_17;
        }

        v11 = 1717856627;
      }

      else
      {
        if (PixelFormatType == 825306677)
        {
          goto LABEL_17;
        }

        v11 = 825437747;
      }
    }

    else if (PixelFormatType <= 1919365989)
    {
      if (PixelFormatType == 1751410032)
      {
        goto LABEL_17;
      }

      v11 = 1751411059;
    }

    else
    {
      if (PixelFormatType == 1919365990 || PixelFormatType == 1919365992)
      {
        goto LABEL_17;
      }

      v11 = 1932996149;
    }

    if (PixelFormatType == v11)
    {
      goto LABEL_17;
    }

    if (v8 <= 1751410031)
    {
      if (v8 > 1717855599)
      {
        if (v8 == 1717855600)
        {
          goto LABEL_17;
        }

        v31 = 1717856627;
      }

      else
      {
        if (v8 == 825306677)
        {
          goto LABEL_17;
        }

        v31 = 825437747;
      }
    }

    else if (v8 <= 1919365989)
    {
      if (v8 == 1751410032)
      {
        goto LABEL_17;
      }

      v31 = 1751411059;
    }

    else
    {
      if (v8 == 1919365990 || v8 == 1919365992)
      {
        goto LABEL_17;
      }

      v31 = 1932996149;
    }

    if (v8 != v31)
    {
      v114 = **&MEMORY[0x277CBF3A0];
      v115.origin.x = *MEMORY[0x277CBF3A0];
      v115.origin.y = v114.origin.y;
      v115.size.width = v114.size.width;
      v115.size.height = v114.size.height;
      VTTransferSession = createVTTransferSession(*MEMORY[0x277CBF3A0], v115);
      v51 = VTPixelTransferSessionTransferImage(VTTransferSession, pixelBuffer, a2);
      if (VTTransferSession)
      {
        VTPixelTransferSessionInvalidate(VTTransferSession);
        CFRelease(VTTransferSession);
      }

      if (!v51)
      {
        return 0;
      }

      NSLog(&cfstr_SDErrorVtpixel.isa, "cropAndScalePixelBufferVT", 1109);
      return 0xFFFFFFFFLL;
    }
  }

LABEL_17:
  if (PixelFormatType == v8)
  {
    v12 = CVPixelBufferGetPixelFormatType(pixelBuffer);
    if (v12 == CVPixelBufferGetPixelFormatType(a2))
    {
      v13 = *MEMORY[0x277CBF348];
      v14 = *(MEMORY[0x277CBF348] + 8);
      v15 = *MEMORY[0x277CBF3A0];
      v16 = *(MEMORY[0x277CBF3A0] + 8);
      v17 = *(MEMORY[0x277CBF3A0] + 16);
      v18 = *(MEMORY[0x277CBF3A0] + 24);

      return copyPixelBufferVImage(a2, *&v13, pixelBuffer, *&v15);
    }

    return 0xFFFFFFFFLL;
  }

  v19 = 1;
  if (PixelFormatType <= 1751410031)
  {
    if (PixelFormatType != 1717855600)
    {
      if (PixelFormatType != 1717856627)
      {
        goto LABEL_36;
      }

      goto LABEL_28;
    }

LABEL_30:
    v19 = v8 != 1751411059 && v8 != 1717856627;
    goto LABEL_36;
  }

  if (PixelFormatType == 1751410032)
  {
    goto LABEL_30;
  }

  if (PixelFormatType != 1751411059)
  {
    goto LABEL_36;
  }

LABEL_28:
  v19 = 0;
  if (v8 != 1717855600)
  {
    v19 = v8 != 1751410032;
  }

LABEL_36:
  if (PixelFormatType > 1380401728)
  {
    if (PixelFormatType <= 1717856626)
    {
      if (PixelFormatType > 1380411456)
      {
        if (PixelFormatType != 1380411457)
        {
          if (PixelFormatType != 1647392359)
          {
            if (PixelFormatType != 1717855600)
            {
              goto LABEL_146;
            }

            goto LABEL_92;
          }

LABEL_58:
          v22 = CVPixelBufferGetPixelFormatType(a2);
          CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
          CVPixelBufferLockBaseAddress(a2, 0);
          memset(&src, 0, sizeof(src));
          v23 = MEMORY[0x277CBF3A0];
          PixelBufferUtils::asVImageBuffer(pixelBuffer, *MEMORY[0x277CBF3A0], &src);
          memset(&dest, 0, sizeof(dest));
          PixelBufferUtils::asVImageBuffer(a2, *v23, &dest);
          if (v22 == 1278226536 || v22 == 1751410032)
          {
            width = src.width;
            if (src.width == dest.width)
            {
              height = src.height;
              if (src.height == dest.height)
              {
                data = src.data;
                if (src.data)
                {
                  v38 = dest.data;
                  if (dest.data)
                  {
                    if (src.height && src.width)
                    {
                      rowBytes = src.rowBytes;
                      v40 = dest.rowBytes;
                      if (src.width > 3)
                      {
                        v61 = src.width & 0xFFFFFFFFFFFFFFFCLL;
                        if (src.width > 0xF)
                        {
                          v66 = src.width & 0xFFFFFFFFFFFFFFF0;
                          if (src.width == (src.width & 0xFFFFFFFFFFFFFFF0))
                          {
                            v67 = 0;
                            v68 = (dest.data + 16);
                            v69 = (src.data + 16);
                            v70 = vdupq_n_s32(0x3903126Fu);
                            do
                            {
                              v71 = v69;
                              v72 = v68;
                              v73 = width;
                              do
                              {
                                v74 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v71)), v70)), vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(*v71->i8)), v70));
                                v72[-1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v71[-2])), v70)), vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(*v71[-2].i8)), v70));
                                *v72 = v74;
                                v72 += 2;
                                v71 += 4;
                                v73 -= 16;
                              }

                              while (v73);
                              v25 = 0;
                              ++v67;
                              v68 = (v68 + v40);
                              v69 = (v69 + rowBytes);
                            }

                            while (v67 != height);
                          }

                          else
                          {
                            v87 = 0;
                            v88 = (dest.data + 16);
                            v89 = (src.data + 16);
                            v90 = (2 * src.width) & 0xFFFFFFFFFFFFFFE0;
                            v91 = (dest.data + v90);
                            v92 = (src.data + v90);
                            v93 = vdupq_n_s32(0x3903126Fu);
                            do
                            {
                              v94 = v89;
                              v95 = v88;
                              v96 = width & 0xFFFFFFFFFFFFFFF0;
                              do
                              {
                                v97 = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v94)), v93)), vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(*v94->i8)), v93));
                                v95[-1] = vcvt_hight_f16_f32(vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v94[-2])), v93)), vmulq_f32(vcvtq_f32_u32(vmovl_high_u16(*v94[-2].i8)), v93));
                                *v95 = v97;
                                v95 += 2;
                                v94 += 4;
                                v96 -= 16;
                              }

                              while (v96);
                              v98 = width & 0xFFFFFFFFFFFFFFF0;
                              if ((width & 0xC) == 0)
                              {
                                goto LABEL_272;
                              }

                              v99 = v92;
                              v100 = v91;
                              v101 = v61 - v66;
                              do
                              {
                                v102 = *v99++;
                                *v100++ = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v102)), v93));
                                v101 -= 4;
                              }

                              while (v101);
                              v98 = width & 0xFFFFFFFFFFFFFFFCLL;
                              if (width != v61)
                              {
LABEL_272:
                                v103 = width - v98;
                                v104 = 2 * v98;
                                v105 = &v38[2 * v98];
                                v106 = &data[v104];
                                do
                                {
                                  v107 = *v106;
                                  v106 += 2;
                                  _S1 = v107 * 0.000125;
                                  __asm { FCVT            H1, S1 }

                                  *v105 = LOWORD(_S1);
                                  v105 += 2;
                                  --v103;
                                }

                                while (v103);
                              }

                              v25 = 0;
                              ++v87;
                              v88 = (v88 + v40);
                              v89 = (v89 + rowBytes);
                              v91 = (v91 + v40);
                              v92 = (v92 + rowBytes);
                              v38 += v40;
                              data += rowBytes;
                            }

                            while (v87 != height);
                          }
                        }

                        else
                        {
                          v62 = src.width - v61;
                          if (src.width == v61)
                          {
                            v63 = (dest.data + 16);
                            v64 = (src.data + 16);
                            v65 = vdupq_n_s32(0x3903126Fu);
                            do
                            {
                              v63[-2] = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v64[-2])), v65));
                              if (width != 4)
                              {
                                v63[-1] = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v64[-1])), v65));
                                if (width != 8)
                                {
                                  *v63 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v64)), v65));
                                }
                              }

                              v25 = 0;
                              v63 = (v63 + v40);
                              v64 = (v64 + rowBytes);
                              --height;
                            }

                            while (height);
                          }

                          else
                          {
                            v75 = 0;
                            v76 = (2 * src.width) & 0xFFFFFFFFFFFFFFF8;
                            v77 = dest.data + v76;
                            v78 = src.data + v76;
                            v79 = vdupq_n_s32(0x3903126Fu);
                            do
                            {
                              v80 = &data[v75 * rowBytes];
                              v81 = &v38[v75 * v40];
                              *v81 = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(*v80)), v79));
                              if (v61 != 4)
                              {
                                v81[1] = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v80[1])), v79));
                                if (v61 != 8)
                                {
                                  v81[2] = vcvt_f16_f32(vmulq_f32(vcvtq_f32_u32(vmovl_u16(v80[2])), v79));
                                }
                              }

                              v82 = v78;
                              v83 = v77;
                              v84 = v62;
                              do
                              {
                                v85 = *v82++;
                                _S2 = v85 * 0.000125;
                                __asm { FCVT            H2, S2 }

                                *v83++ = LOWORD(_S2);
                                --v84;
                              }

                              while (v84);
                              v25 = 0;
                              ++v75;
                              v77 += v40;
                              v78 += rowBytes;
                            }

                            while (v75 != height);
                          }
                        }
                      }

                      else
                      {
                        v41 = dest.data + 4;
                        v42 = src.data + 4;
                        do
                        {
                          LOWORD(_S1) = *(v42 - 2);
                          _S1 = LODWORD(_S1) * 0.000125;
                          __asm { FCVT            H1, S1 }

                          *(v41 - 2) = LOWORD(_S1);
                          if (width != 1)
                          {
                            LOWORD(_S1) = *(v42 - 1);
                            _S1 = LODWORD(_S1) * 0.000125;
                            __asm { FCVT            H1, S1 }

                            *(v41 - 1) = LOWORD(_S1);
                            if (width != 2)
                            {
                              LOWORD(_S1) = *v42;
                              _S1 = LODWORD(_S1) * 0.000125;
                              __asm { FCVT            H1, S1 }

                              *v41 = LOWORD(_S1);
                            }
                          }

                          v25 = 0;
                          v41 = (v41 + v40);
                          v42 = (v42 + rowBytes);
                          --height;
                        }

                        while (height);
                      }
                    }

                    else
                    {
                      v25 = 0;
                    }

                    goto LABEL_185;
                  }
                }
              }
            }
          }

          else
          {
            if (v22 == 1717855600)
            {
              if (vImageConvert_16UToF(&src, &dest, 0.0, 0.000125, 0))
              {
                v25 = 0xFFFFFFFFLL;
              }

              else
              {
                v25 = 0;
              }

              goto LABEL_185;
            }

            PixelBufferUtils::pixelFormatAsString(v22, __p);
            if (v110 >= 0)
            {
              v48 = __p;
            }

            else
            {
              v48 = __p[0];
            }

            NSLog(&cfstr_SDErrorPixelFo.isa, "convertfp13_3ToDepthMeters", 1701, v22, v48);
            if (v110 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v25 = 0xFFFFFFFFLL;
LABEL_185:
          v49 = v25;
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          CVPixelBufferUnlockBaseAddress(a2, 0);
          return v49;
        }

        goto LABEL_76;
      }

      if (PixelFormatType != 1380401729)
      {
        v27 = 1380410945;
LABEL_75:
        if (PixelFormatType == v27)
        {
          goto LABEL_76;
        }

LABEL_146:
        PixelBufferUtils::pixelFormatAsString(PixelFormatType, &src);
        if ((src.width & 0x8000000000000000) == 0)
        {
          p_src = &src;
        }

        else
        {
          p_src = src.data;
        }

        NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2214, PixelFormatType, p_src);
        goto LABEL_237;
      }

      goto LABEL_76;
    }

    if (PixelFormatType > 1751411058)
    {
      if (PixelFormatType != 1751411059)
      {
        if (PixelFormatType == 1919365990)
        {

          return convertRGBPlanarFloat(pixelBuffer, a2);
        }

        if (PixelFormatType == 1919365992)
        {

          return convertRGBPlanarHalf(pixelBuffer, a2);
        }

        goto LABEL_146;
      }

LABEL_88:
      if (v8 <= 1717856626)
      {
        if (v8 == 1278226534)
        {
          goto LABEL_110;
        }

        v30 = 25968;
      }

      else
      {
        if (v8 == 1751411059 || v8 == 1751410032)
        {
          v32 = &__block_literal_global_217;
          goto LABEL_138;
        }

        v30 = 26995;
      }

      if (v8 != (v30 | 0x66640000))
      {
        goto LABEL_176;
      }

LABEL_110:
      result = convertFloat16ToFloat32(pixelBuffer, a2);
      if (result != 0 || v19)
      {
        return result;
      }

      v33 = &__block_literal_global_215;
LABEL_112:
      PixelBufferUtils::forEveryPixel(a2, v33, -1);
      return 0;
    }

    if (PixelFormatType != 1717856627)
    {
      v21 = 1751410032;
LABEL_87:
      if (PixelFormatType != v21)
      {
        goto LABEL_146;
      }

      goto LABEL_88;
    }

    goto LABEL_92;
  }

  if (PixelFormatType <= 1094862673)
  {
    if (PixelFormatType <= 875704421)
    {
      if (PixelFormatType != 32)
      {
        if (PixelFormatType == 825437747)
        {
          goto LABEL_58;
        }

        goto LABEL_146;
      }

      goto LABEL_76;
    }

    if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
    {
      goto LABEL_146;
    }

    if (v8 > 1380401728)
    {
      if (v8 <= 1380411456)
      {
        if (v8 == 1380401729)
        {
          goto LABEL_208;
        }

        v34 = 26177;
      }

      else
      {
        if (v8 == 1919365992)
        {

          return createRGBPlanarHalfFromBuffer(pixelBuffer, a2);
        }

        if (v8 == 1919365990)
        {

          return createRGBPlanarFloatFromBuffer(pixelBuffer, a2);
        }

        v34 = 26689;
      }

      v26 = v34 | 0x52470000;
LABEL_207:
      if (v8 == v26)
      {
        goto LABEL_208;
      }

LABEL_229:
      PixelBufferUtils::pixelFormatAsString(v8, &src);
      if ((src.width & 0x8000000000000000) == 0)
      {
        v59 = &src;
      }

      else
      {
        v59 = src.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2142, v10, v59);
      goto LABEL_237;
    }

    if (v8 <= 875704437)
    {
      if (v8 == 32)
      {
        goto LABEL_208;
      }

      if (v8 != 875704422)
      {
        goto LABEL_229;
      }
    }

    else if (v8 != 875704438)
    {
      if (v8 != 1094862674)
      {
        v26 = 1111970369;
        goto LABEL_207;
      }

LABEL_208:

      return createBGRAPermutesFromYUV(pixelBuffer, v8, a2);
    }

    NSLog(&cfstr_WarningIncorre.isa);
    v53 = *MEMORY[0x277CBF348];
    v54 = *(MEMORY[0x277CBF348] + 8);
    v55 = *MEMORY[0x277CBF3A0];
    v56 = *(MEMORY[0x277CBF3A0] + 8);
    v57 = *(MEMORY[0x277CBF3A0] + 16);
    v58 = *(MEMORY[0x277CBF3A0] + 24);

    return copyPixelBufferMultiPlane(a2, *&v53, pixelBuffer, *&v55);
  }

  if (PixelFormatType > 1278226487)
  {
    if (PixelFormatType == 1278226488)
    {
      if (v8 > 1380401728)
      {
        if (v8 == 1380401729 || v8 == 1380411457)
        {
          goto LABEL_176;
        }

        v43 = 1380410945;
      }

      else
      {
        if (v8 == 32 || v8 == 1094862674)
        {
          goto LABEL_176;
        }

        v43 = 1111970369;
      }

      if (v8 == v43)
      {
        goto LABEL_176;
      }

      PixelBufferUtils::pixelFormatAsString(v8, &src);
      if ((src.width & 0x8000000000000000) == 0)
      {
        v60 = &src;
      }

      else
      {
        v60 = src.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2207, v10, v60);
      goto LABEL_237;
    }

    if (PixelFormatType != 1278226534)
    {
      v21 = 1278226536;
      goto LABEL_87;
    }

LABEL_92:
    if (v8 > 1717856626)
    {
      if (v8 != 1717856627)
      {
        if (v8 != 1751411059 && v8 != 1751410032)
        {
          goto LABEL_176;
        }

        goto LABEL_105;
      }

LABEL_104:
      v32 = &__block_literal_global_213;
LABEL_138:
      PixelBufferUtils::forEveryPixel(pixelBuffer, a2, v32, 0xFFFFFFFFuLL);
      return 0;
    }

    if (v8 == 1278226536)
    {
LABEL_105:
      result = convertFloat32ToFloat16(pixelBuffer, a2);
      if (result != 0 || v19)
      {
        return result;
      }

      v33 = &__block_literal_global_1206;
      goto LABEL_112;
    }

    if (v8 == 1717855600)
    {
      goto LABEL_104;
    }

LABEL_176:

    return convertGrayscaleAsColor(pixelBuffer, v8, a2);
  }

  if (PixelFormatType != 1094862674)
  {
    v27 = 1111970369;
    goto LABEL_75;
  }

LABEL_76:
  if (v8 > 1380401728)
  {
    if (v8 <= 1380411456)
    {
      if (v8 == 1380401729)
      {
        goto LABEL_122;
      }

      v29 = 26177;
    }

    else
    {
      if (v8 == 1919365992)
      {
        if (PixelFormatType == 1380410945)
        {

          return convert4ChannelToPlanar<float,half>(pixelBuffer, a2);
        }

        else if (PixelFormatType == 1380411457)
        {

          return convert4ChannelToPlanar<half,half>(pixelBuffer, a2);
        }

        else
        {

          return convert4ChannelToPlanar<unsigned char,half>(pixelBuffer, a2);
        }
      }

      if (v8 == 1919365990)
      {
        if (PixelFormatType == 1380410945)
        {

          return convert4ChannelToPlanar<float,float>(pixelBuffer, a2);
        }

        else if (PixelFormatType == 1380411457)
        {

          return convert4ChannelToPlanar<half,float>(pixelBuffer, a2);
        }

        else
        {

          return convert4ChannelToPlanar<unsigned char,float>(pixelBuffer, a2);
        }
      }

      v29 = 26689;
    }

    v28 = v29 | 0x52470000;
LABEL_121:
    if (v8 == v28)
    {
      goto LABEL_122;
    }

    goto LABEL_167;
  }

  if (v8 <= 875704437)
  {
    if (v8 == 32)
    {
      goto LABEL_122;
    }

    if (v8 != 875704422)
    {
LABEL_167:
      if (!PixelBufferUtils::planeCountForPixelFormat(v8) && PixelBufferUtils::componentsPerPixelForPixelFormat(v10, 0) == 1)
      {

        return convertColorToGrayscale(pixelBuffer, a2);
      }

      PixelBufferUtils::pixelFormatAsString(v10, &src);
      if ((src.width & 0x8000000000000000) == 0)
      {
        v52 = &src;
      }

      else
      {
        v52 = src.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertPixelBufferFormat", 2103, v10, v52);
LABEL_237:
      if (SHIBYTE(src.width) < 0)
      {
        operator delete(src.data);
      }

      return 0xFFFFFFFFLL;
    }
  }

  else if (v8 != 875704438)
  {
    if (v8 != 1094862674)
    {
      v28 = 1111970369;
      goto LABEL_121;
    }

LABEL_122:

    return convert4ChannelFormats(pixelBuffer, v8, a2);
  }

  return YUVFromBGRAPermutes(pixelBuffer, a2, v9);
}

void sub_22472E8FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 - 57) < 0)
  {
    operator delete(*(v19 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t copyPixelBufferVImage(__CVBuffer *a1, CGPoint a2, __CVBuffer *a3, CGRect a4)
{
  if (a1 == a3)
  {
    return 0;
  }

  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a2.y;
  v10 = a2.x;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a1))
  {
    return 0xFFFFFFFFLL;
  }

  if (!CVPixelBufferGetPlaneCount(a3))
  {
    v20 = CVPixelBufferGetPixelFormatType(a3);
    CVPixelBufferLockBaseAddress(a1, 0);
    CVPixelBufferLockBaseAddress(a3, 1uLL);
    memset(&src, 0, sizeof(src));
    v21 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(a3, *MEMORY[0x277CBF3A0], &src);
    memset(&dest, 0, sizeof(dest));
    PixelBufferUtils::asVImageBuffer(a1, *v21, &dest);
    v22 = PixelBufferUtils::pixelSizeForPixelFormat(v20, 0);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    IsEmpty = CGRectIsEmpty(v33);
    v24 = src.width;
    if (IsEmpty)
    {
      v25 = src.height;
    }

    else
    {
      if (x >= src.width || y >= src.height)
      {
        goto LABEL_29;
      }

      if (width > src.width || height > src.height)
      {
        goto LABEL_29;
      }

      v24 = width;
      v25 = height;
      src.data = src.data + src.rowBytes * y + v22 * x;
      src.height = height;
      src.width = width;
    }

    v26 = v24;
    v27 = v25;
    v34.origin.x = v10;
    v34.origin.y = v9;
    v34.size.width = v24;
    v34.size.height = v25;
    if (CGRectIsEmpty(v34))
    {
LABEL_11:
      vImageCopyBuffer(&src, &dest, v22, 0);
      CVPixelBufferUnlockBaseAddress(a1, 0);
      CVPixelBufferUnlockBaseAddress(a3, 1uLL);
      return 0;
    }

    if (v10 < dest.width && v9 < dest.height && v26 <= dest.width && v27 <= dest.height)
    {
      dest.data = dest.data + dest.rowBytes * v9 + v22 * v10;
      dest.height = v27;
      dest.width = v26;
      goto LABEL_11;
    }

LABEL_29:
    NSLog(&cfstr_SDErrorRegionI.isa, "updateVImageBufferToRegion", 1923);
    return 0xFFFFFFFFLL;
  }

  v13 = v10;
  v14 = v9;
  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;

  return copyPixelBufferMultiPlane(a1, *&v13, a3, *&v15);
}

uint64_t convert4ChannelFormats(__CVBuffer *a1, int a2, __CVBuffer *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = RGBA_FORMAT_MAP();
  LODWORD(v86.data) = a2;
  HIDWORD(v86.data) = PixelFormatType;
  src.data = &v86;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v86.data);
  v9 = v8[3];
  v10 = *(v8 + 8);
  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  memset(&src, 0, sizeof(src));
  v11 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &src);
  memset(&v86, 0, sizeof(v86));
  PixelBufferUtils::asVImageBuffer(a3, *v11, &v86);
  maxFloat = xmmword_2247A54C0;
  minFloat[0] = 0;
  minFloat[1] = 0;
  v13 = -1;
  if (v10 > 3)
  {
    if (v10 > 5)
    {
      if (v10 == 6)
      {
        height = src.height;
        if (src.height != v86.height)
        {
          goto LABEL_60;
        }

        width = src.width;
        if (src.width != v86.width)
        {
          goto LABEL_60;
        }

        if (!src.height || !src.width)
        {
          goto LABEL_59;
        }

        v72 = 0;
        rowBytes = v86.rowBytes;
        data = src.data;
        v75 = src.rowBytes;
        v76 = v86.data;
        do
        {
          v77 = &data[v72 * v75];
          v78 = width;
          v79 = &v76[v72 * rowBytes];
          do
          {
            _H0 = *v77;
            __asm { FCVT            S0, H0 }

            *&v79[4 * *v9] = _S0;
            LOWORD(_S0) = *(v77 + 1);
            __asm { FCVT            S0, H0 }

            *&v79[4 * v9[1]] = _S0;
            LOWORD(_S0) = *(v77 + 2);
            __asm { FCVT            S0, H0 }

            *&v79[4 * v9[2]] = _S0;
            LOWORD(_S0) = *(v77 + 3);
            __asm { FCVT            S0, H0 }

            *&v79[4 * v9[3]] = _S0;
            v77 += 8;
            v79 += 16;
            --v78;
          }

          while (v78);
          v13 = 0;
          ++v72;
        }

        while (v72 != height);
      }

      else
      {
        if (v10 != 7)
        {
          goto LABEL_60;
        }

        v46 = src.height;
        if (*&src.height != *&v86.height)
        {
          goto LABEL_60;
        }

        if (!src.height || !src.width)
        {
          goto LABEL_59;
        }

        v47 = 0;
        v48 = 1;
        do
        {
          if (v48)
          {
            v49 = 0;
            v50 = v86.data + v86.rowBytes * v47;
            v51 = (src.data + src.rowBytes * v47);
            do
            {
              _H0 = *v51;
              __asm { FCVT            S0, H0 }

              v50[*v9] = (_S0 * 255.0);
              LOWORD(_S0) = v51[1];
              __asm { FCVT            S0, H0 }

              v50[v9[1]] = (_S0 * 255.0);
              LOWORD(_S0) = v51[2];
              __asm { FCVT            S0, H0 }

              v50[v9[2]] = (_S0 * 255.0);
              LOWORD(_S0) = v51[3];
              __asm { FCVT            S0, H0 }

              v50[v9[3]] = (_S0 * 255.0);
              ++v49;
              v51 += 4;
              v50 += 4;
              v48 = src.width;
            }

            while (v49 < src.width);
            v46 = src.height;
          }

          v13 = 0;
          ++v47;
        }

        while (v47 < v46);
      }
    }

    else
    {
      if (v10 == 4)
      {
        v45 = vImagePermuteChannels_ARGBFFFF(&src, &v86, v9, 0);
        goto LABEL_40;
      }

      v27 = src.height;
      if (src.height != v86.height)
      {
        goto LABEL_60;
      }

      v28 = src.width;
      if (src.width != v86.width)
      {
        goto LABEL_60;
      }

      if (!src.height || !src.width)
      {
        goto LABEL_59;
      }

      v29 = 0;
      v31 = v86.rowBytes;
      v30 = src.data;
      v32 = src.rowBytes;
      v33 = v86.data;
      do
      {
        v34 = &v30[v29 * v32];
        v35 = v28;
        v36 = &v33[v29 * v31];
        do
        {
          _S0 = *v34;
          __asm { FCVT            H0, S0 }

          *&v36[2 * *v9] = _S0;
          _S0 = *(v34 + 1);
          __asm { FCVT            H0, S0 }

          *&v36[2 * v9[1]] = _S0;
          _S0 = *(v34 + 2);
          __asm { FCVT            H0, S0 }

          *&v36[2 * v9[2]] = _S0;
          _S0 = *(v34 + 3);
          __asm { FCVT            H0, S0 }

          *&v36[2 * v9[3]] = _S0;
          v34 += 16;
          v36 += 8;
          --v35;
        }

        while (v35);
        v13 = 0;
        ++v29;
      }

      while (v29 != v27);
    }
  }

  else
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        if (v10 != 1)
        {
          goto LABEL_60;
        }

        v14 = src.height;
        if (src.height != v86.height)
        {
          goto LABEL_60;
        }

        v15 = src.width;
        if (src.width != v86.width)
        {
          goto LABEL_60;
        }

        if (src.height && src.width)
        {
          v16 = 0;
          v18 = v86.rowBytes;
          v17 = src.data;
          v19 = src.rowBytes;
          v20 = v86.data;
          do
          {
            v21 = &v17[v16 * v19];
            v22 = v15;
            v23 = &v20[v16 * v18];
            do
            {
              LOBYTE(_S1) = *v21;
              *&v24 = LODWORD(_S1) * 0.0039216;
              *&v23[4 * *v9] = *&v24;
              LOBYTE(v24) = v21[1];
              *&v25 = v24 * 0.0039216;
              *&v23[4 * v9[1]] = *&v25;
              LOBYTE(v25) = v21[2];
              *&v26 = v25 * 0.0039216;
              *&v23[4 * v9[2]] = *&v26;
              LOBYTE(v26) = v21[3];
              _S1 = v26 * 0.0039216;
              *&v23[4 * v9[3]] = _S1;
              v21 += 4;
              v23 += 16;
              --v22;
            }

            while (v22);
            v13 = 0;
            ++v16;
          }

          while (v16 != v14);
          goto LABEL_60;
        }

LABEL_59:
        v13 = 0;
        goto LABEL_60;
      }

      v45 = vImagePermuteChannels_ARGB8888(&src, &v86, v9, 0);
LABEL_40:
      v13 = v45;
      goto LABEL_60;
    }

    if (v10 != 2)
    {
      v45 = vImageConvert_ARGBFFFFtoARGB8888_dithered(&src, &v86, &maxFloat, minFloat, 0, v9, 0);
      goto LABEL_40;
    }

    v57 = src.height;
    if (src.height != v86.height)
    {
      goto LABEL_60;
    }

    v58 = src.width;
    if (src.width != v86.width)
    {
      goto LABEL_60;
    }

    if (!src.height || !src.width)
    {
      goto LABEL_59;
    }

    v59 = 0;
    v61 = v86.rowBytes;
    v60 = src.data;
    v62 = src.rowBytes;
    v63 = v86.data;
    do
    {
      v64 = &v60[v59 * v62];
      v65 = v58;
      v66 = &v63[v59 * v61];
      do
      {
        LOBYTE(_S1) = *v64;
        *&_S1 = LODWORD(_S1) * 0.0039216;
        __asm { FCVT            H1, S1 }

        *&v66[2 * *v9] = _S1;
        LOBYTE(_S1) = v64[1];
        *&_S1 = _S1 * 0.0039216;
        __asm { FCVT            H1, S1 }

        *&v66[2 * v9[1]] = _S1;
        LOBYTE(_S1) = v64[2];
        *&_S1 = _S1 * 0.0039216;
        __asm { FCVT            H1, S1 }

        *&v66[2 * v9[2]] = _S1;
        LOBYTE(_S1) = v64[3];
        _S1 = _S1 * 0.0039216;
        __asm { FCVT            H1, S1 }

        *&v66[2 * v9[3]] = LOWORD(_S1);
        v64 += 4;
        v66 += 8;
        --v65;
      }

      while (v65);
      v13 = 0;
      ++v59;
    }

    while (v59 != v57);
  }

LABEL_60:
  CVPixelBufferUnlockBaseAddress(a3, 0);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  if (v13)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

BOOL YUVFromBGRAPermutes(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 1380411457 || (v6 = PixelFormatType, PixelFormatType == 1380410945))
  {
    v6 = 1111970369;
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    pixelBufferOut.data = 0;
    v9 = *MEMORY[0x277CBECE8];
    BufferAttributes = getBufferAttributes();
    if (CVPixelBufferCreate(v9, Width, Height, 0x42475241u, BufferAttributes, &pixelBufferOut))
    {
      data = 0;
    }

    else
    {
      data = pixelBufferOut.data;
    }

    v12 = convert4ChannelFormats(a1, 1111970369, data);
  }

  else
  {
    v12 = 0;
    data = a1;
  }

  v13 = RGBA_FORMAT_MAP();
  destYp.data = ((v6 << 32) | 0x20);
  pixelBufferOut.data = &destYp;
  v14 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v13, destYp.data)[3];
  CVPixelBufferLockBaseAddress(a2, 0);
  CVPixelBufferLockBaseAddress(data, 1uLL);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v15 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(data, *MEMORY[0x277CBF3A0], &pixelBufferOut);
  memset(&destYp, 0, sizeof(destYp));
  PixelBufferUtils::asVImageBuffer(a2, 0, *v15, &destYp);
  memset(&destCbCr, 0, sizeof(destCbCr));
  PixelBufferUtils::asVImageBuffer(a2, 1, *v15, &destCbCr);
  if ((YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined & 1) == 0)
  {
    v18 = *ymmword_2247AA0A8;
    v12 = vImageConvert_ARGBToYpCbCr_GenerateConversion(*MEMORY[0x277CB86C8], &v18, &YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, kvImageARGB8888, kvImage420Yp8_CbCr8, 0);
    YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined = 1;
  }

  if (v12)
  {
    v16 = 1;
  }

  else
  {
    v16 = vImageConvert_ARGB8888To420Yp8_CbCr8(&pixelBufferOut, &destYp, &destCbCr, &YUVFromBGRAPermutes(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, v14, 0) != 0;
  }

  CVPixelBufferUnlockBaseAddress(data, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  if (CVPixelBufferGetPixelFormatType(a1) == 1380410945)
  {
    CVPixelBufferRelease(data);
  }

  return v16;
}

uint64_t convert4ChannelToPlanar<half,float>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v81.data) = v5;
      HIDWORD(v81.data) = PixelFormatType;
      __p.data = &v81;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v81.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_2247AA0C8[v10];
      }

      v79 = v11;
      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      v82 = 0;
      v14 = *v9;
      if (v6 <= v14)
      {
        rowBytes = 0;
        data = &v82;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v81);
        data = v81.data;
        rowBytes = v81.rowBytes;
      }

      pixelBuffer = a1;
      v20 = v9[1];
      if (v6 <= v20)
      {
        v22 = 0;
        v21 = &v82;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v20, *v12, &v81);
        v21 = v81.data;
        v22 = v81.rowBytes;
      }

      v23 = v9[2];
      if (v6 <= v23)
      {
        v25 = 0;
        v24 = &v82;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v23, *v12, &v81);
        v24 = v81.data;
        v25 = v81.rowBytes;
      }

      v26 = v9[3];
      if (v6 <= v26)
      {
        v28 = 0;
        v27 = &v82;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v26, *v12, &v81);
        v27 = v81.data;
        v28 = v81.rowBytes;
      }

      height = __p.height;
      if (__p.height)
      {
        width = __p.width;
        if (__p.width)
        {
          v31 = 0;
          v32 = __p.width & 0xFFFFFFFFFFFFFFFELL;
          v33 = __p.data;
          v34 = __p.rowBytes;
          v35 = (__p.data + 8);
          v36 = (__p.data + 10);
          v37 = (__p.data + 12);
          v38 = (__p.data + 14);
          v39 = v27;
          v40 = v24;
          v41 = v21;
          v42 = data;
          while (1)
          {
            if (&data->i8[rowBytes * v31] == &v82)
            {
              goto LABEL_41;
            }

            if (width == 1)
            {
              break;
            }

            v44 = v35;
            v45 = v42;
            v46 = width & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v13.i16[0] = *(v44 - 4);
              v13.i16[1] = *v44;
              v13 = vmul_n_f32(*&vcvtq_f32_f16(v13), v79);
              *v45++ = v13;
              v44 += 8;
              v46 -= 2;
            }

            while (v46);
            v43 = width & 0xFFFFFFFFFFFFFFFELL;
            if (width != v32)
            {
              goto LABEL_39;
            }

LABEL_41:
            if (&v21->i8[v22 * v31] == &v82)
            {
              goto LABEL_49;
            }

            if (width == 1)
            {
              v55 = 0;
LABEL_47:
              v59 = width - v55;
              v60 = 4 * v55;
              do
              {
                _H0 = *&v33[2 * v60 + 2];
                __asm { FCVT            S0, H0 }

                *&v41->i32[v60 / 4] = v79 * _S0;
                v60 += 4;
                --v59;
              }

              while (v59);
              goto LABEL_49;
            }

            v56 = v36;
            v57 = v41;
            v58 = width & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v13.i16[0] = *(v56 - 4);
              v13.i16[1] = *v56;
              v13 = vmul_n_f32(*&vcvtq_f32_f16(v13), v79);
              *v57++ = v13;
              v56 += 8;
              v58 -= 2;
            }

            while (v58);
            v55 = width & 0xFFFFFFFFFFFFFFFELL;
            if (width != v32)
            {
              goto LABEL_47;
            }

LABEL_49:
            if (&v24->i8[v25 * v31] == &v82)
            {
              goto LABEL_57;
            }

            if (width == 1)
            {
              v63 = 0;
LABEL_55:
              v67 = width - v63;
              v68 = 4 * v63;
              do
              {
                _H0 = *&v33[2 * v68 + 4];
                __asm { FCVT            S0, H0 }

                *&v40->i32[v68 / 4] = v79 * _S0;
                v68 += 4;
                --v67;
              }

              while (v67);
              goto LABEL_57;
            }

            v64 = v37;
            v65 = v40;
            v66 = width & 0xFFFFFFFFFFFFFFFELL;
            do
            {
              v13.i16[0] = *(v64 - 4);
              v13.i16[1] = *v64;
              v13 = vmul_n_f32(*&vcvtq_f32_f16(v13), v79);
              *v65++ = v13;
              v64 += 8;
              v66 -= 2;
            }

            while (v66);
            v63 = width & 0xFFFFFFFFFFFFFFFELL;
            if (width != v32)
            {
              goto LABEL_55;
            }

LABEL_57:
            if (&v27->i8[v28 * v31] != &v82)
            {
              if (width == 1)
              {
                v71 = 0;
              }

              else
              {
                v72 = v38;
                v73 = v39;
                v74 = width & 0xFFFFFFFFFFFFFFFELL;
                do
                {
                  v13.i16[0] = *(v72 - 4);
                  v13.i16[1] = *v72;
                  v13 = vmul_n_f32(*&vcvtq_f32_f16(v13), v79);
                  *v73++ = v13;
                  v72 += 8;
                  v74 -= 2;
                }

                while (v74);
                v71 = width & 0xFFFFFFFFFFFFFFFELL;
                if (width == v32)
                {
                  goto LABEL_32;
                }
              }

              v75 = width - v71;
              v76 = 4 * v71;
              do
              {
                _H0 = *&v33[2 * v76 + 6];
                __asm { FCVT            S0, H0 }

                *&v39->i32[v76 / 4] = v79 * _S0;
                v76 += 4;
                --v75;
              }

              while (v75);
            }

LABEL_32:
            ++v31;
            v42 = (v42 + rowBytes);
            v35 = (v35 + v34);
            v33 += v34;
            v41 = (v41 + v22);
            v36 = (v36 + v34);
            v40 = (v40 + v25);
            v37 = (v37 + v34);
            v39 = (v39 + v28);
            v38 = (v38 + v34);
            if (v31 == height)
            {
              goto LABEL_66;
            }
          }

          v43 = 0;
LABEL_39:
          v47 = width - v43;
          v48 = 4 * v43;
          do
          {
            _H0 = *&v33[2 * v48];
            __asm { FCVT            S0, H0 }

            *&v42->i32[v48 / 4] = v79 * _S0;
            v48 += 4;
            --v47;
          }

          while (v47);
          goto LABEL_41;
        }
      }

LABEL_66:
      CVPixelBufferUnlockBaseAddress(a2, 0);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      return 0;
    }

    else
    {
      PixelBufferUtils::pixelFormatAsString(v5, &__p);
      if ((__p.width & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.data;
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1264, v5, p_p);
      if (SHIBYTE(__p.width) < 0)
      {
        operator delete(__p.data);
      }

      return 4294967294;
    }
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1258, PixelFormatType, v17);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_22472F8E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<float,float>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v51.data) = v5;
      HIDWORD(v51.data) = PixelFormatType;
      __p.data = &v51;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v51.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_2247AA0C8[v10];
      }

      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      v52 = 0;
      v13 = *v9;
      if (v6 <= v13)
      {
        rowBytes = 0;
        data = &v52;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v13, *v12, &v51);
        data = v51.data;
        rowBytes = v51.rowBytes;
      }

      pixelBuffer = a1;
      v19 = v9[1];
      if (v6 <= v19)
      {
        v21 = 0;
        v20 = &v52;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v19, *v12, &v51);
        v20 = v51.data;
        v21 = v51.rowBytes;
      }

      v22 = v9[2];
      if (v6 <= v22)
      {
        v24 = 0;
        v23 = &v52;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v22, *v12, &v51);
        v23 = v51.data;
        v24 = v51.rowBytes;
      }

      v25 = v9[3];
      if (v6 <= v25)
      {
        v27 = 0;
        v26 = &v52;
        height = __p.height;
        if (!__p.height)
        {
LABEL_46:
          CVPixelBufferUnlockBaseAddress(a2, 0);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          return 0;
        }
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v25, *v12, &v51);
        v26 = v51.data;
        v27 = v51.rowBytes;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_46;
        }
      }

      width = __p.width;
      if (__p.width)
      {
        v30 = 0;
        v31 = __p.data;
        v32 = __p.rowBytes;
        v33 = v26;
        v34 = v23;
        v35 = v20;
        v36 = data;
        do
        {
          if ((data + rowBytes * v30) != &v52)
          {
            v37 = v31;
            v38 = v36;
            v39 = width;
            do
            {
              v40 = *v37;
              v37 += 4;
              *v38++ = v40 * v11;
              --v39;
            }

            while (v39);
          }

          if ((v20 + v21 * v30) != &v52)
          {
            v41 = 1;
            v42 = v35;
            v43 = width;
            do
            {
              *v42++ = v31[v41] * v11;
              v41 += 4;
              --v43;
            }

            while (v43);
          }

          if ((v23 + v24 * v30) != &v52)
          {
            v44 = 2;
            v45 = v34;
            v46 = width;
            do
            {
              *v45++ = v31[v44] * v11;
              v44 += 4;
              --v46;
            }

            while (v46);
          }

          if ((v26 + v27 * v30) != &v52)
          {
            v47 = 3;
            v48 = v33;
            v49 = width;
            do
            {
              *v48++ = v31[v47] * v11;
              v47 += 4;
              --v49;
            }

            while (v49);
          }

          ++v30;
          v36 = (v36 + rowBytes);
          v31 = (v31 + v32);
          v35 = (v35 + v21);
          v34 = (v34 + v24);
          v33 = (v33 + v27);
        }

        while (v30 != height);
      }

      goto LABEL_46;
    }

    PixelBufferUtils::pixelFormatAsString(v5, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1264, v5, p_p);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 4294967294;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1258, PixelFormatType, v16);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_22472FCCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<unsigned char,float>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v52.data) = v5;
      HIDWORD(v52.data) = PixelFormatType;
      __p.data = &v52;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v52.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_2247AA0C8[v10];
      }

      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      v53 = 0;
      v14 = *v9;
      if (v6 <= v14)
      {
        rowBytes = 0;
        data = &v53;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v52);
        data = v52.data;
        rowBytes = v52.rowBytes;
      }

      pixelBuffer = a1;
      v20 = v9[1];
      if (v6 <= v20)
      {
        v22 = 0;
        v21 = &v53;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v20, *v12, &v52);
        v21 = v52.data;
        v22 = v52.rowBytes;
      }

      v23 = v9[2];
      if (v6 <= v23)
      {
        v25 = 0;
        v24 = &v53;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v23, *v12, &v52);
        v24 = v52.data;
        v25 = v52.rowBytes;
      }

      v26 = v9[3];
      if (v6 <= v26)
      {
        v28 = 0;
        v27 = &v53;
        height = __p.height;
        if (!__p.height)
        {
LABEL_46:
          CVPixelBufferUnlockBaseAddress(a2, 0);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          return 0;
        }
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v26, *v12, &v52);
        v27 = v52.data;
        v28 = v52.rowBytes;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_46;
        }
      }

      width = __p.width;
      if (__p.width)
      {
        v31 = 0;
        v32 = __p.data;
        v33 = __p.rowBytes;
        v34 = v27;
        v35 = v24;
        v36 = v21;
        v37 = data;
        do
        {
          if ((data + rowBytes * v31) != &v53)
          {
            v38 = v32;
            v39 = v37;
            v40 = width;
            do
            {
              v41 = *v38;
              v38 += 4;
              v13 = v11 * v41;
              *v39++ = v13;
              --v40;
            }

            while (v40);
          }

          if ((v21 + v22 * v31) != &v53)
          {
            v42 = 1;
            v43 = v36;
            v44 = width;
            do
            {
              LOBYTE(v13) = v32[v42];
              v13 = v11 * LODWORD(v13);
              *v43++ = v13;
              v42 += 4;
              --v44;
            }

            while (v44);
          }

          if ((v24 + v25 * v31) != &v53)
          {
            v45 = 2;
            v46 = v35;
            v47 = width;
            do
            {
              LOBYTE(v13) = v32[v45];
              v13 = v11 * LODWORD(v13);
              *v46++ = v13;
              v45 += 4;
              --v47;
            }

            while (v47);
          }

          if ((v27 + v28 * v31) != &v53)
          {
            v48 = 3;
            v49 = v34;
            v50 = width;
            do
            {
              LOBYTE(v13) = v32[v48];
              v13 = v11 * LODWORD(v13);
              *v49++ = v13;
              v48 += 4;
              --v50;
            }

            while (v50);
          }

          ++v31;
          v37 = (v37 + rowBytes);
          v32 += v33;
          v36 = (v36 + v22);
          v35 = (v35 + v25);
          v34 = (v34 + v28);
        }

        while (v31 != height);
      }

      goto LABEL_46;
    }

    PixelBufferUtils::pixelFormatAsString(v5, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1264, v5, p_p);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 4294967294;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1258, PixelFormatType, v17);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_2247300C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<half,half>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v67.data) = v5;
      HIDWORD(v67.data) = PixelFormatType;
      __p.data = &v67;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v67.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_2247AA0C8[v10];
      }

      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      v68 = 0;
      v13 = *v9;
      if (v6 <= v13)
      {
        rowBytes = 0;
        data = &v68;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v13, *v12, &v67);
        data = v67.data;
        rowBytes = v67.rowBytes;
      }

      pixelBuffer = a1;
      v19 = v9[1];
      if (v6 <= v19)
      {
        v21 = 0;
        v20 = &v68;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v19, *v12, &v67);
        v20 = v67.data;
        v21 = v67.rowBytes;
      }

      v22 = v9[2];
      if (v6 <= v22)
      {
        v24 = 0;
        v23 = &v68;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v22, *v12, &v67);
        v23 = v67.data;
        v24 = v67.rowBytes;
      }

      v25 = v9[3];
      if (v6 <= v25)
      {
        v27 = 0;
        v26 = &v68;
        height = __p.height;
        if (!__p.height)
        {
LABEL_46:
          CVPixelBufferUnlockBaseAddress(a2, 0);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          return 0;
        }
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v25, *v12, &v67);
        v26 = v67.data;
        v27 = v67.rowBytes;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_46;
        }
      }

      width = __p.width;
      if (__p.width)
      {
        v30 = 0;
        v31 = __p.data;
        v32 = __p.rowBytes;
        v33 = v26;
        v34 = v23;
        v35 = v20;
        v36 = data;
        do
        {
          if ((data + rowBytes * v30) != &v68)
          {
            v37 = v31;
            v38 = v36;
            v39 = width;
            do
            {
              v40 = *v37;
              v37 += 4;
              _H0 = v40;
              __asm { FCVT            S0, H0 }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v38++ = LOWORD(_S0);
              --v39;
            }

            while (v39);
          }

          if ((v20 + v21 * v30) != &v68)
          {
            v48 = 2;
            v49 = v35;
            v50 = width;
            do
            {
              _H0 = *&v31[v48];
              __asm { FCVT            S0, H0 }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v49++ = LOWORD(_S0);
              v48 += 8;
              --v50;
            }

            while (v50);
          }

          if ((v23 + v24 * v30) != &v68)
          {
            v54 = 4;
            v55 = v34;
            v56 = width;
            do
            {
              _H0 = *&v31[v54];
              __asm { FCVT            S0, H0 }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v55++ = LOWORD(_S0);
              v54 += 8;
              --v56;
            }

            while (v56);
          }

          if ((v26 + v27 * v30) != &v68)
          {
            v60 = 6;
            v61 = v33;
            v62 = width;
            do
            {
              _H0 = *&v31[v60];
              __asm { FCVT            S0, H0 }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v61++ = LOWORD(_S0);
              v60 += 8;
              --v62;
            }

            while (v62);
          }

          ++v30;
          v36 = (v36 + rowBytes);
          v31 += v32;
          v35 = (v35 + v21);
          v34 = (v34 + v24);
          v33 = (v33 + v27);
        }

        while (v30 != height);
      }

      goto LABEL_46;
    }

    PixelBufferUtils::pixelFormatAsString(v5, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1264, v5, p_p);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 4294967294;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1258, PixelFormatType, v16);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_2247304D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<float,half>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v120.data) = v5;
      HIDWORD(v120.data) = PixelFormatType;
      __p.data = &v120;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v120.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_2247AA0C8[v10];
      }

      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      v121 = 0;
      v13 = *v9;
      if (v6 <= v13)
      {
        rowBytes = 0;
        data = &v121;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v13, *v12, &v120);
        data = v120.data;
        rowBytes = v120.rowBytes;
      }

      v18 = v9[1];
      if (v6 <= v18)
      {
        v19 = 0;
        v118 = &v121;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v18, *v12, &v120);
        v118 = v120.data;
        v19 = v120.rowBytes;
      }

      v20 = v9[2];
      if (v6 <= v20)
      {
        v22 = 0;
        v21 = &v121;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v20, *v12, &v120);
        v21 = v120.data;
        v22 = v120.rowBytes;
      }

      v23 = v9[3];
      pixelBuffer = a2;
      if (v6 <= v23)
      {
        v25 = 0;
        v24 = &v121;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_66;
        }
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v23, *v12, &v120);
        v24 = v120.data;
        v25 = v120.rowBytes;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_66;
        }
      }

      width = __p.width;
      if (__p.width)
      {
        v28 = 0;
        v29 = __p.width & 0xFFFFFFFFFFFFFFFELL;
        v31 = v118;
        v30 = data;
        v32 = data + 1;
        v33 = __p.data;
        v34 = __p.rowBytes;
        v35 = __p.data + 16;
        v36 = __p.data + 20;
        v37 = v118 + 1;
        v38 = __p.data + 24;
        v39 = v21 + 1;
        v40 = __p.data + 28;
        v41 = v24 + 1;
        v42 = v24;
        v43 = v21;
        while (1)
        {
          if ((data + rowBytes * v28) == &v121)
          {
            goto LABEL_41;
          }

          if (width == 1)
          {
            break;
          }

          v45 = v35;
          v46 = v32;
          v47 = width & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            _S0 = *(v45 - 4);
            v49 = *v45;
            v45 += 8;
            _S1 = v49;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
              FCVT            S0, H0
              FCVT            S1, H1
            }

            _S0 = v11 * _S0;
            _S1 = v11 * _S1;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
            }

            *(v46 - 1) = LOWORD(_S0);
            *v46 = LOWORD(_S1);
            v46 += 2;
            v47 -= 2;
          }

          while (v47);
          v44 = width & 0xFFFFFFFFFFFFFFFELL;
          if (width != v29)
          {
            goto LABEL_39;
          }

LABEL_41:
          if ((v118 + v19 * v28) == &v121)
          {
            goto LABEL_49;
          }

          if (width == 1)
          {
            v66 = 0;
LABEL_47:
            v77 = width - v66;
            v78 = &v31[v66];
            v79 = (16 * v66) | 4;
            do
            {
              _S0 = *&v33[v79];
              __asm
              {
                FCVT            H0, S0
                FCVT            S0, H0
              }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v78++ = LOWORD(_S0);
              v79 += 16;
              --v77;
            }

            while (v77);
            goto LABEL_49;
          }

          v67 = v37;
          v68 = v36;
          v69 = width & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            _S0 = *(v68 - 4);
            v71 = *v68;
            v68 += 8;
            _S1 = v71;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
              FCVT            S0, H0
              FCVT            S1, H1
            }

            _S0 = v11 * _S0;
            _S1 = v11 * _S1;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
            }

            *(v67 - 1) = LOWORD(_S0);
            *v67 = LOWORD(_S1);
            v67 += 2;
            v69 -= 2;
          }

          while (v69);
          v66 = width & 0xFFFFFFFFFFFFFFFELL;
          if (width != v29)
          {
            goto LABEL_47;
          }

LABEL_49:
          if ((v21 + v22 * v28) == &v121)
          {
            goto LABEL_57;
          }

          if (width == 1)
          {
            v83 = 0;
LABEL_55:
            v94 = width - v83;
            v95 = &v43[v83];
            v96 = (16 * v83) | 8;
            do
            {
              _S0 = *&v33[v96];
              __asm
              {
                FCVT            H0, S0
                FCVT            S0, H0
              }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v95++ = LOWORD(_S0);
              v96 += 16;
              --v94;
            }

            while (v94);
            goto LABEL_57;
          }

          v84 = v39;
          v85 = v38;
          v86 = width & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            _S0 = *(v85 - 4);
            v88 = *v85;
            v85 += 8;
            _S1 = v88;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
              FCVT            S0, H0
              FCVT            S1, H1
            }

            _S0 = v11 * _S0;
            _S1 = v11 * _S1;
            __asm
            {
              FCVT            H0, S0
              FCVT            H1, S1
            }

            *(v84 - 1) = LOWORD(_S0);
            *v84 = LOWORD(_S1);
            v84 += 2;
            v86 -= 2;
          }

          while (v86);
          v83 = width & 0xFFFFFFFFFFFFFFFELL;
          if (width != v29)
          {
            goto LABEL_55;
          }

LABEL_57:
          if ((v24 + v25 * v28) != &v121)
          {
            if (width == 1)
            {
              v100 = 0;
            }

            else
            {
              v101 = v41;
              v102 = v40;
              v103 = width & 0xFFFFFFFFFFFFFFFELL;
              do
              {
                _S0 = *(v102 - 4);
                v105 = *v102;
                v102 += 8;
                _S1 = v105;
                __asm
                {
                  FCVT            H0, S0
                  FCVT            H1, S1
                  FCVT            S0, H0
                  FCVT            S1, H1
                }

                _S0 = v11 * _S0;
                _S1 = v11 * _S1;
                __asm
                {
                  FCVT            H0, S0
                  FCVT            H1, S1
                }

                *(v101 - 1) = LOWORD(_S0);
                *v101 = LOWORD(_S1);
                v101 += 2;
                v103 -= 2;
              }

              while (v103);
              v100 = width & 0xFFFFFFFFFFFFFFFELL;
              if (width == v29)
              {
                goto LABEL_32;
              }
            }

            v111 = width - v100;
            v112 = &v42[v100];
            v113 = (16 * v100) | 0xC;
            do
            {
              _S0 = *&v33[v113];
              __asm
              {
                FCVT            H0, S0
                FCVT            S0, H0
              }

              _S0 = v11 * _S0;
              __asm { FCVT            H0, S0 }

              *v112++ = LOWORD(_S0);
              v113 += 16;
              --v111;
            }

            while (v111);
          }

LABEL_32:
          ++v28;
          v32 = (v32 + rowBytes);
          v35 += v34;
          v30 = (v30 + rowBytes);
          v33 += v34;
          v36 += v34;
          v37 = (v37 + v19);
          v31 = (v31 + v19);
          v38 += v34;
          v39 = (v39 + v22);
          v43 = (v43 + v22);
          v40 += v34;
          v41 = (v41 + v25);
          v42 = (v42 + v25);
          if (v28 == height)
          {
            goto LABEL_66;
          }
        }

        v44 = 0;
LABEL_39:
        v59 = width - v44;
        v60 = &v30[v44];
        v61 = &v33[16 * v44];
        do
        {
          v62 = *v61;
          v61 += 16;
          _S0 = v62;
          __asm
          {
            FCVT            H0, S0
            FCVT            S0, H0
          }

          _S0 = v11 * _S0;
          __asm { FCVT            H0, S0 }

          *v60++ = LOWORD(_S0);
          --v59;
        }

        while (v59);
        goto LABEL_41;
      }

LABEL_66:
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      return 0;
    }

    PixelBufferUtils::pixelFormatAsString(v5, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1264, v5, p_p);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 4294967294;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v15 = &__p;
    }

    else
    {
      v15 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1258, PixelFormatType, v15);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_224730AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convert4ChannelToPlanar<unsigned char,half>(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelBufferUtils::planeCountForPixelFormat(v5);
  if (PixelBufferUtils::componentsPerPixelForPixelFormat(PixelFormatType, 0) == 4)
  {
    if (v6)
    {
      CVPixelBufferLockBaseAddress(a2, 0);
      CVPixelBufferLockBaseAddress(a1, 1uLL);
      v7 = RGBA_FORMAT_MAP();
      LODWORD(v56.data) = v5;
      HIDWORD(v56.data) = PixelFormatType;
      __p.data = &v56;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v7, v56.data);
      v9 = v8[3];
      v10 = *(v8 + 8) - 1;
      v11 = 1.0;
      if (v10 <= 6)
      {
        v11 = flt_2247AA0C8[v10];
      }

      memset(&__p, 0, sizeof(__p));
      v12 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &__p);
      _S0 = 0.0;
      v57 = 0;
      v14 = *v9;
      if (v6 <= v14)
      {
        rowBytes = 0;
        data = &v57;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v14, *v12, &v56);
        data = v56.data;
        rowBytes = v56.rowBytes;
      }

      pixelBuffer = a1;
      v20 = v9[1];
      if (v6 <= v20)
      {
        v22 = 0;
        v21 = &v57;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v20, *v12, &v56);
        v21 = v56.data;
        v22 = v56.rowBytes;
      }

      v23 = v9[2];
      if (v6 <= v23)
      {
        v25 = 0;
        v24 = &v57;
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v23, *v12, &v56);
        v24 = v56.data;
        v25 = v56.rowBytes;
      }

      v26 = v9[3];
      if (v6 <= v26)
      {
        v28 = 0;
        v27 = &v57;
        height = __p.height;
        if (!__p.height)
        {
LABEL_46:
          CVPixelBufferUnlockBaseAddress(a2, 0);
          CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
          return 0;
        }
      }

      else
      {
        PixelBufferUtils::asVImageBuffer(a2, v26, *v12, &v56);
        v27 = v56.data;
        v28 = v56.rowBytes;
        height = __p.height;
        if (!__p.height)
        {
          goto LABEL_46;
        }
      }

      width = __p.width;
      if (__p.width)
      {
        v31 = 0;
        v32 = __p.data;
        v33 = __p.rowBytes;
        v34 = v27;
        v35 = v24;
        v36 = v21;
        v37 = data;
        do
        {
          if ((data + rowBytes * v31) != &v57)
          {
            v38 = v32;
            v39 = v37;
            v40 = width;
            do
            {
              v41 = *v38;
              v38 += 4;
              _S0 = v11 * v41;
              __asm { FCVT            H0, S0 }

              *v39++ = LOWORD(_S0);
              --v40;
            }

            while (v40);
          }

          if ((v21 + v22 * v31) != &v57)
          {
            v46 = 1;
            v47 = v36;
            v48 = width;
            do
            {
              LOBYTE(_S0) = v32[v46];
              _S0 = v11 * LODWORD(_S0);
              __asm { FCVT            H0, S0 }

              *v47++ = LOWORD(_S0);
              v46 += 4;
              --v48;
            }

            while (v48);
          }

          if ((v24 + v25 * v31) != &v57)
          {
            v49 = 2;
            v50 = v35;
            v51 = width;
            do
            {
              LOBYTE(_S0) = v32[v49];
              _S0 = v11 * LODWORD(_S0);
              __asm { FCVT            H0, S0 }

              *v50++ = LOWORD(_S0);
              v49 += 4;
              --v51;
            }

            while (v51);
          }

          if ((v27 + v28 * v31) != &v57)
          {
            v52 = 3;
            v53 = v34;
            v54 = width;
            do
            {
              LOBYTE(_S0) = v32[v52];
              _S0 = v11 * LODWORD(_S0);
              __asm { FCVT            H0, S0 }

              *v53++ = LOWORD(_S0);
              v52 += 4;
              --v54;
            }

            while (v54);
          }

          ++v31;
          v37 = (v37 + rowBytes);
          v32 += v33;
          v36 = (v36 + v22);
          v35 = (v35 + v25);
          v34 = (v34 + v28);
        }

        while (v31 != height);
      }

      goto LABEL_46;
    }

    PixelBufferUtils::pixelFormatAsString(v5, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1264, v5, p_p);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 4294967294;
  }

  else
  {
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, &__p);
    if ((__p.width & 0x8000000000000000) == 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p.data;
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convert4ChannelToPlanar", 1258, PixelFormatType, v17);
    if (SHIBYTE(__p.width) < 0)
    {
      operator delete(__p.data);
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_224730EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertColorToGrayscale(__CVBuffer *a1, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBufferOut.data = 0;
  v6 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v6, Width, Height, 0x34323066u, BufferAttributes, &pixelBufferOut))
  {
    data = 0;
  }

  else
  {
    data = pixelBufferOut.data;
  }

  if (PixelBufferUtils::convertPixelBufferFormat(a1, data, 0, v8))
  {
    CVPixelBufferRelease(data);
    return 0xFFFFFFFFLL;
  }

  if (!data)
  {
    return 0xFFFFFFFFLL;
  }

  CVPixelBufferLockBaseAddress(a2, 0);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v11 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a2, 0, *MEMORY[0x277CBF3A0], &pixelBufferOut);
  CVPixelBufferLockBaseAddress(data, 1uLL);
  memset(&src, 0, sizeof(src));
  PixelBufferUtils::asVImageBuffer(data, 0, *v11, &src);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v13 = PixelFormatType;
  if (PixelFormatType > 1278226535)
  {
    if (PixelFormatType != 1278226536 && PixelFormatType != 1647392359)
    {
LABEL_15:
      PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
      if (v18 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      NSLog(&cfstr_SDErrorPixelFo.isa, "convertColorToGrayscale", 2021, v13, v15);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = 1;
      goto LABEL_24;
    }

    v14 = vImageConvert_Planar8toPlanar16F(&src, &pixelBufferOut, 0);
  }

  else
  {
    if (PixelFormatType == 1278226488)
    {
      vImageCopyBuffer(&src, &pixelBufferOut, 1uLL, 0);
    }

    else if (PixelFormatType != 1278226534)
    {
      goto LABEL_15;
    }

    v14 = vImageConvert_Planar8toPlanarF(&src, &pixelBufferOut, 1.0, 0.0, 0);
  }

  v16 = v14 != 0;
LABEL_24:
  CVPixelBufferUnlockBaseAddress(data, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  CVPixelBufferRelease(data);
  return v16;
}

void sub_224731158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertRGBPlanarFloat(__CVBuffer *a1, __CVBuffer *a2)
{
  minFloat[2] = *MEMORY[0x277D85DE8];
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365990)
  {
    return 0xFFFFFFFFLL;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  memset(&dest, 0, sizeof(dest));
  v4 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(a2, *MEMORY[0x277CBF3A0], &dest);
  memset(&blue, 0, sizeof(blue));
  PixelBufferUtils::asVImageBuffer(a1, 0, *v4, &blue);
  memset(&green, 0, sizeof(green));
  PixelBufferUtils::asVImageBuffer(a1, 1, *v4, &green);
  memset(&red, 0, sizeof(red));
  PixelBufferUtils::asVImageBuffer(a1, 2, *v4, &red);
  minFloat[0] = 0;
  minFloat[1] = 0;
  maxFloat = xmmword_2247A54C0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v6 = PixelFormatType;
  if (PixelFormatType <= 1111970368)
  {
    if (PixelFormatType == 32)
    {
      v7 = vImageConvert_PlanarFToXRGB8888(0xFFu, &blue, &green, &red, &dest, &maxFloat, minFloat, 0);
      goto LABEL_14;
    }

    if (PixelFormatType == 1094862674)
    {
      v7 = vImageConvert_PlanarFToXRGB8888(0xFFu, &red, &green, &blue, &dest, &maxFloat, minFloat, 0);
      goto LABEL_14;
    }

LABEL_19:
    PixelBufferUtils::pixelFormatAsString(PixelFormatType, __p);
    if (v12 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    NSLog(&cfstr_SDErrorPixelFo.isa, "convertRGBPlanarFloat", 1889, v6, v10);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = -21783;
    goto LABEL_15;
  }

  if (PixelFormatType == 1111970369)
  {
    v7 = vImageConvert_PlanarFToBGRX8888(&red, &green, &blue, 0xFFu, &dest, &maxFloat, minFloat, 0);
    goto LABEL_14;
  }

  if (PixelFormatType == 1380401729)
  {
    v7 = vImageConvert_PlanarFToBGRX8888(&blue, &green, &red, 0xFFu, &dest, &maxFloat, minFloat, 0);
    goto LABEL_14;
  }

  if (PixelFormatType != 1380410945)
  {
    goto LABEL_19;
  }

  v7 = vImageConvert_PlanarFToBGRXFFFF(&blue, &green, &red, 1.0, &dest, 0);
LABEL_14:
  v9 = v7;
LABEL_15:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 0);
  if (v9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void sub_224731448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertRGBPlanarHalf(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1919365992)
  {
    return 0xFFFFFFFFLL;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBufferOut = 0;
  v6 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v6, Width, Height, 0x72673366u, BufferAttributes, &pixelBufferOut))
  {
    v8 = 0;
  }

  else
  {
    v8 = pixelBufferOut;
  }

  v9 = convertFloat16ToFloat32(a1, v8);
  if (!v9)
  {
    v9 = convertRGBPlanarFloat(v8, a2);
  }

  v10 = v9;
  CVPixelBufferRelease(v8);
  return v10;
}

uint64_t createBGRAPermutesFromYUV(CVPixelBufferRef pixelBuffer, int a2, CVPixelBufferRef a3)
{
  v6 = a2 == 1380411457 || a2 == 1380410945;
  data = a3;
  v8 = a2;
  if (v6)
  {
    v8 = 1111970369;
    Width = CVPixelBufferGetWidth(a3);
    Height = CVPixelBufferGetHeight(a3);
    pixelBufferOut.data = 0;
    v11 = *MEMORY[0x277CBECE8];
    BufferAttributes = getBufferAttributes();
    if (CVPixelBufferCreate(v11, Width, Height, 0x42475241u, BufferAttributes, &pixelBufferOut))
    {
      data = 0;
    }

    else
    {
      data = pixelBufferOut.data;
    }
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(data, 0);
  memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
  v13 = MEMORY[0x277CBF3A0];
  PixelBufferUtils::asVImageBuffer(pixelBuffer, 0, *MEMORY[0x277CBF3A0], &pixelBufferOut);
  memset(&srcCbCr, 0, sizeof(srcCbCr));
  PixelBufferUtils::asVImageBuffer(pixelBuffer, 1, *v13, &srcCbCr);
  memset(&dest, 0, sizeof(dest));
  PixelBufferUtils::asVImageBuffer(data, *v13, &dest);
  v14 = RGBA_FORMAT_MAP();
  v19 = v8 | 0x2000000000;
  *&v18.Yp_bias = &v19;
  v15 = std::__hash_table<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::pair<unsigned char *,int>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v14, v19)[3];
  if ((createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined & 1) != 0 || (v18 = *ymmword_2247AA0A8, v16 = vImageConvert_YpCbCrToARGB_GenerateConversion(*MEMORY[0x277CB86E0], &v18, &createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, kvImage420Yp8_CbCr8, kvImageARGB8888, 0), createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::isConvesionInfoDefined = 1, !v16))
  {
    v16 = vImageConvert_420Yp8_CbCr8ToARGB8888(&pixelBufferOut, &srcCbCr, &dest, &createBGRAPermutesFromYUV(__CVBuffer *,unsigned int,__CVBuffer *)::conversionInfo, v15, 0xFFu, 0);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferUnlockBaseAddress(data, 0);
  if (a2 == 1380411457 || a2 == 1380410945)
  {
    v16 = convert4ChannelFormats(data, a2, a3);
    CVPixelBufferRelease(data);
  }

  if (v16)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t createRGBPlanarFloatFromBuffer(__CVBuffer *a1, __CVBuffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  pixelBufferOut.data = 0;
  v6 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v6, Width, Height, 0x52476641u, BufferAttributes, &pixelBufferOut))
  {
    data = 0;
  }

  else
  {
    data = pixelBufferOut.data;
  }

  if (PixelBufferUtils::convertPixelBufferFormat(a1, data, 0, v8))
  {
    CVPixelBufferRelease(data);
    return 0xFFFFFFFFLL;
  }

  else if (data)
  {
    CVPixelBufferLockBaseAddress(data, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 0);
    memset(&pixelBufferOut, 0, sizeof(pixelBufferOut));
    v11 = MEMORY[0x277CBF3A0];
    PixelBufferUtils::asVImageBuffer(data, *MEMORY[0x277CBF3A0], &pixelBufferOut);
    memset(&destA, 0, sizeof(destA));
    PixelBufferUtils::asVImageBuffer(a2, 0, *v11, &destA);
    memset(&destR, 0, sizeof(destR));
    PixelBufferUtils::asVImageBuffer(a2, 1, *v11, &destR);
    memset(&destG, 0, sizeof(destG));
    PixelBufferUtils::asVImageBuffer(a2, 2, *v11, &destG);
    if (MEMORY[0x22AA53DD0](&v14, pixelBufferOut.height, pixelBufferOut.width, 32, 0))
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v13 = vImageConvert_ARGBFFFFtoPlanarF(&pixelBufferOut, &destA, &destR, &destG, &v14, 0);
      free(v14.data);
      if (v13)
      {
        v12 = 0xFFFFFFFFLL;
      }

      else
      {
        v12 = 0;
      }
    }

    CVPixelBufferUnlockBaseAddress(data, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    CVPixelBufferRelease(data);
    return v12;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t createRGBPlanarHalfFromBuffer(__CVBuffer *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  pixelBufferOut = 0;
  v6 = *MEMORY[0x277CBECE8];
  BufferAttributes = getBufferAttributes();
  if (CVPixelBufferCreate(v6, Width, Height, 0x72673366u, BufferAttributes, &pixelBufferOut))
  {
    v8 = 0;
  }

  else
  {
    v8 = pixelBufferOut;
  }

  if (createRGBPlanarFloatFromBuffer(a1, v8))
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v9 = convertFloat32ToFloat16(v8, pixelBuffer);
  }

  CVPixelBufferRelease(v8);
  return v9;
}

uint64_t copyPixelBufferMultiPlane(__CVBuffer *a1, CGPoint a2, __CVBuffer *a3, CGRect a4)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a2.y;
  v10 = a2.x;
  PlaneCount = CVPixelBufferGetPlaneCount(a3);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  CVPixelBufferLockBaseAddress(a1, 0);
  CVPixelBufferLockBaseAddress(a3, 1uLL);
  if (PlaneCount)
  {
    v14 = 0;
    v15 = MEMORY[0x277CBF3A0];
    do
    {
      v16 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, v14);
      memset(&src, 0, sizeof(src));
      PixelBufferUtils::asVImageBuffer(a3, v14, *v15, &src);
      memset(&dest, 0, sizeof(dest));
      PixelBufferUtils::asVImageBuffer(a1, v14, *v15, &dest);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      IsEmpty = CGRectIsEmpty(v29);
      v18 = src.width;
      if (IsEmpty)
      {
        v19 = src.height;
      }

      else
      {
        if (x >= src.width || (y < src.height ? (v20 = width <= src.width) : (v20 = 0), v20 ? (v21 = height <= src.height) : (v21 = 0), !v21))
        {
LABEL_26:
          NSLog(&cfstr_SDErrorRegionI.isa, "updateVImageBufferToRegion", 1923);
          return 0xFFFFFFFFLL;
        }

        src.height = height;
        src.width = width;
        src.data = src.data + src.rowBytes * y + v16 * x;
        v19 = height;
        v18 = width;
      }

      v22 = v18;
      v23 = v19;
      v30.origin.x = v10;
      v30.origin.y = v9;
      v30.size.width = v18;
      v30.size.height = v19;
      if (!CGRectIsEmpty(v30))
      {
        if (v10 >= dest.width)
        {
          goto LABEL_26;
        }

        v24 = v9 < dest.height && v22 <= dest.width;
        if (!v24 || v23 > dest.height)
        {
          goto LABEL_26;
        }

        dest.data = dest.data + dest.rowBytes * v9 + v16 * v10;
        dest.height = v23;
        dest.width = v22;
      }

      vImageCopyBuffer(&src, &dest, v16, 0);
      v14 = (v14 + 1);
    }

    while (PlaneCount != v14);
  }

  CVPixelBufferUnlockBaseAddress(a1, 0);
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  return 0;
}

uint64_t convertFloat32ToFloat16(__CVBuffer *a1, __CVBuffer *a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = PixelBufferUtils::planeCountForPixelFormat(PixelFormatType);
  v6 = CVPixelBufferGetPixelFormatType(a2);
  if (v5 == PixelBufferUtils::planeCountForPixelFormat(v6))
  {
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    CVPixelBufferLockBaseAddress(a2, 0);
    if (v5)
    {
      v7 = 1;
      v8 = MEMORY[0x277CBF3A0];
      do
      {
        memset(&src, 0, sizeof(src));
        PixelBufferUtils::asVImageBuffer(a1, (v7 - 1), *v8, &src);
        memset(&dest, 0, sizeof(dest));
        PixelBufferUtils::asVImageBuffer(a2, (v7 - 1), *v8, &dest);
        v9 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
        if (v7 >= v5)
        {
          break;
        }

        ++v7;
      }

      while (!v9);
    }

    else
    {
      memset(&src, 0, sizeof(src));
      v11 = MEMORY[0x277CBF3A0];
      PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &src);
      memset(&dest, 0, sizeof(dest));
      PixelBufferUtils::asVImageBuffer(a2, *v11, &dest);
      v9 = vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
    }

    v12 = v9;
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    CVPixelBufferUnlockBaseAddress(a2, 0);
    return v12 != 0;
  }

  else
  {
    NSLog(&cfstr_SDErrorInputAn.isa, "convertFloat32ToFloat16", 1592);
    return 0xFFFFFFFFLL;
  }
}

void PixelBufferUtils::forEveryPixel(__CVBuffer *a1, void *a2, int a3)
{
  v18 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v6 = PixelBufferUtils::pixelSizeForPixelFormat(PixelFormatType, a3);
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  if (PlaneCount)
  {
    v8 = 3516;
    v9 = @"%s:%d - ERROR - multiplane pixel buffer with nonmatching plane index";
    if (a3 < 0 || PlaneCount <= a3)
    {
      goto LABEL_7;
    }
  }

  else if (a3 != -1)
  {
    v8 = 3521;
    v9 = @"%s:%d - ERROR - cannot request plane for single-plane image";
LABEL_7:
    NSLog(&v9->isa, "forEveryPixel", v8);
    goto LABEL_18;
  }

  CVPixelBufferLockBaseAddress(a1, 0);
  pixelBuffer = a1;
  if (PlaneCount)
  {
    PixelBufferUtils::asVImageBuffer(a1, a3, *MEMORY[0x277CBF3A0], &v19);
  }

  else
  {
    PixelBufferUtils::asVImageBuffer(a1, *MEMORY[0x277CBF3A0], &v19);
  }

  data = v19.data;
  height = v19.height;
  width = v19.width;
  rowBytes = v19.rowBytes;
  if (v19.height && v19.width)
  {
    v14 = 0;
    do
    {
      v15 = data;
      v16 = width;
      do
      {
        (v18)[2](v18, v15, PixelFormatType);
        v15 += v6;
        --v16;
      }

      while (v16);
      ++v14;
      data += rowBytes;
    }

    while (v14 != height);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
LABEL_18:
}