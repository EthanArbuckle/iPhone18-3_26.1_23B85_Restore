uint64_t sub_2991E5C88(uint64_t a1)
{
  result = sub_2991F86EC(a1 + 24);
  v3 = *(a1 + 48);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v12 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    result += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  result += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 4) != 0)
  {
LABEL_5:
    v4 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = result + 3;
  if ((v3 & 8) == 0)
  {
    v7 = result;
  }

  result = v7 + ((v3 >> 4) & 2) + ((v3 >> 3) & 2) + ((v3 >> 5) & 2);
LABEL_11:
  v8 = *(a1 + 8);
  if (v8)
  {
    v15 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v16 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 52) = result;
  return result;
}

void sub_2991E5DE8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_2A1F63C88, &unk_2A1F63808, 0))
  {
    sub_2991E2858();
  }

  sub_2991E5E70(a1, lpsrc);
}

void sub_2991E5E70(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2246);
    v4 = sub_2991EF75C(v21, "CHECK failed: (&from) != (this): ");
    sub_2991EF898(&v20, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v21);
  }

  sub_2993F97F4(a1 + 24, a2 + 24);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_2991E2054((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 48);
  if ((v13 & 0x7F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 56);
      *(a1 + 48) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_2991EE4D0((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_30;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 64);
    *(a1 + 48) |= 2u;
    v17 = *(a1 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_2991EE4D0((a1 + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }

LABEL_30:
    v18 = *(a2 + 72);
    *(a1 + 48) |= 4u;
    v19 = *(a1 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_2991EE4D0((a1 + 72), (v18 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(a1 + 80) = *(a2 + 80);
    if ((v13 & 0x10) == 0)
    {
LABEL_19:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 81) = *(a2 + 81);
    if ((v13 & 0x20) == 0)
    {
LABEL_20:
      if ((v13 & 0x40) == 0)
      {
LABEL_22:
        *(a1 + 48) |= v13;
        return;
      }

LABEL_21:
      *(a1 + 83) = *(a2 + 83);
      goto LABEL_22;
    }

LABEL_35:
    *(a1 + 82) = *(a2 + 82);
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }
}

void sub_2991E603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void *sub_2991E606C(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1F634A0;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2A1A99EB0, memory_order_acquire))
  {
    sub_2991FAEE0(dword_2A1A99EB0);
  }

  a1[3] = &qword_2A1461CE0;
  a1[4] = &qword_2A1461CE0;
  return a1;
}

uint64_t sub_2991E60DC(uint64_t a1)
{
  sub_2991E6110(a1);
  sub_2991DFAF8((a1 + 8));
  return a1;
}

uint64_t *sub_2991E6110(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_2991EF744(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2362);
    v3 = sub_2991EF75C(v12, "CHECK failed: GetArena() == nullptr: ");
    sub_2991EF898(&v11, &v3->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v12);
  }

LABEL_4:
  result = (a1 + 24);
  if (*(a1 + 24) != &qword_2A1461CE0)
  {
    v5 = sub_2991E1E40(result);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x29C29BFB0](v6, 0x1012C40EC159624);
  }

  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  if (v8 != &qword_2A1461CE0)
  {
    v9 = sub_2991E1E40(v7);
    v10 = v9;
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    return MEMORY[0x29C29BFB0](v10, 0x1012C40EC159624);
  }

  return result;
}

void sub_2991E6218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991E6234(uint64_t a1)
{
  sub_2991E60DC(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991E626C(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  *(result + 16) = 0;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }

  return result;
}

char *sub_2991E6308(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  for (i = a3[11].i32[1]; (sub_2991E1F14(a3, &v20, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v20 + 1;
    v7 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = v20 + 2;
LABEL_6:
      v20 = v6;
      goto LABEL_7;
    }

    v17 = sub_2991FC5E0(v20, v8 - 128);
    v20 = v17;
    if (!v17)
    {
      return 0;
    }

    v6 = v17;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = (a1 + 24);
LABEL_26:
      v16 = sub_2991EE508(v15, v14);
      v13 = sub_2991FC624(v16, v20, a3);
      goto LABEL_27;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      a3[10].i32[0] = v7 - 1;
      return v20;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFELL) + 8;
    }

    else
    {
      v12 = sub_2991E2054((a1 + 8));
      v6 = v20;
    }

    v13 = sub_2991FCAE0(v7, v12, v6, a3);
LABEL_27:
    v20 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v20;
}

char *sub_2991E648C(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_2991E0240(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_2991E0240(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if ((*a3 - v4) >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_2991EEDD0(a3, v11, v10, v4);
}

uint64_t sub_2991E6574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

unint64_t sub_2991E6644(unint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_2A1F63C88, &unk_2A1F63840, 0))
  {
    sub_2991E2858();
  }

  return sub_2991E66CC(a1, lpsrc);
}

unint64_t sub_2991E66CC(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_2991EF744(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2516);
    v4 = sub_2991EF75C(v19, "CHECK failed: (&from) != (this): ");
    sub_2991EF898(&v18, &v4->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v19);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(v3 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_2991E2054((v3 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    result = std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 16);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 24);
      *(v3 + 16) |= 1u;
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = sub_2991EE4D0((v3 + 24), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      v16 = *(a2 + 32);
      *(v3 + 16) |= 2u;
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      return sub_2991EE4D0((v3 + 32), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    }
  }

  return result;
}

void sub_2991E6800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E6830(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F63520;
  *(a1 + 8) = a2;
  sub_2991EFD64(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2A1A99E90, memory_order_acquire))
  {
    sub_2991FAEE0(dword_2A1A99E90);
  }

  return a1;
}

void sub_2991E68B0(_Unwind_Exception *a1)
{
  sub_2991E9F34(v2);
  sub_2991EFE30(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E68CC(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    sub_2991EF744(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2589);
    v4 = sub_2991EF75C(v7, "CHECK failed: GetArena() == nullptr: ");
    sub_2991EF898(&v6, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v7);
  }

LABEL_4:
  sub_2991DFAF8(v3);
  sub_2991E9F34((a1 + 40));
  sub_2991EFE30(a1 + 16);
  return a1;
}

void sub_2991E696C(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  sub_2991EDA10(a1);
}

void sub_2991E6990(uint64_t a1)
{
  sub_2991E68CC(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991E69C8(uint64_t a1)
{
  sub_2991F37E4((a1 + 16));
  result = sub_2991E9BE0(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }

  return result;
}

char *sub_2991E6A24(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  if ((sub_2991E1F14(a3, &v23, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v23 + 1;
      v6 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      v20 = sub_2991FC5E0(v23, v7 - 128);
      v23 = v20;
      if (!v20)
      {
        return 0;
      }

      v5 = v20;
      v6 = v21;
LABEL_6:
      if (v6 == 10)
      {
        v10 = v5 - 1;
        while (1)
        {
          v11 = v10 + 1;
          v23 = v10 + 1;
          v12 = *(a1 + 56);
          if (!v12)
          {
            break;
          }

          v17 = *(a1 + 48);
          v13 = *v12;
          if (v17 < *v12)
          {
            *(a1 + 48) = v17 + 1;
            v14 = *&v12[2 * v17 + 2];
            goto LABEL_20;
          }

          if (v13 == *(a1 + 52))
          {
            goto LABEL_16;
          }

LABEL_17:
          *v12 = v13 + 1;
          v14 = sub_2991E8D80(*(a1 + 40));
          v15 = *(a1 + 48);
          v16 = *(a1 + 56) + 8 * v15;
          *(a1 + 48) = v15 + 1;
          *(v16 + 8) = v14;
          v11 = v23;
LABEL_20:
          v10 = sub_2993F940C(a3, v14, v11);
          v23 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 10)
          {
            goto LABEL_30;
          }
        }

        v13 = *(a1 + 52);
LABEL_16:
        sub_2992018A8(a1 + 40, v13 + 1);
        v12 = *(a1 + 56);
        v13 = *v12;
        goto LABEL_17;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        a3[10].i32[0] = v6 - 1;
        return v23;
      }

      if (v6 < 0x640)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v19 = (v18 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v19 = sub_2991E2054((a1 + 8));
          v5 = v23;
        }

        v9 = sub_2991FCAE0(v6, v19, v5, a3);
      }

      else
      {
        v9 = sub_2991F4D18((a1 + 16), v6, v5, &unk_2A1461BE0, (a1 + 8), a3);
      }

      v23 = v9;
      if (!v9)
      {
        return 0;
      }

LABEL_30:
      if (sub_2991E1F14(a3, &v23, a3[11].i32[1]))
      {
        return v23;
      }
    }

    v5 = v23 + 2;
LABEL_5:
    v23 = v5;
    goto LABEL_6;
  }

  return v23;
}

char *sub_2991E6C20(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_2991EECB8(a3, a2);
      }

      v8 = sub_2991E995C(a1 + 40, i);
      *a2 = 10;
      v9 = *(v8 + 20);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = sub_2991E648C(v8, v10, a3);
    }
  }

  v14 = sub_2991F5ACC(a1 + 16, 200, 0x20000000, a2, a3);
  v15 = v14;
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v15;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if ((*a3 - v14) >= v19)
  {
    v21 = v19;
    memcpy(v14, v20, v19);
    v15 += v21;
    return v15;
  }

  return sub_2991EEDD0(a3, v20, v19, v14);
}

uint64_t sub_2991E6DA4(uint64_t a1)
{
  v2 = sub_2991F86EC(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_2991E6574(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v4 += v13;
  }

  *(a1 + 64) = v4;
  return v4;
}

unint64_t sub_2991E6E4C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_2A1F63C88, &unk_2A1F63858, 0))
  {
    sub_2991E2858();
  }

  return sub_2991E6ED4(a1, lpsrc);
}

unint64_t sub_2991E6ED4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2724);
    v4 = sub_2991EF75C(v15, "CHECK failed: (&from) != (this): ");
    sub_2991EF898(&v14, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v15);
  }

  sub_2993F97F4(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_2991E2054((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  return sub_2991E9FF4(a1 + 40, a2 + 40);
}

void sub_2991E6FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void *sub_2991E6FDC(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1F635A0;
  a1[1] = a2;
  sub_2991EFD64((a1 + 2), a2);
  a1[5] = 0;
  if (atomic_load_explicit(dword_2A1A99E60, memory_order_acquire))
  {
    sub_2991FAEE0(dword_2A1A99E60);
  }

  a1[6] = &qword_2A1461CE0;
  a1[7] = 0x100000000;
  return a1;
}

uint64_t sub_2991E7068(uint64_t a1)
{
  sub_2991E70A4(a1);
  sub_2991DFAF8((a1 + 8));
  sub_2991EFE30(a1 + 16);
  return a1;
}

uint64_t sub_2991E70A4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_2991EF744(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2813);
    v3 = sub_2991EF75C(v9, "CHECK failed: GetArena() == nullptr: ");
    sub_2991EF898(&v8, &v3->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v9);
  }

LABEL_4:
  v5 = *(v1 + 48);
  v4 = (v1 + 48);
  if (v5 != &qword_2A1461CE0)
  {
    v6 = sub_2991E1E40(v4);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    return MEMORY[0x29C29BFB0](v7, 0x1012C40EC159624);
  }

  return result;
}

void sub_2991E716C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991E7188(uint64_t a1)
{
  sub_2991E7068(a1);

  JUMPOUT(0x29C29BFB0);
}

unsigned __int8 *sub_2991E71C0(uint64_t a1)
{
  result = sub_2991F37E4((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  if ((v3 & 6) != 0)
  {
    *(a1 + 56) = 0x100000000;
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 31) < 0)
    {
      **(v6 + 8) = 0;
      *(v6 + 16) = 0;
    }

    else
    {
      *(v6 + 8) = 0;
      *(v6 + 31) = 0;
    }
  }

  return result;
}

char *sub_2991E7258(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_2991E1F14(a3, &v23, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v23 + 1;
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v19 = sub_2991FC5E0(v23, v9 - 128);
      v23 = v19;
      if (!v19)
      {
        goto LABEL_44;
      }

      v7 = v19;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 24)
        {
          v15 = v7 + 1;
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if (v16 < 0)
          {
            v23 = sub_2991FC598(v7, v14);
            if (!v23)
            {
LABEL_44:
              v23 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v15 = v7 + 2;
LABEL_25:
            v23 = v15;
          }

          if ((v14 - 1) > 5)
          {
            sub_2991EA570((a1 + 8), v14);
          }

          else
          {
            *(a1 + 40) |= 4u;
            *(a1 + 60) = v14;
          }

          goto LABEL_37;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 21)
        {
          v5 |= 2u;
          *(a1 + 56) = *v7;
          v23 = v7 + 4;
          goto LABEL_37;
        }
      }

      else if (v10 == 1 && v8 == 10)
      {
        *(a1 + 40) |= 1u;
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = sub_2991EE508((a1 + 48), v17);
        v13 = sub_2991FC624(v18, v23, a3);
        goto LABEL_36;
      }

      if (v8)
      {
        v12 = (v8 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        a3[10].i32[0] = v8 - 1;
        goto LABEL_2;
      }

      if (v8 < 0x640)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v22 = (v21 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v22 = sub_2991E2054((a1 + 8));
          v7 = v23;
        }

        v13 = sub_2991FCAE0(v8, v22, v7, a3);
      }

      else
      {
        v13 = sub_2991F4D18((a1 + 16), v8, v7, qword_2A1461C28, (a1 + 8), a3);
      }

LABEL_36:
      v23 = v13;
      if (!v13)
      {
        goto LABEL_44;
      }

LABEL_37:
      if (sub_2991E1F14(a3, &v23, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = v23 + 2;
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v23;
}

char *sub_2991E74A0(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_2991E0240(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_2991EECB8(a3, v4);
  }

  v7 = *(a1 + 56);
  *v4 = 21;
  *(v4 + 1) = v7;
  v4 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = sub_2991EECB8(a3, v4);
    }

    v8 = *(a1 + 60);
    *v4 = 24;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
    }
  }

LABEL_18:
  v12 = sub_2991F5ACC(a1 + 16, 200, 0x20000000, v4, a3);
  v13 = v12;
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - v12) >= v17)
  {
    v19 = v17;
    memcpy(v12, v18, v17);
    v13 += v19;
    return v13;
  }

  return sub_2991EEDD0(a3, v18, v17, v12);
}

uint64_t sub_2991E7648(uint64_t a1)
{
  result = sub_2991F86EC(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      result += 5;
    }

    if ((v3 & 4) != 0)
    {
      v7 = *(a1 + 60);
      if (v7 < 0)
      {
        v8 = 11;
      }

      else
      {
        v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v8;
    }
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_2991E7724(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_2A1F63C88, &unk_2A1F63870, 0))
  {
    sub_2991E2858();
  }

  sub_2991E77AC(a1, lpsrc);
}

void sub_2991E77AC(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3001);
    v4 = sub_2991EF75C(v17, "CHECK failed: (&from) != (this): ");
    sub_2991EF898(&v16, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v17);
  }

  sub_2993F97F4(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_2991E2054((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 40);
  if ((v13 & 7) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_2991EE4D0((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
LABEL_18:
          *(a1 + 40) |= v13;
          return;
        }

LABEL_17:
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_18;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v13 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }
}

void sub_2991E78E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E7918(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1F63620;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_2A1F63738;
  sub_2991EFD64(a1 + 24, a2);
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (atomic_load_explicit(dword_2A1A99E28, memory_order_acquire))
  {
    sub_2991FAEE0(dword_2A1A99E28);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_2991E79C4(_Unwind_Exception *a1)
{
  sub_2991EA1A0(v2);
  sub_2991EFE30(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E79E4(uint64_t a1)
{
  sub_2991E7A28(a1);
  sub_2991DFAF8((a1 + 8));
  sub_2991EA1A0((a1 + 56));
  sub_2991EFE30(a1 + 24);
  return a1;
}

uint64_t sub_2991E7A28(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_2991EF744(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3145);
    v3 = sub_2991EF75C(v12, "CHECK failed: GetArena() == nullptr: ");
    sub_2991EF898(&v11, &v3->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v12);
  }

LABEL_4:
  if (v1 != &unk_2A1461C68)
  {
    v4 = *(v1 + 80);
    if (v4)
    {
      v5 = sub_2991E2C94(v4);
      MEMORY[0x29C29BFB0](v5, 0x10A1C4074230EEALL);
    }

    v6 = *(v1 + 88);
    if (v6)
    {
      v7 = sub_2991E5360(v6);
      MEMORY[0x29C29BFB0](v7, 0x10A1C402CDD3876);
    }

    v8 = *(v1 + 96);
    if (v8)
    {
      v9 = sub_2991E68CC(v8);
      MEMORY[0x29C29BFB0](v9, 0x10A1C4075D007F8);
    }

    result = *(v1 + 104);
    if (result)
    {
      v10 = sub_2991E5360(result);
      return MEMORY[0x29C29BFB0](v10, 0x10A1C402CDD3876);
    }
  }

  return result;
}

void sub_2991E7B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991E7B54(uint64_t a1)
{
  sub_2991E79E4(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2991E7B8C(uint64_t a1)
{
  sub_2991E79E4(a1 - 16);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991E7BC8(uint64_t a1)
{
  sub_2991F37E4((a1 + 24));
  result = sub_2991E9C90((a1 + 56));
  v3 = *(a1 + 48);
  if ((v3 & 0xF) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 80);
      if (!v4)
      {
        sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3178);
        v5 = sub_2991EF75C(v15, "CHECK failed: trainer_spec_ != nullptr: ");
        sub_2991EF898(&v14, &v5->__r_.__value_.__l.__data_);
        sub_2991EF8A0(v15);
        v4 = *(a1 + 80);
      }

      result = sub_2991E2FA4(v4);
    }

    if ((v3 & 2) != 0)
    {
      v6 = *(a1 + 88);
      if (!v6)
      {
        sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3182);
        v7 = sub_2991EF75C(v15, "CHECK failed: normalizer_spec_ != nullptr: ");
        sub_2991EF898(&v14, &v7->__r_.__value_.__l.__data_);
        sub_2991EF8A0(v15);
        v6 = *(a1 + 88);
      }

      result = sub_2991E5570(v6);
    }

    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 96);
      if (!v8)
      {
        sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3186);
        v9 = sub_2991EF75C(v15, "CHECK failed: self_test_data_ != nullptr: ");
        sub_2991EF898(&v14, &v9->__r_.__value_.__l.__data_);
        sub_2991EF8A0(v15);
        v8 = *(a1 + 96);
      }

      result = sub_2991E69C8(v8);
    }

    if ((v3 & 8) != 0)
    {
      v10 = *(a1 + 104);
      if (!v10)
      {
        sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3190);
        v11 = sub_2991EF75C(v15, "CHECK failed: denormalizer_spec_ != nullptr: ");
        sub_2991EF898(&v14, &v11->__r_.__value_.__l.__data_);
        sub_2991EF8A0(v15);
        v10 = *(a1 + 104);
      }

      result = sub_2991E5570(v10);
    }
  }

  *(a1 + 48) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 31) < 0)
    {
      **(v13 + 8) = 0;
      *(v13 + 16) = 0;
    }

    else
    {
      *(v13 + 8) = 0;
      *(v13 + 31) = 0;
    }
  }

  return result;
}

void sub_2991E7D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

char *sub_2991E7DAC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  if ((sub_2991E1F14(a3, &v32, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v32 + 1;
      v7 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      v28 = sub_2991FC5E0(v32, v8 - 128);
      v32 = v28;
      if (!v28)
      {
        return 0;
      }

      v6 = v28;
      v7 = v29;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v9 == 3)
        {
          if (v7 == 26)
          {
            *(a1 + 48) |= 2u;
            v10 = *(a1 + 88);
            if (!v10)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = sub_2991E8CB0(v16);
              *(a1 + 88) = v10;
LABEL_32:
              v6 = v32;
            }

LABEL_33:
            v15 = sub_2993F9664(a3, v10, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 4)
        {
          if (v7 == 34)
          {
            *(a1 + 48) |= 4u;
            v17 = *(a1 + 96);
            if (!v17)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = sub_2991E8E50(v18);
              *(a1 + 96) = v17;
              v6 = v32;
            }

            v15 = sub_2993F972C(a3, v17, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 5 && v7 == 42)
        {
          *(a1 + 48) |= 8u;
          v10 = *(a1 + 104);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v10 = sub_2991E8CB0(v11);
            *(a1 + 104) = v10;
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        goto LABEL_54;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_54;
        }

        v19 = v6 - 1;
        while (2)
        {
          v20 = v19 + 1;
          v32 = v19 + 1;
          v21 = *(a1 + 72);
          if (!v21)
          {
            v22 = *(a1 + 68);
            goto LABEL_44;
          }

          v26 = *(a1 + 64);
          v22 = *v21;
          if (v26 >= *v21)
          {
            if (v22 == *(a1 + 68))
            {
LABEL_44:
              sub_2992018A8(a1 + 56, v22 + 1);
              v21 = *(a1 + 72);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = sub_2991E8F20(*(a1 + 56));
            v24 = *(a1 + 64);
            v25 = *(a1 + 72) + 8 * v24;
            *(a1 + 64) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v32;
          }

          else
          {
            *(a1 + 64) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
          }

          v19 = sub_2993F94D4(a3, v23, v20);
          v32 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v9 == 2 && v7 == 18)
      {
        *(a1 + 48) |= 1u;
        v13 = *(a1 + 80);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = sub_2991E8BE0(v14);
          *(a1 + 80) = v13;
          v6 = v32;
        }

        sub_2993F959C(a3, v13, v6);
        goto LABEL_65;
      }

LABEL_54:
      if (v7)
      {
        v27 = (v7 & 7) == 4;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        a3[10].i32[0] = v7 - 1;
        return v32;
      }

      if (v7 < 0x640)
      {
        v30 = *(a1 + 8);
        if (v30)
        {
          v31 = (v30 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v31 = sub_2991E2054((a1 + 8));
          v6 = v32;
        }

        v15 = sub_2991FCAE0(v7, v31, v6, a3);
      }

      else
      {
        v15 = sub_2991F4D18((a1 + 24), v7, v6, &unk_2A1461C68, (a1 + 8), a3);
      }

LABEL_65:
      v32 = v15;
      if (!v15)
      {
        return 0;
      }

LABEL_66:
      if (sub_2991E1F14(a3, &v32, a3[11].i32[1]))
      {
        return v32;
      }
    }

    v6 = v32 + 2;
LABEL_6:
    v32 = v6;
    goto LABEL_7;
  }

  return v32;
}

char *sub_2991E8114(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_2991EECB8(a3, a2);
      }

      v8 = sub_2991C01E8(a1 + 56, i);
      *a2 = 10;
      v9 = *(v8 + 44);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = sub_2991E74A0(v8, v10, a3);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v15 = *(a1 + 80);
    *a2 = 18;
    v16 = *(v15 + 48);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = a2 + 3;
        do
        {
          *(v17 - 1) = v18 | 0x80;
          v19 = v18 >> 7;
          ++v17;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        *(v17 - 1) = v19;
      }

      else
      {
        a2[2] = v18;
        v17 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v16;
      v17 = a2 + 2;
    }

    a2 = sub_2991E326C(v15, v17, a3);
    if ((v14 & 2) == 0)
    {
LABEL_15:
      if ((v14 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v21 = *(a1 + 88);
  *a2 = 26;
  v22 = *(v21 + 52);
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = a2 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      a2[2] = v24;
      v23 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v22;
    v23 = a2 + 2;
  }

  a2 = sub_2991E5A78(v21, v23, a3);
  if ((v14 & 4) == 0)
  {
LABEL_16:
    if ((v14 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = sub_2991EECB8(a3, a2);
  }

  v27 = *(a1 + 96);
  *a2 = 34;
  v28 = *(v27 + 64);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = sub_2991E6C20(v27, v29, a3);
  if ((v14 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = sub_2991EECB8(a3, a2);
    }

    v33 = *(a1 + 104);
    *a2 = 42;
    v34 = *(v33 + 52);
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v35 = a2 + 3;
        do
        {
          *(v35 - 1) = v36 | 0x80;
          v37 = v36 >> 7;
          ++v35;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
        *(v35 - 1) = v37;
      }

      else
      {
        a2[2] = v36;
        v35 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v34;
      v35 = a2 + 2;
    }

    a2 = sub_2991E5A78(v33, v35, a3);
  }

LABEL_58:
  v39 = sub_2991F5ACC(a1 + 24, 200, 0x20000000, a2, a3);
  v40 = v39;
  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v40;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if ((*a3 - v39) >= v44)
  {
    v46 = v44;
    memcpy(v39, v45, v44);
    v40 += v46;
    return v40;
  }

  return sub_2991EEDD0(a3, v45, v44, v39);
}

uint64_t sub_2991E850C(uint64_t a1)
{
  v2 = sub_2991F86EC(a1 + 24);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_2991E7648(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 48);
  if ((v10 & 0xF) == 0)
  {
    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v15 = sub_2991E5C88(*(a1 + 88));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v14 = sub_2991E4400(*(a1 + 80));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v10 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v16 = sub_2991E6DA4(*(a1 + 96));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
LABEL_12:
    v11 = sub_2991E5C88(*(a1 + 104));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v4 += v18;
  }

  *(a1 + 52) = v4;
  return v4;
}

void sub_2991E8690(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_2A1F63C88, &unk_2A1F63888, 0))
  {
    sub_2991E2858();
  }

  sub_2991E8718(a1, lpsrc);
}

void sub_2991E8718(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3397);
    v4 = sub_2991EF75C(v27, "CHECK failed: (&from) != (this): ");
    sub_2991EF898(&v26, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v27);
  }

  sub_2993F97F4(a1 + 24, a2 + 24);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_2991E2054((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_2991EA260(a1 + 56, a2 + 56);
  v13 = *(a2 + 48);
  if ((v13 & 0xF) != 0)
  {
    if (v13)
    {
      *(a1 + 48) |= 1u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = sub_2991E8BE0(v15);
        *(a1 + 80) = v14;
      }

      if (*(a2 + 80))
      {
        v16 = *(a2 + 80);
      }

      else
      {
        v16 = &unk_2A1461A18;
      }

      sub_2991E4D18(v14, v16);
    }

    if ((v13 & 2) != 0)
    {
      *(a1 + 48) |= 2u;
      v17 = *(a1 + 88);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = sub_2991E8CB0(v18);
        *(a1 + 88) = v17;
      }

      if (*(a2 + 88))
      {
        v19 = *(a2 + 88);
      }

      else
      {
        v19 = &unk_2A1461B60;
      }

      sub_2991E5E70(v17, v19);
      if ((v13 & 4) == 0)
      {
LABEL_25:
        if ((v13 & 8) == 0)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    else if ((v13 & 4) == 0)
    {
      goto LABEL_25;
    }

    *(a1 + 48) |= 4u;
    v20 = *(a1 + 96);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = sub_2991E8E50(v21);
      *(a1 + 96) = v20;
    }

    if (*(a2 + 96))
    {
      v22 = *(a2 + 96);
    }

    else
    {
      v22 = &unk_2A1461BE0;
    }

    sub_2991E6ED4(v20, v22);
    if ((v13 & 8) != 0)
    {
LABEL_43:
      *(a1 + 48) |= 8u;
      v23 = *(a1 + 104);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = sub_2991E8CB0(v24);
        *(a1 + 104) = v23;
      }

      if (*(a2 + 104))
      {
        v25 = *(a2 + 104);
      }

      else
      {
        v25 = &unk_2A1461B60;
      }

      sub_2991E5E70(v23, v25);
    }
  }
}

void sub_2991E8930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991E8948(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_2991E7BC8(a1);

    sub_2991E8718(a1, a2);
  }
}

uint64_t sub_2991E8994(uint64_t a1)
{
  result = sub_2991F4974(a1 + 24);
  if (!result)
  {
    return result;
  }

  result = sub_2991E8B78(a1 + 56);
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4741);
      v5 = sub_2991EF75C(v13, "CHECK failed: !value || trainer_spec_ != nullptr: ");
      sub_2991EF898(&v12, &v5->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v13);
      v4 = *(a1 + 80);
    }

    result = sub_2991F4974(v4 + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 48);
  }

  if ((v3 & 2) != 0)
  {
    v6 = *(a1 + 88);
    if (!v6)
    {
      sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4824);
      v7 = sub_2991EF75C(v13, "CHECK failed: !value || normalizer_spec_ != nullptr: ");
      sub_2991EF898(&v12, &v7->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v13);
      v6 = *(a1 + 88);
    }

    result = sub_2991F4974(v6 + 24);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 48);
  }

  if ((v3 & 4) == 0)
  {
LABEL_18:
    if ((v3 & 8) == 0)
    {
      return 1;
    }

    v10 = *(a1 + 104);
    if (!v10)
    {
      sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4990);
      v11 = sub_2991EF75C(v13, "CHECK failed: !value || denormalizer_spec_ != nullptr: ");
      sub_2991EF898(&v12, &v11->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v13);
      v10 = *(a1 + 104);
    }

    result = sub_2991F4974(v10 + 24);
    if (result)
    {
      return 1;
    }

    return result;
  }

  v8 = *(a1 + 96);
  if (!v8)
  {
    sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4907);
    v9 = sub_2991EF75C(v13, "CHECK failed: !value || self_test_data_ != nullptr: ");
    sub_2991EF898(&v12, &v9->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v13);
    v8 = *(a1 + 96);
  }

  result = sub_2991F4974(v8 + 16);
  if (result)
  {
    v3 = *(a1 + 48);
    goto LABEL_18;
  }

  return result;
}

void sub_2991E8B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

BOOL sub_2991E8B78(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_2991C01E8(a1, v2);
  }

  while ((sub_2991F4974(v5 + 16) & 1) != 0);
  return v3 < 1;
}

uint64_t sub_2991E8BE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2A1F637E0, 328);
  }

  v2 = sub_2991EE040(a1, 328);
  sub_2991E2B34(v2, a1);
  return v2;
}

uint64_t sub_2991E8CB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2A1F63808, 88);
  }

  v2 = sub_2991EE040(a1, 88);
  sub_2991E52A4(v2, a1);
  return v2;
}

void *sub_2991E8D80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2A1F63840, 40);
  }

  v2 = sub_2991EE040(a1, 40);
  sub_2991E606C(v2, a1);
  return v2;
}

uint64_t sub_2991E8E50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2A1F63858, 72);
  }

  v2 = sub_2991EE040(a1, 72);
  sub_2991E6830(v2, a1);
  return v2;
}

void *sub_2991E8F20(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2A1F63870, 64);
  }

  v2 = sub_2991EE040(a1, 64);
  sub_2991E6FDC(v2, a1);
  return v2;
}

uint64_t sub_2991E8FF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_2A1F63888, 112);
  }

  v2 = sub_2991EE040(a1, 112);
  sub_2991E7918(v2, a1);
  return v2;
}

unint64_t sub_2991E9198(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2A145E200, memory_order_acquire);
    if (!result)
    {
      result = sub_2991EE194(&off_2A145E1E8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_2991E91FC(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2A145E180, memory_order_acquire);
    if (!result)
    {
      result = sub_2991EE194(&off_2A145E168);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_2991E9260(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2A145E1A0, memory_order_acquire);
    if (!result)
    {
      result = sub_2991EE194(&off_2A145E188);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_2991E92C4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2A145E1C0, memory_order_acquire);
    if (!result)
    {
      result = sub_2991EE194(&off_2A145E1A8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_2991E9328(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2A145E1E0, memory_order_acquire);
    if (!result)
    {
      result = sub_2991EE194(&off_2A145E1C8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sub_2991E938C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  return v1[248];
}

uint64_t sub_2991E93A8(uint64_t a1)
{
  v1 = &unk_2A1461A18;
  if (*(a1 + 80))
  {
    v1 = *(a1 + 80);
  }

  return (v1[40] >> 3) & 1;
}

void *sub_2991E93C8(uint64_t a1, int a2)
{
  v2 = *(sub_2991C01E8(a1 + 56, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

char *sub_2991E9508(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    v1 = &unk_2A1461B60;
  }

  return v1 + 16;
}

char *sub_2991E9524(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    v1 = &unk_2A1461B60;
  }

  return v1 + 16;
}

uint64_t sub_2991E9540(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_2991E9574(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2A145E200, memory_order_acquire);
    if (!result)
    {
      result = sub_2991EE194(&off_2A145E1E8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_2991E95D8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2A145E180, memory_order_acquire);
    if (!result)
    {
      result = sub_2991EE194(&off_2A145E168);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_2991E963C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2A145E1A0, memory_order_acquire);
    if (!result)
    {
      result = sub_2991EE194(&off_2A145E188);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_2991E96A0(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2A145E1C0, memory_order_acquire);
    if (!result)
    {
      result = sub_2991EE194(&off_2A145E1A8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_2991E9704(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_2A145E1E0, memory_order_acquire);
    if (!result)
    {
      result = sub_2991EE194(&off_2A145E1C8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sub_2991E9768(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  return v1[248];
}

uint64_t sub_2991E9784(uint64_t a1)
{
  v1 = &unk_2A1461A18;
  if (*(a1 + 64))
  {
    v1 = *(a1 + 64);
  }

  return (v1[40] >> 3) & 1;
}

uint64_t sub_2991E97A4(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_2A1461A18;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void *sub_2991E97D0(uint64_t a1, int a2)
{
  v2 = *(sub_2991C01E8(a1 + 40, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

char *sub_2991E9910(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v1 = &unk_2A1461B60;
  }

  return v1 + 16;
}

char *sub_2991E992C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    v1 = &unk_2A1461B60;
  }

  return v1 + 16;
}

void sub_2991E9948(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_2991E995C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_2991E9A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E9A3C(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_2991EF744(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v4 = sub_2991EF75C(v6, "CHECK failed: (n) >= (0): ");
    sub_2991EF898(&v5, &v4->__r_.__value_.__l.__data_);
    return sub_2991EF8A0(v6);
  }

  else if (v1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void sub_2991E9AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E9B00(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_2991EF75C(v8, "CHECK failed: (index) >= (0): ");
    sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_2991EF75C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_2991E9BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E9BE0(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_2991EF744(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_2991EF75C(v7, "CHECK failed: (n) >= (0): ");
    sub_2991EF898(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_2991EF8A0(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2991E626C(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_2991E9C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_2991E9C90(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_2991EF744(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_2991EF75C(v7, "CHECK failed: (n) >= (0): ");
    sub_2991EF898(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_2991EF8A0(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2991E71C0(v4);
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_2991E9D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991E9D40(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_2991EF75C(v11, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_2992018BC(v3, v5);
    result = sub_2991E9E2C(v3, v7, (v6 + 8), v5, **(v3 + 16) - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = *(v3 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_2991E9E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

std::string *sub_2991E9E2C(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19;
      if (!v18)
      {
        operator new();
      }

      if (*(v18 + 24))
      {
        sub_2991EA5B8(v18 + 32);
      }

      v22 = sub_2991EDD44(v18, 0x18uLL, sub_2991E9948);
      v22->__r_.__value_.__r.__words[0] = 0;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      ++v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_2991E9F34(uint64_t *a1)
{
  sub_2991E9F70(a1);

  return sub_2991E2350(a1);
}

void sub_2991E9F70(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_2991E60DC(*v3);
          MEMORY[0x29C29BFB0](v5, 0x1081C400F7E8713);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

unint64_t sub_2991E9FF4(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_2991EF75C(v11, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_2991EF8A0(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_2992018BC(v3, v5);
    result = sub_2991EA0E0(v3, v7, (v6 + 8), v5, **(v3 + 16) - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = *(v3 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_2991EA0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2991EA0E0(unint64_t result, unint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2991EA190(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2991E8D80(v18);
      result = sub_2991EA190(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_2991EA1A0(uint64_t *a1)
{
  sub_2991EA1DC(a1);

  return sub_2991E2350(a1);
}

void sub_2991EA1DC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_2991E7068(*v3);
          MEMORY[0x29C29BFB0](v5, 0x10A1C40F497E4DALL);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_2991EA260(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_2991EF75C(v11, "CHECK failed: (&other) != (this): ");
    sub_2991EF898(&v10, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_2992018BC(a1, v5);
    sub_2991EA34C(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_2991EA334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991EA34C(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_2991EA3FC(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2991E8F20(v18);
      sub_2991EA3FC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

unint64_t sub_2991EA438()
{

  return sub_2991EDD44(v0, 0x18uLL, sub_2991E9948);
}

uint64_t *sub_2991EA4B0()
{
  result = *(*(v0 + 32) + 32);
  v2 = *result;
  return result;
}

void *sub_2991EA528(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_2991EA558()
{

  operator new();
}

void sub_2991EA570(unint64_t *a1, unint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_2991E2054(a1);
  }

  sub_2991FC480(3, a2, v3);
}

void *sub_2991EA6B8(void *a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_2A1F638E0;
  v6 = a1 + 1;
  sub_29919C3A8(a1 + 1);
  if (a3)
  {
    operator new();
  }

  v7 = MEMORY[0x29EDC93B8];
  a1[2] = MEMORY[0x29EDC93B8];
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    v15 = 5;
    sub_2991BF614(&v16);
    sub_2991C0E9C(&v16, "", 1);
    v8 = strlen(a2);
    sub_2991C0E9C(&v16, a2, v8);
    sub_2991C0E9C(&v16, ": ", 3);
    v9 = __error();
    sub_2991EB540(*v9);
    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = __p[1];
    }

    sub_2991C0E9C(&v16, v10, v11);
    sub_2991BC3FC(&v15, &v21);
    sub_2991ED50C(v6, &v21);
    sub_2991ED2F4(&v21);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *MEMORY[0x29EDC9538];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v17 = MEMORY[0x29EDC9570] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x29C29BF00](&v20);
  }

  return a1;
}

void sub_2991EA948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_2991ED2F4((v16 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_2991BC48C(&a15);
  sub_2991ED2F4(v15);
  _Unwind_Resume(a1);
}

void sub_2991EA9C4(void *a1)
{
  sub_2991EAC08(a1);

  JUMPOUT(0x29C29BFB0);
}

BOOL sub_2991EAA08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v8, MEMORY[0x29EDC93D0]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v8);
  v6 = sub_2991EAC8C(v3, a2, v5);
  return (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
}

BOOL sub_2991EAAEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x29EDC93B8];
  if (v2 == MEMORY[0x29EDC93B8])
  {
    if (sub_2991EB39C() <= 2)
    {
      v12 = 0;
      v4 = sub_2991C0E9C(MEMORY[0x29EDC93C0], "filesystem.cc", 13);
      v5 = sub_2991C0E9C(v4, "(", 1);
      v6 = MEMORY[0x29C29BD30](v5, 55);
      v7 = sub_2991C0E9C(v6, ") ", 2);
      v8 = sub_2991C0E9C(v7, "LOG(", 4);
      v9 = sub_2991C0E9C(v8, "ERROR", 5);
      v10 = sub_2991C0E9C(v9, ") ", 2);
      sub_2991C0E9C(v10, "ReadAll is not supported for stdin.", 35);
      sub_2991BF944(&v12);
    }
  }

  else
  {
    sub_2991EAE80(a2, *(v2 + *(*v2 - 24) + 40), 0);
  }

  return v2 != v3;
}

void *sub_2991EAC08(void *a1)
{
  *a1 = &unk_2A1F638E0;
  v2 = a1[2];
  if (v2 != MEMORY[0x29EDC93B8] && v2 != 0)
  {
    (*(*v2 + 8))(v2);
  }

  sub_2991ED2F4(a1 + 1);
  return a1;
}

void *sub_2991EAC8C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x29C29BC30](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_2991EADF0(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x2991EADB0);
  }

  __cxa_rethrow();
}

void sub_2991EAE80(uint64_t a1, void *a2, void *a3)
{
  sub_2991EAF00(&__p, a2, a3);
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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  MEMORY[0x29C29BB30](a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2991EAEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2991EAF00(std::string *a1, void *a2, void *a3)
{
  v11 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = sub_2991EB060(&v11);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(a1, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  return result;
}

void sub_2991EB030(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

BOOL sub_2991EB060(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

uint64_t *sub_2991EB0E0(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x29EDC9560] + 64;
  a1[52] = MEMORY[0x29EDC9560] + 64;
  v3 = *(MEMORY[0x29EDC9520] + 16);
  v4 = *(MEMORY[0x29EDC9520] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC9560] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x29C29BBE0](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2991EB268(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C29BF00](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2991EB2A0()
{
  v0 = atomic_load(&unk_2A145E208);
  if (v0 != -1)
  {
    return atomic_load(&unk_2A145E208);
  }

  sub_2991EB328(&v3);
  v1 = MEMORY[0x29C29BDA0](&v3);
  std::random_device::~random_device(&v3);
  return v1;
}

void sub_2991EB300(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  std::random_device::~random_device(&a11);
  __cxa_begin_catch(a1);
  atomic_load(v12);
  __cxa_end_catch();
  JUMPOUT(0x2991EB2ECLL);
}

std::random_device *sub_2991EB328(std::random_device *a1)
{
  sub_2991C6CA8(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_2991EB380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991EB3AC(char *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if ((v3 & 0x80000000) == 0)
  {
    *a3 = 1;
    return *a1;
  }

  v5 = a2 - a1;
  if ((a2 - a1) >= 2)
  {
    if ((v3 & 0xE0) == 0xC0)
    {
      v6 = a1[1];
      if (v6 <= -65)
      {
        v7 = (v3 & 0x1F) << 6;
        if (v7 >= 0x80)
        {
          result = v7 | v6 & 0x3F;
          v8 = 2;
LABEL_8:
          *a3 = v8;
          return result;
        }
      }
    }

    else if (v5 != 2)
    {
      if ((v3 & 0xF0) == 0xE0)
      {
        v9 = a1[1];
        if (v9 <= -65)
        {
          v10 = a1[2];
          if (v10 <= -65)
          {
            v11 = (v3 & 0xF) << 12;
            v12 = v11 & 0xFFFFF03F | ((v9 & 0x3F) << 6);
            if (v12 >= 0x800 && ((v11 - 57344) < 0x102000 || v12 >> 11 <= 0x1A))
            {
              result = v11 & 0xFFFFF000 | ((v9 & 0x3F) << 6) | v10 & 0x3F;
              v8 = 3;
              goto LABEL_8;
            }
          }
        }
      }

      else if (v5 >= 4 && (v3 & 0xF8) == 0xF0)
      {
        v13 = a1[1];
        if (v13 <= -65)
        {
          v14 = a1[2];
          if (v14 <= -65)
          {
            v15 = a1[3];
            if (v15 <= -65)
            {
              v16 = ((v3 & 7) << 18) | ((v13 & 0x3F) << 12);
              if (v16 >= 0x10000)
              {
                result = v15 & 0x3F | ((v14 & 0x3F) << 6) | v16;
                if (v16 - 57344 < 0x102000 || result >> 11 <= 0x1A)
                {
                  v8 = 4;
                  goto LABEL_8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = 1;
  return 65533;
}

uint64_t sub_2991EB4FC()
{
  if ((*off_2A1A9A388() & 1) == 0)
  {
    sub_2991EBA3C();
  }

  return off_2A1A9A370(&off_2A1A9A370);
}

uint64_t sub_2991EB540(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  strerror_r(a1, __strerrbuf, 0x3FFuLL);
  sub_2991BF614(&v7);
  v2 = strlen(__strerrbuf);
  v3 = sub_2991C0E9C(&v7, __strerrbuf, v2);
  v4 = sub_2991C0E9C(v3, " Error #", 8);
  MEMORY[0x29C29BD30](v4, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x29EDC9538];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v8 = MEMORY[0x29EDC9570] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  result = MEMORY[0x29C29BF00](&v11);
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

unint64_t sub_2991EB724(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    sub_2991EBAC0();
  }

  return (a1 + a2 - 1) / a2 * a2;
}

void sub_2991EB74C(std::string *this)
{
  LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if ((size & 3) != 0)
  {
    do
    {
      std::string::push_back(this, 0);
      LOBYTE(v3) = *(&this->__r_.__value_.__s + 23);
      if ((v3 & 0x80u) != 0)
      {
        v3 = this->__r_.__value_.__l.__size_;
      }
    }

    while ((v3 & 3) != 0);
  }
}

void *sub_2991EB7B4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    *a1 += a2;
    a1[1] = v6;

    return sub_29919C3A8(a3);
  }

  else
  {
    v9 = 13;
    v7 = sub_2991BF614(&v10);
    sub_2991C0E9C(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.cc", 63);
    sub_2991C0E9C(&v10, "(", 1);
    MEMORY[0x29C29BD30](&v10, 287);
    sub_2991C0E9C(&v10, ") [", 3);
    sub_2991C0E9C(&v10, "string.size() >= size", 21);
    sub_2991C0E9C(&v10, "] ", 2);
    sub_2991BC3FC(&v9, a3);
    v10 = *MEMORY[0x29EDC9538];
    *(&v10 + *(v10 - 24)) = *(MEMORY[0x29EDC9538] + 24);
    v11 = MEMORY[0x29EDC9570] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x29EDC9568] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    return MEMORY[0x29C29BF00](&v14);
  }
}

uint64_t sub_2991EB9C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2992F8674(result, a4);
  }

  return result;
}

void sub_2991EBA20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_2991EBA3C()
{
  sub_2991EB2A0();
  v0 = off_2A1A9A370(&off_2A1A9A370);
  *v0 = v3;
  do
  {
    v4 = v2(v1);
    *(v4 + 4 * v6) = v5;
  }

  while (v6 != 623);
  *(v2(v1) + 2496) = 0;
  result = off_2A1A9A388();
  *result = 1;
  return result;
}

uint64_t sub_2991EBAEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2991DBC98(a1);
  *v4 = &unk_2A1F63940;
  v4[1] = a2 + 16;
  sub_2991BD808(v4);
  return a1;
}

void *sub_2991EBB54(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sub_2991BB798(a1, a2, a3, a4);
  *result = &unk_2A1F63940;
  return result;
}

void sub_2991EBB8C(void *a1)
{
  sub_2991BC6A8(a1);

  JUMPOUT(0x29C29BFB0);
}

void sub_2991EBBC4(uint64_t *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v71 = *MEMORY[0x29EDCA608];
  (*(*a1 + 16))(v57);
  if (*&v57[0])
  {
    sub_2991ED2F4(v57);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_4;
  }

  sub_2991ED2F4(v57);
  if (!a3)
  {
    goto LABEL_3;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v62 = 0uLL;
  if (a3 >> 59)
  {
    sub_299212A8C();
  }

  sub_2991ECA48(v57, a3, 0, &__p);
  v11 = (*(&v57[0] + 1) - (v62 - __p));
  memcpy(v11, __p, v62 - __p);
  v12 = __p;
  v13 = *(&v62 + 1);
  __p = v11;
  v62 = v57[1];
  *&v57[1] = v12;
  *(&v57[1] + 1) = v13;
  *&v57[0] = v12;
  *(&v57[0] + 1) = v12;
  if (v12)
  {
    operator delete(v12);
  }

  memset(v59, 0, sizeof(v59));
  v60 = 1065353216;
  memset(v57 + 8, 0, 40);
  v58 = 256;
  v56[0] = a1;
  v56[1] = v57;
  v56[2] = &__p;
  v56[3] = &v65;
  v56[4] = v59;
  *&v57[0] = &unk_2A1F63A58;
  v14 = 1;
  do
  {
    v64 = 0uLL;
    v15 = sub_2991C5C50(a1[2], a2, a3, &v63 + 8);
    *&v64 = a2;
    *(&v64 + 1) = v15;
    a3 -= v15;
    if (a3)
    {
      v16 = v14;
    }

    else
    {
      v16 = -1;
    }

    LODWORD(v63) = v14 - 2;
    DWORD1(v63) = v16;
    v17 = v62;
    if (v62 >= *(&v62 + 1))
    {
      v20 = (v62 - __p) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        sub_299212A8C();
      }

      v22 = *(&v62 + 1) - __p;
      if ((*(&v62 + 1) - __p) >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      sub_2991ECA48(&v68, v23, v20, &__p);
      v24 = v70;
      v25 = v64;
      *v70 = v63;
      *(v24 + 16) = v25;
      *&v70 = v70 + 32;
      v26 = &v69[-(v62 - __p)];
      memcpy(v26, __p, v62 - __p);
      v27 = __p;
      v28 = *(&v62 + 1);
      __p = v26;
      v29 = v70;
      v62 = v70;
      *&v70 = v27;
      *(&v70 + 1) = v28;
      v68 = v27;
      v69 = v27;
      if (v27)
      {
        v55 = v29;
        operator delete(v27);
        v29 = v55;
      }

      v19 = v29;
    }

    else
    {
      v18 = v64;
      *v62 = v63;
      *(v17 + 16) = v18;
      v19 = (v17 + 32);
    }

    a2 += v15;
    *&v62 = v19;
    ++v14;
  }

  while (a3);
  if (__p != v19)
  {
    if ((v19 - __p) >= 0x21)
    {
      v30 = 1;
      do
      {
        sub_2991EC32C(v56, v30 - 1, v30);
        ++v30;
      }

      while (v30 < (v62 - __p) >> 5);
    }

    v31 = v65;
    v32 = v66;
    if (v65 == v66)
    {
LABEL_55:
      *(&v64 + 1) = 0;
      operator new();
    }

    v33 = 0;
    while (1)
    {
      v34 = *v31;
      v35 = v32 - v31;
      if (v35 >= 2)
      {
        v36 = 0;
        v37 = v31;
        do
        {
          v38 = v37;
          v37 += v36 + 1;
          v39 = 2 * v36;
          v36 = (2 * v36) | 1;
          v40 = v39 + 2;
          if (v40 < v35)
          {
            v41 = v37[1];
            v42 = *(*v37 + 2);
            v43 = *(v41 + 2);
            if (v42 < v43 || v42 == v43 && **v37 > *v41)
            {
              ++v37;
              v36 = v40;
            }
          }

          *v38 = *v37;
        }

        while (v36 <= ((v35 - 2) >> 1));
        v44 = v32 - 1;
        if (v37 == v44)
        {
          *v37 = v34;
        }

        else
        {
          *v37 = *v44;
          *v44 = v34;
          sub_2991EC714(v31, (v37 + 1), v37 + 1 - v31);
        }
      }

      --v66;
      v45 = *v34;
      v46 = *v34;
      v47 = __p;
      v48 = *(__p + 4 * v46 + 3);
      if (!v48)
      {
        goto LABEL_54;
      }

      v49 = v34[1];
      v50 = *(__p + 4 * v49 + 3);
      if (!v50 || v50 + v48 != *(v34 + 2))
      {
        goto LABEL_54;
      }

      if (a5 > 0.0)
      {
        if (a5 >= 1.0)
        {
          goto LABEL_54;
        }

        if (!v33)
        {
          v33 = sub_2991EB4FC();
        }

        v51 = sub_2991D8B18(v33);
        if ((v51 + sub_2991D8B18(v33) * 4294967300.0) * 5.42101086e-20 < a5)
        {
          goto LABEL_54;
        }

        v47 = __p;
        v45 = *v34;
        v49 = v34[1];
        v46 = *v34;
      }

      v52 = &v47[8 * v46];
      v53 = &v47[8 * v49];
      *(v52 + 3) += *(v53 + 3);
      v54 = *(v53 + 1);
      *(v52 + 1) = v54;
      if ((v54 & 0x80000000) == 0)
      {
        v47[8 * v54] = v45;
      }

      *(v53 + 2) = "";
      *(v53 + 3) = 0;
      sub_2991EC32C(v56, *(__p + 8 * v46), v45);
      sub_2991EC32C(v56, *v34, *(__p + 8 * *v34 + 1));
LABEL_54:
      v31 = v65;
      v32 = v66;
      if (v65 == v66)
      {
        goto LABEL_55;
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_2991EC648(v57);
  sub_29921ED28(v59);
  if (__p)
  {
    *&v62 = __p;
    operator delete(__p);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

LABEL_4:
  v10 = *MEMORY[0x29EDCA608];
}

void sub_2991EC290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  sub_2991ECAF8(&a33);
  sub_2991EC648(&a18);
  sub_29921ED28(&a25);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  v35 = *(v33 - 208);
  if (v35)
  {
    *(v33 - 200) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

double sub_2991EC32C(uint64_t *a1, int a2, int a3)
{
  if (a2 != -1)
  {
    v37[14] = v3;
    v37[15] = v4;
    if (a3 != -1)
    {
      v6 = a2;
      v7 = *a1[2];
      v8 = v7 + 32 * a2;
      if ((*(v8 + 8) & 1) == 0)
      {
        v9 = a3;
        v10 = v7 + 32 * a3;
        if ((*(v10 + 8) & 1) == 0)
        {
          v11 = *a1;
          v12 = *(v8 + 16);
          v13 = *(v10 + 24) + *(v8 + 24);
          v37[0] = v12;
          v37[1] = v13;
          v14 = *(v11 + 40);
          v15 = *v14;
          if (v13)
          {
            v16 = 0;
            v17 = v13;
            while (1)
            {
              v18 = *v12++;
              v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v18;
              v15 = v14[v16];
              if ((v15 & 0x800000FF) != v18)
              {
                break;
              }

              if (!--v17)
              {
                goto LABEL_16;
              }
            }
          }

          else
          {
            v19 = *v12;
            if (*v12)
            {
              v16 = 0;
              v20 = v12 + 1;
              while (1)
              {
                v16 ^= (v15 >> 10 << ((v15 >> 6) & 8)) ^ v19;
                v15 = v14[v16];
                if ((v15 & 0x800000FF) != v19)
                {
                  break;
                }

                v21 = *v20++;
                v19 = v21;
                if (!v21)
                {
                  goto LABEL_16;
                }
              }
            }

            else
            {
              v16 = 0;
LABEL_16:
              if ((v15 & 0x100) != 0)
              {
                v22 = v14[v16 ^ (v15 >> 10 << ((v15 >> 6) & 8))];
                v23 = a1[1];
                v24 = v23[5];
                v25 = v23[6];
                v26 = v23[4];
                if (v26 >= v25)
                {
                  v26 = 0;
                  ++v24;
                  v23[4] = 0;
                  v23[5] = v24;
                }

                v27 = v23[1];
                if (v24 == (v23[2] - v27) >> 3)
                {
                  is_mul_ok(v25, 0x18uLL);
                  operator new[]();
                }

                v28 = *(v27 + 8 * v24) + 24 * v26;
                v23[4] = v26 + 1;
                v36 = v28;
                *v28 = a2;
                *(v28 + 4) = a3;
                *(v28 + 8) = (*(*v11 + 136))(v11, v22 & 0x7FFFFFFF);
                *(v28 + 16) = v13;
                v29 = a1[3];
                sub_29921A7E0(v29, &v36);
                sub_2991EC714(*v29, v29[1], (v29[1] - *v29) >> 3);
                if ((*(**(v11 + 8) + 128))(*(v11 + 8), v22 & 0x7FFFFFFF))
                {
                  v31 = *a1[2];
                  v34 = *(v31 + 32 * v6 + 16);
                  v35 = *(v31 + 32 * v9 + 16);
                  v32 = a1[4];
                  v37[3] = v37;
                  v33 = sub_2991EC7B0(v32, v37);
                  result = *&v34;
                  *(v33 + 2) = v34;
                  *(v33 + 3) = v35;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2991EC5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[1] = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_2991A2240();
  }

  return (*(*v4 + 48))(v4, v7, &v6);
}

void *sub_2991EC648(void *a1)
{
  *a1 = &unk_2A1F63A58;
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x29C29BF70](*v2, 0x1000C801E56706BLL);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = a1[1];
  }

  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2991EC714(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 >= 2)
  {
    v4 = v3 >> 1;
    v5 = (result + 8 * (v3 >> 1));
    v6 = *v5;
    v7 = *(a2 - 8);
    v8 = *(*v5 + 8);
    v9 = *(v7 + 8);
    if (v8 < v9 || v8 == v9 && *v6 > *v7)
    {
      *(a2 - 8) = v6;
      if (v3 >= 2)
      {
        v10 = (result + 8 * (v3 >> 1));
        while (1)
        {
          v11 = v4 - 1;
          v4 = (v4 - 1) >> 1;
          v5 = (result + 8 * v4);
          v12 = *v5;
          v13 = *(*v5 + 8);
          if (v13 >= v9 && (v13 != v9 || *v12 <= *v7))
          {
            break;
          }

          *v10 = v12;
          v10 = (result + 8 * v4);
          if (v11 <= 1)
          {
            goto LABEL_13;
          }
        }

        v5 = v10;
      }

LABEL_13:
      *v5 = v7;
    }
  }

  return result;
}

uint64_t **sub_2991EC7B0(void *a1, uint64_t a2)
{
  v4 = sub_2991ECA20(a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

void *sub_2991ECA48(void *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result[3] = 0;
  result[4] = a4;
  if (a2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    sub_29919600C();
  }

  *result = 0;
  result[1] = 32 * a3;
  result[2] = 32 * a3;
  result[3] = 0;
  return result;
}

void sub_2991ECAC0(void *a1)
{
  sub_2991EC648(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991ECAF8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_2991ECBF4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1F63A88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_2991ECC2C(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  *&v21 = *a2;
  *(&v21 + 1) = v4;
  v6 = *(a1 + 8);
  v7 = ((*v6)[14])(v6, v21, v4);
  if (v7 != -1 && ((*(*v6[1] + 128))(v6[1], v7) & 1) != 0 && (v8 = sub_2991ECE30(*(a1 + 24), &v21)) != 0)
  {
    v9 = v8;
    sub_2991EC5EC(*(a1 + 16), v9[4], v9[5], v5);
    sub_2991EC5EC(*(a1 + 16), v9[6], v9[7], v5);
  }

  else
  {
    v11 = *(v5 + 8);
    v10 = *(v5 + 16);
    if (v11 >= v10)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v5) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_299212A8C();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v5) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        sub_2991C0D0C(v5, v16);
      }

      v17 = 24 * v13;
      *v17 = v21;
      *(v17 + 16) = v7;
      v12 = 24 * v13 + 24;
      v18 = *(v5 + 8) - *v5;
      v19 = v17 - v18;
      memcpy((v17 - v18), *v5, v18);
      v20 = *v5;
      *v5 = v19;
      *(v5 + 8) = v12;
      *(v5 + 16) = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v11 = v21;
      *(v11 + 16) = v7;
      v12 = v11 + 24;
    }

    *(v5 + 8) = v12;
  }
}

uint64_t sub_2991ECDE4(uint64_t a1, uint64_t a2)
{
  if (sub_2991A8520(a2, &unk_2A1F63AF8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_2991ECE30(void *a1, uint64_t a2)
{
  v4 = sub_2991ECA20(a1, *a2, *(a2 + 8));
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_2991ECF44(void *result, void *a2)
{
  v6[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2991ED19C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_2991EDA10(a1);
}

void sub_2991ED1A8()
{
  if (!dword_2A1461CD8)
  {
    v0 = sub_2991ED1F0(MEMORY[0x29EDC93C0], "Program terminated with an unrecoverable error.");
    v1 = sub_2991ED238(v0);
    sub_2991ED2F0(v1);
    exit(-1);
  }

  dword_2A1461CD8 = 2;
}

void *sub_2991ED1F0(void *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_2991C0E9C(a1, __s, v4);
}

void *sub_2991ED238(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x29EDC93D0]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t *sub_2991ED2F4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_2991ED6DC(a1, v2);
  }

  return a1;
}

void sub_2991ED438(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_2991ED6DC(v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2991ED45C(void *result, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *result = 0;
  return result;
}

void sub_2991ED50C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (*a2)
    {
      operator new();
    }

    *a1 = 0;
    if (v3)
    {

      sub_2991ED6DC(a1, v3);
    }
  }
}

const char *sub_2991ED5EC(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return "";
  }

  result = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

std::string *sub_2991ED618@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v4 = result;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *v3 - 1;
    if (v5 < 0x10)
    {
      MEMORY[0x29C29BB20](a2, off_29EF0BD28[v5]);
    }

    std::string::append(a2, ": ");
    v6 = *(v4->__r_.__value_.__r.__words[0] + 31);
    if (v6 >= 0)
    {
      v7 = (v4->__r_.__value_.__r.__words[0] + 8);
    }

    else
    {
      v7 = *(v4->__r_.__value_.__r.__words[0] + 8);
    }

    if (v6 >= 0)
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 31);
    }

    else
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 16);
    }

    return std::string::append(a2, v7, v8);
  }

  else
  {
    *(a2 + 23) = 2;
    strcpy(a2, "OK");
  }

  return result;
}

void sub_2991ED6C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2991ED6DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    JUMPOUT(0x29C29BFB0);
  }
}

void *sub_2991ED740()
{
  if ((atomic_load_explicit(&qword_2A145FD50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A145FD50))
  {
    operator new();
  }

  v0 = qword_2A145FD48;

  return sub_2991ED810(v0);
}

void sub_2991ED7D8(_Unwind_Exception *a1)
{
  MEMORY[0x29C29BFB0](v1, 0x1000C4000313F17);
  __cxa_guard_abort(&qword_2A145FD50);
  _Unwind_Resume(a1);
}

void *sub_2991ED810(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_2993FF150;
    v2[2] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
}

uint64_t sub_2991ED878(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) < a2)
  {
    sub_2991EF744(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 111);
    v4 = sub_2991EF75C(v7, "CHECK failed: n <= size_: ");
    sub_2991EF898(&v6, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v7);
  }

  return a1 + a2;
}

void sub_2991ED8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void *sub_2991ED924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = v6 + 72;
  if (v6 + 72 > *(a1 + 16))
  {
    sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 398);
    v8 = sub_2991EF75C(v13, "CHECK failed: (pos + ArenaImpl::kSerialArenaSize) <= (b->size()): ");
    sub_2991EF898(&v12, &v8->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v13);
  }

  v9 = sub_2991ED878(a1, v6);
  *(a1 + 8) = v7;
  *v9 = a3;
  v9[1] = a2;
  v9[2] = a1;
  v9[5] = sub_2991ED878(a1, v7);
  v10 = sub_2991ED878(a1, *(a1 + 16));
  v9[3] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[6] = v10;
  return v9;
}

void sub_2991ED9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void *sub_2991EDA40(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  if (a2 == -1)
  {
    if (v5)
    {
      v7 = *v5;
    }

    else
    {
      v7 = 256;
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0x2000;
    }

    if (v6 >= 2 * a2)
    {
      v7 = 2 * a2;
    }

    else
    {
      v7 = v6;
    }
  }

  if (a3 >= 0xFFFFFFFFFFFFFFE8)
  {
    sub_2991EF744(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 245);
    v8 = sub_2991EF75C(v12, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): ");
    sub_2991EF898(&v11, &v8->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v12);
    v5 = *(a1 + 32);
  }

  if (v7 <= a3 + 24)
  {
    v9 = a3 + 24;
  }

  else
  {
    v9 = v7;
  }

  if (v5)
  {
    result = (*(v5 + 16))(v9);
  }

  else
  {
    result = operator new(v9);
  }

  atomic_fetch_add_explicit((a1 + 16), v9, memory_order_relaxed);
  return result;
}

void sub_2991EDB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2991EDB44(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = -1;
  }

  v7 = sub_2991EDA40(a3, v6, a2);

  return sub_2991EE0D8(v7, v8, a1, 0, 0);
}

void *sub_2991EDBA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = a1[3];
  do
  {
    if (result)
    {
      if ((2 * *result) >= 0x40)
      {
        v7 = 64;
      }

      else
      {
        v7 = 2 * *result;
      }
    }

    else
    {
      v7 = 8;
    }

    result = sub_2991EDC3C(a1, (16 * v7 + 23) & 0xFF0);
    v8 = a1[3];
    *result = v7;
    result[1] = v8;
    a1[3] = result;
    a1[7] = (result + 2);
    a1[8] = &result[2 * v7 + 2];
  }

  while (!v7);
  result[2] = a2;
  result[3] = a3;
  a1[7] = (result + 4);
  return result;
}

unint64_t sub_2991EDC3C(uint64_t *a1, unint64_t a2)
{
  if (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != a2)
  {
    sub_2991EF744(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 159);
    v4 = sub_2991EF75C(v9, "CHECK failed: (internal::AlignUpTo8(n)) == (n): ");
    sub_2991EF898(&v8, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v9);
  }

  result = a1[5];
  v6 = a1[6];
  if (v6 < result)
  {
    sub_2991EF744(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 160);
    v7 = sub_2991EF75C(v9, "CHECK failed: (limit_) >= (ptr_): ");
    sub_2991EF898(&v8, &v7->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v9);
    result = a1[5];
    v6 = a1[6];
  }

  if (v6 - result < a2)
  {
    return sub_2991EDFC4(a1, a2);
  }

  a1[5] = result + a2;
  return result;
}

void sub_2991EDD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2991EDD44(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_2991ED740();
  if (v6[1] == a1[3])
  {
    explicit = v6[2];
    goto LABEL_3;
  }

  v9 = sub_2991ED740();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v9)
  {
LABEL_3:

    return sub_2991EDDF0(explicit, a2, a3);
  }

  return sub_2991EDE50(a1, a2, a3);
}

unint64_t sub_2991EDDF0(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2991EDC3C(a1, a2);
  v6 = v5;
  v7 = a1[7];
  if (v7 == a1[8])
  {
    sub_2991EDBA0(a1, v5, a3);
  }

  else
  {
    *v7 = v5;
    v7[1] = a3;
    a1[7] = (v7 + 2);
  }

  return v6;
}

unint64_t sub_2991EDE50(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_2991ED740();
  v7 = sub_2991EDEFC(a1, v6);

  return sub_2991EDDF0(v7, a2, a3);
}

unint64_t sub_2991EDEB4(void *a1, unint64_t a2)
{
  v4 = sub_2991ED740();
  v5 = sub_2991EDEFC(a1, v4);

  return sub_2991EDC3C(v5, a2);
}

unint64_t sub_2991EDEFC(void *a1, uint64_t a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    while (*(explicit + 8) != a2)
    {
      explicit = *(explicit + 32);
      if (!explicit)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v5 = sub_2991EDA40(a1, -1, 0x48uLL);
    *v5 = xmmword_2993FF160;
    v5[2] = v6;
    v7 = sub_2991ED924(v5, a2, a1);
    explicit = v7;
    v8 = *a1;
    v7[4] = *a1;
    v9 = v8;
    atomic_compare_exchange_strong_explicit(a1, &v9, v7, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      v10 = v9;
      do
      {
        v7[4] = v9;
        atomic_compare_exchange_strong_explicit(a1, &v10, v7, memory_order_release, memory_order_relaxed);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  sub_2991ED740()[2] = explicit;
  v12 = a1[3];
  sub_2991ED740()[1] = v12;
  atomic_store(explicit, a1 + 1);
  return explicit;
}

uint64_t sub_2991EDFC4(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  *(v4 + 8) = *(v4 + 16) - a1[6] + a1[5];
  v5 = sub_2991EDB44(v4, a2, *a1);
  a1[2] = v5;
  a1[5] = sub_2991ED878(v5, v5[1]);
  a1[6] = sub_2991ED878(a1[2], *(a1[2] + 16));

  return sub_2991EDC3C(a1, a2);
}

unint64_t sub_2991EE044(void *a1, unint64_t a2)
{
  v4 = sub_2991ED740();
  if (v4[1] == a1[3])
  {
    explicit = v4[2];
    goto LABEL_3;
  }

  v7 = sub_2991ED740();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v7)
  {
LABEL_3:

    return sub_2991EDC3C(explicit, a2);
  }

  return sub_2991EDEB4(a1, a2);
}

uint64_t *sub_2991EE0D8(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v6 = 2;
  if (!a5)
  {
    v6 = 0;
  }

  *a1 = v6 | a4 | a3;
  a1[1] = 24;
  a1[2] = a2;
  if ((a3 & 3) != 0)
  {
    sub_2991EF744(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 107);
    v7 = sub_2991EF75C(v10, "CHECK failed: (reinterpret_cast<uintptr_t>(next) & 3) == (0u): ");
    sub_2991EF898(&v9, &v7->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v10);
  }

  return a1;
}

void sub_2991EE16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991EE184(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x29C29BFA0);
  }

  return result;
}

unint64_t sub_2991EE194(unint64_t *a1)
{
  if ((atomic_load_explicit(&qword_2A145FD58, memory_order_acquire) & 1) == 0)
  {
    sub_2991EE81C();
  }

  std::mutex::lock(&stru_2A145E210);
  explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
  if (!explicit)
  {
    v3 = a1[1];
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2991A11B0();
    }

    v4 = *a1;
    if (v3 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v3;
    if (v3)
    {
      memmove(a1, v4, v3);
    }

    *(a1 + v3) = 0;
    atomic_store(a1, a1 + 3);
    explicit = a1;
  }

  std::mutex::unlock(&stru_2A145E210);
  return explicit;
}

unint64_t sub_2991EE290(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 != a2)
  {
    sub_2991E1E40(a1);
    if (*(a3 + 23) >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v6 = *a3;
      v7 = *(a3 + 1);
    }

    JUMPOUT(0x29C29BB30);
  }

  if (!a4)
  {
    operator new();
  }

  if (*(a4 + 24))
  {
    sub_2991EE884(a4);
  }

  result = sub_2991EDD44(a4, 0x18uLL, sub_2991E9948);
  v10 = result;
  if (*(a3 + 23) < 0)
  {
    result = sub_2991A110C(result, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(result + 16) = *(a3 + 2);
    *result = v11;
  }

  *a1 = v10;
  return result;
}

void sub_2991EE3D4(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 == a2)
  {
    if (!a4)
    {
      operator new();
    }

    if (*(a4 + 24))
    {
      v11 = a4;
      sub_2991EE884(a4);
      a4 = v11;
    }

    v9 = sub_2991EDD44(a4, 0x18uLL, sub_2991E9948);
    v10 = *(a3 + 2);
    *v9 = *a3;
    *(v9 + 16) = v10;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    *a1 = v9;
  }

  else
  {
    v6 = sub_2991E1E40(a1);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

uint64_t *sub_2991EE508(uint64_t *a1, uint64_t a2)
{
  if (*a1 == &qword_2A1461CE0)
  {
    return sub_2991EE524(a1, a2);
  }

  else
  {
    return sub_2991E1E40(a1);
  }
}

uint64_t *sub_2991EE524(uint64_t **a1, uint64_t a2)
{
  if (*a1 != &qword_2A1461CE0)
  {
    sub_2991EF744(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v4 = sub_2991EF75C(v7, "CHECK failed: IsDefault(default_value): ");
    sub_2991EF898(&v6, &v4->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v7);
  }

  if (!a2)
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    sub_2991EE8B4(a2);
  }

  result = sub_2991EDD44(a2, 0x18uLL, sub_2991E9948);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *a1 = result;
  return result;
}

void sub_2991EE5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

unint64_t sub_2991EE614(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return sub_2991E1E40(a1);
  }

  else
  {
    return sub_2991EE630(a1, a3, a2);
  }
}

unint64_t sub_2991EE630(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v6 = sub_2991EF75C(v13, "CHECK failed: IsDefault(default_value): ");
    sub_2991EF898(&v12, &v6->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v13);
  }

  explicit = atomic_load_explicit((a3 + 24), memory_order_acquire);
  if (explicit)
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator new();
  }

  explicit = sub_2991EE194(a3);
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(a2 + 24))
  {
    sub_2991EE8B4(a2);
  }

  v8 = sub_2991EDD44(a2, 0x18uLL, sub_2991E9948);
  v9 = v8;
  if (*(explicit + 23) < 0)
  {
    sub_2991A110C(v8, *explicit, *(explicit + 8));
  }

  else
  {
    v10 = *explicit;
    *(v8 + 16) = *(explicit + 16);
    *v8 = v10;
  }

  *a1 = v9;
  return v9;
}

std::string *sub_2991EE794(std::string *result, uint64_t a2)
{
  if (result->__r_.__value_.__r.__words[0])
  {
    v3 = sub_2991E1E40(result);
    explicit = atomic_load_explicit((a2 + 24), memory_order_acquire);
    if (!explicit)
    {
      explicit = sub_2991EE194(a2);
    }

    return std::string::operator=(v3, explicit);
  }

  return result;
}

uint64_t *sub_2991EE808(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

void sub_2991EE81C()
{
  if (__cxa_guard_acquire(&qword_2A145FD58))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_2A145E210, &dword_29918C000);

    __cxa_guard_release(&qword_2A145FD58);
  }
}

int64_t sub_2991EE8F4(uint64_t a1, char *a2)
{
  while (1)
  {
    v5 = *a1;
    v4 = *(a1 + 8);
    if (!v4)
    {
      v10 = v5 - a2;
      v9 = v10 + 16;
      *(a1 + 8) = a2;
      if (((v10 + 16) & 0x80000000) == 0)
      {
        return v9;
      }

      goto LABEL_12;
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      break;
    }

    if (*(a1 + 56) == 1)
    {
      sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 685);
      v7 = sub_2991EF75C(v15, "CHECK failed: !had_error_: ");
      sub_2991EF898(&v14, &v7->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v15);
    }

    if (v6 >= 17)
    {
      sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 686);
      v8 = sub_2991EF75C(v15, "CHECK failed: overrun <= kSlopBytes: ");
      sub_2991EF898(&v14, &v8->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v15);
    }

    a2 = &sub_2991EEA90(a1)[v6];
    if (*(a1 + 56))
    {
      return 0;
    }
  }

  memcpy(v4, (a1 + 16), &a2[-a1 - 16]);
  v11 = *a1;
  *(a1 + 8) += &a2[-a1 - 16];
  v9 = v11 - a2;
  if (((v11 - a2) & 0x80000000) == 0)
  {
    return v9;
  }

LABEL_12:
  sub_2991EF744(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 700);
  v12 = sub_2991EF75C(v15, "CHECK failed: s >= 0: ");
  sub_2991EF898(&v14, &v12->__r_.__value_.__l.__data_);
  sub_2991EF8A0(v15);
  return v9;
}

void sub_2991EEA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

char *sub_2991EEA90(char **a1)
{
  if (*(a1 + 56) == 1)
  {
    sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 788);
    v2 = sub_2991EF75C(v13, "CHECK failed: !had_error_: ");
    sub_2991EF898(&v12, &v2->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v13);
  }

  if (a1[6])
  {
    v3 = (a1 + 2);
    v5 = *a1;
    v4 = a1[1];
    if (v4)
    {
      memcpy(v4, a1 + 2, v5 - v3);
      v12 = 0;
      do
      {
        v13[0].__r_.__value_.__r.__words[0] = 0;
        if (((*(*a1[6] + 16))(a1[6], v13, &v12) & 1) == 0)
        {
          *(a1 + 56) = 1;
          goto LABEL_14;
        }

        v6 = v12;
      }

      while (!v12);
      v5 = v13[0].__r_.__value_.__r.__words[0];
      if (v12 >= 17)
      {
        *v13[0].__r_.__value_.__l.__data_ = **a1;
        *a1 = &v5[v6 - 16];
        a1[1] = 0;
        return v5;
      }

      if (v12 <= 0)
      {
        v10 = v13[0].__r_.__value_.__r.__words[0];
        sub_2991EF744(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 810);
        v9 = sub_2991EF75C(v13, "CHECK failed: size > 0: ");
        sub_2991EF898(&v11, &v9->__r_.__value_.__l.__data_);
        sub_2991EF8A0(v13);
        LODWORD(v6) = v12;
        v5 = v10;
      }

      *v3 = **a1;
      v7 = &v3[v6];
    }

    else
    {
      *v3 = *v5;
      v7 = (a1 + 4);
    }

    *a1 = v7;
    a1[1] = v5;
  }

  else
  {
    *(a1 + 56) = 1;
    v3 = (a1 + 2);
LABEL_14:
    *a1 = (a1 + 4);
  }

  return v3;
}

void sub_2991EEC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

char *sub_2991EEC4C(uint64_t a1, char *a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = sub_2991EE8F4(a1, a2);
    if (v3)
    {
      (*(**(a1 + 48) + 24))(*(a1 + 48), v3);
    }

    a2 = (a1 + 16);
    *a1 = a1 + 16;
    *(a1 + 8) = a1 + 16;
  }

  return a2;
}

char *sub_2991EECB8(uint64_t a1, char *a2)
{
  while (*(a1 + 56) != 1)
  {
    v3 = &a2[-*a1];
    if ((v3 & 0x80000000) != 0)
    {
      sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 829);
      v5 = sub_2991EF75C(v8, "CHECK failed: overrun >= 0: ");
      sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
      goto LABEL_6;
    }

    if (v3 > 0x10)
    {
      sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 830);
      v4 = sub_2991EF75C(v8, "CHECK failed: overrun <= kSlopBytes: ");
      sub_2991EF898(&v7, &v4->__r_.__value_.__l.__data_);
LABEL_6:
      sub_2991EF8A0(v8);
    }

    a2 = &sub_2991EEA90(a1)[v3];
    if (a2 < *a1)
    {
      return a2;
    }
  }

  return (a1 + 16);
}

void sub_2991EEDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

char *sub_2991EEDD0(uint64_t *a1, char *a2, int a3, unint64_t a4)
{
  v4 = a4;
  for (i = sub_2991EEE74(a1, a4); a3 > i; i = sub_2991EEE74(a1, v4))
  {
    memcpy(v4, a2, i);
    a3 -= i;
    a2 += i;
    v4 = sub_2991EECB8(a1, &v4[i]);
  }

  memcpy(v4, a2, a3);
  return &v4[a3];
}

uint64_t sub_2991EEE74(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (*a1 + 16 < a2)
  {
    sub_2991EF744(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 838);
    v5 = sub_2991EF75C(v8, "CHECK failed: ptr <= end_ + kSlopBytes: ");
    sub_2991EF898(&v7, &v5->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v8);
    v3 = *a1;
  }

  return v3 - a2 + 16;
}

void sub_2991EEEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

char *sub_2991EEF10(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if (sub_2991EEE74(a1, a4) <= a3)
  {
    v8 = sub_2991EEC4C(a1, a4);
    if (((*(**(a1 + 48) + 40))(*(a1 + 48), a2, a3) & 1) == 0)
    {
      *(a1 + 56) = 1;
      v8 = (a1 + 16);
      *a1 = a1 + 32;
    }

    return v8;
  }

  if (*a1 - a4 >= a3)
  {
    memcpy(a4, a2, a3);
    return &a4[a3];
  }

  return sub_2991EEDD0(a1, a2, a3, a4);
}

char *sub_2991EF018(unint64_t *a1, int a2, void **a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_2991EECB8(a1, a4);
    v8 = *a1;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  if (v8 <= v4)
  {
    sub_2991EF744(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_2991EF75C(v23, "CHECK failed: ptr < end_: ");
    sub_2991EF898(&v22, &v10->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v23);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  return sub_2991EF1A0(a1, v18, v9, v17);
}

void sub_2991EF188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

char *sub_2991EF1A0(uint64_t a1, void *a2, uint64_t a3, char *__dst)
{
  if (*(a1 + 57) == 1)
  {

    return sub_2991EEF10(a1, a2, a3, __dst);
  }

  else if (*a1 - __dst < a3)
  {

    return sub_2991EEDD0(a1, a2, a3, __dst);
  }

  else
  {
    v6 = a3;
    memcpy(__dst, a2, a3);
    return &__dst[v6];
  }
}

char *sub_2991EF230(uint64_t *a1, int a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_2991EECB8(a1, a4);
    v8 = *a1;
  }

  if (*(a3 + 23) >= 0)
  {
    LODWORD(v9) = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (v8 <= v4)
  {
    sub_2991EF744(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_2991EF75C(v23, "CHECK failed: ptr < end_: ");
    sub_2991EF898(&v22, &v10->__r_.__value_.__l.__data_);
    sub_2991EF8A0(v23);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (*a1 - v17 < v9)
  {
    return sub_2991EEDD0(a1, v18, v9, v17);
  }

  memcpy(v17, v18, v9);
  return &v17[v9];
}

void sub_2991EF3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void sub_2991EF3E0(int a1, int a2, const std::string::value_type *a3)
{
  v27 = *MEMORY[0x29EDCA608];
  if (a2 > 3014000)
  {
    LODWORD(v21) = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v23 = 76;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program requires version ");
    sub_2991EF7CC(a2, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v6 = &v18;
    }

    else
    {
      v6 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = v19;
    }

    std::string::append(&v24, v6, v7);
    std::string::append(&v24, " of the Protocol Buffer runtime library, but the installed version is ");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v26 = 0;
    sub_2991C6CA8(&__p, __str);
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v9 = v17;
    }

    else
    {
      v9 = v16;
    }

    std::string::append(&v24, p_p, v9);
    std::string::append(&v24, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    sub_2991EFA54(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (a1 < 3014000)
  {
    LODWORD(v21) = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v23 = 87;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program was compiled against version ");
    sub_2991EF7CC(a1, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v10 = &v18;
    }

    else
    {
      v10 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = v19;
    }

    std::string::append(&v24, v10, v11);
    std::string::append(&v24, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v26 = 0;
    sub_2991C6CA8(&__p, __str);
    if ((v17 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16;
    }

    std::string::append(&v24, v12, v13);
    std::string::append(&v24, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    sub_2991EFA54(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_2991EF6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2991EF744(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *sub_2991EF788(std::string *a1, const std::string::value_type *a2)
{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1 + 1, a2, v4);
  return a1;
}

_BYTE *sub_2991EF7CC@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x80uLL, "%d.%d.%d", a1 / 1000000, a1 / 1000 % 1000, a1 % 1000);
  __str[127] = 0;
  result = sub_2991C6CA8(a2, __str);
  v4 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t sub_2991EF8A0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_2991EF8D4(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x29EDCA610];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x29EDCA610], "[libprotobuf %s %s:%d] %s\n", off_29EF0BDA8[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

std::string *sub_2991EF954(std::string *a1, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

std::string *sub_2991EF9D4(std::string *a1, uint64_t a2)
{
  v6 = *MEMORY[0x29EDCA608];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x29EDCA608];
  return a1;
}

const char **sub_2991EFA54(const char **result)
{
  v1 = result;
  if (*result == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = atomic_load(&unk_2A145FD60);
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v2 = *result;
  }

  result = off_2A1A99EE0(v2, v1[1], *(v1 + 4), (v1 + 3));
LABEL_6:
  if (*v1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_2991EFB14(exception, v1[1], *(v1 + 4), v1 + 3);
    __cxa_throw(exception, &unk_2A1F63B08, sub_2991EFB18);
  }

  return result;
}

void sub_2991EFB1C(std::exception *this)
{
  this->__vftable = &unk_2A1F63B30;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

void sub_2991EFB7C(std::exception *a1)
{
  sub_2991EFB1C(a1);

  JUMPOUT(0x29C29BFB0);
}

uint64_t sub_2991EFBB4(uint64_t a1)
{
  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_2991EFBD0(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_2A1F63B30;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_2991A110C((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

uint64_t sub_2991EFC50(uint64_t a1, int a2, _OWORD *a3)
{
  if (qword_2A145FD68)
  {
    v3 = *(qword_2A145FD68 + 8);
    if (v3)
    {
      v4 = *(a1 + 8);
      v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
      v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
      v7 = (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))) ^ a2;
      v8 = vcnt_s8(v3);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = v7;
        if (v7 >= *&v3)
        {
          v9 = v7 % *&v3;
        }
      }

      else
      {
        v9 = (*&v3 - 1) & v7;
      }

      v10 = *(*qword_2A145FD68 + 8 * v9);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v7 == v12)
          {
            if (i[2] == v4 && *(i + 6) == a2)
            {
              v14 = *(i + 3);
              *a3 = *(i + 2);
              a3[1] = v14;
              return 1;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v12 >= *&v3)
              {
                v12 %= *&v3;
              }
            }

            else
            {
              v12 &= *&v3 - 1;
            }

            if (v12 != v9)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2991EFD64(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2991EFD74(uint64_t a1)
{
  if (!*a1)
  {
    v2 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_2991F9698(*v2, (v2 + 8));
    }

    else if (*(a1 + 10))
    {
      v3 = 32 * *(a1 + 10);
      v4 = (v2 + 8);
      do
      {
        sub_2991F93C0(v4);
        v4 += 32;
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_2991FA790(v5 == 0, *(a1 + 16));
    }

    else if (v5)
    {
      MEMORY[0x29C29BF70](*(a1 + 16), 0x1062C802AB6010CLL);
    }
  }

  return a1;
}

unsigned __int8 *sub_2991EFE34(unsigned __int8 *result)
{
  v1 = result;
  if (result[9] == 1)
  {
    v2 = result[8];
    if ((v2 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v3 = sub_2991EF75C(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v10, &v3->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v11);
    }

    v4 = dword_2993FF4F0[v2];
    if (v4 > 5)
    {
      if (v4 <= 8)
      {
LABEL_20:
        **v1 = 0;
        return result;
      }

      if (v4 == 9)
      {
        return sub_2991E9A3C(*v1);
      }

      else if (v4 == 10)
      {
        return sub_2991F9F90(*v1);
      }
    }

    else if (v4 > 2 || v4 == 1 || v4 == 2)
    {
      goto LABEL_20;
    }
  }

  else if ((result[10] & 1) == 0)
  {
    v5 = result[8];
    if ((v5 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v6 = sub_2991EF75C(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v10, &v6->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v11);
    }

    v7 = dword_2993FF4F0[v5];
    if (v7 == 10)
    {
      v9 = **v1;
      if ((v1[10] & 0x10) != 0)
      {
        result = (*(v9 + 112))();
      }

      else
      {
        result = (*(v9 + 40))();
      }
    }

    else if (v7 == 9)
    {
      v8 = *v1;
      if (*(*v1 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
      }
    }

    v1[10] = v1[10] & 0xF0 | 1;
  }

  return result;
}

void sub_2991F0050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F0070(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_2991F4850(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[a3] != 1)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v12 = sub_2991EF75C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_2991EF898(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v13 = sub_2991EF75C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_2991EF898(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[v14] != 1)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v16 = sub_2991EF75C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_2991EF898(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_2991F024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F0284(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_2991F4850(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v14->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[a3] != 1)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v15 = sub_2991EF75C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_2991EF898(&v27, &v15->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_2991FA7E8(*a1);
    }

    v17 = sub_2991EDD44(v16, 0x10uLL, sub_2991F9708);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v18 = sub_2991EF75C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_2991EF898(&v27, &v18->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v20->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[v19] != 1)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v21 = sub_2991EF75C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_2991EF898(&v27, &v21->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v22 = sub_2991EF75C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_2991EF898(&v27, &v22->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_2991FF2C4(v23, v24 + 1);
    result = sub_2991FF734(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_2991FF734(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2991F0554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F0594(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_2991F4850(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[a3] != 2)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v12 = sub_2991EF75C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_2991EF898(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v13 = sub_2991EF75C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_2991EF898(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[v14] != 2)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v16 = sub_2991EF75C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_2991EF898(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_2991F0770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F07A8(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2991F4850(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v14->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[a3] != 2)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v15 = sub_2991EF75C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_2991EF898(&v27, &v15->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_2991FA828(*a1);
    }

    v17 = sub_2991EDD44(v16, 0x10uLL, sub_2991F970C);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v18 = sub_2991EF75C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_2991EF898(&v27, &v18->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v20->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[v19] != 2)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v21 = sub_2991EF75C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_2991EF898(&v27, &v21->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v22 = sub_2991EF75C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_2991EF898(&v27, &v22->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_2991FFF1C(v23, v24 + 1);
    result = sub_29920038C(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_29920038C(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2991F0A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F0AB8(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_2991F4850(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[a3] != 3)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v12 = sub_2991EF75C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_2991EF898(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v13 = sub_2991EF75C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_2991EF898(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[v14] != 3)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v16 = sub_2991EF75C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_2991EF898(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_2991F0C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F0CCC(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_2991F4850(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v14->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[a3] != 3)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v15 = sub_2991EF75C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_2991EF898(&v27, &v15->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_2991FA868(*a1);
    }

    v17 = sub_2991EDD44(v16, 0x10uLL, sub_2991F9710);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v18 = sub_2991EF75C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_2991EF898(&v27, &v18->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v20->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[v19] != 3)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v21 = sub_2991EF75C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_2991EF898(&v27, &v21->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v22 = sub_2991EF75C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_2991EF898(&v27, &v22->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_2991FF8F0(v23, v24 + 1);
    result = sub_2991FFD60(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_2991FFD60(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2991F0F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F0FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_2991F4850(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[a3] != 4)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v12 = sub_2991EF75C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_2991EF898(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v13 = sub_2991EF75C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_2991EF898(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[v14] != 4)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v16 = sub_2991EF75C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_2991EF898(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_2991F11B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F11F0(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_2991F4850(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v14->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[a3] != 4)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v15 = sub_2991EF75C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_2991EF898(&v27, &v15->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_2991FA8A8(*a1);
    }

    v17 = sub_2991EDD44(v16, 0x10uLL, sub_2991F9714);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v18 = sub_2991EF75C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_2991EF898(&v27, &v18->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v20->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[v19] != 4)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v21 = sub_2991EF75C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_2991EF898(&v27, &v21->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v22 = sub_2991EF75C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_2991EF898(&v27, &v22->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_299200548(v23, v24 + 1);
    result = sub_2992009B8(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_2992009B8(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2991F14C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F1500(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  result = sub_2991F4850(a1, a2);
  v9 = result;
  *(result + 16) = a4;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[a3] != 6)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v12 = sub_2991EF75C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_2991EF898(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v13 = sub_2991EF75C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_2991EF898(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[v14] != 6)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v16 = sub_2991EF75C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_2991EF898(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
  return result;
}

void sub_2991F16E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F171C(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, float a6)
{
  v11 = sub_2991F4850(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v14->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[a3] != 6)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v15 = sub_2991EF75C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_2991EF898(&v27, &v15->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_2991FA8E8(*a1);
    }

    v17 = sub_2991EDD44(v16, 0x10uLL, sub_2991F9718);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v18 = sub_2991EF75C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_2991EF898(&v27, &v18->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v20->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[v19] != 6)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v21 = sub_2991EF75C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_2991EF898(&v27, &v21->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v22 = sub_2991EF75C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_2991EF898(&v27, &v22->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_299200B74(v23, v24 + 1);
    result = sub_299200FE4(v23);
    *(result + 4 * v24) = a6;
  }

  else
  {
    result = sub_299200FE4(v23);
    *(result + 4 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2991F19F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F1A34(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = sub_2991F4850(a1, a2);
  v9 = result;
  *(result + 16) = a4;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[a3] != 5)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v12 = sub_2991EF75C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_2991EF898(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v13 = sub_2991EF75C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_2991EF898(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[v14] != 5)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v16 = sub_2991EF75C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_2991EF898(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
  return result;
}

void sub_2991F1C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F1C50(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6)
{
  v11 = sub_2991F4850(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v14->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[a3] != 5)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v15 = sub_2991EF75C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_2991EF898(&v27, &v15->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_2991FA928(*a1);
    }

    v17 = sub_2991EDD44(v16, 0x10uLL, sub_2991F971C);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v18 = sub_2991EF75C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_2991EF898(&v27, &v18->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v20->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[v19] != 5)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v21 = sub_2991EF75C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_2991EF898(&v27, &v21->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v22 = sub_2991EF75C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_2991EF898(&v27, &v22->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_2992011A0(v23, v24 + 1);
    result = sub_299201610(v23);
    *(result + 8 * v24) = a6;
  }

  else
  {
    result = sub_299201610(v23);
    *(result + 8 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2991F1F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F1F68(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  result = sub_2991F4850(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[a3] != 7)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v12 = sub_2991EF75C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_2991EF898(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    v9[9] = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v13 = sub_2991EF75C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_2991EF898(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    v14 = v9[8];
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[v14] != 7)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v16 = sub_2991EF75C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_2991EF898(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }
  }

  v9[10] &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_2991F2144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F217C(uint64_t *a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6)
{
  v11 = sub_2991F4850(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v14->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[a3] != 7)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v15 = sub_2991EF75C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_2991EF898(&v27, &v15->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_2991FA968(*a1);
    }

    v17 = sub_2991EDD44(v16, 0x10uLL, sub_2991F9720);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v18 = sub_2991EF75C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_2991EF898(&v27, &v18->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v20->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[v19] != 7)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v21 = sub_2991EF75C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_2991EF898(&v27, &v21->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v22 = sub_2991EF75C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_2991EF898(&v27, &v22->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_2991FECA0(v23, v24 + 1);
    result = sub_2991FF10C(v23);
    *(result + v24) = a5;
  }

  else
  {
    result = sub_2991FF10C(v23);
    *(result + v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2991F244C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F248C(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v9 = sub_2991F4850(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if ((v11 & 1) == 0)
  {
    return *v10;
  }

  *(v9 + 9) = 1;
  *(v9 + 8) = a3;
  *(v9 + 11) = a4;
  v12 = dword_2993FF4F0[a3];
  if (v12 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            sub_2991FAA68(v13);
          }

          v14 = sub_2991F9718;
          goto LABEL_48;
        }
      }

      else
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            sub_2991FAA38(v13);
          }

          v14 = sub_2991F9720;
          goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    switch(v12)
    {
      case 8:
        v13 = *a1;
        if (!v13)
        {
          goto LABEL_49;
        }

        if (*(v13 + 24))
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 9:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            sub_2991FA9D8(v15);
          }

          v16 = sub_2991F9724;
          goto LABEL_54;
        }

        break;
      case 10:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            sub_2991FA9A8(v15);
          }

          v16 = sub_2991F9728;
LABEL_54:
          v17 = sub_2991EDD44(v15, 0x18uLL, v16);
          v17[2] = 0;
          *v17 = v15;
          v17[1] = 0;
          goto LABEL_56;
        }

        break;
      default:
        return *v10;
    }

    operator new();
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_2991FAAF8(v13);
        }

        v14 = sub_2991F9710;
        goto LABEL_48;
      }
    }

    else if (v12 == 4)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_2991FAAC8(v13);
        }

        v14 = sub_2991F9714;
        goto LABEL_48;
      }
    }

    else
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_2991FAA98(v13);
        }

        v14 = sub_2991F971C;
        goto LABEL_48;
      }
    }

LABEL_49:
    operator new();
  }

  if (v12 == 1)
  {
    v13 = *a1;
    if (!v13)
    {
      goto LABEL_49;
    }

    if (*(v13 + 24))
    {
LABEL_42:
      sub_2991FAA08(v13);
    }

LABEL_43:
    v14 = sub_2991F9708;
LABEL_48:
    v17 = sub_2991EDD44(v13, 0x10uLL, v14);
    *v17 = 0;
    v17[1] = v13;
LABEL_56:
    *v10 = v17;
    return *v10;
  }

  if (v12 == 2)
  {
    v13 = *a1;
    if (v13)
    {
      if (*(v13 + 24))
      {
        sub_2991FAB28(v13);
      }

      v14 = sub_2991F970C;
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  return *v10;
}

uint64_t sub_2991F277C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_2991F4850(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[a3] != 8)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 460);
      v12 = sub_2991EF75C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_2991EF898(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v13 = sub_2991EF75C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_2991EF898(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_2991EF75C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }

    if (dword_2993FF4F0[v14] != 8)
    {
      sub_2991EF744(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v16 = sub_2991EF75C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_2991EF898(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_2991EF8A0(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_2991F2958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F2990(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_2991F4850(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v14->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[a3] != 8)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 488);
      v15 = sub_2991EF75C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_2991EF898(&v27, &v15->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_2991FA7E8(*a1);
    }

    v17 = sub_2991EDD44(v16, 0x10uLL, sub_2991F9708);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v18 = sub_2991EF75C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_2991EF898(&v27, &v18->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_2991EF75C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v27, &v20->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (dword_2993FF4F0[v19] != 8)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v21 = sub_2991EF75C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_2991EF898(&v27, &v21->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_2991EF744(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 495);
      v22 = sub_2991EF75C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_2991EF898(&v27, &v22->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_2991FF2C4(v23, v24 + 1);
    result = sub_2991FF734(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_2991FF734(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_2991F2C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F2CA0(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_2991F4850(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_2991EF75C(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v19, &v10->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v20);
    }

    if (dword_2993FF4F0[a3] != 9)
    {
      sub_2991EF744(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 520);
      v11 = sub_2991EF75C(v20, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_2991EF898(&v19, &v11->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v20);
    }

    v8[9] = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      sub_2991EE8B4(v12);
    }

    v13 = sub_2991EDD44(v12, 0x18uLL, sub_2991E9948);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    *v8 = v13;
  }

  else
  {
    if (*(v7 + 9))
    {
      sub_2991EF744(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v14 = sub_2991EF75C(v20, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_2991EF898(&v19, &v14->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v20);
    }

    v15 = v8[8];
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_2991EF75C(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v19, &v16->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v20);
    }

    if (dword_2993FF4F0[v15] != 9)
    {
      sub_2991EF744(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v17 = sub_2991EF75C(v20, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_2991EF898(&v19, &v17->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v20);
    }
  }

  v8[10] &= 0xF0u;
  return *v8;
}

void sub_2991F2EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

void *sub_2991F2F14(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_2991F4850(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_2991EF75C(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v26, &v10->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v27);
    }

    if (dword_2993FF4F0[a3] != 9)
    {
      sub_2991EF744(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 550);
      v11 = sub_2991EF75C(v27, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_2991EF898(&v26, &v11->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v27);
    }

    *(v8 + 9) = 1;
    *(v8 + 11) = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      sub_2991FAB58(v12);
    }

    v13 = sub_2991EDD44(v12, 0x18uLL, sub_2991F9724);
    v13[2] = 0;
    *v13 = v12;
    v13[1] = 0;
    *v8 = v13;
  }

  else
  {
    if ((*(v7 + 9) & 1) == 0)
    {
      sub_2991EF744(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v14 = sub_2991EF75C(v27, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_2991EF898(&v26, &v14->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v27);
    }

    v15 = *(v8 + 8);
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_2991EF75C(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v26, &v16->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v27);
    }

    if (dword_2993FF4F0[v15] != 9)
    {
      sub_2991EF744(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v17 = sub_2991EF75C(v27, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_2991EF898(&v26, &v17->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v27);
    }
  }

  v18 = *v8;
  v19 = *(v18 + 16);
  if (!v19)
  {
    v21 = *(v18 + 12);
LABEL_22:
    sub_2992018A8(v18, v21 + 1);
    v19 = *(v18 + 16);
    v21 = *v19;
    goto LABEL_23;
  }

  v20 = *(v18 + 8);
  v21 = *v19;
  if (v20 < *v19)
  {
    *(v18 + 8) = v20 + 1;
    return *&v19[2 * v20 + 2];
  }

  if (v21 == *(v18 + 12))
  {
    goto LABEL_22;
  }

LABEL_23:
  *v19 = v21 + 1;
  v23 = *v18;
  if (!*v18)
  {
    operator new();
  }

  if (*(v23 + 24))
  {
    sub_2991EE8B4(*v18);
  }

  result = sub_2991EDD44(v23, 0x18uLL, sub_2991E9948);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v24 = *(v18 + 8);
  v25 = *(v18 + 16) + 8 * v24;
  *(v18 + 8) = v24 + 1;
  *(v25 + 8) = result;
  return result;
}

void sub_2991F3228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F3260(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2991F4850(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_2991EF75C(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v20, &v12->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v21);
    }

    if (dword_2993FF4F0[a3] != 10)
    {
      sub_2991EF744(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 591);
      v13 = sub_2991EF75C(v21, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_2991EF898(&v20, &v13->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v21);
    }

    *(v10 + 9) = 0;
    *(v10 + 10) &= 0xFu;
    result = (*(*a4 + 32))(a4, *a1);
    *v10 = result;
    *(v10 + 10) &= 0xF0u;
  }

  else
  {
    if (*(v9 + 9))
    {
      sub_2991EF744(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v15 = sub_2991EF75C(v21, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_2991EF898(&v20, &v15->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v21);
    }

    v16 = *(v10 + 8);
    if ((v16 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v17 = sub_2991EF75C(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v20, &v17->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v21);
    }

    if (dword_2993FF4F0[v16] != 10)
    {
      sub_2991EF744(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v18 = sub_2991EF75C(v21, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_2991EF898(&v20, &v18->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v21);
    }

    v19 = *(v10 + 10);
    *(v10 + 10) = v19 & 0xF0;
    result = *v10;
    if ((v19 & 0x10) != 0)
    {
      return (*(*result + 32))(result, a4);
    }
  }

  return result;
}

void sub_2991F34BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2991F34F4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2991F4850(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_2991EF75C(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v25, &v12->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v26);
    }

    if (dword_2993FF4F0[a3] != 10)
    {
      sub_2991EF744(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 762);
      v13 = sub_2991EF75C(v26, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_2991EF898(&v25, &v13->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v26);
    }

    v10[9] = 1;
    v14 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v14 + 24))
    {
      sub_2991FAB98(*a1);
    }

    v15 = sub_2991EDD44(v14, 0x18uLL, sub_2991F9728);
    v15[2] = 0;
    *v15 = v14;
    v15[1] = 0;
    *v10 = v15;
  }

  else
  {
    if ((*(v9 + 9) & 1) == 0)
    {
      sub_2991EF744(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v16 = sub_2991EF75C(v26, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_2991EF898(&v25, &v16->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v26);
    }

    v17 = v10[8];
    if ((v17 - 19) <= 0xFFFFFFED)
    {
      sub_2991EF744(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v18 = sub_2991EF75C(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_2991EF898(&v25, &v18->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v26);
    }

    if (dword_2993FF4F0[v17] != 10)
    {
      sub_2991EF744(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v19 = sub_2991EF75C(v26, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_2991EF898(&v25, &v19->__r_.__value_.__l.__data_);
      sub_2991EF8A0(v26);
    }
  }

  v20 = *v10;
  v21 = *(*v10 + 16);
  if (!v21 || (v22 = *(v20 + 8), v22 >= *v21) || (*(v20 + 8) = v22 + 1, (v23 = *&v21[2 * v22 + 2]) == 0))
  {
    v23 = (*(*a4 + 32))(a4, *a1);
    sub_2991F9840(*v10, v23);
  }

  return v23;
}

void sub_2991F37AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2991EF8A0(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_2991F37E4(unsigned __int8 *result)
{
  v2 = *(result + 2);
  if (*(result + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = (v2 + 1);
    v5 = v7;

    return sub_2991F9974(v5, v6);
  }

  else if (*(result + 5))
  {
    v3 = 32 * *(result + 5);
    v4 = (v2 + 1);
    do
    {
      result = sub_2991EFE34(v4);
      v4 += 32;
      v3 -= 32;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2991F384C(uint64_t result, size_t __sz)
{
  v2 = *(result + 8);
  if (v2 <= 0x100 && v2 < __sz)
  {
    v4 = result;
    do
    {
      if (v2)
      {
        LOWORD(v2) = 4 * v2;
      }

      else
      {
        LOWORD(v2) = 1;
      }
    }

    while (v2 < __sz);
    v5 = *(result + 16);
    v6 = *(result + 10);
    v7 = *result;
    if (v2 < 0x101u)
    {
      v8 = 32 * v2;
      if (v7)
      {
        if (*(v7 + 24))
        {
          sub_2991FABD8(*result);
          v8 = 32 * v2;
        }

        result = sub_2991EE040(v7, v8);
      }

      else
      {
        result = operator new[](32 * v2);
      }

      v9 = result;
      if (v6)
      {
        result = memmove(result, v5, 32 * v6);
      }
    }

    else
    {
      if (!v7)
      {
        operator new();
      }

      if (*(v7 + 24))
      {
        sub_2991FAC14(*result);
      }

      result = sub_2991EDD44(v7, 0x18uLL, sub_2991FA1B8);
      v9 = result;
      *(result + 8) = 0;
      v10 = (result + 8);
      *(result + 16) = 0;
      *result = result + 8;
      if (v6)
      {
        v11 = &v5[32 * v6];
        v12 = v5;
        do
        {
          v15 = *v12;
          v13 = *(v12 + 3);
          v16 = *(v12 + 8);
          v17 = v13;
          result = sub_2991FA1C0(v9, v10, &v15);
          v10 = result;
          v12 += 32;
        }

        while (v12 != v11);
      }
    }

    if (*v4)
    {
      v14 = 1;
    }

    else
    {
      v14 = v5 == 0;
    }

    if (!v14)
    {
      result = MEMORY[0x29C29BF70](v5, 0x1062C802AB6010CLL);
    }

    *(v4 + 8) = v2;
    *(v4 + 16) = v9;
    if (v2 >= 0x101u)
    {
      *(v4 + 10) = 0;
    }
  }

  return result;
}

uint64_t sub_2991F3A0C(char *a1, char *a2, void *a3, void *a4)
{
  v4 = 0;
  if (a1 != a2 && a3 != a4)
  {
    v4 = 0;
    do
    {
      v5 = *(a3 + 8);
      if (*a1 >= v5)
      {
        if (*a1 == v5)
        {
          a1 += 32;
          v6 = a3[1];
          if (v6)
          {
            do
            {
              a3 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = a3;
              a3 = a3[2];
            }

            while (*a3 != v7);
          }
        }

        else
        {
          v8 = a3[1];
          if (v8)
          {
            do
            {
              a3 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = a3;
              a3 = a3[2];
            }

            while (*a3 != v9);
          }
        }
      }

      else
      {
        a1 += 32;
      }

      ++v4;
    }

    while (a1 != a2 && a3 != a4);
  }

  if (a3 == a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = a3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = a3[2];
          v13 = *v12 == a3;
          a3 = v12;
        }

        while (!v13);
      }

      ++v10;
      a3 = v12;
    }

    while (v12 != a4);
  }

  return v4 + ((a2 - a1) >> 5) + v10;
}