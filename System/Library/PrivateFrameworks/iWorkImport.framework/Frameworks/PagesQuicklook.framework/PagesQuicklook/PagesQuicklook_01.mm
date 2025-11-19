google::protobuf::internal *sub_275F92184(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v44) & 1) == 0)
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
        goto LABEL_73;
      }

      v7 = TagFallback;
      v8 = v41;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4 && v8 == 34)
          {
            v20 = (v7 - 1);
            while (1)
            {
              v21 = (v20 + 1);
              v44 = (v20 + 1);
              v22 = *(a1 + 88);
              if (!v22)
              {
                goto LABEL_31;
              }

              v27 = *(a1 + 80);
              v23 = *v22;
              if (v27 < *v22)
              {
                *(a1 + 80) = v27 + 1;
                v24 = *&v22[2 * v27 + 2];
                goto LABEL_35;
              }

              if (v23 == *(a1 + 84))
              {
LABEL_31:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                v22 = *(a1 + 88);
                v23 = *v22;
              }

              *v22 = v23 + 1;
              v24 = sub_275FAF0C0(*(a1 + 72));
              v25 = *(a1 + 80);
              v26 = *(a1 + 88) + 8 * v25;
              *(a1 + 80) = v25 + 1;
              *(v26 + 8) = v24;
              v21 = v44;
LABEL_35:
              v20 = sub_2760349EC(a3, v24, v21);
              v44 = v20;
              if (!v20)
              {
                goto LABEL_73;
              }

              if (*a3 <= v20 || *v20 != 34)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_59:
          if (v8)
          {
            v39 = (v8 & 7) == 4;
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275FB5524((a1 + 8));
          }

          v44 = google::protobuf::internal::UnknownFieldParse();
          if (!v44)
          {
LABEL_73:
            v44 = 0;
            goto LABEL_2;
          }

          goto LABEL_66;
        }

        if (v8 != 26)
        {
          goto LABEL_59;
        }

        v31 = (v7 - 1);
        while (2)
        {
          v32 = (v31 + 1);
          v44 = (v31 + 1);
          v33 = *(a1 + 64);
          if (!v33)
          {
LABEL_49:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v33 = *(a1 + 64);
            v34 = *v33;
            goto LABEL_50;
          }

          v38 = *(a1 + 56);
          v34 = *v33;
          if (v38 >= *v33)
          {
            if (v34 == *(a1 + 60))
            {
              goto LABEL_49;
            }

LABEL_50:
            *v33 = v34 + 1;
            v35 = sub_275FAF0C0(*(a1 + 48));
            v36 = *(a1 + 56);
            v37 = *(a1 + 64) + 8 * v36;
            *(a1 + 56) = v36 + 1;
            *(v37 + 8) = v35;
            v32 = v44;
          }

          else
          {
            *(a1 + 56) = v38 + 1;
            v35 = *&v33[2 * v38 + 2];
          }

          v31 = sub_2760349EC(a3, v35, v32);
          v44 = v31;
          if (!v31)
          {
            goto LABEL_73;
          }

          if (*a3 <= v31 || *v31 != 26)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v10 != 1)
      {
        if (v10 != 2 || v8 != 18)
        {
          goto LABEL_59;
        }

        v12 = (v7 - 1);
        while (2)
        {
          v13 = (v12 + 1);
          v44 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_16:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_17;
          }

          v19 = *(a1 + 32);
          v15 = *v14;
          if (v19 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_16;
            }

LABEL_17:
            *v14 = v15 + 1;
            v16 = sub_275FAF0C0(*(a1 + 24));
            v17 = *(a1 + 32);
            v18 = *(a1 + 40) + 8 * v17;
            *(a1 + 32) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v44;
          }

          else
          {
            *(a1 + 32) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
          }

          v12 = sub_2760349EC(a3, v16, v13);
          v44 = v12;
          if (!v12)
          {
            goto LABEL_73;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v8 != 8)
      {
        goto LABEL_59;
      }

      v28 = (v7 + 1);
      LODWORD(v29) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v30 = *v28;
      v29 = (v29 + (v30 << 7) - 128);
      if ((v30 & 0x80000000) == 0)
      {
        v28 = (v7 + 2);
LABEL_45:
        v44 = v28;
        *(a1 + 96) = v29;
        v5 = 1;
        goto LABEL_66;
      }

      v42 = google::protobuf::internal::VarintParseSlow32(v7, v29);
      v44 = v42;
      *(a1 + 96) = v43;
      v5 = 1;
      if (!v42)
      {
        goto LABEL_73;
      }

LABEL_66:
      if (sub_275FB1588(a3, &v44))
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

unsigned __int8 *sub_275F92584(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 96);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(a1 + 40) + 8 * i + 8);
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

      a2 = sub_275F91BD4(v12, v14, a3, a4);
    }
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    for (j = 0; j != v18; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 26;
      v21 = *(v20 + 20);
      if (v21 > 0x7F)
      {
        a2[1] = v21 | 0x80;
        v23 = v21 >> 7;
        if (v21 >> 14)
        {
          v22 = a2 + 3;
          do
          {
            *(v22 - 1) = v23 | 0x80;
            v24 = v23 >> 7;
            ++v22;
            v25 = v23 >> 14;
            v23 >>= 7;
          }

          while (v25);
          *(v22 - 1) = v24;
        }

        else
        {
          a2[2] = v23;
          v22 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v21;
        v22 = a2 + 2;
      }

      a2 = sub_275F91BD4(v20, v22, a3, a4);
    }
  }

  v26 = *(a1 + 80);
  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v28 = *(*(a1 + 88) + 8 * k + 8);
      *a2 = 34;
      v29 = *(v28 + 20);
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

      a2 = sub_275F91BD4(v28, v30, a3, a4);
    }
  }

  v34 = *(a1 + 8);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v34 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F92898(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = ((9 * (__clz(*(a1 + 96) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  v4 = v2 + v3;
  v5 = *(a1 + 40);
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
      v9 = sub_275F91CC4(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 56);
  v11 = v4 + v10;
  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = sub_275F91CC4(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(a1 + 80);
  v18 = v11 + v17;
  v19 = *(a1 + 88);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = sub_275F91CC4(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v18;
    return v18;
  }
}

uint64_t sub_275F92A1C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500778, 0);
  if (v4)
  {

    return sub_275F92AC4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F92AC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB5A90(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275FB5A90(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    result = sub_275FB5A90(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 96);
    *(v3 + 16) |= 1u;
    *(v3 + 96) = v20;
  }

  return result;
}

uint64_t *sub_275F92C38(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F920B0(result);

    return sub_275F92A1C(v4, a2);
  }

  return result;
}

uint64_t sub_275F92C84(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0 || !sub_275F92CE8(a1 + 24) || !sub_275F92CE8(a1 + 48))
  {
    return 0;
  }

  return sub_275F92CE8(a1 + 72);
}

uint64_t sub_275F92CE8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if (*(v3 + 16))
    {
      result = TSP::Reference::IsInitialized(*(v3 + 24));
      if (!result)
      {
        break;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return result;
}

void *sub_275F92D7C(void *a1, uint64_t a2)
{
  *a1 = &unk_2884FEF60;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812F8068, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[6] = 0;
  return a1;
}

void *sub_275F92E0C(void *a1)
{
  if (a1 != qword_2812F88A8)
  {
    v2 = a1[6];
    if (v2)
    {
      v3 = sub_275F912A8(v2);
      MEMORY[0x277C93390](v3, 0x10A1C40290C9B23);
    }
  }

  sub_275F8A514(a1 + 1);
  sub_275FB5B50(a1 + 3);
  return a1;
}

void sub_275F92E7C(void *a1)
{
  sub_275F92E0C(a1);

  JUMPOUT(0x277C93390);
}

void *sub_275F92EBC()
{
  if (atomic_load_explicit(dword_2812F8068, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F88A8;
}

uint64_t *sub_275F92EFC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_275F920B0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if (v1[2])
  {
    result = sub_275F91328(v1[6]);
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_275FB57B8(v5);
  }

  return result;
}

google::protobuf::internal *sub_275F92F8C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275FB1588(a3, &v24))
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
    if (v6 >> 3 != 2)
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
        goto LABEL_12;
      }

      v13 = (v5 - 1);
      while (1)
      {
        v14 = (v13 + 1);
        v24 = (v13 + 1);
        v15 = *(a1 + 40);
        if (!v15)
        {
          goto LABEL_29;
        }

        v20 = *(a1 + 32);
        v16 = *v15;
        if (v20 < *v15)
        {
          *(a1 + 32) = v20 + 1;
          v17 = *&v15[2 * v20 + 2];
          goto LABEL_33;
        }

        if (v16 == *(a1 + 36))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v15 = *(a1 + 40);
          v16 = *v15;
        }

        *v15 = v16 + 1;
        v17 = sub_275FAF18C(*(a1 + 24));
        v18 = *(a1 + 32);
        v19 = *(a1 + 40) + 8 * v18;
        *(a1 + 32) = v18 + 1;
        *(v19 + 8) = v17;
        v14 = v24;
LABEL_33:
        v13 = sub_276034ABC(a3, v17, v14);
        v24 = v13;
        if (!v13)
        {
          return 0;
        }

        if (*a3 <= v13 || *v13 != 10)
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

        v11 = sub_275FAF034(v12);
        *(a1 + 48) = v11;
        v5 = v24;
      }

      v10 = sub_276034B8C(a3, v11, v5);
      goto LABEL_25;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275FB5524((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_25:
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *sub_275F931B0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = sub_275F92584(v8, v10, a3, a4);
    }
  }

  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(a1 + 48);
    *a2 = 18;
    v15 = *(v14 + 40);
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

    a2 = sub_275F91574(v14, v16, a3, a4);
  }

  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F9336C(uint64_t a1)
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
      v7 = sub_275F92898(v6);
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
    v8 = sub_275F91698(*(a1 + 48));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t sub_275F93458(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500790, 0);
  if (v4)
  {

    return sub_275F93500(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F93500(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB5BD4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = sub_275FAF034(v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 48);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &unk_2812F87F0;
    }

    return sub_275F917F8(v11, v13);
  }

  return result;
}

uint64_t *sub_275F93610(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F92EFC(result);

    return sub_275F93458(v4, a2);
  }

  return result;
}

BOOL sub_275F9365C(uint64_t a1)
{
  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_275F92C84(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_275F918EC(*(a1 + 48) + 16);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275F936FC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FF010;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812F8048, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

uint64_t sub_275F93788(uint64_t a1)
{
  sub_275F8A514((a1 + 8));
  sub_275FB56E8((a1 + 16));
  return a1;
}

void sub_275F937C8(uint64_t a1)
{
  sub_275F93788(a1);

  JUMPOUT(0x277C93390);
}

void *sub_275F93808()
{
  if (atomic_load_explicit(dword_2812F8048, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F88E0;
}

uint64_t *sub_275F93848(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (result[4] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 1;
  if (v6)
  {

    return sub_275FB57B8(v5);
  }

  return result;
}

google::protobuf::internal *sub_275F938C4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_275FB1588(a3, &v21) & 1) == 0)
  {
    while (1)
    {
      v5 = (v21 + 1);
      v6 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
      v21 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v19;
LABEL_6:
      if (v6 == 10)
      {
        v9 = v5 - 1;
        while (1)
        {
          v10 = (v9 + 1);
          v21 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v17 = *(a1 + 24);
          v12 = *v11;
          if (v17 < *v11)
          {
            *(a1 + 24) = v17 + 1;
            v14 = *&v11[2 * v17 + 2];
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
          v13 = MEMORY[0x277C92D60](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_27603450C(a3, v14, v10);
          v21 = v9;
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
        return v21;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_275FB5524((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_275FB1588(a3, &v21))
      {
        return v21;
      }
    }

    v5 = (v21 + 2);
LABEL_5:
    v21 = v5;
    goto LABEL_6;
  }

  return v21;
}

unsigned __int8 *sub_275F93A94(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(a1 + 32) + 8 * i + 8);
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

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F93BB8(uint64_t a1)
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

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 40) = v2;
    return v2;
  }
}

uint64_t sub_275F93C70(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885007A8, 0);
  if (v4)
  {

    return sub_275F93D18(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F93D18(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    result = sub_275FB5808(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *sub_275F93DB8(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F93848(result);

    return sub_275F93C70(v4, a2);
  }

  return result;
}

BOOL sub_275F93E04(uint64_t a1)
{
  v2 = *(a1 + 24);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 32) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

void *sub_275F93E94(void *a1, uint64_t a2)
{
  *a1 = &unk_2884FF0C0;
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
  if (atomic_load_explicit(dword_2812F8340, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[12] = 0;
  return a1;
}

void sub_275F93F28(_Unwind_Exception *a1)
{
  sub_275FB56E8(v3);
  sub_275FB56E8(v2);
  sub_275FB56E8(v1);
  _Unwind_Resume(a1);
}

void *sub_275F93F5C(void *a1)
{
  if (a1 != qword_2812F8910 && a1[12])
  {
    v2 = MEMORY[0x277C92AB0]();
    MEMORY[0x277C93390](v2, 0x10A1C40290C9B23);
  }

  sub_275F8A514(a1 + 1);
  sub_275FB56E8(a1 + 9);
  sub_275FB56E8(a1 + 6);
  sub_275FB56E8(a1 + 3);
  return a1;
}

void sub_275F93FE4(void *a1)
{
  sub_275F93F5C(a1);

  JUMPOUT(0x277C93390);
}

void *sub_275F94024()
{
  if (atomic_load_explicit(dword_2812F8340, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F8910;
}

uint64_t *sub_275F94064(uint64_t *result)
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
      result = TSP::Reference::Clear(v7);
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

  if (v1[2])
  {
    result = TSP::UUIDPath::Clear(v1[12]);
  }

  v12 = *(v1 + 8);
  v11 = v1 + 1;
  *(v11 + 2) = 0;
  if (v12)
  {

    return sub_275FB57B8(v11);
  }

  return result;
}

google::protobuf::internal *sub_275F94144(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v45 = a2;
  while (1)
  {
LABEL_2:
    if (sub_275FB1588(a3, &v45))
    {
      return v45;
    }

    v5 = (v45 + 1);
    v6 = *v45;
    if ((*v45 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v45 + 2);
LABEL_6:
      v45 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v45, (v7 - 128));
    v45 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v43;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 != 1)
      {
        if (v8 != 2 || v6 != 18)
        {
          goto LABEL_60;
        }

        v10 = v5 - 1;
        while (1)
        {
          v11 = (v10 + 1);
          v45 = (v10 + 1);
          v12 = *(a1 + 64);
          if (!v12)
          {
            goto LABEL_16;
          }

          v18 = *(a1 + 56);
          v13 = *v12;
          if (v18 < *v12)
          {
            *(a1 + 56) = v18 + 1;
            v15 = *&v12[2 * v18 + 2];
            goto LABEL_20;
          }

          if (v13 == *(a1 + 60))
          {
LABEL_16:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v12 = *(a1 + 64);
            v13 = *v12;
          }

          *v12 = v13 + 1;
          v14 = MEMORY[0x277C92D60](*(a1 + 48));
          LODWORD(v15) = v14;
          v16 = *(a1 + 56);
          v17 = *(a1 + 64) + 8 * v16;
          *(a1 + 56) = v16 + 1;
          *(v17 + 8) = v14;
          v11 = v45;
LABEL_20:
          v10 = sub_27603450C(a3, v15, v11);
          v45 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 18)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 10)
      {
        goto LABEL_60;
      }

      v23 = v5 - 1;
      while (1)
      {
        v24 = (v23 + 1);
        v45 = (v23 + 1);
        v25 = *(a1 + 40);
        if (!v25)
        {
          goto LABEL_37;
        }

        v31 = *(a1 + 32);
        v26 = *v25;
        if (v31 < *v25)
        {
          *(a1 + 32) = v31 + 1;
          v28 = *&v25[2 * v31 + 2];
          goto LABEL_41;
        }

        if (v26 == *(a1 + 36))
        {
LABEL_37:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v25 = *(a1 + 40);
          v26 = *v25;
        }

        *v25 = v26 + 1;
        v27 = MEMORY[0x277C92D60](*(a1 + 24));
        LODWORD(v28) = v27;
        v29 = *(a1 + 32);
        v30 = *(a1 + 40) + 8 * v29;
        *(a1 + 32) = v29 + 1;
        *(v30 + 8) = v27;
        v24 = v45;
LABEL_41:
        v23 = sub_27603450C(a3, v28, v24);
        v45 = v23;
        if (!v23)
        {
          return 0;
        }

        if (*a3 <= v23 || *v23 != 10)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_60;
      }

      v32 = v5 - 1;
LABEL_49:
      v33 = (v32 + 1);
      v45 = (v32 + 1);
      v34 = *(a1 + 88);
      if (!v34)
      {
LABEL_50:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
        v34 = *(a1 + 88);
        v35 = *v34;
        goto LABEL_51;
      }

      v40 = *(a1 + 80);
      v35 = *v34;
      if (v40 >= *v34)
      {
        if (v35 == *(a1 + 84))
        {
          goto LABEL_50;
        }

LABEL_51:
        *v34 = v35 + 1;
        v36 = MEMORY[0x277C92D60](*(a1 + 72));
        LODWORD(v37) = v36;
        v38 = *(a1 + 80);
        v39 = *(a1 + 88) + 8 * v38;
        *(a1 + 80) = v38 + 1;
        *(v39 + 8) = v36;
        v33 = v45;
      }

      else
      {
        *(a1 + 80) = v40 + 1;
        v37 = *&v34[2 * v40 + 2];
      }

      v32 = sub_27603450C(a3, v37, v33);
      v45 = v32;
      if (!v32)
      {
        return 0;
      }

      if (*a3 <= v32 || *v32 != 26)
      {
        continue;
      }

      goto LABEL_49;
    }

    if (v8 == 4 && v6 == 34)
    {
      *(a1 + 16) |= 1u;
      v19 = *(a1 + 96);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x277C92D50](v20);
        LODWORD(v19) = v21;
        *(a1 + 96) = v21;
        v5 = v45;
      }

      v22 = sub_276034C5C(a3, v19, v5);
      goto LABEL_67;
    }

LABEL_60:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_275FB5524((a1 + 8));
    }

    v22 = google::protobuf::internal::UnknownFieldParse();
LABEL_67:
    v45 = v22;
    if (!v22)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v45;
}

unsigned __int8 *sub_275F94510(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(a1 + 96);
    *a2 = 34;
    v31 = *(v30 + 10);
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

    a2 = TSP::UUIDPath::_InternalSerialize(v30, v32, a3);
  }

  v36 = *(a1 + 8);
  if ((v36 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v36 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F94834(uint64_t a1)
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

  if (*(a1 + 16))
  {
    v22 = TSP::UUIDPath::ByteSizeLong(*(a1 + 96));
    v16 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v16;
    return v16;
  }
}

uint64_t sub_275F949C0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885007C0, 0);
  if (v4)
  {

    return sub_275F94A68(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F94A68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB5808(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275FB5808(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    result = sub_275FB5808(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 96);
    *(v3 + 16) |= 1u;
    v21 = *(v3 + 96);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C92D50](v22);
      *(v3 + 96) = v21;
      v20 = *(a2 + 96);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = MEMORY[0x277D80A10];
    }

    return TSP::UUIDPath::MergeFrom(v21, v23);
  }

  return result;
}

uint64_t *sub_275F94C30(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F94064(result);

    return sub_275F949C0(v4, a2);
  }

  return result;
}

uint64_t sub_275F94C7C(uint64_t a1)
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

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUIDPath::IsInitialized(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_275F94D68(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FF170;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812F8220, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = MEMORY[0x277D80A90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_275F94DDC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812F8978)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514((a1 + 8));
  return a1;
}

void sub_275F94E7C(uint64_t a1)
{
  sub_275F94DDC(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F94EBC(uint64_t *result)
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
  *(v4 + 8) = 0;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_275FB57B8(v4);
  }

  return result;
}

google::protobuf::internal *sub_275F94F54(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v24) & 1) == 0)
  {
    while (1)
    {
      v7 = (v24 + 1);
      v8 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v9 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_40;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_13;
          }

          *(a1 + 16) |= 2u;
          v14 = *(a1 + 32);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C92D60](v15);
            LODWORD(v14) = v16;
            *(a1 + 32) = v16;
            v7 = v24;
          }

          v13 = sub_27603450C(a3, v14, v7);
        }

        else if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v13 = google::protobuf::internal::InlineGreedyStringParser();
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
            sub_275FB5524((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v24 = v13;
        if (!v13)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v17 = (v7 + 1);
      LODWORD(v18) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v19 = *v17;
      v18 = (v18 + (v19 << 7) - 128);
      if ((v19 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_30:
        v24 = v17;
        *(a1 + 40) = v18;
        goto LABEL_33;
      }

      v22 = google::protobuf::internal::VarintParseSlow32(v7, v18);
      v24 = v22;
      *(a1 + 40) = v23;
      if (!v22)
      {
LABEL_40:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_33:
      if (sub_275FB1588(a3, &v24))
      {
        goto LABEL_2;
      }
    }

    v7 = (v24 + 2);
LABEL_6:
    v24 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

unsigned __int8 *sub_275F9517C(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275F8C698(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
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
  if ((v6 & 4) != 0)
  {
LABEL_16:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(a1 + 40);
    *v4 = 24;
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

LABEL_25:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_275F95334(uint64_t a1)
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
    v2 = *(a1 + 16);
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
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_275F95404(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v8 = sub_275F95334(a1);
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
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v8;
    return v8;
  }
}

uint64_t sub_275F95504(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885007D8, 0);
  if (v4)
  {

    return sub_275F955AC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F955AC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
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
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C92D60](v7);
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
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t *sub_275F956A0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F94EBC(result);

    return sub_275F95504(v4, a2);
  }

  return result;
}

uint64_t sub_275F956EC(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(*(a1 + 32));
  }
}

uint64_t sub_275F95744(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FF220;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2812F81F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = v3;
  *(a1 + 96) = 0;
  return a1;
}

void sub_275F957DC(_Unwind_Exception *a1)
{
  sub_275FB5C94(v2);
  sub_275FB56E8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_275F95804(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  if (a1 != &unk_2812F89A8)
  {
    if (*(a1 + 80))
    {
      v3 = MEMORY[0x277C928F0]();
      MEMORY[0x277C93390](v3, 0x10A1C4042C41316);
    }

    v4 = *(a1 + 88);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C93390]();
    }
  }

  sub_275F8A514((a1 + 8));
  sub_275FB5C94((a1 + 48));
  sub_275FB56E8((a1 + 24));
  return a1;
}

void sub_275F958DC(uint64_t a1)
{
  sub_275F95804(a1);

  JUMPOUT(0x277C93390);
}

void *sub_275F9591C()
{
  if (atomic_load_explicit(dword_2812F81F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F89A8;
}

uint64_t *sub_275F9595C(uint64_t *result)
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
      result = sub_275F94EBC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 4);
  if ((v8 & 7) == 0)
  {
    goto LABEL_14;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  v11 = v1[9] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v11 + 23) < 0)
  {
    **v11 = 0;
    *(v11 + 8) = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_22;
    }

LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *v11 = 0;
  *(v11 + 23) = 0;
  if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_22:
  result = TSD::FillArchive::Clear(v1[10]);
  if ((v8 & 4) != 0)
  {
LABEL_13:
    result = TSP::Reference::Clear(v1[11]);
  }

LABEL_14:
  v10 = *(v1 + 8);
  v9 = v1 + 1;
  *(v9 + 44) = 0;
  *(v9 + 2) = 0;
  if (v10)
  {

    return sub_275FB57B8(v9);
  }

  return result;
}

google::protobuf::internal *sub_275F95A68(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v49 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v49) & 1) == 0)
  {
    while (1)
    {
      v7 = (v49 + 1);
      v8 = *v49;
      if ((*v49 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v49, (v9 - 128));
      v49 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_86;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v26 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_78;
          }

          goto LABEL_71;
        }

        if (v10 != 2)
        {
          if (v10 != 3 || v8 != 26)
          {
            goto LABEL_71;
          }

          v15 = (v7 - 1);
          while (2)
          {
            v16 = (v15 + 1);
            v49 = (v15 + 1);
            v17 = *(a1 + 64);
            if (!v17)
            {
LABEL_25:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v17 = *(a1 + 64);
              v18 = *v17;
              goto LABEL_26;
            }

            v22 = *(a1 + 56);
            v18 = *v17;
            if (v22 >= *v17)
            {
              if (v18 == *(a1 + 60))
              {
                goto LABEL_25;
              }

LABEL_26:
              *v17 = v18 + 1;
              v19 = sub_275FAF3BC(*(a1 + 48));
              v20 = *(a1 + 56);
              v21 = *(a1 + 64) + 8 * v20;
              *(a1 + 56) = v20 + 1;
              *(v21 + 8) = v19;
              v16 = v49;
            }

            else
            {
              *(a1 + 56) = v22 + 1;
              v19 = *&v17[2 * v22 + 2];
            }

            v15 = sub_276034D2C(a3, v19, v16);
            v49 = v15;
            if (!v15)
            {
              goto LABEL_86;
            }

            if (*a3 <= v15 || *v15 != 26)
            {
              goto LABEL_79;
            }

            continue;
          }
        }

        if (v8 != 18)
        {
          goto LABEL_71;
        }

        v35 = v7 - 1;
        while (2)
        {
          v36 = (v35 + 1);
          v49 = (v35 + 1);
          v37 = *(a1 + 40);
          if (!v37)
          {
LABEL_61:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v37 = *(a1 + 40);
            v38 = *v37;
            goto LABEL_62;
          }

          v43 = *(a1 + 32);
          v38 = *v37;
          if (v43 >= *v37)
          {
            if (v38 == *(a1 + 36))
            {
              goto LABEL_61;
            }

LABEL_62:
            *v37 = v38 + 1;
            v39 = MEMORY[0x277C92D60](*(a1 + 24));
            LODWORD(v40) = v39;
            v41 = *(a1 + 32);
            v42 = *(a1 + 40) + 8 * v41;
            *(a1 + 32) = v41 + 1;
            *(v42 + 8) = v39;
            v36 = v49;
          }

          else
          {
            *(a1 + 32) = v43 + 1;
            v40 = *&v37[2 * v43 + 2];
          }

          v35 = sub_27603450C(a3, v40, v36);
          v49 = v35;
          if (!v35)
          {
            goto LABEL_86;
          }

          if (*a3 <= v35 || *v35 != 18)
          {
            goto LABEL_79;
          }

          continue;
        }
      }

      if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(a1 + 16) |= 2u;
            v32 = *(a1 + 80);
            if (!v32)
            {
              v33 = *(a1 + 8);
              if (v33)
              {
                v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x277C92CE0](v33);
              LODWORD(v32) = v34;
              *(a1 + 80) = v34;
              v7 = v49;
            }

            v26 = sub_276034DFC(a3, v32, v7);
LABEL_78:
            v49 = v26;
            if (!v26)
            {
              goto LABEL_86;
            }

            goto LABEL_79;
          }
        }

        else if (v10 == 7 && v8 == 58)
        {
          *(a1 + 16) |= 4u;
          v23 = *(a1 + 88);
          if (!v23)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = MEMORY[0x277C92D60](v24);
            LODWORD(v23) = v25;
            *(a1 + 88) = v25;
            v7 = v49;
          }

          v26 = sub_27603450C(a3, v23, v7);
          goto LABEL_78;
        }

LABEL_71:
        if (v8)
        {
          v44 = (v8 & 7) == 4;
        }

        else
        {
          v44 = 1;
        }

        if (v44)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275FB5524((a1 + 8));
        }

        v26 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_78;
      }

      if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_71;
        }

        v5 |= 8u;
        v30 = (v7 + 1);
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_51;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v30 = (v7 + 2);
LABEL_51:
          v49 = v30;
          *(a1 + 96) = v29 != 0;
          goto LABEL_79;
        }

        v45 = google::protobuf::internal::VarintParseSlow64(v7, v29);
        v49 = v45;
        *(a1 + 96) = v46 != 0;
        if (!v45)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_71;
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
          v49 = v12;
          *(a1 + 97) = v11 != 0;
          goto LABEL_79;
        }

        v47 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v49 = v47;
        *(a1 + 97) = v48 != 0;
        if (!v47)
        {
LABEL_86:
          v49 = 0;
          goto LABEL_2;
        }
      }

LABEL_79:
      if (sub_275FB1588(a3, &v49))
      {
        goto LABEL_2;
      }
    }

    v7 = (v49 + 2);
LABEL_6:
    v49 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v49;
}

unsigned __int8 *sub_275F95F1C(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_275F8C698(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 18;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[1] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 3;
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
          v4[2] = v12;
          v11 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v10;
        v11 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v9, v11, a3);
    }
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    for (j = 0; j != v15; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v17 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 26;
      v18 = *(v17 + 20);
      if (v18 > 0x7F)
      {
        v4[1] = v18 | 0x80;
        v20 = v18 >> 7;
        if (v18 >> 14)
        {
          v19 = (v4 + 3);
          do
          {
            *(v19 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            v19 = (v19 + 1);
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v19 - 1) = v21;
        }

        else
        {
          v4[2] = v20;
          v19 = (v4 + 3);
        }
      }

      else
      {
        v4[1] = v18;
        v19 = (v4 + 2);
      }

      v4 = sub_275F9517C(v17, v19, a3);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v23 = *(a1 + 96);
    *v4 = 32;
    v4[1] = v23;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
LABEL_29:
      if ((v6 & 2) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_29;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(a1 + 97);
  *v4 = 40;
  v4[1] = v24;
  v4 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_30:
    if ((v6 & 4) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(a1 + 80);
  *v4 = 50;
  v26 = *(v25 + 11);
  if (v26 > 0x7F)
  {
    v4[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = v4 + 3;
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
      v4[2] = v28;
      v27 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v26;
    v27 = v4 + 2;
  }

  v4 = TSD::FillArchive::_InternalSerialize(v25, v27, a3);
  if ((v6 & 4) != 0)
  {
LABEL_48:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(a1 + 88);
    *v4 = 58;
    v32 = *(v31 + 5);
    if (v32 > 0x7F)
    {
      v4[1] = v32 | 0x80;
      v34 = v32 >> 7;
      if (v32 >> 14)
      {
        v33 = v4 + 3;
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
        v4[2] = v34;
        v33 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v32;
      v33 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v31, v33, a3);
  }

LABEL_58:
  v37 = *(a1 + 8);
  if ((v37 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v37 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_275F962D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = ((*(a1 + 16) >> 2) & 2) + v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v6 = 8 * v2;
    do
    {
      v7 = *v5++;
      v8 = TSP::Reference::ByteSizeLong(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

  v9 = *(a1 + 56);
  v10 = v3 + v9;
  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = sub_275F95404(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(a1 + 16);
  if ((v16 & 7) != 0)
  {
    if (v16)
    {
      v19 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v19 + 23);
      v21 = *(v19 + 8);
      if ((v20 & 0x80u) == 0)
      {
        v21 = v20;
      }

      v10 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v16 & 2) == 0)
      {
LABEL_16:
        if ((v16 & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else if ((v16 & 2) == 0)
    {
      goto LABEL_16;
    }

    v22 = TSD::FillArchive::ByteSizeLong(*(a1 + 80));
    v10 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v16 & 4) != 0)
    {
LABEL_17:
      v17 = TSP::Reference::ByteSizeLong(*(a1 + 88));
      v10 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_18:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v10 + ((v16 >> 3) & 2);
    return v10 + ((v16 >> 3) & 2);
  }
}

uint64_t sub_275F964A8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885007F0, 0);
  if (v4)
  {

    return sub_275F96550(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F96550(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB5808(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275FB5D18(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 16);
  if ((v15 & 0x1F) != 0)
  {
    if (v15)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_27;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 16) |= 2u;
    v16 = *(v3 + 80);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C92CE0](v17);
      *(v3 + 80) = v16;
    }

    if (*(a2 + 80))
    {
      v18 = *(a2 + 80);
    }

    else
    {
      v18 = MEMORY[0x277D80488];
    }

    result = TSD::FillArchive::MergeFrom(v16, v18);
    if ((v15 & 4) == 0)
    {
LABEL_13:
      if ((v15 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_35;
    }

LABEL_27:
    *(v3 + 16) |= 4u;
    v19 = *(v3 + 88);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C92D60](v20);
      *(v3 + 88) = v19;
    }

    if (*(a2 + 88))
    {
      v21 = *(a2 + 88);
    }

    else
    {
      v21 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v19, v21);
    if ((v15 & 8) == 0)
    {
LABEL_14:
      if ((v15 & 0x10) == 0)
      {
LABEL_16:
        *(v3 + 16) |= v15;
        return result;
      }

LABEL_15:
      *(v3 + 97) = *(a2 + 97);
      goto LABEL_16;
    }

LABEL_35:
    *(v3 + 96) = *(a2 + 96);
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t *sub_275F9675C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F9595C(result);

    return sub_275F964A8(v4, a2);
  }

  return result;
}

uint64_t sub_275F967A8(uint64_t a1)
{
  if ((*(a1 + 16) & 8) == 0)
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

  result = sub_275F96840(a1 + 48);
  if (result)
  {
    v6 = *(a1 + 16);
    if ((v6 & 2) != 0)
    {
      result = TSD::FillArchive::IsInitialized(*(a1 + 80));
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

    result = TSP::Reference::IsInitialized(*(a1 + 88));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_275F96840(uint64_t a1)
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
    if ((~*(v4 + 16) & 7) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSP::Reference::IsInitialized(*(v4 + 32)) & 1) != 0);
  return v3 < 1;
}

uint64_t sub_275F968E0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2884FF2D0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 72) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (atomic_load_explicit(dword_2812F8260, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 96) = MEMORY[0x277D80A90];
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 196) = 0u;
  return a1;
}

void sub_275F9699C(_Unwind_Exception *a1)
{
  sub_275FB56E8(v3);
  sub_275FB56E8(v2);
  sub_275FB56E8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_275F969D0(uint64_t *a1)
{
  sub_275F96A28(a1);
  sub_275F8A514(a1 + 1);
  sub_275FB56E8(a1 + 9);
  sub_275FB56E8(a1 + 6);
  sub_275FB56E8(a1 + 3);
  return a1;
}

TSP::UUID *sub_275F96A28(TSP::UUID *result)
{
  v1 = result;
  v2 = *(result + 12);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C93390](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812F8A10)
  {
    v3 = *(v1 + 13);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C93390]();
    }

    v4 = *(v1 + 14);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C93390]();
    }

    v5 = *(v1 + 15);
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C93390]();
    }

    v6 = *(v1 + 16);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C93390]();
    }

    if (*(v1 + 17))
    {
      v7 = MEMORY[0x277C928F0]();
      MEMORY[0x277C93390](v7, 0x10A1C4042C41316);
    }

    result = *(v1 + 18);
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C93390);
    }
  }

  return result;
}

void sub_275F96B50(uint64_t *a1)
{
  sub_275F969D0(a1);

  JUMPOUT(0x277C93390);
}

void *sub_275F96B90()
{
  if (atomic_load_explicit(dword_2812F8260, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812F8A10;
}

uint64_t *sub_275F96BD0(uint64_t *result)
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
      result = TSP::Reference::Clear(v7);
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

  v11 = *(v1 + 4);
  if ((v11 & 0x7F) == 0)
  {
    goto LABEL_22;
  }

  if (v11)
  {
    v14 = v1[12] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 23) < 0)
    {
      **v14 = 0;
      *(v14 + 8) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *v14 = 0;
      *(v14 + 23) = 0;
      if ((v11 & 2) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_16:
    if ((v11 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_36:
  result = TSP::Reference::Clear(v1[13]);
  if ((v11 & 4) == 0)
  {
LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = TSP::Reference::Clear(v1[14]);
  if ((v11 & 8) == 0)
  {
LABEL_18:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_19;
    }

LABEL_39:
    result = TSP::Reference::Clear(v1[16]);
    if ((v11 & 0x20) == 0)
    {
LABEL_20:
      if ((v11 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_40;
  }

LABEL_38:
  result = TSP::Reference::Clear(v1[15]);
  if ((v11 & 0x10) != 0)
  {
    goto LABEL_39;
  }

LABEL_19:
  if ((v11 & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_40:
  result = TSD::FillArchive::Clear(v1[17]);
  if ((v11 & 0x40) != 0)
  {
LABEL_21:
    result = TSP::UUID::Clear(v1[18]);
  }

LABEL_22:
  *(v1 + 38) = 0;
  if ((v11 & 0xFF00) != 0)
  {
    *(v1 + 164) = 0;
    *(v1 + 156) = 0;
    *(v1 + 43) = 0;
  }

  if ((v11 & 0xFF0000) != 0)
  {
    v1[22] = 0;
    v1[23] = 0;
    *(v1 + 197) = 0;
    v1[24] = 0;
  }

  if ((v11 & 0x7000000) != 0)
  {
    *(v1 + 52) = 0;
    *(v1 + 205) = 0;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 1;
  *(v12 + 2) = 0;
  if (v13)
  {

    return sub_275FB57B8(v12);
  }

  return result;
}

google::protobuf::internal *sub_275F96D7C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v117 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v117) & 1) == 0)
  {
    while (2)
    {
      v7 = (v117 + 1);
      v8 = *v117;
      if (*v117 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v117, (v9 - 128));
          v117 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_187;
          }

          v7 = TagFallback;
          v8 = v14;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 8)
              {
                goto LABEL_159;
              }

              v5 |= 0x800u;
              v11 = (v7 + 1);
              v10 = *v7;
              if ((v10 & 0x8000000000000000) == 0)
              {
                goto LABEL_12;
              }

              v12 = *v11;
              v10 = (v12 << 7) + v10 - 128;
              if ((v12 & 0x80000000) == 0)
              {
                v11 = (v7 + 2);
LABEL_12:
                v117 = v11;
                *(a1 + 168) = v10 != 0;
                goto LABEL_152;
              }

              v105 = google::protobuf::internal::VarintParseSlow64(v7, v10);
              v117 = v105;
              *(a1 + 168) = v106 != 0;
              if (!v105)
              {
                goto LABEL_187;
              }

              goto LABEL_152;
            case 2u:
              if (v8 != 16)
              {
                goto LABEL_159;
              }

              v5 |= 0x1000u;
              v64 = (v7 + 1);
              v63 = *v7;
              if ((v63 & 0x8000000000000000) == 0)
              {
                goto LABEL_100;
              }

              v65 = *v64;
              v63 = (v65 << 7) + v63 - 128;
              if (v65 < 0)
              {
                v107 = google::protobuf::internal::VarintParseSlow64(v7, v63);
                v117 = v107;
                *(a1 + 169) = v108 != 0;
                if (!v107)
                {
                  goto LABEL_187;
                }
              }

              else
              {
                v64 = (v7 + 2);
LABEL_100:
                v117 = v64;
                *(a1 + 169) = v63 != 0;
              }

              goto LABEL_152;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_159;
              }

              v47 = v7 - 1;
              while (1)
              {
                v48 = (v47 + 1);
                v117 = (v47 + 1);
                v49 = *(a1 + 40);
                if (!v49)
                {
                  goto LABEL_71;
                }

                v55 = *(a1 + 32);
                v50 = *v49;
                if (v55 < *v49)
                {
                  *(a1 + 32) = v55 + 1;
                  v52 = *&v49[2 * v55 + 2];
                  goto LABEL_75;
                }

                if (v50 == *(a1 + 36))
                {
LABEL_71:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v49 = *(a1 + 40);
                  v50 = *v49;
                }

                *v49 = v50 + 1;
                v51 = MEMORY[0x277C92D60](*(a1 + 24));
                LODWORD(v52) = v51;
                v53 = *(a1 + 32);
                v54 = *(a1 + 40) + 8 * v53;
                *(a1 + 32) = v53 + 1;
                *(v54 + 8) = v51;
                v48 = v117;
LABEL_75:
                v47 = sub_27603450C(a3, v52, v48);
                v117 = v47;
                if (!v47)
                {
                  goto LABEL_187;
                }

                if (*a3 <= v47 || *v47 != 26)
                {
                  goto LABEL_152;
                }
              }

            case 4u:
              if (v8 != 34)
              {
                goto LABEL_159;
              }

              v70 = v7 - 1;
              while (1)
              {
                v71 = (v70 + 1);
                v117 = (v70 + 1);
                v72 = *(a1 + 64);
                if (!v72)
                {
                  goto LABEL_112;
                }

                v78 = *(a1 + 56);
                v73 = *v72;
                if (v78 < *v72)
                {
                  *(a1 + 56) = v78 + 1;
                  v75 = *&v72[2 * v78 + 2];
                  goto LABEL_116;
                }

                if (v73 == *(a1 + 60))
                {
LABEL_112:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v72 = *(a1 + 64);
                  v73 = *v72;
                }

                *v72 = v73 + 1;
                v74 = MEMORY[0x277C92D60](*(a1 + 48));
                LODWORD(v75) = v74;
                v76 = *(a1 + 56);
                v77 = *(a1 + 64) + 8 * v76;
                *(a1 + 56) = v76 + 1;
                *(v77 + 8) = v74;
                v71 = v117;
LABEL_116:
                v70 = sub_27603450C(a3, v75, v71);
                v117 = v70;
                if (!v70)
                {
                  goto LABEL_187;
                }

                if (*a3 <= v70 || *v70 != 34)
                {
                  goto LABEL_152;
                }
              }

            case 5u:
              if (v8 != 45)
              {
                goto LABEL_159;
              }

              v79 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x80u;
              *(a1 + 152) = v79;
              goto LABEL_128;
            case 6u:
              if (v8 != 53)
              {
                goto LABEL_159;
              }

              v59 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x100u;
              *(a1 + 156) = v59;
              goto LABEL_128;
            case 7u:
              if (v8 != 61)
              {
                goto LABEL_159;
              }

              v66 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x200u;
              *(a1 + 160) = v66;
              goto LABEL_128;
            case 8u:
              if (v8 != 69)
              {
                goto LABEL_159;
              }

              v67 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x400u;
              *(a1 + 164) = v67;
              goto LABEL_128;
            case 9u:
              if (v8 != 77)
              {
                goto LABEL_159;
              }

              v81 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x8000u;
              *(a1 + 172) = v81;
              goto LABEL_128;
            case 0xAu:
              if (v8 != 85)
              {
                goto LABEL_159;
              }

              v80 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x10000u;
              *(a1 + 176) = v80;
              goto LABEL_128;
            case 0xBu:
              if (v8 != 93)
              {
                goto LABEL_159;
              }

              v35 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x20000u;
              *(a1 + 180) = v35;
              goto LABEL_128;
            case 0xCu:
              if (v8 != 101)
              {
                goto LABEL_159;
              }

              v60 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x40000u;
              *(a1 + 184) = v60;
              goto LABEL_128;
            case 0xDu:
              if (v8 != 104)
              {
                goto LABEL_159;
              }

              v5 |= 0x2000u;
              v42 = (v7 + 1);
              v41 = *v7;
              if ((v41 & 0x8000000000000000) == 0)
              {
                goto LABEL_62;
              }

              v43 = *v42;
              v41 = (v43 << 7) + v41 - 128;
              if (v43 < 0)
              {
                v101 = google::protobuf::internal::VarintParseSlow64(v7, v41);
                v117 = v101;
                *(a1 + 170) = v102 != 0;
                if (!v101)
                {
                  goto LABEL_187;
                }
              }

              else
              {
                v42 = (v7 + 2);
LABEL_62:
                v117 = v42;
                *(a1 + 170) = v41 != 0;
              }

              goto LABEL_152;
            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_159;
              }

              v21 = v7 - 1;
              break;
            case 0xFu:
              if (v8 != 125)
              {
                goto LABEL_159;
              }

              v68 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x80000u;
              *(a1 + 188) = v68;
              goto LABEL_128;
            case 0x10u:
              if (v8 != 133)
              {
                goto LABEL_159;
              }

              v69 = *v7;
              v34 = (v7 + 4);
              v5 |= 0x100000u;
              *(a1 + 192) = v69;
LABEL_128:
              v117 = v34;
              goto LABEL_152;
            case 0x11u:
              if (v8 != 136)
              {
                goto LABEL_159;
              }

              v5 |= 0x4000u;
              v86 = (v7 + 1);
              v85 = *v7;
              if ((v85 & 0x8000000000000000) == 0)
              {
                goto LABEL_138;
              }

              v87 = *v86;
              v85 = (v87 << 7) + v85 - 128;
              if (v87 < 0)
              {
                v111 = google::protobuf::internal::VarintParseSlow64(v7, v85);
                v117 = v111;
                *(a1 + 171) = v112 != 0;
                if (!v111)
                {
                  goto LABEL_187;
                }
              }

              else
              {
                v86 = (v7 + 2);
LABEL_138:
                v117 = v86;
                *(a1 + 171) = v85 != 0;
              }

              goto LABEL_152;
            case 0x12u:
              if (v8 != 144)
              {
                goto LABEL_159;
              }

              v5 |= 0x800000u;
              v83 = (v7 + 1);
              v82 = *v7;
              if ((v82 & 0x8000000000000000) == 0)
              {
                goto LABEL_133;
              }

              v84 = *v83;
              v82 = (v84 << 7) + v82 - 128;
              if (v84 < 0)
              {
                v109 = google::protobuf::internal::VarintParseSlow64(v7, v82);
                v117 = v109;
                *(a1 + 204) = v110 != 0;
                if (!v109)
                {
                  goto LABEL_187;
                }
              }

              else
              {
                v83 = (v7 + 2);
LABEL_133:
                v117 = v83;
                *(a1 + 204) = v82 != 0;
              }

              goto LABEL_152;
            case 0x13u:
              if (v8 != 152)
              {
                goto LABEL_159;
              }

              v5 |= 0x1000000u;
              v16 = (v7 + 1);
              v15 = *v7;
              if ((v15 & 0x8000000000000000) == 0)
              {
                goto LABEL_19;
              }

              v17 = *v16;
              v15 = (v17 << 7) + v15 - 128;
              if (v17 < 0)
              {
                v97 = google::protobuf::internal::VarintParseSlow64(v7, v15);
                v117 = v97;
                *(a1 + 205) = v98 != 0;
                if (!v97)
                {
                  goto LABEL_187;
                }
              }

              else
              {
                v16 = (v7 + 2);
LABEL_19:
                v117 = v16;
                *(a1 + 205) = v15 != 0;
              }

              goto LABEL_152;
            case 0x14u:
              if (v8 != 160)
              {
                goto LABEL_159;
              }

              v5 |= 0x200000u;
              v44 = (v7 + 1);
              LODWORD(v45) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_67;
              }

              v46 = *v44;
              v45 = (v45 + (v46 << 7) - 128);
              if (v46 < 0)
              {
                v103 = google::protobuf::internal::VarintParseSlow32(v7, v45);
                v117 = v103;
                *(a1 + 196) = v104;
                if (!v103)
                {
                  goto LABEL_187;
                }
              }

              else
              {
                v44 = (v7 + 2);
LABEL_67:
                v117 = v44;
                *(a1 + 196) = v45;
              }

              goto LABEL_152;
            case 0x15u:
              if (v8 != 168)
              {
                goto LABEL_159;
              }

              v5 |= 0x400000u;
              v88 = (v7 + 1);
              LODWORD(v89) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_143;
              }

              v90 = *v88;
              v89 = (v89 + (v90 << 7) - 128);
              if (v90 < 0)
              {
                v113 = google::protobuf::internal::VarintParseSlow32(v7, v89);
                v117 = v113;
                *(a1 + 200) = v114;
                if (!v113)
                {
                  goto LABEL_187;
                }
              }

              else
              {
                v88 = (v7 + 2);
LABEL_143:
                v117 = v88;
                *(a1 + 200) = v89;
              }

              goto LABEL_152;
            case 0x16u:
              if (v8 != 176)
              {
                goto LABEL_159;
              }

              v5 |= 0x4000000u;
              v18 = (v7 + 1);
              LODWORD(v19) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_24;
              }

              v20 = *v18;
              v19 = (v19 + (v20 << 7) - 128);
              if (v20 < 0)
              {
                v99 = google::protobuf::internal::VarintParseSlow32(v7, v19);
                v117 = v99;
                *(a1 + 208) = v100;
                if (!v99)
                {
                  goto LABEL_187;
                }
              }

              else
              {
                v18 = (v7 + 2);
LABEL_24:
                v117 = v18;
                *(a1 + 208) = v19;
              }

              goto LABEL_152;
            case 0x17u:
              if (v8 != 186)
              {
                goto LABEL_159;
              }

              *(a1 + 16) |= 2u;
              v31 = *(a1 + 104);
              if (v31)
              {
                goto LABEL_150;
              }

              v39 = *(a1 + 8);
              if (v39)
              {
                v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
              }

              v40 = MEMORY[0x277C92D60](v39);
              LODWORD(v31) = v40;
              *(a1 + 104) = v40;
              goto LABEL_149;
            case 0x18u:
              if (v8 != 194)
              {
                goto LABEL_159;
              }

              *(a1 + 16) |= 4u;
              v31 = *(a1 + 112);
              if (v31)
              {
                goto LABEL_150;
              }

              v32 = *(a1 + 8);
              if (v32)
              {
                v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
              }

              v33 = MEMORY[0x277C92D60](v32);
              LODWORD(v31) = v33;
              *(a1 + 112) = v33;
              goto LABEL_149;
            case 0x19u:
              if (v8 != 202)
              {
                goto LABEL_159;
              }

              *(a1 + 16) |= 8u;
              v31 = *(a1 + 120);
              if (v31)
              {
                goto LABEL_150;
              }

              v61 = *(a1 + 8);
              if (v61)
              {
                v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
              }

              v62 = MEMORY[0x277C92D60](v61);
              LODWORD(v31) = v62;
              *(a1 + 120) = v62;
              goto LABEL_149;
            case 0x1Au:
              if (v8 != 210)
              {
                goto LABEL_159;
              }

              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v30 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_151;
            case 0x1Cu:
              if (v8 != 224)
              {
                goto LABEL_159;
              }

              v5 |= 0x2000000u;
              v94 = (v7 + 1);
              v93 = *v7;
              if ((v93 & 0x8000000000000000) == 0)
              {
                goto LABEL_158;
              }

              v95 = *v94;
              v93 = (v95 << 7) + v93 - 128;
              if (v95 < 0)
              {
                v115 = google::protobuf::internal::VarintParseSlow64(v7, v93);
                v117 = v115;
                *(a1 + 206) = v116 != 0;
                if (!v115)
                {
                  goto LABEL_187;
                }
              }

              else
              {
                v94 = (v7 + 2);
LABEL_158:
                v117 = v94;
                *(a1 + 206) = v93 != 0;
              }

              goto LABEL_152;
            case 0x1Du:
              if (v8 != 234)
              {
                goto LABEL_159;
              }

              *(a1 + 16) |= 0x10u;
              v31 = *(a1 + 128);
              if (v31)
              {
                goto LABEL_150;
              }

              v91 = *(a1 + 8);
              if (v91)
              {
                v91 = *(v91 & 0xFFFFFFFFFFFFFFFELL);
              }

              v92 = MEMORY[0x277C92D60](v91);
              LODWORD(v31) = v92;
              *(a1 + 128) = v92;
LABEL_149:
              v7 = v117;
LABEL_150:
              v30 = sub_27603450C(a3, v31, v7);
              goto LABEL_151;
            case 0x1Eu:
              if (v8 != 242)
              {
                goto LABEL_159;
              }

              *(a1 + 16) |= 0x20u;
              v36 = *(a1 + 136);
              if (!v36)
              {
                v37 = *(a1 + 8);
                if (v37)
                {
                  v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
                }

                v38 = MEMORY[0x277C92CE0](v37);
                LODWORD(v36) = v38;
                *(a1 + 136) = v38;
                v7 = v117;
              }

              v30 = sub_276034DFC(a3, v36, v7);
              goto LABEL_151;
            case 0x1Fu:
              if (v8 != 250)
              {
                goto LABEL_159;
              }

              *(a1 + 16) |= 0x40u;
              v56 = *(a1 + 144);
              if (!v56)
              {
                v57 = *(a1 + 8);
                if (v57)
                {
                  v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
                }

                v58 = MEMORY[0x277C92D20](v57);
                LODWORD(v56) = v58;
                *(a1 + 144) = v58;
                v7 = v117;
              }

              v30 = sub_276034ECC(a3, v56, v7);
              goto LABEL_151;
            default:
LABEL_159:
              if (v8)
              {
                v96 = (v8 & 7) == 4;
              }

              else
              {
                v96 = 1;
              }

              if (v96)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_275FB5524((a1 + 8));
              }

              v30 = google::protobuf::internal::UnknownFieldParse();
LABEL_151:
              v117 = v30;
              if (!v30)
              {
LABEL_187:
                v117 = 0;
                goto LABEL_2;
              }

LABEL_152:
              if (sub_275FB1588(a3, &v117))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v22 = (v21 + 1);
            v117 = (v21 + 1);
            v23 = *(a1 + 88);
            if (!v23)
            {
              goto LABEL_28;
            }

            v29 = *(a1 + 80);
            v24 = *v23;
            if (v29 < *v23)
            {
              *(a1 + 80) = v29 + 1;
              v26 = *&v23[2 * v29 + 2];
              goto LABEL_32;
            }

            if (v24 == *(a1 + 84))
            {
LABEL_28:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
              v23 = *(a1 + 88);
              v24 = *v23;
            }

            *v23 = v24 + 1;
            v25 = MEMORY[0x277C92D60](*(a1 + 72));
            LODWORD(v26) = v25;
            v27 = *(a1 + 80);
            v28 = *(a1 + 88) + 8 * v27;
            *(a1 + 80) = v27 + 1;
            *(v28 + 8) = v25;
            v22 = v117;
LABEL_32:
            v21 = sub_27603450C(a3, v26, v22);
            v117 = v21;
            if (!v21)
            {
              goto LABEL_187;
            }

            if (*a3 <= v21 || *v21 != 114)
            {
              goto LABEL_152;
            }
          }
        }

        v7 = (v117 + 2);
      }

      break;
    }

    v117 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v117;
}

unsigned __int8 *sub_275F978C4(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 168);
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
  }

  if ((v6 & 0x1000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(a1 + 169);
    *v4 = 16;
    v4[1] = v8;
    v4 += 2;
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        v4[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = v4 + 3;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          v4[2] = v14;
          v13 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v12;
        v13 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v19 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 34;
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

      v4 = TSP::Reference::_InternalSerialize(v19, v21, a3);
    }
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(a1 + 152);
    *v4 = 45;
    *(v4 + 1) = v25;
    v4 += 5;
    if ((v6 & 0x100) == 0)
    {
LABEL_35:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_49;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_35;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(a1 + 156);
  *v4 = 53;
  *(v4 + 1) = v26;
  v4 += 5;
  if ((v6 & 0x200) == 0)
  {
LABEL_36:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_52;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(a1 + 160);
  *v4 = 61;
  *(v4 + 1) = v27;
  v4 += 5;
  if ((v6 & 0x400) == 0)
  {
LABEL_37:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v28 = *(a1 + 164);
  *v4 = 69;
  *(v4 + 1) = v28;
  v4 += 5;
  if ((v6 & 0x8000) == 0)
  {
LABEL_38:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_58;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(a1 + 172);
  *v4 = 77;
  *(v4 + 1) = v29;
  v4 += 5;
  if ((v6 & 0x10000) == 0)
  {
LABEL_39:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_61;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v30 = *(a1 + 176);
  *v4 = 85;
  *(v4 + 1) = v30;
  v4 += 5;
  if ((v6 & 0x20000) == 0)
  {
LABEL_40:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_64;
  }

LABEL_61:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v31 = *(a1 + 180);
  *v4 = 93;
  *(v4 + 1) = v31;
  v4 += 5;
  if ((v6 & 0x40000) == 0)
  {
LABEL_41:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(a1 + 184);
  *v4 = 101;
  *(v4 + 1) = v32;
  v4 += 5;
  if ((v6 & 0x2000) != 0)
  {
LABEL_67:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v33 = *(a1 + 170);
    *v4 = 104;
    v4[1] = v33;
    v4 += 2;
  }

LABEL_70:
  v34 = *(a1 + 80);
  if (v34)
  {
    for (k = 0; k != v34; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v36 = *(*(a1 + 88) + 8 * k + 8);
      *v4 = 114;
      v37 = *(v36 + 5);
      if (v37 > 0x7F)
      {
        v4[1] = v37 | 0x80;
        v39 = v37 >> 7;
        if (v37 >> 14)
        {
          v38 = v4 + 3;
          do
          {
            *(v38 - 1) = v39 | 0x80;
            v40 = v39 >> 7;
            ++v38;
            v41 = v39 >> 14;
            v39 >>= 7;
          }

          while (v41);
          *(v38 - 1) = v40;
        }

        else
        {
          v4[2] = v39;
          v38 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v37;
        v38 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v36, v38, a3);
    }
  }

  if ((v6 & 0x80000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v42 = *(a1 + 188);
    *v4 = 125;
    *(v4 + 1) = v42;
    v4 += 5;
    if ((v6 & 0x100000) == 0)
    {
LABEL_84:
      if ((v6 & 0x4000) == 0)
      {
        goto LABEL_85;
      }

      goto LABEL_105;
    }
  }

  else if ((v6 & 0x100000) == 0)
  {
    goto LABEL_84;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(a1 + 192);
  *v4 = 389;
  *(v4 + 2) = v43;
  v4 += 6;
  if ((v6 & 0x4000) == 0)
  {
LABEL_85:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_108;
  }

LABEL_105:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v44 = *(a1 + 171);
  *v4 = 392;
  v4[2] = v44;
  v4 += 3;
  if ((v6 & 0x800000) == 0)
  {
LABEL_86:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(a1 + 204);
  *v4 = 400;
  v4[2] = v45;
  v4 += 3;
  if ((v6 & 0x1000000) == 0)
  {
LABEL_87:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_88;
    }

LABEL_114:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v47 = *(a1 + 196);
    *v4 = 416;
    if (v47 > 0x7F)
    {
      v4[2] = v47 | 0x80;
      v48 = v47 >> 7;
      if (v47 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v48 | 0x80;
          v49 = v48 >> 7;
          ++v4;
          v50 = v48 >> 14;
          v48 >>= 7;
        }

        while (v50);
        *(v4 - 1) = v49;
        if ((v6 & 0x400000) != 0)
        {
          goto LABEL_125;
        }
      }

      else
      {
        v4[3] = v48;
        v4 += 4;
        if ((v6 & 0x400000) != 0)
        {
          goto LABEL_125;
        }
      }
    }

    else
    {
      v4[2] = v47;
      v4 += 3;
      if ((v6 & 0x400000) != 0)
      {
        goto LABEL_125;
      }
    }

LABEL_89:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_90;
    }

LABEL_136:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v55 = *(a1 + 208);
    *v4 = 432;
    if (v55 > 0x7F)
    {
      v4[2] = v55 | 0x80;
      v56 = v55 >> 7;
      if (v55 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v56 | 0x80;
          v57 = v56 >> 7;
          ++v4;
          v58 = v56 >> 14;
          v56 >>= 7;
        }

        while (v58);
        *(v4 - 1) = v57;
        if ((v6 & 2) != 0)
        {
          goto LABEL_147;
        }
      }

      else
      {
        v4[3] = v56;
        v4 += 4;
        if ((v6 & 2) != 0)
        {
          goto LABEL_147;
        }
      }
    }

    else
    {
      v4[2] = v55;
      v4 += 3;
      if ((v6 & 2) != 0)
      {
        goto LABEL_147;
      }
    }

LABEL_91:
    if ((v6 & 4) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_157;
  }

LABEL_111:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v46 = *(a1 + 205);
  *v4 = 408;
  v4[2] = v46;
  v4 += 3;
  if ((v6 & 0x200000) != 0)
  {
    goto LABEL_114;
  }

LABEL_88:
  if ((v6 & 0x400000) == 0)
  {
    goto LABEL_89;
  }

LABEL_125:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v51 = *(a1 + 200);
  *v4 = 424;
  if (v51 > 0x7F)
  {
    v4[2] = v51 | 0x80;
    v52 = v51 >> 7;
    if (v51 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v52 | 0x80;
        v53 = v52 >> 7;
        ++v4;
        v54 = v52 >> 14;
        v52 >>= 7;
      }

      while (v54);
      *(v4 - 1) = v53;
      if ((v6 & 0x4000000) != 0)
      {
        goto LABEL_136;
      }
    }

    else
    {
      v4[3] = v52;
      v4 += 4;
      if ((v6 & 0x4000000) != 0)
      {
        goto LABEL_136;
      }
    }
  }

  else
  {
    v4[2] = v51;
    v4 += 3;
    if ((v6 & 0x4000000) != 0)
    {
      goto LABEL_136;
    }
  }

LABEL_90:
  if ((v6 & 2) == 0)
  {
    goto LABEL_91;
  }

LABEL_147:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v59 = *(a1 + 104);
  *v4 = 442;
  v60 = *(v59 + 5);
  if (v60 > 0x7F)
  {
    v4[2] = v60 | 0x80;
    v62 = v60 >> 7;
    if (v60 >> 14)
    {
      v61 = v4 + 4;
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
      v4[3] = v62;
      v61 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v60;
    v61 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v59, v61, a3);
  if ((v6 & 4) == 0)
  {
LABEL_92:
    if ((v6 & 8) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_167;
  }

LABEL_157:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v65 = *(a1 + 112);
  *v4 = 450;
  v66 = *(v65 + 5);
  if (v66 > 0x7F)
  {
    v4[2] = v66 | 0x80;
    v68 = v66 >> 7;
    if (v66 >> 14)
    {
      v67 = v4 + 4;
      do
      {
        *(v67 - 1) = v68 | 0x80;
        v69 = v68 >> 7;
        ++v67;
        v70 = v68 >> 14;
        v68 >>= 7;
      }

      while (v70);
      *(v67 - 1) = v69;
    }

    else
    {
      v4[3] = v68;
      v67 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v66;
    v67 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v65, v67, a3);
  if ((v6 & 8) == 0)
  {
LABEL_93:
    if ((v6 & 1) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_177;
  }

LABEL_167:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v71 = *(a1 + 120);
  *v4 = 458;
  v72 = *(v71 + 5);
  if (v72 > 0x7F)
  {
    v4[2] = v72 | 0x80;
    v74 = v72 >> 7;
    if (v72 >> 14)
    {
      v73 = v4 + 4;
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
      v4[3] = v74;
      v73 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v72;
    v73 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v71, v73, a3);
  if ((v6 & 1) == 0)
  {
LABEL_94:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_178;
  }

LABEL_177:
  v4 = sub_275F8C698(a3, 26, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_95:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_96;
    }

    goto LABEL_181;
  }

LABEL_178:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v77 = *(a1 + 206);
  *v4 = 480;
  v4[2] = v77;
  v4 += 3;
  if ((v6 & 0x10) == 0)
  {
LABEL_96:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_191;
  }

LABEL_181:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v78 = *(a1 + 128);
  *v4 = 490;
  v79 = *(v78 + 5);
  if (v79 > 0x7F)
  {
    v4[2] = v79 | 0x80;
    v81 = v79 >> 7;
    if (v79 >> 14)
    {
      v80 = v4 + 4;
      do
      {
        *(v80 - 1) = v81 | 0x80;
        v82 = v81 >> 7;
        ++v80;
        v83 = v81 >> 14;
        v81 >>= 7;
      }

      while (v83);
      *(v80 - 1) = v82;
    }

    else
    {
      v4[3] = v81;
      v80 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v79;
    v80 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v78, v80, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_97:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_211;
    }

    goto LABEL_201;
  }

LABEL_191:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v84 = *(a1 + 136);
  *v4 = 498;
  v85 = *(v84 + 11);
  if (v85 > 0x7F)
  {
    v4[2] = v85 | 0x80;
    v87 = v85 >> 7;
    if (v85 >> 14)
    {
      v86 = v4 + 4;
      do
      {
        *(v86 - 1) = v87 | 0x80;
        v88 = v87 >> 7;
        ++v86;
        v89 = v87 >> 14;
        v87 >>= 7;
      }

      while (v89);
      *(v86 - 1) = v88;
    }

    else
    {
      v4[3] = v87;
      v86 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v85;
    v86 = v4 + 3;
  }

  v4 = TSD::FillArchive::_InternalSerialize(v84, v86, a3);
  if ((v6 & 0x40) != 0)
  {
LABEL_201:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v90 = *(a1 + 144);
    *v4 = 506;
    v91 = *(v90 + 5);
    if (v91 > 0x7F)
    {
      v4[2] = v91 | 0x80;
      v93 = v91 >> 7;
      if (v91 >> 14)
      {
        v92 = v4 + 4;
        do
        {
          *(v92 - 1) = v93 | 0x80;
          v94 = v93 >> 7;
          ++v92;
          v95 = v93 >> 14;
          v93 >>= 7;
        }

        while (v95);
        *(v92 - 1) = v94;
      }

      else
      {
        v4[3] = v93;
        v92 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v91;
      v92 = v4 + 3;
    }

    v4 = TSP::UUID::_InternalSerialize(v90, v92, a3);
  }

LABEL_211:
  v96 = *(a1 + 8);
  if ((v96 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v96 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_275F984E0(uint64_t a1)
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

  v22 = *(a1 + 16);
  if (v22)
  {
    if (v22)
    {
      v29 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
      v30 = *(v29 + 23);
      v31 = *(v29 + 8);
      if ((v30 & 0x80u) == 0)
      {
        v31 = v30;
      }

      v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v22 & 2) == 0)
      {
LABEL_24:
        if ((v22 & 4) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_76;
      }
    }

    else if ((v22 & 2) == 0)
    {
      goto LABEL_24;
    }

    v32 = TSP::Reference::ByteSizeLong(*(a1 + 104));
    v16 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v22 & 4) == 0)
    {
LABEL_25:
      if ((v22 & 8) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_77;
    }

LABEL_76:
    v33 = TSP::Reference::ByteSizeLong(*(a1 + 112));
    v16 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v22 & 8) == 0)
    {
LABEL_26:
      if ((v22 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_78;
    }

LABEL_77:
    v34 = TSP::Reference::ByteSizeLong(*(a1 + 120));
    v16 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v22 & 0x10) == 0)
    {
LABEL_27:
      if ((v22 & 0x20) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_79;
    }

LABEL_78:
    v35 = TSP::Reference::ByteSizeLong(*(a1 + 128));
    v16 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v22 & 0x20) == 0)
    {
LABEL_28:
      if ((v22 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_79:
    v36 = TSD::FillArchive::ByteSizeLong(*(a1 + 136));
    v16 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v22 & 0x40) == 0)
    {
LABEL_30:
      if ((v22 & 0x80) != 0)
      {
        v16 += 5;
      }

      goto LABEL_32;
    }

LABEL_29:
    v23 = TSP::UUID::ByteSizeLong(*(a1 + 144));
    v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
    goto LABEL_30;
  }

LABEL_32:
  if ((v22 & 0xFF00) != 0)
  {
    v24 = v16 + 5;
    if ((v22 & 0x100) == 0)
    {
      v24 = v16;
    }

    if ((v22 & 0x200) != 0)
    {
      v24 += 5;
    }

    if ((v22 & 0x400) != 0)
    {
      v24 += 5;
    }

    v25 = v24 + ((v22 >> 11) & 2) + ((v22 >> 10) & 2) + ((v22 >> 12) & 2);
    if ((v22 & 0x4000) != 0)
    {
      v25 += 3;
    }

    if ((v22 & 0x8000) != 0)
    {
      v16 = v25 + 5;
    }

    else
    {
      v16 = v25;
    }
  }

  if ((v22 & 0xFF0000) != 0)
  {
    v26 = v16 + 5;
    if ((v22 & 0x10000) == 0)
    {
      v26 = v16;
    }

    if ((v22 & 0x20000) != 0)
    {
      v26 += 5;
    }

    if ((v22 & 0x40000) != 0)
    {
      v26 += 5;
    }

    if ((v22 & 0x80000) != 0)
    {
      v26 += 5;
    }

    if ((v22 & 0x100000) != 0)
    {
      v26 += 6;
    }

    if ((v22 & 0x200000) != 0)
    {
      v26 += ((9 * (__clz(*(a1 + 196) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v22 & 0x400000) != 0)
    {
      v26 += ((9 * (__clz(*(a1 + 200) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v22 & 0x800000) != 0)
    {
      v16 = v26 + 3;
    }

    else
    {
      v16 = v26;
    }
  }

  if ((v22 & 0x7000000) != 0)
  {
    v27 = v16 + 3;
    if ((v22 & 0x1000000) == 0)
    {
      v27 = v16;
    }

    if ((v22 & 0x2000000) != 0)
    {
      v16 = v27 + 3;
    }

    else
    {
      v16 = v27;
    }

    if ((v22 & 0x4000000) != 0)
    {
      v16 += ((9 * (__clz(*(a1 + 208) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v16;
    return v16;
  }
}

uint64_t sub_275F98920(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500808, 0);
  if (v4)
  {

    return sub_275F989C8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F989C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_275FB5808(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_275FB5808(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    result = sub_275FB5808(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 16);
  if (v20)
  {
    if (v20)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v21 = MEMORY[0x277D80A18];
    if ((v20 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v22 = *(v3 + 104);
      if (!v22)
      {
        v23 = *(v3 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x277C92D60](v23);
        *(v3 + 104) = v22;
      }

      if (*(a2 + 104))
      {
        v24 = *(a2 + 104);
      }

      else
      {
        v24 = v21;
      }

      result = TSP::Reference::MergeFrom(v22, v24);
      if ((v20 & 4) == 0)
      {
LABEL_17:
        if ((v20 & 8) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_69;
      }
    }

    else if ((v20 & 4) == 0)
    {
      goto LABEL_17;
    }

    *(v3 + 16) |= 4u;
    v25 = *(v3 + 112);
    if (!v25)
    {
      v26 = *(v3 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x277C92D60](v26);
      *(v3 + 112) = v25;
    }

    if (*(a2 + 112))
    {
      v27 = *(a2 + 112);
    }

    else
    {
      v27 = v21;
    }

    result = TSP::Reference::MergeFrom(v25, v27);
    if ((v20 & 8) == 0)
    {
LABEL_18:
      if ((v20 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_77;
    }

LABEL_69:
    *(v3 + 16) |= 8u;
    v28 = *(v3 + 120);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277C92D60](v29);
      *(v3 + 120) = v28;
    }

    if (*(a2 + 120))
    {
      v30 = *(a2 + 120);
    }

    else
    {
      v30 = v21;
    }

    result = TSP::Reference::MergeFrom(v28, v30);
    if ((v20 & 0x10) == 0)
    {
LABEL_19:
      if ((v20 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_85;
    }

LABEL_77:
    *(v3 + 16) |= 0x10u;
    v31 = *(v3 + 128);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C92D60](v32);
      *(v3 + 128) = v31;
    }

    if (*(a2 + 128))
    {
      v33 = *(a2 + 128);
    }

    else
    {
      v33 = v21;
    }

    result = TSP::Reference::MergeFrom(v31, v33);
    if ((v20 & 0x20) == 0)
    {
LABEL_20:
      if ((v20 & 0x40) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_93;
    }

LABEL_85:
    *(v3 + 16) |= 0x20u;
    v34 = *(v3 + 136);
    if (!v34)
    {
      v35 = *(v3 + 8);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = MEMORY[0x277C92CE0](v35);
      *(v3 + 136) = v34;
    }

    if (*(a2 + 136))
    {
      v36 = *(a2 + 136);
    }

    else
    {
      v36 = MEMORY[0x277D80488];
    }

    result = TSD::FillArchive::MergeFrom(v34, v36);
    if ((v20 & 0x40) == 0)
    {
LABEL_21:
      if ((v20 & 0x80) == 0)
      {
LABEL_23:
        *(v3 + 16) |= v20;
        goto LABEL_24;
      }

LABEL_22:
      *(v3 + 152) = *(a2 + 152);
      goto LABEL_23;
    }

LABEL_93:
    *(v3 + 16) |= 0x40u;
    v37 = *(v3 + 144);
    if (!v37)
    {
      v38 = *(v3 + 8);
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      v37 = MEMORY[0x277C92D20](v38);
      *(v3 + 144) = v37;
    }

    if (*(a2 + 144))
    {
      v39 = *(a2 + 144);
    }

    else
    {
      v39 = MEMORY[0x277D809E0];
    }

    result = TSP::UUID::MergeFrom(v37, v39);
    if ((v20 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  if ((v20 & 0xFF00) == 0)
  {
    goto LABEL_35;
  }

  if ((v20 & 0x100) != 0)
  {
    *(v3 + 156) = *(a2 + 156);
    if ((v20 & 0x200) == 0)
    {
LABEL_27:
      if ((v20 & 0x400) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_104;
    }
  }

  else if ((v20 & 0x200) == 0)
  {
    goto LABEL_27;
  }

  *(v3 + 160) = *(a2 + 160);
  if ((v20 & 0x400) == 0)
  {
LABEL_28:
    if ((v20 & 0x800) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_105;
  }

LABEL_104:
  *(v3 + 164) = *(a2 + 164);
  if ((v20 & 0x800) == 0)
  {
LABEL_29:
    if ((v20 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(v3 + 168) = *(a2 + 168);
  if ((v20 & 0x1000) == 0)
  {
LABEL_30:
    if ((v20 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(v3 + 169) = *(a2 + 169);
  if ((v20 & 0x2000) == 0)
  {
LABEL_31:
    if ((v20 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

LABEL_108:
    *(v3 + 171) = *(a2 + 171);
    if ((v20 & 0x8000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_107:
  *(v3 + 170) = *(a2 + 170);
  if ((v20 & 0x4000) != 0)
  {
    goto LABEL_108;
  }

LABEL_32:
  if ((v20 & 0x8000) != 0)
  {
LABEL_33:
    *(v3 + 172) = *(a2 + 172);
  }

LABEL_34:
  *(v3 + 16) |= v20;
LABEL_35:
  if ((v20 & 0xFF0000) == 0)
  {
    goto LABEL_46;
  }

  if ((v20 & 0x10000) != 0)
  {
    *(v3 + 176) = *(a2 + 176);
    if ((v20 & 0x20000) == 0)
    {
LABEL_38:
      if ((v20 & 0x40000) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_112;
    }
  }

  else if ((v20 & 0x20000) == 0)
  {
    goto LABEL_38;
  }

  *(v3 + 180) = *(a2 + 180);
  if ((v20 & 0x40000) == 0)
  {
LABEL_39:
    if ((v20 & 0x80000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_113;
  }

LABEL_112:
  *(v3 + 184) = *(a2 + 184);
  if ((v20 & 0x80000) == 0)
  {
LABEL_40:
    if ((v20 & 0x100000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(v3 + 188) = *(a2 + 188);
  if ((v20 & 0x100000) == 0)
  {
LABEL_41:
    if ((v20 & 0x200000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(v3 + 192) = *(a2 + 192);
  if ((v20 & 0x200000) == 0)
  {
LABEL_42:
    if ((v20 & 0x400000) == 0)
    {
      goto LABEL_43;
    }

LABEL_116:
    *(v3 + 200) = *(a2 + 200);
    if ((v20 & 0x800000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_115:
  *(v3 + 196) = *(a2 + 196);
  if ((v20 & 0x400000) != 0)
  {
    goto LABEL_116;
  }

LABEL_43:
  if ((v20 & 0x800000) != 0)
  {
LABEL_44:
    *(v3 + 204) = *(a2 + 204);
  }

LABEL_45:
  *(v3 + 16) |= v20;
LABEL_46:
  if ((v20 & 0x7000000) == 0)
  {
    return result;
  }

  if ((v20 & 0x1000000) == 0)
  {
    if ((v20 & 0x2000000) == 0)
    {
      goto LABEL_49;
    }

LABEL_119:
    *(v3 + 206) = *(a2 + 206);
    if ((v20 & 0x4000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  *(v3 + 205) = *(a2 + 205);
  if ((v20 & 0x2000000) != 0)
  {
    goto LABEL_119;
  }

LABEL_49:
  if ((v20 & 0x4000000) != 0)
  {
LABEL_50:
    *(v3 + 208) = *(a2 + 208);
  }

LABEL_51:
  *(v3 + 16) |= v20;
  return result;
}

uint64_t *sub_275F98EB0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F96BD0(result);

    return sub_275F98920(v4, a2);
  }

  return result;
}

uint64_t sub_275F98EFC(uint64_t a1)
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

  v12 = *(a1 + 16);
  if ((v12 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 120));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 128));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 0x20) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 136));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 0x40) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 144));
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_275F9907C(uint64_t a1)
{
  sub_275F8A514((a1 + 8));

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F990D4(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_275FB57B8(result);
  }

  return result;
}

google::protobuf::internal *sub_275F990F8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v17) & 1) == 0)
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
        goto LABEL_29;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 17)
        {
          v13 = *v7;
          v12 = (v7 + 8);
          v5 |= 2u;
          *(a1 + 32) = v13;
LABEL_23:
          v17 = v12;
          goto LABEL_24;
        }
      }

      else if (v8 >> 3 == 1 && v8 == 9)
      {
        v14 = *v7;
        v12 = (v7 + 8);
        v5 |= 1u;
        *(a1 + 24) = v14;
        goto LABEL_23;
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
        sub_275FB5524((a1 + 8));
      }

      v17 = google::protobuf::internal::UnknownFieldParse();
      if (!v17)
      {
LABEL_29:
        v17 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_275FB1588(a3, &v17))
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

unint64_t sub_275F99264(uint64_t a1, unint64_t a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(a1 + 32);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v9 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F99334(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if ((~v1 & 3) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 18;
  }

  if (*(a1 + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_275F99384(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500820, 0);
  if (v4)
  {

    return sub_275F9942C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F9942C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 24);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return result;
}

uint64_t sub_275F99498(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F990D4(result);

    return sub_275F99384(v4, a2);
  }

  return result;
}

void sub_275F99560(uint64_t a1)
{
  sub_275F8A514((a1 + 8));

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F995B8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_275FB57B8(result);
  }

  return result;
}

google::protobuf::internal *sub_275F995DC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v17) & 1) == 0)
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
        goto LABEL_29;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 17)
        {
          v13 = *v7;
          v12 = (v7 + 8);
          v5 |= 2u;
          *(a1 + 32) = v13;
LABEL_23:
          v17 = v12;
          goto LABEL_24;
        }
      }

      else if (v8 >> 3 == 1 && v8 == 9)
      {
        v14 = *v7;
        v12 = (v7 + 8);
        v5 |= 1u;
        *(a1 + 24) = v14;
        goto LABEL_23;
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
        sub_275FB5524((a1 + 8));
      }

      v17 = google::protobuf::internal::UnknownFieldParse();
      if (!v17)
      {
LABEL_29:
        v17 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_275FB1588(a3, &v17))
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

unint64_t sub_275F99748(uint64_t a1, unint64_t a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(a1 + 32);
    *a2 = 17;
    *(a2 + 1) = v8;
    a2 += 9;
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v9 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F99818(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if ((~v1 & 3) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 18;
  }

  if (*(a1 + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(a1 + 20) = v3;
  return v3;
}

uint64_t sub_275F99868(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500838, 0);
  if (v4)
  {

    return sub_275F9942C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F99910(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F995B8(result);

    return sub_275F99868(v4, a2);
  }

  return result;
}

uint64_t *sub_275F999A8(uint64_t *a1)
{
  sub_275F999DC(a1);
  sub_275F8A514(a1 + 1);
  return a1;
}

uint64_t *sub_275F999DC(uint64_t *result)
{
  if (result != &qword_2812F8B38)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C93390]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Point::~Point(v3);
      MEMORY[0x277C93390]();
    }

    result = v1[5];
    if (result)
    {
      v4 = MEMORY[0x277C92AB0]();
      result = MEMORY[0x277C93390](v4, 0x10A1C40290C9B23);
    }

    v5 = v1[6];
    if (v5)
    {
      sub_275F8A514((v5 + 8));

      JUMPOUT(0x277C93390);
    }
  }

  return result;
}

void sub_275F99AB4(uint64_t *a1)
{
  sub_275F999A8(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F99AF4(uint64_t *result)
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
    result = TSP::Point::Clear(v1[4]);
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
  result = TSP::UUIDPath::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_275F990D4(v1[6]);
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275FB57B8(v3);
  }

  return result;
}

google::protobuf::internal *sub_275F99B8C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while ((sub_275FB1588(a3, &v26) & 1) == 0)
  {
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
        v19 = *(a1 + 40);
        if (!v19)
        {
          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x277C92D50](v20);
          LODWORD(v19) = v21;
          *(a1 + 40) = v21;
          v5 = v26;
        }

        v13 = sub_276034C5C(a3, v19, v5);
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 8u;
        v14 = *(a1 + 48);
        if (!v14)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = sub_275FAF560(v15);
          *(a1 + 48) = v14;
          v5 = v26;
        }

        v13 = sub_27603506C(a3, v14, v5);
      }
    }

    else if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 1u;
      v16 = *(a1 + 24);
      if (!v16)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = MEMORY[0x277C92D60](v17);
        LODWORD(v16) = v18;
        *(a1 + 24) = v18;
        v5 = v26;
      }

      v13 = sub_27603450C(a3, v16, v5);
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_39:
        if (v6)
        {
          v22 = (v6 & 7) == 4;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          *(a3 + 80) = v6 - 1;
          return v26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_275FB5524((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_46;
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

        v12 = MEMORY[0x277C92D30](v11);
        LODWORD(v10) = v12;
        *(a1 + 32) = v12;
        v5 = v26;
      }

      v13 = sub_276034F9C(a3, v10, v5);
    }

LABEL_46:
    v26 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v26;
}

unsigned __int8 *sub_275F99DF0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
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
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(a1 + 32);
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

  a2 = TSP::Point::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
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

  v19 = *(a1 + 40);
  *a2 = 26;
  v20 = *(v19 + 10);
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = a2 + 3;
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
      a2[2] = v22;
      v21 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v20;
    v21 = a2 + 2;
  }

  a2 = TSP::UUIDPath::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(a1 + 48);
    *a2 = 34;
    v26 = *(v25 + 20);
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        v27 = (a2 + 3);
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
        v27 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v26;
      v27 = (a2 + 2);
    }

    a2 = sub_275F99264(v25, v27, a3, a4);
  }

LABEL_46:
  v31 = *(a1 + 8);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v31 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_275F9A0B8(uint64_t a1)
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
    v5 = TSP::Point::ByteSizeLong(*(a1 + 32));
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

  v8 = TSP::UUIDPath::ByteSizeLong(*(a1 + 40));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = sub_275F99334(*(a1 + 48));
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

uint64_t sub_275F9A200(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288500850, 0);
  if (v4)
  {

    return sub_275F9A2A8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_275F9A2A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_275FB576C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

LABEL_17:
    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C92D30](v10);
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
        return result;
      }

      goto LABEL_33;
    }

    goto LABEL_25;
  }

  *(v3 + 16) |= 1u;
  v6 = *(v3 + 24);
  if (!v6)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x277C92D60](v7);
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
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  *(v3 + 16) |= 4u;
  v12 = *(v3 + 40);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x277C92D50](v13);
    *(v3 + 40) = v12;
  }

  if (*(a2 + 40))
  {
    v14 = *(a2 + 40);
  }

  else
  {
    v14 = MEMORY[0x277D80A10];
  }

  result = TSP::UUIDPath::MergeFrom(v12, v14);
  if ((v5 & 8) != 0)
  {
LABEL_33:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_275FAF560(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &qword_2812F8AE8;
    }

    return sub_275F9942C(v15, v17);
  }

  return result;
}

uint64_t *sub_275F9A450(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_275F99AF4(result);

    return sub_275F9A200(v4, a2);
  }

  return result;
}

uint64_t sub_275F9A49C(uint64_t a1)
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
    result = TSP::Point::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::UUIDPath::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  return (v2 & 8) == 0 || (~*(*(a1 + 48) + 16) & 3) == 0;
}

uint64_t *sub_275F9A558(uint64_t *a1)
{
  sub_275F9A58C(a1);
  sub_275F8A514(a1 + 1);
  return a1;
}

uint64_t *sub_275F9A58C(uint64_t *result)
{
  if (result != &qword_2812F8B70)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Point::~Point(v2);
      MEMORY[0x277C93390]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Size::~Size(v3);
      MEMORY[0x277C93390]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Range::~Range(v4);
      MEMORY[0x277C93390]();
    }

    result = v1[6];
    if (result)
    {
      TSP::Range::~Range(result);
      result = MEMORY[0x277C93390]();
    }

    v5 = v1[7];
    if (v5)
    {
      sub_275F8A514((v5 + 8));
      result = MEMORY[0x277C93390](v5, 0x1081C40825B58B5);
    }

    v6 = v1[8];
    if (v6)
    {
      sub_275F8A514((v6 + 8));

      JUMPOUT(0x277C93390);
    }
  }

  return result;
}

void sub_275F9A694(uint64_t *a1)
{
  sub_275F9A558(a1);

  JUMPOUT(0x277C93390);
}

uint64_t *sub_275F9A6D4(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    result = TSP::Point::Clear(result[3]);
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

  result = TSP::Size::Clear(v1[4]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_20:
    result = TSP::Range::Clear(v1[6]);
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = TSP::Range::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_21:
  result = sub_275F990D4(v1[7]);
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    result = sub_275F995B8(v1[8]);
  }

LABEL_9:
  if ((v2 & 0xC0) != 0)
  {
    v1[9] = 0;
  }

  if ((v2 & 0x1F00) != 0)
  {
    v1[10] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_275FB57B8(v3);
  }

  return result;
}

google::protobuf::internal *sub_275F9A7A4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v64 = a2;
  v5 = 0;
  if ((sub_275FB1588(a3, &v64) & 1) == 0)
  {
    while (1)
    {
      v7 = (v64 + 1);
      v8 = *v64;
      if (*v64 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v64, (v9 - 128));
          v64 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_106;
          }

          v7 = TagFallback;
          v8 = v15;
          goto LABEL_7;
        }

        v7 = (v64 + 2);
      }

      v64 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = MEMORY[0x277C92D30](v11);
            LODWORD(v10) = v12;
            *(a1 + 24) = v12;
            v7 = v64;
          }

          v13 = sub_276034F9C(a3, v10, v7);
          goto LABEL_88;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 2u;
          v35 = *(a1 + 32);
          if (!v35)
          {
            v36 = *(a1 + 8);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            v37 = MEMORY[0x277C92D10](v36);
            LODWORD(v35) = v37;
            *(a1 + 32) = v37;
            v7 = v64;
          }

          v13 = sub_27603513C(a3, v35, v7);
          goto LABEL_88;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 4u;
          v19 = *(a1 + 40);
          if (v19)
          {
            goto LABEL_42;
          }

          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v29 = MEMORY[0x277C92D40](v28);
          LODWORD(v19) = v29;
          *(a1 + 40) = v29;
          goto LABEL_41;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_81;
          }

          v5 |= 0x40u;
          v30 = (v7 + 1);
          LODWORD(v31) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_47;
          }

          v32 = *v30;
          v31 = (v31 + (v32 << 7) - 128);
          if (v32 < 0)
          {
            v56 = google::protobuf::internal::VarintParseSlow32(v7, v31);
            v64 = v56;
            *(a1 + 72) = v57;
            if (!v56)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v30 = (v7 + 2);
LABEL_47:
            v64 = v30;
            *(a1 + 72) = v31;
          }

          goto LABEL_89;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 8u;
          v19 = *(a1 + 48);
          if (v19)
          {
            goto LABEL_42;
          }

          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x277C92D40](v20);
          LODWORD(v19) = v21;
          *(a1 + 48) = v21;
LABEL_41:
          v7 = v64;
LABEL_42:
          v13 = sub_27603520C(a3, v19, v7);
          goto LABEL_88;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_81;
          }

          v5 |= 0x80u;
          v38 = (v7 + 1);
          LODWORD(v39) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_64;
          }

          v40 = *v38;
          v39 = (v39 + (v40 << 7) - 128);
          if (v40 < 0)
          {
            v58 = google::protobuf::internal::VarintParseSlow32(v7, v39);
            v64 = v58;
            *(a1 + 76) = v59;
            if (!v58)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v38 = (v7 + 2);
LABEL_64:
            v64 = v38;
            *(a1 + 76) = v39;
          }

          goto LABEL_89;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_81;
          }

          v5 |= 0x100u;
          v41 = (v7 + 1);
          LODWORD(v42) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_69;
          }

          v43 = *v41;
          v42 = (v42 + (v43 << 7) - 128);
          if (v43 < 0)
          {
            v60 = google::protobuf::internal::VarintParseSlow32(v7, v42);
            v64 = v60;
            *(a1 + 80) = v61;
            if (!v60)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v41 = (v7 + 2);
LABEL_69:
            v64 = v41;
            *(a1 + 80) = v42;
          }

          goto LABEL_89;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 0x10u;
          v33 = *(a1 + 56);
          if (!v33)
          {
            v34 = *(a1 + 8);
            if (v34)
            {
              v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = sub_275FAF560(v34);
            *(a1 + 56) = v33;
            v7 = v64;
          }

          v13 = sub_27603506C(a3, v33, v7);
          goto LABEL_88;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_81;
          }

          *(a1 + 16) |= 0x20u;
          v47 = *(a1 + 64);
          if (!v47)
          {
            v48 = *(a1 + 8);
            if (v48)
            {
              v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
            }

            v47 = sub_275FAF5D4(v48);
            *(a1 + 64) = v47;
            v7 = v64;
          }

          v13 = sub_2760352DC(a3, v47, v7);
          goto LABEL_88;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_81;
          }

          v5 |= 0x200u;
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v54 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            v64 = v54;
            *(a1 + 84) = v55 != 0;
            if (!v54)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_35:
            v64 = v26;
            *(a1 + 84) = v25 != 0;
          }

          goto LABEL_89;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_81;
          }

          v5 |= 0x400u;
          v45 = (v7 + 1);
          v44 = *v7;
          if ((v44 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v46 = *v45;
          v44 = (v46 << 7) + v44 - 128;
          if (v46 < 0)
          {
            v62 = google::protobuf::internal::VarintParseSlow64(v7, v44);
            v64 = v62;
            *(a1 + 85) = v63 != 0;
            if (!v62)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v45 = (v7 + 2);
LABEL_74:
            v64 = v45;
            *(a1 + 85) = v44 != 0;
          }

          goto LABEL_89;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_81;
          }

          v5 |= 0x800u;
          v17 = (v7 + 1);
          v16 = *v7;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_20;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if (v18 < 0)
          {
            v50 = google::protobuf::internal::VarintParseSlow64(v7, v16);
            v64 = v50;
            *(a1 + 86) = v51 != 0;
            if (!v50)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v17 = (v7 + 2);
LABEL_20:
            v64 = v17;
            *(a1 + 86) = v16 != 0;
          }

          goto LABEL_89;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_81;
          }

          v5 |= 0x1000u;
          v23 = (v7 + 1);
          v22 = *v7;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if (v24 < 0)
          {
            v52 = google::protobuf::internal::VarintParseSlow64(v7, v22);
            v64 = v52;
            *(a1 + 87) = v53 != 0;
            if (!v52)
            {
              goto LABEL_106;
            }
          }

          else
          {
            v23 = (v7 + 2);
LABEL_30:
            v64 = v23;
            *(a1 + 87) = v22 != 0;
          }

          goto LABEL_89;
        default:
LABEL_81:
          if (v8)
          {
            v49 = (v8 & 7) == 4;
          }

          else
          {
            v49 = 1;
          }

          if (v49)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_275FB5524((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_88:
          v64 = v13;
          if (!v13)
          {
LABEL_106:
            v64 = 0;
            goto LABEL_2;
          }

LABEL_89:
          if (sub_275FB1588(a3, &v64))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v64;
}

unsigned __int8 *sub_275F9ADC0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
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

    a2 = TSP::Point::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(a1 + 32);
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

  a2 = TSP::Size::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_5;
    }

LABEL_45:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(a1 + 72);
    *a2 = 32;
    if (v25 > 0x7F)
    {
      a2[1] = v25 | 0x80;
      v26 = v25 >> 7;
      if (v25 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++a2;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(a2 - 1) = v27;
        if ((v6 & 8) != 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        a2[2] = v26;
        a2 += 3;
        if ((v6 & 8) != 0)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      a2[1] = v25;
      a2 += 2;
      if ((v6 & 8) != 0)
      {
        goto LABEL_56;
      }
    }

LABEL_6:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_66;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(a1 + 40);
  *a2 = 26;
  v20 = *(v19 + 5);
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = a2 + 3;
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
      a2[2] = v22;
      v21 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v20;
    v21 = a2 + 2;
  }

  a2 = TSP::Range::_InternalSerialize(v19, v21, a3);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_45;
  }

LABEL_5:
  if ((v6 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_56:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v29 = *(a1 + 48);
  *a2 = 42;
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

  a2 = TSP::Range::_InternalSerialize(v29, v31, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_7:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_8;
    }

LABEL_77:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(a1 + 80);
    *a2 = 56;
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
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_88;
        }
      }

      else
      {
        a2[2] = v40;
        a2 += 3;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_88;
        }
      }
    }

    else
    {
      a2[1] = v39;
      a2 += 2;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_88;
      }
    }

LABEL_9:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_98;
  }

LABEL_66:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v35 = *(a1 + 76);
  *a2 = 48;
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
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_77;
      }
    }

    else
    {
      a2[2] = v36;
      a2 += 3;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_77;
      }
    }
  }

  else
  {
    a2[1] = v35;
    a2 += 2;
    if ((v6 & 0x100) != 0)
    {
      goto LABEL_77;
    }
  }

LABEL_8:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_88:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v43 = *(a1 + 56);
  *a2 = 66;
  v44 = *(v43 + 20);
  if (v44 > 0x7F)
  {
    a2[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = (a2 + 3);
      do
      {
        *(v45 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v45;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v45 - 1) = v47;
    }

    else
    {
      a2[2] = v46;
      v45 = (a2 + 3);
    }
  }

  else
  {
    a2[1] = v44;
    v45 = (a2 + 2);
  }

  a2 = sub_275F99264(v43, v45, a3, a4);
  if ((v6 & 0x20) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_108;
  }

LABEL_98:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(a1 + 64);
  *a2 = 74;
  v50 = *(v49 + 20);
  if (v50 > 0x7F)
  {
    a2[1] = v50 | 0x80;
    v52 = v50 >> 7;
    if (v50 >> 14)
    {
      v51 = (a2 + 3);
      do
      {
        *(v51 - 1) = v52 | 0x80;
        v53 = v52 >> 7;
        ++v51;
        v54 = v52 >> 14;
        v52 >>= 7;
      }

      while (v54);
      *(v51 - 1) = v53;
    }

    else
    {
      a2[2] = v52;
      v51 = (a2 + 3);
    }
  }

  else
  {
    a2[1] = v50;
    v51 = (a2 + 2);
  }

  a2 = sub_275F99748(v49, v51, a3, a4);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_111;
  }

LABEL_108:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v55 = *(a1 + 84);
  *a2 = 80;
  a2[1] = v55;
  a2 += 2;
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_114;
  }

LABEL_111:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v56 = *(a1 + 85);
  *a2 = 88;
  a2[1] = v56;
  a2 += 2;
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_117;
  }

LABEL_114:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v57 = *(a1 + 86);
  *a2 = 96;
  a2[1] = v57;
  a2 += 2;
  if ((v6 & 0x1000) != 0)
  {
LABEL_117:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v58 = *(a1 + 87);
    *a2 = 104;
    a2[1] = v58;
    a2 += 2;
  }

LABEL_120:
  v59 = *(a1 + 8);
  if ((v59 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v59 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}