unint64_t sub_298C1E0C8(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 8);
  v2 = v1 >= 2 ? 2 : *(a1 + 8);
  v3 = v1 - v2;
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = (v2 + *a1);
  v6 = v3;
  do
  {
    if (*v5 < 48)
    {
      break;
    }

    v7 = *v5;
    if (v7 >= 0x3A)
    {
      if (v7 < 0x61)
      {
        if (v7 - 65 > 0x19)
        {
          break;
        }

        v8 = -55;
      }

      else
      {
        if (v7 >= 0x7B)
        {
          break;
        }

        v8 = -87;
      }
    }

    else
    {
      v8 = -48;
    }

    v9 = v8 + v7;
    if (v9 > 0xF)
    {
      break;
    }

    if (v4 >> 60)
    {
      return 0;
    }

    v4 = v9 | (16 * v4);
    ++v5;
    --v6;
  }

  while (v6);
  if (v3 == v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

BOOL sub_298C1E180(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24) == 9)
  {
    result = 1;
  }

  else
  {
    v5[1] = 0;
    v5[2] = 0;
    v5[0] = a2;
    sub_298C26CD8(uu2, v5);
    result = sub_298C1849C(*a1, *(a1 + 8), uu2) != 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C1E210(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F1F3E8;
  v4 = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 16) = a1 + 24;
  *(a1 + 8) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = a1 + 64;
  v5 = (a1 + 56);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  v6 = (a1 + 80);
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v7 = *(a2 + 16);
  if (v7 != a2 + 24)
  {
    v16 = *(v7 + 56);
    operator new();
  }

  v9 = *(a2 + 40);
  v8 = *(a2 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 48);
  *(a1 + 40) = v9;
  *(a1 + 48) = v8;
  if (v10)
  {
    sub_298BF34C8(v10);
  }

  if (a1 != a2)
  {
    sub_298C2FE5C(v5, *(a2 + 56), (a2 + 64));
    sub_298B805BC((a1 + 104), *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 3);
    sub_298B805BC(v6, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 3);
  }

  v11 = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 128) = v11;
  v13 = *(a2 + 144);
  v12 = *(a2 + 152);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 152);
  *(a1 + 144) = v13;
  *(a1 + 152) = v12;
  if (v14)
  {
    sub_298BF34C8(v14);
  }

  return a1;
}

void *sub_298C1E41C(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
      *v1 = &unk_2A1F1F810;
      v3 = *(v1 + 8);
      if (v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      *v1 = &unk_2A1F1F810;
      v3 = *(v1 + 8);
      if (v3)
      {
LABEL_4:
        v4 = *(v1 + 16);
        v5 = v3;
        if (v4 != v3)
        {
          do
          {
            while (1)
            {
              v7 = *--v4;
              v6 = v7;
              *v4 = 0;
              if (v7)
              {
                break;
              }

              if (v4 == v3)
              {
                goto LABEL_9;
              }
            }

            (*(*v6 + 16))(v6);
          }

          while (v4 != v3);
LABEL_9:
          v5 = *(v1 + 8);
        }

        *(v1 + 16) = v3;
        operator delete(v5);
      }
    }

    MEMORY[0x29C2945F0](v1, 0x10B3C40D49AE8FALL);
    return v2;
  }

  return result;
}

void sub_298C1E528(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v21[6] = a1;
  v21[7] = a2;
  v24 = 261;
  v22 = a1;
  v23 = a2;
  if (sub_298BAB3F0(&v22, 0))
  {
    v4 = std::generic_category();
    v16 = "Recording.cpp";
    v17 = 259;
    v14 = ":";
    v15 = 259;
    sub_298ADC860(&v16, &v14, v18);
    sub_298AFB090(0x2F0uLL, 0, __p);
    v13 = 260;
    v12 = __p;
    sub_298ADC860(v18, &v12, v19);
    v9 = ": ";
    v10 = 259;
    sub_298ADC860(v19, &v9, v20);
    v8 = 261;
    v7[0] = a1;
    v7[1] = a2;
    sub_298ADC860(v20, v7, v21);
    v5 = " does not exist";
    v6 = 259;
    sub_298ADC860(v21, &v5, &v22);
    sub_298ADDCA4(45, v4, &v22);
  }

  v24 = 261;
  v22 = a1;
  v23 = a2;
  LOBYTE(v21[0]) = 0;
  if (!sub_298BAAC30(&v22, v21) && (v21[0] & 1) != 0)
  {
    LOBYTE(v21[0]) = 0;
    sub_298C1E7A0();
  }

  sub_298C44E28(a1, a2);
}

uint64_t *sub_298C1E83C(uint64_t *result)
{
  v1 = *(result + 8);
  v2 = *result;
  *result = 0;
  if (v1)
  {
    if (!v2)
    {
      return result;
    }
  }

  else if (!v2)
  {
    return result;
  }

  v3 = result;
  (*(*v2 + 8))(v2);
  return v3;
}

void sub_298C1E8D0()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = sub_298B227A0(1);
  v1 = os_signpost_id_generate(v0);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v0, OS_SIGNPOST_INTERVAL_BEGIN, v1, "Recording::load", &unk_298EC00B5, buf, 2u);
  }

  v3[0] = &unk_2A1F1F4E0;
  v3[1] = v1;
  v3[2] = v0;
  v3[3] = v3;
  sub_298AE98B0(v4, v3);
  v5 = v1;
  sub_298BBB834(v3);
  operator new();
}

void *sub_298C1EE94(void *a1, uint64_t *a2)
{
  sub_298C30554(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_298BF34C8(v3);
  }

  return a1;
}

uint64_t sub_298C1EEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v92 = *MEMORY[0x29EDCA608];
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v76 = "RawTraces";
  v77 = 9;
  v90[0] = 0;
  if (sub_298B89FD8(a2, &v76, v90))
  {
    v6 = v90[0];
  }

  else
  {
    v6 = *a2 + 56 * *(a2 + 16);
  }

  v7 = *(v6 + 24);
  v8 = v6 + 32;
  if (v7 != 8)
  {
    v8 = 0;
  }

  v9 = *v8;
  if (*v8 != *(v8 + 8))
  {
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0;
    if (*v9 == 7)
    {
      v10 = (v9 + 4);
    }

    else
    {
      v10 = 0;
    }

    sub_298C10734(&v76, v10);
    v90[0] = 0;
    v11 = v88;
    if (sub_298C30C58(v86, v88, SHIDWORD(v76), v90))
    {
      std::generic_category();
      v66[0] = "Recording.cpp";
      v66[2] = ":";
      v67 = 771;
      v65 = 3;
      LODWORD(__p) = 3749944;
      v68[0] = v66;
      v68[2] = &__p;
      v69 = 1026;
      v70[0] = v68;
      v70[2] = ": ";
      v71 = 770;
      v72[0] = v70;
      v72[2] = "manifest contains two raw traces from cluster ";
      v73 = 770;
      v34 = HIDWORD(v76);
      if (HIDWORD(v76))
      {
        v35 = 20;
        do
        {
          *(v90 + v35--) = (v34 % 0xA) | 0x30;
          v36 = v34 > 9;
          v34 /= 0xAuLL;
        }

        while (v36);
        v37 = v35 + 1;
        v38 = 20 - v35;
        if ((20 - v35) >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_298ADDDA0();
        }
      }

      else
      {
        v91 = 48;
        v37 = 20;
        v38 = 1;
      }

      if (v38 <= 0x16)
      {
        v63 = v38;
        if (v37 != 21)
        {
          memcpy(&__dst, v90 + v37, v38);
        }

        *(&__dst + v38) = 0;
        v74[0] = v72;
        v74[2] = &__dst;
        v75 = 1026;
        sub_298B996A4(v74, &v89);
        operator new();
      }

      operator new();
    }

    if (4 * v87 + 4 >= 3 * v11)
    {
      v12 = 2 * v11;
    }

    else
    {
      if (v11 + ~v87 - HIDWORD(v87) > v11 >> 3)
      {
        goto LABEL_12;
      }

      v12 = v11;
    }

    sub_298C30CE8(&v86, v12);
    v90[0] = 0;
    sub_298C30C58(v86, v88, SHIDWORD(v76), v90);
LABEL_12:
    LODWORD(v87) = v87 + 1;
    if (*v90[0] != -1)
    {
      --HIDWORD(v87);
    }

    *v90[0] = HIDWORD(v76);
    operator new();
  }

  v76 = "SystemTraces";
  v77 = 12;
  v90[0] = 0;
  if (sub_298B89FD8(a2, &v76, v90))
  {
    v13 = v90[0];
  }

  else
  {
    v13 = *a2 + 56 * *(a2 + 16);
  }

  v14 = *(v13 + 24);
  v15 = (v13 + 32);
  if (v14 != 8)
  {
    v15 = 0;
  }

  if (*v15 != v15[1])
  {
    operator new();
  }

  v76 = "StartTimes";
  v77 = 10;
  v90[0] = 0;
  v16 = a2;
  if (sub_298B89FD8(a2, &v76, v90))
  {
    if (v90[0] != *a2 + 56 * *(a2 + 16) && *(v90[0] + 24) == 8)
    {
      v17 = *(v90[0] + 32);
      v18 = *(v90[0] + 40);
      if (v17 != v18)
      {
        while (1)
        {
          v19 = *v17;
          if (v19 == 3)
          {
            break;
          }

          if (v19 == 4)
          {
            v20 = *(v17 + 1) | *(v17 + 1) & 0xFFFFFFFFFFFFFF00;
            v22 = *(a1 + 112);
            v21 = *(a1 + 120);
            if (v22 >= v21)
            {
              goto LABEL_37;
            }

LABEL_29:
            *v22 = v20;
            *(a1 + 112) = v22 + 1;
            v17 += 16;
            if (v17 == v18)
            {
              goto LABEL_64;
            }
          }

          else
          {
            v20 = 0;
            v22 = *(a1 + 112);
            v21 = *(a1 + 120);
            if (v22 < v21)
            {
              goto LABEL_29;
            }

LABEL_37:
            v23 = *(a1 + 104);
            v24 = v22 - v23;
            v25 = (v22 - v23) >> 3;
            v26 = v25 + 1;
            if ((v25 + 1) >> 61)
            {
LABEL_89:
              sub_298ADDDA0();
            }

            v27 = v21 - v23;
            if (v27 >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              sub_298B7F4FC(a1 + 104, v28);
            }

            v29 = v25;
            v30 = (8 * v25);
            v31 = &v30[-v29];
            *v30 = v20;
            v32 = v30 + 1;
            memcpy(v31, v23, v24);
            v33 = *(a1 + 104);
            *(a1 + 104) = v31;
            *(a1 + 112) = v32;
            *(a1 + 120) = 0;
            if (v33)
            {
              operator delete(v33);
            }

            v16 = a2;
            *(a1 + 112) = v32;
            v17 += 16;
            if (v17 == v18)
            {
              goto LABEL_64;
            }
          }
        }

        v20 = (v17[4] & ~(*(v17 + 1) >> 63)) | *(v17 + 1) & ~(*(v17 + 1) >> 63) & 0x7FFFFFFFFFFFFF00;
        v22 = *(a1 + 112);
        v21 = *(a1 + 120);
        if (v22 >= v21)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
    v39 = *a2 + 56 * *(a2 + 16);
  }

LABEL_64:
  v76 = "StopTimes";
  v77 = 9;
  v90[0] = 0;
  if (sub_298B89FD8(v16, &v76, v90))
  {
    if (v90[0] != *v16 + 56 * *(v16 + 16) && *(v90[0] + 24) == 8)
    {
      v40 = *(v90[0] + 32);
      v41 = *(v90[0] + 40);
      if (v40 != v41)
      {
        while (1)
        {
          v42 = *v40;
          if (v42 == 3)
          {
            break;
          }

          if (v42 == 4)
          {
            v43 = *(v40 + 1) | *(v40 + 1) & 0xFFFFFFFFFFFFFF00;
            v45 = *(a1 + 88);
            v44 = *(a1 + 96);
            if (v45 >= v44)
            {
              goto LABEL_77;
            }

LABEL_69:
            *v45 = v43;
            *(a1 + 88) = v45 + 1;
            v40 += 16;
            if (v40 == v41)
            {
              goto LABEL_91;
            }
          }

          else
          {
            v43 = 0;
            v45 = *(a1 + 88);
            v44 = *(a1 + 96);
            if (v45 < v44)
            {
              goto LABEL_69;
            }

LABEL_77:
            v46 = *(a1 + 80);
            v47 = v45 - v46;
            v48 = (v45 - v46) >> 3;
            v49 = v48 + 1;
            if ((v48 + 1) >> 61)
            {
              goto LABEL_89;
            }

            v50 = v44 - v46;
            if (v50 >> 2 > v49)
            {
              v49 = v50 >> 2;
            }

            if (v50 >= 0x7FFFFFFFFFFFFFF8)
            {
              v51 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v51 = v49;
            }

            if (v51)
            {
              sub_298B7F4FC(a1 + 80, v51);
            }

            v52 = v48;
            v53 = (8 * v48);
            v54 = &v53[-v52];
            *v53 = v43;
            v55 = v53 + 1;
            memcpy(v54, v46, v47);
            v56 = *(a1 + 80);
            *(a1 + 80) = v54;
            *(a1 + 88) = v55;
            *(a1 + 96) = 0;
            if (v56)
            {
              operator delete(v56);
            }

            v16 = a2;
            *(a1 + 88) = v55;
            v40 += 16;
            if (v40 == v41)
            {
              goto LABEL_91;
            }
          }
        }

        v43 = (v40[4] & ~(*(v40 + 1) >> 63)) | *(v40 + 1) & ~(*(v40 + 1) >> 63) & 0x7FFFFFFFFFFFFF00;
        v45 = *(a1 + 88);
        v44 = *(a1 + 96);
        if (v45 >= v44)
        {
          goto LABEL_77;
        }

        goto LABEL_69;
      }
    }
  }

  else
  {
    v57 = *v16 + 56 * *(v16 + 16);
  }

LABEL_91:
  *(a1 + 128) = sub_298B878FC(v16, "ElapsedMicrosecs", 16);
  *(a1 + 136) = v58;
  *a3 = 0;
  result = MEMORY[0x29C2945E0](v86, 4);
  v60 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_298C1FA34(void *a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *a2 = 0;
  v4 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v4)
  {
    sub_298BF34C8(v4);
  }

  return a1;
}

void sub_298C1FAD8()
{
  v6 = *MEMORY[0x29EDCA608];
  v0 = sub_298B227A0(1);
  v1 = os_signpost_id_generate(v0);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v0, OS_SIGNPOST_INTERVAL_BEGIN, v1, "Recording::load", &unk_298EC00B5, buf, 2u);
  }

  v2[0] = &unk_2A1F1F598;
  v2[1] = v1;
  v2[2] = v0;
  v3 = v2;
  sub_298AE98B0(buf, v2);
  v5 = v1;
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  operator new();
}

void sub_298C2022C(uint64_t a1, void *a2)
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

  v6 = (v4 - *a1) >> 3;
  if ((v6 + 1) >> 61)
  {
    sub_298ADDDA0();
  }

  v7 = v3 - *a1;
  v8 = v7 >> 2;
  if (v7 >> 2 <= (v6 + 1))
  {
    v8 = v6 + 1;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  if (v9)
  {
    sub_298BCEB24(a1, v9);
  }

  v10 = (8 * v6);
  *v10 = *a2;
  v5 = 8 * v6 + 8;
  v11 = *(a1 + 8) - *a1;
  v12 = v10 - v11;
  memcpy(v10 - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v13)
  {
    goto LABEL_3;
  }

  operator delete(v13);
  *(a1 + 8) = v5;
}

uint64_t sub_298C20318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (sub_298C26DD4(a1 + 16, (*a2 + 72)))
  {
    v6 = sub_298B221EC(v27, "Multiple system traces exist named ");
    v7 = *(*a2 + 95);
    if (v7 >= 0)
    {
      v8 = (*a2 + 72);
    }

    else
    {
      v8 = *(*a2 + 72);
    }

    if (v7 >= 0)
    {
      v9 = *(*a2 + 95);
    }

    else
    {
      v9 = *(*a2 + 80);
    }

    std::string::append(v6, v8, v9);
    v10 = std::generic_category();
    v21 = "Recording.h";
    v22 = 259;
    v19 = ":";
    v20 = 259;
    sub_298ADC860(&v21, &v19, v23);
    sub_298AFB090(0x258uLL, 0, __p);
    v18 = 260;
    v17 = __p;
    sub_298ADC860(v23, &v17, v24);
    v14 = ": ";
    v15 = 259;
    sub_298ADC860(v24, &v14, v25);
    v13 = 260;
    v12[0] = v27;
    sub_298ADC860(v25, v12, v26);
    sub_298ADDCA4(45, v10, v26);
  }

  result = sub_298C26EBC(a1 + 16, (*a2 + 72));
  *a3 = 0;
  return result;
}

uint64_t sub_298C204AC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  v6 = sub_298B227A0(1);
  v7 = os_signpost_id_generate(v6);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Recording::load", &unk_298EC00B5, buf, 2u);
  }

  v16[0] = &unk_2A1F1F618;
  v16[1] = v7;
  v16[2] = v6;
  v17 = v16;
  sub_298AE98B0(buf, v16);
  v20 = v7;
  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))();
  }

  v13[0] = 0;
  v13[1] = 0;
  v11 = 0;
  v12 = 0;
  sub_298C10DE4(a2, a1, v13, &v11, 0, &__p);
  v8 = __p;
  if (!__p)
  {
    sub_298C112C0(a1, 0, v13[0], v11, v12, &__p);
    if ((v15 & 1) == 0 || (v8 = __p, __p = 0, !v8))
    {
      sub_298C1FAD8();
    }
  }

  *(a3 + 8) |= 1u;
  *a3 = v8;
  result = v19;
  if (v19)
  {
    (*(*v19 + 48))(v19);
    result = v19;
    if (v19 == buf)
    {
      result = (*(*v19 + 32))(v19);
    }

    else if (v19)
    {
      result = (*(*v19 + 40))(v19);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void *sub_298C207BC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[2];
  v3 = result + 3;
  if (v2 != result + 3)
  {
    result = 0;
    do
    {
      v5 = v2[7];
      v9 = v5;
      if (result >= a2[2])
      {
        v4 = a2;
        result = sub_298C30B94(a2, &v9);
        a2 = v4;
      }

      else
      {
        *result++ = v5;
      }

      a2[1] = result;
      v6 = v2[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  return result;
}

uint64_t sub_298C20874@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v196 = *MEMORY[0x29EDCA608];
  sub_298C1E210(v123, a1);
  v5 = sub_298B227A0(1);
  v6 = os_signpost_id_generate(v5);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Recording::save", &unk_298EC00B5, &buf, 2u);
  }

  v153[0] = &unk_2A1F1F660;
  v153[1] = v6;
  v153[2] = v5;
  v154 = v153;
  sub_298AE98B0(v155, v153);
  v157 = v6;
  if (v154 == v153)
  {
    (*(*v154 + 32))(v154);
  }

  else if (v154)
  {
    (*(*v154 + 40))();
  }

  (*(**a2 + 40))(*a2, &unk_298EAE8EF, 0);
  if (*a4)
  {
    goto LABEL_9;
  }

  v122 = a4;
  if (v125 != v126)
  {
    LOBYTE(v141) = *(v125[5] + 4);
    v7 = sub_298B227A0(1);
    v8 = os_signpost_id_generate(v7);
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LODWORD(uu2) = 67109120;
      DWORD1(uu2) = v141;
      _os_signpost_emit_with_name_impl(&dword_298AD8000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Recording::saveCluster", "cluster=%u", &uu2, 8u);
    }

    v152[4] = 0;
    operator new();
  }

  if (v126[10])
  {
    v9 = *a2;
    *&buf = v123;
    (*(*v9 + 48))(v9, "global-stackshot.kcdata", 23, sub_298C31880, &buf);
    if (*a4)
    {
      goto LABEL_9;
    }
  }

  if (*(a3 + 4) != 1)
  {
    goto LABEL_63;
  }

  v114 = *a2;
  v10 = sub_298B227A0(1);
  v11 = os_signpost_id_generate(v10);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "Recording::copyDecodedResults", &unk_298EC00B5, &buf, 2u);
  }

  __dst[0] = &unk_2A1F1F738;
  __dst[1] = v11;
  v183 = v10;
  v184 = __dst;
  sub_298AE98B0(&v190, __dst);
  v193 = v11;
  if (v184 == __dst)
  {
    (*(*v184 + 32))(v184);
  }

  else if (v184)
  {
    (*(*v184 + 40))();
  }

  if (*(a3 + 7))
  {
    v14 = 1;
  }

  else
  {
    v14 = 4;
  }

  v113 = dword_2A13C2B68;
  dword_2A13C2B68 = v14;
  v112 = word_2A13C3788;
  word_2A13C3788 = *(a3 + 5);
  v111 = byte_2A13C378A;
  byte_2A13C378A = 1;
  sub_298C207BC(v123, &v137);
  v15 = v137;
  v118 = v138;
  if (v137 == v138)
  {
    goto LABEL_55;
  }

  do
  {
    v16 = *v15;
    v151.__r_.__value_.__r.__words[0] = v16;
    if (*(v16 + 296))
    {
      goto LABEL_46;
    }

    sub_298C17278(v16, &uu2);
    if (uu2 == *(&uu2 + 1))
    {
      v18 = 0;
      if (uu2)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v17 = uu2 + 17;
      do
      {
        v18 = *(v17 - 1);
        if (v18)
        {
          break;
        }

        v90 = v17 == *(&uu2 + 1);
        v17 += 17;
      }

      while (!v90);
      if (uu2)
      {
LABEL_43:
        operator delete(uu2);
      }
    }

    if (v18)
    {
      v16 = v151.__r_.__value_.__r.__words[0];
LABEL_46:
      sub_298BD60CC(v16);
    }

    v19 = sub_298B227A0(1);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = v151.__r_.__value_.__r.__words[0] + 72;
      if (*(v151.__r_.__value_.__r.__words[0] + 95) < 0)
      {
        v20 = *(v151.__r_.__value_.__r.__words[0] + 72);
      }

      LODWORD(uu2) = 136315138;
      *(&uu2 + 4) = v20;
      _os_log_impl(&dword_298AD8000, v19, OS_LOG_TYPE_INFO, "System %s is not decodable.", &uu2, 0xCu);
    }

    ++v15;
  }

  while (v15 != v118);
  v15 = v137;
LABEL_55:
  if (v15)
  {
    v138 = v15;
    operator delete(v15);
  }

  *a4 = 0;
  byte_2A13C378A = v111;
  word_2A13C3788 = v112;
  dword_2A13C2B68 = v113;
  if (v192)
  {
    (*(*v192 + 6))(v192);
    if (v192 == &v190)
    {
      (*(*v192 + 4))(v192);
    }

    else if (v192)
    {
      (*(*v192 + 5))();
    }
  }

  if (*a4)
  {
    goto LABEL_9;
  }

LABEL_63:
  if (*a3 != 2)
  {
    goto LABEL_255;
  }

  v21 = *a2;
  v22 = sub_298B227A0(1);
  v23 = os_signpost_id_generate(v22);
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&dword_298AD8000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v23, "Recording::copyImages", &unk_298EC00B5, &buf, 2u);
  }

  v174[0] = &unk_2A1F1F6F0;
  v174[1] = v23;
  v174[2] = v22;
  v175 = v174;
  sub_298AE98B0(&v176, v174);
  v178 = v23;
  if (v175 == v174)
  {
    (*(*v175 + 32))(v175);
  }

  else if (v175)
  {
    (*(*v175 + 40))();
  }

  (*(*v21 + 40))(v21, "images", 6);
  if (*a4)
  {
    goto LABEL_249;
  }

  sub_298C207BC(v123, &v127);
  v24 = v127;
  v115 = v128;
  if (v127 == v128)
  {
LABEL_246:
    if (v24)
    {
      v128 = v24;
      operator delete(v24);
    }

    *a4 = 0;
    goto LABEL_249;
  }

  v117 = v21;
  while (2)
  {
    v116 = v24;
    v25 = *v24;
    v26 = v124;
    v152[0] = 0;
    *(&v151.__r_.__value_.__s + 23) = 3;
    LODWORD(v151.__r_.__value_.__l.__data_) = 4144959;
    v27 = v25[54];
    v28 = v25[55];
    v121 = v124;
    if (v28 == v27)
    {
      v53 = 1;
      goto LABEL_116;
    }

    v29 = 0;
    v30 = 0;
    while (2)
    {
      v31 = (v27 + 8 * v29);
      v32 = *v31;
      if (**v31 != 1)
      {
        goto LABEL_78;
      }

      *v31 = 0;
      v33 = v152[0];
      v152[0] = v32;
      if (v33)
      {
        sub_298C27374(v152, v33);
        v28 = v25[55];
        v47 = *(v28 - 8);
        *(v28 - 8) = 0;
        v35 = *v31;
        *v31 = v47;
        if (v35)
        {
          goto LABEL_100;
        }

LABEL_82:
        v38 = *(v28 - 8);
        v37 = (v28 - 8);
        v36 = v38;
        *v37 = 0;
        if (v38)
        {
LABEL_101:
          sub_298C27374(v37, v36);
        }
      }

      else
      {
        v34 = *(v28 - 8);
        *(v28 - 8) = 0;
        v35 = *v31;
        *v31 = v34;
        if (!v35)
        {
          goto LABEL_82;
        }

LABEL_100:
        sub_298C27374(v31, v35);
        v48 = v25[55];
        v49 = *(v48 - 8);
        v37 = (v48 - 8);
        v36 = v49;
        *v37 = 0;
        if (v49)
        {
          goto LABEL_101;
        }
      }

      v25[55] = v37;
      buf = (v152[0] + 4);
      v159 = 0;
      sub_298C26CD8(&uu2, &buf);
      v39 = v25[50];
      if (!*&v39)
      {
        goto LABEL_108;
      }

      v40 = *(&uu2 + 1) ^ uu2;
      v41 = vcnt_s8(v39);
      v41.i16[0] = vaddlv_u8(v41);
      if (v41.u32[0] <= 1uLL)
      {
        v42 = (*&v39 - 1) & v40;
      }

      else if (v40 < *&v39)
      {
        v42 = *(&uu2 + 1) ^ uu2;
      }

      else
      {
        v42 = v40 % *&v39;
      }

      v43 = *(v25[49] + 8 * v42);
      if (!v43 || (v44 = *v43, !*v43))
      {
        v39 = 0;
        goto LABEL_107;
      }

      if (v41.u32[0] < 2uLL)
      {
        v45 = *&v39 - 1;
        while (1)
        {
          v50 = *(*&v44 + 8);
          if (v50 == v40)
          {
            if (!uuid_compare((*&v44 + 16), &uu2))
            {
              goto LABEL_106;
            }
          }

          else if ((v50 & v45) != v42)
          {
            goto LABEL_97;
          }

          v39 = 0;
          v44 = **&v44;
          if (!*&v44)
          {
            goto LABEL_107;
          }
        }
      }

      while (1)
      {
        v46 = *(*&v44 + 8);
        if (v46 == v40)
        {
          break;
        }

        if (v46 >= *&v39)
        {
          v46 %= *&v39;
        }

        if (v46 != v42)
        {
LABEL_97:
          v39 = 0;
          goto LABEL_107;
        }

LABEL_92:
        v44 = **&v44;
        if (!*&v44)
        {
          goto LABEL_97;
        }
      }

      if (uuid_compare((*&v44 + 16), &uu2))
      {
        goto LABEL_92;
      }

LABEL_106:
      v39 = v44;
LABEL_107:
      v26 = v121;
LABEL_108:
      std::string::operator=(&v151, (*&v39 + 32));
      sub_298C2B6DC(&buf, v25 + 49, *&v39);
      v51 = buf;
      if (buf)
      {
        if (v159 == 1 && *(buf + 55) < 0)
        {
          v52 = buf;
          operator delete(*(buf + 32));
          v51 = v52;
        }

        operator delete(v51);
      }

      v27 = v25[54];
      v28 = v25[55];
LABEL_78:
      v29 = ++v30;
      if (v30 < ((v28 - v27) >> 3))
      {
        continue;
      }

      break;
    }

    v53 = v152[0] == 0;
LABEL_116:
    v149 = 0uLL;
    v150 = 0;
    if (v53)
    {
      v159 = 0;
      v160 = 0;
      LODWORD(v161) = 1065353216;
      v173 &= ~1u;
      buf = 0uLL;
      v169 = 0;
      v168 = 0;
      v170 = 0;
      v171 = 0;
      v172 = 1065353216;
      sub_298C27450(&buf);
      if ((v173 & 1) == 0)
      {
LABEL_118:
        *a4 = 0;
        v54 = v25[51];
        if (v54)
        {
          goto LABEL_129;
        }

LABEL_229:
        *a4 = 0;
        goto LABEL_230;
      }
    }

    else
    {
      sub_298B1EF68(&uu2);
      if ((v167 & 1) == 0 || (v55 = uu2, *&uu2 = 0, !v55))
      {
        sub_298C3D514();
      }

      v173 |= 1u;
      v168 = v55;
      if ((v173 & 1) == 0)
      {
        goto LABEL_118;
      }
    }

    v56 = v168;
    v168 = 0;
    *a4 = v56;
    if (v56)
    {
      goto LABEL_230;
    }

    v54 = v25[51];
    if (!v54)
    {
      goto LABEL_229;
    }

LABEL_129:
    while (2)
    {
      v146 = &v149;
      v147 = 0;
      v148 = 0;
      sub_298B90C08(&v146, &v149, 6uLL, 1);
      v57 = v146 + v147;
      *(v57 + 2) = 29541;
      *v57 = 1734438249;
      v59 = (v54 + 4);
      v58 = v54[4];
      v147 += 6;
      v60 = *(v54 + 55);
      if (v60 >= 0)
      {
        v58 = v54 + 4;
      }

      if (v60 < 0)
      {
        v60 = v54[5];
      }

      v159 = 0;
      v160 = 0;
      *&buf = v58;
      *(&buf + 1) = v60;
      v161 = v60;
      LODWORD(v162) = 0;
      sub_298BA8288(&buf);
      v61 = v159;
      v62 = v160;
      buf = (v54 + 2);
      v159 = 0;
      sub_298B1FB90(&buf, v144);
      if (v145 >= 0)
      {
        v63 = v144;
      }

      else
      {
        v63 = v144[0];
      }

      if (v145 >= 0)
      {
        v64 = v145;
      }

      else
      {
        v64 = v144[1];
      }

      if (v62 >= v64 && (!v64 || !memcmp(v61, v63, v64)))
      {
        LOWORD(v161) = 261;
        *&buf = v61;
        *(&buf + 1) = v62;
        LOWORD(v166[0]) = 257;
        LOWORD(v193) = 257;
        LOWORD(v189) = 257;
        p_uu2 = &uu2;
        v66 = &v190;
        v67 = &v186;
      }

      else
      {
        *&uu2 = v144;
        v164 = "-";
        LOWORD(v166[0]) = 772;
        *&buf = &uu2;
        v159 = v61;
        v160 = v62;
        LOWORD(v161) = 1282;
        LOWORD(v193) = 257;
        LOWORD(v189) = 257;
        v185 = 257;
        p_uu2 = &v190;
        v66 = &v186;
        v67 = __dst;
      }

      sub_298BA8944(&v146, 0, &buf, p_uu2, v66, v67);
      v68 = *(v54 + 55);
      if (v68 >= 0)
      {
        v69 = v54 + 4;
      }

      else
      {
        v69 = v54[4];
      }

      if (v68 >= 0)
      {
        v70 = *(v54 + 55);
      }

      else
      {
        v70 = v54[5];
      }

      if ((*(*v26 + 24))(v26, v69, v70, 1))
      {
        v71 = *(v54 + 55);
        if (v71 >= 0)
        {
          v72 = (v54 + 4);
        }

        else
        {
          v72 = v54[4];
        }

        if (v71 >= 0)
        {
          v73 = *(v54 + 55);
        }

        else
        {
          v73 = v54[5];
        }

        sub_298C3A8F0(v26, v72, v73, v21, v146, v147, a4);
        if (!*a4)
        {
          goto LABEL_196;
        }

LABEL_157:
        v74 = 1;
        goto LABEL_200;
      }

      v75 = v169;
      if (!*&v169 || ((v76 = v54[3] ^ v54[2], v77 = vcnt_s8(v169), v77.i16[0] = vaddlv_u8(v77), v77.u32[0] <= 1uLL) ? (v78 = (*&v169 - 1) & v76) : v76 < *&v169 ? (v78 = v54[3] ^ v54[2]) : (v78 = v76 % *&v169), (v79 = *(v168 + 8 * v78)) == 0 || (v80 = *v79) == 0))
      {
LABEL_188:
        if (v62 != 3 || (*v61 == 16191 ? (v90 = v61[2] == 63) : (v90 = 0), !v90))
        {
          v134 = "Recording.cpp";
          v135 = ":";
          v136 = 771;
          std::generic_category();
          v195 = 4;
          strcpy(&v194, "1233");
          v137 = &v134;
          v139 = &v194;
          v140 = 1026;
          v141 = &v137;
          v142 = ": ";
          v143 = 770;
          __str.__r_.__value_.__r.__words[0] = &v141;
          __str.__r_.__value_.__r.__words[2] = "image ";
          v181 = 770;
          __dst[0] = &__str;
          v183 = (v54 + 4);
          v185 = 1026;
          *&v186 = __dst;
          v187 = " @ ";
          LOWORD(v189) = 770;
          v190 = &v186;
          v191 = v144;
          LOWORD(v193) = 1026;
          *&uu2 = &v190;
          v164 = " was not found";
          LOWORD(v166[0]) = 770;
          sub_298B996A4(&uu2, &v131);
          operator new();
        }

        v74 = 0;
        v26 = v121;
        a4 = v122;
        v21 = v117;
        goto LABEL_200;
      }

      if (v77.u32[0] < 2uLL)
      {
        v81 = *&v169 - 1;
        while (1)
        {
          v83 = *(v80 + 1);
          if (v83 == v76)
          {
            if (!uuid_compare(v80 + 16, v54 + 16))
            {
              goto LABEL_179;
            }
          }

          else if ((v83 & v81) != v78)
          {
            goto LABEL_188;
          }

          v80 = *v80;
          if (!v80)
          {
            goto LABEL_188;
          }
        }
      }

      while (2)
      {
        v82 = *(v80 + 1);
        if (v82 != v76)
        {
          if (v82 >= *&v75)
          {
            v82 %= *&v75;
          }

          if (v82 != v78)
          {
            goto LABEL_188;
          }

          goto LABEL_167;
        }

        if (uuid_compare(v80 + 16, v54 + 16))
        {
LABEL_167:
          v80 = *v80;
          if (!v80)
          {
            goto LABEL_188;
          }

          continue;
        }

        break;
      }

LABEL_179:
      if (!v152[0])
      {
        goto LABEL_188;
      }

      v86 = *(v80 + 4);
      v85 = (v80 + 32);
      v84 = v86;
      v87 = *(v85 + 23);
      if (v87 >= 0)
      {
        v88 = v85;
      }

      else
      {
        v88 = v84;
      }

      if (v87 >= 0)
      {
        v89 = *(v85 + 23);
      }

      else
      {
        v89 = *(v85 + 8);
      }

      LOWORD(v161) = 261;
      *&buf = v88;
      *(&buf + 1) = v89;
      if (sub_298BAB3F0(&buf, 0))
      {
        v131 = "Recording.cpp";
        v132 = ":";
        v133 = 771;
        std::generic_category();
        v130 = 4;
        strcpy(v129, "1222");
        v134 = &v131;
        v135 = v129;
        v136 = 1026;
        v137 = &v134;
        v139 = ": ";
        v140 = 770;
        v141 = &v137;
        v142 = "Extracted shared cache, but extracted image not found at '";
        v143 = 770;
        __str.__r_.__value_.__r.__words[0] = &v141;
        __str.__r_.__value_.__r.__words[2] = v88;
        v180 = v89;
        v181 = 1282;
        __dst[0] = &__str;
        v183 = "' for ";
        v185 = 770;
        *&v186 = __dst;
        v187 = (v54 + 4);
        LOWORD(v189) = 1026;
        v190 = &v186;
        v191 = " -> ";
        LOWORD(v193) = 770;
        *&uu2 = &v190;
        v164 = v146;
        v165 = v147;
        LOWORD(v166[0]) = 1282;
        sub_298B996A4(&uu2, &v194);
        operator new();
      }

      v26 = v121;
      a4 = v122;
      v21 = v117;
      sub_298C3A8F0(v121, v88, v89, v117, v146, v147, v122);
      if (*v122)
      {
        goto LABEL_157;
      }

LABEL_196:
      if (v146)
      {
        sub_298BDB508(&buf, v146, v147);
        if (*(v54 + 55) < 0)
        {
          goto LABEL_198;
        }
      }

      else
      {
        buf = 0uLL;
        v159 = 0;
        if (*(v54 + 55) < 0)
        {
LABEL_198:
          operator delete(*v59);
        }
      }

      *v59 = buf;
      v54[6] = v159;
      *a4 = 0;
      v74 = 6;
LABEL_200:
      if (v145 < 0)
      {
        operator delete(v144[0]);
        v91 = v146;
        if (v146 != &v149)
        {
LABEL_202:
          free(v91);
        }
      }

      else
      {
        v91 = v146;
        if (v146 != &v149)
        {
          goto LABEL_202;
        }
      }

      if (v74 == 6 || !v74)
      {
        v54 = *v54;
        if (!v54)
        {
          for (i = v25[51]; i; i = *i)
          {
            v93 = *(i + 55);
            if (v93 >= 0)
            {
              v94 = (i + 4);
            }

            else
            {
              v94 = i[4];
            }

            if (v93 >= 0)
            {
              v95 = *(i + 55);
            }

            else
            {
              v95 = i[5];
            }

            if (v95 >= 6)
            {
              v96 = *(v94 + 2);
              v97 = *v94 == 1734438249;
              v98 = 29541;
            }

            else
            {
              if (v95 != 3)
              {
                goto LABEL_240;
              }

              v96 = *(v94 + 2);
              v97 = *v94 == 16191;
              v98 = 63;
            }

            if (!v97 || v96 != v98)
            {
LABEL_240:
              v137 = "Recording.cpp";
              v139 = ":";
              v140 = 771;
              std::generic_category();
              HIBYTE(v132) = 4;
              strcpy(&v131, "1242");
              v141 = &v137;
              v142 = &v131;
              v143 = 1026;
              __str.__r_.__value_.__r.__words[0] = &v141;
              __str.__r_.__value_.__r.__words[2] = ": ";
              v181 = 770;
              __dst[0] = &__str;
              v183 = "malformed manifest relpath: ";
              v185 = 770;
              *&v186 = __dst;
              v187 = v94;
              v188 = v95;
              LOWORD(v189) = 1282;
              v190 = &v186;
              v191 = " @ ";
              LOWORD(v193) = 770;
              buf = (i + 2);
              v159 = 0;
              sub_298B1FB90(&buf, &v194);
              *&uu2 = &v190;
              v164 = &v194;
              LOWORD(v166[0]) = 1026;
              sub_298B996A4(&uu2, &v134);
              operator new();
            }
          }

          goto LABEL_229;
        }

        continue;
      }

      break;
    }

LABEL_230:
    if (v173)
    {
      v100 = v168;
      v168 = 0;
      v101 = v116;
      if (v100)
      {
        (*(*v100 + 8))(v100);
      }
    }

    else
    {
      sub_298C27450(&v168);
      v101 = v116;
    }

    if (SHIBYTE(v150) < 0)
    {
      operator delete(v149);
      if (SHIBYTE(v151.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_242;
      }

LABEL_236:
      v102 = v152[0];
      v152[0] = 0;
      if (!v102)
      {
        goto LABEL_237;
      }

LABEL_243:
      sub_298C27374(v152, v102);
      if (*a4)
      {
        goto LABEL_244;
      }

LABEL_238:
      v24 = v101 + 1;
      if (v24 == v115)
      {
        v24 = v127;
        goto LABEL_246;
      }

      continue;
    }

    break;
  }

  if ((SHIBYTE(v151.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_236;
  }

LABEL_242:
  operator delete(v151.__r_.__value_.__l.__data_);
  v102 = v152[0];
  v152[0] = 0;
  if (v102)
  {
    goto LABEL_243;
  }

LABEL_237:
  if (!*a4)
  {
    goto LABEL_238;
  }

LABEL_244:
  if (v127)
  {
    v128 = v127;
    operator delete(v127);
  }

LABEL_249:
  if (v177)
  {
    (*(*v177 + 6))(v177);
    if (v177 == &v176)
    {
      (*(*v177 + 4))(v177);
    }

    else if (v177)
    {
      (*(*v177 + 5))();
    }
  }

  if (!*a4)
  {
LABEL_255:
    v103 = *a2;
    *&buf = v123;
    (*(*v103 + 48))(v103, "manifest.json", 13, sub_298C3190C, &buf);
    v104 = (*(**a2 + 64))();
    if (v105)
    {
      v106 = v104;
      v107 = v156;
      v156 = 0;
      if (v107 == v155)
      {
        (*(*v107 + 32))(v107);
      }

      else if (v107)
      {
        (*(*v107 + 40))(v107);
      }

      v108 = sub_298B227A0(1);
      v109 = v157;
      if (v157 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v110 = v108;
        if (os_signpost_enabled(v108))
        {
          LODWORD(buf) = 134349056;
          *(&buf + 4) = v106;
          _os_signpost_emit_with_name_impl(&dword_298AD8000, v110, OS_SIGNPOST_INTERVAL_END, v109, "Recording::save", "NumBytesWritten=%{public}zu", &buf, 0xCu);
        }
      }
    }
  }

LABEL_9:
  if (v156)
  {
    (*(*v156 + 48))(v156);
    if (v156 == v155)
    {
      (*(*v156 + 32))(v156);
    }

    else if (v156)
    {
      (*(*v156 + 40))();
    }
  }

  result = sub_298C27214(v123);
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C24A90(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) < 0)
  {
    sub_298AFE11C(v13, *a1, *(a1 + 8));
  }

  else
  {
    *v13 = *a1;
    v14 = *(a1 + 16);
  }

  *__p = 6;
  if (v14 >= 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v13[0];
  }

  if (v14 >= 0)
  {
    v5 = SHIBYTE(v14);
  }

  else
  {
    v5 = v13[1];
  }

  if (!sub_298B88E98(v4, v5, 0))
  {
    if (v14 >= 0)
    {
      v9 = v13;
    }

    else
    {
      v9 = v13[0];
    }

    if (v14 >= 0)
    {
      v10 = SHIBYTE(v14);
    }

    else
    {
      v10 = v13[1];
    }

    sub_298B88F28(v9, v10, v15);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    *v13 = *v15;
    v14 = v16;
  }

  *&__p[8] = *v13;
  v18 = v14;
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  sub_298B89CC0(a2, "DataKey", 7uLL);
  sub_298B891F0(a2, __p);
  --*(a2 + 8);
  if (*__p == 8)
  {
    sub_298B8A314(&__p[8]);
  }

  else if (*__p == 7)
  {
    sub_298B8A370(&__p[8]);
  }

  else if (*__p == 6 && SHIBYTE(v18) < 0)
  {
    operator delete(*&__p[8]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
    if (*(a1 + 48) != 1)
    {
      goto LABEL_35;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_35;
  }

  if (*(a1 + 47) < 0)
  {
    sub_298AFE11C(v15, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *v15 = *(a1 + 24);
    v16 = *(a1 + 40);
  }

  if (v16 >= 0)
  {
    v6 = v15;
  }

  else
  {
    v6 = v15[0];
  }

  if (v16 >= 0)
  {
    v7 = SHIBYTE(v16);
  }

  else
  {
    v7 = v15[1];
  }

  if (!sub_298B88E98(v6, v7, 0))
  {
    if (v16 >= 0)
    {
      v11 = v15;
    }

    else
    {
      v11 = v15[0];
    }

    if (v16 >= 0)
    {
      v12 = SHIBYTE(v16);
    }

    else
    {
      v12 = v15[1];
    }

    sub_298B88F28(v11, v12, __p);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    *v15 = *__p;
    v16 = *&__p[16];
  }

  *__p = 6;
  *&__p[8] = *v15;
  v18 = v16;
  sub_298B89CC0(a2, "CompressionKey", 0xEuLL);
  sub_298B891F0(a2, __p);
  --*(a2 + 8);
  if (*__p == 8)
  {
    sub_298B8A314(&__p[8]);
  }

  else if (*__p == 7)
  {
    sub_298B8A370(&__p[8]);
  }

  else if (*__p == 6 && SHIBYTE(v18) < 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_35:
  v8 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C24D64(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    while (1)
    {
      if (((v6 >> 5) + 1) >> 59)
      {
        sub_298ADDDA0();
      }

      if (v6 >> 5 != -1)
      {
        if (!(((v6 >> 5) + 1) >> 59))
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v7 = *v5;
      v8 = 32 * (v6 >> 5);
      *v8 = 4;
      *(v8 + 8) = v7;
      if (v6)
      {
        break;
      }

LABEL_31:
      v6 = v8 + 32;
      if (++v5 == a3)
      {
        goto LABEL_34;
      }
    }

    v9 = 24;
    v10 = 0;
    while (1)
    {
      v11 = *v10;
      *(v9 - 24) = v11;
      if (v11 < 5)
      {
        break;
      }

      if (v11 <= 6)
      {
        if (v11 == 6)
        {
          v13 = *(v10 + 4);
          *v9 = *(v10 + 3);
          *(v9 - 16) = v13;
          *(v10 + 2) = 0;
          *(v10 + 3) = 0;
          *(v10 + 1) = 0;
LABEL_22:
          *v10 = 0;
          goto LABEL_12;
        }

        v12 = *(v10 + 4);
        goto LABEL_11;
      }

      if (v11 == 7)
      {
        *(v9 - 16) = 0;
        *(v9 - 8) = 0;
        *v9 = 0;
        *(v9 - 16) = *(v10 + 1);
        *(v10 + 1) = 0;
        *(v9 - 8) = *(v10 + 4);
        *(v10 + 4) = 0;
        v14 = *(v9 - 4);
        *(v9 - 4) = *(v10 + 5);
        *(v10 + 5) = v14;
        v15 = *v9;
        *v9 = *(v10 + 6);
        *(v10 + 6) = v15;
        goto LABEL_22;
      }

      if (v11 == 8)
      {
        *(v9 - 16) = 0;
        *(v9 - 8) = 0;
        *v9 = 0;
        *(v9 - 16) = *(v10 + 4);
        *v9 = *(v10 + 3);
        *(v10 + 1) = 0;
        *(v10 + 2) = 0;
        *(v10 + 3) = 0;
        goto LABEL_22;
      }

LABEL_12:
      v10 += 16;
      v9 += 32;
      if (v10 == v6)
      {
        for (i = 0; i != v6; i += 4)
        {
          v17 = *i;
          if (v17 == 8)
          {
            sub_298B8A314(i + 1);
          }

          else if (v17 == 7)
          {
            sub_298B8A370(i + 1);
          }

          else if (v17 == 6 && *(i + 31) < 0)
          {
            operator delete(i[1]);
          }
        }

        goto LABEL_31;
      }
    }

    v12 = *(v10 + 4);
    *v9 = *(v10 + 3);
LABEL_11:
    *(v9 - 16) = v12;
    goto LABEL_12;
  }

  v6 = 0;
LABEL_34:
  *a1 = 8;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  return a1;
}

__n128 sub_298C25014(uint64_t a1, void *a2, void *a3)
{
  v3 = a3;
  if (*a1 == 8)
  {
    a2[1] = *a2;
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    if (v5 != v6)
    {
      sub_298C360E8(a2, (v5 - v6) >> 5);
      v6 = *(a1 + 8);
      v5 = *(a1 + 16);
    }

    v9 = v5 - v6;
    if (v5 != v6)
    {
      v10 = 0;
      v11 = v9 >> 5;
      v12 = *a2;
      if (v11 <= 1)
      {
        v11 = 1;
      }

      v13 = (v6 + 8);
      do
      {
        v32[0] = v3;
        v32[1] = 0;
        v32[2] = v10;
        v16 = *(v13 - 4);
        if (v16 == 3)
        {
          v14 = *v13;
          if (*v13 < 0)
          {
LABEL_23:
            v24 = v32;
            LODWORD(v25) = -1;
            do
            {
              v26 = v24;
              v24 = *v24;
              v25 = (v25 + 1);
            }

            while (v24);
            v27 = v26[1];
            v27[2] = "expected uint64_t";
            v27[3] = 17;
            v29 = (v27 + 4);
            v28 = v27[4];
            v30 = (v27[5] - v28) >> 4;
            if (v25 <= v30)
            {
              if (v25 < v30)
              {
                v27[5] = &v28[v25];
              }
            }

            else
            {
              sub_298B8D2B8((v27 + 4), v25 - v30);
              v28 = *v29;
            }

            if (v3)
            {
              v31 = v32;
              do
              {
                result = *(v31 + 1);
                *v28++ = result;
                v31 = *v31;
              }

              while (*v31);
            }

            return result;
          }

          v15 = v14 & 0x7FFFFFFFFFFFFF00;
        }

        else
        {
          if (v16 != 4)
          {
            goto LABEL_23;
          }

          v14 = *v13;
          v15 = *v13 & 0xFFFFFFFFFFFFFF00;
        }

        *(v12 + 8 * v10++) = v14 | v15;
        v13 += 4;
      }

      while (v11 != v10);
    }
  }

  else
  {
    LODWORD(v17) = -1;
    v18 = a3;
    do
    {
      v19 = v18;
      v18 = *v18;
      v17 = (v17 + 1);
    }

    while (v18);
    v20 = v19[1];
    v20[2] = "expected array";
    v20[3] = 14;
    v22 = (v20 + 4);
    v21 = v20[4];
    v23 = (v20[5] - v21) >> 4;
    if (v17 <= v23)
    {
      if (v17 < v23)
      {
        v20[5] = &v21[v17];
      }
    }

    else
    {
      sub_298B8D2B8((v20 + 4), v17 - v23);
      v21 = *v22;
    }

    while (*v3)
    {
      result = *(v3 + 1);
      *v21++ = result;
      v3 = *v3;
    }
  }

  return result;
}

void *sub_298C251F4(void *result, void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result;
  if (!*(a3 + 16))
  {
    *result = 0;
    return result;
  }

  v54[0] = a4;
  v54[1] = a5;
  v57 = 0;
  v60 = 0;
  v63 = 0;
  v66 = 0;
  v69 = 0;
  LOBYTE(v70) = 0;
  v71 = 0;
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  memset(v61, 0, sizeof(v61));
  v62 = 0;
  memset(v64, 0, sizeof(v64));
  v65 = 0;
  memset(v67, 0, sizeof(v67));
  v68 = 0;
  v8 = *a2;
  v53 = 10;
  strcpy(__p, "Ranges.bin");
  sub_298C27CB8(result, v8, v55, __p, *(a3 + 88));
  if (v53 < 0)
  {
    operator delete(__p[0]);
    if (*v5)
    {
      return sub_298BCE30C(v54);
    }
  }

  else if (*v5)
  {
    return sub_298BCE30C(v54);
  }

  v9 = *a2;
  v51 = 13;
  strcpy(v50, "UnitMarks.bin");
  sub_298C27CB8(v5, v9, v58, v50, *(a3 + 104));
  if (v51 < 0)
  {
    operator delete(v50[0]);
    if (*v5)
    {
      return sub_298BCE30C(v54);
    }
  }

  else if (*v5)
  {
    return sub_298BCE30C(v54);
  }

  v10 = *a2;
  HIBYTE(v49[2]) = 17;
  strcpy(v49, "ContextStarts.bin");
  sub_298C27CB8(v5, v10, v61, v49, *(a3 + 120));
  if (SHIBYTE(v49[2]) < 0)
  {
    operator delete(v49[0]);
    if (*v5)
    {
      return sub_298BCE30C(v54);
    }
  }

  else if (*v5)
  {
    return sub_298BCE30C(v54);
  }

  v11 = *a2;
  v48 = 12;
  strcpy(v47, "Counters.bin");
  sub_298C27CB8(v5, v11, v64, v47, *(a3 + 136));
  if (v48 < 0)
  {
    operator delete(v47[0]);
    if (*v5)
    {
      return sub_298BCE30C(v54);
    }
  }

  else if (*v5)
  {
    return sub_298BCE30C(v54);
  }

  v12 = *a2;
  v46 = 12;
  strcpy(v45, "Messages.bin");
  sub_298C27CB8(v5, v12, v67, v45, *(a3 + 152));
  if (v46 < 0)
  {
    operator delete(v45[0]);
    if (!*v5)
    {
      goto LABEL_12;
    }
  }

  else if (!*v5)
  {
LABEL_12:
    v70 = *(a3 + 48);
    v71 = *(a3 + 64);
    v13 = a2[1];
    v14 = v13[1];
    v15 = v13[2];
    if (v14 >= v15)
    {
      v17 = 0xCCCCCCCCCCCCCCCDLL * ((v14 - *v13) >> 6);
      if (v17 + 1 > 0xCCCCCCCCCCCCCCLL)
      {
        sub_298ADDDA0();
      }

      v18 = 0xCCCCCCCCCCCCCCCDLL * ((v15 - *v13) >> 6);
      v19 = 2 * v18;
      if (2 * v18 <= v17 + 1)
      {
        v19 = v17 + 1;
      }

      if (v18 >= 0x66666666666666)
      {
        v20 = 0xCCCCCCCCCCCCCCLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        if (v20 <= 0xCCCCCCCCCCCCCCLL)
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      sub_298BCDFE0((v14 - *v13) >> 6 << 6, v54);
      v21 = *v13;
      v22 = v13[1];
      v23 = 320 * v17 - &v22[-*v13];
      v16 = 320 * v17 + 320;
      if (v22 != *v13)
      {
        v24 = 0;
        v25 = -64 * (&v22[-*v13] >> 6) + 320 * v17;
        do
        {
          v27 = v25 + v24;
          v28 = &v21[v24];
          *v27 = *&v21[v24];
          v29 = *&v21[v24 + 16];
          *(v27 + 32) = *&v21[v24 + 32];
          *(v27 + 16) = v29;
          *(v28 + 3) = 0;
          *(v28 + 4) = 0;
          *(v28 + 2) = 0;
          *(v25 + v24 + 40) = 0;
          *(v27 + 64) = 0;
          if (v21[v24 + 64] == 1)
          {
            v30 = *(v28 + 40);
            *(v25 + v24 + 56) = *(v28 + 7);
            *(v25 + v24 + 40) = v30;
            *(v28 + 6) = 0;
            *(v28 + 7) = 0;
            *(v28 + 5) = 0;
            *(v27 + 64) = 1;
          }

          v31 = *(v28 + 72);
          *(v27 + 88) = *(v28 + 11);
          *(v27 + 72) = v31;
          *(v28 + 10) = 0;
          *(v28 + 11) = 0;
          *(v28 + 9) = 0;
          *(v27 + 96) = 0;
          *(v27 + 120) = 0;
          if (v28[120] == 1)
          {
            v32 = &v21[v24];
            v33 = *&v21[v24 + 96];
            *(v27 + 112) = *&v21[v24 + 112];
            *(v27 + 96) = v33;
            *(v32 + 13) = 0;
            *(v32 + 14) = 0;
            *(v32 + 12) = 0;
            *(v27 + 120) = 1;
          }

          v34 = v25 + v24;
          v35 = *(v28 + 8);
          *(v34 + 144) = *(v28 + 18);
          *(v34 + 128) = v35;
          *(v28 + 17) = 0;
          *(v28 + 18) = 0;
          *(v28 + 16) = 0;
          *(v25 + v24 + 152) = 0;
          *(v34 + 176) = 0;
          if (v28[176] == 1)
          {
            v36 = &v21[v24];
            v37 = *&v21[v24 + 152];
            *(v25 + v24 + 168) = *&v21[v24 + 168];
            *(v25 + v24 + 152) = v37;
            *(v36 + 20) = 0;
            *(v36 + 21) = 0;
            *(v36 + 19) = 0;
            *(v34 + 176) = 1;
          }

          v38 = *(v28 + 184);
          *(v34 + 200) = *(v28 + 25);
          *(v34 + 184) = v38;
          *(v28 + 24) = 0;
          *(v28 + 25) = 0;
          *(v28 + 23) = 0;
          *(v34 + 208) = 0;
          *(v34 + 232) = 0;
          if (v28[232] == 1)
          {
            v39 = &v21[v24];
            v40 = *&v21[v24 + 208];
            *(v34 + 224) = *&v21[v24 + 224];
            *(v34 + 208) = v40;
            *(v39 + 27) = 0;
            *(v39 + 28) = 0;
            *(v39 + 26) = 0;
            *(v34 + 232) = 1;
          }

          v41 = v25 + v24;
          v42 = *(v28 + 15);
          *(v41 + 256) = *(v28 + 32);
          *(v41 + 240) = v42;
          *(v28 + 31) = 0;
          *(v28 + 32) = 0;
          *(v28 + 30) = 0;
          *(v41 + 264) = 0;
          *(v41 + 288) = 0;
          if (v28[288] == 1)
          {
            v43 = &v21[v24];
            v44 = *&v21[v24 + 264];
            *(v41 + 280) = *&v21[v24 + 280];
            *(v41 + 264) = v44;
            *(v43 + 34) = 0;
            *(v43 + 35) = 0;
            *(v43 + 33) = 0;
            *(v41 + 288) = 1;
          }

          v26 = *(v28 + 296);
          *(v41 + 312) = *(v28 + 39);
          *(v41 + 296) = v26;
          v24 += 320;
        }

        while (v28 + 320 != v22);
        do
        {
          v21 = (sub_298BCE30C(v21) + 320);
        }

        while (v21 != v22);
        v21 = *v13;
      }

      *v13 = v23;
      v13[1] = v16;
      v13[2] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      v16 = sub_298BCDFE0(v14, v54) + 320;
    }

    v13[1] = v16;
    *v5 = 0;
  }

  return sub_298BCE30C(v54);
}

uint64_t sub_298C26540(void *a1, void **a2, uint64_t a3)
{
  v3 = a3;
  v21[10] = *MEMORY[0x29EDCA608];
  v6 = *a2;
  v7 = *(a3 + 23);
  v8 = *(a3 + 8);
  if (v7 < 0)
  {
    a3 = *a3;
  }

  if (v7 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  result = sub_298C28394(v21, v6, a3, v9);
  if (*(v3 + 48) == 1)
  {
    v13 = *(v3 + 24);
    v12 = v3 + 24;
    v11 = v13;
    v14 = *(v12 + 23);
    if (v14 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = v11;
    }

    v16 = *(v12 + 8);
    if (v14 >= 0)
    {
      v17 = *(v12 + 23);
    }

    else
    {
      v17 = *(v12 + 8);
    }

    sub_298C28394(&v20, *a2, v15, v17);
    v19 = v20;
    v20 = 0;
    sub_298C39D18(&v19);
  }

  *a1 = v21[0];
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C26A30(uint64_t result)
{
  v1 = *(result + 96);
  *(result + 96) = 0;
  if (v1)
  {
    v3 = result;
    (*(*v1 + 8))(v1);
    result = v3;
  }

  v2 = *(result + 8);
  *(result + 8) = 0;
  if (v2)
  {
    v4 = result;
    MEMORY[0x29C2945F0](v2, 0x1020C40A2194CFDLL);
    return v4;
  }

  return result;
}

void sub_298C26AD4(uint64_t a1)
{
  sub_298C27214(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298C26B0C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_298C26B60(a1, a2);
  *(a1 + 24) = a1 + 40;
  *(a1 + 32) = 0;
  if (*(a2 + 32))
  {
    sub_298C26BE0(a1 + 24, a2 + 24);
  }

  return a1;
}

void *sub_298C26B60(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x29C2945E0](*a1, 8);
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    v6 = operator new(8 * v5, 8uLL);
    *a1 = v6;
    *(a1 + 8) = *(a2 + 8);
    v7 = *a2;
    v8 = 8 * *(a1 + 16);

    return memcpy(v6, v7, v8);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_298C26BE0(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(a2 + 8);
    v3 = *(result + 8);
    if (v3 >= v2)
    {
      if (v2)
      {
        v6 = result;
        memmove(*result, *a2, 8 * v2);
LABEL_12:
        result = v6;
      }

LABEL_13:
      *(result + 8) = v2;
      return result;
    }

    if (*(result + 12) < v2)
    {
      *(result + 8) = 0;
      v7 = a2;
      v8 = result;
      sub_298B90A44(result, (result + 16), v2, 8);
      a2 = v7;
      result = v8;
    }

    else if (v3)
    {
      v4 = result;
      v5 = a2;
      memmove(*result, *a2, 8 * v3);
      a2 = v5;
      result = v4;
      goto LABEL_10;
    }

    v3 = 0;
LABEL_10:
    v9 = *(a2 + 8);
    v10 = v9 - v3;
    if (v9 != v3)
    {
      v11 = (*a2 + 8 * v3);
      v12 = (*result + 8 * v3);
      v6 = result;
      memcpy(v12, v11, 8 * v10);
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  return result;
}

uuid_t sub_298C26CD8(uuid_t uu, uint64_t a2)
{
  *uu = 0;
  *(uu + 1) = 0;
  if (*a2)
  {
    uuid_copy(uu, *a2);
  }

  else
  {
    uuid_parse(*(a2 + 8), uu);
  }

  return uu;
}

uuid_t sub_298C26D24(uuid_t uu, const unsigned __int8 *a2, char *in, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  *(uu + 2) = a4;
  uu[24] = a5;
  *(uu + 25) = a6;
  *(uu + 33) = -1;
  if (a2)
  {
    uuid_copy(uu, a2);
  }

  else
  {
    uuid_parse(in, uu);
  }

  return uu;
}

uint64_t sub_298C26D78(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (sub_298B89FD8(a1, a2, &v4))
  {
    return v4;
  }

  else
  {
    return *a1 + 56 * *(a1 + 16);
  }
}

uint64_t sub_298C26DD4(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!sub_298C26E50(a1, a2, v2 + 4))
      {
        if (!sub_298C26E50(a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

BOOL sub_298C26E50(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t sub_298C26EBC(uint64_t a1, const void **a2)
{
  result = *sub_298C26F78(a1, &v3, a2);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_298C26F78(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_298C26E50(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_298C26E50(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t sub_298C27014(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_298C270C0(v1 + 32);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_298C27060(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_298AFE11C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
  }

  v5 = *a3;
  *a3 = 0;
  *(a1 + 24) = v5;
  return a1;
}

uint64_t sub_298C270C0(uint64_t a1)
{
  sub_298C2FC24((a1 + 24), 0);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_298C27104(uint64_t a1)
{
  sub_298C27164((a1 + 136));
  if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_298C27164(void *result)
{
  v1 = result[6];
  result[6] = 0;
  if (v1)
  {
    v4 = result;
    (*(*v1 + 16))(v1);
    result = v4;
  }

  v2 = result[3];
  if (v2)
  {
    result[4] = v2;
    v3 = result;
    operator delete(v2);
    return v3;
  }

  return result;
}

uint64_t sub_298C271E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_298B9BCEC(a2, *a1, *(a1 + 8));
  *a3 = 0;
  return result;
}

uint64_t sub_298C27214(uint64_t a1)
{
  *a1 = &unk_2A1F1F3E8;
  v2 = *(a1 + 152);
  if (v2)
  {
    sub_298BF34C8(v2);
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  sub_298C272B0(a1 + 56, *(a1 + 64));
  v5 = *(a1 + 48);
  if (v5)
  {
    sub_298BF34C8(v5);
  }

  sub_298C27314(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_298C272B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298C272B0(a1, *a2);
    sub_298C272B0(a1, a2[1]);
    v5 = a2[6];
    if (v5)
    {
      sub_298BF34C8(v5);
    }

    operator delete(a2);
  }
}

void sub_298C27314(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_298C27314(a1, *a2);
    sub_298C27314(a1, a2[1]);
    sub_298C270C0((a2 + 4));

    operator delete(a2);
  }
}

void sub_298C27374(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + 64);
    v3 = *(a2 + 64);
    *v2 = 0;
    if (v3)
    {
      sub_298C286AC(v2, v3);
    }

    JUMPOUT(0x29C2945F0);
  }
}

uint64_t sub_298C273D4(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v3 = v2 - 1;
    do
    {
      v4 = *v3;
      *v3 = 0;
      if (v4)
      {
        v6 = result;
        v7 = a2;
        sub_298C27374(v3, v4);
        result = v6;
        a2 = v7;
      }
    }

    while (v3-- != a2);
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_298C27450(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 55) < 0)
      {
        v6 = v2;
        operator delete(v2[4]);
        v2 = v6;
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uuid_t sub_298C274C4(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = *a4;
  v18 = *(a4 + 2);
  v5 = *a1;
  result = sub_298C26CD8(uu2, &v17);
  v7 = v5[1];
  if (v7)
  {
    v8 = v20 ^ *uu2;
    v9 = vcnt_s8(v7);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] <= 1uLL)
    {
      v10 = (*&v7 - 1) & v8;
    }

    else
    {
      v10 = v8 < *&v7 ? v20 ^ *uu2 : v8 % *&v7;
    }

    v11 = *(*v5 + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (*v11)
      {
        if (v9.u32[0] < 2uLL)
        {
          v13 = *&v7 - 1;
          while (1)
          {
            v16 = *(v12 + 1);
            if (v16 == v8)
            {
              result = uuid_compare(v12 + 16, uu2);
              if (!result)
              {
                goto LABEL_16;
              }
            }

            else if ((v16 & v13) != v10)
            {
              goto LABEL_15;
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_15;
            }
          }
        }

        do
        {
          v14 = *(v12 + 1);
          if (v14 == v8)
          {
            result = uuid_compare(v12 + 16, uu2);
            if (!result)
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (v14 >= *&v7)
            {
              v14 %= *&v7;
            }

            if (v14 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

LABEL_15:
  **(a1 + 8) = 1;
LABEL_16:
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298C27634(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *v1;
  v4 = v1[1];
  v5 = *a1[2];
  operator new();
}

uint64_t sub_298C27724(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = *(a4 + 2);
  v13 = 261;
  v12[0] = a2;
  v12[1] = a3;
  result = sub_298BAB3F0(v12, 0);
  if (result)
  {
    v8 = *a1;
    v15 = v10;
    v16 = v11;
    v9 = 2 * (**(a1 + 8) + a5);
    LOBYTE(v12[0]) = 0;
    v14 = 0;
    sub_298C16C08(v8, 3, &v15, v9, 3);
  }

  return result;
}

void sub_298C27804(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = (a1 + 8);
  v7 = *(a1 + 8);
  *a1 = a1 + 8;
  *(v7 + 16) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v23 = v10[1];
        if (!v23)
        {
          break;
        }

        do
        {
          v10 = v23;
          v23 = *v23;
        }

        while (v23);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 != a3)
  {
    v14 = a2;
    while (1)
    {
      v12 = v10;
      v9[4] = v14[4];
      if (v9 != v14)
      {
        sub_298B805BC(v9 + 5, v14[5], v14[6], (v14[6] - v14[5]) >> 3);
      }

      v15 = *v8;
      v16 = (a1 + 8);
      v17 = (a1 + 8);
      if (*v8)
      {
        break;
      }

LABEL_28:
      *v9 = 0;
      v9[1] = 0;
      v9[2] = v16;
      *v17 = v9;
      v18 = **a1;
      if (v18)
      {
        goto LABEL_29;
      }

LABEL_30:
      sub_298AEFAFC(*(a1 + 8), v9);
      ++*(a1 + 16);
      if (v10)
      {
        v10 = v10[2];
        if (v10)
        {
          v21 = *v10;
          if (*v10 == v12)
          {
            *v10 = 0;
            while (1)
            {
              v22 = v10[1];
              if (!v22)
              {
                break;
              }

              do
              {
                v10 = v22;
                v22 = *v22;
              }

              while (v22);
            }
          }

          else
          {
            for (v10[1] = 0; v21; v21 = v10[1])
            {
              do
              {
                v10 = v21;
                v21 = *v21;
              }

              while (v21);
            }
          }
        }
      }

      else
      {
        v10 = 0;
      }

      v19 = v14[1];
      if (v19)
      {
        do
        {
          v4 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v4 = v14[2];
          v20 = *v4 == v14;
          v14 = v4;
        }

        while (!v20);
      }

      if (v12)
      {
        v14 = v4;
        v9 = v12;
        if (v4 != a3)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    do
    {
      while (1)
      {
        v16 = v15;
        if (v9[4] >= v15[4])
        {
          break;
        }

        v15 = *v15;
        v17 = v16;
        if (!*v16)
        {
          goto LABEL_28;
        }
      }

      v15 = v15[1];
    }

    while (v15);
    v17 = v16 + 1;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v16;
    v16[1] = v9;
    v18 = **a1;
    if (!v18)
    {
      goto LABEL_30;
    }

LABEL_29:
    *a1 = v18;
    v9 = *v17;
    goto LABEL_30;
  }

  v12 = v9;
LABEL_13:
  sub_298BCE690(a1, v12);
  if (v10)
  {
    for (i = v10[2]; i; i = i[2])
    {
      v10 = i;
    }

    sub_298BCE690(a1, v10);
  }

LABEL_17:
  if (v4 != a3)
  {
    operator new();
  }
}

void sub_298C27B6C(uint64_t a1)
{
  if (*(a1 + 176) != 1)
  {
    return;
  }

  sub_298BCE62C(a1 + 152, *(a1 + 160));
  sub_298BCE690(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
    if (*(a1 + 80) != 1)
    {
      goto LABEL_4;
    }

LABEL_9:
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    goto LABEL_4;
  }

  if (*(a1 + 80) == 1)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_298BCE714(a1 + 32, *(a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *(a1 + 176) = 0;
}

uint64_t sub_298C27C14(uint64_t a1)
{
  sub_298BCE62C(a1 + 152, *(a1 + 160));
  sub_298BCE690(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
    if (*(a1 + 80) != 1)
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 80) != 1)
  {
    goto LABEL_3;
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

LABEL_3:
  sub_298BCE714(a1 + 32, *(a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_298C27CB8(void *a1, void *a2, uint64_t a3, const void **a4, uint64_t a5)
{
  v53 = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v6 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_97;
  }

  v10 = a2;
  if (v6 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v49, 0, sizeof(v49));
  *(&v49.__r_.__value_.__s + 23) = v6 + 1;
  if (v6)
  {
    if ((v5 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    memmove(&v49, a2, v6);
  }

  *(&v49.__r_.__value_.__l.__data_ + v6) = 47;
  std::to_string(&v52, 0xCCCCCCCCCCCCCCCDLL * ((*(v10[4] + 8) - *v10[4]) >> 6));
  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v52;
  }

  else
  {
    v12 = v52.__r_.__value_.__r.__words[0];
  }

  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v52.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v52.__r_.__value_.__l.__size_;
  }

  v14 = std::string::append(&v49, v12, size);
  v15 = v14->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = *&v14->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v50, "-");
  __p = *v16;
  v16->__r_.__value_.__r.__words[0] = 0;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  if ((SHIBYTE(v50.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_93:
    operator delete(v52.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_94:
    operator delete(v49.__r_.__value_.__l.__data_);
    goto LABEL_20;
  }

  operator delete(v50.__r_.__value_.__l.__data_);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_93;
  }

LABEL_19:
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_94;
  }

LABEL_20:
  v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = __p.__r_.__value_.__l.__size_;
  }

  if (*(a4 + 23) >= 0)
  {
    v19 = *(a4 + 23);
  }

  else
  {
    v19 = a4[1];
  }

  if (v19 + v18 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_97;
  }

  if (v19 + v18 > 0x16)
  {
    operator new();
  }

  memset(&v50, 0, sizeof(v50));
  *(&v50.__r_.__value_.__s + 23) = v19 + v18;
  if (v18)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    memmove(&v50, p_p, v18);
  }

  v21 = &v50 + v18;
  if (v19)
  {
    if (*(a4 + 23) >= 0)
    {
      v22 = a4;
    }

    else
    {
      v22 = *a4;
    }

    memmove(v21, v22, v19);
  }

  v21[v19] = 0;
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v50;
  v23 = *(a5 + 8);
  v24 = v23 == 8;
  if (v23 == 8)
  {
    v25 = a5;
  }

  else
  {
    v25 = 0;
  }

  v48 = v25;
  if (!v24)
  {
    v26 = *(a3 + 23);
    if (v26 >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    if (v26 >= 0)
    {
      v28 = *(a3 + 23);
    }

    else
    {
      v28 = *(a3 + 8);
    }

    (*(*v10[3] + 56))(v10[3], v27, v28, a5);
    goto LABEL_89;
  }

  if (v18 + 11 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_97:
    sub_298ADDDA0();
  }

  if (v18 + 11 >= 0x17)
  {
    operator new();
  }

  memset(&v49, 0, sizeof(v49));
  *(&v49.__r_.__value_.__s + 23) = v18 + 11;
  if (v18)
  {
    if (v17 >= 0)
    {
      v29 = &__p;
    }

    else
    {
      v29 = __p.__r_.__value_.__r.__words[0];
    }

    memmove(&v49, v29, v18);
  }

  strcpy(&v49 + v18, "Compression");
  v30 = std::string::append(&v49, "-");
  v31 = v30->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = *&v30->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = *(a4 + 23);
  if (v32 >= 0)
  {
    v33 = a4;
  }

  else
  {
    v33 = *a4;
  }

  if (v32 >= 0)
  {
    v34 = *(a4 + 23);
  }

  else
  {
    v34 = a4[1];
  }

  v35 = std::string::append(&v50, v33, v34);
  v36 = v35->__r_.__value_.__r.__words[0];
  v52.__r_.__value_.__r.__words[0] = v35->__r_.__value_.__l.__size_;
  *(v52.__r_.__value_.__r.__words + 7) = *(&v35->__r_.__value_.__r.__words[1] + 7);
  v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (*(a3 + 48) == 1)
  {
    if (*(a3 + 47) < 0)
    {
      operator delete(*(a3 + 24));
    }

    v38 = v52.__r_.__value_.__r.__words[0];
    *(a3 + 24) = v36;
    *(a3 + 32) = v38;
    *(a3 + 39) = *(v52.__r_.__value_.__r.__words + 7);
    *(a3 + 47) = v37;
  }

  else
  {
    v39 = v52.__r_.__value_.__r.__words[0];
    *(a3 + 24) = v36;
    *(a3 + 32) = v39;
    *(a3 + 39) = *(v52.__r_.__value_.__r.__words + 7);
    *(a3 + 47) = v37;
    *(a3 + 48) = 1;
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

LABEL_96:
    operator delete(v49.__r_.__value_.__l.__data_);
    goto LABEL_74;
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_96;
  }

LABEL_74:
  v40 = v10[3];
  v41 = *(a3 + 47);
  if (v41 < 0)
  {
    v42 = *(a3 + 24);
  }

  if (v41 >= 0)
  {
    v43 = *(a3 + 47);
  }

  else
  {
    v43 = *(a3 + 32);
  }

  v49.__r_.__value_.__r.__words[0] = &v48;
  (*(*v40 + 48))(&v50);
  if (v50.__r_.__value_.__r.__words[0])
  {
    *a1 = v50.__r_.__value_.__r.__words[0];
  }

  else
  {
    v44 = *(a3 + 23);
    if (v44 >= 0)
    {
      v45 = a3;
    }

    else
    {
      v45 = *a3;
    }

    if (v44 >= 0)
    {
      v46 = *(a3 + 23);
    }

    else
    {
      v46 = *(a3 + 8);
    }

    (*(*v10[3] + 56))(v10[3], v45, v46, *(v48 + 24));
    if (v50.__r_.__value_.__r.__words[0])
    {
      (*(*v50.__r_.__value_.__l.__data_ + 8))(v50.__r_.__value_.__r.__words[0]);
    }
  }

LABEL_89:
  if (v17 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v47 = *MEMORY[0x29EDCA608];
}

void sub_298C282D8(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8[20] = *MEMORY[0x29EDCA608];
  v8[17] = 0;
  v8[18] = a2;
  v8[19] = 2;
  v8[16] = 0;
  v7[0] = v8;
  v7[1] = 0x1000000001;
  v8[0] = 0;
  v4 = **a1 + 32;
  v6[0] = v7;
  v6[1] = v4;
  sub_298B89BA0(v7);
  sub_298C3BBE4(v6);
  sub_298B89C2C(v7);
  *a3 = 0;
  if (v7[0] != v8)
  {
    free(v7[0]);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298C28394(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x29EDCA608];
  if (!a4)
  {
    operator new();
  }

  (*(**a2 + 32))(&v21);
  if ((v26 & 1) != 0 && (v6 = v21, v21 = 0, v6))
  {
    v7 = a2[1];
    v8 = *v7;
    *v7 = 0;
    v19 = v6;
    v20 = v8;
    sub_298ADE6E8(&v20, &v19, &v18);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    *a2[1] = v18;
    *a1 = 0;
  }

  else
  {
    sub_298AFF468(&v21, &v18);
    if (v18)
    {
      v9 = a2[1];
      v10 = *v9;
      *v9 = 0;
      v11 = v18;
      v18 = 0;
      v19 = v11;
      v20 = v10;
      sub_298ADE6E8(&v20, &v19, &v17);
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }

      if (v20)
      {
        (*(*v20 + 8))(v20);
      }

      *a2[1] = v17;
      *a1 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }

    else
    {
      v12 = __p;
      v13 = SHIBYTE(v24);
      __p = 0;
      v23 = 0;
      v14 = v25;
      v24 = 0;
      v25 = 0;
      *a1 = v14;
      if (v13 < 0)
      {
        operator delete(v12);
      }
    }
  }

  result = sub_298C13D54(&v21);
  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298C28618(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *result;
  *result = 0;
  if (v1)
  {
    if (v2)
    {
      v3 = result;
      (*(*v2 + 8))(v2);
      return v3;
    }
  }

  else if (v2)
  {
    v3 = result;
    v4 = sub_298AEAF14(v2);
    MEMORY[0x29C2945F0](v4, 0x1070C401CED0764);
    return v3;
  }

  return result;
}

void sub_298C286AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }

    JUMPOUT(0x29C2945F0);
  }
}

BOOL sub_298C28714(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_3:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = *(uu1 + 2);
      v7 = v5[6];
      if (v6 != v7)
      {
        if (v6 >= v7)
        {
          goto LABEL_12;
        }

        goto LABEL_6;
      }

      if (uuid_compare(uu1, v5 + 32))
      {
        break;
      }

      if (*(uu1 + 3) >= v5[7])
      {
        goto LABEL_12;
      }

LABEL_6:
      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_3;
      }
    }

    if (uuid_compare(uu1, v5 + 32) < 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = sub_298C2886C((v5 + 4), uu1);
    if (!result)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  if (!*v3)
  {
    goto LABEL_3;
  }

  return result;
}

BOOL sub_298C2886C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  if (uuid_compare(a1, a2))
  {
    return uuid_compare(a1, a2) >> 31;
  }

  return *(a1 + 24) < *(a2 + 24);
}

uint64_t sub_298C288D8(uint64_t a1, unsigned __int8 *uu1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_3:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v7 = *(uu1 + 2);
      v8 = v6[6];
      if (v7 != v8)
      {
        if (v7 >= v8)
        {
          goto LABEL_12;
        }

        goto LABEL_6;
      }

      if (uuid_compare(uu1, v6 + 32))
      {
        break;
      }

      if (*(uu1 + 3) >= v6[7])
      {
        goto LABEL_12;
      }

LABEL_6:
      v2 = *v6;
      v3 = v6;
      if (!*v6)
      {
        goto LABEL_3;
      }
    }

    if (uuid_compare(uu1, v6 + 32) < 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    if (!sub_298C2886C((v6 + 4), uu1))
    {
      break;
    }

    v3 = v6 + 1;
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  if (!*v3)
  {
    goto LABEL_3;
  }

  return *v3;
}

uint64_t sub_298C28A34(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v84 = *(a2 - 1);
        v85 = *v7;
        if (*(v84 + 8) < *(*v7 + 8))
        {
          *v7 = v84;
          *(a2 - 1) = v85;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v92 = v7 + 1;
      v93 = v7[1];
      v94 = v7 + 2;
      v95 = v7[2];
      v96 = *(v93 + 8);
      v97 = *v7;
      v98 = *(*v7 + 8);
      v99 = *(v95 + 8);
      if (v96 >= v98)
      {
        if (v99 < v96)
        {
          *v92 = v95;
          *v94 = v93;
          v100 = v7;
          v101 = v7 + 1;
          result = v93;
          if (v99 < v98)
          {
            goto LABEL_201;
          }

          goto LABEL_202;
        }

LABEL_214:
        v93 = v95;
        v151 = *(a2 - 1);
        if (*(v151 + 8) >= *(v93 + 8))
        {
          return result;
        }
      }

      else
      {
        v100 = v7;
        v101 = v7 + 2;
        result = *v7;
        if (v99 >= v96)
        {
          *v7 = v93;
          v7[1] = v97;
          v100 = v7 + 1;
          v101 = v7 + 2;
          result = v97;
          if (v99 >= v98)
          {
            goto LABEL_214;
          }
        }

LABEL_201:
        *v100 = v95;
        *v101 = v97;
        v93 = result;
LABEL_202:
        v151 = *(a2 - 1);
        if (*(v151 + 8) >= *(v93 + 8))
        {
          return result;
        }
      }

      *v94 = v151;
      *(a2 - 1) = v93;
      v157 = *v94;
      v158 = *(v157 + 8);
      v159 = *v92;
      if (v158 < *(v159 + 8))
      {
        v7[1] = v157;
        v7[2] = v159;
        v160 = *v7;
        if (v158 < *(*v7 + 8))
        {
          *v7 = v157;
          v7[1] = v160;
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return sub_298C297EC(v7, v7 + 1, v7 + 2, v7 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v102 = v7 + 1;
      v104 = v7 == a2 || v102 == a2;
      if (a4)
      {
        if (!v104)
        {
          v105 = 0;
          v106 = v7;
          do
          {
            v107 = *v106;
            v108 = v106[1];
            v106 = v102;
            if (*(v108 + 8) < *(v107 + 8))
            {
              *v102 = 0;
              v109 = v105 * 8;
              v110 = &v7[v105];
              *v110 = 0;
              v110[1] = v107;
              while (v109)
              {
                v111 = (v7 + v109);
                v112 = *(v7 + v109 - 8);
                if (*(v108 + 8) >= *(v112 + 8))
                {
                  goto LABEL_142;
                }

                v113 = *v110;
                v109 -= 8;
                v110 = (v7 + v109);
                *v110 = 0;
                v110[1] = v112;
                if (v113)
                {
                  (*(*v113 + 8))(v113);
                }
              }

              v111 = v7;
LABEL_142:
              result = *v111;
              *v111 = v108;
              if (result)
              {
                result = (*(*result + 8))(result);
              }
            }

            v102 = v106 + 1;
            ++v105;
          }

          while (v106 + 1 != a2);
        }
      }

      else if (!v104)
      {
        do
        {
          v152 = *v7;
          v153 = v7[1];
          v7 = v102;
          v154 = *(v153 + 8);
          if (v154 < *(v152 + 8))
          {
            result = 0;
            *v7 = 0;
            v155 = v7;
            do
            {
              *(v155 - 1) = 0;
              *v155 = v152;
              if (result)
              {
                (*(*result + 8))(result);
                v154 = *(v153 + 8);
              }

              v156 = *--v155;
              result = v156;
              v152 = *(v155 - 1);
            }

            while (v154 < *(v152 + 8));
            *v155 = v153;
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }

          v102 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return result;
      }

      v114 = v10 >> 1;
      v115 = v10 >> 1;
      while (2)
      {
        v116 = v115;
        if (v114 >= v115)
        {
          v117 = (2 * v115) | 1;
          v118 = &v7[v117];
          if (2 * v116 + 2 >= v9)
          {
            v120 = &v7[v116];
            v121 = *v120;
            if (*(*v118 + 8) >= *(*v120 + 8))
            {
LABEL_154:
              *v120 = 0;
              v122 = *v118;
              while (1)
              {
                v123 = v118;
                *v118 = 0;
                v124 = *v120;
                *v120 = v122;
                if (v124)
                {
                  (*(*v124 + 8))(v124);
                }

                if (v114 < v117)
                {
                  break;
                }

                v118 = &v7[(2 * v117) | 1];
                if (2 * v117 + 2 < v9)
                {
                  v122 = *v118;
                  if (*(*v118 + 8) >= *(v118[1] + 8))
                  {
                    v117 = (2 * v117) | 1;
                  }

                  else
                  {
                    v122 = v118[1];
                    ++v118;
                    v117 = 2 * v117 + 2;
                  }

                  v120 = v123;
                  if (*(v122 + 8) < *(v121 + 8))
                  {
                    break;
                  }
                }

                else
                {
                  v122 = *v118;
                  v117 = (2 * v117) | 1;
                  v120 = v123;
                  if (*(*v118 + 8) < *(v121 + 8))
                  {
                    break;
                  }
                }
              }

              v125 = *v123;
              *v123 = v121;
              if (v125)
              {
                (*(*v125 + 8))(v125);
              }
            }
          }

          else
          {
            v119 = *v118;
            if (*(*v118 + 8) < *(v118[1] + 8))
            {
              v119 = v118[1];
              ++v118;
              v117 = 2 * v116 + 2;
            }

            v120 = &v7[v116];
            v121 = *v120;
            if (*(v119 + 8) >= *(*v120 + 8))
            {
              goto LABEL_154;
            }
          }
        }

        v115 = v116 - 1;
        if (v116)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v127 = 0;
        v128 = *v7;
        *v7 = 0;
        v129 = v7;
LABEL_173:
        v132 = &v129[v127];
        v133 = v132 + 1;
        if (2 * v127 + 2 >= v9)
        {
          v130 = *v133;
          v127 = (2 * v127) | 1;
          *v133 = 0;
          v131 = *v129;
          *v129 = v130;
          if (!v131)
          {
            goto LABEL_172;
          }
        }

        else
        {
          v136 = v132[2];
          v135 = v132 + 2;
          v134 = v136;
          v137 = *(*(v135 - 1) + 8);
          v138 = *(v136 + 8);
          if (v137 < v138)
          {
            v133 = v135;
          }

          else
          {
            v134 = *(v135 - 1);
          }

          if (v137 >= v138)
          {
            v127 = (2 * v127) | 1;
          }

          else
          {
            v127 = 2 * v127 + 2;
          }

          *v133 = 0;
          v131 = *v129;
          *v129 = v134;
          if (!v131)
          {
LABEL_172:
            v129 = v133;
            if (v127 > ((v9 - 2) >> 1))
            {
              if (v133 == --a2)
              {
                result = *v133;
                *v133 = v128;
                if (!result)
                {
                  goto LABEL_168;
                }

LABEL_167:
                result = (*(*result + 8))(result);
                goto LABEL_168;
              }

              v139 = *a2;
              *a2 = 0;
              v140 = *v133;
              *v133 = v139;
              if (v140)
              {
                (*(*v140 + 8))(v140);
              }

              result = *a2;
              *a2 = v128;
              if (result)
              {
                result = (*(*result + 8))(result);
              }

              v141 = v133 + 1 - v7;
              v126 = v141 < 2;
              v142 = v141 - 2;
              if (!v126)
              {
                v143 = v142 >> 1;
                v144 = &v7[v142 >> 1];
                v145 = *v133;
                if (*(*v144 + 8) < *(*v133 + 8))
                {
                  *v133 = 0;
                  v146 = *v144;
                  do
                  {
                    v147 = v144;
                    *v144 = 0;
                    v148 = *v133;
                    *v133 = v146;
                    if (v148)
                    {
                      (*(*v148 + 8))(v148);
                    }

                    if (!v143)
                    {
                      break;
                    }

                    v143 = (v143 - 1) >> 1;
                    v144 = &v7[v143];
                    v146 = *v144;
                    v133 = v147;
                  }

                  while (*(*v144 + 8) < *(v145 + 8));
                  result = *v147;
                  *v147 = v145;
                  if (result)
                  {
                    goto LABEL_167;
                  }
                }
              }

LABEL_168:
              v126 = v9-- <= 2;
              if (v126)
              {
                return result;
              }

              continue;
            }

            goto LABEL_173;
          }
        }

        break;
      }

      (*(*v131 + 8))(v131);
      goto LABEL_172;
    }

    v11 = &v7[v9 >> 1];
    v12 = v11;
    v13 = *(a2 - 1);
    v14 = *(v13 + 8);
    if (v9 < 0x81)
    {
      v19 = *v7;
      v20 = *(*v7 + 8);
      v21 = *v11;
      v22 = *(*v12 + 8);
      if (v20 < v22)
      {
        if (v14 < v20)
        {
          *v12 = v13;
          goto LABEL_37;
        }

        *v12 = v19;
        *v7 = v21;
        v35 = *(a2 - 1);
        if (*(v35 + 8) < v22)
        {
          *v7 = v35;
LABEL_37:
          *(a2 - 1) = v21;
        }

LABEL_38:
        --a3;
        v25 = *v7;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      if (v14 >= v20)
      {
        goto LABEL_38;
      }

      *v7 = v13;
      *(a2 - 1) = v19;
      v24 = *v12;
      if (*(*v7 + 8) >= *(*v12 + 8))
      {
        goto LABEL_38;
      }

      *v12 = *v7;
      *v7 = v24;
      --a3;
      v25 = v24;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_39;
    }

    v15 = *v11;
    v16 = *(*v11 + 8);
    v17 = *v7;
    v18 = *(*v7 + 8);
    if (v16 >= v18)
    {
      if (v14 < v16)
      {
        *v11 = v13;
        *(a2 - 1) = v15;
        v23 = *v7;
        if (*(*v11 + 8) < *(*v7 + 8))
        {
          *v7 = *v11;
          *v11 = v23;
        }
      }
    }

    else
    {
      if (v14 >= v16)
      {
        *v7 = v15;
        *v11 = v17;
        v26 = *(a2 - 1);
        if (*(v26 + 8) >= v18)
        {
          goto LABEL_29;
        }

        *v11 = v26;
      }

      else
      {
        *v7 = v13;
      }

      *(a2 - 1) = v17;
    }

LABEL_29:
    v27 = v11 - 1;
    v28 = *(v11 - 1);
    v29 = *(v28 + 8);
    v30 = v7[1];
    v31 = *(v30 + 8);
    v32 = *(a2 - 2);
    v33 = *(v32 + 8);
    if (v29 >= v31)
    {
      if (v33 < v29)
      {
        *v27 = v32;
        *(a2 - 2) = v28;
        v34 = v7[1];
        if (*(*v27 + 8) < *(v34 + 8))
        {
          v7[1] = *v27;
          *v27 = v34;
        }
      }
    }

    else
    {
      if (v33 >= v29)
      {
        v7[1] = v28;
        *v27 = v30;
        v37 = *(a2 - 2);
        if (*(v37 + 8) >= v31)
        {
          goto LABEL_43;
        }

        *v27 = v37;
      }

      else
      {
        v7[1] = v32;
      }

      *(a2 - 2) = v30;
    }

LABEL_43:
    v40 = v11[1];
    v38 = v11 + 1;
    v39 = v40;
    v41 = *(v40 + 8);
    v42 = v7[2];
    v43 = *(v42 + 8);
    v44 = *(a2 - 3);
    v45 = *(v44 + 8);
    if (v41 >= v43)
    {
      if (v45 < v41)
      {
        *v38 = v44;
        *(a2 - 3) = v39;
        v46 = v7[2];
        if (*(*v38 + 8) < *(v46 + 8))
        {
          v7[2] = *v38;
          *v38 = v46;
        }
      }

      goto LABEL_52;
    }

    if (v45 < v41)
    {
      v7[2] = v44;
LABEL_51:
      *(a2 - 3) = v42;
      goto LABEL_52;
    }

    v7[2] = v39;
    *v38 = v42;
    v47 = *(a2 - 3);
    if (*(v47 + 8) < v43)
    {
      *v38 = v47;
      goto LABEL_51;
    }

LABEL_52:
    v48 = *v12;
    v49 = *(*v12 + 8);
    v50 = *v27;
    v51 = *(*v27 + 8);
    v52 = *v38;
    v53 = *(*v38 + 8);
    if (v49 >= v51)
    {
      if (v53 >= v49)
      {
        goto LABEL_60;
      }

      *v12 = v52;
      *v38 = v48;
      v38 = &v7[v9 >> 1];
      v48 = v50;
      if (v53 < v51)
      {
LABEL_59:
        *v27 = v52;
        *v38 = v50;
LABEL_60:
        v55 = *v7;
        *v7 = v48;
        *v12 = v55;
        --a3;
        v25 = *v7;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_39;
      }

      v72 = *v7;
      *v7 = v52;
      *v12 = v72;
      --a3;
      v25 = *v7;
      if (a4)
      {
        goto LABEL_39;
      }

LABEL_61:
      v36 = *(v25 + 8);
      if (*(*(v7 - 1) + 8) < v36)
      {
        goto LABEL_62;
      }

      *v7 = 0;
      if (v36 >= *(*(a2 - 1) + 8))
      {
        v74 = v7 + 1;
        do
        {
          v8 = v74;
          if (v74 >= a2)
          {
            break;
          }

          ++v74;
        }

        while (v36 >= *(*v8 + 8));
      }

      else
      {
        v8 = v7;
        do
        {
          v73 = v8[1];
          ++v8;
        }

        while (v36 >= *(v73 + 8));
      }

      v75 = a2;
      if (v8 < a2)
      {
        v75 = a2;
        do
        {
          v76 = *--v75;
        }

        while (v36 < *(v76 + 8));
      }

      if (v8 < v75)
      {
        v77 = *v8;
        v78 = *v75;
        do
        {
          *v8 = v78;
          *v75 = v77;
          do
          {
            v79 = v8[1];
            ++v8;
            v77 = v79;
          }

          while (v36 >= *(v79 + 8));
          do
          {
            v80 = *--v75;
            v78 = v80;
          }

          while (v36 < *(v80 + 8));
        }

        while (v8 < v75);
      }

      v81 = v8 - 1;
      if (v8 - 1 != v7)
      {
        v82 = *v81;
        *v81 = 0;
        v83 = *v7;
        *v7 = v82;
        if (v83)
        {
          (*(*v83 + 8))(v83);
        }
      }

      a4 = 0;
      result = *v81;
      *v81 = v25;
      if (result)
      {
        result = (*(*result + 8))(result);
        a4 = 0;
      }
    }

    else
    {
      if (v53 < v49)
      {
        goto LABEL_59;
      }

      *v27 = v48;
      *v12 = v50;
      v27 = &v7[v9 >> 1];
      v48 = v52;
      if (v53 < v51)
      {
        goto LABEL_59;
      }

      v54 = *v7;
      *v7 = v50;
      *v12 = v54;
      --a3;
      v25 = *v7;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_39:
      v36 = *(v25 + 8);
LABEL_62:
      v56 = 0;
      *v7 = 0;
      do
      {
        v57 = v7[++v56];
      }

      while (*(v57 + 8) < v36);
      v58 = &v7[v56];
      v59 = a2;
      if (v56 == 1)
      {
        v59 = a2;
        do
        {
          if (v58 >= v59)
          {
            break;
          }

          v61 = *--v59;
        }

        while (*(v61 + 8) >= v36);
      }

      else
      {
        do
        {
          v60 = *--v59;
        }

        while (*(v60 + 8) >= v36);
      }

      if (v58 >= v59)
      {
        v67 = v58 - 1;
        if (v58 - 1 == v7)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v62 = *v59;
        v63 = &v7[v56];
        v64 = v59;
        do
        {
          *v63 = v62;
          *v64 = v57;
          do
          {
            v65 = v63[1];
            ++v63;
            v57 = v65;
          }

          while (*(v65 + 8) < v36);
          do
          {
            v66 = *--v64;
            v62 = v66;
          }

          while (*(v66 + 8) >= v36);
        }

        while (v63 < v64);
        v67 = v63 - 1;
        if (v63 - 1 == v7)
        {
          goto LABEL_81;
        }
      }

      v68 = *v67;
      *v67 = 0;
      v69 = *v7;
      *v7 = v68;
      if (v69)
      {
        (*(*v69 + 8))(v69);
      }

LABEL_81:
      v70 = *v67;
      *v67 = v25;
      if (v70)
      {
        (*(*v70 + 8))(v70);
      }

      if (v58 < v59)
      {
        goto LABEL_86;
      }

      v71 = sub_298C29988(v7, v67);
      v8 = v67 + 1;
      result = sub_298C29988(v67 + 1, a2);
      if (result)
      {
        a2 = v67;
        if (v71)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v71)
      {
LABEL_86:
        result = sub_298C28A34(v7, v67, a3, a4 & 1);
        a4 = 0;
        v8 = v67 + 1;
      }
    }
  }

  v86 = *v7;
  v87 = v7[1];
  v88 = *(v87 + 8);
  v89 = *(*v7 + 8);
  v90 = *(a2 - 1);
  v91 = *(v90 + 8);
  if (v88 < v89)
  {
    if (v91 >= v88)
    {
      *v7 = v87;
      v7[1] = v86;
      v161 = *(a2 - 1);
      if (*(v161 + 8) >= v89)
      {
        return result;
      }

      v7[1] = v161;
    }

    else
    {
      *v7 = v90;
    }

    *(a2 - 1) = v86;
    return result;
  }

  if (v91 < v88)
  {
    v7[1] = v90;
    *(a2 - 1) = v87;
    v150 = *v7;
    v149 = v7[1];
    if (*(v149 + 8) < *(*v7 + 8))
    {
      *v7 = v149;
      v7[1] = v150;
    }
  }

  return result;
}

uint64_t *sub_298C297EC(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *(*a2 + 8);
  v7 = *result;
  v8 = *(*result + 8);
  v9 = *a3;
  v10 = *(*a3 + 8);
  if (v6 < v8)
  {
    if (v10 >= v6)
    {
      *result = v5;
      *a2 = v7;
      v5 = *a3;
      if (*(*a3 + 8) >= v8)
      {
        goto LABEL_11;
      }

      *a2 = v5;
    }

    else
    {
      *result = v9;
    }

    *a3 = v7;
    v5 = v7;
LABEL_11:
    v12 = *a4;
    if (*(*a4 + 8) >= *(v5 + 8))
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v10 >= v6)
  {
    v5 = *a3;
    v12 = *a4;
    if (*(*a4 + 8) >= *(v9 + 8))
    {
      goto LABEL_16;
    }
  }

  else
  {
    *a2 = v9;
    *a3 = v5;
    v11 = *result;
    if (*(*a2 + 8) >= *(*result + 8))
    {
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v11;
    v5 = *a3;
    v12 = *a4;
    if (*(*a4 + 8) >= *(*a3 + 8))
    {
      goto LABEL_16;
    }
  }

LABEL_12:
  *a3 = v12;
  *a4 = v5;
  v13 = *a2;
  if (*(*a3 + 8) < *(*a2 + 8))
  {
    *a2 = *a3;
    *a3 = v13;
    v14 = *result;
    if (*(*a2 + 8) < *(*result + 8))
    {
      *result = *a2;
      *a2 = v14;
    }
  }

LABEL_16:
  v15 = *a4;
  if (*(*a5 + 8) < *(*a4 + 8))
  {
    *a4 = *a5;
    *a5 = v15;
    v16 = *a3;
    if (*(*a4 + 8) < *(*a3 + 8))
    {
      *a3 = *a4;
      *a4 = v16;
      v17 = *a2;
      if (*(*a3 + 8) < *(*a2 + 8))
      {
        *a2 = *a3;
        *a3 = v17;
        v18 = *result;
        if (*(*a2 + 8) < *(*result + 8))
        {
          *result = *a2;
          *a2 = v18;
        }
      }
    }
  }

  return result;
}

BOOL sub_298C29988(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v7 = *a1;
      v8 = a1[1];
      v9 = *(v8 + 8);
      v10 = *(*a1 + 8);
      v11 = *(a2 - 1);
      v12 = *(v11 + 8);
      if (v9 >= v10)
      {
        if (v12 < v9)
        {
          a1[1] = v11;
          *(a2 - 1) = v8;
          v34 = *a1;
          v33 = a1[1];
          if (*(v33 + 8) < *(*a1 + 8))
          {
            *a1 = v33;
            a1[1] = v34;
          }
        }

        return 1;
      }

      if (v12 >= v9)
      {
        *a1 = v8;
        a1[1] = v7;
        v51 = *(a2 - 1);
        if (*(v51 + 8) >= v10)
        {
          return 1;
        }

        a1[1] = v51;
      }

      else
      {
        *a1 = v11;
      }

      *(a2 - 1) = v7;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_13;
      }

      sub_298C297EC(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v22 = a1 + 1;
    v23 = a1[1];
    v24 = a1 + 2;
    v25 = a1[2];
    v26 = *(v23 + 8);
    v27 = *a1;
    v28 = *(*a1 + 8);
    v29 = *(v25 + 8);
    if (v26 >= v28)
    {
      if (v29 >= v26)
      {
        goto LABEL_47;
      }

      *v22 = v25;
      *v24 = v23;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v23;
      if (v29 >= v28)
      {
LABEL_45:
        v46 = *(a2 - 1);
        if (*(v46 + 8) >= *(v23 + 8))
        {
          return 1;
        }

LABEL_48:
        *v24 = v46;
        *(a2 - 1) = v23;
        v47 = *v24;
        v48 = *(v47 + 8);
        v49 = *v22;
        if (v48 < *(v49 + 8))
        {
          a1[1] = v47;
          a1[2] = v49;
          v50 = *a1;
          if (v48 < *(*a1 + 8))
          {
            *a1 = v47;
            a1[1] = v50;
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v29 >= v26)
      {
        *a1 = v23;
        a1[1] = v27;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v27;
        if (v29 >= v28)
        {
LABEL_47:
          v23 = v25;
          v46 = *(a2 - 1);
          if (*(v46 + 8) >= *(v23 + 8))
          {
            return 1;
          }

          goto LABEL_48;
        }
      }
    }

    *v30 = v25;
    *v31 = v27;
    v23 = v32;
    goto LABEL_45;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = *a1;
    if (*(v5 + 8) < *(*a1 + 8))
    {
      *a1 = v5;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = a1[2];
  v15 = a1[1];
  v16 = *(v15 + 8);
  v17 = *a1;
  v18 = *(*a1 + 8);
  v19 = *(v14 + 8);
  if (v16 >= v18)
  {
    if (v19 >= v16)
    {
      goto LABEL_27;
    }

    a1[1] = v14;
    *v13 = v15;
    v20 = a1;
    v21 = a1 + 1;
LABEL_25:
    if (v19 >= v18)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v20 = a1;
  v21 = a1 + 2;
  if (v19 >= v16)
  {
    *a1 = v15;
    a1[1] = v17;
    v20 = a1 + 1;
    v21 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v20 = v14;
  *v21 = v17;
LABEL_27:
  v35 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v36 = 0;
  v37 = 0;
  while (1)
  {
    v39 = *v35;
    v40 = *v13;
    if (*(*v35 + 8) < *(v40 + 8))
    {
      break;
    }

LABEL_32:
    v13 = v35;
    ++v36;
    if (++v35 == a2)
    {
      return 1;
    }
  }

  *v35 = 0;
  v41 = v36 * 8;
  v42 = &a1[v36];
  v42[2] = 0;
  v42[3] = v40;
  while (1)
  {
    if (v41 == -16)
    {
      v38 = *a1;
      *a1 = v39;
      if (!v38)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v43 = a1 + v41;
    v44 = *(a1 + v41 + 8);
    if (*(v39 + 8) >= *(v44 + 8))
    {
      break;
    }

    v45 = v42[2];
    v41 -= 8;
    v42 = (a1 + v41);
    v42[2] = 0;
    v42[3] = v44;
    if (v45)
    {
      (*(*v45 + 8))(v45);
    }
  }

  v38 = *(v43 + 2);
  *(v43 + 2) = v39;
  if (v38)
  {
LABEL_30:
    (*(*v38 + 8))(v38);
  }

LABEL_31:
  if (++v37 != 8)
  {
    goto LABEL_32;
  }

  return v35 + 1 == a2;
}

void *sub_298C29D44(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_298BCEAE4(result, (v2 - *a2) >> 3);
  }

  return result;
}

void *sub_298C29DAC(void *result, const void **a2, const void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_298C29E60(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          i = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        i = v4[2];
        if (*i != v4)
        {
          v8 = i[2];
          v9 = *v8 == i;
          for (i = v8; !v9; v8 = i)
          {
            i = v8[2];
            v9 = *i == v8;
          }
        }
      }

      v4 = i;
    }

    while (i != a3);
  }

  return result;
}

void *sub_298C29E60(void *result, uint64_t *a2, const void **a3)
{
  v5 = result;
  v6 = result + 1;
  if (result + 1 == a2)
  {
    goto LABEL_20;
  }

  v7 = *(a2 + 55);
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  if (v8 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v7 >= 0)
  {
    v11 = *(a2 + 55);
  }

  else
  {
    v11 = a2[5];
  }

  if (v7 >= 0)
  {
    v12 = a2 + 4;
  }

  else
  {
    v12 = a2[4];
  }

  if (v11 >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = v11;
  }

  result = memcmp(v10, v12, v13);
  v14 = v9 < v11;
  if (result)
  {
    v14 = result < 0;
  }

  if (v14)
  {
LABEL_20:
    v15 = *a2;
    if (*v5 == a2)
    {
      v17 = a2;
    }

    else
    {
      if (v15)
      {
        v16 = *a2;
        do
        {
          v17 = v16;
          v16 = v16[1];
        }

        while (v16);
      }

      else
      {
        v43 = a2;
        do
        {
          v17 = v43[2];
          v44 = *v17 == v43;
          v43 = v17;
        }

        while (v44);
      }

      v45 = *(a3 + 23);
      v46 = *(v17 + 55);
      if (v46 >= 0)
      {
        v47 = *(v17 + 55);
      }

      else
      {
        v47 = v17[5];
      }

      if (v46 >= 0)
      {
        v48 = v17 + 4;
      }

      else
      {
        v48 = v17[4];
      }

      if (v45 >= 0)
      {
        v49 = *(a3 + 23);
      }

      else
      {
        v49 = a3[1];
      }

      if (v45 >= 0)
      {
        v50 = a3;
      }

      else
      {
        v50 = *a3;
      }

      if (v49 >= v47)
      {
        v51 = v47;
      }

      else
      {
        v51 = v49;
      }

      result = memcmp(v48, v50, v51);
      v52 = v47 < v49;
      if (result)
      {
        v52 = result < 0;
      }

      if (!v52)
      {
        v54 = *v6;
        if (!*v6)
        {
          goto LABEL_109;
        }

        while (1)
        {
          while (1)
          {
            v55 = v54;
            v58 = v54[4];
            v56 = v54 + 4;
            v57 = v58;
            v59 = *(v56 + 23);
            if (v59 >= 0)
            {
              v60 = *(v56 + 23);
            }

            else
            {
              v60 = v56[1];
            }

            if (v59 >= 0)
            {
              v61 = v56;
            }

            else
            {
              v61 = v57;
            }

            if (v60 >= v49)
            {
              v62 = v49;
            }

            else
            {
              v62 = v60;
            }

            v63 = memcmp(v50, v61, v62);
            v64 = v49 < v60;
            if (v63)
            {
              v64 = v63 < 0;
            }

            if (!v64)
            {
              break;
            }

            v54 = *v55;
            if (!*v55)
            {
              goto LABEL_109;
            }
          }

          result = memcmp(v61, v50, v62);
          v65 = v60 < v49;
          if (result)
          {
            v65 = result < 0;
          }

          if (!v65)
          {
            return result;
          }

          v54 = v55[1];
          if (!v54)
          {
            goto LABEL_109;
          }
        }
      }
    }

    if (v15)
    {
      v53 = v17 + 1;
    }

    else
    {
      v53 = a2;
    }

    if (!*v53)
    {
      goto LABEL_109;
    }
  }

  else
  {
    result = memcmp(v12, v10, v13);
    v18 = v11 < v9;
    if (result)
    {
      v18 = result < 0;
    }

    if (v18)
    {
      v19 = a2[1];
      if (v19)
      {
        do
        {
          v66 = v19;
          v19 = *v19;
          v20 = v66;
        }

        while (v19);
      }

      else
      {
        v20 = a2;
        do
        {
          v21 = v20;
          v20 = v20[2];
        }

        while (*v20 != v21);
      }

      if (v20 == v6)
      {
        goto LABEL_109;
      }

      v24 = v20[4];
      v22 = v20 + 4;
      v23 = v24;
      v25 = *(v22 + 23);
      if (v25 >= 0)
      {
        v26 = *(v22 + 23);
      }

      else
      {
        v26 = v22[1];
      }

      if (v25 >= 0)
      {
        v27 = v22;
      }

      else
      {
        v27 = v23;
      }

      if (v26 >= v9)
      {
        v28 = v9;
      }

      else
      {
        v28 = v26;
      }

      v29 = memcmp(v10, v27, v28);
      v30 = v9 < v26;
      if (v29)
      {
        v30 = v29 < 0;
      }

      if (v30 || (v31 = *v6) == 0)
      {
LABEL_109:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v32 = v31;
          v35 = v31[4];
          v33 = v31 + 4;
          v34 = v35;
          v36 = *(v33 + 23);
          if (v36 >= 0)
          {
            v37 = *(v33 + 23);
          }

          else
          {
            v37 = v33[1];
          }

          if (v36 >= 0)
          {
            v38 = v33;
          }

          else
          {
            v38 = v34;
          }

          if (v37 >= v9)
          {
            v39 = v9;
          }

          else
          {
            v39 = v37;
          }

          v40 = memcmp(v10, v38, v39);
          v41 = v9 < v37;
          if (v40)
          {
            v41 = v40 < 0;
          }

          if (!v41)
          {
            break;
          }

          v31 = *v32;
          if (!*v32)
          {
            goto LABEL_109;
          }
        }

        result = memcmp(v38, v10, v39);
        v42 = v37 < v9;
        if (result)
        {
          v42 = result < 0;
        }

        if (!v42)
        {
          break;
        }

        v31 = v32[1];
        if (!v31)
        {
          goto LABEL_109;
        }
      }
    }
  }

  return result;
}

void *sub_298C2A27C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    sub_298B7F4BC(result, (v2 - *a2) >> 3);
  }

  return result;
}

uint64_t sub_298C2A2E0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_298BDDED8(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_298C2A344(a1, i + 16);
  }

  return a1;
}

uint64_t sub_298C2A344(void *a1, unsigned __int8 *uu2)
{
  v2 = *(uu2 + 1) ^ *uu2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_6;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] <= 1uLL)
  {
    v5 = (*&v3 - 1) & v2;
  }

  else
  {
    v5 = *(uu2 + 1) ^ *uu2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_6:
    operator new();
  }

  if (v4.u32[0] >= 2uLL)
  {
    while (1)
    {
      v8 = *(v7 + 1);
      if (v8 == v2)
      {
        v9 = uu2;
        result = uuid_compare(v7 + 16, uu2);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v9 = uu2;
        if (v8 >= *&v3)
        {
          v8 %= *&v3;
        }

        if (v8 != v5)
        {
          goto LABEL_6;
        }
      }

      v7 = *v7;
      uu2 = v9;
      if (!v7)
      {
        goto LABEL_6;
      }
    }
  }

  v11 = uu2;
  while (1)
  {
    v12 = *(v7 + 1);
    if (v12 == v2)
    {
      break;
    }

    if ((v12 & (*&v3 - 1)) != v5)
    {
      goto LABEL_6;
    }

LABEL_23:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  result = uuid_compare(v7 + 16, v11);
  if (result)
  {
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_298C2A5C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  v5 = *(a2 + 29);
  *(a1 + 20) = v4;
  *(a1 + 29) = v5;
  uuid_copy((a1 + 4), (a2 + 4));
  *(a1 + 48) = *(a2 + 48);
  if (*(a2 + 64))
  {
    sub_298C2A63C();
  }

  *(a1 + 64) = 0;
  return a1;
}

void *sub_298C2A6C0(const void **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1] - *a1;
  v5 = (v4 >> 3) + 1;
  if (v5 >> 61)
  {
    sub_298ADDDA0();
  }

  v7 = a1[2] - v3;
  if (v7 >> 2 > v5)
  {
    v5 = v7 >> 2;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    v8 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  v14[4] = a1;
  if (v8)
  {
    sub_298B9947C(a1, v8);
  }

  v9 = (8 * (v4 >> 3));
  v10 = *a2;
  *a2 = 0;
  *v9++ = v10;
  memcpy(0, v3, v4);
  v11 = *a1;
  *a1 = 0;
  a1[1] = v9;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  sub_298C2A7A4(v14);
  return v9;
}

uint64_t sub_298C2A7A4(uint64_t a1)
{
  sub_298C2A7E4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_298C2A7E4(uint64_t a1, void *a2)
{
  result = *(a1 + 16);
  while (result != a2)
  {
    v6 = *--result;
    v5 = v6;
    *(a1 + 16) = result;
    *result = 0;
    if (v6)
    {
      sub_298C27374(result, v5);
      result = *(a1 + 16);
    }
  }

  return result;
}

uint64_t *sub_298C2A83C(uint64_t a1, unint64_t a2)
{
  result = sub_298C2AAC8(a1, a2);
  v4 = *(a1 + 8);
  v5 = (*a1 + 16 * v4);
  v6 = *result;
  v7 = result[1];
  result[1] = 0;
  *v5 = v6;
  v5[1] = v7;
  *(a1 + 8) = v4 + 1;
  return result;
}

void *sub_298C2A880(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_20;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] <= 1uLL)
  {
    v5 = (*&v3 - 1) & v2;
  }

  else
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = *v6;
  if (!*v6)
  {
    goto LABEL_20;
  }

  if (v4.u32[0] < 2uLL)
  {
    do
    {
      v8 = v7[1];
      if (v8 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v8 & (*&v3 - 1)) != v5)
      {
        break;
      }

      v7 = *v7;
    }

    while (v7);
LABEL_20:
    operator new();
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == v2)
    {
      break;
    }

    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }

    if (v9 != v5)
    {
      goto LABEL_20;
    }

LABEL_15:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_20;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_15;
  }

  return v7;
}

unint64_t sub_298C2AAC8(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 16 * v3 > a2)
    {
      v6 = a2 - *a1;
      sub_298C2AB34(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      sub_298C2AB34(a1, v3 + 1);
    }
  }

  return v2;
}

void sub_298C2AB34(uint64_t a1, unint64_t a2)
{
  v6 = 0;
  v3 = a1 + 16;
  v4 = sub_298B90848(a1, (a1 + 16), a2, 16, &v6);
  sub_298C2ABB0(*a1, *(a1 + 8), v4);
  v5 = v6;
  if (*a1 != v3)
  {
    free(*a1);
  }

  *a1 = v4;
  *(a1 + 12) = v5;
}

unint64_t sub_298C2ABB0(unint64_t result, unsigned int a2, _OWORD *a3)
{
  if (a2)
  {
    v3 = (a2 - 1) & 0xFFFFFFFFFFFFFFFLL;
    v4 = result + 16 * a2;
    if (v3 < 0xB || ((v11 = 16 * a2 - 8, v12 = a3 + v11, v13 = result + v11, result + 8 < &a3[a2]) ? (v14 = a3 + 8 >= v4) : (v14 = 1), v14 ? (v15 = 0) : (v15 = 1), v12 > result ? (v16 = v13 > a3) : (v16 = 0), v16 || (v15 & 1) != 0))
    {
      v5 = a3;
      v6 = result;
    }

    else
    {
      v17 = v3 + 1;
      v18 = (v3 + 1) & 0x1FFFFFFFFFFFFFFELL;
      v5 = &a3[v18];
      v6 = (result + 16 * v18);
      v19 = v18;
      v20 = result;
      do
      {
        v21 = *v20;
        v22 = *(v20 + 16);
        *(v20 + 8) = 0;
        *(v20 + 24) = 0;
        *a3 = v21;
        a3[1] = v22;
        a3 += 2;
        v20 += 32;
        v19 -= 2;
      }

      while (v19);
      if (v17 == v18)
      {
        goto LABEL_5;
      }
    }

    do
    {
      v7 = *v6;
      v8 = v6[1];
      v6[1] = 0;
      *v5 = v7;
      v5[1] = v8;
      v5 += 2;
      v6 += 2;
    }

    while (v6 != (result + 16 * a2));
LABEL_5:
    v9 = (v4 - 8);
    v10 = -16 * a2;
    do
    {
      result = sub_298C2ACA8(v9, 0);
      v9 -= 2;
      v10 += 16;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_298C2ACA8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_298C2ACF4(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298C2ACF4(uint64_t a1)
{
  sub_298AE841C((a1 + 88));
  v3 = (a1 + 64);
  sub_298C2AD58(&v3);
  sub_298AE9B00(a1 + 32, *(a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_298C2AD58(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298C168CC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t **sub_298C2ADAC(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v3[2] = v9;
      v9[*v9 != a2] = v3;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_61:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v20[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v20[2] = v28;
        v28[*v28 != v7] = v20;
        v20[1] = v7;
        v7[2] = v20;
        v21 = v7;
      }

      v29 = v20[2];
      *(v20 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v21 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      *(v29 + 16) = v30;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_61;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v15[2] = v23;
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_70;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_55:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_70:
    v26 = v7;
    goto LABEL_71;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v26;
  v7[1] = *v26;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v26[2] = v34;
  v34[*v34 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_71:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  *(v36 + 16) = v38;
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  v35[2] = v36;
  return result;
}

uint64_t sub_298C2B19C(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 8);
  if (*(a1 + 16))
  {
    v5 = (a1 + 8);
  }

  else
  {
    v5 = a2 + 7;
  }

  v6 = *(a1 + 64);
  v7 = v6 == 5 || v6 == 3;
  if (v7)
  {
    v5 = a2 + 7;
  }

  sub_298C26D24(src, (a1 + 17), 0, *(a1 + 56), v6, *v5);
  memset(dst, 0, sizeof(dst));
  uuid_copy(dst, src);
  v8 = a2[5];
  v9 = a2 + 4;
  v23 = v26;
  *v24 = v27;
  if (!v8)
  {
    goto LABEL_22;
  }

  v10 = (a2 + 5);
  do
  {
    v11 = sub_298C2886C(v8 + 32, dst);
    if (v11)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    if (!v11)
    {
      v10 = v8;
    }

    v8 = *(v8 + v12);
  }

  while (v8);
  if (v10 == a2 + 5 || (result = sub_298C2886C(dst, v10 + 32), (result & 1) != 0))
  {
LABEL_22:
    memset(dst, 0, sizeof(dst));
    uuid_copy(dst, src);
    v23 = v26;
    *v24 = v27;
    result = sub_298C288D8((a2 + 4), dst);
    v10 = result;
    if (*(a1 + 16))
    {
      goto LABEL_21;
    }
  }

  else if (*(a1 + 16))
  {
LABEL_21:
    v14 = *MEMORY[0x29EDCA608];
    return result;
  }

  v15 = *(v10 + 88);
  v23 = *(v10 + 80);
  v24[0] = v15;
  *&v24[1] = *(v10 + 89);
  uuid_copy(dst, (v10 + 64));
  *&v24[9] = *v4;
  v16 = *(v10 + 8);
  if (v16)
  {
    do
    {
      v18 = v16;
      v16 = *v16;
    }

    while (v16);
  }

  else
  {
    v17 = v10;
    do
    {
      v18 = v17[2];
      v7 = *v18 == v17;
      v17 = v18;
    }

    while (!v7);
  }

  if (*v9 == v10)
  {
    *v9 = v18;
  }

  v19 = a2[5];
  --a2[6];
  sub_298C2ADAC(v19, v10);
  operator delete(v10);
  v21[0] = 0;
  v21[1] = 0;
  uuid_copy(v21, dst);
  v21[2] = v23;
  v21[3] = *&v24[9];
  result = sub_298C288D8((a2 + 4), v21);
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

const unsigned __int8 *sub_298C2B3C8(void *a1, unsigned __int8 *uu2)
{
  v2 = *(uu2 + 1) ^ *uu2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_15;
  }

  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v6 = (*&v3 - 1) & v2;
    v7 = *(*a1 + 8 * v6);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_15:
    operator new();
  }

  v6 = *(uu2 + 1) ^ *uu2;
  if (v2 >= *&v3)
  {
    v6 = v2 % *&v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    goto LABEL_15;
  }

LABEL_6:
  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_15;
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = *(v8 + 1);
      if (v11 == v2)
      {
        if (!uuid_compare(v8 + 16, uu2))
        {
          return v8;
        }
      }

      else if ((v11 & (*&v3 - 1)) != v6)
      {
        goto LABEL_15;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  while (1)
  {
    v9 = *(v8 + 1);
    if (v9 == v2)
    {
      break;
    }

    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }

    if (v9 != v6)
    {
      goto LABEL_15;
    }

LABEL_10:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (uuid_compare(v8 + 16, uu2))
  {
    goto LABEL_10;
  }

  return v8;
}

uint64_t sub_298C2B6DC(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] <= 1uLL)
  {
    v4 &= *&v3 - 1;
  }

  else if (v4 >= *&v3)
  {
    v4 %= *&v3;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 != a2 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] <= 1uLL)
    {
      if ((v8 & (*&v3 - 1)) == v4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }

      if (v8 == v4)
      {
        goto LABEL_17;
      }
    }
  }

  if (!*a3)
  {
LABEL_16:
    *(*a2 + 8 * v4) = 0;
    goto LABEL_17;
  }

  v9 = *(*a3 + 8);
  if (v5.u32[0] <= 1uLL)
  {
    if ((v9 & (*&v3 - 1)) == v4)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v9 >= *&v3)
  {
    v9 %= *&v3;
  }

  if (v9 != v4)
  {
    goto LABEL_16;
  }

LABEL_17:
  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] <= 1uLL)
    {
      v11 &= *&v3 - 1;
      if (v11 == v4)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (v11 >= *&v3)
    {
      v11 %= *&v3;
    }

    if (v11 != v4)
    {
LABEL_22:
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

LABEL_23:
  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

uint64_t sub_298C2B8A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F1F460;
  a2[1] = v2;
  return result;
}

void sub_298C2B8CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = *a3;
    v7 = 8 * v3;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v6;
      v11 = sub_298BD630C(v8, v4, v5);
      v12 = v11;
      v13 = *(v11 + 568);
      v14 = *(v11 + 576);
      if (v13 < v14)
      {
        *v13 = v10;
        v9 = v13 + 8;
      }

      else
      {
        v15 = v11 + 560;
        v16 = v12[70];
        v17 = v13 - v16;
        v18 = (v13 - v16) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          sub_298ADDDA0();
        }

        v20 = v14 - v16;
        if (v20 >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          sub_298B7F4FC(v15, v21);
        }

        v22 = v18;
        v23 = (8 * v18);
        v24 = &v23[-v22];
        *v23 = v10;
        v9 = v23 + 1;
        memcpy(v24, v16, v17);
        v25 = v12[70];
        v12[70] = v24;
        v12[71] = v9;
        v12[72] = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      v12[71] = v9;
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }
}

uint64_t sub_298C2B9FC(uint64_t a1)
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

uint64_t sub_298C2BA88(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = (37 * a3) & (a2 - 1);
    v6 = (a1 + 16 * v5);
    v7 = *v6;
    if (*v6 == a3)
    {
      v8 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v7 != -1)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v7 == -2;
        }

        if (v12)
        {
          v10 = v6;
        }

        v13 = v5 + v11++;
        v5 = v13 & v4;
        v6 = (a1 + 16 * (v13 & v4));
        v7 = *v6;
        v8 = 1;
        if (*v6 == a3)
        {
          goto LABEL_4;
        }
      }

      v8 = 0;
      if (v10)
      {
        v6 = v10;
      }
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

LABEL_4:
  *a4 = v6;
  return v8;
}

void *sub_298C2BB18(uint64_t a1, uint64_t *a2, void *a3)
{
  v9 = a3;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (4 * v4 + 4 >= 3 * v5)
  {
    v7 = a2;
    v5 *= 2;
  }

  else
  {
    if (v5 + ~v4 - *(a1 + 12) > v5 >> 3)
    {
      goto LABEL_3;
    }

    v7 = a2;
  }

  v8 = a1;
  sub_298C2BBD8(a1, v5);
  sub_298C2BA88(*v8, *(v8 + 16), *v7, &v9);
  a1 = v8;
  v4 = *(v8 + 8);
  a3 = v9;
LABEL_3:
  *(a1 + 8) = v4 + 1;
  if (*a3 != -1)
  {
    --*(a1 + 12);
  }

  return a3;
}

void *sub_298C2BBD8(uint64_t *a1, int a2)
{
  v3 = *(a1 + 4);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 4) = v8;
  result = operator new(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    a1[1] = 0;
    v11 = *(a1 + 4);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_41;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -1;
        *v13 = -1;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_41:
        do
        {
          *v10 = -1;
          v10 += 2;
        }

        while (v10 != &result[2 * v11]);
      }
    }

    if (v3)
    {
      v15 = 0;
      v16 = v11 - 1;
      v17 = v4;
      do
      {
        v24 = *v17;
        if (*v17 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = (37 * v24) & v16;
          v23 = &result[2 * v25];
          v26 = *v23;
          if (v24 != *v23)
          {
            v27 = 0;
            v28 = 1;
            while (v26 != -1)
            {
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v26 == -2;
              }

              if (v29)
              {
                v27 = v23;
              }

              v30 = v25 + v28++;
              v25 = v30 & v16;
              v23 = &result[2 * (v30 & v16)];
              v26 = *v23;
              if (v24 == *v23)
              {
                goto LABEL_23;
              }
            }

            if (v27)
            {
              v23 = v27;
            }
          }

LABEL_23:
          *v23 = v24;
          *(v23 + 2) = *(v17 + 2);
          *(a1 + 2) = ++v15;
        }

        v17 += 2;
      }

      while (v17 != &v4[2 * v3]);
    }

    JUMPOUT(0x29C2945E0);
  }

  a1[1] = 0;
  v18 = *(a1 + 4);
  if (v18)
  {
    if (((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_18;
    }

    v19 = ((v18 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v19 & 0x1FFFFFFFFFFFFFFELL)];
    v20 = result + 2;
    v21 = v19 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v20 - 2) = -1;
      *v20 = -1;
      v20 += 4;
      v21 -= 2;
    }

    while (v21);
    if (v19 != (v19 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_18:
      v22 = &result[2 * v18];
      do
      {
        *v10 = -1;
        v10 += 2;
      }

      while (v10 != v22);
    }
  }

  return result;
}

void *sub_298C2BDD4(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  v4 = sub_298C2BA88(*a1, *(a1 + 16), *a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = sub_298C2BB18(a1, a2, v7);
    *v5 = *a2;
    *(v5 + 2) = 0;
  }

  return v5;
}

uint64_t sub_298C2BE40(uint64_t *a1)
{
  v196 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  if (*(v3 + 95) < 0)
  {
    sub_298AFE11C(&v185, *(v3 + 72), *(v3 + 80));
  }

  else
  {
    v185 = *(v3 + 72);
  }

  LOWORD(v189) = 6;
  if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v185;
  }

  else
  {
    v4 = v185.__r_.__value_.__r.__words[0];
  }

  if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = SHIBYTE(v185.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v185.__r_.__value_.__l.__size_;
  }

  if (!sub_298B88E98(v4, size, 0))
  {
    if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v174 = &v185;
    }

    else
    {
      v174 = v185.__r_.__value_.__r.__words[0];
    }

    if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v175 = SHIBYTE(v185.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v175 = v185.__r_.__value_.__l.__size_;
    }

    sub_298B88F28(v174, v175, &v188);
    if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v185.__r_.__value_.__l.__data_);
    }

    v185 = v188;
  }

  __p = *&v185.__r_.__value_.__l.__data_;
  *v191 = *(&v185.__r_.__value_.__l + 2);
  memset(&v185, 0, sizeof(v185));
  sub_298B89CC0(v2, "Name", 4uLL);
  sub_298B891F0(v2, &v189);
  --*(v2 + 8);
  if (v189 == 8)
  {
    sub_298B8A314(&__p);
  }

  else if (v189 == 7)
  {
    sub_298B8A370(&__p);
  }

  else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v185.__r_.__value_.__l.__data_);
  }

  v6 = *a1;
  sub_298B89CC0(*a1, "RawTraceIDs", 0xBuLL);
  sub_298B89A80(v6);
  v7 = *(v3 + 96);
  for (i = *(v3 + 104); v7 != i; v7 += 8)
  {
    v9 = *(*v7 + 4);
    LOWORD(v189) = 3;
    *&__p = v9;
    sub_298B891F0(v6, &v189);
    if (v189 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v189 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }
  }

  sub_298B89B0C(v6);
  --*(v6 + 8);
  if (*(v3 + 296) == 1)
  {
    v10 = *a1;
    sub_298B89CC0(*a1, "DecodedTrace", 0xCuLL);
    sub_298B89BA0(v10);
    sub_298C3BEA0(&v189);
    sub_298C3C758(&v189, &__dst);
    if (v194 == 1 && v193 < 0)
    {
      operator delete(v192);
    }

    sub_298BCE714(&v191[8], *&v191[16]);
    if (SHIBYTE(__p) < 0)
    {
      operator delete(v189);
    }

    LOWORD(v189) = 6;
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
      v12 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v12 = __dst.__r_.__value_.__l.__size_;
    }

    if (!sub_298B88E98(p_dst, v12, 0))
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v176 = &__dst;
      }

      else
      {
        v176 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v177 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v177 = __dst.__r_.__value_.__l.__size_;
      }

      sub_298B88F28(v176, v177, &v188);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst = v188;
    }

    __p = *&__dst.__r_.__value_.__l.__data_;
    *v191 = *(&__dst.__r_.__value_.__l + 2);
    memset(&__dst, 0, sizeof(__dst));
    sub_298B89CC0(v10, "VersionInfo", 0xBuLL);
    sub_298B891F0(v10, &v189);
    --*(v10 + 8);
    if (v189 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v189 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v189 = (v3 + 120);
    *&__p = v10;
    sub_298B89CC0(v10, "Clusters", 8uLL);
    sub_298B89BA0(v10);
    sub_298C329EC(&v189);
    sub_298B89C2C(v10);
    --*(v10 + 8);
    sub_298B89CC0(v10, "CallstackModifiers", 0x12uLL);
    sub_298B89BA0(v10);
    sub_298C24D64(&v189, *(v3 + 208), *(v3 + 216));
    sub_298B89CC0(v10, "SharedContextsSymStarts", 0x17uLL);
    sub_298B891F0(v10, &v189);
    --*(v10 + 8);
    if (v189 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v189 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    sub_298B89CC0(v10, "UniqueContextsSymStarts", 0x17uLL);
    sub_298B89BA0(v10);
    v13 = *(v3 + 232);
    if (v13 != (v3 + 240))
    {
      do
      {
        std::to_string(&v188, v13[4]);
        if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v188;
        }

        else
        {
          v14 = v188.__r_.__value_.__r.__words[0];
        }

        if ((v188.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = SHIBYTE(v188.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v15 = v188.__r_.__value_.__l.__size_;
        }

        sub_298C24D64(&v189, v13[5], v13[6]);
        sub_298B89CC0(v10, v14, v15);
        sub_298B891F0(v10, &v189);
        --*(v10 + 8);
        if (v189 == 8)
        {
          sub_298B8A314(&__p);
        }

        else if (v189 == 7)
        {
          sub_298B8A370(&__p);
        }

        else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
          v16 = v13[1];
          if (v16)
          {
            do
            {
LABEL_79:
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
            goto LABEL_76;
          }
        }

        else
        {
          v16 = v13[1];
          if (v16)
          {
            goto LABEL_79;
          }
        }

        do
        {
          v17 = v13[2];
          v120 = *v17 == v13;
          v13 = v17;
        }

        while (!v120);
LABEL_76:
        v13 = v17;
      }

      while (v17 != (v3 + 240));
    }

    sub_298B89C2C(v10);
    --*(v10 + 8);
    sub_298B89C2C(v10);
    --*(v10 + 8);
    v18 = *(v3 + 256);
    LOWORD(v189) = 3;
    *&__p = v18;
    sub_298B89CC0(v10, "NumGaps", 7uLL);
    sub_298B891F0(v10, &v189);
    --*(v10 + 8);
    if (v189 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v189 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    v19 = *(v3 + 264);
    LOWORD(v189) = 3;
    *&__p = v19;
    sub_298B89CC0(v10, "NumExcessGaps", 0xDuLL);
    sub_298B891F0(v10, &v189);
    --*(v10 + 8);
    if (v189 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v189 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    sub_298B89C2C(v10);
    --*(v10 + 8);
  }

  v20 = *a1;
  sub_298B89CC0(*a1, "SystemRegisters", 0xFuLL);
  sub_298B89BA0(v20);
  v21 = *(v3 + 304);
  if (v21 != (v3 + 312))
  {
    do
    {
      v22 = *(v21 + 55);
      if (v22 >= 0)
      {
        v23 = (v21 + 4);
      }

      else
      {
        v23 = v21[4];
      }

      if (v22 >= 0)
      {
        v24 = *(v21 + 55);
      }

      else
      {
        v24 = v21[5];
      }

      sub_298ADC8F4(&__dst, v21[7]);
      LOWORD(v189) = 6;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = &__dst;
      }

      else
      {
        v25 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = __dst.__r_.__value_.__l.__size_;
      }

      if (!sub_298B88E98(v25, v26, 0))
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &__dst;
        }

        else
        {
          v29 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = __dst.__r_.__value_.__l.__size_;
        }

        sub_298B88F28(v29, v30, &v188);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v188;
      }

      __p = *&__dst.__r_.__value_.__l.__data_;
      *v191 = *(&__dst.__r_.__value_.__l + 2);
      memset(&__dst, 0, sizeof(__dst));
      sub_298B89CC0(v20, v23, v24);
      sub_298B891F0(v20, &v189);
      --*(v20 + 8);
      if (v189 == 8)
      {
        sub_298B8A314(&__p);
      }

      else if (v189 == 7)
      {
        sub_298B8A370(&__p);
      }

      else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        v27 = v21[1];
        if (v27)
        {
          do
          {
LABEL_133:
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
          goto LABEL_121;
        }
      }

      else
      {
        v27 = v21[1];
        if (v27)
        {
          goto LABEL_133;
        }
      }

      do
      {
        v28 = v21[2];
        v120 = *v28 == v21;
        v21 = v28;
      }

      while (!v120);
LABEL_121:
      v21 = v28;
    }

    while (v28 != (v3 + 312));
  }

  sub_298B89C2C(v20);
  --*(v20 + 8);
  v31 = *a1;
  sub_298B89CC0(*a1, "StaticIfOffsets", 0xFuLL);
  sub_298B89A80(v31);
  v32 = *(v3 + 328);
  for (j = *(v3 + 336); v32 != j; ++v32)
  {
    while (1)
    {
      sub_298ADC8F4(&__dst, *v32);
      LOWORD(v189) = 6;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &__dst;
      }

      else
      {
        v34 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = __dst.__r_.__value_.__l.__size_;
      }

      if (!sub_298B88E98(v34, v35, 0))
      {
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &__dst;
        }

        else
        {
          v36 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v37 = __dst.__r_.__value_.__l.__size_;
        }

        sub_298B88F28(v36, v37, &v188);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __dst = v188;
      }

      __p = *&__dst.__r_.__value_.__l.__data_;
      *v191 = *(&__dst.__r_.__value_.__l + 2);
      memset(&__dst, 0, sizeof(__dst));
      sub_298B891F0(v31, &v189);
      if (v189 == 8)
      {
        sub_298B8A314(&__p);
      }

      else if (v189 == 7)
      {
        sub_298B8A370(&__p);
      }

      else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (++v32 == j)
      {
        goto LABEL_163;
      }
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_163:
  sub_298B89B0C(v31);
  --*(v31 + 8);
  v38 = *a1;
  v39 = *(v3 + 352);
  LOWORD(v189) = 1;
  LOBYTE(__p) = v39;
  sub_298B89CC0(v38, "KernelcacheStubOptimization", 0x1BuLL);
  sub_298B891F0(v38, &v189);
  --*(v38 + 8);
  if (v189 == 8)
  {
    sub_298B8A314(&__p);
  }

  else if (v189 == 7)
  {
    sub_298B8A370(&__p);
  }

  else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  sub_298BFBB50(v3 + 360, *a1);
  v180 = a1;
  v40 = *a1;
  sub_298B89CC0(*a1, "Images", 6uLL);
  sub_298B89BA0(v40);
  v182 = v3;
  v41 = *(v3 + 408);
  if (v41)
  {
    v42 = 0;
    p_data = 0;
    do
    {
      v189 = v41 + 2;
      __p = 0uLL;
      sub_298B1FB90(&v189, &v188);
      v44 = p_data - v42;
      v45 = 0xAAAAAAAAAAAAAAABLL * ((p_data - v42) >> 3);
      v46 = v45 + 1;
      if (v45 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_298ADDDA0();
      }

      if (0x5555555555555556 * (-v42 >> 3) > v46)
      {
        v46 = 0x5555555555555556 * (-v42 >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * (-v42 >> 3) >= 0x555555555555555)
      {
        v47 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v47 = v46;
      }

      if (v47)
      {
        if (v47 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_298ADDDA0();
      }

      v48 = (24 * v45);
      *v48 = v188;
      memset(&v188, 0, sizeof(v188));
      memcpy(v48 - v44, v42, v44);
      if (v42)
      {
        operator delete(v42);
        if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v188.__r_.__value_.__l.__data_);
        }
      }

      v42 = v48 - v44;
      p_data = &v48[1].__r_.__value_.__l.__data_;
      v41 = *v41;
    }

    while (v41);
  }

  else
  {
    v42 = 0;
    p_data = 0;
  }

  v49 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((p_data - v42) >> 3));
  if (p_data == v42)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49;
  }

  sub_298C2DF78(v42, p_data, v50, 1);
  if (p_data == v42)
  {
    v68 = a1;
    if (v42)
    {
      goto LABEL_259;
    }

    goto LABEL_260;
  }

  v51 = v42;
  do
  {
LABEL_192:
    v52 = *(v51 + 23);
    if (v52 >= 0)
    {
      v53 = v51;
    }

    else
    {
      v53 = *v51;
    }

    if (v52 >= 0)
    {
      v54 = *(v51 + 23);
    }

    else
    {
      v54 = *(v51 + 8);
    }

    v188.__r_.__value_.__r.__words[0] = 0;
    v188.__r_.__value_.__l.__size_ = v53;
    v188.__r_.__value_.__r.__words[2] = v54;
    sub_298C26CD8(&uu2, &v188);
    v55 = *(v3 + 400);
    if (!*&v55 || ((v56 = uu2.__r_.__value_.__l.__size_ ^ uu2.__r_.__value_.__r.__words[0], v57 = vcnt_s8(v55), v57.i16[0] = vaddlv_u8(v57), v57.u32[0] <= 1uLL) ? (v58 = (*&v55 - 1) & v56) : v56 < *&v55 ? (v58 = uu2.__r_.__value_.__l.__size_ ^ uu2.__r_.__value_.__r.__words[0]) : (v58 = v56 % *&v55), (v59 = *(*(v182 + 392) + 8 * v58)) == 0 || (v60 = *v59) == 0))
    {
LABEL_560:
      abort();
    }

    if (v57.u32[0] >= 2uLL)
    {
      while (1)
      {
        v61 = v60[1];
        if (v56 == v61)
        {
          if (!uuid_compare(v60 + 16, &uu2))
          {
            goto LABEL_221;
          }
        }

        else
        {
          if (v61 >= *&v55)
          {
            v61 %= *&v55;
          }

          if (v61 != v58)
          {
            goto LABEL_560;
          }
        }

        v60 = *v60;
        if (!v60)
        {
          goto LABEL_560;
        }
      }
    }

    v62 = *&v55 - 1;
    while (1)
    {
      v63 = v60[1];
      if (v56 == v63)
      {
        break;
      }

      if ((v63 & v62) != v58)
      {
        goto LABEL_560;
      }

LABEL_217:
      v60 = *v60;
      if (!v60)
      {
        goto LABEL_560;
      }
    }

    if (uuid_compare(v60 + 16, &uu2))
    {
      goto LABEL_217;
    }

LABEL_221:
    v3 = v182;
    if (*(v60 + 55) < 0)
    {
      sub_298AFE11C(&__dst, v60[4], v60[5]);
    }

    else
    {
      __dst = *(v60 + 4);
    }

    LOWORD(v189) = 6;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &__dst;
    }

    else
    {
      v64 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = __dst.__r_.__value_.__l.__size_;
    }

    if (!sub_298B88E98(v64, v65, 0))
    {
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &__dst;
      }

      else
      {
        v66 = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v67 = __dst.__r_.__value_.__l.__size_;
      }

      sub_298B88F28(v66, v67, &v188);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __dst = v188;
    }

    __p = *&__dst.__r_.__value_.__l.__data_;
    *v191 = *(&__dst.__r_.__value_.__l + 2);
    memset(&__dst, 0, sizeof(__dst));
    sub_298B89CC0(v40, v53, v54);
    sub_298B891F0(v40, &v189);
    --*(v40 + 8);
    if (v189 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v189 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
      v51 += 24;
      if (v51 == p_data)
      {
        break;
      }

      goto LABEL_192;
    }

    v51 += 24;
  }

  while (v51 != p_data);
  v68 = v180;
  if (v42)
  {
    do
    {
      while (1)
      {
        v69 = *(p_data - 1);
        p_data -= 3;
        if (v69 < 0)
        {
          break;
        }

        if (p_data == v42)
        {
          goto LABEL_259;
        }
      }

      operator delete(*p_data);
    }

    while (p_data != v42);
LABEL_259:
    operator delete(v42);
  }

LABEL_260:
  sub_298B89C2C(v40);
  --*(v40 + 8);
  v70 = *v68;
  sub_298B89CC0(*v68, "SharedContexts", 0xEuLL);
  sub_298B89A80(v70);
  v71 = *(v3 + 432);
  v72 = *(v3 + 440);
  if (v71 != v72)
  {
    while (2)
    {
      v73 = *v71;
      sub_298B89BA0(v70);
      v74 = *v73 - 1;
      if (v74 > 9)
      {
        v75 = 18;
        v76 = "unknown image type";
      }

      else
      {
        v75 = qword_298D1B808[v74];
        v76 = off_29EEB6448[v74];
      }

      sub_298BBB6E0(&v189, v76, v75);
      sub_298B89CC0(v70, "Type", 4uLL);
      sub_298B891F0(v70, &v189);
      --*(v70 + 8);
      if (v189 == 8)
      {
        sub_298B8A314(&__p);
        sub_298BF397C(v73 + 4, v70);
        if (*(v73 + 56) == 1)
        {
          goto LABEL_275;
        }

        goto LABEL_292;
      }

      if (v189 == 7)
      {
        sub_298B8A370(&__p);
      }

      else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
      {
        operator delete(__p);
        sub_298BF397C(v73 + 4, v70);
        if (*(v73 + 56) != 1)
        {
          goto LABEL_292;
        }

LABEL_275:
        sub_298ADC8F4(&__dst, *(v73 + 48));
        LOWORD(v189) = 6;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = &__dst;
        }

        else
        {
          v77 = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v78 = __dst.__r_.__value_.__l.__size_;
        }

        if (!sub_298B88E98(v77, v78, 0))
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v87 = &__dst;
          }

          else
          {
            v87 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v88 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v88 = __dst.__r_.__value_.__l.__size_;
          }

          sub_298B88F28(v87, v88, &v188);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst = v188;
        }

        __p = *&__dst.__r_.__value_.__l.__data_;
        *v191 = *(&__dst.__r_.__value_.__l + 2);
        memset(&__dst, 0, sizeof(__dst));
        sub_298B89CC0(v70, "EndAddr", 7uLL);
        sub_298B891F0(v70, &v189);
        --*(v70 + 8);
        if (v189 == 8)
        {
          sub_298B8A314(&__p);
        }

        else if (v189 == 7)
        {
          sub_298B8A370(&__p);
        }

        else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          v79 = *(v73 + 64);
          if (v79)
          {
            goto LABEL_293;
          }
        }

        else
        {
LABEL_292:
          v79 = *(v73 + 64);
          if (v79)
          {
LABEL_293:
            v82 = *(v79 + 16);
            v80 = v79 + 16;
            v81 = v82;
            v83 = *(v80 + 23);
            if (v83 >= 0)
            {
              v84 = v80;
            }

            else
            {
              v84 = v81;
            }

            v85 = *(v80 + 8);
            if (v83 >= 0)
            {
              v86 = v83;
            }

            else
            {
              v86 = v85;
            }

            sub_298BBB6E0(&v189, v84, v86);
            sub_298B89CC0(v70, "Segment", 7uLL);
            sub_298B891F0(v70, &v189);
            --*(v70 + 8);
            if (v189 == 8)
            {
              sub_298B8A314(&__p);
            }

            else if (v189 == 7)
            {
              sub_298B8A370(&__p);
            }

            else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
            {
              operator delete(__p);
            }
          }
        }

        sub_298B89C2C(v70);
        if (++v71 == v72)
        {
          goto LABEL_316;
        }

        continue;
      }

      break;
    }

    sub_298BF397C(v73 + 4, v70);
    if (*(v73 + 56) != 1)
    {
      goto LABEL_292;
    }

    goto LABEL_275;
  }

LABEL_316:
  sub_298B89B0C(v70);
  --*(v70 + 8);
  v89 = *v180;
  sub_298B89CC0(*v180, "UniqueContexts", 0xEuLL);
  sub_298B89A80(v89);
  v90 = *(v3 + 504);
  if (v90)
  {
    v91 = *(v3 + 496);
    v178 = v91 + 16 * v90;
LABEL_319:
    v92 = *(v91 + 8);
    sub_298B89BA0(v89);
    if (*(v92 + 23) < 0)
    {
      sub_298AFE11C(&v186, *v92, *(v92 + 1));
    }

    else
    {
      v169 = *v92;
      v186.__r_.__value_.__r.__words[2] = *(v92 + 2);
      *&v186.__r_.__value_.__l.__data_ = v169;
    }

    LOWORD(v189) = 6;
    if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = &v186;
    }

    else
    {
      v93 = v186.__r_.__value_.__r.__words[0];
    }

    if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v94 = SHIBYTE(v186.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v94 = v186.__r_.__value_.__l.__size_;
    }

    if (!sub_298B88E98(v93, v94, 0))
    {
      if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v170 = &v186;
      }

      else
      {
        v170 = v186.__r_.__value_.__r.__words[0];
      }

      if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v171 = SHIBYTE(v186.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v171 = v186.__r_.__value_.__l.__size_;
      }

      sub_298B88F28(v170, v171, &v188);
      if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v186.__r_.__value_.__l.__data_);
      }

      v186 = v188;
    }

    __p = *&v186.__r_.__value_.__l.__data_;
    *v191 = *(&v186.__r_.__value_.__l + 2);
    memset(&v186, 0, sizeof(v186));
    sub_298B89CC0(v89, "Name", 4uLL);
    sub_298B891F0(v89, &v189);
    --*(v89 + 8);
    if (v189 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v189 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }

    v95 = *(v92 + 3);
    LOWORD(v189) = 4;
    *&__p = v95;
    sub_298B89CC0(v89, "PID", 3uLL);
    sub_298B891F0(v89, &v189);
    --*(v89 + 8);
    v181 = v91;
    if (v189 == 8)
    {
      sub_298B8A314(&__p);
    }

    else if (v189 == 7)
    {
      sub_298B8A370(&__p);
    }

    else if (v189 == 6 && (v191[7] & 0x80000000) != 0)
    {
      operator delete(__p);
    }

    sub_298B89CC0(v89, "ImageLoadInfo", 0xDuLL);
    sub_298B89A80(v89);
    v96 = *(v92 + 4);
    v179 = v92;
    v183 = v92 + 5;
    if (v96 == (v92 + 40))
    {
      goto LABEL_412;
    }

    while (1)
    {
      v117 = *(v96 + 88);
      *(&__p + 1) = v96[10];
      v191[0] = v117;
      *&v191[1] = *(v96 + 89);
      uuid_copy(&v189, v96 + 64);
      sub_298B894A0(v89);
      sub_298AEF5BC(v89);
      *(*v89 + 8 * *(v89 + 8) - 8) = 2;
      *(v89 + 172) += *(v89 + 168);
      v118 = *(v89 + 160);
      v107 = *(v118 + 32);
      if (v107 >= *(v118 + 24))
      {
        while (1)
        {
          v106 = *(v118 + 16);
          if (v106)
          {
            *(v118 + 32) = v106;
            sub_298B9BB84(v118);
            v107 = *(v118 + 32);
            goto LABEL_401;
          }

          if (!*(v118 + 56))
          {
            break;
          }

          sub_298B9AE98(v118);
          v107 = *(v118 + 32);
          if (v107 < *(v118 + 24))
          {
            goto LABEL_401;
          }
        }

        v188.__r_.__value_.__s.__data_[0] = 123;
        sub_298B9BB84(v118);
      }

      else
      {
LABEL_401:
        *(v118 + 32) = v107 + 1;
        *v107 = 123;
      }

      sub_298BF397C(&v189, v89);
      v119 = *(v89 + 168);
      *(v89 + 172) -= v119;
      v120 = *(*v89 + 8 * *(v89 + 8) - 4) != 1 || v119 == 0;
      if (!v120)
      {
        break;
      }

LABEL_407:
      v101 = *(v89 + 160);
      v102 = *(v101 + 32);
      if (v102 >= *(v101 + 24))
      {
        while (1)
        {
LABEL_349:
          v103 = *(v101 + 16);
          if (v103)
          {
            *(v101 + 32) = v103;
            sub_298B9BB84(v101);
            v102 = *(v101 + 32);
            goto LABEL_408;
          }

          if (!*(v101 + 56))
          {
            break;
          }

          sub_298B9AE98(v101);
          v102 = *(v101 + 32);
          if (v102 < *(v101 + 24))
          {
            goto LABEL_408;
          }
        }

        v188.__r_.__value_.__s.__data_[0] = 125;
        sub_298B9BB84(v101);
        --*(v89 + 8);
        v104 = v96[1];
        if (!v104)
        {
          goto LABEL_409;
        }

        goto LABEL_355;
      }

LABEL_408:
      *(v101 + 32) = v102 + 1;
      *v102 = 125;
      --*(v89 + 8);
      v104 = v96[1];
      if (!v104)
      {
        do
        {
LABEL_409:
          v105 = v96[2];
          v120 = *v105 == v96;
          v96 = v105;
        }

        while (!v120);
        goto LABEL_411;
      }

      do
      {
LABEL_355:
        v105 = v104;
        v104 = *v104;
      }

      while (v104);
LABEL_411:
      v96 = v105;
      if (v105 == v183)
      {
LABEL_412:
        sub_298B89B0C(v89);
        --*(v89 + 8);
        sub_298B89CC0(v89, "Threads", 7uLL);
        sub_298B89A80(v89);
        v121 = *(v179 + 30);
        if (!v121)
        {
          goto LABEL_318;
        }

        v122 = *(v179 + 14);
        v123 = &v122[v121];
        v184 = v123;
        do
        {
LABEL_414:
          v124 = *v122;
          sub_298B894A0(v89);
          sub_298AEF5BC(v89);
          *(*v89 + 8 * *(v89 + 8) - 8) = 2;
          *(v89 + 172) += *(v89 + 168);
          v125 = *(v89 + 160);
          v126 = *(v125 + 32);
          if (v126 >= *(v125 + 24))
          {
            while (1)
            {
              v131 = *(v125 + 16);
              if (v131)
              {
                *(v125 + 32) = v131;
                sub_298B9BB84(v125);
                v126 = *(v125 + 32);
                goto LABEL_415;
              }

              if (!*(v125 + 56))
              {
                break;
              }

              sub_298B9AE98(v125);
              v126 = *(v125 + 32);
              if (v126 < *(v125 + 24))
              {
                goto LABEL_415;
              }
            }

            LOBYTE(v189) = 123;
            sub_298B9BB84(v125);
            *(&v188.__r_.__value_.__s + 23) = 2;
            strcpy(&v188, "0x");
            if (!v124)
            {
LABEL_427:
              uu2.__r_.__value_.__s.__data_[16] = 48;
              v129 = 16;
              v130 = 1;
              goto LABEL_419;
            }
          }

          else
          {
LABEL_415:
            *(v125 + 32) = v126 + 1;
            *v126 = 123;
            *(&v188.__r_.__value_.__s + 23) = 2;
            strcpy(&v188, "0x");
            if (!v124)
            {
              goto LABEL_427;
            }
          }

          v127 = 16;
          do
          {
            uu2.__r_.__value_.__s.__data_[v127--] = a0123456789abcd_1[v124 & 0xF] | 0x20;
            v128 = v124 >= 0x10;
            v124 >>= 4;
          }

          while (v128);
          v129 = v127 + 1;
          v130 = 16 - v127;
          if ((16 - v127) > 0x16)
          {
            operator new();
          }

LABEL_419:
          *(&__dst.__r_.__value_.__s + 23) = v130;
          if (v129 != 17)
          {
            memcpy(&__dst, &uu2 + v129, v130);
          }

          __dst.__r_.__value_.__s.__data_[v130] = 0;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v132 = &__dst;
          }

          else
          {
            v132 = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v133 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v133 = __dst.__r_.__value_.__l.__size_;
          }

          v134 = std::string::append(&v188, v132, v133);
          v135 = v134->__r_.__value_.__r.__words[2];
          *&uu2.__r_.__value_.__l.__data_ = *&v134->__r_.__value_.__l.__data_;
          uu2.__r_.__value_.__r.__words[2] = v135;
          v134->__r_.__value_.__l.__size_ = 0;
          v134->__r_.__value_.__r.__words[2] = 0;
          v134->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
            if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_505:
              operator delete(v188.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_505;
          }

          LOWORD(v189) = 6;
          if ((uu2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_uu2 = &uu2;
          }

          else
          {
            p_uu2 = uu2.__r_.__value_.__r.__words[0];
          }

          if ((uu2.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v137 = SHIBYTE(uu2.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v137 = uu2.__r_.__value_.__l.__size_;
          }

          if (!v137)
          {
            goto LABEL_448;
          }

          v138 = 0;
          v139 = p_uu2 + v137;
          while ((p_uu2->__r_.__value_.__s.__data_[v138] & 0x80000000) == 0)
          {
            if (v137 == ++v138)
            {
              goto LABEL_448;
            }
          }

          v149 = p_uu2;
          while (1)
          {
            v150 = v149;
            v151 = v149->__r_.__value_.__s.__data_[0];
            v152 = byte_298D1AA47[v149->__r_.__value_.__s.__data_[0]];
            if (v139 - v149 <= v152)
            {
              break;
            }

            v153 = v152 + 1;
            v149 = (v149 + v152 + 1);
            if (v152 > 1u)
            {
              if (v152 != 2)
              {
                if (v152 != 3 || v150->__r_.__value_.__s.__data_[v152] > -65)
                {
                  break;
                }

                v153 = 3;
              }

              v155 = v150 + v153;
              v156 = *(v155 - 1);
              v154 = v155 - 1;
              if (v156 > -65)
              {
                break;
              }
            }

            else
            {
              if (!v152)
              {
                goto LABEL_497;
              }

              v154 = &v150->__r_.__value_.__s.__data_[v152 + 1];
              if (v152 != 1)
              {
                break;
              }
            }

            v157 = *(v154 - 1);
            if (v157 > -65)
            {
              break;
            }

            if (v151 > 239)
            {
              if (v151 == 240)
              {
                if (v157 < 0x90u)
                {
                  break;
                }

                goto LABEL_476;
              }

              if (v151 == 244)
              {
                if (v157 > 0x8Fu)
                {
                  break;
                }

                goto LABEL_476;
              }
            }

            else
            {
              if (v151 == 224)
              {
                if (v157 < 0xA0u)
                {
                  break;
                }

                goto LABEL_476;
              }

              if (v151 == 237)
              {
                if (v157 > 0x9Fu)
                {
                  break;
                }

                goto LABEL_476;
              }
            }

LABEL_497:
            if (v151 < -62 || v151 > 0xF4)
            {
              break;
            }

LABEL_476:
            if (v149 == v139)
            {
              goto LABEL_448;
            }
          }

          sub_298B88F28(p_uu2, v137, &v188);
          if (SHIBYTE(uu2.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(uu2.__r_.__value_.__l.__data_);
          }

          uu2 = v188;
LABEL_448:
          __p = *&uu2.__r_.__value_.__l.__data_;
          *v191 = *(&uu2.__r_.__value_.__l + 2);
          memset(&uu2, 0, sizeof(uu2));
          sub_298B89CC0(v89, "TID", 3uLL);
          sub_298B891F0(v89, &v189);
          --*(v89 + 8);
          if (v189 == 8)
          {
            sub_298B8A314(&__p);
            if (SHIBYTE(uu2.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_465;
            }

            goto LABEL_456;
          }

          if (v189 == 7)
          {
            sub_298B8A370(&__p);
LABEL_455:
            if (SHIBYTE(uu2.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_465;
            }

            goto LABEL_456;
          }

          if (v189 != 6 || (v191[7] & 0x80000000) == 0)
          {
            goto LABEL_455;
          }

          operator delete(__p);
          if (SHIBYTE(uu2.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_465:
            operator delete(uu2.__r_.__value_.__l.__data_);
          }

LABEL_456:
          v140 = *(v89 + 168);
          *(v89 + 172) -= v140;
          if (*(*v89 + 8 * *(v89 + 8) - 4) != 1 || v140 == 0)
          {
LABEL_461:
            v142 = *(v89 + 160);
            v143 = *(v142 + 32);
            if (v143 >= *(v142 + 24))
            {
              goto LABEL_469;
            }

LABEL_462:
            *(v142 + 32) = v143 + 1;
            *v143 = 125;
            --*(v89 + 8);
            if (++v122 == v123)
            {
              break;
            }

            goto LABEL_414;
          }

          v144 = *(v89 + 160);
          v145 = *(v144 + 32);
          if (v145 < *(v144 + 24))
          {
LABEL_467:
            *(v144 + 32) = v145 + 1;
            *v145 = 10;
            v146 = *(v89 + 160);
            v147 = *(v89 + 172);
            if (v147 >= 0x50)
            {
              goto LABEL_516;
            }

            goto LABEL_468;
          }

          v158 = *(v144 + 16);
          if (v158)
          {
LABEL_507:
            *(v144 + 32) = v158;
            sub_298B9BB84(v144);
            v145 = *(v144 + 32);
            goto LABEL_467;
          }

          while (*(v144 + 56))
          {
            sub_298B9AE98(v144);
            v145 = *(v144 + 32);
            if (v145 < *(v144 + 24))
            {
              v123 = v184;
              goto LABEL_467;
            }

            v158 = *(v144 + 16);
            v123 = v184;
            if (v158)
            {
              goto LABEL_507;
            }
          }

          LOBYTE(v189) = 10;
          sub_298B9BB84(v144);
          v123 = v184;
          v146 = *(v89 + 160);
          v147 = *(v89 + 172);
          if (v147 >= 0x50)
          {
LABEL_516:
            while (2)
            {
              if (v147 >= 0x4F)
              {
                v159 = 79;
              }

              else
              {
                v159 = v147;
              }

              v160 = *(v146 + 32);
              v161 = *(v146 + 24) - v160;
              if (v161 < v159)
              {
                v163 = v159;
                v162 = "                                                                                ";
                while (1)
                {
                  v164 = *(v146 + 16);
                  if (!v164)
                  {
                    break;
                  }

LABEL_537:
                  if (v160 == v164)
                  {
                    v161 *= v163 / v161;
                    v163 -= v161;
                    v165 = v162;
                    sub_298B9BB84(v146);
                    v160 = *(v146 + 32);
                    v167 = *(v146 + 24) - v160;
                    if (v163 <= v167)
                    {
                      sub_298B9BE18(v146, &v165[v161], v163);
                      v123 = v184;
                      goto LABEL_532;
                    }
                  }

                  else
                  {
                    v165 = v162;
                    sub_298B9BE18(v146, v162, v161);
                    v166 = *(v146 + 32);
                    *(v146 + 32) = *(v146 + 16);
                    sub_298B9BB84(v146);
                    v163 -= v161;
                    v160 = *(v146 + 32);
                    v167 = *(v146 + 24) - v160;
                  }

                  v162 = &v165[v161];
                  v161 = v167;
                  v123 = v184;
                  if (v167 >= v163)
                  {
                    goto LABEL_521;
                  }
                }

                while (1)
                {
                  if (!*(v146 + 56))
                  {
                    sub_298B9BB84(v146);
                    goto LABEL_532;
                  }

                  v168 = v162;
                  sub_298B9AE98(v146);
                  v160 = *(v146 + 32);
                  v161 = *(v146 + 24) - v160;
                  if (v161 >= v163)
                  {
                    break;
                  }

                  v164 = *(v146 + 16);
                  v162 = v168;
                  v123 = v184;
                  if (v164)
                  {
                    goto LABEL_537;
                  }
                }

                v162 = v168;
                v123 = v184;
              }

              else
              {
                v162 = "                                                                                ";
                v163 = v159;
              }

LABEL_521:
              if (v163 <= 1)
              {
                if (!v163)
                {
                  goto LABEL_531;
                }

                if (v163 == 1)
                {
                  goto LABEL_530;
                }
              }

              else
              {
                switch(v163)
                {
                  case 2uLL:
                    goto LABEL_527;
                  case 3uLL:
                    goto LABEL_526;
                  case 4uLL:
                    v160[3] = v162[3];
                    v160 = *(v146 + 32);
LABEL_526:
                    v160[2] = v162[2];
                    v160 = *(v146 + 32);
LABEL_527:
                    v160[1] = v162[1];
                    v160 = *(v146 + 32);
LABEL_530:
                    *v160 = *v162;
LABEL_531:
                    *(v146 + 32) += v163;
LABEL_532:
                    LODWORD(v147) = v147 - v159;
                    if (!v147)
                    {
                      goto LABEL_461;
                    }

                    continue;
                }
              }

              break;
            }

            memcpy(v160, v162, v163);
            goto LABEL_531;
          }

LABEL_468:
          sub_298B9BCEC(v146, "                                                                                ", v147);
          v142 = *(v89 + 160);
          v143 = *(v142 + 32);
          if (v143 < *(v142 + 24))
          {
            goto LABEL_462;
          }

          while (1)
          {
LABEL_469:
            v148 = *(v142 + 16);
            if (v148)
            {
              *(v142 + 32) = v148;
              sub_298B9BB84(v142);
              v143 = *(v142 + 32);
              goto LABEL_462;
            }

            if (!*(v142 + 56))
            {
              break;
            }

            sub_298B9AE98(v142);
            v143 = *(v142 + 32);
            if (v143 < *(v142 + 24))
            {
              goto LABEL_462;
            }
          }

          LOBYTE(v189) = 125;
          sub_298B9BB84(v142);
          --*(v89 + 8);
          ++v122;
        }

        while (v122 != v123);
LABEL_318:
        sub_298B89B0C(v89);
        --*(v89 + 8);
        sub_298B89C2C(v89);
        v91 = v181 + 16;
        if (v181 + 16 == v178)
        {
          goto LABEL_559;
        }

        goto LABEL_319;
      }
    }

    v97 = *(v89 + 160);
    v98 = *(v97 + 32);
    if (v98 >= *(v97 + 24))
    {
      while (1)
      {
        v108 = *(v97 + 16);
        if (v108)
        {
          break;
        }

        if (!*(v97 + 56))
        {
          v188.__r_.__value_.__s.__data_[0] = 10;
          sub_298B9BB84(v97);
          v99 = *(v89 + 160);
          v100 = *(v89 + 172);
          if (v100 < 0x50)
          {
LABEL_348:
            sub_298B9BCEC(v99, "                                                                                ", v100);
            v101 = *(v89 + 160);
            v102 = *(v101 + 32);
            if (v102 >= *(v101 + 24))
            {
              goto LABEL_349;
            }

            goto LABEL_408;
          }

LABEL_369:
          while (2)
          {
            if (v100 >= 0x4F)
            {
              v109 = 79;
            }

            else
            {
              v109 = v100;
            }

            v110 = *(v99 + 32);
            v111 = *(v99 + 24) - v110;
            if (v111 >= v109)
            {
              v112 = "                                                                                ";
              v113 = v109;
LABEL_374:
              if (v113 <= 1)
              {
                if (!v113)
                {
                  goto LABEL_384;
                }

                if (v113 == 1)
                {
                  goto LABEL_383;
                }
              }

              else
              {
                switch(v113)
                {
                  case 2uLL:
                    goto LABEL_380;
                  case 3uLL:
                    goto LABEL_379;
                  case 4uLL:
                    v110[3] = v112[3];
                    v110 = *(v99 + 32);
LABEL_379:
                    v110[2] = v112[2];
                    v110 = *(v99 + 32);
LABEL_380:
                    v110[1] = v112[1];
                    v110 = *(v99 + 32);
LABEL_383:
                    *v110 = *v112;
LABEL_384:
                    *(v99 + 32) += v113;
LABEL_385:
                    LODWORD(v100) = v100 - v109;
                    if (!v100)
                    {
                      goto LABEL_407;
                    }

                    continue;
                }
              }

              memcpy(v110, v112, v113);
              goto LABEL_384;
            }

            break;
          }

          v113 = v109;
          v112 = "                                                                                ";
          while (1)
          {
            while (1)
            {
              v114 = *(v99 + 16);
              if (!v114)
              {
                break;
              }

              if (v110 == v114)
              {
                v111 *= v113 / v111;
                v113 -= v111;
                sub_298B9BB84(v99);
                v110 = *(v99 + 32);
                v116 = *(v99 + 24) - v110;
                if (v113 <= v116)
                {
                  sub_298B9BE18(v99, &v112[v111], v113);
                  goto LABEL_385;
                }
              }

              else
              {
                sub_298B9BE18(v99, v112, v111);
                v115 = *(v99 + 32);
                *(v99 + 32) = *(v99 + 16);
                sub_298B9BB84(v99);
                v113 -= v111;
                v110 = *(v99 + 32);
                v116 = *(v99 + 24) - v110;
              }

              v112 += v111;
              v111 = v116;
              if (v116 >= v113)
              {
                goto LABEL_374;
              }
            }

            if (!*(v99 + 56))
            {
              break;
            }

            sub_298B9AE98(v99);
            v110 = *(v99 + 32);
            v111 = *(v99 + 24) - v110;
            if (v111 >= v113)
            {
              goto LABEL_374;
            }
          }

          sub_298B9BB84(v99);
          goto LABEL_385;
        }

        sub_298B9AE98(v97);
        v98 = *(v97 + 32);
        if (v98 < *(v97 + 24))
        {
          goto LABEL_347;
        }
      }

      *(v97 + 32) = v108;
      sub_298B9BB84(v97);
      v98 = *(v97 + 32);
    }

LABEL_347:
    *(v97 + 32) = v98 + 1;
    *v98 = 10;
    v99 = *(v89 + 160);
    v100 = *(v89 + 172);
    if (v100 >= 0x50)
    {
      goto LABEL_369;
    }

    goto LABEL_348;
  }

LABEL_559:
  result = sub_298B89B0C(v89);
  --*(v89 + 8);
  v173 = *MEMORY[0x29EDCA608];
  return result;
}