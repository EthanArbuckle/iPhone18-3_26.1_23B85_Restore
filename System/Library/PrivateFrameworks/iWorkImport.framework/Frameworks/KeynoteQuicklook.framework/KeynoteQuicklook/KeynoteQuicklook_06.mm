unsigned __int8 *sub_275E0CBD8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v7 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v7, v9, this);
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v14 = *(a1 + 48);
    *a2 = 18;
    v15 = *(v14 + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v14, v16, this);
    if ((v13 & 0x10) == 0)
    {
LABEL_15:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_16;
      }

LABEL_33:
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
      }

      v21 = *(a1 + 88);
      *a2 = 32;
      if (v21 > 0x7F)
      {
        a2[1] = v21 | 0x80;
        v22 = v21 >> 7;
        if (v21 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v22 | 0x80;
            v23 = v22 >> 7;
            ++a2;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
          *(a2 - 1) = v23;
          if ((v13 & 2) != 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          a2[2] = v22;
          a2 += 3;
          if ((v13 & 2) != 0)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        a2[1] = v21;
        a2 += 2;
        if ((v13 & 2) != 0)
        {
          goto LABEL_44;
        }
      }

LABEL_17:
      if ((v13 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_54;
    }
  }

  else if ((v13 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v20 = *(a1 + 80);
  *a2 = 25;
  *(a2 + 1) = v20;
  a2 += 9;
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_16:
  if ((v13 & 2) == 0)
  {
    goto LABEL_17;
  }

LABEL_44:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v25 = *(a1 + 56);
  *a2 = 42;
  v26 = *(v25 + 5);
  if (v26 > 0x7F)
  {
    a2[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = a2 + 3;
      do
      {
        *(v27 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v27;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v27 - 1) = v29;
    }

    else
    {
      a2[2] = v28;
      v27 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v26;
    v27 = a2 + 2;
  }

  a2 = TSP::Date::_InternalSerialize(v25, v27, this);
  if ((v13 & 4) == 0)
  {
LABEL_18:
    if ((v13 & 8) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_64;
  }

LABEL_54:
  if (*this <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
  }

  v31 = *(a1 + 64);
  *a2 = 50;
  v32 = *(v31 + 20);
  if (v32 > 0x7F)
  {
    a2[1] = v32 | 0x80;
    v34 = v32 >> 7;
    if (v32 >> 14)
    {
      v33 = a2 + 3;
      do
      {
        *(v33 - 1) = v34 | 0x80;
        v35 = v34 >> 7;
        ++v33;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
      *(v33 - 1) = v35;
    }

    else
    {
      a2[2] = v34;
      v33 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v32;
    v33 = a2 + 2;
  }

  a2 = sub_275E0D9A8(v31, v33, this);
  if ((v13 & 8) != 0)
  {
LABEL_64:
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v37 = *(a1 + 72);
    *a2 = 58;
    v38 = *(v37 + 20);
    if (v38 > 0x7F)
    {
      a2[1] = v38 | 0x80;
      v40 = v38 >> 7;
      if (v38 >> 14)
      {
        v39 = a2 + 3;
        do
        {
          *(v39 - 1) = v40 | 0x80;
          v41 = v40 >> 7;
          ++v39;
          v42 = v40 >> 14;
          v40 >>= 7;
        }

        while (v42);
        *(v39 - 1) = v41;
      }

      else
      {
        a2[2] = v40;
        v39 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v38;
      v39 = a2 + 2;
    }

    a2 = sub_275E0DEBC(v37, v39, this);
  }

LABEL_74:
  v43 = *(a1 + 8);
  if ((v43 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v43 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E0D028(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 0x3F) == 0)
  {
    goto LABEL_26;
  }

  if (v8)
  {
    v12 = TSP::Reference::ByteSizeLong(*(a1 + 48));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      v14 = sub_275E0DAD8(*(a1 + 64));
      v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v13 = TSP::Date::ByteSizeLong(*(a1 + 56));
  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v8 & 8) != 0)
  {
LABEL_14:
    v9 = sub_275E0DF4C(*(a1 + 72));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v8 & 0x10) != 0)
  {
    v2 += 9;
  }

  if ((v8 & 0x20) != 0)
  {
    v10 = *(a1 + 88);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v11;
  }

LABEL_26:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275E0D1FC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8060, 0);
  if (v4)
  {

    return sub_275E0D2A4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E0D2A4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E226E8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C8F050](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v11, v13);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_32;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    v14 = *(v3 + 56);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C8EFE0](v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v16 = *(a2 + 56);
    }

    else
    {
      v16 = MEMORY[0x277D809C0];
    }

    result = TSP::Date::MergeFrom(v14, v16);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_40;
    }

LABEL_32:
    *(v3 + 16) |= 4u;
    v17 = *(v3 + 64);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = sub_275E20C04(v18);
      *(v3 + 64) = v17;
    }

    if (*(a2 + 64))
    {
      v19 = *(a2 + 64);
    }

    else
    {
      v19 = &qword_2812EB918;
    }

    result = sub_275E0D4BC(v17, v19);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_48;
    }

LABEL_40:
    *(v3 + 16) |= 8u;
    v20 = *(v3 + 72);
    if (!v20)
    {
      v21 = *(v3 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = sub_275E20CD4(v21);
      *(v3 + 72) = v20;
    }

    if (*(a2 + 72))
    {
      v22 = *(a2 + 72);
    }

    else
    {
      v22 = &qword_2812EB940;
    }

    result = sub_275E0D570(v20, v22);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
LABEL_14:
        *(v3 + 16) |= v10;
        return result;
      }

LABEL_13:
      *(v3 + 88) = *(a2 + 88);
      goto LABEL_14;
    }

LABEL_48:
    *(v3 + 80) = *(a2 + 80);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_275E0D4BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C8F000](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      result = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t sub_275E0D570(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    *(v3 + 24) = v5;
  }

  return result;
}

uint64_t *sub_275E0D5C8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E0C670(result);

    return sub_275E0D1FC(v4, a2);
  }

  return result;
}

uint64_t sub_275E0D614(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 2) != 0)
  {
    result = TSP::Date::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) == 0)
  {
    return 1;
  }

  v7 = *(a1 + 64);
  if ((*(v7 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(v7 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E0D6AC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275E0D718(uint64_t *a1)
{
  if (a1 != &qword_2812EB918)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E0D77C(uint64_t *a1)
{
  sub_275E0D718(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275E0D7BC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
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

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x277C8F000](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v23;
          }

          v12 = sub_275E5BB7C(a3, v16, v7);
        }

        else
        {
LABEL_12:
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
            sub_275E22260((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v23 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v23 = v21;
      *(a1 + 32) = v22 != 0;
      if (!v21)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_275E221E8(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *sub_275E0D9A8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E0DAD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = TSP::UUID::ByteSizeLong(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 + (v2 & 2);
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275E0DB7C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8078, 0);
  if (v4)
  {

    return sub_275E0D4BC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275E0DC24(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E0C75C(result);

    return sub_275E0DB7C(v4, a2);
  }

  return result;
}

void sub_275E0DCDC(uint64_t a1)
{
  sub_275DE4968((a1 + 8));

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275E0DD34(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v18) & 1) == 0)
  {
    while (1)
    {
      v6 = (v18 + 1);
      v7 = *v18;
      if ((*v18 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
      v18 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_27;
      }

      v6 = TagFallback;
      v7 = v14;
LABEL_6:
      if (v7 == 8)
      {
        v11 = (v6 + 1);
        v10 = *v6;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v12 = *v11;
        v10 = (v12 << 7) + v10 - 128;
        if ((v12 & 0x80000000) == 0)
        {
          v11 = (v6 + 2);
LABEL_18:
          v18 = v11;
          *(a1 + 24) = v10 != 0;
          v5 = 1;
          goto LABEL_19;
        }

        v15 = google::protobuf::internal::VarintParseSlow64(v6, v10);
        v18 = v15;
        *(a1 + 24) = v16 != 0;
        v5 = 1;
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        if (!v18)
        {
LABEL_27:
          v18 = 0;
          goto LABEL_26;
        }
      }

LABEL_19:
      if (sub_275E221E8(a3, &v18))
      {
        goto LABEL_26;
      }
    }

    v6 = (v18 + 2);
LABEL_5:
    v18 = v6;
    goto LABEL_6;
  }

LABEL_26:
  *(a1 + 16) |= v5;
  return v18;
}

unsigned __int8 *sub_275E0DEBC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v4 = *(a1 + 24);
    *a2 = 8;
    a2[1] = v4;
    a2 += 2;
  }

  v5 = *(a1 + 8);
  if ((v5 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E0DF4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = a1 + 8;
  v3 = *(v1 + 8);
  v4 = 2 * (v3 & 1);
  if (v2)
  {
    return MEMORY[0x2821EADD8](v1, v4, v1 + 12);
  }

  *(v1 + 12) = v4;
  return 2 * (v3 & 1);
}

uint64_t sub_275E0DF70(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8090, 0);
  if (v4)
  {

    return sub_275E0D570(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

_BYTE *sub_275E0E018(_BYTE *result, _BYTE *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = result[8];
    v5 = result + 8;
    v5[16] = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_275E224D0(v5);
    }

    return sub_275E0DF70(v4, lpsrc);
  }

  return result;
}

void *sub_275E0E0B8(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D6D58;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EA4A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = MEMORY[0x277D80A90];
  return a1;
}

uint64_t *sub_275E0E150(uint64_t *a1)
{
  v2 = a1[6];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  sub_275DE4968(a1 + 1);
  sub_275E23BDC(a1 + 3);
  return a1;
}

void sub_275E0E1CC(uint64_t *a1)
{
  sub_275E0E150(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275E0E20C()
{
  if (atomic_load_explicit(dword_2812EA4A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EB960;
}

uint64_t *sub_275E0E24C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_275E0EBA4(v4);
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

    return sub_275E224D0(v6);
  }

  return result;
}

google::protobuf::internal *sub_275E0E2FC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275E221E8(a3, &v22))
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
      v15 = sub_275E20DD4(*(a1 + 24));
      v16 = *(a1 + 32);
      v17 = *(a1 + 40) + 8 * v16;
      *(a1 + 32) = v16 + 1;
      *(v17 + 8) = v15;
      v12 = v22;
LABEL_26:
      v11 = sub_275E5D820(a3, v15, v12);
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
      sub_275E22260((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_33;
  }

  *(a3 + 80) = v6 - 1;
  return v22;
}

unsigned __int8 *sub_275E0E514(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(a1 + 16))
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
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

      v4 = sub_275E0F0A4(v8, v10, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E0E664(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_275E0F3A4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 16))
  {
    v8 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275E0E764(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D80A8, 0);
  if (v4)
  {

    return sub_275E0E80C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E0E80C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E23C60(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

uint64_t *sub_275E0E900(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E0E24C(result);

    return sub_275E0E764(v4, a2);
  }

  return result;
}

BOOL sub_275E0E94C(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_275E0FB68(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

uint64_t sub_275E0E9E0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D6E08;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA468, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0xBFF0000000000000;
  return a1;
}

uint64_t sub_275E0EA58(uint64_t a1)
{
  sub_275E0EA8C(a1);
  sub_275DE4968((a1 + 8));
  return a1;
}

uint64_t sub_275E0EA8C(uint64_t result)
{
  if (result != &unk_2812EB998)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      v3 = sub_275E0FCFC(v2);
      MEMORY[0x277C8F960](v3, 0x10A1C4042CF1500);
    }

    v4 = v1[4];
    if (v4)
    {
      v5 = sub_275E105A4(v4);
      MEMORY[0x277C8F960](v5, 0x10A1C40DFBAE579);
    }

    v6 = v1[5];
    if (v6)
    {
      sub_275DE4968((v6 + 8));
      MEMORY[0x277C8F960](v6, 0x1081C40E1DA5700);
    }

    result = v1[6];
    if (result)
    {
      sub_275E11094(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275E0EB64(uint64_t a1)
{
  sub_275E0EA58(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E0EBA4(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_13;
  }

  if (v2)
  {
    result = sub_275E0EC50(result[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_8:
      v3 = v1[5];
      v4 = *(v3 + 8);
      result = (v3 + 8);
      *(result + 4) = 0;
      *(result + 2) = 0;
      if (v4)
      {
        result = sub_275E224D0(result);
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_275E0ECCC(v1[4]);
  if ((v2 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_10:
  if ((v2 & 8) != 0)
  {
    result = sub_275E0ED54(v1[6]);
  }

  v1[7] = 0xBFF0000000000000;
LABEL_13:
  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_275E224D0(v5);
  }

  return result;
}

uint64_t *sub_275E0EC50(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::UUID::Clear(v1[4]);
    }
  }

  if ((v2 & 0xC) != 0)
  {
    v1[5] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

uint64_t *sub_275E0ECCC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSP::Point::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::Point::Clear(v1[4]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

uint64_t *sub_275E0ED3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_275E224D0(result);
  }

  return result;
}

uint64_t *sub_275E0ED54(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(result[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = TSP::Reference::Clear(v1[4]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = TSP::UUID::Clear(v1[5]);
    }
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    v1[6] = 0;
    *(v1 + 14) = 1;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275E0EDF0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
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

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
LABEL_52:
        v23 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 0x3E8)
      {
        if (v10 == 1)
        {
          if (v8 == 9)
          {
            v5 |= 0x10u;
            *(a1 + 56) = *v7;
            v23 = (v7 + 8);
            goto LABEL_47;
          }
        }

        else if (v10 == 1000 && v8 == 66)
        {
          *(a1 + 16) |= 1u;
          v14 = *(a1 + 24);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = sub_275E20E60(v15);
            *(a1 + 24) = v14;
            v7 = v23;
          }

          v13 = sub_275E5D8F0(a3, v14, v7);
          goto LABEL_46;
        }
      }

      else if (v10 == 1001)
      {
        if (v8 == 74)
        {
          *(a1 + 16) |= 2u;
          v16 = *(a1 + 32);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_275E20F30(v17);
            *(a1 + 32) = v16;
            v7 = v23;
          }

          v13 = sub_275E5D9C0(a3, v16, v7);
          goto LABEL_46;
        }
      }

      else if (v10 == 1002)
      {
        if (v8 == 82)
        {
          *(a1 + 16) |= 4u;
          v18 = *(a1 + 40);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = sub_275E20FFC(v19);
            *(a1 + 40) = v18;
            v7 = v23;
          }

          v13 = sub_275E5DA90(a3, v18, v7);
          goto LABEL_46;
        }
      }

      else if (v10 == 1003 && v8 == 90)
      {
        *(a1 + 16) |= 8u;
        v11 = *(a1 + 48);
        if (!v11)
        {
          v12 = *(a1 + 8);
          if (v12)
          {
            v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = sub_275E21070(v12);
          *(a1 + 48) = v11;
          v7 = v23;
        }

        v13 = sub_275E5DB60(a3, v11, v7);
        goto LABEL_46;
      }

      if (v8)
      {
        v20 = (v8 & 7) == 4;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_46:
      v23 = v13;
      if (!v13)
      {
        goto LABEL_52;
      }

LABEL_47:
      if (sub_275E221E8(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *sub_275E0F0A4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 56);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(a1 + 24);
  *a2 = 16066;
  v8 = *(v7 + 20);
  if (v8 > 0x7F)
  {
    a2[2] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = a2 + 4;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      a2[3] = v10;
      v9 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v8;
    v9 = a2 + 3;
  }

  a2 = sub_275E10078(v7, v9, a3);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_20:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(a1 + 32);
  *a2 = 16074;
  v14 = *(v13 + 20);
  if (v14 > 0x7F)
  {
    a2[2] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = a2 + 4;
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
      a2[3] = v16;
      v15 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v14;
    v15 = a2 + 3;
  }

  a2 = sub_275E10800(v13, v15, a3);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_40;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(a1 + 40);
  *a2 = 16082;
  v20 = *(v19 + 20);
  if (v20 > 0x7F)
  {
    a2[2] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = a2 + 4;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      a2[3] = v22;
      v21 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v20;
    v21 = a2 + 3;
  }

  a2 = sub_275E10D94(v19, v21, a3);
  if ((v5 & 8) != 0)
  {
LABEL_40:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(a1 + 48);
    *a2 = 16090;
    v26 = *(v25 + 20);
    if (v26 > 0x7F)
    {
      a2[2] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        v27 = a2 + 4;
        do
        {
          *(v27 - 1) = v28 | 0x80;
          v29 = v28 >> 7;
          ++v27;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
        *(v27 - 1) = v29;
      }

      else
      {
        a2[3] = v28;
        v27 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v26;
      v27 = a2 + 3;
    }

    a2 = sub_275E11438(v25, v27, a3);
  }

LABEL_50:
  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E0F3A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if (v2)
  {
    v5 = sub_275E10330(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
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
    v6 = sub_275E10990(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
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

  v9 = sub_275E10E74(*(a1 + 40));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v7 = sub_275E11730(*(a1 + 48));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_11:
  if ((v2 & 0x10) != 0)
  {
    v4 = v3 + 9;
  }

  else
  {
    v4 = v3;
  }

LABEL_14:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275E0F4F4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D80C0, 0);
  if (v4)
  {

    return sub_275E0F59C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E0F59C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x1F) != 0)
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

        v6 = sub_275E20E60(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812EB9D8;
      }

      result = sub_275E0F748(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
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

      v9 = sub_275E20F30(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &qword_2812EBA08;
    }

    result = sub_275E0F864(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = sub_275E20FFC(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = &qword_2812EBA30;
    }

    result = sub_275E0F960(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_9:
      *(v3 + 56) = *(a2 + 56);
      goto LABEL_10;
    }

LABEL_36:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_275E21070(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &unk_2812EBA50;
    }

    result = sub_275E0F9B8(v15, v17);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t sub_275E0F748(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
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

        v6 = MEMORY[0x277C8F050](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
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

      v9 = MEMORY[0x277C8F000](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = MEMORY[0x277D809E0];
    }

    result = TSP::UUID::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_8:
      *(v3 + 44) = *(a2 + 44);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t sub_275E0F864(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    v6 = MEMORY[0x277D809F0];
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

        v7 = MEMORY[0x277C8F020](v8);
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

      result = TSP::Point::MergeFrom(v7, v9);
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

        v10 = MEMORY[0x277C8F020](v11);
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

      return TSP::Point::MergeFrom(v10, v12);
    }
  }

  return result;
}

uint64_t sub_275E0F960(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    *(v3 + 24) = v5;
  }

  return result;
}

uint64_t sub_275E0F9B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x1F) != 0)
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

        v7 = MEMORY[0x277C8F050](v8);
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
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C8F050](v11);
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
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C8F000](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = MEMORY[0x277D809E0];
    }

    result = TSP::UUID::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_9:
      *(v3 + 56) = *(a2 + 56);
      goto LABEL_10;
    }

LABEL_36:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_275E0FB1C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E0EBA4(result);

    return sub_275E0F4F4(v4, a2);
  }

  return result;
}

uint64_t sub_275E0FB68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = sub_275E0FBC8(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = sub_275E0FC14(*(a1 + 32));
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

  result = sub_275E0FC60(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E0FBC8(uint64_t a1)
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

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E0FC14(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSP::Point::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Point::IsInitialized(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E0FC60(uint64_t a1)
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

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275E0FCFC(uint64_t *a1)
{
  if (a1 != &qword_2812EB9D8)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E0FD80(uint64_t *a1)
{
  sub_275E0FCFC(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275E0FDC0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v30) & 1) == 0)
  {
    while (1)
    {
      v7 = (v30 + 1);
      v8 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_57;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 24)
          {
            v23 = (v7 + 1);
            v22 = *v7;
            if ((v22 & 0x8000000000000000) == 0)
            {
              goto LABEL_36;
            }

            v24 = *v23;
            v22 = (v24 << 7) + v22 - 128;
            if (v24 < 0)
            {
              v30 = google::protobuf::internal::VarintParseSlow64(v7, v22);
              if (!v30)
              {
LABEL_57:
                v30 = 0;
                goto LABEL_2;
              }
            }

            else
            {
              v23 = (v7 + 2);
LABEL_36:
              v30 = v23;
            }

            if (v22 > 2)
            {
              sub_275E5F820();
            }

            else
            {
              *(a1 + 16) |= 8u;
              *(a1 + 44) = v22;
            }

            goto LABEL_47;
          }

          goto LABEL_39;
        }

        if (v10 != 4 || v8 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 2u;
        v15 = *(a1 + 32);
        if (!v15)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C8F000](v16);
          LODWORD(v15) = v17;
          *(a1 + 32) = v17;
          v7 = v30;
        }

        v18 = sub_275E5BB7C(a3, v15, v7);
LABEL_46:
        v30 = v18;
        if (!v18)
        {
          goto LABEL_57;
        }

        goto LABEL_47;
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v19 = *(a1 + 24);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277C8F050](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v30;
          }

          v18 = sub_275E5B9DC(a3, v19, v7);
          goto LABEL_46;
        }

LABEL_39:
        if (v8)
        {
          v25 = (v8 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_46;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_39;
      }

      v5 |= 4u;
      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_17:
        v30 = v12;
        *(a1 + 40) = v13;
        goto LABEL_47;
      }

      v28 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v30 = v28;
      *(a1 + 40) = v29;
      if (!v28)
      {
        goto LABEL_57;
      }

LABEL_47:
      if (sub_275E221E8(a3, &v30))
      {
        goto LABEL_2;
      }
    }

    v7 = (v30 + 2);
LABEL_6:
    v30 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

unsigned __int8 *sub_275E10078(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(a1 + 40);
    *a2 = 16;
    if (v20 > 0x7F)
    {
      a2[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++a2;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(a2 - 1) = v22;
        if ((v5 & 8) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        a2[2] = v21;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      a2[1] = v20;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 24);
  *a2 = 10;
  v10 = *(v9 + 5);
  if (v10 > 0x7F)
  {
    a2[1] = v10 | 0x80;
    v13 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = a2 + 3;
      do
      {
        *(v11 - 1) = v13 | 0x80;
        v18 = v13 >> 7;
        ++v11;
        v19 = v13 >> 14;
        v13 >>= 7;
      }

      while (v19);
      *(v11 - 1) = v18;
    }

    else
    {
      a2[2] = v13;
      v11 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v10;
    v11 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v9, v11, a3);
  if ((v5 & 4) != 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  if ((v5 & 8) == 0)
  {
    goto LABEL_4;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(a1 + 44);
  *a2 = 24;
  if (v24 > 0x7F)
  {
    a2[1] = v24 | 0x80;
    v25 = v24 >> 7;
    if (v24 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v25 | 0x80;
        v26 = v25 >> 7;
        ++a2;
        v27 = v25 >> 14;
        v25 >>= 7;
      }

      while (v27);
      *(a2 - 1) = v26;
      if ((v5 & 2) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      a2[2] = v25;
      a2 += 3;
      if ((v5 & 2) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    a2[1] = v24;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 32);
  *a2 = 34;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v12 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v12 | 0x80;
        v14 = v12 >> 7;
        ++v8;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
      *(v8 - 1) = v14;
    }

    else
    {
      a2[2] = v12;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
LABEL_21:
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E10330(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_16;
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
    v5 = TSP::UUID::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    v6 = *(a1 + 44);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
    goto LABEL_16;
  }

  if ((v2 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275E10474(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D80D8, 0);
  if (v4)
  {

    return sub_275E0F748(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275E1051C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E0EC50(result);

    return sub_275E10474(v4, a2);
  }

  return result;
}

uint64_t *sub_275E105A4(uint64_t *a1)
{
  if (a1 != &qword_2812EBA08)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Point::~Point(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::Point::~Point(v3);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E10620(uint64_t *a1)
{
  sub_275E105A4(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275E10660(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_275E221E8(a3, &v19) & 1) == 0)
  {
    v5 = (v19 + 1);
    v6 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v19 + 2);
LABEL_6:
      v19 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v7 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v17;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C8F020](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        goto LABEL_28;
      }
    }

    else
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
LABEL_12:
        if (v6)
        {
          v9 = (v6 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v6 - 1;
          return v19;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C8F020](v14);
        LODWORD(v11) = v15;
        *(a1 + 24) = v15;
LABEL_28:
        v5 = v19;
      }
    }

    v10 = sub_275E5C94C(a3, v11, v5);
LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *sub_275E10800(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Point::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
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

    a2 = TSP::Point::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E10990(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSP::Point::ByteSizeLong(*(a1 + 24));
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
    v5 = TSP::Point::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_275E10A70(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D80F0, 0);
  if (v4)
  {

    return sub_275E0F864(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275E10B18(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E0ECCC(result);

    return sub_275E10A70(v4, a2);
  }

  return result;
}

void sub_275E10BD0(uint64_t a1)
{
  sub_275DE4968((a1 + 8));

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275E10C28(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_275E221E8(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if (*v15 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
        v15 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v13;
        goto LABEL_7;
      }

      v5 = (v15 + 2);
    }

    v15 = v5;
LABEL_7:
    if (v6 == 8)
    {
      v10 = (v5 + 1);
      v9 = *v5;
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      v11 = *v10;
      v9 = (v11 << 7) + v9 - 128;
      if ((v11 & 0x80000000) == 0)
      {
        v10 = (v5 + 2);
LABEL_19:
        v15 = v10;
        goto LABEL_20;
      }

      v15 = google::protobuf::internal::VarintParseSlow64(v5, v9);
      if (!v15)
      {
        return 0;
      }

LABEL_20:
      if (v9 > 3)
      {
        sub_275E5F76C();
      }

      else
      {
        *(a1 + 16) |= 1u;
        *(a1 + 24) = v9;
      }
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
        sub_275E22260((a1 + 8));
      }

      v15 = google::protobuf::internal::UnknownFieldParse();
      if (!v15)
      {
        return 0;
      }
    }
  }

  return v15;
}

unsigned __int8 *sub_275E10D94(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v4 = *(a1 + 24);
    *a2 = 8;
    if (v4 > 0x7F)
    {
      a2[1] = v4 | 0x80;
      v5 = v4 >> 7;
      if (v4 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v5 | 0x80;
          v6 = v5 >> 7;
          ++a2;
          v7 = v5 >> 14;
          v5 >>= 7;
        }

        while (v7);
        *(a2 - 1) = v6;
      }

      else
      {
        a2[2] = v5;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
    }
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E10E74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
  }

  if (*(a1 + 8))
  {
    return MEMORY[0x2821EADD8](a1 + 8, v1, a1 + 20);
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_275E10ED4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8108, 0);
  if (v4)
  {

    return sub_275E0F960(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

_BYTE *sub_275E10F7C(_BYTE *result, _BYTE *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = result[8];
    v5 = result + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_275E224D0(v5);
    }

    return sub_275E10ED4(v4, lpsrc);
  }

  return result;
}

uint64_t sub_275E1101C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D70C8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA4E0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 1;
  return a1;
}

uint64_t sub_275E11094(uint64_t a1)
{
  if (a1 != &unk_2812EBA50)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C8F960]();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968((a1 + 8));
  return a1;
}

void sub_275E11130(uint64_t a1)
{
  sub_275E11094(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275E11170(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v27) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_59;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v19 = *(a1 + 24);
            if (!v19)
            {
              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = MEMORY[0x277C8F050](v22);
              LODWORD(v19) = v23;
              *(a1 + 24) = v23;
LABEL_41:
              v7 = v27;
            }

LABEL_42:
            v14 = sub_275E5B9DC(a3, v19, v7);
            goto LABEL_50;
          }
        }

        else if (v10 == 2 && v8 == 16)
        {
          v17 = (v7 + 1);
          v16 = *v7;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            v27 = google::protobuf::internal::VarintParseSlow64(v7, v16);
            if (!v27)
            {
LABEL_59:
              v27 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v17 = (v7 + 2);
LABEL_26:
            v27 = v17;
          }

          if (v16 > 6)
          {
            sub_275E5F6FC();
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 56) = v16;
          }

          goto LABEL_51;
        }
      }

      else if (v10 == 3)
      {
        if (v8 == 25)
        {
          v5 |= 8u;
          *(a1 + 48) = *v7;
          v27 = (v7 + 8);
          goto LABEL_51;
        }
      }

      else if (v10 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 2u;
          v19 = *(a1 + 32);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277C8F050](v20);
            LODWORD(v19) = v21;
            *(a1 + 32) = v21;
            goto LABEL_41;
          }

          goto LABEL_42;
        }
      }

      else if (v10 == 5 && v8 == 42)
      {
        *(a1 + 16) |= 4u;
        v11 = *(a1 + 40);
        if (!v11)
        {
          v12 = *(a1 + 8);
          if (v12)
          {
            v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C8F000](v12);
          LODWORD(v11) = v13;
          *(a1 + 40) = v13;
          v7 = v27;
        }

        v14 = sub_275E5BB7C(a3, v11, v7);
        goto LABEL_50;
      }

      if (v8)
      {
        v24 = (v8 & 7) == 4;
      }

      else
      {
        v24 = 1;
      }

      if (v24)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_50:
      v27 = v14;
      if (!v14)
      {
        goto LABEL_59;
      }

LABEL_51:
      if (sub_275E221E8(a3, &v27))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *sub_275E11438(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 56);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
        if ((v5 & 8) != 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_28;
      }
    }

LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

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
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  if ((v5 & 8) == 0)
  {
    goto LABEL_4;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(a1 + 48);
  *a2 = 25;
  *(a2 + 1) = v16;
  a2 += 9;
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_41;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(a1 + 32);
  *a2 = 34;
  v18 = *(v17 + 5);
  if (v18 > 0x7F)
  {
    a2[1] = v18 | 0x80;
    v20 = v18 >> 7;
    if (v18 >> 14)
    {
      v19 = a2 + 3;
      do
      {
        *(v19 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++v19;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(v19 - 1) = v21;
    }

    else
    {
      a2[2] = v20;
      v19 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v18;
    v19 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v17, v19, a3);
  if ((v5 & 4) != 0)
  {
LABEL_41:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(a1 + 40);
    *a2 = 42;
    v24 = *(v23 + 5);
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

    a2 = TSP::UUID::_InternalSerialize(v23, v25, a3);
  }

LABEL_51:
  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E11730(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x1F) == 0)
  {
    v4 = 0;
    goto LABEL_18;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSP::Reference::ByteSizeLong(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSP::UUID::ByteSizeLong(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 8) != 0)
  {
    v4 = v3 + 9;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v8 = *(a1 + 56);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    v4 += v10;
  }

LABEL_18:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275E1187C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8120, 0);
  if (v4)
  {

    return sub_275E0F9B8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275E11924(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E0ED54(result);

    return sub_275E1187C(v4, a2);
  }

  return result;
}

uint64_t sub_275E119AC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D7178;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812EA508, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_275E11A3C(uint64_t a1)
{
  sub_275DE4968((a1 + 8));
  sub_275E23D20((a1 + 24));
  return a1;
}

void sub_275E11A7C(uint64_t a1)
{
  sub_275E11A3C(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275E11ABC()
{
  if (atomic_load_explicit(dword_2812EA508, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EBA90;
}

uint64_t *sub_275E11AFC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_275E1237C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 40) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_275E224D0(v5);
  }

  return result;
}

google::protobuf::internal *sub_275E11B80(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v27) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 != 1 || v8 != 10)
        {
LABEL_12:
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
            sub_275E22260((a1 + 8));
          }

          v27 = google::protobuf::internal::UnknownFieldParse();
          if (!v27)
          {
LABEL_44:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_25;
        }

        v15 = (v7 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v27 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_30;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v17 = v18 + 1;
            v19 = sub_275E21188(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v27;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_275E5DC30(a3, v19, v16);
          v27 = v15;
          if (!v15)
          {
            goto LABEL_44;
          }

          if (*a3 <= v15 || *v15 != 10)
          {
            goto LABEL_25;
          }

          continue;
        }
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v13 = (v7 + 1);
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_24:
        v27 = v13;
        *(a1 + 48) = v12 != 0;
        v5 = 1;
        goto LABEL_25;
      }

      v25 = google::protobuf::internal::VarintParseSlow64(v7, v12);
      v27 = v25;
      *(a1 + 48) = v26 != 0;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_25:
      if (sub_275E221E8(a3, &v27))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *sub_275E11DE8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 20);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = sub_275E125EC(v7, v9, a3);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 48);
    *a2 = 16;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E11F44(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_275E127BC(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = 2 * (*(a1 + 16) & 1);
  v9 = v2 + v8;
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v9, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v9;
    return v2 + v8;
  }
}

uint64_t sub_275E12004(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8138, 0);
  if (v4)
  {

    return sub_275E120AC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E120AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E23DA4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    *(v3 + 48) = v10;
  }

  return result;
}

uint64_t *sub_275E12168(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E11AFC(result);

    return sub_275E12004(v4, a2);
  }

  return result;
}

BOOL sub_275E121B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    v5 = sub_275E12AA4(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((v5 & 1) != 0);
  return v3 < 1;
}

void *sub_275E12248(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D7228;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EA2F8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0xBFF0000000000000;
  return a1;
}

void *sub_275E122B8(void *a1)
{
  if (a1 != qword_2812EBAC8)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::DataReference::~DataReference(v3);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E1233C(void *a1)
{
  sub_275E122B8(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E1237C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::DataReference::Clear(v1[4]);
    }

    v1[5] = 0xBFF0000000000000;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275E123F4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v22) & 1) == 0)
  {
    while (1)
    {
      v7 = (v22 + 1);
      v8 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
LABEL_39:
        v22 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 2u;
          v14 = *(a1 + 32);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C8EFD0](v15);
            LODWORD(v14) = v16;
            *(a1 + 32) = v16;
            v7 = v22;
          }

          v13 = sub_275E5C6DC(a3, v14, v7);
          goto LABEL_33;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 17)
        {
          v5 |= 4u;
          *(a1 + 40) = *v7;
          v22 = (v7 + 8);
          goto LABEL_34;
        }
      }

      else if (v10 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v17 = *(a1 + 24);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x277C8F050](v18);
          LODWORD(v17) = v19;
          *(a1 + 24) = v19;
          v7 = v22;
        }

        v13 = sub_275E5B9DC(a3, v17, v7);
        goto LABEL_33;
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
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_33:
      v22 = v13;
      if (!v13)
      {
        goto LABEL_39;
      }

LABEL_34:
      if (sub_275E221E8(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *sub_275E125EC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 40);
  *a2 = 17;
  *(a2 + 1) = v12;
  a2 += 9;
  if ((v5 & 2) != 0)
  {
LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 32);
    *a2 = 26;
    v14 = *(v13 + 5);
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

    a2 = TSP::DataReference::_InternalSerialize(v13, v15, a3);
  }

LABEL_28:
  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E127BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v4 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v6 = TSP::DataReference::ByteSizeLong(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v4 = v3 + 9;
  }

  else
  {
    v4 = v3;
  }

LABEL_11:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275E128A4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8150, 0);
  if (v4)
  {

    return sub_275E1294C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E1294C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
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

        v6 = MEMORY[0x277C8F050](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return result;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 40);
        goto LABEL_8;
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

      v9 = MEMORY[0x277C8EFD0](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = MEMORY[0x277D80A30];
    }

    result = TSP::DataReference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t *sub_275E12A58(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E1237C(result);

    return sub_275E128A4(v4, a2);
  }

  return result;
}

uint64_t sub_275E12AA4(uint64_t a1)
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

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::DataReference::IsInitialized(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E12B2C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D72D8;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812EA7B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 56) = 0;
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_275E12BC0(uint64_t a1)
{
  sub_275DE4968((a1 + 8));
  sub_275E22E74((a1 + 24));
  return a1;
}

void sub_275E12C00(uint64_t a1)
{
  sub_275E12BC0(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275E12C40()
{
  if (atomic_load_explicit(dword_2812EA7B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EBAF8;
}

uint64_t *sub_275E12C80(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::DataReference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if ((v1[2] & 3) != 0)
  {
    *(v1 + 14) = 0;
    v1[6] = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_275E224D0(v5);
  }

  return result;
}

google::protobuf::internal *sub_275E12D14(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v27) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        v16 = v7 - 1;
        while (2)
        {
          v17 = (v16 + 1);
          v27 = (v16 + 1);
          v18 = *(a1 + 40);
          if (!v18)
          {
LABEL_31:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v18 = *(a1 + 40);
            v19 = *v18;
            goto LABEL_32;
          }

          v24 = *(a1 + 32);
          v19 = *v18;
          if (v24 >= *v18)
          {
            if (v19 == *(a1 + 36))
            {
              goto LABEL_31;
            }

LABEL_32:
            *v18 = v19 + 1;
            v20 = MEMORY[0x277C8EFD0](*(a1 + 24));
            LODWORD(v21) = v20;
            v22 = *(a1 + 32);
            v23 = *(a1 + 40) + 8 * v22;
            *(a1 + 32) = v22 + 1;
            *(v23 + 8) = v20;
            v17 = v27;
          }

          else
          {
            *(a1 + 32) = v24 + 1;
            v21 = *&v18[2 * v24 + 2];
          }

          v16 = sub_275E5C6DC(a3, v21, v17);
          v27 = v16;
          if (!v16)
          {
            goto LABEL_50;
          }

          if (*a3 <= v16 || *v16 != 26)
          {
            goto LABEL_42;
          }

          continue;
        }
      }

      if (v10 == 2)
      {
        if (v8 == 16)
        {
          v14 = (v7 + 1);
          v13 = *v7;
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v27 = google::protobuf::internal::VarintParseSlow64(v7, v13);
            if (!v27)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v14 = (v7 + 2);
LABEL_25:
            v27 = v14;
          }

          if (v13 > 2)
          {
            sub_275E5F6FC();
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 56) = v13;
          }

          goto LABEL_42;
        }
      }

      else if (v10 == 1 && v8 == 9)
      {
        *(a1 + 48) = *v7;
        v27 = (v7 + 8);
        v5 = 1;
        goto LABEL_42;
      }

LABEL_13:
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
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v27 = google::protobuf::internal::UnknownFieldParse();
      if (!v27)
      {
LABEL_50:
        v27 = 0;
        goto LABEL_2;
      }

LABEL_42:
      if (sub_275E221E8(a3, &v27))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unint64_t sub_275E12FA8(uint64_t a1, unint64_t a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 56);
    *a2 = 16;
    if (v7 > 0x7F)
    {
      *(a2 + 1) = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
      }

      else
      {
        *(a2 + 2) = v8;
        a2 += 3;
      }
    }

    else
    {
      *(a2 + 1) = v7;
      a2 += 2;
    }
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 26;
      v14 = *(v13 + 5);
      if (v14 > 0x7F)
      {
        *(a2 + 1) = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = (a2 + 3);
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
          *(a2 + 2) = v16;
          v15 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v14;
        v15 = (a2 + 2);
      }

      a2 = TSP::DataReference::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E13188(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::DataReference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 16);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v2 += 9;
    }

    if ((v8 & 2) != 0)
    {
      v9 = *(a1 + 56);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v10;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275E1328C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8168, 0);
  if (v4)
  {

    return sub_275E13334(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E13334(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E23144(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 48) = *(a2 + 48);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 56);
    }

    *(v3 + 16) |= v10;
  }

  return result;
}

uint64_t *sub_275E13404(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E12C80(result);

    return sub_275E1328C(v4, a2);
  }

  return result;
}

BOOL sub_275E13450(uint64_t a1)
{
  v2 = *(a1 + 32);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::DataReference::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

uint64_t *sub_275E134E4(uint64_t *a1)
{
  if (a1 != &qword_2812EBB38 && a1[3])
  {
    v2 = MEMORY[0x277C8ED30]();
    MEMORY[0x277C8F960](v2, 0x1081C4085BC40B3);
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E13548(uint64_t *a1)
{
  sub_275E134E4(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E13588()
{
  if (atomic_load_explicit(dword_2812EA728, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EBB38;
}

uint64_t *sub_275E135C8(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSWP::TextualAttachmentArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275E13624(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_275E221E8(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
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

        v12 = MEMORY[0x277C8F0E0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_275E5DD00(a3, v10, v5);
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
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_275E1376C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 5);
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

    a2 = TSWP::TextualAttachmentArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E1385C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSWP::TextualAttachmentArchive::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275E138E8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8180, 0);
  if (v4)
  {

    return sub_275E13990(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E13990(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277C8F0E0](v5);
    }

    return MEMORY[0x2821EBA60]();
  }

  return result;
}

uint64_t *sub_275E13A38(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E135C8(result);

    return sub_275E138E8(v4, a2);
  }

  return result;
}

void *sub_275E13ACC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_2884D7438;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_275E22484(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    operator new();
  }

  a1[3] = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  a1[4] = 0;
  return a1;
}

uint64_t *sub_275E13BD0(uint64_t *a1)
{
  if (a1 != &qword_2812EBB58)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    if (a1[4])
    {
      v3 = MEMORY[0x277C8EA80]();
      MEMORY[0x277C8F960](v3, 0x10A1C40290C9B23);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E13C54(uint64_t *a1)
{
  sub_275E13BD0(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E13C94(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::IndexSet::Clear(v1[4]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275E13D04(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_275E221E8(a3, &v20) & 1) == 0)
  {
    v5 = (v20 + 1);
    v6 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v20 + 2);
LABEL_6:
      v20 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v18;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 2u;
      v11 = *(a1 + 32);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C8F040](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v20;
      }

      v10 = sub_275E5CC8C(a3, v11, v5);
    }

    else
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
LABEL_12:
        if (v6)
        {
          v9 = (v6 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v6 - 1;
          return v20;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C8F050](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_275E5B9DC(a3, v14, v5);
    }

LABEL_30:
    v20 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *sub_275E13EB0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
    *a2 = 18;
    v13 = *(v12 + 10);
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

    a2 = TSP::IndexSet::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E14040(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSP::Reference::ByteSizeLong(*(a1 + 24));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::IndexSet::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_275E140D4(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v4 = sub_275E14040(a1);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v3 = TSP::IndexSet::ByteSizeLong(*(a1 + 32));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_275E141A8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8198, 0);
  if (v4)
  {

    return sub_275E14250(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E14250(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C8F050](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x277C8F040](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = MEMORY[0x277D80A08];
      }

      return MEMORY[0x2821EAA90](v9, v11);
    }
  }

  return result;
}

uint64_t *sub_275E14354(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E13C94(result);

    return sub_275E141A8(v4, a2);
  }

  return result;
}

uint64_t sub_275E143A0(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 24));
  if (result)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::IndexSet::IsInitialized(*(a1 + 32));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_275E1443C(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D74E8;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = a2;
  a1[6] = a2;
  a1[4] = 0;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  if (atomic_load_explicit(dword_2812EA670, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[9] = 0;
  a1[10] = 0;
  return a1;
}

void sub_275E144C4(_Unwind_Exception *a1)
{
  sub_275E23E64(v2);
  sub_275E22664(v1);
  _Unwind_Resume(a1);
}

void *sub_275E144EC(void *a1)
{
  if (a1 != qword_2812EBB80)
  {
    v2 = a1[9];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = a1[10];
    if (v3)
    {
      TSP::Range::~Range(v3);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  sub_275E23E64(a1 + 6);
  sub_275E22664(a1 + 3);
  return a1;
}

void sub_275E14588(void *a1)
{
  sub_275E144EC(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E145C8(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
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
      result = sub_275E13C94(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      result = TSP::Reference::Clear(v1[9]);
    }

    if ((v8 & 2) != 0)
    {
      result = TSP::Range::Clear(v1[10]);
    }
  }

  v10 = *(v1 + 8);
  v9 = v1 + 1;
  *(v9 + 2) = 0;
  if (v10)
  {

    return sub_275E224D0(v9);
  }

  return result;
}

google::protobuf::internal *sub_275E14694(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275E221E8(a3, &v38))
    {
      return v38;
    }

    v5 = (v38 + 1);
    v6 = *v38;
    if ((*v38 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v38 + 2);
LABEL_6:
      v38 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v7 - 128));
    v38 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v36;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 != 3)
      {
        if (v8 == 4 && v6 == 34)
        {
          *(a1 + 16) |= 2u;
          v14 = *(a1 + 80);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C8F030](v15);
            LODWORD(v14) = v16;
            *(a1 + 80) = v16;
            v5 = v38;
          }

          v13 = sub_275E5D410(a3, v14, v5);
          goto LABEL_60;
        }

        goto LABEL_53;
      }

      if (v6 != 26)
      {
        goto LABEL_53;
      }

      v26 = (v5 - 1);
      while (1)
      {
        v27 = (v26 + 1);
        v38 = (v26 + 1);
        v28 = *(a1 + 64);
        if (!v28)
        {
          goto LABEL_43;
        }

        v33 = *(a1 + 56);
        v29 = *v28;
        if (v33 < *v28)
        {
          *(a1 + 56) = v33 + 1;
          v30 = *&v28[2 * v33 + 2];
          goto LABEL_47;
        }

        if (v29 == *(a1 + 60))
        {
LABEL_43:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v28 = *(a1 + 64);
          v29 = *v28;
        }

        *v28 = v29 + 1;
        v30 = sub_275E2136C(*(a1 + 48));
        v31 = *(a1 + 56);
        v32 = *(a1 + 64) + 8 * v31;
        *(a1 + 56) = v31 + 1;
        *(v32 + 8) = v30;
        v27 = v38;
LABEL_47:
        v26 = sub_275E5DDD0(a3, v30, v27);
        v38 = v26;
        if (!v26)
        {
          return 0;
        }

        if (*a3 <= v26 || *v26 != 26)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_53;
      }

      v17 = v5 - 1;
      while (1)
      {
        v18 = (v17 + 1);
        v38 = (v17 + 1);
        v19 = *(a1 + 40);
        if (!v19)
        {
          goto LABEL_30;
        }

        v25 = *(a1 + 32);
        v20 = *v19;
        if (v25 < *v19)
        {
          *(a1 + 32) = v25 + 1;
          v22 = *&v19[2 * v25 + 2];
          goto LABEL_34;
        }

        if (v20 == *(a1 + 36))
        {
LABEL_30:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v19 = *(a1 + 40);
          v20 = *v19;
        }

        *v19 = v20 + 1;
        v21 = MEMORY[0x277C8F050](*(a1 + 24));
        LODWORD(v22) = v21;
        v23 = *(a1 + 32);
        v24 = *(a1 + 40) + 8 * v23;
        *(a1 + 32) = v23 + 1;
        *(v24 + 8) = v21;
        v18 = v38;
LABEL_34:
        v17 = sub_275E5B9DC(a3, v22, v18);
        v38 = v17;
        if (!v17)
        {
          return 0;
        }

        if (*a3 <= v17 || *v17 != 10)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 2 && v6 == 18)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 72);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C8F050](v11);
        LODWORD(v10) = v12;
        *(a1 + 72) = v12;
        v5 = v38;
      }

      v13 = sub_275E5B9DC(a3, v10, v5);
      goto LABEL_60;
    }

LABEL_53:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_60:
    v38 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v38;
}

unsigned __int8 *sub_275E149E8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(a1 + 72);
    *a2 = 18;
    v15 = *(v14 + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v14, v16, a3);
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    for (j = 0; j != v20; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v22 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 26;
      v23 = *(v22 + 20);
      if (v23 > 0x7F)
      {
        a2[1] = v23 | 0x80;
        v25 = v23 >> 7;
        if (v23 >> 14)
        {
          v24 = a2 + 3;
          do
          {
            *(v24 - 1) = v25 | 0x80;
            v26 = v25 >> 7;
            ++v24;
            v27 = v25 >> 14;
            v25 >>= 7;
          }

          while (v27);
          *(v24 - 1) = v26;
        }

        else
        {
          a2[2] = v25;
          v24 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v23;
        v24 = a2 + 2;
      }

      a2 = sub_275E13EB0(v22, v24, a3);
    }
  }

  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v28 = *(a1 + 80);
    *a2 = 34;
    v29 = *(v28 + 5);
    if (v29 > 0x7F)
    {
      a2[1] = v29 | 0x80;
      v31 = v29 >> 7;
      if (v29 >> 14)
      {
        v30 = a2 + 3;
        do
        {
          *(v30 - 1) = v31 | 0x80;
          v32 = v31 >> 7;
          ++v30;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
        *(v30 - 1) = v32;
      }

      else
      {
        a2[2] = v31;
        v30 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v29;
      v30 = a2 + 2;
    }

    a2 = TSP::Range::_InternalSerialize(v28, v30, a3);
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v34 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E14CEC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 56);
  v9 = v2 + v8;
  v10 = *(a1 + 64);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = sub_275E140D4(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 16);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      v16 = TSP::Reference::ByteSizeLong(*(a1 + 72));
      v9 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v15 & 2) != 0)
    {
      v17 = TSP::Range::ByteSizeLong(*(a1 + 80));
      v9 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v9, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v9;
    return v9;
  }
}

uint64_t sub_275E14E60(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D81B0, 0);
  if (v4)
  {

    return sub_275E14F08(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E14F08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275E226E8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275E23EE8(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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

        v16 = MEMORY[0x277C8F050](v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v16, v18);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v19 = *(v3 + 80);
      if (!v19)
      {
        v20 = *(v3 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277C8F030](v20);
        *(v3 + 80) = v19;
      }

      if (*(a2 + 80))
      {
        v21 = *(a2 + 80);
      }

      else
      {
        v21 = MEMORY[0x277D809F8];
      }

      return MEMORY[0x2821EAA40](v19, v21);
    }
  }

  return result;
}

uint64_t *sub_275E150C4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E145C8(result);

    return sub_275E14E60(v4, a2);
  }

  return result;
}

uint64_t sub_275E15110(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 56);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = sub_275E143A0(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Range::IsInitialized(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_275E151EC(uint64_t *a1)
{
  if (a1 != &qword_2812EBBD8)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E15250(uint64_t *a1)
{
  sub_275E151EC(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E15290(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSP::Reference::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275E152EC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_275E221E8(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
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

        v12 = MEMORY[0x277C8F050](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_275E5B9DC(a3, v10, v5);
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
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *sub_275E15434(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 10;
    v6 = *(v5 + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E15524(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_275E155B0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D81C8, 0);
  if (v4)
  {

    return sub_275DEEEF0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275E15658(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E15290(result);

    return sub_275E155B0(v4, a2);
  }

  return result;
}

uint64_t sub_275E156A4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E15710(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D7648;
  *(a1 + 8) = a2;
  *(a1 + 20) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 80) = a2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (atomic_load_explicit(dword_2812EA250, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

void sub_275E157D0(_Unwind_Exception *a1)
{
  sub_275E2402C(v6);
  sub_275E240B0(v5);
  sub_275E2402C(v4);
  sub_275E23FA8(v3);
  sub_275E5F85C(v1, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_275E15818(uint64_t a1)
{
  sub_275DE4968((a1 + 8));
  sub_275E2402C((a1 + 104));
  sub_275E240B0((a1 + 80));
  sub_275E2402C((a1 + 56));
  sub_275E23FA8((a1 + 32));
  if (*(a1 + 20) >= 1)
  {
    v2 = *(a1 + 24);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void sub_275E15898(uint64_t a1)
{
  sub_275E15818(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E158D8(uint64_t *result)
{
  v1 = result;
  *(result + 4) = 0;
  v2 = *(result + 10);
  if (v2 >= 1)
  {
    v3 = (result[6] + 8);
    do
    {
      v4 = *v3++;
      result = TSCK::AddIdOperationArgs::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 10) = 0;
  }

  v5 = *(v1 + 16);
  if (v5 >= 1)
  {
    v6 = (v1[9] + 8);
    do
    {
      v7 = *v6++;
      result = TSCK::IdPlacementOperationArgs::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 16) = 0;
  }

  v8 = *(v1 + 22);
  if (v8 >= 1)
  {
    v9 = (v1[12] + 8);
    do
    {
      v10 = *v9++;
      result = TSCK::RemoveIdOperationArgs::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 22) = 0;
  }

  v11 = *(v1 + 28);
  if (v11 >= 1)
  {
    v12 = (v1[15] + 8);
    do
    {
      v13 = *v12++;
      result = TSCK::IdPlacementOperationArgs::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 28) = 0;
  }

  v15 = *(v1 + 8);
  v14 = v1 + 1;
  if (v15)
  {

    return sub_275E224D0(v14);
  }

  return result;
}

google::protobuf::internal *sub_275E159D0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v60 = a2;
  if ((sub_275E221E8(a3, &v60) & 1) == 0)
  {
    while (1)
    {
      v6 = (v60 + 1);
      v7 = *v60;
      if ((*v60 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = *v6;
      v9 = v7 + (v8 << 7);
      v7 = v9 - 128;
      if ((v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v60, (v9 - 128));
      v60 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v57;
LABEL_7:
      v10 = v7 >> 3;
      if (v7 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 != 2 || v7 != 18)
          {
            goto LABEL_89;
          }

          v21 = v6 - 1;
          while (2)
          {
            v22 = (v21 + 1);
            v60 = (v21 + 1);
            v23 = *(a1 + 48);
            if (!v23)
            {
LABEL_32:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 32));
              v23 = *(a1 + 48);
              v24 = *v23;
              goto LABEL_33;
            }

            v29 = *(a1 + 40);
            v24 = *v23;
            if (v29 >= *v23)
            {
              if (v24 == *(a1 + 44))
              {
                goto LABEL_32;
              }

LABEL_33:
              *v23 = v24 + 1;
              v25 = MEMORY[0x277C8F0A0](*(a1 + 32));
              LODWORD(v26) = v25;
              v27 = *(a1 + 40);
              v28 = *(a1 + 48) + 8 * v27;
              *(a1 + 40) = v27 + 1;
              *(v28 + 8) = v25;
              v22 = v60;
            }

            else
            {
              *(a1 + 40) = v29 + 1;
              v26 = *&v23[2 * v29 + 2];
            }

            v21 = sub_275E5DEA0(a3, v26, v22);
            v60 = v21;
            if (!v21)
            {
              return 0;
            }

            if (*a3 <= v21 || *v21 != 18)
            {
              goto LABEL_97;
            }

            continue;
          }
        }

        if (v7 != 8)
        {
          if (v7 == 10)
          {
            *&v61 = a1 + 16;
            *(&v61 + 1) = sub_275DE448C;
            v62 = a1 + 8;
            v63 = 1;
            v58 = sub_275E24134(a3, v6, &v61);
            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v48 = (v6 - 1);
        while (2)
        {
          v60 = (v48 + 1);
          v49 = *(v48 + 1);
          v50 = (v48 + 2);
          if (v49 < 0)
          {
            v51 = *v50;
            v52 = (v51 << 7) + v49;
            LODWORD(v49) = v52 - 128;
            if ((v51 & 0x80000000) == 0)
            {
              v50 = (v48 + 3);
              goto LABEL_73;
            }

            v60 = google::protobuf::internal::VarintParseSlow64((v48 + 1), (v52 - 128));
            if (!v60)
            {
              return 0;
            }

            LODWORD(v49) = v55;
          }

          else
          {
LABEL_73:
            v60 = v50;
          }

          if (v49 > 3)
          {
            sub_275E5F76C();
          }

          else
          {
            v53 = *(a1 + 16);
            if (v53 == *(a1 + 20))
            {
              v54 = v53 + 1;
              sub_275D98CF0((a1 + 16), v53 + 1);
              *(*(a1 + 24) + 4 * v53) = v49;
            }

            else
            {
              *(*(a1 + 24) + 4 * v53) = v49;
              v54 = v53 + 1;
            }

            *(a1 + 16) = v54;
          }

          v48 = v60;
          if (*a3 <= v60 || *v60 != 8)
          {
            goto LABEL_97;
          }

          continue;
        }
      }

      if (v10 == 3)
      {
        if (v7 != 26)
        {
          goto LABEL_89;
        }

        v30 = v6 - 1;
        while (2)
        {
          v31 = (v30 + 1);
          v60 = (v30 + 1);
          v32 = *(a1 + 72);
          if (!v32)
          {
LABEL_45:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 56));
            v32 = *(a1 + 72);
            v33 = *v32;
            goto LABEL_46;
          }

          v38 = *(a1 + 64);
          v33 = *v32;
          if (v38 >= *v32)
          {
            if (v33 == *(a1 + 68))
            {
              goto LABEL_45;
            }

LABEL_46:
            *v32 = v33 + 1;
            v34 = MEMORY[0x277C8F0C0](*(a1 + 56));
            LODWORD(v35) = v34;
            v36 = *(a1 + 64);
            v37 = *(a1 + 72) + 8 * v36;
            *(a1 + 64) = v36 + 1;
            *(v37 + 8) = v34;
            v31 = v60;
          }

          else
          {
            *(a1 + 64) = v38 + 1;
            v35 = *&v32[2 * v38 + 2];
          }

          v30 = sub_275E5DF70(a3, v35, v31);
          v60 = v30;
          if (!v30)
          {
            return 0;
          }

          if (*a3 <= v30 || *v30 != 26)
          {
            goto LABEL_97;
          }

          continue;
        }
      }

      if (v10 != 4)
      {
        if (v10 == 5 && v7 == 42)
        {
          v11 = v6 - 1;
          while (1)
          {
            v12 = (v11 + 1);
            v60 = (v11 + 1);
            v13 = *(a1 + 120);
            if (!v13)
            {
              goto LABEL_14;
            }

            v19 = *(a1 + 112);
            v14 = *v13;
            if (v19 < *v13)
            {
              *(a1 + 112) = v19 + 1;
              v16 = *&v13[2 * v19 + 2];
              goto LABEL_18;
            }

            if (v14 == *(a1 + 116))
            {
LABEL_14:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 104));
              v13 = *(a1 + 120);
              v14 = *v13;
            }

            *v13 = v14 + 1;
            v15 = MEMORY[0x277C8F0C0](*(a1 + 104));
            LODWORD(v16) = v15;
            v17 = *(a1 + 112);
            v18 = *(a1 + 120) + 8 * v17;
            *(a1 + 112) = v17 + 1;
            *(v18 + 8) = v15;
            v12 = v60;
LABEL_18:
            v11 = sub_275E5DF70(a3, v16, v12);
            v60 = v11;
            if (!v11)
            {
              return 0;
            }

            if (*a3 <= v11 || *v11 != 42)
            {
              goto LABEL_97;
            }
          }
        }

        goto LABEL_89;
      }

      if (v7 == 34)
      {
        v39 = v6 - 1;
        while (1)
        {
          v40 = (v39 + 1);
          v60 = (v39 + 1);
          v41 = *(a1 + 96);
          if (!v41)
          {
            goto LABEL_58;
          }

          v47 = *(a1 + 88);
          v42 = *v41;
          if (v47 < *v41)
          {
            *(a1 + 88) = v47 + 1;
            v44 = *&v41[2 * v47 + 2];
            goto LABEL_62;
          }

          if (v42 == *(a1 + 92))
          {
LABEL_58:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 80));
            v41 = *(a1 + 96);
            v42 = *v41;
          }

          *v41 = v42 + 1;
          v43 = MEMORY[0x277C8F0B0](*(a1 + 80));
          LODWORD(v44) = v43;
          v45 = *(a1 + 88);
          v46 = *(a1 + 96) + 8 * v45;
          *(a1 + 88) = v45 + 1;
          *(v46 + 8) = v43;
          v40 = v60;
LABEL_62:
          v39 = sub_275E5E040(a3, v44, v40);
          v60 = v39;
          if (!v39)
          {
            return 0;
          }

          if (*a3 <= v39 || *v39 != 34)
          {
            goto LABEL_97;
          }
        }
      }

LABEL_89:
      if (v7)
      {
        v59 = (v7 & 7) == 4;
      }

      else
      {
        v59 = 1;
      }

      if (v59)
      {
        *(a3 + 80) = v7 - 1;
        return v60;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v58 = google::protobuf::internal::UnknownFieldParse();
LABEL_96:
      v60 = v58;
      if (!v58)
      {
        return 0;
      }

LABEL_97:
      if (sub_275E221E8(a3, &v60))
      {
        return v60;
      }
    }

    v6 = (v60 + 2);
LABEL_6:
    v60 = v6;
    goto LABEL_7;
  }

  return v60;
}

unsigned __int8 *sub_275E15F50(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(a1 + 24) + 4 * i);
      *a2 = 8;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v8 = v7 >> 7;
        if (v7 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v8 | 0x80;
            v9 = v8 >> 7;
            ++a2;
            v10 = v8 >> 14;
            v8 >>= 7;
          }

          while (v10);
          *(a2 - 1) = v9;
        }

        else
        {
          a2[2] = v8;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v7;
        a2 += 2;
      }
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(a1 + 48) + 8 * j + 8);
      *a2 = 18;
      v14 = *(v13 + 5);
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

      a2 = TSCK::AddIdOperationArgs::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(a1 + 64);
  if (v19)
  {
    for (k = 0; k != v19; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(a1 + 72) + 8 * k + 8);
      *a2 = 26;
      v22 = *(v21 + 5);
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

      a2 = TSCK::IdPlacementOperationArgs::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(a1 + 88);
  if (v27)
  {
    for (m = 0; m != v27; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v29 = *(*(a1 + 96) + 8 * m + 8);
      *a2 = 34;
      v30 = *(v29 + 5);
      if (v30 > 0x7F)
      {
        a2[1] = v30 | 0x80;
        v32 = v30 >> 7;
        if (v30 >> 14)
        {
          v31 = a2 + 3;
          do
          {
            *(v31 - 1) = v32 | 0x80;
            v33 = v32 >> 7;
            ++v31;
            v34 = v32 >> 14;
            v32 >>= 7;
          }

          while (v34);
          *(v31 - 1) = v33;
        }

        else
        {
          a2[2] = v32;
          v31 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v30;
        v31 = a2 + 2;
      }

      a2 = TSCK::RemoveIdOperationArgs::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(a1 + 112);
  if (v35)
  {
    for (n = 0; n != v35; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v37 = *(*(a1 + 120) + 8 * n + 8);
      *a2 = 42;
      v38 = *(v37 + 5);
      if (v38 > 0x7F)
      {
        a2[1] = v38 | 0x80;
        v40 = v38 >> 7;
        if (v38 >> 14)
        {
          v39 = a2 + 3;
          do
          {
            *(v39 - 1) = v40 | 0x80;
            v41 = v40 >> 7;
            ++v39;
            v42 = v40 >> 14;
            v40 >>= 7;
          }

          while (v42);
          *(v39 - 1) = v41;
        }

        else
        {
          a2[2] = v40;
          v39 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v38;
        v39 = a2 + 2;
      }

      a2 = TSCK::IdPlacementOperationArgs::_InternalSerialize(v37, v39, a3);
    }
  }

  v43 = *(a1 + 8);
  if ((v43 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v43 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E16334(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(a1 + 24) + 4 * v4);
      if (v5 < 0)
      {
        v6 = 10;
      }

      else
      {
        v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
      }

      v3 += v6;
      ++v4;
    }

    while (v2 != v4);
  }

  else
  {
    v3 = 0;
  }

  v7 = v3 + v2;
  v8 = *(a1 + 40);
  v9 = v7 + v8;
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSCK::AddIdOperationArgs::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 64);
  v16 = v9 + v15;
  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = TSCK::IdPlacementOperationArgs::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 88);
  v23 = v16 + v22;
  v24 = *(a1 + 96);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = TSCK::RemoveIdOperationArgs::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 112);
  v30 = v23 + v29;
  v31 = *(a1 + 120);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = TSCK::IdPlacementOperationArgs::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v30, a1 + 128);
  }

  else
  {
    *(a1 + 128) = v30;
    return v30;
  }
}

uint64_t sub_275E16530(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D81E0, 0);
  if (v4)
  {

    return sub_275E165D8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E165D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(v3 + 16);
    sub_275D98CF0((v3 + 16), v6 + v5);
    v7 = *(v3 + 24);
    *(v3 + 16) += *(a2 + 16);
    result = memcpy((v7 + 4 * v6), *(a2 + 24), 4 * *(a2 + 16));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(a2 + 48);
    v10 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 32));
    result = sub_275E243B8(v3 + 32, v10, (v9 + 8), v8, **(v3 + 48) - *(v3 + 40));
    v11 = *(v3 + 40) + v8;
    *(v3 + 40) = v11;
    v12 = *(v3 + 48);
    if (*v12 < v11)
    {
      *v12 = v11;
    }
  }

  v13 = *(a2 + 64);
  if (v13)
  {
    v14 = *(a2 + 72);
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 56));
    result = sub_275E24478(v3 + 56, v15, (v14 + 8), v13, **(v3 + 72) - *(v3 + 64));
    v16 = *(v3 + 64) + v13;
    *(v3 + 64) = v16;
    v17 = *(v3 + 72);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 88);
  if (v18)
  {
    v19 = *(a2 + 96);
    v20 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 80));
    result = sub_275E24538(v3 + 80, v20, (v19 + 8), v18, **(v3 + 96) - *(v3 + 88));
    v21 = *(v3 + 88) + v18;
    *(v3 + 88) = v21;
    v22 = *(v3 + 96);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 112);
  if (v23)
  {
    v24 = *(a2 + 120);
    v25 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 104));
    result = sub_275E24478(v3 + 104, v25, (v24 + 8), v23, **(v3 + 120) - *(v3 + 112));
    v26 = *(v3 + 112) + v23;
    *(v3 + 112) = v26;
    v27 = *(v3 + 120);
    if (*v27 < v26)
    {
      *v27 = v26;
    }
  }

  return result;
}

uint64_t *sub_275E167D0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E158D8(result);

    return sub_275E16530(v4, a2);
  }

  return result;
}

BOOL sub_275E1681C(uint64_t a1)
{
  v2 = *(a1 + 40);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCK::AddIdOperationArgs::IsInitialized(*(*(a1 + 48) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(a1 + 64);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSCK::IdPlacementOperationArgs::IsInitialized(*(*(a1 + 72) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 88);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = TSCK::RemoveIdOperationArgs::IsInitialized(*(*(a1 + 96) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = *(a1 + 112);
  do
  {
    v11 = v13 < 1;
    if (v13 < 1)
    {
      break;
    }

    v14 = v13 - 1;
    v15 = TSCK::IdPlacementOperationArgs::IsInitialized(*(*(a1 + 120) + 8 * v13));
    v13 = v14;
  }

  while ((v15 & 1) != 0);
  return v11;
}

uint64_t *sub_275E16928(uint64_t *a1)
{
  if (a1 != &qword_2812EBC80)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::Point::~Point(v3);
      MEMORY[0x277C8F960]();
    }

    if (a1[5])
    {
      v4 = MEMORY[0x277C8E730]();
      MEMORY[0x277C8F960](v4, 0x10A1C4042C41316);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E169CC(uint64_t *a1)
{
  sub_275E16928(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E16A0C()
{
  if (atomic_load_explicit(dword_2812EA198, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EBC80;
}

uint64_t *sub_275E16A4C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = TSP::UUID::Clear(result[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = TSP::Point::Clear(v1[4]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = TSD::FillArchive::Clear(v1[5]);
    }
  }

LABEL_6:
  if ((v2 & 0xF8) != 0)
  {
    v1[6] = 0;
    v1[7] = 0;
    *(v1 + 18) = 0;
    v1[8] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275E16AE8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v43 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v43) & 1) == 0)
  {
    while (1)
    {
      v7 = (v43 + 1);
      v8 = *v43;
      if ((*v43 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v43, (v9 - 128));
      v43 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_78;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 != 7)
          {
            if (v10 == 8 && v8 == 66)
            {
              *(a1 + 16) |= 4u;
              v21 = *(a1 + 40);
              if (!v21)
              {
                v22 = *(a1 + 8);
                if (v22)
                {
                  v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
                }

                v23 = MEMORY[0x277C8EF70](v22);
                LODWORD(v21) = v23;
                *(a1 + 40) = v23;
                v7 = v43;
              }

              v20 = sub_275E5D1A0(a3, v21, v7);
              goto LABEL_68;
            }

LABEL_61:
            if (v8)
            {
              v36 = (v8 & 7) == 4;
            }

            else
            {
              v36 = 1;
            }

            if (v36)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_275E22260((a1 + 8));
            }

            v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_68:
            v43 = v20;
            if (!v20)
            {
              goto LABEL_78;
            }

            goto LABEL_69;
          }

          if (v8 != 56)
          {
            goto LABEL_61;
          }

          v5 |= 0x80u;
          v34 = (v7 + 1);
          LODWORD(v33) = *v7;
          if ((v33 & 0x80) == 0)
          {
            goto LABEL_60;
          }

          v35 = *v34;
          v33 = (v33 + (v35 << 7) - 128);
          if ((v35 & 0x80000000) == 0)
          {
            v34 = (v7 + 2);
LABEL_60:
            v43 = v34;
            *(a1 + 72) = v33;
            goto LABEL_69;
          }

          v39 = google::protobuf::internal::VarintParseSlow64(v7, v33);
          v43 = v39;
          *(a1 + 72) = v40;
          if (!v39)
          {
            goto LABEL_78;
          }
        }

        else
        {
          if (v10 != 5)
          {
            if (v10 == 6 && v8 == 49)
            {
              v16 = *v7;
              v15 = (v7 + 8);
              v5 |= 0x40u;
              *(a1 + 64) = v16;
LABEL_55:
              v43 = v15;
              goto LABEL_69;
            }

            goto LABEL_61;
          }

          if (v8 != 40)
          {
            goto LABEL_61;
          }

          v5 |= 0x20u;
          v30 = (v7 + 1);
          LODWORD(v29) = *v7;
          if ((v29 & 0x80) == 0)
          {
            goto LABEL_52;
          }

          v31 = *v30;
          v29 = (v29 + (v31 << 7) - 128);
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
LABEL_52:
            v43 = v30;
            *(a1 + 60) = v29;
            goto LABEL_69;
          }

          v37 = google::protobuf::internal::VarintParseSlow64(v7, v29);
          v43 = v37;
          *(a1 + 60) = v38;
          if (!v37)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 25)
            {
              v32 = *v7;
              v15 = (v7 + 8);
              v5 |= 8u;
              *(a1 + 48) = v32;
              goto LABEL_55;
            }
          }

          else if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 2u;
            v17 = *(a1 + 32);
            if (!v17)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v19 = MEMORY[0x277C8F020](v18);
              LODWORD(v17) = v19;
              *(a1 + 32) = v19;
              v7 = v43;
            }

            v20 = sub_275E5C94C(a3, v17, v7);
            goto LABEL_68;
          }

          goto LABEL_61;
        }

        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 24);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x277C8F000](v27);
              LODWORD(v26) = v28;
              *(a1 + 24) = v28;
              v7 = v43;
            }

            v20 = sub_275E5BB7C(a3, v26, v7);
            goto LABEL_68;
          }

          goto LABEL_61;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_61;
        }

        v5 |= 0x10u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_18:
          v43 = v13;
          *(a1 + 56) = v12 != 0;
          goto LABEL_69;
        }

        v41 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v43 = v41;
        *(a1 + 56) = v42 != 0;
        if (!v41)
        {
LABEL_78:
          v43 = 0;
          goto LABEL_2;
        }
      }

LABEL_69:
      if (sub_275E221E8(a3, &v43))
      {
        goto LABEL_2;
      }
    }

    v7 = (v43 + 2);
LABEL_6:
    v43 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v43;
}