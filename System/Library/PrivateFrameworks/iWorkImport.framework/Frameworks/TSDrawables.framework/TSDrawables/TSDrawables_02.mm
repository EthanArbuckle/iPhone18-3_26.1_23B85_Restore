uint64_t TSDSOS::SpecReflectionArchive::ByteSizeLong(TSDSOS::SpecReflectionArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSD::SpecReflectionSetOpacityArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSDSOS::SpecSetReflectionArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSDSOS::SpecReflectionArchive::MergeFrom(TSDSOS::SpecReflectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSDSOS::SpecReflectionArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSDSOS::SpecReflectionArchive::MergeFrom(TSDSOS::SpecReflectionArchive *this, const TSDSOS::SpecReflectionArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecReflectionSetOpacityArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_SpecReflectionSetOpacityArchive_default_instance_;
      }

      TSD::SpecReflectionSetOpacityArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v9 = *(this + 4);
      if (!v9)
      {
        v10 = *(this + 1);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecSetReflectionArchive>(v10);
        *(this + 4) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSDSOS::_SpecSetReflectionArchive_default_instance_;
      }

      TSDSOS::SpecSetReflectionArchive::MergeFrom(v9, v11);
    }
  }
}

void TSDSOS::SpecReflectionArchive::CopyFrom(TSDSOS::SpecReflectionArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecReflectionArchive::Clear(this);

    TSDSOS::SpecReflectionArchive::MergeFrom(this, a2);
  }
}

void TSDSOS::SpecReflectionArchive::CopyFrom(TSDSOS::SpecReflectionArchive *this, const TSDSOS::SpecReflectionArchive *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecReflectionArchive::Clear(this);

    TSDSOS::SpecReflectionArchive::MergeFrom(this, a2);
  }
}

uint64_t TSDSOS::SpecReflectionArchive::IsInitialized(TSDSOS::SpecReflectionArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSD::SpecReflectionSetOpacityArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  return (v2 & 2) == 0 || (*(*(this + 4) + 16) & 2) != 0;
}

__n128 TSDSOS::SpecReflectionArchive::InternalSwap(TSDSOS::SpecReflectionArchive *this, TSDSOS::SpecReflectionArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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

uint64_t *TSDSOS::SpecShadowArchive::clear_spec_shadow_set_angle(TSDSOS::SpecShadowArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::SpecShadowSetAngleArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSDSOS::SpecShadowArchive::clear_spec_shadow_set_color(TSDSOS::SpecShadowArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::SpecShadowSetColorArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TSDSOS::SpecShadowArchive::clear_spec_shadow_set_offset(TSDSOS::SpecShadowArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSD::SpecShadowSetOffsetArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

uint64_t *TSDSOS::SpecShadowArchive::clear_spec_shadow_set_opacity(TSDSOS::SpecShadowArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSD::SpecShadowSetOpacityArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

uint64_t *TSDSOS::SpecShadowArchive::clear_spec_shadow_set_radius(TSDSOS::SpecShadowArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSD::SpecShadowSetRadiusArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSDSOS::SpecShadowArchive *TSDSOS::SpecShadowArchive::SpecShadowArchive(TSDSOS::SpecShadowArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575570;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecShadowArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288575570;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecShadowArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSDSOS::SpecShadowArchive *TSDSOS::SpecShadowArchive::SpecShadowArchive(TSDSOS::SpecShadowArchive *this, const TSDSOS::SpecShadowArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575570;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSDSOS::SpecShadowArchive::~SpecShadowArchive(TSDSOS::SpecShadowArchive *this)
{
  sub_27670545C(this);
  sub_2766FFE58(this + 1);
}

{
  TSDSOS::SpecShadowArchive::~SpecShadowArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_27670545C(uint64_t *result)
{
  if (result != &TSDSOS::_SpecShadowArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSDSOS::SpecSetShadowArchive::~SpecSetShadowArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSD::SpecShadowSetAngleArchive::~SpecShadowSetAngleArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSD::SpecShadowSetColorArchive::~SpecShadowSetColorArchive(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSD::SpecShadowSetOffsetArchive::~SpecShadowSetOffsetArchive(v5);
      MEMORY[0x277C9C1D0]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSD::SpecShadowSetOpacityArchive::~SpecShadowSetOpacityArchive(v6);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[8];
    if (result)
    {
      TSD::SpecShadowSetRadiusArchive::~SpecShadowSetRadiusArchive(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSDSOS::SpecShadowArchive::default_instance(TSDSOS::SpecShadowArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecShadowArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_SpecShadowArchive_default_instance_;
}

uint64_t *TSDSOS::SpecShadowArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if (v2)
  {
    this = TSDSOS::SpecSetShadowArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSD::SpecShadowSetAngleArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    this = TSD::SpecShadowSetOffsetArchive::Clear(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = TSD::SpecShadowSetColorArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_17:
  this = TSD::SpecShadowSetOpacityArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    this = TSD::SpecShadowSetRadiusArchive::Clear(*(v1 + 64));
  }

LABEL_9:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSDSOS::SpecShadowArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  while ((sub_27670AF08(a3, &v27) & 1) == 0)
  {
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
    if (v6 >> 3 > 3)
    {
      if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_53;
        }

        *(a1 + 16) |= 8u;
        v17 = *(a1 + 48);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecShadowSetOffsetArchive>(v18);
          *(a1 + 48) = v17;
          v5 = v27;
        }

        v12 = sub_276809A8C(a3, v17, v5);
      }

      else if (v8 == 5)
      {
        if (v6 != 42)
        {
          goto LABEL_53;
        }

        *(a1 + 16) |= 0x10u;
        v21 = *(a1 + 56);
        if (!v21)
        {
          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecShadowSetOpacityArchive>(v22);
          *(a1 + 56) = v21;
          v5 = v27;
        }

        v12 = sub_276809B5C(a3, v21, v5);
      }

      else
      {
        if (v8 != 6 || v6 != 50)
        {
          goto LABEL_53;
        }

        *(a1 + 16) |= 0x20u;
        v13 = *(a1 + 64);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecShadowSetRadiusArchive>(v14);
          *(a1 + 64) = v13;
          v5 = v27;
        }

        v12 = sub_276809C2C(a3, v13, v5);
      }
    }

    else if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_53;
      }

      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecSetShadowArchive>(v16);
        *(a1 + 24) = v15;
        v5 = v27;
      }

      v12 = sub_27680981C(a3, v15, v5);
    }

    else if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_53;
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

        v19 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecShadowSetAngleArchive>(v20);
        *(a1 + 32) = v19;
        v5 = v27;
      }

      v12 = sub_2768098EC(a3, v19, v5);
    }

    else
    {
      if (v8 != 3 || v6 != 26)
      {
LABEL_53:
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
          sub_27670AF80((a1 + 8));
        }

        v12 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_60;
      }

      *(a1 + 16) |= 4u;
      v10 = *(a1 + 40);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecShadowSetColorArchive>(v11);
        *(a1 + 40) = v10;
        v5 = v27;
      }

      v12 = sub_2768099BC(a3, v10, v5);
    }

LABEL_60:
    v27 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  return v27;
}

unsigned __int8 *TSDSOS::SpecShadowArchive::_InternalSerialize(TSDSOS::SpecShadowArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
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

    a2 = TSDSOS::SpecSetShadowArchive::_InternalSerialize(v7, v9, a3, a4);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
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

  v13 = *(this + 4);
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

  a2 = TSD::SpecShadowSetAngleArchive::_InternalSerialize(v13, v15, a3, a4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 5);
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

  a2 = TSD::SpecShadowSetColorArchive::_InternalSerialize(v19, v21, a3, a4);
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
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 6);
  *a2 = 34;
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

  a2 = TSD::SpecShadowSetOffsetArchive::_InternalSerialize(v25, v27, a3, a4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_58;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(this + 7);
  *a2 = 42;
  v32 = *(v31 + 5);
  if (v32 > 0x7F)
  {
    a2[1] = v32 | 0x80;
    v34 = v32 >> 7;
    if (v32 >> 14)
    {
      v33 = a2 + 3;
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
      a2[2] = v34;
      v33 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v32;
    v33 = a2 + 2;
  }

  a2 = TSD::SpecShadowSetOpacityArchive::_InternalSerialize(v31, v33, a3, a4);
  if ((v6 & 0x20) != 0)
  {
LABEL_58:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(this + 8);
    *a2 = 50;
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

    a2 = TSD::SpecShadowSetRadiusArchive::_InternalSerialize(v37, v39, a3, a4);
  }

LABEL_68:
  v43 = *(this + 1);
  if ((v43 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v43 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::SpecShadowArchive::ByteSizeLong(TSDSOS::SpecShadowArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = TSDSOS::SpecSetShadowArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSD::SpecShadowSetAngleArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v8 = TSD::SpecShadowSetColorArchive::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v9 = TSD::SpecShadowSetOffsetArchive::ByteSizeLong(*(this + 6));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
  v10 = TSD::SpecShadowSetOpacityArchive::ByteSizeLong(*(this + 7));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_12:
    v6 = TSD::SpecShadowSetRadiusArchive::ByteSizeLong(*(this + 8));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSDSOS::SpecShadowArchive::MergeFrom(TSDSOS::SpecShadowArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSDSOS::SpecShadowArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSDSOS::SpecShadowArchive::MergeFrom(TSDSOS::SpecShadowArchive *this, const TSDSOS::SpecShadowArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) == 0)
  {
    return;
  }

  if (v5)
  {
    *(this + 4) |= 1u;
    v6 = *(this + 3);
    if (!v6)
    {
      v7 = *(this + 1);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecSetShadowArchive>(v7);
      *(this + 3) = v6;
    }

    if (*(a2 + 3))
    {
      v8 = *(a2 + 3);
    }

    else
    {
      v8 = &TSDSOS::_SpecSetShadowArchive_default_instance_;
    }

    TSDSOS::SpecSetShadowArchive::MergeFrom(v6, v8);
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

  *(this + 4) |= 2u;
  v9 = *(this + 4);
  if (!v9)
  {
    v10 = *(this + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecShadowSetAngleArchive>(v10);
    *(this + 4) = v9;
  }

  if (*(a2 + 4))
  {
    v11 = *(a2 + 4);
  }

  else
  {
    v11 = &TSD::_SpecShadowSetAngleArchive_default_instance_;
  }

  TSD::SpecShadowSetAngleArchive::MergeFrom(v9, v11);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_35:
    *(this + 4) |= 8u;
    v15 = *(this + 6);
    if (!v15)
    {
      v16 = *(this + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecShadowSetOffsetArchive>(v16);
      *(this + 6) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSD::_SpecShadowSetOffsetArchive_default_instance_;
    }

    TSD::SpecShadowSetOffsetArchive::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_51;
    }

    goto LABEL_43;
  }

LABEL_27:
  *(this + 4) |= 4u;
  v12 = *(this + 5);
  if (!v12)
  {
    v13 = *(this + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecShadowSetColorArchive>(v13);
    *(this + 5) = v12;
  }

  if (*(a2 + 5))
  {
    v14 = *(a2 + 5);
  }

  else
  {
    v14 = &TSD::_SpecShadowSetColorArchive_default_instance_;
  }

  TSD::SpecShadowSetColorArchive::MergeFrom(v12, v14);
  if ((v5 & 8) != 0)
  {
    goto LABEL_35;
  }

LABEL_8:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_43:
  *(this + 4) |= 0x10u;
  v18 = *(this + 7);
  if (!v18)
  {
    v19 = *(this + 1);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecShadowSetOpacityArchive>(v19);
    *(this + 7) = v18;
  }

  if (*(a2 + 7))
  {
    v20 = *(a2 + 7);
  }

  else
  {
    v20 = &TSD::_SpecShadowSetOpacityArchive_default_instance_;
  }

  TSD::SpecShadowSetOpacityArchive::MergeFrom(v18, v20);
  if ((v5 & 0x20) != 0)
  {
LABEL_51:
    *(this + 4) |= 0x20u;
    v21 = *(this + 8);
    if (!v21)
    {
      v22 = *(this + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecShadowSetRadiusArchive>(v22);
      *(this + 8) = v21;
    }

    if (*(a2 + 8))
    {
      v23 = *(a2 + 8);
    }

    else
    {
      v23 = &TSD::_SpecShadowSetRadiusArchive_default_instance_;
    }

    TSD::SpecShadowSetRadiusArchive::MergeFrom(v21, v23);
  }
}

void TSDSOS::SpecShadowArchive::CopyFrom(TSDSOS::SpecShadowArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecShadowArchive::Clear(this);

    TSDSOS::SpecShadowArchive::MergeFrom(this, a2);
  }
}

void TSDSOS::SpecShadowArchive::CopyFrom(TSDSOS::SpecShadowArchive *this, const TSDSOS::SpecShadowArchive *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecShadowArchive::Clear(this);

    TSDSOS::SpecShadowArchive::MergeFrom(this, a2);
  }
}

uint64_t TSDSOS::SpecShadowArchive::IsInitialized(TSDSOS::SpecShadowArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = *(this + 3);
    v5 = *(v4 + 16);
    if ((v5 & 2) == 0)
    {
      return 0;
    }

    if (v5)
    {
      result = TSD::ShadowArchive::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(this + 4);
    }
  }

  if ((v2 & 2) != 0)
  {
    result = TSD::SpecShadowSetAngleArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSD::SpecShadowSetColorArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSD::SpecShadowSetOffsetArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSD::SpecShadowSetOpacityArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) == 0)
  {
    return 1;
  }

  result = TSD::SpecShadowSetRadiusArchive::IsInitialized(*(this + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSDSOS::SpecShadowArchive::InternalSwap(TSDSOS::SpecShadowArchive *this, TSDSOS::SpecShadowArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  return result;
}

uint64_t *TSDSOS::SpecStrokeArchive::clear_spec_frame_set_asset_scale(TSDSOS::SpecStrokeArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::SpecFrameSetAssetScaleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TSDSOS::SpecStrokeArchive::clear_spec_stroke_set_color(TSDSOS::SpecStrokeArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::SpecStrokeSetColorArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TSDSOS::SpecStrokeArchive::clear_spec_stroke_set_pattern(TSDSOS::SpecStrokeArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSD::SpecStrokeSetPatternArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

uint64_t *TSDSOS::SpecStrokeArchive::clear_spec_stroke_set_width(TSDSOS::SpecStrokeArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSD::SpecStrokeSetWidthArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSDSOS::SpecStrokeArchive *TSDSOS::SpecStrokeArchive::SpecStrokeArchive(TSDSOS::SpecStrokeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575620;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecStrokeArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288575620;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecStrokeArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSDSOS::SpecStrokeArchive *TSDSOS::SpecStrokeArchive::SpecStrokeArchive(TSDSOS::SpecStrokeArchive *this, const TSDSOS::SpecStrokeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575620;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSDSOS::SpecStrokeArchive::~SpecStrokeArchive(TSDSOS::SpecStrokeArchive *this)
{
  sub_27670681C(this);
  sub_2766FFE58(this + 1);
}

{
  TSDSOS::SpecStrokeArchive::~SpecStrokeArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_27670681C(uint64_t *result)
{
  if (result != &TSDSOS::_SpecStrokeArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSD::SpecFrameSetAssetScaleArchive::~SpecFrameSetAssetScaleArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSDSOS::SpecSetStrokeArchive::~SpecSetStrokeArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSD::SpecStrokeSetColorArchive::~SpecStrokeSetColorArchive(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSD::SpecStrokeSetPatternArchive::~SpecStrokeSetPatternArchive(v5);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[7];
    if (result)
    {
      TSD::SpecStrokeSetWidthArchive::~SpecStrokeSetWidthArchive(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSDSOS::SpecStrokeArchive::default_instance(TSDSOS::SpecStrokeArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecStrokeArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_SpecStrokeArchive_default_instance_;
}

uint64_t *TSDSOS::SpecStrokeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    this = TSD::SpecFrameSetAssetScaleArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_14:
      this = TSD::SpecStrokeSetColorArchive::Clear(*(v1 + 40));
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

  this = TSDSOS::SpecSetStrokeArchive::Clear(*(v1 + 32));
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
  this = TSD::SpecStrokeSetPatternArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSD::SpecStrokeSetWidthArchive::Clear(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSDSOS::SpecStrokeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while ((sub_27670AF08(a3, &v25) & 1) == 0)
  {
    v5 = (v25 + 1);
    v6 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v25 + 2);
LABEL_6:
      v25 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v7 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v23;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_46;
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

          v19 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecFrameSetAssetScaleArchive>(v20);
          *(a1 + 24) = v19;
          v5 = v25;
        }

        v11 = sub_276809CFC(a3, v19, v5);
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_46:
          if (v6)
          {
            v21 = (v6 & 7) == 4;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            *(a3 + 80) = v6 - 1;
            return v25;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v11 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_53;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecSetStrokeArchive>(v14);
          *(a1 + 32) = v13;
          v5 = v25;
        }

        v11 = sub_276809DCC(a3, v13, v5);
      }
    }

    else if (v8 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_46;
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

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecStrokeSetColorArchive>(v16);
        *(a1 + 40) = v15;
        v5 = v25;
      }

      v11 = sub_276809E9C(a3, v15, v5);
    }

    else if (v8 == 4)
    {
      if (v6 != 34)
      {
        goto LABEL_46;
      }

      *(a1 + 16) |= 8u;
      v17 = *(a1 + 48);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecStrokeSetPatternArchive>(v18);
        *(a1 + 48) = v17;
        v5 = v25;
      }

      v11 = sub_276809F6C(a3, v17, v5);
    }

    else
    {
      if (v8 != 5 || v6 != 42)
      {
        goto LABEL_46;
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecStrokeSetWidthArchive>(v10);
        *(a1 + 56) = v9;
        v5 = v25;
      }

      v11 = sub_27680A03C(a3, v9, v5);
    }

LABEL_53:
    v25 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v25;
}

unsigned __int8 *TSDSOS::SpecStrokeArchive::_InternalSerialize(TSDSOS::SpecStrokeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
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

    a2 = TSD::SpecFrameSetAssetScaleArchive::_InternalSerialize(v7, v9, a3, a4);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
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

  v13 = *(this + 4);
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

  a2 = TSDSOS::SpecSetStrokeArchive::_InternalSerialize(v13, v15, a3, a4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 5);
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

  a2 = TSD::SpecStrokeSetColorArchive::_InternalSerialize(v19, v21, a3, a4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 6);
  *a2 = 34;
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

  a2 = TSD::SpecStrokeSetPatternArchive::_InternalSerialize(v25, v27, a3, a4);
  if ((v6 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 7);
    *a2 = 42;
    v32 = *(v31 + 5);
    if (v32 > 0x7F)
    {
      a2[1] = v32 | 0x80;
      v34 = v32 >> 7;
      if (v32 >> 14)
      {
        v33 = a2 + 3;
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
        a2[2] = v34;
        v33 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v32;
      v33 = a2 + 2;
    }

    a2 = TSD::SpecStrokeSetWidthArchive::_InternalSerialize(v31, v33, a3, a4);
  }

LABEL_57:
  v37 = *(this + 1);
  if ((v37 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v37 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::SpecStrokeArchive::ByteSizeLong(TSDSOS::SpecStrokeArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (v2)
  {
    v4 = TSD::SpecFrameSetAssetScaleArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSDSOS::SpecSetStrokeArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v8 = TSD::SpecStrokeSetColorArchive::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v9 = TSD::SpecStrokeSetPatternArchive::ByteSizeLong(*(this + 6));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v6 = TSD::SpecStrokeSetWidthArchive::ByteSizeLong(*(this + 7));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

void TSDSOS::SpecStrokeArchive::MergeFrom(TSDSOS::SpecStrokeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSDSOS::SpecStrokeArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

double TSDSOS::SpecStrokeArchive::MergeFrom(TSDSOS::SpecStrokeArchive *this, const TSDSOS::SpecStrokeArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 4);
  if ((v6 & 0x1F) == 0)
  {
    return result;
  }

  if (v6)
  {
    *(this + 4) |= 1u;
    v7 = *(this + 3);
    if (!v7)
    {
      v8 = *(this + 1);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecFrameSetAssetScaleArchive>(v8);
      *(this + 3) = v7;
    }

    if (*(a2 + 3))
    {
      v9 = *(a2 + 3);
    }

    else
    {
      v9 = &TSD::_SpecFrameSetAssetScaleArchive_default_instance_;
    }

    result = TSD::SpecFrameSetAssetScaleArchive::MergeFrom(v7, v9);
    if ((v6 & 2) == 0)
    {
LABEL_6:
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }

LABEL_26:
      *(this + 4) |= 4u;
      v13 = *(this + 5);
      if (!v13)
      {
        v14 = *(this + 1);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecStrokeSetColorArchive>(v14);
        *(this + 5) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = &TSD::_SpecStrokeSetColorArchive_default_instance_;
      }

      TSD::SpecStrokeSetColorArchive::MergeFrom(v13, v15);
      if ((v6 & 8) == 0)
      {
LABEL_8:
        if ((v6 & 0x10) == 0)
        {
          return result;
        }

        goto LABEL_42;
      }

      goto LABEL_34;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 4) |= 2u;
  v10 = *(this + 4);
  if (!v10)
  {
    v11 = *(this + 1);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecSetStrokeArchive>(v11);
    *(this + 4) = v10;
  }

  if (*(a2 + 4))
  {
    v12 = *(a2 + 4);
  }

  else
  {
    v12 = &TSDSOS::_SpecSetStrokeArchive_default_instance_;
  }

  TSDSOS::SpecSetStrokeArchive::MergeFrom(v10, v12);
  if ((v6 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_7:
  if ((v6 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_34:
  *(this + 4) |= 8u;
  v16 = *(this + 6);
  if (!v16)
  {
    v17 = *(this + 1);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecStrokeSetPatternArchive>(v17);
    *(this + 6) = v16;
  }

  if (*(a2 + 6))
  {
    v18 = *(a2 + 6);
  }

  else
  {
    v18 = &TSD::_SpecStrokeSetPatternArchive_default_instance_;
  }

  TSD::SpecStrokeSetPatternArchive::MergeFrom(v16, v18);
  if ((v6 & 0x10) != 0)
  {
LABEL_42:
    *(this + 4) |= 0x10u;
    v19 = *(this + 7);
    if (!v19)
    {
      v20 = *(this + 1);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::Arena::CreateMaybeMessage<TSD::SpecStrokeSetWidthArchive>(v20);
      *(this + 7) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = &TSD::_SpecStrokeSetWidthArchive_default_instance_;
    }

    return TSD::SpecStrokeSetWidthArchive::MergeFrom(v19, v21);
  }

  return result;
}

void TSDSOS::SpecStrokeArchive::CopyFrom(TSDSOS::SpecStrokeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecStrokeArchive::Clear(this);

    TSDSOS::SpecStrokeArchive::MergeFrom(this, a2);
  }
}

double TSDSOS::SpecStrokeArchive::CopyFrom(TSDSOS::SpecStrokeArchive *this, const TSDSOS::SpecStrokeArchive *a2)
{
  if (a2 != this)
  {
    TSDSOS::SpecStrokeArchive::Clear(this);

    return TSDSOS::SpecStrokeArchive::MergeFrom(this, a2);
  }

  return result;
}

uint64_t TSDSOS::SpecStrokeArchive::IsInitialized(TSDSOS::SpecStrokeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSD::SpecFrameSetAssetScaleArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(this + 4);
    v5 = *(v4 + 16);
    if ((v5 & 2) == 0)
    {
      return 0;
    }

    if (v5)
    {
      result = TSD::StrokeArchive::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(this + 4);
    }
  }

  if ((v2 & 4) != 0)
  {
    result = TSD::SpecStrokeSetColorArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSD::SpecStrokeSetPatternArchive::IsInitialized(*(this + 6));
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

  result = TSD::SpecStrokeSetWidthArchive::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSDSOS::SpecStrokeArchive::InternalSwap(TSDSOS::SpecStrokeArchive *this, TSDSOS::SpecStrokeArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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

TSSSOS::SpecDoubleArchive *TSDSOS::BaseShapeStylePropertyChangeSetArchive::clear_opacity(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSDSOS::BaseShapeStylePropertyChangeSetArchive *TSDSOS::BaseShapeStylePropertyChangeSetArchive::BaseShapeStylePropertyChangeSetArchive(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885756D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BaseShapeStylePropertyChangeSetArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 71) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2885756D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BaseShapeStylePropertyChangeSetArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 71) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSDSOS::BaseShapeStylePropertyChangeSetArchive *TSDSOS::BaseShapeStylePropertyChangeSetArchive::BaseShapeStylePropertyChangeSetArchive(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this, const TSDSOS::BaseShapeStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885756D0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  v7 = *(a2 + 20);
  *(this + 83) = *(a2 + 83);
  *(this + 20) = v7;
  return this;
}

void TSDSOS::BaseShapeStylePropertyChangeSetArchive::~BaseShapeStylePropertyChangeSetArchive(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this)
{
  sub_276707A24(this);
  sub_2766FFE58(this + 1);
}

{
  TSDSOS::BaseShapeStylePropertyChangeSetArchive::~BaseShapeStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_276707A24(uint64_t *result)
{
  if (result != &TSDSOS::_BaseShapeStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSDSOS::SpecFillArchive::~SpecFillArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSDSOS::SpecStrokeArchive::~SpecStrokeArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    if (v1[5])
    {
      v4 = MEMORY[0x277C9B9E0]();
      MEMORY[0x277C9C1D0](v4, 0x10A1C40D4912B22);
    }

    v5 = v1[6];
    if (v5)
    {
      TSDSOS::SpecShadowArchive::~SpecShadowArchive(v5);
      MEMORY[0x277C9C1D0]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSDSOS::SpecReflectionArchive::~SpecReflectionArchive(v6);
      MEMORY[0x277C9C1D0]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSDSOS::SpecLineEndArchive::~SpecLineEndArchive(v7);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[9];
    if (result)
    {
      TSDSOS::SpecLineEndArchive::~SpecLineEndArchive(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSDSOS::BaseShapeStylePropertyChangeSetArchive::default_instance(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_BaseShapeStylePropertyChangeSetArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_BaseShapeStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSDSOS::BaseShapeStylePropertyChangeSetArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    this = TSDSOS::SpecFillArchive::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSDSOS::SpecStrokeArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    this = TSDSOS::SpecReflectionArchive::Clear(*(v1 + 56));
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  this = TSDSOS::SpecShadowArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_21:
  this = TSDSOS::SpecLineEndArchive::Clear(*(v1 + 64));
  if ((v2 & 0x40) != 0)
  {
LABEL_9:
    this = TSDSOS::SpecLineEndArchive::Clear(*(v1 + 72));
  }

LABEL_10:
  *(v1 + 80) = 0;
  if ((v2 & 0x3F00) != 0)
  {
    *(v1 + 85) = 0;
    *(v1 + 81) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSDSOS::BaseShapeStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v63 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v63) & 1) == 0)
  {
    while (1)
    {
      v7 = (v63 + 1);
      v8 = *v63;
      if (*v63 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v63, (v9 - 128));
          v63 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_112;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v63 + 2);
      }

      v63 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_87;
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

            v10 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecFillArchive>(v11);
            *(a1 + 24) = v10;
            v7 = v63;
          }

          v12 = sub_27680A10C(a3, v10, v7);
          goto LABEL_94;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_87;
          }

          v5 |= 0x80u;
          v35 = (v7 + 1);
          v34 = *v7;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_57;
          }

          v36 = *v35;
          v34 = (v36 << 7) + v34 - 128;
          if (v36 < 0)
          {
            v57 = google::protobuf::internal::VarintParseSlow64(v7, v34);
            v63 = v57;
            *(a1 + 80) = v58 != 0;
            if (!v57)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v35 = (v7 + 2);
LABEL_57:
            v63 = v35;
            *(a1 + 80) = v34 != 0;
          }

          goto LABEL_95;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_87;
          }

          *(a1 + 16) |= 2u;
          v26 = *(a1 + 32);
          if (!v26)
          {
            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecStrokeArchive>(v27);
            *(a1 + 32) = v26;
            v7 = v63;
          }

          v12 = sub_27680A1DC(a3, v26, v7);
          goto LABEL_94;
        case 4u:
          if (v8 != 32)
          {
            goto LABEL_87;
          }

          v5 |= 0x100u;
          v29 = (v7 + 1);
          v28 = *v7;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_47;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if (v30 < 0)
          {
            v53 = google::protobuf::internal::VarintParseSlow64(v7, v28);
            v63 = v53;
            *(a1 + 81) = v54 != 0;
            if (!v53)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v29 = (v7 + 2);
LABEL_47:
            v63 = v29;
            *(a1 + 81) = v28 != 0;
          }

          goto LABEL_95;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_87;
          }

          *(a1 + 16) |= 4u;
          v18 = *(a1 + 40);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = MEMORY[0x277C9BB80](v19);
            LODWORD(v18) = v20;
            *(a1 + 40) = v20;
            v7 = v63;
          }

          v12 = sub_27680A2AC(a3, v18, v7);
          goto LABEL_94;
        case 6u:
          if (v8 != 48)
          {
            goto LABEL_87;
          }

          v5 |= 0x200u;
          v38 = (v7 + 1);
          v37 = *v7;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_62;
          }

          v39 = *v38;
          v37 = (v39 << 7) + v37 - 128;
          if (v39 < 0)
          {
            v59 = google::protobuf::internal::VarintParseSlow64(v7, v37);
            v63 = v59;
            *(a1 + 82) = v60 != 0;
            if (!v59)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v38 = (v7 + 2);
LABEL_62:
            v63 = v38;
            *(a1 + 82) = v37 != 0;
          }

          goto LABEL_95;
        case 7u:
          if (v8 != 58)
          {
            goto LABEL_87;
          }

          *(a1 + 16) |= 8u;
          v43 = *(a1 + 48);
          if (!v43)
          {
            v44 = *(a1 + 8);
            if (v44)
            {
              v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
            }

            v43 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecShadowArchive>(v44);
            *(a1 + 48) = v43;
            v7 = v63;
          }

          v12 = sub_27680A37C(a3, v43, v7);
          goto LABEL_94;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_87;
          }

          v5 |= 0x400u;
          v32 = (v7 + 1);
          v31 = *v7;
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }

          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if (v33 < 0)
          {
            v55 = google::protobuf::internal::VarintParseSlow64(v7, v31);
            v63 = v55;
            *(a1 + 83) = v56 != 0;
            if (!v55)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v32 = (v7 + 2);
LABEL_52:
            v63 = v32;
            *(a1 + 83) = v31 != 0;
          }

          goto LABEL_95;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_87;
          }

          *(a1 + 16) |= 0x10u;
          v46 = *(a1 + 56);
          if (!v46)
          {
            v47 = *(a1 + 8);
            if (v47)
            {
              v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
            }

            v46 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecReflectionArchive>(v47);
            *(a1 + 56) = v46;
            v7 = v63;
          }

          v12 = sub_27680A44C(a3, v46, v7);
          goto LABEL_94;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_87;
          }

          v5 |= 0x800u;
          v24 = (v7 + 1);
          v23 = *v7;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_36;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if (v25 < 0)
          {
            v51 = google::protobuf::internal::VarintParseSlow64(v7, v23);
            v63 = v51;
            *(a1 + 84) = v52 != 0;
            if (!v51)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v24 = (v7 + 2);
LABEL_36:
            v63 = v24;
            *(a1 + 84) = v23 != 0;
          }

          goto LABEL_95;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_87;
          }

          *(a1 + 16) |= 0x20u;
          v21 = *(a1 + 64);
          if (v21)
          {
            goto LABEL_80;
          }

          v45 = *(a1 + 8);
          if (v45)
          {
            v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecLineEndArchive>(v45);
          *(a1 + 64) = v21;
          goto LABEL_79;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_87;
          }

          v5 |= 0x1000u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_20;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if (v17 < 0)
          {
            v49 = google::protobuf::internal::VarintParseSlow64(v7, v15);
            v63 = v49;
            *(a1 + 85) = v50 != 0;
            if (!v49)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v16 = (v7 + 2);
LABEL_20:
            v63 = v16;
            *(a1 + 85) = v15 != 0;
          }

          goto LABEL_95;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_87;
          }

          *(a1 + 16) |= 0x40u;
          v21 = *(a1 + 72);
          if (v21)
          {
            goto LABEL_80;
          }

          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecLineEndArchive>(v22);
          *(a1 + 72) = v21;
LABEL_79:
          v7 = v63;
LABEL_80:
          v12 = sub_27680A51C(a3, v21, v7);
          goto LABEL_94;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_87;
          }

          v5 |= 0x2000u;
          v41 = (v7 + 1);
          v40 = *v7;
          if ((v40 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          v42 = *v41;
          v40 = (v42 << 7) + v40 - 128;
          if (v42 < 0)
          {
            v61 = google::protobuf::internal::VarintParseSlow64(v7, v40);
            v63 = v61;
            *(a1 + 86) = v62 != 0;
            if (!v61)
            {
              goto LABEL_112;
            }
          }

          else
          {
            v41 = (v7 + 2);
LABEL_67:
            v63 = v41;
            *(a1 + 86) = v40 != 0;
          }

          goto LABEL_95;
        default:
LABEL_87:
          if (v8)
          {
            v48 = (v8 & 7) == 4;
          }

          else
          {
            v48 = 1;
          }

          if (v48)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_94:
          v63 = v12;
          if (!v12)
          {
LABEL_112:
            v63 = 0;
            goto LABEL_2;
          }

LABEL_95:
          if (sub_27670AF08(a3, &v63))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v63;
}

unsigned __int8 *TSDSOS::BaseShapeStylePropertyChangeSetArchive::_InternalSerialize(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
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

    a2 = TSDSOS::SpecFillArchive::_InternalSerialize(v7, v9, a3, a4);
    if ((v6 & 0x80) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 80);
  *a2 = 16;
  a2[1] = v13;
  a2 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 4);
  *a2 = 26;
  v15 = *(v14 + 5);
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

  a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v14, v16, a3, a4);
  if ((v6 & 0x100) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_42;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 81);
  *a2 = 32;
  a2[1] = v20;
  a2 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 0x200) == 0)
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

  v21 = *(this + 5);
  *a2 = 42;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = a2 + 3;
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
      a2[2] = v24;
      v23 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v22;
    v23 = a2 + 2;
  }

  a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v21, v23, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 82);
  *a2 = 48;
  a2[1] = v27;
  a2 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_65;
  }

LABEL_55:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 6);
  *a2 = 58;
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

  a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v28, v30, a3, a4);
  if ((v6 & 0x400) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_68;
  }

LABEL_65:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v34 = *(this + 83);
  *a2 = 64;
  a2[1] = v34;
  a2 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_78;
  }

LABEL_68:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v35 = *(this + 7);
  *a2 = 74;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    a2[1] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = a2 + 3;
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
      a2[2] = v38;
      v37 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v36;
    v37 = a2 + 2;
  }

  a2 = TSDSOS::SpecReflectionArchive::_InternalSerialize(v35, v37, a3, a4);
  if ((v6 & 0x800) == 0)
  {
LABEL_11:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_81;
  }

LABEL_78:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v41 = *(this + 84);
  *a2 = 80;
  a2[1] = v41;
  a2 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_12:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_91;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 8);
  *a2 = 90;
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

  a2 = TSDSOS::SpecLineEndArchive::_InternalSerialize(v42, v44, a3, a4);
  if ((v6 & 0x1000) == 0)
  {
LABEL_13:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_94;
  }

LABEL_91:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v48 = *(this + 85);
  *a2 = 96;
  a2[1] = v48;
  a2 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_104;
  }

LABEL_94:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(this + 9);
  *a2 = 106;
  v50 = *(v49 + 5);
  if (v50 > 0x7F)
  {
    a2[1] = v50 | 0x80;
    v52 = v50 >> 7;
    if (v50 >> 14)
    {
      v51 = a2 + 3;
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
      v51 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v50;
    v51 = a2 + 2;
  }

  a2 = TSDSOS::SpecLineEndArchive::_InternalSerialize(v49, v51, a3, a4);
  if ((v6 & 0x2000) != 0)
  {
LABEL_104:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v55 = *(this + 86);
    *a2 = 112;
    a2[1] = v55;
    a2 += 2;
  }

LABEL_107:
  v56 = *(this + 1);
  if ((v56 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v56 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::BaseShapeStylePropertyChangeSetArchive::ByteSizeLong(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (!*(this + 4))
  {
    v4 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = TSDSOS::SpecFillArchive::ByteSizeLong(*(this + 3));
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
    v6 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v10 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 5));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v11 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(this + 6));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v13 = TSDSOS::SpecLineEndArchive::ByteSizeLong(*(this + 8));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v12 = TSDSOS::SpecReflectionArchive::ByteSizeLong(*(this + 7));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v2 & 0x40) != 0)
  {
LABEL_13:
    v7 = TSDSOS::SpecLineEndArchive::ByteSizeLong(*(this + 9));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  v4 = v3 + ((v2 >> 6) & 2);
LABEL_15:
  if ((v2 & 0x3F00) != 0)
  {
    v8.i64[0] = 0x200000002;
    v8.i64[1] = 0x200000002;
    v4 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_276825F60), v8)) + ((v2 >> 11) & 2) + ((v2 >> 12) & 2);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSDSOS::BaseShapeStylePropertyChangeSetArchive::MergeFrom(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSDSOS::BaseShapeStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSDSOS::BaseShapeStylePropertyChangeSetArchive::MergeFrom(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this, const TSDSOS::BaseShapeStylePropertyChangeSetArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecFillArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSDSOS::_SpecFillArchive_default_instance_;
      }

      TSDSOS::SpecFillArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }
    }

    else if ((v5 & 2) == 0)
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecStrokeArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSDSOS::_SpecStrokeArchive_default_instance_;
    }

    TSDSOS::SpecStrokeArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }

LABEL_26:
    *(this + 4) |= 4u;
    v12 = *(this + 5);
    if (!v12)
    {
      v13 = *(this + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C9BB80](v13);
      *(this + 5) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = MEMORY[0x277D80C08];
    }

    TSSSOS::SpecDoubleArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
    }

LABEL_34:
    *(this + 4) |= 8u;
    v15 = *(this + 6);
    if (!v15)
    {
      v16 = *(this + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecShadowArchive>(v16);
      *(this + 6) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSDSOS::_SpecShadowArchive_default_instance_;
    }

    TSDSOS::SpecShadowArchive::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
LABEL_50:
      if ((v5 & 0x20) != 0)
      {
        *(this + 4) |= 0x20u;
        v21 = *(this + 8);
        if (!v21)
        {
          v22 = *(this + 1);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecLineEndArchive>(v22);
          *(this + 8) = v21;
        }

        if (*(a2 + 8))
        {
          v23 = *(a2 + 8);
        }

        else
        {
          v23 = &TSDSOS::_SpecLineEndArchive_default_instance_;
        }

        TSDSOS::SpecLineEndArchive::MergeFrom(v21, v23);
        if ((v5 & 0x40) == 0)
        {
LABEL_52:
          if ((v5 & 0x80) == 0)
          {
LABEL_54:
            *(this + 4) |= v5;
            goto LABEL_55;
          }

LABEL_53:
          *(this + 80) = *(a2 + 80);
          goto LABEL_54;
        }
      }

      else if ((v5 & 0x40) == 0)
      {
        goto LABEL_52;
      }

      *(this + 4) |= 0x40u;
      v24 = *(this + 9);
      if (!v24)
      {
        v25 = *(this + 1);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecLineEndArchive>(v25);
        *(this + 9) = v24;
      }

      if (*(a2 + 9))
      {
        v26 = *(a2 + 9);
      }

      else
      {
        v26 = &TSDSOS::_SpecLineEndArchive_default_instance_;
      }

      TSDSOS::SpecLineEndArchive::MergeFrom(v24, v26);
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_53;
    }

LABEL_42:
    *(this + 4) |= 0x10u;
    v18 = *(this + 7);
    if (!v18)
    {
      v19 = *(this + 1);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecReflectionArchive>(v19);
      *(this + 7) = v18;
    }

    if (*(a2 + 7))
    {
      v20 = *(a2 + 7);
    }

    else
    {
      v20 = &TSDSOS::_SpecReflectionArchive_default_instance_;
    }

    TSDSOS::SpecReflectionArchive::MergeFrom(v18, v20);
    goto LABEL_50;
  }

LABEL_55:
  if ((v5 & 0x3F00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    *(this + 81) = *(a2 + 81);
    if ((v5 & 0x200) == 0)
    {
LABEL_58:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_84;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_58;
  }

  *(this + 82) = *(a2 + 82);
  if ((v5 & 0x400) == 0)
  {
LABEL_59:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(this + 83) = *(a2 + 83);
  if ((v5 & 0x800) == 0)
  {
LABEL_60:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

LABEL_86:
    *(this + 85) = *(a2 + 85);
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_85:
  *(this + 84) = *(a2 + 84);
  if ((v5 & 0x1000) != 0)
  {
    goto LABEL_86;
  }

LABEL_61:
  if ((v5 & 0x2000) != 0)
  {
LABEL_62:
    *(this + 86) = *(a2 + 86);
  }

LABEL_63:
  *(this + 4) |= v5;
}

void TSDSOS::BaseShapeStylePropertyChangeSetArchive::CopyFrom(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSDSOS::BaseShapeStylePropertyChangeSetArchive::Clear(this);

    TSDSOS::BaseShapeStylePropertyChangeSetArchive::MergeFrom(this, a2);
  }
}

void TSDSOS::BaseShapeStylePropertyChangeSetArchive::CopyFrom(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this, const TSDSOS::BaseShapeStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    TSDSOS::BaseShapeStylePropertyChangeSetArchive::Clear(this);

    TSDSOS::BaseShapeStylePropertyChangeSetArchive::MergeFrom(this, a2);
  }
}

uint64_t TSDSOS::BaseShapeStylePropertyChangeSetArchive::IsInitialized(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSDSOS::SpecFillArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSDSOS::SpecReflectionArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSDSOS::SpecLineEndArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40) == 0)
  {
    return 1;
  }

  result = TSDSOS::SpecLineEndArchive::IsInitialized(*(this + 9));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSDSOS::BaseShapeStylePropertyChangeSetArchive::InternalSwap(TSDSOS::BaseShapeStylePropertyChangeSetArchive *this, TSDSOS::BaseShapeStylePropertyChangeSetArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v12 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v12;
  LODWORD(v12) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v12;
  LOWORD(v12) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v12;
  LOBYTE(v12) = *(this + 86);
  *(this + 86) = *(a2 + 86);
  *(a2 + 86) = v12;
  return result;
}

TSSSOS::SpecDoubleArchive *TSDSOS::MediaStylePropertyChangeSetArchive::clear_opacity(TSDSOS::MediaStylePropertyChangeSetArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSSSOS::SpecDoubleArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSDSOS::MediaStylePropertyChangeSetArchive *TSDSOS::MediaStylePropertyChangeSetArchive::MediaStylePropertyChangeSetArchive(TSDSOS::MediaStylePropertyChangeSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575780;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaStylePropertyChangeSetArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288575780;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaStylePropertyChangeSetArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSDSOS::MediaStylePropertyChangeSetArchive *TSDSOS::MediaStylePropertyChangeSetArchive::MediaStylePropertyChangeSetArchive(TSDSOS::MediaStylePropertyChangeSetArchive *this, const TSDSOS::MediaStylePropertyChangeSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575780;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSDSOS::MediaStylePropertyChangeSetArchive::~MediaStylePropertyChangeSetArchive(TSDSOS::MediaStylePropertyChangeSetArchive *this)
{
  sub_276709464(this);
  sub_2766FFE58(this + 1);
}

{
  TSDSOS::MediaStylePropertyChangeSetArchive::~MediaStylePropertyChangeSetArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_276709464(uint64_t *result)
{
  if (result != &TSDSOS::_MediaStylePropertyChangeSetArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSDSOS::SpecStrokeArchive::~SpecStrokeArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C9B9E0]();
      MEMORY[0x277C9C1D0](v3, 0x10A1C40D4912B22);
    }

    v4 = v1[5];
    if (v4)
    {
      TSDSOS::SpecShadowArchive::~SpecShadowArchive(v4);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[6];
    if (result)
    {
      TSDSOS::SpecReflectionArchive::~SpecReflectionArchive(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSDSOS::MediaStylePropertyChangeSetArchive::default_instance(TSDSOS::MediaStylePropertyChangeSetArchive *this)
{
  if (atomic_load_explicit(scc_info_MediaStylePropertyChangeSetArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSDSOS::_MediaStylePropertyChangeSetArchive_default_instance_;
}

uint64_t *TSDSOS::MediaStylePropertyChangeSetArchive::Clear(uint64_t *this)
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
    this = TSSSOS::SpecDoubleArchive::Clear(*(v1 + 32));
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

  this = TSDSOS::SpecStrokeArchive::Clear(this[3]);
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
  this = TSDSOS::SpecShadowArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSDSOS::SpecReflectionArchive::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSDSOS::MediaStylePropertyChangeSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v45 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v45) & 1) == 0)
  {
    while (1)
    {
      v7 = (v45 + 1);
      v8 = *v45;
      if ((*v45 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v45, (v9 - 128));
      v45 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_86;
      }

      v7 = TagFallback;
      v8 = v25;
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
              *(a1 + 16) |= 8u;
              v34 = *(a1 + 48);
              if (!v34)
              {
                v35 = *(a1 + 8);
                if (v35)
                {
                  v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
                }

                v34 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecReflectionArchive>(v35);
                *(a1 + 48) = v34;
                v7 = v45;
              }

              v28 = sub_27680A44C(a3, v34, v7);
              goto LABEL_74;
            }

LABEL_67:
            if (v8)
            {
              v36 = (v8 & 7) == 4;
            }

            else
            {
              v36 = 1;
            }

            if (v36)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27670AF80((a1 + 8));
            }

            v28 = google::protobuf::internal::UnknownFieldParse();
LABEL_74:
            v45 = v28;
            if (!v28)
            {
              goto LABEL_86;
            }

            goto LABEL_75;
          }

          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_67;
          }

          v5 |= 0x80u;
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_40:
            v45 = v22;
            *(a1 + 59) = v21 != 0;
            goto LABEL_75;
          }

          v43 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v45 = v43;
          *(a1 + 59) = v44 != 0;
          if (!v43)
          {
LABEL_86:
            v45 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 4u;
              v29 = *(a1 + 40);
              if (!v29)
              {
                v30 = *(a1 + 8);
                if (v30)
                {
                  v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
                }

                v29 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecShadowArchive>(v30);
                *(a1 + 40) = v29;
                v7 = v45;
              }

              v28 = sub_27680A37C(a3, v29, v7);
              goto LABEL_74;
            }

            goto LABEL_67;
          }

          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_67;
          }

          v5 |= 0x40u;
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
            v45 = v16;
            *(a1 + 58) = v15 != 0;
            goto LABEL_75;
          }

          v39 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v45 = v39;
          *(a1 + 58) = v40 != 0;
          if (!v39)
          {
            goto LABEL_86;
          }
        }
      }

      else if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 2u;
            v31 = *(a1 + 32);
            if (!v31)
            {
              v32 = *(a1 + 8);
              if (v32)
              {
                v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
              }

              v33 = MEMORY[0x277C9BB80](v32);
              LODWORD(v31) = v33;
              *(a1 + 32) = v33;
              v7 = v45;
            }

            v28 = sub_27680A2AC(a3, v31, v7);
            goto LABEL_74;
          }

          goto LABEL_67;
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_67;
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
          v45 = v19;
          *(a1 + 57) = v18 != 0;
          goto LABEL_75;
        }

        v41 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v45 = v41;
        *(a1 + 57) = v42 != 0;
        if (!v41)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v26 = *(a1 + 24);
            if (!v26)
            {
              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecStrokeArchive>(v27);
              *(a1 + 24) = v26;
              v7 = v45;
            }

            v28 = sub_27680A1DC(a3, v26, v7);
            goto LABEL_74;
          }

          goto LABEL_67;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_67;
        }

        v5 |= 0x10u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_18:
          v45 = v13;
          *(a1 + 56) = v12 != 0;
          goto LABEL_75;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v45 = v37;
        *(a1 + 56) = v38 != 0;
        if (!v37)
        {
          goto LABEL_86;
        }
      }

LABEL_75:
      if (sub_27670AF08(a3, &v45))
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
  *(a1 + 16) |= v5;
  return v45;
}

unsigned __int8 *TSDSOS::MediaStylePropertyChangeSetArchive::_InternalSerialize(TSDSOS::MediaStylePropertyChangeSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
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

    a2 = TSDSOS::SpecStrokeArchive::_InternalSerialize(v7, v9, a3, a4);
    if ((v6 & 0x10) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 56);
  *a2 = 16;
  a2[1] = v13;
  a2 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_23:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 4);
  *a2 = 26;
  v15 = *(v14 + 5);
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

  a2 = TSSSOS::SpecDoubleArchive::_InternalSerialize(v14, v16, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_33:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 57);
  *a2 = 32;
  a2[1] = v20;
  a2 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_36:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 5);
  *a2 = 42;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = a2 + 3;
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
      a2[2] = v24;
      v23 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v22;
    v23 = a2 + 2;
  }

  a2 = TSDSOS::SpecShadowArchive::_InternalSerialize(v21, v23, a3, a4);
  if ((v6 & 0x40) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_46:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 58);
  *a2 = 48;
  a2[1] = v27;
  a2 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 6);
  *a2 = 58;
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

  a2 = TSDSOS::SpecReflectionArchive::_InternalSerialize(v28, v30, a3, a4);
  if ((v6 & 0x80) != 0)
  {
LABEL_59:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v34 = *(this + 59);
    *a2 = 64;
    a2[1] = v34;
    a2 += 2;
  }

LABEL_62:
  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v35 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSDSOS::MediaStylePropertyChangeSetArchive::ByteSizeLong(TSDSOS::MediaStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_12;
  }

  if (v2)
  {
    v5 = TSDSOS::SpecStrokeArchive::ByteSizeLong(*(this + 3));
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
    v6 = TSSSOS::SpecDoubleArchive::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v10 = TSDSOS::SpecShadowArchive::ByteSizeLong(*(this + 5));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ((v2 & 8) != 0)
  {
LABEL_10:
    v7 = TSDSOS::SpecReflectionArchive::ByteSizeLong(*(this + 6));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  v4 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_276825F70), v8));
LABEL_12:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

void TSDSOS::MediaStylePropertyChangeSetArchive::MergeFrom(TSDSOS::MediaStylePropertyChangeSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSDSOS::MediaStylePropertyChangeSetArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSDSOS::MediaStylePropertyChangeSetArchive::MergeFrom(TSDSOS::MediaStylePropertyChangeSetArchive *this, const TSDSOS::MediaStylePropertyChangeSetArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecStrokeArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSDSOS::_SpecStrokeArchive_default_instance_;
      }

      TSDSOS::SpecStrokeArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_31;
      }
    }

    else if ((v5 & 2) == 0)
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

      v9 = MEMORY[0x277C9BB80](v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D80C08];
    }

    TSSSOS::SpecDoubleArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_39;
    }

LABEL_31:
    *(this + 4) |= 4u;
    v12 = *(this + 5);
    if (!v12)
    {
      v13 = *(this + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecShadowArchive>(v13);
      *(this + 5) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSDSOS::_SpecShadowArchive_default_instance_;
    }

    TSDSOS::SpecShadowArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_47;
    }

LABEL_39:
    *(this + 4) |= 8u;
    v15 = *(this + 6);
    if (!v15)
    {
      v16 = *(this + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::SpecReflectionArchive>(v16);
      *(this + 6) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSDSOS::_SpecReflectionArchive_default_instance_;
    }

    TSDSOS::SpecReflectionArchive::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(this + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(this + 57) = *(a2 + 57);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(this + 4) |= v5;
        return;
      }

LABEL_12:
      *(this + 59) = *(a2 + 59);
      goto LABEL_13;
    }

LABEL_49:
    *(this + 58) = *(a2 + 58);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }
}

void TSDSOS::MediaStylePropertyChangeSetArchive::CopyFrom(TSDSOS::MediaStylePropertyChangeSetArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSDSOS::MediaStylePropertyChangeSetArchive::Clear(this);

    TSDSOS::MediaStylePropertyChangeSetArchive::MergeFrom(this, a2);
  }
}

void TSDSOS::MediaStylePropertyChangeSetArchive::CopyFrom(TSDSOS::MediaStylePropertyChangeSetArchive *this, const TSDSOS::MediaStylePropertyChangeSetArchive *a2)
{
  if (a2 != this)
  {
    TSDSOS::MediaStylePropertyChangeSetArchive::Clear(this);

    TSDSOS::MediaStylePropertyChangeSetArchive::MergeFrom(this, a2);
  }
}

uint64_t TSDSOS::MediaStylePropertyChangeSetArchive::IsInitialized(TSDSOS::MediaStylePropertyChangeSetArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSDSOS::SpecStrokeArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSSSOS::SpecDoubleArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSDSOS::SpecShadowArchive::IsInitialized(*(this + 5));
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

  result = TSDSOS::SpecReflectionArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSDSOS::MediaStylePropertyChangeSetArchive::InternalSwap(TSDSOS::MediaStylePropertyChangeSetArchive *this, TSDSOS::MediaStylePropertyChangeSetArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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

uint64_t sub_27670A404(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670B1FC(a1);
}

uint64_t sub_27670A4D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670B300(a1);
}

uint64_t sub_27670A5A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670B404(a1);
}

uint64_t sub_27670A674(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670B508(a1);
}

uint64_t sub_27670A744(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670B60C(a1);
}

uint64_t sub_27670A814(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670B710(a1);
}

void *sub_27670A8E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670B818(a1);
}

void *sub_27670A9B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670B918(a1);
}

uint64_t sub_27670AA80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670BA18(a1);
}

uint64_t sub_27670AB58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670BB24(a1);
}

uint64_t sub_27670AC30(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670BC30(a1);
}

uint64_t sub_27670AD0C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27670BD40(a1);
}

uint64_t sub_27670AF08(uint64_t a1, uint64_t *a2)
{
  if (*a2 >= *a1)
  {
    v5 = *a2 - *(a1 + 8);
    if (*(a1 + 28) == v5)
    {
      if (v5 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v2 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t *sub_27670AF80(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_27670AFC8(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 1;
}

double sub_27670AFC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_27670B00C(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t sub_27670B00C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A5EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27670B094);
}

void sub_27670B094(uint64_t a1)
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

uint64_t sub_27670B0F8(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_27670AF80(a1);
  }

  return MEMORY[0x2821EAB30](v3, a2);
}

uint64_t *sub_27670B144(uint64_t *a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_27670AF80(a1);
  }

  if (*result != result[1])
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t *sub_27670B194(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_27670AF80(a1);
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

uint64_t sub_27670B1FC(uint64_t a1)
{
  v2 = sub_27670B274(a1, 1);
  *v2 = &unk_288574FF0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetFillArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_27670B274(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A61C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSDSOS::SpecSetFillArchive::~SpecSetFillArchive);
}

uint64_t sub_27670B300(uint64_t a1)
{
  v2 = sub_27670B378(a1, 1);
  *v2 = &unk_2885750A0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetLineEndArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_27670B378(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A64C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSDSOS::SpecSetLineEndArchive::~SpecSetLineEndArchive);
}

uint64_t sub_27670B404(uint64_t a1)
{
  v2 = sub_27670B47C(a1, 1);
  *v2 = &unk_288575150;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetReflectionArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_27670B47C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A67C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSDSOS::SpecSetReflectionArchive::~SpecSetReflectionArchive);
}

uint64_t sub_27670B508(uint64_t a1)
{
  v2 = sub_27670B580(a1, 1);
  *v2 = &unk_288575200;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetShadowArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_27670B580(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A6AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSDSOS::SpecSetShadowArchive::~SpecSetShadowArchive);
}

uint64_t sub_27670B60C(uint64_t a1)
{
  v2 = sub_27670B684(a1, 1);
  *v2 = &unk_2885752B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecSetStrokeArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_27670B684(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A6DC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSDSOS::SpecSetStrokeArchive::~SpecSetStrokeArchive);
}

uint64_t sub_27670B710(uint64_t a1)
{
  v2 = sub_27670B78C(a1, 1);
  *v2 = &unk_288575360;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecFillArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27670B78C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A70C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSDSOS::SpecFillArchive::~SpecFillArchive);
}

void *sub_27670B818(uint64_t a1)
{
  v2 = sub_27670B88C(a1, 1);
  *v2 = &unk_288575410;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecLineEndArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_27670B88C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A748(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSDSOS::SpecLineEndArchive::~SpecLineEndArchive);
}

void *sub_27670B918(uint64_t a1)
{
  v2 = sub_27670B98C(a1, 1);
  *v2 = &unk_2885754C0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecReflectionArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_27670B98C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A778(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSDSOS::SpecReflectionArchive::~SpecReflectionArchive);
}

uint64_t sub_27670BA18(uint64_t a1)
{
  v2 = sub_27670BA98(a1, 1);
  *v2 = &unk_288575570;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecShadowArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27670BA98(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A7A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSDSOS::SpecShadowArchive::~SpecShadowArchive);
}

uint64_t sub_27670BB24(uint64_t a1)
{
  v2 = sub_27670BBA4(a1, 1);
  *v2 = &unk_288575620;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecStrokeArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27670BBA4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A7E4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSDSOS::SpecStrokeArchive::~SpecStrokeArchive);
}

uint64_t sub_27670BC30(uint64_t a1)
{
  v2 = sub_27670BCB4(a1, 1);
  *v2 = &unk_2885756D0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_BaseShapeStylePropertyChangeSetArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 71) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27670BCB4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A814(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSDSOS::BaseShapeStylePropertyChangeSetArchive::~BaseShapeStylePropertyChangeSetArchive);
}

uint64_t sub_27670BD40(uint64_t a1)
{
  v2 = sub_27670BDC0(a1, 1);
  *v2 = &unk_288575780;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_MediaStylePropertyChangeSetArchive_TSDArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27670BDC0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680A850(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSDSOS::MediaStylePropertyChangeSetArchive::~MediaStylePropertyChangeSetArchive);
}

uint64_t sub_27670BE9C(void *a1)
{
  v2 = objc_opt_class();
  objc_msgSend_registerPresetSourceClass_(a1, v3, v2);
  v4 = objc_opt_class();
  objc_msgSend_registerPresetSourceClass_(a1, v5, v4);
  v6 = objc_opt_class();
  objc_msgSend_registerPresetSourceClass_(a1, v7, v6);
  v8 = objc_opt_class();
  objc_msgSend_registerPresetSourceClass_(a1, v9, v8);

  return objc_msgSend_registerPresetSourceClass_(a1, v10, a1);
}

void sub_27670BF78(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = a3;
  v5 = a4;
  if (objc_msgSend_isEqual_(v21, v6, *MEMORY[0x277D80B68]))
  {
    v9 = objc_msgSend_documentStylesheet(v5, v7, v8);
    objc_msgSend_installMoviePresetsInStylesheet_(v5, v10, v9);
LABEL_5:

    goto LABEL_7;
  }

  if (objc_msgSend_isEqual_(v21, v7, *MEMORY[0x277D80B18]))
  {
    v9 = objc_msgSend_documentStylesheet(v5, v11, v12);
    objc_msgSend_installDrawingLinePresetsInStylesheet_forDocumentUpgrade_(v5, v13, v9, 0);
    goto LABEL_5;
  }

  v14 = MEMORY[0x277D81150];
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "+[TSSTheme(TSDAdditions) bootstrapPresetsOfKind:inTheme:alternate:]");
  v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSSThemeAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 48, 0, "Requested bootstrapping of unsupported preset kind %@", v21);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
LABEL_7:
}

void sub_27670C0C4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v27 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v13 = objc_msgSend_styleWithIdentifier_(v9, v12, v10);
  objc_opt_class();
  v14 = TSUClassAndProtocolCast();

  if (v14)
  {
    v16 = v14;
    objc_msgSend_addObject_(v11, v17, v16, &unk_28859DCB8);
  }

  else
  {
    objc_msgSend_addStyle_withIdentifier_(v9, v15, v27, v10, &unk_28859DCB8);
    v16 = v27;
    if (!v16)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSSTheme(TSDAdditions) p_addStyleIfNotExisting:inStylesheet:withIdentifier:presets:]");
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSSThemeAdditions.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 68, 0, "invalid nil value for '%{public}s'", "presetStyle");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
      v16 = 0;
    }

    objc_msgSend_addObject_(v11, v18, v16, v26);
  }
}

void sub_27670C254(void *a1, uint64_t a2, void *a3)
{
  v35 = a3;
  v4 = *MEMORY[0x277D80B18];
  v6 = objc_msgSend_presetsOfKind_(a1, v5, *MEMORY[0x277D80B18]);
  v9 = objc_msgSend_count(v6, v7, v8);

  if (!v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = objc_msgSend_presetOfKind_index_(a1, v11, *MEMORY[0x277D80B50], 0);
    v15 = objc_msgSend_copy(v12, v13, v14);
    v18 = objc_msgSend_null(MEMORY[0x277CBEB68], v16, v17);
    objc_msgSend_setBoxedValue_forProperty_(v15, v19, v18, 522);

    v22 = objc_msgSend_null(MEMORY[0x277CBEB68], v20, v21);
    objc_msgSend_setBoxedValue_forProperty_(v15, v23, v22, 523);

    v26 = objc_msgSend_null(MEMORY[0x277CBEB68], v24, v25);
    objc_msgSend_setBoxedValue_forProperty_(v15, v27, v26, 519);

    v30 = objc_msgSend_null(MEMORY[0x277CBEB68], v28, v29);
    objc_msgSend_setBoxedValue_forProperty_(v15, v31, v30, 520);

    v32 = sub_27668FB78(0);
    objc_msgSend_p_addStyleIfNotExisting_inStylesheet_withIdentifier_presets_(a1, v33, v15, v35, v32, v10);
    objc_msgSend_setPresets_ofKind_(a1, v34, v10, v4);
  }
}

void sub_27670C3F4(void *a1, uint64_t a2, void *a3)
{
  v112 = a3;
  if (!v112)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSSTheme(TSDAdditions) installMoviePresetsInStylesheet:]");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSSThemeAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 111, 0, "invalid nil value for '%{public}s'", "stylesheet");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = *MEMORY[0x277D80B68];
  v13 = objc_msgSend_presetsOfKind_(a1, v4, *MEMORY[0x277D80B68]);
  v16 = objc_msgSend_count(v13, v14, v15);

  if (!v16)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = objc_msgSend_emptyStroke(TSDStroke, v18, v19);
    v21 = objc_alloc(MEMORY[0x277D80AB8]);
    v23 = objc_msgSend_initWithPropertiesAndValues_(v21, v22, 517, v20, 0);
    v24 = [TSDMediaStyle alloc];
    v27 = objc_msgSend_context(a1, v25, v26);
    isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v24, v28, v27, 0, v23, 0);

    v30 = TSDMovieStyleIdentifierString(0);
    objc_msgSend_p_addStyleIfNotExisting_inStylesheet_withIdentifier_presets_(a1, v31, isVariation, v112, v30, v17);

    v32 = objc_alloc_init(TSDStroke);
    v33 = objc_alloc(MEMORY[0x277D80AB8]);
    v35 = objc_msgSend_initWithPropertiesAndValues_(v33, v34, 517, v32, 0);
    v36 = [TSDMediaStyle alloc];
    v39 = objc_msgSend_context(a1, v37, v38);
    v41 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v36, v40, v39, 0, v35, 0);

    v42 = TSDMovieStyleIdentifierString(1);
    objc_msgSend_p_addStyleIfNotExisting_inStylesheet_withIdentifier_presets_(a1, v43, v41, v112, v42, v17);

    v46 = objc_msgSend_blackColor(MEMORY[0x277D81180], v44, v45);
    v48 = objc_msgSend_shadowWithAngle_offset_radius_opacity_color_enabled_(TSDShadow, v47, v46, 1, 53.0, 4.0, 6.0, 0.5);

    v51 = objc_msgSend_emptyStroke(TSDStroke, v49, v50);
    v52 = objc_alloc(MEMORY[0x277D80AB8]);
    v54 = objc_msgSend_initWithPropertiesAndValues_(v52, v53, 520, v48, 517, v51, 0);
    v55 = [TSDMediaStyle alloc];
    v58 = objc_msgSend_context(a1, v56, v57);
    v60 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v55, v59, v58, 0, v54, 0);

    v61 = TSDMovieStyleIdentifierString(2);
    objc_msgSend_p_addStyleIfNotExisting_inStylesheet_withIdentifier_presets_(a1, v62, v60, v112, v61, v17);

    v65 = objc_msgSend_emptyStroke(TSDStroke, v63, v64);
    v66 = [TSDReflection alloc];
    v69 = objc_msgSend_initWithOpacity_(v66, v67, v68, 0.4);
    v70 = objc_alloc(MEMORY[0x277D80AB8]);
    v72 = objc_msgSend_initWithPropertiesAndValues_(v70, v71, 519, v69, 517, v65, 0);
    v73 = [TSDMediaStyle alloc];
    v76 = objc_msgSend_context(a1, v74, v75);
    v78 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v73, v77, v76, 0, v72, 0);

    v79 = TSDMovieStyleIdentifierString(3);
    objc_msgSend_p_addStyleIfNotExisting_inStylesheet_withIdentifier_presets_(a1, v80, v78, v112, v79, v17);

    v81 = [TSDFrame alloc];
    v83 = objc_msgSend_initWithFrameName_(v81, v82, @"Headlines");
    v84 = objc_alloc(MEMORY[0x277D80AB8]);
    v86 = objc_msgSend_initWithPropertiesAndValues_(v84, v85, 517, v83, 0);
    v87 = [TSDMediaStyle alloc];
    v90 = objc_msgSend_context(a1, v88, v89);
    v92 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v87, v91, v90, 0, v86, 0);

    v93 = TSDMovieStyleIdentifierString(4);
    objc_msgSend_p_addStyleIfNotExisting_inStylesheet_withIdentifier_presets_(a1, v94, v92, v112, v93, v17);

    v96 = objc_msgSend_frameSpecWithName_(TSDFrameSpec, v95, @"Formal Shadow");
    v97 = [TSDFrame alloc];
    v99 = objc_msgSend_initWithFrameSpec_assetScale_(v97, v98, v96, 0.61);
    v100 = objc_alloc(MEMORY[0x277D80AB8]);
    v102 = objc_msgSend_initWithPropertiesAndValues_(v100, v101, 517, v99, 0);
    v103 = [TSDMediaStyle alloc];
    v106 = objc_msgSend_context(a1, v104, v105);
    v108 = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v103, v107, v106, 0, v102, 0);

    v109 = TSDMovieStyleIdentifierString(5);
    objc_msgSend_p_addStyleIfNotExisting_inStylesheet_withIdentifier_presets_(a1, v110, v108, v112, v109, v17);

    objc_msgSend_setPresets_ofKind_(a1, v111, v17, v12);
  }
}

uint64_t sub_27670D100(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_msgSend_isLocked(v2, v3, v4) ^ 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void sub_27670D858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a47)
  {
    free(a47);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27670EDD8(uint64_t a1, CFStringRef theString)
{
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  *(a1 + 264) = CStringPtr;
  if (!CStringPtr)
  {
    maxBufLen = 0;
    Length = CFStringGetLength(theString);
    if (Length <= 62 && (v10.location = 0, v10.length = Length, CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, a1, 255, &maxBufLen) == Length))
    {
      *(a1 + maxBufLen) = 0;
      *(a1 + 264) = a1;
    }

    else if (!*(a1 + 264))
    {
      maxBufLen = 0;
      v11.location = 0;
      v11.length = Length;
      if (CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, 0, 0, &maxBufLen) == Length)
      {
        v6 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
        *(a1 + 256) = v6;
        if (v6)
        {
          usedBufLen = 0;
          v12.location = 0;
          v12.length = Length;
          CFStringGetBytes(theString, v12, 0x8000100u, 0, 0, v6, maxBufLen, &usedBufLen);
          if (usedBufLen == maxBufLen)
          {
            *(*(a1 + 256) + usedBufLen) = 0;
            *(a1 + 264) = *(a1 + 256);
          }
        }
      }
    }
  }

  return a1;
}

uint64_t sub_27670FD60(void *a1, const char *a2, uint64_t a3, double a4, double a5)
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  objc_msgSend_sublayerTransform(a1, a2, a3);
  *(&v16 + 1) = -1.0 / sub_2766E2D98(a4, a5);
  v10[4] = v15;
  v10[5] = v16;
  v10[6] = v17;
  v10[7] = v18;
  v10[0] = v11;
  v10[1] = v12;
  v10[2] = v13;
  v10[3] = v14;
  return objc_msgSend_setSublayerTransform_(a1, v8, v10);
}

void sub_276710024(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_2767100EC(void *a1, void *a2, void *a3, void *a4)
{
  v65 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v58 = a3;
  v59 = a4;
  v10 = objc_msgSend_objectForKeyedSubscript_(v58, v9, @"TSDDeepCopyUseOldStyles");

  if (!v10)
  {
    goto LABEL_14;
  }

  v13 = objc_msgSend_firstObject(v7, v11, v12);
  v16 = objc_msgSend_context(v13, v14, v15);
  v19 = objc_msgSend_context(v8, v17, v18);
  v22 = v19;
  if (v16 != v19)
  {

LABEL_16:
    TSUSetCrashReporterInfo();
    v52 = MEMORY[0x277D81150];
    v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "void p_handleOldStyles(NSArray<TSPObject *> * _Nonnull __strong, TSSStylesheet * _Nonnull __strong, NSDictionary * _Nonnull __strong, TSPDeepCopyObjectMap * _Nonnull __strong)", "void p_handleOldStyles(NSArray<TSPObject *> * _Nonnull __strong, TSSStylesheet * _Nonnull __strong, NSDictionary * _Nonnull __strong, TSPDeepCopyObjectMap * _Nonnull __strong)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSPObject_TSDStyledObjectCopyAdditions.mm", 98);
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSPObject_TSDStyledObjectCopyAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v54, v56, 98, 1, "Using TSDDeepCopyUseOldStyles for a deep copy across object contexts will probably cause doom when we try to persist this object graph");

    TSUCrashBreakpoint();
    abort();
  }

  v23 = objc_msgSend_firstObject(v7, v20, v21);
  v26 = objc_msgSend_context(v23, v24, v25);
  v29 = objc_msgSend_firstObject(v7, v27, v28);
  v31 = objc_msgSend_objectForDeepCopy_(v59, v30, v29);
  v34 = objc_msgSend_context(v31, v32, v33);

  if (v26 != v34)
  {
    goto LABEL_16;
  }

  v35 = [TSDDeepCopyObjectMapStyleMapper alloc];
  v37 = objc_msgSend_objectForKeyedSubscript_(v58, v36, @"TSDDeepCopySourceObjectsMayUseMultipleStylesheets");
  v40 = objc_msgSend_BOOLValue(v37, v38, v39);
  MayUseMultipleStylesheets = objc_msgSend_initWithTargetStylesheet_deepCopyObjectMap_sourceObjectsMayUseMultipleStylesheets_(v35, v41, v8, v59, v40);

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = v7;
  v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v60, v64, 16);
  if (v45)
  {
    v46 = *v61;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v61 != v46)
        {
          objc_enumerationMutation(v43);
        }

        objc_opt_class();
        v48 = TSUDynamicCast();
        v50 = v48;
        if (v48)
        {
          objc_msgSend_adoptStylesheet_withMapper_(v48, v49, v8, MayUseMultipleStylesheets);
        }
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v51, &v60, v64, 16);
    }

    while (v45);
  }

LABEL_14:
}

id sub_2767104D4(void *a1)
{
  v1 = a1;
  v2 = objc_alloc(MEMORY[0x277D80660]);
  v5 = objc_msgSend_objectEnumerator(v1, v3, v4);
  v7 = objc_msgSend_initWithEnumerator_filter_(v2, v6, v5, 0);

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_276710650;
  v16 = sub_276710660;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_276710668;
  v11[3] = &unk_27A6CD380;
  v11[4] = &v12;
  objc_msgSend_enumerateReferencedStylesUsingBlock_(v7, v8, v11);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void sub_276710610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276710650(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276710668(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v7 = objc_msgSend_stylesheet(v10, v5, v6);
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  *a3 = 1;
}

void sub_2767106E8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v11 = a5;
  if (v11)
  {
    v41[0] = a1;
    v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v41, 1);
    v15 = sub_2767104D4(v12);
    if (v15)
    {
    }

    else
    {
      v16 = objc_msgSend_documentRoot(a1, v13, v14);
      v15 = objc_msgSend_stylesheet(v16, v17, v18);

      if (!v15)
      {
        v20 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSPObject(TSDStyledObjectCopyAdditions) tsd_deepCopyStyledObjectInContext:options:completion:]");
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSPObject_TSDStyledObjectCopyAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 133, 0, "invalid nil value for '%{public}s'", "stylesheet");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
        v15 = 0;
      }
    }

    v27 = objc_alloc(MEMORY[0x277CBEB38]);
    v29 = objc_msgSend_initWithDictionary_(v27, v28, v9);
    v30 = objc_alloc(MEMORY[0x277D80AE8]);
    v32 = objc_msgSend_initWithContext_stylesheet_(v30, v31, v8, v15);
    objc_msgSend_tsp_setDeepCopyObjectProxy_forReferencedObject_(v29, v33, v32, v15);
    objc_msgSend_tsp_delayArchivingObjectDuringDeepCopy_(v29, v34, v32);
    v40[0] = a1;
    v40[1] = v32;
    v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v40, 2);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_2767109E4;
    v38[3] = &unk_27A6CD3A8;
    v38[4] = v15;
    v38[5] = v29;
    v39 = v11;
    objc_msgSend_tsp_deepCopyWithContext_options_completion_(v36, v37, v8, v29, v38);
  }
}

void sub_2767109E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11 = objc_msgSend_objectAtIndexedSubscript_(v7, v10, 0);
  v17[0] = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v17, 1);
  sub_2767100EC(v13, *(a1 + 32), *(a1 + 40), v8);

  objc_opt_class();
  v15 = objc_msgSend_objectAtIndexedSubscript_(v7, v14, 0);
  v16 = TSUDynamicCast();

  (*(*(a1 + 48) + 16))();
}

uint64_t sub_276710B6C(void *a1, uint64_t a2, void *a3, void *a4, void **a5, uint64_t a6)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v50[0] = a1;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v50, 1);
  v14 = sub_2767104D4(v13);

  if (!v14)
  {
    v17 = objc_msgSend_documentRoot(a1, v15, v16);
    v14 = objc_msgSend_stylesheet(v17, v18, v19);

    if (!v14)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPObject(TSDStyledObjectCopyAdditions) tsd_deepCopyStyledObjectInContext:options:objectMap:error:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSPObject_TSDStyledObjectCopyAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 155, 0, "invalid nil value for '%{public}s'", "stylesheet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      v14 = 0;
    }
  }

  v28 = objc_alloc(MEMORY[0x277CBEB38]);
  v30 = objc_msgSend_initWithDictionary_(v28, v29, v11);
  v31 = objc_alloc(MEMORY[0x277D80AE8]);
  v33 = objc_msgSend_initWithContext_stylesheet_(v31, v32, v10, v14);
  objc_msgSend_tsp_setDeepCopyObjectProxy_forReferencedObject_(v30, v34, v33, v14);
  objc_msgSend_tsp_delayArchivingObjectDuringDeepCopy_(v30, v35, v33);
  v47 = 0;
  if (a5)
  {
    v37 = a5;
  }

  else
  {
    v37 = &v47;
  }

  v49[0] = a1;
  v49[1] = v33;
  v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, v49, 2);
  v40 = objc_msgSend_tsp_deepCopyWithContext_options_objectMap_error_(v38, v39, v10, v30, v37, a6);

  objc_opt_class();
  v42 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, 0);
  v43 = TSUDynamicCast();

  v48 = v43;
  v45 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v44, &v48, 1);
  sub_2767100EC(v45, v14, v30, *v37);

  return v43;
}

void sub_276710EBC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_msgSend_context(a1, v7, v8);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_276710FB0;
    v12[3] = &unk_27A6CD3D0;
    v13 = v9;
    objc_msgSend_tsd_deepCopyStyledObjectInContext_options_completion_(a1, v11, v10, v6, v12);
  }
}

void sub_276710FB0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && *MEMORY[0x277D81408] != -1)
  {
    sub_27680A880();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_276711070()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_2767110B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_context(a1, v5, v6);
  v12 = 0;
  v9 = objc_msgSend_tsd_deepCopyStyledObjectInContext_options_error_(a1, v8, v7, v4, &v12);
  v10 = v12;

  if (v10 && *MEMORY[0x277D81408] != -1)
  {
    sub_27680A894();
  }

  return v9;
}

void sub_276711164()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

void sub_2767111A8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    objc_opt_class();
    v13 = objc_msgSend_firstObject(a1, v11, v12);
    v14 = TSUDynamicCast();

    v17 = sub_2767104D4(a1);
    if (v17 || (objc_msgSend_documentRoot(v14, v15, v16), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stylesheet(v18, v19, v20), v17 = objc_claimAutoreleasedReturnValue(), v18, v17))
    {
      if (v14)
      {
        v22 = objc_alloc(MEMORY[0x277CBEB38]);
        v24 = objc_msgSend_initWithDictionary_(v22, v23, v9);
        v25 = objc_alloc(MEMORY[0x277D80AE8]);
        v27 = objc_msgSend_initWithContext_stylesheet_(v25, v26, v8, v17);
        objc_msgSend_tsp_setDeepCopyObjectProxy_forReferencedObject_(v24, v28, v27, v17);
        objc_msgSend_tsp_delayArchivingObjectDuringDeepCopy_(v24, v29, v27);
        v32 = objc_msgSend_mutableCopy(a1, v30, v31);
        objc_msgSend_addObject_(v32, v33, v27);
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = sub_2767114B0;
        v42[3] = &unk_27A6CD3A8;
        v42[4] = v17;
        v42[5] = v24;
        v43 = v10;
        objc_msgSend_tsp_deepCopyWithContext_options_completion_(v32, v34, v8, v24, v42);

LABEL_8:
        goto LABEL_9;
      }
    }

    else
    {
      v35 = MEMORY[0x277D81150];
      v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[NSArray(TSDStyledObjectCopyAdditions) tsd_deepCopyStyledObjectsInContext:options:completion:]");
      v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSPObject_TSDStyledObjectCopyAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 212, 0, "invalid nil value for '%{public}s'", "stylesheet");

      v17 = 0;
      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
    }

    (*(v10 + 2))(v10, MEMORY[0x277CBEBF8], 0, 0);
    goto LABEL_8;
  }

LABEL_9:
}

void sub_2767114B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  v10 = objc_msgSend_mutableCopy(a2, v8, v9);
  objc_msgSend_removeLastObject(v10, v11, v12);
  sub_2767100EC(v10, *(a1 + 32), *(a1 + 40), v13);
  (*(*(a1 + 48) + 16))();
}

id sub_276711574(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void **a6, uint64_t a7)
{
  v12 = a3;
  v13 = a5;
  v59 = objc_msgSend_array(MEMORY[0x277CBEB18], v14, v15);
  objc_opt_class();
  v18 = objc_msgSend_firstObject(a1, v16, v17);
  v19 = TSUDynamicCast();

  v22 = sub_2767104D4(a1);
  if (!v22)
  {
    v23 = objc_msgSend_documentRoot(v19, v20, v21);
    v22 = objc_msgSend_stylesheet(v23, v24, v25);

    if (!v22)
    {
      v50 = MEMORY[0x277D81150];
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[NSArray(TSDStyledObjectCopyAdditions) tsd_deepCopyStyledObjectsInContext:stylesheet:options:objectMap:error:]");
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSPObject_TSDStyledObjectCopyAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 247, 0, "invalid nil value for '%{public}s'", "stylesheet");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
      v22 = 0;
      goto LABEL_13;
    }
  }

  if (!v19)
  {
LABEL_13:
    v49 = v59;
    v48 = v59;
    goto LABEL_14;
  }

  v58 = v13;
  v27 = objc_alloc(MEMORY[0x277CBEB38]);
  v29 = objc_msgSend_initWithDictionary_(v27, v28, v13);
  v30 = objc_alloc(MEMORY[0x277D80AE8]);
  v32 = objc_msgSend_initWithContext_stylesheet_(v30, v31, v12, v22);
  objc_msgSend_tsp_setDeepCopyObjectProxy_forReferencedObject_(v29, v33, v32, v22);
  objc_msgSend_tsp_delayArchivingObjectDuringDeepCopy_(v29, v34, v32);
  v37 = objc_msgSend_mutableCopy(a1, v35, v36);
  objc_msgSend_addObject_(v37, v38, v32);
  v60 = 0;
  if (a6)
  {
    v40 = a6;
    v41 = objc_msgSend_tsp_deepCopyWithContext_options_objectMap_error_(v37, v39, v12, v29, a6, a7);
  }

  else
  {
    v40 = &v60;
    v41 = objc_msgSend_tsp_deepCopyWithContext_options_objectMap_error_(v37, v39, v12, v29, &v60, a7);
  }

  v44 = v41;
  v45 = objc_msgSend_mutableCopy(v41, v42, v43);
  v48 = v45;
  if (a4)
  {
    *a4 = objc_msgSend_lastObject(v45, v46, v47);
  }

  objc_msgSend_removeLastObject(v48, v46, v47);
  if (v48)
  {
    sub_2767100EC(v48, v22, v29, *v40);
  }

  v13 = v58;
  v49 = v59;
LABEL_14:

  return v48;
}

id sub_2767118DC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v50 = a4;
  v51 = v8;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc(MEMORY[0x277D80AE8]);
  v13 = objc_msgSend_context(v50, v11, v12);
  v15 = objc_msgSend_initWithContext_stylesheet_(v10, v14, v13, v50);

  objc_msgSend_tsp_setDeepCopyObjectProxy_forReferencedObject_(v9, v16, v15, v50);
  objc_msgSend_tsp_delayArchivingObjectDuringDeepCopy_(v9, v17, v15);
  v19 = objc_msgSend_objectForKeyedSubscript_(v9, v18, @"TSDDeepCopyUseOldStyles");

  if (v19)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[NSArray(TSDStyledObjectCopyAdditions) tsd_deepCopyObjectsForUndoInContext:inStylesheet:outStylesheet:]");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSPObject_TSDStyledObjectCopyAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 300, 0, "expected nil value for '%{public}s'", "options[TSDDeepCopyUseOldStyles]", v50, v8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  v29 = objc_msgSend_mutableCopy(a1, v20, v21);
  objc_msgSend_addObject_(v29, v30, v15);
  v52 = 0;
  v32 = objc_msgSend_tsp_deepCopyWithContext_options_error_(v29, v31, v8, v9, &v52);
  v33 = v52;
  v36 = v33;
  if (!v32 || v33)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[NSArray(TSDStyledObjectCopyAdditions) tsd_deepCopyObjectsForUndoInContext:inStylesheet:outStylesheet:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSPObject_TSDStyledObjectCopyAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 308, 0, "copy for undo failed");

    v40 = 0;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47);
  }

  else
  {
    v37 = objc_msgSend_mutableCopy(v32, v34, v35);
    v40 = v37;
    if (a5)
    {
      *a5 = objc_msgSend_lastObject(v37, v38, v39);
    }

    objc_msgSend_removeLastObject(v40, v38, v39);
  }

  v48 = v40;

  return v48;
}

__n128 sub_2767121E4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_geometry(a2, a2, a3);
  v7 = v4;
  if (v4)
  {
    objc_msgSend_transform(v4, v5, v6);
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  v8 = *(*(a1 + 32) + 8);
  v8[2] = v10;
  v8[3] = v11;
  v8[4] = v12;

  return result;
}

uint64_t KNAnimationEventTriggerFromAutomaticReferent(int a1, uint64_t a2)
{
  if (a1)
  {
    return 2 * (a2 != 0);
  }

  else
  {
    return 1;
  }
}

__CFString *KNAnimationTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"None";
  }

  else
  {
    return off_27A6CD520[a1 - 1];
  }
}

uint64_t KNAnimationTypeFromString(void *a1)
{
  v1 = a1;
  if (objc_msgSend_isEqualToString_(v1, v2, @"None"))
  {
    v4 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v1, v3, @"In"))
  {
    v4 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v1, v5, @"Out"))
  {
    v4 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v1, v6, @"Transition"))
  {
    v4 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v1, v7, @"Action"))
  {
    v4 = 4;
  }

  else if (objc_msgSend_isEqualToString_(v1, v8, @"Content"))
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t KNAnimationTypeFromNumber(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_intValue(a1, a2, a3);
  if (v3 >= 6)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

id sub_2767128BC()
{
  if (qword_280A4C480 != -1)
  {
    sub_27680A960();
  }

  v1 = qword_280A4C478;

  return v1;
}

void sub_276712900()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v2 = objc_msgSend_initWithObjects_(v0, v1, @"apple:action-pop", @"apple:action-pulse", @"apple:action-blink", @"apple:action-flip", @"apple:action-bounce", @"apple:action-jiggle", 0);
  v3 = qword_280A4C478;
  qword_280A4C478 = v2;
}

uint64_t KNEffectIsEmphasisEffect(void *a1)
{
  v1 = a1;
  v2 = sub_2767128BC();
  v4 = objc_msgSend_containsObject_(v2, v3, v1);

  return v4;
}

BOOL KNIsValidDirection(unint64_t a1)
{
  result = 1;
  if ((a1 > 0x36 || ((1 << a1) & 0x781E0181E07801) == 0) && (a1 - 91 > 0x18 || ((1 << (a1 - 91)) & 0x1F00007) == 0))
  {
    return a1 - 121 < 2;
  }

  return result;
}

double sub_276712A6C(void *a1, const char *a2, uint64_t *a3, double *a4, double a5)
{
  v70 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_elementCount(a1, a2, a3);
  v13 = *MEMORY[0x277CBF348];
  v12 = *(MEMORY[0x277CBF348] + 8);
  v67 = *MEMORY[0x277D814D0];
  v68 = v67;
  v69 = v67;
  v14 = v9 - 1;
  if (v9 < 1)
  {
    goto LABEL_5;
  }

  v15 = v9;
  if (!objc_msgSend_elementAtIndex_associatedPoints_(a1, v10, 0, &v67))
  {
    v13 = *&v67;
    v12 = *(&v67 + 1);
  }

  if (v15 == 1)
  {
LABEL_5:
    v16 = 1;
    v17 = v13;
    v18 = v12;
  }

  else
  {
    v16 = 1;
    while (1)
    {
      v17 = v13;
      v18 = v12;
      v39 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v10, v16, &v67);
      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v12 = *(&v69 + 1);
          v13 = *&v69;
        }

        else if (v39 == 3)
        {
          v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, a1, @"TSUBezierPath-TSDAdditions.mm", 110, @"Don't use ClosePath!");
        }
      }

      else if (v39)
      {
        if (v39 == 1)
        {
          v12 = *(&v67 + 1);
          v13 = *&v67;
          v40 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v40, v41, a2, a1, @"TSUBezierPath-TSDAdditions.mm", 104, @"Don't use LineTo!");
        }
      }

      else
      {
        v12 = *(&v67 + 1);
        v13 = *&v67;
      }

      if (v17 <= a5 && v13 >= a5)
      {
        break;
      }

      if (v15 == ++v16)
      {
        v16 = v15;
        break;
      }
    }
  }

  if (v17 == v13)
  {
    if (v17 != a5)
    {
      v62 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v62, v63, a2, a1, @"TSUBezierPath-TSDAdditions.mm", 120, @"something went wrong!");
    }

    if (v18 != v12)
    {
      v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v20, a2, a1, @"TSUBezierPath-TSDAdditions.mm", 121, @"something is wrong with the curve!");
    }
  }

  else if (v17 >= a5)
  {
    if (a3)
    {
      *a3 = v16 - 1;
    }

    if (a4)
    {
      *a4 = 0.0;
    }

    return v18;
  }

  else if (v13 <= a5)
  {
    if (a3)
    {
      if (v14 >= v16)
      {
        v44 = v16;
      }

      else
      {
        v44 = v14;
      }

      *a3 = v44;
    }

    if (a4)
    {
      *a4 = 1.0;
    }
  }

  else
  {
    if (a3)
    {
      if (v14 >= v16)
      {
        v21 = v16;
      }

      else
      {
        v21 = v14;
      }

      *a3 = v21;
    }

    v22 = *(&v67 + 1);
    v65 = *(&v68 + 1);
    v23 = v13 + *&v67 * 3.0 - v17 + *&v68 * -3.0;
    v24 = (*&v67 * -6.0 + v17 * 3.0 + *&v68 * 3.0) / v23;
    v25 = (*&v67 * 3.0 + v17 * -3.0) / v23;
    v26 = (v17 - a5) / v23;
    v27 = v26 + v24 * (v24 * (v24 + v24)) / 27.0 + v24 * v25 / -3.0;
    v28 = v27 * v27 * 0.25;
    v29 = (v25 + v24 * v24 / -3.0) * ((v25 + v24 * v24 / -3.0) * (v25 + v24 * v24 / -3.0)) / 27.0 + v28;
    if (v29 == 0.0 || fabs(v29) < 1.0e-12)
    {
      v30 = a4;
      if (v26 >= 0.0)
      {
        v38 = -pow(v26, 0.333333333);
      }

      else
      {
        v38 = pow(fabs(v26), 0.333333333);
      }
    }

    else
    {
      v30 = a4;
      if (v29 <= 0.0)
      {
        v45 = sqrt(v28 - v29);
        v46 = pow(v45, 0.333333333);
        v47 = acos(-v27 / (v45 + v45));
        v49 = __sincos_stret(v47 / 3.0);
        v50 = v24 / -3.0;
        v38 = v24 / -3.0 + (v46 + v46) * v49.__cosval;
        if (v38 < 0.0 && vabdd_f64(0.0, v38) >= 1.0e-12 || (v38 >= 1.0 ? (v51 = v38 == 1.0) : (v51 = 1), !v51 && fabs(v38 + -1.0) >= 1.0e-12))
        {
          if ((v38 = v50 - v46 * (v49.__cosval + v49.__sinval * 1.73205081), v38 < 0.0) && vabdd_f64(0.0, v38) >= 1.0e-12 || (v38 >= 1.0 ? (v52 = v38 == 1.0) : (v52 = 1), !v52 && fabs(v38 + -1.0) >= 1.0e-12))
          {
            if ((v38 = v50 - v46 * (v49.__cosval - v49.__sinval * 1.73205081), v38 < 0.0) && vabdd_f64(0.0, v38) >= 1.0e-12 || (v38 >= 1.0 ? (v53 = v38 == 1.0) : (v53 = 1), !v53 && fabs(v38 + -1.0) >= 1.0e-12))
            {
              v54 = MEMORY[0x277D81150];
              v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "[TSUBezierPath(Additions) yValueFromXValue:elementIndex:parametricValue:]");
              v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v58, v55, v57, 220, 0, "No valid roots!");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v59, v60);
              v38 = 0.0;
              v30 = a4;
            }
          }
        }
      }

      else
      {
        v31 = v27 * -0.5;
        v32 = sqrt(v29);
        v64 = *(&v67 + 1);
        v33 = v27 * -0.5 + v32;
        v34 = pow(fabs(v33), 0.333333333);
        if (v33 <= 0.0)
        {
          v35 = -v34;
        }

        else
        {
          v35 = v34;
        }

        v36 = pow(vabdd_f64(v31, v32), 0.333333333);
        if (v31 - v32 <= 0.0)
        {
          v36 = -v36;
        }

        v37 = v35 + v36;
        v22 = v64;
        v38 = v37 + v24 / -3.0;
      }
    }

    if (v30)
    {
      *v30 = v38;
    }

    return v18 + (v22 * -6.0 + v18 * 3.0 + v65 * 3.0) * (v38 * v38) + v38 * (v38 * v38) * (v12 + v22 * 3.0 - v18 + v65 * -3.0) + v38 * (v22 * 3.0 + v18 * -3.0);
  }

  return v12;
}

id sub_27671317C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v64 = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3);
  for (i = 0; i < objc_msgSend_elementCount(a1, v8, v9); ++i)
  {
    v13 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v12, i, &v58);
    if (a4 == i)
    {
      v14 = v63;
      v57 = v62;
      TSUSubtractPoints();
      TSUMultiplyPointScalar();
      TSUAddPoints();
      v16 = v15;
      v18 = v17;
      TSUSubtractPoints();
      TSUMultiplyPointScalar();
      TSUAddPoints();
      v56 = v14;
      TSUSubtractPoints();
      TSUMultiplyPointScalar();
      TSUAddPoints();
      v20 = v19;
      v22 = v21;
      TSUSubtractPoints();
      TSUMultiplyPointScalar();
      v55 = v16;
      v23 = v18;
      TSUAddPoints();
      v25 = v24;
      v27 = v26;
      v53 = v22;
      v54 = v20;
      TSUSubtractPoints();
      TSUMultiplyPointScalar();
      TSUAddPoints();
      v29 = v28;
      v31 = v30;
      TSUSubtractPoints();
      TSUMultiplyPointScalar();
      TSUAddPoints();
      v35 = v34;
      v37 = v36;
      if (v5)
      {
        TSUSubtractPoints();
        TSUSubtractPoints();
        TSUMultiplyPointScalar();
        TSUAddPoints();
        TSUMultiplyPointScalar();
        TSUAddPoints();
        v25 = v38;
        v27 = v39;
        TSUMultiplyPointScalar();
        TSUAddPoints();
        v29 = v40;
        v31 = v41;
      }

      objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v10, v32, v33, v35, v37, v55, v23, v25, v27);
      objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v10, v42, v43, v57, v56, v29, v31, v54, v53);
    }

    else if (v13 > 1)
    {
      if (v13 == 2)
      {
        objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v10, v8, v9, v62, v63, v58, v59, v60, v61);
      }

      else if (v13 == 3)
      {
        objc_msgSend_closePath(v10, v8, v9);
        v50 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v48, v49);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v50, v51, a2, a1, @"TSUBezierPath-TSDAdditions.mm", 311, @"Don't use ClosePath!");
      }
    }

    else if (v13)
    {
      if (v13 == 1)
      {
        objc_msgSend_lineToPoint_(v10, v8, v9, v58, v59);
        v46 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v44, v45);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, a2, a1, @"TSUBezierPath-TSDAdditions.mm", 302, @"Don't use LineTo!");
      }
    }

    else
    {
      objc_msgSend_moveToPoint_(v10, v8, v9, v58, v59);
    }
  }

  return v10;
}

id sub_2767135F4(void *a1, const char *a2, uint64_t a3, double a4)
{
  v11 = 0.0;
  v12 = 0;
  objc_msgSend_yValueFromXValue_elementIndex_parametricValue_(a1, a2, &v12, &v11);
  v9 = objc_msgSend_p_pathBySplittingAtPointGuaranteedToBeOnPath_controlPointDistanceEqual_elementIndex_parametricValue_(a1, v7, a3, v12, a4, v8, v11);

  return v9;
}

id sub_27671366C(void *a1, double a2, double a3, double a4, uint64_t a5, void *a6, void *a7)
{
  v176 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  v166 = 0.0;
  v167 = 0;
  v163 = v12;
  objc_msgSend_distanceToPoint_elementIndex_tValue_threshold_findClosestMatch_(a1, v14, &v167, &v166, 1, a2, a3, a4);
  v17 = v16;
  if (v16 > a4 || (objc_msgSend_pointAt_fromElement_(a1, v15, v167, v166), v19 = v18, v21 = v20, objc_msgSend_gradientAt_fromElement_(a1, v22, v167, v166), v27 = (*(v12 + 2))(v12, v17, v19, v21, v23, v24), v27 <= 0.0))
  {
    v29 = 0;
    goto LABEL_6;
  }

  v29 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v25, v26);
  v30 = v167;
  if (v167)
  {
    v31 = v167 - 1;
  }

  else
  {
    v33 = MEMORY[0x277D81150];
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSUBezierPath(Additions) pathByCreatingHoleInPathAtPoint:withDiameter:andThreshold:updatingPatternOffsetsBySubpath:]");
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 363, 0, "firstElementAfter should be at least 1.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v38, v39);
    v31 = 0;
  }

  v40 = v27 * 0.5;
  v41 = v166;
  v42 = MEMORY[0x277D814D0];
  v43 = v40;
  while (1)
  {
    v172 = *v42;
    v173 = v172;
    v174 = v172;
    v175 = v172;
    v44 = objc_msgSend_elementAtIndex_allPoints_(a1, v28, v31 + 1, &v172);
    if (v44 == 3)
    {
      v49 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSUBezierPath(Additions) pathByCreatingHoleInPathAtPoint:withDiameter:andThreshold:updatingPatternOffsetsBySubpath:]");
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 400, 0, "-pathByCreatingHoleInPathAtPoint doesn't know how to handle close elements.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
LABEL_18:
      v47 = 0;
      v48 = v31 + 1;
      v164 = 1;
      goto LABEL_19;
    }

    if ((v44 - 3) < 0xFFFFFFFFFFFFFFFELL)
    {
      goto LABEL_18;
    }

    objc_msgSend_lengthOfElement_(a1, v28, v31 + 1);
    if (v43 <= v41 * v46)
    {
      break;
    }

    if (!v31)
    {
      v164 = 0;
      v69 = 0;
      v58 = 0;
      v56 = 0.0;
      v70 = 1;
      if (v13)
      {
        goto LABEL_31;
      }

LABEL_28:
      v71 = 0.0;
      v72 = 0.0;
      goto LABEL_38;
    }

    v43 = v43 - v41 * v46;
    --v31;
    v41 = 1.0;
    if (v43 <= 0.0)
    {
      v47 = 0;
      v164 = 0;
      v48 = v31 + 1;
LABEL_19:
      v56 = 0.0;
      goto LABEL_21;
    }
  }

  v164 = 0;
  v56 = v41 - v43 / v46;
  v48 = v31 + 1;
  v47 = 1;
LABEL_21:
  v165 = 0;
  v57 = objc_msgSend_copyWithPointsInRange_countingSubpaths_(a1, v28, 0, v48, &v165);

  v58 = v165;
  if (v47)
  {
    v172 = *MEMORY[0x277D814D0];
    v173 = v172;
    v174 = v172;
    v175 = v172;
    v59 = objc_msgSend_elementAtIndex_allPoints_(a1, v28, v48, &v172);
    if ((v59 - 1) >= 2)
    {
      v60 = MEMORY[0x277D81150];
      v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSUBezierPath(Additions) pathByCreatingHoleInPathAtPoint:withDiameter:andThreshold:updatingPatternOffsetsBySubpath:]");
      v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v60, v64, v61, v63, 449, 0, "If we have a path before, the last element before +1 should be a curve or line.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v65, v66);
    }

    if (v59 == 1)
    {
      TSUMixPoints();
      objc_msgSend_lineToPoint_(v57, v73, v74);
    }

    else if (v59 == 2)
    {
      v168 = *MEMORY[0x277D814D0];
      v169 = v168;
      v170 = v168;
      v171 = v168;
      sub_276667338(&v172, &v168, 0.0, v56);
      objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v57, v67, v68, v171, v169, v170);
    }
  }

  v70 = (v31 + 1);
  v69 = 1;
  v29 = v57;
  v42 = MEMORY[0x277D814D0];
  if (!v13)
  {
    goto LABEL_28;
  }

LABEL_31:
  v75 = objc_msgSend_elementCount(v29, v28, v45);
  if (v75 < 1)
  {
    v72 = 0.0;
  }

  else
  {
    v77 = v75 + 1;
    v72 = 0.0;
    do
    {
      if (!objc_msgSend_elementAtIndex_(v29, v76, v77 - 2))
      {
        break;
      }

      objc_msgSend_lengthOfElement_(v29, v76, v77 - 2);
      v72 = v72 + v78;
      --v77;
    }

    while (v77 > 1);
  }

  v79 = objc_msgSend_copyFromSegment_t_toSegment_t_(a1, v76, v70, v167, v56, v166);
  objc_msgSend_length(v79, v80, v81);
  v83 = v82;

  v71 = v83 + 0.0;
  v42 = MEMORY[0x277D814D0];
LABEL_38:
  v84 = v42->f64[0];
  v85 = v42->f64[1];
  v86 = v166;
  if (v30 >= objc_msgSend_elementCount(a1, v28, v45))
  {
    v96 = 0;
    v97 = 0;
LABEL_47:
    v89 = 1.0;
    if (v13)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v89 = 1.0 - v86;
    while (1)
    {
      v172 = *v42;
      v173 = v172;
      v174 = v172;
      v175 = v172;
      v91 = objc_msgSend_elementAtIndex_allPoints_(a1, v87, v30, &v172);
      if (v91 == 3)
      {
        v98 = MEMORY[0x277D81150];
        v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "[TSUBezierPath(Additions) pathByCreatingHoleInPathAtPoint:withDiameter:andThreshold:updatingPatternOffsetsBySubpath:]");
        v101 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v102, v99, v101, 496, 0, "-pathByCreatingHoleInPathAtPoint doesn't know how to handle close elements.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v103, v104);
LABEL_50:
        v89 = 1.0;
        v97 = 1;
        v42 = MEMORY[0x277D814D0];
        goto LABEL_57;
      }

      if ((v91 - 3) < 0xFFFFFFFFFFFFFFFELL)
      {
        goto LABEL_50;
      }

      objc_msgSend_lengthOfElement_(a1, v87, v30);
      v95 = v94;
      v42 = MEMORY[0x277D814D0];
      if (v40 <= v89 * v94)
      {
        break;
      }

      if (v30 >= objc_msgSend_elementCount(a1, v92, v93) - 1)
      {
        v96 = 0;
        v97 = 0;
        v30 = objc_msgSend_elementCount(a1, v87, v90) - 1;
        goto LABEL_47;
      }

      v40 = v40 - v89 * v95;
      ++v30;
      v89 = 1.0;
      if (v40 <= 0.0)
      {
        goto LABEL_56;
      }
    }

    v89 = 1.0 - v89 + v40 / v94;
    if (v91 == 2)
    {
      TSUPointOnCurve();
    }

    else
    {
      TSUMixPoints();
    }

    v84 = v105;
    v85 = v106;
LABEL_56:
    v97 = 0;
LABEL_57:
    v107 = v84 == v42->f64[0] && v85 == v42->f64[1];
    v108 = v30;
    if (!v107)
    {
      objc_msgSend_moveToPoint_(v29, v87, v90, v84, v85);
      v172 = *v42;
      v173 = v172;
      v174 = v172;
      v175 = v172;
      v110 = objc_msgSend_elementAtIndex_allPoints_(a1, v109, v30, &v172);
      if ((v110 - 1) >= 2)
      {
        v161 = MEMORY[0x277D81150];
        v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v87, "[TSUBezierPath(Additions) pathByCreatingHoleInPathAtPoint:withDiameter:andThreshold:updatingPatternOffsetsBySubpath:]");
        v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v111, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v161, v113, v162, v112, 548, 0, "If we have a path after, the first element after should be a curve or line.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115);
      }

      if (v110 == 1)
      {
        objc_msgSend_lineToPoint_(v29, v87, v90, *&v173);
      }

      else if (v110 == 2)
      {
        v168 = *MEMORY[0x277D814D0];
        v169 = v168;
        v170 = v168;
        v171 = v168;
        sub_276667338(&v172, &v168, v89, 1.0);
        objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v29, v116, v117, v171, v169, v170);
      }

      v108 = v30 + 1;
    }

    v118 = objc_msgSend_elementCount(a1, v87, v90);
    objc_msgSend_appendPointsInRange_fromBezierPath_(v29, v119, v108, v118 - v108, a1);
    v96 = 1;
    if (v13)
    {
LABEL_69:
      v120 = objc_msgSend_copyFromSegment_t_toSegment_t_(a1, v87, v167, v30, v166, v89);
      objc_msgSend_length(v120, v121, v122);
      v124 = v123;

      v129 = objc_msgSend_array(MEMORY[0x277CBEB18], v125, v126);
      v130 = 0;
      v131 = v71 + v124;
      while (v130 < objc_msgSend_count(v13, v127, v128))
      {
        if (v130)
        {
          v132 = 1;
        }

        else
        {
          v132 = v69;
        }

        if (v130 + 1 == v58 || (v132 & 1) == 0)
        {
          if (v69)
          {
            v135 = objc_msgSend_objectAtIndexedSubscript_(v13, v127, v130);
            objc_msgSend_addObject_(v129, v136, v135);
          }

          if (!v96)
          {
            break;
          }

          if ((v97 & 1) == 0)
          {
            if (v164)
            {
              v137 = objc_msgSend_objectAtIndexedSubscript_(v13, v127, v130 + 1);
              objc_msgSend_tsu_CGFloatValue(v137, v138, v139);
              v141 = v140;

              v144 = v141 + 0.0;
            }

            else
            {
              v145 = objc_msgSend_objectAtIndexedSubscript_(v13, v127, v130);
              objc_msgSend_tsu_CGFloatValue(v145, v146, v147);
              v149 = v148;

              v144 = v72 + v149 + 0.0;
            }

            v150 = objc_msgSend_tsu_numberWithCGFloat_(MEMORY[0x277CCABB0], v142, v143, v131 + v144);
            objc_msgSend_addObject_(v129, v151, v150);
          }

          if (v164)
          {
            v152 = v130 + 1;
          }

          else
          {
            v152 = v130;
          }

          v130 = v152 + 1;
        }

        else
        {
          v133 = objc_msgSend_objectAtIndexedSubscript_(v13, v127, v130);
          objc_msgSend_addObject_(v129, v134, v133);

          ++v130;
        }
      }

      objc_msgSend_removeAllObjects(v13, v127, v128);
      objc_msgSend_addObjectsFromArray_(v13, v153, v129);
    }
  }

  if ((objc_msgSend_isEmpty(v29, v87, v88) & 1) == 0 && (objc_msgSend_containsElementsOtherThanMoveAndClose(v29, v154, v155) & 1) == 0)
  {
    v158 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v156, v157);

    v29 = v158;
    objc_msgSend_removeAllObjects(v13, v159, v160);
  }

LABEL_6:

  return v29;
}

uint64_t sub_2767141BC(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_elementCount(a1, a2, a3);
  if (result >= 1)
  {
    objc_msgSend_bounds(a1, v5, v6);
    v8 = v7;
    v10 = v9;
    result = TSUNearlyEqualPoints();
    if ((result & 1) == 0)
    {
      CGAffineTransformMakeTranslation(&v12, -v8, -v10);
      return objc_msgSend_transformUsingAffineTransform_(a1, v11, &v12);
    }
  }

  return result;
}

BOOL sub_276714240(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_elementCount(a1, a2, a3);
  if (v4 < 1)
  {
    v9 = 0;
  }

  else
  {
    v6 = v4;
    v7 = 0;
    v8 = 0;
    do
    {
      if (!objc_msgSend_elementAtIndex_(a1, v5, v7))
      {
        ++v8;
      }

      ++v7;
    }

    while (v6 != v7);
    v9 = v8 - (objc_msgSend_elementAtIndex_(a1, v5, v6 - 1) == 0);
  }

  return v9 > 1;
}

void sub_2767142CC(void *a1, uint64_t a2, void *a3)
{
  v24 = a3;
  v6 = objc_msgSend_supportsWidth(v24, v4, v5);
  v9 = 0.0;
  if (v6)
  {
    objc_msgSend_width(v24, v7, v8, 0.0);
  }

  objc_msgSend_setLineWidth_(a1, v7, v8, v9);
  if (objc_msgSend_supportsLineOptions(v24, v10, v11))
  {
    objc_msgSend_miterLimit(v24, v12, v13);
    objc_msgSend_setMiterLimit_(a1, v14, v15);
    objc_msgSend_cap(v24, v16, v17);
    v18 = CGLineCapToTSULineCap();
    objc_msgSend_setLineCapStyle_(a1, v19, v18);
    objc_msgSend_join(v24, v20, v21);
    v22 = CGLineJoinToTSULineJoinStyle();
    objc_msgSend_setLineJoinStyle_(a1, v23, v22);
  }

  else
  {
    objc_msgSend_setLineJoinStyle_(a1, v12, 1);
  }
}

double sub_276714394(void *a1, const char *a2, uint64_t a3, const char *a4, int a5, double a6, double a7)
{
  v57[1] = *MEMORY[0x277D85DE8];
  if (a6 < 0.0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSUBezierPath(Additions) boundsIncludingStrokeWidth:joinStyle:capStyle:miterLimit:needsToExtendJoins:]");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 679, 0, "lineWidth should not be negative.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v13, v14);
    if (!objc_msgSend_isEmpty(a1, v15, v16))
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v22 = a3;
  if (objc_msgSend_isEmpty(a1, a2, a3))
  {
LABEL_5:
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSUBezierPath(Additions) boundsIncludingStrokeWidth:joinStyle:capStyle:miterLimit:needsToExtendJoins:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 684, 0, "Can not calculate the stroked bounds of an empty path.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v29, v30);
    return *MEMORY[0x277CBF398];
  }

  if (a6 == 0.0)
  {
LABEL_7:
    objc_msgSend_bounds(a1, v17, v18);
    return v32;
  }

  v34 = a1;
  v37 = objc_msgSend_CGPath(v34, v35, v36);
  sub_2767B2184(v37, a4, v22, a6, a7);
  x = v40;
  y = v41;
  width = v43;
  height = v45;
  if (a5)
  {
    v47 = objc_msgSend_elementCount(a1, v38, v39);
    if (v47 >= 1)
    {
      v49 = v47;
      v50 = 0;
      v51 = sqrt(a6 * 0.5 * a6);
      while (1)
      {
        v52 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v48, v50, &v55);
        if (v52 < 2)
        {
          break;
        }

        if (v52 == 2)
        {
          v53 = *&v56[3];
          v54 = v57;
          goto LABEL_16;
        }

LABEL_17:
        if (v49 == ++v50)
        {
          return x;
        }
      }

      v53 = v55;
      v54 = v56;
LABEL_16:
      v60.origin.x = v53 - v51;
      v60.origin.y = *v54 - v51;
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      v60.size.width = v51 + v51;
      v60.size.height = v51 + v51;
      v59 = CGRectUnion(v58, v60);
      x = v59.origin.x;
      y = v59.origin.y;
      width = v59.size.width;
      height = v59.size.height;
      goto LABEL_17;
    }
  }

  return x;
}

uint64_t sub_27671467C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_lineWidth(a1, a2, a3);
  v5 = v4;
  v8 = objc_msgSend_lineJoinStyle(a1, v6, v7);
  v11 = objc_msgSend_lineCapStyle(a1, v9, v10);
  objc_msgSend_miterLimit(a1, v12, v13);

  return objc_msgSend_boundsIncludingStrokeWidth_joinStyle_capStyle_miterLimit_needsToExtendJoins_(a1, v14, v8, v11, 0, v5, v15);
}

double sub_2767146FC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (objc_msgSend_isEmpty(a1, v5, v6))
  {
    goto LABEL_2;
  }

  if (!v4 || (objc_msgSend_shouldRender(v4, v7, v8) & 1) == 0)
  {
    objc_msgSend_bounds(a1, v7, v8);
    v9 = v21;
    goto LABEL_8;
  }

  if (objc_msgSend_isFrame(v4, v7, v8))
  {
    objc_msgSend_bounds(a1, v10, v11);
    objc_msgSend_coverageRect_(v4, v12, v13);
    v9 = v14;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v25 = 0.0;
    if (objc_msgSend_supportsWidth(v4, v10, v11))
    {
      objc_msgSend_width(v4, v23, v24);
      v25 = v26;
    }

    if (objc_msgSend_supportsLineOptions(v4, v23, v24))
    {
      objc_msgSend_join(v4, v27, v28);
      v29 = CGLineJoinToTSULineJoinStyle();
      objc_msgSend_cap(v4, v30, v31);
      v32 = CGLineCapToTSULineCap();
      objc_msgSend_miterLimit(v4, v33, v34);
    }

    else
    {
      v29 = objc_msgSend_defaultLineJoinStyle(MEMORY[0x277D81160], v27, v28);
      v32 = objc_msgSend_defaultLineCapStyle(MEMORY[0x277D81160], v38, v39);
      objc_msgSend_defaultMiterLimit(MEMORY[0x277D81160], v40, v41);
    }

    v42 = v37;
    v43 = objc_msgSend_pattern(v4, v35, v36);
    v46 = objc_msgSend_count(v43, v44, v45);

    if (objc_msgSend_needsToExtendJoinsForBoundsCalculation(v4, v47, v48))
    {
      v50 = 1;
    }

    else
    {
      v51 = !v46 || v32 == 0;
      v50 = !v51;
    }

    v52 = objc_msgSend_pathToStrokeFromTSUBezierPath_(v4, v49, a1);
    objc_msgSend_boundsIncludingStrokeWidth_joinStyle_capStyle_miterLimit_needsToExtendJoins_(v52, v53, v29, v32, v50, v25, v42);
    v9 = v54;
    v16 = v55;
    v18 = v56;
    v20 = v57;
  }

  v58.origin.x = v9;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  if (CGRectIsNull(v58))
  {
LABEL_2:
    v9 = *MEMORY[0x277CBF3A0];
  }

LABEL_8:

  return v9;
}

void sub_2767148E4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_27671492C(void *a1, const char *a2, unint64_t *a3, double *a4, int a5, double a6, double a7, double a8)
{
  v49 = *MEMORY[0x277D85DE8];
  if (a8 >= 1.79769313e308 && (a5 & 1) == 0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSUBezierPath(Additions) distanceToPoint:elementIndex:tValue:threshold:findClosestMatch:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 776, 0, "Should provide a threshold if not looking for the closest match.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v20, v21);
  }

  result = objc_msgSend_containsElementsOtherThanMoveAndClose(a1, a2, a3);
  if (result)
  {
    objc_msgSend_controlPointBounds(a1, v23, v24);
    result = TSUDistanceToRect();
    if (v27 <= a8)
    {
      result = objc_msgSend_elementCount(a1, v25, v26);
      v29 = 0;
      v45 = *MEMORY[0x277D814D0];
      v46 = v45;
      v47 = v45;
      v48 = v45;
      v44 = *MEMORY[0x277CBF348];
      v30 = a8 * a8;
      v31 = a8 * a8 < 1.79769313e308;
      if (a8 * a8 < 1.79769313e308)
      {
        v32 = 1;
      }

      else
      {
        v32 = a5;
      }

      v33 = 0.0;
      if (result && v32)
      {
        v34 = result;
        v29 = 0;
        v35 = 1.79769313e308;
        v36 = 1;
        while (1)
        {
          result = objc_msgSend_elementAtIndex_allPoints_(a1, v28, v36 - 1, &v45, *&v44);
          if (result <= 1)
          {
            break;
          }

          if (result != 2)
          {
            if (result != 3)
            {
              goto LABEL_34;
            }

            v46 = v44;
            goto LABEL_19;
          }

          TSURectWithPoints();
          result = TSUDistanceToRectSquared();
          if (v40 <= v30 && v40 < v35)
          {
            v39 = sub_2766675CC(&v45, a6, a7, 1.0);
            TSDPointOnCurve(&v45, v39);
LABEL_32:
            result = TSUDistanceSquared();
            if (v42 < v35)
            {
              v33 = v39;
              v29 = v36 - 1;
              v35 = v42;
            }
          }

LABEL_34:
          v31 = v35 > v30;
          if (v35 > v30)
          {
            v43 = 1;
          }

          else
          {
            v43 = a5;
          }

          if (v36 < v34)
          {
            ++v36;
            if (v43)
            {
              continue;
            }
          }

          goto LABEL_39;
        }

        if (!result)
        {
          v44 = v45;
          goto LABEL_34;
        }

        if (result != 1)
        {
          goto LABEL_34;
        }

LABEL_19:
        TSURectWithPoints();
        result = TSUDistanceToRectSquared();
        if (v37 <= v30 && v37 < v35)
        {
          v39 = sub_276667504(v45.f64);
          TSUMixPoints();
          goto LABEL_32;
        }

        goto LABEL_34;
      }

LABEL_39:
      if (!v31)
      {
        if (a3)
        {
          *a3 = v29;
        }

        if (a4)
        {
          *a4 = v33;
        }
      }
    }
  }

  return result;
}

double sub_276714D04(double a1, uint64_t a2, uint64_t a3, void *a4, double *a5, uint64_t *a6)
{
  v77 = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (objc_msgSend_isEmpty(v9, v10, v11))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSUBezierPath(Additions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 876, 0, "It is impossible to find pointAlongPathAtPercentage at any percentage of an empty path.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v19, v20);
  }

  v21 = objc_msgSend_elementCount(v9, v12, v13);
  objc_msgSend_length(v9, v22, v23);
  v25 = v24;
  TSUClamp();
  v70 = a1;
  v28 = v25 * v27;
  v71 = a5;
  v29 = *a5;
  v30 = *a6;
  if (*a6 < v21)
  {
    v31 = MEMORY[0x277D814D0];
    while (1)
    {
      v73 = *v31;
      v74 = v73;
      v75 = v73;
      v76 = v73;
      v32 = objc_msgSend_elementAtIndex_allPoints_(v9, v26, v30, &v73);
      if (v32 == 2)
      {
        v33 = MEMORY[0x277D81150];
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSUBezierPath(Additions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]");
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 888, 0, "We don't expect curve elements in a flattened path.");

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v38, v39);
        v40 = v29;
      }

      else if ((v32 | 2) == 3)
      {
        if (v32 != 1)
        {
          if (v30 && v32 == 3)
          {
            v72[0] = *v31;
            v72[1] = v72[0];
            v72[2] = v72[0];
            v72[3] = v72[0];
            if (objc_msgSend_elementAtIndex_allPoints_(v9, v26, v30 - 1, v72) > 1)
            {
              v49 = MEMORY[0x277D81150];
              v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "[TSUBezierPath(Additions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]");
              v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 910, 0, "We expect the node before a close path to be either a move or lineto.");

              objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v54, v55);
            }
          }

          else if (v32 == 3)
          {
            v42 = MEMORY[0x277D81150];
            v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSUBezierPath(Additions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]");
            v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 916, 0, "Can't begin a path with a close element.");

            objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v47, v48);
          }
        }

        TSUDistance();
        v57 = v56;
        v40 = v29 + v56;
        if (v40 >= v28)
        {
          TSUSubtractPoints();
          if (v57 > 0.0)
          {
            TSUMultiplyPointScalar();
          }

          TSUAddPoints();
          v65 = v68;
          *v71 = v29;
          *a6 = v30;
          goto LABEL_32;
        }
      }

      else
      {
        v40 = v29;
      }

      ++v30;
      v29 = v40;
      if (v21 == v30)
      {
        goto LABEL_23;
      }
    }
  }

  v40 = *a5;
LABEL_23:
  if (v40 == v28 || vabdd_f64(v40, v28) < 0.00999999978)
  {
    v73 = *MEMORY[0x277D814D0];
    v74 = v73;
    v75 = v73;
    v76 = v73;
    v66 = objc_msgSend_elementAtIndex_allPoints_(v9, v26, v21 - 1, &v73);
    v67 = &v74;
    if (v66 != 1)
    {
      v67 = &v73;
    }

    v65 = *v67;
    *v71 = v25;
    *a6 = v21 - 1;
  }

  else
  {
    *v71 = 0.0;
    *a6 = 0;
    v58 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSUBezierPath(Additions) pointAlongPathAtPercentage:withFlattenedPath:andLength:atStartIndex:]");
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v62, v59, v61, 961, 0, "Failed to find point at percentage: %f", *&v70);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v63, v64);
    v65 = *MEMORY[0x277CBF348];
  }

LABEL_32:

  return v65;
}

double sub_2767152E4(void *a1, const char *a2, uint64_t a3, double a4)
{
  v6 = objc_msgSend_bezierPathByFlatteningPath(a1, a2, a3);
  v11 = 0;
  v12 = 0;
  objc_msgSend_pointAlongPathAtPercentage_withFlattenedPath_andLength_atStartIndex_(a1, v7, v6, &v12, &v11, a4);
  v9 = v8;

  return v9;
}

void sub_276715364(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (objc_msgSend_elementCount(a1, v7, v8) >= 1)
  {
    objc_msgSend_length(a1, v9, v10);
    v14 = v13;
    if (v13 == 0.0 || fabs(v13) < 0.00999999978)
    {
      objc_msgSend_currentPoint(a1, v11, v12);
      v6[2](v6);
      objc_msgSend_currentPoint(a1, v19, v20);
      v6[2](v6);
    }

    else
    {
      v16 = objc_msgSend_bezierPathByFlatteningPath(a1, v11, v12);
      v21 = 0;
      v22 = 0;
      v17 = 0.0;
      v18 = a2 / v14;
      do
      {
        objc_msgSend_pointAlongPathAtPercentage_withFlattenedPath_andLength_atStartIndex_(a1, v15, v16, &v22, &v21, v17);
        v6[2](v6);
        v17 = v18 + v17;
      }

      while (v17 < 1.0);
      objc_msgSend_pointAlongPathAtPercentage_withFlattenedPath_andLength_atStartIndex_(a1, v15, v16, &v22, &v21, 1.0);
      v6[2](v6);
    }
  }
}

BOOL sub_2767154D0(void *a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_containsClosePathElement(a1, a2, a3))
  {
    return 1;
  }

  if (objc_msgSend_elementCount(a1, v4, v5) < 2 || objc_msgSend_elementAtIndex_associatedPoints_(a1, v7, 0, &v18))
  {
    return 0;
  }

  v10 = objc_msgSend_elementCount(a1, v8, v9);
  v12 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v11, v10 - 1, v17);
  if (v12 < 2)
  {
    v13 = v18;
    v14 = v19;
    v15 = *v17;
    v16 = *&v17[1];
  }

  else
  {
    if (v12 != 2)
    {
      return v12 == 3;
    }

    v13 = v18;
    v14 = v19;
    v15 = *&v17[4];
    v16 = *&v17[5];
  }

  return v14 == v16 && v13 == v15;
}

uint64_t sub_2767155B4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_elementCount(a1, a2, a3);
  if (v4 < 2)
  {
    return 0;
  }

  v6 = v4;
  v7 = 1;
  while (!objc_msgSend_elementAtIndex_(a1, v5, v7) || objc_msgSend_elementAtIndex_(a1, v5, v7) == 3)
  {
    if (v6 == ++v7)
    {
      return 0;
    }
  }

  return 1;
}

id sub_27671562C(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v64[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_msgSend_count(v4, v5, v6) > 1)
  {
    v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
    v13 = objc_msgSend_set(MEMORY[0x277CBEB58], v9, v10);
    for (i = 0; i < objc_msgSend_count(v4, v11, v12); ++i)
    {
      v16 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v15, i);
      v18 = objc_msgSend_containsObject_(v13, v17, v16);

      if ((v18 & 1) == 0)
      {
        v21 = objc_msgSend_objectAtIndexedSubscript_(v4, v11, i);
        v22 = i;
        while (++v22 < objc_msgSend_count(v4, v19, v20))
        {
          v24 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v23, v22);
          v26 = objc_msgSend_containsObject_(v13, v25, v24);

          if ((v26 & 1) == 0)
          {
            v27 = objc_msgSend_objectAtIndexedSubscript_(v4, v19, v22);
            objc_msgSend_bounds(v21, v28, v29);
            v31 = v30;
            v33 = v32;
            v35 = v34;
            v37 = v36;
            objc_msgSend_bounds(v27, v38, v39);
            v67.origin.x = v40;
            v67.origin.y = v41;
            v67.size.width = v42;
            v67.size.height = v43;
            v66.origin.x = v31;
            v66.origin.y = v33;
            v66.size.width = v35;
            v66.size.height = v37;
            if (CGRectIntersectsRect(v66, v67))
            {
              v45 = MEMORY[0x277D81160];
              v64[0] = v21;
              v64[1] = v27;
              v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v44, v64, 2);
              v48 = objc_msgSend_excludeBezierPaths_(v45, v47, v46);

              if (objc_msgSend_containsElementsOtherThanMoveAndClose(v48, v49, v50))
              {
                v53 = v48;

                v55 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v54, v22);
                objc_msgSend_addObject_(v13, v56, v55);
              }

              else
              {
                if (a4)
                {
                  v57 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v51, v52);
                  objc_msgSend_addObject_(v63, v58, v57);

                  break;
                }

                v53 = v21;
              }
            }

            else
            {
              v53 = v21;
            }

            v21 = v53;
          }
        }

        objc_msgSend_addObject_(v63, v23, v21);
        if (a4 && objc_msgSend_count(v63, v59, v60) > 1)
        {

          break;
        }
      }
    }
  }

  else
  {
    v63 = v4;
  }

  return v63;
}

id sub_2767159C4(uint64_t a1, uint64_t a2, void *a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v5 = objc_msgSend_appendBezierPaths_(MEMORY[0x277D81160], v4, v3);
  if (objc_msgSend_containsElementsOtherThanMoveAndClose(v5, v6, v7))
  {
    v10 = MEMORY[0x277D81160];
    objc_msgSend_bounds(v5, v8, v9);
    v13 = objc_msgSend_bezierPathWithRect_(v10, v11, v12);
    v14 = MEMORY[0x277D81160];
    v22[0] = v13;
    v22[1] = v5;
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v22, 2);
    v18 = objc_msgSend_intersectBezierPaths_(v14, v17, v16);

    v20 = objc_msgSend_arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved_(v18, v19, 1);
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

BOOL sub_276715B34(void *a1, const char *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved_(a1, a2, 1);
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4);
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v2;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v31, v35, 16);
  if (v13)
  {
    v14 = *v32;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v31 + 1) + 8 * i);
        if (objc_msgSend_containsClosePathElement(v16, v11, v12, v31))
        {
          objc_msgSend_addObject_(v8, v17, v16);
        }

        else
        {
          objc_msgSend_addObject_(v5, v17, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v31, v35, 16);
    }

    while (v13);
  }

  if (objc_msgSend_count(v5, v18, v19) <= 1)
  {
    v22 = objc_msgSend_p_normalizeSubpaths_(MEMORY[0x277D81160], v20, v8);
    v24 = objc_msgSend_p_mergeIntersectingSubpaths_stopAfterFoundTwo_(MEMORY[0x277D81160], v23, v22, 1);
    v27 = objc_msgSend_count(v5, v25, v26);
    v21 = (objc_msgSend_count(v24, v28, v29) + v27) > 1;
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

id sub_276715D58(void *a1, const char *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_arrayOfSubpathsWithEffectivelyEmptySubpathsRemoved_(a1, a2, 1);
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4);
  v8 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v2;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v25, v29, 16);
  if (v13)
  {
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if (objc_msgSend_containsClosePathElement(v16, v11, v12, v25))
        {
          objc_msgSend_addObject_(v8, v17, v16);
        }

        else
        {
          objc_msgSend_addObject_(v5, v17, v16);
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v25, v29, 16);
    }

    while (v13);
  }

  v19 = objc_msgSend_p_normalizeSubpaths_(MEMORY[0x277D81160], v18, v8);
  v21 = objc_msgSend_p_mergeIntersectingSubpaths_stopAfterFoundTwo_(MEMORY[0x277D81160], v20, v19, 0);
  v23 = objc_msgSend_arrayByAddingObjectsFromArray_(v21, v22, v5);

  return v23;
}

uint64_t sub_276715F5C(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_elementCount(a1, a2, a3) < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    if (!objc_msgSend_elementAtIndex_(a1, v4, v5))
    {
      ++v6;
    }

    ++v5;
  }

  while (objc_msgSend_elementCount(a1, v7, v8) > v5);
  return v6;
}

id sub_276715FCC(void *a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v8 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v6, v7);
  objc_msgSend_copyPathAttributesTo_(a1, v9, v8);
  for (i = 0; objc_msgSend_elementCount(a1, v10, v11) > i; ++i)
  {
    v15 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v13, i, &v29);
    if (v15 > 1)
    {
      if (v15 != 2)
      {
        if (v15 == 3)
        {
          objc_msgSend_closePath(v8, v10, v11);
          objc_msgSend_addObject_(v5, v17, v8);
          v16 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v18, v19);

          objc_msgSend_copyPathAttributesTo_(a1, v20, v16);
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v8, v10, v11, v33, v34, v29, v30, v31, v32);
      v16 = v8;
    }

    else
    {
      if (v15)
      {
        if (v15 == 1)
        {
          objc_msgSend_lineToPoint_(v8, v10, v11, v29, v30);
          v16 = v8;
          goto LABEL_15;
        }

LABEL_10:
        v16 = v8;
        goto LABEL_15;
      }

      if ((objc_msgSend_isEmpty(v8, v10, v11) & 1) == 0)
      {
        objc_msgSend_addObject_(v5, v21, v8);
      }

      v16 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v21, v22);

      objc_msgSend_copyPathAttributesTo_(a1, v23, v16);
      objc_msgSend_moveToPoint_(v16, v24, v25, v29, v30);
    }

LABEL_15:
    v8 = v16;
  }

  if ((objc_msgSend_isEmpty(v8, v13, v14) & 1) == 0 && (!v3 || objc_msgSend_containsElementsOtherThanMoveAndClose(v8, v26, v27)))
  {
    objc_msgSend_addObject_(v5, v26, v8);
  }

  return v5;
}

id sub_2767161F0(void *a1, const char *a2, unint64_t a3, unint64_t a4)
{
  v63[1] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_elementCount(a1, a2, a3) < 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSUBezierPath(Additions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    v25 = objc_msgSend_elementCount(a1, v23, v24);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v26, v20, v22, 1232, 0, "elementCount (%zd) should be positive.", v25);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    goto LABEL_7;
  }

  v9 = objc_msgSend_elementCount(a1, v7, v8);
  if (a3 > a4)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSUBezierPath(Additions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1239, 0, "softElementLimit (%zu) should be less than or equal to hardElementLimit (%zu).", a3, a4);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
LABEL_7:
    v36 = MEMORY[0x277CBEBF8];
    goto LABEL_8;
  }

  if (a3 <= 1)
  {
    v29 = MEMORY[0x277D81150];
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSUBezierPath(Additions) pathSplitAtSubpathBoundariesWithSoftElementLimit:hardElementLimit:]");
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 1244, 0, "Unable to split a path with subpaths less than 2 elements at a time.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    goto LABEL_7;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  if (v9 <= a3)
  {
    v59 = objc_msgSend_copy(a1, v10, v11);
    v63[0] = v59;
    v36 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v60, v63, 1);
  }

  else
  {
    v36 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
    v61 = objc_msgSend_p_elementCountForSubpaths(a1, v38, v39);
    v62 = objc_msgSend_count(v61, v40, v41);
    if (v62)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      while (1)
      {
        v46 = objc_msgSend_objectAtIndexedSubscript_(v61, v42, v45);
        v49 = objc_msgSend_unsignedIntegerValue(v46, v47, v48);
        ++v45;

        if (v49 + v44 <= a3)
        {
          break;
        }

        if (v44)
        {
          v50 = objc_msgSend_copyWithPointsInRange_(a1, v42, v43, v44);
          objc_msgSend_addObject_(v36, v51, v50);

          v43 += v44;
        }

        if (v49 <= a4)
        {
          goto LABEL_26;
        }

        v52 = a4;
        do
        {
          if (v49 >= v52)
          {
            v53 = v52;
            v54 = objc_msgSend_copyWithPointsInRange_(a1, v42, v43, v52);
          }

          else
          {
            v53 = v49;
            v54 = objc_msgSend_copyWithPointsInRange_(a1, v42, v43, v49);
          }

          v56 = v54;
          objc_msgSend_addObject_(v36, v55, v54);

          v43 += v53;
          v52 = a4 - 1;
          v49 -= v53;
        }

        while (v49);
LABEL_29:
        v44 = v49;
        if (v45 == v62)
        {
          goto LABEL_30;
        }
      }

      v49 += v44;
LABEL_26:
      if (v45 == v62 && v49)
      {
        v57 = objc_msgSend_copyWithPointsInRange_(a1, v42, v43, v49);
        objc_msgSend_addObject_(v36, v58, v57);
      }

      goto LABEL_29;
    }

LABEL_30:
  }

LABEL_8:

  return v36;
}

id sub_2767165F4(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3);
  v7 = objc_msgSend_elementCount(a1, v5, v6);
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = -v7;
    v11 = 1;
    do
    {
      if (!(v10 + v11) || !objc_msgSend_elementAtIndex_(a1, v8, v11))
      {
        v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, v11 - v9);
        objc_msgSend_addObject_(v4, v13, v12);

        v9 = v11;
      }

      ++v11;
    }

    while (v10 + v11 != 1);
  }

  return v4;
}

id sub_2767166DC(void *a1, const char *a2, uint64_t a3)
{
  v25[2] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isEffectivelyClosed(a1, a2, a3))
  {
    if (!objc_msgSend_isEmpty(a1, v4, v5))
    {
      v8 = MEMORY[0x277D81160];
      objc_msgSend_bounds(a1, v6, v7);
      v11 = objc_msgSend_bezierPathWithRect_(v8, v9, v10);
      v12 = objc_opt_class();
      v25[0] = a1;
      v25[1] = v11;
      v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v25, 2);
      v16 = objc_msgSend_intersectBezierPaths_(v12, v15, v14);

      goto LABEL_6;
    }
  }

  else
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSUBezierPath(Additions) pathByNormalizingClosedPathToRemoveSelfIntersections]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 1323, 0, "This method isn't really designed to work on open paths.");

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v22, v23);
  }

  v16 = a1;
LABEL_6:

  return v16;
}

id sub_276716890(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_p_bezierPathByOffsettingPath_joinStyle_attemptWithLivarotFirst_livarotOverrideThresholds_(a1, a2, a3, 1, a4);

  return v4;
}

id sub_2767168C4(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a6;
  if (a2 == 0.0)
  {
    goto LABEL_2;
  }

  isEmpty = objc_msgSend_isEmpty(a1, v10, v11);
  if (a2 >= 0.0)
  {
    v19 = 1;
  }

  else
  {
    v19 = isEmpty;
  }

  if ((v19 & 1) == 0)
  {
    objc_msgSend_bounds(a1, v17, v18);
    if (v20 <= a2 * -2.0)
    {
      objc_msgSend_bounds(a1, v17, v18);
      if (v21 <= a2 * -2.0)
      {
        v42 = MEMORY[0x277D81150];
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "[TSUBezierPath(Additions) p_bezierPathByOffsettingPath:joinStyle:attemptWithLivarotFirst:livarotOverrideThresholds:]");
        v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 1397, 0, "Cannot offset path that is already smaller than the offset amount!");

        objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v47, v48);
LABEL_2:
        v13 = a1;
LABEL_3:
        v14 = v13;
        goto LABEL_4;
      }
    }
  }

  if (objc_msgSend_isRectangular(a1, v17, v18))
  {
    objc_msgSend_bounds(a1, v22, v23);
    v53 = CGRectInset(v52, -a2, -a2);
    if (a2 > 0.0 && a4 == 1)
    {
      v13 = objc_msgSend_bezierPathWithLegacyRoundedRect_cornerRadius_(MEMORY[0x277D81160], v24, v25, v53.origin.x, v53.origin.y, v53.size.width, v53.size.height, a2);
    }

    else
    {
      v13 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v24, v25, v53.origin.x, v53.origin.y, v53.size.width, v53.size.height);
    }

    goto LABEL_3;
  }

  v26 = objc_msgSend_copy(a1, v22, v23);
  objc_msgSend_setLineWidth_(v26, v27, v28, fabs(a2 + a2));
  objc_msgSend_setLineJoinStyle_(v26, v29, a4);
  v32 = objc_msgSend_p_strokedCopyAttemptingUsingLivarotFirst_livarotOverrideThresholds_(v26, v30, a5, v12);
  if (a2 <= 0.0)
  {
    objc_msgSend_subtractBezierPath_(v26, v31, v32);
  }

  else
  {
    objc_msgSend_uniteWithBezierPath_(v26, v31, v32);
  }
  v14 = ;
  if ((objc_msgSend_isEmpty(v14, v33, v34) & 1) == 0)
  {
    objc_msgSend_bounds(v14, v35, v36);
    objc_msgSend_bounds(v26, v37, v38);
    v50 = fabs(a2) * 0.5;
    if (TSUEqualRectsWithThreshold())
    {
      v41 = objc_msgSend_p_strokedCopyAttemptingUsingLivarotFirst_livarotOverrideThresholds_(v26, v39, a5 ^ 1, v12, *&v50);
      if (a2 <= 0.0)
      {
        objc_msgSend_subtractBezierPath_(v26, v40, v41);
      }

      else
      {
        objc_msgSend_uniteWithBezierPath_(v26, v40, v41);
      }
      v49 = ;

      v14 = v49;
    }
  }

LABEL_4:

  return v14;
}

void sub_276716B84(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

id sub_276716C10(void *a1, uint64_t a2, int a3, void *a4)
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (objc_msgSend_containsElementsOtherThanMoveAndClose(a1, v7, v8))
  {
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_276716F10;
    v44 = sub_276716F20;
    v45 = 0;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_276716F28;
    v39[3] = &unk_27A6CD550;
    v39[4] = a1;
    v39[5] = &v40;
    v11 = MEMORY[0x277C9C8B0](v39);
    v14 = v11;
    if ((a3 & 1) == 0)
    {
      (*(v11 + 16))(v11);
    }

    v15 = v41[5];
    if (!v15 || (objc_msgSend_containsElementsOtherThanMoveAndClose(v15, v12, v13) & 1) == 0)
    {
      v16 = &unk_28859C7A0;
      if (v6)
      {
        v16 = v6;
      }

      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = v16;
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v35, v46, 16);
      if (v21)
      {
        v22 = *v36;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v17);
            }

            v24 = MEMORY[0x277D81160];
            objc_msgSend_tsu_CGFloatValue(*(*(&v35 + 1) + 8 * i), v19, v20, v35);
            v26 = objc_msgSend_p_usingLivarotStrokeBezierPath_withThreshold_(v24, v25, a1);
            v29 = v26;
            if (v26 && objc_msgSend_containsElementsOtherThanMoveAndClose(v26, v27, v28) && (objc_msgSend_isFinite(v29, v30, v31) & 1) != 0)
            {
              v33 = v41[5];
              v41[5] = v29;

              goto LABEL_21;
            }
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v35, v46, 16);
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_21:
    }

    if (a3)
    {
      v14[2](v14);
    }

    v32 = v41[5];

    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v32 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v9, v10);
  }

  return v32;
}