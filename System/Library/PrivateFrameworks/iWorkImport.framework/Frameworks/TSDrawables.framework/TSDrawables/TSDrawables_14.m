uint64_t TSD::ContainerReorderChildrenCommandArchive::MergeFrom(TSD::ContainerReorderChildrenCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ContainerReorderChildrenCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ContainerReorderChildrenCommandArchive::MergeFrom(uint64_t this, const TSD::ContainerReorderChildrenCommandArchive *a2)
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
    this = sub_2768027E4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

        v11 = MEMORY[0x277C9BA50](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v14 = *(v3 + 56);
      if (!v14)
      {
        v15 = *(v3 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C9BB10](v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = MEMORY[0x277D80A10];
      }

      return TSP::UUIDPath::MergeFrom(v14, v16);
    }
  }

  return this;
}

uint64_t *TSD::ContainerReorderChildrenCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerReorderChildrenCommandArchive::Clear(this);

    return TSD::ContainerReorderChildrenCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ContainerReorderChildrenCommandArchive::CopyFrom(uint64_t *this, const TSD::ContainerReorderChildrenCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ContainerReorderChildrenCommandArchive::Clear(this);

    return TSD::ContainerReorderChildrenCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ContainerReorderChildrenCommandArchive::IsInitialized(TSD::ContainerReorderChildrenCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSCK::RearrangeIdOperationArgs::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 2) == 0)
  {
    return 1;
  }

  result = TSP::UUIDPath::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::ContainerReorderChildrenCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

TSK::CommandArchive *TSD::GroupUngroupInformativeCommandArchive::clear_super(TSD::GroupUngroupInformativeCommandArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSD::GroupUngroupInformativeCommandArchive::clear_removed_infos(uint64_t this)
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

uint64_t TSD::GroupUngroupInformativeCommandArchive::clear_inserted_infos(uint64_t this)
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

TSD::GroupUngroupInformativeCommandArchive *TSD::GroupUngroupInformativeCommandArchive::GroupUngroupInformativeCommandArchive(TSD::GroupUngroupInformativeCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A018;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_GroupUngroupInformativeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 20) = 0;
  *(this + 9) = 0;
  return this;
}

void sub_2767CF3C4(_Unwind_Exception *a1)
{
  sub_27676C890(v2);
  sub_27676C890(v1);
  _Unwind_Resume(a1);
}

TSD::GroupUngroupInformativeCommandArchive *TSD::GroupUngroupInformativeCommandArchive::GroupUngroupInformativeCommandArchive(TSD::GroupUngroupInformativeCommandArchive *this, const TSD::GroupUngroupInformativeCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A018;
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
    sub_27676CA94(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_27676CA94(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_27670B0F8(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 9) = 0;
  *(this + 20) = *(a2 + 20);
  return this;
}

void sub_2767CF57C(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v3, 0x10A1C40C24530F0);
  sub_27676C890(v2);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::GroupUngroupInformativeCommandArchive::~GroupUngroupInformativeCommandArchive(TSD::GroupUngroupInformativeCommandArchive *this)
{
  if (this != &TSD::_GroupUngroupInformativeCommandArchive_default_instance_ && *(this + 9))
  {
    v2 = MEMORY[0x277C9B420]();
    MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
  }

  sub_2766FFE58(this + 1);
  sub_27676C890(this + 6);
  sub_27676C890(this + 3);
}

{
  TSD::GroupUngroupInformativeCommandArchive::~GroupUngroupInformativeCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::GroupUngroupInformativeCommandArchive::default_instance(TSD::GroupUngroupInformativeCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupUngroupInformativeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GroupUngroupInformativeCommandArchive_default_instance_;
}

uint64_t *TSD::GroupUngroupInformativeCommandArchive::Clear(uint64_t *this)
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

  if (*(v1 + 16))
  {
    this = TSK::CommandArchive::Clear(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 72) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_27670B144(v8);
  }

  return this;
}

google::protobuf::internal *TSD::GroupUngroupInformativeCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  while (1)
  {
    while (1)
    {
LABEL_2:
      if (sub_27670AF08(a3, &v39))
      {
        return v39;
      }

      v5 = (v39 + 1);
      v6 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        v5 = (v39 + 2);
LABEL_6:
        v39 = v5;
        goto LABEL_7;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v7 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v5 = TagFallback;
      v6 = v37;
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
          goto LABEL_54;
        }

        v26 = v5 - 1;
        while (1)
        {
          v27 = (v26 + 1);
          v39 = (v26 + 1);
          v28 = *(a1 + 64);
          if (!v28)
          {
            goto LABEL_44;
          }

          v34 = *(a1 + 56);
          v29 = *v28;
          if (v34 < *v28)
          {
            *(a1 + 56) = v34 + 1;
            v31 = *&v28[2 * v34 + 2];
            goto LABEL_48;
          }

          if (v29 == *(a1 + 60))
          {
LABEL_44:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v28 = *(a1 + 64);
            v29 = *v28;
          }

          *v28 = v29 + 1;
          v30 = MEMORY[0x277C9BB20](*(a1 + 48));
          LODWORD(v31) = v30;
          v32 = *(a1 + 56);
          v33 = *(a1 + 64) + 8 * v32;
          *(a1 + 56) = v32 + 1;
          *(v33 + 8) = v30;
          v27 = v39;
LABEL_48:
          v26 = sub_27680B6EC(a3, v31, v27);
          v39 = v26;
          if (!v26)
          {
            return 0;
          }

          if (*a3 <= v26 || *v26 != 26)
          {
            goto LABEL_2;
          }
        }
      }

      if (v8 != 4 || v6 != 32)
      {
        goto LABEL_54;
      }

      v20 = (v5 + 1);
      v19 = *v5;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_32;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = (v5 + 2);
LABEL_32:
        v39 = v20;
        goto LABEL_33;
      }

      v39 = google::protobuf::internal::VarintParseSlow64(v5, v19);
      if (!v39)
      {
        return 0;
      }

LABEL_33:
      if (v19 > 1)
      {
        sub_27680D374();
      }

      else
      {
        *(a1 + 16) |= 2u;
        *(a1 + 80) = v19;
      }
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
        goto LABEL_54;
      }

      v10 = v5 - 1;
      while (1)
      {
        v11 = (v10 + 1);
        v39 = (v10 + 1);
        v12 = *(a1 + 40);
        if (!v12)
        {
          goto LABEL_16;
        }

        v18 = *(a1 + 32);
        v13 = *v12;
        if (v18 < *v12)
        {
          *(a1 + 32) = v18 + 1;
          v15 = *&v12[2 * v18 + 2];
          goto LABEL_20;
        }

        if (v13 == *(a1 + 36))
        {
LABEL_16:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v12 = *(a1 + 40);
          v13 = *v12;
        }

        *v12 = v13 + 1;
        v14 = MEMORY[0x277C9BB20](*(a1 + 24));
        LODWORD(v15) = v14;
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v14;
        v11 = v39;
LABEL_20:
        v10 = sub_27680B6EC(a3, v15, v11);
        v39 = v10;
        if (!v10)
        {
          return 0;
        }

        if (*a3 <= v10 || *v10 != 18)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v22 = *(a1 + 72);
      if (!v22)
      {
        v23 = *(a1 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = MEMORY[0x277C9BA50](v23);
        LODWORD(v22) = v24;
        *(a1 + 72) = v24;
        v5 = v39;
      }

      v25 = sub_27680C3D8(a3, v22, v5);
      goto LABEL_61;
    }

LABEL_54:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v25 = google::protobuf::internal::UnknownFieldParse();
LABEL_61:
    v39 = v25;
    if (!v25)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v39;
}

unsigned __int8 *TSD::GroupUngroupInformativeCommandArchive::_InternalSerialize(TSD::GroupUngroupInformativeCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 9);
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
  }

  v13 = *(this + 8);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 5) + 8 * i + 8);
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

      a2 = TSP::Reference::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 14);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(this + 8) + 8 * j + 8);
      *a2 = 26;
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

      a2 = TSP::Reference::_InternalSerialize(v23, v25, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v29 = *(this + 20);
    *a2 = 32;
    if (v29 > 0x7F)
    {
      a2[1] = v29 | 0x80;
      v30 = v29 >> 7;
      if (v29 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v30 | 0x80;
          v31 = v30 >> 7;
          ++a2;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
        *(a2 - 1) = v31;
      }

      else
      {
        a2[2] = v30;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v29;
      a2 += 2;
    }
  }

  v33 = *(this + 1);
  if ((v33 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v33 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::GroupUngroupInformativeCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[9]);
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
      v10 = TSP::Reference::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  v13 = this[8];
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
  }

  if ((this[2] & 2) != 0)
  {
    v18 = *(this + 20);
    v19 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v18 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 11;
    }

    v12 += v20;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

uint64_t TSD::GroupUngroupInformativeCommandArchive::MergeFrom(TSD::GroupUngroupInformativeCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::GroupUngroupInformativeCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::GroupUngroupInformativeCommandArchive::MergeFrom(uint64_t this, const TSD::GroupUngroupInformativeCommandArchive *a2)
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
    this = sub_27676CA94(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_27676CA94(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 3) != 0)
  {
    if (v15)
    {
      *(v3 + 16) |= 1u;
      v16 = *(v3 + 72);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C9BA50](v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 9))
      {
        v18 = *(a2 + 9);
      }

      else
      {
        v18 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v16, v18);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 80) = *(a2 + 20);
    }

    *(v3 + 16) |= v15;
  }

  return this;
}

uint64_t *TSD::GroupUngroupInformativeCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GroupUngroupInformativeCommandArchive::Clear(this);

    return TSD::GroupUngroupInformativeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::GroupUngroupInformativeCommandArchive::CopyFrom(uint64_t *this, const TSD::GroupUngroupInformativeCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GroupUngroupInformativeCommandArchive::Clear(this);

    return TSD::GroupUngroupInformativeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::GroupUngroupInformativeCommandArchive::IsInitialized(TSD::GroupUngroupInformativeCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 9));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::GroupUngroupInformativeCommandArchive::InternalSwap(TSD::GroupUngroupInformativeCommandArchive *this, TSD::GroupUngroupInformativeCommandArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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
  LODWORD(v10) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v10;
  return result;
}

TSK::CommandArchive *TSD::InfoCommandArchive::clear_super(TSD::InfoCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::UUIDPath *TSD::InfoCommandArchive::clear_info_id_path(TSD::InfoCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::InfoCommandArchive *TSD::InfoCommandArchive::InfoCommandArchive(TSD::InfoCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A0C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InfoCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_28857A0C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InfoCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSD::InfoCommandArchive *TSD::InfoCommandArchive::InfoCommandArchive(TSD::InfoCommandArchive *this, const TSD::InfoCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A0C8;
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

void TSD::InfoCommandArchive::~InfoCommandArchive(TSD::InfoCommandArchive *this)
{
  if (this != &TSD::_InfoCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C9B420]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277C9B7C0]();
      MEMORY[0x277C9C1D0](v3, 0x10A1C40290C9B23);
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::InfoCommandArchive::~InfoCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::InfoCommandArchive::default_instance(TSD::InfoCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_InfoCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_InfoCommandArchive_default_instance_;
}

uint64_t *TSD::InfoCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSK::CommandArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::UUIDPath::Clear(*(v1 + 32));
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

google::protobuf::internal *TSD::InfoCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v13 = MEMORY[0x277C9BB10](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v20;
      }

      v10 = sub_27680EB00(a3, v11, v5);
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

        v16 = MEMORY[0x277C9BA50](v15);
        LODWORD(v14) = v16;
        *(a1 + 24) = v16;
        v5 = v20;
      }

      v10 = sub_27680C3D8(a3, v14, v5);
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

unsigned __int8 *TSD::InfoCommandArchive::_InternalSerialize(TSD::InfoCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
  }

  if ((v6 & 2) != 0)
  {
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
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::InfoCommandArchive::ByteSizeLong(TSD::InfoCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::UUIDPath::ByteSizeLong(*(this + 4));
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

uint64_t TSD::InfoCommandArchive::MergeFrom(TSD::InfoCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::InfoCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::InfoCommandArchive::MergeFrom(uint64_t this, const TSD::InfoCommandArchive *a2)
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

      return TSP::UUIDPath::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSD::InfoCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::InfoCommandArchive::Clear(this);

    return TSD::InfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::InfoCommandArchive::CopyFrom(uint64_t *this, const TSD::InfoCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::InfoCommandArchive::Clear(this);

    return TSD::InfoCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::InfoCommandArchive::IsInitialized(TSD::InfoCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::UUIDPath::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::InfoCommandArchive::InternalSwap(TSD::InfoCommandArchive *this, TSD::InfoCommandArchive *a2)
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

TSP::UUID *TSD::ConnectionLineConnectCommandArchive::clear_connected_from_id(TSD::ConnectionLineConnectCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TSD::ConnectionLineConnectCommandArchive::clear_connected_to_id(TSD::ConnectionLineConnectCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::UUID *TSD::ConnectionLineConnectCommandArchive::clear_old_connected_to_id(TSD::ConnectionLineConnectCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::UUID *TSD::ConnectionLineConnectCommandArchive::clear_old_connected_from_id(TSD::ConnectionLineConnectCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSD::ConnectionLineConnectCommandArchive *TSD::ConnectionLineConnectCommandArchive::ConnectionLineConnectCommandArchive(TSD::ConnectionLineConnectCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A178;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConnectionLineConnectCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_28857A178;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConnectionLineConnectCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::ConnectionLineConnectCommandArchive *TSD::ConnectionLineConnectCommandArchive::ConnectionLineConnectCommandArchive(TSD::ConnectionLineConnectCommandArchive *this, const TSD::ConnectionLineConnectCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A178;
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

void TSD::ConnectionLineConnectCommandArchive::~ConnectionLineConnectCommandArchive(TSD::ConnectionLineConnectCommandArchive *this)
{
  sub_2767D1218(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ConnectionLineConnectCommandArchive::~ConnectionLineConnectCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_2767D1218(uint64_t *result)
{
  if (result != &TSD::_ConnectionLineConnectCommandArchive_default_instance_)
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
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
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
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::ConnectionLineConnectCommandArchive::default_instance(TSD::ConnectionLineConnectCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ConnectionLineConnectCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ConnectionLineConnectCommandArchive_default_instance_;
}

uint64_t *TSD::ConnectionLineConnectCommandArchive::Clear(uint64_t *this)
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
      this = TSP::UUID::Clear(*(v1 + 40));
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

  this = TSP::UUID::Clear(*(v1 + 32));
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
  this = TSP::UUID::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSP::UUID::Clear(*(v1 + 56));
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

google::protobuf::internal *TSD::ConnectionLineConnectCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    if (v6 >> 3 > 4)
    {
      if (v8 == 5)
      {
        if (v6 != 42)
        {
          goto LABEL_43;
        }

        *(a1 + 16) |= 4u;
        v9 = *(a1 + 40);
        if (!v9)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C9BAE0](v14);
          LODWORD(v9) = v15;
          *(a1 + 40) = v15;
          goto LABEL_33;
        }
      }

      else if (v8 == 6)
      {
        if (v6 != 50)
        {
          goto LABEL_43;
        }

        *(a1 + 16) |= 8u;
        v9 = *(a1 + 48);
        if (!v9)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C9BAE0](v16);
          LODWORD(v9) = v17;
          *(a1 + 48) = v17;
          goto LABEL_33;
        }
      }

      else
      {
        if (v8 != 7 || v6 != 58)
        {
          goto LABEL_43;
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

          v11 = MEMORY[0x277C9BAE0](v10);
          LODWORD(v9) = v11;
          *(a1 + 56) = v11;
          goto LABEL_33;
        }
      }

      goto LABEL_34;
    }

    if (v8 != 1)
    {
      if (v8 != 4 || v6 != 34)
      {
LABEL_43:
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

        v18 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_35;
      }

      *(a1 + 16) |= 2u;
      v9 = *(a1 + 32);
      if (!v9)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C9BAE0](v12);
        LODWORD(v9) = v13;
        *(a1 + 32) = v13;
LABEL_33:
        v5 = v25;
      }

LABEL_34:
      v18 = sub_27680C988(a3, v9, v5);
      goto LABEL_35;
    }

    if (v6 != 10)
    {
      goto LABEL_43;
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

      v19 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v20);
      *(a1 + 24) = v19;
      v5 = v25;
    }

    v18 = sub_27680EFE0(a3, v19, v5);
LABEL_35:
    v25 = v18;
    if (!v18)
    {
      return 0;
    }
  }

  return v25;
}

unsigned __int8 *TSD::ConnectionLineConnectCommandArchive::_InternalSerialize(TSD::ConnectionLineConnectCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

  a2 = TSP::UUID::_InternalSerialize(v13, v15, a3);
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

  a2 = TSP::UUID::_InternalSerialize(v19, v21, a3);
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

  a2 = TSP::UUID::_InternalSerialize(v25, v27, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 7);
    *a2 = 58;
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

    a2 = TSP::UUID::_InternalSerialize(v31, v33, a3);
  }

LABEL_57:
  v37 = *(this + 1);
  if ((v37 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v37 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ConnectionLineConnectCommandArchive::ByteSizeLong(TSD::ConnectionLineConnectCommandArchive *this)
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

  if ((v2 & 0x1E) == 0)
  {
    goto LABEL_10;
  }

  if ((v2 & 2) == 0)
  {
    if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = TSP::UUID::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    goto LABEL_14;
  }

  v7 = TSP::UUID::ByteSizeLong(*(this + 4));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_14:
  v9 = TSP::UUID::ByteSizeLong(*(this + 6));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_9:
    v5 = TSP::UUID::ByteSizeLong(*(this + 7));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSD::ConnectionLineConnectCommandArchive::MergeFrom(TSD::ConnectionLineConnectCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ConnectionLineConnectCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ConnectionLineConnectCommandArchive::MergeFrom(uint64_t this, const TSD::ConnectionLineConnectCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) == 0)
  {
    return this;
  }

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

  v9 = MEMORY[0x277D809E0];
  if ((v5 & 2) == 0)
  {
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

LABEL_26:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C9BAE0](v14);
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

    this = TSP::UUID::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_42;
    }

    goto LABEL_34;
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

    v10 = MEMORY[0x277C9BAE0](v11);
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

  this = TSP::UUID::MergeFrom(v10, v12);
  if ((v5 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v5 & 8) == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
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
    v18 = v9;
  }

  this = TSP::UUID::MergeFrom(v16, v18);
  if ((v5 & 0x10) != 0)
  {
LABEL_42:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C9BAE0](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = v9;
    }

    return TSP::UUID::MergeFrom(v19, v21);
  }

  return this;
}

uint64_t *TSD::ConnectionLineConnectCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ConnectionLineConnectCommandArchive::Clear(this);

    return TSD::ConnectionLineConnectCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ConnectionLineConnectCommandArchive::CopyFrom(uint64_t *this, const TSD::ConnectionLineConnectCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ConnectionLineConnectCommandArchive::Clear(this);

    return TSD::ConnectionLineConnectCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ConnectionLineConnectCommandArchive::IsInitialized(TSD::ConnectionLineConnectCommandArchive *this)
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
      result = TSP::UUID::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::UUID::IsInitialized(*(this + 5));
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

    result = TSP::UUID::IsInitialized(*(this + 7));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::ConnectionLineConnectCommandArchive::InternalSwap(TSD::ConnectionLineConnectCommandArchive *this, TSD::ConnectionLineConnectCommandArchive *a2)
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

uint64_t *TSD::InfoGeometryCommandArchive::clear_newgeometry(TSD::InfoGeometryCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::GeometryArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSD::InfoGeometryCommandArchive::clear_oldgeometry(TSD::InfoGeometryCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::GeometryArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::InfoGeometryCommandArchive *TSD::InfoGeometryCommandArchive::InfoGeometryCommandArchive(TSD::InfoGeometryCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A228;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
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
  *this = &unk_28857A228;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::InfoGeometryCommandArchive *TSD::InfoGeometryCommandArchive::InfoGeometryCommandArchive(TSD::InfoGeometryCommandArchive *this, const TSD::InfoGeometryCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A228;
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
  *(this + 12) = *(a2 + 12);
  return this;
}

void TSD::InfoGeometryCommandArchive::~InfoGeometryCommandArchive(TSD::InfoGeometryCommandArchive *this)
{
  if (this != &TSD::_InfoGeometryCommandArchive_default_instance_)
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
      TSD::GeometryArchive::~GeometryArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSD::GeometryArchive::~GeometryArchive(v4);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::InfoGeometryCommandArchive::~InfoGeometryCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::InfoGeometryCommandArchive::default_instance(TSD::InfoGeometryCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_InfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_InfoGeometryCommandArchive_default_instance_;
}

uint64_t *TSD::InfoGeometryCommandArchive::Clear(uint64_t *this)
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

    this = TSD::GeometryArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSD::GeometryArchive::Clear(*(v1 + 40));
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

google::protobuf::internal *TSD::InfoGeometryCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v41) & 1) == 0)
  {
    while (1)
    {
      v7 = (v41 + 1);
      v8 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v9 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_78;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_59;
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

            v22 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v23);
            *(a1 + 24) = v22;
            v7 = v41;
          }

          v24 = sub_27680EFE0(a3, v22, v7);
LABEL_66:
          v41 = v24;
          if (!v24)
          {
            goto LABEL_78;
          }

          goto LABEL_67;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_59;
          }

          *(a1 + 16) |= 2u;
          v15 = *(a1 + 32);
          if (!v15)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v31);
            *(a1 + 32) = v15;
LABEL_57:
            v7 = v41;
          }
        }

        else
        {
          if (v10 != 3 || v8 != 26)
          {
LABEL_59:
            if (v8)
            {
              v32 = (v8 & 7) == 4;
            }

            else
            {
              v32 = 1;
            }

            if (v32)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_27670AF80((a1 + 8));
            }

            v24 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_66;
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

            v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v16);
            *(a1 + 40) = v15;
            goto LABEL_57;
          }
        }

        v24 = sub_27680C4A8(a3, v15, v7);
        goto LABEL_66;
      }

      if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_59;
          }

          v5 |= 0x20u;
          v29 = (v7 + 1);
          v28 = *v7;
          if ((v28 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v30 = *v29;
          v28 = (v30 << 7) + v28 - 128;
          if ((v30 & 0x80000000) == 0)
          {
            v29 = (v7 + 2);
LABEL_51:
            v41 = v29;
            *(a1 + 50) = v28 != 0;
            goto LABEL_67;
          }

          v35 = google::protobuf::internal::VarintParseSlow64(v7, v28);
          v41 = v35;
          *(a1 + 50) = v36 != 0;
          if (!v35)
          {
            goto LABEL_78;
          }
        }

        else
        {
          if (v10 != 7 || v8 != 56)
          {
            goto LABEL_59;
          }

          v5 |= 0x40u;
          v18 = (v7 + 1);
          v17 = *v7;
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if ((v19 & 0x80000000) == 0)
          {
            v18 = (v7 + 2);
LABEL_33:
            v41 = v18;
            *(a1 + 51) = v17 != 0;
            goto LABEL_67;
          }

          v39 = google::protobuf::internal::VarintParseSlow64(v7, v17);
          v41 = v39;
          *(a1 + 51) = v40 != 0;
          if (!v39)
          {
LABEL_78:
            v41 = 0;
            goto LABEL_2;
          }
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_59;
        }

        v5 |= 8u;
        v26 = (v7 + 1);
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = (v7 + 2);
LABEL_46:
          v41 = v26;
          *(a1 + 48) = v25 != 0;
          goto LABEL_67;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v7, v25);
        v41 = v33;
        *(a1 + 48) = v34 != 0;
        if (!v33)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_59;
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
          v41 = v12;
          *(a1 + 49) = v11 != 0;
          goto LABEL_67;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v41 = v37;
        *(a1 + 49) = v38 != 0;
        if (!v37)
        {
          goto LABEL_78;
        }
      }

LABEL_67:
      if (sub_27670AF08(a3, &v41))
      {
        goto LABEL_2;
      }
    }

    v7 = (v41 + 2);
LABEL_6:
    v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v41;
}

unsigned __int8 *TSD::InfoGeometryCommandArchive::_InternalSerialize(TSD::InfoGeometryCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      goto LABEL_29;
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

  a2 = TSD::GeometryArchive::_InternalSerialize(v13, v15, a3, a4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
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

  a2 = TSD::GeometryArchive::_InternalSerialize(v19, v21, a3, a4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
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

  v25 = *(this + 48);
  *a2 = 32;
  a2[1] = v25;
  a2 += 2;
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_42:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 49);
  *a2 = 40;
  a2[1] = v26;
  a2 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v27 = *(this + 50);
  *a2 = 48;
  a2[1] = v27;
  a2 += 2;
  if ((v6 & 0x40) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v28 = *(this + 51);
    *a2 = 56;
    a2[1] = v28;
    a2 += 2;
  }

LABEL_51:
  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::InfoGeometryCommandArchive::ByteSizeLong(TSD::InfoGeometryCommandArchive *this)
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

  if ((v2 & 0x7E) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSD::GeometryArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v6 = TSD::GeometryArchive::ByteSizeLong(*(this + 5));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v7.i64[0] = 0x200000002;
    v7.i64[1] = 0x200000002;
    v3 += vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_27682D170), v7));
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

uint64_t TSD::InfoGeometryCommandArchive::MergeFrom(TSD::InfoGeometryCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::InfoGeometryCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::InfoGeometryCommandArchive::MergeFrom(uint64_t this, const TSD::InfoGeometryCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x7F) != 0)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSD::_GeometryArchive_default_instance_;
      }

      this = TSD::GeometryArchive::MergeFrom(v9, v11);
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
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSD::_GeometryArchive_default_instance_;
    }

    this = TSD::GeometryArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }

LABEL_38:
    *(v3 + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_17:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_40;
    }

LABEL_39:
    *(v3 + 49) = *(a2 + 49);
    if ((v5 & 0x20) == 0)
    {
LABEL_18:
      if ((v5 & 0x40) == 0)
      {
LABEL_20:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_19:
      *(v3 + 51) = *(a2 + 51);
      goto LABEL_20;
    }

LABEL_40:
    *(v3 + 50) = *(a2 + 50);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  return this;
}

uint64_t *TSD::InfoGeometryCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::InfoGeometryCommandArchive::Clear(this);

    return TSD::InfoGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::InfoGeometryCommandArchive::CopyFrom(uint64_t *this, const TSD::InfoGeometryCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::InfoGeometryCommandArchive::Clear(this);

    return TSD::InfoGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::InfoGeometryCommandArchive::IsInitialized(TSD::InfoGeometryCommandArchive *this)
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
      result = TSD::GeometryArchive::IsInitialized(*(this + 4));
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

    result = TSD::GeometryArchive::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::InfoGeometryCommandArchive::InternalSwap(TSD::InfoGeometryCommandArchive *this, TSD::InfoGeometryCommandArchive *a2)
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

uint64_t *TSD::DrawablePathSourceCommandArchive::clear_old_path_source(TSD::DrawablePathSourceCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::PathSourceArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSD::DrawablePathSourceCommandArchive::clear_new_path_source(TSD::DrawablePathSourceCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::PathSourceArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::DrawablePathSourceCommandArchive *TSD::DrawablePathSourceCommandArchive::DrawablePathSourceCommandArchive(TSD::DrawablePathSourceCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A2D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawablePathSourceCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857A2D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawablePathSourceCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::DrawablePathSourceCommandArchive *TSD::DrawablePathSourceCommandArchive::DrawablePathSourceCommandArchive(TSD::DrawablePathSourceCommandArchive *this, const TSD::DrawablePathSourceCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A2D8;
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

void TSD::DrawablePathSourceCommandArchive::~DrawablePathSourceCommandArchive(TSD::DrawablePathSourceCommandArchive *this)
{
  if (this != &TSD::_DrawablePathSourceCommandArchive_default_instance_)
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
      TSD::PathSourceArchive::~PathSourceArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSD::PathSourceArchive::~PathSourceArchive(v4);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::DrawablePathSourceCommandArchive::~DrawablePathSourceCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::DrawablePathSourceCommandArchive::default_instance(TSD::DrawablePathSourceCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawablePathSourceCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawablePathSourceCommandArchive_default_instance_;
}

uint64_t *TSD::DrawablePathSourceCommandArchive::Clear(uint64_t *this)
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

    this = TSD::PathSourceArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSD::PathSourceArchive::Clear(*(v1 + 40));
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

google::protobuf::internal *TSD::DrawablePathSourceCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v14);
        *(a1 + 40) = v12;
LABEL_30:
        v5 = v20;
      }

LABEL_31:
      v11 = sub_27680C7E8(a3, v12, v5);
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v13);
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

unsigned __int8 *TSD::DrawablePathSourceCommandArchive::_InternalSerialize(TSD::DrawablePathSourceCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

  a2 = TSD::PathSourceArchive::_InternalSerialize(v13, v15, a3);
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

    a2 = TSD::PathSourceArchive::_InternalSerialize(v19, v21, a3);
  }

LABEL_35:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::DrawablePathSourceCommandArchive::ByteSizeLong(TSD::DrawablePathSourceCommandArchive *this)
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
      v5 = TSD::PathSourceArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v6 = TSD::PathSourceArchive::ByteSizeLong(*(this + 5));
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

uint64_t TSD::DrawablePathSourceCommandArchive::MergeFrom(TSD::DrawablePathSourceCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawablePathSourceCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawablePathSourceCommandArchive::MergeFrom(uint64_t this, const TSD::DrawablePathSourceCommandArchive *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSD::_PathSourceArchive_default_instance_;
      }

      this = TSD::PathSourceArchive::MergeFrom(v9, v11);
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

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = &TSD::_PathSourceArchive_default_instance_;
      }

      return TSD::PathSourceArchive::MergeFrom(v12, v14);
    }
  }

  return this;
}

uint64_t *TSD::DrawablePathSourceCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawablePathSourceCommandArchive::Clear(this);

    return TSD::DrawablePathSourceCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawablePathSourceCommandArchive::CopyFrom(uint64_t *this, const TSD::DrawablePathSourceCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawablePathSourceCommandArchive::Clear(this);

    return TSD::DrawablePathSourceCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawablePathSourceCommandArchive::IsInitialized(TSD::DrawablePathSourceCommandArchive *this)
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
      result = TSD::PathSourceArchive::IsInitialized(*(this + 4));
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

    result = TSD::PathSourceArchive::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::DrawablePathSourceCommandArchive::InternalSwap(TSD::DrawablePathSourceCommandArchive *this, TSD::DrawablePathSourceCommandArchive *a2)
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

TSP::Path *TSD::InstantAlphaCommandArchive::clear_oldpath(TSD::InstantAlphaCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Path *TSD::InstantAlphaCommandArchive::clear_newpath(TSD::InstantAlphaCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::InstantAlphaCommandArchive *TSD::InstantAlphaCommandArchive::InstantAlphaCommandArchive(TSD::InstantAlphaCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A388;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InstantAlphaCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857A388;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_InstantAlphaCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::InstantAlphaCommandArchive *TSD::InstantAlphaCommandArchive::InstantAlphaCommandArchive(TSD::InstantAlphaCommandArchive *this, const TSD::InstantAlphaCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A388;
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

void TSD::InstantAlphaCommandArchive::~InstantAlphaCommandArchive(TSD::InstantAlphaCommandArchive *this)
{
  if (this != &TSD::_InstantAlphaCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::InfoCommandArchive::~InfoCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277C9B630]();
      MEMORY[0x277C9C1D0](v3, 0x10A1C40290C9B23);
    }

    if (*(this + 5))
    {
      v4 = MEMORY[0x277C9B630]();
      MEMORY[0x277C9C1D0](v4, 0x10A1C40290C9B23);
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::InstantAlphaCommandArchive::~InstantAlphaCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::InstantAlphaCommandArchive::default_instance(TSD::InstantAlphaCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_InstantAlphaCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_InstantAlphaCommandArchive_default_instance_;
}

uint64_t *TSD::InstantAlphaCommandArchive::Clear(uint64_t *this)
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

    this = TSP::Path::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Path::Clear(*(v1 + 40));
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

google::protobuf::internal *TSD::InstantAlphaCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v16 = MEMORY[0x277C9BAC0](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v22;
      }

LABEL_31:
      v11 = sub_27680AC5C(a3, v12, v5);
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

        v14 = MEMORY[0x277C9BAC0](v13);
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

unsigned __int8 *TSD::InstantAlphaCommandArchive::_InternalSerialize(TSD::InstantAlphaCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

  a2 = TSP::Path::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(this + 5);
    *a2 = 26;
    v20 = *(v19 + 10);
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

    a2 = TSP::Path::_InternalSerialize(v19, v21, a3);
  }

LABEL_35:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::InstantAlphaCommandArchive::ByteSizeLong(TSD::InstantAlphaCommandArchive *this)
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
      v5 = TSP::Path::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v6 = TSP::Path::ByteSizeLong(*(this + 5));
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

uint64_t TSD::InstantAlphaCommandArchive::MergeFrom(TSD::InstantAlphaCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::InstantAlphaCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::InstantAlphaCommandArchive::MergeFrom(uint64_t this, const TSD::InstantAlphaCommandArchive *a2)
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

    v9 = MEMORY[0x277D809C8];
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

        v10 = MEMORY[0x277C9BAC0](v11);
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

      this = TSP::Path::MergeFrom(v10, v12);
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

        v13 = MEMORY[0x277C9BAC0](v14);
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

      return TSP::Path::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSD::InstantAlphaCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::InstantAlphaCommandArchive::Clear(this);

    return TSD::InstantAlphaCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::InstantAlphaCommandArchive::CopyFrom(uint64_t *this, const TSD::InstantAlphaCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::InstantAlphaCommandArchive::Clear(this);

    return TSD::InstantAlphaCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::InstantAlphaCommandArchive::IsInitialized(TSD::InstantAlphaCommandArchive *this)
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
      result = TSP::Path::IsInitialized(*(this + 4));
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

    result = TSP::Path::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::InstantAlphaCommandArchive::InternalSwap(TSD::InstantAlphaCommandArchive *this, TSD::InstantAlphaCommandArchive *a2)
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

TSS::ApplyThemeChildCommandArchive *TSD::DrawableApplyThemeCommandArchive::clear_super(TSD::DrawableApplyThemeCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::ApplyThemeChildCommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSD::DrawableApplyThemeCommandArchive::clear_info(TSD::DrawableApplyThemeCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::DrawableApplyThemeCommandArchive::clear_style(TSD::DrawableApplyThemeCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::DrawableApplyThemeCommandArchive *TSD::DrawableApplyThemeCommandArchive::DrawableApplyThemeCommandArchive(TSD::DrawableApplyThemeCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A438;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableApplyThemeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857A438;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableApplyThemeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::DrawableApplyThemeCommandArchive *TSD::DrawableApplyThemeCommandArchive::DrawableApplyThemeCommandArchive(TSD::DrawableApplyThemeCommandArchive *this, const TSD::DrawableApplyThemeCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A438;
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

void TSD::DrawableApplyThemeCommandArchive::~DrawableApplyThemeCommandArchive(TSD::DrawableApplyThemeCommandArchive *this)
{
  if (this != &TSD::_DrawableApplyThemeCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C9B8D0]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40DFBAE579);
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
  TSD::DrawableApplyThemeCommandArchive::~DrawableApplyThemeCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::DrawableApplyThemeCommandArchive::default_instance(TSD::DrawableApplyThemeCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawableApplyThemeCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawableApplyThemeCommandArchive_default_instance_;
}

uint64_t *TSD::DrawableApplyThemeCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSS::ApplyThemeChildCommandArchive::Clear(this[3]);
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
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::DrawableApplyThemeCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v16 = MEMORY[0x277C9BB20](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v23;
      }

LABEL_31:
      v11 = sub_27680B6EC(a3, v12, v5);
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

        v14 = MEMORY[0x277C9BB20](v13);
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
    v17 = *(a1 + 24);
    if (!v17)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C9BB40](v18);
      LODWORD(v17) = v19;
      *(a1 + 24) = v19;
      v5 = v23;
    }

    v11 = sub_27680F0B0(a3, v17, v5);
LABEL_37:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSD::DrawableApplyThemeCommandArchive::_InternalSerialize(TSD::DrawableApplyThemeCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSS::ApplyThemeChildCommandArchive::_InternalSerialize(v7, v9, a3);
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

  a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
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

    a2 = TSP::Reference::_InternalSerialize(v19, v21, a3);
  }

LABEL_35:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::DrawableApplyThemeCommandArchive::ByteSizeLong(TSD::DrawableApplyThemeCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSS::ApplyThemeChildCommandArchive::ByteSizeLong(*(this + 3));
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
      v6 = TSP::Reference::ByteSizeLong(*(this + 5));
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

uint64_t TSD::DrawableApplyThemeCommandArchive::MergeFrom(TSD::DrawableApplyThemeCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawableApplyThemeCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawableApplyThemeCommandArchive::MergeFrom(uint64_t this, const TSD::DrawableApplyThemeCommandArchive *a2)
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

        v6 = MEMORY[0x277C9BB40](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BE8];
      }

      this = TSS::ApplyThemeChildCommandArchive::MergeFrom(v6, v8);
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

      return TSP::Reference::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSD::DrawableApplyThemeCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableApplyThemeCommandArchive::Clear(this);

    return TSD::DrawableApplyThemeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawableApplyThemeCommandArchive::CopyFrom(uint64_t *this, const TSD::DrawableApplyThemeCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableApplyThemeCommandArchive::Clear(this);

    return TSD::DrawableApplyThemeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawableApplyThemeCommandArchive::IsInitialized(TSD::DrawableApplyThemeCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::ApplyThemeChildCommandArchive::IsInitialized(*(this + 3));
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

__n128 TSD::DrawableApplyThemeCommandArchive::InternalSwap(TSD::DrawableApplyThemeCommandArchive *this, TSD::DrawableApplyThemeCommandArchive *a2)
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

TSD::AbstractStyleCommandArchive *TSD::AbstractStyleCommandArchive::AbstractStyleCommandArchive(TSD::AbstractStyleCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A4E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AbstractStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857A4E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AbstractStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::AbstractStyleCommandArchive *TSD::AbstractStyleCommandArchive::AbstractStyleCommandArchive(TSD::AbstractStyleCommandArchive *this, const TSD::AbstractStyleCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A4E8;
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

void TSD::AbstractStyleCommandArchive::~AbstractStyleCommandArchive(TSD::AbstractStyleCommandArchive *this)
{
  if (this != &TSD::_AbstractStyleCommandArchive_default_instance_)
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
  TSD::AbstractStyleCommandArchive::~AbstractStyleCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::AbstractStyleCommandArchive::default_instance(TSD::AbstractStyleCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_AbstractStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_AbstractStyleCommandArchive_default_instance_;
}

uint64_t *TSD::AbstractStyleCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::InfoCommandArchive::Clear(this[3]);
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

google::protobuf::internal *TSD::AbstractStyleCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_27680EFE0(a3, v10, v5);
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

unsigned __int8 *TSD::AbstractStyleCommandArchive::_InternalSerialize(TSD::AbstractStyleCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::InfoCommandArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::AbstractStyleCommandArchive::ByteSizeLong(TSD::InfoCommandArchive **this)
{
  if (this[2])
  {
    v3 = TSD::InfoCommandArchive::ByteSizeLong(this[3]);
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

uint64_t TSD::AbstractStyleCommandArchive::MergeFrom(TSD::AbstractStyleCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::AbstractStyleCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::AbstractStyleCommandArchive::MergeFrom(uint64_t this, const TSD::AbstractStyleCommandArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSD::_InfoCommandArchive_default_instance_;
    }

    return TSD::InfoCommandArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::AbstractStyleCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::AbstractStyleCommandArchive::Clear(this);

    return TSD::AbstractStyleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::AbstractStyleCommandArchive::CopyFrom(uint64_t *this, const TSD::AbstractStyleCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::AbstractStyleCommandArchive::Clear(this);

    return TSD::AbstractStyleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::AbstractStyleCommandArchive::IsInitialized(TSD::InfoCommandArchive **this)
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

uint64_t *TSD::AbstractStyleCommandArchive::InternalSwap(TSD::AbstractStyleCommandArchive *this, TSD::AbstractStyleCommandArchive *a2)
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

TSP::Reference *TSD::StyledInfoSetStyleCommandArchive::clear_new_style(TSD::StyledInfoSetStyleCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::StyledInfoSetStyleCommandArchive::clear_rollback_style(TSD::StyledInfoSetStyleCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::StyledInfoSetStyleCommandArchive *TSD::StyledInfoSetStyleCommandArchive::StyledInfoSetStyleCommandArchive(TSD::StyledInfoSetStyleCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A598;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StyledInfoSetStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857A598;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StyledInfoSetStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::StyledInfoSetStyleCommandArchive *TSD::StyledInfoSetStyleCommandArchive::StyledInfoSetStyleCommandArchive(TSD::StyledInfoSetStyleCommandArchive *this, const TSD::StyledInfoSetStyleCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A598;
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

void TSD::StyledInfoSetStyleCommandArchive::~StyledInfoSetStyleCommandArchive(TSD::StyledInfoSetStyleCommandArchive *this)
{
  if (this != &TSD::_StyledInfoSetStyleCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::AbstractStyleCommandArchive::~AbstractStyleCommandArchive(v2);
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
  TSD::StyledInfoSetStyleCommandArchive::~StyledInfoSetStyleCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::StyledInfoSetStyleCommandArchive::default_instance(TSD::StyledInfoSetStyleCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_StyledInfoSetStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_StyledInfoSetStyleCommandArchive_default_instance_;
}

uint64_t *TSD::StyledInfoSetStyleCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSD::AbstractStyleCommandArchive::Clear(this[3]);
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
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::StyledInfoSetStyleCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    if (v6 >> 3 == 4)
    {
      if (v6 != 34)
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

        v16 = MEMORY[0x277C9BB20](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v22;
      }

LABEL_31:
      v11 = sub_27680B6EC(a3, v12, v5);
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

        v14 = MEMORY[0x277C9BB20](v13);
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

      v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::AbstractStyleCommandArchive>(v18);
      *(a1 + 24) = v17;
      v5 = v22;
    }

    v11 = sub_27680F180(a3, v17, v5);
LABEL_37:
    v22 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v22;
}

unsigned __int8 *TSD::StyledInfoSetStyleCommandArchive::_InternalSerialize(TSD::StyledInfoSetStyleCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::AbstractStyleCommandArchive::_InternalSerialize(v7, v9, a3, a4);
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

  a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) != 0)
  {
LABEL_25:
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
  }

LABEL_35:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::StyledInfoSetStyleCommandArchive::ByteSizeLong(TSD::StyledInfoSetStyleCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::AbstractStyleCommandArchive::ByteSizeLong(*(this + 3));
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
      v6 = TSP::Reference::ByteSizeLong(*(this + 5));
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

uint64_t TSD::StyledInfoSetStyleCommandArchive::MergeFrom(TSD::StyledInfoSetStyleCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::StyledInfoSetStyleCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::StyledInfoSetStyleCommandArchive::MergeFrom(uint64_t this, const TSD::StyledInfoSetStyleCommandArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::AbstractStyleCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_AbstractStyleCommandArchive_default_instance_;
      }

      this = TSD::AbstractStyleCommandArchive::MergeFrom(v6, v8);
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

      return TSP::Reference::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSD::StyledInfoSetStyleCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::StyledInfoSetStyleCommandArchive::Clear(this);

    return TSD::StyledInfoSetStyleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::StyledInfoSetStyleCommandArchive::CopyFrom(uint64_t *this, const TSD::StyledInfoSetStyleCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::StyledInfoSetStyleCommandArchive::Clear(this);

    return TSD::StyledInfoSetStyleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::StyledInfoSetStyleCommandArchive::IsInitialized(TSD::StyledInfoSetStyleCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 3);
  if ((*(v3 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::InfoCommandArchive::IsInitialized(*(v3 + 24));
  if (result)
  {
    v4 = *(this + 4);
    if ((v4 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 4);
    }

    if ((v4 & 4) == 0)
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

__n128 TSD::StyledInfoSetStyleCommandArchive::InternalSwap(TSD::StyledInfoSetStyleCommandArchive *this, TSD::StyledInfoSetStyleCommandArchive *a2)
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

TSP::Reference *TSD::BaseApplyPresetCommandArchive::clear_preset_style(TSD::BaseApplyPresetCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::BaseApplyPresetCommandArchive::clear_rollback_style(TSD::BaseApplyPresetCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::BaseApplyPresetCommandArchive *TSD::BaseApplyPresetCommandArchive::BaseApplyPresetCommandArchive(TSD::BaseApplyPresetCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A648;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BaseApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857A648;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BaseApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::BaseApplyPresetCommandArchive *TSD::BaseApplyPresetCommandArchive::BaseApplyPresetCommandArchive(TSD::BaseApplyPresetCommandArchive *this, const TSD::BaseApplyPresetCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A648;
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

void TSD::BaseApplyPresetCommandArchive::~BaseApplyPresetCommandArchive(TSD::BaseApplyPresetCommandArchive *this)
{
  if (this != &TSD::_BaseApplyPresetCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::AbstractStyleCommandArchive::~AbstractStyleCommandArchive(v2);
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
  TSD::BaseApplyPresetCommandArchive::~BaseApplyPresetCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::BaseApplyPresetCommandArchive::default_instance(TSD::BaseApplyPresetCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_BaseApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_BaseApplyPresetCommandArchive_default_instance_;
}

uint64_t *TSD::BaseApplyPresetCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSD::AbstractStyleCommandArchive::Clear(this[3]);
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
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::BaseApplyPresetCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
    if (v6 >> 3 == 4)
    {
      if (v6 != 34)
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

        v16 = MEMORY[0x277C9BB20](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v22;
      }

LABEL_31:
      v11 = sub_27680B6EC(a3, v12, v5);
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

        v14 = MEMORY[0x277C9BB20](v13);
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

      v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::AbstractStyleCommandArchive>(v18);
      *(a1 + 24) = v17;
      v5 = v22;
    }

    v11 = sub_27680F180(a3, v17, v5);
LABEL_37:
    v22 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v22;
}

unsigned __int8 *TSD::BaseApplyPresetCommandArchive::_InternalSerialize(TSD::BaseApplyPresetCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::AbstractStyleCommandArchive::_InternalSerialize(v7, v9, a3, a4);
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

  a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) != 0)
  {
LABEL_25:
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
  }

LABEL_35:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v25 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::BaseApplyPresetCommandArchive::ByteSizeLong(TSD::BaseApplyPresetCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::AbstractStyleCommandArchive::ByteSizeLong(*(this + 3));
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
      v6 = TSP::Reference::ByteSizeLong(*(this + 5));
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

uint64_t TSD::BaseApplyPresetCommandArchive::MergeFrom(TSD::BaseApplyPresetCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::BaseApplyPresetCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::BaseApplyPresetCommandArchive::MergeFrom(uint64_t this, const TSD::BaseApplyPresetCommandArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::AbstractStyleCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_AbstractStyleCommandArchive_default_instance_;
      }

      this = TSD::AbstractStyleCommandArchive::MergeFrom(v6, v8);
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

      return TSP::Reference::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSD::BaseApplyPresetCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::BaseApplyPresetCommandArchive::Clear(this);

    return TSD::BaseApplyPresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::BaseApplyPresetCommandArchive::CopyFrom(uint64_t *this, const TSD::BaseApplyPresetCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::BaseApplyPresetCommandArchive::Clear(this);

    return TSD::BaseApplyPresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::BaseApplyPresetCommandArchive::IsInitialized(TSD::BaseApplyPresetCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 3);
  if ((*(v3 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::InfoCommandArchive::IsInitialized(*(v3 + 24));
  if (result)
  {
    v4 = *(this + 4);
    if ((v4 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v4 = *(this + 4);
    }

    if ((v4 & 4) == 0)
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

__n128 TSD::BaseApplyPresetCommandArchive::InternalSwap(TSD::BaseApplyPresetCommandArchive *this, TSD::BaseApplyPresetCommandArchive *a2)
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

TSD::ShapeApplyPresetCommandArchive *TSD::ShapeApplyPresetCommandArchive::ShapeApplyPresetCommandArchive(TSD::ShapeApplyPresetCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A6F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857A6F8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::ShapeApplyPresetCommandArchive *TSD::ShapeApplyPresetCommandArchive::ShapeApplyPresetCommandArchive(TSD::ShapeApplyPresetCommandArchive *this, const TSD::ShapeApplyPresetCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A6F8;
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

void TSD::ShapeApplyPresetCommandArchive::~ShapeApplyPresetCommandArchive(TSD::ShapeApplyPresetCommandArchive *this)
{
  if (this != &TSD::_ShapeApplyPresetCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::BaseApplyPresetCommandArchive::~BaseApplyPresetCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ShapeApplyPresetCommandArchive::~ShapeApplyPresetCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ShapeApplyPresetCommandArchive::default_instance(TSD::ShapeApplyPresetCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ShapeApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ShapeApplyPresetCommandArchive_default_instance_;
}

uint64_t *TSD::ShapeApplyPresetCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::BaseApplyPresetCommandArchive::Clear(this[3]);
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

google::protobuf::internal *TSD::ShapeApplyPresetCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::BaseApplyPresetCommandArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_27680F250(a3, v10, v5);
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

unsigned __int8 *TSD::ShapeApplyPresetCommandArchive::_InternalSerialize(TSD::ShapeApplyPresetCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::BaseApplyPresetCommandArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ShapeApplyPresetCommandArchive::ByteSizeLong(TSD::BaseApplyPresetCommandArchive **this)
{
  if (this[2])
  {
    v3 = TSD::BaseApplyPresetCommandArchive::ByteSizeLong(this[3]);
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

uint64_t TSD::ShapeApplyPresetCommandArchive::MergeFrom(TSD::ShapeApplyPresetCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ShapeApplyPresetCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ShapeApplyPresetCommandArchive::MergeFrom(uint64_t this, const TSD::ShapeApplyPresetCommandArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::BaseApplyPresetCommandArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSD::_BaseApplyPresetCommandArchive_default_instance_;
    }

    return TSD::BaseApplyPresetCommandArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::ShapeApplyPresetCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ShapeApplyPresetCommandArchive::Clear(this);

    return TSD::ShapeApplyPresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ShapeApplyPresetCommandArchive::CopyFrom(uint64_t *this, const TSD::ShapeApplyPresetCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ShapeApplyPresetCommandArchive::Clear(this);

    return TSD::ShapeApplyPresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ShapeApplyPresetCommandArchive::IsInitialized(TSD::BaseApplyPresetCommandArchive **this)
{
  if (this[2])
  {
    return TSD::BaseApplyPresetCommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::ShapeApplyPresetCommandArchive::InternalSwap(TSD::ShapeApplyPresetCommandArchive *this, TSD::ShapeApplyPresetCommandArchive *a2)
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

TSD::MediaApplyPresetCommandArchive *TSD::MediaApplyPresetCommandArchive::MediaApplyPresetCommandArchive(TSD::MediaApplyPresetCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A7A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857A7A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_MediaApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::MediaApplyPresetCommandArchive *TSD::MediaApplyPresetCommandArchive::MediaApplyPresetCommandArchive(TSD::MediaApplyPresetCommandArchive *this, const TSD::MediaApplyPresetCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A7A8;
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

void TSD::MediaApplyPresetCommandArchive::~MediaApplyPresetCommandArchive(TSD::MediaApplyPresetCommandArchive *this)
{
  if (this != &TSD::_MediaApplyPresetCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::BaseApplyPresetCommandArchive::~BaseApplyPresetCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::MediaApplyPresetCommandArchive::~MediaApplyPresetCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::MediaApplyPresetCommandArchive::default_instance(TSD::MediaApplyPresetCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_MediaApplyPresetCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_MediaApplyPresetCommandArchive_default_instance_;
}

uint64_t *TSD::MediaApplyPresetCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::BaseApplyPresetCommandArchive::Clear(this[3]);
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

google::protobuf::internal *TSD::MediaApplyPresetCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::BaseApplyPresetCommandArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_27680F250(a3, v10, v5);
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

unsigned __int8 *TSD::MediaApplyPresetCommandArchive::_InternalSerialize(TSD::MediaApplyPresetCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::BaseApplyPresetCommandArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::MediaApplyPresetCommandArchive::ByteSizeLong(TSD::BaseApplyPresetCommandArchive **this)
{
  if (this[2])
  {
    v3 = TSD::BaseApplyPresetCommandArchive::ByteSizeLong(this[3]);
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

uint64_t TSD::MediaApplyPresetCommandArchive::MergeFrom(TSD::MediaApplyPresetCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::MediaApplyPresetCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::MediaApplyPresetCommandArchive::MergeFrom(uint64_t this, const TSD::MediaApplyPresetCommandArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::BaseApplyPresetCommandArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSD::_BaseApplyPresetCommandArchive_default_instance_;
    }

    return TSD::BaseApplyPresetCommandArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::MediaApplyPresetCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MediaApplyPresetCommandArchive::Clear(this);

    return TSD::MediaApplyPresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::MediaApplyPresetCommandArchive::CopyFrom(uint64_t *this, const TSD::MediaApplyPresetCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MediaApplyPresetCommandArchive::Clear(this);

    return TSD::MediaApplyPresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::MediaApplyPresetCommandArchive::IsInitialized(TSD::BaseApplyPresetCommandArchive **this)
{
  if (this[2])
  {
    return TSD::BaseApplyPresetCommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::MediaApplyPresetCommandArchive::InternalSwap(TSD::MediaApplyPresetCommandArchive *this, TSD::MediaApplyPresetCommandArchive *a2)
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

uint64_t *TSD::ShapeStyleSetValueCommandArchive::clear_change(TSD::ShapeStyleSetValueCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSDSOS::BaseShapeStylePropertyChangeSetArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::ShapeStyleSetValueCommandArchive *TSD::ShapeStyleSetValueCommandArchive::ShapeStyleSetValueCommandArchive(TSD::ShapeStyleSetValueCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A858;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_28857A858;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSD::ShapeStyleSetValueCommandArchive *TSD::ShapeStyleSetValueCommandArchive::ShapeStyleSetValueCommandArchive(TSD::ShapeStyleSetValueCommandArchive *this, const TSD::ShapeStyleSetValueCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A858;
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

void TSD::ShapeStyleSetValueCommandArchive::~ShapeStyleSetValueCommandArchive(TSD::ShapeStyleSetValueCommandArchive *this)
{
  if (this != &TSD::_ShapeStyleSetValueCommandArchive_default_instance_)
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
      TSDSOS::BaseShapeStylePropertyChangeSetArchive::~BaseShapeStylePropertyChangeSetArchive(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ShapeStyleSetValueCommandArchive::~ShapeStyleSetValueCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ShapeStyleSetValueCommandArchive::default_instance(TSD::ShapeStyleSetValueCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ShapeStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ShapeStyleSetValueCommandArchive_default_instance_;
}

uint64_t *TSD::ShapeStyleSetValueCommandArchive::Clear(uint64_t *this)
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
      this = TSDSOS::BaseShapeStylePropertyChangeSetArchive::Clear(*(v1 + 32));
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

uint64_t *TSD::BaseStyleSetValueCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSD::AbstractStyleCommandArchive::Clear(this[3]);
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

google::protobuf::internal *TSD::ShapeStyleSetValueCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::BaseShapeStylePropertyChangeSetArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_27680F3F0(a3, v11, v5);
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

unsigned __int8 *TSD::ShapeStyleSetValueCommandArchive::_InternalSerialize(TSD::ShapeStyleSetValueCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSDSOS::BaseShapeStylePropertyChangeSetArchive::_InternalSerialize(v13, v15, a3, a4);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ShapeStyleSetValueCommandArchive::ByteSizeLong(TSD::ShapeStyleSetValueCommandArchive *this)
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
    v5 = TSDSOS::BaseShapeStylePropertyChangeSetArchive::ByteSizeLong(*(this + 4));
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

void TSD::ShapeStyleSetValueCommandArchive::MergeFrom(TSD::ShapeStyleSetValueCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSD::ShapeStyleSetValueCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSD::ShapeStyleSetValueCommandArchive::MergeFrom(TSD::ShapeStyleSetValueCommandArchive *this, const TSD::ShapeStyleSetValueCommandArchive *a2)
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSDSOS::BaseShapeStylePropertyChangeSetArchive>(v10);
        *(this + 4) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSDSOS::_BaseShapeStylePropertyChangeSetArchive_default_instance_;
      }

      TSDSOS::BaseShapeStylePropertyChangeSetArchive::MergeFrom(v9, v11);
    }
  }
}

uint64_t TSD::BaseStyleSetValueCommandArchive::MergeFrom(uint64_t this, const TSD::BaseStyleSetValueCommandArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::AbstractStyleCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_AbstractStyleCommandArchive_default_instance_;
      }

      this = TSD::AbstractStyleCommandArchive::MergeFrom(v6, v8);
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
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

void TSD::ShapeStyleSetValueCommandArchive::CopyFrom(TSD::ShapeStyleSetValueCommandArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSD::ShapeStyleSetValueCommandArchive::Clear(this);

    TSD::ShapeStyleSetValueCommandArchive::MergeFrom(this, a2);
  }
}

void TSD::ShapeStyleSetValueCommandArchive::CopyFrom(TSD::ShapeStyleSetValueCommandArchive *this, const TSD::ShapeStyleSetValueCommandArchive *a2)
{
  if (a2 != this)
  {
    TSD::ShapeStyleSetValueCommandArchive::Clear(this);

    TSD::ShapeStyleSetValueCommandArchive::MergeFrom(this, a2);
  }
}

uint64_t TSD::ShapeStyleSetValueCommandArchive::IsInitialized(TSD::ShapeStyleSetValueCommandArchive *this)
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

    result = TSDSOS::BaseShapeStylePropertyChangeSetArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t TSD::BaseStyleSetValueCommandArchive::IsInitialized(TSD::BaseStyleSetValueCommandArchive *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  if ((*(v2 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::InfoCommandArchive::IsInitialized(*(v2 + 24));
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

__n128 TSD::ShapeStyleSetValueCommandArchive::InternalSwap(TSD::ShapeStyleSetValueCommandArchive *this, TSD::ShapeStyleSetValueCommandArchive *a2)
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

TSP::Reference *TSD::BaseStyleSetValueCommandArchive::clear_old_style(TSD::BaseStyleSetValueCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::BaseStyleSetValueCommandArchive *TSD::BaseStyleSetValueCommandArchive::BaseStyleSetValueCommandArchive(TSD::BaseStyleSetValueCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857A908;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BaseStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_28857A908;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BaseStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

TSD::BaseStyleSetValueCommandArchive *TSD::BaseStyleSetValueCommandArchive::BaseStyleSetValueCommandArchive(TSD::BaseStyleSetValueCommandArchive *this, const TSD::BaseStyleSetValueCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857A908;
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
  *(this + 40) = *(a2 + 40);
  return this;
}

void TSD::BaseStyleSetValueCommandArchive::~BaseStyleSetValueCommandArchive(TSD::BaseStyleSetValueCommandArchive *this)
{
  if (this != &TSD::_BaseStyleSetValueCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::AbstractStyleCommandArchive::~AbstractStyleCommandArchive(v2);
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
  TSD::BaseStyleSetValueCommandArchive::~BaseStyleSetValueCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::BaseStyleSetValueCommandArchive::default_instance(TSD::BaseStyleSetValueCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_BaseStyleSetValueCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_BaseStyleSetValueCommandArchive_default_instance_;
}

google::protobuf::internal *TSD::BaseStyleSetValueCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v26) & 1) == 0)
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
      if (v8 >> 3 != 5)
      {
        if (v10 == 4)
        {
          if (v8 != 34)
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

            v16 = MEMORY[0x277C9BB20](v15);
            LODWORD(v14) = v16;
            *(a1 + 32) = v16;
            v7 = v26;
          }

          v13 = sub_27680B6EC(a3, v14, v7);
        }

        else if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v20 = *(a1 + 24);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = google::protobuf::Arena::CreateMaybeMessage<TSD::AbstractStyleCommandArchive>(v21);
            *(a1 + 24) = v20;
            v7 = v26;
          }

          v13 = sub_27680F180(a3, v20, v7);
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
            sub_27670AF80((a1 + 8));
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

      if (v8 != 40)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v18 = (v7 + 1);
      v17 = *v7;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_30:
        v26 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow64(v7, v17);
      v26 = v24;
      *(a1 + 40) = v25 != 0;
      if (!v24)
      {
LABEL_44:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_27670AF08(a3, &v26))
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

unsigned __int8 *TSD::BaseStyleSetValueCommandArchive::_InternalSerialize(TSD::BaseStyleSetValueCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::AbstractStyleCommandArchive::_InternalSerialize(v7, v9, a3, a4);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_28;
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

  a2 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v19 = *(this + 40);
    *a2 = 40;
    a2[1] = v19;
    a2 += 2;
  }

LABEL_28:
  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v20 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::BaseStyleSetValueCommandArchive::RequiredFieldsByteSizeFallback(TSD::BaseStyleSetValueCommandArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v4 = TSD::AbstractStyleCommandArchive::ByteSizeLong(*(this + 3));
    v2 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v1 = *(this + 4);
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 1) & 2);
}