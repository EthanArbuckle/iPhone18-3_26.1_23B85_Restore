void sub_2769E4E0C(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769E301C(a1);

    sub_2769E4900(a1, a2);
  }
}

uint64_t sub_2769E4E58(uint64_t a1)
{
  if ((~*(a1 + 16) & 5) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 80);
  while (v2 >= 1)
  {
    v3 = *(*(a1 + 88) + 8 * v2--);
    if ((*(v3 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_2769E4F1C(a1 + 96);
  if (result)
  {
    result = sub_2769E4F90(a1 + 120);
    if (result)
    {
      v5 = *(a1 + 152);
      while (v5 >= 1)
      {
        v6 = *(*(a1 + 160) + 8 * v5--);
        if ((*(v6 + 16) & 1) == 0)
        {
          return 0;
        }
      }

      v7 = *(a1 + 224);
      do
      {
        result = v7 < 1;
        if (v7 < 1)
        {
          break;
        }

        v8 = *(*(a1 + 232) + 8 * v7--);
      }

      while ((*(v8 + 16) & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_2769E4F1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 16) + 8;
  do
  {
    v3 = *(v2 + 8 * (v1 - 1));
    v4 = *(v3 + 16);
    result = v4 & 1;
    if ((v4 & 1) == 0)
    {
      break;
    }

    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    while (v6 >= 1)
    {
      v8 = *(v7 + 8 * v6--);
      if ((~*(v8 + 16) & 3) != 0)
      {
        return 0;
      }
    }
  }

  while (v1-- >= 2);
  return result;
}

BOOL sub_2769E4F90(uint64_t a1)
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

  while (TSP::UUID::IsInitialized(*(v4 + 24)));
  return v3 < 1;
}

uint64_t sub_2769E4FF8()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[8];
  v1 = off_2812FBC48[9];
  return result;
}

void sub_2769E5060(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769E50B8(uint64_t a1)
{
  if ((*(a1 + 16) & 7) != 0)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *sub_2769E50E0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v33, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v33 + 1);
      v9 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v10 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_47;
      }

      v8 = TagFallback;
      v9 = v26;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_13;
        }

        v6 |= 4u;
        v20 = (v8 + 1);
        v19 = *v8;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v8 + 2);
LABEL_30:
          v33 = v20;
          *(a1 + 40) = v19 != 0;
          goto LABEL_35;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v8, v19);
        v33 = v31;
        *(a1 + 40) = v32 != 0;
        if (!v31)
        {
          goto LABEL_47;
        }
      }

      else if (v11 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v17 = (v8 + 1);
        v16 = *v8;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_25:
          v33 = v17;
          *(a1 + 32) = v16;
          goto LABEL_35;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v33 = v27;
        *(a1 + 32) = v28;
        if (!v27)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v11 != 1 || v9 != 8)
        {
LABEL_13:
          if (v9)
          {
            v13 = (v9 & 7) == 4;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v14 = *(a1 + 8);
          if (v14)
          {
            v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v15 = sub_2769F617C((a1 + 8));
            v8 = v33;
          }

          v33 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8, a3, v5);
          if (!v33)
          {
LABEL_47:
            v33 = 0;
            goto LABEL_2;
          }

          goto LABEL_35;
        }

        v6 |= 1u;
        v23 = (v8 + 1);
        v22 = *v8;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v8 + 2);
LABEL_34:
          v33 = v23;
          *(a1 + 24) = v22;
          goto LABEL_35;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v33 = v29;
        *(a1 + 24) = v30;
        if (!v29)
        {
          goto LABEL_47;
        }
      }

LABEL_35:
      if (sub_2769F6104(a3, &v33, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v33 + 2);
LABEL_6:
    v33 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v33;
}

const google::protobuf::UnknownFieldSet *sub_2769E533C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(a1 + 24);
    *a2 = 8;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++a2;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(a2 - 1) = v12;
        if ((v6 & 2) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_20:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(a1 + 32);
  *a2 = 16;
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v15 = v14 >> 7;
    if (v14 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++a2;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(a2 - 1) = v16;
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    a2[1] = v14;
    a2 += 2;
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(a1 + 40);
  *a2 = 24;
  a2[1] = v7;
  a2 += 2;
LABEL_7:
  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

const InternalMetadata *sub_2769E54FC(google::protobuf::internal *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = (((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 6) != 0)
  {
    if ((v4 & 2) != 0)
    {
      v5 = (v5 + ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }

    v5 = (v5 + ((v4 >> 1) & 2));
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  *(this + 5) = v5;
  return v5;
}

void sub_2769E5588(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E5630(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769E5630(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v3[3] = *(a2 + 24);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 4) |= v5;
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

    v3[4] = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

void sub_2769E56B4(google::protobuf::Arena **a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769E50B8(a1);

    sub_2769E5588(a1, a2);
  }
}

uint64_t sub_2769E570C()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[10];
  v1 = off_2812FBC48[11];
  return result;
}

void sub_2769E5774(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769E57CC(uint64_t a1)
{
  if ((*(a1 + 16) & 3) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 24) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *sub_2769E57F4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v27, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v27 + 1);
      v9 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v10 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v15 = (v8 + 1);
        LODWORD(v16) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v8 + 2);
LABEL_24:
          v27 = v15;
          *(a1 + 32) = v16;
          goto LABEL_29;
        }

        v23 = google::protobuf::internal::VarintParseSlow32(v8, v16);
        v27 = v23;
        *(a1 + 32) = v24;
        if (!v23)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C((a1 + 8));
            v8 = v27;
          }

          v27 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
          if (!v27)
          {
LABEL_39:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v19 = (v8 + 1);
        v18 = *v8;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v8 + 2);
LABEL_28:
          v27 = v19;
          *(a1 + 24) = v18;
          goto LABEL_29;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v8, v18);
        v27 = v25;
        *(a1 + 24) = v26;
        if (!v25)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if (sub_2769F6104(a3, &v27, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v27 + 2);
LABEL_6:
    v27 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v27;
}

const google::protobuf::UnknownFieldSet *sub_2769E59DC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v11 = v8 >> 7;
        ++a2;
        v12 = v8 >> 14;
        v8 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 32);
  *a2 = 16;
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++a2;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v9;
    a2 += 2;
  }

LABEL_23:
  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

unint64_t sub_2769E5B54(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_2769E5BB8(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v5 = sub_2769E5B54(a1);
  }

  else
  {
    v5 = (((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 24) | 1) ^ 0x3F) + 73) >> 6) + 2);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v5, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

void sub_2769E5C68(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E5D10(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769E5D10(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v3[3] = *(a2 + 24);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) = *(a2 + 32);
    }

    *(v3 + 4) |= v5;
  }

  return result;
}

void sub_2769E5D7C(google::protobuf::Arena **a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769E57CC(a1);

    sub_2769E5C68(a1, a2);
  }
}

uint64_t sub_2769E5DDC()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[12];
  v1 = off_2812FBC48[13];
  return result;
}

void *sub_2769E5E14(void *a1, uint64_t a2)
{
  *a1 = &unk_2885C0190;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812FB850, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB850);
  }

  a1[6] = 0;
  return a1;
}

uint64_t sub_2769E5EA0(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));
  sub_2769F6EB8((a1 + 24));
  return a1;
}

void sub_2769E5EE0(uint64_t a1)
{
  sub_2769E5EA0(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769E5F20(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2769E57CC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 5) = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return result;
}

google::protobuf::internal *sub_2769E5FA4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v30, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v30 + 1);
      v9 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v10 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
      }

      v8 = TagFallback;
      v9 = v27;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 18)
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C((a1 + 8));
            v8 = v30;
          }

          v30 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
          if (!v30)
          {
LABEL_46:
            v30 = 0;
            goto LABEL_2;
          }

          goto LABEL_38;
        }

        v15 = (v8 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v30 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
            v18 = *(a1 + 36);
            goto LABEL_24;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v18 + 1);
              v17 = *(a1 + 40);
              v18 = *v17;
            }

            *v17 = v18 + 1;
            v19 = sub_2769F5180(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v30;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_276BD1D14(a3, v19, v16);
          v30 = v15;
          if (!v15)
          {
            goto LABEL_46;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_38;
          }

          continue;
        }
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v24 = (v8 + 1);
      v23 = *v8;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v8 + 2);
LABEL_37:
        v30 = v24;
        *(a1 + 48) = v23;
        v6 = 1;
        goto LABEL_38;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v8, v23);
      v30 = v28;
      *(a1 + 48) = v29;
      v6 = 1;
      if (!v28)
      {
        goto LABEL_46;
      }

LABEL_38:
      if (sub_2769F6104(a3, &v30, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v30 + 2);
LABEL_6:
    v30 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v30;
}

const google::protobuf::UnknownFieldSet *sub_2769E61FC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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

      a2 = sub_2769E59DC(v12, v14, a3, a4);
    }
  }

  v18 = *(a1 + 8);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769E63A8(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(a1 + 16))
  {
    v5 = ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 32);
  v7 = (v5 + v6);
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
      v12 = sub_2769E5BB8(v11, a2, a3, a4);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v7, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v7;
    return v7;
  }
}

void sub_2769E648C(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E6534(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769E6534(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 32));
    result = sub_2769F6F50(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 48);
    *(v3 + 4) |= 1u;
    v3[6] = v10;
  }

  return result;
}

void sub_2769E65F0(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769E5F20(a1);

    sub_2769E648C(a1, a2);
  }
}

BOOL sub_2769E663C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2--);
  }

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

uint64_t sub_2769E667C()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[14];
  v1 = off_2812FBC48[15];
  return result;
}

uint64_t *sub_2769E66B4(uint64_t *a1)
{
  if (a1 != qword_2812FCB30)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(a1 + 1);
  return a1;
}

void sub_2769E6718(uint64_t *a1)
{
  sub_2769E66B4(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769E6758(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = TSP::UUID::Clear(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 3) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2769F6424(v2);
  }

  return result;
}

google::protobuf::internal *sub_2769E67B8(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v25 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v25, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v25 + 1);
      v9 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v10 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 18)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v17);
            *(a1 + 24) = v16;
            v8 = v25;
          }

          v15 = sub_276BD1DE4(a3, v16, v8);
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C((a1 + 8));
            v8 = v25;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
        }

        v25 = v15;
        if (!v15)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v19 = (v8 + 1);
      v18 = *v8;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = (v8 + 2);
LABEL_30:
        v25 = v19;
        *(a1 + 32) = v18;
        goto LABEL_31;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v8, v18);
      v25 = v23;
      *(a1 + 32) = v24;
      if (!v23)
      {
LABEL_39:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_2769F6104(a3, &v25, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v25 + 2);
LABEL_6:
    v25 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v25;
}

const google::protobuf::UnknownFieldSet *sub_2769E6994(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++a2;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 24);
  *a2 = 18;
  v10 = *(v9 + 5);
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
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
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

  a2 = TSP::UUID::_InternalSerialize(v9, v11, a3, a4);
LABEL_24:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769E6B1C(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = TSP::UUID::ByteSizeLong(*(a1 + 24), a2, a3, a4);
    result = &v7->ptr_ + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v5 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_2769E6BA0(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v7 = sub_2769E6B1C(a1, a2, a3, a4);
  }

  else
  {
    v5 = TSP::UUID::ByteSizeLong(*(a1 + 24), a2, a3, a4);
    v7 = (&v5->ptr_ + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v7, (a1 + 20), v6);
  }

  else
  {
    *(a1 + 20) = v7;
    return v7;
  }
}

void sub_2769E6C58(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E6D00(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769E6D00(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 4) |= 1u;
      v6 = v3[3];
      if (!v6)
      {
        v7 = v3[1];
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v7);
        v3[3] = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &TSP::_UUID_default_instance_;
      }

      result = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      v3[4] = *(a2 + 32);
    }

    *(v3 + 4) |= v5;
  }

  return result;
}

void sub_2769E6DB4(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769E6758(a1);

    sub_2769E6C58(a1, a2);
  }
}

uint64_t sub_2769E6E20()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[16];
  v1 = off_2812FBC48[17];
  return result;
}

void *sub_2769E6E58(void *a1, uint64_t a2)
{
  *a1 = &unk_2885C02F0;
  a1[1] = a2;
  a1[4] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[6] = 0;
  a1[7] = a2;
  if (atomic_load_explicit(dword_2812FBA10, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBA10);
  }

  a1[9] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

void sub_2769E6EE4(_Unwind_Exception *a1)
{
  if (*(v1 + 52) >= 1)
  {
    sub_276BD2A14(v3);
  }

  sub_276BD2BF8((v1 + 28), v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2769E6F10(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  sub_2769DEC8C((a1 + 8));
  if (*(a1 + 52) >= 1)
  {
    v3 = *(a1 + 56);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(a1 + 28) >= 1)
  {
    v6 = *(a1 + 32);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  return a1;
}

void sub_2769E6FB8(uint64_t a1)
{
  sub_2769E6F10(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769E6FF8(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a1 + 16))
  {
    v1 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v3)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *sub_2769E7044(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  for (i = *(a3 + 92); (sub_2769F6104(a3, &v23, i) & 1) == 0; i = *(a3 + 92))
  {
    v8 = (v23 + 1);
    v9 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v10 = v9 + (*v8 << 7);
    v9 = v10 - 128;
    if ((*v8 & 0x80000000) == 0)
    {
      v8 = (v23 + 2);
LABEL_6:
      v23 = v8;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v10 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v8 = TagFallback;
    v9 = v21;
LABEL_7:
    v11 = v9 >> 3;
    if (v9 >> 3 == 3)
    {
      if (v9 == 26)
      {
        v17 = (a1 + 48);
        goto LABEL_24;
      }

      if (v9 == 24)
      {
LABEL_35:
        v24 = sub_2769E000C(&v23);
        google::protobuf::RepeatedField<unsigned int>::Add();
      }
    }

    else if (v11 == 2)
    {
      if (v9 == 18)
      {
        v17 = (a1 + 24);
LABEL_24:
        v16 = google::protobuf::internal::PackedUInt32Parser(v17, v8, a3, v6);
        goto LABEL_28;
      }

      if (v9 == 16)
      {
        goto LABEL_35;
      }
    }

    else if (v11 == 1 && v9 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 72), v18);
      v16 = google::protobuf::internal::InlineGreedyStringParser(v19, v23, a3);
      goto LABEL_28;
    }

    if (v9)
    {
      v13 = (v9 & 7) == 4;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      *(a3 + 80) = v9 - 1;
      return v23;
    }

    v14 = *(a1 + 8);
    if (v14)
    {
      v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v15 = sub_2769F617C((a1 + 8));
      v8 = v23;
    }

    v16 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8, a3, v7);
LABEL_28:
    v23 = v16;
    if (!v16)
    {
      return 0;
    }
  }

  return v23;
}

const google::protobuf::UnknownFieldSet *sub_2769E7218(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(a1 + 16))
  {
    v4 = sub_2769E1AB4(a3, 1, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v6 = *(a1 + 40);
  if (v6 >= 1)
  {
    v4 = sub_2769F6620(a3, 2, (a1 + 24), v6, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v7 = *(a1 + 64);
  if (v7 >= 1)
  {
    v4 = sub_2769F6620(a3, 3, (a1 + 48), v7, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v8 = *(a1 + 8);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v7);
}

uint64_t sub_2769E72FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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

  v6 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 24));
  if (v6)
  {
    v7 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 40) = v7;
  v9 = v2 + v6;
  v10 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 48));
  if (v10)
  {
    v12 = v10;
    if ((v10 & 0x80000000) != 0)
    {
      v13 = 11;
    }

    else
    {
      v13 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v13;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 64) = v12;
  v14 = (v9 + v10);
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v14, (a1 + 20), v11);
  }

  else
  {
    *(a1 + 20) = v14;
    return v9 + v10;
  }
}

void sub_2769E7434(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E74DC(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769E74DC(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 24))
  {
    v5 = *(v3 + 6);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  if (*(a2 + 48))
  {
    v6 = *(v3 + 12);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  if (*(a2 + 16))
  {
    v7 = *(a2 + 72);
    *(v3 + 4) |= 1u;
    v8 = v3[1];
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    return google::protobuf::internal::ArenaStringPtr::Set(v3 + 9, (v7 & 0xFFFFFFFFFFFFFFFELL), v8);
  }

  return result;
}

void sub_2769E75FC(google::protobuf::Arena **a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769E6FF8(a1);

    sub_2769E7434(a1, a2);
  }
}

uint64_t sub_2769E7654()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[18];
  v1 = off_2812FBC48[19];
  return result;
}

uint64_t sub_2769E768C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C03A0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a2;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 120) = 0;
  *(a1 + 144) = a2;
  *(a1 + 128) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (atomic_load_explicit(dword_2812FBB20, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBB20);
  }

  *(a1 + 200) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void sub_2769E7750(_Unwind_Exception *a1)
{
  v5 = v4;
  sub_2769F7010(v5);
  if (*(v2 + 124) >= 1)
  {
    v7 = *(v2 + 128);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v2 + 100) >= 1)
  {
    v10 = *(v2 + 104);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  if (*(v2 + 76) >= 1)
  {
    v13 = *(v2 + 80);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }

  sub_2769F7094(v3);
  sub_2769F7010(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2769E77DC(uint64_t a1)
{
  if (a1 != &unk_2812FCBA8)
  {
    v2 = *(a1 + 168);
    if (v2)
    {
      v3 = sub_2769E90D8(v2);
      MEMORY[0x277C9F670](v3, 0x1081C407BE7EBECLL);
    }

    v4 = *(a1 + 176);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C((a1 + 8));
  sub_2769F7010((a1 + 144));
  if (*(a1 + 124) >= 1)
  {
    v5 = *(a1 + 128);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(a1 + 100) >= 1)
  {
    v8 = *(a1 + 104);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(a1 + 76) >= 1)
  {
    v11 = *(a1 + 80);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  sub_2769F7094((a1 + 48));
  sub_2769F7010((a1 + 24));
  return a1;
}

void sub_2769E78D8(uint64_t a1)
{
  sub_2769E77DC(a1);

  JUMPOUT(0x277C9F670);
}

void *sub_2769E7918()
{
  if (atomic_load_explicit(dword_2812FBB20, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBB20);
  }

  return &unk_2812FCBA8;
}

google::protobuf::UnknownFieldSet *sub_2769E7958(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2769E301C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 8) + 8);
    do
    {
      v7 = *v6++;
      result = sub_2769EAC9C(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  *(v1 + 18) = 0;
  *(v1 + 24) = 0;
  *(v1 + 30) = 0;
  v8 = *(v1 + 38);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 20) + 8);
    do
    {
      v10 = *v9++;
      result = sub_2769E301C(v10);
      --v8;
    }

    while (v8);
    *(v1 + 38) = 0;
  }

  v11 = *(v1 + 4);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      result = sub_2769E7A68(*(v1 + 21));
    }

    if ((v11 & 2) != 0)
    {
      result = TSP::Reference::Clear(*(v1 + 22));
    }
  }

  if ((v11 & 0x1C) != 0)
  {
    *(v1 + 23) = 0;
    *(v1 + 24) = 0;
    *(v1 + 50) = 0;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 2) = 0;
  if (v13)
  {

    return sub_2769F6424(v12);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2769E7A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 6) != 0)
  {
    *(a1 + 40) = 0;
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *sub_2769E7ABC(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v62 = a2;
  v7 = 0;
  if ((sub_2769F6104(a3, &v62, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v9 = (v62 + 1);
      v10 = *v62;
      if ((*v62 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v11 = v10 + (*v9 << 7);
      v10 = v11 - 128;
      if ((*v9 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v62, (v11 - 128));
      v62 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_129;
      }

      v9 = TagFallback;
      v10 = v30;
LABEL_7:
      v12 = v10 >> 3;
      if (v10 >> 3 <= 5)
      {
        if (v10 >> 3 > 2)
        {
          if (v12 != 3)
          {
            if (v12 != 4)
            {
              if (v12 != 5)
              {
                goto LABEL_116;
              }

              if (v10 == 42)
              {
                v16 = (a1 + 72);
LABEL_96:
                v28 = google::protobuf::internal::PackedUInt32Parser(v16, v9, a3, v5);
                goto LABEL_123;
              }

              if (v10 == 40)
              {
                goto LABEL_115;
              }

LABEL_116:
              if (v10)
              {
                v59 = (v10 & 7) == 4;
              }

              else
              {
                v59 = 1;
              }

              if (v59)
              {
                a3[10].i32[0] = v10 - 1;
                goto LABEL_2;
              }

              v60 = *(a1 + 8);
              if (v60)
              {
                v61 = ((v60 & 0xFFFFFFFFFFFFFFFELL) + 8);
              }

              else
              {
                v61 = sub_2769F617C((a1 + 8));
                v9 = v62;
              }

              v28 = google::protobuf::internal::UnknownFieldParse(v10, v61, v9, a3, v6);
              goto LABEL_123;
            }

            if (v10 != 34)
            {
              goto LABEL_116;
            }

            v34 = (v9 - 1);
            while (2)
            {
              v35 = (v34 + 1);
              v62 = (v34 + 1);
              v36 = *(a1 + 64);
              if (!v36)
              {
                v37 = *(a1 + 60);
                goto LABEL_62;
              }

              v41 = *(a1 + 56);
              v37 = *v36;
              if (v41 >= *v36)
              {
                if (v37 == *(a1 + 60))
                {
LABEL_62:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v37 + 1);
                  v36 = *(a1 + 64);
                  v37 = *v36;
                }

                *v36 = v37 + 1;
                v38 = sub_2769F557C(*(a1 + 48));
                v39 = *(a1 + 56);
                v40 = *(a1 + 64) + 8 * v39;
                *(a1 + 56) = v39 + 1;
                *(v40 + 8) = v38;
                v35 = v62;
              }

              else
              {
                *(a1 + 56) = v41 + 1;
                v38 = *&v36[2 * v41 + 2];
              }

              v34 = sub_276BD2054(a3, v38, v35);
              v62 = v34;
              if (!v34)
              {
                goto LABEL_129;
              }

              if (*a3 <= v34 || *v34 != 34)
              {
                goto LABEL_124;
              }

              continue;
            }
          }

          if (v10 != 26)
          {
            goto LABEL_116;
          }

          v44 = (v9 - 1);
          while (2)
          {
            v45 = (v44 + 1);
            v62 = (v44 + 1);
            v46 = *(a1 + 40);
            if (!v46)
            {
              v47 = *(a1 + 36);
              goto LABEL_84;
            }

            v51 = *(a1 + 32);
            v47 = *v46;
            if (v51 >= *v46)
            {
              if (v47 == *(a1 + 36))
              {
LABEL_84:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v47 + 1);
                v46 = *(a1 + 40);
                v47 = *v46;
              }

              *v46 = v47 + 1;
              v48 = sub_2769F507C(*(a1 + 24));
              v49 = *(a1 + 32);
              v50 = *(a1 + 40) + 8 * v49;
              *(a1 + 32) = v49 + 1;
              *(v50 + 8) = v48;
              v45 = v62;
            }

            else
            {
              *(a1 + 32) = v51 + 1;
              v48 = *&v46[2 * v51 + 2];
            }

            v44 = sub_276BD1F84(a3, v48, v45);
            v62 = v44;
            if (!v44)
            {
              goto LABEL_129;
            }

            if (*a3 <= v44 || *v44 != 26)
            {
              goto LABEL_124;
            }

            continue;
          }
        }

        if (v12 != 1)
        {
          if (v12 != 2 || v10 != 18)
          {
            goto LABEL_116;
          }

          *(a1 + 16) |= 1u;
          v26 = *(a1 + 168);
          if (!v26)
          {
            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = sub_2769F5464(v27);
            *(a1 + 168) = v26;
            v9 = v62;
          }

          v28 = sub_276BD1EB4(a3, v26, v9);
LABEL_123:
          v62 = v28;
          if (!v28)
          {
LABEL_129:
            v62 = 0;
            goto LABEL_2;
          }

          goto LABEL_124;
        }

        if (v10 != 8)
        {
          goto LABEL_116;
        }

        v7 |= 4u;
        v32 = (v9 + 1);
        v31 = *v9;
        if ((v31 & 0x8000000000000000) != 0)
        {
          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if (v33 < 0)
          {
            v55 = google::protobuf::internal::VarintParseSlow64(v9, v31);
            v62 = v55;
            *(a1 + 184) = v56;
            if (!v55)
            {
              goto LABEL_129;
            }

            goto LABEL_124;
          }

          v32 = (v9 + 2);
        }

        v62 = v32;
        *(a1 + 184) = v31;
      }

      else
      {
        if (v10 >> 3 > 8)
        {
          if (v12 != 9)
          {
            if (v12 == 10)
            {
              if (v10 != 82)
              {
                goto LABEL_116;
              }

              *(a1 + 16) |= 2u;
              v42 = *(a1 + 176);
              if (!v42)
              {
                v43 = *(a1 + 8);
                if (v43)
                {
                  v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
                }

                v42 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v43);
                *(a1 + 176) = v42;
                v9 = v62;
              }

              v28 = sub_276BD2124(a3, v42, v9);
              goto LABEL_123;
            }

            if (v12 != 11 || v10 != 90)
            {
              goto LABEL_116;
            }

            v17 = (v9 - 1);
            while (2)
            {
              v18 = (v17 + 1);
              v62 = (v17 + 1);
              v19 = *(a1 + 160);
              if (!v19)
              {
                v20 = *(a1 + 156);
                goto LABEL_30;
              }

              v24 = *(a1 + 152);
              v20 = *v19;
              if (v24 >= *v19)
              {
                if (v20 == *(a1 + 156))
                {
LABEL_30:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144), v20 + 1);
                  v19 = *(a1 + 160);
                  v20 = *v19;
                }

                *v19 = v20 + 1;
                v21 = sub_2769F507C(*(a1 + 144));
                v22 = *(a1 + 152);
                v23 = *(a1 + 160) + 8 * v22;
                *(a1 + 152) = v22 + 1;
                *(v23 + 8) = v21;
                v18 = v62;
              }

              else
              {
                *(a1 + 152) = v24 + 1;
                v21 = *&v19[2 * v24 + 2];
              }

              v17 = sub_276BD1F84(a3, v21, v18);
              v62 = v17;
              if (!v17)
              {
                goto LABEL_129;
              }

              if (*a3 <= v17 || *v17 != 90)
              {
                goto LABEL_124;
              }

              continue;
            }
          }

          if (v10 != 72)
          {
            goto LABEL_116;
          }

          v53 = (v9 + 1);
          v52 = *v9;
          if ((v52 & 0x8000000000000000) != 0)
          {
            v54 = *v53;
            v52 = (v54 << 7) + v52 - 128;
            if ((v54 & 0x80000000) == 0)
            {
              v53 = (v9 + 2);
              goto LABEL_101;
            }

            v62 = google::protobuf::internal::VarintParseSlow64(v9, v52);
            if (!v62)
            {
              goto LABEL_129;
            }
          }

          else
          {
LABEL_101:
            v62 = v53;
          }

          if (v52 > 2)
          {
            sub_276BD2C18((a1 + 8));
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 200) = v52;
          }

          goto LABEL_124;
        }

        if (v12 == 6)
        {
          if (v10 == 50)
          {
            v16 = (a1 + 96);
            goto LABEL_96;
          }

          if (v10 == 48)
          {
LABEL_115:
            v63 = sub_2769E000C(&v62);
            google::protobuf::RepeatedField<unsigned int>::Add();
          }

          goto LABEL_116;
        }

        if (v12 == 7)
        {
          if (v10 == 58)
          {
            v16 = (a1 + 120);
            goto LABEL_96;
          }

          if (v10 == 56)
          {
            goto LABEL_115;
          }

          goto LABEL_116;
        }

        if (v12 != 8 || v10 != 64)
        {
          goto LABEL_116;
        }

        v7 |= 8u;
        v14 = (v9 + 1);
        v13 = *v9;
        if ((v13 & 0x8000000000000000) != 0)
        {
          v15 = *v14;
          v13 = (v15 << 7) + v13 - 128;
          if (v15 < 0)
          {
            v57 = google::protobuf::internal::VarintParseSlow64(v9, v13);
            v62 = v57;
            *(a1 + 192) = v58;
            if (!v57)
            {
              goto LABEL_129;
            }

            goto LABEL_124;
          }

          v14 = (v9 + 2);
        }

        v62 = v14;
        *(a1 + 192) = v13;
      }

LABEL_124:
      if (sub_2769F6104(a3, &v62, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v9 = (v62 + 2);
LABEL_6:
    v62 = v9;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v7;
  return v62;
}

const google::protobuf::UnknownFieldSet *sub_2769E811C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 184);
    *v4 = 8;
    if (v7 <= 0x7F)
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    v4[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++v4;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    v4[2] = v8;
    v4 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(a1 + 168);
  *v4 = 18;
  v10 = *(v9 + 20);
  if (v10 > 0x7F)
  {
    v4[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v11 = (v4 + 3);
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v15 = v12 >> 7;
        v11 = (v11 + 1);
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
    }

    else
    {
      v4[2] = v12;
      v11 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v10;
    v11 = (v4 + 2);
  }

  v4 = sub_2769E93B8(v9, v11, a3);
LABEL_24:
  v17 = *(a1 + 32);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v19 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 26;
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

      v4 = sub_2769E3BA4(v19, v21, a3);
    }
  }

  v25 = *(a1 + 56);
  if (v25)
  {
    for (j = 0; j != v25; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v27 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 34;
      v28 = *(v27 + 20);
      if (v28 > 0x7F)
      {
        v4[1] = v28 | 0x80;
        v30 = v28 >> 7;
        if (v28 >> 14)
        {
          v29 = v4 + 3;
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
          v4[2] = v30;
          v29 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v28;
        v29 = v4 + 2;
      }

      v4 = sub_2769EB6BC(v27, v29, a3);
    }
  }

  v33 = *(a1 + 88);
  if (v33 > 0)
  {
    v4 = sub_2769F6620(a3, 5, (a1 + 72), v33, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v34 = *(a1 + 112);
  if (v34 >= 1)
  {
    v4 = sub_2769F6620(a3, 6, (a1 + 96), v34, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v35 = *(a1 + 136);
  if (v35 >= 1)
  {
    v4 = sub_2769F6620(a3, 7, (a1 + 120), v35, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v39 = *(a1 + 192);
    *v4 = 64;
    if (v39 > 0x7F)
    {
      v4[1] = v39 | 0x80;
      v41 = v39 >> 7;
      if (v39 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v41 | 0x80;
          v54 = v41 >> 7;
          ++v4;
          v55 = v41 >> 14;
          v41 >>= 7;
        }

        while (v55);
        *(v4 - 1) = v54;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_92;
        }
      }

      else
      {
        v4[2] = v41;
        v4 += 3;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      v4[1] = v39;
      v4 += 2;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_92;
      }
    }

LABEL_56:
    if ((v6 & 2) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_57;
  }

  if ((v6 & 0x10) == 0)
  {
    goto LABEL_56;
  }

LABEL_92:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v56 = *(a1 + 200);
  *v4 = 72;
  if (v56 > 0x7F)
  {
    v4[1] = v56 | 0x80;
    v57 = v56 >> 7;
    if (v56 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v57 | 0x80;
        v58 = v57 >> 7;
        ++v4;
        v59 = v57 >> 14;
        v57 >>= 7;
      }

      while (v59);
      *(v4 - 1) = v58;
      if ((v6 & 2) == 0)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v4[2] = v57;
      v4 += 3;
      if ((v6 & 2) == 0)
      {
        goto LABEL_75;
      }
    }
  }

  else
  {
    v4[1] = v56;
    v4 += 2;
    if ((v6 & 2) == 0)
    {
      goto LABEL_75;
    }
  }

LABEL_57:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v36 = *(a1 + 176);
  *v4 = 82;
  v37 = *(v36 + 5);
  if (v37 > 0x7F)
  {
    v4[1] = v37 | 0x80;
    v40 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = v4 + 3;
      do
      {
        *(v38 - 1) = v40 | 0x80;
        v42 = v40 >> 7;
        ++v38;
        v43 = v40 >> 14;
        v40 >>= 7;
      }

      while (v43);
      *(v38 - 1) = v42;
    }

    else
    {
      v4[2] = v40;
      v38 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v37;
    v38 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v36, v38, a3, v35);
LABEL_75:
  v44 = *(a1 + 152);
  if (v44)
  {
    for (k = 0; k != v44; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v46 = *(*(a1 + 160) + 8 * k + 8);
      *v4 = 90;
      v47 = *(v46 + 20);
      if (v47 > 0x7F)
      {
        v4[1] = v47 | 0x80;
        v49 = v47 >> 7;
        if (v47 >> 14)
        {
          v48 = v4 + 3;
          do
          {
            *(v48 - 1) = v49 | 0x80;
            v50 = v49 >> 7;
            ++v48;
            v51 = v49 >> 14;
            v49 >>= 7;
          }

          while (v51);
          *(v48 - 1) = v50;
        }

        else
        {
          v4[2] = v49;
          v48 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v47;
        v48 = v4 + 2;
      }

      v4 = sub_2769E3BA4(v46, v48, a3);
    }
  }

  v52 = *(a1 + 8);
  if ((v52 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v52 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v35);
}

uint64_t sub_2769E873C(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    v5 = ((9 * (__clz(*(a1 + 184) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 32);
  v7 = v5 + v6;
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
      v12 = sub_2769E4448(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(a1 + 56);
  v14 = v7 + v13;
  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = sub_2769EBE58(v18, a2, a3, a4);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 72));
  v21 = 11;
  v22 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v20 >= 0)
  {
    v21 = v22;
  }

  v23 = v21 + v14;
  if (v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0;
  }

  if (!v20)
  {
    v23 = v14;
  }

  *(a1 + 88) = v24;
  v25 = v23 + v20;
  v26 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 96));
  v27 = 11;
  v28 = ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v26 >= 0)
  {
    v27 = v28;
  }

  v29 = v27 + v25;
  if (v26)
  {
    v30 = v26;
  }

  else
  {
    v30 = 0;
  }

  if (!v26)
  {
    v29 = v25;
  }

  *(a1 + 112) = v30;
  v31 = v29 + v26;
  v32 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 120));
  v36 = 11;
  v37 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v32 >= 0)
  {
    v36 = v37;
  }

  v38 = v36 + v31;
  if (v32)
  {
    v39 = v32;
  }

  else
  {
    v39 = 0;
  }

  if (v32)
  {
    v40 = v38;
  }

  else
  {
    v40 = v31;
  }

  *(a1 + 136) = v39;
  v41 = *(a1 + 152);
  v42 = (v40 + v32 + v41);
  v43 = *(a1 + 160);
  if (v43)
  {
    v44 = (v43 + 8);
  }

  else
  {
    v44 = 0;
  }

  if (v41)
  {
    v45 = 8 * v41;
    do
    {
      v46 = *v44++;
      v47 = sub_2769E4448(v46);
      v42 = (v42 + v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6));
      v45 -= 8;
    }

    while (v45);
  }

  v48 = *(a1 + 16);
  if ((v48 & 3) != 0)
  {
    if (v48)
    {
      v49 = sub_2769E9568(*(a1 + 168), v33, v34, v35);
      v42 = (&v49->ptr_ + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + v42 + 1);
    }

    if ((v48 & 2) != 0)
    {
      v50 = TSP::Reference::ByteSizeLong(*(a1 + 176), v33, v34, v35);
      v42 = (&v50->ptr_ + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + v42 + 1);
    }
  }

  if ((v48 & 0x18) != 0)
  {
    if ((v48 & 8) != 0)
    {
      v42 = (v42 + ((9 * (__clz(*(a1 + 192) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }

    if ((v48 & 0x10) != 0)
    {
      v51 = *(a1 + 200);
      v52 = ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v51 >= 0)
      {
        v53 = v52;
      }

      else
      {
        v53 = 11;
      }

      v42 = (v42 + v53);
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v42, (a1 + 20), v35);
  }

  else
  {
    *(a1 + 20) = v42;
    return v42;
  }
}

void sub_2769E8A64(const google::protobuf::Message *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E8B0C(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_2769E8B0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2769F63D8((a1 + 8), ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 24), *(a2 + 32));
    sub_2769F7118((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 48), *(a2 + 56));
    sub_2769F71D8((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  if (*(a2 + 72))
  {
    v15 = *(a1 + 72);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  if (*(a2 + 96))
  {
    v16 = *(a1 + 96);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  if (*(a2 + 120))
  {
    v17 = *(a1 + 120);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v18 = *(a2 + 152);
  if (v18)
  {
    v19 = *(a2 + 160);
    v20 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 144), *(a2 + 152));
    sub_2769F7118((a1 + 144), v20, (v19 + 8), v18, **(a1 + 160) - *(a1 + 152));
    v21 = *(a1 + 152) + v18;
    *(a1 + 152) = v21;
    v22 = *(a1 + 160);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 16);
  if ((v23 & 0x1F) != 0)
  {
    if (v23)
    {
      *(a1 + 16) |= 1u;
      v24 = *(a1 + 168);
      if (!v24)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = sub_2769F5464(v25);
        *(a1 + 168) = v24;
      }

      if (*(a2 + 168))
      {
        v26 = *(a2 + 168);
      }

      else
      {
        v26 = &unk_2812FCC78;
      }

      sub_2769E8E18(v24, v26);
      if ((v23 & 2) == 0)
      {
LABEL_21:
        if ((v23 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_43;
      }
    }

    else if ((v23 & 2) == 0)
    {
      goto LABEL_21;
    }

    *(a1 + 16) |= 2u;
    v27 = *(a1 + 176);
    if (!v27)
    {
      v28 = *(a1 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v28);
      *(a1 + 176) = v27;
    }

    if (*(a2 + 176))
    {
      v29 = *(a2 + 176);
    }

    else
    {
      v29 = &TSP::_Reference_default_instance_;
    }

    TSP::Reference::MergeFrom(v27, v29);
    if ((v23 & 4) == 0)
    {
LABEL_22:
      if ((v23 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(a1 + 184) = *(a2 + 184);
    if ((v23 & 8) == 0)
    {
LABEL_23:
      if ((v23 & 0x10) == 0)
      {
LABEL_25:
        *(a1 + 16) |= v23;
        return;
      }

LABEL_24:
      *(a1 + 200) = *(a2 + 200);
      goto LABEL_25;
    }

LABEL_44:
    *(a1 + 192) = *(a2 + 192);
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }
}

google::protobuf::Arena **sub_2769E8E18(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 24);
      *(v3 + 4) |= 1u;
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::internal::ArenaStringPtr::Set(v3 + 3, (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 4) |= v5;
          return result;
        }

LABEL_7:
        *(v3 + 10) = *(a2 + 40);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[4] = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

void sub_2769E8ECC(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769E7958(a1);

    sub_2769E8A64(a1, a2);
  }
}

void sub_2769E8F18(google::protobuf::UnknownFieldSet *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_2769E7958(a1);

    sub_2769E8B0C(a1, a2);
  }
}

uint64_t sub_2769E8F64(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    v5 = sub_2769E4E58(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = sub_2769EC864(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 152);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = sub_2769E4E58(*(*(a1 + 160) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 176));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2769E902C()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[20];
  v1 = off_2812FBC48[21];
  return result;
}

uint64_t sub_2769E9064(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C0450;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812FB9C0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB9C0);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t sub_2769E90D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  sub_2769DEC8C((a1 + 8));
  return a1;
}

void sub_2769E9148(uint64_t a1)
{
  sub_2769E90D8(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::internal *sub_2769E9188(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v31, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v31 + 1);
      v9 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v10 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_45;
      }

      v8 = TagFallback;
      v9 = v26;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_13;
        }

        v6 |= 4u;
        v20 = (v8 + 1);
        LODWORD(v19) = *v8;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_30;
        }

        v21 = *v20;
        v19 = v19 + (v21 << 7) - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v8 + 2);
LABEL_30:
          v31 = v20;
          *(a1 + 40) = v19;
          goto LABEL_35;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v8, v19);
        v31 = v29;
        *(a1 + 40) = v30;
        if (!v29)
        {
LABEL_45:
          v31 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 == 2)
        {
          if (v9 == 18)
          {
            *(a1 + 16) |= 1u;
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v17);
            v16 = google::protobuf::internal::InlineGreedyStringParser(v18, v31, a3);
          }

          else
          {
LABEL_13:
            if (v9)
            {
              v13 = (v9 & 7) == 4;
            }

            else
            {
              v13 = 1;
            }

            if (v13)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            v14 = *(a1 + 8);
            if (v14)
            {
              v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v15 = sub_2769F617C((a1 + 8));
              v8 = v31;
            }

            v16 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8, a3, v5);
          }

          v31 = v16;
          if (!v16)
          {
            goto LABEL_45;
          }

          goto LABEL_35;
        }

        if (v11 != 1 || v9 != 8)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v23 = (v8 + 1);
        v22 = *v8;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_34;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v8 + 2);
LABEL_34:
          v31 = v23;
          *(a1 + 32) = v22;
          goto LABEL_35;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v31 = v27;
        *(a1 + 32) = v28;
        if (!v27)
        {
          goto LABEL_45;
        }
      }

LABEL_35:
      if (sub_2769F6104(a3, &v31, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v31 + 2);
LABEL_6:
    v31 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v31;
}

const google::protobuf::UnknownFieldSet *sub_2769E93B8(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        if (v6)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if (v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if (v6)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  v4 = sub_2769E1AB4(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(a1 + 40);
  *v4 = 24;
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
    }

    else
    {
      v4[2] = v12;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v11;
    v4 += 2;
  }

LABEL_26:
  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

const InternalMetadata *sub_2769E9568(google::protobuf::internal *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  if ((v4 & 7) == 0)
  {
    v5 = 0;
    goto LABEL_15;
  }

  if (v4)
  {
    v6 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v5 = (v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = 0;
  if ((v4 & 2) != 0)
  {
LABEL_9:
    v5 = (v5 + ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

LABEL_10:
  if ((v4 & 4) != 0)
  {
    v9 = *(this + 10);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 = (v5 + v10);
  }

LABEL_15:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  *(this + 5) = v5;
  return v5;
}

void sub_2769E9644(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769E8E18(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_2769E96EC(google::protobuf::Arena **a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769E7A68(a1);

    sub_2769E9644(a1, a2);
  }
}

uint64_t sub_2769E9740()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[22];
  v1 = off_2812FBC48[23];
  return result;
}

void *sub_2769E9778(void *a1, uint64_t a2)
{
  *a1 = &unk_2885C0500;
  a1[1] = a2;
  a1[4] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[6] = a2;
  a1[10] = a2;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  if (atomic_load_explicit(dword_2812FBB58, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBB58);
  }

  a1[13] = 0;
  a1[14] = 0;
  a1[12] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

void sub_2769E981C(_Unwind_Exception *a1)
{
  if (*(v1 + 76) >= 1)
  {
    sub_276BD2A14(v4);
  }

  sub_2769F7094(v3);
  sub_276BD2A28((v1 + 28), v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2769E9854(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812FCCA8)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C9F670]();
    }

    v4 = *(a1 + 112);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C((a1 + 8));
  if (*(a1 + 76) >= 1)
  {
    v5 = *(a1 + 80);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  sub_2769F7094((a1 + 48));
  if (*(a1 + 28) >= 1)
  {
    v8 = *(a1 + 32);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  return a1;
}

void sub_2769E9958(uint64_t a1)
{
  sub_2769E9854(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769E9998(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  *(result + 6) = 0;
  v2 = *(result + 14);
  if (v2 >= 1)
  {
    v3 = (*(result + 8) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2769EAC9C(v4);
      --v2;
    }

    while (v2);
    *(v1 + 14) = 0;
  }

  *(v1 + 18) = 0;
  v5 = *(v1 + 4);
  if ((v5 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v8 = *(v1 + 12) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v8 = 0;
  *(v8 + 23) = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  result = TSP::UUID::Clear(*(v1 + 13));
  if ((v5 & 4) != 0)
  {
LABEL_9:
    result = TSP::Reference::Clear(*(v1 + 14));
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *sub_2769E9A80(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v35 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_2769F6104(a3, &v35, i))
    {
      return v35;
    }

    v8 = (v35 + 1);
    v9 = *v35;
    if ((*v35 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v10 = v9 + (*v8 << 7);
    v9 = v10 - 128;
    if ((*v8 & 0x80000000) == 0)
    {
      v8 = (v35 + 2);
LABEL_6:
      v35 = v8;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v10 - 128));
    v35 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v8 = TagFallback;
    v9 = v30;
LABEL_7:
    v11 = v9 >> 3;
    if (v9 >> 3 > 4)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 == 10)
      {
        v21 = (a1 + 24);
        goto LABEL_35;
      }

      if (v9 == 8)
      {
        goto LABEL_57;
      }

      goto LABEL_58;
    }

    if (v11 != 2)
    {
      if (v11 != 3 || v9 != 26)
      {
        goto LABEL_58;
      }

      v13 = (v8 - 1);
LABEL_16:
      v14 = (v13 + 1);
      v35 = (v13 + 1);
      v15 = *(a1 + 64);
      if (!v15)
      {
        v16 = *(a1 + 60);
        goto LABEL_18;
      }

      v20 = *(a1 + 56);
      v16 = *v15;
      if (v20 >= *v15)
      {
        if (v16 == *(a1 + 60))
        {
LABEL_18:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v16 + 1);
          v15 = *(a1 + 64);
          v16 = *v15;
        }

        *v15 = v16 + 1;
        v17 = sub_2769F557C(*(a1 + 48));
        v18 = *(a1 + 56);
        v19 = *(a1 + 64) + 8 * v18;
        *(a1 + 56) = v18 + 1;
        *(v19 + 8) = v17;
        v14 = v35;
      }

      else
      {
        *(a1 + 56) = v20 + 1;
        v17 = *&v15[2 * v20 + 2];
      }

      v13 = sub_276BD2054(a3, v17, v14);
      v35 = v13;
      if (!v13)
      {
        return 0;
      }

      if (*a3 <= v13 || *v13 != 26)
      {
        continue;
      }

      goto LABEL_16;
    }

    if (v9 != 18)
    {
      goto LABEL_58;
    }

    *(a1 + 16) |= 1u;
    v25 = *(a1 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 96), v25);
    v22 = google::protobuf::internal::InlineGreedyStringParser(v26, v35, a3);
LABEL_65:
    v35 = v22;
    if (!v22)
    {
      return 0;
    }
  }

  switch(v11)
  {
    case 5u:
      if (v9 != 42)
      {
        break;
      }

      *(a1 + 16) |= 2u;
      v23 = *(a1 + 104);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v24);
        *(a1 + 104) = v23;
        v8 = v35;
      }

      v22 = sub_276BD1DE4(a3, v23, v8);
      goto LABEL_65;
    case 6u:
      if (v9 != 50)
      {
        break;
      }

      *(a1 + 16) |= 4u;
      v27 = *(a1 + 112);
      if (!v27)
      {
        v28 = *(a1 + 8);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v28);
        *(a1 + 112) = v27;
        v8 = v35;
      }

      v22 = sub_276BD2124(a3, v27, v8);
      goto LABEL_65;
    case 7u:
      if (v9 == 58)
      {
        v21 = (a1 + 72);
LABEL_35:
        v22 = google::protobuf::internal::PackedUInt32Parser(v21, v8, a3, v6);
        goto LABEL_65;
      }

      if (v9 == 56)
      {
LABEL_57:
        v36 = sub_2769E000C(&v35);
        google::protobuf::RepeatedField<unsigned int>::Add();
      }

      break;
  }

LABEL_58:
  if (v9)
  {
    v31 = (v9 & 7) == 4;
  }

  else
  {
    v31 = 1;
  }

  if (!v31)
  {
    v32 = *(a1 + 8);
    if (v32)
    {
      v33 = ((v32 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v33 = sub_2769F617C((a1 + 8));
      v8 = v35;
    }

    v22 = google::protobuf::internal::UnknownFieldParse(v9, v33, v8, a3, v7);
    goto LABEL_65;
  }

  a3[10].i32[0] = v9 - 1;
  return v35;
}

const google::protobuf::UnknownFieldSet *sub_2769E9DDC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6 >= 1)
  {
    v4 = sub_2769F6620(a3, 1, (a1 + 24), v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    v4 = sub_2769E1AB4(a3, 2, (*(a1 + 96) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v10 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 26;
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

      v4 = sub_2769EB6BC(v10, v12, a3);
    }
  }

  if ((v7 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v16 = *(a1 + 104);
    *v4 = 42;
    v17 = *(v16 + 5);
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

    v4 = TSP::UUID::_InternalSerialize(v16, v18, a3, v6);
  }

  if ((v7 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v22 = *(a1 + 112);
    *v4 = 50;
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

    v4 = TSP::Reference::_InternalSerialize(v22, v24, a3, v6);
  }

  v28 = *(a1 + 88);
  if (v28 >= 1)
  {
    v4 = sub_2769F6620(a3, 7, (a1 + 72), v28, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v28);
}

uint64_t sub_2769EA0C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 96) & 0xFFFFFFFFFFFFFFFELL;
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

  v6 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 24));
  v10 = 11;
  v11 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v6 >= 0)
  {
    v10 = v11;
  }

  v12 = v10 + v2;
  if (v6)
  {
    v13 = v6;
  }

  else
  {
    v13 = 0;
  }

  if (!v6)
  {
    v12 = v2;
  }

  *(a1 + 40) = v13;
  v14 = v12 + v6;
  v15 = *(a1 + 56);
  v16 = v14 + v15;
  v17 = *(a1 + 64);
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
      v21 = sub_2769EBE58(v20, v7, v8, v9);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 72));
  v26 = 11;
  v27 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v22 >= 0)
  {
    v26 = v27;
  }

  v28 = v26 + v16;
  if (v22)
  {
    v29 = v22;
  }

  else
  {
    v29 = 0;
  }

  if (!v22)
  {
    v28 = v16;
  }

  *(a1 + 88) = v29;
  v30 = (v28 + v22);
  v31 = *(a1 + 16);
  if ((v31 & 6) != 0)
  {
    if ((v31 & 2) != 0)
    {
      v32 = TSP::UUID::ByteSizeLong(*(a1 + 104), v23, v24, v25);
      v30 = (&v32->ptr_ + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + v30 + 1);
    }

    if ((v31 & 4) != 0)
    {
      v33 = TSP::Reference::ByteSizeLong(*(a1 + 112), v23, v24, v25);
      v30 = (&v33->ptr_ + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + v30 + 1);
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v30, (a1 + 20), v25);
  }

  else
  {
    *(a1 + 20) = v30;
    return v30;
  }
}

void sub_2769EA2BC(const google::protobuf::Message *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769EA364(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_2769EA364(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2769F63D8((a1 + 8), ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 24))
  {
    v5 = *(a1 + 24);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 48), *(a2 + 56));
    sub_2769F71D8((a1 + 48), v8, (v7 + 8), v6, **(a1 + 64) - *(a1 + 56));
    v9 = *(a1 + 56) + v6;
    *(a1 + 56) = v9;
    v10 = *(a1 + 64);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 72))
  {
    v11 = *(a1 + 72);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v12 = *(a2 + 16);
  if ((v12 & 7) != 0)
  {
    if (v12)
    {
      v13 = *(a2 + 96);
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set((a1 + 96), (v13 & 0xFFFFFFFFFFFFFFFELL), v14);
      if ((v12 & 2) == 0)
      {
LABEL_13:
        if ((v12 & 4) == 0)
        {
          return;
        }

        goto LABEL_26;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 2u;
    v15 = *(a1 + 104);
    if (!v15)
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v16);
      *(a1 + 104) = v15;
    }

    if (*(a2 + 104))
    {
      v17 = *(a2 + 104);
    }

    else
    {
      v17 = &TSP::_UUID_default_instance_;
    }

    TSP::UUID::MergeFrom(v15, v17);
    if ((v12 & 4) != 0)
    {
LABEL_26:
      *(a1 + 16) |= 4u;
      v18 = *(a1 + 112);
      if (!v18)
      {
        v19 = *(a1 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v19);
        *(a1 + 112) = v18;
      }

      if (*(a2 + 112))
      {
        v20 = *(a2 + 112);
      }

      else
      {
        v20 = &TSP::_Reference_default_instance_;
      }

      TSP::Reference::MergeFrom(v18, v20);
    }
  }
}

void sub_2769EA588(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769E9998(a1);

    sub_2769EA2BC(a1, a2);
  }
}

uint64_t sub_2769EA5D4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 56);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    v5 = sub_2769EC864(*(*(a1 + 64) + 8 * v3));
    v3 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 104));
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

  result = TSP::Reference::IsInitialized(*(a1 + 112));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2769EA660()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[24];
  v1 = off_2812FBC48[25];
  return result;
}

uint64_t sub_2769EA698(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C05B0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812FB8D8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB8D8);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 1;
  return a1;
}

uint64_t sub_2769EA734(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_2885C05B0;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_2769F63D8((a1 + 8), ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 16);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v7 = *v4;
    if (*v4)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 24), (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 16);
  }

  *(a1 + 32) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 2) != 0)
  {
    v8 = *v4;
    if (*v4)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 32), (*(a2 + 32) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 16);
  }

  *(a1 + 40) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 4) != 0)
  {
    v9 = *v4;
    if (*v4)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 40), (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 16);
  }

  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 8) != 0)
  {
    v10 = *v4;
    if (*v4)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 48), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFELL), v10);
    v5 = *(a2 + 16);
  }

  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 0x10) != 0)
  {
    v11 = *v4;
    if (*v4)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 56), (*(a2 + 56) & 0xFFFFFFFFFFFFFFFELL), v11);
    v5 = *(a2 + 16);
  }

  *(a1 + 64) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 0x20) != 0)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 64), (*(a2 + 64) & 0xFFFFFFFFFFFFFFFELL), v12);
    v5 = *(a2 + 16);
  }

  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 0x40) != 0)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 72), (*(a2 + 72) & 0xFFFFFFFFFFFFFFFELL), v13);
    v5 = *(a2 + 16);
  }

  *(a1 + 80) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 0x80) != 0)
  {
    v14 = *v4;
    if (*v4)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 80), (*(a2 + 80) & 0xFFFFFFFFFFFFFFFELL), v14);
    v5 = *(a2 + 16);
  }

  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v5 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v5 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  v15 = *(a2 + 112);
  v16 = *(a2 + 128);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v15;
  *(a1 + 128) = v16;
  return a1;
}

uint64_t *sub_2769EAA18(uint64_t *a1)
{
  sub_2769EAA4C(a1);
  sub_2769DEC8C(a1 + 1);
  return a1;
}

TSP::IndexSet *sub_2769EAA4C(TSP::IndexSet *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = *(v1 + 4);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    result = MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  v4 = *(v1 + 5);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C9F670](v4, 0x1012C40EC159624);
  }

  v5 = *(v1 + 6);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C9F670](v5, 0x1012C40EC159624);
  }

  v6 = *(v1 + 7);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277C9F670](v6, 0x1012C40EC159624);
  }

  v7 = *(v1 + 8);
  if (v7 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x277C9F670](v7, 0x1012C40EC159624);
  }

  v8 = *(v1 + 9);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    result = MEMORY[0x277C9F670](v8, 0x1012C40EC159624);
  }

  v9 = *(v1 + 10);
  if (v9 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    result = MEMORY[0x277C9F670](v9, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812FCD20)
  {
    v10 = *(v1 + 11);
    if (v10)
    {
      TSP::DataAttributes::~DataAttributes(v10);
      MEMORY[0x277C9F670]();
    }

    v11 = *(v1 + 12);
    if (v11)
    {
      v12 = sub_2769EE0B8(v11);
      MEMORY[0x277C9F670](v12, 0x10A1C40D83B66D4);
    }

    result = *(v1 + 13);
    if (result)
    {
      TSP::IndexSet::~IndexSet(result);

      JUMPOUT(0x277C9F670);
    }
  }

  return result;
}

void sub_2769EAC5C(uint64_t *a1)
{
  sub_2769EAA18(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769EAC9C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      if ((v2 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v4 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
        if ((v2 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v6 = *(result + 6) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v2 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v8 = *(result + 8) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v2 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v10 = *(result + 10) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
      }

      goto LABEL_42;
    }

    v3 = *(result + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
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

LABEL_19:
    v5 = *(result + 5) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v7 = *(result + 7) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v9 = *(result + 9) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_47;
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSP::DataAttributes::Clear(*(result + 11));
    if ((v2 & 0x200) == 0)
    {
LABEL_45:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  result = sub_2769EAEEC(*(v1 + 12));
  if ((v2 & 0x400) != 0)
  {
LABEL_46:
    result = TSP::IndexSet::Clear(*(v1 + 13));
  }

LABEL_47:
  if ((v2 & 0xF800) != 0)
  {
    *(v1 + 14) = 0;
    *(v1 + 15) = 0;
    *(v1 + 16) = 0;
  }

  if ((v2 & 0x70000) != 0)
  {
    *(v1 + 17) = 0;
    *(v1 + 18) = 0;
    *(v1 + 38) = 1;
  }

  v12 = *(v1 + 8);
  v11 = v1 + 8;
  *(v11 + 2) = 0;
  if (v12)
  {

    return sub_2769F6424(v11);
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2769EAEEC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2769EE8E8(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  if ((*(v1 + 16) & 3) != 0)
  {
    *(v1 + 6) = 0;
    *(v1 + 7) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return result;
}

google::protobuf::internal *sub_2769EAF7C(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v60 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v60, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v60 + 1);
      v9 = *v60;
      if (*v60 < 0)
      {
        v10 = v9 + (*v8 << 7);
        v9 = v10 - 128;
        if (*v8 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v60, (v10 - 128));
          v60 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_133;
          }

          v8 = TagFallback;
          v9 = v15;
          goto LABEL_7;
        }

        v8 = (v60 + 2);
      }

      v60 = v8;
LABEL_7:
      switch(v9 >> 3)
      {
        case 1u:
          if (v9 != 8)
          {
            goto LABEL_19;
          }

          v6 |= 0x800u;
          v12 = (v8 + 1);
          v11 = *v8;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v12 = (v8 + 2);
LABEL_12:
            v60 = v12;
            *(a1 + 112) = v11;
            goto LABEL_113;
          }

          v54 = google::protobuf::internal::VarintParseSlow64(v8, v11);
          v60 = v54;
          *(a1 + 112) = v55;
          if (!v54)
          {
            goto LABEL_133;
          }

          goto LABEL_113;
        case 2u:
          if (v9 != 18)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 1u;
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = (a1 + 24);
          goto LABEL_111;
        case 3u:
          if (v9 != 26)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 2u;
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = (a1 + 32);
          goto LABEL_111;
        case 4u:
          if (v9 != 34)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 4u;
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = (a1 + 40);
          goto LABEL_111;
        case 5u:
          if (v9 != 42)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 8u;
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = (a1 + 48);
          goto LABEL_111;
        case 6u:
          if (v9 != 50)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x10u;
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = (a1 + 56);
          goto LABEL_111;
        case 7u:
          if (v9 != 58)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x20u;
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = (a1 + 64);
          goto LABEL_111;
        case 8u:
          if (v9 != 64)
          {
            goto LABEL_19;
          }

          v6 |= 0x1000u;
          v35 = (v8 + 1);
          v34 = *v8;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_72;
          }

          v36 = *v35;
          v34 = (v36 << 7) + v34 - 128;
          if (v36 < 0)
          {
            v52 = google::protobuf::internal::VarintParseSlow64(v8, v34);
            v60 = v52;
            *(a1 + 120) = v53 != 0;
            if (!v52)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v35 = (v8 + 2);
LABEL_72:
            v60 = v35;
            *(a1 + 120) = v34 != 0;
          }

          goto LABEL_113;
        case 9u:
          if (v9 != 72)
          {
            goto LABEL_19;
          }

          v46 = (v8 + 1);
          v45 = *v8;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_105;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v60 = google::protobuf::internal::VarintParseSlow64(v8, v45);
            if (!v60)
            {
LABEL_133:
              v60 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v46 = (v8 + 2);
LABEL_105:
            v60 = v46;
          }

          if (v45 > 1)
          {
            sub_276BD2C18((a1 + 8));
          }

          else
          {
            *(a1 + 16) |= 0x40000u;
            *(a1 + 152) = v45;
          }

          goto LABEL_113;
        case 0xAu:
          if (v9 != 82)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x100u;
          v28 = *(a1 + 88);
          if (!v28)
          {
            v29 = *(a1 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataAttributes>(v29);
            *(a1 + 88) = v28;
            v8 = v60;
          }

          v20 = sub_276BD21F4(a3, v28, v8);
          goto LABEL_112;
        case 0xBu:
          if (v9 != 90)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x200u;
          v43 = *(a1 + 96);
          if (!v43)
          {
            v44 = *(a1 + 8);
            if (v44)
            {
              v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
            }

            v43 = sub_2769F582C(v44);
            *(a1 + 96) = v43;
            v8 = v60;
          }

          v20 = sub_276BD22C4(a3, v43, v8);
          goto LABEL_112;
        case 0xCu:
          if (v9 != 98)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x40u;
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = (a1 + 72);
          goto LABEL_111;
        case 0xDu:
          if (v9 != 106)
          {
            goto LABEL_19;
          }

          *(a1 + 16) |= 0x400u;
          v26 = *(a1 + 104);
          if (!v26)
          {
            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = google::protobuf::Arena::CreateMaybeMessage<TSP::IndexSet>(v27);
            *(a1 + 104) = v26;
            v8 = v60;
          }

          v20 = sub_276BD2394(a3, v26, v8);
          goto LABEL_112;
        case 0xEu:
          if (v9 != 112)
          {
            goto LABEL_19;
          }

          v6 |= 0x8000u;
          v41 = (v8 + 1);
          v40 = *v8;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_90;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v58 = google::protobuf::internal::VarintParseSlow64(v8, v40);
            v60 = v58;
            *(a1 + 128) = v59;
            if (!v58)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v41 = (v8 + 2);
LABEL_90:
            v60 = v41;
            *(a1 + 128) = v40;
          }

          goto LABEL_113;
        case 0xFu:
          if (v9 != 120)
          {
            goto LABEL_19;
          }

          v6 |= 0x2000u;
          v22 = (v8 + 1);
          v21 = *v8;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_32;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v49 = google::protobuf::internal::VarintParseSlow64(v8, v21);
            v60 = v49;
            *(a1 + 121) = v50 != 0;
            if (!v49)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v22 = (v8 + 2);
LABEL_32:
            v60 = v22;
            *(a1 + 121) = v21 != 0;
          }

          goto LABEL_113;
        case 0x10u:
          if (v9 != 128)
          {
            goto LABEL_19;
          }

          v30 = (v8 + 1);
          v31 = *v8;
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_61;
          }

          v32 = *v30;
          v33 = (v32 << 7) + v31;
          v31 = (v33 - 128);
          if (v32 < 0)
          {
            v60 = google::protobuf::internal::VarintParseSlow64(v8, (v33 - 128));
            if (!v60)
            {
              goto LABEL_133;
            }

            v31 = v51;
          }

          else
          {
            v30 = (v8 + 2);
LABEL_61:
            v60 = v30;
          }

          if (TSP::DataUploadStatus_IsValid(v31))
          {
            *(a1 + 16) |= 0x4000u;
            *(a1 + 124) = v31;
          }

          else
          {
            sub_276BD2C54((a1 + 8));
          }

          goto LABEL_113;
        case 0x11u:
          if (v9 != 137)
          {
            goto LABEL_19;
          }

          v6 |= 0x10000u;
          *(a1 + 136) = *v8;
          v60 = (v8 + 8);
          goto LABEL_113;
        case 0x12u:
          if (v9 != 144)
          {
            goto LABEL_19;
          }

          v6 |= 0x20000u;
          v38 = (v8 + 1);
          v37 = *v8;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_81;
          }

          v39 = *v38;
          v37 = (v39 << 7) + v37 - 128;
          if (v39 < 0)
          {
            v56 = google::protobuf::internal::VarintParseSlow64(v8, v37);
            v60 = v56;
            *(a1 + 144) = v57;
            if (!v56)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v38 = (v8 + 2);
LABEL_81:
            v60 = v38;
            *(a1 + 144) = v37;
          }

          goto LABEL_113;
        default:
          if (v9 >> 3 == 99 && v9 == 26)
          {
            *(a1 + 16) |= 0x80u;
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = (a1 + 80);
LABEL_111:
            v48 = google::protobuf::internal::ArenaStringPtr::Mutable(v25, v24);
            v20 = google::protobuf::internal::InlineGreedyStringParser(v48, v60, a3);
          }

          else
          {
LABEL_19:
            if (v9)
            {
              v17 = (v9 & 7) == 4;
            }

            else
            {
              v17 = 1;
            }

            if (v17)
            {
              a3[10].i32[0] = v9 - 1;
              goto LABEL_2;
            }

            v18 = *(a1 + 8);
            if (v18)
            {
              v19 = ((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v19 = sub_2769F617C((a1 + 8));
              v8 = v60;
            }

            v20 = google::protobuf::internal::UnknownFieldParse(v9, v19, v8, a3, v5);
          }

LABEL_112:
          v60 = v20;
          if (!v20)
          {
            goto LABEL_133;
          }

LABEL_113:
          if (sub_2769F6104(a3, &v60, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v60;
}

const google::protobuf::UnknownFieldSet *sub_2769EB6BC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 0x800) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(a1 + 112);
    *v4 = 8;
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v10 = v9 >> 7;
      if (v9 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v4;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v4 - 1) = v11;
        if (v6)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if (v6)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v4[1] = v9;
      v4 += 2;
      if (v6)
      {
        goto LABEL_34;
      }
    }

LABEL_3:
    if ((v6 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_35;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_34:
  v4 = sub_2769E1AB4(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  v4 = sub_2769E1AB4(a3, 3, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  v4 = sub_2769E1AB4(a3, 4, (*(a1 + 40) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  v4 = sub_2769E1AB4(a3, 5, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  v4 = sub_2769E1AB4(a3, 6, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  v4 = sub_2769E1AB4(a3, 7, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x1000) == 0)
  {
LABEL_9:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

LABEL_43:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v14 = *(a1 + 152);
    *v4 = 72;
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v15 = v14 >> 7;
      if (v14 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v15 | 0x80;
          v16 = v15 >> 7;
          ++v4;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
        *(v4 - 1) = v16;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v4[2] = v15;
        v4 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      v4[1] = v14;
      v4 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_54;
      }
    }

LABEL_11:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 120);
  *v4 = 64;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_43;
  }

LABEL_10:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_11;
  }

LABEL_54:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v18 = *(a1 + 88);
  *v4 = 82;
  v19 = *(v18 + 10);
  if (v19 > 0x7F)
  {
    v4[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = v4 + 3;
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
      v4[2] = v21;
      v20 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v19;
    v20 = v4 + 2;
  }

  v4 = TSP::DataAttributes::_InternalSerialize(v18, v20, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_12:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_74;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(a1 + 96);
  *v4 = 90;
  v25 = *(v24 + 20);
  if (v25 > 0x7F)
  {
    v4[1] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      v26 = v4 + 3;
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
      v4[2] = v27;
      v26 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v25;
    v26 = v4 + 2;
  }

  v4 = sub_2769EE3F0(v24, v26, a3, v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_13:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_75;
  }

LABEL_74:
  v4 = sub_2769E1AB4(a3, 12, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x400) == 0)
  {
LABEL_14:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

LABEL_85:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v36 = *(a1 + 128);
    *v4 = 112;
    if (v36 > 0x7F)
    {
      v4[1] = v36 | 0x80;
      v37 = v36 >> 7;
      if (v36 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v37 | 0x80;
          v38 = v37 >> 7;
          ++v4;
          v39 = v37 >> 14;
          v37 >>= 7;
        }

        while (v39);
        *(v4 - 1) = v38;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_96;
        }
      }

      else
      {
        v4[2] = v37;
        v4 += 3;
        if ((v6 & 0x2000) != 0)
        {
          goto LABEL_96;
        }
      }
    }

    else
    {
      v4[1] = v36;
      v4 += 2;
      if ((v6 & 0x2000) != 0)
      {
        goto LABEL_96;
      }
    }

LABEL_16:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

LABEL_99:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v41 = *(a1 + 124);
    *v4 = 384;
    if (v41 > 0x7F)
    {
      v4[2] = v41 | 0x80;
      v42 = v41 >> 7;
      if (v41 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v42 | 0x80;
          v43 = v42 >> 7;
          ++v4;
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
        *(v4 - 1) = v43;
        if ((v6 & 0x10000) != 0)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v4[3] = v42;
        v4 += 4;
        if ((v6 & 0x10000) != 0)
        {
          goto LABEL_110;
        }
      }
    }

    else
    {
      v4[2] = v41;
      v4 += 3;
      if ((v6 & 0x10000) != 0)
      {
        goto LABEL_110;
      }
    }

LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_113;
  }

LABEL_75:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v30 = *(a1 + 104);
  *v4 = 106;
  v31 = *(v30 + 10);
  if (v31 > 0x7F)
  {
    v4[1] = v31 | 0x80;
    v33 = v31 >> 7;
    if (v31 >> 14)
    {
      v32 = v4 + 3;
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
      v4[2] = v33;
      v32 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v31;
    v32 = v4 + 2;
  }

  v4 = TSP::IndexSet::_InternalSerialize(v30, v32, a3, v4);
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_85;
  }

LABEL_15:
  if ((v6 & 0x2000) == 0)
  {
    goto LABEL_16;
  }

LABEL_96:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v40 = *(a1 + 121);
  *v4 = 120;
  v4[1] = v40;
  v4 += 2;
  if ((v6 & 0x4000) != 0)
  {
    goto LABEL_99;
  }

LABEL_17:
  if ((v6 & 0x10000) == 0)
  {
    goto LABEL_18;
  }

LABEL_110:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(a1 + 136);
  *v4 = 393;
  *(v4 + 2) = v45;
  v4 += 10;
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_113:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v46 = *(a1 + 144);
  *v4 = 400;
  if (v46 <= 0x7F)
  {
    v4[2] = v46;
    v4 += 3;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    v4 = sub_2769E1AB4(a3, 99, (*(a1 + 80) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_21;
  }

  v4[2] = v46 | 0x80;
  v47 = v46 >> 7;
  if (v46 >> 14)
  {
    v4 += 4;
    do
    {
      *(v4 - 1) = v47 | 0x80;
      v48 = v47 >> 7;
      ++v4;
      v49 = v47 >> 14;
      v47 >>= 7;
    }

    while (v49);
    *(v4 - 1) = v48;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v4[3] = v47;
    v4 += 4;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_2769EBD98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
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
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v1 & 0x800) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_2769EBE58(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(a1 + 16);
  if ((~v5 & 0x803) != 0)
  {
    v13 = sub_2769EBD98(a1);
  }

  else
  {
    v6 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    v10 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v13 = (v8 + v12 + v9 + ((9 * (__clz(*(a1 + 112) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 3);
  }

  if ((v5 & 0xFC) == 0)
  {
    goto LABEL_18;
  }

  if ((v5 & 4) != 0)
  {
    v23 = *(a1 + 40) & 0xFFFFFFFFFFFFFFFELL;
    v24 = *(v23 + 23);
    v25 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v25 = v24;
    }

    v13 = (v13 + v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v5 & 8) == 0)
    {
LABEL_11:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_11;
  }

  v26 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  v27 = *(v26 + 23);
  v28 = *(v26 + 8);
  if ((v27 & 0x80u) == 0)
  {
    v28 = v27;
  }

  v13 = (v13 + v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v5 & 0x10) == 0)
  {
LABEL_12:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_48:
    v32 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v33 = *(v32 + 23);
    v34 = *(v32 + 8);
    if ((v33 & 0x80u) == 0)
    {
      v34 = v33;
    }

    v13 = (v13 + v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v5 & 0x40) == 0)
    {
LABEL_14:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_45:
  v29 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(v29 + 23);
  v31 = *(v29 + 8);
  if ((v30 & 0x80u) == 0)
  {
    v31 = v30;
  }

  v13 = (v13 + v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_48;
  }

LABEL_13:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_51:
  v35 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(v35 + 23);
  v37 = *(v35 + 8);
  if ((v36 & 0x80u) == 0)
  {
    v37 = v36;
  }

  v13 = (v13 + v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v5 & 0x80) != 0)
  {
LABEL_15:
    v14 = *(a1 + 80) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v13 = (v13 + v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

LABEL_18:
  if ((v5 & 0x700) == 0)
  {
    goto LABEL_23;
  }

  if ((v5 & 0x100) != 0)
  {
    v38 = TSP::DataAttributes::ByteSizeLong(*(a1 + 88));
    v13 = (&v38->ptr_ + v13 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v5 & 0x200) == 0)
    {
LABEL_21:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  v39 = sub_2769EE628(*(a1 + 96), a2, a3, a4);
  v13 = (v13 + v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v5 & 0x400) != 0)
  {
LABEL_22:
    v17 = TSP::IndexSet::ByteSizeLong(*(a1 + 104), a2, a3, a4);
    v13 = (&v17->ptr_ + v13 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

LABEL_23:
  if ((v5 & 0xF000) != 0)
  {
    v13 = (v13 + ((v5 >> 12) & 2) + ((v5 >> 11) & 2));
    if ((v5 & 0x4000) != 0)
    {
      v18 = *(a1 + 124);
      v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 12;
      }

      v13 = (v13 + v20);
    }

    if ((v5 & 0x8000) != 0)
    {
      v13 = (v13 + ((9 * (__clz(*(a1 + 128) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }
  }

  if ((v5 & 0x70000) != 0)
  {
    if ((v5 & 0x10000) != 0)
    {
      v13 = (v13 + 10);
    }

    if ((v5 & 0x20000) != 0)
    {
      v13 = (v13 + ((9 * (__clz(*(a1 + 144) | 1) ^ 0x3F) + 73) >> 6) + 2);
    }

    if ((v5 & 0x40000) != 0)
    {
      v21 = *(a1 + 152);
      if (v21 < 0)
      {
        v22 = 11;
      }

      else
      {
        v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v13 = (v13 + v22);
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v13, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v13;
    return v13;
  }
}

void sub_2769EC2AC(const google::protobuf::Message *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769EC354(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_2769EC354(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    sub_2769F63D8((a1 + 8), ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_37;
  }

  if (v5)
  {
    v6 = *(a2 + 24);
    *(a1 + 16) |= 1u;
    v7 = *(a1 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 24), (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(a2 + 32);
  *(a1 + 16) |= 2u;
  v9 = *(a1 + 8);
  if (v9)
  {
    v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((a1 + 32), (v8 & 0xFFFFFFFFFFFFFFFELL), v9);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_19:
  v10 = *(a2 + 40);
  *(a1 + 16) |= 4u;
  v11 = *(a1 + 8);
  if (v11)
  {
    v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((a1 + 40), (v10 & 0xFFFFFFFFFFFFFFFELL), v11);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_22:
  v12 = *(a2 + 48);
  *(a1 + 16) |= 8u;
  v13 = *(a1 + 8);
  if (v13)
  {
    v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((a1 + 48), (v12 & 0xFFFFFFFFFFFFFFFELL), v13);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_28:
    v16 = *(a2 + 64);
    *(a1 + 16) |= 0x20u;
    v17 = *(a1 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    goto LABEL_31;
  }

LABEL_25:
  v14 = *(a2 + 56);
  *(a1 + 16) |= 0x10u;
  v15 = *(a1 + 8);
  if (v15)
  {
    v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_28;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  v18 = *(a2 + 72);
  *(a1 + 16) |= 0x40u;
  v19 = *(a1 + 8);
  if (v19)
  {
    v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
  }

  google::protobuf::internal::ArenaStringPtr::Set((a1 + 72), (v18 & 0xFFFFFFFFFFFFFFFELL), v19);
  if ((v5 & 0x80) != 0)
  {
LABEL_34:
    v20 = *(a2 + 80);
    *(a1 + 16) |= 0x80u;
    v21 = *(a1 + 8);
    if (v21)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set((a1 + 80), (v20 & 0xFFFFFFFFFFFFFFFELL), v21);
  }

LABEL_37:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_48;
  }

  if ((v5 & 0x100) != 0)
  {
    *(a1 + 16) |= 0x100u;
    v22 = *(a1 + 88);
    if (!v22)
    {
      v23 = *(a1 + 8);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataAttributes>(v23);
      *(a1 + 88) = v22;
    }

    if (*(a2 + 88))
    {
      v24 = *(a2 + 88);
    }

    else
    {
      v24 = TSP::_DataAttributes_default_instance_;
    }

    TSP::DataAttributes::MergeFrom(v22, v24);
    if ((v5 & 0x200) == 0)
    {
LABEL_40:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_71;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_40;
  }

  *(a1 + 16) |= 0x200u;
  v25 = *(a1 + 96);
  if (!v25)
  {
    v26 = *(a1 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = sub_2769F582C(v26);
    *(a1 + 96) = v25;
  }

  if (*(a2 + 96))
  {
    v27 = *(a2 + 96);
  }

  else
  {
    v27 = qword_2812FCE38;
  }

  sub_2769EC6FC(v25, v27);
  if ((v5 & 0x400) == 0)
  {
LABEL_41:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_79;
  }

LABEL_71:
  *(a1 + 16) |= 0x400u;
  v28 = *(a1 + 104);
  if (!v28)
  {
    v29 = *(a1 + 8);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = google::protobuf::Arena::CreateMaybeMessage<TSP::IndexSet>(v29);
    *(a1 + 104) = v28;
  }

  if (*(a2 + 104))
  {
    v30 = *(a2 + 104);
  }

  else
  {
    v30 = &TSP::_IndexSet_default_instance_;
  }

  TSP::IndexSet::MergeFrom(v28, v30);
  if ((v5 & 0x800) == 0)
  {
LABEL_42:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(a1 + 112) = *(a2 + 112);
  if ((v5 & 0x1000) == 0)
  {
LABEL_43:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(a1 + 120) = *(a2 + 120);
  if ((v5 & 0x2000) == 0)
  {
LABEL_44:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_45;
    }

LABEL_82:
    *(a1 + 124) = *(a2 + 124);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_81:
  *(a1 + 121) = *(a2 + 121);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_82;
  }

LABEL_45:
  if ((v5 & 0x8000) != 0)
  {
LABEL_46:
    *(a1 + 128) = *(a2 + 128);
  }

LABEL_47:
  *(a1 + 16) |= v5;
LABEL_48:
  if ((v5 & 0x70000) == 0)
  {
    return;
  }

  if ((v5 & 0x10000) == 0)
  {
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_51;
    }

LABEL_85:
    *(a1 + 144) = *(a2 + 144);
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  *(a1 + 136) = *(a2 + 136);
  if ((v5 & 0x20000) != 0)
  {
    goto LABEL_85;
  }

LABEL_51:
  if ((v5 & 0x40000) != 0)
  {
LABEL_52:
    *(a1 + 152) = *(a2 + 152);
  }

LABEL_53:
  *(a1 + 16) |= v5;
}

google::protobuf::Arena **sub_2769EC6FC(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 3), *(a2 + 32));
    result = sub_2769F7474(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = v3[5];
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
      v3[6] = *(a2 + 48);
    }

    if ((v10 & 2) != 0)
    {
      v3[7] = *(a2 + 56);
    }

    *(v3 + 4) |= v10;
  }

  return result;
}

void sub_2769EC7CC(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769EAC9C(a1);

    sub_2769EC2AC(a1, a2);
  }
}

void sub_2769EC818(google::protobuf::UnknownFieldSet *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_2769EAC9C(a1);

    sub_2769EC354(a1, a2);
  }
}

uint64_t sub_2769EC864(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((~v1 & 0x803) != 0)
  {
    return 0;
  }

  if ((v1 & 0x100) != 0)
  {
    result = TSP::DataAttributes::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 0x200) != 0)
  {
    v4 = *(a1 + 96);
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    while (v5 >= 1)
    {
      v7 = *(v6 + 8 * v5--);
      if ((*(v7 + 16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  if ((v1 & 0x400) == 0)
  {
    return 1;
  }

  result = TSP::IndexSet::IsInitialized(*(a1 + 104));
  if (result)
  {
    return 1;
  }

  return result;
}

BOOL sub_2769EC8F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 40) + 8 * v1--);
  }

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t sub_2769EC928()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[26];
  v1 = off_2812FBC48[27];
  return result;
}

uint64_t *sub_2769EC960(uint64_t *a1)
{
  if (a1 != qword_2812FCDC0)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(a1 + 1);
  return a1;
}

void sub_2769EC9C4(uint64_t *a1)
{
  sub_2769EC960(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769ECA04(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = TSP::Reference::Clear(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 3) = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2769F6424(v2);
  }

  return result;
}

google::protobuf::internal *sub_2769ECA64(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v25 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v25, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v25 + 1);
      v9 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v10 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 == 18)
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

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v17);
            *(a1 + 24) = v16;
            v8 = v25;
          }

          v15 = sub_276BD2124(a3, v16, v8);
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C((a1 + 8));
            v8 = v25;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8, a3, v5);
        }

        v25 = v15;
        if (!v15)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      if (v9 >> 3 != 1 || v9 != 8)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v19 = (v8 + 1);
      v18 = *v8;
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v20 = *v19;
      v18 = (v20 << 7) + v18 - 128;
      if ((v20 & 0x80000000) == 0)
      {
        v19 = (v8 + 2);
LABEL_30:
        v25 = v19;
        *(a1 + 32) = v18;
        goto LABEL_31;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v8, v18);
      v25 = v23;
      *(a1 + 32) = v24;
      if (!v23)
      {
LABEL_39:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_2769F6104(a3, &v25, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v25 + 2);
LABEL_6:
    v25 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v25;
}

const google::protobuf::UnknownFieldSet *sub_2769ECC40(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v13 = v8 >> 7;
        ++a2;
        v14 = v8 >> 14;
        v8 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v6 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 24);
  *a2 = 18;
  v10 = *(v9 + 5);
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
        v15 = v12 >> 7;
        ++v11;
        v16 = v12 >> 14;
        v12 >>= 7;
      }

      while (v16);
      *(v11 - 1) = v15;
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

  a2 = TSP::Reference::_InternalSerialize(v9, v11, a3, a4);
LABEL_24:
  v17 = *(a1 + 8);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769ECDC8(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = TSP::Reference::ByteSizeLong(*(a1 + 24), a2, a3, a4);
    result = &v7->ptr_ + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v5 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_2769ECE4C(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v7 = sub_2769ECDC8(a1, a2, a3, a4);
  }

  else
  {
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 24), a2, a3, a4);
    v7 = (&v5->ptr_ + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v7, (a1 + 20), v6);
  }

  else
  {
    *(a1 + 20) = v7;
    return v7;
  }
}

void sub_2769ECF04(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769ECFAC(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769ECFAC(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 4) |= 1u;
      v6 = v3[3];
      if (!v6)
      {
        v7 = v3[1];
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v7);
        v3[3] = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &TSP::_Reference_default_instance_;
      }

      result = TSP::Reference::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      v3[4] = *(a2 + 32);
    }

    *(v3 + 4) |= v5;
  }

  return result;
}

void sub_2769ED060(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769ECA04(a1);

    sub_2769ECF04(a1, a2);
  }
}

uint64_t sub_2769ED0AC(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(*(a1 + 24));
  }
}

uint64_t sub_2769ED0CC()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[28];
  v1 = off_2812FBC48[29];
  return result;
}

uint64_t sub_2769ED104(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C0710;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812FB928, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB928);
  }

  return a1;
}

uint64_t sub_2769ED190(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));
  sub_2769F7298((a1 + 16));
  return a1;
}

void sub_2769ED1D0(uint64_t a1)
{
  sub_2769ED190(a1);

  JUMPOUT(0x277C9F670);
}

void *sub_2769ED210()
{
  if (atomic_load_explicit(dword_2812FB928, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB928);
  }

  return &unk_2812FCDE8;
}

google::protobuf::UnknownFieldSet *sub_2769ED250(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2769ECA04(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return result;
}

google::protobuf::internal *sub_2769ED2CC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  if ((sub_2769F6104(a3, &v23, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      v7 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v21;
LABEL_6:
      if (v7 == 10)
      {
        v12 = (v6 - 1);
        while (1)
        {
          v13 = (v12 + 1);
          v23 = (v12 + 1);
          v14 = *(a1 + 32);
          if (!v14)
          {
            break;
          }

          v19 = *(a1 + 24);
          v15 = *v14;
          if (v19 < *v14)
          {
            *(a1 + 24) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v14 = v15 + 1;
          v16 = sub_2769F5608(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD2464(a3, v16, v13);
          v23 = v12;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 10)
          {
            goto LABEL_14;
          }
        }

        v15 = *(a1 + 28);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v15 + 1);
        v14 = *(a1 + 32);
        v15 = *v14;
        goto LABEL_20;
      }

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
        return v23;
      }

      v10 = *(a1 + 8);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v11 = sub_2769F617C((a1 + 8));
        v6 = v23;
      }

      v23 = google::protobuf::internal::UnknownFieldParse(v7, v11, v6, a3, v5);
      if (!v23)
      {
        return 0;
      }

LABEL_14:
      if (sub_2769F6104(a3, &v23, *(a3 + 92)))
      {
        return v23;
      }
    }

    v6 = (v23 + 2);
LABEL_5:
    v23 = v6;
    goto LABEL_6;
  }

  return v23;
}

const google::protobuf::UnknownFieldSet *sub_2769ED49C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = sub_2769ECC40(v8, v10, a3, a4);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769ED5C0(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = sub_2769ECE4C(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v5, (a1 + 40), a4);
  }

  else
  {
    *(a1 + 40) = v5;
    return v5;
  }
}

void sub_2769ED678(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769ED720(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769ED720(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 2), v5);
    result = sub_2769F731C(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
    v8 = *(v3 + 6) + v5;
    *(v3 + 6) = v8;
    v9 = v3[4];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_2769ED7C0(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769ED250(a1);

    sub_2769ED678(a1, a2);
  }
}

BOOL sub_2769ED814(uint64_t a1)
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

  while ((TSP::Reference::IsInitialized(*(v4 + 24)) & 1) != 0);
  return v3 < 1;
}

uint64_t sub_2769ED87C()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[30];
  v1 = off_2812FBC48[31];
  return result;
}

void *sub_2769ED8B4(void *a1, uint64_t a2)
{
  *a1 = &unk_2885C07C0;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812FB908, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB908);
  }

  a1[3] = 0;
  return a1;
}

uint64_t *sub_2769ED91C(uint64_t *a1)
{
  if (a1 != qword_2812FCE18)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Color::~Color(v2);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(a1 + 1);
  return a1;
}

void sub_2769ED980(uint64_t *a1)
{
  sub_2769ED91C(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t *sub_2769ED9C0()
{
  if (atomic_load_explicit(dword_2812FB908, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB908);
  }

  return qword_2812FCE18;
}

google::protobuf::UnknownFieldSet *sub_2769EDA00(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = TSP::Color::Clear(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2769F6424(v2);
  }

  return result;
}

google::protobuf::internal *sub_2769EDA5C(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v19 = a2;
  for (i = *(a3 + 23); (sub_2769F6104(a3, &v19, i) & 1) == 0; i = *(a3 + 23))
  {
    v7 = (v19 + 1);
    v8 = *v19;
    if (*v19 < 0)
    {
      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if (*v7 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v9 - 128));
        v19 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v7 = TagFallback;
        v8 = v17;
        goto LABEL_7;
      }

      v7 = (v19 + 2);
    }

    v19 = v7;
LABEL_7:
    if (v8 == 10)
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSP::Color>(v15);
        *(a1 + 24) = v14;
        v7 = v19;
      }

      v13 = sub_276BD2534(a3, v14, v7);
    }

    else
    {
      if (v8)
      {
        v10 = (v8 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 20) = v8 - 1;
        return v19;
      }

      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v12 = sub_2769F617C((a1 + 8));
        v7 = v19;
      }

      v13 = google::protobuf::internal::UnknownFieldParse(v8, v12, v7, a3, v6);
    }

    v19 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v19;
}

const google::protobuf::UnknownFieldSet *sub_2769EDBA4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(a1 + 16))
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

    a2 = TSP::Color::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(a1 + 8);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769EDC94(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if (*(a1 + 16))
  {
    v6 = TSP::Color::ByteSizeLong(*(a1 + 24), a2, a3, a4);
    v5 = (&v6->ptr_ + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v5, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

void sub_2769EDD20(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769EDDC8(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769EDDC8(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 4) |= 1u;
    v6 = v3[3];
    if (!v6)
    {
      v7 = v3[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSP::Color>(v7);
      v3[3] = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSP::_Color_default_instance_;
    }

    return TSP::Color::MergeFrom(v6, v8);
  }

  return result;
}

void sub_2769EDE70(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769EDA00(a1);

    sub_2769EDD20(a1, a2);
  }
}

uint64_t sub_2769EDEBC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2769EDEEC()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[32];
  v1 = off_2812FBC48[33];
  return result;
}

void *sub_2769EDF24(void *a1, uint64_t a2)
{
  *a1 = &unk_2885C0870;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(dword_2812FB9F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB9F0);
  }

  a1[6] = 0;
  a1[7] = 0;
  return a1;
}

uint64_t sub_2769EDFB0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_2885C0870;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 24), *(a2 + 32));
    sub_2769F7474((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 8);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_2769EE0B8(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));
  sub_2769F73DC((a1 + 24));
  return a1;
}

void sub_2769EE0F8(uint64_t a1)
{
  sub_2769EE0B8(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::internal *sub_2769EE138(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v36, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v36 + 1);
      v9 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v10 - 128));
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_54;
      }

      v8 = TagFallback;
      v9 = v31;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 26)
        {
LABEL_13:
          if (v9)
          {
            v13 = (v9 & 7) == 4;
          }

          else
          {
            v13 = 1;
          }

          if (v13)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v14 = *(a1 + 8);
          if (v14)
          {
            v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v15 = sub_2769F617C((a1 + 8));
            v8 = v36;
          }

          v36 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8, a3, v5);
          if (!v36)
          {
LABEL_54:
            v36 = 0;
            goto LABEL_2;
          }

          goto LABEL_44;
        }

        v19 = (v8 - 1);
        while (2)
        {
          v20 = (v19 + 1);
          v36 = (v19 + 1);
          v21 = *(a1 + 40);
          if (!v21)
          {
            v22 = *(a1 + 36);
            goto LABEL_30;
          }

          v26 = *(a1 + 32);
          v22 = *v21;
          if (v26 >= *v21)
          {
            if (v22 == *(a1 + 36))
            {
LABEL_30:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v22 + 1);
              v21 = *(a1 + 40);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = sub_2769F58B8(*(a1 + 24));
            v24 = *(a1 + 32);
            v25 = *(a1 + 40) + 8 * v24;
            *(a1 + 32) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v36;
          }

          else
          {
            *(a1 + 32) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
          }

          v19 = sub_276BD2604(a3, v23, v20);
          v36 = v19;
          if (!v19)
          {
            goto LABEL_54;
          }

          if (*a3 <= v19 || *v19 != 26)
          {
            goto LABEL_44;
          }

          continue;
        }
      }

      if (v11 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v17 = (v8 + 1);
        v16 = *v8;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_25:
          v36 = v17;
          *(a1 + 56) = v16;
          goto LABEL_44;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v36 = v32;
        *(a1 + 56) = v33;
        if (!v32)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v11 != 1 || v9 != 8)
        {
          goto LABEL_13;
        }

        v6 |= 1u;
        v28 = (v8 + 1);
        v27 = *v8;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_43;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v28 = (v8 + 2);
LABEL_43:
          v36 = v28;
          *(a1 + 48) = v27;
          goto LABEL_44;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v8, v27);
        v36 = v34;
        *(a1 + 48) = v35;
        if (!v34)
        {
          goto LABEL_54;
        }
      }

LABEL_44:
      if (sub_2769F6104(a3, &v36, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v36 + 2);
LABEL_6:
    v36 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v36;
}

const google::protobuf::UnknownFieldSet *sub_2769EE3F0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 48);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v11 = v8 >> 7;
        ++a2;
        v12 = v8 >> 14;
        v8 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 56);
  *a2 = 16;
  if (v9 > 0x7F)
  {
    a2[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++a2;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v9;
    a2 += 2;
  }

LABEL_23:
  v15 = *(a1 + 32);
  if (v15)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v17 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 26;
      v18 = *(v17 + 20);
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

      a2 = sub_2769EEAF4(v17, v19, a3, a4);
    }
  }

  v23 = *(a1 + 8);
  if ((v23 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v23 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769EE628(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v5)
  {
    v8 = 8 * v5;
    do
    {
      v9 = *v7++;
      v10 = sub_2769EEC6C(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(a1 + 16);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v5 = (v5 + ((9 * (__clz(*(a1 + 48) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }

    if ((v11 & 2) != 0)
    {
      v5 = (v5 + ((9 * (__clz(*(a1 + 56) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v5, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}