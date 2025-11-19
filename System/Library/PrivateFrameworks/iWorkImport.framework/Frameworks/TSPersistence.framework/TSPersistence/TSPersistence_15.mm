const InternalMetadata *google::protobuf::DescriptorProto::ByteSizeLong(google::protobuf::DescriptorProto *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
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
      v10 = google::protobuf::FieldDescriptorProto::ByteSizeLong(v9, a2, a3, a4);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = *(this + 8);
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
      v17 = google::protobuf::DescriptorProto::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 20);
  v19 = v12 + v18;
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
      v24 = google::protobuf::EnumDescriptorProto::ByteSizeLong(v23, a2, a3, a4);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
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
      v31 = google::protobuf::DescriptorProto_ExtensionRange::ByteSizeLong(v30, a2, a3, a4);
      v26 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
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
      v38 = google::protobuf::FieldDescriptorProto::ByteSizeLong(v37, a2, a3, a4);
      v33 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6);
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
      v45 = google::protobuf::OneofDescriptorProto::ByteSizeLong(v44, a2, a3, a4);
      v40 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6);
      v43 -= 8;
    }

    while (v43);
  }

  v46 = *(this + 44);
  v47 = v40 + v46;
  v48 = *(this + 23);
  if (v48)
  {
    v49 = (v48 + 8);
  }

  else
  {
    v49 = 0;
  }

  if (v46)
  {
    v50 = 8 * v46;
    do
    {
      v51 = *v49++;
      v52 = google::protobuf::DescriptorProto_ReservedRange::ByteSizeLong(v51, a2, a3, a4);
      v47 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6);
      v50 -= 8;
    }

    while (v50);
  }

  v53 = *(this + 50);
  v54 = (v47 + v53);
  if (v53 >= 1)
  {
    v55 = (*(this + 26) + 8);
    do
    {
      v56 = *v55++;
      v57 = *(v56 + 23);
      v58 = *(v56 + 8);
      if ((v57 & 0x80u) == 0)
      {
        v58 = v57;
      }

      v54 = (v54 + v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6));
      --v53;
    }

    while (v53);
  }

  v59 = *(this + 4);
  if ((v59 & 3) != 0)
  {
    if (v59)
    {
      v60 = *(this + 27) & 0xFFFFFFFFFFFFFFFELL;
      v61 = *(v60 + 23);
      v62 = *(v60 + 8);
      if ((v61 & 0x80u) == 0)
      {
        v62 = v61;
      }

      v54 = (v54 + v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    if ((v59 & 2) != 0)
    {
      v63 = google::protobuf::MessageOptions::ByteSizeLong(*(this + 28));
      v54 = (&v63->ptr_ + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + v54 + 1);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v54, this + 5, a4);
  }

  else
  {
    *(this + 5) = v54;
    return v54;
  }
}

void google::protobuf::DescriptorProto::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::DescriptorProto::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::DescriptorProto::MergeFrom(google::protobuf::Arena **this, const google::protobuf::DescriptorProto *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 3), *(a2 + 8));
    sub_276B4AB64(this + 3, v7, (v6 + 8), v5, *this[5] - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = this[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_276B4A924(this + 6, v12, v11 + 8, v10, (*this[8] - *(this + 14)));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = this[8];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 9), *(a2 + 20));
    sub_276B4A9E4(this + 9, v17, (v16 + 8), v15, *this[11] - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = this[11];
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 12), *(a2 + 26));
    sub_276B4AD2C(this + 12, v22, (v21 + 8), v20, *this[14] - *(this + 26));
    v23 = *(this + 26) + v20;
    *(this + 26) = v23;
    v24 = this[14];
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 32);
  if (v25)
  {
    v26 = *(a2 + 17);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 15), *(a2 + 32));
    sub_276B4AB64(this + 15, v27, (v26 + 8), v25, *this[17] - *(this + 32));
    v28 = *(this + 32) + v25;
    *(this + 32) = v28;
    v29 = this[17];
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 38);
  if (v30)
  {
    v31 = *(a2 + 20);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 18), *(a2 + 38));
    sub_276B4ADEC(this + 18, v32, (v31 + 8), v30, *this[20] - *(this + 38));
    v33 = *(this + 38) + v30;
    *(this + 38) = v33;
    v34 = this[20];
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 44);
  if (v35)
  {
    v36 = *(a2 + 23);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 21), *(a2 + 44));
    sub_276B4AEAC(this + 21, v37, (v36 + 8), v35, *this[23] - *(this + 44));
    v38 = *(this + 44) + v35;
    *(this + 44) = v38;
    v39 = this[23];
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 50);
  if (v40)
  {
    v41 = *(a2 + 26);
    v42 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 50));
    sub_276B4A878(this + 8, v42, (v41 + 8), v40, *this[26] - *(this + 50));
    v43 = *(this + 50) + v40;
    *(this + 50) = v43;
    v44 = this[26];
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 4);
  if ((v45 & 3) != 0)
  {
    if (v45)
    {
      v46 = *(a2 + 27);
      *(this + 4) |= 1u;
      v47 = this[1];
      if (v47)
      {
        v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 27, (v46 & 0xFFFFFFFFFFFFFFFELL), v47);
    }

    if ((v45 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v48 = this[28];
      if (!v48)
      {
        v49 = this[1];
        if (v49)
        {
          v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
        }

        v48 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MessageOptions>(v49);
        this[28] = v48;
      }

      if (*(a2 + 28))
      {
        v50 = *(a2 + 28);
      }

      else
      {
        v50 = &google::protobuf::_MessageOptions_default_instance_;
      }

      google::protobuf::MessageOptions::MergeFrom(v48, v50);
    }
  }
}

void google::protobuf::MessageOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::MessageOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_276B4AFF0(this + 6, v7, (v6 + 8), v5, *this[8] - *(this + 14));
    v8 = *(this + 14) + v5;
    *(this + 14) = v8;
    v9 = this[8];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 10);
  if ((v10 & 0xF) != 0)
  {
    if (v10)
    {
      *(this + 72) = *(a2 + 72);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(this + 73) = *(a2 + 73);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
LABEL_12:
        *(this + 10) |= v10;
        return;
      }

LABEL_11:
      *(this + 75) = *(a2 + 75);
      goto LABEL_12;
    }

LABEL_16:
    *(this + 74) = *(a2 + 74);
    if ((v10 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

void google::protobuf::DescriptorProto::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::DescriptorProto::Clear(this);

    google::protobuf::DescriptorProto::MergeFrom(this, a2);
  }
}

void google::protobuf::DescriptorProto::CopyFrom(google::protobuf::DescriptorProto *this, const google::protobuf::DescriptorProto *a2)
{
  if (a2 != this)
  {
    google::protobuf::DescriptorProto::Clear(this);

    google::protobuf::DescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::DescriptorProto::IsInitialized(google::protobuf::DescriptorProto *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = google::protobuf::FieldDescriptorProto::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_276B33534(this + 48);
  if (result)
  {
    v6 = *(this + 20);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = google::protobuf::EnumDescriptorProto::IsInitialized(*(*(this + 11) + 8 * v6));
      v6 = v7;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    v9 = *(this + 26);
    while (v9 >= 1)
    {
      v10 = v9 - 1;
      v11 = google::protobuf::DescriptorProto_ExtensionRange::IsInitialized(*(*(this + 14) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(this + 32);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = google::protobuf::FieldDescriptorProto::IsInitialized(*(*(this + 17) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(this + 38);
    while (v15 >= 1)
    {
      v16 = v15 - 1;
      v17 = google::protobuf::OneofDescriptorProto::IsInitialized(*(*(this + 20) + 8 * v15));
      result = 0;
      v15 = v16;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    v18 = *(this + 28);
    result = google::protobuf::internal::ExtensionSet::IsInitialized((v18 + 16));
    if (result)
    {
      result = sub_276B378A8(v18 + 48);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t google::protobuf::MessageOptions::IsInitialized(google::protobuf::MessageOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_276B378A8(this + 48);
  }

  return result;
}

__n128 google::protobuf::DescriptorProto::InternalSwap(google::protobuf::DescriptorProto *this, google::protobuf::DescriptorProto *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v11 = *(this + 13);
  v12 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  v13 = *(this + 16);
  v14 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v13;
  *(a2 + 17) = v14;
  v15 = *(this + 19);
  v16 = *(this + 20);
  *(this + 152) = *(a2 + 152);
  *(a2 + 19) = v15;
  *(a2 + 20) = v16;
  v17 = *(this + 22);
  v18 = *(this + 23);
  *(this + 11) = *(a2 + 11);
  *(a2 + 22) = v17;
  *(a2 + 23) = v18;
  v19 = *(this + 25);
  v20 = *(this + 26);
  result = *(a2 + 200);
  *(this + 200) = result;
  *(a2 + 25) = v19;
  *(a2 + 26) = v20;
  v22 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v22;
  v23 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v23;
  return result;
}

uint64_t google::protobuf::DescriptorProto::GetMetadata(google::protobuf::DescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[8];
  v2 = off_2812FC738[9];
  return result;
}

google::protobuf::ExtensionRangeOptions *google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(google::protobuf::ExtensionRangeOptions *this, Arena *a2)
{
  *this = &unk_2885C64C0;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_ExtensionRangeOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ExtensionRangeOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return this;
}

void sub_276B37150(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::ExtensionRangeOptions *google::protobuf::ExtensionRangeOptions::ExtensionRangeOptions(google::protobuf::ExtensionRangeOptions *this, const google::protobuf::ExtensionRangeOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C64C0;
  *(this + 6) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  v6 = *(a2 + 12);
  if (v6)
  {
    v7 = *(a2 + 7);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40), *(a2 + 12));
    sub_276B4AFF0(this + 5, v8, (v7 + 8), v6, **(this + 7) - *(this + 12));
    v9 = *(this + 12) + v6;
    *(this + 12) = v9;
    v10 = *(this + 7);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 16) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  return this;
}

void google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions(google::protobuf::ExtensionRangeOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 5);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::ExtensionRangeOptions::~ExtensionRangeOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::ExtensionRangeOptions::default_instance(google::protobuf::ExtensionRangeOptions *this)
{
  if (atomic_load_explicit(scc_info_ExtensionRangeOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ExtensionRangeOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_ExtensionRangeOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::ExtensionRangeOptions::_InternalParse(google::protobuf::ExtensionRangeOptions *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v23 = a2;
  if ((sub_2769F6104(a3, &v23, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      LODWORD(v7) = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = (v7 + (*v6 << 7) - 128);
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, v7);
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
LABEL_6:
      if (v7 == 7994)
      {
        v11 = (v6 - 2);
        while (1)
        {
          v12 = (v11 + 2);
          v23 = (v11 + 2);
          v13 = *(this + 7);
          if (!v13)
          {
            break;
          }

          v18 = *(this + 12);
          v14 = *v13;
          if (v18 < *v13)
          {
            *(this + 12) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
            goto LABEL_20;
          }

          if (v14 == *(this + 13))
          {
            goto LABEL_16;
          }

LABEL_17:
          *v13 = v14 + 1;
          v15 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 5));
          v16 = *(this + 12);
          v17 = *(this + 7) + 8 * v16;
          *(this + 12) = v16 + 1;
          *(v17 + 8) = v15;
          v12 = v23;
LABEL_20:
          v11 = sub_276BD7A4C(a3, v15, v12);
          v23 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 16058)
          {
            goto LABEL_30;
          }
        }

        v14 = *(this + 13);
LABEL_16:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 10, v14 + 1);
        v13 = *(this + 7);
        v14 = *v13;
        goto LABEL_17;
      }

      if (v7)
      {
        v8 = (v7 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 20) = v7 - 1;
        return v23;
      }

      v9 = v7;
      if (v7 >> 6 < 0x7D)
      {
        v19 = *(this + 1);
        if (v19)
        {
          v20 = ((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v20 = sub_2769F617C(this + 1);
          v6 = v23;
        }

        v10 = google::protobuf::internal::UnknownFieldParse(v9, v20, v6, a3, v5);
      }

      else
      {
        v10 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v7, v6, &google::protobuf::_ExtensionRangeOptions_default_instance_, this + 1, a3);
      }

      v23 = v10;
      if (!v10)
      {
        return 0;
      }

LABEL_30:
      if (sub_2769F6104(a3, &v23, *(a3 + 23)))
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

const google::protobuf::UnknownFieldSet *google::protobuf::ExtensionRangeOptions::_InternalSerialize(google::protobuf::ExtensionRangeOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

const InternalMetadata *google::protobuf::ExtensionRangeOptions::ByteSizeLong(google::protobuf::ExtensionRangeOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 12);
  v7 = (v2 + 2 * v6);
  v8 = *(this + 7);
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
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v7, this + 16, v5);
  }

  else
  {
    *(this + 16) = v7;
    return v7;
  }
}

void google::protobuf::ExtensionRangeOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::ExtensionRangeOptions::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::ExtensionRangeOptions::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::ExtensionRangeOptions::Clear(this);

    google::protobuf::ExtensionRangeOptions::MergeFrom(this, a2);
  }
}

void google::protobuf::ExtensionRangeOptions::CopyFrom(google::protobuf::ExtensionRangeOptions *this, const google::protobuf::ExtensionRangeOptions *a2)
{
  if (a2 != this)
  {
    google::protobuf::ExtensionRangeOptions::Clear(this);

    google::protobuf::ExtensionRangeOptions::MergeFrom(this, a2);
  }
}

uint64_t sub_276B378A8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 1)
  {
    do
    {
      v2 = v1--;
      v3 = *(*(a1 + 16) + 8 + 8 * v1);
      v4 = *(v3 + 32);
      v5 = *(v3 + 40);
      while (v4 >= 1)
      {
        v6 = *(v5 + 8 * v4--);
        if ((~*(v6 + 16) & 3) != 0)
        {
          return 0;
        }
      }
    }

    while (v2 >= 2);
  }

  return 1;
}

__n128 google::protobuf::ExtensionRangeOptions::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  google::protobuf::internal::ExtensionSet::Swap(&this[1], (a2 + 2));
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[3].n128_u64[0];
  v5 = this[3].n128_u64[1];
  result = *(a2 + 3);
  this[3] = result;
  a2[6] = v4;
  a2[7] = v5;
  return result;
}

uint64_t google::protobuf::ExtensionRangeOptions::GetMetadata(google::protobuf::ExtensionRangeOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[10];
  v2 = off_2812FC738[11];
  return result;
}

google::protobuf::FieldDescriptorProto *google::protobuf::FieldDescriptorProto::FieldDescriptorProto(google::protobuf::FieldDescriptorProto *this, Arena *a2)
{
  *this = &unk_2885C6570;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FieldDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 5) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 80) = 0;
  *(this + 84) = 0x100000001;
  return this;
}

google::protobuf::FieldDescriptorProto *google::protobuf::FieldDescriptorProto::FieldDescriptorProto(google::protobuf::FieldDescriptorProto *this, const google::protobuf::FieldDescriptorProto *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C6570;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(this + 1, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v7 = *v4;
    if (*v4)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 3, (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 4);
  }

  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 2) != 0)
  {
    v8 = *v4;
    if (*v4)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 4, (*(a2 + 4) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 4);
  }

  *(this + 5) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 4) != 0)
  {
    v9 = *v4;
    if (*v4)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 5, (*(a2 + 5) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 4);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 8) != 0)
  {
    v10 = *v4;
    if (*v4)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 6, (*(a2 + 6) & 0xFFFFFFFFFFFFFFFELL), v10);
    v5 = *(a2 + 4);
  }

  *(this + 7) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 0x10) != 0)
  {
    v11 = *v4;
    if (*v4)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 7, (*(a2 + 7) & 0xFFFFFFFFFFFFFFFELL), v11);
    v5 = *(a2 + 4);
  }

  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  v12 = *(a2 + 72);
  *(this + 22) = *(a2 + 22);
  *(this + 72) = v12;
  return this;
}

void google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(google::protobuf::FieldDescriptorProto *this)
{
  sub_276B37C30(this);
  sub_2769DEC8C(this + 1);
}

{
  google::protobuf::FieldDescriptorProto::~FieldDescriptorProto(this);

  JUMPOUT(0x277C9F670);
}

google::protobuf::FieldOptions *sub_276B37C30(google::protobuf::FieldOptions *result)
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

  if (v1 != &google::protobuf::_FieldDescriptorProto_default_instance_)
  {
    result = *(v1 + 8);
    if (result)
    {
      google::protobuf::FieldOptions::~FieldOptions(result);

      JUMPOUT(0x277C9F670);
    }
  }

  return result;
}

void *google::protobuf::FieldDescriptorProto::default_instance(google::protobuf::FieldDescriptorProto *this)
{
  if (atomic_load_explicit(scc_info_FieldDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FieldDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_FieldDescriptorProto_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::FieldDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_25:
    v7 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
      if ((v2 & 8) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_21:
  v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_29:
  v8 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_33;
    }

LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  **v8 = 0;
  *(v8 + 8) = 0;
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_33:
  v9 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v9 + 23) & 0x80000000) == 0)
  {
    *v9 = 0;
    *(v9 + 23) = 0;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    this = google::protobuf::FieldOptions::Clear(*(this + 8));
    goto LABEL_9;
  }

  **v9 = 0;
  *(v9 + 8) = 0;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  if ((v2 & 0xC0) != 0)
  {
    *(v1 + 72) = 0;
  }

  if ((v2 & 0x700) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 84) = 0x100000001;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2769F6424(v3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::FieldOptions::Clear(google::protobuf::FieldOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = google::protobuf::UninterpretedOption::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  if ((*(this + 40) & 0x3F) != 0)
  {
    *(this + 20) = 0;
    *(this + 9) = 0;
  }

  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *google::protobuf::FieldDescriptorProto::_InternalParse(google::protobuf::FieldDescriptorProto *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v45 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v45, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v45 + 1);
      v9 = *v45;
      if ((*v45 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v45, (v10 - 128));
      v45 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_106;
      }

      v8 = TagFallback;
      v9 = v25;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 5)
      {
        if (v9 >> 3 <= 2)
        {
          if (v11 == 1)
          {
            if (v9 != 10)
            {
              goto LABEL_85;
            }

            *(this + 4) |= 1u;
            v22 = *(this + 1);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = (this + 24);
          }

          else
          {
            if (v11 != 2 || v9 != 18)
            {
              goto LABEL_85;
            }

            *(this + 4) |= 2u;
            v22 = *(this + 1);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = (this + 32);
          }

LABEL_76:
          v32 = google::protobuf::internal::ArenaStringPtr::Mutable(v23, v22);
          v14 = google::protobuf::internal::InlineGreedyStringParser(v32, v45, a3);
          goto LABEL_77;
        }

        if (v11 != 3)
        {
          if (v11 == 4)
          {
            if (v9 == 32)
            {
              v27 = (v8 + 1);
              v26 = *v8;
              if ((v26 & 0x8000000000000000) == 0)
              {
                goto LABEL_56;
              }

              v28 = *v27;
              v26 = (v28 << 7) + v26 - 128;
              if (v28 < 0)
              {
                v45 = google::protobuf::internal::VarintParseSlow64(v8, v26);
                if (!v45)
                {
                  goto LABEL_106;
                }
              }

              else
              {
                v27 = (v8 + 2);
LABEL_56:
                v45 = v27;
              }

              if ((v26 - 1) > 2)
              {
                sub_276BD2C90(this + 1);
              }

              else
              {
                *(this + 4) |= 0x200u;
                *(this + 21) = v26;
              }

              goto LABEL_78;
            }
          }

          else if (v11 == 5 && v9 == 40)
          {
            v16 = (v8 + 1);
            v15 = *v8;
            if ((v15 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            v17 = *v16;
            v15 = (v17 << 7) + v15 - 128;
            if (v17 < 0)
            {
              v45 = google::protobuf::internal::VarintParseSlow64(v8, v15);
              if (!v45)
              {
                goto LABEL_106;
              }
            }

            else
            {
              v16 = (v8 + 2);
LABEL_26:
              v45 = v16;
            }

            if ((v15 - 1) > 0x11)
            {
              sub_276BD84DC(this + 1);
            }

            else
            {
              *(this + 4) |= 0x400u;
              *(this + 22) = v15;
            }

            goto LABEL_78;
          }

          goto LABEL_85;
        }

        if (v9 != 24)
        {
          goto LABEL_85;
        }

        v6 |= 0x40u;
        v30 = (v8 + 1);
        LODWORD(v29) = *v8;
        if ((v29 & 0x80) == 0)
        {
          goto LABEL_71;
        }

        v31 = *v30;
        v29 = v29 + (v31 << 7) - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v30 = (v8 + 2);
LABEL_71:
          v45 = v30;
          *(this + 18) = v29;
          goto LABEL_78;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v8, v29);
        v45 = v39;
        *(this + 18) = v40;
        if (!v39)
        {
          goto LABEL_106;
        }
      }

      else
      {
        if (v9 >> 3 <= 8)
        {
          if (v11 == 6)
          {
            if (v9 == 50)
            {
              *(this + 4) |= 4u;
              v22 = *(this + 1);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = (this + 40);
              goto LABEL_76;
            }

            goto LABEL_85;
          }

          if (v11 == 7)
          {
            if (v9 == 58)
            {
              *(this + 4) |= 8u;
              v22 = *(this + 1);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = (this + 48);
              goto LABEL_76;
            }

            goto LABEL_85;
          }

          if (v11 != 8 || v9 != 66)
          {
            goto LABEL_85;
          }

          *(this + 4) |= 0x20u;
          v12 = *(this + 8);
          if (!v12)
          {
            v13 = *(this + 1);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldOptions>(v13);
            *(this + 8) = v12;
            v8 = v45;
          }

          v14 = sub_276BD7B1C(a3, v12, v8);
LABEL_77:
          v45 = v14;
          if (!v14)
          {
            goto LABEL_106;
          }

          goto LABEL_78;
        }

        if (v11 == 9)
        {
          if (v9 != 72)
          {
            goto LABEL_85;
          }

          v6 |= 0x80u;
          v34 = (v8 + 1);
          LODWORD(v33) = *v8;
          if ((v33 & 0x80) == 0)
          {
            goto LABEL_84;
          }

          v35 = *v34;
          v33 = v33 + (v35 << 7) - 128;
          if ((v35 & 0x80000000) == 0)
          {
            v34 = (v8 + 2);
LABEL_84:
            v45 = v34;
            *(this + 19) = v33;
            goto LABEL_78;
          }

          v43 = google::protobuf::internal::VarintParseSlow64(v8, v33);
          v45 = v43;
          *(this + 19) = v44;
          if (!v43)
          {
LABEL_106:
            v45 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v11 == 10)
          {
            if (v9 == 82)
            {
              *(this + 4) |= 0x10u;
              v22 = *(this + 1);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = (this + 56);
              goto LABEL_76;
            }

LABEL_85:
            if (v9)
            {
              v36 = (v9 & 7) == 4;
            }

            else
            {
              v36 = 1;
            }

            if (v36)
            {
              a3[10].i32[0] = v9 - 1;
              goto LABEL_2;
            }

            v37 = *(this + 1);
            if (v37)
            {
              v38 = ((v37 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v38 = sub_2769F617C(this + 1);
              v8 = v45;
            }

            v14 = google::protobuf::internal::UnknownFieldParse(v9, v38, v8, a3, v5);
            goto LABEL_77;
          }

          if (v11 != 17 || v9 != 136)
          {
            goto LABEL_85;
          }

          v6 |= 0x100u;
          v19 = (v8 + 1);
          v18 = *v8;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_36;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v8 + 2);
LABEL_36:
            v45 = v19;
            *(this + 80) = v18 != 0;
            goto LABEL_78;
          }

          v41 = google::protobuf::internal::VarintParseSlow64(v8, v18);
          v45 = v41;
          *(this + 80) = v42 != 0;
          if (!v41)
          {
            goto LABEL_106;
          }
        }
      }

LABEL_78:
      if (sub_2769F6104(a3, &v45, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v8 = (v45 + 2);
LABEL_6:
    v45 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v45;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FieldDescriptorProto::_InternalSerialize(google::protobuf::FieldDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

LABEL_15:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v7 = *(this + 18);
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
          if ((v6 & 0x200) != 0)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v4[2] = v8;
          v4 += 3;
          if ((v6 & 0x200) != 0)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
        v4[1] = v7;
        v4 += 2;
        if ((v6 & 0x200) != 0)
        {
          goto LABEL_26;
        }
      }

LABEL_5:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_6;
      }

LABEL_37:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(this + 22);
      *v4 = 40;
      if (v15 > 0x7F)
      {
        v4[1] = v15 | 0x80;
        v16 = v15 >> 7;
        if (v15 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v16 | 0x80;
            v17 = v16 >> 7;
            ++v4;
            v18 = v16 >> 14;
            v16 >>= 7;
          }

          while (v18);
          *(v4 - 1) = v17;
          if ((v6 & 4) != 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v4[2] = v16;
          v4 += 3;
          if ((v6 & 4) != 0)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        v4[1] = v15;
        v4 += 2;
        if ((v6 & 4) != 0)
        {
          goto LABEL_48;
        }
      }

LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_49;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2769E1AB4(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v6 & 0x200) == 0)
  {
    goto LABEL_5;
  }

LABEL_26:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 21);
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
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v4[2] = v12;
      v4 += 3;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    v4[1] = v11;
    v4 += 2;
    if ((v6 & 0x400) != 0)
    {
      goto LABEL_37;
    }
  }

LABEL_6:
  if ((v6 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_48:
  v4 = sub_2769E1AB4(a3, 6, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  v4 = sub_2769E1AB4(a3, 7, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_60:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 19);
    *v4 = 72;
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
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v4[2] = v26;
        v4 += 3;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      v4[1] = v25;
      v4 += 2;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_71;
      }
    }

LABEL_11:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 8);
  *v4 = 66;
  v20 = *(v19 + 11);
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

  v4 = google::protobuf::FieldOptions::_InternalSerialize(v19, v21, a3);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_60;
  }

LABEL_10:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_71:
  v4 = sub_2769E1AB4(a3, 10, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_75;
  }

LABEL_72:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 80);
  *v4 = 392;
  v4[2] = v29;
  v4 += 3;
LABEL_75:
  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v30 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

const InternalMetadata *google::protobuf::FieldDescriptorProto::ByteSizeLong(google::protobuf::FieldDescriptorProto *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_37;
  }

  if ((v5 & 1) == 0)
  {
    v6 = 0;
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v7 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  v9 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  v6 = (v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v5 & 2) != 0)
  {
LABEL_9:
    v10 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v6 = (v6 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

LABEL_12:
  if ((v5 & 4) != 0)
  {
    v13 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v6 = (v6 + v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v5 & 8) == 0)
    {
LABEL_14:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 23);
  v18 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v18 = v17;
  }

  v6 = (v6 + v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_25:
  v19 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  v20 = *(v19 + 23);
  v21 = *(v19 + 8);
  if ((v20 & 0x80u) == 0)
  {
    v21 = v20;
  }

  v6 = (v6 + v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v5 & 0x20) == 0)
  {
LABEL_16:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v22 = google::protobuf::FieldOptions::ByteSizeLong(*(this + 8));
  v6 = (&v22->ptr_ + v6 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v5 & 0x40) == 0)
  {
LABEL_17:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

LABEL_29:
  v23 = *(this + 18);
  if (v23 < 0)
  {
    v24 = 11;
  }

  else
  {
    v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v6 = (v6 + v24);
  if ((v5 & 0x80) != 0)
  {
LABEL_33:
    v25 = *(this + 19);
    if (v25 < 0)
    {
      v26 = 11;
    }

    else
    {
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6 = (v6 + v26);
  }

LABEL_37:
  if ((v5 & 0x700) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      v6 = (v6 + 3);
    }

    if ((v5 & 0x200) != 0)
    {
      v27 = *(this + 21);
      v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v27 >= 0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 11;
      }

      v6 = (v6 + v29);
    }

    if ((v5 & 0x400) != 0)
    {
      v30 = *(this + 22);
      v31 = ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v30 >= 0)
      {
        v32 = v31;
      }

      else
      {
        v32 = 11;
      }

      v6 = (v6 + v32);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5, a4);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

void google::protobuf::FieldDescriptorProto::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::FieldDescriptorProto::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::FieldDescriptorProto::MergeFrom(google::protobuf::Arena **this, const google::protobuf::FieldDescriptorProto *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(this + 4) |= 1u;
      v7 = this[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 3, (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
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

    v8 = *(a2 + 4);
    *(this + 4) |= 2u;
    v9 = this[1];
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 4, (v8 & 0xFFFFFFFFFFFFFFFELL), v9);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_27:
    v10 = *(a2 + 5);
    *(this + 4) |= 4u;
    v11 = this[1];
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 5, (v10 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }

LABEL_30:
    v12 = *(a2 + 6);
    *(this + 4) |= 8u;
    v13 = this[1];
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 6, (v12 & 0xFFFFFFFFFFFFFFFELL), v13);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_36;
    }

LABEL_33:
    v14 = *(a2 + 7);
    *(this + 4) |= 0x10u;
    v15 = this[1];
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 7, (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_44;
    }

LABEL_36:
    *(this + 4) |= 0x20u;
    v16 = this[8];
    if (!v16)
    {
      v17 = this[1];
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::FieldOptions>(v17);
      this[8] = v16;
    }

    if (*(a2 + 8))
    {
      v18 = *(a2 + 8);
    }

    else
    {
      v18 = &google::protobuf::_FieldOptions_default_instance_;
    }

    google::protobuf::FieldOptions::MergeFrom(v16, v18);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(this + 4) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(this + 19) = *(a2 + 19);
      goto LABEL_13;
    }

LABEL_44:
    *(this + 18) = *(a2 + 18);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x700) == 0)
  {
    return;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_47:
    *(this + 21) = *(a2 + 21);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *(this + 80) = *(a2 + 80);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_47;
  }

LABEL_17:
  if ((v5 & 0x400) != 0)
  {
LABEL_18:
    *(this + 22) = *(a2 + 22);
  }

LABEL_19:
  *(this + 4) |= v5;
}

void google::protobuf::FieldOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::FieldOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_276B4AFF0(this + 6, v7, (v6 + 8), v5, *this[8] - *(this + 14));
    v8 = *(this + 14) + v5;
    *(this + 14) = v8;
    v9 = this[8];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 10);
  if ((v10 & 0x3F) != 0)
  {
    if (v10)
    {
      *(this + 18) = *(a2 + 18);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_18;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(this + 76) = *(a2 + 76);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_18:
    *(this + 77) = *(a2 + 77);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

LABEL_19:
    *(this + 78) = *(a2 + 78);
    if ((v10 & 0x10) == 0)
    {
LABEL_12:
      if ((v10 & 0x20) == 0)
      {
LABEL_14:
        *(this + 10) |= v10;
        return;
      }

LABEL_13:
      *(this + 20) = *(a2 + 20);
      goto LABEL_14;
    }

LABEL_20:
    *(this + 79) = *(a2 + 79);
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }
}

void google::protobuf::FieldDescriptorProto::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::FieldDescriptorProto::Clear(this);

    google::protobuf::FieldDescriptorProto::MergeFrom(this, a2);
  }
}

void google::protobuf::FieldDescriptorProto::CopyFrom(google::protobuf::FieldDescriptorProto *this, const google::protobuf::FieldDescriptorProto *a2)
{
  if (a2 != this)
  {
    google::protobuf::FieldDescriptorProto::Clear(this);

    google::protobuf::FieldDescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::FieldDescriptorProto::IsInitialized(google::protobuf::FieldDescriptorProto *this)
{
  if ((*(this + 16) & 0x20) == 0)
  {
    return 1;
  }

  v2 = *(this + 8);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v2 + 16));
  if (result)
  {
    result = sub_276B378A8(v2 + 48);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::FieldOptions::IsInitialized(google::protobuf::FieldOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_276B378A8(this + 48);
  }

  return result;
}

__n128 google::protobuf::FieldDescriptorProto::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[1].n128_u64[1];
  this[1].n128_u64[1] = a2[3];
  a2[3] = v5;
  v6 = this[2].n128_u64[0];
  this[2].n128_u64[0] = a2[4];
  a2[4] = v6;
  v7 = this[2].n128_u64[1];
  this[2].n128_u64[1] = a2[5];
  a2[5] = v7;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[6];
  a2[6] = v8;
  v9 = this[3].n128_u64[1];
  this[3].n128_u64[1] = a2[7];
  a2[7] = v9;
  v10 = this[4].n128_u64[0];
  v11 = this[4].n128_u64[1];
  result = *(a2 + 4);
  this[4] = result;
  a2[8] = v10;
  a2[9] = v11;
  LOBYTE(v10) = this[5].n128_u8[0];
  this[5].n128_u8[0] = *(a2 + 80);
  *(a2 + 80) = v10;
  LODWORD(v10) = this[5].n128_u32[1];
  this[5].n128_u32[1] = *(a2 + 21);
  *(a2 + 21) = v10;
  LODWORD(v10) = this[5].n128_u32[2];
  this[5].n128_u32[2] = *(a2 + 22);
  *(a2 + 22) = v10;
  return result;
}

uint64_t google::protobuf::FieldDescriptorProto::GetMetadata(google::protobuf::FieldDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[12];
  v2 = off_2812FC738[13];
  return result;
}

google::protobuf::OneofDescriptorProto *google::protobuf::OneofDescriptorProto::OneofDescriptorProto(google::protobuf::OneofDescriptorProto *this, Arena *a2)
{
  *this = &unk_2885C6620;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_OneofDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_OneofDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = 0;
  return this;
}

google::protobuf::OneofDescriptorProto *google::protobuf::OneofDescriptorProto::OneofDescriptorProto(google::protobuf::OneofDescriptorProto *this, const google::protobuf::OneofDescriptorProto *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C6620;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(this + 1, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v7 = *v4;
    if (*v4)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 3, (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 4);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void google::protobuf::OneofDescriptorProto::~OneofDescriptorProto(google::protobuf::OneofDescriptorProto *this)
{
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  if (this != &google::protobuf::_OneofDescriptorProto_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      google::protobuf::OneofOptions::~OneofOptions(v3);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
}

{
  google::protobuf::OneofDescriptorProto::~OneofDescriptorProto(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::OneofDescriptorProto::default_instance(google::protobuf::OneofDescriptorProto *this)
{
  if (atomic_load_explicit(scc_info_OneofDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_OneofDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_OneofDescriptorProto_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::OneofDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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
      this = google::protobuf::OneofOptions::Clear(*(this + 4));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_2769F6424(v4);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::OneofOptions::Clear(google::protobuf::OneofOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v3 = *(this + 12);
  if (v3 >= 1)
  {
    v4 = (*(this + 7) + 8);
    do
    {
      v5 = *v4++;
      result = google::protobuf::UninterpretedOption::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 12) = 0;
  }

  v7 = *(this + 8);
  v6 = (this + 8);
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *google::protobuf::OneofDescriptorProto::_InternalParse(google::protobuf::OneofDescriptorProto *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v22 = a2;
  for (i = *(a3 + 23); (sub_2769F6104(a3, &v22, i) & 1) == 0; i = *(a3 + 23))
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
    v8 = v20;
LABEL_7:
    if (v8 >> 3 == 2)
    {
      if (v8 == 18)
      {
        *(this + 4) |= 2u;
        v15 = *(this + 4);
        if (!v15)
        {
          v16 = *(this + 1);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofOptions>(v16);
          *(this + 4) = v15;
          v7 = v22;
        }

        v14 = sub_276BD7BEC(a3, v15, v7);
        goto LABEL_28;
      }
    }

    else if (v8 >> 3 == 1 && v8 == 10)
    {
      *(this + 4) |= 1u;
      v17 = *(this + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 3, v17);
      v14 = google::protobuf::internal::InlineGreedyStringParser(v18, v22, a3);
      goto LABEL_28;
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
      *(a3 + 20) = v8 - 1;
      return v22;
    }

    v12 = *(this + 1);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v13 = sub_2769F617C(this + 1);
      v7 = v22;
    }

    v14 = google::protobuf::internal::UnknownFieldParse(v8, v13, v7, a3, v6);
LABEL_28:
    v22 = v14;
    if (!v14)
    {
      return 0;
    }
  }

  return v22;
}

const google::protobuf::UnknownFieldSet *google::protobuf::OneofDescriptorProto::_InternalSerialize(google::protobuf::OneofDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 4);
    *v4 = 18;
    v8 = *(v7 + 16);
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

    v4 = google::protobuf::OneofOptions::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v13 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

const InternalMetadata *google::protobuf::OneofDescriptorProto::ByteSizeLong(google::protobuf::OneofDescriptorProto *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if ((v5 & 3) == 0)
  {
    v6 = 0;
    goto LABEL_10;
  }

  if ((v5 & 1) == 0)
  {
    v6 = 0;
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v10 = google::protobuf::OneofOptions::ByteSizeLong(*(this + 4));
    v6 = (&v10->ptr_ + v6 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1);
    goto LABEL_10;
  }

  v7 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v8 = *(v7 + 23);
  v9 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v9 = v8;
  }

  v6 = (v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v5 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5, a4);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

void google::protobuf::OneofDescriptorProto::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::OneofDescriptorProto::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::OneofDescriptorProto::MergeFrom(google::protobuf::Arena **this, const google::protobuf::OneofDescriptorProto *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(this + 4) |= 1u;
      v7 = this[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 3, (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v8 = this[4];
      if (!v8)
      {
        v9 = this[1];
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        v8 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::OneofOptions>(v9);
        this[4] = v8;
      }

      if (*(a2 + 4))
      {
        v10 = *(a2 + 4);
      }

      else
      {
        v10 = &google::protobuf::_OneofOptions_default_instance_;
      }

      google::protobuf::OneofOptions::MergeFrom(v8, v10);
    }
  }
}

void google::protobuf::OneofOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::OneofOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *(a2 + 7);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 5), v5);
    sub_276B4AFF0(this + 5, v7, (v6 + 8), v5, *this[7] - *(this + 12));
    v8 = *(this + 12) + v5;
    *(this + 12) = v8;
    v9 = this[7];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void google::protobuf::OneofDescriptorProto::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::OneofDescriptorProto::Clear(this);

    google::protobuf::OneofDescriptorProto::MergeFrom(this, a2);
  }
}

void google::protobuf::OneofDescriptorProto::CopyFrom(google::protobuf::OneofDescriptorProto *this, const google::protobuf::OneofDescriptorProto *a2)
{
  if (a2 != this)
  {
    google::protobuf::OneofDescriptorProto::Clear(this);

    google::protobuf::OneofDescriptorProto::MergeFrom(this, a2);
  }
}

uint64_t google::protobuf::OneofDescriptorProto::IsInitialized(google::protobuf::OneofDescriptorProto *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(this + 4);
  result = google::protobuf::internal::ExtensionSet::IsInitialized((v2 + 16));
  if (result)
  {
    result = sub_276B378A8(v2 + 40);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t google::protobuf::OneofOptions::IsInitialized(google::protobuf::OneofOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {

    return sub_276B378A8(this + 40);
  }

  return result;
}

uint64_t *google::protobuf::OneofDescriptorProto::InternalSwap(google::protobuf::OneofDescriptorProto *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  v7 = *(this + 4);
  *(this + 4) = a2[4];
  a2[4] = v7;
  return result;
}

uint64_t google::protobuf::OneofDescriptorProto::GetMetadata(google::protobuf::OneofDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[14];
  v2 = off_2812FC738[15];
  return result;
}

void *google::protobuf::EnumDescriptorProto_EnumReservedRange::EnumDescriptorProto_EnumReservedRange(void *this, Arena *a2)
{
  *this = &unk_2885C66D0;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2885C66D0;
  this[1] = a2;
  this[2] = 0;
  this[3] = 0;
  return this;
}

google::protobuf::EnumDescriptorProto_EnumReservedRange *google::protobuf::EnumDescriptorProto_EnumReservedRange::EnumDescriptorProto_EnumReservedRange(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, const google::protobuf::EnumDescriptorProto_EnumReservedRange *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C66D0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2769F63D8(v4, ((v5 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void google::protobuf::EnumDescriptorProto_EnumReservedRange::~EnumDescriptorProto_EnumReservedRange(google::protobuf::EnumDescriptorProto_EnumReservedRange *this)
{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);
}

{
  sub_2769DEC8C(this + 1);

  JUMPOUT(0x277C9F670);
}

uint64_t *google::protobuf::EnumDescriptorProto_EnumReservedRange::default_instance(google::protobuf::EnumDescriptorProto_EnumReservedRange *this)
{
  if (atomic_load_explicit(scc_info_EnumDescriptorProto_EnumReservedRange_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumDescriptorProto_EnumReservedRange_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_EnumDescriptorProto_EnumReservedRange_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto_EnumReservedRange::Clear(google::protobuf::EnumDescriptorProto_EnumReservedRange *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2769F6424(result);
  }

  return result;
}

google::protobuf::internal *google::protobuf::EnumDescriptorProto_EnumReservedRange::_InternalParse(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v27 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v27, *(a3 + 23)) & 1) == 0)
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
        LODWORD(v15) = *v8;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v16;
        v15 = v15 + (v17 << 7) - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v8 + 2);
LABEL_24:
          v27 = v16;
          *(this + 7) = v15;
          goto LABEL_29;
        }

        v23 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v27 = v23;
        *(this + 7) = v24;
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
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v13 = *(this + 1);
          if (v13)
          {
            v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v14 = sub_2769F617C(this + 1);
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
        LODWORD(v18) = *v8;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v20 = *v19;
        v18 = v18 + (v20 << 7) - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v8 + 2);
LABEL_28:
          v27 = v19;
          *(this + 6) = v18;
          goto LABEL_29;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v8, v18);
        v27 = v25;
        *(this + 6) = v26;
        if (!v25)
        {
          goto LABEL_39;
        }
      }

LABEL_29:
      if (sub_2769F6104(a3, &v27, *(a3 + 23)))
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
  *(this + 4) |= v6;
  return v27;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto_EnumReservedRange::_InternalSerialize(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
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

  v9 = *(this + 7);
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

uint64_t google::protobuf::EnumDescriptorProto_EnumReservedRange::ByteSizeLong(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v4 = *(this + 4);
  if ((v4 & 3) == 0)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (v4)
  {
    v6 = *(this + 6);
    if (v6 < 0)
    {
      v5 = 11;
      if ((v4 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v4 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = 0;
    if ((v4 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v7 = *(this + 7);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v5 += v8;
LABEL_14:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  *(this + 5) = v5;
  return v5;
}

void google::protobuf::EnumDescriptorProto_EnumReservedRange::MergeFrom(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumDescriptorProto_EnumReservedRange::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void *google::protobuf::EnumDescriptorProto_EnumReservedRange::MergeFrom(void *this, const google::protobuf::EnumDescriptorProto_EnumReservedRange *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
    }

    if ((v5 & 2) != 0)
    {
      v3[7] = *(a2 + 7);
    }

    v3[4] |= v5;
  }

  return this;
}

void google::protobuf::EnumDescriptorProto_EnumReservedRange::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumDescriptorProto_EnumReservedRange::Clear(this);

    google::protobuf::EnumDescriptorProto_EnumReservedRange::MergeFrom(this, a2);
  }
}

google::protobuf::EnumDescriptorProto_EnumReservedRange *google::protobuf::EnumDescriptorProto_EnumReservedRange::CopyFrom(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, const google::protobuf::EnumDescriptorProto_EnumReservedRange *a2)
{
  if (a2 != this)
  {
    v4 = this;
    google::protobuf::EnumDescriptorProto_EnumReservedRange::Clear(this);

    return google::protobuf::EnumDescriptorProto_EnumReservedRange::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *google::protobuf::EnumDescriptorProto_EnumReservedRange::InternalSwap(google::protobuf::EnumDescriptorProto_EnumReservedRange *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  return result;
}

uint64_t google::protobuf::EnumDescriptorProto_EnumReservedRange::GetMetadata(google::protobuf::EnumDescriptorProto_EnumReservedRange *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[16];
  v2 = off_2812FC738[17];
  return result;
}

google::protobuf::EnumDescriptorProto *google::protobuf::EnumDescriptorProto::EnumDescriptorProto(google::protobuf::EnumDescriptorProto *this, Arena *a2)
{
  *this = &unk_2885C6780;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 9) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (atomic_load_explicit(scc_info_EnumDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 13) = 0;
  return this;
}

void sub_276B3A6C0(_Unwind_Exception *a1)
{
  sub_276B4A5CC(v3);
  sub_276A43438(v2);
  sub_276B4B0B0(v1);
  _Unwind_Resume(a1);
}

google::protobuf::EnumDescriptorProto *google::protobuf::EnumDescriptorProto::EnumDescriptorProto(google::protobuf::EnumDescriptorProto *this, const google::protobuf::EnumDescriptorProto *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C6780;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276B4B134(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4B1F4(this + 6, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72), *(a2 + 20));
    sub_276B4A878(this + 3, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 1);
  if (v20)
  {
    sub_2769F63D8(v4, ((v20 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  v21 = *(a2 + 4);
  if (v21)
  {
    v22 = *v4;
    if (*v4)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 12, (*(a2 + 12) & 0xFFFFFFFFFFFFFFFELL), v22);
    v21 = *(a2 + 4);
  }

  if ((v21 & 2) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  return this;
}

void sub_276B3A924(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v3, 0x10A1C400A6016E7);
  sub_276B4A5CC(v4);
  sub_276A43438(v2);
  sub_276B4B0B0((v1 + 24));
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

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  if (this != &google::protobuf::_EnumDescriptorProto_default_instance_)
  {
    v3 = *(this + 13);
    if (v3)
    {
      google::protobuf::EnumOptions::~EnumOptions(v3);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
  sub_276B4A5CC(this + 9);
  sub_276A43438(this + 6);
  sub_276B4B0B0(this + 3);
}

{
  google::protobuf::EnumDescriptorProto::~EnumDescriptorProto(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::EnumDescriptorProto::default_instance(google::protobuf::EnumDescriptorProto *this)
{
  if (atomic_load_explicit(scc_info_EnumDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_EnumDescriptorProto_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto::Clear(google::protobuf::EnumDescriptorProto *this)
{
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      google::protobuf::EnumValueDescriptorProto::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  v5 = *(this + 14);
  if (v5 >= 1)
  {
    v6 = (*(this + 8) + 8);
    do
    {
      v7 = *v6++;
      google::protobuf::EnumDescriptorProto_EnumReservedRange::Clear(v7);
      --v5;
    }

    while (v5);
    *(this + 14) = 0;
  }

  result = google::protobuf::RepeatedPtrField<std::string>::Clear(this + 72);
  v9 = *(this + 4);
  if ((v9 & 3) != 0)
  {
    if ((v9 & 1) == 0)
    {
      goto LABEL_13;
    }

    v10 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v10 + 23) & 0x80000000) == 0)
    {
      *v10 = 0;
      *(v10 + 23) = 0;
LABEL_13:
      if ((v9 & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    **v10 = 0;
    *(v10 + 8) = 0;
    if ((v9 & 2) != 0)
    {
LABEL_14:
      result = google::protobuf::EnumOptions::Clear(*(this + 13));
    }
  }

LABEL_15:
  v12 = *(this + 8);
  v11 = this + 8;
  *(v11 + 2) = 0;
  if (v12)
  {

    return sub_2769F6424(v11);
  }

  return result;
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumOptions::Clear(google::protobuf::EnumOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = google::protobuf::UninterpretedOption::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 32) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *google::protobuf::EnumDescriptorProto::_InternalParse(google::protobuf::EnumDescriptorProto *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v47 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_2769F6104(a3, &v47, i))
    {
      return v47;
    }

    v7 = (v47 + 1);
    v8 = *v47;
    if ((*v47 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v47 + 2);
LABEL_6:
      v47 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v47, (v9 - 128));
    v47 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v45;
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
      v47 = (v20 + 1);
      v22 = *(this + 5);
      if (!v22)
      {
        v23 = *(this + 9);
        goto LABEL_33;
      }

      v27 = *(this + 8);
      v23 = *v22;
      if (v27 >= *v22)
      {
        if (v23 == *(this + 9))
        {
LABEL_33:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v23 + 1);
          v22 = *(this + 5);
          v23 = *v22;
        }

        *v22 = v23 + 1;
        v24 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueDescriptorProto>(*(this + 3));
        v25 = *(this + 8);
        v26 = *(this + 5) + 8 * v25;
        *(this + 8) = v25 + 1;
        *(v26 + 8) = v24;
        v21 = v47;
      }

      else
      {
        *(this + 8) = v27 + 1;
        v24 = *&v22[2 * v27 + 2];
      }

      v20 = sub_276BD7CBC(a3, v24, v21);
      v47 = v20;
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

    *(this + 4) |= 1u;
    v39 = *(this + 1);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v40 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 12, v39);
    v30 = google::protobuf::internal::InlineGreedyStringParser(v40, v47, a3);
LABEL_74:
    v47 = v30;
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

    *(this + 4) |= 2u;
    v28 = *(this + 13);
    if (!v28)
    {
      v29 = *(this + 1);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumOptions>(v29);
      *(this + 13) = v28;
      v7 = v47;
    }

    v30 = sub_276BD7D8C(a3, v28, v7);
    goto LABEL_74;
  }

  if (v10 != 4)
  {
    if (v10 == 5 && v8 == 42)
    {
      v11 = v7 - 1;
      while (1)
      {
        v12 = (v11 + 1);
        v47 = (v11 + 1);
        v13 = *(this + 11);
        if (!v13)
        {
          break;
        }

        v14 = *(this + 20);
        v15 = *v13;
        if (v14 >= *v13)
        {
          if (v15 == *(this + 21))
          {
LABEL_18:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v15 + 1);
            v13 = *(this + 11);
            v15 = *v13;
          }

          *v13 = v15 + 1;
          v16 = sub_2769C64F4(*(this + 9));
          v17 = *(this + 20);
          v18 = *(this + 11) + 8 * v17;
          *(this + 20) = v17 + 1;
          *(v18 + 8) = v16;
          v12 = v47;
          goto LABEL_20;
        }

        *(this + 20) = v14 + 1;
        v16 = *&v13[2 * v14 + 2];
LABEL_20:
        v11 = google::protobuf::internal::InlineGreedyStringParser(v16, v12, a3);
        v47 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 42)
        {
          goto LABEL_75;
        }
      }

      v15 = *(this + 21);
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
      v47 = (v31 + 1);
      v33 = *(this + 8);
      if (!v33)
      {
        break;
      }

      v38 = *(this + 14);
      v34 = *v33;
      if (v38 < *v33)
      {
        *(this + 14) = v38 + 1;
        v35 = *&v33[2 * v38 + 2];
        goto LABEL_57;
      }

      if (v34 == *(this + 15))
      {
        goto LABEL_53;
      }

LABEL_54:
      *v33 = v34 + 1;
      v35 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumDescriptorProto_EnumReservedRange>(*(this + 6));
      v36 = *(this + 14);
      v37 = *(this + 8) + 8 * v36;
      *(this + 14) = v36 + 1;
      *(v37 + 8) = v35;
      v32 = v47;
LABEL_57:
      v31 = sub_276BD7E5C(a3, v35, v32);
      v47 = v31;
      if (!v31)
      {
        return 0;
      }

      if (*a3 <= v31 || *v31 != 34)
      {
        goto LABEL_75;
      }
    }

    v34 = *(this + 15);
LABEL_53:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v34 + 1);
    v33 = *(this + 8);
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
    v42 = *(this + 1);
    if (v42)
    {
      v43 = ((v42 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v43 = sub_2769F617C(this + 1);
      v7 = v47;
    }

    v30 = google::protobuf::internal::UnknownFieldParse(v8, v43, v7, a3, v6);
    goto LABEL_74;
  }

  a3[10].i32[0] = v8 - 1;
  return v47;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumDescriptorProto::_InternalSerialize(google::protobuf::EnumDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), a2);
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
      v4 = sub_276B32608(a3, 5, *(*(this + 11) + v30), v4);
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

const InternalMetadata *google::protobuf::EnumDescriptorProto::ByteSizeLong(google::protobuf::EnumDescriptorProto *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
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
      v10 = google::protobuf::EnumValueDescriptorProto::ByteSizeLong(v9, a2, a3, a4);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = *(this + 8);
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
      v17 = google::protobuf::EnumDescriptorProto_EnumReservedRange::ByteSizeLong(v16, a2, a3, a4);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(this + 20);
  v19 = (v12 + v18);
  if (v18 >= 1)
  {
    v20 = (*(this + 11) + 8);
    do
    {
      v21 = *v20++;
      v22 = *(v21 + 23);
      v23 = *(v21 + 8);
      if ((v22 & 0x80u) == 0)
      {
        v23 = v22;
      }

      v19 = (v19 + v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6));
      --v18;
    }

    while (v18);
  }

  v24 = *(this + 4);
  if ((v24 & 3) != 0)
  {
    if (v24)
    {
      v25 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
      v26 = *(v25 + 23);
      v27 = *(v25 + 8);
      if ((v26 & 0x80u) == 0)
      {
        v27 = v26;
      }

      v19 = (v19 + v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    if ((v24 & 2) != 0)
    {
      v28 = google::protobuf::EnumOptions::ByteSizeLong(*(this + 13));
      v19 = (&v28->ptr_ + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + v19 + 1);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v19, this + 5, a4);
  }

  else
  {
    *(this + 5) = v19;
    return v19;
  }
}

void google::protobuf::EnumDescriptorProto::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumDescriptorProto::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::EnumDescriptorProto::MergeFrom(google::protobuf::Arena **this, const google::protobuf::EnumDescriptorProto *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 3), *(a2 + 8));
    sub_276B4B134(this + 3, v7, (v6 + 8), v5, *this[5] - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = this[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_276B4B1F4(this + 6, v12, (v11 + 8), v10, *this[8] - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = this[8];
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 9), *(a2 + 20));
    sub_276B4A878(this + 3, v17, (v16 + 8), v15, *this[11] - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = this[11];
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 4);
  if ((v20 & 3) != 0)
  {
    if (v20)
    {
      v21 = *(a2 + 12);
      *(this + 4) |= 1u;
      v22 = this[1];
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 12, (v21 & 0xFFFFFFFFFFFFFFFELL), v22);
    }

    if ((v20 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v23 = this[13];
      if (!v23)
      {
        v24 = this[1];
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumOptions>(v24);
        this[13] = v23;
      }

      if (*(a2 + 13))
      {
        v25 = *(a2 + 13);
      }

      else
      {
        v25 = &google::protobuf::_EnumOptions_default_instance_;
      }

      google::protobuf::EnumOptions::MergeFrom(v23, v25);
    }
  }
}

void google::protobuf::EnumOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::EnumOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_276B4AFF0(this + 6, v7, (v6 + 8), v5, *this[8] - *(this + 14));
    v8 = *(this + 14) + v5;
    *(this + 14) = v8;
    v9 = this[8];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 10);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(this + 72) = *(a2 + 72);
    }

    if ((v10 & 2) != 0)
    {
      *(this + 73) = *(a2 + 73);
    }

    *(this + 10) |= v10;
  }
}

void google::protobuf::EnumDescriptorProto::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumDescriptorProto::Clear(this);

    google::protobuf::EnumDescriptorProto::MergeFrom(this, a2);
  }
}

void google::protobuf::EnumDescriptorProto::CopyFrom(google::protobuf::EnumDescriptorProto *this, const google::protobuf::EnumDescriptorProto *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumDescriptorProto::Clear(this);

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
    result = sub_276B378A8(v6 + 48);
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

    return sub_276B378A8(this + 48);
  }

  return result;
}

__n128 google::protobuf::EnumDescriptorProto::InternalSwap(google::protobuf::EnumDescriptorProto *this, google::protobuf::EnumDescriptorProto *a2)
{
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 7);
  v8 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  result = *(a2 + 5);
  *(this + 5) = result;
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  v13 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v13;
  return result;
}

uint64_t google::protobuf::EnumDescriptorProto::GetMetadata(google::protobuf::EnumDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[18];
  v2 = off_2812FC738[19];
  return result;
}

google::protobuf::EnumValueDescriptorProto *google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(google::protobuf::EnumValueDescriptorProto *this, Arena *a2)
{
  *this = &unk_2885C6830;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_EnumValueDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumValueDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

google::protobuf::EnumValueDescriptorProto *google::protobuf::EnumValueDescriptorProto::EnumValueDescriptorProto(google::protobuf::EnumValueDescriptorProto *this, const google::protobuf::EnumValueDescriptorProto *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C6830;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(this + 1, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v7 = *v4;
    if (*v4)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 3, (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 4);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  return this;
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

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  if (this != &google::protobuf::_EnumValueDescriptorProto_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      google::protobuf::EnumValueOptions::~EnumValueOptions(v3);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
}

{
  google::protobuf::EnumValueDescriptorProto::~EnumValueDescriptorProto(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::EnumValueDescriptorProto::default_instance(google::protobuf::EnumValueDescriptorProto *this)
{
  if (atomic_load_explicit(scc_info_EnumValueDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_EnumValueDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_EnumValueDescriptorProto_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumValueDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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
      this = google::protobuf::EnumValueOptions::Clear(*(this + 4));
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 32) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_2769F6424(v4);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::EnumValueOptions::Clear(google::protobuf::EnumValueOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = google::protobuf::UninterpretedOption::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  v7 = *(this + 8);
  v6 = this + 8;
  v6[64] = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *google::protobuf::EnumValueDescriptorProto::_InternalParse(google::protobuf::EnumValueDescriptorProto *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v28 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v28, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v8 = (v28 + 1);
      v9 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v10 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_43;
      }

      v8 = TagFallback;
      v9 = v25;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 == 3)
      {
        if (v9 != 26)
        {
          goto LABEL_13;
        }

        *(this + 4) |= 2u;
        v20 = *(this + 4);
        if (!v20)
        {
          v21 = *(this + 1);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueOptions>(v21);
          *(this + 4) = v20;
          v8 = v28;
        }

        v16 = sub_276BD7F2C(a3, v20, v8);
LABEL_34:
        v28 = v16;
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
          *(this + 4) |= 1u;
          v22 = *(this + 1);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 3, v22);
          v16 = google::protobuf::internal::InlineGreedyStringParser(v23, v28, a3);
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

          v14 = *(this + 1);
          if (v14)
          {
            v15 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v15 = sub_2769F617C(this + 1);
            v8 = v28;
          }

          v16 = google::protobuf::internal::UnknownFieldParse(v9, v15, v8, a3, v5);
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
        v28 = v18;
        *(this + 10) = v17;
        goto LABEL_35;
      }

      v26 = google::protobuf::internal::VarintParseSlow64(v8, v17);
      v28 = v26;
      *(this + 10) = v27;
      if (!v26)
      {
LABEL_43:
        v28 = 0;
        goto LABEL_2;
      }

LABEL_35:
      if (sub_2769F6104(a3, &v28, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v8 = (v28 + 2);
LABEL_6:
    v28 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v28;
}

const google::protobuf::UnknownFieldSet *google::protobuf::EnumValueDescriptorProto::_InternalSerialize(google::protobuf::EnumValueDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
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

const InternalMetadata *google::protobuf::EnumValueDescriptorProto::ByteSizeLong(google::protobuf::EnumValueDescriptorProto *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if ((v5 & 7) == 0)
  {
    v6 = 0;
    goto LABEL_15;
  }

  if (v5)
  {
    v7 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v6 = (v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = 0;
  if ((v5 & 2) != 0)
  {
LABEL_9:
    v10 = google::protobuf::EnumValueOptions::ByteSizeLong(*(this + 4));
    v6 = (v6 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

LABEL_10:
  if ((v5 & 4) != 0)
  {
    v11 = *(this + 10);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6 = (v6 + v12);
  }

LABEL_15:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v6, this + 5, a4);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

void google::protobuf::EnumValueDescriptorProto::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::EnumValueDescriptorProto::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::EnumValueDescriptorProto::MergeFrom(google::protobuf::Arena **this, const google::protobuf::EnumValueDescriptorProto *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(this + 4) |= 1u;
      v7 = this[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 3, (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(this + 4) |= v5;
          return;
        }

LABEL_7:
        *(this + 10) = *(a2 + 10);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    v8 = this[4];
    if (!v8)
    {
      v9 = this[1];
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValueOptions>(v9);
      this[4] = v8;
    }

    if (*(a2 + 4))
    {
      v10 = *(a2 + 4);
    }

    else
    {
      v10 = &google::protobuf::_EnumValueOptions_default_instance_;
    }

    google::protobuf::EnumValueOptions::MergeFrom(v8, v10);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }
}

void google::protobuf::EnumValueOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::EnumValueOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_276B4AFF0(this + 6, v7, (v6 + 8), v5, *this[8] - *(this + 14));
    v8 = *(this + 14) + v5;
    *(this + 14) = v8;
    v9 = this[8];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 40))
  {
    v10 = *(a2 + 72);
    *(this + 10) |= 1u;
    *(this + 72) = v10;
  }
}

void google::protobuf::EnumValueDescriptorProto::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumValueDescriptorProto::Clear(this);

    google::protobuf::EnumValueDescriptorProto::MergeFrom(this, a2);
  }
}

void google::protobuf::EnumValueDescriptorProto::CopyFrom(google::protobuf::EnumValueDescriptorProto *this, const google::protobuf::EnumValueDescriptorProto *a2)
{
  if (a2 != this)
  {
    google::protobuf::EnumValueDescriptorProto::Clear(this);

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
    result = sub_276B378A8(v2 + 48);
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

    return sub_276B378A8(this + 48);
  }

  return result;
}

uint64_t *google::protobuf::EnumValueDescriptorProto::InternalSwap(google::protobuf::EnumValueDescriptorProto *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  v7 = *(this + 4);
  *(this + 4) = a2[4];
  a2[4] = v7;
  LODWORD(v7) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  return result;
}

uint64_t google::protobuf::EnumValueDescriptorProto::GetMetadata(google::protobuf::EnumValueDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[20];
  v2 = off_2812FC738[21];
  return result;
}

google::protobuf::ServiceDescriptorProto *google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(google::protobuf::ServiceDescriptorProto *this, Arena *a2)
{
  *this = &unk_2885C68E0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ServiceDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ServiceDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 7) = 0;
  return this;
}

google::protobuf::ServiceDescriptorProto *google::protobuf::ServiceDescriptorProto::ServiceDescriptorProto(google::protobuf::ServiceDescriptorProto *this, const google::protobuf::ServiceDescriptorProto *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C68E0;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24), *(a2 + 8));
    sub_276B4B338(this + 3, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_2769F63D8(v4, ((v10 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  *(this + 6) = &google::protobuf::internal::fixed_address_empty_string;
  v11 = *(a2 + 4);
  if (v11)
  {
    v12 = *v4;
    if (*v4)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 6, (*(a2 + 6) & 0xFFFFFFFFFFFFFFFELL), v12);
    v11 = *(a2 + 4);
  }

  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  return this;
}

void sub_276B3C9DC(_Unwind_Exception *a1)
{
  MEMORY[0x277C9F670](v2, 0x10A1C40AF389210);
  sub_276B4B2B4((v1 + 24));
  _Unwind_Resume(a1);
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

    MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  if (this != &google::protobuf::_ServiceDescriptorProto_default_instance_)
  {
    v3 = *(this + 7);
    if (v3)
    {
      google::protobuf::ServiceOptions::~ServiceOptions(v3);
      MEMORY[0x277C9F670]();
    }
  }

  sub_2769DEC8C(this + 1);
  sub_276B4B2B4(this + 3);
}

{
  google::protobuf::ServiceDescriptorProto::~ServiceDescriptorProto(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::ServiceDescriptorProto::default_instance(google::protobuf::ServiceDescriptorProto *this)
{
  if (atomic_load_explicit(scc_info_ServiceDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_ServiceDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_ServiceDescriptorProto_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::ServiceDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      this = google::protobuf::MethodDescriptorProto::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
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
      this = google::protobuf::ServiceOptions::Clear(*(v1 + 56));
    }
  }

LABEL_11:
  v8 = *(v1 + 8);
  v7 = v1 + 8;
  *(v7 + 8) = 0;
  if (v8)
  {

    return sub_2769F6424(v7);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::ServiceOptions::Clear(google::protobuf::ServiceOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = google::protobuf::UninterpretedOption::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  v7 = *(this + 8);
  v6 = this + 8;
  v6[64] = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *google::protobuf::ServiceDescriptorProto::_InternalParse(google::protobuf::ServiceDescriptorProto *this, google::protobuf::internal *a2, int32x2_t *a3)
{
  v31 = a2;
  for (i = a3[11].i32[1]; ; i = a3[11].i32[1])
  {
    if (sub_2769F6104(a3, &v31, i))
    {
      return v31;
    }

    v7 = (v31 + 1);
    v8 = *v31;
    if ((*v31 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v31 + 2);
LABEL_6:
      v31 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v9 - 128));
    v31 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v7 = TagFallback;
    v8 = v29;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 == 3)
    {
      if (v8 != 26)
      {
        goto LABEL_13;
      }

      *(this + 4) |= 2u;
      v24 = *(this + 7);
      if (!v24)
      {
        v25 = *(this + 1);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceOptions>(v25);
        *(this + 7) = v24;
        v7 = v31;
      }

      v15 = sub_276BD80CC(a3, v24, v7);
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

    *(this + 4) |= 1u;
    v26 = *(this + 1);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 6, v26);
    v15 = google::protobuf::internal::InlineGreedyStringParser(v27, v31, a3);
LABEL_43:
    v31 = v15;
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
      v31 = (v16 + 1);
      v18 = *(this + 5);
      if (!v18)
      {
        break;
      }

      v23 = *(this + 8);
      v19 = *v18;
      if (v23 < *v18)
      {
        *(this + 8) = v23 + 1;
        v20 = *&v18[2 * v23 + 2];
        goto LABEL_28;
      }

      if (v19 == *(this + 9))
      {
        goto LABEL_24;
      }

LABEL_25:
      *v18 = v19 + 1;
      v20 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodDescriptorProto>(*(this + 3));
      v21 = *(this + 8);
      v22 = *(this + 5) + 8 * v21;
      *(this + 8) = v21 + 1;
      *(v22 + 8) = v20;
      v17 = v31;
LABEL_28:
      v16 = sub_276BD7FFC(a3, v20, v17);
      v31 = v16;
      if (!v16)
      {
        return 0;
      }

      if (*a3 <= v16 || *v16 != 18)
      {
        goto LABEL_44;
      }
    }

    v19 = *(this + 9);
LABEL_24:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 6, v19 + 1);
    v18 = *(this + 5);
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
    v13 = *(this + 1);
    if (v13)
    {
      v14 = ((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v14 = sub_2769F617C(this + 1);
      v7 = v31;
    }

    v15 = google::protobuf::internal::UnknownFieldParse(v8, v14, v7, a3, v6);
    goto LABEL_43;
  }

  a3[10].i32[0] = v8 - 1;
  return v31;
}

const google::protobuf::UnknownFieldSet *google::protobuf::ServiceDescriptorProto::_InternalSerialize(google::protobuf::ServiceDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
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

const InternalMetadata *google::protobuf::ServiceDescriptorProto::ByteSizeLong(google::protobuf::ServiceDescriptorProto *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 8);
  v6 = *(this + 5);
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
      v10 = google::protobuf::MethodDescriptorProto::ByteSizeLong(v9, a2, a3, a4);
      v5 = (v5 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6));
      v8 -= 8;
    }

    while (v8);
  }

  else
  {
    v5 = 0;
  }

  v11 = *(this + 4);
  if ((v11 & 3) != 0)
  {
    if (v11)
    {
      v12 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v13 = *(v12 + 23);
      v14 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v14 = v13;
      }

      v5 = (v5 + v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }

    if ((v11 & 2) != 0)
    {
      v15 = google::protobuf::ServiceOptions::ByteSizeLong(*(this + 7));
      v5 = (&v15->ptr_ + v5 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1);
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 5, a4);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

void google::protobuf::ServiceDescriptorProto::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::ServiceDescriptorProto::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::ServiceDescriptorProto::MergeFrom(google::protobuf::Arena **this, const google::protobuf::ServiceDescriptorProto *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 3), *(a2 + 8));
    sub_276B4B338(this + 3, v7, (v6 + 8), v5, *this[5] - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = this[5];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      v11 = *(a2 + 6);
      *(this + 4) |= 1u;
      v12 = this[1];
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 6, (v11 & 0xFFFFFFFFFFFFFFFELL), v12);
    }

    if ((v10 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v13 = this[7];
      if (!v13)
      {
        v14 = this[1];
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::ServiceOptions>(v14);
        this[7] = v13;
      }

      if (*(a2 + 7))
      {
        v15 = *(a2 + 7);
      }

      else
      {
        v15 = &google::protobuf::_ServiceOptions_default_instance_;
      }

      google::protobuf::ServiceOptions::MergeFrom(v13, v15);
    }
  }
}

void google::protobuf::ServiceOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::ServiceOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_276B4AFF0(this + 6, v7, (v6 + 8), v5, *this[8] - *(this + 14));
    v8 = *(this + 14) + v5;
    *(this + 14) = v8;
    v9 = this[8];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  if (*(a2 + 40))
  {
    v10 = *(a2 + 72);
    *(this + 10) |= 1u;
    *(this + 72) = v10;
  }
}

void google::protobuf::ServiceDescriptorProto::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::ServiceDescriptorProto::Clear(this);

    google::protobuf::ServiceDescriptorProto::MergeFrom(this, a2);
  }
}

void google::protobuf::ServiceDescriptorProto::CopyFrom(google::protobuf::ServiceDescriptorProto *this, const google::protobuf::ServiceDescriptorProto *a2)
{
  if (a2 != this)
  {
    google::protobuf::ServiceDescriptorProto::Clear(this);

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
    result = sub_276B378A8(v6 + 48);
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

    return sub_276B378A8(this + 48);
  }

  return result;
}

__n128 google::protobuf::ServiceDescriptorProto::InternalSwap(__n128 *this, google::protobuf::Arena **a2)
{
  sub_2769DF630(&this->n128_i64[1], a2 + 1);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = *(a2 + 2);
  this[2] = result;
  a2[4] = v5;
  a2[5] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[6];
  a2[6] = v8;
  v9 = this[3].n128_u64[1];
  this[3].n128_u64[1] = a2[7];
  a2[7] = v9;
  return result;
}

uint64_t google::protobuf::ServiceDescriptorProto::GetMetadata(google::protobuf::ServiceDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[22];
  v2 = off_2812FC738[23];
  return result;
}

google::protobuf::MethodDescriptorProto *google::protobuf::MethodDescriptorProto::MethodDescriptorProto(google::protobuf::MethodDescriptorProto *this, Arena *a2)
{
  *this = &unk_2885C6990;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MethodDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MethodDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 5) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 6) = 0;
  *(this + 28) = 0;
  return this;
}

google::protobuf::MethodDescriptorProto *google::protobuf::MethodDescriptorProto::MethodDescriptorProto(google::protobuf::MethodDescriptorProto *this, const google::protobuf::MethodDescriptorProto *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885C6990;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2769F63D8(this + 1, ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8));
    v5 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v5)
  {
    v7 = *v4;
    if (*v4)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 3, (*(a2 + 3) & 0xFFFFFFFFFFFFFFFELL), v7);
    v5 = *(a2 + 4);
  }

  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 2) != 0)
  {
    v8 = *v4;
    if (*v4)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 4, (*(a2 + 4) & 0xFFFFFFFFFFFFFFFELL), v8);
    v5 = *(a2 + 4);
  }

  *(this + 5) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v5 & 4) != 0)
  {
    v9 = *v4;
    if (*v4)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 5, (*(a2 + 5) & 0xFFFFFFFFFFFFFFFELL), v9);
    v5 = *(a2 + 4);
  }

  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 28) = *(a2 + 28);
  return this;
}

void google::protobuf::MethodDescriptorProto::~MethodDescriptorProto(google::protobuf::MethodDescriptorProto *this)
{
  sub_276B3D914(this);
  sub_2769DEC8C(this + 1);
}

{
  google::protobuf::MethodDescriptorProto::~MethodDescriptorProto(this);

  JUMPOUT(0x277C9F670);
}

google::protobuf::MethodOptions *sub_276B3D914(google::protobuf::MethodOptions *result)
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

  if (v1 != &google::protobuf::_MethodDescriptorProto_default_instance_)
  {
    result = *(v1 + 6);
    if (result)
    {
      google::protobuf::MethodOptions::~MethodOptions(result);

      JUMPOUT(0x277C9F670);
    }
  }

  return result;
}

void *google::protobuf::MethodDescriptorProto::default_instance(google::protobuf::MethodDescriptorProto *this)
{
  if (atomic_load_explicit(scc_info_MethodDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MethodDescriptorProto_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_MethodDescriptorProto_default_instance_;
}

google::protobuf::UnknownFieldSet *google::protobuf::MethodDescriptorProto::Clear(google::protobuf::UnknownFieldSet *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
  }

  if (v2)
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_19;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_15:
  v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_19;
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_19:
  v7 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    this = google::protobuf::MethodOptions::Clear(*(this + 6));
    goto LABEL_7;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v2 & 8) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2769F6424(v3);
  }

  return this;
}

google::protobuf::UnknownFieldSet *google::protobuf::MethodOptions::Clear(google::protobuf::MethodOptions *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear(this + 16);
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = google::protobuf::UninterpretedOption::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  if ((*(this + 40) & 3) != 0)
  {
    *(this + 9) = 0;
  }

  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_2769F6424(v6);
  }

  return result;
}

google::protobuf::internal *google::protobuf::MethodDescriptorProto::_InternalParse(google::protobuf::MethodDescriptorProto *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v34 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v34, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v34 + 1);
      v9 = *v34;
      if ((*v34 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v10 - 128));
      v34 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_64;
      }

      v8 = TagFallback;
      v9 = v29;
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

          *(this + 4) |= 1u;
          v13 = *(this + 1);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = (this + 24);
        }

        else if (v11 == 2)
        {
          if (v9 != 18)
          {
            goto LABEL_46;
          }

          *(this + 4) |= 2u;
          v13 = *(this + 1);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = (this + 32);
        }

        else
        {
          if (v11 != 3 || v9 != 26)
          {
            goto LABEL_46;
          }

          *(this + 4) |= 4u;
          v13 = *(this + 1);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = (this + 40);
        }

        v21 = google::protobuf::internal::ArenaStringPtr::Mutable(v14, v13);
        v20 = google::protobuf::internal::InlineGreedyStringParser(v21, v34, a3);
        goto LABEL_53;
      }

      if (v11 == 4)
      {
        if (v9 == 34)
        {
          *(this + 4) |= 8u;
          v18 = *(this + 6);
          if (!v18)
          {
            v19 = *(this + 1);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodOptions>(v19);
            *(this + 6) = v18;
            v8 = v34;
          }

          v20 = sub_276BD819C(a3, v18, v8);
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
          *(a3 + 20) = v9 - 1;
          goto LABEL_2;
        }

        v26 = *(this + 1);
        if (v26)
        {
          v27 = ((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v27 = sub_2769F617C(this + 1);
          v8 = v34;
        }

        v20 = google::protobuf::internal::UnknownFieldParse(v9, v27, v8, a3, v5);
LABEL_53:
        v34 = v20;
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
          v34 = v23;
          *(this + 56) = v22 != 0;
          goto LABEL_54;
        }

        v32 = google::protobuf::internal::VarintParseSlow64(v8, v22);
        v34 = v32;
        *(this + 56) = v33 != 0;
        if (!v32)
        {
LABEL_64:
          v34 = 0;
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
          v34 = v16;
          *(this + 57) = v15 != 0;
          goto LABEL_54;
        }

        v30 = google::protobuf::internal::VarintParseSlow64(v8, v15);
        v34 = v30;
        *(this + 57) = v31 != 0;
        if (!v30)
        {
          goto LABEL_64;
        }
      }

LABEL_54:
      if (sub_2769F6104(a3, &v34, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v34 + 2);
LABEL_6:
    v34 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 4) |= v6;
  return v34;
}

const google::protobuf::UnknownFieldSet *google::protobuf::MethodDescriptorProto::_InternalSerialize(google::protobuf::MethodDescriptorProto *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
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

  v4 = sub_2769E1AB4(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
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
  v4 = sub_2769E1AB4(a3, 3, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
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

const InternalMetadata *google::protobuf::MethodDescriptorProto::ByteSizeLong(google::protobuf::MethodDescriptorProto *this, uint64_t a2, uint64_t a3, CachedSize *a4)
{
  v5 = *(this + 4);
  if ((v5 & 0x3F) == 0)
  {
    v7 = 0;
    goto LABEL_16;
  }

  if ((v5 & 1) == 0)
  {
    v6 = 0;
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v8 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(v8 + 23);
  v10 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v10 = v9;
  }

  v6 = v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v5 & 2) != 0)
  {
LABEL_9:
    v11 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v12 = *(v11 + 23);
    v13 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v13 = v12;
    }

    v6 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v5 & 4) != 0)
  {
    v16 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    v17 = *(v16 + 23);
    v18 = *(v16 + 8);
    if ((v17 & 0x80u) == 0)
    {
      v18 = v17;
    }

    v6 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v5 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v5 & 8) != 0)
  {
LABEL_14:
    v14 = google::protobuf::MethodOptions::ByteSizeLong(*(this + 6));
    v6 += &v14->ptr_ + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  v7 = (v6 + ((v5 >> 4) & 2) + ((v5 >> 3) & 2));
LABEL_16:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v7, this + 5, a4);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

void google::protobuf::MethodDescriptorProto::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    google::protobuf::MethodDescriptorProto::MergeFrom(this, v5);
  }

  else
  {

    google::protobuf::internal::ReflectionOps::Merge(lpsrc, this, v6);
  }
}

void google::protobuf::MethodDescriptorProto::MergeFrom(google::protobuf::Arena **this, const google::protobuf::MethodDescriptorProto *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(this + 4) |= 1u;
      v7 = this[1];
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Set(this + 3, (v6 & 0xFFFFFFFFFFFFFFFELL), v7);
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

    v8 = *(a2 + 4);
    *(this + 4) |= 2u;
    v9 = this[1];
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 4, (v8 & 0xFFFFFFFFFFFFFFFELL), v9);
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
    v10 = *(a2 + 5);
    *(this + 4) |= 4u;
    v11 = this[1];
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 5, (v10 & 0xFFFFFFFFFFFFFFFELL), v11);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }

LABEL_22:
    *(this + 4) |= 8u;
    v12 = this[6];
    if (!v12)
    {
      v13 = this[1];
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::MethodOptions>(v13);
      this[6] = v12;
    }

    if (*(a2 + 6))
    {
      v14 = *(a2 + 6);
    }

    else
    {
      v14 = &google::protobuf::_MethodOptions_default_instance_;
    }

    google::protobuf::MethodOptions::MergeFrom(v12, v14);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_11:
        *(this + 4) |= v5;
        return;
      }

LABEL_10:
      *(this + 57) = *(a2 + 57);
      goto LABEL_11;
    }

LABEL_30:
    *(this + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }
}

void google::protobuf::MethodOptions::MergeFrom(google::protobuf::Arena **this, const google::protobuf::MethodOptions *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 2), (a2 + 16));
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2769F63D8(this + 1, ((v4 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 6), *(a2 + 14));
    sub_276B4AFF0(this + 6, v7, (v6 + 8), v5, *this[8] - *(this + 14));
    v8 = *(this + 14) + v5;
    *(this + 14) = v8;
    v9 = this[8];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 10);
  if ((v10 & 3) != 0)
  {
    if (v10)
    {
      *(this + 72) = *(a2 + 72);
    }

    if ((v10 & 2) != 0)
    {
      *(this + 19) = *(a2 + 19);
    }

    *(this + 10) |= v10;
  }
}

void google::protobuf::MethodDescriptorProto::CopyFrom(char **this, char **a2)
{
  if (a2 != this)
  {
    google::protobuf::MethodDescriptorProto::Clear(this);

    google::protobuf::MethodDescriptorProto::MergeFrom(this, a2);
  }
}

void google::protobuf::MethodDescriptorProto::CopyFrom(google::protobuf::MethodDescriptorProto *this, const google::protobuf::MethodDescriptorProto *a2)
{
  if (a2 != this)
  {
    google::protobuf::MethodDescriptorProto::Clear(this);

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
    result = sub_276B378A8(v2 + 48);
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

    return sub_276B378A8(this + 48);
  }

  return result;
}

uint64_t *google::protobuf::MethodDescriptorProto::InternalSwap(google::protobuf::MethodDescriptorProto *this, google::protobuf::Arena **a2)
{
  result = sub_2769DF630(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = a2[3];
  a2[3] = v6;
  v7 = *(this + 4);
  *(this + 4) = a2[4];
  a2[4] = v7;
  v8 = *(this + 5);
  *(this + 5) = a2[5];
  a2[5] = v8;
  v9 = *(this + 6);
  *(this + 6) = a2[6];
  a2[6] = v9;
  LOWORD(v9) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v9;
  return result;
}

uint64_t google::protobuf::MethodDescriptorProto::GetMetadata(google::protobuf::MethodDescriptorProto *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[24];
  v2 = off_2812FC738[25];
  return result;
}

google::protobuf::FileOptions *google::protobuf::FileOptions::FileOptions(google::protobuf::FileOptions *this, Arena *a2)
{
  *this = &unk_2885C6A40;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_FileOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_FileOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 14) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 17) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 19) = 0;
  *(this + 40) = 1;
  *(this + 164) = 1;
  return this;
}

void sub_276B3E880(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::FileOptions *google::protobuf::FileOptions::FileOptions(google::protobuf::FileOptions *this, const google::protobuf::FileOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6A40;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 9) = &google::protobuf::internal::fixed_address_empty_string;
  v12 = *(a2 + 10);
  if (v12)
  {
    v13 = *v4;
    if (*v4)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 9, (*(a2 + 9) & 0xFFFFFFFFFFFFFFFELL), v13);
    v12 = *(a2 + 10);
  }

  *(this + 10) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v12 & 2) != 0)
  {
    v14 = *v4;
    if (*v4)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 10, (*(a2 + 10) & 0xFFFFFFFFFFFFFFFELL), v14);
    v12 = *(a2 + 10);
  }

  *(this + 11) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v12 & 4) != 0)
  {
    v15 = *v4;
    if (*v4)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 11, (*(a2 + 11) & 0xFFFFFFFFFFFFFFFELL), v15);
    v12 = *(a2 + 10);
  }

  *(this + 12) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v12 & 8) != 0)
  {
    v16 = *v4;
    if (*v4)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 12, (*(a2 + 12) & 0xFFFFFFFFFFFFFFFELL), v16);
    v12 = *(a2 + 10);
  }

  *(this + 13) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v12 & 0x10) != 0)
  {
    v17 = *v4;
    if (*v4)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 13, (*(a2 + 13) & 0xFFFFFFFFFFFFFFFELL), v17);
    v12 = *(a2 + 10);
  }

  *(this + 14) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v12 & 0x20) != 0)
  {
    v18 = *v4;
    if (*v4)
    {
      v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 14, (*(a2 + 14) & 0xFFFFFFFFFFFFFFFELL), v18);
    v12 = *(a2 + 10);
  }

  *(this + 15) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v12 & 0x40) != 0)
  {
    v19 = *v4;
    if (*v4)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 15, (*(a2 + 15) & 0xFFFFFFFFFFFFFFFELL), v19);
    v12 = *(a2 + 10);
  }

  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v12 & 0x80) != 0)
  {
    v20 = *v4;
    if (*v4)
    {
      v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 16, (*(a2 + 16) & 0xFFFFFFFFFFFFFFFELL), v20);
    v12 = *(a2 + 10);
  }

  *(this + 17) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v12 & 0x100) != 0)
  {
    v21 = *v4;
    if (*v4)
    {
      v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 17, (*(a2 + 17) & 0xFFFFFFFFFFFFFFFELL), v21);
    v12 = *(a2 + 10);
  }

  *(this + 18) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v12 & 0x200) != 0)
  {
    v22 = *v4;
    if (*v4)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 18, (*(a2 + 18) & 0xFFFFFFFFFFFFFFFELL), v22);
  }

  v23 = *(a2 + 19);
  *(this + 157) = *(a2 + 157);
  *(this + 19) = v23;
  return this;
}

void google::protobuf::FileOptions::~FileOptions(google::protobuf::FileOptions *this)
{
  sub_276B3EC10(this);
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::FileOptions::~FileOptions(this);

  JUMPOUT(0x277C9F670);
}

uint64_t sub_276B3EC10(uint64_t result)
{
  v1 = result;
  v2 = *(result + 72);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C9F670](v2, 0x1012C40EC159624);
  }

  v3 = v1[10];
  if (v3 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    result = MEMORY[0x277C9F670](v3, 0x1012C40EC159624);
  }

  v4 = v1[11];
  if (v4 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C9F670](v4, 0x1012C40EC159624);
  }

  v5 = v1[12];
  if (v5 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C9F670](v5, 0x1012C40EC159624);
  }

  v6 = v1[13];
  if (v6 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    result = MEMORY[0x277C9F670](v6, 0x1012C40EC159624);
  }

  v7 = v1[14];
  if (v7 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x277C9F670](v7, 0x1012C40EC159624);
  }

  v8 = v1[15];
  if (v8 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    result = MEMORY[0x277C9F670](v8, 0x1012C40EC159624);
  }

  v9 = v1[16];
  if (v9 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    result = MEMORY[0x277C9F670](v9, 0x1012C40EC159624);
  }

  v10 = v1[17];
  if (v10 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    result = MEMORY[0x277C9F670](v10, 0x1012C40EC159624);
  }

  v11 = v1[18];
  if (v11 != &google::protobuf::internal::fixed_address_empty_string)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    JUMPOUT(0x277C9F670);
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

google::protobuf::internal *google::protobuf::FileOptions::_InternalParse(google::protobuf::FileOptions *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v75 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v75, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v75 + 1);
      LODWORD(v9) = *v75;
      if (*v75 < 0)
      {
        v9 = (v9 + (*v8 << 7) - 128);
        if (*v8 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v75, v9);
          v75 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_153;
          }

          v8 = TagFallback;
          goto LABEL_7;
        }

        v8 = (v75 + 2);
      }

      v75 = v8;
LABEL_7:
      switch(v9 >> 3)
      {
        case 1u:
          if (v9 != 10)
          {
            goto LABEL_121;
          }

          *(this + 10) |= 1u;
          v10 = *(this + 1);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = (this + 72);
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
          if (v9 != 66)
          {
            goto LABEL_121;
          }

          *(this + 10) |= 2u;
          v10 = *(this + 1);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = (this + 80);
          goto LABEL_112;
        case 9u:
          if (v9 != 72)
          {
            goto LABEL_121;
          }

          v34 = (v8 + 1);
          v33 = *v8;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_81;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if (v35 < 0)
          {
            v75 = google::protobuf::internal::VarintParseSlow64(v8, v33);
            if (!v75)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v34 = (v8 + 2);
LABEL_81:
            v75 = v34;
          }

          if ((v33 - 1) > 2)
          {
            sub_276BD2C18(this + 1);
          }

          else
          {
            *(this + 10) |= 0x40000u;
            *(this + 40) = v33;
          }

          goto LABEL_114;
        case 0xAu:
          if (v9 != 80)
          {
            goto LABEL_121;
          }

          v6 |= 0x400u;
          v31 = (v8 + 1);
          v30 = *v8;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_72;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if (v32 < 0)
          {
            v63 = google::protobuf::internal::VarintParseSlow64(v8, v30);
            v75 = v63;
            *(this + 152) = v64 != 0;
            if (!v63)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v31 = (v8 + 2);
LABEL_72:
            v75 = v31;
            *(this + 152) = v30 != 0;
          }

          goto LABEL_114;
        case 0xBu:
          if (v9 != 90)
          {
            goto LABEL_121;
          }

          *(this + 10) |= 4u;
          v10 = *(this + 1);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = (this + 88);
          goto LABEL_112;
        case 0x10u:
          if (v9 != 128)
          {
            goto LABEL_121;
          }

          v6 |= 0x2000u;
          v40 = (v8 + 1);
          v39 = *v8;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_93;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if (v41 < 0)
          {
            v67 = google::protobuf::internal::VarintParseSlow64(v8, v39);
            v75 = v67;
            *(this + 155) = v68 != 0;
            if (!v67)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v40 = (v8 + 2);
LABEL_93:
            v75 = v40;
            *(this + 155) = v39 != 0;
          }

          goto LABEL_114;
        case 0x11u:
          if (v9 != 136)
          {
            goto LABEL_121;
          }

          v6 |= 0x4000u;
          v22 = (v8 + 1);
          v21 = *v8;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v57 = google::protobuf::internal::VarintParseSlow64(v8, v21);
            v75 = v57;
            *(this + 156) = v58 != 0;
            if (!v57)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v22 = (v8 + 2);
LABEL_41:
            v75 = v22;
            *(this + 156) = v21 != 0;
          }

          goto LABEL_114;
        case 0x12u:
          if (v9 != 144)
          {
            goto LABEL_121;
          }

          v6 |= 0x8000u;
          v28 = (v8 + 1);
          v27 = *v8;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_63;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v61 = google::protobuf::internal::VarintParseSlow64(v8, v27);
            v75 = v61;
            *(this + 157) = v62 != 0;
            if (!v61)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v28 = (v8 + 2);
LABEL_63:
            v75 = v28;
            *(this + 157) = v27 != 0;
          }

          goto LABEL_114;
        case 0x14u:
          if (v9 != 160)
          {
            goto LABEL_121;
          }

          v6 |= 0x800u;
          v25 = (v8 + 1);
          v24 = *v8;
          if ((v24 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          v26 = *v25;
          v24 = (v26 << 7) + v24 - 128;
          if (v26 < 0)
          {
            v59 = google::protobuf::internal::VarintParseSlow64(v8, v24);
            v75 = v59;
            *(this + 153) = v60 != 0;
            if (!v59)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v25 = (v8 + 2);
LABEL_50:
            v75 = v25;
            *(this + 153) = v24 != 0;
          }

          goto LABEL_114;
        case 0x17u:
          if (v9 != 184)
          {
            goto LABEL_121;
          }

          v6 |= 0x20000u;
          v46 = (v8 + 1);
          v45 = *v8;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_107;
          }

          v47 = *v46;
          v45 = (v47 << 7) + v45 - 128;
          if (v47 < 0)
          {
            v71 = google::protobuf::internal::VarintParseSlow64(v8, v45);
            v75 = v71;
            *(this + 159) = v72 != 0;
            if (!v71)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v46 = (v8 + 2);
LABEL_107:
            v75 = v46;
            *(this + 159) = v45 != 0;
          }

          goto LABEL_114;
        case 0x1Bu:
          if (v9 != 216)
          {
            goto LABEL_121;
          }

          v6 |= 0x1000u;
          v43 = (v8 + 1);
          v42 = *v8;
          if ((v42 & 0x8000000000000000) == 0)
          {
            goto LABEL_102;
          }

          v44 = *v43;
          v42 = (v44 << 7) + v42 - 128;
          if (v44 < 0)
          {
            v69 = google::protobuf::internal::VarintParseSlow64(v8, v42);
            v75 = v69;
            *(this + 154) = v70 != 0;
            if (!v69)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v43 = (v8 + 2);
LABEL_102:
            v75 = v43;
            *(this + 154) = v42 != 0;
          }

          goto LABEL_114;
        case 0x1Fu:
          if (v9 != 248)
          {
            goto LABEL_121;
          }

          v6 |= 0x80000u;
          v37 = (v8 + 1);
          v36 = *v8;
          if ((v36 & 0x8000000000000000) == 0)
          {
            goto LABEL_88;
          }

          v38 = *v37;
          v36 = (v38 << 7) + v36 - 128;
          if (v38 < 0)
          {
            v65 = google::protobuf::internal::VarintParseSlow64(v8, v36);
            v75 = v65;
            *(this + 164) = v66 != 0;
            if (!v65)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v37 = (v8 + 2);
LABEL_88:
            v75 = v37;
            *(this + 164) = v36 != 0;
          }

          goto LABEL_114;
        case 0x24u:
          if (v9 != 34)
          {
            goto LABEL_121;
          }

          *(this + 10) |= 8u;
          v10 = *(this + 1);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = (this + 96);
          goto LABEL_112;
        case 0x25u:
          if (v9 != 42)
          {
            goto LABEL_121;
          }

          *(this + 10) |= 0x10u;
          v10 = *(this + 1);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = (this + 104);
          goto LABEL_112;
        case 0x27u:
          if (v9 != 58)
          {
            goto LABEL_121;
          }

          *(this + 10) |= 0x20u;
          v10 = *(this + 1);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = (this + 112);
          goto LABEL_112;
        case 0x28u:
          if (v9 != 66)
          {
            goto LABEL_121;
          }

          *(this + 10) |= 0x40u;
          v10 = *(this + 1);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = (this + 120);
          goto LABEL_112;
        case 0x29u:
          if (v9 != 74)
          {
            goto LABEL_121;
          }

          *(this + 10) |= 0x80u;
          v10 = *(this + 1);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = (this + 128);
          goto LABEL_112;
        case 0x2Au:
          if (v9 != 80)
          {
            goto LABEL_121;
          }

          v6 |= 0x10000u;
          v51 = (v8 + 1);
          v50 = *v8;
          if ((v50 & 0x8000000000000000) == 0)
          {
            goto LABEL_120;
          }

          v52 = *v51;
          v50 = (v52 << 7) + v50 - 128;
          if (v52 < 0)
          {
            v73 = google::protobuf::internal::VarintParseSlow64(v8, v50);
            v75 = v73;
            *(this + 158) = v74 != 0;
            if (!v73)
            {
              goto LABEL_153;
            }
          }

          else
          {
            v51 = (v8 + 2);
LABEL_120:
            v75 = v51;
            *(this + 158) = v50 != 0;
          }

          goto LABEL_114;
        case 0x2Cu:
          if (v9 != 98)
          {
            goto LABEL_121;
          }

          *(this + 10) |= 0x100u;
          v10 = *(this + 1);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = (this + 136);
          goto LABEL_112;
        case 0x2Du:
          if (v9 != 106)
          {
            goto LABEL_121;
          }

          *(this + 10) |= 0x200u;
          v10 = *(this + 1);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = (this + 144);
LABEL_112:
          v48 = google::protobuf::internal::ArenaStringPtr::Mutable(v11, v10);
          v49 = google::protobuf::internal::InlineGreedyStringParser(v48, v75, a3);
          goto LABEL_113;
        default:
          if (v9 >> 3 == 999 && v9 == 58)
          {
            v13 = (v8 - 2);
            while (1)
            {
              v14 = (v13 + 2);
              v75 = (v13 + 2);
              v15 = *(this + 8);
              if (!v15)
              {
                break;
              }

              v20 = *(this + 14);
              v16 = *v15;
              if (v20 < *v15)
              {
                *(this + 14) = v20 + 1;
                v17 = *&v15[2 * v20 + 2];
                goto LABEL_23;
              }

              if (v16 == *(this + 15))
              {
                goto LABEL_19;
              }

LABEL_20:
              *v15 = v16 + 1;
              v17 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
              v18 = *(this + 14);
              v19 = *(this + 8) + 8 * v18;
              *(this + 14) = v18 + 1;
              *(v19 + 8) = v17;
              v14 = v75;
LABEL_23:
              v13 = sub_276BD7A4C(a3, v17, v14);
              v75 = v13;
              if (!v13)
              {
                goto LABEL_153;
              }

              if (*a3 <= v13 || *v13 != 16058)
              {
                goto LABEL_114;
              }
            }

            v16 = *(this + 15);
LABEL_19:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v16 + 1);
            v15 = *(this + 8);
            v16 = *v15;
            goto LABEL_20;
          }

LABEL_121:
          if (v9)
          {
            v53 = (v9 & 7) == 4;
          }

          else
          {
            v53 = 1;
          }

          if (v53)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v54 = v9;
          if (v9 >> 6 < 0x7D)
          {
            v55 = *(this + 1);
            if (v55)
            {
              v56 = ((v55 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v56 = sub_2769F617C(this + 1);
              v8 = v75;
            }

            v49 = google::protobuf::internal::UnknownFieldParse(v54, v56, v8, a3, v5);
          }

          else
          {
            v49 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_FileOptions_default_instance_, this + 1, a3);
          }

LABEL_113:
          v75 = v49;
          if (!v49)
          {
LABEL_153:
            v75 = 0;
            goto LABEL_2;
          }

LABEL_114:
          if (sub_2769F6104(a3, &v75, *(a3 + 23)))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(this + 10) |= v6;
  return v75;
}

const google::protobuf::UnknownFieldSet *google::protobuf::FileOptions::_InternalSerialize(google::protobuf::FileOptions *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    v4 = sub_2769E1AB4(a3, 1, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), a2);
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

  v4 = sub_2769E1AB4(a3, 8, (*(this + 10) & 0xFFFFFFFFFFFFFFFELL), v4);
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
  v4 = sub_2769E1AB4(a3, 11, (*(this + 11) & 0xFFFFFFFFFFFFFFFELL), v4);
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
  v4 = sub_2769E1AB4(a3, 36, (*(this + 12) & 0xFFFFFFFFFFFFFFFELL), v4);
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
  v4 = sub_2769E1AB4(a3, 37, (*(this + 13) & 0xFFFFFFFFFFFFFFFELL), v4);
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
  v4 = sub_2769E1AB4(a3, 39, (*(this + 14) & 0xFFFFFFFFFFFFFFFELL), v4);
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
  v4 = sub_2769E1AB4(a3, 40, (*(this + 15) & 0xFFFFFFFFFFFFFFFELL), v4);
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
  v4 = sub_2769E1AB4(a3, 41, (*(this + 16) & 0xFFFFFFFFFFFFFFFELL), v4);
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
  v4 = sub_2769E1AB4(a3, 44, (*(this + 17) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x200) != 0)
  {
LABEL_21:
    v4 = sub_2769E1AB4(a3, 45, (*(this + 18) & 0xFFFFFFFFFFFFFFFELL), v4);
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

const InternalMetadata *google::protobuf::FileOptions::ByteSizeLong(google::protobuf::FileOptions *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v6 = *(this + 14);
  v7 = (v2 + 2 * v6);
  v8 = *(this + 8);
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
      v12 = google::protobuf::UninterpretedOption::ByteSizeLong(v11, v3, v4, v5);
      v7 = (v7 + v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6));
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(this + 10);
  if (!*(this + 10))
  {
    goto LABEL_19;
  }

  if (v13)
  {
    v29 = *(this + 9) & 0xFFFFFFFFFFFFFFFELL;
    v30 = *(v29 + 23);
    v31 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v31 = v30;
    }

    v7 = (v7 + v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1);
    if ((v13 & 2) == 0)
    {
LABEL_10:
      if ((v13 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_60;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_10;
  }

  v32 = *(this + 10) & 0xFFFFFFFFFFFFFFFELL;
  v33 = *(v32 + 23);
  v34 = *(v32 + 8);
  if ((v33 & 0x80u) == 0)
  {
    v34 = v33;
  }

  v7 = (v7 + v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v13 & 4) == 0)
  {
LABEL_11:
    if ((v13 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_63;
  }

LABEL_60:
  v35 = *(this + 11) & 0xFFFFFFFFFFFFFFFELL;
  v36 = *(v35 + 23);
  v37 = *(v35 + 8);
  if ((v36 & 0x80u) == 0)
  {
    v37 = v36;
  }

  v7 = (v7 + v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1);
  if ((v13 & 8) == 0)
  {
LABEL_12:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_66;
  }

LABEL_63:
  v38 = *(this + 12) & 0xFFFFFFFFFFFFFFFELL;
  v39 = *(v38 + 23);
  v40 = *(v38 + 8);
  if ((v39 & 0x80u) == 0)
  {
    v40 = v39;
  }

  v7 = (v7 + v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2);
  if ((v13 & 0x10) == 0)
  {
LABEL_13:
    if ((v13 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_69:
    v44 = *(this + 14) & 0xFFFFFFFFFFFFFFFELL;
    v45 = *(v44 + 23);
    v46 = *(v44 + 8);
    if ((v45 & 0x80u) == 0)
    {
      v46 = v45;
    }

    v7 = (v7 + v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2);
    if ((v13 & 0x40) == 0)
    {
LABEL_15:
      if ((v13 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    goto LABEL_72;
  }

LABEL_66:
  v41 = *(this + 13) & 0xFFFFFFFFFFFFFFFELL;
  v42 = *(v41 + 23);
  v43 = *(v41 + 8);
  if ((v42 & 0x80u) == 0)
  {
    v43 = v42;
  }

  v7 = (v7 + v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2);
  if ((v13 & 0x20) != 0)
  {
    goto LABEL_69;
  }

LABEL_14:
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_72:
  v47 = *(this + 15) & 0xFFFFFFFFFFFFFFFELL;
  v48 = *(v47 + 23);
  v49 = *(v47 + 8);
  if ((v48 & 0x80u) == 0)
  {
    v49 = v48;
  }

  v7 = (v7 + v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2);
  if ((v13 & 0x80) != 0)
  {
LABEL_16:
    v14 = *(this + 16) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v7 = (v7 + v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2);
  }

LABEL_19:
  if ((v13 & 0xFF00) != 0)
  {
    if ((v13 & 0x100) != 0)
    {
      v17 = *(this + 17) & 0xFFFFFFFFFFFFFFFELL;
      v18 = *(v17 + 23);
      v19 = *(v17 + 8);
      if ((v18 & 0x80u) == 0)
      {
        v19 = v18;
      }

      v7 = (v7 + v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 2);
    }

    if ((v13 & 0x200) != 0)
    {
      v20 = *(this + 18) & 0xFFFFFFFFFFFFFFFELL;
      v21 = *(v20 + 23);
      v22 = *(v20 + 8);
      if ((v21 & 0x80u) == 0)
      {
        v22 = v21;
      }

      v7 = (v7 + v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2);
    }

    v23 = v7 + ((v13 >> 9) & 2);
    if ((v13 & 0x800) != 0)
    {
      v23 += 3;
    }

    if ((v13 & 0x1000) != 0)
    {
      v23 += 3;
    }

    if ((v13 & 0x2000) != 0)
    {
      v23 += 3;
    }

    if ((v13 & 0x4000) != 0)
    {
      v23 += 3;
    }

    if ((v13 & 0x8000) != 0)
    {
      v7 = (v23 + 3);
    }

    else
    {
      v7 = v23;
    }
  }

  if ((v13 & 0xF0000) != 0)
  {
    v24 = (&v7->ptr_ + 3);
    if ((v13 & 0x10000) == 0)
    {
      v24 = v7;
    }

    if ((v13 & 0x20000) != 0)
    {
      v24 = (v24 + 3);
    }

    if ((v13 & 0x40000) != 0)
    {
      v25 = *(this + 40);
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v25 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 11;
      }

      v24 = (v24 + v27);
    }

    if ((v13 & 0x80000) != 0)
    {
      v7 = (&v24->ptr_ + 3);
    }

    else
    {
      v7 = v24;
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v7, this + 11, v5);
  }

  else
  {
    *(this + 11) = v7;
    return v7;
  }
}

void google::protobuf::FileOptions::MergeFrom(google::protobuf::Arena **this, char **lpsrc)
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

__n128 google::protobuf::FileOptions::InternalSwap(google::protobuf::FileOptions *this, google::protobuf::FileOptions *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2769DF630(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v9;
  v10 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v10;
  v11 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v11;
  v12 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v12;
  v13 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v13;
  v14 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v14;
  v15 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v15;
  v16 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v16;
  v17 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v17;
  v18 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v18;
  LODWORD(v18) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v18;
  LOBYTE(v18) = *(this + 164);
  *(this + 164) = *(a2 + 164);
  *(a2 + 164) = v18;
  return result;
}

uint64_t google::protobuf::FileOptions::GetMetadata(google::protobuf::FileOptions *this)
{
  google::protobuf::internal::AssignDescriptors(&descriptor_table_google_2fprotobuf_2fdescriptor_2eproto, 0);
  result = off_2812FC738[26];
  v2 = off_2812FC738[27];
  return result;
}

google::protobuf::MessageOptions *google::protobuf::MessageOptions::MessageOptions(google::protobuf::MessageOptions *this, Arena *a2)
{
  *this = &unk_2885C6AF0;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet(this + 16, a2);
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_MessageOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MessageOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  *(this + 18) = 0;
  return this;
}

void sub_276B4048C(_Unwind_Exception *a1)
{
  sub_276B4AF6C(v2);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((v1 + 16));
  _Unwind_Resume(a1);
}

google::protobuf::MessageOptions *google::protobuf::MessageOptions::MessageOptions(google::protobuf::MessageOptions *this, const google::protobuf::MessageOptions *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885C6AF0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48), *(a2 + 14));
    sub_276B4AFF0(this + 6, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2769F63D8(v4, ((v11 & 0xFFFFFFFFFFFFFFFELL) + 8));
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 18) = *(a2 + 18);
  return this;
}

void google::protobuf::MessageOptions::~MessageOptions(google::protobuf::MessageOptions *this)
{
  sub_2769DEC8C(this + 1);
  sub_276B4AF6C(this + 6);
  google::protobuf::internal::ExtensionSet::~ExtensionSet((this + 16));
}

{
  google::protobuf::MessageOptions::~MessageOptions(this);

  JUMPOUT(0x277C9F670);
}

void *google::protobuf::MessageOptions::default_instance(google::protobuf::MessageOptions *this)
{
  if (atomic_load_explicit(scc_info_MessageOptions_google_2fprotobuf_2fdescriptor_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_MessageOptions_google_2fprotobuf_2fdescriptor_2eproto);
  }

  return &google::protobuf::_MessageOptions_default_instance_;
}

google::protobuf::internal *google::protobuf::MessageOptions::_InternalParse(google::protobuf::MessageOptions *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v46 = a2;
  v6 = 0;
  if ((sub_2769F6104(a3, &v46, *(a3 + 23)) & 1) == 0)
  {
    while (1)
    {
      v8 = (v46 + 1);
      LODWORD(v9) = *v46;
      if ((*v46 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v46, v9);
      v46 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_74;
      }

      v8 = TagFallback;
LABEL_7:
      v10 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v9 != 8)
          {
            goto LABEL_50;
          }

          v6 |= 1u;
          v30 = (v8 + 1);
          v29 = *v8;
          if ((v29 & 0x8000000000000000) == 0)
          {
            goto LABEL_49;
          }

          v31 = *v30;
          v29 = (v31 << 7) + v29 - 128;
          if ((v31 & 0x80000000) == 0)
          {
            v30 = (v8 + 2);
LABEL_49:
            v46 = v30;
            *(this + 72) = v29 != 0;
            goto LABEL_62;
          }

          v42 = google::protobuf::internal::VarintParseSlow64(v8, v29);
          v46 = v42;
          *(this + 72) = v43 != 0;
          if (!v42)
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v10 != 2 || v9 != 16)
          {
            goto LABEL_50;
          }

          v6 |= 2u;
          v21 = (v8 + 1);
          v20 = *v8;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if ((v22 & 0x80000000) == 0)
          {
            v21 = (v8 + 2);
LABEL_34:
            v46 = v21;
            *(this + 73) = v20 != 0;
            goto LABEL_62;
          }

          v44 = google::protobuf::internal::VarintParseSlow64(v8, v20);
          v46 = v44;
          *(this + 73) = v45 != 0;
          if (!v44)
          {
            goto LABEL_74;
          }
        }
      }

      else if (v10 == 3)
      {
        if (v9 != 24)
        {
          goto LABEL_50;
        }

        v6 |= 4u;
        v24 = (v8 + 1);
        v23 = *v8;
        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v25 = *v24;
        v23 = (v25 << 7) + v23 - 128;
        if ((v25 & 0x80000000) == 0)
        {
          v24 = (v8 + 2);
LABEL_39:
          v46 = v24;
          *(this + 74) = v23 != 0;
          goto LABEL_62;
        }

        v38 = google::protobuf::internal::VarintParseSlow64(v8, v23);
        v46 = v38;
        *(this + 74) = v39 != 0;
        if (!v38)
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v10 != 7)
        {
          if (v10 == 999 && v9 == 58)
          {
            v11 = (v8 - 2);
            while (1)
            {
              v12 = (v11 + 2);
              v46 = (v11 + 2);
              v13 = *(this + 8);
              if (!v13)
              {
                break;
              }

              v18 = *(this + 14);
              v14 = *v13;
              if (v18 < *v13)
              {
                *(this + 14) = v18 + 1;
                v15 = *&v13[2 * v18 + 2];
                goto LABEL_19;
              }

              if (v14 == *(this + 15))
              {
                goto LABEL_15;
              }

LABEL_16:
              *v13 = v14 + 1;
              v15 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::UninterpretedOption>(*(this + 6));
              v16 = *(this + 14);
              v17 = *(this + 8) + 8 * v16;
              *(this + 14) = v16 + 1;
              *(v17 + 8) = v15;
              v12 = v46;
LABEL_19:
              v11 = sub_276BD7A4C(a3, v15, v12);
              v46 = v11;
              if (!v11)
              {
                goto LABEL_74;
              }

              if (*a3 <= v11 || *v11 != 16058)
              {
                goto LABEL_62;
              }
            }

            v14 = *(this + 15);
LABEL_15:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 12, v14 + 1);
            v13 = *(this + 8);
            v14 = *v13;
            goto LABEL_16;
          }

LABEL_50:
          if (v9)
          {
            v32 = (v9 & 7) == 4;
          }

          else
          {
            v32 = 1;
          }

          if (v32)
          {
            *(a3 + 20) = v9 - 1;
            goto LABEL_2;
          }

          v33 = v9;
          if (v9 >> 6 < 0x7D)
          {
            v36 = *(this + 1);
            if (v36)
            {
              v37 = ((v36 & 0xFFFFFFFFFFFFFFFELL) + 8);
            }

            else
            {
              v37 = sub_2769F617C(this + 1);
              v8 = v46;
            }

            v34 = google::protobuf::internal::UnknownFieldParse(v33, v37, v8, a3, v5);
          }

          else
          {
            v34 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v9, v8, &google::protobuf::_MessageOptions_default_instance_, this + 1, a3);
          }

          v46 = v34;
          if (!v34)
          {
LABEL_74:
            v46 = 0;
            goto LABEL_2;
          }

          goto LABEL_62;
        }

        if (v9 != 56)
        {
          goto LABEL_50;
        }

        v6 |= 8u;
        v27 = (v8 + 1);
        v26 = *v8;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v8 + 2);
LABEL_44:
          v46 = v27;
          *(this + 75) = v26 != 0;
          goto LABEL_62;
        }

        v40 = google::protobuf::internal::VarintParseSlow64(v8, v26);
        v46 = v40;
        *(this + 75) = v41 != 0;
        if (!v40)
        {
          goto LABEL_74;
        }
      }

LABEL_62:
      if (sub_2769F6104(a3, &v46, *(a3 + 23)))
      {
        goto LABEL_2;
      }
    }

    v8 = (v46 + 2);
LABEL_6:
    v46 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(this + 10) |= v6;
  return v46;
}