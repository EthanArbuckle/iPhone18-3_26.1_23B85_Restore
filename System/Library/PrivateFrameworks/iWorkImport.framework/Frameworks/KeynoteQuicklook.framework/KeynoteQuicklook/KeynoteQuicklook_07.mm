unsigned __int8 *sub_275E16EA8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
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

    a2 = TSP::UUID::_InternalSerialize(v9, v11, a3);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(a1 + 56);
  *a2 = 16;
  a2[1] = v20;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(a1 + 48);
  *a2 = 25;
  *(a2 + 1) = v21;
  a2 += 9;
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v28 = *(a1 + 60);
    *a2 = 40;
    if (v28 > 0x7F)
    {
      a2[1] = v28 | 0x80;
      v29 = v28 >> 7;
      if (v28 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v29 | 0x80;
          v30 = v29 >> 7;
          ++a2;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
        *(a2 - 1) = v30;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        a2[2] = v29;
        a2 += 3;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      a2[1] = v28;
      a2 += 2;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_58;
      }
    }

LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_61;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(a1 + 32);
  *a2 = 34;
  v23 = *(v22 + 5);
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

  a2 = TSP::Point::_InternalSerialize(v22, v24, a3);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_47;
  }

LABEL_6:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_7;
  }

LABEL_58:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(a1 + 64);
  *a2 = 49;
  *(a2 + 1) = v32;
  a2 += 9;
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_9;
  }

LABEL_61:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(a1 + 72);
  *a2 = 56;
  if (v33 > 0x7F)
  {
    a2[1] = v33 | 0x80;
    v34 = v33 >> 7;
    if (v33 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v34 | 0x80;
        v35 = v34 >> 7;
        ++a2;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
      *(a2 - 1) = v35;
      if ((v5 & 4) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      a2[2] = v34;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    a2[1] = v33;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_9:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 40);
  *a2 = 66;
  v7 = *(v6 + 11);
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

  a2 = TSD::FillArchive::_InternalSerialize(v6, v8, a3);
LABEL_25:
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E172A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v4 = 0;
    goto LABEL_25;
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

  v5 = TSP::UUID::ByteSizeLong(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::Point::ByteSizeLong(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSD::FillArchive::ByteSizeLong(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v8 = v3 + 9;
  if ((v2 & 8) == 0)
  {
    v8 = v3;
  }

  v9 = v8 + ((v2 >> 3) & 2);
  if ((v2 & 0x20) != 0)
  {
    v10 = *(a1 + 60);
    v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = 11;
    }

    v9 += v12;
  }

  if ((v2 & 0x40) != 0)
  {
    v4 = v9 + 9;
  }

  else
  {
    v4 = v9;
  }

  if ((v2 & 0x80) != 0)
  {
    v13 = *(a1 + 72);
    v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 11;
    }

    v4 += v15;
  }

LABEL_25:
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

uint64_t sub_275E17438(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D81F8, 0);
  if (v4)
  {

    return sub_275E174E0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E174E0(uint64_t result, uint64_t a2)
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
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_31;
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

      v9 = MEMORY[0x277C8F020](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = MEMORY[0x277D809F0];
    }

    result = TSP::Point::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C8EF70](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = MEMORY[0x277D80488];
    }

    result = TSD::FillArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_41;
    }

LABEL_40:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v3 + 60) = *(a2 + 60);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_12:
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_13;
    }

LABEL_42:
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t *sub_275E1767C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E16A4C(result);

    return sub_275E17438(v4, a2);
  }

  return result;
}

uint64_t sub_275E176C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSP::Point::IsInitialized(*(a1 + 32));
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

  result = TSD::FillArchive::IsInitialized(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E17764(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D77A8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA1C8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = v3;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return a1;
}

uint64_t *sub_275E177E8(uint64_t *a1)
{
  sub_275E1781C(a1);
  sub_275DE4968(a1 + 1);
  return a1;
}

TSP::DataReference *sub_275E1781C(TSP::DataReference *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EBCD0)
  {
    v5 = *(v1 + 5);
    if (v5)
    {
      v6 = sub_275E19214(v5);
      MEMORY[0x277C8F960](v6, 0x10A1C409875050DLL);
    }

    v7 = *(v1 + 6);
    if (v7)
    {
      v8 = sub_275E18C04(v7);
      MEMORY[0x277C8F960](v8, 0x10A1C404E984866);
    }

    result = *(v1 + 7);
    if (result)
    {
      TSP::DataReference::~DataReference(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275E1793C(uint64_t *a1)
{
  sub_275E177E8(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275E1797C()
{
  if (atomic_load_explicit(dword_2812EA1C8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EBCD0;
}

uint64_t *sub_275E179BC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_22:
    result = sub_275E17ABC(result[5]);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_23;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  v6 = result[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_23:
  result = sub_275E17C04(v1[6]);
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    result = TSP::DataReference::Clear(v1[7]);
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
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

uint64_t *sub_275E17ABC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_18:
    v6 = result[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_22:
  v7 = result[5] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_26;
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_26:
  v8 = result[6] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = TSP::Size::Clear(result[7]);
    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 0x60) != 0)
  {
    *(v1 + 68) = 0;
    *(v1 + 16) = 0;
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

uint64_t *sub_275E17C04(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSP::UUID::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 24) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275E17C64(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v38) & 1) == 0)
  {
    while (1)
    {
      v7 = (v38 + 1);
      v8 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v9 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_78;
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
            if (v8 == 26)
            {
              *(a1 + 16) |= 8u;
              v26 = *(a1 + 48);
              if (!v26)
              {
                v27 = *(a1 + 8);
                if (v27)
                {
                  v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
                }

                v26 = sub_275E21784(v27);
                *(a1 + 48) = v26;
                v7 = v38;
              }

              v14 = sub_275E5E1E0(a3, v26, v7);
              goto LABEL_68;
            }
          }

          else if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 0x10u;
            v18 = *(a1 + 56);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x277C8EFD0](v19);
              LODWORD(v18) = v20;
              *(a1 + 56) = v20;
              v7 = v38;
            }

            v14 = sub_275E5C6DC(a3, v18, v7);
            goto LABEL_68;
          }
        }

        else if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            goto LABEL_49;
          }
        }

        else if (v10 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 40);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = sub_275E21854(v13);
            *(a1 + 40) = v12;
            v7 = v38;
          }

          v14 = sub_275E5E110(a3, v12, v7);
          goto LABEL_68;
        }

        goto LABEL_61;
      }

      if (v8 >> 3 > 6)
      {
        if (v10 == 7)
        {
          if (v8 != 56)
          {
            goto LABEL_61;
          }

          v5 |= 0x40u;
          v29 = (v7 + 1);
          LODWORD(v28) = *v7;
          if ((v28 & 0x80) == 0)
          {
            goto LABEL_60;
          }

          v30 = *v29;
          v28 = (v28 + (v30 << 7) - 128);
          if ((v30 & 0x80000000) == 0)
          {
            v29 = (v7 + 2);
LABEL_60:
            v38 = v29;
            *(a1 + 68) = v28;
            goto LABEL_69;
          }

          v32 = google::protobuf::internal::VarintParseSlow64(v7, v28);
          v38 = v32;
          *(a1 + 68) = v33;
          if (!v32)
          {
            goto LABEL_78;
          }
        }

        else
        {
          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_61;
          }

          v5 |= 0x80u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_42;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_42:
            v38 = v22;
            *(a1 + 72) = v21 != 0;
            goto LABEL_69;
          }

          v36 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v38 = v36;
          *(a1 + 72) = v37 != 0;
          if (!v36)
          {
LABEL_78:
            v38 = 0;
            goto LABEL_2;
          }
        }
      }

      else
      {
        if (v10 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 2u;
LABEL_49:
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v14 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_68:
            v38 = v14;
            if (!v14)
            {
              goto LABEL_78;
            }

            goto LABEL_69;
          }

LABEL_61:
          if (v8)
          {
            v31 = (v8 & 7) == 4;
          }

          else
          {
            v31 = 1;
          }

          if (v31)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v14 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_68;
        }

        if (v10 != 6 || v8 != 48)
        {
          goto LABEL_61;
        }

        v5 |= 0x20u;
        v16 = (v7 + 1);
        LODWORD(v15) = *v7;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_27;
        }

        v17 = *v16;
        v15 = (v15 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_27:
          v38 = v16;
          *(a1 + 64) = v15;
          goto LABEL_69;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v38 = v34;
        *(a1 + 64) = v35;
        if (!v34)
        {
          goto LABEL_78;
        }
      }

LABEL_69:
      if (sub_275E221E8(a3, &v38))
      {
        goto LABEL_2;
      }
    }

    v7 = (v38 + 2);
LABEL_6:
    v38 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

unsigned __int8 *sub_275E18060(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(a1 + 40);
  *v4 = 18;
  v11 = *(v10 + 20);
  if (v11 > 0x7F)
  {
    v4[1] = v11 | 0x80;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 3;
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
      v4[2] = v13;
      v12 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v11;
    v12 = v4 + 2;
  }

  v4 = sub_275E19730(v10, v12, a3);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(a1 + 48);
  *v4 = 26;
  v17 = *(v16 + 20);
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v18 = v4 + 3;
      do
      {
        *(v18 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++v18;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(v18 - 1) = v20;
    }

    else
    {
      v4[2] = v19;
      v18 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v17;
    v18 = v4 + 2;
  }

  v4 = sub_275E18E94(v16, v18, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(a1 + 56);
  *v4 = 34;
  v23 = *(v22 + 5);
  if (v23 > 0x7F)
  {
    v4[1] = v23 | 0x80;
    v25 = v23 >> 7;
    if (v23 >> 14)
    {
      v24 = v4 + 3;
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
      v4[2] = v25;
      v24 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v23;
    v24 = v4 + 2;
  }

  v4 = TSP::DataReference::_InternalSerialize(v22, v24, a3);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_46:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v28 = *(a1 + 64);
    *v4 = 48;
    if (v28 > 0x7F)
    {
      v4[1] = v28 | 0x80;
      v29 = v28 >> 7;
      if (v28 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v29 | 0x80;
          v30 = v29 >> 7;
          ++v4;
          v31 = v29 >> 14;
          v29 >>= 7;
        }

        while (v31);
        *(v4 - 1) = v30;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v4[2] = v29;
        v4 += 3;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      v4[1] = v28;
      v4 += 2;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_57;
      }
    }

LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_45:
  v4 = sub_275DE5774(a3, 5, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_57:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(a1 + 68);
  *v4 = 56;
  if (v32 > 0x7F)
  {
    v4[1] = v32 | 0x80;
    v33 = v32 >> 7;
    if (v32 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v33 | 0x80;
        v34 = v33 >> 7;
        ++v4;
        v35 = v33 >> 14;
        v33 >>= 7;
      }

      while (v35);
      *(v4 - 1) = v34;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4[2] = v33;
      v4 += 3;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v4[1] = v32;
    v4 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 72);
  *v4 = 64;
  v4[1] = v7;
  v4 += 2;
LABEL_12:
  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E18448(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v4 = 0;
    goto LABEL_30;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v11 = sub_275E1998C(*(a1 + 40));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v12 = sub_275E18FC4(*(a1 + 48));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_21:
    v14 = *(a1 + 64);
    if (v14 < 0)
    {
      v15 = 11;
    }

    else
    {
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v15;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_20:
  v13 = TSP::DataReference::ByteSizeLong(*(a1 + 56));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v2 & 0x40) != 0)
  {
LABEL_25:
    v16 = *(a1 + 68);
    if (v16 < 0)
    {
      v17 = 11;
    }

    else
    {
      v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v17;
  }

LABEL_29:
  v4 = v3 + ((v2 >> 6) & 2);
LABEL_30:
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

uint64_t sub_275E18664(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8210, 0);
  if (v4)
  {

    return sub_275E1870C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E1870C(uint64_t result, uint64_t a2)
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
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_17;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_17:
    *(v3 + 16) |= 4u;
    v6 = *(v3 + 40);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_275E21854(v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 40))
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = qword_2812EBD48;
    }

    result = sub_275E188F8(v6, v8);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }

LABEL_25:
    *(v3 + 16) |= 8u;
    v9 = *(v3 + 48);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_275E21784(v10);
      *(v3 + 48) = v9;
    }

    if (*(a2 + 48))
    {
      v11 = *(a2 + 48);
    }

    else
    {
      v11 = &qword_2812EBD20;
    }

    result = sub_275E0D4BC(v9, v11);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_41;
    }

LABEL_33:
    *(v3 + 16) |= 0x10u;
    v12 = *(v3 + 56);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C8EFD0](v13);
      *(v3 + 56) = v12;
    }

    if (*(a2 + 56))
    {
      v14 = *(a2 + 56);
    }

    else
    {
      v14 = MEMORY[0x277D80A30];
    }

    result = TSP::DataReference::MergeFrom(v12, v14);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    }

LABEL_41:
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_12:
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_13;
    }

LABEL_42:
    *(v3 + 68) = *(a2 + 68);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return result;
}

uint64_t sub_275E188F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x7F) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    *(v3 + 16) |= 4u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    *(v3 + 16) |= 8u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_18:
    *(v3 + 16) |= 0x10u;
    v6 = *(v3 + 56);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C8EFF0](v7);
      *(v3 + 56) = v6;
    }

    if (*(a2 + 56))
    {
      v8 = *(a2 + 56);
    }

    else
    {
      v8 = MEMORY[0x277D809D8];
    }

    result = TSP::Size::MergeFrom(v6, v8);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_11:
      *(v3 + 68) = *(a2 + 68);
      goto LABEL_12;
    }

LABEL_26:
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t *sub_275E18AA4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E179BC(result);

    return sub_275E18664(v4, a2);
  }

  return result;
}

uint64_t sub_275E18AF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 4) != 0)
  {
    v3 = *(a1 + 40);
    if ((*(v3 + 16) & 0x10) != 0)
    {
      result = TSP::Size::IsInitialized(*(v3 + 56));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 8) != 0)
  {
    v5 = *(a1 + 48);
    if (*(v5 + 16))
    {
      result = TSP::UUID::IsInitialized(*(v5 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = TSP::DataReference::IsInitialized(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E18B68(uint64_t a1)
{
  if ((*(a1 + 16) & 0x10) == 0)
  {
    return 1;
  }

  result = TSP::Size::IsInitialized(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E18B98(uint64_t a1)
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

uint64_t *sub_275E18C04(uint64_t *a1)
{
  if (a1 != &qword_2812EBD20)
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

void sub_275E18C68(uint64_t *a1)
{
  sub_275E18C04(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275E18CA8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *sub_275E18E94(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t sub_275E18FC4(uint64_t a1)
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

uint64_t sub_275E19068(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8228, 0);
  if (v4)
  {

    return sub_275E0D4BC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275E19110(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E17C04(result);

    return sub_275E19068(v4, a2);
  }

  return result;
}

void *sub_275E19198(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D7908;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EA178, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  a1[3] = MEMORY[0x277D80A90];
  a1[4] = v3;
  a1[5] = v3;
  a1[6] = v3;
  a1[7] = 0;
  *(a1 + 61) = 0;
  return a1;
}

void *sub_275E19214(void *a1)
{
  sub_275E19248(a1);
  sub_275DE4968(a1 + 1);
  return a1;
}

void *sub_275E19248(void *result)
{
  v1 = result;
  v2 = result[3];
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = v1[4];
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C8F960](v5, 0x1012C40EC159624);
  }

  v6 = v1[6];
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277C8F960](v6, 0x1012C40EC159624);
  }

  if (v1 != qword_2812EBD48)
  {
    result = v1[7];
    if (result)
    {
      TSP::Size::~Size(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275E19378(void *a1)
{
  sub_275E19214(a1);

  JUMPOUT(0x277C8F960);
}

google::protobuf::internal *sub_275E193B8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_64;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            goto LABEL_40;
          }
        }

        else if (v10 == 2)
        {
          if (v8 == 16)
          {
            v22 = (v7 + 1);
            v21 = *v7;
            if ((v21 & 0x8000000000000000) == 0)
            {
              goto LABEL_48;
            }

            v23 = *v22;
            v21 = (v23 << 7) + v21 - 128;
            if (v23 < 0)
            {
              v27 = google::protobuf::internal::VarintParseSlow64(v7, v21);
              if (!v27)
              {
LABEL_64:
                v27 = 0;
                goto LABEL_2;
              }
            }

            else
            {
              v22 = (v7 + 2);
LABEL_48:
              v27 = v22;
            }

            if (v21 > 2)
            {
              sub_275E5F6FC();
            }

            else
            {
              *(a1 + 16) |= 0x20u;
              *(a1 + 64) = v21;
            }

            goto LABEL_42;
          }
        }

        else if (v10 == 3 && v8 == 26)
        {
          *(a1 + 16) |= 2u;
          goto LABEL_40;
        }

        goto LABEL_51;
      }

      if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 != 50)
          {
            goto LABEL_51;
          }

          *(a1 + 16) |= 8u;
LABEL_40:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v18 = google::protobuf::internal::InlineGreedyStringParser();
        }

        else
        {
          if (v10 != 7 || v8 != 58)
          {
            goto LABEL_51;
          }

          *(a1 + 16) |= 0x10u;
          v15 = *(a1 + 56);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = MEMORY[0x277C8EFF0](v16);
            LODWORD(v15) = v17;
            *(a1 + 56) = v17;
            v7 = v27;
          }

          v18 = sub_275E5C60C(a3, v15, v7);
        }

        goto LABEL_41;
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 4u;
          goto LABEL_40;
        }

LABEL_51:
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

        v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_41:
        v27 = v18;
        if (!v18)
        {
          goto LABEL_64;
        }

        goto LABEL_42;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_51;
      }

      v5 |= 0x40u;
      v12 = (v7 + 1);
      v11 = *v7;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v13 = *v12;
      v11 = (v13 << 7) + v11 - 128;
      if ((v13 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_15:
        v27 = v12;
        *(a1 + 68) = v11 != 0;
        goto LABEL_42;
      }

      v25 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v27 = v25;
      *(a1 + 68) = v26 != 0;
      if (!v25)
      {
        goto LABEL_64;
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

unsigned __int8 *sub_275E19730(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(a1 + 64);
    *v4 = 16;
    if (v7 > 0x7F)
    {
      v4[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++v4;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(v4 - 1) = v9;
        if ((v6 & 2) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  v4 = sub_275DE5774(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v4 = sub_275DE5774(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(a1 + 68);
  *v4 = 40;
  v4[1] = v11;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4 = sub_275DE5774(a3, 6, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(a1 + 56);
  *v4 = 58;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    v4[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = v4 + 3;
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
      v4[2] = v15;
      v14 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v13;
    v14 = v4 + 2;
  }

  v4 = TSP::Size::_InternalSerialize(v12, v14, a3);
LABEL_37:
  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E1998C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_29;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v8 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v11 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v15 = *(v14 + 23);
  v16 = *(v14 + 8);
  if ((v15 & 0x80u) == 0)
  {
    v16 = v15;
  }

  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_24:
    v18 = *(a1 + 64);
    if (v18 < 0)
    {
      v19 = 11;
    }

    else
    {
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v19;
    goto LABEL_28;
  }

LABEL_23:
  v17 = TSP::Size::ByteSizeLong(*(a1 + 56));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_28:
  v4 = v3 + ((v2 >> 5) & 2);
LABEL_29:
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

uint64_t sub_275E19B98(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8240, 0);
  if (v4)
  {

    return sub_275E188F8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275E19C40(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E17ABC(result);

    return sub_275E19B98(v4, a2);
  }

  return result;
}

void *sub_275E19CC8(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D79B8;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EA218, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_275E19D58(void *a1)
{
  if (a1 != qword_2812EBD90)
  {
    v2 = a1[6];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  sub_275E22664(a1 + 3);
  return a1;
}

void sub_275E19DC8(void *a1)
{
  sub_275E19D58(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275E19E08()
{
  if (atomic_load_explicit(dword_2812EA218, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EBD90;
}

uint64_t *sub_275E19E48(uint64_t *result)
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

  if (v1[2])
  {
    result = TSP::Reference::Clear(v1[6]);
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

google::protobuf::internal *sub_275E19ED8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275E221E8(a3, &v26))
    {
      return v26;
    }

    v5 = (v26 + 1);
    v6 = *v26;
    if ((*v26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v26 + 2);
LABEL_6:
      v26 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v7 - 128));
    v26 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v24;
LABEL_7:
    if (v6 >> 3 != 2)
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
        goto LABEL_12;
      }

      v14 = v5 - 1;
      while (1)
      {
        v15 = (v14 + 1);
        v26 = (v14 + 1);
        v16 = *(a1 + 40);
        if (!v16)
        {
          goto LABEL_29;
        }

        v22 = *(a1 + 32);
        v17 = *v16;
        if (v22 < *v16)
        {
          *(a1 + 32) = v22 + 1;
          v19 = *&v16[2 * v22 + 2];
          goto LABEL_33;
        }

        if (v17 == *(a1 + 36))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v16 = *(a1 + 40);
          v17 = *v16;
        }

        *v16 = v17 + 1;
        v18 = MEMORY[0x277C8F050](*(a1 + 24));
        LODWORD(v19) = v18;
        v20 = *(a1 + 32);
        v21 = *(a1 + 40) + 8 * v20;
        *(a1 + 32) = v20 + 1;
        *(v21 + 8) = v18;
        v15 = v26;
LABEL_33:
        v14 = sub_275E5B9DC(a3, v19, v15);
        v26 = v14;
        if (!v14)
        {
          return 0;
        }

        if (*a3 <= v14 || *v14 != 10)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 == 18)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 48);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C8F050](v12);
        LODWORD(v11) = v13;
        *(a1 + 48) = v13;
        v5 = v26;
      }

      v10 = sub_275E5B9DC(a3, v11, v5);
      goto LABEL_25;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_25:
    v26 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v26;
}

unsigned __int8 *sub_275E1A0FC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(a1 + 48);
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

    a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E1A2B8(uint64_t a1)
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

  if (*(a1 + 16))
  {
    v8 = TSP::Reference::ByteSizeLong(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_275E1A3A4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8258, 0);
  if (v4)
  {

    return sub_275E04144(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275E1A44C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E19E48(result);

    return sub_275E1A3A4(v4, a2);
  }

  return result;
}

uint64_t sub_275E1A498(uint64_t a1)
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

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 48));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E1A538(uint64_t a1)
{
  sub_275DE4968((a1 + 8));
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

void sub_275E1A588(uint64_t a1)
{
  sub_275E1A538(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E1A5C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_275E224D0(result);
  }

  return result;
}

google::protobuf::internal *sub_275E1A5DC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  if (sub_275E221E8(a3, &v19))
  {
    return v19;
  }

  while (1)
  {
    v5 = (v19 + 1);
    v6 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v19 + 2);
LABEL_5:
      v19 = v5;
      goto LABEL_6;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v7 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v15;
LABEL_6:
    if ((v6 & 0xFFFFFFF8) != 8)
    {
      goto LABEL_25;
    }

    if (v6 == 8)
    {
      break;
    }

    if (v6 == 10)
    {
      v16 = google::protobuf::internal::PackedInt32Parser();
      goto LABEL_32;
    }

LABEL_25:
    if (v6)
    {
      v17 = (v6 & 7) == 4;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      *(a3 + 80) = v6 - 1;
      return v19;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v16 = google::protobuf::internal::UnknownFieldParse();
LABEL_32:
    v19 = v16;
    if (!v16)
    {
      return 0;
    }

LABEL_33:
    if (sub_275E221E8(a3, &v19))
    {
      return v19;
    }
  }

  v8 = v5 - 1;
  while (1)
  {
    v19 = (v8 + 1);
    v9 = v8[1];
    if (v9 < 0)
    {
      v10 = (v8[2] << 7) + v9;
      LODWORD(v9) = v10 - 128;
      if (v8[2] < 0)
      {
        v8 = google::protobuf::internal::VarintParseSlow64((v8 + 1), (v10 - 128));
        LODWORD(v9) = v11;
      }

      else
      {
        v8 += 3;
      }
    }

    else
    {
      v8 += 2;
    }

    v19 = v8;
    v12 = *(a1 + 16);
    if (v12 == *(a1 + 20))
    {
      v13 = v12 + 1;
      sub_275D98CF0((a1 + 16), v12 + 1);
      *(*(a1 + 24) + 4 * v12) = v9;
      v8 = v19;
    }

    else
    {
      *(*(a1 + 24) + 4 * v12) = v9;
      v13 = v12 + 1;
    }

    *(a1 + 16) = v13;
    if (!v8)
    {
      return 0;
    }

    if (*a3 <= v8 || *v8 != 8)
    {
      goto LABEL_33;
    }
  }
}

unsigned __int8 *sub_275E1A7D0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  v5 = *(a1 + 16);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*this <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
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

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E1A8E4(uint64_t a1)
{
  v2 = google::protobuf::internal::WireFormatLite::Int32Size() + *(a1 + 16);
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 32);
  }

  else
  {
    *(a1 + 32) = v2;
    return v2;
  }
}

uint64_t *sub_275E1A948(uint64_t *a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8270, 0);
  if (v4)
  {

    return sub_275E1A9F0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275E1A9F0(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484(result + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = *(v3 + 4);
    v6 = v3 + 2;
    sub_275D98CF0(v6, v7 + v5);
    v8 = v6[1];
    *v6 += *(a2 + 16);
    v9 = (v8 + 4 * v7);
    v10 = *(a2 + 24);
    v11 = 4 * *(a2 + 16);

    return memcpy(v9, v10, v11);
  }

  return result;
}

uint64_t *sub_275E1AA90(uint64_t *result, uint64_t *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = *(result + 8);
    v5 = result + 1;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_275E224D0(v5);
    }

    return sub_275E1A948(v4, lpsrc);
  }

  return result;
}

uint64_t sub_275E1AB2C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D7B18;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (atomic_load_explicit(dword_2812EA2D0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 40) = MEMORY[0x277D80A90];
  *(a1 + 48) = v3;
  *(a1 + 56) = v3;
  *(a1 + 64) = v3;
  *(a1 + 72) = v3;
  *(a1 + 80) = v3;
  bzero((a1 + 88), 0x2F0uLL);
  return a1;
}

uint64_t *sub_275E1ABB4(uint64_t *a1)
{
  sub_275E1ABE8(a1);
  sub_275DE4968(a1 + 1);
  return a1;
}

TSP::Color *sub_275E1ABE8(TSP::Color *result)
{
  v1 = result;
  v2 = *(result + 5);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 6);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 7);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C8F960](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 8);
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277C8F960](v6, 0x1012C40EC159624);
  }

  v7 = *(v1 + 9);
  if (v7 != v3)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x277C8F960](v7, 0x1012C40EC159624);
  }

  v8 = *(v1 + 10);
  if (v8 != v3)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    result = MEMORY[0x277C8F960](v8, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EBDF0)
  {
    if (*(v1 + 11))
    {
      v9 = MEMORY[0x277C8E730]();
      MEMORY[0x277C8F960](v9, 0x10A1C4042C41316);
    }

    v10 = *(v1 + 12);
    if (v10)
    {
      TSP::Color::~Color(v10);
      MEMORY[0x277C8F960]();
    }

    v11 = *(v1 + 13);
    if (v11)
    {
      TSP::Color::~Color(v11);
      MEMORY[0x277C8F960]();
    }

    v12 = *(v1 + 14);
    if (v12)
    {
      TSP::Color::~Color(v12);
      MEMORY[0x277C8F960]();
    }

    v13 = *(v1 + 15);
    if (v13)
    {
      TSP::Color::~Color(v13);
      MEMORY[0x277C8F960]();
    }

    result = *(v1 + 16);
    if (result)
    {
      TSP::Color::~Color(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275E1ADDC(uint64_t *a1)
{
  sub_275E1ABB4(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E1AE1C(uint64_t *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v9 = result[5] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_55;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_59:
    v11 = result[7] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_63;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_63;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_67:
    v13 = result[9] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 23) < 0)
    {
      **v13 = 0;
      *(v13 + 8) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      *v13 = 0;
      *(v13 + 23) = 0;
      if ((v3 & 0x20) != 0)
      {
        goto LABEL_71;
      }
    }

LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_75;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_55:
  v10 = result[6] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    *v10 = 0;
    *(v10 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_59;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_63:
  v12 = result[8] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_67;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_67;
    }
  }

LABEL_7:
  if ((v3 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_71:
  v14 = result[10] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v14 + 23) < 0)
  {
    **v14 = 0;
    *(v14 + 8) = 0;
    if ((v3 & 0x40) != 0)
    {
      goto LABEL_75;
    }

LABEL_9:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *v14 = 0;
  *(v14 + 23) = 0;
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_75:
  result = TSD::FillArchive::Clear(result[11]);
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSP::Color::Clear(v1[12]);
  }

LABEL_11:
  if ((v3 & 0xF00) == 0)
  {
    goto LABEL_17;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSP::Color::Clear(v1[13]);
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_52;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSP::Color::Clear(v1[14]);
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_52:
  result = TSP::Color::Clear(v1[15]);
  if ((v3 & 0x800) != 0)
  {
LABEL_16:
    result = TSP::Color::Clear(v1[16]);
  }

LABEL_17:
  if ((v3 & 0xF000) != 0)
  {
    *(v1 + 19) = 0u;
    *(v1 + 17) = 0u;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(v1 + 27) = 0u;
    *(v1 + 25) = 0u;
    *(v1 + 23) = 0u;
    *(v1 + 21) = 0u;
  }

  if (HIBYTE(v3))
  {
    *(v1 + 29) = 0u;
    *(v1 + 33) = 0u;
    *(v1 + 35) = 0u;
    *(v1 + 31) = 0u;
  }

  v4 = *(v1 + 5);
  if (v4)
  {
    *(v1 + 41) = 0u;
    *(v1 + 43) = 0u;
    *(v1 + 37) = 0u;
    *(v1 + 39) = 0u;
  }

  if ((v4 & 0xFF00) != 0)
  {
    *(v1 + 45) = 0u;
    *(v1 + 47) = 0u;
  }

  if ((v4 & 0xFF0000) != 0)
  {
    *(v1 + 53) = 0u;
    *(v1 + 55) = 0u;
    *(v1 + 49) = 0u;
    *(v1 + 51) = 0u;
  }

  if (HIBYTE(v4))
  {
    *(v1 + 61) = 0u;
    *(v1 + 63) = 0u;
    *(v1 + 57) = 0u;
    *(v1 + 59) = 0u;
  }

  v5 = *(v1 + 6);
  if (v5)
  {
    *(v1 + 565) = 0;
    *(v1 + 67) = 0u;
    *(v1 + 69) = 0u;
    *(v1 + 65) = 0u;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(v1 + 77) = 0u;
    *(v1 + 589) = 0u;
    *(v1 + 605) = 0u;
    *(v1 + 573) = 0u;
  }

  if ((v5 & 0xFF0000) != 0)
  {
    *(v1 + 83) = 0u;
    *(v1 + 85) = 0u;
    *(v1 + 79) = 0u;
    *(v1 + 81) = 0u;
  }

  if (HIBYTE(v5))
  {
    *(v1 + 91) = 0u;
    *(v1 + 93) = 0u;
    *(v1 + 87) = 0u;
    *(v1 + 89) = 0u;
  }

  v6 = *(v1 + 7);
  if (v6)
  {
    v1[101] = 0;
    *(v1 + 97) = 0u;
    *(v1 + 99) = 0u;
    *(v1 + 95) = 0u;
  }

  if ((v6 & 0x700) != 0)
  {
    v1[104] = 0;
    *(v1 + 51) = 0u;
  }

  *v2 = 0;
  v2[1] = 0;
  v8 = *(v1 + 8);
  v7 = v1 + 1;
  if (v8)
  {

    return sub_275E224D0(v7);
  }

  return result;
}

unsigned __int8 *sub_275E1B334(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_275DE5774(a3, 2, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 88);
  *v4 = 26;
  v8 = *(v7 + 11);
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 3;
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
      v4[2] = v10;
      v9 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v8;
    v9 = v4 + 2;
  }

  v4 = TSD::FillArchive::_InternalSerialize(v7, v9, a3);
LABEL_17:
  if ((*(a1 + 21) & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(a1 + 384);
    *v4 = 80;
    if (v13 > 0x7F)
    {
      v4[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++v4;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(v4 - 1) = v15;
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
    }
  }

  v17 = *(a1 + 16);
  if ((v17 & 0x1000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v18 = *(a1 + 136);
    *v4 = 89;
    *(v4 + 1) = v18;
    v4 += 9;
    if ((v17 & 0x2000) == 0)
    {
LABEL_29:
      if ((v17 & 0x4000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_41;
    }
  }

  else if ((v17 & 0x2000) == 0)
  {
    goto LABEL_29;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 144);
  *v4 = 97;
  *(v4 + 1) = v19;
  v4 += 9;
  if ((v17 & 0x4000) == 0)
  {
LABEL_30:
    if ((v17 & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(a1 + 152);
  *v4 = 105;
  *(v4 + 1) = v20;
  v4 += 9;
  if ((v17 & 0x8000) == 0)
  {
LABEL_31:
    if ((v17 & 0x10000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(a1 + 160);
  *v4 = 113;
  *(v4 + 1) = v21;
  v4 += 9;
  if ((v17 & 0x10000) == 0)
  {
LABEL_32:
    if ((v17 & 0x20000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(a1 + 168);
  *v4 = 121;
  *(v4 + 1) = v22;
  v4 += 9;
  if ((v17 & 0x20000) == 0)
  {
LABEL_33:
    if ((v17 & 0x40000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(a1 + 176);
  *v4 = 385;
  *(v4 + 2) = v23;
  v4 += 10;
  if ((v17 & 0x40000) != 0)
  {
LABEL_53:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v24 = *(a1 + 184);
    *v4 = 393;
    *(v4 + 2) = v24;
    v4 += 10;
  }

LABEL_56:
  if ((*(a1 + 21) & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(a1 + 388);
    *v4 = 400;
    v4[2] = v25;
    v4 += 3;
  }

  v26 = *(a1 + 16);
  if ((v26 & 4) != 0)
  {
    v4 = sub_275DE5774(a3, 19, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
    if ((v26 & 8) == 0)
    {
LABEL_62:
      if ((v26 & 0x10) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_84;
    }
  }

  else if ((v26 & 8) == 0)
  {
    goto LABEL_62;
  }

  v4 = sub_275DE5774(a3, 20, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v26 & 0x10) == 0)
  {
LABEL_63:
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_85;
  }

LABEL_84:
  v4 = sub_275DE5774(a3, 21, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v26 & 0x20) == 0)
  {
LABEL_64:
    if ((v26 & 0x80) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_86;
  }

LABEL_85:
  v4 = sub_275DE5774(a3, 22, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v26 & 0x80) == 0)
  {
LABEL_65:
    if ((v26 & 0x100) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_96;
  }

LABEL_86:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(a1 + 96);
  *v4 = 442;
  v28 = *(v27 + 5);
  if (v28 > 0x7F)
  {
    v4[2] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = v4 + 4;
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
      v4[3] = v30;
      v29 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v28;
    v29 = v4 + 3;
  }

  v4 = TSP::Color::_InternalSerialize(v27, v29, a3);
  if ((v26 & 0x100) == 0)
  {
LABEL_66:
    if ((v26 & 0x200) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_106;
  }

LABEL_96:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v33 = *(a1 + 104);
  *v4 = 450;
  v34 = *(v33 + 5);
  if (v34 > 0x7F)
  {
    v4[2] = v34 | 0x80;
    v36 = v34 >> 7;
    if (v34 >> 14)
    {
      v35 = v4 + 4;
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
      v4[3] = v36;
      v35 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v34;
    v35 = v4 + 3;
  }

  v4 = TSP::Color::_InternalSerialize(v33, v35, a3);
  if ((v26 & 0x200) == 0)
  {
LABEL_67:
    if ((v26 & 0x400) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_116;
  }

LABEL_106:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v39 = *(a1 + 112);
  *v4 = 458;
  v40 = *(v39 + 5);
  if (v40 > 0x7F)
  {
    v4[2] = v40 | 0x80;
    v42 = v40 >> 7;
    if (v40 >> 14)
    {
      v41 = v4 + 4;
      do
      {
        *(v41 - 1) = v42 | 0x80;
        v43 = v42 >> 7;
        ++v41;
        v44 = v42 >> 14;
        v42 >>= 7;
      }

      while (v44);
      *(v41 - 1) = v43;
    }

    else
    {
      v4[3] = v42;
      v41 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v40;
    v41 = v4 + 3;
  }

  v4 = TSP::Color::_InternalSerialize(v39, v41, a3);
  if ((v26 & 0x400) == 0)
  {
LABEL_68:
    if ((v26 & 0x80000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_126;
  }

LABEL_116:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(a1 + 120);
  *v4 = 466;
  v46 = *(v45 + 5);
  if (v46 > 0x7F)
  {
    v4[2] = v46 | 0x80;
    v48 = v46 >> 7;
    if (v46 >> 14)
    {
      v47 = v4 + 4;
      do
      {
        *(v47 - 1) = v48 | 0x80;
        v49 = v48 >> 7;
        ++v47;
        v50 = v48 >> 14;
        v48 >>= 7;
      }

      while (v50);
      *(v47 - 1) = v49;
    }

    else
    {
      v4[3] = v48;
      v47 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v46;
    v47 = v4 + 3;
  }

  v4 = TSP::Color::_InternalSerialize(v45, v47, a3);
  if ((v26 & 0x80000) == 0)
  {
LABEL_69:
    if ((v26 & 0x100000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_129;
  }

LABEL_126:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v51 = *(a1 + 192);
  *v4 = 473;
  *(v4 + 2) = v51;
  v4 += 10;
  if ((v26 & 0x100000) == 0)
  {
LABEL_70:
    if ((v26 & 0x200000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_132;
  }

LABEL_129:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v52 = *(a1 + 200);
  *v4 = 481;
  *(v4 + 2) = v52;
  v4 += 10;
  if ((v26 & 0x200000) == 0)
  {
LABEL_71:
    if ((v26 & 0x400000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_135;
  }

LABEL_132:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v53 = *(a1 + 208);
  *v4 = 489;
  *(v4 + 2) = v53;
  v4 += 10;
  if ((v26 & 0x400000) == 0)
  {
LABEL_72:
    if ((v26 & 0x800000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_138;
  }

LABEL_135:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v54 = *(a1 + 216);
  *v4 = 497;
  *(v4 + 2) = v54;
  v4 += 10;
  if ((v26 & 0x800000) == 0)
  {
LABEL_73:
    if ((v26 & 0x1000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_141;
  }

LABEL_138:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v55 = *(a1 + 224);
  *v4 = 505;
  *(v4 + 2) = v55;
  v4 += 10;
  if ((v26 & 0x1000000) == 0)
  {
LABEL_74:
    if ((v26 & 0x2000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_144;
  }

LABEL_141:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v56 = *(a1 + 232);
  *v4 = 641;
  *(v4 + 2) = v56;
  v4 += 10;
  if ((v26 & 0x2000000) == 0)
  {
LABEL_75:
    if ((v26 & 0x4000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_147;
  }

LABEL_144:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v57 = *(a1 + 240);
  *v4 = 649;
  *(v4 + 2) = v57;
  v4 += 10;
  if ((v26 & 0x4000000) == 0)
  {
LABEL_76:
    if ((v26 & 0x8000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_150;
  }

LABEL_147:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v58 = *(a1 + 248);
  *v4 = 657;
  *(v4 + 2) = v58;
  v4 += 10;
  if ((v26 & 0x8000000) == 0)
  {
LABEL_77:
    if ((v26 & 0x10000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_153;
  }

LABEL_150:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v59 = *(a1 + 256);
  *v4 = 665;
  *(v4 + 2) = v59;
  v4 += 10;
  if ((v26 & 0x10000000) == 0)
  {
LABEL_78:
    if ((v26 & 0x20000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_156;
  }

LABEL_153:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v60 = *(a1 + 264);
  *v4 = 673;
  *(v4 + 2) = v60;
  v4 += 10;
  if ((v26 & 0x20000000) == 0)
  {
LABEL_79:
    if ((v26 & 0x40000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_159;
  }

LABEL_156:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v61 = *(a1 + 272);
  *v4 = 681;
  *(v4 + 2) = v61;
  v4 += 10;
  if ((v26 & 0x40000000) == 0)
  {
LABEL_80:
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_165;
    }

    goto LABEL_162;
  }

LABEL_159:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v62 = *(a1 + 280);
  *v4 = 689;
  *(v4 + 2) = v62;
  v4 += 10;
  if (v26 < 0)
  {
LABEL_162:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v63 = *(a1 + 288);
    *v4 = 697;
    *(v4 + 2) = v63;
    v4 += 10;
  }

LABEL_165:
  v64 = *(a1 + 20);
  if (v64)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v65 = *(a1 + 296);
    *v4 = 705;
    *(v4 + 2) = v65;
    v4 += 10;
    if ((v64 & 2) == 0)
    {
LABEL_167:
      if ((v64 & 4) == 0)
      {
        goto LABEL_168;
      }

      goto LABEL_199;
    }
  }

  else if ((v64 & 2) == 0)
  {
    goto LABEL_167;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v66 = *(a1 + 304);
  *v4 = 713;
  *(v4 + 2) = v66;
  v4 += 10;
  if ((v64 & 4) == 0)
  {
LABEL_168:
    if ((v64 & 8) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_202;
  }

LABEL_199:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v67 = *(a1 + 312);
  *v4 = 721;
  *(v4 + 2) = v67;
  v4 += 10;
  if ((v64 & 8) == 0)
  {
LABEL_169:
    if ((v64 & 0x10) == 0)
    {
      goto LABEL_170;
    }

    goto LABEL_205;
  }

LABEL_202:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v68 = *(a1 + 320);
  *v4 = 729;
  *(v4 + 2) = v68;
  v4 += 10;
  if ((v64 & 0x10) == 0)
  {
LABEL_170:
    if ((v64 & 0x20) == 0)
    {
      goto LABEL_171;
    }

    goto LABEL_208;
  }

LABEL_205:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v69 = *(a1 + 328);
  *v4 = 737;
  *(v4 + 2) = v69;
  v4 += 10;
  if ((v64 & 0x20) == 0)
  {
LABEL_171:
    if ((v64 & 0x40) == 0)
    {
      goto LABEL_172;
    }

    goto LABEL_211;
  }

LABEL_208:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v70 = *(a1 + 336);
  *v4 = 745;
  *(v4 + 2) = v70;
  v4 += 10;
  if ((v64 & 0x40) == 0)
  {
LABEL_172:
    if ((v64 & 0x80) == 0)
    {
      goto LABEL_173;
    }

    goto LABEL_214;
  }

LABEL_211:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v71 = *(a1 + 344);
  *v4 = 753;
  *(v4 + 2) = v71;
  v4 += 10;
  if ((v64 & 0x80) == 0)
  {
LABEL_173:
    if ((v64 & 0x100) == 0)
    {
      goto LABEL_174;
    }

    goto LABEL_217;
  }

LABEL_214:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v72 = *(a1 + 352);
  *v4 = 761;
  *(v4 + 2) = v72;
  v4 += 10;
  if ((v64 & 0x100) == 0)
  {
LABEL_174:
    if ((v64 & 0x200) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_220;
  }

LABEL_217:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v73 = *(a1 + 360);
  *v4 = 897;
  *(v4 + 2) = v73;
  v4 += 10;
  if ((v64 & 0x200) == 0)
  {
LABEL_175:
    if ((v64 & 0x400) == 0)
    {
      goto LABEL_176;
    }

    goto LABEL_223;
  }

LABEL_220:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v74 = *(a1 + 368);
  *v4 = 905;
  *(v4 + 2) = v74;
  v4 += 10;
  if ((v64 & 0x400) == 0)
  {
LABEL_176:
    if ((v64 & 0x10000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_226;
  }

LABEL_223:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v75 = *(a1 + 376);
  *v4 = 913;
  *(v4 + 2) = v75;
  v4 += 10;
  if ((v64 & 0x10000) == 0)
  {
LABEL_177:
    if ((v64 & 0x20000) == 0)
    {
      goto LABEL_178;
    }

    goto LABEL_229;
  }

LABEL_226:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v76 = *(a1 + 392);
  *v4 = 921;
  *(v4 + 2) = v76;
  v4 += 10;
  if ((v64 & 0x20000) == 0)
  {
LABEL_178:
    if ((v64 & 0x40000) == 0)
    {
      goto LABEL_179;
    }

    goto LABEL_232;
  }

LABEL_229:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v77 = *(a1 + 400);
  *v4 = 929;
  *(v4 + 2) = v77;
  v4 += 10;
  if ((v64 & 0x40000) == 0)
  {
LABEL_179:
    if ((v64 & 0x80000) == 0)
    {
      goto LABEL_180;
    }

    goto LABEL_235;
  }

LABEL_232:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v78 = *(a1 + 408);
  *v4 = 937;
  *(v4 + 2) = v78;
  v4 += 10;
  if ((v64 & 0x80000) == 0)
  {
LABEL_180:
    if ((v64 & 0x100000) == 0)
    {
      goto LABEL_181;
    }

    goto LABEL_238;
  }

LABEL_235:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v79 = *(a1 + 416);
  *v4 = 945;
  *(v4 + 2) = v79;
  v4 += 10;
  if ((v64 & 0x100000) == 0)
  {
LABEL_181:
    if ((v64 & 0x200000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_241;
  }

LABEL_238:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v80 = *(a1 + 424);
  *v4 = 953;
  *(v4 + 2) = v80;
  v4 += 10;
  if ((v64 & 0x200000) == 0)
  {
LABEL_182:
    if ((v64 & 0x400000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_244;
  }

LABEL_241:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v81 = *(a1 + 432);
  *v4 = 961;
  *(v4 + 2) = v81;
  v4 += 10;
  if ((v64 & 0x400000) == 0)
  {
LABEL_183:
    if ((v64 & 0x800000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_247;
  }

LABEL_244:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v82 = *(a1 + 440);
  *v4 = 969;
  *(v4 + 2) = v82;
  v4 += 10;
  if ((v64 & 0x800000) == 0)
  {
LABEL_184:
    if ((v64 & 0x1000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_250;
  }

LABEL_247:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v83 = *(a1 + 448);
  *v4 = 977;
  *(v4 + 2) = v83;
  v4 += 10;
  if ((v64 & 0x1000000) == 0)
  {
LABEL_185:
    if ((v64 & 0x2000000) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_253;
  }

LABEL_250:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v84 = *(a1 + 456);
  *v4 = 985;
  *(v4 + 2) = v84;
  v4 += 10;
  if ((v64 & 0x2000000) == 0)
  {
LABEL_186:
    if ((v64 & 0x4000000) == 0)
    {
      goto LABEL_187;
    }

    goto LABEL_256;
  }

LABEL_253:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v85 = *(a1 + 464);
  *v4 = 993;
  *(v4 + 2) = v85;
  v4 += 10;
  if ((v64 & 0x4000000) == 0)
  {
LABEL_187:
    if ((v64 & 0x8000000) == 0)
    {
      goto LABEL_188;
    }

    goto LABEL_259;
  }

LABEL_256:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v86 = *(a1 + 472);
  *v4 = 1001;
  *(v4 + 2) = v86;
  v4 += 10;
  if ((v64 & 0x8000000) == 0)
  {
LABEL_188:
    if ((v64 & 0x10000000) == 0)
    {
      goto LABEL_189;
    }

    goto LABEL_262;
  }

LABEL_259:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v87 = *(a1 + 480);
  *v4 = 1009;
  *(v4 + 2) = v87;
  v4 += 10;
  if ((v64 & 0x10000000) == 0)
  {
LABEL_189:
    if ((v64 & 0x20000000) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_265;
  }

LABEL_262:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v88 = *(a1 + 488);
  *v4 = 1017;
  *(v4 + 2) = v88;
  v4 += 10;
  if ((v64 & 0x20000000) == 0)
  {
LABEL_190:
    if ((v64 & 0x40000000) == 0)
    {
      goto LABEL_191;
    }

    goto LABEL_268;
  }

LABEL_265:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v89 = *(a1 + 496);
  *v4 = 1153;
  *(v4 + 2) = v89;
  v4 += 10;
  if ((v64 & 0x40000000) == 0)
  {
LABEL_191:
    if ((v64 & 0x80000000) == 0)
    {
      goto LABEL_274;
    }

    goto LABEL_271;
  }

LABEL_268:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v90 = *(a1 + 504);
  *v4 = 1161;
  *(v4 + 2) = v90;
  v4 += 10;
  if (v64 < 0)
  {
LABEL_271:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v91 = *(a1 + 512);
    *v4 = 1169;
    *(v4 + 2) = v91;
    v4 += 10;
  }

LABEL_274:
  v92 = *(a1 + 24);
  if (v92)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v93 = *(a1 + 520);
    *v4 = 1177;
    *(v4 + 2) = v93;
    v4 += 10;
    if ((v92 & 2) == 0)
    {
LABEL_276:
      if ((v92 & 4) == 0)
      {
        goto LABEL_277;
      }

      goto LABEL_287;
    }
  }

  else if ((v92 & 2) == 0)
  {
    goto LABEL_276;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v94 = *(a1 + 528);
  *v4 = 1185;
  *(v4 + 2) = v94;
  v4 += 10;
  if ((v92 & 4) == 0)
  {
LABEL_277:
    if ((v92 & 8) == 0)
    {
      goto LABEL_278;
    }

    goto LABEL_290;
  }

LABEL_287:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v95 = *(a1 + 536);
  *v4 = 1193;
  *(v4 + 2) = v95;
  v4 += 10;
  if ((v92 & 8) == 0)
  {
LABEL_278:
    if ((v92 & 0x10) == 0)
    {
      goto LABEL_279;
    }

    goto LABEL_293;
  }

LABEL_290:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v96 = *(a1 + 544);
  *v4 = 1201;
  *(v4 + 2) = v96;
  v4 += 10;
  if ((v92 & 0x10) == 0)
  {
LABEL_279:
    if ((v92 & 0x20) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_296;
  }

LABEL_293:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v97 = *(a1 + 552);
  *v4 = 1209;
  *(v4 + 2) = v97;
  v4 += 10;
  if ((v92 & 0x20) != 0)
  {
LABEL_296:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v98 = *(a1 + 560);
    *v4 = 1217;
    *(v4 + 2) = v98;
    v4 += 10;
  }

LABEL_299:
  v99 = *(a1 + 20);
  if ((v99 & 0x2000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v100 = *(a1 + 389);
    *v4 = 1224;
    v4[2] = v100;
    v4 += 3;
    if ((v99 & 0x4000) == 0)
    {
LABEL_301:
      if ((v99 & 0x8000) == 0)
      {
        goto LABEL_312;
      }

      goto LABEL_309;
    }
  }

  else if ((v99 & 0x4000) == 0)
  {
    goto LABEL_301;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v101 = *(a1 + 390);
  *v4 = 1232;
  v4[2] = v101;
  v4 += 3;
  if ((v99 & 0x8000) != 0)
  {
LABEL_309:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v102 = *(a1 + 391);
    *v4 = 1240;
    v4[2] = v102;
    v4 += 3;
  }

LABEL_312:
  v103 = *(a1 + 24);
  if ((v103 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v104 = *(a1 + 568);
    *v4 = 1248;
    if (v104 > 0x7F)
    {
      v4[2] = v104 | 0x80;
      v105 = v104 >> 7;
      if (v104 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v105 | 0x80;
          v106 = v105 >> 7;
          ++v4;
          v107 = v105 >> 14;
          v105 >>= 7;
        }

        while (v107);
        *(v4 - 1) = v106;
        if ((v103 & 0x80) != 0)
        {
          goto LABEL_333;
        }
      }

      else
      {
        v4[3] = v105;
        v4 += 4;
        if ((v103 & 0x80) != 0)
        {
          goto LABEL_333;
        }
      }
    }

    else
    {
      v4[2] = v104;
      v4 += 3;
      if ((v103 & 0x80) != 0)
      {
        goto LABEL_333;
      }
    }

LABEL_314:
    if ((v103 & 0x100) == 0)
    {
      goto LABEL_315;
    }

    goto LABEL_336;
  }

  if ((v103 & 0x80) == 0)
  {
    goto LABEL_314;
  }

LABEL_333:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v108 = *(a1 + 572);
  *v4 = 1256;
  v4[2] = v108;
  v4 += 3;
  if ((v103 & 0x100) == 0)
  {
LABEL_315:
    if ((v103 & 0x200) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_339;
  }

LABEL_336:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v109 = *(a1 + 573);
  *v4 = 1264;
  v4[2] = v109;
  v4 += 3;
  if ((v103 & 0x200) == 0)
  {
LABEL_316:
    if ((v103 & 0x400) == 0)
    {
      goto LABEL_317;
    }

    goto LABEL_342;
  }

LABEL_339:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v110 = *(a1 + 576);
  *v4 = 1273;
  *(v4 + 2) = v110;
  v4 += 10;
  if ((v103 & 0x400) == 0)
  {
LABEL_317:
    if ((v103 & 0x800) == 0)
    {
      goto LABEL_318;
    }

    goto LABEL_345;
  }

LABEL_342:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v111 = *(a1 + 584);
  *v4 = 1409;
  *(v4 + 2) = v111;
  v4 += 10;
  if ((v103 & 0x800) == 0)
  {
LABEL_318:
    if ((v103 & 0x1000) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_348;
  }

LABEL_345:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v112 = *(a1 + 592);
  *v4 = 1417;
  *(v4 + 2) = v112;
  v4 += 10;
  if ((v103 & 0x1000) == 0)
  {
LABEL_319:
    if ((v103 & 0x2000) == 0)
    {
      goto LABEL_320;
    }

    goto LABEL_351;
  }

LABEL_348:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v113 = *(a1 + 600);
  *v4 = 1425;
  *(v4 + 2) = v113;
  v4 += 10;
  if ((v103 & 0x2000) == 0)
  {
LABEL_320:
    if ((v103 & 0x4000) == 0)
    {
      goto LABEL_357;
    }

    goto LABEL_354;
  }

LABEL_351:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v114 = *(a1 + 608);
  *v4 = 1433;
  *(v4 + 2) = v114;
  v4 += 10;
  if ((v103 & 0x4000) != 0)
  {
LABEL_354:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v115 = *(a1 + 616);
    *v4 = 1441;
    *(v4 + 2) = v115;
    v4 += 10;
  }

LABEL_357:
  if ((*(a1 + 17) & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v116 = *(a1 + 128);
    *v4 = 1450;
    v117 = *(v116 + 5);
    if (v117 > 0x7F)
    {
      v4[2] = v117 | 0x80;
      v119 = v117 >> 7;
      if (v117 >> 14)
      {
        v118 = v4 + 4;
        do
        {
          *(v118 - 1) = v119 | 0x80;
          v120 = v119 >> 7;
          ++v118;
          v121 = v119 >> 14;
          v119 >>= 7;
        }

        while (v121);
        *(v118 - 1) = v120;
      }

      else
      {
        v4[3] = v119;
        v118 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v117;
      v118 = v4 + 3;
    }

    v4 = TSP::Color::_InternalSerialize(v116, v118, a3);
  }

  v122 = *(a1 + 24);
  if ((v122 & 0x8000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v123 = *(a1 + 624);
    *v4 = 1457;
    *(v4 + 2) = v123;
    v4 += 10;
    if ((v122 & 0x10000) == 0)
    {
LABEL_370:
      if ((v122 & 0x20000) == 0)
      {
        goto LABEL_371;
      }

      goto LABEL_392;
    }
  }

  else if ((v122 & 0x10000) == 0)
  {
    goto LABEL_370;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v124 = *(a1 + 632);
  *v4 = 1465;
  *(v4 + 2) = v124;
  v4 += 10;
  if ((v122 & 0x20000) == 0)
  {
LABEL_371:
    if ((v122 & 0x40000) == 0)
    {
      goto LABEL_372;
    }

    goto LABEL_395;
  }

LABEL_392:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v125 = *(a1 + 640);
  *v4 = 1473;
  *(v4 + 2) = v125;
  v4 += 10;
  if ((v122 & 0x40000) == 0)
  {
LABEL_372:
    if ((v122 & 0x80000) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_398;
  }

LABEL_395:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v126 = *(a1 + 648);
  *v4 = 1481;
  *(v4 + 2) = v126;
  v4 += 10;
  if ((v122 & 0x80000) == 0)
  {
LABEL_373:
    if ((v122 & 0x100000) == 0)
    {
      goto LABEL_374;
    }

    goto LABEL_401;
  }

LABEL_398:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v127 = *(a1 + 656);
  *v4 = 1489;
  *(v4 + 2) = v127;
  v4 += 10;
  if ((v122 & 0x100000) == 0)
  {
LABEL_374:
    if ((v122 & 0x200000) == 0)
    {
      goto LABEL_375;
    }

    goto LABEL_404;
  }

LABEL_401:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v128 = *(a1 + 664);
  *v4 = 1497;
  *(v4 + 2) = v128;
  v4 += 10;
  if ((v122 & 0x200000) == 0)
  {
LABEL_375:
    if ((v122 & 0x400000) == 0)
    {
      goto LABEL_376;
    }

    goto LABEL_407;
  }

LABEL_404:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v129 = *(a1 + 672);
  *v4 = 1505;
  *(v4 + 2) = v129;
  v4 += 10;
  if ((v122 & 0x400000) == 0)
  {
LABEL_376:
    if ((v122 & 0x800000) == 0)
    {
      goto LABEL_377;
    }

    goto LABEL_410;
  }

LABEL_407:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v130 = *(a1 + 680);
  *v4 = 1513;
  *(v4 + 2) = v130;
  v4 += 10;
  if ((v122 & 0x800000) == 0)
  {
LABEL_377:
    if ((v122 & 0x1000000) == 0)
    {
      goto LABEL_378;
    }

    goto LABEL_413;
  }

LABEL_410:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v131 = *(a1 + 688);
  *v4 = 1521;
  *(v4 + 2) = v131;
  v4 += 10;
  if ((v122 & 0x1000000) == 0)
  {
LABEL_378:
    if ((v122 & 0x2000000) == 0)
    {
      goto LABEL_379;
    }

    goto LABEL_416;
  }

LABEL_413:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v132 = *(a1 + 696);
  *v4 = 1529;
  *(v4 + 2) = v132;
  v4 += 10;
  if ((v122 & 0x2000000) == 0)
  {
LABEL_379:
    if ((v122 & 0x4000000) == 0)
    {
      goto LABEL_380;
    }

    goto LABEL_419;
  }

LABEL_416:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v133 = *(a1 + 704);
  *v4 = 1665;
  *(v4 + 2) = v133;
  v4 += 10;
  if ((v122 & 0x4000000) == 0)
  {
LABEL_380:
    if ((v122 & 0x8000000) == 0)
    {
      goto LABEL_381;
    }

    goto LABEL_422;
  }

LABEL_419:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v134 = *(a1 + 712);
  *v4 = 1673;
  *(v4 + 2) = v134;
  v4 += 10;
  if ((v122 & 0x8000000) == 0)
  {
LABEL_381:
    if ((v122 & 0x10000000) == 0)
    {
      goto LABEL_382;
    }

    goto LABEL_425;
  }

LABEL_422:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v135 = *(a1 + 720);
  *v4 = 1681;
  *(v4 + 2) = v135;
  v4 += 10;
  if ((v122 & 0x10000000) == 0)
  {
LABEL_382:
    if ((v122 & 0x20000000) == 0)
    {
      goto LABEL_383;
    }

    goto LABEL_428;
  }

LABEL_425:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v136 = *(a1 + 728);
  *v4 = 1689;
  *(v4 + 2) = v136;
  v4 += 10;
  if ((v122 & 0x20000000) == 0)
  {
LABEL_383:
    if ((v122 & 0x40000000) == 0)
    {
      goto LABEL_384;
    }

    goto LABEL_431;
  }

LABEL_428:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v137 = *(a1 + 736);
  *v4 = 1697;
  *(v4 + 2) = v137;
  v4 += 10;
  if ((v122 & 0x40000000) == 0)
  {
LABEL_384:
    if ((v122 & 0x80000000) == 0)
    {
      goto LABEL_437;
    }

    goto LABEL_434;
  }

LABEL_431:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v138 = *(a1 + 744);
  *v4 = 1705;
  *(v4 + 2) = v138;
  v4 += 10;
  if (v122 < 0)
  {
LABEL_434:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v139 = *(a1 + 752);
    *v4 = 1713;
    *(v4 + 2) = v139;
    v4 += 10;
  }

LABEL_437:
  v140 = *(a1 + 28);
  if ((v140 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v141 = *(a1 + 800);
    *v4 = 1720;
    if (v141 > 0x7F)
    {
      v4[2] = v141 | 0x80;
      v142 = v141 >> 7;
      if (v141 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v142 | 0x80;
          v143 = v142 >> 7;
          ++v4;
          v144 = v142 >> 14;
          v142 >>= 7;
        }

        while (v144);
        *(v4 - 1) = v143;
        if (v140)
        {
          goto LABEL_460;
        }
      }

      else
      {
        v4[3] = v142;
        v4 += 4;
        if (v140)
        {
          goto LABEL_460;
        }
      }
    }

    else
    {
      v4[2] = v141;
      v4 += 3;
      if (v140)
      {
        goto LABEL_460;
      }
    }

LABEL_439:
    if ((v140 & 2) == 0)
    {
      goto LABEL_440;
    }

    goto LABEL_463;
  }

  if ((v140 & 1) == 0)
  {
    goto LABEL_439;
  }

LABEL_460:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v145 = *(a1 + 760);
  *v4 = 1729;
  *(v4 + 2) = v145;
  v4 += 10;
  if ((v140 & 2) == 0)
  {
LABEL_440:
    if ((v140 & 4) == 0)
    {
      goto LABEL_441;
    }

    goto LABEL_466;
  }

LABEL_463:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v146 = *(a1 + 768);
  *v4 = 1737;
  *(v4 + 2) = v146;
  v4 += 10;
  if ((v140 & 4) == 0)
  {
LABEL_441:
    if ((v140 & 8) == 0)
    {
      goto LABEL_442;
    }

    goto LABEL_469;
  }

LABEL_466:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v147 = *(a1 + 776);
  *v4 = 1745;
  *(v4 + 2) = v147;
  v4 += 10;
  if ((v140 & 8) == 0)
  {
LABEL_442:
    if ((v140 & 0x10) == 0)
    {
      goto LABEL_443;
    }

    goto LABEL_472;
  }

LABEL_469:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v148 = *(a1 + 784);
  *v4 = 1753;
  *(v4 + 2) = v148;
  v4 += 10;
  if ((v140 & 0x10) == 0)
  {
LABEL_443:
    if ((v140 & 0x80) == 0)
    {
      goto LABEL_444;
    }

    goto LABEL_475;
  }

LABEL_472:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v149 = *(a1 + 792);
  *v4 = 1761;
  *(v4 + 2) = v149;
  v4 += 10;
  if ((v140 & 0x80) == 0)
  {
LABEL_444:
    if ((v140 & 0x100) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_478;
  }

LABEL_475:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v150 = *(a1 + 808);
  *v4 = 1769;
  *(v4 + 2) = v150;
  v4 += 10;
  if ((v140 & 0x100) == 0)
  {
LABEL_445:
    if ((v140 & 0x200) == 0)
    {
      goto LABEL_446;
    }

    goto LABEL_481;
  }

LABEL_478:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v151 = *(a1 + 816);
  *v4 = 1777;
  *(v4 + 2) = v151;
  v4 += 10;
  if ((v140 & 0x200) == 0)
  {
LABEL_446:
    if ((v140 & 0x400) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_484;
  }

LABEL_481:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v152 = *(a1 + 824);
  *v4 = 1785;
  *(v4 + 2) = v152;
  v4 += 10;
  if ((v140 & 0x400) == 0)
  {
LABEL_447:
    if ((v140 & 0x40) == 0)
    {
      goto LABEL_496;
    }

    goto LABEL_487;
  }

LABEL_484:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v153 = *(a1 + 832);
  *v4 = 1921;
  *(v4 + 2) = v153;
  v4 += 10;
  if ((v140 & 0x40) != 0)
  {
LABEL_487:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v154 = *(a1 + 804);
    *v4 = 1928;
    if (v154 > 0x7F)
    {
      v4[2] = v154 | 0x80;
      v155 = v154 >> 7;
      if (v154 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v155 | 0x80;
          v156 = v155 >> 7;
          ++v4;
          v157 = v155 >> 14;
          v155 >>= 7;
        }

        while (v157);
        *(v4 - 1) = v156;
      }

      else
      {
        v4[3] = v155;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v154;
      v4 += 3;
    }
  }

LABEL_496:
  v158 = *(a1 + 8);
  if ((v158 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v158 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E1CFC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v4 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v38 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    v39 = *(v38 + 23);
    v40 = *(v38 + 8);
    if ((v39 & 0x80u) == 0)
    {
      v40 = v39;
    }

    v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_257;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v41 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v41 + 23);
  v43 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v43 = v42;
  }

  v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_260;
  }

LABEL_257:
  v44 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v44 + 23);
  v46 = *(v44 + 8);
  if ((v45 & 0x80u) == 0)
  {
    v46 = v45;
  }

  v3 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_263;
  }

LABEL_260:
  v47 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
  v48 = *(v47 + 23);
  v49 = *(v47 + 8);
  if ((v48 & 0x80u) == 0)
  {
    v49 = v48;
  }

  v3 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_263:
  v50 = TSD::FillArchive::ByteSizeLong(*(a1 + 88));
  v3 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = TSP::Color::ByteSizeLong(*(a1 + 96));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_19:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_34;
  }

  if ((v2 & 0x100) != 0)
  {
    v51 = TSP::Color::ByteSizeLong(*(a1 + 104));
    v3 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x200) == 0)
    {
LABEL_22:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_23;
      }

LABEL_267:
      v53 = TSP::Color::ByteSizeLong(*(a1 + 120));
      v3 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v2 & 0x800) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  v52 = TSP::Color::ByteSizeLong(*(a1 + 112));
  v3 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) != 0)
  {
    goto LABEL_267;
  }

LABEL_23:
  if ((v2 & 0x800) != 0)
  {
LABEL_24:
    v11 = TSP::Color::ByteSizeLong(*(a1 + 128));
    v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_25:
  v12 = v3 + 9;
  if ((v2 & 0x1000) == 0)
  {
    v12 = v3;
  }

  if ((v2 & 0x2000) != 0)
  {
    v12 += 9;
  }

  if ((v2 & 0x4000) != 0)
  {
    v12 += 9;
  }

  if ((v2 & 0x8000) != 0)
  {
    v3 = v12 + 9;
  }

  else
  {
    v3 = v12;
  }

LABEL_34:
  if ((v2 & 0xFF0000) != 0)
  {
    v13 = v3 + 9;
    if ((v2 & 0x10000) == 0)
    {
      v13 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v13 += 10;
    }

    if ((v2 & 0x40000) != 0)
    {
      v13 += 10;
    }

    if ((v2 & 0x80000) != 0)
    {
      v13 += 10;
    }

    if ((v2 & 0x100000) != 0)
    {
      v13 += 10;
    }

    if ((v2 & 0x200000) != 0)
    {
      v13 += 10;
    }

    if ((v2 & 0x400000) != 0)
    {
      v13 += 10;
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v13 + 10;
    }

    else
    {
      v3 = v13;
    }
  }

  if (HIBYTE(v2))
  {
    v14 = v3 + 10;
    if ((v2 & 0x1000000) == 0)
    {
      v14 = v3;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v14 += 10;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v14 += 10;
    }

    if ((v2 & 0x8000000) != 0)
    {
      v14 += 10;
    }

    if ((v2 & 0x10000000) != 0)
    {
      v14 += 10;
    }

    if ((v2 & 0x20000000) != 0)
    {
      v14 += 10;
    }

    if ((v2 & 0x40000000) != 0)
    {
      v14 += 10;
    }

    if (v2 >= 0)
    {
      v3 = v14;
    }

    else
    {
      v3 = v14 + 10;
    }
  }

  v15 = *(a1 + 20);
  if (v15)
  {
    v16 = v3 + 10;
    if ((v15 & 1) == 0)
    {
      v16 = v3;
    }

    if ((v15 & 2) != 0)
    {
      v16 += 10;
    }

    if ((v15 & 4) != 0)
    {
      v16 += 10;
    }

    if ((v15 & 8) != 0)
    {
      v16 += 10;
    }

    if ((v15 & 0x10) != 0)
    {
      v16 += 10;
    }

    if ((v15 & 0x20) != 0)
    {
      v16 += 10;
    }

    if ((v15 & 0x40) != 0)
    {
      v16 += 10;
    }

    if ((v15 & 0x80) != 0)
    {
      v3 = v16 + 10;
    }

    else
    {
      v3 = v16;
    }
  }

  if ((v15 & 0xFF00) != 0)
  {
    v17 = v3 + 10;
    if ((v15 & 0x100) == 0)
    {
      v17 = v3;
    }

    if ((v15 & 0x200) != 0)
    {
      v17 += 10;
    }

    if ((v15 & 0x400) != 0)
    {
      v17 += 10;
    }

    if ((v15 & 0x800) != 0)
    {
      v18 = *(a1 + 384);
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 11;
      }

      v17 += v20;
    }

    if ((v15 & 0x1000) != 0)
    {
      v17 += 3;
    }

    if ((v15 & 0x2000) != 0)
    {
      v17 += 3;
    }

    if ((v15 & 0x4000) != 0)
    {
      v17 += 3;
    }

    if ((v15 & 0x8000) != 0)
    {
      v3 = v17 + 3;
    }

    else
    {
      v3 = v17;
    }
  }

  if ((v15 & 0xFF0000) != 0)
  {
    v21 = v3 + 10;
    if ((v15 & 0x10000) == 0)
    {
      v21 = v3;
    }

    if ((v15 & 0x20000) != 0)
    {
      v21 += 10;
    }

    if ((v15 & 0x40000) != 0)
    {
      v21 += 10;
    }

    if ((v15 & 0x80000) != 0)
    {
      v21 += 10;
    }

    if ((v15 & 0x100000) != 0)
    {
      v21 += 10;
    }

    if ((v15 & 0x200000) != 0)
    {
      v21 += 10;
    }

    if ((v15 & 0x400000) != 0)
    {
      v21 += 10;
    }

    if ((v15 & 0x800000) != 0)
    {
      v3 = v21 + 10;
    }

    else
    {
      v3 = v21;
    }
  }

  if (HIBYTE(v15))
  {
    v22 = v3 + 10;
    if ((v15 & 0x1000000) == 0)
    {
      v22 = v3;
    }

    if ((v15 & 0x2000000) != 0)
    {
      v22 += 10;
    }

    if ((v15 & 0x4000000) != 0)
    {
      v22 += 10;
    }

    if ((v15 & 0x8000000) != 0)
    {
      v22 += 10;
    }

    if ((v15 & 0x10000000) != 0)
    {
      v22 += 10;
    }

    if ((v15 & 0x20000000) != 0)
    {
      v22 += 10;
    }

    if ((v15 & 0x40000000) != 0)
    {
      v22 += 10;
    }

    if (v15 >= 0)
    {
      v3 = v22;
    }

    else
    {
      v3 = v22 + 10;
    }
  }

  v23 = *(a1 + 24);
  if (v23)
  {
    v24 = v3 + 10;
    if ((v23 & 1) == 0)
    {
      v24 = v3;
    }

    if ((v23 & 2) != 0)
    {
      v24 += 10;
    }

    if ((v23 & 4) != 0)
    {
      v24 += 10;
    }

    if ((v23 & 8) != 0)
    {
      v24 += 10;
    }

    if ((v23 & 0x10) != 0)
    {
      v24 += 10;
    }

    if ((v23 & 0x20) != 0)
    {
      v24 += 10;
    }

    if ((v23 & 0x40) != 0)
    {
      v24 += ((9 * (__clz(*(a1 + 568) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v23 & 0x80) != 0)
    {
      v3 = v24 + 3;
    }

    else
    {
      v3 = v24;
    }
  }

  if ((v23 & 0xFF00) != 0)
  {
    v25 = v3 + 3;
    if ((v23 & 0x100) == 0)
    {
      v25 = v3;
    }

    if ((v23 & 0x200) != 0)
    {
      v25 += 10;
    }

    if ((v23 & 0x400) != 0)
    {
      v25 += 10;
    }

    if ((v23 & 0x800) != 0)
    {
      v25 += 10;
    }

    if ((v23 & 0x1000) != 0)
    {
      v25 += 10;
    }

    if ((v23 & 0x2000) != 0)
    {
      v25 += 10;
    }

    if ((v23 & 0x4000) != 0)
    {
      v25 += 10;
    }

    if ((v23 & 0x8000) != 0)
    {
      v3 = v25 + 10;
    }

    else
    {
      v3 = v25;
    }
  }

  if ((v23 & 0xFF0000) != 0)
  {
    v26 = v3 + 10;
    if ((v23 & 0x10000) == 0)
    {
      v26 = v3;
    }

    if ((v23 & 0x20000) != 0)
    {
      v26 += 10;
    }

    if ((v23 & 0x40000) != 0)
    {
      v26 += 10;
    }

    if ((v23 & 0x80000) != 0)
    {
      v26 += 10;
    }

    if ((v23 & 0x100000) != 0)
    {
      v26 += 10;
    }

    if ((v23 & 0x200000) != 0)
    {
      v26 += 10;
    }

    if ((v23 & 0x400000) != 0)
    {
      v26 += 10;
    }

    if ((v23 & 0x800000) != 0)
    {
      v3 = v26 + 10;
    }

    else
    {
      v3 = v26;
    }
  }

  if (HIBYTE(v23))
  {
    v27 = v3 + 10;
    if ((v23 & 0x1000000) == 0)
    {
      v27 = v3;
    }

    if ((v23 & 0x2000000) != 0)
    {
      v27 += 10;
    }

    if ((v23 & 0x4000000) != 0)
    {
      v27 += 10;
    }

    if ((v23 & 0x8000000) != 0)
    {
      v27 += 10;
    }

    if ((v23 & 0x10000000) != 0)
    {
      v27 += 10;
    }

    if ((v23 & 0x20000000) != 0)
    {
      v27 += 10;
    }

    if ((v23 & 0x40000000) != 0)
    {
      v27 += 10;
    }

    if (v23 >= 0)
    {
      v3 = v27;
    }

    else
    {
      v3 = v27 + 10;
    }
  }

  v28 = *(a1 + 28);
  if (v28)
  {
    v29 = v3 + 10;
    if ((v28 & 1) == 0)
    {
      v29 = v3;
    }

    if ((v28 & 2) != 0)
    {
      v29 += 10;
    }

    if ((v28 & 4) != 0)
    {
      v29 += 10;
    }

    if ((v28 & 8) != 0)
    {
      v29 += 10;
    }

    if ((v28 & 0x10) != 0)
    {
      v29 += 10;
    }

    if ((v28 & 0x20) != 0)
    {
      v30 = *(a1 + 800);
      v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v30 >= 0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 12;
      }

      v29 += v32;
    }

    if ((v28 & 0x40) != 0)
    {
      v33 = *(a1 + 804);
      v34 = ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v33 >= 0)
      {
        v35 = v34;
      }

      else
      {
        v35 = 12;
      }

      v29 += v35;
    }

    if ((v28 & 0x80) != 0)
    {
      v3 = v29 + 10;
    }

    else
    {
      v3 = v29;
    }
  }

  if ((v28 & 0x700) != 0)
  {
    v36 = v3 + 10;
    if ((v28 & 0x100) == 0)
    {
      v36 = v3;
    }

    if ((v28 & 0x200) != 0)
    {
      v36 += 10;
    }

    if ((v28 & 0x400) != 0)
    {
      v3 = v36 + 10;
    }

    else
    {
      v3 = v36;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 32);
  }

  else
  {
    *(a1 + 32) = v3;
    return v3;
  }
}

uint64_t sub_275E1D89C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8288, 0);
  if (v4)
  {

    return sub_275E1D944(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E1D944(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_35;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(v3 + 16) |= 2u;
  result = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v3 + 16) |= 4u;
  result = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v3 + 16) |= 8u;
  result = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    *(v3 + 16) |= 0x20u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    goto LABEL_19;
  }

LABEL_17:
  *(v3 + 16) |= 0x10u;
  result = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_19:
  *(v3 + 16) |= 0x40u;
  v6 = *(v3 + 88);
  if (!v6)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x277C8EF70](v7);
    *(v3 + 88) = v6;
  }

  if (*(a2 + 88))
  {
    v8 = *(a2 + 88);
  }

  else
  {
    v8 = MEMORY[0x277D80488];
  }

  result = TSD::FillArchive::MergeFrom(v6, v8);
  if ((v5 & 0x80) != 0)
  {
LABEL_27:
    *(v3 + 16) |= 0x80u;
    v9 = *(v3 + 96);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C8F010](v10);
      *(v3 + 96) = v9;
    }

    if (*(a2 + 96))
    {
      v11 = *(a2 + 96);
    }

    else
    {
      v11 = MEMORY[0x277D809E8];
    }

    result = TSP::Color::MergeFrom(v9, v11);
  }

LABEL_35:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_46;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v15 = *(v3 + 104);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C8F010](v16);
      *(v3 + 104) = v15;
    }

    if (*(a2 + 104))
    {
      v17 = *(a2 + 104);
    }

    else
    {
      v17 = MEMORY[0x277D809E8];
    }

    result = TSP::Color::MergeFrom(v15, v17);
    if ((v5 & 0x200) == 0)
    {
LABEL_38:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_187;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  *(v3 + 16) |= 0x200u;
  v18 = *(v3 + 112);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = MEMORY[0x277C8F010](v19);
    *(v3 + 112) = v18;
  }

  if (*(a2 + 112))
  {
    v20 = *(a2 + 112);
  }

  else
  {
    v20 = MEMORY[0x277D809E8];
  }

  result = TSP::Color::MergeFrom(v18, v20);
  if ((v5 & 0x400) == 0)
  {
LABEL_39:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_195;
  }

LABEL_187:
  *(v3 + 16) |= 0x400u;
  v21 = *(v3 + 120);
  if (!v21)
  {
    v22 = *(v3 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x277C8F010](v22);
    *(v3 + 120) = v21;
  }

  if (*(a2 + 120))
  {
    v23 = *(a2 + 120);
  }

  else
  {
    v23 = MEMORY[0x277D809E8];
  }

  result = TSP::Color::MergeFrom(v21, v23);
  if ((v5 & 0x800) == 0)
  {
LABEL_40:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_203;
  }

LABEL_195:
  *(v3 + 16) |= 0x800u;
  v24 = *(v3 + 128);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x277C8F010](v25);
    *(v3 + 128) = v24;
  }

  if (*(a2 + 128))
  {
    v26 = *(a2 + 128);
  }

  else
  {
    v26 = MEMORY[0x277D809E8];
  }

  result = TSP::Color::MergeFrom(v24, v26);
  if ((v5 & 0x1000) == 0)
  {
LABEL_41:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_204;
  }

LABEL_203:
  *(v3 + 136) = *(a2 + 136);
  if ((v5 & 0x2000) == 0)
  {
LABEL_42:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

LABEL_205:
    *(v3 + 152) = *(a2 + 152);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_204:
  *(v3 + 144) = *(a2 + 144);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_205;
  }

LABEL_43:
  if ((v5 & 0x8000) != 0)
  {
LABEL_44:
    *(v3 + 160) = *(a2 + 160);
  }

LABEL_45:
  *(v3 + 16) |= v5;
LABEL_46:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_57;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 168) = *(a2 + 168);
    if ((v5 & 0x20000) == 0)
    {
LABEL_49:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_209;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_49;
  }

  *(v3 + 176) = *(a2 + 176);
  if ((v5 & 0x40000) == 0)
  {
LABEL_50:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_210;
  }

LABEL_209:
  *(v3 + 184) = *(a2 + 184);
  if ((v5 & 0x80000) == 0)
  {
LABEL_51:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_211;
  }

LABEL_210:
  *(v3 + 192) = *(a2 + 192);
  if ((v5 & 0x100000) == 0)
  {
LABEL_52:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_212;
  }

LABEL_211:
  *(v3 + 200) = *(a2 + 200);
  if ((v5 & 0x200000) == 0)
  {
LABEL_53:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_54;
    }

LABEL_213:
    *(v3 + 216) = *(a2 + 216);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_212:
  *(v3 + 208) = *(a2 + 208);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_213;
  }

LABEL_54:
  if ((v5 & 0x800000) != 0)
  {
LABEL_55:
    *(v3 + 224) = *(a2 + 224);
  }

LABEL_56:
  *(v3 + 16) |= v5;
LABEL_57:
  if (!HIBYTE(v5))
  {
    goto LABEL_67;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 232) = *(a2 + 232);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_60:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_276;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_60;
  }

  *(v3 + 240) = *(a2 + 240);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_61:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_277;
  }

LABEL_276:
  *(v3 + 248) = *(a2 + 248);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_62:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_278;
  }

LABEL_277:
  *(v3 + 256) = *(a2 + 256);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_63:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_279;
  }

LABEL_278:
  *(v3 + 264) = *(a2 + 264);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_64:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_65;
    }

LABEL_280:
    *(v3 + 280) = *(a2 + 280);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_281:
    *(v3 + 288) = *(a2 + 288);
    goto LABEL_66;
  }

LABEL_279:
  *(v3 + 272) = *(a2 + 272);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_280;
  }

LABEL_65:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_281;
  }

LABEL_66:
  *(v3 + 16) |= v5;
LABEL_67:
  v12 = *(a2 + 20);
  if (!v12)
  {
    goto LABEL_78;
  }

  if (v12)
  {
    *(v3 + 296) = *(a2 + 296);
    if ((v12 & 2) == 0)
    {
LABEL_70:
      if ((v12 & 4) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_217;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_70;
  }

  *(v3 + 304) = *(a2 + 304);
  if ((v12 & 4) == 0)
  {
LABEL_71:
    if ((v12 & 8) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_218;
  }

LABEL_217:
  *(v3 + 312) = *(a2 + 312);
  if ((v12 & 8) == 0)
  {
LABEL_72:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_219;
  }

LABEL_218:
  *(v3 + 320) = *(a2 + 320);
  if ((v12 & 0x10) == 0)
  {
LABEL_73:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_220;
  }

LABEL_219:
  *(v3 + 328) = *(a2 + 328);
  if ((v12 & 0x20) == 0)
  {
LABEL_74:
    if ((v12 & 0x40) == 0)
    {
      goto LABEL_75;
    }

LABEL_221:
    *(v3 + 344) = *(a2 + 344);
    if ((v12 & 0x80) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

LABEL_220:
  *(v3 + 336) = *(a2 + 336);
  if ((v12 & 0x40) != 0)
  {
    goto LABEL_221;
  }

LABEL_75:
  if ((v12 & 0x80) != 0)
  {
LABEL_76:
    *(v3 + 352) = *(a2 + 352);
  }

LABEL_77:
  *(v3 + 20) |= v12;
LABEL_78:
  if ((v12 & 0xFF00) == 0)
  {
    goto LABEL_89;
  }

  if ((v12 & 0x100) != 0)
  {
    *(v3 + 360) = *(a2 + 360);
    if ((v12 & 0x200) == 0)
    {
LABEL_81:
      if ((v12 & 0x400) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_225;
    }
  }

  else if ((v12 & 0x200) == 0)
  {
    goto LABEL_81;
  }

  *(v3 + 368) = *(a2 + 368);
  if ((v12 & 0x400) == 0)
  {
LABEL_82:
    if ((v12 & 0x800) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_226;
  }

LABEL_225:
  *(v3 + 376) = *(a2 + 376);
  if ((v12 & 0x800) == 0)
  {
LABEL_83:
    if ((v12 & 0x1000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_227;
  }

LABEL_226:
  *(v3 + 384) = *(a2 + 384);
  if ((v12 & 0x1000) == 0)
  {
LABEL_84:
    if ((v12 & 0x2000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_228;
  }

LABEL_227:
  *(v3 + 388) = *(a2 + 388);
  if ((v12 & 0x2000) == 0)
  {
LABEL_85:
    if ((v12 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

LABEL_229:
    *(v3 + 390) = *(a2 + 390);
    if ((v12 & 0x8000) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_87;
  }

LABEL_228:
  *(v3 + 389) = *(a2 + 389);
  if ((v12 & 0x4000) != 0)
  {
    goto LABEL_229;
  }

LABEL_86:
  if ((v12 & 0x8000) != 0)
  {
LABEL_87:
    *(v3 + 391) = *(a2 + 391);
  }

LABEL_88:
  *(v3 + 20) |= v12;
LABEL_89:
  if ((v12 & 0xFF0000) == 0)
  {
    goto LABEL_100;
  }

  if ((v12 & 0x10000) != 0)
  {
    *(v3 + 392) = *(a2 + 392);
    if ((v12 & 0x20000) == 0)
    {
LABEL_92:
      if ((v12 & 0x40000) == 0)
      {
        goto LABEL_93;
      }

      goto LABEL_233;
    }
  }

  else if ((v12 & 0x20000) == 0)
  {
    goto LABEL_92;
  }

  *(v3 + 400) = *(a2 + 400);
  if ((v12 & 0x40000) == 0)
  {
LABEL_93:
    if ((v12 & 0x80000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_234;
  }

LABEL_233:
  *(v3 + 408) = *(a2 + 408);
  if ((v12 & 0x80000) == 0)
  {
LABEL_94:
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_235;
  }

LABEL_234:
  *(v3 + 416) = *(a2 + 416);
  if ((v12 & 0x100000) == 0)
  {
LABEL_95:
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_236;
  }

LABEL_235:
  *(v3 + 424) = *(a2 + 424);
  if ((v12 & 0x200000) == 0)
  {
LABEL_96:
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_97;
    }

LABEL_237:
    *(v3 + 440) = *(a2 + 440);
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_98;
  }

LABEL_236:
  *(v3 + 432) = *(a2 + 432);
  if ((v12 & 0x400000) != 0)
  {
    goto LABEL_237;
  }

LABEL_97:
  if ((v12 & 0x800000) != 0)
  {
LABEL_98:
    *(v3 + 448) = *(a2 + 448);
  }

LABEL_99:
  *(v3 + 20) |= v12;
LABEL_100:
  if (!HIBYTE(v12))
  {
    goto LABEL_110;
  }

  if ((v12 & 0x1000000) != 0)
  {
    *(v3 + 456) = *(a2 + 456);
    if ((v12 & 0x2000000) == 0)
    {
LABEL_103:
      if ((v12 & 0x4000000) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_284;
    }
  }

  else if ((v12 & 0x2000000) == 0)
  {
    goto LABEL_103;
  }

  *(v3 + 464) = *(a2 + 464);
  if ((v12 & 0x4000000) == 0)
  {
LABEL_104:
    if ((v12 & 0x8000000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_285;
  }

LABEL_284:
  *(v3 + 472) = *(a2 + 472);
  if ((v12 & 0x8000000) == 0)
  {
LABEL_105:
    if ((v12 & 0x10000000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_286;
  }

LABEL_285:
  *(v3 + 480) = *(a2 + 480);
  if ((v12 & 0x10000000) == 0)
  {
LABEL_106:
    if ((v12 & 0x20000000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_287;
  }

LABEL_286:
  *(v3 + 488) = *(a2 + 488);
  if ((v12 & 0x20000000) == 0)
  {
LABEL_107:
    if ((v12 & 0x40000000) == 0)
    {
      goto LABEL_108;
    }

LABEL_288:
    *(v3 + 504) = *(a2 + 504);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_109;
    }

LABEL_289:
    *(v3 + 512) = *(a2 + 512);
    goto LABEL_109;
  }

LABEL_287:
  *(v3 + 496) = *(a2 + 496);
  if ((v12 & 0x40000000) != 0)
  {
    goto LABEL_288;
  }

LABEL_108:
  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_289;
  }

LABEL_109:
  *(v3 + 20) |= v12;
LABEL_110:
  v13 = *(a2 + 24);
  if (!v13)
  {
    goto LABEL_121;
  }

  if (v13)
  {
    *(v3 + 520) = *(a2 + 520);
    if ((v13 & 2) == 0)
    {
LABEL_113:
      if ((v13 & 4) == 0)
      {
        goto LABEL_114;
      }

      goto LABEL_241;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_113;
  }

  *(v3 + 528) = *(a2 + 528);
  if ((v13 & 4) == 0)
  {
LABEL_114:
    if ((v13 & 8) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_242;
  }

LABEL_241:
  *(v3 + 536) = *(a2 + 536);
  if ((v13 & 8) == 0)
  {
LABEL_115:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_243;
  }

LABEL_242:
  *(v3 + 544) = *(a2 + 544);
  if ((v13 & 0x10) == 0)
  {
LABEL_116:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_117;
    }

    goto LABEL_244;
  }

LABEL_243:
  *(v3 + 552) = *(a2 + 552);
  if ((v13 & 0x20) == 0)
  {
LABEL_117:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_118;
    }

LABEL_245:
    *(v3 + 568) = *(a2 + 568);
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_119;
  }

LABEL_244:
  *(v3 + 560) = *(a2 + 560);
  if ((v13 & 0x40) != 0)
  {
    goto LABEL_245;
  }

LABEL_118:
  if ((v13 & 0x80) != 0)
  {
LABEL_119:
    *(v3 + 572) = *(a2 + 572);
  }

LABEL_120:
  *(v3 + 24) |= v13;
LABEL_121:
  if ((v13 & 0xFF00) == 0)
  {
    goto LABEL_132;
  }

  if ((v13 & 0x100) != 0)
  {
    *(v3 + 573) = *(a2 + 573);
    if ((v13 & 0x200) == 0)
    {
LABEL_124:
      if ((v13 & 0x400) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_249;
    }
  }

  else if ((v13 & 0x200) == 0)
  {
    goto LABEL_124;
  }

  *(v3 + 576) = *(a2 + 576);
  if ((v13 & 0x400) == 0)
  {
LABEL_125:
    if ((v13 & 0x800) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_250;
  }

LABEL_249:
  *(v3 + 584) = *(a2 + 584);
  if ((v13 & 0x800) == 0)
  {
LABEL_126:
    if ((v13 & 0x1000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_251;
  }

LABEL_250:
  *(v3 + 592) = *(a2 + 592);
  if ((v13 & 0x1000) == 0)
  {
LABEL_127:
    if ((v13 & 0x2000) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_252;
  }

LABEL_251:
  *(v3 + 600) = *(a2 + 600);
  if ((v13 & 0x2000) == 0)
  {
LABEL_128:
    if ((v13 & 0x4000) == 0)
    {
      goto LABEL_129;
    }

LABEL_253:
    *(v3 + 616) = *(a2 + 616);
    if ((v13 & 0x8000) == 0)
    {
      goto LABEL_131;
    }

    goto LABEL_130;
  }

LABEL_252:
  *(v3 + 608) = *(a2 + 608);
  if ((v13 & 0x4000) != 0)
  {
    goto LABEL_253;
  }

LABEL_129:
  if ((v13 & 0x8000) != 0)
  {
LABEL_130:
    *(v3 + 624) = *(a2 + 624);
  }

LABEL_131:
  *(v3 + 24) |= v13;
LABEL_132:
  if ((v13 & 0xFF0000) == 0)
  {
    goto LABEL_143;
  }

  if ((v13 & 0x10000) != 0)
  {
    *(v3 + 632) = *(a2 + 632);
    if ((v13 & 0x20000) == 0)
    {
LABEL_135:
      if ((v13 & 0x40000) == 0)
      {
        goto LABEL_136;
      }

      goto LABEL_257;
    }
  }

  else if ((v13 & 0x20000) == 0)
  {
    goto LABEL_135;
  }

  *(v3 + 640) = *(a2 + 640);
  if ((v13 & 0x40000) == 0)
  {
LABEL_136:
    if ((v13 & 0x80000) == 0)
    {
      goto LABEL_137;
    }

    goto LABEL_258;
  }

LABEL_257:
  *(v3 + 648) = *(a2 + 648);
  if ((v13 & 0x80000) == 0)
  {
LABEL_137:
    if ((v13 & 0x100000) == 0)
    {
      goto LABEL_138;
    }

    goto LABEL_259;
  }

LABEL_258:
  *(v3 + 656) = *(a2 + 656);
  if ((v13 & 0x100000) == 0)
  {
LABEL_138:
    if ((v13 & 0x200000) == 0)
    {
      goto LABEL_139;
    }

    goto LABEL_260;
  }

LABEL_259:
  *(v3 + 664) = *(a2 + 664);
  if ((v13 & 0x200000) == 0)
  {
LABEL_139:
    if ((v13 & 0x400000) == 0)
    {
      goto LABEL_140;
    }

LABEL_261:
    *(v3 + 680) = *(a2 + 680);
    if ((v13 & 0x800000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_260:
  *(v3 + 672) = *(a2 + 672);
  if ((v13 & 0x400000) != 0)
  {
    goto LABEL_261;
  }

LABEL_140:
  if ((v13 & 0x800000) != 0)
  {
LABEL_141:
    *(v3 + 688) = *(a2 + 688);
  }

LABEL_142:
  *(v3 + 24) |= v13;
LABEL_143:
  if (!HIBYTE(v13))
  {
    goto LABEL_153;
  }

  if ((v13 & 0x1000000) != 0)
  {
    *(v3 + 696) = *(a2 + 696);
    if ((v13 & 0x2000000) == 0)
    {
LABEL_146:
      if ((v13 & 0x4000000) == 0)
      {
        goto LABEL_147;
      }

      goto LABEL_292;
    }
  }

  else if ((v13 & 0x2000000) == 0)
  {
    goto LABEL_146;
  }

  *(v3 + 704) = *(a2 + 704);
  if ((v13 & 0x4000000) == 0)
  {
LABEL_147:
    if ((v13 & 0x8000000) == 0)
    {
      goto LABEL_148;
    }

    goto LABEL_293;
  }

LABEL_292:
  *(v3 + 712) = *(a2 + 712);
  if ((v13 & 0x8000000) == 0)
  {
LABEL_148:
    if ((v13 & 0x10000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_294;
  }

LABEL_293:
  *(v3 + 720) = *(a2 + 720);
  if ((v13 & 0x10000000) == 0)
  {
LABEL_149:
    if ((v13 & 0x20000000) == 0)
    {
      goto LABEL_150;
    }

    goto LABEL_295;
  }

LABEL_294:
  *(v3 + 728) = *(a2 + 728);
  if ((v13 & 0x20000000) == 0)
  {
LABEL_150:
    if ((v13 & 0x40000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_296:
    *(v3 + 744) = *(a2 + 744);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_152;
    }

LABEL_297:
    *(v3 + 752) = *(a2 + 752);
    goto LABEL_152;
  }

LABEL_295:
  *(v3 + 736) = *(a2 + 736);
  if ((v13 & 0x40000000) != 0)
  {
    goto LABEL_296;
  }

LABEL_151:
  if ((v13 & 0x80000000) != 0)
  {
    goto LABEL_297;
  }

LABEL_152:
  *(v3 + 24) |= v13;
LABEL_153:
  v14 = *(a2 + 28);
  if (!v14)
  {
    goto LABEL_164;
  }

  if (v14)
  {
    *(v3 + 760) = *(a2 + 760);
    if ((v14 & 2) == 0)
    {
LABEL_156:
      if ((v14 & 4) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_265;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_156;
  }

  *(v3 + 768) = *(a2 + 768);
  if ((v14 & 4) == 0)
  {
LABEL_157:
    if ((v14 & 8) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_266;
  }

LABEL_265:
  *(v3 + 776) = *(a2 + 776);
  if ((v14 & 8) == 0)
  {
LABEL_158:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_267;
  }

LABEL_266:
  *(v3 + 784) = *(a2 + 784);
  if ((v14 & 0x10) == 0)
  {
LABEL_159:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_268;
  }

LABEL_267:
  *(v3 + 792) = *(a2 + 792);
  if ((v14 & 0x20) == 0)
  {
LABEL_160:
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_161;
    }

LABEL_269:
    *(v3 + 804) = *(a2 + 804);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_163;
    }

    goto LABEL_162;
  }

LABEL_268:
  *(v3 + 800) = *(a2 + 800);
  if ((v14 & 0x40) != 0)
  {
    goto LABEL_269;
  }

LABEL_161:
  if ((v14 & 0x80) != 0)
  {
LABEL_162:
    *(v3 + 808) = *(a2 + 808);
  }

LABEL_163:
  *(v3 + 28) |= v14;
LABEL_164:
  if ((v14 & 0x700) == 0)
  {
    return result;
  }

  if ((v14 & 0x100) == 0)
  {
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_167;
    }

LABEL_272:
    *(v3 + 824) = *(a2 + 824);
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_169;
    }

    goto LABEL_168;
  }

  *(v3 + 816) = *(a2 + 816);
  if ((v14 & 0x200) != 0)
  {
    goto LABEL_272;
  }

LABEL_167:
  if ((v14 & 0x400) != 0)
  {
LABEL_168:
    *(v3 + 832) = *(a2 + 832);
  }

LABEL_169:
  *(v3 + 28) |= v14;
  return result;
}

uint64_t *sub_275E1E3C4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E1AE1C(result);

    return sub_275E1D89C(v4, a2);
  }

  return result;
}

uint64_t sub_275E1E410(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x40) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSP::Color::IsInitialized(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSP::Color::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) != 0)
  {
    result = TSP::Color::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400) != 0)
  {
    result = TSP::Color::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(a1 + 128));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E1E4E8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D7BC8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA2A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t *sub_275E1E558(uint64_t *a1)
{
  if (a1 != &qword_2812EC138)
  {
    if (a1[3])
    {
      v2 = MEMORY[0x277C8EB10]();
      MEMORY[0x277C8F960](v2, 0x10A1C40AC828A93);
    }

    v3 = a1[4];
    if (v3)
    {
      v4 = sub_275E1ABB4(v3);
      MEMORY[0x277C8F960](v4, 0x10A1C406132D483);
    }

    v5 = a1[5];
    if (v5)
    {
      TSP::DataReference::~DataReference(v5);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E1E5FC(uint64_t *a1)
{
  sub_275E1E558(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E1E63C()
{
  if (atomic_load_explicit(dword_2812EA2A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EC138;
}

uint64_t *sub_275E1E67C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = TSS::StyleArchive::Clear(result[3]);
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

    result = sub_275E1AE1C(v1[4]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = TSP::DataReference::Clear(v1[5]);
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 10) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275E1E708(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v28) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 0xA)
      {
        if (v10 == 11)
        {
          if (v8 != 90)
          {
            goto LABEL_35;
          }

          *(a1 + 16) |= 2u;
          v21 = *(a1 + 32);
          if (!v21)
          {
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = sub_275E219FC(v22);
            *(a1 + 32) = v21;
            v7 = v28;
          }

          sub_275E5F44C(a3, v21, v7);
        }

        else
        {
          if (v10 != 12 || v8 != 98)
          {
            goto LABEL_35;
          }

          *(a1 + 16) |= 4u;
          v14 = *(a1 + 40);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C8EFD0](v15);
            LODWORD(v14) = v16;
            *(a1 + 40) = v16;
            v7 = v28;
          }

          v17 = sub_275E5C6DC(a3, v14, v7);
        }

LABEL_42:
        v28 = v17;
        if (!v17)
        {
          goto LABEL_50;
        }

        goto LABEL_43;
      }

      if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v18 = *(a1 + 24);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = MEMORY[0x277C8F060](v19);
            LODWORD(v18) = v20;
            *(a1 + 24) = v20;
            v7 = v28;
          }

          v17 = sub_275E5D270(a3, v18, v7);
          goto LABEL_42;
        }

LABEL_35:
        if (v8)
        {
          v23 = (v8 & 7) == 4;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v17 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_42;
      }

      if (v10 != 10 || v8 != 80)
      {
        goto LABEL_35;
      }

      v5 |= 8u;
      v11 = (v7 + 1);
      LODWORD(v12) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      v13 = *v11;
      v12 = (v12 + (v13 << 7) - 128);
      if ((v13 & 0x80000000) == 0)
      {
        v11 = (v7 + 2);
LABEL_14:
        v28 = v11;
        *(a1 + 48) = v12;
        goto LABEL_43;
      }

      v26 = google::protobuf::internal::VarintParseSlow32(v7, v12);
      v28 = v26;
      *(a1 + 48) = v27;
      if (!v26)
      {
LABEL_50:
        v28 = 0;
        goto LABEL_2;
      }

LABEL_43:
      if (sub_275E221E8(a3, &v28))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

unsigned __int8 *sub_275E1E9A0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 48);
    *a2 = 80;
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
        if ((v5 & 2) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_37;
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

  a2 = TSS::StyleArchive::_InternalSerialize(v6, v8, a3);
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(a1 + 32);
  *a2 = 90;
  v17 = *(v16 + 32);
  if (v17 > 0x7F)
  {
    a2[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v18 = a2 + 3;
      do
      {
        *(v18 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++v18;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(v18 - 1) = v20;
    }

    else
    {
      a2[2] = v19;
      v18 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v17;
    v18 = a2 + 2;
  }

  a2 = sub_275E1B334(v16, v18, a3);
  if ((v5 & 4) != 0)
  {
LABEL_37:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(a1 + 40);
    *a2 = 98;
    v23 = *(v22 + 5);
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

    a2 = TSP::DataReference::_InternalSerialize(v22, v24, a3);
  }

LABEL_47:
  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
}