uint64_t sub_298B8434C(uint64_t a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = **(a1 + 8);
  v5 = *(a1 + 16);
  v31 = *v5;
  v32 = *(v5 + 8);
  v33 = v4;
  v6 = sub_298BA724C(v31, v32);
  if ((sub_298B83E24(a2 + 32, v31, v32, v6, &v33) & 1) == 0)
  {
    v20 = sub_298B9CEA8();
    v21 = sub_298B82DCC(v20, v3);
    v22 = sub_298B00584(v21, ": CommandLine Error: Option '");
    v23 = sub_298B63DC4(v22, *(v4 + 16), *(v4 + 24));
    sub_298B00584(v23, "' registered more than once!\n");
    sub_298B868A8("inconsistency in registered CommandLine options", 1);
  }

  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  result = sub_298BA724C(v7, v8);
  v10 = a2[34];
  if (v10)
  {
    v11 = v10 - 1;
    v12 = (v10 - 1) & result;
    v13 = *(a2 + 16);
    v14 = v13 + 8 * v10 + 8;
    if (v8)
    {
      v15 = a2[37];
      v16 = 1;
      v17 = *(v13 + 8 * v12);
      if (!v17)
      {
        return result;
      }

      while (1)
      {
        if (v17 != -8 && *(v14 + 4 * v12) == result && v8 == *v17)
        {
          v29 = result;
          v30 = v12;
          v27 = v14;
          v28 = v15;
          v26 = v16;
          v24 = memcmp(v7, v17 + v15, v8);
          v16 = v26;
          v14 = v27;
          v15 = v28;
          v25 = v24;
          result = v29;
          v12 = v30;
          if (!v25)
          {
            break;
          }
        }

        v12 = (v12 + v16++) & v11;
        v17 = *(v13 + 8 * v12);
        if (!v17)
        {
          return result;
        }
      }
    }

    else
    {
      v18 = 1;
      v19 = *(v13 + 8 * v12);
      if (!v19)
      {
        return result;
      }

      while (v19 == -8 || *(v14 + 4 * v12) != result || *v19)
      {
        v12 = (v12 + v18++) & v11;
        v19 = *(v13 + 8 * v12);
        if (!v19)
        {
          return result;
        }
      }

      v30 = v12;
    }

    if (v30 != -1 && v30 != v10)
    {
      sub_298B9671C(a2 + 16, *(v13 + 8 * v30));

      JUMPOUT(0x29C2945E0);
    }
  }

  return result;
}

uint64_t sub_298B84850(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 280);
    if (v2 != *(v1 + 272))
    {
      free(v2);
    }

    v3 = *(v1 + 120);
    if (v3 != *(v1 + 112))
    {
      free(v3);
    }

    v4 = *(v1 + 64);
    if (v4 != (v1 + 80))
    {
      free(v4);
    }

    v5 = *(v1 + 40);
    if (v5)
    {
      *(v1 + 48) = v5;
      operator delete(v5);
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B84964(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 140))
    {
      v2 = *(result + 136);
      if (v2)
      {
        v3 = 0;
        v4 = 8 * v2;
        do
        {
          v5 = *(*(v1 + 128) + v3);
          if (v5 != -8 && v5 != 0)
          {
            MEMORY[0x29C2945E0]();
          }

          v3 += 8;
        }

        while (v4 != v3);
      }
    }

    free(*(v1 + 128));
    v7 = *(v1 + 80);
    if (v7 != (v1 + 96))
    {
      free(v7);
    }

    v8 = *(v1 + 32);
    if (v8 != (v1 + 48))
    {
      free(v8);
    }

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

uint64_t sub_298B84A30(unsigned __int8 **a1, unsigned __int8 *a2)
{
  for (i = *a1; i != a2; *a1 = i)
  {
    v3 = *i;
    v4 = byte_298D1AA47[*i];
    if (a2 - i <= v4)
    {
      return 0;
    }

    v5 = i;
    v6 = 0;
    v7 = v4 + 1;
    i += v4 + 1;
    if (v4 > 1u)
    {
      if (v4 != 2)
      {
        if (v4 != 3)
        {
          return v6;
        }

        if (v5[v4] > -65)
        {
          return 0;
        }

        v7 = 3;
      }

      v9 = &v5[v7];
      v10 = *(v9 - 1);
      v8 = v9 - 1;
      if (v10 > -65)
      {
        return 0;
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_25;
      }

      v8 = i;
      if (v4 != 1)
      {
        return v6;
      }
    }

    if (*(v8 - 1) > -65)
    {
      return 0;
    }

    v11 = *(v8 - 1);
    if (v3 > 239)
    {
      if (v3 == 240)
      {
        if (v11 < 0x90)
        {
          return 0;
        }
      }

      else
      {
        if (v3 != 244)
        {
LABEL_25:
          v6 = 0;
          if (v3 < -62 || v3 > 0xF4)
          {
            return v6;
          }

          continue;
        }

        if (v11 > 0x8F)
        {
          return 0;
        }
      }
    }

    else if (v3 == 224)
    {
      if (v11 < 0xA0)
      {
        return 0;
      }
    }

    else
    {
      if (v3 != 237)
      {
        goto LABEL_25;
      }

      if (v11 > 0x9F)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_298B84B58(unint64_t *a1, unsigned __int8 *a2, unsigned int **a3, unint64_t a4, int a5, int a6)
{
  v6 = *a1;
  v7 = *a3;
  if (*a1 >= a2)
  {
    *a1 = v6;
    *a3 = v7;
    return 0;
  }

  v8 = 0;
  if (a5)
  {
    v9 = a6 == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = !v9;
  while (1)
  {
    while (1)
    {
      v11 = *v6;
      v12 = byte_298D1AA47[*v6];
      if (a2 - v6 > v12)
      {
        break;
      }

      if (v10)
      {
        *a1 = v6;
        *a3 = v7;
        return 1;
      }

LABEL_50:
      if (v6 == a2)
      {
        v26 = 0;
        goto LABEL_69;
      }

      if (v11 - 194 < 0x1E || v6 + 1 == a2)
      {
        goto LABEL_56;
      }

      v27 = v6[1];
      if (v11 == 224)
      {
        if ((v27 & 0xE0) == 0xA0)
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }

        goto LABEL_69;
      }

      if (v11 - 225 <= 0xB)
      {
        goto LABEL_63;
      }

      if (v11 == 237)
      {
        v28 = v27 < -96;
LABEL_66:
        if (v28)
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }

        goto LABEL_69;
      }

      if ((v11 & 0xFE) == 0xEE)
      {
LABEL_63:
        v28 = v27 < -64;
        goto LABEL_66;
      }

      v29 = (v6 + 2);
      if (v11 == 240)
      {
        if ((v27 - 144) <= 0x2F)
        {
          goto LABEL_80;
        }

LABEL_56:
        v26 = 1;
        goto LABEL_69;
      }

      if (v11 - 241 <= 2)
      {
        if (v27 <= -65)
        {
          goto LABEL_80;
        }

        goto LABEL_56;
      }

      if (v11 != 244)
      {
        goto LABEL_56;
      }

      v30 = v27;
      v26 = 1;
      if (v30 <= -113)
      {
LABEL_80:
        if (v29 == a2)
        {
          v26 = 2;
        }

        else if (*v29 >= -64)
        {
          v26 = 2;
        }

        else
        {
          v26 = 3;
        }
      }

LABEL_69:
      v6 += v26;
      v8 = 3;
      *v7++ = 65533;
      if (v6 >= a2)
      {
        goto LABEL_86;
      }
    }

    if (v7 >= a4)
    {
      *a1 = v6;
      *a3 = v7;
      return 2;
    }

    v13 = byte_298D1AA47[*v6];
    v14 = v12 + 1;
    if (v13 > 1)
    {
      break;
    }

    if (!byte_298D1AA47[*v6])
    {
      goto LABEL_30;
    }

    v15 = &v6[v14];
LABEL_20:
    v18 = *(v15 - 1);
    if (v18 > -65)
    {
      goto LABEL_49;
    }

    if (*v6 > 0xEFu)
    {
      if (v11 == 240)
      {
        if (v18 < 0x90u)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v11 != 244)
        {
LABEL_30:
          if (v11 < -62 || v11 >= 0xF5)
          {
            goto LABEL_49;
          }

          goto LABEL_32;
        }

        if (v18 > 0x8Fu)
        {
          goto LABEL_49;
        }
      }
    }

    else if (v11 == 224)
    {
      if (v18 < 0xA0u)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v11 != 237)
      {
        goto LABEL_30;
      }

      if (v18 > 0x9Fu)
      {
        goto LABEL_49;
      }
    }

LABEL_32:
    v19 = 0;
    if (byte_298D1AA47[*v6] > 1u)
    {
      if (v13 != 2)
      {
        v19 = v11 << 6;
        v21 = *++v6;
        v11 = v21;
      }

      v22 = *++v6;
      v19 = (v19 + v11) << 6;
      v11 = v22;
LABEL_40:
      v23 = v6[1];
      v6 += 2;
      v20 = ((v19 + v11) << 6) + v23 - dword_298D1AB48[v12];
      if (v20 >= 0x110000)
      {
        goto LABEL_35;
      }

LABEL_41:
      v24 = v20 & 0x1FF800;
      if ((v20 & 0x1FF800) == 0xD800)
      {
        v20 = 65533;
      }

      if (!a5 && v24 == 55296)
      {
        *a1 = &v6[~v12];
        *a3 = v7;
        return 3;
      }

      *v7++ = v20;
      if (v6 >= a2)
      {
LABEL_86:
        *a1 = v6;
        *a3 = v7;
        return v8;
      }
    }

    else
    {
      if (byte_298D1AA47[*v6])
      {
        goto LABEL_40;
      }

      ++v6;
      v20 = v11 - dword_298D1AB48[v12];
      if (v20 < 0x110000)
      {
        goto LABEL_41;
      }

LABEL_35:
      v8 = 3;
      *v7++ = 65533;
      if (v6 >= a2)
      {
        goto LABEL_86;
      }
    }
  }

  if (v13 == 2 || v13 == 3 && (v14 = byte_298D1AA47[*v6], v6[v12] <= -65))
  {
    v16 = &v6[v14];
    v17 = *(v16 - 1);
    v15 = v16 - 1;
    if (v17 <= -65)
    {
      goto LABEL_20;
    }
  }

LABEL_49:
  if (a5)
  {
    goto LABEL_50;
  }

  *a1 = v6;
  *a3 = v7;
  return 3;
}

void sub_298B84EE8(void **a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    sub_298B99AA0(a3, a2);
    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      if ((*(*v5 + 48))(v5, &unk_2A13C3652))
      {
        v6 = v5[1];
        v7 = v5[2];
        if (v6 != v7)
        {
          v8 = 0;
          do
          {
            v13 = v8;
            v9 = *v6;
            *v6 = 0;
            if ((*(*v9 + 48))(v9, &unk_2A13C3653))
            {
              (*(*v9 + 16))(v9, a2);
              v10 = *(a2 + 32);
              if (*(a2 + 24) == v10)
              {
                sub_298B9BCEC(a2, "\n", 1uLL);
              }

              else
              {
                *v10 = 10;
                ++*(a2 + 32);
              }

              v12 = 0;
              (*(*v9 + 8))(v9);
            }

            else
            {
              v12 = v9;
            }

            sub_298ADE6E8(&v13, &v12, &v14);
            v8 = v14;
            v14 = 0;
            if (v12)
            {
              (*(*v12 + 8))(v12);
            }

            if (v13)
            {
              (*(*v13 + 8))(v13);
            }

            ++v6;
          }

          while (v6 != v7);
        }
      }

      else
      {
        (*(*v5 + 48))(v5, &unk_2A13C3653);
        (*(*v5 + 16))(v5, a2);
        v11 = *(a2 + 32);
        if (*(a2 + 24) == v11)
        {
          sub_298B9BCEC(a2, "\n", 1uLL);
        }

        else
        {
          *v11 = 10;
          ++*(a2 + 32);
        }
      }

      (*(*v5 + 8))(v5);
    }
  }
}

uint64_t sub_298B851B0@<X0>(uint64_t **a1@<X0>, std::string *a2@<X8>)
{
  v9[6] = *MEMORY[0x29EDCA608];
  v8 = 0x200000000;
  v6 = *a1;
  v7 = v9;
  *a1 = 0;
  v5 = &v7;
  sub_298B8528C(&v6, &v5);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_298B867C8(v7, &v7[v8], "\n", 1uLL, a2);
  result = sub_298B86348(&v7);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t *sub_298B8528C(uint64_t **a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = 0;
  sub_298B863E0(&v5, &v4, a2);
  result = v4;
  if (v4)
  {
    v3 = *(*v4 + 8);

    return v3();
  }

  return result;
}

uint64_t sub_298B85308()
{
  if (atomic_load_explicit(&qword_2A13C2C58, memory_order_acquire))
  {
    return 1;
  }

  if (__cxa_guard_acquire(&qword_2A13C2C58))
  {
    __cxa_atexit(std::error_category::~error_category, &off_2A1A99560, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2C58);
  }

  return 1;
}

uint64_t sub_298B8538C()
{
  if (atomic_load_explicit(&qword_2A13C2C58, memory_order_acquire))
  {
    return 3;
  }

  if (__cxa_guard_acquire(&qword_2A13C2C58))
  {
    __cxa_atexit(std::error_category::~error_category, &off_2A1A99560, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2C58);
  }

  return 3;
}

uint64_t sub_298B85410(uint64_t a1)
{
  result = (*(**(a1 + 48) + 32))(*(a1 + 48));
  if ((atomic_load_explicit(&qword_2A13C2C58, memory_order_acquire) & 1) == 0)
  {
    v5 = v2;
    v6 = result;
    v4 = __cxa_guard_acquire(&qword_2A13C2C58);
    v2 = v5;
    result = v6;
    if (v4)
    {
      __cxa_atexit(std::error_category::~error_category, &off_2A1A99560, &dword_298AD8000);
      __cxa_guard_release(&qword_2A13C2C58);
      v2 = v5;
      result = v6;
    }
  }

  if (v2 == &off_2A1A99560 && result == 3)
  {
    if ((atomic_load_explicit(&qword_2A13C2C58, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_2A13C2C58))
    {
      return 2;
    }

    else
    {
      __cxa_atexit(std::error_category::~error_category, &off_2A1A99560, &dword_298AD8000);
      __cxa_guard_release(&qword_2A13C2C58);
      return 2;
    }
  }

  return result;
}

uint64_t sub_298B85574@<X0>(int a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    operator new();
  }

  result = 0;
  *a2 = 0;
  return result;
}

uint64_t sub_298B85620(void **a1)
{
  v14.__val_ = 0;
  v14.__cat_ = std::system_category();
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if ((*(*v2 + 48))(v2, &unk_2A13C3652))
    {
      v3 = v2[1];
      v4 = v2[2];
      if (v3 != v4)
      {
        v5 = 0;
        do
        {
          v11.__r_.__value_.__r.__words[0] = v5;
          v6 = *v3;
          *v3 = 0;
          if ((*(*v6 + 48))(v6, &unk_2A13C3653))
          {
            *&v14.__val_ = (*(*v6 + 32))(v6);
            v14.__cat_ = v7;
            (*(*v6 + 8))(v6);
            v6 = 0;
          }

          v15 = v6;
          sub_298ADE6E8(&v11, &v15, v12);
          v5 = v12[0];
          v12[0] = 0;
          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          if (v11.__r_.__value_.__r.__words[0])
          {
            (*(*v11.__r_.__value_.__l.__data_ + 8))(v11.__r_.__value_.__r.__words[0]);
          }

          ++v3;
        }

        while (v3 != v4);
      }
    }

    else
    {
      (*(*v2 + 48))(v2, &unk_2A13C3653);
      *&v14.__val_ = (*(*v2 + 32))(v2);
      v14.__cat_ = v8;
    }

    (*(*v2 + 8))(v2);
  }

  if ((atomic_load_explicit(&qword_2A13C2C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2C58))
  {
    __cxa_atexit(std::error_category::~error_category, &off_2A1A99560, &dword_298AD8000);
    __cxa_guard_release(&qword_2A13C2C58);
  }

  if (v14.__cat_ == &off_2A1A99560 && v14.__val_ == 3)
  {
    std::error_code::message(&v11, &v14);
    v13 = 260;
    v12[0] = &v11;
    sub_298B868DC(v12, 1);
  }

  return *&v14.__val_;
}

void sub_298B858F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v5 = *(a1 + 8);
    v3 = a1 + 8;
    v4 = v5;
    v6 = *(v3 + 23);
    if (v6 >= 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }

    if (v6 >= 0)
    {
      v8 = *(v3 + 23);
    }

    else
    {
      v8 = *(v3 + 8);
    }

    sub_298B9BCEC(a2, v7, v8);
  }

  else
  {
    std::error_code::message(&v15, (a1 + 32));
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    sub_298B9BCEC(a2, v10, size);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    v12 = *(a1 + 31);
    if (v12 < 0)
    {
      v12 = *(a1 + 16);
    }

    if (v12)
    {
      std::operator+<char>();
      v13 = (v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v15 : v15.__r_.__value_.__r.__words[0];
      v14 = (v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v15.__r_.__value_.__r.__words[2]) : v15.__r_.__value_.__l.__size_;
      sub_298B9BCEC(a2, v13, v14);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_298B85A28(void **a1, int a2)
{
  memset(v8, 0, sizeof(v8));
  sub_298B85AAC(v6, v8);
  v5 = *a1;
  *a1 = 0;
  v4[16] = 257;
  sub_298B84EE8(&v5, v6, v4);
  sub_298AF1D58(&v5);
  sub_298B85B10(v6);
  v7 = 260;
  v6[0] = v8;
  sub_298B868DC(v6, a2);
}

uint64_t sub_298B85AAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1F1E040;
  *(a1 + 64) = a2;
  sub_298ADDDB0(a1);
  return a1;
}

uint64_t sub_298B85B14(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_298B85BA4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298B85C54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  if ((*(a2 + 24) - v4) > 0x10)
  {
    *(v4 + 16) = 10;
    *v4 = *"Multiple errors:\n";
    *(a2 + 32) += 17;
    v5 = *(result + 8);
    for (i = *(result + 16); v5 != i; ++v5)
    {
LABEL_7:
      while (1)
      {
        result = (*(**v5 + 16))(*v5, a2);
        v7 = *(a2 + 32);
        if (*(a2 + 24) == v7)
        {
          break;
        }

        *v7 = 10;
        ++*(a2 + 32);
        if (++v5 == i)
        {
          return result;
        }
      }

      result = sub_298B9BCEC(a2, "\n", 1uLL);
    }
  }

  else
  {
    result = sub_298B9BCEC(a2, "Multiple errors:\n", 0x11uLL);
    v5 = *(v3 + 8);
    i = *(v3 + 16);
    if (v5 != i)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_298B85DD8(uint64_t result)
{
  v1 = *(result + 48);
  *(result + 48) = 0;
  if (!v1)
  {
    if ((*(result + 31) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_5:
    v3 = result;
    operator delete(*(result + 8));
    return v3;
  }

  v2 = result;
  (*(*v1 + 8))(v1);
  result = v2;
  if (*(v2 + 31) < 0)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_298B85E60(uint64_t a1)
{
  v1 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(v1);
    a1 = v2;
    if ((*(v2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 8));
LABEL_3:

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298B85F00(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (*(a2 + 24) == v4)
  {
    sub_298B9BCEC(a2, "'", 1uLL);
  }

  else
  {
    *v4 = 39;
    ++*(a2 + 32);
  }

  v5 = *(a1 + 31);
  if (v5 >= 0)
  {
    v6 = (a1 + 8);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 31);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  sub_298B9BCEC(a2, v6, v7);
  v8 = *(a2 + 32);
  if ((*(a2 + 24) - v8) > 2)
  {
    *(v8 + 2) = 32;
    *v8 = 14887;
    *(a2 + 32) += 3;
    if (*(a1 + 40) != 1)
    {
      goto LABEL_21;
    }

LABEL_14:
    v9 = *(a2 + 32);
    if ((*(a2 + 24) - v9) > 4)
    {
      *(v9 + 4) = 32;
      *v9 = 1701734764;
      *(a2 + 32) += 5;
      v11 = *(a1 + 32);
      v10 = a2;
      if (HIDWORD(v11))
      {
LABEL_16:
        sub_298B8FEA0(v10, v11, 0, 0, 0);
        v12 = *(a2 + 32);
        if (*(a2 + 24) - v12 > 1uLL)
        {
LABEL_17:
          *v12 = 8250;
          *(a2 + 32) += 2;
          goto LABEL_21;
        }

LABEL_20:
        sub_298B9BCEC(a2, ": ", 2uLL);
        goto LABEL_21;
      }
    }

    else
    {
      v10 = sub_298B9BCEC(a2, "line ", 5uLL);
      v11 = *(a1 + 32);
      if (HIDWORD(v11))
      {
        goto LABEL_16;
      }
    }

    sub_298B8FC48(v10, v11, 0, 0, 0);
    v12 = *(a2 + 32);
    if (*(a2 + 24) - v12 > 1uLL)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  sub_298B9BCEC(a2, "': ", 3uLL);
  if (*(a1 + 40) == 1)
  {
    goto LABEL_14;
  }

LABEL_21:
  v13 = *(**(a1 + 48) + 16);

  return v13();
}

uint64_t sub_298B86110(uint64_t result)
{
  *result = &unk_2A1F1DAC0;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_298B8616C(uint64_t a1)
{
  *a1 = &unk_2A1F1DAC0;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x29C2945F0);
}

void sub_298B86214(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  JUMPOUT(0x29C2945F0);
}

void sub_298B86258(int a1@<W1>, char *a2@<X8>)
{
  if (a1 == 3)
  {
    operator new();
  }

  if (a1 == 2)
  {
    a2[23] = 22;
    strcpy(a2, "A file error occurred.");
  }

  else
  {
    a2[23] = 15;
    strcpy(a2, "Multiple errors");
  }
}

uint64_t sub_298B86348(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 8);
  if (v2)
  {
    v4 = v1 + 24 * v2 - 1;
    v5 = -24 * v2;
    v6 = v4;
    do
    {
      v7 = *v6;
      v6 -= 24;
      if (v7 < 0)
      {
        v8 = result;
        operator delete(*(v4 - 23));
        result = v8;
      }

      v4 = v6;
      v5 += 24;
    }

    while (v5);
    v1 = *result;
  }

  if (v1 != (result + 16))
  {
    v3 = result;
    free(v1);
    return v3;
  }

  return result;
}

uint64_t *sub_298B863E0(uint64_t *result, uint64_t **a2, uint64_t *a3)
{
  v3 = result;
  v4 = *a2;
  if (*a2)
  {
    *a2 = 0;
    if ((*(*v4 + 48))(v4, &unk_2A13C3652))
    {
      v7 = v4[1];
      v8 = v4[2];
      if (v7 == v8)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          v15 = v9;
          v10 = *v7;
          *v7 = 0;
          v13 = v10;
          sub_298B865E0(&v14, &v13, a3);
          sub_298ADE6E8(&v15, &v14, &v16);
          v9 = v16;
          v16 = 0;
          if (v14)
          {
            (*(*v14 + 8))(v14);
          }

          v11 = v13;
          v13 = 0;
          if (v11)
          {
            (*(*v11 + 8))(v11);
          }

          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          ++v7;
        }

        while (v7 != v8);
      }

      *v3 = v9;
      return (*(*v4 + 8))(v4);
    }

    else
    {
      v12 = v4;
      sub_298B865E0(v3, &v12, a3);
      result = v12;
      if (v12)
      {
        v6 = *(*v12 + 8);

        return v6();
      }
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_298B865E0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = (*(**a2 + 48))(*a2, &unk_2A13C3653);
  v7 = *a2;
  *a2 = 0;
  if (result)
  {
    sub_298B8668C(*a3, v7);
    result = (*(*v7 + 8))(v7);
    v7 = 0;
  }

  *a1 = v7;
  return result;
}

void sub_298B8668C(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(__p, a2);
  sub_298B86700(a1, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

__n128 sub_298B86700(uint64_t a1, unint64_t a2)
{
  v3 = sub_298B86758(a1, a2);
  v4 = (*a1 + 24 * *(a1 + 8));
  result = *v3;
  v4[1].n128_u64[0] = v3[1].n128_u64[0];
  *v4 = result;
  v3->n128_u64[1] = 0;
  v3[1].n128_u64[0] = 0;
  v3->n128_u64[0] = 0;
  ++*(a1 + 8);
  return result;
}

unint64_t sub_298B86758(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 12))
  {
    if (*a1 <= a2 && *a1 + 24 * v3 > a2)
    {
      v6 = a2 - *a1;
      sub_298B3D010(a1, v3 + 1);
      return *a1 + v6;
    }

    else
    {
      sub_298B3D010(a1, v3 + 1);
    }
  }

  return v2;
}

std::string *sub_298B867C8@<X0>(std::string *result@<X0>, std::string *a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (result != a2)
  {
    v8 = result;
    v10 = (0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 3) - 1) * a4;
    v11 = result;
    do
    {
      size = HIBYTE(v11->__r_.__value_.__r.__words[2]);
      if ((size & 0x80u) != 0)
      {
        size = v11->__r_.__value_.__l.__size_;
      }

      v10 += size;
      ++v11;
    }

    while (v11 != a2);
    std::string::reserve(a5, v10);
    while (1)
    {
      v13 = SHIBYTE(v8->__r_.__value_.__r.__words[2]);
      v14 = v13 >= 0 ? v8 : v8->__r_.__value_.__r.__words[0];
      v15 = v13 >= 0 ? HIBYTE(v8->__r_.__value_.__r.__words[2]) : v8->__r_.__value_.__l.__size_;
      result = std::string::append(a5, v14, v15);
      if (++v8 == a2)
      {
        break;
      }

      std::string::append(a5, a3, a4);
    }
  }

  return result;
}

void sub_298B868A8(_BYTE *a1, int a2)
{
  v2 = 1;
  v5 = 1;
  if (*a1)
  {
    v3 = a1;
    v2 = 3;
  }

  v4 = v2;
  sub_298B868DC(&v3, a2);
}

void sub_298B868DC(uint64_t a1, int a2)
{
  v15 = &v16;
  *&v16.st_dev = &v16.st_rdev;
  *&v16.st_ino = xmmword_298D1AB80;
  v8 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v7 = &unk_2A1F1E0B8;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  sub_298B9BCEC(&v7, "LLVM ERROR: ", 0xCuLL);
  sub_298B99AA0(a1, &v7);
  if (v10 == v11)
  {
    sub_298B9BCEC(&v7, "\n", 1uLL);
  }

  else
  {
    *v11++ = 10;
  }

  write(2, *&v15->st_dev, v15->st_ino);
  sub_298B9AE14(&v7);
  if (*&v16.st_dev != &v16.st_rdev)
  {
    free(*&v16.st_dev);
  }

  v4 = atomic_exchange(&qword_2A13C3780, 0);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = atomic_exchange(v5, 0);
      if (v6 && !stat(v6, &v16) && (v16.st_mode & 0xF000) == 0x8000)
      {
        unlink(v6);
        atomic_exchange(v5, v6);
      }

      v5 = atomic_load((v5 + 8));
    }

    while (v5);
  }

  atomic_exchange(&qword_2A13C3780, v4);
  if (a2)
  {
    abort();
  }

  exit(1);
}

void sub_298B86A40(const char *a1)
{
  write(2, "LLVM ERROR: out of memory\n", 0x1AuLL);
  v2 = strlen(a1);
  write(2, a1, v2);
  write(2, "\n", 1uLL);
  abort();
}

uint64_t sub_298B86A98(uint64_t result, int *a2, void *a3, unsigned __int8 *a4)
{
  *a2 = 2;
  *a3 = 0;
  *a4 = 32;
  v4 = *(result + 8);
  if (v4)
  {
    v6 = v4 - 1;
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = *result;
    v8 = (*result + 1);
    v9 = *v8;
    switch(v9)
    {
      case '+':
        v10 = 2;
        break;
      case '-':
        v10 = 0;
        break;
      case '=':
        v10 = 1;
        break;
      default:
        v13 = *v7;
        switch(v13)
        {
          case '+':
            v14 = 2;
            break;
          case '-':
            v14 = 0;
            break;
          case '=':
            v14 = 1;
            break;
          default:
LABEL_13:
            v15 = 0;
            result = sub_298B971A4(result, 0, &v15);
            if ((result & 1) == 0)
            {
              *a3 = v15;
            }

            return result;
        }

        *a2 = v14;
LABEL_12:
        *result = v8;
        *(result + 8) = v6;
        goto LABEL_13;
    }

    *a4 = *v7;
    *a2 = v10;
    v11 = *(result + 8);
    v12 = 2;
    if (v11 < 2)
    {
      v12 = *(result + 8);
    }

    v8 = (*result + v12);
    v6 = v11 - v12;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_298B86B9C(void *a1)
{
  v2 = sub_298B96CA8(a1, " \t\n\v\f\r", 6, 0);
  v3 = a1[1];
  if (v2 >= v3)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = v2;
  }

  v6[0] = *a1 + v4;
  v6[1] = v3 - v4;
  sub_298B96DB8(v6, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
  return v6[0];
}

_BYTE *sub_298B86C2C@<X0>(size_t __n@<X1>, _BYTE *result@<X0>, uint64_t a3@<X8>)
{
  v70 = *MEMORY[0x29EDCA608];
  if (!__n)
  {
    *&v69[11] = 0;
    *&v69[3] = 0;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *a3 = 2;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 8) = result;
    *(a3 + 16) = 0;
    *(a3 + 40) = 2;
    goto LABEL_60;
  }

  if (*result != 123)
  {
    v9 = result;
    result = memchr(result, 123, __n);
    v10 = result - v9;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    if (!result)
    {
      v10 = -1;
    }

    *&v69[11] = 0;
    if (__n < v10)
    {
      v10 = __n;
    }

    *&v69[3] = 0;
    *a3 = 2;
    *(a3 + 8) = v9;
    *(a3 + 16) = v10;
    *(a3 + 40) = 2;
    *(a3 + 44) = 0;
    *(a3 + 45) = *v69;
    *(a3 + 60) = 0;
    *(a3 + 64) = &v9[v10];
    *(a3 + 72) = __n - v10;
    goto LABEL_19;
  }

  v5 = 1;
  do
  {
    if (__n == v5)
    {
      v6 = -1;
      goto LABEL_6;
    }

    v62 = result[v5++];
  }

  while (v62 == 123);
  v6 = v5 - 1;
LABEL_6:
  if (__n < v6)
  {
    v6 = __n;
  }

  if (v6 >= 2)
  {
    v7 = v6 >> 1;
    if (__n < v6 >> 1)
    {
      v7 = __n;
    }

    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    *&v69[11] = 0;
    if (__n < v8)
    {
      v8 = __n;
    }

    *&v69[3] = 0;
    *a3 = 2;
    *(a3 + 8) = result;
    *(a3 + 16) = v7;
    *(a3 + 40) = 2;
    *(a3 + 44) = 0;
    *(a3 + 45) = *v69;
    *(a3 + 60) = 0;
    *(a3 + 64) = &result[v8];
    *(a3 + 72) = __n - v8;
    goto LABEL_19;
  }

  v12 = result;
  result = memchr(result, 125, __n);
  v13 = v12;
  if (!result || (v14 = result, v15 = result - v12, result - v12 == -1))
  {
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *&v69[3] = 0uLL;
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
    *a3 = 2;
    *(a3 + 8) = v12;
    *(a3 + 16) = __n;
    *(a3 + 40) = 2;
LABEL_60:
    *(a3 + 44) = 0;
    *(a3 + 45) = *v69;
    *(a3 + 60) = *&v69[15];
    goto LABEL_19;
  }

  if (__n == 1)
  {
    goto LABEL_26;
  }

  result = memchr(v12 + 1, 123, __n - 1);
  v13 = v12;
  v16 = result - v12;
  if (!result)
  {
    v16 = -1;
  }

  if (v16 >= v15)
  {
LABEL_26:
    if (v14 == v13)
    {
      v17 = 1;
    }

    else
    {
      v17 = v15;
    }

    if (v17 >= __n)
    {
      v17 = __n;
    }

    v18 = v17 - 1;
    if (__n >= v15 + 1)
    {
      v19 = v15 + 1;
    }

    else
    {
      v19 = __n;
    }

    v20 = &v13[v19];
    v21 = __n - v19;
    *&v68 = v13 + 1;
    *(&v68 + 1) = v18;
    v22 = sub_298B96CA8(&v68, "{}", 2, 0);
    if (v22 >= *(&v68 + 1))
    {
      v23 = *(&v68 + 1);
    }

    else
    {
      v23 = v22;
    }

    v24 = *(&v68 + 1) - v23;
    *v69 = v68 + v23;
    *&v69[8] = *(&v68 + 1) - v23;
    v25 = sub_298B96DB8(v69, "{}", 2, 0xFFFFFFFFFFFFFFFFLL);
    if ((v25 + 1) < *&v69[8])
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = *&v69[8];
    }

    v27 = *&v69[8] - v24 + v26;
    if (*&v69[8] < v27)
    {
      v27 = *&v69[8];
    }

    v66 = *v69;
    v67 = v27;
    v65 = 32;
    v64 = 0;
    v63 = 2;
    v28 = sub_298B96CA8(&v66, " \t\n\v\f\r", 6, 0);
    if (v28 >= v67)
    {
      v29 = v67;
    }

    else
    {
      v29 = v28;
    }

    v30 = v67 - v29;
    *v69 = v66 + v29;
    *&v69[8] = v67 - v29;
    v31 = sub_298B96DB8(v69, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
    if ((v31 + 1) < *&v69[8])
    {
      v32 = v31 + 1;
    }

    else
    {
      v32 = *&v69[8];
    }

    v33 = *&v69[8] - v30 + v32;
    if (*&v69[8] < v33)
    {
      v33 = *&v69[8];
    }

    v66 = *v69;
    v67 = v33;
    result = sub_298B97294(&v66);
    if (!v67)
    {
      goto LABEL_72;
    }

    v34 = 0;
    v35 = v66;
    v36 = (v66 + v67);
    v37 = v67;
    while (*v35 >= 48)
    {
      v38 = *v35;
      if (v38 >= 0x3A)
      {
        if (v38 < 0x61)
        {
          if (v38 - 65 > 0x19)
          {
            break;
          }

          v39 = -55;
        }

        else
        {
          if (v38 >= 0x7B)
          {
            break;
          }

          v39 = -87;
        }
      }

      else
      {
        v39 = -48;
      }

      v40 = v39 + v38;
      if (v40 >= result)
      {
        break;
      }

      v41 = v34 * result + v40;
      if (v41 / result < v34)
      {
        goto LABEL_72;
      }

      ++v35;
      v34 = v34 * result + v40;
      if (!--v37)
      {
        goto LABEL_71;
      }
    }

    v41 = v34;
    v36 = v35;
LABEL_71:
    if (v67 != v37)
    {
      v66 = v36;
      v67 = v37;
      v49 = sub_298B96CA8(&v66, " \t\n\v\f\r", 6, 0);
      if (v49 >= v67)
      {
        v50 = v67;
      }

      else
      {
        v50 = v49;
      }

      v51 = v67 - v50;
      *v69 = v66 + v50;
      *&v69[8] = v67 - v50;
      v52 = sub_298B96DB8(v69, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
      if ((v52 + 1) < *&v69[8])
      {
        v53 = v52 + 1;
      }

      else
      {
        v53 = *&v69[8];
      }

      v54 = *&v69[8] - v51 + v53;
      if (*&v69[8] < v54)
      {
        v54 = *&v69[8];
      }

      v66 = *v69;
      v67 = v54;
      if (v54 && **v69 == 44)
      {
        v66 = *v69 + 1;
        v67 = v54 - 1;
        sub_298B86A98(&v66, &v63, &v64, &v65);
      }

      v55 = sub_298B96CA8(&v66, " \t\n\v\f\r", 6, 0);
      if (v55 >= v67)
      {
        v56 = v67;
      }

      else
      {
        v56 = v55;
      }

      v57 = v67 - v56;
      *v69 = v66 + v56;
      *&v69[8] = v67 - v56;
      v58 = sub_298B96DB8(v69, " \t\n\v\f\r", 6, 0xFFFFFFFFFFFFFFFFLL);
      if ((v58 + 1) < *&v69[8])
      {
        v59 = v58 + 1;
      }

      else
      {
        v59 = *&v69[8];
      }

      v60 = *&v69[8] - v57 + v59;
      if (*&v69[8] < v60)
      {
        v60 = *&v69[8];
      }

      v66 = *v69;
      v67 = v60;
      if (v60 && **v69 == 58)
      {
        v66 = *v69 + 1;
        v67 = v60 - 1;
        v45 = sub_298B86B9C(&v66);
        v44 = v61;
        v66 = 0;
        v67 = 0;
      }

      else
      {
        v44 = 0;
        v45 = 0;
      }

      result = sub_298B86B9C(&v66);
      v47 = v68;
      v42 = v64;
      v48 = v63;
      v43 = 1;
      v46 = v65;
    }

    else
    {
LABEL_72:
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v69[2] = 0;
      *v69 = 0;
      v47 = 0uLL;
      v48 = 2;
    }

    *a3 = v43;
    *(a3 + 4) = 0;
    *(a3 + 8) = v47;
    *(a3 + 24) = v41;
    *(a3 + 32) = v42;
    *(a3 + 40) = v48;
    *(a3 + 44) = v46;
    *(a3 + 45) = *v69;
    *(a3 + 47) = v69[2];
    *(a3 + 48) = v45;
    *(a3 + 56) = v44;
    *(a3 + 64) = v20;
    *(a3 + 72) = v21;
  }

  else
  {
    if (__n < v16)
    {
      v16 = __n;
    }

    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *&v69[11] = 0;
    *&v69[3] = 0;
    *a3 = 2;
    *(a3 + 8) = v12;
    *(a3 + 16) = v16;
    *(a3 + 40) = 2;
    *(a3 + 44) = 0;
    *(a3 + 45) = *v69;
    *(a3 + 60) = 0;
    *(a3 + 64) = &v12[v16];
    *(a3 + 72) = __n - v16;
  }

LABEL_19:
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

__n128 sub_298B87210(unint64_t *a1, unint64_t a2)
{
  v2 = *(a1 + 2);
  v3 = *a1;
  if (v2 >= *(a1 + 3))
  {
    v8 = a2;
    if (v3 <= a2 && v3 + (v2 << 6) > a2)
    {
      v11 = a2 - v3;
      v12 = a1;
      sub_298B90A44();
      a1 = v12;
      v3 = *v12;
      a2 = *v12 + v11;
    }

    else
    {
      v10 = a1;
      sub_298B90A44();
      a1 = v10;
      v3 = *v10;
      a2 = v8;
    }
  }

  v4 = v3 + (*(a1 + 2) << 6);
  result = *a2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 48);
  *(v4 + 32) = *(a2 + 32);
  *(v4 + 48) = v7;
  *v4 = result;
  *(v4 + 16) = v6;
  ++*(a1 + 2);
  return result;
}

double sub_298B872C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = *a1;
  *v4 = a2;
  *(v4 + 2) = a3;
  *(v4 + 3) = a4;
  v5 = *a1;
  v6 = *(**a1 + 8 * *(*a1 + 12));
  v8[0] = v6 & 0xFFFFFFFFFFFFFFC0;
  v8[1] = (a4 & 0xFFFFFFFF00000000 | v6 & 0x3F) + 1;
  *&result = sub_298B876E8(a1, (v5 + 2), v8).n128_u64[0];
  return result;
}

uint64_t sub_298B8731C(void *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = -1;
  while (1)
  {
    v3 = *a1 + 16 * (a2 + v2);
    if (!(a2 + v2))
    {
      break;
    }

    --v2;
    if (*(v3 + 12))
    {
      v4 = a2 + v2 + 2;
      v5 = *(v3 + 12);
      if (!v5)
      {
        return 0;
      }

      goto LABEL_8;
    }
  }

  v4 = 1;
  v5 = *(v3 + 12);
  if (!v5)
  {
    return 0;
  }

LABEL_8:
  result = *(*v3 + 8 * (v5 - 1));
  if (v4 != a2)
  {
    v7 = a2 - v4;
    do
    {
      result = *((result & 0xFFFFFFFFFFFFFFC0) + 8 * (result & 0x3F));
      --v7;
    }

    while (v7);
  }

  return result;
}

unsigned int *sub_298B87398(unsigned int *result, unsigned int a2)
{
  v2 = result[2];
  if (v2 && *(*result + 12) < *(*result + 8))
  {
    v4 = a2;
    do
    {
      --v4;
    }

    while (!*(*result + 16 * v4 + 12));
  }

  else if (v2 - 1 >= a2 || (v3 = a2 + 1, v2 == v3))
  {
    v4 = 0;
  }

  else
  {
    if (v2 <= v3)
    {
      v15 = a2;
      v16 = v3 - v2;
      v17 = result[2];
      v18 = result;
      if (result[3] < v3)
      {
        v19 = result[2];
        v20 = a2 + 1;
        sub_298B90A44(result, result + 4, v3, 16);
        v2 = v19;
        v3 = v20;
        result = v18;
        v17 = v18[2];
      }

      bzero((*result + 16 * v17), 16 * (v3 - v2));
      result = v18;
      LODWORD(v3) = v16 + v18[2];
      a2 = v15;
    }

    v4 = 0;
    result[2] = v3;
  }

  v5 = *result;
  v6 = *result + 16 * v4;
  v7 = *(v6 + 12) - 1;
  *(v6 + 12) = v7;
  v8 = *(*v6 + 8 * v7);
  if (v4 + 1 != a2)
  {
    v9 = *result + 16 * (v4 + 1);
    *v9 = v8 & 0xFFFFFFFFFFFFFFC0;
    *(v9 + 8) = (v8 & 0x3F) + 1;
    *(v9 + 12) = v8 & 0x3F;
    v8 = *((v8 & 0xFFFFFFFFFFFFFFC0) + 8 * (v8 & 0x3F));
    if (v4 + 2 != a2)
    {
      v10 = *result + 16 * (v4 + 2);
      *v10 = v8 & 0xFFFFFFFFFFFFFFC0;
      *(v10 + 8) = (v8 & 0x3F) + 1;
      *(v10 + 12) = v8 & 0x3F;
      v8 = *((v8 & 0xFFFFFFFFFFFFFFC0) + 8 * (v8 & 0x3F));
      if (v4 + 3 != a2)
      {
        v11 = *result + 16 * (v4 + 3);
        *v11 = v8 & 0xFFFFFFFFFFFFFFC0;
        *(v11 + 8) = (v8 & 0x3F) + 1;
        *(v11 + 12) = v8 & 0x3F;
        v8 = *((v8 & 0xFFFFFFFFFFFFFFC0) + 8 * (v8 & 0x3F));
        for (i = v4 + 4; a2 != i; ++i)
        {
          v13 = *result + 16 * i;
          *v13 = v8 & 0xFFFFFFFFFFFFFFC0;
          *(v13 + 8) = (v8 & 0x3F) + 1;
          *(v13 + 12) = v8 & 0x3F;
          v8 = *((v8 & 0xFFFFFFFFFFFFFFC0) + 8 * (v8 & 0x3F));
        }
      }
    }

    v5 = *result;
  }

  v14 = v5 + 16 * a2;
  *v14 = v8 & 0xFFFFFFFFFFFFFFC0;
  *(v14 + 8) = (v8 & 0x3F) + 1;
  *(v14 + 12) = v8 & 0x3F;
  return result;
}

uint64_t *sub_298B87590(uint64_t *result, unsigned int a2)
{
  v2 = *result;
  v3 = a2 - 1;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = v3;
    if (!v3)
    {
      break;
    }

    v8 = *(v2 + 16 * v3 + 8);
    v7 = *(v2 + 16 * v3 + 12);
    ++v4;
    --v3;
    if (v7 != v8 - 1)
    {
      v9 = v2 + 16 * v6;
      v10 = v7 + 1;
      *(v9 + 12) = v10;
      if (v10 == v8)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  v11 = *(v2 + 8);
  v9 = *result;
  v10 = *(v2 + 12) + 1;
  *(v2 + 12) = v10;
  if (v10 == v11)
  {
    return result;
  }

LABEL_7:
  v12 = *(*v9 + 8 * v10);
  if (v5 != 1)
  {
    v13 = v5 - 1;
    v14 = v6 + 1;
    do
    {
      v15 = *result + 16 * v14;
      *v15 = v12 & 0xFFFFFFFFFFFFFFC0;
      *(v15 + 8) = (v12 & 0x3F) + 1;
      *(v15 + 12) = 0;
      ++v14;
      v12 = *(v12 & 0xFFFFFFFFFFFFFFC0);
      --v13;
    }

    while (v13);
    v2 = *result;
  }

  v16 = (v2 + 16 * a2);
  *v16 = v12 & 0xFFFFFFFFFFFFFFC0;
  v16[1] = (v12 & 0x3F) + 1;
  return result;
}

unint64_t sub_298B87660(unsigned int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  if (!a1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  LODWORD(v9) = 0;
  v10 = a1;
  v11 = (a7 + a2) / a1;
  v12 = (a7 + a2) % a1;
  do
  {
    if (v7 >= v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 + 1;
    }

    *(a5 + 4 * v7) = v13;
    v14 = a6 - v8;
    v8 += v13;
    if (a1 == v10 && v8 > a6)
    {
      a1 = v7;
      v9 = v14;
    }

    else
    {
      v9 = v9;
    }

    ++v7;
  }

  while (v10 != v7);
  if (a7)
  {
    --*(a5 + 4 * a1);
  }

  return a1 | (v9 << 32);
}

__n128 sub_298B876E8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 + 16 * v5 == a2)
  {
    v6 = *a3;
    v7 = a3[1];

    sub_298AE0EC0(a1, v6, v7);
  }

  else
  {
    v9 = a2 - v4;
    if (v5 >= *(a1 + 12))
    {
      v16 = a3;
      v15 = a1;
      sub_298B90A44(a1, (a1 + 16), v5 + 1, 16);
      a1 = v15;
      a3 = v16;
      v4 = *v15;
      v5 = *(v15 + 8);
    }

    v10 = (v4 + v9);
    *(v4 + 16 * v5) = *(v4 + 16 * v5 - 16);
    v11 = *(a1 + 8);
    v12 = *a1 + 16 * v11;
    if ((v12 - 16) != v10)
    {
      v13 = a1;
      v14 = a3;
      memmove(v10 + 1, v10, v12 - 16 - v10);
      a1 = v13;
      a3 = v14;
      LODWORD(v11) = *(v13 + 8);
    }

    *(a1 + 8) = v11 + 1;
    result = *a3;
    *v10 = *a3;
  }

  return result;
}

uint64_t sub_298B877D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v9 = 0;
  if (sub_298B89FD8(a1, v8, &v9))
  {
    v4 = v9;
    v5 = *a1;
    v6 = *(a1 + 16);
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 16);
    v4 = *a1 + 56 * v6;
  }

  if (v4 == v5 + 56 * v6)
  {
    return 0;
  }

  else
  {
    return v4 + 24;
  }
}

uint64_t sub_298B8784C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = 0;
  if (sub_298B89FD8(a1, v6, &v7))
  {
    if (v7 != *a1 + 56 * *(a1 + 16) && *(v7 + 24) == 1)
    {
      return *(v7 + 32) | 0x100u;
    }
  }

  else
  {
    v5 = *a1 + 56 * *(a1 + 16);
  }

  return 0;
}

unint64_t sub_298B878FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&__y[0] = a2;
  *&__y[1] = a3;
  v12 = 0;
  if (sub_298B89FD8(a1, __y, &v12))
  {
    v4 = v12;
    v5 = *a1;
    v6 = *(a1 + 16);
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 16);
    v4 = *a1 + 56 * v6;
  }

  if (v4 == v5 + 56 * v6)
  {
    return 0;
  }

  v7 = *(v4 + 24);
  if (v7 == 3)
  {
    v8 = *(v4 + 32);
  }

  else
  {
    if (v7 == 4)
    {
      v8 = *(v4 + 32);
      v9 = v8 & 0x7FFFFFFFFFFFFF00;
      if (v8 < 0)
      {
        LOBYTE(v8) = 0;
        v9 = 0;
      }

      return v9 | v8;
    }

    if (v7 != 2 || (__y[0] = *(v4 + 32), modf(__y[0], __y) != 0.0) || fabs(__y[0]) > 9.22337204e18)
    {
      LOBYTE(v8) = 0;
      v9 = 0;
      return v9 | v8;
    }

    v8 = __y[0];
  }

  v9 = v8 & 0xFFFFFFFFFFFFFF00;
  return v9 | v8;
}

unint64_t sub_298B87A10(unsigned __int16 *a1)
{
  v3 = *a1;
  switch(v3)
  {
    case 3:
      v4 = *(a1 + 1);
      v5 = v4 & 0xFFFFFFFFFFFFFF00;
      break;
    case 4:
      v4 = *(a1 + 1);
      v5 = v4 & 0x7FFFFFFFFFFFFF00;
      if (v4 < 0)
      {
        LOBYTE(v4) = 0;
        v5 = 0;
      }

      break;
    case 2:
      __y[1] = v1;
      __y[2] = v2;
      __y[0] = *(a1 + 1);
      if (modf(__y[0], __y) == 0.0 && fabs(__y[0]) <= 9.22337204e18)
      {
        v4 = __y[0];
        v5 = __y[0] & 0xFFFFFFFFFFFFFF00;
      }

      else
      {
        LOBYTE(v4) = 0;
        v5 = 0;
      }

      break;
    default:
      LOBYTE(v4) = 0;
      v5 = 0;
      break;
  }

  return v5 | v4;
}

unsigned __int16 *sub_298B87AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8[0] = a2;
  v8[1] = a3;
  v9 = 0;
  result = sub_298B89FD8(a1, v8, &v9);
  if (result)
  {
    if (v9 != *a1 + 56 * *(a1 + 16))
    {
      return sub_298B87B84((v9 + 24), a4);
    }
  }

  else
  {
    v7 = *a1 + 56 * *(a1 + 16);
  }

  *a4 = 0;
  a4[16] = 0;
  return result;
}

unsigned __int16 *sub_298B87B84@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (v2 == 5)
  {
    *a2 = *(result + 4);
  }

  else
  {
    if (v2 != 6)
    {
      v3 = 0;
      *a2 = 0;
      goto LABEL_4;
    }

    v5 = *(result + 1);
    result += 4;
    v4 = v5;
    v6 = *(result + 23);
    if (v6 >= 0)
    {
      v4 = result;
    }

    if (v6 < 0)
    {
      v6 = *(result + 1);
    }

    *a2 = v4;
    *(a2 + 8) = v6;
  }

  v3 = 1;
LABEL_4:
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_298B87BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = 0;
  if (!sub_298B89FD8(a1, v6, &v7))
  {
    v5 = *a1 + 56 * *(a1 + 16);
    return 0;
  }

  if (v7 == *a1 + 56 * *(a1 + 16))
  {
    return 0;
  }

  if (*(v7 + 24) == 7)
  {
    return v7 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_298B87C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  v7 = 0;
  if (!sub_298B89FD8(a1, v6, &v7))
  {
    v5 = *a1 + 56 * *(a1 + 16);
    return 0;
  }

  if (v7 == *a1 + 56 * *(a1 + 16))
  {
    return 0;
  }

  if (*(v7 + 24) == 8)
  {
    return v7 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_298B87D1C(uint64_t result, unsigned __int16 *a2)
{
  v2 = *a2;
  *result = v2;
  if (v2 < 5)
  {
    v3 = *(a2 + 4);
    *(result + 24) = *(a2 + 3);
LABEL_3:
    *(result + 8) = v3;
    return result;
  }

  if (v2 <= 6)
  {
    if (v2 != 6)
    {
      v3 = *(a2 + 4);
      goto LABEL_3;
    }

    v4 = *(a2 + 4);
    *(result + 24) = *(a2 + 3);
    *(result + 8) = v4;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a2 + 1) = 0;
    goto LABEL_7;
  }

  if (v2 == 7)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = *(a2 + 1);
    *(a2 + 1) = 0;
    *(result + 16) = *(a2 + 4);
    *(a2 + 4) = 0;
    v5 = *(result + 20);
    *(result + 20) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(result + 24);
    *(result + 24) = *(a2 + 6);
    *(a2 + 6) = v6;
    goto LABEL_7;
  }

  if (v2 == 8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 8) = *(a2 + 4);
    *(result + 24) = *(a2 + 3);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
LABEL_7:
    *a2 = 0;
  }

  return result;
}

void sub_298B87DF4(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *a2;
  *a1 = v4;
  if (v4 > 4)
  {
    if (v4 > 6)
    {
      if (v4 == 7)
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        v11 = (a1 + 8);
        *(a1 + 24) = 0;
        sub_298B8A3A4(a1 + 8);
        MEMORY[0x29C2945E0](*v11, 8);
        v12 = *(a2 + 6);
        *(a1 + 24) = v12;
        if (v12)
        {
          *(a1 + 8) = operator new(56 * v12, 8uLL);
          *(a1 + 16) = *(a2 + 2);
          if (*(a1 + 24))
          {
            v13 = 0;
            v14 = 0;
            do
            {
              sub_298B8CA58((*v11 + v13), *(a2 + 1) + v13);
              v15 = *v11 + v13;
              if (*(v15 + 8) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                sub_298B87DF4(v15 + 24, *(a2 + 1) + v13 + 24);
              }

              ++v14;
              v13 += 56;
            }

            while (v14 < *(a1 + 24));
          }
        }

        else
        {
          *v11 = 0;
          *(a1 + 16) = 0;
        }
      }

      else if (v4 == 8)
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        v9 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v10 != v9)
        {
          if (((v10 - v9) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_298ADDDA0();
        }
      }
    }

    else if (v4 == 5)
    {
      *(a1 + 8) = *(a2 + 4);
    }

    else if (*(a2 + 31) < 0)
    {
      v6 = *(a2 + 1);
      v7 = *(a2 + 2);
      v8 = (a1 + 8);

      sub_298AFE11C(v8, v6, v7);
    }

    else
    {
      v16 = *(a2 + 4);
      *(a1 + 24) = *(a2 + 3);
      *(a1 + 8) = v16;
    }
  }

  else
  {
    v5 = *(a2 + 4);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v5;
  }
}

void sub_298B8802C(void **a1)
{
  v1 = *a1;
  if (v1 == 8)
  {
    sub_298B8A314(a1 + 1);
  }

  else if (v1 == 7)
  {
    sub_298B8A370(a1 + 1);
  }

  else if (v1 == 6 && *(a1 + 31) < 0)
  {
    operator delete(a1[1]);
  }
}

unsigned __int16 *sub_298B8806C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x29EDCA608];
  LOBYTE(v8) = 0;
  v9 = 0;
  v10 = a1;
  v11 = a1;
  v12 = &a1[a2];
  v14[0] = 0;
  if (a2)
  {
    v4 = 0;
    while ((a1[v4] & 0x80000000) == 0)
    {
      if (a2 == ++v4)
      {
        goto LABEL_5;
      }
    }

    v13 = a1;
    if (!sub_298B84A30(&v13, &a1[a2]))
    {
      v11 = v13;
      sub_298B8B6E4(&v8);
    }
  }

LABEL_5:
  if (sub_298B881B4(&v8, v14) && sub_298B88D94(&v8))
  {
    *(a3 + 32) &= ~1u;
    sub_298B87D1C(a3, v14);
  }

  else
  {
    v5 = v8;
    v8 = 0;
    *(a3 + 32) |= 1u;
    *a3 = v5;
  }

  result = sub_298B88E18(v14);
  if (v9 == 1)
  {
    result = v8;
    if (v8)
    {
      result = (*(*v8 + 8))(v8);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B881B4(void *a1, unsigned __int16 *a2)
{
  v77 = *MEMORY[0x29EDCA608];
  v4 = a1[3];
  for (i = a1[4]; v4 != i; a1[3] = v4)
  {
    v6 = *v4;
    v7 = v6 > 0x20;
    v8 = (1 << v6) & 0x100002600;
    if (v7 || v8 == 0)
    {
      break;
    }

    ++v4;
  }

  if (v4 == i)
  {
    goto LABEL_146;
  }

  a1[3] = v4 + 1;
  v10 = *v4;
  if (v10 > 109)
  {
    switch(v10)
    {
      case '{':
        v19 = *a2;
        if (v19 == 8)
        {
          sub_298B8A314(a2 + 1);
        }

        else if (v19 == 7)
        {
          sub_298B8A370(a2 + 1);
        }

        else if (v19 == 6 && *(a2 + 31) < 0)
        {
          operator delete(*(a2 + 1));
        }

        *a2 = 7;
        *(a2 + 2) = 0;
        *(a2 + 6) = 0;
        *(a2 + 1) = 0;
        MEMORY[0x29C2945E0](0, 8);
        *a2;
        v20 = a1[3];
        for (j = a1[4]; v20 != j; a1[3] = v20)
        {
          v22 = *v20;
          v7 = v22 > 0x20;
          v23 = (1 << v22) & 0x100002600;
          if (v7 || v23 == 0)
          {
            break;
          }

          ++v20;
        }

        if (v20 == j || *v20 != 125)
        {
          v25 = a1[3];
          if (v25 != a1[4])
          {
            a1[3] = v25 + 1;
            if (*v25 == 34)
            {
              memset(&v76, 0, sizeof(v76));
              if (sub_298B8BF70(a1, &v76))
              {
                v27 = a1[3];
                v26 = a1[4];
                while (v27 != v26)
                {
                  v28 = *v27;
                  v7 = v28 > 0x20;
                  v29 = (1 << v28) & 0x100002600;
                  if (v7 || v29 == 0)
                  {
                    break;
                  }

                  a1[3] = ++v27;
                }

                if (v27 != v26)
                {
                  v31 = v27 + 1;
                  a1[3] = v27 + 1;
                  if (*v27 == 58)
                  {
                    while (v31 != v26)
                    {
                      v32 = *v31;
                      v7 = v32 > 0x20;
                      v33 = (1 << v32) & 0x100002600;
                      if (v7 || v33 == 0)
                      {
                        break;
                      }

                      a1[3] = ++v31;
                    }

                    memset(&v76, 0, sizeof(v76));
                    sub_298B8A17C();
                  }
                }

                sub_298B8B6E4(a1);
              }

              v12 = 0;
              if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v76.__r_.__value_.__l.__data_);
              }

              goto LABEL_77;
            }

            ++v25;
          }

          v35 = a1[2];
          v36 = 1;
          if (v25 > v35)
          {
            v37 = a1[2];
            do
            {
              v38 = *v35++;
              if (v38 == 10)
              {
                ++v36;
              }
            }

            while (v35 != v25);
          }

          operator new();
        }

LABEL_40:
        a1[3] = v20 + 1;
        v12 = 1;
LABEL_77:
        v39 = *MEMORY[0x29EDCA608];
        return v12 & 1;
      case 't':
        v47 = *a2;
        if (v47 == 8)
        {
          sub_298B8A314(a2 + 1);
        }

        else if (v47 == 7)
        {
          sub_298B8A370(a2 + 1);
        }

        else if (v47 == 6 && *(a2 + 31) < 0)
        {
          operator delete(*(a2 + 1));
        }

        *a2 = 1;
        *(a2 + 8) = 1;
        v68 = a1[3];
        v69 = a1[4];
        if (v68 == v69)
        {
          goto LABEL_146;
        }

        a1[3] = v68 + 1;
        if (*v68 != 114)
        {
          goto LABEL_146;
        }

        if (v68 + 1 == v69)
        {
          goto LABEL_146;
        }

        a1[3] = v68 + 2;
        if (v68[1] != 117)
        {
          goto LABEL_146;
        }

        if (v68 + 2 == v69)
        {
          goto LABEL_146;
        }

        a1[3] = v68 + 3;
        if (v68[2] != 101)
        {
          goto LABEL_146;
        }

        break;
      case 'n':
        LOWORD(v76.__r_.__value_.__l.__data_) = 0;
        sub_298B8BEE4(a2, &v76);
        sub_298B88E18(&v76);
        v70 = a1[3];
        v71 = a1[4];
        if (v70 == v71)
        {
          goto LABEL_146;
        }

        a1[3] = v70 + 1;
        if (*v70 != 117)
        {
          goto LABEL_146;
        }

        if (v70 + 1 == v71)
        {
          goto LABEL_146;
        }

        a1[3] = v70 + 2;
        if (v70[1] != 108)
        {
          goto LABEL_146;
        }

        if (v70 + 2 == v71)
        {
          goto LABEL_146;
        }

        a1[3] = v70 + 3;
        if (v70[2] != 108)
        {
          goto LABEL_146;
        }

        break;
      default:
        goto LABEL_146;
    }

LABEL_145:
    v12 = 1;
    goto LABEL_77;
  }

  if (v10 == 34)
  {
    memset(&__s1, 0, sizeof(__s1));
    v11 = sub_298B8BF70(a1, &__s1);
    v12 = v11;
    if (!v11)
    {
LABEL_75:
      if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s1.__r_.__value_.__l.__data_);
      }

      goto LABEL_77;
    }

    __p = __s1;
    memset(&__s1, 0, sizeof(__s1));
    size = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = &__p;
    v15 = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v16 = 0;
      while ((p_p->__r_.__value_.__s.__data_[v16] & 0x80000000) == 0)
      {
        if (size == ++v16)
        {
          goto LABEL_19;
        }
      }

      v76.__r_.__value_.__r.__words[0] = p_p;
      v43 = sub_298B84A30(&v76, p_p + size);
      v15 = __p.__r_.__value_.__r.__words[0];
      if (!v43)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &__p;
        }

        else
        {
          v44 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v45 = __p.__r_.__value_.__l.__size_;
        }

        sub_298B88F28(v44, v45, &v76);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v76;
        v15 = v76.__r_.__value_.__r.__words[0];
      }
    }

LABEL_19:
    v17 = *&__p.__r_.__value_.__r.__words[1];
    memset(&__p, 0, sizeof(__p));
    v18 = *a2;
    if (v18 == 8)
    {
      v73 = v17;
      sub_298B8A314(a2 + 1);
    }

    else if (v18 == 7)
    {
      v73 = v17;
      sub_298B8A370(a2 + 1);
    }

    else
    {
      if (v18 != 6 || (*(a2 + 31) & 0x80000000) == 0)
      {
LABEL_73:
        *a2 = 6;
        *(a2 + 1) = v15;
        *(a2 + 1) = v17;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_75;
      }

      v73 = v17;
      operator delete(*(a2 + 1));
    }

    v17 = v73;
    goto LABEL_73;
  }

  v41 = (v10 - 43);
  if (v41 > 0x3B)
  {
LABEL_146:
    sub_298B8B6E4(a1);
  }

  if (v41 == 48)
  {
    v42 = *a2;
    if (v42 == 8)
    {
      sub_298B8A314(a2 + 1);
    }

    else if (v42 == 7)
    {
      sub_298B8A370(a2 + 1);
    }

    else if (v42 == 6 && *(a2 + 31) < 0)
    {
      operator delete(*(a2 + 1));
    }

    *(a2 + 1) = 0;
    *a2 = 8;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    v20 = a1[3];
    for (k = a1[4]; v20 != k; a1[3] = v20)
    {
      v49 = *v20;
      v7 = v49 > 0x20;
      v50 = (1 << v49) & 0x100002600;
      if (v7 || v50 == 0)
      {
        break;
      }

      ++v20;
    }

    if (v20 == k || *v20 != 93)
    {
      v52 = 0;
      v53 = 0;
      while (1)
      {
        if (v53 >= v52)
        {
          v54 = sub_298B8CF54(a2 + 1);
        }

        else
        {
          *v53 = 0;
          v54 = v53 + 16;
        }

        *(a2 + 2) = v54;
        v55 = sub_298B881B4(a1, v54 - 16);
        v12 = v55;
        if (!v55)
        {
          goto LABEL_77;
        }

        v66 = a1[3];
        v65 = a1[4];
        while (v66 != v65)
        {
          v56 = *v66;
          v7 = v56 > 0x20;
          v57 = (1 << v56) & 0x100002600;
          if (v7 || v57 == 0)
          {
            break;
          }

          a1[3] = ++v66;
        }

        if (v66 == v65)
        {
          goto LABEL_146;
        }

        v62 = v66 + 1;
        a1[3] = v66 + 1;
        v67 = *v66;
        if (v67 != 44)
        {
          break;
        }

        while (v62 != v65)
        {
          v59 = *v62;
          v7 = v59 > 0x20;
          v60 = (1 << v59) & 0x100002600;
          if (v7 || v60 == 0)
          {
            break;
          }

          a1[3] = ++v62;
        }

        v53 = *(a2 + 2);
        v52 = *(a2 + 3);
      }

      if (v67 == 93)
      {
        goto LABEL_77;
      }

      goto LABEL_146;
    }

    goto LABEL_40;
  }

  if (v41 == 59)
  {
    v46 = *a2;
    if (v46 == 8)
    {
      sub_298B8A314(a2 + 1);
    }

    else if (v46 == 7)
    {
      sub_298B8A370(a2 + 1);
    }

    else if (v46 == 6 && *(a2 + 31) < 0)
    {
      operator delete(*(a2 + 1));
    }

    *a2 = 1;
    *(a2 + 8) = 0;
    v63 = a1[3];
    v64 = a1[4];
    if (v63 == v64)
    {
      goto LABEL_146;
    }

    a1[3] = v63 + 1;
    if (*v63 != 97)
    {
      goto LABEL_146;
    }

    if (v63 + 1 == v64)
    {
      goto LABEL_146;
    }

    a1[3] = v63 + 2;
    if (v63[1] != 108)
    {
      goto LABEL_146;
    }

    if (v63 + 2 == v64)
    {
      goto LABEL_146;
    }

    a1[3] = v63 + 3;
    if (v63[2] != 115)
    {
      goto LABEL_146;
    }

    if (v63 + 3 == v64)
    {
      goto LABEL_146;
    }

    a1[3] = v63 + 4;
    if (v63[3] != 101)
    {
      goto LABEL_146;
    }

    goto LABEL_145;
  }

  if (((1 << (v10 - 43)) & 0x400000004007FEDLL) == 0)
  {
    goto LABEL_146;
  }

  v72 = *MEMORY[0x29EDCA608];

  return sub_298B8C100(a1, v10, a2);
}

uint64_t sub_298B88D94(uint64_t a1)
{
  v2 = *(a1 + 24);
  v1 = *(a1 + 32);
  if (v2 == v1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *v2;
    v4 = v3 > 0x20;
    v5 = (1 << v3) & 0x100002600;
    if (v4 || v5 == 0)
    {
      break;
    }

    *(a1 + 24) = ++v2;
    if (v2 == v1)
    {
      return 1;
    }
  }

  if (v2 != v1)
  {
    sub_298B8B6E4(a1);
  }

  return 1;
}

unsigned __int16 *sub_298B88E18(unsigned __int16 *result)
{
  v1 = *result;
  if (v1 == 8)
  {
    v2 = result;
    sub_298B8A314(result + 4);
    return v2;
  }

  if (v1 == 7)
  {
    v2 = result;
    sub_298B8A370(result + 1);
    return v2;
  }

  if (v1 == 6 && *(result + 31) < 0)
  {
    v3 = result;
    operator delete(*(result + 1));
    return v3;
  }

  return result;
}

BOOL sub_298B88E98(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    return 1;
  }

  v3 = 0;
  while ((a1[v3] & 0x80000000) == 0)
  {
    if (a2 == ++v3)
    {
      return 1;
    }
  }

  v8 = a1;
  v7 = sub_298B84A30(&v8, &a1[a2]);
  result = v7 != 0;
  if (!v7)
  {
    if (a3)
    {
      *a3 = v8 - a1;
    }
  }

  return result;
}

void sub_298B88F28(unsigned __int8 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __p = 0;
  v24 = 0;
  v25 = 0;
  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v4 = 0;
  v5 = 0;
  v21 = 0;
  v22 = a1;
  sub_298B84B58(&v22, a1, &v21, 0, 1, 0);
  if (v21 >> 2)
  {
    sub_298B8D40C(&__p, v21 >> 2);
    v5 = __p;
    v4 = v24;
  }

  v6 = v4 - v5;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_298ADDDA0();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a3 + 23) = v6;
  if (v4 == v5)
  {
    *(a3 + v6) = 0;
    v7 = __p;
    v8 = *(a3 + 23);
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v9 = v24 - v7;
    v10 = *a3;
    v11 = *(a3 + 8);
    if (v24 - v7 < 1)
    {
      goto LABEL_40;
    }

    goto LABEL_15;
  }

  bzero(a3, v6);
  *(a3 + v6) = 0;
  v7 = __p;
  v8 = *(a3 + 23);
  if (v8 < 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v9 = v24 - v7;
  v10 = a3;
  v11 = v8;
  if (v24 - v7 >= 1)
  {
LABEL_15:
    v12 = (v7 + v9);
    v13 = v10 + v11;
    while (1)
    {
      v17 = *v7++;
      v16 = v17;
      if (v17 >> 11 == 27)
      {
        goto LABEL_39;
      }

      if (v16 >= 0x110000)
      {
        v15 = 65533;
      }

      else
      {
        v15 = v16;
      }

      if (v16 >= 0x110000)
      {
        v18 = 3;
      }

      else
      {
        v18 = 4;
      }

      if (v16 < 0x10000)
      {
        v15 = v16;
        v18 = 3;
      }

      if (v16 < 0x800)
      {
        v15 = v16;
        v18 = 2;
      }

      if (v16 >= 0x80)
      {
        v19 = v18;
      }

      else
      {
        v15 = v16;
        v19 = 1;
      }

      v14 = v10 + v19;
      if (v14 > v13)
      {
LABEL_39:
        LOBYTE(v8) = *(a3 + 23);
        break;
      }

      if (v19 > 2u)
      {
        if (v19 != 3)
        {
          *--v14 = v15 & 0x3F | 0x80;
          v15 >>= 6;
        }

        *--v14 = v15 & 0x3F | 0x80;
        v15 >>= 6;
      }

      else if (v19 == 1)
      {
        goto LABEL_18;
      }

      *--v14 = v15 & 0x3F | 0x80;
      v15 >>= 6;
LABEL_18:
      *(v14 - 1) = byte_298D1AA40[v19] | v15;
      v10 = v14 - 1 + v19;
      if (v7 >= v12)
      {
        goto LABEL_39;
      }
    }
  }

LABEL_40:
  if ((v8 & 0x80u) == 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  std::string::resize(a3, v10 - v20, 0);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }
}

void *sub_298B891F0(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *a2;
  if (v4 > 4)
  {
    if (v4 - 5 >= 2)
    {
      v24 = a2;
      v25 = a1;
      if (v4 == 7)
      {
        sub_298B89BA0(a1);
        sub_298B8D5FC(&v24);
        return sub_298B89C2C(a1);
      }

      else
      {
        sub_298B89A80(a1);
        sub_298B8D5A0(&v24);
        return sub_298B89B0C(a1);
      }
    }

    else
    {
      if (*(*a1 + 8 * *(a1 + 8) - 4) == 1)
      {
        v9 = *(a1 + 160);
        v10 = v9[4];
        if (v10 >= v9[3])
        {
          sub_298B9BC1C(v9, 44);
        }

        else
        {
          v9[4] = v10 + 1;
          *v10 = 44;
        }
      }

      if (*(*a1 + 8 * *(a1 + 8) - 8) == 1)
      {
        sub_298B897A4(a1);
      }

      sub_298B898CC(a1);
      *(*a1 + 8 * *(a1 + 8) - 4) = 1;
      v12 = *(a1 + 160);
      v13 = *a2;
      if (v13 == 5)
      {
        v14 = *(a2 + 1);
        v11 = *(a2 + 2);
      }

      else if (v13 == 6)
      {
        v20 = *(a2 + 1);
        v19 = a2 + 4;
        v18 = v20;
        v21 = *(v19 + 23);
        if (v21 >= 0)
        {
          v14 = v19;
        }

        else
        {
          v14 = v18;
        }

        v22 = *(v19 + 1);
        if (v21 >= 0)
        {
          v11 = *(v19 + 23);
        }

        else
        {
          v11 = *(v19 + 1);
        }
      }

      else
      {
        v14 = 0;
      }

      return sub_298B89544(v12, v14, v11);
    }
  }

  else if (v4 - 2 >= 3)
  {
    if (*a2)
    {
      sub_298B894A0(a1);
      v15 = *(a1 + 160);
      if (((*a2 == 1) & a2[4]) != 0)
      {
        v16 = "true";
      }

      else
      {
        v16 = "false";
      }
    }

    else
    {
      sub_298B894A0(a1);
      v15 = *(a1 + 160);
      v16 = "null";
    }

    return sub_298B00584(v15, v16);
  }

  else
  {
    sub_298B894A0(a1);
    v5 = *a2;
    v6 = *(a1 + 160);
    if (v5 == 3)
    {
      v7 = sub_298B87A10(a2);

      return sub_298B9B068(v6, v7);
    }

    else if (v5 == 4)
    {
      v17 = *(a2 + 1);

      return sub_298B9B00C(v6, v17);
    }

    else
    {
      v23 = *(a2 + 1);
      if (v5 != 2)
      {
        v23 = 0.0;
      }

      v24 = &unk_2A1F1DCF8;
      v25 = "%.*g";
      v26 = 17;
      v27 = v23;
      return sub_298B9B1F8(v6, &v24);
    }
  }
}

void *sub_298B894A0(uint64_t a1)
{
  if (*(*a1 + 8 * *(a1 + 8) - 4) == 1)
  {
    v2 = *(a1 + 160);
    v3 = v2[4];
    if (v3 >= v2[3])
    {
      sub_298B9BC1C(v2, 44);
    }

    else
    {
      v2[4] = v3 + 1;
      *v3 = 44;
    }
  }

  if (*(*a1 + 8 * *(a1 + 8) - 8) == 1)
  {
    sub_298B897A4(a1);
  }

  result = sub_298B898CC(a1);
  *(*a1 + 8 * *(a1 + 8) - 4) = 1;
  return result;
}

void *sub_298B89544(void *result, char *a2, uint64_t a3)
{
  v6 = result;
  v7 = result[4];
  if (v7 >= result[3])
  {
    result = sub_298B9BC1C(result, 34);
  }

  else
  {
    result[4] = v7 + 1;
    *v7 = 34;
  }

  for (; a3; --a3)
  {
    v8 = *a2;
    if (v8 == 92 || v8 == 34)
    {
      v9 = v6[4];
      if (v9 >= v6[3])
      {
        v15 = *a2;
        result = sub_298B9BC1C(v6, 92);
        LOBYTE(v8) = v15;
      }

      else
      {
        v6[4] = v9 + 1;
        *v9 = 92;
      }
    }

    else if (v8 < 0x20)
    {
      v12 = v6[4];
      if (v12 >= v6[3])
      {
        v17 = *a2;
        result = sub_298B9BC1C(v6, 92);
        v8 = v17;
      }

      else
      {
        v6[4] = v12 + 1;
        *v12 = 92;
      }

      v14 = v6[3];
      v13 = v6[4];
      switch(v8)
      {
        case 0xD:
          if (v13 < v14)
          {
            v6[4] = v13 + 1;
            *v13 = 114;
            goto LABEL_7;
          }

          v11 = v6;
          LOBYTE(v8) = 114;
          break;
        case 0xA:
          if (v13 < v14)
          {
            v6[4] = v13 + 1;
            *v13 = 110;
            goto LABEL_7;
          }

          v11 = v6;
          LOBYTE(v8) = 110;
          break;
        case 9:
          if (v13 < v14)
          {
            v6[4] = v13 + 1;
            *v13 = 116;
            goto LABEL_7;
          }

          v11 = v6;
          LOBYTE(v8) = 116;
          break;
        default:
          if (v13 >= v14)
          {
            v18 = v8;
            sub_298B9BC1C(v6, 117);
            v8 = v18;
          }

          else
          {
            v6[4] = v13 + 1;
            *v13 = 117;
          }

          v3 = v3 & 0xFFFFFFFFFFFFFF00 | 1;
          result = sub_298B8F608(v6, v8, 1, 4uLL, v3);
          goto LABEL_7;
      }

      goto LABEL_14;
    }

    v10 = v6[4];
    if (v10 >= v6[3])
    {
      v11 = v6;
LABEL_14:
      result = sub_298B9BC1C(v11, v8);
      goto LABEL_7;
    }

    v6[4] = v10 + 1;
    *v10 = v8;
LABEL_7:
    ++a2;
  }

  v16 = v6[4];
  if (v16 >= v6[3])
  {

    return sub_298B9BC1C(v6, 34);
  }

  else
  {
    v6[4] = v16 + 1;
    *v16 = 34;
  }

  return result;
}

uint64_t sub_298B897A4(uint64_t result)
{
  if (*(result + 168))
  {
    v1 = result;
    v2 = *(result + 160);
    v3 = *(v2 + 32);
    if (v3 >= *(v2 + 24))
    {
      v7 = result;
      while (1)
      {
        v8 = *(v2 + 16);
        if (v8)
        {
          *(v2 + 32) = v8;
          sub_298B9BB84(v2);
          v3 = *(v2 + 32);
LABEL_16:
          v1 = v7;
          goto LABEL_3;
        }

        if (!*(v2 + 56))
        {
          break;
        }

        sub_298B9AE98(v2);
        v3 = *(v2 + 32);
        if (v3 < *(v2 + 24))
        {
          goto LABEL_16;
        }
      }

      sub_298B9BB84(v2);
      v1 = v7;
    }

    else
    {
LABEL_3:
      *(v2 + 32) = v3 + 1;
      *v3 = 10;
    }

    result = *(v1 + 160);
    v4 = *(v1 + 172);
    if (v4 >= 0x50)
    {
      do
      {
        if (v4 >= 0x4F)
        {
          v6 = 79;
        }

        else
        {
          v6 = v4;
        }

        result = sub_298B9BCEC(result, "                                                                                ", v6);
        v4 -= v6;
      }

      while (v4);
    }

    else
    {
      v5 = *(v1 + 172);

      return sub_298B9BCEC(result, "                                                                                ", v5);
    }
  }

  return result;
}

void *sub_298B898CC(void *result)
{
  if (result[19])
  {
    v1 = result;
    v2 = result[20];
    if (*(v1 + 168))
    {
        v9 = *(v1 + 160);
        if (v8 == -1)
        {
          break;
        }

        v4 = *(v1 + 152);
        if (v4 > v8)
        {
          v4 = v8;
        }

        v5 = sub_298B63DC4(v9, *(v1 + 144), v4);
        sub_298B00584(v5, "* /");
        v6 = *(v1 + 152);
        if (v6 >= v8 + 2)
        {
          v7 = v8 + 2;
        }

        else
        {
          v7 = *(v1 + 152);
        }

        *(v1 + 144) += v7;
        *(v1 + 152) = v6 - v7;
        if (v6 <= v8 + 2)
        {
          goto LABEL_16;
        }
      }

      sub_298B63DC4(v9, *(v1 + 144), *(v1 + 152));
      *(v1 + 144) = "";
      *(v1 + 152) = 0;
    }

LABEL_16:
    if (*(v1 + 168))
    {
      v10 = " */";
    }

    else
    {
      v10 = "*/";
    }

    result = sub_298B00584(*(v1 + 160), v10);
    v11 = *(v1 + 8);
    if (v11 < 2 || *(*v1 + 8 * v11 - 8))
    {

      return sub_298B897A4(v1);
    }

    else if (*(v1 + 168))
    {
      result = *(v1 + 160);
      v12 = result[4];
      if (v12 >= result[3])
      {

        return sub_298B9BC1C(result, 32);
      }

      else
      {
        result[4] = v12 + 1;
        *v12 = 32;
      }
    }
  }

  return result;
}

void *sub_298B89A80(uint64_t a1)
{
  sub_298B894A0(a1);
  sub_298AEF5BC(a1);
  *(*a1 + 8 * *(a1 + 8) - 8) = 1;
  *(a1 + 172) += *(a1 + 168);
  result = *(a1 + 160);
  v3 = result[4];
  if (v3 >= result[3])
  {

    return sub_298B9BC1C(result, 91);
  }

  else
  {
    result[4] = v3 + 1;
    *v3 = 91;
  }

  return result;
}

uint64_t sub_298B89B0C(uint64_t result)
{
  *(result + 172) -= *(result + 168);
  if (*(*result + 8 * *(result + 8) - 4) == 1)
  {
    v3 = result;
    sub_298B897A4(result);
    result = v3;
  }

  v1 = *(result + 160);
  v2 = *(v1 + 32);
  if (v2 >= *(v1 + 24))
  {
    v4 = result;
    sub_298B9BC1C(*(result + 160), 93);
    result = v4;
  }

  else
  {
    *(v1 + 32) = v2 + 1;
    *v2 = 93;
  }

  --*(result + 8);
  return result;
}

void *sub_298B89BA0(uint64_t a1)
{
  sub_298B894A0(a1);
  sub_298AEF5BC(a1);
  *(*a1 + 8 * *(a1 + 8) - 8) = 2;
  *(a1 + 172) += *(a1 + 168);
  result = *(a1 + 160);
  v3 = result[4];
  if (v3 >= result[3])
  {

    return sub_298B9BC1C(result, 123);
  }

  else
  {
    result[4] = v3 + 1;
    *v3 = 123;
  }

  return result;
}

uint64_t sub_298B89C2C(uint64_t result)
{
  *(result + 172) -= *(result + 168);
  if (*(*result + 8 * *(result + 8) - 4) == 1)
  {
    v3 = result;
    sub_298B897A4(result);
    result = v3;
  }

  v1 = *(result + 160);
  v2 = *(v1 + 32);
  if (v2 >= *(v1 + 24))
  {
    v4 = result;
    sub_298B9BC1C(*(result + 160), 125);
    result = v4;
  }

  else
  {
    *(v1 + 32) = v2 + 1;
    *v2 = 125;
  }

  --*(result + 8);
  return result;
}

void sub_298B89CC0(uint64_t a1, char *a2, unint64_t a3)
{
  if (*(*a1 + 8 * *(a1 + 8) - 4) == 1)
  {
    v6 = *(a1 + 160);
    v7 = v6[4];
    if (v7 >= v6[3])
    {
      sub_298B9BC1C(v6, 44);
    }

    else
    {
      v6[4] = v7 + 1;
      *v7 = 44;
    }
  }

  if (*(a1 + 168))
  {
    for (i = *(a1 + 160); ; sub_298B9AE98(i))
    {
      v9 = *(i + 32);
      if (v9 < *(i + 24))
      {
        goto LABEL_7;
      }

      v25 = *(i + 16);
      if (v25)
      {
        *(i + 32) = v25;
        sub_298B9BB84(i);
        v9 = *(i + 32);
LABEL_7:
        *(i + 32) = v9 + 1;
        *v9 = 10;
        goto LABEL_8;
      }

      if (!*(i + 56))
      {
        break;
      }
    }

    LOBYTE(__p[0]) = 10;
    sub_298B9BB84(i);
LABEL_8:
    v10 = *(a1 + 160);
    v11 = *(a1 + 172);
    if (v11 >= 0x50)
    {
      do
      {
        if (v11 >= 0x4F)
        {
          v12 = 79;
        }

        else
        {
          v12 = v11;
        }

        v10 = sub_298B9BCEC(v10, "                                                                                ", v12);
        v11 -= v12;
      }

      while (v11);
    }

    else
    {
      sub_298B9BCEC(v10, "                                                                                ", *(a1 + 172));
    }
  }

  sub_298B898CC(a1);
  v13 = *(a1 + 8);
  v14 = (*a1 + 8 * v13);
  *(v14 - 4) = 1;
  if (v13 >= *(a1 + 12))
  {
    sub_298AEF5F0(a1);
    v15 = *(a1 + 8);
  }

  else
  {
    *v14 = 0;
    v15 = *(a1 + 8) + 1;
    *(a1 + 8) = v15;
  }

  *(*a1 + 8 * v15 - 8) = 0;
  if (!a3)
  {
    goto LABEL_20;
  }

  v16 = 0;
  while ((a2[v16] & 0x80000000) == 0)
  {
    if (a3 == ++v16)
    {
      goto LABEL_20;
    }
  }

  __p[0] = a2;
  if (sub_298B84A30(__p, &a2[a3]))
  {
LABEL_20:
    sub_298B89544(*(a1 + 160), a2, a3);
  }

  else
  {
    v21 = *(a1 + 160);
    sub_298B88F28(a2, a3, __p);
    if (v28 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if (v28 >= 0)
    {
      v23 = v28;
    }

    else
    {
      v23 = __p[1];
    }

    sub_298B89544(v21, v22, v23);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }
  }

  for (j = *(a1 + 160); ; sub_298B9AE98(j))
  {
    v18 = *(j + 32);
    if (v18 < *(j + 24))
    {
      goto LABEL_23;
    }

    v24 = *(j + 16);
    if (v24)
    {
      *(j + 32) = v24;
      sub_298B9BB84(j);
      v18 = *(j + 32);
LABEL_23:
      *(j + 32) = v18 + 1;
      *v18 = 58;
      goto LABEL_24;
    }

    if (!*(j + 56))
    {
      break;
    }
  }

  LOBYTE(__p[0]) = 58;
  sub_298B9BB84(j);
LABEL_24:
  if (*(a1 + 168))
  {
    for (k = *(a1 + 160); ; sub_298B9AE98(k))
    {
      v20 = *(k + 32);
      if (v20 < *(k + 24))
      {
        goto LABEL_27;
      }

      v26 = *(k + 16);
      if (v26)
      {
        *(k + 32) = v26;
        sub_298B9BB84(k);
        v20 = *(k + 32);
LABEL_27:
        *(k + 32) = v20 + 1;
        *v20 = 32;
        return;
      }

      if (!*(k + 56))
      {
        break;
      }
    }

    LOBYTE(__p[0]) = 32;
    sub_298B9BB84(k);
  }
}

uint64_t sub_298B89FD8(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v13 = 0;
    result = 0;
    goto LABEL_10;
  }

  v6 = *a1;
  v7 = sub_298B97534(*a2, *a2 + *(a2 + 8));
  v8 = v4 - 1;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (!v10)
  {
    v16 = 0;
    for (i = 1; ; ++i)
    {
      v22 = v7 & v8;
      v13 = v6 + 56 * (v7 & v8);
      v23 = *(v13 + 8);
      if (v23 == -2)
      {
        if (v9 == -2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v23 == -1)
        {
LABEL_34:
          if (v16)
          {
            v25 = v16;
          }

          else
          {
            v25 = v13;
          }

          if (v9 == -1)
          {
            result = 1;
          }

          else
          {
            v13 = v25;
            result = 0;
          }

          goto LABEL_10;
        }

        if (!*(v13 + 16))
        {
          goto LABEL_9;
        }
      }

      if (v16)
      {
        v24 = 0;
      }

      else
      {
        v24 = v23 == -2;
      }

      if (v24)
      {
        v16 = v6 + 56 * v22;
      }

      v7 = i + v22;
    }
  }

  if (v9 == -2)
  {
    for (j = 1; ; ++j)
    {
      v12 = v7 & v8;
      v13 = v6 + 56 * (v7 & v8);
      v14 = *(v13 + 8);
      if (v14 == -2)
      {
        break;
      }

      if (v14 == -1)
      {
        v16 = 0;
        goto LABEL_34;
      }

      if (v10 == *(v13 + 16) && !memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10))
      {
        break;
      }

      v7 = j + v12;
    }
  }

  else
  {
    v16 = 0;
    for (k = 1; ; ++k)
    {
      v18 = v7 & v8;
      v13 = v6 + 56 * (v7 & v8);
      v19 = *(v13 + 8);
      if (v19 != -2)
      {
        if (v19 == -1)
        {
          goto LABEL_34;
        }

        if (v10 == *(v13 + 16) && !memcmp(v9, *(v13 + 8), v10))
        {
          break;
        }
      }

      if (v16)
      {
        v20 = 0;
      }

      else
      {
        v20 = v19 == -2;
      }

      if (v20)
      {
        v16 = v6 + 56 * v18;
      }

      v7 = k + v18;
    }
  }

LABEL_9:
  result = 1;
LABEL_10:
  *a3 = v13;
  return result;
}

void sub_298B8A29C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  JUMPOUT(0x29C2945F0);
}

void **sub_298B8A314(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_298B88E18(v3 - 16);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_298B8A370(void *a1)
{
  sub_298B8A3A4(a1);
  MEMORY[0x29C2945E0](*a1, 8);
  return a1;
}

void sub_298B8A3A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 56 * v1;
    v3 = *a1 + 24;
    do
    {
      if (*(v3 - 16) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        sub_298B8802C(v3);
      }

      v4 = *(v3 - 24);
      *(v3 - 24) = 0;
      if (v4)
      {
        sub_298B8A29C(v4);
      }

      v3 += 56;
      v2 -= 56;
    }

    while (v2);
  }
}

uint64_t *sub_298B8A40C(uint64_t *result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
LABEL_2:
  v161 = a2 - 1;
  v164 = a2;
  v155 = a2 - 3;
  v156 = a2 - 2;
  v7 = v6;
  while (1)
  {
    v6 = v7;
    v8 = a2 - v7;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3:

          return sub_298B8B09C(v7, v7 + 1, v161);
        case 4:

          return sub_298B8B21C(v7, v7 + 1, v7 + 2, v161);
        case 5:

          return sub_298B8B344(v7, v7 + 1, v7 + 2, v7 + 3, v161);
      }

      goto LABEL_10;
    }

    if (v8 < 2)
    {
      return result;
    }

    if (v8 == 2)
    {
      break;
    }

LABEL_10:
    if (v8 <= 23)
    {
      v78 = v7 + 1;
      v80 = v7 == a2 || v78 == a2;
      if ((a4 & 1) == 0)
      {
        if (!v80)
        {
          do
          {
            v145 = v6;
            v6 = v78;
            v147 = *v145;
            v146 = v145[1];
            v148 = *(v146 + 16);
            v149 = *(*v145 + 16);
            if (v149 >= v148)
            {
              v150 = *(v146 + 16);
            }

            else
            {
              v150 = *(*v145 + 16);
            }

            if (v150 && (result = memcmp(*(v146 + 8), *(v147 + 8), v150), result))
            {
              if ((result & 0x80000000) != 0)
              {
                do
                {
LABEL_308:
                  while (1)
                  {
                    v151 = v145;
                    v152 = *--v145;
                    v145[2] = v147;
                    v147 = v152;
                    v153 = *(v152 + 16);
                    v154 = v153 >= v148 ? v148 : v153;
                    if (!v154)
                    {
                      break;
                    }

                    result = memcmp(*(v146 + 8), *(v147 + 8), v154);
                    if (!result)
                    {
                      break;
                    }

                    if (((result >> 31) & 0x80000000) == 0)
                    {
                      goto LABEL_296;
                    }
                  }
                }

                while (v148 < v153);
LABEL_296:
                *v151 = v146;
              }
            }

            else if (v148 < v149)
            {
              goto LABEL_308;
            }

            v78 = v6 + 1;
          }

          while (v6 + 1 != v164);
        }

        return result;
      }

      if (v80)
      {
        return result;
      }

      v81 = 0;
      v82 = v7;
      while (1)
      {
        v84 = v82;
        v82 = v78;
        v86 = *v84;
        v85 = v84[1];
        v87 = *(v85 + 16);
        v88 = *(*v84 + 16);
        if (v88 >= v87)
        {
          v89 = *(v85 + 16);
        }

        else
        {
          v89 = *(*v84 + 16);
        }

        if (v89 && (result = memcmp(*(v85 + 8), *(v86 + 8), v89), result))
        {
          if ((result & 0x80000000) != 0)
          {
            goto LABEL_198;
          }
        }

        else if (v87 < v88)
        {
LABEL_198:
          for (i = v81; ; i -= 8)
          {
            while (1)
            {
              *(v6 + i + 8) = v86;
              if (!i)
              {
                v83 = v6;
                goto LABEL_188;
              }

              v83 = v84;
              v86 = *(v6 + i - 8);
              v91 = *(v86 + 16);
              v92 = v91 >= v87 ? v87 : *(v86 + 16);
              if (!v92)
              {
                break;
              }

              result = memcmp(*(v85 + 8), *(v86 + 8), v92);
              if (!result)
              {
                break;
              }

              v84 = v83 - 1;
              i -= 8;
              if (((result >> 31) & 0x80000000) == 0)
              {
                goto LABEL_188;
              }
            }

            if (v87 >= v91)
            {
              break;
            }

            v84 = v83 - 1;
          }

          v83 = (v6 + i);
LABEL_188:
          *v83 = v85;
        }

        v78 = v82 + 1;
        v81 += 8;
        if (v82 + 1 == v164)
        {
          return result;
        }
      }
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return result;
      }

      v93 = (v8 - 2) >> 1;
      v94 = v93;
      while (1)
      {
        v95 = v94;
        if (v93 < v94)
        {
          goto LABEL_212;
        }

        v159 = v94;
        v96 = (2 * v94) | 1;
        v97 = &v6[v96];
        if (2 * v94 + 2 < v8)
        {
          v98 = v97[1];
          v99 = *(*v97 + 16);
          v100 = *(v98 + 16);
          if (v100 >= v99)
          {
            v101 = *(*v97 + 16);
          }

          else
          {
            v101 = *(v98 + 16);
          }

          if (v101)
          {
            result = memcmp(*(*v97 + 8), *(v98 + 8), v101);
            if (result)
            {
              v93 = (v8 - 2) >> 1;
              if ((result & 0x80000000) == 0)
              {
                goto LABEL_222;
              }

LABEL_221:
              ++v97;
              v96 = 2 * v95 + 2;
              goto LABEL_222;
            }
          }

          v47 = v99 >= v100;
          v93 = (v8 - 2) >> 1;
          if (!v47)
          {
            goto LABEL_221;
          }
        }

LABEL_222:
        v102 = &v6[v95];
        v103 = *v97;
        v104 = *v102;
        v105 = *(*v102 + 16);
        v157 = *(*v97 + 16);
        if (v105 >= v157)
        {
          v106 = *(*v97 + 16);
        }

        else
        {
          v106 = *(*v102 + 16);
        }

        if (v106)
        {
          result = memcmp(*(v103 + 8), *(v104 + 8), v106);
          if (result)
          {
            if ((result & 0x80000000) == 0)
            {
              goto LABEL_230;
            }

            goto LABEL_212;
          }
        }

        if (v157 >= v105)
        {
LABEL_230:
          v162 = v104;
          while (1)
          {
            v108 = v97;
            *v102 = v103;
            if (v93 < v96)
            {
LABEL_211:
              *v108 = v162;
              v95 = v159;
              break;
            }

            v109 = 2 * v96;
            v96 = (2 * v96) | 1;
            v97 = &v6[v96];
            v110 = v109 + 2;
            if (v109 + 2 < v8)
            {
              v111 = v97[1];
              v112 = *(*v97 + 16);
              v113 = *(v111 + 16);
              if (v113 >= v112)
              {
                v114 = *(*v97 + 16);
              }

              else
              {
                v114 = *(v111 + 16);
              }

              if (v114)
              {
                result = memcmp(*(*v97 + 8), *(v111 + 8), v114);
                if (result)
                {
                  v93 = (v8 - 2) >> 1;
                  if ((result & 0x80000000) == 0)
                  {
                    goto LABEL_242;
                  }

LABEL_241:
                  ++v97;
                  v96 = v110;
                  goto LABEL_242;
                }
              }

              v47 = v112 >= v113;
              v93 = (v8 - 2) >> 1;
              if (!v47)
              {
                goto LABEL_241;
              }
            }

LABEL_242:
            v103 = *v97;
            v115 = *(*v97 + 16);
            if (v105 >= v115)
            {
              v116 = *(*v97 + 16);
            }

            else
            {
              v116 = v105;
            }

            if (v116 && (result = memcmp(*(v103 + 8), *(v162 + 8), v116), result))
            {
              v107 = (result >> 31) | 1;
            }

            else if (v115 == v105)
            {
              v107 = 0;
            }

            else
            {
              if (v115 < v105)
              {
                goto LABEL_211;
              }

              v107 = 1;
            }

            v102 = v108;
            if (v107 < 0)
            {
              goto LABEL_211;
            }
          }
        }

LABEL_212:
        v94 = v95 - 1;
        if (!v95)
        {
          v117 = v164;
          while (1)
          {
            v119 = 0;
            v163 = *v6;
            v165 = v117;
            v120 = v6;
            do
            {
              v121 = v120;
              v122 = &v120[v119];
              v120 = v122 + 1;
              v123 = 2 * v119;
              v119 = (2 * v119) | 1;
              v124 = v123 + 2;
              if (v123 + 2 < v8)
              {
                v127 = v122[2];
                v126 = v122 + 2;
                v125 = v127;
                v128 = *(v126 - 1);
                v129 = *(v128 + 16);
                v130 = *(v127 + 16);
                if (v130 >= v129)
                {
                  v131 = *(v128 + 16);
                }

                else
                {
                  v131 = v130;
                }

                if (v131 && (result = memcmp(*(v128 + 8), *(v125 + 8), v131), result))
                {
                  if ((result & 0x80000000) != 0)
                  {
                    goto LABEL_261;
                  }
                }

                else if (v129 < v130)
                {
LABEL_261:
                  v120 = v126;
                  v119 = v124;
                }
              }

              *v121 = *v120;
            }

            while (v119 <= ((v8 - 2) >> 1));
            v132 = v165 - 1;
            if (v120 == v165 - 1)
            {
              v117 = v165 - 1;
              *v120 = v163;
            }

            else
            {
              *v120 = *v132;
              v117 = v165 - 1;
              *v132 = v163;
              v133 = (v120 - v6 + 8) >> 3;
              v118 = v133 < 2;
              v134 = v133 - 2;
              if (!v118)
              {
                v135 = v134 >> 1;
                v136 = &v6[v134 >> 1];
                v137 = *v136;
                v138 = *v120;
                v139 = *(*v136 + 16);
                v140 = *(*v120 + 16);
                if (v140 >= v139)
                {
                  v141 = *(*v136 + 16);
                }

                else
                {
                  v141 = *(*v120 + 16);
                }

                if (v141 && (result = memcmp(*(v137 + 8), *(v138 + 8), v141), result))
                {
                  if ((result & 0x80000000) != 0)
                  {
LABEL_285:
                    while (1)
                    {
                      v142 = v136;
                      *v120 = v137;
                      if (!v135)
                      {
                        break;
                      }

                      v135 = (v135 - 1) >> 1;
                      v136 = &v6[v135];
                      v137 = *v136;
                      v143 = *(*v136 + 16);
                      if (v140 >= v143)
                      {
                        v144 = *(*v136 + 16);
                      }

                      else
                      {
                        v144 = v140;
                      }

                      if (v144 && (result = memcmp(*(v137 + 8), *(v138 + 8), v144), result))
                      {
                        v120 = v142;
                        if (((result >> 31) & 0x80000000) == 0)
                        {
                          break;
                        }
                      }

                      else
                      {
                        if (v143 >= v140)
                        {
                          break;
                        }

                        v120 = v142;
                      }
                    }

                    *v142 = v138;
                  }
                }

                else if (v139 < v140)
                {
                  goto LABEL_285;
                }
              }
            }

            v118 = v8-- <= 2;
            if (v118)
            {
              return result;
            }
          }
        }
      }
    }

    if (v8 < 0x81)
    {
      result = sub_298B8B09C(&v7[v8 >> 1], v7, v161);
      --a3;
      v11 = *v7;
      if (a4)
      {
LABEL_22:
        v14 = *(v11 + 16);
        goto LABEL_24;
      }
    }

    else
    {
      sub_298B8B09C(v7, &v7[v8 >> 1], v161);
      v9 = v8 >> 1;
      sub_298B8B09C(v7 + 1, &v7[v9 - 1], v156);
      sub_298B8B09C(v7 + 2, &v7[v9 + 1], v155);
      result = sub_298B8B09C(&v7[v9 - 1], &v7[v9], &v7[v9 + 1]);
      v10 = *v7;
      *v7 = v7[v9];
      v7[v9] = v10;
      --a3;
      v11 = *v7;
      if (a4)
      {
        goto LABEL_22;
      }
    }

    v12 = *(v7 - 1);
    v13 = *(v12 + 16);
    v14 = *(v11 + 16);
    if (v14 >= v13)
    {
      v15 = *(v12 + 16);
    }

    else
    {
      v15 = *(v11 + 16);
    }

    if (!v15 || (result = memcmp(*(v12 + 8), *(v11 + 8), v15), !result))
    {
      if (v13 >= v14)
      {
        goto LABEL_91;
      }

      goto LABEL_24;
    }

    if ((result & 0x80000000) != 0)
    {
LABEL_24:
      for (j = 0; ; j = v17 + 8)
      {
        while (1)
        {
          v17 = j;
          v18 = *(v6 + j + 8);
          v19 = *(v18 + 16);
          v20 = v14 >= v19 ? *(v18 + 16) : v14;
          if (!v20)
          {
            break;
          }

          v21 = memcmp(*(v18 + 8), *(v11 + 8), v20);
          if (!v21)
          {
            break;
          }

          j = v17 + 8;
          if (((v21 >> 31) & 0x80000000) == 0)
          {
            goto LABEL_33;
          }
        }

        if (v19 >= v14)
        {
          break;
        }
      }

LABEL_33:
      v22 = (v6 + v17);
      v23 = v6 + v17 + 8;
      v24 = v161;
      if (v17)
      {
        while (1)
        {
          v27 = v24;
          v28 = *(*v24 + 16);
          if (v14 >= v28)
          {
            v29 = *(*v24 + 16);
          }

          else
          {
            v29 = v14;
          }

          if (v29 && (v30 = memcmp(*(*v24 + 8), *(v11 + 8), v29)) != 0)
          {
            v26 = (v30 >> 31) | 1;
          }

          else if (v28 == v14)
          {
            v26 = 0;
          }

          else
          {
            if (v28 < v14)
            {
              goto LABEL_59;
            }

            v26 = 1;
          }

          v24 = v27 - 1;
          if (v26 < 0)
          {
            goto LABEL_59;
          }
        }
      }

      v25 = v161;
      while (v23 < (v25 + 1))
      {
        v27 = v25;
        v32 = *(*v25 + 16);
        if (v14 >= v32)
        {
          v33 = *(*v25 + 16);
        }

        else
        {
          v33 = v14;
        }

        if (v33 && (v34 = memcmp(*(*v25 + 8), *(v11 + 8), v33)) != 0)
        {
          v31 = (v34 >> 31) | 1;
        }

        else if (v32 == v14)
        {
          v31 = 0;
        }

        else
        {
          if (v32 < v14)
          {
            goto LABEL_59;
          }

          v31 = 1;
        }

        v25 = v27 - 1;
        if (v31 < 0)
        {
          goto LABEL_59;
        }
      }

      v27 = v25 + 1;
LABEL_59:
      if (v23 >= v27)
      {
        goto LABEL_84;
      }

      v158 = a3;
      v35 = *v27;
      v36 = v23;
      v37 = v27;
      while (2)
      {
        *v36 = v35;
        *v37 = v18;
        for (k = v36 + 1; ; k = v36 + 1)
        {
          while (1)
          {
            v36 = k;
            v18 = *k;
            v39 = *(*k + 16);
            v40 = v14 >= v39 ? *(*k + 16) : v14;
            if (!v40)
            {
              break;
            }

            v41 = memcmp(*(v18 + 8), *(v11 + 8), v40);
            if (!v41)
            {
              break;
            }

            k = v36 + 1;
            if (((v41 >> 31) & 0x80000000) == 0)
            {
              goto LABEL_71;
            }
          }

          if (v39 >= v14)
          {
            break;
          }
        }

LABEL_71:
        v42 = v37 - 1;
        while (1)
        {
          v37 = v42;
          v35 = *v42;
          v44 = *(*v42 + 16);
          v45 = v14 >= v44 ? *(*v42 + 16) : v14;
          if (!v45)
          {
            break;
          }

          v46 = memcmp(*(v35 + 8), *(v11 + 8), v45);
          if (!v46)
          {
            break;
          }

          v43 = (v46 >> 31) | 1;
LABEL_73:
          v42 = v37 - 1;
          if (v43 < 0)
          {
            goto LABEL_61;
          }
        }

        if (v44 == v14)
        {
          v43 = 0;
          goto LABEL_73;
        }

        if (v44 >= v14)
        {
          v43 = 1;
          goto LABEL_73;
        }

LABEL_61:
        if (v36 < v37)
        {
          continue;
        }

        break;
      }

      v22 = v36 - 1;
      a3 = v158;
LABEL_84:
      if (v22 != v6)
      {
        *v6 = *v22;
      }

      *v22 = v11;
      v47 = v23 >= v27;
      a2 = v164;
      if (v47)
      {
        v48 = sub_298B8B4A8(v6, v22);
        v7 = v22 + 1;
        result = sub_298B8B4A8(v22 + 1, v164);
        if (result)
        {
          a2 = v22;
          if (v48)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v48)
        {
          goto LABEL_90;
        }
      }

      else
      {
LABEL_90:
        result = sub_298B8A40C(v6, v22, a3, a4 & 1);
        a4 = 0;
        v7 = v22 + 1;
      }
    }

    else
    {
LABEL_91:
      v49 = *(*v161 + 16);
      if (v49 >= v14)
      {
        v50 = v14;
      }

      else
      {
        v50 = *(*v161 + 16);
      }

      if (v50 && (result = memcmp(*(v11 + 8), *(*v161 + 8), v50), result))
      {
        if ((result & 0x80000000) != 0)
        {
          goto LABEL_111;
        }
      }

      else if (v14 < v49)
      {
LABEL_111:
        v55 = v7 + 1;
        while (1)
        {
          v7 = v55;
          v57 = *(*v55 + 16);
          if (v57 >= v14)
          {
            v58 = v14;
          }

          else
          {
            v58 = *(*v55 + 16);
          }

          if (v58 && (result = memcmp(*(v11 + 8), *(*v55 + 8), v58), result))
          {
            v56 = (result >> 31) | 1;
          }

          else if (v14 == v57)
          {
            v56 = 0;
          }

          else
          {
            if (v14 < v57)
            {
              goto LABEL_123;
            }

            v56 = 1;
          }

          v55 = v7 + 1;
          if (v56 < 0)
          {
            goto LABEL_123;
          }
        }
      }

      v51 = v7 + 1;
      do
      {
        v7 = v51;
        if (v51 >= a2)
        {
          break;
        }

        v53 = *(*v51 + 16);
        if (v53 >= v14)
        {
          v54 = v14;
        }

        else
        {
          v54 = *(*v51 + 16);
        }

        if (v54 && (result = memcmp(*(v11 + 8), *(*v51 + 8), v54), result))
        {
          v52 = (result >> 31) | 1;
        }

        else if (v14 == v53)
        {
          v52 = 0;
        }

        else
        {
          if (v14 < v53)
          {
            break;
          }

          v52 = 1;
        }

        v51 = v7 + 1;
      }

      while ((v52 & 0x80000000) == 0);
LABEL_123:
      if (v7 < a2)
      {
        for (m = v161; ; m = a2 - 1)
        {
          while (1)
          {
            a2 = m;
            v60 = *(*m + 16);
            v61 = v60 >= v14 ? v14 : *(*m + 16);
            if (!v61)
            {
              break;
            }

            result = memcmp(*(v11 + 8), *(*m + 8), v61);
            if (!result)
            {
              break;
            }

            m = a2 - 1;
            if (((result >> 31) & 0x80000000) == 0)
            {
              goto LABEL_133;
            }
          }

          if (v14 >= v60)
          {
            break;
          }
        }
      }

LABEL_133:
      v62 = a3;
      if (v7 < a2)
      {
        v63 = *v7;
        v64 = *a2;
        while (1)
        {
          *v7 = v64;
          *a2 = v63;
          v65 = v7 + 1;
          while (1)
          {
            v7 = v65;
            v63 = *v65;
            v67 = *(*v65 + 16);
            v68 = v67 >= v14 ? v14 : *(*v65 + 16);
            if (!v68)
            {
              break;
            }

            result = memcmp(*(v11 + 8), *(v63 + 8), v68);
            if (!result)
            {
              break;
            }

            v66 = (result >> 31) | 1;
LABEL_138:
            v65 = v7 + 1;
            if (v66 < 0)
            {
              goto LABEL_148;
            }
          }

          if (v14 == v67)
          {
            break;
          }

          if (v14 >= v67)
          {
            v66 = 1;
            goto LABEL_138;
          }

LABEL_148:
          for (n = a2 - 1; ; n = a2 - 1)
          {
            while (1)
            {
              a2 = n;
              v64 = *n;
              v70 = *(*n + 16);
              v71 = v70 >= v14 ? v14 : *(*n + 16);
              if (!v71)
              {
                break;
              }

              result = memcmp(*(v11 + 8), *(v64 + 8), v71);
              if (!result)
              {
                break;
              }

              n = a2 - 1;
              if (((result >> 31) & 0x80000000) == 0)
              {
                goto LABEL_135;
              }
            }

            if (v14 >= v70)
            {
              break;
            }
          }

LABEL_135:
          if (v7 >= a2)
          {
            goto LABEL_157;
          }
        }

        v66 = 0;
        goto LABEL_138;
      }

LABEL_157:
      v72 = v7 - 1;
      if (v7 - 1 != v6)
      {
        *v6 = *v72;
      }

      a4 = 0;
      *v72 = v11;
      a2 = v164;
      a3 = v62;
    }
  }

  v73 = *(a2 - 1);
  v74 = *v7;
  v75 = *(v73 + 16);
  v76 = *(*v7 + 16);
  if (v76 >= v75)
  {
    v77 = *(v73 + 16);
  }

  else
  {
    v77 = *(*v7 + 16);
  }

  if (v77 && (result = memcmp(*(v73 + 8), *(v74 + 8), v77), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v75 >= v76)
  {
    return result;
  }

  *v7 = v73;
  *(a2 - 1) = v74;
  return result;
}

uint64_t *sub_298B8B09C(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *a2;
  v7 = *result;
  v8 = *(*a2 + 16);
  v9 = *(*result + 16);
  if (v9 >= v8)
  {
    v10 = *(*a2 + 16);
  }

  else
  {
    v10 = *(*result + 16);
  }

  if (v10)
  {
    result = memcmp(*(v6 + 8), *(v7 + 8), v10);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_15:
      v14 = *a3;
      v15 = *(*a3 + 16);
      if (v8 >= v15)
      {
        v16 = *(*a3 + 16);
      }

      else
      {
        v16 = v8;
      }

      if (v16 && (result = memcmp(*(v14 + 8), *(v6 + 8), v16), result))
      {
        if ((result & 0x80000000) == 0)
        {
LABEL_21:
          *v5 = v6;
          *a2 = v7;
          v17 = *a3;
          v18 = *(*a3 + 16);
          if (v9 >= v18)
          {
            v19 = *(*a3 + 16);
          }

          else
          {
            v19 = v9;
          }

          if (v19 && (result = memcmp(*(v17 + 8), *(v7 + 8), v19), result))
          {
            if ((result & 0x80000000) == 0)
            {
              return result;
            }
          }

          else if (v18 >= v9)
          {
            return result;
          }

          *a2 = v17;
          goto LABEL_40;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_21;
      }

      *v5 = v14;
LABEL_40:
      *a3 = v7;
      return result;
    }
  }

  if (v8 < v9)
  {
    goto LABEL_15;
  }

LABEL_7:
  v11 = *a3;
  v12 = *(*a3 + 16);
  if (v8 >= v12)
  {
    v13 = *(*a3 + 16);
  }

  else
  {
    v13 = v8;
  }

  if (v13 && (result = memcmp(*(v11 + 8), *(v6 + 8), v13), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v12 >= v8)
  {
    return result;
  }

  *a2 = v11;
  *a3 = v6;
  v20 = *a2;
  v21 = *v5;
  v22 = *(*a2 + 16);
  v23 = *(*v5 + 16);
  if (v23 >= v22)
  {
    v24 = *(*a2 + 16);
  }

  else
  {
    v24 = *(*v5 + 16);
  }

  if (v24 && (result = memcmp(*(v20 + 8), *(v21 + 8), v24), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v22 >= v23)
  {
    return result;
  }

  *v5 = v20;
  *a2 = v21;
  return result;
}

uint64_t *sub_298B8B21C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_298B8B09C(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  v11 = *(*a4 + 16);
  v12 = *(*a3 + 16);
  if (v12 >= v11)
  {
    v13 = *(*a4 + 16);
  }

  else
  {
    v13 = *(*a3 + 16);
  }

  if (v13 && (result = memcmp(*(v9 + 8), *(v10 + 8), v13), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v11 >= v12)
  {
    return result;
  }

  *a3 = v9;
  *a4 = v10;
  v14 = *a3;
  v15 = *a2;
  v16 = *(*a3 + 16);
  v17 = *(*a2 + 16);
  if (v17 >= v16)
  {
    v18 = *(*a3 + 16);
  }

  else
  {
    v18 = *(*a2 + 16);
  }

  if (v18 && (result = memcmp(*(v14 + 8), *(v15 + 8), v18), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v16 >= v17)
  {
    return result;
  }

  *a2 = v14;
  *a3 = v15;
  v19 = *a2;
  v20 = *a1;
  v21 = *(*a2 + 16);
  v22 = *(*a1 + 16);
  if (v22 >= v21)
  {
    v23 = *(*a2 + 16);
  }

  else
  {
    v23 = *(*a1 + 16);
  }

  if (v23 && (result = memcmp(*(v19 + 8), *(v20 + 8), v23), result))
  {
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_25;
    }
  }

  else if (v21 < v22)
  {
LABEL_25:
    *a1 = v19;
    *a2 = v20;
  }

  return result;
}

uint64_t *sub_298B8B344(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  result = sub_298B8B21C(a1, a2, a3, a4);
  v11 = *a5;
  v12 = *a4;
  v13 = *(*a5 + 16);
  v14 = *(*a4 + 16);
  if (v14 >= v13)
  {
    v15 = *(*a5 + 16);
  }

  else
  {
    v15 = *(*a4 + 16);
  }

  if (v15 && (result = memcmp(*(v11 + 8), *(v12 + 8), v15), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v13 >= v14)
  {
    return result;
  }

  *a4 = v11;
  *a5 = v12;
  v16 = *a4;
  v17 = *a3;
  v18 = *(*a4 + 16);
  v19 = *(*a3 + 16);
  if (v19 >= v18)
  {
    v20 = *(*a4 + 16);
  }

  else
  {
    v20 = *(*a3 + 16);
  }

  if (v20 && (result = memcmp(*(v16 + 8), *(v17 + 8), v20), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v18 >= v19)
  {
    return result;
  }

  *a3 = v16;
  *a4 = v17;
  v21 = *a3;
  v22 = *a2;
  v23 = *(*a3 + 16);
  v24 = *(*a2 + 16);
  if (v24 >= v23)
  {
    v25 = *(*a3 + 16);
  }

  else
  {
    v25 = *(*a2 + 16);
  }

  if (v25 && (result = memcmp(*(v21 + 8), *(v22 + 8), v25), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v23 >= v24)
  {
    return result;
  }

  *a2 = v21;
  *a3 = v22;
  v26 = *a2;
  v27 = *a1;
  v28 = *(*a2 + 16);
  v29 = *(*a1 + 16);
  if (v29 >= v28)
  {
    v30 = *(*a2 + 16);
  }

  else
  {
    v30 = *(*a1 + 16);
  }

  if (v30 && (result = memcmp(*(v26 + 8), *(v27 + 8), v30), result))
  {
    if ((result & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v28 >= v29)
  {
    return result;
  }

  *a1 = v26;
  *a2 = v27;
  return result;
}

BOOL sub_298B8B4A8(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_298B8B09C(a1, a1 + 1, a2 - 1);
        return 1;
      case 4:
        sub_298B8B21C(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        sub_298B8B344(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *a1;
      v8 = *(v6 + 16);
      v9 = *(*a1 + 16);
      if (v9 >= v8)
      {
        v10 = *(v6 + 16);
      }

      else
      {
        v10 = *(*a1 + 16);
      }

      if (v10 && (v11 = memcmp(*(v6 + 8), *(v7 + 8), v10)) != 0)
      {
        if ((v11 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v8 >= v9)
      {
        return 1;
      }

      *a1 = v6;
      *(a2 - 1) = v7;
      return 1;
    }
  }

  v12 = a1 + 2;
  sub_298B8B09C(a1, a1 + 1, a1 + 2);
  v13 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *v13;
    v17 = *v12;
    v18 = *(*v13 + 16);
    v19 = *(v17 + 16);
    v20 = v19 >= v18 ? *(*v13 + 16) : *(v17 + 16);
    if (!v20)
    {
      break;
    }

    v21 = memcmp(*(v16 + 8), *(v17 + 8), v20);
    if (!v21)
    {
      break;
    }

    if (v21 < 0)
    {
      goto LABEL_29;
    }

LABEL_40:
    v12 = v13;
    v14 += 8;
    if (++v13 == a2)
    {
      return 1;
    }
  }

  if (v18 >= v19)
  {
    goto LABEL_40;
  }

LABEL_29:
  for (i = v14; ; i = v23 - 8)
  {
    while (1)
    {
      *(a1 + i + 24) = v17;
      if (i == -16)
      {
        *a1 = v16;
        if (++v15 != 8)
        {
          goto LABEL_40;
        }

        return v13 + 1 == a2;
      }

      v23 = i;
      v17 = *(a1 + i + 8);
      v24 = *(v17 + 16);
      v25 = v24 >= v18 ? v18 : *(v17 + 16);
      if (!v25)
      {
        break;
      }

      v26 = memcmp(*(v16 + 8), *(v17 + 8), v25);
      if (!v26)
      {
        break;
      }

      i = v23 - 8;
      if (((v26 >> 31) & 0x80000000) == 0)
      {
        goto LABEL_39;
      }
    }

    if (v18 >= v24)
    {
      break;
    }
  }

LABEL_39:
  *(a1 + v23 + 16) = v16;
  if (++v15 != 8)
  {
    goto LABEL_40;
  }

  return v13 + 1 == a2;
}

void sub_298B8B6E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  v3 = 1;
  if (v1 > v2)
  {
    v4 = *(a1 + 16);
    do
    {
      v5 = *v2++;
      if (v5 == 10)
      {
        ++v3;
      }
    }

    while (v2 != v1);
  }

  operator new();
}

void sub_298B8B7F4(uint64_t a1, uint64_t a2)
{
  v2[0] = "[{0}:{1}, byte={2}]: {3}";
  v2[1] = 24;
  v2[2] = v7;
  v2[3] = 4;
  v3[0] = &unk_2A1F1DC98;
  v3[1] = a1 + 16;
  v4[0] = &unk_2A1F1DC98;
  v4[1] = a1 + 20;
  v5[0] = &unk_2A1F1DC98;
  v5[1] = a1 + 24;
  v6[0] = &unk_2A1F1DCC8;
  v6[1] = a1 + 8;
  v7[0] = v3;
  v7[1] = v4;
  v7[2] = v5;
  v7[3] = v6;
  sub_298B9BEC0(v2, a2);
}

uint64_t sub_298B8B91C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v40 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 8);
  v37 = a3;
  v38 = a4;
  v36 = 0;
  if (!sub_298B8BC44(&v37, &v36))
  {
    v14 = v38;
    if (!v38)
    {
      v15 = 0;
      v28 = 0;
LABEL_63:
      result = sub_298B8F2A4(a2, *v5, v28, v15);
      goto LABEL_64;
    }

    v15 = 0;
    v16 = v37;
    v17 = *v37;
    if (v17 > 0x63)
    {
      if (v17 != 100)
      {
        if (v17 != 110)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }
    }

    else if (v17 != 68)
    {
      if (v17 != 78)
      {
        goto LABEL_46;
      }

LABEL_43:
      v16 = ++v37;
      v15 = 1;
      goto LABEL_45;
    }

    v15 = 0;
    v16 = ++v37;
LABEL_45:
    v14 = v38 - 1;
    v38 = v14;
    if (!v14)
    {
LABEL_61:
      v28 = 0;
      goto LABEL_63;
    }

LABEL_46:
    v29 = 0;
    v30 = &v16[v14];
    v31 = v14;
    while (*v16 >= 48)
    {
      v32 = *v16;
      if (v32 >= 0x3A)
      {
        if (v32 < 0x61)
        {
          if (v32 - 65 > 0x19)
          {
            break;
          }

          v33 = -55;
        }

        else
        {
          if (v32 >= 0x7B)
          {
            break;
          }

          v33 = -87;
        }
      }

      else
      {
        v33 = -48;
      }

      v34 = v33 + v32;
      if (v34 > 9)
      {
        break;
      }

      v28 = 10 * v29 + v34;
      if (v29 > v28 / 0xA)
      {
        goto LABEL_61;
      }

      ++v16;
      v29 = 10 * v29 + v34;
      if (!--v31)
      {
        goto LABEL_60;
      }
    }

    v28 = v29;
    v30 = v16;
LABEL_60:
    if (v14 != v31)
    {
      v37 = v30;
      v38 = v31;
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  if (!v38)
  {
    goto LABEL_23;
  }

  v6 = 0;
  v7 = v37;
  v8 = &v37[v38];
  v9 = v38;
  while (*v7 >= 48)
  {
    v10 = *v7;
    if (v10 >= 0x3A)
    {
      if (v10 < 0x61)
      {
        if (v10 - 65 > 0x19)
        {
          break;
        }

        v11 = -55;
      }

      else
      {
        if (v10 >= 0x7B)
        {
          break;
        }

        v11 = -87;
      }
    }

    else
    {
      v11 = -48;
    }

    v12 = v11 + v10;
    if (v12 > 9)
    {
      break;
    }

    v13 = 10 * v6 + v12;
    if (v6 > v13 / 0xA)
    {
      goto LABEL_23;
    }

    ++v7;
    v6 = v13;
    if (!--v9)
    {
      goto LABEL_22;
    }
  }

  v13 = v6;
  v8 = v7;
LABEL_22:
  if (v38 != v9)
  {
    v37 = v8;
    v38 = v9;
  }

  else
  {
LABEL_23:
    v13 = 0;
  }

  v18 = *v5;
  v19 = v13 + 2;
  if ((v36 & 0xFFFFFFFE) != 2)
  {
    v19 = v13;
  }

  if (v19 >= 0x80)
  {
    LODWORD(v19) = 128;
  }

  v20 = (35 - __clz(v18)) >> 2;
  if (v20 <= 1)
  {
    v20 = 1;
  }

  *&v21 = 0x3030303030303030;
  *(&v21 + 1) = 0x3030303030303030;
  v39[7] = v21;
  v39[5] = v21;
  v39[6] = v21;
  v39[3] = v21;
  v39[4] = v21;
  v22 = v20 + 2 * ((v36 & 0xFFFFFFFE) == 2);
  v39[1] = v21;
  v39[2] = v21;
  if (v19 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  v39[0] = v21;
  if ((v36 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v39[0]) = 120;
  }

  if (v18)
  {
    v24 = 32 * ((v36 & 0xFFFFFFFD) != 0);
    v25 = v39 + v23 - 1;
    do
    {
      *v25-- = a0123456789abcd_1[v18 & 0xF] | v24;
      v26 = v18 > 0xF;
      v18 >>= 4;
    }

    while (v26);
  }

  result = sub_298B9BCEC(a2, v39, v23);
LABEL_64:
  v35 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B8BC44(const void **a1, int *a2)
{
  if (!a1[1])
  {
    return 0;
  }

  v3 = **a1;
  if ((v3 - 65) < 0x1A)
  {
    v3 += 32;
  }

  if (v3 != 120)
  {
    return 0;
  }

  if (sub_298B8BD60(a1, "x-", 2uLL))
  {
    v5 = 1;
  }

  else if (sub_298B8BD60(a1, "X-", 2uLL))
  {
    v5 = 0;
  }

  else if (sub_298B8BD60(a1, "x+", 2uLL) & 1) != 0 || (sub_298B8BD60(a1, "x", 1uLL))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
    if ((sub_298B8BD60(a1, "X+", 2uLL) & 1) == 0)
    {
      v6 = 1;
      if (!sub_298B8BD60(a1, "X", 1uLL))
      {
        return v6;
      }

      v5 = 2;
    }
  }

  *a2 = v5;
  return 1;
}

uint64_t sub_298B8BD60(const void **a1, const void *a2, size_t __n)
{
  v3 = a1[1];
  v4 = &v3[-__n];
  if (v3 < __n)
  {
    return 0;
  }

  v8 = *a1;
  if (__n && memcmp(*a1, a2, __n))
  {
    return 0;
  }

  *a1 = &v8[__n];
  a1[1] = v4;
  return 1;
}

void *sub_298B8BDF8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v5 = *(a1 + 8);
  if (!a4)
  {
    v6 = -1;
    v7 = *v5;
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_13:
    v9 = 0;
    result = *(a2 + 32);
    *(a2 + 24);
    goto LABEL_14;
  }

  v13 = 0;
  if (sub_298B97354(a3, a4, 0xAu, &v13))
  {
    v6 = -1;
  }

  else
  {
    v6 = v13;
  }

  v7 = *v5;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_6:
  v8 = strlen(v7);
  if (v8 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  result = *(a2 + 32);
  if (v9 > *(a2 + 24) - result)
  {
    return sub_298B9BCEC(a2, v7, v9);
  }

LABEL_14:
  if (v9)
  {
    v11 = v7;
    v12 = v9;
    result = memcpy(result, v11, v9);
    *(a2 + 32) += v12;
  }

  return result;
}

void **sub_298B8BEE4(void **a1, unsigned __int16 *a2)
{
  v3 = *a1;
  if (v3 == 8)
  {
    v4 = a2;
    sub_298B8A314(a1 + 1);
    goto LABEL_8;
  }

  if (v3 == 7)
  {
    v4 = a2;
    sub_298B8A370(a1 + 1);
LABEL_8:
    a2 = v4;
    goto LABEL_9;
  }

  if (v3 == 6 && *(a1 + 31) < 0)
  {
    v6 = a2;
    operator delete(a1[1]);
    a2 = v6;
  }

LABEL_9:
  sub_298B87D1C(a1, a2);
  return a1;
}

uint64_t sub_298B8BF70(void *a1, std::string *this)
{
  v4 = a1[3];
  v5 = a1[4];
  if (v4 == v5)
  {
    LOBYTE(v6) = 0;
    goto LABEL_4;
  }

  a1[3] = v4 + 1;
  v6 = *v4;
  if (v6 == 34)
  {
    return 1;
  }

  ++v4;
  while (1)
  {
LABEL_4:
    if (v4 == v5 || v6 < 0x20u)
    {
LABEL_12:
      sub_298B8B6E4(a1);
    }

    if (v6 != 92)
    {
      goto LABEL_7;
    }

    a1[3] = v4 + 1;
    v6 = *v4;
    if (v6 <= 0x65)
    {
      if (v6 - 34 > 0x3A || ((1 << (v6 - 34)) & 0x400000000002001) == 0)
      {
        if (v6 != 98)
        {
          goto LABEL_12;
        }

        LOBYTE(v6) = 8;
      }

      goto LABEL_7;
    }

    if (*v4 <= 0x71u)
    {
      if (v6 == 102)
      {
        LOBYTE(v6) = 12;
      }

      else
      {
        if (v6 != 110)
        {
          goto LABEL_12;
        }

        LOBYTE(v6) = 10;
      }

      goto LABEL_7;
    }

    if (v6 == 114)
    {
      LOBYTE(v6) = 13;
      goto LABEL_7;
    }

    if (v6 != 116)
    {
      break;
    }

    LOBYTE(v6) = 9;
LABEL_7:
    std::string::push_back(this, v6);
LABEL_8:
    v4 = a1[3];
    v5 = a1[4];
    if (v4 == v5)
    {
      v6 = 0;
    }

    else
    {
      a1[3] = v4 + 1;
      v6 = *v4++;
    }

    if (v6 == 34)
    {
      return 1;
    }
  }

  if (v6 != 117)
  {
    goto LABEL_12;
  }

  if (sub_298B8C3C4(a1, this))
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_298B8C100(uint64_t a1, int a2, unsigned __int16 *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  __str = v29;
  v29[0] = a2;
  v28 = xmmword_298D1AB90;
  for (i = *(a1 + 24); i != *(a1 + 32); i = *(a1 + 24))
  {
    v7 = *i;
    if ((v7 - 48) >= 0xA)
    {
      v8 = v7 - 43;
      v9 = v8 > 0x3A;
      v10 = (1 << v8) & 0x40000000400000DLL;
      if (v9 || v10 == 0)
      {
        break;
      }
    }

    *(a1 + 24) = i + 1;
    sub_298B8CB34(&__str, *i);
  }

  v24 = 0;
  *__error() = 0;
  v12 = v28;
  if ((v28 + 1) > *(&v28 + 1))
  {
    sub_298B90C08(&__str, v29, v28 + 1, 1);
    v12 = v28;
  }

  __str[v12] = 0;
  v13 = strtoll(__str, &v24, 10);
  if (v24 != &__str[v28] || (v14 = v13, *__error() == 34))
  {
    if (a2 == 45 || (*__error() = 0, v16 = sub_298B8CB98(&__str), v17 = strtoull(v16, &v24, 10), v24 != &__str[v28]) || (v18 = v17, *__error() == 34))
    {
      v19 = sub_298B8CB98(&__str);
      v20 = strtod(v19, &v24);
      v25 = 2;
      v26 = v20;
      sub_298B8BEE4(a3, &v25);
      sub_298B88E18(&v25);
      if (v24 != &__str[v28])
      {
        sub_298B8B6E4(a1);
      }
    }

    else
    {
      v23 = *a3;
      if (v23 == 8)
      {
        sub_298B8A314(a3 + 1);
      }

      else if (v23 == 7)
      {
        sub_298B8A370(a3 + 1);
      }

      else if (v23 == 6 && *(a3 + 31) < 0)
      {
        operator delete(*(a3 + 1));
      }

      *a3 = 4;
      *(a3 + 1) = v18;
    }
  }

  else
  {
    v15 = *a3;
    if (v15 == 8)
    {
      sub_298B8A314(a3 + 1);
    }

    else if (v15 == 7)
    {
      sub_298B8A370(a3 + 1);
    }

    else if (v15 == 6 && *(a3 + 31) < 0)
    {
      operator delete(*(a3 + 1));
    }

    *a3 = 3;
    *(a3 + 1) = v14;
  }

  if (__str != v29)
  {
    free(__str);
  }

  v21 = *MEMORY[0x29EDCA608];
  return 1;
}

uint64_t sub_298B8C3C4(void *a1, std::string *this)
{
  v4 = a1[3];
  v3 = a1[4];
  if (v4 == v3)
  {
    v5 = 0;
  }

  else
  {
    a1[3] = v4 + 1;
    v5 = *v4++;
    if (v4 != v3)
    {
      a1[3] = v4 + 1;
      v6 = *v4++;
      if (v4 != v3)
      {
        goto LABEL_4;
      }

      goto LABEL_64;
    }
  }

  v6 = 0;
  if (v4 != v3)
  {
LABEL_4:
    a1[3] = v4 + 1;
    v7 = *v4++;
    if (v4 != v3)
    {
      goto LABEL_5;
    }

LABEL_65:
    v8 = 0;
    v9 = MEMORY[0x29EDCA600];
    if ((*(MEMORY[0x29EDCA600] + 4 * v5 + 60) & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_64:
  v7 = 0;
  if (v4 == v3)
  {
    goto LABEL_65;
  }

LABEL_5:
  v3 = v4 + 1;
  a1[3] = v4 + 1;
  v8 = *v4;
  v9 = MEMORY[0x29EDCA600];
  if ((*(MEMORY[0x29EDCA600] + 4 * v5 + 60) & 0x10000) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((*(v9 + 4 * v6 + 60) & 0x10000) == 0 || (*(v9 + 4 * v7 + 60) & 0x10000) == 0 || (*(v9 + 4 * v8 + 60) & 0x10000) == 0)
  {
LABEL_9:
    v10 = a1[2];
    v11 = 1;
    if (v3 > v10)
    {
      v12 = a1[2];
      do
      {
        v13 = *v10++;
        if (v13 == 10)
        {
          ++v11;
        }
      }

      while (v10 != v3);
    }

    operator new();
  }

  v15 = v5 + 208;
  if (v5 > 0x39)
  {
    v15 = (v5 & 0xFFDF) + 201;
  }

  v16 = v15 << 8;
  v17 = v6 + 4048;
  if (v6 > 0x39)
  {
    v17 = (v6 & 0xFFDF) + 4041;
  }

  v18 = v16 | (16 * v17);
  v19 = v7 + 4048;
  if (v7 > 0x39)
  {
    v19 = (v7 & 0xFFDF) + 4041;
  }

  v20 = v18 | v19;
  v21 = v8 - 48;
  if (v8 > 0x39)
  {
    v21 = (v8 & 0xFFDF) - 55;
  }

  v22 = v21 | (16 * v20);
  if (((v22 + 0x2000) >> 11) < 0x1Fu)
  {
    v23 = v22;
LABEL_26:
    v24 = v23;
LABEL_27:
    sub_298B8C904(v24, this);
    return 1;
  }

  while (1)
  {
    v25 = this;
    if ((v22 >> 10) >= 0x37u)
    {
      break;
    }

    v27 = a1[3];
    v26 = a1[4];
    v28 = v27 + 2;
    if ((v27 + 2) > v26 || *v27 != 92 || v27[1] != 117)
    {
      v47 = -16401;
      v48 = -67;
      v44 = &v47;
      goto LABEL_70;
    }

    a1[3] = v28;
    if (v28 == v26)
    {
      v29 = 0;
    }

    else
    {
      v28 = v27 + 3;
      a1[3] = v27 + 3;
      v29 = v27[2];
      if (v28 != v26)
      {
        a1[3] = v28 + 1;
        v30 = *v28++;
        if (v28 != v26)
        {
          goto LABEL_35;
        }

        goto LABEL_53;
      }
    }

    v30 = 0;
    if (v28 != v26)
    {
LABEL_35:
      a1[3] = v28 + 1;
      v31 = *v28++;
      if (v28 != v26)
      {
        goto LABEL_36;
      }

      goto LABEL_54;
    }

LABEL_53:
    v31 = 0;
    if (v28 != v26)
    {
LABEL_36:
      v26 = (v28 + 1);
      a1[3] = v28 + 1;
      v32 = *v28;
      if ((*(v9 + 4 * v29 + 60) & 0x10000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_37;
    }

LABEL_54:
    v32 = 0;
    if ((*(v9 + 4 * v29 + 60) & 0x10000) == 0)
    {
      goto LABEL_55;
    }

LABEL_37:
    if ((*(v9 + 4 * v30 + 60) & 0x10000) == 0 || (*(v9 + 4 * v31 + 60) & 0x10000) == 0 || (*(v9 + 4 * v32 + 60) & 0x10000) == 0)
    {
LABEL_55:
      v40 = a1[2];
      v41 = 1;
      if (v26 > v40)
      {
        v42 = a1[2];
        do
        {
          v43 = *v40++;
          if (v43 == 10)
          {
            ++v41;
          }
        }

        while (v40 != v26);
      }

      operator new();
    }

    v33 = v29 + 208;
    if (v29 > 0x39)
    {
      v33 = (v29 & 0xFFDF) + 201;
    }

    v34 = v33 << 8;
    v35 = v30 + 4048;
    if (v30 > 0x39)
    {
      v35 = (v30 & 0xFFDF) + 4041;
    }

    v36 = v34 | (16 * v35);
    v37 = v31 + 4048;
    if (v31 > 0x39)
    {
      v37 = (v31 & 0xFFDF) + 4041;
    }

    v38 = v36 | v37;
    v39 = v32 - 48;
    if (v32 > 0x39)
    {
      v39 = (v32 & 0xFFDF) - 55;
    }

    v23 = v39 | (16 * v38);
    if (((v23 + 0x2000) >> 10) >= 0x3Fu)
    {
      v24 = ((v22 & 0xFFBF) << 10) + v23 - 56613888;
      goto LABEL_27;
    }

    *__s = -16401;
    v50 = -67;
    std::string::append(this, __s, 3uLL);
    this = v25;
    v22 = v23;
    if (((v23 + 0x2000) >> 11) < 0x1Fu)
    {
      goto LABEL_26;
    }
  }

  *v45 = -16401;
  v46 = -67;
  v44 = v45;
LABEL_70:
  std::string::append(v25, v44, 3uLL);
  return 1;
}

void sub_298B8C904(unsigned int a1, std::string *this)
{
  if (a1 > 0x7F)
  {
    if (a1 > 0x7FF)
    {
      if (HIWORD(a1))
      {
        v6 = (a1 >> 12) & 0x3F | 0xFFFFFF80;
        v7 = (a1 >> 6) & 0x3F | 0xFFFFFF80;
        v8 = a1 & 0x3F | 0x80;
        std::string::push_back(this, (a1 >> 18) | 0xF0);
        std::string::push_back(this, v6);
        std::string::push_back(this, v7);
        LOBYTE(a1) = v8;
      }

      else
      {
        v4 = (a1 >> 6) & 0x3F | 0xFFFFFF80;
        v5 = a1 & 0x3F | 0x80;
        std::string::push_back(this, (a1 >> 12) | 0xE0);
        std::string::push_back(this, v4);
        LOBYTE(a1) = v5;
      }
    }

    else
    {
      v3 = a1 & 0x3F | 0x80;
      std::string::push_back(this, (a1 >> 6) | 0xC0);
      LOBYTE(a1) = v3;
    }
  }

  std::string::push_back(this, a1);
}

uint64_t **sub_298B8C9F4(uint64_t **result)
{
  result[1] = 0;
  v4 = 0;
  v5 = xmmword_298CF7980;
  v1 = *(result + 4);
  if (v1)
  {
    result = *result;
    v2 = 56 * v1;
    do
    {
      sub_298B8CA58(result, &v4);
      result = (v3 + 56);
      v2 -= 56;
    }

    while (v2);
  }

  return result;
}

__n128 sub_298B8CA58(void *a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = 0;
  a1[2] = 0;
  if (*a2)
  {
    operator new();
  }

  result = *(a2 + 8);
  *(a1 + 1) = result;
  return result;
}

void *sub_298B8CB34(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    v3 = a2;
    v4 = result;
    sub_298B90C08(result, result + 3, v2 + 1, 1);
    a2 = v3;
    result = v4;
    v2 = v4[1];
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

uint64_t sub_298B8CB98(void *a1)
{
  v1 = a1[1];
  if ((v1 + 1) > a1[2])
  {
    v3 = a1;
    sub_298B90C08(a1, a1 + 3, v1 + 1, 1);
    a1 = v3;
    v1 = v3[1];
  }

  *(*a1 + v1) = 0;
  return *a1;
}

unint64_t sub_298B8CBEC(unint64_t result, int a2, uint64_t a3, unint64_t *a4)
{
  if (!a2)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v7 = result;
  result = sub_298B97534(*(a3 + 8), *(a3 + 8) + *(a3 + 16));
  v8 = a2 - 1;
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  if (!v10)
  {
    v15 = 0;
    for (i = 1; ; ++i)
    {
      v21 = result & v8;
      v13 = v7 + 56 * (result & v8);
      v22 = *(v13 + 8);
      if (v22 == -2)
      {
        if (v9 == -2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (v22 == -1)
        {
LABEL_33:
          if (v15)
          {
            v24 = v15;
          }

          else
          {
            v24 = v13;
          }

          if (v9 != -1)
          {
            v13 = v24;
          }

          goto LABEL_9;
        }

        if (!*(v13 + 16))
        {
          goto LABEL_9;
        }
      }

      if (v15)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22 == -2;
      }

      if (v23)
      {
        v15 = v7 + 56 * v21;
      }

      result = i + v21;
    }
  }

  if (v9 == -2)
  {
    for (j = 1; ; ++j)
    {
      v12 = result & v8;
      v13 = v7 + 56 * (result & v8);
      v14 = *(v13 + 8);
      if (v14 == -2)
      {
        break;
      }

      if (v14 == -1)
      {
        v15 = 0;
        goto LABEL_33;
      }

      if (v10 == *(v13 + 16))
      {
        result = memcmp(0xFFFFFFFFFFFFFFFELL, v14, v10);
        if (!result)
        {
          break;
        }
      }

      result = (j + v12);
    }
  }

  else
  {
    v15 = 0;
    for (k = 1; ; ++k)
    {
      v17 = result & v8;
      v13 = v7 + 56 * (result & v8);
      v18 = *(v13 + 8);
      if (v18 != -2)
      {
        if (v18 == -1)
        {
          goto LABEL_33;
        }

        if (v10 == *(v13 + 16))
        {
          result = memcmp(v9, *(v13 + 8), v10);
          if (!result)
          {
            break;
          }
        }
      }

      if (v15)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18 == -2;
      }

      if (v19)
      {
        v15 = v7 + 56 * v17;
      }

      result = k + v17;
    }
  }

LABEL_9:
  *a4 = v13;
  return result;
}

uint64_t **sub_298B8CD80(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
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

  *(a1 + 16) = v8;
  *a1 = operator new(56 * v8, 8uLL);
  if (v4)
  {
    sub_298B8CE48(a1, v4, &v4[7 * v3]);

    JUMPOUT(0x29C2945E0);
  }

  return sub_298B8C9F4(a1);
}

uint64_t **sub_298B8CE48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (result = sub_298B8C9F4(a1); a2 != a3; a2 += 56)
  {
    if (*(a2 + 8) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = 0;
      sub_298B8CBEC(*a1, *(a1 + 16), a2, &v10);
      v7 = v10;
      v8 = *a2;
      *a2 = 0;
      v9 = *v7;
      *v7 = v8;
      if (v9)
      {
        sub_298B8A29C(v9);
      }

      *(v7 + 8) = *(a2 + 8);
      sub_298B87D1C(v7 + 24, (a2 + 24));
      ++*(a1 + 8);
      sub_298B88E18((a2 + 24));
    }

    result = *a2;
    *a2 = 0;
    if (result)
    {
      if (*(result + 23) < 0)
      {
        operator delete(*result);
      }

      result = MEMORY[0x29C2945F0]();
    }
  }

  return result;
}

unsigned __int16 *sub_298B8CF54(unsigned __int16 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = (v2 - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_298ADDDA0();
  }

  v6 = a1[2] - v1;
  if (v6 >> 4 > v4)
  {
    v4 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v4;
  }

  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_298ADDDA0();
  }

  v8 = (32 * v3);
  v9 = &v8[-16 * ((v2 - *a1) >> 5)];
  *v8 = 0;
  v10 = v8 + 16;
  if (v1 != v2)
  {
    v11 = 0;
    while (1)
    {
      v12 = v1[v11];
      v9[v11] = v12;
      if (v12 >= 5)
      {
        if (v12 > 6)
        {
          if (v12 == 7)
          {
            v15 = &v1[v11];
            v19 = &v9[v11];
            *(v19 + 6) = 0;
            *(v19 + 2) = 0;
            *(v19 + 1) = *&v1[v11 + 4];
            *(v15 + 1) = 0;
            *(v19 + 4) = *&v1[v11 + 8];
            *(v15 + 4) = 0;
            v20 = *&v9[v11 + 10];
            *(v19 + 5) = *&v1[v11 + 10];
            *(v15 + 5) = v20;
            v21 = *&v9[v11 + 12];
            *(v19 + 6) = *&v1[v11 + 12];
            *(v15 + 6) = v21;
          }

          else
          {
            if (v12 != 8)
            {
              goto LABEL_14;
            }

            v15 = &v1[v11];
            v18 = &v9[v11];
            *(v18 + 2) = 0;
            *(v18 + 3) = 0;
            *(v18 + 4) = *&v1[v11 + 4];
            *(v18 + 3) = *&v1[v11 + 12];
            *(v15 + 1) = 0;
            *(v15 + 2) = 0;
            *(v15 + 3) = 0;
          }
        }

        else
        {
          if (v12 != 6)
          {
            *&v9[v11 + 4] = *&v1[v11 + 4];
            goto LABEL_14;
          }

          v15 = &v1[v11];
          v16 = &v9[v11];
          v17 = *&v1[v11 + 4];
          *(v16 + 3) = *&v1[v11 + 12];
          *(v16 + 4) = v17;
          *(v15 + 2) = 0;
          *(v15 + 3) = 0;
          *(v15 + 1) = 0;
        }

        *v15 = 0;
      }

      else
      {
        v13 = &v9[v11];
        v14 = *&v1[v11 + 4];
        *(v13 + 3) = *&v1[v11 + 12];
        *(v13 + 4) = v14;
      }

LABEL_14:
      v11 += 16;
      if (&v1[v11] == v2)
      {
        while (1)
        {
          v23 = *v1;
          if (v23 == 8)
          {
            v27 = *(v1 + 1);
            if (v27)
            {
              v28 = *(v1 + 2);
              v34 = *(v1 + 1);
              if (v28 != v27)
              {
                v29 = *(v1 + 2);
                do
                {
                  v31 = *(v29 - 32);
                  v29 -= 32;
                  v30 = v31;
                  if (v31 == 8)
                  {
                    sub_298B8A314((v28 - 24));
                  }

                  else if (v30 == 7)
                  {
                    sub_298B8A3A4(v28 - 24);
                    MEMORY[0x29C2945E0](*(v28 - 24), 8);
                  }

                  else if (v30 == 6 && *(v28 - 1) < 0)
                  {
                    operator delete(*(v28 - 24));
                  }

                  v28 = v29;
                }

                while (v29 != v27);
                v34 = *(v1 + 1);
              }

              *(v1 + 2) = v27;
              goto LABEL_51;
            }
          }

          else
          {
            if (v23 == 7)
            {
              v24 = *(v1 + 6);
              v22 = *(v1 + 1);
              if (v24)
              {
                v25 = 56 * v24;
                v26 = (v22 + 24);
                do
                {
                  if (*(v26 - 2) <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    sub_298B8802C(v26);
                  }

                  v32 = *(v26 - 3);
                  *(v26 - 3) = 0;
                  if (v32)
                  {
                    if (*(v32 + 23) < 0)
                    {
                      operator delete(*v32);
                    }

                    MEMORY[0x29C2945F0]();
                  }

                  v26 += 7;
                  v25 -= 56;
                }

                while (v25);
                v22 = *(v1 + 1);
              }

              MEMORY[0x29C2945E0](v22, 8);
              goto LABEL_30;
            }

            if (v23 == 6 && *(v1 + 31) < 0)
            {
              v34 = *(v1 + 1);
LABEL_51:
              operator delete(v34);
            }
          }

LABEL_30:
          v1 += 16;
          if (v1 == v2)
          {
            v1 = *a1;
            goto LABEL_60;
          }
        }
      }
    }
  }

LABEL_60:
  *a1 = v9;
  a1[1] = v10;
  a1[2] = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v10;
}

void sub_298B8D2B8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_298ADDDA0();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_298B8D40C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_298ADDDA0();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_298ADDDA0();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *sub_298B8D5A0(void *result)
{
  v1 = (*result + 8);
  if (**result != 8)
  {
    v1 = 0;
  }

  v2 = *v1;
  v3 = v1[1];
  if (*v1 != v3)
  {
    v4 = result[1];
    do
    {
      result = sub_298B891F0(v4, v2);
      v2 += 32;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_298B8D5FC(void *a1)
{
  v1 = a1[1];
  if (**a1 == 7)
  {
    v2 = *a1 + 8;
  }

  else
  {
    v2 = 0;
  }

  if (*(v2 + 8))
  {
    v3 = *v2;
    v4 = *(v2 + 16);
    if (v4)
    {
      v5 = 56 * v4;
      v6 = v3;
      while (*(v6 + 8) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v6 += 56;
        v5 -= 56;
        if (!v5)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      v6 = v3;
    }

    v7 = v3 + 56 * v4;
    if (v6 != v7)
    {
      operator new();
    }
  }

LABEL_13:
  sub_298B8A40C(0, 0, 0, 1);
}

void sub_298B8D820(unint64_t *a1, uint64_t (*a2)(void), unint64_t a3)
{
  sub_298B8D898();
  std::recursive_mutex::lock(&stru_2A13C3668);
  if (!*a1)
  {
    atomic_store(a2(), a1);
    v6 = qword_2A13C3660;
    a1[1] = a3;
    a1[2] = v6;
    qword_2A13C3660 = a1;
  }

  std::recursive_mutex::unlock(&stru_2A13C3668);
}

void sub_298B8D898()
{
  if ((atomic_load_explicit(&qword_2A13C2C68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13C2C68))
  {
    MEMORY[0x29C2943F0](&unk_2A13C3668);
    __cxa_atexit(MEMORY[0x29EDC93A8], &unk_2A13C3668, &dword_298AD8000);

    __cxa_guard_release(&qword_2A13C2C68);
  }
}

uint64_t sub_298B8D930@<X0>(unsigned __int8 *a1@<X0>, size_t a2@<X1>, off_t a3@<X2>, int a4@<W3>, int a5@<W4>, char a6@<W5>, __int16 a7@<W6>, uint64_t a8@<X8>)
{
  if (a4)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  v20 = 0;
  v16 = sub_298BABA40(a1, &v20, 2, 1, v15, 438);
  if (v16)
  {
    v21 = &unk_2A1F1DB10;
    v22 = v16;
    v23 = v17;
    operator new();
  }

  v18 = v20;
  sub_298B8DD00(v20, a1, 0xFFFFFFFFFFFFFFFFLL, a2, a3, a5, a6, a7, a8);

  return sub_298BAC580(v18);
}

void sub_298B8DAB4(void *a1, size_t a2, void **a3, __int16 a4)
{
  v33[32] = *MEMORY[0x29EDCA608];
  v7 = a4;
  v31 = v33;
  v32 = xmmword_298D1A100;
  v8 = *(a3 + 32);
  if (*(a3 + 33) != 1)
  {
    goto LABEL_14;
  }

  if (*(a3 + 32) > 4u)
  {
    if ((v8 - 5) < 2)
    {
      v10 = *a3;
      v11 = a3[1];
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v8 == 1)
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_15;
  }

  if (v8 == 3)
  {
    v10 = *a3;
    if (*a3)
    {
      v11 = strlen(*a3);
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_15;
  }

  if (v8 != 4)
  {
LABEL_14:
    v23 = 0;
    v27 = 0;
    v28 = 0;
    v30 = &v31;
    v29 = 0;
    v22 = &unk_2A1F1E0B8;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    sub_298B99BA4(a1, &v22, *a3, a3[1], v8);
    sub_298B99BA4(v13, &v22, a3[2], a3[3], *(a3 + 33));
    sub_298B9AE14(&v22);
    v10 = v31;
    v11 = v32;
    goto LABEL_15;
  }

  v9 = *(*a3 + 23);
  if (v9 >= 0)
  {
    v10 = *a3;
  }

  else
  {
    v10 = **a3;
  }

  if (v9 >= 0)
  {
    v11 = *(*a3 + 23);
  }

  else
  {
    v11 = (*a3)[1];
  }

LABEL_15:
  v14 = v11 + 33;
  if ((a4 & 0x100) != 0)
  {
    v15 = 1 << v7;
  }

  else
  {
    v15 = 16;
  }

  v16 = a2 + v15 + v14 + 1;
  if (v16 <= a2)
  {
    v18 = 0;
  }

  else
  {
    v17 = operator new(v16, MEMORY[0x29EDC9418]);
    v18 = v17;
    if (v17)
    {
      v17[3] = v11;
      v19 = (v17 + 4);
      if (v11)
      {
        memcpy(v17 + 4, v10, v11);
      }

      v19[v11] = 0;
      v20 = (v18 + v14 + v15 - 1) & -v15;
      *(v20 + a2) = 0;
      *v18 = &unk_2A1F1DD18;
      v18[1] = v20;
      v18[2] = v20 + a2;
    }
  }

  *a1 = v18;
  if (v31 != v33)
  {
    free(v31);
  }

  v21 = *MEMORY[0x29EDCA608];
}

void sub_298B8DD00(uint64_t a1@<X0>, void **a2@<X1>, size_t a3@<X2>, size_t a4@<X3>, off_t a5@<X4>, int a6@<W5>, char a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>)
{
  v12 = a1;
  v68 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A13C2C78, memory_order_acquire) & 1) == 0)
  {
    v55 = a8;
    v56 = a6;
    v57 = a7;
    v58 = a3;
    a1 = __cxa_guard_acquire(&qword_2A13C2C78);
    a3 = v58;
    a7 = v57;
    a6 = v56;
    a8 = v55;
    if (a1)
    {
      sub_298BAC45C(&v67);
      if (v67.st_ino)
      {
        v66 = *&v67.st_dev;
        sub_298AE72FC(&v66, &v62);
        if (v66)
        {
          (*(*v66 + 8))(v66);
        }

        st_dev = 4096;
      }

      else
      {
        st_dev = v67.st_dev;
      }

      dword_2A13C2C70 = st_dev;
      __cxa_guard_release(&qword_2A13C2C78);
      a8 = v55;
      a6 = v56;
      a7 = v57;
      a3 = v58;
    }
  }

  if (a4 == -1 && (a4 = a3, a3 == -1))
  {
    v26 = a7;
    v27 = a6;
    v28 = a8;
    v62 = 0u;
    memset(v63, 0, 28);
    v29 = fstat(v12, &v67);
    a1 = sub_298BAB580(v29, &v67.st_dev, &v62);
    if (a1)
    {
      *(a9 + 16) |= 1u;
      *a9 = a1;
      *(a9 + 8) = v30;
      v31 = *MEMORY[0x29EDCA608];
      return;
    }

    if (LODWORD(v63[3]) != 2 && LODWORD(v63[3]) != 5)
    {
      sub_298B8E514();
      v51 = *(a9 + 16);
      if (v67.st_uid)
      {
        v52 = v51 | 1;
        v53 = *&v67.st_dev;
        *(a9 + 8) = v67.st_ino;
      }

      else
      {
        v52 = v51 & 0xFE;
        v53 = *&v67.st_dev;
      }

      *(a9 + 16) = v52;
      *a9 = v53;
      v54 = *MEMORY[0x29EDCA608];
      return;
    }

    a4 = v63[2];
    a3 = v63[2];
    a8 = v28;
    a6 = v27;
    a7 = v26;
    v14 = dword_2A13C2C70;
    if (!v27)
    {
LABEL_30:
      v33 = (a4 & 0xFFFFFFFFFFFFC000) != 0 && a4 >= v14;
      if (!v33 || a6 == 0)
      {
        if (!v33)
        {
          goto LABEL_6;
        }
      }

      else
      {
        if (a3 == -1)
        {
          v39 = a8;
          v62 = 0u;
          memset(v63, 0, 28);
          v40 = fstat(v12, &v67);
          a1 = sub_298BAB580(v40, &v67.st_dev, &v62);
          if (a1)
          {
            a8 = v39;
            goto LABEL_6;
          }

          a3 = v63[2];
          a8 = v39;
          if (a4 + a5 != v63[2])
          {
            goto LABEL_6;
          }
        }

        else if (a4 + a5 != a3)
        {
          goto LABEL_6;
        }

        if ((a3 & (v14 - 1)) == 0)
        {
          goto LABEL_6;
        }
      }

      *&v67.st_dev = &v67.st_rdev;
      *&v67.st_ino = xmmword_298D1A100;
      v35 = *(a2 + 32);
      v60 = a8;
      if (*(a2 + 33) == 1)
      {
        if (*(a2 + 32) > 4u)
        {
          if ((v35 - 5) < 2)
          {
            v37 = *a2;
            st_ino = a2[1];
            goto LABEL_62;
          }
        }

        else
        {
          switch(v35)
          {
            case 1:
              st_ino = 0;
              v37 = 0;
              goto LABEL_62;
            case 3:
              v37 = *a2;
              if (*a2)
              {
                st_ino = strlen(*a2);
              }

              else
              {
                st_ino = 0;
              }

              goto LABEL_62;
            case 4:
              v36 = *(*a2 + 23);
              if (v36 >= 0)
              {
                v37 = *a2;
              }

              else
              {
                v37 = **a2;
              }

              if (v36 >= 0)
              {
                st_ino = *(*a2 + 23);
              }

              else
              {
                st_ino = (*a2)[1];
              }

LABEL_62:
              v42 = operator new(st_ino + 57);
              v43 = v42;
              v42[6] = st_ino;
              v44 = (v42 + 7);
              if (st_ino)
              {
                memcpy(v42 + 7, v37, st_ino);
              }

              v44[st_ino] = 0;
              if (*&v67.st_dev != &v67.st_rdev)
              {
                free(*&v67.st_dev);
              }

              *v43 = &unk_2A1F1DD50;
              sub_298BAC45C(&v67);
              if (v67.st_ino)
              {
                v66 = *&v67.st_dev;
                sub_298AE72FC(&v66, &v62);
                if (v66)
                {
                  (*(*v66 + 8))(v66);
                }

                v45 = (a5 & 0xFFF) + a4;
                sub_298BAC45C(&v67);
                if ((v67.st_ino & 1) == 0)
                {
                  goto LABEL_70;
                }
              }

              else
              {
                v45 = ((v67.st_dev - 1) & a5) + a4;
                sub_298BAC45C(&v67);
                if ((v67.st_ino & 1) == 0)
                {
LABEL_70:
                  v46 = v67.st_dev;
                  goto LABEL_75;
                }
              }

              v66 = *&v67.st_dev;
              sub_298AE72FC(&v66, &v62);
              if (v66)
              {
                (*(*v66 + 8))(v66);
              }

              v46 = 4096;
LABEL_75:
              v43[3] = v45;
              v43[4] = 0;
              *(v43 + 10) = 0;
              v47 = mmap(0, v45, 1, 24642, v12, -v46 & a5);
              v43[4] = v47;
              if (v47 == -1)
              {
                if (*__error())
                {
                  v43[3] = 0;
                  v43[4] = 0;
                  *(v43 + 10) = 0;
                  (*(*v43 + 8))(v43);
                  a8 = v60;
                  goto LABEL_6;
                }

                v47 = v43[4];
                sub_298BAC45C(&v67);
                if (v67.st_ino)
                {
                  goto LABEL_77;
                }
              }

              else
              {
                sub_298BAC45C(&v67);
                if (v67.st_ino)
                {
LABEL_77:
                  v66 = *&v67.st_dev;
                  sub_298AE72FC(&v66, &v62);
                  if (v66)
                  {
                    (*(*v66 + 8))(v66);
                  }

                  v48 = 4095;
                  goto LABEL_86;
                }
              }

              v48 = v67.st_dev - 1;
LABEL_86:
              v49 = &v47[v48 & a5];
              v43[1] = v49;
              v43[2] = &v49[a4];
              *(a9 + 16) &= ~1u;
              *a9 = v43;
              goto LABEL_87;
          }
        }
      }

      DWORD2(v62) = 0;
      v63[4] = 0;
      v65 = &v67;
      v64 = 0;
      *&v62 = &unk_2A1F1E0B8;
      memset(v63, 0, 25);
      sub_298B99BA4(a1, &v62, *a2, a2[1], v35);
      sub_298B99BA4(v41, &v62, a2[2], a2[3], *(a2 + 33));
      sub_298B9AE14(&v62);
      v37 = *&v67.st_dev;
      st_ino = v67.st_ino;
      goto LABEL_62;
    }
  }

  else
  {
    v14 = dword_2A13C2C70;
    if (!a6)
    {
      goto LABEL_30;
    }
  }

  if ((a7 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_6:
  sub_298B8DAB4(&v62, a4, a2, a8);
  if (!v62)
  {
    v23 = std::generic_category();
    *(a9 + 16) |= 1u;
    *a9 = 12;
    *(a9 + 8) = v23;
    v24 = *MEMORY[0x29EDCA608];
    return;
  }

  v15 = *(v62 + 8);
  v16 = *(v62 + 16) - v15;
  do
  {
    if (!v16)
    {
      goto LABEL_21;
    }

    sub_298BABC08(v12, v15, v16, a5, &v67);
    if (v67.st_ino)
    {
      v18 = *&v67.st_dev;
      *&v67.st_dev = 0;
      v61 = v18;
      v19 = sub_298B85620(&v61);
      *(a9 + 16) |= 1u;
      *a9 = v19;
      *(a9 + 8) = v20;
      if (v61)
      {
        (*(*v61 + 8))(v61);
      }

      v17 = 1;
      v21 = *&v67.st_dev;
      if (*&v67.st_dev)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (*&v67.st_dev)
      {
        v17 = 0;
        v16 -= *&v67.st_dev;
        v15 += *&v67.st_dev;
        a5 += *&v67.st_dev;
        continue;
      }

      bzero(v15, v16);
      if ((v67.st_ino & 1) == 0)
      {
        goto LABEL_21;
      }

      v17 = 3;
      v21 = *&v67.st_dev;
      if (*&v67.st_dev)
      {
LABEL_19:
        (*(*v21 + 8))(v21);
      }
    }
  }

  while (!v17);
  if (v17 == 3)
  {
LABEL_21:
    *(a9 + 16) &= ~1u;
    *a9 = v62;
    v22 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v62)
  {
    (*(*v62 + 8))(v62);
    v25 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_87:
  v50 = *MEMORY[0x29EDCA608];
}

void sub_298B8E514()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = 0;
  v22 = *MEMORY[0x29EDCA608];
  v17 = v19;
  v18 = xmmword_298D1ABA0;
  v7 = 0x4000;
  v8 = 0;
LABEL_2:
  if (!v8 && *(&v18 + 1) < v7)
  {
    sub_298B90C08(&v17, v19, v7, 1);
  }

  *&v18 = v7;
  while (1)
  {
    sub_298BAAF8C(v4, v17 + v6, 0x4000uLL, &v20);
    if (v21)
    {
      *&v18 = v6;
      if (!v20)
      {
        goto LABEL_15;
      }

      v16 = v20;
      v9 = sub_298B85620(&v16);
      *(v5 + 16) |= 1u;
      *v5 = v9;
      *(v5 + 8) = v10;
      if (v16)
      {
        (*(*v16 + 8))(v16);
        v11 = v17;
        if (v17 == v19)
        {
          goto LABEL_21;
        }
      }

      else
      {
LABEL_19:
        v11 = v17;
        if (v17 == v19)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_20;
    }

    if (!v20)
    {
      break;
    }

    v6 += v20;
    v7 = v6 + 0x4000;
    v8 = v18 > v6 + 0x4000;
    if (v18 != v6 + 0x4000)
    {
      goto LABEL_2;
    }
  }

  *&v18 = v6;
LABEL_15:
  v12 = v17;
  sub_298B8DAB4(&v20, v6, v2, 0);
  v13 = v20;
  if (v20)
  {
    if (v6)
    {
      memmove(*(v20 + 8), v12, v6);
    }

    *(v5 + 16) &= ~1u;
    *v5 = v13;
    goto LABEL_19;
  }

  v15 = std::generic_category();
  *(v5 + 16) |= 1u;
  *v5 = 12;
  *(v5 + 8) = v15;
  v11 = v17;
  if (v17 != v19)
  {
LABEL_20:
    free(v11);
  }

LABEL_21:
  v14 = *MEMORY[0x29EDCA608];
}

uint64_t sub_298B8E73C(uint64_t result)
{
  *result = &unk_2A1F1DD50;
  if (*(result + 32))
  {
    v1 = result;
    munmap(*(result + 32), *(result + 24));
    return v1;
  }

  return result;
}

void sub_298B8E794(void *a1)
{
  *a1 = &unk_2A1F1DD50;
  if (a1[4])
  {
    v2 = a1;
    munmap(a1[4], a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *sub_298B8E804(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return posix_madvise(result, *(a1 + 24), 4);
  }

  return result;
}

int *sub_298B8E828(int *a1, int *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  do
  {
    v88 = v5;
    v7 = *a2;
    a1[22] = *a2;
    HIDWORD(v8) = v3 + (v6 & v4 | v5 & ~v4) - 680876936 + v7;
    LODWORD(v8) = HIDWORD(v8);
    v9 = (v8 >> 25) + v4;
    v10 = a2[1];
    a1[23] = v10;
    HIDWORD(v8) = v88 + v10 - 389564586 + (v4 & v9 | v6 & ~v9);
    LODWORD(v8) = HIDWORD(v8);
    v11 = (v8 >> 20) + v9;
    v12 = a2[2];
    a1[24] = v12;
    HIDWORD(v8) = v6 + v12 + 606105819 + (v9 & v11 | v4 & ~v11);
    LODWORD(v8) = HIDWORD(v8);
    v13 = (v8 >> 15) + v11;
    v14 = a2[3];
    a1[25] = v14;
    HIDWORD(v8) = v4 + v14 - 1044525330 + (v11 & v13 | v9 & ~v13);
    LODWORD(v8) = HIDWORD(v8);
    v15 = (v8 >> 10) + v13;
    v16 = a2[4];
    a1[26] = v16;
    HIDWORD(v8) = v9 + v16 - 176418897 + (v13 & v15 | v11 & ~v15);
    LODWORD(v8) = HIDWORD(v8);
    v17 = (v8 >> 25) + v15;
    v18 = a2[5];
    HIDWORD(v8) = v11 + v18 + 1200080426 + (v15 & v17 | v13 & ~v17);
    LODWORD(v8) = HIDWORD(v8);
    a1[27] = v18;
    v19 = (v8 >> 20) + v17;
    v20 = a2[6];
    a1[28] = v20;
    HIDWORD(v8) = v13 + v20 - 1473231341 + (v17 & v19 | v15 & ~v19);
    LODWORD(v8) = HIDWORD(v8);
    v21 = (v8 >> 15) + v19;
    v22 = a2[7];
    a1[29] = v22;
    HIDWORD(v8) = v15 + v22 - 45705983 + (v19 & v21 | v17 & ~v21);
    LODWORD(v8) = HIDWORD(v8);
    v23 = (v8 >> 10) + v21;
    v24 = a2[8];
    a1[30] = v24;
    HIDWORD(v8) = v17 + v24 + 1770035416 + (v21 & v23 | v19 & ~v23);
    LODWORD(v8) = HIDWORD(v8);
    v25 = (v8 >> 25) + v23;
    v26 = a2[9];
    a1[31] = v26;
    HIDWORD(v8) = v19 + v26 - 1958414417 + (v23 & v25 | v21 & ~v25);
    LODWORD(v8) = HIDWORD(v8);
    v27 = (v8 >> 20) + v25;
    v28 = a2[10];
    a1[32] = v28;
    HIDWORD(v8) = v21 + v28 - 42063 + (v25 & v27 | v23 & ~v27);
    LODWORD(v8) = HIDWORD(v8);
    v29 = (v8 >> 15) + v27;
    v30 = a2[11];
    HIDWORD(v8) = v23 + v30 - 1990404162 + (v27 & v29 | v25 & ~v29);
    LODWORD(v8) = HIDWORD(v8);
    a1[33] = v30;
    v31 = (v8 >> 10) + v29;
    v32 = a2[12];
    a1[34] = v32;
    HIDWORD(v8) = v25 + v32 + 1804603682 + (v29 & v31 | v27 & ~v31);
    LODWORD(v8) = HIDWORD(v8);
    v33 = (v8 >> 25) + v31;
    v34 = a2[13];
    a1[35] = v34;
    HIDWORD(v8) = v27 + v34 - 40341101 + (v31 & v33 | v29 & ~v33);
    LODWORD(v8) = HIDWORD(v8);
    v35 = (v8 >> 20) + v33;
    v36 = a2[14];
    a1[36] = v36;
    HIDWORD(v8) = v29 + v36 - 1502002290 + (v33 & v35 | v31 & ~v35);
    LODWORD(v8) = HIDWORD(v8);
    v37 = (v8 >> 15) + v35;
    v38 = a2[15];
    HIDWORD(v8) = v31 + v38 + 1236535329 + (v35 & v37 | v33 & ~v37);
    LODWORD(v8) = HIDWORD(v8);
    v39 = (v8 >> 10) + v37;
    HIDWORD(v8) = v10 + v33 - 165796510 + (v39 & v35 | v37 & ~v35);
    LODWORD(v8) = HIDWORD(v8);
    v40 = (v8 >> 27) + v39;
    HIDWORD(v8) = v20 + v35 - 1069501632 + (v40 & v37 | v39 & ~v37);
    LODWORD(v8) = HIDWORD(v8);
    v41 = (v8 >> 23) + v40;
    HIDWORD(v8) = v30 + v37 + 643717713 + (v41 & v39 | v40 & ~v39);
    LODWORD(v8) = HIDWORD(v8);
    v42 = (v8 >> 18) + v41;
    HIDWORD(v8) = v7 + v39 - 373897302 + (v42 & v40 | v41 & ~v40);
    LODWORD(v8) = HIDWORD(v8);
    v43 = (v8 >> 12) + v42;
    HIDWORD(v8) = v18 + v40 - 701558691 + (v43 & v41 | v42 & ~v41);
    LODWORD(v8) = HIDWORD(v8);
    v44 = (v8 >> 27) + v43;
    HIDWORD(v8) = v28 + v41 + 38016083 + (v44 & v42 | v43 & ~v42);
    LODWORD(v8) = HIDWORD(v8);
    v45 = (v8 >> 23) + v44;
    HIDWORD(v8) = v38 + v42 - 660478335 + (v45 & v43 | v44 & ~v43);
    LODWORD(v8) = HIDWORD(v8);
    v46 = (v8 >> 18) + v45;
    HIDWORD(v8) = v16 + v43 - 405537848 + (v46 & v44 | v45 & ~v44);
    LODWORD(v8) = HIDWORD(v8);
    v47 = (v8 >> 12) + v46;
    HIDWORD(v8) = v26 + v44 + 568446438 + (v47 & v45 | v46 & ~v45);
    LODWORD(v8) = HIDWORD(v8);
    v48 = (v8 >> 27) + v47;
    HIDWORD(v8) = v36 + v45 - 1019803690 + (v48 & v46 | v47 & ~v46);
    LODWORD(v8) = HIDWORD(v8);
    v49 = (v8 >> 23) + v48;
    HIDWORD(v8) = v14 + v46 - 187363961 + (v49 & v47 | v48 & ~v47);
    LODWORD(v8) = HIDWORD(v8);
    v50 = (v8 >> 18) + v49;
    HIDWORD(v8) = v24 + v47 + 1163531501 + (v50 & v48 | v49 & ~v48);
    LODWORD(v8) = HIDWORD(v8);
    v51 = (v8 >> 12) + v50;
    HIDWORD(v8) = v34 + v48 - 1444681467 + (v51 & v49 | v50 & ~v49);
    LODWORD(v8) = HIDWORD(v8);
    v52 = (v8 >> 27) + v51;
    HIDWORD(v8) = v12 + v49 - 51403784 + (v52 & v50 | v51 & ~v50);
    LODWORD(v8) = HIDWORD(v8);
    v53 = (v8 >> 23) + v52;
    HIDWORD(v8) = v22 + v50 + 1735328473 + (v53 & v51 | v52 & ~v51);
    LODWORD(v8) = HIDWORD(v8);
    v54 = (v8 >> 18) + v53;
    HIDWORD(v8) = v32 + v51 - 1926607734 + ((v54 ^ v53) & v52 ^ v53);
    LODWORD(v8) = HIDWORD(v8);
    v55 = (v8 >> 12) + v54;
    HIDWORD(v8) = v18 + v52 - 378558 + (v55 ^ v54 ^ v53);
    LODWORD(v8) = HIDWORD(v8);
    v56 = (v8 >> 28) + v55;
    HIDWORD(v8) = v24 + v53 - 2022574463 + (v56 ^ v55 ^ v54);
    LODWORD(v8) = HIDWORD(v8);
    v57 = (v8 >> 21) + v56;
    HIDWORD(v8) = v30 + v54 + 1839030562 + (v56 ^ v55 ^ v57);
    LODWORD(v8) = HIDWORD(v8);
    v58 = (v8 >> 16) + v57;
    HIDWORD(v8) = v36 + v55 - 35309556 + (v57 ^ v56 ^ v58);
    LODWORD(v8) = HIDWORD(v8);
    v59 = (v8 >> 9) + v58;
    HIDWORD(v8) = v10 + v56 - 1530992060 + (v58 ^ v57 ^ v59);
    LODWORD(v8) = HIDWORD(v8);
    v60 = (v8 >> 28) + v59;
    HIDWORD(v8) = v16 + v57 + 1272893353 + (v59 ^ v58 ^ v60);
    LODWORD(v8) = HIDWORD(v8);
    v61 = (v8 >> 21) + v60;
    HIDWORD(v8) = v22 + v58 - 155497632 + (v60 ^ v59 ^ v61);
    LODWORD(v8) = HIDWORD(v8);
    v62 = (v8 >> 16) + v61;
    HIDWORD(v8) = v28 + v59 - 1094730640 + (v61 ^ v60 ^ v62);
    LODWORD(v8) = HIDWORD(v8);
    v63 = (v8 >> 9) + v62;
    HIDWORD(v8) = v34 + v60 + 681279174 + (v62 ^ v61 ^ v63);
    LODWORD(v8) = HIDWORD(v8);
    v64 = (v8 >> 28) + v63;
    HIDWORD(v8) = v7 + v61 - 358537222 + (v63 ^ v62 ^ v64);
    LODWORD(v8) = HIDWORD(v8);
    v65 = (v8 >> 21) + v64;
    HIDWORD(v8) = v14 + v62 - 722521979 + (v64 ^ v63 ^ v65);
    LODWORD(v8) = HIDWORD(v8);
    v66 = (v8 >> 16) + v65;
    HIDWORD(v8) = v20 + v63 + 76029189 + (v65 ^ v64 ^ v66);
    LODWORD(v8) = HIDWORD(v8);
    v67 = (v8 >> 9) + v66;
    HIDWORD(v8) = v26 + v64 - 640364487 + (v66 ^ v65 ^ v67);
    LODWORD(v8) = HIDWORD(v8);
    v68 = (v8 >> 28) + v67;
    HIDWORD(v8) = v32 + v65 - 421815835 + (v67 ^ v66 ^ v68);
    LODWORD(v8) = HIDWORD(v8);
    v69 = (v8 >> 21) + v68;
    HIDWORD(v8) = v38 + v66 + 530742520 + (v68 ^ v67 ^ v69);
    LODWORD(v8) = HIDWORD(v8);
    v70 = (v8 >> 16) + v69;
    HIDWORD(v8) = v12 + v67 - 995338651 + (v69 ^ v68 ^ v70);
    LODWORD(v8) = HIDWORD(v8);
    v71 = (v8 >> 9) + v70;
    HIDWORD(v8) = v7 + v68 - 198630844 + ((v71 | ~v69) ^ v70);
    LODWORD(v8) = HIDWORD(v8);
    v72 = (v8 >> 26) + v71;
    HIDWORD(v8) = v22 + v69 + 1126891415 + ((v72 | ~v70) ^ v71);
    LODWORD(v8) = HIDWORD(v8);
    v73 = (v8 >> 22) + v72;
    HIDWORD(v8) = v36 + v70 - 1416354905 + ((v73 | ~v71) ^ v72);
    LODWORD(v8) = HIDWORD(v8);
    v74 = (v8 >> 17) + v73;
    HIDWORD(v8) = v18 + v71 - 57434055 + ((v74 | ~v72) ^ v73);
    LODWORD(v8) = HIDWORD(v8);
    v75 = (v8 >> 11) + v74;
    HIDWORD(v8) = v32 + v72 + 1700485571 + ((v75 | ~v73) ^ v74);
    LODWORD(v8) = HIDWORD(v8);
    v76 = (v8 >> 26) + v75;
    HIDWORD(v8) = v14 + v73 - 1894986606 + ((v76 | ~v74) ^ v75);
    LODWORD(v8) = HIDWORD(v8);
    v77 = (v8 >> 22) + v76;
    HIDWORD(v8) = v28 + v74 - 1051523 + ((v77 | ~v75) ^ v76);
    LODWORD(v8) = HIDWORD(v8);
    v78 = (v8 >> 17) + v77;
    HIDWORD(v8) = v10 + v75 - 2054922799 + ((v78 | ~v76) ^ v77);
    LODWORD(v8) = HIDWORD(v8);
    v79 = (v8 >> 11) + v78;
    HIDWORD(v8) = v24 + v76 + 1873313359 + ((v79 | ~v77) ^ v78);
    LODWORD(v8) = HIDWORD(v8);
    v80 = (v8 >> 26) + v79;
    HIDWORD(v8) = v38 + v77 - 30611744 + ((v80 | ~v78) ^ v79);
    LODWORD(v8) = HIDWORD(v8);
    v81 = (v8 >> 22) + v80;
    HIDWORD(v8) = v20 + v78 - 1560198380 + ((v81 | ~v79) ^ v80);
    LODWORD(v8) = HIDWORD(v8);
    v82 = (v8 >> 17) + v81;
    HIDWORD(v8) = v34 + v79 + 1309151649 + ((v82 | ~v80) ^ v81);
    LODWORD(v8) = HIDWORD(v8);
    v83 = (v8 >> 11) + v82;
    HIDWORD(v8) = v16 + v80 - 145523070 + ((v83 | ~v81) ^ v82);
    LODWORD(v8) = HIDWORD(v8);
    v84 = (v8 >> 26) + v83;
    HIDWORD(v8) = v30 + v81 - 1120210379 + ((v84 | ~v82) ^ v83);
    LODWORD(v8) = HIDWORD(v8);
    a1[37] = v38;
    v85 = (v8 >> 22) + v84;
    HIDWORD(v8) = v12 + v82 + 718787259 + ((v85 | ~v83) ^ v84);
    LODWORD(v8) = HIDWORD(v8);
    v86 = (v8 >> 17) + v85;
    v3 += v84;
    HIDWORD(v8) = v26 + v83 - 343485551 + ((v86 | ~v84) ^ v85);
    LODWORD(v8) = HIDWORD(v8);
    v4 += v86 + (v8 >> 11);
    v6 += v86;
    v5 = v85 + v88;
    a2 += 16;
    a3 -= 64;
  }

  while (a3);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
  return a2;
}

uint64_t sub_298B8F2A4(uint64_t a1, unsigned int a2, unint64_t a3, int a4)
{
  v7 = 0;
  v18 = *MEMORY[0x29EDCA608];
  v8 = 127;
  do
  {
    v17[v8] = (a2 % 0xA) | 0x30;
    v7 += 0x100000000;
    --v8;
    v9 = a2 > 9;
    a2 /= 0xAu;
  }

  while (v9);
  v10 = v7 >> 32;
  if (a4 != 1 && v10 < a3)
  {
    v11 = v7 >> 32;
    while (1)
    {
      while (1)
      {
        v12 = *(a1 + 32);
        if (v12 >= *(a1 + 24))
        {
          break;
        }

LABEL_9:
        *(a1 + 32) = v12 + 1;
        *v12 = 48;
        if (++v11 >= a3)
        {
          goto LABEL_14;
        }
      }

      v13 = *(a1 + 16);
      if (v13)
      {
        *(a1 + 32) = v13;
        sub_298B9BB84(a1);
        v12 = *(a1 + 32);
        goto LABEL_9;
      }

      if (*(a1 + 56))
      {
        sub_298B9AE98(a1);
      }

      else
      {
        sub_298B9BB84(a1);
        if (++v11 >= a3)
        {
          break;
        }
      }
    }
  }

LABEL_14:
  v14 = &v18 - v10;
  if (a4 == 1)
  {
    result = sub_298B8FDB4(a1, v14, v10);
  }

  else
  {
    result = sub_298B9BCEC(a1, v14, v10);
  }

  v16 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_298B8F428(uint64_t a1, unsigned int a2, unint64_t a3, int a4)
{
  v20 = *MEMORY[0x29EDCA608];
  if ((a2 & 0x80000000) != 0)
  {
    v17 = *MEMORY[0x29EDCA608];
    v18 = -a2;

    return sub_298B8FC48(a1, v18, a3, a4, 1);
  }

  else
  {
    v7 = 0;
    v8 = 127;
    do
    {
      v19[v8] = (a2 % 0xA) | 0x30;
      v7 += 0x100000000;
      --v8;
      v9 = a2 > 9;
      a2 /= 0xAu;
    }

    while (v9);
    v10 = v7 >> 32;
    if (a4 != 1 && v10 < a3)
    {
      v11 = v7 >> 32;
      while (1)
      {
        while (1)
        {
          v12 = *(a1 + 32);
          if (v12 >= *(a1 + 24))
          {
            break;
          }

LABEL_10:
          *(a1 + 32) = v12 + 1;
          *v12 = 48;
          if (++v11 >= a3)
          {
            goto LABEL_15;
          }
        }

        v13 = *(a1 + 16);
        if (v13)
        {
          *(a1 + 32) = v13;
          sub_298B9BB84(a1);
          v12 = *(a1 + 32);
          goto LABEL_10;
        }

        if (*(a1 + 56))
        {
          sub_298B9AE98(a1);
        }

        else
        {
          sub_298B9BB84(a1);
          if (++v11 >= a3)
          {
            break;
          }
        }
      }
    }

LABEL_15:
    v14 = &v20 - v10;
    if (a4 == 1)
    {
      result = sub_298B8FDB4(a1, v14, v10);
    }

    else
    {
      result = sub_298B9BCEC(a1, v14, v10);
    }

    v16 = *MEMORY[0x29EDCA608];
  }

  return result;
}

uint64_t sub_298B8F608(uint64_t a1, unint64_t a2, int a3, unint64_t a4, char a5)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a5)
  {
    if (a4 > 0x7F)
    {
      LODWORD(a4) = 128;
    }
  }

  else
  {
    LODWORD(a4) = 0;
  }

  v5 = (67 - __clz(a2)) >> 2;
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *&v6 = 0x3030303030303030;
  *(&v6 + 1) = 0x3030303030303030;
  v12[6] = v6;
  v12[7] = v6;
  v12[4] = v6;
  v12[5] = v6;
  LODWORD(v7) = v5 + 2 * ((a3 & 0xFFFFFFFE) == 2);
  v12[2] = v6;
  v12[3] = v6;
  if (a4 <= v7)
  {
    v7 = v7;
  }

  else
  {
    v7 = a4;
  }

  v12[0] = v6;
  v12[1] = v6;
  if ((a3 & 0xFFFFFFFE) == 2)
  {
    BYTE1(v12[0]) = 120;
  }

  if (a2)
  {
    v8 = &v12[-1] + v7 + 15;
    do
    {
      *v8-- = a0123456789abcd_1[a2 & 0xF] | (32 * ((a3 & 0xFFFFFFFD) != 0));
      v9 = a2 > 0xF;
      a2 >>= 4;
    }

    while (v9);
  }

  result = sub_298B9BCEC(a1, v12, v7);
  v11 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_298B8F70C(uint64_t a1, unsigned int a2, unint64_t a3, char a4, double a5)
{
  v39[1] = *MEMORY[0x29EDCA608];
  v6 = 2;
  if (a2 < 2)
  {
    v6 = 6;
  }

  if ((a4 & 1) == 0)
  {
    a3 = v6;
  }

  if (fabs(a5) == INFINITY)
  {
    if (a5 >= 0.0)
    {
      v9 = "INF";
    }

    else
    {
      v9 = "-INF";
    }

    if (a5 >= 0.0)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    v11 = *(a1 + 32);
    if (v10 <= *(a1 + 24) - v11)
    {
      memcpy(v11, v9, v10);
      *(a1 + 32) += v10;
      goto LABEL_57;
    }

    v12 = *MEMORY[0x29EDCA608];

    sub_298B9BCEC(a1, v9, v10);
  }

  else
  {
    v37 = v39;
    v38 = xmmword_298D1A0E0;
    if (a2 == 1)
    {
      v14 = 69;
    }

    else
    {
      v14 = 102;
    }

    v28 = 0;
    if (a2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 101;
    }

    v32 = 0;
    v33 = 0;
    v35 = &v37;
    v34 = 0;
    v27 = &unk_2A1F1E0B8;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    sub_298B9BCEC(&v27, "%.", 2uLL);
    if (HIDWORD(a3))
    {
      sub_298B8FEA0(&v27, a3, 0, 0, 0);
    }

    else
    {
      sub_298B8FC48(&v27, a3, 0, 0, 0);
    }

    while (1)
    {
      v16 = v31;
      if (v31 < v30)
      {
        goto LABEL_31;
      }

      if (v29)
      {
        v31 = v29;
        sub_298B9BB84(&v27);
        v16 = v31;
LABEL_31:
        v31 = v16 + 1;
        *v16 = v15;
        if (a2 == 3)
        {
          goto LABEL_32;
        }

LABEL_48:
        v23 = v38;
        if ((v38 + 1) > *(&v38 + 1))
        {
          sub_298B90C08(&v37, v39, v38 + 1, 1);
          v23 = v38;
        }

        v37[v23] = 0;
        snprintf(__str, 0x20uLL, v37, *&a5, &unk_2A1F1DD88, v37, *&a5);
        v24 = strlen(__str);
        v25 = *(a1 + 32);
        if (v24 <= *(a1 + 24) - v25)
        {
          if (v24)
          {
            memcpy(v25, __str, v24);
            *(a1 + 32) += v24;
          }

          sub_298B9AE14(&v27);
          v22 = v37;
          if (v37 == v39)
          {
            goto LABEL_57;
          }
        }

        else
        {
          sub_298B9BCEC(a1, __str, v24);
          sub_298B9AE14(&v27);
          v22 = v37;
          if (v37 == v39)
          {
            goto LABEL_57;
          }
        }

LABEL_56:
        free(v22);
        goto LABEL_57;
      }

      if (!v34)
      {
        break;
      }

      sub_298B9AE98(&v27);
    }

    __str[0] = v15;
    sub_298B9BB84(&v27);
    if (a2 != 3)
    {
      goto LABEL_48;
    }

LABEL_32:
    v17 = a5 * 100.0;
    v18 = v38;
    if ((v38 + 1) > *(&v38 + 1))
    {
      sub_298B90C08(&v37, v39, v38 + 1, 1);
      v18 = v38;
    }

    v37[v18] = 0;
    snprintf(__str, 0x20uLL, v37, *&v17, &unk_2A1F1DD88, v37, *&v17);
    v19 = strlen(__str);
    v20 = *(a1 + 32);
    if (v19 <= *(a1 + 24) - v20)
    {
      if (v19)
      {
        memcpy(v20, __str, v19);
        v20 = (*(a1 + 32) + v19);
        *(a1 + 32) = v20;
      }
    }

    else
    {
      sub_298B9BCEC(a1, __str, v19);
      v20 = *(a1 + 32);
    }

    while (1)
    {
      if (v20 < *(a1 + 24))
      {
        goto LABEL_44;
      }

      v21 = *(a1 + 16);
      if (v21)
      {
        *(a1 + 32) = v21;
        sub_298B9BB84(a1);
        v20 = *(a1 + 32);
LABEL_44:
        *(a1 + 32) = v20 + 1;
        *v20 = 37;
        sub_298B9AE14(&v27);
        v22 = v37;
        if (v37 != v39)
        {
          goto LABEL_56;
        }

        goto LABEL_57;
      }

      if (!*(a1 + 56))
      {
        break;
      }

      sub_298B9AE98(a1);
      v20 = *(a1 + 32);
    }

    sub_298B9BB84(a1);
    sub_298B9AE14(&v27);
    v22 = v37;
    if (v37 != v39)
    {
      goto LABEL_56;
    }

LABEL_57:
    v26 = *MEMORY[0x29EDCA608];
  }
}