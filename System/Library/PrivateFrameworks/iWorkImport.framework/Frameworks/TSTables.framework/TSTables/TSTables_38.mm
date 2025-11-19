void *TST::ImportWarningSetByCellRefArchive::default_instance(TST::ImportWarningSetByCellRefArchive *this)
{
  if (atomic_load_explicit(scc_info_ImportWarningSetByCellRefArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ImportWarningSetByCellRefArchive_default_instance_;
}

uint64_t *TST::ImportWarningSetByCellRefArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TST::CellRefImportWarningSetPairArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::ImportWarningSetByCellRefArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_221567030(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRefImportWarningSetPairArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_221701F88(a3, v13, v10);
          v20 = v9;
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
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v20))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *TST::ImportWarningSetByCellRefArchive::_InternalSerialize(TST::ImportWarningSetByCellRefArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TST::CellRefImportWarningSetPairArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ImportWarningSetByCellRefArchive::ByteSizeLong(TST::ImportWarningSetByCellRefArchive *this)
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
      v7 = TST::CellRefImportWarningSetPairArchive::ByteSizeLong(v6);
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

uint64_t TST::ImportWarningSetByCellRefArchive::MergeFrom(TST::ImportWarningSetByCellRefArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ImportWarningSetByCellRefArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ImportWarningSetByCellRefArchive::MergeFrom(uint64_t this, const TST::ImportWarningSetByCellRefArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_22167DCD0(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TST::ImportWarningSetByCellRefArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ImportWarningSetByCellRefArchive::Clear(this);

    return TST::ImportWarningSetByCellRefArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ImportWarningSetByCellRefArchive::CopyFrom(uint64_t *this, const TST::ImportWarningSetByCellRefArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ImportWarningSetByCellRefArchive::Clear(this);

    return TST::ImportWarningSetByCellRefArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ImportWarningSetByCellRefArchive::IsInitialized(TST::ImportWarningSetByCellRefArchive *this)
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
    IsInitialized = TST::CellRefImportWarningSetPairArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while (IsInitialized);
  return v3 < 1;
}

__n128 TST::ImportWarningSetByCellRefArchive::InternalSwap(TST::ImportWarningSetByCellRefArchive *this, TST::ImportWarningSetByCellRefArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSP::Reference *TST::TableDataList_ListEntry::clear_reference(TST::TableDataList_ListEntry *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TST::TableDataList_ListEntry::clear_formula(TST::TableDataList_ListEntry *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSCE::FormulaArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSK::FormatStructArchive *TST::TableDataList_ListEntry::clear_format(TST::TableDataList_ListEntry *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSK::CustomFormatArchive *TST::TableDataList_ListEntry::clear_custom_format(TST::TableDataList_ListEntry *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSK::CustomFormatArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Reference *TST::TableDataList_ListEntry::clear_rich_text_payload(TST::TableDataList_ListEntry *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::Reference *TST::TableDataList_ListEntry::clear_comment_storage(TST::TableDataList_ListEntry *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TST::TableDataList_ListEntry *TST::TableDataList_ListEntry::TableDataList_ListEntry(TST::TableDataList_ListEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2D18;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TableDataList_ListEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  return this;
}

TST::TableDataList_ListEntry *TST::TableDataList_ListEntry::TableDataList_ListEntry(TST::TableDataList_ListEntry *this, const TST::TableDataList_ListEntry *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B2D18;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  if ((v4 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  *(this + 12) = *(a2 + 12);
  return this;
}

void TST::TableDataList_ListEntry::~TableDataList_ListEntry(TST::TableDataList_ListEntry *this)
{
  sub_2215DF59C(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::TableDataList_ListEntry::~TableDataList_ListEntry(this);

  JUMPOUT(0x223DA1450);
}

TST::CellSpecArchive *sub_2215DF59C(TST::CellSpecArchive *result)
{
  v1 = result;
  v2 = *(result + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  if (v1 != &TST::_TableDataList_ListEntry_default_instance_)
  {
    v3 = *(v1 + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(v1 + 5);
    if (v4)
    {
      TSCE::FormulaArchive::~FormulaArchive(v4);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 6))
    {
      v5 = MEMORY[0x223D9FAE0]();
      MEMORY[0x223DA1450](v5, 0x10A1C4029F168B5);
    }

    if (*(v1 + 7))
    {
      v6 = MEMORY[0x223D9FA80]();
      MEMORY[0x223DA1450](v6, 0x10A1C40564F9C1DLL);
    }

    v7 = *(v1 + 8);
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = *(v1 + 9);
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = *(v1 + 10);
    if (v9)
    {
      TST::ImportWarningSetArchive::~ImportWarningSetArchive(v9);
      MEMORY[0x223DA1450]();
    }

    result = *(v1 + 11);
    if (result)
    {
      TST::CellSpecArchive::~CellSpecArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::TableDataList_ListEntry::default_instance(TST::TableDataList_ListEntry *this)
{
  if (atomic_load_explicit(scc_info_TableDataList_ListEntry_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableDataList_ListEntry_default_instance_;
}

uint64_t *TST::TableDataList_ListEntry::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
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
        goto LABEL_23;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_23;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_23:
  this = TSP::Reference::Clear(this[4]);
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = TSCE::FormulaArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = TSK::FormatStructArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_27:
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

    goto LABEL_28;
  }

LABEL_26:
  this = TSK::CustomFormatArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  this = TSP::Reference::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TST::ImportWarningSetArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    this = TST::CellSpecArchive::Clear(*(v1 + 88));
  }

  if ((v2 & 0x600) != 0)
  {
    *(v1 + 96) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

uint64_t *TST::CellSpecArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCE::FormulaArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0xFC) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 62) = 0;
    *(v1 + 56) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::TableDataList_ListEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v45 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v45) & 1) == 0)
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
        goto LABEL_100;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 > 9)
        {
          if (v10 != 10)
          {
            if (v10 == 11)
            {
              if (v8 == 90)
              {
                *(a1 + 16) |= 0x80u;
                v33 = *(a1 + 80);
                if (!v33)
                {
                  v34 = *(a1 + 8);
                  if (v34)
                  {
                    v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v33 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v34);
                  *(a1 + 80) = v33;
                  v7 = v45;
                }

                v16 = sub_221701EB8(a3, v33, v7);
                goto LABEL_92;
              }
            }

            else if (v10 == 12 && v8 == 98)
            {
              *(a1 + 16) |= 0x100u;
              v17 = *(a1 + 88);
              if (!v17)
              {
                v18 = *(a1 + 8);
                if (v18)
                {
                  v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
                }

                v17 = google::protobuf::Arena::CreateMaybeMessage<TST::CellSpecArchive>(v18);
                *(a1 + 88) = v17;
                v7 = v45;
              }

              v16 = sub_221702128(a3, v17, v7);
              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v8 == 82)
          {
            *(a1 + 16) |= 0x40u;
            v11 = *(a1 + 72);
            if (!v11)
            {
              v38 = *(a1 + 8);
              if (v38)
              {
                v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
              }

              v39 = MEMORY[0x223DA0390](v38);
              LODWORD(v11) = v39;
              *(a1 + 72) = v39;
              goto LABEL_83;
            }

            goto LABEL_84;
          }
        }

        else
        {
          if (v10 == 6)
          {
            if (v8 == 50)
            {
              *(a1 + 16) |= 8u;
              v35 = *(a1 + 48);
              if (!v35)
              {
                v36 = *(a1 + 8);
                if (v36)
                {
                  v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
                }

                v37 = MEMORY[0x223DA02D0](v36);
                LODWORD(v35) = v37;
                *(a1 + 48) = v37;
                v7 = v45;
              }

              v16 = sub_2216FEC0C(a3, v35, v7);
              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v10 == 8)
          {
            if (v8 == 66)
            {
              *(a1 + 16) |= 0x10u;
              v30 = *(a1 + 56);
              if (!v30)
              {
                v31 = *(a1 + 8);
                if (v31)
                {
                  v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
                }

                v32 = MEMORY[0x223DA02C0](v31);
                LODWORD(v30) = v32;
                *(a1 + 56) = v32;
                v7 = v45;
              }

              v16 = sub_221702058(a3, v30, v7);
              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v10 == 9 && v8 == 74)
          {
            *(a1 + 16) |= 0x20u;
            v11 = *(a1 + 64);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v13 = MEMORY[0x223DA0390](v12);
              LODWORD(v11) = v13;
              *(a1 + 64) = v13;
              goto LABEL_83;
            }

            goto LABEL_84;
          }
        }

LABEL_85:
        if (v8)
        {
          v40 = (v8 & 7) == 4;
        }

        else
        {
          v40 = 1;
        }

        if (v40)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v16 = google::protobuf::internal::UnknownFieldParse();
LABEL_92:
        v45 = v16;
        if (!v16)
        {
          goto LABEL_100;
        }

        goto LABEL_93;
      }

      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 26)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v16 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v10 != 4)
        {
          if (v10 == 5 && v8 == 42)
          {
            *(a1 + 16) |= 4u;
            v14 = *(a1 + 40);
            if (!v14)
            {
              v15 = *(a1 + 8);
              if (v15)
              {
                v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
              }

              v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v15);
              *(a1 + 40) = v14;
              v7 = v45;
            }

            v16 = sub_2216FE0AC(a3, v14, v7);
            goto LABEL_92;
          }

          goto LABEL_85;
        }

        if (v8 != 34)
        {
          goto LABEL_85;
        }

        *(a1 + 16) |= 2u;
        v11 = *(a1 + 32);
        if (!v11)
        {
          v28 = *(a1 + 8);
          if (v28)
          {
            v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

          v29 = MEMORY[0x223DA0390](v28);
          LODWORD(v11) = v29;
          *(a1 + 32) = v29;
LABEL_83:
          v7 = v45;
        }

LABEL_84:
        v16 = sub_22170B7F8(a3, v11, v7);
        goto LABEL_92;
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_85;
        }

        v5 |= 0x200u;
        v25 = (v7 + 1);
        LODWORD(v26) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_52;
        }

        v27 = *v25;
        v26 = (v26 + (v27 << 7) - 128);
        if ((v27 & 0x80000000) == 0)
        {
          v25 = (v7 + 2);
LABEL_52:
          v45 = v25;
          *(a1 + 96) = v26;
          goto LABEL_93;
        }

        v41 = google::protobuf::internal::VarintParseSlow32(v7, v26);
        v45 = v41;
        *(a1 + 96) = v42;
        if (!v41)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_85;
        }

        v5 |= 0x400u;
        v20 = (v7 + 1);
        LODWORD(v21) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        v22 = *v20;
        v21 = (v21 + (v22 << 7) - 128);
        if ((v22 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_45:
          v45 = v20;
          *(a1 + 100) = v21;
          goto LABEL_93;
        }

        v43 = google::protobuf::internal::VarintParseSlow32(v7, v21);
        v45 = v43;
        *(a1 + 100) = v44;
        if (!v43)
        {
LABEL_100:
          v45 = 0;
          goto LABEL_2;
        }
      }

LABEL_93:
      if (sub_221567030(a3, &v45))
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

unsigned __int8 *TST::TableDataList_ListEntry::_InternalSerialize(TST::TableDataList_ListEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x200) == 0)
  {
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_3;
    }

LABEL_24:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v11 = *(this + 25);
    *v4 = 16;
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
        if (v6)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v4[2] = v12;
        v4 += 3;
        if (v6)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      v4[1] = v11;
      v4 += 2;
      if (v6)
      {
        goto LABEL_35;
      }
    }

LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 24);
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
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v4[2] = v8;
      v4 += 3;
      if ((v6 & 0x400) != 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 0x400) != 0)
    {
      goto LABEL_24;
    }
  }

LABEL_3:
  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_35:
  v4 = sub_22150C00C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_36:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 4);
  *v4 = 34;
  v16 = *(v15 + 5);
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

  v4 = TSP::Reference::_InternalSerialize(v15, v17, a3);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 5);
  *v4 = 42;
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

  v4 = TSCE::FormulaArchive::_InternalSerialize(v21, v23, a3);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_66;
  }

LABEL_56:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(this + 6);
  *v4 = 50;
  v28 = *(v27 + 12);
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

  v4 = TSK::FormatStructArchive::_InternalSerialize(v27, v29, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_8:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_76;
  }

LABEL_66:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v33 = *(this + 7);
  *v4 = 66;
  v34 = *(v33 + 5);
  if (v34 > 0x7F)
  {
    v4[1] = v34 | 0x80;
    v36 = v34 >> 7;
    if (v34 >> 14)
    {
      v35 = v4 + 3;
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
      v4[2] = v36;
      v35 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v34;
    v35 = v4 + 2;
  }

  v4 = TSK::CustomFormatArchive::_InternalSerialize(v33, v35, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_9:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_86;
  }

LABEL_76:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v39 = *(this + 8);
  *v4 = 74;
  v40 = *(v39 + 5);
  if (v40 > 0x7F)
  {
    v4[1] = v40 | 0x80;
    v42 = v40 >> 7;
    if (v40 >> 14)
    {
      v41 = v4 + 3;
      do
      {
        *(v41 - 1) = v42 | 0x80;
        v43 = v42 >> 7;
        ++v41;
        v44 = v42 >> 14;
        v42 >>= 7;
      }

      while (v44);
      *(v41 - 1) = v43;
    }

    else
    {
      v4[2] = v42;
      v41 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v40;
    v41 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v39, v41, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_10:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_96;
  }

LABEL_86:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v45 = *(this + 9);
  *v4 = 82;
  v46 = *(v45 + 5);
  if (v46 > 0x7F)
  {
    v4[1] = v46 | 0x80;
    v48 = v46 >> 7;
    if (v46 >> 14)
    {
      v47 = v4 + 3;
      do
      {
        *(v47 - 1) = v48 | 0x80;
        v49 = v48 >> 7;
        ++v47;
        v50 = v48 >> 14;
        v48 >>= 7;
      }

      while (v50);
      *(v47 - 1) = v49;
    }

    else
    {
      v4[2] = v48;
      v47 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v46;
    v47 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v45, v47, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_11:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_116;
    }

    goto LABEL_106;
  }

LABEL_96:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v51 = *(this + 10);
  *v4 = 90;
  v52 = *(v51 + 5);
  if (v52 > 0x7F)
  {
    v4[1] = v52 | 0x80;
    v54 = v52 >> 7;
    if (v52 >> 14)
    {
      v53 = v4 + 3;
      do
      {
        *(v53 - 1) = v54 | 0x80;
        v55 = v54 >> 7;
        ++v53;
        v56 = v54 >> 14;
        v54 >>= 7;
      }

      while (v56);
      *(v53 - 1) = v55;
    }

    else
    {
      v4[2] = v54;
      v53 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v52;
    v53 = v4 + 2;
  }

  v4 = TST::ImportWarningSetArchive::_InternalSerialize(v51, v53, a3);
  if ((v6 & 0x100) != 0)
  {
LABEL_106:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v57 = *(this + 11);
    *v4 = 98;
    v58 = *(v57 + 5);
    if (v58 > 0x7F)
    {
      v4[1] = v58 | 0x80;
      v60 = v58 >> 7;
      if (v58 >> 14)
      {
        v59 = v4 + 3;
        do
        {
          *(v59 - 1) = v60 | 0x80;
          v61 = v60 >> 7;
          ++v59;
          v62 = v60 >> 14;
          v60 >>= 7;
        }

        while (v62);
        *(v59 - 1) = v61;
      }

      else
      {
        v4[2] = v60;
        v59 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v58;
      v59 = v4 + 2;
    }

    v4 = TST::CellSpecArchive::_InternalSerialize(v57, v59, a3);
  }

LABEL_116:
  v63 = *(this + 1);
  if ((v63 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v63 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableDataList_ListEntry::RequiredFieldsByteSizeFallback(TST::TableDataList_ListEntry *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x200) != 0)
  {
    result = ((9 * (__clz(*(this + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x400) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 0x400) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 25) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::TableDataList_ListEntry::ByteSizeLong(TST::TableDataList_ListEntry *this)
{
  v2 = *(this + 4);
  if ((~v2 & 0x600) != 0)
  {
    v3 = TST::TableDataList_ListEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = ((9 * (__clz(*(this + 24) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 25) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  if (v2)
  {
    v7 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
LABEL_7:
      if ((v2 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_7;
  }

  v10 = TSP::Reference::ByteSizeLong(*(this + 4));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) == 0)
  {
LABEL_8:
    if ((v2 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = TSCE::FormulaArchive::ByteSizeLong(*(this + 5));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = TSK::FormatStructArchive::ByteSizeLong(*(this + 6));
  v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_25:
    v14 = TSP::Reference::ByteSizeLong(*(this + 8));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_12:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_24:
  v13 = TSK::CustomFormatArchive::ByteSizeLong(*(this + 7));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_26:
  v15 = TSP::Reference::ByteSizeLong(*(this + 9));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_13:
    v4 = TST::ImportWarningSetArchive::ByteSizeLong(*(this + 10));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_14:
  if ((v2 & 0x100) != 0)
  {
    v5 = TST::CellSpecArchive::ByteSizeLong(*(this + 11));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::TableDataList_ListEntry::MergeFrom(TST::TableDataList_ListEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableDataList_ListEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableDataList_ListEntry::MergeFrom(uint64_t this, const TST::TableDataList_ListEntry *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_70;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
  }

  v6 = MEMORY[0x277D80A18];
  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v7 = *(v3 + 32);
    if (!v7)
    {
      v8 = *(v3 + 8);
      if (v8)
      {
        v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      v7 = MEMORY[0x223DA0390](v8);
      *(v3 + 32) = v7;
    }

    if (*(a2 + 4))
    {
      v9 = *(a2 + 4);
    }

    else
    {
      v9 = v6;
    }

    this = TSP::Reference::MergeFrom(v7, v9);
    if ((v5 & 4) == 0)
    {
LABEL_8:
      if ((v5 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_8;
  }

  *(v3 + 16) |= 4u;
  v10 = *(v3 + 40);
  if (!v10)
  {
    v11 = *(v3 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v11);
    *(v3 + 40) = v10;
  }

  if (*(a2 + 5))
  {
    v12 = *(a2 + 5);
  }

  else
  {
    v12 = TSCE::_FormulaArchive_default_instance_;
  }

  this = TSCE::FormulaArchive::MergeFrom(v10, v12);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_30:
  *(v3 + 16) |= 8u;
  v13 = *(v3 + 48);
  if (!v13)
  {
    v14 = *(v3 + 8);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA02D0](v14);
    *(v3 + 48) = v13;
  }

  if (*(a2 + 6))
  {
    v15 = *(a2 + 6);
  }

  else
  {
    v15 = MEMORY[0x277D80740];
  }

  this = TSK::FormatStructArchive::MergeFrom(v13, v15);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_46:
    *(v3 + 16) |= 0x20u;
    v19 = *(v3 + 64);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0390](v20);
      *(v3 + 64) = v19;
    }

    if (*(a2 + 8))
    {
      v21 = *(a2 + 8);
    }

    else
    {
      v21 = v6;
    }

    this = TSP::Reference::MergeFrom(v19, v21);
    if ((v5 & 0x40) == 0)
    {
LABEL_12:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_62;
    }

    goto LABEL_54;
  }

LABEL_38:
  *(v3 + 16) |= 0x10u;
  v16 = *(v3 + 56);
  if (!v16)
  {
    v17 = *(v3 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x223DA02C0](v17);
    *(v3 + 56) = v16;
  }

  if (*(a2 + 7))
  {
    v18 = *(a2 + 7);
  }

  else
  {
    v18 = MEMORY[0x277D80730];
  }

  this = TSK::CustomFormatArchive::MergeFrom(v16, v18);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_11:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v22 = *(v3 + 72);
  if (!v22)
  {
    v23 = *(v3 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = MEMORY[0x223DA0390](v23);
    *(v3 + 72) = v22;
  }

  if (*(a2 + 9))
  {
    v24 = *(a2 + 9);
  }

  else
  {
    v24 = v6;
  }

  this = TSP::Reference::MergeFrom(v22, v24);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v25 = *(v3 + 80);
    if (!v25)
    {
      v26 = *(v3 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v26);
      *(v3 + 80) = v25;
    }

    if (*(a2 + 10))
    {
      v27 = *(a2 + 10);
    }

    else
    {
      v27 = &TST::_ImportWarningSetArchive_default_instance_;
    }

    this = TST::ImportWarningSetArchive::MergeFrom(v25, v27);
  }

LABEL_70:
  if ((v5 & 0x700) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_73;
    }

LABEL_85:
    *(v3 + 96) = *(a2 + 24);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  *(v3 + 16) |= 0x100u;
  v28 = *(v3 + 88);
  if (!v28)
  {
    v29 = *(v3 + 8);
    if (v29)
    {
      v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = google::protobuf::Arena::CreateMaybeMessage<TST::CellSpecArchive>(v29);
    *(v3 + 88) = v28;
  }

  if (*(a2 + 11))
  {
    v30 = *(a2 + 11);
  }

  else
  {
    v30 = TST::_CellSpecArchive_default_instance_;
  }

  this = TST::CellSpecArchive::MergeFrom(v28, v30);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_85;
  }

LABEL_73:
  if ((v5 & 0x400) != 0)
  {
LABEL_74:
    *(v3 + 100) = *(a2 + 25);
  }

LABEL_75:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t TST::CellSpecArchive::MergeFrom(uint64_t this, const TST::CellSpecArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TSCE::_FormulaArchive_default_instance_;
      }

      this = TSCE::FormulaArchive::MergeFrom(v6, v8);
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

      v9 = MEMORY[0x223DA0390](v10);
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

      goto LABEL_32;
    }

LABEL_31:
    *(v3 + 40) = *(a2 + 5);
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
    *(v3 + 48) = *(a2 + 6);
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
    *(v3 + 56) = *(a2 + 7);
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
    *(v3 + 64) = *(a2 + 16);
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
      *(v3 + 69) = *(a2 + 69);
      goto LABEL_13;
    }

LABEL_35:
    *(v3 + 68) = *(a2 + 68);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return this;
}

uint64_t *TST::TableDataList_ListEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableDataList_ListEntry::Clear(this);

    return TST::TableDataList_ListEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableDataList_ListEntry::CopyFrom(uint64_t *this, const TST::TableDataList_ListEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableDataList_ListEntry::Clear(this);

    return TST::TableDataList_ListEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::TableDataList_ListEntry::IsInitialized(TST::TableDataList_ListEntry *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0x600) != 0)
  {
    return 0;
  }

  if ((v1 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 4) != 0)
  {
    result = TSCE::FormulaArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 8) != 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x10) != 0)
  {
    result = TSK::CustomFormatArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x20) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x40) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x80) != 0)
  {
    result = TST::ImportWarningSetArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 0x100) == 0)
  {
    return 1;
  }

  result = TST::CellSpecArchive::IsInitialized(*(this + 11));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t TST::CellSpecArchive::IsInitialized(TST::CellSpecArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x20) == 0)
  {
    return 0;
  }

  if (v1)
  {
    result = TSCE::FormulaArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 2) == 0)
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

__n128 TST::TableDataList_ListEntry::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
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
  this[3] = a2[3];
  a2[3].n128_u64[0] = v8;
  a2[3].n128_u64[1] = v9;
  v10 = this[4].n128_u64[0];
  v11 = this[4].n128_u64[1];
  this[4] = a2[4];
  a2[4].n128_u64[0] = v10;
  a2[4].n128_u64[1] = v11;
  v12 = this[5].n128_u64[0];
  v13 = this[5].n128_u64[1];
  result = a2[5];
  this[5] = result;
  a2[5].n128_u64[0] = v12;
  a2[5].n128_u64[1] = v13;
  v15 = this[6].n128_u64[0];
  this[6].n128_u64[0] = a2[6].n128_u64[0];
  a2[6].n128_u64[0] = v15;
  return result;
}

uint64_t TST::TableDataList::clear_segments(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TST::TableDataList *TST::TableDataList::TableDataList(TST::TableDataList *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2DC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_TableDataList_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 76) = 0;
  *(this + 18) = 0;
  *(this + 20) = 1;
  return this;
}

void sub_2215E107C(_Unwind_Exception *a1)
{
  sub_2216E381C(v2);
  sub_22167DD90(v1);
  _Unwind_Resume(a1);
}

TST::TableDataList *TST::TableDataList::TableDataList(TST::TableDataList *this, const TST::TableDataList *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2DC8;
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
    sub_22167DE14(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_221568514(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_22156734C(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v16 = *(a2 + 9);
  *(this + 20) = *(a2 + 20);
  *(this + 9) = v16;
  return this;
}

void sub_2215E1204(_Unwind_Exception *a1)
{
  sub_2216E381C(v2);
  sub_22167DD90((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::TableDataList::~TableDataList(TST::TableDataList *this)
{
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 6);
  sub_22167DD90(this + 3);
}

{
  TST::TableDataList::~TableDataList(this);

  JUMPOUT(0x223DA1450);
}

void *TST::TableDataList::default_instance(TST::TableDataList *this)
{
  if (atomic_load_explicit(scc_info_TableDataList_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableDataList_default_instance_;
}

uint64_t *TST::TableDataList::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::TableDataList_ListEntry::Clear(v4);
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
      this = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if ((*(v1 + 16) & 7) != 0)
  {
    *(v1 + 76) = 0;
    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return this;
}

google::protobuf::internal *TST::TableDataList::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v45 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v45) & 1) == 0)
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
        goto LABEL_78;
      }

      v7 = TagFallback;
      v8 = v40;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4)
          {
            if (v10 != 5 || v8 != 40)
            {
              goto LABEL_59;
            }

            v5 |= 2u;
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
              v45 = v12;
              *(a1 + 76) = v11 != 0;
              goto LABEL_66;
            }

            v41 = google::protobuf::internal::VarintParseSlow64(v7, v11);
            v45 = v41;
            *(a1 + 76) = v42 != 0;
            if (!v41)
            {
              goto LABEL_78;
            }

            goto LABEL_66;
          }

          if (v8 == 34)
          {
            v26 = v7 - 1;
            while (1)
            {
              v27 = (v26 + 1);
              v45 = (v26 + 1);
              v28 = *(a1 + 64);
              if (!v28)
              {
                goto LABEL_42;
              }

              v34 = *(a1 + 56);
              v29 = *v28;
              if (v34 < *v28)
              {
                *(a1 + 56) = v34 + 1;
                v31 = *&v28[2 * v34 + 2];
                goto LABEL_46;
              }

              if (v29 == *(a1 + 60))
              {
LABEL_42:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                v28 = *(a1 + 64);
                v29 = *v28;
              }

              *v28 = v29 + 1;
              v30 = MEMORY[0x223DA0390](*(a1 + 48));
              LODWORD(v31) = v30;
              v32 = *(a1 + 56);
              v33 = *(a1 + 64) + 8 * v32;
              *(a1 + 56) = v32 + 1;
              *(v33 + 8) = v30;
              v27 = v45;
LABEL_46:
              v26 = sub_22170B7F8(a3, v31, v27);
              v45 = v26;
              if (!v26)
              {
                goto LABEL_78;
              }

              if (*a3 <= v26 || *v26 != 34)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_59:
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
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v45 = google::protobuf::internal::UnknownFieldParse();
          if (!v45)
          {
LABEL_78:
            v45 = 0;
            goto LABEL_2;
          }

          goto LABEL_66;
        }

        if (v8 != 26)
        {
          goto LABEL_59;
        }

        v18 = (v7 - 1);
        while (2)
        {
          v19 = (v18 + 1);
          v45 = (v18 + 1);
          v20 = *(a1 + 40);
          if (!v20)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v20 = *(a1 + 40);
            v21 = *v20;
            goto LABEL_30;
          }

          v25 = *(a1 + 32);
          v21 = *v20;
          if (v25 >= *v20)
          {
            if (v21 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v20 = v21 + 1;
            v22 = google::protobuf::Arena::CreateMaybeMessage<TST::TableDataList_ListEntry>(*(a1 + 24));
            v23 = *(a1 + 32);
            v24 = *(a1 + 40) + 8 * v23;
            *(a1 + 32) = v23 + 1;
            *(v24 + 8) = v22;
            v19 = v45;
          }

          else
          {
            *(a1 + 32) = v25 + 1;
            v22 = *&v20[2 * v25 + 2];
          }

          v18 = sub_2217021F8(a3, v22, v19);
          v45 = v18;
          if (!v18)
          {
            goto LABEL_78;
          }

          if (*a3 <= v18 || *v18 != 26)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v10 == 1)
      {
        if (v8 == 8)
        {
          v36 = (v7 + 1);
          v35 = *v7;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if (v37 < 0)
          {
            v45 = google::protobuf::internal::VarintParseSlow64(v7, v35);
            if (!v45)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v36 = (v7 + 2);
LABEL_56:
            v45 = v36;
          }

          if ((v35 - 1) > 0xB)
          {
            sub_2217087CC();
          }

          else
          {
            *(a1 + 16) |= 4u;
            *(a1 + 80) = v35;
          }

          goto LABEL_66;
        }

        goto LABEL_59;
      }

      if (v10 != 2 || v8 != 16)
      {
        goto LABEL_59;
      }

      v5 |= 1u;
      v15 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v17 = *v15;
      v16 = (v16 + (v17 << 7) - 128);
      if ((v17 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_25:
        v45 = v15;
        *(a1 + 72) = v16;
        goto LABEL_66;
      }

      v43 = google::protobuf::internal::VarintParseSlow32(v7, v16);
      v45 = v43;
      *(a1 + 72) = v44;
      if (!v43)
      {
        goto LABEL_78;
      }

LABEL_66:
      if (sub_221567030(a3, &v45))
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

unsigned __int8 *TST::TableDataList::_InternalSerialize(TST::TableDataList *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 20);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 1) == 0)
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
      if ((v5 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 18);
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
  v14 = *(this + 8);
  if (v14)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TST::TableDataList_ListEntry::_InternalSerialize(v16, v18, a3);
    }
  }

  v22 = *(this + 14);
  if (v22)
  {
    for (j = 0; j != v22; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = *(*(this + 8) + 8 * j + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v24, v26, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 76);
    *a2 = 40;
    a2[1] = v30;
    a2 += 2;
  }

  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableDataList::RequiredFieldsByteSizeFallback(TST::TableDataList *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 4) == 0)
    {
      return result;
    }
  }

  v4 = *(this + 20);
  if (v4 < 0)
  {
    v5 = 11;
  }

  else
  {
    v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v5;
  return result;
}

uint64_t TST::TableDataList::ByteSizeLong(TST::TableDataList *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    v6 = TST::TableDataList::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = (9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6;
    v3 = *(this + 20);
    v4 = (9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6;
    if (v3 >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 10;
    }

    v6 = v5 + v2 + 2;
  }

  v7 = *(this + 8);
  v8 = v6 + v7;
  v9 = *(this + 5);
  if (v9)
  {
    v10 = (v9 + 8);
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 8 * v7;
    do
    {
      v12 = *v10++;
      v13 = TST::TableDataList_ListEntry::ByteSizeLong(v12);
      v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      v11 -= 8;
    }

    while (v11);
  }

  v14 = *(this + 14);
  v15 = v8 + v14;
  v16 = *(this + 8);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = TSP::Reference::ByteSizeLong(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  v21 = *(this + 4) & 2;
  v22 = v15 + v21;
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v22, this + 20);
  }

  else
  {
    *(this + 5) = v22;
    return v15 + v21;
  }
}

uint64_t TST::TableDataList::MergeFrom(TST::TableDataList *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableDataList::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableDataList::MergeFrom(uint64_t this, const TST::TableDataList *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167DE14(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_221568514(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
      *(v3 + 72) = *(a2 + 18);
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
LABEL_14:
          *(v3 + 16) |= v15;
          return this;
        }

LABEL_13:
        *(v3 + 80) = *(a2 + 20);
        goto LABEL_14;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 76) = *(a2 + 76);
    if ((v15 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return this;
}

uint64_t *TST::TableDataList::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableDataList::Clear(this);

    return TST::TableDataList::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableDataList::CopyFrom(uint64_t *this, const TST::TableDataList *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableDataList::Clear(this);

    return TST::TableDataList::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::TableDataList::IsInitialized(TST::TableDataList *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TST::TableDataList_ListEntry::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(this + 14);
  do
  {
    v5 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v7));
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  return v5;
}

__n128 TST::TableDataList::InternalSwap(TST::TableDataList *this, TST::TableDataList *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
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
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  LODWORD(v7) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v7;
  LOBYTE(v7) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v7;
  LODWORD(v7) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v7;
  return result;
}

TSP::Range *TST::TableDataListSegment::clear_key_range(TST::TableDataListSegment *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Range::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::TableDataListSegment *TST::TableDataListSegment::TableDataListSegment(TST::TableDataListSegment *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2E78;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_TableDataListSegment_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 14) = 1;
  return this;
}

TST::TableDataListSegment *TST::TableDataListSegment::TableDataListSegment(TST::TableDataListSegment *this, const TST::TableDataListSegment *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2E78;
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
    sub_22167DE14(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  *(this + 14) = *(a2 + 14);
  return this;
}

void sub_2215E22C8(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C404FE48876);
  sub_22167DD90((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::TableDataListSegment::~TableDataListSegment(TST::TableDataListSegment *this)
{
  if (this != &TST::_TableDataListSegment_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Range::~Range(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22167DD90(this + 3);
}

{
  TST::TableDataListSegment::~TableDataListSegment(this);

  JUMPOUT(0x223DA1450);
}

void *TST::TableDataListSegment::default_instance(TST::TableDataListSegment *this)
{
  if (atomic_load_explicit(scc_info_TableDataListSegment_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableDataListSegment_default_instance_;
}

uint64_t *TST::TableDataListSegment::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::TableDataList_ListEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSP::Range::Clear(*(v1 + 48));
    }

    *(v1 + 56) = 1;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TST::TableDataListSegment::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (sub_221567030(a3, &v29))
      {
        return v29;
      }

      v5 = (v29 + 1);
      v6 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        v5 = (v29 + 2);
LABEL_6:
        v29 = v5;
        goto LABEL_7;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v7 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v27;
LABEL_7:
      v8 = v6 >> 3;
      if (v6 >> 3 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_13;
        }

        v15 = (v5 - 1);
        while (1)
        {
          v16 = (v15 + 1);
          v29 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
            goto LABEL_31;
          }

          v22 = *(a1 + 32);
          v18 = *v17;
          if (v22 < *v17)
          {
            *(a1 + 32) = v22 + 1;
            v19 = *&v17[2 * v22 + 2];
            goto LABEL_35;
          }

          if (v18 == *(a1 + 36))
          {
LABEL_31:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
          }

          *v17 = v18 + 1;
          v19 = google::protobuf::Arena::CreateMaybeMessage<TST::TableDataList_ListEntry>(*(a1 + 24));
          v20 = *(a1 + 32);
          v21 = *(a1 + 40) + 8 * v20;
          *(a1 + 32) = v20 + 1;
          *(v21 + 8) = v19;
          v16 = v29;
LABEL_35:
          v15 = sub_2217021F8(a3, v19, v16);
          v29 = v15;
          if (!v15)
          {
            return 0;
          }

          if (*a3 <= v15 || *v15 != 26)
          {
            goto LABEL_2;
          }
        }
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1 || v6 != 8)
      {
        goto LABEL_13;
      }

      v24 = (v5 + 1);
      v23 = *v5;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_44;
      }

      v25 = *v24;
      v23 = (v25 << 7) + v23 - 128;
      if ((v25 & 0x80000000) == 0)
      {
        v24 = (v5 + 2);
LABEL_44:
        v29 = v24;
        goto LABEL_45;
      }

      v29 = google::protobuf::internal::VarintParseSlow64(v5, v23);
      if (!v29)
      {
        return 0;
      }

LABEL_45:
      if ((v23 - 1) > 0xB)
      {
        sub_2217087CC();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 56) = v23;
      }
    }

    if (v6 == 18)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 48);
      if (!v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x223DA0370](v13);
        LODWORD(v12) = v14;
        *(a1 + 48) = v14;
        v5 = v29;
      }

      v11 = sub_2217022C8(a3, v12, v5);
      goto LABEL_26;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_26:
    v29 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v29;
}

unsigned __int8 *TST::TableDataListSegment::_InternalSerialize(TST::TableDataListSegment *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 14);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 1) == 0)
      {
        goto LABEL_24;
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
        v12 = v7 >> 7;
        ++a2;
        v13 = v7 >> 14;
        v7 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v5 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 6);
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
        v14 = v11 >> 7;
        ++v10;
        v15 = v11 >> 14;
        v11 >>= 7;
      }

      while (v15);
      *(v10 - 1) = v14;
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

  a2 = TSP::Range::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 8);
  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v18 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
      v19 = *(v18 + 5);
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

      a2 = TST::TableDataList_ListEntry::_InternalSerialize(v18, v20, a3);
    }
  }

  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableDataListSegment::RequiredFieldsByteSizeFallback(TST::TableDataListSegment *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::Range::ByteSizeLong(*(this + 6));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      return result;
    }
  }

  v5 = *(this + 14);
  if (v5 < 0)
  {
    v6 = 11;
  }

  else
  {
    v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  result += v6;
  return result;
}

uint64_t TST::TableDataListSegment::ByteSizeLong(TSP::Range **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v7 = TST::TableDataListSegment::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Range::ByteSizeLong(this[6]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = *(this + 14);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 10;
    }

    v7 = v2 + v3 + v6 + 2;
  }

  v8 = *(this + 8);
  v9 = v7 + v8;
  v10 = this[5];
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
      v14 = TST::TableDataList_ListEntry::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v9, this + 20);
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TST::TableDataListSegment::MergeFrom(TST::TableDataListSegment *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableDataListSegment::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableDataListSegment::MergeFrom(uint64_t this, const TST::TableDataListSegment *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167DE14(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
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
      *(v3 + 16) |= 1u;
      v11 = *(v3 + 48);
      if (!v11)
      {
        v12 = *(v3 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x223DA0370](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D809F8];
      }

      this = TSP::Range::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 14);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TST::TableDataListSegment::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableDataListSegment::Clear(this);

    return TST::TableDataListSegment::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableDataListSegment::CopyFrom(uint64_t *this, const TST::TableDataListSegment *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableDataListSegment::Clear(this);

    return TST::TableDataListSegment::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::TableDataListSegment::IsInitialized(TST::TableDataListSegment *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TST::TableDataList_ListEntry::IsInitialized(*(*(this + 5) + 8 * v2));
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

  result = TSP::Range::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::TableDataListSegment::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
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
  LODWORD(v8) = this[3].n128_u32[2];
  this[3].n128_u32[2] = a2[3].n128_u32[2];
  a2[3].n128_u32[2] = v8;
  return result;
}

void *TST::TableRBTree_Node::TableRBTree_Node(void *result, uint64_t a2)
{
  *result = &unk_2834B2F28;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_2834B2F28;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TST::TableRBTree_Node *TST::TableRBTree_Node::TableRBTree_Node(TST::TableRBTree_Node *this, const TST::TableRBTree_Node *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B2F28;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TST::TableRBTree_Node::~TableRBTree_Node(TST::TableRBTree_Node *this)
{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);
}

{
  sub_2214DFCF8(this + 1);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::TableRBTree_Node::default_instance(TST::TableRBTree_Node *this)
{
  if (atomic_load_explicit(scc_info_TableRBTree_Node_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableRBTree_Node_default_instance_;
}

uint64_t *TST::TableRBTree_Node::Clear(TST::TableRBTree_Node *this)
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
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TST::TableRBTree_Node::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v24) & 1) == 0)
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
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_24:
          v24 = v12;
          *(a1 + 28) = v13;
          goto LABEL_29;
        }

        v20 = google::protobuf::internal::VarintParseSlow32(v7, v13);
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
            sub_221567188((a1 + 8));
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
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_28:
          v24 = v15;
          *(a1 + 24) = v16;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v24 = v22;
        *(a1 + 24) = v23;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      if (sub_221567030(a3, &v24))
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

unsigned __int8 *TST::TableRBTree_Node::_InternalSerialize(TST::TableRBTree_Node *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableRBTree_Node::RequiredFieldsByteSizeFallback(TST::TableRBTree_Node *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::TableRBTree_Node::ByteSizeLong(TST::TableRBTree_Node *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TST::TableRBTree_Node::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t TST::TableRBTree_Node::MergeFrom(TST::TableRBTree_Node *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableRBTree_Node::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableRBTree_Node::MergeFrom(uint64_t this, const TST::TableRBTree_Node *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

TST::TableRBTree_Node *TST::TableRBTree_Node::CopyFrom(TST::TableRBTree_Node *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableRBTree_Node::Clear(this);

    return TST::TableRBTree_Node::MergeFrom(v4, a2);
  }

  return this;
}

TST::TableRBTree_Node *TST::TableRBTree_Node::CopyFrom(TST::TableRBTree_Node *this, const TST::TableRBTree_Node *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableRBTree_Node::Clear(this);

    return TST::TableRBTree_Node::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableRBTree_Node::InternalSwap(TST::TableRBTree_Node *this, TST::TableRBTree_Node *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TST::TableRBTree *TST::TableRBTree::TableRBTree(TST::TableRBTree *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B2FD8;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_TableRBTree_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TST::TableRBTree *TST::TableRBTree::TableRBTree(TST::TableRBTree *this, const TST::TableRBTree *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834B2FD8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22167DED4(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_22156734C(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TST::TableRBTree::~TableRBTree(TST::TableRBTree *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567450(this + 2);
}

{
  TST::TableRBTree::~TableRBTree(this);

  JUMPOUT(0x223DA1450);
}

void *TST::TableRBTree::default_instance(TST::TableRBTree *this)
{
  if (atomic_load_explicit(scc_info_TableRBTree_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_TableRBTree_default_instance_;
}

uint64_t *TST::TableRBTree::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TST::TableRBTree_Node::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::TableRBTree::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_221567030(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v5 = (v20 + 1);
      v6 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v18;
LABEL_6:
      if (v6 == 10)
      {
        v9 = (v5 - 1);
        while (1)
        {
          v10 = (v9 + 1);
          v20 = (v9 + 1);
          v11 = *(a1 + 32);
          if (!v11)
          {
            goto LABEL_18;
          }

          v16 = *(a1 + 24);
          v12 = *v11;
          if (v16 < *v11)
          {
            *(a1 + 24) = v16 + 1;
            v13 = *&v11[2 * v16 + 2];
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree_Node>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_221702398(a3, v13, v10);
          v20 = v9;
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
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v20))
      {
        return v20;
      }
    }

    v5 = (v20 + 2);
LABEL_5:
    v20 = v5;
    goto LABEL_6;
  }

  return v20;
}

unsigned __int8 *TST::TableRBTree::_InternalSerialize(TST::TableRBTree *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TST::TableRBTree_Node::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::TableRBTree::ByteSizeLong(TST::TableRBTree *this)
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
      v7 = TST::TableRBTree_Node::ByteSizeLong(v6);
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

uint64_t TST::TableRBTree::MergeFrom(TST::TableRBTree *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::TableRBTree::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::TableRBTree::MergeFrom(uint64_t this, const TST::TableRBTree *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_22167DED4(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TST::TableRBTree::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableRBTree::Clear(this);

    return TST::TableRBTree::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::TableRBTree::CopyFrom(uint64_t *this, const TST::TableRBTree *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::TableRBTree::Clear(this);

    return TST::TableRBTree::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::TableRBTree::IsInitialized(TST::TableRBTree *this)
{
  v1 = *(this + 6);
  do
  {
    v2 = v1;
    if (v1 < 1)
    {
      break;
    }

    v3 = *(*(this + 4) + 8 * v1--);
  }

  while ((~*(v3 + 16) & 3) == 0);
  return v2 < 1;
}

__n128 TST::TableRBTree::InternalSwap(TST::TableRBTree *this, TST::TableRBTree *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSP::Reference *TST::HeaderStorageBucket_Header::clear_cell_style(TST::HeaderStorageBucket_Header *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TST::HeaderStorageBucket_Header::clear_text_style(TST::HeaderStorageBucket_Header *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::HeaderStorageBucket_Header *TST::HeaderStorageBucket_Header::HeaderStorageBucket_Header(TST::HeaderStorageBucket_Header *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3088;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HeaderStorageBucket_Header_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B3088;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_HeaderStorageBucket_Header_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::HeaderStorageBucket_Header *TST::HeaderStorageBucket_Header::HeaderStorageBucket_Header(TST::HeaderStorageBucket_Header *this, const TST::HeaderStorageBucket_Header *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3088;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 40) = *(a2 + 40);
  return this;
}

void TST::HeaderStorageBucket_Header::~HeaderStorageBucket_Header(TST::HeaderStorageBucket_Header *this)
{
  if (this != TST::_HeaderStorageBucket_Header_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::HeaderStorageBucket_Header::~HeaderStorageBucket_Header(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::HeaderStorageBucket_Header::default_instance(TST::HeaderStorageBucket_Header *this)
{
  if (atomic_load_explicit(scc_info_HeaderStorageBucket_Header_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_HeaderStorageBucket_Header_default_instance_;
}

uint64_t *TST::HeaderStorageBucket_Header::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Reference::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0x3C) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::HeaderStorageBucket_Header::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v36) & 1) == 0)
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
        goto LABEL_65;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 == 5)
          {
            if (v8 != 42)
            {
              goto LABEL_46;
            }

            *(a1 + 16) |= 1u;
            v15 = *(a1 + 24);
            if (!v15)
            {
              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = MEMORY[0x223DA0390](v24);
              LODWORD(v15) = v25;
              *(a1 + 24) = v25;
LABEL_44:
              v7 = v36;
            }

LABEL_45:
            v26 = sub_22170B7F8(a3, v15, v7);
          }

          else
          {
            if (v10 == 6 && v8 == 50)
            {
              *(a1 + 16) |= 2u;
              v15 = *(a1 + 32);
              if (!v15)
              {
                v16 = *(a1 + 8);
                if (v16)
                {
                  v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
                }

                v17 = MEMORY[0x223DA0390](v16);
                LODWORD(v15) = v17;
                *(a1 + 32) = v17;
                goto LABEL_44;
              }

              goto LABEL_45;
            }

LABEL_46:
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
              sub_221567188((a1 + 8));
            }

            v26 = google::protobuf::internal::UnknownFieldParse();
          }

          v36 = v26;
          if (!v26)
          {
            goto LABEL_65;
          }

          goto LABEL_54;
        }

        if (v8 != 32)
        {
          goto LABEL_46;
        }

        v5 |= 0x20u;
        v21 = (v7 + 1);
        LODWORD(v22) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        v23 = *v21;
        v22 = (v22 + (v23 << 7) - 128);
        if ((v23 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_36:
          v36 = v21;
          *(a1 + 52) = v22;
          goto LABEL_54;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v7, v22);
        v36 = v32;
        *(a1 + 52) = v33;
        if (!v32)
        {
          goto LABEL_65;
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_46;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_31:
          v36 = v18;
          *(a1 + 40) = v19;
          goto LABEL_54;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v36 = v30;
        *(a1 + 40) = v31;
        if (!v30)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (v10 == 2)
        {
          if (v8 == 21)
          {
            v5 |= 8u;
            *(a1 + 44) = *v7;
            v36 = (v7 + 4);
            goto LABEL_54;
          }

          goto LABEL_46;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_46;
        }

        v5 |= 0x10u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v36 = v12;
          *(a1 + 48) = v13;
          goto LABEL_54;
        }

        v34 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v36 = v34;
        *(a1 + 48) = v35;
        if (!v34)
        {
LABEL_65:
          v36 = 0;
          goto LABEL_2;
        }
      }

LABEL_54:
      if (sub_221567030(a3, &v36))
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

unsigned __int8 *TST::HeaderStorageBucket_Header::_InternalSerialize(TST::HeaderStorageBucket_Header *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 10);
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
        if ((v5 & 8) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if ((v5 & 8) != 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 8) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_3:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(this + 11);
  *a2 = 21;
  *(a2 + 1) = v10;
  a2 += 5;
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

LABEL_33:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 13);
    *a2 = 32;
    if (v15 > 0x7F)
    {
      a2[1] = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++a2;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(a2 - 1) = v17;
        if (v5)
        {
          goto LABEL_44;
        }
      }

      else
      {
        a2[2] = v16;
        a2 += 3;
        if (v5)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      a2[1] = v15;
      a2 += 2;
      if (v5)
      {
        goto LABEL_44;
      }
    }

LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_54;
  }

LABEL_22:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 12);
  *a2 = 24;
  if (v11 > 0x7F)
  {
    a2[1] = v11 | 0x80;
    v12 = v11 >> 7;
    if (v11 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++a2;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_33;
      }
    }

    else
    {
      a2[2] = v12;
      a2 += 3;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    a2[1] = v11;
    a2 += 2;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_33;
    }
  }

LABEL_5:
  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 3);
  *a2 = 42;
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
  if ((v5 & 2) != 0)
  {
LABEL_54:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 4);
    *a2 = 50;
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
  }

LABEL_64:
  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v31 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::HeaderStorageBucket_Header::RequiredFieldsByteSizeFallback(TST::HeaderStorageBucket_Header *this)
{
  v1 = *(this + 4);
  if ((v1 & 4) != 0)
  {
    v2 = ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 0x10) != 0)
  {
    v2 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v1 & 0x20) != 0)
  {
    v2 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TST::HeaderStorageBucket_Header::ByteSizeLong(TST::HeaderStorageBucket_Header *this)
{
  v2 = *(this + 4);
  if ((~v2 & 0x3C) != 0)
  {
    v4 = TST::HeaderStorageBucket_Header::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*(this + 6) | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL);
    v4 = v3.i32[0] + ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + v3.i32[1] + 8;
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v5 = TSP::Reference::ByteSizeLong(*(this + 3));
      v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v6 = TSP::Reference::ByteSizeLong(*(this + 4));
      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

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

uint64_t TST::HeaderStorageBucket_Header::MergeFrom(TST::HeaderStorageBucket_Header *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderStorageBucket_Header::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderStorageBucket_Header::MergeFrom(uint64_t this, const TST::HeaderStorageBucket_Header *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) != 0)
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

        v7 = MEMORY[0x223DA0390](v8);
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
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x223DA0390](v11);
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

    this = TSP::Reference::MergeFrom(v10, v12);
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
    *(v3 + 40) = *(a2 + 10);
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
    *(v3 + 44) = *(a2 + 11);
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
      *(v3 + 52) = *(a2 + 13);
      goto LABEL_11;
    }

LABEL_31:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TST::HeaderStorageBucket_Header::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderStorageBucket_Header::Clear(this);

    return TST::HeaderStorageBucket_Header::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::HeaderStorageBucket_Header::CopyFrom(uint64_t *this, const TST::HeaderStorageBucket_Header *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderStorageBucket_Header::Clear(this);

    return TST::HeaderStorageBucket_Header::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::HeaderStorageBucket_Header::IsInitialized(TST::HeaderStorageBucket_Header *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0x3C) != 0)
  {
    return 0;
  }

  if (v1)
  {
    result = TSP::Reference::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
  }

  if ((v1 & 2) == 0)
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

__n128 TST::HeaderStorageBucket_Header::InternalSwap(TST::HeaderStorageBucket_Header *this, TST::HeaderStorageBucket_Header *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
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

TST::HeaderStorageBucket *TST::HeaderStorageBucket::HeaderStorageBucket(TST::HeaderStorageBucket *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3138;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_HeaderStorageBucket_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TST::HeaderStorageBucket *TST::HeaderStorageBucket::HeaderStorageBucket(TST::HeaderStorageBucket *this, const TST::HeaderStorageBucket *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3138;
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
    sub_22167E018(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 12) = *(a2 + 12);
  return this;
}

void TST::HeaderStorageBucket::~HeaderStorageBucket(TST::HeaderStorageBucket *this)
{
  sub_2214DFCF8(this + 1);
  sub_22167DF94(this + 3);
}

{
  TST::HeaderStorageBucket::~HeaderStorageBucket(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HeaderStorageBucket::default_instance(TST::HeaderStorageBucket *this)
{
  if (atomic_load_explicit(scc_info_HeaderStorageBucket_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HeaderStorageBucket_default_instance_;
}

uint64_t *TST::HeaderStorageBucket::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TST::HeaderStorageBucket_Header::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::HeaderStorageBucket::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v27) & 1) == 0)
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
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
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
            sub_221567188((a1 + 8));
          }

          v27 = google::protobuf::internal::UnknownFieldParse();
          if (!v27)
          {
LABEL_44:
            v27 = 0;
            goto LABEL_2;
          }

          goto LABEL_37;
        }

        v12 = (v7 - 1);
        while (2)
        {
          v13 = (v12 + 1);
          v27 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_24;
          }

          v19 = *(a1 + 32);
          v15 = *v14;
          if (v19 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v14 = v15 + 1;
            v16 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderStorageBucket_Header>(*(a1 + 24));
            v17 = *(a1 + 32);
            v18 = *(a1 + 40) + 8 * v17;
            *(a1 + 32) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v27;
          }

          else
          {
            *(a1 + 32) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
          }

          v12 = sub_221702468(a3, v16, v13);
          v27 = v12;
          if (!v12)
          {
            goto LABEL_44;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v20 = (v7 + 1);
      LODWORD(v21) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v22 = *v20;
      v21 = (v21 + (v22 << 7) - 128);
      if ((v22 & 0x80000000) == 0)
      {
        v20 = (v7 + 2);
LABEL_36:
        v27 = v20;
        *(a1 + 48) = v21;
        v5 = 1;
        goto LABEL_37;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v21);
      v27 = v25;
      *(a1 + 48) = v26;
      v5 = 1;
      if (!v25)
      {
        goto LABEL_44;
      }

LABEL_37:
      if (sub_221567030(a3, &v27))
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

unsigned __int8 *TST::HeaderStorageBucket::_InternalSerialize(TST::HeaderStorageBucket *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2[1] = v5 | 0x80;
      v6 = v5 >> 7;
      if (v5 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++a2;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(a2 - 1) = v7;
      }

      else
      {
        a2[2] = v6;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        a2[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = a2 + 3;
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
          a2[2] = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v12;
        v13 = a2 + 2;
      }

      a2 = TST::HeaderStorageBucket_Header::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::HeaderStorageBucket::ByteSizeLong(TST::HeaderStorageBucket *this)
{
  if (*(this + 16))
  {
    v2 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
      v9 = TST::HeaderStorageBucket_Header::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

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

uint64_t TST::HeaderStorageBucket::MergeFrom(TST::HeaderStorageBucket *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderStorageBucket::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderStorageBucket::MergeFrom(uint64_t this, const TST::HeaderStorageBucket *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_22167E018(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    v10 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    *(v3 + 48) = v10;
  }

  return this;
}

uint64_t *TST::HeaderStorageBucket::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderStorageBucket::Clear(this);

    return TST::HeaderStorageBucket::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::HeaderStorageBucket::CopyFrom(uint64_t *this, const TST::HeaderStorageBucket *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderStorageBucket::Clear(this);

    return TST::HeaderStorageBucket::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::HeaderStorageBucket::IsInitialized(TST::HeaderStorageBucket *this)
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
    IsInitialized = TST::HeaderStorageBucket_Header::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TST::HeaderStorageBucket::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LODWORD(v5) = this[3].n128_u32[0];
  this[3].n128_u32[0] = a2[3].n128_u32[0];
  a2[3].n128_u32[0] = v5;
  return result;
}

uint64_t TST::HeaderStorage::clear_buckets(uint64_t this)
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

TST::HeaderStorage *TST::HeaderStorage::HeaderStorage(TST::HeaderStorage *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B31E8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_HeaderStorage_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TST::HeaderStorage *TST::HeaderStorage::HeaderStorage(TST::HeaderStorage *this, const TST::HeaderStorage *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B31E8;
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
    sub_221568514(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_22156734C(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 12) = *(a2 + 12);
  return this;
}

void TST::HeaderStorage::~HeaderStorage(TST::HeaderStorage *this)
{
  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 3);
}

{
  TST::HeaderStorage::~HeaderStorage(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HeaderStorage::default_instance(TST::HeaderStorage *this)
{
  if (atomic_load_explicit(scc_info_HeaderStorage_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HeaderStorage_default_instance_;
}

uint64_t *TST::HeaderStorage::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::HeaderStorage::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v28) & 1) == 0)
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
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
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
            sub_221567188((a1 + 8));
          }

          v28 = google::protobuf::internal::UnknownFieldParse();
          if (!v28)
          {
LABEL_44:
            v28 = 0;
            goto LABEL_2;
          }

          goto LABEL_37;
        }

        v12 = v7 - 1;
        while (2)
        {
          v13 = (v12 + 1);
          v28 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_24;
          }

          v20 = *(a1 + 32);
          v15 = *v14;
          if (v20 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v14 = v15 + 1;
            v16 = MEMORY[0x223DA0390](*(a1 + 24));
            LODWORD(v17) = v16;
            v18 = *(a1 + 32);
            v19 = *(a1 + 40) + 8 * v18;
            *(a1 + 32) = v18 + 1;
            *(v19 + 8) = v16;
            v13 = v28;
          }

          else
          {
            *(a1 + 32) = v20 + 1;
            v17 = *&v14[2 * v20 + 2];
          }

          v12 = sub_22170B7F8(a3, v17, v13);
          v28 = v12;
          if (!v12)
          {
            goto LABEL_44;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v21 = (v7 + 1);
      LODWORD(v22) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      v23 = *v21;
      v22 = (v22 + (v23 << 7) - 128);
      if ((v23 & 0x80000000) == 0)
      {
        v21 = (v7 + 2);
LABEL_36:
        v28 = v21;
        *(a1 + 48) = v22;
        v5 = 1;
        goto LABEL_37;
      }

      v26 = google::protobuf::internal::VarintParseSlow32(v7, v22);
      v28 = v26;
      *(a1 + 48) = v27;
      v5 = 1;
      if (!v26)
      {
        goto LABEL_44;
      }

LABEL_37:
      if (sub_221567030(a3, &v28))
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

unsigned __int8 *TST::HeaderStorage::_InternalSerialize(TST::HeaderStorage *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2[1] = v5 | 0x80;
      v6 = v5 >> 7;
      if (v5 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++a2;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(a2 - 1) = v7;
      }

      else
      {
        a2[2] = v6;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v9 = *(this + 8);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(this + 5) + 8 * i + 8);
      *a2 = 18;
      v12 = *(v11 + 5);
      if (v12 > 0x7F)
      {
        a2[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = a2 + 3;
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
          a2[2] = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v12;
        v13 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v11, v13, a3);
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::HeaderStorage::ByteSizeLong(TST::HeaderStorage *this)
{
  if (*(this + 16))
  {
    v2 = ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
      v9 = TSP::Reference::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

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

uint64_t TST::HeaderStorage::MergeFrom(TST::HeaderStorage *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HeaderStorage::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HeaderStorage::MergeFrom(uint64_t this, const TST::HeaderStorage *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_221568514(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    v10 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    *(v3 + 48) = v10;
  }

  return this;
}

uint64_t *TST::HeaderStorage::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderStorage::Clear(this);

    return TST::HeaderStorage::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::HeaderStorage::CopyFrom(uint64_t *this, const TST::HeaderStorage *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HeaderStorage::Clear(this);

    return TST::HeaderStorage::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::HeaderStorage::IsInitialized(TST::HeaderStorage *this)
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
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TST::HeaderStorage::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  LODWORD(v5) = this[3].n128_u32[0];
  this[3].n128_u32[0] = a2[3].n128_u32[0];
  a2[3].n128_u32[0] = v5;
  return result;
}

TSP::Reference *TST::DataStore::clear_columnheaders(TST::DataStore *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TST::DataStore::clear_stringtable(TST::DataStore *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TST::DataStore::clear_styletable(TST::DataStore *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Reference *TST::DataStore::clear_formula_table(TST::DataStore *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::Reference *TST::DataStore::clear_formulaerrortable(TST::DataStore *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSP::Reference *TST::DataStore::clear_format_table_pre_bnc(TST::DataStore *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::Reference *TST::DataStore::clear_multiplechoicelistformattable(TST::DataStore *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

TSP::Reference *TST::DataStore::clear_merge_region_map(TST::DataStore *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSP::Reference *TST::DataStore::clear_deprecated_custom_format_table(TST::DataStore *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TSP::Reference *TST::DataStore::clear_rich_text_table(TST::DataStore *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSP::Reference *TST::DataStore::clear_conditionalstyletable(TST::DataStore *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x4000u;
  return result;
}

TSP::Reference *TST::DataStore::clear_commentstoragetable(TST::DataStore *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x8000u;
  return result;
}

TSP::Reference *TST::DataStore::clear_importwarningsettable(TST::DataStore *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10000u;
  return result;
}

TSP::Reference *TST::DataStore::clear_control_cell_spec_table(TST::DataStore *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20000u;
  return result;
}

TSP::Reference *TST::DataStore::clear_format_table(TST::DataStore *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x40000u;
  return result;
}

TST::DataStore *TST::DataStore::DataStore(TST::DataStore *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B3298;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DataStore_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 46) = 0;
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
  *this = &unk_2834B3298;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DataStore_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 46) = 0;
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

TST::DataStore *TST::DataStore::DataStore(TST::DataStore *this, const TST::DataStore *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B3298;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  v7 = *(a2 + 22);
  *(this + 46) = *(a2 + 46);
  *(this + 22) = v7;
  return this;
}

void TST::DataStore::~DataStore(TST::DataStore *this)
{
  sub_2215E6F9C(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::DataStore::~DataStore(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2215E6F9C(uint64_t *result)
{
  if (result != TST::_DataStore_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TST::HeaderStorage::~HeaderStorage(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TST::TileStorage::~TileStorage(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x223DA1450]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x223DA1450]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x223DA1450]();
    }

    v8 = v1[9];
    if (v8)
    {
      TST::TableRBTree::~TableRBTree(v8);
      MEMORY[0x223DA1450]();
    }

    v9 = v1[10];
    if (v9)
    {
      TST::TableRBTree::~TableRBTree(v9);
      MEMORY[0x223DA1450]();
    }

    v10 = v1[11];
    if (v10)
    {
      TSP::Reference::~Reference(v10);
      MEMORY[0x223DA1450]();
    }

    v11 = v1[12];
    if (v11)
    {
      TSP::Reference::~Reference(v11);
      MEMORY[0x223DA1450]();
    }

    v12 = v1[13];
    if (v12)
    {
      TSP::Reference::~Reference(v12);
      MEMORY[0x223DA1450]();
    }

    v13 = v1[14];
    if (v13)
    {
      TSP::Reference::~Reference(v13);
      MEMORY[0x223DA1450]();
    }

    v14 = v1[15];
    if (v14)
    {
      TSP::Reference::~Reference(v14);
      MEMORY[0x223DA1450]();
    }

    v15 = v1[16];
    if (v15)
    {
      TSP::Reference::~Reference(v15);
      MEMORY[0x223DA1450]();
    }

    v16 = v1[17];
    if (v16)
    {
      TSP::Reference::~Reference(v16);
      MEMORY[0x223DA1450]();
    }

    v17 = v1[18];
    if (v17)
    {
      TSP::Reference::~Reference(v17);
      MEMORY[0x223DA1450]();
    }

    v18 = v1[19];
    if (v18)
    {
      TSP::Reference::~Reference(v18);
      MEMORY[0x223DA1450]();
    }

    v19 = v1[20];
    if (v19)
    {
      TSP::Reference::~Reference(v19);
      MEMORY[0x223DA1450]();
    }

    result = v1[21];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TST::DataStore::default_instance(TST::DataStore *this)
{
  if (atomic_load_explicit(scc_info_DataStore_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_DataStore_default_instance_;
}

uint64_t *TST::DataStore::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    this = TST::HeaderStorage::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_34;
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

    goto LABEL_35;
  }

LABEL_34:
  this = TST::TileStorage::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = TSP::Reference::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_37:
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

    goto LABEL_38;
  }

LABEL_36:
  this = TSP::Reference::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_37;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_38:
  this = TST::TableRBTree::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TST::TableRBTree::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v2 & 0x100) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 88));
    if ((v2 & 0x200) == 0)
    {
LABEL_14:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_42;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  this = TSP::Reference::Clear(*(v1 + 96));
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = TSP::Reference::Clear(*(v1 + 104));
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = TSP::Reference::Clear(*(v1 + 112));
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = TSP::Reference::Clear(*(v1 + 120));
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = TSP::Reference::Clear(*(v1 + 128));
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_46:
  this = TSP::Reference::Clear(*(v1 + 136));
  if ((v2 & 0x8000) != 0)
  {
LABEL_20:
    this = TSP::Reference::Clear(*(v1 + 144));
  }

LABEL_21:
  if ((v2 & 0x70000) == 0)
  {
    goto LABEL_26;
  }

  if ((v2 & 0x10000) != 0)
  {
    this = TSP::Reference::Clear(*(v1 + 152));
    if ((v2 & 0x20000) == 0)
    {
LABEL_24:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  this = TSP::Reference::Clear(*(v1 + 160));
  if ((v2 & 0x40000) != 0)
  {
LABEL_25:
    this = TSP::Reference::Clear(*(v1 + 168));
  }

LABEL_26:
  if ((v2 & 0x380000) != 0)
  {
    *(v1 + 184) = 0;
    *(v1 + 176) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::DataStore::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v67 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v67) & 1) == 0)
  {
    while (1)
    {
      v7 = (v67 + 1);
      v8 = *v67;
      if (*v67 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v67, (v9 - 128));
          v67 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_143;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v67 + 2);
      }

      v67 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_129;
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

            v10 = google::protobuf::Arena::CreateMaybeMessage<TST::HeaderStorage>(v11);
            *(a1 + 24) = v10;
            v7 = v67;
          }

          v12 = sub_221702538(a3, v10, v7);
          goto LABEL_126;
        case 2u:
          if (v8 != 18)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 2u;
          v15 = *(a1 + 32);
          if (v15)
          {
            goto LABEL_125;
          }

          v37 = *(a1 + 8);
          if (v37)
          {
            v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
          }

          v38 = MEMORY[0x223DA0390](v37);
          LODWORD(v15) = v38;
          *(a1 + 32) = v38;
          goto LABEL_124;
        case 3u:
          if (v8 != 26)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 4u;
          v28 = *(a1 + 40);
          if (!v28)
          {
            v29 = *(a1 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = google::protobuf::Arena::CreateMaybeMessage<TST::TileStorage>(v29);
            *(a1 + 40) = v28;
            v7 = v67;
          }

          v12 = sub_221702608(a3, v28, v7);
          goto LABEL_126;
        case 4u:
          if (v8 != 34)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 8u;
          v15 = *(a1 + 48);
          if (v15)
          {
            goto LABEL_125;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x223DA0390](v32);
          LODWORD(v15) = v33;
          *(a1 + 48) = v33;
          goto LABEL_124;
        case 5u:
          if (v8 != 42)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x10u;
          v15 = *(a1 + 56);
          if (v15)
          {
            goto LABEL_125;
          }

          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x223DA0390](v22);
          LODWORD(v15) = v23;
          *(a1 + 56) = v23;
          goto LABEL_124;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x20u;
          v15 = *(a1 + 64);
          if (v15)
          {
            goto LABEL_125;
          }

          v43 = *(a1 + 8);
          if (v43)
          {
            v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
          }

          v44 = MEMORY[0x223DA0390](v43);
          LODWORD(v15) = v44;
          *(a1 + 64) = v44;
          goto LABEL_124;
        case 7u:
          if (v8 != 56)
          {
            goto LABEL_129;
          }

          v5 |= 0x80000u;
          v50 = (v7 + 1);
          LODWORD(v51) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_101;
          }

          v52 = *v50;
          v51 = (v51 + (v52 << 7) - 128);
          if (v52 < 0)
          {
            v65 = google::protobuf::internal::VarintParseSlow32(v7, v51);
            v67 = v65;
            *(a1 + 176) = v66;
            if (!v65)
            {
              goto LABEL_143;
            }
          }

          else
          {
            v50 = (v7 + 2);
LABEL_101:
            v67 = v50;
            *(a1 + 176) = v51;
          }

          goto LABEL_127;
        case 8u:
          if (v8 != 64)
          {
            goto LABEL_129;
          }

          v5 |= 0x100000u;
          v34 = (v7 + 1);
          LODWORD(v35) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_66;
          }

          v36 = *v34;
          v35 = (v35 + (v36 << 7) - 128);
          if (v36 < 0)
          {
            v61 = google::protobuf::internal::VarintParseSlow32(v7, v35);
            v67 = v61;
            *(a1 + 180) = v62;
            if (!v61)
            {
              goto LABEL_143;
            }
          }

          else
          {
            v34 = (v7 + 2);
LABEL_66:
            v67 = v34;
            *(a1 + 180) = v35;
          }

          goto LABEL_127;
        case 9u:
          if (v8 != 74)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x40u;
          v26 = *(a1 + 72);
          if (v26)
          {
            goto LABEL_118;
          }

          v57 = *(a1 + 8);
          if (v57)
          {
            v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
          }

          v26 = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree>(v57);
          *(a1 + 72) = v26;
          goto LABEL_117;
        case 0xAu:
          if (v8 != 82)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x80u;
          v26 = *(a1 + 80);
          if (v26)
          {
            goto LABEL_118;
          }

          v27 = *(a1 + 8);
          if (v27)
          {
            v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
          }

          v26 = google::protobuf::Arena::CreateMaybeMessage<TST::TableRBTree>(v27);
          *(a1 + 80) = v26;
LABEL_117:
          v7 = v67;
LABEL_118:
          v12 = sub_2217026D8(a3, v26, v7);
          goto LABEL_126;
        case 0xBu:
          if (v8 != 90)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x100u;
          v15 = *(a1 + 88);
          if (v15)
          {
            goto LABEL_125;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = MEMORY[0x223DA0390](v55);
          LODWORD(v15) = v56;
          *(a1 + 88) = v56;
          goto LABEL_124;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x200u;
          v15 = *(a1 + 96);
          if (v15)
          {
            goto LABEL_125;
          }

          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x223DA0390](v20);
          LODWORD(v15) = v21;
          *(a1 + 96) = v21;
          goto LABEL_124;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x400u;
          v15 = *(a1 + 104);
          if (v15)
          {
            goto LABEL_125;
          }

          v24 = *(a1 + 8);
          if (v24)
          {
            v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
          }

          v25 = MEMORY[0x223DA0390](v24);
          LODWORD(v15) = v25;
          *(a1 + 104) = v25;
          goto LABEL_124;
        case 0xEu:
          if (v8 != 112)
          {
            goto LABEL_129;
          }

          v5 |= 0x200000u;
          v47 = (v7 + 1);
          LODWORD(v48) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_96;
          }

          v49 = *v47;
          v48 = (v48 + (v49 << 7) - 128);
          if (v49 < 0)
          {
            v63 = google::protobuf::internal::VarintParseSlow32(v7, v48);
            v67 = v63;
            *(a1 + 184) = v64;
            if (!v63)
            {
              goto LABEL_143;
            }
          }

          else
          {
            v47 = (v7 + 2);
LABEL_96:
            v67 = v47;
            *(a1 + 184) = v48;
          }

          goto LABEL_127;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x800u;
          v15 = *(a1 + 112);
          if (v15)
          {
            goto LABEL_125;
          }

          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x223DA0390](v18);
          LODWORD(v15) = v19;
          *(a1 + 112) = v19;
          goto LABEL_124;
        case 0x10u:
          if (v8 != 130)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x1000u;
          v15 = *(a1 + 120);
          if (v15)
          {
            goto LABEL_125;
          }

          v30 = *(a1 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v31 = MEMORY[0x223DA0390](v30);
          LODWORD(v15) = v31;
          *(a1 + 120) = v31;
          goto LABEL_124;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x2000u;
          v15 = *(a1 + 128);
          if (v15)
          {
            goto LABEL_125;
          }

          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x223DA0390](v16);
          LODWORD(v15) = v17;
          *(a1 + 128) = v17;
          goto LABEL_124;
        case 0x12u:
          if (v8 != 146)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x4000u;
          v15 = *(a1 + 136);
          if (v15)
          {
            goto LABEL_125;
          }

          v39 = *(a1 + 8);
          if (v39)
          {
            v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
          }

          v40 = MEMORY[0x223DA0390](v39);
          LODWORD(v15) = v40;
          *(a1 + 136) = v40;
          goto LABEL_124;
        case 0x13u:
          if (v8 != 154)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x8000u;
          v15 = *(a1 + 144);
          if (v15)
          {
            goto LABEL_125;
          }

          v53 = *(a1 + 8);
          if (v53)
          {
            v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
          }

          v54 = MEMORY[0x223DA0390](v53);
          LODWORD(v15) = v54;
          *(a1 + 144) = v54;
          goto LABEL_124;
        case 0x14u:
          if (v8 != 162)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x10000u;
          v15 = *(a1 + 152);
          if (v15)
          {
            goto LABEL_125;
          }

          v58 = *(a1 + 8);
          if (v58)
          {
            v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
          }

          v59 = MEMORY[0x223DA0390](v58);
          LODWORD(v15) = v59;
          *(a1 + 152) = v59;
          goto LABEL_124;
        case 0x15u:
          if (v8 != 170)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x20000u;
          v15 = *(a1 + 160);
          if (v15)
          {
            goto LABEL_125;
          }

          v41 = *(a1 + 8);
          if (v41)
          {
            v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
          }

          v42 = MEMORY[0x223DA0390](v41);
          LODWORD(v15) = v42;
          *(a1 + 160) = v42;
          goto LABEL_124;
        case 0x16u:
          if (v8 != 178)
          {
            goto LABEL_129;
          }

          *(a1 + 16) |= 0x40000u;
          v15 = *(a1 + 168);
          if (v15)
          {
            goto LABEL_125;
          }

          v45 = *(a1 + 8);
          if (v45)
          {
            v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
          }

          v46 = MEMORY[0x223DA0390](v45);
          LODWORD(v15) = v46;
          *(a1 + 168) = v46;
LABEL_124:
          v7 = v67;
LABEL_125:
          v12 = sub_22170B7F8(a3, v15, v7);
          goto LABEL_126;
        default:
LABEL_129:
          if (v8)
          {
            v60 = (v8 & 7) == 4;
          }

          else
          {
            v60 = 1;
          }

          if (v60)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_126:
          v67 = v12;
          if (!v12)
          {
LABEL_143:
            v67 = 0;
            goto LABEL_2;
          }

LABEL_127:
          if (sub_221567030(a3, &v67))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v67;
}

unsigned __int8 *TST::DataStore::_InternalSerialize(TST::DataStore *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::HeaderStorage::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
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

    goto LABEL_54;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 5);
  *a2 = 26;
  v19 = *(v18 + 5);
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

  a2 = TST::TileStorage::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_64;
  }

LABEL_54:
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

  a2 = TSP::Reference::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_74;
  }

LABEL_64:
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

  a2 = TSP::Reference::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_84;
  }

LABEL_74:
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

  a2 = TSP::Reference::_InternalSerialize(v36, v38, a3);
  if ((v5 & 0x80000) == 0)
  {
LABEL_8:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

LABEL_95:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v46 = *(this + 45);
    *a2 = 64;
    if (v46 > 0x7F)
    {
      a2[1] = v46 | 0x80;
      v47 = v46 >> 7;
      if (v46 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v47 | 0x80;
          v48 = v47 >> 7;
          ++a2;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
        *(a2 - 1) = v48;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_106;
        }
      }

      else
      {
        a2[2] = v47;
        a2 += 3;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      a2[1] = v46;
      a2 += 2;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_106;
      }
    }

LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_116;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v42 = *(this + 44);
  *a2 = 56;
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v43 = v42 >> 7;
    if (v42 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++a2;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(a2 - 1) = v44;
      if ((v5 & 0x100000) != 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      a2[2] = v43;
      a2 += 3;
      if ((v5 & 0x100000) != 0)
      {
        goto LABEL_95;
      }
    }
  }

  else
  {
    a2[1] = v42;
    a2 += 2;
    if ((v5 & 0x100000) != 0)
    {
      goto LABEL_95;
    }
  }

LABEL_9:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_10;
  }

LABEL_106:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(this + 9);
  *a2 = 74;
  v51 = *(v50 + 10);
  if (v51 > 0x7F)
  {
    a2[1] = v51 | 0x80;
    v53 = v51 >> 7;
    if (v51 >> 14)
    {
      v52 = a2 + 3;
      do
      {
        *(v52 - 1) = v53 | 0x80;
        v54 = v53 >> 7;
        ++v52;
        v55 = v53 >> 14;
        v53 >>= 7;
      }

      while (v55);
      *(v52 - 1) = v54;
    }

    else
    {
      a2[2] = v53;
      v52 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v51;
    v52 = a2 + 2;
  }

  a2 = TST::TableRBTree::_InternalSerialize(v50, v52, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_126;
  }

LABEL_116:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v56 = *(this + 10);
  *a2 = 82;
  v57 = *(v56 + 10);
  if (v57 > 0x7F)
  {
    a2[1] = v57 | 0x80;
    v59 = v57 >> 7;
    if (v57 >> 14)
    {
      v58 = a2 + 3;
      do
      {
        *(v58 - 1) = v59 | 0x80;
        v60 = v59 >> 7;
        ++v58;
        v61 = v59 >> 14;
        v59 >>= 7;
      }

      while (v61);
      *(v58 - 1) = v60;
    }

    else
    {
      a2[2] = v59;
      v58 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v57;
    v58 = a2 + 2;
  }

  a2 = TST::TableRBTree::_InternalSerialize(v56, v58, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_136;
  }

LABEL_126:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v62 = *(this + 11);
  *a2 = 90;
  v63 = *(v62 + 5);
  if (v63 > 0x7F)
  {
    a2[1] = v63 | 0x80;
    v65 = v63 >> 7;
    if (v63 >> 14)
    {
      v64 = a2 + 3;
      do
      {
        *(v64 - 1) = v65 | 0x80;
        v66 = v65 >> 7;
        ++v64;
        v67 = v65 >> 14;
        v65 >>= 7;
      }

      while (v67);
      *(v64 - 1) = v66;
    }

    else
    {
      a2[2] = v65;
      v64 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v63;
    v64 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v62, v64, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_146;
  }

LABEL_136:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v68 = *(this + 12);
  *a2 = 98;
  v69 = *(v68 + 5);
  if (v69 > 0x7F)
  {
    a2[1] = v69 | 0x80;
    v71 = v69 >> 7;
    if (v69 >> 14)
    {
      v70 = a2 + 3;
      do
      {
        *(v70 - 1) = v71 | 0x80;
        v72 = v71 >> 7;
        ++v70;
        v73 = v71 >> 14;
        v71 >>= 7;
      }

      while (v73);
      *(v70 - 1) = v72;
    }

    else
    {
      a2[2] = v71;
      v70 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v69;
    v70 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v68, v70, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_14:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_15;
    }

LABEL_156:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v80 = *(this + 46);
    *a2 = 112;
    if (v80 > 0x7F)
    {
      a2[1] = v80 | 0x80;
      v81 = v80 >> 7;
      if (v80 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v81 | 0x80;
          v82 = v81 >> 7;
          ++a2;
          v83 = v81 >> 14;
          v81 >>= 7;
        }

        while (v83);
        *(a2 - 1) = v82;
        if ((v5 & 0x800) != 0)
        {
          goto LABEL_167;
        }
      }

      else
      {
        a2[2] = v81;
        a2 += 3;
        if ((v5 & 0x800) != 0)
        {
          goto LABEL_167;
        }
      }
    }

    else
    {
      a2[1] = v80;
      a2 += 2;
      if ((v5 & 0x800) != 0)
      {
        goto LABEL_167;
      }
    }

LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_177;
  }

LABEL_146:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v74 = *(this + 13);
  *a2 = 106;
  v75 = *(v74 + 5);
  if (v75 > 0x7F)
  {
    a2[1] = v75 | 0x80;
    v77 = v75 >> 7;
    if (v75 >> 14)
    {
      v76 = a2 + 3;
      do
      {
        *(v76 - 1) = v77 | 0x80;
        v78 = v77 >> 7;
        ++v76;
        v79 = v77 >> 14;
        v77 >>= 7;
      }

      while (v79);
      *(v76 - 1) = v78;
    }

    else
    {
      a2[2] = v77;
      v76 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v75;
    v76 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v74, v76, a3);
  if ((v5 & 0x200000) != 0)
  {
    goto LABEL_156;
  }

LABEL_15:
  if ((v5 & 0x800) == 0)
  {
    goto LABEL_16;
  }

LABEL_167:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v84 = *(this + 14);
  *a2 = 122;
  v85 = *(v84 + 5);
  if (v85 > 0x7F)
  {
    a2[1] = v85 | 0x80;
    v87 = v85 >> 7;
    if (v85 >> 14)
    {
      v86 = a2 + 3;
      do
      {
        *(v86 - 1) = v87 | 0x80;
        v88 = v87 >> 7;
        ++v86;
        v89 = v87 >> 14;
        v87 >>= 7;
      }

      while (v89);
      *(v86 - 1) = v88;
    }

    else
    {
      a2[2] = v87;
      v86 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v85;
    v86 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v84, v86, a3);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
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

  v90 = *(this + 15);
  *a2 = 386;
  v91 = *(v90 + 5);
  if (v91 > 0x7F)
  {
    a2[2] = v91 | 0x80;
    v93 = v91 >> 7;
    if (v91 >> 14)
    {
      v92 = a2 + 4;
      do
      {
        *(v92 - 1) = v93 | 0x80;
        v94 = v93 >> 7;
        ++v92;
        v95 = v93 >> 14;
        v93 >>= 7;
      }

      while (v95);
      *(v92 - 1) = v94;
    }

    else
    {
      a2[3] = v93;
      v92 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v91;
    v92 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v90, v92, a3);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
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

  v96 = *(this + 16);
  *a2 = 394;
  v97 = *(v96 + 5);
  if (v97 > 0x7F)
  {
    a2[2] = v97 | 0x80;
    v99 = v97 >> 7;
    if (v97 >> 14)
    {
      v98 = a2 + 4;
      do
      {
        *(v98 - 1) = v99 | 0x80;
        v100 = v99 >> 7;
        ++v98;
        v101 = v99 >> 14;
        v99 >>= 7;
      }

      while (v101);
      *(v98 - 1) = v100;
    }

    else
    {
      a2[3] = v99;
      v98 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v97;
    v98 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v96, v98, a3);
  if ((v5 & 0x4000) == 0)
  {
LABEL_19:
    if ((v5 & 0x8000) == 0)
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

  v102 = *(this + 17);
  *a2 = 402;
  v103 = *(v102 + 5);
  if (v103 > 0x7F)
  {
    a2[2] = v103 | 0x80;
    v105 = v103 >> 7;
    if (v103 >> 14)
    {
      v104 = a2 + 4;
      do
      {
        *(v104 - 1) = v105 | 0x80;
        v106 = v105 >> 7;
        ++v104;
        v107 = v105 >> 14;
        v105 >>= 7;
      }

      while (v107);
      *(v104 - 1) = v106;
    }

    else
    {
      a2[3] = v105;
      v104 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v103;
    v104 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v102, v104, a3);
  if ((v5 & 0x8000) == 0)
  {
LABEL_20:
    if ((v5 & 0x10000) == 0)
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

  v108 = *(this + 18);
  *a2 = 410;
  v109 = *(v108 + 5);
  if (v109 > 0x7F)
  {
    a2[2] = v109 | 0x80;
    v111 = v109 >> 7;
    if (v109 >> 14)
    {
      v110 = a2 + 4;
      do
      {
        *(v110 - 1) = v111 | 0x80;
        v112 = v111 >> 7;
        ++v110;
        v113 = v111 >> 14;
        v111 >>= 7;
      }

      while (v113);
      *(v110 - 1) = v112;
    }

    else
    {
      a2[3] = v111;
      v110 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v109;
    v110 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v108, v110, a3);
  if ((v5 & 0x10000) == 0)
  {
LABEL_21:
    if ((v5 & 0x20000) == 0)
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

  v114 = *(this + 19);
  *a2 = 418;
  v115 = *(v114 + 5);
  if (v115 > 0x7F)
  {
    a2[2] = v115 | 0x80;
    v117 = v115 >> 7;
    if (v115 >> 14)
    {
      v116 = a2 + 4;
      do
      {
        *(v116 - 1) = v117 | 0x80;
        v118 = v117 >> 7;
        ++v116;
        v119 = v117 >> 14;
        v117 >>= 7;
      }

      while (v119);
      *(v116 - 1) = v118;
    }

    else
    {
      a2[3] = v117;
      v116 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v115;
    v116 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v114, v116, a3);
  if ((v5 & 0x20000) == 0)
  {
LABEL_22:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_247;
    }

    goto LABEL_237;
  }

LABEL_227:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v120 = *(this + 20);
  *a2 = 426;
  v121 = *(v120 + 5);
  if (v121 > 0x7F)
  {
    a2[2] = v121 | 0x80;
    v123 = v121 >> 7;
    if (v121 >> 14)
    {
      v122 = a2 + 4;
      do
      {
        *(v122 - 1) = v123 | 0x80;
        v124 = v123 >> 7;
        ++v122;
        v125 = v123 >> 14;
        v123 >>= 7;
      }

      while (v125);
      *(v122 - 1) = v124;
    }

    else
    {
      a2[3] = v123;
      v122 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v121;
    v122 = a2 + 3;
  }

  a2 = TSP::Reference::_InternalSerialize(v120, v122, a3);
  if ((v5 & 0x40000) != 0)
  {
LABEL_237:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v126 = *(this + 21);
    *a2 = 434;
    v127 = *(v126 + 5);
    if (v127 > 0x7F)
    {
      a2[2] = v127 | 0x80;
      v129 = v127 >> 7;
      if (v127 >> 14)
      {
        v128 = a2 + 4;
        do
        {
          *(v128 - 1) = v129 | 0x80;
          v130 = v129 >> 7;
          ++v128;
          v131 = v129 >> 14;
          v129 >>= 7;
        }

        while (v131);
        *(v128 - 1) = v130;
      }

      else
      {
        a2[3] = v129;
        v128 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v127;
      v128 = a2 + 3;
    }

    a2 = TSP::Reference::_InternalSerialize(v126, v128, a3);
  }

LABEL_247:
  v132 = *(this + 1);
  if ((v132 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v132 & 0xFFFFFFFFFFFFFFFELL) + 8);
}