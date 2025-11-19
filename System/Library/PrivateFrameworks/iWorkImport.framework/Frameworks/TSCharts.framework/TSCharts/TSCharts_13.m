unsigned __int8 *TSCH::ChartFillSetArchive::_InternalSerialize(TSCH::ChartFillSetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2763DD938(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2763DD938(a3, 2, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 16);
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
    }

    else
    {
      v4[2] = v8;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_16:
  v11 = *(this + 8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v13 = *(*(this + 5) + 8 * i + 8);
      *v4 = 34;
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
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartFillSetArchive::RequiredFieldsByteSizeFallback(TSCH::ChartFillSetArchive *this)
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

  v3 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
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
    v6 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TSCH::ChartFillSetArchive::ByteSizeLong(TSCH::ChartFillSetArchive *this)
{
  v2 = *(this + 4);
  if ((~v2 & 3) != 0)
  {
    v10 = TSCH::ChartFillSetArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    v7 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v10 = v5 + v9 + v6 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v11 = *(this + 8);
  v12 = v10 + v11;
  v13 = *(this + 5);
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
      v17 = TSP::Reference::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    v12 += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

uint64_t TSCH::ChartFillSetArchive::MergeFrom(TSCH::ChartFillSetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartFillSetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartFillSetArchive::MergeFrom(uint64_t this, const TSCH::ChartFillSetArchive *a2)
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
    this = sub_2763F8D40(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 4);
  if ((v10 & 7) != 0)
  {
    if (v10)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v10 & 2) == 0)
      {
LABEL_9:
        if ((v10 & 4) == 0)
        {
LABEL_11:
          *(v3 + 16) |= v10;
          return this;
        }

LABEL_10:
        *(v3 + 64) = *(a2 + 16);
        goto LABEL_11;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v10 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCH::ChartFillSetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartFillSetArchive::Clear(this);

    return TSCH::ChartFillSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartFillSetArchive::CopyFrom(uint64_t *this, const TSCH::ChartFillSetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartFillSetArchive::Clear(this);

    return TSCH::ChartFillSetArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCH::ChartFillSetArchive::IsInitialized(TSCH::ChartFillSetArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

__n128 TSCH::ChartFillSetArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  v9 = this[3].n128_u64[1];
  this[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v9;
  LODWORD(v9) = this[4].n128_u32[0];
  this[4].n128_u32[0] = a2[4].n128_u32[0];
  a2[4].n128_u32[0] = v9;
  return result;
}

TSP::Reference *TSCH::ChartStylePreset::clear_chart_style(TSCH::ChartStylePreset *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~2u;
  return result;
}

TSP::Reference *TSCH::ChartStylePreset::clear_legend_style(TSCH::ChartStylePreset *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~4u;
  return result;
}

uint64_t TSCH::ChartStylePreset::clear_value_axis_styles(uint64_t this)
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

uint64_t TSCH::ChartStylePreset::clear_category_axis_styles(uint64_t this)
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

uint64_t TSCH::ChartStylePreset::clear_series_styles(uint64_t this)
{
  v1 = *(this + 104);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 112) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 104) = 0;
  }

  return this;
}

uint64_t TSCH::ChartStylePreset::clear_paragraph_styles(uint64_t this)
{
  v1 = *(this + 128);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 136) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 128) = 0;
  }

  return this;
}

TSCH::ChartStylePreset *TSCH::ChartStylePreset::ChartStylePreset(TSCH::ChartStylePreset *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520C58;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 15) = a2;
  *(this + 6) = a2;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  if (atomic_load_explicit(scc_info_ChartStylePreset_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v4 = MEMORY[0x277D80A90];
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 18) = v4;
  return this;
}

void sub_2763E3A14(_Unwind_Exception *a1)
{
  sub_276478328(v4);
  sub_276478328(v5);
  sub_276478328(v3);
  sub_276478328(v2);
  MEMORY[0x277C97D50](v1 + 16);
  _Unwind_Resume(a1);
}

TSCH::ChartStylePreset *TSCH::ChartStylePreset::ChartStylePreset(TSCH::ChartStylePreset *this, const TSCH::ChartStylePreset *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_288520C58;
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
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_2763F8D40(this + 48, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v11 = *(a2 + 20);
  if (v11)
  {
    v12 = *(a2 + 11);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_2763F8D40(this + 72, v13, (v12 + 8), v11, **(this + 11) - *(this + 20));
    v14 = *(this + 20) + v11;
    *(this + 20) = v14;
    v15 = *(this + 11);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v16 = *(a2 + 26);
  if (v16)
  {
    v17 = *(a2 + 14);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    sub_2763F8D40(this + 96, v18, (v17 + 8), v16, **(this + 14) - *(this + 26));
    v19 = *(this + 26) + v16;
    *(this + 26) = v19;
    v20 = *(this + 14);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v21 = *(a2 + 32);
  if (v21)
  {
    v22 = *(a2 + 17);
    v23 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120));
    sub_2763F8D40(this + 120, v23, (v22 + 8), v21, **(this + 17) - *(this + 32));
    v24 = *(this + 32) + v21;
    *(this + 32) = v24;
    v25 = *(this + 17);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 1);
  if (v26)
  {
    sub_2763D4F88(v4, (v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 18) = MEMORY[0x277D80A90];
  v27 = *(a2 + 10);
  if (v27)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v27 = *(a2 + 10);
  }

  if ((v27 & 2) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v27 & 4) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  return this;
}

void sub_2763E3D50(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v5, 0x1081C407D3F2757);
  sub_276478328(v6);
  sub_276478328(v4);
  sub_276478328(v3);
  sub_276478328((v1 + 48));
  MEMORY[0x277C97D50](v2);
  _Unwind_Resume(a1);
}

void TSCH::ChartStylePreset::~ChartStylePreset(TSCH::ChartStylePreset *this)
{
  v2 = *(this + 18);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (this != &TSCH::_ChartStylePreset_default_instance_)
  {
    v3 = *(this + 19);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C98580]();
    }

    v4 = *(this + 20);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(this + 1);
  sub_276478328(this + 15);
  sub_276478328(this + 12);
  sub_276478328(this + 9);
  sub_276478328(this + 6);
  MEMORY[0x277C97D50](this + 16);
}

{
  TSCH::ChartStylePreset::~ChartStylePreset(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartStylePreset::default_instance(TSCH::ChartStylePreset *this)
{
  if (atomic_load_explicit(scc_info_ChartStylePreset_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartStylePreset_default_instance_;
}

uint64_t *TSCH::ChartStylePreset::Clear(TSCH::ChartStylePreset *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = TSP::Reference::Clear(v5);
      --v3;
    }

    while (v3);
    *(this + 14) = 0;
  }

  v6 = *(this + 20);
  if (v6 >= 1)
  {
    v7 = (*(this + 11) + 8);
    do
    {
      v8 = *v7++;
      result = TSP::Reference::Clear(v8);
      --v6;
    }

    while (v6);
    *(this + 20) = 0;
  }

  v9 = *(this + 26);
  if (v9 >= 1)
  {
    v10 = (*(this + 14) + 8);
    do
    {
      v11 = *v10++;
      result = TSP::Reference::Clear(v11);
      --v9;
    }

    while (v9);
    *(this + 26) = 0;
  }

  v12 = *(this + 32);
  if (v12 >= 1)
  {
    v13 = (*(this + 17) + 8);
    do
    {
      v14 = *v13++;
      result = TSP::Reference::Clear(v14);
      --v12;
    }

    while (v12);
    *(this + 32) = 0;
  }

  v15 = *(this + 10);
  if ((v15 & 7) == 0)
  {
    goto LABEL_22;
  }

  if ((v15 & 1) == 0)
  {
    if ((v15 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  v18 = *(this + 18) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v18 + 23) < 0)
  {
    **v18 = 0;
    *(v18 + 8) = 0;
    if ((v15 & 2) != 0)
    {
      goto LABEL_30;
    }

LABEL_20:
    if ((v15 & 4) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  *v18 = 0;
  *(v18 + 23) = 0;
  if ((v15 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_30:
  result = TSP::Reference::Clear(*(this + 19));
  if ((v15 & 4) != 0)
  {
LABEL_21:
    result = TSP::Reference::Clear(*(this + 20));
  }

LABEL_22:
  v17 = *(this + 8);
  v16 = this + 8;
  *(v16 + 8) = 0;
  if (v17)
  {

    return sub_2763D4FD4(v16);
  }

  return result;
}

google::protobuf::internal *TSCH::ChartStylePreset::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v54 = a2;
  if ((sub_2763D4D98(a3, &v54) & 1) == 0)
  {
    while (1)
    {
      v6 = (v54 + 1);
      LODWORD(v7) = *v54;
      if ((*v54 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = (v7 + (*v6 << 7) - 128);
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v54, v7);
      v54 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
LABEL_7:
      v8 = v7 >> 3;
      if (v7 >> 3 <= 3)
      {
        if (v8 == 1)
        {
          if (v7 != 10)
          {
            goto LABEL_90;
          }

          *(a1 + 40) |= 2u;
          v30 = *(a1 + 152);
          if (!v30)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v32 = MEMORY[0x277C97B90](v31);
            LODWORD(v30) = v32;
            *(a1 + 152) = v32;
LABEL_85:
            v6 = v54;
          }
        }

        else
        {
          if (v8 != 2)
          {
            if (v8 != 3 || v7 != 26)
            {
              goto LABEL_90;
            }

            v19 = v6 - 1;
            while (2)
            {
              v20 = (v19 + 1);
              v54 = (v19 + 1);
              v21 = *(a1 + 64);
              if (!v21)
              {
LABEL_33:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                v21 = *(a1 + 64);
                v22 = *v21;
                goto LABEL_34;
              }

              v27 = *(a1 + 56);
              v22 = *v21;
              if (v27 >= *v21)
              {
                if (v22 == *(a1 + 60))
                {
                  goto LABEL_33;
                }

LABEL_34:
                *v21 = v22 + 1;
                v23 = MEMORY[0x277C97B90](*(a1 + 48));
                LODWORD(v24) = v23;
                v25 = *(a1 + 56);
                v26 = *(a1 + 64) + 8 * v25;
                *(a1 + 56) = v25 + 1;
                *(v26 + 8) = v23;
                v20 = v54;
              }

              else
              {
                *(a1 + 56) = v27 + 1;
                v24 = *&v21[2 * v27 + 2];
              }

              v19 = sub_2764ADCBC(a3, v24, v20);
              v54 = v19;
              if (!v19)
              {
                return 0;
              }

              if (*a3 <= v19 || *v19 != 26)
              {
                goto LABEL_88;
              }

              continue;
            }
          }

          if (v7 != 18)
          {
            goto LABEL_90;
          }

          *(a1 + 40) |= 4u;
          v30 = *(a1 + 160);
          if (!v30)
          {
            v51 = *(a1 + 8);
            if (v51)
            {
              v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
            }

            v52 = MEMORY[0x277C97B90](v51);
            LODWORD(v30) = v52;
            *(a1 + 160) = v52;
            goto LABEL_85;
          }
        }

        v28 = sub_2764ADCBC(a3, v30, v6);
        goto LABEL_87;
      }

      if (v7 >> 3 > 5)
      {
        if (v8 != 6)
        {
          if (v8 == 7 && v7 == 58)
          {
            *(a1 + 40) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v28 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_87;
          }

          goto LABEL_90;
        }

        if (v7 != 50)
        {
          goto LABEL_90;
        }

        v42 = v6 - 1;
        while (2)
        {
          v43 = (v42 + 1);
          v54 = (v42 + 1);
          v44 = *(a1 + 136);
          if (!v44)
          {
LABEL_70:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
            v44 = *(a1 + 136);
            v45 = *v44;
            goto LABEL_71;
          }

          v50 = *(a1 + 128);
          v45 = *v44;
          if (v50 >= *v44)
          {
            if (v45 == *(a1 + 132))
            {
              goto LABEL_70;
            }

LABEL_71:
            *v44 = v45 + 1;
            v46 = MEMORY[0x277C97B90](*(a1 + 120));
            LODWORD(v47) = v46;
            v48 = *(a1 + 128);
            v49 = *(a1 + 136) + 8 * v48;
            *(a1 + 128) = v48 + 1;
            *(v49 + 8) = v46;
            v43 = v54;
          }

          else
          {
            *(a1 + 128) = v50 + 1;
            v47 = *&v44[2 * v50 + 2];
          }

          v42 = sub_2764ADCBC(a3, v47, v43);
          v54 = v42;
          if (!v42)
          {
            return 0;
          }

          if (*a3 <= v42 || *v42 != 50)
          {
            goto LABEL_88;
          }

          continue;
        }
      }

      if (v8 != 4)
      {
        if (v8 == 5 && v7 == 42)
        {
          v9 = v6 - 1;
          while (1)
          {
            v10 = (v9 + 1);
            v54 = (v9 + 1);
            v11 = *(a1 + 112);
            if (!v11)
            {
              goto LABEL_14;
            }

            v17 = *(a1 + 104);
            v12 = *v11;
            if (v17 < *v11)
            {
              *(a1 + 104) = v17 + 1;
              v14 = *&v11[2 * v17 + 2];
              goto LABEL_18;
            }

            if (v12 == *(a1 + 108))
            {
LABEL_14:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v11 = *(a1 + 112);
              v12 = *v11;
            }

            *v11 = v12 + 1;
            v13 = MEMORY[0x277C97B90](*(a1 + 96));
            LODWORD(v14) = v13;
            v15 = *(a1 + 104);
            v16 = *(a1 + 112) + 8 * v15;
            *(a1 + 104) = v15 + 1;
            *(v16 + 8) = v13;
            v10 = v54;
LABEL_18:
            v9 = sub_2764ADCBC(a3, v14, v10);
            v54 = v9;
            if (!v9)
            {
              return 0;
            }

            if (*a3 <= v9 || *v9 != 42)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_90;
      }

      if (v7 == 34)
      {
        v33 = v6 - 1;
        while (1)
        {
          v34 = (v33 + 1);
          v54 = (v33 + 1);
          v35 = *(a1 + 88);
          if (!v35)
          {
            goto LABEL_57;
          }

          v41 = *(a1 + 80);
          v36 = *v35;
          if (v41 < *v35)
          {
            *(a1 + 80) = v41 + 1;
            v38 = *&v35[2 * v41 + 2];
            goto LABEL_61;
          }

          if (v36 == *(a1 + 84))
          {
LABEL_57:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v35 = *(a1 + 88);
            v36 = *v35;
          }

          *v35 = v36 + 1;
          v37 = MEMORY[0x277C97B90](*(a1 + 72));
          LODWORD(v38) = v37;
          v39 = *(a1 + 80);
          v40 = *(a1 + 88) + 8 * v39;
          *(a1 + 80) = v39 + 1;
          *(v40 + 8) = v37;
          v34 = v54;
LABEL_61:
          v33 = sub_2764ADCBC(a3, v38, v34);
          v54 = v33;
          if (!v33)
          {
            return 0;
          }

          if (*a3 <= v33 || *v33 != 34)
          {
            goto LABEL_88;
          }
        }
      }

LABEL_90:
      if (v7)
      {
        v53 = (v7 & 7) == 4;
      }

      else
      {
        v53 = 1;
      }

      if (v53)
      {
        *(a3 + 80) = v7 - 1;
        return v54;
      }

      if (v7 >> 7 < 0x271)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v28 = google::protobuf::internal::UnknownFieldParse();
      }

      else
      {
        v28 = google::protobuf::internal::ExtensionSet::ParseField();
      }

LABEL_87:
      v54 = v28;
      if (!v28)
      {
        return 0;
      }

LABEL_88:
      if (sub_2763D4D98(a3, &v54))
      {
        return v54;
      }
    }

    v6 = (v54 + 2);
LABEL_6:
    v54 = v6;
    goto LABEL_7;
  }

  return v54;
}

uint64_t TSCH::ChartStylePreset::_InternalSerialize(TSCH::ChartStylePreset *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 19);
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

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 20);
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

  v19 = *(this + 14);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v21 = *(*(this + 8) + 8 * i + 8);
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

  v27 = *(this + 20);
  if (v27)
  {
    for (j = 0; j != v27; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v29 = *(*(this + 11) + 8 * j + 8);
      *v4 = 34;
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
    }
  }

  v35 = *(this + 26);
  if (v35)
  {
    for (k = 0; k != v35; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v37 = *(*(this + 14) + 8 * k + 8);
      *v4 = 42;
      v38 = *(v37 + 5);
      if (v38 > 0x7F)
      {
        v4[1] = v38 | 0x80;
        v40 = v38 >> 7;
        if (v38 >> 14)
        {
          v39 = v4 + 3;
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
          v4[2] = v40;
          v39 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v38;
        v39 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v37, v39, a3);
    }
  }

  v43 = *(this + 32);
  if (v43)
  {
    for (m = 0; m != v43; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v45 = *(*(this + 17) + 8 * m + 8);
      *v4 = 50;
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
    }
  }

  if (v6)
  {
    v4 = sub_2763DD938(a3, 7, (*(this + 18) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 10000, 0x20000000, v4, a3);
  v52 = *(this + 1);
  if (v52)
  {

    return MEMORY[0x2821EAC40]((v52 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

uint64_t TSCH::ChartStylePreset::ByteSizeLong(TSCH::ChartStylePreset *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 14);
  v4 = v2 + v3;
  v5 = *(this + 8);
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

  v10 = *(this + 20);
  v11 = v4 + v10;
  v12 = *(this + 11);
  if (v12)
  {
    v13 = (v12 + 8);
  }

  else
  {
    v13 = 0;
  }

  if (v10)
  {
    v14 = 8 * v10;
    do
    {
      v15 = *v13++;
      v16 = TSP::Reference::ByteSizeLong(v15);
      v11 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      v14 -= 8;
    }

    while (v14);
  }

  v17 = *(this + 26);
  v18 = v11 + v17;
  v19 = *(this + 14);
  if (v19)
  {
    v20 = (v19 + 8);
  }

  else
  {
    v20 = 0;
  }

  if (v17)
  {
    v21 = 8 * v17;
    do
    {
      v22 = *v20++;
      v23 = TSP::Reference::ByteSizeLong(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(this + 32);
  v25 = v18 + v24;
  v26 = *(this + 17);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = TSP::Reference::ByteSizeLong(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(this + 10);
  if ((v31 & 7) != 0)
  {
    if (v31)
    {
      v34 = *(this + 18) & 0xFFFFFFFFFFFFFFFELL;
      v35 = *(v34 + 23);
      v36 = *(v34 + 8);
      if ((v35 & 0x80u) == 0)
      {
        v36 = v35;
      }

      v25 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v31 & 2) == 0)
      {
LABEL_28:
        if ((v31 & 4) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    else if ((v31 & 2) == 0)
    {
      goto LABEL_28;
    }

    v37 = TSP::Reference::ByteSizeLong(*(this + 19));
    v25 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v31 & 4) != 0)
    {
LABEL_29:
      v32 = TSP::Reference::ByteSizeLong(*(this + 20));
      v25 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_30:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 11) = v25;
    return v25;
  }
}

uint64_t TSCH::ChartStylePreset::MergeFrom(TSCH::ChartStylePreset *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartStylePreset::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartStylePreset::MergeFrom(TSCH::ChartStylePreset *this, const TSCH::ChartStylePreset *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    result = sub_2763F8D40(this + 48, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 20);
  if (v11)
  {
    v12 = *(a2 + 11);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    result = sub_2763F8D40(this + 72, v13, (v12 + 8), v11, **(this + 11) - *(this + 20));
    v14 = *(this + 20) + v11;
    *(this + 20) = v14;
    v15 = *(this + 11);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 26);
  if (v16)
  {
    v17 = *(a2 + 14);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    result = sub_2763F8D40(this + 96, v18, (v17 + 8), v16, **(this + 14) - *(this + 26));
    v19 = *(this + 26) + v16;
    *(this + 26) = v19;
    v20 = *(this + 14);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 32);
  if (v21)
  {
    v22 = *(a2 + 17);
    v23 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120));
    result = sub_2763F8D40(this + 120, v23, (v22 + 8), v21, **(this + 17) - *(this + 32));
    v24 = *(this + 32) + v21;
    *(this + 32) = v24;
    v25 = *(this + 17);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 10);
  if ((v26 & 7) != 0)
  {
    if (v26)
    {
      *(this + 10) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v27 = MEMORY[0x277D80A18];
    if ((v26 & 2) != 0)
    {
      *(this + 10) |= 2u;
      v28 = *(this + 19);
      if (!v28)
      {
        v29 = *(this + 1);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = MEMORY[0x277C97B90](v29);
        *(this + 19) = v28;
      }

      if (*(a2 + 19))
      {
        v30 = *(a2 + 19);
      }

      else
      {
        v30 = v27;
      }

      result = TSP::Reference::MergeFrom(v28, v30);
    }

    if ((v26 & 4) != 0)
    {
      *(this + 10) |= 4u;
      v31 = *(this + 20);
      if (!v31)
      {
        v32 = *(this + 1);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = MEMORY[0x277C97B90](v32);
        *(this + 20) = v31;
      }

      if (*(a2 + 20))
      {
        v33 = *(a2 + 20);
      }

      else
      {
        v33 = v27;
      }

      return TSP::Reference::MergeFrom(v31, v33);
    }
  }

  return result;
}

TSCH::ChartStylePreset *TSCH::ChartStylePreset::CopyFrom(TSCH::ChartStylePreset *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartStylePreset::Clear(this);

    return TSCH::ChartStylePreset::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::ChartStylePreset *TSCH::ChartStylePreset::CopyFrom(TSCH::ChartStylePreset *this, const TSCH::ChartStylePreset *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartStylePreset::Clear(this);

    return TSCH::ChartStylePreset::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::ChartStylePreset::IsInitialized(TSCH::ChartStylePreset *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    v3 = *(this + 14);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      IsInitialized = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v3));
      v3 = v4;
      if ((IsInitialized & 1) == 0)
      {
        return 0;
      }
    }

    v6 = *(this + 20);
    while (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = TSP::Reference::IsInitialized(*(*(this + 11) + 8 * v6));
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
      v11 = TSP::Reference::IsInitialized(*(*(this + 14) + 8 * v9));
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
      v14 = TSP::Reference::IsInitialized(*(*(this + 17) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(this + 10);
    if ((v15 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 19));
      if (!result)
      {
        return result;
      }

      v15 = *(this + 10);
    }

    if ((v15 & 4) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 20));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCH::ChartStylePreset::InternalSwap(TSCH::ChartStylePreset *this, TSCH::ChartStylePreset *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2763948BC(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 7);
  v6 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v5;
  *(a2 + 8) = v6;
  v7 = *(this + 10);
  v8 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v7;
  *(a2 + 11) = v8;
  v9 = *(this + 13);
  v10 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v9;
  *(a2 + 14) = v10;
  v11 = *(this + 16);
  v12 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v11;
  *(a2 + 17) = v12;
  v13 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v13;
  v14 = *(this + 19);
  v15 = *(this + 20);
  result = *(a2 + 152);
  *(this + 152) = result;
  *(a2 + 19) = v14;
  *(a2 + 20) = v15;
  return result;
}

uint64_t TSCH::ChartPresetsArchive::clear_chart_presets(uint64_t this)
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

TSCH::ChartPresetsArchive *TSCH::ChartPresetsArchive::ChartPresetsArchive(TSCH::ChartPresetsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520D08;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ChartPresetsArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCH::ChartPresetsArchive *TSCH::ChartPresetsArchive::ChartPresetsArchive(TSCH::ChartPresetsArchive *this, const TSCH::ChartPresetsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288520D08;
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

void TSCH::ChartPresetsArchive::~ChartPresetsArchive(TSCH::ChartPresetsArchive *this)
{
  sub_2763941F4(this + 1);
  sub_276478328(this + 2);
}

{
  TSCH::ChartPresetsArchive::~ChartPresetsArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartPresetsArchive::default_instance(TSCH::ChartPresetsArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartPresetsArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartPresetsArchive_default_instance_;
}

uint64_t *TSCH::ChartPresetsArchive::Clear(uint64_t *this)
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

google::protobuf::internal *TSCH::ChartPresetsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSCH::ChartPresetsArchive::_InternalSerialize(TSCH::ChartPresetsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCH::ChartPresetsArchive::ByteSizeLong(TSCH::ChartPresetsArchive *this)
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

uint64_t TSCH::ChartPresetsArchive::MergeFrom(TSCH::ChartPresetsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartPresetsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartPresetsArchive::MergeFrom(uint64_t this, const TSCH::ChartPresetsArchive *a2)
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

uint64_t *TSCH::ChartPresetsArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartPresetsArchive::Clear(this);

    return TSCH::ChartPresetsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartPresetsArchive::CopyFrom(uint64_t *this, const TSCH::ChartPresetsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartPresetsArchive::Clear(this);

    return TSCH::ChartPresetsArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCH::ChartPresetsArchive::IsInitialized(TSCH::ChartPresetsArchive *this)
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

__n128 TSCH::ChartPresetsArchive::InternalSwap(TSCH::ChartPresetsArchive *this, TSCH::ChartPresetsArchive *a2)
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

TSP::Reference *TSCH::PropertyValueStorageContainerArchive::clear_chart_style(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~1u;
  return result;
}

TSP::Reference *TSCH::PropertyValueStorageContainerArchive::clear_chart_nonstyle(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~2u;
  return result;
}

TSP::Reference *TSCH::PropertyValueStorageContainerArchive::clear_legend_style(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~4u;
  return result;
}

TSP::Reference *TSCH::PropertyValueStorageContainerArchive::clear_legend_nonstyle(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~8u;
  return result;
}

TSP::SparseReferenceArray *TSCH::PropertyValueStorageContainerArchive::clear_value_axis_styles(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 10) &= ~0x10u;
  return result;
}

TSP::SparseReferenceArray *TSCH::PropertyValueStorageContainerArchive::clear_value_axis_nonstyles(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 10) &= ~0x20u;
  return result;
}

TSP::SparseReferenceArray *TSCH::PropertyValueStorageContainerArchive::clear_category_axis_styles(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 10) &= ~0x40u;
  return result;
}

TSP::SparseReferenceArray *TSCH::PropertyValueStorageContainerArchive::clear_category_axis_nonstyles(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 10) &= ~0x80u;
  return result;
}

TSP::SparseReferenceArray *TSCH::PropertyValueStorageContainerArchive::clear_series_theme_styles(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 10) &= ~0x100u;
  return result;
}

TSP::SparseReferenceArray *TSCH::PropertyValueStorageContainerArchive::clear_series_private_styles(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 10) &= ~0x200u;
  return result;
}

TSP::SparseReferenceArray *TSCH::PropertyValueStorageContainerArchive::clear_series_nonstyles(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 10) &= ~0x400u;
  return result;
}

TSP::SparseReferenceArray *TSCH::PropertyValueStorageContainerArchive::clear_paragraph_styles(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 10) &= ~0x800u;
  return result;
}

TSCH::PropertyValueStorageContainerArchive *TSCH::PropertyValueStorageContainerArchive::PropertyValueStorageContainerArchive(TSCH::PropertyValueStorageContainerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520DB8;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_PropertyValueStorageContainerArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

TSCH::PropertyValueStorageContainerArchive *TSCH::PropertyValueStorageContainerArchive::PropertyValueStorageContainerArchive(TSCH::PropertyValueStorageContainerArchive *this, const TSCH::PropertyValueStorageContainerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_288520DB8;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 11) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2763D4F88(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  if ((v6 & 8) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v6 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v6 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v6 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v6 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v6 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v6 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v6 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v6 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  return this;
}

void sub_2763E6348(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v2, 0x10A1C40D5D207CCLL);
  MEMORY[0x277C97D50](v1);
  _Unwind_Resume(a1);
}

void TSCH::PropertyValueStorageContainerArchive::~PropertyValueStorageContainerArchive(TSCH::PropertyValueStorageContainerArchive *this)
{
  sub_2763E63FC(this);
  sub_2763941F4(this + 1);
  MEMORY[0x277C97D50](this + 16);
}

{
  TSCH::PropertyValueStorageContainerArchive::~PropertyValueStorageContainerArchive(this);

  JUMPOUT(0x277C98580);
}

uint64_t sub_2763E63FC(uint64_t result)
{
  if (result != &TSCH::_PropertyValueStorageContainerArchive_default_instance_)
  {
    v1 = result;
    v2 = *(result + 48);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }

    v3 = v1[7];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C98580]();
    }

    v4 = v1[8];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[9];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C98580]();
    }

    if (v1[10])
    {
      v6 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v6, 0x10A1C40D5D207CCLL);
    }

    if (v1[11])
    {
      v7 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v7, 0x10A1C40D5D207CCLL);
    }

    if (v1[12])
    {
      v8 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v8, 0x10A1C40D5D207CCLL);
    }

    if (v1[13])
    {
      v9 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v9, 0x10A1C40D5D207CCLL);
    }

    if (v1[14])
    {
      v10 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v10, 0x10A1C40D5D207CCLL);
    }

    if (v1[15])
    {
      v11 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v11, 0x10A1C40D5D207CCLL);
    }

    if (v1[16])
    {
      v12 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v12, 0x10A1C40D5D207CCLL);
    }

    result = v1[17];
    if (result)
    {
      MEMORY[0x277C97490]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void *TSCH::PropertyValueStorageContainerArchive::default_instance(TSCH::PropertyValueStorageContainerArchive *this)
{
  if (atomic_load_explicit(scc_info_PropertyValueStorageContainerArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_PropertyValueStorageContainerArchive_default_instance_;
}

uint64_t *TSCH::PropertyValueStorageContainerArchive::Clear(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v3 = *(this + 10);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    result = TSP::Reference::Clear(*(this + 6));
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = TSP::Reference::Clear(*(this + 7));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = TSP::Reference::Clear(*(this + 8));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = TSP::Reference::Clear(*(this + 9));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_26:
    result = TSP::SparseReferenceArray::Clear(*(this + 11));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = TSP::SparseReferenceArray::Clear(*(this + 10));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_27:
  result = TSP::SparseReferenceArray::Clear(*(this + 12));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = TSP::SparseReferenceArray::Clear(*(this + 13));
  }

LABEL_11:
  if ((v3 & 0xF00) == 0)
  {
    goto LABEL_17;
  }

  if ((v3 & 0x100) != 0)
  {
    result = TSP::SparseReferenceArray::Clear(*(this + 14));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = TSP::SparseReferenceArray::Clear(*(this + 15));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_31:
  result = TSP::SparseReferenceArray::Clear(*(this + 16));
  if ((v3 & 0x800) != 0)
  {
LABEL_16:
    result = TSP::SparseReferenceArray::Clear(*(this + 17));
  }

LABEL_17:
  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_2763D4FD4(v4);
  }

  return result;
}

google::protobuf::internal *TSCH::PropertyValueStorageContainerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  if ((sub_2763D4D98(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v6 = (v39 + 1);
      LODWORD(v7) = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = (v7 + (*v6 << 7) - 128);
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, v7);
      v39 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
LABEL_7:
      v8 = v7 >> 3;
      if (v7 >> 3 > 6)
      {
        if (v7 >> 3 > 9)
        {
          if (v8 == 10)
          {
            if (v7 == 82)
            {
              *(a1 + 40) |= 0x200u;
              v13 = *(a1 + 120);
              if (v13)
              {
                goto LABEL_90;
              }

              v27 = *(a1 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v28 = MEMORY[0x277C97B20](v27);
              LODWORD(v13) = v28;
              *(a1 + 120) = v28;
LABEL_89:
              v6 = v39;
              goto LABEL_90;
            }
          }

          else if (v8 == 11)
          {
            if (v7 == 90)
            {
              *(a1 + 40) |= 0x400u;
              v13 = *(a1 + 128);
              if (v13)
              {
                goto LABEL_90;
              }

              v36 = *(a1 + 8);
              if (v36)
              {
                v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
              }

              v37 = MEMORY[0x277C97B20](v36);
              LODWORD(v13) = v37;
              *(a1 + 128) = v37;
              goto LABEL_89;
            }
          }

          else if (v8 == 12 && v7 == 98)
          {
            *(a1 + 40) |= 0x800u;
            v13 = *(a1 + 136);
            if (!v13)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v19 = MEMORY[0x277C97B20](v18);
              LODWORD(v13) = v19;
              *(a1 + 136) = v19;
              goto LABEL_89;
            }

LABEL_90:
            v31 = sub_2764B09E4(a3, v13, v6);
            goto LABEL_91;
          }
        }

        else if (v8 == 7)
        {
          if (v7 == 58)
          {
            *(a1 + 40) |= 0x40u;
            v13 = *(a1 + 96);
            if (!v13)
            {
              v23 = *(a1 + 8);
              if (v23)
              {
                v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
              }

              v24 = MEMORY[0x277C97B20](v23);
              LODWORD(v13) = v24;
              *(a1 + 96) = v24;
              goto LABEL_89;
            }

            goto LABEL_90;
          }
        }

        else if (v8 == 8)
        {
          if (v7 == 66)
          {
            *(a1 + 40) |= 0x80u;
            v13 = *(a1 + 104);
            if (!v13)
            {
              v32 = *(a1 + 8);
              if (v32)
              {
                v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
              }

              v33 = MEMORY[0x277C97B20](v32);
              LODWORD(v13) = v33;
              *(a1 + 104) = v33;
              goto LABEL_89;
            }

            goto LABEL_90;
          }
        }

        else if (v8 == 9 && v7 == 74)
        {
          *(a1 + 40) |= 0x100u;
          v13 = *(a1 + 112);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277C97B20](v14);
            LODWORD(v13) = v15;
            *(a1 + 112) = v15;
            goto LABEL_89;
          }

          goto LABEL_90;
        }
      }

      else if (v7 >> 3 > 3)
      {
        if (v8 == 4)
        {
          if (v7 == 34)
          {
            *(a1 + 40) |= 8u;
            v10 = *(a1 + 72);
            if (v10)
            {
              goto LABEL_73;
            }

            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v26 = MEMORY[0x277C97B90](v25);
            LODWORD(v10) = v26;
            *(a1 + 72) = v26;
            goto LABEL_72;
          }
        }

        else if (v8 == 5)
        {
          if (v7 == 42)
          {
            *(a1 + 40) |= 0x10u;
            v13 = *(a1 + 80);
            if (!v13)
            {
              v34 = *(a1 + 8);
              if (v34)
              {
                v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
              }

              v35 = MEMORY[0x277C97B20](v34);
              LODWORD(v13) = v35;
              *(a1 + 80) = v35;
              goto LABEL_89;
            }

            goto LABEL_90;
          }
        }

        else if (v8 == 6 && v7 == 50)
        {
          *(a1 + 40) |= 0x20u;
          v13 = *(a1 + 88);
          if (!v13)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = MEMORY[0x277C97B20](v16);
            LODWORD(v13) = v17;
            *(a1 + 88) = v17;
            goto LABEL_89;
          }

          goto LABEL_90;
        }
      }

      else if (v8 == 1)
      {
        if (v7 == 10)
        {
          *(a1 + 40) |= 1u;
          v10 = *(a1 + 48);
          if (v10)
          {
            goto LABEL_73;
          }

          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97B90](v21);
          LODWORD(v10) = v22;
          *(a1 + 48) = v22;
LABEL_72:
          v6 = v39;
          goto LABEL_73;
        }
      }

      else if (v8 == 2)
      {
        if (v7 == 18)
        {
          *(a1 + 40) |= 2u;
          v10 = *(a1 + 56);
          if (v10)
          {
            goto LABEL_73;
          }

          v29 = *(a1 + 8);
          if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
          }

          v30 = MEMORY[0x277C97B90](v29);
          LODWORD(v10) = v30;
          *(a1 + 56) = v30;
          goto LABEL_72;
        }
      }

      else if (v8 == 3 && v7 == 26)
      {
        *(a1 + 40) |= 4u;
        v10 = *(a1 + 64);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C97B90](v11);
          LODWORD(v10) = v12;
          *(a1 + 64) = v12;
          goto LABEL_72;
        }

LABEL_73:
        v31 = sub_2764ADCBC(a3, v10, v6);
        goto LABEL_91;
      }

      if (v7)
      {
        v38 = (v7 & 7) == 4;
      }

      else
      {
        v38 = 1;
      }

      if (v38)
      {
        *(a3 + 80) = v7 - 1;
        return v39;
      }

      if (v7 >> 7 < 0x271)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v31 = google::protobuf::internal::UnknownFieldParse();
      }

      else
      {
        v31 = google::protobuf::internal::ExtensionSet::ParseField();
      }

LABEL_91:
      v39 = v31;
      if (!v31)
      {
        return 0;
      }

      if (sub_2763D4D98(a3, &v39))
      {
        return v39;
      }
    }

    v6 = (v39 + 2);
LABEL_6:
    v39 = v6;
    goto LABEL_7;
  }

  return v39;
}

uint64_t TSCH::PropertyValueStorageContainerArchive::_InternalSerialize(TSCH::PropertyValueStorageContainerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
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

  v4 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_34:
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

  v4 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_44:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 9);
  *v4 = 34;
  v26 = *(v25 + 5);
  if (v26 > 0x7F)
  {
    v4[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = v4 + 3;
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
      v4[2] = v28;
      v27 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v26;
    v27 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_64;
  }

LABEL_54:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v31 = *(this + 10);
  *v4 = 42;
  v32 = *(v31 + 5);
  if (v32 > 0x7F)
  {
    v4[1] = v32 | 0x80;
    v34 = v32 >> 7;
    if (v32 >> 14)
    {
      v33 = v4 + 3;
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
      v4[2] = v34;
      v33 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v32;
    v33 = v4 + 2;
  }

  v4 = TSP::SparseReferenceArray::_InternalSerialize(v31, v33, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_74;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(this + 11);
  *v4 = 50;
  v38 = *(v37 + 5);
  if (v38 > 0x7F)
  {
    v4[1] = v38 | 0x80;
    v40 = v38 >> 7;
    if (v38 >> 14)
    {
      v39 = v4 + 3;
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
      v4[2] = v40;
      v39 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v38;
    v39 = v4 + 2;
  }

  v4 = TSP::SparseReferenceArray::_InternalSerialize(v37, v39, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_84;
  }

LABEL_74:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v43 = *(this + 12);
  *v4 = 58;
  v44 = *(v43 + 5);
  if (v44 > 0x7F)
  {
    v4[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = v4 + 3;
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
      v4[2] = v46;
      v45 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v44;
    v45 = v4 + 2;
  }

  v4 = TSP::SparseReferenceArray::_InternalSerialize(v43, v45, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_94;
  }

LABEL_84:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v49 = *(this + 13);
  *v4 = 66;
  v50 = *(v49 + 5);
  if (v50 > 0x7F)
  {
    v4[1] = v50 | 0x80;
    v52 = v50 >> 7;
    if (v50 >> 14)
    {
      v51 = v4 + 3;
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
      v4[2] = v52;
      v51 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v50;
    v51 = v4 + 2;
  }

  v4 = TSP::SparseReferenceArray::_InternalSerialize(v49, v51, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_104;
  }

LABEL_94:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v55 = *(this + 14);
  *v4 = 74;
  v56 = *(v55 + 5);
  if (v56 > 0x7F)
  {
    v4[1] = v56 | 0x80;
    v58 = v56 >> 7;
    if (v56 >> 14)
    {
      v57 = v4 + 3;
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
      v4[2] = v58;
      v57 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v56;
    v57 = v4 + 2;
  }

  v4 = TSP::SparseReferenceArray::_InternalSerialize(v55, v57, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_114;
  }

LABEL_104:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v61 = *(this + 15);
  *v4 = 82;
  v62 = *(v61 + 5);
  if (v62 > 0x7F)
  {
    v4[1] = v62 | 0x80;
    v64 = v62 >> 7;
    if (v62 >> 14)
    {
      v63 = v4 + 3;
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
      v4[2] = v64;
      v63 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v62;
    v63 = v4 + 2;
  }

  v4 = TSP::SparseReferenceArray::_InternalSerialize(v61, v63, a3);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_124;
  }

LABEL_114:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v67 = *(this + 16);
  *v4 = 90;
  v68 = *(v67 + 5);
  if (v68 > 0x7F)
  {
    v4[1] = v68 | 0x80;
    v70 = v68 >> 7;
    if (v68 >> 14)
    {
      v69 = v4 + 3;
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
      v4[2] = v70;
      v69 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v68;
    v69 = v4 + 2;
  }

  v4 = TSP::SparseReferenceArray::_InternalSerialize(v67, v69, a3);
  if ((v6 & 0x800) != 0)
  {
LABEL_124:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v73 = *(this + 17);
    *v4 = 98;
    v74 = *(v73 + 5);
    if (v74 > 0x7F)
    {
      v4[1] = v74 | 0x80;
      v76 = v74 >> 7;
      if (v74 >> 14)
      {
        v75 = v4 + 3;
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
        v4[2] = v76;
        v75 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v74;
      v75 = v4 + 2;
    }

    v4 = TSP::SparseReferenceArray::_InternalSerialize(v73, v75, a3);
  }

LABEL_134:
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 10000, 0x20000000, v4, a3);
  v80 = *(this + 1);
  if (v80)
  {

    return MEMORY[0x2821EAC40]((v80 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

uint64_t TSCH::PropertyValueStorageContainerArchive::ByteSizeLong(TSCH::PropertyValueStorageContainerArchive *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 10);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v7 = TSP::Reference::ByteSizeLong(*(this + 6));
    v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

  v8 = TSP::Reference::ByteSizeLong(*(this + 7));
  v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = TSP::Reference::ByteSizeLong(*(this + 8));
  v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = TSP::Reference::ByteSizeLong(*(this + 9));
  v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_24:
    v12 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 11));
    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_23:
  v11 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 10));
  v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_25:
  v13 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 12));
  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    v4 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 13));
    v2 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
  if ((v3 & 0xF00) == 0)
  {
    goto LABEL_17;
  }

  if ((v3 & 0x100) != 0)
  {
    v14 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 14));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  v15 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 15));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_29:
  v16 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 16));
  v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 0x800) != 0)
  {
LABEL_16:
    v5 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 17));
    v2 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
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

uint64_t TSCH::PropertyValueStorageContainerArchive::MergeFrom(TSCH::PropertyValueStorageContainerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::PropertyValueStorageContainerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::PropertyValueStorageContainerArchive::MergeFrom(TSCH::PropertyValueStorageContainerArchive *this, const TSCH::PropertyValueStorageContainerArchive *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 10);
  if (!v6)
  {
    goto LABEL_78;
  }

  v7 = MEMORY[0x277D80A18];
  if (v6)
  {
    *(this + 10) |= 1u;
    v8 = *(this + 6);
    if (!v8)
    {
      v9 = *(this + 1);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = MEMORY[0x277C97B90](v9);
      *(this + 6) = v8;
    }

    if (*(a2 + 6))
    {
      v10 = *(a2 + 6);
    }

    else
    {
      v10 = v7;
    }

    result = TSP::Reference::MergeFrom(v8, v10);
    if ((v6 & 2) == 0)
    {
LABEL_6:
      if ((v6 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 10) |= 2u;
  v11 = *(this + 7);
  if (!v11)
  {
    v12 = *(this + 1);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = MEMORY[0x277C97B90](v12);
    *(this + 7) = v11;
  }

  if (*(a2 + 7))
  {
    v13 = *(a2 + 7);
  }

  else
  {
    v13 = v7;
  }

  result = TSP::Reference::MergeFrom(v11, v13);
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

LABEL_25:
  *(this + 10) |= 4u;
  v14 = *(this + 8);
  if (!v14)
  {
    v15 = *(this + 1);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = MEMORY[0x277C97B90](v15);
    *(this + 8) = v14;
  }

  if (*(a2 + 8))
  {
    v16 = *(a2 + 8);
  }

  else
  {
    v16 = v7;
  }

  result = TSP::Reference::MergeFrom(v14, v16);
  if ((v6 & 8) != 0)
  {
LABEL_33:
    *(this + 10) |= 8u;
    v17 = *(this + 9);
    if (!v17)
    {
      v18 = *(this + 1);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C97B90](v18);
      *(this + 9) = v17;
    }

    if (*(a2 + 9))
    {
      v19 = *(a2 + 9);
    }

    else
    {
      v19 = v7;
    }

    result = TSP::Reference::MergeFrom(v17, v19);
  }

LABEL_41:
  v20 = MEMORY[0x277D80A68];
  if ((v6 & 0x10) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_43;
    }

LABEL_54:
    *(this + 10) |= 0x20u;
    v24 = *(this + 11);
    if (!v24)
    {
      v25 = *(this + 1);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277C97B20](v25);
      *(this + 11) = v24;
    }

    if (*(a2 + 11))
    {
      v26 = *(a2 + 11);
    }

    else
    {
      v26 = v20;
    }

    result = TSP::SparseReferenceArray::MergeFrom(v24, v26);
    if ((v6 & 0x40) == 0)
    {
LABEL_44:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_70;
    }

    goto LABEL_62;
  }

  *(this + 10) |= 0x10u;
  v21 = *(this + 10);
  if (!v21)
  {
    v22 = *(this + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = MEMORY[0x277C97B20](v22);
    *(this + 10) = v21;
  }

  if (*(a2 + 10))
  {
    v23 = *(a2 + 10);
  }

  else
  {
    v23 = v20;
  }

  result = TSP::SparseReferenceArray::MergeFrom(v21, v23);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_43:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_44;
  }

LABEL_62:
  *(this + 10) |= 0x40u;
  v27 = *(this + 12);
  if (!v27)
  {
    v28 = *(this + 1);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v27 = MEMORY[0x277C97B20](v28);
    *(this + 12) = v27;
  }

  if (*(a2 + 12))
  {
    v29 = *(a2 + 12);
  }

  else
  {
    v29 = v20;
  }

  result = TSP::SparseReferenceArray::MergeFrom(v27, v29);
  if ((v6 & 0x80) != 0)
  {
LABEL_70:
    *(this + 10) |= 0x80u;
    v30 = *(this + 13);
    if (!v30)
    {
      v31 = *(this + 1);
      if (v31)
      {
        v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
      }

      v30 = MEMORY[0x277C97B20](v31);
      *(this + 13) = v30;
    }

    if (*(a2 + 13))
    {
      v32 = *(a2 + 13);
    }

    else
    {
      v32 = v20;
    }

    result = TSP::SparseReferenceArray::MergeFrom(v30, v32);
  }

LABEL_78:
  if ((v6 & 0xF00) == 0)
  {
    return result;
  }

  if ((v6 & 0x100) != 0)
  {
    *(this + 10) |= 0x100u;
    v33 = *(this + 14);
    if (!v33)
    {
      v34 = *(this + 1);
      if (v34)
      {
        v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
      }

      v33 = MEMORY[0x277C97B20](v34);
      *(this + 14) = v33;
    }

    if (*(a2 + 14))
    {
      v35 = *(a2 + 14);
    }

    else
    {
      v35 = MEMORY[0x277D80A68];
    }

    result = TSP::SparseReferenceArray::MergeFrom(v33, v35);
    if ((v6 & 0x200) == 0)
    {
LABEL_81:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_82;
      }

      goto LABEL_100;
    }
  }

  else if ((v6 & 0x200) == 0)
  {
    goto LABEL_81;
  }

  *(this + 10) |= 0x200u;
  v36 = *(this + 15);
  if (!v36)
  {
    v37 = *(this + 1);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = MEMORY[0x277C97B20](v37);
    *(this + 15) = v36;
  }

  if (*(a2 + 15))
  {
    v38 = *(a2 + 15);
  }

  else
  {
    v38 = MEMORY[0x277D80A68];
  }

  result = TSP::SparseReferenceArray::MergeFrom(v36, v38);
  if ((v6 & 0x400) == 0)
  {
LABEL_82:
    if ((v6 & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_108;
  }

LABEL_100:
  *(this + 10) |= 0x400u;
  v39 = *(this + 16);
  if (!v39)
  {
    v40 = *(this + 1);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = MEMORY[0x277C97B20](v40);
    *(this + 16) = v39;
  }

  if (*(a2 + 16))
  {
    v41 = *(a2 + 16);
  }

  else
  {
    v41 = MEMORY[0x277D80A68];
  }

  result = TSP::SparseReferenceArray::MergeFrom(v39, v41);
  if ((v6 & 0x800) != 0)
  {
LABEL_108:
    *(this + 10) |= 0x800u;
    v42 = *(this + 17);
    if (!v42)
    {
      v43 = *(this + 1);
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      v42 = MEMORY[0x277C97B20](v43);
      *(this + 17) = v42;
    }

    if (*(a2 + 17))
    {
      v44 = *(a2 + 17);
    }

    else
    {
      v44 = MEMORY[0x277D80A68];
    }

    return TSP::SparseReferenceArray::MergeFrom(v42, v44);
  }

  return result;
}

TSCH::PropertyValueStorageContainerArchive *TSCH::PropertyValueStorageContainerArchive::CopyFrom(TSCH::PropertyValueStorageContainerArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::PropertyValueStorageContainerArchive::Clear(this);

    return TSCH::PropertyValueStorageContainerArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::PropertyValueStorageContainerArchive *TSCH::PropertyValueStorageContainerArchive::CopyFrom(TSCH::PropertyValueStorageContainerArchive *this, const TSCH::PropertyValueStorageContainerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::PropertyValueStorageContainerArchive::Clear(this);

    return TSCH::PropertyValueStorageContainerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::PropertyValueStorageContainerArchive::IsInitialized(TSCH::PropertyValueStorageContainerArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    v3 = *(this + 10);
    if (v3)
    {
      result = TSP::Reference::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 8) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 9));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSP::SparseReferenceArray::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSP::SparseReferenceArray::IsInitialized(*(this + 11));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSP::SparseReferenceArray::IsInitialized(*(this + 12));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSP::SparseReferenceArray::IsInitialized(*(this + 13));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 0x100) != 0)
    {
      result = TSP::SparseReferenceArray::IsInitialized(*(this + 14));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 0x200) != 0)
    {
      result = TSP::SparseReferenceArray::IsInitialized(*(this + 15));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 0x400) != 0)
    {
      result = TSP::SparseReferenceArray::IsInitialized(*(this + 16));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 10);
    }

    if ((v3 & 0x800) == 0)
    {
      return 1;
    }

    result = TSP::SparseReferenceArray::IsInitialized(*(this + 17));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCH::PropertyValueStorageContainerArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  google::protobuf::internal::ExtensionSet::Swap(&this[1], &a2[1]);
  sub_2763948BC(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[2].n128_u32[2];
  this[2].n128_u32[2] = a2[2].n128_u32[2];
  a2[2].n128_u32[2] = v4;
  v5 = this[3].n128_u64[0];
  v6 = this[3].n128_u64[1];
  this[3] = a2[3];
  a2[3].n128_u64[0] = v5;
  a2[3].n128_u64[1] = v6;
  v7 = this[4].n128_u64[0];
  v8 = this[4].n128_u64[1];
  this[4] = a2[4];
  a2[4].n128_u64[0] = v7;
  a2[4].n128_u64[1] = v8;
  v9 = this[5].n128_u64[0];
  v10 = this[5].n128_u64[1];
  this[5] = a2[5];
  a2[5].n128_u64[0] = v9;
  a2[5].n128_u64[1] = v10;
  v11 = this[6].n128_u64[0];
  v12 = this[6].n128_u64[1];
  this[6] = a2[6];
  a2[6].n128_u64[0] = v11;
  a2[6].n128_u64[1] = v12;
  v13 = this[7].n128_u64[0];
  v14 = this[7].n128_u64[1];
  this[7] = a2[7];
  a2[7].n128_u64[0] = v13;
  a2[7].n128_u64[1] = v14;
  v15 = this[8].n128_u64[0];
  v16 = this[8].n128_u64[1];
  result = a2[8];
  this[8] = result;
  a2[8].n128_u64[0] = v15;
  a2[8].n128_u64[1] = v16;
  return result;
}

TSS::StyleArchive *TSCH::StylePasteboardDataArchive::clear_super(TSCH::StylePasteboardDataArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::StyleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCH::StylePasteboardDataArchive *TSCH::StylePasteboardDataArchive::StylePasteboardDataArchive(TSCH::StylePasteboardDataArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520E68;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StylePasteboardDataArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_288520E68;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StylePasteboardDataArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

TSCH::StylePasteboardDataArchive *TSCH::StylePasteboardDataArchive::StylePasteboardDataArchive(TSCH::StylePasteboardDataArchive *this, const TSCH::StylePasteboardDataArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288520E68;
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
  *(this + 40) = *(a2 + 40);
  return this;
}

void TSCH::StylePasteboardDataArchive::~StylePasteboardDataArchive(TSCH::StylePasteboardDataArchive *this)
{
  if (this != &TSCH::_StylePasteboardDataArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C976F0]();
      MEMORY[0x277C98580](v2, 0x10A1C40AC828A93);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSCH::PropertyValueStorageContainerArchive::~PropertyValueStorageContainerArchive(v3);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(this + 1);
}

{
  TSCH::StylePasteboardDataArchive::~StylePasteboardDataArchive(this);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::StylePasteboardDataArchive::default_instance(TSCH::StylePasteboardDataArchive *this)
{
  if (atomic_load_explicit(scc_info_StylePasteboardDataArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_StylePasteboardDataArchive_default_instance_;
}

uint64_t *TSCH::StylePasteboardDataArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSS::StyleArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSCH::PropertyValueStorageContainerArchive::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return this;
}

google::protobuf::internal *TSCH::StylePasteboardDataArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v7 = (v26 + 1);
      v8 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v9 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_13;
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

            v14 = google::protobuf::Arena::CreateMaybeMessage<TSCH::PropertyValueStorageContainerArchive>(v15);
            *(a1 + 32) = v14;
            v7 = v26;
          }

          v13 = sub_2764AF9B0(a3, v14, v7);
        }

        else if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v19 = *(a1 + 24);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277C97BA0](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v26;
          }

          v13 = sub_2764AC1AC(a3, v19, v7);
        }

        else
        {
LABEL_13:
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
            sub_2763D4E10((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v26 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v17 = (v7 + 1);
      v16 = *v7;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_30:
        v26 = v17;
        *(a1 + 40) = v16 != 0;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow64(v7, v16);
      v26 = v24;
      *(a1 + 40) = v25 != 0;
      if (!v24)
      {
LABEL_44:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_2763D4D98(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v7 = (v26 + 2);
LABEL_6:
    v26 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v26;
}

unsigned __int8 *TSCH::StylePasteboardDataArchive::_InternalSerialize(TSCH::StylePasteboardDataArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSS::StyleArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_28;
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
  v13 = *(v12 + 11);
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

  a2 = TSCH::PropertyValueStorageContainerArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 40);
    *a2 = 24;
    a2[1] = v18;
    a2 += 2;
  }

LABEL_28:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::StylePasteboardDataArchive::ByteSizeLong(TSS::StyleArchive **this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v4 = 0;
    goto LABEL_9;
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

  v5 = TSS::StyleArchive::ByteSizeLong(this[3]);
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSCH::PropertyValueStorageContainerArchive::ByteSizeLong(this[4]);
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v4 = v3 + ((v2 >> 1) & 2);
LABEL_9:
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

uint64_t TSCH::StylePasteboardDataArchive::MergeFrom(TSCH::StylePasteboardDataArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::StylePasteboardDataArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::StylePasteboardDataArchive::MergeFrom(uint64_t this, const TSCH::StylePasteboardDataArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C97BA0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      this = TSS::StyleArchive::MergeFrom(v6, v8);
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
        *(v3 + 40) = *(a2 + 40);
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCH::PropertyValueStorageContainerArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSCH::_PropertyValueStorageContainerArchive_default_instance_;
    }

    this = TSCH::PropertyValueStorageContainerArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSCH::StylePasteboardDataArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::StylePasteboardDataArchive::Clear(this);

    return TSCH::StylePasteboardDataArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::StylePasteboardDataArchive::CopyFrom(uint64_t *this, const TSCH::StylePasteboardDataArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::StylePasteboardDataArchive::Clear(this);

    return TSCH::StylePasteboardDataArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::StylePasteboardDataArchive::IsInitialized(TSCH::StylePasteboardDataArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSS::StyleArchive::IsInitialized(*(this + 3));
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

  result = TSCH::PropertyValueStorageContainerArchive::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCH::StylePasteboardDataArchive::InternalSwap(TSCH::StylePasteboardDataArchive *this, TSCH::StylePasteboardDataArchive *a2)
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
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  return result;
}

TSCH::ChartSelectionPathTypeArchive *TSCH::ChartSelectionPathTypeArchive::ChartSelectionPathTypeArchive(TSCH::ChartSelectionPathTypeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520F18;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartSelectionPathTypeArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  return this;
}

TSCH::ChartSelectionPathTypeArchive *TSCH::ChartSelectionPathTypeArchive::ChartSelectionPathTypeArchive(TSCH::ChartSelectionPathTypeArchive *this, const TSCH::ChartSelectionPathTypeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288520F18;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  }

  return this;
}

void TSCH::ChartSelectionPathTypeArchive::~ChartSelectionPathTypeArchive(TSCH::ChartSelectionPathTypeArchive *this)
{
  v2 = *(this + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277C98580](v4, 0x1012C40EC159624);
  }

  sub_2763941F4(this + 1);
}

{
  TSCH::ChartSelectionPathTypeArchive::~ChartSelectionPathTypeArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartSelectionPathTypeArchive::default_instance(TSCH::ChartSelectionPathTypeArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartSelectionPathTypeArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartSelectionPathTypeArchive_default_instance_;
}

uint64_t *TSCH::ChartSelectionPathTypeArchive::Clear(TSCH::ChartSelectionPathTypeArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  v5 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v5)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

google::protobuf::internal *TSCH::ChartSelectionPathTypeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  TagFallback = a2;
  while ((sub_2763D4D98(a3, &TagFallback) & 1) == 0)
  {
    v5 = (TagFallback + 1);
    v6 = *TagFallback;
    if ((*TagFallback & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (TagFallback + 2);
LABEL_6:
      TagFallback = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(TagFallback, (v7 - 128));
    if (!TagFallback)
    {
      return 0;
    }

    v6 = v11;
LABEL_7:
    if (v6 >> 3 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_12;
      }

      *(a1 + 16) |= 2u;
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
          return TagFallback;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_23;
      }

      *(a1 + 16) |= 1u;
    }

    google::protobuf::internal::ArenaStringPtr::Mutable();
    v10 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_23:
    TagFallback = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return TagFallback;
}

uint64_t TSCH::ChartSelectionPathTypeArchive::_InternalSerialize(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_2763DD938(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_2763DD938(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartSelectionPathTypeArchive::ByteSizeLong(TSCH::ChartSelectionPathTypeArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
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
LABEL_9:
    v6 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCH::ChartSelectionPathTypeArchive::MergeFrom(TSCH::ChartSelectionPathTypeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartSelectionPathTypeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartSelectionPathTypeArchive::MergeFrom(uint64_t this, const TSCH::ChartSelectionPathTypeArchive *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;

      return google::protobuf::internal::ArenaStringPtr::Set();
    }
  }

  return this;
}

TSCH::ChartSelectionPathTypeArchive *TSCH::ChartSelectionPathTypeArchive::CopyFrom(TSCH::ChartSelectionPathTypeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartSelectionPathTypeArchive::Clear(this);

    return TSCH::ChartSelectionPathTypeArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::ChartSelectionPathTypeArchive *TSCH::ChartSelectionPathTypeArchive::CopyFrom(TSCH::ChartSelectionPathTypeArchive *this, const TSCH::ChartSelectionPathTypeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartSelectionPathTypeArchive::Clear(this);

    return TSCH::ChartSelectionPathTypeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartSelectionPathTypeArchive::InternalSwap(TSCH::ChartSelectionPathTypeArchive *this, TSCH::ChartSelectionPathTypeArchive *a2)
{
  result = sub_2763948BC(this + 1, a2 + 1);
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

void *TSCH::ChartAxisIDArchive::ChartAxisIDArchive(void *result, uint64_t a2)
{
  *result = &unk_288520FC8;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288520FC8;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSCH::ChartAxisIDArchive *TSCH::ChartAxisIDArchive::ChartAxisIDArchive(TSCH::ChartAxisIDArchive *this, const TSCH::ChartAxisIDArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288520FC8;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2763D4F88(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSCH::ChartAxisIDArchive::~ChartAxisIDArchive(TSCH::ChartAxisIDArchive *this)
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

uint64_t *TSCH::ChartAxisIDArchive::default_instance(TSCH::ChartAxisIDArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartAxisIDArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartAxisIDArchive_default_instance_;
}

uint64_t *TSCH::ChartAxisIDArchive::Clear(TSCH::ChartAxisIDArchive *this)
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
    return sub_2763D4FD4(result);
  }

  return result;
}

google::protobuf::internal *TSCH::ChartAxisIDArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v24) & 1) == 0)
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
        goto LABEL_41;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 8)
        {
          v15 = (v7 + 1);
          v16 = *v7;
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }

          v17 = *v15;
          v18 = (v17 << 7) + v16;
          LODWORD(v16) = v18 - 128;
          if (v17 < 0)
          {
            v24 = google::protobuf::internal::VarintParseSlow64(v7, (v18 - 128));
            if (!v24)
            {
              goto LABEL_41;
            }

            LODWORD(v16) = v23;
          }

          else
          {
            v15 = (v7 + 2);
LABEL_28:
            v24 = v15;
          }

          if (sub_2763FFBAC(v16))
          {
            *(a1 + 16) |= 1u;
            *(a1 + 24) = v16;
          }

          else
          {
            sub_2764AB61C();
          }

          goto LABEL_31;
        }

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

        v24 = google::protobuf::internal::UnknownFieldParse();
        if (!v24)
        {
LABEL_41:
          v24 = 0;
          goto LABEL_2;
        }

        goto LABEL_31;
      }

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
        goto LABEL_31;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v24 = v21;
      *(a1 + 28) = v22;
      if (!v21)
      {
        goto LABEL_41;
      }

LABEL_31:
      if (sub_2763D4D98(a3, &v24))
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

unsigned __int8 *TSCH::ChartAxisIDArchive::_InternalSerialize(TSCH::ChartAxisIDArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

uint64_t TSCH::ChartAxisIDArchive::ByteSizeLong(TSCH::ChartAxisIDArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_9;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = *(this + 6);
  if ((v3 & 0x80000000) == 0)
  {
    v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v2 = 11;
  if ((v1 & 2) != 0)
  {
LABEL_8:
    v2 += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_9:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSCH::ChartAxisIDArchive::MergeFrom(TSCH::ChartAxisIDArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartAxisIDArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartAxisIDArchive::MergeFrom(uint64_t this, const TSCH::ChartAxisIDArchive *a2)
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

TSCH::ChartAxisIDArchive *TSCH::ChartAxisIDArchive::CopyFrom(TSCH::ChartAxisIDArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartAxisIDArchive::Clear(this);

    return TSCH::ChartAxisIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::ChartAxisIDArchive *TSCH::ChartAxisIDArchive::CopyFrom(TSCH::ChartAxisIDArchive *this, const TSCH::ChartAxisIDArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartAxisIDArchive::Clear(this);

    return TSCH::ChartAxisIDArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartAxisIDArchive::InternalSwap(TSCH::ChartAxisIDArchive *this, TSCH::ChartAxisIDArchive *a2)
{
  result = sub_2763948BC(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

TSCH::ChartSelectionPathArgumentArchive *TSCH::ChartSelectionPathArgumentArchive::ChartSelectionPathArgumentArchive(TSCH::ChartSelectionPathArgumentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521078;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartSelectionPathArgumentArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288521078;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartSelectionPathArgumentArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TSCH::ChartSelectionPathArgumentArchive *TSCH::ChartSelectionPathArgumentArchive::ChartSelectionPathArgumentArchive(TSCH::ChartSelectionPathArgumentArchive *this, const TSCH::ChartSelectionPathArgumentArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521078;
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

void TSCH::ChartSelectionPathArgumentArchive::~ChartSelectionPathArgumentArchive(TSCH::ChartSelectionPathArgumentArchive *this)
{
  if (this != &TSCH::_ChartSelectionPathArgumentArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_2763941F4((v2 + 8));
      MEMORY[0x277C98580](v2, 0x1081C404FE48876);
    }
  }

  sub_2763941F4(this + 1);
}

{
  TSCH::ChartSelectionPathArgumentArchive::~ChartSelectionPathArgumentArchive(this);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartSelectionPathArgumentArchive::default_instance(TSCH::ChartSelectionPathArgumentArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartSelectionPathArgumentArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartSelectionPathArgumentArchive_default_instance_;
}

uint64_t *TSCH::ChartSelectionPathArgumentArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSCH::ChartAxisIDArchive::Clear(this[3]);
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

google::protobuf::internal *TSCH::ChartSelectionPathArgumentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v22) & 1) == 0)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
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

            v13 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v14);
            *(a1 + 24) = v13;
            v7 = v22;
          }

          v12 = sub_2764AF8E0(a3, v13, v7);
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

        v22 = v12;
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
      v15 = (v7 + 1);
      LODWORD(v16) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v17 = *v15;
      v16 = (v16 + (v17 << 7) - 128);
      if ((v17 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_30:
        v22 = v15;
        *(a1 + 32) = v16;
        goto LABEL_31;
      }

      v20 = google::protobuf::internal::VarintParseSlow32(v7, v16);
      v22 = v20;
      *(a1 + 32) = v21;
      if (!v20)
      {
LABEL_38:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_31:
      if (sub_2763D4D98(a3, &v22))
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

unsigned __int8 *TSCH::ChartSelectionPathArgumentArchive::_InternalSerialize(TSCH::ChartSelectionPathArgumentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  a2 = TSCH::ChartAxisIDArchive::_InternalSerialize(v8, v10, a3);
LABEL_24:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartSelectionPathArgumentArchive::ByteSizeLong(TSCH::ChartSelectionPathArgumentArchive *this)
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
    v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSCH::ChartSelectionPathArgumentArchive::MergeFrom(TSCH::ChartSelectionPathArgumentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartSelectionPathArgumentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartSelectionPathArgumentArchive::MergeFrom(uint64_t this, const TSCH::ChartSelectionPathArgumentArchive *a2)
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
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCH::ChartSelectionPathArgumentArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartSelectionPathArgumentArchive::Clear(this);

    return TSCH::ChartSelectionPathArgumentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartSelectionPathArgumentArchive::CopyFrom(uint64_t *this, const TSCH::ChartSelectionPathArgumentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartSelectionPathArgumentArchive::Clear(this);

    return TSCH::ChartSelectionPathArgumentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartSelectionPathArgumentArchive::InternalSwap(TSCH::ChartSelectionPathArgumentArchive *this, TSCH::ChartSelectionPathArgumentArchive *a2)
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

TSCH::ChartSelectionPathArchive *TSCH::ChartSelectionPathArchive::ChartSelectionPathArchive(TSCH::ChartSelectionPathArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521128;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ChartSelectionPathArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TSCH::ChartSelectionPathArchive *TSCH::ChartSelectionPathArchive::ChartSelectionPathArchive(TSCH::ChartSelectionPathArchive *this, const TSCH::ChartSelectionPathArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521128;
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
    sub_2763F9114(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_2763EA680(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v2, 0x10A1C4071667EE6);
  sub_2763F9090((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCH::ChartSelectionPathArchive::~ChartSelectionPathArchive(TSCH::ChartSelectionPathArchive *this)
{
  if (this != &TSCH::_ChartSelectionPathArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSCH::ChartSelectionPathTypeArchive::~ChartSelectionPathTypeArchive(v2);
      MEMORY[0x277C98580]();
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSCH::ChartSelectionPathArchive::~ChartSelectionPathArchive(v3);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(this + 1);
  sub_2763F9090(this + 3);
}

{
  TSCH::ChartSelectionPathArchive::~ChartSelectionPathArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartSelectionPathArchive::default_instance(TSCH::ChartSelectionPathArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartSelectionPathArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartSelectionPathArchive_default_instance_;
}

uint64_t *TSCH::ChartSelectionPathArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCH::ChartSelectionPathArgumentArchive::Clear(v4);
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
      this = TSCH::ChartSelectionPathTypeArchive::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSCH::ChartSelectionPathArchive::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartSelectionPathArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v28))
    {
      return v28;
    }

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
    v6 = v26;
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
        v28 = (v15 + 1);
        v17 = *(a1 + 40);
        if (!v17)
        {
          goto LABEL_29;
        }

        v22 = *(a1 + 32);
        v18 = *v17;
        if (v22 < *v17)
        {
          *(a1 + 32) = v22 + 1;
          v19 = *&v17[2 * v22 + 2];
          goto LABEL_33;
        }

        if (v18 == *(a1 + 36))
        {
LABEL_29:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v17 = *(a1 + 40);
          v18 = *v17;
        }

        *v17 = v18 + 1;
        v19 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathArgumentArchive>(*(a1 + 24));
        v20 = *(a1 + 32);
        v21 = *(a1 + 40) + 8 * v20;
        *(a1 + 32) = v20 + 1;
        *(v21 + 8) = v19;
        v16 = v28;
LABEL_33:
        v15 = sub_2764AADAC(a3, v19, v16);
        v28 = v15;
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
      if (v6 == 18)
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

          v14 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathArchive>(v13);
          LODWORD(v12) = v14;
          *(a1 + 56) = v14;
          v5 = v28;
        }

        v11 = sub_2764AFA80(a3, v12, v5);
        goto LABEL_44;
      }
    }

    else if (v8 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v23 = *(a1 + 48);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathTypeArchive>(v24);
        *(a1 + 48) = v23;
        v5 = v28;
      }

      v11 = sub_2764AACDC(a3, v23, v5);
      goto LABEL_44;
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
LABEL_44:
    v28 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v28;
}

unsigned __int8 *TSCH::ChartSelectionPathArchive::_InternalSerialize(TSCH::ChartSelectionPathArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 10;
    v7 = *(v6 + 20);
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

    a2 = TSCH::ChartSelectionPathTypeArchive::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 7);
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

    a2 = TSCH::ChartSelectionPathArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 8);
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v20 = *(*(this + 5) + 8 * i + 8);
      *a2 = 26;
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

      a2 = TSCH::ChartSelectionPathArgumentArchive::_InternalSerialize(v20, v22, a3);
    }
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartSelectionPathArchive::ByteSizeLong(TSCH::ChartSelectionPathArchive *this)
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
      v7 = TSCH::ChartSelectionPathArgumentArchive::ByteSizeLong(v6);
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
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = TSCH::ChartSelectionPathTypeArchive::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = TSCH::ChartSelectionPathArchive::ByteSizeLong(*(this + 7));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t TSCH::ChartSelectionPathArchive::MergeFrom(TSCH::ChartSelectionPathArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartSelectionPathArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartSelectionPathArchive::MergeFrom(uint64_t this, const TSCH::ChartSelectionPathArchive *a2)
{
  for (i = this; ; i = this)
  {
    v4 = *(a2 + 1);
    if (v4)
    {
      this = sub_2763D4F88((i + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      v6 = *(a2 + 5);
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((i + 24));
      this = sub_2763F9114(i + 24, v7, (v6 + 8), v5, **(i + 40) - *(i + 32));
      v8 = *(i + 32) + v5;
      *(i + 32) = v8;
      v9 = *(i + 40);
      if (*v9 < v8)
      {
        *v9 = v8;
      }
    }

    v10 = *(a2 + 4);
    if ((v10 & 3) == 0)
    {
      break;
    }

    if (v10)
    {
      *(i + 16) |= 1u;
      v11 = *(i + 48);
      if (!v11)
      {
        v12 = *(i + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathTypeArchive>(v12);
        *(i + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = &TSCH::_ChartSelectionPathTypeArchive_default_instance_;
      }

      this = TSCH::ChartSelectionPathTypeArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) == 0)
    {
      break;
    }

    *(i + 16) |= 2u;
    this = *(i + 56);
    if (!this)
    {
      v14 = *(i + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathArchive>(v14);
      *(i + 56) = this;
    }

    if (*(a2 + 7))
    {
      a2 = *(a2 + 7);
    }

    else
    {
      a2 = &TSCH::_ChartSelectionPathArchive_default_instance_;
    }
  }

  return this;
}

uint64_t *TSCH::ChartSelectionPathArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartSelectionPathArchive::Clear(this);

    return TSCH::ChartSelectionPathArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartSelectionPathArchive::CopyFrom(uint64_t *this, const TSCH::ChartSelectionPathArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartSelectionPathArchive::Clear(this);

    return TSCH::ChartSelectionPathArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCH::ChartSelectionPathArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2763948BC(&this->n128_i64[1], &a2->n128_i64[1]);
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
  return result;
}

TSD::DrawableSelectionArchive *TSCH::ChartSelectionArchive::clear_super(TSCH::ChartSelectionArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSD::DrawableSelectionArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSCH::ChartSelectionArchive::clear_chart(TSCH::ChartSelectionArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCH::ChartSelectionArchive *TSCH::ChartSelectionArchive::ChartSelectionArchive(TSCH::ChartSelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885211D8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ChartSelectionArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TSCH::ChartSelectionArchive *TSCH::ChartSelectionArchive::ChartSelectionArchive(TSCH::ChartSelectionArchive *this, const TSCH::ChartSelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885211D8;
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
    sub_2763F91D4(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_2763EB414(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v2, 0x10A1C40759568C3);
  sub_2764783BC((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCH::ChartSelectionArchive::~ChartSelectionArchive(TSCH::ChartSelectionArchive *this)
{
  if (this != &TSCH::_ChartSelectionArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }

    if (*(this + 7))
    {
      v3 = MEMORY[0x277C97320]();
      MEMORY[0x277C98580](v3, 0x10A1C40759568C3);
    }
  }

  sub_2763941F4(this + 1);
  sub_2764783BC(this + 3);
}

{
  TSCH::ChartSelectionArchive::~ChartSelectionArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartSelectionArchive::default_instance(TSCH::ChartSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartSelectionArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartSelectionArchive_default_instance_;
}

uint64_t *TSCH::ChartSelectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCH::ChartSelectionPathArchive::Clear(v4);
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
      this = TSP::Reference::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSD::DrawableSelectionArchive::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartSelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  while (1)
  {
    if (sub_2763D4D98(a3, &v29))
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
      if (v6 == 26)
      {
        *(a1 + 16) |= 2u;
        v20 = *(a1 + 56);
        if (!v20)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97AD0](v21);
          LODWORD(v20) = v22;
          *(a1 + 56) = v22;
          v5 = v29;
        }

        v11 = sub_2764AAE7C(a3, v20, v5);
        goto LABEL_44;
      }

      goto LABEL_13;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      v12 = (v5 - 1);
LABEL_22:
      v13 = (v12 + 1);
      v29 = (v12 + 1);
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
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathArchive>(*(a1 + 24));
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v16;
        v13 = v29;
      }

      else
      {
        *(a1 + 32) = v19 + 1;
        v16 = *&v14[2 * v19 + 2];
      }

      v12 = sub_2764AFA80(a3, v16, v13);
      v29 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 18)
      {
        continue;
      }

      goto LABEL_22;
    }

    if (v8 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v23 = *(a1 + 48);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v25 = MEMORY[0x277C97B90](v24);
        LODWORD(v23) = v25;
        *(a1 + 48) = v25;
        v5 = v29;
      }

      v11 = sub_2764ADCBC(a3, v23, v5);
      goto LABEL_44;
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
LABEL_44:
    v29 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v29;
}

unsigned __int8 *TSCH::ChartSelectionArchive::_InternalSerialize(TSCH::ChartSelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
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

  v12 = *(this + 8);
  if (v12)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSCH::ChartSelectionPathArchive::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 7);
    *a2 = 26;
    v21 = *(v20 + 16);
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

    a2 = TSD::DrawableSelectionArchive::_InternalSerialize(v20, v22, a3);
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartSelectionArchive::ByteSizeLong(TSCH::ChartSelectionArchive *this)
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
      v7 = TSCH::ChartSelectionPathArchive::ByteSizeLong(v6);
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
  if ((v8 & 3) != 0)
  {
    if (v8)
    {
      v9 = TSP::Reference::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = TSD::DrawableSelectionArchive::ByteSizeLong(*(this + 7));
      v2 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t TSCH::ChartSelectionArchive::MergeFrom(TSCH::ChartSelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartSelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartSelectionArchive::MergeFrom(uint64_t this, const TSCH::ChartSelectionArchive *a2)
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
    this = sub_2763F91D4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

        v11 = MEMORY[0x277C97B90](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      if (!*(v3 + 56))
      {
        v14 = *(v3 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        *(v3 + 56) = MEMORY[0x277C97AD0](v14);
      }

      return MEMORY[0x2821E9C50]();
    }
  }

  return this;
}

uint64_t *TSCH::ChartSelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartSelectionArchive::Clear(this);

    return TSCH::ChartSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartSelectionArchive::CopyFrom(uint64_t *this, const TSCH::ChartSelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartSelectionArchive::Clear(this);

    return TSCH::ChartSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::ChartSelectionArchive::IsInitialized(TSCH::ChartSelectionArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(this + 6));
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

  result = TSD::DrawableSelectionArchive::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCH::ChartSelectionArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2763948BC(&this->n128_i64[1], &a2->n128_i64[1]);
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
  return result;
}

TSP::Reference *TSCH::ChartCDESelectionArchive::clear_chart(TSCH::ChartCDESelectionArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCH::ChartCDESelectionArchive *TSCH::ChartCDESelectionArchive::ChartCDESelectionArchive(TSCH::ChartCDESelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521288;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartCDESelectionArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288521288;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartCDESelectionArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

TSCH::ChartCDESelectionArchive *TSCH::ChartCDESelectionArchive::ChartCDESelectionArchive(TSCH::ChartCDESelectionArchive *this, const TSCH::ChartCDESelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288521288;
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
  v7 = *(a2 + 2);
  *(this + 12) = *(a2 + 12);
  *(this + 2) = v7;
  return this;
}

void TSCH::ChartCDESelectionArchive::~ChartCDESelectionArchive(TSCH::ChartCDESelectionArchive *this)
{
  if (this != &TSCH::_ChartCDESelectionArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(this + 1);
}

{
  TSCH::ChartCDESelectionArchive::~ChartCDESelectionArchive(this);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartCDESelectionArchive::default_instance(TSCH::ChartCDESelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartCDESelectionArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartCDESelectionArchive_default_instance_;
}

uint64_t *TSCH::ChartCDESelectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSP::Reference::Clear(this[3]);
  }

  if ((v2 & 0x3E) != 0)
  {
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
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

google::protobuf::internal *TSCH::ChartCDESelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v44) & 1) == 0)
  {
    while (1)
    {
      v7 = (v44 + 1);
      v8 = *v44;
      if ((*v44 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v44, (v9 - 128));
      v44 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_71;
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
            goto LABEL_48;
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
            v44 = v22;
            *(a1 + 40) = v23;
            goto LABEL_56;
          }

          v34 = google::protobuf::internal::VarintParseSlow32(v7, v23);
          v44 = v34;
          *(a1 + 40) = v35;
          if (!v34)
          {
            goto LABEL_71;
          }
        }

        else if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_48;
          }

          v5 |= 0x10u;
          v28 = (v7 + 1);
          LODWORD(v29) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_47;
          }

          v30 = *v28;
          v29 = (v29 + (v30 << 7) - 128);
          if ((v30 & 0x80000000) == 0)
          {
            v28 = (v7 + 2);
LABEL_47:
            v44 = v28;
            *(a1 + 44) = v29;
            goto LABEL_56;
          }

          v42 = google::protobuf::internal::VarintParseSlow32(v7, v29);
          v44 = v42;
          *(a1 + 44) = v43;
          if (!v42)
          {
LABEL_71:
            v44 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_48;
          }

          v5 |= 0x20u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_26:
            v44 = v15;
            *(a1 + 48) = v16;
            goto LABEL_56;
          }

          v36 = google::protobuf::internal::VarintParseSlow32(v7, v16);
          v44 = v36;
          *(a1 + 48) = v37;
          if (!v36)
          {
            goto LABEL_71;
          }
        }
      }

      else
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

              v20 = MEMORY[0x277C97B90](v19);
              LODWORD(v18) = v20;
              *(a1 + 24) = v20;
              v7 = v44;
            }

            v21 = sub_2764ADCBC(a3, v18, v7);
          }

          else
          {
LABEL_48:
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
              sub_2763D4E10((a1 + 8));
            }

            v21 = google::protobuf::internal::UnknownFieldParse();
          }

          v44 = v21;
          if (!v21)
          {
            goto LABEL_71;
          }

          goto LABEL_56;
        }

        if (v10 == 2)
        {
          if (v8 != 16)
          {
            goto LABEL_48;
          }

          v5 |= 2u;
          v26 = (v7 + 1);
          LODWORD(v25) = *v7;
          if ((v25 & 0x80) == 0)
          {
            goto LABEL_42;
          }

          v27 = *v26;
          v25 = (v25 + (v27 << 7) - 128);
          if ((v27 & 0x80000000) == 0)
          {
            v26 = (v7 + 2);
LABEL_42:
            v44 = v26;
            *(a1 + 32) = v25;
            goto LABEL_56;
          }

          v40 = google::protobuf::internal::VarintParseSlow64(v7, v25);
          v44 = v40;
          *(a1 + 32) = v41;
          if (!v40)
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v10 != 3 || v8 != 24)
          {
            goto LABEL_48;
          }

          v5 |= 4u;
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
            v44 = v12;
            *(a1 + 36) = v13;
            goto LABEL_56;
          }

          v38 = google::protobuf::internal::VarintParseSlow32(v7, v13);
          v44 = v38;
          *(a1 + 36) = v39;
          if (!v38)
          {
            goto LABEL_71;
          }
        }
      }

LABEL_56:
      if (sub_2763D4D98(a3, &v44))
      {
        goto LABEL_2;
      }
    }

    v7 = (v44 + 2);
LABEL_6:
    v44 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v44;
}

unsigned __int8 *TSCH::ChartCDESelectionArchive::_InternalSerialize(TSCH::ChartCDESelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v16 = *(this + 8);
    *a2 = 16;
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v17 = v16 >> 7;
      if (v16 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v17 | 0x80;
          v18 = v17 >> 7;
          ++a2;
          v19 = v17 >> 14;
          v17 >>= 7;
        }

        while (v19);
        *(a2 - 1) = v18;
        if ((v5 & 4) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        a2[2] = v17;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      a2[1] = v16;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_48:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(this + 10);
    *a2 = 32;
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v25 = v24 >> 7;
      if (v24 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v25 | 0x80;
          v26 = v25 >> 7;
          ++a2;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
        *(a2 - 1) = v26;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_59;
        }
      }

      else
      {
        a2[2] = v25;
        a2 += 3;
        if ((v5 & 0x10) != 0)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      a2[1] = v24;
      a2 += 2;
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_59;
      }
    }

LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_7;
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

  a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 9);
  *a2 = 24;
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v21 = v20 >> 7;
    if (v20 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++a2;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(a2 - 1) = v22;
      if ((v5 & 8) != 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 8) != 0)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 8) != 0)
    {
      goto LABEL_48;
    }
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_59:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 11);
  *a2 = 40;
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
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_70;
      }
    }

    else
    {
      a2[2] = v29;
      a2 += 3;
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_70;
      }
    }
  }

  else
  {
    a2[1] = v28;
    a2 += 2;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_70;
    }
  }

LABEL_7:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 12);
  *a2 = 48;
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

LABEL_70:
  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartCDESelectionArchive::ByteSizeLong(TSCH::ChartCDESelectionArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }
  }

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
LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_13:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_13;
  }

  v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_20:
  v3 += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
LABEL_15:
    v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
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

uint64_t TSCH::ChartCDESelectionArchive::MergeFrom(TSCH::ChartCDESelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartCDESelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartCDESelectionArchive::MergeFrom(uint64_t this, const TSCH::ChartCDESelectionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

    *(v3 + 32) = *(a2 + 8);
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
    *(v3 + 36) = *(a2 + 9);
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
    *(v3 + 40) = *(a2 + 10);
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
      *(v3 + 48) = *(a2 + 12);
      goto LABEL_11;
    }

LABEL_24:
    *(v3 + 44) = *(a2 + 11);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCH::ChartCDESelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartCDESelectionArchive::Clear(this);

    return TSCH::ChartCDESelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartCDESelectionArchive::CopyFrom(uint64_t *this, const TSCH::ChartCDESelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartCDESelectionArchive::Clear(this);

    return TSCH::ChartCDESelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::ChartCDESelectionArchive::IsInitialized(TSCH::ChartCDESelectionArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCH::ChartCDESelectionArchive::InternalSwap(TSCH::ChartCDESelectionArchive *this, TSCH::ChartCDESelectionArchive *a2)
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
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  return result;
}

TSP::Reference *TSCH::ChartUIState::clear_chart(TSCH::ChartUIState *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~1u;
  return result;
}

TSCH::ChartUIState *TSCH::ChartUIState::ChartUIState(TSCH::ChartUIState *this, google::protobuf::Arena *a2)
{
  *this = &unk_288521338;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ChartUIState_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 70) = 0;
  *(this + 8) = 0;
  return this;
}

TSCH::ChartUIState *TSCH::ChartUIState::ChartUIState(TSCH::ChartUIState *this, const TSCH::ChartUIState *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_288521338;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 11) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2763D4F88(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  if (*(a2 + 40))
  {
    operator new();
  }

  *(this + 6) = 0;
  v6 = *(a2 + 56);
  *(this + 70) = *(a2 + 70);
  *(this + 56) = v6;
  return this;
}

void sub_2763ED048(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v2, 0x1081C407D3F2757);
  MEMORY[0x277C97D50](v1);
  _Unwind_Resume(a1);
}

void TSCH::ChartUIState::~ChartUIState(TSCH::ChartUIState *this)
{
  if (this != &TSCH::_ChartUIState_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(this + 1);
  MEMORY[0x277C97D50](this + 16);
}

{
  TSCH::ChartUIState::~ChartUIState(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartUIState::default_instance(TSCH::ChartUIState *this)
{
  if (atomic_load_explicit(scc_info_ChartUIState_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartUIState_default_instance_;
}

uint64_t *TSCH::ChartUIState::Clear(TSCH::ChartUIState *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v3 = *(this + 10);
  if (v3)
  {
    result = TSP::Reference::Clear(*(this + 6));
  }

  if ((v3 & 0xFE) != 0)
  {
    *(this + 7) = 0;
    *(this + 8) = 0;
    *(this + 70) = 0;
  }

  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_2763D4FD4(v4);
  }

  return result;
}

google::protobuf::internal *TSCH::ChartUIState::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v52 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v52) & 1) == 0)
  {
    while (1)
    {
      v7 = (v52 + 1);
      LODWORD(v8) = *v52;
      if ((*v52 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v52, v8);
      v52 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_91;
      }

      v7 = TagFallback;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v9 == 7)
          {
            if (v8 != 56)
            {
              goto LABEL_64;
            }

            v5 |= 0x20u;
            v35 = (v7 + 1);
            LODWORD(v34) = *v7;
            if ((v34 & 0x80) == 0)
            {
              goto LABEL_63;
            }

            v36 = *v35;
            v34 = (v34 + (v36 << 7) - 128);
            if ((v36 & 0x80000000) == 0)
            {
              v35 = (v7 + 2);
LABEL_63:
              v52 = v35;
              *(a1 + 72) = v34;
              goto LABEL_74;
            }

            v42 = google::protobuf::internal::VarintParseSlow64(v7, v34);
            v52 = v42;
            *(a1 + 72) = v43;
            if (!v42)
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (v9 != 8 || v8 != 64)
            {
              goto LABEL_64;
            }

            v5 |= 0x80u;
            v21 = (v7 + 1);
            v20 = *v7;
            if ((v20 & 0x8000000000000000) == 0)
            {
              goto LABEL_40;
            }

            v22 = *v21;
            v20 = (v22 << 7) + v20 - 128;
            if ((v22 & 0x80000000) == 0)
            {
              v21 = (v7 + 2);
LABEL_40:
              v52 = v21;
              *(a1 + 77) = v20 != 0;
              goto LABEL_74;
            }

            v50 = google::protobuf::internal::VarintParseSlow64(v7, v20);
            v52 = v50;
            *(a1 + 77) = v51 != 0;
            if (!v50)
            {
LABEL_91:
              v52 = 0;
              goto LABEL_2;
            }
          }
        }

        else if (v9 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_64;
          }

          v5 |= 0x10u;
          v29 = (v7 + 1);
          LODWORD(v28) = *v7;
          if ((v28 & 0x80) == 0)
          {
            goto LABEL_53;
          }

          v30 = *v29;
          v28 = (v28 + (v30 << 7) - 128);
          if ((v30 & 0x80000000) == 0)
          {
            v29 = (v7 + 2);
LABEL_53:
            v52 = v29;
            *(a1 + 68) = v28;
            goto LABEL_74;
          }

          v38 = google::protobuf::internal::VarintParseSlow64(v7, v28);
          v52 = v38;
          *(a1 + 68) = v39;
          if (!v38)
          {
            goto LABEL_91;
          }
        }

        else
        {
          if (v9 != 6 || v8 != 48)
          {
            goto LABEL_64;
          }

          v5 |= 0x40u;
          v15 = (v7 + 1);
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_26;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if ((v16 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_26:
            v52 = v15;
            *(a1 + 76) = v14 != 0;
            goto LABEL_74;
          }

          v46 = google::protobuf::internal::VarintParseSlow64(v7, v14);
          v52 = v46;
          *(a1 + 76) = v47 != 0;
          if (!v46)
          {
            goto LABEL_91;
          }
        }
      }

      else if (v8 >> 3 > 2)
      {
        if (v9 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_64;
          }

          v5 |= 4u;
          v32 = (v7 + 1);
          LODWORD(v31) = *v7;
          if ((v31 & 0x80) == 0)
          {
            goto LABEL_58;
          }

          v33 = *v32;
          v31 = (v31 + (v33 << 7) - 128);
          if ((v33 & 0x80000000) == 0)
          {
            v32 = (v7 + 2);
LABEL_58:
            v52 = v32;
            *(a1 + 60) = v31;
            goto LABEL_74;
          }

          v40 = google::protobuf::internal::VarintParseSlow64(v7, v31);
          v52 = v40;
          *(a1 + 60) = v41;
          if (!v40)
          {
            goto LABEL_91;
          }
        }

        else
        {
          if (v9 != 4 || v8 != 32)
          {
            goto LABEL_64;
          }

          v5 |= 8u;
          v18 = (v7 + 1);
          LODWORD(v17) = *v7;
          if ((v17 & 0x80) == 0)
          {
            goto LABEL_33;
          }

          v19 = *v18;
          v17 = (v17 + (v19 << 7) - 128);
          if ((v19 & 0x80000000) == 0)
          {
            v18 = (v7 + 2);
LABEL_33:
            v52 = v18;
            *(a1 + 64) = v17;
            goto LABEL_74;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v7, v17);
          v52 = v48;
          *(a1 + 64) = v49;
          if (!v48)
          {
            goto LABEL_91;
          }
        }
      }

      else
      {
        if (v9 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 40) |= 1u;
            v24 = *(a1 + 48);
            if (!v24)
            {
              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277C97B90](v25);
              LODWORD(v24) = v26;
              *(a1 + 48) = v26;
              v7 = v52;
            }

            v27 = sub_2764ADCBC(a3, v24, v7);
          }

          else
          {
LABEL_64:
            if (v8)
            {
              v37 = (v8 & 7) == 4;
            }

            else
            {
              v37 = 1;
            }

            if (v37)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if (v8 >> 7 < 0x271)
            {
              if ((*(a1 + 8) & 1) == 0)
              {
                sub_2763D4E10((a1 + 8));
              }

              v27 = google::protobuf::internal::UnknownFieldParse();
            }

            else
            {
              v27 = google::protobuf::internal::ExtensionSet::ParseField();
            }
          }

          v52 = v27;
          if (!v27)
          {
            goto LABEL_91;
          }

          goto LABEL_74;
        }

        if (v9 != 2 || v8 != 16)
        {
          goto LABEL_64;
        }

        v5 |= 2u;
        v12 = (v7 + 1);
        LODWORD(v11) = *v7;
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_18;
        }

        v13 = *v12;
        v11 = (v11 + (v13 << 7) - 128);
        if ((v13 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_18:
          v52 = v12;
          *(a1 + 56) = v11;
          goto LABEL_74;
        }

        v44 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v52 = v44;
        *(a1 + 56) = v45;
        if (!v44)
        {
          goto LABEL_91;
        }
      }

LABEL_74:
      if (sub_2763D4D98(a3, &v52))
      {
        goto LABEL_2;
      }
    }

    v7 = (v52 + 2);
LABEL_6:
    v52 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v52;
}