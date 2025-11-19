uint64_t sub_27643E798(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = sub_276443E88(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_276443774(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = sub_27643A578(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_27643E8A8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524938, 0);
  if (v4)
  {

    return sub_27643B30C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27643E950(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_276447C80(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &qword_2812F14C8;
    }

    return sub_2764438A8(v6, v8);
  }

  return result;
}

uint64_t *sub_27643E9F8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643AA88(result);

    return sub_27643E8A8(v4, a2);
  }

  return result;
}

uint64_t sub_27643EA44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_276443AEC(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27643EA5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_276443AEC(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

void *sub_27643EAAC(void *a1, uint64_t a2)
{
  *a1 = &unk_288523E68;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812ED7D0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = MEMORY[0x277D80A90];
  return a1;
}

uint64_t *sub_27643EB40(uint64_t *a1)
{
  v2 = a1[6];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  sub_2763941F4(a1 + 1);
  sub_27644839C(a1 + 3);
  return a1;
}

void sub_27643EBBC(uint64_t *a1)
{
  sub_27643EB40(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27643EBFC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_27643CD74(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    v5 = v1[6] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 1;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *sub_27643ECAC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v22))
    {
      return v22;
    }

    v5 = (v22 + 1);
    v6 = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v22 + 2);
LABEL_6:
      v22 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v7 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v20;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      break;
    }

    if (v6 >> 3 != 1 || v6 != 10)
    {
      goto LABEL_12;
    }

    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Mutable();
    v10 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_33:
    v22 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  if (v6 == 18)
  {
    v11 = (v5 - 1);
    while (1)
    {
      v12 = (v11 + 1);
      v22 = (v11 + 1);
      v13 = *(a1 + 40);
      if (!v13)
      {
        goto LABEL_22;
      }

      v18 = *(a1 + 32);
      v14 = *v13;
      if (v18 < *v13)
      {
        *(a1 + 32) = v18 + 1;
        v15 = *&v13[2 * v18 + 2];
        goto LABEL_26;
      }

      if (v14 == *(a1 + 36))
      {
LABEL_22:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v13 = *(a1 + 40);
        v14 = *v13;
      }

      *v13 = v14 + 1;
      v15 = sub_27644752C(*(a1 + 24));
      v16 = *(a1 + 32);
      v17 = *(a1 + 40) + 8 * v16;
      *(a1 + 32) = v16 + 1;
      *(v17 + 8) = v15;
      v12 = v22;
LABEL_26:
      v11 = sub_2764AD3CC(a3, v15, v12);
      v22 = v11;
      if (!v11)
      {
        return 0;
      }

      if (*a3 <= v11 || *v11 != 18)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_12:
  if (v6)
  {
    v9 = (v6 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_33;
  }

  *(a3 + 80) = v6 - 1;
  return v22;
}

unsigned __int8 *sub_27643EEC4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v4 = a2;
  if (*(a1 + 16))
  {
    v4 = sub_2763DD938(this, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*this <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v4);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v9 = *(v8 + 20);
      if (v9 > 0x7F)
      {
        v4[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = v4 + 3;
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
          v4[2] = v11;
          v10 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v9;
        v10 = v4 + 2;
      }

      v4 = sub_27643D348(v8, v10, this);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27643F014(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v6 = *(a1 + 32);
  v7 = v2 + v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = sub_27643DAB4(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v7;
    return v7;
  }
}

uint64_t sub_27643F114(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524950, 0);
  if (v4)
  {

    return sub_27643F1BC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27643F1BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_276448420(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;

    return google::protobuf::internal::ArenaStringPtr::Set();
  }

  return result;
}

uint64_t *sub_27643F2B0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643EBFC(result);

    return sub_27643F114(v4, a2);
  }

  return result;
}

BOOL sub_27643F2FC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  do
  {
    v1 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_27643E0A8(*(v3 + 8 * v2));
    v2 = v4;
  }

  while (v5);
  return v1;
}

void *sub_27643F394(void *a1, uint64_t a2)
{
  *a1 = &unk_288523F18;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812ED930, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_27643F420(void *a1)
{
  if (a1 != qword_2812F12E0)
  {
    v2 = a1[6];
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C40825B58B5);
    }
  }

  sub_2763941F4(a1 + 1);
  sub_2764484E0(a1 + 3);
  return a1;
}

void sub_27643F49C(void *a1)
{
  sub_27643F420(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27643F4DC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_276444B68(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    result = sub_27643B6DC(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return result;
}

google::protobuf::internal *sub_27643F56C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v24))
    {
      return v24;
    }

    v5 = (v24 + 1);
    v6 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v24 + 2);
LABEL_6:
      v24 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v22;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = (v5 - 1);
      while (1)
      {
        v12 = (v11 + 1);
        v24 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 32);
        v14 = *v13;
        if (v18 < *v13)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v13[2 * v18 + 2];
          goto LABEL_26;
        }

        if (v14 == *(a1 + 36))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v13 = *(a1 + 40);
          v14 = *v13;
        }

        *v13 = v14 + 1;
        v15 = sub_276447D58(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_2764AD49C(a3, v15, v12);
        v24 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = sub_276447FD4(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_2764A8A98(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *sub_27643F790(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 48);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = (a2 + 3);
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v6;
      v7 = (a2 + 2);
    }

    a2 = sub_276446ECC(v5, v7, this);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = sub_276444E4C(v13, v15, this);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27643F94C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276447014(*(a1 + 48));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_276445114(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

uint64_t sub_27643FA38(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524968, 0);
  if (v4)
  {

    return sub_27643FAE0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27643FAE0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_276448564(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 48);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_276447FD4(v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 48);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &qword_2812F15A8;
    }

    return sub_27643BB14(v11, v13);
  }

  return result;
}

uint64_t *sub_27643FBF0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643F4DC(result);

    return sub_27643FA38(v4, a2);
  }

  return result;
}

BOOL sub_27643FC3C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    v5 = sub_2764454DC(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  return (*(a1 + 16) & 1) == 0 || (~*(*(a1 + 48) + 16) & 0xF) == 0;
}

void *sub_27643FCF8(void *a1, uint64_t a2)
{
  *a1 = &unk_288523FC8;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812ED690, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_27643FD84(void *a1)
{
  if (a1 != qword_2812F1318)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = sub_27643F420(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D196C376);
    }
  }

  sub_2763941F4(a1 + 1);
  sub_276448624(a1 + 3);
  return a1;
}

void sub_27643FDF4(void *a1)
{
  sub_27643FD84(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27643FE34(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_276445CC0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    result = sub_27643F4DC(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return result;
}

google::protobuf::internal *sub_27643FEC4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v24))
    {
      return v24;
    }

    v5 = (v24 + 1);
    v6 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v24 + 2);
LABEL_6:
      v24 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v22;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = (v5 - 1);
      while (1)
      {
        v12 = (v11 + 1);
        v24 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 32);
        v14 = *v13;
        if (v18 < *v13)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v13[2 * v18 + 2];
          goto LABEL_26;
        }

        if (v14 == *(a1 + 36))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v13 = *(a1 + 40);
          v14 = *v13;
        }

        *v13 = v14 + 1;
        v15 = sub_276447EFC(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_2764AD63C(a3, v15, v12);
        v24 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = sub_276447714(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_2764AD56C(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *sub_2764400E8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 48);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_27643F790(v5, v7, this);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = sub_27644629C(v13, v15, this);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764402A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_27643F94C(*(a1 + 48));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_2764467C4(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

uint64_t sub_276440390(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524980, 0);
  if (v4)
  {

    return sub_276440438(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276440438(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_2764486A8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 48);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = sub_276447714(v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 48);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &unk_2812F12E0;
    }

    return sub_27643FAE0(v11, v13);
  }

  return result;
}

uint64_t *sub_276440548(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643FE34(result);

    return sub_276440390(v4, a2);
  }

  return result;
}

uint64_t sub_276440594(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_2764405EC(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_27643FC3C(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2764405EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 1) != 0; i -= 8)
  {
    v4 = *(*i + 24);
    if ((*(v4 + 16) & 1) != 0 && (~*(*(v4 + 24) + 16) & 0xF) != 0)
    {
      break;
    }

    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

void *sub_276440688(void *a1, uint64_t a2)
{
  *a1 = &unk_288524078;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812ED648, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_276440714(void *a1)
{
  if (a1 != qword_2812F1350)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = sub_27643F420(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D196C376);
    }
  }

  sub_2763941F4(a1 + 1);
  sub_276448624(a1 + 3);
  return a1;
}

void sub_276440784(void *a1)
{
  sub_276440714(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2764407C4(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_276445CC0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    result = sub_27643F4DC(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return result;
}

google::protobuf::internal *sub_276440854(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v24))
    {
      return v24;
    }

    v5 = (v24 + 1);
    v6 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v24 + 2);
LABEL_6:
      v24 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v22;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = (v5 - 1);
      while (1)
      {
        v12 = (v11 + 1);
        v24 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 32);
        v14 = *v13;
        if (v18 < *v13)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v13[2 * v18 + 2];
          goto LABEL_26;
        }

        if (v14 == *(a1 + 36))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v13 = *(a1 + 40);
          v14 = *v13;
        }

        *v13 = v14 + 1;
        v15 = sub_276447EFC(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_2764AD63C(a3, v15, v12);
        v24 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = sub_276447714(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_2764AD56C(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *sub_276440A78(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 48);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_27643F790(v5, v7, this);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = sub_27644629C(v13, v15, this);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276440C34(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_27643F94C(*(a1 + 48));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_2764467C4(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

uint64_t sub_276440D20(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524998, 0);
  if (v4)
  {

    return sub_276440438(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_276440DC8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2764407C4(result);

    return sub_276440D20(v4, a2);
  }

  return result;
}

uint64_t sub_276440E14(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_2764405EC(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_27643FC3C(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_276440EA4(void *a1, uint64_t a2)
{
  *a1 = &unk_288524128;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812ED7F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_276440F30(void *a1)
{
  if (a1 != qword_2812F1388)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = sub_27643F420(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D196C376);
    }
  }

  sub_2763941F4(a1 + 1);
  sub_276448624(a1 + 3);
  return a1;
}

void sub_276440FA0(void *a1)
{
  sub_276440F30(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276440FE0(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_276445CC0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    result = sub_27643F4DC(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return result;
}

google::protobuf::internal *sub_276441070(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v24))
    {
      return v24;
    }

    v5 = (v24 + 1);
    v6 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v24 + 2);
LABEL_6:
      v24 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v22;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = (v5 - 1);
      while (1)
      {
        v12 = (v11 + 1);
        v24 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 32);
        v14 = *v13;
        if (v18 < *v13)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v13[2 * v18 + 2];
          goto LABEL_26;
        }

        if (v14 == *(a1 + 36))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v13 = *(a1 + 40);
          v14 = *v13;
        }

        *v13 = v14 + 1;
        v15 = sub_276447EFC(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_2764AD63C(a3, v15, v12);
        v24 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = sub_276447714(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_2764AD56C(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *sub_276441294(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 48);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_27643F790(v5, v7, this);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = sub_27644629C(v13, v15, this);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276441450(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_27643F94C(*(a1 + 48));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_2764467C4(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

uint64_t sub_27644153C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885249B0, 0);
  if (v4)
  {

    return sub_276440438(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_2764415E4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276440FE0(result);

    return sub_27644153C(v4, a2);
  }

  return result;
}

uint64_t sub_276441630(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_2764405EC(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_27643FC3C(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_2764416C0(void *a1, uint64_t a2)
{
  *a1 = &unk_2885241D8;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812ED8C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_27644174C(void *a1)
{
  if (a1 != qword_2812F13C0)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = sub_27643F420(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D196C376);
    }
  }

  sub_2763941F4(a1 + 1);
  sub_276448624(a1 + 3);
  return a1;
}

void sub_2764417BC(void *a1)
{
  sub_27644174C(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2764417FC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_276445CC0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    result = sub_27643F4DC(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return result;
}

google::protobuf::internal *sub_27644188C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v24))
    {
      return v24;
    }

    v5 = (v24 + 1);
    v6 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v24 + 2);
LABEL_6:
      v24 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v22;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = (v5 - 1);
      while (1)
      {
        v12 = (v11 + 1);
        v24 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 32);
        v14 = *v13;
        if (v18 < *v13)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v13[2 * v18 + 2];
          goto LABEL_26;
        }

        if (v14 == *(a1 + 36))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v13 = *(a1 + 40);
          v14 = *v13;
        }

        *v13 = v14 + 1;
        v15 = sub_276447EFC(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_2764AD63C(a3, v15, v12);
        v24 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = sub_276447714(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_2764AD56C(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *sub_276441AB0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 48);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_27643F790(v5, v7, this);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = sub_27644629C(v13, v15, this);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276441C6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_27643F94C(*(a1 + 48));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_2764467C4(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

uint64_t sub_276441D58(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885249C8, 0);
  if (v4)
  {

    return sub_276440438(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_276441E00(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2764417FC(result);

    return sub_276441D58(v4, a2);
  }

  return result;
}

uint64_t sub_276441E4C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_2764405EC(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_27643FC3C(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_276441EDC(void *a1, uint64_t a2)
{
  *a1 = &unk_288524288;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812ED898, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_276441F68(void *a1)
{
  if (a1 != qword_2812F13F8)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = sub_27643F420(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D196C376);
    }
  }

  sub_2763941F4(a1 + 1);
  sub_276448624(a1 + 3);
  return a1;
}

void sub_276441FD8(void *a1)
{
  sub_276441F68(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276442018(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_276445CC0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    result = sub_27643F4DC(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return result;
}

google::protobuf::internal *sub_2764420A8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v24))
    {
      return v24;
    }

    v5 = (v24 + 1);
    v6 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v24 + 2);
LABEL_6:
      v24 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v22;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = (v5 - 1);
      while (1)
      {
        v12 = (v11 + 1);
        v24 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 32);
        v14 = *v13;
        if (v18 < *v13)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v13[2 * v18 + 2];
          goto LABEL_26;
        }

        if (v14 == *(a1 + 36))
        {
LABEL_22:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v13 = *(a1 + 40);
          v14 = *v13;
        }

        *v13 = v14 + 1;
        v15 = sub_276447EFC(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_2764AD63C(a3, v15, v12);
        v24 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 >> 3 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = sub_276447714(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_2764AD56C(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *sub_2764422CC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 48);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_27643F790(v5, v7, this);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 20);
      if (v14 > 0x7F)
      {
        a2[1] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = a2 + 3;
          do
          {
            *(v15 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v15;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v15 - 1) = v17;
        }

        else
        {
          a2[2] = v16;
          v15 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v14;
        v15 = a2 + 2;
      }

      a2 = sub_27644629C(v13, v15, this);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276442488(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_27643F94C(*(a1 + 48));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_2764467C4(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

uint64_t sub_276442574(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885249E0, 0);
  if (v4)
  {

    return sub_276440438(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_27644261C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276442018(result);

    return sub_276442574(v4, a2);
  }

  return result;
}

uint64_t sub_276442668(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_2764405EC(a1 + 24);
  if (result)
  {
    if ((*(a1 + 16) & 1) == 0)
    {
      return 1;
    }

    result = sub_27643FC3C(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2764426F8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288524338;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2812ED6B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_276442784(_Unwind_Exception *a1)
{
  sub_276448624(v2);
  sub_276448768(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2764427A8(uint64_t a1)
{
  if (a1 != &unk_2812F1430)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = sub_27643F420(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D196C376);
    }
  }

  sub_2763941F4((a1 + 8));
  sub_276448624((a1 + 48));
  sub_276448768((a1 + 24));
  return a1;
}

void sub_276442824(uint64_t a1)
{
  sub_2764427A8(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276442864(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_276445638(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (v1[8] + 8);
    do
    {
      v7 = *v6++;
      result = sub_276445CC0(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  if (v1[2])
  {
    result = sub_27643F4DC(v1[9]);
  }

  v9 = *(v1 + 8);
  v8 = v1 + 1;
  *(v8 + 72) = 0;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_2763D4FD4(v8);
  }

  return result;
}

google::protobuf::internal *sub_276442920(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_67;
      }

      v7 = TagFallback;
      v8 = v36;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_52;
          }

          v12 = (v7 - 1);
          while (1)
          {
            v13 = (v12 + 1);
            v39 = (v12 + 1);
            v14 = *(a1 + 40);
            if (!v14)
            {
              goto LABEL_16;
            }

            v19 = *(a1 + 32);
            v15 = *v14;
            if (v19 < *v14)
            {
              *(a1 + 32) = v19 + 1;
              v16 = *&v14[2 * v19 + 2];
              goto LABEL_20;
            }

            if (v15 == *(a1 + 36))
            {
LABEL_16:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v14 = *(a1 + 40);
              v15 = *v14;
            }

            *v14 = v15 + 1;
            v16 = sub_276447E2C(*(a1 + 24));
            v17 = *(a1 + 32);
            v18 = *(a1 + 40) + 8 * v17;
            *(a1 + 32) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v39;
LABEL_20:
            v12 = sub_2764AD70C(a3, v16, v13);
            v39 = v12;
            if (!v12)
            {
              goto LABEL_67;
            }

            if (*a3 <= v12 || *v12 != 18)
            {
              goto LABEL_60;
            }
          }
        }

        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v28 = *(a1 + 72);
          if (!v28)
          {
            v29 = *(a1 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = sub_276447714(v29);
            *(a1 + 72) = v28;
            v7 = v39;
          }

          v30 = sub_2764AD56C(a3, v28, v7);
LABEL_59:
          v39 = v30;
          if (!v30)
          {
            goto LABEL_67;
          }

          goto LABEL_60;
        }

LABEL_52:
        if (v8)
        {
          v34 = (v8 & 7) == 4;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v30 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_59;
      }

      if (v10 != 3)
      {
        if (v10 != 4 || v8 != 34)
        {
          goto LABEL_52;
        }

        v20 = (v7 - 1);
        while (2)
        {
          v21 = (v20 + 1);
          v39 = (v20 + 1);
          v22 = *(a1 + 64);
          if (!v22)
          {
LABEL_31:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v22 = *(a1 + 64);
            v23 = *v22;
            goto LABEL_32;
          }

          v27 = *(a1 + 56);
          v23 = *v22;
          if (v27 >= *v22)
          {
            if (v23 == *(a1 + 60))
            {
              goto LABEL_31;
            }

LABEL_32:
            *v22 = v23 + 1;
            v24 = sub_276447EFC(*(a1 + 48));
            v25 = *(a1 + 56);
            v26 = *(a1 + 64) + 8 * v25;
            *(a1 + 56) = v25 + 1;
            *(v26 + 8) = v24;
            v21 = v39;
          }

          else
          {
            *(a1 + 56) = v27 + 1;
            v24 = *&v22[2 * v27 + 2];
          }

          v20 = sub_2764AD63C(a3, v24, v21);
          v39 = v20;
          if (!v20)
          {
            goto LABEL_67;
          }

          if (*a3 <= v20 || *v20 != 34)
          {
            goto LABEL_60;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_52;
      }

      v5 |= 2u;
      v32 = (v7 + 1);
      v31 = *v7;
      if ((v31 & 0x8000000000000000) == 0)
      {
        goto LABEL_51;
      }

      v33 = *v32;
      v31 = (v33 << 7) + v31 - 128;
      if ((v33 & 0x80000000) == 0)
      {
        v32 = (v7 + 2);
LABEL_51:
        v39 = v32;
        *(a1 + 80) = v31 != 0;
        goto LABEL_60;
      }

      v37 = google::protobuf::internal::VarintParseSlow64(v7, v31);
      v39 = v37;
      *(a1 + 80) = v38 != 0;
      if (!v37)
      {
LABEL_67:
        v39 = 0;
        goto LABEL_2;
      }

LABEL_60:
      if (sub_2763D4D98(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *sub_276442CB4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 72);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = sub_27643F790(v6, v8, this);
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v14 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v15 = *(v14 + 20);
      if (v15 > 0x7F)
      {
        a2[1] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = a2 + 3;
          do
          {
            *(v16 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v16;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v16 - 1) = v18;
        }

        else
        {
          a2[2] = v17;
          v16 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v15;
        v16 = a2 + 2;
      }

      a2 = sub_276445838(v14, v16, this);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v20 = *(a1 + 80);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v23 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 34;
      v24 = *(v23 + 20);
      if (v24 > 0x7F)
      {
        a2[1] = v24 | 0x80;
        v26 = v24 >> 7;
        if (v24 >> 14)
        {
          v25 = a2 + 3;
          do
          {
            *(v25 - 1) = v26 | 0x80;
            v27 = v26 >> 7;
            ++v25;
            v28 = v26 >> 14;
            v26 >>= 7;
          }

          while (v28);
          *(v25 - 1) = v27;
        }

        else
        {
          a2[2] = v26;
          v25 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v24;
        v25 = a2 + 2;
      }

      a2 = sub_27644629C(v23, v25, this);
    }
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276442F58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_27643F94C(*(a1 + 72));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_276445968(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  v12 = v5 + v11;
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = sub_2764467C4(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(a1 + 16) & 2;
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v12 + (*(a1 + 16) & 2);
    return v12 + v18;
  }
}

uint64_t sub_27644309C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885249F8, 0);
  if (v4)
  {

    return sub_276443144(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276443144(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_2764487EC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_2764486A8(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 16);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      *(v3 + 16) |= 1u;
      v16 = *(v3 + 72);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = sub_276447714(v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = &unk_2812F12E0;
      }

      result = sub_27643FAE0(v16, v18);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 80) = *(a2 + 80);
    }

    *(v3 + 16) |= v15;
  }

  return result;
}

uint64_t *sub_2764432B0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276442864(result);

    return sub_27644309C(v4, a2);
  }

  return result;
}

uint64_t sub_2764432FC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_276443360(a1 + 24);
  if (result)
  {
    result = sub_2764405EC(a1 + 48);
    if (result)
    {
      if ((*(a1 + 16) & 1) == 0)
      {
        return 1;
      }

      result = sub_27643FC3C(*(a1 + 72));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_276443360(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = v1 + 1;
  for (i = *(a1 + 16) + 8 * v1; (*(*i + 16) & 1) == 0 || (~*(*(*i + 24) + 16) & 0xF) == 0; i -= 8)
  {
    if (--v2 <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t *sub_2764433F0(uint64_t *a1)
{
  if (a1 != &qword_2812F1488)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276444040(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4030AC051BLL);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276443454(uint64_t *a1)
{
  sub_2764433F0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276443494(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    result = sub_27643FE34(result[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      result = sub_276440FE0(v1[5]);
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_2764407C4(v1[4]);
  if ((v2 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  result = sub_2764417FC(v1[6]);
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = sub_276442018(v1[7]);
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27644353C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_2763D4D98(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = sub_276447C80(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2764AD7DC(a3, v10, v5);
    }

    else
    {
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
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *sub_276443684(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_276444430(v5, v7, this);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276443774(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276444790(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_276443800(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524A10, 0);
  if (v4)
  {

    return sub_27643E950(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2764438A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x1F) == 0)
  {
    return result;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_2764477A0(v7);
      *(v3 + 24) = v6;
    }

    if (*(a2 + 24))
    {
      v8 = *(a2 + 24);
    }

    else
    {
      v8 = &unk_2812F1318;
    }

    result = sub_276440438(v6, v8);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_26:
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = sub_2764478B8(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 40))
      {
        v14 = *(a2 + 40);
      }

      else
      {
        v14 = &unk_2812F1388;
      }

      result = sub_276440438(v12, v14);
      if ((v5 & 8) == 0)
      {
LABEL_8:
        if ((v5 & 0x10) == 0)
        {
          return result;
        }

        goto LABEL_42;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(v3 + 16) |= 2u;
  v9 = *(v3 + 32);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = sub_27644782C(v10);
    *(v3 + 32) = v9;
  }

  if (*(a2 + 32))
  {
    v11 = *(a2 + 32);
  }

  else
  {
    v11 = &unk_2812F1350;
  }

  result = sub_276440438(v9, v11);
  if ((v5 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_7:
  if ((v5 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_34:
  *(v3 + 16) |= 8u;
  v15 = *(v3 + 48);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = sub_276447944(v16);
    *(v3 + 48) = v15;
  }

  if (*(a2 + 48))
  {
    v17 = *(a2 + 48);
  }

  else
  {
    v17 = &unk_2812F13C0;
  }

  result = sub_276440438(v15, v17);
  if ((v5 & 0x10) != 0)
  {
LABEL_42:
    *(v3 + 16) |= 0x10u;
    v18 = *(v3 + 56);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = sub_2764479D0(v19);
      *(v3 + 56) = v18;
    }

    if (*(a2 + 56))
    {
      v20 = *(a2 + 56);
    }

    else
    {
      v20 = &unk_2812F13F8;
    }

    return sub_276440438(v18, v20);
  }

  return result;
}

uint64_t *sub_276443AA0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643E308(result);

    return sub_276443800(v4, a2);
  }

  return result;
}

uint64_t sub_276443AEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_276440594(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_276440E14(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = sub_276441630(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) != 0)
  {
    result = sub_276441E4C(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = sub_276442668(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276443BAC(uint64_t *a1)
{
  if (a1 != &qword_2812F14A8)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276444040(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4030AC051BLL);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276443C10(uint64_t *a1)
{
  sub_276443BAC(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::internal *sub_276443C50(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_2763D4D98(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = sub_276447C80(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2764AD7DC(a3, v10, v5);
    }

    else
    {
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
        *(a3 + 80) = v6 - 1;
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *sub_276443D98(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 20);
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v8 = v6 >> 7;
      if (v6 >> 14)
      {
        v7 = a2 + 3;
        do
        {
          *(v7 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v7;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v7 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        v7 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v6;
      v7 = a2 + 2;
    }

    a2 = sub_276444430(v5, v7, this);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276443E88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276444790(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_276443F14(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524A28, 0);
  if (v4)
  {

    return sub_27643E950(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_276443FBC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643E2AC(result);

    return sub_276443F14(v4, a2);
  }

  return result;
}

uint64_t *sub_276444040(uint64_t *a1)
{
  sub_276444074(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_276444074(uint64_t *result)
{
  if (result != &qword_2812F14C8)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      v3 = sub_27643FD84(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40D196C376);
    }

    v4 = v1[4];
    if (v4)
    {
      v5 = sub_276440714(v4);
      MEMORY[0x277C98580](v5, 0x10A1C40D196C376);
    }

    v6 = v1[5];
    if (v6)
    {
      v7 = sub_276440F30(v6);
      MEMORY[0x277C98580](v7, 0x10A1C40D196C376);
    }

    v8 = v1[6];
    if (v8)
    {
      v9 = sub_27644174C(v8);
      MEMORY[0x277C98580](v9, 0x10A1C40D196C376);
    }

    result = v1[7];
    if (result)
    {
      sub_276441F68(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276444134(uint64_t *a1)
{
  sub_276444040(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::internal *sub_276444174(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while ((sub_2763D4D98(a3, &v25) & 1) == 0)
  {
    v5 = (v25 + 1);
    v6 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v25 + 2);
LABEL_6:
      v25 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v7 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v23;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_46;
        }

        *(a1 + 16) |= 1u;
        v19 = *(a1 + 24);
        if (!v19)
        {
          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = sub_2764477A0(v20);
          *(a1 + 24) = v19;
          v5 = v25;
        }

        v11 = sub_2764AD8AC(a3, v19, v5);
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_46:
          if (v6)
          {
            v21 = (v6 & 7) == 4;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            *(a3 + 80) = v6 - 1;
            return v25;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v11 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_53;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = sub_27644782C(v14);
          *(a1 + 32) = v13;
          v5 = v25;
        }

        v11 = sub_2764AD97C(a3, v13, v5);
      }
    }

    else if (v8 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_46;
      }

      *(a1 + 16) |= 4u;
      v15 = *(a1 + 40);
      if (!v15)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = sub_2764478B8(v16);
        *(a1 + 40) = v15;
        v5 = v25;
      }

      v11 = sub_2764ADA4C(a3, v15, v5);
    }

    else if (v8 == 4)
    {
      if (v6 != 34)
      {
        goto LABEL_46;
      }

      *(a1 + 16) |= 8u;
      v17 = *(a1 + 48);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = sub_276447944(v18);
        *(a1 + 48) = v17;
        v5 = v25;
      }

      v11 = sub_2764ADB1C(a3, v17, v5);
    }

    else
    {
      if (v8 != 5 || v6 != 42)
      {
        goto LABEL_46;
      }

      *(a1 + 16) |= 0x10u;
      v9 = *(a1 + 56);
      if (!v9)
      {
        v10 = *(a1 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = sub_2764479D0(v10);
        *(a1 + 56) = v9;
        v5 = v25;
      }

      v11 = sub_2764ADBEC(a3, v9, v5);
    }

LABEL_53:
    v25 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v25;
}

unsigned __int8 *sub_276444430(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = sub_2764400E8(v6, v8, this);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v12 = *(a1 + 32);
  *a2 = 18;
  v13 = *(v12 + 20);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = sub_276440A78(v12, v14, this);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v18 = *(a1 + 40);
  *a2 = 26;
  v19 = *(v18 + 20);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = sub_276441294(v18, v20, this);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v24 = *(a1 + 48);
  *a2 = 34;
  v25 = *(v24 + 20);
  if (v25 > 0x7F)
  {
    a2[1] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      v26 = a2 + 3;
      do
      {
        *(v26 - 1) = v27 | 0x80;
        v28 = v27 >> 7;
        ++v26;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      *(v26 - 1) = v28;
    }

    else
    {
      a2[2] = v27;
      v26 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v25;
    v26 = a2 + 2;
  }

  a2 = sub_276441AB0(v24, v26, this);
  if ((v5 & 0x10) != 0)
  {
LABEL_47:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v30 = *(a1 + 56);
    *a2 = 42;
    v31 = *(v30 + 20);
    if (v31 > 0x7F)
    {
      a2[1] = v31 | 0x80;
      v33 = v31 >> 7;
      if (v31 >> 14)
      {
        v32 = a2 + 3;
        do
        {
          *(v32 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++v32;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(v32 - 1) = v34;
      }

      else
      {
        a2[2] = v33;
        v32 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v31;
      v32 = a2 + 2;
    }

    a2 = sub_2764422CC(v30, v32, this);
  }

LABEL_57:
  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v36 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276444790(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (v2)
  {
    v4 = sub_2764402A4(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_276440C34(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v8 = sub_276441450(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v9 = sub_276441C6C(*(a1 + 48));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v6 = sub_276442488(*(a1 + 56));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_27644490C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524A40, 0);
  if (v4)
  {

    return sub_2764438A8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_2764449B4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276443494(result);

    return sub_27644490C(v4, a2);
  }

  return result;
}

uint64_t *sub_276444A38(uint64_t *a1)
{
  sub_276444A6C(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_276444A6C(uint64_t *result)
{
  if (result != &qword_2812F1508)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C98580]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::DataReference::~DataReference(v4);
      MEMORY[0x277C98580]();
    }

    result = v1[6];
    if (result)
    {
      TSP::DataReference::~DataReference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276444B28(uint64_t *a1)
{
  sub_276444A38(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276444B68(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    result = TSP::Reference::Clear(v1[4]);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  result = TSP::Reference::Clear(result[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  result = TSP::DataReference::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = TSP::DataReference::Clear(v1[6]);
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276444C00(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while ((sub_2763D4D98(a3, &v25) & 1) == 0)
  {
    v5 = (v25 + 1);
    v6 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v25 + 2);
LABEL_6:
      v25 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v7 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v23;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v13 = *(a1 + 40);
        if (!v13)
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x277C97B10](v19);
          LODWORD(v13) = v20;
          *(a1 + 40) = v20;
LABEL_37:
          v5 = v25;
        }
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 8u;
        v13 = *(a1 + 48);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97B10](v14);
          LODWORD(v13) = v15;
          *(a1 + 48) = v15;
          goto LABEL_37;
        }
      }

      v18 = sub_2764ADD8C(a3, v13, v5);
      goto LABEL_46;
    }

    if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (v10)
      {
        goto LABEL_31;
      }

      v16 = *(a1 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C97B90](v16);
      LODWORD(v10) = v17;
      *(a1 + 24) = v17;
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_39:
        if (v6)
        {
          v21 = (v6 & 7) == 4;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          *(a3 + 80) = v6 - 1;
          return v25;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_46;
      }

      *(a1 + 16) |= 2u;
      v10 = *(a1 + 32);
      if (v10)
      {
        goto LABEL_31;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C97B90](v11);
      LODWORD(v10) = v12;
      *(a1 + 32) = v12;
    }

    v5 = v25;
LABEL_31:
    v18 = sub_2764ADCBC(a3, v10, v5);
LABEL_46:
    v25 = v18;
    if (!v18)
    {
      return 0;
    }
  }

  return v25;
}

unsigned __int8 *sub_276444E4C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 32);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
  *a2 = 26;
  v19 = *(v18 + 5);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSP::DataReference::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(a1 + 48);
    *a2 = 34;
    v25 = *(v24 + 5);
    if (v25 > 0x7F)
    {
      a2[1] = v25 | 0x80;
      v27 = v25 >> 7;
      if (v25 >> 14)
      {
        v26 = a2 + 3;
        do
        {
          *(v26 - 1) = v27 | 0x80;
          v28 = v27 >> 7;
          ++v26;
          v29 = v27 >> 14;
          v27 >>= 7;
        }

        while (v29);
        *(v26 - 1) = v28;
      }

      else
      {
        a2[2] = v27;
        v26 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v25;
      v26 = a2 + 2;
    }

    a2 = TSP::DataReference::_InternalSerialize(v24, v26, a3);
  }

LABEL_46:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276445114(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = TSP::DataReference::ByteSizeLong(*(a1 + 40));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = TSP::DataReference::ByteSizeLong(*(a1 + 48));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_27644525C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524A58, 0);
  if (v4)
  {

    return sub_276445304(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276445304(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    v6 = MEMORY[0x277D80A18];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C97B90](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = v6;
      }

      result = TSP::Reference::MergeFrom(v7, v9);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v10 = *(v3 + 32);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x277C97B90](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = v6;
      }

      result = TSP::Reference::MergeFrom(v10, v12);
    }

    v13 = MEMORY[0x277D80A30];
    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v14 = *(v3 + 40);
      if (!v14)
      {
        v15 = *(v3 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C97B10](v15);
        *(v3 + 40) = v14;
      }

      if (*(a2 + 40))
      {
        v16 = *(a2 + 40);
      }

      else
      {
        v16 = v13;
      }

      result = TSP::DataReference::MergeFrom(v14, v16);
    }

    if ((v5 & 8) != 0)
    {
      *(v3 + 16) |= 8u;
      v17 = *(v3 + 48);
      if (!v17)
      {
        v18 = *(v3 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277C97B10](v18);
        *(v3 + 48) = v17;
      }

      if (*(a2 + 48))
      {
        v19 = *(a2 + 48);
      }

      else
      {
        v19 = v13;
      }

      return TSP::DataReference::MergeFrom(v17, v19);
    }
  }

  return result;
}

uint64_t *sub_276445490(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276444B68(result);

    return sub_27644525C(v4, a2);
  }

  return result;
}

uint64_t sub_2764454DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSP::DataReference::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276445588(uint64_t *a1)
{
  if (a1 != &qword_2812F1540)
  {
    v2 = a1[3];
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C40825B58B5);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_2764455F8(uint64_t *a1)
{
  sub_276445588(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276445638(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = sub_27643B6DC(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_276445698(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v17) & 1) == 0)
  {
    while (1)
    {
      v7 = (v17 + 1);
      v8 = *v17;
      if ((*v17 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v9 - 128));
      v17 = TagFallback;
      if (!TagFallback)
      {
LABEL_32:
        v17 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 21)
        {
          v5 |= 2u;
          *(a1 + 32) = *v7;
          v17 = (v7 + 4);
          goto LABEL_27;
        }
      }

      else if (v8 >> 3 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 24);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = sub_276447FD4(v14);
          *(a1 + 24) = v13;
          v7 = v17;
        }

        v12 = sub_2764A8A98(a3, v13, v7);
        goto LABEL_26;
      }

      if (v8)
      {
        v11 = (v8 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_26:
      v17 = v12;
      if (!v12)
      {
        goto LABEL_32;
      }

LABEL_27:
      if (sub_2763D4D98(a3, &v17))
      {
        goto LABEL_2;
      }
    }

    v7 = (v17 + 2);
LABEL_6:
    v17 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v17;
}

unsigned __int8 *sub_276445838(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = (a2 + 3);
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v7;
      v8 = (a2 + 2);
    }

    a2 = sub_276446ECC(v6, v8, this);
  }

  if ((v5 & 2) != 0)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 21;
    *(a2 + 1) = v12;
    a2 += 5;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276445968(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = sub_276447014(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v4 = v3 + 5;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_276445A10(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524A70, 0);
  if (v4)
  {

    return sub_276445AB8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276445AB8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_276447FD4(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F15A8;
      }

      result = sub_27643BB14(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_276445B6C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276445638(result);

    return sub_276445A10(v4, a2);
  }

  return result;
}

uint64_t *sub_276445C1C(uint64_t *a1)
{
  if (a1 != &qword_2812F1568)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276445588(v2);
      MEMORY[0x277C98580](v3, 0x10A1C40C05B56FCLL);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276445C80(uint64_t *a1)
{
  sub_276445C1C(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276445CC0(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_276445638(result[3]);
  }

  if ((v2 & 0xFE) != 0)
  {
    v1[4] = 0;
    v1[5] = 0;
    *(v1 + 14) = 0;
    v1[6] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 52) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276445D34(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v44) & 1) == 0)
  {
    while (1)
    {
      v7 = (v44 + 1);
      v8 = *v44;
      if ((*v44 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v9 - 128));
      v44 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_118;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 24)
            {
              v30 = (v7 + 1);
              v29 = *v7;
              if ((v29 & 0x8000000000000000) == 0)
              {
                goto LABEL_60;
              }

              v31 = *v30;
              v29 = (v31 << 7) + v29 - 128;
              if (v31 < 0)
              {
                v44 = google::protobuf::internal::VarintParseSlow64(v7, v29);
                if (!v44)
                {
                  goto LABEL_118;
                }
              }

              else
              {
                v30 = (v7 + 2);
LABEL_60:
                v44 = v30;
              }

              if (v29 > 1)
              {
                sub_2764ADE5C();
              }

              else
              {
                *(a1 + 16) |= 4u;
                *(a1 + 36) = v29;
              }

              goto LABEL_92;
            }
          }

          else if (v10 == 4 && v8 == 32)
          {
            v19 = (v7 + 1);
            v18 = *v7;
            if ((v18 & 0x8000000000000000) == 0)
            {
              goto LABEL_36;
            }

            v20 = *v19;
            v18 = (v20 << 7) + v18 - 128;
            if (v20 < 0)
            {
              v44 = google::protobuf::internal::VarintParseSlow64(v7, v18);
              if (!v44)
              {
                goto LABEL_118;
              }
            }

            else
            {
              v19 = (v7 + 2);
LABEL_36:
              v44 = v19;
            }

            if (v18 > 2)
            {
              sub_2764ADF4C();
            }

            else
            {
              *(a1 + 16) |= 8u;
              *(a1 + 40) = v18;
            }

            goto LABEL_92;
          }

          goto LABEL_84;
        }

        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 16)
          {
            v16 = (v7 + 1);
            v15 = *v7;
            if ((v15 & 0x8000000000000000) == 0)
            {
              goto LABEL_27;
            }

            v17 = *v16;
            v15 = (v17 << 7) + v15 - 128;
            if (v17 < 0)
            {
              v44 = google::protobuf::internal::VarintParseSlow64(v7, v15);
              if (!v44)
              {
                goto LABEL_118;
              }
            }

            else
            {
              v16 = (v7 + 2);
LABEL_27:
              v44 = v16;
            }

            if (v15 > 1)
            {
              sub_2764AB5E0();
            }

            else
            {
              *(a1 + 16) |= 2u;
              *(a1 + 32) = v15;
            }

            goto LABEL_92;
          }

          goto LABEL_84;
        }

        if (v8 != 10)
        {
          goto LABEL_84;
        }

        *(a1 + 16) |= 1u;
        v26 = *(a1 + 24);
        if (!v26)
        {
          v27 = *(a1 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v26 = sub_276447E2C(v27);
          *(a1 + 24) = v26;
          v7 = v44;
        }

        v28 = sub_2764AD70C(a3, v26, v7);
        goto LABEL_91;
      }

      if (v8 >> 3 <= 6)
      {
        if (v10 == 5)
        {
          if (v8 == 40)
          {
            v36 = (v7 + 1);
            v35 = *v7;
            if ((v35 & 0x8000000000000000) == 0)
            {
              goto LABEL_74;
            }

            v37 = *v36;
            v35 = (v37 << 7) + v35 - 128;
            if (v37 < 0)
            {
              v44 = google::protobuf::internal::VarintParseSlow64(v7, v35);
              if (!v44)
              {
                goto LABEL_118;
              }
            }

            else
            {
              v36 = (v7 + 2);
LABEL_74:
              v44 = v36;
            }

            if (v35 > 2)
            {
              sub_2764AB5A4();
            }

            else
            {
              *(a1 + 16) |= 0x10u;
              *(a1 + 44) = v35;
            }

            goto LABEL_92;
          }
        }

        else if (v10 == 6 && v8 == 48)
        {
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_45;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v44 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            if (!v44)
            {
              goto LABEL_118;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_45:
            v44 = v22;
          }

          if (v21 > 2)
          {
            sub_2764ADF10();
          }

          else
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 48) = v21;
          }

          goto LABEL_92;
        }

        goto LABEL_84;
      }

      if (v10 == 7)
      {
        if (v8 == 56)
        {
          v33 = (v7 + 1);
          v32 = *v7;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if (v34 < 0)
          {
            v44 = google::protobuf::internal::VarintParseSlow64(v7, v32);
            if (!v44)
            {
              goto LABEL_118;
            }
          }

          else
          {
            v33 = (v7 + 2);
LABEL_67:
            v44 = v33;
          }

          if (v32 > 3)
          {
            sub_2764ADED4();
          }

          else
          {
            *(a1 + 16) |= 0x40u;
            *(a1 + 52) = v32;
          }

          goto LABEL_92;
        }

        goto LABEL_84;
      }

      if (v10 == 8)
      {
        if (v8 == 64)
        {
          v39 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_81;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v44 = google::protobuf::internal::VarintParseSlow64(v7, v38);
            if (!v44)
            {
LABEL_118:
              v44 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v39 = (v7 + 2);
LABEL_81:
            v44 = v39;
          }

          if (v38 > 3)
          {
            sub_2764ADE98();
          }

          else
          {
            *(a1 + 16) |= 0x80u;
            *(a1 + 56) = v38;
          }

          goto LABEL_92;
        }

LABEL_84:
        if (v8)
        {
          v41 = (v8 & 7) == 4;
        }

        else
        {
          v41 = 1;
        }

        if (v41)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v28 = google::protobuf::internal::UnknownFieldParse();
LABEL_91:
        v44 = v28;
        if (!v28)
        {
          goto LABEL_118;
        }

        goto LABEL_92;
      }

      if (v10 != 9 || v8 != 72)
      {
        goto LABEL_84;
      }

      v5 |= 0x100u;
      v12 = (v7 + 1);
      v11 = *v7;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      v13 = *v12;
      v11 = (v13 << 7) + v11 - 128;
      if ((v13 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_16:
        v44 = v12;
        *(a1 + 60) = v11 != 0;
        goto LABEL_92;
      }

      v42 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v44 = v42;
      *(a1 + 60) = v43 != 0;
      if (!v42)
      {
        goto LABEL_118;
      }

LABEL_92:
      if (sub_2763D4D98(a3, &v44))
      {
        goto LABEL_2;
      }
    }

    v7 = (v44 + 2);
LABEL_6:
    v44 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

unsigned __int8 *sub_27644629C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v9 = *(a1 + 24);
    *a2 = 10;
    v10 = *(v9 + 20);
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v12 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = a2 + 3;
        do
        {
          *(v11 - 1) = v12 | 0x80;
          v13 = v12 >> 7;
          ++v11;
          v14 = v12 >> 14;
          v12 >>= 7;
        }

        while (v14);
        *(v11 - 1) = v13;
      }

      else
      {
        a2[2] = v12;
        v11 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v10;
      v11 = a2 + 2;
    }

    a2 = sub_276445838(v9, v11, this);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_36:
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v19 = *(a1 + 36);
      *a2 = 24;
      if (v19 > 0x7F)
      {
        a2[1] = v19 | 0x80;
        v20 = v19 >> 7;
        if (v19 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++a2;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(a2 - 1) = v21;
          if ((v5 & 8) != 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
          a2[2] = v20;
          a2 += 3;
          if ((v5 & 8) != 0)
          {
            goto LABEL_47;
          }
        }
      }

      else
      {
        a2[1] = v19;
        a2 += 2;
        if ((v5 & 8) != 0)
        {
          goto LABEL_47;
        }
      }

LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_58:
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v27 = *(a1 + 44);
      *a2 = 40;
      if (v27 > 0x7F)
      {
        a2[1] = v27 | 0x80;
        v28 = v27 >> 7;
        if (v27 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v28 | 0x80;
            v29 = v28 >> 7;
            ++a2;
            v30 = v28 >> 14;
            v28 >>= 7;
          }

          while (v30);
          *(a2 - 1) = v29;
          if ((v5 & 0x20) != 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          a2[2] = v28;
          a2 += 3;
          if ((v5 & 0x20) != 0)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        a2[1] = v27;
        a2 += 2;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_69;
        }
      }

LABEL_7:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_8;
      }

LABEL_80:
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v35 = *(a1 + 52);
      *a2 = 56;
      if (v35 > 0x7F)
      {
        a2[1] = v35 | 0x80;
        v36 = v35 >> 7;
        if (v35 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v36 | 0x80;
            v37 = v36 >> 7;
            ++a2;
            v38 = v36 >> 14;
            v36 >>= 7;
          }

          while (v38);
          *(a2 - 1) = v37;
          if ((v5 & 0x80) != 0)
          {
            goto LABEL_91;
          }
        }

        else
        {
          a2[2] = v36;
          a2 += 3;
          if ((v5 & 0x80) != 0)
          {
            goto LABEL_91;
          }
        }
      }

      else
      {
        a2[1] = v35;
        a2 += 2;
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_91;
        }
      }

LABEL_9:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v15 = *(a1 + 32);
  *a2 = 16;
  if (v15 > 0x7F)
  {
    a2[1] = v15 | 0x80;
    v16 = v15 >> 7;
    if (v15 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++a2;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(a2 - 1) = v17;
      if ((v5 & 4) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      a2[2] = v16;
      a2 += 3;
      if ((v5 & 4) != 0)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    a2[1] = v15;
    a2 += 2;
    if ((v5 & 4) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_47:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v23 = *(a1 + 40);
  *a2 = 32;
  if (v23 > 0x7F)
  {
    a2[1] = v23 | 0x80;
    v24 = v23 >> 7;
    if (v23 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++a2;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(a2 - 1) = v25;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      a2[2] = v24;
      a2 += 3;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_58;
      }
    }
  }

  else
  {
    a2[1] = v23;
    a2 += 2;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_58;
    }
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_69:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v31 = *(a1 + 48);
  *a2 = 48;
  if (v31 > 0x7F)
  {
    a2[1] = v31 | 0x80;
    v32 = v31 >> 7;
    if (v31 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v32 | 0x80;
        v33 = v32 >> 7;
        ++a2;
        v34 = v32 >> 14;
        v32 >>= 7;
      }

      while (v34);
      *(a2 - 1) = v33;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      a2[2] = v32;
      a2 += 3;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_80;
      }
    }
  }

  else
  {
    a2[1] = v31;
    a2 += 2;
    if ((v5 & 0x40) != 0)
    {
      goto LABEL_80;
    }
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_91:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v39 = *(a1 + 56);
  *a2 = 64;
  if (v39 > 0x7F)
  {
    a2[1] = v39 | 0x80;
    v40 = v39 >> 7;
    if (v39 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v40 | 0x80;
        v41 = v40 >> 7;
        ++a2;
        v42 = v40 >> 14;
        v40 >>= 7;
      }

      while (v42);
      *(a2 - 1) = v41;
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a2[2] = v40;
      a2 += 3;
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    a2[1] = v39;
    a2 += 2;
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_10:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v6 = *(a1 + 60);
  *a2 = 72;
  a2[1] = v6;
  a2 += 2;
LABEL_13:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764467C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276445968(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xFE) == 0)
  {
    goto LABEL_16;
  }

  if ((v2 & 2) != 0)
  {
    v9 = *(a1 + 32);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v10;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v11 = *(a1 + 36);
  if (v11 < 0)
  {
    v12 = 11;
  }

  else
  {
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v12;
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_26:
  v13 = *(a1 + 40);
  if (v13 < 0)
  {
    v14 = 11;
  }

  else
  {
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v14;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_30:
  v15 = *(a1 + 44);
  if (v15 < 0)
  {
    v16 = 11;
  }

  else
  {
    v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v16;
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

LABEL_38:
    v19 = *(a1 + 52);
    if (v19 < 0)
    {
      v20 = 11;
    }

    else
    {
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v20;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_34:
  v17 = *(a1 + 48);
  if (v17 < 0)
  {
    v18 = 11;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v18;
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_38;
  }

LABEL_11:
  if ((v2 & 0x80) != 0)
  {
LABEL_12:
    v5 = *(a1 + 56);
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 11;
    }

    v3 += v7;
  }

LABEL_16:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3 + ((v2 >> 7) & 2);
    return v3 + ((v2 >> 7) & 2);
  }
}

uint64_t sub_2764469F0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524A88, 0);
  if (v4)
  {

    return sub_276446A98(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276446A98(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = sub_276447E2C(v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = &qword_2812F1540;
      }

      result = sub_276445AB8(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(v3 + 36) = *(a2 + 36);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(v3 + 44) = *(a2 + 44);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(v3 + 56) = *(a2 + 56);
      goto LABEL_13;
    }

LABEL_30:
    *(v3 + 52) = *(a2 + 52);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x100) != 0)
  {
    v6 = *(a2 + 60);
    *(v3 + 16) |= 0x100u;
    *(v3 + 60) = v6;
  }

  return result;
}

uint64_t *sub_276446BCC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276445CC0(result);

    return sub_2764469F0(v4, a2);
  }

  return result;
}

BOOL sub_276446C18(uint64_t a1)
{
  result = 0;
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if ((*(v2 + 16) & 1) == 0 || (~*(*(v2 + 24) + 16) & 0xF) == 0)
    {
      return 1;
    }
  }

  return result;
}

void sub_276446CB8(uint64_t a1)
{
  sub_2763941F4((a1 + 8));

  JUMPOUT(0x277C98580);
}

google::protobuf::internal *sub_276446D10(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v7 = (v20 + 1);
      v8 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v9 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 29)
          {
            v16 = *v7;
            v12 = (v7 + 4);
            v5 |= 4u;
            *(a1 + 32) = v16;
            goto LABEL_23;
          }
        }

        else if (v10 == 4 && v8 == 37)
        {
          v14 = *v7;
          v12 = (v7 + 4);
          v5 |= 8u;
          *(a1 + 36) = v14;
          goto LABEL_23;
        }
      }

      else if (v10 == 1)
      {
        if (v8 == 13)
        {
          v15 = *v7;
          v12 = (v7 + 4);
          v5 |= 1u;
          *(a1 + 24) = v15;
          goto LABEL_23;
        }
      }

      else if (v10 == 2 && v8 == 21)
      {
        v13 = *v7;
        v12 = (v7 + 4);
        v5 |= 2u;
        *(a1 + 28) = v13;
LABEL_23:
        v20 = v12;
        goto LABEL_24;
      }

      if (v8)
      {
        v17 = (v8 & 7) == 4;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
LABEL_37:
        v20 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_2763D4D98(a3, &v20))
      {
        goto LABEL_2;
      }
    }

    v7 = (v20 + 2);
LABEL_6:
    v20 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v20;
}

unint64_t sub_276446ECC(uint64_t a1, unint64_t a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 13;
    *(a2 + 1) = v6;
    a2 += 5;
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v7 = *(a1 + 28);
  *a2 = 21;
  *(a2 + 1) = v7;
  a2 += 5;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v8 = *(a1 + 32);
  *a2 = 29;
  *(a2 + 1) = v8;
  a2 += 5;
  if ((v5 & 8) != 0)
  {
LABEL_15:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v9 = *(a1 + 36);
    *a2 = 37;
    *(a2 + 1) = v9;
    a2 += 5;
  }

LABEL_18:
  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276447014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((~v1 & 0xF) != 0)
  {
    v3 = 5;
    if ((v1 & 1) == 0)
    {
      v3 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 = v3 + 5;
    }

    else
    {
      v2 = v3;
    }
  }

  else
  {
    v2 = 20;
  }

  if (*(a1 + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(a1 + 20) = v2;
  return v2;
}

uint64_t sub_276447080(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288524AA0, 0);
  if (v4)
  {

    return sub_27643BB14(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276447128(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27643B6DC(result);

    return sub_276447080(v4, a2);
  }

  return result;
}

uint64_t sub_2764471B0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276448930(a1, 1);
  sub_27643A100(v2, a1);
  return v2;
}

void *sub_27644723C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2764489BC(a1, 1);
  sub_27643A854(v2, a1);
  return v2;
}

void *sub_2764472C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276448A48(a1);
}

void *sub_276447394(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276448B48(a1);
}

void *sub_276447460(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276448C48(a1);
}

uint64_t sub_276447530(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276448D4C(a1, 1);
  sub_27643CB04(v2, a1);
  return v2;
}

void *sub_2764475BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276448DD8(a1);
}

void *sub_27644768C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276448EDC(a1, 1);
  sub_27643EAAC(v2, a1);
  return v2;
}

void *sub_276447718(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276448F68(a1, 1);
  sub_27643F394(v2, a1);
  return v2;
}

void *sub_2764477A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276448FF4(a1, 1);
  sub_27643FCF8(v2, a1);
  return v2;
}

void *sub_276447830(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276449080(a1, 1);
  sub_276440688(v2, a1);
  return v2;
}

void *sub_2764478BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27644910C(a1, 1);
  sub_276440EA4(v2, a1);
  return v2;
}

void *sub_276447948(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276449198(a1, 1);
  sub_2764416C0(v2, a1);
  return v2;
}

void *sub_2764479D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276449224(a1, 1);
  sub_276441EDC(v2, a1);
  return v2;
}

uint64_t sub_276447A60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2764492B0(a1, 1);
  sub_2764426F8(v2, a1);
  return v2;
}

void *sub_276447AEC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27644933C(a1);
}

void *sub_276447BB8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27644943C(a1);
}

uint64_t sub_276447C84(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27644953C(a1);
}

uint64_t sub_276447D5C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276449648(a1);
}

uint64_t sub_276447E30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276449750(a1);
}

uint64_t sub_276447F00(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276449854(a1);
}

void *sub_276447FD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276449960(a1, 1);
  *result = &unk_288524808;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void sub_276448258(void *a1)
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
          v5 = sub_2764427A8(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C40F04931A1);
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

uint64_t sub_2764482DC(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_27644838C(v13, v15);
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
      v22 = sub_276447A5C(v18);
      result = sub_27644838C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27644839C(void *a1)
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
          v5 = sub_27643CB84(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C4012C06F0ELL);
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

uint64_t sub_276448420(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2764484D0(v13, v15);
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
      v22 = sub_27644752C(v18);
      result = sub_2764484D0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2764484E0(void *a1)
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
          v5 = sub_276444A38(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C404E50D5EBLL);
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

uint64_t sub_276448564(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276448614(v13, v15);
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
      v22 = sub_276447D58(v18);
      result = sub_276448614(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276448624(void *a1)
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
          v5 = sub_276445C1C(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C40E7B9ED62);
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

uint64_t sub_2764486A8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276448758(v13, v15);
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
      v22 = sub_276447EFC(v18);
      result = sub_276448758(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276448768(void *a1)
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
          v5 = sub_276445588(*v3);
          MEMORY[0x277C98580](v5, 0x10A1C40C05B56FCLL);
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

uint64_t sub_2764487EC(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_27644889C(v13, v15);
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
      v22 = sub_276447E2C(v18);
      result = sub_27644889C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_2764488AC(TSD::FillArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSD::FillArchive::default_instance(a1);
  if (atomic_load_explicit(dword_2812ED708, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, qword_2812F1170);
}

uint64_t sub_276448930(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ADF88(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_2764489B8);
}

uint64_t sub_2764489BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ADFB8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_276448A44);
}

void *sub_276448A48(uint64_t a1)
{
  v2 = sub_276448ABC(a1, 1);
  *v2 = &unk_288523AF8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812ED878, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276448ABC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764ADFE8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276448B44);
}

void *sub_276448B48(uint64_t a1)
{
  v2 = sub_276448BBC(a1, 1);
  *v2 = &unk_288523BA8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812ED670, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276448BBC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE018(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276448C44);
}

void *sub_276448C48(uint64_t a1)
{
  v2 = sub_276448CC0(a1, 1);
  *v2 = &unk_288523C58;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812ED8E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276448CC0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE048(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_276448D48);
}

uint64_t sub_276448D4C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE078(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, sub_276448DD4);
}

void *sub_276448DD8(uint64_t a1)
{
  v2 = sub_276448E50(a1, 1);
  *v2 = &unk_288523DB8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812ED7A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276448E50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE0B4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_276448ED8);
}

uint64_t sub_276448EDC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE0E4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276448F64);
}

uint64_t sub_276448F68(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE114(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276448FF0);
}

uint64_t sub_276448FF4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE144(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_27644907C);
}

uint64_t sub_276449080(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE174(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276449108);
}

uint64_t sub_27644910C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE1A4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276449194);
}

uint64_t sub_276449198(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE1D4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_276449220);
}

uint64_t sub_276449224(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE204(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_2764492AC);
}

uint64_t sub_2764492B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE234(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, sub_276449338);
}

void *sub_27644933C(uint64_t a1)
{
  v2 = sub_2764493B0(a1, 1);
  *v2 = &unk_2885243E8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812ED728, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2764493B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE270(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276449438);
}

void *sub_27644943C(uint64_t a1)
{
  v2 = sub_2764494B0(a1, 1);
  *v2 = &unk_288524498;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812ED818, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2764494B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE2A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276449538);
}

uint64_t sub_27644953C(uint64_t a1)
{
  v2 = sub_2764495BC(a1, 1);
  *v2 = &unk_288524548;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812ED838, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2764495BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE2D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_276449644);
}

uint64_t sub_276449648(uint64_t a1)
{
  v2 = sub_2764496C4(a1, 1);
  *v2 = &unk_2885245F8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812ED908, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2764496C4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE300(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_27644974C);
}

uint64_t sub_276449750(uint64_t a1)
{
  v2 = sub_2764497C8(a1, 1);
  *v2 = &unk_2885246A8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812ED628, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_2764497C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE330(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_276449850);
}

uint64_t sub_276449854(uint64_t a1)
{
  v2 = sub_2764498D4(a1, 1);
  *v2 = &unk_288524758;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812ED748, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 53) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2764498D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE360(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, sub_27644995C);
}

uint64_t sub_276449960(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2764AE390(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C97C70);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2764499E8);
}

uint64_t sub_276449A08()
{
  google::protobuf::internal::AddDescriptors();
  if (atomic_load_explicit(dword_2812ED708, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F15D0 = 100;
  qword_2812F15D8 = qword_2812F1170;

  return sub_2764488AC(0x64, 11, 0);
}

uint64_t sub_276449A80(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F24E8 = v4;
  qword_2812F24E0 = &unk_288526F38;
  if (atomic_load_explicit(dword_2812ED9E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F24F8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F24E0);
}

uint64_t sub_276449B30(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F1FB0 = v4;
  qword_2812F1FA8 = &unk_288526228;
  if (atomic_load_explicit(dword_2812EDA08, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F1FC0 = 0;
  unk_2812F1FC8 = 0;
  word_2812F1FD8 = 0;
  qword_2812F1FD0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F1FA8);
}

uint64_t sub_276449BE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F2428 = v4;
  qword_2812F2420 = &unk_288526BC8;
  if (atomic_load_explicit(dword_2812EDA38, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F2438 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F2420);
}

uint64_t sub_276449C98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  sub_2764732CC(qword_2812F2460, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, qword_2812F2460);
}

uint64_t sub_276449D08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F24A0 = v4;
  qword_2812F2498 = &unk_288526DD8;
  if (atomic_load_explicit(dword_2812EDA80, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F24B0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F2498);
}

uint64_t sub_276449DB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F24C0 = v4;
  qword_2812F24B8 = &unk_288526E88;
  if (atomic_load_explicit(dword_2812EDAA0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F24D0 = 0;
  unk_2812F24D8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F24B8);
}

uint64_t sub_276449E68(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F2448 = v4;
  qword_2812F2440 = &unk_288526C78;
  if (atomic_load_explicit(dword_2812EDAC0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F2458 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F2440);
}

uint64_t sub_276449F18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F2408 = v4;
  qword_2812F2400 = &unk_288526B18;
  if (atomic_load_explicit(dword_2812EDAE0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F2418 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F2400);
}

uint64_t sub_276449FC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  sub_276459ED0(&unk_2812F1AD0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F1AD0);
}

uint64_t sub_27644A038(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  sub_276458E3C(&unk_2812F1A68, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F1A68);
}

uint64_t sub_27644A0A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  sub_27646D590(&unk_2812F2260, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F2260);
}

uint64_t sub_27644A118(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  sub_276456834(&unk_2812F19B0, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F19B0);
}

uint64_t sub_27644A188(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  sub_276464A18(&unk_2812F1EE8, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &unk_2812F1EE8);
}

uint64_t sub_27644A1F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSCHCommandArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F1EB8 = v4;
  qword_2812F1EB0 = &unk_288526018;
  if (atomic_load_explicit(dword_2812EDBE8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F1ED8 = 0u;
  unk_2812F1EC8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &qword_2812F1EB0);
}