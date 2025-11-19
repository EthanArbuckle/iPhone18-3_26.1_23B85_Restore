uint64_t *TSD::ImageMaskCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageMaskCommandArchive::Clear(this);

    return TSD::ImageMaskCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ImageMaskCommandArchive::CopyFrom(uint64_t *this, const TSD::ImageMaskCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageMaskCommandArchive::Clear(this);

    return TSD::ImageMaskCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageMaskCommandArchive::IsInitialized(TSD::ImageMaskCommandArchive *this)
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

__n128 TSD::ImageMaskCommandArchive::InternalSwap(TSD::ImageMaskCommandArchive *this, TSD::ImageMaskCommandArchive *a2)
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
  LOWORD(v8) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v8;
  return result;
}

uint64_t *TSD::ImageAdjustmentsCommandArchive::clear_old_image_adjustments(TSD::ImageAdjustmentsCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::ImageAdjustmentsArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSD::ImageAdjustmentsCommandArchive::clear_new_image_adjustments(TSD::ImageAdjustmentsCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::ImageAdjustmentsArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::DataReference *TSD::ImageAdjustmentsCommandArchive::clear_adjustedimagedata(TSD::ImageAdjustmentsCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::DataReference *TSD::ImageAdjustmentsCommandArchive::clear_replacedadjustedimagedata(TSD::ImageAdjustmentsCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::DataReference *TSD::ImageAdjustmentsCommandArchive::clear_enhancedimagedata(TSD::ImageAdjustmentsCommandArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::DataReference *TSD::ImageAdjustmentsCommandArchive::clear_replacedenhancedimagedata(TSD::ImageAdjustmentsCommandArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::DataReference *TSD::ImageAdjustmentsCommandArchive::clear_thumbnailadjustedimagedata(TSD::ImageAdjustmentsCommandArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::DataReference *TSD::ImageAdjustmentsCommandArchive::clear_replacedthumbnailadjustedimagedata(TSD::ImageAdjustmentsCommandArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSD::ImageAdjustmentsCommandArchive *TSD::ImageAdjustmentsCommandArchive::ImageAdjustmentsCommandArchive(TSD::ImageAdjustmentsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857AF38;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageAdjustmentsCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 11) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_28857AF38;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageAdjustmentsCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 11) = 0;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::ImageAdjustmentsCommandArchive *TSD::ImageAdjustmentsCommandArchive::ImageAdjustmentsCommandArchive(TSD::ImageAdjustmentsCommandArchive *this, const TSD::ImageAdjustmentsCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857AF38;
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
  return this;
}

void TSD::ImageAdjustmentsCommandArchive::~ImageAdjustmentsCommandArchive(TSD::ImageAdjustmentsCommandArchive *this)
{
  sub_2767E3F70(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ImageAdjustmentsCommandArchive::~ImageAdjustmentsCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_2767E3F70(uint64_t *result)
{
  if (result != &TSD::_ImageAdjustmentsCommandArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSD::InfoCommandArchive::~InfoCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSD::ImageAdjustmentsArchive::~ImageAdjustmentsArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSD::ImageAdjustmentsArchive::~ImageAdjustmentsArchive(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::DataReference::~DataReference(v5);
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

    v8 = v1[9];
    if (v8)
    {
      TSP::DataReference::~DataReference(v8);
      MEMORY[0x277C9C1D0]();
    }

    v9 = v1[10];
    if (v9)
    {
      TSP::DataReference::~DataReference(v9);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[11];
    if (result)
    {
      TSP::DataReference::~DataReference(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::ImageAdjustmentsCommandArchive::default_instance(TSD::ImageAdjustmentsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageAdjustmentsCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageAdjustmentsCommandArchive_default_instance_;
}

uint64_t *TSD::ImageAdjustmentsCommandArchive::Clear(uint64_t *this)
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

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSD::ImageAdjustmentsArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = TSD::ImageAdjustmentsArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = TSP::DataReference::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    this = TSP::DataReference::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = TSP::DataReference::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  this = TSP::DataReference::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::DataReference::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    this = TSP::DataReference::Clear(*(v1 + 88));
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

google::protobuf::internal *TSD::ImageAdjustmentsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  while ((sub_27670AF08(a3, &v33) & 1) == 0)
  {
    v5 = (v33 + 1);
    v6 = *v33;
    if ((*v33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v33 + 2);
LABEL_6:
      v33 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v7 - 128));
    v33 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v20;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 4)
    {
      if (v6 >> 3 <= 6)
      {
        if (v8 == 5)
        {
          if (v6 != 42)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 0x10u;
          v9 = *(a1 + 56);
          if (!v9)
          {
            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = MEMORY[0x277C9BA90](v27);
            LODWORD(v9) = v28;
            *(a1 + 56) = v28;
            goto LABEL_72;
          }
        }

        else
        {
          if (v8 != 6 || v6 != 50)
          {
            goto LABEL_76;
          }

          *(a1 + 16) |= 0x20u;
          v9 = *(a1 + 64);
          if (!v9)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x277C9BA90](v17);
            LODWORD(v9) = v18;
            *(a1 + 64) = v18;
            goto LABEL_72;
          }
        }
      }

      else if (v8 == 7)
      {
        if (v6 != 58)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 0x40u;
        v9 = *(a1 + 72);
        if (!v9)
        {
          v25 = *(a1 + 8);
          if (v25)
          {
            v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
          }

          v26 = MEMORY[0x277C9BA90](v25);
          LODWORD(v9) = v26;
          *(a1 + 72) = v26;
          goto LABEL_72;
        }
      }

      else if (v8 == 8)
      {
        if (v6 != 66)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 0x80u;
        v9 = *(a1 + 80);
        if (!v9)
        {
          v29 = *(a1 + 8);
          if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
          }

          v30 = MEMORY[0x277C9BA90](v29);
          LODWORD(v9) = v30;
          *(a1 + 80) = v30;
          goto LABEL_72;
        }
      }

      else
      {
        if (v8 != 9 || v6 != 74)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 0x100u;
        v9 = *(a1 + 88);
        if (!v9)
        {
          v10 = *(a1 + 8);
          if (v10)
          {
            v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
          }

          v11 = MEMORY[0x277C9BA90](v10);
          LODWORD(v9) = v11;
          *(a1 + 88) = v11;
          goto LABEL_72;
        }
      }

      goto LABEL_73;
    }

    if (v6 >> 3 > 2)
    {
      if (v8 != 3)
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_76;
        }

        *(a1 + 16) |= 8u;
        v9 = *(a1 + 48);
        if (!v9)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x277C9BA90](v15);
          LODWORD(v9) = v16;
          *(a1 + 48) = v16;
LABEL_72:
          v5 = v33;
        }

LABEL_73:
        v23 = sub_27680B7BC(a3, v9, v5);
        goto LABEL_74;
      }

      if (v6 != 26)
      {
        goto LABEL_76;
      }

      *(a1 + 16) |= 4u;
      v13 = *(a1 + 40);
      if (!v13)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v24);
        *(a1 + 40) = v13;
LABEL_55:
        v5 = v33;
      }

LABEL_56:
      v23 = sub_27680CA58(a3, v13, v5);
      goto LABEL_74;
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_76:
        if (v6)
        {
          v31 = (v6 & 7) == 4;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          *(a3 + 80) = v6 - 1;
          return v33;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v23 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_74;
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

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v14);
        *(a1 + 32) = v13;
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    if (v6 != 10)
    {
      goto LABEL_76;
    }

    *(a1 + 16) |= 1u;
    v21 = *(a1 + 24);
    if (!v21)
    {
      v22 = *(a1 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v22);
      *(a1 + 24) = v21;
      v5 = v33;
    }

    v23 = sub_27680EFE0(a3, v21, v5);
LABEL_74:
    v33 = v23;
    if (!v23)
    {
      return 0;
    }
  }

  return v33;
}

unsigned __int8 *TSD::ImageAdjustmentsCommandArchive::_InternalSerialize(TSD::ImageAdjustmentsCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
        goto LABEL_4;
      }

      goto LABEL_31;
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

  a2 = TSD::ImageAdjustmentsArchive::_InternalSerialize(v13, v15, a3, a4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
  }

LABEL_31:
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

  a2 = TSD::ImageAdjustmentsArchive::_InternalSerialize(v19, v21, a3, a4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_41:
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

  a2 = TSP::DataReference::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_61;
  }

LABEL_51:
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

  a2 = TSP::DataReference::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_71;
  }

LABEL_61:
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

  a2 = TSP::DataReference::_InternalSerialize(v37, v39, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_81;
  }

LABEL_71:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v43 = *(this + 9);
  *a2 = 58;
  v44 = *(v43 + 5);
  if (v44 > 0x7F)
  {
    a2[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = a2 + 3;
      do
      {
        *(v45 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v45;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v45 - 1) = v47;
    }

    else
    {
      a2[2] = v46;
      v45 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v44;
    v45 = a2 + 2;
  }

  a2 = TSP::DataReference::_InternalSerialize(v43, v45, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_91;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(this + 10);
  *a2 = 66;
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

  a2 = TSP::DataReference::_InternalSerialize(v49, v51, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_91:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v55 = *(this + 11);
    *a2 = 74;
    v56 = *(v55 + 5);
    if (v56 > 0x7F)
    {
      a2[1] = v56 | 0x80;
      v58 = v56 >> 7;
      if (v56 >> 14)
      {
        v57 = a2 + 3;
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
        a2[2] = v58;
        v57 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v56;
      v57 = a2 + 2;
    }

    a2 = TSP::DataReference::_InternalSerialize(v55, v57, a3);
  }

LABEL_101:
  v61 = *(this + 1);
  if ((v61 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v61 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ImageAdjustmentsCommandArchive::ByteSizeLong(TSD::ImageAdjustmentsCommandArchive *this)
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
    v8 = TSD::ImageAdjustmentsArchive::ByteSizeLong(*(this + 4));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v9 = TSD::ImageAdjustmentsArchive::ByteSizeLong(*(this + 5));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = TSP::DataReference::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v12 = TSP::DataReference::ByteSizeLong(*(this + 8));
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

    goto LABEL_22;
  }

LABEL_20:
  v11 = TSP::DataReference::ByteSizeLong(*(this + 7));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_22:
  v13 = TSP::DataReference::ByteSizeLong(*(this + 9));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_12:
    v5 = TSP::DataReference::ByteSizeLong(*(this + 10));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v2 & 0x100) != 0)
  {
    v6 = TSP::DataReference::ByteSizeLong(*(this + 11));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSD::ImageAdjustmentsCommandArchive::MergeFrom(TSD::ImageAdjustmentsCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageAdjustmentsCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageAdjustmentsCommandArchive::MergeFrom(uint64_t this, const TSD::ImageAdjustmentsCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  v6 = MEMORY[0x277D80A30];
  if (!v5)
  {
    goto LABEL_20;
  }

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

      v7 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v8);
      *(v3 + 24) = v7;
    }

    if (*(a2 + 3))
    {
      v9 = *(a2 + 3);
    }

    else
    {
      v9 = &TSD::_InfoCommandArchive_default_instance_;
    }

    this = TSD::InfoCommandArchive::MergeFrom(v7, v9);
  }

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

      v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = &TSD::_ImageAdjustmentsArchive_default_instance_;
    }

    this = TSD::ImageAdjustmentsArchive::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_15:
      if ((v5 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
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

    v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v14);
    *(v3 + 40) = v13;
  }

  if (*(a2 + 5))
  {
    v15 = *(a2 + 5);
  }

  else
  {
    v15 = &TSD::_ImageAdjustmentsArchive_default_instance_;
  }

  this = TSD::ImageAdjustmentsArchive::MergeFrom(v13, v15);
  if ((v5 & 8) == 0)
  {
LABEL_16:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_17;
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

    v16 = MEMORY[0x277C9BA90](v17);
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
LABEL_17:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_18;
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

    v19 = MEMORY[0x277C9BA90](v20);
    *(v3 + 56) = v19;
  }

  if (*(a2 + 7))
  {
    v21 = *(a2 + 7);
  }

  else
  {
    v21 = v6;
  }

  this = TSP::DataReference::MergeFrom(v19, v21);
  if ((v5 & 0x20) == 0)
  {
LABEL_18:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_54:
  *(v3 + 16) |= 0x20u;
  v22 = *(v3 + 64);
  if (!v22)
  {
    v23 = *(v3 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x277C9BA90](v23);
    *(v3 + 64) = v22;
  }

  if (*(a2 + 8))
  {
    v24 = *(a2 + 8);
  }

  else
  {
    v24 = v6;
  }

  this = TSP::DataReference::MergeFrom(v22, v24);
  if ((v5 & 0x40) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x40u;
    v25 = *(v3 + 72);
    if (!v25)
    {
      v26 = *(v3 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x277C9BA90](v26);
      *(v3 + 72) = v25;
    }

    if (*(a2 + 9))
    {
      v27 = *(a2 + 9);
    }

    else
    {
      v27 = v6;
    }

    this = TSP::DataReference::MergeFrom(v25, v27);
    if ((v5 & 0x80) != 0)
    {
      goto LABEL_70;
    }

LABEL_20:
    if ((v5 & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_78;
  }

LABEL_19:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_20;
  }

LABEL_70:
  *(v3 + 16) |= 0x80u;
  v28 = *(v3 + 80);
  if (!v28)
  {
    v29 = *(v3 + 8);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = MEMORY[0x277C9BA90](v29);
    *(v3 + 80) = v28;
  }

  if (*(a2 + 10))
  {
    v30 = *(a2 + 10);
  }

  else
  {
    v30 = v6;
  }

  this = TSP::DataReference::MergeFrom(v28, v30);
  if ((v5 & 0x100) != 0)
  {
LABEL_78:
    *(v3 + 16) |= 0x100u;
    v31 = *(v3 + 88);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C9BA90](v32);
      *(v3 + 88) = v31;
    }

    if (*(a2 + 11))
    {
      v33 = *(a2 + 11);
    }

    else
    {
      v33 = v6;
    }

    return TSP::DataReference::MergeFrom(v31, v33);
  }

  return this;
}

uint64_t *TSD::ImageAdjustmentsCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageAdjustmentsCommandArchive::Clear(this);

    return TSD::ImageAdjustmentsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ImageAdjustmentsCommandArchive::CopyFrom(uint64_t *this, const TSD::ImageAdjustmentsCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageAdjustmentsCommandArchive::Clear(this);

    return TSD::ImageAdjustmentsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageAdjustmentsCommandArchive::IsInitialized(TSD::ImageAdjustmentsCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::InfoCommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
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
      result = TSP::DataReference::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 9));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100) == 0)
    {
      return 1;
    }

    result = TSP::DataReference::IsInitialized(*(this + 11));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::ImageAdjustmentsCommandArchive::InternalSwap(TSD::ImageAdjustmentsCommandArchive *this, TSD::ImageAdjustmentsCommandArchive *a2)
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
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  return result;
}

TSD::MediaFlagsCommandArchive *TSD::MediaFlagsCommandArchive::MediaFlagsCommandArchive(TSD::MediaFlagsCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857AFE8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaFlagsCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSD::MediaFlagsCommandArchive *TSD::MediaFlagsCommandArchive::MediaFlagsCommandArchive(TSD::MediaFlagsCommandArchive *this, const TSD::MediaFlagsCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_28857AFE8;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TSD::MediaFlagsCommandArchive::~MediaFlagsCommandArchive(TSD::MediaFlagsCommandArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  if (this != &TSD::_MediaFlagsCommandArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSD::InfoCommandArchive::~InfoCommandArchive(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::MediaFlagsCommandArchive::~MediaFlagsCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::MediaFlagsCommandArchive::default_instance(TSD::MediaFlagsCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_MediaFlagsCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MediaFlagsCommandArchive_default_instance_;
}

uint64_t *TSD::MediaFlagsCommandArchive::Clear(uint64_t *this)
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
      this = TSD::InfoCommandArchive::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 32) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_27670B144(v4);
  }

  return this;
}

google::protobuf::internal *TSD::MediaFlagsCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v37 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v37) & 1) == 0)
  {
    while (1)
    {
      v7 = (v37 + 1);
      v8 = *v37;
      if ((*v37 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v37, (v9 - 128));
      v37 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_63;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_42;
          }

          v5 |= 8u;
          v21 = (v7 + 1);
          v20 = *v7;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_34;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if ((v22 & 0x80000000) == 0)
          {
            v21 = (v7 + 2);
LABEL_34:
            v37 = v21;
            *(a1 + 41) = v20 != 0;
            goto LABEL_50;
          }

          v29 = google::protobuf::internal::VarintParseSlow64(v7, v20);
          v37 = v29;
          *(a1 + 41) = v30 != 0;
          if (!v29)
          {
            goto LABEL_63;
          }
        }

        else if (v10 == 7)
        {
          if (v8 != 56)
          {
            goto LABEL_42;
          }

          v5 |= 0x10u;
          v24 = (v7 + 1);
          v23 = *v7;
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_41;
          }

          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if ((v25 & 0x80000000) == 0)
          {
            v24 = (v7 + 2);
LABEL_41:
            v37 = v24;
            *(a1 + 42) = v23 != 0;
            goto LABEL_50;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v7, v23);
          v37 = v35;
          *(a1 + 42) = v36 != 0;
          if (!v35)
          {
LABEL_63:
            v37 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_42;
          }

          v5 |= 0x20u;
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
            v37 = v15;
            *(a1 + 43) = v14 != 0;
            goto LABEL_50;
          }

          v33 = google::protobuf::internal::VarintParseSlow64(v7, v14);
          v37 = v33;
          *(a1 + 43) = v34 != 0;
          if (!v33)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_42;
          }

          *(a1 + 16) |= 2u;
          v17 = *(a1 + 32);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v18);
            *(a1 + 32) = v17;
            v7 = v37;
          }

          v19 = sub_27680EFE0(a3, v17, v7);
LABEL_49:
          v37 = v19;
          if (!v19)
          {
            goto LABEL_63;
          }

          goto LABEL_50;
        }

        if (v10 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v19 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_49;
          }

LABEL_42:
          if (v8)
          {
            v26 = (v8 & 7) == 4;
          }

          else
          {
            v26 = 1;
          }

          if (v26)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v19 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_49;
        }

        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_42;
        }

        v5 |= 4u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_15:
          v37 = v12;
          *(a1 + 40) = v11 != 0;
          goto LABEL_50;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v37 = v31;
        *(a1 + 40) = v32 != 0;
        if (!v31)
        {
          goto LABEL_63;
        }
      }

LABEL_50:
      if (sub_27670AF08(a3, &v37))
      {
        goto LABEL_2;
      }
    }

    v7 = (v37 + 2);
LABEL_6:
    v37 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v37;
}

google::protobuf::UnknownFieldSet *TSD::MediaFlagsCommandArchive::_InternalSerialize(TSD::MediaFlagsCommandArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      *(v4 + 1) = v8 | 0x80;
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
        *(v4 + 2) = v10;
        v9 = v4 + 3;
      }
    }

    else
    {
      *(v4 + 1) = v8;
      v9 = v4 + 2;
    }

    v4 = TSD::InfoCommandArchive::_InternalSerialize(v7, v9, a3, v4);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276727B88(a3, 4, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 40);
  *v4 = 40;
  *(v4 + 1) = v13;
  v4 = (v4 + 2);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 41);
  *v4 = 48;
  *(v4 + 1) = v14;
  v4 = (v4 + 2);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 42);
  *v4 = 56;
  *(v4 + 1) = v15;
  v4 = (v4 + 2);
  if ((v6 & 0x20) != 0)
  {
LABEL_28:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v16 = *(this + 43);
    *v4 = 64;
    *(v4 + 1) = v16;
    v4 = (v4 + 2);
  }

LABEL_31:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v17 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::MediaFlagsCommandArchive::RequiredFieldsByteSizeFallback(TSD::MediaFlagsCommandArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
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
    v6 = TSD::InfoCommandArchive::ByteSizeLong(*(this + 4));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TSD::MediaFlagsCommandArchive::ByteSizeLong(TSD::MediaFlagsCommandArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TSD::MediaFlagsCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 4);
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = TSD::InfoCommandArchive::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v9 = *(this + 4);
  if ((v9 & 0x3C) != 0)
  {
    v10.i64[0] = 0x200000002;
    v10.i64[1] = 0x200000002;
    v8 += vaddlvq_u32(vandq_s8(vshlq_u32(vdupq_n_s32(v9), xmmword_27682D180), v10));
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

uint64_t TSD::MediaFlagsCommandArchive::MergeFrom(TSD::MediaFlagsCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::MediaFlagsCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::MediaFlagsCommandArchive::MergeFrom(uint64_t this, const TSD::MediaFlagsCommandArchive *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_22;
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = &TSD::_InfoCommandArchive_default_instance_;
    }

    this = TSD::InfoCommandArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }

LABEL_22:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v3 + 41) = *(a2 + 41);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_11:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_10:
      *(v3 + 43) = *(a2 + 43);
      goto LABEL_11;
    }

LABEL_24:
    *(v3 + 42) = *(a2 + 42);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSD::MediaFlagsCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MediaFlagsCommandArchive::Clear(this);

    return TSD::MediaFlagsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::MediaFlagsCommandArchive::CopyFrom(uint64_t *this, const TSD::MediaFlagsCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MediaFlagsCommandArchive::Clear(this);

    return TSD::MediaFlagsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::MediaFlagsCommandArchive::IsInitialized(TSD::InfoCommandArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSD::InfoCommandArchive::IsInitialized(this[4]);
  }
}

uint64_t *TSD::MediaFlagsCommandArchive::InternalSwap(TSD::MediaFlagsCommandArchive *this, TSD::MediaFlagsCommandArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  LODWORD(v7) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  return result;
}

TSK::CommandGroupArchive *TSD::DrawablesCommandGroupArchive::clear_super(TSD::DrawablesCommandGroupArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandGroupArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TSD::DrawablesCommandGroupArchive::clear_obsolete_selection(TSD::DrawablesCommandGroupArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::CanvasSelectionArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::DrawablesCommandGroupArchive::clear_modelforselection(TSD::DrawablesCommandGroupArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSD::DrawablesCommandGroupArchive::clear_archivedselection(TSD::DrawablesCommandGroupArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSD::DrawablesCommandGroupArchive *TSD::DrawablesCommandGroupArchive::DrawablesCommandGroupArchive(TSD::DrawablesCommandGroupArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B098;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawablesCommandGroupArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 15) = 1;
  return this;
}

TSD::DrawablesCommandGroupArchive *TSD::DrawablesCommandGroupArchive::DrawablesCommandGroupArchive(TSD::DrawablesCommandGroupArchive *this, const TSD::DrawablesCommandGroupArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B098;
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
  *(this + 7) = *(a2 + 7);
  return this;
}

void TSD::DrawablesCommandGroupArchive::~DrawablesCommandGroupArchive(TSD::DrawablesCommandGroupArchive *this)
{
  sub_2767E64E0(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::DrawablesCommandGroupArchive::~DrawablesCommandGroupArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *sub_2767E64E0(void *result)
{
  if (result != &TSD::_DrawablesCommandGroupArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C9B470]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C4034338EF8);
    }

    v3 = v1[4];
    if (v3)
    {
      TSD::CanvasSelectionArchive::~CanvasSelectionArchive(v3);
      MEMORY[0x277C9C1D0]();
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
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::DrawablesCommandGroupArchive::default_instance(TSD::DrawablesCommandGroupArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawablesCommandGroupArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawablesCommandGroupArchive_default_instance_;
}

uint64_t *TSD::DrawablesCommandGroupArchive::Clear(uint64_t *this)
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
    this = TSD::CanvasSelectionArchive::Clear(*(v1 + 32));
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

  this = TSK::CommandGroupArchive::Clear(this[3]);
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
    *(v1 + 60) = 1;
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

google::protobuf::internal *TSD::DrawablesCommandGroupArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v34) & 1) == 0)
  {
    while (1)
    {
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
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v9 - 128));
      v34 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_71;
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
            v18 = *(a1 + 24);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x277C9BA60](v19);
              LODWORD(v18) = v20;
              *(a1 + 24) = v20;
              v7 = v34;
            }

            v17 = sub_27680F730(a3, v18, v7);
            goto LABEL_60;
          }
        }

        else if (v10 == 2)
        {
          if (v8 == 18)
          {
            *(a1 + 16) |= 2u;
            v24 = *(a1 + 32);
            if (!v24)
            {
              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v24 = google::protobuf::Arena::CreateMaybeMessage<TSD::CanvasSelectionArchive>(v25);
              *(a1 + 32) = v24;
              v7 = v34;
            }

            v17 = sub_27680F800(a3, v24, v7);
            goto LABEL_60;
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

            v14 = MEMORY[0x277C9BB20](v13);
            LODWORD(v12) = v14;
            *(a1 + 40) = v14;
            goto LABEL_27;
          }

          goto LABEL_28;
        }

        goto LABEL_53;
      }

      if (v10 == 4)
      {
        if (v8 == 32)
        {
          v22 = (v7 + 1);
          v21 = *v7;
          if ((v21 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }

          v23 = *v22;
          v21 = (v23 << 7) + v21 - 128;
          if (v23 < 0)
          {
            v34 = google::protobuf::internal::VarintParseSlow64(v7, v21);
            if (!v34)
            {
              goto LABEL_71;
            }
          }

          else
          {
            v22 = (v7 + 2);
LABEL_39:
            v34 = v22;
          }

          if ((v21 - 1) > 2)
          {
            sub_27680D374();
          }

          else
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 60) = v21;
          }

          goto LABEL_61;
        }

        goto LABEL_53;
      }

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

            v16 = MEMORY[0x277C9BB20](v15);
            LODWORD(v12) = v16;
            *(a1 + 48) = v16;
LABEL_27:
            v7 = v34;
          }

LABEL_28:
          v17 = sub_27680B6EC(a3, v12, v7);
LABEL_60:
          v34 = v17;
          if (!v17)
          {
            goto LABEL_71;
          }

          goto LABEL_61;
        }

LABEL_53:
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
          sub_27670AF80((a1 + 8));
        }

        v17 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_60;
      }

      if (v8 != 40)
      {
        goto LABEL_53;
      }

      v5 |= 0x10u;
      v27 = (v7 + 1);
      v26 = *v7;
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_52;
      }

      v28 = *v27;
      v26 = (v28 << 7) + v26 - 128;
      if ((v28 & 0x80000000) == 0)
      {
        v27 = (v7 + 2);
LABEL_52:
        v34 = v27;
        *(a1 + 56) = v26 != 0;
        goto LABEL_61;
      }

      v32 = google::protobuf::internal::VarintParseSlow64(v7, v26);
      v34 = v32;
      *(a1 + 56) = v33 != 0;
      if (!v32)
      {
LABEL_71:
        v34 = 0;
        goto LABEL_2;
      }

LABEL_61:
      if (sub_27670AF08(a3, &v34))
      {
        goto LABEL_2;
      }
    }

    v7 = (v34 + 2);
LABEL_6:
    v34 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v34;
}

unsigned __int8 *TSD::DrawablesCommandGroupArchive::_InternalSerialize(TSD::DrawablesCommandGroupArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSK::CommandGroupArchive::_InternalSerialize(v7, v9, a3);
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

  a2 = TSD::CanvasSelectionArchive::_InternalSerialize(v13, v15, a3, a4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_38:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 15);
    *a2 = 32;
    if (v25 > 0x7F)
    {
      a2[1] = v25 | 0x80;
      v26 = v25 >> 7;
      if (v25 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++a2;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(a2 - 1) = v27;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        a2[2] = v26;
        a2 += 3;
        if ((v6 & 0x10) != 0)
        {
          goto LABEL_49;
        }
      }
    }

    else
    {
      a2[1] = v25;
      a2 += 2;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_49;
      }
    }

LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_52;
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

  a2 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v29 = *(this + 56);
  *a2 = 40;
  a2[1] = v29;
  a2 += 2;
  if ((v6 & 8) != 0)
  {
LABEL_52:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 6);
    *a2 = 50;
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

    a2 = TSP::Reference::_InternalSerialize(v30, v32, a3);
  }

LABEL_62:
  v36 = *(this + 1);
  if ((v36 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v36 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::DrawablesCommandGroupArchive::ByteSizeLong(TSD::DrawablesCommandGroupArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandGroupArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x3E) == 0)
  {
    goto LABEL_14;
  }

  if ((v2 & 2) != 0)
  {
    v10 = TSD::CanvasSelectionArchive::ByteSizeLong(*(this + 4));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v11 = TSP::Reference::ByteSizeLong(*(this + 5));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_8:
    v5 = TSP::Reference::ByteSizeLong(*(this + 6));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  v3 += (v2 >> 3) & 2;
  if ((v2 & 0x20) != 0)
  {
    v6 = *(this + 15);
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v6 >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 11;
    }

    v3 += v8;
  }

LABEL_14:
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

uint64_t TSD::DrawablesCommandGroupArchive::MergeFrom(TSD::DrawablesCommandGroupArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawablesCommandGroupArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawablesCommandGroupArchive::MergeFrom(uint64_t this, const TSD::DrawablesCommandGroupArchive *a2)
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

        v6 = MEMORY[0x277C9BA60](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80728];
      }

      this = TSK::CommandGroupArchive::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::CanvasSelectionArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSD::_CanvasSelectionArchive_default_instance_;
      }

      this = TSD::CanvasSelectionArchive::MergeFrom(v9, v11);
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

      v16 = MEMORY[0x277C9BB20](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v12;
    }

    this = TSP::Reference::MergeFrom(v16, v18);
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
      *(v3 + 60) = *(a2 + 15);
      goto LABEL_27;
    }

LABEL_45:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  return this;
}

uint64_t *TSD::DrawablesCommandGroupArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawablesCommandGroupArchive::Clear(this);

    return TSD::DrawablesCommandGroupArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawablesCommandGroupArchive::CopyFrom(uint64_t *this, const TSD::DrawablesCommandGroupArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawablesCommandGroupArchive::Clear(this);

    return TSD::DrawablesCommandGroupArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawablesCommandGroupArchive::IsInitialized(TSD::DrawablesCommandGroupArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSK::CommandGroupArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSD::CanvasSelectionArchive::IsInitialized(*(this + 4));
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

    result = TSP::Reference::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::DrawablesCommandGroupArchive::InternalSwap(TSD::DrawablesCommandGroupArchive *this, TSD::DrawablesCommandGroupArchive *a2)
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
  LOBYTE(v7) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v7;
  LODWORD(v7) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v7;
  return result;
}

uint64_t *TSD::ExteriorTextWrapCommandArchive::clear_old_exterior_text_wrap(TSD::ExteriorTextWrapCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::ExteriorTextWrapArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::ExteriorTextWrapCommandArchive *TSD::ExteriorTextWrapCommandArchive::ExteriorTextWrapCommandArchive(TSD::ExteriorTextWrapCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B148;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ExteriorTextWrapCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 53) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_28857B148;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ExteriorTextWrapCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 53) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::ExteriorTextWrapCommandArchive *TSD::ExteriorTextWrapCommandArchive::ExteriorTextWrapCommandArchive(TSD::ExteriorTextWrapCommandArchive *this, const TSD::ExteriorTextWrapCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B148;
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
  v7 = *(a2 + 40);
  *(this + 53) = *(a2 + 53);
  *(this + 40) = v7;
  return this;
}

void TSD::ExteriorTextWrapCommandArchive::~ExteriorTextWrapCommandArchive(TSD::ExteriorTextWrapCommandArchive *this)
{
  if (this != &TSD::_ExteriorTextWrapCommandArchive_default_instance_)
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
      TSD::ExteriorTextWrapArchive::~ExteriorTextWrapArchive(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ExteriorTextWrapCommandArchive::~ExteriorTextWrapCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ExteriorTextWrapCommandArchive::default_instance(TSD::ExteriorTextWrapCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ExteriorTextWrapCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ExteriorTextWrapCommandArchive_default_instance_;
}

uint64_t *TSD::ExteriorTextWrapCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSD::InfoCommandArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSD::ExteriorTextWrapArchive::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0xFC) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 53) = 0;
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

google::protobuf::internal *TSD::ExteriorTextWrapCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v43 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v43) & 1) == 0)
  {
    while (1)
    {
      v7 = (v43 + 1);
      v8 = *v43;
      if ((*v43 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v43, (v9 - 128));
      v43 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_79;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 > 7)
        {
          if (v10 == 8)
          {
            if (v8 == 69)
            {
              v33 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x40u;
              *(a1 + 56) = v33;
              goto LABEL_59;
            }

LABEL_60:
            if (v8)
            {
              v34 = (v8 & 7) == 4;
            }

            else
            {
              v34 = 1;
            }

            if (v34)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27670AF80((a1 + 8));
            }

            v14 = google::protobuf::internal::UnknownFieldParse();
LABEL_67:
            v43 = v14;
            if (!v14)
            {
              goto LABEL_79;
            }

            goto LABEL_68;
          }

          if (v10 != 9 || v8 != 72)
          {
            goto LABEL_60;
          }

          v5 |= 0x80u;
          v21 = (v7 + 1);
          v20 = *v7;
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_38;
          }

          v22 = *v21;
          v20 = (v22 << 7) + v20 - 128;
          if ((v22 & 0x80000000) == 0)
          {
            v21 = (v7 + 2);
LABEL_38:
            v43 = v21;
            *(a1 + 60) = v20 != 0;
            goto LABEL_68;
          }

          v41 = google::protobuf::internal::VarintParseSlow64(v7, v20);
          v43 = v41;
          *(a1 + 60) = v42 != 0;
          if (!v41)
          {
LABEL_79:
            v43 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 6)
          {
            if (v10 == 7 && v8 == 61)
            {
              v16 = *v7;
              v15 = (v7 + 4);
              v5 |= 0x20u;
              *(a1 + 52) = v16;
LABEL_59:
              v43 = v15;
              goto LABEL_68;
            }

            goto LABEL_60;
          }

          if (v8 != 48)
          {
            goto LABEL_60;
          }

          v5 |= 0x10u;
          v27 = (v7 + 1);
          LODWORD(v28) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_51;
          }

          v29 = *v27;
          v28 = (v28 + (v29 << 7) - 128);
          if ((v29 & 0x80000000) == 0)
          {
            v27 = (v7 + 2);
LABEL_51:
            v43 = v27;
            *(a1 + 48) = v28;
            goto LABEL_68;
          }

          v35 = google::protobuf::internal::VarintParseSlow32(v7, v28);
          v43 = v35;
          *(a1 + 48) = v36;
          if (!v35)
          {
            goto LABEL_79;
          }
        }
      }

      else
      {
        if (v8 >> 3 <= 3)
        {
          if (v10 == 1)
          {
            if (v8 != 10)
            {
              goto LABEL_60;
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

              v25 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v26);
              *(a1 + 24) = v25;
              v7 = v43;
            }

            v14 = sub_27680EFE0(a3, v25, v7);
          }

          else
          {
            if (v10 != 3 || v8 != 26)
            {
              goto LABEL_60;
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

              v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::ExteriorTextWrapArchive>(v13);
              *(a1 + 32) = v12;
              v7 = v43;
            }

            v14 = sub_27680C578(a3, v12, v7);
          }

          goto LABEL_67;
        }

        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_60;
          }

          v5 |= 4u;
          v30 = (v7 + 1);
          LODWORD(v31) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          v32 = *v30;
          v31 = (v31 + (v32 << 7) - 128);
          if ((v32 & 0x80000000) == 0)
          {
            v30 = (v7 + 2);
LABEL_56:
            v43 = v30;
            *(a1 + 40) = v31;
            goto LABEL_68;
          }

          v37 = google::protobuf::internal::VarintParseSlow32(v7, v31);
          v43 = v37;
          *(a1 + 40) = v38;
          if (!v37)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (v10 != 5 || v8 != 40)
          {
            goto LABEL_60;
          }

          v5 |= 8u;
          v17 = (v7 + 1);
          LODWORD(v18) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_31;
          }

          v19 = *v17;
          v18 = (v18 + (v19 << 7) - 128);
          if ((v19 & 0x80000000) == 0)
          {
            v17 = (v7 + 2);
LABEL_31:
            v43 = v17;
            *(a1 + 44) = v18;
            goto LABEL_68;
          }

          v39 = google::protobuf::internal::VarintParseSlow32(v7, v18);
          v43 = v39;
          *(a1 + 44) = v40;
          if (!v39)
          {
            goto LABEL_79;
          }
        }
      }

LABEL_68:
      if (sub_27670AF08(a3, &v43))
      {
        goto LABEL_2;
      }
    }

    v7 = (v43 + 2);
LABEL_6:
    v43 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v43;
}

unsigned __int8 *TSD::ExteriorTextWrapCommandArchive::_InternalSerialize(TSD::ExteriorTextWrapCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
        goto LABEL_4;
      }

LABEL_30:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(this + 10);
      *a2 = 32;
      if (v19 > 0x7F)
      {
        a2[1] = v19 | 0x80;
        v20 = v19 >> 7;
        if (v19 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++a2;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(a2 - 1) = v21;
          if ((v6 & 8) != 0)
          {
            goto LABEL_41;
          }
        }

        else
        {
          a2[2] = v20;
          a2 += 3;
          if ((v6 & 8) != 0)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
        a2[1] = v19;
        a2 += 2;
        if ((v6 & 8) != 0)
        {
          goto LABEL_41;
        }
      }

LABEL_5:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_52:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v27 = *(this + 12);
      *a2 = 48;
      if (v27 > 0x7F)
      {
        a2[1] = v27 | 0x80;
        v28 = v27 >> 7;
        if (v27 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v28 | 0x80;
            v29 = v28 >> 7;
            ++a2;
            v30 = v28 >> 14;
            v28 >>= 7;
          }

          while (v30);
          *(a2 - 1) = v29;
          if ((v6 & 0x20) != 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
          a2[2] = v28;
          a2 += 3;
          if ((v6 & 0x20) != 0)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
        a2[1] = v27;
        a2 += 2;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_63;
        }
      }

LABEL_7:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_66;
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

  a2 = TSD::ExteriorTextWrapArchive::_InternalSerialize(v13, v15, a3, a4);
  if ((v6 & 4) != 0)
  {
    goto LABEL_30;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v23 = *(this + 11);
  *a2 = 40;
  if (v23 > 0x7F)
  {
    a2[1] = v23 | 0x80;
    v24 = v23 >> 7;
    if (v23 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++a2;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(a2 - 1) = v25;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      a2[2] = v24;
      a2 += 3;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_52;
      }
    }
  }

  else
  {
    a2[1] = v23;
    a2 += 2;
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_52;
    }
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_63:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(this + 13);
  *a2 = 61;
  *(a2 + 1) = v31;
  a2 += 5;
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

LABEL_66:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(this + 14);
  *a2 = 69;
  *(a2 + 1) = v32;
  a2 += 5;
  if ((v6 & 0x80) != 0)
  {
LABEL_69:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v33 = *(this + 60);
    *a2 = 72;
    a2[1] = v33;
    a2 += 2;
  }

LABEL_72:
  v34 = *(this + 1);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v34 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ExteriorTextWrapCommandArchive::ByteSizeLong(TSD::ExteriorTextWrapCommandArchive *this)
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
    goto LABEL_15;
  }

  if ((v2 & 2) != 0)
  {
    v7 = TSD::ExteriorTextWrapArchive::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_19:
      v3 += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  if ((v2 & 0x10) != 0)
  {
LABEL_9:
    v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  v5 = v3 + 5;
  if ((v2 & 0x20) == 0)
  {
    v5 = v3;
  }

  if ((v2 & 0x40) != 0)
  {
    v5 += 5;
  }

  v3 = v5 + ((v2 >> 6) & 2);
LABEL_15:
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

uint64_t TSD::ExteriorTextWrapCommandArchive::MergeFrom(TSD::ExteriorTextWrapCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ExteriorTextWrapCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ExteriorTextWrapCommandArchive::MergeFrom(uint64_t this, const TSD::ExteriorTextWrapCommandArchive *a2)
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

        goto LABEL_31;
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::ExteriorTextWrapArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSD::_ExteriorTextWrapArchive_default_instance_;
    }

    this = TSD::ExteriorTextWrapArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_32;
    }

LABEL_31:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_33;
    }

LABEL_32:
    *(v3 + 44) = *(a2 + 11);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(v3 + 52) = *(a2 + 13);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_12:
      *(v3 + 60) = *(a2 + 60);
      goto LABEL_13;
    }

LABEL_35:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return this;
}

uint64_t *TSD::ExteriorTextWrapCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ExteriorTextWrapCommandArchive::Clear(this);

    return TSD::ExteriorTextWrapCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ExteriorTextWrapCommandArchive::CopyFrom(uint64_t *this, const TSD::ExteriorTextWrapCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ExteriorTextWrapCommandArchive::Clear(this);

    return TSD::ExteriorTextWrapCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ExteriorTextWrapCommandArchive::IsInitialized(TSD::InfoCommandArchive **this)
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

__n128 TSD::ExteriorTextWrapCommandArchive::InternalSwap(TSD::ExteriorTextWrapCommandArchive *this, TSD::ExteriorTextWrapCommandArchive *a2)
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
  LOBYTE(v7) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v7;
  return result;
}

TSD::DrawableHyperlinkCommandArchive *TSD::DrawableHyperlinkCommandArchive::DrawableHyperlinkCommandArchive(TSD::DrawableHyperlinkCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B1F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableHyperlinkCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  return this;
}

TSD::DrawableHyperlinkCommandArchive *TSD::DrawableHyperlinkCommandArchive::DrawableHyperlinkCommandArchive(TSD::DrawableHyperlinkCommandArchive *this, const TSD::DrawableHyperlinkCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_28857B1F8;
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
  return this;
}

void TSD::DrawableHyperlinkCommandArchive::~DrawableHyperlinkCommandArchive(TSD::DrawableHyperlinkCommandArchive *this)
{
  v2 = *(this + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277C9C1D0](v4, 0x1012C40EC159624);
  }

  if (this != &TSD::_DrawableHyperlinkCommandArchive_default_instance_)
  {
    v5 = *(this + 5);
    if (v5)
    {
      TSD::InfoCommandArchive::~InfoCommandArchive(v5);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::DrawableHyperlinkCommandArchive::~DrawableHyperlinkCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::DrawableHyperlinkCommandArchive::default_instance(TSD::DrawableHyperlinkCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawableHyperlinkCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawableHyperlinkCommandArchive_default_instance_;
}

uint64_t *TSD::DrawableHyperlinkCommandArchive::Clear(uint64_t *this)
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
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
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

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    this = TSD::InfoCommandArchive::Clear(this[5]);
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
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

google::protobuf::internal *TSD::DrawableHyperlinkCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_27670AF08(a3, &v17) & 1) == 0)
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
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      goto LABEL_24;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
LABEL_24:
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_30;
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
        return v17;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_30;
    }

    *(a1 + 16) |= 4u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v13);
      *(a1 + 40) = v12;
      v5 = v17;
    }

    v11 = sub_27680EFE0(a3, v12, v5);
LABEL_30:
    v17 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v17;
}

google::protobuf::UnknownFieldSet *TSD::DrawableHyperlinkCommandArchive::_InternalSerialize(TSD::DrawableHyperlinkCommandArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 5);
    *v4 = 10;
    v10 = *(v9 + 5);
    if (v10 > 0x7F)
    {
      *(v4 + 1) = v10 | 0x80;
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
        *(v4 + 2) = v12;
        v11 = v4 + 3;
      }
    }

    else
    {
      *(v4 + 1) = v10;
      v11 = v4 + 2;
    }

    v4 = TSD::InfoCommandArchive::_InternalSerialize(v9, v11, a3, v4);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276727B88(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_4:
    v4 = sub_276727B88(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::DrawableHyperlinkCommandArchive::ByteSizeLong(TSD::DrawableHyperlinkCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    v4 = TSD::InfoCommandArchive::ByteSizeLong(*(this + 5));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSD::DrawableHyperlinkCommandArchive::MergeFrom(TSD::DrawableHyperlinkCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawableHyperlinkCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawableHyperlinkCommandArchive::MergeFrom(uint64_t this, const TSD::DrawableHyperlinkCommandArchive *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

LABEL_10:
        *(v3 + 16) |= 4u;
        v6 = *(v3 + 40);
        if (!v6)
        {
          v7 = *(v3 + 8);
          if (v7)
          {
            v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
          }

          v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v7);
          *(v3 + 40) = v6;
        }

        if (*(a2 + 5))
        {
          v8 = *(a2 + 5);
        }

        else
        {
          v8 = &TSD::_InfoCommandArchive_default_instance_;
        }

        return TSD::InfoCommandArchive::MergeFrom(v6, v8);
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
      return this;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSD::DrawableHyperlinkCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableHyperlinkCommandArchive::Clear(this);

    return TSD::DrawableHyperlinkCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawableHyperlinkCommandArchive::CopyFrom(uint64_t *this, const TSD::DrawableHyperlinkCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableHyperlinkCommandArchive::Clear(this);

    return TSD::DrawableHyperlinkCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawableHyperlinkCommandArchive::IsInitialized(TSD::InfoCommandArchive **this)
{
  if ((this[2] & 4) != 0)
  {
    return TSD::InfoCommandArchive::IsInitialized(this[5]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::DrawableHyperlinkCommandArchive::InternalSwap(TSD::DrawableHyperlinkCommandArchive *this, TSD::DrawableHyperlinkCommandArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

TSK::CommandSelectionBehaviorArchive *TSD::CommentInvalidatingCommandSelectionBehaviorArchive::clear_super(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandSelectionBehaviorArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSD::CommentInvalidatingCommandSelectionBehaviorArchive::clear_annotation_displaying_command(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::CommentInvalidatingCommandSelectionBehaviorArchive *TSD::CommentInvalidatingCommandSelectionBehaviorArchive::CommentInvalidatingCommandSelectionBehaviorArchive(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B2A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CommentInvalidatingCommandSelectionBehaviorArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_28857B2A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CommentInvalidatingCommandSelectionBehaviorArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSD::CommentInvalidatingCommandSelectionBehaviorArchive *TSD::CommentInvalidatingCommandSelectionBehaviorArchive::CommentInvalidatingCommandSelectionBehaviorArchive(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this, const TSD::CommentInvalidatingCommandSelectionBehaviorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B2A8;
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TSD::CommentInvalidatingCommandSelectionBehaviorArchive::~CommentInvalidatingCommandSelectionBehaviorArchive(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this)
{
  if (this != &TSD::_CommentInvalidatingCommandSelectionBehaviorArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C9B4C0]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C25E5AF8);
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
  TSD::CommentInvalidatingCommandSelectionBehaviorArchive::~CommentInvalidatingCommandSelectionBehaviorArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::CommentInvalidatingCommandSelectionBehaviorArchive::default_instance(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this)
{
  if (atomic_load_explicit(scc_info_CommentInvalidatingCommandSelectionBehaviorArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_CommentInvalidatingCommandSelectionBehaviorArchive_default_instance_;
}

uint64_t *TSD::CommentInvalidatingCommandSelectionBehaviorArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSK::CommandSelectionBehaviorArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::CommentInvalidatingCommandSelectionBehaviorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_70;
      }

      v7 = TagFallback;
      v8 = v33;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 != 32)
          {
            goto LABEL_49;
          }

          v5 |= 8u;
          v23 = (v7 + 1);
          v22 = *v7;
          if ((v22 & 0x8000000000000000) == 0)
          {
            goto LABEL_37;
          }

          v24 = *v23;
          v22 = (v24 << 7) + v22 - 128;
          if ((v24 & 0x80000000) == 0)
          {
            v23 = (v7 + 2);
LABEL_37:
            v42 = v23;
            *(a1 + 41) = v22 != 0;
            goto LABEL_57;
          }

          v34 = google::protobuf::internal::VarintParseSlow64(v7, v22);
          v42 = v34;
          *(a1 + 41) = v35 != 0;
          if (!v34)
          {
            goto LABEL_70;
          }
        }

        else if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_49;
          }

          v5 |= 0x10u;
          v29 = (v7 + 1);
          v28 = *v7;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_48;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if ((v30 & 0x80000000) == 0)
          {
            v29 = (v7 + 2);
LABEL_48:
            v42 = v29;
            *(a1 + 42) = v28 != 0;
            goto LABEL_57;
          }

          v40 = google::protobuf::internal::VarintParseSlow64(v7, v28);
          v42 = v40;
          *(a1 + 42) = v41 != 0;
          if (!v40)
          {
LABEL_70:
            v42 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_49;
          }

          v5 |= 0x20u;
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
            v42 = v16;
            *(a1 + 43) = v15 != 0;
            goto LABEL_57;
          }

          v36 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v42 = v36;
          *(a1 + 43) = v37 != 0;
          if (!v36)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_49;
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

            v20 = MEMORY[0x277C9BA70](v19);
            LODWORD(v18) = v20;
            *(a1 + 24) = v20;
            v7 = v42;
          }

          v21 = sub_27680F8D0(a3, v18, v7);
LABEL_56:
          v42 = v21;
          if (!v21)
          {
            goto LABEL_70;
          }

          goto LABEL_57;
        }

        if (v10 == 2)
        {
          if (v8 == 18)
          {
            *(a1 + 16) |= 2u;
            v25 = *(a1 + 32);
            if (!v25)
            {
              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = MEMORY[0x277C9BB20](v26);
              LODWORD(v25) = v27;
              *(a1 + 32) = v27;
              v7 = v42;
            }

            v21 = sub_27680B6EC(a3, v25, v7);
            goto LABEL_56;
          }

LABEL_49:
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

          v21 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_56;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_49;
        }

        v5 |= 4u;
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
          v42 = v13;
          *(a1 + 40) = v12 != 0;
          goto LABEL_57;
        }

        v38 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v42 = v38;
        *(a1 + 40) = v39 != 0;
        if (!v38)
        {
          goto LABEL_70;
        }
      }

LABEL_57:
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

unsigned __int8 *TSD::CommentInvalidatingCommandSelectionBehaviorArchive::_InternalSerialize(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSK::CommandSelectionBehaviorArchive::_InternalSerialize(v7, v9, a3);
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

  a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 40);
  *a2 = 24;
  a2[1] = v19;
  a2 += 2;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 41);
  *a2 = 32;
  a2[1] = v20;
  a2 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 42);
  *a2 = 40;
  a2[1] = v21;
  a2 += 2;
  if ((v6 & 0x20) != 0)
  {
LABEL_37:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 43);
    *a2 = 48;
    a2[1] = v22;
    a2 += 2;
  }

LABEL_40:
  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v23 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::CommentInvalidatingCommandSelectionBehaviorArchive::ByteSizeLong(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandSelectionBehaviorArchive::ByteSizeLong(*(this + 3));
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
      v5 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v6.i64[0] = 0x200000002;
    v6.i64[1] = 0x200000002;
    v3 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_27682D190), v6));
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

uint64_t TSD::CommentInvalidatingCommandSelectionBehaviorArchive::MergeFrom(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::CommentInvalidatingCommandSelectionBehaviorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::CommentInvalidatingCommandSelectionBehaviorArchive::MergeFrom(uint64_t this, const TSD::CommentInvalidatingCommandSelectionBehaviorArchive *a2)
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

        v6 = MEMORY[0x277C9BA70](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80768];
      }

      this = TSK::CommandSelectionBehaviorArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_29;
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

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_30;
    }

LABEL_29:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(v3 + 41) = *(a2 + 41);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
LABEL_11:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_10:
      *(v3 + 43) = *(a2 + 43);
      goto LABEL_11;
    }

LABEL_31:
    *(v3 + 42) = *(a2 + 42);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSD::CommentInvalidatingCommandSelectionBehaviorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::CommentInvalidatingCommandSelectionBehaviorArchive::Clear(this);

    return TSD::CommentInvalidatingCommandSelectionBehaviorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::CommentInvalidatingCommandSelectionBehaviorArchive::CopyFrom(uint64_t *this, const TSD::CommentInvalidatingCommandSelectionBehaviorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::CommentInvalidatingCommandSelectionBehaviorArchive::Clear(this);

    return TSD::CommentInvalidatingCommandSelectionBehaviorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::CommentInvalidatingCommandSelectionBehaviorArchive::IsInitialized(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSK::CommandSelectionBehaviorArchive::IsInitialized(*(this + 3));
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

__n128 TSD::CommentInvalidatingCommandSelectionBehaviorArchive::InternalSwap(TSD::CommentInvalidatingCommandSelectionBehaviorArchive *this, TSD::CommentInvalidatingCommandSelectionBehaviorArchive *a2)
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
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_new_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_new_original_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_old_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_old_original_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Path *TSD::ImageReplaceCommandArchive::clear_instant_alpha_path(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::Path *TSD::ImageReplaceCommandArchive::clear_old_instant_alpha_path(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Size *TSD::ImageReplaceCommandArchive::clear_natural_size_for_iapath(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::Size *TSD::ImageReplaceCommandArchive::clear_old_natural_size_for_iapath(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

uint64_t *TSD::ImageReplaceCommandArchive::clear_target_image_geometry(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSD::GeometryArchive::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

uint64_t *TSD::ImageReplaceCommandArchive::clear_old_target_image_geometry(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSD::GeometryArchive::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

uint64_t *TSD::ImageReplaceCommandArchive::clear_target_mask_geometry(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSD::GeometryArchive::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

uint64_t *TSD::ImageReplaceCommandArchive::clear_old_target_mask_geometry(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSD::GeometryArchive::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

uint64_t *TSD::ImageReplaceCommandArchive::clear_image_adjustments(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSD::ImageAdjustmentsArchive::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_adjusted_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x4000u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_enhanced_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

uint64_t *TSD::ImageReplaceCommandArchive::clear_old_image_adjustments(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSD::ImageAdjustmentsArchive::Clear(result);
  }

  *(this + 4) &= ~0x10000u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_old_adjusted_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x20000u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_old_enhanced_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x40000u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_thumbnail_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x80000u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_old_thumbnail_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 23);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x100000u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_thumbnail_adjusted_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x200000u;
  return result;
}

TSP::DataReference *TSD::ImageReplaceCommandArchive::clear_old_thumbnail_adjusted_image_data(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x400000u;
  return result;
}

TSP::Size *TSD::ImageReplaceCommandArchive::clear_natural_size(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 26);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x800000u;
  return result;
}

TSP::Size *TSD::ImageReplaceCommandArchive::clear_old_natural_size(TSD::ImageReplaceCommandArchive *this)
{
  result = *(this + 27);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x1000000u;
  return result;
}

TSD::ImageReplaceCommandArchive *TSD::ImageReplaceCommandArchive::ImageReplaceCommandArchive(TSD::ImageReplaceCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B358;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageReplaceCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 27) = 0;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_28857B358;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageReplaceCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 27) = 0;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::ImageReplaceCommandArchive *TSD::ImageReplaceCommandArchive::ImageReplaceCommandArchive(TSD::ImageReplaceCommandArchive *this, const TSD::ImageReplaceCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B358;
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
  if ((v5 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v5 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v5 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v5 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v5 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v5 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v5 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v5 & 0x40000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v5 & 0x80000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v5 & 0x100000) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v5 & 0x200000) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v5 & 0x400000) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v5 & 0x800000) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v5 & 0x1000000) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  return this;
}

void TSD::ImageReplaceCommandArchive::~ImageReplaceCommandArchive(TSD::ImageReplaceCommandArchive *this)
{
  sub_2767EAAEC(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ImageReplaceCommandArchive::~ImageReplaceCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_2767EAAEC(uint64_t *result)
{
  if (result != &TSD::_ImageReplaceCommandArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSD::InfoCommandArchive::~InfoCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::DataReference::~DataReference(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::DataReference::~DataReference(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::DataReference::~DataReference(v5);
      MEMORY[0x277C9C1D0]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSP::DataReference::~DataReference(v6);
      MEMORY[0x277C9C1D0]();
    }

    if (v1[8])
    {
      v7 = MEMORY[0x277C9B630]();
      MEMORY[0x277C9C1D0](v7, 0x10A1C40290C9B23);
    }

    if (v1[9])
    {
      v8 = MEMORY[0x277C9B630]();
      MEMORY[0x277C9C1D0](v8, 0x10A1C40290C9B23);
    }

    v9 = v1[10];
    if (v9)
    {
      TSP::Size::~Size(v9);
      MEMORY[0x277C9C1D0]();
    }

    v10 = v1[11];
    if (v10)
    {
      TSP::Size::~Size(v10);
      MEMORY[0x277C9C1D0]();
    }

    v11 = v1[12];
    if (v11)
    {
      TSD::GeometryArchive::~GeometryArchive(v11);
      MEMORY[0x277C9C1D0]();
    }

    v12 = v1[13];
    if (v12)
    {
      TSD::GeometryArchive::~GeometryArchive(v12);
      MEMORY[0x277C9C1D0]();
    }

    v13 = v1[14];
    if (v13)
    {
      TSD::GeometryArchive::~GeometryArchive(v13);
      MEMORY[0x277C9C1D0]();
    }

    v14 = v1[15];
    if (v14)
    {
      TSD::GeometryArchive::~GeometryArchive(v14);
      MEMORY[0x277C9C1D0]();
    }

    v15 = v1[16];
    if (v15)
    {
      TSD::ImageAdjustmentsArchive::~ImageAdjustmentsArchive(v15);
      MEMORY[0x277C9C1D0]();
    }

    v16 = v1[17];
    if (v16)
    {
      TSP::DataReference::~DataReference(v16);
      MEMORY[0x277C9C1D0]();
    }

    v17 = v1[18];
    if (v17)
    {
      TSP::DataReference::~DataReference(v17);
      MEMORY[0x277C9C1D0]();
    }

    v18 = v1[19];
    if (v18)
    {
      TSD::ImageAdjustmentsArchive::~ImageAdjustmentsArchive(v18);
      MEMORY[0x277C9C1D0]();
    }

    v19 = v1[20];
    if (v19)
    {
      TSP::DataReference::~DataReference(v19);
      MEMORY[0x277C9C1D0]();
    }

    v20 = v1[21];
    if (v20)
    {
      TSP::DataReference::~DataReference(v20);
      MEMORY[0x277C9C1D0]();
    }

    v21 = v1[22];
    if (v21)
    {
      TSP::DataReference::~DataReference(v21);
      MEMORY[0x277C9C1D0]();
    }

    v22 = v1[23];
    if (v22)
    {
      TSP::DataReference::~DataReference(v22);
      MEMORY[0x277C9C1D0]();
    }

    v23 = v1[24];
    if (v23)
    {
      TSP::DataReference::~DataReference(v23);
      MEMORY[0x277C9C1D0]();
    }

    v24 = v1[25];
    if (v24)
    {
      TSP::DataReference::~DataReference(v24);
      MEMORY[0x277C9C1D0]();
    }

    v25 = v1[26];
    if (v25)
    {
      TSP::Size::~Size(v25);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[27];
    if (result)
    {
      TSP::Size::~Size(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::ImageReplaceCommandArchive::default_instance(TSD::ImageReplaceCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageReplaceCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageReplaceCommandArchive_default_instance_;
}

uint64_t *TSD::ImageReplaceCommandArchive::Clear(uint64_t *this)
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

      goto LABEL_39;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::DataReference::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = TSP::DataReference::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = TSP::DataReference::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_42:
    this = TSP::Path::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_41:
  this = TSP::DataReference::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_42;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_43:
  this = TSP::Path::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::Size::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSP::Size::Clear(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_47;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSD::GeometryArchive::Clear(*(v1 + 96));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = TSD::GeometryArchive::Clear(*(v1 + 104));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = TSD::GeometryArchive::Clear(*(v1 + 112));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = TSD::GeometryArchive::Clear(*(v1 + 120));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = TSD::ImageAdjustmentsArchive::Clear(*(v1 + 128));
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_51:
  this = TSP::DataReference::Clear(*(v1 + 136));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    this = TSP::DataReference::Clear(*(v1 + 144));
  }

LABEL_21:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v2 & 0x10000) != 0)
  {
    this = TSD::ImageAdjustmentsArchive::Clear(*(v1 + 152));
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_55;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = TSP::DataReference::Clear(*(v1 + 160));
  if ((v2 & 0x40000) == 0)
  {
LABEL_25:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = TSP::DataReference::Clear(*(v1 + 168));
  if ((v2 & 0x80000) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = TSP::DataReference::Clear(*(v1 + 176));
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = TSP::DataReference::Clear(*(v1 + 184));
  if ((v2 & 0x200000) == 0)
  {
LABEL_28:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = TSP::DataReference::Clear(*(v1 + 192));
  if ((v2 & 0x400000) == 0)
  {
LABEL_29:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_59:
  this = TSP::DataReference::Clear(*(v1 + 200));
  if ((v2 & 0x800000) != 0)
  {
LABEL_30:
    this = TSP::Size::Clear(*(v1 + 208));
  }

LABEL_31:
  if ((v2 & 0x1000000) != 0)
  {
    this = TSP::Size::Clear(*(v1 + 216));
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

google::protobuf::internal *TSD::ImageReplaceCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v62 = a2;
  while (2)
  {
    if (sub_27670AF08(a3, &v62))
    {
      return v62;
    }

    v5 = (v62 + 1);
    v6 = *v62;
    if ((*v62 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v62 + 2);
LABEL_6:
      v62 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v62, (v7 - 128));
    v62 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v12;
LABEL_7:
    switch(v6 >> 3)
    {
      case 1u:
        if (v6 != 10)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 1u;
        v8 = *(a1 + 24);
        if (!v8)
        {
          v9 = *(a1 + 8);
          if (v9)
          {
            v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
          }

          v8 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v9);
          *(a1 + 24) = v8;
          v5 = v62;
        }

        v10 = sub_27680EFE0(a3, v8, v5);
        goto LABEL_146;
      case 2u:
        if (v6 != 18)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (v13)
        {
          goto LABEL_145;
        }

        v40 = *(a1 + 8);
        if (v40)
        {
          v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
        }

        v41 = MEMORY[0x277C9BA90](v40);
        LODWORD(v13) = v41;
        *(a1 + 32) = v41;
        goto LABEL_144;
      case 3u:
        if (v6 != 26)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 4u;
        v13 = *(a1 + 40);
        if (v13)
        {
          goto LABEL_145;
        }

        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x277C9BA90](v25);
        LODWORD(v13) = v26;
        *(a1 + 40) = v26;
        goto LABEL_144;
      case 4u:
        if (v6 != 34)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 8u;
        v13 = *(a1 + 48);
        if (v13)
        {
          goto LABEL_145;
        }

        v38 = *(a1 + 8);
        if (v38)
        {
          v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
        }

        v39 = MEMORY[0x277C9BA90](v38);
        LODWORD(v13) = v39;
        *(a1 + 48) = v39;
        goto LABEL_144;
      case 5u:
        if (v6 != 42)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x10u;
        v13 = *(a1 + 56);
        if (v13)
        {
          goto LABEL_145;
        }

        v27 = *(a1 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = MEMORY[0x277C9BA90](v27);
        LODWORD(v13) = v28;
        *(a1 + 56) = v28;
        goto LABEL_144;
      case 6u:
        if (v6 != 50)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x20u;
        v34 = *(a1 + 64);
        if (v34)
        {
          goto LABEL_97;
        }

        v35 = *(a1 + 8);
        if (v35)
        {
          v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
        }

        v36 = MEMORY[0x277C9BAC0](v35);
        LODWORD(v34) = v36;
        *(a1 + 64) = v36;
        goto LABEL_96;
      case 7u:
        if (v6 != 58)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x40u;
        v34 = *(a1 + 72);
        if (v34)
        {
          goto LABEL_97;
        }

        v44 = *(a1 + 8);
        if (v44)
        {
          v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
        }

        v45 = MEMORY[0x277C9BAC0](v44);
        LODWORD(v34) = v45;
        *(a1 + 72) = v45;
LABEL_96:
        v5 = v62;
LABEL_97:
        v10 = sub_27680AC5C(a3, v34, v5);
        goto LABEL_146;
      case 8u:
        if (v6 != 66)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x80u;
        v20 = *(a1 + 80);
        if (v20)
        {
          goto LABEL_126;
        }

        v46 = *(a1 + 8);
        if (v46)
        {
          v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
        }

        v47 = MEMORY[0x277C9BAD0](v46);
        LODWORD(v20) = v47;
        *(a1 + 80) = v47;
        goto LABEL_125;
      case 9u:
        if (v6 != 74)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x100u;
        v20 = *(a1 + 88);
        if (v20)
        {
          goto LABEL_126;
        }

        v53 = *(a1 + 8);
        if (v53)
        {
          v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
        }

        v54 = MEMORY[0x277C9BAD0](v53);
        LODWORD(v20) = v54;
        *(a1 + 88) = v54;
        goto LABEL_125;
      case 0xAu:
        if (v6 != 82)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x200u;
        v23 = *(a1 + 96);
        if (v23)
        {
          goto LABEL_119;
        }

        v52 = *(a1 + 8);
        if (v52)
        {
          v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v52);
        *(a1 + 96) = v23;
        goto LABEL_118;
      case 0xCu:
        if (v6 != 98)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x400u;
        v23 = *(a1 + 104);
        if (v23)
        {
          goto LABEL_119;
        }

        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v24);
        *(a1 + 104) = v23;
        goto LABEL_118;
      case 0xDu:
        if (v6 != 106)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x800u;
        v23 = *(a1 + 112);
        if (v23)
        {
          goto LABEL_119;
        }

        v37 = *(a1 + 8);
        if (v37)
        {
          v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v37);
        *(a1 + 112) = v23;
        goto LABEL_118;
      case 0xEu:
        if (v6 != 114)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x1000u;
        v23 = *(a1 + 120);
        if (v23)
        {
          goto LABEL_119;
        }

        v31 = *(a1 + 8);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v31);
        *(a1 + 120) = v23;
LABEL_118:
        v5 = v62;
LABEL_119:
        v10 = sub_27680C4A8(a3, v23, v5);
        goto LABEL_146;
      case 0xFu:
        if (v6 != 122)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x2000u;
        v18 = *(a1 + 128);
        if (v18)
        {
          goto LABEL_138;
        }

        v19 = *(a1 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v19);
        *(a1 + 128) = v18;
        goto LABEL_137;
      case 0x10u:
        if (v6 != 130)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x4000u;
        v13 = *(a1 + 136);
        if (v13)
        {
          goto LABEL_145;
        }

        v48 = *(a1 + 8);
        if (v48)
        {
          v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
        }

        v49 = MEMORY[0x277C9BA90](v48);
        LODWORD(v13) = v49;
        *(a1 + 136) = v49;
        goto LABEL_144;
      case 0x11u:
        if (v6 != 138)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x8000u;
        v13 = *(a1 + 144);
        if (v13)
        {
          goto LABEL_145;
        }

        v50 = *(a1 + 8);
        if (v50)
        {
          v50 = *(v50 & 0xFFFFFFFFFFFFFFFELL);
        }

        v51 = MEMORY[0x277C9BA90](v50);
        LODWORD(v13) = v51;
        *(a1 + 144) = v51;
        goto LABEL_144;
      case 0x12u:
        if (v6 != 146)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x10000u;
        v18 = *(a1 + 152);
        if (v18)
        {
          goto LABEL_138;
        }

        v57 = *(a1 + 8);
        if (v57)
        {
          v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v57);
        *(a1 + 152) = v18;
LABEL_137:
        v5 = v62;
LABEL_138:
        v10 = sub_27680CA58(a3, v18, v5);
        goto LABEL_146;
      case 0x13u:
        if (v6 != 154)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x20000u;
        v13 = *(a1 + 160);
        if (v13)
        {
          goto LABEL_145;
        }

        v55 = *(a1 + 8);
        if (v55)
        {
          v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
        }

        v56 = MEMORY[0x277C9BA90](v55);
        LODWORD(v13) = v56;
        *(a1 + 160) = v56;
        goto LABEL_144;
      case 0x14u:
        if (v6 != 162)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x40000u;
        v13 = *(a1 + 168);
        if (v13)
        {
          goto LABEL_145;
        }

        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C9BA90](v14);
        LODWORD(v13) = v15;
        *(a1 + 168) = v15;
        goto LABEL_144;
      case 0x15u:
        if (v6 != 170)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x80000u;
        v13 = *(a1 + 176);
        if (v13)
        {
          goto LABEL_145;
        }

        v32 = *(a1 + 8);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v33 = MEMORY[0x277C9BA90](v32);
        LODWORD(v13) = v33;
        *(a1 + 176) = v33;
        goto LABEL_144;
      case 0x16u:
        if (v6 != 178)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x100000u;
        v13 = *(a1 + 184);
        if (v13)
        {
          goto LABEL_145;
        }

        v58 = *(a1 + 8);
        if (v58)
        {
          v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
        }

        v59 = MEMORY[0x277C9BA90](v58);
        LODWORD(v13) = v59;
        *(a1 + 184) = v59;
        goto LABEL_144;
      case 0x17u:
        if (v6 != 186)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x200000u;
        v13 = *(a1 + 192);
        if (v13)
        {
          goto LABEL_145;
        }

        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277C9BA90](v16);
        LODWORD(v13) = v17;
        *(a1 + 192) = v17;
        goto LABEL_144;
      case 0x18u:
        if (v6 != 194)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x400000u;
        v13 = *(a1 + 200);
        if (v13)
        {
          goto LABEL_145;
        }

        v29 = *(a1 + 8);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = MEMORY[0x277C9BA90](v29);
        LODWORD(v13) = v30;
        *(a1 + 200) = v30;
LABEL_144:
        v5 = v62;
LABEL_145:
        v10 = sub_27680B7BC(a3, v13, v5);
        goto LABEL_146;
      case 0x19u:
        if (v6 != 202)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x800000u;
        v20 = *(a1 + 208);
        if (v20)
        {
          goto LABEL_126;
        }

        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x277C9BAD0](v21);
        LODWORD(v20) = v22;
        *(a1 + 208) = v22;
        goto LABEL_125;
      case 0x1Au:
        if (v6 != 210)
        {
          goto LABEL_148;
        }

        *(a1 + 16) |= 0x1000000u;
        v20 = *(a1 + 216);
        if (v20)
        {
          goto LABEL_126;
        }

        v42 = *(a1 + 8);
        if (v42)
        {
          v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
        }

        v43 = MEMORY[0x277C9BAD0](v42);
        LODWORD(v20) = v43;
        *(a1 + 216) = v43;
LABEL_125:
        v5 = v62;
LABEL_126:
        v10 = sub_27680AB8C(a3, v20, v5);
        goto LABEL_146;
      default:
LABEL_148:
        if (v6)
        {
          v60 = (v6 & 7) == 4;
        }

        else
        {
          v60 = 1;
        }

        if (!v60)
        {
          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_146:
          v62 = v10;
          if (!v10)
          {
            return 0;
          }

          continue;
        }

        *(a3 + 80) = v6 - 1;
        return v62;
    }
  }
}

unsigned __int8 *TSD::ImageReplaceCommandArchive::_InternalSerialize(TSD::ImageReplaceCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
        goto LABEL_4;
      }

      goto LABEL_47;
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

  a2 = TSP::DataReference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_57;
  }

LABEL_47:
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

  a2 = TSP::DataReference::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_67;
  }

LABEL_57:
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

  a2 = TSP::DataReference::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_77;
  }

LABEL_67:
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

  a2 = TSP::DataReference::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_87;
  }

LABEL_77:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v37 = *(this + 8);
  *a2 = 50;
  v38 = *(v37 + 10);
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

  a2 = TSP::Path::_InternalSerialize(v37, v39, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_97;
  }

LABEL_87:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v43 = *(this + 9);
  *a2 = 58;
  v44 = *(v43 + 10);
  if (v44 > 0x7F)
  {
    a2[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = a2 + 3;
      do
      {
        *(v45 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v45;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v45 - 1) = v47;
    }

    else
    {
      a2[2] = v46;
      v45 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v44;
    v45 = a2 + 2;
  }

  a2 = TSP::Path::_InternalSerialize(v43, v45, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_107;
  }

LABEL_97:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(this + 10);
  *a2 = 66;
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

  a2 = TSP::Size::_InternalSerialize(v49, v51, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_117;
  }

LABEL_107:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v55 = *(this + 11);
  *a2 = 74;
  v56 = *(v55 + 5);
  if (v56 > 0x7F)
  {
    a2[1] = v56 | 0x80;
    v58 = v56 >> 7;
    if (v56 >> 14)
    {
      v57 = a2 + 3;
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
      a2[2] = v58;
      v57 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v56;
    v57 = a2 + 2;
  }

  a2 = TSP::Size::_InternalSerialize(v55, v57, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_127;
  }

LABEL_117:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v61 = *(this + 12);
  *a2 = 82;
  v62 = *(v61 + 5);
  if (v62 > 0x7F)
  {
    a2[1] = v62 | 0x80;
    v64 = v62 >> 7;
    if (v62 >> 14)
    {
      v63 = a2 + 3;
      do
      {
        *(v63 - 1) = v64 | 0x80;
        v65 = v64 >> 7;
        ++v63;
        v66 = v64 >> 14;
        v64 >>= 7;
      }

      while (v66);
      *(v63 - 1) = v65;
    }

    else
    {
      a2[2] = v64;
      v63 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v62;
    v63 = a2 + 2;
  }

  a2 = TSD::GeometryArchive::_InternalSerialize(v61, v63, a3, a4);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_137;
  }

LABEL_127:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v67 = *(this + 13);
  *a2 = 98;
  v68 = *(v67 + 5);
  if (v68 > 0x7F)
  {
    a2[1] = v68 | 0x80;
    v70 = v68 >> 7;
    if (v68 >> 14)
    {
      v69 = a2 + 3;
      do
      {
        *(v69 - 1) = v70 | 0x80;
        v71 = v70 >> 7;
        ++v69;
        v72 = v70 >> 14;
        v70 >>= 7;
      }

      while (v72);
      *(v69 - 1) = v71;
    }

    else
    {
      a2[2] = v70;
      v69 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v68;
    v69 = a2 + 2;
  }

  a2 = TSD::GeometryArchive::_InternalSerialize(v67, v69, a3, a4);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_147;
  }

LABEL_137:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v73 = *(this + 14);
  *a2 = 106;
  v74 = *(v73 + 5);
  if (v74 > 0x7F)
  {
    a2[1] = v74 | 0x80;
    v76 = v74 >> 7;
    if (v74 >> 14)
    {
      v75 = a2 + 3;
      do
      {
        *(v75 - 1) = v76 | 0x80;
        v77 = v76 >> 7;
        ++v75;
        v78 = v76 >> 14;
        v76 >>= 7;
      }

      while (v78);
      *(v75 - 1) = v77;
    }

    else
    {
      a2[2] = v76;
      v75 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v74;
    v75 = a2 + 2;
  }

  a2 = TSD::GeometryArchive::_InternalSerialize(v73, v75, a3, a4);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_157;
  }

LABEL_147:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v79 = *(this + 15);
  *a2 = 114;
  v80 = *(v79 + 5);
  if (v80 > 0x7F)
  {
    a2[1] = v80 | 0x80;
    v82 = v80 >> 7;
    if (v80 >> 14)
    {
      v81 = a2 + 3;
      do
      {
        *(v81 - 1) = v82 | 0x80;
        v83 = v82 >> 7;
        ++v81;
        v84 = v82 >> 14;
        v82 >>= 7;
      }

      while (v84);
      *(v81 - 1) = v83;
    }

    else
    {
      a2[2] = v82;
      v81 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v80;
    v81 = a2 + 2;
  }

  a2 = TSD::GeometryArchive::_InternalSerialize(v79, v81, a3, a4);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_167;
  }

LABEL_157:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v85 = *(this + 16);
  *a2 = 122;
  v86 = *(v85 + 5);
  if (v86 > 0x7F)
  {
    a2[1] = v86 | 0x80;
    v88 = v86 >> 7;
    if (v86 >> 14)
    {
      v87 = a2 + 3;
      do
      {
        *(v87 - 1) = v88 | 0x80;
        v89 = v88 >> 7;
        ++v87;
        v90 = v88 >> 14;
        v88 >>= 7;
      }

      while (v90);
      *(v87 - 1) = v89;
    }

    else
    {
      a2[2] = v88;
      v87 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v86;
    v87 = a2 + 2;
  }

  a2 = TSD::ImageAdjustmentsArchive::_InternalSerialize(v85, v87, a3, a4);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_177;
  }

LABEL_167:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v91 = *(this + 17);
  *a2 = 386;
  v92 = *(v91 + 5);
  if (v92 > 0x7F)
  {
    a2[2] = v92 | 0x80;
    v94 = v92 >> 7;
    if (v92 >> 14)
    {
      v93 = a2 + 4;
      do
      {
        *(v93 - 1) = v94 | 0x80;
        v95 = v94 >> 7;
        ++v93;
        v96 = v94 >> 14;
        v94 >>= 7;
      }

      while (v96);
      *(v93 - 1) = v95;
    }

    else
    {
      a2[3] = v94;
      v93 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v92;
    v93 = a2 + 3;
  }

  a2 = TSP::DataReference::_InternalSerialize(v91, v93, a3);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_187;
  }

LABEL_177:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v97 = *(this + 18);
  *a2 = 394;
  v98 = *(v97 + 5);
  if (v98 > 0x7F)
  {
    a2[2] = v98 | 0x80;
    v100 = v98 >> 7;
    if (v98 >> 14)
    {
      v99 = a2 + 4;
      do
      {
        *(v99 - 1) = v100 | 0x80;
        v101 = v100 >> 7;
        ++v99;
        v102 = v100 >> 14;
        v100 >>= 7;
      }

      while (v102);
      *(v99 - 1) = v101;
    }

    else
    {
      a2[3] = v100;
      v99 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v98;
    v99 = a2 + 3;
  }

  a2 = TSP::DataReference::_InternalSerialize(v97, v99, a3);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_197;
  }

LABEL_187:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v103 = *(this + 19);
  *a2 = 402;
  v104 = *(v103 + 5);
  if (v104 > 0x7F)
  {
    a2[2] = v104 | 0x80;
    v106 = v104 >> 7;
    if (v104 >> 14)
    {
      v105 = a2 + 4;
      do
      {
        *(v105 - 1) = v106 | 0x80;
        v107 = v106 >> 7;
        ++v105;
        v108 = v106 >> 14;
        v106 >>= 7;
      }

      while (v108);
      *(v105 - 1) = v107;
    }

    else
    {
      a2[3] = v106;
      v105 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v104;
    v105 = a2 + 3;
  }

  a2 = TSD::ImageAdjustmentsArchive::_InternalSerialize(v103, v105, a3, a4);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_207;
  }

LABEL_197:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v109 = *(this + 20);
  *a2 = 410;
  v110 = *(v109 + 5);
  if (v110 > 0x7F)
  {
    a2[2] = v110 | 0x80;
    v112 = v110 >> 7;
    if (v110 >> 14)
    {
      v111 = a2 + 4;
      do
      {
        *(v111 - 1) = v112 | 0x80;
        v113 = v112 >> 7;
        ++v111;
        v114 = v112 >> 14;
        v112 >>= 7;
      }

      while (v114);
      *(v111 - 1) = v113;
    }

    else
    {
      a2[3] = v112;
      v111 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v110;
    v111 = a2 + 3;
  }

  a2 = TSP::DataReference::_InternalSerialize(v109, v111, a3);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_217;
  }

LABEL_207:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v115 = *(this + 21);
  *a2 = 418;
  v116 = *(v115 + 5);
  if (v116 > 0x7F)
  {
    a2[2] = v116 | 0x80;
    v118 = v116 >> 7;
    if (v116 >> 14)
    {
      v117 = a2 + 4;
      do
      {
        *(v117 - 1) = v118 | 0x80;
        v119 = v118 >> 7;
        ++v117;
        v120 = v118 >> 14;
        v118 >>= 7;
      }

      while (v120);
      *(v117 - 1) = v119;
    }

    else
    {
      a2[3] = v118;
      v117 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v116;
    v117 = a2 + 3;
  }

  a2 = TSP::DataReference::_InternalSerialize(v115, v117, a3);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_227;
  }

LABEL_217:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v121 = *(this + 22);
  *a2 = 426;
  v122 = *(v121 + 5);
  if (v122 > 0x7F)
  {
    a2[2] = v122 | 0x80;
    v124 = v122 >> 7;
    if (v122 >> 14)
    {
      v123 = a2 + 4;
      do
      {
        *(v123 - 1) = v124 | 0x80;
        v125 = v124 >> 7;
        ++v123;
        v126 = v124 >> 14;
        v124 >>= 7;
      }

      while (v126);
      *(v123 - 1) = v125;
    }

    else
    {
      a2[3] = v124;
      v123 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v122;
    v123 = a2 + 3;
  }

  a2 = TSP::DataReference::_InternalSerialize(v121, v123, a3);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_237;
  }

LABEL_227:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v127 = *(this + 23);
  *a2 = 434;
  v128 = *(v127 + 5);
  if (v128 > 0x7F)
  {
    a2[2] = v128 | 0x80;
    v130 = v128 >> 7;
    if (v128 >> 14)
    {
      v129 = a2 + 4;
      do
      {
        *(v129 - 1) = v130 | 0x80;
        v131 = v130 >> 7;
        ++v129;
        v132 = v130 >> 14;
        v130 >>= 7;
      }

      while (v132);
      *(v129 - 1) = v131;
    }

    else
    {
      a2[3] = v130;
      v129 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v128;
    v129 = a2 + 3;
  }

  a2 = TSP::DataReference::_InternalSerialize(v127, v129, a3);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_247;
  }

LABEL_237:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v133 = *(this + 24);
  *a2 = 442;
  v134 = *(v133 + 5);
  if (v134 > 0x7F)
  {
    a2[2] = v134 | 0x80;
    v136 = v134 >> 7;
    if (v134 >> 14)
    {
      v135 = a2 + 4;
      do
      {
        *(v135 - 1) = v136 | 0x80;
        v137 = v136 >> 7;
        ++v135;
        v138 = v136 >> 14;
        v136 >>= 7;
      }

      while (v138);
      *(v135 - 1) = v137;
    }

    else
    {
      a2[3] = v136;
      v135 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v134;
    v135 = a2 + 3;
  }

  a2 = TSP::DataReference::_InternalSerialize(v133, v135, a3);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_257;
  }

LABEL_247:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v139 = *(this + 25);
  *a2 = 450;
  v140 = *(v139 + 5);
  if (v140 > 0x7F)
  {
    a2[2] = v140 | 0x80;
    v142 = v140 >> 7;
    if (v140 >> 14)
    {
      v141 = a2 + 4;
      do
      {
        *(v141 - 1) = v142 | 0x80;
        v143 = v142 >> 7;
        ++v141;
        v144 = v142 >> 14;
        v142 >>= 7;
      }

      while (v144);
      *(v141 - 1) = v143;
    }

    else
    {
      a2[3] = v142;
      v141 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v140;
    v141 = a2 + 3;
  }

  a2 = TSP::DataReference::_InternalSerialize(v139, v141, a3);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_267;
  }

LABEL_257:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v145 = *(this + 26);
  *a2 = 458;
  v146 = *(v145 + 5);
  if (v146 > 0x7F)
  {
    a2[2] = v146 | 0x80;
    v148 = v146 >> 7;
    if (v146 >> 14)
    {
      v147 = a2 + 4;
      do
      {
        *(v147 - 1) = v148 | 0x80;
        v149 = v148 >> 7;
        ++v147;
        v150 = v148 >> 14;
        v148 >>= 7;
      }

      while (v150);
      *(v147 - 1) = v149;
    }

    else
    {
      a2[3] = v148;
      v147 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v146;
    v147 = a2 + 3;
  }

  a2 = TSP::Size::_InternalSerialize(v145, v147, a3);
  if ((v6 & 0x1000000) != 0)
  {
LABEL_267:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v151 = *(this + 27);
    *a2 = 466;
    v152 = *(v151 + 5);
    if (v152 > 0x7F)
    {
      a2[2] = v152 | 0x80;
      v154 = v152 >> 7;
      if (v152 >> 14)
      {
        v153 = a2 + 4;
        do
        {
          *(v153 - 1) = v154 | 0x80;
          v155 = v154 >> 7;
          ++v153;
          v156 = v154 >> 14;
          v154 >>= 7;
        }

        while (v156);
        *(v153 - 1) = v155;
      }

      else
      {
        a2[3] = v154;
        v153 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v152;
      v153 = a2 + 3;
    }

    a2 = TSP::Size::_InternalSerialize(v151, v153, a3);
  }

LABEL_277:
  v157 = *(this + 1);
  if ((v157 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v157 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ImageReplaceCommandArchive::ByteSizeLong(TSD::ImageReplaceCommandArchive *this)
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
    v10 = TSP::DataReference::ByteSizeLong(*(this + 4));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_39;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v11 = TSP::DataReference::ByteSizeLong(*(this + 5));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  v12 = TSP::DataReference::ByteSizeLong(*(this + 6));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_41:
    v14 = TSP::Path::ByteSizeLong(*(this + 8));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_11:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_40:
  v13 = TSP::DataReference::ByteSizeLong(*(this + 7));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_41;
  }

LABEL_10:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_42:
  v15 = TSP::Path::ByteSizeLong(*(this + 9));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_12:
    v5 = TSP::Size::ByteSizeLong(*(this + 10));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v2 & 0x100) != 0)
  {
    v16 = TSP::Size::ByteSizeLong(*(this + 11));
    v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_16:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_46;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v17 = TSD::GeometryArchive::ByteSizeLong(*(this + 12));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_17:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  v18 = TSD::GeometryArchive::ByteSizeLong(*(this + 13));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) == 0)
  {
LABEL_18:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  v19 = TSD::GeometryArchive::ByteSizeLong(*(this + 14));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x1000) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  v20 = TSD::GeometryArchive::ByteSizeLong(*(this + 15));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x2000) == 0)
  {
LABEL_20:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  v21 = TSD::ImageAdjustmentsArchive::ByteSizeLong(*(this + 16));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x4000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_50:
  v22 = TSP::DataReference::ByteSizeLong(*(this + 17));
  v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_22:
    v6 = TSP::DataReference::ByteSizeLong(*(this + 18));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_23:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_33;
  }

  if ((v2 & 0x10000) != 0)
  {
    v23 = TSD::ImageAdjustmentsArchive::ByteSizeLong(*(this + 19));
    v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_26:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_54;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v24 = TSP::DataReference::ByteSizeLong(*(this + 20));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_27:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  v25 = TSP::DataReference::ByteSizeLong(*(this + 21));
  v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_28:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  v26 = TSP::DataReference::ByteSizeLong(*(this + 22));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_29:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  v27 = TSP::DataReference::ByteSizeLong(*(this + 23));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_30:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  v28 = TSP::DataReference::ByteSizeLong(*(this + 24));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_31:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_58:
  v29 = TSP::DataReference::ByteSizeLong(*(this + 25));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_32:
    v7 = TSP::Size::ByteSizeLong(*(this + 26));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  if ((v2 & 0x1000000) != 0)
  {
    v8 = TSP::Size::ByteSizeLong(*(this + 27));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 2;
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