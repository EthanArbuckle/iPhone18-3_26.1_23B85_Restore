uint64_t *sub_275E03808(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E02338(result);

    return sub_275E03424(v4, a2);
  }

  return result;
}

uint64_t sub_275E03854(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_275E03964(a1 + 72);
  if (result)
  {
    v9 = *(a1 + 104);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = TSP::Reference::IsInitialized(*(*(a1 + 112) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(a1 + 16);
    if ((v12 & 2) != 0)
    {
      result = TSS::ThemeArchive::IsInitialized(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 16);
    }

    if ((v12 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 16);
    }

    if ((v12 & 8) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 144));
      if (!result)
      {
        return result;
      }

      v12 = *(a1 + 16);
    }

    if ((v12 & 0x10) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 152));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_275E03964(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSD::PathSourceArchive::IsInitialized(*(v4 + 32)) & 1) != 0);
  return v3 < 1;
}

void *sub_275E03A04(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D65C8;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EA798, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_275E03A90(void *a1)
{
  if (a1 != qword_2812EB558)
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

void sub_275E03B00(void *a1)
{
  sub_275E03A90(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E03B40(uint64_t *result)
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

google::protobuf::internal *sub_275E03BD0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = v5 - 1;
      while (1)
      {
        v12 = (v11 + 1);
        v26 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v19 = *(a1 + 32);
        v14 = *v13;
        if (v19 < *v13)
        {
          *(a1 + 32) = v19 + 1;
          v16 = *&v13[2 * v19 + 2];
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
        v15 = MEMORY[0x277C8F050](*(a1 + 24));
        LODWORD(v16) = v15;
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v15;
        v12 = v26;
LABEL_26:
        v11 = sub_275E5B9DC(a3, v16, v12);
        v26 = v11;
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
      v20 = *(a1 + 48);
      if (!v20)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x277C8F050](v21);
        LODWORD(v20) = v22;
        *(a1 + 48) = v22;
        v5 = v26;
      }

      v10 = sub_275E5B9DC(a3, v20, v5);
      goto LABEL_37;
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
LABEL_37:
    v26 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v26;
}

unsigned __int8 *sub_275E03DF4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 48);
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
  }

  v19 = *(a1 + 8);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E03FB0(uint64_t a1)
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

uint64_t sub_275E0409C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7FA0, 0);
  if (v4)
  {

    return sub_275E04144(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E04144(uint64_t result, uint64_t a2)
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

      v11 = MEMORY[0x277C8F050](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 48);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v11, v13);
  }

  return result;
}

uint64_t *sub_275E04254(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E03B40(result);

    return sub_275E0409C(v4, a2);
  }

  return result;
}

uint64_t sub_275E042A0(uint64_t a1)
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

uint64_t sub_275E0433C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D6678;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA588, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 96) = xmmword_275E712E0;
  *(a1 + 112) = 0x408C200000000000;
  return a1;
}

void *sub_275E043D4(void *a1)
{
  sub_275E04408(a1);
  sub_275DE4968(a1 + 1);
  return a1;
}

void *sub_275E04408(void *result)
{
  if (result != &unk_2812EB590)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C8F960]();
    }

    v4 = v1[5];
    if (v4)
    {
      v5 = sub_275E03A90(v4);
      MEMORY[0x277C8F960](v5, 0x10A1C40D196C376);
    }

    v6 = v1[6];
    if (v6)
    {
      TSP::Size::~Size(v6);
      MEMORY[0x277C8F960]();
    }

    v7 = v1[7];
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x277C8F960]();
    }

    v8 = v1[8];
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x277C8F960]();
    }

    v9 = v1[9];
    if (v9)
    {
      TSP::Reference::~Reference(v9);
      MEMORY[0x277C8F960]();
    }

    result = v1[10];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275E0451C(void *a1)
{
  sub_275E043D4(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275E0455C()
{
  if (atomic_load_explicit(dword_2812EA588, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EB590;
}

uint64_t *sub_275E0459C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = TSP::Reference::Clear(result[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSP::Reference::Clear(v1[4]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = sub_275E03B40(v1[5]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = TSP::Size::Clear(v1[6]);
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    result = TSP::Reference::Clear(v1[8]);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = TSP::Reference::Clear(v1[7]);
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  result = TSP::Reference::Clear(v1[9]);
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSP::Reference::Clear(v1[10]);
  }

LABEL_11:
  if ((v2 & 0xFF00) != 0)
  {
    v1[11] = 0;
    *(v1 + 6) = xmmword_275E712E0;
    v1[14] = 0x408C200000000000;
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

google::protobuf::internal *sub_275E04698(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v59 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v59) & 1) == 0)
  {
    while (1)
    {
      v7 = (v59 + 1);
      v8 = *v59;
      if (*v59 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v59, (v9 - 128));
          v59 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_111;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v59 + 2);
      }

      v59 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (v10)
          {
            goto LABEL_77;
          }

          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C8F050](v11);
          LODWORD(v10) = v12;
          *(a1 + 24) = v12;
          goto LABEL_76;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 2u;
          v10 = *(a1 + 32);
          if (v10)
          {
            goto LABEL_77;
          }

          v29 = *(a1 + 8);
          if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
          }

          v30 = MEMORY[0x277C8F050](v29);
          LODWORD(v10) = v30;
          *(a1 + 32) = v30;
          goto LABEL_76;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 4u;
          v20 = *(a1 + 40);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = sub_275E2060C(v21);
            *(a1 + 40) = v20;
            v7 = v59;
          }

          v22 = sub_275E5D000(a3, v20, v7);
          goto LABEL_78;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 8u;
          v41 = *(a1 + 48);
          if (!v41)
          {
            v42 = *(a1 + 8);
            if (v42)
            {
              v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
            }

            v43 = MEMORY[0x277C8EFF0](v42);
            LODWORD(v41) = v43;
            *(a1 + 48) = v43;
            v7 = v59;
          }

          v22 = sub_275E5C60C(a3, v41, v7);
          goto LABEL_78;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x10u;
          v10 = *(a1 + 56);
          if (v10)
          {
            goto LABEL_77;
          }

          v44 = *(a1 + 8);
          if (v44)
          {
            v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
          }

          v45 = MEMORY[0x277C8F050](v44);
          LODWORD(v10) = v45;
          *(a1 + 56) = v45;
          goto LABEL_76;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_92;
          }

          v5 |= 0x200u;
          v24 = (v7 + 1);
          v23 = *v7;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v51 = google::protobuf::internal::VarintParseSlow64(v7, v23);
            v59 = v51;
            *(a1 + 92) = v52 != 0;
            if (!v51)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v24 = (v7 + 2);
LABEL_34:
            v59 = v24;
            *(a1 + 92) = v23 != 0;
          }

          goto LABEL_90;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x20u;
          v10 = *(a1 + 64);
          if (v10)
          {
            goto LABEL_77;
          }

          v31 = *(a1 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v32 = MEMORY[0x277C8F050](v31);
          LODWORD(v10) = v32;
          *(a1 + 64) = v32;
          goto LABEL_76;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_92;
          }

          v5 |= 0x400u;
          v34 = (v7 + 1);
          v33 = *v7;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_54;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v55 = google::protobuf::internal::VarintParseSlow64(v7, v33);
            v59 = v55;
            *(a1 + 93) = v56 != 0;
            if (!v55)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v34 = (v7 + 2);
LABEL_54:
            v59 = v34;
            *(a1 + 93) = v33 != 0;
          }

          goto LABEL_90;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_92;
          }

          v48 = (v7 + 1);
          v47 = *v7;
          if ((v47 & 0x8000000000000000) == 0)
          {
            goto LABEL_87;
          }

          v49 = *v48;
          v47 = (v49 << 7) + v47 - 128;
          if (v49 < 0)
          {
            v59 = google::protobuf::internal::VarintParseSlow64(v7, v47);
            if (!v59)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v48 = (v7 + 2);
LABEL_87:
            v59 = v48;
          }

          if (v47 > 2)
          {
            sub_275E5F7A8();
          }

          else
          {
            *(a1 + 16) |= 0x100u;
            *(a1 + 88) = v47;
          }

          goto LABEL_90;
        case 0xAu:
          if (v8 != 81)
          {
            goto LABEL_92;
          }

          v46 = *v7;
          v17 = (v7 + 8);
          v5 |= 0x2000u;
          *(a1 + 96) = v46;
          goto LABEL_82;
        case 0xBu:
          if (v8 != 89)
          {
            goto LABEL_92;
          }

          v18 = *v7;
          v17 = (v7 + 8);
          v5 |= 0x4000u;
          *(a1 + 104) = v18;
          goto LABEL_82;
        case 0xFu:
          if (v8 != 120)
          {
            goto LABEL_92;
          }

          v5 |= 0x800u;
          v27 = (v7 + 1);
          v26 = *v7;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v53 = google::protobuf::internal::VarintParseSlow64(v7, v26);
            v59 = v53;
            *(a1 + 94) = v54 != 0;
            if (!v53)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v27 = (v7 + 2);
LABEL_39:
            v59 = v27;
            *(a1 + 94) = v26 != 0;
          }

          goto LABEL_90;
        case 0x10u:
          if (v8 != 129)
          {
            goto LABEL_92;
          }

          v19 = *v7;
          v17 = (v7 + 8);
          v5 |= 0x8000u;
          *(a1 + 112) = v19;
LABEL_82:
          v59 = v17;
          goto LABEL_90;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x40u;
          v10 = *(a1 + 72);
          if (v10)
          {
            goto LABEL_77;
          }

          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x277C8F050](v15);
          LODWORD(v10) = v16;
          *(a1 + 72) = v16;
          goto LABEL_76;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_92;
          }

          v5 |= 0x1000u;
          v37 = (v7 + 1);
          v36 = *v7;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_59;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v57 = google::protobuf::internal::VarintParseSlow64(v7, v36);
            v59 = v57;
            *(a1 + 95) = v58 != 0;
            if (!v57)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v37 = (v7 + 2);
LABEL_59:
            v59 = v37;
            *(a1 + 95) = v36 != 0;
          }

          goto LABEL_90;
        case 0x13u:
          if (v8 != 154)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x80u;
          v10 = *(a1 + 80);
          if (v10)
          {
            goto LABEL_77;
          }

          v39 = *(a1 + 8);
          if (v39)
          {
            v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
          }

          v40 = MEMORY[0x277C8F050](v39);
          LODWORD(v10) = v40;
          *(a1 + 80) = v40;
LABEL_76:
          v7 = v59;
LABEL_77:
          v22 = sub_275E5B9DC(a3, v10, v7);
          goto LABEL_78;
        default:
LABEL_92:
          if (v8)
          {
            v50 = (v8 & 7) == 4;
          }

          else
          {
            v50 = 1;
          }

          if (v50)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v22 = google::protobuf::internal::UnknownFieldParse();
LABEL_78:
          v59 = v22;
          if (!v22)
          {
LABEL_111:
            v59 = 0;
            goto LABEL_2;
          }

LABEL_90:
          if (sub_275E221E8(a3, &v59))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v59;
}

unsigned __int8 *sub_275E04CF4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      goto LABEL_38;
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
      goto LABEL_5;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
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

  a2 = sub_275E03DF4(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_58;
  }

LABEL_48:
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

  a2 = TSP::Size::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_68;
  }

LABEL_58:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(a1 + 56);
  *a2 = 42;
  v31 = *(v30 + 5);
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

  a2 = TSP::Reference::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(a1 + 92);
  *a2 = 48;
  a2[1] = v36;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_81;
  }

LABEL_71:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v37 = *(a1 + 64);
  *a2 = 58;
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

  a2 = TSP::Reference::_InternalSerialize(v37, v39, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_84:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v44 = *(a1 + 88);
    *a2 = 72;
    if (v44 > 0x7F)
    {
      a2[1] = v44 | 0x80;
      v45 = v44 >> 7;
      if (v44 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v45 | 0x80;
          v46 = v45 >> 7;
          ++a2;
          v47 = v45 >> 14;
          v45 >>= 7;
        }

        while (v47);
        *(a2 - 1) = v46;
        if ((v5 & 0x2000) != 0)
        {
          goto LABEL_95;
        }
      }

      else
      {
        a2[2] = v45;
        a2 += 3;
        if ((v5 & 0x2000) != 0)
        {
          goto LABEL_95;
        }
      }
    }

    else
    {
      a2[1] = v44;
      a2 += 2;
      if ((v5 & 0x2000) != 0)
      {
        goto LABEL_95;
      }
    }

LABEL_11:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_98;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v43 = *(a1 + 93);
  *a2 = 64;
  a2[1] = v43;
  a2 += 2;
  if ((v5 & 0x100) != 0)
  {
    goto LABEL_84;
  }

LABEL_10:
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_11;
  }

LABEL_95:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(a1 + 96);
  *a2 = 81;
  *(a2 + 1) = v48;
  a2 += 9;
  if ((v5 & 0x4000) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_101;
  }

LABEL_98:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(a1 + 104);
  *a2 = 89;
  *(a2 + 1) = v49;
  a2 += 9;
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_104;
  }

LABEL_101:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(a1 + 94);
  *a2 = 120;
  a2[1] = v50;
  a2 += 2;
  if ((v5 & 0x8000) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_107;
  }

LABEL_104:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v51 = *(a1 + 112);
  *a2 = 385;
  *(a2 + 2) = v51;
  a2 += 10;
  if ((v5 & 0x40) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_117;
  }

LABEL_107:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v52 = *(a1 + 72);
  *a2 = 394;
  v53 = *(v52 + 5);
  if (v53 > 0x7F)
  {
    a2[2] = v53 | 0x80;
    v55 = v53 >> 7;
    if (v53 >> 14)
    {
      v54 = a2 + 4;
      do
      {
        *(v54 - 1) = v55 | 0x80;
        v56 = v55 >> 7;
        ++v54;
        v57 = v55 >> 14;
        v55 >>= 7;
      }

      while (v57);
      *(v54 - 1) = v56;
    }

    else
    {
      a2[3] = v55;
      v54 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v53;
    v54 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v52, v54, a3);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_120;
  }

LABEL_117:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v58 = *(a1 + 95);
  *a2 = 400;
  a2[2] = v58;
  a2 += 3;
  if ((v5 & 0x80) != 0)
  {
LABEL_120:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v59 = *(a1 + 80);
    *a2 = 410;
    v60 = *(v59 + 5);
    if (v60 > 0x7F)
    {
      a2[2] = v60 | 0x80;
      v62 = v60 >> 7;
      if (v60 >> 14)
      {
        v61 = a2 + 4;
        do
        {
          *(v61 - 1) = v62 | 0x80;
          v63 = v62 >> 7;
          ++v61;
          v64 = v62 >> 14;
          v62 >>= 7;
        }

        while (v64);
        *(v61 - 1) = v63;
      }

      else
      {
        a2[3] = v62;
        v61 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v60;
      v61 = a2 + 3;
    }

    a2 = TSP::Reference::_InternalSerialize(v59, v61, a3);
  }

LABEL_130:
  v65 = *(a1 + 8);
  if ((v65 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v65 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E05434(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    v5 = sub_275E03FB0(*(a1 + 40));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v8 = TSP::Size::ByteSizeLong(*(a1 + 48));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

  if ((v2 & 0x10) != 0)
  {
LABEL_8:
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 56));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_275E05538(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x1E) != 0)
  {
    v9 = sub_275E05434(a1);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 = sub_275E03FB0(*(a1 + 40));
    v4 = TSP::Size::ByteSizeLong(*(a1 + 48));
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 56));
    v6.i32[0] = v2 | 1;
    v6.i32[1] = v3 | 1;
    v6.i32[2] = v4 | 1;
    v6.i32[3] = v5 | 1;
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x4900000049;
    v8.i64[1] = 0x4900000049;
    v9 = v2 + v4 + v3 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v8, vmovn_s32(veorq_s8(vclzq_s32(v6), v7)), 0x9000900090009), 6uLL)) + v5 + 4;
  }

  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v9 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v10 & 0xE0) != 0)
  {
    if ((v10 & 0x20) != 0)
    {
      v18 = TSP::Reference::ByteSizeLong(*(a1 + 64));
      v9 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v10 & 0x40) == 0)
      {
LABEL_9:
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }
    }

    else if ((v10 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    v19 = TSP::Reference::ByteSizeLong(*(a1 + 72));
    v9 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v10 & 0x80) != 0)
    {
LABEL_10:
      v12 = TSP::Reference::ByteSizeLong(*(a1 + 80));
      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

LABEL_11:
  if ((v10 & 0xFF00) != 0)
  {
    if ((v10 & 0x100) != 0)
    {
      v13 = *(a1 + 88);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 11;
      }

      v9 += v15;
    }

    v16 = v9 + ((v10 >> 9) & 2) + ((v10 >> 8) & 2) + ((v10 >> 10) & 2);
    if ((v10 & 0x1000) != 0)
    {
      v16 += 3;
    }

    if ((v10 & 0x2000) != 0)
    {
      v16 += 9;
    }

    if ((v10 & 0x4000) != 0)
    {
      v16 += 9;
    }

    if ((v10 & 0x8000) != 0)
    {
      v9 = v16 + 10;
    }

    else
    {
      v9 = v16;
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

uint64_t sub_275E057A0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7FB8, 0);
  if (v4)
  {

    return sub_275E05848(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E05848(uint64_t result, uint64_t a2)
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
    goto LABEL_77;
  }

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

      goto LABEL_29;
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

    goto LABEL_37;
  }

LABEL_29:
  *(v3 + 16) |= 4u;
  v13 = *(v3 + 40);
  if (!v13)
  {
    v14 = *(v3 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = sub_275E2060C(v14);
    *(v3 + 40) = v13;
  }

  if (*(a2 + 40))
  {
    v15 = *(a2 + 40);
  }

  else
  {
    v15 = qword_2812EB558;
  }

  result = sub_275E04144(v13, v15);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

LABEL_37:
  *(v3 + 16) |= 8u;
  v16 = *(v3 + 48);
  if (!v16)
  {
    v17 = *(v3 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x277C8EFF0](v17);
    *(v3 + 48) = v16;
  }

  if (*(a2 + 48))
  {
    v18 = *(a2 + 48);
  }

  else
  {
    v18 = MEMORY[0x277D809D8];
  }

  result = TSP::Size::MergeFrom(v16, v18);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_53:
    *(v3 + 16) |= 0x20u;
    v22 = *(v3 + 64);
    if (!v22)
    {
      v23 = *(v3 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = MEMORY[0x277C8F050](v23);
      *(v3 + 64) = v22;
    }

    if (*(a2 + 64))
    {
      v24 = *(a2 + 64);
    }

    else
    {
      v24 = v6;
    }

    result = TSP::Reference::MergeFrom(v22, v24);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_69;
    }

    goto LABEL_61;
  }

LABEL_45:
  *(v3 + 16) |= 0x10u;
  v19 = *(v3 + 56);
  if (!v19)
  {
    v20 = *(v3 + 8);
    if (v20)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    v19 = MEMORY[0x277C8F050](v20);
    *(v3 + 56) = v19;
  }

  if (*(a2 + 56))
  {
    v21 = *(a2 + 56);
  }

  else
  {
    v21 = v6;
  }

  result = TSP::Reference::MergeFrom(v19, v21);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_61:
  *(v3 + 16) |= 0x40u;
  v25 = *(v3 + 72);
  if (!v25)
  {
    v26 = *(v3 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = MEMORY[0x277C8F050](v26);
    *(v3 + 72) = v25;
  }

  if (*(a2 + 72))
  {
    v27 = *(a2 + 72);
  }

  else
  {
    v27 = v6;
  }

  result = TSP::Reference::MergeFrom(v25, v27);
  if ((v5 & 0x80) != 0)
  {
LABEL_69:
    *(v3 + 16) |= 0x80u;
    v28 = *(v3 + 80);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277C8F050](v29);
      *(v3 + 80) = v28;
    }

    if (*(a2 + 80))
    {
      v30 = *(a2 + 80);
    }

    else
    {
      v30 = v6;
    }

    result = TSP::Reference::MergeFrom(v28, v30);
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 88) = *(a2 + 88);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_91;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 92) = *(a2 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_81:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v3 + 93) = *(a2 + 93);
  if ((v5 & 0x800) == 0)
  {
LABEL_82:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v3 + 94) = *(a2 + 94);
  if ((v5 & 0x1000) == 0)
  {
LABEL_83:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v3 + 95) = *(a2 + 95);
  if ((v5 & 0x2000) == 0)
  {
LABEL_84:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_85;
    }

LABEL_95:
    *(v3 + 104) = *(a2 + 104);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_94:
  *(v3 + 96) = *(a2 + 96);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_95;
  }

LABEL_85:
  if ((v5 & 0x8000) != 0)
  {
LABEL_86:
    *(v3 + 112) = *(a2 + 112);
  }

LABEL_87:
  *(v3 + 16) |= v5;
  return result;
}

uint64_t *sub_275E05B84(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E0459C(result);

    return sub_275E057A0(v4, a2);
  }

  return result;
}

uint64_t sub_275E05BD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((~v1 & 0x1E) != 0)
  {
    return 0;
  }

  if (v1)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 4) != 0)
  {
    result = sub_275E042A0(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 8) != 0)
  {
    result = TSP::Size::IsInitialized(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 0x20) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 0x40) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 0x80) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 80));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_275E05CE4(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D6728;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EA118, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  return a1;
}

uint64_t *sub_275E05D50(uint64_t *a1)
{
  if (a1 != &qword_2812EB608)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    if (a1[4])
    {
      v3 = MEMORY[0x277C8E6E0]();
      MEMORY[0x277C8F960](v3, 0x10A1C406A766619);
    }

    v4 = a1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E05DEC(uint64_t *a1)
{
  sub_275E05D50(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E05E2C()
{
  if (atomic_load_explicit(dword_2812EA118, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EB608;
}

uint64_t *sub_275E05E6C(uint64_t *result)
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

    result = TSA::DocumentArchive::Clear(v1[4]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = TSP::Reference::Clear(v1[5]);
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275E05EF4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_275E221E8(a3, &v23) & 1) == 0)
  {
    v5 = (v23 + 1);
    v6 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v23 + 2);
LABEL_6:
      v23 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v7 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v21;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 4)
    {
      if (v6 != 34)
      {
        goto LABEL_13;
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

        v17 = MEMORY[0x277C8F050](v16);
        LODWORD(v15) = v17;
        *(a1 + 40) = v17;
LABEL_35:
        v5 = v23;
      }

LABEL_36:
      v11 = sub_275E5B9DC(a3, v15, v5);
      goto LABEL_37;
    }

    if (v8 != 3)
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_13:
        if (v6)
        {
          v10 = (v6 & 7) == 4;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          *(a3 + 80) = v6 - 1;
          return v23;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_37;
      }

      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277C8F050](v18);
        LODWORD(v15) = v19;
        *(a1 + 24) = v19;
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v6 != 26)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v12 = *(a1 + 32);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C8EF60](v13);
      LODWORD(v12) = v14;
      *(a1 + 32) = v14;
      v5 = v23;
    }

    v11 = sub_275E5D0D0(a3, v12, v5);
LABEL_37:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *sub_275E060EC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 18;
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
        goto LABEL_35;
      }

      goto LABEL_25;
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
  *a2 = 26;
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

  a2 = TSA::DocumentArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(a1 + 40);
    *a2 = 34;
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

    a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E0631C(uint64_t a1)
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
    v5 = TSA::DocumentArchive::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_275E063B0(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v4 = sub_275E0631C(a1);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v3 = TSA::DocumentArchive::ByteSizeLong(*(a1 + 32));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((*(a1 + 16) & 4) != 0)
  {
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 40));
    v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_275E064BC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7FD0, 0);
  if (v4)
  {

    return sub_275E06564(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E06564(uint64_t result, uint64_t a2)
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
          return result;
        }

        goto LABEL_24;
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

      v10 = MEMORY[0x277C8EF60](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = MEMORY[0x277D80010];
    }

    result = TSA::DocumentArchive::MergeFrom(v10, v12);
    if ((v5 & 4) != 0)
    {
LABEL_24:
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C8F050](v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 40))
      {
        v15 = *(a2 + 40);
      }

      else
      {
        v15 = v6;
      }

      return TSP::Reference::MergeFrom(v13, v15);
    }
  }

  return result;
}

uint64_t *sub_275E066B4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E05E6C(result);

    return sub_275E064BC(v4, a2);
  }

  return result;
}

uint64_t sub_275E06700(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 24));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = TSA::DocumentArchive::IsInitialized(*(a1 + 32));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 40));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_275E067AC(uint64_t *a1)
{
  if (a1 != &qword_2812EB638)
  {
    if (a1[3])
    {
      v2 = MEMORY[0x277C8E730]();
      MEMORY[0x277C8F960](v2, 0x10A1C4042C41316);
    }

    v3 = a1[4];
    if (v3)
    {
      v4 = sub_275DE6128(v3);
      MEMORY[0x277C8F960](v4, 0x10A1C40E6413DF5);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E06830(uint64_t *a1)
{
  sub_275E067AC(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E06870(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSD::FillArchive::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = sub_275DE629C(v1[4]);
    }
  }

  if ((v2 & 0x7C) != 0)
  {
    *(v1 + 44) = 0;
    *(v1 + 10) = 0;
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

google::protobuf::internal *sub_275E068F0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v46 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v46) & 1) == 0)
  {
    while (1)
    {
      v7 = (v46 + 1);
      v8 = *v46;
      if ((*v46 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v46, (v9 - 128));
      v46 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_79;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_58;
          }

          *(a1 + 16) |= 1u;
          v23 = *(a1 + 24);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = MEMORY[0x277C8EF70](v24);
            LODWORD(v23) = v25;
            *(a1 + 24) = v25;
            v7 = v46;
          }

          v26 = sub_275E5D1A0(a3, v23, v7);
LABEL_65:
          v46 = v26;
          if (!v26)
          {
            goto LABEL_79;
          }

          goto LABEL_66;
        }

        if (v10 == 2)
        {
          if (v8 == 18)
          {
            *(a1 + 16) |= 2u;
            v33 = *(a1 + 32);
            if (!v33)
            {
              v34 = *(a1 + 8);
              if (v34)
              {
                v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
              }

              v33 = sub_275E1F66C(v34);
              *(a1 + 32) = v33;
              v7 = v46;
            }

            v26 = sub_275E5B90C(a3, v33, v7);
            goto LABEL_65;
          }

LABEL_58:
          if (v8)
          {
            v35 = (v8 & 7) == 4;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v26 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_65;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_58;
        }

        v5 |= 4u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_26:
          v46 = v16;
          *(a1 + 40) = v15 != 0;
          goto LABEL_66;
        }

        v44 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v46 = v44;
        *(a1 + 40) = v45 != 0;
        if (!v44)
        {
LABEL_79:
          v46 = 0;
          goto LABEL_2;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_58;
          }

          v5 |= 0x40u;
          v31 = (v7 + 1);
          v30 = *v7;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if ((v32 & 0x80000000) == 0)
          {
            v31 = (v7 + 2);
LABEL_51:
            v46 = v31;
            *(a1 + 44) = v30 != 0;
            goto LABEL_66;
          }

          v38 = google::protobuf::internal::VarintParseSlow64(v7, v30);
          v46 = v38;
          *(a1 + 44) = v39 != 0;
          if (!v38)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v10 != 7 || v8 != 56)
          {
            goto LABEL_58;
          }

          v5 |= 0x20u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v7 + 2);
LABEL_33:
            v46 = v19;
            *(a1 + 43) = v18 != 0;
            goto LABEL_66;
          }

          v42 = google::protobuf::internal::VarintParseSlow64(v7, v18);
          v46 = v42;
          *(a1 + 43) = v43 != 0;
          if (!v42)
          {
            goto LABEL_79;
          }
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_58;
        }

        v5 |= 8u;
        v28 = (v7 + 1);
        v27 = *v7;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v28 = (v7 + 2);
LABEL_46:
          v46 = v28;
          *(a1 + 41) = v27 != 0;
          goto LABEL_66;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v7, v27);
        v46 = v36;
        *(a1 + 41) = v37 != 0;
        if (!v36)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_58;
        }

        v5 |= 0x10u;
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
          v46 = v12;
          *(a1 + 42) = v11 != 0;
          goto LABEL_66;
        }

        v40 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v46 = v40;
        *(a1 + 42) = v41 != 0;
        if (!v40)
        {
          goto LABEL_79;
        }
      }

LABEL_66:
      if (sub_275E221E8(a3, &v46))
      {
        goto LABEL_2;
      }
    }

    v7 = (v46 + 2);
LABEL_6:
    v46 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v46;
}

unsigned __int8 *sub_275E06D14(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    v7 = *(v6 + 11);
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

    a2 = TSD::FillArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
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

  a2 = sub_275DE6A84(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
  *a2 = 24;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_35;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(a1 + 41);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(a1 + 42);
  *a2 = 40;
  a2[1] = v20;
  a2 += 2;
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(a1 + 44);
  *a2 = 48;
  a2[1] = v21;
  a2 += 2;
  if ((v5 & 0x20) != 0)
  {
LABEL_41:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(a1 + 43);
    *a2 = 56;
    a2[1] = v22;
    a2 += 2;
  }

LABEL_44:
  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v23 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E06FC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_9;
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

  v5 = TSD::FillArchive::ByteSizeLong(*(a1 + 24));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = sub_275DE7130(*(a1 + 32));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7.i64[0] = 0x200000002;
  v7.i64[1] = 0x200000002;
  v4 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_275E712F0), v7)) + ((v2 >> 5) & 2);
LABEL_9:
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

uint64_t sub_275E070D0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7FE8, 0);
  if (v4)
  {

    return sub_275E07178(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E07178(uint64_t result, uint64_t a2)
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
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C8EF70](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80488];
      }

      result = TSD::FillArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_30;
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

      v9 = sub_275E1F66C(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &unk_2812EAAD8;
    }

    result = sub_275DE748C(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(v3 + 41) = *(a2 + 41);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(v3 + 42) = *(a2 + 42);
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
      *(v3 + 44) = *(a2 + 44);
      goto LABEL_12;
    }

LABEL_33:
    *(v3 + 43) = *(a2 + 43);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t *sub_275E072C4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E06870(result);

    return sub_275E070D0(v4, a2);
  }

  return result;
}

uint64_t sub_275E07310(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 24));
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

  result = sub_275DE7730(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E07394(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D6888;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA748, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t *sub_275E07400(uint64_t *a1)
{
  if (a1 != &qword_2812EB668)
  {
    if (a1[3])
    {
      v2 = MEMORY[0x277C8EB10]();
      MEMORY[0x277C8F960](v2, 0x10A1C40AC828A93);
    }

    v3 = a1[4];
    if (v3)
    {
      v4 = sub_275E067AC(v3);
      MEMORY[0x277C8F960](v4, 0x10A1C40C24530F0);
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E07484(uint64_t *a1)
{
  sub_275E07400(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E074C4()
{
  if (atomic_load_explicit(dword_2812EA748, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EB668;
}

uint64_t *sub_275E07504(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSS::StyleArchive::Clear(result[3]);
    }

    if ((v2 & 2) != 0)
    {
      result = sub_275E06870(v1[4]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 8) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275E07578(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v7 = (v26 + 1);
      v8 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v9 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 11)
      {
        if (v8 != 90)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 32);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = sub_275E207F4(v18);
          *(a1 + 32) = v17;
          v7 = v26;
        }

        v13 = sub_275E5D340(a3, v17, v7);
LABEL_36:
        v26 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v10 != 10)
      {
        if (v10 == 1 && v8 == 10)
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

            v21 = MEMORY[0x277C8F060](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v26;
          }

          v13 = sub_275E5D270(a3, v19, v7);
        }

        else
        {
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

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        goto LABEL_36;
      }

      if (v8 != 80)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v14 = (v7 + 1);
      LODWORD(v15) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v14;
      v15 = (v15 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_24:
        v26 = v14;
        *(a1 + 40) = v15;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v26 = v24;
      *(a1 + 40) = v25;
      if (!v24)
      {
LABEL_44:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_275E221E8(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v7 = (v26 + 2);
LABEL_6:
    v26 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

unsigned __int8 *sub_275E077AC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSS::StyleArchive::_InternalSerialize(v9, v11, a3);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
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

  v20 = *(a1 + 40);
  *a2 = 80;
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
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 32);
  *a2 = 90;
  v7 = *(v6 + 20);
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

  a2 = sub_275E06D14(v6, v8, a3);
LABEL_20:
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E079D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = sub_275E06FC4(*(a1 + 32));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

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

uint64_t sub_275E07AD4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8000, 0);
  if (v4)
  {

    return sub_275E07B7C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E07B7C(uint64_t result, uint64_t a2)
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

        v6 = MEMORY[0x277C8F060](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      result = TSS::StyleArchive::MergeFrom(v6, v8);
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

      v9 = sub_275E207F4(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &qword_2812EB638;
    }

    result = sub_275E07178(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t *sub_275E07C88(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E07504(result);

    return sub_275E07AD4(v4, a2);
  }

  return result;
}

uint64_t sub_275E07CD4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      return 1;
    }

    result = sub_275E07310(*(a1 + 32));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_275E07D64(uint64_t *a1)
{
  if (a1 != &qword_2812EB698)
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
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275E07DE0(uint64_t *a1)
{
  sub_275E07D64(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E07E20(uint64_t *result)
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
      result = TSP::Reference::Clear(v1[4]);
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

google::protobuf::internal *sub_275E07E90(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v13 = MEMORY[0x277C8F050](v12);
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

        v15 = MEMORY[0x277C8F050](v14);
        LODWORD(v11) = v15;
        *(a1 + 24) = v15;
LABEL_28:
        v5 = v19;
      }
    }

    v10 = sub_275E5B9DC(a3, v11, v5);
LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *sub_275E08030(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E081C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
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

uint64_t sub_275E082A0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8018, 0);
  if (v4)
  {

    return sub_275E08348(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E08348(uint64_t result, uint64_t a2)
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

      return TSP::Reference::MergeFrom(v10, v12);
    }
  }

  return result;
}

uint64_t *sub_275E08444(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E07E20(result);

    return sub_275E082A0(v4, a2);
  }

  return result;
}

uint64_t sub_275E08490(uint64_t a1)
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

  result = TSP::Reference::IsInitialized(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E08518(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D69E8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 240) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = a2;
  *(a1 + 216) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = a2;
  *(a1 + 288) = a2;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = a2;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = a2;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  if (atomic_load_explicit(dword_2812EA340, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 360) = v3;
  *(a1 + 384) = 0;
  return a1;
}

void sub_275E08660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12)
{
  sub_275E23918(v20 + 12);
  sub_275E22CA8(v20 + 9);
  sub_275E236CC(v14);
  sub_275E22664(v13);
  sub_275E22664(v20);
  sub_275E22664(v17);
  sub_275E22664(v16);
  sub_275E22664(v15);
  sub_275E23894(v12);
  sub_275E23810(v19);
  sub_275E22664(v18);
  sub_275E22664(a10);
  sub_275E22664(a11);
  sub_275E22664(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_275E0871C(uint64_t a1)
{
  v2 = *(a1 + 360);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812EB6C0)
  {
    v3 = *(a1 + 368);
    if (v3)
    {
      TSP::Size::~Size(v3);
      MEMORY[0x277C8F960]();
    }

    v4 = *(a1 + 376);
    if (v4)
    {
      v5 = sub_275DE77B4(v4);
      MEMORY[0x277C8F960](v5, 0x10A1C40D4912B22);
    }
  }

  sub_275DE4968((a1 + 8));
  sub_275E23918((a1 + 336));
  sub_275E22CA8((a1 + 312));
  sub_275E236CC((a1 + 288));
  sub_275E22664((a1 + 264));
  sub_275E22664((a1 + 240));
  sub_275E22664((a1 + 216));
  sub_275E22664((a1 + 192));
  sub_275E22664((a1 + 168));
  sub_275E23894((a1 + 144));
  sub_275E23810((a1 + 120));
  sub_275E22664((a1 + 96));
  sub_275E22664((a1 + 72));
  sub_275E22664((a1 + 48));
  sub_275E22664((a1 + 24));
  return a1;
}

void sub_275E08884(uint64_t a1)
{
  sub_275E0871C(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E088C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  v8 = *(a1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(a1 + 88) + 8);
    do
    {
      v10 = *v9++;
      TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(a1 + 80) = 0;
  }

  v11 = *(a1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(a1 + 112) + 8);
    do
    {
      v13 = *v12++;
      TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(a1 + 104) = 0;
  }

  v14 = *(a1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(a1 + 136) + 8);
    do
    {
      v16 = *v15++;
      TSP::Range::Clear(v16);
      --v14;
    }

    while (v14);
    *(a1 + 128) = 0;
  }

  v17 = *(a1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(a1 + 160) + 8);
    do
    {
      v19 = *v18++;
      TSD::GeometryArchive::Clear(v19);
      --v17;
    }

    while (v17);
    *(a1 + 152) = 0;
  }

  v20 = *(a1 + 176);
  if (v20 >= 1)
  {
    v21 = (*(a1 + 184) + 8);
    do
    {
      v22 = *v21++;
      TSP::Reference::Clear(v22);
      --v20;
    }

    while (v20);
    *(a1 + 176) = 0;
  }

  v23 = *(a1 + 200);
  if (v23 >= 1)
  {
    v24 = (*(a1 + 208) + 8);
    do
    {
      v25 = *v24++;
      TSP::Reference::Clear(v25);
      --v23;
    }

    while (v23);
    *(a1 + 200) = 0;
  }

  v26 = *(a1 + 224);
  if (v26 >= 1)
  {
    v27 = (*(a1 + 232) + 8);
    do
    {
      v28 = *v27++;
      TSP::Reference::Clear(v28);
      --v26;
    }

    while (v26);
    *(a1 + 224) = 0;
  }

  v29 = *(a1 + 248);
  if (v29 >= 1)
  {
    v30 = (*(a1 + 256) + 8);
    do
    {
      v31 = *v30++;
      TSP::Reference::Clear(v31);
      --v29;
    }

    while (v29);
    *(a1 + 248) = 0;
  }

  v32 = *(a1 + 272);
  if (v32 >= 1)
  {
    v33 = (*(a1 + 280) + 8);
    do
    {
      v34 = *v33++;
      TSP::Reference::Clear(v34);
      --v32;
    }

    while (v32);
    *(a1 + 272) = 0;
  }

  v35 = *(a1 + 296);
  if (v35 >= 1)
  {
    v36 = (*(a1 + 304) + 8);
    do
    {
      v37 = *v36++;
      sub_275E01954(v37);
      --v35;
    }

    while (v35);
    *(a1 + 296) = 0;
  }

  result = sub_275E223D8(a1 + 312);
  v39 = *(a1 + 344);
  if (v39 >= 1)
  {
    v40 = (*(a1 + 352) + 8);
    do
    {
      v41 = *v40++;
      result = sub_275E07E20(v41);
      --v39;
    }

    while (v39);
    *(a1 + 344) = 0;
  }

  v42 = *(a1 + 16);
  if ((v42 & 7) == 0)
  {
    goto LABEL_58;
  }

  if ((v42 & 1) == 0)
  {
    if ((v42 & 2) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_66;
  }

  v45 = *(a1 + 360) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v45 + 23) < 0)
  {
    **v45 = 0;
    *(v45 + 8) = 0;
    if ((v42 & 2) != 0)
    {
      goto LABEL_66;
    }

LABEL_56:
    if ((v42 & 4) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  *v45 = 0;
  *(v45 + 23) = 0;
  if ((v42 & 2) == 0)
  {
    goto LABEL_56;
  }

LABEL_66:
  result = TSP::Size::Clear(*(a1 + 368));
  if ((v42 & 4) != 0)
  {
LABEL_57:
    result = sub_275DE7858(*(a1 + 376));
  }

LABEL_58:
  v44 = *(a1 + 8);
  v43 = a1 + 8;
  *(v43 + 376) = 0;
  *(v43 + 8) = 0;
  if (v44)
  {

    return sub_275E224D0(v43);
  }

  return result;
}

google::protobuf::internal *sub_275E08B90(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v146 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v146) & 1) == 0)
  {
    while (2)
    {
      v7 = (v146 + 1);
      v8 = *v146;
      if (*v146 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v146, (v9 - 128));
          v146 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_222;
          }

          v7 = TagFallback;
          v8 = v20;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_211;
              }

              v10 = v7 - 1;
              while (1)
              {
                v11 = (v10 + 1);
                v146 = (v10 + 1);
                v12 = *(a1 + 40);
                if (!v12)
                {
                  goto LABEL_11;
                }

                v18 = *(a1 + 32);
                v13 = *v12;
                if (v18 < *v12)
                {
                  *(a1 + 32) = v18 + 1;
                  v15 = *&v12[2 * v18 + 2];
                  goto LABEL_15;
                }

                if (v13 == *(a1 + 36))
                {
LABEL_11:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v12 = *(a1 + 40);
                  v13 = *v12;
                }

                *v12 = v13 + 1;
                v14 = MEMORY[0x277C8F050](*(a1 + 24));
                LODWORD(v15) = v14;
                v16 = *(a1 + 32);
                v17 = *(a1 + 40) + 8 * v16;
                *(a1 + 32) = v16 + 1;
                *(v17 + 8) = v14;
                v11 = v146;
LABEL_15:
                v10 = sub_275E5B9DC(a3, v15, v11);
                v146 = v10;
                if (!v10)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v10 || *v10 != 10)
                {
                  goto LABEL_219;
                }
              }

            case 2u:
              if (v8 != 18)
              {
                goto LABEL_211;
              }

              v82 = v7 - 1;
              while (1)
              {
                v83 = (v82 + 1);
                v146 = (v82 + 1);
                v84 = *(a1 + 64);
                if (!v84)
                {
                  goto LABEL_123;
                }

                v90 = *(a1 + 56);
                v85 = *v84;
                if (v90 < *v84)
                {
                  *(a1 + 56) = v90 + 1;
                  v87 = *&v84[2 * v90 + 2];
                  goto LABEL_127;
                }

                if (v85 == *(a1 + 60))
                {
LABEL_123:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v84 = *(a1 + 64);
                  v85 = *v84;
                }

                *v84 = v85 + 1;
                v86 = MEMORY[0x277C8F050](*(a1 + 48));
                LODWORD(v87) = v86;
                v88 = *(a1 + 56);
                v89 = *(a1 + 64) + 8 * v88;
                *(a1 + 56) = v88 + 1;
                *(v89 + 8) = v86;
                v83 = v146;
LABEL_127:
                v82 = sub_275E5B9DC(a3, v87, v83);
                v146 = v82;
                if (!v82)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v82 || *v82 != 18)
                {
                  goto LABEL_219;
                }
              }

            case 3u:
              if (v8 != 26)
              {
                goto LABEL_211;
              }

              v61 = v7 - 1;
              while (1)
              {
                v62 = (v61 + 1);
                v146 = (v61 + 1);
                v63 = *(a1 + 88);
                if (!v63)
                {
                  goto LABEL_90;
                }

                v69 = *(a1 + 80);
                v64 = *v63;
                if (v69 < *v63)
                {
                  *(a1 + 80) = v69 + 1;
                  v66 = *&v63[2 * v69 + 2];
                  goto LABEL_94;
                }

                if (v64 == *(a1 + 84))
                {
LABEL_90:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                  v63 = *(a1 + 88);
                  v64 = *v63;
                }

                *v63 = v64 + 1;
                v65 = MEMORY[0x277C8F050](*(a1 + 72));
                LODWORD(v66) = v65;
                v67 = *(a1 + 80);
                v68 = *(a1 + 88) + 8 * v67;
                *(a1 + 80) = v67 + 1;
                *(v68 + 8) = v65;
                v62 = v146;
LABEL_94:
                v61 = sub_275E5B9DC(a3, v66, v62);
                v146 = v61;
                if (!v61)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v61 || *v61 != 26)
                {
                  goto LABEL_219;
                }
              }

            case 4u:
              if (v8 != 34)
              {
                goto LABEL_211;
              }

              v73 = v7 - 1;
              while (1)
              {
                v74 = (v73 + 1);
                v146 = (v73 + 1);
                v75 = *(a1 + 112);
                if (!v75)
                {
                  goto LABEL_108;
                }

                v81 = *(a1 + 104);
                v76 = *v75;
                if (v81 < *v75)
                {
                  *(a1 + 104) = v81 + 1;
                  v78 = *&v75[2 * v81 + 2];
                  goto LABEL_112;
                }

                if (v76 == *(a1 + 108))
                {
LABEL_108:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                  v75 = *(a1 + 112);
                  v76 = *v75;
                }

                *v75 = v76 + 1;
                v77 = MEMORY[0x277C8F050](*(a1 + 96));
                LODWORD(v78) = v77;
                v79 = *(a1 + 104);
                v80 = *(a1 + 112) + 8 * v79;
                *(a1 + 104) = v79 + 1;
                *(v80 + 8) = v77;
                v74 = v146;
LABEL_112:
                v73 = sub_275E5B9DC(a3, v78, v74);
                v146 = v73;
                if (!v73)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v73 || *v73 != 34)
                {
                  goto LABEL_219;
                }
              }

            case 5u:
              if (v8 != 42)
              {
                goto LABEL_211;
              }

              *(a1 + 16) |= 2u;
              v40 = *(a1 + 368);
              if (!v40)
              {
                v41 = *(a1 + 8);
                if (v41)
                {
                  v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
                }

                v42 = MEMORY[0x277C8EFF0](v41);
                LODWORD(v40) = v42;
                *(a1 + 368) = v42;
                v7 = v146;
              }

              v23 = sub_275E5C60C(a3, v40, v7);
              goto LABEL_218;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_211;
              }

              v99 = v7 - 1;
              while (1)
              {
                v100 = (v99 + 1);
                v146 = (v99 + 1);
                v101 = *(a1 + 136);
                if (!v101)
                {
                  goto LABEL_149;
                }

                v107 = *(a1 + 128);
                v102 = *v101;
                if (v107 < *v101)
                {
                  *(a1 + 128) = v107 + 1;
                  v104 = *&v101[2 * v107 + 2];
                  goto LABEL_153;
                }

                if (v102 == *(a1 + 132))
                {
LABEL_149:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                  v101 = *(a1 + 136);
                  v102 = *v101;
                }

                *v101 = v102 + 1;
                v103 = MEMORY[0x277C8F030](*(a1 + 120));
                LODWORD(v104) = v103;
                v105 = *(a1 + 128);
                v106 = *(a1 + 136) + 8 * v105;
                *(a1 + 128) = v105 + 1;
                *(v106 + 8) = v103;
                v100 = v146;
LABEL_153:
                v99 = sub_275E5D410(a3, v104, v100);
                v146 = v99;
                if (!v99)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v99 || *v99 != 50)
                {
                  goto LABEL_219;
                }
              }

            case 7u:
              if (v8 != 58)
              {
                goto LABEL_211;
              }

              v116 = v7 - 1;
              while (1)
              {
                v117 = (v116 + 1);
                v146 = (v116 + 1);
                v118 = *(a1 + 160);
                if (!v118)
                {
                  goto LABEL_175;
                }

                v124 = *(a1 + 152);
                v119 = *v118;
                if (v124 < *v118)
                {
                  *(a1 + 152) = v124 + 1;
                  v121 = *&v118[2 * v124 + 2];
                  goto LABEL_179;
                }

                if (v119 == *(a1 + 156))
                {
LABEL_175:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
                  v118 = *(a1 + 160);
                  v119 = *v118;
                }

                *v118 = v119 + 1;
                v120 = MEMORY[0x277C8EFA0](*(a1 + 144));
                LODWORD(v121) = v120;
                v122 = *(a1 + 152);
                v123 = *(a1 + 160) + 8 * v122;
                *(a1 + 152) = v122 + 1;
                *(v123 + 8) = v120;
                v117 = v146;
LABEL_179:
                v116 = sub_275E5C1FC(a3, v121, v117);
                v146 = v116;
                if (!v116)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v116 || *v116 != 58)
                {
                  goto LABEL_219;
                }
              }

            case 8u:
              if (v8 != 66)
              {
                goto LABEL_211;
              }

              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v23 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_218;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_211;
              }

              v134 = v7 - 1;
              while (1)
              {
                v135 = (v134 + 1);
                v146 = (v134 + 1);
                v136 = *(a1 + 184);
                if (!v136)
                {
                  goto LABEL_201;
                }

                v142 = *(a1 + 176);
                v137 = *v136;
                if (v142 < *v136)
                {
                  *(a1 + 176) = v142 + 1;
                  v139 = *&v136[2 * v142 + 2];
                  goto LABEL_205;
                }

                if (v137 == *(a1 + 180))
                {
LABEL_201:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
                  v136 = *(a1 + 184);
                  v137 = *v136;
                }

                *v136 = v137 + 1;
                v138 = MEMORY[0x277C8F050](*(a1 + 168));
                LODWORD(v139) = v138;
                v140 = *(a1 + 176);
                v141 = *(a1 + 184) + 8 * v140;
                *(a1 + 176) = v140 + 1;
                *(v141 + 8) = v138;
                v135 = v146;
LABEL_205:
                v134 = sub_275E5B9DC(a3, v139, v135);
                v146 = v134;
                if (!v134)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v134 || *v134 != 74)
                {
                  goto LABEL_219;
                }
              }

            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_211;
              }

              v52 = v7 - 1;
              while (1)
              {
                v53 = (v52 + 1);
                v146 = (v52 + 1);
                v54 = *(a1 + 208);
                if (!v54)
                {
                  goto LABEL_77;
                }

                v60 = *(a1 + 200);
                v55 = *v54;
                if (v60 < *v54)
                {
                  *(a1 + 200) = v60 + 1;
                  v57 = *&v54[2 * v60 + 2];
                  goto LABEL_81;
                }

                if (v55 == *(a1 + 204))
                {
LABEL_77:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 192));
                  v54 = *(a1 + 208);
                  v55 = *v54;
                }

                *v54 = v55 + 1;
                v56 = MEMORY[0x277C8F050](*(a1 + 192));
                LODWORD(v57) = v56;
                v58 = *(a1 + 200);
                v59 = *(a1 + 208) + 8 * v58;
                *(a1 + 200) = v58 + 1;
                *(v59 + 8) = v56;
                v53 = v146;
LABEL_81:
                v52 = sub_275E5B9DC(a3, v57, v53);
                v146 = v52;
                if (!v52)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v52 || *v52 != 82)
                {
                  goto LABEL_219;
                }
              }

            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_211;
              }

              v125 = v7 - 1;
              while (1)
              {
                v126 = (v125 + 1);
                v146 = (v125 + 1);
                v127 = *(a1 + 232);
                if (!v127)
                {
                  goto LABEL_188;
                }

                v133 = *(a1 + 224);
                v128 = *v127;
                if (v133 < *v127)
                {
                  *(a1 + 224) = v133 + 1;
                  v130 = *&v127[2 * v133 + 2];
                  goto LABEL_192;
                }

                if (v128 == *(a1 + 228))
                {
LABEL_188:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 216));
                  v127 = *(a1 + 232);
                  v128 = *v127;
                }

                *v127 = v128 + 1;
                v129 = MEMORY[0x277C8F050](*(a1 + 216));
                LODWORD(v130) = v129;
                v131 = *(a1 + 224);
                v132 = *(a1 + 232) + 8 * v131;
                *(a1 + 224) = v131 + 1;
                *(v132 + 8) = v129;
                v126 = v146;
LABEL_192:
                v125 = sub_275E5B9DC(a3, v130, v126);
                v146 = v125;
                if (!v125)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v125 || *v125 != 90)
                {
                  goto LABEL_219;
                }
              }

            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_211;
              }

              v31 = v7 - 1;
              while (1)
              {
                v32 = (v31 + 1);
                v146 = (v31 + 1);
                v33 = *(a1 + 256);
                if (!v33)
                {
                  goto LABEL_45;
                }

                v39 = *(a1 + 248);
                v34 = *v33;
                if (v39 < *v33)
                {
                  *(a1 + 248) = v39 + 1;
                  v36 = *&v33[2 * v39 + 2];
                  goto LABEL_49;
                }

                if (v34 == *(a1 + 252))
                {
LABEL_45:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 240));
                  v33 = *(a1 + 256);
                  v34 = *v33;
                }

                *v33 = v34 + 1;
                v35 = MEMORY[0x277C8F050](*(a1 + 240));
                LODWORD(v36) = v35;
                v37 = *(a1 + 248);
                v38 = *(a1 + 256) + 8 * v37;
                *(a1 + 248) = v37 + 1;
                *(v38 + 8) = v35;
                v32 = v146;
LABEL_49:
                v31 = sub_275E5B9DC(a3, v36, v32);
                v146 = v31;
                if (!v31)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v31 || *v31 != 98)
                {
                  goto LABEL_219;
                }
              }

            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_211;
              }

              v43 = v7 - 1;
              while (1)
              {
                v44 = (v43 + 1);
                v146 = (v43 + 1);
                v45 = *(a1 + 280);
                if (!v45)
                {
                  goto LABEL_64;
                }

                v51 = *(a1 + 272);
                v46 = *v45;
                if (v51 < *v45)
                {
                  *(a1 + 272) = v51 + 1;
                  v48 = *&v45[2 * v51 + 2];
                  goto LABEL_68;
                }

                if (v46 == *(a1 + 276))
                {
LABEL_64:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 264));
                  v45 = *(a1 + 280);
                  v46 = *v45;
                }

                *v45 = v46 + 1;
                v47 = MEMORY[0x277C8F050](*(a1 + 264));
                LODWORD(v48) = v47;
                v49 = *(a1 + 272);
                v50 = *(a1 + 280) + 8 * v49;
                *(a1 + 272) = v49 + 1;
                *(v50 + 8) = v47;
                v44 = v146;
LABEL_68:
                v43 = sub_275E5B9DC(a3, v48, v44);
                v146 = v43;
                if (!v43)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v43 || *v43 != 106)
                {
                  goto LABEL_219;
                }
              }

            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_211;
              }

              v108 = (v7 - 1);
              while (1)
              {
                v109 = (v108 + 1);
                v146 = (v108 + 1);
                v110 = *(a1 + 304);
                if (!v110)
                {
                  goto LABEL_162;
                }

                v115 = *(a1 + 296);
                v111 = *v110;
                if (v115 < *v110)
                {
                  *(a1 + 296) = v115 + 1;
                  v112 = *&v110[2 * v115 + 2];
                  goto LABEL_166;
                }

                if (v111 == *(a1 + 300))
                {
LABEL_162:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 288));
                  v110 = *(a1 + 304);
                  v111 = *v110;
                }

                *v110 = v111 + 1;
                v112 = sub_275E204F4(*(a1 + 288));
                v113 = *(a1 + 296);
                v114 = *(a1 + 304) + 8 * v113;
                *(a1 + 296) = v113 + 1;
                *(v114 + 8) = v112;
                v109 = v146;
LABEL_166:
                v108 = sub_275E5CF30(a3, v112, v109);
                v146 = v108;
                if (!v108)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v108 || *v108 != 114)
                {
                  goto LABEL_219;
                }
              }

            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_211;
              }

              v24 = v7 - 1;
              while (1)
              {
                v146 = (v24 + 1);
                v25 = *(a1 + 328);
                if (!v25)
                {
                  goto LABEL_36;
                }

                v26 = *(a1 + 320);
                v27 = *v25;
                if (v26 >= *v25)
                {
                  break;
                }

                *(a1 + 320) = v26 + 1;
LABEL_38:
                v24 = google::protobuf::internal::InlineGreedyStringParser();
                v146 = v24;
                if (!v24)
                {
                  goto LABEL_222;
                }

                if (*a3 <= v24 || *v24 != 122)
                {
                  goto LABEL_219;
                }
              }

              if (v27 == *(a1 + 324))
              {
LABEL_36:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 312));
                v25 = *(a1 + 328);
                v27 = *v25;
              }

              *v25 = v27 + 1;
              v28 = sub_275D5EFD8(*(a1 + 312));
              v29 = *(a1 + 320);
              v30 = *(a1 + 328) + 8 * v29;
              *(a1 + 320) = v29 + 1;
              *(v30 + 8) = v28;
              goto LABEL_38;
            case 0x10u:
              if (v8 != 128)
              {
                goto LABEL_211;
              }

              v5 |= 8u;
              v71 = (v7 + 1);
              v70 = *v7;
              if ((v70 & 0x8000000000000000) == 0)
              {
                goto LABEL_104;
              }

              v72 = *v71;
              v70 = (v72 << 7) + v70 - 128;
              if (v72 < 0)
              {
                v144 = google::protobuf::internal::VarintParseSlow64(v7, v70);
                v146 = v144;
                *(a1 + 384) = v145 != 0;
                if (!v144)
                {
                  goto LABEL_222;
                }
              }

              else
              {
                v71 = (v7 + 2);
LABEL_104:
                v146 = v71;
                *(a1 + 384) = v70 != 0;
              }

              goto LABEL_219;
            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_211;
              }

              *(a1 + 16) |= 4u;
              v21 = *(a1 + 376);
              if (!v21)
              {
                v22 = *(a1 + 8);
                if (v22)
                {
                  v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
                }

                v21 = sub_275E1F6F8(v22);
                *(a1 + 376) = v21;
                v7 = v146;
              }

              v23 = sub_275E5C12C(a3, v21, v7);
              goto LABEL_218;
            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_211;
              }

              v91 = (v7 - 2);
              break;
            default:
LABEL_211:
              if (v8)
              {
                v143 = (v8 & 7) == 4;
              }

              else
              {
                v143 = 1;
              }

              if (v143)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_275E22260((a1 + 8));
              }

              v23 = google::protobuf::internal::UnknownFieldParse();
LABEL_218:
              v146 = v23;
              if (!v23)
              {
LABEL_222:
                v146 = 0;
                goto LABEL_2;
              }

LABEL_219:
              if (sub_275E221E8(a3, &v146))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v92 = (v91 + 2);
            v146 = (v91 + 2);
            v93 = *(a1 + 352);
            if (!v93)
            {
              goto LABEL_136;
            }

            v98 = *(a1 + 344);
            v94 = *v93;
            if (v98 < *v93)
            {
              *(a1 + 344) = v98 + 1;
              v95 = *&v93[2 * v98 + 2];
              goto LABEL_140;
            }

            if (v94 == *(a1 + 348))
            {
LABEL_136:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 336));
              v93 = *(a1 + 352);
              v94 = *v93;
            }

            *v93 = v94 + 1;
            v95 = sub_275E20994(*(a1 + 336));
            v96 = *(a1 + 344);
            v97 = *(a1 + 352) + 8 * v96;
            *(a1 + 344) = v96 + 1;
            *(v97 + 8) = v95;
            v92 = v146;
LABEL_140:
            v91 = sub_275E5D4E0(a3, v95, v92);
            v146 = v91;
            if (!v91)
            {
              goto LABEL_222;
            }

            if (*a3 <= v91 || *v91 != 402)
            {
              goto LABEL_219;
            }
          }
        }

        v7 = (v146 + 2);
      }

      break;
    }

    v146 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v146;
}

unsigned __int8 *sub_275E09964(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 5);
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

      a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(a1 + 56);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 18;
      v17 = *(v16 + 5);
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

      a2 = TSP::Reference::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(a1 + 80);
  if (v22)
  {
    for (k = 0; k != v22; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = *(*(a1 + 88) + 8 * k + 8);
      *a2 = 26;
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

      a2 = TSP::Reference::_InternalSerialize(v24, v26, a3);
    }
  }

  v30 = *(a1 + 104);
  if (v30)
  {
    for (m = 0; m != v30; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v32 = *(*(a1 + 112) + 8 * m + 8);
      *a2 = 34;
      v33 = *(v32 + 5);
      if (v33 > 0x7F)
      {
        a2[1] = v33 | 0x80;
        v35 = v33 >> 7;
        if (v33 >> 14)
        {
          v34 = a2 + 3;
          do
          {
            *(v34 - 1) = v35 | 0x80;
            v36 = v35 >> 7;
            ++v34;
            v37 = v35 >> 14;
            v35 >>= 7;
          }

          while (v37);
          *(v34 - 1) = v36;
        }

        else
        {
          a2[2] = v35;
          v34 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v33;
        v34 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v32, v34, a3);
    }
  }

  v38 = *(a1 + 16);
  if ((v38 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(a1 + 368);
    *a2 = 42;
    v40 = *(v39 + 5);
    if (v40 > 0x7F)
    {
      a2[1] = v40 | 0x80;
      v42 = v40 >> 7;
      if (v40 >> 14)
      {
        v41 = a2 + 3;
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
        a2[2] = v42;
        v41 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v40;
      v41 = a2 + 2;
    }

    a2 = TSP::Size::_InternalSerialize(v39, v41, a3);
  }

  v45 = *(a1 + 128);
  if (v45)
  {
    for (n = 0; n != v45; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v47 = *(*(a1 + 136) + 8 * n + 8);
      *a2 = 50;
      v48 = *(v47 + 5);
      if (v48 > 0x7F)
      {
        a2[1] = v48 | 0x80;
        v50 = v48 >> 7;
        if (v48 >> 14)
        {
          v49 = a2 + 3;
          do
          {
            *(v49 - 1) = v50 | 0x80;
            v51 = v50 >> 7;
            ++v49;
            v52 = v50 >> 14;
            v50 >>= 7;
          }

          while (v52);
          *(v49 - 1) = v51;
        }

        else
        {
          a2[2] = v50;
          v49 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v48;
        v49 = a2 + 2;
      }

      a2 = TSP::Range::_InternalSerialize(v47, v49, a3);
    }
  }

  v53 = *(a1 + 152);
  if (v53)
  {
    for (ii = 0; ii != v53; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v55 = *(*(a1 + 160) + 8 * ii + 8);
      *a2 = 58;
      v56 = *(v55 + 5);
      if (v56 > 0x7F)
      {
        a2[1] = v56 | 0x80;
        v58 = v56 >> 7;
        if (v56 >> 14)
        {
          v57 = a2 + 3;
          do
          {
            *(v57 - 1) = v58 | 0x80;
            v59 = v58 >> 7;
            ++v57;
            v60 = v58 >> 14;
            v58 >>= 7;
          }

          while (v60);
          *(v57 - 1) = v59;
        }

        else
        {
          a2[2] = v58;
          v57 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v56;
        v57 = a2 + 2;
      }

      a2 = TSD::GeometryArchive::_InternalSerialize(v55, v57, a3);
    }
  }

  if (v38)
  {
    a2 = sub_275DE5774(a3, 8, (*(a1 + 360) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v61 = *(a1 + 176);
  if (v61)
  {
    for (jj = 0; jj != v61; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v63 = *(*(a1 + 184) + 8 * jj + 8);
      *a2 = 74;
      v64 = *(v63 + 5);
      if (v64 > 0x7F)
      {
        a2[1] = v64 | 0x80;
        v66 = v64 >> 7;
        if (v64 >> 14)
        {
          v65 = a2 + 3;
          do
          {
            *(v65 - 1) = v66 | 0x80;
            v67 = v66 >> 7;
            ++v65;
            v68 = v66 >> 14;
            v66 >>= 7;
          }

          while (v68);
          *(v65 - 1) = v67;
        }

        else
        {
          a2[2] = v66;
          v65 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v64;
        v65 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v63, v65, a3);
    }
  }

  v69 = *(a1 + 200);
  if (v69)
  {
    for (kk = 0; kk != v69; ++kk)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v71 = *(*(a1 + 208) + 8 * kk + 8);
      *a2 = 82;
      v72 = *(v71 + 5);
      if (v72 > 0x7F)
      {
        a2[1] = v72 | 0x80;
        v74 = v72 >> 7;
        if (v72 >> 14)
        {
          v73 = a2 + 3;
          do
          {
            *(v73 - 1) = v74 | 0x80;
            v75 = v74 >> 7;
            ++v73;
            v76 = v74 >> 14;
            v74 >>= 7;
          }

          while (v76);
          *(v73 - 1) = v75;
        }

        else
        {
          a2[2] = v74;
          v73 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v72;
        v73 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v71, v73, a3);
    }
  }

  v77 = *(a1 + 224);
  if (v77)
  {
    for (mm = 0; mm != v77; ++mm)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v79 = *(*(a1 + 232) + 8 * mm + 8);
      *a2 = 90;
      v80 = *(v79 + 5);
      if (v80 > 0x7F)
      {
        a2[1] = v80 | 0x80;
        v82 = v80 >> 7;
        if (v80 >> 14)
        {
          v81 = a2 + 3;
          do
          {
            *(v81 - 1) = v82 | 0x80;
            v83 = v82 >> 7;
            ++v81;
            v84 = v82 >> 14;
            v82 >>= 7;
          }

          while (v84);
          *(v81 - 1) = v83;
        }

        else
        {
          a2[2] = v82;
          v81 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v80;
        v81 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v79, v81, a3);
    }
  }

  v85 = *(a1 + 248);
  if (v85)
  {
    for (nn = 0; nn != v85; ++nn)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v87 = *(*(a1 + 256) + 8 * nn + 8);
      *a2 = 98;
      v88 = *(v87 + 5);
      if (v88 > 0x7F)
      {
        a2[1] = v88 | 0x80;
        v90 = v88 >> 7;
        if (v88 >> 14)
        {
          v89 = a2 + 3;
          do
          {
            *(v89 - 1) = v90 | 0x80;
            v91 = v90 >> 7;
            ++v89;
            v92 = v90 >> 14;
            v90 >>= 7;
          }

          while (v92);
          *(v89 - 1) = v91;
        }

        else
        {
          a2[2] = v90;
          v89 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v88;
        v89 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v87, v89, a3);
    }
  }

  v93 = *(a1 + 272);
  if (v93)
  {
    for (i1 = 0; i1 != v93; ++i1)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v95 = *(*(a1 + 280) + 8 * i1 + 8);
      *a2 = 106;
      v96 = *(v95 + 5);
      if (v96 > 0x7F)
      {
        a2[1] = v96 | 0x80;
        v98 = v96 >> 7;
        if (v96 >> 14)
        {
          v97 = a2 + 3;
          do
          {
            *(v97 - 1) = v98 | 0x80;
            v99 = v98 >> 7;
            ++v97;
            v100 = v98 >> 14;
            v98 >>= 7;
          }

          while (v100);
          *(v97 - 1) = v99;
        }

        else
        {
          a2[2] = v98;
          v97 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v96;
        v97 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v95, v97, a3);
    }
  }

  v101 = *(a1 + 296);
  if (v101)
  {
    for (i2 = 0; i2 != v101; ++i2)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v103 = *(*(a1 + 304) + 8 * i2 + 8);
      *a2 = 114;
      v104 = *(v103 + 20);
      if (v104 > 0x7F)
      {
        a2[1] = v104 | 0x80;
        v106 = v104 >> 7;
        if (v104 >> 14)
        {
          v105 = a2 + 3;
          do
          {
            *(v105 - 1) = v106 | 0x80;
            v107 = v106 >> 7;
            ++v105;
            v108 = v106 >> 14;
            v106 >>= 7;
          }

          while (v108);
          *(v105 - 1) = v107;
        }

        else
        {
          a2[2] = v106;
          v105 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v104;
        v105 = a2 + 2;
      }

      a2 = sub_275E01B88(v103, v105, a3);
    }
  }

  v109 = *(a1 + 320);
  if (v109 >= 1)
  {
    v110 = 8;
    do
    {
      a2 = sub_275DF6DE4(a3, 15, *(*(a1 + 328) + v110), a2);
      v110 += 8;
      --v109;
    }

    while (v109);
  }

  if ((v38 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v111 = *(a1 + 384);
    *a2 = 384;
    a2[2] = v111;
    a2 += 3;
  }

  if ((v38 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v112 = *(a1 + 376);
    *a2 = 394;
    v113 = *(v112 + 20);
    if (v113 > 0x7F)
    {
      a2[2] = v113 | 0x80;
      v115 = v113 >> 7;
      if (v113 >> 14)
      {
        v114 = a2 + 4;
        do
        {
          *(v114 - 1) = v115 | 0x80;
          v116 = v115 >> 7;
          ++v114;
          v117 = v115 >> 14;
          v115 >>= 7;
        }

        while (v117);
        *(v114 - 1) = v116;
      }

      else
      {
        a2[3] = v115;
        v114 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v113;
      v114 = a2 + 3;
    }

    a2 = sub_275DE79FC(v112, v114, a3);
  }

  v118 = *(a1 + 344);
  if (v118)
  {
    for (i3 = 0; i3 != v118; ++i3)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v120 = *(*(a1 + 352) + 8 * i3 + 8);
      *a2 = 402;
      v121 = *(v120 + 20);
      if (v121 > 0x7F)
      {
        a2[2] = v121 | 0x80;
        v123 = v121 >> 7;
        if (v121 >> 14)
        {
          v122 = a2 + 4;
          do
          {
            *(v122 - 1) = v123 | 0x80;
            v124 = v123 >> 7;
            ++v122;
            v125 = v123 >> 14;
            v123 >>= 7;
          }

          while (v125);
          *(v122 - 1) = v124;
        }

        else
        {
          a2[3] = v123;
          v122 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v121;
        v122 = a2 + 3;
      }

      a2 = sub_275E08030(v120, v122, a3);
    }
  }

  v126 = *(a1 + 8);
  if ((v126 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v126 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E0A4F0(uint64_t a1)
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
      v14 = TSP::Reference::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(a1 + 80);
  v16 = v9 + v15;
  v17 = *(a1 + 88);
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
      v21 = TSP::Reference::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(a1 + 104);
  v23 = v16 + v22;
  v24 = *(a1 + 112);
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
      v28 = TSP::Reference::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(a1 + 128);
  v30 = v23 + v29;
  v31 = *(a1 + 136);
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
      v35 = TSP::Range::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(a1 + 152);
  v37 = v30 + v36;
  v38 = *(a1 + 160);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = TSD::GeometryArchive::ByteSizeLong(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(a1 + 176);
  v44 = v37 + v43;
  v45 = *(a1 + 184);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = TSP::Reference::ByteSizeLong(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(a1 + 200);
  v51 = v44 + v50;
  v52 = *(a1 + 208);
  if (v52)
  {
    v53 = (v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  if (v50)
  {
    v54 = 8 * v50;
    do
    {
      v55 = *v53++;
      v56 = TSP::Reference::ByteSizeLong(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  v57 = *(a1 + 224);
  v58 = v51 + v57;
  v59 = *(a1 + 232);
  if (v59)
  {
    v60 = (v59 + 8);
  }

  else
  {
    v60 = 0;
  }

  if (v57)
  {
    v61 = 8 * v57;
    do
    {
      v62 = *v60++;
      v63 = TSP::Reference::ByteSizeLong(v62);
      v58 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
      v61 -= 8;
    }

    while (v61);
  }

  v64 = *(a1 + 248);
  v65 = v58 + v64;
  v66 = *(a1 + 256);
  if (v66)
  {
    v67 = (v66 + 8);
  }

  else
  {
    v67 = 0;
  }

  if (v64)
  {
    v68 = 8 * v64;
    do
    {
      v69 = *v67++;
      v70 = TSP::Reference::ByteSizeLong(v69);
      v65 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6);
      v68 -= 8;
    }

    while (v68);
  }

  v71 = *(a1 + 272);
  v72 = v65 + v71;
  v73 = *(a1 + 280);
  if (v73)
  {
    v74 = (v73 + 8);
  }

  else
  {
    v74 = 0;
  }

  if (v71)
  {
    v75 = 8 * v71;
    do
    {
      v76 = *v74++;
      v77 = TSP::Reference::ByteSizeLong(v76);
      v72 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6);
      v75 -= 8;
    }

    while (v75);
  }

  v78 = *(a1 + 296);
  v79 = v72 + v78;
  v80 = *(a1 + 304);
  if (v80)
  {
    v81 = (v80 + 8);
  }

  else
  {
    v81 = 0;
  }

  if (v78)
  {
    v82 = 8 * v78;
    do
    {
      v83 = *v81++;
      v84 = sub_275E01D4C(v83);
      v79 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6);
      v82 -= 8;
    }

    while (v82);
  }

  v85 = *(a1 + 320);
  v86 = v79 + v85;
  if (v85 >= 1)
  {
    v87 = (*(a1 + 328) + 8);
    do
    {
      v88 = *v87++;
      v89 = *(v88 + 23);
      v90 = *(v88 + 8);
      if ((v89 & 0x80u) == 0)
      {
        v90 = v89;
      }

      v86 += v90 + ((9 * (__clz(v90 | 1) ^ 0x1F) + 73) >> 6);
      --v85;
    }

    while (v85);
  }

  v91 = *(a1 + 344);
  v92 = v86 + 2 * v91;
  v93 = *(a1 + 352);
  if (v93)
  {
    v94 = (v93 + 8);
  }

  else
  {
    v94 = 0;
  }

  if (v91)
  {
    v95 = 8 * v91;
    do
    {
      v96 = *v94++;
      v97 = sub_275E081C0(v96);
      v92 += v97 + ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6);
      v95 -= 8;
    }

    while (v95);
  }

  v98 = *(a1 + 16);
  if ((v98 & 0xF) != 0)
  {
    if (v98)
    {
      v101 = *(a1 + 360) & 0xFFFFFFFFFFFFFFFELL;
      v102 = *(v101 + 23);
      v103 = *(v101 + 8);
      if ((v102 & 0x80u) == 0)
      {
        v103 = v102;
      }

      v92 += v103 + ((9 * (__clz(v103 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v98 & 2) == 0)
      {
LABEL_89:
        if ((v98 & 4) == 0)
        {
          goto LABEL_91;
        }

        goto LABEL_90;
      }
    }

    else if ((v98 & 2) == 0)
    {
      goto LABEL_89;
    }

    v104 = TSP::Size::ByteSizeLong(*(a1 + 368));
    v92 += v104 + ((9 * (__clz(v104 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v98 & 4) == 0)
    {
LABEL_91:
      if ((v98 & 8) != 0)
      {
        v92 += 3;
      }

      goto LABEL_93;
    }

LABEL_90:
    v99 = sub_275DE7AEC(*(a1 + 376));
    v92 += v99 + ((9 * (__clz(v99 | 1) ^ 0x1F) + 73) >> 6) + 2;
    goto LABEL_91;
  }

LABEL_93:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v92, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v92;
    return v92;
  }
}

uint64_t sub_275E0AA88(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8030, 0);
  if (v4)
  {

    return sub_275E0AB30(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E0AB30(uint64_t result, uint64_t a2)
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
    result = sub_275E226E8(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    result = sub_275E226E8(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    result = sub_275E226E8(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 128);
  if (v25)
  {
    v26 = *(a2 + 136);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    result = sub_275E2399C(v3 + 120, v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 152);
  if (v30)
  {
    v31 = *(a2 + 160);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 144));
    result = sub_275E23A5C(v3 + 144, v32, (v31 + 8), v30, **(v3 + 160) - *(v3 + 152));
    v33 = *(v3 + 152) + v30;
    *(v3 + 152) = v33;
    v34 = *(v3 + 160);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 176);
  if (v35)
  {
    v36 = *(a2 + 184);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 168));
    result = sub_275E226E8(v3 + 168, v37, (v36 + 8), v35, **(v3 + 184) - *(v3 + 176));
    v38 = *(v3 + 176) + v35;
    *(v3 + 176) = v38;
    v39 = *(v3 + 184);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 200);
  if (v40)
  {
    v41 = *(a2 + 208);
    v42 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 192));
    result = sub_275E226E8(v3 + 192, v42, (v41 + 8), v40, **(v3 + 208) - *(v3 + 200));
    v43 = *(v3 + 200) + v40;
    *(v3 + 200) = v43;
    v44 = *(v3 + 208);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 224);
  if (v45)
  {
    v46 = *(a2 + 232);
    v47 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 216));
    result = sub_275E226E8(v3 + 216, v47, (v46 + 8), v45, **(v3 + 232) - *(v3 + 224));
    v48 = *(v3 + 224) + v45;
    *(v3 + 224) = v48;
    v49 = *(v3 + 232);
    if (*v49 < v48)
    {
      *v49 = v48;
    }
  }

  v50 = *(a2 + 248);
  if (v50)
  {
    v51 = *(a2 + 256);
    v52 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 240));
    result = sub_275E226E8(v3 + 240, v52, (v51 + 8), v50, **(v3 + 256) - *(v3 + 248));
    v53 = *(v3 + 248) + v50;
    *(v3 + 248) = v53;
    v54 = *(v3 + 256);
    if (*v54 < v53)
    {
      *v54 = v53;
    }
  }

  v55 = *(a2 + 272);
  if (v55)
  {
    v56 = *(a2 + 280);
    v57 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 264));
    result = sub_275E226E8(v3 + 264, v57, (v56 + 8), v55, **(v3 + 280) - *(v3 + 272));
    v58 = *(v3 + 272) + v55;
    *(v3 + 272) = v58;
    v59 = *(v3 + 280);
    if (*v59 < v58)
    {
      *v59 = v58;
    }
  }

  v60 = *(a2 + 296);
  if (v60)
  {
    v61 = *(a2 + 304);
    v62 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 288));
    result = sub_275E23750(v3 + 288, v62, (v61 + 8), v60, **(v3 + 304) - *(v3 + 296));
    v63 = *(v3 + 296) + v60;
    *(v3 + 296) = v63;
    v64 = *(v3 + 304);
    if (*v64 < v63)
    {
      *v64 = v63;
    }
  }

  v65 = *(a2 + 320);
  if (v65)
  {
    v66 = *(a2 + 328);
    v67 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 312));
    result = sub_275E22D44((v3 + 312), v67, (v66 + 8), v65, **(v3 + 328) - *(v3 + 320));
    v68 = *(v3 + 320) + v65;
    *(v3 + 320) = v68;
    v69 = *(v3 + 328);
    if (*v69 < v68)
    {
      *v69 = v68;
    }
  }

  v70 = *(a2 + 344);
  if (v70)
  {
    v71 = *(a2 + 352);
    v72 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 336));
    result = sub_275E23B1C(v3 + 336, v72, (v71 + 8), v70, **(v3 + 352) - *(v3 + 344));
    v73 = *(v3 + 344) + v70;
    *(v3 + 344) = v73;
    v74 = *(v3 + 352);
    if (*v74 < v73)
    {
      *v74 = v73;
    }
  }

  v75 = *(a2 + 16);
  if ((v75 & 0xF) != 0)
  {
    if (v75)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v75 & 2) == 0)
      {
LABEL_48:
        if ((v75 & 4) == 0)
        {
          goto LABEL_49;
        }

        goto LABEL_62;
      }
    }

    else if ((v75 & 2) == 0)
    {
      goto LABEL_48;
    }

    *(v3 + 16) |= 2u;
    v76 = *(v3 + 368);
    if (!v76)
    {
      v77 = *(v3 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = MEMORY[0x277C8EFF0](v77);
      *(v3 + 368) = v76;
    }

    if (*(a2 + 368))
    {
      v78 = *(a2 + 368);
    }

    else
    {
      v78 = MEMORY[0x277D809D8];
    }

    result = TSP::Size::MergeFrom(v76, v78);
    if ((v75 & 4) == 0)
    {
LABEL_49:
      if ((v75 & 8) == 0)
      {
LABEL_51:
        *(v3 + 16) |= v75;
        return result;
      }

LABEL_50:
      *(v3 + 384) = *(a2 + 384);
      goto LABEL_51;
    }

LABEL_62:
    *(v3 + 16) |= 4u;
    v79 = *(v3 + 376);
    if (!v79)
    {
      v80 = *(v3 + 8);
      if (v80)
      {
        v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
      }

      v79 = sub_275E1F6F8(v80);
      *(v3 + 376) = v79;
    }

    if (*(a2 + 376))
    {
      v81 = *(a2 + 376);
    }

    else
    {
      v81 = &qword_2812EAB40;
    }

    result = sub_275DE7C20(v79, v81);
    if ((v75 & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  return result;
}

uint64_t sub_275E0B17C(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E088C4(result);

    return sub_275E0AA88(v4, a2);
  }

  return result;
}

uint64_t sub_275E0B1C8(uint64_t a1)
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
    v7 = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + 80);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = TSP::Reference::IsInitialized(*(*(a1 + 88) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(a1 + 104);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = TSP::Reference::IsInitialized(*(*(a1 + 112) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(a1 + 128);
  while (v14 >= 1)
  {
    v15 = v14 - 1;
    v16 = TSP::Range::IsInitialized(*(*(a1 + 136) + 8 * v14));
    v14 = v15;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *(a1 + 152);
  while (v18 >= 1)
  {
    v19 = v18 - 1;
    v20 = TSD::GeometryArchive::IsInitialized(*(*(a1 + 160) + 8 * v18));
    result = 0;
    v18 = v19;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  v21 = *(a1 + 176);
  while (v21 >= 1)
  {
    v22 = v21 - 1;
    v23 = TSP::Reference::IsInitialized(*(*(a1 + 184) + 8 * v21));
    result = 0;
    v21 = v22;
    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  v24 = *(a1 + 200);
  while (v24 >= 1)
  {
    v25 = v24 - 1;
    v26 = TSP::Reference::IsInitialized(*(*(a1 + 208) + 8 * v24));
    result = 0;
    v24 = v25;
    if ((v26 & 1) == 0)
    {
      return result;
    }
  }

  v27 = *(a1 + 224);
  while (v27 >= 1)
  {
    v28 = v27 - 1;
    v29 = TSP::Reference::IsInitialized(*(*(a1 + 232) + 8 * v27));
    result = 0;
    v27 = v28;
    if ((v29 & 1) == 0)
    {
      return result;
    }
  }

  v30 = *(a1 + 248);
  while (v30 >= 1)
  {
    v31 = v30 - 1;
    v32 = TSP::Reference::IsInitialized(*(*(a1 + 256) + 8 * v30));
    result = 0;
    v30 = v31;
    if ((v32 & 1) == 0)
    {
      return result;
    }
  }

  v33 = *(a1 + 272);
  while (v33 >= 1)
  {
    v34 = v33 - 1;
    v35 = TSP::Reference::IsInitialized(*(*(a1 + 280) + 8 * v33));
    result = 0;
    v33 = v34;
    if ((v35 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_275E03964(a1 + 288);
  if (result)
  {
    v36 = *(a1 + 344);
    while (v36 >= 1)
    {
      v37 = v36 - 1;
      v38 = sub_275E08490(*(*(a1 + 352) + 8 * v36));
      result = 0;
      v36 = v37;
      if ((v38 & 1) == 0)
      {
        return result;
      }
    }

    v39 = *(a1 + 16);
    if ((v39 & 2) != 0)
    {
      result = TSP::Size::IsInitialized(*(a1 + 368));
      if (!result)
      {
        return result;
      }

      v39 = *(a1 + 16);
    }

    if ((v39 & 4) == 0)
    {
      return 1;
    }

    v40 = *(a1 + 376);
    if ((*(v40 + 16) & 1) == 0)
    {
      return 0;
    }

    result = sub_275DE7730(*(v40 + 24));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_275E0B488(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D6A98;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = a2;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = a2;
  a1[9] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[10] = 0;
  a1[11] = 0;
  if (atomic_load_explicit(dword_2812EA3F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[12] = 0;
  a1[13] = 0;
  return a1;
}

void sub_275E0B51C(_Unwind_Exception *a1)
{
  sub_275E22CA8(v3);
  sub_275E22664(v2);
  sub_275E22F7C(v1);
  _Unwind_Resume(a1);
}

void *sub_275E0B550(void *a1)
{
  if (a1 != qword_2812EB848)
  {
    v2 = a1[12];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = a1[13];
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  sub_275E22CA8(a1 + 9);
  sub_275E22664(a1 + 6);
  sub_275E22F7C(a1 + 3);
  return a1;
}

void sub_275E0B5F8(void *a1)
{
  sub_275E0B550(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275E0B638(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  result = sub_275E223D8(a1 + 72);
  v9 = *(a1 + 16);
  if ((v9 & 3) != 0)
  {
    if (v9)
    {
      result = TSP::Reference::Clear(*(a1 + 96));
    }

    if ((v9 & 2) != 0)
    {
      result = TSP::UUID::Clear(*(a1 + 104));
    }
  }

  v11 = *(a1 + 8);
  v10 = a1 + 8;
  *(v10 + 8) = 0;
  if (v11)
  {

    return sub_275E224D0(v10);
  }

  return result;
}

google::protobuf::internal *sub_275E0B70C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v46 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275E221E8(a3, &v46))
    {
      return v46;
    }

    v5 = (v46 + 1);
    v6 = *v46;
    if ((*v46 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v46 + 2);
LABEL_6:
      v46 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v46, (v7 - 128));
    v46 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v44;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4)
        {
          if (v8 == 5 && v6 == 42)
          {
            v9 = v5 - 1;
            while (1)
            {
              v46 = (v9 + 1);
              v10 = *(a1 + 88);
              if (!v10)
              {
                goto LABEL_18;
              }

              v11 = *(a1 + 80);
              v12 = *v10;
              if (v11 >= *v10)
              {
                break;
              }

              *(a1 + 80) = v11 + 1;
LABEL_20:
              v9 = google::protobuf::internal::InlineGreedyStringParser();
              v46 = v9;
              if (!v9)
              {
                return 0;
              }

              if (*a3 <= v9 || *v9 != 42)
              {
                goto LABEL_2;
              }
            }

            if (v12 == *(a1 + 84))
            {
LABEL_18:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
              v10 = *(a1 + 88);
              v12 = *v10;
            }

            *v10 = v12 + 1;
            v13 = sub_275D5EFD8(*(a1 + 72));
            v14 = *(a1 + 80);
            v15 = *(a1 + 88) + 8 * v14;
            *(a1 + 80) = v14 + 1;
            *(v15 + 8) = v13;
            goto LABEL_20;
          }

          goto LABEL_67;
        }

        if (v6 != 34)
        {
          goto LABEL_67;
        }

        v30 = v5 - 1;
        while (1)
        {
          v31 = (v30 + 1);
          v46 = (v30 + 1);
          v32 = *(a1 + 64);
          if (!v32)
          {
            goto LABEL_51;
          }

          v38 = *(a1 + 56);
          v33 = *v32;
          if (v38 < *v32)
          {
            *(a1 + 56) = v38 + 1;
            v35 = *&v32[2 * v38 + 2];
            goto LABEL_55;
          }

          if (v33 == *(a1 + 60))
          {
LABEL_51:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v32 = *(a1 + 64);
            v33 = *v32;
          }

          *v32 = v33 + 1;
          v34 = MEMORY[0x277C8F050](*(a1 + 48));
          LODWORD(v35) = v34;
          v36 = *(a1 + 56);
          v37 = *(a1 + 64) + 8 * v36;
          *(a1 + 56) = v36 + 1;
          *(v37 + 8) = v34;
          v31 = v46;
LABEL_55:
          v30 = sub_275E5B9DC(a3, v35, v31);
          v46 = v30;
          if (!v30)
          {
            return 0;
          }

          if (*a3 <= v30 || *v30 != 34)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 26)
      {
        goto LABEL_67;
      }

      v21 = v5 - 1;
      while (1)
      {
        v22 = (v21 + 1);
        v46 = (v21 + 1);
        v23 = *(a1 + 40);
        if (!v23)
        {
          goto LABEL_38;
        }

        v29 = *(a1 + 32);
        v24 = *v23;
        if (v29 < *v23)
        {
          *(a1 + 32) = v29 + 1;
          v26 = *&v23[2 * v29 + 2];
          goto LABEL_42;
        }

        if (v24 == *(a1 + 36))
        {
LABEL_38:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v23 = *(a1 + 40);
          v24 = *v23;
        }

        *v23 = v24 + 1;
        v25 = MEMORY[0x277C8F000](*(a1 + 24));
        LODWORD(v26) = v25;
        v27 = *(a1 + 32);
        v28 = *(a1 + 40) + 8 * v27;
        *(a1 + 32) = v27 + 1;
        *(v28 + 8) = v25;
        v22 = v46;
LABEL_42:
        v21 = sub_275E5BB7C(a3, v26, v22);
        v46 = v21;
        if (!v21)
        {
          return 0;
        }

        if (*a3 <= v21 || *v21 != 26)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 1)
    {
      if (v6 == 10)
      {
        *(a1 + 16) |= 1u;
        v39 = *(a1 + 96);
        if (!v39)
        {
          v40 = *(a1 + 8);
          if (v40)
          {
            v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
          }

          v41 = MEMORY[0x277C8F050](v40);
          LODWORD(v39) = v41;
          *(a1 + 96) = v41;
          v5 = v46;
        }

        v20 = sub_275E5B9DC(a3, v39, v5);
        goto LABEL_74;
      }
    }

    else if (v8 == 2 && v6 == 18)
    {
      *(a1 + 16) |= 2u;
      v17 = *(a1 + 104);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277C8F000](v18);
        LODWORD(v17) = v19;
        *(a1 + 104) = v19;
        v5 = v46;
      }

      v20 = sub_275E5BB7C(a3, v17, v5);
      goto LABEL_74;
    }

LABEL_67:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_74:
    v46 = v20;
    if (!v20)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v46;
}

unsigned __int8 *sub_275E0BB2C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 96);
    *v4 = 10;
    v8 = *(v7 + 5);
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

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(a1 + 104);
    *v4 = 18;
    v14 = *(v13 + 5);
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = v4 + 3;
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
        v4[2] = v16;
        v15 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v14;
      v15 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v21 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v22 = *(v21 + 5);
      if (v22 > 0x7F)
      {
        v4[1] = v22 | 0x80;
        v24 = v22 >> 7;
        if (v22 >> 14)
        {
          v23 = v4 + 3;
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
          v4[2] = v24;
          v23 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v22;
        v23 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(a1 + 56);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v29 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 34;
      v30 = *(v29 + 5);
      if (v30 > 0x7F)
      {
        v4[1] = v30 | 0x80;
        v32 = v30 >> 7;
        if (v30 >> 14)
        {
          v31 = v4 + 3;
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
          v4[2] = v32;
          v31 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v30;
        v31 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(a1 + 80);
  if (v35 >= 1)
  {
    v36 = 8;
    do
    {
      v4 = sub_275DF6DE4(a3, 5, *(*(a1 + 88) + v36), v4);
      v36 += 8;
      --v35;
    }

    while (v35);
  }

  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v37 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275E0BE7C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    v3 = TSP::UUID::ByteSizeLong(*(a1 + 104));
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
      v10 = TSP::UUID::ByteSizeLong(v9);
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
      v17 = TSP::Reference::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(a1 + 80);
  v19 = v12 + v18;
  if (v18 >= 1)
  {
    v20 = (*(a1 + 88) + 8);
    do
    {
      v21 = *v20++;
      v22 = *(v21 + 23);
      v23 = *(v21 + 8);
      if ((v22 & 0x80u) == 0)
      {
        v23 = v22;
      }

      v19 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      --v18;
    }

    while (v18);
  }

  if (*(a1 + 16))
  {
    v24 = TSP::Reference::ByteSizeLong(*(a1 + 96));
    v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v19, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v19;
    return v19;
  }
}

uint64_t sub_275E0C044(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D8048, 0);
  if (v4)
  {

    return sub_275E0C0EC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275E0C0EC(uint64_t result, uint64_t a2)
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
    result = sub_275E232C4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275E226E8(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    result = sub_275E22D44((v3 + 72), v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 16);
  if ((v20 & 3) != 0)
  {
    if (v20)
    {
      *(v3 + 16) |= 1u;
      v21 = *(v3 + 96);
      if (!v21)
      {
        v22 = *(v3 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x277C8F050](v22);
        *(v3 + 96) = v21;
      }

      if (*(a2 + 96))
      {
        v23 = *(a2 + 96);
      }

      else
      {
        v23 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v21, v23);
    }

    if ((v20 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v24 = *(v3 + 104);
      if (!v24)
      {
        v25 = *(v3 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = MEMORY[0x277C8F000](v25);
        *(v3 + 104) = v24;
      }

      if (*(a2 + 104))
      {
        v26 = *(a2 + 104);
      }

      else
      {
        v26 = MEMORY[0x277D809E0];
      }

      return TSP::UUID::MergeFrom(v24, v26);
    }
  }

  return result;
}

uint64_t sub_275E0C304(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275E0B638(result);

    return sub_275E0C044(v4, a2);
  }

  return result;
}

uint64_t sub_275E0C350(uint64_t a1)
{
  if ((*(a1 + 16) & 2) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 96));
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

  result = TSP::UUID::IsInitialized(*(a1 + 104));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275E0C440(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D6B48;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812EA418, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 76) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

uint64_t *sub_275E0C4D8(uint64_t *a1)
{
  sub_275E0C518(a1);
  sub_275DE4968(a1 + 1);
  sub_275E22664(a1 + 3);
  return a1;
}

uint64_t *sub_275E0C518(uint64_t *result)
{
  if (result != &unk_2812EB8B8)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }

    v3 = v1[7];
    if (v3)
    {
      TSP::Date::~Date(v3);
      MEMORY[0x277C8F960]();
    }

    result = v1[8];
    if (result)
    {
      v4 = sub_275E0D718(result);
      result = MEMORY[0x277C8F960](v4, 0x10A1C404E984866);
    }

    v5 = v1[9];
    if (v5)
    {
      sub_275DE4968((v5 + 8));

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275E0C5F0(uint64_t *a1)
{
  sub_275E0C4D8(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275E0C630()
{
  if (atomic_load_explicit(dword_2812EA418, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EB8B8;
}

uint64_t *sub_275E0C670(uint64_t *result)
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

  v5 = *(v1 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      result = TSP::Reference::Clear(v1[6]);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    result = TSP::Date::Clear(v1[7]);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = sub_275E0C75C(v1[8]);
    if ((v5 & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    v6 = v1[9];
    v7 = *(v6 + 8);
    result = (v6 + 8);
    *(result + 16) = 0;
    *(result + 2) = 0;
    if (v7)
    {
      result = sub_275E224D0(result);
    }
  }

LABEL_16:
  if ((v5 & 0x30) != 0)
  {
    *(v1 + 22) = 0;
    v1[10] = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 1;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_275E224D0(v8);
  }

  return result;
}

uint64_t *sub_275E0C75C(uint64_t *result)
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

uint64_t *sub_275E0C7BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 16) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_275E224D0(result);
  }

  return result;
}

google::protobuf::internal *sub_275E0C7D4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_81;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v8 >> 3 > 5)
        {
          if (v10 == 6)
          {
            if (v8 == 50)
            {
              *(a1 + 16) |= 4u;
              v32 = *(a1 + 64);
              if (!v32)
              {
                v33 = *(a1 + 8);
                if (v33)
                {
                  v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
                }

                v32 = sub_275E20C04(v33);
                *(a1 + 64) = v32;
                v7 = v38;
              }

              v14 = sub_275E5D680(a3, v32, v7);
              goto LABEL_74;
            }
          }

          else if (v10 == 7 && v8 == 58)
          {
            *(a1 + 16) |= 8u;
            v16 = *(a1 + 72);
            if (!v16)
            {
              v17 = *(a1 + 8);
              if (v17)
              {
                v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
              }

              v16 = sub_275E20CD4(v17);
              *(a1 + 72) = v16;
              v7 = v38;
            }

            v14 = sub_275E5D750(a3, v16, v7);
            goto LABEL_74;
          }

          goto LABEL_67;
        }

        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 42)
          {
            *(a1 + 16) |= 2u;
            v11 = *(a1 + 56);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v13 = MEMORY[0x277C8EFE0](v12);
              LODWORD(v11) = v13;
              *(a1 + 56) = v13;
              v7 = v38;
            }

            v14 = sub_275E5D5B0(a3, v11, v7);
            goto LABEL_74;
          }

          goto LABEL_67;
        }

        if (v8 != 32)
        {
          goto LABEL_67;
        }

        v30 = (v7 + 1);
        v29 = *v7;
        if ((v29 & 0x8000000000000000) != 0)
        {
          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
            goto LABEL_52;
          }

          v38 = google::protobuf::internal::VarintParseSlow64(v7, v29);
          if (!v38)
          {
LABEL_81:
            v38 = 0;
            goto LABEL_2;
          }
        }

        else
        {
LABEL_52:
          v38 = v30;
        }

        if (v29 > 1)
        {
          sub_275E5F7E4();
        }

        else
        {
          *(a1 + 16) |= 0x20u;
          *(a1 + 88) = v29;
        }

        goto LABEL_75;
      }

      if (v10 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_67;
        }

        v20 = v7 - 1;
        while (2)
        {
          v21 = (v20 + 1);
          v38 = (v20 + 1);
          v22 = *(a1 + 40);
          if (!v22)
          {
LABEL_38:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v22 = *(a1 + 40);
            v23 = *v22;
            goto LABEL_39;
          }

          v28 = *(a1 + 32);
          v23 = *v22;
          if (v28 >= *v22)
          {
            if (v23 == *(a1 + 36))
            {
              goto LABEL_38;
            }

LABEL_39:
            *v22 = v23 + 1;
            v24 = MEMORY[0x277C8F050](*(a1 + 24));
            LODWORD(v25) = v24;
            v26 = *(a1 + 32);
            v27 = *(a1 + 40) + 8 * v26;
            *(a1 + 32) = v26 + 1;
            *(v27 + 8) = v24;
            v21 = v38;
          }

          else
          {
            *(a1 + 32) = v28 + 1;
            v25 = *&v22[2 * v28 + 2];
          }

          v20 = sub_275E5B9DC(a3, v25, v21);
          v38 = v20;
          if (!v20)
          {
            goto LABEL_81;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_75;
          }

          continue;
        }
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v34 = *(a1 + 48);
          if (!v34)
          {
            v35 = *(a1 + 8);
            if (v35)
            {
              v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
            }

            v36 = MEMORY[0x277C8F050](v35);
            LODWORD(v34) = v36;
            *(a1 + 48) = v36;
            v7 = v38;
          }

          v14 = sub_275E5B9DC(a3, v34, v7);
LABEL_74:
          v38 = v14;
          if (!v14)
          {
            goto LABEL_81;
          }

          goto LABEL_75;
        }

LABEL_67:
        if (v8)
        {
          v37 = (v8 & 7) == 4;
        }

        else
        {
          v37 = 1;
        }

        if (v37)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v14 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_74;
      }

      if (v10 != 3 || v8 != 25)
      {
        goto LABEL_67;
      }

      v5 |= 0x10u;
      *(a1 + 80) = *v7;
      v38 = (v7 + 8);
LABEL_75:
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