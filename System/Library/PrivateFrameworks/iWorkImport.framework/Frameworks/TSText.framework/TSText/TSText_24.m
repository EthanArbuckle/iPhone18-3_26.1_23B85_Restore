uint64_t TSWP::ObjectPropertyArchive::RequiredFieldsByteSizeFallback(TSWP::ObjectPropertyArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    result = 0;
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  result = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) != 0)
  {
LABEL_7:
    v7 = *(this + 18);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    result += v8;
  }

  return result;
}

uint64_t TSWP::ObjectPropertyArchive::ByteSizeLong(TSP::UUIDPath **this)
{
  v2 = *(this + 4);
  if ((~v2 & 0x41) != 0)
  {
    v10 = TSWP::ObjectPropertyArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    v7 = *(this + 18);
    v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 10;
    }

    v10 = v5 + v6 + v9 + 2;
  }

  if ((v2 & 0x3E) == 0)
  {
    goto LABEL_16;
  }

  if ((v2 & 2) != 0)
  {
    v17 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    v18 = *(v17 + 23);
    v19 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v19 = v18;
    }

    v10 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_12:
      if ((v2 & 8) == 0)
      {
        goto LABEL_13;
      }

LABEL_30:
      v21 = TSD::FillArchive::ByteSizeLong(this[6]);
      v10 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x10) == 0)
      {
LABEL_14:
        if ((v2 & 0x20) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_12;
  }

  v20 = TSP::UUIDPath::ByteSizeLong(this[5]);
  v10 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_13:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_31:
  v22 = TSP::Color::ByteSizeLong(this[7]);
  v10 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_15:
    v11 = TSD::ShadowArchive::ByteSizeLong(this[8]);
    v10 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  v12 = v10 + ((v2 >> 6) & 2);
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v12 += 5;
    }

    if ((v2 & 0x200) != 0)
    {
      v13 = *(this + 21);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 11;
      }

      v12 += v15;
    }
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

uint64_t TSWP::ObjectPropertyArchive::MergeFrom(TSWP::ObjectPropertyArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ObjectPropertyArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ObjectPropertyArchive::MergeFrom(uint64_t this, const TSWP::ObjectPropertyArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
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
    this = google::protobuf::internal::ArenaStringPtr::Set();
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
    v6 = *(v3 + 40);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277CA3240](v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 5))
    {
      v8 = *(a2 + 5);
    }

    else
    {
      v8 = MEMORY[0x277D80A10];
    }

    this = TSP::UUIDPath::MergeFrom(v6, v8);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(v3 + 16) |= 8u;
    v9 = *(v3 + 48);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA3120](v10);
      *(v3 + 48) = v9;
    }

    if (*(a2 + 6))
    {
      v11 = *(a2 + 6);
    }

    else
    {
      v11 = MEMORY[0x277D80488];
    }

    this = TSD::FillArchive::MergeFrom(v9, v11);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(v3 + 16) |= 0x10u;
    v12 = *(v3 + 56);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA3210](v13);
      *(v3 + 56) = v12;
    }

    if (*(a2 + 7))
    {
      v14 = *(a2 + 7);
    }

    else
    {
      v14 = MEMORY[0x277D809E8];
    }

    this = TSP::Color::MergeFrom(v12, v14);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_55;
    }

LABEL_47:
    *(v3 + 16) |= 0x20u;
    v15 = *(v3 + 64);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277CA3140](v16);
      *(v3 + 64) = v15;
    }

    if (*(a2 + 8))
    {
      v17 = *(a2 + 8);
    }

    else
    {
      v17 = MEMORY[0x277D80498];
    }

    this = TSD::ShadowArchive::MergeFrom(v15, v17);
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
      *(v3 + 76) = *(a2 + 76);
      goto LABEL_13;
    }

LABEL_55:
    *(v3 + 72) = *(a2 + 18);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x300) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 80) = *(a2 + 20);
    }

    if ((v5 & 0x200) != 0)
    {
      *(v3 + 84) = *(a2 + 21);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSWP::ObjectPropertyArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ObjectPropertyArchive::Clear(this);

    return TSWP::ObjectPropertyArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ObjectPropertyArchive::CopyFrom(uint64_t *this, const TSWP::ObjectPropertyArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ObjectPropertyArchive::Clear(this);

    return TSWP::ObjectPropertyArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ObjectPropertyArchive::IsInitialized(TSWP::ObjectPropertyArchive *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0x41) != 0)
  {
    return 0;
  }

  if ((v1 & 4) != 0)
  {
    result = TSP::UUIDPath::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 8) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20) == 0)
  {
    return 1;
  }

  result = TSD::ShadowArchive::IsInitialized(*(this + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ObjectPropertyArchive::InternalSwap(TSWP::ObjectPropertyArchive *this, TSWP::ObjectPropertyArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
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
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  return result;
}

TSK::CommandArchive *TSWP::SetObjectPropertiesCommandArchive::clear_super(TSWP::SetObjectPropertiesCommandArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUIDPath *TSWP::SetObjectPropertiesCommandArchive::clear_object_uuid_path(TSWP::SetObjectPropertiesCommandArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::SetObjectPropertiesCommandArchive *TSWP::SetObjectPropertiesCommandArchive::SetObjectPropertiesCommandArchive(TSWP::SetObjectPropertiesCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288608BE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_SetObjectPropertiesCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = v3;
  return this;
}

void sub_276F1C608(_Unwind_Exception *a1)
{
  sub_276F2BDA8(v2);
  sub_276F2BDA8(v1);
  _Unwind_Resume(a1);
}

TSWP::SetObjectPropertiesCommandArchive *TSWP::SetObjectPropertiesCommandArchive::SetObjectPropertiesCommandArchive(TSWP::SetObjectPropertiesCommandArchive *this, const TSWP::SetObjectPropertiesCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288608BE0;
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
    sub_276F2BE2C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_276F2BE2C(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 1);
  if (v15)
  {
    sub_276EA4CDC(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 9) = MEMORY[0x277D80A90];
  v16 = *(a2 + 4);
  if (v16)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v16 = *(a2 + 4);
  }

  if ((v16 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v16 & 4) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  return this;
}

void sub_276F1C828(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v3, 0x10A1C40290C9B23);
  sub_276F2BDA8(v2);
  sub_276F2BDA8((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::SetObjectPropertiesCommandArchive::~SetObjectPropertiesCommandArchive(TSWP::SetObjectPropertiesCommandArchive *this)
{
  v2 = *(this + 9);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (this != &TSWP::_SetObjectPropertiesCommandArchive_default_instance_)
  {
    if (*(this + 10))
    {
      v3 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40C24530F0);
    }

    if (*(this + 11))
    {
      v4 = MEMORY[0x277CA2B90]();
      MEMORY[0x277CA3D00](v4, 0x10A1C40290C9B23);
    }
  }

  sub_276E4E808(this + 1);
  sub_276F2BDA8(this + 6);
  sub_276F2BDA8(this + 3);
}

{
  TSWP::SetObjectPropertiesCommandArchive::~SetObjectPropertiesCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::SetObjectPropertiesCommandArchive::default_instance(TSWP::SetObjectPropertiesCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_SetObjectPropertiesCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_SetObjectPropertiesCommandArchive_default_instance_;
}

uint64_t *TSWP::SetObjectPropertiesCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::ObjectPropertyArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      this = TSWP::ObjectPropertyArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 16);
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

  v11 = *(v1 + 72) & 0xFFFFFFFFFFFFFFFELL;
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
  this = TSK::CommandArchive::Clear(*(v1 + 80));
  if ((v8 & 4) != 0)
  {
LABEL_13:
    this = TSP::UUIDPath::Clear(*(v1 + 88));
  }

LABEL_14:
  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_276EA4D28(v9);
  }

  return this;
}

google::protobuf::internal *TSWP::SetObjectPropertiesCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v37 = a2;
  while (1)
  {
LABEL_2:
    if (sub_276EA4A1C(a3, &v37))
    {
      return v37;
    }

    v5 = (v37 + 1);
    v6 = *v37;
    if ((*v37 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v37 + 2);
LABEL_6:
      v37 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v37, (v7 - 128));
    v37 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v35;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      break;
    }

    if (v8 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_56;
      }

      v22 = (v5 - 1);
LABEL_37:
      v23 = (v22 + 1);
      v37 = (v22 + 1);
      v24 = *(a1 + 40);
      if (!v24)
      {
LABEL_38:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v24 = *(a1 + 40);
        v25 = *v24;
        goto LABEL_39;
      }

      v29 = *(a1 + 32);
      v25 = *v24;
      if (v29 >= *v24)
      {
        if (v25 == *(a1 + 36))
        {
          goto LABEL_38;
        }

LABEL_39:
        *v24 = v25 + 1;
        v26 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectPropertyArchive>(*(a1 + 24));
        v27 = *(a1 + 32);
        v28 = *(a1 + 40) + 8 * v27;
        *(a1 + 32) = v27 + 1;
        *(v28 + 8) = v26;
        v23 = v37;
      }

      else
      {
        *(a1 + 32) = v29 + 1;
        v26 = *&v24[2 * v29 + 2];
      }

      v22 = sub_276F58CD0(a3, v26, v23);
      v37 = v22;
      if (!v22)
      {
        return 0;
      }

      if (*a3 <= v22 || *v22 != 26)
      {
        continue;
      }

      goto LABEL_37;
    }

    if (v8 != 4)
    {
      if (v8 == 5 && v6 == 42)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v37 = (v9 + 1);
          v11 = *(a1 + 64);
          if (!v11)
          {
            goto LABEL_14;
          }

          v16 = *(a1 + 56);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 56) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
            goto LABEL_18;
          }

          if (v12 == *(a1 + 60))
          {
LABEL_14:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v11 = *(a1 + 64);
            v12 = *v11;
          }

          *v11 = v12 + 1;
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectPropertyArchive>(*(a1 + 48));
          v14 = *(a1 + 56);
          v15 = *(a1 + 64) + 8 * v14;
          *(a1 + 56) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v37;
LABEL_18:
          v9 = sub_276F58CD0(a3, v13, v10);
          v37 = v9;
          if (!v9)
          {
            return 0;
          }

          if (*a3 <= v9 || *v9 != 42)
          {
            goto LABEL_2;
          }
        }
      }

      goto LABEL_56;
    }

    if (v6 != 34)
    {
      goto LABEL_56;
    }

    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Mutable();
    v21 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_63:
    v37 = v21;
    if (!v21)
    {
      return 0;
    }
  }

  if (v8 == 1)
  {
    if (v6 == 10)
    {
      *(a1 + 16) |= 2u;
      v30 = *(a1 + 80);
      if (!v30)
      {
        v31 = *(a1 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = MEMORY[0x277CA31C0](v31);
        LODWORD(v30) = v32;
        *(a1 + 80) = v32;
        v5 = v37;
      }

      v21 = sub_276F58170(a3, v30, v5);
      goto LABEL_63;
    }
  }

  else if (v8 == 2 && v6 == 18)
  {
    *(a1 + 16) |= 4u;
    v18 = *(a1 + 88);
    if (!v18)
    {
      v19 = *(a1 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = MEMORY[0x277CA3240](v19);
      LODWORD(v18) = v20;
      *(a1 + 88) = v20;
      v5 = v37;
    }

    v21 = sub_276F58240(a3, v18, v5);
    goto LABEL_63;
  }

LABEL_56:
  if (v6)
  {
    v33 = (v6 & 7) == 4;
  }

  else
  {
    v33 = 1;
  }

  if (!v33)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_276EA4A94((a1 + 8));
    }

    v21 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_63;
  }

  *(a3 + 80) = v6 - 1;
  return v37;
}

unsigned __int8 *TSWP::SetObjectPropertiesCommandArchive::_InternalSerialize(TSWP::SetObjectPropertiesCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 10);
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

    v4 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 11);
    *v4 = 18;
    v14 = *(v13 + 10);
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

    v4 = TSP::UUIDPath::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(this + 8);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v21 = *(*(this + 5) + 8 * i + 8);
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

      v4 = TSWP::ObjectPropertyArchive::_InternalSerialize(v21, v23, a3);
    }
  }

  if (v6)
  {
    v4 = sub_276E5154C(a3, 4, (*(this + 9) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v27 = *(this + 14);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v29 = *(*(this + 8) + 8 * j + 8);
      *v4 = 42;
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

      v4 = TSWP::ObjectPropertyArchive::_InternalSerialize(v29, v31, a3);
    }
  }

  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::SetObjectPropertiesCommandArchive::RequiredFieldsByteSizeFallback(TSWP::SetObjectPropertiesCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) == 0)
  {
    v3 = 0;
    if ((v2 & 4) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSK::CommandArchive::ByteSizeLong(*(this + 10));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 4) != 0)
  {
LABEL_5:
    v5 = TSP::UUIDPath::ByteSizeLong(*(this + 11));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSWP::SetObjectPropertiesCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    v4 = TSWP::SetObjectPropertiesCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[10]);
    v3 = TSP::UUIDPath::ByteSizeLong(this[11]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v5 = *(this + 8);
  v6 = v4 + v5;
  v7 = this[5];
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = TSWP::ObjectPropertyArchive::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(this + 14);
  v13 = v6 + v12;
  v14 = this[8];
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
      v18 = TSWP::ObjectPropertyArchive::ByteSizeLong(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  if (this[2])
  {
    v19 = this[9] & 0xFFFFFFFFFFFFFFFELL;
    v20 = *(v19 + 23);
    v21 = *(v19 + 8);
    if ((v20 & 0x80u) == 0)
    {
      v21 = v20;
    }

    v13 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v13, this + 20);
  }

  else
  {
    *(this + 5) = v13;
    return v13;
  }
}

uint64_t TSWP::SetObjectPropertiesCommandArchive::MergeFrom(TSWP::SetObjectPropertiesCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::SetObjectPropertiesCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::SetObjectPropertiesCommandArchive::MergeFrom(uint64_t this, const TSWP::SetObjectPropertiesCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276F2BE2C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_276F2BE2C(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 7) != 0)
  {
    if (v15)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
          return this;
        }

        goto LABEL_23;
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

      v16 = MEMORY[0x277CA31C0](v17);
      *(v3 + 80) = v16;
    }

    if (*(a2 + 10))
    {
      v18 = *(a2 + 10);
    }

    else
    {
      v18 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v16, v18);
    if ((v15 & 4) != 0)
    {
LABEL_23:
      *(v3 + 16) |= 4u;
      v19 = *(v3 + 88);
      if (!v19)
      {
        v20 = *(v3 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277CA3240](v20);
        *(v3 + 88) = v19;
      }

      if (*(a2 + 11))
      {
        v21 = *(a2 + 11);
      }

      else
      {
        v21 = MEMORY[0x277D80A10];
      }

      return TSP::UUIDPath::MergeFrom(v19, v21);
    }
  }

  return this;
}

uint64_t *TSWP::SetObjectPropertiesCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::SetObjectPropertiesCommandArchive::Clear(this);

    return TSWP::SetObjectPropertiesCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::SetObjectPropertiesCommandArchive::CopyFrom(uint64_t *this, const TSWP::SetObjectPropertiesCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::SetObjectPropertiesCommandArchive::Clear(this);

    return TSWP::SetObjectPropertiesCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::SetObjectPropertiesCommandArchive::IsInitialized(TSWP::SetObjectPropertiesCommandArchive *this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSWP::ObjectPropertyArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSWP::ObjectPropertyArchive::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 4);
  if ((v9 & 2) != 0)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 4) == 0)
  {
    return 1;
  }

  result = TSP::UUIDPath::IsInitialized(*(this + 11));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::SetObjectPropertiesCommandArchive::InternalSwap(TSWP::SetObjectPropertiesCommandArchive *this, TSWP::SetObjectPropertiesCommandArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 10);
  v11 = *(this + 11);
  result = *(a2 + 5);
  *(this + 5) = result;
  *(a2 + 10) = v10;
  *(a2 + 11) = v11;
  return result;
}

TSK::CommandArchive *TSWP::UpdateFlowInfoCommandArchive::clear_super(TSWP::UpdateFlowInfoCommandArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSWP::UpdateFlowInfoCommandArchive::clear_flow_info_uuid_path(TSWP::UpdateFlowInfoCommandArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUIDPath *TSWP::UpdateFlowInfoCommandArchive::clear_text_box_id_path_to_add_or_remove(TSWP::UpdateFlowInfoCommandArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t TSWP::UpdateFlowInfoCommandArchive::clear_text_box_id_paths_at_start(uint64_t this)
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

uint64_t TSWP::UpdateFlowInfoCommandArchive::clear_suggested_text_box_id_paths_at_end(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDPath::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

uint64_t TSWP::UpdateFlowInfoCommandArchive::clear_undo_text_boxes_to_restore(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 88) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

TSP::Reference *TSWP::UpdateFlowInfoCommandArchive::clear_undo_added_shape_info(TSWP::UpdateFlowInfoCommandArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSWP::UpdateFlowInfoCommandArchive::clear_undo_removed_shape_info(TSWP::UpdateFlowInfoCommandArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSWP::UpdateFlowInfoCommandArchive *TSWP::UpdateFlowInfoCommandArchive::UpdateFlowInfoCommandArchive(TSWP::UpdateFlowInfoCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288608C90;
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
  if (atomic_load_explicit(scc_info_UpdateFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 124) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  return this;
}

void sub_276F1DB90(_Unwind_Exception *a1)
{
  sub_276EA5ECC(v3);
  sub_276F2BEEC(v2);
  sub_276F2BEEC(v1);
  _Unwind_Resume(a1);
}

TSWP::UpdateFlowInfoCommandArchive *TSWP::UpdateFlowInfoCommandArchive::UpdateFlowInfoCommandArchive(TSWP::UpdateFlowInfoCommandArchive *this, const TSWP::UpdateFlowInfoCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288608C90;
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
    sub_276F2BF70(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_276F2BF70(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_276EA5F50(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
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
    sub_276EA4CDC(v4, (v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v21 = *(a2 + 4);
  if (v21)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v21 & 2) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v21 & 4) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v21 & 8) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v21 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  *(this + 34) = *(a2 + 34);
  return this;
}

void sub_276F1DEA4(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v4, 0x1081C407D3F2757);
  sub_276EA5ECC(v3);
  sub_276F2BEEC(v2);
  sub_276F2BEEC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::UpdateFlowInfoCommandArchive::~UpdateFlowInfoCommandArchive(TSWP::UpdateFlowInfoCommandArchive *this)
{
  sub_276F1DF90(this);
  sub_276E4E808(this + 1);
  sub_276EA5ECC(this + 9);
  sub_276F2BEEC(this + 6);
  sub_276F2BEEC(this + 3);
}

{
  TSWP::UpdateFlowInfoCommandArchive::~UpdateFlowInfoCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *sub_276F1DF90(void *result)
{
  if (result != &TSWP::_UpdateFlowInfoCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[12])
    {
      v2 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40C24530F0);
    }

    if (v1[13])
    {
      v3 = MEMORY[0x277CA2B90]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40290C9B23);
    }

    if (v1[14])
    {
      v4 = MEMORY[0x277CA2B90]();
      MEMORY[0x277CA3D00](v4, 0x10A1C40290C9B23);
    }

    v5 = v1[15];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277CA3D00]();
    }

    result = v1[16];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::UpdateFlowInfoCommandArchive::default_instance(TSWP::UpdateFlowInfoCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_UpdateFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UpdateFlowInfoCommandArchive_default_instance_;
}

uint64_t *TSWP::UpdateFlowInfoCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDPath::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 64) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::UUIDPath::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  v8 = *(v1 + 80);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 88) + 8);
    do
    {
      v10 = *v9++;
      this = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if ((v11 & 0x1F) == 0)
  {
    goto LABEL_20;
  }

  if (v11)
  {
    this = TSK::CommandArchive::Clear(*(v1 + 96));
    if ((v11 & 2) == 0)
    {
LABEL_16:
      if ((v11 & 4) == 0)
      {
        goto LABEL_17;
      }

LABEL_26:
      this = TSP::UUIDPath::Clear(*(v1 + 112));
      if ((v11 & 8) == 0)
      {
LABEL_18:
        if ((v11 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      goto LABEL_27;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

  this = TSP::UUIDPath::Clear(*(v1 + 104));
  if ((v11 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  if ((v11 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  this = TSP::Reference::Clear(*(v1 + 120));
  if ((v11 & 0x10) != 0)
  {
LABEL_19:
    this = TSP::Reference::Clear(*(v1 + 128));
  }

LABEL_20:
  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 128) = 0;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_276EA4D28(v12);
  }

  return this;
}

google::protobuf::internal *TSWP::UpdateFlowInfoCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v58 = a2;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (sub_276EA4A1C(a3, &v58))
      {
        return v58;
      }

      v5 = (v58 + 1);
      v6 = *v58;
      if ((*v58 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        v5 = (v58 + 2);
LABEL_6:
        v58 = v5;
        goto LABEL_7;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v58, (v7 - 128));
      v58 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v29;
LABEL_7:
      v8 = v6 >> 3;
      if (v6 >> 3 > 4)
      {
        if (v6 >> 3 > 6)
        {
          if (v8 != 7)
          {
            if (v8 == 8)
            {
              if (v6 != 66)
              {
                goto LABEL_100;
              }

              *(a1 + 16) |= 8u;
              v9 = *(a1 + 120);
              if (v9)
              {
                goto LABEL_99;
              }

              v54 = *(a1 + 8);
              if (v54)
              {
                v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
              }

              v55 = MEMORY[0x277CA3250](v54);
              LODWORD(v9) = v55;
              *(a1 + 120) = v55;
            }

            else
            {
              if (v8 != 9 || v6 != 74)
              {
                goto LABEL_100;
              }

              *(a1 + 16) |= 0x10u;
              v9 = *(a1 + 128);
              if (v9)
              {
                goto LABEL_99;
              }

              v10 = *(a1 + 8);
              if (v10)
              {
                v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
              }

              v11 = MEMORY[0x277CA3250](v10);
              LODWORD(v9) = v11;
              *(a1 + 128) = v11;
            }

            v5 = v58;
LABEL_99:
            v33 = sub_276F4F9E8(a3, v9, v5);
            goto LABEL_107;
          }

          if (v6 != 58)
          {
            goto LABEL_100;
          }

          v36 = v5 - 1;
          while (1)
          {
            v37 = (v36 + 1);
            v58 = (v36 + 1);
            v38 = *(a1 + 88);
            if (!v38)
            {
              goto LABEL_70;
            }

            v44 = *(a1 + 80);
            v39 = *v38;
            if (v44 < *v38)
            {
              *(a1 + 80) = v44 + 1;
              v41 = *&v38[2 * v44 + 2];
              goto LABEL_74;
            }

            if (v39 == *(a1 + 84))
            {
LABEL_70:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
              v38 = *(a1 + 88);
              v39 = *v38;
            }

            *v38 = v39 + 1;
            v40 = MEMORY[0x277CA3250](*(a1 + 72));
            LODWORD(v41) = v40;
            v42 = *(a1 + 80);
            v43 = *(a1 + 88) + 8 * v42;
            *(a1 + 80) = v42 + 1;
            *(v43 + 8) = v40;
            v37 = v58;
LABEL_74:
            v36 = sub_276F4F9E8(a3, v41, v37);
            v58 = v36;
            if (!v36)
            {
              return 0;
            }

            if (*a3 <= v36 || *v36 != 58)
            {
              goto LABEL_2;
            }
          }
        }

        if (v8 != 5)
        {
          if (v8 != 6 || v6 != 50)
          {
            goto LABEL_100;
          }

          v19 = v5 - 1;
          while (1)
          {
            v20 = (v19 + 1);
            v58 = (v19 + 1);
            v21 = *(a1 + 64);
            if (!v21)
            {
              goto LABEL_42;
            }

            v27 = *(a1 + 56);
            v22 = *v21;
            if (v27 < *v21)
            {
              *(a1 + 56) = v27 + 1;
              v24 = *&v21[2 * v27 + 2];
              goto LABEL_46;
            }

            if (v22 == *(a1 + 60))
            {
LABEL_42:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v21 = *(a1 + 64);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = MEMORY[0x277CA3240](*(a1 + 48));
            LODWORD(v24) = v23;
            v25 = *(a1 + 56);
            v26 = *(a1 + 64) + 8 * v25;
            *(a1 + 56) = v25 + 1;
            *(v26 + 8) = v23;
            v20 = v58;
LABEL_46:
            v19 = sub_276F58240(a3, v24, v20);
            v58 = v19;
            if (!v19)
            {
              return 0;
            }

            if (*a3 <= v19 || *v19 != 50)
            {
              goto LABEL_2;
            }
          }
        }

        if (v6 != 42)
        {
          goto LABEL_100;
        }

        v45 = v5 - 1;
        while (1)
        {
          v46 = (v45 + 1);
          v58 = (v45 + 1);
          v47 = *(a1 + 40);
          if (!v47)
          {
            goto LABEL_83;
          }

          v53 = *(a1 + 32);
          v48 = *v47;
          if (v53 < *v47)
          {
            *(a1 + 32) = v53 + 1;
            v50 = *&v47[2 * v53 + 2];
            goto LABEL_87;
          }

          if (v48 == *(a1 + 36))
          {
LABEL_83:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v47 = *(a1 + 40);
            v48 = *v47;
          }

          *v47 = v48 + 1;
          v49 = MEMORY[0x277CA3240](*(a1 + 24));
          LODWORD(v50) = v49;
          v51 = *(a1 + 32);
          v52 = *(a1 + 40) + 8 * v51;
          *(a1 + 32) = v51 + 1;
          *(v52 + 8) = v49;
          v46 = v58;
LABEL_87:
          v45 = sub_276F58240(a3, v50, v46);
          v58 = v45;
          if (!v45)
          {
            return 0;
          }

          if (*a3 <= v45 || *v45 != 42)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 >> 3 <= 2)
      {
        break;
      }

      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_100;
        }

        *(a1 + 16) |= 2u;
        v16 = *(a1 + 104);
        if (v16)
        {
          goto LABEL_66;
        }

        v34 = *(a1 + 8);
        if (v34)
        {
          v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = MEMORY[0x277CA3240](v34);
        LODWORD(v16) = v35;
        *(a1 + 104) = v35;
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_100;
        }

        *(a1 + 16) |= 4u;
        v16 = *(a1 + 112);
        if (v16)
        {
          goto LABEL_66;
        }

        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = MEMORY[0x277CA3240](v17);
        LODWORD(v16) = v18;
        *(a1 + 112) = v18;
      }

      v5 = v58;
LABEL_66:
      v33 = sub_276F58240(a3, v16, v5);
LABEL_107:
      v58 = v33;
      if (!v33)
      {
        return 0;
      }
    }

    if (v8 == 1)
    {
      break;
    }

    if (v8 != 2 || v6 != 16)
    {
      goto LABEL_100;
    }

    v14 = (v5 + 1);
    v13 = *v5;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v15 = *v14;
    v13 = (v15 << 7) + v13 - 128;
    if ((v15 & 0x80000000) == 0)
    {
      v14 = (v5 + 2);
LABEL_27:
      v58 = v14;
      goto LABEL_28;
    }

    v58 = google::protobuf::internal::VarintParseSlow64(v5, v13);
    if (!v58)
    {
      return 0;
    }

LABEL_28:
    if (v13 > 3)
    {
      sub_276F53EDC();
    }

    else
    {
      *(a1 + 16) |= 0x20u;
      *(a1 + 136) = v13;
    }
  }

  if (v6 == 10)
  {
    *(a1 + 16) |= 1u;
    v30 = *(a1 + 96);
    if (!v30)
    {
      v31 = *(a1 + 8);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277CA31C0](v31);
      LODWORD(v30) = v32;
      *(a1 + 96) = v32;
      v5 = v58;
    }

    v33 = sub_276F58170(a3, v30, v5);
    goto LABEL_107;
  }

LABEL_100:
  if (v6)
  {
    v56 = (v6 & 7) == 4;
  }

  else
  {
    v56 = 1;
  }

  if (!v56)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_276EA4A94((a1 + 8));
    }

    v33 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_107;
  }

  *(a3 + 80) = v6 - 1;
  return v58;
}

unsigned __int8 *TSWP::UpdateFlowInfoCommandArchive::_InternalSerialize(TSWP::UpdateFlowInfoCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 34);
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

  v6 = *(this + 12);
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
  if ((v5 & 0x20) != 0)
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

  v16 = *(this + 13);
  *a2 = 26;
  v17 = *(v16 + 10);
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

  a2 = TSP::UUIDPath::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) != 0)
  {
LABEL_37:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 14);
    *a2 = 34;
    v23 = *(v22 + 10);
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

    a2 = TSP::UUIDPath::_InternalSerialize(v22, v24, a3);
  }

LABEL_47:
  v28 = *(this + 8);
  if (v28)
  {
    for (i = 0; i != v28; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v30 = *(*(this + 5) + 8 * i + 8);
      *a2 = 42;
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
  }

  v36 = *(this + 14);
  if (v36)
  {
    for (j = 0; j != v36; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v38 = *(*(this + 8) + 8 * j + 8);
      *a2 = 50;
      v39 = *(v38 + 10);
      if (v39 > 0x7F)
      {
        a2[1] = v39 | 0x80;
        v41 = v39 >> 7;
        if (v39 >> 14)
        {
          v40 = a2 + 3;
          do
          {
            *(v40 - 1) = v41 | 0x80;
            v42 = v41 >> 7;
            ++v40;
            v43 = v41 >> 14;
            v41 >>= 7;
          }

          while (v43);
          *(v40 - 1) = v42;
        }

        else
        {
          a2[2] = v41;
          v40 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v39;
        v40 = a2 + 2;
      }

      a2 = TSP::UUIDPath::_InternalSerialize(v38, v40, a3);
    }
  }

  v44 = *(this + 20);
  if (v44)
  {
    for (k = 0; k != v44; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v46 = *(*(this + 11) + 8 * k + 8);
      *a2 = 58;
      v47 = *(v46 + 5);
      if (v47 > 0x7F)
      {
        a2[1] = v47 | 0x80;
        v49 = v47 >> 7;
        if (v47 >> 14)
        {
          v48 = a2 + 3;
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
          a2[2] = v49;
          v48 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v47;
        v48 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v46, v48, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v52 = *(this + 15);
    *a2 = 66;
    v53 = *(v52 + 5);
    if (v53 > 0x7F)
    {
      a2[1] = v53 | 0x80;
      v55 = v53 >> 7;
      if (v53 >> 14)
      {
        v54 = a2 + 3;
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
        a2[2] = v55;
        v54 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v53;
      v54 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v52, v54, a3);
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v58 = *(this + 16);
    *a2 = 74;
    v59 = *(v58 + 5);
    if (v59 > 0x7F)
    {
      a2[1] = v59 | 0x80;
      v61 = v59 >> 7;
      if (v59 >> 14)
      {
        v60 = a2 + 3;
        do
        {
          *(v60 - 1) = v61 | 0x80;
          v62 = v61 >> 7;
          ++v60;
          v63 = v61 >> 14;
          v61 >>= 7;
        }

        while (v63);
        *(v60 - 1) = v62;
      }

      else
      {
        a2[2] = v61;
        v60 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v59;
      v60 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v58, v60, a3);
  }

  v64 = *(this + 1);
  if ((v64 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v64 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UpdateFlowInfoCommandArchive::ByteSizeLong(TSWP::UpdateFlowInfoCommandArchive *this)
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
      v14 = TSP::UUIDPath::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 20);
  v16 = v9 + v15;
  v17 = *(this + 11);
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

  v22 = *(this + 4);
  if ((v22 & 0x3F) == 0)
  {
    goto LABEL_32;
  }

  if (v22)
  {
    v27 = TSK::CommandArchive::ByteSizeLong(*(this + 12));
    v16 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 2) == 0)
    {
LABEL_24:
      if ((v22 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_36;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_24;
  }

  v28 = TSP::UUIDPath::ByteSizeLong(*(this + 13));
  v16 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 4) == 0)
  {
LABEL_25:
    if ((v22 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_37;
  }

LABEL_36:
  v29 = TSP::UUIDPath::ByteSizeLong(*(this + 14));
  v16 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 8) == 0)
  {
LABEL_26:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_27;
    }

LABEL_38:
    v31 = TSP::Reference::ByteSizeLong(*(this + 16));
    v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x20) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_32;
  }

LABEL_37:
  v30 = TSP::Reference::ByteSizeLong(*(this + 15));
  v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x10) != 0)
  {
    goto LABEL_38;
  }

LABEL_27:
  if ((v22 & 0x20) != 0)
  {
LABEL_28:
    v23 = *(this + 34);
    v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v23 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 11;
    }

    v16 += v25;
  }

LABEL_32:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v16, this + 20);
  }

  else
  {
    *(this + 5) = v16;
    return v16;
  }
}

uint64_t TSWP::UpdateFlowInfoCommandArchive::MergeFrom(TSWP::UpdateFlowInfoCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UpdateFlowInfoCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UpdateFlowInfoCommandArchive::MergeFrom(uint64_t this, const TSWP::UpdateFlowInfoCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276F2BF70(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 14);
  if (v10)
  {
    v11 = *(a2 + 8);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_276F2BF70(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_276EA5F50(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 4);
  if ((v20 & 0x3F) != 0)
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

        v21 = MEMORY[0x277CA31C0](v22);
        *(v3 + 96) = v21;
      }

      if (*(a2 + 12))
      {
        v23 = *(a2 + 12);
      }

      else
      {
        v23 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v21, v23);
    }

    v24 = MEMORY[0x277D80A10];
    if ((v20 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v25 = *(v3 + 104);
      if (!v25)
      {
        v26 = *(v3 + 8);
        if (v26)
        {
          v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
        }

        v25 = MEMORY[0x277CA3240](v26);
        *(v3 + 104) = v25;
      }

      if (*(a2 + 13))
      {
        v27 = *(a2 + 13);
      }

      else
      {
        v27 = v24;
      }

      this = TSP::UUIDPath::MergeFrom(v25, v27);
    }

    if ((v20 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v28 = *(v3 + 112);
      if (!v28)
      {
        v29 = *(v3 + 8);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = MEMORY[0x277CA3240](v29);
        *(v3 + 112) = v28;
      }

      if (*(a2 + 14))
      {
        v30 = *(a2 + 14);
      }

      else
      {
        v30 = v24;
      }

      this = TSP::UUIDPath::MergeFrom(v28, v30);
    }

    v31 = MEMORY[0x277D80A18];
    if ((v20 & 8) != 0)
    {
      *(v3 + 16) |= 8u;
      v32 = *(v3 + 120);
      if (!v32)
      {
        v33 = *(v3 + 8);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = MEMORY[0x277CA3250](v33);
        *(v3 + 120) = v32;
      }

      if (*(a2 + 15))
      {
        v34 = *(a2 + 15);
      }

      else
      {
        v34 = v31;
      }

      this = TSP::Reference::MergeFrom(v32, v34);
      if ((v20 & 0x10) == 0)
      {
LABEL_42:
        if ((v20 & 0x20) == 0)
        {
LABEL_44:
          *(v3 + 16) |= v20;
          return this;
        }

LABEL_43:
        *(v3 + 136) = *(a2 + 34);
        goto LABEL_44;
      }
    }

    else if ((v20 & 0x10) == 0)
    {
      goto LABEL_42;
    }

    *(v3 + 16) |= 0x10u;
    v35 = *(v3 + 128);
    if (!v35)
    {
      v36 = *(v3 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277CA3250](v36);
      *(v3 + 128) = v35;
    }

    if (*(a2 + 16))
    {
      v37 = *(a2 + 16);
    }

    else
    {
      v37 = v31;
    }

    this = TSP::Reference::MergeFrom(v35, v37);
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  return this;
}

uint64_t *TSWP::UpdateFlowInfoCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UpdateFlowInfoCommandArchive::Clear(this);

    return TSWP::UpdateFlowInfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UpdateFlowInfoCommandArchive::CopyFrom(uint64_t *this, const TSWP::UpdateFlowInfoCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UpdateFlowInfoCommandArchive::Clear(this);

    return TSWP::UpdateFlowInfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::UpdateFlowInfoCommandArchive::IsInitialized(TSWP::UpdateFlowInfoCommandArchive *this)
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

  v5 = *(this + 14);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSP::UUIDPath::IsInitialized(*(*(this + 8) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(this + 20);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = TSP::Reference::IsInitialized(*(*(this + 11) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(this + 4);
  if (v12)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v12 = *(this + 4);
  }

  if ((v12 & 2) != 0)
  {
    result = TSP::UUIDPath::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v12 = *(this + 4);
  }

  if ((v12 & 4) != 0)
  {
    result = TSP::UUIDPath::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v12 = *(this + 4);
  }

  if ((v12 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v12 = *(this + 4);
  }

  if ((v12 & 0x10) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 16));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::UpdateFlowInfoCommandArchive::InternalSwap(TSWP::UpdateFlowInfoCommandArchive *this, TSWP::UpdateFlowInfoCommandArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  v11 = *(this + 12);
  v12 = *(this + 13);
  *(this + 6) = *(a2 + 6);
  *(a2 + 12) = v11;
  *(a2 + 13) = v12;
  v13 = *(this + 14);
  v14 = *(this + 15);
  result = *(a2 + 7);
  *(this + 7) = result;
  *(a2 + 14) = v13;
  *(a2 + 15) = v14;
  v16 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v16;
  LODWORD(v16) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v16;
  return result;
}

TSK::CommandArchive *TSWP::AddFlowInfoCommandArchive::clear_super(TSWP::AddFlowInfoCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::AddFlowInfoCommandArchive::clear_flow_info_to_add(TSWP::AddFlowInfoCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSWP::AddFlowInfoCommandArchive::clear_flow_info_archive(TSWP::AddFlowInfoCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSWP::AddFlowInfoCommandArchive::clear_working_undo_object(TSWP::AddFlowInfoCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSWP::AddFlowInfoCommandArchive *TSWP::AddFlowInfoCommandArchive::AddFlowInfoCommandArchive(TSWP::AddFlowInfoCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288608D40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AddFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288608D40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AddFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::AddFlowInfoCommandArchive *TSWP::AddFlowInfoCommandArchive::AddFlowInfoCommandArchive(TSWP::AddFlowInfoCommandArchive *this, const TSWP::AddFlowInfoCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288608D40;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 7) = *(a2 + 7);
  return this;
}

void TSWP::AddFlowInfoCommandArchive::~AddFlowInfoCommandArchive(TSWP::AddFlowInfoCommandArchive *this)
{
  sub_276F1FA1C(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::AddFlowInfoCommandArchive::~AddFlowInfoCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *sub_276F1FA1C(uint64_t *result)
{
  if (result != &TSWP::_AddFlowInfoCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40C24530F0);
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA3D00]();
    }

    result = v1[6];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

uint64_t *TSWP::AddFlowInfoCommandArchive::default_instance(TSWP::AddFlowInfoCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_AddFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_AddFlowInfoCommandArchive_default_instance_;
}

uint64_t *TSWP::AddFlowInfoCommandArchive::Clear(uint64_t *this)
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

LABEL_14:
    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_15;
  }

  this = TSK::CommandArchive::Clear(this[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  this = TSP::Reference::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Reference::Clear(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0x30) != 0)
  {
    *(v1 + 56) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::AddFlowInfoCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v36) & 1) == 0)
  {
    while (1)
    {
      v7 = (v36 + 1);
      v8 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v9 - 128));
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_67;
      }

      v7 = TagFallback;
      v8 = v31;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v17 = *(a1 + 24);
            if (!v17)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v19 = MEMORY[0x277CA31C0](v18);
              LODWORD(v17) = v19;
              *(a1 + 24) = v19;
              v7 = v36;
            }

            v20 = sub_276F58170(a3, v17, v7);
            goto LABEL_57;
          }
        }

        else if (v10 == 2)
        {
          if (v8 == 18)
          {
            *(a1 + 16) |= 2u;
            v12 = *(a1 + 32);
            if (!v12)
            {
              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = MEMORY[0x277CA3250](v24);
              LODWORD(v12) = v25;
              *(a1 + 32) = v25;
              goto LABEL_43;
            }

            goto LABEL_44;
          }
        }

        else if (v10 == 3 && v8 == 26)
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

            v14 = MEMORY[0x277CA3250](v13);
            LODWORD(v12) = v14;
            *(a1 + 40) = v14;
            goto LABEL_43;
          }

          goto LABEL_44;
        }

        goto LABEL_50;
      }

      if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_50;
        }

        v5 |= 0x10u;
        v21 = (v7 + 1);
        LODWORD(v22) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v23 = *v21;
        v22 = (v22 + (v23 << 7) - 128);
        if ((v23 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_37:
          v36 = v21;
          *(a1 + 56) = v22;
          goto LABEL_58;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v7, v22);
        v36 = v32;
        *(a1 + 56) = v33;
        if (!v32)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v10 != 5)
        {
          if (v10 == 6 && v8 == 50)
          {
            *(a1 + 16) |= 8u;
            v12 = *(a1 + 48);
            if (!v12)
            {
              v15 = *(a1 + 8);
              if (v15)
              {
                v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
              }

              v16 = MEMORY[0x277CA3250](v15);
              LODWORD(v12) = v16;
              *(a1 + 48) = v16;
LABEL_43:
              v7 = v36;
            }

LABEL_44:
            v20 = sub_276F4F9E8(a3, v12, v7);
LABEL_57:
            v36 = v20;
            if (!v20)
            {
              goto LABEL_67;
            }

            goto LABEL_58;
          }

LABEL_50:
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
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v20 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_57;
        }

        if (v8 != 40)
        {
          goto LABEL_50;
        }

        v5 |= 0x20u;
        v26 = (v7 + 1);
        LODWORD(v27) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        v28 = *v26;
        v27 = (v27 + (v28 << 7) - 128);
        if ((v28 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_49:
          v36 = v26;
          *(a1 + 60) = v27;
          goto LABEL_58;
        }

        v34 = google::protobuf::internal::VarintParseSlow32(v7, v27);
        v36 = v34;
        *(a1 + 60) = v35;
        if (!v34)
        {
LABEL_67:
          v36 = 0;
          goto LABEL_2;
        }
      }

LABEL_58:
      if (sub_276EA4A1C(a3, &v36))
      {
        goto LABEL_2;
      }
    }

    v7 = (v36 + 2);
LABEL_6:
    v36 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

unsigned __int8 *TSWP::AddFlowInfoCommandArchive::_InternalSerialize(TSWP::AddFlowInfoCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 3);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v9, v11, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
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

  v20 = *(this + 4);
  *a2 = 18;
  v21 = *(v20 + 5);
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

  a2 = TSP::Reference::_InternalSerialize(v20, v22, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_49:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(this + 14);
    *a2 = 32;
    if (v32 > 0x7F)
    {
      a2[1] = v32 | 0x80;
      v33 = v32 >> 7;
      if (v32 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v33 | 0x80;
          v34 = v33 >> 7;
          ++a2;
          v35 = v33 >> 14;
          v33 >>= 7;
        }

        while (v35);
        *(a2 - 1) = v34;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        a2[2] = v33;
        a2 += 3;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      a2[1] = v32;
      a2 += 2;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_60;
      }
    }

LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 5);
  *a2 = 26;
  v27 = *(v26 + 5);
  if (v27 > 0x7F)
  {
    a2[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = a2 + 3;
      do
      {
        *(v28 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++v28;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(v28 - 1) = v30;
    }

    else
    {
      a2[2] = v29;
      v28 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v27;
    v28 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v26, v28, a3);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_49;
  }

LABEL_5:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_6;
  }

LABEL_60:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v36 = *(this + 15);
  *a2 = 40;
  if (v36 > 0x7F)
  {
    a2[1] = v36 | 0x80;
    v37 = v36 >> 7;
    if (v36 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v37 | 0x80;
        v38 = v37 >> 7;
        ++a2;
        v39 = v37 >> 14;
        v37 >>= 7;
      }

      while (v39);
      *(a2 - 1) = v38;
      if ((v5 & 8) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      a2[2] = v37;
      a2 += 3;
      if ((v5 & 8) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    a2[1] = v36;
    a2 += 2;
    if ((v5 & 8) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_7:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 6);
  *a2 = 50;
  v7 = *(v6 + 5);
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

  a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
LABEL_23:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::AddFlowInfoCommandArchive::ByteSizeLong(TSWP::AddFlowInfoCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v8 = TSP::Reference::ByteSizeLong(*(this + 6));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_17:
  v3 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v3 += ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
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

uint64_t TSWP::AddFlowInfoCommandArchive::MergeFrom(TSWP::AddFlowInfoCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::AddFlowInfoCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::AddFlowInfoCommandArchive::MergeFrom(uint64_t this, const TSWP::AddFlowInfoCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) != 0)
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

        v6 = MEMORY[0x277CA31C0](v7);
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

        v10 = MEMORY[0x277CA3250](v11);
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
          goto LABEL_16;
        }

        goto LABEL_37;
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

      v13 = MEMORY[0x277CA3250](v14);
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
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_17;
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

      v16 = MEMORY[0x277CA3250](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v9;
    }

    this = TSP::Reference::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_17:
      if ((v5 & 0x20) == 0)
      {
LABEL_19:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_18:
      *(v3 + 60) = *(a2 + 15);
      goto LABEL_19;
    }

LABEL_45:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return this;
}

uint64_t *TSWP::AddFlowInfoCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::AddFlowInfoCommandArchive::Clear(this);

    return TSWP::AddFlowInfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::AddFlowInfoCommandArchive::CopyFrom(uint64_t *this, const TSWP::AddFlowInfoCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::AddFlowInfoCommandArchive::Clear(this);

    return TSWP::AddFlowInfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::AddFlowInfoCommandArchive::IsInitialized(TSWP::AddFlowInfoCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::AddFlowInfoCommandArchive::InternalSwap(TSWP::AddFlowInfoCommandArchive *this, TSWP::AddFlowInfoCommandArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  return result;
}

TSK::CommandArchive *TSWP::RemoveFlowInfoCommandArchive::clear_super(TSWP::RemoveFlowInfoCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSWP::RemoveFlowInfoCommandArchive::clear_flow_info_uuid_path(TSWP::RemoveFlowInfoCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSWP::RemoveFlowInfoCommandArchive::clear_undo_object(TSWP::RemoveFlowInfoCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::RemoveFlowInfoCommandArchive *TSWP::RemoveFlowInfoCommandArchive::RemoveFlowInfoCommandArchive(TSWP::RemoveFlowInfoCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288608DF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoveFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288608DF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoveFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::RemoveFlowInfoCommandArchive *TSWP::RemoveFlowInfoCommandArchive::RemoveFlowInfoCommandArchive(TSWP::RemoveFlowInfoCommandArchive *this, const TSWP::RemoveFlowInfoCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288608DF0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 6) = *(a2 + 6);
  return this;
}

void TSWP::RemoveFlowInfoCommandArchive::~RemoveFlowInfoCommandArchive(TSWP::RemoveFlowInfoCommandArchive *this)
{
  if (this != &TSWP::_RemoveFlowInfoCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40C24530F0);
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277CA2B90]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40290C9B23);
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::RemoveFlowInfoCommandArchive::~RemoveFlowInfoCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::RemoveFlowInfoCommandArchive::default_instance(TSWP::RemoveFlowInfoCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_RemoveFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_RemoveFlowInfoCommandArchive_default_instance_;
}

uint64_t *TSWP::RemoveFlowInfoCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSK::CommandArchive::Clear(this[3]);
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

    this = TSP::UUIDPath::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Reference::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::RemoveFlowInfoCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v35) & 1) == 0)
  {
    while (1)
    {
      v7 = (v35 + 1);
      v8 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v9 - 128));
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_44;
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

            v27 = MEMORY[0x277CA31C0](v26);
            LODWORD(v25) = v27;
            *(a1 + 24) = v27;
            v7 = v35;
          }

          v18 = sub_276F58170(a3, v25, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_44;
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

            v17 = MEMORY[0x277CA3240](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
            v7 = v35;
          }

          v18 = sub_276F58240(a3, v15, v7);
        }

LABEL_51:
        v35 = v18;
        if (!v18)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }

      if (v10 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 4u;
          v19 = *(a1 + 40);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277CA3250](v20);
            LODWORD(v19) = v21;
            *(a1 + 40) = v21;
            v7 = v35;
          }

          v18 = sub_276F4F9E8(a3, v19, v7);
          goto LABEL_51;
        }

LABEL_44:
        if (v8)
        {
          v28 = (v8 & 7) == 4;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_51;
      }

      if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_44;
        }

        v5 |= 8u;
        v22 = (v7 + 1);
        LODWORD(v23) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v24 = *v22;
        v23 = (v23 + (v24 << 7) - 128);
        if ((v24 & 0x80000000) == 0)
        {
          v22 = (v7 + 2);
LABEL_37:
          v35 = v22;
          *(a1 + 48) = v23;
          goto LABEL_52;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v23);
        v35 = v31;
        *(a1 + 48) = v32;
        if (!v31)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_44;
        }

        v5 |= 0x10u;
        v11 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v11;
        v12 = (v12 + (v13 << 7) - 128);
        if ((v13 & 0x80000000) == 0)
        {
          v11 = (v7 + 2);
LABEL_15:
          v35 = v11;
          *(a1 + 52) = v12;
          goto LABEL_52;
        }

        v33 = google::protobuf::internal::VarintParseSlow32(v7, v12);
        v35 = v33;
        *(a1 + 52) = v34;
        if (!v33)
        {
LABEL_61:
          v35 = 0;
          goto LABEL_2;
        }
      }

LABEL_52:
      if (sub_276EA4A1C(a3, &v35))
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
  *(a1 + 16) |= v5;
  return v35;
}

unsigned __int8 *TSWP::RemoveFlowInfoCommandArchive::_InternalSerialize(TSWP::RemoveFlowInfoCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v11 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v11 | 0x80;
          v14 = v11 >> 7;
          ++v9;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        *(v9 - 1) = v14;
      }

      else
      {
        a2[2] = v11;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
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

  v16 = *(this + 4);
  *a2 = 18;
  v17 = *(v16 + 10);
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

  a2 = TSP::UUIDPath::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 5);
  *a2 = 26;
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
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_6;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 12);
  *a2 = 32;
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
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      a2[2] = v29;
      a2 += 3;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    a2[1] = v28;
    a2 += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_56;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 13);
  *a2 = 40;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v10 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++a2;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_56:
  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::RemoveFlowInfoCommandArchive::ByteSizeLong(TSWP::RemoveFlowInfoCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::UUIDPath::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v3 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::RemoveFlowInfoCommandArchive::MergeFrom(TSWP::RemoveFlowInfoCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::RemoveFlowInfoCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::RemoveFlowInfoCommandArchive::MergeFrom(uint64_t this, const TSWP::RemoveFlowInfoCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277CA31C0](v7);
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
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
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

      v9 = MEMORY[0x277CA3240](v10);
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
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA3250](v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_9:
      *(v3 + 52) = *(a2 + 13);
      goto LABEL_10;
    }

LABEL_36:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TSWP::RemoveFlowInfoCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::RemoveFlowInfoCommandArchive::Clear(this);

    return TSWP::RemoveFlowInfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::RemoveFlowInfoCommandArchive::CopyFrom(uint64_t *this, const TSWP::RemoveFlowInfoCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::RemoveFlowInfoCommandArchive::Clear(this);

    return TSWP::RemoveFlowInfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::RemoveFlowInfoCommandArchive::IsInitialized(TSWP::RemoveFlowInfoCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSP::UUIDPath::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::RemoveFlowInfoCommandArchive::InternalSwap(TSWP::RemoveFlowInfoCommandArchive *this, TSWP::RemoveFlowInfoCommandArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  return result;
}

TSK::CommandArchive *TSWP::TextCommentReplyCommandArchive::clear_super(TSWP::TextCommentReplyCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUIDPath *TSWP::TextCommentReplyCommandArchive::clear_storage_uuid_path(TSWP::TextCommentReplyCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSWP::TextCommentReplyCommandArchive::clear_forward_comment(TSWP::TextCommentReplyCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSWP::TextCommentReplyCommandArchive::clear_inverse_comment(TSWP::TextCommentReplyCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSWP::TextCommentReplyCommandArchive *TSWP::TextCommentReplyCommandArchive::TextCommentReplyCommandArchive(TSWP::TextCommentReplyCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288608EA0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TextCommentReplyCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  return this;
}

TSWP::TextCommentReplyCommandArchive *TSWP::TextCommentReplyCommandArchive::TextCommentReplyCommandArchive(TSWP::TextCommentReplyCommandArchive *this, const TSWP::TextCommentReplyCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288608EA0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  if ((v4 & 8) != 0)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v4 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TSWP::TextCommentReplyCommandArchive::~TextCommentReplyCommandArchive(TSWP::TextCommentReplyCommandArchive *this)
{
  sub_276F21C40(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::TextCommentReplyCommandArchive::~TextCommentReplyCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSP::Reference *sub_276F21C40(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_TextCommentReplyCommandArchive_default_instance_)
  {
    if (*(v1 + 4))
    {
      v3 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40C24530F0);
    }

    if (*(v1 + 5))
    {
      v4 = MEMORY[0x277CA2B90]();
      MEMORY[0x277CA3D00](v4, 0x10A1C40290C9B23);
    }

    v5 = *(v1 + 6);
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277CA3D00]();
    }

    result = *(v1 + 7);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::TextCommentReplyCommandArchive::default_instance(TSWP::TextCommentReplyCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_TextCommentReplyCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TextCommentReplyCommandArchive_default_instance_;
}

uint64_t *TSWP::TextCommentReplyCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_19:
    this = TSP::UUIDPath::Clear(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_20;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_18:
  this = TSK::CommandArchive::Clear(this[4]);
  if ((v2 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_20:
  this = TSP::Reference::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSP::Reference::Clear(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0x60) != 0)
  {
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::TextCommentReplyCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  while ((sub_276EA4A1C(a3, &v36) & 1) == 0)
  {
    v5 = (v36 + 1);
    v6 = *v36;
    if (*v36 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v7 - 128));
        v36 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v19;
        goto LABEL_7;
      }

      v5 = (v36 + 2);
    }

    v36 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 3)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_61;
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

          v22 = MEMORY[0x277CA31C0](v21);
          LODWORD(v20) = v22;
          *(a1 + 32) = v22;
          v5 = v36;
        }

        v13 = sub_276F58170(a3, v20, v5);
      }

      else if (v8 == 2)
      {
        if (v6 != 18)
        {
          goto LABEL_61;
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

          v31 = MEMORY[0x277CA3240](v30);
          LODWORD(v29) = v31;
          *(a1 + 40) = v31;
          v5 = v36;
        }

        v13 = sub_276F58240(a3, v29, v5);
      }

      else
      {
        if (v8 != 3 || v6 != 26)
        {
LABEL_61:
          if (v6)
          {
            v32 = (v6 & 7) == 4;
          }

          else
          {
            v32 = 1;
          }

          if (v32)
          {
            *(a3 + 80) = v6 - 1;
            return v36;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_68;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v13 = google::protobuf::internal::InlineGreedyStringParser();
      }

LABEL_68:
      v36 = v13;
      if (!v13)
      {
        return 0;
      }
    }

    else
    {
      if (v6 >> 3 <= 5)
      {
        if (v8 == 4)
        {
          if (v6 != 34)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 8u;
          v9 = *(a1 + 48);
          if (!v9)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277CA3250](v23);
            LODWORD(v9) = v24;
            *(a1 + 48) = v24;
LABEL_46:
            v5 = v36;
          }
        }

        else
        {
          if (v8 != 5 || v6 != 42)
          {
            goto LABEL_61;
          }

          *(a1 + 16) |= 0x10u;
          v9 = *(a1 + 56);
          if (!v9)
          {
            v10 = *(a1 + 8);
            if (v10)
            {
              v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = MEMORY[0x277CA3250](v10);
            LODWORD(v9) = v11;
            *(a1 + 56) = v11;
            goto LABEL_46;
          }
        }

        v13 = sub_276F4F9E8(a3, v9, v5);
        goto LABEL_68;
      }

      if (v8 == 6)
      {
        if (v6 != 48)
        {
          goto LABEL_61;
        }

        v25 = (v5 + 1);
        v26 = *v5;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

        v27 = *v25;
        v28 = (v27 << 7) + v26;
        v26 = (v28 - 128);
        if ((v27 & 0x80000000) == 0)
        {
          v25 = (v5 + 2);
LABEL_52:
          v36 = v25;
          goto LABEL_53;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v5, (v28 - 128));
        if (!v36)
        {
          return 0;
        }

        v26 = v33;
LABEL_53:
        if (TSD::CommentCommandVariant_IsValid(v26))
        {
          *(a1 + 16) |= 0x20u;
          *(a1 + 64) = v26;
        }

        else
        {
          sub_276F54058();
        }
      }

      else
      {
        if (v8 != 7 || v6 != 56)
        {
          goto LABEL_61;
        }

        v14 = (v5 + 1);
        v15 = *v5;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        v16 = *v14;
        v17 = (v16 << 7) + v15;
        v15 = (v17 - 128);
        if ((v16 & 0x80000000) == 0)
        {
          v14 = (v5 + 2);
LABEL_30:
          v36 = v14;
          goto LABEL_31;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v5, (v17 - 128));
        if (!v36)
        {
          return 0;
        }

        v15 = v34;
LABEL_31:
        if (TSD::CommentCommandVariant_IsValid(v15))
        {
          *(a1 + 16) |= 0x40u;
          *(a1 + 68) = v15;
        }

        else
        {
          sub_276F5938C();
        }
      }
    }
  }

  return v36;
}

unsigned __int8 *TSWP::TextCommentReplyCommandArchive::_InternalSerialize(TSWP::TextCommentReplyCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 4);
    *v4 = 10;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          ++v10;
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = TSK::CommandArchive::_InternalSerialize(v8, v10, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
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

  v17 = *(this + 5);
  *v4 = 18;
  v18 = *(v17 + 10);
  if (v18 > 0x7F)
  {
    v4[1] = v18 | 0x80;
    v20 = v18 >> 7;
    if (v18 >> 14)
    {
      v19 = v4 + 3;
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
      v4[2] = v20;
      v19 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v18;
    v19 = v4 + 2;
  }

  v4 = TSP::UUIDPath::_InternalSerialize(v17, v19, a3);
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  v4 = sub_276E5154C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 6);
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

  v4 = TSP::Reference::_InternalSerialize(v23, v25, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 7);
  *v4 = 42;
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
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_8;
  }

LABEL_58:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(this + 16);
  *v4 = 48;
  if (v35 > 0x7F)
  {
    v4[1] = v35 | 0x80;
    v36 = v35 >> 7;
    if (v35 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v36 | 0x80;
        v37 = v36 >> 7;
        ++v4;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
      *(v4 - 1) = v37;
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v4[2] = v36;
      v4 += 3;
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_69;
      }
    }
  }

  else
  {
    v4[1] = v35;
    v4 += 2;
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_69;
    }
  }

LABEL_8:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 17);
  *v4 = 56;
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

LABEL_69:
  v39 = *(this + 1);
  if ((v39 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v39 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TextCommentReplyCommandArchive::ByteSizeLong(TSWP::TextCommentReplyCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x7F) == 0)
  {
    v3 = 0;
    goto LABEL_27;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSK::CommandArchive::ByteSizeLong(*(this + 4));
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
  if ((v2 & 4) != 0)
  {
    v8 = TSP::UUIDPath::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v9 = TSP::Reference::ByteSizeLong(*(this + 6));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_19:
    v11 = *(this + 16);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v12;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_18:
  v10 = TSP::Reference::ByteSizeLong(*(this + 7));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v2 & 0x40) != 0)
  {
LABEL_23:
    v13 = *(this + 17);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v14;
  }

LABEL_27:
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

uint64_t TSWP::TextCommentReplyCommandArchive::MergeFrom(TSWP::TextCommentReplyCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TextCommentReplyCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TextCommentReplyCommandArchive::MergeFrom(uint64_t this, const TSWP::TextCommentReplyCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x7F) != 0)
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
          goto LABEL_25;
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

      v6 = MEMORY[0x277CA31C0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_25:
      v12 = MEMORY[0x277D80A18];
      if ((v5 & 8) != 0)
      {
        *(v3 + 16) |= 8u;
        v13 = *(v3 + 48);
        if (!v13)
        {
          v14 = *(v3 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277CA3250](v14);
          *(v3 + 48) = v13;
        }

        if (*(a2 + 6))
        {
          v15 = *(a2 + 6);
        }

        else
        {
          v15 = v12;
        }

        this = TSP::Reference::MergeFrom(v13, v15);
        if ((v5 & 0x10) == 0)
        {
LABEL_27:
          if ((v5 & 0x20) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_48;
        }
      }

      else if ((v5 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      *(v3 + 16) |= 0x10u;
      v16 = *(v3 + 56);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277CA3250](v17);
        *(v3 + 56) = v16;
      }

      if (*(a2 + 7))
      {
        v18 = *(a2 + 7);
      }

      else
      {
        v18 = v12;
      }

      this = TSP::Reference::MergeFrom(v16, v18);
      if ((v5 & 0x20) == 0)
      {
LABEL_28:
        if ((v5 & 0x40) == 0)
        {
LABEL_30:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_29:
        *(v3 + 68) = *(a2 + 17);
        goto LABEL_30;
      }

LABEL_48:
      *(v3 + 64) = *(a2 + 16);
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

LABEL_17:
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 40);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA3240](v10);
      *(v3 + 40) = v9;
    }

    if (*(a2 + 5))
    {
      v11 = *(a2 + 5);
    }

    else
    {
      v11 = MEMORY[0x277D80A10];
    }

    this = TSP::UUIDPath::MergeFrom(v9, v11);
    goto LABEL_25;
  }

  return this;
}

uint64_t *TSWP::TextCommentReplyCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextCommentReplyCommandArchive::Clear(this);

    return TSWP::TextCommentReplyCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TextCommentReplyCommandArchive::CopyFrom(uint64_t *this, const TSWP::TextCommentReplyCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextCommentReplyCommandArchive::Clear(this);

    return TSWP::TextCommentReplyCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TextCommentReplyCommandArchive::IsInitialized(TSWP::TextCommentReplyCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::UUIDPath::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 6));
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

  result = TSP::Reference::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::TextCommentReplyCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[1].n128_u64[1];
  this[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v5;
  v6 = this[2].n128_u64[0];
  v7 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  v8 = this[3].n128_u64[0];
  v9 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v8;
  a2[3].n128_u64[1] = v9;
  v11 = this[4].n128_u64[0];
  this[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v11;
  return result;
}

uint64_t TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::clear_args_list(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::AddIdOperationArgs::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::ContainedObjectsCommandArchive_AddBehaviorArgs(TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *this, google::protobuf::Arena *a2)
{
  *this = &unk_288608F50;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ContainedObjectsCommandArchive_AddBehaviorArgs_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::ContainedObjectsCommandArchive_AddBehaviorArgs(TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *this, const TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288608F50;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276F2C0B4(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_276EA4CDC(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::~ContainedObjectsCommandArchive_AddBehaviorArgs(TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *this)
{
  sub_276E4E808(this + 1);
  sub_276F2C030(this + 2);
}

{
  TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::~ContainedObjectsCommandArchive_AddBehaviorArgs(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::default_instance(TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *this)
{
  if (atomic_load_explicit(scc_info_ContainedObjectsCommandArchive_AddBehaviorArgs_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ContainedObjectsCommandArchive_AddBehaviorArgs_default_instance_;
}

uint64_t *TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::AddIdOperationArgs::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_276EA4A1C(a3, &v21) & 1) == 0)
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
          v13 = MEMORY[0x277CA3290](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_276F58DA0(a3, v14, v10);
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
        sub_276EA4A94((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_276EA4A1C(a3, &v21))
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

unsigned __int8 *TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::_InternalSerialize(TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
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

      a2 = TSCK::AddIdOperationArgs::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::ByteSizeLong(TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
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
      v7 = TSCK::AddIdOperationArgs::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::MergeFrom(TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::MergeFrom(uint64_t this, const TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276F2C0B4(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

uint64_t *TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::Clear(this);

    return TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::CopyFrom(uint64_t *this, const TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::Clear(this);

    return TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::IsInitialized(TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSCK::AddIdOperationArgs::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::InternalSwap(TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *this, TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::clear_args_list(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::RemoveIdOperationArgs::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::ContainedObjectsCommandArchive_RemoveBehaviorArgs(TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *this, google::protobuf::Arena *a2)
{
  *this = &unk_288609000;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ContainedObjectsCommandArchive_RemoveBehaviorArgs_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::ContainedObjectsCommandArchive_RemoveBehaviorArgs(TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *this, const TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288609000;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276F2C1F8(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_276EA4CDC(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::~ContainedObjectsCommandArchive_RemoveBehaviorArgs(TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *this)
{
  sub_276E4E808(this + 1);
  sub_276F2C174(this + 2);
}

{
  TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::~ContainedObjectsCommandArchive_RemoveBehaviorArgs(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::default_instance(TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *this)
{
  if (atomic_load_explicit(scc_info_ContainedObjectsCommandArchive_RemoveBehaviorArgs_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ContainedObjectsCommandArchive_RemoveBehaviorArgs_default_instance_;
}

uint64_t *TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::RemoveIdOperationArgs::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_276EA4A1C(a3, &v21) & 1) == 0)
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
          v13 = MEMORY[0x277CA32A0](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_276F58E70(a3, v14, v10);
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
        sub_276EA4A94((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_276EA4A1C(a3, &v21))
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

unsigned __int8 *TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::_InternalSerialize(TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
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

      a2 = TSCK::RemoveIdOperationArgs::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::ByteSizeLong(TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
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
      v7 = TSCK::RemoveIdOperationArgs::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::MergeFrom(TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::MergeFrom(uint64_t this, const TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276F2C1F8(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

uint64_t *TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::Clear(this);

    return TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::CopyFrom(uint64_t *this, const TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::Clear(this);

    return TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::IsInitialized(TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSCK::RemoveIdOperationArgs::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::InternalSwap(TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *this, TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::clear_args_list(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::RearrangeIdOperationArgs::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::ContainedObjectsCommandArchive_RearrangeBehaviorArgs(TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886090B0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ContainedObjectsCommandArchive_RearrangeBehaviorArgs_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::ContainedObjectsCommandArchive_RearrangeBehaviorArgs(TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *this, const TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2886090B0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276F2C33C(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 10) = 0;
  v11 = *(a2 + 1);
  if (v11)
  {
    sub_276EA4CDC(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::~ContainedObjectsCommandArchive_RearrangeBehaviorArgs(TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *this)
{
  sub_276E4E808(this + 1);
  sub_276F2C2B8(this + 2);
}

{
  TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::~ContainedObjectsCommandArchive_RearrangeBehaviorArgs(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::default_instance(TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *this)
{
  if (atomic_load_explicit(scc_info_ContainedObjectsCommandArchive_RearrangeBehaviorArgs_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ContainedObjectsCommandArchive_RearrangeBehaviorArgs_default_instance_;
}

uint64_t *TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::RearrangeIdOperationArgs::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_276EA4A1C(a3, &v21) & 1) == 0)
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
          v13 = MEMORY[0x277CA32B0](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_276F58F40(a3, v14, v10);
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
        sub_276EA4A94((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_276EA4A1C(a3, &v21))
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

unsigned __int8 *TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::_InternalSerialize(TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 8 * i + 8);
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

      a2 = TSCK::RearrangeIdOperationArgs::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::ByteSizeLong(TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
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
      v7 = TSCK::RearrangeIdOperationArgs::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v2, this + 40);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::MergeFrom(TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::MergeFrom(uint64_t this, const TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276F2C33C(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return this;
}

uint64_t *TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::Clear(this);

    return TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::CopyFrom(uint64_t *this, const TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::Clear(this);

    return TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::IsInitialized(TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *this)
{
  v2 = *(this + 6);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSCK::RearrangeIdOperationArgs::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::InternalSwap(TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *this, TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSK::CommandArchive *TSWP::ContainedObjectsCommandArchive::clear_super(TSWP::ContainedObjectsCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSWP::ContainedObjectsCommandArchive::clear_target(TSWP::ContainedObjectsCommandArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t TSWP::ContainedObjectsCommandArchive::clear_objects(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSP::Reference *TSWP::ContainedObjectsCommandArchive::set_allocated_undo_object_for_commit(TSWP::ContainedObjectsCommandArchive *this, TSP::Reference *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = TSWP::ContainedObjectsCommandArchive::clear_undo_object(this);
  if (a2)
  {
    v6 = *(a2 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v4 != v6)
    {
      result = google::protobuf::internal::GetOwnedMessageInternal();
      a2 = result;
    }

    *(this + 22) = 4;
    *(this + 9) = a2;
  }

  return result;
}

uint64_t TSWP::ContainedObjectsCommandArchive::clear_undo_object(uint64_t this)
{
  v1 = this;
  v2 = *(this + 88);
  if (v2 == 5 || v2 == 4)
  {
    v3 = *(this + 8);
    if (v3)
    {
      if (*(v3 & 0xFFFFFFFFFFFFFFFELL))
      {
        goto LABEL_7;
      }
    }

    else if (v3)
    {
      goto LABEL_7;
    }

    this = *(this + 72);
    if (this)
    {
      TSP::Reference::~Reference(this);
      this = MEMORY[0x277CA3D00]();
    }
  }

LABEL_7:
  *(v1 + 88) = 0;
  return this;
}

uint64_t TSWP::ContainedObjectsCommandArchive::clear_undo_object_for_commit(uint64_t this)
{
  if (*(this + 88) == 4)
  {
    v1 = this;
    v2 = *(this + 8);
    if (v2)
    {
      if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_4:
        this = *(this + 72);
        if (this)
        {
          TSP::Reference::~Reference(this);
          this = MEMORY[0x277CA3D00]();
        }
      }
    }

    else if (!v2)
    {
      goto LABEL_4;
    }

    *(v1 + 88) = 0;
  }

  return this;
}

TSP::Reference *TSWP::ContainedObjectsCommandArchive::set_allocated_undo_object_for_make_inverse(TSWP::ContainedObjectsCommandArchive *this, TSP::Reference *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = TSWP::ContainedObjectsCommandArchive::clear_undo_object(this);
  if (a2)
  {
    v6 = *(a2 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v4 != v6)
    {
      result = google::protobuf::internal::GetOwnedMessageInternal();
      a2 = result;
    }

    *(this + 22) = 5;
    *(this + 9) = a2;
  }

  return result;
}

uint64_t TSWP::ContainedObjectsCommandArchive::clear_undo_object_for_make_inverse(uint64_t this)
{
  if (*(this + 88) == 5)
  {
    v1 = this;
    v2 = *(this + 8);
    if (v2)
    {
      if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
      {
LABEL_4:
        this = *(this + 72);
        if (this)
        {
          TSP::Reference::~Reference(this);
          this = MEMORY[0x277CA3D00]();
        }
      }
    }

    else if (!v2)
    {
      goto LABEL_4;
    }

    *(v1 + 88) = 0;
  }

  return this;
}

TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *TSWP::ContainedObjectsCommandArchive::set_allocated_add_behavior_args(TSWP::ContainedObjectsCommandArchive *this, TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = TSWP::ContainedObjectsCommandArchive::clear_behavior(this);
  if (a2)
  {
    v6 = *(a2 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v4 != v6)
    {
      result = google::protobuf::internal::GetOwnedMessageInternal();
      a2 = result;
    }

    *(this + 23) = 6;
    *(this + 10) = a2;
  }

  return result;
}

uint64_t TSWP::ContainedObjectsCommandArchive::clear_behavior(uint64_t this)
{
  v1 = this;
  v2 = *(this + 92);
  switch(v2)
  {
    case 8:
      v5 = *(this + 8);
      if (v5)
      {
        if (*(v5 & 0xFFFFFFFFFFFFFFFELL))
        {
          break;
        }
      }

      else if (v5)
      {
        break;
      }

      this = *(this + 80);
      if (this)
      {
        TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::~ContainedObjectsCommandArchive_RearrangeBehaviorArgs(this);
        goto LABEL_16;
      }

      break;
    case 7:
      v4 = *(this + 8);
      if (v4)
      {
        if (*(v4 & 0xFFFFFFFFFFFFFFFELL))
        {
          break;
        }
      }

      else if (v4)
      {
        break;
      }

      this = *(this + 80);
      if (this)
      {
        TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::~ContainedObjectsCommandArchive_RemoveBehaviorArgs(this);
        goto LABEL_16;
      }

      break;
    case 6:
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 & 0xFFFFFFFFFFFFFFFELL))
        {
          break;
        }
      }

      else if (v3)
      {
        break;
      }

      this = *(this + 80);
      if (this)
      {
        TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::~ContainedObjectsCommandArchive_AddBehaviorArgs(this);
LABEL_16:
        this = MEMORY[0x277CA3D00]();
      }

      break;
  }

  *(v1 + 92) = 0;
  return this;
}

TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *TSWP::ContainedObjectsCommandArchive::set_allocated_remove_behavior_args(TSWP::ContainedObjectsCommandArchive *this, TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = TSWP::ContainedObjectsCommandArchive::clear_behavior(this);
  if (a2)
  {
    v6 = *(a2 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v4 != v6)
    {
      result = google::protobuf::internal::GetOwnedMessageInternal();
      a2 = result;
    }

    *(this + 23) = 7;
    *(this + 10) = a2;
  }

  return result;
}

TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *TSWP::ContainedObjectsCommandArchive::set_allocated_rearrange_behavior_args(TSWP::ContainedObjectsCommandArchive *this, TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
    v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = TSWP::ContainedObjectsCommandArchive::clear_behavior(this);
  if (a2)
  {
    v6 = *(a2 + 1);
    if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
    }

    if (v4 != v6)
    {
      result = google::protobuf::internal::GetOwnedMessageInternal();
      a2 = result;
    }

    *(this + 23) = 8;
    *(this + 10) = a2;
  }

  return result;
}

TSWP::ContainedObjectsCommandArchive *TSWP::ContainedObjectsCommandArchive::ContainedObjectsCommandArchive(TSWP::ContainedObjectsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288609160;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ContainedObjectsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v3;
  *(this + 11) = 0;
  return this;
}

TSWP::ContainedObjectsCommandArchive *TSWP::ContainedObjectsCommandArchive::ContainedObjectsCommandArchive(TSWP::ContainedObjectsCommandArchive *this, const TSWP::ContainedObjectsCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288609160;
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
    sub_276EA5F50(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_276EA4CDC(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = MEMORY[0x277D80A90];
  v11 = *(a2 + 4);
  if (v11)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v11 = *(a2 + 4);
  }

  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v11 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  *(this + 22) = 0;
  v12 = *(a2 + 22);
  if (v12 == 5)
  {
    TSWP::ContainedObjectsCommandArchive::clear_undo_object(this);
    v13 = 5;
  }

  else
  {
    if (v12 != 4)
    {
      goto LABEL_23;
    }

    TSWP::ContainedObjectsCommandArchive::clear_undo_object(this);
    v13 = 4;
  }

  *(this + 22) = v13;
  v14 = *(this + 1);
  if (v14)
  {
    v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
  }

  v15 = MEMORY[0x277CA3250](v14);
  *(this + 9) = v15;
  if (*(a2 + 22) == v12)
  {
    v16 = *(a2 + 9);
  }

  else
  {
    v16 = MEMORY[0x277D80A18];
  }

  TSP::Reference::MergeFrom(v15, v16);
LABEL_23:
  *(this + 23) = 0;
  v17 = *(a2 + 23);
  switch(v17)
  {
    case 8:
      TSWP::ContainedObjectsCommandArchive::clear_behavior(this);
      *(this + 23) = 8;
      v24 = *(this + 1);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs>(v24);
      *(this + 10) = v25;
      if (*(a2 + 23) == 8)
      {
        v26 = *(a2 + 10);
      }

      else
      {
        v26 = &TSWP::_ContainedObjectsCommandArchive_RearrangeBehaviorArgs_default_instance_;
      }

      TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::MergeFrom(v25, v26);
      break;
    case 7:
      TSWP::ContainedObjectsCommandArchive::clear_behavior(this);
      *(this + 23) = 7;
      v21 = *(this + 1);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs>(v21);
      *(this + 10) = v22;
      if (*(a2 + 23) == 7)
      {
        v23 = *(a2 + 10);
      }

      else
      {
        v23 = &TSWP::_ContainedObjectsCommandArchive_RemoveBehaviorArgs_default_instance_;
      }

      TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::MergeFrom(v22, v23);
      break;
    case 6:
      TSWP::ContainedObjectsCommandArchive::clear_behavior(this);
      *(this + 23) = 6;
      v18 = *(this + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs>(v18);
      *(this + 10) = v19;
      if (*(a2 + 23) == 6)
      {
        v20 = *(a2 + 10);
      }

      else
      {
        v20 = &TSWP::_ContainedObjectsCommandArchive_AddBehaviorArgs_default_instance_;
      }

      TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::MergeFrom(v19, v20);
      break;
  }

  return this;
}

void sub_276F25298(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v2, 0x1081C407D3F2757);
  sub_276EA5ECC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::ContainedObjectsCommandArchive::~ContainedObjectsCommandArchive(TSWP::ContainedObjectsCommandArchive *this)
{
  sub_276F2532C(this);
  sub_276E4E808(this + 1);
  sub_276EA5ECC(this + 3);
}

{
  TSWP::ContainedObjectsCommandArchive::~ContainedObjectsCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSP::Reference *sub_276F2532C(TSP::Reference *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_ContainedObjectsCommandArchive_default_instance_)
  {
    if (*(v1 + 56))
    {
      v3 = MEMORY[0x277CA2910]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40C24530F0);
    }

    this = *(v1 + 64);
    if (this)
    {
      TSP::Reference::~Reference(this);
      this = MEMORY[0x277CA3D00]();
    }
  }

  if (*(v1 + 88))
  {
    this = TSWP::ContainedObjectsCommandArchive::clear_undo_object(v1);
  }

  if (*(v1 + 92))
  {

    return TSWP::ContainedObjectsCommandArchive::clear_behavior(v1);
  }

  return this;
}

void *TSWP::ContainedObjectsCommandArchive::default_instance(TSWP::ContainedObjectsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ContainedObjectsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ContainedObjectsCommandArchive_default_instance_;
}

uint64_t *TSWP::ContainedObjectsCommandArchive::Clear(TSWP::ContainedObjectsCommandArchive *this)
{
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  v5 = *(this + 4);
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

  v9 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v9 + 23) < 0)
  {
    **v9 = 0;
    *(v9 + 8) = 0;
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

  *v9 = 0;
  *(v9 + 23) = 0;
  if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_18:
  TSK::CommandArchive::Clear(*(this + 7));
  if ((v5 & 4) != 0)
  {
LABEL_9:
    TSP::Reference::Clear(*(this + 8));
  }

LABEL_10:
  TSWP::ContainedObjectsCommandArchive::clear_undo_object(this);
  result = TSWP::ContainedObjectsCommandArchive::clear_behavior(this);
  v8 = *(this + 8);
  v7 = this + 8;
  *(v7 + 2) = 0;
  if (v8)
  {

    return sub_276EA4D28(v7);
  }

  return result;
}

google::protobuf::internal *TSWP::ContainedObjectsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  if ((sub_276EA4A1C(a3, &v38) & 1) == 0)
  {
    while (1)
    {
      v6 = (v38 + 1);
      v7 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v8 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v17;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 4)
      {
        if (v7 >> 3 <= 6)
        {
          if (v9 == 5)
          {
            if (v7 == 42)
            {
              if (*(a1 + 88) != 5)
              {
                TSWP::ContainedObjectsCommandArchive::clear_undo_object(a1);
                *(a1 + 88) = 5;
                goto LABEL_81;
              }

              goto LABEL_61;
            }
          }

          else if (v9 == 6 && v7 == 50)
          {
            if (*(a1 + 92) == 6)
            {
              v15 = *(a1 + 80);
            }

            else
            {
              TSWP::ContainedObjectsCommandArchive::clear_behavior(a1);
              *(a1 + 92) = 6;
              v33 = *(a1 + 8);
              if (v33)
              {
                v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs>(v33);
              *(a1 + 80) = v15;
              v6 = v38;
            }

            v10 = sub_276F59010(a3, v15, v6);
            goto LABEL_90;
          }
        }

        else if (v9 == 7)
        {
          if (v7 == 58)
          {
            if (*(a1 + 92) == 7)
            {
              v30 = *(a1 + 80);
            }

            else
            {
              TSWP::ContainedObjectsCommandArchive::clear_behavior(a1);
              *(a1 + 92) = 7;
              v34 = *(a1 + 8);
              if (v34)
              {
                v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
              }

              v30 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs>(v34);
              *(a1 + 80) = v30;
              v6 = v38;
            }

            v10 = sub_276F590E0(a3, v30, v6);
            goto LABEL_90;
          }
        }

        else if (v9 == 8)
        {
          if (v7 == 66)
          {
            if (*(a1 + 92) == 8)
            {
              v31 = *(a1 + 80);
            }

            else
            {
              TSWP::ContainedObjectsCommandArchive::clear_behavior(a1);
              *(a1 + 92) = 8;
              v37 = *(a1 + 8);
              if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
              }

              v31 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs>(v37);
              *(a1 + 80) = v31;
              v6 = v38;
            }

            v10 = sub_276F591B0(a3, v31, v6);
            goto LABEL_90;
          }
        }

        else if (v9 == 9 && v7 == 74)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v10 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_90;
        }

        goto LABEL_65;
      }

      if (v7 >> 3 <= 2)
      {
        if (v9 == 1)
        {
          if (v7 == 10)
          {
            *(a1 + 16) |= 2u;
            v18 = *(a1 + 56);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x277CA31C0](v19);
              LODWORD(v18) = v20;
              *(a1 + 56) = v20;
              v6 = v38;
            }

            v10 = sub_276F58170(a3, v18, v6);
            goto LABEL_90;
          }
        }

        else if (v9 == 2 && v7 == 18)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 64);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x277CA3250](v13);
            LODWORD(v12) = v14;
            *(a1 + 64) = v14;
LABEL_84:
            v6 = v38;
          }

LABEL_85:
          v10 = sub_276F4F9E8(a3, v12, v6);
          goto LABEL_90;
        }

        goto LABEL_65;
      }

      if (v9 != 3)
      {
        if (v9 == 4 && v7 == 34)
        {
          if (*(a1 + 88) != 4)
          {
            TSWP::ContainedObjectsCommandArchive::clear_undo_object(a1);
            *(a1 + 88) = 4;
LABEL_81:
            v35 = *(a1 + 8);
            if (v35)
            {
              v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
            }

            v36 = MEMORY[0x277CA3250](v35);
            LODWORD(v12) = v36;
            *(a1 + 72) = v36;
            goto LABEL_84;
          }

LABEL_61:
          v12 = *(a1 + 72);
          goto LABEL_85;
        }

        goto LABEL_65;
      }

      if (v7 == 26)
      {
        v21 = v6 - 1;
        while (1)
        {
          v22 = (v21 + 1);
          v38 = (v21 + 1);
          v23 = *(a1 + 40);
          if (!v23)
          {
            goto LABEL_46;
          }

          v29 = *(a1 + 32);
          v24 = *v23;
          if (v29 < *v23)
          {
            *(a1 + 32) = v29 + 1;
            v26 = *&v23[2 * v29 + 2];
            goto LABEL_50;
          }

          if (v24 == *(a1 + 36))
          {
LABEL_46:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v23 = *(a1 + 40);
            v24 = *v23;
          }

          *v23 = v24 + 1;
          v25 = MEMORY[0x277CA3250](*(a1 + 24));
          LODWORD(v26) = v25;
          v27 = *(a1 + 32);
          v28 = *(a1 + 40) + 8 * v27;
          *(a1 + 32) = v27 + 1;
          *(v28 + 8) = v25;
          v22 = v38;
LABEL_50:
          v21 = sub_276F4F9E8(a3, v26, v22);
          v38 = v21;
          if (!v21)
          {
            return 0;
          }

          if (*a3 <= v21 || *v21 != 26)
          {
            goto LABEL_91;
          }
        }
      }

LABEL_65:
      if (v7)
      {
        v32 = (v7 & 7) == 4;
      }

      else
      {
        v32 = 1;
      }

      if (v32)
      {
        *(a3 + 80) = v7 - 1;
        return v38;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276EA4A94((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_90:
      v38 = v10;
      if (!v10)
      {
        return 0;
      }

LABEL_91:
      if (sub_276EA4A1C(a3, &v38))
      {
        return v38;
      }
    }

    v6 = (v38 + 2);
LABEL_6:
    v38 = v6;
    goto LABEL_7;
  }

  return v38;
}

unsigned __int8 *TSWP::ContainedObjectsCommandArchive::_InternalSerialize(TSWP::ContainedObjectsCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 7);
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

    v4 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 8);
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

    v4 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(this + 8);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v21 = *(*(this + 5) + 8 * i + 8);
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

      v4 = TSP::Reference::_InternalSerialize(v21, v23, a3);
    }
  }

  v27 = *(this + 22);
  if (v27 == 4)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v28 = *(this + 9);
    *v4 = 34;
    v29 = *(v28 + 5);
    if (v29 > 0x7F)
    {
      v4[1] = v29 | 0x80;
      v30 = v29 >> 7;
      if (v29 >> 14)
      {
        v31 = v4 + 3;
        do
        {
          *(v31 - 1) = v30 | 0x80;
          v32 = v30 >> 7;
          ++v31;
          v34 = v30 >> 14;
          v30 >>= 7;
        }

        while (v34);
        goto LABEL_52;
      }

      goto LABEL_49;
    }
  }

  else
  {
    if (v27 != 5)
    {
      goto LABEL_54;
    }

    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v28 = *(this + 9);
    *v4 = 42;
    v29 = *(v28 + 5);
    if (v29 > 0x7F)
    {
      v4[1] = v29 | 0x80;
      v30 = v29 >> 7;
      if (v29 >> 14)
      {
        v31 = v4 + 3;
        do
        {
          *(v31 - 1) = v30 | 0x80;
          v32 = v30 >> 7;
          ++v31;
          v33 = v30 >> 14;
          v30 >>= 7;
        }

        while (v33);
LABEL_52:
        *(v31 - 1) = v32;
        goto LABEL_53;
      }

LABEL_49:
      v4[2] = v30;
      v31 = v4 + 3;
      goto LABEL_53;
    }
  }

  v4[1] = v29;
  v31 = v4 + 2;
LABEL_53:
  v4 = TSP::Reference::_InternalSerialize(v28, v31, a3);
LABEL_54:
  v35 = *(this + 23);
  switch(v35)
  {
    case 8:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v42 = *(this + 10);
      *v4 = 66;
      v43 = *(v42 + 10);
      if (v43 > 0x7F)
      {
        v4[1] = v43 | 0x80;
        v46 = v43 >> 7;
        if (v43 >> 14)
        {
          v44 = v4 + 3;
          do
          {
            *(v44 - 1) = v46 | 0x80;
            v51 = v46 >> 7;
            ++v44;
            v52 = v46 >> 14;
            v46 >>= 7;
          }

          while (v52);
          *(v44 - 1) = v51;
        }

        else
        {
          v4[2] = v46;
          v44 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v43;
        v44 = v4 + 2;
      }

      v50 = TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::_InternalSerialize(v42, v44, a3);
      break;
    case 7:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v39 = *(this + 10);
      *v4 = 58;
      v40 = *(v39 + 10);
      if (v40 > 0x7F)
      {
        v4[1] = v40 | 0x80;
        v45 = v40 >> 7;
        if (v40 >> 14)
        {
          v41 = v4 + 3;
          do
          {
            *(v41 - 1) = v45 | 0x80;
            v48 = v45 >> 7;
            ++v41;
            v49 = v45 >> 14;
            v45 >>= 7;
          }

          while (v49);
          *(v41 - 1) = v48;
        }

        else
        {
          v4[2] = v45;
          v41 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v40;
        v41 = v4 + 2;
      }

      v50 = TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::_InternalSerialize(v39, v41, a3);
      break;
    case 6:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v36 = *(this + 10);
      *v4 = 50;
      v37 = *(v36 + 10);
      if (v37 > 0x7F)
      {
        v4[1] = v37 | 0x80;
        v47 = v37 >> 7;
        if (v37 >> 14)
        {
          v38 = v4 + 3;
          do
          {
            *(v38 - 1) = v47 | 0x80;
            v53 = v47 >> 7;
            ++v38;
            v54 = v47 >> 14;
            v47 >>= 7;
          }

          while (v54);
          *(v38 - 1) = v53;
        }

        else
        {
          v4[2] = v47;
          v38 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v37;
        v38 = v4 + 2;
      }

      v50 = TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::_InternalSerialize(v36, v38, a3);
      break;
    default:
      goto LABEL_88;
  }

  v4 = v50;
LABEL_88:
  if (v6)
  {
    v4 = sub_276E5154C(a3, 9, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v55 = *(this + 1);
  if ((v55 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v55 & 0xFFFFFFFFFFFFFFFELL) + 8);
}