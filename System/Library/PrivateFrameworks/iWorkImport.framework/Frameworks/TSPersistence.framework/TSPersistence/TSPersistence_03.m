void sub_2769EE734(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769EC6FC(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_2769EE7DC(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769EAEEC(a1);

    sub_2769EE734(a1, a2);
  }
}

uint64_t sub_2769EE828()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[34];
  v1 = off_2812FBC48[35];
  return result;
}

void sub_2769EE890(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769EE8E8(uint64_t a1)
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
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *sub_2769EE90C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        v16 = (v8 + 1);
        v15 = *v8;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_24:
          v27 = v16;
          *(a1 + 32) = v15;
          goto LABEL_29;
        }

        v23 = google::protobuf::internal::VarintParseSlow64(v8, v15);
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

const google::protobuf::UnknownFieldSet *sub_2769EEAF4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

const InternalMetadata *sub_2769EEC6C(google::protobuf::internal *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  if (v4)
  {
    v5 = (((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 1);
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 0;
  if ((v4 & 2) != 0)
  {
LABEL_5:
    v5 = (v5 + ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

LABEL_6:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  *(this + 5) = v5;
  return v5;
}

void sub_2769EECE8(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769EED90(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769EED90(google::protobuf::Arena **result, uint64_t a2)
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
      v3[4] = *(a2 + 32);
    }

    *(v3 + 4) |= v5;
  }

  return result;
}

void sub_2769EEDFC(google::protobuf::Arena **a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769EE8E8(a1);

    sub_2769EECE8(a1, a2);
  }
}

uint64_t sub_2769EEE54()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[36];
  v1 = off_2812FBC48[37];
  return result;
}

void *sub_2769EEE8C(void *a1, uint64_t a2)
{
  *a1 = &unk_2885C09D0;
  a1[1] = a2;
  a1[4] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[6] = a2;
  a1[10] = a2;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  if (atomic_load_explicit(dword_2812FBBC0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBBC0);
  }

  a1[12] = 0;
  a1[13] = 0;
  return a1;
}

void sub_2769EEF24(_Unwind_Exception *a1)
{
  if (*(v1 + 76) >= 1)
  {
    sub_276BD2A14(v4);
  }

  sub_2769F6AB0(v3);
  sub_276BD2A28((v1 + 28), v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2769EEF60(uint64_t a1)
{
  if (a1 != qword_2812FCEA0)
  {
    v2 = *(a1 + 96);
    if (v2)
    {
      v3 = sub_2769E2E70(v2);
      MEMORY[0x277C9F670](v3, 0x10A1C402CD0F650);
    }

    v4 = *(a1 + 104);
    if (v4)
    {
      TSP::UUID::~UUID(v4);
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

  sub_2769F6AB0((a1 + 48));
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

void sub_2769EF028(uint64_t a1)
{
  sub_2769EEF60(a1);

  JUMPOUT(0x277C9F670);
}

void *sub_2769EF068()
{
  if (atomic_load_explicit(dword_2812FBBC0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBBC0);
  }

  return qword_2812FCEA0;
}

google::protobuf::UnknownFieldSet *sub_2769EF0A8(google::protobuf::UnknownFieldSet *result)
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
      result = sub_2769E6758(v4);
      --v2;
    }

    while (v2);
    *(v1 + 14) = 0;
  }

  *(v1 + 18) = 0;
  v5 = *(v1 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = sub_2769E301C(*(v1 + 12));
    }

    if ((v5 & 2) != 0)
    {
      result = TSP::UUID::Clear(*(v1 + 13));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *sub_2769EF154(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  for (i = *(a3 + 92); ; i = *(a3 + 92))
  {
    if (sub_2769F6104(a3, &v33, i))
    {
      return v33;
    }

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
      v8 = (v33 + 2);
LABEL_6:
      v33 = v8;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v10 - 128));
    v33 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v8 = TagFallback;
    v9 = v28;
LABEL_7:
    v11 = v9 >> 3;
    if (v9 >> 3 <= 3)
    {
      break;
    }

    if (v11 != 4)
    {
      if (v11 != 5)
      {
        if (v11 == 6)
        {
          if (v9 == 50)
          {
            v12 = (a1 + 72);
LABEL_46:
            v16 = google::protobuf::internal::PackedUInt32Parser(v12, v8, a3, v6);
            goto LABEL_60;
          }

          if (v9 == 48)
          {
LABEL_52:
            v34 = sub_2769E000C(&v33);
            google::protobuf::RepeatedField<unsigned int>::Add();
          }
        }

        goto LABEL_53;
      }

      if (v9 != 42)
      {
        goto LABEL_53;
      }

      v19 = (v8 - 1);
      while (1)
      {
        v20 = (v19 + 1);
        v33 = (v19 + 1);
        v21 = *(a1 + 64);
        if (!v21)
        {
          break;
        }

        v26 = *(a1 + 56);
        v22 = *v21;
        if (v26 < *v21)
        {
          *(a1 + 56) = v26 + 1;
          v23 = *&v21[2 * v26 + 2];
          goto LABEL_38;
        }

        if (v22 == *(a1 + 60))
        {
          goto LABEL_34;
        }

LABEL_35:
        *v21 = v22 + 1;
        v23 = sub_2769F5280(*(a1 + 48));
        v24 = *(a1 + 56);
        v25 = *(a1 + 64) + 8 * v24;
        *(a1 + 56) = v24 + 1;
        *(v25 + 8) = v23;
        v20 = v33;
LABEL_38:
        v19 = sub_276BD1B74(a3, v23, v20);
        v33 = v19;
        if (!v19)
        {
          return 0;
        }

        if (*a3 <= v19 || *v19 != 42)
        {
          goto LABEL_61;
        }
      }

      v22 = *(a1 + 60);
LABEL_34:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v22 + 1);
      v21 = *(a1 + 64);
      v22 = *v21;
      goto LABEL_35;
    }

    if (v9 != 34)
    {
      goto LABEL_53;
    }

    *(a1 + 16) |= 2u;
    v17 = *(a1 + 104);
    if (!v17)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v18);
      *(a1 + 104) = v17;
      v8 = v33;
    }

    v16 = sub_276BD1DE4(a3, v17, v8);
LABEL_60:
    v33 = v16;
    if (!v16)
    {
      return 0;
    }

LABEL_61:
    ;
  }

  if (v11 != 1)
  {
    if (v11 != 3 || v9 != 26)
    {
      goto LABEL_53;
    }

    *(a1 + 16) |= 1u;
    v14 = *(a1 + 96);
    if (!v14)
    {
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = sub_2769F507C(v15);
      *(a1 + 96) = v14;
      v8 = v33;
    }

    v16 = sub_276BD1F84(a3, v14, v8);
    goto LABEL_60;
  }

  if (v9 == 10)
  {
    v12 = (a1 + 24);
    goto LABEL_46;
  }

  if (v9 == 8)
  {
    goto LABEL_52;
  }

LABEL_53:
  if (v9)
  {
    v29 = (v9 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v31 = sub_2769F617C((a1 + 8));
      v8 = v33;
    }

    v16 = google::protobuf::internal::UnknownFieldParse(v9, v31, v8, a3, v7);
    goto LABEL_60;
  }

  *(a3 + 80) = v9 - 1;
  return v33;
}

const google::protobuf::UnknownFieldSet *sub_2769EF464(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(a1 + 96);
    *v4 = 26;
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

    v4 = sub_2769E3BA4(v8, v10, a3);
  }

  if ((v7 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v14 = *(a1 + 104);
    *v4 = 34;
    v15 = *(v14 + 5);
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

    v4 = TSP::UUID::_InternalSerialize(v14, v16, a3, v6);
  }

  v20 = *(a1 + 56);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v22 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 42;
      v23 = *(v22 + 20);
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

      v4 = sub_2769E6994(v22, v24, a3, v6);
    }
  }

  v28 = *(a1 + 88);
  if (v28 > 0)
  {
    v4 = sub_2769F6620(a3, 6, (a1 + 72), v28, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v29 = *(a1 + 8);
  if ((v29 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v28);
}

uint64_t sub_2769EF728(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_2769E4448(*(a1 + 96));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 24));
  v8 = 11;
  v9 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v4 >= 0)
  {
    v8 = v9;
  }

  v10 = v8 + v2;
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  if (!v4)
  {
    v10 = v2;
  }

  *(a1 + 40) = v11;
  v12 = v10 + v4;
  v13 = *(a1 + 56);
  v14 = v12 + v13;
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
      v19 = sub_2769E6BA0(v18, v5, v6, v7);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 72));
  v24 = 11;
  v25 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v20 >= 0)
  {
    v24 = v25;
  }

  v26 = v24 + v14;
  if (v20)
  {
    v27 = v20;
  }

  else
  {
    v27 = 0;
  }

  if (!v20)
  {
    v26 = v14;
  }

  *(a1 + 88) = v27;
  v28 = (v26 + v20);
  if ((*(a1 + 16) & 2) != 0)
  {
    v29 = TSP::UUID::ByteSizeLong(*(a1 + 104), v21, v22, v23);
    v28 = (&v29->ptr_ + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + v28 + 1);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v28, (a1 + 20), v23);
  }

  else
  {
    *(a1 + 20) = v28;
    return v28;
  }
}

void sub_2769EF8D8(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769EF980(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769EF980(google::protobuf::Arena **result, uint64_t a2)
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

  v6 = *(a2 + 56);
  if (v6)
  {
    v7 = *(a2 + 64);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 6), *(a2 + 56));
    result = sub_2769F6D38(v3 + 6, v8, (v7 + 8), v6, *v3[8] - *(v3 + 14));
    v9 = *(v3 + 14) + v6;
    *(v3 + 14) = v9;
    v10 = v3[8];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 72))
  {
    v11 = *(v3 + 18);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v12 = *(a2 + 16);
  if ((v12 & 3) != 0)
  {
    if (v12)
    {
      *(v3 + 4) |= 1u;
      v13 = v3[12];
      if (!v13)
      {
        v14 = v3[1];
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = sub_2769F507C(v14);
        v3[12] = v13;
      }

      if (*(a2 + 96))
      {
        v15 = *(a2 + 96);
      }

      else
      {
        v15 = &unk_2812FC968;
      }

      result = sub_2769E49A8(v13, v15);
    }

    if ((v12 & 2) != 0)
    {
      *(v3 + 4) |= 2u;
      v16 = v3[13];
      if (!v16)
      {
        v17 = v3[1];
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v17);
        v3[13] = v16;
      }

      if (*(a2 + 104))
      {
        v18 = *(a2 + 104);
      }

      else
      {
        v18 = &TSP::_UUID_default_instance_;
      }

      return TSP::UUID::MergeFrom(v16, v18);
    }
  }

  return result;
}

void sub_2769EFB68(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769EF0A8(a1);

    sub_2769EF8D8(a1, a2);
  }
}

google::protobuf::Arena **sub_2769EFBB4(google::protobuf::Arena **result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2769EF0A8(result);

    return sub_2769EF980(v4, a2);
  }

  return result;
}

uint64_t sub_2769EFC00(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_2769E4F90(a1 + 48);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      result = sub_2769E4E58(*(a1 + 96));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 2) == 0)
    {
      return 1;
    }

    result = TSP::UUID::IsInitialized(*(a1 + 104));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2769EFC6C()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[38];
  v1 = off_2812FBC48[39];
  return result;
}

uint64_t sub_2769EFCA4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C0A80;
  *(a1 + 8) = a2;
  *(a1 + 32) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 104) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  if (atomic_load_explicit(dword_2812FBAC0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBAC0);
  }

  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_2769EFD50(_Unwind_Exception *a1)
{
  if (*(v1 + 100) >= 1)
  {
    sub_276BD2A14(v5);
  }

  sub_2769F6AB0(v4);
  sub_2769F7094(v3);
  sub_276BD2A28((v1 + 28), v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2769EFD98(uint64_t a1)
{
  sub_2769EFE1C(a1);
  sub_2769DEC8C((a1 + 8));
  if (*(a1 + 100) >= 1)
  {
    v2 = *(a1 + 104);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  sub_2769F6AB0((a1 + 72));
  sub_2769F7094((a1 + 48));
  if (*(a1 + 28) >= 1)
  {
    v5 = *(a1 + 32);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  return a1;
}

void *sub_2769EFE1C(void *result)
{
  if (result != &unk_2812FCF10)
  {
    v1 = result;
    v2 = result[15];
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C9F670]();
    }

    v3 = v1[16];
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C9F670]();
    }

    v4 = v1[17];
    if (v4)
    {
      v5 = sub_2769E2E70(v4);
      MEMORY[0x277C9F670](v5, 0x10A1C402CD0F650);
    }

    result = v1[18];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C9F670);
    }
  }

  return result;
}

void sub_2769EFEE0(uint64_t a1)
{
  sub_2769EFD98(a1);

  JUMPOUT(0x277C9F670);
}

void *sub_2769EFF20()
{
  if (atomic_load_explicit(dword_2812FBAC0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBAC0);
  }

  return &unk_2812FCF10;
}

google::protobuf::UnknownFieldSet *sub_2769EFF60(google::protobuf::UnknownFieldSet *result)
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

  v5 = *(v1 + 20);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 11) + 8);
    do
    {
      v7 = *v6++;
      result = sub_2769E6758(v7);
      --v5;
    }

    while (v5);
    *(v1 + 20) = 0;
  }

  *(v1 + 24) = 0;
  v8 = *(v1 + 4);
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    result = TSP::UUID::Clear(*(v1 + 16));
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_21;
  }

  result = TSP::UUID::Clear(*(v1 + 15));
  if ((v8 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  result = sub_2769E301C(*(v1 + 17));
  if ((v8 & 8) != 0)
  {
LABEL_14:
    result = TSP::Reference::Clear(*(v1 + 18));
  }

LABEL_15:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 2) = 0;
  if (v10)
  {

    return sub_2769F6424(v9);
  }

  return result;
}

google::protobuf::internal *sub_2769F005C(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v44 = a2;
  for (i = *(a3 + 23); ; i = *(a3 + 23))
  {
    if (sub_2769F6104(a3, &v44, i))
    {
      return v44;
    }

    v8 = (v44 + 1);
    v9 = *v44;
    if ((*v44 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v10 = v9 + (*v8 << 7);
    v9 = v10 - 128;
    if ((*v8 & 0x80000000) == 0)
    {
      v8 = (v44 + 2);
LABEL_6:
      v44 = v8;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v10 - 128));
    v44 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v8 = TagFallback;
    v9 = v28;
LABEL_7:
    v11 = v9 >> 3;
    if (v9 >> 3 > 4)
    {
      break;
    }

    if (v9 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v9 == 10)
        {
          v26 = (a1 + 24);
          goto LABEL_52;
        }

        if (v9 == 8)
        {
          goto LABEL_83;
        }
      }

      else if (v11 == 2 && v9 == 18)
      {
        *(a1 + 16) |= 1u;
        v13 = *(a1 + 120);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v14);
          *(a1 + 120) = v13;
          goto LABEL_72;
        }

        goto LABEL_73;
      }

      goto LABEL_84;
    }

    if (v11 == 3)
    {
      if (v9 == 26)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 128);
        if (!v13)
        {
          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v37);
          *(a1 + 128) = v13;
LABEL_72:
          v8 = v44;
        }

LABEL_73:
        v25 = sub_276BD1DE4(a3, v13, v8);
        goto LABEL_91;
      }

      goto LABEL_84;
    }

    if (v11 != 4 || v9 != 34)
    {
      goto LABEL_84;
    }

    *(a1 + 16) |= 4u;
    v23 = *(a1 + 136);
    if (!v23)
    {
      v24 = *(a1 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = sub_2769F507C(v24);
      *(a1 + 136) = v23;
      v8 = v44;
    }

    v25 = sub_276BD1F84(a3, v23, v8);
LABEL_91:
    v44 = v25;
    if (!v25)
    {
      return 0;
    }

LABEL_92:
    ;
  }

  if (v9 >> 3 <= 6)
  {
    if (v11 != 5)
    {
      if (v11 != 6 || v9 != 50)
      {
        goto LABEL_84;
      }

      v15 = (v8 - 1);
      while (2)
      {
        v16 = (v15 + 1);
        v44 = (v15 + 1);
        v17 = *(a1 + 88);
        if (!v17)
        {
          v18 = *(a1 + 84);
          goto LABEL_26;
        }

        v22 = *(a1 + 80);
        v18 = *v17;
        if (v22 >= *v17)
        {
          if (v18 == *(a1 + 84))
          {
LABEL_26:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v18 + 1);
            v17 = *(a1 + 88);
            v18 = *v17;
          }

          *v17 = v18 + 1;
          v19 = sub_2769F5280(*(a1 + 72));
          v20 = *(a1 + 80);
          v21 = *(a1 + 88) + 8 * v20;
          *(a1 + 80) = v20 + 1;
          *(v21 + 8) = v19;
          v16 = v44;
        }

        else
        {
          *(a1 + 80) = v22 + 1;
          v19 = *&v17[2 * v22 + 2];
        }

        v15 = sub_276BD1B74(a3, v19, v16);
        v44 = v15;
        if (!v15)
        {
          return 0;
        }

        if (*a3 <= v15 || *v15 != 50)
        {
          goto LABEL_92;
        }

        continue;
      }
    }

    if (v9 != 42)
    {
      goto LABEL_84;
    }

    v29 = (v8 - 1);
    while (2)
    {
      v30 = (v29 + 1);
      v44 = (v29 + 1);
      v31 = *(a1 + 64);
      if (!v31)
      {
        v32 = *(a1 + 60);
        goto LABEL_57;
      }

      v36 = *(a1 + 56);
      v32 = *v31;
      if (v36 >= *v31)
      {
        if (v32 == *(a1 + 60))
        {
LABEL_57:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v32 + 1);
          v31 = *(a1 + 64);
          v32 = *v31;
        }

        *v31 = v32 + 1;
        v33 = sub_2769F557C(*(a1 + 48));
        v34 = *(a1 + 56);
        v35 = *(a1 + 64) + 8 * v34;
        *(a1 + 56) = v34 + 1;
        *(v35 + 8) = v33;
        v30 = v44;
      }

      else
      {
        *(a1 + 56) = v36 + 1;
        v33 = *&v31[2 * v36 + 2];
      }

      v29 = sub_276BD2054(a3, v33, v30);
      v44 = v29;
      if (!v29)
      {
        return 0;
      }

      if (*a3 <= v29 || *v29 != 42)
      {
        goto LABEL_92;
      }

      continue;
    }
  }

  if (v11 == 7)
  {
    if (v9 != 58)
    {
      goto LABEL_84;
    }

    *(a1 + 16) |= 8u;
    v38 = *(a1 + 144);
    if (!v38)
    {
      v39 = *(a1 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v39);
      *(a1 + 144) = v38;
      v8 = v44;
    }

    v25 = sub_276BD2124(a3, v38, v8);
    goto LABEL_91;
  }

  if (v11 == 8)
  {
    if (v9 == 66)
    {
      v26 = (a1 + 96);
LABEL_52:
      v25 = google::protobuf::internal::PackedUInt32Parser(v26, v8, a3, v6);
      goto LABEL_91;
    }

    if (v9 == 64)
    {
LABEL_83:
      v45 = sub_2769E000C(&v44);
      google::protobuf::RepeatedField<unsigned int>::Add();
    }
  }

LABEL_84:
  if (v9)
  {
    v40 = (v9 & 7) == 4;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = *(a1 + 8);
    if (v41)
    {
      v42 = ((v41 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v42 = sub_2769F617C((a1 + 8));
      v8 = v44;
    }

    v25 = google::protobuf::internal::UnknownFieldParse(v9, v42, v8, a3, v7);
    goto LABEL_91;
  }

  *(a3 + 20) = v9 - 1;
  return v44;
}

const google::protobuf::UnknownFieldSet *sub_2769F04F0(uint64_t a1, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(a1 + 120);
    *v4 = 18;
    v9 = *(v8 + 5);
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

    v4 = TSP::UUID::_InternalSerialize(v8, v10, a3, v6);
    if ((v7 & 2) == 0)
    {
LABEL_5:
      if ((v7 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_5;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 128);
  *v4 = 26;
  v15 = *(v14 + 5);
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

  v4 = TSP::UUID::_InternalSerialize(v14, v16, a3, v6);
  if ((v7 & 4) != 0)
  {
LABEL_27:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(a1 + 136);
    *v4 = 34;
    v21 = *(v20 + 20);
    if (v21 > 0x7F)
    {
      v4[1] = v21 | 0x80;
      v23 = v21 >> 7;
      if (v21 >> 14)
      {
        v22 = v4 + 3;
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
        v4[2] = v23;
        v22 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v21;
      v22 = v4 + 2;
    }

    v4 = sub_2769E3BA4(v20, v22, a3);
  }

LABEL_37:
  v26 = *(a1 + 56);
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v28 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 42;
      v29 = *(v28 + 20);
      if (v29 > 0x7F)
      {
        v4[1] = v29 | 0x80;
        v31 = v29 >> 7;
        if (v29 >> 14)
        {
          v30 = v4 + 3;
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
          v4[2] = v31;
          v30 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v29;
        v30 = v4 + 2;
      }

      v4 = sub_2769EB6BC(v28, v30, a3);
    }
  }

  v34 = *(a1 + 80);
  if (v34)
  {
    for (j = 0; j != v34; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v36 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 50;
      v37 = *(v36 + 20);
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

      v4 = sub_2769E6994(v36, v38, a3, v6);
    }
  }

  if ((v7 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v42 = *(a1 + 144);
    *v4 = 58;
    v43 = *(v42 + 5);
    if (v43 > 0x7F)
    {
      v4[1] = v43 | 0x80;
      v45 = v43 >> 7;
      if (v43 >> 14)
      {
        v44 = v4 + 3;
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
        v4[2] = v45;
        v44 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v43;
      v44 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v42, v44, a3, v6);
  }

  v48 = *(a1 + 112);
  if (v48 >= 1)
  {
    v4 = sub_2769F6620(a3, 8, (a1 + 96), v48, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v49 = *(a1 + 8);
  if ((v49 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v49 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v48);
}

uint64_t sub_2769F09A8(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    v3 = sub_2769E4448(*(a1 + 136));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 24));
  v8 = 11;
  v9 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v4 >= 0)
  {
    v8 = v9;
  }

  v10 = v8 + v2;
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  if (!v4)
  {
    v10 = v2;
  }

  *(a1 + 40) = v11;
  v12 = v10 + v4;
  v13 = *(a1 + 56);
  v14 = v12 + v13;
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
      v19 = sub_2769EBE58(v18, v5, v6, v7);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 80);
  v21 = v14 + v20;
  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = (v22 + 8);
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = 8 * v20;
    do
    {
      v25 = *v23++;
      v26 = sub_2769E6BA0(v25, v5, v6, v7);
      v21 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      v24 -= 8;
    }

    while (v24);
  }

  v27 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 96));
  v31 = 11;
  v32 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v27 >= 0)
  {
    v31 = v32;
  }

  v33 = v31 + v21;
  if (v27)
  {
    v34 = v27;
  }

  else
  {
    v34 = 0;
  }

  if (!v27)
  {
    v33 = v21;
  }

  *(a1 + 112) = v34;
  v35 = (v33 + v27);
  v36 = *(a1 + 16);
  if ((v36 & 3) != 0)
  {
    if (v36)
    {
      v37 = TSP::UUID::ByteSizeLong(*(a1 + 120), v28, v29, v30);
      v35 = (&v37->ptr_ + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + v35 + 1);
    }

    if ((v36 & 2) != 0)
    {
      v38 = TSP::UUID::ByteSizeLong(*(a1 + 128), v28, v29, v30);
      v35 = (&v38->ptr_ + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + v35 + 1);
    }
  }

  if ((v36 & 8) != 0)
  {
    v39 = TSP::Reference::ByteSizeLong(*(a1 + 144), v28, v29, v30);
    v35 = (&v39->ptr_ + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + v35 + 1);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v35, (a1 + 20), v30);
  }

  else
  {
    *(a1 + 20) = v35;
    return v35;
  }
}

void sub_2769F0C10(const google::protobuf::Message *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769F0CB8(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

void sub_2769F0CB8(uint64_t a1, uint64_t a2)
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

  v11 = *(a2 + 80);
  if (v11)
  {
    v12 = *(a2 + 88);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 72), *(a2 + 80));
    sub_2769F6D38((a1 + 72), v13, (v12 + 8), v11, **(a1 + 88) - *(a1 + 80));
    v14 = *(a1 + 80) + v11;
    *(a1 + 80) = v14;
    v15 = *(a1 + 88);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  if (*(a2 + 96))
  {
    v16 = *(a1 + 96);
    google::protobuf::RepeatedField<unsigned int>::Reserve();
  }

  v17 = *(a2 + 16);
  if ((v17 & 0xF) == 0)
  {
    return;
  }

  if ((v17 & 1) == 0)
  {
    if ((v17 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_27:
    *(a1 + 16) |= 2u;
    v21 = *(a1 + 128);
    if (!v21)
    {
      v22 = *(a1 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v22);
      *(a1 + 128) = v21;
    }

    if (*(a2 + 128))
    {
      v23 = *(a2 + 128);
    }

    else
    {
      v23 = &TSP::_UUID_default_instance_;
    }

    TSP::UUID::MergeFrom(v21, v23);
    if ((v17 & 4) == 0)
    {
LABEL_17:
      if ((v17 & 8) == 0)
      {
        return;
      }

      goto LABEL_43;
    }

    goto LABEL_35;
  }

  *(a1 + 16) |= 1u;
  v18 = *(a1 + 120);
  if (!v18)
  {
    v19 = *(a1 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v19);
    *(a1 + 120) = v18;
  }

  if (*(a2 + 120))
  {
    v20 = *(a2 + 120);
  }

  else
  {
    v20 = &TSP::_UUID_default_instance_;
  }

  TSP::UUID::MergeFrom(v18, v20);
  if ((v17 & 2) != 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  if ((v17 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_35:
  *(a1 + 16) |= 4u;
  v24 = *(a1 + 136);
  if (!v24)
  {
    v25 = *(a1 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = sub_2769F507C(v25);
    *(a1 + 136) = v24;
  }

  if (*(a2 + 136))
  {
    v26 = *(a2 + 136);
  }

  else
  {
    v26 = &unk_2812FC968;
  }

  sub_2769E49A8(v24, v26);
  if ((v17 & 8) != 0)
  {
LABEL_43:
    *(a1 + 16) |= 8u;
    v27 = *(a1 + 144);
    if (!v27)
    {
      v28 = *(a1 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v28);
      *(a1 + 144) = v27;
    }

    if (*(a2 + 144))
    {
      v29 = *(a2 + 144);
    }

    else
    {
      v29 = &TSP::_Reference_default_instance_;
    }

    TSP::Reference::MergeFrom(v27, v29);
  }
}

void sub_2769F0F98(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769EFF60(a1);

    sub_2769F0C10(a1, a2);
  }
}

void sub_2769F0FE4(google::protobuf::UnknownFieldSet *a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_2769EFF60(a1);

    sub_2769F0CB8(a1, a2);
  }
}

uint64_t sub_2769F1030(uint64_t a1)
{
  if ((*(a1 + 16) & 4) == 0)
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

  result = sub_2769E4F90(a1 + 72);
  if (result)
  {
    v6 = *(a1 + 16);
    if (v6)
    {
      result = TSP::UUID::IsInitialized(*(a1 + 120));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 16);
    }

    if ((v6 & 2) != 0)
    {
      result = TSP::UUID::IsInitialized(*(a1 + 128));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 16);
    }

    if ((v6 & 4) != 0)
    {
      result = sub_2769E4E58(*(a1 + 136));
      if (!result)
      {
        return result;
      }

      v6 = *(a1 + 16);
    }

    if ((v6 & 8) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 144));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2769F10F0()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[40];
  v1 = off_2812FBC48[41];
  return result;
}

void *sub_2769F1128(void *a1, uint64_t a2)
{
  *a1 = &unk_2885C0B30;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812FBAA8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBAA8);
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

uint64_t sub_2769F119C(uint64_t a1)
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

void sub_2769F120C(uint64_t a1)
{
  sub_2769F119C(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769F124C(uint64_t a1)
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
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
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

google::protobuf::internal *sub_2769F129C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_44;
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
        v21 = (v8 + 1);
        v20 = *v8;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = (v8 + 2);
LABEL_29:
          v31 = v21;
          *(a1 + 40) = v20;
          goto LABEL_34;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v8, v20);
        v31 = v29;
        *(a1 + 40) = v30;
        if (!v29)
        {
LABEL_44:
          v31 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 != 2)
        {
          if (v11 == 1 && v9 == 10)
          {
            *(a1 + 16) |= 1u;
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v23);
            v16 = google::protobuf::internal::InlineGreedyStringParser(v24, v31, a3);
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
            goto LABEL_44;
          }

          goto LABEL_34;
        }

        if (v9 != 16)
        {
          goto LABEL_13;
        }

        v6 |= 2u;
        v18 = (v8 + 1);
        v17 = *v8;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v8 + 2);
LABEL_24:
          v31 = v18;
          *(a1 + 32) = v17;
          goto LABEL_34;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v8, v17);
        v31 = v27;
        *(a1 + 32) = v28;
        if (!v27)
        {
          goto LABEL_44;
        }
      }

LABEL_34:
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

const google::protobuf::UnknownFieldSet *sub_2769F14D0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_4;
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

  v8 = *(a1 + 32);
  *v4 = 16;
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v13 = v10 >> 7;
        ++v4;
        v14 = v10 >> 14;
        v10 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v4[1] = v8;
    v4 += 2;
    if ((v6 & 4) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_4:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 40);
  *v4 = 24;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v9 | 0x80;
        v11 = v9 >> 7;
        ++v4;
        v12 = v9 >> 14;
        v9 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
    }

    else
    {
      v4[2] = v9;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_25:
  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_2769F1680(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v2 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + 1;
    goto LABEL_8;
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
    goto LABEL_7;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_2769F1720(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v8 = sub_2769F1680(a1);
  }

  else
  {
    v5 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v8 = (v7 + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(*(a1 + 40) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 3);
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v8, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v8;
    return v8;
  }
}

void sub_2769F1804(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769F18AC(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769F18AC(google::protobuf::Arena **result, uint64_t a2)
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
        v3[5] = *(a2 + 40);
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

void sub_2769F1960(google::protobuf::Arena **a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769F124C(a1);

    sub_2769F1804(a1, a2);
  }
}

uint64_t sub_2769F19C0()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[42];
  v1 = off_2812FBC48[43];
  return result;
}

uint64_t sub_2769F19F8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C0BE0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812FBA88, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBA88);
  }

  return a1;
}

uint64_t sub_2769F1A84(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));
  sub_2769F7534((a1 + 16));
  return a1;
}

void sub_2769F1AC4(uint64_t a1)
{
  sub_2769F1A84(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769F1B04(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2769F124C(v4);
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

google::protobuf::internal *sub_2769F1B80(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v16 = sub_2769F5A44(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD26D4(a3, v16, v13);
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

const google::protobuf::UnknownFieldSet *sub_2769F1D50(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = sub_2769F14D0(v8, v10, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769F1E74(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
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
      v10 = sub_2769F1720(v9, a2, a3, a4);
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

void sub_2769F1F2C(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769F1FD4(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769F1FD4(google::protobuf::Arena **result, uint64_t a2)
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
    result = sub_2769F75B8(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
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

void sub_2769F2074(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769F1B04(a1);

    sub_2769F1F2C(a1, a2);
  }
}

BOOL sub_2769F20C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 32) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 7) == 0);
  return v2 < 1;
}

uint64_t sub_2769F20F8()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[44];
  v1 = off_2812FBC48[45];
  return result;
}

uint64_t sub_2769F2130(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  *a1 = &unk_2885C0C90;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load_explicit(dword_2812FB968, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB968);
  }

  *(a1 + 48) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 56) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2769F21B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_276BD2A14(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2769F21D8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = *(a1 + 56);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  sub_2769DEC8C((a1 + 8));
  if (*(a1 + 28) >= 1)
  {
    v4 = *(a1 + 32);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  return a1;
}

void sub_2769F2298(uint64_t a1)
{
  sub_2769F21D8(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769F22D8(uint64_t a1)
{
  *(a1 + 24) = 0;
  v1 = *(a1 + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
    v3 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v1 & 0xC) != 0)
  {
    *(a1 + 72) = 0;
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 2) = 0;
  if (v5)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *sub_2769F2368(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v7 = 0;
  if ((sub_2769F6104(a3, &v28, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v9 = (v28 + 1);
      v10 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v11 = v10 + (*v9 << 7);
      v10 = v11 - 128;
      if ((*v9 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v11 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_52;
      }

      v9 = TagFallback;
      v10 = v22;
LABEL_7:
      v12 = v10 >> 3;
      if (v10 >> 3 > 2)
      {
        if (v12 == 3)
        {
          if (v10 == 25)
          {
            v7 |= 4u;
            *(a1 + 64) = *v9;
            v28 = (v9 + 8);
            goto LABEL_48;
          }
        }

        else if (v12 == 4)
        {
          if (v10 == 34)
          {
            v19 = google::protobuf::internal::PackedUInt32Parser((a1 + 24), v9, a3, v5);
            goto LABEL_47;
          }

          if (v10 == 32)
          {
            v29 = sub_2769E000C(&v28);
            google::protobuf::RepeatedField<unsigned int>::Add();
          }
        }

        else if (v12 == 5 && v10 == 42)
        {
          *(a1 + 16) |= 2u;
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = (a1 + 56);
          goto LABEL_33;
        }

        goto LABEL_40;
      }

      if (v12 == 1)
      {
        if (v10 == 10)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = (a1 + 48);
LABEL_33:
          v20 = google::protobuf::internal::ArenaStringPtr::Mutable(v14, v13);
          v19 = google::protobuf::internal::InlineGreedyStringParser(v20, v28, a3);
LABEL_47:
          v28 = v19;
          if (!v19)
          {
LABEL_52:
            v28 = 0;
            goto LABEL_2;
          }

          goto LABEL_48;
        }

LABEL_40:
        if (v10)
        {
          v25 = (v10 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          *(a3 + 80) = v10 - 1;
          goto LABEL_2;
        }

        v26 = *(a1 + 8);
        if (v26)
        {
          v27 = ((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v27 = sub_2769F617C((a1 + 8));
          v9 = v28;
        }

        v19 = google::protobuf::internal::UnknownFieldParse(v10, v27, v9, a3, v6);
        goto LABEL_47;
      }

      if (v12 != 2 || v10 != 16)
      {
        goto LABEL_40;
      }

      v7 |= 8u;
      v17 = (v9 + 1);
      v16 = *v9;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v9 + 2);
LABEL_24:
        v28 = v17;
        *(a1 + 72) = v16 != 0;
        goto LABEL_48;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v9, v16);
      v28 = v23;
      *(a1 + 72) = v24 != 0;
      if (!v23)
      {
        goto LABEL_52;
      }

LABEL_48:
      if (sub_2769F6104(a3, &v28, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v9 = (v28 + 2);
LABEL_6:
    v28 = v9;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v7;
  return v28;
}

const google::protobuf::UnknownFieldSet *sub_2769F2608(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 72);
  *v4 = 16;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(a1 + 64);
    *v4 = 25;
    *(v4 + 1) = v8;
    v4 += 9;
  }

LABEL_12:
  v9 = *(a1 + 40);
  if (v9 >= 1)
  {
    v4 = sub_2769F6620(a3, 4, (a1 + 24), v9, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_2769E1AB4(a3, 5, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v10 = *(a1 + 8);
  if ((v10 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v9);
}

uint64_t sub_2769F2764(uint64_t a1)
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

  v6 = google::protobuf::internal::WireFormatLite::UInt32Size((a1 + 24));
  if (v6)
  {
    v8 = v6;
    if ((v6 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v9;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 40) = v8;
  v10 = (v2 + v6);
  v11 = *(a1 + 16);
  if ((v11 & 0xE) != 0)
  {
    if ((v11 & 2) != 0)
    {
      v12 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v10 = (v10 + v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    v15 = (v10 + 9);
    if ((v11 & 4) == 0)
    {
      v15 = v10;
    }

    v10 = (v15 + ((v11 >> 2) & 2));
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v10, (a1 + 20), v7);
  }

  else
  {
    *(a1 + 20) = v10;
    return v10;
  }
}

void sub_2769F28B8(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769F2960(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769F2960(google::protobuf::Arena **result, uint64_t a2)
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

  v6 = *(a2 + 16);
  if ((v6 & 0xF) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 48);
      *(v3 + 4) |= 1u;
      v8 = v3[1];
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::internal::ArenaStringPtr::Set(v3 + 6, (v7 & 0xFFFFFFFFFFFFFFFELL), v8);
      if ((v6 & 2) == 0)
      {
LABEL_8:
        if ((v6 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_8;
    }

    v9 = *(a2 + 56);
    *(v3 + 4) |= 2u;
    v10 = v3[1];
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = google::protobuf::internal::ArenaStringPtr::Set(v3 + 7, (v9 & 0xFFFFFFFFFFFFFFFELL), v10);
    if ((v6 & 4) == 0)
    {
LABEL_9:
      if ((v6 & 8) == 0)
      {
LABEL_11:
        *(v3 + 4) |= v6;
        return result;
      }

LABEL_10:
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_11;
    }

LABEL_19:
    v3[8] = *(a2 + 64);
    if ((v6 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return result;
}

void sub_2769F2A90(google::protobuf::Arena **a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769F22D8(a1);

    sub_2769F28B8(a1, a2);
  }
}

uint64_t sub_2769F2AE8()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[46];
  v1 = off_2812FBC48[47];
  return result;
}

uint64_t sub_2769F2B20(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C0D40;
  *(a1 + 8) = a2;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812FB980, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB980);
  }

  return a1;
}

uint64_t sub_2769F2BA8(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));
  sub_2769F7678((a1 + 16));
  return a1;
}

void sub_2769F2BE8(uint64_t a1)
{
  sub_2769F2BA8(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769F2C28(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2769F22D8(v4);
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

google::protobuf::internal *sub_2769F2CA4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v16 = sub_2769F5B5C(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v13 = v23;
LABEL_23:
          v12 = sub_276BD27A4(a3, v16, v13);
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

const google::protobuf::UnknownFieldSet *sub_2769F2E74(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = sub_2769F2608(v8, v10, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769F2F98(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
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
      v10 = sub_2769F2764(v9);
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

void sub_2769F3050(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769F30F8(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769F30F8(google::protobuf::Arena **result, uint64_t a2)
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
    result = sub_2769F76FC(v3 + 2, v7, (v6 + 8), v5, *v3[4] - *(v3 + 6));
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

void sub_2769F3198(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769F2C28(a1);

    sub_2769F3050(a1, a2);
  }
}

BOOL sub_2769F31E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(a1 + 32) + 8 * v1--);
  }

  while ((*(v3 + 16) & 1) != 0);
  return v2 < 1;
}

uint64_t sub_2769F3214()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[48];
  v1 = off_2812FBC48[49];
  return result;
}

uint64_t sub_2769F324C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C0DF0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812FB9A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB9A0);
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t *sub_2769F32B8(uint64_t *a1)
{
  if (a1 != &qword_2812FD088)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_2769F2BA8(v2);
      MEMORY[0x277C9F670](v3, 0x10A1C40290C9B23);
    }
  }

  sub_2769DEC8C(a1 + 1);
  return a1;
}

void sub_2769F331C(uint64_t *a1)
{
  sub_2769F32B8(a1);

  JUMPOUT(0x277C9F670);
}

uint64_t *sub_2769F335C()
{
  if (atomic_load_explicit(dword_2812FB9A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB9A0);
  }

  return &qword_2812FD088;
}

google::protobuf::UnknownFieldSet *sub_2769F339C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = sub_2769F2C28(*(result + 3));
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  v2[24] = 0;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2769F6424(v2);
  }

  return result;
}

google::protobuf::internal *sub_2769F33FC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v25, *(a3 + 92)) & 1) == 0)
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
      if (v9 >> 3 == 3)
      {
        if (v9 == 26)
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

            v16 = sub_2769F5BE8(v17);
            *(a1 + 24) = v16;
            v8 = v25;
          }

          v15 = sub_276BD2874(a3, v16, v8);
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
        *(a1 + 32) = v18 != 0;
        goto LABEL_31;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v8, v18);
      v25 = v23;
      *(a1 + 32) = v24 != 0;
      if (!v23)
      {
LABEL_39:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_2769F6104(a3, &v25, *(a3 + 92)))
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

const google::protobuf::UnknownFieldSet *sub_2769F35E8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
    a2[1] = v7;
    a2 += 2;
  }

  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(a1 + 24);
    *a2 = 26;
    v9 = *(v8 + 40);
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

    a2 = sub_2769F2E74(v8, v10, a3, a4);
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769F3718(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(a1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v8 = sub_2769F2F98(*(a1 + 24), a2, a3, a4);
      v6 = v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v6 = 0;
    }

    v7 = (v6 + (v5 & 2));
  }

  else
  {
    v7 = 0;
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

void sub_2769F37BC(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769F3864(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769F3864(google::protobuf::Arena **result, uint64_t a2)
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

        v6 = sub_2769F5BE8(v7);
        v3[3] = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &unk_2812FD058;
      }

      result = sub_2769F30F8(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 4) |= v5;
  }

  return result;
}

void sub_2769F3918(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769F339C(a1);

    sub_2769F37BC(a1, a2);
  }
}

BOOL sub_2769F3964(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  v2 = *(a1 + 24);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  do
  {
    result = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = *(v4 + 8 * v3--);
  }

  while ((*(v5 + 16) & 1) != 0);
  return result;
}

uint64_t sub_2769F39A0()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[50];
  v1 = off_2812FBC48[51];
  return result;
}

void *sub_2769F39D8(void *a1, uint64_t a2)
{
  *a1 = &unk_2885C0EA0;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812FBBA8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBBA8);
  }

  a1[4] = 0;
  a1[5] = 0;
  a1[3] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

uint64_t sub_2769F3A4C(uint64_t a1)
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

void sub_2769F3ABC(uint64_t a1)
{
  sub_2769F3A4C(a1);

  JUMPOUT(0x277C9F670);
}

google::protobuf::UnknownFieldSet *sub_2769F3AFC(uint64_t a1)
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

  if ((v1 & 0x7E) != 0)
  {
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
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

google::protobuf::internal *sub_2769F3B4C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v51 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v51, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v51 + 1);
      v9 = *v51;
      if ((*v51 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v51, (v10 - 128));
      v51 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_82;
      }

      v8 = TagFallback;
      v9 = v23;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 == 1)
        {
          if (v9 == 10)
          {
            *(a1 + 16) |= 1u;
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v24);
            v26 = google::protobuf::internal::InlineGreedyStringParser(v25, v51, a3);
            goto LABEL_64;
          }

LABEL_57:
          if (v9)
          {
            v37 = (v9 & 7) == 4;
          }

          else
          {
            v37 = 1;
          }

          if (v37)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v38 = *(a1 + 8);
          if (v38)
          {
            v39 = ((v38 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v39 = sub_2769F617C((a1 + 8));
            v8 = v51;
          }

          v26 = google::protobuf::internal::UnknownFieldParse(v9, v39, v8, a3, v5);
LABEL_64:
          v51 = v26;
          if (!v26)
          {
            goto LABEL_82;
          }

          goto LABEL_65;
        }

        if (v11 == 2)
        {
          if (v9 != 16)
          {
            goto LABEL_57;
          }

          v6 |= 2u;
          v35 = (v8 + 1);
          v34 = *v8;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v36 = *v35;
          v34 = (v36 << 7) + v34 - 128;
          if ((v36 & 0x80000000) == 0)
          {
            v35 = (v8 + 2);
LABEL_56:
            v51 = v35;
            *(a1 + 32) = v34 != 0;
            goto LABEL_65;
          }

          v49 = google::protobuf::internal::VarintParseSlow64(v8, v34);
          v51 = v49;
          *(a1 + 32) = v50 != 0;
          if (!v49)
          {
LABEL_82:
            v51 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v11 != 3 || v9 != 24)
          {
            goto LABEL_57;
          }

          v6 |= 4u;
          v17 = (v8 + 1);
          v16 = *v8;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v18 = *v17;
          v16 = (v18 << 7) + v16 - 128;
          if ((v18 & 0x80000000) == 0)
          {
            v17 = (v8 + 2);
LABEL_26:
            v51 = v17;
            *(a1 + 33) = v16 != 0;
            goto LABEL_65;
          }

          v47 = google::protobuf::internal::VarintParseSlow64(v8, v16);
          v51 = v47;
          *(a1 + 33) = v48 != 0;
          if (!v47)
          {
            goto LABEL_82;
          }
        }
      }

      else if (v9 >> 3 > 5)
      {
        if (v11 == 6)
        {
          if (v9 != 48)
          {
            goto LABEL_57;
          }

          v6 |= 8u;
          v32 = (v8 + 1);
          v31 = *v8;
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if ((v33 & 0x80000000) == 0)
          {
            v32 = (v8 + 2);
LABEL_51:
            v51 = v32;
            *(a1 + 34) = v31 != 0;
            goto LABEL_65;
          }

          v41 = google::protobuf::internal::VarintParseSlow64(v8, v31);
          v51 = v41;
          *(a1 + 34) = v42 != 0;
          if (!v41)
          {
            goto LABEL_82;
          }
        }

        else
        {
          if (v11 != 7 || v9 != 56)
          {
            goto LABEL_57;
          }

          v6 |= 0x40u;
          v20 = (v8 + 1);
          LODWORD(v19) = *v8;
          if ((v19 & 0x80) == 0)
          {
            goto LABEL_33;
          }

          v21 = *v20;
          v19 = v19 + (v21 << 7) - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = (v8 + 2);
LABEL_33:
            v51 = v20;
            *(a1 + 44) = v19;
            goto LABEL_65;
          }

          v45 = google::protobuf::internal::VarintParseSlow64(v8, v19);
          v51 = v45;
          *(a1 + 44) = v46;
          if (!v45)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
        if (v11 == 4)
        {
          if (v9 == 32)
          {
            v27 = (v8 + 1);
            v28 = *v8;
            if ((v28 & 0x8000000000000000) == 0)
            {
              goto LABEL_44;
            }

            v29 = *v27;
            v30 = (v29 << 7) + v28;
            v28 = (v30 - 128);
            if (v29 < 0)
            {
              v51 = google::protobuf::internal::VarintParseSlow64(v8, (v30 - 128));
              if (!v51)
              {
                goto LABEL_82;
              }

              v28 = v40;
            }

            else
            {
              v27 = (v8 + 2);
LABEL_44:
              v51 = v27;
            }

            if (TSP::DataUploadStatus_IsValid(v28))
            {
              *(a1 + 16) |= 0x10u;
              *(a1 + 36) = v28;
            }

            else
            {
              sub_276BD2C90((a1 + 8));
            }

            goto LABEL_65;
          }

          goto LABEL_57;
        }

        if (v11 != 5 || v9 != 40)
        {
          goto LABEL_57;
        }

        v6 |= 0x20u;
        v13 = (v8 + 1);
        LODWORD(v12) = *v8;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_15;
        }

        v14 = *v13;
        v12 = v12 + (v14 << 7) - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v8 + 2);
LABEL_15:
          v51 = v13;
          *(a1 + 40) = v12;
          goto LABEL_65;
        }

        v43 = google::protobuf::internal::VarintParseSlow64(v8, v12);
        v51 = v43;
        *(a1 + 40) = v44;
        if (!v43)
        {
          goto LABEL_82;
        }
      }

LABEL_65:
      if (sub_2769F6104(a3, &v51, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v51 + 2);
LABEL_6:
    v51 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v51;
}

const google::protobuf::UnknownFieldSet *sub_2769F3F70(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
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

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(a1 + 32);
  *v4 = 16;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(a1 + 33);
  *v4 = 24;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(a1 + 40);
    *v4 = 40;
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
        if ((v6 & 8) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
        if ((v6 & 8) != 0)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
      if ((v6 & 8) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_41;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(a1 + 36);
  *v4 = 32;
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
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_27;
      }
    }
  }

  else
  {
    v4[1] = v9;
    v4 += 2;
    if ((v6 & 0x20) != 0)
    {
      goto LABEL_27;
    }
  }

LABEL_6:
  if ((v6 & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(a1 + 34);
  *v4 = 48;
  v4[1] = v17;
  v4 += 2;
  if ((v6 & 0x40) != 0)
  {
LABEL_41:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v18 = *(a1 + 44);
    *v4 = 56;
    if (v18 > 0x7F)
    {
      v4[1] = v18 | 0x80;
      v19 = v18 >> 7;
      if (v18 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v19 | 0x80;
          v20 = v19 >> 7;
          ++v4;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
        *(v4 - 1) = v20;
      }

      else
      {
        v4[2] = v19;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v18;
      v4 += 2;
    }
  }

LABEL_50:
  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

const InternalMetadata *sub_2769F4268(google::protobuf::internal *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
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
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 0x7E) != 0)
  {
    v5 = (v5 + ((*(this + 4) >> 1) & 2) + (*(this + 4) & 2) + ((*(this + 4) >> 2) & 2u));
    if ((v4 & 0x10) != 0)
    {
      v13 = *(this + 9);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 11;
      }

      v5 = (v5 + v15);
      if ((v4 & 0x20) == 0)
      {
LABEL_9:
        if ((v4 & 0x40) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }
    }

    else if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    v16 = *(this + 10);
    v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v16 >= 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 11;
    }

    v5 = (v5 + v18);
    if ((v4 & 0x40) != 0)
    {
LABEL_10:
      v9 = *(this + 11);
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 11;
      }

      v5 = (v5 + v11);
    }
  }

LABEL_14:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  *(this + 5) = v5;
  return v5;
}

void sub_2769F43A8(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769F4450(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769F4450(google::protobuf::Arena **result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2769F63D8(result + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 16);
  if ((v5 & 0x7F) != 0)
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
          goto LABEL_7;
        }

        goto LABEL_18;
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

      goto LABEL_19;
    }

LABEL_18:
    *(v3 + 33) = *(a2 + 33);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(v3 + 34) = *(a2 + 34);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_20:
    *(v3 + 9) = *(a2 + 36);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
LABEL_12:
        *(v3 + 4) |= v5;
        return result;
      }

LABEL_11:
      *(v3 + 11) = *(a2 + 44);
      goto LABEL_12;
    }

LABEL_21:
    *(v3 + 10) = *(a2 + 40);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return result;
}

void sub_2769F4544(google::protobuf::Arena **a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769F3AFC(a1);

    sub_2769F43A8(a1, a2);
  }
}

uint64_t sub_2769F459C()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[52];
  v1 = off_2812FBC48[53];
  return result;
}

uint64_t sub_2769F45D4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885C0F50;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812FBB88, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBB88);
  }

  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_2769F4664(uint64_t a1)
{
  sub_2769DEC8C((a1 + 8));
  sub_2769F77BC((a1 + 24));
  return a1;
}

void sub_2769F46A4(uint64_t a1)
{
  sub_2769F4664(a1);

  JUMPOUT(0x277C9F670);
}

void *sub_2769F46E4()
{
  if (atomic_load_explicit(dword_2812FBB88, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBB88);
  }

  return &unk_2812FD0E0;
}

google::protobuf::UnknownFieldSet *sub_2769F4724(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2769F3AFC(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  v5[40] = 0;
  *(v5 + 2) = 0;
  if (v6)
  {

    return sub_2769F6424(v5);
  }

  return result;
}

google::protobuf::internal *sub_2769F47A8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
            v19 = sub_2769F5D44(*(a1 + 24));
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

          v15 = sub_276BD2944(a3, v19, v16);
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
        *(a1 + 48) = v23 != 0;
        v6 = 1;
        goto LABEL_38;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v8, v23);
      v30 = v28;
      *(a1 + 48) = v29 != 0;
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

const google::protobuf::UnknownFieldSet *sub_2769F4A10(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v9 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
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

      a2 = sub_2769F3F70(v9, v11, a3);
    }
  }

  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t sub_2769F4B6C(uint64_t a1, uint64_t a2, uint64_t a3, CachedSize *a4)
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
      v10 = sub_2769F4268(v9, a2, a3, a4);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = 2 * (*(a1 + 16) & 1);
  v12 = (v5 + v11);
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((a1 + 8), v12, (a1 + 20), a4);
  }

  else
  {
    *(a1 + 20) = v12;
    return v5 + v11;
  }
}

void sub_2769F4C2C(google::protobuf::Arena **a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    sub_2769F4CD4(a1, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v6);
  }
}

google::protobuf::Arena **sub_2769F4CD4(google::protobuf::Arena **result, uint64_t a2)
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
    result = sub_2769F7840(v3 + 3, v7, (v6 + 8), v5, *v3[5] - *(v3 + 8));
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
    *(v3 + 48) = v10;
  }

  return result;
}

void sub_2769F4D90(google::protobuf::UnknownFieldSet *a1, char **a2)
{
  if (a2 != a1)
  {
    sub_2769F4724(a1);

    sub_2769F4C2C(a1, a2);
  }
}

BOOL sub_2769F4DDC(uint64_t a1)
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

uint64_t sub_2769F4E0C()
{
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  result = off_2812FBC48[54];
  v1 = off_2812FBC48[55];
  return result;
}

void *sub_2769F4E48(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F7900(a1, 1);
  sub_2769DEAA8(v2, a1);
  return v2;
}

void *sub_2769F4ED4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F798C(a1, 1);
  sub_2769DF6D4(v2, a1);
  return v2;
}

void *sub_2769F4F60(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F7A18(a1, 1);
  sub_2769E0E3C(v2, a1);
  return v2;
}

void *sub_2769F4FEC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2769F7AA4(a1, 1);
  *result = &unk_2885BFED0;
  result[1] = a1;
  result[2] = 0;
  result[3] = a1;
  *(result + 9) = 0;
  return result;
}

void *sub_2769F5080(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F7B30(a1, 1);
  sub_2769E2754(v2, a1);
  return v2;
}

void *sub_2769F510C(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_2769F7BBC(this, 1);
  *result = &unk_2885C0030;
  result[1] = this;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_2769F5184(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_2769F7C64(this, 1);
  *result = &unk_2885C00E0;
  result[1] = this;
  result[2] = 0;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

void *sub_2769F51F8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F7D0C(a1, 1);
  sub_2769E5E14(v2, a1);
  return v2;
}

void *sub_2769F5284(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2769F7D98(a1);
}

void *sub_2769F5350(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F7E98(a1, 1);
  sub_2769E6E58(v2, a1);
  return v2;
}

void *sub_2769F53DC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F7F24(a1, 1);
  sub_2769E768C(v2, a1);
  return v2;
}

void *sub_2769F5468(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F7FB0(a1, 1);
  sub_2769E9064(v2, a1);
  return v2;
}

void *sub_2769F54F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F803C(a1, 1);
  sub_2769E9778(v2, a1);
  return v2;
}

void *sub_2769F5580(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F80C8(a1, 1);
  sub_2769EA698(v2, a1);
  return v2;
}

void *sub_2769F560C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2769F8154(a1);
}

void *sub_2769F56D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F8254(a1, 1);
  sub_2769ED104(v2, a1);
  return v2;
}

void *sub_2769F5764(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2769F82E0(a1);
}

void *sub_2769F5830(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F83E0(a1, 1);
  sub_2769EDF24(v2, a1);
  return v2;
}

void *sub_2769F58BC(google::protobuf::Arena *this)
{
  if (!this)
  {
    operator new();
  }

  result = sub_2769F846C(this, 1);
  *result = &unk_2885C0920;
  result[1] = this;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_2769F5930(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F8514(a1, 1);
  sub_2769EEE8C(v2, a1);
  return v2;
}

void *sub_2769F59BC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F85A0(a1, 1);
  sub_2769EFCA4(v2, a1);
  return v2;
}

void *sub_2769F5A48(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F862C(a1, 1);
  sub_2769F1128(v2, a1);
  return v2;
}

void *sub_2769F5AD4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F86B8(a1, 1);
  sub_2769F19F8(v2, a1);
  return v2;
}

void *sub_2769F5B60(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F8744(a1, 1);
  sub_2769F2130(v2, a1);
  return v2;
}

void *sub_2769F5BEC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F87D0(a1, 1);
  sub_2769F2B20(v2, a1);
  return v2;
}

void *sub_2769F5C78(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2769F885C(a1);
}

void *sub_2769F5D48(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F8960(a1, 1);
  sub_2769F39D8(v2, a1);
  return v2;
}

void *sub_2769F5DD4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2769F89EC(a1, 1);
  sub_2769F45D4(v2, a1);
  return v2;
}

uint64_t sub_2769F6104(uint64_t a1, void *a2, int a3)
{
  if (*a2 >= *a1)
  {
    v6 = *a2 - *(a1 + 8);
    if (*(a1 + 28) == v6)
    {
      if (v6 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v3 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a1, v6, a3);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void *sub_2769F617C(google::protobuf::Arena **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_2769F61C4(v2);
  *a1 = (v3 | 1);
  *v3 = v2;
  return (v3 + 8);
}

double sub_2769F61C4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_2769F6208(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

void *sub_2769F6208(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2CCC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_2769F6290);
}

void sub_2769F6290(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v3 != v4)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v5);
    v3 = *v5;
  }

  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

google::protobuf::UnknownFieldSet *sub_2769F62F4(google::protobuf::UnknownFieldSet *result)
{
  v1 = *(result + 2);
  if (v1 >= 1)
  {
    v2 = result;
    v3 = *(result + 2) + 8;
    do
    {
      result = (*v3 + 8);
      v4 = *result;
      *(*v3 + 16) = 0;
      if (v4)
      {
        result = sub_2769F6424(result);
      }

      v3 += 8;
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_2769F6354(void *a1)
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
          v5 = sub_2769DF840(*v3);
          MEMORY[0x277C9F670](v5, 0x10A1C40E9C77CB8);
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

void *sub_2769F63D8(google::protobuf::Arena **a1, const google::protobuf::UnknownFieldSet *a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_2769F617C(a1);
  }

  return google::protobuf::UnknownFieldSet::MergeFrom(v3, a2);
}

google::protobuf::UnknownFieldSet *sub_2769F6424(google::protobuf::Arena **a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_2769F617C(a1);
  }

  if (*result != *(result + 1))
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

google::protobuf::Arena **sub_2769F6474(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F6524(v13, v15);
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
      v22 = sub_2769F4ED0(v18);
      result = sub_2769F6524(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_2769F6534(google::protobuf::Arena **a1, uint64_t *a2)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_2769F617C(a1);
  }

  v4 = *result;
  *result = *a2;
  *a2 = v4;
  v5 = result[1];
  result[1] = a2[1];
  a2[1] = v5;
  v6 = result[2];
  result[2] = a2[2];
  a2[2] = v6;
  return result;
}

void sub_2769F659C(void *a1)
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
          v5 = sub_2769E1158(*v3);
          MEMORY[0x277C9F670](v5, 0x10A1C40F8115D30);
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

unsigned __int8 *sub_2769F6620(google::protobuf::io::EpsCopyOutputStream *this, int a2, int *a3, unsigned int a4, unsigned __int8 *a5, uint64_t (*a6)(void))
{
  if (*this <= a5)
  {
    a5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a5);
  }

  v11 = sub_2769F6730(this, a2, a4, a5);
  v12 = *(a3 + 1);
  v13 = &v12[*a3];
  do
  {
    if (*this <= v11)
    {
      v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v11);
    }

    v14 = *v12++;
    v15 = a6(v14);
    if (v15 > 0x7F)
    {
      *v11 = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v11 += 2;
        do
        {
          *(v11 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v11;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v11 - 1) = v17;
      }

      else
      {
        v11[1] = v16;
        v11 += 2;
      }
    }

    else
    {
      *v11++ = v15;
    }
  }

  while (v12 < v13);
  return v11;
}

_BYTE *sub_2769F6730(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v4 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *a4 = v4 | 0x82;
    v6 = v4 >> 7;
    if (v4 >> 14)
    {
      v5 = a4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      a4[1] = v6;
      v5 = a4 + 2;
    }
  }

  else
  {
    *a4 = v4 | 2;
    v5 = a4 + 1;
  }

  if (a3 >= 0x80)
  {
    do
    {
      *v5++ = a3 | 0x80;
      v9 = a3 >> 7;
      v11 = a3 >> 14;
      a3 >>= 7;
    }

    while (v11);
  }

  else
  {
    LOBYTE(v9) = a3;
  }

  *v5 = v9;
  return v5 + 1;
}

unsigned __int8 *sub_2769F67C4(google::protobuf::io::EpsCopyOutputStream *this, int a2, int *a3, unsigned int a4, unsigned __int8 *a5, uint64_t (*a6)(uint64_t))
{
  if (*this <= a5)
  {
    a5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a5);
  }

  v11 = sub_2769F6730(this, a2, a4, a5);
  v12 = *(a3 + 1);
  v13 = &v12[*a3];
  do
  {
    if (*this <= v11)
    {
      v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v11);
    }

    v14 = *v12++;
    v15 = a6(v14);
    if (v15 > 0x7F)
    {
      *v11 = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v11 += 2;
        do
        {
          *(v11 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v11;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v11 - 1) = v17;
      }

      else
      {
        v11[1] = v16;
        v11 += 2;
      }
    }

    else
    {
      *v11++ = v15;
    }
  }

  while (v12 < v13);
  return v11;
}

google::protobuf::Arena **sub_2769F68D4(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F6984(v13, v15);
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
      v22 = sub_2769F4F5C(v18);
      result = sub_2769F6984(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2769F6994(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          sub_2769DEC8C((v5 + 8));
          MEMORY[0x277C9F670](v5, 0x1081C40648F7380);
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

void sub_2769F6A2C(void *a1)
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
          v5 = sub_2769E5EA0(*v3);
          MEMORY[0x277C9F670](v5, 0x10A1C40AE3C6AFDLL);
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

void sub_2769F6AB0(void *a1)
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
          v5 = sub_2769E66B4(*v3);
          MEMORY[0x277C9F670](v5, 0x10A1C406130BDD3);
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

void sub_2769F6B34(void *a1)
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
          v5 = sub_2769E6F10(*v3);
          MEMORY[0x277C9F670](v5, 0x1081C408AA6B6D1);
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

google::protobuf::Arena **sub_2769F6BB8(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F6C68(v13, v15);
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
      v22 = sub_2769F5108(v18);
      result = sub_2769F6C68(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

google::protobuf::Arena **sub_2769F6C78(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F6D28(v13, v15);
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
      v22 = sub_2769F51F4(v18);
      result = sub_2769F6D28(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

google::protobuf::Arena **sub_2769F6D38(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F6DE8(v13, v15);
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
      v22 = sub_2769F5280(v18);
      result = sub_2769F6DE8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

google::protobuf::Arena **sub_2769F6DF8(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F6EA8(v13, v15);
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
      v22 = sub_2769F534C(v18);
      result = sub_2769F6EA8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2769F6EB8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          sub_2769DEC8C((v5 + 8));
          MEMORY[0x277C9F670](v5, 0x1081C40B7564605);
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

google::protobuf::Arena **sub_2769F6F50(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F7000(v13, v15);
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
      v22 = sub_2769F5180(v18);
      result = sub_2769F7000(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2769F7010(void *a1)
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
          v5 = sub_2769E2E70(*v3);
          MEMORY[0x277C9F670](v5, 0x10A1C402CD0F650);
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

void sub_2769F7094(void *a1)
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
          v5 = sub_2769EAA18(*v3);
          MEMORY[0x277C9F670](v5, 0x10A1C4007C19F8ELL);
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

google::protobuf::Arena **sub_2769F7118(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F71C8(v13, v15);
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
      v22 = sub_2769F507C(v18);
      result = sub_2769F71C8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2769F71D8(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      sub_2769F7288(v13, v15);
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
      v22 = sub_2769F557C(v18);
      sub_2769F7288(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_2769F7298(void *a1)
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
          v5 = sub_2769EC960(*v3);
          MEMORY[0x277C9F670](v5, 0x10A1C406130BDD3);
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

google::protobuf::Arena **sub_2769F731C(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F73CC(v13, v15);
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
      v22 = sub_2769F5608(v18);
      result = sub_2769F73CC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2769F73DC(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          sub_2769DEC8C((v5 + 8));
          MEMORY[0x277C9F670](v5, 0x1081C40825B58B5);
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

google::protobuf::Arena **sub_2769F7474(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F7524(v13, v15);
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
      v22 = sub_2769F58B8(v18);
      result = sub_2769F7524(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2769F7534(void *a1)
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
          v5 = sub_2769F119C(*v3);
          MEMORY[0x277C9F670](v5, 0x1081C401753DA55);
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

google::protobuf::Arena **sub_2769F75B8(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F7668(v13, v15);
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
      v22 = sub_2769F5A44(v18);
      result = sub_2769F7668(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2769F7678(void *a1)
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
          v5 = sub_2769F21D8(*v3);
          MEMORY[0x277C9F670](v5, 0x1081C4041940EB8);
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

google::protobuf::Arena **sub_2769F76FC(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F77AC(v13, v15);
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
      v22 = sub_2769F5B5C(v18);
      result = sub_2769F77AC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2769F77BC(void *a1)
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
          v5 = sub_2769F3A4C(*v3);
          MEMORY[0x277C9F670](v5, 0x1081C4098867587);
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

google::protobuf::Arena **sub_2769F7840(google::protobuf::Arena **result, google::protobuf::Arena ***a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2769F78F0(v13, v15);
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
      v22 = sub_2769F5D44(v18);
      result = sub_2769F78F0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void *sub_2769F7900(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2CFC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, sub_2769F7988);
}

void *sub_2769F798C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2D2C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xD8uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xD8uLL, sub_2769F7A14);
}

void *sub_2769F7A18(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2D68(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x80uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x80uLL, sub_2769F7AA0);
}

void *sub_2769F7AA4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2DA4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_2769F7B2C);
}

void *sub_2769F7B30(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2DD4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x138uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x138uLL, sub_2769F7BB8);
}

void *sub_2769F7BBC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2E10(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, sub_2769F7C44);
}

void *sub_2769F7C64(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2E40(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_2769F7CEC);
}

void *sub_2769F7D0C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2E70(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, sub_2769F7D94);
}

void *sub_2769F7D98(google::protobuf::Arena *a1)
{
  v2 = sub_2769F7E0C(a1, 1);
  *v2 = &unk_2885C0240;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812FBB00, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FBB00);
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

void *sub_2769F7E0C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2EA0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_2769F7E94);
}

void *sub_2769F7E98(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2ED0(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, sub_2769F7F20);
}

void *sub_2769F7F24(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2F00(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xD0uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xD0uLL, sub_2769F7FAC);
}

void *sub_2769F7FB0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2F3C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, sub_2769F8038);
}

void *sub_2769F803C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2F6C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x78uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x78uLL, sub_2769F80C4);
}

void *sub_2769F80C8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2FA8(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0xA0uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0xA0uLL, sub_2769F8150);
}

void *sub_2769F8154(google::protobuf::Arena *a1)
{
  v2 = sub_2769F81C8(a1, 1);
  *v2 = &unk_2885C0660;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812FB948, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB948);
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

void *sub_2769F81C8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD2FE4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_2769F8250);
}

void *sub_2769F8254(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD3014(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, sub_2769F82DC);
}

void *sub_2769F82E0(google::protobuf::Arena *a1)
{
  v2 = sub_2769F8354(a1, 1);
  *v2 = &unk_2885C07C0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812FB908, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB908);
  }

  v2[3] = 0;
  return v2;
}

void *sub_2769F8354(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD3044(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x20uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x20uLL, sub_2769F83DC);
}

void *sub_2769F83E0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD3074(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x40uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x40uLL, sub_2769F8468);
}

void *sub_2769F846C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD30A4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_2769F84F4);
}

void *sub_2769F8514(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD30D4(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x70uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x70uLL, sub_2769F859C);
}

void *sub_2769F85A0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD3110(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x98uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x98uLL, sub_2769F8628);
}

void *sub_2769F862C(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD314C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, sub_2769F86B4);
}

void *sub_2769F86B8(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD317C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, sub_2769F8740);
}

void *sub_2769F8744(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD31AC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x50uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x50uLL, sub_2769F87CC);
}

void *sub_2769F87D0(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD31DC(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, sub_2769F8858);
}

void *sub_2769F885C(google::protobuf::Arena *a1)
{
  v2 = sub_2769F88D4(a1, 1);
  *v2 = &unk_2885C0DF0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812FB9A0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(dword_2812FB9A0);
  }

  *(v2 + 32) = 0;
  v2[3] = 0;
  return v2;
}

void *sub_2769F88D4(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD320C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x28uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x28uLL, sub_2769F895C);
}

void *sub_2769F8960(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD323C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x30uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x30uLL, sub_2769F89E8);
}

void *sub_2769F89EC(google::protobuf::Arena *this, int a2)
{
  if (*(this + 24))
  {
    sub_276BD326C(this);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:

    return google::protobuf::Arena::AllocateAlignedNoHook(this, 0x38uLL);
  }

  return google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(this, 0x38uLL, sub_2769F8A74);
}

uint64_t *sub_2769F8AF0(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

void sub_2769F8BA0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2769F8D34(void *a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v6 = a4;
  objc_opt_class();
  v8 = objc_msgSend_objectForKeyedSubscript_(a1, v7, @"TSPObjecSerialization_ObjectProxy");
  v9 = TSUDynamicCast();

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277D81308]);
    objc_msgSend_setObject_forKeyedSubscript_(a1, v11, v9, @"TSPObjecSerialization_ObjectProxy");
  }

  objc_msgSend_setObject_forUncopiedKey_(v9, v10, v12, v6);
}

void sub_2769F8E14(void *a1, uint64_t a2, void *a3, void *a4)
{
  v15 = a3;
  v7 = a4;
  if (v15)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(a1, v6, v7);
    objc_opt_class();
    v10 = TSUDynamicCast();
    if (!v10)
    {
      objc_opt_class();
      v11 = TSUDynamicCast();
      v10 = objc_msgSend_mutableCopy(v11, v12, v13);

      if (!v10)
      {
        v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      objc_msgSend_setObject_forKeyedSubscript_(a1, v14, v10, v7);
    }

    objc_msgSend_addObject_(v10, v9, v15);
  }
}

void sub_2769F8F74()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("TSPRemoteDataStorage.Notification", v2);
  v1 = qword_280A52620;
  qword_280A52620 = v0;
}

void sub_2769F901C()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("TSPRemoteDataStorage.IO", v2);
  v1 = qword_280A52630;
  qword_280A52630 = v0;
}

void sub_2769F9954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v30 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2769F99BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2769F99D4(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 48));
  v2 = *(a1[4] + 40);
  v3 = (*(a1[6] + 8) + 40);

  objc_storeStrong(v3, v2);
}

void sub_2769F9A3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
}

void sub_2769F9B90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (!v2)
  {
    v2 = *(v1 + 48);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

uint64_t sub_2769FA05C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_p_isMaterialized(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_2769FA2A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_copy(*(*(a1 + 32) + 40), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t sub_2769FA3AC(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_firstIndex(*(*(a1 + 32) + 40), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_2769FA514(uint64_t a1, const char *a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_context(*(a1 + 32), a2, a3);
  v8 = objc_msgSend_downloadObserverManager(v4, v5, v6);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a1 + 32);
  if (v10)
  {
    v15 = @"TSPDataDownloadObserverInfoError";
    v16[0] = v10;
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v16, &v15, 1);
    objc_msgSend_notifyDownloadObserversForData_withStatus_info_wait_(v8, v13, v11, v9, v12, 0);
  }

  else
  {
    v12 = 0;
    objc_msgSend_notifyDownloadObserversForData_withStatus_info_wait_(v8, v7, v11, v9, 0, 0);
  }

  if (v10)
  {
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2769FA9A0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769FA9E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = sub_2769F99BC;
  v24[4] = sub_2769F99CC;
  v25 = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2769FABC8;
  aBlock[3] = &unk_27A6E3ED8;
  v7 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v20 = v5;
  v21 = v7;
  v22 = *(a1 + 64);
  v23 = v24;
  v8 = v5;
  v9 = v6;
  v10 = _Block_copy(aBlock);
  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2769FACB8;
  v14[3] = &unk_27A6E3F00;
  v18 = v24;
  v14[4] = v11;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = v10;
  v13 = v10;
  dispatch_barrier_async(v12, v14);

  _Block_object_dispose(v24, 8);
}

void sub_2769FABC8(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 16));
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_resume(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (*(a1 + 56))
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = sub_2769FACA4;
      v7[3] = &unk_27A6E2C78;
      v5 = *(a1 + 56);
      v7[4] = v4;
      v8 = v5;
      v6 = v4;
      dispatch_async(v3, v7);
    }
  }
}

void sub_2769FACB8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = *(a1 + 56);
    (*(*(a1 + 56) + 16))();
    v6 = *(a1 + 32);
    v7 = *(*(*(a1 + 64) + 8) + 40);

    objc_msgSend_p_notifyDownloadObserversWithStatus_error_(v6, v5, 2, v7);
  }

  else
  {
    v9 = objc_msgSend_p_materializedLength(*(a1 + 32), a2, a3);
    if (*(*(a1 + 32) + 24))
    {
      v10 = MEMORY[0x277D81150];
      obja = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSPRemoteDataStorage didReceiveRemoteDataWithDecryptionInfo:noEncryptionHandler:createReadChannelForCryptoTranscodeBlock:completionQueue:completion:]_block_invoke_5");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v13, obja, v12, 312, 0, "expected nil value for '%{public}s'", "_temporaryMaterializedDataStorage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }

    v16 = [TSPTemporaryDataStorage alloc];
    v18 = objc_msgSend_initWithTemporaryDataStorageURL_decryptionInfo_(v16, v17, *(a1 + 40), *(a1 + 48));
    v19 = *(a1 + 32);
    v20 = *(v19 + 24);
    *(v19 + 24) = v18;

    obj = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAB58], v21, 0, v9);
    v24 = objc_msgSend_length(*(*(a1 + 32) + 24), v22, v23);
    objc_msgSend_removeIndexesInRange_(obj, v25, 0, v24);
    objc_storeStrong((*(a1 + 32) + 40), obj);
    ++*(*(a1 + 32) + 32);
    isMaterialized = objc_msgSend_p_isMaterialized(*(a1 + 32), v26, v27);
    if ((isMaterialized & 1) == 0)
    {
      if (UnsafePointer != -1)
      {
        sub_276BD3300();
      }

      v30 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v28, 0);
      v31 = *(*(a1 + 64) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = v30;
    }

    (*(*(a1 + 56) + 16))();
    if (isMaterialized)
    {
      objc_msgSend_p_notifyDownloadObserversWithStatus_error_(*(a1 + 32), v33, 1, 0);
    }
  }
}

void sub_2769FAF28()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769FAF6C(uint64_t a1)
{
  dispatch_suspend(*(a1 + 32));
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(v3 + 16);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2769FB0C0;
  v16[3] = &unk_27A6E3F78;
  v5 = v2;
  v6 = *(a1 + 72);
  v7 = *(a1 + 32);
  v8 = *(a1 + 80);
  v9 = *(a1 + 56);
  *&v10 = v7;
  *(&v10 + 1) = v9;
  *&v11 = v3;
  *(&v11 + 1) = v5;
  v17 = v11;
  v18 = v10;
  v12 = *(a1 + 64);
  v13 = *(a1 + 88);
  *&v14 = v8;
  *(&v14 + 1) = v13;
  *&v15 = v12;
  *(&v15 + 1) = v6;
  v19 = v15;
  v20 = v14;
  dispatch_async(v4, v16);
}

void sub_2769FB0C0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769FB214;
  v5[3] = &unk_27A6E3F78;
  v6 = v2;
  v7 = *(a1 + 40);
  v11 = *(a1 + 72);
  v8 = *(a1 + 48);
  v12 = *(a1 + 80);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v13 = *(a1 + 88);
  v4 = v2;
  dispatch_async(v3, v5);
}

void sub_2769FB214(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!*(a1 + 32))
  {
    if (*(a1 + 80) && (sub_276AB65D0(*(a1 + 56), *(a1 + 64)) & 1) == 0)
    {
      v25 = *(a1 + 72);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v33 = (*(*(a1 + 80) + 16))();
      (*(v25 + 16))(v25, v27);
      goto LABEL_3;
    }

    v9 = *(a1 + 88);
    v39[1] = 0;
    v10 = (*(v9 + 16))();
    v11 = 0;
    v13 = v11;
    if (!v10)
    {
      v28 = *(a1 + 72);
      v29 = *(a1 + 48);
      v20 = v11;
      if (!v11)
      {
        v20 = objc_msgSend_tsp_unknownReadErrorWithUserInfo_(MEMORY[0x277CCA9B8], v12, 0);
      }

      (*(v28 + 16))(v28, v29, v20);
      if (v13)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v14 = objc_alloc(MEMORY[0x277D811D0]);
    v15 = *(a1 + 40);
    v39[0] = 0;
    v17 = objc_msgSend_initForStreamWritingURL_error_(v14, v16, v15, v39);
    v20 = v39[0];
    if (v17)
    {
      v21 = *(a1 + 56);
      v22 = *(a1 + 64);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = sub_2769FB59C;
      v34[3] = &unk_27A6E3F50;
      v35 = v17;
      v36 = v10;
      v38 = *(a1 + 72);
      v37 = *(a1 + 48);
      objc_msgSend_copyDataFromReadChannel_decryptionInfo_toWriteChannel_encryptionInfo_completion_(TSPFileManager, v23, v36, v21, v35, v22, v34);

      v24 = v35;
    }

    else
    {
      objc_msgSend_close(v10, v18, v19);
      v31 = *(a1 + 72);
      v32 = *(a1 + 48);
      v24 = v20;
      if (!v20)
      {
        v24 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v30, 0);
      }

      (*(v31 + 16))(v31, v32, v24);
      if (v20)
      {
        goto LABEL_20;
      }
    }

LABEL_20:
LABEL_21:

LABEL_22:
    return;
  }

  v4 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3);
  objc_msgSend_removeItemAtURL_error_(v4, v5, *(a1 + 40), 0);

  v6 = *(a1 + 72);
  v7 = *(a1 + 48);
  v33 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, *MEMORY[0x277CCA050], 3072, 0);
  (*(v6 + 16))(v6, v7);
LABEL_3:
}

void sub_2769FB59C(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  objc_msgSend_close(*(a1 + 32), v4, v5);
  objc_msgSend_close(*(a1 + 40), v6, v7);
  v8 = *(a1 + 48);
  (*(*(a1 + 56) + 16))();
}

void sub_2769FB618()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

id sub_2769FB7F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v13 = 0;
  v6 = objc_msgSend_writeToURL_options_error_(v4, v5, v3, 0, &v13);
  v7 = v13;
  v9 = v7;
  if (v6)
  {
    v10 = 0;
  }

  else
  {
    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v8, 0);
    }

    v10 = v11;
  }

  return v10;
}

id sub_2769FB8B0(uint64_t a1)
{
  v2 = [TSPMemoryReadChannel alloc];
  v4 = objc_msgSend_initWithNSData_(v2, v3, *(a1 + 32));

  return v4;
}

id sub_2769FBA94(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5);
  v8 = v6;
  v9 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v18 = 0;
    v10 = objc_msgSend_moveItemAtURL_toURL_error_(v6, v7, v9, v3, &v18);
    v11 = v18;
  }

  else
  {
    v17 = 0;
    v10 = objc_msgSend_tsu_linkOrCopyItemAtURL_toURL_error_(v6, v7, v9, v3, &v17);
    v11 = v17;
  }

  v12 = v11;
  v14 = v12;
  if (v10)
  {
    v15 = 0;
  }

  else if (v12)
  {
    if (UnsafePointer != -1)
    {
      sub_276BD3314();
    }

    v14 = v14;
    v15 = v14;
  }

  else
  {
    v15 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v13, 0);
    v14 = 0;
  }

  return v15;
}

void sub_2769FBBC8()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

id sub_2769FBC0C(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277D811D0]);
  v6 = objc_msgSend_initForReadingURL_error_(v4, v5, *(a1 + 32), a2);

  return v6;
}

void sub_2769FC0B0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769FC0F4(uint64_t a1)
{
  dispatch_suspend(*(a1 + 32));
  v3 = objc_msgSend_p_migrateToTemporaryDataStorageWithEncryptionInfo_updateInternalDataStorages_(*(a1 + 40), v2, 0, 0);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = v3 != 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_2769F99BC;
  v40 = sub_2769F99CC;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_2769F99BC;
  v34 = sub_2769F99CC;
  v35 = 0;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D811D0]);
    v5 = v37;
    obj = v37[5];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = sub_2769FC4C4;
    v23[3] = &unk_27A6E4068;
    v26 = &v36;
    v27 = &v42;
    v6 = *(a1 + 32);
    v23[4] = *(a1 + 40);
    v23[5] = v3;
    v28 = *(a1 + 72);
    v23[6] = v6;
    v25 = *(a1 + 64);
    v24 = *(a1 + 48);
    v8 = objc_msgSend_initWithType_URL_oflag_mode_error_cleanupHandler_(v4, v7, 1, v3, 513, 420, &obj, v23);
    objc_storeStrong(v5 + 5, obj);
    v9 = v31[5];
    v31[5] = v8;

    v11 = v31[5];
    if (v11)
    {
      v12 = *(a1 + 56);
      v13 = *(a1 + 72);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = sub_2769FC924;
      v22[3] = &unk_27A6E4090;
      v22[4] = &v36;
      v22[5] = &v30;
      objc_msgSend_writeData_offset_handler_(v11, v10, v12, v13, v22);
      goto LABEL_13;
    }
  }

  *(v43 + 24) = 0;
  if (UnsafePointer != -1)
  {
    sub_276BD3350();
  }

  dispatch_resume(*(a1 + 32));
  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = *(a1 + 48);
    if (v16)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_2769FCA04;
      v19[3] = &unk_27A6E40B8;
      v20 = v15;
      v21 = &v36;
      dispatch_async(v16, v19);
      v17 = v20;
LABEL_9:

      goto LABEL_13;
    }

    v18 = v37[5];
    v17 = v18;
    if (!v18)
    {
      v17 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v14, 0);
    }

    (v15)[2](v15, v17);
    if (!v18)
    {
      goto LABEL_9;
    }
  }

LABEL_13:
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
}

void sub_2769FC454(_Unwind_Exception *a1)
{
  if (!v2)
  {
  }

  _Block_object_dispose((v4 - 192), 8);

  _Block_object_dispose((v4 - 144), 8);
  _Block_object_dispose((v4 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_2769FC4C4(uint64_t a1, const char *a2)
{
  if (a2)
  {
    if (*(*(*(a1 + 72) + 8) + 40))
    {
      if (UnsafePointer != -1)
      {
        sub_276BD3378();
      }
    }

    else
    {
      v3 = objc_msgSend_tsp_writePOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], a2, a2, 0);
      v4 = *(*(a1 + 72) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = v3;

      if (UnsafePointer != -1)
      {
        sub_276BD338C();
      }
    }

    *(*(*(a1 + 80) + 8) + 24) = 0;
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769FC854;
    block[3] = &unk_27A6E4040;
    v27 = v6;
    v29 = *(a1 + 88);
    v28 = &v30;
    dispatch_barrier_sync(v7, block);
  }

  dispatch_resume(*(a1 + 48));
  if (*(*(*(a1 + 80) + 8) + 24))
  {
    v9 = 0;
LABEL_13:
    v10 = v9;
    goto LABEL_14;
  }

  v9 = *(*(*(a1 + 72) + 8) + 40);
  if (v9)
  {
    goto LABEL_13;
  }

  v10 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v8, 0);
LABEL_14:
  v11 = v10;
  v12 = *(a1 + 64);
  if (v12)
  {
    v13 = *(a1 + 56);
    if (v13)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_2769FC910;
      v24[3] = &unk_27A6E2C78;
      v24[4] = v11;
      v25 = v12;
      dispatch_async(v13, v24);
    }

    else
    {
      (v12)[2](v12, v11);
    }
  }

  if (*(v31 + 24) == 1)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
    v16 = objc_msgSend_dataForRemoteDataStorage_(WeakRetained, v15, *(a1 + 32));

    if (v16)
    {
      v19 = objc_msgSend_context(v16, v17, v18);
      v22 = objc_msgSend_downloadObserverManager(v19, v20, v21);
      objc_msgSend_notifyDownloadObserversForData_withStatus_info_wait_(v22, v23, v16, 1, 0, 0);
    }
  }

  _Block_object_dispose(&v30, 8);
}

void sub_2769FC7CC()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769FC810()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

uint64_t sub_2769FC854(uint64_t a1)
{
  v2 = [TSPTemporaryDataStorage alloc];
  v4 = objc_msgSend_initWithTemporaryDataStorageURL_decryptionInfo_(v2, v3, *(a1 + 40), 0);
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  objc_msgSend_removeIndexesInRange_(*(*(a1 + 32) + 40), v7, *(a1 + 56), *(a1 + 64));
  v10 = objc_msgSend_date(MEMORY[0x277CBEAA8], v8, v9);
  v11 = *(a1 + 32);
  v12 = *(v11 + 64);
  *(v11 + 64) = v10;

  ++*(*(a1 + 32) + 32);
  result = objc_msgSend_p_isMaterialized(*(a1 + 32), v13, v14);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_2769FC924(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v12 = a4;
  v9 = *(*(a1 + 32) + 8);
  v11 = *(v9 + 40);
  v10 = (v9 + 40);
  if (!v11)
  {
    objc_storeStrong(v10, a4);
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    objc_msgSend_close(*(*(*(a1 + 40) + 8) + 40), v7, v8);
  }

LABEL_6:
}

void sub_2769FC9C0()
{
  v0 = TSULogCreateCategory();
  v1 = UnsafePointer;
  UnsafePointer = v0;
}

void sub_2769FCA04(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(*(a1 + 40) + 8) + 40);
  v3 = v2;
  if (!v2)
  {
    v3 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], 0, 0);
  }

  v4 = v3;
  (*(v1 + 16))(v1);
  if (!v2)
  {
  }
}

void sub_2769FCA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_2769FCAB4(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  v3 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], a2, 0);
  (*(v2 + 16))(v2);
}

void sub_2769FD1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  _Block_object_dispose((v52 - 184), 8);

  _Block_object_dispose((v52 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2769FD40C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (*(a1 + 40) == 1)
  {
    v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6);
    v10 = objc_msgSend_moveItemAtURL_toURL_error_(v8, v9, *(a1 + 32), v7, a3);
  }

  else
  {
    v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v5, v6);
    v10 = objc_msgSend_copyItemAtURL_toURL_error_(v8, v11, *(a1 + 32), v7, a3);
  }

  v12 = v10;

  return v12;
}

void sub_2769FD4C0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 24) && (objc_msgSend_isReadable(*(v3 + 48), a2, a3) & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = (*(a1 + 32) + 48);

    objc_storeStrong(v6, v5);
  }
}