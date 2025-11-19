uint64_t TSP::MessageInfo::RequiredFieldsByteSizeFallback(TSP::MessageInfo *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = ((9 * (__clz(*(this + 50) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 51) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

char *TSP::MessageInfo::ByteSizeLong(TSP::MessageInfo *this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    v2 = TSP::MessageInfo::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 50) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 51) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v3 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 6);
  v4 = 11;
  v5 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v3 >= 0)
  {
    v4 = v5;
  }

  v6 = v4 + v2;
  if (v3)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  if (!v3)
  {
    v6 = v2;
  }

  *(this + 10) = v7;
  v8 = v6 + v3;
  v9 = *(this + 14);
  v10 = v8 + v9;
  v11 = *(this + 8);
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
      v15 = TSP::FieldInfo::ByteSizeLong(v14);
      v10 += &v15[(9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6];
      v13 -= 8;
    }

    while (v13);
  }

  v16 = google::protobuf::internal::WireFormatLite::UInt64Size(this + 18);
  v17 = 11;
  v18 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v16 >= 0)
  {
    v17 = v18;
  }

  v19 = v17 + v10;
  if (v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = 0;
  }

  if (!v16)
  {
    v19 = v10;
  }

  *(this + 22) = v20;
  v21 = v19 + v16;
  v22 = google::protobuf::internal::WireFormatLite::UInt64Size(this + 24);
  v23 = 11;
  v24 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v22 >= 0)
  {
    v23 = v24;
  }

  v25 = v23 + v21;
  if (v22)
  {
    v26 = v22;
  }

  else
  {
    v26 = 0;
  }

  if (!v22)
  {
    v25 = v21;
  }

  *(this + 28) = v26;
  v27 = v25 + v22;
  v28 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 30);
  v29 = 11;
  v30 = ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v28 >= 0)
  {
    v29 = v30;
  }

  v31 = v29 + v27;
  if (v28)
  {
    v32 = v28;
  }

  else
  {
    v32 = 0;
  }

  if (v28)
  {
    v33 = v31;
  }

  else
  {
    v33 = v27;
  }

  *(this + 34) = v32;
  v34 = *(this + 38);
  v35 = v33 + v28 + v34;
  v36 = *(this + 20);
  if (v36)
  {
    v37 = (v36 + 8);
  }

  else
  {
    v37 = 0;
  }

  if (v34)
  {
    v38 = 8 * v34;
    do
    {
      v39 = *v37++;
      v40 = TSP::FieldPath::ByteSizeLong(v39);
      v35 += &v40[(9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6];
      v38 -= 8;
    }

    while (v38);
  }

  v41 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 42);
  v42 = 11;
  v43 = ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v41 >= 0)
  {
    v42 = v43;
  }

  v44 = v42 + v35;
  if (v41)
  {
    v45 = v41;
  }

  else
  {
    v45 = 0;
  }

  if (!v41)
  {
    v44 = v35;
  }

  *(this + 46) = v45;
  v46 = (v44 + v41);
  v47 = *(this + 4);
  if (v47)
  {
    v48 = TSP::FieldPath::ByteSizeLong(*(this + 24));
    v46 = &v48[((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 1 + v46];
  }

  if ((v47 & 8) != 0)
  {
    v46 = (v46 + ((9 * (__clz(*(this + 52) | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v46, this + 5);
  }

  else
  {
    *(this + 5) = v46;
    return v46;
  }
}

void TSP::MessageInfo::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::MessageInfo::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

google::protobuf::Arena **TSP::MessageInfo::MergeFrom(google::protobuf::Arena **this, const TSP::MessageInfo *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = v4[6];
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 6, v7 + v6);
    v8 = *(v4 + 4);
    v4[6] += *(a2 + 6);
    this = memcpy((v8 + 4 * v7), *(a2 + 4), 4 * *(a2 + 6));
  }

  v9 = *(a2 + 14);
  if (v9)
  {
    v10 = *(a2 + 8);
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 12), *(a2 + 14));
    this = sub_10004997C(v4 + 6, v11, v10 + 8, v9, **(v4 + 8) - v4[14]);
    v12 = v4[14] + v9;
    v4[14] = v12;
    v13 = *(v4 + 8);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 18);
  if (v14)
  {
    v15 = v4[18];
    google::protobuf::RepeatedField<unsigned long long>::Reserve(v4 + 18, v15 + v14);
    v16 = *(v4 + 10);
    v4[18] += *(a2 + 18);
    this = memcpy((v16 + 8 * v15), *(a2 + 10), 8 * *(a2 + 18));
  }

  v17 = *(a2 + 24);
  if (v17)
  {
    v18 = v4[24];
    google::protobuf::RepeatedField<unsigned long long>::Reserve(v4 + 24, v18 + v17);
    v19 = *(v4 + 13);
    v4[24] += *(a2 + 24);
    this = memcpy((v19 + 8 * v18), *(a2 + 13), 8 * *(a2 + 24));
  }

  v20 = *(a2 + 30);
  if (v20)
  {
    v21 = v4[30];
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 30, v21 + v20);
    v22 = *(v4 + 16);
    v4[30] += *(a2 + 30);
    this = memcpy((v22 + 4 * v21), *(a2 + 16), 4 * *(a2 + 30));
  }

  v23 = *(a2 + 38);
  if (v23)
  {
    v24 = *(a2 + 20);
    v25 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 36), *(a2 + 38));
    this = sub_100049A3C(v4 + 18, v25, v24 + 8, v23, **(v4 + 20) - v4[38]);
    v26 = v4[38] + v23;
    v4[38] = v26;
    v27 = *(v4 + 20);
    if (*v27 < v26)
    {
      *v27 = v26;
    }
  }

  v28 = *(a2 + 42);
  if (v28)
  {
    v29 = v4[42];
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 42, v29 + v28);
    v30 = *(v4 + 22);
    v4[42] += *(a2 + 42);
    this = memcpy((v30 + 4 * v29), *(a2 + 22), 4 * *(a2 + 42));
  }

  v31 = *(a2 + 4);
  if ((v31 & 0xF) != 0)
  {
    if (v31)
    {
      v4[4] |= 1u;
      v32 = *(v4 + 24);
      if (!v32)
      {
        v33 = *(v4 + 1);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = google::protobuf::Arena::CreateMaybeMessage<TSP::FieldPath>(v33);
        *(v4 + 24) = v32;
      }

      if (*(a2 + 24))
      {
        v34 = *(a2 + 24);
      }

      else
      {
        v34 = &TSP::_FieldPath_default_instance_;
      }

      this = TSP::FieldPath::MergeFrom(v32, v34, a3);
      if ((v31 & 2) == 0)
      {
LABEL_22:
        if ((v31 & 4) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_36;
      }
    }

    else if ((v31 & 2) == 0)
    {
      goto LABEL_22;
    }

    v4[50] = *(a2 + 50);
    if ((v31 & 4) == 0)
    {
LABEL_23:
      if ((v31 & 8) == 0)
      {
LABEL_25:
        v4[4] |= v31;
        return this;
      }

LABEL_24:
      v4[52] = *(a2 + 52);
      goto LABEL_25;
    }

LABEL_36:
    v4[51] = *(a2 + 51);
    if ((v31 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return this;
}

void *TSP::FieldPath::MergeFrom(void *this, const TSP::FieldPath *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
    v8 = *(v4 + 4);
    v7 = (v4 + 2);
    google::protobuf::RepeatedField<unsigned int>::Reserve(v7, v8 + v6);
    v9 = *(v7 + 1);
    *v7 += *(a2 + 4);
    v10 = (v9 + 4 * v8);
    v11 = *(a2 + 3);
    v12 = 4 * *(a2 + 4);

    return memcpy(v10, v11, v12);
  }

  return this;
}

void TSP::MessageInfo::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::MessageInfo::Clear(this, a2, a3);

    TSP::MessageInfo::MergeFrom(this, a2);
  }
}

BOOL TSP::MessageInfo::IsInitialized(TSP::MessageInfo *this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    return 0;
  }

  v1 = *(this + 14);
  v2 = *(this + 8);
  do
  {
    result = v1 < 1;
    if (v1 < 1)
    {
      break;
    }

    v4 = *(v2 + 8 * v1--);
  }

  while ((*(v4 + 16) & 2) != 0);
  return result;
}

uint64_t TSP::MessageInfo::GetMetadata(TSP::MessageInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[2];
  v2 = off_1001E92E8[3];
  return result;
}

uint64_t TSP::FieldInfo::FieldInfo(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C7DC8;
  *(a1 + 8) = a2;
  *(a1 + 32) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  if (atomic_load_explicit(scc_info_FieldInfo_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldInfo_TSPArchiveMessages_2eproto);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 120) = 0;
  return a1;
}

void sub_1000354EC(_Unwind_Exception *a1)
{
  if (v1[19] >= 1)
  {
    sub_100156CF0(v4);
  }

  sub_100156D24(v1 + 13, v3, v1 + 7, v2);
  _Unwind_Resume(a1);
}

void TSP::FieldInfo::~FieldInfo(TSP::FieldInfo *this)
{
  v2 = *(this + 12);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (this != &TSP::_FieldInfo_default_instance_)
  {
    v3 = *(this + 13);
    if (v3)
    {
      TSP::FieldPath::~FieldPath(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  if (*(this + 19) >= 1)
  {
    v4 = *(this + 10);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 13) >= 1)
  {
    v7 = *(this + 7);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(this + 7) >= 1)
  {
    v10 = *(this + 4);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }
}

{
  TSP::FieldInfo::~FieldInfo(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::FieldInfo::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  *(this + 6) = 0;
  *(this + 12) = 0;
  *(this + 18) = 0;
  v4 = *(this + 4);
  if ((v4 & 3) == 0)
  {
    goto LABEL_9;
  }

  if (v4)
  {
    v5 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v4 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    *v5 = 0;
    *(v5 + 23) = 0;
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = *(this + 13);
  v7 = *(v6 + 8);
  this = (v6 + 8);
  *(this + 2) = 0;
  if (v7)
  {
    this = sub_1000315EC(this, a2, a3);
  }

LABEL_9:
  if ((v4 & 0x1C) != 0)
  {
    *(v3 + 30) = 0;
    *(v3 + 14) = 0;
  }

  v9 = *(v3 + 8);
  v8 = v3 + 8;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::FieldInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v33, i) & 1) == 0; i = *(a3 + 92))
  {
    v7 = (v33 + 1);
    v8 = *v33;
    if ((*v33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v33 + 2);
LABEL_6:
      v33 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
    v33 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 > 4)
    {
      if (v8 >> 3 > 6)
      {
        if (v10 == 7)
        {
          if (v8 == 58)
          {
            v21 = google::protobuf::internal::PackedUInt32Parser((a1 + 72), v7, a3);
            goto LABEL_83;
          }

          if (v8 == 56)
          {
            LODWORD(v34) = sub_10003465C(&v33);
            google::protobuf::RepeatedField<unsigned int>::Add((a1 + 72), &v34);
            goto LABEL_74;
          }
        }

        else if (v10 == 8 && v8 == 66)
        {
          *(a1 + 16) |= 1u;
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 96), v19);
          v21 = google::protobuf::internal::InlineGreedyStringParser(v20, v33, a3);
          goto LABEL_83;
        }
      }

      else if (v10 == 5)
      {
        if (v8 == 42)
        {
          v18 = (a1 + 48);
          goto LABEL_51;
        }

        if (v8 == 40)
        {
          v34 = sub_100033784(&v33);
          v28 = (a1 + 48);
          goto LABEL_73;
        }
      }

      else if (v10 == 6 && v8 == 48)
      {
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if (v17 < 0)
        {
          v33 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          if (!v33)
          {
            return 0;
          }
        }

        else
        {
          v16 = (v7 + 2);
LABEL_28:
          v33 = v16;
        }

        if (v15 > 2)
        {
          sub_100156D98((a1 + 8));
        }

        else
        {
          *(a1 + 16) |= 0x10u;
          *(a1 + 120) = v15;
        }

        continue;
      }
    }

    else if (v8 >> 3 > 2)
    {
      if (v10 == 3)
      {
        if (v8 == 24)
        {
          v26 = (v7 + 1);
          v25 = *v7;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v27 = *v26;
          v25 = (v27 << 7) + v25 - 128;
          if (v27 < 0)
          {
            v33 = google::protobuf::internal::VarintParseSlow64(v7, v25);
            if (!v33)
            {
              return 0;
            }
          }

          else
          {
            v26 = (v7 + 2);
LABEL_56:
            v33 = v26;
          }

          if ((v25 + 1) > 3)
          {
            sub_100156DD4((a1 + 8));
          }

          else
          {
            *(a1 + 16) |= 8u;
            *(a1 + 116) = v25;
          }

          continue;
        }
      }

      else if (v10 == 4)
      {
        if (v8 == 34)
        {
          v18 = (a1 + 24);
LABEL_51:
          v21 = google::protobuf::internal::PackedUInt64Parser(v18, v7, a3);
          goto LABEL_83;
        }

        if (v8 == 32)
        {
          v34 = sub_100033784(&v33);
          v28 = (a1 + 24);
LABEL_73:
          google::protobuf::RepeatedField<unsigned long long>::Add(v28, &v34);
LABEL_74:
          if (!v33)
          {
            return 0;
          }

          continue;
        }
      }
    }

    else if (v10 == 1)
    {
      if (v8 == 10)
      {
        *(a1 + 16) |= 2u;
        v23 = *(a1 + 104);
        if (!v23)
        {
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::FieldPath>(v24);
          *(a1 + 104) = v23;
          v7 = v33;
        }

        v21 = sub_100155CB0(a3, v23, v7);
        goto LABEL_83;
      }
    }

    else if (v10 == 2 && v8 == 16)
    {
      v13 = (v7 + 1);
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if (v14 < 0)
      {
        v33 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        if (!v33)
        {
          return 0;
        }
      }

      else
      {
        v13 = (v7 + 2);
LABEL_18:
        v33 = v13;
      }

      if (v12 > 3)
      {
        sub_100156E10((a1 + 8));
      }

      else
      {
        *(a1 + 16) |= 4u;
        *(a1 + 112) = v12;
      }

      continue;
    }

    if (v8)
    {
      v29 = (v8 & 7) == 4;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      *(a3 + 80) = v8 - 1;
      return v33;
    }

    v30 = *(a1 + 8);
    if (v30)
    {
      v31 = ((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v31 = sub_100031428((a1 + 8), v6, v7);
      v7 = v33;
    }

    v21 = google::protobuf::internal::UnknownFieldParse(v8, v31, v7);
LABEL_83:
    v33 = v21;
    if (!v21)
    {
      return 0;
    }
  }

  return v33;
}

const google::protobuf::UnknownFieldSet *TSP::FieldInfo::_InternalSerialize(TSP::FieldInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 13);
    *v4 = 10;
    v9 = *(v8 + 9);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = (v4 + 3);
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          v10 = (v10 + 1);
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = (v4 + 3);
      }
    }

    else
    {
      v4[1] = v9;
      v10 = (v4 + 2);
    }

    v4 = TSP::FieldPath::_InternalSerialize(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
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

  v17 = *(this + 28);
  *v4 = 16;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    if (v17 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++v4;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(v4 - 1) = v19;
      if ((v6 & 8) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v4[2] = v18;
      v4 += 3;
      if ((v6 & 8) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v4[1] = v17;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 29);
  *v4 = 24;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v4;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_34:
  v21 = *(this + 10);
  if (v21 >= 1)
  {
    v4 = sub_100049868(a3, 4, this + 6, v21, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  v22 = *(this + 16);
  if (v22 >= 1)
  {
    v4 = sub_100049868(a3, 5, this + 12, v22, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v23 = *(this + 30);
    *v4 = 48;
    if (v23 > 0x7F)
    {
      v4[1] = v23 | 0x80;
      v24 = v23 >> 7;
      if (v23 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v24 | 0x80;
          v25 = v24 >> 7;
          ++v4;
          v26 = v24 >> 14;
          v24 >>= 7;
        }

        while (v26);
        *(v4 - 1) = v25;
      }

      else
      {
        v4[2] = v24;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v23;
      v4 += 2;
    }
  }

  v27 = *(this + 22);
  if (v27 >= 1)
  {
    v4 = sub_1000496C0(a3, 7, this + 18, v27, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if (v6)
  {
    v4 = sub_100030384(a3, 8, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v28 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v27);
}

char *TSP::FieldInfo::ByteSizeLong(TSP::FieldInfo *this)
{
  if ((*(this + 16) & 2) != 0)
  {
    v3 = TSP::FieldPath::ByteSizeLong(*(this + 13));
    v2 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

  else
  {
    v2 = 0;
  }

  v4 = google::protobuf::internal::WireFormatLite::UInt64Size(this + 6);
  if (v4)
  {
    v5 = v4;
    if ((v4 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v6;
  }

  else
  {
    v5 = 0;
  }

  *(this + 10) = v5;
  v7 = v2 + v4;
  v8 = google::protobuf::internal::WireFormatLite::UInt64Size(this + 12);
  if (v8)
  {
    v9 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7 += v10;
  }

  else
  {
    v9 = 0;
  }

  *(this + 16) = v9;
  v11 = v7 + v8;
  v12 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 18);
  if (v12)
  {
    v13 = v12;
    if ((v12 & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v11 += v14;
  }

  else
  {
    v13 = 0;
  }

  *(this + 22) = v13;
  v15 = (v11 + v12);
  v16 = *(this + 4);
  if (v16)
  {
    v17 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    v15 = (v15 + v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if ((v16 & 0x1C) != 0)
  {
    if ((v16 & 4) != 0)
    {
      v20 = *(this + 28);
      if (v20 < 0)
      {
        v21 = 11;
      }

      else
      {
        v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v15 = (v15 + v21);
      if ((v16 & 8) == 0)
      {
LABEL_29:
        if ((v16 & 0x10) == 0)
        {
          goto LABEL_43;
        }

LABEL_39:
        v24 = *(this + 30);
        if (v24 < 0)
        {
          v25 = 11;
        }

        else
        {
          v25 = ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        v15 = (v15 + v25);
        goto LABEL_43;
      }
    }

    else if ((v16 & 8) == 0)
    {
      goto LABEL_29;
    }

    v22 = *(this + 29);
    if (v22 < 0)
    {
      v23 = 11;
    }

    else
    {
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v15 = (v15 + v23);
    if ((v16 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

LABEL_43:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v15, this + 5);
  }

  else
  {
    *(this + 5) = v15;
    return v15;
  }
}

void TSP::FieldInfo::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::FieldInfo::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

google::protobuf::Arena **TSP::FieldInfo::MergeFrom(google::protobuf::Arena **this, const TSP::FieldInfo *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(v4 + 6);
    google::protobuf::RepeatedField<unsigned long long>::Reserve(v4 + 6, v7 + v6);
    v8 = v4[4];
    *(v4 + 6) += *(a2 + 6);
    this = memcpy(v8 + 8 * v7, *(a2 + 4), 8 * *(a2 + 6));
  }

  v9 = *(a2 + 12);
  if (v9)
  {
    v10 = *(v4 + 12);
    google::protobuf::RepeatedField<unsigned long long>::Reserve(v4 + 12, v10 + v9);
    v11 = v4[7];
    *(v4 + 12) += *(a2 + 12);
    this = memcpy(v11 + 8 * v10, *(a2 + 7), 8 * *(a2 + 12));
  }

  v12 = *(a2 + 18);
  if (v12)
  {
    v13 = *(v4 + 18);
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 18, v13 + v12);
    v14 = v4[10];
    *(v4 + 18) += *(a2 + 18);
    this = memcpy(v14 + 4 * v13, *(a2 + 10), 4 * *(a2 + 18));
  }

  v15 = *(a2 + 4);
  if ((v15 & 0x1F) != 0)
  {
    if (v15)
    {
      v16 = *(a2 + 12);
      *(v4 + 4) |= 1u;
      v17 = v4[1];
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v4 + 12, v16 & 0xFFFFFFFFFFFFFFFELL, v17);
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_29;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v4 + 4) |= 2u;
    v18 = v4[13];
    if (!v18)
    {
      v19 = v4[1];
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSP::FieldPath>(v19);
      v4[13] = v18;
    }

    if (*(a2 + 13))
    {
      v20 = *(a2 + 13);
    }

    else
    {
      v20 = &TSP::_FieldPath_default_instance_;
    }

    this = TSP::FieldPath::MergeFrom(v18, v20, a3);
    if ((v15 & 4) == 0)
    {
LABEL_13:
      if ((v15 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v4 + 28) = *(a2 + 28);
    if ((v15 & 8) == 0)
    {
LABEL_14:
      if ((v15 & 0x10) == 0)
      {
LABEL_16:
        *(v4 + 4) |= v15;
        return this;
      }

LABEL_15:
      *(v4 + 30) = *(a2 + 30);
      goto LABEL_16;
    }

LABEL_30:
    *(v4 + 29) = *(a2 + 29);
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return this;
}

void TSP::FieldInfo::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::FieldInfo::Clear(this, a2, a3);

    TSP::FieldInfo::MergeFrom(this, a2);
  }
}

uint64_t TSP::FieldInfo::GetMetadata(TSP::FieldInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[4];
  v2 = off_1001E92E8[5];
  return result;
}

void TSP::FieldPath::~FieldPath(TSP::FieldPath *this)
{
  sub_10002F4C4(this + 1);
  if (*(this + 5) >= 1)
  {
    v2 = *(this + 3);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }
}

{
  TSP::FieldPath::~FieldPath(this);

  operator delete();
}

google::protobuf::internal *TSP::FieldPath::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  if ((sub_1000313B0(a3, &v15, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v15 + 1);
      v7 = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v8 - 128));
      v15 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v5;
LABEL_6:
      if ((v7 & 0xFFFFFFF8) == 8)
      {
        if (v7 == 10)
        {
          v9 = google::protobuf::internal::PackedUInt32Parser((a1 + 16), v6, a3);
          goto LABEL_21;
        }

        if (v7 == 8)
        {
          v16 = sub_10003465C(&v15);
          google::protobuf::RepeatedField<unsigned int>::Add((a1 + 16), &v16);
          if (!v15)
          {
            return 0;
          }

          goto LABEL_22;
        }
      }

      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        *(a3 + 80) = v7 - 1;
        return v15;
      }

      v12 = *(a1 + 8);
      if (v12)
      {
        v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v13 = sub_100031428((a1 + 8), v5, v6);
        v6 = v15;
      }

      v9 = google::protobuf::internal::UnknownFieldParse(v7, v13, v6);
LABEL_21:
      v15 = v9;
      if (!v9)
      {
        return 0;
      }

LABEL_22:
      if (sub_1000313B0(a3, &v15, *(a3 + 92)))
      {
        return v15;
      }
    }

    v6 = (v15 + 2);
LABEL_5:
    v15 = v6;
    goto LABEL_6;
  }

  return v15;
}

const google::protobuf::UnknownFieldSet *TSP::FieldPath::_InternalSerialize(TSP::FieldPath *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    v4 = sub_1000496C0(a3, 1, this + 4, v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v6);
}

char *TSP::FieldPath::ByteSizeLong(TSP::FieldPath *this)
{
  v2 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 4);
  if (v2)
  {
    v3 = v2;
    if ((v2 & 0x80000000) != 0)
    {
      v4 = 11;
    }

    else
    {
      v4 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *(this + 8) = v3;
  v5 = (v4 + v2);
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 9);
  }

  else
  {
    *(this + 9) = v5;
    return (v4 + v2);
  }
}

void TSP::FieldPath::MergeFrom(TSP::FieldPath *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::FieldPath::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void TSP::FieldPath::CopyFrom(char **this, char **lpsrc, uint64_t a3)
{
  if (lpsrc != this)
  {
    v7 = *(this + 8);
    v6 = (this + 1);
    *(v6 + 2) = 0;
    if (v7)
    {
      sub_1000315EC(v6, lpsrc, a3);
    }

    TSP::FieldPath::MergeFrom(this, lpsrc);
  }
}

uint64_t TSP::FieldPath::GetMetadata(TSP::FieldPath *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[6];
  v2 = off_1001E92E8[7];
  return result;
}

uint64_t TSP::ComponentInfo::ComponentInfo(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C7F28;
  *(a1 + 8) = a2;
  *(a1 + 32) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 120) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a2;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 248) = a2;
  *(a1 + 176) = a2;
  *(a1 + 192) = 0;
  *(a1 + 200) = a2;
  *(a1 + 216) = a2;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  if (atomic_load_explicit(scc_info_ComponentInfo_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ComponentInfo_TSPArchiveMessages_2eproto);
  }

  *(a1 + 264) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 272) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 304) = 0;
  return a1;
}

void sub_10003697C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10)
{
  v27 = v17;
  if (*(v13 + 244) >= 1)
  {
    sub_100156CF0(v19);
  }

  sub_100049AFC(v16);
  if (*(v13 + 196) >= 1)
  {
    v21 = *(v13 + 200);
    v23 = *(v21 - 8);
    v22 = (v21 - 8);
    if (!v23)
    {
      operator delete(v22);
    }
  }

  if (*(v13 + 172) >= 1)
  {
    v24 = *(v13 + 176);
    v26 = *(v24 - 8);
    v25 = (v24 - 8);
    if (!v26)
    {
      operator delete(v25);
    }
  }

  sub_100049C9C(v18);
  sub_100049C18(v15);
  sub_100049B94(v14);
  sub_100049AFC(v12);
  sub_100156E4C(v27, v10, a10, v11);
  _Unwind_Resume(a1);
}

void TSP::ComponentInfo::~ComponentInfo(TSP::ComponentInfo *this)
{
  v2 = *(this + 33);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(this + 34);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
  if (*(this + 61) >= 1)
  {
    v4 = *(this + 31);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  sub_100049AFC(this + 27);
  if (*(this + 49) >= 1)
  {
    v7 = *(this + 25);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(this + 43) >= 1)
  {
    v10 = *(this + 22);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  sub_100049C9C(this + 18);
  sub_100049C18(this + 15);
  sub_100049B94(this + 12);
  sub_100049AFC(this + 9);
  if (*(this + 13) >= 1)
  {
    v13 = *(this + 7);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }

  if (*(this + 7) >= 1)
  {
    v16 = *(this + 4);
    v18 = *(v16 - 8);
    v17 = (v16 - 8);
    if (!v18)
    {
      operator delete(v17);
    }
  }
}

{
  TSP::ComponentInfo::~ComponentInfo(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ComponentInfo::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  *(this + 6) = 0;
  *(this + 12) = 0;
  v4 = *(this + 20);
  if (v4 >= 1)
  {
    v5 = (*(this + 11) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::ComponentExternalReference::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 80) = 0;
  }

  v7 = *(v3 + 104);
  if (v7 >= 1)
  {
    v8 = (*(v3 + 112) + 8);
    do
    {
      v9 = *v8++;
      this = TSP::ComponentDataReference::Clear(v9, a2, a3);
      --v7;
    }

    while (v7);
    *(v3 + 104) = 0;
  }

  v10 = *(v3 + 128);
  if (v10 >= 1)
  {
    v11 = (*(v3 + 136) + 8);
    do
    {
      v12 = *v11++;
      this = TSP::ObjectUUIDMapEntry::Clear(v12, a2, a3);
      --v10;
    }

    while (v10);
    *(v3 + 128) = 0;
  }

  v13 = *(v3 + 152);
  if (v13 >= 1)
  {
    v14 = (*(v3 + 160) + 8);
    do
    {
      v15 = *v14++;
      this = TSP::FeatureInfo::Clear(v15, a2, a3);
      --v13;
    }

    while (v13);
    *(v3 + 152) = 0;
  }

  *(v3 + 168) = 0;
  *(v3 + 192) = 0;
  v16 = *(v3 + 224);
  if (v16 >= 1)
  {
    v17 = (*(v3 + 232) + 8);
    do
    {
      v18 = *v17++;
      this = TSP::ComponentExternalReference::Clear(v18, a2, a3);
      --v16;
    }

    while (v16);
    *(v3 + 224) = 0;
  }

  *(v3 + 240) = 0;
  v19 = *(v3 + 16);
  if ((v19 & 3) != 0)
  {
    if (v19)
    {
      v20 = *(v3 + 264) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v20 + 23) < 0)
      {
        **v20 = 0;
        *(v20 + 8) = 0;
        if ((v19 & 2) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      *v20 = 0;
      *(v20 + 23) = 0;
    }

    if ((v19 & 2) == 0)
    {
      goto LABEL_31;
    }

LABEL_26:
    v21 = *(v3 + 272) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v21 + 23) < 0)
    {
      **v21 = 0;
      *(v21 + 8) = 0;
    }

    else
    {
      *v21 = 0;
      *(v21 + 23) = 0;
    }
  }

LABEL_31:
  if ((v19 & 0xFC) != 0)
  {
    *(v3 + 280) = 0;
    *(v3 + 288) = 0;
    *(v3 + 296) = 0;
  }

  v23 = *(v3 + 8);
  v22 = v3 + 8;
  *(v22 + 296) = 0;
  *(v22 + 8) = 0;
  if (v23)
  {

    return sub_1000315EC(v22, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::ComponentInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v96 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v96, *(a3 + 92)) & 1) == 0)
  {
    while (2)
    {
      v8 = (v96 + 1);
      v9 = *v96;
      if (*v96 < 0)
      {
        v10 = v9 + (*v8 << 7);
        v9 = v10 - 128;
        if (*v8 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v96, (v10 - 128));
          v96 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_174;
          }

          v8 = TagFallback;
          v9 = v5;
LABEL_7:
          switch(v9 >> 3)
          {
            case 1u:
              if (v9 != 8)
              {
                goto LABEL_162;
              }

              v6 |= 4u;
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
                v96 = v12;
                *(a1 + 280) = v11;
                goto LABEL_170;
              }

              v82 = google::protobuf::internal::VarintParseSlow64(v8, v11);
              v96 = v82;
              *(a1 + 280) = v83;
              if (!v82)
              {
                goto LABEL_174;
              }

              goto LABEL_170;
            case 2u:
              if (v9 != 18)
              {
                goto LABEL_162;
              }

              *(a1 + 16) |= 1u;
              v30 = *(a1 + 8);
              if (v30)
              {
                v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
              }

              v31 = (a1 + 264);
              goto LABEL_70;
            case 3u:
              if (v9 != 26)
              {
                goto LABEL_162;
              }

              *(a1 + 16) |= 2u;
              v30 = *(a1 + 8);
              if (v30)
              {
                v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
              }

              v31 = (a1 + 272);
LABEL_70:
              v41 = google::protobuf::internal::ArenaStringPtr::Mutable(v31, v30);
              v40 = google::protobuf::internal::InlineGreedyStringParser(v41, v96, a3);
              goto LABEL_169;
            case 4u:
              if (v9 != 34)
              {
                if (v9 == 32)
                {
                  LODWORD(v97) = sub_10003465C(&v96);
                  v92 = (a1 + 24);
                  goto LABEL_157;
                }

                goto LABEL_162;
              }

              v29 = (a1 + 24);
LABEL_65:
              v40 = google::protobuf::internal::PackedUInt32Parser(v29, v8, a3);
              goto LABEL_169;
            case 5u:
              if (v9 != 42)
              {
                if (v9 == 40)
                {
                  LODWORD(v97) = sub_10003465C(&v96);
                  v92 = (a1 + 48);
LABEL_157:
                  google::protobuf::RepeatedField<unsigned int>::Add(v92, &v97);
                  goto LABEL_158;
                }

                goto LABEL_162;
              }

              v29 = (a1 + 48);
              goto LABEL_65;
            case 6u:
              if (v9 != 50)
              {
                goto LABEL_162;
              }

              v32 = (v8 - 1);
              while (1)
              {
                v33 = (v32 + 1);
                v96 = (v32 + 1);
                v34 = *(a1 + 88);
                if (!v34)
                {
                  break;
                }

                v39 = *(a1 + 80);
                v35 = *v34;
                if (v39 < *v34)
                {
                  *(a1 + 80) = v39 + 1;
                  v36 = *&v34[2 * v39 + 2];
                  goto LABEL_55;
                }

                if (v35 == *(a1 + 84))
                {
                  goto LABEL_51;
                }

LABEL_52:
                *v34 = v35 + 1;
                v36 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentExternalReference>(*(a1 + 72));
                v37 = *(a1 + 80);
                v38 = *(a1 + 88) + 8 * v37;
                *(a1 + 80) = v37 + 1;
                *(v38 + 8) = v36;
                v33 = v96;
LABEL_55:
                v32 = sub_100155D80(a3, v36, v33);
                v96 = v32;
                if (!v32)
                {
                  goto LABEL_174;
                }

                if (*a3 <= v32 || *v32 != 50)
                {
                  goto LABEL_170;
                }
              }

              v35 = *(a1 + 84);
LABEL_51:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v35 + 1);
              v34 = *(a1 + 88);
              v35 = *v34;
              goto LABEL_52;
            case 7u:
              if (v9 != 58)
              {
                goto LABEL_162;
              }

              v42 = (v8 - 1);
              while (1)
              {
                v43 = (v42 + 1);
                v96 = (v42 + 1);
                v44 = *(a1 + 112);
                if (!v44)
                {
                  break;
                }

                v49 = *(a1 + 104);
                v45 = *v44;
                if (v49 < *v44)
                {
                  *(a1 + 104) = v49 + 1;
                  v46 = *&v44[2 * v49 + 2];
                  goto LABEL_79;
                }

                if (v45 == *(a1 + 108))
                {
                  goto LABEL_75;
                }

LABEL_76:
                *v44 = v45 + 1;
                v46 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentDataReference>(*(a1 + 96));
                v47 = *(a1 + 104);
                v48 = *(a1 + 112) + 8 * v47;
                *(a1 + 104) = v47 + 1;
                *(v48 + 8) = v46;
                v43 = v96;
LABEL_79:
                v42 = sub_100155E50(a3, v46, v43);
                v96 = v42;
                if (!v42)
                {
                  goto LABEL_174;
                }

                if (*a3 <= v42 || *v42 != 58)
                {
                  goto LABEL_170;
                }
              }

              v45 = *(a1 + 108);
LABEL_75:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96), v45 + 1);
              v44 = *(a1 + 112);
              v45 = *v44;
              goto LABEL_76;
            case 0xAu:
              if (v9 != 80)
              {
                goto LABEL_162;
              }

              v6 |= 0x10u;
              v51 = (v8 + 1);
              v50 = *v8;
              if ((v50 & 0x8000000000000000) == 0)
              {
                goto LABEL_89;
              }

              v52 = *v51;
              v50 = (v52 << 7) + v50 - 128;
              if (v52 < 0)
              {
                v84 = google::protobuf::internal::VarintParseSlow64(v8, v50);
                v96 = v84;
                *(a1 + 296) = v85 != 0;
                if (!v84)
                {
                  goto LABEL_174;
                }
              }

              else
              {
                v51 = (v8 + 2);
LABEL_89:
                v96 = v51;
                *(a1 + 296) = v50 != 0;
              }

              goto LABEL_170;
            case 0xBu:
              if (v9 != 90)
              {
                goto LABEL_162;
              }

              v67 = (v8 - 1);
              while (1)
              {
                v68 = (v67 + 1);
                v96 = (v67 + 1);
                v69 = *(a1 + 136);
                if (!v69)
                {
                  break;
                }

                v74 = *(a1 + 128);
                v70 = *v69;
                if (v74 < *v69)
                {
                  *(a1 + 128) = v74 + 1;
                  v71 = *&v69[2 * v74 + 2];
                  goto LABEL_122;
                }

                if (v70 == *(a1 + 132))
                {
                  goto LABEL_118;
                }

LABEL_119:
                *v69 = v70 + 1;
                v71 = google::protobuf::Arena::CreateMaybeMessage<TSP::ObjectUUIDMapEntry>(*(a1 + 120));
                v72 = *(a1 + 128);
                v73 = *(a1 + 136) + 8 * v72;
                *(a1 + 128) = v72 + 1;
                *(v73 + 8) = v71;
                v68 = v96;
LABEL_122:
                v67 = sub_100155F20(a3, v71, v68);
                v96 = v67;
                if (!v67)
                {
                  goto LABEL_174;
                }

                if (*a3 <= v67 || *v67 != 90)
                {
                  goto LABEL_170;
                }
              }

              v70 = *(a1 + 132);
LABEL_118:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120), v70 + 1);
              v69 = *(a1 + 136);
              v70 = *v69;
              goto LABEL_119;
            case 0xCu:
              if (v9 != 96)
              {
                goto LABEL_162;
              }

              v6 |= 8u;
              v65 = (v8 + 1);
              v64 = *v8;
              if ((v64 & 0x8000000000000000) == 0)
              {
                goto LABEL_113;
              }

              v66 = *v65;
              v64 = (v66 << 7) + v64 - 128;
              if (v66 < 0)
              {
                v88 = google::protobuf::internal::VarintParseSlow64(v8, v64);
                v96 = v88;
                *(a1 + 288) = v89;
                if (!v88)
                {
                  goto LABEL_174;
                }
              }

              else
              {
                v65 = (v8 + 2);
LABEL_113:
                v96 = v65;
                *(a1 + 288) = v64;
              }

              goto LABEL_170;
            case 0xDu:
              if (v9 != 106)
              {
                goto LABEL_162;
              }

              v21 = (v8 - 1);
              while (1)
              {
                v22 = (v21 + 1);
                v96 = (v21 + 1);
                v23 = *(a1 + 160);
                if (!v23)
                {
                  break;
                }

                v28 = *(a1 + 152);
                v24 = *v23;
                if (v28 < *v23)
                {
                  *(a1 + 152) = v28 + 1;
                  v25 = *&v23[2 * v28 + 2];
                  goto LABEL_33;
                }

                if (v24 == *(a1 + 156))
                {
                  goto LABEL_29;
                }

LABEL_30:
                *v23 = v24 + 1;
                v25 = google::protobuf::Arena::CreateMaybeMessage<TSP::FeatureInfo>(*(a1 + 144));
                v26 = *(a1 + 152);
                v27 = *(a1 + 160) + 8 * v26;
                *(a1 + 152) = v26 + 1;
                *(v27 + 8) = v25;
                v22 = v96;
LABEL_33:
                v21 = sub_100155FF0(a3, v25, v22);
                v96 = v21;
                if (!v21)
                {
                  goto LABEL_174;
                }

                if (*a3 <= v21 || *v21 != 106)
                {
                  goto LABEL_170;
                }
              }

              v24 = *(a1 + 156);
LABEL_29:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144), v24 + 1);
              v23 = *(a1 + 160);
              v24 = *v23;
              goto LABEL_30;
            case 0xEu:
              if (v9 != 114)
              {
                if (v9 == 112)
                {
                  LODWORD(v97) = sub_10003465C(&v96);
                  v92 = (a1 + 168);
                  goto LABEL_157;
                }

                goto LABEL_162;
              }

              v29 = (a1 + 168);
              goto LABEL_65;
            case 0xFu:
              if (v9 != 122)
              {
                if (v9 == 120)
                {
                  LODWORD(v97) = sub_10003465C(&v96);
                  v92 = (a1 + 192);
                  goto LABEL_157;
                }

                goto LABEL_162;
              }

              v29 = (a1 + 192);
              goto LABEL_65;
            case 0x10u:
              if (v9 != 128)
              {
                goto LABEL_162;
              }

              v6 |= 0x80u;
              v18 = (v8 + 1);
              LODWORD(v19) = *v8;
              if ((*v8 & 0x80000000) == 0)
              {
                goto LABEL_24;
              }

              v20 = *v18;
              v19 = (v19 + (v20 << 7) - 128);
              if (v20 < 0)
              {
                v80 = google::protobuf::internal::VarintParseSlow32(v8, v19);
                v96 = v80;
                *(a1 + 300) = v81;
                if (!v80)
                {
                  goto LABEL_174;
                }
              }

              else
              {
                v18 = (v8 + 2);
LABEL_24:
                v96 = v18;
                *(a1 + 300) = v19;
              }

              goto LABEL_170;
            case 0x11u:
              if (v9 != 136)
              {
                goto LABEL_162;
              }

              v6 |= 0x20u;
              v54 = (v8 + 1);
              v53 = *v8;
              if ((v53 & 0x8000000000000000) == 0)
              {
                goto LABEL_94;
              }

              v55 = *v54;
              v53 = (v55 << 7) + v53 - 128;
              if (v55 < 0)
              {
                v86 = google::protobuf::internal::VarintParseSlow64(v8, v53);
                v96 = v86;
                *(a1 + 297) = v87 != 0;
                if (!v86)
                {
                  goto LABEL_174;
                }
              }

              else
              {
                v54 = (v8 + 2);
LABEL_94:
                v96 = v54;
                *(a1 + 297) = v53 != 0;
              }

              goto LABEL_170;
            case 0x12u:
              if (v9 != 146)
              {
                goto LABEL_162;
              }

              v56 = (v8 - 2);
              break;
            case 0x13u:
              if (v9 != 152)
              {
                goto LABEL_162;
              }

              v6 |= 0x40u;
              v76 = (v8 + 1);
              v75 = *v8;
              if ((v75 & 0x8000000000000000) == 0)
              {
                goto LABEL_134;
              }

              v77 = *v76;
              v75 = (v77 << 7) + v75 - 128;
              if (v77 < 0)
              {
                v90 = google::protobuf::internal::VarintParseSlow64(v8, v75);
                v96 = v90;
                *(a1 + 298) = v91 != 0;
                if (!v90)
                {
                  goto LABEL_174;
                }
              }

              else
              {
                v76 = (v8 + 2);
LABEL_134:
                v96 = v76;
                *(a1 + 298) = v75 != 0;
              }

              goto LABEL_170;
            case 0x14u:
              if (v9 != 162)
              {
                if (v9 == 160)
                {
                  v97 = sub_100033784(&v96);
                  google::protobuf::RepeatedField<unsigned long long>::Add((a1 + 240), &v97);
LABEL_158:
                  if (!v96)
                  {
                    goto LABEL_174;
                  }

                  goto LABEL_170;
                }

LABEL_162:
                if (v9)
                {
                  v93 = (v9 & 7) == 4;
                }

                else
                {
                  v93 = 1;
                }

                if (v93)
                {
                  *(a3 + 80) = v9 - 1;
                  goto LABEL_2;
                }

                v94 = *(a1 + 8);
                if (v94)
                {
                  v95 = ((v94 & 0xFFFFFFFFFFFFFFFELL) + 8);
                }

                else
                {
                  v95 = sub_100031428((a1 + 8), v5, v8);
                  v8 = v96;
                }

                v40 = google::protobuf::internal::UnknownFieldParse(v9, v95, v8);
                goto LABEL_169;
              }

              v40 = google::protobuf::internal::PackedUInt64Parser((a1 + 240), v8, a3);
LABEL_169:
              v96 = v40;
              if (!v40)
              {
LABEL_174:
                v96 = 0;
                goto LABEL_2;
              }

LABEL_170:
              if (sub_1000313B0(a3, &v96, *(a3 + 92)))
              {
                goto LABEL_2;
              }

              continue;
            case 0x15u:
              if (v9 != 168)
              {
                goto LABEL_162;
              }

              v6 |= 0x100u;
              v15 = (v8 + 1);
              LODWORD(v16) = *v8;
              if ((*v8 & 0x80000000) == 0)
              {
                goto LABEL_19;
              }

              v17 = *v15;
              v16 = (v16 + (v17 << 7) - 128);
              if (v17 < 0)
              {
                v78 = google::protobuf::internal::VarintParseSlow32(v8, v16);
                v96 = v78;
                *(a1 + 304) = v79;
                if (!v78)
                {
                  goto LABEL_174;
                }
              }

              else
              {
                v15 = (v8 + 2);
LABEL_19:
                v96 = v15;
                *(a1 + 304) = v16;
              }

              goto LABEL_170;
            default:
              goto LABEL_162;
          }

          while (1)
          {
            v57 = (v56 + 2);
            v96 = (v56 + 2);
            v58 = *(a1 + 232);
            if (!v58)
            {
              break;
            }

            v63 = *(a1 + 224);
            v59 = *v58;
            if (v63 < *v58)
            {
              *(a1 + 224) = v63 + 1;
              v60 = *&v58[2 * v63 + 2];
              goto LABEL_103;
            }

            if (v59 == *(a1 + 228))
            {
              goto LABEL_99;
            }

LABEL_100:
            *v58 = v59 + 1;
            v60 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentExternalReference>(*(a1 + 216));
            v61 = *(a1 + 224);
            v62 = *(a1 + 232) + 8 * v61;
            *(a1 + 224) = v61 + 1;
            *(v62 + 8) = v60;
            v57 = v96;
LABEL_103:
            v56 = sub_100155D80(a3, v60, v57);
            v96 = v56;
            if (!v56)
            {
              goto LABEL_174;
            }

            if (*a3 <= v56 || *v56 != 402)
            {
              goto LABEL_170;
            }
          }

          v59 = *(a1 + 228);
LABEL_99:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 216), v59 + 1);
          v58 = *(a1 + 232);
          v59 = *v58;
          goto LABEL_100;
        }

        v8 = (v96 + 2);
      }

      break;
    }

    v96 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v96;
}

const google::protobuf::UnknownFieldSet *TSP::ComponentInfo::_InternalSerialize(TSP::ComponentInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v35 = *(this + 35);
    *v4 = 8;
    if (v35 > 0x7F)
    {
      v4[1] = v35 | 0x80;
      v37 = v35 >> 7;
      if (v35 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v37 | 0x80;
          v65 = v37 >> 7;
          ++v4;
          v66 = v37 >> 14;
          v37 >>= 7;
        }

        while (v66);
        *(v4 - 1) = v65;
        if (v6)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v4[2] = v37;
        v4 += 3;
        if (v6)
        {
          goto LABEL_123;
        }
      }
    }

    else
    {
      v4[1] = v35;
      v4 += 2;
      if (v6)
      {
        goto LABEL_123;
      }
    }

LABEL_3:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_123:
  v4 = sub_100030384(a3, 2, (*(this + 33) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_4:
    v4 = sub_100030384(a3, 3, (*(this + 34) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(this + 10);
  if (v7 >= 1)
  {
    v4 = sub_1000496C0(a3, 4, this + 6, v7, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v8 = *(this + 16);
  if (v8 >= 1)
  {
    v4 = sub_1000496C0(a3, 5, this + 12, v8, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v9 = *(this + 20);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *(*(this + 11) + 8 * i + 8);
      *v4 = 50;
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

      v4 = TSP::ComponentExternalReference::_InternalSerialize(v11, v13, a3, v8);
    }
  }

  v17 = *(this + 26);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v19 = *(*(this + 14) + 8 * j + 8);
      *v4 = 58;
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

      v4 = TSP::ComponentDataReference::_InternalSerialize(v19, v21, a3, v8);
    }
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 296);
    *v4 = 80;
    v4[1] = v25;
    v4 += 2;
  }

  v26 = *(this + 32);
  if (v26)
  {
    for (k = 0; k != v26; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v28 = *(*(this + 17) + 8 * k + 8);
      *v4 = 90;
      v29 = *(v28 + 5);
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

      v4 = TSP::ObjectUUIDMapEntry::_InternalSerialize(v28, v30, a3, v8);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v34 = *(this + 36);
    *v4 = 96;
    if (v34 > 0x7F)
    {
      v4[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v36 | 0x80;
          v38 = v36 >> 7;
          ++v4;
          v39 = v36 >> 14;
          v36 >>= 7;
        }

        while (v39);
        *(v4 - 1) = v38;
      }

      else
      {
        v4[2] = v36;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v34;
      v4 += 2;
    }
  }

  v40 = *(this + 38);
  if (v40)
  {
    for (m = 0; m != v40; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v42 = *(*(this + 20) + 8 * m + 8);
      *v4 = 106;
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

      v4 = TSP::FeatureInfo::_InternalSerialize(v42, v44, a3);
    }
  }

  v48 = *(this + 46);
  if (v48 > 0)
  {
    v4 = sub_1000496C0(a3, 14, this + 42, v48, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v49 = *(this + 52);
  if (v49 >= 1)
  {
    v4 = sub_1000496C0(a3, 15, this + 48, v49, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if ((v6 & 0x80) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v50 = *(this + 75);
    *v4 = 384;
    if (v50 <= 0x7F)
    {
      v4[2] = v50;
      v4 += 3;
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_92;
    }

    v4[2] = v50 | 0x80;
    v51 = v50 >> 7;
    if (v50 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v51 | 0x80;
        v67 = v51 >> 7;
        ++v4;
        v68 = v51 >> 14;
        v51 >>= 7;
      }

      while (v68);
      *(v4 - 1) = v67;
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_92;
    }

    v4[3] = v51;
    v4 += 4;
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_95;
  }

LABEL_92:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v52 = *(this + 297);
  *v4 = 392;
  v4[2] = v52;
  v4 += 3;
LABEL_95:
  v53 = *(this + 56);
  if (v53)
  {
    for (n = 0; n != v53; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v55 = *(*(this + 29) + 8 * n + 8);
      *v4 = 402;
      v56 = *(v55 + 5);
      if (v56 > 0x7F)
      {
        v4[2] = v56 | 0x80;
        v58 = v56 >> 7;
        if (v56 >> 14)
        {
          v57 = v4 + 4;
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
          v4[3] = v58;
          v57 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v56;
        v57 = v4 + 3;
      }

      v4 = TSP::ComponentExternalReference::_InternalSerialize(v55, v57, a3, v49);
    }
  }

  if ((v6 & 0x40) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v61 = *(this + 298);
    *v4 = 408;
    v4[2] = v61;
    v4 += 3;
  }

  v62 = *(this + 64);
  if (v62 >= 1)
  {
    v4 = sub_100049868(a3, 20, this + 60, v62, v4, google::protobuf::io::EpsCopyOutputStream::Encode64);
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v63 = *(this + 76);
    *v4 = 424;
    if (v63 > 0x7F)
    {
      v4[2] = v63 | 0x80;
      v64 = v63 >> 7;
      if (v63 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v64 | 0x80;
          v69 = v64 >> 7;
          ++v4;
          v70 = v64 >> 14;
          v64 >>= 7;
        }

        while (v70);
        *(v4 - 1) = v69;
      }

      else
      {
        v4[3] = v64;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v63;
      v4 += 3;
    }
  }

  v71 = *(this + 1);
  if ((v71 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v71 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v62);
}

uint64_t TSP::ComponentInfo::RequiredFieldsByteSizeFallback(TSP::ComponentInfo *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 4) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(this + 33) & 0xFFFFFFFFFFFFFFFELL;
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
    v2 += ((9 * (__clz(*(this + 35) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return v2;
}

char *TSP::ComponentInfo::ByteSizeLong(TSP::ComponentInfo *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    v5 = TSP::ComponentInfo::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 33) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = v4 + ((9 * (__clz(*(this + 35) | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v6 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 6);
  v7 = 11;
  v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v6 >= 0)
  {
    v7 = v8;
  }

  v9 = v7 + v5;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (!v6)
  {
    v9 = v5;
  }

  *(this + 10) = v10;
  v11 = v9 + v6;
  v12 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 12);
  v13 = 11;
  v14 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v12 >= 0)
  {
    v13 = v14;
  }

  v15 = v13 + v11;
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  if (!v12)
  {
    v15 = v11;
  }

  *(this + 16) = v16;
  v17 = v15 + v12;
  v18 = *(this + 20);
  v19 = v17 + v18;
  v20 = *(this + 11);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = TSP::ComponentExternalReference::ByteSizeLong(v23);
      v19 += &v24[(9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6];
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(this + 26);
  v26 = v19 + v25;
  v27 = *(this + 14);
  if (v27)
  {
    v28 = (v27 + 8);
  }

  else
  {
    v28 = 0;
  }

  if (v25)
  {
    v29 = 8 * v25;
    do
    {
      v30 = *v28++;
      v31 = TSP::ComponentDataReference::ByteSizeLong(v30);
      v26 += &v31[(9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6];
      v29 -= 8;
    }

    while (v29);
  }

  v32 = *(this + 32);
  v33 = v26 + v32;
  v34 = *(this + 17);
  if (v34)
  {
    v35 = (v34 + 8);
  }

  else
  {
    v35 = 0;
  }

  if (v32)
  {
    v36 = 8 * v32;
    do
    {
      v37 = *v35++;
      v38 = TSP::ObjectUUIDMapEntry::ByteSizeLong(v37);
      v33 += &v38[(9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6];
      v36 -= 8;
    }

    while (v36);
  }

  v39 = *(this + 38);
  v40 = v33 + v39;
  v41 = *(this + 20);
  if (v41)
  {
    v42 = (v41 + 8);
  }

  else
  {
    v42 = 0;
  }

  if (v39)
  {
    v43 = 8 * v39;
    do
    {
      v44 = *v42++;
      v45 = TSP::FeatureInfo::ByteSizeLong(v44);
      v40 += &v45[(9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6];
      v43 -= 8;
    }

    while (v43);
  }

  v46 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 42);
  v47 = 11;
  v48 = ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v46 >= 0)
  {
    v47 = v48;
  }

  v49 = v47 + v40;
  if (v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = 0;
  }

  if (!v46)
  {
    v49 = v40;
  }

  *(this + 46) = v50;
  v51 = v49 + v46;
  v52 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 48);
  v53 = 11;
  v54 = ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v52 >= 0)
  {
    v53 = v54;
  }

  v55 = v53 + v51;
  if (v52)
  {
    v56 = v52;
  }

  else
  {
    v56 = 0;
  }

  if (!v52)
  {
    v55 = v51;
  }

  *(this + 52) = v56;
  v57 = v55 + v52;
  v58 = *(this + 56);
  v59 = v57 + 2 * v58;
  v60 = *(this + 29);
  if (v60)
  {
    v61 = (v60 + 8);
  }

  else
  {
    v61 = 0;
  }

  if (v58)
  {
    v62 = 8 * v58;
    do
    {
      v63 = *v61++;
      v64 = TSP::ComponentExternalReference::ByteSizeLong(v63);
      v59 += &v64[(9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6];
      v62 -= 8;
    }

    while (v62);
  }

  v65 = google::protobuf::internal::WireFormatLite::UInt64Size(this + 60);
  v66 = 12;
  v67 = ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v65 >= 0)
  {
    v66 = v67;
  }

  v68 = v66 + v59;
  if (v65)
  {
    v69 = v65;
  }

  else
  {
    v69 = 0;
  }

  if (!v65)
  {
    v68 = v59;
  }

  *(this + 64) = v69;
  v70 = (v68 + v65);
  v71 = *(this + 4);
  if ((v71 & 2) != 0)
  {
    v72 = *(this + 34) & 0xFFFFFFFFFFFFFFFELL;
    v73 = *(v72 + 23);
    v74 = *(v72 + 8);
    if ((v73 & 0x80u) == 0)
    {
      v74 = v73;
    }

    v70 = (v70 + v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  if ((v71 & 0xF8) != 0)
  {
    if ((v71 & 8) != 0)
    {
      v70 = (v70 + ((9 * (__clz(*(this + 36) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }

    v75 = v70 + ((v71 >> 3) & 2);
    if ((v71 & 0x20) != 0)
    {
      v75 += 3;
    }

    if ((v71 & 0x40) != 0)
    {
      v70 = (v75 + 3);
    }

    else
    {
      v70 = v75;
    }

    if ((v71 & 0x80) != 0)
    {
      v70 = (v70 + ((9 * (__clz(*(this + 75) | 1) ^ 0x1F) + 73) >> 6) + 2);
    }
  }

  if ((v71 & 0x100) != 0)
  {
    v70 = (v70 + ((9 * (__clz(*(this + 76) | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v70, this + 5);
  }

  else
  {
    *(this + 5) = v70;
    return v70;
  }
}

void TSP::ComponentInfo::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ComponentInfo::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

google::protobuf::Arena **TSP::ComponentInfo::MergeFrom(google::protobuf::Arena **this, const TSP::ComponentInfo *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(v4 + 6);
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 6, v7 + v6);
    v8 = v4[4];
    *(v4 + 6) += *(a2 + 6);
    this = memcpy(v8 + 4 * v7, *(a2 + 4), 4 * *(a2 + 6));
  }

  v9 = *(a2 + 12);
  if (v9)
  {
    v10 = *(v4 + 12);
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 12, v10 + v9);
    v11 = v4[7];
    *(v4 + 12) += *(a2 + 12);
    this = memcpy(v11 + 4 * v10, *(a2 + 7), 4 * *(a2 + 12));
  }

  v12 = *(a2 + 20);
  if (v12)
  {
    v13 = *(a2 + 11);
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 9), *(a2 + 20));
    this = sub_100049D20(v4 + 9, v14, v13 + 8, v12, *v4[11] - *(v4 + 20));
    v15 = *(v4 + 20) + v12;
    *(v4 + 20) = v15;
    v16 = v4[11];
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 26);
  if (v17)
  {
    v18 = *(a2 + 14);
    v19 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 12), *(a2 + 26));
    this = sub_100049DE0(v4 + 12, v19, v18 + 8, v17, *v4[14] - *(v4 + 26));
    v20 = *(v4 + 26) + v17;
    *(v4 + 26) = v20;
    v21 = v4[14];
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  v22 = *(a2 + 32);
  if (v22)
  {
    v23 = *(a2 + 17);
    v24 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 15), *(a2 + 32));
    this = sub_100049EA0(v4 + 15, v24, v23 + 8, v22, *v4[17] - *(v4 + 32));
    v25 = *(v4 + 32) + v22;
    *(v4 + 32) = v25;
    v26 = v4[17];
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  v27 = *(a2 + 38);
  if (v27)
  {
    v28 = *(a2 + 20);
    v29 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 18), *(a2 + 38));
    this = sub_100049F60(v4 + 6, v29, v28 + 8, v27, *v4[20] - *(v4 + 38));
    v30 = *(v4 + 38) + v27;
    *(v4 + 38) = v30;
    v31 = v4[20];
    if (*v31 < v30)
    {
      *v31 = v30;
    }
  }

  v32 = *(a2 + 42);
  if (v32)
  {
    v33 = *(v4 + 42);
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 42, v33 + v32);
    v34 = v4[22];
    *(v4 + 42) += *(a2 + 42);
    this = memcpy(v34 + 4 * v33, *(a2 + 22), 4 * *(a2 + 42));
  }

  v35 = *(a2 + 48);
  if (v35)
  {
    v36 = *(v4 + 48);
    google::protobuf::RepeatedField<unsigned int>::Reserve(v4 + 48, v36 + v35);
    v37 = v4[25];
    *(v4 + 48) += *(a2 + 48);
    this = memcpy(v37 + 4 * v36, *(a2 + 25), 4 * *(a2 + 48));
  }

  v38 = *(a2 + 56);
  if (v38)
  {
    v39 = *(a2 + 29);
    v40 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 27), *(a2 + 56));
    this = sub_100049D20(v4 + 27, v40, v39 + 8, v38, *v4[29] - *(v4 + 56));
    v41 = *(v4 + 56) + v38;
    *(v4 + 56) = v41;
    v42 = v4[29];
    if (*v42 < v41)
    {
      *v42 = v41;
    }
  }

  v43 = *(a2 + 60);
  if (v43)
  {
    v44 = *(v4 + 60);
    google::protobuf::RepeatedField<unsigned long long>::Reserve(v4 + 60, v44 + v43);
    v45 = v4[31];
    *(v4 + 60) += *(a2 + 60);
    this = memcpy(v45 + 8 * v44, *(a2 + 31), 8 * *(a2 + 60));
  }

  v46 = *(a2 + 4);
  if (v46)
  {
    if (v46)
    {
      v48 = *(a2 + 33);
      *(v4 + 4) |= 1u;
      v49 = v4[1];
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(v4 + 33, v48 & 0xFFFFFFFFFFFFFFFELL, v49);
      if ((v46 & 2) == 0)
      {
LABEL_31:
        if ((v46 & 4) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_48;
      }
    }

    else if ((v46 & 2) == 0)
    {
      goto LABEL_31;
    }

    v50 = *(a2 + 34);
    *(v4 + 4) |= 2u;
    v51 = v4[1];
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(v4 + 34, v50 & 0xFFFFFFFFFFFFFFFELL, v51);
    if ((v46 & 4) == 0)
    {
LABEL_32:
      if ((v46 & 8) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_49;
    }

LABEL_48:
    v4[35] = *(a2 + 35);
    if ((v46 & 8) == 0)
    {
LABEL_33:
      if ((v46 & 0x10) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_50;
    }

LABEL_49:
    v4[36] = *(a2 + 36);
    if ((v46 & 0x10) == 0)
    {
LABEL_34:
      if ((v46 & 0x20) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(v4 + 296) = *(a2 + 296);
    if ((v46 & 0x20) == 0)
    {
LABEL_35:
      if ((v46 & 0x40) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(v4 + 297) = *(a2 + 297);
    if ((v46 & 0x40) == 0)
    {
LABEL_36:
      if ((v46 & 0x80) == 0)
      {
LABEL_38:
        *(v4 + 4) |= v46;
        goto LABEL_39;
      }

LABEL_37:
      *(v4 + 75) = *(a2 + 75);
      goto LABEL_38;
    }

LABEL_52:
    *(v4 + 298) = *(a2 + 298);
    if ((v46 & 0x80) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_39:
  if ((v46 & 0x100) != 0)
  {
    v47 = *(a2 + 76);
    *(v4 + 4) |= 0x100u;
    *(v4 + 76) = v47;
  }

  return this;
}

void TSP::ComponentInfo::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ComponentInfo::Clear(this, a2, a3);

    TSP::ComponentInfo::MergeFrom(this, a2);
  }
}

uint64_t TSP::ComponentInfo::IsInitialized(TSP::ComponentInfo *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    return 0;
  }

  v2 = *(this + 20);
  while (v2 >= 1)
  {
    v3 = *(*(this + 11) + 8 * v2--);
    if ((*(v3 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_100038AD0(this + 96);
  if (result)
  {
    result = sub_100038B44(this + 120);
    if (result)
    {
      v5 = *(this + 38);
      while (v5 >= 1)
      {
        v6 = *(*(this + 20) + 8 * v5--);
        if ((*(v6 + 16) & 1) == 0)
        {
          return 0;
        }
      }

      v7 = *(this + 56);
      do
      {
        result = v7 < 1;
        if (v7 < 1)
        {
          break;
        }

        v8 = *(*(this + 29) + 8 * v7--);
      }

      while ((*(v8 + 16) & 1) != 0);
    }
  }

  return result;
}

uint64_t sub_100038AD0(uint64_t a1)
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

BOOL sub_100038B44(uint64_t a1)
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

uint64_t TSP::ComponentInfo::GetMetadata(TSP::ComponentInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[8];
  v2 = off_1001E92E8[9];
  return result;
}

void TSP::ComponentExternalReference::~ComponentExternalReference(TSP::ComponentExternalReference *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ComponentExternalReference::Clear(TSP::ComponentExternalReference *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 40) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::ComponentExternalReference::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v32, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v32 + 1);
      v9 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v10 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_47;
      }

      v8 = TagFallback;
      v9 = v5;
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
          v32 = v20;
          *(a1 + 40) = v19 != 0;
          goto LABEL_35;
        }

        v30 = google::protobuf::internal::VarintParseSlow64(v8, v19);
        v32 = v30;
        *(a1 + 40) = v31 != 0;
        if (!v30)
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
          v32 = v17;
          *(a1 + 32) = v16;
          goto LABEL_35;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v32 = v26;
        *(a1 + 32) = v27;
        if (!v26)
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
            v15 = sub_100031428((a1 + 8), v5, v8);
            v8 = v32;
          }

          v32 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8);
          if (!v32)
          {
LABEL_47:
            v32 = 0;
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
          v32 = v23;
          *(a1 + 24) = v22;
          goto LABEL_35;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v32 = v28;
        *(a1 + 24) = v29;
        if (!v28)
        {
          goto LABEL_47;
        }
      }

LABEL_35:
      if (sub_1000313B0(a3, &v32, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v32 + 2);
LABEL_6:
    v32 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v32;
}

const google::protobuf::UnknownFieldSet *TSP::ComponentExternalReference::_InternalSerialize(TSP::ComponentExternalReference *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 3);
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

  v14 = *(this + 4);
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

  v7 = *(this + 40);
  *a2 = 24;
  a2[1] = v7;
  a2 += 2;
LABEL_7:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::ComponentExternalReference::ByteSizeLong(TSP::ComponentExternalReference *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = (((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 6) != 0)
  {
    if ((v1 & 2) != 0)
    {
      v2 = (v2 + ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }

    v2 = (v2 + ((v1 >> 1) & 2));
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  *(this + 5) = v2;
  return v2;
}

void TSP::ComponentExternalReference::MergeFrom(TSP::ComponentExternalReference *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ComponentExternalReference::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ComponentExternalReference::MergeFrom(void *this, const TSP::ComponentExternalReference *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v4[3] = *(a2 + 3);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
LABEL_8:
          *(v4 + 4) |= v6;
          return this;
        }

LABEL_7:
        *(v4 + 40) = *(a2 + 40);
        goto LABEL_8;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v4[4] = *(a2 + 4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

void TSP::ComponentExternalReference::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ComponentExternalReference::Clear(this, a2, a3);

    TSP::ComponentExternalReference::MergeFrom(this, a2);
  }
}

uint64_t TSP::ComponentExternalReference::GetMetadata(TSP::ComponentExternalReference *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[10];
  v2 = off_1001E92E8[11];
  return result;
}

void TSP::ComponentDataReference_ObjectReference::~ComponentDataReference_ObjectReference(TSP::ComponentDataReference_ObjectReference *this)
{
  sub_10002F4C4(this + 1);
}

{
  sub_10002F4C4(this + 1);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ComponentDataReference_ObjectReference::Clear(TSP::ComponentDataReference_ObjectReference *this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 8) = 0;
    *(this + 3) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::ComponentDataReference_ObjectReference::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v26, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v26 + 1);
      v9 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v10 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v5;
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
          v26 = v15;
          *(a1 + 32) = v16;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v8, v16);
        v26 = v22;
        *(a1 + 32) = v23;
        if (!v22)
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
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v26;
          }

          v26 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
          if (!v26)
          {
LABEL_39:
            v26 = 0;
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
          v26 = v19;
          *(a1 + 24) = v18;
          goto LABEL_29;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v8, v18);
        v26 = v24;
        *(a1 + 24) = v25;
        if (!v24)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if (sub_1000313B0(a3, &v26, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v26 + 2);
LABEL_6:
    v26 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v26;
}

const google::protobuf::UnknownFieldSet *TSP::ComponentDataReference_ObjectReference::_InternalSerialize(TSP::ComponentDataReference_ObjectReference *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
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

  v9 = *(this + 8);
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
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

unint64_t TSP::ComponentDataReference_ObjectReference::RequiredFieldsByteSizeFallback(TSP::ComponentDataReference_ObjectReference *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 1;
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
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

char *TSP::ComponentDataReference_ObjectReference::ByteSizeLong(TSP::ComponentDataReference_ObjectReference *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSP::ComponentDataReference_ObjectReference::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = (((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 3) | 1) ^ 0x3F) + 73) >> 6) + 2);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSP::ComponentDataReference_ObjectReference::MergeFrom(TSP::ComponentDataReference_ObjectReference *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ComponentDataReference_ObjectReference::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ComponentDataReference_ObjectReference::MergeFrom(void *this, const TSP::ComponentDataReference_ObjectReference *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      v4[3] = *(a2 + 3);
    }

    if ((v6 & 2) != 0)
    {
      *(v4 + 8) = *(a2 + 8);
    }

    *(v4 + 4) |= v6;
  }

  return this;
}

void TSP::ComponentDataReference_ObjectReference::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ComponentDataReference_ObjectReference::Clear(this, a2, a3);

    TSP::ComponentDataReference_ObjectReference::MergeFrom(this, a2);
  }
}

uint64_t TSP::ComponentDataReference_ObjectReference::GetMetadata(TSP::ComponentDataReference_ObjectReference *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[12];
  v2 = off_1001E92E8[13];
  return result;
}

void *TSP::ComponentDataReference::ComponentDataReference(void *a1, uint64_t a2)
{
  *a1 = off_1001C8138;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(scc_info_ComponentDataReference_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ComponentDataReference_TSPArchiveMessages_2eproto);
  }

  a1[6] = 0;
  return a1;
}

void TSP::ComponentDataReference::~ComponentDataReference(TSP::ComponentDataReference *this)
{
  sub_10002F4C4(this + 1);
  sub_10004A020(this + 3);
}

{
  TSP::ComponentDataReference::~ComponentDataReference(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ComponentDataReference::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::ComponentDataReference_ObjectReference::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  v8 = *(v3 + 8);
  v7 = v3 + 8;
  *(v7 + 40) = 0;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_1000315EC(v7, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::ComponentDataReference::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v29, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v29 + 1);
      v9 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v10 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
      }

      v8 = TagFallback;
      v9 = v5;
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
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v29;
          }

          v29 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
          if (!v29)
          {
LABEL_46:
            v29 = 0;
            goto LABEL_2;
          }

          goto LABEL_38;
        }

        v15 = (v8 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v29 = (v15 + 1);
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
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentDataReference_ObjectReference>(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v29;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_1001560C0(a3, v19, v16);
          v29 = v15;
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
        v29 = v24;
        *(a1 + 48) = v23;
        v6 = 1;
        goto LABEL_38;
      }

      v27 = google::protobuf::internal::VarintParseSlow64(v8, v23);
      v29 = v27;
      *(a1 + 48) = v28;
      v6 = 1;
      if (!v27)
      {
        goto LABEL_46;
      }

LABEL_38:
      if (sub_1000313B0(a3, &v29, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v29 + 2);
LABEL_6:
    v29 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v29;
}

const google::protobuf::UnknownFieldSet *TSP::ComponentDataReference::_InternalSerialize(TSP::ComponentDataReference *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
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

  v10 = *(this + 8);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::ComponentDataReference_ObjectReference::_InternalSerialize(v12, v14, a3, a4);
    }
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::ComponentDataReference::ByteSizeLong(TSP::ComponentDataReference *this)
{
  if (*(this + 16))
  {
    v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 8);
  v4 = (v2 + v3);
  v5 = *(this + 5);
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
      v9 = TSP::ComponentDataReference_ObjectReference::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 5);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSP::ComponentDataReference::MergeFrom(TSP::ComponentDataReference *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ComponentDataReference::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ComponentDataReference::MergeFrom(void *this, const TSP::ComponentDataReference *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v4 + 3), *(a2 + 8));
    this = sub_10004A0B8(v4 + 3, v8, v7 + 8, v6, *v4[5] - *(v4 + 8));
    v9 = *(v4 + 8) + v6;
    *(v4 + 8) = v9;
    v10 = v4[5];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 6);
    *(v4 + 4) |= 1u;
    v4[6] = v11;
  }

  return this;
}

void TSP::ComponentDataReference::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ComponentDataReference::Clear(this, a2, a3);

    TSP::ComponentDataReference::MergeFrom(this, a2);
  }
}

BOOL TSP::ComponentDataReference::IsInitialized(TSP::ComponentDataReference *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  v3 = *(this + 5);
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

uint64_t TSP::ComponentDataReference::GetMetadata(TSP::ComponentDataReference *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[14];
  v2 = off_1001E92E8[15];
  return result;
}

void TSP::ObjectUUIDMapEntry::~ObjectUUIDMapEntry(TSP::ObjectUUIDMapEntry *this)
{
  if (this != &TSP::_ObjectUUIDMapEntry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::ObjectUUIDMapEntry::~ObjectUUIDMapEntry(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::ObjectUUIDMapEntry::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (*(this + 16))
  {
    this = TSP::UUID::Clear(*(this + 3), a2, a3);
  }

  v5 = *(v3 + 8);
  v4 = v3 + 8;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_1000315EC(v4, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::ObjectUUIDMapEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v24, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v24 + 1);
      v9 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v10 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_39;
      }

      v8 = TagFallback;
      v9 = v5;
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
            v8 = v24;
          }

          v15 = sub_100156190(a3, v16, v8);
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
            v14 = sub_100031428((a1 + 8), v5, v8);
            v8 = v24;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v9, v14, v8);
        }

        v24 = v15;
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
        v24 = v19;
        *(a1 + 32) = v18;
        goto LABEL_31;
      }

      v22 = google::protobuf::internal::VarintParseSlow64(v8, v18);
      v24 = v22;
      *(a1 + 32) = v23;
      if (!v22)
      {
LABEL_39:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_1000313B0(a3, &v24, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v24 + 2);
LABEL_6:
    v24 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v24;
}

const google::protobuf::UnknownFieldSet *TSP::ObjectUUIDMapEntry::_InternalSerialize(TSP::ObjectUUIDMapEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 4);
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

  v9 = *(this + 3);
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
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

char *TSP::ObjectUUIDMapEntry::RequiredFieldsByteSizeFallback(TSP::ObjectUUIDMapEntry *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    result = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return result;
}

char *TSP::ObjectUUIDMapEntry::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSP::ObjectUUIDMapEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = &v2[((9 * (__clz(this[4] | 1) ^ 0x3F) + 73) >> 6) + 2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6)];
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 1), v3, this + 5);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSP::ObjectUUIDMapEntry::MergeFrom(TSP::ObjectUUIDMapEntry *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::ObjectUUIDMapEntry::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *TSP::ObjectUUIDMapEntry::MergeFrom(void *this, const TSP::ObjectUUIDMapEntry *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      *(v4 + 4) |= 1u;
      v7 = v4[3];
      if (!v7)
      {
        v8 = v4[1];
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v8);
        v4[3] = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &TSP::_UUID_default_instance_;
      }

      this = TSP::UUID::MergeFrom(v7, v9, a3);
    }

    if ((v6 & 2) != 0)
    {
      v4[4] = *(a2 + 4);
    }

    *(v4 + 4) |= v6;
  }

  return this;
}

void TSP::ObjectUUIDMapEntry::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::ObjectUUIDMapEntry::Clear(this, a2, a3);

    TSP::ObjectUUIDMapEntry::MergeFrom(this, a2);
  }
}

uint64_t TSP::ObjectUUIDMapEntry::GetMetadata(TSP::ObjectUUIDMapEntry *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[16];
  v2 = off_1001E92E8[17];
  return result;
}

void *TSP::FeatureInfo::FeatureInfo(void *a1, uint64_t a2)
{
  *a1 = off_1001C8298;
  a1[1] = a2;
  a1[4] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[6] = 0;
  a1[7] = a2;
  if (atomic_load_explicit(scc_info_FeatureInfo_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FeatureInfo_TSPArchiveMessages_2eproto);
  }

  a1[9] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

void sub_10003AA98(_Unwind_Exception *a1)
{
  if (*(v1 + 52) >= 1)
  {
    sub_100156CF0(v3);
  }

  sub_100156EC0((v1 + 28), v2);
  _Unwind_Resume(a1);
}

void TSP::FeatureInfo::~FeatureInfo(TSP::FeatureInfo *this)
{
  v2 = *(this + 9);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
  if (*(this + 13) >= 1)
  {
    v3 = *(this + 7);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(this + 7) >= 1)
  {
    v6 = *(this + 4);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }
}

{
  TSP::FeatureInfo::~FeatureInfo(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::FeatureInfo::Clear(TSP::FeatureInfo *this, uint64_t a2, uint64_t a3)
{
  *(this + 6) = 0;
  *(this + 12) = 0;
  if (*(this + 16))
  {
    v3 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
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

  v5 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v5)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::FeatureInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  for (i = *(a3 + 92); (sub_1000313B0(a3, &v22, i) & 1) == 0; i = *(a3 + 92))
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
      v7 = (v22 + 2);
LABEL_6:
      v22 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 == 26)
      {
        v16 = (a1 + 48);
LABEL_24:
        v15 = google::protobuf::internal::PackedUInt32Parser(v16, v7, a3);
LABEL_28:
        v22 = v15;
        if (!v15)
        {
          return 0;
        }

        continue;
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v23 = sub_10003465C(&v22);
      v20 = (a1 + 48);
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 72), v17);
          v15 = google::protobuf::internal::InlineGreedyStringParser(v18, v22, a3);
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
            return v22;
          }

          v13 = *(a1 + 8);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_100031428((a1 + 8), v6, v7);
            v7 = v22;
          }

          v15 = google::protobuf::internal::UnknownFieldParse(v8, v14, v7);
        }

        goto LABEL_28;
      }

      if (v8 == 18)
      {
        v16 = (a1 + 24);
        goto LABEL_24;
      }

      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v23 = sub_10003465C(&v22);
      v20 = (a1 + 24);
    }

    google::protobuf::RepeatedField<unsigned int>::Add(v20, &v23);
    if (!v22)
    {
      return 0;
    }
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *TSP::FeatureInfo::_InternalSerialize(TSP::FeatureInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 16))
  {
    v4 = sub_100030384(a3, 1, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v6 = *(this + 10);
  if (v6 >= 1)
  {
    v4 = sub_1000496C0(a3, 2, this + 6, v6, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v7 = *(this + 16);
  if (v7 >= 1)
  {
    v4 = sub_1000496C0(a3, 3, this + 12, v7, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v7);
}

char *TSP::FeatureInfo::ByteSizeLong(TSP::FeatureInfo *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
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

  v6 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 6);
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

  *(this + 10) = v7;
  v9 = v2 + v6;
  v10 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 12);
  if (v10)
  {
    v11 = v10;
    if ((v10 & 0x80000000) != 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v9 += v12;
  }

  else
  {
    v11 = 0;
  }

  *(this + 16) = v11;
  v13 = (v9 + v10);
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v13, this + 5);
  }

  else
  {
    *(this + 5) = v13;
    return (v9 + v10);
  }
}

void TSP::FeatureInfo::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::FeatureInfo::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *TSP::FeatureInfo::MergeFrom(std::string *this, const TSP::FeatureInfo *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    data_low = SLODWORD(v4[1].__r_.__value_.__l.__data_);
    google::protobuf::RepeatedField<unsigned int>::Reserve(&v4[1], data_low + v6);
    size = v4[1].__r_.__value_.__l.__size_;
    LODWORD(v4[1].__r_.__value_.__l.__data_) += *(a2 + 6);
    this = memcpy((size + 4 * data_low), *(a2 + 4), 4 * *(a2 + 6));
  }

  v9 = *(a2 + 12);
  if (v9)
  {
    v10 = SLODWORD(v4[2].__r_.__value_.__l.__data_);
    google::protobuf::RepeatedField<unsigned int>::Reserve(&v4[2], v10 + v9);
    v11 = v4[2].__r_.__value_.__l.__size_;
    LODWORD(v4[2].__r_.__value_.__l.__data_) += *(a2 + 12);
    this = memcpy((v11 + 4 * v10), *(a2 + 7), 4 * *(a2 + 12));
  }

  if (*(a2 + 16))
  {
    v12 = *(a2 + 9);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
    v13 = v4->__r_.__value_.__l.__size_;
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    return google::protobuf::internal::ArenaStringPtr::Set(&v4[3], v12 & 0xFFFFFFFFFFFFFFFELL, v13);
  }

  return this;
}

void TSP::FeatureInfo::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::FeatureInfo::Clear(this, a2, a3);

    TSP::FeatureInfo::MergeFrom(this, a2);
  }
}

uint64_t TSP::FeatureInfo::GetMetadata(TSP::FeatureInfo *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[18];
  v2 = off_1001E92E8[19];
  return result;
}

uint64_t TSP::PackageMetadata::PackageMetadata(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C8348;
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
  if (atomic_load_explicit(scc_info_PackageMetadata_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_PackageMetadata_TSPArchiveMessages_2eproto);
  }

  *(a1 + 200) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void sub_10003B304(_Unwind_Exception *a1)
{
  v5 = v4;
  sub_10004A178(v5);
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

  sub_10004A1FC(v3);
  sub_10004A178(v1);
  _Unwind_Resume(a1);
}

void TSP::PackageMetadata::~PackageMetadata(TSP::PackageMetadata *this)
{
  if (this != &TSP::_PackageMetadata_default_instance_)
  {
    v2 = *(this + 21);
    if (v2)
    {
      TSP::DocumentRevision::~DocumentRevision(v2);
      operator delete();
    }

    v3 = *(this + 22);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_10004A178(this + 18);
  if (*(this + 31) >= 1)
  {
    v4 = *(this + 16);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(this + 25) >= 1)
  {
    v7 = *(this + 13);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(this + 19) >= 1)
  {
    v10 = *(this + 10);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  sub_10004A1FC(this + 6);
  sub_10004A178(this + 3);
}

{
  TSP::PackageMetadata::~PackageMetadata(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::PackageMetadata::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::ComponentInfo::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  v7 = *(v3 + 56);
  if (v7 >= 1)
  {
    v8 = (*(v3 + 64) + 8);
    do
    {
      v9 = *v8++;
      this = TSP::DataInfo::Clear(v9, a2, a3);
      --v7;
    }

    while (v7);
    *(v3 + 56) = 0;
  }

  *(v3 + 72) = 0;
  *(v3 + 96) = 0;
  *(v3 + 120) = 0;
  v10 = *(v3 + 152);
  if (v10 >= 1)
  {
    v11 = (*(v3 + 160) + 8);
    do
    {
      v12 = *v11++;
      this = TSP::ComponentInfo::Clear(v12, a2, a3);
      --v10;
    }

    while (v10);
    *(v3 + 152) = 0;
  }

  v13 = *(v3 + 16);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      this = TSP::DocumentRevision::Clear(*(v3 + 168), a2, a3);
    }

    if ((v13 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v3 + 176), a2, a3);
    }
  }

  if ((v13 & 0x1C) != 0)
  {
    *(v3 + 184) = 0;
    *(v3 + 192) = 0;
    *(v3 + 200) = 0;
  }

  v15 = *(v3 + 8);
  v14 = v3 + 8;
  *(v14 + 8) = 0;
  if (v15)
  {

    return sub_1000315EC(v14, a2, a3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *TSP::DocumentRevision::Clear(TSP::DocumentRevision *this, uint64_t a2, uint64_t a3)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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
    *(this + 10) = 0;
    *(this + 4) = 0;
  }

  v6 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v6)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *TSP::PackageMetadata::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v61 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v61, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v61 + 1);
      v9 = *v61;
      if ((*v61 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v61, (v10 - 128));
      v61 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_131;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 5)
      {
        if (v9 >> 3 > 2)
        {
          if (v11 != 3)
          {
            if (v11 != 4)
            {
              if (v11 != 5)
              {
                goto LABEL_118;
              }

              if (v9 == 42)
              {
                v15 = (a1 + 72);
LABEL_96:
                v27 = google::protobuf::internal::PackedUInt32Parser(v15, v8, a3);
                goto LABEL_125;
              }

              if (v9 != 40)
              {
                goto LABEL_118;
              }

              v62 = sub_10003465C(&v61);
              v57 = (a1 + 72);
LABEL_116:
              google::protobuf::RepeatedField<unsigned int>::Add(v57, &v62);
              if (!v61)
              {
                goto LABEL_131;
              }

              goto LABEL_126;
            }

            if (v9 != 34)
            {
              goto LABEL_118;
            }

            v32 = (v8 - 1);
            while (2)
            {
              v33 = (v32 + 1);
              v61 = (v32 + 1);
              v34 = *(a1 + 64);
              if (!v34)
              {
                v35 = *(a1 + 60);
                goto LABEL_62;
              }

              v39 = *(a1 + 56);
              v35 = *v34;
              if (v39 >= *v34)
              {
                if (v35 == *(a1 + 60))
                {
LABEL_62:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v35 + 1);
                  v34 = *(a1 + 64);
                  v35 = *v34;
                }

                *v34 = v35 + 1;
                v36 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataInfo>(*(a1 + 48));
                v37 = *(a1 + 56);
                v38 = *(a1 + 64) + 8 * v37;
                *(a1 + 56) = v37 + 1;
                *(v38 + 8) = v36;
                v33 = v61;
              }

              else
              {
                *(a1 + 56) = v39 + 1;
                v36 = *&v34[2 * v39 + 2];
              }

              v32 = sub_100156400(a3, v36, v33);
              v61 = v32;
              if (!v32)
              {
                goto LABEL_131;
              }

              if (*a3 <= v32 || *v32 != 34)
              {
                goto LABEL_126;
              }

              continue;
            }
          }

          if (v9 != 26)
          {
            goto LABEL_118;
          }

          v42 = (v8 - 1);
          while (2)
          {
            v43 = (v42 + 1);
            v61 = (v42 + 1);
            v44 = *(a1 + 40);
            if (!v44)
            {
              v45 = *(a1 + 36);
              goto LABEL_84;
            }

            v49 = *(a1 + 32);
            v45 = *v44;
            if (v49 >= *v44)
            {
              if (v45 == *(a1 + 36))
              {
LABEL_84:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v45 + 1);
                v44 = *(a1 + 40);
                v45 = *v44;
              }

              *v44 = v45 + 1;
              v46 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentInfo>(*(a1 + 24));
              v47 = *(a1 + 32);
              v48 = *(a1 + 40) + 8 * v47;
              *(a1 + 32) = v47 + 1;
              *(v48 + 8) = v46;
              v43 = v61;
            }

            else
            {
              *(a1 + 32) = v49 + 1;
              v46 = *&v44[2 * v49 + 2];
            }

            v42 = sub_100156330(a3, v46, v43);
            v61 = v42;
            if (!v42)
            {
              goto LABEL_131;
            }

            if (*a3 <= v42 || *v42 != 26)
            {
              goto LABEL_126;
            }

            continue;
          }
        }

        if (v11 != 1)
        {
          if (v11 == 2 && v9 == 18)
          {
            *(a1 + 16) |= 1u;
            v25 = *(a1 + 168);
            if (!v25)
            {
              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = google::protobuf::Arena::CreateMaybeMessage<TSP::DocumentRevision>(v26);
              *(a1 + 168) = v25;
              v8 = v61;
            }

            v27 = sub_100156260(a3, v25, v8);
          }

          else
          {
LABEL_118:
            if (v9)
            {
              v58 = (v9 & 7) == 4;
            }

            else
            {
              v58 = 1;
            }

            if (v58)
            {
              a3[10].i32[0] = v9 - 1;
              goto LABEL_2;
            }

            v59 = *(a1 + 8);
            if (v59)
            {
              v60 = ((v59 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v60 = sub_100031428((a1 + 8), v5, v8);
              v8 = v61;
            }

            v27 = google::protobuf::internal::UnknownFieldParse(v9, v60, v8);
          }

LABEL_125:
          v61 = v27;
          if (!v27)
          {
LABEL_131:
            v61 = 0;
            goto LABEL_2;
          }

          goto LABEL_126;
        }

        if (v9 != 8)
        {
          goto LABEL_118;
        }

        v6 |= 4u;
        v30 = (v8 + 1);
        v29 = *v8;
        if ((v29 & 0x8000000000000000) != 0)
        {
          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v53 = google::protobuf::internal::VarintParseSlow64(v8, v29);
            v61 = v53;
            *(a1 + 184) = v54;
            if (!v53)
            {
              goto LABEL_131;
            }

            goto LABEL_126;
          }

          v30 = (v8 + 2);
        }

        v61 = v30;
        *(a1 + 184) = v29;
      }

      else
      {
        if (v9 >> 3 > 8)
        {
          if (v11 != 9)
          {
            if (v11 == 10)
            {
              if (v9 != 82)
              {
                goto LABEL_118;
              }

              *(a1 + 16) |= 2u;
              v40 = *(a1 + 176);
              if (!v40)
              {
                v41 = *(a1 + 8);
                if (v41)
                {
                  v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
                }

                v40 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v41);
                *(a1 + 176) = v40;
                v8 = v61;
              }

              v27 = sub_100155104(a3, v40, v8);
              goto LABEL_125;
            }

            if (v11 != 11 || v9 != 90)
            {
              goto LABEL_118;
            }

            v16 = (v8 - 1);
            while (2)
            {
              v17 = (v16 + 1);
              v61 = (v16 + 1);
              v18 = *(a1 + 160);
              if (!v18)
              {
                v19 = *(a1 + 156);
                goto LABEL_30;
              }

              v23 = *(a1 + 152);
              v19 = *v18;
              if (v23 >= *v18)
              {
                if (v19 == *(a1 + 156))
                {
LABEL_30:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144), v19 + 1);
                  v18 = *(a1 + 160);
                  v19 = *v18;
                }

                *v18 = v19 + 1;
                v20 = google::protobuf::Arena::CreateMaybeMessage<TSP::ComponentInfo>(*(a1 + 144));
                v21 = *(a1 + 152);
                v22 = *(a1 + 160) + 8 * v21;
                *(a1 + 152) = v21 + 1;
                *(v22 + 8) = v20;
                v17 = v61;
              }

              else
              {
                *(a1 + 152) = v23 + 1;
                v20 = *&v18[2 * v23 + 2];
              }

              v16 = sub_100156330(a3, v20, v17);
              v61 = v16;
              if (!v16)
              {
                goto LABEL_131;
              }

              if (*a3 <= v16 || *v16 != 90)
              {
                goto LABEL_126;
              }

              continue;
            }
          }

          if (v9 != 72)
          {
            goto LABEL_118;
          }

          v51 = (v8 + 1);
          v50 = *v8;
          if ((v50 & 0x8000000000000000) != 0)
          {
            v52 = *v51;
            v50 = (v52 << 7) + v50 - 128;
            if ((v52 & 0x80000000) == 0)
            {
              v51 = (v8 + 2);
              goto LABEL_101;
            }

            v61 = google::protobuf::internal::VarintParseSlow64(v8, v50);
            if (!v61)
            {
              goto LABEL_131;
            }
          }

          else
          {
LABEL_101:
            v61 = v51;
          }

          if (v50 > 2)
          {
            sub_100156EE0((a1 + 8));
          }

          else
          {
            *(a1 + 16) |= 0x10u;
            *(a1 + 200) = v50;
          }

          goto LABEL_126;
        }

        if (v11 == 6)
        {
          if (v9 == 50)
          {
            v15 = (a1 + 96);
            goto LABEL_96;
          }

          if (v9 != 48)
          {
            goto LABEL_118;
          }

          v62 = sub_10003465C(&v61);
          v57 = (a1 + 96);
          goto LABEL_116;
        }

        if (v11 == 7)
        {
          if (v9 == 58)
          {
            v15 = (a1 + 120);
            goto LABEL_96;
          }

          if (v9 != 56)
          {
            goto LABEL_118;
          }

          v62 = sub_10003465C(&v61);
          v57 = (a1 + 120);
          goto LABEL_116;
        }

        if (v11 != 8 || v9 != 64)
        {
          goto LABEL_118;
        }

        v6 |= 8u;
        v13 = (v8 + 1);
        v12 = *v8;
        if ((v12 & 0x8000000000000000) != 0)
        {
          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if (v14 < 0)
          {
            v55 = google::protobuf::internal::VarintParseSlow64(v8, v12);
            v61 = v55;
            *(a1 + 192) = v56;
            if (!v55)
            {
              goto LABEL_131;
            }

            goto LABEL_126;
          }

          v13 = (v8 + 2);
        }

        v61 = v13;
        *(a1 + 192) = v12;
      }

LABEL_126:
      if (sub_1000313B0(a3, &v61, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v8 = (v61 + 2);
LABEL_6:
    v61 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v61;
}

const google::protobuf::UnknownFieldSet *TSP::PackageMetadata::_InternalSerialize(TSP::PackageMetadata *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 23);
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

  v9 = *(this + 21);
  *v4 = 18;
  v10 = *(v9 + 5);
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

  v4 = TSP::DocumentRevision::_InternalSerialize(v9, v11, a3);
LABEL_24:
  v17 = *(this + 8);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v19 = *(*(this + 5) + 8 * i + 8);
      *v4 = 26;
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

      v4 = TSP::ComponentInfo::_InternalSerialize(v19, v21, a3);
    }
  }

  v25 = *(this + 14);
  if (v25)
  {
    for (j = 0; j != v25; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v27 = *(*(this + 8) + 8 * j + 8);
      *v4 = 34;
      v28 = *(v27 + 5);
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

      v4 = TSP::DataInfo::_InternalSerialize(v27, v29, a3);
    }
  }

  v33 = *(this + 22);
  if (v33 > 0)
  {
    v4 = sub_1000496C0(a3, 5, this + 18, v33, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v34 = *(this + 28);
  if (v34 >= 1)
  {
    v4 = sub_1000496C0(a3, 6, this + 24, v34, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v35 = *(this + 34);
  if (v35 >= 1)
  {
    v4 = sub_1000496C0(a3, 7, this + 30, v35, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v39 = *(this + 24);
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

  v56 = *(this + 50);
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

  v36 = *(this + 22);
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
  v44 = *(this + 38);
  if (v44)
  {
    for (k = 0; k != v44; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v46 = *(*(this + 20) + 8 * k + 8);
      *v4 = 90;
      v47 = *(v46 + 5);
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

      v4 = TSP::ComponentInfo::_InternalSerialize(v46, v48, a3);
    }
  }

  v52 = *(this + 1);
  if ((v52 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v52 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v35);
}

char *TSP::PackageMetadata::ByteSizeLong(TSP::PackageMetadata *this)
{
  if ((*(this + 16) & 4) != 0)
  {
    v2 = ((9 * (__clz(*(this + 23) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 8);
  v4 = v2 + v3;
  v5 = *(this + 5);
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
      v9 = TSP::ComponentInfo::ByteSizeLong(v8);
      v4 += &v9[(9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6];
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 14);
  v11 = v4 + v10;
  v12 = *(this + 8);
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
      v16 = TSP::DataInfo::ByteSizeLong(v15);
      v11 += &v16[(9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6];
      v14 -= 8;
    }

    while (v14);
  }

  v17 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 18);
  v18 = 11;
  v19 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v17 >= 0)
  {
    v18 = v19;
  }

  v20 = v18 + v11;
  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  if (!v17)
  {
    v20 = v11;
  }

  *(this + 22) = v21;
  v22 = v20 + v17;
  v23 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 24);
  v24 = 11;
  v25 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v23 >= 0)
  {
    v24 = v25;
  }

  v26 = v24 + v22;
  if (v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = 0;
  }

  if (!v23)
  {
    v26 = v22;
  }

  *(this + 28) = v27;
  v28 = v26 + v23;
  v29 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 30);
  v30 = 11;
  v31 = ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v29 >= 0)
  {
    v30 = v31;
  }

  v32 = v30 + v28;
  if (v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = 0;
  }

  if (v29)
  {
    v34 = v32;
  }

  else
  {
    v34 = v28;
  }

  *(this + 34) = v33;
  v35 = *(this + 38);
  v36 = (v34 + v29 + v35);
  v37 = *(this + 20);
  if (v37)
  {
    v38 = (v37 + 8);
  }

  else
  {
    v38 = 0;
  }

  if (v35)
  {
    v39 = 8 * v35;
    do
    {
      v40 = *v38++;
      v41 = TSP::ComponentInfo::ByteSizeLong(v40);
      v36 = (v36 + v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6));
      v39 -= 8;
    }

    while (v39);
  }

  v42 = *(this + 4);
  if ((v42 & 3) != 0)
  {
    if (v42)
    {
      v43 = TSP::DocumentRevision::ByteSizeLong(*(this + 21));
      v36 = &v43[((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1 + v36];
    }

    if ((v42 & 2) != 0)
    {
      v44 = TSP::Reference::ByteSizeLong(*(this + 22));
      v36 = &v44[((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 1 + v36];
    }
  }

  if ((v42 & 0x18) != 0)
  {
    if ((v42 & 8) != 0)
    {
      v36 = (v36 + ((9 * (__clz(*(this + 24) | 1) ^ 0x3F) + 73) >> 6) + 1);
    }

    if ((v42 & 0x10) != 0)
    {
      v45 = *(this + 50);
      v46 = ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v45 >= 0)
      {
        v47 = v46;
      }

      else
      {
        v47 = 11;
      }

      v36 = (v36 + v47);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v36, this + 5);
  }

  else
  {
    *(this + 5) = v36;
    return v36;
  }
}

void TSP::PackageMetadata::MergeFrom(TSP::PackageMetadata *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::PackageMetadata::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void TSP::PackageMetadata::MergeFrom(TSP::PackageMetadata *this, const TSP::PackageMetadata *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_10004A280(this + 3, v8, v7 + 8, v6, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v6;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(a2 + 8);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_10004A340(this + 6, v13, v12 + 8, v11, **(this + 8) - *(this + 14));
    v14 = *(this + 14) + v11;
    *(this + 14) = v14;
    v15 = *(this + 8);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 18);
  if (v16)
  {
    v17 = *(this + 18);
    google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v17 + v16);
    v18 = *(this + 10);
    *(this + 18) += *(a2 + 18);
    memcpy((v18 + 4 * v17), *(a2 + 10), 4 * *(a2 + 18));
  }

  v19 = *(a2 + 24);
  if (v19)
  {
    v20 = *(this + 24);
    google::protobuf::RepeatedField<unsigned int>::Reserve(this + 24, v20 + v19);
    v21 = *(this + 13);
    *(this + 24) += *(a2 + 24);
    memcpy((v21 + 4 * v20), *(a2 + 13), 4 * *(a2 + 24));
  }

  v22 = *(a2 + 30);
  if (v22)
  {
    v23 = *(this + 30);
    google::protobuf::RepeatedField<unsigned int>::Reserve(this + 30, v23 + v22);
    v24 = *(this + 16);
    *(this + 30) += *(a2 + 30);
    memcpy((v24 + 4 * v23), *(a2 + 16), 4 * *(a2 + 30));
  }

  v25 = *(a2 + 38);
  if (v25)
  {
    v26 = *(a2 + 20);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 144), *(a2 + 38));
    sub_10004A280(this + 18, v27, v26 + 8, v25, **(this + 20) - *(this + 38));
    v28 = *(this + 38) + v25;
    *(this + 38) = v28;
    v29 = *(this + 20);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 4);
  if ((v30 & 0x1F) != 0)
  {
    if (v30)
    {
      *(this + 4) |= 1u;
      v31 = *(this + 21);
      if (!v31)
      {
        v32 = *(this + 1);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = google::protobuf::Arena::CreateMaybeMessage<TSP::DocumentRevision>(v32);
        *(this + 21) = v31;
      }

      if (*(a2 + 21))
      {
        v33 = *(a2 + 21);
      }

      else
      {
        v33 = &TSP::_DocumentRevision_default_instance_;
      }

      TSP::DocumentRevision::MergeFrom(v31, v33, a3);
      if ((v30 & 2) == 0)
      {
LABEL_21:
        if ((v30 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_43;
      }
    }

    else if ((v30 & 2) == 0)
    {
      goto LABEL_21;
    }

    *(this + 4) |= 2u;
    v34 = *(this + 22);
    if (!v34)
    {
      v35 = *(this + 1);
      if (v35)
      {
        v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
      }

      v34 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v35);
      *(this + 22) = v34;
    }

    if (*(a2 + 22))
    {
      v36 = *(a2 + 22);
    }

    else
    {
      v36 = &TSP::_Reference_default_instance_;
    }

    TSP::Reference::MergeFrom(v34, v36, a3);
    if ((v30 & 4) == 0)
    {
LABEL_22:
      if ((v30 & 8) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_44;
    }

LABEL_43:
    *(this + 23) = *(a2 + 23);
    if ((v30 & 8) == 0)
    {
LABEL_23:
      if ((v30 & 0x10) == 0)
      {
LABEL_25:
        *(this + 4) |= v30;
        return;
      }

LABEL_24:
      *(this + 50) = *(a2 + 50);
      goto LABEL_25;
    }

LABEL_44:
    *(this + 24) = *(a2 + 24);
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }
}

std::string *TSP::DocumentRevision::MergeFrom(std::string *this, const TSP::DocumentRevision *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 3);
      LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(&v4[1], v7 & 0xFFFFFFFFFFFFFFFELL, size);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
LABEL_8:
          LODWORD(v4->__r_.__value_.__r.__words[2]) |= v6;
          return this;
        }

LABEL_7:
        LODWORD(v4[1].__r_.__value_.__r.__words[2]) = *(a2 + 10);
        goto LABEL_8;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v4[1].__r_.__value_.__l.__size_ = *(a2 + 4);
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

void TSP::PackageMetadata::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::PackageMetadata::Clear(this, a2, a3);

    TSP::PackageMetadata::MergeFrom(this, a2);
  }
}

uint64_t TSP::PackageMetadata::IsInitialized(TSP::PackageMetadata *this)
{
  if ((*(this + 16) & 4) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::ComponentInfo::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::DataInfo::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 38);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::ComponentInfo::IsInitialized(*(*(this + 20) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 22));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TSP::PackageMetadata::GetMetadata(TSP::PackageMetadata *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[20];
  v2 = off_1001E92E8[21];
  return result;
}

uint64_t TSP::DocumentRevision::DocumentRevision(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C83F8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(scc_info_DocumentRevision_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DocumentRevision_TSPArchiveMessages_2eproto);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

void TSP::DocumentRevision::~DocumentRevision(TSP::DocumentRevision *this)
{
  v1 = *(this + 3);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
}

{
  TSP::DocumentRevision::~DocumentRevision(this);

  operator delete();
}

google::protobuf::internal *TSP::DocumentRevision::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v30, *(a3 + 92)) & 1) == 0)
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
        goto LABEL_45;
      }

      v8 = TagFallback;
      v9 = v5;
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
          v30 = v20;
          *(a1 + 40) = v19;
          goto LABEL_35;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v8, v19);
        v30 = v28;
        *(a1 + 40) = v29;
        if (!v28)
        {
LABEL_45:
          v30 = 0;
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
            v16 = google::protobuf::internal::InlineGreedyStringParser(v18, v30, a3);
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
              v15 = sub_100031428((a1 + 8), v5, v8);
              v8 = v30;
            }

            v16 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8);
          }

          v30 = v16;
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
          v30 = v23;
          *(a1 + 32) = v22;
          goto LABEL_35;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v30 = v26;
        *(a1 + 32) = v27;
        if (!v26)
        {
          goto LABEL_45;
        }
      }

LABEL_35:
      if (sub_1000313B0(a3, &v30, *(a3 + 92)))
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

const google::protobuf::UnknownFieldSet *TSP::DocumentRevision::_InternalSerialize(TSP::DocumentRevision *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 4);
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
  v4 = sub_100030384(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 10);
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
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *TSP::DocumentRevision::ByteSizeLong(TSP::DocumentRevision *this)
{
  v1 = *(this + 4);
  if ((v1 & 7) == 0)
  {
    v2 = 0;
    goto LABEL_15;
  }

  if (v1)
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v2 = (v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v2 = 0;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v2 = (v2 + ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

LABEL_10:
  if ((v1 & 4) != 0)
  {
    v6 = *(this + 10);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 = (v2 + v7);
  }

LABEL_15:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 5);
  }

  *(this + 5) = v2;
  return v2;
}

void TSP::DocumentRevision::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::DocumentRevision::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void TSP::DocumentRevision::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::DocumentRevision::Clear(this, a2, a3);

    TSP::DocumentRevision::MergeFrom(this, a2);
  }
}

uint64_t TSP::DocumentRevision::GetMetadata(TSP::DocumentRevision *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[22];
  v2 = off_1001E92E8[23];
  return result;
}

void *TSP::PasteboardMetadata::PasteboardMetadata(void *a1, uint64_t a2)
{
  *a1 = off_1001C84A8;
  a1[1] = a2;
  a1[4] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[6] = a2;
  a1[10] = a2;
  a1[8] = 0;
  a1[9] = 0;
  a1[7] = 0;
  if (atomic_load_explicit(scc_info_PasteboardMetadata_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_PasteboardMetadata_TSPArchiveMessages_2eproto);
  }

  a1[13] = 0;
  a1[14] = 0;
  a1[12] = &google::protobuf::internal::fixed_address_empty_string;
  return a1;
}

void sub_10003D340(_Unwind_Exception *a1)
{
  if (*(v1 + 76) >= 1)
  {
    sub_100156CF0(v4);
  }

  sub_10004A1FC(v3);
  sub_100156D04((v1 + 28), v2);
  _Unwind_Resume(a1);
}

void TSP::PasteboardMetadata::~PasteboardMetadata(TSP::PasteboardMetadata *this)
{
  v2 = *(this + 12);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (this != TSP::_PasteboardMetadata_default_instance_)
  {
    v3 = *(this + 13);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      operator delete();
    }

    v4 = *(this + 14);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  if (*(this + 19) >= 1)
  {
    v5 = *(this + 10);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  sub_10004A1FC(this + 6);
  if (*(this + 7) >= 1)
  {
    v8 = *(this + 4);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }
}

{
  TSP::PasteboardMetadata::~PasteboardMetadata(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *TSP::PasteboardMetadata::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  *(this + 6) = 0;
  v4 = *(this + 14);
  if (v4 >= 1)
  {
    v5 = (*(this + 8) + 8);
    do
    {
      v6 = *v5++;
      this = TSP::DataInfo::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 56) = 0;
  }

  *(v3 + 72) = 0;
  v7 = *(v3 + 16);
  if ((v7 & 7) == 0)
  {
    goto LABEL_10;
  }

  if ((v7 & 1) == 0)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  v10 = *(v3 + 96) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v10 + 23) < 0)
  {
    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v7 & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_8:
    if ((v7 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  *v10 = 0;
  *(v10 + 23) = 0;
  if ((v7 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  this = TSP::UUID::Clear(*(v3 + 104), a2, a3);
  if ((v7 & 4) != 0)
  {
LABEL_9:
    this = TSP::Reference::Clear(*(v3 + 112), a2, a3);
  }

LABEL_10:
  v9 = *(v3 + 8);
  v8 = v3 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, a2, a3);
  }

  return this;
}

google::protobuf::internal *TSP::PasteboardMetadata::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v34 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_1000313B0(a3, &v34, i))
    {
      return v34;
    }

    v7 = (v34 + 1);
    v8 = *v34;
    if ((*v34 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v34 + 2);
LABEL_6:
      v34 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v9 - 128));
    v34 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 <= 4)
    {
      break;
    }

    if (v10 == 5)
    {
      if (v8 == 42)
      {
        *(a1 + 16) |= 2u;
        v22 = *(a1 + 104);
        if (!v22)
        {
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v23);
          *(a1 + 104) = v22;
          v7 = v34;
        }

        v21 = sub_100156190(a3, v22, v7);
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    if (v10 == 6)
    {
      if (v8 == 50)
      {
        *(a1 + 16) |= 4u;
        v26 = *(a1 + 112);
        if (!v26)
        {
          v27 = *(a1 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v26 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v27);
          *(a1 + 112) = v26;
          v7 = v34;
        }

        v21 = sub_100155104(a3, v26, v7);
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    if (v10 != 7)
    {
      goto LABEL_60;
    }

    if (v8 == 58)
    {
      v20 = (a1 + 72);
      goto LABEL_35;
    }

    if (v8 != 56)
    {
      goto LABEL_60;
    }

    v35 = sub_10003465C(&v34);
    v29 = (a1 + 72);
LABEL_58:
    google::protobuf::RepeatedField<unsigned int>::Add(v29, &v35);
    if (!v34)
    {
      return 0;
    }

LABEL_68:
    ;
  }

  if (v10 != 1)
  {
    if (v10 == 2)
    {
      if (v8 == 18)
      {
        *(a1 + 16) |= 1u;
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v25 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 96), v24);
        v21 = google::protobuf::internal::InlineGreedyStringParser(v25, v34, a3);
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    if (v10 != 3 || v8 != 26)
    {
LABEL_60:
      if (v8)
      {
        v30 = (v8 & 7) == 4;
      }

      else
      {
        v30 = 1;
      }

      if (!v30)
      {
        v31 = *(a1 + 8);
        if (v31)
        {
          v32 = ((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v32 = sub_100031428((a1 + 8), v6, v7);
          v7 = v34;
        }

        v21 = google::protobuf::internal::UnknownFieldParse(v8, v32, v7);
        goto LABEL_67;
      }

      a3[10].i32[0] = v8 - 1;
      return v34;
    }

    v12 = (v7 - 1);
    while (1)
    {
      v13 = (v12 + 1);
      v34 = (v12 + 1);
      v14 = *(a1 + 64);
      if (!v14)
      {
        break;
      }

      v19 = *(a1 + 56);
      v15 = *v14;
      if (v19 < *v14)
      {
        *(a1 + 56) = v19 + 1;
        v16 = *&v14[2 * v19 + 2];
        goto LABEL_22;
      }

      if (v15 == *(a1 + 60))
      {
        goto LABEL_18;
      }

LABEL_19:
      *v14 = v15 + 1;
      v16 = google::protobuf::Arena::CreateMaybeMessage<TSP::DataInfo>(*(a1 + 48));
      v17 = *(a1 + 56);
      v18 = *(a1 + 64) + 8 * v17;
      *(a1 + 56) = v17 + 1;
      *(v18 + 8) = v16;
      v13 = v34;
LABEL_22:
      v12 = sub_100156400(a3, v16, v13);
      v34 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 26)
      {
        goto LABEL_68;
      }
    }

    v15 = *(a1 + 60);
LABEL_18:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v15 + 1);
    v14 = *(a1 + 64);
    v15 = *v14;
    goto LABEL_19;
  }

  if (v8 != 10)
  {
    if (v8 != 8)
    {
      goto LABEL_60;
    }

    v35 = sub_10003465C(&v34);
    v29 = (a1 + 24);
    goto LABEL_58;
  }

  v20 = (a1 + 24);
LABEL_35:
  v21 = google::protobuf::internal::PackedUInt32Parser(v20, v7, a3);
LABEL_67:
  v34 = v21;
  if (v21)
  {
    goto LABEL_68;
  }

  return 0;
}

const google::protobuf::UnknownFieldSet *TSP::PasteboardMetadata::_InternalSerialize(TSP::PasteboardMetadata *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6 >= 1)
  {
    v4 = sub_1000496C0(a3, 1, this + 6, v6, a2, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v7 = *(this + 4);
  if (v7)
  {
    v4 = sub_100030384(a3, 2, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v8 = *(this + 14);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v10 = *(*(this + 8) + 8 * i + 8);
      *v4 = 26;
      v11 = *(v10 + 5);
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

      v4 = TSP::DataInfo::_InternalSerialize(v10, v12, a3);
    }
  }

  if ((v7 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v16 = *(this + 13);
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

    v22 = *(this + 14);
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

  v28 = *(this + 22);
  if (v28 >= 1)
  {
    v4 = sub_1000496C0(a3, 7, this + 18, v28, v4, google::protobuf::io::EpsCopyOutputStream::Encode32);
  }

  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v28);
}

char *TSP::PasteboardMetadata::ByteSizeLong(TSP::PasteboardMetadata *this)
{
  if (*(this + 16))
  {
    v3 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
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

  v6 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 6);
  v7 = 11;
  v8 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v6 >= 0)
  {
    v7 = v8;
  }

  v9 = v7 + v2;
  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (!v6)
  {
    v9 = v2;
  }

  *(this + 10) = v10;
  v11 = v9 + v6;
  v12 = *(this + 14);
  v13 = v11 + v12;
  v14 = *(this + 8);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = TSP::DataInfo::ByteSizeLong(v17);
      v13 += &v18[(9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6];
      v16 -= 8;
    }

    while (v16);
  }

  v19 = google::protobuf::internal::WireFormatLite::UInt32Size(this + 18);
  v20 = 11;
  v21 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v19 >= 0)
  {
    v20 = v21;
  }

  v22 = v20 + v13;
  if (v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  if (!v19)
  {
    v22 = v13;
  }

  *(this + 22) = v23;
  v24 = (v22 + v19);
  v25 = *(this + 4);
  if ((v25 & 6) != 0)
  {
    if ((v25 & 2) != 0)
    {
      v26 = TSP::UUID::ByteSizeLong(*(this + 13));
      v24 = &v26[((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1 + v24];
    }

    if ((v25 & 4) != 0)
    {
      v27 = TSP::Reference::ByteSizeLong(*(this + 14));
      v24 = &v27[((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1 + v24];
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v24, this + 5);
  }

  else
  {
    *(this + 5) = v24;
    return v24;
  }
}

void TSP::PasteboardMetadata::MergeFrom(TSP::PasteboardMetadata *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    TSP::PasteboardMetadata::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void TSP::PasteboardMetadata::MergeFrom(TSP::PasteboardMetadata *this, const TSP::PasteboardMetadata *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(this + 6);
    google::protobuf::RepeatedField<unsigned int>::Reserve(this + 6, v7 + v6);
    v8 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy((v8 + 4 * v7), *(a2 + 4), 4 * *(a2 + 6));
  }

  v9 = *(a2 + 14);
  if (v9)
  {
    v10 = *(a2 + 8);
    v11 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_10004A340(this + 6, v11, v10 + 8, v9, **(this + 8) - *(this + 14));
    v12 = *(this + 14) + v9;
    *(this + 14) = v12;
    v13 = *(this + 8);
    if (*v13 < v12)
    {
      *v13 = v12;
    }
  }

  v14 = *(a2 + 18);
  if (v14)
  {
    v15 = *(this + 18);
    google::protobuf::RepeatedField<unsigned int>::Reserve(this + 18, v15 + v14);
    v16 = *(this + 10);
    *(this + 18) += *(a2 + 18);
    memcpy((v16 + 4 * v15), *(a2 + 10), 4 * *(a2 + 18));
  }

  v17 = *(a2 + 4);
  if ((v17 & 7) != 0)
  {
    if (v17)
    {
      v18 = *(a2 + 12);
      *(this + 4) |= 1u;
      v19 = *(this + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 12, v18 & 0xFFFFFFFFFFFFFFFELL, v19);
      if ((v17 & 2) == 0)
      {
LABEL_13:
        if ((v17 & 4) == 0)
        {
          return;
        }

        goto LABEL_26;
      }
    }

    else if ((v17 & 2) == 0)
    {
      goto LABEL_13;
    }

    *(this + 4) |= 2u;
    v20 = *(this + 13);
    if (!v20)
    {
      v21 = *(this + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = google::protobuf::Arena::CreateMaybeMessage<TSP::UUID>(v21);
      *(this + 13) = v20;
    }

    if (*(a2 + 13))
    {
      v22 = *(a2 + 13);
    }

    else
    {
      v22 = &TSP::_UUID_default_instance_;
    }

    TSP::UUID::MergeFrom(v20, v22, a3);
    if ((v17 & 4) != 0)
    {
LABEL_26:
      *(this + 4) |= 4u;
      v23 = *(this + 14);
      if (!v23)
      {
        v24 = *(this + 1);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSP::Reference>(v24);
        *(this + 14) = v23;
      }

      if (*(a2 + 14))
      {
        v25 = *(a2 + 14);
      }

      else
      {
        v25 = &TSP::_Reference_default_instance_;
      }

      TSP::Reference::MergeFrom(v23, v25, a3);
    }
  }
}

void TSP::PasteboardMetadata::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    TSP::PasteboardMetadata::Clear(this, a2, a3);

    TSP::PasteboardMetadata::MergeFrom(this, a2);
  }
}

uint64_t TSP::PasteboardMetadata::IsInitialized(TSP::PasteboardMetadata *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 14);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::DataInfo::IsInitialized(*(*(this + 8) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 14));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TSP::PasteboardMetadata::GetMetadata(TSP::PasteboardMetadata *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPArchiveMessages_2eproto, 0);
  result = off_1001E92E8[24];
  v2 = off_1001E92E8[25];
  return result;
}

uint64_t TSP::DataInfo::DataInfo(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001C8558;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(scc_info_DataInfo_TSPArchiveMessages_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_DataInfo_TSPArchiveMessages_2eproto);
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

void TSP::DataInfo::~DataInfo(TSP::DataInfo *this)
{
  sub_10003E288(this);
  sub_10002F4C4(this + 1);
}

{
  TSP::DataInfo::~DataInfo(this);

  operator delete();
}

TSP::IndexSet *sub_10003E288(TSP::IndexSet *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(result + 4);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v4 = *(result + 5);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  v5 = *(result + 6);
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v6 = *(result + 7);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete();
  }

  v7 = *(result + 8);
  if (v7 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v8 = *(result + 9);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  v9 = *(result + 10);
  if (v9 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  if (result != &TSP::_DataInfo_default_instance_)
  {
    v10 = *(result + 11);
    if (v10)
    {
      TSP::DataAttributes::~DataAttributes(v10);
      operator delete();
    }

    v11 = *(v1 + 12);
    if (v11)
    {
      TSP::EncryptionInfo::~EncryptionInfo(v11);
      operator delete();
    }

    result = *(v1 + 13);
    if (result)
    {
      TSP::IndexSet::~IndexSet(result);

      operator delete();
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *TSP::DataInfo::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 4);
  if (v4)
  {
    if ((v4 & 1) == 0)
    {
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v4 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *v6 = 0;
        *(v6 + 23) = 0;
        if ((v4 & 4) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_5:
      if ((v4 & 8) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v8 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v8 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
        if ((v4 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
        if ((v4 & 0x10) != 0)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_8;
      }

LABEL_31:
      v10 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v10 + 23) < 0)
      {
        **v10 = 0;
        *(v10 + 8) = 0;
        if ((v4 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        *v10 = 0;
        *(v10 + 23) = 0;
        if ((v4 & 0x40) != 0)
        {
          goto LABEL_35;
        }
      }

LABEL_9:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_42;
      }

LABEL_39:
      v12 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v12 + 23) < 0)
      {
        **v12 = 0;
        *(v12 + 8) = 0;
      }

      else
      {
        *v12 = 0;
        *(v12 + 23) = 0;
      }

      goto LABEL_42;
    }

    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v4 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v4 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_19:
    v7 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v4 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v4 & 8) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_27:
    v9 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v9 + 23) < 0)
    {
      **v9 = 0;
      *(v9 + 8) = 0;
      if ((v4 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      *v9 = 0;
      *(v9 + 23) = 0;
      if ((v4 & 0x20) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_35:
    v11 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v11 + 23) < 0)
    {
      **v11 = 0;
      *(v11 + 8) = 0;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *v11 = 0;
      *(v11 + 23) = 0;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_39;
  }

LABEL_42:
  if ((v4 & 0x700) == 0)
  {
    goto LABEL_47;
  }

  if ((v4 & 0x100) != 0)
  {
    this = TSP::DataAttributes::Clear(*(this + 11));
    if ((v4 & 0x200) == 0)
    {
LABEL_45:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_45;
  }

  this = TSP::EncryptionInfo::Clear(*(v3 + 96), a2, a3);
  if ((v4 & 0x400) != 0)
  {
LABEL_46:
    this = TSP::IndexSet::Clear(*(v3 + 104), a2, a3);
  }

LABEL_47:
  if ((v4 & 0xF800) != 0)
  {
    *(v3 + 112) = 0;
    *(v3 + 120) = 0;
    *(v3 + 128) = 0;
  }

  if ((v4 & 0x70000) != 0)
  {
    *(v3 + 136) = 0;
    *(v3 + 144) = 0;
    *(v3 + 152) = 1;
  }

  v14 = *(v3 + 8);
  v13 = v3 + 8;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_1000315EC(v13, a2, a3);
  }

  return this;
}