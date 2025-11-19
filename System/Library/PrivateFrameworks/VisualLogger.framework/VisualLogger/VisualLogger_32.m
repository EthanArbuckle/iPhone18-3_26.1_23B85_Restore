void sub_2713A5580(uint64_t *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_27171CBE8(1uLL);
  v5 = a1[72];
  v6 = a1[73];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v5;
    v1 = *(v5 + 8);
    v13[0] = *(v5 + 16);
    *(v13 + 3) = *(v5 + 19);
    v2 = *(v5 + 23);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *v5 = 0;
  }

  sub_271722BF0(a1 + 24, v4, v12);
  LOBYTE(v8[0]) = 0;
  v11 = 0;
  if (v5 != v6)
  {
    if (v2 < 0)
    {
      sub_271127178(v8, v7, v1);
    }

    else
    {
      v8[0] = v7;
      v8[1] = v1;
      *v9 = v13[0];
      *&v9[3] = *(v13 + 3);
      v10 = v2;
    }

    v11 = 1;
  }

  sub_27153F59C();
}

void sub_2713A582C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, ...)
{
  va_start(va, a9);
  if (a9 == 1 && a8 < 0)
  {
    operator delete(__p);
  }

  sub_271359728(va);
  if (v10 != v11 && v12 < 0)
  {
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2713A58A4(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D2E0, 8);
  if (result)
  {
    v5 = result;
    result = sub_2713D86DC((a1 + 192), (result + 192));
    if (result)
    {
      v7[0] = a1 + 24;
      v7[1] = a1 + 40;
      v7[2] = a1 + 72;
      v7[3] = a1 + 96;
      v7[4] = a1 + 128;
      v7[5] = a1 + 160;
      v6[0] = v5 + 24;
      v6[1] = v5 + 40;
      v6[2] = v5 + 72;
      v6[3] = v5 + 96;
      v6[4] = v5 + 128;
      v6[5] = v5 + 160;
      return sub_271399AF0(v7, v6);
    }
  }

  return result;
}

uint64_t sub_2713A5980(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D2E0, 8);
  if (result)
  {
    v5 = result;
    result = sub_2713D86DC((a1 + 184), (result + 192));
    if (result)
    {
      v7[0] = a1 + 16;
      v7[1] = a1 + 32;
      v7[2] = a1 + 64;
      v7[3] = a1 + 88;
      v7[4] = a1 + 120;
      v7[5] = a1 + 152;
      v6[0] = v5 + 24;
      v6[1] = v5 + 40;
      v6[2] = v5 + 72;
      v6[3] = v5 + 96;
      v6[4] = v5 + 128;
      v6[5] = v5 + 160;
      return sub_271399AF0(v7, v6);
    }
  }

  return result;
}

uint64_t sub_2713A5B2C(uint64_t a1)
{
  if (*(a1 + 144) != 1)
  {
    return a1;
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_4:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_14;
  }

LABEL_12:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_14:
  operator delete(*a1);
  return a1;
}

uint64_t sub_2713A5BF4(uint64_t a1, void *a2)
{
  v4 = a1 + 24;
  *(a1 + 48) = 0u;
  v5 = a1 + 48;
  v6 = a1 + 72;
  *(a1 + 96) = 0u;
  v7 = a1 + 96;
  v8 = a1 + 120;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = *(a2 + 4);
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178((a1 + 152), a2[3], a2[4]);
    }

    else
    {
      v9 = *(a2 + 3);
      *(a1 + 168) = a2[5];
      *(a1 + 152) = v9;
    }
  }

  else
  {
    *(a1 + 175) = 0;
    *(a1 + 152) = 0;
  }

  *(a1 + 176) = *a2;
  v10 = *(a2 + 13);
  *(a1 + 208) = a2[28];
  *(a1 + 192) = v10;
  if (*(a2 + 200) == 1)
  {
    if (a2 + 7 != a1)
    {
      v11 = *(a2 + 79);
      if (*(a1 + 23) < 0)
      {
        if (v11 >= 0)
        {
          v13 = a2 + 7;
        }

        else
        {
          v13 = a2[7];
        }

        if (v11 >= 0)
        {
          v14 = *(a2 + 79);
        }

        else
        {
          v14 = a2[8];
        }

        sub_2711289F8(a1, v13, v14);
      }

      else if ((*(a2 + 79) & 0x80) != 0)
      {
        sub_271128928(a1, a2[7], a2[8]);
      }

      else
      {
        v12 = *(a2 + 7);
        *(a1 + 16) = a2[9];
        *a1 = v12;
      }
    }

    if (v4 != a2 + 10)
    {
      v15 = *(a2 + 103);
      if (*(a1 + 47) < 0)
      {
        if (v15 >= 0)
        {
          v17 = a2 + 10;
        }

        else
        {
          v17 = a2[10];
        }

        if (v15 >= 0)
        {
          v18 = *(a2 + 103);
        }

        else
        {
          v18 = a2[11];
        }

        sub_2711289F8(v4, v17, v18);
      }

      else if ((*(a2 + 103) & 0x80) != 0)
      {
        sub_271128928(v4, a2[10], a2[11]);
      }

      else
      {
        v16 = *(a2 + 5);
        *(v4 + 16) = a2[12];
        *v4 = v16;
      }
    }

    if (v5 != a2 + 13)
    {
      v19 = *(a2 + 127);
      if (*(a1 + 71) < 0)
      {
        if (v19 >= 0)
        {
          v21 = a2 + 13;
        }

        else
        {
          v21 = a2[13];
        }

        if (v19 >= 0)
        {
          v22 = *(a2 + 127);
        }

        else
        {
          v22 = a2[14];
        }

        sub_2711289F8(v5, v21, v22);
      }

      else if ((*(a2 + 127) & 0x80) != 0)
      {
        sub_271128928(v5, a2[13], a2[14]);
      }

      else
      {
        v20 = *(a2 + 13);
        *(v5 + 16) = a2[15];
        *v5 = v20;
      }
    }

    if (v6 != a2 + 16)
    {
      v23 = *(a2 + 151);
      if (*(a1 + 95) < 0)
      {
        if (v23 >= 0)
        {
          v25 = a2 + 16;
        }

        else
        {
          v25 = a2[16];
        }

        if (v23 >= 0)
        {
          v26 = *(a2 + 151);
        }

        else
        {
          v26 = a2[17];
        }

        sub_2711289F8(v6, v25, v26);
      }

      else if ((*(a2 + 151) & 0x80) != 0)
      {
        sub_271128928(v6, a2[16], a2[17]);
      }

      else
      {
        v24 = *(a2 + 8);
        *(v6 + 16) = a2[18];
        *v6 = v24;
      }
    }

    if (v7 != a2 + 19)
    {
      v27 = *(a2 + 175);
      if (*(a1 + 119) < 0)
      {
        if (v27 >= 0)
        {
          v29 = a2 + 19;
        }

        else
        {
          v29 = a2[19];
        }

        if (v27 >= 0)
        {
          v30 = *(a2 + 175);
        }

        else
        {
          v30 = a2[20];
        }

        sub_2711289F8(v7, v29, v30);
      }

      else if ((*(a2 + 175) & 0x80) != 0)
      {
        sub_271128928(v7, a2[19], a2[20]);
      }

      else
      {
        v28 = *(a2 + 19);
        *(v7 + 16) = a2[21];
        *v7 = v28;
      }
    }

    if (v8 != a2 + 22)
    {
      v31 = *(a2 + 199);
      if (*(a1 + 143) < 0)
      {
        if (v31 >= 0)
        {
          v33 = a2 + 22;
        }

        else
        {
          v33 = a2[22];
        }

        if (v31 >= 0)
        {
          v34 = *(a2 + 199);
        }

        else
        {
          v34 = a2[23];
        }

        sub_2711289F8(v8, v33, v34);
      }

      else if ((*(a2 + 199) & 0x80) != 0)
      {
        sub_271128928(v8, a2[22], a2[23]);
      }

      else
      {
        v32 = *(a2 + 11);
        *(v8 + 16) = a2[24];
        *v8 = v32;
      }
    }
  }

  return a1;
}

void sub_2713A5EF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*v6);
    if ((*(v1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v5);
  if ((*(v1 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*v4);
  if ((*(v1 + 71) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*v3);
  if ((*(v1 + 47) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*v2);
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_13:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_2713A5FAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
      goto LABEL_19;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_19;
  }

  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 32))
    {
      goto LABEL_19;
    }
  }

  else if (*(a1 + 47))
  {
    goto LABEL_19;
  }

  if ((*(a1 + 71) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 56))
    {
      goto LABEL_19;
    }
  }

  else if (*(a1 + 71))
  {
    goto LABEL_19;
  }

  v4 = *(a1 + 95);
  if (v4 < 0)
  {
    v4 = *(a1 + 80);
  }

  if (v4)
  {
    goto LABEL_19;
  }

  v5 = *(a1 + 119);
  if (v5 < 0)
  {
    v5 = *(a1 + 104);
  }

  if (v5)
  {
LABEL_19:
    v6 = 1;
    v7 = *(a1 + 175);
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_25:
    v7 = *(a1 + 160);
    LOBYTE(__p[0]) = 0;
    v38 = 0;
    if (!v6)
    {
      goto LABEL_44;
    }

    goto LABEL_26;
  }

  v8 = *(a1 + 143);
  if (v8 < 0)
  {
    v8 = *(a1 + 128);
  }

  v6 = v8 != 0;
  v7 = *(a1 + 175);
  if (v7 < 0)
  {
    goto LABEL_25;
  }

LABEL_20:
  LOBYTE(__p[0]) = 0;
  v38 = 0;
  if (!v6)
  {
LABEL_44:
    v11 = *(a1 + 144);
    LODWORD(v15[0]) = v11;
    if (v7)
    {
      goto LABEL_45;
    }

    goto LABEL_58;
  }

LABEL_26:
  sub_27181626C(v15, a1, (a1 + 24), (a1 + 48), (a1 + 72), (a1 + 96), (a1 + 120));
  if (v38 == 1)
  {
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = *v15;
    v27 = v15[2];
    HIBYTE(v15[2]) = 0;
    LOBYTE(v15[0]) = 0;
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    v28 = *v16;
    v29 = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16[0]) = 0;
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    *v30 = *v18;
    v31 = v19;
    HIBYTE(v19) = 0;
    LOBYTE(v18[0]) = 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    v32 = *v20;
    v33 = v21;
    HIBYTE(v21) = 0;
    LOBYTE(v20[0]) = 0;
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    *v34 = *v22;
    v35 = v23;
    HIBYTE(v23) = 0;
    LOBYTE(v22[0]) = 0;
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
      v36 = v24;
      v37 = v25;
      HIBYTE(v25) = 0;
      LOBYTE(v24) = 0;
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    else
    {
      v36 = v24;
      v37 = v25;
      HIBYTE(v25) = 0;
      LOBYTE(v24) = 0;
    }
  }

  else
  {
    *__p = *v15;
    v9 = v15[2];
    memset(v15, 0, sizeof(v15));
    v10 = *v16;
    v16[0] = 0;
    v28 = v10;
    v27 = v9;
    v29 = v17;
    v16[1] = 0;
    v17 = 0;
    *v30 = *v18;
    v18[0] = 0;
    v18[1] = 0;
    v31 = v19;
    v33 = v21;
    v32 = *v20;
    v19 = 0;
    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    *v34 = *v22;
    v22[0] = 0;
    v22[1] = 0;
    v35 = v23;
    v37 = v25;
    v36 = v24;
    v23 = 0;
    v24 = 0uLL;
    v25 = 0;
    v38 = 1;
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v17) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_56;
    }
  }

  else if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v18[0]);
  if ((SHIBYTE(v17) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_57;
  }

LABEL_56:
  operator delete(v16[0]);
  if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_57:
  operator delete(v15[0]);
  v11 = *(a1 + 144);
  LODWORD(v15[0]) = v11;
  if (v7)
  {
LABEL_45:
    if (*(a1 + 175) < 0)
    {
      sub_271127178(&v15[1], *(a1 + 152), *(a1 + 160));
      v11 = v15[0];
    }

    else
    {
      *&v15[1] = *(a1 + 152);
      v16[0] = *(a1 + 168);
    }

    LOBYTE(v16[1]) = 1;
    *a2 = *(a1 + 176);
    *(a2 + 16) = v11;
    *(a2 + 24) = *&v15[1];
    *(a2 + 40) = v16[0];
    v15[1] = 0;
    v15[2] = 0;
    v16[0] = 0;
    *(a2 + 48) = 1;
    *(a2 + 56) = 0;
    v12 = a2 + 56;
    *(a2 + 200) = 0;
    if (v38)
    {
      goto LABEL_49;
    }

LABEL_59:
    *(a2 + 208) = *(a1 + 192);
    *(a2 + 224) = *(a1 + 208);
    if (v38 != 1)
    {
      return;
    }

    goto LABEL_60;
  }

LABEL_58:
  LOBYTE(v15[1]) = 0;
  LOBYTE(v16[1]) = 0;
  *a2 = *(a1 + 176);
  *(a2 + 16) = v11;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v12 = a2 + 56;
  *(a2 + 200) = 0;
  if ((v38 & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_49:
  sub_2711B0ED4(v12, __p);
  *(a2 + 200) = 1;
  v13 = v16[1];
  v14 = SHIBYTE(v16[0]);
  *(a2 + 208) = *(a1 + 192);
  *(a2 + 224) = *(a1 + 208);
  if ((v13 & 1) != 0 && v14 < 0)
  {
    operator delete(v15[1]);
  }

  if (v38 != 1)
  {
    return;
  }

LABEL_60:
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
LABEL_62:
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_69;
    }
  }

  else if ((SHIBYTE(v35) & 0x80000000) == 0)
  {
    goto LABEL_62;
  }

  operator delete(v34[0]);
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
LABEL_63:
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_64;
    }

LABEL_70:
    operator delete(v30[0]);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
LABEL_65:
      if ((SHIBYTE(v27) & 0x80000000) == 0)
      {
        return;
      }

LABEL_72:
      operator delete(__p[0]);
      return;
    }

    goto LABEL_71;
  }

LABEL_69:
  operator delete(v32);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_70;
  }

LABEL_64:
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

LABEL_71:
  operator delete(v28);
  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_72;
  }
}

BOOL sub_2713A6524(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = *(*a1 + 8);
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v2 + 8);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = v3 >= 0 ? *a1 : **a1;
  v10 = v6 >= 0 ? *a2 : *v2;
  if (memcmp(v9, v10, v4))
  {
    return 0;
  }

  v11 = *(a1 + 8);
  v12 = a2[1];
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = *(v11 + 23);
  }

  else
  {
    v14 = *(v11 + 8);
  }

  v15 = *(v12 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(v12 + 8);
  }

  if (v14 != v15)
  {
    return 0;
  }

  v17 = v13 >= 0 ? *(a1 + 8) : *v11;
  v18 = v16 >= 0 ? a2[1] : *v12;
  if (memcmp(v17, v18, v14))
  {
    return 0;
  }

  v19 = *(a1 + 16);
  v20 = a2[2];
  v21 = *(v19 + 23);
  if (v21 >= 0)
  {
    v22 = *(v19 + 23);
  }

  else
  {
    v22 = *(v19 + 8);
  }

  v23 = *(v20 + 23);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(v20 + 8);
  }

  if (v22 != v23)
  {
    return 0;
  }

  v25 = v21 >= 0 ? *(a1 + 16) : *v19;
  v26 = v24 >= 0 ? a2[2] : *v20;
  if (memcmp(v25, v26, v22))
  {
    return 0;
  }

  v27 = *(a1 + 24);
  v28 = a2[3];
  v29 = *(v27 + 23);
  if (v29 >= 0)
  {
    v30 = *(v27 + 23);
  }

  else
  {
    v30 = *(v27 + 8);
  }

  v31 = *(v28 + 23);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = *(v28 + 8);
  }

  if (v30 != v31)
  {
    return 0;
  }

  v33 = v29 >= 0 ? *(a1 + 24) : *v27;
  v34 = v32 >= 0 ? a2[3] : *v28;
  if (memcmp(v33, v34, v30))
  {
    return 0;
  }

  v35 = *(a1 + 32);
  v36 = a2[4];
  v37 = *(v35 + 23);
  if (v37 >= 0)
  {
    v38 = *(v35 + 23);
  }

  else
  {
    v38 = *(v35 + 8);
  }

  v39 = *(v36 + 23);
  v40 = v39;
  if ((v39 & 0x80u) != 0)
  {
    v39 = *(v36 + 8);
  }

  if (v38 != v39)
  {
    return 0;
  }

  v41 = v37 >= 0 ? *(a1 + 32) : *v35;
  v42 = v40 >= 0 ? a2[4] : *v36;
  if (memcmp(v41, v42, v38))
  {
    return 0;
  }

  v43 = *(a1 + 40);
  v44 = a2[5];
  v45 = *(v43 + 23);
  if (v45 >= 0)
  {
    v46 = *(v43 + 23);
  }

  else
  {
    v46 = *(v43 + 8);
  }

  v47 = *(v44 + 23);
  v48 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v47 = *(v44 + 8);
  }

  if (v46 != v47)
  {
    return 0;
  }

  v49 = v45 >= 0 ? *(a1 + 40) : *v43;
  v50 = v48 >= 0 ? a2[5] : *v44;
  if (memcmp(v49, v50, v46) || **(a1 + 48) != *a2[6])
  {
    return 0;
  }

  v51 = *(a1 + 56);
  v52 = a2[7];
  v53 = *(v51 + 23);
  if (v53 >= 0)
  {
    v54 = *(v51 + 23);
  }

  else
  {
    v54 = *(v51 + 8);
  }

  v55 = *(v52 + 23);
  v56 = v55;
  if ((v55 & 0x80u) != 0)
  {
    v55 = *(v52 + 8);
  }

  if (v54 != v55)
  {
    return 0;
  }

  v57 = v53 >= 0 ? *(a1 + 56) : *v51;
  v58 = v56 >= 0 ? a2[7] : *v52;
  if (memcmp(v57, v58, v54))
  {
    return 0;
  }

  v59 = *(a1 + 64);
  v60 = a2[8];
  v62 = *v59;
  v61 = v59[1];
  v64 = *v60;
  v63 = v60[1];
  if (v62 != v64 || v61 != v63)
  {
    return 0;
  }

  v66 = *(a1 + 72);
  v67 = a2[9];
  v75 = *(v66 + 8);
  if (*v66 != *v67 || *(v66 + 8) != *(v67 + 8))
  {
    return 0;
  }

  v70 = *(v66 + 12);
  v71 = *(v66 + 20);
  v72 = *(v67 + 12);
  v73 = *(v67 + 20);
  return v70 == v72 && v71 == v73;
}

uint64_t sub_2713A6850(uint64_t a1)
{
  *a1 = &unk_288131CA8;
  *(a1 + 8) = &unk_288131D08;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A68F8(uint64_t a1)
{
  *(a1 - 8) = &unk_288131CA8;
  *a1 = &unk_288131D08;
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v4, a1 + 8);
  }

  *(a1 + 184) = -1;
}

uint64_t sub_2713A699C(uint64_t a1)
{
  *a1 = &unk_288131CA8;
  *(a1 + 8) = &unk_288131D08;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40B4DE50DDLL);
}

uint64_t sub_2713A6A58(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_288131CA8;
  *a1 = &unk_288131D08;
  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_288131910[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40B4DE50DDLL);
}

uint64_t sub_2713A6B14(uint64_t a1)
{
  *a1 = &unk_28810B3E0;
  *(a1 + 8) = &unk_28810B440;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A6C04(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B3E0;
  *a1 = &unk_28810B440;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A6CF0(uint64_t a1)
{
  *a1 = &unk_28810B3E0;
  *(a1 + 8) = &unk_28810B440;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A6E00(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B3E0;
  *a1 = &unk_28810B440;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A6F18(uint64_t a1)
{
  *a1 = &unk_28810B530;
  *(a1 + 8) = &unk_28810B590;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A7008(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B530;
  *a1 = &unk_28810B590;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A70F4(uint64_t a1)
{
  *a1 = &unk_28810B530;
  *(a1 + 8) = &unk_28810B590;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A7204(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B530;
  *a1 = &unk_28810B590;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A731C(uint64_t a1)
{
  *a1 = &unk_28810B488;
  *(a1 + 8) = &unk_28810B4E8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A740C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B488;
  *a1 = &unk_28810B4E8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A74F8(uint64_t a1)
{
  *a1 = &unk_28810B488;
  *(a1 + 8) = &unk_28810B4E8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A7608(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B488;
  *a1 = &unk_28810B4E8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A7720(uint64_t a1)
{
  *a1 = &unk_28810BC68;
  *(a1 + 8) = &unk_28810BCC8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A7810(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BC68;
  *a1 = &unk_28810BCC8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A78FC(uint64_t a1)
{
  *a1 = &unk_28810BC68;
  *(a1 + 8) = &unk_28810BCC8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A7A0C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BC68;
  *a1 = &unk_28810BCC8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A7B24(uint64_t a1)
{
  *a1 = &unk_28810BBC0;
  *(a1 + 8) = &unk_28810BC20;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A7C14(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BBC0;
  *a1 = &unk_28810BC20;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A7D00(uint64_t a1)
{
  *a1 = &unk_28810BBC0;
  *(a1 + 8) = &unk_28810BC20;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A7E10(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BBC0;
  *a1 = &unk_28810BC20;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A7F28(uint64_t a1)
{
  *a1 = &unk_28810B680;
  *(a1 + 8) = &unk_28810B6E0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void *sub_2713A7FE4(void *result)
{
  v1 = result;
  *(result - 1) = &unk_28810B680;
  *result = &unk_28810B6E0;
  v2 = result[25];
  if (v2)
  {
    result = v2(0, result + 25, 0, 0, 0);
  }

  v3 = *(v1 + 46);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, v1 + 1);
  }

  *(v1 + 46) = -1;
  return result;
}

uint64_t sub_2713A809C(uint64_t a1)
{
  *a1 = &unk_28810B680;
  *(a1 + 8) = &unk_28810B6E0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40294CF2FDLL);
}

uint64_t sub_2713A816C(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B680;
  *a1 = &unk_28810B6E0;
  v3 = *(a1 + 200);
  if (v3)
  {
    v3(0, a1 + 200, 0, 0, 0);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_288131910[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40294CF2FDLL);
}

uint64_t sub_2713A823C(uint64_t a1)
{
  *a1 = &unk_288131D78;
  *(a1 + 8) = &unk_288131DD8;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A832C(uint64_t a1)
{
  *(a1 - 8) = &unk_288131D78;
  *a1 = &unk_288131DD8;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A8418(uint64_t a1)
{
  *a1 = &unk_288131D78;
  *(a1 + 8) = &unk_288131DD8;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A8528(uint64_t a1)
{
  *(a1 - 8) = &unk_288131D78;
  *a1 = &unk_288131DD8;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713A8640(uint64_t a1)
{
  *a1 = &unk_28810B5D8;
  *(a1 + 8) = &unk_28810B638;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A8730(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B5D8;
  *a1 = &unk_28810B638;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713A881C(uint64_t a1)
{
  *a1 = &unk_28810B5D8;
  *(a1 + 8) = &unk_28810B638;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713A892C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B5D8;
  *a1 = &unk_28810B638;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

unsigned __int8 *sub_2713A8A44@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_271127178(a2, *result, *(result + 1));
    *(a2 + 24) = v2[24];
    if ((v2[55] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
    *(a2 + 24) = result[24];
    if ((result[55] & 0x80000000) == 0)
    {
LABEL_3:
      *(a2 + 32) = *(v2 + 2);
      *(a2 + 48) = *(v2 + 6);
      goto LABEL_6;
    }
  }

  result = sub_271127178((a2 + 32), *(v2 + 4), *(v2 + 5));
LABEL_6:
  *(a2 + 56) = *(v2 + 14);
  if (v2[87] < 0)
  {
    result = sub_271127178((a2 + 64), *(v2 + 8), *(v2 + 9));
  }

  else
  {
    *(a2 + 64) = *(v2 + 4);
    *(a2 + 80) = *(v2 + 10);
  }

  if (v2[111] < 0)
  {
    return sub_271127178((a2 + 88), *(v2 + 11), *(v2 + 12));
  }

  *(a2 + 88) = *(v2 + 88);
  *(a2 + 104) = *(v2 + 13);
  return result;
}

void sub_2713A8B2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
    if ((*(v1 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
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
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t sub_2713A8BA0(uint64_t a1)
{
  *a1 = &unk_28810B7D0;
  *(a1 + 8) = &unk_28810B830;
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
    if ((*(a1 + 287) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 255) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 287) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 264));
  if ((*(a1 + 255) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 223) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(*(a1 + 232));
  if ((*(a1 + 223) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = *(a1 + 192);
    if (v2 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 200));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
LABEL_11:
    (off_288131910[v2])(&v4, a1 + 16);
  }

LABEL_12:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A8CAC(uint64_t a1)
{
  sub_2713A8BA0(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713A8CE4(uint64_t a1)
{
  sub_2713A8BA0(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713A8D20(uint64_t a1)
{
  *a1 = &unk_28810BB18;
  *(a1 + 8) = &unk_28810BB78;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A8E00(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BB18;
  *a1 = &unk_28810BB78;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;
}

void sub_2713A8EDC(uint64_t a1)
{
  *a1 = &unk_28810BB18;
  *(a1 + 8) = &unk_28810BB78;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 16);
  }

  *(a1 + 192) = -1;

  JUMPOUT(0x2743BF050);
}

void sub_2713A8FDC(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BB18;
  *a1 = &unk_28810BB78;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713A90DC(uint64_t a1)
{
  *a1 = &unk_28810B878;
  *(a1 + 8) = &unk_28810B8D8;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713A9174(uint64_t result)
{
  v1 = result;
  *(result - 8) = &unk_28810B878;
  *result = &unk_28810B8D8;
  v2 = *(result + 184);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 8);
  }

  *(v1 + 184) = -1;
  return result;
}

uint64_t sub_2713A9208(uint64_t a1)
{
  *a1 = &unk_28810B878;
  *(a1 + 8) = &unk_28810B8D8;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40CF772451);
}

uint64_t sub_2713A92B4(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B878;
  *a1 = &unk_28810B8D8;
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40CF772451);
}

uint64_t sub_2713A9360(uint64_t a1)
{
  *a1 = &unk_28810B728;
  *(a1 + 8) = &unk_28810B788;
  sub_2713B1E08(a1 + 200);
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713A9400(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B728;
  *a1 = &unk_28810B788;
  result = sub_2713B1E08(a1 + 192);
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, a1 + 8);
  }

  *(a1 + 184) = -1;
  return result;
}

uint64_t sub_2713A9498(uint64_t a1)
{
  *a1 = &unk_28810B728;
  *(a1 + 8) = &unk_28810B788;
  sub_2713B1E08(a1 + 200);
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40DC57CB27);
}

uint64_t sub_2713A954C(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B728;
  *a1 = &unk_28810B788;
  sub_2713B1E08(a1 + 192);
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40DC57CB27);
}

uint64_t sub_2713A95FC(uint64_t a1)
{
  *a1 = &unk_28810B9C8;
  *(a1 + 8) = &unk_28810BA28;
  sub_271167834(a1 + 200, *(a1 + 208));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A96A0(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B9C8;
  *a1 = &unk_28810BA28;
  sub_271167834(a1 + 192, *(a1 + 200));
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;
}

uint64_t sub_2713A9740(uint64_t a1)
{
  *a1 = &unk_28810B9C8;
  *(a1 + 8) = &unk_28810BA28;
  sub_271167834(a1 + 200, *(a1 + 208));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40546963AFLL);
}

uint64_t sub_2713A97F8(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B9C8;
  *a1 = &unk_28810BA28;
  sub_271167834(a1 + 192, *(a1 + 200));
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40546963AFLL);
}

uint64_t sub_2713A98B0(uint64_t a1)
{
  *a1 = &unk_28810BA70;
  *(a1 + 8) = &unk_28810BAD0;
  if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = *(a1 + 208);
    v4 = *(a1 + 200);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 200);
    }

    *(a1 + 208) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 192);
  if (v6 != -1)
  {
    (off_288131910[v6])(&v8, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_2713A99C0(uint64_t a1)
{
  sub_2713A98B0(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713A99F8(uint64_t a1)
{
  sub_2713A98B0(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713A9A34(uint64_t a1)
{
  *a1 = &unk_28810B920;
  *(a1 + 8) = &unk_28810B980;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713A9ACC(uint64_t result)
{
  v1 = result;
  *(result - 8) = &unk_28810B920;
  *result = &unk_28810B980;
  v2 = *(result + 184);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 8);
  }

  *(v1 + 184) = -1;
  return result;
}

uint64_t sub_2713A9B60(uint64_t a1)
{
  *a1 = &unk_28810B920;
  *(a1 + 8) = &unk_28810B980;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40956CF698);
}

uint64_t sub_2713A9C0C(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B920;
  *a1 = &unk_28810B980;
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40956CF698);
}

void sub_2713A9D10(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v5);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  sub_2713DA100(a2, (a1 + 208), &v5);
}

void *sub_2713A9ECC(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D378, 0);
  if (result)
  {

    return sub_271450554(a1, result);
  }

  return result;
}

void sub_2713AA00C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v5);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  sub_2713E4434(a2, *(a1 + 216), *(a1 + 224), &v5);
}

void *sub_2713AA1C8(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D360, 0);
  if (result)
  {

    return sub_271453BDC(a1, result);
  }

  return result;
}

void sub_2713AA2F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v5);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  sub_2713F4A18(a2, *(a1 + 216), *(a1 + 224), &v5);
}

void *sub_2713AA4AC(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D348, 0);
  if (result)
  {

    return sub_271457194(a1, result);
  }

  return result;
}

void sub_2713AA5D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v5);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  sub_271407D9C(a2, *(a1 + 216), *(a1 + 224), &v5);
}

void *sub_2713AA790(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D330, 0);
  if (result)
  {

    return sub_27145A8B8(a1, result);
  }

  return result;
}

void sub_2713AA8B8(uint64_t a1)
{
  v12[25] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 192);
  if (v2 == 2)
  {
    sub_271399EB0(a1 + 16, &v5);
  }

  else if (v2 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v2)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  v7 = &unk_28812E9E8;
  v4 = *(a1 + 216);
  v3 = *(a1 + 224);
  v8 = &unk_28812EA30;
  v9 = v4;
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v5;
  sub_27113523C(v12, &v6);
  v7 = &unk_28810C840;
  sub_2711EFB3C();
}

void sub_2713AAC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_27145DFDC(&a35);
  sub_271134CBC(v35 + 16);
  _Unwind_Resume(a1);
}

void sub_2713AAC58(_Unwind_Exception *a1)
{
  sub_2711F00E8(v2);
  sub_271134CBC(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_2713AAC78(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D3D8, 0);
  if (result)
  {

    return sub_27145E09C(a1, result);
  }

  return result;
}

void sub_2713AADB8(uint64_t a1)
{
  v12[25] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 192);
  if (v2 == 2)
  {
    sub_271399EB0(a1 + 16, &v5);
  }

  else if (v2 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v2)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  v7 = &unk_28812EA90;
  v4 = *(a1 + 216);
  v3 = *(a1 + 224);
  v8 = &unk_28812EAD8;
  v9 = v4;
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v5;
  sub_27113523C(v12, &v6);
  v7 = &unk_28810C7F8;
  sub_2711F21F0();
}

void sub_2713AB13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_27146C1A0(&a35);
  sub_271134CBC(v35 + 16);
  _Unwind_Resume(a1);
}

void sub_2713AB158(_Unwind_Exception *a1)
{
  sub_2711F279C(v2);
  sub_271134CBC(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_2713AB178(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D3C0, 0);
  if (result)
  {

    return sub_27146C260(a1, result);
  }

  return result;
}

void sub_2713AB4BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271134CBC(v2 + 16);
  sub_27173FDFC(va);
  _Unwind_Resume(a1);
}

void sub_2713AB4DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27173FDFC(va);
  _Unwind_Resume(a1);
}

void *sub_2713AB4F0(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D400, 0);
  if (result)
  {

    return sub_27147A444(a1, result);
  }

  return result;
}

void sub_2713AB618(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 208);
  *&v5 = *(a1 + 200);
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v6);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v6);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v6);
  }

  sub_271439780(a2, &v5, &v6);
}

void sub_2713AB81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_271134CBC(v9 + 16);
  sub_27112F828(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713AB84C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D240, 0);
  if (result)
  {

    return sub_27147D6B0(a1, result);
  }

  return result;
}

void sub_2713AB974(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v5);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v5);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v5);
  }

  sub_27144D4A4(a2, (a1 + 208), &v5);
}

void *sub_2713ABB30(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D990, 0);
  if (result)
  {

    return sub_271480B94(a1, result);
  }

  return result;
}

void sub_2713ABC58(uint64_t a1)
{
  v28[25] = *MEMORY[0x277D85DE8];
  sub_2713A8A44((a1 + 200), v3);
  v2 = *(a1 + 192);
  if (v2 == 2)
  {
    sub_271399EB0(a1 + 16, &v13);
  }

  else if (v2 == 1)
  {
    sub_2713DA430(a1 + 16, &v13);
  }

  else
  {
    if (v2)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v13);
  }

  v15 = &unk_288131F40;
  v16 = &unk_288131F88;
  v17 = *v3;
  v18 = v4;
  v3[0] = 0;
  v3[1] = 0;
  v19 = v5;
  v20 = *v6;
  v21 = v7;
  v4 = 0;
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  v22 = v8;
  v24 = v10;
  v23 = *v9;
  v9[0] = 0;
  v9[1] = 0;
  v26 = v12;
  v25 = *v11;
  v10 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v27 = v13;
  sub_27113523C(v28, &v14);
  v15 = &unk_28810C528;
  operator new();
}

void sub_2713ABFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  (*(*v49 + 8))(v49);
  sub_2714852FC(&a49);
  sub_271134CBC(v50 + 16);
  sub_2713B1398(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713AC09C(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D318, 0);
  if (result)
  {

    return sub_271486088(a1, result);
  }

  return result;
}

void sub_2713AC698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  (*(*v45 + 8))(v45);
  sub_2713772A8(&a45);
  sub_271134CBC(v46 + 16);
  sub_271376568(&a10);
  _Unwind_Resume(a1);
}

void sub_2713AC724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271376568(va);
  _Unwind_Resume(a1);
}

void *sub_2713AC738(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D228, 0);
  if (result)
  {

    return sub_27148AC30(a1, result);
  }

  return result;
}

void sub_2713AC860(uint64_t a1)
{
  v23[25] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 200);
  if (v5 == 2)
  {
    if (*(a1 + 248) != 1)
    {
      goto LABEL_15;
    }

    v7 = 0;
    LOBYTE(v6) = *(a1 + 208);
    v2 = *(a1 + 216);
    v1 = *(a1 + 224);
    v8 = 1;
    v3 = 1;
    v4 = *(a1 + 225);
    v9 = *(a1 + 192);
    if (v9 != 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (v5 == 1)
    {
      if (*(a1 + 248))
      {
        goto LABEL_15;
      }

      v3 = 0;
      v6 = *(a1 + 208);
      v2 = *(a1 + 216);
      v1 = *(a1 + 224);
      v4 = *(a1 + 232) << 56;
      v10 = *(a1 + 233);
      v7 = v6 & 0xFFFFFFFFFFFFFF00;
      v8 = 1;
      v9 = *(a1 + 192);
      if (v9 == 2)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    LOBYTE(v6) = 0;
    v8 = 0;
    v7 = 0;
    v9 = *(a1 + 192);
    if (v9 != 2)
    {
LABEL_10:
      if (v9 == 1)
      {
        sub_2713DA430(a1 + 16, &v11);
LABEL_14:
        v13 = &unk_2881313F8;
        v14 = &unk_288131440;
        v15 = v7 | v6;
        v16 = v2;
        v17 = v1;
        v18 = v4;
        v19 = v10;
        v20 = v3;
        v21 = v8;
        v22 = v11;
        sub_27113523C(v23, &v12);
        v13 = &unk_28810C570;
        sub_271494B3C();
      }

      if (!v9)
      {
        sub_2713A3334(a1 + 16, &v11);
        goto LABEL_14;
      }

LABEL_15:
      sub_2711308D4();
    }
  }

LABEL_8:
  sub_271399EB0(a1 + 16, &v11);
  goto LABEL_14;
}

void sub_2713ACC2C(_Unwind_Exception *a1)
{
  sub_271134CBC(v1 + 96);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void *sub_2713ACC64(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D5B8, 0);
  if (result)
  {

    return sub_271494DC0(a1, result);
  }

  return result;
}

void sub_2713ACD8C(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  sub_2713A5FAC(a1 + 200, &v3);
  v2 = *(a1 + 192);
  if (v2 == 2)
  {
    sub_271399EB0(a1 + 16, &v4);
  }

  else if (v2 == 1)
  {
    sub_2713DA430(a1 + 16, &v4);
  }

  else
  {
    if (v2)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v4);
  }

  sub_27149DC38(&v3, &v4);
}

void sub_2713AD000(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_271134CBC(v2 + 16);
  sub_2711B039C(va);
  _Unwind_Resume(a1);
}

void sub_2713AD020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2711B039C(va);
  _Unwind_Resume(a1);
}

void *sub_2713AD034(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D2B8, 0);
  if (result)
  {

    return sub_27149F9F0(a1, result);
  }

  return result;
}

void sub_2713AD15C(uint64_t a1)
{
  v18[25] = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  v8 = &v9;
  v2 = *(a1 + 200);
  v3 = (a1 + 208);
  if (v2 != (a1 + 208))
  {
    do
    {
      sub_2711B1344(&v8, &v9, v2 + 4);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  v4 = *(a1 + 192);
  if (v4 == 2)
  {
    sub_271399EB0(a1 + 16, &v11);
  }

  else if (v4 == 1)
  {
    sub_2713DA430(a1 + 16, &v11);
  }

  else
  {
    if (v4)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v11);
  }

  v13 = &unk_288131350;
  v14 = &unk_288131398;
  v15 = v8;
  v16[0] = v9;
  v16[1] = v10;
  if (v10)
  {
    *(v9 + 16) = v16;
    v8 = &v9;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v15 = v16;
  }

  v17 = v11;
  sub_27113523C(v18, &v12);
  v13 = &unk_28810C600;
  operator new();
}

void sub_2713AD5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  (*(*v39 + 8))(v39);
  sub_2714A9210(&a39);
  sub_271134CBC(v40 + 16);
  sub_271167834(&a10, a11);
  _Unwind_Resume(a1);
}

void *sub_2713AD678(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D1E8, 0);
  if (result)
  {

    return sub_2714A9280(a1, result);
  }

  return result;
}

void sub_2713AD7A0(uint64_t a1)
{
  v18[25] = *MEMORY[0x277D85DE8];
  sub_2714B1860(v3, (a1 + 200));
  LOBYTE(v5[0]) = 0;
  v7 = 0;
  if (*(a1 + 248) == 1)
  {
    if (*(a1 + 247) < 0)
    {
      sub_271127178(v5, *(a1 + 224), *(a1 + 232));
    }

    else
    {
      *v5 = *(a1 + 224);
      v6 = *(a1 + 240);
    }

    v7 = 1;
  }

  v2 = *(a1 + 192);
  if (v2 == 2)
  {
    sub_271399EB0(a1 + 16, &v8);
  }

  else if (v2 == 1)
  {
    sub_2713DA430(a1 + 16, &v8);
  }

  else
  {
    if (v2)
    {
      sub_2711308D4();
    }

    sub_2713A3334(a1 + 16, &v8);
  }

  v10 = &unk_288131B88;
  v11 = &unk_288131BD0;
  *v12 = *v3;
  v13 = v4;
  v3[0] = 0;
  v3[1] = 0;
  v4 = 0;
  LOBYTE(v14) = 0;
  v16 = 0;
  if (v7 == 1)
  {
    v14 = *v5;
    v15 = v6;
    v5[1] = 0;
    v6 = 0;
    v5[0] = 0;
    v16 = 1;
  }

  v17 = v8;
  sub_27113523C(v18, &v9);
  v10 = &unk_28810C648;
  operator new();
}

void sub_2713ADCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a18 == 1 && a17 < 0)
  {
    operator delete(__p);
  }

  sub_2711BEA2C(&a9);
  _Unwind_Resume(a1);
}

void sub_2713ADCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  (*(*v43 + 8))(v43);
  sub_2714B0A3C(&a43);
  sub_271134CBC(v44 + 16);
  sub_2713B2190(&a9);
  _Unwind_Resume(a1);
}

void *sub_2713ADD88(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D200, 0);
  if (result)
  {

    return sub_2714B1990(a1, result);
  }

  return result;
}

void sub_2713ADEB0(uint64_t a1)
{
  v18[25] = *MEMORY[0x277D85DE8];
  if (*(a1 + 248) == 1)
  {
    v1 = *(a1 + 208);
    v6 = *(a1 + 216);
    v7 = *(a1 + 224);
    *(&v11 + 7) = *(a1 + 232);
    HIBYTE(v11) = *(a1 + 240);
    v2 = v1 & 0xFFFFFFFFFFFFFF00;
    v10 = v11;
    v3 = v1;
    v4 = 1;
    v5 = *(a1 + 192);
    if (v5 != 2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v4 = 0;
    v5 = *(a1 + 192);
    if (v5 != 2)
    {
LABEL_3:
      if (v5 == 1)
      {
        sub_2713DA430(a1 + 16, &v8);
      }

      else
      {
        if (v5)
        {
          sub_2711308D4();
        }

        sub_2713A3334(a1 + 16, &v8);
      }

LABEL_9:
      *&v11 = &unk_288131C18;
      *(&v11 + 1) = &unk_288131C60;
      v12 = v2 | v3;
      v13 = v6;
      v14 = v7;
      v15 = v10;
      v16 = v4;
      v17 = v8;
      sub_27113523C(v18, &v9);
      *&v11 = &unk_28810C5B8;
      sub_2714B849C();
    }
  }

  sub_271399EB0(a1 + 16, &v8);
  goto LABEL_9;
}

void sub_2713AE238(_Unwind_Exception *a1)
{
  sub_271134CBC(v2 + 80);
  sub_271134CBC(v1 + 16);
  _Unwind_Resume(a1);
}

void *sub_2713AE270(uint64_t a1, char **lpsrc)
{
  v3 = **lpsrc;
  result = __dynamic_cast(lpsrc, &unk_28811DCD8, &unk_28811D1D0, 0);
  if (result)
  {

    return sub_2714B9D68(a1, result);
  }

  return result;
}

uint64_t sub_2713AE358(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *a1;
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 1);
          v3 -= 3;
          if (v5 < 0)
          {
            operator delete(*v3);
          }
        }

        while (v3 != v2);
        v4 = *a1;
      }

      *(a1 + 8) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_2713AE3D8(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 != -1)
  {
    (off_2881318A0[v2])(&v4, a1);
  }

  *(a1 + 64) = -1;
  return a1;
}

void sub_2713AE434(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_2713AE4B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *sub_2713AE52C(uint64_t *a1)
{
  v2 = a1[44];
  if (v2)
  {
    a1[45] = v2;
    v3 = (a1[46] - v2) >> 2;
    v33 = v2;
    v34 = v3;
    v4 = *(a1 + 95);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318B0[v4])(&v35, a1 + 47);
  }

  v5 = a1[36];
  if (v5)
  {
    a1[37] = v5;
    v6 = -1431655765 * ((a1[38] - v5) >> 2);
    v33 = v5;
    v34 = v6;
    v7 = *(a1 + 79);
    if (v7 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318C0[v7])(&v35, a1 + 39);
  }

  v8 = a1[32];
  if (v8)
  {
    a1[33] = v8;
    v9 = (a1[34] - v8) >> 3;
    v33 = v8;
    v34 = v9;
    v10 = *(a1 + 71);
    if (v10 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318D0[v10])(&v35, a1 + 35);
  }

  v11 = a1[28];
  if (v11)
  {
    a1[29] = v11;
    v12 = (a1[30] - v11) >> 3;
    v33 = v11;
    v34 = v12;
    v13 = *(a1 + 63);
    if (v13 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318E0[v13])(&v35, a1 + 31);
  }

  v14 = a1[24];
  if (v14)
  {
    a1[25] = v14;
    v15 = -1431655765 * ((a1[26] - v14) >> 2);
    v33 = v14;
    v34 = v15;
    v16 = *(a1 + 55);
    if (v16 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318C0[v16])(&v35, a1 + 27);
  }

  v17 = a1[20];
  if (v17)
  {
    a1[21] = v17;
    v18 = *(a1 + 44) - v17;
    v33 = v17;
    v34 = v18;
    v19 = *(a1 + 47);
    if (v19 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318F0[v19])(&v35, a1 + 23);
  }

  v20 = a1[15];
  if (v20)
  {
    a1[16] = v20;
    v21 = *(a1 + 34) - v20;
    v33 = v20;
    v34 = v21;
    v22 = *(a1 + 37);
    if (v22 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_2881318F0[v22])(&v35, a1 + 18);
  }

  v23 = a1[10];
  if (v23)
  {
    a1[11] = v23;
    v24 = -1431655765 * ((a1[12] - v23) >> 2);
    v33 = v23;
    v34 = v24;
    v25 = *(a1 + 27);
    if (v25 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288131900[v25])(&v35, a1 + 13);
  }

  v26 = a1[5];
  if (v26)
  {
    a1[6] = v26;
    v27 = -1431655765 * ((a1[7] - v26) >> 2);
    v33 = v26;
    v34 = v27;
    v28 = *(a1 + 17);
    if (v28 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288131900[v28])(&v35, a1 + 8);
  }

  v29 = *a1;
  if (*a1)
  {
    a1[1] = v29;
    v30 = -1431655765 * ((a1[2] - v29) >> 2);
    v33 = v29;
    v34 = v30;
    v31 = *(a1 + 7);
    if (v31 == -1)
    {
      sub_2711308D4();
    }

    v35 = &v33;
    (off_288131900[v31])(&v35, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AE8DC(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_2881318C0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AE96C(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 3;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_2881318D0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AE9F0(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 3;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_2881318E0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AEA74(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = *(a1 + 4) - v2;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_2881318F0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AEAF4(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = -1431655765 * ((a1[2] - v2) >> 2);
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_288131900[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t *sub_2713AEB84(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    v3 = (a1[2] - v2) >> 2;
    v6 = v2;
    v7 = v3;
    v4 = *(a1 + 7);
    if (v4 == -1)
    {
      sub_2711308D4();
    }

    v8 = &v6;
    (off_2881318B0[v4])(&v8, a1 + 3);
  }

  return a1;
}

uint64_t sub_2713AEC14(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

uint64_t sub_2713AEC9C(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

uint64_t sub_2713AED20(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 8 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

uint64_t sub_2713AEDA4(void **a1)
{
  result = MEMORY[0x2743BF730](*MEMORY[0x277D85F48], **a1, 12 * *(*a1 + 2));
  if (result)
  {
    sub_271852190("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_VisualLogger/library/Kit/Memory/include/Kit/Memory/VMAllocator.hpp", 110, "", 0, "Illegal or non-allocated address specified.", 0x2BuLL, sub_271852CA8);
    abort();
  }

  return result;
}

void sub_2713AEE20(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 168) == 1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      v4 = *(a2 + 152);
      v5 = *(a2 + 144);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = *(a2 + 144);
      }

      *(a2 + 152) = v3;
      operator delete(v5);
    }
  }

  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 104) == 1 && *(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v7 = *(a2 + 24);

    operator delete(v7);
  }
}

void sub_2713AEF0C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 168) == 1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      v4 = *(a2 + 152);
      v5 = *(a2 + 144);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = *(a2 + 144);
      }

      *(a2 + 152) = v3;
      operator delete(v5);
    }
  }

  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 104) == 1 && *(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v7 = *(a2 + 24);

    operator delete(v7);
  }
}

void sub_2713AEFF8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 168) == 1)
  {
    v3 = *(a2 + 144);
    if (v3)
    {
      v4 = *(a2 + 152);
      v5 = *(a2 + 144);
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = *(a2 + 144);
      }

      *(a2 + 152) = v3;
      operator delete(v5);
    }
  }

  if (*(a2 + 136) == 1 && *(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 104) == 1 && *(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    v7 = *(a2 + 24);

    operator delete(v7);
  }
}

uint64_t sub_2713AF0E4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_2713AF15C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v2(0, a1 + 8, 0, 0, 0);
  }

  return a1;
}

uint64_t sub_2713AF1A4(uint64_t a1)
{
  *a1 = &unk_288131CA8;
  *(a1 + 8) = &unk_288131D08;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713AF24C(uint64_t a1)
{
  *a1 = &unk_288131CA8;
  *(a1 + 8) = &unk_288131D08;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40B4DE50DDLL);
}

void sub_2713AF308(uint64_t a1)
{
  *(a1 - 8) = &unk_288131CA8;
  *a1 = &unk_288131D08;
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v4, a1 + 8);
  }

  *(a1 + 184) = -1;
}

uint64_t sub_2713AF3AC(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_288131CA8;
  *a1 = &unk_288131D08;
  v3 = *(a1 + 208);
  if (v3)
  {
    *(a1 + 216) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_288131910[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40B4DE50DDLL);
}

uint64_t sub_2713AF468(uint64_t a1)
{
  *a1 = &unk_28810B3E0;
  *(a1 + 8) = &unk_28810B440;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713AF558(uint64_t a1)
{
  *a1 = &unk_28810B3E0;
  *(a1 + 8) = &unk_28810B440;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713AF668(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B3E0;
  *a1 = &unk_28810B440;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713AF754(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B3E0;
  *a1 = &unk_28810B440;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713AF86C(uint64_t a1)
{
  *a1 = &unk_28810B530;
  *(a1 + 8) = &unk_28810B590;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713AF95C(uint64_t a1)
{
  *a1 = &unk_28810B530;
  *(a1 + 8) = &unk_28810B590;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713AFA6C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B530;
  *a1 = &unk_28810B590;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713AFB58(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B530;
  *a1 = &unk_28810B590;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713AFC70(uint64_t a1)
{
  *a1 = &unk_28810B488;
  *(a1 + 8) = &unk_28810B4E8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713AFD60(uint64_t a1)
{
  *a1 = &unk_28810B488;
  *(a1 + 8) = &unk_28810B4E8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713AFE70(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B488;
  *a1 = &unk_28810B4E8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713AFF5C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B488;
  *a1 = &unk_28810B4E8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713B0074(uint64_t a1)
{
  *a1 = &unk_28810BC68;
  *(a1 + 8) = &unk_28810BCC8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713B0164(uint64_t a1)
{
  *a1 = &unk_28810BC68;
  *(a1 + 8) = &unk_28810BCC8;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713B0274(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BC68;
  *a1 = &unk_28810BCC8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713B0360(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BC68;
  *a1 = &unk_28810BCC8;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713B0478(uint64_t a1)
{
  *a1 = &unk_28810BBC0;
  *(a1 + 8) = &unk_28810BC20;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713B0568(uint64_t a1)
{
  *a1 = &unk_28810BBC0;
  *(a1 + 8) = &unk_28810BC20;
  v2 = *(a1 + 224);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713B0678(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BBC0;
  *a1 = &unk_28810BC20;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713B0764(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BBC0;
  *a1 = &unk_28810BC20;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713B087C(uint64_t a1)
{
  *a1 = &unk_28810B680;
  *(a1 + 8) = &unk_28810B6E0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713B0938(uint64_t a1)
{
  *a1 = &unk_28810B680;
  *(a1 + 8) = &unk_28810B6E0;
  v2 = *(a1 + 208);
  if (v2)
  {
    v2(0, a1 + 208, 0, 0, 0);
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40294CF2FDLL);
}

void *sub_2713B0A08(void *result)
{
  v1 = result;
  *(result - 1) = &unk_28810B680;
  *result = &unk_28810B6E0;
  v2 = result[25];
  if (v2)
  {
    result = v2(0, result + 25, 0, 0, 0);
  }

  v3 = *(v1 + 46);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, v1 + 1);
  }

  *(v1 + 46) = -1;
  return result;
}

uint64_t sub_2713B0AC0(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B680;
  *a1 = &unk_28810B6E0;
  v3 = *(a1 + 200);
  if (v3)
  {
    v3(0, a1 + 200, 0, 0, 0);
  }

  v4 = *(a1 + 184);
  if (v4 != -1)
  {
    (off_288131910[v4])(&v6, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40294CF2FDLL);
}

uint64_t sub_2713B0B90(uint64_t a1)
{
  *a1 = &unk_288131D78;
  *(a1 + 8) = &unk_288131DD8;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713B0C80(uint64_t a1)
{
  *a1 = &unk_288131D78;
  *(a1 + 8) = &unk_288131DD8;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713B0D90(uint64_t a1)
{
  *(a1 - 8) = &unk_288131D78;
  *a1 = &unk_288131DD8;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713B0E7C(uint64_t a1)
{
  *(a1 - 8) = &unk_288131D78;
  *a1 = &unk_288131DD8;
  v2 = *(a1 + 200);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713B0F94(uint64_t a1)
{
  *a1 = &unk_28810B5D8;
  *(a1 + 8) = &unk_28810B638;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 192);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v5, a1 + 16);
  }

LABEL_5:
  *(a1 + 192) = -1;
  return a1;
}

void sub_2713B1084(uint64_t a1)
{
  *a1 = &unk_28810B5D8;
  *(a1 + 8) = &unk_28810B638;
  v2 = *(a1 + 216);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 192) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 192);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 16);
  goto LABEL_5;
}

void sub_2713B1194(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B5D8;
  *a1 = &unk_28810B638;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v3 = *(a1 + 184);
  if (v3 != -1)
  {
LABEL_4:
    (off_288131910[v3])(&v4, a1 + 8);
  }

LABEL_5:
  *(a1 + 184) = -1;
}

void sub_2713B1280(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B5D8;
  *a1 = &unk_28810B638;
  v2 = *(a1 + 208);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
LABEL_5:
      *(a1 + 184) = -1;

      JUMPOUT(0x2743BF050);
    }
  }

  else
  {
    v3 = *(a1 + 184);
    if (v3 == -1)
    {
      goto LABEL_5;
    }
  }

  (off_288131910[v3])(&v4, a1 + 8);
  goto LABEL_5;
}

uint64_t sub_2713B1398(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
    if ((*(a1 + 87) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 32));
      if ((*(a1 + 23) & 0x80000000) == 0)
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
  if (*(a1 + 55) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_9:
  operator delete(*a1);
  return a1;
}

void sub_2713B1428(uint64_t a1)
{
  sub_2713A8BA0(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713B1468(uint64_t a1)
{
  sub_2713A8BA0(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713B14A4(uint64_t result)
{
  if (*(result + 176) == 1 && *(result + 175) < 0)
  {
    v1 = result;
    operator delete(*(result + 152));
    result = v1;
    if (*(v1 + 144) != 1)
    {
      return result;
    }
  }

  else if (*(result + 144) != 1)
  {
    return result;
  }

  if (*(result + 143) < 0)
  {
    v2 = result;
    operator delete(*(result + 120));
    return v2;
  }

  return result;
}

uint64_t sub_2713B152C(uint64_t a1)
{
  *a1 = &unk_28810BB18;
  *(a1 + 8) = &unk_28810BB78;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

void sub_2713B160C(uint64_t a1)
{
  *a1 = &unk_28810BB18;
  *(a1 + 8) = &unk_28810BB78;
  if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
    if (*(a1 + 344) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 344) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

LABEL_7:
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 16);
  }

  *(a1 + 192) = -1;

  JUMPOUT(0x2743BF050);
}

void sub_2713B170C(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BB18;
  *a1 = &unk_28810BB78;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;
}

void sub_2713B17E8(uint64_t a1)
{
  *(a1 - 8) = &unk_28810BB18;
  *a1 = &unk_28810BB78;
  if (*(a1 + 368) == 1 && *(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if (*(a1 + 336) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 336) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

LABEL_7:
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713B18E8(uint64_t a1)
{
  *a1 = &unk_28810B878;
  *(a1 + 8) = &unk_28810B8D8;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713B1980(uint64_t a1)
{
  *a1 = &unk_28810B878;
  *(a1 + 8) = &unk_28810B8D8;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40CF772451);
}

uint64_t sub_2713B1A2C(uint64_t result)
{
  v1 = result;
  *(result - 8) = &unk_28810B878;
  *result = &unk_28810B8D8;
  v2 = *(result + 184);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 8);
  }

  *(v1 + 184) = -1;
  return result;
}

uint64_t sub_2713B1AC0(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B878;
  *a1 = &unk_28810B8D8;
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40CF772451);
}

uint64_t sub_2713B1B6C(uint64_t a1)
{
  *a1 = &unk_28810B728;
  *(a1 + 8) = &unk_28810B788;
  sub_2713B1E08(a1 + 200);
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713B1C0C(uint64_t a1)
{
  *a1 = &unk_28810B728;
  *(a1 + 8) = &unk_28810B788;
  sub_2713B1E08(a1 + 200);
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40DC57CB27);
}

uint64_t sub_2713B1CC0(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B728;
  *a1 = &unk_28810B788;
  result = sub_2713B1E08(a1 + 192);
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    result = (off_288131910[v3])(&v4, a1 + 8);
  }

  *(a1 + 184) = -1;
  return result;
}

uint64_t sub_2713B1D58(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B728;
  *a1 = &unk_28810B788;
  sub_2713B1E08(a1 + 192);
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40DC57CB27);
}

uint64_t sub_2713B1E08(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 143) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 120));
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_15;
  }

LABEL_13:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_15:
  operator delete(*a1);
  return a1;
}

uint64_t sub_2713B1EDC(uint64_t a1)
{
  *a1 = &unk_28810B9C8;
  *(a1 + 8) = &unk_28810BA28;
  sub_271167834(a1 + 200, *(a1 + 208));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713B1F80(uint64_t a1)
{
  *a1 = &unk_28810B9C8;
  *(a1 + 8) = &unk_28810BA28;
  sub_271167834(a1 + 200, *(a1 + 208));
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40546963AFLL);
}

void sub_2713B2038(uint64_t a1)
{
  *(a1 - 8) = &unk_28810B9C8;
  *a1 = &unk_28810BA28;
  sub_271167834(a1 + 192, *(a1 + 200));
  v2 = *(a1 + 184);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v3, a1 + 8);
  }

  *(a1 + 184) = -1;
}

uint64_t sub_2713B20D8(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B9C8;
  *a1 = &unk_28810BA28;
  sub_271167834(a1 + 192, *(a1 + 200));
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40546963AFLL);
}

uint64_t sub_2713B2190(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 8);
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    *(a1 + 8) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_2713B2224(uint64_t a1)
{
  sub_2713A98B0(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2713B2264(uint64_t a1)
{
  sub_2713A98B0(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713B22A0(uint64_t a1)
{
  *a1 = &unk_28810B920;
  *(a1 + 8) = &unk_28810B980;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return a1;
}

uint64_t sub_2713B2338(uint64_t a1)
{
  *a1 = &unk_28810B920;
  *(a1 + 8) = &unk_28810B980;
  v2 = *(a1 + 192);
  if (v2 != -1)
  {
    (off_288131910[v2])(&v4, a1 + 16);
  }

  *(a1 + 192) = -1;
  return MEMORY[0x2743BF050](a1, 0x10B3C40956CF698);
}

uint64_t sub_2713B23E4(uint64_t result)
{
  v1 = result;
  *(result - 8) = &unk_28810B920;
  *result = &unk_28810B980;
  v2 = *(result + 184);
  if (v2 != -1)
  {
    result = (off_288131910[v2])(&v3, result + 8);
  }

  *(v1 + 184) = -1;
  return result;
}

uint64_t sub_2713B2478(uint64_t a1)
{
  v2 = a1 - 8;
  *(a1 - 8) = &unk_28810B920;
  *a1 = &unk_28810B980;
  v3 = *(a1 + 184);
  if (v3 != -1)
  {
    (off_288131910[v3])(&v5, a1 + 8);
  }

  *(a1 + 184) = -1;
  return MEMORY[0x2743BF050](v2, 0x10B3C40956CF698);
}

uint64_t sub_2713B2524(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    if (*(a2 + 39) < 0)
    {
      sub_271127178((a1 + 24), a2[2], a2[3]);
    }

    else
    {
      v6 = *(a2 + 1);
      *(a1 + 40) = a2[4];
      *(a1 + 24) = v6;
    }

    *(a1 + 48) = 1;
  }

  if (*(a2 + 64) == 1)
  {
    v7 = *(a2 + 56);
    *(a1 + 56) = a2[6];
    *(a1 + 64) = v7;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    *(a1 + 56) = 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = v8;
  *(a1 + 104) = 0;
  if (*(a2 + 96) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      sub_271127178((a1 + 80), a2[9], a2[10]);
    }

    else
    {
      v9 = *(a2 + 9);
      *(a1 + 96) = a2[11];
      *(a1 + 80) = v9;
    }

    *(a1 + 104) = 1;
  }

  if (*(a2 + 160) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178(&v12, a2[14], a2[15]);
    }

    else
    {
      v12 = *(a2 + 7);
      v13 = a2[16];
    }

    *(a1 + 112) = v12;
    *(a1 + 128) = v13;
    *(a1 + 136) = 1;
    if ((a2[25] & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(a1 + 112) = 0;
    *(a1 + 136) = 0;
    if ((a2[25] & 1) == 0)
    {
LABEL_21:
      v10 = 0;
      *(a1 + 144) = 0;
      goto LABEL_22;
    }
  }

  sub_2713B2738(a2 + 22, &v12);
  *(a1 + 144) = v12;
  *(a1 + 160) = v13;
  v10 = 1;
LABEL_22:
  *(a1 + 168) = v10;
  return a1;
}

void sub_2713B26C0(_Unwind_Exception *exception_object)
{
  if (v1[104] == 1 && v1[103] < 0)
  {
    operator delete(*v3);
  }

  if (v1[48] == 1 && v1[47] < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_2713B2738@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a1;
  v8 = 0;
  v7 = 0uLL;
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

  sub_2713B2824(v5, v4, &v7);
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

uint64_t sub_2713B2824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_27139DEA8();
  }

  return a3;
}

void sub_2713B2914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B2930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B2944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B2958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2713B296C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_2713B29CC(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v3, a2);
  sub_2713B2AFC(a1, v3);
}

void sub_2713B2AE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713B2AFC(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "auto_timestamp";
    *(a1 + 80) = 14;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_27182791C(a1 + 48, (a1 + 40));
  v5 = sub_2718289B0(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v6 = *(a1 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v13 = 2;
    v10 = sub_2718289B0(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v13;
    v13 = v12;
    sub_2715CC40C(&v13, v11);
  }

  sub_2713B337C(a1, (a2 + 8));
}

uint64_t sub_2713B3058(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 8) = v4;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      sub_271127178((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v5;
    }

    *(a1 + 48) = 1;
  }

  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  *(a1 + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    if (*(a2 + 103) < 0)
    {
      sub_271127178((a1 + 80), *(a2 + 80), *(a2 + 88));
    }

    else
    {
      v8 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 80) = v8;
    }

    *(a1 + 104) = 1;
  }

  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    if (*(a2 + 135) < 0)
    {
      sub_271127178((a1 + 112), *(a2 + 112), *(a2 + 120));
    }

    else
    {
      v9 = *(a2 + 112);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 112) = v9;
    }

    *(a1 + 136) = 1;
  }

  *(a1 + 144) = 0;
  *(a1 + 168) = 0;
  if (*(a2 + 168) == 1)
  {
    sub_2713B3234((a1 + 144), (a2 + 144));
    *(a1 + 168) = 1;
  }

  return a1;
}

void sub_2713B31AC(_Unwind_Exception *exception_object)
{
  if (v2[136] == 1 && v2[135] < 0)
  {
    operator delete(*v4);
  }

  if (v2[104] == 1 && v2[103] < 0)
  {
    operator delete(*v3);
  }

  if (v2[48] == 1 && v2[47] < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2713B3234(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_271135560();
  }

  return result;
}

void sub_2713B335C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_2713B296C(&a11);
  *(v11 + 8) = v12;
  sub_2713540AC(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B337C(uint64_t a1, uint64_t **a2)
{
  v3 = *(a1 + 40);
  if (*v3 > 1u)
  {
    v6 = (a1 + 88);
    v4 = a1 + 72;
    v7 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v4 == *"version" && *(*v4 + 3) == *"sion")
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 72) = "ns";
    v4 = a1 + 72;
    v6 = (a1 + 88);
    v5 = *(a1 + 88);
    *(a1 + 80) = 2;
    v7 = (a1 + 80);
    if ((v5 & 1) == 0)
    {
      *v6 = 1;
    }
  }

  v13 = *a2;
  v9 = sub_2718289B0(a1);
  v10 = *v9;
  *v9 = 5;
  v11 = v9[1];
  v9[1] = v13;
  v13 = v11;
  sub_2715CC40C(&v13, v10);
  v3 = *(a1 + 40);
LABEL_11:
  if (*v3 <= 1u)
  {
    v12 = *v6;
    *v4 = "clock_type";
    *v7 = 10;
    if ((v12 & 1) == 0)
    {
      *v6 = 1;
    }
  }

  v14 = 0;
  sub_2713B35AC();
}

void sub_2713B3568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B3584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B3598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B37D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B3814(int *a1, uint64_t a2, __int128 *a3)
{
  sub_27182791C(a2 + 48, (a2 + 40));
  v6 = sub_2718289B0(a2);
  *(a2 + 40) = v6;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a2 + 80);
    v9 = a2 + 72;
  }

  else
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    v7 = (a2 + 80);
    *(a2 + 88) = 1;
    v9 = a2 + 72;
    v8 = *(a2 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v13 = *a1;
      if (*a1 >= 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v32 = 6;
  v33 = 2;
  v16 = sub_2718289B0(a2);
  v17 = *v16;
  *v16 = 6;
  v32 = v17;
  v18 = v16[1];
  v16[1] = v33;
  v33 = v18;
  sub_2715CC40C(&v33, v17);
  v13 = *a1;
  if (*a1 >= 1)
  {
LABEL_15:
    v14 = *(a2 + 40);
    v19 = *(a2 + 88);
    if (v13 == 2)
    {
      if (*v14 > 1u)
      {
        if ((*(a2 + 88) & 1) != 0 && *v7 == 7 && **v9 == *"version" && *(*v9 + 3) == *"sion")
        {
          v19 = 0;
          *(a2 + 96) = 2;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
          v31 = *a3;
          if (*v14 <= 1u)
          {
LABEL_34:
            *v9 = "ns";
            *v7 = 2;
            if ((v19 & 1) == 0)
            {
              *(a2 + 88) = 1;
            }

            goto LABEL_42;
          }

LABEL_37:
          if ((v19 & (*v7 == 7)) != 1)
          {
            goto LABEL_42;
          }

          if (**v9 != *"version" || *(*v9 + 3) != *"sion")
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }

      else
      {
        *v9 = "min_version";
        *v7 = 11;
        if ((v19 & 1) == 0)
        {
          *(a2 + 88) = 1;
        }
      }

      v32 = 6;
      v33 = 2;
      v22 = sub_2718289B0(a2);
      v23 = *v22;
      *v22 = 6;
      v32 = v23;
      v24 = v22[1];
      v22[1] = v33;
      v33 = v24;
      sub_2715CC40C(&v33, v23);
      v14 = *(a2 + 40);
      v19 = *(a2 + 88);
    }

    v31 = *a3;
    if (*v14 <= 1u)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_10:
  v31 = *a3;
  v14 = *(a2 + 40);
  v15 = *(a2 + 88);
  if (*v14 <= 1u)
  {
    *v9 = "ns";
    *v7 = 2;
    if ((v15 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }

    goto LABEL_42;
  }

  if ((*(a2 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v20 = *(*v9 + 3) == *"sion") : (v20 = 0), !v20))
  {
LABEL_42:
    v32 = 5;
    v33 = v31;
    v26 = sub_2718289B0(a2);
    v27 = *v26;
    *v26 = 5;
    v32 = v27;
    v28 = v26[1];
    v26[1] = v33;
    v33 = v28;
    sub_2715CC40C(&v33, v27);
    v14 = *(a2 + 40);
  }

LABEL_43:
  if (*v14 <= 1u)
  {
    v29 = *(a2 + 88);
    *(a2 + 72) = "clock_type";
    *(a2 + 80) = 10;
    if ((v29 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2713B3C30(a2, &v31 + 8);
  v30 = *(a2 + 56);
  *(a2 + 40) = *(v30 - 8);
  *(a2 + 56) = v30 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_2713B3C30(uint64_t a1, unsigned __int8 *a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    v11 = 0;
    sub_2713B35AC();
  }

  v2 = *(a1 + 88) == 1 && *(a1 + 80) == 7;
  if (!v2 || ((v3 = *(a1 + 72), v4 = *v3, v5 = *(v3 + 3), v4 == *"version") ? (v6 = v5 == *"sion") : (v6 = 0), !v6))
  {
    v10 = *a2;
    v7 = sub_2718289B0(a1);
    v8 = *v7;
    *v7 = 6;
    v9 = v7[1];
    v7[1] = v10;
    v10 = v9;
    sub_2715CC40C(&v10, v8);
  }
}

void sub_2713B3DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B3DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B3DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B3DE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const std::string::value_type *a4@<X4>, std::string::size_type a5@<X5>, std::string *a6@<X8>)
{
  v12 = 0x5555555555555555 * ((a1 - a3) >> 3);
  v28 = *MEMORY[0x277D85DE8];
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0x5555555555555555 * ((a1 - a3) >> 3);
  }

  *&v27 = a1;
  *(&v27 + 1) = a2;
  v24 = a1 - a3;
  v14 = 0;
  if (a1 != a3)
  {
    do
    {
      sub_2713B4060(&v27, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v14 += size;
      *&v27 = v27 + 24;
    }

    while (v27 != a3);
  }

  v15 = v14 + (v13 - 1) * a5;
  a6->__r_.__value_.__r.__words[0] = 0;
  a6->__r_.__value_.__l.__size_ = 0;
  a6->__r_.__value_.__r.__words[2] = 0;
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v15 >= 0x17)
  {
    v16 = v15 | 7;
    if (v16 == 23)
    {
      v17 = 24;
    }

    else
    {
      v17 = v16;
    }

    sub_27113107C(a6, v17);
  }

  *&v27 = a1;
  *(&v27 + 1) = a2;
  if (v24 < 0)
  {
    sub_2713B4060(&v27, &__p);
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
      v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a6, p_p, v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v12 < 2)
      {
        goto LABEL_39;
      }
    }

    else if (v12 < 2)
    {
      goto LABEL_39;
    }

    *&v27 = v27 + 24;
    for (i = v27; i != a3; *&i = i + 24)
    {
      std::string::append(a6, a4, a5);
      sub_2713B4060(&i, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &__p;
      }

      else
      {
        v21 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a6, v21, v22);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_39:
  v23 = *MEMORY[0x277D85DE8];
}

void sub_2713B4010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B4060(unsigned __int8 **a1@<X0>, std::string *a2@<X8>)
{
  v3 = *a1;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v4 = v3[23];
  v5 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(v3 + 1);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }
  }

  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 24;
    }

    else
    {
      v6 = v5 | 7;
    }

    sub_27113107C(a2, v6);
    LOBYTE(v4) = v3[23];
  }

  v7 = *(v3 + 1);
  if ((v4 & 0x80u) == 0)
  {
    v8 = v4;
  }

  else
  {
    v3 = *v3;
    v8 = v7;
  }

  if (v8)
  {
    while (1)
    {
      v9 = *v3;
      if (v9 == 59)
      {
        break;
      }

      if (v9 == 92)
      {
        v10 = "\\\";
LABEL_19:
        std::string::append(a2, v10, 2uLL);
        goto LABEL_14;
      }

      std::string::push_back(a2, v9);
LABEL_14:
      ++v3;
      if (!--v8)
      {
        return;
      }
    }

    v10 = "\\;";
    goto LABEL_19;
  }
}

void sub_2713B415C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B417C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_27182791C(a1 + 48, v3);
  v6 = sub_2718289B0(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    LOBYTE(v19) = 6;
    v20 = 2;
    v11 = sub_2718289B0(a1);
    v12 = *v11;
    *v11 = 6;
    LOBYTE(v19) = v12;
    v13 = v11[1];
    v11[1] = v20;
    v20 = v13;
    sub_2715CC40C(&v20, v12);
  }

  *&v16[12] = *(v5 + 12);
  *v16 = *v5;
  v17 = 0;
  v18 = -1;
  v14 = *(v5 + 96);
  if (v14 != -1)
  {
    v19 = &v17;
    (off_288131970[v14])(&v19, v5 + 32);
    v18 = v14;
  }

  if (**v3 <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "io_format";
    *(a1 + 80) = 9;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v21 = 0;
  sub_2713B4A74();
}

void sub_2713B485C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_271229D10(&a24);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B4878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CC40C((v9 + 8), 6);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B48D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 97) < 0)
  {
    operator delete(*(v9 - 120));
    sub_2713A32D8(&a9);
    _Unwind_Resume(a1);
  }

  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B4934(void *a1, uint64_t a2)
{
  v2 = *a1;
  **a1 = &unk_28810E7B8;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *(a2 + 40);
    v6 = *(a2 + 48);
    v7 = *(a2 + 52);
  }

  v2[1] = v3;
  v2[2] = v4;
  v8 = *(a2 + 24);
  *(v2 + 8) = *(a2 + 32);
  v2[3] = v8;
  v2[5] = v5;
  *(v2 + 12) = v6;
  *(v2 + 26) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

__n128 sub_2713B4A20(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a2 + 8);
  v3 = *(a2 + 16);
  *v2 = &unk_28810F9B8;
  *(v2 + 8) = v4;
  *(v2 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 24);
  v6 = *(a2 + 40);
  *(v2 + 54) = *(a2 + 54);
  *(v2 + 40) = v6;
  *(v2 + 24) = result;
  return result;
}

void sub_2713B4C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B4ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B4F1C(_DWORD *a1, void *a2, int a3)
{
  sub_2715E8E40(a1, a2, a3, v15);
  if (v15[120] != 1)
  {
    v17[0] = "save";
    v17[1] = 4;
    v16 = a3;
    sub_2715E8C50("Failure during ", v17, " from stream with file format ");
  }

  v14 = 1;
  sub_2713B52B4(&v4);
  if ((v14 & 1) == 0 && v13 == 1)
  {
    if (v12 == 1)
    {
      if (SHIBYTE(v11) < 0)
      {
        operator delete(v10[0]);
      }

      if (v9 < 0)
      {
        operator delete(v8);
      }
    }

    if (v7 == 1 && v6 < 0)
    {
      operator delete(v5);
    }
  }
}

void sub_2713B524C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48)
{
  sub_27112D66C(&a48);
  sub_27112D71C(&a31);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_27112E024(v48 - 168);
  _Unwind_Resume(a1);
}

uint64_t sub_2713B52B4(uint64_t a1)
{
  if ((*(a1 + 120) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v4 = sub_271389D20(a1);
    sub_271847E00(v4, &v5);
    std::runtime_error::runtime_error(exception, &v5);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return sub_2713B5388(a1);
}

void sub_2713B5350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_2713B5388(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_27112F660(v3, v1);
    sub_271130228(exception, v3);
    __cxa_throw(exception, &unk_28811C2F0, sub_271130150);
  }

  return result;
}

void sub_2713B5400(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  _Unwind_Resume(a1);
}

void sub_2713B5414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27112D71C(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2713B5444(uint64_t a1)
{
  *a1 = MEMORY[0x277D82878] + 16;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_2713B54B8(uint64_t a1)
{
  v2 = *(a1 + 104);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 56);
    if (v4 < v5)
    {
      *(a1 + 96) = v5;
      v4 = v5;
    }

    v6 = *(a1 + 48);
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v19 = 0;
      goto LABEL_12;
    }

    v6 = *(a1 + 24);
    v3 = *(a1 + 40) - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v19 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v19;
  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = *a1;
  if (*(*a1 + 88) != 1 || *(v9 + 80) != 7 || ((v10 = *(v9 + 72), v11 = *v10, v12 = *(v10 + 3), v11 == *"version") ? (v13 = v12 == *"sion") : (v13 = 0), !v13))
  {
    LOBYTE(v20) = 6;
    v21 = v8;
    v14 = sub_2718289B0(v9);
    v15 = *v14;
    *v14 = 6;
    LOBYTE(v20) = v15;
    v16 = v14[1];
    v14[1] = v21;
    v21 = v16;
    sub_2715CC40C(&v21, v15);
    v9 = *a1;
  }

  v17 = __dst[0];
  if (v7 >= 0)
  {
    v17 = __dst;
  }

  v20 = v17;
  v21 = v8;
  sub_271828DE4(v9, &v20);
}

void sub_2713B5730(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v10, a2);
  sub_2713B5860(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2713B5848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2713B5860(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v47[0] = (v6 + 16);
    sub_2718460EC(v47, 2u);
    sub_271840ADC(*(a1 + 24));
    v7 = *(a1 + 24);
    if (*(v7 + 40) != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v47[0] = (v7 + 16);
    sub_271846460(v47, *(a2 + 8));
    v8 = *(a2 + 16);
    v48 = *(a2 + 16);
    v9 = *(a1 + 24);
    if (*(v9 + 40) != 1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v47[0] = (v9 + 16);
    sub_2718454CC(v47, &v48);
    goto LABEL_11;
  }

  sub_27184636C(v47, (v6 + 8));
  sub_271840ADC(*(a1 + 24));
  v7 = *(a1 + 24);
  if (*(v7 + 40) == 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_2718469A8((v7 + 8), *(a2 + 8));
  v8 = *(a2 + 16);
  v48 = *(a2 + 16);
  v9 = *(a1 + 24);
  if (*(v9 + 40) == 1)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v8 < 0)
  {
    LOBYTE(v47[0]) = -52;
    BYTE1(v47[0]) = v8;
  }

  else
  {
    LOBYTE(v47[0]) = v8;
  }

  v10 = *(v9 + 8);
  std::ostream::write();
LABEL_11:
  v11 = *(a1 + 24);
  v12 = *(v11[11] - 8);
  sub_2718404E0(v11 + 6, v11[2] - v12 - 9);
  v13 = v11[6];
  if (v13)
  {
    memmove((v11[3] + v12), v11[7], v13);
  }

  v11[6] = 0;
  v14 = v11[10];
  v15 = v11[11] - 8;
  v11[11] = v15;
  if (v14 == v15)
  {
    v16 = *v11;
    v18 = v11[2];
    v17 = v11[3];
    std::ostream::write();
    if (*(v11 + 40) == 1)
    {
      free(v11[3]);
      *(v11 + 40) = 0;
    }
  }

  if (*(a2 + 48) == 1)
  {
    v48 = 1;
    v19 = *(a1 + 24);
    if (*(v19 + 40) == 1)
    {
      v47[0] = (v19 + 16);
      sub_2718454CC(v47, &v48);
      v20 = *(a1 + 24);
      if (*(v20 + 40) != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v47[0]) = 1;
      v23 = *(v19 + 8);
      std::ostream::write();
      v20 = *(a1 + 24);
      if (*(v20 + 40) != 1)
      {
LABEL_19:
        result = sub_271847654((v20 + 8), (a2 + 24));
        if (a3 < 4)
        {
          return result;
        }

        goto LABEL_28;
      }
    }

    v47[0] = (v20 + 16);
    result = sub_271847238(v47, (a2 + 24));
    if (a3 < 4)
    {
      return result;
    }
  }

  else
  {
    v48 = 0;
    v22 = *(a1 + 24);
    if (*(v22 + 40) == 1)
    {
      v47[0] = (v22 + 16);
      result = sub_2718454CC(v47, &v48);
      if (a3 < 4)
      {
        return result;
      }
    }

    else
    {
      LOBYTE(v47[0]) = 0;
      v24 = *(v22 + 8);
      result = std::ostream::write();
      if (a3 < 4)
      {
        return result;
      }
    }
  }

LABEL_28:
  v47[0] = "custom_timestamp";
  v47[1] = 16;
  v47[2] = (a2 + 56);
  result = sub_2713B5F50(a1, v47);
  if (a3 != 5)
  {
    if (a3 < 6)
    {
      return result;
    }

    if (*(a2 + 104) != 1)
    {
      v48 = 0;
      v30 = *(a1 + 24);
      if (*(v30 + 40) == 1)
      {
        v47[0] = (v30 + 16);
        sub_2718454CC(v47, &v48);
        if (*(a2 + 136) == 1)
        {
LABEL_50:
          v48 = 1;
          v34 = *(a1 + 24);
          if (*(v34 + 40) == 1)
          {
            v47[0] = (v34 + 16);
            sub_2718454CC(v47, &v48);
            v35 = *(a1 + 24);
            if (*(v35 + 40) != 1)
            {
              goto LABEL_52;
            }
          }

          else
          {
            LOBYTE(v47[0]) = 1;
            v39 = *(v34 + 8);
            std::ostream::write();
            v35 = *(a1 + 24);
            if (*(v35 + 40) != 1)
            {
LABEL_52:
              sub_271847654((v35 + 8), (a2 + 112));
              if (*(a2 + 168) == 1)
              {
LABEL_60:
                v48 = 1;
                v40 = *(a1 + 24);
                if (*(v40 + 40) == 1)
                {
                  v47[0] = (v40 + 16);
                  sub_2718454CC(v47, &v48);
                }

                else
                {
                  LOBYTE(v47[0]) = 1;
                  v41 = *(v40 + 8);
                  std::ostream::write();
                }

                v42 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
                v43 = *(a1 + 24);
                if (*(v43 + 40) == 1)
                {
                  v47[0] = (v43 + 16);
                  result = sub_271846AEC(v47, v42);
                  v45 = *(a2 + 144);
                  v44 = *(a2 + 152);
                  v46 = *(a1 + 24);
                  if (*(v46 + 40) != 1)
                  {
                    goto LABEL_65;
                  }
                }

                else
                {
                  result = sub_271846E00((v43 + 8));
                  v45 = *(a2 + 144);
                  v44 = *(a2 + 152);
                  v46 = *(a1 + 24);
                  if (*(v46 + 40) != 1)
                  {
LABEL_65:
                    while (v45 != v44)
                    {
                      result = sub_271847654((v46 + 8), v45);
                      v45 += 3;
                    }

                    return result;
                  }
                }

                for (v47[0] = (v46 + 16); v45 != v44; v45 += 3)
                {
                  result = sub_271847238(v47, v45);
                }

                return result;
              }

LABEL_55:
              v48 = 0;
              v37 = *(a1 + 24);
              if (*(v37 + 40) == 1)
              {
                v47[0] = (v37 + 16);
                return sub_2718454CC(v47, &v48);
              }

              else
              {
                LOBYTE(v47[0]) = 0;
                v38 = *(v37 + 8);
                return std::ostream::write();
              }
            }
          }

          v47[0] = (v35 + 16);
          sub_271847238(v47, (a2 + 112));
          if (*(a2 + 168) == 1)
          {
            goto LABEL_60;
          }

          goto LABEL_55;
        }
      }

      else
      {
        LOBYTE(v47[0]) = 0;
        v33 = *(v30 + 8);
        std::ostream::write();
        if (*(a2 + 136) == 1)
        {
          goto LABEL_50;
        }
      }

LABEL_46:
      v48 = 0;
      v32 = *(a1 + 24);
      if (*(v32 + 40) == 1)
      {
        v47[0] = (v32 + 16);
        sub_2718454CC(v47, &v48);
        if (*(a2 + 168) == 1)
        {
          goto LABEL_60;
        }
      }

      else
      {
        LOBYTE(v47[0]) = 0;
        v36 = *(v32 + 8);
        std::ostream::write();
        if (*(a2 + 168) == 1)
        {
          goto LABEL_60;
        }
      }

      goto LABEL_55;
    }

    v48 = 1;
    v27 = *(a1 + 24);
    if (*(v27 + 40) == 1)
    {
      v47[0] = (v27 + 16);
      sub_2718454CC(v47, &v48);
      v28 = *(a1 + 24);
      if (*(v28 + 40) != 1)
      {
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v47[0]) = 1;
      v31 = *(v27 + 8);
      std::ostream::write();
      v28 = *(a1 + 24);
      if (*(v28 + 40) != 1)
      {
LABEL_37:
        sub_271847654((v28 + 8), (a2 + 80));
        if (*(a2 + 136) == 1)
        {
          goto LABEL_50;
        }

        goto LABEL_46;
      }
    }

    v47[0] = (v28 + 16);
    sub_271847238(v47, (a2 + 80));
    if (*(a2 + 136) == 1)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  if (*(a2 + 104) != 1)
  {
    goto LABEL_55;
  }

  v48 = 1;
  v25 = *(a1 + 24);
  if (*(v25 + 40) == 1)
  {
    v47[0] = (v25 + 16);
    sub_2718454CC(v47, &v48);
    v26 = *(a1 + 24);
    if (*(v26 + 40) != 1)
    {
      return sub_271847654((v26 + 8), (a2 + 80));
    }
  }

  else
  {
    LOBYTE(v47[0]) = 1;
    v29 = *(v25 + 8);
    std::ostream::write();
    v26 = *(a1 + 24);
    if (*(v26 + 40) != 1)
    {
      return sub_271847654((v26 + 8), (a2 + 80));
    }
  }

  v47[0] = (v26 + 16);
  return sub_271847238(v47, (a2 + 80));
}

uint64_t sub_2713B5F50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (*(v3 + 16) != 1)
  {
    v22 = 0;
    v10 = *(a1 + 24);
    if (*(v10 + 40) != 1)
    {
      LOBYTE(v23) = 0;
      v13 = *(v10 + 8);
      std::ostream::write();
      return a1;
    }

    v23 = (v10 + 16);
    sub_2718454CC(&v23, &v22);
    return a1;
  }

  v22 = 1;
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v23 = (v4 + 16);
    sub_2718454CC(&v23, &v22);
    v5 = *(a1 + 24);
    if (*(v5 + 40) != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    LOBYTE(v23) = 1;
    v12 = *(v4 + 8);
    std::ostream::write();
    v5 = *(a1 + 24);
    if (*(v5 + 40) != 1)
    {
LABEL_4:
      sub_27184636C(&v23, (v5 + 8));
      sub_271840ADC(*(a1 + 24));
      v6 = *(a1 + 24);
      if (*(v6 + 40) != 1)
      {
        goto LABEL_5;
      }

LABEL_13:
      v23 = (v6 + 16);
      sub_271846460(&v23, *v3);
      v7 = *(v3 + 8);
      v22 = *(v3 + 8);
      v8 = *(a1 + 24);
      if (*(v8 + 40) != 1)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  v23 = (v5 + 16);
  sub_2718460EC(&v23, 2u);
  sub_271840ADC(*(a1 + 24));
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2718469A8((v6 + 8), *v3);
  v7 = *(v3 + 8);
  v22 = *(v3 + 8);
  v8 = *(a1 + 24);
  if (*(v8 + 40) != 1)
  {
LABEL_6:
    if (v7 < 0)
    {
      LOBYTE(v23) = -52;
      BYTE1(v23) = v7;
    }

    else
    {
      LOBYTE(v23) = v7;
    }

    v9 = *(v8 + 8);
    std::ostream::write();
    goto LABEL_18;
  }

LABEL_14:
  v23 = (v8 + 16);
  sub_2718454CC(&v23, &v22);
LABEL_18:
  v14 = *(a1 + 24);
  v15 = *(v14[11] - 8);
  sub_2718404E0(v14 + 6, v14[2] - v15 - 9);
  v16 = v14[6];
  if (v16)
  {
    memmove((v14[3] + v15), v14[7], v16);
  }

  v14[6] = 0;
  v17 = v14[10];
  v18 = v14[11] - 8;
  v14[11] = v18;
  if (v17 != v18)
  {
    return a1;
  }

  v19 = *v14;
  v21 = v14[2];
  v20 = v14[3];
  std::ostream::write();
  if (*(v14 + 40) != 1)
  {
    return a1;
  }

  free(v14[3]);
  *(v14 + 40) = 0;
  return a1;
}

void sub_2713B61C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 40) == 1)
  {
    v35 = (v4 + 16);
    sub_2718460EC(&v35, 2u);
  }

  else
  {
    sub_27184636C(&v35, (v4 + 8));
  }

  sub_271840ADC(*(a1 + 24));
  *v32 = *a2;
  *&v32[12] = *(a2 + 12);
  v33[0] = 0;
  v34 = -1;
  v5 = *(a2 + 96);
  if (v5 != -1)
  {
    v35 = v33;
    (off_288131970[v5])(&v35, a2 + 32);
    v34 = v5;
  }

  LOWORD(v48[0]) = *v32;
  v6 = *(a1 + 24);
  if (*(v6 + 40) == 1)
  {
    v35 = (v6 + 16);
    sub_2718459EC(&v35, v48);
  }

  else if (*v32 > 0x7Fu)
  {
    if (*v32 > 0xFFu)
    {
      LOBYTE(v35) = -51;
      *(&v35 + 1) = __rev16(*v32);
    }

    else
    {
      LOBYTE(v35) = -52;
      BYTE1(v35) = v32[0];
    }

    v8 = *(v6 + 8);
    std::ostream::write();
  }

  else
  {
    LOBYTE(v35) = v32[0];
    v7 = *(v6 + 8);
    std::ostream::write();
  }

  v9 = *(a1 + 24);
  if (*(v9 + 40) == 1)
  {
    v35 = (v9 + 16);
    sub_2718460EC(&v35, 2u);
  }

  else
  {
    LOBYTE(v35) = 2;
    v10 = *(v9 + 8);
    std::ostream::write();
  }

  sub_271840ADC(*(a1 + 24));
  v11 = *(a1 + 24);
  if (*(v11 + 40) == 1)
  {
    v35 = (v11 + 16);
    sub_271846AEC(&v35, *&v32[8]);
  }

  else
  {
    sub_271846E00((v11 + 8));
  }

  v12 = *(a1 + 24);
  if (*(v12 + 40) == 1)
  {
    v35 = (v12 + 16);
    sub_2718460EC(&v35, *&v32[16]);
    sub_2718460EC(&v35, *&v32[20]);
  }

  else
  {
    sub_27184636C(&v35, (v12 + 8));
    sub_27184636C(&v35, (v12 + 8));
  }

  v13 = *(a1 + 24);
  v14 = *(v13[11] - 8);
  sub_2718404E0(v13 + 6, v13[2] - v14 - 9);
  v15 = v13[6];
  if (v15)
  {
    memmove((v13[3] + v14), v13[7], v15);
  }

  v13[6] = 0;
  v16 = v13[10];
  v17 = v13[11] - 8;
  v13[11] = v17;
  if (v16 == v17)
  {
    v18 = *v13;
    v20 = v13[2];
    v19 = v13[3];
    std::ostream::write();
    if (*(v13 + 40) == 1)
    {
      free(v13[3]);
      *(v13 + 40) = 0;
    }
  }

  if (*v32 == 1)
  {
    sub_2715F5084(v32, &v35);
    sub_2715F78FC(a1, &v35);
    v21 = v37;
    if (!v37)
    {
LABEL_33:
      v23 = v34;
      if (v34 == -1)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v22 = sub_2715F7478(*v32);
    sub_2715F5084(v32, v48);
    v35 = a1;
    v36 = MEMORY[0x277D82868] + 16;
    MEMORY[0x2743BED80](&v37);
    v40 = 0u;
    v39 = 0u;
    v38 = 0u;
    v36 = MEMORY[0x277D82878] + 16;
    v41 = 0u;
    v42 = 0u;
    v43 = 24;
    sub_271129318(&v36);
    v45.__loc_ = 0;
    v44 = MEMORY[0x277D82850] + 24;
    v45.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v45, &v36);
    v46 = 0;
    v47 = -1;
    sub_2713B4F1C(v48, &v44, v22);
    sub_2713B6738(&v35);
    v21 = v49;
    if (!v49)
    {
      goto LABEL_33;
    }
  }

  if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_33;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  v23 = v34;
  if (v34 != -1)
  {
LABEL_34:
    (off_2881318A0[v23])(&v35, v33);
  }

LABEL_35:
  v24 = *(a1 + 24);
  v25 = *(v24[11] - 8);
  sub_2718404E0(v24 + 6, v24[2] - v25 - 9);
  v26 = v24[6];
  if (v26)
  {
    memmove((v24[3] + v25), v24[7], v26);
  }

  v24[6] = 0;
  v27 = v24[10];
  v28 = v24[11] - 8;
  v24[11] = v28;
  if (v27 == v28)
  {
    v29 = *v24;
    v31 = v24[2];
    v30 = v24[3];
    std::ostream::write();
    if (*(v24 + 40) == 1)
    {
      free(v24[3]);
      *(v24 + 40) = 0;
    }
  }
}

void sub_2713B6690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_2713B6738(&a22);
  sub_271229D10(v36 - 120);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B66F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_271229D10(&a22);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2713B6738(uint64_t *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v15 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_29:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v15 = v3;
  if (v3)
  {
    memmove(__p, v6, v3);
  }

LABEL_12:
  *(__p + v3) = 0;
  v7 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v8 = v15;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = *(*a1 + 24);
  if (*(v9 + 40) == 1)
  {
    v18[0] = (v9 + 16);
    sub_271846AEC(v18, v8);
  }

  else
  {
    sub_271846E00((v9 + 8));
  }

  v10 = __p[0];
  if (v7 >= 0)
  {
    v10 = __p;
  }

  v11 = *a1;
  v16[0] = v10;
  v16[1] = v8;
  v12 = *(v11 + 24);
  if (*(v12 + 40) == 1)
  {
    v17 = (v12 + 16);
    LODWORD(v18[0]) = v8;
    v18[1] = v10;
    sub_27184500C(&v17, v18);
  }

  else
  {
    sub_2718452C0((v12 + 8), v16);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
    std::ostream::~ostream();
    a1[1] = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_27:
    operator delete(a1[9]);
    goto LABEL_25;
  }

  std::ostream::~ostream();
  a1[1] = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_27;
  }

LABEL_25:
  a1[1] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(a1 + 2);
  return a1;
}

void sub_2713B6988(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v3, a2);
  sub_2713B6AB8(a1, v3);
}

void sub_2713B6AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713B6AB8(uint64_t a1, uint64_t a2)
{
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = "auto_timestamp";
    *(a1 + 80) = 14;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  sub_2715DF0F0(a1 + 48, (a1 + 40));
  v5 = sub_27182815C(a1);
  *(a1 + 40) = v5;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v5 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v6 = *(a1 + 72), v7 = *v6, v8 = *(v6 + 3), v7 == *"version") ? (v9 = v8 == *"sion") : (v9 = 0), v9))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    v13 = 2;
    v10 = sub_27182815C(a1);
    v11 = *v10;
    *v10 = 6;
    v12 = v10[1];
    v10[1] = v13;
    v13 = v12;
    sub_2715CA870(&v13, v11);
  }

  sub_2713B7014(a1, (a2 + 8));
}

void sub_2713B7014(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  if (*v3 > 1u)
  {
    v6 = (a1 + 88);
    v4 = a1 + 72;
    v7 = (a1 + 80);
    if ((*(a1 + 88) & 1) != 0 && *(a1 + 80) == 7 && **v4 == *"version" && *(*v4 + 3) == *"sion")
    {
      goto LABEL_11;
    }
  }

  else
  {
    *(a1 + 72) = "ns";
    v4 = a1 + 72;
    v6 = (a1 + 88);
    v5 = *(a1 + 88);
    *(a1 + 80) = 2;
    v7 = (a1 + 80);
    if ((v5 & 1) == 0)
    {
      *v6 = 1;
    }
  }

  v13 = *a2;
  v9 = sub_27182815C(a1);
  v10 = *v9;
  *v9 = 5;
  v11 = v9[1];
  v9[1] = v13;
  v13 = v11;
  sub_2715CA870(&v13, v10);
  v3 = *(a1 + 40);
LABEL_11:
  if (*v3 <= 1u)
  {
    v12 = *v6;
    *v4 = "clock_type";
    *v7 = 10;
    if ((v12 & 1) == 0)
    {
      *v6 = 1;
    }
  }

  v14 = 0;
  sub_2713B35AC();
}

void sub_2713B7200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B721C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B7230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B7244(int *a1, uint64_t a2, __int128 *a3)
{
  sub_2715DF0F0(a2 + 48, (a2 + 40));
  v6 = sub_27182815C(a2);
  *(a2 + 40) = v6;
  if (*(a2 + 88))
  {
    *(a2 + 88) = 0;
  }

  if (*v6 >= 2u)
  {
    v7 = (a2 + 80);
    v9 = a2 + 72;
  }

  else
  {
    *(a2 + 72) = "version";
    *(a2 + 80) = 7;
    v7 = (a2 + 80);
    *(a2 + 88) = 1;
    v9 = a2 + 72;
    v8 = *(a2 + 72);
    v10 = *v8;
    v11 = *(v8 + 3);
    if (v10 == *"version" && v11 == *"sion")
    {
      *(a2 + 96) = 2;
      *(a2 + 100) = 1;
      *(a2 + 88) = 0;
      v13 = *a1;
      if (*a1 >= 1)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v32 = 6;
  v33 = 2;
  v16 = sub_27182815C(a2);
  v17 = *v16;
  *v16 = 6;
  v32 = v17;
  v18 = v16[1];
  v16[1] = v33;
  v33 = v18;
  sub_2715CA870(&v33, v17);
  v13 = *a1;
  if (*a1 >= 1)
  {
LABEL_15:
    v14 = *(a2 + 40);
    v19 = *(a2 + 88);
    if (v13 == 2)
    {
      if (*v14 > 1u)
      {
        if ((*(a2 + 88) & 1) != 0 && *v7 == 7 && **v9 == *"version" && *(*v9 + 3) == *"sion")
        {
          v19 = 0;
          *(a2 + 96) = 2;
          *(a2 + 100) = 1;
          *(a2 + 88) = 0;
          v31 = *a3;
          if (*v14 <= 1u)
          {
LABEL_34:
            *v9 = "ns";
            *v7 = 2;
            if ((v19 & 1) == 0)
            {
              *(a2 + 88) = 1;
            }

            goto LABEL_42;
          }

LABEL_37:
          if ((v19 & (*v7 == 7)) != 1)
          {
            goto LABEL_42;
          }

          if (**v9 != *"version" || *(*v9 + 3) != *"sion")
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }

      else
      {
        *v9 = "min_version";
        *v7 = 11;
        if ((v19 & 1) == 0)
        {
          *(a2 + 88) = 1;
        }
      }

      v32 = 6;
      v33 = 2;
      v22 = sub_27182815C(a2);
      v23 = *v22;
      *v22 = 6;
      v32 = v23;
      v24 = v22[1];
      v22[1] = v33;
      v33 = v24;
      sub_2715CA870(&v33, v23);
      v14 = *(a2 + 40);
      v19 = *(a2 + 88);
    }

    v31 = *a3;
    if (*v14 <= 1u)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_10:
  v31 = *a3;
  v14 = *(a2 + 40);
  v15 = *(a2 + 88);
  if (*v14 <= 1u)
  {
    *v9 = "ns";
    *v7 = 2;
    if ((v15 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }

    goto LABEL_42;
  }

  if ((*(a2 + 88) & 1) == 0 || *v7 != 7 || (**v9 == *"version" ? (v20 = *(*v9 + 3) == *"sion") : (v20 = 0), !v20))
  {
LABEL_42:
    v32 = 5;
    v33 = v31;
    v26 = sub_27182815C(a2);
    v27 = *v26;
    *v26 = 5;
    v32 = v27;
    v28 = v26[1];
    v26[1] = v33;
    v33 = v28;
    sub_2715CA870(&v33, v27);
    v14 = *(a2 + 40);
  }

LABEL_43:
  if (*v14 <= 1u)
  {
    v29 = *(a2 + 88);
    *(a2 + 72) = "clock_type";
    *(a2 + 80) = 10;
    if ((v29 & 1) == 0)
    {
      *(a2 + 88) = 1;
    }
  }

  sub_2713B7660(a2, &v31 + 8);
  v30 = *(a2 + 56);
  *(a2 + 40) = *(v30 - 8);
  *(a2 + 56) = v30 - 8;
  if (*(a2 + 88) == 1)
  {
    *(a2 + 88) = 0;
  }
}

void sub_2713B7660(uint64_t a1, unsigned __int8 *a2)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    v11 = 0;
    sub_2713B35AC();
  }

  v2 = *(a1 + 88) == 1 && *(a1 + 80) == 7;
  if (!v2 || ((v3 = *(a1 + 72), v4 = *v3, v5 = *(v3 + 3), v4 == *"version") ? (v6 = v5 == *"sion") : (v6 = 0), !v6))
  {
    v10 = *a2;
    v7 = sub_27182815C(a1);
    v8 = *v7;
    *v7 = 6;
    v9 = v7[1];
    v7[1] = v10;
    v10 = v9;
    sub_2715CA870(&v10, v8);
  }
}

void sub_2713B77D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B77EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B7800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2713B7814(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 40);
  if (**(a1 + 40) <= 1u)
  {
    v4 = *(a1 + 88);
    *(a1 + 72) = *a2;
    if ((v4 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v5 = *(a2 + 16);
  sub_2715DF0F0(a1 + 48, v3);
  v6 = sub_27182815C(a1);
  *(a1 + 40) = v6;
  if (*(a1 + 88))
  {
    *(a1 + 88) = 0;
  }

  if (*v6 < 2u && ((*(a1 + 72) = "version", *(a1 + 80) = 7, *(a1 + 88) = 1, v7 = *(a1 + 72), v8 = *v7, v9 = *(v7 + 3), v8 == *"version") ? (v10 = v9 == *"sion") : (v10 = 0), v10))
  {
    *(a1 + 96) = 2;
    *(a1 + 100) = 1;
    *(a1 + 88) = 0;
  }

  else
  {
    LOBYTE(v19) = 6;
    v20 = 2;
    v11 = sub_27182815C(a1);
    v12 = *v11;
    *v11 = 6;
    LOBYTE(v19) = v12;
    v13 = v11[1];
    v11[1] = v20;
    v20 = v13;
    sub_2715CA870(&v20, v12);
  }

  *&v16[12] = *(v5 + 12);
  *v16 = *v5;
  v17 = 0;
  v18 = -1;
  v14 = *(v5 + 96);
  if (v14 != -1)
  {
    v19 = &v17;
    (off_288131970[v14])(&v19, v5 + 32);
    v18 = v14;
  }

  if (**v3 <= 1u)
  {
    v15 = *(a1 + 88);
    *(a1 + 72) = "io_format";
    *(a1 + 80) = 9;
    if ((v15 & 1) == 0)
    {
      *(a1 + 88) = 1;
    }
  }

  v21 = 0;
  sub_2713B4A74();
}

void sub_2713B7EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_271229D10(&a24);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B7F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2715CA870((v9 + 8), 6);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B7F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 - 97) < 0)
  {
    operator delete(*(v9 - 120));
    sub_2713A32D8(&a9);
    _Unwind_Resume(a1);
  }

  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B7FCC(uint64_t a1)
{
  v2 = *(a1 + 104);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 56);
    if (v4 < v5)
    {
      *(a1 + 96) = v5;
      v4 = v5;
    }

    v6 = *(a1 + 48);
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v19 = 0;
      goto LABEL_12;
    }

    v6 = *(a1 + 24);
    v3 = *(a1 + 40) - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_26:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v19 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v19;
  if ((v19 & 0x80u) == 0)
  {
    v8 = v19;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = *a1;
  if (*(*a1 + 88) != 1 || *(v9 + 80) != 7 || ((v10 = *(v9 + 72), v11 = *v10, v12 = *(v10 + 3), v11 == *"version") ? (v13 = v12 == *"sion") : (v13 = 0), !v13))
  {
    LOBYTE(v20) = 6;
    v21 = v8;
    v14 = sub_27182815C(v9);
    v15 = *v14;
    *v14 = 6;
    LOBYTE(v20) = v15;
    v16 = v14[1];
    v14[1] = v21;
    v21 = v16;
    sub_2715CA870(&v21, v15);
    v9 = *a1;
  }

  v17 = __dst[0];
  if (v7 >= 0)
  {
    v17 = __dst;
  }

  v20 = v17;
  v21 = v8;
  sub_271828638(v9, &v20);
}

void sub_2713B8244(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v10, a2);
  sub_2713B8374(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2713B835C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

void sub_2713B8374(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 40))
  {
    v6 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v6, &__p, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 2);
  v7 = *(a1 + 40);
  *(a1 + 40) = v7 + 1;
  if (v7 != -1)
  {
    v8 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v8, &__p, 1);
  }

  MEMORY[0x2743BE840](*(a1 + 24), *(a2 + 8));
  ++*(a1 + 40);
  __p.__r_.__value_.__s.__data_[0] = *(a2 + 16);
  sub_2718388F8(a1, &__p);
  v9 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v10 = *(a1 + 24);
    __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
    sub_271120E64(v10, &__p, 1);
  }

  v11 = *(a1 + 24);
  __p.__r_.__value_.__s.__data_[0] = v9;
  sub_271120E64(v11, &__p, 1);
  ++*(a1 + 40);
  if (*(a2 + 48) == 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 1;
    sub_2718388F8(a1, &__p);
    sub_271839128(a1, a2 + 24);
    if (a3 < 4)
    {
      return;
    }
  }

  else
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &__p);
    if (a3 < 4)
    {
      return;
    }
  }

  sub_2713B87F0(a1, a2 + 56);
  if (a3 == 5)
  {
    if (*(a2 + 104) == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 1;
      sub_2718388F8(a1, &__p);
      sub_271839128(a1, a2 + 80);
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      sub_2718388F8(a1, &__p);
    }

    return;
  }

  if (a3 < 6)
  {
    return;
  }

  if (*(a2 + 104) != 1)
  {
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &__p);
    if (*(a1 + 40))
    {
      v15 = *(a1 + 24);
      __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_271120E64(v15, &__p, 1);
      ++*(a1 + 40);
      v12 = *(a2 + 136);
      if (v12 == 1)
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(a1 + 40) = 1;
      v12 = *(a2 + 136);
      if (v12 == 1)
      {
        goto LABEL_28;
      }
    }

LABEL_17:
    __p.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &__p);
    if (*(a1 + 40))
    {
      v13 = *(a1 + 24);
      __p.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_271120E64(v13, &__p, 1);
      v14 = *(a1 + 40) + 1;
    }

    else
    {
      v14 = 1;
    }

    *(a1 + 40) = v14;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v26 = 0;
    if (*(a2 + 168) != 1)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  __p.__r_.__value_.__s.__data_[0] = 1;
  sub_2718388F8(a1, &__p);
  sub_271839128(a1, a2 + 80);
  v12 = *(a2 + 136);
  if (v12 != 1)
  {
    goto LABEL_17;
  }

LABEL_28:
  __p.__r_.__value_.__s.__data_[0] = v12;
  sub_2718388F8(a1, &__p);
  sub_271839128(a1, a2 + 112);
  __p.__r_.__value_.__s.__data_[0] = 0;
  v26 = 0;
  if (*(a2 + 168) != 1)
  {
LABEL_25:
    v24.__r_.__value_.__s.__data_[0] = 0;
    sub_2718388F8(a1, &v24);
    if (*(a1 + 40))
    {
      v16 = *(a1 + 24);
      v24.__r_.__value_.__s.__data_[0] = *(a1 + 32);
      sub_271120E64(v16, &v24, 1);
      ++*(a1 + 40);
    }

    else
    {
      *(a1 + 40) = 1;
    }

    return;
  }

LABEL_29:
  v17 = *(a2 + 144);
  v18 = *(a2 + 152);
  if (v17 == v18)
  {
LABEL_46:
    sub_271130B58(v17, v18, ";", 1uLL, &v24);
  }

  else
  {
    v19 = *(a2 + 144);
    while (1)
    {
      v20 = *(v19 + 23);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = *v19;
      }

      if ((v20 & 0x80u) != 0)
      {
        v20 = v19[1];
      }

      if (v20)
      {
        v22 = 0;
        while (1)
        {
          v23 = *(v21 + v22);
          if (v23 == 59 || v23 == 92)
          {
            break;
          }

          if (v20 == ++v22)
          {
            goto LABEL_31;
          }
        }

        if (v20 != v22 && v22 != -1)
        {
          break;
        }
      }

LABEL_31:
      v19 += 3;
      if (v19 == v18)
      {
        goto LABEL_46;
      }
    }

    sub_2713B3DE4(v17, 0, *(a2 + 152), ";", 1uLL, &v24);
  }

  __p = v24;
  v26 = 1;
  v24.__r_.__value_.__s.__data_[0] = 1;
  sub_2718388F8(a1, &v24);
  sub_271839128(a1, &__p);
  if ((v26 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2713B87CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if ((a19 & 1) != 0 && a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713B87F0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    v11 = 1;
    sub_2718388F8(a1, &v11);
    if (*(a1 + 40))
    {
      v4 = *(a1 + 24);
      v13 = *(a1 + 32);
      sub_271120E64(v4, &v13, 1);
    }

    MEMORY[0x2743BE7F0](*(a1 + 24), 2);
    v5 = *(a1 + 40);
    *(a1 + 40) = v5 + 1;
    if (v5 != -1)
    {
      v6 = *(a1 + 24);
      v14 = *(a1 + 32);
      sub_271120E64(v6, &v14, 1);
    }

    MEMORY[0x2743BE840](*(a1 + 24), *a2);
    ++*(a1 + 40);
    v12 = *(a2 + 8);
    sub_2718388F8(a1, &v12);
    v7 = *(a1 + 34);
    if (*(a1 + 40))
    {
      v8 = *(a1 + 24);
      v15 = *(a1 + 32);
      sub_271120E64(v8, &v15, 1);
    }

    v9 = *(a1 + 24);
    v16 = v7;
    sub_271120E64(v9, &v16, 1);
    ++*(a1 + 40);
  }

  else
  {
    v10 = 0;
    sub_2718388F8(a1, &v10);
  }
}

void *sub_2713B891C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v4, &v31, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 2);
  v5 = *(a1 + 40) + 1;
  *(a1 + 40) = v5;
  *v28 = *a2;
  *&v28[12] = *(a2 + 12);
  v29[0] = 0;
  v30 = -1;
  v6 = *(a2 + 96);
  if (v6 != -1)
  {
    v31 = v29;
    (off_288131970[v6])(&v31, a2 + 32);
    v30 = v6;
    v5 = *(a1 + 40);
  }

  if (v5)
  {
    v7 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v7, &v31, 1);
  }

  MEMORY[0x2743BE830](*(a1 + 24), *v28);
  v8 = *(a1 + 40);
  *(a1 + 40) = v8 + 1;
  if (v8 != -1)
  {
    v9 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v9, &v31, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), 2);
  v10 = *(a1 + 40);
  v11 = *&v28[8];
  *(a1 + 40) = v10 + 1;
  if (v10 != -1)
  {
    v12 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v12, &v31, 1);
  }

  MEMORY[0x2743BE850](*(a1 + 24), v11);
  v13 = *(a1 + 40);
  *(a1 + 40) = v13 + 1;
  if (v13 != -1)
  {
    v14 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v14, &v31, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), *&v28[16]);
  v15 = *(a1 + 40);
  *(a1 + 40) = v15 + 1;
  if (v15 != -1)
  {
    v16 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v16, &v31, 1);
  }

  MEMORY[0x2743BE7F0](*(a1 + 24), *&v28[20]);
  v17 = *(a1 + 40);
  v18 = *(a1 + 34);
  *(a1 + 40) = v17 + 1;
  if (v17 != -1)
  {
    v19 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v19, &v31, 1);
  }

  v20 = *(a1 + 24);
  LOBYTE(v31) = v18;
  sub_271120E64(v20, &v31, 1);
  ++*(a1 + 40);
  if (*v28 == 1)
  {
    sub_2715F5084(v28, &v31);
    sub_2715F78FC(a1, &v31);
    v21 = v33;
    if (!v33)
    {
LABEL_22:
      v23 = v30;
      if (v30 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v22 = sub_2715F7478(*v28);
    sub_2715F5084(v28, v44);
    v31 = a1;
    v32 = MEMORY[0x277D82868] + 16;
    MEMORY[0x2743BED80](&v33);
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v32 = MEMORY[0x277D82878] + 16;
    v37 = 0u;
    v38 = 0u;
    v39 = 24;
    sub_271129318(&v32);
    v41.__loc_ = 0;
    v40 = MEMORY[0x277D82850] + 24;
    v41.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v41, &v32);
    v42 = 0;
    v43 = -1;
    sub_2713B4F1C(v44, &v40, v22);
    sub_2713B8DD0(&v31);
    v21 = v45;
    if (!v45)
    {
      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  v23 = v30;
  if (v30 != -1)
  {
LABEL_23:
    (off_2881318A0[v23])(&v31, v29);
  }

LABEL_24:
  v24 = *(a1 + 34);
  if (*(a1 + 40))
  {
    v25 = *(a1 + 24);
    LOBYTE(v31) = *(a1 + 32);
    sub_271120E64(v25, &v31, 1);
  }

  v26 = *(a1 + 24);
  LOBYTE(v31) = v24;
  result = sub_271120E64(v26, &v31, 1);
  ++*(a1 + 40);
  return result;
}

void sub_2713B8D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_2713B8DD0(&a22);
  sub_271229D10(v36 - 120);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B8D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_271229D10(&a22);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_2713B8DD0(uint64_t *a1)
{
  v2 = *(a1 + 26);
  if ((v2 & 0x10) != 0)
  {
    v4 = a1[12];
    v5 = a1[7];
    if (v4 < v5)
    {
      a1[12] = v5;
      v4 = v5;
    }

    v6 = a1[6];
    v3 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if ((v2 & 8) == 0)
    {
      v3 = 0;
      v16 = 0;
      goto LABEL_12;
    }

    v6 = a1[3];
    v3 = a1[5] - v6;
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_25:
      sub_271120DA8();
    }
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  v16 = v3;
  if (v3)
  {
    memmove(__dst, v6, v3);
  }

LABEL_12:
  *(__dst + v3) = 0;
  v7 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v8 = v16;
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = *a1;
  if (*(*a1 + 40))
  {
    v10 = *(v9 + 24);
    LOBYTE(v14[0]) = *(v9 + 32);
    sub_271120E64(v10, v14, 1);
  }

  MEMORY[0x2743BE850](*(v9 + 24), v8);
  ++*(v9 + 40);
  v11 = __dst[0];
  if (v7 >= 0)
  {
    v11 = __dst;
  }

  v12 = *a1;
  v14[0] = v11;
  v14[1] = v8;
  sub_2718395E4(v12, v14);
  if (v16 < 0)
  {
    operator delete(__dst[0]);
    std::ostream::~ostream();
    a1[1] = MEMORY[0x277D82878] + 16;
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_23:
    operator delete(a1[9]);
    goto LABEL_21;
  }

  std::ostream::~ostream();
  a1[1] = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  a1[1] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(a1 + 2);
  return a1;
}

uint64_t sub_2713B8FF0(uint64_t a1, uint64_t a2)
{
  LODWORD(__src) = 2;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  sub_2717312C0(a1);
  *v11 = *a2;
  *&v11[12] = *(a2 + 12);
  v12[0] = 0;
  v13 = -1;
  v4 = *(a2 + 96);
  if (v4 != -1)
  {
    __src = v12;
    (off_288131970[v4])(&__src, a2 + 32);
    v13 = v4;
  }

  LOWORD(__src) = *v11;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 2, 2uLL);
  LODWORD(__src) = 2;
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &__src + 4, 4uLL);
  sub_2717312C0(a1);
  __src = *&v11[8];
  sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v15, 8uLL);
  sub_27173318C(a1 + 24, *(a1 + 32), &v11[16], &v11[24], 8uLL);
  v5 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v5 + 10) = *(a1 + 32) - v5 - 18;
  *(a1 + 56) -= 8;
  if (*v11 == 1)
  {
    sub_2715F5084(v11, &__src);
    sub_2715F78FC(a1, &__src);
    v6 = v16;
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = sub_2715F7478(*v11);
    sub_2715F5084(v11, v27);
    __src = a1;
    v15 = MEMORY[0x277D82868] + 16;
    MEMORY[0x2743BED80](&v16);
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v15 = MEMORY[0x277D82878] + 16;
    v20 = 0u;
    v21 = 0u;
    v22 = 24;
    sub_271129318(&v15);
    v24.__loc_ = 0;
    v23 = MEMORY[0x277D82850] + 24;
    v24.__vftable = (MEMORY[0x277D82850] + 64);
    std::ios_base::init(&v24, &v15);
    v25 = 0;
    v26 = -1;
    sub_2713B4F1C(v27, &v23, v7);
    sub_2713B9B08(&__src);
    v6 = v28;
    if (!v28)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v8 = v13;
    if (v13 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  v8 = v13;
  if (v13 != -1)
  {
LABEL_9:
    (off_2881318A0[v8])(&__src, v12);
  }

LABEL_10:
  v9 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v9 + 10) = *(a1 + 32) - v9 - 18;
  *(a1 + 56) -= 8;
  return a1;
}

void sub_2713B9338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_2713B9B08(&a22);
  sub_271229D10(v36 - 120);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B9398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_271229D10(&a22);
  sub_2713A32D8(&a9);
  _Unwind_Resume(a1);
}

void sub_2713B93E0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_2713B3058(v10, a2);
  sub_2713B9510(a1, v10, a3);
  if (v22 == 1)
  {
    v5 = __p;
    if (__p)
    {
      v6 = v21;
      v7 = __p;
      if (v21 != __p)
      {
        do
        {
          v8 = *(v6 - 1);
          v6 -= 3;
          if (v8 < 0)
          {
            operator delete(*v6);
          }
        }

        while (v6 != v5);
        v7 = __p;
      }

      v21 = v5;
      operator delete(v7);
    }
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 == 1 && v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 == 1 && v12 < 0)
  {
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2713B94F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2713A31E0(va);
  _Unwind_Resume(a1);
}

char *sub_2713B9510(uint64_t a1, uint64_t a2, unsigned int a3)
{
  LODWORD(v33) = 2;
  sub_27173318C(a1 + 24, *(a1 + 32), &v33, &v33 + 4, 4uLL);
  sub_2717312C0(a1);
  sub_27173318C(a1 + 24, *(a1 + 32), (a2 + 8), (a2 + 16), 8uLL);
  LOBYTE(v33) = *(a2 + 16);
  sub_27173318C(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
  v6 = *(*(a1 + 56) - 8) + *(a1 + 24);
  *(v6 + 10) = *(a1 + 32) - v6 - 18;
  *(a1 + 56) -= 8;
  if (*(a2 + 48) != 1)
  {
    LOBYTE(v33) = 0;
    result = sub_27173318C(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
    if (a3 < 4)
    {
      return result;
    }

LABEL_13:
    v33 = "custom_timestamp";
    v34[0] = 16;
    v34[1] = a2 + 56;
    result = sub_2713B99E4(a1, &v33);
    if (a3 == 5)
    {
      if (*(a2 + 104) == 1)
      {
        LOBYTE(v33) = 1;
        sub_27173318C(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
        v12 = *(a2 + 103);
        if (v12 < 0)
        {
          v12 = *(a2 + 88);
        }

        v33 = v12;
        sub_27173318C(a1 + 24, *(a1 + 32), &v33, v34, 8uLL);
        v13 = *(a2 + 103);
        if (v13 >= 0)
        {
          v14 = (a2 + 80);
        }

        else
        {
          v14 = *(a2 + 80);
        }

        if (v13 >= 0)
        {
          v15 = *(a2 + 103);
        }

        else
        {
          v15 = *(a2 + 88);
        }

        v16 = *(a1 + 32);
        v17 = a1 + 24;
        v18 = v14 + v15;
        return sub_27173318C(v17, v16, v14, v18, v15);
      }

LABEL_36:
      LOBYTE(v33) = 0;
      v16 = *(a1 + 32);
      v17 = a1 + 24;
      v14 = &v33;
      v18 = &v33 + 1;
      v15 = 1;
      return sub_27173318C(v17, v16, v14, v18, v15);
    }

    if (a3 < 6)
    {
      return result;
    }

    if (*(a2 + 104) == 1)
    {
      LOBYTE(v33) = 1;
      sub_27173318C(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
      v19 = *(a2 + 103);
      if (v19 < 0)
      {
        v19 = *(a2 + 88);
      }

      v33 = v19;
      sub_27173318C(a1 + 24, *(a1 + 32), &v33, v34, 8uLL);
      v20 = *(a2 + 103);
      if (v20 >= 0)
      {
        v21 = (a2 + 80);
      }

      else
      {
        v21 = *(a2 + 80);
      }

      if (v20 >= 0)
      {
        v22 = *(a2 + 103);
      }

      else
      {
        v22 = *(a2 + 88);
      }

      sub_27173318C(a1 + 24, *(a1 + 32), v21, &v21[v22], v22);
      if (*(a2 + 136) != 1)
      {
LABEL_35:
        LOBYTE(v33) = 0;
        sub_27173318C(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
        if (*(a2 + 168) != 1)
        {
          goto LABEL_36;
        }

LABEL_48:
        LOBYTE(v33) = 1;
        sub_27173318C(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
        __src = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 152) - *(a2 + 144)) >> 3);
        result = sub_27173318C(a1 + 24, *(a1 + 32), &__src, &v36, 8uLL);
        v28 = *(a2 + 144);
        for (i = *(a2 + 152); v28 != i; v28 += 24)
        {
          v29 = *(v28 + 23);
          if (v29 < 0)
          {
            v29 = *(v28 + 8);
          }

          v33 = v29;
          sub_27173318C(a1 + 24, *(a1 + 32), &v33, v34, 8uLL);
          v30 = *(v28 + 23);
          if (v30 >= 0)
          {
            v31 = v28;
          }

          else
          {
            v31 = *v28;
          }

          if (v30 >= 0)
          {
            v32 = *(v28 + 23);
          }

          else
          {
            v32 = *(v28 + 8);
          }

          result = sub_27173318C(a1 + 24, *(a1 + 32), v31, &v31[v32], v32);
        }

        return result;
      }
    }

    else
    {
      LOBYTE(v33) = 0;
      sub_27173318C(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
      if (*(a2 + 136) != 1)
      {
        goto LABEL_35;
      }
    }

    LOBYTE(v33) = 1;
    sub_27173318C(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
    v23 = *(a2 + 135);
    if (v23 < 0)
    {
      v23 = *(a2 + 120);
    }

    v33 = v23;
    sub_27173318C(a1 + 24, *(a1 + 32), &v33, v34, 8uLL);
    v24 = *(a2 + 135);
    if (v24 >= 0)
    {
      v25 = (a2 + 112);
    }

    else
    {
      v25 = *(a2 + 112);
    }

    if (v24 >= 0)
    {
      v26 = *(a2 + 135);
    }

    else
    {
      v26 = *(a2 + 120);
    }

    sub_27173318C(a1 + 24, *(a1 + 32), v25, &v25[v26], v26);
    if (*(a2 + 168) != 1)
    {
      goto LABEL_36;
    }

    goto LABEL_48;
  }

  LOBYTE(v33) = 1;
  sub_27173318C(a1 + 24, *(a1 + 32), &v33, &v33 + 1, 1uLL);
  v7 = *(a2 + 47);
  if (v7 < 0)
  {
    v7 = *(a2 + 32);
  }

  v33 = v7;
  sub_27173318C(a1 + 24, *(a1 + 32), &v33, v34, 8uLL);
  v8 = *(a2 + 47);
  if (v8 >= 0)
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 24);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 47);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  result = sub_27173318C(a1 + 24, *(a1 + 32), v9, &v9[v10], v10);
  if (a3 >= 4)
  {
    goto LABEL_13;
  }

  return result;
}