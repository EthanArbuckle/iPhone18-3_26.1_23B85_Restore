uint64_t TSA::GalleryItemSelectionTransformerHelper::IsInitialized(TSA::GalleryItemSelectionTransformerHelper *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUIDPath::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUIDPath::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::GalleryItemSelectionTransformer::InternalSwap(TSA::GalleryItemSelectionTransformer *this, TSA::GalleryItemSelectionTransformer *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

TSP::UUIDPath *TSA::GalleryItemSelectionTransformerHelper::clear_displayed_item_uuid_path(TSA::GalleryItemSelectionTransformerHelper *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSA::GalleryItemSelectionTransformerHelper::clear_item_uuid_paths(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDPath::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSA::GalleryItemSelectionTransformerHelper *TSA::GalleryItemSelectionTransformerHelper::GalleryItemSelectionTransformerHelper(TSA::GalleryItemSelectionTransformerHelper *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510C00;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_GalleryItemSelectionTransformerHelper_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSA::GalleryItemSelectionTransformerHelper *TSA::GalleryItemSelectionTransformerHelper::GalleryItemSelectionTransformerHelper(TSA::GalleryItemSelectionTransformerHelper *this, const TSA::GalleryItemSelectionTransformerHelper *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510C00;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_2760FC0A4(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2760FB7E8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_2760EEDA8(_Unwind_Exception *a1)
{
  MEMORY[0x277C95910](v2, 0x10A1C40290C9B23);
  sub_2760FC020((v1 + 24));
  _Unwind_Resume(a1);
}

void TSA::GalleryItemSelectionTransformerHelper::~GalleryItemSelectionTransformerHelper(TSA::GalleryItemSelectionTransformerHelper *this)
{
  if (this != &TSA::_GalleryItemSelectionTransformerHelper_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x277C94E10]();
    MEMORY[0x277C95910](v2, 0x10A1C40290C9B23);
  }

  sub_2760D7438(this + 1);
  sub_2760FC020(this + 3);
}

{
  TSA::GalleryItemSelectionTransformerHelper::~GalleryItemSelectionTransformerHelper(this);

  JUMPOUT(0x277C95910);
}

void *TSA::GalleryItemSelectionTransformerHelper::default_instance(TSA::GalleryItemSelectionTransformerHelper *this)
{
  if (atomic_load_explicit(scc_info_GalleryItemSelectionTransformerHelper_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryItemSelectionTransformerHelper_default_instance_;
}

google::protobuf::internal *TSA::GalleryItemSelectionTransformerHelper::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2760FB2F0(a3, &v26))
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
        v15 = MEMORY[0x277C951A0](*(a1 + 24));
        LODWORD(v16) = v15;
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v15;
        v12 = v26;
LABEL_26:
        v11 = sub_27610D544(a3, v16, v12);
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

        v22 = MEMORY[0x277C951A0](v21);
        LODWORD(v20) = v22;
        *(a1 + 48) = v22;
        v5 = v26;
      }

      v10 = sub_27610D544(a3, v20, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2760FB5A0((a1 + 8));
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

unsigned __int8 *TSA::GalleryItemSelectionTransformerHelper::_InternalSerialize(TSA::GalleryItemSelectionTransformerHelper *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 6);
    *a2 = 10;
    v6 = *(v5 + 10);
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

    a2 = TSP::UUIDPath::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v14 = *(v13 + 10);
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

      a2 = TSP::UUIDPath::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::GalleryItemSelectionTransformerHelper::ByteSizeLong(TSA::GalleryItemSelectionTransformerHelper *this)
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
      v7 = TSP::UUIDPath::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 16))
  {
    v8 = TSP::UUIDPath::ByteSizeLong(*(this + 6));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSA::GalleryItemSelectionTransformerHelper::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryItemSelectionTransformerHelper::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *TSA::GalleryItemSelectionTransformerHelper::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryItemSelectionTransformerHelper::Clear(result);

    return TSA::GalleryItemSelectionTransformerHelper::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryItemSelectionTransformerHelper::CopyFrom(uint64_t *this, const TSA::GalleryItemSelectionTransformerHelper *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryItemSelectionTransformerHelper::Clear(this);

    return TSA::GalleryItemSelectionTransformerHelper::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSA::GalleryItemSelectionTransformerHelper::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2760D9190(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

TSP::DataReference *TSA::GalleryItemSetValueCommand_PropertyValue::clear_image_data(TSA::GalleryItemSetValueCommand_PropertyValue *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSA::GalleryItemSetValueCommand_PropertyValue *TSA::GalleryItemSetValueCommand_PropertyValue::GalleryItemSetValueCommand_PropertyValue(TSA::GalleryItemSetValueCommand_PropertyValue *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510CB0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryItemSetValueCommand_PropertyValue_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSA::GalleryItemSetValueCommand_PropertyValue *TSA::GalleryItemSetValueCommand_PropertyValue::GalleryItemSetValueCommand_PropertyValue(TSA::GalleryItemSetValueCommand_PropertyValue *this, const TSA::GalleryItemSetValueCommand_PropertyValue *a2)
{
  *(this + 1) = 0;
  *this = &unk_288510CB0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2760FB7E8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSA::GalleryItemSetValueCommand_PropertyValue::~GalleryItemSetValueCommand_PropertyValue(TSA::GalleryItemSetValueCommand_PropertyValue *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C95910](v2, 0x1012C40EC159624);
  }

  if (this != &TSA::_GalleryItemSetValueCommand_PropertyValue_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::DataReference::~DataReference(v3);
      MEMORY[0x277C95910]();
    }
  }

  sub_2760D7438(this + 1);
}

{
  TSA::GalleryItemSetValueCommand_PropertyValue::~GalleryItemSetValueCommand_PropertyValue(this);

  JUMPOUT(0x277C95910);
}

void *TSA::GalleryItemSetValueCommand_PropertyValue::default_instance(TSA::GalleryItemSetValueCommand_PropertyValue *this)
{
  if (atomic_load_explicit(scc_info_GalleryItemSetValueCommand_PropertyValue_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryItemSetValueCommand_PropertyValue_default_instance_;
}

uint64_t *TSA::GalleryItemSetValueCommand_PropertyValue::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = this[3] & 0xFFFFFFFFFFFFFFFELL;
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
      this = TSP::DataReference::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_2760FB834(v4);
  }

  return this;
}

google::protobuf::internal *TSA::GalleryItemSetValueCommand_PropertyValue::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_2760FB2F0(a3, &v17) & 1) == 0)
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
          sub_2760FB5A0((a1 + 8));
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

        v13 = MEMORY[0x277C95130](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v17;
      }

      v10 = sub_27610D954(a3, v11, v5);
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

unsigned __int8 *TSA::GalleryItemSetValueCommand_PropertyValue::_InternalSerialize(TSA::GalleryItemSetValueCommand_PropertyValue *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSP::DataReference::_InternalSerialize(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_2760D85BC(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSA::GalleryItemSetValueCommand_PropertyValue::ByteSizeLong(TSA::GalleryItemSetValueCommand_PropertyValue *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSP::DataReference::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSA::GalleryItemSetValueCommand_PropertyValue::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryItemSetValueCommand_PropertyValue::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryItemSetValueCommand_PropertyValue::MergeFrom(uint64_t this, const TSA::GalleryItemSetValueCommand_PropertyValue *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
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

        v6 = MEMORY[0x277C95130](v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 4))
      {
        v8 = *(a2 + 4);
      }

      else
      {
        v8 = MEMORY[0x277D80A30];
      }

      return TSP::DataReference::MergeFrom(v6, v8);
    }
  }

  return this;
}

uint64_t *TSA::GalleryItemSetValueCommand_PropertyValue::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryItemSetValueCommand_PropertyValue::Clear(result);

    return TSA::GalleryItemSetValueCommand_PropertyValue::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryItemSetValueCommand_PropertyValue::CopyFrom(uint64_t *this, const TSA::GalleryItemSetValueCommand_PropertyValue *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryItemSetValueCommand_PropertyValue::Clear(this);

    return TSA::GalleryItemSetValueCommand_PropertyValue::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GalleryItemSetValueCommand_PropertyValue::IsInitialized(TSA::GalleryItemSetValueCommand_PropertyValue *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = TSP::DataReference::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSA::GalleryItemSetValueCommand_PropertyValue::InternalSwap(TSA::GalleryItemSetValueCommand_PropertyValue *this, TSA::GalleryItemSetValueCommand_PropertyValue *a2)
{
  result = sub_2760D9190(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  return result;
}

TSK::CommandArchive *TSA::GalleryItemSetValueCommand::clear_super(TSA::GalleryItemSetValueCommand *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSA::GalleryItemSetValueCommand::clear_item_id_path(TSA::GalleryItemSetValueCommand *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSA::GalleryItemSetValueCommand *TSA::GalleryItemSetValueCommand::GalleryItemSetValueCommand(TSA::GalleryItemSetValueCommand *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510D60;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryItemSetValueCommand_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288510D60;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GalleryItemSetValueCommand_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSA::GalleryItemSetValueCommand *TSA::GalleryItemSetValueCommand::GalleryItemSetValueCommand(TSA::GalleryItemSetValueCommand *this, const TSA::GalleryItemSetValueCommand *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510D60;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 14) = *(a2 + 14);
  return this;
}

void TSA::GalleryItemSetValueCommand::~GalleryItemSetValueCommand(TSA::GalleryItemSetValueCommand *this)
{
  sub_2760F02C0(this);
  sub_2760D7438(this + 1);
}

{
  TSA::GalleryItemSetValueCommand::~GalleryItemSetValueCommand(this);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2760F02C0(uint64_t *result)
{
  if (result != &TSA::_GalleryItemSetValueCommand_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C94E10]();
      MEMORY[0x277C95910](v3, 0x10A1C40290C9B23);
    }

    v4 = v1[5];
    if (v4)
    {
      TSA::GalleryItemSetValueCommand_PropertyValue::~GalleryItemSetValueCommand_PropertyValue(v4);
      MEMORY[0x277C95910]();
    }

    result = v1[6];
    if (result)
    {
      TSA::GalleryItemSetValueCommand_PropertyValue::~GalleryItemSetValueCommand_PropertyValue(result);

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

uint64_t *TSA::GalleryItemSetValueCommand::default_instance(TSA::GalleryItemSetValueCommand *this)
{
  if (atomic_load_explicit(scc_info_GalleryItemSetValueCommand_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_GalleryItemSetValueCommand_default_instance_;
}

uint64_t *TSA::GalleryItemSetValueCommand::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
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
    this = TSP::UUIDPath::Clear(*(v1 + 32));
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

  this = TSK::CommandArchive::Clear(this[3]);
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
  this = TSA::GalleryItemSetValueCommand_PropertyValue::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSA::GalleryItemSetValueCommand_PropertyValue::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::GalleryItemSetValueCommand::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  while ((sub_2760FB2F0(a3, &v27) & 1) == 0)
  {
    v5 = (v27 + 1);
    v6 = *v27;
    if (*v27 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v7 - 128));
        v27 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v25;
        goto LABEL_7;
      }

      v5 = (v27 + 2);
    }

    v27 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 1u;
        v20 = *(a1 + 24);
        if (!v20)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C950D0](v21);
          LODWORD(v20) = v22;
          *(a1 + 24) = v22;
          v5 = v27;
        }

        v15 = sub_27610EBB4(a3, v20, v5);
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_47:
          if (v6)
          {
            v23 = (v6 & 7) == 4;
          }

          else
          {
            v23 = 1;
          }

          if (v23)
          {
            *(a3 + 80) = v6 - 1;
            return v27;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2760FB5A0((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_54;
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

          v14 = MEMORY[0x277C951A0](v13);
          LODWORD(v12) = v14;
          *(a1 + 32) = v14;
          v5 = v27;
        }

        v15 = sub_27610D544(a3, v12, v5);
      }

LABEL_54:
      v27 = v15;
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v8 != 3)
      {
        if (v8 == 4)
        {
          if (v6 != 34)
          {
            goto LABEL_47;
          }

          *(a1 + 16) |= 4u;
          v9 = *(a1 + 40);
          if (!v9)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v9 = google::protobuf::Arena::CreateMaybeMessage<TSA::GalleryItemSetValueCommand_PropertyValue>(v19);
            *(a1 + 40) = v9;
LABEL_39:
            v5 = v27;
          }
        }

        else
        {
          if (v8 != 5 || v6 != 42)
          {
            goto LABEL_47;
          }

          *(a1 + 16) |= 8u;
          v9 = *(a1 + 48);
          if (!v9)
          {
            v10 = *(a1 + 8);
            if (v10)
            {
              v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
            }

            v9 = google::protobuf::Arena::CreateMaybeMessage<TSA::GalleryItemSetValueCommand_PropertyValue>(v10);
            *(a1 + 48) = v9;
            goto LABEL_39;
          }
        }

        v15 = sub_27610DC94(a3, v9, v5);
        goto LABEL_54;
      }

      if (v6 != 24)
      {
        goto LABEL_47;
      }

      v17 = (v5 + 1);
      v16 = *v5;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v5 + 2);
LABEL_31:
        v27 = v17;
        goto LABEL_32;
      }

      v27 = google::protobuf::internal::VarintParseSlow64(v5, v16);
      if (!v27)
      {
        return 0;
      }

LABEL_32:
      if (v16 > 2)
      {
        sub_27610E350();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 56) = v16;
      }
    }
  }

  return v27;
}

unsigned __int8 *TSA::GalleryItemSetValueCommand::_InternalSerialize(TSA::GalleryItemSetValueCommand *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

LABEL_27:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v18 = *(this + 14);
      *a2 = 24;
      if (v18 > 0x7F)
      {
        a2[1] = v18 | 0x80;
        v19 = v18 >> 7;
        if (v18 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v19 | 0x80;
            v20 = v19 >> 7;
            ++a2;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
          *(a2 - 1) = v20;
          if ((v5 & 4) != 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          a2[2] = v19;
          a2 += 3;
          if ((v5 & 4) != 0)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        a2[1] = v18;
        a2 += 2;
        if ((v5 & 4) != 0)
        {
          goto LABEL_38;
        }
      }

LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_48;
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

  v12 = *(this + 4);
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

  a2 = TSP::UUIDPath::_InternalSerialize(v12, v14, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  if ((v5 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 5);
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

  a2 = TSA::GalleryItemSetValueCommand_PropertyValue::_InternalSerialize(v22, v24, a3);
  if ((v5 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v28 = *(this + 6);
    *a2 = 42;
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

    a2 = TSA::GalleryItemSetValueCommand_PropertyValue::_InternalSerialize(v28, v30, a3);
  }

LABEL_58:
  v34 = *(this + 1);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v34 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::GalleryItemSetValueCommand::ByteSizeLong(TSA::GalleryItemSetValueCommand *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x1E) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSP::UUIDPath::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v6 = TSA::GalleryItemSetValueCommand_PropertyValue::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_17;
      }

LABEL_13:
      v8 = *(this + 14);
      if (v8 < 0)
      {
        v9 = 11;
      }

      else
      {
        v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v9;
      goto LABEL_17;
    }

LABEL_12:
    v7 = TSA::GalleryItemSetValueCommand_PropertyValue::ByteSizeLong(*(this + 6));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

LABEL_17:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSA::GalleryItemSetValueCommand::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::GalleryItemSetValueCommand::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::GalleryItemSetValueCommand::MergeFrom(uint64_t this, const TSA::GalleryItemSetValueCommand *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
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

        v6 = MEMORY[0x277C950D0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277C951A0](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A10];
      }

      this = TSP::UUIDPath::MergeFrom(v9, v11);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSA::GalleryItemSetValueCommand_PropertyValue>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TSA::_GalleryItemSetValueCommand_PropertyValue_default_instance_;
      }

      this = TSA::GalleryItemSetValueCommand_PropertyValue::MergeFrom(v12, v14);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
LABEL_26:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_25:
        *(v3 + 56) = *(a2 + 14);
        goto LABEL_26;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSA::GalleryItemSetValueCommand_PropertyValue>(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSA::_GalleryItemSetValueCommand_PropertyValue_default_instance_;
    }

    this = TSA::GalleryItemSetValueCommand_PropertyValue::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  return this;
}

uint64_t *TSA::GalleryItemSetValueCommand::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::GalleryItemSetValueCommand::Clear(result);

    return TSA::GalleryItemSetValueCommand::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::GalleryItemSetValueCommand::CopyFrom(uint64_t *this, const TSA::GalleryItemSetValueCommand *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::GalleryItemSetValueCommand::Clear(this);

    return TSA::GalleryItemSetValueCommand::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::GalleryItemSetValueCommand::IsInitialized(TSA::GalleryItemSetValueCommand *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::UUIDPath::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      v4 = *(this + 5);
      if ((*(v4 + 16) & 2) != 0)
      {
        result = TSP::DataReference::IsInitialized(*(v4 + 32));
        if (!result)
        {
          return result;
        }

        v3 = *(this + 4);
      }
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    v5 = *(this + 6);
    if ((*(v5 + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::DataReference::IsInitialized(*(v5 + 32));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSA::GalleryItemSetValueCommand::InternalSwap(TSA::GalleryItemSetValueCommand *this, TSA::GalleryItemSetValueCommand *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  return result;
}

TSP::UUID *TSA::CollaboratorGalleryItemCursor::clear_displayed_item_id(TSA::CollaboratorGalleryItemCursor *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSA::CollaboratorGalleryItemCursor::clear_item_ids(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSA::CollaboratorGalleryItemCursor *TSA::CollaboratorGalleryItemCursor::CollaboratorGalleryItemCursor(TSA::CollaboratorGalleryItemCursor *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510E10;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CollaboratorGalleryItemCursor_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSA::CollaboratorGalleryItemCursor *TSA::CollaboratorGalleryItemCursor::CollaboratorGalleryItemCursor(TSA::CollaboratorGalleryItemCursor *this, const TSA::CollaboratorGalleryItemCursor *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510E10;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_2760FBC3C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2760FB7E8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_2760F12A8(_Unwind_Exception *a1)
{
  MEMORY[0x277C95910](v2, 0x1081C40825B58B5);
  sub_2760FFE70((v1 + 24));
  _Unwind_Resume(a1);
}

void TSA::CollaboratorGalleryItemCursor::~CollaboratorGalleryItemCursor(TSA::CollaboratorGalleryItemCursor *this)
{
  if (this != &TSA::_CollaboratorGalleryItemCursor_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C95910]();
    }
  }

  sub_2760D7438(this + 1);
  sub_2760FFE70(this + 3);
}

{
  TSA::CollaboratorGalleryItemCursor::~CollaboratorGalleryItemCursor(this);

  JUMPOUT(0x277C95910);
}

void *TSA::CollaboratorGalleryItemCursor::default_instance(TSA::CollaboratorGalleryItemCursor *this)
{
  if (atomic_load_explicit(scc_info_CollaboratorGalleryItemCursor_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_CollaboratorGalleryItemCursor_default_instance_;
}

uint64_t *TSA::CollaboratorGalleryItemCursor::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::UUID::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return this;
}

google::protobuf::internal *TSA::CollaboratorGalleryItemCursor::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2760FB2F0(a3, &v26))
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
        v15 = MEMORY[0x277C95170](*(a1 + 24));
        LODWORD(v16) = v15;
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v15;
        v12 = v26;
LABEL_26:
        v11 = sub_27610ED54(a3, v16, v12);
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

        v22 = MEMORY[0x277C95170](v21);
        LODWORD(v20) = v22;
        *(a1 + 48) = v22;
        v5 = v26;
      }

      v10 = sub_27610ED54(a3, v20, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2760FB5A0((a1 + 8));
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

unsigned __int8 *TSA::CollaboratorGalleryItemCursor::_InternalSerialize(TSA::CollaboratorGalleryItemCursor *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 6);
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

    a2 = TSP::UUID::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::UUID::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::CollaboratorGalleryItemCursor::ByteSizeLong(TSA::CollaboratorGalleryItemCursor *this)
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
      v7 = TSP::UUID::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 16))
  {
    v8 = TSP::UUID::ByteSizeLong(*(this + 6));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSA::CollaboratorGalleryItemCursor::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::CollaboratorGalleryItemCursor::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::CollaboratorGalleryItemCursor::MergeFrom(uint64_t this, const TSA::CollaboratorGalleryItemCursor *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2760FBC3C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    v10 = *(a2 + 6);
    *(v3 + 16) |= 1u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C95170](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D809E0];
    }

    return TSP::UUID::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSA::CollaboratorGalleryItemCursor::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::CollaboratorGalleryItemCursor::Clear(result);

    return TSA::CollaboratorGalleryItemCursor::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::CollaboratorGalleryItemCursor::CopyFrom(uint64_t *this, const TSA::CollaboratorGalleryItemCursor *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::CollaboratorGalleryItemCursor::Clear(this);

    return TSA::CollaboratorGalleryItemCursor::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::CollaboratorGalleryItemCursor::IsInitialized(TSA::CollaboratorGalleryItemCursor *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::CollaboratorGalleryItemCursor::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2760D9190(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v8 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v8;
  return result;
}

TSP::DataReference *TSA::WebVideoInfo::clear_poster_image_data(TSA::WebVideoInfo *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::Attribution *TSA::WebVideoInfo::clear_attribution(TSA::WebVideoInfo *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::Attribution::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSA::WebVideoInfo *TSA::WebVideoInfo::WebVideoInfo(TSA::WebVideoInfo *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510EC0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_WebVideoInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSA::WebVideoInfo *TSA::WebVideoInfo::WebVideoInfo(TSA::WebVideoInfo *this, const TSA::WebVideoInfo *a2)
{
  *(this + 1) = 0;
  *this = &unk_288510EC0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2760FB7E8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  return this;
}

void TSA::WebVideoInfo::~WebVideoInfo(TSA::WebVideoInfo *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C95910](v2, 0x1012C40EC159624);
  }

  if (this != &TSA::_WebVideoInfo_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::DataReference::~DataReference(v3);
      MEMORY[0x277C95910]();
    }

    if (*(this + 5))
    {
      v4 = MEMORY[0x277C94830]();
      MEMORY[0x277C95910](v4, 0x1081C4037357357);
    }
  }

  sub_2760D7438(this + 1);
}

{
  TSA::WebVideoInfo::~WebVideoInfo(this);

  JUMPOUT(0x277C95910);
}

void *TSA::WebVideoInfo::default_instance(TSA::WebVideoInfo *this)
{
  if (atomic_load_explicit(scc_info_WebVideoInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_WebVideoInfo_default_instance_;
}

uint64_t *TSA::WebVideoInfo::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
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

    goto LABEL_14;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
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

LABEL_14:
  this = TSP::DataReference::Clear(this[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    this = TSD::Attribution::Clear(*(v1 + 40));
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::WebVideoInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  while ((sub_2760FB2F0(a3, &v21) & 1) == 0)
  {
    v5 = (v21 + 1);
    v6 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v21 + 2);
LABEL_6:
      v21 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v19;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
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

        v17 = MEMORY[0x277C95060](v16);
        LODWORD(v15) = v17;
        *(a1 + 40) = v17;
        v5 = v21;
      }

      v11 = sub_27610DD64(a3, v15, v5);
    }

    else if (v8 == 2)
    {
      if (v6 != 18)
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

        v14 = MEMORY[0x277C95130](v13);
        LODWORD(v12) = v14;
        *(a1 + 32) = v14;
        v5 = v21;
      }

      v11 = sub_27610D954(a3, v12, v5);
    }

    else
    {
      if (v8 != 1 || v6 != 10)
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
          return v21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2760FB5A0((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_33;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
    }

LABEL_33:
    v21 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v21;
}

unsigned __int8 *TSA::WebVideoInfo::_InternalSerialize(TSA::WebVideoInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2760D85BC(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_26;
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

  v7 = *(this + 4);
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

  v4 = TSP::DataReference::_InternalSerialize(v7, v9, a3);
  if ((v6 & 4) != 0)
  {
LABEL_16:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 5);
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

    v4 = TSD::Attribution::_InternalSerialize(v13, v15, a3);
  }

LABEL_26:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSA::WebVideoInfo::ByteSizeLong(TSA::WebVideoInfo *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_12;
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

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v7 = TSP::DataReference::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = TSD::Attribution::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSA::WebVideoInfo::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::WebVideoInfo::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::WebVideoInfo::MergeFrom(uint64_t this, const TSA::WebVideoInfo *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

        goto LABEL_17;
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

      v6 = MEMORY[0x277C95130](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80A30];
    }

    this = TSP::DataReference::MergeFrom(v6, v8);
    if ((v5 & 4) != 0)
    {
LABEL_17:
      *(v3 + 16) |= 4u;
      if (!*(v3 + 40))
      {
        v9 = *(v3 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v3 + 40) = MEMORY[0x277C95060](v9);
      }

      return MEMORY[0x2821E9A18]();
    }
  }

  return this;
}

uint64_t *TSA::WebVideoInfo::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::WebVideoInfo::Clear(result);

    return TSA::WebVideoInfo::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::WebVideoInfo::CopyFrom(uint64_t *this, const TSA::WebVideoInfo *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::WebVideoInfo::Clear(this);

    return TSA::WebVideoInfo::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::WebVideoInfo::IsInitialized(TSA::WebVideoInfo *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = TSP::DataReference::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::WebVideoInfo::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2760D9190(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[1].n128_u64[1];
  this[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v5;
  v6 = this[2].n128_u64[0];
  v7 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  return result;
}

void *TSA::CaptionPlacementArchive::CaptionPlacementArchive(void *result, uint64_t a2)
{
  *result = &unk_288510F70;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288510F70;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSA::CaptionPlacementArchive *TSA::CaptionPlacementArchive::CaptionPlacementArchive(TSA::CaptionPlacementArchive *this, const TSA::CaptionPlacementArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510F70;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2760FB7E8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSA::CaptionPlacementArchive::~CaptionPlacementArchive(TSA::CaptionPlacementArchive *this)
{
  sub_2760D7438(this + 1);
}

{
  sub_2760D7438(this + 1);
}

{
  sub_2760D7438(this + 1);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::CaptionPlacementArchive::default_instance(TSA::CaptionPlacementArchive *this)
{
  if (atomic_load_explicit(scc_info_CaptionPlacementArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_CaptionPlacementArchive_default_instance_;
}

uint64_t *TSA::CaptionPlacementArchive::Clear(TSA::CaptionPlacementArchive *this)
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
    return sub_2760FB834(result);
  }

  return result;
}

google::protobuf::internal *TSA::CaptionPlacementArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v24) & 1) == 0)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_12;
        }

        v5 |= 2u;
        v13 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_24;
        }

        v14 = *v13;
        v12 = (v12 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_24:
          v24 = v13;
          *(a1 + 28) = v12;
          goto LABEL_29;
        }

        v20 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v24 = v20;
        *(a1 + 28) = v21;
        if (!v20)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v8 >> 3 != 1 || v8 != 8)
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
            sub_2760FB5A0((a1 + 8));
          }

          v24 = google::protobuf::internal::UnknownFieldParse();
          if (!v24)
          {
LABEL_38:
            v24 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v5 |= 1u;
        v16 = (v7 + 1);
        LODWORD(v15) = *v7;
        if ((v15 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v17 = *v16;
        v15 = (v15 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_28:
          v24 = v16;
          *(a1 + 24) = v15;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v24 = v22;
        *(a1 + 24) = v23;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      if (sub_2760FB2F0(a3, &v24))
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

unsigned __int8 *TSA::CaptionPlacementArchive::_InternalSerialize(TSA::CaptionPlacementArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v12 = v9 >> 7;
        ++a2;
        v13 = v9 >> 14;
        v9 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::CaptionPlacementArchive::ByteSizeLong(TSA::CaptionPlacementArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_14;
  }

  if (v1)
  {
    v3 = *(this + 6);
    if (v3 < 0)
    {
      v2 = 11;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v4 = *(this + 7);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v5;
LABEL_14:
  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v2, this + 20);
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSA::CaptionPlacementArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::CaptionPlacementArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::CaptionPlacementArchive::MergeFrom(uint64_t this, const TSA::CaptionPlacementArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

TSA::CaptionPlacementArchive *TSA::CaptionPlacementArchive::CopyFrom(TSA::CaptionPlacementArchive *result, TSA::CaptionPlacementArchive *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::CaptionPlacementArchive::Clear(result);

    return TSA::CaptionPlacementArchive::MergeFrom(v4, a2);
  }

  return result;
}

TSA::CaptionPlacementArchive *TSA::CaptionPlacementArchive::CopyFrom(TSA::CaptionPlacementArchive *this, const TSA::CaptionPlacementArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::CaptionPlacementArchive::Clear(this);

    return TSA::CaptionPlacementArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSA::CaptionPlacementArchive::InternalSwap(TSA::CaptionPlacementArchive *this, TSA::CaptionPlacementArchive *a2)
{
  result = sub_2760D9190(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSWP::ShapeInfoArchive *TSA::CaptionInfoArchive::clear_super(TSA::CaptionInfoArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSWP::ShapeInfoArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSA::CaptionInfoArchive::clear_placement(TSA::CaptionInfoArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSA::CaptionInfoArchive *TSA::CaptionInfoArchive::CaptionInfoArchive(TSA::CaptionInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288511020;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CaptionInfoArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 1;
  return this;
}

TSA::CaptionInfoArchive *TSA::CaptionInfoArchive::CaptionInfoArchive(TSA::CaptionInfoArchive *this, const TSA::CaptionInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288511020;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  return this;
}

void TSA::CaptionInfoArchive::~CaptionInfoArchive(TSA::CaptionInfoArchive *this)
{
  if (this != &TSA::_CaptionInfoArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C94F60]();
      MEMORY[0x277C95910](v2, 0x10A1C4014782234);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C95910]();
    }
  }

  sub_2760D7438(this + 1);
}

{
  TSA::CaptionInfoArchive::~CaptionInfoArchive(this);

  JUMPOUT(0x277C95910);
}

void *TSA::CaptionInfoArchive::default_instance(TSA::CaptionInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_CaptionInfoArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_CaptionInfoArchive_default_instance_;
}

uint64_t *TSA::CaptionInfoArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSWP::ShapeInfoArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }

    *(v1 + 40) = 1;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::CaptionInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while ((sub_2760FB2F0(a3, &v26) & 1) == 0)
  {
    v5 = (v26 + 1);
    v6 = *v26;
    if (*v26 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v7 - 128));
        v26 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v23;
        goto LABEL_7;
      }

      v5 = (v26 + 2);
    }

    v26 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 24)
      {
        goto LABEL_13;
      }

      v15 = (v5 + 1);
      v16 = *v5;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v17 = *v15;
      v18 = (v17 << 7) + v16;
      v16 = (v18 - 128);
      if ((v17 & 0x80000000) == 0)
      {
        v15 = (v5 + 2);
LABEL_30:
        v26 = v15;
        goto LABEL_31;
      }

      v26 = google::protobuf::internal::VarintParseSlow64(v5, (v18 - 128));
      if (!v26)
      {
        return 0;
      }

      v16 = v24;
LABEL_31:
      if (TSD::CaptionOrTitleKind_IsValid(v16))
      {
        *(a1 + 16) |= 4u;
        *(a1 + 40) = v16;
      }

      else
      {
        sub_27610E350();
      }
    }

    else
    {
      if (v8 == 2)
      {
        if (v6 != 18)
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

          v14 = MEMORY[0x277C951B0](v13);
          LODWORD(v12) = v14;
          *(a1 + 32) = v14;
          v5 = v26;
        }

        v11 = sub_27610EC84(a3, v12, v5);
      }

      else
      {
        if (v8 != 1 || v6 != 10)
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
            return v26;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2760FB5A0((a1 + 8));
          }

          v11 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_38;
        }

        *(a1 + 16) |= 1u;
        v19 = *(a1 + 24);
        if (!v19)
        {
          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x277C951E0](v20);
          LODWORD(v19) = v21;
          *(a1 + 24) = v21;
          v5 = v26;
        }

        v11 = sub_27610DE34(a3, v19, v5);
      }

LABEL_38:
      v26 = v11;
      if (!v11)
      {
        return 0;
      }
    }
  }

  return v26;
}

unsigned __int8 *TSA::CaptionInfoArchive::_InternalSerialize(TSA::CaptionInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
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

  v12 = *(this + 4);
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
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 10);
    *a2 = 24;
    if (v18 > 0x7F)
    {
      a2[1] = v18 | 0x80;
      v19 = v18 >> 7;
      if (v18 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v19 | 0x80;
          v20 = v19 >> 7;
          ++a2;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
        *(a2 - 1) = v20;
      }

      else
      {
        a2[2] = v19;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v18;
      a2 += 2;
    }
  }

LABEL_34:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::CaptionInfoArchive::ByteSizeLong(TSA::CaptionInfoArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSWP::ShapeInfoArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
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

      v3 += v7;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSA::CaptionInfoArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::CaptionInfoArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::CaptionInfoArchive::MergeFrom(uint64_t this, const TSA::CaptionInfoArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
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

        v6 = MEMORY[0x277C951E0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D81070];
      }

      this = TSWP::ShapeInfoArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 10);
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

      v9 = MEMORY[0x277C951B0](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSA::CaptionInfoArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::CaptionInfoArchive::Clear(result);

    return TSA::CaptionInfoArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::CaptionInfoArchive::CopyFrom(uint64_t *this, const TSA::CaptionInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::CaptionInfoArchive::Clear(this);

    return TSA::CaptionInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::CaptionInfoArchive::IsInitialized(TSA::CaptionInfoArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSWP::ShapeInfoArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSA::CaptionInfoArchive::InternalSwap(TSA::CaptionInfoArchive *this, TSA::CaptionInfoArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TSD::InfoCommandArchive *TSA::TitlePlacementCommandArchive::clear_super(TSA::TitlePlacementCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::InfoCommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSA::TitlePlacementCommandArchive::clear_placement(TSA::TitlePlacementCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSA::TitlePlacementCommandArchive::clear_old_placement(TSA::TitlePlacementCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSA::TitlePlacementCommandArchive *TSA::TitlePlacementCommandArchive::TitlePlacementCommandArchive(TSA::TitlePlacementCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885110D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TitlePlacementCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 1;
  return this;
}

TSA::TitlePlacementCommandArchive *TSA::TitlePlacementCommandArchive::TitlePlacementCommandArchive(TSA::TitlePlacementCommandArchive *this, const TSA::TitlePlacementCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885110D0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  *(this + 12) = *(a2 + 12);
  return this;
}

void TSA::TitlePlacementCommandArchive::~TitlePlacementCommandArchive(TSA::TitlePlacementCommandArchive *this)
{
  if (this != &TSA::_TitlePlacementCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C948C0]();
      MEMORY[0x277C95910](v2, 0x10A1C40DFBAE579);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C95910]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C95910]();
    }
  }

  sub_2760D7438(this + 1);
}

{
  TSA::TitlePlacementCommandArchive::~TitlePlacementCommandArchive(this);

  JUMPOUT(0x277C95910);
}

void *TSA::TitlePlacementCommandArchive::default_instance(TSA::TitlePlacementCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_TitlePlacementCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_TitlePlacementCommandArchive_default_instance_;
}

uint64_t *TSA::TitlePlacementCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      this = TSD::InfoCommandArchive::Clear(this[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
LABEL_6:
          *(v1 + 48) = 1;
          goto LABEL_7;
        }

LABEL_5:
        this = TSP::Reference::Clear(*(v1 + 40));
        goto LABEL_6;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::TitlePlacementCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  while ((sub_2760FB2F0(a3, &v28) & 1) == 0)
  {
    v5 = (v28 + 1);
    v6 = *v28;
    if ((*v28 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v28 + 2);
LABEL_6:
      v28 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v7 - 128));
    v28 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v25;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_40;
        }

        *(a1 + 16) |= 2u;
        v14 = *(a1 + 32);
        if (!v14)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C951B0](v21);
          LODWORD(v14) = v22;
          *(a1 + 32) = v22;
LABEL_38:
          v5 = v28;
        }
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_40;
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

          v16 = MEMORY[0x277C951B0](v15);
          LODWORD(v14) = v16;
          *(a1 + 40) = v16;
          goto LABEL_38;
        }
      }

      v20 = sub_27610EC84(a3, v14, v5);
      goto LABEL_47;
    }

    if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_40;
      }

      *(a1 + 16) |= 1u;
      v17 = *(a1 + 24);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277C95080](v18);
        LODWORD(v17) = v19;
        *(a1 + 24) = v19;
        v5 = v28;
      }

      v20 = sub_27610DF04(a3, v17, v5);
LABEL_47:
      v28 = v20;
      if (!v20)
      {
        return 0;
      }
    }

    else
    {
      if (v8 != 2 || v6 != 16)
      {
LABEL_40:
        if (v6)
        {
          v23 = (v6 & 7) == 4;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          *(a3 + 80) = v6 - 1;
          return v28;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2760FB5A0((a1 + 8));
        }

        v20 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_47;
      }

      v10 = (v5 + 1);
      v11 = *v5;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      v12 = *v10;
      v13 = (v12 << 7) + v11;
      v11 = (v13 - 128);
      if ((v12 & 0x80000000) == 0)
      {
        v10 = (v5 + 2);
LABEL_17:
        v28 = v10;
        goto LABEL_18;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v5, (v13 - 128));
      if (!v28)
      {
        return 0;
      }

      v11 = v26;
LABEL_18:
      if (TSD::CaptionOrTitleKind_IsValid(v11))
      {
        *(a1 + 16) |= 8u;
        *(a1 + 48) = v11;
      }

      else
      {
        sub_27610E38C();
      }
    }
  }

  return v28;
}

unsigned __int8 *TSA::TitlePlacementCommandArchive::_InternalSerialize(TSA::TitlePlacementCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
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

    v12 = *(this + 12);
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

  v6 = *(this + 3);
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

  a2 = TSD::InfoCommandArchive::_InternalSerialize(v6, v8, a3);
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

  v16 = *(this + 4);
  *a2 = 26;
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
  if ((v5 & 4) != 0)
  {
LABEL_37:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v22, v24, a3);
  }

LABEL_47:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::TitlePlacementCommandArchive::ByteSizeLong(TSA::TitlePlacementCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::InfoCommandArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_15;
        }

LABEL_11:
        v7 = *(this + 12);
        if (v7 < 0)
        {
          v8 = 11;
        }

        else
        {
          v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
        }

        v3 += v8;
        goto LABEL_15;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v6 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_15:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSA::TitlePlacementCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::TitlePlacementCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::TitlePlacementCommandArchive::MergeFrom(uint64_t this, const TSA::TitlePlacementCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
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

        v6 = MEMORY[0x277C95080](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D804D8];
      }

      this = TSD::InfoCommandArchive::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D80A18];
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

        v10 = MEMORY[0x277C951B0](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = v9;
      }

      this = TSP::Reference::MergeFrom(v10, v12);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
LABEL_17:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_16:
        *(v3 + 48) = *(a2 + 12);
        goto LABEL_17;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C951B0](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = v9;
    }

    this = TSP::Reference::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return this;
}

uint64_t *TSA::TitlePlacementCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::TitlePlacementCommandArchive::Clear(result);

    return TSA::TitlePlacementCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::TitlePlacementCommandArchive::CopyFrom(uint64_t *this, const TSA::TitlePlacementCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::TitlePlacementCommandArchive::Clear(this);

    return TSA::TitlePlacementCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::TitlePlacementCommandArchive::IsInitialized(TSA::TitlePlacementCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::InfoCommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSA::TitlePlacementCommandArchive::InternalSwap(TSA::TitlePlacementCommandArchive *this, TSA::TitlePlacementCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  return result;
}

TSP::DataReference *TSA::Object3DInfo::clear_object_data(TSA::Object3DInfo *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Pose3D *TSA::Object3DInfo::clear_pose3d(TSA::Object3DInfo *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Pose3D::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Rect *TSA::Object3DInfo::clear_boundingrect(TSA::Object3DInfo *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Rect::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::DataReference *TSA::Object3DInfo::clear_thumbnail_image_data(TSA::Object3DInfo *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Path *TSA::Object3DInfo::clear_tracedpath(TSA::Object3DInfo *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSA::Object3DInfo *TSA::Object3DInfo::Object3DInfo(TSA::Object3DInfo *this, google::protobuf::Arena *a2)
{
  *this = &unk_288511180;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Object3DInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 50) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288511180;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Object3DInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 50) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSA::Object3DInfo *TSA::Object3DInfo::Object3DInfo(TSA::Object3DInfo *this, const TSA::Object3DInfo *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288511180;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSA::Object3DInfo::~Object3DInfo(TSA::Object3DInfo *this)
{
  sub_2760F4FAC(this);
  sub_2760D7438(this + 1);
}

{
  TSA::Object3DInfo::~Object3DInfo(this);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2760F4FAC(uint64_t *result)
{
  if (result != &TSA::_Object3DInfo_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::DataReference::~DataReference(v2);
      MEMORY[0x277C95910]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Pose3D::~Pose3D(v3);
      MEMORY[0x277C95910]();
    }

    if (v1[5])
    {
      v4 = MEMORY[0x277C94CD0]();
      MEMORY[0x277C95910](v4, 0x10A1C40DFBAE579);
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::DataReference::~DataReference(v5);
      MEMORY[0x277C95910]();
    }

    result = v1[7];
    if (result)
    {
      MEMORY[0x277C94C80]();

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

uint64_t *TSA::Object3DInfo::default_instance(TSA::Object3DInfo *this)
{
  if (atomic_load_explicit(scc_info_Object3DInfo_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_Object3DInfo_default_instance_;
}

uint64_t *TSA::Object3DInfo::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    this = TSP::DataReference::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      this = TSP::Rect::Clear(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::Pose3D::Clear(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  this = TSP::DataReference::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSP::Path::Clear(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 56) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::Object3DInfo::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v40) & 1) == 0)
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
        goto LABEL_76;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 1u;
          v11 = *(a1 + 24);
          if (!v11)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = MEMORY[0x277C95130](v24);
            LODWORD(v11) = v25;
            *(a1 + 24) = v25;
LABEL_43:
            v7 = v40;
          }

LABEL_44:
          v18 = sub_27610D954(a3, v11, v7);
          goto LABEL_68;
        }

        if (v10 != 2)
        {
          if (v10 != 3 || v8 != 26)
          {
            goto LABEL_61;
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

            v17 = MEMORY[0x277C95190](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
            v7 = v40;
          }

          v18 = sub_27610DFD4(a3, v15, v7);
          goto LABEL_68;
        }

        if (v8 != 16)
        {
          goto LABEL_61;
        }

        v5 |= 0x20u;
        v33 = (v7 + 1);
        v32 = *v7;
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_60;
        }

        v34 = *v33;
        v32 = (v34 << 7) + v32 - 128;
        if ((v34 & 0x80000000) == 0)
        {
          v33 = (v7 + 2);
LABEL_60:
          v40 = v33;
          *(a1 + 64) = v32 != 0;
          goto LABEL_69;
        }

        v38 = google::protobuf::internal::VarintParseSlow64(v7, v32);
        v40 = v38;
        *(a1 + 64) = v39 != 0;
        if (!v38)
        {
LABEL_76:
          v40 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v8 >> 3 <= 5)
        {
          if (v10 == 4)
          {
            if (v8 == 34)
            {
              *(a1 + 16) |= 4u;
              v26 = *(a1 + 40);
              if (!v26)
              {
                v27 = *(a1 + 8);
                if (v27)
                {
                  v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
                }

                v28 = MEMORY[0x277C95150](v27);
                LODWORD(v26) = v28;
                *(a1 + 40) = v28;
                v7 = v40;
              }

              v18 = sub_27610E0A4(a3, v26, v7);
              goto LABEL_68;
            }

            goto LABEL_61;
          }

          if (v10 != 5 || v8 != 42)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 8u;
          v11 = *(a1 + 48);
          if (!v11)
          {
            v12 = *(a1 + 8);
            if (v12)
            {
              v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = MEMORY[0x277C95130](v12);
            LODWORD(v11) = v13;
            *(a1 + 48) = v13;
            goto LABEL_43;
          }

          goto LABEL_44;
        }

        if (v10 != 6)
        {
          if (v10 == 7 && v8 == 58)
          {
            *(a1 + 16) |= 0x10u;
            v19 = *(a1 + 56);
            if (!v19)
            {
              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = MEMORY[0x277C95140](v20);
              LODWORD(v19) = v21;
              *(a1 + 56) = v21;
              v7 = v40;
            }

            v18 = sub_27610E174(a3, v19, v7);
            goto LABEL_68;
          }

LABEL_61:
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
            sub_2760FB5A0((a1 + 8));
          }

          v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_68:
          v40 = v18;
          if (!v18)
          {
            goto LABEL_76;
          }

          goto LABEL_69;
        }

        if (v8 != 48)
        {
          goto LABEL_61;
        }

        v5 |= 0x40u;
        v30 = (v7 + 1);
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_55;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v30 = (v7 + 2);
LABEL_55:
          v40 = v30;
          *(a1 + 65) = v29 != 0;
          goto LABEL_69;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v7, v29);
        v40 = v36;
        *(a1 + 65) = v37 != 0;
        if (!v36)
        {
          goto LABEL_76;
        }
      }

LABEL_69:
      if (sub_2760FB2F0(a3, &v40))
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

unsigned __int8 *TSA::Object3DInfo::_InternalSerialize(TSA::Object3DInfo *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSP::DataReference::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 64);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_22:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 4);
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

  a2 = TSP::Pose3D::_InternalSerialize(v13, v15, a3);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 5);
  *a2 = 34;
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

  a2 = TSP::Rect::_InternalSerialize(v19, v21, a3);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_42:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 6);
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

  a2 = TSP::DataReference::_InternalSerialize(v25, v27, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(this + 65);
  *a2 = 48;
  a2[1] = v31;
  a2 += 2;
  if ((v5 & 0x10) != 0)
  {
LABEL_55:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 7);
    *a2 = 58;
    v33 = *(v32 + 10);
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

    a2 = TSP::Path::_InternalSerialize(v32, v34, a3);
  }

LABEL_65:
  v38 = *(this + 1);
  if ((v38 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v38 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::Object3DInfo::ByteSizeLong(TSA::Object3DInfo *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v5 = TSP::DataReference::ByteSizeLong(*(this + 3));
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
    v6 = TSP::Pose3D::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v10 = TSP::DataReference::ByteSizeLong(*(this + 6));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = TSP::Rect::ByteSizeLong(*(this + 5));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v7 = TSP::Path::ByteSizeLong(*(this + 7));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v4 = v3 + ((v2 >> 5) & 2) + ((v2 >> 4) & 2);
LABEL_13:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSA::Object3DInfo::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::Object3DInfo::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::Object3DInfo::MergeFrom(uint64_t this, const TSA::Object3DInfo *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x7F) != 0)
  {
    v6 = MEMORY[0x277D80A30];
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

        v7 = MEMORY[0x277C95130](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::DataReference::MergeFrom(v7, v9);
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
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C95190](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = MEMORY[0x277D80A00];
    }

    this = TSP::Pose3D::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_38;
    }

LABEL_30:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C95150](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = MEMORY[0x277D809D0];
    }

    this = TSP::Rect::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_46;
    }

LABEL_38:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C95130](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v6;
    }

    this = TSP::DataReference::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_54;
    }

LABEL_46:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C95140](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = MEMORY[0x277D809C8];
    }

    this = TSP::Path::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_11:
      *(v3 + 65) = *(a2 + 65);
      goto LABEL_12;
    }

LABEL_54:
    *(v3 + 64) = *(a2 + 64);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t *TSA::Object3DInfo::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::Object3DInfo::Clear(result);

    return TSA::Object3DInfo::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::Object3DInfo::CopyFrom(uint64_t *this, const TSA::Object3DInfo *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::Object3DInfo::Clear(this);

    return TSA::Object3DInfo::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::Object3DInfo::IsInitialized(TSA::Object3DInfo *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::DataReference::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSP::Pose3D::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::Rect::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = TSP::Path::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::Object3DInfo::InternalSwap(TSA::Object3DInfo *this, TSA::Object3DInfo *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  LOWORD(v10) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v10;
  return result;
}

TSD::InfoCommandArchive *TSA::Object3DInfoCommandArchive::clear_super(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::InfoCommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSA::Object3DInfoCommandArchive::clear_info(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUIDPath *TSA::Object3DInfoCommandArchive::clear_info_id_path(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::DataReference *TSA::Object3DInfoCommandArchive::clear_thumbnail_image_data(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::DataReference *TSA::Object3DInfoCommandArchive::clear_old_thumbnail_image_data(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Pose3D *TSA::Object3DInfoCommandArchive::clear_pose3d(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Pose3D::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::Pose3D *TSA::Object3DInfoCommandArchive::clear_old_pose3d(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Pose3D::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Rect *TSA::Object3DInfoCommandArchive::clear_boundingrect(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Rect::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::Rect *TSA::Object3DInfoCommandArchive::clear_oldboundingrect(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Rect::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Path *TSA::Object3DInfoCommandArchive::clear_tracedpath(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSP::Path *TSA::Object3DInfoCommandArchive::clear_oldtracedpath(TSA::Object3DInfoCommandArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSA::Object3DInfoCommandArchive *TSA::Object3DInfoCommandArchive::Object3DInfoCommandArchive(TSA::Object3DInfoCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288511230;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Object3DInfoCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288511230;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Object3DInfoCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSA::Object3DInfoCommandArchive *TSA::Object3DInfoCommandArchive::Object3DInfoCommandArchive(TSA::Object3DInfoCommandArchive *this, const TSA::Object3DInfoCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288511230;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v5 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v5 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v5 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v5 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  return this;
}

void TSA::Object3DInfoCommandArchive::~Object3DInfoCommandArchive(TSA::Object3DInfoCommandArchive *this)
{
  sub_2760F6694(this);
  sub_2760D7438(this + 1);
}

{
  TSA::Object3DInfoCommandArchive::~Object3DInfoCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2760F6694(uint64_t *result)
{
  if (result != &TSA::_Object3DInfoCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C948C0]();
      MEMORY[0x277C95910](v2, 0x10A1C40DFBAE579);
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C95910]();
    }

    if (v1[5])
    {
      v4 = MEMORY[0x277C94E10]();
      MEMORY[0x277C95910](v4, 0x10A1C40290C9B23);
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::DataReference::~DataReference(v5);
      MEMORY[0x277C95910]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSP::DataReference::~DataReference(v6);
      MEMORY[0x277C95910]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSP::Pose3D::~Pose3D(v7);
      MEMORY[0x277C95910]();
    }

    v8 = v1[9];
    if (v8)
    {
      TSP::Pose3D::~Pose3D(v8);
      MEMORY[0x277C95910]();
    }

    if (v1[10])
    {
      v9 = MEMORY[0x277C94CD0]();
      MEMORY[0x277C95910](v9, 0x10A1C40DFBAE579);
    }

    if (v1[11])
    {
      v10 = MEMORY[0x277C94CD0]();
      MEMORY[0x277C95910](v10, 0x10A1C40DFBAE579);
    }

    if (v1[12])
    {
      v11 = MEMORY[0x277C94C80]();
      MEMORY[0x277C95910](v11, 0x10A1C40290C9B23);
    }

    result = v1[13];
    if (result)
    {
      MEMORY[0x277C94C80]();

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

uint64_t *TSA::Object3DInfoCommandArchive::default_instance(TSA::Object3DInfoCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_Object3DInfoCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_Object3DInfoCommandArchive_default_instance_;
}

uint64_t *TSA::Object3DInfoCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TSD::InfoCommandArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::Reference::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = TSP::UUIDPath::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = TSP::DataReference::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_25:
    this = TSP::Pose3D::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_24:
  this = TSP::DataReference::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_26:
  this = TSP::Pose3D::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::Rect::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_16;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSP::Rect::Clear(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSP::Path::Clear(*(v1 + 96));
  if ((v2 & 0x400) != 0)
  {
LABEL_15:
    this = TSP::Path::Clear(*(v1 + 104));
  }

LABEL_16:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::Object3DInfoCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  while ((sub_2760FB2F0(a3, &v44) & 1) == 0)
  {
    v5 = (v44 + 1);
    v6 = *v44;
    if ((*v44 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v44 + 2);
LABEL_6:
      v44 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v7 - 128));
    v44 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v24;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 5)
    {
      if (v6 >> 3 <= 8)
      {
        if (v8 == 6)
        {
          if (v6 != 50)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x20u;
          v30 = *(a1 + 64);
          if (!v30)
          {
            v38 = *(a1 + 8);
            if (v38)
            {
              v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
            }

            v39 = MEMORY[0x277C95190](v38);
            LODWORD(v30) = v39;
            *(a1 + 64) = v39;
LABEL_83:
            v5 = v44;
          }
        }

        else
        {
          if (v8 != 7)
          {
            if (v8 != 8 || v6 != 66)
            {
              goto LABEL_92;
            }

            *(a1 + 16) |= 0x80u;
            v9 = *(a1 + 80);
            if (!v9)
            {
              v10 = *(a1 + 8);
              if (v10)
              {
                v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
              }

              v11 = MEMORY[0x277C95150](v10);
              LODWORD(v9) = v11;
              *(a1 + 80) = v11;
              goto LABEL_90;
            }

            goto LABEL_91;
          }

          if (v6 != 58)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x40u;
          v30 = *(a1 + 72);
          if (!v30)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v32 = MEMORY[0x277C95190](v31);
            LODWORD(v30) = v32;
            *(a1 + 72) = v32;
            goto LABEL_83;
          }
        }

        v22 = sub_27610DFD4(a3, v30, v5);
        goto LABEL_99;
      }

      if (v8 == 9)
      {
        if (v6 != 74)
        {
          goto LABEL_92;
        }

        *(a1 + 16) |= 0x100u;
        v9 = *(a1 + 88);
        if (!v9)
        {
          v40 = *(a1 + 8);
          if (v40)
          {
            v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
          }

          v41 = MEMORY[0x277C95150](v40);
          LODWORD(v9) = v41;
          *(a1 + 88) = v41;
LABEL_90:
          v5 = v44;
        }

LABEL_91:
        v22 = sub_27610E0A4(a3, v9, v5);
        goto LABEL_99;
      }

      if (v8 == 10)
      {
        if (v6 != 82)
        {
          goto LABEL_92;
        }

        *(a1 + 16) |= 0x200u;
        v15 = *(a1 + 96);
        if (!v15)
        {
          v33 = *(a1 + 8);
          if (v33)
          {
            v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
          }

          v34 = MEMORY[0x277C95140](v33);
          LODWORD(v15) = v34;
          *(a1 + 96) = v34;
LABEL_70:
          v5 = v44;
        }
      }

      else
      {
        if (v8 != 11 || v6 != 90)
        {
          goto LABEL_92;
        }

        *(a1 + 16) |= 0x400u;
        v15 = *(a1 + 104);
        if (!v15)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C95140](v16);
          LODWORD(v15) = v17;
          *(a1 + 104) = v17;
          goto LABEL_70;
        }
      }

      v22 = sub_27610E174(a3, v15, v5);
      goto LABEL_99;
    }

    if (v6 >> 3 <= 2)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_92;
        }

        *(a1 + 16) |= 1u;
        v25 = *(a1 + 24);
        if (!v25)
        {
          v26 = *(a1 + 8);
          if (v26)
          {
            v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          v27 = MEMORY[0x277C95080](v26);
          LODWORD(v25) = v27;
          *(a1 + 24) = v27;
          v5 = v44;
        }

        v22 = sub_27610DF04(a3, v25, v5);
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_92:
          if (v6)
          {
            v42 = (v6 & 7) == 4;
          }

          else
          {
            v42 = 1;
          }

          if (v42)
          {
            *(a3 + 80) = v6 - 1;
            return v44;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2760FB5A0((a1 + 8));
          }

          v22 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_99;
        }

        *(a1 + 16) |= 2u;
        v19 = *(a1 + 32);
        if (!v19)
        {
          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x277C951B0](v20);
          LODWORD(v19) = v21;
          *(a1 + 32) = v21;
          v5 = v44;
        }

        v22 = sub_27610EC84(a3, v19, v5);
      }
    }

    else
    {
      if (v8 != 3)
      {
        if (v8 == 4)
        {
          if (v6 != 34)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 8u;
          v12 = *(a1 + 48);
          if (!v12)
          {
            v28 = *(a1 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            v29 = MEMORY[0x277C95130](v28);
            LODWORD(v12) = v29;
            *(a1 + 48) = v29;
LABEL_58:
            v5 = v44;
          }
        }

        else
        {
          if (v8 != 5 || v6 != 42)
          {
            goto LABEL_92;
          }

          *(a1 + 16) |= 0x10u;
          v12 = *(a1 + 56);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x277C95130](v13);
            LODWORD(v12) = v14;
            *(a1 + 56) = v14;
            goto LABEL_58;
          }
        }

        v22 = sub_27610D954(a3, v12, v5);
        goto LABEL_99;
      }

      if (v6 != 26)
      {
        goto LABEL_92;
      }

      *(a1 + 16) |= 4u;
      v35 = *(a1 + 40);
      if (!v35)
      {
        v36 = *(a1 + 8);
        if (v36)
        {
          v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
        }

        v37 = MEMORY[0x277C951A0](v36);
        LODWORD(v35) = v37;
        *(a1 + 40) = v37;
        v5 = v44;
      }

      v22 = sub_27610D544(a3, v35, v5);
    }

LABEL_99:
    v44 = v22;
    if (!v22)
    {
      return 0;
    }
  }

  return v44;
}

unsigned __int8 *TSA::Object3DInfoCommandArchive::_InternalSerialize(TSA::Object3DInfoCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSD::InfoCommandArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_33;
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

  v12 = *(this + 4);
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

    goto LABEL_43;
  }

LABEL_33:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 5);
  *a2 = 26;
  v19 = *(v18 + 10);
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

  a2 = TSP::UUIDPath::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 6);
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

  a2 = TSP::DataReference::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_53:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 7);
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

  a2 = TSP::DataReference::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_73;
  }

LABEL_63:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(this + 8);
  *a2 = 50;
  v37 = *(v36 + 5);
  if (v37 > 0x7F)
  {
    a2[1] = v37 | 0x80;
    v39 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = a2 + 3;
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
      a2[2] = v39;
      v38 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v37;
    v38 = a2 + 2;
  }

  a2 = TSP::Pose3D::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_83;
  }

LABEL_73:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 9);
  *a2 = 58;
  v43 = *(v42 + 5);
  if (v43 > 0x7F)
  {
    a2[1] = v43 | 0x80;
    v45 = v43 >> 7;
    if (v43 >> 14)
    {
      v44 = a2 + 3;
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
      a2[2] = v45;
      v44 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v43;
    v44 = a2 + 2;
  }

  a2 = TSP::Pose3D::_InternalSerialize(v42, v44, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_93;
  }

LABEL_83:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(this + 10);
  *a2 = 66;
  v49 = *(v48 + 5);
  if (v49 > 0x7F)
  {
    a2[1] = v49 | 0x80;
    v51 = v49 >> 7;
    if (v49 >> 14)
    {
      v50 = a2 + 3;
      do
      {
        *(v50 - 1) = v51 | 0x80;
        v52 = v51 >> 7;
        ++v50;
        v53 = v51 >> 14;
        v51 >>= 7;
      }

      while (v53);
      *(v50 - 1) = v52;
    }

    else
    {
      a2[2] = v51;
      v50 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v49;
    v50 = a2 + 2;
  }

  a2 = TSP::Rect::_InternalSerialize(v48, v50, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_103;
  }

LABEL_93:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v54 = *(this + 11);
  *a2 = 74;
  v55 = *(v54 + 5);
  if (v55 > 0x7F)
  {
    a2[1] = v55 | 0x80;
    v57 = v55 >> 7;
    if (v55 >> 14)
    {
      v56 = a2 + 3;
      do
      {
        *(v56 - 1) = v57 | 0x80;
        v58 = v57 >> 7;
        ++v56;
        v59 = v57 >> 14;
        v57 >>= 7;
      }

      while (v59);
      *(v56 - 1) = v58;
    }

    else
    {
      a2[2] = v57;
      v56 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v55;
    v56 = a2 + 2;
  }

  a2 = TSP::Rect::_InternalSerialize(v54, v56, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_113;
  }

LABEL_103:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v60 = *(this + 12);
  *a2 = 82;
  v61 = *(v60 + 10);
  if (v61 > 0x7F)
  {
    a2[1] = v61 | 0x80;
    v63 = v61 >> 7;
    if (v61 >> 14)
    {
      v62 = a2 + 3;
      do
      {
        *(v62 - 1) = v63 | 0x80;
        v64 = v63 >> 7;
        ++v62;
        v65 = v63 >> 14;
        v63 >>= 7;
      }

      while (v65);
      *(v62 - 1) = v64;
    }

    else
    {
      a2[2] = v63;
      v62 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v61;
    v62 = a2 + 2;
  }

  a2 = TSP::Path::_InternalSerialize(v60, v62, a3);
  if ((v5 & 0x400) != 0)
  {
LABEL_113:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v66 = *(this + 13);
    *a2 = 90;
    v67 = *(v66 + 10);
    if (v67 > 0x7F)
    {
      a2[1] = v67 | 0x80;
      v69 = v67 >> 7;
      if (v67 >> 14)
      {
        v68 = a2 + 3;
        do
        {
          *(v68 - 1) = v69 | 0x80;
          v70 = v69 >> 7;
          ++v68;
          v71 = v69 >> 14;
          v69 >>= 7;
        }

        while (v71);
        *(v68 - 1) = v70;
      }

      else
      {
        a2[2] = v69;
        v68 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v67;
      v68 = a2 + 2;
    }

    a2 = TSP::Path::_InternalSerialize(v66, v68, a3);
  }

LABEL_123:
  v72 = *(this + 1);
  if ((v72 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v72 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::Object3DInfoCommandArchive::ByteSizeLong(TSA::Object3DInfoCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::InfoCommandArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xFE) == 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 2) != 0)
  {
    v8 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v9 = TSP::UUIDPath::ByteSizeLong(*(this + 5));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = TSP::DataReference::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_24:
    v12 = TSP::Pose3D::ByteSizeLong(*(this + 8));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_11:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_23:
  v11 = TSP::DataReference::ByteSizeLong(*(this + 7));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v13 = TSP::Pose3D::ByteSizeLong(*(this + 9));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_12:
    v5 = TSP::Rect::ByteSizeLong(*(this + 10));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v2 & 0x700) == 0)
  {
    goto LABEL_18;
  }

  if ((v2 & 0x100) != 0)
  {
    v14 = TSP::Rect::ByteSizeLong(*(this + 11));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_16:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v15 = TSP::Path::ByteSizeLong(*(this + 12));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) != 0)
  {
LABEL_17:
    v6 = TSP::Path::ByteSizeLong(*(this + 13));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_18:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSA::Object3DInfoCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::Object3DInfoCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::Object3DInfoCommandArchive::MergeFrom(uint64_t this, const TSA::Object3DInfoCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_78;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C951B0](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_24;
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

    v6 = MEMORY[0x277C95080](v7);
    *(v3 + 24) = v6;
  }

  if (*(a2 + 3))
  {
    v8 = *(a2 + 3);
  }

  else
  {
    v8 = MEMORY[0x277D804D8];
  }

  this = TSD::InfoCommandArchive::MergeFrom(v6, v8);
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v5 & 4) != 0)
  {
LABEL_24:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C951A0](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = MEMORY[0x277D80A10];
    }

    this = TSP::UUIDPath::MergeFrom(v12, v14);
  }

LABEL_32:
  v15 = MEMORY[0x277D80A30];
  if ((v5 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C95130](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v15;
    }

    this = TSP::DataReference::MergeFrom(v16, v18);
  }

  if ((v5 & 0x10) != 0)
  {
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C95130](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = v15;
    }

    this = TSP::DataReference::MergeFrom(v19, v21);
  }

  v22 = MEMORY[0x277D80A00];
  if ((v5 & 0x20) != 0)
  {
    *(v3 + 16) |= 0x20u;
    v23 = *(v3 + 64);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277C95190](v24);
      *(v3 + 64) = v23;
    }

    if (*(a2 + 8))
    {
      v25 = *(a2 + 8);
    }

    else
    {
      v25 = v22;
    }

    this = TSP::Pose3D::MergeFrom(v23, v25);
    if ((v5 & 0x40) == 0)
    {
LABEL_52:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_70;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_52;
  }

  *(v3 + 16) |= 0x40u;
  v26 = *(v3 + 72);
  if (!v26)
  {
    v27 = *(v3 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = MEMORY[0x277C95190](v27);
    *(v3 + 72) = v26;
  }

  if (*(a2 + 9))
  {
    v28 = *(a2 + 9);
  }

  else
  {
    v28 = v22;
  }

  this = TSP::Pose3D::MergeFrom(v26, v28);
  if ((v5 & 0x80) != 0)
  {
LABEL_70:
    *(v3 + 16) |= 0x80u;
    v29 = *(v3 + 80);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277C95150](v30);
      *(v3 + 80) = v29;
    }

    if (*(a2 + 10))
    {
      v31 = *(a2 + 10);
    }

    else
    {
      v31 = MEMORY[0x277D809D0];
    }

    this = TSP::Rect::MergeFrom(v29, v31);
  }

LABEL_78:
  if ((v5 & 0x700) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 16) |= 0x100u;
      v32 = *(v3 + 88);
      if (!v32)
      {
        v33 = *(v3 + 8);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = MEMORY[0x277C95150](v33);
        *(v3 + 88) = v32;
      }

      if (*(a2 + 11))
      {
        v34 = *(a2 + 11);
      }

      else
      {
        v34 = MEMORY[0x277D809D0];
      }

      this = TSP::Rect::MergeFrom(v32, v34);
    }

    v35 = MEMORY[0x277D809C8];
    if ((v5 & 0x200) != 0)
    {
      *(v3 + 16) |= 0x200u;
      v36 = *(v3 + 96);
      if (!v36)
      {
        v37 = *(v3 + 8);
        if (v37)
        {
          v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
        }

        v36 = MEMORY[0x277C95140](v37);
        *(v3 + 96) = v36;
      }

      if (*(a2 + 12))
      {
        v38 = *(a2 + 12);
      }

      else
      {
        v38 = v35;
      }

      this = TSP::Path::MergeFrom(v36, v38);
    }

    if ((v5 & 0x400) != 0)
    {
      *(v3 + 16) |= 0x400u;
      v39 = *(v3 + 104);
      if (!v39)
      {
        v40 = *(v3 + 8);
        if (v40)
        {
          v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
        }

        v39 = MEMORY[0x277C95140](v40);
        *(v3 + 104) = v39;
      }

      if (*(a2 + 13))
      {
        v41 = *(a2 + 13);
      }

      else
      {
        v41 = v35;
      }

      return TSP::Path::MergeFrom(v39, v41);
    }
  }

  return this;
}

uint64_t *TSA::Object3DInfoCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::Object3DInfoCommandArchive::Clear(result);

    return TSA::Object3DInfoCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::Object3DInfoCommandArchive::CopyFrom(uint64_t *this, const TSA::Object3DInfoCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::Object3DInfoCommandArchive::Clear(this);

    return TSA::Object3DInfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::Object3DInfoCommandArchive::IsInitialized(TSA::Object3DInfoCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::InfoCommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::UUIDPath::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSP::Pose3D::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSP::Pose3D::IsInitialized(*(this + 9));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSP::Rect::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100) != 0)
    {
      result = TSP::Rect::IsInitialized(*(this + 11));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x200) != 0)
    {
      result = TSP::Path::IsInitialized(*(this + 12));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x400) == 0)
    {
      return 1;
    }

    result = TSP::Path::IsInitialized(*(this + 13));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSA::Object3DInfoCommandArchive::InternalSwap(TSA::Object3DInfoCommandArchive *this, TSA::Object3DInfoCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v7 = *(this + 5);
  v8 = *(this + 6);
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  v10 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  v13 = *(this + 11);
  v14 = *(this + 12);
  result = *(a2 + 88);
  *(this + 88) = result;
  *(a2 + 11) = v13;
  *(a2 + 12) = v14;
  v16 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v16;
  return result;
}

void *TSA::Object3DInfoSetValueCommandArchive_PropertyValue::Object3DInfoSetValueCommandArchive_PropertyValue(void *result, uint64_t a2)
{
  *result = &unk_2885112E0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2885112E0;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSA::Object3DInfoSetValueCommandArchive_PropertyValue *TSA::Object3DInfoSetValueCommandArchive_PropertyValue::Object3DInfoSetValueCommandArchive_PropertyValue(TSA::Object3DInfoSetValueCommandArchive_PropertyValue *this, const TSA::Object3DInfoSetValueCommandArchive_PropertyValue *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885112E0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2760FB7E8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSA::Object3DInfoSetValueCommandArchive_PropertyValue::~Object3DInfoSetValueCommandArchive_PropertyValue(TSA::Object3DInfoSetValueCommandArchive_PropertyValue *this)
{
  sub_2760D7438(this + 1);
}

{
  sub_2760D7438(this + 1);
}

{
  sub_2760D7438(this + 1);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::Object3DInfoSetValueCommandArchive_PropertyValue::default_instance(TSA::Object3DInfoSetValueCommandArchive_PropertyValue *this)
{
  if (atomic_load_explicit(scc_info_Object3DInfoSetValueCommandArchive_PropertyValue_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_Object3DInfoSetValueCommandArchive_PropertyValue_default_instance_;
}

uint64_t *TSA::Object3DInfoSetValueCommandArchive_PropertyValue::Clear(TSA::Object3DInfoSetValueCommandArchive_PropertyValue *this)
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
    return sub_2760FB834(result);
  }

  return result;
}

google::protobuf::internal *TSA::Object3DInfoSetValueCommandArchive_PropertyValue::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v18) & 1) == 0)
  {
    while (1)
    {
      v7 = (v18 + 1);
      v8 = *v18;
      if ((*v18 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v9 - 128));
      v18 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_30;
      }

      v7 = TagFallback;
      v8 = v15;
LABEL_7:
      if (v8 >> 3 == 10)
      {
        if (v8 == 85)
        {
          v5 |= 2u;
          *(a1 + 28) = *v7;
          v18 = (v7 + 4);
          goto LABEL_23;
        }

LABEL_16:
        if (v8)
        {
          v13 = (v8 & 7) == 4;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2760FB5A0((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        if (!v18)
        {
LABEL_30:
          v18 = 0;
          goto LABEL_2;
        }

        goto LABEL_23;
      }

      if (v8 >> 3 != 4 || v8 != 32)
      {
        goto LABEL_16;
      }

      v5 |= 1u;
      v11 = (v7 + 1);
      v10 = *v7;
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      v12 = *v11;
      v10 = (v12 << 7) + v10 - 128;
      if ((v12 & 0x80000000) == 0)
      {
        v11 = (v7 + 2);
LABEL_13:
        v18 = v11;
        *(a1 + 24) = v10 != 0;
        goto LABEL_23;
      }

      v16 = google::protobuf::internal::VarintParseSlow64(v7, v10);
      v18 = v16;
      *(a1 + 24) = v17 != 0;
      if (!v16)
      {
        goto LABEL_30;
      }

LABEL_23:
      if (sub_2760FB2F0(a3, &v18))
      {
        goto LABEL_2;
      }
    }

    v7 = (v18 + 2);
LABEL_6:
    v18 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v18;
}

unsigned __int8 *TSA::Object3DInfoSetValueCommandArchive_PropertyValue::_InternalSerialize(TSA::Object3DInfoSetValueCommandArchive_PropertyValue *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 24);
    *a2 = 32;
    a2[1] = v6;
    a2 += 2;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 7);
    *a2 = 85;
    *(a2 + 1) = v7;
    a2 += 5;
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::Object3DInfoSetValueCommandArchive_PropertyValue::ByteSizeLong(TSA::Object3DInfoSetValueCommandArchive_PropertyValue *this)
{
  v1 = *(this + 4);
  v2 = 2 * (v1 & 1);
  if ((v1 & 2) != 0)
  {
    v2 = (2 * (v1 & 1)) | 5;
  }

  if ((v1 & 3) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSA::Object3DInfoSetValueCommandArchive_PropertyValue::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::Object3DInfoSetValueCommandArchive_PropertyValue::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::Object3DInfoSetValueCommandArchive_PropertyValue::MergeFrom(uint64_t this, const TSA::Object3DInfoSetValueCommandArchive_PropertyValue *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 24);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 28) = *(a2 + 7);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSA::Object3DInfoSetValueCommandArchive_PropertyValue *TSA::Object3DInfoSetValueCommandArchive_PropertyValue::CopyFrom(TSA::Object3DInfoSetValueCommandArchive_PropertyValue *result, TSA::Object3DInfoSetValueCommandArchive_PropertyValue *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::Object3DInfoSetValueCommandArchive_PropertyValue::Clear(result);

    return TSA::Object3DInfoSetValueCommandArchive_PropertyValue::MergeFrom(v4, a2);
  }

  return result;
}

TSA::Object3DInfoSetValueCommandArchive_PropertyValue *TSA::Object3DInfoSetValueCommandArchive_PropertyValue::CopyFrom(TSA::Object3DInfoSetValueCommandArchive_PropertyValue *this, const TSA::Object3DInfoSetValueCommandArchive_PropertyValue *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::Object3DInfoSetValueCommandArchive_PropertyValue::Clear(this);

    return TSA::Object3DInfoSetValueCommandArchive_PropertyValue::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSA::Object3DInfoSetValueCommandArchive_PropertyValue::InternalSwap(TSA::Object3DInfoSetValueCommandArchive_PropertyValue *this, TSA::Object3DInfoSetValueCommandArchive_PropertyValue *a2)
{
  result = sub_2760D9190(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSK::CommandArchive *TSA::Object3DInfoSetValueCommandArchive::clear_super(TSA::Object3DInfoSetValueCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSA::Object3DInfoSetValueCommandArchive::clear_object_3d_info_id_path(TSA::Object3DInfoSetValueCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSA::Object3DInfoSetValueCommandArchive *TSA::Object3DInfoSetValueCommandArchive::Object3DInfoSetValueCommandArchive(TSA::Object3DInfoSetValueCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288511390;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Object3DInfoSetValueCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 14) = 3;
  return this;
}

TSA::Object3DInfoSetValueCommandArchive *TSA::Object3DInfoSetValueCommandArchive::Object3DInfoSetValueCommandArchive(TSA::Object3DInfoSetValueCommandArchive *this, const TSA::Object3DInfoSetValueCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288511390;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 14) = *(a2 + 14);
  return this;
}

void TSA::Object3DInfoSetValueCommandArchive::~Object3DInfoSetValueCommandArchive(TSA::Object3DInfoSetValueCommandArchive *this)
{
  sub_2760F8894(this);
  sub_2760D7438(this + 1);
}

{
  TSA::Object3DInfoSetValueCommandArchive::~Object3DInfoSetValueCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t sub_2760F8894(uint64_t result)
{
  if (result != &TSA::_Object3DInfoSetValueCommandArchive_default_instance_)
  {
    v1 = result;
    if (*(result + 24))
    {
      v2 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
    }

    result = v1[4];
    if (result)
    {
      v3 = MEMORY[0x277C94E10]();
      result = MEMORY[0x277C95910](v3, 0x10A1C40290C9B23);
    }

    v4 = v1[5];
    if (v4)
    {
      sub_2760D7438((v4 + 8));
      result = MEMORY[0x277C95910](v4, 0x1081C40E45386B4);
    }

    v5 = v1[6];
    if (v5)
    {
      sub_2760D7438((v5 + 8));

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

void *TSA::Object3DInfoSetValueCommandArchive::default_instance(TSA::Object3DInfoSetValueCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_Object3DInfoSetValueCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_Object3DInfoSetValueCommandArchive_default_instance_;
}

uint64_t *TSA::Object3DInfoSetValueCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) != 0)
  {
    if (v2)
    {
      this = TSK::CommandArchive::Clear(this[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = TSP::UUIDPath::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
LABEL_7:
        *(v1 + 56) = 3;
        goto LABEL_8;
      }

LABEL_6:
      this = TSA::Object3DInfoSetValueCommandArchive_PropertyValue::Clear(*(v1 + 48));
      goto LABEL_7;
    }

LABEL_14:
    this = TSA::Object3DInfoSetValueCommandArchive_PropertyValue::Clear(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::Object3DInfoSetValueCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  while ((sub_2760FB2F0(a3, &v32) & 1) == 0)
  {
    v5 = (v32 + 1);
    v6 = *v32;
    if (*v32 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v7 - 128));
        v32 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v27;
        goto LABEL_7;
      }

      v5 = (v32 + 2);
    }

    v32 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_51;
        }

        *(a1 + 16) |= 1u;
        v22 = *(a1 + 24);
        if (!v22)
        {
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = MEMORY[0x277C950D0](v23);
          LODWORD(v22) = v24;
          *(a1 + 24) = v24;
          v5 = v32;
        }

        v15 = sub_27610EBB4(a3, v22, v5);
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_51:
          if (v6)
          {
            v25 = (v6 & 7) == 4;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
            *(a3 + 80) = v6 - 1;
            return v32;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2760FB5A0((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_58;
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

          v14 = MEMORY[0x277C951A0](v13);
          LODWORD(v12) = v14;
          *(a1 + 32) = v14;
          v5 = v32;
        }

        v15 = sub_27610D544(a3, v12, v5);
      }

LABEL_58:
      v32 = v15;
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v8 != 3)
      {
        if (v8 == 4)
        {
          if (v6 != 34)
          {
            goto LABEL_51;
          }

          *(a1 + 16) |= 4u;
          v9 = *(a1 + 40);
          if (!v9)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v9 = google::protobuf::Arena::CreateMaybeMessage<TSA::Object3DInfoSetValueCommandArchive_PropertyValue>(v21);
            *(a1 + 40) = v9;
LABEL_43:
            v5 = v32;
          }
        }

        else
        {
          if (v8 != 5 || v6 != 42)
          {
            goto LABEL_51;
          }

          *(a1 + 16) |= 8u;
          v9 = *(a1 + 48);
          if (!v9)
          {
            v10 = *(a1 + 8);
            if (v10)
            {
              v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
            }

            v9 = google::protobuf::Arena::CreateMaybeMessage<TSA::Object3DInfoSetValueCommandArchive_PropertyValue>(v10);
            *(a1 + 48) = v9;
            goto LABEL_43;
          }
        }

        v15 = sub_27610E244(a3, v9, v5);
        goto LABEL_58;
      }

      if (v6 != 24)
      {
        goto LABEL_51;
      }

      v16 = (v5 + 1);
      v17 = *v5;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v18 = *v16;
      v19 = (v18 << 7) + v17;
      LODWORD(v17) = v19 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v16 = (v5 + 2);
LABEL_31:
        v32 = v16;
        goto LABEL_32;
      }

      v32 = google::protobuf::internal::VarintParseSlow64(v5, (v19 - 128));
      if (!v32)
      {
        return 0;
      }

      LODWORD(v17) = v30;
LABEL_32:
      if (v17 == 9 || v17 == 3)
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 56) = v17;
      }

      else
      {
        v28 = *(a1 + 8);
        if (v28)
        {
          v29 = ((v28 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v29 = sub_2760FB5A0((a1 + 8));
        }

        google::protobuf::UnknownFieldSet::AddVarint(v29);
      }
    }
  }

  return v32;
}

unsigned __int8 *TSA::Object3DInfoSetValueCommandArchive::_InternalSerialize(TSA::Object3DInfoSetValueCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

LABEL_27:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v18 = *(this + 14);
      *a2 = 24;
      if (v18 > 0x7F)
      {
        a2[1] = v18 | 0x80;
        v19 = v18 >> 7;
        if (v18 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v19 | 0x80;
            v20 = v19 >> 7;
            ++a2;
            v21 = v19 >> 14;
            v19 >>= 7;
          }

          while (v21);
          *(a2 - 1) = v20;
          if ((v5 & 4) != 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          a2[2] = v19;
          a2 += 3;
          if ((v5 & 4) != 0)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        a2[1] = v18;
        a2 += 2;
        if ((v5 & 4) != 0)
        {
          goto LABEL_38;
        }
      }

LABEL_5:
      if ((v5 & 8) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_48;
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

  v12 = *(this + 4);
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

  a2 = TSP::UUIDPath::_InternalSerialize(v12, v14, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  if ((v5 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 5);
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

  a2 = TSA::Object3DInfoSetValueCommandArchive_PropertyValue::_InternalSerialize(v22, v24, a3);
  if ((v5 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v28 = *(this + 6);
    *a2 = 42;
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

    a2 = TSA::Object3DInfoSetValueCommandArchive_PropertyValue::_InternalSerialize(v28, v30, a3);
  }

LABEL_58:
  v34 = *(this + 1);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v34 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}