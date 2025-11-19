unsigned __int8 *TSD::InfoCollectionSelectionTransformerHelperArchive::_InternalSerialize(TSD::InfoCollectionSelectionTransformerHelperArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
      v9 = *(v8 + 10);
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

      a2 = TSP::UUIDPath::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::InfoCollectionSelectionTransformerHelperArchive::ByteSizeLong(TSD::InfoCollectionSelectionTransformerHelperArchive *this)
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

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

uint64_t TSD::InfoCollectionSelectionTransformerHelperArchive::MergeFrom(TSD::InfoCollectionSelectionTransformerHelperArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::InfoCollectionSelectionTransformerHelperArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::InfoCollectionSelectionTransformerHelperArchive::MergeFrom(uint64_t this, const TSD::InfoCollectionSelectionTransformerHelperArchive *a2)
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
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_2768029EC(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSD::InfoCollectionSelectionTransformerHelperArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::InfoCollectionSelectionTransformerHelperArchive::Clear(this);

    return TSD::InfoCollectionSelectionTransformerHelperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::InfoCollectionSelectionTransformerHelperArchive::CopyFrom(uint64_t *this, const TSD::InfoCollectionSelectionTransformerHelperArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::InfoCollectionSelectionTransformerHelperArchive::Clear(this);

    return TSD::InfoCollectionSelectionTransformerHelperArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSD::InfoCollectionSelectionTransformerHelperArchive::IsInitialized(TSD::InfoCollectionSelectionTransformerHelperArchive *this)
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
    IsInitialized = TSP::UUIDPath::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSD::InfoCollectionSelectionTransformerHelperArchive::InternalSwap(TSD::InfoCollectionSelectionTransformerHelperArchive *this, TSD::InfoCollectionSelectionTransformerHelperArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSP::Reference *TSD::DrawableSelectionTransformerArchive::clear_untransformed_drawable_selection(TSD::DrawableSelectionTransformerArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::DrawableSelectionTransformerArchive *TSD::DrawableSelectionTransformerArchive::DrawableSelectionTransformerArchive(TSD::DrawableSelectionTransformerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857BC48;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_28857BC48;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSD::DrawableSelectionTransformerArchive *TSD::DrawableSelectionTransformerArchive::DrawableSelectionTransformerArchive(TSD::DrawableSelectionTransformerArchive *this, const TSD::DrawableSelectionTransformerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857BC48;
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
  return this;
}

void TSD::DrawableSelectionTransformerArchive::~DrawableSelectionTransformerArchive(TSD::DrawableSelectionTransformerArchive *this)
{
  if (this != &TSD::_DrawableSelectionTransformerArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::InfoCollectionSelectionTransformerHelperArchive::~InfoCollectionSelectionTransformerHelperArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::DrawableSelectionTransformerArchive::~DrawableSelectionTransformerArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::DrawableSelectionTransformerArchive::default_instance(TSD::DrawableSelectionTransformerArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawableSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawableSelectionTransformerArchive_default_instance_;
}

uint64_t *TSD::DrawableSelectionTransformerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSD::InfoCollectionSelectionTransformerHelperArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }
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

google::protobuf::internal *TSD::DrawableSelectionTransformerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_27670AF08(a3, &v19) & 1) == 0)
  {
    v5 = (v19 + 1);
    v6 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v19 + 2);
LABEL_6:
      v19 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v7 - 128));
    v19 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v17;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
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

        v13 = MEMORY[0x277C9BB20](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v19;
      }

      v10 = sub_27680B6EC(a3, v11, v5);
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
          return v19;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v14 = *(a1 + 24);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCollectionSelectionTransformerHelperArchive>(v15);
        *(a1 + 24) = v14;
        v5 = v19;
      }

      v10 = sub_27680FB40(a3, v14, v5);
    }

LABEL_30:
    v19 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v19;
}

unsigned __int8 *TSD::DrawableSelectionTransformerArchive::_InternalSerialize(TSD::DrawableSelectionTransformerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
    v8 = *(v7 + 10);
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

    a2 = TSD::InfoCollectionSelectionTransformerHelperArchive::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
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

    a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::DrawableSelectionTransformerArchive::RequiredFieldsByteSizeFallback(TSD::DrawableSelectionTransformerArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSD::InfoCollectionSelectionTransformerHelperArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSD::DrawableSelectionTransformerArchive::ByteSizeLong(TSD::InfoCollectionSelectionTransformerHelperArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSD::DrawableSelectionTransformerArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSD::InfoCollectionSelectionTransformerHelperArchive::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSD::DrawableSelectionTransformerArchive::MergeFrom(TSD::DrawableSelectionTransformerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawableSelectionTransformerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawableSelectionTransformerArchive::MergeFrom(uint64_t this, const TSD::DrawableSelectionTransformerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCollectionSelectionTransformerHelperArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_InfoCollectionSelectionTransformerHelperArchive_default_instance_;
      }

      this = TSD::InfoCollectionSelectionTransformerHelperArchive::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277C9BB20](v10);
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

      return TSP::Reference::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSD::DrawableSelectionTransformerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableSelectionTransformerArchive::Clear(this);

    return TSD::DrawableSelectionTransformerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawableSelectionTransformerArchive::CopyFrom(uint64_t *this, const TSD::DrawableSelectionTransformerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableSelectionTransformerArchive::Clear(this);

    return TSD::DrawableSelectionTransformerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawableSelectionTransformerArchive::IsInitialized(TSD::DrawableSelectionTransformerArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 24);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::UUIDPath::IsInitialized(*(*(v2 + 32) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::DrawableSelectionTransformerArchive::InternalSwap(TSD::DrawableSelectionTransformerArchive *this, TSD::DrawableSelectionTransformerArchive *a2)
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

uint64_t TSD::InfoHyperlinkSelectionTransformerArchive::InfoHyperlinkSelectionTransformerArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_28857BCF8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_28857BCF8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSD::InfoHyperlinkSelectionTransformerArchive *TSD::InfoHyperlinkSelectionTransformerArchive::InfoHyperlinkSelectionTransformerArchive(TSD::InfoHyperlinkSelectionTransformerArchive *this, const TSD::InfoHyperlinkSelectionTransformerArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_28857BCF8;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSD::InfoHyperlinkSelectionTransformerArchive::~InfoHyperlinkSelectionTransformerArchive(TSD::InfoHyperlinkSelectionTransformerArchive *this)
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

uint64_t *TSD::InfoHyperlinkSelectionTransformerArchive::default_instance(TSD::InfoHyperlinkSelectionTransformerArchive *this)
{
  if (atomic_load_explicit(scc_info_InfoHyperlinkSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_InfoHyperlinkSelectionTransformerArchive_default_instance_;
}

uint64_t *TSD::InfoHyperlinkSelectionTransformerArchive::Clear(TSD::InfoHyperlinkSelectionTransformerArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *TSD::InfoHyperlinkSelectionTransformerArchive::_InternalSerialize(TSD::InfoHyperlinkSelectionTransformerArchive *this, const google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v4 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

  else
  {
    return a2;
  }
}

uint64_t TSD::InfoHyperlinkSelectionTransformerArchive::ByteSizeLong(TSD::InfoHyperlinkSelectionTransformerArchive *this)
{
  v2 = *(this + 8);
  v1 = this + 8;
  if (v2)
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(v1 + 2) = 0;
  return 0;
}

void *TSD::InfoHyperlinkSelectionTransformerArchive::MergeFrom(TSD::InfoHyperlinkSelectionTransformerArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSD::InfoHyperlinkSelectionTransformerArchive::MergeFrom(uint64_t this, const TSD::InfoHyperlinkSelectionTransformerArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_27670B0F8((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSD::InfoHyperlinkSelectionTransformerArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::InfoHyperlinkSelectionTransformerArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSD::InfoHyperlinkSelectionTransformerArchive::CopyFrom(uint64_t *this, const TSD::InfoHyperlinkSelectionTransformerArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_27670B144(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

TSD::CanvasSelectionTransformerArchive *TSD::CanvasSelectionTransformerArchive::CanvasSelectionTransformerArchive(TSD::CanvasSelectionTransformerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857BDA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CanvasSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857BDA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CanvasSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::CanvasSelectionTransformerArchive *TSD::CanvasSelectionTransformerArchive::CanvasSelectionTransformerArchive(TSD::CanvasSelectionTransformerArchive *this, const TSD::CanvasSelectionTransformerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857BDA8;
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
  return this;
}

void TSD::CanvasSelectionTransformerArchive::~CanvasSelectionTransformerArchive(TSD::CanvasSelectionTransformerArchive *this)
{
  if (this != &TSD::_CanvasSelectionTransformerArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::InfoCollectionSelectionTransformerHelperArchive::~InfoCollectionSelectionTransformerHelperArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::CanvasSelectionTransformerArchive::~CanvasSelectionTransformerArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::CanvasSelectionTransformerArchive::default_instance(TSD::CanvasSelectionTransformerArchive *this)
{
  if (atomic_load_explicit(scc_info_CanvasSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_CanvasSelectionTransformerArchive_default_instance_;
}

uint64_t *TSD::CanvasSelectionTransformerArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::InfoCollectionSelectionTransformerHelperArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::CanvasSelectionTransformerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_27670AF08(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCollectionSelectionTransformerHelperArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_27680FB40(a3, v10, v5);
    }

    else
    {
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
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *TSD::CanvasSelectionTransformerArchive::_InternalSerialize(TSD::CanvasSelectionTransformerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 10;
    v7 = *(v6 + 10);
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

    a2 = TSD::InfoCollectionSelectionTransformerHelperArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::CanvasSelectionTransformerArchive::ByteSizeLong(TSD::InfoCollectionSelectionTransformerHelperArchive **this)
{
  if (this[2])
  {
    v3 = TSD::InfoCollectionSelectionTransformerHelperArchive::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::CanvasSelectionTransformerArchive::MergeFrom(TSD::CanvasSelectionTransformerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::CanvasSelectionTransformerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::CanvasSelectionTransformerArchive::MergeFrom(uint64_t this, const TSD::CanvasSelectionTransformerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCollectionSelectionTransformerHelperArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSD::_InfoCollectionSelectionTransformerHelperArchive_default_instance_;
    }

    return TSD::InfoCollectionSelectionTransformerHelperArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::CanvasSelectionTransformerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::CanvasSelectionTransformerArchive::Clear(this);

    return TSD::CanvasSelectionTransformerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::CanvasSelectionTransformerArchive::CopyFrom(uint64_t *this, const TSD::CanvasSelectionTransformerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::CanvasSelectionTransformerArchive::Clear(this);

    return TSD::CanvasSelectionTransformerArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSD::CanvasSelectionTransformerArchive::IsInitialized(TSD::CanvasSelectionTransformerArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 24);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSP::UUIDPath::IsInitialized(*(*(v2 + 32) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

uint64_t *TSD::CanvasSelectionTransformerArchive::InternalSwap(TSD::CanvasSelectionTransformerArchive *this, TSD::CanvasSelectionTransformerArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSD::PathSelectionTransformerArchive::PathSelectionTransformerArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_28857BE58;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_28857BE58;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSD::PathSelectionTransformerArchive *TSD::PathSelectionTransformerArchive::PathSelectionTransformerArchive(TSD::PathSelectionTransformerArchive *this, const TSD::PathSelectionTransformerArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_28857BE58;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSD::PathSelectionTransformerArchive::~PathSelectionTransformerArchive(TSD::PathSelectionTransformerArchive *this)
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

uint64_t *TSD::PathSelectionTransformerArchive::default_instance(TSD::PathSelectionTransformerArchive *this)
{
  if (atomic_load_explicit(scc_info_PathSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_PathSelectionTransformerArchive_default_instance_;
}

uint64_t *TSD::PathSelectionTransformerArchive::Clear(TSD::PathSelectionTransformerArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *TSD::PathSelectionTransformerArchive::_InternalSerialize(TSD::PathSelectionTransformerArchive *this, const google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v4 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

  else
  {
    return a2;
  }
}

uint64_t TSD::PathSelectionTransformerArchive::ByteSizeLong(TSD::PathSelectionTransformerArchive *this)
{
  v2 = *(this + 8);
  v1 = this + 8;
  if (v2)
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(v1 + 2) = 0;
  return 0;
}

void *TSD::PathSelectionTransformerArchive::MergeFrom(TSD::PathSelectionTransformerArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSD::PathSelectionTransformerArchive::MergeFrom(uint64_t this, const TSD::PathSelectionTransformerArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_27670B0F8((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSD::PathSelectionTransformerArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::PathSelectionTransformerArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSD::PathSelectionTransformerArchive::CopyFrom(uint64_t *this, const TSD::PathSelectionTransformerArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_27670B144(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

TSD::ShapeSelectionTransformerArchive *TSD::ShapeSelectionTransformerArchive::ShapeSelectionTransformerArchive(TSD::ShapeSelectionTransformerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857BF08;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857BF08;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::ShapeSelectionTransformerArchive *TSD::ShapeSelectionTransformerArchive::ShapeSelectionTransformerArchive(TSD::ShapeSelectionTransformerArchive *this, const TSD::ShapeSelectionTransformerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857BF08;
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
  return this;
}

void TSD::ShapeSelectionTransformerArchive::~ShapeSelectionTransformerArchive(TSD::ShapeSelectionTransformerArchive *this)
{
  if (this != &TSD::_ShapeSelectionTransformerArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::DrawableSelectionTransformerArchive::~DrawableSelectionTransformerArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ShapeSelectionTransformerArchive::~ShapeSelectionTransformerArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ShapeSelectionTransformerArchive::default_instance(TSD::ShapeSelectionTransformerArchive *this)
{
  if (atomic_load_explicit(scc_info_ShapeSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ShapeSelectionTransformerArchive_default_instance_;
}

uint64_t *TSD::ShapeSelectionTransformerArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::DrawableSelectionTransformerArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::ShapeSelectionTransformerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_27670AF08(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableSelectionTransformerArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_27680FE00(a3, v10, v5);
    }

    else
    {
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
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *TSD::ShapeSelectionTransformerArchive::_InternalSerialize(TSD::ShapeSelectionTransformerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
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

    a2 = TSD::DrawableSelectionTransformerArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ShapeSelectionTransformerArchive::ByteSizeLong(TSD::InfoCollectionSelectionTransformerHelperArchive ***this)
{
  if (this[2])
  {
    v3 = TSD::DrawableSelectionTransformerArchive::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::ShapeSelectionTransformerArchive::MergeFrom(TSD::ShapeSelectionTransformerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ShapeSelectionTransformerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ShapeSelectionTransformerArchive::MergeFrom(uint64_t this, const TSD::ShapeSelectionTransformerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableSelectionTransformerArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSD::_DrawableSelectionTransformerArchive_default_instance_;
    }

    return TSD::DrawableSelectionTransformerArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::ShapeSelectionTransformerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ShapeSelectionTransformerArchive::Clear(this);

    return TSD::ShapeSelectionTransformerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ShapeSelectionTransformerArchive::CopyFrom(uint64_t *this, const TSD::ShapeSelectionTransformerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ShapeSelectionTransformerArchive::Clear(this);

    return TSD::ShapeSelectionTransformerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ShapeSelectionTransformerArchive::IsInitialized(TSD::DrawableSelectionTransformerArchive **this)
{
  if (this[2])
  {
    return TSD::DrawableSelectionTransformerArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::ShapeSelectionTransformerArchive::InternalSwap(TSD::ShapeSelectionTransformerArchive *this, TSD::ShapeSelectionTransformerArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSD::GroupSelectionTransformerArchive *TSD::GroupSelectionTransformerArchive::GroupSelectionTransformerArchive(TSD::GroupSelectionTransformerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857BFB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GroupSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857BFB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GroupSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::GroupSelectionTransformerArchive *TSD::GroupSelectionTransformerArchive::GroupSelectionTransformerArchive(TSD::GroupSelectionTransformerArchive *this, const TSD::GroupSelectionTransformerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857BFB8;
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
  return this;
}

void TSD::GroupSelectionTransformerArchive::~GroupSelectionTransformerArchive(TSD::GroupSelectionTransformerArchive *this)
{
  if (this != &TSD::_GroupSelectionTransformerArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::DrawableSelectionTransformerArchive::~DrawableSelectionTransformerArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::GroupSelectionTransformerArchive::~GroupSelectionTransformerArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::GroupSelectionTransformerArchive::default_instance(TSD::GroupSelectionTransformerArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GroupSelectionTransformerArchive_default_instance_;
}

uint64_t *TSD::GroupSelectionTransformerArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::DrawableSelectionTransformerArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::GroupSelectionTransformerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_27670AF08(a3, &v15) & 1) == 0)
  {
    v5 = (v15 + 1);
    v6 = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v15 + 2);
LABEL_6:
      v15 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v15, (v7 - 128));
    v15 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v13;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableSelectionTransformerArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_27680FE00(a3, v10, v5);
    }

    else
    {
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
        return v15;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v15 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v15;
}

unsigned __int8 *TSD::GroupSelectionTransformerArchive::_InternalSerialize(TSD::GroupSelectionTransformerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
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

    a2 = TSD::DrawableSelectionTransformerArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::GroupSelectionTransformerArchive::ByteSizeLong(TSD::InfoCollectionSelectionTransformerHelperArchive ***this)
{
  if (this[2])
  {
    v3 = TSD::DrawableSelectionTransformerArchive::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::GroupSelectionTransformerArchive::MergeFrom(TSD::GroupSelectionTransformerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::GroupSelectionTransformerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::GroupSelectionTransformerArchive::MergeFrom(uint64_t this, const TSD::GroupSelectionTransformerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableSelectionTransformerArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSD::_DrawableSelectionTransformerArchive_default_instance_;
    }

    return TSD::DrawableSelectionTransformerArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::GroupSelectionTransformerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GroupSelectionTransformerArchive::Clear(this);

    return TSD::GroupSelectionTransformerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::GroupSelectionTransformerArchive::CopyFrom(uint64_t *this, const TSD::GroupSelectionTransformerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GroupSelectionTransformerArchive::Clear(this);

    return TSD::GroupSelectionTransformerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::GroupSelectionTransformerArchive::IsInitialized(TSD::DrawableSelectionTransformerArchive **this)
{
  if (this[2])
  {
    return TSD::DrawableSelectionTransformerArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::GroupSelectionTransformerArchive::InternalSwap(TSD::GroupSelectionTransformerArchive *this, TSD::GroupSelectionTransformerArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSP::UUID *TSD::PencilAnnotationSelectionTransformerArchive::clear_pencil_annotation_uuid(TSD::PencilAnnotationSelectionTransformerArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::PencilAnnotationSelectionTransformerArchive *TSD::PencilAnnotationSelectionTransformerArchive::PencilAnnotationSelectionTransformerArchive(TSD::PencilAnnotationSelectionTransformerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857C068;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857C068;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::PencilAnnotationSelectionTransformerArchive *TSD::PencilAnnotationSelectionTransformerArchive::PencilAnnotationSelectionTransformerArchive(TSD::PencilAnnotationSelectionTransformerArchive *this, const TSD::PencilAnnotationSelectionTransformerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857C068;
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
  return this;
}

void TSD::PencilAnnotationSelectionTransformerArchive::~PencilAnnotationSelectionTransformerArchive(TSD::PencilAnnotationSelectionTransformerArchive *this)
{
  if (this != &TSD::_PencilAnnotationSelectionTransformerArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::PencilAnnotationSelectionTransformerArchive::~PencilAnnotationSelectionTransformerArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::PencilAnnotationSelectionTransformerArchive::default_instance(TSD::PencilAnnotationSelectionTransformerArchive *this)
{
  if (atomic_load_explicit(scc_info_PencilAnnotationSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_PencilAnnotationSelectionTransformerArchive_default_instance_;
}

uint64_t *TSD::PencilAnnotationSelectionTransformerArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::UUID::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::PencilAnnotationSelectionTransformerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_27670AF08(a3, &v16) & 1) == 0)
  {
    v5 = (v16 + 1);
    v6 = *v16;
    if ((*v16 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v16 + 2);
LABEL_6:
      v16 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v16, (v7 - 128));
    v16 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v14;
LABEL_7:
    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v10 = *(a1 + 24);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C9BAE0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27680C988(a3, v10, v5);
    }

    else
    {
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
        return v16;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v9 = google::protobuf::internal::UnknownFieldParse();
    }

    v16 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  return v16;
}

unsigned __int8 *TSD::PencilAnnotationSelectionTransformerArchive::_InternalSerialize(TSD::PencilAnnotationSelectionTransformerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::PencilAnnotationSelectionTransformerArchive::ByteSizeLong(TSP::UUID **this)
{
  if (this[2])
  {
    v3 = TSP::UUID::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSD::PencilAnnotationSelectionTransformerArchive::MergeFrom(TSD::PencilAnnotationSelectionTransformerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::PencilAnnotationSelectionTransformerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::PencilAnnotationSelectionTransformerArchive::MergeFrom(uint64_t this, const TSD::PencilAnnotationSelectionTransformerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 3);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C9BAE0](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D809E0];
    }

    return TSP::UUID::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::PencilAnnotationSelectionTransformerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PencilAnnotationSelectionTransformerArchive::Clear(this);

    return TSD::PencilAnnotationSelectionTransformerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::PencilAnnotationSelectionTransformerArchive::CopyFrom(uint64_t *this, const TSD::PencilAnnotationSelectionTransformerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PencilAnnotationSelectionTransformerArchive::Clear(this);

    return TSD::PencilAnnotationSelectionTransformerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::PencilAnnotationSelectionTransformerArchive::IsInitialized(TSP::UUID **this)
{
  if (this[2])
  {
    return TSP::UUID::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::PencilAnnotationSelectionTransformerArchive::InternalSwap(TSD::PencilAnnotationSelectionTransformerArchive *this, TSD::PencilAnnotationSelectionTransformerArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSD::FreehandDrawingOpacityCommandArchive *TSD::FreehandDrawingOpacityCommandArchive::FreehandDrawingOpacityCommandArchive(TSD::FreehandDrawingOpacityCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857C118;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingOpacityCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857C118;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingOpacityCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::FreehandDrawingOpacityCommandArchive *TSD::FreehandDrawingOpacityCommandArchive::FreehandDrawingOpacityCommandArchive(TSD::FreehandDrawingOpacityCommandArchive *this, const TSD::FreehandDrawingOpacityCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857C118;
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
  *(this + 2) = *(a2 + 2);
  return this;
}

void TSD::FreehandDrawingOpacityCommandArchive::~FreehandDrawingOpacityCommandArchive(TSD::FreehandDrawingOpacityCommandArchive *this)
{
  if (this != &TSD::_FreehandDrawingOpacityCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::InfoCommandArchive::~InfoCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::FreehandDrawingOpacityCommandArchive::~FreehandDrawingOpacityCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::FreehandDrawingOpacityCommandArchive::default_instance(TSD::FreehandDrawingOpacityCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_FreehandDrawingOpacityCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_FreehandDrawingOpacityCommandArchive_default_instance_;
}

uint64_t *TSD::FreehandDrawingOpacityCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSD::InfoCommandArchive::Clear(this[3]);
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
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

google::protobuf::internal *TSD::FreehandDrawingOpacityCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v21) & 1) == 0)
  {
    while (1)
    {
      v7 = (v21 + 1);
      v8 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v9 - 128));
      v21 = TagFallback;
      if (!TagFallback)
      {
LABEL_36:
        v21 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 25)
        {
          v16 = *v7;
          v14 = (v7 + 8);
          v5 |= 4u;
          *(a1 + 40) = v16;
          goto LABEL_24;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 17)
        {
          v15 = *v7;
          v14 = (v7 + 8);
          v5 |= 2u;
          *(a1 + 32) = v15;
LABEL_24:
          v21 = v14;
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

          v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v18);
          *(a1 + 24) = v17;
          v7 = v21;
        }

        v13 = sub_27680EFE0(a3, v17, v7);
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
      v21 = v13;
      if (!v13)
      {
        goto LABEL_36;
      }

LABEL_31:
      if (sub_27670AF08(a3, &v21))
      {
        goto LABEL_2;
      }
    }

    v7 = (v21 + 2);
LABEL_6:
    v21 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v21;
}

unsigned __int8 *TSD::FreehandDrawingOpacityCommandArchive::_InternalSerialize(TSD::FreehandDrawingOpacityCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::InfoCommandArchive::_InternalSerialize(v7, v9, a3, a4);
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

  v13 = *(this + 4);
  *a2 = 17;
  *(a2 + 1) = v13;
  a2 += 9;
  if ((v6 & 4) != 0)
  {
LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 5);
    *a2 = 25;
    *(a2 + 1) = v14;
    a2 += 9;
  }

LABEL_21:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::FreehandDrawingOpacityCommandArchive::ByteSizeLong(TSD::FreehandDrawingOpacityCommandArchive *this)
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

  v5 = v3 + 9;
  if ((v2 & 2) == 0)
  {
    v5 = v3;
  }

  if ((v2 & 4) != 0)
  {
    v5 += 9;
  }

  if ((v2 & 6) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

uint64_t TSD::FreehandDrawingOpacityCommandArchive::MergeFrom(TSD::FreehandDrawingOpacityCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::FreehandDrawingOpacityCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::FreehandDrawingOpacityCommandArchive::MergeFrom(uint64_t this, const TSD::FreehandDrawingOpacityCommandArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_InfoCommandArchive_default_instance_;
      }

      this = TSD::InfoCommandArchive::MergeFrom(v6, v8);
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
        *(v3 + 40) = *(a2 + 5);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 4);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSD::FreehandDrawingOpacityCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingOpacityCommandArchive::Clear(this);

    return TSD::FreehandDrawingOpacityCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::FreehandDrawingOpacityCommandArchive::CopyFrom(uint64_t *this, const TSD::FreehandDrawingOpacityCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingOpacityCommandArchive::Clear(this);

    return TSD::FreehandDrawingOpacityCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::FreehandDrawingOpacityCommandArchive::IsInitialized(TSD::InfoCommandArchive **this)
{
  if (this[2])
  {
    return TSD::InfoCommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

__n128 TSD::FreehandDrawingOpacityCommandArchive::InternalSwap(TSD::FreehandDrawingOpacityCommandArchive *this, TSD::FreehandDrawingOpacityCommandArchive *a2)
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

uint64_t *TSD::FreehandDrawingAnimationCommandArchive::clear_animation(TSD::FreehandDrawingAnimationCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::FreehandDrawingAnimationArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSD::FreehandDrawingAnimationCommandArchive::clear_old_animation(TSD::FreehandDrawingAnimationCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::FreehandDrawingAnimationArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::FreehandDrawingAnimationCommandArchive *TSD::FreehandDrawingAnimationCommandArchive::FreehandDrawingAnimationCommandArchive(TSD::FreehandDrawingAnimationCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857C1C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingAnimationCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857C1C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingAnimationCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::FreehandDrawingAnimationCommandArchive *TSD::FreehandDrawingAnimationCommandArchive::FreehandDrawingAnimationCommandArchive(TSD::FreehandDrawingAnimationCommandArchive *this, const TSD::FreehandDrawingAnimationCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857C1C8;
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

void TSD::FreehandDrawingAnimationCommandArchive::~FreehandDrawingAnimationCommandArchive(TSD::FreehandDrawingAnimationCommandArchive *this)
{
  if (this != &TSD::_FreehandDrawingAnimationCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::InfoCommandArchive::~InfoCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSD::FreehandDrawingAnimationArchive::~FreehandDrawingAnimationArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSD::FreehandDrawingAnimationArchive::~FreehandDrawingAnimationArchive(v4);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::FreehandDrawingAnimationCommandArchive::~FreehandDrawingAnimationCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::FreehandDrawingAnimationCommandArchive::default_instance(TSD::FreehandDrawingAnimationCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_FreehandDrawingAnimationCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_FreehandDrawingAnimationCommandArchive_default_instance_;
}

uint64_t *TSD::FreehandDrawingAnimationCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSD::InfoCommandArchive::Clear(this[3]);
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

    this = TSD::FreehandDrawingAnimationArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSD::FreehandDrawingAnimationArchive::Clear(*(v1 + 40));
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

google::protobuf::internal *TSD::FreehandDrawingAnimationCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_27670AF08(a3, &v20) & 1) == 0)
  {
    v5 = (v20 + 1);
    v6 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v20 + 2);
LABEL_6:
      v20 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v18;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 4u;
      v12 = *(a1 + 40);
      if (!v12)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::FreehandDrawingAnimationArchive>(v14);
        *(a1 + 40) = v12;
LABEL_30:
        v5 = v20;
      }

LABEL_31:
      v11 = sub_27680C718(a3, v12, v5);
      goto LABEL_37;
    }

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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::FreehandDrawingAnimationArchive>(v13);
        *(a1 + 32) = v12;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

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
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_37;
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

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v16);
      *(a1 + 24) = v15;
      v5 = v20;
    }

    v11 = sub_27680EFE0(a3, v15, v5);
LABEL_37:
    v20 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *TSD::FreehandDrawingAnimationCommandArchive::_InternalSerialize(TSD::FreehandDrawingAnimationCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::InfoCommandArchive::_InternalSerialize(v7, v9, a3, a4);
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

  a2 = TSD::FreehandDrawingAnimationArchive::_InternalSerialize(v13, v15, a3, a4);
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

    a2 = TSD::FreehandDrawingAnimationArchive::_InternalSerialize(v19, v21, a3, a4);
  }

LABEL_35:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::FreehandDrawingAnimationCommandArchive::ByteSizeLong(TSD::FreehandDrawingAnimationCommandArchive *this)
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

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSD::FreehandDrawingAnimationArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v6 = TSD::FreehandDrawingAnimationArchive::ByteSizeLong(*(this + 5));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t TSD::FreehandDrawingAnimationCommandArchive::MergeFrom(TSD::FreehandDrawingAnimationCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::FreehandDrawingAnimationCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::FreehandDrawingAnimationCommandArchive::MergeFrom(uint64_t this, const TSD::FreehandDrawingAnimationCommandArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_InfoCommandArchive_default_instance_;
      }

      this = TSD::InfoCommandArchive::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::FreehandDrawingAnimationArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSD::_FreehandDrawingAnimationArchive_default_instance_;
      }

      this = TSD::FreehandDrawingAnimationArchive::MergeFrom(v9, v11);
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::FreehandDrawingAnimationArchive>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TSD::_FreehandDrawingAnimationArchive_default_instance_;
      }

      return TSD::FreehandDrawingAnimationArchive::MergeFrom(v12, v14);
    }
  }

  return this;
}

uint64_t *TSD::FreehandDrawingAnimationCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingAnimationCommandArchive::Clear(this);

    return TSD::FreehandDrawingAnimationCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::FreehandDrawingAnimationCommandArchive::CopyFrom(uint64_t *this, const TSD::FreehandDrawingAnimationCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingAnimationCommandArchive::Clear(this);

    return TSD::FreehandDrawingAnimationCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::FreehandDrawingAnimationCommandArchive::IsInitialized(TSD::InfoCommandArchive **this)
{
  if (this[2])
  {
    return TSD::InfoCommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

__n128 TSD::FreehandDrawingAnimationCommandArchive::InternalSwap(TSD::FreehandDrawingAnimationCommandArchive *this, TSD::FreehandDrawingAnimationCommandArchive *a2)
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

TSK::CommandArchive *TSD::InsertCaptionOrTitleCommandArchive::clear_super(TSD::InsertCaptionOrTitleCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSD::InsertCaptionOrTitleCommandArchive::clear_drawable_info_id_path(TSD::InsertCaptionOrTitleCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::InsertCaptionOrTitleCommandArchive::clear_caption_or_title_info(TSD::InsertCaptionOrTitleCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::UUID *TSD::InsertCaptionOrTitleCommandArchive::clear_added_caption_or_title_uuid(TSD::InsertCaptionOrTitleCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSD::InsertCaptionOrTitleCommandArchive::clear_undo_object(TSD::InsertCaptionOrTitleCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSD::InsertCaptionOrTitleCommandArchive *TSD::InsertCaptionOrTitleCommandArchive::InsertCaptionOrTitleCommandArchive(TSD::InsertCaptionOrTitleCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857C278;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InsertCaptionOrTitleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 16) = 1;
  return this;
}

TSD::InsertCaptionOrTitleCommandArchive *TSD::InsertCaptionOrTitleCommandArchive::InsertCaptionOrTitleCommandArchive(TSD::InsertCaptionOrTitleCommandArchive *this, const TSD::InsertCaptionOrTitleCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857C278;
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
  *(this + 16) = *(a2 + 16);
  return this;
}

void TSD::InsertCaptionOrTitleCommandArchive::~InsertCaptionOrTitleCommandArchive(TSD::InsertCaptionOrTitleCommandArchive *this)
{
  sub_2767FC358(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::InsertCaptionOrTitleCommandArchive::~InsertCaptionOrTitleCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *sub_2767FC358(void *result)
{
  if (result != &TSD::_InsertCaptionOrTitleCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C9B420]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C9B7C0]();
      MEMORY[0x277C9C1D0](v3, 0x10A1C40290C9B23);
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[7];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::InsertCaptionOrTitleCommandArchive::default_instance(TSD::InsertCaptionOrTitleCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_InsertCaptionOrTitleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_InsertCaptionOrTitleCommandArchive_default_instance_;
}

uint64_t *TSD::InsertCaptionOrTitleCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x3F) != 0)
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

        goto LABEL_15;
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
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    this = TSP::Reference::Clear(*(v1 + 40));
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
LABEL_8:
        *(v1 + 64) = 1;
        goto LABEL_9;
      }

LABEL_7:
      this = TSP::Reference::Clear(*(v1 + 56));
      goto LABEL_8;
    }

LABEL_16:
    this = TSP::UUID::Clear(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
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

google::protobuf::internal *TSD::InsertCaptionOrTitleCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  while ((sub_27670AF08(a3, &v32) & 1) == 0)
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
        v6 = v30;
        goto LABEL_7;
      }

      v5 = (v32 + 2);
    }

    v32 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 3)
    {
      if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 8u;
        v19 = *(a1 + 48);
        if (!v19)
        {
          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x277C9BAE0](v20);
          LODWORD(v19) = v21;
          *(a1 + 48) = v21;
          v5 = v32;
        }

        v15 = sub_27680C988(a3, v19, v5);
        goto LABEL_61;
      }

      if (v8 != 5)
      {
        if (v8 != 6 || v6 != 50)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 0x10u;
        v10 = *(a1 + 56);
        if (!v10)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C9BB20](v13);
          LODWORD(v10) = v14;
          *(a1 + 56) = v14;
LABEL_27:
          v5 = v32;
        }

LABEL_28:
        v15 = sub_27680B6EC(a3, v10, v5);
        goto LABEL_61;
      }

      if (v6 != 40)
      {
        goto LABEL_54;
      }

      v26 = (v5 + 1);
      v25 = *v5;
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_51;
      }

      v27 = *v26;
      v25 = (v27 << 7) + v25 - 128;
      if ((v27 & 0x80000000) == 0)
      {
        v26 = (v5 + 2);
LABEL_51:
        v32 = v26;
        goto LABEL_52;
      }

      v32 = google::protobuf::internal::VarintParseSlow64(v5, v25);
      if (!v32)
      {
        return 0;
      }

LABEL_52:
      if ((v25 - 1) > 1)
      {
        sub_27680FF0C();
      }

      else
      {
        *(a1 + 16) |= 0x20u;
        *(a1 + 64) = v25;
      }
    }

    else
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_54;
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

          v18 = MEMORY[0x277C9BA50](v17);
          LODWORD(v16) = v18;
          *(a1 + 24) = v18;
          v5 = v32;
        }

        v15 = sub_27680C3D8(a3, v16, v5);
      }

      else
      {
        if (v8 != 2)
        {
          if (v8 != 3 || v6 != 26)
          {
LABEL_54:
            if (v6)
            {
              v28 = (v6 & 7) == 4;
            }

            else
            {
              v28 = 1;
            }

            if (v28)
            {
              *(a3 + 80) = v6 - 1;
              return v32;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27670AF80((a1 + 8));
            }

            v15 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_61;
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

            v12 = MEMORY[0x277C9BB20](v11);
            LODWORD(v10) = v12;
            *(a1 + 40) = v12;
            goto LABEL_27;
          }

          goto LABEL_28;
        }

        if (v6 != 18)
        {
          goto LABEL_54;
        }

        *(a1 + 16) |= 2u;
        v22 = *(a1 + 32);
        if (!v22)
        {
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = MEMORY[0x277C9BB10](v23);
          LODWORD(v22) = v24;
          *(a1 + 32) = v24;
          v5 = v32;
        }

        v15 = sub_27680EB00(a3, v22, v5);
      }

LABEL_61:
      v32 = v15;
      if (!v15)
      {
        return 0;
      }
    }
  }

  return v32;
}

unsigned __int8 *TSD::InsertCaptionOrTitleCommandArchive::_InternalSerialize(TSD::InsertCaptionOrTitleCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 3);
    *a2 = 10;
    v11 = *(v10 + 5);
    if (v11 > 0x7F)
    {
      a2[1] = v11 | 0x80;
      v14 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = a2 + 3;
        do
        {
          *(v12 - 1) = v14 | 0x80;
          v19 = v14 >> 7;
          ++v12;
          v20 = v14 >> 14;
          v14 >>= 7;
        }

        while (v20);
        *(v12 - 1) = v19;
      }

      else
      {
        a2[2] = v14;
        v12 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v11;
      v12 = a2 + 2;
    }

    a2 = TSK::CommandArchive::_InternalSerialize(v10, v12, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
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

  v21 = *(this + 4);
  *a2 = 18;
  v22 = *(v21 + 10);
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

  a2 = TSP::UUIDPath::_InternalSerialize(v21, v23, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 5);
  *a2 = 26;
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

  a2 = TSP::Reference::_InternalSerialize(v27, v29, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_59;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v33 = *(this + 6);
  *a2 = 34;
  v34 = *(v33 + 5);
  if (v34 > 0x7F)
  {
    a2[1] = v34 | 0x80;
    v36 = v34 >> 7;
    if (v34 >> 14)
    {
      v35 = a2 + 3;
      do
      {
        *(v35 - 1) = v36 | 0x80;
        v37 = v36 >> 7;
        ++v35;
        v38 = v36 >> 14;
        v36 >>= 7;
      }

      while (v38);
      *(v35 - 1) = v37;
    }

    else
    {
      a2[2] = v36;
      v35 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v34;
    v35 = a2 + 2;
  }

  a2 = TSP::UUID::_InternalSerialize(v33, v35, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_7;
  }

LABEL_59:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v39 = *(this + 16);
  *a2 = 40;
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
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      a2[2] = v40;
      a2 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    a2[1] = v39;
    a2 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_7:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 7);
  *a2 = 50;
  v8 = *(v7 + 5);
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v13 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = a2 + 3;
      do
      {
        *(v9 - 1) = v13 | 0x80;
        v15 = v13 >> 7;
        ++v9;
        v16 = v13 >> 14;
        v13 >>= 7;
      }

      while (v16);
      *(v9 - 1) = v15;
    }

    else
    {
      a2[2] = v13;
      v9 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v8;
    v9 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
LABEL_23:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::InsertCaptionOrTitleCommandArchive::ByteSizeLong(TSD::InsertCaptionOrTitleCommandArchive *this)
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

  if ((v2 & 0x3E) != 0)
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

        goto LABEL_13;
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
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }

LABEL_13:
    v7 = TSP::UUID::ByteSizeLong(*(this + 6));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
LABEL_9:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_19;
      }

LABEL_15:
      v9 = *(this + 16);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v10;
      goto LABEL_19;
    }

LABEL_14:
    v8 = TSP::Reference::ByteSizeLong(*(this + 7));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

LABEL_19:
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

uint64_t TSD::InsertCaptionOrTitleCommandArchive::MergeFrom(TSD::InsertCaptionOrTitleCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::InsertCaptionOrTitleCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::InsertCaptionOrTitleCommandArchive::MergeFrom(uint64_t this, const TSD::InsertCaptionOrTitleCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C9BA50](v7);
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

        v9 = MEMORY[0x277C9BB10](v10);
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

    v12 = MEMORY[0x277D80A18];
    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v13 = *(v3 + 40);
      if (!v13)
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C9BB20](v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = v12;
      }

      this = TSP::Reference::MergeFrom(v13, v15);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_45;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C9BAE0](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = MEMORY[0x277D809E0];
    }

    this = TSP::UUID::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_25:
      if ((v5 & 0x20) == 0)
      {
LABEL_27:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_26:
      *(v3 + 64) = *(a2 + 16);
      goto LABEL_27;
    }

LABEL_45:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C9BB20](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = v12;
    }

    this = TSP::Reference::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  return this;
}

uint64_t *TSD::InsertCaptionOrTitleCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::InsertCaptionOrTitleCommandArchive::Clear(this);

    return TSD::InsertCaptionOrTitleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::InsertCaptionOrTitleCommandArchive::CopyFrom(uint64_t *this, const TSD::InsertCaptionOrTitleCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::InsertCaptionOrTitleCommandArchive::Clear(this);

    return TSD::InsertCaptionOrTitleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::InsertCaptionOrTitleCommandArchive::IsInitialized(TSD::InsertCaptionOrTitleCommandArchive *this)
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
      result = TSP::Reference::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 7));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::InsertCaptionOrTitleCommandArchive::InternalSwap(TSD::InsertCaptionOrTitleCommandArchive *this, TSD::InsertCaptionOrTitleCommandArchive *a2)
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
  LODWORD(v10) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  return result;
}

TSK::CommandArchive *TSD::RemoveCaptionOrTitleCommandArchive::clear_super(TSD::RemoveCaptionOrTitleCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSD::RemoveCaptionOrTitleCommandArchive::clear_drawable_info_id_path(TSD::RemoveCaptionOrTitleCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::RemoveCaptionOrTitleCommandArchive::clear_removed_caption_or_title_info(TSD::RemoveCaptionOrTitleCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::UUID *TSD::RemoveCaptionOrTitleCommandArchive::clear_removed_caption_or_title_uuid(TSD::RemoveCaptionOrTitleCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSD::RemoveCaptionOrTitleCommandArchive *TSD::RemoveCaptionOrTitleCommandArchive::RemoveCaptionOrTitleCommandArchive(TSD::RemoveCaptionOrTitleCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857C328;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoveCaptionOrTitleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 14) = 1;
  return this;
}

TSD::RemoveCaptionOrTitleCommandArchive *TSD::RemoveCaptionOrTitleCommandArchive::RemoveCaptionOrTitleCommandArchive(TSD::RemoveCaptionOrTitleCommandArchive *this, const TSD::RemoveCaptionOrTitleCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857C328;
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

void TSD::RemoveCaptionOrTitleCommandArchive::~RemoveCaptionOrTitleCommandArchive(TSD::RemoveCaptionOrTitleCommandArchive *this)
{
  sub_2767FD5F8(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::RemoveCaptionOrTitleCommandArchive::~RemoveCaptionOrTitleCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *sub_2767FD5F8(void *result)
{
  if (result != &TSD::_RemoveCaptionOrTitleCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C9B420]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C9B7C0]();
      MEMORY[0x277C9C1D0](v3, 0x10A1C40290C9B23);
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[6];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::RemoveCaptionOrTitleCommandArchive::default_instance(TSD::RemoveCaptionOrTitleCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_RemoveCaptionOrTitleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_RemoveCaptionOrTitleCommandArchive_default_instance_;
}

uint64_t *TSD::RemoveCaptionOrTitleCommandArchive::Clear(uint64_t *this)
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
        *(v1 + 56) = 1;
        goto LABEL_8;
      }

LABEL_6:
      this = TSP::UUID::Clear(*(v1 + 48));
      goto LABEL_7;
    }

LABEL_14:
    this = TSP::Reference::Clear(*(v1 + 40));
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

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::RemoveCaptionOrTitleCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  while ((sub_27670AF08(a3, &v30) & 1) == 0)
  {
    v5 = (v30 + 1);
    v6 = *v30;
    if (*v30 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v7 - 128));
        v30 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v28;
        goto LABEL_7;
      }

      v5 = (v30 + 2);
    }

    v30 = v5;
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
        v23 = *(a1 + 24);
        if (!v23)
        {
          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x277C9BA50](v24);
          LODWORD(v23) = v25;
          *(a1 + 24) = v25;
          v5 = v30;
        }

        v16 = sub_27680C3D8(a3, v23, v5);
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_47:
          if (v6)
          {
            v26 = (v6 & 7) == 4;
          }

          else
          {
            v26 = 1;
          }

          if (v26)
          {
            *(a3 + 80) = v6 - 1;
            return v30;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v16 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_54;
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

          v15 = MEMORY[0x277C9BB10](v14);
          LODWORD(v13) = v15;
          *(a1 + 32) = v15;
          v5 = v30;
        }

        v16 = sub_27680EB00(a3, v13, v5);
      }

LABEL_54:
      v30 = v16;
      if (!v16)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 4u;
        v17 = *(a1 + 40);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x277C9BB20](v18);
          LODWORD(v17) = v19;
          *(a1 + 40) = v19;
          v5 = v30;
        }

        v16 = sub_27680B6EC(a3, v17, v5);
        goto LABEL_54;
      }

      if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_47;
        }

        *(a1 + 16) |= 8u;
        v20 = *(a1 + 48);
        if (!v20)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C9BAE0](v21);
          LODWORD(v20) = v22;
          *(a1 + 48) = v22;
          v5 = v30;
        }

        v16 = sub_27680C988(a3, v20, v5);
        goto LABEL_54;
      }

      if (v8 != 5 || v6 != 40)
      {
        goto LABEL_47;
      }

      v10 = (v5 + 1);
      v9 = *v5;
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v11 = *v10;
      v9 = (v11 << 7) + v9 - 128;
      if ((v11 & 0x80000000) == 0)
      {
        v10 = (v5 + 2);
LABEL_15:
        v30 = v10;
        goto LABEL_16;
      }

      v30 = google::protobuf::internal::VarintParseSlow64(v5, v9);
      if (!v30)
      {
        return 0;
      }

LABEL_16:
      if ((v9 - 1) > 1)
      {
        sub_27680FF0C();
      }

      else
      {
        *(a1 + 16) |= 0x10u;
        *(a1 + 56) = v9;
      }
    }
  }

  return v30;
}

unsigned __int8 *TSD::RemoveCaptionOrTitleCommandArchive::_InternalSerialize(TSD::RemoveCaptionOrTitleCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
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

  a2 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_56;
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

  a2 = TSP::UUID::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 14);
    *a2 = 40;
    if (v31 > 0x7F)
    {
      a2[1] = v31 | 0x80;
      v32 = v31 >> 7;
      if (v31 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v32 | 0x80;
          v33 = v32 >> 7;
          ++a2;
          v34 = v32 >> 14;
          v32 >>= 7;
        }

        while (v34);
        *(a2 - 1) = v33;
      }

      else
      {
        a2[2] = v32;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v31;
      a2 += 2;
    }
  }

LABEL_56:
  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v35 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::RemoveCaptionOrTitleCommandArchive::ByteSizeLong(TSD::RemoveCaptionOrTitleCommandArchive *this)
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

    v6 = TSP::Reference::ByteSizeLong(*(this + 5));
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
    v7 = TSP::UUID::ByteSizeLong(*(this + 6));
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

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSD::RemoveCaptionOrTitleCommandArchive::MergeFrom(TSD::RemoveCaptionOrTitleCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::RemoveCaptionOrTitleCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::RemoveCaptionOrTitleCommandArchive::MergeFrom(uint64_t this, const TSD::RemoveCaptionOrTitleCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C9BA50](v7);
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

      v9 = MEMORY[0x277C9BB10](v10);
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

      v12 = MEMORY[0x277C9BB20](v13);
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
      *(v3 + 56) = *(a2 + 14);
      goto LABEL_10;
    }

LABEL_36:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = MEMORY[0x277C9BAE0](v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = MEMORY[0x277D809E0];
    }

    this = TSP::UUID::MergeFrom(v15, v17);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TSD::RemoveCaptionOrTitleCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::RemoveCaptionOrTitleCommandArchive::Clear(this);

    return TSD::RemoveCaptionOrTitleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::RemoveCaptionOrTitleCommandArchive::CopyFrom(uint64_t *this, const TSD::RemoveCaptionOrTitleCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::RemoveCaptionOrTitleCommandArchive::Clear(this);

    return TSD::RemoveCaptionOrTitleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::RemoveCaptionOrTitleCommandArchive::IsInitialized(TSD::RemoveCaptionOrTitleCommandArchive *this)
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
      result = TSP::Reference::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = TSP::UUID::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::RemoveCaptionOrTitleCommandArchive::InternalSwap(TSD::RemoveCaptionOrTitleCommandArchive *this, TSD::RemoveCaptionOrTitleCommandArchive *a2)
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

TSD::SetCaptionOrTitleVisibilityCommandArchive *TSD::SetCaptionOrTitleVisibilityCommandArchive::SetCaptionOrTitleVisibilityCommandArchive(TSD::SetCaptionOrTitleVisibilityCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857C3D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SetCaptionOrTitleVisibilityCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 9) = 1;
  return this;
}

TSD::SetCaptionOrTitleVisibilityCommandArchive *TSD::SetCaptionOrTitleVisibilityCommandArchive::SetCaptionOrTitleVisibilityCommandArchive(TSD::SetCaptionOrTitleVisibilityCommandArchive *this, const TSD::SetCaptionOrTitleVisibilityCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857C3D8;
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

void TSD::SetCaptionOrTitleVisibilityCommandArchive::~SetCaptionOrTitleVisibilityCommandArchive(TSD::SetCaptionOrTitleVisibilityCommandArchive *this)
{
  if (this != &TSD::_SetCaptionOrTitleVisibilityCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::InfoCommandArchive::~InfoCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::SetCaptionOrTitleVisibilityCommandArchive::~SetCaptionOrTitleVisibilityCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::SetCaptionOrTitleVisibilityCommandArchive::default_instance(TSD::SetCaptionOrTitleVisibilityCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_SetCaptionOrTitleVisibilityCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_SetCaptionOrTitleVisibilityCommandArchive_default_instance_;
}

uint64_t *TSD::SetCaptionOrTitleVisibilityCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::InfoCommandArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 28) = 1;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::SetCaptionOrTitleVisibilityCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v31) & 1) == 0)
  {
    while (1)
    {
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
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v9 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_58;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_38;
          }

          *(a1 + 16) |= 1u;
          v18 = *(a1 + 24);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v19);
            *(a1 + 24) = v18;
            v7 = v31;
          }

          v20 = sub_27680EFE0(a3, v18, v7);
        }

        else
        {
          if (v10 == 2 && v8 == 16)
          {
            v13 = (v7 + 1);
            v12 = *v7;
            if ((v12 & 0x8000000000000000) == 0)
            {
              goto LABEL_17;
            }

            v14 = *v13;
            v12 = (v14 << 7) + v12 - 128;
            if (v14 < 0)
            {
              v31 = google::protobuf::internal::VarintParseSlow64(v7, v12);
              if (!v31)
              {
                goto LABEL_58;
              }
            }

            else
            {
              v13 = (v7 + 2);
LABEL_17:
              v31 = v13;
            }

            if ((v12 - 1) > 1)
            {
              sub_27680FF48();
            }

            else
            {
              *(a1 + 16) |= 8u;
              *(a1 + 36) = v12;
            }

            goto LABEL_46;
          }

LABEL_38:
          if (v8)
          {
            v24 = (v8 & 7) == 4;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v20 = google::protobuf::internal::UnknownFieldParse();
        }

        v31 = v20;
        if (!v20)
        {
          goto LABEL_58;
        }

        goto LABEL_46;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_38;
        }

        v5 |= 2u;
        v22 = (v7 + 1);
        v21 = *v7;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        v23 = *v22;
        v21 = (v23 << 7) + v21 - 128;
        if ((v23 & 0x80000000) == 0)
        {
          v22 = (v7 + 2);
LABEL_37:
          v31 = v22;
          *(a1 + 32) = v21 != 0;
          goto LABEL_46;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v21);
        v31 = v29;
        *(a1 + 32) = v30 != 0;
        if (!v29)
        {
LABEL_58:
          v31 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_38;
        }

        v5 |= 4u;
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
          v31 = v16;
          *(a1 + 33) = v15 != 0;
          goto LABEL_46;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v31 = v27;
        *(a1 + 33) = v28 != 0;
        if (!v27)
        {
          goto LABEL_58;
        }
      }

LABEL_46:
      if (sub_27670AF08(a3, &v31))
      {
        goto LABEL_2;
      }
    }

    v7 = (v31 + 2);
LABEL_6:
    v31 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

unsigned __int8 *TSD::SetCaptionOrTitleVisibilityCommandArchive::_InternalSerialize(TSD::SetCaptionOrTitleVisibilityCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 9);
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
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
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

  a2 = TSD::InfoCommandArchive::_InternalSerialize(v7, v9, a3, a4);
  if ((v6 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 32);
  *a2 = 24;
  a2[1] = v17;
  a2 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_30:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 33);
    *a2 = 32;
    a2[1] = v18;
    a2 += 2;
  }

LABEL_33:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::SetCaptionOrTitleVisibilityCommandArchive::ByteSizeLong(TSD::SetCaptionOrTitleVisibilityCommandArchive *this)
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
    v3 += (v2 & 2) + ((v2 >> 1) & 2);
    if ((v2 & 8) != 0)
    {
      v5 = *(this + 9);
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v5 >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = 11;
      }

      v3 += v7;
    }
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

uint64_t TSD::SetCaptionOrTitleVisibilityCommandArchive::MergeFrom(TSD::SetCaptionOrTitleVisibilityCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::SetCaptionOrTitleVisibilityCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::SetCaptionOrTitleVisibilityCommandArchive::MergeFrom(uint64_t this, const TSD::SetCaptionOrTitleVisibilityCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_InfoCommandArchive_default_instance_;
      }

      this = TSD::InfoCommandArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
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
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 36) = *(a2 + 9);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 33) = *(a2 + 33);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSD::SetCaptionOrTitleVisibilityCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SetCaptionOrTitleVisibilityCommandArchive::Clear(this);

    return TSD::SetCaptionOrTitleVisibilityCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::SetCaptionOrTitleVisibilityCommandArchive::CopyFrom(uint64_t *this, const TSD::SetCaptionOrTitleVisibilityCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::SetCaptionOrTitleVisibilityCommandArchive::Clear(this);

    return TSD::SetCaptionOrTitleVisibilityCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::SetCaptionOrTitleVisibilityCommandArchive::IsInitialized(TSD::InfoCommandArchive **this)
{
  if (this[2])
  {
    return TSD::InfoCommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::SetCaptionOrTitleVisibilityCommandArchive::InternalSwap(TSD::SetCaptionOrTitleVisibilityCommandArchive *this, TSD::SetCaptionOrTitleVisibilityCommandArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOWORD(v6) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  LODWORD(v6) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  return result;
}

TSD::UndoObjectArchive *sub_2767FEEF8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276802AAC(a1, 1);
  TSD::UndoObjectArchive::UndoObjectArchive(v2, a1);
  return v2;
}

TSD::GroupDrawablesCommandArchive *sub_2767FEF84(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276802B38(a1, 1);
  TSD::GroupDrawablesCommandArchive::GroupDrawablesCommandArchive(v2, a1);
  return v2;
}

TSD::UngroupGroupCommandArchive *sub_2767FF010(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276802BC4(a1, 1);
  TSD::UngroupGroupCommandArchive::UngroupGroupCommandArchive(v2, a1);
  return v2;
}

TSD::ContainerRemoveChildrenCommandArchive *sub_2767FF09C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276802C50(a1, 1);
  TSD::ContainerRemoveChildrenCommandArchive::ContainerRemoveChildrenCommandArchive(v2, a1);
  return v2;
}

void *sub_2767FF128(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276802CDC(a1);
}

TSD::ContainerInsertChildrenCommandArchive *sub_2767FF1F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276802DDC(a1, 1);
  TSD::ContainerInsertChildrenCommandArchive::ContainerInsertChildrenCommandArchive(v2, a1);
  return v2;
}

TSD::ContainerInsertDrawablesCommandArchive *sub_2767FF280(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276802E68(a1, 1);
  TSD::ContainerInsertDrawablesCommandArchive::ContainerInsertDrawablesCommandArchive(v2, a1);
  return v2;
}

TSD::ContainerReorderChildrenCommandArchive *sub_2767FF30C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276802EF4(a1, 1);
  TSD::ContainerReorderChildrenCommandArchive::ContainerReorderChildrenCommandArchive(v2, a1);
  return v2;
}

TSD::GroupUngroupInformativeCommandArchive *sub_2767FF398(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276802F80(a1, 1);
  TSD::GroupUngroupInformativeCommandArchive::GroupUngroupInformativeCommandArchive(v2, a1);
  return v2;
}

void *sub_2767FF424(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27680300C(a1);
}

uint64_t sub_2767FF4F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27680310C(a1);
}

uint64_t sub_2767FF5C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803218(a1);
}

void *sub_2767FF69C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803320(a1);
}

void *sub_2767FF76C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803424(a1);
}

void *sub_2767FF83C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803528(a1);
}

void *sub_2767FF90C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27680362C(a1);
}

void *sub_2767FF9D8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27680372C(a1);
}

void *sub_2767FFAA8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803830(a1);
}

void *sub_2767FFB78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803934(a1);
}

void *sub_2767FFC44(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803A34(a1);
}

void *sub_2767FFD10(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803B34(a1);
}

uint64_t sub_2767FFDDC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803C34(a1);
}

uint64_t sub_2767FFEAC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803D38(a1);
}

uint64_t sub_2767FFF88(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803E48(a1);
}

void *sub_276800060(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276803F54(a1);
}

uint64_t sub_27680012C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276804054(a1);
}

TSD::MediaOriginalSizeCommandArchive *sub_276800220(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27680417C(a1, 1);
  TSD::MediaOriginalSizeCommandArchive::MediaOriginalSizeCommandArchive(v2, a1);
  return v2;
}

void *sub_2768002AC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276804208(a1);
}

void *sub_27680037C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27680430C(a1);
}

uint64_t sub_27680044C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276804410(a1);
}

uint64_t sub_276800520(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276804518(a1);
}

TSD::MediaFlagsCommandArchive *sub_276800600(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27680462C(a1, 1);
  TSD::MediaFlagsCommandArchive::MediaFlagsCommandArchive(v2, a1);
  return v2;
}

TSD::DrawablesCommandGroupArchive *sub_27680068C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2768046B8(a1, 1);
  TSD::DrawablesCommandGroupArchive::DrawablesCommandGroupArchive(v2, a1);
  return v2;
}

uint64_t sub_276800718(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276804744(a1);
}

TSD::DrawableHyperlinkCommandArchive *sub_2768007F0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276804850(a1, 1);
  TSD::DrawableHyperlinkCommandArchive::DrawableHyperlinkCommandArchive(v2, a1);
  return v2;
}

uint64_t sub_27680087C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2768048DC(a1);
}

uint64_t sub_27680094C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2768049E0(a1);
}

uint64_t sub_276800A4C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276804B14(a1);
}

uint64_t sub_276800B1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276804C18(a1);
}

void *sub_276800BF0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276804D20(a1);
}

TSD::AbstractGuideCommandArchive *sub_276800CC0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276804E24(a1, 1);
  TSD::AbstractGuideCommandArchive::AbstractGuideCommandArchive(v2, a1);
  return v2;
}

void *sub_276800D4C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276804EB0(a1);
}

uint64_t sub_276800E18(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276804FB0(a1);
}

TSD::DrawableAccessibilityDescriptionCommandArchive *sub_276800EE8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2768050B4(a1, 1);
  TSD::DrawableAccessibilityDescriptionCommandArchive::DrawableAccessibilityDescriptionCommandArchive(v2, a1);
  return v2;
}

uint64_t sub_276800F74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276805140(a1);
}

uint64_t sub_276801048(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276805248(a1);
}

void *sub_276801128(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27680535C(a1);
}

void *sub_2768011F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27680545C(a1);
}

TSD::InfoCollectionSelectionTransformerHelperArchive *sub_2768012C0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27680555C(a1, 1);
  TSD::InfoCollectionSelectionTransformerHelperArchive::InfoCollectionSelectionTransformerHelperArchive(v2, a1);
  return v2;
}

void *sub_27680134C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2768055E8(a1);
}

uint64_t sub_276801418(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2768056E8(a1, 1);
  *result = &unk_28857BCF8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

void *sub_276801488(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276805790(a1);
}

uint64_t sub_276801554(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276805890(a1, 1);
  *result = &unk_28857BE58;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

void *sub_2768015C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276805938(a1);
}

void *sub_276801690(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276805A38(a1);
}

void *sub_27680175C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276805B38(a1);
}

void *sub_276801828(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276805C38(a1);
}

void *sub_2768018F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276805D3C(a1);
}

TSD::InsertCaptionOrTitleCommandArchive *sub_2768019C8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276805E40(a1, 1);
  TSD::InsertCaptionOrTitleCommandArchive::InsertCaptionOrTitleCommandArchive(v2, a1);
  return v2;
}

TSD::RemoveCaptionOrTitleCommandArchive *sub_276801A54(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276805ECC(a1, 1);
  TSD::RemoveCaptionOrTitleCommandArchive::RemoveCaptionOrTitleCommandArchive(v2, a1);
  return v2;
}

TSD::SetCaptionOrTitleVisibilityCommandArchive *sub_276801AE0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276805F58(a1, 1);
  TSD::SetCaptionOrTitleVisibilityCommandArchive::SetCaptionOrTitleVisibilityCommandArchive(v2, a1);
  return v2;
}

void *sub_276802120(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276802164(a1, 0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_276802164(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680FF84(a1);
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

  return MEMORY[0x2821EADF8](a1, 24, sub_2768021EC);
}

void sub_2768021EC(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_276802200(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void sub_27680224C(void *a1)
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
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x277C9C1D0](v5, 0x1012C40EC159624);
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

std::string *sub_2768022E8(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
      result = std::string::operator=(v15, v13);
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
      v22 = sub_276802120(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276802394(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C9B950]();
          MEMORY[0x277C9C1D0](v5, 0x10A1C40C05B56FCLL);
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

uint64_t sub_276802418(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_2768024C8(v13, v15);
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
      v22 = MEMORY[0x277C9BB60](v18);
      result = sub_2768024C8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2768024D8(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C9B910]();
          MEMORY[0x277C9C1D0](v5, 0x10A1C40C05B56FCLL);
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

void sub_27680255C(void *a1)
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
          TSP::UUID::~UUID(*v3);
          MEMORY[0x277C9C1D0]();
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

uint64_t sub_2768025E0(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276802690(v13, v15);
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
      v22 = MEMORY[0x277C9BB50](v18);
      result = sub_276802690(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_2768026A0(uint64_t result, TSP::UUID **a2, TSP::UUID **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276802750(v13, v15);
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
      v22 = MEMORY[0x277C9BAE0](v18);
      result = sub_276802750(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276802760(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C9B990]();
          MEMORY[0x277C9C1D0](v5, 0x10A1C406130BDD3);
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

uint64_t sub_2768027E4(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276802894(v13, v15);
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
      v22 = MEMORY[0x277C9BB70](v18);
      result = sub_276802894(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

__n128 sub_2768028A4(void *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v12 = a1[10];
  v13 = a1[11];
  *(a1 + 5) = *(a2 + 80);
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  v14 = a1[12];
  v15 = a1[13];
  *(a1 + 6) = *(a2 + 96);
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  v16 = a1[14];
  v17 = a1[15];
  *(a1 + 7) = *(a2 + 112);
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  v18 = a1[16];
  v19 = a1[17];
  *(a1 + 8) = *(a2 + 128);
  *(a2 + 128) = v18;
  *(a2 + 136) = v19;
  v20 = a1[18];
  v21 = a1[19];
  *(a1 + 9) = *(a2 + 144);
  *(a2 + 144) = v20;
  *(a2 + 152) = v21;
  v22 = a1[20];
  v23 = a1[21];
  result = *(a2 + 160);
  *(a1 + 10) = result;
  *(a2 + 160) = v22;
  *(a2 + 168) = v23;
  v25 = a1[22];
  a1[22] = *(a2 + 176);
  *(a2 + 176) = v25;
  return result;
}

void sub_276802968(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = MEMORY[0x277C9B7C0]();
          MEMORY[0x277C9C1D0](v5, 0x10A1C40290C9B23);
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

uint64_t sub_2768029EC(uint64_t result, TSP::UUIDPath **a2, TSP::UUIDPath **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276802A9C(v13, v15);
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
      v22 = MEMORY[0x277C9BB10](v18);
      result = sub_276802A9C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276802AAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680FFB4(a1);
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

  return MEMORY[0x2821EADF8](a1, 96, TSD::UndoObjectArchive::~UndoObjectArchive);
}

uint64_t sub_276802B38(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680FFE4(a1);
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

  return MEMORY[0x2821EADF8](a1, 64, TSD::GroupDrawablesCommandArchive::~GroupDrawablesCommandArchive);
}

uint64_t sub_276802BC4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810014(a1);
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

  return MEMORY[0x2821EADF8](a1, 64, TSD::UngroupGroupCommandArchive::~UngroupGroupCommandArchive);
}

uint64_t sub_276802C50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810044(a1);
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

  return MEMORY[0x2821EADF8](a1, 88, TSD::ContainerRemoveChildrenCommandArchive::~ContainerRemoveChildrenCommandArchive);
}

void *sub_276802CDC(uint64_t a1)
{
  v2 = sub_276802D50(a1, 1);
  *v2 = &unk_288579D58;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ContainerRemoveDrawablesCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276802D50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810074(a1);
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

  return MEMORY[0x2821EADF8](a1, 32, TSD::ContainerRemoveDrawablesCommandArchive::~ContainerRemoveDrawablesCommandArchive);
}

uint64_t sub_276802DDC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768100A4(a1);
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

  return MEMORY[0x2821EADF8](a1, 120, TSD::ContainerInsertChildrenCommandArchive::~ContainerInsertChildrenCommandArchive);
}

uint64_t sub_276802E68(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768100E0(a1);
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

  return MEMORY[0x2821EADF8](a1, 56, TSD::ContainerInsertDrawablesCommandArchive::~ContainerInsertDrawablesCommandArchive);
}

uint64_t sub_276802EF4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810110(a1);
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

  return MEMORY[0x2821EADF8](a1, 64, TSD::ContainerReorderChildrenCommandArchive::~ContainerReorderChildrenCommandArchive);
}

uint64_t sub_276802F80(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810140(a1);
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

  return MEMORY[0x2821EADF8](a1, 88, TSD::GroupUngroupInformativeCommandArchive::~GroupUngroupInformativeCommandArchive);
}

void *sub_27680300C(uint64_t a1)
{
  v2 = sub_276803080(a1, 1);
  *v2 = &unk_28857A0C8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_InfoCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276803080(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810170(a1);
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

  return MEMORY[0x2821EADF8](a1, 40, TSD::InfoCommandArchive::~InfoCommandArchive);
}

uint64_t sub_27680310C(uint64_t a1)
{
  v2 = sub_27680318C(a1, 1);
  *v2 = &unk_28857A178;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ConnectionLineConnectCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27680318C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768101A0(a1);
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

  return MEMORY[0x2821EADF8](a1, 64, TSD::ConnectionLineConnectCommandArchive::~ConnectionLineConnectCommandArchive);
}

uint64_t sub_276803218(uint64_t a1)
{
  v2 = sub_276803294(a1, 1);
  *v2 = &unk_28857A228;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_InfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276803294(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768101D0(a1);
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

  return MEMORY[0x2821EADF8](a1, 56, TSD::InfoGeometryCommandArchive::~InfoGeometryCommandArchive);
}

void *sub_276803320(uint64_t a1)
{
  v2 = sub_276803398(a1, 1);
  *v2 = &unk_28857A2D8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DrawablePathSourceCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276803398(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810200(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::DrawablePathSourceCommandArchive::~DrawablePathSourceCommandArchive);
}

void *sub_276803424(uint64_t a1)
{
  v2 = sub_27680349C(a1, 1);
  *v2 = &unk_28857A388;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_InstantAlphaCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_27680349C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810230(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::InstantAlphaCommandArchive::~InstantAlphaCommandArchive);
}

void *sub_276803528(uint64_t a1)
{
  v2 = sub_2768035A0(a1, 1);
  *v2 = &unk_28857A438;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DrawableApplyThemeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_2768035A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810260(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::DrawableApplyThemeCommandArchive::~DrawableApplyThemeCommandArchive);
}

void *sub_27680362C(uint64_t a1)
{
  v2 = sub_2768036A0(a1, 1);
  *v2 = &unk_28857A4E8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_AbstractStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2768036A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810290(a1);
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

  return MEMORY[0x2821EADF8](a1, 32, TSD::AbstractStyleCommandArchive::~AbstractStyleCommandArchive);
}

void *sub_27680372C(uint64_t a1)
{
  v2 = sub_2768037A4(a1, 1);
  *v2 = &unk_28857A598;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_StyledInfoSetStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_2768037A4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768102C0(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::StyledInfoSetStyleCommandArchive::~StyledInfoSetStyleCommandArchive);
}

void *sub_276803830(uint64_t a1)
{
  v2 = sub_2768038A8(a1, 1);
  *v2 = &unk_28857A648;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_BaseApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_2768038A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768102F0(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::BaseApplyPresetCommandArchive::~BaseApplyPresetCommandArchive);
}

void *sub_276803934(uint64_t a1)
{
  v2 = sub_2768039A8(a1, 1);
  *v2 = &unk_28857A6F8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ShapeApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2768039A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810320(a1);
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

  return MEMORY[0x2821EADF8](a1, 32, TSD::ShapeApplyPresetCommandArchive::~ShapeApplyPresetCommandArchive);
}

void *sub_276803A34(uint64_t a1)
{
  v2 = sub_276803AA8(a1, 1);
  *v2 = &unk_28857A7A8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_MediaApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276803AA8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810350(a1);
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

  return MEMORY[0x2821EADF8](a1, 32, TSD::MediaApplyPresetCommandArchive::~MediaApplyPresetCommandArchive);
}

void *sub_276803B34(uint64_t a1)
{
  v2 = sub_276803BA8(a1, 1);
  *v2 = &unk_28857A858;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ShapeStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276803BA8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810380(a1);
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

  return MEMORY[0x2821EADF8](a1, 40, TSD::ShapeStyleSetValueCommandArchive::~ShapeStyleSetValueCommandArchive);
}

uint64_t sub_276803C34(uint64_t a1)
{
  v2 = sub_276803CAC(a1, 1);
  *v2 = &unk_28857A908;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_BaseStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276803CAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768103B0(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::BaseStyleSetValueCommandArchive::~BaseStyleSetValueCommandArchive);
}

uint64_t sub_276803D38(uint64_t a1)
{
  v2 = sub_276803DBC(a1, 1);
  *v2 = &unk_28857A9B8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_MovieSetValueCommandArchive_PropertyValue_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276803DBC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768103E0(a1);
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

  return MEMORY[0x2821EADF8](a1, 80, TSD::MovieSetValueCommandArchive_PropertyValue::~MovieSetValueCommandArchive_PropertyValue);
}

uint64_t sub_276803E48(uint64_t a1)
{
  v2 = sub_276803EC8(a1, 1);
  *v2 = &unk_28857AA68;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_MovieSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 52) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276803EC8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810410(a1);
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

  return MEMORY[0x2821EADF8](a1, 72, TSD::MovieSetValueCommandArchive::~MovieSetValueCommandArchive);
}

void *sub_276803F54(uint64_t a1)
{
  v2 = sub_276803FC8(a1, 1);
  *v2 = &unk_28857AB18;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_MediaStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276803FC8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810440(a1);
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

  return MEMORY[0x2821EADF8](a1, 40, TSD::MediaStyleSetValueCommandArchive::~MediaStyleSetValueCommandArchive);
}

uint64_t sub_276804054(uint64_t a1)
{
  v2 = sub_2768040F0(a1, 1);
  *v2 = &unk_28857ABC8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ImageMediaCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 168) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2768040F0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810470(a1);
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

  return MEMORY[0x2821EADF8](a1, 184, TSD::ImageMediaCommandArchive::~ImageMediaCommandArchive);
}

uint64_t sub_27680417C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768104AC(a1);
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

  return MEMORY[0x2821EADF8](a1, 56, TSD::MediaOriginalSizeCommandArchive::~MediaOriginalSizeCommandArchive);
}

void *sub_276804208(uint64_t a1)
{
  v2 = sub_276804280(a1, 1);
  *v2 = &unk_28857AD28;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_MediaInfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276804280(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768104DC(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::MediaInfoGeometryCommandArchive::~MediaInfoGeometryCommandArchive);
}

void *sub_27680430C(uint64_t a1)
{
  v2 = sub_276804384(a1, 1);
  *v2 = &unk_28857ADD8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ImageNaturalSizeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276804384(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27681050C(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::ImageNaturalSizeCommandArchive::~ImageNaturalSizeCommandArchive);
}

uint64_t sub_276804410(uint64_t a1)
{
  v2 = sub_27680448C(a1, 1);
  *v2 = &unk_28857AE88;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ImageMaskCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_27680448C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27681053C(a1);
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

  return MEMORY[0x2821EADF8](a1, 56, TSD::ImageMaskCommandArchive::~ImageMaskCommandArchive);
}

uint64_t sub_276804518(uint64_t a1)
{
  v2 = sub_2768045A0(a1, 1);
  *v2 = &unk_28857AF38;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ImageAdjustmentsCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 88) = 0;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2768045A0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27681056C(a1);
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

  return MEMORY[0x2821EADF8](a1, 96, TSD::ImageAdjustmentsCommandArchive::~ImageAdjustmentsCommandArchive);
}

uint64_t sub_27680462C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27681059C(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::MediaFlagsCommandArchive::~MediaFlagsCommandArchive);
}

uint64_t sub_2768046B8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768105CC(a1);
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

  return MEMORY[0x2821EADF8](a1, 64, TSD::DrawablesCommandGroupArchive::~DrawablesCommandGroupArchive);
}

uint64_t sub_276804744(uint64_t a1)
{
  v2 = sub_2768047C4(a1, 1);
  *v2 = &unk_28857B148;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ExteriorTextWrapCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 53) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2768047C4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768105FC(a1);
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

  return MEMORY[0x2821EADF8](a1, 64, TSD::ExteriorTextWrapCommandArchive::~ExteriorTextWrapCommandArchive);
}

uint64_t sub_276804850(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27681062C(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::DrawableHyperlinkCommandArchive::~DrawableHyperlinkCommandArchive);
}

uint64_t sub_2768048DC(uint64_t a1)
{
  v2 = sub_276804954(a1, 1);
  *v2 = &unk_28857B2A8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CommentInvalidatingCommandSelectionBehaviorArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276804954(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27681065C(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::CommentInvalidatingCommandSelectionBehaviorArchive::~CommentInvalidatingCommandSelectionBehaviorArchive);
}

uint64_t sub_2768049E0(uint64_t a1)
{
  v2 = sub_276804A88(a1, 1);
  *v2 = &unk_28857B358;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ImageReplaceCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 216) = 0;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276804A88(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27681068C(a1);
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

  return MEMORY[0x2821EADF8](a1, 224, TSD::ImageReplaceCommandArchive::~ImageReplaceCommandArchive);
}

uint64_t sub_276804B14(uint64_t a1)
{
  v2 = sub_276804B8C(a1, 1);
  *v2 = &unk_28857B408;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DrawableLockCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276804B8C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768106C8(a1);
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

  return MEMORY[0x2821EADF8](a1, 40, TSD::DrawableLockCommandArchive::~DrawableLockCommandArchive);
}

uint64_t sub_276804C18(uint64_t a1)
{
  v2 = sub_276804C94(a1, 1);
  *v2 = &unk_28857B4B8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DrawableInfoCommentCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276804C94(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768106F8(a1);
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

  return MEMORY[0x2821EADF8](a1, 56, TSD::DrawableInfoCommentCommandArchive::~DrawableInfoCommentCommandArchive);
}

void *sub_276804D20(uint64_t a1)
{
  v2 = sub_276804D98(a1, 1);
  *v2 = &unk_28857B568;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DrawablePencilAnnotationCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276804D98(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810728(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::DrawablePencilAnnotationCommandArchive::~DrawablePencilAnnotationCommandArchive);
}

uint64_t sub_276804E24(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810758(a1);
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

  return MEMORY[0x2821EADF8](a1, 80, TSD::AbstractGuideCommandArchive::~AbstractGuideCommandArchive);
}

void *sub_276804EB0(uint64_t a1)
{
  v2 = sub_276804F24(a1, 1);
  *v2 = &unk_28857B6C8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_GuideCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276804F24(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810788(a1);
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

  return MEMORY[0x2821EADF8](a1, 40, TSD::GuideCommandArchive::~GuideCommandArchive);
}

uint64_t sub_276804FB0(uint64_t a1)
{
  v2 = sub_276805028(a1, 1);
  *v2 = &unk_28857B778;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_DrawableAspectRatioLockedCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276805028(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768107B8(a1);
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

  return MEMORY[0x2821EADF8](a1, 40, TSD::DrawableAspectRatioLockedCommandArchive::~DrawableAspectRatioLockedCommandArchive);
}

uint64_t sub_2768050B4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768107E8(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::DrawableAccessibilityDescriptionCommandArchive::~DrawableAccessibilityDescriptionCommandArchive);
}

uint64_t sub_276805140(uint64_t a1)
{
  v2 = sub_2768051BC(a1, 1);
  *v2 = &unk_28857B8D8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_PasteStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_2768051BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810818(a1);
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

  return MEMORY[0x2821EADF8](a1, 56, TSD::PasteStyleCommandArchive::~PasteStyleCommandArchive);
}

uint64_t sub_276805248(uint64_t a1)
{
  v2 = sub_2768052D0(a1, 1);
  *v2 = &unk_28857B988;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ImageInfoAbstractGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 82) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2768052D0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810848(a1);
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

  return MEMORY[0x2821EADF8](a1, 104, TSD::ImageInfoAbstractGeometryCommandArchive::~ImageInfoAbstractGeometryCommandArchive);
}

void *sub_27680535C(uint64_t a1)
{
  v2 = sub_2768053D0(a1, 1);
  *v2 = &unk_28857BA38;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ImageInfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2768053D0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810884(a1);
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

  return MEMORY[0x2821EADF8](a1, 32, TSD::ImageInfoGeometryCommandArchive::~ImageInfoGeometryCommandArchive);
}

void *sub_27680545C(uint64_t a1)
{
  v2 = sub_2768054D0(a1, 1);
  *v2 = &unk_28857BAE8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ImageInfoMaskGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2768054D0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768108B4(a1);
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

  return MEMORY[0x2821EADF8](a1, 32, TSD::ImageInfoMaskGeometryCommandArchive::~ImageInfoMaskGeometryCommandArchive);
}

uint64_t sub_27680555C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768108E4(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::InfoCollectionSelectionTransformerHelperArchive::~InfoCollectionSelectionTransformerHelperArchive);
}

void *sub_2768055E8(uint64_t a1)
{
  v2 = sub_27680565C(a1, 1);
  *v2 = &unk_28857BC48;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_DrawableSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_27680565C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810914(a1);
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

  return MEMORY[0x2821EADF8](a1, 40, TSD::DrawableSelectionTransformerArchive::~DrawableSelectionTransformerArchive);
}

uint64_t sub_2768056E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810944(a1);
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

  return MEMORY[0x2821EADF8](a1, 24, sub_276805770);
}

void *sub_276805790(uint64_t a1)
{
  v2 = sub_276805804(a1, 1);
  *v2 = &unk_28857BDA8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_CanvasSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276805804(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810974(a1);
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

  return MEMORY[0x2821EADF8](a1, 32, TSD::CanvasSelectionTransformerArchive::~CanvasSelectionTransformerArchive);
}

uint64_t sub_276805890(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768109A4(a1);
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

  return MEMORY[0x2821EADF8](a1, 24, sub_276805918);
}

void *sub_276805938(uint64_t a1)
{
  v2 = sub_2768059AC(a1, 1);
  *v2 = &unk_28857BF08;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ShapeSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2768059AC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_2768109D4(a1);
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

  return MEMORY[0x2821EADF8](a1, 32, TSD::ShapeSelectionTransformerArchive::~ShapeSelectionTransformerArchive);
}

void *sub_276805A38(uint64_t a1)
{
  v2 = sub_276805AAC(a1, 1);
  *v2 = &unk_28857BFB8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_GroupSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276805AAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810A04(a1);
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

  return MEMORY[0x2821EADF8](a1, 32, TSD::GroupSelectionTransformerArchive::~GroupSelectionTransformerArchive);
}

void *sub_276805B38(uint64_t a1)
{
  v2 = sub_276805BAC(a1, 1);
  *v2 = &unk_28857C068;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationSelectionTransformerArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276805BAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810A34(a1);
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

  return MEMORY[0x2821EADF8](a1, 32, TSD::PencilAnnotationSelectionTransformerArchive::~PencilAnnotationSelectionTransformerArchive);
}

void *sub_276805C38(uint64_t a1)
{
  v2 = sub_276805CB0(a1, 1);
  *v2 = &unk_28857C118;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingOpacityCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276805CB0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810A64(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::FreehandDrawingOpacityCommandArchive::~FreehandDrawingOpacityCommandArchive);
}

void *sub_276805D3C(uint64_t a1)
{
  v2 = sub_276805DB4(a1, 1);
  *v2 = &unk_28857C1C8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingAnimationCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276805DB4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810A94(a1);
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

  return MEMORY[0x2821EADF8](a1, 48, TSD::FreehandDrawingAnimationCommandArchive::~FreehandDrawingAnimationCommandArchive);
}

uint64_t sub_276805E40(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810AC4(a1);
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

  return MEMORY[0x2821EADF8](a1, 72, TSD::InsertCaptionOrTitleCommandArchive::~InsertCaptionOrTitleCommandArchive);
}

uint64_t sub_276805ECC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810AF4(a1);
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

  return MEMORY[0x2821EADF8](a1, 64, TSD::RemoveCaptionOrTitleCommandArchive::~RemoveCaptionOrTitleCommandArchive);
}

uint64_t sub_276805F58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276810B24(a1);
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

  return MEMORY[0x2821EADF8](a1, 40, TSD::SetCaptionOrTitleVisibilityCommandArchive::~SetCaptionOrTitleVisibilityCommandArchive);
}

id static TSDCapabilities.t_withOverriddenCurrentCapabilities(_:perform:)(uint64_t a1, void (*a2)(id))
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  a2([ObjCClassFromMetadata i:a1 prepareToOverrideCurrentCapabilities:?]);
  return [ObjCClassFromMetadata i_endOverridingCurrentCapabilities];
}

uint64_t sub_2768087F8()
{
  v2 = sub_2766B4654();
  v4 = objc_msgSend_stringWithUTF8String_(v2, v3, "[TSDMovieInfo intValueForProperty:]");
  v6 = objc_msgSend_stringWithUTF8String_(*(v0 + 3240), v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieInfo.m");
  sub_2766B4630(v6, v7);

  v10 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

uint64_t sub_276808874()
{
  v2 = sub_2766B4654();
  v4 = objc_msgSend_stringWithUTF8String_(v2, v3, "[TSDMovieInfo intValueForProperty:]");
  v6 = objc_msgSend_stringWithUTF8String_(*(v0 + 3240), v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDMovieInfo.m");
  sub_2766B4630(v6, v7);

  v10 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v10, v8, v9);
}

uint64_t sub_276808954(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "+[TSDBrushStrokeLoader p_loadBrushIfNeeded:]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBrushStrokeLoader.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 224, 0, "Out-of-bounds type assignment failed");

  v9 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v9, v7, v8);
}

void sub_276808A3C()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDMatchingAlgorithm p_allocateMatrices]", "[TSDMatchingAlgorithm p_allocateMatrices]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMatchingAlgorithm.m", 50);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMatchingAlgorithm.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 50, 1, "matrix dimension is 0!");

  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_276808AE0()
{
  v3 = sub_2766B4654();
  v5 = objc_msgSend_stringWithUTF8String_(v3, v4, "[TSDMatchingAlgorithm p_bestMatchesFromArray:]");
  v7 = objc_msgSend_stringWithUTF8String_(*(v1 + 3240), v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMatchingAlgorithm.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v8, v5, v7, 452, 0, "Out-of-bounds type assignment was clamped to max");

  return objc_msgSend_logBacktraceThrottled(*(v2 + 336), v9, v10);
}

uint64_t sub_276808B64()
{
  v3 = sub_2766B4654();
  v5 = objc_msgSend_stringWithUTF8String_(v3, v4, "[TSDMatchingAlgorithm p_bestMatchesFromArray:]");
  v7 = objc_msgSend_stringWithUTF8String_(*(v1 + 3240), v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDMatchingAlgorithm.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v8, v5, v7, 453, 0, "Out-of-bounds type assignment was clamped to max");

  return objc_msgSend_logBacktraceThrottled(*(v2 + 336), v9, v10);
}

uint64_t sub_276808BE8()
{
  v3 = sub_2766D1BB0();
  v5 = objc_msgSend_stringWithUTF8String_(v3, v4, "+[TSDGLTextureLoader p_textureInfoFromCGImage:generateMipmaps:]");
  v7 = objc_msgSend_stringWithUTF8String_(*(v2 + 3240), v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLTextureLoader.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v8, v5, v7, 84, 0, "Out-of-bounds type assignment failed");
  v11 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v11, v9, v10);
}

uint64_t sub_276808C64()
{
  v3 = sub_2766D1BB0();
  v5 = objc_msgSend_stringWithUTF8String_(v3, v4, "+[TSDGLTextureLoader p_textureInfoFromCGImage:generateMipmaps:]");
  v7 = objc_msgSend_stringWithUTF8String_(*(v2 + 3240), v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLTextureLoader.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v8, v5, v7, 82, 0, "Out-of-bounds type assignment failed");
  v11 = *(v1 + 336);

  return objc_msgSend_logBacktraceThrottled(v11, v9, v10);
}

void sub_276808CF4(uint64_t a1)
{
  TSUSetCrashReporterInfo();
  v2 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSDGLFrameBuffer setCurrentTextureNamed:atAttachment:]", "[TSDGLFrameBuffer setCurrentTextureNamed:atAttachment:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m", 871, a1);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/animation/TSDGLFrameBuffer.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v7, v4, v6, 871, 1, "Could not find texture named %@!", a1);
  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_276808DCC(uint64_t a1, const char *a2)
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDConnectionLineAbstractLayout clipPath:onLayout:outset:reversed:isValid:]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineAbstractLayout.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 482, 0, "Out-of-bounds type assignment was clamped to max");

  return objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
}

google::protobuf::internal *sub_276808E5C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::FillArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276808F2C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::LineEndArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276808FFC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ReflectionArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2768090CC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ShadowArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680919C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::StrokeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680926C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecColorFillSetColorArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680933C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecGradientFillSetAngleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680940C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecImageFillSetTechniqueArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2768094DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::SpecSetFillArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2768095AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::SpecSetLineEndArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680967C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecReflectionSetOpacityArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680974C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::SpecSetReflectionArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680981C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::SpecSetShadowArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2768098EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecShadowSetAngleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2768099BC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecShadowSetColorArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276809A8C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecShadowSetOffsetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276809B5C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecShadowSetOpacityArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276809C2C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecShadowSetRadiusArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276809CFC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecFrameSetAssetScaleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276809DCC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::SpecSetStrokeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276809E9C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecStrokeSetColorArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_276809F6C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecStrokeSetPatternArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680A03C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SpecStrokeSetWidthArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680A10C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::SpecFillArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680A1DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::SpecStrokeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680A2AC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecDoubleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680A37C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::SpecShadowArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680A44C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::SpecReflectionArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680A51C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::SpecLineEndArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

void sub_27680A8BC()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDCounterRotateInfo setParentInfo:]", "[TSDCounterRotateInfo setParentInfo:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateInfo.m", 111);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDCounterRotateInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 111, 1, "Must provide a group info or nil as parent of a counter rotate info!");

  TSUCrashBreakpoint();
  abort();
}

void sub_27680A974()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDConnectionLineInfo setConnectedToID:]", "[TSDConnectionLineInfo setConnectedToID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineInfo.m", 204);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 204, 1, "connected to UUID resolves to nothing, which should not happen");

  TSUCrashBreakpoint();
  abort();
}

void sub_27680AA18()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDConnectionLineInfo setConnectedFromID:]", "[TSDConnectionLineInfo setConnectedFromID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineInfo.m", 223);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDConnectionLineInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 223, 1, "connected from UUID resolves to nothing, which should not happen");

  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_27680AABC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Point::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27680AB8C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Size::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27680AC5C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Path::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680AD2C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::BezierPathSourceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680ADFC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::EditableBezierPathSourceArchive_Node::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680AECC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::EditableBezierPathSourceArchive_Subpath::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680AF9C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::PointPathSourceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680B06C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ScalarPathSourceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680B13C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::CalloutPathSourceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680B20C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ConnectionLinePathSourceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680B2DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::EditableBezierPathSourceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680B3AC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Color::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680B47C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::GradientArchive_GradientStop::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680B54C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::AngleGradientArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680B61C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::TransformGradientArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680B6EC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Reference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27680B7BC(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::DataReference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680B88C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::GradientArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680B95C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ImageFillArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680BA2C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::StrokePatternArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680BAFC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::SmartStrokeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680BBCC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::FrameArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680BC9C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::PatternedStrokeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680BD6C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::ReferenceDictionary::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27680BE3C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::DropShadowArchive::_InternalParse();
  if (result)
  {
    ++*(a1 + 88);
    if (!*(a1 + 80))
    {
      v11 = *(a1 + 28) + v9 - v8;
      *(a1 + 28) = v11;
      *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
      return result;
    }

    return 0;
  }

  return result;
}

google::protobuf::internal *sub_27680BF0C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ContactShadowArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680BFDC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::CurvedShadowArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t TSD::DropShadowArchive::_InternalParse()
{
  sub_276771060();
  while (1)
  {
    v3 = sub_276771070(v2);
    v11 = sub_2767710B0(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_276771050();
    if (v13 < 0)
    {
      sub_276771004();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2767710A4();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2767710E0();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2767710D4();
    }

    else
    {
      sub_27670AF80((v0 + 8));
      sub_2767710C8();
    }

    v2 = sub_2767710EC();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2767710BC();
  return v21;
}

uint64_t sub_27680C168(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::StyleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680C238(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ShapeStylePropertiesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680C308(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::MediaStylePropertiesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680C3D8(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680C4A8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::GeometryArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680C578(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ExteriorTextWrapArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680C648(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::DrawableArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680C718(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::FreehandDrawingAnimationArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680C7E8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::PathSourceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680C8B8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ShapeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680C988(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUID::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680CA58(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ImageAdjustmentsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680CB28(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::Attribution::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680CBF8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::MovieFingerprint::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680CCC8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::DrawableContentDescription::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t TSD::StandinCaptionArchive::_InternalParse()
{
  sub_276771060();
  while (1)
  {
    v3 = sub_276771070(v2);
    v11 = sub_2767710B0(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_276771050();
    if (v13 < 0)
    {
      sub_276771004();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2767710A4();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2767710E0();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2767710D4();
    }

    else
    {
      sub_27670AF80((v0 + 8));
      sub_2767710C8();
    }

    v2 = sub_2767710EC();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2767710BC();
  return v21;
}

google::protobuf::internal *sub_27680CE54(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::UserDefinedGuideArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680CF24(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::DrawableSelectionArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t TSD::PathSelectionArchive::_InternalParse()
{
  sub_276771060();
  while (1)
  {
    v3 = sub_276771070(v2);
    v11 = sub_2767710B0(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_276771050();
    if (v13 < 0)
    {
      sub_276771004();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2767710A4();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2767710E0();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2767710D4();
    }

    else
    {
      sub_27670AF80((v0 + 8));
      sub_2767710C8();
    }

    v2 = sub_2767710EC();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2767710BC();
  return v21;
}

uint64_t TSD::InfoHyperlinkSelectionArchive::_InternalParse()
{
  sub_276771060();
  while (1)
  {
    v3 = sub_276771070(v2);
    v11 = sub_2767710B0(v3, v4, v5, v6, v7, v8, v9, v10, v22, v23);
    if (v12)
    {
      return v11;
    }

    sub_276771050();
    if (v13 < 0)
    {
      sub_276771004();
      if (v15 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v14, v1);
        sub_2767710A4();
        if (!v19)
        {
          return v21;
        }

        v1 = v18;
      }
    }

    sub_2767710E0();
    v17 = v17 || v16 == 4;
    if (v17)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_2767710D4();
    }

    else
    {
      sub_27670AF80((v0 + 8));
      sub_2767710C8();
    }

    v2 = sub_2767710EC();
    v23 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2767710BC();
  return v21;
}

uint64_t sub_27680D16C(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Date::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680D23C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::MovieFingerprintTrack::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680D30C()
{
  sub_276771018();
  if (v1)
  {
    v2 = sub_276771024(v1);
  }

  else
  {
    v2 = sub_27670AF80(v0);
  }

  return sub_27677108C(v2);
}

uint64_t sub_27680D340()
{
  sub_276771018();
  if (v1)
  {
    v2 = sub_276771024(v1);
  }

  else
  {
    v2 = sub_27670AF80(v0);
  }

  return sub_276771104(v2);
}

uint64_t sub_27680D374()
{
  sub_276771018();
  if (v1)
  {
    v2 = sub_276771024(v1);
  }

  else
  {
    v2 = sub_27670AF80(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

void sub_27680D3B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 - 8);
  v2 = (v1 - 8);
  if (!v3)
  {
    operator delete(v2);
  }
}

uint64_t sub_27680D3C4()
{
  sub_276771018();
  if (v1)
  {
    v2 = sub_276771024(v1);
  }

  else
  {
    v2 = sub_27670AF80(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_27680D400()
{
  sub_276771018();
  if (v1)
  {
    v2 = sub_276771024(v1);
  }

  else
  {
    v2 = sub_27670AF80(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_27680D43C()
{
  sub_276771018();
  if (v1)
  {
    v2 = sub_276771024(v1);
  }

  else
  {
    v2 = sub_27670AF80(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

void sub_27680D478(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(v1 - 8);
  v2 = (v1 - 8);
  if (!v3)
  {
    operator delete(v2);
  }
}

void sub_27680E3D4()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "+[TSDPathSource pathSourceForShapeType:naturalSize:]", "+[TSDPathSource pathSourceForShapeType:naturalSize:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSource.m", 332);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDPathSource.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 332, 1, "Should not be trying to get the path of a custom shape from here!");

  TSUCrashBreakpoint();
  abort();
}

void sub_27680E5B8()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDDrawableInfo captionUUID]", "[TSDDrawableInfo captionUUID]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m", 185);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 185, 1, "There should not be a caption stand-in when there is a caption.");

  TSUCrashBreakpoint();
  abort();
}

void sub_27680E65C()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDDrawableInfo captionUUID]", "[TSDDrawableInfo captionUUID]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m", 188);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 188, 1, "There should be a caption stand-in when there is not a caption.");

  TSUCrashBreakpoint();
  abort();
}

void sub_27680E700()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDDrawableInfo setCaptionUUID:]", "[TSDDrawableInfo setCaptionUUID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m", 200);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 200, 1, "Should not set caption UUID when drawable class doesn't want title and caption UUIDs.");

  TSUCrashBreakpoint();
  abort();
}

void sub_27680E7A4()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDDrawableInfo setCaptionUUID:]", "[TSDDrawableInfo setCaptionUUID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m", 202);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 202, 1, "There should not be a caption stand-in when there is a caption.");

  TSUCrashBreakpoint();
  abort();
}

void sub_27680E848()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDDrawableInfo titleUUID]", "[TSDDrawableInfo titleUUID]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m", 224);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 224, 1, "There should not be a title stand-in when there is a title.");

  TSUCrashBreakpoint();
  abort();
}

void sub_27680E8EC()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDDrawableInfo titleUUID]", "[TSDDrawableInfo titleUUID]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m", 227);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 227, 1, "There should be a title stand-in when there is not a title.");

  TSUCrashBreakpoint();
  abort();
}

void sub_27680E990()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDDrawableInfo setTitleUUID:]", "[TSDDrawableInfo setTitleUUID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m", 239);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 239, 1, "Should not set title UUID when drawable class doesn't want title and caption UUIDs.");

  TSUCrashBreakpoint();
  abort();
}

void sub_27680EA34()
{
  TSUSetCrashReporterInfo();
  v0 = MEMORY[0x277D81150];
  v2 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v1, "[TSDDrawableInfo setTitleUUID:]", "[TSDDrawableInfo setTitleUUID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m", 241);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDDrawableInfo.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v0, v5, v2, v4, 241, 1, "There should not be a title stand-in when there is a title.");

  TSUCrashBreakpoint();
  abort();
}

uint64_t sub_27680EB00(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUIDPath::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_27680EBD0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCK::RemoveIdOperationArgs::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680ECA0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ContainerRemoveChildrenCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680ED70(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCK::AddIdOperationArgs::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680EE40(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ContainerInsertChildrenCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680EF10(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSCK::RearrangeIdOperationArgs::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680EFE0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::InfoCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680F0B0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::ApplyThemeChildCommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680F180(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::AbstractStyleCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680F250(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::BaseApplyPresetCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680F320(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::BaseStyleSetValueCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680F3F0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::BaseShapeStylePropertyChangeSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680F4C0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::MovieSetValueCommandArchive_PropertyValue::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680F590(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSDSOS::MediaStylePropertyChangeSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680F660(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::InfoGeometryCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680F730(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CommandGroupArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680F800(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::CanvasSelectionArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680F8D0(uint64_t a1, int a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CommandSelectionBehaviorArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_27680F9A0(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::AbstractGuideCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680FA70(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::ImageInfoAbstractGeometryCommandArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_27680FB40(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::InfoCollectionSelectionTransformerHelperArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

unsigned __int8 *TSD::InfoHyperlinkSelectionTransformerArchive::_InternalParse(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v12 = a2;
  while (1)
  {
    if (sub_27670AF08(a3, &v12))
    {
      return v12;
    }

    TagFallback = v12 + 1;
    v6 = *v12;
    if ((*v12 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    sub_276771004();
    if ((v8 & 0x80000000) == 0)
    {
      TagFallback = v7 + 2;
LABEL_6:
      v12 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v7, v6);
    v12 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    LODWORD(v6) = v10;
LABEL_7:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
    if (!v12)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return TagFallback;
}

unsigned __int8 *TSD::PathSelectionTransformerArchive::_InternalParse(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v12 = a2;
  while (1)
  {
    if (sub_27670AF08(a3, &v12))
    {
      return v12;
    }

    TagFallback = v12 + 1;
    v6 = *v12;
    if ((*v12 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    sub_276771004();
    if ((v8 & 0x80000000) == 0)
    {
      TagFallback = v7 + 2;
LABEL_6:
      v12 = TagFallback;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v7, v6);
    v12 = TagFallback;
    if (!TagFallback)
    {
      return TagFallback;
    }

    LODWORD(v6) = v10;
LABEL_7:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
    if (!v12)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return TagFallback;
}

google::protobuf::internal *sub_27680FE00(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSD::DrawableSelectionTransformerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_27680FED0()
{
  sub_276771018();
  if (v1)
  {
    v2 = sub_276771024(v1);
  }

  else
  {
    v2 = sub_27670AF80(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_27680FF0C()
{
  sub_276771018();
  if (v1)
  {
    v2 = sub_276771024(v1);
  }

  else
  {
    v2 = sub_27670AF80(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

uint64_t sub_27680FF48()
{
  sub_276771018();
  if (v1)
  {
    v2 = sub_276771024(v1);
  }

  else
  {
    v2 = sub_27670AF80(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

CGPoint CGContextConvertPointToDeviceSpace(CGContextRef c, CGPoint point)
{
  MEMORY[0x282110A30](c, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGPoint CGContextConvertPointToUserSpace(CGContextRef c, CGPoint point)
{
  MEMORY[0x282110A38](c, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGContextConvertRectToDeviceSpace(CGContextRef c, CGRect rect)
{
  MEMORY[0x282110A40](c, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGContextConvertRectToUserSpace(CGContextRef c, CGRect rect)
{
  MEMORY[0x282110A48](c, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGContextConvertSizeToDeviceSpace(CGContextRef c, CGSize size)
{
  MEMORY[0x282110A50](c, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGPoint CGPathGetCurrentPoint(CGPathRef path)
{
  MEMORY[0x2821114D0](path);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114E0](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t UnsafePointer()
{
  return MEMORY[0x2821EA678]();
}

{
  return MEMORY[0x2821EA690]();
}

{
  return MEMORY[0x2821EA698]();
}

uint64_t String()
{
  return MEMORY[0x2821EB0E8]();
}

{
  return MEMORY[0x2821EB128]();
}

uint64_t google::protobuf::internal::ArenaStringPtr::Set()
{
  return MEMORY[0x2821EAD00]();
}

{
  return MEMORY[0x2821EAD08]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}