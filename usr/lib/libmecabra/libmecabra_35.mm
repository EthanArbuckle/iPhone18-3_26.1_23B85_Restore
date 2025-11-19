void sub_2993CC828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 248) = a16;
  *(v17 - 160) = a17;
  sub_299259FC8((v17 - 160));
  _Block_object_dispose((v17 - 208), 8);
  _Unwind_Resume(a1);
}

unint64_t sub_2993CC8A4(unint64_t result, uint64_t a2, __int16 a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, void *a8, void *a9, char a10)
{
  v50 = result;
  if (a7)
  {
    v13 = 0;
    v14 = *(*a8 + 380);
    v48 = a4 - a3;
    v49 = a4 - a3 + a5;
    v51 = a6 & 0x1700;
    v45 = *(a2 + 136);
    while (1)
    {
      v47 = v13;
      v15 = v45 + 24 * v13;
      result = (*(**a8 + 136))(*a8, v15);
      if (result)
      {
        break;
      }

LABEL_73:
      v13 = v47 + 1;
      if (v47 + 1 == a7)
      {
        return result;
      }
    }

    v16 = 0;
    while (1)
    {
      v17 = (*(**a8 + 128))(*a8, v15, v16);
      v18 = *(v17 + 4);
      if ((v18 & 0x40) != 0)
      {
        goto LABEL_69;
      }

      v19 = v17;
      if (v14 != 6)
      {
        if ((v18 & 2) == 0 && a10 && ((a6 & 0x20000) == 0 || (v18 & 1) == 0) || (a6 & 8) != 0 && (v18 & 8) == 0)
        {
          goto LABEL_69;
        }

        if ((a6 & 2) != 0)
        {
          sub_29920B70C(*(a2 + 16));
          v21 = v25;
          v25[5] = 0u;
          v25[6] = 0u;
          v25[3] = 0u;
          v25[4] = 0u;
          v25[1] = 0u;
          v25[2] = 0u;
          *v25 = 0u;
          v26 = *a8;
          *(v21 + 47) = *(v19 + 2);
          *(v21 + 46) = *(v19 + 6);
          *(v21 + 18) = *(v19 + 8) + (v26[95] << 28);
          *(v21 + 42) = *v19;
          *(v21 + 7) = (*(*v26 + 144))(v26, v19);
LABEL_22:
          v23 = a5;
          if ((a6 & 8) != 0)
          {
            v23 = *(v15 + 12);
          }

          *(v21 + 44) = v23;
          v24 = v49;
          goto LABEL_25;
        }

        if ((v18 & 1) == 0)
        {
          goto LABEL_69;
        }
      }

      sub_29920B70C(*(a2 + 16));
      v21 = v20;
      v20[5] = 0u;
      v20[6] = 0u;
      v20[3] = 0u;
      v20[4] = 0u;
      v20[1] = 0u;
      v20[2] = 0u;
      *v20 = 0u;
      v22 = *a8;
      *(v21 + 47) = *(v19 + 2);
      *(v21 + 46) = *(v19 + 6);
      *(v21 + 18) = *(v19 + 8) + (v22[95] << 28);
      *(v21 + 42) = *v19;
      *(v21 + 7) = (*(*v22 + 144))(v22, v19);
      if ((a6 & 2) != 0)
      {
        goto LABEL_22;
      }

      if (*(v15 + 12) <= a5)
      {
        v23 = *(v15 + 12);
      }

      else
      {
        v23 = a5;
      }

      *(v21 + 44) = v23;
      v24 = v23 + v48;
LABEL_25:
      *(v21 + 45) = v24;
      v27 = *(v15 + 1);
      if (v14 == 2)
      {
        v28 = 0;
      }

      else
      {
        v28 = *(v15 + 8) + (v14 << 28);
      }

      *(v21 + 20) = v28;
      *(v21 + 108) = *(*a8 + 792);
      *(v21 + 6) = a4;
      *(v21 + 8) = *(v15 + 16);
      v29 = *(v19 + 4);
      if (v14 == 7)
      {
        v30 = 9;
      }

      else if (a5 <= v23 && (a10 & 1) != 0)
      {
        v30 = 5;
      }

      else if ((v29 & 3) == 0 || v14 == 6)
      {
        v30 = 6;
      }

      else
      {
        v30 = 0;
      }

      *(v21 + 109) = v30;
      *(v21 + 107) = *v15;
      *(v21 + 3) = *a9;
      *(v21 + 106) = v27 & 1;
      v32 = v29 | 0x10;
      if (v14 != 8)
      {
        v32 = v29;
      }

      *(v21 + 52) = v32;
      v33 = *(v21 + 42);
      if ((a6 & 0x80) == 0)
      {
        if (!v51)
        {
          v34 = 0;
LABEL_51:
          if ((a6 & 4) != 0)
          {
            if ((atomic_load_explicit(&qword_2A1461808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461808))
            {
              qword_2A1461800 = sub_299237120();
              __cxa_guard_release(&qword_2A1461808);
            }

            if ((a6 & 0x40) != 0)
            {
              v37 = *(v15 + 14) >> 1;
            }

            else
            {
              v37 = (*(v15 + 12) - *(v21 + 44) + (*(v15 + 12) < *(v21 + 44))) >> 1;
            }

            v40 = __OFSUB__(v37, 1);
            v41 = v37 - 1;
            if (v41 < 0 != v40)
            {
              v42 = 0;
            }

            else
            {
              v42 = *(qword_2A1461800 + 536) + v41 * *(qword_2A1461800 + 538);
              v33 += v42;
            }

            v34 += v42;
          }

          if (v33 >= 0x7FFF)
          {
            v43 = 0x7FFF;
          }

          else
          {
            v43 = v33;
          }

          *(v21 + 42) = v43;
          if (v34 >= 0x7FFF)
          {
            v44 = 0x7FFF;
          }

          else
          {
            v44 = v34;
          }

          *(v21 + 43) = v44;
          *a9 = v21;
          goto LABEL_69;
        }

LABEL_48:
        if ((*(v15 + 12) & 0x100) != 0)
        {
          v38 = *(v50 + 1320);
          v39 = *(v38 + 552);
          v33 += v39;
          v34 = ((*(v38 + 448) * v39) + 0.0);
          if (!v27)
          {
            goto LABEL_51;
          }
        }

        else
        {
LABEL_49:
          v34 = 0;
          if (!v27)
          {
            goto LABEL_51;
          }
        }

        v35 = *(v50 + 1320);
        v36 = *(v15 + 4) * *(v35 + 444);
        v33 = (v33 - v36);
        v34 = (v34 - (v36 * *(v35 + 448)));
        goto LABEL_51;
      }

      if ((a6 & 0x80000) == 0 || !v27 || (v32 & 2) != 0)
      {
        if (v51)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

LABEL_69:
      ++v16;
      result = (*(**a8 + 136))(*a8, v15);
      if (v16 >= result)
      {
        goto LABEL_73;
      }
    }
  }

  return result;
}

void sub_2993CCD90(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, __int16 a5, __int16 a6, uint64_t a7, void *a8)
{
  v27 = std::mutex::try_lock((a1 + 128));
  if (a2 && v27)
  {
    v12 = *(a4 + 136);
    bzero(v12, 0x3000uLL);
    v14 = *a7 ? *(a7 + 8) >> 1 : 0;
    v30 = v12;
    v15 = sub_2992A23D4(a2, *(a1 + 1336), *a7, v14, v12, 0x200uLL, *(a7 + 24), *(a7 + 16), v13);
    v16 = *(a2 + 112) == 2 ? 8 : 7;
    if (v15)
    {
      v17 = 0;
      v28 = v15;
      v29 = a2;
      do
      {
        sub_2992A2634(a2, v30[6 * v17 + 2], &v34);
        v19 = v34;
        v18 = v35;
        if (v34 != v35)
        {
          do
          {
            if (v17 <= 0x1FF)
            {
              v20 = *a7;
              v21 = v19[2];
              v22 = *(a4 + 136);
              sub_29920B70C(*(a4 + 16));
              *(v23 + 80) = 0u;
              *(v23 + 96) = 0u;
              v24 = (v22 + 24 * v17);
              *(v23 + 48) = 0u;
              *(v23 + 64) = 0u;
              *(v23 + 16) = 0u;
              *(v23 + 32) = 0u;
              *v23 = 0u;
              v25 = v24[12];
              *(v23 + 88) = v25;
              *(v23 + 106) = v24[1];
              *(v23 + 94) = a5;
              *(v23 + 92) = a5;
              *(v23 + 84) = a6;
              *(v23 + 90) = v25 + v20 - a3;
              *(v23 + 48) = v20;
              *(v23 + 56) = v21;
              *(v23 + 107) = *v24;
              *(v23 + 109) = v16;
              *(v23 + 24) = *a8;
              *a8 = v23;
            }

            v19 += 7;
          }

          while (v19 != v18);
          v19 = v34;
        }

        if (v19)
        {
          v35 = v19;
          operator delete(v19);
        }

        ++v17;
        a2 = v29;
      }

      while (v17 != v28);
    }
  }

  if (v27)
  {
    std::mutex::unlock((a1 + 128));
  }
}

void sub_2993CCFEC(uint64_t a1, __int16 a2, const void *a3, unsigned __int16 a4, __int16 a5, __int16 a6, int a7, int a8, void *a9)
{
  sub_29920B70C(*(a1 + 16));
  v18 = v17;
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 94) = a5;
  *(v17 + 92) = a5;
  *(v17 + 72) = a7;
  *(v17 + 84) = a6;
  *(v17 + 86) = a6;
  *(v17 + 88) = a4;
  *(v17 + 90) = a3 - a2 + a4;
  *(v17 + 48) = a3;
  if (a8)
  {
    if (a3)
    {
      v19 = a4 >> 1;
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_2993D1B2C(a1, v19);
    memcpy(v20, a3, 2 * v19);
    v21 = sub_2993D1BF4(a1);
    *v21 = v20;
    v21[1] = (2 * v19);
    *(v18 + 64) = v21;
  }

  *(v18 + 107) = 0;
  *(v18 + 109) = 11;
  *(v18 + 24) = *a9;
  *a9 = v18;
}

_OWORD *sub_2993CD144(uint64_t a1, uint64_t a2, unsigned int a3, int a4, const void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v8 = a8;
  v9 = (*(a1 + 296) + 16 * (a3 >> 18));
  v10 = v9[1];
  if (!v10)
  {
    return *a8;
  }

  v14 = a1;
  v15 = *v9;
  v16 = a6 - a5;
  v17 = (a6 - a4);
  v18 = (a6 - a5) >> 1;
  if (!a5)
  {
    v18 = 0;
  }

  __n = 2 * v18;
  v32 = v18;
  v30 = 2 * v18;
  do
  {
    sub_29920B70C(*(a2 + 16));
    v20 = v19;
    v19[5] = 0u;
    v19[6] = 0u;
    v19[3] = 0u;
    v19[4] = 0u;
    v19[1] = 0u;
    v19[2] = 0u;
    *v19 = 0u;
    v21 = *(v14 + 104);
    *(v20 + 47) = *(v15 + 2);
    *(v20 + 46) = *(v15 + 6);
    *(v20 + 18) = *(v15 + 8) + (v21[95] << 28);
    *(v20 + 42) = *v15;
    v22 = (*(*v21 + 144))(v21, v15);
    *(v20 + 6) = a5;
    *(v20 + 7) = v22;
    *(v20 + 44) = v16;
    *(v20 + 45) = v17;
    *(v20 + 3) = *v8;
    *(v20 + 109) = 1;
    *(v20 + 20) = 0;
    *(v20 + 108) = *(*(v14 + 104) + 792);
    if (a7)
    {
      v23 = v8;
      v24 = v17;
      v25 = v16;
      v26 = a7;
      v27 = sub_2993D1B2C(a2, v32);
      memcpy(v27, a5, __n);
      v28 = sub_2993D1BF4(a2);
      *v28 = v27;
      a7 = v26;
      v16 = v25;
      v17 = v24;
      v8 = v23;
      v14 = a1;
      v28[1] = v30;
      *(v20 + 8) = v28;
    }

    *v8 = v20;
    v15 += 12;
    --v10;
  }

  while (v10);
  return v20;
}

uint64_t sub_2993CD2F4(unint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, unsigned int a5)
{
  v75 = *MEMORY[0x29EDCA608];
  v69 = 0;
  v70 = a4;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2000000000;
  if ((a3 - a2) <= 0xFFFE)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2 + 0xFFFF;
  }

  v8 = a2;
  if (v7 <= a2)
  {
    goto LABEL_32;
  }

  v9 = *(a1 + 328);
  v8 = a2;
  while (1)
  {
    v10 = v7 - v8;
    if ((*(a1 + 720) - 3) <= 2)
    {
      break;
    }

    v11 = *v8;
    if ((*v8 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    if (v10 >= 2 && (v11 & 0xE0) == 0xC0)
    {
      v12 = 2;
      v11 = v8[1] & 0x3F | ((v11 & 0x1F) << 6);
    }

    else
    {
      if (v10 < 3)
      {
        goto LABEL_21;
      }

      if ((v11 & 0xF0) == 0xE0)
      {
        v11 = (v11 << 12) | ((v8[1] & 0x3F) << 6) | v8[2] & 0x3F;
        v12 = 3;
      }

      else
      {
        if (v10 == 3)
        {
          goto LABEL_21;
        }

        if ((v11 & 0xF8) == 0xF0)
        {
          v11 = 0;
          v12 = 4;
        }

        else
        {
          if (v10 < 5)
          {
            goto LABEL_21;
          }

          if ((v11 & 0xFC) == 0xF8)
          {
            v11 = 0;
            v12 = 5;
          }

          else
          {
            if (v10 == 5 || (v11 & 0xFE) != 0xFC)
            {
LABEL_21:
              v11 = 0;
LABEL_10:
              v12 = 1;
              goto LABEL_14;
            }

            v11 = 0;
            v12 = 6;
          }
        }
      }
    }

LABEL_14:
    v13 = *(*(a1 + 712) + 4 * v11);
    if ((v9 & v13 & 0x3FFFF) != 0)
    {
      v8 += v12;
      v9 = v13;
      if (v8 < v7)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (v10 >= 2)
  {
    v11 = *v8;
    v12 = 2;
    goto LABEL_14;
  }

  if ((v9 & **(a1 + 712) & 0x3FFFF) != 0)
  {
    v14 = 0;
    goto LABEL_89;
  }

LABEL_32:
  v14 = 0;
  if (v8 && v8 != v7)
  {
    v15 = sub_2993652F8(5u);
    v16 = v7 - v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v55 = v16 >> 1;
      sub_299277B3C(v8, v16 >> 1, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *&buf[4] = p_p;
      _os_log_debug_impl(&dword_29918C000, v15, OS_LOG_TYPE_DEBUG, "[TokenizerImpl::lookupOneWord] Input:[%s]", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v55 = v16 >> 1;
    }

    __p.__r_.__value_.__r.__words[0] = &unk_2A1F74930;
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    v64 = 0;
    v65 = 0;
    if ((a5 & 0x200000) != 0 || (v17 = *(a1 + 1336)) == 0 || (v18 = *(v17 + 184)) == 0 || !(*(*v18 + 24))(v18) || (v19 = *(*(a1 + 1336) + 184), (a5 & 2) != 0) && (v19[1].__r_.__value_.__s.__data_[8] & 1) == 0)
    {
      sub_2993C727C(v8, v55, (a5 >> 7) & 0xE | BYTE1(a5) & 0x10 | (a5 >> 1) & 0x20, *(a1 + 1336), *(a1 + 1344), buf);
      sub_2992726D0(&__p.__r_.__value_.__l.__size_);
      *&__p.__r_.__value_.__r.__words[1] = *&buf[8];
      v64 = v73;
      *&buf[16] = 0;
      v73 = 0;
      v65 = v74;
      *buf = &unk_2A1F74930;
      *&buf[8] = 0;
      v71 = &buf[8];
      sub_299259FC8(&v71);
      v19 = &__p;
    }

    v20 = *(a1 + 8);
    if (v20 != *(a1 + 16))
    {
      v21 = a5 & 0x1000;
      if ((a5 & 0x200C4) == 0xC4)
      {
        v22 = 2305;
      }

      else
      {
        v22 = 2049;
      }

      if ((a5 & 0x80000) != 0)
      {
        v23 = 2048;
      }

      else
      {
        v23 = (((a5 & 0x80) != 0) << 8) | 0x800;
      }

      v24 = v23 | v21;
      v25 = (((a5 & 0x80) != 0) << 8) | 0x801;
      if ((a5 & 0x80000) != 0)
      {
        v25 = v22;
      }

      v26 = v25 | v21;
      if ((a5 & 0x40) != 0)
      {
        v27 = v24;
      }

      else
      {
        v27 = a5 & 0x1000 | ((BYTE1(a5) & 7) << 13) | (((a5 & 0x80) != 0) << 8);
      }

      v28 = v27 & 0xF800;
      v54 = v27;
      v29 = v27 | 0x100;
      if ((a5 & 0x40) == 0)
      {
        v26 = (a5 & 0x1000 | ((BYTE1(a5) & 7) << 13) | (((a5 & 0x80) != 0) << 8)) + 1;
      }

      v30 = v26 & 0xFFFFF8FF;
      v57 = v26;
      v31 = v26 | 0x100;
      if ((a5 & 0x200C2) == 0xC2)
      {
        v32 = v29;
      }

      else
      {
        v32 = v28;
      }

      v53 = v32;
      if ((a5 & 0x200C0) == 0xC0)
      {
        v33 = v31;
      }

      else
      {
        v33 = v30;
      }

      v56 = v33;
      for (i = *(a1 + 8); i != *(a1 + 16); ++i)
      {
        v35 = *(*i + 380);
        v36 = v35 == 1 && (a5 & 0x40000) == 0;
        if (v36 || !((v35 != 10) | *(a1 + 1552) & 1) || (v35 | 2) == 3 && (a5 & 0x100000) != 0)
        {
          goto LABEL_80;
        }

        v37 = *(v70 + 136);
        bzero(v37, 0x3000uLL);
        if ((a5 & 4) != 0)
        {
          v38 = *sub_299237120() == 0;
          v40 = v56;
          v39 = v57;
        }

        else
        {
          if ((a5 & 8) != 0)
          {
            v41 = a5 & 0x1000 | (((a5 >> 6) & 1) << 11) | 2;
            if (v16 < 3)
            {
              goto LABEL_80;
            }

            goto LABEL_79;
          }

          v38 = *sub_299237120() == 0;
          v40 = v53;
          v39 = v54;
        }

        if (v38)
        {
          v39 = v40;
        }

        v41 = v39 | (a5 >> 3) & 0x10000;
LABEL_79:
        v42 = *i;
        v43 = *(a1 + 1336);
        *buf = &unk_2A1F78B58;
        *&buf[8] = &v70;
        v73 = buf;
        v44 = (*(*v42 + 88))(v42, v41, v8, v16, v19, v43, 0, v37, 512, buf, 0, 0);
        sub_2993872B0(buf);
        sub_2993CC8A4(a1, v70, a2, v8, v16, a5, v44, v20, v67 + 3, (a5 & 4) != 0);
LABEL_80:
        ++v20;
      }
    }

    v45 = v19[1].__r_.__value_.__s.__data_[8];
    v46 = *(a1 + 1544);
    v61[0] = MEMORY[0x29EDCA5F8];
    v61[1] = 0x40000000;
    v61[2] = sub_2993CDA6C;
    v61[3] = &unk_29EF22168;
    v61[6] = a2;
    v61[7] = v8;
    v62 = v45;
    v61[4] = &v66;
    v61[5] = v70;
    sub_29922F998(v46, v8, v55, 0, v61);
    if ((a5 & 4) == 0)
    {
      v47 = v16 - 2;
      v48 = *(a1 + 1544);
      v59[0] = MEMORY[0x29EDCA5F8];
      v59[1] = 0x40000000;
      v59[2] = sub_2993CDAC0;
      v59[3] = &unk_29EF22190;
      v49 = (v16 > 2) & (a5 >> 3);
      if (!v49)
      {
        v47 = v16;
      }

      v59[6] = a2;
      v59[7] = v8;
      v60 = v45;
      v59[4] = &v66;
      v59[5] = v70;
      sub_29922FEFC(v48, v49, v8, (v47 >> 1), (a5 >> 6) & 1, v59);
    }

    v14 = v67[3];
    __p.__r_.__value_.__r.__words[0] = &unk_2A1F74930;
    *buf = &__p.__r_.__value_.__l.__size_;
    sub_299259FC8(buf);
  }

LABEL_89:
  _Block_object_dispose(&v66, 8);
  v50 = *MEMORY[0x29EDCA608];
  return v14;
}

void sub_2993CDA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v15 - 160) = a15;
  sub_299259FC8((v15 - 160));
  _Block_object_dispose((v15 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2993CDB14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v41 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 112);
  if (!v4)
  {
LABEL_48:
    v12 = 0;
    goto LABEL_49;
  }

  if ((a3 - a2) <= 0xFFFE)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2 + 0xFFFF;
  }

  if (v5 <= a2)
  {
    v11 = 0;
    v7 = a2;
    goto LABEL_32;
  }

  v6 = *(a1 + 328);
  v7 = a2;
  while (1)
  {
    v8 = v5 - v7;
    if ((*(a1 + 720) - 3) <= 2)
    {
      break;
    }

    v9 = *v7;
    if ((*v7 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    if (v8 >= 2 && (v9 & 0xE0) == 0xC0)
    {
      v10 = 2;
      v9 = v7[1] & 0x3F | ((v9 & 0x1F) << 6);
    }

    else
    {
      if (v8 < 3)
      {
        goto LABEL_22;
      }

      if ((v9 & 0xF0) == 0xE0)
      {
        v9 = (v9 << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3F;
        v10 = 3;
      }

      else
      {
        if (v8 == 3)
        {
          goto LABEL_22;
        }

        if ((v9 & 0xF8) == 0xF0)
        {
          v9 = 0;
          v10 = 4;
        }

        else
        {
          if (v8 < 5)
          {
            goto LABEL_22;
          }

          if ((v9 & 0xFC) == 0xF8)
          {
            v9 = 0;
            v10 = 5;
          }

          else
          {
            if (v8 == 5 || (v9 & 0xFE) != 0xFC)
            {
LABEL_22:
              v9 = 0;
LABEL_11:
              v10 = 1;
              goto LABEL_15;
            }

            v9 = 0;
            v10 = 6;
          }
        }
      }
    }

LABEL_15:
    v11 = *(*(a1 + 712) + 4 * v9);
    if ((v6 & v11 & 0x3FFFF) != 0)
    {
      v7 += v10;
      v6 = v11;
      if (v7 < v5)
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  if (v8 >= 2)
  {
    v9 = *v7;
    v10 = 2;
    goto LABEL_15;
  }

  v11 = **(a1 + 712);
  if ((v6 & v11 & 0x3FFFF) != 0)
  {
    goto LABEL_48;
  }

LABEL_32:
  v12 = 0;
  if (v7 && v7 != v5)
  {
    for (i = 0; i != 3072; i += 24)
    {
      v14 = &v40[i];
      *v14 = 0;
      *(v14 + 12) = 0;
      *(v14 + 4) = 0;
      *(v14 + 5) = 0;
    }

    v15 = 0;
    v12 = 0;
    v30 = v5 - v7;
    v39[0] = *(a1 + 120);
    v39[1] = v4;
    v32 = v7 - a2;
    v16 = v11 >> 18;
    do
    {
      v31 = v15;
      v17 = *(v39 + v15);
      v34 = sub_299386BF8(v17, v7, v30, v40, 0x80uLL);
      if (v34)
      {
        v18 = 0;
        v19 = *(v17 + 352);
        v33 = *(v17 + 856);
        do
        {
          v20 = &v40[24 * v18];
          v21 = *(v20 + 6);
          sub_2992EA57C(&v36, v33, *(v20 + 2));
          v22 = v37;
          v23 = v38;
          if (v37 < v38)
          {
            v24 = *v36;
            do
            {
              v25 = v19 + 12 * *(v24 + 4 * v22);
              if ((*(v25 + 4) & 0x80) == 0)
              {
                sub_29920B70C(*(a4 + 16));
                *(v26 + 80) = 0u;
                *(v26 + 96) = 0u;
                *(v26 + 48) = 0u;
                *(v26 + 64) = 0u;
                *(v26 + 16) = 0u;
                *(v26 + 32) = 0u;
                *v26 = 0u;
                *(v26 + 48) = v7;
                *(v26 + 94) = *(v25 + 2);
                *(v26 + 92) = *(v25 + 6);
                *(v26 + 104) = *(v25 + 4);
                *(v26 + 84) = *v25;
                v27 = *(v17 + 380);
                *(v26 + 72) = *(v25 + 8) + (v27 << 28);
                *(v26 + 88) = v21;
                *(v26 + 90) = v21 + v32;
                v22 = v37;
                v24 = *v36;
                *(v26 + 80) = *(*v36 + 4 * v37) + (v27 << 28);
                *(v26 + 110) = v16;
                *(v26 + 24) = v12;
                v23 = v38;
                v12 = v26;
              }

              v37 = ++v22;
            }

            while (v22 < v23);
          }

          ++v18;
        }

        while (v18 != v34);
      }

      v15 = v31 + 8;
    }

    while (v31 != 8);
  }

LABEL_49:
  v28 = *MEMORY[0x29EDCA608];
  return v12;
}

uint64_t sub_2993CDEA0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *(a2 + 80);
  if (v3 >> 28)
  {
    if (v3 >> 28 != 5)
    {
      goto LABEL_7;
    }

    v4 = 120;
  }

  else
  {
    v4 = 112;
  }

  result = *(result + v4);
  if (result)
  {
    return sub_299386CB0(result, v3 & 0xFFFFFFF, a3);
  }

LABEL_7:
  a3[23] = 0;
  *a3 = 0;
  return result;
}

uint64_t sub_2993CDEDC(uint64_t result, uint64_t a2, unsigned __int16 *a3, std::string::size_type a4, void *a5, size_t a6, int a7, int a8)
{
  if (*(result + 1352))
  {
    v8 = a8 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8 && a7 != 0 && a4 != 0 && (a8 | a7) != 0)
  {
    v18 = result;
    result = sub_2993CDFBC(result, a2, a3, a3 + a4, 0, a7, a8);
    if (result != 0x7FFF)
    {
      v19 = result - 1;
      v20 = *(v18 + 1352);

      return sub_29924D6E4(v20, a3, a4, a5, a6, a7, a8, v19);
    }
  }

  return result;
}

uint64_t sub_2993CDFBC(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4, unsigned int a5, int a6, int a7)
{
  v76 = *MEMORY[0x29EDCA608];
  v8 = a4 - a3;
  if (a3)
  {
    v9 = (a4 - a3) >> 1;
  }

  else
  {
    v9 = 0;
  }

  v68 = &unk_2A1F74930;
  v69 = 0uLL;
  v70 = 0;
  v71 = 0;
  v10 = *(a1 + 1336);
  v11 = a5 >> 7;
  v12 = a5 >> 8;
  if (v10 && (v13 = *(v10 + 184)) != 0 && (v14 = (*(*v13 + 24))(v13), v10 = *(a1 + 1336), v14))
  {
    v15 = *(v10 + 184);
  }

  else
  {
    sub_2993C727C(a3, v9, v11 & 0xE | v12 & 0x10 | (a5 >> 1) & 0x20, v10, *(a1 + 1344), buf);
    sub_2992726D0(&v69);
    v69 = v73;
    v70 = v74;
    v74 = 0;
    v71 = v75;
    *buf = &unk_2A1F74930;
    v73 = 0uLL;
    *v67 = &v73;
    sub_299259FC8(v67);
    v15 = &v68;
  }

  v61 = v15;
  v16 = sub_2993652F8(5u);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_29918C000, v16, OS_LOG_TYPE_DEBUG, "[TokenizerImpl::getMinimumCost]", buf, 2u);
  }

  v17 = *(a1 + 8);
  if (v17 != *(a1 + 16))
  {
    if ((a5 & 0x200C4) == 0xC4)
    {
      v18 = 2304;
    }

    else
    {
      v18 = 2048;
    }

    v19 = ((v11 & 1) << 8) | 0x800;
    if ((a5 & 0x200C4) == 0xC4)
    {
      v20 = 2305;
    }

    else
    {
      v20 = 2049;
    }

    if ((a5 & 0x80000) != 0)
    {
      v19 = v18;
    }

    v21 = v19 | a5 & 0x1000;
    v22 = ((v11 & 1) << 8) | 0x801;
    if ((a5 & 0x80000) != 0)
    {
      v22 = v20;
    }

    v23 = v22 | a5 & 0x1000;
    v24 = a5 & 0x200C0;
    if ((a5 & 0x40) != 0)
    {
      v25 = v21;
    }

    else
    {
      v25 = a5 & 0x1000 | ((v12 & 7) << 13) | ((v11 & 1) << 8);
    }

    if ((a5 & 0x40) != 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = (a5 & 0x1000 | ((v12 & 7) << 13) | ((v11 & 1) << 8)) + 1;
    }

    v27 = v26 & 0xFFFFF8FF;
    if (v24 == 192)
    {
      v27 = v26 | 0x100;
    }

    v56 = v27;
    v57 = v26;
    v28 = v24 != 192 || (a5 & 6) == 0;
    v59 = v25;
    v60 = (a5 >> 3) & 0x10000;
    v29 = v25 | 0x100;
    if (v28)
    {
      v29 = v25 & 0xF800;
    }

    v58 = v29;
    v30 = 0x7FFF;
    while (1)
    {
      if (*(*v17 + 380) == 3)
      {
        goto LABEL_80;
      }

      if ((a5 & 0x1700) == 0)
      {
        break;
      }

      v31 = *(a2 + 136);
      v32 = sub_299237120();
      v33 = v59;
      if (!*v32)
      {
        v33 = v58;
      }

      v34 = *v17;
      *buf = &unk_2A1F78C38;
      v74 = buf;
      v35 = (*(*v34 + 88))(v34, v33 | v60, a3, v8, v61, 0, 0, v31, 512, buf, 0, 0);
      sub_2993872B0(buf);
      if (v35)
      {
        for (i = 0; i != v35; ++i)
        {
          v37 = (*(**v17 + 136))(*v17, v31 + 24 * i);
          if (v37)
          {
            for (j = 0; j != v37; ++j)
            {
              v39 = (*(**v17 + 128))(*v17, v31 + 24 * i, j);
              if (*v39 < v30 && (v8 > 5 || v39[1] == a6 && v39[3] == a7))
              {
                v30 = *v39;
              }
            }
          }
        }

        goto LABEL_61;
      }

      if ((a5 & 4) != 0)
      {
        v45 = *(a2 + 136);
LABEL_66:
        v47 = sub_299237120();
        v48 = v57;
        if (!*v47)
        {
          v48 = v56;
        }

        v46 = v48 | v60;
LABEL_69:
        v49 = (*(**v17 + 80))(*v17, v46, a3, v8, 0, 0, 0, v45, 512);
        if (v49)
        {
          for (k = 0; k != v49; ++k)
          {
            v51 = (*(**v17 + 136))(*v17, v45 + 24 * k);
            if (v51)
            {
              for (m = 0; m != v51; ++m)
              {
                v53 = (*(**v17 + 128))(*v17, v45 + 24 * k, m);
                if (*v53 < v30 && (v8 > 5 || v53[1] == a6 && v53[3] == a7))
                {
                  v30 = *v53;
                }
              }
            }
          }
        }
      }

LABEL_80:
      if (++v17 == *(a1 + 16))
      {
        goto LABEL_83;
      }
    }

    *v67 = 0;
    memset(&v67[4], 0, 20);
    v40 = *v17;
    *buf = &unk_2A1F78CB8;
    v74 = buf;
    v41 = (*(*v40 + 88))(v40, 0, a3, v8, v61, 0, 0, v67, 1, buf, 0, 0);
    sub_2993872B0(buf);
    if (v41)
    {
      v42 = (*(**v17 + 136))(*v17, v67);
      if (v42)
      {
        for (n = 0; n != v42; ++n)
        {
          v44 = (*(**v17 + 128))(*v17, v67, n);
          if (*v44 < v30 && (v8 > 5 || v44[1] == a6 && v44[3] == a7))
          {
            v30 = *v44;
          }
        }
      }
    }

LABEL_61:
    if ((a5 & 4) != 0)
    {
      v45 = *(a2 + 136);
      if ((a5 & 0x1700) != 0)
      {
        goto LABEL_66;
      }

      v46 = 1;
      goto LABEL_69;
    }

    goto LABEL_80;
  }

  v30 = 0x7FFF;
LABEL_83:
  v68 = &unk_2A1F74930;
  *buf = &v69;
  sub_299259FC8(buf);
  v54 = *MEMORY[0x29EDCA608];
  return v30;
}

void sub_2993CE6D0(_Unwind_Exception *a1)
{
  *(v2 - 144) = v1;
  sub_299259FC8((v2 - 144));
  _Unwind_Resume(a1);
}

unint64_t sub_2993CE734(uint64_t a1, const void *a2, size_t __n, int a4, int a5, unsigned int a6, void *__dst, unint64_t a8)
{
  result = 0;
  if (__n && a4)
  {
    if (a6)
    {
      result = sub_2993CE7B4(a1, a2, __n, a4, a5, a6, __dst);
      if ((result > a8) | result & 1)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }

    else if (a8 >= __n)
    {
      memcpy(__dst, a2, __n);
      return __n;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2993CE7B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, unsigned int a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 == v8)
  {
    return 0;
  }

  while (1)
  {
    v14 = *v7;
    if (*(*v7 + 792) == a5)
    {
      break;
    }

    if (++v7 == v8)
    {
      return 0;
    }
  }

  v16 = (a6 >> 2) & 1;
  if ((a6 & 0x10000) != 0)
  {
    v16 = 3;
  }

  v17 = v16 | 0x800;
  v18 = v16 | 0x900;
  v19 = v16 & 0xFFFFFEFF | (((a6 >> 7) & 1) << 8);
  v20 = v19 | 0x800;
  v21 = v19 & 0xFFFF1FFF | (((a6 >> 8) & 7) << 13);
  if ((a6 & 0x200C4) == 0xC4)
  {
    v22 = v18;
  }

  else
  {
    v22 = v17;
  }

  if ((a6 & 0x80000) == 0)
  {
    v22 = v20;
  }

  if ((a6 & 0x40) != 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  if ((*sub_299237120() & 1) == 0)
  {
    if ((a6 & 6) != 0 && (a6 & 0x200C0) == 0xC0)
    {
      v23 |= 0x100u;
    }

    else
    {
      v23 &= ~0x100u;
    }
  }

  v24 = *(*v14 + 96);

  return v24(v14, v23 & 0xFFFFEFFF | (a6 >> 3) & 0x10000, a2, a3, a4 & 0xFFFFFFF, a7);
}

uint64_t sub_2993CE918(void *a1, uint64_t a2, uint64_t *a3, _DWORD *a4)
{
  if (*(a2 + 109) == 11)
  {
    *a3 = sub_299230728(a1[193], *(a2 + 48), *(a2 + 88) >> 1, *(a2 + 72), a4);
    result = (2 * *a4);
    *a4 = result;
  }

  else
  {
    v6 = a1[1];
    v7 = a1[2];
    if (v6 != v7)
    {
      while (*(*v6 + 792) != *(a2 + 108))
      {
        if (++v6 == v7)
        {
          return *a4;
        }
      }

      *a3 = sub_2993856D8(*v6, *(a2 + 72) & 0xFFFFFFF, a4);
    }

    return *a4;
  }

  return result;
}

BOOL sub_2993CE9C4(void *a1, uint64_t a2)
{
  v2 = a1[192];
  if (v2)
  {
    v4 = *(*(a1[188] + (((a1[191] + v2 - 1) >> 9) & 0x7FFFFFFFFFFFF8)) + ((a1[191] + v2 - 1) & 0xFFF));
    a1[192] = v2 - 1;
    sub_2993D21A0(a1 + 187, 1);
    *(a2 + 792) = v4;
  }

  return v2 != 0;
}

uint64_t sub_2993CEA34(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = 56;
  if (a4)
  {
    v6 = 80;
  }

  v7 = a1 + v6;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v7;
    v11 = *(v7 + 8);
    if (*v7 != v11)
    {
      while (*v10 != *v8)
      {
        if (++v10 == v11)
        {
          goto LABEL_15;
        }
      }
    }

    if (v10 == v11)
    {
LABEL_15:
      v8 += 8;
    }

    else
    {
      if (*v8)
      {
        (*(**v8 + 8))(*v8);
        v9 = *(a1 + 16);
      }

      v12 = v9 - (v8 + 8);
      if (v9 != v8 + 8)
      {
        memmove(v8, v8 + 8, v9 - (v8 + 8));
      }

      v9 = &v8[v12];
      *(a1 + 16) = &v8[v12];
    }
  }

  *(v7 + 8) = *v7;
  if (a3)
  {
    operator new();
  }

  result = 1;
  v14 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993CEDA0(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2993D1F48();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_29920B86C(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

BOOL sub_2993CEE74(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = (a1 + 1);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      if (++v3 == v4)
      {
        goto LABEL_7;
      }
    }
  }

  if (v3 != v4)
  {
    return 0;
  }

LABEL_7:
  result = sub_2993CE9C4(a1, a2);
  if (result)
  {
    v7 = a2;
    sub_2993CEDA0(v5, &v7);
    return 1;
  }

  return result;
}

uint64_t sub_2993CEEF8(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 != v3)
  {
    while (*v4 != a2)
    {
      v4 += 8;
      if (v4 == v3)
      {
        return 0;
      }
    }
  }

  if (v4 == v3)
  {
    return 0;
  }

  if (*(*v4 + 792) != 255)
  {
    v7 = *(*v4 + 792);
    sub_2993D2210(a1 + 187, &v7);
    v3 = a1[2];
  }

  v5 = v3 - (v4 + 8);
  if (v3 != v4 + 8)
  {
    memmove(v4, (v4 + 8), v3 - (v4 + 8));
  }

  a1[2] = v4 + v5;
  return 1;
}

uint64_t sub_2993CEFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v11 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 112);
  while (1)
  {
    v6 = *(&v10 + v5);
    v7 = sub_299385758(v6, a2, a3);
    if (v7)
    {
      result = *(*(v6 + 880) + 4 * v7);
      if (result)
      {
        break;
      }
    }

    v5 += 8;
    if (v5 == 16)
    {
      result = 0;
      break;
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993CF054(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v3 = 0;
  v10 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 112);
  while (1)
  {
    v4 = *(&v9 + v3);
    if (*(v4 + 896) > a2)
    {
      v5 = *(*(v4 + 888) + 4 * a2);
      if (v5)
      {
        break;
      }
    }

    v3 += 8;
    if (v3 == 16)
    {
      v6 = *MEMORY[0x29EDCA608];
      return 0;
    }
  }

  v8 = *MEMORY[0x29EDCA608];

  return sub_2993856D8(v4, 4 * v5, a3);
}

uint64_t sub_2993CF114()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v3 = v0;
  v20 = *MEMORY[0x29EDCA608];
  sub_2993CBA74(v0);
  sub_299233548(v2, "input-method-language", __p);
  v4 = (v3 + 184);
  if (*(v3 + 1495) < 0)
  {
    operator delete(*v4);
  }

  *v4 = *__p;
  v3[186] = v19;
  sub_299233548(v2, "dicdir", &v16);
  if (sub_2992E88CC(v3 + 42, v2))
  {
    sub_29924BB78(v2, "open-mutable-dictionary");
    operator new();
  }

  std::ios_base::clear((v3 + *(v3[128] - 24) + 1024), 0);
  v5 = sub_2991C0E9C(v3 + 128, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/tokenizer.cpp", 66);
  v6 = sub_2991C0E9C(v5, "(", 1);
  v7 = MEMORY[0x29C29BD30](v6, 347);
  v8 = sub_2991C0E9C(v7, ") [", 3);
  v9 = sub_2991C0E9C(v8, "property_.open(param)", 21);
  v10 = sub_2991C0E9C(v9, "] ", 2);
  v11 = sub_29920B4CC((v3 + 91));
  sub_2991C6CA8(__p, v11);
  if ((SBYTE7(v19) & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((SBYTE7(v19) & 0x80u) == 0)
  {
    v13 = BYTE7(v19);
  }

  else
  {
    v13 = __p[1];
  }

  sub_2991C0E9C(v10, v12, v13);
  if (SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_2993D035C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993D0554(const char *a1, unsigned __int8 **a2)
{
  v3 = a1;
  v4 = strlen(a1);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v3[v4];
  v7 = 0x10000;
  do
  {
    v8 = v7;
    for (i = v3; ; ++i)
    {
      v10 = *i;
      if (v10 != 9 && v10 != 32)
      {
        break;
      }

      ++v3;
    }

    if (v10 == 34)
    {
      v11 = ++i;
      v12 = i;
      if (i < v6)
      {
        v11 = i;
        v12 = i;
        do
        {
          v13 = *v12;
          if (v13 == 34)
          {
            v14 = *++v12;
            if (v14 != 34)
            {
              break;
            }
          }

          *v11++ = v13;
          ++v12;
        }

        while (v12 < v6);
      }

      v15 = memchr(v12, 44, v6 - v12);
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = v6;
      }
    }

    else
    {
      v17 = memchr(i, 44, v6 - v3);
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v6;
      }

      v16 = &i[v18 - v3];
      v11 = v16;
    }

    v7 = v8 - 1;
    if (v8 < 2)
    {
      *a2 = i;
      ++v5;
      if (v8 == 1)
      {
        return v5;
      }
    }

    else
    {
      *v11 = 0;
      *a2 = i;
      ++v5;
    }

    ++a2;
    v3 = (v16 + 1);
  }

  while ((v16 + 1) < v6);
  return v5;
}

void sub_2993D0694(uint64_t a1, const char *a2)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v4 = 1;
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = sub_2993D2454;
  v2[3] = &unk_29EF221B8;
  v2[6] = 10;
  v2[7] = "supplement";
  v2[8] = a2;
  v2[4] = v3;
  v2[5] = a1;
  sub_2992778EC(a2, v2);
  _Block_object_dispose(v3, 8);
}

uint64_t *sub_2993D0764(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_29922F948(result);

    JUMPOUT(0x29C29BFB0);
  }

  return result;
}

void sub_2993D07B0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v2 = *(a2 + 8);
  }

  operator new[]();
}

uint64_t sub_2993D0838(uint64_t a1)
{
  sub_2991C6CA8(&__p, "max-grouping-size");
  v2 = sub_29920B95C(a1 + 8, &__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  if (a1 + 16 == v2)
  {
    operator new();
  }

  if (*(v2 + 79) < 0)
  {
    sub_2991A110C(v11, *(v2 + 56), *(v2 + 64));
  }

  else
  {
    *v11 = *(v2 + 56);
    v12 = *(v2 + 72);
  }

  sub_2991D7954(&__p);
  v13 = 0;
  if (v12 >= 0)
  {
    v3 = v11;
  }

  else
  {
    v3 = v11[0];
  }

  if (v12 >= 0)
  {
    v4 = HIBYTE(v12);
  }

  else
  {
    v4 = v11[1];
  }

  v5 = sub_2991C0E9C(&v15, v3, v4);
  if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0 || (v6 = MEMORY[0x29C29BC90](&__p, &v13), (*(v6 + *(*v6 - 24) + 32) & 5) != 0) || (v7 = sub_29920BAF0(&__p), (*(v7 + *(*v7 - 24) + 32) & 2) == 0))
  {
    operator new();
  }

  v10 = v13;
  __p = *MEMORY[0x29EDC9528];
  v8 = *(MEMORY[0x29EDC9528] + 72);
  *(&__p + *(__p - 3)) = *(MEMORY[0x29EDC9528] + 64);
  v15 = v8;
  v16 = MEMORY[0x29EDC9570] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  MEMORY[0x29C29BF00](&v19);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v10;
}

void sub_2993D0B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_2992510CC(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2993D0BBC(void *a1)
{
  *a1 = &unk_2A1F78990;
  a1[1] = 0;
  sub_2993D0C4C(a1, "");
}

void sub_2993D0C08(_Unwind_Exception *exception_object)
{
  *v1 = &unk_2A1F789D8;
  v3 = v1[1];
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993D0CBC(void *a1)
{
  *a1 = &unk_2A1F789D8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D0D38(void *a1)
{
  *a1 = &unk_2A1F789D8;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1000C8077774924);
  }

  return a1;
}

void sub_2993D0D94(void *a1)
{
  *a1 = &unk_2A1F789D8;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1000C8077774924);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D0E10(uint64_t a1)
{
  sub_2993D0F14(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993D0E48(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 2048;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4096;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2993D0F14(uint64_t a1)
{
  *a1 = &unk_2A1F789F8;
  v2 = a1 + 8;
  sub_299213AB8(a1 + 8);
  if (*(a1 + 679) < 0)
  {
    operator delete(*(a1 + 656));
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  *(a1 + 392) = *MEMORY[0x29EDC9538];
  *(a1 + 392 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 400) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  *(a1 + 400) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 408));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 504);
  v5 = *(a1 + 352);
  if (v5)
  {
    *(a1 + 360) = v5;
    operator delete(v5);
  }

  sub_299213950(v2);
  return a1;
}

void sub_2993D1094(void *a1)
{
  sub_2993D10CC(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D10CC(void *a1)
{
  *a1 = &unk_2A1F78A28;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29BF70](v2[v5], 0x1070C802D7A0B02);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_2993D116C(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    sub_2993D16C4(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_2993D15C0(a1, &v10);
}

void sub_2993D1594(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *sub_2993D15C0(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_2993D16C4(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_2993D16C4(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_29919600C();
}

uint64_t sub_2993D177C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F78A58;
  a2[1] = v2;
  return result;
}

void *sub_2993D17A8(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = *a4;
  v8 = **(a1 + 8);
  v9 = sub_2993D1B2C(v8, v5);
  memcpy(v9, v4, 2 * v5);
  result = sub_2993D1BF4(v8);
  *result = v9;
  *(result + 2) = 2 * v5;
  *(result + 6) = v6;
  *(result + 7) = v7;
  return result;
}

uint64_t sub_2993D1820(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78AB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993D18DC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F78AD8;
  a2[1] = v2;
  return result;
}

void *sub_2993D1908(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = *a4;
  v8 = **(a1 + 8);
  v9 = sub_2993D1B2C(v8, v5);
  memcpy(v9, v4, 2 * v5);
  result = sub_2993D1BF4(v8);
  *result = v9;
  *(result + 2) = 2 * v5;
  *(result + 6) = v6;
  *(result + 7) = v7;
  return result;
}

uint64_t sub_2993D1980(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78B38))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993D1A3C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F78B58;
  a2[1] = v2;
  return result;
}

void *sub_2993D1A68(uint64_t a1, uint64_t a2, __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a3;
  v7 = *a4;
  v8 = **(a1 + 8);
  v9 = sub_2993D1B2C(v8, v5);
  memcpy(v9, v4, 2 * v5);
  result = sub_2993D1BF4(v8);
  *result = v9;
  *(result + 2) = 2 * v5;
  *(result + 6) = v6;
  *(result + 7) = v7;
  return result;
}

uint64_t sub_2993D1AE0(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78BB8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993D1B2C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 80);
  if (!v2)
  {
    operator new();
  }

  v3 = *(a1 + 80);

  return sub_2993D1CAC(v2, a2);
}

void *sub_2993D1BF4(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    operator new();
  }

  v1 = *(a1 + 48);

  return sub_2993D1F60(v1);
}

uint64_t sub_2993D1CAC(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (a1[2] - v3) >> 4;
  v5 = a1[5];
  v6 = v4 > v5;
  v7 = v4 - v5;
  if (!v6)
  {
LABEL_6:
    if (a1[6] > a2)
    {
      v11 = a1[6];
    }

    operator new[]();
  }

  v8 = a1[4];
  v9 = (v3 + 16 * v5 + 8);
  v10 = v5 + 1;
  while (v8 + a2 >= *(v9 - 1))
  {
    v8 = 0;
    a1[4] = 0;
    a1[5] = v10;
    v9 += 2;
    ++v10;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  result = *v9 + 2 * v8;
  a1[4] = v8 + a2;
  return result;
}

void sub_2993D1E6C(void *a1)
{
  sub_2993D1EA4(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D1EA4(void *a1)
{
  *a1 = &unk_2A1F78BD8;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[2 * v5 + 1])
      {
        MEMORY[0x29C29BF70](v2[2 * v5 + 1], 0x1000C80BDFB0063);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 4);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_2993D1F60(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  if (v2 == a1[6])
  {
    v2 = 0;
    ++v1;
    a1[4] = 0;
    a1[5] = v1;
  }

  v3 = a1[1];
  if (v1 == (a1[2] - v3) >> 3)
  {
    operator new[]();
  }

  v4 = *(v3 + 8 * v1);
  a1[4] = v2 + 1;
  result = (v4 + 16 * v2);
  *result = 0;
  result[1] = 0;
  return result;
}

void sub_2993D20C8(void *a1)
{
  sub_2993D2100(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D2100(void *a1)
{
  *a1 = &unk_2A1F78C08;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29BF70](v2[v5], 0x1050C80717B85FCLL);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2993D21A0(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 9) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1000)
  {
    a2 = 1;
  }

  if (v5 < 0x2000)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_2993D2210(void *result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  v7 = ((v5 - v6) << 9) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[5] + result[4];
  if (v7 == v8)
  {
    result = sub_2993D116C(result);
    v6 = v3[1];
    v8 = v3[5] + v3[4];
  }

  *(*(v6 + ((v8 >> 9) & 0x7FFFFFFFFFFFF8)) + (v8 & 0xFFF)) = *a2;
  ++v3[5];
  return result;
}

uint64_t sub_2993D232C(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78C98))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993D2408(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F78D18))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2993D2454(uint64_t a1, char *__s)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  result = strlen(__s);
  v6 = *(a1 + 48);
  if (result > v6)
  {
    v7 = result;
    result = strncmp(__s, *(a1 + 56), *(a1 + 48));
    if (v6 >= 5 && result == 0)
    {
      result = strncmp(&__s[v7 - 4], ".dic", 4uLL);
      if (!result)
      {
        operator new();
      }
    }
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993D2704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2993D2760(void *a1)
{
  *a1 = &unk_2A1F78D38;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BFB0](v2, 0x1000C4000313F17);
  }

  return a1;
}

void sub_2993D27BC(void *a1)
{
  *a1 = &unk_2A1F78D38;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BFB0](v1, 0x1000C4000313F17);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993D2838(uint64_t a1)
{
  *a1 = &unk_2A1F78960;
  v2 = (a1 + 1360);
  sub_2993126D8((a1 + 1360));
  sub_2993126D8((a1 + 1416));
  sub_2993CBA74(a1);
  sub_2993D0764((a1 + 1544), 0);
  sub_2993D0E48(a1 + 1496);
  if (*(a1 + 1495) < 0)
  {
    operator delete(*(a1 + 1472));
  }

  if (*(a1 + 1439) < 0)
  {
    operator delete(*(a1 + 1416));
  }

  if (*(a1 + 1383) < 0)
  {
    operator delete(*v2);
  }

  if (*(a1 + 1311) < 0)
  {
    operator delete(*(a1 + 1288));
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  *(a1 + 1024) = *MEMORY[0x29EDC9538];
  *(a1 + 1024 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 1032) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 1119) < 0)
  {
    operator delete(*(a1 + 1096));
  }

  *(a1 + 1032) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 1040));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 1136);
  sub_2993D0F14(a1 + 336);
  v5 = *(a1 + 296);
  if (v5)
  {
    *(a1 + 304) = v5;
    operator delete(v5);
  }

  sub_2993D10CC((a1 + 240));
  *(a1 + 224) = &unk_2A1F789D8;
  v6 = *(a1 + 232);
  if (v6)
  {
    MEMORY[0x29C29BF70](v6, 0x1000C8077774924);
  }

  *(a1 + 208) = &unk_2A1F789D8;
  v7 = *(a1 + 216);
  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  std::mutex::~mutex((a1 + 128));
  v8 = *(a1 + 80);
  if (v8)
  {
    *(a1 + 88) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    *(a1 + 64) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    *(a1 + 40) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    *(a1 + 16) = v11;
    operator delete(v11);
  }

  return a1;
}

void sub_2993D2AC8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F78D68;
  *(a1 + 24) = xmmword_29942A4E0;
  *(a1 + 48) = 0u;
  *(a1 + 40) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = a2;
  *(a1 + 200) = &unk_2A1F68058;
  *(a1 + 208) = 0;
  operator new();
}

void sub_2993D2E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15)
{
  v25 = v17[13];
  if (v25)
  {
    v17[14] = v25;
    operator delete(v25);
  }

  *v16 = v19;
  if (*v18)
  {
    (*(**v18 + 8))(*v18);
  }

  v17[9] = v24;
  v26 = v17[10];
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v17[7] = v23;
  v27 = v17[8];
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v17[5] = v22;
  v28 = v17[6];
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v17[3] = v21;
  v29 = v17[4];
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v17[1] = v20;
  v30 = v17[2];
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  MEMORY[0x29C29BFB0](v17, 0xB1C40213A2802);
  *(v15 + 200) = a12;
  v31 = *(v15 + 208);
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  a15 = a13;
  sub_2992CF180(&a15);
  v32 = *(v15 + 144);
  if (v32)
  {
    *(v15 + 152) = v32;
    operator delete(v32);
  }

  v33 = *(v15 + 120);
  if (v33)
  {
    *(v15 + 128) = v33;
    operator delete(v33);
  }

  v34 = *a14;
  if (*a14)
  {
    *(v15 + 104) = v34;
    operator delete(v34);
  }

  v35 = *(v15 + 72);
  if (v35)
  {
    *(v15 + 80) = v35;
    operator delete(v35);
  }

  if (*(v15 + 71) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(a1);
}

void *sub_2993D3058(void *result)
{
  if (!((result[2] - *result) >> 16))
  {
    v1 = result[1] - *result;
    operator new();
  }

  return result;
}

void *sub_2993D3110(void *a1)
{
  *a1 = &unk_2A1F790A8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_2993D317C(uint64_t a1)
{
  *a1 = &unk_2A1F78D68;
  *(a1 + 216) = &unk_2A1F790A8;
  v2 = *(a1 + 224);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(a1 + 200) = &unk_2A1F68058;
  v3 = *(a1 + 208);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v9 = (a1 + 168);
  sub_2992CF180(&v9);
  v4 = *(a1 + 144);
  if (v4)
  {
    *(a1 + 152) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    *(a1 + 128) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    *(a1 + 104) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    *(a1 + 80) = v7;
    operator delete(v7);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return a1;
}

void sub_2993D32C0(uint64_t a1)
{
  sub_2993D317C(a1);

  JUMPOUT(0x29C29BFB0);
}

double sub_2993D32F8(uint64_t a1)
{
  v2 = *(a1 + 224);
  v3 = v2[2];
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  v4 = v2[4];
  if (v4)
  {
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
  }

  v5 = v2[6];
  if (v5)
  {
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
  }

  v6 = v2[8];
  if (v6)
  {
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
  }

  v7 = v2[10];
  if (v7)
  {
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
  }

  v8 = *(a1 + 208);
  if (v8)
  {
    *(v8 + 8) = 0;
  }

  *(a1 + 104) = *(a1 + 96);
  *(a1 + 80) = *(a1 + 72);
  v10 = *(a1 + 168);
  v9 = *(a1 + 176);
  if (v9 != v10)
  {
    do
    {
      v11 = v9 - 24;
      sub_29921B8CC(v9 - 24, *(v9 - 16));
      v9 = v11;
    }

    while (v11 != v10);
  }

  *(a1 + 176) = v10;
  *(a1 + 128) = *(a1 + 120);
  *(a1 + 152) = *(a1 + 144);
  result = 0.75;
  *(a1 + 24) = xmmword_29942A4E0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 232) = 0;
  return result;
}

uint64_t sub_2993D33C8(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(*a1 + 80);

  return v5(a1, __s, v4);
}

void sub_2993D3430(void *a1, const void *a2, size_t a3)
{
  v6 = (a1 + 9);
  (**a1)(a1);
  v7 = a3 + 4;
  sub_2993D3714(v6, a3 + 4);
  v9 = a1[21];
  v8 = a1[22];
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
  v11 = a3 + 4 - v10;
  if (a3 + 4 <= v10)
  {
    if (v7 < v10)
    {
      v16 = v9 + 24 * v7;
      if (v8 != v16)
      {
        do
        {
          v17 = v8 - 24;
          sub_29921B8CC(v8 - 24, *(v8 - 16));
          v8 = v17;
        }

        while (v17 != v16);
      }

      a1[22] = v16;
    }
  }

  else
  {
    v12 = a1[23];
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) < v11)
    {
      if (v7 <= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v9) >> 3);
        v14 = 2 * v13;
        if (2 * v13 <= v7)
        {
          v14 = a3 + 4;
        }

        if (v13 >= 0x555555555555555)
        {
          v15 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v15 = v14;
        }

        v24 = a1 + 21;
        if (v15 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_29919600C();
      }

      sub_299212A8C();
    }

    v18 = v8 + 24 * v11;
    v19 = 24 * a3 - 8 * ((v8 - v9) >> 3) + 96;
    v20 = (v8 + 8);
    do
    {
      *v20 = 0;
      v20[1] = 0;
      *(v20 - 1) = v20;
      v20 += 3;
      v19 -= 24;
    }

    while (v19);
    a1[22] = v18;
  }

  sub_2993D3714((a1 + 12), a3 + 4);
  if (((*(*a1 + 168))(a1, 64) & 1) != 0 || (*(*a1 + 168))(a1, 4))
  {
    v21 = (*(*a1 + 200))(a1);
    v22 = sub_2993D58DC(v21, a3);
    memcpy(v22, a2, a3);
    a2 = v22;
  }

  a1[1] = a2;
  a1[2] = a3;
  bzero(a1[9], 8 * v7);
  v23 = a1[12];

  bzero(v23, 8 * v7);
}

void sub_2993D3714(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_29920B86C(a1, v10);
      }

      sub_29920B608();
    }

    bzero(*(a1 + 8), 8 * v6);
    v11 = v4 + 8 * v6;
  }

  *(a1 + 8) = v11;
}

uint64_t sub_2993D3828(void *a1)
{
  if (!a1[29])
  {
    return 0;
  }

  v1 = (*(*a1 + 200))(a1);
  v2 = sub_29925FDBC(v1);

  return sub_299228AA8(v2);
}

void sub_2993D3884(uint64_t a1, const char *a2)
{
  v84 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 200))(a1);
  v5 = strlen(a2);
  v6 = sub_2993D58DC(v4, v5 + 1);
  strncpy(v6, a2, v5 + 1);
  __p = 0;
  v80 = 0;
  v81 = 0;
  v7 = strlen(a2);
  v8 = strlen(v6);
  if (v7)
  {
    v9 = 0;
    v10 = &v6[v8];
    while (1)
    {
      v11 = v10;
      if (v6 != v10)
      {
        v11 = v6;
        while (*v11 != 10)
        {
          if (++v11 == v10)
          {
            v11 = v10;
            break;
          }
        }
      }

      *v11 = 0;
      v12 = v80;
      if (v80 >= v81)
      {
        v14 = (v80 - __p) >> 3;
        if ((v14 + 1) >> 61)
        {
          sub_29920B608();
        }

        v15 = (v81 - __p) >> 2;
        if (v15 <= v14 + 1)
        {
          v15 = v14 + 1;
        }

        if (v81 - __p >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          sub_29920BE54(&__p, v16);
        }

        v17 = (8 * v14);
        *v17 = v6;
        v13 = 8 * v14 + 8;
        v18 = v17 - (v80 - __p);
        memcpy(v18, __p, v80 - __p);
        v19 = __p;
        __p = v18;
        v80 = v13;
        v81 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v80 = v6;
        v13 = (v12 + 8);
      }

      v80 = v13;
      ++v9;
      if (v11 == v10)
      {
        break;
      }

      v6 = v11 + 1;
      if (v9 == v7)
      {
        v9 = v7;
        break;
      }
    }

    v20 = __p;
  }

  else
  {
    v20 = 0;
    v13 = 0;
    v9 = 0;
  }

  if (v9 != (v13 - v20) >> 3)
  {
    v21 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/lattice_impl.cpp", 69);
    v22 = sub_2991C0E9C(v21, "(", 1);
    v23 = MEMORY[0x29C29BD30](v22, 107);
    v24 = sub_2991C0E9C(v23, ") [", 3);
    v25 = sub_2991C0E9C(v24, "lsize == lines.size()", 21);
    sub_2991C0E9C(v25, "] ", 2);
    sub_299233ED4();
  }

  memset(&v78, 0, sizeof(v78));
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  if (v13 != v20)
  {
    v26 = 0;
    while (2)
    {
      v27 = v20[v26];
      if (strcmp("EOS", v27))
      {
        v82 = 0;
        v83 = 0;
        v28 = strlen(v27);
        v29 = 0;
        v30 = &v27[v28];
        v31 = &v82;
        while (1)
        {
          v32 = v29;
          if (v27 == v30)
          {
            break;
          }

          v33 = v27;
          while (*v33 != 9)
          {
            if (++v33 == v30)
            {
              goto LABEL_39;
            }
          }

          *v33 = 0;
          *v31++ = v27;
          v29 = 1;
          v27 = v33 + 1;
          if (v32)
          {
            goto LABEL_40;
          }
        }

        v27 = v30;
LABEL_39:
        *v30 = 0;
        *v31 = v27;
        if ((v29 & 1) == 0)
        {
          break;
        }

LABEL_40:
        v34 = v82;
        v35 = strlen(v82);
        std::string::append(&v78, v82, v35);
        sub_2991C6CA8(v70, v34);
        sub_2992E8C28(&v75, v70);
        if (v71 < 0)
        {
          operator delete(v70[0]);
        }

        sub_2991C6CA8(v70, v83);
        sub_2992E8C28(&v72, v70);
        if (v71 < 0)
        {
          operator delete(v70[0]);
        }

        ++v26;
        v20 = __p;
        if (v26 < (v80 - __p) >> 3)
        {
          continue;
        }
      }

      break;
    }
  }

  if (v73 - v72 != v76 - v75)
  {
    v36 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/lattice_impl.cpp", 69);
    v37 = sub_2991C0E9C(v36, "(", 1);
    v38 = MEMORY[0x29C29BD30](v37, 124);
    v39 = sub_2991C0E9C(v38, ") [", 3);
    v40 = sub_2991C0E9C(v39, "features.size() == surfaces.size()", 34);
    sub_2991C0E9C(v40, "] ", 2);
    sub_299233ED4();
  }

  v41 = (*(*a1 + 200))(a1);
  v42 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
  v43 = v78.__r_.__value_.__r.__words[0];
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v78.__r_.__value_.__l.__size_;
  }

  v45 = sub_2993D58DC(v41, size + 1);
  v46 = v45;
  if (v42 >= 0)
  {
    v47 = &v78;
  }

  else
  {
    v47 = v43;
  }

  strncpy(v45, v47, size + 1);
  (*(*a1 + 72))(a1, v46);
  v48 = (*(*a1 + 200))(a1);
  sub_29920B70C(*(v48 + 16));
  v50 = v49;
  *(v49 + 80) = 0u;
  *(v49 + 96) = 0u;
  *(v49 + 48) = 0u;
  *(v49 + 64) = 0u;
  *(v49 + 16) = 0u;
  *(v49 + 32) = 0u;
  *v49 = 0u;
  *(v49 + 48) = "BOS/EOS";
  *(v49 + 56) = "BOS/EOS";
  *(v49 + 109) = 2;
  v51 = (*(*a1 + 200))(a1);
  sub_29920B70C(*(v51 + 16));
  v53 = v52;
  *(v52 + 80) = 0u;
  *(v52 + 96) = 0u;
  *(v52 + 48) = 0u;
  *(v52 + 64) = 0u;
  *(v52 + 16) = 0u;
  *(v52 + 32) = 0u;
  *v52 = 0u;
  *(v52 + 48) = "BOS/EOS";
  *(v52 + 56) = "BOS/EOS";
  *(v52 + 109) = 3;
  *(v50 + 48) = *(a1 + 8);
  **(a1 + 72) = v50;
  if (v76 == v75)
  {
    v59 = v50;
  }

  else
  {
    v54 = 0;
    v55 = 0;
    v56 = 0;
    do
    {
      v57 = (*(*a1 + 200))(a1);
      sub_29920B70C(*(v57 + 16));
      v59 = v58;
      *(v58 + 104) = 0;
      *(v58 + 88) = 0u;
      *(v58 + 72) = 0u;
      *(v58 + 56) = 0u;
      *(v58 + 40) = 0u;
      *(v58 + 24) = 0u;
      *(v58 + 8) = 0u;
      *v58 = v50;
      *(v50 + 8) = v58;
      *(v58 + 48) = *(a1 + 8) + v56;
      v60 = v75;
      v61 = v75 + v54 * 8;
      v62 = *(v75 + v54 * 8 + 23);
      if (v62 < 0)
      {
        v62 = *(v61 + 8);
      }

      *(v58 + 88) = v62;
      v63 = *(v61 + 23);
      if (v63 < 0)
      {
        v63 = *(v60 + v54 * 8 + 8);
      }

      *(v58 + 90) = v63;
      *(v58 + 109) = 0;
      *(v58 + 84) = 0;
      *(v58 + 96) = 0;
      v64 = (*(*a1 + 200))(a1);
      v65 = &v72[v54];
      v66 = SHIBYTE(v72[v54 + 2]);
      if (v66 < 0)
      {
        v67 = *v65;
        v66 = v65[1];
      }

      else
      {
        v67 = &v72[v54];
      }

      v68 = sub_2993D58DC(v64, v66 + 1);
      *(v59 + 56) = strncpy(v68, v67, v66 + 1);
      *(*(a1 + 96) + 8 * v56) = v59;
      v56 += *(v59 + 88);
      *(*(a1 + 72) + 8 * v56) = v59;
      ++v55;
      v54 += 3;
      v50 = v59;
    }

    while (v55 < 0xAAAAAAAAAAAAAAABLL * ((v76 - v75) >> 3));
  }

  *(v59 + 8) = v53;
  *v53 = v59;
  v70[0] = &v72;
  sub_299212B90(v70);
  v72 = &v75;
  sub_299212B90(&v72);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v80 = __p;
    operator delete(__p);
  }

  v69 = *MEMORY[0x29EDCA608];
}

void sub_2993D3F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  a9 = &a15;
  sub_299212B90(&a9);
  a15 = &a18;
  sub_299212B90(&a15);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993D4038(void *a1)
{
  v2 = sub_2993D4138(a1);

  return sub_2993D4074(a1, v2);
}

uint64_t sub_2993D4074(void *a1, uint64_t a2)
{
  *(a2 + 8) = 0;
  v4 = a1[24];
  if (v4)
  {
    if ((sub_2993D724C(v4, a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_2993D4250(a1, a2);
  }

  if (sub_29925EC84(a2, 1))
  {
    *(*(a2 + 24) + (*(a2 + 8))++) = 0;
  }

  if ((*(a2 + 33) & 1) != 0 || (result = *(a2 + 24)) == 0)
  {
    (*(*a1 + 320))(a1, "output buffer overflow");
    return 0;
  }

  return result;
}

uint64_t sub_2993D4138(uint64_t a1)
{
  if (!*(a1 + 208))
  {
    operator new();
  }

  return *(a1 + 208);
}

uint64_t sub_2993D41D8(void *a1, uint64_t a2, uint64_t a3)
{
  v5[0] = &unk_2A1F68B88;
  v5[1] = 0;
  v5[2] = a3;
  v5[3] = a2;
  v6 = 0;
  v3 = sub_2993D4074(a1, v5);
  sub_29925ED54(v5);
  return v3;
}

void sub_2993D423C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29925ED54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993D4250(uint64_t a1, uint64_t a2)
{
  v3 = *((*(*a1 + 16))(a1) + 8);
  v4 = (v3 + 8);
  if (*(v3 + 8))
  {
    do
    {
      v5 = *(v3 + 48);
      v6 = *(v3 + 88);
      if (sub_29925EC84(a2, v6))
      {
        memcpy((*(a2 + 24) + *(a2 + 8)), v5, v6);
        *(a2 + 8) += v6;
      }

      if (sub_29925EC84(a2, 1))
      {
        *(*(a2 + 24) + (*(a2 + 8))++) = 9;
      }

      v7 = sub_29925EDFC(a2, *(v3 + 56));
      if (sub_29925EC84(v7, 1))
      {
        *(*(a2 + 24) + (*(a2 + 8))++) = 10;
      }

      v3 = *v4;
      v8 = *v4;
      v9 = *(v8 + 8);
      v4 = (v8 + 8);
    }

    while (v9);
  }

  return sub_29925EDFC(a2, "EOS\n");
}

uint64_t sub_2993D4384(void *a1, uint64_t a2)
{
  v4 = sub_2993D4138(a1);

  return sub_2993D43C8(a1, a2, v4);
}

uint64_t sub_2993D43C8(void *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  if (!a2)
  {
    v7 = "node is NULL";
LABEL_16:
    (*(*a1 + 320))(a1, v7);
    return 0;
  }

  v6 = a1[24];
  if (v6)
  {
    if ((sub_2993D838C(v6, a1, a2) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 88);
    if (sub_29925EC84(a3, v9))
    {
      memcpy((*(a3 + 24) + *(a3 + 8)), v8, v9);
      *(a3 + 8) += v9;
    }

    if (sub_29925EC84(a3, 1))
    {
      *(*(a3 + 24) + (*(a3 + 8))++) = 9;
    }

    sub_29925EDFC(a3, *(a2 + 56));
  }

  if (sub_29925EC84(a3, 1))
  {
    *(*(a3 + 24) + (*(a3 + 8))++) = 0;
  }

  if ((*(a3 + 33) & 1) != 0 || (result = *(a3 + 24)) == 0)
  {
    v7 = "output buffer overflow";
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_2993D451C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = &unk_2A1F68B88;
  v6[1] = 0;
  v6[2] = a4;
  v6[3] = a3;
  v7 = 0;
  v4 = sub_2993D43C8(a1, a2, v6);
  sub_29925ED54(v6);
  return v4;
}

void sub_2993D4580(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29925ED54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993D4594(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2993D4138(a1);

  return sub_2993D45D8(a1, a2, v4);
}

uint64_t sub_2993D45D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 8) = 0;
  if ((a2 - 513) < 0xFFFFFFFFFFFFFE00)
  {
    v4 = "nbest size must be 1 <= nbest <= 512";
LABEL_17:
    (*(*a1 + 320))(a1, v4);
    return 0;
  }

  v6 = a2;
  do
  {
    if (!(*(*a1 + 128))(a1))
    {
      break;
    }

    v7 = a1[24];
    if (v7)
    {
      if ((sub_2993D724C(v7, a1, a3) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      sub_2993D4250(a1, a3);
    }

    --v6;
  }

  while (v6);
  if (a1[24])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    memset(v10, 0, sizeof(v10));
    BYTE13(v14) = 4;
    v8 = (*(*a1 + 64))(a1);
    *&v11 = v8 + (*(*a1 + 88))(a1);
    if (!sub_2993D838C(a1[24], a1, v10))
    {
      return 0;
    }
  }

  if (sub_29925EC84(a3, 1))
  {
    *(*(a3 + 24) + (*(a3 + 8))++) = 0;
  }

  if ((*(a3 + 33) & 1) != 0 || (result = *(a3 + 24)) == 0)
  {
    v4 = "output buffer overflow";
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_2993D4794(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = &unk_2A1F68B88;
  v6[1] = 0;
  v6[2] = a4;
  v6[3] = a3;
  v7 = 0;
  v4 = sub_2993D45D8(a1, a2, v6);
  sub_29925ED54(v6);
  return v4;
}

void sub_2993D47F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_29925ED54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2993D481C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  if (v2 == *(a1 + 152))
  {
    return 0;
  }

  else
  {
    return *(v2 + a2);
  }
}

uint64_t sub_2993D4838(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if (v2 == *(a1 + 128))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

void sub_2993D4854(void *a1, uint64_t a2, char a3)
{
  v5 = a1[18];
  if (v5 == a1[19])
  {
    v7 = (*(*a1 + 88))(a1) + 4;
    v5 = a1[18];
    v8 = a1[19];
    if (v7 <= &v8[-v5])
    {
      if (v7 < &v8[-v5])
      {
        a1[19] = v5 + v7;
      }
    }

    else
    {
      v9 = a1[20];
      if (v9 - v8 < v7 - &v8[-v5])
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_299212A8C();
      }

      v10 = v7 + v5;
      bzero(v8, v7 - &v8[-v5]);
      a1[19] = v10;
      v5 = a1[18];
    }
  }

  *(v5 + a2) = a3;
}

void *sub_2993D49B8(void *result, unint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a2 >= a3 || !a4)
  {
    return result;
  }

  v5 = a3;
  v7 = result;
  v8 = result + 15;
  if (result[15] == result[16])
  {
    v9 = (*(*result + 88))(result);
    v10 = v9 + 4;
    v11 = v7[15];
    v12 = v7[16];
    v13 = (v12 - v11) >> 3;
    if (v9 + 4 > v13)
    {
      v14 = v10 - v13;
      v15 = v7[17];
      if (v14 > (v15 - v12) >> 3)
      {
        if (!(v10 >> 61))
        {
          v16 = v15 - v11;
          if (v16 >> 2 > v10)
          {
            v10 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v10;
          }

          sub_2991C1E60(v8, v17);
        }

        sub_299212A8C();
      }

      bzero(v7[16], ((8 * v9 - (v12 - v11) + 24) & 0xFFFFFFFFFFFFFFF8) + 8);
      v18 = v12 + 8 * v14;
      goto LABEL_16;
    }

    if (v10 < v13)
    {
      v18 = v11 + 8 * v10;
LABEL_16:
      v7[16] = v18;
    }
  }

  v19 = (*(*v7 + 88))(v7);
  if (v19 < v5)
  {
    v5 = v19;
  }

  (*(*v7 + 288))(v7, a2, 1);
  result = (*(*v7 + 288))(v7, v5, 1);
  v20 = a2 + 1;
  if (a2 + 1 < v5)
  {
    do
    {
      result = (*(*v7 + 288))(v7, v20++, 2);
    }

    while (v5 != v20);
  }

  *(*v8 + 8 * a2) = a4;
  return result;
}

double sub_2993D4D7C(uint64_t a1, float a2)
{
  result = a2;
  *(a1 + 24) = result;
  return result;
}

double sub_2993D4DE4(uint64_t a1)
{
  sub_29920B70C(*(*(a1 + 224) + 16));
  result = 0.0;
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  return result;
}

uint64_t sub_2993D4E18(uint64_t a1)
{
  result = a1 + 48;
  if (*(a1 + 71) < 0)
  {
    return *result;
  }

  return result;
}

void *sub_2993D4E3C(void *a1)
{
  *a1 = &unk_2A1F79048;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2993D4EA8(void *a1)
{
  *a1 = &unk_2A1F79018;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2993D4F14(void *a1)
{
  *a1 = &unk_2A1F78FE8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2993D4F80(void *a1)
{
  *a1 = &unk_2A1F78FB8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2993D4FEC(void *a1)
{
  *a1 = &unk_2A1F78F88;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void *sub_2993D5058(void *a1)
{
  *a1 = &unk_2A1F78F58;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_2993D50C8(void *a1)
{
  sub_2993D55FC(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D5104(void *a1)
{
  sub_2993D513C(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D513C(void *a1)
{
  *a1 = &unk_2A1F78F28;
  a1[5] = 0;
  v4 = a1 + 1;
  v2 = a1[1];
  v3 = v4[1];
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        MEMORY[0x29C29BF70](v2[v5], 0x1070C80C36FC988);
        v5 = a1[5];
        v2 = a1[1];
        v3 = a1[2];
      }

      a1[5] = ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2993D51DC(void *a1)
{
  *a1 = &unk_2A1F78F58;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D5268(void *a1)
{
  *a1 = &unk_2A1F78F88;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D52F4(void *a1)
{
  *a1 = &unk_2A1F78FB8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D5380(void *a1)
{
  *a1 = &unk_2A1F78FE8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D540C(void *a1)
{
  *a1 = &unk_2A1F79018;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void sub_2993D5498(void *a1)
{
  *a1 = &unk_2A1F79048;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D5524(void *a1)
{
  *a1 = &unk_2A1F79078;
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1060C8043D569EALL);
  }

  return a1;
}

void sub_2993D5580(void *a1)
{
  *a1 = &unk_2A1F79078;
  v1 = a1[1];
  if (v1)
  {
    MEMORY[0x29C29BF70](v1, 0x1060C8043D569EALL);
  }

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D55FC(void *a1)
{
  *a1 = &unk_2A1F78EF8;
  a1[16] = &unk_2A1F79078;
  v2 = a1[17];
  if (v2)
  {
    MEMORY[0x29C29BF70](v2, 0x1060C8043D569EALL);
  }

  v3 = a1[13];
  if (v3)
  {
    a1[14] = v3;
    operator delete(v3);
  }

  a1[11] = &unk_2A1F79048;
  v4 = a1[12];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  a1[9] = &unk_2A1F79018;
  v5 = a1[10];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  a1[7] = &unk_2A1F78FE8;
  v6 = a1[8];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  a1[5] = &unk_2A1F78FB8;
  v7 = a1[6];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  a1[3] = &unk_2A1F78F88;
  v8 = a1[4];
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  a1[1] = &unk_2A1F78F58;
  v9 = a1[2];
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return a1;
}

void sub_2993D5850(void *a1)
{
  *a1 = &unk_2A1F790A8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993D58DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    operator new();
  }

  v3 = a2 + 1;
  v4 = *(a1 + 64);

  return sub_2992572BC(v2, v3);
}

uint64_t sub_2993D59A4(uint64_t a1, unsigned int a2)
{
  *(a1 + 8) = a2;
  v3 = sub_299277498(a2);
  Default = CFAllocatorGetDefault();
  v6.location = 0;
  v6.length = 0;
  *a1 = CFStringTokenizerCreate(Default, 0, v6, 1uLL, v3);
  CFRelease(v3);
  return a1;
}

const void **sub_2993D5A00(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL sub_2993D5A34(uint64_t a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (Length < 2)
  {
    return 0;
  }

  v5 = Length;
  v6 = sub_2992793F8();
  v7 = 0;
  v8 = 0;
  v9 = MEMORY[0x29EDCA600];
  do
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v7);
    v11 = CharacterAtIndex;
    if ((CharacterAtIndex > 0xFF || (*(v9 + 4 * CharacterAtIndex + 60) & 0x400) == 0) && !CFCharacterSetIsCharacterMember(v6, CharacterAtIndex))
    {
      v12 = *(a1 + 8);
      switch(v12)
      {
        case 1:
          v13 = dword_299418058;
          break;
        case 5:
          v13 = dword_29941C058;
          break;
        case 2:
          v13 = dword_29941A058;
          break;
        default:
          return 0;
      }

      if (((v13[v11 >> 5] >> ~v11) & 1) == 0)
      {
        return 0;
      }

      ++v8;
    }

    ++v7;
  }

  while (v5 != v7);
  return v8 >= 1 && vcvtd_n_f64_u64(v5, 1uLL) <= v8;
}

void sub_2993D5C14(_Unwind_Exception *exception_object)
{
  v1[9] = &unk_2A1F789D8;
  v3 = v1[10];
  if (v3)
  {
    MEMORY[0x29C29BF70](v3, 0x1000C8077774924);
  }

  v1[7] = &unk_2A1F789D8;
  v4 = v1[8];
  if (v4)
  {
    MEMORY[0x29C29BF70](v4, 0x1000C8077774924);
  }

  v1[5] = &unk_2A1F789D8;
  v5 = v1[6];
  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8077774924);
  }

  v1[3] = &unk_2A1F789D8;
  v6 = v1[4];
  if (v6)
  {
    MEMORY[0x29C29BF70](v6, 0x1000C8077774924);
  }

  v1[1] = &unk_2A1F789D8;
  v7 = v1[2];
  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993D5D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *((*(*a2 + 16))(a2) + 8);
  v5 = (v4 + 8);
  if (*(v4 + 8))
  {
    do
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 88);
      if (sub_29925EC84(a3, v7))
      {
        memcpy((*(a3 + 24) + *(a3 + 8)), v6, v7);
        *(a3 + 8) += v7;
      }

      if (sub_29925EC84(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 9;
      }

      v8 = sub_29925EDFC(a3, *(v4 + 56));
      if (sub_29925EC84(v8, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 10;
      }

      v4 = *v5;
      v9 = *v5;
      v10 = *(v9 + 8);
      v5 = (v9 + 8);
    }

    while (v10);
  }

  sub_29925EDFC(a3, "EOS\n");
  return 1;
}

uint64_t sub_2993D5E8C(uint64_t a1)
{
  *a1 = &unk_2A1F790D8;
  v2 = a1 + 88;
  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  v3 = MEMORY[0x29EDC9538];
  v4 = *MEMORY[0x29EDC9538];
  *(a1 + 88) = *MEMORY[0x29EDC9538];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  *(a1 + 96) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  *(a1 + 96) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 104));
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](a1 + 200);
  *(a1 + 72) = &unk_2A1F789D8;
  v5 = *(a1 + 80);
  if (v5)
  {
    MEMORY[0x29C29BF70](v5, 0x1000C8077774924);
  }

  *(a1 + 56) = &unk_2A1F789D8;
  v6 = *(a1 + 64);
  if (v6)
  {
    MEMORY[0x29C29BF70](v6, 0x1000C8077774924);
  }

  *(a1 + 40) = &unk_2A1F789D8;
  v7 = *(a1 + 48);
  if (v7)
  {
    MEMORY[0x29C29BF70](v7, 0x1000C8077774924);
  }

  *(a1 + 24) = &unk_2A1F789D8;
  v8 = *(a1 + 32);
  if (v8)
  {
    MEMORY[0x29C29BF70](v8, 0x1000C8077774924);
  }

  *(a1 + 8) = &unk_2A1F789D8;
  v9 = *(a1 + 16);
  if (v9)
  {
    MEMORY[0x29C29BF70](v9, 0x1000C8077774924);
  }

  return a1;
}

void sub_2993D60E8(uint64_t a1)
{
  sub_2993D5E8C(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993D6120(void *a1, uint64_t a2)
{
  sub_299233548(a2, "output-format-type", &v87);
  a1[47] = sub_2993D5D5C;
  a1[48] = 0;
  if ((v89 & 0x80) == 0)
  {
    if (v89 != 4)
    {
      if (v89 != 6)
      {
        goto LABEL_19;
      }

      v4 = v87 == 1634427255 && WORD2(v87) == 26996;
      goto LABEL_12;
    }

    v5 = sub_2993D6DB8;
    if (v87 == 1701736302)
    {
LABEL_118:
      a1[47] = v5;
      a1[48] = 0;
LABEL_234:
      v70 = 1;
      goto LABEL_237;
    }

    v6 = &v87;
LABEL_18:
    v5 = sub_2993D6DC0;
    if (*v6 != 1886221668)
    {
      goto LABEL_19;
    }

    goto LABEL_118;
  }

  if (v88 == 4)
  {
    v6 = v87;
    v5 = sub_2993D6DB8;
    if (*v87 == 1701736302)
    {
      goto LABEL_118;
    }

    goto LABEL_18;
  }

  if (v88 != 6)
  {
    goto LABEL_19;
  }

  v4 = *v87 == 1634427255 && v87[2] == 26996;
LABEL_12:
  v5 = sub_2993D6CA8;
  if (v4)
  {
    goto LABEL_118;
  }

LABEL_19:
  sub_2991C6CA8(&v86, "%m\\t%H\\n");
  sub_2991C6CA8(&v85, "%m\\t%H\\n");
  sub_2991C6CA8(&v84, "");
  sub_2991C6CA8(&v83, "EOS\\n");
  sub_2991C6CA8(&v82, "");
  sub_2991C6CA8(&v81, "node-format");
  sub_2991C6CA8(&v80, "bos-format");
  sub_2991C6CA8(&v79, "eos-format");
  sub_2991C6CA8(&v78, "unk-format");
  sub_2991C6CA8(&v77, "eon-format");
  v7 = v89;
  if ((v89 & 0x80u) != 0)
  {
    v7 = v88;
  }

  if (!v7)
  {
    goto LABEL_61;
  }

  std::string::append(&v81, "-", 1uLL);
  if ((v89 & 0x80u) == 0)
  {
    v8 = &v87;
  }

  else
  {
    v8 = v87;
  }

  if ((v89 & 0x80u) == 0)
  {
    v9 = v89;
  }

  else
  {
    v9 = v88;
  }

  std::string::append(&v81, v8, v9);
  std::string::append(&v80, "-", 1uLL);
  if ((v89 & 0x80u) == 0)
  {
    v10 = &v87;
  }

  else
  {
    v10 = v87;
  }

  if ((v89 & 0x80u) == 0)
  {
    v11 = v89;
  }

  else
  {
    v11 = v88;
  }

  std::string::append(&v80, v10, v11);
  std::string::append(&v79, "-", 1uLL);
  if ((v89 & 0x80u) == 0)
  {
    v12 = &v87;
  }

  else
  {
    v12 = v87;
  }

  if ((v89 & 0x80u) == 0)
  {
    v13 = v89;
  }

  else
  {
    v13 = v88;
  }

  std::string::append(&v79, v12, v13);
  std::string::append(&v78, "-", 1uLL);
  if ((v89 & 0x80u) == 0)
  {
    v14 = &v87;
  }

  else
  {
    v14 = v87;
  }

  if ((v89 & 0x80u) == 0)
  {
    v15 = v89;
  }

  else
  {
    v15 = v88;
  }

  std::string::append(&v78, v14, v15);
  std::string::append(&v77, "-", 1uLL);
  if ((v89 & 0x80u) == 0)
  {
    v16 = &v87;
  }

  else
  {
    v16 = v87;
  }

  if ((v89 & 0x80u) == 0)
  {
    v17 = v89;
  }

  else
  {
    v17 = v88;
  }

  std::string::append(&v77, v16, v17);
  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v81;
  }

  else
  {
    v18 = v81.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v18, &__str);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_60;
    }

LABEL_212:
    operator delete(__str.__r_.__value_.__l.__data_);
    if (size)
    {
      goto LABEL_61;
    }

LABEL_213:
    v59 = 0;
    goto LABEL_214;
  }

  std::ios_base::clear((a1 + *(a1[11] - 24) + 88), 0);
  v60 = sub_2991C0E9C(a1 + 11, "/Library/Caches/com.apple.xbs/Sources/Mecabra/src/im/writer.cpp", 63);
  v61 = sub_2991C0E9C(v60, "(", 1);
  v62 = MEMORY[0x29C29BD30](v61, 57);
  v63 = sub_2991C0E9C(v62, ") [", 3);
  v64 = sub_2991C0E9C(v63, "!tmp.empty()", 12);
  v65 = sub_2991C0E9C(v64, "] ", 2);
  v66 = sub_2991C0E9C(v65, "unkown format type [", 20);
  if ((v89 & 0x80u) == 0)
  {
    v67 = &v87;
  }

  else
  {
    v67 = v87;
  }

  if ((v89 & 0x80u) == 0)
  {
    v68 = v89;
  }

  else
  {
    v68 = v88;
  }

  v69 = sub_2991C0E9C(v66, v67, v68);
  sub_2991C0E9C(v69, "]", 1);
  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_212;
  }

LABEL_60:
  if (!size)
  {
    goto LABEL_213;
  }

LABEL_61:
  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v81;
  }

  else
  {
    v20 = v81.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v20, &__str);
  if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v80;
  }

  else
  {
    v21 = v80.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v21, &v75);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v79;
  }

  else
  {
    v22 = v79.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v22, &v74);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v78;
  }

  else
  {
    v23 = v78.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v23, &v73);
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v77;
  }

  else
  {
    v24 = v77.__r_.__value_.__r.__words[0];
  }

  sub_299233548(a2, v24, &__p);
  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v86.__r_.__value_.__l.__size_;
  }

  v26 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v26 = __str.__r_.__value_.__l.__size_;
  }

  if (v25 != v26)
  {
    a1[47] = sub_2993D7138;
    a1[48] = 0;
    goto LABEL_120;
  }

  if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v86;
  }

  else
  {
    v27 = v86.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if (memcmp(v27, p_str, v25))
  {
    goto LABEL_116;
  }

  if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v84.__r_.__value_.__l.__size_;
  }

  v30 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v30 = v75.__r_.__value_.__l.__size_;
  }

  if (v29 != v30)
  {
    goto LABEL_116;
  }

  v31 = (v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v84 : v84.__r_.__value_.__r.__words[0];
  v32 = (v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v75 : v75.__r_.__value_.__r.__words[0];
  if (memcmp(v31, v32, v29))
  {
    goto LABEL_116;
  }

  if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v83.__r_.__value_.__l.__size_;
  }

  v34 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = v74.__r_.__value_.__l.__size_;
  }

  if (v33 != v34 || ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v35 = &v83) : (v35 = v83.__r_.__value_.__r.__words[0]), (v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v36 = &v74) : (v36 = v74.__r_.__value_.__r.__words[0]), memcmp(v35, v36, v33) || !sub_2993D70C4(&v85, &v73)))
  {
LABEL_116:
    a1[47] = sub_2993D7138;
    a1[48] = 0;
    if (!memcmp(v27, p_str, v25))
    {
LABEL_121:
      if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = HIBYTE(v84.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v37 = v84.__r_.__value_.__l.__size_;
      }

      v38 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
      if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v75.__r_.__value_.__l.__size_;
      }

      if (v37 != v38 || ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v39 = &v84) : (v39 = v84.__r_.__value_.__r.__words[0]), (v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v40 = &v75) : (v40 = v75.__r_.__value_.__r.__words[0]), memcmp(v39, v40, v37)))
      {
        std::string::operator=(&v84, &v75);
      }

      if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(v83.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = v83.__r_.__value_.__l.__size_;
      }

      v42 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v74.__r_.__value_.__l.__size_;
      }

      if (v41 != v42 || ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v43 = &v83) : (v43 = v83.__r_.__value_.__r.__words[0]), (v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v44 = &v74) : (v44 = v74.__r_.__value_.__r.__words[0]), memcmp(v43, v44, v41)))
      {
        std::string::operator=(&v83, &v74);
      }

      if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v85.__r_.__value_.__l.__size_;
      }

      v46 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = v73.__r_.__value_.__l.__size_;
      }

      v47 = &v73;
      if (v45 == v46)
      {
        v48 = (v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v85 : v85.__r_.__value_.__r.__words[0];
        v49 = (v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v73 : v73.__r_.__value_.__r.__words[0];
        if (!memcmp(v48, v49, v45))
        {
          if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v50 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v50 = v86.__r_.__value_.__l.__size_;
          }

          v51 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v51 = __str.__r_.__value_.__l.__size_;
          }

          v47 = &__str;
          if (v50 == v51)
          {
            v52 = (v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v86 : v86.__r_.__value_.__r.__words[0];
            v53 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            if (!memcmp(v52, v53, v50))
            {
              v47 = &v86;
            }
          }
        }
      }

      std::string::operator=(&v85, v47);
      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v54 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v54 = v82.__r_.__value_.__l.__size_;
      }

      v55 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v55 = __p.__r_.__value_.__l.__size_;
      }

      if (v54 != v55 || ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v56 = &v82) : (v56 = v82.__r_.__value_.__r.__words[0]), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), memcmp(v56, p_p, v54)))
      {
        std::string::operator=(&v82, &__p);
      }

      if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v86;
      }

      else
      {
        v58 = v86.__r_.__value_.__r.__words[0];
      }

      sub_2993D0C4C(a1 + 8, v58);
    }

LABEL_120:
    std::string::operator=(&v86, &__str);
    goto LABEL_121;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v59 = 1;
LABEL_214:
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v80.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v83.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
    if (v59)
    {
      goto LABEL_234;
    }
  }

  else if (v59)
  {
    goto LABEL_234;
  }

  v70 = 0;
LABEL_237:
  if (v89 < 0)
  {
    operator delete(v87);
  }

  return v70;
}

void sub_2993D6B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (*(v53 - 169) < 0)
  {
    operator delete(*(v53 - 192));
  }

  if (*(v53 - 145) < 0)
  {
    operator delete(*(v53 - 168));
  }

  if (*(v53 - 121) < 0)
  {
    operator delete(*(v53 - 144));
  }

  if (*(v53 - 97) < 0)
  {
    operator delete(*(v53 - 120));
  }

  if (*(v53 - 73) < 0)
  {
    operator delete(*(v53 - 96));
  }

  if (*(v53 - 49) < 0)
  {
    operator delete(*(v53 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2993D6CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *((*(*a2 + 16))(a2) + 8);
  v5 = (v4 + 8);
  if (*(v4 + 8))
  {
    do
    {
      v6 = *(v4 + 48);
      v7 = *(v4 + 88);
      if (sub_29925EC84(a3, v7))
      {
        memcpy((*(a3 + 24) + *(a3 + 8)), v6, v7);
        *(a3 + 8) += v7;
      }

      if (sub_29925EC84(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v4 = *v5;
      v8 = *v5;
      v9 = *(v8 + 8);
      v5 = (v8 + 8);
    }

    while (v9);
  }

  if (sub_29925EC84(a3, 1))
  {
    *(*(a3 + 24) + (*(a3 + 8))++) = 10;
  }

  return 1;
}

uint64_t sub_2993D6DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 64))(a2);
  v6 = (*(*a2 + 16))(a2);
  if (v6)
  {
    v7 = v6;
    do
    {
      v8 = *(v7 + 109);
      if (v8 == 3)
      {
        v9 = a3;
        v10 = "EOS";
      }

      else
      {
        if (v8 != 2)
        {
          v18 = *(v7 + 48);
          v19 = *(v7 + 88);
          if (sub_29925EC84(a3, v19))
          {
            memcpy((*(a3 + 24) + *(a3 + 8)), v18, v19);
            *(a3 + 8) += v19;
          }

          goto LABEL_8;
        }

        v9 = a3;
        v10 = "BOS";
      }

      sub_29925EDFC(v9, v10);
LABEL_8:
      if (sub_29925EC84(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v11 = sub_29925EDFC(a3, *(v7 + 56));
      if (sub_29925EC84(v11, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v12 = sub_2993D7318(a3, *(v7 + 48) - v5);
      if (sub_29925EC84(v12, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v13 = sub_2993D7318(a3, *(v7 + 48) - v5 + *(v7 + 88));
      if (sub_29925EC84(v13, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v14 = sub_2993D73F8(a3, *(v7 + 92));
      if (sub_29925EC84(v14, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v15 = sub_2993D73F8(a3, *(v7 + 94));
      if (sub_29925EC84(v15, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      v16 = sub_2993D7318(a3, *(v7 + 109));
      if (sub_29925EC84(v16, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 32;
      }

      sub_2993D74C0(a3, *(v7 + 96));
      for (i = *(v7 + 40); i; i = *(i + 8))
      {
        if (sub_29925EC84(a3, 1))
        {
          *(*(a3 + 24) + (*(a3 + 8))++) = 32;
        }

        sub_2993D7318(a3, *(i + 16));
      }

      if (sub_29925EC84(a3, 1))
      {
        *(*(a3 + 24) + (*(a3 + 8))++) = 10;
      }

      v7 = *(v7 + 8);
    }

    while (v7);
  }

  return 1;
}

BOOL sub_2993D70C4(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void sub_2993D7138(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  (*(*a2 + 16))(a2);
  sub_2993D75A0();
}

uint64_t sub_2993D724C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || !(*(*a2 + 8))(a2))
  {
    return 0;
  }

  v6 = *(a1 + 376);
  v7 = *(a1 + 384);
  v8 = (a1 + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, a2, a3);
}

uint64_t sub_2993D7318(uint64_t a1, unsigned int a2)
{
  *&v13[63] = *MEMORY[0x29EDCA608];
  p_s = &__s;
  if ((a2 & 0x80000000) != 0)
  {
    p_s = v13;
    __s = 45;
    a2 = -a2;
LABEL_5:
    v3 = p_s;
    do
    {
      *v3++ = (a2 % 0xA) | 0x30;
      v4 = a2 >= 0xA;
      a2 /= 0xAu;
    }

    while (v4);
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

  v3 = v13;
  __s = 48;
LABEL_7:
  v5 = p_s == v3;
  *v3 = 0;
  v6 = v3 - 1;
  if (!v5 && v6 > p_s)
  {
    v8 = p_s + 1;
    do
    {
      v9 = *(v8 - 1);
      *(v8 - 1) = *v6;
      *v6-- = v9;
      v4 = v8++ >= v6;
    }

    while (!v4);
  }

  result = sub_29925EDFC(a1, &__s);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993D73F8(uint64_t a1, int a2)
{
  *&v11[63] = *MEMORY[0x29EDCA608];
  p_s = &__s;
  if (a2)
  {
    do
    {
      v3 = a2;
      *p_s++ = (a2 % 0xAu) | 0x30;
      LOWORD(a2) = a2 / 0xAu;
    }

    while (v3 >= 0xA);
  }

  else
  {
    p_s = v11;
    __s = 48;
  }

  *p_s = 0;
  v4 = p_s - 1;
  if (v4 > &__s)
  {
    v5 = v11;
    do
    {
      v6 = *(v5 - 1);
      *(v5 - 1) = *v4;
      *v4-- = v6;
    }

    while (v5++ < v4);
  }

  result = sub_29925EDFC(a1, &__s);
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993D74C0(uint64_t a1, unint64_t a2)
{
  *&v13[63] = *MEMORY[0x29EDCA608];
  p_s = &__s;
  if ((a2 & 0x8000000000000000) != 0)
  {
    p_s = v13;
    __s = 45;
    a2 = -a2;
LABEL_5:
    v3 = p_s;
    do
    {
      *v3++ = (a2 % 0xA) | 0x30;
      v4 = a2 >= 0xA;
      a2 /= 0xAuLL;
    }

    while (v4);
    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

  v3 = v13;
  __s = 48;
LABEL_7:
  v5 = p_s == v3;
  *v3 = 0;
  v6 = v3 - 1;
  if (!v5 && v6 > p_s)
  {
    v8 = p_s + 1;
    do
    {
      v9 = *(v8 - 1);
      *(v8 - 1) = *v6;
      *v6-- = v9;
      v4 = v8++ >= v6;
    }

    while (!v4);
  }

  result = sub_29925EDFC(a1, &__s);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2993D82EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a20)
  {
    MEMORY[0x29C29BF70](a20, 0x10C80436913F5);
  }

  if (a23)
  {
    MEMORY[0x29C29BF70](a23, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993D838C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 109);
  if (v3 <= 4)
  {
    v4 = *(a1 + qword_29942A720[v3]);
    sub_2993D75A0();
  }

  return 1;
}

uint64_t sub_2993D83BC(uint64_t a1, const __CFURL *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v3 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x29EDB8ED8], a2, @"VulgarWordUsage.db", 0);
    v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
    v5 = sub_2993652F8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[VulgarWordUsageDatabaseWrapper::VulgarWordUsageDatabaseWrapper] database: %@", buf, 0xCu);
    }

    v6 = LXVulgarWordUsageDatabaseCreate();
    sub_2992917C8(a1, v6);
    if (v4)
    {
      CFRelease(v4);
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2993D84DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_2991EDA10(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2993D854C(uint64_t a1, CFStringRef theString1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!theString1 || (v4 = *(a1 + 8)) == 0 || CFStringCompare(theString1, v4, 0))
  {
    v5 = sub_2993652F8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = theString1;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[VulgarWordUsageDatabaseWrapper::setAppContext] set appContext: %@", &v8, 0xCu);
      if (!theString1)
      {
        goto LABEL_9;
      }
    }

    else if (!theString1)
    {
      goto LABEL_9;
    }

    if (CFStringGetLength(theString1) >= 1)
    {
      Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], theString1);
LABEL_10:
      sub_299219AB4((a1 + 8), Copy);
      goto LABEL_11;
    }

LABEL_9:
    Copy = 0;
    goto LABEL_10;
  }

LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_2993D8654(uint64_t a1, CFStringRef theString1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (!theString1 || (v4 = *(a1 + 16)) == 0 || CFStringCompare(theString1, v4, 0))
  {
    v5 = sub_2993652F8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = 138412290;
      v9 = theString1;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[VulgarWordUsageDatabaseWrapper::setRecipientContext] set recipientContext: %@", &v8, 0xCu);
      if (!theString1)
      {
        goto LABEL_9;
      }
    }

    else if (!theString1)
    {
      goto LABEL_9;
    }

    if (CFStringGetLength(theString1) >= 1)
    {
      Copy = CFStringCreateCopy(*MEMORY[0x29EDB8ED8], theString1);
LABEL_10:
      sub_299219AB4((a1 + 16), Copy);
      goto LABEL_11;
    }

LABEL_9:
    Copy = 0;
    goto LABEL_10;
  }

LABEL_11:
  v7 = *MEMORY[0x29EDCA608];
}

BOOL sub_2993D875C(uint64_t *a1, uint64_t a2)
{
  result = 0;
  v18 = *MEMORY[0x29EDCA608];
  if (a2 && *a1)
  {
    v5 = sub_2993652F8(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = a1[1];
      v11 = a1[2];
      v12 = 138412802;
      v13 = a2;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_debug_impl(&dword_29918C000, v5, OS_LOG_TYPE_DEBUG, "[VulgarWordUsageDatabaseWrapper::incrementUsageCount] vulgarWord: %@, app: %@, recipient: %@", &v12, 0x20u);
    }

    v6 = *a1;
    v7 = a1[1];
    v8 = a1[2];
    result = LXVulgarWordUsageDatabaseIncrementUsageCount() != 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993D8854(uint64_t *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  result = *a1;
  if (result)
  {
    v5 = a1[1];
    v6 = a1[2];
    CanAutocorrect = LXVulgarWordUsageDatabaseCanAutocorrect();
    v8 = sub_2993652F8(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = a1[1];
      v11 = a1[2];
      v12 = 138413058;
      v13 = a2;
      v14 = 1024;
      v15 = CanAutocorrect;
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_debug_impl(&dword_29918C000, v8, OS_LOG_TYPE_DEBUG, "[VulgarWordUsageDatabaseWrapper::canAutocorrect] vulgarWord: %@, result: %d, app: %@, recipient: %@", &v12, 0x26u);
    }

    result = CanAutocorrect != 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL sub_2993D894C(uint64_t *a1)
{
  if (!*a1)
  {
    return 0;
  }

  sub_2993D854C(a1, 0);
  sub_2993D8654(a1, 0);
  v2 = *a1;
  return LXVulgarWordUsageDatabaseReset() != 0;
}

uint64_t sub_2993D89A8(uint64_t a1, const __CFString *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  *a1 = &unk_2A1F79108;
  *(a1 + 8) = CFStringCreateWithSubstring(0, a2, a3);
  *(a1 + 16) = location;
  *(a1 + 24) = length;
  *(a1 + 32) = CFStringGetCharacterAtIndex(a2, length + location - 1) == 39;
  return a1;
}

uint64_t sub_2993D8A28(uint64_t a1)
{
  *a1 = &unk_2A1F79108;
  CFRelease(*(a1 + 8));
  return a1;
}

void sub_2993D8A78(uint64_t a1)
{
  sub_2993D8A28(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993D8AB0(uint64_t a1, CFStringRef theString, uint64_t a3)
{
  Length = CFStringGetLength(theString);
  v7 = CFStringGetLength(theString);
  v8 = *(a1 + 24);
  if (v7 - a3 >= v8)
  {
    if (v8 < 1)
    {
LABEL_8:
      v9 = *(a1 + 32) | (a3 == Length);
      return v9 & 1;
    }

    v10 = 0;
    while (1)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, a3 + v10);
      if (CharacterAtIndex != CFStringGetCharacterAtIndex(*(a1 + 8), v10))
      {
        break;
      }

      if (v8 == ++v10)
      {
        a3 += v10;
        goto LABEL_8;
      }
    }
  }

  v9 = 0;
  return v9 & 1;
}

void *sub_2993D8B70(void *a1)
{
  *a1 = &unk_2A1F79128;
  sub_2993D8BC4(a1);
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_2993D8BC4(void *result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  if (v2 != v3)
  {
    do
    {
      result = *v2;
      if (*v2)
      {
        result = (*(*result + 8))(result);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v1[1];
  }

  v1[2] = v2;
  v1[4] = 0;
  return result;
}

void sub_2993D8C40(void *a1)
{
  sub_2993D8B70(a1);

  JUMPOUT(0x29C29BFB0);
}

void *sub_2993D8C78(void *result, unint64_t a2)
{
  v2 = result;
  if (a2)
  {
    v5 = result[1];
    for (i = result[2]; a2 < (i - v5) >> 3; v2[2] = i)
    {
      result = *(i - 8);
      if (result)
      {
        result = (*(*result + 8))(result);
        v5 = v2[1];
        i = v2[2];
      }

      i -= 8;
    }
  }

  else
  {

    return sub_2993D8BC4(result);
  }

  return result;
}

uint64_t sub_2993D8D10(uint64_t result, CFStringRef theString, uint64_t a3)
{
  if (*(result + 16) - *(result + 8) <= 0x50uLL)
  {
    result = CFStringGetLength(theString);
    if (result > a3)
    {
      v5 = result;
      v6 = result - 1;
      v7 = a3;
      do
      {
        if (v7 == v6 || (result = CFStringGetCharacterAtIndex(theString, v7), result == 39))
        {
          operator new();
        }

        ++v7;
      }

      while (v7 != v5);
    }
  }

  return result;
}

void sub_2993D8E10(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_2993D9034();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_29920B86C(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *sub_2993D8EE4(void *a1, CFStringRef theString, int a3)
{
  v3 = a3;
  if (theString && a3)
  {
    v6 = a1[1];
    if (a1[2] == v6)
    {
      v8 = 0;
      v7 = a1[4];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      while (sub_2993D8AB0(*(v6 + 8 * v7), theString, v8))
      {
        v6 = a1[1];
        v9 = a1[2];
        v8 += *(*(v6 + 8 * v7++) + 24);
        a1[4] = v7;
        if (v7 >= (v9 - v6) >> 3)
        {
          goto LABEL_14;
        }
      }

      a1[4] = v7;
    }

LABEL_14:
    sub_2993D8C78(a1, v7);

    return sub_2993D8D10(a1, theString, v8);
  }

  else
  {
    result = sub_2993D8BC4(a1);
    if (theString && (v3 & 1) == 0)
    {
      operator new();
    }
  }

  return result;
}

void sub_2993D904C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  if (a4)
  {
    v5 = (**(a1 + 8) >> 4) & 0x20 | (((**(a1 + 8) >> 5) & 1) << 7) | (**(a1 + 8) >> 2) & 0x40 | (**(a1 + 8) >> 7) & 0x18 | 2;
  }

  else
  {
    v5 = (**(a1 + 8) >> 4) & 0x20 | (((**(a1 + 8) >> 5) & 1) << 7) | (**(a1 + 8) >> 2) & 0x40 | (**(a1 + 8) >> 7) & 0x18;
  }

  sub_2992B8778(a2, *a3, *(a3 + 8), v5, a5);
}

void sub_2993D9098(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v55 = a4;
  v56 = a5;
  if ((atomic_load_explicit(&qword_2A1461818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461818))
  {
    qword_2A1461810 = sub_299237120();
    __cxa_guard_release(&qword_2A1461818);
  }

  v7 = sub_2993D94B8();
  if (*qword_2A1461810)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = *a1;
  if (*a1)
  {
    if (*(v9 + 96))
    {
      v38 = *(v9 + 8);
      if (v38)
      {
        if (v56 <= 0x20)
        {
          v10 = v7;
          v41 = *(a3 + 16);
          v37 = v8;
          sub_2992547B8(&v48, v9 + 248, &v41, &v55);
          v11 = v37;
          v12 = 0x7FFFFFFF;
          v13 = v10;
          while (1)
          {
            if (v50 < v13)
            {
              goto LABEL_50;
            }

            v14 = *(v48[13] + 8 * (v50 - v13));
            v15 = ((v54 - __p) >> 1) - v14;
            if (!__p)
            {
              v15 = 0;
            }

            v47[0] = __p + 2 * v14;
            v47[1] = v15;
            if (!v51)
            {
              goto LABEL_50;
            }

            v16 = (v52 - v51) >> 1 == v14 || v15 == 0;
            if (v16 || v15 < v11)
            {
              goto LABEL_50;
            }

            if ((*a1[1] & 2) != 0)
            {
              v19 = *a1[2];
              if (v19)
              {
                v18 = CFArrayGetCount(*(v19 + 32)) == 0;
              }

              else
              {
                v18 = 1;
              }
            }

            else
            {
              v18 = 0;
            }

            sub_2993D904C(a1, v38, v47, v18, &v45);
            v20 = v50 - v13;
            if (v50 >= v13)
            {
              v21 = ((v48[8] - v48[7]) >> 1) - *(v48[13] + 8 * v20);
              if (v21 != -1)
              {
                v22 = *(v48[10] + 8 * v20);
                v23 = ((v48[5] - v48[4]) >> 1) - v22;
                v24 = v49 + 2 * v22;
                if (!v49)
                {
                  v23 = 0;
                }

                v44[0] = v24;
                v44[1] = v23;
                *&v41 = v21;
                *(&v41 + 1) = v23;
                v42 = v13;
                v43 = v44;
                if (v45 != v46)
                {
                  v39 = sub_2993DA26C(*a1[1]);
                  v25 = *(a3 + 48);
                  memset(&v57, 0, sizeof(v57));
                  for (i = *(*a1 + 16); i != *(*a1 + 24); i = (i + 32))
                  {
                    if (i[1].__r_.__value_.__s.__data_[4] == 1)
                    {
                      std::string::operator=(&v57, i);
                      break;
                    }
                  }

                  v27 = v45;
                  if (v46 != v45)
                  {
                    v28 = 0;
                    v29 = 0;
                    v30 = 0;
                    do
                    {
                      v31 = sub_29920B95C(v27 + v28, &v57.__r_.__value_.__l.__data_);
                      v32 = (*(**(v31 + 56) + 16))(*(v31 + 56));
                      v33 = ((v32[1] - *v32) >> 1) - v41;
                      if (v25 <= 0 && v33 <= *(a3 + 40))
                      {
                        v34 = 0;
                      }

                      else
                      {
                        if ((*(a1[1] + 3) & 2) != 0)
                        {
                          goto LABEL_46;
                        }

                        v34 = 2;
                      }

                      v12 = sub_2993DA300(v12, v33, a3);
                      v35 = sub_2993DA3C0(v34, v29, *a1[1]);
                      v36 = sub_2993D9B10(a1, a2, v45 + v28, a3, v12, v35, v34, &v41);
                      if (v30 == 11)
                      {
                        break;
                      }

                      v29 += v36;
                      if (v29 == v39)
                      {
                        break;
                      }

LABEL_46:
                      ++v30;
                      v27 = v45;
                      v28 += 32;
                    }

                    while (v30 < (v46 - v45) >> 5);
                  }

                  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v57.__r_.__value_.__l.__data_);
                  }
                }
              }
            }

            *&v41 = &v45;
            sub_299225D98(&v41);
            v11 = v37;
LABEL_50:
            if (--v13 > v10)
            {
              if (__p)
              {
                v54 = __p;
                operator delete(__p);
              }

              if (v51)
              {
                v52 = v51;
                operator delete(v51);
              }

              return;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2993D94B8()
{
  if ((atomic_load_explicit(&qword_2A1461828, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461828))
  {
    qword_2A1461820 = sub_299237120();
    __cxa_guard_release(&qword_2A1461828);
  }

  if (*qword_2A1461820)
  {
    return 2;
  }

  else
  {
    return 6;
  }
}

void *sub_2993D9544(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2993D9588(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2993D94B8();
  v6 = *a1;
  if (*a1)
  {
    if (*(v6 + 96) == 1)
    {
      v34 = *(v6 + 8);
      if (v34)
      {
        v7 = *(a3 + 184);
        v33 = v5;
        if ((*(*v7 + 24))(v7) <= 0x20)
        {
          v8 = *a1;
          v40 = *(a3 + 96);
          v9 = sub_2992FE060();
          sub_2992547B8(v41, v8 + 248, &v40, v9);
          sub_2993C4710(v41[1], v41[2], v7, &v40);
          v30 = a3;
          v32 = v44;
          v31 = (v45 - v44) >> 1;
          v10 = v33;
          v11 = v33;
          do
          {
            if (v43 >= v11)
            {
              v12 = *(*(v41[0] + 104) + 8 * (v43 - v11));
              if (v12 != -1)
              {
                if ((*a1[1] & 2) != 0)
                {
                  v14 = *a1[2];
                  if (v14)
                  {
                    v13 = CFArrayGetCount(*(v14 + 32)) == 0;
                  }

                  else
                  {
                    v13 = 1;
                  }
                }

                else
                {
                  v13 = 0;
                }

                sub_2992B8B58(v34, v12, v32, v31, v13, &v38);
                if (v38 != v39)
                {
                  v15 = v43 - v11;
                  if (v43 >= v11)
                  {
                    v18 = ((*(v41[0] + 64) - *(v41[0] + 56)) >> 1) - *(*(v41[0] + 104) + 8 * v15);
                    v19 = *(*(v41[0] + 80) + 8 * v15);
                    v17 = v42 + 2 * v19;
                    if (v42)
                    {
                      v16 = (((*(v41[0] + 40) - *(v41[0] + 32)) >> 1) - v19);
                    }

                    else
                    {
                      v16 = 0;
                    }
                  }

                  else
                  {
                    v16 = 0;
                    v17 = 0;
                    v18 = -1;
                  }

                  v37[0] = v17;
                  v37[1] = v16;
                  v36[0] = v18;
                  v36[1] = v16;
                  v36[2] = v11;
                  v36[3] = v37;
                  v35 = *(a3 + 128);
                  sub_2993DA26C(*a1[1]);
                  memset(&v49, 0, sizeof(v49));
                  for (i = *(*a1 + 16); i != *(*a1 + 24); i = (i + 32))
                  {
                    if (i[1].__r_.__value_.__s.__data_[4] == 1)
                    {
                      std::string::operator=(&v49, i);
                      break;
                    }
                  }

                  if (v39 != v38)
                  {
                    v21 = sub_29920B95C(v38, &v49.__r_.__value_.__l.__data_);
                    v22 = (*(**(v21 + 56) + 16))(*(v21 + 56));
                    v23 = (v38 + 24);
                    v24 = *(v38 + 47);
                    if (v24 < 0)
                    {
                      v23 = *v23;
                      v24 = *(v38 + 32);
                    }

                    v26 = *v22;
                    v25 = v22[1];
                    v27 = v24 - v36[0];
                    if (v23)
                    {
                      v28 = v27;
                    }

                    else
                    {
                      v28 = 0;
                    }

                    v48 = CFStringCreateWithCharacters(0, &v23[v36[0]], v28);
                    v29 = *a1[1];
                    operator new();
                  }

                  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v49.__r_.__value_.__l.__data_);
                  }

                  a3 = v30;
                }

                v36[0] = &v38;
                sub_2992BA7F4(v36);
                v10 = v33;
              }
            }

            v11 = (v11 - 1);
          }

          while (v11 <= v10);
          *&v40 = &unk_2A1F74930;
          v36[0] = &v40 + 1;
          sub_299259FC8(v36);
          if (__p)
          {
            v47 = __p;
            operator delete(__p);
          }

          if (v44)
          {
            v45 = v44;
            operator delete(v44);
          }
        }
      }
    }
  }
}

uint64_t sub_2993D9B10(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7, uint64_t *a8)
{
  v67[4] = *MEMORY[0x29EDCA608];
  v12 = sub_2992B8D0C(a3, off_2A145F3B0[0]);
  v13 = sub_2992B8D0C(a3, off_2A145F3B8);
  v52 = sub_2992B8DA4(a3, off_2A145F390[0]);
  v51 = sub_2992B8DA4(a3, off_2A145F388[0]);
  v14 = sub_2992B8D0C(a3, off_2A145F398[0]);
  v15 = *v12;
  v16 = v12[1] - *v12;
  v17 = *v13;
  v18 = v13[1] - *v13;
  v19 = v18 >> 1;
  v66[0] = v17;
  v66[1] = v18 >> 1;
  if (*a8 > (v16 >> 1))
  {
    goto LABEL_28;
  }

  v20 = v14;
  if (a8[2] > ((v14[1] - *v14) >> 1) || !sub_2992FE1C4(v66, a8[3]))
  {
    goto LABEL_28;
  }

  v48 = a6;
  v49 = a2;
  v21 = a8[1];
  v22 = v19 - v21;
  v50 = v19 > v21 && *(v17 + 2 * v21) == 32;
  v23 = *a1;
  buf[0] = 0;
  v24 = sub_2993232FC((v23 + 248), buf);
  if (!(buf[0] & 1 | ((v24 & 1) == 0) | v50 | (v17 == 0)) && v19 != v21)
  {
    v25 = (v17 + 2 * v21);
    v26 = MEMORY[0x29EDCA600];
    while (1)
    {
      v28 = *v25++;
      v27 = v28;
      if (!(v28 <= 0x7FuLL ? *(v26 + 4 * v27 + 60) & 0x40000 : __maskrune(v27, 0x40000uLL)))
      {
        break;
      }

      if (!--v22)
      {
        *buf = 0;
        __dst = 0;
        v65 = 0;
        operator new();
      }
    }
  }

  *buf = 0;
  __dst = 0;
  v65 = 0;
  sub_299218E20(buf, v19);
  sub_299218EBC(buf, __dst, (v17 + 2 * a8[1]), (v17 + v18), (v18 - 2 * a8[1]) >> 1);
  v30 = *a8;
  v31 = v15 + 2 * *a8;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  sub_2992220D8(&v60, v31, v15 + v16, (v16 - 2 * v30) >> 1);
  v32 = *a8;
  v33 = a8[1];
  v34 = v20[1];
  v35 = *v20 + 2 * a8[2];
  v58 = 0;
  v59 = 0;
  __p = 0;
  if (v35 != v34)
  {
    sub_2991A6584(&__p, (v34 - v35) >> 1);
  }

  v36 = sub_2992DC9CC(a1[3], a4, *(a4 + 16), *(a4 + 24), v60, (v61 - v60) >> 1, *buf, (__dst - *buf) >> 1, v52 >> v32, v51 >> v33, &__p, a5 | 0x4C00000000, a7, 0, 0);
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  if (*buf)
  {
    __dst = *buf;
    operator delete(*buf);
  }

  if (!v36)
  {
LABEL_28:
    v37 = 0;
    goto LABEL_29;
  }

  if (((*(*v36 + 176))(v36) & 1) == 0)
  {
    *buf = v36;
    v40 = sub_29927363C(v49 + 1, buf);
    if (v40)
    {
      v41 = v40[3];
    }

    else
    {
      v41 = -1;
    }

    v42 = *a1[1];
    if ((~v42 & 0x6000000) != 0 && (v42 & 0x10000000) == 0)
    {
      if (v41 != -1)
      {
        v43 = *(v49[6] + 8 * v41);
        v44 = (*(*v43 + 112))(v43);
        (*(*v36 + 488))(v36, v44);
      }

      if (v48)
      {
        v36[1] = v48;
      }

      LOBYTE(v60) = 0;
      (*(*v36 + 528))(v36, 3, "Adding a phrase learning dictionary candidate", 1);
      *buf = v36;
      v67[0] = &unk_2A1F65308;
      v67[3] = v67;
      v37 = sub_2992AB710(v49, buf, 1, &v60, v67);
      sub_29921F128(v67);
      v45 = *buf;
      *buf = 0;
      if (v45)
      {
        (*(*v45 + 16))(v45);
      }

      if (v37)
      {
        v46 = sub_2993652F8(3u);
        if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_29;
        }

        *buf = 0;
        v47 = " ∟ Added";
      }

      else if (v60 == 1)
      {
        v46 = sub_2993652F8(3u);
        if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_29;
        }

        *buf = 0;
        v47 = " ∟ Replaced";
      }

      else
      {
        v46 = sub_2993652F8(3u);
        if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_29;
        }

        *buf = 0;
        v47 = " ∟ REJECTED";
      }

      _os_log_debug_impl(&dword_29918C000, v46, OS_LOG_TYPE_DEBUG, v47, buf, 2u);
      goto LABEL_29;
    }

    if (v41 != -1)
    {
      v37 = *(v49[6] + 8 * v41);
      if (!v37)
      {
        goto LABEL_27;
      }

      if (((*(*v37 + 88))(v37) & 1) == 0)
      {
        *(v37 + 204) = 76;
        v37 = 1;
        goto LABEL_27;
      }
    }
  }

  v37 = 0;
LABEL_27:
  (*(*v36 + 16))(v36);
LABEL_29:
  v38 = *MEMORY[0x29EDCA608];
  return v37;
}

uint64_t sub_2993DA26C(int a1)
{
  if ((atomic_load_explicit(&qword_2A1461838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461838))
  {
    qword_2A1461830 = sub_299237120();
    __cxa_guard_release(&qword_2A1461838);
  }

  if ((~a1 & 0x6000000) != 0)
  {
    return *(qword_2A1461830 + 416);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2993DA300(int a1, int a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2A1461848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461848))
  {
    qword_2A1461840 = sub_299237120();
    __cxa_guard_release(&qword_2A1461848);
  }

  if (a1 != 0x7FFFFFFF)
  {
    return (a1 + 1);
  }

  result = *(qword_2A1461840 + 496);
  v7 = a2 - *(a3 + 40);
  if (v7 >= 1)
  {
    return (*(qword_2A1461840 + 512) + *(qword_2A1461840 + 512) * v7 + result);
  }

  return result;
}

uint64_t sub_2993DA3C0(int a1, int a2, unsigned int a3)
{
  if ((atomic_load_explicit(&qword_2A1461858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1461858))
  {
    qword_2A1461850 = sub_299237120();
    __cxa_guard_release(&qword_2A1461858);
  }

  if (((a3 & 0x2000002) != 2) | *qword_2A1461850 & 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = HIBYTE(a3) & 4;
  }

  if (v6)
  {
    v7 = a1 == 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 + a2;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void sub_2993DA484(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_2A1F79168;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = a4;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  operator new();
}

void sub_2993DA540(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v2, 0x10A0C403A2516C0);
  v4 = *(v1 + 16);
  if (v4)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_2993DA580(void *a1)
{
  *a1 = &unk_2A1F79168;
  v2 = a1[1];
  if (v2)
  {
    v3 = sub_2992CD8DC(v2);
    MEMORY[0x29C29BFB0](v3, 0x10A0C403A2516C0);
  }

  v4 = a1[8];
  if (v4)
  {
    v5 = sub_2992CD8DC(v4);
    MEMORY[0x29C29BFB0](v5, 0x10A0C403A2516C0);
  }

  v6 = a1[2];
  if (v6)
  {
    a1[3] = v6;
    operator delete(v6);
  }

  return a1;
}

void sub_2993DA60C(void *a1)
{
  sub_2993DA580(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2993DA644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2992CE99C(*(a1 + 8), &v6);
  sub_2992A5E4C(a2, &v6);
  v3 = v7;
  v7 = 0;
  if (v3)
  {
    v4 = sub_2992A5BE8(v3);
    MEMORY[0x29C29BFB0](v4, 0x20C4093837F09);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
  }

  return result;
}

void sub_2993DA6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 48) && (*(*a1 + 104))(a1))
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x4002000000;
    v43 = sub_2993DAB68;
    v44 = sub_2993DAB8C;
    memset(v45, 0, 24);
    v6 = (*(*a1 + 104))(a1, a2);
    v7 = *(a1 + 8);
    v39[0] = MEMORY[0x29EDCA5F8];
    v39[1] = 0x40000000;
    v39[2] = sub_2993DABB8;
    v39[3] = &unk_29EF221E0;
    v39[4] = &v40;
    v39[5] = a1;
    sub_2992CEA88(v7, v6, v39);
    v8 = v41[5];
    v9 = v41[6];
    if (v9 != v8)
    {
      v27 = sub_2992B8B44;
      sub_29922619C(v8, v9, &v27, 126 - 2 * __clz((v9 - v8) >> 5), 1);
      v10 = 0;
      v38 = 0;
      v11 = -1;
      do
      {
        v12 = v41[5];
        if (++v11 >= ((v41[6] - v12) >> 5))
        {
          break;
        }

        v13 = v12 + v10;
        v14 = *(v12 + v10 + 24);
        v33 = 0;
        v34 = 0;
        v35 = v14;
        v36 = 0;
        v37[0] = &v33;
        v16 = *(a1 + 16);
        v15 = *(a1 + 24);
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        sub_2991C6CA8(__p, off_2A145F348);
        v17 = sub_29920B95C(v13, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (v41[5] + v10 + 8 != v17)
        {
          v18 = (*(**(v17 + 56) + 16))(*(v17 + 56));
          if (&v30 != v18)
          {
            sub_299223494(&v30, *v18, v18[1], (v18[1] - *v18) >> 1);
          }
        }

        v19 = v41[5];
        sub_2991C6CA8(__p, off_2A145F370[0]);
        v20 = sub_29920B95C(v19 + v10, __p);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }

        if (v41[5] + v10 + 8 != v20)
        {
          v21 = (*(**(v20 + 56) + 16))(*(v20 + 56));
          if (&v27 != v21)
          {
            sub_299223494(&v27, *v21, v21[1], (v21[1] - *v21) >> 1);
          }
        }

        if (v31 != v30)
        {
          v22 = v41[5];
          sub_2991C6CA8(__p, off_2A145F3B8);
          v23 = sub_29920B95C(v22 + v10, __p);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          v24 = (*(**(v23 + 56) + 16))(*(v23 + 56));
          sub_2993DE9CC((a1 + 16), v24, &v30, &v27, *(a1 + 40));
          v37[1] = *(a1 + 16) + v15 - v16;
          (*(a3 + 16))(a3, v37, &v38);
        }

        if (v27)
        {
          v28 = v27;
          operator delete(v27);
        }

        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        v10 += 32;
      }

      while ((v38 & 1) == 0);
    }

    _Block_object_dispose(&v40, 8);
    v30 = v45;
    sub_299225D98(&v30);
  }
}

void sub_2993DAAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  _Block_object_dispose((v21 - 152), 8);
  a19 = v20;
  sub_299225D98(&a19);
  _Unwind_Resume(a1);
}

__n128 sub_2993DAB68(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void sub_2993DABB8(uint64_t a1, int a2)
{
  v3 = *(a1 + 40);
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v15 = 0;
  if (sub_2992CC3A0(*(*(v3 + 48) + 40), a2, &v15))
  {
    v4 = *(*(a1 + 32) + 8);
    sub_299228338(&v11, &v16);
    v5 = v15;
    v14 = v15;
    v6 = v4[6];
    if (v6 >= v4[7])
    {
      v10 = sub_299225E28(v4 + 5, &v11);
    }

    else
    {
      v7 = v13;
      *v6 = v11;
      v8 = v12;
      *(v6 + 8) = v12;
      *(v6 + 16) = v7;
      v9 = v6 + 8;
      if (v7)
      {
        v8[2] = v9;
        v11 = &v12;
        v12 = 0;
        v13 = 0;
      }

      else
      {
        *v6 = v9;
      }

      *(v6 + 24) = v5;
      v10 = v6 + 32;
    }

    v4[6] = v10;
    sub_299227884(&v11, v12);
  }

  sub_299227884(&v16, v17[0]);
}

void sub_2993DACA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  sub_299227884(&a9, a10);
  sub_299227884(&a14, a15);
  _Unwind_Resume(a1);
}

uint64_t sub_2993DAD04(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, BOOL *a5)
{
  *a4 = 0;
  v8 = (*(*a1 + 88))(a1);
  v9 = 0;
  if (v8)
  {
    v9 = (*(*a1 + 104))(a1, a2) != 0;
  }

  *a5 = v9;
  return v8;
}

uint64_t sub_2993DADA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = 0;
  if ((*(**v2 + 48))(*v2, *(a2 + 8), &v4))
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2993DAE48(uint64_t a1)
{
  sub_2992CD9F4(*(a1 + 8));
  result = *(a1 + 64);
  if (result)
  {

    return sub_2992CD9F4(result);
  }

  return result;
}

void *sub_2993DAE94(uint64_t a1)
{
  sub_2992CDBD8(*(a1 + 8));
  result = *(a1 + 64);
  if (result)
  {
    result = sub_2992CDBD8(result);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *v3 = 0;
  }

  return result;
}

uint64_t sub_2993DAED4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_2992CDF24(*(a1 + 8), *a2, ((*(a2 + 8) - *a2) >> 1), a3);
  if (v6)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v9 = *a2;
      v8 = *(a2 + 8);
      if (*(a1 + 72) <= ((v8 - *a2) >> 1))
      {
        __src = 0;
        v23 = 0;
        v24 = 0;
        if (v8 == v9)
        {
          v10 = 0;
          v20 = 0;
        }

        else
        {
          v10 = 0;
          do
          {
            --v8;
            if (v10 >= v24)
            {
              v11 = __src;
              v12 = v10 - __src;
              v13 = (v10 - __src) >> 1;
              if (v13 <= -2)
              {
                sub_299212A8C();
              }

              if (v24 - __src <= v13 + 1)
              {
                v14 = v13 + 1;
              }

              else
              {
                v14 = v24 - __src;
              }

              if (v24 - __src >= 0x7FFFFFFFFFFFFFFELL)
              {
                v15 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v14;
              }

              if (v15)
              {
                sub_299212A48(&__src, v15);
              }

              v16 = (v10 - __src) >> 1;
              v17 = (2 * v13);
              v18 = (2 * v13 - 2 * v16);
              *v17 = *v8;
              v10 = (v17 + 1);
              memcpy(v18, v11, v12);
              v19 = __src;
              __src = v18;
              v23 = v10;
              v24 = 0;
              if (v19)
              {
                operator delete(v19);
              }
            }

            else
            {
              *v10 = *v8;
              v10 += 2;
            }

            v23 = v10;
          }

          while (v8 != v9);
          v7 = *(a1 + 64);
          v20 = __src;
        }

        sub_2992CDF24(v7, v20, ((v10 - v20) >> 1), a3);
        if (__src)
        {
          v23 = __src;
          operator delete(__src);
        }
      }
    }
  }

  return v6;
}

void sub_2993DB070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993DB090(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = sub_2992CE304(*(a1 + 8), *a2, (a2[1] - *a2) >> 1, a3);
  if (v6)
  {
    v7 = *(a1 + 64);
    if (v7)
    {
      v9 = *a2;
      v8 = a2[1];
      if (*(a1 + 72) <= ((v8 - *a2) >> 1))
      {
        __src = 0;
        v23 = 0;
        v24 = 0;
        if (v8 == v9)
        {
          v10 = 0;
          v20 = 0;
        }

        else
        {
          v10 = 0;
          do
          {
            --v8;
            if (v10 >= v24)
            {
              v11 = __src;
              v12 = v10 - __src;
              v13 = (v10 - __src) >> 1;
              if (v13 <= -2)
              {
                sub_299212A8C();
              }

              if (v24 - __src <= v13 + 1)
              {
                v14 = v13 + 1;
              }

              else
              {
                v14 = v24 - __src;
              }

              if (v24 - __src >= 0x7FFFFFFFFFFFFFFELL)
              {
                v15 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v15 = v14;
              }

              if (v15)
              {
                sub_299212A48(&__src, v15);
              }

              v16 = (v10 - __src) >> 1;
              v17 = (2 * v13);
              v18 = (2 * v13 - 2 * v16);
              *v17 = *v8;
              v10 = (v17 + 1);
              memcpy(v18, v11, v12);
              v19 = __src;
              __src = v18;
              v23 = v10;
              v24 = 0;
              if (v19)
              {
                operator delete(v19);
              }
            }

            else
            {
              *v10 = *v8;
              v10 += 2;
            }

            v23 = v10;
          }

          while (v8 != v9);
          v7 = *(a1 + 64);
          v20 = __src;
        }

        sub_2992CE304(v7, v20, (v10 - v20) >> 1, a3);
        if (__src)
        {
          v23 = __src;
          operator delete(__src);
        }
      }
    }
  }

  return v6;
}

void sub_2993DB22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2993DB26C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (a2)
    {
      v5 = result;
      result = *(result + 64);
      if (result)
      {
        sub_2992CE99C(result, &v17);
        sub_2992CEA10(*(v5 + 64), &v17, &v15);
        v8 = *(v5 + 64);
        v14[0] = MEMORY[0x29EDCA5F8];
        v14[1] = 0x40000000;
        v14[2] = sub_2993DB3E4;
        v14[3] = &unk_29EF22230;
        v14[4] = a5;
        v14[5] = v5;
        sub_2992CEB38(v8, &v15, 0, a4 >> 1, v5 + 80, v14);
        v9 = v16;
        v16 = 0;
        if (v9)
        {
          v10 = sub_2992A5BE8(v9);
          MEMORY[0x29C29BFB0](v10, 0x20C4093837F09);
        }

        v11 = v15;
        v15 = 0;
        if (v11)
        {
          MEMORY[0x29C29BFB0](v11, 0x1010C40E4C6A875);
        }

        v12 = v18;
        v18 = 0;
        if (v12)
        {
          v13 = sub_2992A5BE8(v12);
          MEMORY[0x29C29BFB0](v13, 0x20C4093837F09);
        }

        result = v17;
        v17 = 0;
        if (result)
        {
          return MEMORY[0x29C29BFB0](result, 0x1010C40E4C6A875);
        }
      }
    }
  }

  return result;
}

void sub_2993DB3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, void);
  sub_2992A5B54(va);
  sub_2992A5B54(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_2993DB3E4(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(result + 40);
    v4 = *(v3 + 64);
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = sub_2993DB46C;
    v5[3] = &unk_29EF22208;
    v5[4] = *(result + 32);
    v5[5] = v3;
    v5[6] = a3;
    return sub_2992CEA88(v4, a2, v5);
  }

  return result;
}

void sub_2993DB46C(void *a1, int a2)
{
  v3 = a1[5];
  v29[0] = 0;
  v29[1] = 0;
  v28 = v29;
  v27 = 0;
  if (sub_2992CC3A0(*(*(v3 + 48) + 40), a2, &v27))
  {
    v21 = 0;
    v22 = 0;
    v23 = v27;
    v24 = 0;
    v25 = &v21;
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    sub_2991C6CA8(__p, off_2A145F348);
    v6 = sub_29920B95C(&v28, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v29 != v6)
    {
      v7 = (*(*v6[7] + 16))(v6[7]);
      if (&v18 != v7)
      {
        sub_299223494(&v18, *v7, v7[1], (v7[1] - *v7) >> 1);
      }
    }

    sub_2991C6CA8(__p, off_2A145F370[0]);
    v8 = sub_29920B95C(&v28, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v29 != v8)
    {
      v9 = (*(*v8[7] + 16))(v8[7]);
      if (&v15 != v9)
      {
        sub_299223494(&v15, *v9, v9[1], (v9[1] - *v9) >> 1);
      }
    }

    if (v19 != v18)
    {
      sub_2991C6CA8(__p, off_2A145F3B8);
      v10 = sub_29920B95C(&v28, __p);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = (*(**(v10 + 56) + 16))(*(v10 + 56));
      sub_2993DE9CC((v3 + 16), v11, &v18, &v15, *(v3 + 40));
      v26 = *(v3 + 16) + v5 - v4;
      v12 = a1[6];
      (*(a1[4] + 16))();
    }

    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }

  sub_299227884(&v28, v29[0]);
}

void sub_2993DB6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  sub_299227884(v20 - 88, *(v20 - 80));
  _Unwind_Resume(a1);
}

uint64_t sub_2993DB770(uint64_t a1, int a2, void *a3, unsigned __int8 *a4, unsigned int a5, unint64_t a6, uint64_t a7, int a8, uint8x8_t a9, uint64_t a10, int a11, unsigned int a12)
{
  v12 = a6;
  v14 = a3;
  v17 = a12;
  result = a2 & 3;
  if ((a2 & 3u) <= 1)
  {
    if ((a2 & 3) == 0)
    {
      return result;
    }

    v20 = (*(a1 + 16) + (a2 - 1));
    v21 = v20[1];
    if (v21)
    {
      if (a6)
      {
        v22 = a4 - a10;
        v23 = *a3;
        v24 = a7 + 24 * *a3;
        if (a12)
        {
          v22 = (a4 - a10) | 0x100;
        }

        *(v24 + 12) = v22;
        *a3 = v23 + 1;
        *(v24 + 8) = v21;
        if (v23 + 1 >= a6)
        {
          return 1;
        }
      }

      else
      {
        ++*a3;
      }
    }

    if (a8 != -1)
    {
      if ((a5 & 1) == 0)
      {
        v35 = *v20;
        if (v35 >= 5)
        {
          v36 = v20 + v35;
          v37 = (v20 + 2);
          v38 = a5 | 1;
          v97 = a4 - a10;
          v98 = v36;
          while (1)
          {
            v40 = v37 + 1;
            v39 = *v37;
            if ((v39 & 1) != 0 && v38 >= v39)
            {
              v41 = *v40;
              if (v41 >= a8)
              {
                if (v41 > a8)
                {
                  return 0;
                }

                v42 = v14;
                v43 = v12;
                v44 = a7;
                v45 = v17;
                if (!v17)
                {
                  a12 = 0;
                }

                v46 = a4;
                v47 = sub_2993DD888((v37 + 2), a4, v39 - 1, a11, &a12);
                a4 = v46;
                a7 = v44;
                v17 = v45;
                v12 = v43;
                v14 = v42;
                v36 = v98;
                if (!v47)
                {
                  if (v12)
                  {
                    v48 = *v42;
                    v49 = a7 + 24 * *v42;
                    *(v49 + 12) = v97 + v39 - 1;
                    v50 = (v49 + 12);
                    if (a12)
                    {
                      *v50 = (v97 + v39 - 1) | 0x100;
                    }

                    v51 = *&v40[v39];
                    *v42 = v48 + 1;
                    *(a7 + 24 * v48 + 8) = v51;
                    if (v48 + 1 >= v12)
                    {
                      return 1;
                    }
                  }

                  else
                  {
                    ++*v42;
                  }
                }
              }
            }

            result = 0;
            v52 = &v40[v39];
            v37 = v52 + 4;
            if (v52 >= v36)
            {
              return result;
            }
          }
        }
      }

      return 0;
    }

    if (a5)
    {
      v53 = *v20;
      if (v53 >= 5)
      {
        v54 = v20 + v53;
        v55 = (v20 + 2);
        v99 = a4 - a10;
        while (1)
        {
          v56 = v55 + 1;
          v57 = *v55;
          if (v57 > a5)
          {
            goto LABEL_48;
          }

          if (a5)
          {
            if ((v57 & 1) == 0)
            {
              goto LABEL_48;
            }

            v67 = *v56;
            v68 = *a4;
            if (v67 < v68)
            {
              goto LABEL_48;
            }

            if (v67 > v68)
            {
              return 0;
            }

            v69 = a7;
            v70 = v17;
            if (!v17)
            {
              a12 = 0;
            }

            v71 = a4;
            v72 = sub_2993DD888((v55 + 2), (a4 + 1), v57 - 1, a11, &a12);
            a4 = v71;
            a7 = v69;
            v17 = v70;
            if (v72)
            {
              goto LABEL_48;
            }

            if (!v12)
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v57)
            {
              goto LABEL_48;
            }

            v59 = a7;
            v60 = v17;
            if (!v17)
            {
              a12 = 0;
            }

            v61 = a4;
            v62 = sub_2993DD888((v55 + 1), a4, v57, a11, &a12);
            a4 = v61;
            a7 = v59;
            v17 = v60;
            if (v62)
            {
              goto LABEL_48;
            }

            if (!v12)
            {
LABEL_67:
              ++*v14;
              goto LABEL_48;
            }
          }

          v63 = *v14;
          v64 = a7 + 24 * *v14;
          *(v64 + 12) = v99 + v57;
          v65 = (v64 + 12);
          if (a12)
          {
            *v65 = (v99 + v57) | 0x100;
          }

          v66 = *&v56[v57];
          *v14 = v63 + 1;
          *(a7 + 24 * v63 + 8) = v66;
          if (v63 + 1 >= v12)
          {
            return 1;
          }

LABEL_48:
          result = 0;
          v58 = &v56[v57];
          v55 = v58 + 4;
          if (v58 >= v54)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

  if (result == 2)
  {
    v25 = (*(a1 + 8) + (a2 - 2));
    v26 = *v25;
    if (*v25)
    {
      if (!a6)
      {
        ++*a3;
        if (!a5)
        {
          return 0;
        }

LABEL_69:
        if (!a4)
        {
          goto LABEL_72;
        }

        if (a5)
        {
          goto LABEL_72;
        }

        v74 = a7;
        v75 = v17;
        v76 = a4;
        v77 = sub_2993C4A54(*a4, a11);
        a4 = v76;
        v78 = v75;
        v79 = v74;
        v80 = a11;
        v81 = a6;
        v82 = a3;
        if (!v77)
        {
LABEL_72:
          v83 = *a4;
          v84 = (v25 + 1);
          v85 = v83 >> 5;
          v86 = v25[(v83 >> 5) + 1];
          if (((v86 >> v83) & 1) == 0)
          {
            return 0;
          }

          v87 = v83 & 0x1F;
          if (v83 >= 0x20)
          {
            v88 = 0;
            do
            {
              v94 = *v84++;
              a9 = vcnt_s8(v94);
              a9.i16[0] = vaddlv_u8(a9);
              v88 += a9.i32[0];
              --v85;
            }

            while (v85);
          }

          else
          {
            v88 = 0;
          }

          a9.i32[0] = v86 & ~(-1 << v87);
          v95 = vcnt_s8(a9);
          v95.i16[0] = vaddlv_u8(v95);
          v96 = v25[v88 + v95.i32[0] + 10];
          return sub_2993DB770(a1) != 0;
        }

        return sub_2993DD9C8(a1, a2, a9, v82, (a4 + 2), a5 - 2, v81, v79, (v77[1] - *v77) >> 1, *v77, a10, v80, v78);
      }

      v27 = a4 - a10;
      v28 = *a3;
      v29 = a7 + 24 * *a3;
      if (a12)
      {
        v27 = (a4 - a10) | 0x100;
      }

      *(v29 + 12) = v27;
      *a3 = v28 + 1;
      *(v29 + 8) = v26;
      if (v28 + 1 >= a6)
      {
        return 1;
      }
    }

    if (!a5)
    {
      return 0;
    }

    goto LABEL_69;
  }

  v30 = (*(a1 + 8) + (a2 - 3));
  v31 = *v30;
  if (!*v30)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    v32 = a4 - a10;
    v33 = *a3;
    v34 = a7 + 24 * *a3;
    if (a12)
    {
      v32 = (a4 - a10) | 0x100;
    }

    *(v34 + 12) = v32;
    *a3 = v33 + 1;
    *(v34 + 8) = v31;
    if (v33 + 1 >= a6)
    {
      return 1;
    }

LABEL_22:
    if (!a5)
    {
      return 0;
    }

    goto LABEL_76;
  }

  ++*a3;
  if (!a5)
  {
    return 0;
  }

LABEL_76:
  if (a4)
  {
    if ((a5 & 1) == 0)
    {
      v90 = a7;
      v91 = v17;
      v92 = a4;
      v77 = sub_2993C4A54(*a4, a11);
      a4 = v92;
      v78 = v91;
      v79 = v90;
      v80 = a11;
      v81 = a6;
      v82 = a3;
      if (v77)
      {
        return sub_2993DD9C8(a1, a2, a9, v82, (a4 + 2), a5 - 2, v81, v79, (v77[1] - *v77) >> 1, *v77, a10, v80, v78);
      }
    }
  }

  v93 = v30[*a4 + 1];
  result = sub_2993DB770(a1);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2993DBD10(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, int a5, int a6, uint64_t a7, uint64_t a8, uint8x8_t a9, _BYTE *a10, void *a11)
{
  v12 = a7;
  v17 = a10;
  v18 = a11;
  v67 = a6;
  result = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (result == 2)
    {
      v32 = (*(a1 + 8) + (a2 - 2));
      if (a4)
      {
        if (!a3 || (a4 & 1) != 0 || (v35 = a3, v36 = sub_2993C4A54(*a3, 14), a3 = v35, v37 = a7, v17 = a10, v38 = a6, !v36))
        {
          v39 = *a3;
          if (((*(v32 + ((v39 >> 3) & 0x1C) + 4) >> v39) & 1) == 0)
          {
            return 0;
          }

          *v17 = v39;
          v40 = *a3;
          if (v40 >= 0x20)
          {
            v41 = 0;
            v61 = v32 + 1;
            v62 = v40 >> 5;
            do
            {
              v63 = *v61++;
              a9 = vcnt_s8(v63);
              a9.i16[0] = vaddlv_u8(a9);
              v41 += a9.i32[0];
              --v62;
            }

            while (v62);
          }

          else
          {
            v41 = 0;
          }

          a9.i32[0] = v32[(v40 >> 5) + 1] & ~(-1 << v40);
          v64 = vcnt_s8(a9);
          v64.i16[0] = vaddlv_u8(v64);
          v65 = v32[v64.i32[0] + v41 + 10];
          return sub_2993DBD10(a1) != 0;
        }

        return sub_2993DDD54(a1, a2, a9, (a3 + 2), a4 - 2, (v36[1] - *v36) >> 1, *v36, v38, v37, a8, v17);
      }
    }

    else
    {
      v32 = (*(a1 + 8) + (a2 - 3));
      if (a4)
      {
        if (!a3 || (a4 & 1) != 0 || (v44 = a3, v36 = sub_2993C4A54(*a3, 14), a3 = v44, v37 = a7, v17 = a10, v38 = a6, !v36))
        {
          v46 = *a3;
          *v17 = v46;
          v47 = v32[v46 + 1];
          result = sub_2993DBD10(a1);
          if (!result)
          {
            return result;
          }

          return 1;
        }

        return sub_2993DDD54(a1, a2, a9, (a3 + 2), a4 - 2, (v36[1] - *v36) >> 1, *v36, v38, v37, a8, v17);
      }
    }

    if (*v32 == a7)
    {
      v45 = &a10[-a8];
      goto LABEL_31;
    }

    return 0;
  }

  v66 = a8;
  if ((a2 & 3) == 0)
  {
    return result;
  }

  v21 = (*(a1 + 16) + (a2 - 1));
  if (a5 != -1)
  {
    if ((a4 & 1) == 0)
    {
      v22 = *v21;
      if (v22 >= 5)
      {
        v23 = v21 + v22;
        v24 = (v21 + 2);
        v25 = a4 | 1;
        while (1)
        {
          v26 = v24 + 1;
          v27 = *v24;
          if (v25 == v27)
          {
            v28 = *v26;
            if (v28 >= a5)
            {
              if (v28 > a5)
              {
                return 0;
              }

              v29 = v12;
              if (!a6)
              {
                v67 = 0;
              }

              v30 = a3;
              v31 = sub_2993DD888((v24 + 2), a3, a4, 14, &v67);
              a3 = v30;
              v12 = v29;
              v18 = a11;
              if (!v31 && *&v26[v27] == v29)
              {
                break;
              }
            }
          }

          result = 0;
          v24 = &v26[v27 + 4];
          if (&v26[v27] >= v23)
          {
            return result;
          }
        }

        memcpy(a10, v24 + 2, a4);
        v45 = &a10[~v66 + v27];
LABEL_31:
        *v18 = v45;
        return 1;
      }
    }

    return 0;
  }

  if (a4)
  {
    v48 = *v21;
    if (v48 >= 5)
    {
      v49 = v21 + v48;
      v50 = (v21 + 2);
      while (1)
      {
        v52 = v50 + 1;
        v51 = *v50;
        if (v51 == a4)
        {
          if (a4)
          {
            v58 = *v52;
            v59 = *a3;
            if (v58 < v59)
            {
              goto LABEL_49;
            }

            if (v58 > v59)
            {
              return 0;
            }

            v53 = v12;
            if (!a6)
            {
              v67 = 0;
            }

            v54 = (v50 + 2);
            v55 = (a3 + 1);
            v56 = a3;
            v57 = a4 - 1;
          }

          else
          {
            v53 = v12;
            if (!a6)
            {
              v67 = 0;
            }

            v54 = (v50 + 1);
            v55 = a3;
            v56 = a3;
            v57 = a4;
          }

          v60 = sub_2993DD888(v54, v55, v57, 14, &v67);
          a3 = v56;
          v12 = v53;
          if (!v60 && *&v52[v51] == v53)
          {
            memcpy(a10, v52, v51);
            v45 = &a10[v51 - v66];
            goto LABEL_31;
          }
        }

LABEL_49:
        result = 0;
        v50 = &v52[v51 + 4];
        if (&v52[v51] >= v49)
        {
          return result;
        }
      }
    }
  }

  else if (v21[1] == a7)
  {
    v45 = &a10[-a8];
    goto LABEL_31;
  }

  return 0;
}

uint64_t sub_2993DC148(uint64_t a1, int a2, unsigned __int8 *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8, uint8x8_t a9, void *a10)
{
  v13 = a5;
  result = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (result == 2)
    {
      v29 = (*(a1 + 8) + (a2 - 2));
      if (!a4)
      {
        if (!a5 || *v29 != a6)
        {
          v37 = 0;
          v38 = v29 + 1;
          v39 = v29 + 10;
          while (1)
          {
            *a8 = v37;
            v40 = v38[v37 >> 5];
            if ((v40 >> v37))
            {
              if (v37 >= 0x20)
              {
                v41 = 0;
                v42 = v37 >> 5;
                v43 = v38;
                do
                {
                  v44 = *v43++;
                  a9 = vcnt_s8(v44);
                  a9.i16[0] = vaddlv_u8(a9);
                  v41 += a9.i32[0];
                  --v42;
                }

                while (v42);
              }

              else
              {
                v41 = 0;
              }

              a9.i32[0] = v40 & ~(-1 << (v37 & 0x1F));
              v45 = vcnt_s8(a9);
              v45.i16[0] = vaddlv_u8(v45);
              if (sub_2993DC148(a1, v39[v41 + v45.i32[0]], a3, 0, 1, a6, a7, a8 + 1, a10))
              {
                break;
              }
            }

            result = 0;
            if (++v37 == 256)
            {
              return result;
            }
          }

          return 1;
        }

        goto LABEL_38;
      }

      v30 = *a3;
      v31 = v29 + 1;
      if (((*(v29 + ((v30 >> 3) & 0x1C) + 4) >> v30) & 1) == 0)
      {
        return 0;
      }

      *a8 = v30;
      v32 = v29 + 10;
      v33 = *a3;
      if (v33 >= 0x20)
      {
        v34 = 0;
        v47 = v31;
        v48 = v33 >> 5;
        do
        {
          v49 = *v47++;
          a9 = vcnt_s8(v49);
          a9.i16[0] = vaddlv_u8(a9);
          v34 += a9.i32[0];
          --v48;
        }

        while (v48);
      }

      else
      {
        v34 = 0;
      }

      a9.i32[0] = v31[v33 >> 5] & ~(-1 << v33);
      v50 = vcnt_s8(a9);
      v50.i16[0] = vaddlv_u8(v50);
      result = sub_2993DC148(a1, v32[v50.i32[0] + v34], a3 + 1, a4 - 1, a5, a6, a7, a8 + 1, a10);
    }

    else
    {
      v35 = (*(a1 + 8) + (a2 - 3));
      if (!a4)
      {
        if (!a5 || *v35 != a6)
        {
          v51 = 0;
          v52 = v35 + 1;
          while (1)
          {
            *a8 = v51;
            result = sub_2993DC148(a1, v52[v51], a3, 0, 1, a6, a7, a8 + 1, a10);
            if (result)
            {
              break;
            }

            if (++v51 == 256)
            {
              return result;
            }
          }

          return 1;
        }

        goto LABEL_38;
      }

      v36 = *a3;
      *a8 = v36;
      result = sub_2993DC148(a1, v35[v36 + 1], a3 + 1, a4 - 1, a5, a6, a7, a8 + 1, a10);
    }

    if (!result)
    {
      return result;
    }

    return 1;
  }

  if ((a2 & 3) == 0)
  {
    return result;
  }

  v18 = (*(a1 + 16) + (a2 - 1));
  if (a4 || !a5 || v18[1] != a6)
  {
    v19 = *v18;
    if (v19 >= 5)
    {
      v20 = v18 + v19;
      v21 = (v18 + 2);
      while (1)
      {
        v24 = *v21;
        v22 = v21 + 1;
        v23 = v24;
        v25 = v24 >= a4;
        v26 = v24 > a4;
        if (!v13)
        {
          v25 = v26;
        }

        if (v25)
        {
          v27 = memcmp(v22, a3, a4);
          if (v27 > 0)
          {
            return 0;
          }

          if (!v27 && *&v22[v23] == a6)
          {
            break;
          }
        }

        v28 = &v22[v23];
        v21 = &v22[v23 + 4];
        if (v28 >= v20)
        {
          return 0;
        }
      }

      memcpy(a8, v22, v23);
      v46 = &a8[v23 - a7];
      goto LABEL_39;
    }

    return 0;
  }

LABEL_38:
  v46 = &a8[-a7];
LABEL_39:
  *a10 = v46;
  return 1;
}

uint64_t sub_2993DC4C0(int *a1, unsigned __int16 *a2, unsigned int a3, unsigned int a4, _BYTE *a5, uint8x8_t a6)
{
  v7 = 0;
  sub_2993DC510(a1, *a1, a2, a3, 0, -1, 0, a4, a6, a5, a5, &v7, a2);
  return v7;
}

uint64_t sub_2993DC510(uint64_t a1, int a2, unsigned __int16 *a3, unsigned int a4, int a5, int a6, int a7, unsigned int a8, uint8x8_t a9, uint64_t a10, _BYTE *a11, void *a12, uint64_t a13)
{
  v74 = a7;
  v18 = a2 & 3;
  if ((a2 & 3u) > 1)
  {
    if (v18 == 2)
    {
      v28 = (*(a1 + 8) + (a2 - 2));
      if (a4)
      {
        if (a3)
        {
          if ((a4 & 1) == 0)
          {
            v29 = sub_2993C4A54(*a3, 14);
            if (v29)
            {
              v30 = *v29;
              v31 = (v29[1] - *v29) >> 1;

              return sub_2993DE0F8(a1, a2, a9, (a3 + 1), a4 - 2, v31, v30, a7, a8, a10, a11);
            }
          }
        }

        v36 = *a3;
        *a11 = v36;
        v37 = v28 + 1;
        v38 = v36 >> 5;
        v39 = v28[(v36 >> 5) + 1];
        if (((v39 >> v36) & 1) == 0)
        {
          return 0;
        }

        v40 = v36 & 0x1F;
        if (v36 >= 0x20)
        {
          v41 = 0;
          do
          {
            v68 = *v37++;
            a9 = vcnt_s8(v68);
            a9.i16[0] = vaddlv_u8(a9);
            v41 += a9.i32[0];
            --v38;
          }

          while (v38);
        }

        else
        {
          v41 = 0;
        }

        a9.i32[0] = v39 & ~(-1 << v40);
        v69 = vcnt_s8(a9);
        v69.i16[0] = vaddlv_u8(v69);
        v70 = v28[v41 + v69.i32[0] + 10];
        v44 = a1;
        return sub_2993DC510(v44) != 0;
      }

      if (!a5 || *v28 != a8)
      {
        v45 = 0;
        v18 = 1;
        do
        {
          *a11 = v45;
          v46 = v28[(v45 >> 5) + 1];
          if ((v46 >> v45))
          {
            if (v45 >= 0x20)
            {
              v47 = 0;
              v48 = v45 >> 5;
              v49 = v28 + 1;
              do
              {
                v50 = *v49++;
                a9 = vcnt_s8(v50);
                a9.i16[0] = vaddlv_u8(a9);
                v47 += a9.i32[0];
                --v48;
              }

              while (v48);
            }

            else
            {
              v47 = 0;
            }

            a9.i32[0] = v46 & ~(-1 << (v45 & 0x1F));
            v51 = vcnt_s8(a9);
            v51.i16[0] = vaddlv_u8(v51);
            v52 = v28[v47 + v51.i32[0] + 10];
            if (sub_2993DC510(a1))
            {
              return v18;
            }
          }

          ++v45;
        }

        while (v45 != 256);
        return 0;
      }
    }

    else
    {
      v33 = (*(a1 + 8) + (a2 - 3));
      if (a4)
      {
        if (a3)
        {
          if ((a4 & 1) == 0)
          {
            v34 = sub_2993C4A54(*a3, 14);
            if (v34)
            {
              return sub_2993DE0F8(a1, a2, v35, (a3 + 1), a4 - 2, (v34[1] - *v34) >> 1, *v34, a7, a8, a10, a11);
            }
          }
        }

        v42 = *a3;
        *a11 = v42;
        v43 = v33[v42 + 1];
        v44 = a1;
        return sub_2993DC510(v44) != 0;
      }

      if (!a5 || *v33 != a8)
      {
        v65 = 0;
        v66 = v33 + 1;
        do
        {
          *a11 = v65;
          v67 = v66[v65];
          v18 = 1;
          if (sub_2993DC510(a1))
          {
            break;
          }

          v18 = 0;
          ++v65;
        }

        while (v65 != 256);
        return v18;
      }
    }

LABEL_54:
    v53 = &a11[-a10];
    goto LABEL_55;
  }

  if ((a2 & 3) == 0)
  {
    return v18;
  }

  v20 = (*(a1 + 16) + (a2 - 1));
  if (!a4 && a5 && v20[1] == a8)
  {
    goto LABEL_54;
  }

  if (a6 == -1)
  {
    v54 = *v20;
    if (v54 >= 5)
    {
      v55 = v20 + v54;
      v56 = (v20 + 2);
      if (a3 - a13 >= 0)
      {
        v57 = (a3 - a13) & 1;
      }

      else
      {
        v57 = -((a3 - a13) & 1);
      }

      do
      {
        v59 = v56 + 1;
        v58 = *v56;
        if (a5)
        {
          if (v58 < a4)
          {
            goto LABEL_80;
          }
        }

        else if (v58 <= a4)
        {
          goto LABEL_80;
        }

        if (a4)
        {
          if (v58)
          {
            v60 = *v59;
            v61 = *a3;
            if (v60 >= v61)
            {
              if (v60 > v61)
              {
                return 0;
              }

              if (!a7)
              {
                v74 = 0;
              }

              v62 = (v56 + 2);
              v63 = a3 + 1;
              v64 = a4 - 1;
              goto LABEL_78;
            }
          }
        }

        else if (a4)
        {
          if ((v58 & 1) == 0)
          {
            goto LABEL_75;
          }
        }

        else if (v57 == (v58 & 1))
        {
LABEL_75:
          if (!a7)
          {
            v74 = 0;
          }

          v62 = (v56 + 1);
          v63 = a3;
          v64 = a4;
LABEL_78:
          if (!sub_2993DD888(v62, v63, v64, 14, &v74) && *&v59[v58] == a8)
          {
            memcpy(a11, v59, v58);
            v53 = &a11[v58 - a10];
            goto LABEL_55;
          }
        }

LABEL_80:
        v56 = &v59[v58 + 4];
      }

      while (&v59[v58] < v55);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  v21 = *v20;
  if (v21 < 5)
  {
    return 0;
  }

  v22 = v20 + v21;
  v23 = (v20 + 2);
  v71 = a4 | 1;
  while (1)
  {
    v24 = v23 + 1;
    v25 = *v23;
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }

    if (!a5)
    {
      break;
    }

    if (v25 > a4)
    {
      goto LABEL_13;
    }

LABEL_19:
    v18 = 0;
    v27 = &v24[v25];
    v23 = v27 + 4;
    if (v27 >= v22)
    {
      return v18;
    }
  }

  if (v71 >= v25)
  {
    goto LABEL_19;
  }

LABEL_13:
  v26 = *v24;
  if (v26 < a6)
  {
    goto LABEL_19;
  }

  if (v26 > a6)
  {
    return 0;
  }

  if (!a7)
  {
    v74 = 0;
  }

  if (sub_2993DD888((v23 + 2), a3, a4, 14, &v74) || *&v24[v25] != a8)
  {
    goto LABEL_19;
  }

  memcpy(a11, v23 + 2, (v25 - 1));
  v53 = &a11[~a10 + v25];
LABEL_55:
  *a12 = v53;
  return 1;
}

uint64_t sub_2993DCAD8(int *a1, char *a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, uint64_t a7, uint8x8_t a8)
{
  v30 = *MEMORY[0x29EDCA608];
  v21 = 0;
  v22 = a4;
  if (!sub_2993221DC(a1, *a1, a2, a3, &v22, a5, &v21, a7, a8, 0, a2) && a6 != 0 && a2 != 0 && a3 != 0)
  {
    v19 = sub_299217570(a2, a3 >> 1);
    v20 = 2 * v19;
    if (2 * v19)
    {
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      v25 = 0u;
      v26 = 0;
      v23[0] = a1;
      v23[1] = 0;
      v23[2] = 0;
      v23[3] = a2;
      v23[4] = a3;
      v23[5] = a5;
      v24 = a7;
      LODWORD(v25) = 2;
      v27 = v28 + (a3 - v20) + 2;
      LOBYTE(v28[0]) = 1;
      BYTE1(v28[0]) = a3 != v20;
      sub_2993DCC50(v23, *a1, a2, a3 - v20, &a2[(a3 - v20)], v20, 0, 0, 0.0, &v21, 0, 0);
    }
  }

  result = v21;
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2993DCC50(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, unsigned __int16 *a7, unsigned int a8, double a9, uint64_t *a10, BOOL a11, int a12)
{
  v15 = *&a9;
  v118 = a11;
  v123 = *MEMORY[0x29EDCA608];
  v18 = a2 & 3;
  if ((a2 & 2) == 0)
  {
    if (v18 == 1)
    {
      v19 = (*(*a1 + 16) + (a2 - 1));
      v20 = a6 | a4 | a8;
      v21 = *(a1 + 64);
      if (a4 < 2)
      {
        v25 = 0;
      }

      else
      {
        v22 = 16;
        v23 = &word_29945DA3A;
        while (*v23 != *a3)
        {
          ++v23;
          v22 -= 2;
          if (!v22)
          {
            v23 = &unk_29945DA4A;
            break;
          }
        }

        v24 = v23 != &unk_29945DA4A;
        if (v23 == &unk_29945DA4A)
        {
          v23 = 0;
        }

        v25 = v23 - &word_29945DA3A != -2 && v24;
      }

      if (v20 && (v21 != 1 || v25))
      {
        goto LABEL_44;
      }

      v56 = v19[1];
      if (a12)
      {
        v57 = 0;
      }

      else
      {
        v57 = v21 == 2;
      }

      v58 = !v57;
      if (v56 && v58)
      {
        if (*(a1 + 40))
        {
          v59 = 0.0;
          if ((a11 & *(a1 + 81)) != 0)
          {
            v59 = v15;
          }

          v60 = *a10;
          v61 = *(a1 + 48) + 24 * *a10;
          *(v61 + 12) = *(a1 + 88) - a1 + *(a1 + 72) - 98;
          *(v61 + 1) = a11;
          *v61 = *(a1 + 82);
          *(v61 + 4) = v59;
          *(v61 + 8) = v56;
          *a10 = v60 + 1;
          if ((v60 + 1) >= *(a1 + 40))
          {
            goto LABEL_162;
          }
        }

        else
        {
          ++*a10;
        }
      }

      if (v20 || v21 == 2)
      {
LABEL_44:
        v39 = *v19;
        if (v39 >= 5)
        {
          __srca = a6;
          v41 = v19 + v39;
          v42 = (v19 + 2);
          v112 = a1 + 98;
          while (1)
          {
            v45 = *v42;
            v44 = v42 + 1;
            v43 = v45;
            if (v45 >= a4 && (!a4 || !memcmp(v44, a3, a4)))
            {
              v46 = *(a1 + 88);
              v47 = *(a1 + 72);
              v122[0] = v15;
              LOBYTE(v121[0]) = a11;
              if (sub_2993DE4C4(a1, &v44[a4], (v43 - a4), a5, __srca, a7, a8, *(a1 + 56), v121, a12, v122))
              {
                if (*(a1 + 40))
                {
                  v48 = *&v44[v43];
                  v49 = v122[0];
                  v50 = v121[0];
                  if (((LOBYTE(v121[0]) != 0) & *(a1 + 81)) == 0)
                  {
                    v49 = 0.0;
                  }

                  v51 = *a10;
                  v52 = *(a1 + 48) + 24 * *a10;
                  v53 = *(a1 + 72);
                  v54 = (*(a1 + 88) - v112 + v53);
                  *(v52 + 12) = *(a1 + 88) - v112 + v53;
                  *(v52 + 1) = v50;
                  *v52 = *(a1 + 82);
                  *(v52 + 4) = v49;
                  *(v52 + 8) = v48;
                  *a10 = v51 + 1;
                  if ((v51 + 1) >= *(a1 + 40))
                  {
                    goto LABEL_162;
                  }
                }

                else
                {
                  ++*a10;
                }
              }

              *(a1 + 72) = v47;
              *(a1 + 88) = v46;
            }

            v55 = &v44[v43];
            v42 = &v44[v43 + 4];
            if (v55 >= v41)
            {
              goto LABEL_163;
            }
          }
        }

        goto LABEL_163;
      }
    }

    goto LABEL_163;
  }

  v26 = *(*a1 + 8);
  v27 = (v26 + (a2 & 0xFFFFFFFC));
  if (v18 == 3)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26 + (a2 & 0xFFFFFFFC);
  }

  if (v18 == 3)
  {
    v29 = v26 + (a2 & 0xFFFFFFFC);
  }

  else
  {
    v29 = 0;
  }

  v30 = *v27;
  v31 = *(a1 + 64);
  if (v31 == 2)
  {
    if (a6 | a4 | a8)
    {
      goto LABEL_99;
    }

    if (a12 && v30)
    {
      if (*(a1 + 40))
      {
        a9 = 0.0;
        if ((a11 & *(a1 + 81)) != 0)
        {
          *&a9 = v15;
        }

        v62 = *a10;
        v63 = *(a1 + 48) + 24 * *a10;
        *(v63 + 12) = *(a1 + 88) - a1 + *(a1 + 72) - 98;
        *(v63 + 1) = a11;
        *v63 = *(a1 + 82);
        *(v63 + 4) = LODWORD(a9);
        *(v63 + 8) = v30;
        *a10 = v62 + 1;
        if ((v62 + 1) >= *(a1 + 40))
        {
          goto LABEL_162;
        }
      }

      else
      {
        ++*a10;
      }
    }

    if (*(a1 + 97) != 1)
    {
      goto LABEL_99;
    }

    v64 = 0;
    v65 = (v28 + 4);
    v111 = v28 + 40;
    v113 = v29 + 4;
    v66 = *(a1 + 72) + 1;
    while (1)
    {
      *(a1 + 72) = v66;
      if (v18 == 3)
      {
        break;
      }

      v68 = v65[v64 >> 5];
      if ((v68 >> v64))
      {
        if (v64 >= 0x20)
        {
          v69 = 0;
          v70 = v64 >> 5;
          v71 = v65;
          do
          {
            v72 = *v71++;
            a9 = COERCE_DOUBLE(vcnt_s8(v72));
            LOWORD(a9) = vaddlv_u8(*&a9);
            v69 += LODWORD(a9);
            --v70;
          }

          while (v70);
        }

        else
        {
          v69 = 0;
        }

        LODWORD(a9) = v68 & ~(-1 << (v64 & 0x1F));
        v73 = vcnt_s8(*&a9);
        v73.i16[0] = vaddlv_u8(v73);
        v67 = *(v111 + 4 * (v69 + v73.i32[0]));
LABEL_97:
        v74 = 1;
        HIDWORD(v110) = 1;
        LOBYTE(v110) = a11;
        if (sub_2993DCC50(a1, v67, a3, 0, a5, 0, a7, 0, v15, a10, v110))
        {
          goto LABEL_164;
        }
      }

      v66 = *(a1 + 72);
      *(a1 + 72) = v66 - 1;
      if (++v64 == 256)
      {
        goto LABEL_99;
      }
    }

    v67 = *(v113 + 4 * v64);
    goto LABEL_97;
  }

  if (v31 == 1)
  {
    if (!a4 && v30)
    {
      if (!a6 || a6 <= 3 && (v35 = *(a1 + 88) - (a1 + 98), v35 >= 2) && (v35 & 0x8000000000000001) != 1 && *(a1 + 98 + (v35 & 0xFFFFFFFFFFFFFFFELL) - 2) == *a5)
      {
        if (*(a1 + 40))
        {
          v36 = 0.0;
          if ((a11 & *(a1 + 81)) != 0)
          {
            v36 = v15;
          }

          v37 = *a10;
          v38 = *(a1 + 48) + 24 * *a10;
          *(v38 + 12) = *(a1 + 88) - a1 + *(a1 + 72) - 98;
          *(v38 + 1) = a11;
          *v38 = *(a1 + 82);
          *(v38 + 4) = v36;
          *(v38 + 8) = v30;
          *a10 = v37 + 1;
          if ((v37 + 1) >= *(a1 + 40))
          {
            goto LABEL_162;
          }
        }

        else
        {
          ++*a10;
        }
      }

      goto LABEL_102;
    }
  }

  else if (!v31 && !(a6 | a4 | a8))
  {
    if (v30)
    {
      if (*(a1 + 40))
      {
        v32 = 0.0;
        if ((a11 & *(a1 + 81)) != 0)
        {
          v32 = v15;
        }

        v33 = *a10;
        v34 = *(a1 + 48) + 24 * *a10;
        *(v34 + 12) = *(a1 + 88) - a1 + *(a1 + 72) - 98;
        *(v34 + 1) = a11;
        *v34 = *(a1 + 82);
        *(v34 + 4) = v32;
        *(v34 + 8) = v30;
        *a10 = v33 + 1;
        if ((v33 + 1) >= *(a1 + 40))
        {
          goto LABEL_162;
        }
      }

      else
      {
        ++*a10;
      }
    }

    goto LABEL_163;
  }

LABEL_99:
  if (a4)
  {
    if (v18 == 3)
    {
      HIDWORD(v110) = a12;
      LOBYTE(v110) = a11;
      v75 = sub_2993DCC50(a1, v27[*a3 + 1], a3 + 1, a4 - 1, a5, a6, a7, a8, v15, a10, v110);
    }

    else
    {
      v80 = *a3;
      v81 = (v27 + 1);
      v82 = v80 >> 5;
      v83 = v27[(v80 >> 5) + 1];
      if (((v83 >> v80) & 1) == 0)
      {
        goto LABEL_163;
      }

      v84 = v80 & 0x1F;
      if (v80 >= 0x20)
      {
        v85 = 0;
        v86 = a5;
        do
        {
          v106 = *v81++;
          a9 = COERCE_DOUBLE(vcnt_s8(v106));
          LOWORD(a9) = vaddlv_u8(*&a9);
          v85 += LODWORD(a9);
          --v82;
        }

        while (v82);
      }

      else
      {
        v85 = 0;
        v86 = a5;
      }

      LODWORD(a9) = v83 & ~(-1 << v84);
      v107 = vcnt_s8(*&a9);
      v107.i16[0] = vaddlv_u8(v107);
      HIDWORD(v110) = a12;
      LOBYTE(v110) = a11;
      v75 = sub_2993DCC50(a1, v27[v85 + v107.i32[0] + 10], a3 + 1, a4 - 1, v86, a6, a7, a8, v15, a10, v110);
    }

    if (v75)
    {
LABEL_162:
      v74 = 1;
      goto LABEL_164;
    }

LABEL_163:
    v74 = 0;
    goto LABEL_164;
  }

LABEL_102:
  if (a8)
  {
    if (*(a1 + 81) != 1 || (v76 = a7 - *(a1 + 24), (v76 & 1) != 0) || (v77 = *(a1 + 32), (v77 & 1) != 0) || v77 < 2 || (v78 = *(a1 + 56), (v78 & 1) != 0) || (v79 = sub_299254EB8(*(a1 + 8), *(a1 + 16), v15, (v76 >> 1) + 1, ((v76 & 0xFFFFFFFE) + v78) >> 1, (v78 + v77) >> 1, v122, 0xEuLL)) == 0)
    {
      LOWORD(v122[0]) = *a7;
      v122[1] = v15;
      v79 = 1;
    }

    else
    {
      if (LOWORD(v122[0]) != *a7)
      {
        LOWORD(v122[0]) = *a7;
      }

      if (v79 < 1)
      {
        goto LABEL_163;
      }
    }

    v87 = v79;
    v88 = 1;
    v89 = v122;
    v90 = v79;
    v91 = 1;
    while (1)
    {
      if (!v118)
      {
        v118 = *v89 != *a7;
      }

      v119 = 0;
      v120 = 0;
      if (*(a1 + 80) == 1 && (*(a1 + 96) & 1) == 0)
      {
        break;
      }

      if (a8 >= 4)
      {
        sub_2993DE948(a7, *(a1 + 24), *(a1 + 56), *v89, *(a1 + 16));
      }

      if (!*(a1 + 8) && !*(a1 + 16) || *(a1 + 82) && (*(a1 + 80) != 1 || (*(a1 + 96) & 1) == 0))
      {
        v121[0] = *v89;
        v119 = 0;
        v120 = 0;
LABEL_136:
        v95 = *(a1 + 88);
        v93 = 2;
LABEL_137:
        memcpy(v95, a5, a6);
        v96 = (*(a1 + 88) + a6);
        *(a1 + 88) = v96;
        v94 = v119;
        if (!v119)
        {
          *v96 = *v89;
          *(a1 + 88) += 2;
          v94 = v119;
        }

        goto LABEL_139;
      }

      v92 = sub_299216378(v118, a5, a6, *v89, v121, 16, &v120, &v119);
      v93 = v92;
      if (v92 == -2)
      {
        goto LABEL_141;
      }

      if (v92 == -1)
      {
        goto LABEL_157;
      }

      v94 = v119;
      if (v119 > 7)
      {
        goto LABEL_141;
      }

      v95 = *(a1 + 88);
      if (v92)
      {
        goto LABEL_137;
      }

LABEL_139:
      HIDWORD(v110) = a12;
      LOBYTE(v110) = v118;
      if (sub_2993DCC50(a1, a2, v121, v93, v120, v94, a7 + 1, a8 - 2, v89[1], a10, v110))
      {
LABEL_157:
        v74 = v91;
        goto LABEL_164;
      }

      *(a1 + 88) = v95;
LABEL_141:
      v91 = v88++ < v87;
      v89 += 2;
      if (!--v90)
      {
        goto LABEL_163;
      }
    }

    v121[0] = *v89;
    v119 = 0;
    goto LABEL_136;
  }

  if (!a6)
  {
    goto LABEL_163;
  }

  if (*(a1 + 96) != 1)
  {
    goto LABEL_163;
  }

  v97 = *(a1 + 88);
  v98 = sub_299216BF4(a5, a6);
  if (!v98)
  {
    goto LABEL_163;
  }

  v99 = v98;
  memcpy(*(a1 + 88), a5, a6);
  *(a1 + 88) += a6;
  if (*(a1 + 32) == a6 && *(a1 + 64) == 2)
  {
    *(a1 + 97) = 0;
  }

  v100 = *v99;
  if (v99[1] == *v99)
  {
LABEL_156:
    *(a1 + 88) = v97;
    goto LABEL_163;
  }

  v101 = 0;
  v102 = 0;
  v74 = 1;
  while (1)
  {
    v103 = &v100[v101];
    v104 = *(v103 + 23);
    if (v104 < 0)
    {
      v105 = *v103;
      v104 = v103[1];
    }

    else
    {
      v105 = v103;
    }

    HIDWORD(v110) = 1;
    LOBYTE(v110) = a11;
    if (sub_2993DCC50(a1, a2, v105, v104, 0, 0, a7, 0, v15, a10, v110))
    {
      break;
    }

    ++v102;
    v100 = *v99;
    v101 += 24;
    if (v102 >= 0xAAAAAAAAAAAAAAABLL * ((v99[1] - *v99) >> 3))
    {
      goto LABEL_156;
    }
  }

LABEL_164:
  v108 = *MEMORY[0x29EDCA608];
  return v74;
}

uint64_t sub_2993DD7C4(unsigned int *a1, uint64_t a2)
{
  v5 = 0;
  *(a2 + 82) = 1;
  *(a2 + 72) = 0;
  if (!sub_2993DCC50(a2, *a1, 0, 0, 0, 0, *(a2 + 24), *(a2 + 32), 0.0, &v5, 0, 0) && (*(a2 + 80) & 1) == 0)
  {
    *(a2 + 82) = 0;
    *(a2 + 72) = 0;
    sub_2993DCC50(a2, *a1, 0, 0, 0, 0, *(a2 + 24), *(a2 + 32), 0.0, &v5, 0, 0);
  }

  return v5;
}

uint64_t sub_2993DD888(uint64_t a1, uint64_t a2, int a3, int a4, _DWORD *a5)
{
  if (a3 < 1)
  {
    return 0;
  }

  v10 = 0;
  while (1)
  {
    if (a2)
    {
      if (((a3 - v10) & 1) == 0)
      {
        v11 = sub_2993C4A54(*(a2 + v10), a4);
        if (v11)
        {
          break;
        }
      }
    }

    v16 = *(a1 + v10);
    v17 = *(a2 + v10);
    if (v16 < v17)
    {
      return 0xFFFFFFFFLL;
    }

    if (v16 > v17)
    {
      return 1;
    }

LABEL_13:
    if (++v10 >= a3)
    {
      return 0;
    }
  }

  v12 = v11[1] - *v11;
  if ((v12 >> 1) >= 1)
  {
    v13 = 0;
    v14 = *(a1 + v10);
    v15 = v12 >> 1;
    while (v14 != *(*v11 + 2 * v13))
    {
      if (v15 == ++v13)
      {
        goto LABEL_21;
      }
    }

    if (v13 && !*a5)
    {
      *a5 = 1;
    }

    ++v10;
    goto LABEL_13;
  }

  LOBYTE(v14) = *(a1 + v10);
LABEL_21:
  v19 = *(a2 + v10);
  if (v19 > v14)
  {
    return 0xFFFFFFFFLL;
  }

  if (v19 < v14)
  {
    return 1;
  }

  if (*(a1 + v10 + 1) < *(a2 + v10 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}