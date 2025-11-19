void sub_1000DFEC4(_Unwind_Exception *a1)
{
  sub_1000ED63C(v3);
  sub_10006A1CC(v2);
  sub_1000EE120(v1);
  _Unwind_Resume(a1);
}

void google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(google::protobuf::EnumDescriptorProto *this)
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

  if (this != google::protobuf::_EnumDescriptorProto_default_instance_)
  {
    v3 = *(this + 13);
    if (v3)
    {
      google::protobuf::EnumOptions::~EnumOptions(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_1000ED63C(this + 9);
  sub_10006A1CC(this + 6);
  sub_1000EE120(this + 3);
}

{
  google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto::Clear(google::protobuf::EnumDescriptorProto *this, uint64_t a2, uint64_t a3)
{
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      google::protobuf::EnumValueDescriptorProto::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(this + 8) = 0;
  }

  v7 = *(this + 14);
  if (v7 >= 1)
  {
    v8 = (*(this + 8) + 8);
    do
    {
      v9 = *v8++;
      google::protobuf::EnumDescriptorProto_EnumReservedRange::Clear(v9, a2, a3);
      --v7;
    }

    while (v7);
    *(this + 14) = 0;
  }

  result = sub_1000ED4AC(this + 72);
  v13 = *(this + 4);
  if ((v13 & 3) != 0)
  {
    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    v14 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v14 + 23) & 0x80000000) == 0)
    {
      *v14 = 0;
      *(v14 + 23) = 0;
LABEL_13:
      if ((v13 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    **v14 = 0;
    *(v14 + 8) = 0;
    if ((v13 & 2) != 0)
    {
LABEL_14:
      result = google::protobuf::EnumOptions::Clear(*(this + 13));
    }
  }

LABEL_15:
  v16 = *(this + 8);
  v15 = this + 8;
  *(v15 + 2) = 0;
  if (v16)
  {

    return sub_1000315EC(v15, v11, v12);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumOptions::Clear(google::protobuf::EnumOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v5 = *(this + 14);
  if (v5 >= 1)
  {
    v6 = (*(this + 8) + 8);
    do
    {
      v7 = *v6++;
      result = google::protobuf::UninterpretedOption::Clear(v7, v3, v4);
      --v5;
    }

    while (v5);
    *(this + 14) = 0;
  }

  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 32) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::EnumDescriptorProto::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v46 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_1000313B0(a3, &v46, i))
    {
      return v46;
    }

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
      v7 = (v46 + 2);
LABEL_6:
      v46 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v46, (v9 - 128));
    v46 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v6;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 > 2)
    {
      break;
    }

    if (v10 != 1)
    {
      if (v10 != 2 || v8 != 18)
      {
        goto LABEL_67;
      }

      v20 = (v7 - 1);
LABEL_31:
      v21 = (v20 + 1);
      v46 = (v20 + 1);
      v22 = *(a1 + 40);
      if (!v22)
      {
        v23 = *(a1 + 36);
        goto LABEL_33;
      }

      v27 = *(a1 + 32);
      v23 = *v22;
      if (v27 >= *v22)
      {
        if (v23 == *(a1 + 36))
        {
LABEL_33:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v23 + 1);
          v22 = *(a1 + 40);
          v23 = *v22;
        }

        *v22 = v23 + 1;
        v24 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueDescriptorProto>(*(a1 + 24));
        v25 = *(a1 + 32);
        v26 = *(a1 + 40) + 8 * v25;
        *(a1 + 32) = v25 + 1;
        *(v26 + 8) = v24;
        v21 = v46;
      }

      else
      {
        *(a1 + 32) = v27 + 1;
        v24 = *&v22[2 * v27 + 2];
      }

      v20 = sub_100162BB8(a3, v24, v21);
      v46 = v20;
      if (!v20)
      {
        return 0;
      }

      if (*a3 <= v20 || *v20 != 18)
      {
        continue;
      }

      goto LABEL_31;
    }

    if (v8 != 10)
    {
      goto LABEL_67;
    }

    *(a1 + 16) |= 1u;
    v39 = *(a1 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 96), v39);
    v30 = google::protobuf::internal::InlineGreedyStringParser(v40, v46, a3);
LABEL_74:
    v46 = v30;
    if (!v30)
    {
      return 0;
    }

LABEL_75:
    ;
  }

  if (v10 == 3)
  {
    if (v8 != 26)
    {
      goto LABEL_67;
    }

    *(a1 + 16) |= 2u;
    v28 = *(a1 + 104);
    if (!v28)
    {
      v29 = *(a1 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumOptions>(v29);
      *(a1 + 104) = v28;
      v7 = v46;
    }

    v30 = sub_100162C88(a3, v28, v7);
    goto LABEL_74;
  }

  if (v10 != 4)
  {
    if (v10 == 5 && v8 == 42)
    {
      v11 = v7 - 1;
      while (1)
      {
        v12 = v11 + 1;
        v46 = (v11 + 1);
        v13 = *(a1 + 88);
        if (!v13)
        {
          break;
        }

        v14 = *(a1 + 80);
        v15 = *v13;
        if (v14 >= *v13)
        {
          if (v15 == *(a1 + 84))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v15 + 1);
            v13 = *(a1 + 88);
            v15 = *v13;
          }

          *v13 = v15 + 1;
          v16 = sub_1000B3534(*(a1 + 72));
          v17 = *(a1 + 80);
          v18 = *(a1 + 88) + 8 * v17;
          *(a1 + 80) = v17 + 1;
          *(v18 + 8) = v16;
          v12 = v46;
          goto LABEL_20;
        }

        *(a1 + 80) = v14 + 1;
        v16 = *&v13[2 * v14 + 2];
LABEL_20:
        v11 = google::protobuf::internal::InlineGreedyStringParser(v16, v12, a3);
        v46 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 42)
        {
          goto LABEL_75;
        }
      }

      v15 = *(a1 + 84);
      goto LABEL_18;
    }

    goto LABEL_67;
  }

  if (v8 == 34)
  {
    v31 = (v7 - 1);
    while (1)
    {
      v32 = (v31 + 1);
      v46 = (v31 + 1);
      v33 = *(a1 + 64);
      if (!v33)
      {
        break;
      }

      v38 = *(a1 + 56);
      v34 = *v33;
      if (v38 < *v33)
      {
        *(a1 + 56) = v38 + 1;
        v35 = *&v33[2 * v38 + 2];
        goto LABEL_57;
      }

      if (v34 == *(a1 + 60))
      {
        goto LABEL_53;
      }

LABEL_54:
      *v33 = v34 + 1;
      v35 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto_EnumReservedRange>(*(a1 + 48));
      v36 = *(a1 + 56);
      v37 = *(a1 + 64) + 8 * v36;
      *(a1 + 56) = v36 + 1;
      *(v37 + 8) = v35;
      v32 = v46;
LABEL_57:
      v31 = sub_100162D58(a3, v35, v32);
      v46 = v31;
      if (!v31)
      {
        return 0;
      }

      if (*a3 <= v31 || *v31 != 34)
      {
        goto LABEL_75;
      }
    }

    v34 = *(a1 + 60);
LABEL_53:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v34 + 1);
    v33 = *(a1 + 64);
    v34 = *v33;
    goto LABEL_54;
  }

LABEL_67:
  if (v8)
  {
    v41 = (v8 & 7) == 4;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    v42 = *(a1 + 8);
    if (v42)
    {
      v43 = ((v42 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v43 = sub_100031428((a1 + 8), v6, v7);
      v7 = v46;
    }

    v30 = google::protobuf::internal::UnknownFieldParse(v8, v43, v7);
    goto LABEL_74;
  }

  a3[10].i32[0] = v8 - 1;
  return v46;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto::_InternalSerialize(google::protobuf::EnumDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 5) + 8 * i + 8);
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

      v4 = google::protobuf::EnumValueDescriptorProto::_InternalSerialize(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 13);
    *v4 = 26;
    v16 = *(v15 + 11);
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

    v4 = google::protobuf::EnumOptions::_InternalSerialize(v15, v17, a3);
  }

  v21 = *(this + 14);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v23 = *(*(this + 8) + 8 * j + 8);
      *v4 = 34;
      v24 = *(v23 + 5);
      if (v24 > 0x7F)
      {
        v4[1] = v24 | 0x80;
        v26 = v24 >> 7;
        if (v24 >> 14)
        {
          v25 = v4 + 3;
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
          v4[2] = v26;
          v25 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v24;
        v25 = v4 + 2;
      }

      v4 = google::protobuf::EnumDescriptorProto_EnumReservedRange::_InternalSerialize(v23, v25, a3, v4);
    }
  }

  v29 = *(this + 20);
  if (v29 >= 1)
  {
    v30 = 8;
    do
    {
      v4 = sub_1000D92B8(a3, 5, *(*(this + 11) + v30), v4);
      v30 += 8;
      --v29;
    }

    while (v29);
  }

  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v31 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::EnumDescriptorProto::ByteSizeLong(google::protobuf::EnumDescriptorProto *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
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
      v7 = google::protobuf::EnumValueDescriptorProto::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 14);
  v9 = v2 + v8;
  v10 = *(this + 8);
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
      v14 = google::protobuf::EnumDescriptorProto_EnumReservedRange::ByteSizeLong(v13);
      v9 += &v14[(9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6];
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 20);
  v16 = (v9 + v15);
  if (v15 >= 1)
  {
    v17 = (*(this + 11) + 8);
    do
    {
      v18 = *v17++;
      v19 = *(v18 + 23);
      v20 = *(v18 + 8);
      if ((v19 & 0x80u) == 0)
      {
        v20 = v19;
      }

      v16 = (v16 + v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6));
      --v15;
    }

    while (v15);
  }

  v21 = *(this + 4);
  if ((v21 & 3) != 0)
  {
    if (v21)
    {
      v22 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
      v23 = *(v22 + 23);
      v24 = *(v22 + 8);
      if ((v23 & 0x80u) == 0)
      {
        v24 = v23;
      }

      v16 = (v16 + v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    if ((v21 & 2) != 0)
    {
      v25 = google::protobuf::EnumOptions::ByteSizeLong(*(this + 13));
      v16 = &v25[((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1 + v16];
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v16, this + 5);
  }

  else
  {
    *(this + 5) = v16;
    return v16;
  }
}

void google::protobuf::EnumDescriptorProto::MergeFrom(google::protobuf::EnumDescriptorProto *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumDescriptorProto::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::EnumDescriptorProto::MergeFrom(google::protobuf::EnumDescriptorProto *this, const google::protobuf::EnumDescriptorProto *a2, uint64_t a3)
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
    sub_1000EE1A4(this + 3, v8, v7 + 8, v6, **(this + 5) - *(this + 8));
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
    sub_1000EE264(this + 6, v13, v12 + 8, v11, **(this + 8) - *(this + 14));
    v14 = *(this + 14) + v11;
    *(this + 14) = v14;
    v15 = *(this + 8);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 20);
  if (v16)
  {
    v17 = *(a2 + 11);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72), *(a2 + 20));
    sub_1000ED8E8(this + 3, v18, (v17 + 8), v16, **(this + 11) - *(this + 20));
    v19 = *(this + 20) + v16;
    *(this + 20) = v19;
    v20 = *(this + 11);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 4);
  if ((v21 & 3) != 0)
  {
    if (v21)
    {
      v22 = *(a2 + 12);
      *(this + 4) |= 1u;
      v23 = *(this + 1);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 12, v22 & 0xFFFFFFFFFFFFFFFELL, v23);
    }

    if ((v21 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v24 = *(this + 13);
      if (!v24)
      {
        v25 = *(this + 1);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumOptions>(v25);
        *(this + 13) = v24;
      }

      if (*(a2 + 13))
      {
        v26 = *(a2 + 13);
      }

      else
      {
        v26 = &google::protobuf::_EnumOptions_default_instance_;
      }

      google::protobuf::EnumOptions::MergeFrom(v24, v26);
    }
  }
}

void google::protobuf::EnumOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::EnumOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), v4);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_1000EE060(this + 2, v8, v7 + 8, v6, *this[8] - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = this[8];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 10);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      *(this + 72) = *(a2 + 72);
    }

    if ((v11 & 2) != 0)
    {
      *(this + 73) = *(a2 + 73);
    }

    *(this + 10) |= v11;
  }
}

void google::protobuf::EnumDescriptorProto::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::EnumDescriptorProto::Clear(this, a2, a3);

    google::protobuf::EnumDescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::EnumDescriptorProto::IsInitialized(google::protobuf::EnumDescriptorProto *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = google::protobuf::EnumValueDescriptorProto::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  v6 = *(this + 13);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v6 + 16));
  if (result)
  {
    result = sub_1000DD810(v6 + 48);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::EnumOptions::IsInitialized(google::protobuf::EnumOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_1000DD810(this + 48);
  }

  return result;
}

uint64_t google::protobuf::EnumDescriptorProto::GetMetadata(google::protobuf::EnumDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[18];
  v2 = off_1001EA190[19];
  return result;
}

uint64_t google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CFBE0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(scc_info_EnumValueDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumValueDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

void google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(google::protobuf::EnumValueDescriptorProto *this)
{
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (this != &google::protobuf::_EnumValueDescriptorProto_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      google::protobuf::EnumValueOptions::~EnumValueOptions(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
}

{
  google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumValueDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 4);
  if ((v4 & 3) != 0)
  {
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v5 + 23) & 0x80000000) == 0)
    {
      *v5 = 0;
      *(v5 + 23) = 0;
LABEL_5:
      if ((v4 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v4 & 2) != 0)
    {
LABEL_6:
      this = google::protobuf::EnumValueOptions::Clear(*(this + 4));
    }
  }

LABEL_7:
  v7 = *(v3 + 8);
  v6 = v3 + 8;
  *(v6 + 32) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_1000315EC(v6, a2, a3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumValueOptions::Clear(google::protobuf::EnumValueOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v5 = *(this + 14);
  if (v5 >= 1)
  {
    v6 = (*(this + 8) + 8);
    do
    {
      v7 = *v6++;
      result = google::protobuf::UninterpretedOption::Clear(v7, v3, v4);
      --v5;
    }

    while (v5);
    *(this + 14) = 0;
  }

  v9 = *(this + 8);
  v8 = this + 8;
  v8[64] = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::EnumValueDescriptorProto::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v27 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v27, a3[11].i32[1]) & 1) == 0)
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
        goto LABEL_43;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 26)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v20 = *(a1 + 32);
        if (!v20)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueOptions>(v21);
          *(a1 + 32) = v20;
          v8 = v27;
        }

        v16 = sub_100162E28(a3, v20, v8);
LABEL_34:
        v27 = v16;
        if (!v16)
        {
          goto LABEL_43;
        }

        goto LABEL_35;
      }

      if (v11 != 2)
      {
        if (v11 == 1 && v9 == 10)
        {
          *(a1 + 16) |= 1u;
          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v22);
          v16 = google::protobuf::internal::InlineGreedyStringParser(v23, v27, a3);
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
            a3[10].i32[0] = v9 - 1;
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
            v8 = v27;
          }

          v16 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8);
        }

        goto LABEL_34;
      }

      if (v9 != 16)
      {
        goto LABEL_13;
      }

      v6 |= 4u;
      v18 = (v8 + 1);
      LODWORD(v17) = *v8;
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      v19 = *v18;
      v17 = v17 + (v19 << 7) - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v8 + 2);
LABEL_24:
        v27 = v18;
        *(a1 + 40) = v17;
        goto LABEL_35;
      }

      v25 = google::protobuf::internal::VarintParseSlow64(v8, v17);
      v27 = v25;
      *(a1 + 40) = v26;
      if (!v25)
      {
LABEL_43:
        v27 = 0;
        goto LABEL_2;
      }

LABEL_35:
      if (sub_1000313B0(a3, &v27, a3[11].i32[1]))
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

const google::protobuf::UnknownFieldSet *google::protobuf::EnumValueDescriptorProto::_InternalSerialize(google::protobuf::EnumValueDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
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

  v10 = *(this + 10);
  *v4 = 16;
  if (v10 > 0x7F)
  {
    v4[1] = v10 | 0x80;
    v12 = v10 >> 7;
    if (v10 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v12 | 0x80;
        v17 = v12 >> 7;
        ++v4;
        v18 = v12 >> 14;
        v12 >>= 7;
      }

      while (v18);
      *(v4 - 1) = v17;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v4[2] = v12;
      v4 += 3;
      if ((v6 & 2) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v4[1] = v10;
    v4 += 2;
    if ((v6 & 2) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 4);
  *v4 = 26;
  v8 = *(v7 + 11);
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v11 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 3;
      do
      {
        *(v9 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v9;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v9 - 1) = v13;
    }

    else
    {
      v4[2] = v11;
      v9 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v8;
    v9 = v4 + 2;
  }

  v4 = google::protobuf::EnumValueOptions::_InternalSerialize(v7, v9, a3);
LABEL_23:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::EnumValueDescriptorProto::ByteSizeLong(google::protobuf::EnumValueDescriptorProto *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = (v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = google::protobuf::EnumValueOptions::ByteSizeLong(*(this + 4));
    v3 = &v7[v3 + 1 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6)];
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = *(this + 10);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 = (v3 + v9);
  }

LABEL_15:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v3, this + 5);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void google::protobuf::EnumValueDescriptorProto::MergeFrom(google::protobuf::EnumValueDescriptorProto *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumValueDescriptorProto::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::EnumValueDescriptorProto::MergeFrom(google::protobuf::EnumValueDescriptorProto *this, const google::protobuf::EnumValueDescriptorProto *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 7) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 3);
      *(this + 4) |= 1u;
      v8 = *(this + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 3, v7 & 0xFFFFFFFFFFFFFFFELL, v8);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
LABEL_8:
          *(this + 4) |= v6;
          return;
        }

LABEL_7:
        *(this + 10) = *(a2 + 10);
        goto LABEL_8;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueOptions>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &google::protobuf::_EnumValueOptions_default_instance_;
    }

    google::protobuf::EnumValueOptions::MergeFrom(v9, v11);
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }
}

void google::protobuf::EnumValueOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::EnumValueOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), v4);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_1000EE060(this + 2, v8, v7 + 8, v6, *this[8] - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = this[8];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 40))
  {
    v11 = *(a2 + 72);
    *(this + 10) |= 1u;
    *(this + 72) = v11;
  }
}

void google::protobuf::EnumValueDescriptorProto::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::EnumValueDescriptorProto::Clear(this, a2, a3);

    google::protobuf::EnumValueDescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::EnumValueDescriptorProto::IsInitialized(google::protobuf::EnumValueDescriptorProto *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(this + 4);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v2 + 16));
  if (result)
  {
    result = sub_1000DD810(v2 + 48);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::EnumValueOptions::IsInitialized(google::protobuf::EnumValueOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_1000DD810(this + 48);
  }

  return result;
}

uint64_t google::protobuf::EnumValueDescriptorProto::GetMetadata(google::protobuf::EnumValueDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[20];
  v2 = off_1001EA190[21];
  return result;
}

void *google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(void *a1, uint64_t a2)
{
  *a1 = off_1001CFC90;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(scc_info_ServiceDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ServiceDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  a1[6] = &google::protobuf::internal::fixed_address_empty_string;
  a1[7] = 0;
  return a1;
}

void google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto(google::protobuf::ServiceDescriptorProto *this)
{
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  if (this != google::protobuf::_ServiceDescriptorProto_default_instance_)
  {
    v3 = *(this + 7);
    if (v3)
    {
      google::protobuf::ServiceOptions::~ServiceOptions(v3);
      operator delete();
    }
  }

  sub_10002F4C4(this + 1);
  sub_1000EE324(this + 3);
}

{
  google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::ServiceDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = google::protobuf::MethodDescriptorProto::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  v7 = *(v3 + 16);
  if ((v7 & 3) != 0)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

    v8 = *(v3 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v8 + 23) & 0x80000000) == 0)
    {
      *v8 = 0;
      *(v8 + 23) = 0;
LABEL_9:
      if ((v7 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v7 & 2) != 0)
    {
LABEL_10:
      this = google::protobuf::ServiceOptions::Clear(*(v3 + 56));
    }
  }

LABEL_11:
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_1000315EC(v9, a2, a3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::ServiceOptions::Clear(google::protobuf::ServiceOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v5 = *(this + 14);
  if (v5 >= 1)
  {
    v6 = (*(this + 8) + 8);
    do
    {
      v7 = *v6++;
      result = google::protobuf::UninterpretedOption::Clear(v7, v3, v4);
      --v5;
    }

    while (v5);
    *(this + 14) = 0;
  }

  v9 = *(this + 8);
  v8 = this + 8;
  v8[64] = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::ServiceDescriptorProto::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v30 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_1000313B0(a3, &v30, i))
    {
      return v30;
    }

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
      v7 = (v30 + 2);
LABEL_6:
      v30 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
    v30 = TagFallback;
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
      if (v8 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v24 = *(a1 + 56);
      if (!v24)
      {
        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceOptions>(v25);
        *(a1 + 56) = v24;
        v7 = v30;
      }

      v15 = sub_100162FC8(a3, v24, v7);
      goto LABEL_43;
    }

    if (v10 == 2)
    {
      break;
    }

    if (v10 != 1 || v8 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v26 = *(a1 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 48), v26);
    v15 = google::protobuf::internal::InlineGreedyStringParser(v27, v30, a3);
LABEL_43:
    v30 = v15;
    if (!v15)
    {
      return 0;
    }

LABEL_44:
    ;
  }

  if (v8 == 18)
  {
    v16 = (v7 - 1);
    while (1)
    {
      v17 = (v16 + 1);
      v30 = (v16 + 1);
      v18 = *(a1 + 40);
      if (!v18)
      {
        break;
      }

      v23 = *(a1 + 32);
      v19 = *v18;
      if (v23 < *v18)
      {
        *(a1 + 32) = v23 + 1;
        v20 = *&v18[2 * v23 + 2];
        goto LABEL_28;
      }

      if (v19 == *(a1 + 36))
      {
        goto LABEL_24;
      }

LABEL_25:
      *v18 = v19 + 1;
      v20 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodDescriptorProto>(*(a1 + 24));
      v21 = *(a1 + 32);
      v22 = *(a1 + 40) + 8 * v21;
      *(a1 + 32) = v21 + 1;
      *(v22 + 8) = v20;
      v17 = v30;
LABEL_28:
      v16 = sub_100162EF8(a3, v20, v17);
      v30 = v16;
      if (!v16)
      {
        return 0;
      }

      if (*a3 <= v16 || *v16 != 18)
      {
        goto LABEL_44;
      }
    }

    v19 = *(a1 + 36);
LABEL_24:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v19 + 1);
    v18 = *(a1 + 40);
    v19 = *v18;
    goto LABEL_25;
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

  if (!v12)
  {
    v13 = *(a1 + 8);
    if (v13)
    {
      v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v14 = sub_100031428((a1 + 8), v6, v7);
      v7 = v30;
    }

    v15 = google::protobuf::internal::UnknownFieldParse(v8, v14, v7);
    goto LABEL_43;
  }

  a3[10].i32[0] = v8 - 1;
  return v30;
}

const google::protobuf::UnknownFieldSet *google::protobuf::ServiceDescriptorProto::_InternalSerialize(google::protobuf::ServiceDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  v7 = *(this + 8);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 5) + 8 * i + 8);
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

      v4 = google::protobuf::MethodDescriptorProto::_InternalSerialize(v9, v11, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 7);
    *v4 = 26;
    v16 = *(v15 + 11);
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

    v4 = google::protobuf::ServiceOptions::_InternalSerialize(v15, v17, a3);
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v21 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::ServiceDescriptorProto::ByteSizeLong(google::protobuf::ServiceDescriptorProto *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
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
      v7 = google::protobuf::MethodDescriptorProto::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 4);
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 = (v2 + v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    if ((v8 & 2) != 0)
    {
      v12 = google::protobuf::ServiceOptions::ByteSizeLong(*(this + 7));
      v2 = &v12[v2 + 1 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6)];
    }
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

void google::protobuf::ServiceDescriptorProto::MergeFrom(google::protobuf::ServiceDescriptorProto *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::ServiceDescriptorProto::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::ServiceDescriptorProto::MergeFrom(google::protobuf::ServiceDescriptorProto *this, const google::protobuf::ServiceDescriptorProto *a2, uint64_t a3)
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
    sub_1000EE3A8(this + 3, v8, v7 + 8, v6, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v6;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v12 = *(a2 + 6);
      *(this + 4) |= 1u;
      v13 = *(this + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 6, v12 & 0xFFFFFFFFFFFFFFFELL, v13);
    }

    if ((v11 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v14 = *(this + 7);
      if (!v14)
      {
        v15 = *(this + 1);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceOptions>(v15);
        *(this + 7) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = &google::protobuf::_ServiceOptions_default_instance_;
      }

      google::protobuf::ServiceOptions::MergeFrom(v14, v16);
    }
  }
}

void google::protobuf::ServiceOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::ServiceOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), v4);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_1000EE060(this + 2, v8, v7 + 8, v6, *this[8] - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = this[8];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 40))
  {
    v11 = *(a2 + 72);
    *(this + 10) |= 1u;
    *(this + 72) = v11;
  }
}

void google::protobuf::ServiceDescriptorProto::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::ServiceDescriptorProto::Clear(this, a2, a3);

    google::protobuf::ServiceDescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::ServiceDescriptorProto::IsInitialized(google::protobuf::ServiceDescriptorProto *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = google::protobuf::MethodDescriptorProto::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  v6 = *(this + 7);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v6 + 16));
  if (result)
  {
    result = sub_1000DD810(v6 + 48);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::ServiceOptions::IsInitialized(google::protobuf::ServiceOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_1000DD810(this + 48);
  }

  return result;
}

uint64_t google::protobuf::ServiceDescriptorProto::GetMetadata(google::protobuf::ServiceDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[22];
  v2 = off_1001EA190[23];
  return result;
}

uint64_t google::protobuf::MethodDescriptorProto::MethodDescriptorProto(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CFD40;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(scc_info_MethodDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MethodDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 40) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void google::protobuf::MethodDescriptorProto::~MethodDescriptorProto(google::protobuf::MethodDescriptorProto *this)
{
  sub_1000E2720(this);
  sub_10002F4C4(this + 1);
}

{
  google::protobuf::MethodDescriptorProto::~MethodDescriptorProto(this);

  operator delete();
}

google::protobuf::MethodOptions *sub_1000E2720(google::protobuf::MethodOptions *result)
{
  v1 = *(result + 3);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v2 = *(result + 4);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(result + 5);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  if (result != &google::protobuf::_MethodDescriptorProto_default_instance_)
  {
    result = *(result + 6);
    if (result)
    {
      google::protobuf::MethodOptions::~MethodOptions(result);

      operator delete();
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::MethodDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 4);
  if ((v4 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    v7 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v4 & 2) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
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

    goto LABEL_19;
  }

  if ((v4 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v4 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v4 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v9 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v9 + 23) & 0x80000000) == 0)
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    this = google::protobuf::MethodOptions::Clear(*(this + 6));
    goto LABEL_7;
  }

  **v9 = 0;
  *(v9 + 8) = 0;
  if ((v4 & 8) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v6 = *(v3 + 8);
  v5 = v3 + 8;
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_1000315EC(v5, a2, a3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::MethodOptions::Clear(google::protobuf::MethodOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v5 = *(this + 14);
  if (v5 >= 1)
  {
    v6 = (*(this + 8) + 8);
    do
    {
      v7 = *v6++;
      result = google::protobuf::UninterpretedOption::Clear(v7, v3, v4);
      --v5;
    }

    while (v5);
    *(this + 14) = 0;
  }

  if ((*(this + 40) & 3) != 0)
  {
    *(this + 9) = 0;
  }

  v9 = *(this + 8);
  v8 = this + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_1000315EC(v8, v3, v4);
  }

  return result;
}

google::protobuf::internal *google::protobuf::MethodDescriptorProto::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v33 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v33, a3[11].i32[1]) & 1) == 0)
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
        goto LABEL_64;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_46;
          }

          *(a1 + 16) |= 1u;
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = (a1 + 24);
        }

        else if (v11 == 2)
        {
          if (v9 != 18)
          {
            goto LABEL_46;
          }

          *(a1 + 16) |= 2u;
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = (a1 + 32);
        }

        else
        {
          if (v11 != 3 || v9 != 26)
          {
            goto LABEL_46;
          }

          *(a1 + 16) |= 4u;
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = (a1 + 40);
        }

        v21 = google::protobuf::internal::ArenaStringPtr::Mutable(v14, v13);
        v20 = google::protobuf::internal::InlineGreedyStringParser(v21, v33, a3);
        goto LABEL_53;
      }

      if (v11 == 4)
      {
        if (v9 == 34)
        {
          *(a1 + 16) |= 8u;
          v18 = *(a1 + 48);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodOptions>(v19);
            *(a1 + 48) = v18;
            v8 = v33;
          }

          v20 = sub_100163098(a3, v18, v8);
          goto LABEL_53;
        }

LABEL_46:
        if (v9)
        {
          v25 = (v9 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          a3[10].i32[0] = v9 - 1;
          goto LABEL_2;
        }

        v26 = *(a1 + 8);
        if (v26)
        {
          v27 = ((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v27 = sub_100031428((a1 + 8), v5, v8);
          v8 = v33;
        }

        v20 = google::protobuf::internal::UnknownFieldParse(v9, v27, v8);
LABEL_53:
        v33 = v20;
        if (!v20)
        {
          goto LABEL_64;
        }

        goto LABEL_54;
      }

      if (v11 == 5)
      {
        if (v9 != 40)
        {
          goto LABEL_46;
        }

        v6 |= 0x10u;
        v23 = (v8 + 1);
        v22 = *v8;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_45;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v8 + 2);
LABEL_45:
          v33 = v23;
          *(a1 + 56) = v22 != 0;
          goto LABEL_54;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v33 = v31;
        *(a1 + 56) = v32 != 0;
        if (!v31)
        {
LABEL_64:
          v33 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v11 != 6 || v9 != 48)
        {
          goto LABEL_46;
        }

        v6 |= 0x20u;
        v16 = (v8 + 1);
        v15 = *v8;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_25:
          v33 = v16;
          *(a1 + 57) = v15 != 0;
          goto LABEL_54;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v33 = v29;
        *(a1 + 57) = v30 != 0;
        if (!v29)
        {
          goto LABEL_64;
        }
      }

LABEL_54:
      if (sub_1000313B0(a3, &v33, a3[11].i32[1]))
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

const google::protobuf::UnknownFieldSet *google::protobuf::MethodDescriptorProto::_InternalSerialize(google::protobuf::MethodDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_100030384(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = sub_100030384(a3, 3, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 6);
  *v4 = 34;
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

  v4 = google::protobuf::MethodOptions::_InternalSerialize(v7, v9, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 56);
  *v4 = 40;
  v4[1] = v13;
  v4 += 2;
  if ((v6 & 0x20) != 0)
  {
LABEL_24:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v14 = *(this + 57);
    *v4 = 48;
    v4[1] = v14;
    v4 += 2;
  }

LABEL_27:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

char *google::protobuf::MethodDescriptorProto::ByteSizeLong(google::protobuf::MethodDescriptorProto *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v4 = 0;
    goto LABEL_16;
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

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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
    v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
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
    v13 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v2 & 8) != 0)
  {
LABEL_14:
    v11 = google::protobuf::MethodOptions::ByteSizeLong(*(this + 6));
    v3 += &v11[((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1];
  }

LABEL_15:
  v4 = (v3 + ((v2 >> 4) & 2) + ((v2 >> 3) & 2));
LABEL_16:
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

void google::protobuf::MethodDescriptorProto::MergeFrom(google::protobuf::MethodDescriptorProto *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::MethodDescriptorProto::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::MethodDescriptorProto::MergeFrom(google::protobuf::MethodDescriptorProto *this, const google::protobuf::MethodDescriptorProto *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 0x3F) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 3);
      *(this + 4) |= 1u;
      v8 = *(this + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 3, v7 & 0xFFFFFFFFFFFFFFFELL, v8);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_19;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    v9 = *(a2 + 4);
    *(this + 4) |= 2u;
    v10 = *(this + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 4, v9 & 0xFFFFFFFFFFFFFFFELL, v10);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

LABEL_19:
    v11 = *(a2 + 5);
    *(this + 4) |= 4u;
    v12 = *(this + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 5, v11 & 0xFFFFFFFFFFFFFFFELL, v12);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_22:
    *(this + 4) |= 8u;
    v13 = *(this + 6);
    if (!v13)
    {
      v14 = *(this + 1);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodOptions>(v14);
      *(this + 6) = v13;
    }

    if (*(a2 + 6))
    {
      v15 = *(a2 + 6);
    }

    else
    {
      v15 = google::protobuf::_MethodOptions_default_instance_;
    }

    google::protobuf::MethodOptions::MergeFrom(v13, v15);
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
LABEL_11:
        *(this + 4) |= v6;
        return;
      }

LABEL_10:
      *(this + 57) = *(a2 + 57);
      goto LABEL_11;
    }

LABEL_30:
    *(this + 56) = *(a2 + 56);
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }
}

void google::protobuf::MethodOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::MethodOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_1000315A0(this + 1, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), v4);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_1000EE060(this + 2, v8, v7 + 8, v6, *this[8] - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = this[8];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 10);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      *(this + 72) = *(a2 + 72);
    }

    if ((v11 & 2) != 0)
    {
      *(this + 19) = *(a2 + 19);
    }

    *(this + 10) |= v11;
  }
}

void google::protobuf::MethodDescriptorProto::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::MethodDescriptorProto::Clear(this, a2, a3);

    google::protobuf::MethodDescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::MethodDescriptorProto::IsInitialized(google::protobuf::MethodDescriptorProto *this)
{
  if ((*(this + 16) & 8) == 0)
  {
    return 1;
  }

  v2 = *(this + 6);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v2 + 16));
  if (result)
  {
    result = sub_1000DD810(v2 + 48);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::MethodOptions::IsInitialized(google::protobuf::MethodOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_1000DD810(this + 48);
  }

  return result;
}

uint64_t google::protobuf::MethodDescriptorProto::GetMetadata(google::protobuf::MethodDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[24];
  v2 = off_1001EA190[25];
  return result;
}

uint64_t google::protobuf::FileOptions::FileOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CFDF0;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_FileOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FileOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 72) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 80) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 88) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 96) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 104) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 112) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 120) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 128) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 136) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 144) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  *(a1 + 164) = 1;
  return a1;
}

void sub_1000E356C(_Unwind_Exception *a1)
{
  sub_1000EDFDC(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void google::protobuf::FileOptions::~FileOptions(google::protobuf::FileOptions *this)
{
  sub_1000E35D8(this);
  sub_10002F4C4(this + 1);
  sub_1000EDFDC(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::FileOptions::~FileOptions(this);

  operator delete();
}

void *sub_1000E35D8(void *result)
{
  v1 = result[9];
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v2 = result[10];
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = result[11];
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v4 = result[12];
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  v5 = result[13];
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete();
  }

  v6 = result[14];
  if (v6 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete();
  }

  v7 = result[15];
  if (v7 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    operator delete();
  }

  v8 = result[16];
  if (v8 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  v9 = result[17];
  if (v9 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

  v10 = result[18];
  if (v10 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    operator delete();
  }

  return result;
}

void *google::protobuf::FileOptions::default_instance(google::protobuf::FileOptions *this)
{
  if (atomic_load_explicit(scc_info_FileOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FileOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_FileOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::FileOptions::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v74 = a2;
  v5 = 0;
  if ((sub_1000313B0(a3, &v74, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v74 + 1);
      v8 = *v74;
      if (*v74 < 0)
      {
        v8 = v8 + (*v7 << 7) - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v74, v8);
          v74 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_153;
          }

          v7 = TagFallback;
          goto LABEL_7;
        }

        v7 = (v74 + 2);
      }

      v74 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_121;
          }

          *(a1 + 40) |= 1u;
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = (a1 + 72);
          goto LABEL_112;
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 0xCu:
        case 0xDu:
        case 0xEu:
        case 0xFu:
        case 0x13u:
        case 0x15u:
        case 0x16u:
        case 0x18u:
        case 0x19u:
        case 0x1Au:
        case 0x1Cu:
        case 0x1Du:
        case 0x1Eu:
        case 0x20u:
        case 0x21u:
        case 0x22u:
        case 0x23u:
        case 0x26u:
        case 0x2Bu:
          goto LABEL_121;
        case 8u:
          if (v8 != 66)
          {
            goto LABEL_121;
          }

          *(a1 + 40) |= 2u;
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = (a1 + 80);
          goto LABEL_112;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_121;
          }

          v33 = (v7 + 1);
          v32 = *v7;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_81;
          }

          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if (v34 < 0)
          {
            v74 = google::protobuf::internal::VarintParseSlow64(v7, v32);
            if (!v74)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v33 = (v7 + 2);
LABEL_81:
            v74 = v33;
          }

          if ((v32 - 1) > 2)
          {
            sub_100156EE0((a1 + 8));
          }

          else
          {
            *(a1 + 40) |= 0x40000u;
            *(a1 + 160) = v32;
          }

          goto LABEL_114;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_121;
          }

          v5 |= 0x400u;
          v30 = (v7 + 1);
          v29 = *v7;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_72;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if (v31 < 0)
          {
            v62 = google::protobuf::internal::VarintParseSlow64(v7, v29);
            v74 = v62;
            *(a1 + 152) = v63 != 0;
            if (!v62)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v30 = (v7 + 2);
LABEL_72:
            v74 = v30;
            *(a1 + 152) = v29 != 0;
          }

          goto LABEL_114;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_121;
          }

          *(a1 + 40) |= 4u;
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = (a1 + 88);
          goto LABEL_112;
        case 0x10u:
          if (v8 != 128)
          {
            goto LABEL_121;
          }

          v5 |= 0x2000u;
          v39 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_93;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if (v40 < 0)
          {
            v66 = google::protobuf::internal::VarintParseSlow64(v7, v38);
            v74 = v66;
            *(a1 + 155) = v67 != 0;
            if (!v66)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v39 = (v7 + 2);
LABEL_93:
            v74 = v39;
            *(a1 + 155) = v38 != 0;
          }

          goto LABEL_114;
        case 0x11u:
          if (v8 != 136)
          {
            goto LABEL_121;
          }

          v5 |= 0x4000u;
          v21 = (v7 + 1);
          v20 = *v7;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if (v22 < 0)
          {
            v56 = google::protobuf::internal::VarintParseSlow64(v7, v20);
            v74 = v56;
            *(a1 + 156) = v57 != 0;
            if (!v56)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v21 = (v7 + 2);
LABEL_41:
            v74 = v21;
            *(a1 + 156) = v20 != 0;
          }

          goto LABEL_114;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_121;
          }

          v5 |= 0x8000u;
          v27 = (v7 + 1);
          v26 = *v7;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_63;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if (v28 < 0)
          {
            v60 = google::protobuf::internal::VarintParseSlow64(v7, v26);
            v74 = v60;
            *(a1 + 157) = v61 != 0;
            if (!v60)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v27 = (v7 + 2);
LABEL_63:
            v74 = v27;
            *(a1 + 157) = v26 != 0;
          }

          goto LABEL_114;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_121;
          }

          v5 |= 0x800u;
          v24 = (v7 + 1);
          v23 = *v7;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v58 = google::protobuf::internal::VarintParseSlow64(v7, v23);
            v74 = v58;
            *(a1 + 153) = v59 != 0;
            if (!v58)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v24 = (v7 + 2);
LABEL_50:
            v74 = v24;
            *(a1 + 153) = v23 != 0;
          }

          goto LABEL_114;
        case 0x17u:
          if (v8 != 184)
          {
            goto LABEL_121;
          }

          v5 |= 0x20000u;
          v45 = (v7 + 1);
          v44 = *v7;
          if ((v44 & 0x8000000000000000) == 0)
          {
            goto LABEL_107;
          }

          v46 = *v45;
          v44 = (v46 << 7) + v44 - 128;
          if (v46 < 0)
          {
            v70 = google::protobuf::internal::VarintParseSlow64(v7, v44);
            v74 = v70;
            *(a1 + 159) = v71 != 0;
            if (!v70)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v45 = (v7 + 2);
LABEL_107:
            v74 = v45;
            *(a1 + 159) = v44 != 0;
          }

          goto LABEL_114;
        case 0x1Bu:
          if (v8 != 216)
          {
            goto LABEL_121;
          }

          v5 |= 0x1000u;
          v42 = (v7 + 1);
          v41 = *v7;
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_102;
          }

          v43 = *v42;
          v41 = (v43 << 7) + v41 - 128;
          if (v43 < 0)
          {
            v68 = google::protobuf::internal::VarintParseSlow64(v7, v41);
            v74 = v68;
            *(a1 + 154) = v69 != 0;
            if (!v68)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v42 = (v7 + 2);
LABEL_102:
            v74 = v42;
            *(a1 + 154) = v41 != 0;
          }

          goto LABEL_114;
        case 0x1Fu:
          if (v8 != 248)
          {
            goto LABEL_121;
          }

          v5 |= 0x80000u;
          v36 = (v7 + 1);
          v35 = *v7;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_88;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if (v37 < 0)
          {
            v64 = google::protobuf::internal::VarintParseSlow64(v7, v35);
            v74 = v64;
            *(a1 + 164) = v65 != 0;
            if (!v64)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v36 = (v7 + 2);
LABEL_88:
            v74 = v36;
            *(a1 + 164) = v35 != 0;
          }

          goto LABEL_114;
        case 0x24u:
          if (v8 != 34)
          {
            goto LABEL_121;
          }

          *(a1 + 40) |= 8u;
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = (a1 + 96);
          goto LABEL_112;
        case 0x25u:
          if (v8 != 42)
          {
            goto LABEL_121;
          }

          *(a1 + 40) |= 0x10u;
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = (a1 + 104);
          goto LABEL_112;
        case 0x27u:
          if (v8 != 58)
          {
            goto LABEL_121;
          }

          *(a1 + 40) |= 0x20u;
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = (a1 + 112);
          goto LABEL_112;
        case 0x28u:
          if (v8 != 66)
          {
            goto LABEL_121;
          }

          *(a1 + 40) |= 0x40u;
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = (a1 + 120);
          goto LABEL_112;
        case 0x29u:
          if (v8 != 74)
          {
            goto LABEL_121;
          }

          *(a1 + 40) |= 0x80u;
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = (a1 + 128);
          goto LABEL_112;
        case 0x2Au:
          if (v8 != 80)
          {
            goto LABEL_121;
          }

          v5 |= 0x10000u;
          v50 = (v7 + 1);
          v49 = *v7;
          if ((v49 & 0x8000000000000000) == 0)
          {
            goto LABEL_120;
          }

          v51 = *v50;
          v49 = (v51 << 7) + v49 - 128;
          if (v51 < 0)
          {
            v72 = google::protobuf::internal::VarintParseSlow64(v7, v49);
            v74 = v72;
            *(a1 + 158) = v73 != 0;
            if (!v72)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v50 = (v7 + 2);
LABEL_120:
            v74 = v50;
            *(a1 + 158) = v49 != 0;
          }

          goto LABEL_114;
        case 0x2Cu:
          if (v8 != 98)
          {
            goto LABEL_121;
          }

          *(a1 + 40) |= 0x100u;
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = (a1 + 136);
          goto LABEL_112;
        case 0x2Du:
          if (v8 != 106)
          {
            goto LABEL_121;
          }

          *(a1 + 40) |= 0x200u;
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = (a1 + 144);
LABEL_112:
          v47 = google::protobuf::internal::ArenaStringPtr::Mutable(v10, v9);
          v48 = google::protobuf::internal::InlineGreedyStringParser(v47, v74, a3);
          goto LABEL_113;
        default:
          if (v8 >> 3 == 999 && v8 == 58)
          {
            v12 = (v7 - 2);
            while (1)
            {
              v13 = (v12 + 2);
              v74 = (v12 + 2);
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
                goto LABEL_23;
              }

              if (v15 == *(a1 + 60))
              {
                goto LABEL_19;
              }

LABEL_20:
              *v14 = v15 + 1;
              v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(a1 + 48));
              v17 = *(a1 + 56);
              v18 = *(a1 + 64) + 8 * v17;
              *(a1 + 56) = v17 + 1;
              *(v18 + 8) = v16;
              v13 = v74;
LABEL_23:
              v12 = sub_100162948(a3, v16, v13);
              v74 = v12;
              if (!v12)
              {
                goto LABEL_153;
              }

              if (*a3 <= v12 || *v12 != 16058)
              {
                goto LABEL_114;
              }
            }

            v15 = *(a1 + 60);
LABEL_19:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v15 + 1);
            v14 = *(a1 + 64);
            v15 = *v14;
            goto LABEL_20;
          }

LABEL_121:
          if (v8)
          {
            v52 = (v8 & 7) == 4;
          }

          else
          {
            v52 = 1;
          }

          if (v52)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          v53 = v8;
          if (v8 >> 6 < 0x7D)
          {
            v54 = *(a1 + 8);
            if (v54)
            {
              v55 = ((v54 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v55 = sub_100031428((a1 + 8), v8, v7);
              v7 = v74;
            }

            v48 = google::protobuf::internal::UnknownFieldParse(v53, v55, v7);
          }

          else
          {
            v48 = google::protobuf::internal::ExtensionSet::ParseField((a1 + 16), v8, v7, &google::protobuf::_FileOptions_default_instance_, (a1 + 8), a3);
          }

LABEL_113:
          v74 = v48;
          if (!v48)
          {
LABEL_153:
            v74 = 0;
            goto LABEL_2;
          }

LABEL_114:
          if (sub_1000313B0(a3, &v74, a3[11].i32[1]))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v74;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FileOptions::_InternalSerialize(google::protobuf::FileOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x40000) == 0)
      {
        goto LABEL_4;
      }

LABEL_38:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v18 = *(this + 40);
      *v4 = 72;
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
          if ((v6 & 0x400) != 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v4[2] = v19;
          v4 += 3;
          if ((v6 & 0x400) != 0)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
        v4[1] = v18;
        v4 += 2;
        if ((v6 & 0x400) != 0)
        {
          goto LABEL_49;
        }
      }

LABEL_5:
      if ((v6 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_52;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_100030384(a3, 8, (*(this + 10) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40000) != 0)
  {
    goto LABEL_38;
  }

LABEL_4:
  if ((v6 & 0x400) == 0)
  {
    goto LABEL_5;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v22 = *(this + 152);
  *v4 = 80;
  v4[1] = v22;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_53;
  }

LABEL_52:
  v4 = sub_100030384(a3, 11, (*(this + 11) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x2000) == 0)
  {
LABEL_7:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_53:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 155);
  *v4 = 384;
  v4[2] = v23;
  v4 += 3;
  if ((v6 & 0x4000) == 0)
  {
LABEL_8:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_56:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(this + 156);
  *v4 = 392;
  v4[2] = v24;
  v4 += 3;
  if ((v6 & 0x8000) == 0)
  {
LABEL_9:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 157);
  *v4 = 400;
  v4[2] = v25;
  v4 += 3;
  if ((v6 & 0x800) == 0)
  {
LABEL_10:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(this + 153);
  *v4 = 416;
  v4[2] = v26;
  v4 += 3;
  if ((v6 & 0x20000) == 0)
  {
LABEL_11:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_68;
  }

LABEL_65:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(this + 159);
  *v4 = 440;
  v4[2] = v27;
  v4 += 3;
  if ((v6 & 0x1000) == 0)
  {
LABEL_12:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_71;
  }

LABEL_68:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v28 = *(this + 154);
  *v4 = 472;
  v4[2] = v28;
  v4 += 3;
  if ((v6 & 0x80000) == 0)
  {
LABEL_13:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_71:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 164);
  *v4 = 504;
  v4[2] = v29;
  v4 += 3;
  if ((v6 & 8) == 0)
  {
LABEL_14:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_75;
  }

LABEL_74:
  v4 = sub_100030384(a3, 36, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_15:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_75:
  v4 = sub_100030384(a3, 37, (*(this + 13) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_16:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

LABEL_76:
  v4 = sub_100030384(a3, 39, (*(this + 14) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_17:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_78;
  }

LABEL_77:
  v4 = sub_100030384(a3, 40, (*(this + 15) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_18:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_79;
  }

LABEL_78:
  v4 = sub_100030384(a3, 41, (*(this + 16) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10000) == 0)
  {
LABEL_19:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_82;
  }

LABEL_79:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v30 = *(this + 158);
  *v4 = 720;
  v4[2] = v30;
  v4 += 3;
  if ((v6 & 0x100) == 0)
  {
LABEL_20:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_82:
  v4 = sub_100030384(a3, 44, (*(this + 17) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x200) != 0)
  {
LABEL_21:
    v4 = sub_100030384(a3, 45, (*(this + 18) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_22:
  v7 = *(this + 14);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[2] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 4;
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
          v4[3] = v12;
          v11 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v10;
        v11 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v9, v11, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v17 = *(this + 1);
  if (v17)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v16);
  }

  return result;
}

char *google::protobuf::FileOptions::ByteSizeLong(google::protobuf::FileOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 14);
  v4 = (v2 + 2 * v3);
  v5 = *(this + 8);
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
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if (!*(this + 10))
  {
    goto LABEL_19;
  }

  if (v10)
  {
    v26 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    v27 = *(v26 + 23);
    v28 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v28 = v27;
    }

    v4 = (v4 + v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v10 & 2) == 0)
    {
LABEL_10:
      if ((v10 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_60;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_10;
  }

  v29 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
  v30 = *(v29 + 23);
  v31 = *(v29 + 8);
  if ((v30 & 0x80u) == 0)
  {
    v31 = v30;
  }

  v4 = (v4 + v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v10 & 4) == 0)
  {
LABEL_11:
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_63;
  }

LABEL_60:
  v32 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
  v33 = *(v32 + 23);
  v34 = *(v32 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v34 = v33;
  }

  v4 = (v4 + v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v10 & 8) == 0)
  {
LABEL_12:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

LABEL_63:
  v35 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(v35 + 23);
  v37 = *(v35 + 8);
  if ((v36 & 0x80u) == 0)
  {
    v37 = v36;
  }

  v4 = (v4 + v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2);
  if ((v10 & 0x10) == 0)
  {
LABEL_13:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_69:
    v41 = *(this + 14) & 0xFFFFFFFFFFFFFFFELL;
    v42 = *(v41 + 23);
    v43 = *(v41 + 8);
    if ((v42 & 0x80u) == 0)
    {
      v43 = v42;
    }

    v4 = (v4 + v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2);
    if ((v10 & 0x40) == 0)
    {
LABEL_15:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    goto LABEL_72;
  }

LABEL_66:
  v38 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
  v39 = *(v38 + 23);
  v40 = *(v38 + 8);
  if ((v39 & 0x80u) == 0)
  {
    v40 = v39;
  }

  v4 = (v4 + v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2);
  if ((v10 & 0x20) != 0)
  {
    goto LABEL_69;
  }

LABEL_14:
  if ((v10 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_72:
  v44 = *(this + 15) & 0xFFFFFFFFFFFFFFFELL;
  v45 = *(v44 + 23);
  v46 = *(v44 + 8);
  if ((v45 & 0x80u) == 0)
  {
    v46 = v45;
  }

  v4 = (v4 + v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2);
  if ((v10 & 0x80) != 0)
  {
LABEL_16:
    v11 = *(this + 16) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v4 = (v4 + v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

LABEL_19:
  if ((v10 & 0xFF00) != 0)
  {
    if ((v10 & 0x100) != 0)
    {
      v14 = *(this + 17) & 0xFFFFFFFFFFFFFFFELL;
      v15 = *(v14 + 23);
      v16 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v16 = v15;
      }

      v4 = (v4 + v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2);
    }

    if ((v10 & 0x200) != 0)
    {
      v17 = *(this + 18) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v4 = (v4 + v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2);
    }

    v20 = v4 + ((v10 >> 9) & 2);
    if ((v10 & 0x800) != 0)
    {
      v20 += 3;
    }

    if ((v10 & 0x1000) != 0)
    {
      v20 += 3;
    }

    if ((v10 & 0x2000) != 0)
    {
      v20 += 3;
    }

    if ((v10 & 0x4000) != 0)
    {
      v20 += 3;
    }

    if ((v10 & 0x8000) != 0)
    {
      v4 = (v20 + 3);
    }

    else
    {
      v4 = v20;
    }
  }

  if ((v10 & 0xF0000) != 0)
  {
    v21 = (v4 + 3);
    if ((v10 & 0x10000) == 0)
    {
      v21 = v4;
    }

    if ((v10 & 0x20000) != 0)
    {
      v21 = (v21 + 3);
    }

    if ((v10 & 0x40000) != 0)
    {
      v22 = *(this + 40);
      v23 = ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v22 >= 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 11;
      }

      v21 = (v21 + v24);
    }

    if ((v10 & 0x80000) != 0)
    {
      v4 = (v21 + 3);
    }

    else
    {
      v4 = v21;
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 11);
  }

  else
  {
    *(this + 11) = v4;
    return v4;
  }
}

void google::protobuf::FileOptions::MergeFrom(google::protobuf::FileOptions *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::FileOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::FileOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::FileOptions::Clear(this);

    google::protobuf::FileOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::FileOptions::CopyFrom(google::protobuf::FileOptions *this, const google::protobuf::FileOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::FileOptions::Clear(this);

    google::protobuf::FileOptions::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::FileOptions::GetMetadata(google::protobuf::FileOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[26];
  v2 = off_1001EA190[27];
  return result;
}

uint64_t google::protobuf::MessageOptions::MessageOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CFEA0;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_MessageOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MessageOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 72) = 0;
  return a1;
}

void sub_1000E4D24(_Unwind_Exception *a1)
{
  sub_1000EDFDC(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void google::protobuf::MessageOptions::~MessageOptions(google::protobuf::MessageOptions *this)
{
  sub_10002F4C4(this + 1);
  sub_1000EDFDC(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::MessageOptions::~MessageOptions(this);

  operator delete();
}

void *google::protobuf::MessageOptions::default_instance(google::protobuf::MessageOptions *this)
{
  if (atomic_load_explicit(scc_info_MessageOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MessageOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_MessageOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::MessageOptions::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v45 = a2;
  v5 = 0;
  if ((sub_1000313B0(a3, &v45, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v45 + 1);
      v8 = *v45;
      if ((*v45 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v8 + (*v7 << 7) - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v45, v8);
      v45 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_74;
      }

      v7 = TagFallback;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v9 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_50;
          }

          v5 |= 1u;
          v29 = (v7 + 1);
          v28 = *v7;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if ((v30 & 0x80000000) == 0)
          {
            v29 = (v7 + 2);
LABEL_49:
            v45 = v29;
            *(a1 + 72) = v28 != 0;
            goto LABEL_62;
          }

          v41 = google::protobuf::internal::VarintParseSlow64(v7, v28);
          v45 = v41;
          *(a1 + 72) = v42 != 0;
          if (!v41)
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v9 != 2 || v8 != 16)
          {
            goto LABEL_50;
          }

          v5 |= 2u;
          v20 = (v7 + 1);
          v19 = *v7;
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v21 = *v20;
          v19 = (v21 << 7) + v19 - 128;
          if ((v21 & 0x80000000) == 0)
          {
            v20 = (v7 + 2);
LABEL_34:
            v45 = v20;
            *(a1 + 73) = v19 != 0;
            goto LABEL_62;
          }

          v43 = google::protobuf::internal::VarintParseSlow64(v7, v19);
          v45 = v43;
          *(a1 + 73) = v44 != 0;
          if (!v43)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v9 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_50;
        }

        v5 |= 4u;
        v23 = (v7 + 1);
        v22 = *v7;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_39:
          v45 = v23;
          *(a1 + 74) = v22 != 0;
          goto LABEL_62;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v22);
        v45 = v37;
        *(a1 + 74) = v38 != 0;
        if (!v37)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v9 != 7)
        {
          if (v9 == 999 && v8 == 58)
          {
            v10 = (v7 - 2);
            while (1)
            {
              v11 = (v10 + 2);
              v45 = (v10 + 2);
              v12 = *(a1 + 64);
              if (!v12)
              {
                break;
              }

              v17 = *(a1 + 56);
              v13 = *v12;
              if (v17 < *v12)
              {
                *(a1 + 56) = v17 + 1;
                v14 = *&v12[2 * v17 + 2];
                goto LABEL_19;
              }

              if (v13 == *(a1 + 60))
              {
                goto LABEL_15;
              }

LABEL_16:
              *v12 = v13 + 1;
              v14 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(a1 + 48));
              v15 = *(a1 + 56);
              v16 = *(a1 + 64) + 8 * v15;
              *(a1 + 56) = v15 + 1;
              *(v16 + 8) = v14;
              v11 = v45;
LABEL_19:
              v10 = sub_100162948(a3, v14, v11);
              v45 = v10;
              if (!v10)
              {
                goto LABEL_74;
              }

              if (*a3 <= v10 || *v10 != 16058)
              {
                goto LABEL_62;
              }
            }

            v13 = *(a1 + 60);
LABEL_15:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v13 + 1);
            v12 = *(a1 + 64);
            v13 = *v12;
            goto LABEL_16;
          }

LABEL_50:
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
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          v32 = v8;
          if (v8 >> 6 < 0x7D)
          {
            v35 = *(a1 + 8);
            if (v35)
            {
              v36 = ((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v36 = sub_100031428((a1 + 8), v8, v7);
              v7 = v45;
            }

            v33 = google::protobuf::internal::UnknownFieldParse(v32, v36, v7);
          }

          else
          {
            v33 = google::protobuf::internal::ExtensionSet::ParseField((a1 + 16), v8, v7, &google::protobuf::_MessageOptions_default_instance_, (a1 + 8), a3);
          }

          v45 = v33;
          if (!v33)
          {
LABEL_74:
            v45 = 0;
            goto LABEL_2;
          }

          goto LABEL_62;
        }

        if (v8 != 56)
        {
          goto LABEL_50;
        }

        v5 |= 8u;
        v26 = (v7 + 1);
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_44:
          v45 = v26;
          *(a1 + 75) = v25 != 0;
          goto LABEL_62;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v7, v25);
        v45 = v39;
        *(a1 + 75) = v40 != 0;
        if (!v39)
        {
          goto LABEL_74;
        }
      }

LABEL_62:
      if (sub_1000313B0(a3, &v45, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v45 + 2);
LABEL_6:
    v45 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v45;
}

const google::protobuf::UnknownFieldSet *google::protobuf::MessageOptions::_InternalSerialize(google::protobuf::MessageOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 72);
    *v4 = 8;
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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

  v8 = *(this + 73);
  *v4 = 16;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v9 = *(this + 74);
  *v4 = 24;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v10 = *(this + 75);
    *v4 = 56;
    v4[1] = v10;
    v4 += 2;
  }

LABEL_18:
  v11 = *(this + 14);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v13 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v14 = *(v13 + 5);
      if (v14 > 0x7F)
      {
        v4[2] = v14 | 0x80;
        v16 = v14 >> 7;
        if (v14 >> 14)
        {
          v15 = v4 + 4;
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
          v4[3] = v16;
          v15 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v14;
        v15 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v13, v15, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v21 = *(this + 1);
  if (v21)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v21 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v20);
  }

  return result;
}

char *google::protobuf::MessageOptions::ByteSizeLong(google::protobuf::MessageOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 14);
  v4 = (v2 + 2 * v3);
  v5 = *(this + 8);
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
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  if ((*(this + 10) & 0xF) != 0)
  {
    v10 = (v4 + 2 * (*(this + 10) & 1) + (*(this + 10) & 2) + ((*(this + 10) >> 1) & 2) + ((*(this + 10) >> 2) & 2));
  }

  else
  {
    v10 = v4;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v10, this + 11);
  }

  else
  {
    *(this + 11) = v10;
    return v10;
  }
}

void google::protobuf::MessageOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::MessageOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::MessageOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::MessageOptions::Clear(this);

    google::protobuf::MessageOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::MessageOptions::CopyFrom(google::protobuf::MessageOptions *this, const google::protobuf::MessageOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::MessageOptions::Clear(this);

    google::protobuf::MessageOptions::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::MessageOptions::GetMetadata(google::protobuf::MessageOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[28];
  v2 = off_1001EA190[29];
  return result;
}

uint64_t google::protobuf::FieldOptions::FieldOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001CFF50;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_FieldOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_1000E5734(_Unwind_Exception *a1)
{
  sub_1000EDFDC(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void google::protobuf::FieldOptions::~FieldOptions(google::protobuf::FieldOptions *this)
{
  sub_10002F4C4(this + 1);
  sub_1000EDFDC(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::FieldOptions::~FieldOptions(this);

  operator delete();
}

void *google::protobuf::FieldOptions::default_instance(google::protobuf::FieldOptions *this)
{
  if (atomic_load_explicit(scc_info_FieldOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_FieldOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::FieldOptions::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v51 = a2;
  v5 = 0;
  if ((sub_1000313B0(a3, &v51, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v51 + 1);
      v8 = *v51;
      if ((*v51 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v8 + (*v7 << 7) - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v51, v8);
      v51 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_97;
      }

      v7 = TagFallback;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v9 == 1)
        {
          if (v8 == 8)
          {
            v27 = (v7 + 1);
            v26 = *v7;
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_51;
            }

            v28 = *v27;
            v26 = (v28 << 7) + v26 - 128;
            if (v28 < 0)
            {
              v51 = google::protobuf::internal::VarintParseSlow64(v7, v26);
              if (!v51)
              {
                goto LABEL_97;
              }
            }

            else
            {
              v27 = (v7 + 2);
LABEL_51:
              v51 = v27;
            }

            if (v26 > 2)
            {
              sub_1001584E4((a1 + 8));
            }

            else
            {
              *(a1 + 40) |= 1u;
              *(a1 + 72) = v26;
            }

            goto LABEL_79;
          }

LABEL_69:
          if (v8)
          {
            v38 = (v8 & 7) == 4;
          }

          else
          {
            v38 = 1;
          }

          if (v38)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          v39 = v8;
          if (v8 >> 6 < 0x7D)
          {
            v41 = *(a1 + 8);
            if (v41)
            {
              v42 = ((v41 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v42 = sub_100031428((a1 + 8), v8, v7);
              v7 = v51;
            }

            v40 = google::protobuf::internal::UnknownFieldParse(v39, v42, v7);
          }

          else
          {
            v40 = google::protobuf::internal::ExtensionSet::ParseField((a1 + 16), v8, v7, &google::protobuf::_FieldOptions_default_instance_, (a1 + 8), a3);
          }

          v51 = v40;
          if (!v40)
          {
LABEL_97:
            v51 = 0;
            goto LABEL_2;
          }

          goto LABEL_79;
        }

        if (v9 == 2)
        {
          if (v8 != 16)
          {
            goto LABEL_69;
          }

          v5 |= 2u;
          v36 = (v7 + 1);
          v35 = *v7;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_68;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if ((v37 & 0x80000000) == 0)
          {
            v36 = (v7 + 2);
LABEL_68:
            v51 = v36;
            *(a1 + 76) = v35 != 0;
            goto LABEL_79;
          }

          v49 = google::protobuf::internal::VarintParseSlow64(v7, v35);
          v51 = v49;
          *(a1 + 76) = v50 != 0;
          if (!v49)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v9 != 3 || v8 != 24)
          {
            goto LABEL_69;
          }

          v5 |= 8u;
          v15 = (v7 + 1);
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if ((v16 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_28:
            v51 = v15;
            *(a1 + 78) = v14 != 0;
            goto LABEL_79;
          }

          v47 = google::protobuf::internal::VarintParseSlow64(v7, v14);
          v51 = v47;
          *(a1 + 78) = v48 != 0;
          if (!v47)
          {
            goto LABEL_97;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 9)
        {
          if (v9 == 10)
          {
            if (v8 != 80)
            {
              goto LABEL_69;
            }

            v5 |= 0x10u;
            v33 = (v7 + 1);
            v32 = *v7;
            if ((v32 & 0x8000000000000000) == 0)
            {
              goto LABEL_63;
            }

            v34 = *v33;
            v32 = (v34 << 7) + v32 - 128;
            if ((v34 & 0x80000000) == 0)
            {
              v33 = (v7 + 2);
LABEL_63:
              v51 = v33;
              *(a1 + 79) = v32 != 0;
              goto LABEL_79;
            }

            v45 = google::protobuf::internal::VarintParseSlow64(v7, v32);
            v51 = v45;
            *(a1 + 79) = v46 != 0;
            if (!v45)
            {
              goto LABEL_97;
            }

            goto LABEL_79;
          }

          if (v9 != 999 || v8 != 58)
          {
            goto LABEL_69;
          }

          v17 = (v7 - 2);
          while (2)
          {
            v18 = (v17 + 2);
            v51 = (v17 + 2);
            v19 = *(a1 + 64);
            if (!v19)
            {
              v20 = *(a1 + 60);
              goto LABEL_35;
            }

            v24 = *(a1 + 56);
            v20 = *v19;
            if (v24 >= *v19)
            {
              if (v20 == *(a1 + 60))
              {
LABEL_35:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v20 + 1);
                v19 = *(a1 + 64);
                v20 = *v19;
              }

              *v19 = v20 + 1;
              v21 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(a1 + 48));
              v22 = *(a1 + 56);
              v23 = *(a1 + 64) + 8 * v22;
              *(a1 + 56) = v22 + 1;
              *(v23 + 8) = v21;
              v18 = v51;
            }

            else
            {
              *(a1 + 56) = v24 + 1;
              v21 = *&v19[2 * v24 + 2];
            }

            v17 = sub_100162948(a3, v21, v18);
            v51 = v17;
            if (!v17)
            {
              goto LABEL_97;
            }

            if (*a3 <= v17 || *v17 != 16058)
            {
              goto LABEL_79;
            }

            continue;
          }
        }

        if (v9 != 5)
        {
          if (v9 == 6 && v8 == 48)
          {
            v11 = (v7 + 1);
            v10 = *v7;
            if ((v10 & 0x8000000000000000) != 0)
            {
              v12 = *v11;
              v10 = (v12 << 7) + v10 - 128;
              if (v12 < 0)
              {
                v51 = google::protobuf::internal::VarintParseSlow64(v7, v10);
                if (!v51)
                {
                  goto LABEL_97;
                }

                goto LABEL_16;
              }

              v11 = (v7 + 2);
            }

            v51 = v11;
LABEL_16:
            if (v10 > 2)
            {
              sub_100156D98((a1 + 8));
            }

            else
            {
              *(a1 + 40) |= 0x20u;
              *(a1 + 80) = v10;
            }

            goto LABEL_79;
          }

          goto LABEL_69;
        }

        if (v8 != 40)
        {
          goto LABEL_69;
        }

        v5 |= 4u;
        v30 = (v7 + 1);
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_58;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v30 = (v7 + 2);
LABEL_58:
          v51 = v30;
          *(a1 + 77) = v29 != 0;
          goto LABEL_79;
        }

        v43 = google::protobuf::internal::VarintParseSlow64(v7, v29);
        v51 = v43;
        *(a1 + 77) = v44 != 0;
        if (!v43)
        {
          goto LABEL_97;
        }
      }

LABEL_79:
      if (sub_1000313B0(a3, &v51, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v51 + 2);
LABEL_6:
    v51 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v51;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FieldOptions::_InternalSerialize(google::protobuf::FieldOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(this + 18);
    *v4 = 8;
    if (v19 > 0x7F)
    {
      v4[1] = v19 | 0x80;
      v20 = v19 >> 7;
      if (v19 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v20 | 0x80;
          v21 = v20 >> 7;
          ++v4;
          v22 = v20 >> 14;
          v20 >>= 7;
        }

        while (v22);
        *(v4 - 1) = v21;
        if ((v6 & 2) != 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4[2] = v20;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v4[1] = v19;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_3:
    if ((v6 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_35:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 76);
  *v4 = 16;
  v4[1] = v23;
  v4 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(this + 78);
  *v4 = 24;
  v4[1] = v24;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 77);
  *v4 = 40;
  v4[1] = v25;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

LABEL_44:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(this + 20);
  *v4 = 48;
  if (v26 > 0x7F)
  {
    v4[1] = v26 | 0x80;
    v27 = v26 >> 7;
    if (v26 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v27 | 0x80;
        v28 = v27 >> 7;
        ++v4;
        v29 = v27 >> 14;
        v27 >>= 7;
      }

      while (v29);
      *(v4 - 1) = v28;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4[2] = v27;
      v4 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v4[1] = v26;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 79);
  *v4 = 80;
  v4[1] = v7;
  v4 += 2;
LABEL_10:
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
      *v4 = 16058;
      v11 = *(v10 + 5);
      if (v11 > 0x7F)
      {
        v4[2] = v11 | 0x80;
        v13 = v11 >> 7;
        if (v11 >> 14)
        {
          v12 = v4 + 4;
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
          v4[3] = v13;
          v12 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v11;
        v12 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v10, v12, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v18 = *(this + 1);
  if (v18)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v18 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v17);
  }

  return result;
}

char *google::protobuf::FieldOptions::ByteSizeLong(google::protobuf::FieldOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 14);
  v4 = (v2 + 2 * v3);
  v5 = *(this + 8);
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
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      v11 = *(this + 18);
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 11;
      }

      v4 = (v4 + v13);
    }

    v4 = (v4 + ((*(this + 10) >> 1) & 2) + (*(this + 10) & 2) + ((*(this + 10) >> 2) & 2) + ((*(this + 10) >> 3) & 2u));
    if ((v10 & 0x20) != 0)
    {
      v14 = *(this + 20);
      v15 = ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = 11;
      }

      v4 = (v4 + v16);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 11);
  }

  else
  {
    *(this + 11) = v4;
    return v4;
  }
}

void google::protobuf::FieldOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::FieldOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::FieldOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::FieldOptions::Clear(this);

    google::protobuf::FieldOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::FieldOptions::CopyFrom(google::protobuf::FieldOptions *this, const google::protobuf::FieldOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::FieldOptions::Clear(this);

    google::protobuf::FieldOptions::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::FieldOptions::GetMetadata(google::protobuf::FieldOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[30];
  v2 = off_1001EA190[31];
  return result;
}

uint64_t google::protobuf::OneofOptions::OneofOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D0000;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_OneofOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_OneofOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return a1;
}

void sub_1000E63D4(_Unwind_Exception *a1)
{
  sub_1000EDFDC(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void google::protobuf::OneofOptions::~OneofOptions(google::protobuf::OneofOptions *this)
{
  sub_10002F4C4(this + 1);
  sub_1000EDFDC(this + 5);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::OneofOptions::~OneofOptions(this);

  operator delete();
}

void *google::protobuf::OneofOptions::default_instance(google::protobuf::OneofOptions *this)
{
  if (atomic_load_explicit(scc_info_OneofOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_OneofOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_OneofOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::OneofOptions::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v22 = a2;
  if ((sub_1000313B0(a3, &v22, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = (v22 + 1);
      v6 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v6 = v6 + (*v5 << 7) - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, v6);
      v22 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
LABEL_6:
      if (v6 == 7994)
      {
        v10 = (v5 - 2);
        while (1)
        {
          v11 = (v10 + 2);
          v22 = (v10 + 2);
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
          v14 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(a1 + 40));
          v15 = *(a1 + 48);
          v16 = *(a1 + 56) + 8 * v15;
          *(a1 + 48) = v15 + 1;
          *(v16 + 8) = v14;
          v11 = v22;
LABEL_20:
          v10 = sub_100162948(a3, v14, v11);
          v22 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 16058)
          {
            goto LABEL_30;
          }
        }

        v13 = *(a1 + 52);
LABEL_16:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v13 + 1);
        v12 = *(a1 + 56);
        v13 = *v12;
        goto LABEL_17;
      }

      if (v6)
      {
        v7 = (v6 & 7) == 4;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        a3[10].i32[0] = v6 - 1;
        return v22;
      }

      v8 = v6;
      if (v6 >> 6 < 0x7D)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v19 = ((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v19 = sub_100031428((a1 + 8), v6, v5);
          v5 = v22;
        }

        v9 = google::protobuf::internal::UnknownFieldParse(v8, v19, v5);
      }

      else
      {
        v9 = google::protobuf::internal::ExtensionSet::ParseField((a1 + 16), v6, v5, &google::protobuf::_OneofOptions_default_instance_, (a1 + 8), a3);
      }

      v22 = v9;
      if (!v9)
      {
        return 0;
      }

LABEL_30:
      if (sub_1000313B0(a3, &v22, a3[11].i32[1]))
      {
        return v22;
      }
    }

    v5 = (v22 + 2);
LABEL_5:
    v22 = v5;
    goto LABEL_6;
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *google::protobuf::OneofOptions::_InternalSerialize(google::protobuf::OneofOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 12);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 7) + 8 * i + 8);
      *a2 = 16058;
      v9 = *(v8 + 5);
      if (v9 > 0x7F)
      {
        a2[2] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 4;
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
          a2[3] = v11;
          v10 = a2 + 4;
        }
      }

      else
      {
        a2[2] = v9;
        v10 = a2 + 3;
      }

      a2 = google::protobuf::UninterpretedOption::_InternalSerialize(v8, v10, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, a2, a3);
  v16 = *(this + 1);
  if (v16)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v15);
  }

  return result;
}

char *google::protobuf::OneofOptions::ByteSizeLong(google::protobuf::OneofOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 12);
  v4 = (v2 + 2 * v3);
  v5 = *(this + 7);
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
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 16);
  }

  else
  {
    *(this + 16) = v4;
    return v4;
  }
}

void google::protobuf::OneofOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::OneofOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::OneofOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::OneofOptions::Clear(this);

    google::protobuf::OneofOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::OneofOptions::CopyFrom(google::protobuf::OneofOptions *this, const google::protobuf::OneofOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::OneofOptions::Clear(this);

    google::protobuf::OneofOptions::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::OneofOptions::GetMetadata(google::protobuf::OneofOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[32];
  v2 = off_1001EA190[33];
  return result;
}

uint64_t google::protobuf::EnumOptions::EnumOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D00B0;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 72) = 0;
  return a1;
}

void sub_1000E6AC8(_Unwind_Exception *a1)
{
  sub_1000EDFDC(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void google::protobuf::EnumOptions::~EnumOptions(google::protobuf::EnumOptions *this)
{
  sub_10002F4C4(this + 1);
  sub_1000EDFDC(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::EnumOptions::~EnumOptions(this);

  operator delete();
}

void *google::protobuf::EnumOptions::default_instance(google::protobuf::EnumOptions *this)
{
  if (atomic_load_explicit(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_EnumOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::EnumOptions::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v35 = a2;
  v5 = 0;
  if ((sub_1000313B0(a3, &v35, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v35 + 1);
      v8 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v8 + (*v7 << 7) - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, v8);
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_56;
      }

      v7 = TagFallback;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 == 999)
      {
        if (v8 != 58)
        {
LABEL_13:
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
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          v12 = v8;
          if (v8 >> 6 < 0x7D)
          {
            v29 = *(a1 + 8);
            if (v29)
            {
              v30 = ((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v30 = sub_100031428((a1 + 8), v8, v7);
              v7 = v35;
            }

            v13 = google::protobuf::internal::UnknownFieldParse(v12, v30, v7);
          }

          else
          {
            v13 = google::protobuf::internal::ExtensionSet::ParseField((a1 + 16), v8, v7, &google::protobuf::_EnumOptions_default_instance_, (a1 + 8), a3);
          }

          v35 = v13;
          if (!v13)
          {
LABEL_56:
            v35 = 0;
            goto LABEL_2;
          }

          goto LABEL_48;
        }

        v17 = (v7 - 2);
        while (2)
        {
          v18 = (v17 + 2);
          v35 = (v17 + 2);
          v19 = *(a1 + 64);
          if (!v19)
          {
            v20 = *(a1 + 60);
            goto LABEL_28;
          }

          v24 = *(a1 + 56);
          v20 = *v19;
          if (v24 >= *v19)
          {
            if (v20 == *(a1 + 60))
            {
LABEL_28:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v20 + 1);
              v19 = *(a1 + 64);
              v20 = *v19;
            }

            *v19 = v20 + 1;
            v21 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(a1 + 48));
            v22 = *(a1 + 56);
            v23 = *(a1 + 64) + 8 * v22;
            *(a1 + 56) = v22 + 1;
            *(v23 + 8) = v21;
            v18 = v35;
          }

          else
          {
            *(a1 + 56) = v24 + 1;
            v21 = *&v19[2 * v24 + 2];
          }

          v17 = sub_100162948(a3, v21, v18);
          v35 = v17;
          if (!v17)
          {
            goto LABEL_56;
          }

          if (*a3 <= v17 || *v17 != 16058)
          {
            goto LABEL_48;
          }

          continue;
        }
      }

      if (v9 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_23:
          v35 = v15;
          *(a1 + 73) = v14 != 0;
          goto LABEL_48;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v14);
        v35 = v31;
        *(a1 + 73) = v32 != 0;
        if (!v31)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v9 != 2 || v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 1u;
        v26 = (v7 + 1);
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_41;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_41:
          v35 = v26;
          *(a1 + 72) = v25 != 0;
          goto LABEL_48;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v7, v25);
        v35 = v33;
        *(a1 + 72) = v34 != 0;
        if (!v33)
        {
          goto LABEL_56;
        }
      }

LABEL_48:
      if (sub_1000313B0(a3, &v35, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v35 + 2);
LABEL_6:
    v35 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v35;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumOptions::_InternalSerialize(google::protobuf::EnumOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 72);
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 73);
    *v4 = 24;
    v4[1] = v8;
    v4 += 2;
  }

  v9 = *(this + 14);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        v4[2] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = v4 + 4;
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
          v4[3] = v14;
          v13 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v12;
        v13 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v11, v13, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v19 = *(this + 1);
  if (v19)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v18);
  }

  return result;
}

char *google::protobuf::EnumOptions::ByteSizeLong(google::protobuf::EnumOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 14);
  v4 = (v2 + 2 * v3);
  v5 = *(this + 8);
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
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  if ((*(this + 10) & 3) != 0)
  {
    v10 = (v4 + 2 * (*(this + 10) & 1) + (*(this + 10) & 2));
  }

  else
  {
    v10 = v4;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v10, this + 11);
  }

  else
  {
    *(this + 11) = v10;
    return v10;
  }
}

void google::protobuf::EnumOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::EnumOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumOptions::Clear(this);

    google::protobuf::EnumOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::EnumOptions::CopyFrom(google::protobuf::EnumOptions *this, const google::protobuf::EnumOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumOptions::Clear(this);

    google::protobuf::EnumOptions::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::EnumOptions::GetMetadata(google::protobuf::EnumOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[34];
  v2 = off_1001EA190[35];
  return result;
}

uint64_t google::protobuf::EnumValueOptions::EnumValueOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D0160;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 72) = 0;
  return a1;
}

void sub_1000E734C(_Unwind_Exception *a1)
{
  sub_1000EDFDC(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void google::protobuf::EnumValueOptions::~EnumValueOptions(google::protobuf::EnumValueOptions *this)
{
  sub_10002F4C4(this + 1);
  sub_1000EDFDC(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::EnumValueOptions::~EnumValueOptions(this);

  operator delete();
}

void *google::protobuf::EnumValueOptions::default_instance(google::protobuf::EnumValueOptions *this)
{
  if (atomic_load_explicit(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumValueOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_EnumValueOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::EnumValueOptions::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_1000313B0(a3, &v29, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v29 + 1);
      v8 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v8 + (*v7 << 7) - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, v8);
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_48;
      }

      v7 = TagFallback;
LABEL_7:
      if (v8 >> 3 == 999)
      {
        if (v8 != 58)
        {
LABEL_12:
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
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          v11 = v8;
          if (v8 >> 6 < 0x7D)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v25 = ((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v25 = sub_100031428((a1 + 8), v8, v7);
              v7 = v29;
            }

            v12 = google::protobuf::internal::UnknownFieldParse(v11, v25, v7);
          }

          else
          {
            v12 = google::protobuf::internal::ExtensionSet::ParseField((a1 + 16), v8, v7, &google::protobuf::_EnumValueOptions_default_instance_, (a1 + 8), a3);
          }

          v29 = v12;
          if (!v12)
          {
LABEL_48:
            v29 = 0;
            goto LABEL_2;
          }

          goto LABEL_40;
        }

        v13 = (v7 - 2);
        while (2)
        {
          v14 = (v13 + 2);
          v29 = (v13 + 2);
          v15 = *(a1 + 64);
          if (!v15)
          {
            v16 = *(a1 + 60);
            goto LABEL_22;
          }

          v20 = *(a1 + 56);
          v16 = *v15;
          if (v20 >= *v15)
          {
            if (v16 == *(a1 + 60))
            {
LABEL_22:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v16 + 1);
              v15 = *(a1 + 64);
              v16 = *v15;
            }

            *v15 = v16 + 1;
            v17 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(a1 + 48));
            v18 = *(a1 + 56);
            v19 = *(a1 + 64) + 8 * v18;
            *(a1 + 56) = v18 + 1;
            *(v19 + 8) = v17;
            v14 = v29;
          }

          else
          {
            *(a1 + 56) = v20 + 1;
            v17 = *&v15[2 * v20 + 2];
          }

          v13 = sub_100162948(a3, v17, v14);
          v29 = v13;
          if (!v13)
          {
            goto LABEL_48;
          }

          if (*a3 <= v13 || *v13 != 16058)
          {
            goto LABEL_40;
          }

          continue;
        }
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v22 = (v7 + 1);
      v21 = *v7;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = (v7 + 2);
LABEL_35:
        v29 = v22;
        *(a1 + 72) = v21 != 0;
        v5 = 1;
        goto LABEL_40;
      }

      v27 = google::protobuf::internal::VarintParseSlow64(v7, v21);
      v29 = v27;
      *(a1 + 72) = v28 != 0;
      v5 = 1;
      if (!v27)
      {
        goto LABEL_48;
      }

LABEL_40:
      if (sub_1000313B0(a3, &v29, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v29 + 2);
LABEL_6:
    v29 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v29;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumValueOptions::_InternalSerialize(google::protobuf::EnumValueOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 40))
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 72);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
  }

  v7 = *(this + 14);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[2] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 4;
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
          v4[3] = v12;
          v11 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v10;
        v11 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v9, v11, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v17 = *(this + 1);
  if (v17)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v16);
  }

  return result;
}

char *google::protobuf::EnumValueOptions::ByteSizeLong(google::protobuf::EnumValueOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 14);
  v4 = v2 + 2 * v3;
  v5 = *(this + 8);
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
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v4 += &v9[(9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6];
      v7 -= 8;
    }

    while (v7);
  }

  v10 = 2 * (*(this + 10) & 1);
  v11 = (v4 + v10);
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v11, this + 11);
  }

  else
  {
    *(this + 11) = v11;
    return (v4 + v10);
  }
}

void google::protobuf::EnumValueOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumValueOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::EnumValueOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumValueOptions::Clear(this);

    google::protobuf::EnumValueOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::EnumValueOptions::CopyFrom(google::protobuf::EnumValueOptions *this, const google::protobuf::EnumValueOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumValueOptions::Clear(this);

    google::protobuf::EnumValueOptions::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::EnumValueOptions::GetMetadata(google::protobuf::EnumValueOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[36];
  v2 = off_1001EA190[37];
  return result;
}

uint64_t google::protobuf::ServiceOptions::ServiceOptions(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D0210;
  *(a1 + 8) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(a1 + 16, a2);
  *(a1 + 48) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 72) = 0;
  return a1;
}

void sub_1000E7B18(_Unwind_Exception *a1)
{
  sub_1000EDFDC(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void google::protobuf::ServiceOptions::~ServiceOptions(google::protobuf::ServiceOptions *this)
{
  sub_10002F4C4(this + 1);
  sub_1000EDFDC(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::ServiceOptions::~ServiceOptions(this);

  operator delete();
}

void *google::protobuf::ServiceOptions::default_instance(google::protobuf::ServiceOptions *this)
{
  if (atomic_load_explicit(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ServiceOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_ServiceOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::ServiceOptions::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_1000313B0(a3, &v29, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v29 + 1);
      v8 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v8 + (*v7 << 7) - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, v8);
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_48;
      }

      v7 = TagFallback;
LABEL_7:
      if (v8 >> 3 == 999)
      {
        if (v8 != 58)
        {
LABEL_12:
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
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          v11 = v8;
          if (v8 >> 6 < 0x7D)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v25 = ((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v25 = sub_100031428((a1 + 8), v8, v7);
              v7 = v29;
            }

            v12 = google::protobuf::internal::UnknownFieldParse(v11, v25, v7);
          }

          else
          {
            v12 = google::protobuf::internal::ExtensionSet::ParseField((a1 + 16), v8, v7, &google::protobuf::_ServiceOptions_default_instance_, (a1 + 8), a3);
          }

          v29 = v12;
          if (!v12)
          {
LABEL_48:
            v29 = 0;
            goto LABEL_2;
          }

          goto LABEL_40;
        }

        v13 = (v7 - 2);
        while (2)
        {
          v14 = (v13 + 2);
          v29 = (v13 + 2);
          v15 = *(a1 + 64);
          if (!v15)
          {
            v16 = *(a1 + 60);
            goto LABEL_22;
          }

          v20 = *(a1 + 56);
          v16 = *v15;
          if (v20 >= *v15)
          {
            if (v16 == *(a1 + 60))
            {
LABEL_22:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v16 + 1);
              v15 = *(a1 + 64);
              v16 = *v15;
            }

            *v15 = v16 + 1;
            v17 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(a1 + 48));
            v18 = *(a1 + 56);
            v19 = *(a1 + 64) + 8 * v18;
            *(a1 + 56) = v18 + 1;
            *(v19 + 8) = v17;
            v14 = v29;
          }

          else
          {
            *(a1 + 56) = v20 + 1;
            v17 = *&v15[2 * v20 + 2];
          }

          v13 = sub_100162948(a3, v17, v14);
          v29 = v13;
          if (!v13)
          {
            goto LABEL_48;
          }

          if (*a3 <= v13 || *v13 != 16058)
          {
            goto LABEL_40;
          }

          continue;
        }
      }

      if (v8 >> 3 != 33 || v8 != 8)
      {
        goto LABEL_12;
      }

      v22 = (v7 + 1);
      v21 = *v7;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_35;
      }

      v23 = *v22;
      v21 = (v23 << 7) + v21 - 128;
      if ((v23 & 0x80000000) == 0)
      {
        v22 = (v7 + 2);
LABEL_35:
        v29 = v22;
        *(a1 + 72) = v21 != 0;
        v5 = 1;
        goto LABEL_40;
      }

      v27 = google::protobuf::internal::VarintParseSlow64(v7, v21);
      v29 = v27;
      *(a1 + 72) = v28 != 0;
      v5 = 1;
      if (!v27)
      {
        goto LABEL_48;
      }

LABEL_40:
      if (sub_1000313B0(a3, &v29, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v29 + 2);
LABEL_6:
    v29 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v29;
}

const google::protobuf::UnknownFieldSet *google::protobuf::ServiceOptions::_InternalSerialize(google::protobuf::ServiceOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if (*(this + 40))
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 72);
    *v4 = 648;
    v4[2] = v6;
    v4 += 3;
  }

  v7 = *(this + 14);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v9 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v10 = *(v9 + 5);
      if (v10 > 0x7F)
      {
        v4[2] = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v11 = v4 + 4;
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
          v4[3] = v12;
          v11 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v10;
        v11 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v9, v11, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v17 = *(this + 1);
  if (v17)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v16);
  }

  return result;
}

char *google::protobuf::ServiceOptions::ByteSizeLong(google::protobuf::ServiceOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 14);
  v4 = v2 + 2 * v3;
  v5 = *(this + 8);
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
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v4 += &v9[(9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6];
      v7 -= 8;
    }

    while (v7);
  }

  if (*(this + 40))
  {
    v10 = (v4 + 3);
  }

  else
  {
    v10 = v4;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v10, this + 11);
  }

  else
  {
    *(this + 11) = v10;
    return v10;
  }
}

void google::protobuf::ServiceOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::ServiceOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::ServiceOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::ServiceOptions::Clear(this);

    google::protobuf::ServiceOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::ServiceOptions::CopyFrom(google::protobuf::ServiceOptions *this, const google::protobuf::ServiceOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::ServiceOptions::Clear(this);

    google::protobuf::ServiceOptions::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::ServiceOptions::GetMetadata(google::protobuf::ServiceOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[38];
  v2 = off_1001EA190[39];
  return result;
}

void *google::protobuf::MethodOptions::MethodOptions(void *a1, uint64_t a2)
{
  *a1 = off_1001D02C0;
  a1[1] = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((a1 + 2), a2);
  a1[6] = a2;
  a1[5] = 0;
  a1[7] = 0;
  a1[8] = 0;
  if (atomic_load_explicit(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  a1[9] = 0;
  return a1;
}

void sub_1000E82E8(_Unwind_Exception *a1)
{
  sub_1000EDFDC(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

void google::protobuf::MethodOptions::~MethodOptions(google::protobuf::MethodOptions *this)
{
  sub_10002F4C4(this + 1);
  sub_1000EDFDC(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::MethodOptions::~MethodOptions(this);

  operator delete();
}

void *google::protobuf::MethodOptions::default_instance(google::protobuf::MethodOptions *this)
{
  if (atomic_load_explicit(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MethodOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_MethodOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::MethodOptions::_InternalParse(uint64_t a1, google::protobuf::internal *a2, int32x2_t *a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_1000313B0(a3, &v33, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = (v33 + 1);
      v8 = *v33;
      if ((*v33 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v8 + (*v7 << 7) - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, v8);
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_59;
      }

      v7 = TagFallback;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 == 999)
      {
        if (v8 != 58)
        {
          goto LABEL_13;
        }

        v17 = (v7 - 2);
        while (2)
        {
          v18 = (v17 + 2);
          v33 = (v17 + 2);
          v19 = *(a1 + 64);
          if (!v19)
          {
            v20 = *(a1 + 60);
            goto LABEL_30;
          }

          v24 = *(a1 + 56);
          v20 = *v19;
          if (v24 >= *v19)
          {
            if (v20 == *(a1 + 60))
            {
LABEL_30:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48), v20 + 1);
              v19 = *(a1 + 64);
              v20 = *v19;
            }

            *v19 = v20 + 1;
            v21 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(a1 + 48));
            v22 = *(a1 + 56);
            v23 = *(a1 + 64) + 8 * v22;
            *(a1 + 56) = v22 + 1;
            *(v23 + 8) = v21;
            v18 = v33;
          }

          else
          {
            *(a1 + 56) = v24 + 1;
            v21 = *&v19[2 * v24 + 2];
          }

          v17 = sub_100162948(a3, v21, v18);
          v33 = v17;
          if (!v17)
          {
            goto LABEL_59;
          }

          if (*a3 <= v17 || *v17 != 16058)
          {
            goto LABEL_50;
          }

          continue;
        }
      }

      if (v9 == 34)
      {
        if (v8 == 16)
        {
          v15 = (v7 + 1);
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_23;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if (v16 < 0)
          {
            v33 = google::protobuf::internal::VarintParseSlow64(v7, v14);
            if (!v33)
            {
              goto LABEL_59;
            }
          }

          else
          {
            v15 = (v7 + 2);
LABEL_23:
            v33 = v15;
          }

          if (v14 > 2)
          {
            sub_100163414((a1 + 8));
          }

          else
          {
            *(a1 + 40) |= 2u;
            *(a1 + 76) = v14;
          }

          goto LABEL_50;
        }

LABEL_13:
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
          a3[10].i32[0] = v8 - 1;
          goto LABEL_2;
        }

        v12 = v8;
        if (v8 >> 6 < 0x7D)
        {
          v29 = *(a1 + 8);
          if (v29)
          {
            v30 = ((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v30 = sub_100031428((a1 + 8), v8, v7);
            v7 = v33;
          }

          v13 = google::protobuf::internal::UnknownFieldParse(v12, v30, v7);
        }

        else
        {
          v13 = google::protobuf::internal::ExtensionSet::ParseField((a1 + 16), v8, v7, google::protobuf::_MethodOptions_default_instance_, (a1 + 8), a3);
        }

        v33 = v13;
        if (!v13)
        {
LABEL_59:
          v33 = 0;
          goto LABEL_2;
        }

        goto LABEL_50;
      }

      if (v9 != 33 || v8 != 8)
      {
        goto LABEL_13;
      }

      v26 = (v7 + 1);
      v25 = *v7;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = (v7 + 2);
LABEL_43:
        v33 = v26;
        *(a1 + 72) = v25 != 0;
        v5 = 1;
        goto LABEL_50;
      }

      v31 = google::protobuf::internal::VarintParseSlow64(v7, v25);
      v33 = v31;
      *(a1 + 72) = v32 != 0;
      v5 = 1;
      if (!v31)
      {
        goto LABEL_59;
      }

LABEL_50:
      if (sub_1000313B0(a3, &v33, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = (v33 + 2);
LABEL_6:
    v33 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v33;
}

const google::protobuf::UnknownFieldSet *google::protobuf::MethodOptions::_InternalSerialize(google::protobuf::MethodOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 72);
    *v4 = 648;
    v4[2] = v7;
    v4 += 3;
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(this + 19);
    *v4 = 656;
    if (v8 > 0x7F)
    {
      v4[2] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 4;
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
        v4[3] = v9;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v8;
      v4 += 3;
    }
  }

  v12 = *(this + 14);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v14 = *(*(this + 8) + 8 * i + 8);
      *v4 = 16058;
      v15 = *(v14 + 5);
      if (v15 > 0x7F)
      {
        v4[2] = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v16 = v4 + 4;
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
          v4[3] = v17;
          v16 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v15;
        v16 = v4 + 3;
      }

      v4 = google::protobuf::UninterpretedOption::_InternalSerialize(v14, v16, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 1000, 0x20000000, v4, a3);
  v22 = *(this + 1);
  if (v22)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v21);
  }

  return result;
}

char *google::protobuf::MethodOptions::ByteSizeLong(google::protobuf::MethodOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 14);
  v4 = (v2 + 2 * v3);
  v5 = *(this + 8);
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
      v9 = google::protobuf::UninterpretedOption::ByteSizeLong(v8);
      v4 = (v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6));
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(this + 10);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v4 = (v4 + 3);
    }

    if ((v10 & 2) != 0)
    {
      v11 = *(this + 19);
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v11 >= 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 12;
      }

      v4 = (v4 + v13);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 11);
  }

  else
  {
    *(this + 11) = v4;
    return v4;
  }
}

void google::protobuf::MethodOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::MethodOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::MethodOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::MethodOptions::Clear(this);

    google::protobuf::MethodOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::MethodOptions::CopyFrom(google::protobuf::MethodOptions *this, const google::protobuf::MethodOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::MethodOptions::Clear(this);

    google::protobuf::MethodOptions::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::MethodOptions::GetMetadata(google::protobuf::MethodOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[40];
  v2 = off_1001EA190[41];
  return result;
}

uint64_t google::protobuf::UninterpretedOption_NamePart::UninterpretedOption_NamePart(uint64_t a1, uint64_t a2)
{
  *a1 = off_1001D0370;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(scc_info_UninterpretedOption_NamePart_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UninterpretedOption_NamePart_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(a1 + 24) = &google::protobuf::internal::fixed_address_empty_string;
  *(a1 + 32) = 0;
  return a1;
}

void google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(google::protobuf::UninterpretedOption_NamePart *this)
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
  google::protobuf::UninterpretedOption_NamePart::~UninterpretedOption_NamePart(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption_NamePart::Clear(google::protobuf::UninterpretedOption_NamePart *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 16))
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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
  *(result + 24) = 0;
  *(result + 2) = 0;
  if (v5)
  {
    return sub_1000315EC(result, a2, a3);
  }

  return result;
}

google::protobuf::internal *google::protobuf::UninterpretedOption_NamePart::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_36;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      if (v9 >> 3 != 2)
      {
        if (v9 >> 3 == 1 && v9 == 10)
        {
          *(a1 + 16) |= 1u;
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = google::protobuf::internal::ArenaStringPtr::Mutable((a1 + 24), v19);
          v15 = google::protobuf::internal::InlineGreedyStringParser(v20, v24, a3);
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
          goto LABEL_36;
        }

        goto LABEL_28;
      }

      if (v9 != 16)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v17 = (v8 + 1);
      v16 = *v8;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v8 + 2);
LABEL_23:
        v24 = v17;
        *(a1 + 32) = v16 != 0;
        goto LABEL_28;
      }

      v22 = google::protobuf::internal::VarintParseSlow64(v8, v16);
      v24 = v22;
      *(a1 + 32) = v23 != 0;
      if (!v22)
      {
LABEL_36:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_28:
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

const google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption_NamePart::_InternalSerialize(google::protobuf::UninterpretedOption_NamePart *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_100030384(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 32);
    *v4 = 16;
    v4[1] = v7;
    v4 += 2;
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t google::protobuf::UninterpretedOption_NamePart::RequiredFieldsByteSizeFallback(google::protobuf::UninterpretedOption_NamePart *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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

  return v2 + (v1 & 2);
}

char *google::protobuf::UninterpretedOption_NamePart::ByteSizeLong(google::protobuf::UninterpretedOption_NamePart *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v5 = google::protobuf::UninterpretedOption_NamePart::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = (v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void google::protobuf::UninterpretedOption_NamePart::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::UninterpretedOption_NamePart::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::UninterpretedOption_NamePart::MergeFrom(std::string *this, const google::protobuf::UninterpretedOption_NamePart *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
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
    }

    if ((v6 & 2) != 0)
    {
      v4[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
    }

    LODWORD(v4->__r_.__value_.__r.__words[2]) |= v6;
  }

  return this;
}

void google::protobuf::UninterpretedOption_NamePart::CopyFrom(char **this, char **a2, uint64_t a3)
{
  if (a2 != this)
  {
    google::protobuf::UninterpretedOption_NamePart::Clear(this, a2, a3);

    google::protobuf::UninterpretedOption_NamePart::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::UninterpretedOption_NamePart::GetMetadata(google::protobuf::UninterpretedOption_NamePart *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_1001EA190[42];
  v2 = off_1001EA190[43];
  return result;
}

void *google::protobuf::UninterpretedOption::UninterpretedOption(void *a1, uint64_t a2)
{
  *a1 = off_1001D0420;
  a1[1] = a2;
  a1[3] = a2;
  a1[2] = 0;
  a1[4] = 0;
  a1[5] = 0;
  if (atomic_load_explicit(scc_info_UninterpretedOption_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_UninterpretedOption_google_2fprotobuf_2fdescriptor_2eproto);
  }

  a1[6] = &google::protobuf::internal::fixed_address_empty_string;
  a1[7] = &google::protobuf::internal::fixed_address_empty_string;
  a1[8] = &google::protobuf::internal::fixed_address_empty_string;
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  return a1;
}

void google::protobuf::UninterpretedOption::~UninterpretedOption(google::protobuf::UninterpretedOption *this)
{
  v2 = *(this + 6);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete();
  }

  v3 = *(this + 7);
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  v4 = *(this + 8);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  sub_10002F4C4(this + 1);
  sub_1000EE468(this + 3);
}

{
  google::protobuf::UninterpretedOption::~UninterpretedOption(this);

  operator delete();
}

google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption::Clear(google::protobuf::UnknownFieldSet *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = (*(this + 5) + 8);
    do
    {
      v6 = *v5++;
      this = google::protobuf::UninterpretedOption_NamePart::Clear(v6, a2, a3);
      --v4;
    }

    while (v4);
    *(v3 + 32) = 0;
  }

  v7 = *(v3 + 16);
  if ((v7 & 7) != 0)
  {
    if ((v7 & 1) == 0)
    {
      if ((v7 & 2) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      v9 = *(v3 + 56) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v9 + 23) < 0)
      {
        **v9 = 0;
        *(v9 + 8) = 0;
        if ((v7 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *v9 = 0;
        *(v9 + 23) = 0;
        if ((v7 & 4) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_18;
    }

    v8 = *(v3 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v7 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v7 & 2) != 0)
      {
        goto LABEL_14;
      }
    }

LABEL_8:
    if ((v7 & 4) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v10 = *(v3 + 64) & 0xFFFFFFFFFFFFFFFELL;
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
  }

LABEL_21:
  if ((v7 & 0x38) != 0)
  {
    *(v3 + 72) = 0;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
  }

  v12 = *(v3 + 8);
  v11 = v3 + 8;
  *(v11 + 8) = 0;
  if (v12)
  {

    return sub_1000315EC(v11, a2, a3);
  }

  return this;
}

google::protobuf::internal *google::protobuf::UninterpretedOption::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v6 = 0;
  if ((sub_1000313B0(a3, &v38, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v38 + 1);
      v9 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v10 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_73;
      }

      v8 = TagFallback;
      v9 = v5;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 4)
      {
        if (v11 == 2)
        {
          if (v9 != 18)
          {
            goto LABEL_57;
          }

          v18 = (v8 - 1);
          while (2)
          {
            v19 = (v18 + 1);
            v38 = (v18 + 1);
            v20 = *(a1 + 40);
            if (!v20)
            {
              v21 = *(a1 + 36);
              goto LABEL_33;
            }

            v25 = *(a1 + 32);
            v21 = *v20;
            if (v25 >= *v20)
            {
              if (v21 == *(a1 + 36))
              {
LABEL_33:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v21 + 1);
                v20 = *(a1 + 40);
                v21 = *v20;
              }

              *v20 = v21 + 1;
              v22 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption_NamePart>(*(a1 + 24));
              v23 = *(a1 + 32);
              v24 = *(a1 + 40) + 8 * v23;
              *(a1 + 32) = v23 + 1;
              *(v24 + 8) = v22;
              v19 = v38;
            }

            else
            {
              *(a1 + 32) = v25 + 1;
              v22 = *&v20[2 * v25 + 2];
            }

            v18 = sub_100163168(a3, v22, v19);
            v38 = v18;
            if (!v18)
            {
              goto LABEL_73;
            }

            if (*a3 <= v18 || *v18 != 18)
            {
              goto LABEL_65;
            }

            continue;
          }
        }

        if (v11 == 3)
        {
          if (v9 == 26)
          {
            *(a1 + 16) |= 1u;
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = (a1 + 48);
LABEL_56:
            v29 = google::protobuf::internal::ArenaStringPtr::Mutable(v16, v15);
            v30 = google::protobuf::internal::InlineGreedyStringParser(v29, v38, a3);
LABEL_64:
            v38 = v30;
            if (!v30)
            {
              goto LABEL_73;
            }

            goto LABEL_65;
          }

LABEL_57:
          if (v9)
          {
            v31 = (v9 & 7) == 4;
          }

          else
          {
            v31 = 1;
          }

          if (v31)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v33 = ((v32 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v33 = sub_100031428((a1 + 8), v5, v8);
            v8 = v38;
          }

          v30 = google::protobuf::internal::UnknownFieldParse(v9, v33, v8);
          goto LABEL_64;
        }

        if (v11 != 4 || v9 != 32)
        {
          goto LABEL_57;
        }

        v6 |= 8u;
        v13 = (v8 + 1);
        v12 = *v8;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v8 + 2);
LABEL_20:
          v38 = v13;
          *(a1 + 72) = v12;
          goto LABEL_65;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v8, v12);
        v38 = v36;
        *(a1 + 72) = v37;
        if (!v36)
        {
LABEL_73:
          v38 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v9 >> 3 > 6)
        {
          if (v11 == 7)
          {
            if (v9 == 58)
            {
              *(a1 + 16) |= 2u;
              v15 = *(a1 + 8);
              if (v15)
              {
                v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
              }

              v16 = (a1 + 56);
              goto LABEL_56;
            }
          }

          else if (v11 == 8 && v9 == 66)
          {
            *(a1 + 16) |= 4u;
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = (a1 + 64);
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        if (v11 == 5)
        {
          if (v9 != 40)
          {
            goto LABEL_57;
          }

          v6 |= 0x10u;
          v27 = (v8 + 1);
          v26 = *v8;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_47;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if ((v28 & 0x80000000) == 0)
          {
            v27 = (v8 + 2);
LABEL_47:
            v38 = v27;
            *(a1 + 80) = v26;
            goto LABEL_65;
          }

          v34 = google::protobuf::internal::VarintParseSlow64(v8, v26);
          v38 = v34;
          *(a1 + 80) = v35;
          if (!v34)
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v11 != 6 || v9 != 49)
          {
            goto LABEL_57;
          }

          v6 |= 0x20u;
          *(a1 + 88) = *v8;
          v38 = (v8 + 8);
        }
      }

LABEL_65:
      if (sub_1000313B0(a3, &v38, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v38 + 2);
LABEL_6:
    v38 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v38;
}

const google::protobuf::UnknownFieldSet *google::protobuf::UninterpretedOption::_InternalSerialize(google::protobuf::UninterpretedOption *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
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

      a2 = google::protobuf::UninterpretedOption_NamePart::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 4);
  if (v14)
  {
    a2 = sub_100030384(a3, 3, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v14 & 8) == 0)
    {
LABEL_15:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_16;
      }

LABEL_34:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(this + 10);
      *a2 = 40;
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
          if ((v14 & 0x20) != 0)
          {
            goto LABEL_45;
          }
        }

        else
        {
          a2[2] = v22;
          a2 += 3;
          if ((v14 & 0x20) != 0)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        a2[1] = v21;
        a2 += 2;
        if ((v14 & 0x20) != 0)
        {
          goto LABEL_45;
        }
      }

LABEL_17:
      if ((v14 & 2) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_48;
    }
  }

  else if ((v14 & 8) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 9);
  *a2 = 32;
  if (v17 > 0x7F)
  {
    a2[1] = v17 | 0x80;
    v18 = v17 >> 7;
    if (v17 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++a2;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(a2 - 1) = v19;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v18;
      a2 += 3;
      if ((v14 & 0x10) != 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v17;
    a2 += 2;
    if ((v14 & 0x10) != 0)
    {
      goto LABEL_34;
    }
  }

LABEL_16:
  if ((v14 & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 11);
  *a2 = 49;
  *(a2 + 1) = v25;
  a2 += 9;
  if ((v14 & 2) == 0)
  {
LABEL_18:
    if ((v14 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_48:
  a2 = sub_100030384(a3, 7, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v14 & 4) != 0)
  {
LABEL_19:
    a2 = sub_100030384(a3, 8, (*(this + 8) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

LABEL_20:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a2);
}

char *google::protobuf::UninterpretedOption::ByteSizeLong(google::protobuf::UninterpretedOption *this)
{
  v2 = *(this + 8);
  v3 = *(this + 5);
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
      v7 = google::protobuf::UninterpretedOption_NamePart::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 4);
  if ((v8 & 0x3F) == 0)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v10 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 = (v2 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v13 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  v2 = (v2 + v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_26:
  v16 = *(this + 8) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v2 = (v2 + v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_29:
  v2 = (v2 + ((9 * (__clz(*(this + 9) | 1) ^ 0x3F) + 73) >> 6) + 1);
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    v2 = (v2 + ((9 * (__clz(*(this + 10) | 1) ^ 0x3F) + 73) >> 6) + 1);
  }

LABEL_16:
  if ((v8 & 0x20) != 0)
  {
    v2 = (v2 + 9);
  }

LABEL_18:
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

void google::protobuf::UninterpretedOption::MergeFrom(std::string *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::UninterpretedOption::MergeFrom(this, v5, v6);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

std::string *google::protobuf::UninterpretedOption::MergeFrom(std::string *this, const google::protobuf::UninterpretedOption *a2, uint64_t a3)
{
  v4 = this;
  v5 = *(a2 + 1);
  if (v5)
  {
    this = sub_1000315A0(&this->__r_.__value_.__l.__size_, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8), a3);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(&v4[1], *(a2 + 8));
    this = sub_1000EE4EC(v4 + 1, v8, v7 + 8, v6, *v4[1].__r_.__value_.__r.__words[2] - LODWORD(v4[1].__r_.__value_.__r.__words[1]));
    v9 = LODWORD(v4[1].__r_.__value_.__r.__words[1]) + v6;
    LODWORD(v4[1].__r_.__value_.__r.__words[1]) = v9;
    v10 = v4[1].__r_.__value_.__r.__words[2];
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 0x3F) != 0)
  {
    if (v11)
    {
      v12 = *(a2 + 6);
      LODWORD(v4->__r_.__value_.__r.__words[2]) |= 1u;
      size = v4->__r_.__value_.__l.__size_;
      if (size)
      {
        size = *(size & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2], v12 & 0xFFFFFFFFFFFFFFFELL, size);
      if ((v11 & 2) == 0)
      {
LABEL_9:
        if ((v11 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_22;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_9;
    }

    v14 = *(a2 + 7);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 2u;
    v15 = v4->__r_.__value_.__l.__size_;
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2].__r_.__value_.__l.__size_, v14 & 0xFFFFFFFFFFFFFFFELL, v15);
    if ((v11 & 4) == 0)
    {
LABEL_10:
      if ((v11 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_25;
    }

LABEL_22:
    v16 = *(a2 + 8);
    LODWORD(v4->__r_.__value_.__r.__words[2]) |= 4u;
    v17 = v4->__r_.__value_.__l.__size_;
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set(&v4[2].__r_.__value_.__r.__words[2], v16 & 0xFFFFFFFFFFFFFFFELL, v17);
    if ((v11 & 8) == 0)
    {
LABEL_11:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

LABEL_25:
    v4[3].__r_.__value_.__r.__words[0] = *(a2 + 9);
    if ((v11 & 0x10) == 0)
    {
LABEL_12:
      if ((v11 & 0x20) == 0)
      {
LABEL_14:
        LODWORD(v4->__r_.__value_.__r.__words[2]) |= v11;
        return this;
      }

LABEL_13:
      v4[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
      goto LABEL_14;
    }

LABEL_26:
    v4[3].__r_.__value_.__l.__size_ = *(a2 + 10);
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return this;
}