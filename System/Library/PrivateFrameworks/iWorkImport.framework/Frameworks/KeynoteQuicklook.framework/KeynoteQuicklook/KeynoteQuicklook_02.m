uint64_t sub_275DE90E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(a1 + 32);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v6;
    goto LABEL_11;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
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

uint64_t sub_275DE91B8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D78, 0);
  if (v4)
  {

    return sub_275DE8B14(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275DE9260(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE7F94(result);

    return sub_275DE91B8(v4, a2);
  }

  return result;
}

uint64_t sub_275DE92E4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D56A8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812E9FE8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  return a1;
}

uint64_t sub_275DE9360(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812EABD0)
  {
    if (*(a1 + 32))
    {
      v3 = MEMORY[0x277C8E820]();
      MEMORY[0x277C8F960](v3, 0x10A1C405E354A75);
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      TSP::Color::~Color(v4);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968((a1 + 8));
  return a1;
}

void sub_275DE9420(uint64_t a1)
{
  sub_275DE9360(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DE9460(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = TSD::PathSourceArchive::Clear(result[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = TSP::Color::Clear(v1[5]);
  }

LABEL_6:
  if ((v2 & 0x78) != 0)
  {
    v1[6] = 0;
    v1[7] = 0;
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

google::protobuf::internal *sub_275DE951C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  v5 = 0;
  if ((sub_275E221E8(a3, &v40) & 1) == 0)
  {
    while (1)
    {
      v7 = (v40 + 1);
      v8 = *v40;
      if ((*v40 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v9 - 128));
      v40 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_79;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v8 >> 3 > 5)
        {
          if (v10 != 6)
          {
            if (v10 == 7 && v8 == 56)
            {
              v19 = (v7 + 1);
              v20 = *v7;
              if ((v20 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }

              v21 = *v19;
              v22 = (v21 << 7) + v20;
              LODWORD(v20) = v22 - 128;
              if (v21 < 0)
              {
                v40 = google::protobuf::internal::VarintParseSlow64(v7, (v22 - 128));
                if (!v40)
                {
                  goto LABEL_79;
                }

                LODWORD(v20) = v37;
              }

              else
              {
                v19 = (v7 + 2);
LABEL_34:
                v40 = v19;
              }

              if ((v20 - 2) < 5 || v20 == 0)
              {
                *(a1 + 16) |= 0x40u;
                *(a1 + 64) = v20;
              }

              else
              {
                v33 = *(a1 + 8);
                if (v33)
                {
                  v34 = ((v33 & 0xFFFFFFFFFFFFFFFELL) + 8);
                }

                else
                {
                  v34 = sub_275E22260((a1 + 8));
                }

                google::protobuf::UnknownFieldSet::AddVarint(v34);
              }

              goto LABEL_66;
            }

            goto LABEL_58;
          }

          if (v8 != 50)
          {
            goto LABEL_58;
          }

          *(a1 + 16) |= 4u;
          v29 = *(a1 + 40);
          if (!v29)
          {
            v30 = *(a1 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v31 = MEMORY[0x277C8F010](v30);
            LODWORD(v29) = v31;
            *(a1 + 40) = v31;
            v7 = v40;
          }

          v14 = sub_275E5B69C(a3, v29, v7);
        }

        else if (v10 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_58;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v14 = google::protobuf::internal::InlineGreedyStringParser();
        }

        else
        {
          if (v10 != 5 || v8 != 42)
          {
            goto LABEL_58;
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

            v13 = MEMORY[0x277C8EFB0](v12);
            LODWORD(v11) = v13;
            *(a1 + 32) = v13;
            v7 = v40;
          }

          v14 = sub_275E5B76C(a3, v11, v7);
        }

LABEL_65:
        v40 = v14;
        if (!v14)
        {
          goto LABEL_79;
        }

        goto LABEL_66;
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_58;
        }

        v5 |= 0x10u;
        v26 = (v7 + 1);
        LODWORD(v27) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_47;
        }

        v28 = *v26;
        v27 = (v27 + (v28 << 7) - 128);
        if ((v28 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_47:
          v40 = v26;
          *(a1 + 56) = v27;
          goto LABEL_66;
        }

        v35 = google::protobuf::internal::VarintParseSlow32(v7, v27);
        v40 = v35;
        *(a1 + 56) = v36;
        if (!v35)
        {
          goto LABEL_79;
        }
      }

      else
      {
        if (v10 == 2)
        {
          if (v8 == 17)
          {
            v5 |= 8u;
            *(a1 + 48) = *v7;
            v40 = (v7 + 8);
            goto LABEL_66;
          }

LABEL_58:
          if (v8)
          {
            v32 = (v8 & 7) == 4;
          }

          else
          {
            v32 = 1;
          }

          if (v32)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v14 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_65;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_58;
        }

        v5 |= 0x20u;
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_27:
          v40 = v17;
          *(a1 + 60) = v16 != 0;
          goto LABEL_66;
        }

        v38 = google::protobuf::internal::VarintParseSlow64(v7, v16);
        v40 = v38;
        *(a1 + 60) = v39 != 0;
        if (!v38)
        {
LABEL_79:
          v40 = 0;
          goto LABEL_2;
        }
      }

LABEL_66:
      if (sub_275E221E8(a3, &v40))
      {
        goto LABEL_2;
      }
    }

    v7 = (v40 + 2);
LABEL_6:
    v40 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v40;
}

unsigned __int8 *sub_275DE98F4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 56);
    *v4 = 8;
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
        if ((v6 & 8) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if ((v6 & 8) != 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_3:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_23;
  }

  if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(a1 + 48);
  *v4 = 17;
  *(v4 + 1) = v11;
  v4 += 9;
  if ((v6 & 0x20) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v12 = *(a1 + 60);
  *v4 = 24;
  v4[1] = v12;
  v4 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  v4 = sub_275DE5774(a3, 4, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 32);
  *v4 = 42;
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

  v4 = TSD::PathSourceArchive::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(a1 + 40);
  *v4 = 50;
  v20 = *(v19 + 5);
  if (v20 > 0x7F)
  {
    v4[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = v4 + 3;
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
      v4[2] = v22;
      v21 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v20;
    v21 = v4 + 2;
  }

  v4 = TSP::Color::_InternalSerialize(v19, v21, a3);
  if ((v6 & 0x40) != 0)
  {
LABEL_47:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(a1 + 64);
    *v4 = 56;
    if (v25 > 0x7F)
    {
      v4[1] = v25 | 0x80;
      v26 = v25 >> 7;
      if (v25 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++v4;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(v4 - 1) = v27;
      }

      else
      {
        v4[2] = v26;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v25;
      v4 += 2;
    }
  }

LABEL_56:
  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DE9C54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (v2)
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 = v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v8 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 32));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_10:
  if ((v2 & 4) != 0)
  {
    v9 = TSP::Color::ByteSizeLong(*(a1 + 40));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v10 = v3 + 9;
  if ((v2 & 8) == 0)
  {
    v10 = v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v10 += ((9 * (__clz(*(a1 + 56) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 = v10 + ((v2 >> 4) & 2);
  if ((v2 & 0x40) != 0)
  {
    v11 = *(a1 + 64);
    v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 11;
    }

    v4 += v13;
  }

LABEL_21:
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

uint64_t sub_275DE9DE8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7D90, 0);
  if (v4)
  {

    return sub_275DE9E90(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DE9E90(uint64_t result, uint64_t a2)
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

        goto LABEL_23;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C8EFB0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = MEMORY[0x277D804C8];
    }

    result = TSD::PathSourceArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

LABEL_23:
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C8F010](v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 40))
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = MEMORY[0x277D809E8];
    }

    result = TSP::Color::MergeFrom(v9, v11);
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
    *(v3 + 48) = *(a2 + 48);
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
    *(v3 + 56) = *(a2 + 56);
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
      *(v3 + 64) = *(a2 + 64);
      goto LABEL_12;
    }

LABEL_33:
    *(v3 + 60) = *(a2 + 60);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return result;
}

uint64_t *sub_275DEA004(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DE9460(result);

    return sub_275DE9DE8(v4, a2);
  }

  return result;
}

uint64_t sub_275DEA050(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = TSD::PathSourceArchive::IsInitialized(*(a1 + 32));
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

  result = TSP::Color::IsInitialized(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_275DEA0D4(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5758;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812E9FB8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = MEMORY[0x277D80A90];
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  return a1;
}

uint64_t *sub_275DEA148(uint64_t *a1)
{
  sub_275DEA17C(a1);
  sub_275DE4968(a1 + 1);
  return a1;
}

uint64_t *sub_275DEA17C(uint64_t *result)
{
  v1 = result;
  v2 = result[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (v1 != qword_2812EAC18)
  {
    v3 = v1[4];
    if (v3)
    {
      v4 = sub_275DE9360(v3);
      MEMORY[0x277C8F960](v4, 0x10A1C40B9FC5216);
    }

    v5 = v1[5];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C8F960]();
    }

    result = v1[6];
    if (result)
    {
      sub_275DE8CE8(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DEA264(uint64_t *a1)
{
  sub_275DEA148(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DEA2A4()
{
  if (atomic_load_explicit(dword_2812E9FB8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EAC18;
}

uint64_t *sub_275DEA2E4(uint64_t *result)
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

LABEL_15:
    result = sub_275DE9460(result[4]);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  result = TSP::UUID::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_275DE7F94(v1[6]);
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DEA3A0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  while ((sub_275E221E8(a3, &v22) & 1) == 0)
  {
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
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_35;
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

          v17 = MEMORY[0x277C8F000](v16);
          LODWORD(v15) = v17;
          *(a1 + 40) = v17;
          v5 = v22;
        }

        v12 = sub_275E5BB7C(a3, v15, v5);
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_35;
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

          v13 = sub_275E1F89C(v14);
          *(a1 + 48) = v13;
          v5 = v22;
        }

        v12 = sub_275E5BAAC(a3, v13, v5);
      }
    }

    else if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_35;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v12 = google::protobuf::internal::InlineGreedyStringParser();
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_35:
        if (v6)
        {
          v18 = (v6 & 7) == 4;
        }

        else
        {
          v18 = 1;
        }

        if (v18)
        {
          *(a3 + 80) = v6 - 1;
          return v22;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v12 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_42;
      }

      *(a1 + 16) |= 2u;
      v10 = *(a1 + 32);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = sub_275E1F96C(v11);
        *(a1 + 32) = v10;
        v5 = v22;
      }

      v12 = sub_275E5BC4C(a3, v10, v5);
    }

LABEL_42:
    v22 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  return v22;
}

unsigned __int8 *sub_275DEA5F8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 32);
  *v4 = 18;
  v8 = *(v7 + 20);
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

  v4 = sub_275DE98F4(v7, v9, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_27;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 40);
  *v4 = 26;
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
  if ((v6 & 8) != 0)
  {
LABEL_27:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(a1 + 48);
    *v4 = 34;
    v20 = *(v19 + 20);
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v22 = v20 >> 7;
      if (v20 >> 14)
      {
        v21 = v4 + 3;
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
        v4[2] = v22;
        v21 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v20;
      v21 = v4 + 2;
    }

    v4 = sub_275DE8F64(v19, v21, a3);
  }

LABEL_37:
  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DEA85C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = sub_275DE9C54(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = TSP::UUID::ByteSizeLong(*(a1 + 40));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_12:
    v8 = sub_275DE90E4(*(a1 + 48));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
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

uint64_t sub_275DEA9B8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7DA8, 0);
  if (v4)
  {

    return sub_275DEAA60(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DEAA60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) == 0)
  {
    return result;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = sub_275E1F96C(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = &unk_2812EABD0;
    }

    result = sub_275DE9E90(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_26;
    }

    goto LABEL_18;
  }

  *(v3 + 16) |= 1u;
  result = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_18:
  *(v3 + 16) |= 4u;
  v9 = *(v3 + 40);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x277C8F000](v10);
    *(v3 + 40) = v9;
  }

  if (*(a2 + 40))
  {
    v11 = *(a2 + 40);
  }

  else
  {
    v11 = MEMORY[0x277D809E0];
  }

  result = TSP::UUID::MergeFrom(v9, v11);
  if ((v5 & 8) != 0)
  {
LABEL_26:
    *(v3 + 16) |= 8u;
    v12 = *(v3 + 48);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = sub_275E1F89C(v13);
      *(v3 + 48) = v12;
    }

    if (*(a2 + 48))
    {
      v14 = *(a2 + 48);
    }

    else
    {
      v14 = &qword_2812EABA8;
    }

    return sub_275DE8B14(v12, v14);
  }

  return result;
}

uint64_t *sub_275DEABF0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEA2E4(result);

    return sub_275DEA9B8(v4, a2);
  }

  return result;
}

uint64_t sub_275DEAC3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = sub_275DEA050(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 40));
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

  v4 = *(a1 + 48);
  if ((*(v4 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(v4 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DEACE0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5808;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load_explicit(dword_2812EA010, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 32) = MEMORY[0x277D80A90];
  *(a1 + 40) = v3;
  *(a1 + 48) = v3;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 31;
  return a1;
}

uint64_t sub_275DEAD8C(uint64_t a1)
{
  sub_275DEADC0(a1);
  sub_275DE4968((a1 + 8));
  return a1;
}

uint64_t sub_275DEADC0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 40);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 48);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C8F960](v5, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EAC50)
  {
    v6 = *(v1 + 56);
    if (v6)
    {
      TSP::Color::~Color(v6);
      MEMORY[0x277C8F960]();
    }

    v7 = *(v1 + 64);
    if (v7)
    {
      v8 = sub_275DE4794(v7);
      MEMORY[0x277C8F960](v8, 0x10A1C40DC51A97DLL);
    }

    result = *(v1 + 72);
    if (result)
    {
      MEMORY[0x277C8E820]();

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DEAF08(uint64_t a1)
{
  sub_275DEAD8C(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DEAF48(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_27:
    v6 = result[5] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_35:
    result = TSP::Color::Clear(result[7]);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_36;
  }

  v5 = result[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_31:
  v7 = result[6] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v7 + 23) < 0)
  {
    **v7 = 0;
    *(v7 + 8) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_36:
  result = sub_275DE4A40(v1[8]);
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result = TSD::PathSourceArchive::Clear(v1[9]);
  }

LABEL_9:
  if ((v2 & 0xC0) != 0)
  {
    v1[10] = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 132) = 0u;
    *(v1 + 15) = 0u;
    *(v1 + 13) = 0u;
    *(v1 + 11) = 0u;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 90) = 0;
    *(v1 + 164) = 0u;
    *(v1 + 148) = 0u;
  }

  if (HIBYTE(v2))
  {
    *(v1 + 190) = 0;
    *(v1 + 182) = 0;
    *(v1 + 198) = 0;
  }

  if ((*(v1 + 20) & 7) != 0)
  {
    v1[25] = 0;
    v1[26] = 0;
    *(v1 + 54) = 31;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  v3[1] = 0;
  if (v4)
  {

    return sub_275E224D0(v3);
  }

  return result;
}

google::protobuf::internal *sub_275DEB0D8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v111 = a2;
  if ((sub_275E221E8(a3, &v111) & 1) == 0)
  {
    while (1)
    {
      v6 = (v111 + 1);
      v7 = *v111;
      if (*v111 < 0)
      {
        v8 = v7 + (*v6 << 7);
        v7 = v8 - 128;
        if (*v6 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v111, (v8 - 128));
          v111 = TagFallback;
          if (!TagFallback)
          {
            return 0;
          }

          v6 = TagFallback;
          v7 = v10;
          goto LABEL_7;
        }

        v6 = (v111 + 2);
      }

      v111 = v6;
LABEL_7:
      switch(v7 >> 3)
      {
        case 1u:
          if (v7 != 10)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 1u;
          goto LABEL_110;
        case 2u:
          if (v7 != 18)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 2u;
          goto LABEL_110;
        case 3u:
          if (v7 != 24)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x40u;
          v56 = (v6 + 1);
          LODWORD(v57) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

          v58 = *v56;
          v57 = (v57 + (v58 << 7) - 128);
          if (v58 < 0)
          {
            v101 = google::protobuf::internal::VarintParseSlow32(v6, v57);
            v111 = v101;
            *(a1 + 80) = v102;
            if (!v101)
            {
              return 0;
            }
          }

          else
          {
            v56 = (v6 + 2);
LABEL_101:
            v111 = v56;
            *(a1 + 80) = v57;
          }

          goto LABEL_168;
        case 4u:
          if (v7 != 32)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x80u;
          v47 = (v6 + 1);
          LODWORD(v48) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_81;
          }

          v49 = *v47;
          v48 = (v48 + (v49 << 7) - 128);
          if (v49 < 0)
          {
            v99 = google::protobuf::internal::VarintParseSlow32(v6, v48);
            v111 = v99;
            *(a1 + 84) = v100;
            if (!v99)
            {
              return 0;
            }
          }

          else
          {
            v47 = (v6 + 2);
LABEL_81:
            v111 = v47;
            *(a1 + 84) = v48;
          }

          goto LABEL_168;
        case 5u:
          if (v7 != 41)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x100u;
          v50 = *v6;
          v33 = (v6 + 8);
          *(a1 + 88) = v50;
          goto LABEL_159;
        case 6u:
          if (v7 != 49)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x200u;
          v65 = *v6;
          v33 = (v6 + 8);
          *(a1 + 96) = v65;
          goto LABEL_159;
        case 7u:
          if (v7 != 57)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x400u;
          v45 = *v6;
          v33 = (v6 + 8);
          *(a1 + 104) = v45;
          goto LABEL_159;
        case 8u:
          if (v7 != 65)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x800u;
          v46 = *v6;
          v33 = (v6 + 8);
          *(a1 + 112) = v46;
          goto LABEL_159;
        case 9u:
          if (v7 != 73)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x1000u;
          v55 = *v6;
          v33 = (v6 + 8);
          *(a1 + 120) = v55;
          goto LABEL_159;
        case 0xAu:
          if (v7 != 80)
          {
            goto LABEL_160;
          }

          v53 = (v6 + 1);
          v52 = *v6;
          if ((v52 & 0x8000000000000000) == 0)
          {
            goto LABEL_90;
          }

          v54 = *v53;
          v52 = (v54 << 7) + v52 - 128;
          if (v54 < 0)
          {
            v111 = google::protobuf::internal::VarintParseSlow64(v6, v52);
            if (!v111)
            {
              return 0;
            }
          }

          else
          {
            v53 = (v6 + 2);
LABEL_90:
            v111 = v53;
          }

          if ((v52 - 31) > 1)
          {
            sub_275E5F6C0();
          }

          else
          {
            *(a1 + 20) |= 4u;
            *(a1 + 216) = v52;
          }

          goto LABEL_168;
        case 0xBu:
          if (v7 != 89)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x2000u;
          v71 = *v6;
          v33 = (v6 + 8);
          *(a1 + 128) = v71;
          goto LABEL_159;
        case 0xCu:
          if (v7 != 97)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x4000u;
          v34 = *v6;
          v33 = (v6 + 8);
          *(a1 + 136) = v34;
          goto LABEL_159;
        case 0xDu:
          if (v7 != 104)
          {
            goto LABEL_160;
          }

          v31 = (v6 + 1);
          v30 = *v6;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v111 = google::protobuf::internal::VarintParseSlow64(v6, v30);
            if (!v111)
            {
              return 0;
            }
          }

          else
          {
            v31 = (v6 + 2);
LABEL_49:
            v111 = v31;
          }

          if (v30 > 4)
          {
            sub_275E5F684();
          }

          else
          {
            *(a1 + 16) |= 0x8000u;
            *(a1 + 144) = v30;
          }

          goto LABEL_168;
        case 0xEu:
          if (v7 != 112)
          {
            goto LABEL_160;
          }

          v74 = (v6 + 1);
          v73 = *v6;
          if ((v73 & 0x8000000000000000) == 0)
          {
            goto LABEL_137;
          }

          v75 = *v74;
          v73 = (v75 << 7) + v73 - 128;
          if (v75 < 0)
          {
            v111 = google::protobuf::internal::VarintParseSlow64(v6, v73);
            if (!v111)
            {
              return 0;
            }
          }

          else
          {
            v74 = (v6 + 2);
LABEL_137:
            v111 = v74;
          }

          if (v73 > 1)
          {
            sub_275E5F648();
          }

          else
          {
            *(a1 + 16) |= 0x10000u;
            *(a1 + 148) = v73;
          }

          goto LABEL_168;
        case 0xFu:
          if (v7 != 122)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 4u;
LABEL_110:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v17 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_167;
        case 0x10u:
          if (v7 != 130)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 8u;
          v59 = *(a1 + 56);
          if (!v59)
          {
            v60 = *(a1 + 8);
            if (v60)
            {
              v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
            }

            v61 = MEMORY[0x277C8F010](v60);
            LODWORD(v59) = v61;
            *(a1 + 56) = v61;
            v6 = v111;
          }

          v17 = sub_275E5B69C(a3, v59, v6);
          goto LABEL_167;
        case 0x11u:
          if (v7 != 137)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x20000u;
          v72 = *v6;
          v33 = (v6 + 8);
          *(a1 + 152) = v72;
          goto LABEL_159;
        case 0x12u:
          if (v7 != 146)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x10u;
          v66 = *(a1 + 64);
          if (!v66)
          {
            v67 = *(a1 + 8);
            if (v67)
            {
              v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
            }

            v66 = sub_275E1F5E0(v67);
            *(a1 + 64) = v66;
            v6 = v111;
          }

          v17 = sub_275E5B83C(a3, v66, v6);
          goto LABEL_167;
        case 0x13u:
          if (v7 != 152)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x400000u;
          v12 = (v6 + 1);
          v11 = *v6;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if (v13 < 0)
          {
            v87 = google::protobuf::internal::VarintParseSlow64(v6, v11);
            v111 = v87;
            *(a1 + 180) = v88 != 0;
            if (!v87)
            {
              return 0;
            }
          }

          else
          {
            v12 = (v6 + 2);
LABEL_16:
            v111 = v12;
            *(a1 + 180) = v11 != 0;
          }

          goto LABEL_168;
        case 0x14u:
          if (v7 != 160)
          {
            goto LABEL_160;
          }

          v39 = (v6 + 1);
          v38 = *v6;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_63;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v111 = google::protobuf::internal::VarintParseSlow64(v6, v38);
            if (!v111)
            {
              return 0;
            }
          }

          else
          {
            v39 = (v6 + 2);
LABEL_63:
            v111 = v39;
          }

          if (v38 > 4)
          {
            sub_275E5F60C();
          }

          else
          {
            *(a1 + 16) |= 0x40000u;
            *(a1 + 160) = v38;
          }

          goto LABEL_168;
        case 0x15u:
          if (v7 != 168)
          {
            goto LABEL_160;
          }

          v77 = (v6 + 1);
          v76 = *v6;
          if ((v76 & 0x8000000000000000) == 0)
          {
            goto LABEL_144;
          }

          v78 = *v77;
          v76 = (v78 << 7) + v76 - 128;
          if (v78 < 0)
          {
            v111 = google::protobuf::internal::VarintParseSlow64(v6, v76);
            if (!v111)
            {
              return 0;
            }
          }

          else
          {
            v77 = (v6 + 2);
LABEL_144:
            v111 = v77;
          }

          if (v76 > 5)
          {
            sub_275E5F5D0();
          }

          else
          {
            *(a1 + 16) |= 0x80000u;
            *(a1 + 164) = v76;
          }

          goto LABEL_168;
        case 0x16u:
          if (v7 != 178)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x20u;
          v14 = *(a1 + 72);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C8EFB0](v15);
            LODWORD(v14) = v16;
            *(a1 + 72) = v16;
            v6 = v111;
          }

          v17 = sub_275E5B76C(a3, v14, v6);
          goto LABEL_167;
        case 0x17u:
          if (v7 != 184)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x800000u;
          v36 = (v6 + 1);
          v35 = *v6;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_58;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if (v37 < 0)
          {
            v95 = google::protobuf::internal::VarintParseSlow64(v6, v35);
            v111 = v95;
            *(a1 + 181) = v96 != 0;
            if (!v95)
            {
              return 0;
            }
          }

          else
          {
            v36 = (v6 + 2);
LABEL_58:
            v111 = v36;
            *(a1 + 181) = v35 != 0;
          }

          goto LABEL_168;
        case 0x18u:
          if (v7 != 192)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x200000u;
          v21 = (v6 + 1);
          LODWORD(v22) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v21;
          v22 = (v22 + (v23 << 7) - 128);
          if (v23 < 0)
          {
            v89 = google::protobuf::internal::VarintParseSlow32(v6, v22);
            v111 = v89;
            *(a1 + 176) = v90;
            if (!v89)
            {
              return 0;
            }
          }

          else
          {
            v21 = (v6 + 2);
LABEL_34:
            v111 = v21;
            *(a1 + 176) = v22;
          }

          goto LABEL_168;
        case 0x19u:
          if (v7 != 201)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x100000u;
          v51 = *v6;
          v33 = (v6 + 8);
          *(a1 + 168) = v51;
          goto LABEL_159;
        case 0x1Au:
          if (v7 != 208)
          {
            goto LABEL_160;
          }

          v19 = (v6 + 1);
          v18 = *v6;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if (v20 < 0)
          {
            v111 = google::protobuf::internal::VarintParseSlow64(v6, v18);
            if (!v111)
            {
              return 0;
            }
          }

          else
          {
            v19 = (v6 + 2);
LABEL_27:
            v111 = v19;
          }

          if (v18 > 2)
          {
            sub_275E5F594();
          }

          else
          {
            *(a1 + 16) |= 0x4000000u;
            *(a1 + 184) = v18;
          }

          goto LABEL_168;
        case 0x1Bu:
          if (v7 != 216)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x8000000u;
          v82 = (v6 + 1);
          LODWORD(v83) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_156;
          }

          v84 = *v82;
          v83 = (v83 + (v84 << 7) - 128);
          if (v84 < 0)
          {
            v109 = google::protobuf::internal::VarintParseSlow32(v6, v83);
            v111 = v109;
            *(a1 + 188) = v110;
            if (!v109)
            {
              return 0;
            }
          }

          else
          {
            v82 = (v6 + 2);
LABEL_156:
            v111 = v82;
            *(a1 + 188) = v83;
          }

          goto LABEL_168;
        case 0x1Cu:
          if (v7 != 224)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x10000000u;
          v79 = (v6 + 1);
          LODWORD(v80) = *v6;
          if ((*v6 & 0x80000000) == 0)
          {
            goto LABEL_151;
          }

          v81 = *v79;
          v80 = (v80 + (v81 << 7) - 128);
          if (v81 < 0)
          {
            v107 = google::protobuf::internal::VarintParseSlow32(v6, v80);
            v111 = v107;
            *(a1 + 192) = v108;
            if (!v107)
            {
              return 0;
            }
          }

          else
          {
            v79 = (v6 + 2);
LABEL_151:
            v111 = v79;
            *(a1 + 192) = v80;
          }

          goto LABEL_168;
        case 0x1Du:
          if (v7 != 232)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x1000000u;
          v28 = (v6 + 1);
          v27 = *v6;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v93 = google::protobuf::internal::VarintParseSlow64(v6, v27);
            v111 = v93;
            *(a1 + 182) = v94 != 0;
            if (!v93)
            {
              return 0;
            }
          }

          else
          {
            v28 = (v6 + 2);
LABEL_44:
            v111 = v28;
            *(a1 + 182) = v27 != 0;
          }

          goto LABEL_168;
        case 0x1Eu:
          if (v7 != 240)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x2000000u;
          v42 = (v6 + 1);
          v41 = *v6;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_70;
          }

          v43 = *v42;
          v41 = (v43 << 7) + v41 - 128;
          if (v43 < 0)
          {
            v97 = google::protobuf::internal::VarintParseSlow64(v6, v41);
            v111 = v97;
            *(a1 + 183) = v98 != 0;
            if (!v97)
            {
              return 0;
            }
          }

          else
          {
            v42 = (v6 + 2);
LABEL_70:
            v111 = v42;
            *(a1 + 183) = v41 != 0;
          }

          goto LABEL_168;
        case 0x21u:
          if (v7 != 8)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x20000000u;
          v63 = (v6 + 1);
          v62 = *v6;
          if ((v62 & 0x8000000000000000) == 0)
          {
            goto LABEL_115;
          }

          v64 = *v63;
          v62 = (v64 << 7) + v62 - 128;
          if (v64 < 0)
          {
            v103 = google::protobuf::internal::VarintParseSlow64(v6, v62);
            v111 = v103;
            *(a1 + 196) = v104 != 0;
            if (!v103)
            {
              return 0;
            }
          }

          else
          {
            v63 = (v6 + 2);
LABEL_115:
            v111 = v63;
            *(a1 + 196) = v62 != 0;
          }

          goto LABEL_168;
        case 0x22u:
          if (v7 != 17)
          {
            goto LABEL_160;
          }

          *(a1 + 20) |= 1u;
          v44 = *v6;
          v33 = (v6 + 8);
          *(a1 + 200) = v44;
          goto LABEL_159;
        case 0x23u:
          if (v7 != 25)
          {
            goto LABEL_160;
          }

          *(a1 + 20) |= 2u;
          v85 = *v6;
          v33 = (v6 + 8);
          *(a1 + 208) = v85;
LABEL_159:
          v111 = v33;
          goto LABEL_168;
        case 0x24u:
          if (v7 != 32)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x40000000u;
          v25 = (v6 + 1);
          v24 = *v6;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v91 = google::protobuf::internal::VarintParseSlow64(v6, v24);
            v111 = v91;
            *(a1 + 197) = v92 != 0;
            if (!v91)
            {
              return 0;
            }
          }

          else
          {
            v25 = (v6 + 2);
LABEL_39:
            v111 = v25;
            *(a1 + 197) = v24 != 0;
          }

          goto LABEL_168;
        case 0x25u:
          if (v7 != 40)
          {
            goto LABEL_160;
          }

          *(a1 + 16) |= 0x80000000;
          v69 = (v6 + 1);
          v68 = *v6;
          if ((v68 & 0x8000000000000000) == 0)
          {
            goto LABEL_128;
          }

          v70 = *v69;
          v68 = (v70 << 7) + v68 - 128;
          if (v70 < 0)
          {
            v105 = google::protobuf::internal::VarintParseSlow64(v6, v68);
            v111 = v105;
            *(a1 + 198) = v106 != 0;
            if (!v105)
            {
              return 0;
            }
          }

          else
          {
            v69 = (v6 + 2);
LABEL_128:
            v111 = v69;
            *(a1 + 198) = v68 != 0;
          }

          goto LABEL_168;
        default:
LABEL_160:
          if (v7)
          {
            v86 = (v7 & 7) == 4;
          }

          else
          {
            v86 = 1;
          }

          if (v86)
          {
            *(a3 + 80) = v7 - 1;
            return v111;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275E22260((a1 + 8));
          }

          v17 = google::protobuf::internal::UnknownFieldParse();
LABEL_167:
          v111 = v17;
          if (!v17)
          {
            return 0;
          }

LABEL_168:
          if (sub_275E221E8(a3, &v111))
          {
            return v111;
          }

          break;
      }
    }
  }

  return v111;
}

unsigned __int8 *sub_275DEBDB4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_275DE5774(a3, 2, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_5;
    }

LABEL_24:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v11 = *(a1 + 84);
    *v4 = 32;
    if (v11 > 0x7F)
    {
      v4[1] = v11 | 0x80;
      v12 = v11 >> 7;
      if (v11 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v12 | 0x80;
          v13 = v12 >> 7;
          ++v4;
          v14 = v12 >> 14;
          v12 >>= 7;
        }

        while (v14);
        *(v4 - 1) = v13;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4[2] = v12;
        v4 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v4[1] = v11;
      v4 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_6:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 80);
  *v4 = 24;
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
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4[2] = v8;
      v4 += 3;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_5:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_6;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(a1 + 88);
  *v4 = 41;
  *(v4 + 1) = v15;
  v4 += 9;
  if ((v6 & 0x200) == 0)
  {
LABEL_7:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v16 = *(a1 + 96);
  *v4 = 49;
  *(v4 + 1) = v16;
  v4 += 9;
  if ((v6 & 0x400) == 0)
  {
LABEL_8:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(a1 + 104);
  *v4 = 57;
  *(v4 + 1) = v17;
  v4 += 9;
  if ((v6 & 0x800) == 0)
  {
LABEL_9:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v18 = *(a1 + 112);
  *v4 = 65;
  *(v4 + 1) = v18;
  v4 += 9;
  if ((v6 & 0x1000) != 0)
  {
LABEL_47:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(a1 + 120);
    *v4 = 73;
    *(v4 + 1) = v19;
    v4 += 9;
  }

LABEL_50:
  if ((*(a1 + 20) & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(a1 + 216);
    *v4 = 80;
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++v4;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(v4 - 1) = v22;
      }

      else
      {
        v4[2] = v21;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v20;
      v4 += 2;
    }
  }

  v24 = *(a1 + 16);
  if ((v24 & 0x2000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(a1 + 128);
    *v4 = 89;
    *(v4 + 1) = v25;
    v4 += 9;
    if ((v24 & 0x4000) == 0)
    {
LABEL_62:
      if ((v24 & 0x8000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_88;
    }
  }

  else if ((v24 & 0x4000) == 0)
  {
    goto LABEL_62;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(a1 + 136);
  *v4 = 97;
  *(v4 + 1) = v26;
  v4 += 9;
  if ((v24 & 0x8000) == 0)
  {
LABEL_63:
    if ((v24 & 0x10000) == 0)
    {
      goto LABEL_64;
    }

LABEL_99:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(a1 + 148);
    *v4 = 112;
    if (v31 > 0x7F)
    {
      v4[1] = v31 | 0x80;
      v32 = v31 >> 7;
      if (v31 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++v4;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(v4 - 1) = v33;
        if ((v24 & 4) != 0)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v4[2] = v32;
        v4 += 3;
        if ((v24 & 4) != 0)
        {
          goto LABEL_110;
        }
      }
    }

    else
    {
      v4[1] = v31;
      v4 += 2;
      if ((v24 & 4) != 0)
      {
        goto LABEL_110;
      }
    }

LABEL_65:
    if ((v24 & 8) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_111;
  }

LABEL_88:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(a1 + 144);
  *v4 = 104;
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v28 = v27 >> 7;
    if (v27 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v4;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v4 - 1) = v29;
      if ((v24 & 0x10000) != 0)
      {
        goto LABEL_99;
      }
    }

    else
    {
      v4[2] = v28;
      v4 += 3;
      if ((v24 & 0x10000) != 0)
      {
        goto LABEL_99;
      }
    }
  }

  else
  {
    v4[1] = v27;
    v4 += 2;
    if ((v24 & 0x10000) != 0)
    {
      goto LABEL_99;
    }
  }

LABEL_64:
  if ((v24 & 4) == 0)
  {
    goto LABEL_65;
  }

LABEL_110:
  v4 = sub_275DE5774(a3, 15, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v24 & 8) == 0)
  {
LABEL_66:
    if ((v24 & 0x20000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_121;
  }

LABEL_111:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(a1 + 56);
  *v4 = 386;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    v4[2] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = v4 + 4;
      do
      {
        *(v37 - 1) = v38 | 0x80;
        v39 = v38 >> 7;
        ++v37;
        v40 = v38 >> 14;
        v38 >>= 7;
      }

      while (v40);
      *(v37 - 1) = v39;
    }

    else
    {
      v4[3] = v38;
      v37 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v36;
    v37 = v4 + 3;
  }

  v4 = TSP::Color::_InternalSerialize(v35, v37, a3);
  if ((v24 & 0x20000) == 0)
  {
LABEL_67:
    if ((v24 & 0x10) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_124;
  }

LABEL_121:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v41 = *(a1 + 152);
  *v4 = 393;
  *(v4 + 2) = v41;
  v4 += 10;
  if ((v24 & 0x10) == 0)
  {
LABEL_68:
    if ((v24 & 0x400000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_134;
  }

LABEL_124:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v42 = *(a1 + 64);
  *v4 = 402;
  v43 = *(v42 + 20);
  if (v43 > 0x7F)
  {
    v4[2] = v43 | 0x80;
    v45 = v43 >> 7;
    if (v43 >> 14)
    {
      v44 = v4 + 4;
      do
      {
        *(v44 - 1) = v45 | 0x80;
        v46 = v45 >> 7;
        ++v44;
        v47 = v45 >> 14;
        v45 >>= 7;
      }

      while (v47);
      *(v44 - 1) = v46;
    }

    else
    {
      v4[3] = v45;
      v44 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v43;
    v44 = v4 + 3;
  }

  v4 = sub_275DE51A0(v42, v44, a3);
  if ((v24 & 0x400000) == 0)
  {
LABEL_69:
    if ((v24 & 0x40000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_137;
  }

LABEL_134:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v48 = *(a1 + 180);
  *v4 = 408;
  v4[2] = v48;
  v4 += 3;
  if ((v24 & 0x40000) == 0)
  {
LABEL_70:
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_71;
    }

LABEL_148:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v53 = *(a1 + 164);
    *v4 = 424;
    if (v53 > 0x7F)
    {
      v4[2] = v53 | 0x80;
      v54 = v53 >> 7;
      if (v53 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v54 | 0x80;
          v55 = v54 >> 7;
          ++v4;
          v56 = v54 >> 14;
          v54 >>= 7;
        }

        while (v56);
        *(v4 - 1) = v55;
        if ((v24 & 0x20) != 0)
        {
          goto LABEL_159;
        }
      }

      else
      {
        v4[3] = v54;
        v4 += 4;
        if ((v24 & 0x20) != 0)
        {
          goto LABEL_159;
        }
      }
    }

    else
    {
      v4[2] = v53;
      v4 += 3;
      if ((v24 & 0x20) != 0)
      {
        goto LABEL_159;
      }
    }

LABEL_72:
    if ((v24 & 0x800000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_169;
  }

LABEL_137:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(a1 + 160);
  *v4 = 416;
  if (v49 > 0x7F)
  {
    v4[2] = v49 | 0x80;
    v50 = v49 >> 7;
    if (v49 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v50 | 0x80;
        v51 = v50 >> 7;
        ++v4;
        v52 = v50 >> 14;
        v50 >>= 7;
      }

      while (v52);
      *(v4 - 1) = v51;
      if ((v24 & 0x80000) != 0)
      {
        goto LABEL_148;
      }
    }

    else
    {
      v4[3] = v50;
      v4 += 4;
      if ((v24 & 0x80000) != 0)
      {
        goto LABEL_148;
      }
    }
  }

  else
  {
    v4[2] = v49;
    v4 += 3;
    if ((v24 & 0x80000) != 0)
    {
      goto LABEL_148;
    }
  }

LABEL_71:
  if ((v24 & 0x20) == 0)
  {
    goto LABEL_72;
  }

LABEL_159:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v57 = *(a1 + 72);
  *v4 = 434;
  v58 = *(v57 + 5);
  if (v58 > 0x7F)
  {
    v4[2] = v58 | 0x80;
    v60 = v58 >> 7;
    if (v58 >> 14)
    {
      v59 = v4 + 4;
      do
      {
        *(v59 - 1) = v60 | 0x80;
        v61 = v60 >> 7;
        ++v59;
        v62 = v60 >> 14;
        v60 >>= 7;
      }

      while (v62);
      *(v59 - 1) = v61;
    }

    else
    {
      v4[3] = v60;
      v59 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v58;
    v59 = v4 + 3;
  }

  v4 = TSD::PathSourceArchive::_InternalSerialize(v57, v59, a3);
  if ((v24 & 0x800000) == 0)
  {
LABEL_73:
    if ((v24 & 0x200000) == 0)
    {
      goto LABEL_74;
    }

LABEL_172:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v64 = *(a1 + 176);
    *v4 = 448;
    if (v64 > 0x7F)
    {
      v4[2] = v64 | 0x80;
      v65 = v64 >> 7;
      if (v64 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v65 | 0x80;
          v66 = v65 >> 7;
          ++v4;
          v67 = v65 >> 14;
          v65 >>= 7;
        }

        while (v67);
        *(v4 - 1) = v66;
        if ((v24 & 0x100000) != 0)
        {
          goto LABEL_183;
        }
      }

      else
      {
        v4[3] = v65;
        v4 += 4;
        if ((v24 & 0x100000) != 0)
        {
          goto LABEL_183;
        }
      }
    }

    else
    {
      v4[2] = v64;
      v4 += 3;
      if ((v24 & 0x100000) != 0)
      {
        goto LABEL_183;
      }
    }

LABEL_75:
    if ((v24 & 0x4000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_186:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v69 = *(a1 + 184);
    *v4 = 464;
    if (v69 > 0x7F)
    {
      v4[2] = v69 | 0x80;
      v70 = v69 >> 7;
      if (v69 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v70 | 0x80;
          v71 = v70 >> 7;
          ++v4;
          v72 = v70 >> 14;
          v70 >>= 7;
        }

        while (v72);
        *(v4 - 1) = v71;
        if ((v24 & 0x8000000) != 0)
        {
          goto LABEL_197;
        }
      }

      else
      {
        v4[3] = v70;
        v4 += 4;
        if ((v24 & 0x8000000) != 0)
        {
          goto LABEL_197;
        }
      }
    }

    else
    {
      v4[2] = v69;
      v4 += 3;
      if ((v24 & 0x8000000) != 0)
      {
        goto LABEL_197;
      }
    }

LABEL_77:
    if ((v24 & 0x10000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_208:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v77 = *(a1 + 192);
    *v4 = 480;
    if (v77 > 0x7F)
    {
      v4[2] = v77 | 0x80;
      v78 = v77 >> 7;
      if (v77 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v78 | 0x80;
          v79 = v78 >> 7;
          ++v4;
          v80 = v78 >> 14;
          v78 >>= 7;
        }

        while (v80);
        *(v4 - 1) = v79;
        if ((v24 & 0x1000000) != 0)
        {
          goto LABEL_219;
        }
      }

      else
      {
        v4[3] = v78;
        v4 += 4;
        if ((v24 & 0x1000000) != 0)
        {
          goto LABEL_219;
        }
      }
    }

    else
    {
      v4[2] = v77;
      v4 += 3;
      if ((v24 & 0x1000000) != 0)
      {
        goto LABEL_219;
      }
    }

LABEL_79:
    if ((v24 & 0x2000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_222;
  }

LABEL_169:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v63 = *(a1 + 181);
  *v4 = 440;
  v4[2] = v63;
  v4 += 3;
  if ((v24 & 0x200000) != 0)
  {
    goto LABEL_172;
  }

LABEL_74:
  if ((v24 & 0x100000) == 0)
  {
    goto LABEL_75;
  }

LABEL_183:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v68 = *(a1 + 168);
  *v4 = 457;
  *(v4 + 2) = v68;
  v4 += 10;
  if ((v24 & 0x4000000) != 0)
  {
    goto LABEL_186;
  }

LABEL_76:
  if ((v24 & 0x8000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_197:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v73 = *(a1 + 188);
  *v4 = 472;
  if (v73 > 0x7F)
  {
    v4[2] = v73 | 0x80;
    v74 = v73 >> 7;
    if (v73 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v74 | 0x80;
        v75 = v74 >> 7;
        ++v4;
        v76 = v74 >> 14;
        v74 >>= 7;
      }

      while (v76);
      *(v4 - 1) = v75;
      if ((v24 & 0x10000000) != 0)
      {
        goto LABEL_208;
      }
    }

    else
    {
      v4[3] = v74;
      v4 += 4;
      if ((v24 & 0x10000000) != 0)
      {
        goto LABEL_208;
      }
    }
  }

  else
  {
    v4[2] = v73;
    v4 += 3;
    if ((v24 & 0x10000000) != 0)
    {
      goto LABEL_208;
    }
  }

LABEL_78:
  if ((v24 & 0x1000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_219:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v81 = *(a1 + 182);
  *v4 = 488;
  v4[2] = v81;
  v4 += 3;
  if ((v24 & 0x2000000) == 0)
  {
LABEL_80:
    if ((v24 & 0x20000000) == 0)
    {
      goto LABEL_228;
    }

    goto LABEL_225;
  }

LABEL_222:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v82 = *(a1 + 183);
  *v4 = 496;
  v4[2] = v82;
  v4 += 3;
  if ((v24 & 0x20000000) != 0)
  {
LABEL_225:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v83 = *(a1 + 196);
    *v4 = 648;
    v4[2] = v83;
    v4 += 3;
  }

LABEL_228:
  v84 = *(a1 + 20);
  if (v84)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v85 = *(a1 + 200);
    *v4 = 657;
    *(v4 + 2) = v85;
    v4 += 10;
  }

  if ((v84 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v86 = *(a1 + 208);
    *v4 = 665;
    *(v4 + 2) = v86;
    v4 += 10;
  }

  v87 = *(a1 + 16);
  if ((v87 & 0x40000000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v88 = *(a1 + 197);
    *v4 = 672;
    v4[2] = v88;
    v4 += 3;
  }

  if (v87 < 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v89 = *(a1 + 198);
    *v4 = 680;
    v4[2] = v89;
    v4 += 3;
  }

  v90 = *(a1 + 8);
  if ((v90 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v90 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DECAE0(uint64_t a1)
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

  v4 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
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
    v7 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
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
    v16 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_48;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v19 = TSP::Color::ByteSizeLong(*(a1 + 56));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = sub_275DE58A0(*(a1 + 64));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  v21 = TSD::PathSourceArchive::ByteSizeLong(*(a1 + 72));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_50:
  v3 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v3 += ((9 * (__clz(*(a1 + 84) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0xFF00) != 0)
  {
    v10 = v3 + 9;
    if ((v2 & 0x100) == 0)
    {
      v10 = v3;
    }

    if ((v2 & 0x200) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x400) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x800) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x1000) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x2000) != 0)
    {
      v10 += 9;
    }

    if ((v2 & 0x4000) != 0)
    {
      v3 = v10 + 9;
    }

    else
    {
      v3 = v10;
    }

    if ((v2 & 0x8000) != 0)
    {
      v11 = *(a1 + 144);
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 11;
      }

      v3 += v13;
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v14 = *(a1 + 148);
      if (v14 < 0)
      {
        v15 = 11;
      }

      else
      {
        v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v15;
    }

    v22 = v3 + 10;
    if ((v2 & 0x20000) == 0)
    {
      v22 = v3;
    }

    if ((v2 & 0x40000) != 0)
    {
      v23 = *(a1 + 160);
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v23 >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = 12;
      }

      v22 += v25;
    }

    if ((v2 & 0x80000) != 0)
    {
      v26 = *(a1 + 164);
      v27 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v26 >= 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 12;
      }

      v22 += v28;
    }

    if ((v2 & 0x100000) != 0)
    {
      v22 += 10;
    }

    if ((v2 & 0x200000) != 0)
    {
      v22 += ((9 * (__clz(*(a1 + 176) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v2 & 0x400000) != 0)
    {
      v22 += 3;
    }

    if ((v2 & 0x800000) != 0)
    {
      v3 = v22 + 3;
    }

    else
    {
      v3 = v22;
    }
  }

  if (HIBYTE(v2))
  {
    v29 = v3 + 3;
    if ((v2 & 0x1000000) == 0)
    {
      v29 = v3;
    }

    if ((v2 & 0x2000000) != 0)
    {
      v29 += 3;
    }

    if ((v2 & 0x4000000) != 0)
    {
      v36 = *(a1 + 184);
      v37 = ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v36 >= 0)
      {
        v38 = v37;
      }

      else
      {
        v38 = 12;
      }

      v29 += v38;
      if ((v2 & 0x8000000) == 0)
      {
LABEL_82:
        if ((v2 & 0x10000000) == 0)
        {
LABEL_84:
          if ((v2 & 0x20000000) != 0)
          {
            v29 += 3;
          }

          if ((v2 & 0x40000000) != 0)
          {
            v29 += 3;
          }

          if (v2 >= 0)
          {
            v3 = v29;
          }

          else
          {
            v3 = v29 + 3;
          }

          goto LABEL_91;
        }

LABEL_83:
        v29 += ((9 * (__clz(*(a1 + 192) | 1) ^ 0x1F) + 73) >> 6) + 2;
        goto LABEL_84;
      }
    }

    else if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_82;
    }

    v29 += ((9 * (__clz(*(a1 + 188) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_91:
  v30 = *(a1 + 20);
  if ((v30 & 7) != 0)
  {
    v31 = v3 + 10;
    if ((v30 & 1) == 0)
    {
      v31 = v3;
    }

    if ((v30 & 2) != 0)
    {
      v3 = v31 + 10;
    }

    else
    {
      v3 = v31;
    }

    if ((v30 & 4) != 0)
    {
      v32 = *(a1 + 216);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 11;
      }

      v3 += v34;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 24);
  }

  else
  {
    *(a1 + 24) = v3;
    return v3;
  }
}

uint64_t sub_275DECFDC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7DC0, 0);
  if (v4)
  {

    return sub_275DED084(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DED084(uint64_t result, uint64_t a2)
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

        goto LABEL_55;
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

      goto LABEL_56;
    }

LABEL_55:
    *(v3 + 16) |= 4u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_64;
    }

LABEL_56:
    *(v3 + 16) |= 8u;
    v7 = *(v3 + 56);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x277C8F010](v8);
      *(v3 + 56) = v7;
    }

    if (*(a2 + 56))
    {
      v9 = *(a2 + 56);
    }

    else
    {
      v9 = MEMORY[0x277D809E8];
    }

    result = TSP::Color::MergeFrom(v7, v9);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_72;
    }

LABEL_64:
    *(v3 + 16) |= 0x10u;
    v10 = *(v3 + 64);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = sub_275E1F5E0(v11);
      *(v3 + 64) = v10;
    }

    if (*(a2 + 64))
    {
      v12 = *(a2 + 64);
    }

    else
    {
      v12 = &unk_2812EAA50;
    }

    result = sub_275DE5C88(v10, v12);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_80;
    }

LABEL_72:
    *(v3 + 16) |= 0x20u;
    v13 = *(v3 + 72);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C8EFB0](v14);
      *(v3 + 72) = v13;
    }

    if (*(a2 + 72))
    {
      v15 = *(a2 + 72);
    }

    else
    {
      v15 = MEMORY[0x277D804C8];
    }

    result = TSD::PathSourceArchive::MergeFrom(v13, v15);
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
      *(v3 + 84) = *(a2 + 84);
      goto LABEL_13;
    }

LABEL_80:
    *(v3 + 80) = *(a2 + 80);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 88) = *(a2 + 88);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_84;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 96) = *(a2 + 96);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v3 + 104) = *(a2 + 104);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v3 + 112) = *(a2 + 112);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v3 + 120) = *(a2 + 120);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_88:
    *(v3 + 136) = *(a2 + 136);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_87:
  *(v3 + 128) = *(a2 + 128);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_88;
  }

LABEL_22:
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    *(v3 + 144) = *(a2 + 144);
  }

LABEL_24:
  *(v3 + 16) |= v5;
LABEL_25:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_36;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 148) = *(a2 + 148);
    if ((v5 & 0x20000) == 0)
    {
LABEL_28:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_92;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  *(v3 + 152) = *(a2 + 152);
  if ((v5 & 0x40000) == 0)
  {
LABEL_29:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v3 + 160) = *(a2 + 160);
  if ((v5 & 0x80000) == 0)
  {
LABEL_30:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v3 + 164) = *(a2 + 164);
  if ((v5 & 0x100000) == 0)
  {
LABEL_31:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v3 + 168) = *(a2 + 168);
  if ((v5 & 0x200000) == 0)
  {
LABEL_32:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

LABEL_96:
    *(v3 + 180) = *(a2 + 180);
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_95:
  *(v3 + 176) = *(a2 + 176);
  if ((v5 & 0x400000) != 0)
  {
    goto LABEL_96;
  }

LABEL_33:
  if ((v5 & 0x800000) != 0)
  {
LABEL_34:
    *(v3 + 181) = *(a2 + 181);
  }

LABEL_35:
  *(v3 + 16) |= v5;
LABEL_36:
  if (!HIBYTE(v5))
  {
    goto LABEL_46;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 182) = *(a2 + 182);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_39:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_103;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_39;
  }

  *(v3 + 183) = *(a2 + 183);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_104;
  }

LABEL_103:
  *(v3 + 184) = *(a2 + 184);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v3 + 188) = *(a2 + 188);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v3 + 192) = *(a2 + 192);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_107:
    *(v3 + 197) = *(a2 + 197);
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_108:
    *(v3 + 198) = *(a2 + 198);
    goto LABEL_45;
  }

LABEL_106:
  *(v3 + 196) = *(a2 + 196);
  if ((v5 & 0x40000000) != 0)
  {
    goto LABEL_107;
  }

LABEL_44:
  if ((v5 & 0x80000000) != 0)
  {
    goto LABEL_108;
  }

LABEL_45:
  *(v3 + 16) |= v5;
LABEL_46:
  v6 = *(a2 + 20);
  if ((v6 & 7) == 0)
  {
    return result;
  }

  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_49;
    }

LABEL_99:
    *(v3 + 208) = *(a2 + 208);
    if ((v6 & 4) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  *(v3 + 200) = *(a2 + 200);
  if ((v6 & 2) != 0)
  {
    goto LABEL_99;
  }

LABEL_49:
  if ((v6 & 4) != 0)
  {
LABEL_50:
    *(v3 + 216) = *(a2 + 216);
  }

LABEL_51:
  *(v3 + 20) |= v6;
  return result;
}

uint64_t *sub_275DED49C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEAF48(result);

    return sub_275DECFDC(v4, a2);
  }

  return result;
}

uint64_t sub_275DED4E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 8) != 0)
  {
    result = TSP::Color::IsInitialized(*(a1 + 56));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10) != 0)
  {
    result = sub_275DE5FF0(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = TSD::PathSourceArchive::IsInitialized(*(a1 + 72));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DED580(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D58B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812E9F90, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

uint64_t sub_275DED5FC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812EAD30)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C8F960]();
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = sub_275DEAD8C(v4);
      MEMORY[0x277C8F960](v5, 0x10A1C408691C948);
    }
  }

  sub_275DE4968((a1 + 8));
  return a1;
}

void sub_275DED6BC(uint64_t a1)
{
  sub_275DED5FC(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DED6FC()
{
  if (atomic_load_explicit(dword_2812E9F90, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EAD30;
}

uint64_t *sub_275DED73C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  v5 = result[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_16;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  result = TSP::Reference::Clear(result[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = sub_275DEAF48(v1[5]);
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 14) = 0;
    v1[6] = 0;
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

google::protobuf::internal *sub_275DED7F8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v15 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_44;
          }

          goto LABEL_37;
        }

        if (v8 != 10)
        {
          goto LABEL_37;
        }

        *(a1 + 16) |= 2u;
        v18 = *(a1 + 32);
        if (!v18)
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = MEMORY[0x277C8F050](v19);
          LODWORD(v18) = v20;
          *(a1 + 32) = v20;
          v7 = v26;
        }

        v15 = sub_275E5B9DC(a3, v18, v7);
LABEL_44:
        v26 = v15;
        if (!v15)
        {
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      if (v10 == 3)
      {
        if (v8 == 25)
        {
          v5 |= 8u;
          *(a1 + 48) = *v7;
          v26 = (v7 + 8);
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v16 = *(a1 + 40);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = sub_275E1FA84(v17);
            *(a1 + 40) = v16;
            v7 = v26;
          }

          v15 = sub_275E5BD1C(a3, v16, v7);
          goto LABEL_44;
        }

LABEL_37:
        if (v8)
        {
          v21 = (v8 & 7) == 4;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v15 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_44;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_37;
      }

      v5 |= 0x10u;
      v12 = (v7 + 1);
      LODWORD(v11) = *v7;
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      v13 = *v12;
      v11 = (v11 + (v13 << 7) - 128);
      if ((v13 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_15:
        v26 = v12;
        *(a1 + 56) = v11;
        goto LABEL_45;
      }

      v24 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v26 = v24;
      *(a1 + 56) = v25;
      if (!v24)
      {
LABEL_52:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_45:
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

unsigned __int8 *sub_275DEDAA4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
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
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_275DE5774(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 48);
  *v4 = 25;
  *(v4 + 1) = v13;
  v4 += 9;
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 40);
  *v4 = 34;
  v15 = *(v14 + 24);
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v4 + 3;
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
      v4[2] = v17;
      v16 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v15;
    v16 = v4 + 2;
  }

  v4 = sub_275DEBDB4(v14, v16, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_31:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(a1 + 56);
    *v4 = 40;
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v21 = v20 >> 7;
      if (v20 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v21 | 0x80;
          v22 = v21 >> 7;
          ++v4;
          v23 = v21 >> 14;
          v21 >>= 7;
        }

        while (v23);
        *(v4 - 1) = v22;
      }

      else
      {
        v4[2] = v21;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v20;
      v4 += 2;
    }
  }

LABEL_40:
  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DEDD34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 4) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 4) != 0)
  {
LABEL_7:
    v6 = sub_275DECAE0(*(a1 + 40));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_275DEDDD4(uint64_t a1)
{
  if ((~*(a1 + 16) & 5) != 0)
  {
    v7 = sub_275DEDD34(a1);
  }

  else
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    v6 = sub_275DECAE0(*(a1 + 40));
    v7 = v5 + v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v8 = *(a1 + 16);
  if ((v8 & 2) != 0)
  {
    v9 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v7 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v8 & 0x18) != 0)
  {
    if ((v8 & 8) != 0)
    {
      v7 += 9;
    }

    if ((v8 & 0x10) != 0)
    {
      v10 = *(a1 + 56);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v7 += v11;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v7, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v7;
    return v7;
  }
}

uint64_t sub_275DEDF38(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7DD8, 0);
  if (v4)
  {

    return sub_275DEDFE0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DEDFE0(uint64_t result, uint64_t a2)
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
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C8F050](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 32))
    {
      v8 = *(a2 + 32);
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

LABEL_21:
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_275E1FA84(v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 40))
    {
      v11 = *(a2 + 40);
    }

    else
    {
      v11 = &unk_2812EAC50;
    }

    result = sub_275DED084(v9, v11);
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

LABEL_29:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_275DEE134(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DED73C(result);

    return sub_275DEDF38(v4, a2);
  }

  return result;
}

uint64_t sub_275DEE180(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((~v1 & 5) != 0)
  {
    return 0;
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

  if ((v1 & 4) == 0)
  {
    return 1;
  }

  result = sub_275DED4E8(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275DEE21C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5968;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EA3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t *sub_275DEE288(uint64_t *a1)
{
  if (a1 != &qword_2812EAD70 && a1[3])
  {
    v2 = MEMORY[0x277C8ECD0]();
    MEMORY[0x277C8F960](v2, 0x10A1C4014782234);
  }

  sub_275DE4968(a1 + 1);
  return a1;
}

void sub_275DEE2EC(uint64_t *a1)
{
  sub_275DEE288(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DEE32C()
{
  if (atomic_load_explicit(dword_2812EA3B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EAD70;
}

uint64_t *sub_275DEE36C(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSWP::ShapeInfoArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 6) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_275E224D0(v2);
  }

  return result;
}

google::protobuf::internal *sub_275DEE3CC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_275E221E8(a3, &v20) & 1) == 0)
  {
    v5 = (v20 + 1);
    v6 = *v20;
    if (*v20 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
        v20 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v18;
        goto LABEL_7;
      }

      v5 = (v20 + 2);
    }

    v20 = v5;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 16)
      {
        goto LABEL_12;
      }

      v12 = (v5 + 1);
      v11 = *v5;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v13 = *v12;
      v11 = (v13 << 7) + v11 - 128;
      if ((v13 & 0x80000000) == 0)
      {
        v12 = (v5 + 2);
LABEL_23:
        v20 = v12;
        goto LABEL_24;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v5, v11);
      if (!v20)
      {
        return 0;
      }

LABEL_24:
      if (v11 > 4)
      {
        sub_275E5F6FC();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 32) = v11;
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
          return v20;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_31;
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

        v16 = MEMORY[0x277C8F0D0](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_275E5BDEC(a3, v14, v5);
LABEL_31:
      v20 = v10;
      if (!v10)
      {
        return 0;
      }
    }
  }

  return v20;
}

unsigned __int8 *sub_275DEE59C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::ShapeInfoArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 32);
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
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
    }
  }

  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DEE71C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSWP::ShapeInfoArchive::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_5:
    v5 = *(a1 + 32);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v6;
    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
    goto LABEL_5;
  }

LABEL_9:
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

uint64_t sub_275DEE7E4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7DF0, 0);
  if (v4)
  {

    return sub_275DEE88C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DEE88C(uint64_t result, uint64_t a2)
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

        v6 = MEMORY[0x277C8F0D0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D81070];
      }

      result = TSWP::ShapeInfoArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t *sub_275DEE940(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEE36C(result);

    return sub_275DEE7E4(v4, a2);
  }

  return result;
}

uint64_t sub_275DEE98C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return MEMORY[0x2821EBC48](*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

void *sub_275DEE9DC(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5A18;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EA320, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = 0;
  return a1;
}

uint64_t *sub_275DEEA44(uint64_t *a1)
{
  if (a1 != &qword_2812EAD98)
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

void sub_275DEEAA8(uint64_t *a1)
{
  sub_275DEEA44(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DEEAE8()
{
  if (atomic_load_explicit(dword_2812EA320, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812EAD98;
}

uint64_t *sub_275DEEB28(uint64_t *result)
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

google::protobuf::internal *sub_275DEEB84(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *sub_275DEECCC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t sub_275DEEDBC(uint64_t a1)
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

uint64_t sub_275DEEE48(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E08, 0);
  if (v4)
  {

    return sub_275DEEEF0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DEEEF0(uint64_t result, uint64_t a2)
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
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return result;
}

uint64_t *sub_275DEEF98(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEEB28(result);

    return sub_275DEEE48(v4, a2);
  }

  return result;
}

uint64_t sub_275DEEFE4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return TSP::Reference::IsInitialized(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

void *sub_275DEF034(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5AC8;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EA0B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_275DEF0C4(void *a1)
{
  if (a1 != qword_2812EADB8)
  {
    v2 = a1[6];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  sub_275E22520(a1 + 3);
  return a1;
}

void sub_275DEF134(void *a1)
{
  sub_275DEF0C4(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DEF174()
{
  if (atomic_load_explicit(dword_2812EA0B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EADB8;
}

uint64_t *sub_275DEF1B4(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSS::StylesheetArchive_IdentifiedStyleEntry::Clear(v4);
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

google::protobuf::internal *sub_275DEF244(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        v18 = MEMORY[0x277C8F080](*(a1 + 24));
        LODWORD(v19) = v18;
        v20 = *(a1 + 32);
        v21 = *(a1 + 40) + 8 * v20;
        *(a1 + 32) = v20 + 1;
        *(v21 + 8) = v18;
        v15 = v26;
LABEL_33:
        v14 = sub_275E5BEBC(a3, v19, v15);
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

unsigned __int8 *sub_275DEF468(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSS::StylesheetArchive_IdentifiedStyleEntry::_InternalSerialize(v7, v9, a3);
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

uint64_t sub_275DEF624(uint64_t a1)
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
      v7 = TSS::StylesheetArchive_IdentifiedStyleEntry::ByteSizeLong(v6);
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

uint64_t sub_275DEF710(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E20, 0);
  if (v4)
  {

    return sub_275DEF7B8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DEF7B8(uint64_t result, uint64_t a2)
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
    result = sub_275E225A4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

uint64_t *sub_275DEF8C8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEF1B4(result);

    return sub_275DEF710(v4, a2);
  }

  return result;
}

uint64_t sub_275DEF914(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSS::StylesheetArchive_IdentifiedStyleEntry::IsInitialized(*(*(a1 + 40) + 8 * v2));
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

void *sub_275DEF9B0(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5B78;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812EA0E0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = MEMORY[0x277D80A90];
  a1[7] = 0;
  return a1;
}

void *sub_275DEFA48(void *a1)
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

  if (a1 != qword_2812EADF0)
  {
    v3 = a1[7];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C8F960]();
    }
  }

  sub_275DE4968(a1 + 1);
  sub_275E22664(a1 + 3);
  return a1;
}

void sub_275DEFAF4(void *a1)
{
  sub_275DEFA48(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DEFB34()
{
  if (atomic_load_explicit(dword_2812EA0E0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EADF0;
}

uint64_t *sub_275DEFB74(uint64_t *result)
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
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = v1[6] & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v6 + 23) & 0x80000000) == 0)
    {
      *v6 = 0;
      *(v6 + 23) = 0;
LABEL_9:
      if ((v5 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v5 & 2) != 0)
    {
LABEL_10:
      result = TSP::Reference::Clear(v1[7]);
    }
  }

LABEL_11:
  v8 = *(v1 + 8);
  v7 = v1 + 1;
  *(v7 + 2) = 0;
  if (v8)
  {

    return sub_275E224D0(v7);
  }

  return result;
}

google::protobuf::internal *sub_275DEFC3C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275E221E8(a3, &v27))
    {
      return v27;
    }

    v5 = (v27 + 1);
    v6 = *v27;
    if ((*v27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v27 + 2);
LABEL_6:
      v27 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v7 - 128));
    v27 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v25;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      v15 = v5 - 1;
      while (1)
      {
        v16 = (v15 + 1);
        v27 = (v15 + 1);
        v17 = *(a1 + 40);
        if (!v17)
        {
          goto LABEL_29;
        }

        v23 = *(a1 + 32);
        v18 = *v17;
        if (v23 < *v17)
        {
          *(a1 + 32) = v23 + 1;
          v20 = *&v17[2 * v23 + 2];
          goto LABEL_33;
        }

        if (v18 == *(a1 + 36))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v17 = *(a1 + 40);
          v18 = *v17;
        }

        *v17 = v18 + 1;
        v19 = MEMORY[0x277C8F050](*(a1 + 24));
        LODWORD(v20) = v19;
        v21 = *(a1 + 32);
        v22 = *(a1 + 40) + 8 * v21;
        *(a1 + 32) = v21 + 1;
        *(v22 + 8) = v19;
        v16 = v27;
LABEL_33:
        v15 = sub_275E5B9DC(a3, v20, v16);
        v27 = v15;
        if (!v15)
        {
          return 0;
        }

        if (*a3 <= v15 || *v15 != 26)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 2)
    {
      break;
    }

    if (v8 != 1 || v6 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Mutable();
    v11 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_40:
    v27 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  if (v6 == 18)
  {
    *(a1 + 16) |= 2u;
    v12 = *(a1 + 56);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C8F050](v13);
      LODWORD(v12) = v14;
      *(a1 + 56) = v14;
      v5 = v27;
    }

    v11 = sub_275E5B9DC(a3, v12, v5);
    goto LABEL_40;
  }

LABEL_13:
  if (v6)
  {
    v10 = (v6 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275E22260((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_40;
  }

  *(a3 + 80) = v6 - 1;
  return v27;
}

unsigned __int8 *sub_275DEFEAC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(a1 + 56);
    *v4 = 18;
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

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        v4[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = v4 + 3;
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
          v4[2] = v18;
          v17 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v16;
        v17 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DF0094(uint64_t a1)
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
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v12 = TSP::Reference::ByteSizeLong(*(a1 + 56));
      v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_275DF01CC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E38, 0);
  if (v4)
  {

    return sub_275DF0274(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DF0274(uint64_t result, uint64_t a2)
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
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v11 = *(v3 + 56);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C8F050](v12);
        *(v3 + 56) = v11;
      }

      if (*(a2 + 56))
      {
        v13 = *(a2 + 56);
      }

      else
      {
        v13 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v11, v13);
    }
  }

  return result;
}

uint64_t *sub_275DF03BC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DEFB74(result);

    return sub_275DF01CC(v4, a2);
  }

  return result;
}

uint64_t sub_275DF0408(uint64_t a1)
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

  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 56));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_275DF04A4(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5C28;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EA650, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = MEMORY[0x277D80A90];
  a1[4] = 0;
  return a1;
}

void *sub_275DF0514(void *a1)
{
  v2 = a1[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812EAE30)
  {
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

void sub_275DF05B4(void *a1)
{
  sub_275DF0514(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DF05F4(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = result[3] & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = TSP::Reference::Clear(result[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 1;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_275E224D0(v4);
  }

  return result;
}

google::protobuf::internal *sub_275DF0688(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_275E221E8(a3, &v17) & 1) == 0)
  {
    v5 = (v17 + 1);
    v6 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v17 + 2);
LABEL_6:
      v17 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v7 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v15;
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
        v5 = v17;
      }

      v10 = sub_275E5B9DC(a3, v11, v5);
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
          return v17;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_26;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = google::protobuf::internal::InlineGreedyStringParser();
    }

LABEL_26:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *sub_275DF0828(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275DE5774(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(a1 + 32);
    *v4 = 18;
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

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DF094C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
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
LABEL_7:
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_275DF09EC(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v8 = sub_275DF094C(a1);
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = TSP::Reference::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v8, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v8;
    return v8;
  }
}

uint64_t sub_275DF0ACC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E50, 0);
  if (v4)
  {

    return sub_275DF0B74(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DF0B74(uint64_t result, uint64_t a2)
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
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v6 = *(v3 + 32);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C8F050](v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 32))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v6, v8);
    }
  }

  return result;
}

uint64_t *sub_275DF0C60(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DF05F4(result);

    return sub_275DF0ACC(v4, a2);
  }

  return result;
}

uint64_t sub_275DF0CAC(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(*(a1 + 32));
  }
}

void *sub_275DF0D04(void *a1, uint64_t a2)
{
  *a1 = &unk_2884D5CD8;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EA630, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = MEMORY[0x277D80A90];
  a1[4] = 0;
  return a1;
}

void *sub_275DF0D74(void *a1)
{
  v2 = a1[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812EAE58)
  {
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

void sub_275DF0E14(void *a1)
{
  sub_275DF0D74(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DF0E54(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = result[3] & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v3 + 23) & 0x80000000) == 0)
    {
      *v3 = 0;
      *(v3 + 23) = 0;
LABEL_5:
      if ((v2 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v3 = 0;
    *(v3 + 8) = 0;
    if ((v2 & 2) != 0)
    {
LABEL_6:
      result = TSP::Reference::Clear(result[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 1;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_275E224D0(v4);
  }

  return result;
}

google::protobuf::internal *sub_275DF0EE8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_275E221E8(a3, &v17) & 1) == 0)
  {
    v5 = (v17 + 1);
    v6 = *v17;
    if ((*v17 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v17 + 2);
LABEL_6:
      v17 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v7 - 128));
    v17 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v15;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = google::protobuf::internal::InlineGreedyStringParser();
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
          return v17;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275E22260((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_26;
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
        v5 = v17;
      }

      v10 = sub_275E5B9DC(a3, v11, v5);
    }

LABEL_26:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *sub_275DF1088(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
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

  if (v6)
  {
    v4 = sub_275DE5774(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DF11AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v7 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_8;
  }

  v4 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
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

uint64_t sub_275DF1284(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E68, 0);
  if (v4)
  {

    return sub_275DF0B74(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_275DF132C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DF0E54(result);

    return sub_275DF1284(v4, a2);
  }

  return result;
}

uint64_t sub_275DF1378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if ((v1 & 2) == 0)
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

uint64_t sub_275DF13EC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5D88;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812EA610, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

uint64_t sub_275DF1474(uint64_t a1)
{
  sub_275DE4968((a1 + 8));
  sub_275E227A8((a1 + 16));
  return a1;
}

void sub_275DF14B4(uint64_t a1)
{
  sub_275DF1474(a1);

  JUMPOUT(0x277C8F960);
}

uint64_t *sub_275DF14F4(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (result[4] + 8);
    do
    {
      v4 = *v3++;
      result = sub_275DF0E54(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  if (v6)
  {

    return sub_275E224D0(v5);
  }

  return result;
}

google::protobuf::internal *sub_275DF1570(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_275E221E8(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_22;
          }

          if (v12 == *(a1 + 28))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v11 = *(a1 + 32);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = sub_275E1FEDC(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_275E5BF8C(a3, v13, v10);
          v20 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 10)
          {
            goto LABEL_14;
          }
        }
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
        *(a3 + 80) = v6 - 1;
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275E22260((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_275E221E8(a3, &v20))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *sub_275DF1740(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(a1 + 32) + 8 * i + 8);
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

      a2 = sub_275DF1088(v7, v9, a3);
    }
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_275DF1864(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
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
      v7 = sub_275DF11AC(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v2, a1 + 40);
  }

  else
  {
    *(a1 + 40) = v2;
    return v2;
  }
}

uint64_t sub_275DF191C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2884D7E80, 0);
  if (v4)
  {

    return sub_275DF19C4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275DF19C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275E22484((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    result = sub_275E2282C(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

uint64_t *sub_275DF1A64(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275DF14F4(result);

    return sub_275DF191C(v4, a2);
  }

  return result;
}

uint64_t sub_275DF1AB8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    v4 = *(v3 + 16);
    if ((v4 & 1) == 0)
    {
      break;
    }

    if ((v4 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(v3 + 32));
      if (!result)
      {
        return result;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_275DF1B58(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884D5E38;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 96) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = a2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 240) = a2;
  *(a1 + 144) = a2;
  *(a1 + 168) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  if (atomic_load_explicit(dword_2812EA5B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 264) = MEMORY[0x277D80A90];
  *(a1 + 272) = v3;
  *(a1 + 280) = v3;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 444) = 0u;
  return a1;
}

void sub_275DF1C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10)
{
  sub_275E22664(v18);
  sub_275E22664(v10);
  sub_275E22664(v17);
  sub_275E22664(v16);
  sub_275E22664(v11);
  sub_275E229F4(v15);
  sub_275E22970(v14);
  sub_275E22664(v13);
  sub_275E228EC(v12);
  sub_275E22664(a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_275DF1D20(uint64_t *a1)
{
  sub_275DF1DCC(a1);
  sub_275DE4968(a1 + 1);
  sub_275E22664(a1 + 30);
  sub_275E22664(a1 + 27);
  sub_275E22664(a1 + 24);
  sub_275E22664(a1 + 21);
  sub_275E22664(a1 + 18);
  sub_275E229F4(a1 + 15);
  sub_275E22970(a1 + 12);
  sub_275E22664(a1 + 9);
  sub_275E228EC(a1 + 6);
  sub_275E22664(a1 + 3);
  return a1;
}

uint64_t sub_275DF1DCC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 264);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C8F960](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 272);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C8F960](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 280);
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C8F960](v5, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812EAEB0)
  {
    v6 = *(v1 + 288);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C8F960]();
    }

    v7 = *(v1 + 296);
    if (v7)
    {
      v8 = sub_275DE77B4(v7);
      MEMORY[0x277C8F960](v8, 0x10A1C40D4912B22);
    }

    v9 = *(v1 + 304);
    if (v9)
    {
      TSP::Reference::~Reference(v9);
      MEMORY[0x277C8F960]();
    }

    v10 = *(v1 + 312);
    if (v10)
    {
      TSP::Reference::~Reference(v10);
      MEMORY[0x277C8F960]();
    }

    if (*(v1 + 320))
    {
      v11 = MEMORY[0x277C8E7D0]();
      MEMORY[0x277C8F960](v11, 0x10A1C4042CF1500);
    }

    if (*(v1 + 328))
    {
      v12 = MEMORY[0x277C8E7D0]();
      MEMORY[0x277C8F960](v12, 0x10A1C4042CF1500);
    }

    v13 = *(v1 + 336);
    if (v13)
    {
      TSP::Reference::~Reference(v13);
      MEMORY[0x277C8F960]();
    }

    v14 = *(v1 + 344);
    if (v14)
    {
      TSP::Reference::~Reference(v14);
      MEMORY[0x277C8F960]();
    }

    if (*(v1 + 352))
    {
      v15 = MEMORY[0x277C8E7D0]();
      MEMORY[0x277C8F960](v15, 0x10A1C4042CF1500);
    }

    if (*(v1 + 360))
    {
      v16 = MEMORY[0x277C8ED70]();
      MEMORY[0x277C8F960](v16, 0x10A1C4051C080FALL);
    }

    if (*(v1 + 368))
    {
      v17 = MEMORY[0x277C8ED70]();
      MEMORY[0x277C8F960](v17, 0x10A1C4051C080FALL);
    }

    if (*(v1 + 376))
    {
      v18 = MEMORY[0x277C8ED70]();
      MEMORY[0x277C8F960](v18, 0x10A1C4051C080FALL);
    }

    v19 = *(v1 + 384);
    if (v19)
    {
      TSP::Reference::~Reference(v19);
      MEMORY[0x277C8F960]();
    }

    v20 = *(v1 + 392);
    if (v20)
    {
      TSP::Reference::~Reference(v20);
      MEMORY[0x277C8F960]();
    }

    v21 = *(v1 + 400);
    if (v21)
    {
      TSP::Reference::~Reference(v21);
      MEMORY[0x277C8F960]();
    }

    v22 = *(v1 + 408);
    if (v22)
    {
      TSP::Reference::~Reference(v22);
      MEMORY[0x277C8F960]();
    }

    v23 = *(v1 + 416);
    if (v23)
    {
      TSP::Reference::~Reference(v23);
      MEMORY[0x277C8F960]();
    }

    result = *(v1 + 424);
    if (result)
    {
      sub_275DF1474(result);

      JUMPOUT(0x277C8F960);
    }
  }

  return result;
}

void sub_275DF2064(uint64_t *a1)
{
  sub_275DF1D20(a1);

  JUMPOUT(0x277C8F960);
}

void *sub_275DF20A4()
{
  if (atomic_load_explicit(dword_2812EA5B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812EAEB0;
}

uint64_t *sub_275DF20E4(uint64_t *result)
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
      result = sub_275DE7EFC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 20);
  if (v8 >= 1)
  {
    v9 = (v1[11] + 8);
    do
    {
      v10 = *v9++;
      result = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 20) = 0;
  }

  v11 = *(v1 + 26);
  if (v11 >= 1)
  {
    v12 = (v1[14] + 8);
    do
    {
      v13 = *v12++;
      result = TSD::GuideArchive::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 26) = 0;
  }

  v14 = *(v1 + 32);
  if (v14 >= 1)
  {
    v15 = (v1[17] + 8);
    do
    {
      v16 = *v15++;
      result = sub_275DF05F4(v16);
      --v14;
    }

    while (v14);
    *(v1 + 32) = 0;
  }

  v17 = *(v1 + 38);
  if (v17 >= 1)
  {
    v18 = (v1[20] + 8);
    do
    {
      v19 = *v18++;
      result = TSP::Reference::Clear(v19);
      --v17;
    }

    while (v17);
    *(v1 + 38) = 0;
  }

  v20 = *(v1 + 44);
  if (v20 >= 1)
  {
    v21 = (v1[23] + 8);
    do
    {
      v22 = *v21++;
      result = TSP::Reference::Clear(v22);
      --v20;
    }

    while (v20);
    *(v1 + 44) = 0;
  }

  v23 = *(v1 + 50);
  if (v23 >= 1)
  {
    v24 = (v1[26] + 8);
    do
    {
      v25 = *v24++;
      result = TSP::Reference::Clear(v25);
      --v23;
    }

    while (v23);
    *(v1 + 50) = 0;
  }

  v26 = *(v1 + 56);
  if (v26 >= 1)
  {
    v27 = (v1[29] + 8);
    do
    {
      v28 = *v27++;
      result = TSP::Reference::Clear(v28);
      --v26;
    }

    while (v26);
    *(v1 + 56) = 0;
  }

  v29 = *(v1 + 62);
  if (v29 >= 1)
  {
    v30 = (v1[32] + 8);
    do
    {
      v31 = *v30++;
      result = TSP::Reference::Clear(v31);
      --v29;
    }

    while (v29);
    *(v1 + 62) = 0;
  }

  v32 = *(v1 + 4);
  if (!v32)
  {
    goto LABEL_51;
  }

  if (v32)
  {
    v35 = v1[33] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v35 + 23) < 0)
    {
      **v35 = 0;
      *(v35 + 8) = 0;
      if ((v32 & 2) != 0)
      {
        goto LABEL_93;
      }
    }

    else
    {
      *v35 = 0;
      *(v35 + 23) = 0;
      if ((v32 & 2) != 0)
      {
        goto LABEL_93;
      }
    }

LABEL_44:
    if ((v32 & 4) == 0)
    {
      goto LABEL_45;
    }

LABEL_97:
    v37 = v1[35] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v37 + 23) < 0)
    {
      **v37 = 0;
      *(v37 + 8) = 0;
      if ((v32 & 8) != 0)
      {
        goto LABEL_101;
      }
    }

    else
    {
      *v37 = 0;
      *(v37 + 23) = 0;
      if ((v32 & 8) != 0)
      {
        goto LABEL_101;
      }
    }

LABEL_46:
    if ((v32 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_102;
  }

  if ((v32 & 2) == 0)
  {
    goto LABEL_44;
  }

LABEL_93:
  v36 = v1[34] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v36 + 23) < 0)
  {
    **v36 = 0;
    *(v36 + 8) = 0;
    if ((v32 & 4) != 0)
    {
      goto LABEL_97;
    }
  }

  else
  {
    *v36 = 0;
    *(v36 + 23) = 0;
    if ((v32 & 4) != 0)
    {
      goto LABEL_97;
    }
  }

LABEL_45:
  if ((v32 & 8) == 0)
  {
    goto LABEL_46;
  }

LABEL_101:
  result = TSP::Reference::Clear(v1[36]);
  if ((v32 & 0x10) == 0)
  {
LABEL_47:
    if ((v32 & 0x20) == 0)
    {
      goto LABEL_48;
    }

LABEL_103:
    result = TSP::Reference::Clear(v1[38]);
    if ((v32 & 0x40) == 0)
    {
LABEL_49:
      if ((v32 & 0x80) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    goto LABEL_104;
  }

LABEL_102:
  result = sub_275DE7858(v1[37]);
  if ((v32 & 0x20) != 0)
  {
    goto LABEL_103;
  }

LABEL_48:
  if ((v32 & 0x40) == 0)
  {
    goto LABEL_49;
  }

LABEL_104:
  result = TSP::Reference::Clear(v1[39]);
  if ((v32 & 0x80) != 0)
  {
LABEL_50:
    result = TSD::GeometryArchive::Clear(v1[40]);
  }

LABEL_51:
  if ((v32 & 0xFF00) == 0)
  {
    goto LABEL_61;
  }

  if ((v32 & 0x100) != 0)
  {
    result = TSD::GeometryArchive::Clear(v1[41]);
    if ((v32 & 0x200) == 0)
    {
LABEL_54:
      if ((v32 & 0x400) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_81;
    }
  }

  else if ((v32 & 0x200) == 0)
  {
    goto LABEL_54;
  }

  result = TSP::Reference::Clear(v1[42]);
  if ((v32 & 0x400) == 0)
  {
LABEL_55:
    if ((v32 & 0x800) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_82;
  }

LABEL_81:
  result = TSP::Reference::Clear(v1[43]);
  if ((v32 & 0x800) == 0)
  {
LABEL_56:
    if ((v32 & 0x1000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_83;
  }

LABEL_82:
  result = TSD::GeometryArchive::Clear(v1[44]);
  if ((v32 & 0x1000) == 0)
  {
LABEL_57:
    if ((v32 & 0x2000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = TSWP::ShapeStylePropertiesArchive::Clear(v1[45]);
  if ((v32 & 0x2000) == 0)
  {
LABEL_58:
    if ((v32 & 0x4000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = TSWP::ShapeStylePropertiesArchive::Clear(v1[46]);
  if ((v32 & 0x4000) == 0)
  {
LABEL_59:
    if ((v32 & 0x8000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_85:
  result = TSWP::ShapeStylePropertiesArchive::Clear(v1[47]);
  if ((v32 & 0x8000) != 0)
  {
LABEL_60:
    result = TSP::Reference::Clear(v1[48]);
  }

LABEL_61:
  if ((v32 & 0x1F0000) == 0)
  {
    goto LABEL_68;
  }

  if ((v32 & 0x10000) != 0)
  {
    result = TSP::Reference::Clear(v1[49]);
    if ((v32 & 0x20000) == 0)
    {
LABEL_64:
      if ((v32 & 0x40000) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_89;
    }
  }

  else if ((v32 & 0x20000) == 0)
  {
    goto LABEL_64;
  }

  result = TSP::Reference::Clear(v1[50]);
  if ((v32 & 0x40000) == 0)
  {
LABEL_65:
    if ((v32 & 0x80000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = TSP::Reference::Clear(v1[51]);
  if ((v32 & 0x80000) == 0)
  {
LABEL_66:
    if ((v32 & 0x100000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_90:
  result = TSP::Reference::Clear(v1[52]);
  if ((v32 & 0x100000) != 0)
  {
LABEL_67:
    result = sub_275DF14F4(v1[53]);
  }

LABEL_68:
  if ((v32 & 0xE00000) != 0)
  {
    *(v1 + 110) = 0;
    v1[54] = 0;
  }

  if ((v32 & 0x7F000000) != 0)
  {
    *(v1 + 452) = 0;
    *(v1 + 444) = 0;
  }

  v34 = *(v1 + 8);
  v33 = v1 + 1;
  *(v33 + 2) = 0;
  if (v34)
  {

    return sub_275E224D0(v33);
  }

  return result;
}