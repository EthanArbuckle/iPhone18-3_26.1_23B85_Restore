uint64_t TSCH::ChartUIState::_InternalSerialize(TSCH::ChartUIState *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 6);
    *v4 = 10;
    v11 = *(v10 + 5);
    if (v11 > 0x7F)
    {
      v4[1] = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v4 + 3;
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
        v4[2] = v13;
        v12 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v11;
      v12 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v10, v12, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_35:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v20 = *(this + 15);
      *v4 = 24;
      if (v20 > 0x7F)
      {
        v4[1] = v20 | 0x80;
        v21 = v20 >> 7;
        if (v20 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v21 | 0x80;
            v22 = v21 >> 7;
            ++v4;
            v23 = v21 >> 14;
            v21 >>= 7;
          }

          while (v23);
          *(v4 - 1) = v22;
          if ((v6 & 8) != 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v4[2] = v21;
          v4 += 3;
          if ((v6 & 8) != 0)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        v4[1] = v20;
        v4 += 2;
        if ((v6 & 8) != 0)
        {
          goto LABEL_46;
        }
      }

LABEL_5:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_57:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v28 = *(this + 17);
      *v4 = 40;
      if (v28 > 0x7F)
      {
        v4[1] = v28 | 0x80;
        v29 = v28 >> 7;
        if (v28 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v29 | 0x80;
            v30 = v29 >> 7;
            ++v4;
            v31 = v29 >> 14;
            v29 >>= 7;
          }

          while (v31);
          *(v4 - 1) = v30;
          if ((v6 & 0x40) != 0)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v4[2] = v29;
          v4 += 3;
          if ((v6 & 0x40) != 0)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        v4[1] = v28;
        v4 += 2;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_68;
        }
      }

LABEL_7:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_71;
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

  v16 = *(this + 14);
  *v4 = 16;
  if (v16 > 0x7F)
  {
    v4[1] = v16 | 0x80;
    v17 = v16 >> 7;
    if (v16 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++v4;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(v4 - 1) = v18;
      if ((v6 & 4) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v4[2] = v17;
      v4 += 3;
      if ((v6 & 4) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v4[1] = v16;
    v4 += 2;
    if ((v6 & 4) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v24 = *(this + 16);
  *v4 = 32;
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v25 = v24 >> 7;
    if (v24 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v25 | 0x80;
        v26 = v25 >> 7;
        ++v4;
        v27 = v25 >> 14;
        v25 >>= 7;
      }

      while (v27);
      *(v4 - 1) = v26;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v4[2] = v25;
      v4 += 3;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_57;
      }
    }
  }

  else
  {
    v4[1] = v24;
    v4 += 2;
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_57;
    }
  }

LABEL_6:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_7;
  }

LABEL_68:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(this + 76);
  *v4 = 48;
  v4[1] = v32;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_71:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v33 = *(this + 18);
  *v4 = 56;
  if (v33 > 0x7F)
  {
    v4[1] = v33 | 0x80;
    v34 = v33 >> 7;
    if (v33 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v34 | 0x80;
        v35 = v34 >> 7;
        ++v4;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
      *(v4 - 1) = v35;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4[2] = v34;
      v4 += 3;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
    v4[1] = v33;
    v4 += 2;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_9:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 77);
  *v4 = 64;
  v4[1] = v7;
  v4 += 2;
LABEL_12:
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 10000, 0x20000000, v4, a3);
  v9 = *(this + 1);
  if (v9)
  {

    return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

uint64_t TSCH::ChartUIState::ByteSizeLong(TSCH::ChartUIState *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 10);
  if (v3)
  {
    if (v3)
    {
      v8 = TSP::Reference::ByteSizeLong(*(this + 6));
      v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    v9 = *(this + 14);
    if (v9 < 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v10;
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_20:
    v11 = *(this + 15);
    if (v11 < 0)
    {
      v12 = 11;
    }

    else
    {
      v12 = ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v12;
    if ((v3 & 8) == 0)
    {
LABEL_6:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_28;
    }

LABEL_24:
    v13 = *(this + 16);
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v14;
    if ((v3 & 0x10) == 0)
    {
LABEL_7:
      if ((v3 & 0x20) == 0)
      {
LABEL_12:
        v2 += ((v3 >> 6) & 2) + ((v3 >> 5) & 2);
        goto LABEL_13;
      }

LABEL_8:
      v4 = *(this + 18);
      v5 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v4 >= 0)
      {
        v6 = v5;
      }

      else
      {
        v6 = 11;
      }

      v2 += v6;
      goto LABEL_12;
    }

LABEL_28:
    v15 = *(this + 17);
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v16;
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_13:
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

uint64_t TSCH::ChartUIState::MergeFrom(TSCH::ChartUIState *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartUIState::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartUIState::MergeFrom(TSCH::ChartUIState *this, const TSCH::ChartUIState *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 10);
  if (v6)
  {
    if (v6)
    {
      *(this + 10) |= 1u;
      v7 = *(this + 6);
      if (!v7)
      {
        v8 = *(this + 1);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C97B90](v8);
        *(this + 6) = v7;
      }

      if (*(a2 + 6))
      {
        v9 = *(a2 + 6);
      }

      else
      {
        v9 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v7, v9);
      if ((v6 & 2) == 0)
      {
LABEL_6:
        if ((v6 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_24;
      }
    }

    else if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 14) = *(a2 + 14);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(this + 15) = *(a2 + 15);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(this + 16) = *(a2 + 16);
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(this + 17) = *(a2 + 17);
    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(this + 18) = *(a2 + 18);
    if ((v6 & 0x40) == 0)
    {
LABEL_11:
      if ((v6 & 0x80) == 0)
      {
LABEL_13:
        *(this + 10) |= v6;
        return result;
      }

LABEL_12:
      *(this + 77) = *(a2 + 77);
      goto LABEL_13;
    }

LABEL_28:
    *(this + 76) = *(a2 + 76);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return result;
}

TSCH::ChartUIState *TSCH::ChartUIState::CopyFrom(TSCH::ChartUIState *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartUIState::Clear(this);

    return TSCH::ChartUIState::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::ChartUIState *TSCH::ChartUIState::CopyFrom(TSCH::ChartUIState *this, const TSCH::ChartUIState *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartUIState::Clear(this);

    return TSCH::ChartUIState::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::ChartUIState::IsInitialized(TSCH::ChartUIState *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    if ((*(this + 40) & 1) == 0)
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

__n128 TSCH::ChartUIState::InternalSwap(__n128 *this, __n128 *a2)
{
  google::protobuf::internal::ExtensionSet::Swap(&this[1], &a2[1]);
  sub_2763948BC(&this->n128_i64[1], &a2->n128_i64[1]);
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
  LODWORD(v8) = this[4].n128_u32[2];
  this[4].n128_u32[2] = a2[4].n128_u32[2];
  a2[4].n128_u32[2] = v8;
  LOWORD(v8) = this[4].n128_u16[6];
  this[4].n128_u16[6] = a2[4].n128_u16[6];
  a2[4].n128_u16[6] = v8;
  return result;
}

uint64_t TSCH::ChartUIStateMultiDataIndexUpgrade::ChartUIStateMultiDataIndexUpgrade(uint64_t result, uint64_t a2)
{
  *result = &unk_2885213E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_2885213E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSCH::ChartUIStateMultiDataIndexUpgrade *TSCH::ChartUIStateMultiDataIndexUpgrade::ChartUIStateMultiDataIndexUpgrade(TSCH::ChartUIStateMultiDataIndexUpgrade *this, const TSCH::ChartUIStateMultiDataIndexUpgrade *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_2885213E8;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCH::ChartUIStateMultiDataIndexUpgrade::~ChartUIStateMultiDataIndexUpgrade(TSCH::ChartUIStateMultiDataIndexUpgrade *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartUIStateMultiDataIndexUpgrade::default_instance(TSCH::ChartUIStateMultiDataIndexUpgrade *this)
{
  if (atomic_load_explicit(scc_info_ChartUIStateMultiDataIndexUpgrade_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartUIStateMultiDataIndexUpgrade_default_instance_;
}

uint64_t *TSCH::ChartUIStateMultiDataIndexUpgrade::Clear(TSCH::ChartUIStateMultiDataIndexUpgrade *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t TSCH::ChartUIStateMultiDataIndexUpgrade::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TSCH::ChartUIStateMultiDataIndexUpgrade::ByteSizeLong(TSCH::ChartUIStateMultiDataIndexUpgrade *this)
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

void *TSCH::ChartUIStateMultiDataIndexUpgrade::MergeFrom(TSCH::ChartUIStateMultiDataIndexUpgrade *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSCH::ChartUIStateMultiDataIndexUpgrade::MergeFrom(uint64_t this, const TSCH::ChartUIStateMultiDataIndexUpgrade *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_2763D4F88((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSCH::ChartUIStateMultiDataIndexUpgrade::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::ChartUIStateMultiDataIndexUpgrade::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCH::ChartUIStateMultiDataIndexUpgrade::CopyFrom(uint64_t *this, const TSCH::ChartUIStateMultiDataIndexUpgrade *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_2763D4FD4(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TSCH::ChartFormatStructExtensions::ChartFormatStructExtensions(uint64_t result, uint64_t a2)
{
  *result = &unk_288521498;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288521498;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSCH::ChartFormatStructExtensions *TSCH::ChartFormatStructExtensions::ChartFormatStructExtensions(TSCH::ChartFormatStructExtensions *this, const TSCH::ChartFormatStructExtensions *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288521498;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCH::ChartFormatStructExtensions::~ChartFormatStructExtensions(TSCH::ChartFormatStructExtensions *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartFormatStructExtensions::default_instance(TSCH::ChartFormatStructExtensions *this)
{
  if (atomic_load_explicit(scc_info_ChartFormatStructExtensions_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartFormatStructExtensions_default_instance_;
}

uint64_t *TSCH::ChartFormatStructExtensions::Clear(TSCH::ChartFormatStructExtensions *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t TSCH::ChartFormatStructExtensions::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TSCH::ChartFormatStructExtensions::ByteSizeLong(TSCH::ChartFormatStructExtensions *this)
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

void *TSCH::ChartFormatStructExtensions::MergeFrom(TSCH::ChartFormatStructExtensions *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSCH::ChartFormatStructExtensions::MergeFrom(uint64_t this, const TSCH::ChartFormatStructExtensions *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_2763D4F88((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSCH::ChartFormatStructExtensions::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::ChartFormatStructExtensions::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCH::ChartFormatStructExtensions::CopyFrom(uint64_t *this, const TSCH::ChartFormatStructExtensions *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_2763D4FD4(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

TSP::Reference *TSCH::ChartReferenceLineNonStyleItem::clear_non_style(TSCH::ChartReferenceLineNonStyleItem *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUID *TSCH::ChartReferenceLineNonStyleItem::clear_uuid(TSCH::ChartReferenceLineNonStyleItem *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCH::ChartReferenceLineNonStyleItem *TSCH::ChartReferenceLineNonStyleItem::ChartReferenceLineNonStyleItem(TSCH::ChartReferenceLineNonStyleItem *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521548;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartReferenceLineNonStyleItem_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_288521548;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartReferenceLineNonStyleItem_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCH::ChartReferenceLineNonStyleItem *TSCH::ChartReferenceLineNonStyleItem::ChartReferenceLineNonStyleItem(TSCH::ChartReferenceLineNonStyleItem *this, const TSCH::ChartReferenceLineNonStyleItem *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521548;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2763D4F88(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSCH::ChartReferenceLineNonStyleItem::~ChartReferenceLineNonStyleItem(TSCH::ChartReferenceLineNonStyleItem *this)
{
  if (this != &TSCH::_ChartReferenceLineNonStyleItem_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(this + 1);
}

{
  TSCH::ChartReferenceLineNonStyleItem::~ChartReferenceLineNonStyleItem(this);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartReferenceLineNonStyleItem::default_instance(TSCH::ChartReferenceLineNonStyleItem *this)
{
  if (atomic_load_explicit(scc_info_ChartReferenceLineNonStyleItem_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartReferenceLineNonStyleItem_default_instance_;
}

uint64_t *TSCH::ChartReferenceLineNonStyleItem::Clear(uint64_t *this)
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
      this = TSP::UUID::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartReferenceLineNonStyleItem::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_2763D4D98(a3, &v20) & 1) == 0)
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

        v13 = MEMORY[0x277C97B40](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v20;
      }

      v10 = sub_2764AE3C0(a3, v11, v5);
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
          return v20;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
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

        v16 = MEMORY[0x277C97B90](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_2764ADCBC(a3, v14, v5);
    }

LABEL_30:
    v20 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *TSCH::ChartReferenceLineNonStyleItem::_InternalSerialize(TSCH::ChartReferenceLineNonStyleItem *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
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

    a2 = TSP::UUID::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartReferenceLineNonStyleItem::RequiredFieldsByteSizeFallback(TSCH::ChartReferenceLineNonStyleItem *this)
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

  v4 = TSP::Reference::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::UUID::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCH::ChartReferenceLineNonStyleItem::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCH::ChartReferenceLineNonStyleItem::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Reference::ByteSizeLong(this[3]);
    v3 = TSP::UUID::ByteSizeLong(this[4]);
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

uint64_t TSCH::ChartReferenceLineNonStyleItem::MergeFrom(TSCH::ChartReferenceLineNonStyleItem *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartReferenceLineNonStyleItem::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartReferenceLineNonStyleItem::MergeFrom(uint64_t this, const TSCH::ChartReferenceLineNonStyleItem *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C97B90](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277C97B40](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D809E0];
      }

      return TSP::UUID::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCH::ChartReferenceLineNonStyleItem::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartReferenceLineNonStyleItem::Clear(this);

    return TSCH::ChartReferenceLineNonStyleItem::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartReferenceLineNonStyleItem::CopyFrom(uint64_t *this, const TSCH::ChartReferenceLineNonStyleItem *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartReferenceLineNonStyleItem::Clear(this);

    return TSCH::ChartReferenceLineNonStyleItem::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::ChartReferenceLineNonStyleItem::IsInitialized(TSCH::ChartReferenceLineNonStyleItem *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::UUID::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCH::ChartReferenceLineNonStyleItem::InternalSwap(TSCH::ChartReferenceLineNonStyleItem *this, TSCH::ChartReferenceLineNonStyleItem *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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

TSCH::ChartAxisReferenceLineNonStylesArchive *TSCH::ChartAxisReferenceLineNonStylesArchive::ChartAxisReferenceLineNonStylesArchive(TSCH::ChartAxisReferenceLineNonStylesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885215F8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ChartAxisReferenceLineNonStylesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCH::ChartAxisReferenceLineNonStylesArchive *TSCH::ChartAxisReferenceLineNonStylesArchive::ChartAxisReferenceLineNonStylesArchive(TSCH::ChartAxisReferenceLineNonStylesArchive *this, const TSCH::ChartAxisReferenceLineNonStylesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885215F8;
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
    sub_2763F9308(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2763D4F88(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_2763EF540(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v2, 0x1081C404FE48876);
  sub_2763F9284((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCH::ChartAxisReferenceLineNonStylesArchive::~ChartAxisReferenceLineNonStylesArchive(TSCH::ChartAxisReferenceLineNonStylesArchive *this)
{
  if (this != &TSCH::_ChartAxisReferenceLineNonStylesArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C404FE48876);
    }
  }

  sub_2763941F4(this + 1);
  sub_2763F9284(this + 3);
}

{
  TSCH::ChartAxisReferenceLineNonStylesArchive::~ChartAxisReferenceLineNonStylesArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartAxisReferenceLineNonStylesArchive::default_instance(TSCH::ChartAxisReferenceLineNonStylesArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartAxisReferenceLineNonStylesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartAxisReferenceLineNonStylesArchive_default_instance_;
}

uint64_t *TSCH::ChartAxisReferenceLineNonStylesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCH::ChartReferenceLineNonStyleItem::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSCH::ChartAxisIDArchive::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartAxisReferenceLineNonStylesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v24))
    {
      return v24;
    }

    v5 = (v24 + 1);
    v6 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v24 + 2);
LABEL_6:
      v24 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v22;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = (v5 - 1);
      while (1)
      {
        v12 = (v11 + 1);
        v24 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 32);
        v14 = *v13;
        if (v18 < *v13)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v13[2 * v18 + 2];
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartReferenceLineNonStyleItem>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_2764AB0C4(a3, v15, v12);
        v24 = v11;
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
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_2764AF8E0(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *TSCH::ChartAxisReferenceLineNonStylesArchive::_InternalSerialize(TSCH::ChartAxisReferenceLineNonStylesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCH::ChartAxisIDArchive::_InternalSerialize(v5, v7, a3);
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

      a2 = TSCH::ChartReferenceLineNonStyleItem::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartAxisReferenceLineNonStylesArchive::ByteSizeLong(TSCH::ChartAxisIDArchive **this)
{
  if (this[2])
  {
    v3 = TSCH::ChartAxisIDArchive::ByteSizeLong(this[6]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSCH::ChartReferenceLineNonStyleItem::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
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

uint64_t TSCH::ChartAxisReferenceLineNonStylesArchive::MergeFrom(TSCH::ChartAxisReferenceLineNonStylesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartAxisReferenceLineNonStylesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartAxisReferenceLineNonStylesArchive::MergeFrom(uint64_t this, const TSCH::ChartAxisReferenceLineNonStylesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2763F9308(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &TSCH::_ChartAxisIDArchive_default_instance_;
    }

    return TSCH::ChartAxisIDArchive::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSCH::ChartAxisReferenceLineNonStylesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartAxisReferenceLineNonStylesArchive::Clear(this);

    return TSCH::ChartAxisReferenceLineNonStylesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartAxisReferenceLineNonStylesArchive::CopyFrom(uint64_t *this, const TSCH::ChartAxisReferenceLineNonStylesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartAxisReferenceLineNonStylesArchive::Clear(this);

    return TSCH::ChartAxisReferenceLineNonStylesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCH::ChartAxisReferenceLineNonStylesArchive::IsInitialized(TSCH::ChartAxisReferenceLineNonStylesArchive *this)
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
    IsInitialized = TSCH::ChartReferenceLineNonStyleItem::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TSCH::ChartAxisReferenceLineNonStylesArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2763948BC(&this->n128_i64[1], &a2->n128_i64[1]);
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

TSP::SparseReferenceArray *TSCH::ChartAxisReferenceLineStylesArchive::clear_reference_line_styles(TSCH::ChartAxisReferenceLineStylesArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCH::ChartAxisReferenceLineStylesArchive *TSCH::ChartAxisReferenceLineStylesArchive::ChartAxisReferenceLineStylesArchive(TSCH::ChartAxisReferenceLineStylesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885216A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartAxisReferenceLineStylesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2885216A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartAxisReferenceLineStylesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCH::ChartAxisReferenceLineStylesArchive *TSCH::ChartAxisReferenceLineStylesArchive::ChartAxisReferenceLineStylesArchive(TSCH::ChartAxisReferenceLineStylesArchive *this, const TSCH::ChartAxisReferenceLineStylesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885216A8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2763D4F88(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSCH::ChartAxisReferenceLineStylesArchive::~ChartAxisReferenceLineStylesArchive(TSCH::ChartAxisReferenceLineStylesArchive *this)
{
  if (this != &TSCH::_ChartAxisReferenceLineStylesArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C404FE48876);
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v3, 0x10A1C40D5D207CCLL);
    }
  }

  sub_2763941F4(this + 1);
}

{
  TSCH::ChartAxisReferenceLineStylesArchive::~ChartAxisReferenceLineStylesArchive(this);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartAxisReferenceLineStylesArchive::default_instance(TSCH::ChartAxisReferenceLineStylesArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartAxisReferenceLineStylesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartAxisReferenceLineStylesArchive_default_instance_;
}

uint64_t *TSCH::ChartAxisReferenceLineStylesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCH::ChartAxisIDArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::SparseReferenceArray::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartAxisReferenceLineStylesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_2763D4D98(a3, &v19) & 1) == 0)
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

        v13 = MEMORY[0x277C97B20](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v19;
      }

      v10 = sub_2764B09E4(a3, v11, v5);
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
          sub_2763D4E10((a1 + 8));
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v15);
        *(a1 + 24) = v14;
        v5 = v19;
      }

      v10 = sub_2764AF8E0(a3, v14, v5);
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

unsigned __int8 *TSCH::ChartAxisReferenceLineStylesArchive::_InternalSerialize(TSCH::ChartAxisReferenceLineStylesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCH::ChartAxisIDArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
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

    a2 = TSP::SparseReferenceArray::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartAxisReferenceLineStylesArchive::ByteSizeLong(TSCH::ChartAxisReferenceLineStylesArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSCH::ChartAxisIDArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 4));
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

uint64_t TSCH::ChartAxisReferenceLineStylesArchive::MergeFrom(TSCH::ChartAxisReferenceLineStylesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartAxisReferenceLineStylesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartAxisReferenceLineStylesArchive::MergeFrom(uint64_t this, const TSCH::ChartAxisReferenceLineStylesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCH::_ChartAxisIDArchive_default_instance_;
      }

      this = TSCH::ChartAxisIDArchive::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277C97B20](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80A68];
      }

      return TSP::SparseReferenceArray::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCH::ChartAxisReferenceLineStylesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartAxisReferenceLineStylesArchive::Clear(this);

    return TSCH::ChartAxisReferenceLineStylesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartAxisReferenceLineStylesArchive::CopyFrom(uint64_t *this, const TSCH::ChartAxisReferenceLineStylesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartAxisReferenceLineStylesArchive::Clear(this);

    return TSCH::ChartAxisReferenceLineStylesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::ChartAxisReferenceLineStylesArchive::IsInitialized(TSCH::ChartAxisReferenceLineStylesArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if ((v1 & 2) == 0)
  {
    return 1;
  }

  result = TSP::SparseReferenceArray::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCH::ChartAxisReferenceLineStylesArchive::InternalSwap(TSCH::ChartAxisReferenceLineStylesArchive *this, TSCH::ChartAxisReferenceLineStylesArchive *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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

TSP::Reference *TSCH::ChartReferenceLinesArchive::clear_theme_preset_reference_line_style(TSCH::ChartReferenceLinesArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCH::ChartReferenceLinesArchive *TSCH::ChartReferenceLinesArchive::ChartReferenceLinesArchive(TSCH::ChartReferenceLinesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521758;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_ChartReferenceLinesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  return this;
}

void sub_2763F0A98(_Unwind_Exception *a1)
{
  sub_2763F944C(v2);
  sub_2763F93C8(v1);
  _Unwind_Resume(a1);
}

TSCH::ChartReferenceLinesArchive *TSCH::ChartReferenceLinesArchive::ChartReferenceLinesArchive(TSCH::ChartReferenceLinesArchive *this, const TSCH::ChartReferenceLinesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521758;
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
    sub_2763F94D0(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2763F9590(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_2763D4F88(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 9) = 0;
  return this;
}

void sub_2763F0C48(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v3, 0x1081C407D3F2757);
  sub_2763F944C(v2);
  sub_2763F93C8((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCH::ChartReferenceLinesArchive::~ChartReferenceLinesArchive(TSCH::ChartReferenceLinesArchive *this)
{
  if (this != &TSCH::_ChartReferenceLinesArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(this + 1);
  sub_2763F944C(this + 6);
  sub_2763F93C8(this + 3);
}

{
  TSCH::ChartReferenceLinesArchive::~ChartReferenceLinesArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartReferenceLinesArchive::default_instance(TSCH::ChartReferenceLinesArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartReferenceLinesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartReferenceLinesArchive_default_instance_;
}

uint64_t *TSCH::ChartReferenceLinesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCH::ChartAxisReferenceLineNonStylesArchive::Clear(v4);
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
      this = TSCH::ChartAxisReferenceLineStylesArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_2763D4FD4(v8);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartReferenceLinesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v34))
    {
      return v34;
    }

    v5 = (v34 + 1);
    v6 = *v34;
    if ((*v34 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v34 + 2);
LABEL_6:
      v34 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v7 - 128));
    v34 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v32;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 != 3)
    {
      if (v8 != 2)
      {
        if (v8 != 1 || v6 != 10)
        {
          goto LABEL_13;
        }

        v23 = (v5 - 1);
        while (1)
        {
          v24 = (v23 + 1);
          v34 = (v23 + 1);
          v25 = *(a1 + 40);
          if (!v25)
          {
            goto LABEL_43;
          }

          v30 = *(a1 + 32);
          v26 = *v25;
          if (v30 < *v25)
          {
            *(a1 + 32) = v30 + 1;
            v27 = *&v25[2 * v30 + 2];
            goto LABEL_47;
          }

          if (v26 == *(a1 + 36))
          {
LABEL_43:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v25 = *(a1 + 40);
            v26 = *v25;
          }

          *v25 = v26 + 1;
          v27 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineNonStylesArchive>(*(a1 + 24));
          v28 = *(a1 + 32);
          v29 = *(a1 + 40) + 8 * v28;
          *(a1 + 32) = v28 + 1;
          *(v29 + 8) = v27;
          v24 = v34;
LABEL_47:
          v23 = sub_2764AB194(a3, v27, v24);
          v34 = v23;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 10)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 18)
      {
        goto LABEL_13;
      }

      v12 = (v5 - 1);
      while (1)
      {
        v13 = (v12 + 1);
        v34 = (v12 + 1);
        v14 = *(a1 + 64);
        if (!v14)
        {
          goto LABEL_23;
        }

        v19 = *(a1 + 56);
        v15 = *v14;
        if (v19 < *v14)
        {
          *(a1 + 56) = v19 + 1;
          v16 = *&v14[2 * v19 + 2];
          goto LABEL_27;
        }

        if (v15 == *(a1 + 60))
        {
LABEL_23:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v14 = *(a1 + 64);
          v15 = *v14;
        }

        *v14 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineStylesArchive>(*(a1 + 48));
        v17 = *(a1 + 56);
        v18 = *(a1 + 64) + 8 * v17;
        *(a1 + 56) = v17 + 1;
        *(v18 + 8) = v16;
        v13 = v34;
LABEL_27:
        v12 = sub_2764AB264(a3, v16, v13);
        v34 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 == 26)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 72);
      if (!v20)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x277C97B90](v21);
        LODWORD(v20) = v22;
        *(a1 + 72) = v22;
        v5 = v34;
      }

      v11 = sub_2764ADCBC(a3, v20, v5);
      goto LABEL_39;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_39:
    v34 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v34;
}

unsigned __int8 *TSCH::ChartReferenceLinesArchive::_InternalSerialize(TSCH::ChartReferenceLinesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSCH::ChartAxisReferenceLineNonStylesArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 14);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 8) + 8 * j + 8);
      *a2 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = a2 + 3;
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
          a2[2] = v18;
          v17 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v16;
        v17 = a2 + 2;
      }

      a2 = TSCH::ChartAxisReferenceLineStylesArchive::_InternalSerialize(v15, v17, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(this + 9);
    *a2 = 26;
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

    a2 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartReferenceLinesArchive::ByteSizeLong(TSCH::ChartReferenceLinesArchive *this)
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
      v7 = TSCH::ChartAxisReferenceLineNonStylesArchive::ByteSizeLong(v6);
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
      v14 = TSCH::ChartAxisReferenceLineStylesArchive::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(this + 16))
  {
    v15 = TSP::Reference::ByteSizeLong(*(this + 9));
    v9 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TSCH::ChartReferenceLinesArchive::MergeFrom(TSCH::ChartReferenceLinesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartReferenceLinesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartReferenceLinesArchive::MergeFrom(uint64_t this, const TSCH::ChartReferenceLinesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2763F94D0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_2763F9590(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  if (*(a2 + 16))
  {
    v15 = *(a2 + 9);
    *(v3 + 16) |= 1u;
    v16 = *(v3 + 72);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C97B90](v17);
      *(v3 + 72) = v16;
      v15 = *(a2 + 9);
    }

    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v16, v18);
  }

  return this;
}

uint64_t *TSCH::ChartReferenceLinesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartReferenceLinesArchive::Clear(this);

    return TSCH::ChartReferenceLinesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartReferenceLinesArchive::CopyFrom(uint64_t *this, const TSCH::ChartReferenceLinesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartReferenceLinesArchive::Clear(this);

    return TSCH::ChartReferenceLinesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::ChartReferenceLinesArchive::IsInitialized(TSCH::ChartReferenceLinesArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCH::ChartAxisReferenceLineNonStylesArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if (!IsInitialized)
    {
      return 0;
    }
  }

  result = sub_2763F180C(this + 48);
  if (result)
  {
    if ((*(this + 16) & 1) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 9));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2763F180C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    v4 = *(v3 + 16);
    if ((v4 & 1) == 0)
    {
      break;
    }

    if ((v4 & 2) != 0)
    {
      result = TSP::SparseReferenceArray::IsInitialized(*(v3 + 32));
      if (!result)
      {
        return result;
      }
    }

    if (v1-- <= 1)
    {
      return 1;
    }
  }

  return 0;
}

__n128 TSCH::ChartReferenceLinesArchive::InternalSwap(TSCH::ChartReferenceLinesArchive *this, TSCH::ChartReferenceLinesArchive *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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
  v10 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v10;
  return result;
}

uint64_t TSCH::ChartPresetReferenceLineStylesArchive::clear_reference_line_styles(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TSCH::ChartPresetReferenceLineStylesArchive *TSCH::ChartPresetReferenceLineStylesArchive::ChartPresetReferenceLineStylesArchive(TSCH::ChartPresetReferenceLineStylesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521808;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ChartPresetReferenceLineStylesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCH::ChartPresetReferenceLineStylesArchive *TSCH::ChartPresetReferenceLineStylesArchive::ChartPresetReferenceLineStylesArchive(TSCH::ChartPresetReferenceLineStylesArchive *this, const TSCH::ChartPresetReferenceLineStylesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288521808;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2763F8D40(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_2763D4F88(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCH::ChartPresetReferenceLineStylesArchive::~ChartPresetReferenceLineStylesArchive(TSCH::ChartPresetReferenceLineStylesArchive *this)
{
  sub_2763941F4(this + 1);
  sub_276478328(this + 2);
}

{
  TSCH::ChartPresetReferenceLineStylesArchive::~ChartPresetReferenceLineStylesArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartPresetReferenceLineStylesArchive::default_instance(TSCH::ChartPresetReferenceLineStylesArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartPresetReferenceLineStylesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartPresetReferenceLineStylesArchive_default_instance_;
}

uint64_t *TSCH::ChartPresetReferenceLineStylesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartPresetReferenceLineStylesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_2763D4D98(a3, &v21) & 1) == 0)
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
          v13 = MEMORY[0x277C97B90](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_2764ADCBC(a3, v14, v10);
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
        sub_2763D4E10((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_2763D4D98(a3, &v21))
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

unsigned __int8 *TSCH::ChartPresetReferenceLineStylesArchive::_InternalSerialize(TSCH::ChartPresetReferenceLineStylesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartPresetReferenceLineStylesArchive::ByteSizeLong(TSCH::ChartPresetReferenceLineStylesArchive *this)
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
      v7 = TSP::Reference::ByteSizeLong(v6);
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

uint64_t TSCH::ChartPresetReferenceLineStylesArchive::MergeFrom(TSCH::ChartPresetReferenceLineStylesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartPresetReferenceLineStylesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartPresetReferenceLineStylesArchive::MergeFrom(uint64_t this, const TSCH::ChartPresetReferenceLineStylesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_2763F8D40(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCH::ChartPresetReferenceLineStylesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartPresetReferenceLineStylesArchive::Clear(this);

    return TSCH::ChartPresetReferenceLineStylesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartPresetReferenceLineStylesArchive::CopyFrom(uint64_t *this, const TSCH::ChartPresetReferenceLineStylesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartPresetReferenceLineStylesArchive::Clear(this);

    return TSCH::ChartPresetReferenceLineStylesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCH::ChartPresetReferenceLineStylesArchive::IsInitialized(TSCH::ChartPresetReferenceLineStylesArchive *this)
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
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCH::ChartPresetReferenceLineStylesArchive::InternalSwap(TSCH::ChartPresetReferenceLineStylesArchive *this, TSCH::ChartPresetReferenceLineStylesArchive *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSCH::ChartAxisReferenceLineSparseNonStylesArchive *TSCH::ChartAxisReferenceLineSparseNonStylesArchive::ChartAxisReferenceLineSparseNonStylesArchive(TSCH::ChartAxisReferenceLineSparseNonStylesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885218B8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ChartAxisReferenceLineSparseNonStylesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCH::ChartAxisReferenceLineSparseNonStylesArchive *TSCH::ChartAxisReferenceLineSparseNonStylesArchive::ChartAxisReferenceLineSparseNonStylesArchive(TSCH::ChartAxisReferenceLineSparseNonStylesArchive *this, const TSCH::ChartAxisReferenceLineSparseNonStylesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885218B8;
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
    sub_2763F9308(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2763D4F88(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  return this;
}

void sub_2763F2450(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v2, 0x1081C404FE48876);
  sub_2763F9284((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCH::ChartAxisReferenceLineSparseNonStylesArchive::~ChartAxisReferenceLineSparseNonStylesArchive(TSCH::ChartAxisReferenceLineSparseNonStylesArchive *this)
{
  if (this != &TSCH::_ChartAxisReferenceLineSparseNonStylesArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C404FE48876);
    }
  }

  sub_2763941F4(this + 1);
  sub_2763F9284(this + 3);
}

{
  TSCH::ChartAxisReferenceLineSparseNonStylesArchive::~ChartAxisReferenceLineSparseNonStylesArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartAxisReferenceLineSparseNonStylesArchive::default_instance(TSCH::ChartAxisReferenceLineSparseNonStylesArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartAxisReferenceLineSparseNonStylesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartAxisReferenceLineSparseNonStylesArchive_default_instance_;
}

uint64_t *TSCH::ChartAxisReferenceLineSparseNonStylesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCH::ChartReferenceLineNonStyleItem::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSCH::ChartAxisIDArchive::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_2763D4FD4(v5);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartAxisReferenceLineSparseNonStylesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v24))
    {
      return v24;
    }

    v5 = (v24 + 1);
    v6 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v24 + 2);
LABEL_6:
      v24 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v7 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v22;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      v11 = (v5 - 1);
      while (1)
      {
        v12 = (v11 + 1);
        v24 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          goto LABEL_22;
        }

        v18 = *(a1 + 32);
        v14 = *v13;
        if (v18 < *v13)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v13[2 * v18 + 2];
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartReferenceLineNonStyleItem>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_2764AB0C4(a3, v15, v12);
        v24 = v11;
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
      v19 = *(a1 + 48);
      if (!v19)
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_2764AF8E0(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v24 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v24;
}

unsigned __int8 *TSCH::ChartAxisReferenceLineSparseNonStylesArchive::_InternalSerialize(TSCH::ChartAxisReferenceLineSparseNonStylesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCH::ChartAxisIDArchive::_InternalSerialize(v5, v7, a3);
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

      a2 = TSCH::ChartReferenceLineNonStyleItem::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartAxisReferenceLineSparseNonStylesArchive::ByteSizeLong(TSCH::ChartAxisIDArchive **this)
{
  if (this[2])
  {
    v3 = TSCH::ChartAxisIDArchive::ByteSizeLong(this[6]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 8);
  v5 = v2 + v4;
  v6 = this[5];
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = TSCH::ChartReferenceLineNonStyleItem::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
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

uint64_t TSCH::ChartAxisReferenceLineSparseNonStylesArchive::MergeFrom(TSCH::ChartAxisReferenceLineSparseNonStylesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartAxisReferenceLineSparseNonStylesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartAxisReferenceLineSparseNonStylesArchive::MergeFrom(uint64_t this, const TSCH::ChartAxisReferenceLineSparseNonStylesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2763F9308(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &TSCH::_ChartAxisIDArchive_default_instance_;
    }

    return TSCH::ChartAxisIDArchive::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSCH::ChartAxisReferenceLineSparseNonStylesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartAxisReferenceLineSparseNonStylesArchive::Clear(this);

    return TSCH::ChartAxisReferenceLineSparseNonStylesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartAxisReferenceLineSparseNonStylesArchive::CopyFrom(uint64_t *this, const TSCH::ChartAxisReferenceLineSparseNonStylesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartAxisReferenceLineSparseNonStylesArchive::Clear(this);

    return TSCH::ChartAxisReferenceLineSparseNonStylesArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCH::ChartAxisReferenceLineSparseNonStylesArchive::IsInitialized(TSCH::ChartAxisReferenceLineSparseNonStylesArchive *this)
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
    IsInitialized = TSCH::ChartReferenceLineNonStyleItem::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TSCH::ChartAxisReferenceLineSparseNonStylesArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2763948BC(&this->n128_i64[1], &a2->n128_i64[1]);
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

TSP::Reference *TSCH::PropertyValueStorageContainerReferenceLinesArchive::clear_theme_preset_reference_line_style(TSCH::PropertyValueStorageContainerReferenceLinesArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCH::PropertyValueStorageContainerReferenceLinesArchive *TSCH::PropertyValueStorageContainerReferenceLinesArchive::PropertyValueStorageContainerReferenceLinesArchive(TSCH::PropertyValueStorageContainerReferenceLinesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521968;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_PropertyValueStorageContainerReferenceLinesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  return this;
}

void sub_2763F2F00(_Unwind_Exception *a1)
{
  sub_2763F944C(v2);
  sub_2763F9650(v1);
  _Unwind_Resume(a1);
}

TSCH::PropertyValueStorageContainerReferenceLinesArchive *TSCH::PropertyValueStorageContainerReferenceLinesArchive::PropertyValueStorageContainerReferenceLinesArchive(TSCH::PropertyValueStorageContainerReferenceLinesArchive *this, const TSCH::PropertyValueStorageContainerReferenceLinesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521968;
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
    sub_2763F96D4(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2763F9590(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_2763D4F88(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 9) = 0;
  return this;
}

void sub_2763F30B0(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v3, 0x1081C407D3F2757);
  sub_2763F944C(v2);
  sub_2763F9650((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCH::PropertyValueStorageContainerReferenceLinesArchive::~PropertyValueStorageContainerReferenceLinesArchive(TSCH::PropertyValueStorageContainerReferenceLinesArchive *this)
{
  if (this != &TSCH::_PropertyValueStorageContainerReferenceLinesArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(this + 1);
  sub_2763F944C(this + 6);
  sub_2763F9650(this + 3);
}

{
  TSCH::PropertyValueStorageContainerReferenceLinesArchive::~PropertyValueStorageContainerReferenceLinesArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::PropertyValueStorageContainerReferenceLinesArchive::default_instance(TSCH::PropertyValueStorageContainerReferenceLinesArchive *this)
{
  if (atomic_load_explicit(scc_info_PropertyValueStorageContainerReferenceLinesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_PropertyValueStorageContainerReferenceLinesArchive_default_instance_;
}

uint64_t *TSCH::PropertyValueStorageContainerReferenceLinesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCH::ChartAxisReferenceLineSparseNonStylesArchive::Clear(v4);
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
      this = TSCH::ChartAxisReferenceLineStylesArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_2763D4FD4(v8);
  }

  return this;
}

google::protobuf::internal *TSCH::PropertyValueStorageContainerReferenceLinesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v34))
    {
      return v34;
    }

    v5 = (v34 + 1);
    v6 = *v34;
    if ((*v34 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v34 + 2);
LABEL_6:
      v34 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v7 - 128));
    v34 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v32;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 != 3)
    {
      if (v8 != 2)
      {
        if (v8 != 1 || v6 != 10)
        {
          goto LABEL_13;
        }

        v23 = (v5 - 1);
        while (1)
        {
          v24 = (v23 + 1);
          v34 = (v23 + 1);
          v25 = *(a1 + 40);
          if (!v25)
          {
            goto LABEL_43;
          }

          v30 = *(a1 + 32);
          v26 = *v25;
          if (v30 < *v25)
          {
            *(a1 + 32) = v30 + 1;
            v27 = *&v25[2 * v30 + 2];
            goto LABEL_47;
          }

          if (v26 == *(a1 + 36))
          {
LABEL_43:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v25 = *(a1 + 40);
            v26 = *v25;
          }

          *v25 = v26 + 1;
          v27 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineSparseNonStylesArchive>(*(a1 + 24));
          v28 = *(a1 + 32);
          v29 = *(a1 + 40) + 8 * v28;
          *(a1 + 32) = v28 + 1;
          *(v29 + 8) = v27;
          v24 = v34;
LABEL_47:
          v23 = sub_2764AB334(a3, v27, v24);
          v34 = v23;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 10)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 18)
      {
        goto LABEL_13;
      }

      v12 = (v5 - 1);
      while (1)
      {
        v13 = (v12 + 1);
        v34 = (v12 + 1);
        v14 = *(a1 + 64);
        if (!v14)
        {
          goto LABEL_23;
        }

        v19 = *(a1 + 56);
        v15 = *v14;
        if (v19 < *v14)
        {
          *(a1 + 56) = v19 + 1;
          v16 = *&v14[2 * v19 + 2];
          goto LABEL_27;
        }

        if (v15 == *(a1 + 60))
        {
LABEL_23:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v14 = *(a1 + 64);
          v15 = *v14;
        }

        *v14 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineStylesArchive>(*(a1 + 48));
        v17 = *(a1 + 56);
        v18 = *(a1 + 64) + 8 * v17;
        *(a1 + 56) = v17 + 1;
        *(v18 + 8) = v16;
        v13 = v34;
LABEL_27:
        v12 = sub_2764AB264(a3, v16, v13);
        v34 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 == 26)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 72);
      if (!v20)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x277C97B90](v21);
        LODWORD(v20) = v22;
        *(a1 + 72) = v22;
        v5 = v34;
      }

      v11 = sub_2764ADCBC(a3, v20, v5);
      goto LABEL_39;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_39:
    v34 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v34;
}

unsigned __int8 *TSCH::PropertyValueStorageContainerReferenceLinesArchive::_InternalSerialize(TSCH::PropertyValueStorageContainerReferenceLinesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSCH::ChartAxisReferenceLineSparseNonStylesArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 14);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 8) + 8 * j + 8);
      *a2 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = a2 + 3;
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
          a2[2] = v18;
          v17 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v16;
        v17 = a2 + 2;
      }

      a2 = TSCH::ChartAxisReferenceLineStylesArchive::_InternalSerialize(v15, v17, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(this + 9);
    *a2 = 26;
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

    a2 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::PropertyValueStorageContainerReferenceLinesArchive::ByteSizeLong(TSCH::PropertyValueStorageContainerReferenceLinesArchive *this)
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
      v7 = TSCH::ChartAxisReferenceLineSparseNonStylesArchive::ByteSizeLong(v6);
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
      v14 = TSCH::ChartAxisReferenceLineStylesArchive::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(this + 16))
  {
    v15 = TSP::Reference::ByteSizeLong(*(this + 9));
    v9 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TSCH::PropertyValueStorageContainerReferenceLinesArchive::MergeFrom(TSCH::PropertyValueStorageContainerReferenceLinesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::PropertyValueStorageContainerReferenceLinesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::PropertyValueStorageContainerReferenceLinesArchive::MergeFrom(uint64_t this, const TSCH::PropertyValueStorageContainerReferenceLinesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2763F96D4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_2763F9590(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  if (*(a2 + 16))
  {
    v15 = *(a2 + 9);
    *(v3 + 16) |= 1u;
    v16 = *(v3 + 72);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C97B90](v17);
      *(v3 + 72) = v16;
      v15 = *(a2 + 9);
    }

    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v16, v18);
  }

  return this;
}

uint64_t *TSCH::PropertyValueStorageContainerReferenceLinesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::PropertyValueStorageContainerReferenceLinesArchive::Clear(this);

    return TSCH::PropertyValueStorageContainerReferenceLinesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::PropertyValueStorageContainerReferenceLinesArchive::CopyFrom(uint64_t *this, const TSCH::PropertyValueStorageContainerReferenceLinesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::PropertyValueStorageContainerReferenceLinesArchive::Clear(this);

    return TSCH::PropertyValueStorageContainerReferenceLinesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::PropertyValueStorageContainerReferenceLinesArchive::IsInitialized(TSCH::PropertyValueStorageContainerReferenceLinesArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCH::ChartAxisReferenceLineSparseNonStylesArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if (!IsInitialized)
    {
      return 0;
    }
  }

  result = sub_2763F180C(this + 48);
  if (result)
  {
    if ((*(this + 16) & 1) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 9));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCH::PropertyValueStorageContainerReferenceLinesArchive::InternalSwap(TSCH::PropertyValueStorageContainerReferenceLinesArchive *this, TSCH::PropertyValueStorageContainerReferenceLinesArchive *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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
  v10 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v10;
  return result;
}

void *TSCH::CollaboratorCDECursorSubselectionArchive::CollaboratorCDECursorSubselectionArchive(void *result, uint64_t a2)
{
  *result = &unk_288521A18;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_288521A18;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

TSCH::CollaboratorCDECursorSubselectionArchive *TSCH::CollaboratorCDECursorSubselectionArchive::CollaboratorCDECursorSubselectionArchive(TSCH::CollaboratorCDECursorSubselectionArchive *this, const TSCH::CollaboratorCDECursorSubselectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521A18;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2763D4F88(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSCH::CollaboratorCDECursorSubselectionArchive::~CollaboratorCDECursorSubselectionArchive(TSCH::CollaboratorCDECursorSubselectionArchive *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::CollaboratorCDECursorSubselectionArchive::default_instance(TSCH::CollaboratorCDECursorSubselectionArchive *this)
{
  if (atomic_load_explicit(scc_info_CollaboratorCDECursorSubselectionArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_CollaboratorCDECursorSubselectionArchive_default_instance_;
}

uint64_t *TSCH::CollaboratorCDECursorSubselectionArchive::Clear(TSCH::CollaboratorCDECursorSubselectionArchive *this)
{
  if ((*(this + 16) & 0xF) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

google::protobuf::internal *TSCH::CollaboratorCDECursorSubselectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v35) & 1) == 0)
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
        goto LABEL_55;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_35;
          }

          v5 |= 4u;
          v22 = (v7 + 1);
          LODWORD(v21) = *v7;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_34;
          }

          v23 = *v22;
          v21 = (v21 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v22 = (v7 + 2);
LABEL_34:
            v35 = v22;
            *(a1 + 32) = v21;
            goto LABEL_42;
          }

          v33 = google::protobuf::internal::VarintParseSlow64(v7, v21);
          v35 = v33;
          *(a1 + 32) = v34;
          if (!v33)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_35;
          }

          v5 |= 8u;
          v16 = (v7 + 1);
          LODWORD(v15) = *v7;
          if ((v15 & 0x80) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v16;
          v15 = (v15 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_24:
            v35 = v16;
            *(a1 + 36) = v15;
            goto LABEL_42;
          }

          v27 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v35 = v27;
          *(a1 + 36) = v28;
          if (!v27)
          {
            goto LABEL_55;
          }
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_35;
        }

        v5 |= 1u;
        v19 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_29;
        }

        v20 = *v19;
        v18 = (v18 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_29:
          v35 = v19;
          *(a1 + 24) = v18;
          goto LABEL_42;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v18);
        v35 = v31;
        *(a1 + 24) = v32;
        if (!v31)
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
LABEL_35:
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
            sub_2763D4E10((a1 + 8));
          }

          v35 = google::protobuf::internal::UnknownFieldParse();
          if (!v35)
          {
LABEL_55:
            v35 = 0;
            goto LABEL_2;
          }

          goto LABEL_42;
        }

        v5 |= 2u;
        v13 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v13;
        v12 = (v12 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_17:
          v35 = v13;
          *(a1 + 28) = v12;
          goto LABEL_42;
        }

        v29 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v35 = v29;
        *(a1 + 28) = v30;
        if (!v29)
        {
          goto LABEL_55;
        }
      }

LABEL_42:
      if (sub_2763D4D98(a3, &v35))
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

unsigned __int8 *TSCH::CollaboratorCDECursorSubselectionArchive::_InternalSerialize(TSCH::CollaboratorCDECursorSubselectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 7);
    *a2 = 16;
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
        if ((v5 & 4) != 0)
        {
          goto LABEL_36;
        }
      }

      else
      {
        a2[2] = v15;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      a2[1] = v14;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_36;
      }
    }

LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 6);
  *a2 = 8;
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v9 = v7 >> 7;
    if (v7 >> 14)
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
      if ((v5 & 2) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
      if ((v5 & 2) != 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    a2[1] = v7;
    a2 += 2;
    if ((v5 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_36:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 8);
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
      if ((v5 & 8) == 0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      a2[2] = v19;
      a2 += 3;
      if ((v5 & 8) == 0)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    a2[1] = v18;
    a2 += 2;
    if ((v5 & 8) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 9);
  *a2 = 32;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v10 = v8 >> 7;
        ++a2;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
    }

    else
    {
      a2[2] = v8;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_47:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::CollaboratorCDECursorSubselectionArchive::ByteSizeLong(TSCH::CollaboratorCDECursorSubselectionArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 0xF) == 0)
  {
    v2 = 0;
    goto LABEL_25;
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
  if ((v1 & 4) == 0)
  {
    if ((v1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v6 = *(this + 8);
  if (v6 < 0)
  {
    v7 = 11;
  }

  else
  {
    v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v7;
  if ((v1 & 8) != 0)
  {
LABEL_21:
    v8 = *(this + 9);
    if (v8 < 0)
    {
      v9 = 11;
    }

    else
    {
      v9 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v9;
  }

LABEL_25:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCH::CollaboratorCDECursorSubselectionArchive::MergeFrom(TSCH::CollaboratorCDECursorSubselectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::CollaboratorCDECursorSubselectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::CollaboratorCDECursorSubselectionArchive::MergeFrom(uint64_t this, const TSCH::CollaboratorCDECursorSubselectionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        v3[4] |= v5;
        return this;
      }

LABEL_8:
      v3[9] = *(a2 + 9);
      goto LABEL_9;
    }

LABEL_13:
    v3[8] = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TSCH::CollaboratorCDECursorSubselectionArchive *TSCH::CollaboratorCDECursorSubselectionArchive::CopyFrom(TSCH::CollaboratorCDECursorSubselectionArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::CollaboratorCDECursorSubselectionArchive::Clear(this);

    return TSCH::CollaboratorCDECursorSubselectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::CollaboratorCDECursorSubselectionArchive *TSCH::CollaboratorCDECursorSubselectionArchive::CopyFrom(TSCH::CollaboratorCDECursorSubselectionArchive *this, const TSCH::CollaboratorCDECursorSubselectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::CollaboratorCDECursorSubselectionArchive::Clear(this);

    return TSCH::CollaboratorCDECursorSubselectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCH::CollaboratorCDECursorSubselectionArchive::InternalSwap(TSCH::CollaboratorCDECursorSubselectionArchive *this, TSCH::CollaboratorCDECursorSubselectionArchive *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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

uint64_t TSCH::CollaboratorChartTitleCursorSubselectionArchive::CollaboratorChartTitleCursorSubselectionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288521AC8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_288521AC8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSCH::CollaboratorChartTitleCursorSubselectionArchive *TSCH::CollaboratorChartTitleCursorSubselectionArchive::CollaboratorChartTitleCursorSubselectionArchive(TSCH::CollaboratorChartTitleCursorSubselectionArchive *this, const TSCH::CollaboratorChartTitleCursorSubselectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521AC8;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2763D4F88(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSCH::CollaboratorChartTitleCursorSubselectionArchive::~CollaboratorChartTitleCursorSubselectionArchive(TSCH::CollaboratorChartTitleCursorSubselectionArchive *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::CollaboratorChartTitleCursorSubselectionArchive::default_instance(TSCH::CollaboratorChartTitleCursorSubselectionArchive *this)
{
  if (atomic_load_explicit(scc_info_CollaboratorChartTitleCursorSubselectionArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_CollaboratorChartTitleCursorSubselectionArchive_default_instance_;
}

uint64_t *TSCH::CollaboratorChartTitleCursorSubselectionArchive::Clear(TSCH::CollaboratorChartTitleCursorSubselectionArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 16) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

google::protobuf::internal *TSCH::CollaboratorChartTitleCursorSubselectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v18) & 1) == 0)
  {
    while (1)
    {
      v6 = (v18 + 1);
      v7 = *v18;
      if ((*v18 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
      v18 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_27;
      }

      v6 = TagFallback;
      v7 = v14;
LABEL_6:
      if (v7 == 8)
      {
        v11 = (v6 + 1);
        v10 = *v6;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        v12 = *v11;
        v10 = (v12 << 7) + v10 - 128;
        if ((v12 & 0x80000000) == 0)
        {
          v11 = (v6 + 2);
LABEL_18:
          v18 = v11;
          *(a1 + 24) = v10 != 0;
          v5 = 1;
          goto LABEL_19;
        }

        v15 = google::protobuf::internal::VarintParseSlow64(v6, v10);
        v18 = v15;
        *(a1 + 24) = v16 != 0;
        v5 = 1;
        if (!v15)
        {
          goto LABEL_27;
        }
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
          goto LABEL_26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        if (!v18)
        {
LABEL_27:
          v18 = 0;
          goto LABEL_26;
        }
      }

LABEL_19:
      if (sub_2763D4D98(a3, &v18))
      {
        goto LABEL_26;
      }
    }

    v6 = (v18 + 2);
LABEL_5:
    v18 = v6;
    goto LABEL_6;
  }

LABEL_26:
  *(a1 + 16) |= v5;
  return v18;
}

unsigned __int8 *TSCH::CollaboratorChartTitleCursorSubselectionArchive::_InternalSerialize(TSCH::CollaboratorChartTitleCursorSubselectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v4 = *(this + 24);
    *a2 = 8;
    a2[1] = v4;
    a2 += 2;
  }

  v5 = *(this + 1);
  if ((v5 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::CollaboratorChartTitleCursorSubselectionArchive::ByteSizeLong(TSCH::CollaboratorChartTitleCursorSubselectionArchive *this)
{
  v2 = *(this + 8);
  v1 = this + 8;
  v3 = *(v1 + 2);
  if (v2)
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(v1 + 3) = 2 * (*(v1 + 2) & 1);
  return 2 * (v3 & 1);
}

uint64_t TSCH::CollaboratorChartTitleCursorSubselectionArchive::MergeFrom(TSCH::CollaboratorChartTitleCursorSubselectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::CollaboratorChartTitleCursorSubselectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::CollaboratorChartTitleCursorSubselectionArchive::MergeFrom(uint64_t this, const TSCH::CollaboratorChartTitleCursorSubselectionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    *(v3 + 24) = v5;
  }

  return this;
}

TSCH::CollaboratorChartTitleCursorSubselectionArchive *TSCH::CollaboratorChartTitleCursorSubselectionArchive::CopyFrom(TSCH::CollaboratorChartTitleCursorSubselectionArchive *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    v5[16] = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::CollaboratorChartTitleCursorSubselectionArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSCH::CollaboratorChartTitleCursorSubselectionArchive *TSCH::CollaboratorChartTitleCursorSubselectionArchive::CopyFrom(const TSCH::CollaboratorChartTitleCursorSubselectionArchive *this, const TSCH::CollaboratorChartTitleCursorSubselectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    v5[16] = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::CollaboratorChartTitleCursorSubselectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::CollaboratorChartTitleCursorSubselectionArchive::InternalSwap(TSCH::CollaboratorChartTitleCursorSubselectionArchive *this, TSCH::CollaboratorChartTitleCursorSubselectionArchive *a2)
{
  result = sub_2763948BC(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  LOBYTE(v5) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v5;
  return result;
}

TSK::FormatStructArchive *TSCH::CachedAxisDataFormatterPersistableStyleObject::clear_style_object(TSCH::CachedAxisDataFormatterPersistableStyleObject *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCH::CachedAxisDataFormatterPersistableStyleObject *TSCH::CachedAxisDataFormatterPersistableStyleObject::CachedAxisDataFormatterPersistableStyleObject(TSCH::CachedAxisDataFormatterPersistableStyleObject *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521B78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CachedAxisDataFormatterPersistableStyleObject_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_288521B78;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CachedAxisDataFormatterPersistableStyleObject_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCH::CachedAxisDataFormatterPersistableStyleObject *TSCH::CachedAxisDataFormatterPersistableStyleObject::CachedAxisDataFormatterPersistableStyleObject(TSCH::CachedAxisDataFormatterPersistableStyleObject *this, const TSCH::CachedAxisDataFormatterPersistableStyleObject *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521B78;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2763D4F88(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSCH::CachedAxisDataFormatterPersistableStyleObject::~CachedAxisDataFormatterPersistableStyleObject(TSCH::CachedAxisDataFormatterPersistableStyleObject *this)
{
  if (this != &TSCH::_CachedAxisDataFormatterPersistableStyleObject_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C404FE48876);
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v3, 0x10A1C4029F168B5);
    }
  }

  sub_2763941F4(this + 1);
}

{
  TSCH::CachedAxisDataFormatterPersistableStyleObject::~CachedAxisDataFormatterPersistableStyleObject(this);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::CachedAxisDataFormatterPersistableStyleObject::default_instance(TSCH::CachedAxisDataFormatterPersistableStyleObject *this)
{
  if (atomic_load_explicit(scc_info_CachedAxisDataFormatterPersistableStyleObject_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_CachedAxisDataFormatterPersistableStyleObject_default_instance_;
}

uint64_t *TSCH::CachedAxisDataFormatterPersistableStyleObject::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCH::ChartAxisIDArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSK::FormatStructArchive::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return this;
}

google::protobuf::internal *TSCH::CachedAxisDataFormatterPersistableStyleObject::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_2763D4D98(a3, &v19) & 1) == 0)
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

        v13 = MEMORY[0x277C97B00](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v19;
      }

      v10 = sub_2764A8D08(a3, v11, v5);
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
          sub_2763D4E10((a1 + 8));
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v15);
        *(a1 + 24) = v14;
        v5 = v19;
      }

      v10 = sub_2764AF8E0(a3, v14, v5);
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

unsigned __int8 *TSCH::CachedAxisDataFormatterPersistableStyleObject::_InternalSerialize(TSCH::CachedAxisDataFormatterPersistableStyleObject *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCH::ChartAxisIDArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 18;
    v13 = *(v12 + 12);
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

    a2 = TSK::FormatStructArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::CachedAxisDataFormatterPersistableStyleObject::ByteSizeLong(TSCH::CachedAxisDataFormatterPersistableStyleObject *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSCH::ChartAxisIDArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSK::FormatStructArchive::ByteSizeLong(*(this + 4));
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

uint64_t TSCH::CachedAxisDataFormatterPersistableStyleObject::MergeFrom(TSCH::CachedAxisDataFormatterPersistableStyleObject *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::CachedAxisDataFormatterPersistableStyleObject::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::CachedAxisDataFormatterPersistableStyleObject::MergeFrom(uint64_t this, const TSCH::CachedAxisDataFormatterPersistableStyleObject *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCH::_ChartAxisIDArchive_default_instance_;
      }

      this = TSCH::ChartAxisIDArchive::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277C97B00](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D80740];
      }

      return TSK::FormatStructArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCH::CachedAxisDataFormatterPersistableStyleObject::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::CachedAxisDataFormatterPersistableStyleObject::Clear(this);

    return TSCH::CachedAxisDataFormatterPersistableStyleObject::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::CachedAxisDataFormatterPersistableStyleObject::CopyFrom(uint64_t *this, const TSCH::CachedAxisDataFormatterPersistableStyleObject *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::CachedAxisDataFormatterPersistableStyleObject::Clear(this);

    return TSCH::CachedAxisDataFormatterPersistableStyleObject::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::CachedAxisDataFormatterPersistableStyleObject::IsInitialized(TSCH::CachedAxisDataFormatterPersistableStyleObject *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCH::CachedAxisDataFormatterPersistableStyleObject::InternalSwap(TSCH::CachedAxisDataFormatterPersistableStyleObject *this, TSCH::CachedAxisDataFormatterPersistableStyleObject *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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

TSK::FormatStructArchive *TSCH::CachedSeriesDataFormatterPersistableStyleObject::clear_style_object(TSCH::CachedSeriesDataFormatterPersistableStyleObject *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCH::CachedSeriesDataFormatterPersistableStyleObject *TSCH::CachedSeriesDataFormatterPersistableStyleObject::CachedSeriesDataFormatterPersistableStyleObject(TSCH::CachedSeriesDataFormatterPersistableStyleObject *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521C28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CachedSeriesDataFormatterPersistableStyleObject_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288521C28;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CachedSeriesDataFormatterPersistableStyleObject_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCH::CachedSeriesDataFormatterPersistableStyleObject *TSCH::CachedSeriesDataFormatterPersistableStyleObject::CachedSeriesDataFormatterPersistableStyleObject(TSCH::CachedSeriesDataFormatterPersistableStyleObject *this, const TSCH::CachedSeriesDataFormatterPersistableStyleObject *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521C28;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2763D4F88(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  *(this + 8) = *(a2 + 8);
  return this;
}

void TSCH::CachedSeriesDataFormatterPersistableStyleObject::~CachedSeriesDataFormatterPersistableStyleObject(TSCH::CachedSeriesDataFormatterPersistableStyleObject *this)
{
  if (this != &TSCH::_CachedSeriesDataFormatterPersistableStyleObject_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C97400]();
    MEMORY[0x277C98580](v2, 0x10A1C4029F168B5);
  }

  sub_2763941F4(this + 1);
}

{
  TSCH::CachedSeriesDataFormatterPersistableStyleObject::~CachedSeriesDataFormatterPersistableStyleObject(this);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::CachedSeriesDataFormatterPersistableStyleObject::default_instance(TSCH::CachedSeriesDataFormatterPersistableStyleObject *this)
{
  if (atomic_load_explicit(scc_info_CachedSeriesDataFormatterPersistableStyleObject_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_CachedSeriesDataFormatterPersistableStyleObject_default_instance_;
}

uint64_t *TSCH::CachedSeriesDataFormatterPersistableStyleObject::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSK::FormatStructArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return this;
}

google::protobuf::internal *TSCH::CachedSeriesDataFormatterPersistableStyleObject::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v7 = (v23 + 1);
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v9 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277C97B00](v14);
            LODWORD(v13) = v15;
            *(a1 + 24) = v15;
            v7 = v23;
          }

          v12 = sub_2764A8D08(a3, v13, v7);
        }

        else
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
            sub_2763D4E10((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v23 = v12;
        if (!v12)
        {
          goto LABEL_38;
        }

        goto LABEL_31;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v17 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_30;
      }

      v18 = *v17;
      v16 = (v16 + (v18 << 7) - 128);
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_30:
        v23 = v17;
        *(a1 + 32) = v16;
        goto LABEL_31;
      }

      v21 = google::protobuf::internal::VarintParseSlow64(v7, v16);
      v23 = v21;
      *(a1 + 32) = v22;
      if (!v21)
      {
LABEL_38:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_2763D4D98(a3, &v23))
      {
        goto LABEL_2;
      }
    }

    v7 = (v23 + 2);
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v23;
}

unsigned __int8 *TSCH::CachedSeriesDataFormatterPersistableStyleObject::_InternalSerialize(TSCH::CachedSeriesDataFormatterPersistableStyleObject *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 8);
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

  v8 = *(this + 3);
  *a2 = 18;
  v9 = *(v8 + 12);
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

  a2 = TSK::FormatStructArchive::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::CachedSeriesDataFormatterPersistableStyleObject::ByteSizeLong(TSCH::CachedSeriesDataFormatterPersistableStyleObject *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = TSK::FormatStructArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(this + 8);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v6;
    goto LABEL_11;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
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

uint64_t TSCH::CachedSeriesDataFormatterPersistableStyleObject::MergeFrom(TSCH::CachedSeriesDataFormatterPersistableStyleObject *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::CachedSeriesDataFormatterPersistableStyleObject::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::CachedSeriesDataFormatterPersistableStyleObject::MergeFrom(uint64_t this, const TSCH::CachedSeriesDataFormatterPersistableStyleObject *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C97B00](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80740];
      }

      this = TSK::FormatStructArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCH::CachedSeriesDataFormatterPersistableStyleObject::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::CachedSeriesDataFormatterPersistableStyleObject::Clear(this);

    return TSCH::CachedSeriesDataFormatterPersistableStyleObject::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::CachedSeriesDataFormatterPersistableStyleObject::CopyFrom(uint64_t *this, const TSCH::CachedSeriesDataFormatterPersistableStyleObject *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::CachedSeriesDataFormatterPersistableStyleObject::Clear(this);

    return TSCH::CachedSeriesDataFormatterPersistableStyleObject::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::CachedSeriesDataFormatterPersistableStyleObject::IsInitialized(TSCH::CachedSeriesDataFormatterPersistableStyleObject *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCH::CachedSeriesDataFormatterPersistableStyleObject::InternalSwap(TSCH::CachedSeriesDataFormatterPersistableStyleObject *this, TSCH::CachedSeriesDataFormatterPersistableStyleObject *a2)
{
  result = sub_2763948BC(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return result;
}

TSK::FormatStructArchive *TSCH::CachedDataFormatterPersistableStyleObjects::clear_summary_label_style_object(TSCH::CachedDataFormatterPersistableStyleObjects *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCH::CachedDataFormatterPersistableStyleObjects *TSCH::CachedDataFormatterPersistableStyleObjects::CachedDataFormatterPersistableStyleObjects(TSCH::CachedDataFormatterPersistableStyleObjects *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521CD8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_CachedDataFormatterPersistableStyleObjects_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  return this;
}

void sub_2763F63CC(_Unwind_Exception *a1)
{
  sub_2763F9818(v2);
  sub_2763F9794(v1);
  _Unwind_Resume(a1);
}

TSCH::CachedDataFormatterPersistableStyleObjects *TSCH::CachedDataFormatterPersistableStyleObjects::CachedDataFormatterPersistableStyleObjects(TSCH::CachedDataFormatterPersistableStyleObjects *this, const TSCH::CachedDataFormatterPersistableStyleObjects *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521CD8;
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
    sub_2763F989C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2763F995C(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_2763D4F88(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 9) = 0;
  return this;
}

void sub_2763F657C(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v3, 0x10A1C4029F168B5);
  sub_2763F9818(v2);
  sub_2763F9794((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCH::CachedDataFormatterPersistableStyleObjects::~CachedDataFormatterPersistableStyleObjects(TSCH::CachedDataFormatterPersistableStyleObjects *this)
{
  if (this != &TSCH::_CachedDataFormatterPersistableStyleObjects_default_instance_ && *(this + 9))
  {
    v2 = MEMORY[0x277C97400]();
    MEMORY[0x277C98580](v2, 0x10A1C4029F168B5);
  }

  sub_2763941F4(this + 1);
  sub_2763F9818(this + 6);
  sub_2763F9794(this + 3);
}

{
  TSCH::CachedDataFormatterPersistableStyleObjects::~CachedDataFormatterPersistableStyleObjects(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::CachedDataFormatterPersistableStyleObjects::default_instance(TSCH::CachedDataFormatterPersistableStyleObjects *this)
{
  if (atomic_load_explicit(scc_info_CachedDataFormatterPersistableStyleObjects_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_CachedDataFormatterPersistableStyleObjects_default_instance_;
}

uint64_t *TSCH::CachedDataFormatterPersistableStyleObjects::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCH::CachedAxisDataFormatterPersistableStyleObject::Clear(v4);
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
      this = TSCH::CachedSeriesDataFormatterPersistableStyleObject::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSK::FormatStructArchive::Clear(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_2763D4FD4(v8);
  }

  return this;
}

google::protobuf::internal *TSCH::CachedDataFormatterPersistableStyleObjects::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v34))
    {
      return v34;
    }

    v5 = (v34 + 1);
    v6 = *v34;
    if ((*v34 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v34 + 2);
LABEL_6:
      v34 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v7 - 128));
    v34 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v32;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 != 3)
    {
      if (v8 != 2)
      {
        if (v8 != 1 || v6 != 10)
        {
          goto LABEL_13;
        }

        v23 = (v5 - 1);
        while (1)
        {
          v24 = (v23 + 1);
          v34 = (v23 + 1);
          v25 = *(a1 + 40);
          if (!v25)
          {
            goto LABEL_43;
          }

          v30 = *(a1 + 32);
          v26 = *v25;
          if (v30 < *v25)
          {
            *(a1 + 32) = v30 + 1;
            v27 = *&v25[2 * v30 + 2];
            goto LABEL_47;
          }

          if (v26 == *(a1 + 36))
          {
LABEL_43:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v25 = *(a1 + 40);
            v26 = *v25;
          }

          *v25 = v26 + 1;
          v27 = google::protobuf::Arena::CreateMaybeMessage<TSCH::CachedAxisDataFormatterPersistableStyleObject>(*(a1 + 24));
          v28 = *(a1 + 32);
          v29 = *(a1 + 40) + 8 * v28;
          *(a1 + 32) = v28 + 1;
          *(v29 + 8) = v27;
          v24 = v34;
LABEL_47:
          v23 = sub_2764AB404(a3, v27, v24);
          v34 = v23;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 10)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 18)
      {
        goto LABEL_13;
      }

      v12 = (v5 - 1);
      while (1)
      {
        v13 = (v12 + 1);
        v34 = (v12 + 1);
        v14 = *(a1 + 64);
        if (!v14)
        {
          goto LABEL_23;
        }

        v19 = *(a1 + 56);
        v15 = *v14;
        if (v19 < *v14)
        {
          *(a1 + 56) = v19 + 1;
          v16 = *&v14[2 * v19 + 2];
          goto LABEL_27;
        }

        if (v15 == *(a1 + 60))
        {
LABEL_23:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v14 = *(a1 + 64);
          v15 = *v14;
        }

        *v14 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSCH::CachedSeriesDataFormatterPersistableStyleObject>(*(a1 + 48));
        v17 = *(a1 + 56);
        v18 = *(a1 + 64) + 8 * v17;
        *(a1 + 56) = v17 + 1;
        *(v18 + 8) = v16;
        v13 = v34;
LABEL_27:
        v12 = sub_2764AB4D4(a3, v16, v13);
        v34 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 == 26)
    {
      *(a1 + 16) |= 1u;
      v20 = *(a1 + 72);
      if (!v20)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v22 = MEMORY[0x277C97B00](v21);
        LODWORD(v20) = v22;
        *(a1 + 72) = v22;
        v5 = v34;
      }

      v11 = sub_2764A8D08(a3, v20, v5);
      goto LABEL_39;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_39:
    v34 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v34;
}

unsigned __int8 *TSCH::CachedDataFormatterPersistableStyleObjects::_InternalSerialize(TSCH::CachedDataFormatterPersistableStyleObjects *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 8);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSCH::CachedAxisDataFormatterPersistableStyleObject::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 14);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 8) + 8 * j + 8);
      *a2 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = a2 + 3;
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
          a2[2] = v18;
          v17 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v16;
        v17 = a2 + 2;
      }

      a2 = TSCH::CachedSeriesDataFormatterPersistableStyleObject::_InternalSerialize(v15, v17, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(this + 9);
    *a2 = 26;
    v22 = *(v21 + 12);
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

    a2 = TSK::FormatStructArchive::_InternalSerialize(v21, v23, a3);
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::CachedDataFormatterPersistableStyleObjects::ByteSizeLong(TSCH::CachedDataFormatterPersistableStyleObjects *this)
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
      v7 = TSCH::CachedAxisDataFormatterPersistableStyleObject::ByteSizeLong(v6);
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
      v14 = TSCH::CachedSeriesDataFormatterPersistableStyleObject::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(this + 16))
  {
    v15 = TSK::FormatStructArchive::ByteSizeLong(*(this + 9));
    v9 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v9;
    return v9;
  }
}

uint64_t TSCH::CachedDataFormatterPersistableStyleObjects::MergeFrom(TSCH::CachedDataFormatterPersistableStyleObjects *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::CachedDataFormatterPersistableStyleObjects::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::CachedDataFormatterPersistableStyleObjects::MergeFrom(uint64_t this, const TSCH::CachedDataFormatterPersistableStyleObjects *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2763F989C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_2763F995C(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  if (*(a2 + 16))
  {
    v15 = *(a2 + 9);
    *(v3 + 16) |= 1u;
    v16 = *(v3 + 72);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C97B00](v17);
      *(v3 + 72) = v16;
      v15 = *(a2 + 9);
    }

    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = MEMORY[0x277D80740];
    }

    return TSK::FormatStructArchive::MergeFrom(v16, v18);
  }

  return this;
}

uint64_t *TSCH::CachedDataFormatterPersistableStyleObjects::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::CachedDataFormatterPersistableStyleObjects::Clear(this);

    return TSCH::CachedDataFormatterPersistableStyleObjects::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::CachedDataFormatterPersistableStyleObjects::CopyFrom(uint64_t *this, const TSCH::CachedDataFormatterPersistableStyleObjects *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::CachedDataFormatterPersistableStyleObjects::Clear(this);

    return TSCH::CachedDataFormatterPersistableStyleObjects::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::CachedDataFormatterPersistableStyleObjects::IsInitialized(TSCH::CachedDataFormatterPersistableStyleObjects *this)
{
  result = sub_2763F7120(this + 24);
  if (result)
  {
    result = sub_2763F717C(this + 48);
    if (result)
    {
      if ((*(this + 16) & 1) == 0)
      {
        return 1;
      }

      result = TSK::FormatStructArchive::IsInitialized(*(this + 9));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2763F7120(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  while (1)
  {
    v3 = *(*(a1 + 16) + 8 * v1);
    if ((*(v3 + 16) & 2) != 0)
    {
      result = TSK::FormatStructArchive::IsInitialized(*(v3 + 32));
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

uint64_t sub_2763F717C(uint64_t a1)
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
      result = TSK::FormatStructArchive::IsInitialized(*(v3 + 24));
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

__n128 TSCH::CachedDataFormatterPersistableStyleObjects::InternalSwap(TSCH::CachedDataFormatterPersistableStyleObjects *this, TSCH::CachedDataFormatterPersistableStyleObjects *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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
  v10 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v10;
  return result;
}

TSCH::ChartDrawableArchive *sub_2763F7288(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FA178(a1, 1);
  TSCH::ChartDrawableArchive::ChartDrawableArchive(v2, a1);
  return v2;
}

TSCH::ChartArchive *sub_2763F7314(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FA204(a1, 1);
  TSCH::ChartArchive::ChartArchive(v2, a1);
  return v2;
}

uint64_t sub_2763F73A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FA290(a1, 1);
  *result = &unk_2885202B8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

double sub_2763F7410(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FA338(a1, 1);
  *v2 = &unk_288520368;
  *(v2 + 8) = a1;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  return result;
}

TSCH::ChartGarlicLabelFormatUpgrade *sub_2763F7488(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FA3E0(a1, 1);
  TSCH::ChartGarlicLabelFormatUpgrade::ChartGarlicLabelFormatUpgrade(v2, a1);
  return v2;
}

uint64_t sub_2763F7514(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FA46C(a1, 1);
  *result = &unk_2885204C8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2763F7584(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FA514(a1, 1);
  *result = &unk_288520578;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2763F75F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FA5BC(a1, 1);
  *result = &unk_288520628;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2763F7664(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FA664(a1, 1);
  *result = &unk_2885206D8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2763F76D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FA70C(a1, 1);
  *result = &unk_288520788;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2763F7744(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FA7B4(a1, 1);
  *result = &unk_288520838;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *sub_2763F77B4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FA85C(a1, 1);
  TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::ChartGridArchive_ChartGridRowColumnIdMap_Entry(v2, a1);
  return v2;
}

TSCH::ChartGridArchive_ChartGridRowColumnIdMap *sub_2763F7840(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FA8E8(a1, 1);
  TSCH::ChartGridArchive_ChartGridRowColumnIdMap::ChartGridArchive_ChartGridRowColumnIdMap(v2, a1);
  return v2;
}

TSCH::ChartGridArchive *sub_2763F78CC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FA974(a1, 1);
  TSCH::ChartGridArchive::ChartGridArchive(v2, a1);
  return v2;
}

TSCH::ChartMediatorArchive *sub_2763F7958(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FAA00(a1, 1);
  TSCH::ChartMediatorArchive::ChartMediatorArchive(v2, a1);
  return v2;
}

TSCH::ChartFillSetArchive *sub_2763F79E4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FAA8C(a1, 1);
  TSCH::ChartFillSetArchive::ChartFillSetArchive(v2, a1);
  return v2;
}

TSCH::ChartStylePreset *sub_2763F7A70(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FAB18(a1, 1);
  TSCH::ChartStylePreset::ChartStylePreset(v2, a1);
  return v2;
}

TSCH::ChartPresetsArchive *sub_2763F7AFC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FABA4(a1, 1);
  TSCH::ChartPresetsArchive::ChartPresetsArchive(v2, a1);
  return v2;
}

TSCH::PropertyValueStorageContainerArchive *sub_2763F7B88(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FAC30(a1, 1);
  TSCH::PropertyValueStorageContainerArchive::PropertyValueStorageContainerArchive(v2, a1);
  return v2;
}

uint64_t sub_2763F7C14(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763FACBC(a1);
}

TSCH::ChartSelectionPathTypeArchive *sub_2763F7CE4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FADC0(a1, 1);
  TSCH::ChartSelectionPathTypeArchive::ChartSelectionPathTypeArchive(v2, a1);
  return v2;
}

void *sub_2763F7D70(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FAE4C(a1, 1);
  *result = &unk_288520FC8;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_2763F7DE0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763FAEF4(a1);
}

TSCH::ChartSelectionPathArchive *sub_2763F7EB0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FAFF8(a1, 1);
  TSCH::ChartSelectionPathArchive::ChartSelectionPathArchive(v2, a1);
  return v2;
}

TSCH::ChartSelectionArchive *sub_2763F7F3C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FB084(a1, 1);
  TSCH::ChartSelectionArchive::ChartSelectionArchive(v2, a1);
  return v2;
}

uint64_t sub_2763F7FC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763FB110(a1);
}

TSCH::ChartUIState *sub_2763F809C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FB218(a1, 1);
  TSCH::ChartUIState::ChartUIState(v2, a1);
  return v2;
}

uint64_t sub_2763F8128(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FB2A4(a1, 1);
  *result = &unk_2885213E8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2763F8198(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FB34C(a1, 1);
  *result = &unk_288521498;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

void *sub_2763F8208(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763FB3F4(a1);
}

TSCH::ChartAxisReferenceLineNonStylesArchive *sub_2763F82D4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FB4F4(a1, 1);
  TSCH::ChartAxisReferenceLineNonStylesArchive::ChartAxisReferenceLineNonStylesArchive(v2, a1);
  return v2;
}

void *sub_2763F8360(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763FB580(a1);
}

TSCH::ChartReferenceLinesArchive *sub_2763F842C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FB680(a1, 1);
  TSCH::ChartReferenceLinesArchive::ChartReferenceLinesArchive(v2, a1);
  return v2;
}

TSCH::ChartPresetReferenceLineStylesArchive *sub_2763F84B8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FB70C(a1, 1);
  TSCH::ChartPresetReferenceLineStylesArchive::ChartPresetReferenceLineStylesArchive(v2, a1);
  return v2;
}

TSCH::ChartAxisReferenceLineSparseNonStylesArchive *sub_2763F8544(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FB798(a1, 1);
  TSCH::ChartAxisReferenceLineSparseNonStylesArchive::ChartAxisReferenceLineSparseNonStylesArchive(v2, a1);
  return v2;
}

TSCH::PropertyValueStorageContainerReferenceLinesArchive *sub_2763F85D0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FB824(a1, 1);
  TSCH::PropertyValueStorageContainerReferenceLinesArchive::PropertyValueStorageContainerReferenceLinesArchive(v2, a1);
  return v2;
}

void *sub_2763F865C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FB8B0(a1, 1);
  *result = &unk_288521A18;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_2763F86D0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2763FB958(a1, 1);
  *result = &unk_288521AC8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_2763F8744(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763FBA00(a1);
}

uint64_t sub_2763F8810(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2763FBB00(a1);
}

TSCH::CachedDataFormatterPersistableStyleObjects *sub_2763F88E0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2763FBC04(a1, 1);
  TSCH::CachedDataFormatterPersistableStyleObjects::CachedDataFormatterPersistableStyleObjects(v2, a1);
  return v2;
}

uint64_t sub_2763F8D40(uint64_t result, TSP::Reference **a2, TSP::Reference **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2764783AC(v13, v15);
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
      v22 = MEMORY[0x277C97B90](v18);
      result = sub_2764783AC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2763F8DF0(void *a1)
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
          TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::~ChartGridArchive_ChartGridRowColumnIdMap_Entry(*v3);
          MEMORY[0x277C98580]();
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

uint64_t sub_2763F8E74(uint64_t result, TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry **a2, TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2763F8F24(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry>(v18);
      result = sub_2763F8F24(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

std::string *sub_2763F8F34(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
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
      v22 = sub_276380DF4(v18);
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_2763F8FE0(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276478090(v13, v15);
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
      v22 = sub_276407088(v18);
      result = sub_276478090(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2763F9090(void *a1)
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
          TSCH::ChartSelectionPathArgumentArchive::~ChartSelectionPathArgumentArchive(*v3);
          MEMORY[0x277C98580]();
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

uint64_t sub_2763F9114(uint64_t result, TSCH::ChartSelectionPathArgumentArchive **a2, TSCH::ChartSelectionPathArgumentArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2763F91C4(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathArgumentArchive>(v18);
      result = sub_2763F91C4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_2763F91D4(uint64_t result, TSCH::ChartSelectionPathArchive **a2, TSCH::ChartSelectionPathArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276478440(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathArchive>(v18);
      result = sub_276478440(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2763F9284(void *a1)
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
          TSCH::ChartReferenceLineNonStyleItem::~ChartReferenceLineNonStyleItem(*v3);
          MEMORY[0x277C98580]();
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

uint64_t sub_2763F9308(uint64_t result, TSCH::ChartReferenceLineNonStyleItem **a2, TSCH::ChartReferenceLineNonStyleItem **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2763F93B8(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartReferenceLineNonStyleItem>(v18);
      result = sub_2763F93B8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2763F93C8(void *a1)
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
          TSCH::ChartAxisReferenceLineNonStylesArchive::~ChartAxisReferenceLineNonStylesArchive(*v3);
          MEMORY[0x277C98580]();
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

void sub_2763F944C(void *a1)
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
          TSCH::ChartAxisReferenceLineStylesArchive::~ChartAxisReferenceLineStylesArchive(*v3);
          MEMORY[0x277C98580]();
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

uint64_t sub_2763F94D0(uint64_t result, TSCH::ChartAxisReferenceLineNonStylesArchive **a2, TSCH::ChartAxisReferenceLineNonStylesArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2763F9580(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineNonStylesArchive>(v18);
      result = sub_2763F9580(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_2763F9590(uint64_t result, TSCH::ChartAxisReferenceLineStylesArchive **a2, TSCH::ChartAxisReferenceLineStylesArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2763F9640(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineStylesArchive>(v18);
      result = sub_2763F9640(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2763F9650(void *a1)
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
          TSCH::ChartAxisReferenceLineSparseNonStylesArchive::~ChartAxisReferenceLineSparseNonStylesArchive(*v3);
          MEMORY[0x277C98580]();
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

uint64_t sub_2763F96D4(uint64_t result, TSCH::ChartAxisReferenceLineSparseNonStylesArchive **a2, TSCH::ChartAxisReferenceLineSparseNonStylesArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2763F9784(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisReferenceLineSparseNonStylesArchive>(v18);
      result = sub_2763F9784(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_2763F9794(void *a1)
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
          TSCH::CachedAxisDataFormatterPersistableStyleObject::~CachedAxisDataFormatterPersistableStyleObject(*v3);
          MEMORY[0x277C98580]();
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

void sub_2763F9818(void *a1)
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
          TSCH::CachedSeriesDataFormatterPersistableStyleObject::~CachedSeriesDataFormatterPersistableStyleObject(*v3);
          MEMORY[0x277C98580]();
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

uint64_t sub_2763F989C(uint64_t result, TSCH::CachedAxisDataFormatterPersistableStyleObject **a2, TSCH::CachedAxisDataFormatterPersistableStyleObject **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2763F994C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCH::CachedAxisDataFormatterPersistableStyleObject>(v18);
      result = sub_2763F994C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_2763F995C(uint64_t result, TSCH::CachedSeriesDataFormatterPersistableStyleObject **a2, TSCH::CachedSeriesDataFormatterPersistableStyleObject **a3, unsigned int a4, unsigned int a5)
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
      result = sub_2763F9A0C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSCH::CachedSeriesDataFormatterPersistableStyleObject>(v18);
      result = sub_2763F9A0C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_2763F9A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (atomic_load_explicit(scc_info_ChartDrawableArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  if (atomic_load_explicit(scc_info_ChartArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](&TSCH::_ChartDrawableArchive_default_instance_, a1, a2, 0, a3, &TSCH::_ChartArchive_default_instance_);
}