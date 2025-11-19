uint64_t TSD::BaseStyleSetValueCommandArchive::ByteSizeLong(TSD::BaseStyleSetValueCommandArchive *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    v3 = TSD::BaseStyleSetValueCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSD::AbstractStyleCommandArchive::ByteSizeLong(*(this + 3));
    v3 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if ((*(this + 16) & 2) != 0)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSD::BaseStyleSetValueCommandArchive::MergeFrom(TSD::BaseStyleSetValueCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::BaseStyleSetValueCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t *TSD::BaseStyleSetValueCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::BaseStyleSetValueCommandArchive::Clear(this);

    return TSD::BaseStyleSetValueCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::BaseStyleSetValueCommandArchive::CopyFrom(uint64_t *this, const TSD::BaseStyleSetValueCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::BaseStyleSetValueCommandArchive::Clear(this);

    return TSD::BaseStyleSetValueCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSD::BaseStyleSetValueCommandArchive::InternalSwap(TSD::BaseStyleSetValueCommandArchive *this, TSD::BaseStyleSetValueCommandArchive *a2)
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
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  return result;
}

TSP::DataReference *TSD::MovieSetValueCommandArchive_PropertyValue::clear_posterimagedata(TSD::MovieSetValueCommandArchive_PropertyValue *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::DataReference *TSD::MovieSetValueCommandArchive_PropertyValue::clear_media(TSD::MovieSetValueCommandArchive_PropertyValue *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::MovieSetValueCommandArchive_PropertyValue *TSD::MovieSetValueCommandArchive_PropertyValue::MovieSetValueCommandArchive_PropertyValue(TSD::MovieSetValueCommandArchive_PropertyValue *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A9B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MovieSetValueCommandArchive_PropertyValue_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 36) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_28857A9B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MovieSetValueCommandArchive_PropertyValue_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 36) = 0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::MovieSetValueCommandArchive_PropertyValue *TSD::MovieSetValueCommandArchive_PropertyValue::MovieSetValueCommandArchive_PropertyValue(TSD::MovieSetValueCommandArchive_PropertyValue *this, const TSD::MovieSetValueCommandArchive_PropertyValue *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A9B8;
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
  v8 = *(a2 + 56);
  *(this + 36) = *(a2 + 36);
  *(this + 56) = v8;
  *(this + 40) = v7;
  return this;
}

void TSD::MovieSetValueCommandArchive_PropertyValue::~MovieSetValueCommandArchive_PropertyValue(TSD::MovieSetValueCommandArchive_PropertyValue *this)
{
  if (this != &TSD::_MovieSetValueCommandArchive_PropertyValue_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::DataReference::~DataReference(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::DataReference::~DataReference(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::MovieSetValueCommandArchive_PropertyValue::~MovieSetValueCommandArchive_PropertyValue(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::MovieSetValueCommandArchive_PropertyValue::default_instance(TSD::MovieSetValueCommandArchive_PropertyValue *this)
{
  if (atomic_load_explicit(scc_info_MovieSetValueCommandArchive_PropertyValue_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MovieSetValueCommandArchive_PropertyValue_default_instance_;
}

uint64_t *TSD::MovieSetValueCommandArchive_PropertyValue::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::DataReference::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::DataReference::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0xFC) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 56) = 0u;
    *(v1 + 40) = 0u;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 65) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::MovieSetValueCommandArchive_PropertyValue::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_80;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 25)
            {
              v26 = *v7;
              v15 = (v7 + 8);
              v5 |= 0x10u;
              *(a1 + 56) = v26;
              goto LABEL_49;
            }

            goto LABEL_62;
          }

          if (v10 != 4 || v8 != 34)
          {
            goto LABEL_62;
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

            v19 = MEMORY[0x277C9BA90](v18);
            LODWORD(v17) = v19;
            *(a1 + 24) = v19;
LABEL_60:
            v7 = v39;
          }

LABEL_61:
          v33 = sub_27680B7BC(a3, v17, v7);
        }

        else
        {
          if (v10 == 1)
          {
            if (v8 == 9)
            {
              v25 = *v7;
              v15 = (v7 + 8);
              v5 |= 4u;
              *(a1 + 40) = v25;
              goto LABEL_49;
            }
          }

          else if (v10 == 2 && v8 == 17)
          {
            v16 = *v7;
            v15 = (v7 + 8);
            v5 |= 8u;
            *(a1 + 48) = v16;
LABEL_49:
            v39 = v15;
            goto LABEL_70;
          }

LABEL_62:
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

          v33 = google::protobuf::internal::UnknownFieldParse();
        }

        v39 = v33;
        if (!v33)
        {
          goto LABEL_80;
        }

        goto LABEL_70;
      }

      if (v8 >> 3 <= 6)
      {
        if (v10 != 5)
        {
          if (v10 == 6 && v8 == 48)
          {
            v21 = (v7 + 1);
            v20 = *v7;
            if ((v20 & 0x8000000000000000) == 0)
            {
              goto LABEL_38;
            }

            v22 = *v21;
            v20 = (v22 << 7) + v20 - 128;
            if (v22 < 0)
            {
              v39 = google::protobuf::internal::VarintParseSlow64(v7, v20);
              if (!v39)
              {
                goto LABEL_80;
              }
            }

            else
            {
              v21 = (v7 + 2);
LABEL_38:
              v39 = v21;
            }

            if (v20 > 2)
            {
              sub_27680FED0();
            }

            else
            {
              *(a1 + 16) |= 0x20u;
              *(a1 + 64) = v20;
            }

            goto LABEL_70;
          }

          goto LABEL_62;
        }

        if (v8 != 40)
        {
          goto LABEL_62;
        }

        v5 |= 0x80u;
        v29 = (v7 + 1);
        v28 = *v7;
        if ((v28 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v30 = *v29;
        v28 = (v30 << 7) + v28 - 128;
        if ((v30 & 0x80000000) == 0)
        {
          v29 = (v7 + 2);
LABEL_54:
          v39 = v29;
          *(a1 + 72) = v28 != 0;
          goto LABEL_70;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v7, v28);
        v39 = v35;
        *(a1 + 72) = v36 != 0;
        if (!v35)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v10 == 7)
        {
          if (v8 == 61)
          {
            v27 = *v7;
            v15 = (v7 + 4);
            v5 |= 0x40u;
            *(a1 + 68) = v27;
            goto LABEL_49;
          }

          goto LABEL_62;
        }

        if (v10 == 8)
        {
          if (v8 != 66)
          {
            goto LABEL_62;
          }

          *(a1 + 16) |= 2u;
          v17 = *(a1 + 32);
          if (!v17)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v32 = MEMORY[0x277C9BA90](v31);
            LODWORD(v17) = v32;
            *(a1 + 32) = v32;
            goto LABEL_60;
          }

          goto LABEL_61;
        }

        if (v10 != 9 || v8 != 72)
        {
          goto LABEL_62;
        }

        v5 |= 0x100u;
        v12 = (v7 + 1);
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_16;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_16:
          v39 = v12;
          *(a1 + 73) = v11 != 0;
          goto LABEL_70;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v39 = v37;
        *(a1 + 73) = v38 != 0;
        if (!v37)
        {
LABEL_80:
          v39 = 0;
          goto LABEL_2;
        }
      }

LABEL_70:
      if (sub_27670AF08(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *TSD::MovieSetValueCommandArchive_PropertyValue::_InternalSerialize(TSD::MovieSetValueCommandArchive_PropertyValue *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 5);
    *a2 = 9;
    *(a2 + 1) = v7;
    a2 += 9;
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 6);
  *a2 = 17;
  *(a2 + 1) = v8;
  a2 += 9;
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 7);
  *a2 = 25;
  *(a2 + 1) = v9;
  a2 += 9;
  if ((v6 & 1) == 0)
  {
LABEL_5:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_20:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 3);
  *a2 = 34;
  v11 = *(v10 + 5);
  if (v11 > 0x7F)
  {
    a2[1] = v11 | 0x80;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = a2 + 3;
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
      a2[2] = v13;
      v12 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v11;
    v12 = a2 + 2;
  }

  a2 = TSP::DataReference::_InternalSerialize(v10, v12, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_33:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v17 = *(this + 16);
    *a2 = 48;
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
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        a2[2] = v18;
        a2 += 3;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      a2[1] = v17;
      a2 += 2;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_44;
      }
    }

LABEL_8:
    if ((v6 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 72);
  *a2 = 40;
  a2[1] = v16;
  a2 += 2;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_33;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_8;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 17);
  *a2 = 61;
  *(a2 + 1) = v21;
  a2 += 5;
  if ((v6 & 2) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 4);
  *a2 = 66;
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

  a2 = TSP::DataReference::_InternalSerialize(v22, v24, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_57:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v28 = *(this + 73);
    *a2 = 72;
    a2[1] = v28;
    a2 += 2;
  }

LABEL_60:
  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::MovieSetValueCommandArchive_PropertyValue::ByteSizeLong(TSD::MovieSetValueCommandArchive_PropertyValue *this)
{
  v2 = *(this + 4);
  if (!*(this + 4))
  {
    v4 = 0;
    goto LABEL_22;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSP::DataReference::ByteSizeLong(*(this + 3));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::DataReference::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = v3 + 9;
  if ((v2 & 4) == 0)
  {
    v7 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v7 += 9;
  }

  if ((v2 & 0x10) != 0)
  {
    v7 += 9;
  }

  if ((v2 & 0x20) != 0)
  {
    v8 = *(this + 16);
    v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 11;
    }

    v7 += v10;
  }

  if ((v2 & 0x40) != 0)
  {
    v7 += 5;
  }

  v4 = v7 + ((v2 >> 6) & 2);
LABEL_22:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4 + ((v2 >> 7) & 2);
    return v4 + ((v2 >> 7) & 2);
  }
}

uint64_t TSD::MovieSetValueCommandArchive_PropertyValue::MergeFrom(TSD::MovieSetValueCommandArchive_PropertyValue *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::MovieSetValueCommandArchive_PropertyValue::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::MovieSetValueCommandArchive_PropertyValue::MergeFrom(uint64_t this, const TSD::MovieSetValueCommandArchive_PropertyValue *a2)
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
    v6 = MEMORY[0x277D80A30];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v8 = *(v3 + 24);
      if (!v8)
      {
        v9 = *(v3 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        v8 = MEMORY[0x277C9BA90](v9);
        *(v3 + 24) = v8;
      }

      if (*(a2 + 3))
      {
        v10 = *(a2 + 3);
      }

      else
      {
        v10 = v6;
      }

      this = TSP::DataReference::MergeFrom(v8, v10);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_33;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v11 = *(v3 + 32);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C9BA90](v12);
      *(v3 + 32) = v11;
    }

    if (*(a2 + 4))
    {
      v13 = *(a2 + 4);
    }

    else
    {
      v13 = v6;
    }

    this = TSP::DataReference::MergeFrom(v11, v13);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(v3 + 40) = *(a2 + 5);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(v3 + 48) = *(a2 + 6);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_36;
    }

LABEL_35:
    *(v3 + 56) = *(a2 + 7);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(v3 + 64) = *(a2 + 16);
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
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_13;
    }

LABEL_37:
    *(v3 + 68) = *(a2 + 17);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x100) != 0)
  {
    v7 = *(a2 + 73);
    *(v3 + 16) |= 0x100u;
    *(v3 + 73) = v7;
  }

  return this;
}

uint64_t *TSD::MovieSetValueCommandArchive_PropertyValue::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MovieSetValueCommandArchive_PropertyValue::Clear(this);

    return TSD::MovieSetValueCommandArchive_PropertyValue::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::MovieSetValueCommandArchive_PropertyValue::CopyFrom(uint64_t *this, const TSD::MovieSetValueCommandArchive_PropertyValue *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MovieSetValueCommandArchive_PropertyValue::Clear(this);

    return TSD::MovieSetValueCommandArchive_PropertyValue::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::MovieSetValueCommandArchive_PropertyValue::IsInitialized(TSD::MovieSetValueCommandArchive_PropertyValue *this)
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

  if ((v2 & 2) == 0)
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

__n128 TSD::MovieSetValueCommandArchive_PropertyValue::InternalSwap(TSD::MovieSetValueCommandArchive_PropertyValue *this, TSD::MovieSetValueCommandArchive_PropertyValue *a2)
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
  LOWORD(v9) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v9;
  return result;
}

TSP::DataReference *TSD::MovieSetValueCommandArchive::clear_importedauxiliarymedia(TSD::MovieSetValueCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::DataReference *TSD::MovieSetValueCommandArchive::clear_oldimportedauxiliarymedia(TSD::MovieSetValueCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSD::MovieSetValueCommandArchive *TSD::MovieSetValueCommandArchive::MovieSetValueCommandArchive(TSD::MovieSetValueCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857AA68;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MovieSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_28857AA68;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MovieSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::MovieSetValueCommandArchive *TSD::MovieSetValueCommandArchive::MovieSetValueCommandArchive(TSD::MovieSetValueCommandArchive *this, const TSD::MovieSetValueCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857AA68;
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

void TSD::MovieSetValueCommandArchive::~MovieSetValueCommandArchive(TSD::MovieSetValueCommandArchive *this)
{
  sub_2767DB540(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::MovieSetValueCommandArchive::~MovieSetValueCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_2767DB540(uint64_t *result)
{
  if (result != &TSD::_MovieSetValueCommandArchive_default_instance_)
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
      TSD::MovieSetValueCommandArchive_PropertyValue::~MovieSetValueCommandArchive_PropertyValue(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSD::MovieSetValueCommandArchive_PropertyValue::~MovieSetValueCommandArchive_PropertyValue(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::DataReference::~DataReference(v5);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[7];
    if (result)
    {
      TSP::DataReference::~DataReference(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::MovieSetValueCommandArchive::default_instance(TSD::MovieSetValueCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_MovieSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MovieSetValueCommandArchive_default_instance_;
}

uint64_t *TSD::MovieSetValueCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
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

LABEL_14:
      this = TSD::MovieSetValueCommandArchive_PropertyValue::Clear(*(v1 + 40));
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

  this = TSD::MovieSetValueCommandArchive_PropertyValue::Clear(*(v1 + 32));
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
    this = TSP::DataReference::Clear(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 56) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::MovieSetValueCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_67;
      }

      v7 = TagFallback;
      v8 = v28;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 != 34)
          {
            goto LABEL_52;
          }

          *(a1 + 16) |= 4u;
          v12 = *(a1 + 40);
          if (!v12)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::MovieSetValueCommandArchive_PropertyValue>(v20);
            *(a1 + 40) = v12;
LABEL_38:
            v7 = v31;
          }

LABEL_39:
          v19 = sub_27680F4C0(a3, v12, v7);
          goto LABEL_59;
        }

        if (v10 == 5)
        {
          if (v8 != 42)
          {
            goto LABEL_52;
          }

          *(a1 + 16) |= 8u;
          v14 = *(a1 + 48);
          if (!v14)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = MEMORY[0x277C9BA90](v24);
            LODWORD(v14) = v25;
            *(a1 + 48) = v25;
LABEL_50:
            v7 = v31;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 50)
          {
            goto LABEL_52;
          }

          *(a1 + 16) |= 0x10u;
          v14 = *(a1 + 56);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C9BA90](v15);
            LODWORD(v14) = v16;
            *(a1 + 56) = v16;
            goto LABEL_50;
          }
        }

        v19 = sub_27680B7BC(a3, v14, v7);
        goto LABEL_59;
      }

      if (v10 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_52;
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

          v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v18);
          *(a1 + 24) = v17;
          v7 = v31;
        }

        v19 = sub_27680EFE0(a3, v17, v7);
LABEL_59:
        v31 = v19;
        if (!v19)
        {
          goto LABEL_67;
        }

        goto LABEL_60;
      }

      if (v10 != 2)
      {
        if (v10 != 3 || v8 != 26)
        {
LABEL_52:
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
          goto LABEL_59;
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

          v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::MovieSetValueCommandArchive_PropertyValue>(v13);
          *(a1 + 32) = v12;
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v8 != 16)
      {
        goto LABEL_52;
      }

      v5 |= 0x20u;
      v22 = (v7 + 1);
      LODWORD(v21) = *v7;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_44;
      }

      v23 = *v22;
      v21 = (v21 + (v23 << 7) - 128);
      if ((v23 & 0x80000000) == 0)
      {
        v22 = (v7 + 2);
LABEL_44:
        v31 = v22;
        *(a1 + 64) = v21;
        goto LABEL_60;
      }

      v29 = google::protobuf::internal::VarintParseSlow64(v7, v21);
      v31 = v29;
      *(a1 + 64) = v30;
      if (!v29)
      {
LABEL_67:
        v31 = 0;
        goto LABEL_2;
      }

LABEL_60:
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

unsigned __int8 *TSD::MovieSetValueCommandArchive::_InternalSerialize(TSD::MovieSetValueCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 16);
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
          goto LABEL_29;
        }
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
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
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:
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

  a2 = TSD::MovieSetValueCommandArchive_PropertyValue::_InternalSerialize(v17, v19, a3, a4);
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_39:
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

  a2 = TSD::MovieSetValueCommandArchive_PropertyValue::_InternalSerialize(v23, v25, a3, a4);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_59;
  }

LABEL_49:
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

  a2 = TSP::DataReference::_InternalSerialize(v29, v31, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_59:
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
  }

LABEL_69:
  v41 = *(this + 1);
  if ((v41 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v41 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::MovieSetValueCommandArchive::ByteSizeLong(TSD::MovieSetValueCommandArchive *this)
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

  if ((v2 & 0x3E) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSD::MovieSetValueCommandArchive_PropertyValue::ByteSizeLong(*(this + 4));
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

    v6 = TSD::MovieSetValueCommandArchive_PropertyValue::ByteSizeLong(*(this + 5));
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
    v7 = TSP::DataReference::ByteSizeLong(*(this + 6));
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
    v8 = TSP::DataReference::ByteSizeLong(*(this + 7));
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

uint64_t TSD::MovieSetValueCommandArchive::MergeFrom(TSD::MovieSetValueCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::MovieSetValueCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::MovieSetValueCommandArchive::MergeFrom(uint64_t this, const TSD::MovieSetValueCommandArchive *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::MovieSetValueCommandArchive_PropertyValue>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSD::_MovieSetValueCommandArchive_PropertyValue_default_instance_;
      }

      this = TSD::MovieSetValueCommandArchive_PropertyValue::MergeFrom(v9, v11);
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::MovieSetValueCommandArchive_PropertyValue>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TSD::_MovieSetValueCommandArchive_PropertyValue_default_instance_;
      }

      this = TSD::MovieSetValueCommandArchive_PropertyValue::MergeFrom(v12, v14);
    }

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

        v16 = MEMORY[0x277C9BA90](v17);
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
      if ((v5 & 0x10) == 0)
      {
LABEL_33:
        if ((v5 & 0x20) == 0)
        {
LABEL_35:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_34:
        *(v3 + 64) = *(a2 + 16);
        goto LABEL_35;
      }
    }

    else if ((v5 & 0x10) == 0)
    {
      goto LABEL_33;
    }

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
      v21 = v15;
    }

    this = TSP::DataReference::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  return this;
}

uint64_t *TSD::MovieSetValueCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MovieSetValueCommandArchive::Clear(this);

    return TSD::MovieSetValueCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::MovieSetValueCommandArchive::CopyFrom(uint64_t *this, const TSD::MovieSetValueCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MovieSetValueCommandArchive::Clear(this);

    return TSD::MovieSetValueCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::MovieSetValueCommandArchive::IsInitialized(TSD::MovieSetValueCommandArchive *this)
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
      result = TSD::MovieSetValueCommandArchive_PropertyValue::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSD::MovieSetValueCommandArchive_PropertyValue::IsInitialized(*(this + 5));
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

    if ((v3 & 0x10) == 0)
    {
      return 1;
    }

    result = TSP::DataReference::IsInitialized(*(this + 7));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::MovieSetValueCommandArchive::InternalSwap(TSD::MovieSetValueCommandArchive *this, TSD::MovieSetValueCommandArchive *a2)
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

uint64_t *TSD::MediaStyleSetValueCommandArchive::clear_change(TSD::MediaStyleSetValueCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSDSOS::MediaStylePropertyChangeSetArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::MediaStyleSetValueCommandArchive *TSD::MediaStyleSetValueCommandArchive::MediaStyleSetValueCommandArchive(TSD::MediaStyleSetValueCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857AB18;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_28857AB18;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSD::MediaStyleSetValueCommandArchive *TSD::MediaStyleSetValueCommandArchive::MediaStyleSetValueCommandArchive(TSD::MediaStyleSetValueCommandArchive *this, const TSD::MediaStyleSetValueCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857AB18;
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

void TSD::MediaStyleSetValueCommandArchive::~MediaStyleSetValueCommandArchive(TSD::MediaStyleSetValueCommandArchive *this)
{
  if (this != &TSD::_MediaStyleSetValueCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::BaseStyleSetValueCommandArchive::~BaseStyleSetValueCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSDSOS::MediaStylePropertyChangeSetArchive::~MediaStylePropertyChangeSetArchive(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::MediaStyleSetValueCommandArchive::~MediaStyleSetValueCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::MediaStyleSetValueCommandArchive::default_instance(TSD::MediaStyleSetValueCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_MediaStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MediaStyleSetValueCommandArchive_default_instance_;
}

uint64_t *TSD::MediaStyleSetValueCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSD::BaseStyleSetValueCommandArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSDSOS::MediaStylePropertyChangeSetArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TSD::MediaStyleSetValueCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  while ((sub_27670AF08(a3, &v18) & 1) == 0)
  {
    v5 = (v18 + 1);
    v6 = *v18;
    if ((*v18 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v18 + 2);
LABEL_6:
      v18 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v7 - 128));
    v18 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v16;
LABEL_7:
    if (v6 >> 3 == 4)
    {
      if (v6 != 34)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::MediaStylePropertyChangeSetArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_27680F590(a3, v11, v5);
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
          return v18;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_30;
      }

      *(a1 + 16) |= 1u;
      v13 = *(a1 + 24);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::BaseStyleSetValueCommandArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v18;
      }

      v10 = sub_27680F320(a3, v13, v5);
    }

LABEL_30:
    v18 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v18;
}

unsigned __int8 *TSD::MediaStyleSetValueCommandArchive::_InternalSerialize(TSD::MediaStyleSetValueCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::BaseStyleSetValueCommandArchive::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 4);
    *a2 = 34;
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

    a2 = TSDSOS::MediaStylePropertyChangeSetArchive::_InternalSerialize(v13, v15, a3, a4);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::MediaStyleSetValueCommandArchive::ByteSizeLong(TSD::MediaStyleSetValueCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::BaseStyleSetValueCommandArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSDSOS::MediaStylePropertyChangeSetArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
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

void TSD::MediaStyleSetValueCommandArchive::MergeFrom(TSD::MediaStyleSetValueCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::MediaStyleSetValueCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::MediaStyleSetValueCommandArchive::MergeFrom(TSD::MediaStyleSetValueCommandArchive *this, const TSD::MediaStyleSetValueCommandArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::BaseStyleSetValueCommandArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_BaseStyleSetValueCommandArchive_default_instance_;
      }

      TSD::BaseStyleSetValueCommandArchive::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::MediaStylePropertyChangeSetArchive>(v10);
        *(this + 4) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSDSOS::_MediaStylePropertyChangeSetArchive_default_instance_;
      }

      TSDSOS::MediaStylePropertyChangeSetArchive::MergeFrom(v9, v11);
    }
  }
}

void TSD::MediaStyleSetValueCommandArchive::CopyFrom(TSD::MediaStyleSetValueCommandArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::MediaStyleSetValueCommandArchive::Clear(this);

    TSD::MediaStyleSetValueCommandArchive::MergeFrom(this, a2);
  }
}

void TSD::MediaStyleSetValueCommandArchive::CopyFrom(TSD::MediaStyleSetValueCommandArchive *this, const TSD::MediaStyleSetValueCommandArchive *a2)
{
  if (a2 != this)
  {
    TSD::MediaStyleSetValueCommandArchive::Clear(this);

    TSD::MediaStyleSetValueCommandArchive::MergeFrom(this, a2);
  }
}

uint64_t TSD::MediaStyleSetValueCommandArchive::IsInitialized(TSD::MediaStyleSetValueCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::BaseStyleSetValueCommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSDSOS::MediaStylePropertyChangeSetArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::MediaStyleSetValueCommandArchive::InternalSwap(TSD::MediaStyleSetValueCommandArchive *this, TSD::MediaStyleSetValueCommandArchive *a2)
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

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_newimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_oldimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_oldoriginalimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Size *TSD::ImageMediaCommandArchive::clear_oldnaturalsize(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_neworiginalimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

uint64_t *TSD::ImageMediaCommandArchive::clear_oldimageadjustments(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSD::ImageAdjustmentsArchive::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_oldadjustedimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_oldenhancedimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

uint64_t *TSD::ImageMediaCommandArchive::clear_imageadjustments(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSD::ImageAdjustmentsArchive::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_adjustedimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x4000u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_enhancedimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_newthumbnailimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x10000u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_oldthumbnailimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x20000u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_thumbnailadjustedimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x40000u;
  return result;
}

TSP::DataReference *TSD::ImageMediaCommandArchive::clear_oldthumbnailadjustedimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x80000u;
  return result;
}

TSP::Reference *TSD::ImageMediaCommandArchive::clear_database_newimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::ImageMediaCommandArchive::clear_database_oldimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSD::ImageMediaCommandArchive::clear_database_oldoriginalimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSD::ImageMediaCommandArchive::clear_database_neworiginalimagedata(TSD::ImageMediaCommandArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSD::ImageMediaCommandArchive *TSD::ImageMediaCommandArchive::ImageMediaCommandArchive(TSD::ImageMediaCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857ABC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageMediaCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

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
  *this = &unk_28857ABC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageMediaCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

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

TSD::ImageMediaCommandArchive *TSD::ImageMediaCommandArchive::ImageMediaCommandArchive(TSD::ImageMediaCommandArchive *this, const TSD::ImageMediaCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857ABC8;
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
  return this;
}

void TSD::ImageMediaCommandArchive::~ImageMediaCommandArchive(TSD::ImageMediaCommandArchive *this)
{
  sub_2767DDA10(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ImageMediaCommandArchive::~ImageMediaCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_2767DDA10(uint64_t *result)
{
  if (result != &TSD::_ImageMediaCommandArchive_default_instance_)
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
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
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
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C9C1D0]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSP::Size::~Size(v6);
      MEMORY[0x277C9C1D0]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSP::Reference::~Reference(v7);
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

    v10 = v1[11];
    if (v10)
    {
      TSP::DataReference::~DataReference(v10);
      MEMORY[0x277C9C1D0]();
    }

    v11 = v1[12];
    if (v11)
    {
      TSP::DataReference::~DataReference(v11);
      MEMORY[0x277C9C1D0]();
    }

    v12 = v1[13];
    if (v12)
    {
      TSD::ImageAdjustmentsArchive::~ImageAdjustmentsArchive(v12);
      MEMORY[0x277C9C1D0]();
    }

    v13 = v1[14];
    if (v13)
    {
      TSP::DataReference::~DataReference(v13);
      MEMORY[0x277C9C1D0]();
    }

    v14 = v1[15];
    if (v14)
    {
      TSP::DataReference::~DataReference(v14);
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
      TSP::DataReference::~DataReference(v18);
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

    result = v1[22];
    if (result)
    {
      TSP::DataReference::~DataReference(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::ImageMediaCommandArchive::default_instance(TSD::ImageMediaCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageMediaCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageMediaCommandArchive_default_instance_;
}

uint64_t *TSD::ImageMediaCommandArchive::Clear(uint64_t *this)
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

      goto LABEL_33;
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

    goto LABEL_34;
  }

LABEL_33:
  this = TSP::Reference::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = TSP::Reference::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_36:
    this = TSP::Reference::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_35:
  this = TSP::Size::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_36;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_37:
  this = TSP::DataReference::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::DataReference::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSP::DataReference::Clear(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSP::DataReference::Clear(*(v1 + 96));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = TSD::ImageAdjustmentsArchive::Clear(*(v1 + 104));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = TSP::DataReference::Clear(*(v1 + 112));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = TSP::DataReference::Clear(*(v1 + 120));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
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

LABEL_45:
  this = TSP::DataReference::Clear(*(v1 + 136));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    this = TSP::DataReference::Clear(*(v1 + 144));
  }

LABEL_21:
  if ((v2 & 0xF0000) == 0)
  {
    goto LABEL_27;
  }

  if ((v2 & 0x10000) != 0)
  {
    this = TSP::DataReference::Clear(*(v1 + 152));
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_49;
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
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_49:
  this = TSP::DataReference::Clear(*(v1 + 168));
  if ((v2 & 0x80000) != 0)
  {
LABEL_26:
    this = TSP::DataReference::Clear(*(v1 + 176));
  }

LABEL_27:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ImageMediaCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v55 = a2;
  while (2)
  {
    if (sub_27670AF08(a3, &v55))
    {
      return v55;
    }

    v5 = (v55 + 1);
    v6 = *v55;
    if ((*v55 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v55 + 2);
LABEL_6:
      v55 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v55, (v7 - 128));
    v55 = TagFallback;
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
          goto LABEL_120;
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
          v5 = v55;
        }

        v10 = sub_27680EFE0(a3, v8, v5);
        goto LABEL_118;
      case 3u:
        if (v6 != 26)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 2u;
        v23 = *(a1 + 32);
        if (v23)
        {
          goto LABEL_89;
        }

        v30 = *(a1 + 8);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = MEMORY[0x277C9BB20](v30);
        LODWORD(v23) = v31;
        *(a1 + 32) = v31;
        goto LABEL_88;
      case 4u:
        if (v6 != 34)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 4u;
        v23 = *(a1 + 40);
        if (v23)
        {
          goto LABEL_89;
        }

        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v25 = MEMORY[0x277C9BB20](v24);
        LODWORD(v23) = v25;
        *(a1 + 40) = v25;
        goto LABEL_88;
      case 5u:
        if (v6 != 42)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 8u;
        v23 = *(a1 + 48);
        if (v23)
        {
          goto LABEL_89;
        }

        v40 = *(a1 + 8);
        if (v40)
        {
          v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
        }

        v41 = MEMORY[0x277C9BB20](v40);
        LODWORD(v23) = v41;
        *(a1 + 48) = v41;
        goto LABEL_88;
      case 6u:
        if (v6 != 50)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x10u;
        v42 = *(a1 + 56);
        if (!v42)
        {
          v43 = *(a1 + 8);
          if (v43)
          {
            v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
          }

          v44 = MEMORY[0x277C9BAD0](v43);
          LODWORD(v42) = v44;
          *(a1 + 56) = v44;
          v5 = v55;
        }

        v10 = sub_27680AB8C(a3, v42, v5);
        goto LABEL_118;
      case 7u:
        if (v6 != 58)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x20u;
        v23 = *(a1 + 64);
        if (v23)
        {
          goto LABEL_89;
        }

        v26 = *(a1 + 8);
        if (v26)
        {
          v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
        }

        v27 = MEMORY[0x277C9BB20](v26);
        LODWORD(v23) = v27;
        *(a1 + 64) = v27;
LABEL_88:
        v5 = v55;
LABEL_89:
        v10 = sub_27680B6EC(a3, v23, v5);
        goto LABEL_118;
      case 8u:
        if (v6 != 66)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x40u;
        v13 = *(a1 + 72);
        if (v13)
        {
          goto LABEL_117;
        }

        v32 = *(a1 + 8);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v33 = MEMORY[0x277C9BA90](v32);
        LODWORD(v13) = v33;
        *(a1 + 72) = v33;
        goto LABEL_116;
      case 9u:
        if (v6 != 74)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x80u;
        v13 = *(a1 + 80);
        if (v13)
        {
          goto LABEL_117;
        }

        v34 = *(a1 + 8);
        if (v34)
        {
          v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = MEMORY[0x277C9BA90](v34);
        LODWORD(v13) = v35;
        *(a1 + 80) = v35;
        goto LABEL_116;
      case 0xAu:
        if (v6 != 82)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x100u;
        v13 = *(a1 + 88);
        if (v13)
        {
          goto LABEL_117;
        }

        v47 = *(a1 + 8);
        if (v47)
        {
          v47 = *(v47 & 0xFFFFFFFFFFFFFFFELL);
        }

        v48 = MEMORY[0x277C9BA90](v47);
        LODWORD(v13) = v48;
        *(a1 + 88) = v48;
        goto LABEL_116;
      case 0xBu:
        if (v6 != 90)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x200u;
        v13 = *(a1 + 96);
        if (v13)
        {
          goto LABEL_117;
        }

        v45 = *(a1 + 8);
        if (v45)
        {
          v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
        }

        v46 = MEMORY[0x277C9BA90](v45);
        LODWORD(v13) = v46;
        *(a1 + 96) = v46;
        goto LABEL_116;
      case 0xCu:
        if (v6 != 98)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x400u;
        v16 = *(a1 + 104);
        if (v16)
        {
          goto LABEL_32;
        }

        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v18);
        *(a1 + 104) = v16;
        goto LABEL_31;
      case 0xDu:
        if (v6 != 106)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x800u;
        v13 = *(a1 + 112);
        if (v13)
        {
          goto LABEL_117;
        }

        v28 = *(a1 + 8);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = MEMORY[0x277C9BA90](v28);
        LODWORD(v13) = v29;
        *(a1 + 112) = v29;
        goto LABEL_116;
      case 0xEu:
        if (v6 != 114)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x1000u;
        v13 = *(a1 + 120);
        if (v13)
        {
          goto LABEL_117;
        }

        v19 = *(a1 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x277C9BA90](v19);
        LODWORD(v13) = v20;
        *(a1 + 120) = v20;
        goto LABEL_116;
      case 0xFu:
        if (v6 != 122)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x2000u;
        v16 = *(a1 + 128);
        if (v16)
        {
          goto LABEL_32;
        }

        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v17);
        *(a1 + 128) = v16;
LABEL_31:
        v5 = v55;
LABEL_32:
        v10 = sub_27680CA58(a3, v16, v5);
        goto LABEL_118;
      case 0x10u:
        if (v6 != 130)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x4000u;
        v13 = *(a1 + 136);
        if (v13)
        {
          goto LABEL_117;
        }

        v36 = *(a1 + 8);
        if (v36)
        {
          v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
        }

        v37 = MEMORY[0x277C9BA90](v36);
        LODWORD(v13) = v37;
        *(a1 + 136) = v37;
        goto LABEL_116;
      case 0x11u:
        if (v6 != 138)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x8000u;
        v13 = *(a1 + 144);
        if (v13)
        {
          goto LABEL_117;
        }

        v38 = *(a1 + 8);
        if (v38)
        {
          v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
        }

        v39 = MEMORY[0x277C9BA90](v38);
        LODWORD(v13) = v39;
        *(a1 + 144) = v39;
        goto LABEL_116;
      case 0x12u:
        if (v6 != 146)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x10000u;
        v13 = *(a1 + 152);
        if (v13)
        {
          goto LABEL_117;
        }

        v51 = *(a1 + 8);
        if (v51)
        {
          v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
        }

        v52 = MEMORY[0x277C9BA90](v51);
        LODWORD(v13) = v52;
        *(a1 + 152) = v52;
        goto LABEL_116;
      case 0x13u:
        if (v6 != 154)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x20000u;
        v13 = *(a1 + 160);
        if (v13)
        {
          goto LABEL_117;
        }

        v49 = *(a1 + 8);
        if (v49)
        {
          v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
        }

        v50 = MEMORY[0x277C9BA90](v49);
        LODWORD(v13) = v50;
        *(a1 + 160) = v50;
        goto LABEL_116;
      case 0x14u:
        if (v6 != 162)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x40000u;
        v13 = *(a1 + 168);
        if (v13)
        {
          goto LABEL_117;
        }

        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C9BA90](v14);
        LODWORD(v13) = v15;
        *(a1 + 168) = v15;
        goto LABEL_116;
      case 0x15u:
        if (v6 != 170)
        {
          goto LABEL_120;
        }

        *(a1 + 16) |= 0x80000u;
        v13 = *(a1 + 176);
        if (v13)
        {
          goto LABEL_117;
        }

        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x277C9BA90](v21);
        LODWORD(v13) = v22;
        *(a1 + 176) = v22;
LABEL_116:
        v5 = v55;
LABEL_117:
        v10 = sub_27680B7BC(a3, v13, v5);
        goto LABEL_118;
      default:
LABEL_120:
        if (v6)
        {
          v53 = (v6 & 7) == 4;
        }

        else
        {
          v53 = 1;
        }

        if (!v53)
        {
          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_118:
          v55 = v10;
          if (!v10)
          {
            return 0;
          }

          continue;
        }

        *(a3 + 80) = v6 - 1;
        return v55;
    }
  }
}

unsigned __int8 *TSD::ImageMediaCommandArchive::_InternalSerialize(TSD::ImageMediaCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      goto LABEL_42;
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

  a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_42:
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

  a2 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_62;
  }

LABEL_52:
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

  a2 = TSP::Reference::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_72;
  }

LABEL_62:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(this + 7);
  *a2 = 50;
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

  a2 = TSP::Size::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_82;
  }

LABEL_72:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v37 = *(this + 8);
  *a2 = 58;
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

  a2 = TSP::Reference::_InternalSerialize(v37, v39, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_92;
  }

LABEL_82:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v43 = *(this + 9);
  *a2 = 66;
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
      goto LABEL_10;
    }

    goto LABEL_102;
  }

LABEL_92:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(this + 10);
  *a2 = 74;
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
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_112;
  }

LABEL_102:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v55 = *(this + 11);
  *a2 = 82;
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
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_122;
  }

LABEL_112:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v61 = *(this + 12);
  *a2 = 90;
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

  a2 = TSP::DataReference::_InternalSerialize(v61, v63, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_132;
  }

LABEL_122:
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

  a2 = TSD::ImageAdjustmentsArchive::_InternalSerialize(v67, v69, a3, a4);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_142;
  }

LABEL_132:
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

  a2 = TSP::DataReference::_InternalSerialize(v73, v75, a3);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_152;
  }

LABEL_142:
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

  a2 = TSP::DataReference::_InternalSerialize(v79, v81, a3);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_162;
  }

LABEL_152:
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

    goto LABEL_172;
  }

LABEL_162:
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

    goto LABEL_182;
  }

LABEL_172:
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

    goto LABEL_192;
  }

LABEL_182:
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

  a2 = TSP::DataReference::_InternalSerialize(v103, v105, a3);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_202;
  }

LABEL_192:
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
      goto LABEL_222;
    }

    goto LABEL_212;
  }

LABEL_202:
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
  if ((v6 & 0x80000) != 0)
  {
LABEL_212:
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
  }

LABEL_222:
  v127 = *(this + 1);
  if ((v127 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v127 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ImageMediaCommandArchive::ByteSizeLong(TSD::ImageMediaCommandArchive *this)
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
    v9 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_33;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v10 = TSP::Reference::ByteSizeLong(*(this + 5));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  v11 = TSP::Reference::ByteSizeLong(*(this + 6));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_35:
    v13 = TSP::Reference::ByteSizeLong(*(this + 8));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_11:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_34:
  v12 = TSP::Size::ByteSizeLong(*(this + 7));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_10:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_36:
  v14 = TSP::DataReference::ByteSizeLong(*(this + 9));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_12:
    v5 = TSP::DataReference::ByteSizeLong(*(this + 10));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_23;
  }

  if ((v2 & 0x100) != 0)
  {
    v15 = TSP::DataReference::ByteSizeLong(*(this + 11));
    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_16:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_40;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  v16 = TSP::DataReference::ByteSizeLong(*(this + 12));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x400) == 0)
  {
LABEL_17:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  v17 = TSD::ImageAdjustmentsArchive::ByteSizeLong(*(this + 13));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x800) == 0)
  {
LABEL_18:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  v18 = TSP::DataReference::ByteSizeLong(*(this + 14));
  v3 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x1000) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v19 = TSP::DataReference::ByteSizeLong(*(this + 15));
  v3 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x2000) == 0)
  {
LABEL_20:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  v20 = TSD::ImageAdjustmentsArchive::ByteSizeLong(*(this + 16));
  v3 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x4000) == 0)
  {
LABEL_21:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_44:
  v21 = TSP::DataReference::ByteSizeLong(*(this + 17));
  v3 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_22:
    v6 = TSP::DataReference::ByteSizeLong(*(this + 18));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_23:
  if ((v2 & 0xF0000) == 0)
  {
    goto LABEL_29;
  }

  if ((v2 & 0x10000) != 0)
  {
    v22 = TSP::DataReference::ByteSizeLong(*(this + 19));
    v3 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_26:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_48;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_26;
  }

  v23 = TSP::DataReference::ByteSizeLong(*(this + 20));
  v3 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_27:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_48:
  v24 = TSP::DataReference::ByteSizeLong(*(this + 21));
  v3 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) != 0)
  {
LABEL_28:
    v7 = TSP::DataReference::ByteSizeLong(*(this + 22));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_29:
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

uint64_t TSD::ImageMediaCommandArchive::MergeFrom(TSD::ImageMediaCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageMediaCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageMediaCommandArchive::MergeFrom(uint64_t this, const TSD::ImageMediaCommandArchive *a2)
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

        v10 = MEMORY[0x277C9BB20](v11);
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

        goto LABEL_35;
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

      v13 = MEMORY[0x277C9BB20](v14);
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

      goto LABEL_43;
    }

LABEL_35:
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
      v18 = v9;
    }

    this = TSP::Reference::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_17:
      if ((v5 & 0x20) == 0)
      {
LABEL_59:
        v25 = MEMORY[0x277D80A30];
        if ((v5 & 0x40) != 0)
        {
          *(v3 + 16) |= 0x40u;
          v26 = *(v3 + 72);
          if (!v26)
          {
            v27 = *(v3 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277C9BA90](v27);
            *(v3 + 72) = v26;
          }

          if (*(a2 + 9))
          {
            v28 = *(a2 + 9);
          }

          else
          {
            v28 = v25;
          }

          this = TSP::DataReference::MergeFrom(v26, v28);
        }

        if ((v5 & 0x80) != 0)
        {
          *(v3 + 16) |= 0x80u;
          v29 = *(v3 + 80);
          if (!v29)
          {
            v30 = *(v3 + 8);
            if (v30)
            {
              v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
            }

            v29 = MEMORY[0x277C9BA90](v30);
            *(v3 + 80) = v29;
          }

          if (*(a2 + 10))
          {
            v31 = *(a2 + 10);
          }

          else
          {
            v31 = v25;
          }

          this = TSP::DataReference::MergeFrom(v29, v31);
        }

        goto LABEL_77;
      }

LABEL_51:
      *(v3 + 16) |= 0x20u;
      v22 = *(v3 + 64);
      if (!v22)
      {
        v23 = *(v3 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x277C9BB20](v23);
        *(v3 + 64) = v22;
      }

      if (*(a2 + 8))
      {
        v24 = *(a2 + 8);
      }

      else
      {
        v24 = v9;
      }

      this = TSP::Reference::MergeFrom(v22, v24);
      goto LABEL_59;
    }

LABEL_43:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C9BAD0](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = MEMORY[0x277D809D8];
    }

    this = TSP::Size::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_51;
  }

LABEL_77:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_151;
  }

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

      v32 = MEMORY[0x277C9BA90](v33);
      *(v3 + 88) = v32;
    }

    if (*(a2 + 11))
    {
      v34 = *(a2 + 11);
    }

    else
    {
      v34 = MEMORY[0x277D80A30];
    }

    this = TSP::DataReference::MergeFrom(v32, v34);
  }

  if ((v5 & 0x200) != 0)
  {
    *(v3 + 16) |= 0x200u;
    v35 = *(v3 + 96);
    if (!v35)
    {
      v36 = *(v3 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = MEMORY[0x277C9BA90](v36);
      *(v3 + 96) = v35;
    }

    if (*(a2 + 12))
    {
      v37 = *(a2 + 12);
    }

    else
    {
      v37 = MEMORY[0x277D80A30];
    }

    this = TSP::DataReference::MergeFrom(v35, v37);
  }

  if ((v5 & 0x400) != 0)
  {
    *(v3 + 16) |= 0x400u;
    v38 = *(v3 + 104);
    if (!v38)
    {
      v39 = *(v3 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v39);
      *(v3 + 104) = v38;
    }

    if (*(a2 + 13))
    {
      v40 = *(a2 + 13);
    }

    else
    {
      v40 = &TSD::_ImageAdjustmentsArchive_default_instance_;
    }

    this = TSD::ImageAdjustmentsArchive::MergeFrom(v38, v40);
    if ((v5 & 0x800) == 0)
    {
LABEL_98:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_119;
    }
  }

  else if ((v5 & 0x800) == 0)
  {
    goto LABEL_98;
  }

  *(v3 + 16) |= 0x800u;
  v41 = *(v3 + 112);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = MEMORY[0x277C9BA90](v42);
    *(v3 + 112) = v41;
  }

  if (*(a2 + 14))
  {
    v43 = *(a2 + 14);
  }

  else
  {
    v43 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v41, v43);
  if ((v5 & 0x1000) == 0)
  {
LABEL_99:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_127;
  }

LABEL_119:
  *(v3 + 16) |= 0x1000u;
  v44 = *(v3 + 120);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = MEMORY[0x277C9BA90](v45);
    *(v3 + 120) = v44;
  }

  if (*(a2 + 15))
  {
    v46 = *(a2 + 15);
  }

  else
  {
    v46 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v44, v46);
  if ((v5 & 0x2000) == 0)
  {
LABEL_100:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_135;
  }

LABEL_127:
  *(v3 + 16) |= 0x2000u;
  v47 = *(v3 + 128);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v48);
    *(v3 + 128) = v47;
  }

  if (*(a2 + 16))
  {
    v49 = *(a2 + 16);
  }

  else
  {
    v49 = &TSD::_ImageAdjustmentsArchive_default_instance_;
  }

  this = TSD::ImageAdjustmentsArchive::MergeFrom(v47, v49);
  if ((v5 & 0x4000) == 0)
  {
LABEL_101:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_143;
  }

LABEL_135:
  *(v3 + 16) |= 0x4000u;
  v50 = *(v3 + 136);
  if (!v50)
  {
    v51 = *(v3 + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277C9BA90](v51);
    *(v3 + 136) = v50;
  }

  if (*(a2 + 17))
  {
    v52 = *(a2 + 17);
  }

  else
  {
    v52 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v50, v52);
  if ((v5 & 0x8000) != 0)
  {
LABEL_143:
    *(v3 + 16) |= 0x8000u;
    v53 = *(v3 + 144);
    if (!v53)
    {
      v54 = *(v3 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C9BA90](v54);
      *(v3 + 144) = v53;
    }

    if (*(a2 + 18))
    {
      v55 = *(a2 + 18);
    }

    else
    {
      v55 = MEMORY[0x277D80A30];
    }

    this = TSP::DataReference::MergeFrom(v53, v55);
  }

LABEL_151:
  if ((v5 & 0xF0000) == 0)
  {
    return this;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v56 = *(v3 + 152);
    if (!v56)
    {
      v57 = *(v3 + 8);
      if (v57)
      {
        v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
      }

      v56 = MEMORY[0x277C9BA90](v57);
      *(v3 + 152) = v56;
    }

    if (*(a2 + 19))
    {
      v58 = *(a2 + 19);
    }

    else
    {
      v58 = MEMORY[0x277D80A30];
    }

    this = TSP::DataReference::MergeFrom(v56, v58);
    if ((v5 & 0x20000) == 0)
    {
LABEL_154:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_155;
      }

      goto LABEL_173;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_154;
  }

  *(v3 + 16) |= 0x20000u;
  v59 = *(v3 + 160);
  if (!v59)
  {
    v60 = *(v3 + 8);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x277C9BA90](v60);
    *(v3 + 160) = v59;
  }

  if (*(a2 + 20))
  {
    v61 = *(a2 + 20);
  }

  else
  {
    v61 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v59, v61);
  if ((v5 & 0x40000) == 0)
  {
LABEL_155:
    if ((v5 & 0x80000) == 0)
    {
      return this;
    }

    goto LABEL_181;
  }

LABEL_173:
  *(v3 + 16) |= 0x40000u;
  v62 = *(v3 + 168);
  if (!v62)
  {
    v63 = *(v3 + 8);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x277C9BA90](v63);
    *(v3 + 168) = v62;
  }

  if (*(a2 + 21))
  {
    v64 = *(a2 + 21);
  }

  else
  {
    v64 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v62, v64);
  if ((v5 & 0x80000) != 0)
  {
LABEL_181:
    *(v3 + 16) |= 0x80000u;
    v65 = *(v3 + 176);
    if (!v65)
    {
      v66 = *(v3 + 8);
      if (v66)
      {
        v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
      }

      v65 = MEMORY[0x277C9BA90](v66);
      *(v3 + 176) = v65;
    }

    if (*(a2 + 22))
    {
      v67 = *(a2 + 22);
    }

    else
    {
      v67 = MEMORY[0x277D80A30];
    }

    return TSP::DataReference::MergeFrom(v65, v67);
  }

  return this;
}

uint64_t *TSD::ImageMediaCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageMediaCommandArchive::Clear(this);

    return TSD::ImageMediaCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ImageMediaCommandArchive::CopyFrom(uint64_t *this, const TSD::ImageMediaCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageMediaCommandArchive::Clear(this);

    return TSD::ImageMediaCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageMediaCommandArchive::IsInitialized(TSD::ImageMediaCommandArchive *this)
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
      result = TSP::Reference::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSP::Size::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 8));
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

    if ((v3 & 0x100) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 11));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x200) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 12));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x800) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 14));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x1000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 15));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 17));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x8000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 18));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 19));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 20));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 21));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80000) == 0)
    {
      return 1;
    }

    result = TSP::DataReference::IsInitialized(*(this + 22));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::ImageMediaCommandArchive::InternalSwap(TSD::ImageMediaCommandArchive *this, TSD::ImageMediaCommandArchive *a2)
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
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  v13 = *(this + 11);
  v14 = *(this + 12);
  *(this + 88) = *(a2 + 88);
  *(a2 + 11) = v13;
  *(a2 + 12) = v14;
  v15 = *(this + 13);
  v16 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v15;
  *(a2 + 14) = v16;
  v17 = *(this + 15);
  v18 = *(this + 16);
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v17;
  *(a2 + 16) = v18;
  v19 = *(this + 17);
  v20 = *(this + 18);
  *(this + 136) = *(a2 + 136);
  *(a2 + 17) = v19;
  *(a2 + 18) = v20;
  v21 = *(this + 19);
  v22 = *(this + 20);
  *(this + 152) = *(a2 + 152);
  *(a2 + 19) = v21;
  *(a2 + 20) = v22;
  v23 = *(this + 21);
  v24 = *(this + 22);
  result = *(a2 + 168);
  *(this + 168) = result;
  *(a2 + 21) = v23;
  *(a2 + 22) = v24;
  return result;
}

TSP::Size *TSD::MediaOriginalSizeCommandArchive::clear_neworiginalsize(TSD::MediaOriginalSizeCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Size *TSD::MediaOriginalSizeCommandArchive::clear_oldoriginalsize(TSD::MediaOriginalSizeCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSD::MediaOriginalSizeCommandArchive *TSD::MediaOriginalSizeCommandArchive::MediaOriginalSizeCommandArchive(TSD::MediaOriginalSizeCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857AC78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaOriginalSizeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}

TSD::MediaOriginalSizeCommandArchive *TSD::MediaOriginalSizeCommandArchive::MediaOriginalSizeCommandArchive(TSD::MediaOriginalSizeCommandArchive *this, const TSD::MediaOriginalSizeCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_28857AC78;
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
  return this;
}

void TSD::MediaOriginalSizeCommandArchive::~MediaOriginalSizeCommandArchive(TSD::MediaOriginalSizeCommandArchive *this)
{
  sub_2767E036C(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::MediaOriginalSizeCommandArchive::~MediaOriginalSizeCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

TSP::Size *sub_2767E036C(TSP::Size *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  if (v1 != &TSD::_MediaOriginalSizeCommandArchive_default_instance_)
  {
    v3 = *(v1 + 4);
    if (v3)
    {
      TSD::InfoCommandArchive::~InfoCommandArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = *(v1 + 5);
    if (v4)
    {
      TSP::Size::~Size(v4);
      MEMORY[0x277C9C1D0]();
    }

    result = *(v1 + 6);
    if (result)
    {
      TSP::Size::~Size(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::MediaOriginalSizeCommandArchive::default_instance(TSD::MediaOriginalSizeCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_MediaOriginalSizeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MediaOriginalSizeCommandArchive_default_instance_;
}

uint64_t *TSD::MediaOriginalSizeCommandArchive::Clear(uint64_t *this)
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

LABEL_15:
    this = TSD::InfoCommandArchive::Clear(this[4]);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
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

LABEL_16:
  this = TSP::Size::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Size::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::MediaOriginalSizeCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  while ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    v5 = (v22 + 1);
    v6 = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v22 + 2);
LABEL_6:
      v22 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v7 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v20;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_35;
        }

        *(a1 + 16) |= 8u;
        v10 = *(a1 + 48);
        if (!v10)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C9BAD0](v16);
          LODWORD(v10) = v17;
          *(a1 + 48) = v17;
LABEL_33:
          v5 = v22;
        }

LABEL_34:
        v13 = sub_27680AB8C(a3, v10, v5);
        goto LABEL_42;
      }

      if (v8 != 4 || v6 != 34)
      {
        goto LABEL_35;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v13 = google::protobuf::internal::InlineGreedyStringParser();
    }

    else
    {
      if (v8 != 1)
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_35:
          if (v6)
          {
            v18 = (v6 & 7) == 4;
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            *(a3 + 80) = v6 - 1;
            return v22;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_42;
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

          v12 = MEMORY[0x277C9BAD0](v11);
          LODWORD(v10) = v12;
          *(a1 + 40) = v12;
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (v6 != 10)
      {
        goto LABEL_35;
      }

      *(a1 + 16) |= 2u;
      v14 = *(a1 + 32);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v15);
        *(a1 + 32) = v14;
        v5 = v22;
      }

      v13 = sub_27680EFE0(a3, v14, v5);
    }

LABEL_42:
    v22 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v22;
}

google::protobuf::UnknownFieldSet *TSD::MediaOriginalSizeCommandArchive::_InternalSerialize(TSD::MediaOriginalSizeCommandArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 4);
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
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
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

  v15 = *(this + 5);
  *v4 = 18;
  v16 = *(v15 + 5);
  if (v16 > 0x7F)
  {
    *(v4 + 1) = v16 | 0x80;
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
      *(v4 + 2) = v18;
      v17 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v16;
    v17 = v4 + 2;
  }

  v4 = TSP::Size::_InternalSerialize(v15, v17, a3);
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 6);
  *v4 = 26;
  v22 = *(v21 + 5);
  if (v22 > 0x7F)
  {
    *(v4 + 1) = v22 | 0x80;
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
      *(v4 + 2) = v24;
      v23 = v4 + 3;
    }
  }

  else
  {
    *(v4 + 1) = v22;
    v23 = v4 + 2;
  }

  v4 = TSP::Size::_InternalSerialize(v21, v23, a3);
  if (v6)
  {
LABEL_5:
    v4 = sub_276727B88(a3, 4, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::MediaOriginalSizeCommandArchive::RequiredFieldsByteSizeFallback(TSD::MediaOriginalSizeCommandArchive *this)
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

uint64_t TSD::MediaOriginalSizeCommandArchive::ByteSizeLong(TSP::Size **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TSD::MediaOriginalSizeCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = this[4];
    v3 = this[3] & 0xFFFFFFFFFFFFFFFELL;
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
  if ((v9 & 0xC) != 0)
  {
    if ((v9 & 4) != 0)
    {
      v10 = TSP::Size::ByteSizeLong(this[5]);
      v8 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v9 & 8) != 0)
    {
      v11 = TSP::Size::ByteSizeLong(this[6]);
      v8 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

uint64_t TSD::MediaOriginalSizeCommandArchive::MergeFrom(TSD::MediaOriginalSizeCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::MediaOriginalSizeCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::MediaOriginalSizeCommandArchive::MergeFrom(uint64_t this, const TSD::MediaOriginalSizeCommandArchive *a2)
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
    }

    v9 = MEMORY[0x277D809D8];
    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v10 = *(v3 + 40);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x277C9BAD0](v11);
        *(v3 + 40) = v10;
      }

      if (*(a2 + 5))
      {
        v12 = *(a2 + 5);
      }

      else
      {
        v12 = v9;
      }

      this = TSP::Size::MergeFrom(v10, v12);
    }

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

        v13 = MEMORY[0x277C9BAD0](v14);
        *(v3 + 48) = v13;
      }

      if (*(a2 + 6))
      {
        v15 = *(a2 + 6);
      }

      else
      {
        v15 = v9;
      }

      return TSP::Size::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSD::MediaOriginalSizeCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MediaOriginalSizeCommandArchive::Clear(this);

    return TSD::MediaOriginalSizeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::MediaOriginalSizeCommandArchive::CopyFrom(uint64_t *this, const TSD::MediaOriginalSizeCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MediaOriginalSizeCommandArchive::Clear(this);

    return TSD::MediaOriginalSizeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::MediaOriginalSizeCommandArchive::IsInitialized(TSD::MediaOriginalSizeCommandArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = TSD::InfoCommandArchive::IsInitialized(*(this + 4));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 4) != 0)
    {
      result = TSP::Size::IsInitialized(*(this + 5));
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

    result = TSP::Size::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::MediaOriginalSizeCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
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
  v9 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v9;
  return result;
}

TSP::Size *TSD::MediaInfoGeometryCommandArchive::clear_neworiginalsize(TSD::MediaInfoGeometryCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Size *TSD::MediaInfoGeometryCommandArchive::clear_oldoriginalsize(TSD::MediaInfoGeometryCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::MediaInfoGeometryCommandArchive *TSD::MediaInfoGeometryCommandArchive::MediaInfoGeometryCommandArchive(TSD::MediaInfoGeometryCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857AD28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaInfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857AD28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaInfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::MediaInfoGeometryCommandArchive *TSD::MediaInfoGeometryCommandArchive::MediaInfoGeometryCommandArchive(TSD::MediaInfoGeometryCommandArchive *this, const TSD::MediaInfoGeometryCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857AD28;
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

void TSD::MediaInfoGeometryCommandArchive::~MediaInfoGeometryCommandArchive(TSD::MediaInfoGeometryCommandArchive *this)
{
  if (this != &TSD::_MediaInfoGeometryCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::InfoGeometryCommandArchive::~InfoGeometryCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Size::~Size(v3);
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
  TSD::MediaInfoGeometryCommandArchive::~MediaInfoGeometryCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::MediaInfoGeometryCommandArchive::default_instance(TSD::MediaInfoGeometryCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_MediaInfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MediaInfoGeometryCommandArchive_default_instance_;
}

uint64_t *TSD::MediaInfoGeometryCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSD::InfoGeometryCommandArchive::Clear(this[3]);
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

    this = TSP::Size::Clear(*(v1 + 32));
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

google::protobuf::internal *TSD::MediaInfoGeometryCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  while ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    v5 = (v22 + 1);
    v6 = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v22 + 2);
LABEL_6:
      v22 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v7 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v20;
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
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C9BAD0](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v22;
      }

LABEL_31:
      v11 = sub_27680AB8C(a3, v12, v5);
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

        v14 = MEMORY[0x277C9BAD0](v13);
        LODWORD(v12) = v14;
        *(a1 + 32) = v14;
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
        return v22;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_37;
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

      v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoGeometryCommandArchive>(v18);
      *(a1 + 24) = v17;
      v5 = v22;
    }

    v11 = sub_27680F660(a3, v17, v5);
LABEL_37:
    v22 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v22;
}

unsigned __int8 *TSD::MediaInfoGeometryCommandArchive::_InternalSerialize(TSD::MediaInfoGeometryCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::InfoGeometryCommandArchive::_InternalSerialize(v7, v9, a3, a4);
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

  a2 = TSP::Size::_InternalSerialize(v13, v15, a3);
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

uint64_t TSD::MediaInfoGeometryCommandArchive::RequiredFieldsByteSizeFallback(TSD::MediaInfoGeometryCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::InfoGeometryCommandArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Size::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TSP::Size::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSD::MediaInfoGeometryCommandArchive::ByteSizeLong(TSD::InfoGeometryCommandArchive **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v5 = TSD::MediaInfoGeometryCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSD::InfoGeometryCommandArchive::ByteSizeLong(this[3]);
    v3 = TSP::Size::ByteSizeLong(this[4]);
    v4 = TSP::Size::ByteSizeLong(this[5]);
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSD::MediaInfoGeometryCommandArchive::MergeFrom(TSD::MediaInfoGeometryCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::MediaInfoGeometryCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::MediaInfoGeometryCommandArchive::MergeFrom(uint64_t this, const TSD::MediaInfoGeometryCommandArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoGeometryCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_InfoGeometryCommandArchive_default_instance_;
      }

      this = TSD::InfoGeometryCommandArchive::MergeFrom(v6, v8);
    }

    v9 = MEMORY[0x277D809D8];
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

        v10 = MEMORY[0x277C9BAD0](v11);
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

      this = TSP::Size::MergeFrom(v10, v12);
    }

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

        v13 = MEMORY[0x277C9BAD0](v14);
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

      return TSP::Size::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSD::MediaInfoGeometryCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MediaInfoGeometryCommandArchive::Clear(this);

    return TSD::MediaInfoGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::MediaInfoGeometryCommandArchive::CopyFrom(uint64_t *this, const TSD::MediaInfoGeometryCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MediaInfoGeometryCommandArchive::Clear(this);

    return TSD::MediaInfoGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::MediaInfoGeometryCommandArchive::IsInitialized(TSD::MediaInfoGeometryCommandArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  result = TSD::InfoGeometryCommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Size::IsInitialized(*(this + 4));
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

    result = TSP::Size::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::MediaInfoGeometryCommandArchive::InternalSwap(TSD::MediaInfoGeometryCommandArchive *this, TSD::MediaInfoGeometryCommandArchive *a2)
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

TSP::Size *TSD::ImageNaturalSizeCommandArchive::clear_new_natural_size(TSD::ImageNaturalSizeCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Size *TSD::ImageNaturalSizeCommandArchive::clear_old_natural_size(TSD::ImageNaturalSizeCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::ImageNaturalSizeCommandArchive *TSD::ImageNaturalSizeCommandArchive::ImageNaturalSizeCommandArchive(TSD::ImageNaturalSizeCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857ADD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageNaturalSizeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857ADD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageNaturalSizeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::ImageNaturalSizeCommandArchive *TSD::ImageNaturalSizeCommandArchive::ImageNaturalSizeCommandArchive(TSD::ImageNaturalSizeCommandArchive *this, const TSD::ImageNaturalSizeCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857ADD8;
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

void TSD::ImageNaturalSizeCommandArchive::~ImageNaturalSizeCommandArchive(TSD::ImageNaturalSizeCommandArchive *this)
{
  if (this != &TSD::_ImageNaturalSizeCommandArchive_default_instance_)
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
      TSP::Size::~Size(v3);
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
  TSD::ImageNaturalSizeCommandArchive::~ImageNaturalSizeCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ImageNaturalSizeCommandArchive::default_instance(TSD::ImageNaturalSizeCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageNaturalSizeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageNaturalSizeCommandArchive_default_instance_;
}

uint64_t *TSD::ImageNaturalSizeCommandArchive::Clear(uint64_t *this)
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

    this = TSP::Size::Clear(*(v1 + 32));
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

google::protobuf::internal *TSD::ImageNaturalSizeCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  while ((sub_27670AF08(a3, &v22) & 1) == 0)
  {
    v5 = (v22 + 1);
    v6 = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v22 + 2);
LABEL_6:
      v22 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v7 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v20;
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
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C9BAD0](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v22;
      }

LABEL_31:
      v11 = sub_27680AB8C(a3, v12, v5);
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

        v14 = MEMORY[0x277C9BAD0](v13);
        LODWORD(v12) = v14;
        *(a1 + 32) = v14;
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
        return v22;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_37;
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

      v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v18);
      *(a1 + 24) = v17;
      v5 = v22;
    }

    v11 = sub_27680EFE0(a3, v17, v5);
LABEL_37:
    v22 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v22;
}

unsigned __int8 *TSD::ImageNaturalSizeCommandArchive::_InternalSerialize(TSD::ImageNaturalSizeCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

  a2 = TSP::Size::_InternalSerialize(v13, v15, a3);
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

uint64_t TSD::ImageNaturalSizeCommandArchive::ByteSizeLong(TSD::ImageNaturalSizeCommandArchive *this)
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
      v5 = TSP::Size::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v6 = TSP::Size::ByteSizeLong(*(this + 5));
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

uint64_t TSD::ImageNaturalSizeCommandArchive::MergeFrom(TSD::ImageNaturalSizeCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageNaturalSizeCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageNaturalSizeCommandArchive::MergeFrom(uint64_t this, const TSD::ImageNaturalSizeCommandArchive *a2)
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

    v9 = MEMORY[0x277D809D8];
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

        v10 = MEMORY[0x277C9BAD0](v11);
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

      this = TSP::Size::MergeFrom(v10, v12);
    }

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

        v13 = MEMORY[0x277C9BAD0](v14);
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

      return TSP::Size::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSD::ImageNaturalSizeCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageNaturalSizeCommandArchive::Clear(this);

    return TSD::ImageNaturalSizeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ImageNaturalSizeCommandArchive::CopyFrom(uint64_t *this, const TSD::ImageNaturalSizeCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageNaturalSizeCommandArchive::Clear(this);

    return TSD::ImageNaturalSizeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageNaturalSizeCommandArchive::IsInitialized(TSD::ImageNaturalSizeCommandArchive *this)
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
      result = TSP::Size::IsInitialized(*(this + 4));
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

    result = TSP::Size::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::ImageNaturalSizeCommandArchive::InternalSwap(TSD::ImageNaturalSizeCommandArchive *this, TSD::ImageNaturalSizeCommandArchive *a2)
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

TSP::Reference *TSD::ImageMaskCommandArchive::clear_newmaskinfo(TSD::ImageMaskCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::ImageMaskCommandArchive::clear_oldmaskinfo(TSD::ImageMaskCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::ImageMaskCommandArchive *TSD::ImageMaskCommandArchive::ImageMaskCommandArchive(TSD::ImageMaskCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857AE88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageMaskCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 24) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857AE88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageMaskCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 24) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::ImageMaskCommandArchive *TSD::ImageMaskCommandArchive::ImageMaskCommandArchive(TSD::ImageMaskCommandArchive *this, const TSD::ImageMaskCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857AE88;
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
  *(this + 24) = *(a2 + 24);
  return this;
}

void TSD::ImageMaskCommandArchive::~ImageMaskCommandArchive(TSD::ImageMaskCommandArchive *this)
{
  if (this != &TSD::_ImageMaskCommandArchive_default_instance_)
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
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ImageMaskCommandArchive::~ImageMaskCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ImageMaskCommandArchive::default_instance(TSD::ImageMaskCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageMaskCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageMaskCommandArchive_default_instance_;
}

uint64_t *TSD::ImageMaskCommandArchive::Clear(uint64_t *this)
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

    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Reference::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ImageMaskCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v33) & 1) == 0)
  {
    while (1)
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
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v9 - 128));
      v33 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v28;
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
          v24 = *(a1 + 24);
          if (!v24)
          {
            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v25);
            *(a1 + 24) = v24;
            v7 = v33;
          }

          v20 = sub_27680EFE0(a3, v24, v7);
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

            v17 = MEMORY[0x277C9BB20](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
LABEL_31:
            v7 = v33;
          }

LABEL_32:
          v20 = sub_27680B6EC(a3, v15, v7);
        }

LABEL_51:
        v33 = v20;
        if (!v20)
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
          v15 = *(a1 + 40);
          if (!v15)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = MEMORY[0x277C9BB20](v18);
            LODWORD(v15) = v19;
            *(a1 + 40) = v19;
            goto LABEL_31;
          }

          goto LABEL_32;
        }

LABEL_44:
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

        v20 = google::protobuf::internal::UnknownFieldParse();
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
          v33 = v22;
          *(a1 + 48) = v21 != 0;
          goto LABEL_52;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v21);
        v33 = v29;
        *(a1 + 48) = v30 != 0;
        if (!v29)
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
          v33 = v12;
          *(a1 + 49) = v11 != 0;
          goto LABEL_52;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v33 = v31;
        *(a1 + 49) = v32 != 0;
        if (!v31)
        {
LABEL_61:
          v33 = 0;
          goto LABEL_2;
        }
      }

LABEL_52:
      if (sub_27670AF08(a3, &v33))
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
  *(a1 + 16) |= v5;
  return v33;
}

unsigned __int8 *TSD::ImageMaskCommandArchive::_InternalSerialize(TSD::ImageMaskCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

  a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
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
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 48);
  *a2 = 32;
  a2[1] = v25;
  a2 += 2;
  if ((v6 & 0x10) != 0)
  {
LABEL_40:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 49);
    *a2 = 40;
    a2[1] = v26;
    a2 += 2;
  }

LABEL_43:
  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v27 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ImageMaskCommandArchive::ByteSizeLong(TSD::ImageMaskCommandArchive *this)
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

  if ((v2 & 0x1E) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v6 = TSP::Reference::ByteSizeLong(*(this + 5));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += ((v2 >> 3) & 2) + ((v2 >> 2) & 2);
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

uint64_t TSD::ImageMaskCommandArchive::MergeFrom(TSD::ImageMaskCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageMaskCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageMaskCommandArchive::MergeFrom(uint64_t this, const TSD::ImageMaskCommandArchive *a2)
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

        v10 = MEMORY[0x277C9BB20](v11);
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

        goto LABEL_36;
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

      v13 = MEMORY[0x277C9BB20](v14);
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
LABEL_18:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_17:
      *(v3 + 49) = *(a2 + 49);
      goto LABEL_18;
    }

LABEL_36:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return this;
}