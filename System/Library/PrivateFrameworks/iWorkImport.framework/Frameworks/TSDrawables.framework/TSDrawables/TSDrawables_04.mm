google::protobuf::internal *TSD::EditableBezierPathSourceArchive_Subpath::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v27) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 != 1 || v8 != 10)
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
            sub_27670AF80((a1 + 8));
          }

          v27 = google::protobuf::internal::UnknownFieldParse();
          if (!v27)
          {
LABEL_44:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_25;
        }

        v15 = (v7 - 1);
        while (2)
        {
          v16 = (v15 + 1);
          v27 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_30;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v17 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSD::EditableBezierPathSourceArchive_Node>(*(a1 + 24));
            v20 = *(a1 + 32);
            v21 = *(a1 + 40) + 8 * v20;
            *(a1 + 32) = v20 + 1;
            *(v21 + 8) = v19;
            v16 = v27;
          }

          else
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
          }

          v15 = sub_27680ADFC(a3, v19, v16);
          v27 = v15;
          if (!v15)
          {
            goto LABEL_44;
          }

          if (*a3 <= v15 || *v15 != 10)
          {
            goto LABEL_25;
          }

          continue;
        }
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v13 = (v7 + 1);
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_24:
        v27 = v13;
        *(a1 + 48) = v12 != 0;
        v5 = 1;
        goto LABEL_25;
      }

      v25 = google::protobuf::internal::VarintParseSlow64(v7, v12);
      v27 = v25;
      *(a1 + 48) = v26 != 0;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_25:
      if (sub_27670AF08(a3, &v27))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *TSD::EditableBezierPathSourceArchive_Subpath::_InternalSerialize(TSD::EditableBezierPathSourceArchive_Subpath *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = TSD::EditableBezierPathSourceArchive_Node::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 48);
    *a2 = 16;
    a2[1] = v14;
    a2 += 2;
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::EditableBezierPathSourceArchive_Subpath::ByteSizeLong(TSD::EditableBezierPathSourceArchive_Subpath *this)
{
  v2 = *(this + 8);
  v3 = 2 * (*(this + 4) & 1) + v2;
  v4 = *(this + 5);
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
      v8 = TSD::EditableBezierPathSourceArchive_Node::ByteSizeLong(v7);
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6);
      v6 -= 8;
    }

    while (v6);
  }

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

uint64_t TSD::EditableBezierPathSourceArchive_Subpath::MergeFrom(TSD::EditableBezierPathSourceArchive_Subpath *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::EditableBezierPathSourceArchive_Subpath::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::EditableBezierPathSourceArchive_Subpath::MergeFrom(uint64_t this, const TSD::EditableBezierPathSourceArchive_Subpath *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27676C440(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    *(v3 + 48) = v10;
  }

  return this;
}

uint64_t *TSD::EditableBezierPathSourceArchive_Subpath::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::EditableBezierPathSourceArchive_Subpath::Clear(this);

    return TSD::EditableBezierPathSourceArchive_Subpath::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::EditableBezierPathSourceArchive_Subpath::CopyFrom(uint64_t *this, const TSD::EditableBezierPathSourceArchive_Subpath *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::EditableBezierPathSourceArchive_Subpath::Clear(this);

    return TSD::EditableBezierPathSourceArchive_Subpath::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSD::EditableBezierPathSourceArchive_Subpath::IsInitialized(TSD::EditableBezierPathSourceArchive_Subpath *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSD::EditableBezierPathSourceArchive_Node::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TSD::EditableBezierPathSourceArchive_Subpath::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LOBYTE(v5) = this[3].n128_u8[0];
  this[3].n128_u8[0] = a2[3].n128_u8[0];
  a2[3].n128_u8[0] = v5;
  return result;
}

TSP::Size *TSD::EditableBezierPathSourceArchive::clear_naturalsize(TSD::EditableBezierPathSourceArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::EditableBezierPathSourceArchive *TSD::EditableBezierPathSourceArchive::EditableBezierPathSourceArchive(TSD::EditableBezierPathSourceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576008;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_EditableBezierPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSD::EditableBezierPathSourceArchive *TSD::EditableBezierPathSourceArchive::EditableBezierPathSourceArchive(TSD::EditableBezierPathSourceArchive *this, const TSD::EditableBezierPathSourceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576008;
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
    sub_27676C584(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_27670B0F8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_27672B4C0(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x1081C404FE48876);
  sub_27676C500((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::EditableBezierPathSourceArchive::~EditableBezierPathSourceArchive(TSD::EditableBezierPathSourceArchive *this)
{
  if (this != &TSD::_EditableBezierPathSourceArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Size::~Size(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  sub_27676C500(this + 3);
}

{
  TSD::EditableBezierPathSourceArchive::~EditableBezierPathSourceArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::EditableBezierPathSourceArchive::default_instance(TSD::EditableBezierPathSourceArchive *this)
{
  if (atomic_load_explicit(scc_info_EditableBezierPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_EditableBezierPathSourceArchive_default_instance_;
}

uint64_t *TSD::EditableBezierPathSourceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSD::EditableBezierPathSourceArchive_Subpath::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::Size::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_27670B144(v5);
  }

  return this;
}

google::protobuf::internal *TSD::EditableBezierPathSourceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while (1)
  {
LABEL_2:
    if (sub_27670AF08(a3, &v25))
    {
      return v25;
    }

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
    if (v6 >> 3 != 2)
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
        goto LABEL_12;
      }

      v14 = (v5 - 1);
      while (1)
      {
        v15 = (v14 + 1);
        v25 = (v14 + 1);
        v16 = *(a1 + 40);
        if (!v16)
        {
          goto LABEL_29;
        }

        v21 = *(a1 + 32);
        v17 = *v16;
        if (v21 < *v16)
        {
          *(a1 + 32) = v21 + 1;
          v18 = *&v16[2 * v21 + 2];
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
        v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::EditableBezierPathSourceArchive_Subpath>(*(a1 + 24));
        v19 = *(a1 + 32);
        v20 = *(a1 + 40) + 8 * v19;
        *(a1 + 32) = v19 + 1;
        *(v20 + 8) = v18;
        v15 = v25;
LABEL_33:
        v14 = sub_27680AECC(a3, v18, v15);
        v25 = v14;
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

        v13 = MEMORY[0x277C9BAD0](v12);
        LODWORD(v11) = v13;
        *(a1 + 48) = v13;
        v5 = v25;
      }

      v10 = sub_27680AB8C(a3, v11, v5);
      goto LABEL_25;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_25:
    v25 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v25;
}

unsigned __int8 *TSD::EditableBezierPathSourceArchive::_InternalSerialize(TSD::EditableBezierPathSourceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      a2 = TSD::EditableBezierPathSourceArchive_Subpath::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 6);
    *a2 = 18;
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

    a2 = TSP::Size::_InternalSerialize(v14, v16, a3);
  }

  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::EditableBezierPathSourceArchive::ByteSizeLong(TSD::EditableBezierPathSourceArchive *this)
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
      v7 = TSD::EditableBezierPathSourceArchive_Subpath::ByteSizeLong(v6);
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
    v8 = TSP::Size::ByteSizeLong(*(this + 6));
    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::EditableBezierPathSourceArchive::MergeFrom(TSD::EditableBezierPathSourceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::EditableBezierPathSourceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::EditableBezierPathSourceArchive::MergeFrom(uint64_t this, const TSD::EditableBezierPathSourceArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27676C584(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = MEMORY[0x277C9BAD0](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D809D8];
    }

    return TSP::Size::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSD::EditableBezierPathSourceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::EditableBezierPathSourceArchive::Clear(this);

    return TSD::EditableBezierPathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::EditableBezierPathSourceArchive::CopyFrom(uint64_t *this, const TSD::EditableBezierPathSourceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::EditableBezierPathSourceArchive::Clear(this);

    return TSD::EditableBezierPathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::EditableBezierPathSourceArchive::IsInitialized(TSD::EditableBezierPathSourceArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSD::EditableBezierPathSourceArchive_Subpath::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if (!IsInitialized)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Size::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::EditableBezierPathSourceArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
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

TSD::PathSourceArchive *TSD::PathSourceArchive::PathSourceArchive(TSD::PathSourceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885760B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 44) = 0;
  return this;
}

TSD::PathSourceArchive *TSD::PathSourceArchive::PathSourceArchive(TSD::PathSourceArchive *this, const TSD::PathSourceArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2885760B8;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  v6 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 4) = v6;
  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

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
  if ((v4 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v4 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v4 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  *(this + 44) = *(a2 + 44);
  return this;
}

void TSD::PathSourceArchive::~PathSourceArchive(TSD::PathSourceArchive *this)
{
  sub_27672C200(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::PathSourceArchive::~PathSourceArchive(this);

  JUMPOUT(0x277C9C1D0);
}

TSD::EditableBezierPathSourceArchive *sub_27672C200(TSD::EditableBezierPathSourceArchive *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C9C1D0](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSD::_PathSourceArchive_default_instance_)
  {
    v5 = *(v1 + 5);
    if (v5)
    {
      TSD::PointPathSourceArchive::~PointPathSourceArchive(v5);
      MEMORY[0x277C9C1D0]();
    }

    v6 = *(v1 + 6);
    if (v6)
    {
      TSD::ScalarPathSourceArchive::~ScalarPathSourceArchive(v6);
      MEMORY[0x277C9C1D0]();
    }

    v7 = *(v1 + 7);
    if (v7)
    {
      TSD::BezierPathSourceArchive::~BezierPathSourceArchive(v7);
      MEMORY[0x277C9C1D0]();
    }

    v8 = *(v1 + 8);
    if (v8)
    {
      TSD::CalloutPathSourceArchive::~CalloutPathSourceArchive(v8);
      MEMORY[0x277C9C1D0]();
    }

    v9 = *(v1 + 9);
    if (v9)
    {
      TSD::ConnectionLinePathSourceArchive::~ConnectionLinePathSourceArchive(v9);
      MEMORY[0x277C9C1D0]();
    }

    result = *(v1 + 10);
    if (result)
    {
      TSD::EditableBezierPathSourceArchive::~EditableBezierPathSourceArchive(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::PathSourceArchive::default_instance(TSD::PathSourceArchive *this)
{
  if (atomic_load_explicit(scc_info_PathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_PathSourceArchive_default_instance_;
}

uint64_t *TSD::PathSourceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  if ((this[2] & 1) == 0)
  {
    if ((this[2] & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_19:
    v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_23:
  this = TSD::PointPathSourceArchive::Clear(this[5]);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = TSD::ScalarPathSourceArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    this = TSD::CalloutPathSourceArchive::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = TSD::BezierPathSourceArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  this = TSD::ConnectionLinePathSourceArchive::Clear(*(v1 + 72));
  if (v2 < 0)
  {
LABEL_10:
    this = TSD::EditableBezierPathSourceArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 80) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::PathSourceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v38) & 1) == 0)
  {
    while (1)
    {
      v7 = (v38 + 1);
      v8 = *v38;
      if ((*v38 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v9 - 128));
      v38 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_91;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 <= 7)
        {
          if (v10 == 6)
          {
            if (v8 != 50)
            {
              goto LABEL_76;
            }

            *(a1 + 16) |= 0x20u;
            v25 = *(a1 + 64);
            if (!v25)
            {
              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = google::protobuf::Arena::CreateMaybeMessage<TSD::CalloutPathSourceArchive>(v26);
              *(a1 + 64) = v25;
              v7 = v38;
            }

            v13 = sub_27680B13C(a3, v25, v7);
          }

          else
          {
            if (v10 != 7 || v8 != 58)
            {
              goto LABEL_76;
            }

            *(a1 + 16) |= 0x40u;
            v18 = *(a1 + 72);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::ConnectionLinePathSourceArchive>(v19);
              *(a1 + 72) = v18;
              v7 = v38;
            }

            v13 = sub_27680B20C(a3, v18, v7);
          }
        }

        else
        {
          if (v10 != 8)
          {
            if (v10 == 9)
            {
              if (v8 != 74)
              {
                goto LABEL_76;
              }

              *(a1 + 16) |= 1u;
            }

            else
            {
              if (v10 != 10 || v8 != 82)
              {
                goto LABEL_76;
              }

              *(a1 + 16) |= 2u;
            }

            google::protobuf::internal::ArenaStringPtr::Mutable();
            v13 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_83;
          }

          if (v8 != 66)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 0x80u;
          v29 = *(a1 + 80);
          if (!v29)
          {
            v30 = *(a1 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v29 = google::protobuf::Arena::CreateMaybeMessage<TSD::EditableBezierPathSourceArchive>(v30);
            *(a1 + 80) = v29;
            v7 = v38;
          }

          v13 = sub_27680B2DC(a3, v29, v7);
        }

LABEL_83:
        v38 = v13;
        if (!v13)
        {
          goto LABEL_91;
        }

        goto LABEL_84;
      }

      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 4u;
          v27 = *(a1 + 40);
          if (!v27)
          {
            v28 = *(a1 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = google::protobuf::Arena::CreateMaybeMessage<TSD::PointPathSourceArchive>(v28);
            *(a1 + 40) = v27;
            v7 = v38;
          }

          v13 = sub_27680AF9C(a3, v27, v7);
        }

        else if (v10 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 8u;
          v31 = *(a1 + 48);
          if (!v31)
          {
            v32 = *(a1 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v31 = google::protobuf::Arena::CreateMaybeMessage<TSD::ScalarPathSourceArchive>(v32);
            *(a1 + 48) = v31;
            v7 = v38;
          }

          v13 = sub_27680B06C(a3, v31, v7);
        }

        else
        {
          if (v10 == 5 && v8 == 42)
          {
            *(a1 + 16) |= 0x10u;
            v11 = *(a1 + 56);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v11 = google::protobuf::Arena::CreateMaybeMessage<TSD::BezierPathSourceArchive>(v12);
              *(a1 + 56) = v11;
              v7 = v38;
            }

            v13 = sub_27680AD2C(a3, v11, v7);
            goto LABEL_83;
          }

LABEL_76:
          if (v8)
          {
            v33 = (v8 & 7) == 4;
          }

          else
          {
            v33 = 1;
          }

          if (v33)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        goto LABEL_83;
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_76;
        }

        v5 |= 0x100u;
        v23 = (v7 + 1);
        v22 = *v7;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_48;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_48:
          v38 = v23;
          *(a1 + 88) = v22 != 0;
          goto LABEL_84;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v7, v22);
        v38 = v36;
        *(a1 + 88) = v37 != 0;
        if (!v36)
        {
LABEL_91:
          v38 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_76;
        }

        v5 |= 0x200u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_33:
          v38 = v16;
          *(a1 + 89) = v15 != 0;
          goto LABEL_84;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v38 = v34;
        *(a1 + 89) = v35 != 0;
        if (!v34)
        {
          goto LABEL_91;
        }
      }

LABEL_84:
      if (sub_27670AF08(a3, &v38))
      {
        goto LABEL_2;
      }
    }

    v7 = (v38 + 2);
LABEL_6:
    v38 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

unsigned __int8 *TSD::PathSourceArchive::_InternalSerialize(TSD::PathSourceArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 88);
    *v4 = 8;
    v4[1] = v9;
    v4 += 2;
    if ((v6 & 0x200) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v10 = *(this + 89);
  *v4 = 16;
  v4[1] = v10;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 5);
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

  v4 = TSD::PointPathSourceArchive::_InternalSerialize(v11, v13, a3, v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 6);
  *v4 = 34;
  v18 = *(v17 + 5);
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

  v4 = TSD::ScalarPathSourceArchive::_InternalSerialize(v17, v19, a3, v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_50;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 7);
  *v4 = 42;
  v24 = *(v23 + 5);
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v26 = v24 >> 7;
    if (v24 >> 14)
    {
      v25 = (v4 + 3);
      do
      {
        *(v25 - 1) = v26 | 0x80;
        v27 = v26 >> 7;
        v25 = (v25 + 1);
        v28 = v26 >> 14;
        v26 >>= 7;
      }

      while (v28);
      *(v25 - 1) = v27;
    }

    else
    {
      v4[2] = v26;
      v25 = (v4 + 3);
    }
  }

  else
  {
    v4[1] = v24;
    v25 = (v4 + 2);
  }

  v4 = TSD::BezierPathSourceArchive::_InternalSerialize(v23, v25, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_60;
  }

LABEL_50:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 8);
  *v4 = 50;
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

  v4 = TSD::CalloutPathSourceArchive::_InternalSerialize(v29, v31, a3, v4);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_70;
  }

LABEL_60:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(this + 9);
  *v4 = 58;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    v4[1] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = v4 + 3;
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
      v4[2] = v38;
      v37 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v36;
    v37 = v4 + 2;
  }

  v4 = TSD::ConnectionLinePathSourceArchive::_InternalSerialize(v35, v37, a3, v4);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_80;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v41 = *(this + 10);
  *v4 = 66;
  v42 = *(v41 + 5);
  if (v42 > 0x7F)
  {
    v4[1] = v42 | 0x80;
    v44 = v42 >> 7;
    if (v42 >> 14)
    {
      v43 = v4 + 3;
      do
      {
        *(v43 - 1) = v44 | 0x80;
        v45 = v44 >> 7;
        ++v43;
        v46 = v44 >> 14;
        v44 >>= 7;
      }

      while (v46);
      *(v43 - 1) = v45;
    }

    else
    {
      v4[2] = v44;
      v43 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v42;
    v43 = v4 + 2;
  }

  v4 = TSD::EditableBezierPathSourceArchive::_InternalSerialize(v41, v43, a3, v4);
  if ((v6 & 1) == 0)
  {
LABEL_10:
    if ((v6 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_80:
  v4 = sub_276727B88(a3, 9, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_11:
    v4 = sub_276727B88(a3, 10, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_12:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::PathSourceArchive::ByteSizeLong(TSD::PathSourceArchive *this)
{
  v2 = *(this + 4);
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
LABEL_9:
    v7 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
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
    v13 = TSD::PointPathSourceArchive::ByteSizeLong(*(this + 5));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v14 = TSD::ScalarPathSourceArchive::ByteSizeLong(*(this + 6));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = TSD::BezierPathSourceArchive::ByteSizeLong(*(this + 7));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

LABEL_27:
  v16 = TSD::CalloutPathSourceArchive::ByteSizeLong(*(this + 8));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_28:
  v17 = TSD::ConnectionLinePathSourceArchive::ByteSizeLong(*(this + 9));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_18:
    v10 = TSD::EditableBezierPathSourceArchive::ByteSizeLong(*(this + 10));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_19:
  if ((v2 & 0x300) != 0)
  {
    v11 = v3 + ((v2 >> 8) & 2) + ((v2 >> 7) & 2);
  }

  else
  {
    v11 = v3;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

uint64_t TSD::PathSourceArchive::MergeFrom(TSD::PathSourceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::PathSourceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::PathSourceArchive::MergeFrom(uint64_t this, const TSD::PathSourceArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_63;
  }

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

      goto LABEL_15;
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

    goto LABEL_23;
  }

LABEL_15:
  *(v3 + 16) |= 4u;
  v6 = *(v3 + 40);
  if (!v6)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::PointPathSourceArchive>(v7);
    *(v3 + 40) = v6;
  }

  if (*(a2 + 5))
  {
    v8 = *(a2 + 5);
  }

  else
  {
    v8 = &TSD::_PointPathSourceArchive_default_instance_;
  }

  this = TSD::PointPathSourceArchive::MergeFrom(v6, v8);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_23:
  *(v3 + 16) |= 8u;
  v9 = *(v3 + 48);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::ScalarPathSourceArchive>(v10);
    *(v3 + 48) = v9;
  }

  if (*(a2 + 6))
  {
    v11 = *(a2 + 6);
  }

  else
  {
    v11 = &TSD::_ScalarPathSourceArchive_default_instance_;
  }

  this = TSD::ScalarPathSourceArchive::MergeFrom(v9, v11);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_39:
    *(v3 + 16) |= 0x20u;
    v15 = *(v3 + 64);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::CalloutPathSourceArchive>(v16);
      *(v3 + 64) = v15;
    }

    if (*(a2 + 8))
    {
      v17 = *(a2 + 8);
    }

    else
    {
      v17 = &TSD::_CalloutPathSourceArchive_default_instance_;
    }

    this = TSD::CalloutPathSourceArchive::MergeFrom(v15, v17);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_55;
    }

    goto LABEL_47;
  }

LABEL_31:
  *(v3 + 16) |= 0x10u;
  v12 = *(v3 + 56);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::BezierPathSourceArchive>(v13);
    *(v3 + 56) = v12;
  }

  if (*(a2 + 7))
  {
    v14 = *(a2 + 7);
  }

  else
  {
    v14 = &TSD::_BezierPathSourceArchive_default_instance_;
  }

  this = TSD::BezierPathSourceArchive::MergeFrom(v12, v14);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_39;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_47:
  *(v3 + 16) |= 0x40u;
  v18 = *(v3 + 72);
  if (!v18)
  {
    v19 = *(v3 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::ConnectionLinePathSourceArchive>(v19);
    *(v3 + 72) = v18;
  }

  if (*(a2 + 9))
  {
    v20 = *(a2 + 9);
  }

  else
  {
    v20 = &TSD::_ConnectionLinePathSourceArchive_default_instance_;
  }

  this = TSD::ConnectionLinePathSourceArchive::MergeFrom(v18, v20);
  if ((v5 & 0x80) != 0)
  {
LABEL_55:
    *(v3 + 16) |= 0x80u;
    v21 = *(v3 + 80);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSD::EditableBezierPathSourceArchive>(v22);
      *(v3 + 80) = v21;
    }

    if (*(a2 + 10))
    {
      v23 = *(a2 + 10);
    }

    else
    {
      v23 = &TSD::_EditableBezierPathSourceArchive_default_instance_;
    }

    this = TSD::EditableBezierPathSourceArchive::MergeFrom(v21, v23);
  }

LABEL_63:
  if ((v5 & 0x300) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      *(v3 + 88) = *(a2 + 88);
    }

    if ((v5 & 0x200) != 0)
    {
      *(v3 + 89) = *(a2 + 89);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSD::PathSourceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PathSourceArchive::Clear(this);

    return TSD::PathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::PathSourceArchive::CopyFrom(uint64_t *this, const TSD::PathSourceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PathSourceArchive::Clear(this);

    return TSD::PathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::PathSourceArchive::IsInitialized(TSD::PathSourceArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    result = TSD::PointPathSourceArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    v4 = *(this + 6);
    if (*(v4 + 16))
    {
      result = TSP::Size::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(this + 4);
    }
  }

  if ((v2 & 0x10) != 0)
  {
    result = TSD::BezierPathSourceArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSD::CalloutPathSourceArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x40) == 0)
  {
    if ((v2 & 0x80) == 0)
    {
      return 1;
    }

    goto LABEL_16;
  }

  v5 = *(this + 9);
  if ((*(v5 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::BezierPathSourceArchive::IsInitialized(*(v5 + 24));
  if (result)
  {
    if ((*(this + 4) & 0x80) == 0)
    {
      return 1;
    }

LABEL_16:
    result = TSD::EditableBezierPathSourceArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    return 1;
  }

  return result;
}

__n128 TSD::PathSourceArchive::InternalSwap(TSD::PathSourceArchive *this, TSD::PathSourceArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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
  LOWORD(v11) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v11;
  return result;
}

uint64_t TSD::AngleGradientArchive::AngleGradientArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288576168;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_288576168;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSD::AngleGradientArchive *TSD::AngleGradientArchive::AngleGradientArchive(TSD::AngleGradientArchive *this, const TSD::AngleGradientArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576168;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = *(a2 + 6);
  return this;
}

void TSD::AngleGradientArchive::~AngleGradientArchive(TSD::AngleGradientArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::AngleGradientArchive::default_instance(TSD::AngleGradientArchive *this)
{
  if (atomic_load_explicit(scc_info_AngleGradientArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_AngleGradientArchive_default_instance_;
}

uint64_t *TSD::AngleGradientArchive::Clear(TSD::AngleGradientArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::AngleGradientArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v13 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v13) & 1) == 0)
  {
    while (1)
    {
      v6 = (v13 + 1);
      v7 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v13, (v8 - 128));
      v13 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_22;
      }

      v6 = TagFallback;
      v7 = v11;
LABEL_6:
      if (v7 == 21)
      {
        *(a1 + 24) = *v6;
        v13 = (v6 + 4);
        v5 = 1;
      }

      else
      {
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
          goto LABEL_21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        if (!v13)
        {
LABEL_22:
          v13 = 0;
          goto LABEL_21;
        }
      }

      if (sub_27670AF08(a3, &v13))
      {
        goto LABEL_21;
      }
    }

    v6 = (v13 + 2);
LABEL_5:
    v13 = v6;
    goto LABEL_6;
  }

LABEL_21:
  *(a1 + 16) |= v5;
  return v13;
}

unsigned __int8 *TSD::AngleGradientArchive::_InternalSerialize(TSD::AngleGradientArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 21;
    *(a2 + 1) = v6;
    a2 += 5;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::AngleGradientArchive::ByteSizeLong(TSD::AngleGradientArchive *this)
{
  if (*(this + 16))
  {
    v1 = 5;
  }

  else
  {
    v1 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

void TSD::AngleGradientArchive::MergeFrom(TSD::AngleGradientArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::AngleGradientArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

float TSD::AngleGradientArchive::MergeFrom(TSD::AngleGradientArchive *this, const TSD::AngleGradientArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 6);
    *(this + 4) |= 1u;
    *(this + 6) = result;
  }

  return result;
}

void TSD::AngleGradientArchive::CopyFrom(Message *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    var0 = this->var1.var0;
    p_var1 = &this->var1;
    LODWORD(p_var1[2].var0) = 0;
    LODWORD(p_var1[1].var0) = 0;
    if (var0)
    {
      sub_27670B144(p_var1);
    }

    TSD::AngleGradientArchive::MergeFrom(this, lpsrc);
  }
}

float TSD::AngleGradientArchive::CopyFrom(TSD::AngleGradientArchive *this, const TSD::AngleGradientArchive *a2)
{
  if (a2 != this)
  {
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::AngleGradientArchive::MergeFrom(this, a2);
  }

  return result;
}

float TSD::AngleGradientArchive::InternalSwap(TSD::AngleGradientArchive *this, TSD::AngleGradientArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

TSP::Point *TSD::TransformGradientArchive::clear_start(TSD::TransformGradientArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Point *TSD::TransformGradientArchive::clear_end(TSD::TransformGradientArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Size *TSD::TransformGradientArchive::clear_basenaturalsize(TSD::TransformGradientArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::TransformGradientArchive *TSD::TransformGradientArchive::TransformGradientArchive(TSD::TransformGradientArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576218;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TransformGradientArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288576218;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TransformGradientArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::TransformGradientArchive *TSD::TransformGradientArchive::TransformGradientArchive(TSD::TransformGradientArchive *this, const TSD::TransformGradientArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576218;
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
  return this;
}

void TSD::TransformGradientArchive::~TransformGradientArchive(TSD::TransformGradientArchive *this)
{
  if (this != &TSD::_TransformGradientArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Point::~Point(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Point::~Point(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Size::~Size(v4);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::TransformGradientArchive::~TransformGradientArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::TransformGradientArchive::default_instance(TSD::TransformGradientArchive *this)
{
  if (atomic_load_explicit(scc_info_TransformGradientArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_TransformGradientArchive_default_instance_;
}

uint64_t *TSD::TransformGradientArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSP::Point::Clear(this[3]);
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

    this = TSP::Point::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Size::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::TransformGradientArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_27670AF08(a3, &v23) & 1) == 0)
  {
    v5 = (v23 + 1);
    v6 = *v23;
    if ((*v23 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v23 + 2);
LABEL_6:
      v23 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v7 - 128));
    v23 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v21;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 != 3)
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

          v14 = MEMORY[0x277C9BB00](v13);
          LODWORD(v12) = v14;
          *(a1 + 32) = v14;
LABEL_35:
          v5 = v23;
        }
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
            return v23;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v11 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_37;
        }

        *(a1 + 16) |= 1u;
        v12 = *(a1 + 24);
        if (!v12)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x277C9BB00](v18);
          LODWORD(v12) = v19;
          *(a1 + 24) = v19;
          goto LABEL_35;
        }
      }

      v11 = sub_27680AABC(a3, v12, v5);
      goto LABEL_37;
    }

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

      v17 = MEMORY[0x277C9BAD0](v16);
      LODWORD(v15) = v17;
      *(a1 + 40) = v17;
      v5 = v23;
    }

    v11 = sub_27680AB8C(a3, v15, v5);
LABEL_37:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSD::TransformGradientArchive::_InternalSerialize(TSD::TransformGradientArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSP::Point::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
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

  a2 = TSP::Point::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) != 0)
  {
LABEL_25:
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

    a2 = TSP::Size::_InternalSerialize(v19, v21, a3);
  }

LABEL_35:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::TransformGradientArchive::ByteSizeLong(TSD::TransformGradientArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_10;
  }

  if (v2)
  {
    v4 = TSP::Point::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Point::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = TSP::Size::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
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

uint64_t TSD::TransformGradientArchive::MergeFrom(TSD::TransformGradientArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::TransformGradientArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::TransformGradientArchive::MergeFrom(uint64_t this, const TSD::TransformGradientArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    v6 = MEMORY[0x277D809F0];
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

        v7 = MEMORY[0x277C9BB00](v8);
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

      this = TSP::Point::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

        goto LABEL_24;
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

      v10 = MEMORY[0x277C9BB00](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = v6;
    }

    this = TSP::Point::MergeFrom(v10, v12);
    if ((v5 & 4) != 0)
    {
LABEL_24:
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C9BAD0](v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = MEMORY[0x277D809D8];
      }

      return TSP::Size::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSD::TransformGradientArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::TransformGradientArchive::Clear(this);

    return TSD::TransformGradientArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::TransformGradientArchive::CopyFrom(uint64_t *this, const TSD::TransformGradientArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::TransformGradientArchive::Clear(this);

    return TSD::TransformGradientArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::TransformGradientArchive::IsInitialized(TSD::TransformGradientArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Point::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSP::Point::IsInitialized(*(this + 4));
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

  result = TSP::Size::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::TransformGradientArchive::InternalSwap(TSD::TransformGradientArchive *this, TSD::TransformGradientArchive *a2)
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
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

TSP::Color *TSD::GradientArchive_GradientStop::clear_color(TSD::GradientArchive_GradientStop *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::GradientArchive_GradientStop *TSD::GradientArchive_GradientStop::GradientArchive_GradientStop(TSD::GradientArchive_GradientStop *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885762C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GradientArchive_GradientStop_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2885762C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GradientArchive_GradientStop_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSD::GradientArchive_GradientStop *TSD::GradientArchive_GradientStop::GradientArchive_GradientStop(TSD::GradientArchive_GradientStop *this, const TSD::GradientArchive_GradientStop *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885762C8;
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
  *(this + 4) = *(a2 + 4);
  return this;
}

void TSD::GradientArchive_GradientStop::~GradientArchive_GradientStop(TSD::GradientArchive_GradientStop *this)
{
  if (this != &TSD::_GradientArchive_GradientStop_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Color::~Color(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::GradientArchive_GradientStop::~GradientArchive_GradientStop(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::GradientArchive_GradientStop::default_instance(TSD::GradientArchive_GradientStop *this)
{
  if (atomic_load_explicit(scc_info_GradientArchive_GradientStop_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GradientArchive_GradientStop_default_instance_;
}

uint64_t *TSD::GradientArchive_GradientStop::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSP::Color::Clear(this[3]);
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
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

google::protobuf::internal *TSD::GradientArchive_GradientStop::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    while (1)
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
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v9 - 128));
      v22 = TagFallback;
      if (!TagFallback)
      {
LABEL_36:
        v22 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 29)
        {
          v16 = *v7;
          v14 = (v7 + 4);
          v5 |= 4u;
          *(a1 + 36) = v16;
          goto LABEL_24;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 21)
        {
          v15 = *v7;
          v14 = (v7 + 4);
          v5 |= 2u;
          *(a1 + 32) = v15;
LABEL_24:
          v22 = v14;
          goto LABEL_31;
        }
      }

      else if (v10 == 1 && v8 == 10)
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

          v19 = MEMORY[0x277C9BAF0](v18);
          LODWORD(v17) = v19;
          *(a1 + 24) = v19;
          v7 = v22;
        }

        v13 = sub_27680B3AC(a3, v17, v7);
        goto LABEL_30;
      }

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
        sub_27670AF80((a1 + 8));
      }

      v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_30:
      v22 = v13;
      if (!v13)
      {
        goto LABEL_36;
      }

LABEL_31:
      if (sub_27670AF08(a3, &v22))
      {
        goto LABEL_2;
      }
    }

    v7 = (v22 + 2);
LABEL_6:
    v22 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v22;
}

unsigned __int8 *TSD::GradientArchive_GradientStop::_InternalSerialize(TSD::GradientArchive_GradientStop *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSP::Color::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
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

  v13 = *(this + 8);
  *a2 = 21;
  *(a2 + 1) = v13;
  a2 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 9);
    *a2 = 29;
    *(a2 + 1) = v14;
    a2 += 5;
  }

LABEL_21:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::GradientArchive_GradientStop::ByteSizeLong(TSD::GradientArchive_GradientStop *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = TSP::Color::ByteSizeLong(*(this + 3));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 4) != 0)
    {
      v4 = v3 + 5;
    }

    else
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
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

uint64_t TSD::GradientArchive_GradientStop::MergeFrom(TSD::GradientArchive_GradientStop *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::GradientArchive_GradientStop::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::GradientArchive_GradientStop::MergeFrom(uint64_t this, const TSD::GradientArchive_GradientStop *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C9BAF0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E8];
      }

      this = TSP::Color::MergeFrom(v6, v8);
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
        *(v3 + 36) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSD::GradientArchive_GradientStop::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GradientArchive_GradientStop::Clear(this);

    return TSD::GradientArchive_GradientStop::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::GradientArchive_GradientStop::CopyFrom(uint64_t *this, const TSD::GradientArchive_GradientStop *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GradientArchive_GradientStop::Clear(this);

    return TSD::GradientArchive_GradientStop::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::GradientArchive_GradientStop::IsInitialized(TSD::GradientArchive_GradientStop *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::GradientArchive_GradientStop::InternalSwap(TSD::GradientArchive_GradientStop *this, TSD::GradientArchive_GradientStop *a2)
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

TSD::GradientArchive *TSD::GradientArchive::GradientArchive(TSD::GradientArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576378;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_GradientArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 72) = 0;
  *(this + 8) = 0;
  return this;
}

TSD::GradientArchive *TSD::GradientArchive::GradientArchive(TSD::GradientArchive *this, const TSD::GradientArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576378;
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
    sub_27676C6C8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_27670B0F8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v11 = *(a2 + 4);
  if (v11)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  v12 = *(a2 + 8);
  *(this + 72) = *(a2 + 72);
  *(this + 8) = v12;
  return this;
}

void sub_27672F5C8(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x10A1C40CA074DDCLL);
  sub_27676C644((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::GradientArchive::~GradientArchive(TSD::GradientArchive *this)
{
  if (this != &TSD::_GradientArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      sub_2766FFE58((v2 + 8));
      MEMORY[0x277C9C1D0](v2, 0x1081C40E1DA5700);
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSD::TransformGradientArchive::~TransformGradientArchive(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  sub_27676C644(this + 3);
}

{
  TSD::GradientArchive::~GradientArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::GradientArchive::default_instance(TSD::GradientArchive *this)
{
  if (atomic_load_explicit(scc_info_GradientArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GradientArchive_default_instance_;
}

uint64_t *TSD::GradientArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSD::GradientArchive_GradientStop::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = v1[6];
      v7 = *(v6 + 8);
      this = (v6 + 8);
      *(this + 4) = 0;
      *(this + 2) = 0;
      if (v7)
      {
        this = sub_27670B144(this);
      }
    }

    if ((v5 & 2) != 0)
    {
      this = TSD::TransformGradientArchive::Clear(v1[7]);
    }
  }

  if ((v5 & 0x1C) != 0)
  {
    *(v1 + 72) = 0;
    v1[8] = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 1;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_27670B144(v8);
  }

  return this;
}

google::protobuf::internal *TSD::GradientArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v36) & 1) == 0)
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
        goto LABEL_74;
      }

      v7 = TagFallback;
      v8 = v33;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 == 5)
          {
            if (v8 == 42)
            {
              *(a1 + 16) |= 1u;
              v29 = *(a1 + 48);
              if (!v29)
              {
                v30 = *(a1 + 8);
                if (v30)
                {
                  v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
                }

                v29 = google::protobuf::Arena::CreateMaybeMessage<TSD::AngleGradientArchive>(v30);
                *(a1 + 48) = v29;
                v7 = v36;
              }

              v14 = sub_27680B54C(a3, v29, v7);
LABEL_63:
              v36 = v14;
              if (!v14)
              {
                goto LABEL_74;
              }

              goto LABEL_64;
            }
          }

          else if (v10 == 6 && v8 == 50)
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

              v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::TransformGradientArchive>(v13);
              *(a1 + 56) = v12;
              v7 = v36;
            }

            v14 = sub_27680B61C(a3, v12, v7);
            goto LABEL_63;
          }

LABEL_56:
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
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v14 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_63;
        }

        if (v8 != 32)
        {
          goto LABEL_56;
        }

        v5 |= 0x10u;
        v19 = (v7 + 1);
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_36:
          v36 = v19;
          *(a1 + 72) = v18 != 0;
          goto LABEL_64;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v36 = v34;
        *(a1 + 72) = v35 != 0;
        if (!v34)
        {
LABEL_74:
          v36 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_56;
          }

          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) != 0)
          {
            v17 = *v16;
            v15 = (v17 << 7) + v15 - 128;
            if ((v17 & 0x80000000) == 0)
            {
              v16 = (v7 + 2);
              goto LABEL_29;
            }

            v36 = google::protobuf::internal::VarintParseSlow64(v7, v15);
            if (!v36)
            {
              goto LABEL_74;
            }
          }

          else
          {
LABEL_29:
            v36 = v16;
          }

          if (v15 > 1)
          {
            sub_27680D30C();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 64) = v15;
          }

          goto LABEL_64;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_56;
          }

          v21 = (v7 - 1);
          while (2)
          {
            v22 = (v21 + 1);
            v36 = (v21 + 1);
            v23 = *(a1 + 40);
            if (!v23)
            {
LABEL_40:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v23 = *(a1 + 40);
              v24 = *v23;
              goto LABEL_41;
            }

            v28 = *(a1 + 32);
            v24 = *v23;
            if (v28 >= *v23)
            {
              if (v24 == *(a1 + 36))
              {
                goto LABEL_40;
              }

LABEL_41:
              *v23 = v24 + 1;
              v25 = google::protobuf::Arena::CreateMaybeMessage<TSD::GradientArchive_GradientStop>(*(a1 + 24));
              v26 = *(a1 + 32);
              v27 = *(a1 + 40) + 8 * v26;
              *(a1 + 32) = v26 + 1;
              *(v27 + 8) = v25;
              v22 = v36;
            }

            else
            {
              *(a1 + 32) = v28 + 1;
              v25 = *&v23[2 * v28 + 2];
            }

            v21 = sub_27680B47C(a3, v25, v22);
            v36 = v21;
            if (!v21)
            {
              goto LABEL_74;
            }

            if (*a3 <= v21 || *v21 != 18)
            {
              goto LABEL_64;
            }

            continue;
          }
        }

        if (v10 != 3 || v8 != 29)
        {
          goto LABEL_56;
        }

        v5 |= 8u;
        *(a1 + 68) = *v7;
        v36 = (v7 + 4);
      }

LABEL_64:
      if (sub_27670AF08(a3, &v36))
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

unsigned __int8 *TSD::GradientArchive::_InternalSerialize(TSD::GradientArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 16);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
    }
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

      a2 = TSD::GradientArchive_GradientStop::_InternalSerialize(v13, v15, a3, a4);
    }
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(this + 17);
    *a2 = 29;
    *(a2 + 1) = v19;
    a2 += 5;
    if ((v6 & 0x10) == 0)
    {
LABEL_25:
      if ((v6 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_34;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_25;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 72);
  *a2 = 32;
  a2[1] = v20;
  a2 += 2;
  if ((v6 & 1) == 0)
  {
LABEL_26:
    if ((v6 & 2) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_44;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 6);
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

  a2 = TSD::AngleGradientArchive::_InternalSerialize(v21, v23, a3, a4);
  if ((v6 & 2) != 0)
  {
LABEL_44:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v27 = *(this + 7);
    *a2 = 50;
    v28 = *(v27 + 5);
    if (v28 > 0x7F)
    {
      a2[1] = v28 | 0x80;
      v30 = v28 >> 7;
      if (v28 >> 14)
      {
        v29 = a2 + 3;
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
        a2[2] = v30;
        v29 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v28;
      v29 = a2 + 2;
    }

    a2 = TSD::TransformGradientArchive::_InternalSerialize(v27, v29, a3, a4);
  }

LABEL_54:
  v33 = *(this + 1);
  if ((v33 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v33 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::GradientArchive::ByteSizeLong(TSD::GradientArchive *this)
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
      v7 = TSD::GradientArchive_GradientStop::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 4);
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_23;
  }

  if (v8)
  {
    v9 = TSD::AngleGradientArchive::ByteSizeLong(*(this + 6));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_20;
      }

LABEL_16:
      v11 = *(this + 16);
      if (v11 < 0)
      {
        v12 = 11;
      }

      else
      {
        v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v12;
      goto LABEL_20;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v10 = TSD::TransformGradientArchive::ByteSizeLong(*(this + 7));
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v13 = v2 + 5;
  if ((v8 & 8) == 0)
  {
    v13 = v2;
  }

  v2 = v13 + ((v8 >> 3) & 2);
LABEL_23:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

void TSD::GradientArchive::MergeFrom(TSD::GradientArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::GradientArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::GradientArchive::MergeFrom(TSD::GradientArchive *this, const TSD::GradientArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27676C6C8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 0x1F) != 0)
  {
    if (v10)
    {
      *(this + 4) |= 1u;
      v11 = *(this + 6);
      if (!v11)
      {
        v12 = *(this + 1);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSD::AngleGradientArchive>(v12);
        *(this + 6) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TSD::_AngleGradientArchive_default_instance_;
      }

      TSD::AngleGradientArchive::MergeFrom(v11, v13);
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_31;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(this + 4) |= 2u;
    v14 = *(this + 7);
    if (!v14)
    {
      v15 = *(this + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::TransformGradientArchive>(v15);
      *(this + 7) = v14;
    }

    if (*(a2 + 7))
    {
      v16 = *(a2 + 7);
    }

    else
    {
      v16 = &TSD::_TransformGradientArchive_default_instance_;
    }

    TSD::TransformGradientArchive::MergeFrom(v14, v16);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(this + 16) = *(a2 + 16);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 0x10) == 0)
      {
LABEL_13:
        *(this + 4) |= v10;
        return;
      }

LABEL_12:
      *(this + 72) = *(a2 + 72);
      goto LABEL_13;
    }

LABEL_32:
    *(this + 17) = *(a2 + 17);
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }
}

void TSD::GradientArchive::CopyFrom(TSD::GradientArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::GradientArchive::Clear(this);

    TSD::GradientArchive::MergeFrom(this, a2);
  }
}

void TSD::GradientArchive::CopyFrom(TSD::GradientArchive *this, const TSD::GradientArchive *a2)
{
  if (a2 != this)
  {
    TSD::GradientArchive::Clear(this);

    TSD::GradientArchive::MergeFrom(this, a2);
  }
}

uint64_t TSD::GradientArchive::IsInitialized(TSD::GradientArchive *this)
{
  result = sub_276730394(this + 24);
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSD::TransformGradientArchive::IsInitialized(*(this + 7));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_276730394(uint64_t a1)
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
      result = TSP::Color::IsInitialized(*(v3 + 24));
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

__n128 TSD::GradientArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v7 = this[3].n128_u64[0];
  v8 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = v8;
  v10 = this[4].n128_u64[0];
  this[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v10;
  LOBYTE(v10) = this[4].n128_u8[8];
  this[4].n128_u8[8] = a2[4].n128_u8[8];
  a2[4].n128_u8[8] = v10;
  return result;
}

TSP::DataReference *TSD::ImageFillArchive::clear_imagedata(TSD::ImageFillArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Color *TSD::ImageFillArchive::clear_tint(TSD::ImageFillArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Size *TSD::ImageFillArchive::clear_fillsize(TSD::ImageFillArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::DataReference *TSD::ImageFillArchive::clear_originalimagedata(TSD::ImageFillArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::Color *TSD::ImageFillArchive::clear_referencecolor(TSD::ImageFillArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Reference *TSD::ImageFillArchive::clear_database_imagedata(TSD::ImageFillArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSD::ImageFillArchive::clear_database_originalimagedata(TSD::ImageFillArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSD::ImageFillArchive *TSD::ImageFillArchive::ImageFillArchive(TSD::ImageFillArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576428;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageFillArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 69) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288576428;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageFillArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 69) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::ImageFillArchive *TSD::ImageFillArchive::ImageFillArchive(TSD::ImageFillArchive *this, const TSD::ImageFillArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576428;
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
  *(this + 84) = *(a2 + 84);
  *(this + 20) = v7;
  return this;
}

void TSD::ImageFillArchive::~ImageFillArchive(TSD::ImageFillArchive *this)
{
  sub_2767309D4(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ImageFillArchive::~ImageFillArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_2767309D4(uint64_t *result)
{
  if (result != &TSD::_ImageFillArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Color::~Color(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Size::~Size(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C9C1D0]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSP::DataReference::~DataReference(v6);
      MEMORY[0x277C9C1D0]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSP::DataReference::~DataReference(v7);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[9];
    if (result)
    {
      TSP::Color::~Color(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::ImageFillArchive::default_instance(TSD::ImageFillArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageFillArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageFillArchive_default_instance_;
}

uint64_t *TSD::ImageFillArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x7F) == 0)
  {
    goto LABEL_10;
  }

  if (v2)
  {
    this = TSP::Reference::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::Color::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = TSP::Size::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    this = TSP::DataReference::Clear(*(v1 + 56));
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = TSP::Reference::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_19:
  this = TSP::DataReference::Clear(*(v1 + 64));
  if ((v2 & 0x40) != 0)
  {
LABEL_9:
    this = TSP::Color::Clear(*(v1 + 72));
  }

LABEL_10:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 72) = 0;
  *(v3 + 76) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ImageFillArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v42 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v42) & 1) == 0)
  {
    while (1)
    {
      v7 = (v42 + 1);
      v8 = *v42;
      if ((*v42 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v42, (v9 - 128));
      v42 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_94;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 != 26)
            {
              goto LABEL_78;
            }

            *(a1 + 16) |= 2u;
            v11 = *(a1 + 32);
            if (!v11)
            {
              v30 = *(a1 + 8);
              if (v30)
              {
                v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
              }

              v31 = MEMORY[0x277C9BAF0](v30);
              LODWORD(v11) = v31;
              *(a1 + 32) = v31;
LABEL_57:
              v7 = v42;
            }

LABEL_58:
            v21 = sub_27680B3AC(a3, v11, v7);
          }

          else
          {
            if (v10 != 4 || v8 != 34)
            {
              goto LABEL_78;
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

              v20 = MEMORY[0x277C9BAD0](v19);
              LODWORD(v18) = v20;
              *(a1 + 40) = v20;
              v7 = v42;
            }

            v21 = sub_27680AB8C(a3, v18, v7);
          }

          goto LABEL_85;
        }

        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 16)
          {
            v16 = (v7 + 1);
            v15 = *v7;
            if ((v15 & 0x8000000000000000) == 0)
            {
              goto LABEL_27;
            }

            v17 = *v16;
            v15 = (v17 << 7) + v15 - 128;
            if (v17 < 0)
            {
              v42 = google::protobuf::internal::VarintParseSlow64(v7, v15);
              if (!v42)
              {
                goto LABEL_94;
              }
            }

            else
            {
              v16 = (v7 + 2);
LABEL_27:
              v42 = v16;
            }

            if (v15 > 4)
            {
              sub_27680D340();
            }

            else
            {
              *(a1 + 16) |= 0x80u;
              *(a1 + 80) = v15;
            }

            goto LABEL_86;
          }

          goto LABEL_78;
        }

        if (v8 != 10)
        {
          goto LABEL_78;
        }

        *(a1 + 16) |= 1u;
        v27 = *(a1 + 24);
        if (!v27)
        {
          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v29 = MEMORY[0x277C9BB20](v28);
          LODWORD(v27) = v29;
          *(a1 + 24) = v29;
LABEL_71:
          v7 = v42;
        }

LABEL_72:
        v21 = sub_27680B6EC(a3, v27, v7);
        goto LABEL_85;
      }

      if (v8 >> 3 <= 6)
      {
        if (v10 != 5)
        {
          if (v10 != 6 || v8 != 50)
          {
            goto LABEL_78;
          }

          *(a1 + 16) |= 0x10u;
          v22 = *(a1 + 56);
          if (!v22)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277C9BA90](v23);
            LODWORD(v22) = v24;
            *(a1 + 56) = v24;
LABEL_64:
            v7 = v42;
          }

LABEL_65:
          v21 = sub_27680B7BC(a3, v22, v7);
          goto LABEL_85;
        }

        if (v8 != 42)
        {
          goto LABEL_78;
        }

        *(a1 + 16) |= 8u;
        v27 = *(a1 + 48);
        if (!v27)
        {
          v34 = *(a1 + 8);
          if (v34)
          {
            v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
          }

          v35 = MEMORY[0x277C9BB20](v34);
          LODWORD(v27) = v35;
          *(a1 + 48) = v35;
          goto LABEL_71;
        }

        goto LABEL_72;
      }

      if (v10 == 7)
      {
        if (v8 != 58)
        {
          goto LABEL_78;
        }

        *(a1 + 16) |= 0x20u;
        v22 = *(a1 + 64);
        if (!v22)
        {
          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x277C9BA90](v32);
          LODWORD(v22) = v33;
          *(a1 + 64) = v33;
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      if (v10 != 8)
      {
        if (v10 == 9 && v8 == 74)
        {
          *(a1 + 16) |= 0x40u;
          v11 = *(a1 + 72);
          if (!v11)
          {
            v12 = *(a1 + 8);
            if (v12)
            {
              v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = MEMORY[0x277C9BAF0](v12);
            LODWORD(v11) = v13;
            *(a1 + 72) = v13;
            goto LABEL_57;
          }

          goto LABEL_58;
        }

LABEL_78:
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
          sub_27670AF80((a1 + 8));
        }

        v21 = google::protobuf::internal::UnknownFieldParse();
LABEL_85:
        v42 = v21;
        if (!v21)
        {
          goto LABEL_94;
        }

        goto LABEL_86;
      }

      if (v8 != 64)
      {
        goto LABEL_78;
      }

      v5 |= 0x100u;
      v37 = (v7 + 1);
      v36 = *v7;
      if ((v36 & 0x8000000000000000) == 0)
      {
        goto LABEL_77;
      }

      v38 = *v37;
      v36 = (v38 << 7) + v36 - 128;
      if ((v38 & 0x80000000) == 0)
      {
        v37 = (v7 + 2);
LABEL_77:
        v42 = v37;
        *(a1 + 84) = v36 != 0;
        goto LABEL_86;
      }

      v40 = google::protobuf::internal::VarintParseSlow64(v7, v36);
      v42 = v40;
      *(a1 + 84) = v41 != 0;
      if (!v40)
      {
LABEL_94:
        v42 = 0;
        goto LABEL_2;
      }

LABEL_86:
      if (sub_27670AF08(a3, &v42))
      {
        goto LABEL_2;
      }
    }

    v7 = (v42 + 2);
LABEL_6:
    v42 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v42;
}

unsigned __int8 *TSD::ImageFillArchive::_InternalSerialize(TSD::ImageFillArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 20);
    *a2 = 16;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++a2;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(a2 - 1) = v15;
        if ((v6 & 2) != 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_32;
      }
    }

LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_42;
  }

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

  a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 4);
  *a2 = 26;
  v18 = *(v17 + 5);
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

  a2 = TSP::Color::_InternalSerialize(v17, v19, a3);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_52;
  }

LABEL_42:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v23 = *(this + 5);
  *a2 = 34;
  v24 = *(v23 + 5);
  if (v24 > 0x7F)
  {
    a2[1] = v24 | 0x80;
    v26 = v24 >> 7;
    if (v24 >> 14)
    {
      v25 = a2 + 3;
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
      a2[2] = v26;
      v25 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v24;
    v25 = a2 + 2;
  }

  a2 = TSP::Size::_InternalSerialize(v23, v25, a3);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_52:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v29 = *(this + 6);
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

  a2 = TSP::Reference::_InternalSerialize(v29, v31, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_62:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v35 = *(this + 7);
  *a2 = 50;
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

  a2 = TSP::DataReference::_InternalSerialize(v35, v37, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_82;
  }

LABEL_72:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v41 = *(this + 8);
  *a2 = 58;
  v42 = *(v41 + 5);
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v44 = v42 >> 7;
    if (v42 >> 14)
    {
      v43 = a2 + 3;
      do
      {
        *(v43 - 1) = v44 | 0x80;
        v45 = v44 >> 7;
        ++v43;
        v46 = v44 >> 14;
        v44 >>= 7;
      }

      while (v46);
      *(v43 - 1) = v45;
    }

    else
    {
      a2[2] = v44;
      v43 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v42;
    v43 = a2 + 2;
  }

  a2 = TSP::DataReference::_InternalSerialize(v41, v43, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_85;
  }

LABEL_82:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v47 = *(this + 84);
  *a2 = 64;
  a2[1] = v47;
  a2 += 2;
  if ((v6 & 0x40) != 0)
  {
LABEL_85:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v48 = *(this + 9);
    *a2 = 74;
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

    a2 = TSP::Color::_InternalSerialize(v48, v50, a3);
  }

LABEL_95:
  v54 = *(this + 1);
  if ((v54 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v54 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ImageFillArchive::ByteSizeLong(TSD::ImageFillArchive *this)
{
  v2 = *(this + 4);
  if (!*(this + 4))
  {
    v3 = 0;
    goto LABEL_24;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Color::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = TSP::Size::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

  v7 = TSP::Reference::ByteSizeLong(*(this + 6));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = TSP::DataReference::ByteSizeLong(*(this + 7));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v10 = TSP::Color::ByteSizeLong(*(this + 9));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    v11 = *(this + 20);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v12;
    goto LABEL_24;
  }

LABEL_18:
  v9 = TSP::DataReference::ByteSizeLong(*(this + 8));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_24:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3 + ((v2 >> 7) & 2);
    return v3 + ((v2 >> 7) & 2);
  }
}

uint64_t TSD::ImageFillArchive::MergeFrom(TSD::ImageFillArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageFillArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageFillArchive::MergeFrom(uint64_t this, const TSD::ImageFillArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = MEMORY[0x277D80A18];
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

        v7 = MEMORY[0x277C9BB20](v8);
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

      this = TSP::Reference::MergeFrom(v7, v9);
    }

    v10 = MEMORY[0x277D809E8];
    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v11 = *(v3 + 32);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C9BAF0](v12);
        *(v3 + 32) = v11;
      }

      if (*(a2 + 4))
      {
        v13 = *(a2 + 4);
      }

      else
      {
        v13 = v10;
      }

      this = TSP::Color::MergeFrom(v11, v13);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_33;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    *(v3 + 16) |= 4u;
    v14 = *(v3 + 40);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x277C9BAD0](v15);
      *(v3 + 40) = v14;
    }

    if (*(a2 + 5))
    {
      v16 = *(a2 + 5);
    }

    else
    {
      v16 = MEMORY[0x277D809D8];
    }

    this = TSP::Size::MergeFrom(v14, v16);
    if ((v5 & 8) == 0)
    {
LABEL_41:
      v20 = MEMORY[0x277D80A30];
      if ((v5 & 0x10) != 0)
      {
        *(v3 + 16) |= 0x10u;
        v22 = *(v3 + 56);
        if (!v22)
        {
          v23 = *(v3 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C9BA90](v23);
          *(v3 + 56) = v22;
        }

        if (*(a2 + 7))
        {
          v24 = *(a2 + 7);
        }

        else
        {
          v24 = v20;
        }

        this = TSP::DataReference::MergeFrom(v22, v24);
        if ((v5 & 0x20) == 0)
        {
LABEL_43:
          if ((v5 & 0x40) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_66;
        }
      }

      else if ((v5 & 0x20) == 0)
      {
        goto LABEL_43;
      }

      *(v3 + 16) |= 0x20u;
      v25 = *(v3 + 64);
      if (!v25)
      {
        v26 = *(v3 + 8);
        if (v26)
        {
          v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
        }

        v25 = MEMORY[0x277C9BA90](v26);
        *(v3 + 64) = v25;
      }

      if (*(a2 + 8))
      {
        v27 = *(a2 + 8);
      }

      else
      {
        v27 = v20;
      }

      this = TSP::DataReference::MergeFrom(v25, v27);
      if ((v5 & 0x40) == 0)
      {
LABEL_44:
        if ((v5 & 0x80) == 0)
        {
LABEL_46:
          *(v3 + 16) |= v5;
          goto LABEL_47;
        }

LABEL_45:
        *(v3 + 80) = *(a2 + 20);
        goto LABEL_46;
      }

LABEL_66:
      *(v3 + 16) |= 0x40u;
      v28 = *(v3 + 72);
      if (!v28)
      {
        v29 = *(v3 + 8);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = MEMORY[0x277C9BAF0](v29);
        *(v3 + 72) = v28;
      }

      if (*(a2 + 9))
      {
        v30 = *(a2 + 9);
      }

      else
      {
        v30 = v10;
      }

      this = TSP::Color::MergeFrom(v28, v30);
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

LABEL_33:
    *(v3 + 16) |= 8u;
    v17 = *(v3 + 48);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C9BB20](v18);
      *(v3 + 48) = v17;
    }

    if (*(a2 + 6))
    {
      v19 = *(a2 + 6);
    }

    else
    {
      v19 = v6;
    }

    this = TSP::Reference::MergeFrom(v17, v19);
    goto LABEL_41;
  }

LABEL_47:
  if ((v5 & 0x100) != 0)
  {
    v21 = *(a2 + 84);
    *(v3 + 16) |= 0x100u;
    *(v3 + 84) = v21;
  }

  return this;
}

uint64_t *TSD::ImageFillArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageFillArchive::Clear(this);

    return TSD::ImageFillArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ImageFillArchive::CopyFrom(uint64_t *this, const TSD::ImageFillArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageFillArchive::Clear(this);

    return TSD::ImageFillArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageFillArchive::IsInitialized(TSD::ImageFillArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::Size::IsInitialized(*(this + 5));
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

  if ((v2 & 0x10) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x20) != 0)
  {
    result = TSP::DataReference::IsInitialized(*(this + 8));
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

  result = TSP::Color::IsInitialized(*(this + 9));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::ImageFillArchive::InternalSwap(TSD::ImageFillArchive *this, TSD::ImageFillArchive *a2)
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
  LOBYTE(v12) = *(this + 84);
  *(this + 84) = *(a2 + 84);
  *(a2 + 84) = v12;
  return result;
}

TSP::Color *TSD::FillArchive::clear_color(TSD::FillArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 10) &= ~1u;
  return result;
}

TSD::FillArchive *TSD::FillArchive::FillArchive(TSD::FillArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885764D8;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_FillArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  return this;
}

TSD::FillArchive *TSD::FillArchive::FillArchive(TSD::FillArchive *this, const TSD::FillArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_2885764D8;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 11) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v6 = *(a2 + 10);
  if (v6)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v6 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v6 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  return this;
}

void sub_276731F94(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x10A1C40DE444C0DLL);
  MEMORY[0x277C9BC30](v1);
  _Unwind_Resume(a1);
}

void TSD::FillArchive::~FillArchive(TSD::FillArchive *this)
{
  if (this != &TSD::_FillArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Color::~Color(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSD::GradientArchive::~GradientArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = *(this + 8);
    if (v4)
    {
      TSD::ImageFillArchive::~ImageFillArchive(v4);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  MEMORY[0x277C9BC30](this + 16);
}

{
  TSD::FillArchive::~FillArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::FillArchive::default_instance(TSD::FillArchive *this)
{
  if (atomic_load_explicit(scc_info_FillArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_FillArchive_default_instance_;
}

uint64_t *TSD::FillArchive::Clear(TSD::FillArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      result = TSP::Color::Clear(*(this + 6));
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = TSD::GradientArchive::Clear(*(this + 7));
    if ((v3 & 4) != 0)
    {
LABEL_5:
      result = TSD::ImageFillArchive::Clear(*(this + 8));
    }
  }

LABEL_6:
  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_27670B144(v4);
  }

  return result;
}

google::protobuf::internal *TSD::FillArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_27670AF08(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v6 = (v20 + 1);
      LODWORD(v7) = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = (v7 + (*v6 << 7) - 128);
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, v7);
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
LABEL_7:
      v8 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 40) |= 4u;
          v14 = *(a1 + 64);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageFillArchive>(v15);
            *(a1 + 64) = v14;
            v6 = v20;
          }

          v11 = sub_27680B95C(a3, v14, v6);
          goto LABEL_41;
        }
      }

      else if (v8 == 2)
      {
        if (v7 == 18)
        {
          *(a1 + 40) |= 2u;
          v12 = *(a1 + 56);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::GradientArchive>(v13);
            *(a1 + 56) = v12;
            v6 = v20;
          }

          v11 = sub_27680B88C(a3, v12, v6);
          goto LABEL_41;
        }
      }

      else if (v8 == 1 && v7 == 10)
      {
        *(a1 + 40) |= 1u;
        v16 = *(a1 + 48);
        if (!v16)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277C9BAF0](v17);
          LODWORD(v16) = v18;
          *(a1 + 48) = v18;
          v6 = v20;
        }

        v11 = sub_27680B3AC(a3, v16, v6);
        goto LABEL_41;
      }

      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 80) = v7 - 1;
        return v20;
      }

      if (v7 < 0x320)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
      }

      else
      {
        v11 = google::protobuf::internal::ExtensionSet::ParseField();
      }

LABEL_41:
      v20 = v11;
      if (!v11)
      {
        return 0;
      }

      if (sub_27670AF08(a3, &v20))
      {
        return v20;
      }
    }

    v6 = (v20 + 2);
LABEL_6:
    v20 = v6;
    goto LABEL_7;
  }

  return v20;
}

const google::protobuf::UnknownFieldSet *TSD::FillArchive::_InternalSerialize(TSD::FillArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
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

    v4 = TSP::Color::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_25;
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

  v13 = *(this + 7);
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

  v4 = TSD::GradientArchive::_InternalSerialize(v13, v15, a3, v4);
  if ((v6 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(this + 8);
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

    v4 = TSD::ImageFillArchive::_InternalSerialize(v19, v21, a3, v4);
  }

LABEL_35:
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 100, 0x20000000, v4, a3);
  v27 = *(this + 1);
  if (v27)
  {

    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), result, a3, v26);
  }

  return result;
}

uint64_t TSD::FillArchive::ByteSizeLong(TSD::FillArchive *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 10);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v6 = TSP::Color::ByteSizeLong(*(this + 6));
      v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    v7 = TSD::GradientArchive::ByteSizeLong(*(this + 7));
    v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) != 0)
    {
LABEL_5:
      v4 = TSD::ImageFillArchive::ByteSizeLong(*(this + 8));
      v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_6:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 11) = v2;
    return v2;
  }
}

void TSD::FillArchive::MergeFrom(TSD::FillArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::FillArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::FillArchive::MergeFrom(TSD::FillArchive *this, const TSD::FillArchive *a2)
{
  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 10);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(this + 10) |= 1u;
      v6 = *(this + 6);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C9BAF0](v7);
        *(this + 6) = v6;
      }

      if (*(a2 + 6))
      {
        v8 = *(a2 + 6);
      }

      else
      {
        v8 = MEMORY[0x277D809E8];
      }

      TSP::Color::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return;
        }

        goto LABEL_24;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 10) |= 2u;
    v9 = *(this + 7);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::GradientArchive>(v10);
      *(this + 7) = v9;
    }

    if (*(a2 + 7))
    {
      v11 = *(a2 + 7);
    }

    else
    {
      v11 = &TSD::_GradientArchive_default_instance_;
    }

    TSD::GradientArchive::MergeFrom(v9, v11);
    if ((v5 & 4) != 0)
    {
LABEL_24:
      *(this + 10) |= 4u;
      v12 = *(this + 8);
      if (!v12)
      {
        v13 = *(this + 1);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageFillArchive>(v13);
        *(this + 8) = v12;
      }

      if (*(a2 + 8))
      {
        v14 = *(a2 + 8);
      }

      else
      {
        v14 = &TSD::_ImageFillArchive_default_instance_;
      }

      TSD::ImageFillArchive::MergeFrom(v12, v14);
    }
  }
}

void TSD::FillArchive::CopyFrom(TSD::FillArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::FillArchive::Clear(this);

    TSD::FillArchive::MergeFrom(this, a2);
  }
}

void TSD::FillArchive::CopyFrom(TSD::FillArchive *this, const TSD::FillArchive *a2)
{
  if (a2 != this)
  {
    TSD::FillArchive::Clear(this);

    TSD::FillArchive::MergeFrom(this, a2);
  }
}

uint64_t TSD::FillArchive::IsInitialized(TSD::FillArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    v3 = *(this + 10);
    if (v3)
    {
      result = TSP::Color::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 2) != 0)
    {
      result = TSD::GradientArchive::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = TSD::ImageFillArchive::IsInitialized(*(this + 8));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::FillArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  google::protobuf::internal::ExtensionSet::Swap();
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[2].n128_u32[2];
  this[2].n128_u32[2] = a2[2].n128_u32[2];
  a2[2].n128_u32[2] = v4;
  v5 = this[3].n128_u64[0];
  v6 = this[3].n128_u64[1];
  result = a2[3];
  this[3] = result;
  a2[3].n128_u64[0] = v5;
  a2[3].n128_u64[1] = v6;
  v8 = this[4].n128_u64[0];
  this[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v8;
  return result;
}

uint64_t TSD::StrokePatternArchive::StrokePatternArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288576588;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

{
  *result = &unk_288576588;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

TSD::StrokePatternArchive *TSD::StrokePatternArchive::StrokePatternArchive(TSD::StrokePatternArchive *this, const TSD::StrokePatternArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576588;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_2766C3850(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  v7 = *(a2 + 1);
  if (v7)
  {
    sub_27670B0F8(v4, (v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v8 = *(a2 + 5);
  *(this + 12) = *(a2 + 12);
  *(this + 5) = v8;
  return this;
}

void sub_276732C34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 28) >= 1)
  {
    sub_27680D3B0(v1);
  }

  _Unwind_Resume(exception_object);
}

void TSD::StrokePatternArchive::~StrokePatternArchive(TSD::StrokePatternArchive *this)
{
  sub_2766FFE58(this + 1);
  if (*(this + 7) >= 1)
  {
    v2 = *(this + 4);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }
}

{
  TSD::StrokePatternArchive::~StrokePatternArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::StrokePatternArchive::default_instance(TSD::StrokePatternArchive *this)
{
  if (atomic_load_explicit(scc_info_StrokePatternArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_StrokePatternArchive_default_instance_;
}

uint64_t *TSD::StrokePatternArchive::Clear(TSD::StrokePatternArchive *this)
{
  *(this + 6) = 0;
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 12) = 0;
    *(this + 5) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::StrokePatternArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v28) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_57;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 8)
          {
            v17 = (v7 + 1);
            v16 = *v7;
            if ((v16 & 0x8000000000000000) == 0)
            {
              goto LABEL_29;
            }

            v18 = *v17;
            v16 = (v18 << 7) + v16 - 128;
            if (v18 < 0)
            {
              v28 = google::protobuf::internal::VarintParseSlow64(v7, v16);
              if (!v28)
              {
                goto LABEL_57;
              }
            }

            else
            {
              v17 = (v7 + 2);
LABEL_29:
              v28 = v17;
            }

            if (v16 > 2)
            {
              sub_27680D30C();
            }

            else
            {
              *(a1 + 16) |= 1u;
              *(a1 + 40) = v16;
            }

            goto LABEL_53;
          }
        }

        else if (v10 == 2 && v8 == 21)
        {
          v5 |= 2u;
          *(a1 + 44) = *v7;
          v28 = (v7 + 4);
          goto LABEL_53;
        }

        goto LABEL_45;
      }

      if (v10 != 3)
      {
        if (v10 == 4)
        {
          if (v8 == 37)
          {
            v12 = v7 - 1;
            v13 = *(a1 + 24);
            do
            {
              v14 = (v12 + 1);
              v28 = (v12 + 1);
              v15 = *(v12 + 1);
              if (v13 == *(a1 + 28))
              {
                sub_2766C3850((a1 + 24), v13 + 1);
                *(*(a1 + 32) + 4 * v13) = v15;
                v14 = v28;
              }

              else
              {
                *(*(a1 + 32) + 4 * v13) = v15;
              }

              *(a1 + 24) = ++v13;
              v12 = v14 + 4;
              v28 = (v14 + 4);
            }

            while (*a3 > v14 + 4 && *v12 == 37);
            goto LABEL_53;
          }

          if (v8 == 34)
          {
            v26 = MEMORY[0x277C9BCF0](a1 + 24, v7, a3);
            goto LABEL_52;
          }
        }

LABEL_45:
        if (v8)
        {
          v27 = (v8 & 7) == 4;
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v26 = google::protobuf::internal::UnknownFieldParse();
LABEL_52:
        v28 = v26;
        if (!v26)
        {
LABEL_57:
          v28 = 0;
          goto LABEL_2;
        }

        goto LABEL_53;
      }

      if (v8 != 24)
      {
        goto LABEL_45;
      }

      v5 |= 4u;
      v19 = (v7 + 1);
      LODWORD(v20) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v21 = *v19;
      v20 = (v20 + (v21 << 7) - 128);
      if ((v21 & 0x80000000) == 0)
      {
        v19 = (v7 + 2);
LABEL_36:
        v28 = v19;
        *(a1 + 48) = v20;
        goto LABEL_53;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v20);
      v28 = v24;
      *(a1 + 48) = v25;
      if (!v24)
      {
        goto LABEL_57;
      }

LABEL_53:
      if (sub_27670AF08(a3, &v28))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

unsigned __int8 *TSD::StrokePatternArchive::_InternalSerialize(TSD::StrokePatternArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 10);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
        if ((v6 & 2) != 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 11);
  *a2 = 21;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_19:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 12);
    *a2 = 24;
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

LABEL_28:
  v16 = *(this + 6);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = 4 * v16;
    do
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 4) + v17);
      *a2 = 37;
      *(a2 + 1) = v19;
      a2 += 5;
      v17 += 4;
    }

    while (v18 != v17);
  }

  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::StrokePatternArchive::ByteSizeLong(TSD::StrokePatternArchive *this)
{
  v1 = 5 * *(this + 6);
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v3 = *(this + 10);
      if (v3 < 0)
      {
        v4 = 11;
      }

      else
      {
        v4 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v1 += v4;
    }

    if ((v2 & 2) != 0)
    {
      v1 += 5;
    }

    if ((v2 & 4) != 0)
    {
      v1 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v1;
  return v1;
}

uint64_t TSD::StrokePatternArchive::MergeFrom(TSD::StrokePatternArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::StrokePatternArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::StrokePatternArchive::MergeFrom(uint64_t this, const TSD::StrokePatternArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(v3 + 24);
    sub_2766C3850((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 4);
  if ((v8 & 7) != 0)
  {
    if (v8)
    {
      *(v3 + 40) = *(a2 + 10);
      if ((v8 & 2) == 0)
      {
LABEL_8:
        if ((v8 & 4) == 0)
        {
LABEL_10:
          *(v3 + 16) |= v8;
          return this;
        }

LABEL_9:
        *(v3 + 48) = *(a2 + 12);
        goto LABEL_10;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_8;
    }

    *(v3 + 44) = *(a2 + 11);
    if ((v8 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

TSD::StrokePatternArchive *TSD::StrokePatternArchive::CopyFrom(TSD::StrokePatternArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::StrokePatternArchive::Clear(this);

    return TSD::StrokePatternArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::StrokePatternArchive *TSD::StrokePatternArchive::CopyFrom(TSD::StrokePatternArchive *this, const TSD::StrokePatternArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::StrokePatternArchive::Clear(this);

    return TSD::StrokePatternArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSD::StrokePatternArchive::InternalSwap(TSD::StrokePatternArchive *this, TSD::StrokePatternArchive *a2)
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
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  return result;
}

TSP::Color *TSD::StrokeArchive::clear_color(TSD::StrokeArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::StrokeArchive *TSD::StrokeArchive::StrokeArchive(TSD::StrokeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288576638;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288576638;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::StrokeArchive *TSD::StrokeArchive::StrokeArchive(TSD::StrokeArchive *this, const TSD::StrokeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288576638;
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
  *(this + 4) = *(a2 + 4);
  return this;
}

void TSD::StrokeArchive::~StrokeArchive(TSD::StrokeArchive *this)
{
  sub_276733918(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::StrokeArchive::~StrokeArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_276733918(uint64_t *result)
{
  if (result != &TSD::_StrokeArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Color::~Color(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSD::StrokePatternArchive::~StrokePatternArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSD::SmartStrokeArchive::~SmartStrokeArchive(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSD::FrameArchive::~FrameArchive(v5);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[7];
    if (result)
    {
      TSD::PatternedStrokeArchive::~PatternedStrokeArchive(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::StrokeArchive::default_instance(TSD::StrokeArchive *this)
{
  if (atomic_load_explicit(scc_info_StrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_StrokeArchive_default_instance_;
}

uint64_t *TSD::StrokeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    this = TSP::Color::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_16:
      this = TSD::SmartStrokeArchive::Clear(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSD::StrokePatternArchive::Clear(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:
  this = TSD::FrameArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSD::PatternedStrokeArchive::Clear(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 68) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

uint64_t *TSD::SmartStrokeArchive::Clear(uint64_t *this)
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
      this = TSP::ReferenceDictionary::Clear(this[4]);
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_27670B144(v4);
  }

  return this;
}

uint64_t *TSD::FrameArchive::Clear(TSD::FrameArchive *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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

  v3 = *(this + 8);
  result = (this + 8);
  *(result + 6) = 0;
  *(result + 2) = 0;
  if (v3)
  {
    return sub_27670B144(result);
  }

  return result;
}

uint64_t *TSD::PatternedStrokeArchive::Clear(TSD::PatternedStrokeArchive *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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

  v3 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v3)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::StrokeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v36) & 1) == 0)
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
        goto LABEL_90;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 24)
            {
              v28 = (v7 + 1);
              v27 = *v7;
              if ((v27 & 0x8000000000000000) == 0)
              {
                goto LABEL_55;
              }

              v29 = *v28;
              v27 = (v29 << 7) + v27 - 128;
              if (v29 < 0)
              {
                v36 = google::protobuf::internal::VarintParseSlow64(v7, v27);
                if (!v36)
                {
LABEL_90:
                  v36 = 0;
                  goto LABEL_2;
                }
              }

              else
              {
                v28 = (v7 + 2);
LABEL_55:
                v36 = v28;
              }

              if (v27 > 2)
              {
                sub_27680D3C4();
              }

              else
              {
                *(a1 + 16) |= 0x40u;
                *(a1 + 68) = v27;
              }

              goto LABEL_81;
            }
          }

          else if (v10 == 4 && v8 == 32)
          {
            v18 = (v7 + 1);
            v17 = *v7;
            if ((v17 & 0x8000000000000000) == 0)
            {
              goto LABEL_32;
            }

            v19 = *v18;
            v17 = (v19 << 7) + v17 - 128;
            if (v19 < 0)
            {
              v36 = google::protobuf::internal::VarintParseSlow64(v7, v17);
              if (!v36)
              {
                goto LABEL_90;
              }
            }

            else
            {
              v18 = (v7 + 2);
LABEL_32:
              v36 = v18;
            }

            if (v17 > 2)
            {
              sub_27680D374();
            }

            else
            {
              *(a1 + 16) |= 0x80u;
              *(a1 + 72) = v17;
            }

            goto LABEL_81;
          }
        }

        else if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v24 = *(a1 + 24);
            if (!v24)
            {
              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277C9BAF0](v25);
              LODWORD(v24) = v26;
              *(a1 + 24) = v26;
              v7 = v36;
            }

            v13 = sub_27680B3AC(a3, v24, v7);
            goto LABEL_80;
          }
        }

        else if (v10 == 2 && v8 == 21)
        {
          v16 = *v7;
          v15 = (v7 + 4);
          v5 |= 0x20u;
          *(a1 + 64) = v16;
LABEL_66:
          v36 = v15;
          goto LABEL_81;
        }
      }

      else if (v8 >> 3 <= 6)
      {
        if (v10 == 5)
        {
          if (v8 == 45)
          {
            v32 = *v7;
            v15 = (v7 + 4);
            v5 |= 0x100u;
            *(a1 + 76) = v32;
            goto LABEL_66;
          }
        }

        else if (v10 == 6 && v8 == 50)
        {
          *(a1 + 16) |= 2u;
          v20 = *(a1 + 32);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokePatternArchive>(v21);
            *(a1 + 32) = v20;
            v7 = v36;
          }

          v13 = sub_27680BA2C(a3, v20, v7);
          goto LABEL_80;
        }
      }

      else if (v10 == 7)
      {
        if (v8 == 58)
        {
          *(a1 + 16) |= 4u;
          v30 = *(a1 + 40);
          if (!v30)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v30 = google::protobuf::Arena::CreateMaybeMessage<TSD::SmartStrokeArchive>(v31);
            *(a1 + 40) = v30;
            v7 = v36;
          }

          v13 = sub_27680BAFC(a3, v30, v7);
          goto LABEL_80;
        }
      }

      else if (v10 == 8)
      {
        if (v8 == 66)
        {
          *(a1 + 16) |= 8u;
          v33 = *(a1 + 48);
          if (!v33)
          {
            v34 = *(a1 + 8);
            if (v34)
            {
              v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
            }

            v33 = google::protobuf::Arena::CreateMaybeMessage<TSD::FrameArchive>(v34);
            *(a1 + 48) = v33;
            v7 = v36;
          }

          v13 = sub_27680BBCC(a3, v33, v7);
          goto LABEL_80;
        }
      }

      else if (v10 == 9 && v8 == 74)
      {
        *(a1 + 16) |= 0x10u;
        v11 = *(a1 + 56);
        if (!v11)
        {
          v12 = *(a1 + 8);
          if (v12)
          {
            v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = google::protobuf::Arena::CreateMaybeMessage<TSD::PatternedStrokeArchive>(v12);
          *(a1 + 56) = v11;
          v7 = v36;
        }

        v13 = sub_27680BC9C(a3, v11, v7);
        goto LABEL_80;
      }

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
        sub_27670AF80((a1 + 8));
      }

      v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_80:
      v36 = v13;
      if (!v13)
      {
        goto LABEL_90;
      }

LABEL_81:
      if (sub_27670AF08(a3, &v36))
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

unsigned __int8 *TSD::StrokeArchive::_InternalSerialize(TSD::StrokeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSP::Color::_InternalSerialize(v7, v9, a3);
    if ((v6 & 0x20) == 0)
    {
LABEL_3:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 16);
  *a2 = 21;
  *(a2 + 1) = v13;
  a2 += 5;
  if ((v6 & 0x40) == 0)
  {
LABEL_4:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_5;
    }

LABEL_35:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 18);
    *a2 = 32;
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
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_46;
        }
      }

      else
      {
        a2[2] = v19;
        a2 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      a2[1] = v18;
      a2 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_46;
      }
    }

LABEL_6:
    if ((v6 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_24:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 17);
  *a2 = 24;
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
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v6 & 0x80) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    a2[1] = v14;
    a2 += 2;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_5:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_6;
  }

LABEL_46:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 19);
  *a2 = 45;
  *(a2 + 1) = v22;
  a2 += 5;
  if ((v6 & 2) == 0)
  {
LABEL_7:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_59;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v23 = *(this + 4);
  *a2 = 50;
  v24 = *(v23 + 5);
  if (v24 > 0x7F)
  {
    a2[1] = v24 | 0x80;
    v26 = v24 >> 7;
    if (v24 >> 14)
    {
      v25 = a2 + 3;
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
      a2[2] = v26;
      v25 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v24;
    v25 = a2 + 2;
  }

  a2 = TSD::StrokePatternArchive::_InternalSerialize(v23, v25, a3, a4);
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_59:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v29 = *(this + 5);
  *a2 = 58;
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

  a2 = TSD::SmartStrokeArchive::_InternalSerialize(v29, v31, a3);
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_79;
  }

LABEL_69:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v35 = *(this + 6);
  *a2 = 66;
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

  a2 = TSD::FrameArchive::_InternalSerialize(v35, v37, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_79:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v41 = *(this + 7);
    *a2 = 74;
    v42 = *(v41 + 5);
    if (v42 > 0x7F)
    {
      a2[1] = v42 | 0x80;
      v44 = v42 >> 7;
      if (v42 >> 14)
      {
        v43 = a2 + 3;
        do
        {
          *(v43 - 1) = v44 | 0x80;
          v45 = v44 >> 7;
          ++v43;
          v46 = v44 >> 14;
          v44 >>= 7;
        }

        while (v46);
        *(v43 - 1) = v45;
      }

      else
      {
        a2[2] = v44;
        v43 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v42;
      v43 = a2 + 2;
    }

    a2 = TSD::PatternedStrokeArchive::_InternalSerialize(v41, v43, a3);
  }

LABEL_89:
  v47 = *(this + 1);
  if ((v47 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v47 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::StrokeArchive::ByteSizeLong(TSD::StrokeArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (v2)
  {
    v5 = TSP::Color::ByteSizeLong(*(this + 3));
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
    v6 = TSD::StrokePatternArchive::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_30:
    v17 = TSD::FrameArchive::ByteSizeLong(*(this + 6));
    v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = TSD::SmartStrokeArchive::ByteSizeLong(*(this + 5));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  if ((v2 & 0x10) != 0)
  {
LABEL_11:
    v7 = TSD::PatternedStrokeArchive::ByteSizeLong(*(this + 7));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v4 = v3 + 5;
  if ((v2 & 0x20) == 0)
  {
    v4 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v8 = *(this + 17);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    v4 += v10;
  }

  if ((v2 & 0x80) != 0)
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

    v4 += v13;
  }

LABEL_24:
  if ((v2 & 0x100) != 0)
  {
    v14 = v4 + 5;
  }

  else
  {
    v14 = v4;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v14;
    return v14;
  }
}

void TSD::StrokeArchive::MergeFrom(TSD::StrokeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::StrokeArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

float TSD::StrokeArchive::MergeFrom(TSD::StrokeArchive *this, const TSD::StrokeArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 4);
  if (v6)
  {
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

        v7 = MEMORY[0x277C9BAF0](v8);
        *(this + 3) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = MEMORY[0x277D809E8];
      }

      TSP::Color::MergeFrom(v7, v9);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_33;
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

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::StrokePatternArchive>(v11);
      *(this + 4) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = &TSD::_StrokePatternArchive_default_instance_;
    }

    TSD::StrokePatternArchive::MergeFrom(v10, v12);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_41;
    }

LABEL_33:
    *(this + 4) |= 4u;
    v13 = *(this + 5);
    if (!v13)
    {
      v14 = *(this + 1);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::SmartStrokeArchive>(v14);
      *(this + 5) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = &TSD::_SmartStrokeArchive_default_instance_;
    }

    TSD::SmartStrokeArchive::MergeFrom(v13, v15);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_49;
    }

LABEL_41:
    *(this + 4) |= 8u;
    v16 = *(this + 6);
    if (!v16)
    {
      v17 = *(this + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::FrameArchive>(v17);
      *(this + 6) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = &TSD::_FrameArchive_default_instance_;
    }

    TSD::FrameArchive::MergeFrom(v16, v18);
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_57;
    }

LABEL_49:
    *(this + 4) |= 0x10u;
    v19 = *(this + 7);
    if (!v19)
    {
      v20 = *(this + 1);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::Arena::CreateMaybeMessage<TSD::PatternedStrokeArchive>(v20);
      *(this + 7) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = &TSD::_PatternedStrokeArchive_default_instance_;
    }

    TSD::PatternedStrokeArchive::MergeFrom(v19, v21);
    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_58;
    }

LABEL_57:
    result = *(a2 + 16);
    *(this + 16) = result;
    if ((v6 & 0x40) == 0)
    {
LABEL_11:
      if ((v6 & 0x80) == 0)
      {
LABEL_13:
        *(this + 4) |= v6;
        goto LABEL_14;
      }

LABEL_12:
      *(this + 18) = *(a2 + 18);
      goto LABEL_13;
    }

LABEL_58:
    *(this + 17) = *(a2 + 17);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v6 & 0x100) != 0)
  {
    result = *(a2 + 19);
    *(this + 4) |= 0x100u;
    *(this + 19) = result;
  }

  return result;
}