uint64_t *TSCE::OwnerIDMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::OwnerIDMapArchive::Clear(this);

    return TSCE::OwnerIDMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::OwnerIDMapArchive::CopyFrom(uint64_t *this, const TSCE::OwnerIDMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::OwnerIDMapArchive::Clear(this);

    return TSCE::OwnerIDMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::OwnerIDMapArchive::IsInitialized(TSCE::OwnerIDMapArchive *this)
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

__n128 TSCE::OwnerIDMapArchive::InternalSwap(TSCE::OwnerIDMapArchive *this, TSCE::OwnerIDMapArchive *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  v7 = *(this + 6);
  result = *(a2 + 40);
  *(this + 40) = result;
  *(a2 + 5) = v6;
  *(a2 + 6) = v7;
  return result;
}

uint64_t TSCE::UidLookupListArchive::clear_uuids(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TSCE::UidLookupListArchive *TSCE::UidLookupListArchive::UidLookupListArchive(TSCE::UidLookupListArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD390;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_UidLookupListArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::UidLookupListArchive *TSCE::UidLookupListArchive::UidLookupListArchive(TSCE::UidLookupListArchive *this, const TSCE::UidLookupListArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AD390;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2215679F8(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::UidLookupListArchive::~UidLookupListArchive(TSCE::UidLookupListArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567974(this + 2);
}

{
  TSCE::UidLookupListArchive::~UidLookupListArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::UidLookupListArchive::default_instance(TSCE::UidLookupListArchive *this)
{
  if (atomic_load_explicit(scc_info_UidLookupListArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_UidLookupListArchive_default_instance_;
}

uint64_t *TSCE::UidLookupListArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
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

google::protobuf::internal *TSCE::UidLookupListArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_221567030(a3, &v21) & 1) == 0)
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
          v13 = MEMORY[0x223DA0360](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_2216F813C(a3, v14, v10);
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
        sub_221567188((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_221567030(a3, &v21))
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

unsigned __int8 *TSCE::UidLookupListArchive::_InternalSerialize(TSCE::UidLookupListArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::UUID::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UidLookupListArchive::ByteSizeLong(TSCE::UidLookupListArchive *this)
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
      v7 = TSP::UUID::ByteSizeLong(v6);
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

uint64_t TSCE::UidLookupListArchive::MergeFrom(TSCE::UidLookupListArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UidLookupListArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UidLookupListArchive::MergeFrom(uint64_t this, const TSCE::UidLookupListArchive *a2)
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
    this = sub_2215679F8(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::UidLookupListArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UidLookupListArchive::Clear(this);

    return TSCE::UidLookupListArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UidLookupListArchive::CopyFrom(uint64_t *this, const TSCE::UidLookupListArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UidLookupListArchive::Clear(this);

    return TSCE::UidLookupListArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::UidLookupListArchive::IsInitialized(TSCE::UidLookupListArchive *this)
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
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::UidLookupListArchive::InternalSwap(TSCE::UidLookupListArchive *this, TSCE::UidLookupListArchive *a2)
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

uint64_t TSCE::DependencyTrackerArchive::clear_formula_owner_dependencies(uint64_t this)
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

TSCE::DependencyTrackerArchive *TSCE::DependencyTrackerArchive::DependencyTrackerArchive(TSCE::DependencyTrackerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD440;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 12) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (atomic_load_explicit(scc_info_DependencyTrackerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  return this;
}

void sub_22151BDD8(_Unwind_Exception *a1)
{
  sub_2216E381C(v4);
  sub_221568D70(v3);
  sub_22156865C(v2);
  sub_22156A3B0(v1);
  _Unwind_Resume(a1);
}

TSCE::DependencyTrackerArchive *TSCE::DependencyTrackerArchive::DependencyTrackerArchive(TSCE::DependencyTrackerArchive *this, const TSCE::DependencyTrackerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AD440;
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
    sub_22156A434(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2215687A0(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_221568DF4(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    sub_221568514(this + 96, v22, (v21 + 8), v20, **(this + 14) - *(this + 26));
    v23 = *(this + 26) + v20;
    *(this + 26) = v23;
    v24 = *(this + 14);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 1);
  if (v25)
  {
    sub_22156734C(v4, (v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  v26 = *(a2 + 16);
  *(this + 15) = 0;
  *(this + 16) = v26;
  return this;
}

void sub_22151C07C(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v3, 0x10A1C407B9F7E5ALL);
  sub_2216E381C(v5);
  sub_221568D70(v4);
  sub_22156865C(v2);
  sub_22156A3B0((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::DependencyTrackerArchive::~DependencyTrackerArchive(TSCE::DependencyTrackerArchive *this)
{
  if (this != &TSCE::_DependencyTrackerArchive_default_instance_)
  {
    v2 = *(this + 15);
    if (v2)
    {
      TSCE::OwnerIDMapArchive::~OwnerIDMapArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_2216E381C(this + 12);
  sub_221568D70(this + 9);
  sub_22156865C(this + 6);
  sub_22156A3B0(this + 3);
}

{
  TSCE::DependencyTrackerArchive::~DependencyTrackerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::DependencyTrackerArchive::default_instance(TSCE::DependencyTrackerArchive *this)
{
  if (atomic_load_explicit(scc_info_DependencyTrackerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_DependencyTrackerArchive_default_instance_;
}

uint64_t *TSCE::DependencyTrackerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::FormulaOwnerInfoArchive::Clear(v4);
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
      this = TSCE::CellReferenceArchive::Clear(v7);
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
      this = TSCE::InternalCellReferenceArchive::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 104);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 112) + 8);
    do
    {
      v13 = *v12++;
      this = TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSCE::OwnerIDMapArchive::Clear(*(v1 + 120));
  }

  v15 = *(v1 + 8);
  v14 = v1 + 8;
  *(v14 + 120) = 0;
  *(v14 + 8) = 0;
  if (v15)
  {

    return sub_221567398(v14);
  }

  return this;
}

google::protobuf::internal *TSCE::DependencyTrackerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v56 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v56) & 1) == 0)
  {
    while (1)
    {
      v7 = (v56 + 1);
      v8 = *v56;
      if ((*v56 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v56, (v9 - 128));
      v56 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_95;
      }

      v7 = TagFallback;
      v8 = v53;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 != 1)
        {
          if (v10 != 2)
          {
            if (v10 == 3 && v8 == 26)
            {
              *(a1 + 16) |= 1u;
              v12 = *(a1 + 120);
              if (!v12)
              {
                v13 = *(a1 + 8);
                if (v13)
                {
                  v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
                }

                v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerIDMapArchive>(v13);
                *(a1 + 120) = v12;
                v7 = v56;
              }

              v14 = sub_2216FB2CC(a3, v12, v7);
LABEL_87:
              v56 = v14;
              if (!v14)
              {
                goto LABEL_95;
              }

              goto LABEL_88;
            }

LABEL_80:
            if (v8)
            {
              v51 = (v8 & 7) == 4;
            }

            else
            {
              v51 = 1;
            }

            if (v51)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_221567188((a1 + 8));
            }

            v14 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_87;
          }

          if (v8 != 18)
          {
            goto LABEL_80;
          }

          v40 = (v7 - 1);
          while (2)
          {
            v41 = (v40 + 1);
            v56 = (v40 + 1);
            v42 = *(a1 + 64);
            if (!v42)
            {
LABEL_65:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v42 = *(a1 + 64);
              v43 = *v42;
              goto LABEL_66;
            }

            v47 = *(a1 + 56);
            v43 = *v42;
            if (v47 >= *v42)
            {
              if (v43 == *(a1 + 60))
              {
                goto LABEL_65;
              }

LABEL_66:
              *v42 = v43 + 1;
              v44 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(*(a1 + 48));
              v45 = *(a1 + 56);
              v46 = *(a1 + 64) + 8 * v45;
              *(a1 + 56) = v45 + 1;
              *(v46 + 8) = v44;
              v41 = v56;
            }

            else
            {
              *(a1 + 56) = v47 + 1;
              v44 = *&v42[2 * v47 + 2];
            }

            v40 = sub_2216F8E3C(a3, v44, v41);
            v56 = v40;
            if (!v40)
            {
              goto LABEL_95;
            }

            if (*a3 <= v40 || *v40 != 18)
            {
              goto LABEL_88;
            }

            continue;
          }
        }

        if (v8 != 10)
        {
          goto LABEL_80;
        }

        v24 = (v7 - 1);
        while (2)
        {
          v25 = (v24 + 1);
          v56 = (v24 + 1);
          v26 = *(a1 + 40);
          if (!v26)
          {
LABEL_39:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v26 = *(a1 + 40);
            v27 = *v26;
            goto LABEL_40;
          }

          v31 = *(a1 + 32);
          v27 = *v26;
          if (v31 >= *v26)
          {
            if (v27 == *(a1 + 36))
            {
              goto LABEL_39;
            }

LABEL_40:
            *v26 = v27 + 1;
            v28 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaOwnerInfoArchive>(*(a1 + 24));
            v29 = *(a1 + 32);
            v30 = *(a1 + 40) + 8 * v29;
            *(a1 + 32) = v29 + 1;
            *(v30 + 8) = v28;
            v25 = v56;
          }

          else
          {
            *(a1 + 32) = v31 + 1;
            v28 = *&v26[2 * v31 + 2];
          }

          v24 = sub_2216FB1FC(a3, v28, v25);
          v56 = v24;
          if (!v24)
          {
            goto LABEL_95;
          }

          if (*a3 <= v24 || *v24 != 10)
          {
            goto LABEL_88;
          }

          continue;
        }
      }

      if (v10 == 4)
      {
        if (v8 != 34)
        {
          goto LABEL_80;
        }

        v32 = (v7 - 1);
        while (2)
        {
          v33 = (v32 + 1);
          v56 = (v32 + 1);
          v34 = *(a1 + 88);
          if (!v34)
          {
LABEL_52:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v34 = *(a1 + 88);
            v35 = *v34;
            goto LABEL_53;
          }

          v39 = *(a1 + 80);
          v35 = *v34;
          if (v39 >= *v34)
          {
            if (v35 == *(a1 + 84))
            {
              goto LABEL_52;
            }

LABEL_53:
            *v34 = v35 + 1;
            v36 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(*(a1 + 72));
            v37 = *(a1 + 80);
            v38 = *(a1 + 88) + 8 * v37;
            *(a1 + 80) = v37 + 1;
            *(v38 + 8) = v36;
            v33 = v56;
          }

          else
          {
            *(a1 + 80) = v39 + 1;
            v36 = *&v34[2 * v39 + 2];
          }

          v32 = sub_2216F98CC(a3, v36, v33);
          v56 = v32;
          if (!v32)
          {
            goto LABEL_95;
          }

          if (*a3 <= v32 || *v32 != 34)
          {
            goto LABEL_88;
          }

          continue;
        }
      }

      if (v10 != 5)
      {
        if (v10 != 6 || v8 != 50)
        {
          goto LABEL_80;
        }

        v15 = v7 - 1;
        while (2)
        {
          v16 = (v15 + 1);
          v56 = (v15 + 1);
          v17 = *(a1 + 112);
          if (!v17)
          {
LABEL_26:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
            v17 = *(a1 + 112);
            v18 = *v17;
            goto LABEL_27;
          }

          v23 = *(a1 + 104);
          v18 = *v17;
          if (v23 >= *v17)
          {
            if (v18 == *(a1 + 108))
            {
              goto LABEL_26;
            }

LABEL_27:
            *v17 = v18 + 1;
            v19 = MEMORY[0x223DA0390](*(a1 + 96));
            LODWORD(v20) = v19;
            v21 = *(a1 + 104);
            v22 = *(a1 + 112) + 8 * v21;
            *(a1 + 104) = v21 + 1;
            *(v22 + 8) = v19;
            v16 = v56;
          }

          else
          {
            *(a1 + 104) = v23 + 1;
            v20 = *&v17[2 * v23 + 2];
          }

          v15 = sub_22170B7F8(a3, v20, v16);
          v56 = v15;
          if (!v15)
          {
            goto LABEL_95;
          }

          if (*a3 <= v15 || *v15 != 50)
          {
            goto LABEL_88;
          }

          continue;
        }
      }

      if (v8 != 40)
      {
        goto LABEL_80;
      }

      v5 |= 2u;
      v49 = (v7 + 1);
      v48 = *v7;
      if ((v48 & 0x8000000000000000) == 0)
      {
        goto LABEL_79;
      }

      v50 = *v49;
      v48 = (v50 << 7) + v48 - 128;
      if ((v50 & 0x80000000) == 0)
      {
        v49 = (v7 + 2);
LABEL_79:
        v56 = v49;
        *(a1 + 128) = v48;
        goto LABEL_88;
      }

      v54 = google::protobuf::internal::VarintParseSlow64(v7, v48);
      v56 = v54;
      *(a1 + 128) = v55;
      if (!v54)
      {
LABEL_95:
        v56 = 0;
        goto LABEL_2;
      }

LABEL_88:
      if (sub_221567030(a3, &v56))
      {
        goto LABEL_2;
      }
    }

    v7 = (v56 + 2);
LABEL_6:
    v56 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v56;
}

unsigned __int8 *TSCE::DependencyTrackerArchive::_InternalSerialize(TSCE::DependencyTrackerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::FormulaOwnerInfoArchive::_InternalSerialize(v7, v9, a3);
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

      a2 = TSCE::CellReferenceArchive::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 4);
  if (v21)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 15);
    *a2 = 26;
    v23 = *(v22 + 14);
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

    a2 = TSCE::OwnerIDMapArchive::_InternalSerialize(v22, v24, a3);
  }

  v28 = *(this + 20);
  if (v28)
  {
    for (k = 0; k != v28; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v30 = *(*(this + 11) + 8 * k + 8);
      *a2 = 34;
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

      a2 = TSCE::InternalCellReferenceArchive::_InternalSerialize(v30, v32, a3);
    }
  }

  if ((v21 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v36 = *(this + 16);
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
      }

      else
      {
        a2[2] = v37;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v36;
      a2 += 2;
    }
  }

  v40 = *(this + 26);
  if (v40)
  {
    for (m = 0; m != v40; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v42 = *(*(this + 14) + 8 * m + 8);
      *a2 = 50;
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

      a2 = TSP::Reference::_InternalSerialize(v42, v44, a3);
    }
  }

  v48 = *(this + 1);
  if ((v48 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v48 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::DependencyTrackerArchive::ByteSizeLong(TSCE::DependencyTrackerArchive *this)
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
      v7 = TSCE::FormulaOwnerInfoArchive::ByteSizeLong(v6);
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
      v14 = TSCE::CellReferenceArchive::ByteSizeLong(v13);
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
      v21 = TSCE::InternalCellReferenceArchive::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 26);
  v23 = v16 + v22;
  v24 = *(this + 14);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = TSP::Reference::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 4);
  if ((v29 & 3) != 0)
  {
    if (v29)
    {
      v30 = TSCE::OwnerIDMapArchive::ByteSizeLong(*(this + 15));
      v23 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v29 & 2) != 0)
    {
      v23 += ((9 * (__clz(*(this + 16) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v23, this + 20);
  }

  else
  {
    *(this + 5) = v23;
    return v23;
  }
}

uint64_t TSCE::DependencyTrackerArchive::MergeFrom(TSCE::DependencyTrackerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::DependencyTrackerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::DependencyTrackerArchive::MergeFrom(uint64_t this, const TSCE::DependencyTrackerArchive *a2)
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
    this = sub_22156A434(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_2215687A0(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    this = sub_221568DF4(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 26);
  if (v20)
  {
    v21 = *(a2 + 14);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    this = sub_221568514(v3 + 96, v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 4);
  if ((v25 & 3) != 0)
  {
    if (v25)
    {
      *(v3 + 16) |= 1u;
      v26 = *(v3 + 120);
      if (!v26)
      {
        v27 = *(v3 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = google::protobuf::Arena::CreateMaybeMessage<TSCE::OwnerIDMapArchive>(v27);
        *(v3 + 120) = v26;
      }

      if (*(a2 + 15))
      {
        v28 = *(a2 + 15);
      }

      else
      {
        v28 = &TSCE::_OwnerIDMapArchive_default_instance_;
      }

      this = TSCE::OwnerIDMapArchive::MergeFrom(v26, v28);
    }

    if ((v25 & 2) != 0)
    {
      *(v3 + 128) = *(a2 + 16);
    }

    *(v3 + 16) |= v25;
  }

  return this;
}

uint64_t *TSCE::DependencyTrackerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::DependencyTrackerArchive::Clear(this);

    return TSCE::DependencyTrackerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::DependencyTrackerArchive::CopyFrom(uint64_t *this, const TSCE::DependencyTrackerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::DependencyTrackerArchive::Clear(this);

    return TSCE::DependencyTrackerArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::DependencyTrackerArchive::IsInitialized(TSCE::DependencyTrackerArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCE::FormulaOwnerInfoArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 14);
  while (v5 >= 1)
  {
    v6 = *(*(this + 8) + 8 * v5--);
    if ((~*(v6 + 16) & 7) != 0)
    {
      return 0;
    }
  }

  v7 = *(this + 20);
  while (v7 >= 1)
  {
    v8 = *(*(this + 11) + 8 * v7--);
    if ((~*(v8 + 16) & 3) != 0)
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

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  v13 = *(this + 15);
  v14 = *(v13 + 24);
  v15 = *(v13 + 32);
  do
  {
    result = v14 < 1;
    if (v14 < 1)
    {
      break;
    }

    v16 = *(v15 + 8 * v14--);
  }

  while ((~*(v16 + 16) & 3) == 0);
  return result;
}

__n128 TSCE::DependencyTrackerArchive::InternalSwap(TSCE::DependencyTrackerArchive *this, TSCE::DependencyTrackerArchive *a2)
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
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v7;
  *(a2 + 8) = v8;
  v9 = *(this + 10);
  v10 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v11 = *(this + 13);
  v12 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v11;
  *(a2 + 14) = v12;
  v13 = *(this + 15);
  v14 = *(this + 16);
  result = *(a2 + 120);
  *(this + 120) = result;
  *(a2 + 15) = v13;
  *(a2 + 16) = v14;
  return result;
}

TSCE::RemoteDataSpecifierArchive *TSCE::RemoteDataSpecifierArchive::RemoteDataSpecifierArchive(TSCE::RemoteDataSpecifierArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD4F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoteDataSpecifierArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSCE::RemoteDataSpecifierArchive *TSCE::RemoteDataSpecifierArchive::RemoteDataSpecifierArchive(TSCE::RemoteDataSpecifierArchive *this, const TSCE::RemoteDataSpecifierArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834AD4F0;
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
  }

  *(this + 2) = *(a2 + 2);
  return this;
}

void TSCE::RemoteDataSpecifierArchive::~RemoteDataSpecifierArchive(TSCE::RemoteDataSpecifierArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::RemoteDataSpecifierArchive::~RemoteDataSpecifierArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RemoteDataSpecifierArchive::default_instance(TSCE::RemoteDataSpecifierArchive *this)
{
  if (atomic_load_explicit(scc_info_RemoteDataSpecifierArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RemoteDataSpecifierArchive_default_instance_;
}

uint64_t *TSCE::RemoteDataSpecifierArchive::Clear(TSCE::RemoteDataSpecifierArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  if ((v1 & 0xE) != 0)
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::RemoteDataSpecifierArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v26) & 1) == 0)
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
        goto LABEL_46;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4 && v8 == 33)
          {
            v5 |= 8u;
            *(a1 + 40) = *v7;
            v26 = (v7 + 8);
            goto LABEL_37;
          }

LABEL_29:
          if (v8)
          {
            v19 = (v8 & 7) == 4;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_36:
          v26 = v12;
          if (!v12)
          {
            goto LABEL_46;
          }

          goto LABEL_37;
        }

        if (v8 != 24)
        {
          goto LABEL_29;
        }

        v5 |= 4u;
        v16 = (v7 + 1);
        LODWORD(v17) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v18 = *v16;
        v17 = (v17 + (v18 << 7) - 128);
        if ((v18 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_28:
          v26 = v16;
          *(a1 + 36) = v17;
          goto LABEL_37;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v17);
        v26 = v24;
        *(a1 + 36) = v25;
        if (!v24)
        {
LABEL_46:
          v26 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 1)
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_29;
          }

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v12 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_36;
        }

        if (v8 != 8)
        {
          goto LABEL_29;
        }

        v5 |= 2u;
        v13 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        v15 = *v13;
        v14 = (v14 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_23:
          v26 = v13;
          *(a1 + 32) = v14;
          goto LABEL_37;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v26 = v22;
        *(a1 + 32) = v23;
        if (!v22)
        {
          goto LABEL_46;
        }
      }

LABEL_37:
      if (sub_221567030(a3, &v26))
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

unsigned __int8 *TSCE::RemoteDataSpecifierArchive::_InternalSerialize(TSCE::RemoteDataSpecifierArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 8);
    *v4 = 8;
    if (v10 > 0x7F)
    {
      v4[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++v4;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(v4 - 1) = v12;
        if (v6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v4[2] = v11;
        v4 += 3;
        if (v6)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      v4[1] = v10;
      v4 += 2;
      if (v6)
      {
        goto LABEL_21;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_21:
  v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_22:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(this + 9);
  *v4 = 24;
  if (v14 > 0x7F)
  {
    v4[1] = v14 | 0x80;
    v15 = v14 >> 7;
    if (v14 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v4;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v4 - 1) = v16;
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v4[2] = v15;
      v4 += 3;
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v4[1] = v14;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_5:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 5);
  *v4 = 33;
  *(v4 + 1) = v7;
  v4 += 9;
LABEL_8:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RemoteDataSpecifierArchive::RequiredFieldsByteSizeFallback(TSCE::RemoteDataSpecifierArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v2 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_8;
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
    goto LABEL_7;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
    v2 += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TSCE::RemoteDataSpecifierArchive::ByteSizeLong(TSCE::RemoteDataSpecifierArchive *this)
{
  v2 = *(this + 4);
  if ((~v2 & 7) != 0)
  {
    v6 = TSCE::RemoteDataSpecifierArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v4 = *(v3 + 23);
    v5 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v5 = v4;
    }

    v6 = v5 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if ((v2 & 8) != 0)
  {
    v7 = v6 + 9;
  }

  else
  {
    v7 = v6;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v7, this + 20);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TSCE::RemoteDataSpecifierArchive::MergeFrom(TSCE::RemoteDataSpecifierArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RemoteDataSpecifierArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RemoteDataSpecifierArchive::MergeFrom(uint64_t this, const TSCE::RemoteDataSpecifierArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
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

        goto LABEL_13;
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
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 40) = *(a2 + 5);
      goto LABEL_9;
    }

LABEL_13:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TSCE::RemoteDataSpecifierArchive *TSCE::RemoteDataSpecifierArchive::CopyFrom(TSCE::RemoteDataSpecifierArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RemoteDataSpecifierArchive::Clear(this);

    return TSCE::RemoteDataSpecifierArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::RemoteDataSpecifierArchive *TSCE::RemoteDataSpecifierArchive::CopyFrom(TSCE::RemoteDataSpecifierArchive *this, const TSCE::RemoteDataSpecifierArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RemoteDataSpecifierArchive::Clear(this);

    return TSCE::RemoteDataSpecifierArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCE::RemoteDataSpecifierArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  return result;
}

TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::RemoteDataValueMapArchive_RemoteDataMapEntry(TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD5A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoteDataValueMapArchive_RemoteDataMapEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834AD5A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_RemoteDataValueMapArchive_RemoteDataMapEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::RemoteDataValueMapArchive_RemoteDataMapEntry(TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *this, const TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AD5A0;
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
  return this;
}

void TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::~RemoteDataValueMapArchive_RemoteDataMapEntry(TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *this)
{
  if (this != &TSCE::_RemoteDataValueMapArchive_RemoteDataMapEntry_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::RemoteDataSpecifierArchive::~RemoteDataSpecifierArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSCE::CellValueArchive::~CellValueArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::~RemoteDataValueMapArchive_RemoteDataMapEntry(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::default_instance(TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *this)
{
  if (atomic_load_explicit(scc_info_RemoteDataValueMapArchive_RemoteDataMapEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RemoteDataValueMapArchive_RemoteDataMapEntry_default_instance_;
}

uint64_t *TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSCE::RemoteDataSpecifierArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSCE::CellValueArchive::Clear(*(v1 + 32));
    }
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

uint64_t *TSCE::CellValueArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x3F) != 0)
  {
    if (v2)
    {
      this = TSCE::BooleanCellValueArchive::Clear(this[3]);
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

    this = TSCE::DateCellValueArchive::Clear(*(v1 + 32));
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
    this = TSCE::NumberCellValueArchive::Clear(*(v1 + 40));
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
      this = TSCE::ErrorCellValueArchive::Clear(*(v1 + 56));
      goto LABEL_8;
    }

LABEL_16:
    this = TSCE::StringCellValueArchive::Clear(*(v1 + 48));
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

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  while ((sub_221567030(a3, &v18) & 1) == 0)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_2216FB46C(a3, v11, v5);
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
          sub_221567188((a1 + 8));
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

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RemoteDataSpecifierArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v18;
      }

      v10 = sub_2216FB39C(a3, v13, v5);
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

unsigned __int8 *TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::_InternalSerialize(TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCE::RemoteDataSpecifierArchive::_InternalSerialize(v6, v8, a3);
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

    a2 = TSCE::CellValueArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::RequiredFieldsByteSizeFallback(TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *this)
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

  v4 = TSCE::RemoteDataSpecifierArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSCE::CellValueArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::ByteSizeLong(TSCE::RemoteDataSpecifierArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSCE::RemoteDataSpecifierArchive::ByteSizeLong(this[3]);
    v3 = TSCE::CellValueArchive::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v4, this + 20);
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::MergeFrom(TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::MergeFrom(uint64_t this, const TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *a2)
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
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RemoteDataSpecifierArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSCE::_RemoteDataSpecifierArchive_default_instance_;
      }

      this = TSCE::RemoteDataSpecifierArchive::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSCE::_CellValueArchive_default_instance_;
      }

      return TSCE::CellValueArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t TSCE::CellValueArchive::MergeFrom(uint64_t this, const TSCE::CellValueArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::BooleanCellValueArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TSCE::_BooleanCellValueArchive_default_instance_;
      }

      this = TSCE::BooleanCellValueArchive::MergeFrom(v6, v8);
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

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::DateCellValueArchive>(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = TSCE::_DateCellValueArchive_default_instance_;
    }

    this = TSCE::DateCellValueArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }

LABEL_29:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::NumberCellValueArchive>(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSCE::_NumberCellValueArchive_default_instance_;
    }

    this = TSCE::NumberCellValueArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StringCellValueArchive>(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 6))
    {
      v17 = *(a2 + 6);
    }

    else
    {
      v17 = &TSCE::_StringCellValueArchive_default_instance_;
    }

    this = TSCE::StringCellValueArchive::MergeFrom(v15, v17);
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
      *(v3 + 64) = *(a2 + 16);
      goto LABEL_11;
    }

LABEL_45:
    *(v3 + 16) |= 0x10u;
    v18 = *(v3 + 56);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ErrorCellValueArchive>(v19);
      *(v3 + 56) = v18;
    }

    if (*(a2 + 7))
    {
      v20 = *(a2 + 7);
    }

    else
    {
      v20 = &TSCE::_ErrorCellValueArchive_default_instance_;
    }

    this = TSCE::ErrorCellValueArchive::MergeFrom(v18, v20);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::Clear(this);

    return TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::CopyFrom(uint64_t *this, const TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::Clear(this);

    return TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::IsInitialized(TSCE::CellValueArchive **this)
{
  if ((~*(this + 4) & 3) != 0 || (~*(this[3] + 4) & 7) != 0)
  {
    return 0;
  }

  else
  {
    return TSCE::CellValueArchive::IsInitialized(this[4]);
  }
}

uint64_t TSCE::CellValueArchive::IsInitialized(TSCE::CellValueArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x20) == 0)
  {
    return 0;
  }

  if (v1)
  {
    v4 = *(this + 3);
    v5 = *(v4 + 16);
    if ((v5 & 2) == 0)
    {
      return 0;
    }

    if (v5)
    {
      result = TSK::FormatStructArchive::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v1 = *(this + 4);
    }
  }

  if ((v1 & 2) != 0)
  {
    v6 = *(this + 4);
    if ((~*(v6 + 16) & 3) != 0)
    {
      return 0;
    }

    result = TSK::FormatStructArchive::IsInitialized(*(v6 + 24));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
    if ((v1 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v7 = *(this + 5);
    if ((*(v7 + 16) & 2) == 0)
    {
      return 0;
    }

    result = TSK::FormatStructArchive::IsInitialized(*(v7 + 32));
    if (!result)
    {
      return result;
    }

    v1 = *(this + 4);
    if ((v1 & 8) == 0)
    {
LABEL_7:
      if ((v1 & 0x10) == 0)
      {
        return 1;
      }

      return (*(*(this + 7) + 16) & 2) != 0;
    }

    goto LABEL_20;
  }

  if ((v1 & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v1 & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_20:
  v8 = *(this + 6);
  if ((~*(v8 + 16) & 3) == 0)
  {
    result = TSK::FormatStructArchive::IsInitialized(*(v8 + 32));
    if (!result)
    {
      return result;
    }

    if ((*(this + 4) & 0x10) == 0)
    {
      return 1;
    }

    return (*(*(this + 7) + 16) & 2) != 0;
  }

  return 0;
}

__n128 TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::InternalSwap(TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *this, TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry *a2)
{
  sub_2214E06D4(this + 1, a2 + 1);
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

TSCE::RemoteDataValueMapArchive *TSCE::RemoteDataValueMapArchive::RemoteDataValueMapArchive(TSCE::RemoteDataValueMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD650;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_RemoteDataValueMapArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::RemoteDataValueMapArchive *TSCE::RemoteDataValueMapArchive::RemoteDataValueMapArchive(TSCE::RemoteDataValueMapArchive *this, const TSCE::RemoteDataValueMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834AD650;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156A578(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::RemoteDataValueMapArchive::~RemoteDataValueMapArchive(TSCE::RemoteDataValueMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156A4F4(this + 2);
}

{
  TSCE::RemoteDataValueMapArchive::~RemoteDataValueMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RemoteDataValueMapArchive::default_instance(TSCE::RemoteDataValueMapArchive *this)
{
  if (atomic_load_explicit(scc_info_RemoteDataValueMapArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RemoteDataValueMapArchive_default_instance_;
}

uint64_t *TSCE::RemoteDataValueMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::Clear(v4);
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

google::protobuf::internal *TSCE::RemoteDataValueMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216FB53C(a3, v13, v10);
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

unsigned __int8 *TSCE::RemoteDataValueMapArchive::_InternalSerialize(TSCE::RemoteDataValueMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RemoteDataValueMapArchive::ByteSizeLong(TSCE::RemoteDataValueMapArchive *this)
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
      v7 = TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::ByteSizeLong(v6);
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

uint64_t TSCE::RemoteDataValueMapArchive::MergeFrom(TSCE::RemoteDataValueMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RemoteDataValueMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RemoteDataValueMapArchive::MergeFrom(uint64_t this, const TSCE::RemoteDataValueMapArchive *a2)
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
    this = sub_22156A578(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::RemoteDataValueMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RemoteDataValueMapArchive::Clear(this);

    return TSCE::RemoteDataValueMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RemoteDataValueMapArchive::CopyFrom(uint64_t *this, const TSCE::RemoteDataValueMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RemoteDataValueMapArchive::Clear(this);

    return TSCE::RemoteDataValueMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::RemoteDataValueMapArchive::IsInitialized(TSCE::RemoteDataValueMapArchive *this)
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
    IsInitialized = TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::RemoteDataValueMapArchive::InternalSwap(TSCE::RemoteDataValueMapArchive *this, TSCE::RemoteDataValueMapArchive *a2)
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

TSCE::StockArchive_AttributeEntry *TSCE::StockArchive_AttributeEntry::StockArchive_AttributeEntry(TSCE::StockArchive_AttributeEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD700;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StockArchive_AttributeEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 8) = 0;
  return this;
}

TSCE::StockArchive_AttributeEntry *TSCE::StockArchive_AttributeEntry::StockArchive_AttributeEntry(TSCE::StockArchive_AttributeEntry *this, const TSCE::StockArchive_AttributeEntry *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834AD700;
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
  }

  *(this + 8) = *(a2 + 8);
  return this;
}

void TSCE::StockArchive_AttributeEntry::~StockArchive_AttributeEntry(TSCE::StockArchive_AttributeEntry *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::StockArchive_AttributeEntry::~StockArchive_AttributeEntry(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::StockArchive_AttributeEntry::default_instance(TSCE::StockArchive_AttributeEntry *this)
{
  if (atomic_load_explicit(scc_info_StockArchive_AttributeEntry_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_StockArchive_AttributeEntry_default_instance_;
}

uint64_t *TSCE::StockArchive_AttributeEntry::Clear(TSCE::StockArchive_AttributeEntry *this)
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
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *TSCE::StockArchive_AttributeEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v7 = (v20 + 1);
      v8 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v9 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_34;
      }

      v7 = TagFallback;
      v8 = v17;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v12 = google::protobuf::internal::InlineGreedyStringParser();
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
            sub_221567188((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v20 = v12;
        if (!v12)
        {
          goto LABEL_34;
        }

        goto LABEL_27;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v13 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v15 = *v13;
      v14 = (v14 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_26:
        v20 = v13;
        *(a1 + 32) = v14;
        goto LABEL_27;
      }

      v18 = google::protobuf::internal::VarintParseSlow32(v7, v14);
      v20 = v18;
      *(a1 + 32) = v19;
      if (!v18)
      {
LABEL_34:
        v20 = 0;
        goto LABEL_2;
      }

LABEL_27:
      if (sub_221567030(a3, &v20))
      {
        goto LABEL_2;
      }
    }

    v7 = (v20 + 2);
LABEL_6:
    v20 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v20;
}

unsigned __int8 *TSCE::StockArchive_AttributeEntry::_InternalSerialize(TSCE::StockArchive_AttributeEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) == 0)
  {
LABEL_9:
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 8);
  *v4 = 8;
  if (v7 <= 0x7F)
  {
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_11;
  }

  v4[1] = v7 | 0x80;
  v8 = v7 >> 7;
  if (!(v7 >> 14))
  {
    v4[2] = v8;
    v4 += 3;
    goto LABEL_9;
  }

  v4 += 3;
  do
  {
    *(v4 - 1) = v8 | 0x80;
    v11 = v8 >> 7;
    ++v4;
    v12 = v8 >> 14;
    v8 >>= 7;
  }

  while (v12);
  *(v4 - 1) = v11;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_11:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::StockArchive_AttributeEntry::RequiredFieldsByteSizeFallback(TSCE::StockArchive_AttributeEntry *this)
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
    v2 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TSCE::StockArchive_AttributeEntry::ByteSizeLong(TSCE::StockArchive_AttributeEntry *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v5 = TSCE::StockArchive_AttributeEntry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = v4 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSCE::StockArchive_AttributeEntry::MergeFrom(TSCE::StockArchive_AttributeEntry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::StockArchive_AttributeEntry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::StockArchive_AttributeEntry::MergeFrom(uint64_t this, const TSCE::StockArchive_AttributeEntry *a2)
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
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSCE::StockArchive_AttributeEntry *TSCE::StockArchive_AttributeEntry::CopyFrom(TSCE::StockArchive_AttributeEntry *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::StockArchive_AttributeEntry::Clear(this);

    return TSCE::StockArchive_AttributeEntry::MergeFrom(v4, a2);
  }

  return this;
}

TSCE::StockArchive_AttributeEntry *TSCE::StockArchive_AttributeEntry::CopyFrom(TSCE::StockArchive_AttributeEntry *this, const TSCE::StockArchive_AttributeEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::StockArchive_AttributeEntry::Clear(this);

    return TSCE::StockArchive_AttributeEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::StockArchive_AttributeEntry::InternalSwap(TSCE::StockArchive_AttributeEntry *this, TSCE::StockArchive_AttributeEntry *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
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

TSCE::StockArchive *TSCE::StockArchive::StockArchive(TSCE::StockArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD7B0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_StockArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 7) = 0;
  return this;
}

TSCE::StockArchive *TSCE::StockArchive::StockArchive(TSCE::StockArchive *this, const TSCE::StockArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AD7B0;
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
    sub_22156A6BC(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 6) = MEMORY[0x277D80A90];
  if (*(a2 + 16))
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  *(this + 7) = *(a2 + 7);
  return this;
}

void TSCE::StockArchive::~StockArchive(TSCE::StockArchive *this)
{
  v2 = *(this + 6);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  sub_2214DFCF8(this + 1);
  sub_22156A638(this + 3);
}

{
  TSCE::StockArchive::~StockArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::StockArchive::default_instance(TSCE::StockArchive *this)
{
  if (atomic_load_explicit(scc_info_StockArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_StockArchive_default_instance_;
}

uint64_t *TSCE::StockArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::StockArchive_AttributeEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    v5 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 23) < 0)
    {
      **v5 = 0;
      *(v5 + 8) = 0;
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 48) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return this;
}

google::protobuf::internal *TSCE::StockArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
LABEL_42:
        v24 = 0;
        goto LABEL_2;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        v14 = (v7 - 1);
        while (2)
        {
          v15 = (v14 + 1);
          v24 = (v14 + 1);
          v16 = *(a1 + 40);
          if (!v16)
          {
LABEL_25:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v17 = *v16;
            goto LABEL_26;
          }

          v21 = *(a1 + 32);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(a1 + 36))
            {
              goto LABEL_25;
            }

LABEL_26:
            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StockArchive_AttributeEntry>(*(a1 + 24));
            v19 = *(a1 + 32);
            v20 = *(a1 + 40) + 8 * v19;
            *(a1 + 32) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v24;
          }

          else
          {
            *(a1 + 32) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_2216FB60C(a3, v18, v15);
          v24 = v14;
          if (!v14)
          {
            goto LABEL_42;
          }

          if (*a3 <= v14 || *v14 != 26)
          {
            goto LABEL_37;
          }

          continue;
        }
      }

      if (v10 != 2)
      {
        if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v13 = google::protobuf::internal::InlineGreedyStringParser();
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
            sub_221567188((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v24 = v13;
        if (!v13)
        {
          goto LABEL_42;
        }

        goto LABEL_37;
      }

      if (v8 != 17)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      *(a1 + 56) = *v7;
      v24 = (v7 + 8);
LABEL_37:
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

unsigned __int8 *TSCE::StockArchive::_InternalSerialize(TSCE::StockArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_22150C00C(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 7);
    *v4 = 17;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(this + 8);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v10 = *(*(this + 5) + 8 * i + 8);
      *v4 = 26;
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

      v4 = TSCE::StockArchive_AttributeEntry::_InternalSerialize(v10, v12, a3);
    }
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::StockArchive::ByteSizeLong(TSCE::StockArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  v7 = *(this + 8);
  v8 = v3 + v7;
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
      v13 = TSCE::StockArchive_AttributeEntry::ByteSizeLong(v12);
      v8 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      v11 -= 8;
    }

    while (v11);
    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    v14 = v8 + 9;
  }

  else
  {
    v14 = v8;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v14, this + 20);
  }

  else
  {
    *(this + 5) = v14;
    return v14;
  }
}

uint64_t TSCE::StockArchive::MergeFrom(TSCE::StockArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::StockArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::StockArchive::MergeFrom(uint64_t this, const TSCE::StockArchive *a2)
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
    this = sub_22156A6BC(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 7);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSCE::StockArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::StockArchive::Clear(this);

    return TSCE::StockArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::StockArchive::CopyFrom(uint64_t *this, const TSCE::StockArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::StockArchive::Clear(this);

    return TSCE::StockArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::StockArchive::IsInitialized(TSCE::StockArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  v3 = *(this + 5);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2--);
  }

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

double TSCE::StockArchive::InternalSwap(TSCE::StockArchive *this, TSCE::StockArchive *a2)
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
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

TSCE::RemoteDataStoreArchive *TSCE::RemoteDataStoreArchive::RemoteDataStoreArchive(TSCE::RemoteDataStoreArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD860;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_RemoteDataStoreArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::RemoteDataStoreArchive *TSCE::RemoteDataStoreArchive::RemoteDataStoreArchive(TSCE::RemoteDataStoreArchive *this, const TSCE::RemoteDataStoreArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AD860;
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
    sub_22156A800(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_221520D64(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40290C9B23);
  sub_22156A77C((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::RemoteDataStoreArchive::~RemoteDataStoreArchive(TSCE::RemoteDataStoreArchive *this)
{
  if (this != &TSCE::_RemoteDataStoreArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSCE::RemoteDataValueMapArchive::~RemoteDataValueMapArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22156A77C(this + 3);
}

{
  TSCE::RemoteDataStoreArchive::~RemoteDataStoreArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::RemoteDataStoreArchive::default_instance(TSCE::RemoteDataStoreArchive *this)
{
  if (atomic_load_explicit(scc_info_RemoteDataStoreArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_RemoteDataStoreArchive_default_instance_;
}

uint64_t *TSCE::RemoteDataStoreArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::StockArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSCE::RemoteDataValueMapArchive::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::RemoteDataStoreArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v24))
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::StockArchive>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v24;
LABEL_26:
        v11 = sub_2216FB7AC(a3, v15, v12);
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

        v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RemoteDataValueMapArchive>(v20);
        *(a1 + 48) = v19;
        v5 = v24;
      }

      v10 = sub_2216FB6DC(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
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

unsigned __int8 *TSCE::RemoteDataStoreArchive::_InternalSerialize(TSCE::RemoteDataStoreArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 6);
    *a2 = 10;
    v6 = *(v5 + 10);
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

    a2 = TSCE::RemoteDataValueMapArchive::_InternalSerialize(v5, v7, a3);
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

      a2 = TSCE::StockArchive::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::RemoteDataStoreArchive::ByteSizeLong(TSCE::RemoteDataValueMapArchive **this)
{
  if (this[2])
  {
    v3 = TSCE::RemoteDataValueMapArchive::ByteSizeLong(this[6]);
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
      v10 = TSCE::StockArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSCE::RemoteDataStoreArchive::MergeFrom(TSCE::RemoteDataStoreArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::RemoteDataStoreArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::RemoteDataStoreArchive::MergeFrom(uint64_t this, const TSCE::RemoteDataStoreArchive *a2)
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
    this = sub_22156A800(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RemoteDataValueMapArchive>(v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = &TSCE::_RemoteDataValueMapArchive_default_instance_;
    }

    return TSCE::RemoteDataValueMapArchive::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSCE::RemoteDataStoreArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RemoteDataStoreArchive::Clear(this);

    return TSCE::RemoteDataStoreArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::RemoteDataStoreArchive::CopyFrom(uint64_t *this, const TSCE::RemoteDataStoreArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::RemoteDataStoreArchive::Clear(this);

    return TSCE::RemoteDataStoreArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::RemoteDataStoreArchive::IsInitialized(TSCE::RemoteDataStoreArchive *this)
{
  if ((*(this + 16) & 1) == 0 || !sub_2215216C4(this + 24))
  {
    return 0;
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  v4 = *(this + 6);
  v5 = *(v4 + 24);
  do
  {
    v2 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v6 = v5 - 1;
    IsInitialized = TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::IsInitialized(*(*(v4 + 32) + 8 * v5));
    v5 = v6;
  }

  while ((IsInitialized & 1) != 0);
  return v2;
}

uint64_t sub_2215216C4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 1;
  }

  v2 = *(a1 + 16) + 8;
  do
  {
    v3 = *(v2 + 8 * (v1 - 1));
    v4 = *(v3 + 16);
    result = v4 & 1;
    if ((v4 & 1) == 0)
    {
      break;
    }

    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    while (v6 >= 1)
    {
      v8 = *(v7 + 8 * v6--);
      if ((~*(v8 + 16) & 3) != 0)
      {
        return 0;
      }
    }
  }

  while (v1-- >= 2);
  return result;
}

__n128 TSCE::RemoteDataStoreArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

TSP::Reference *TSCE::NameTrackedReferencePair::clear_tracked_reference(TSCE::NameTrackedReferencePair *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCE::NameTrackedReferencePair *TSCE::NameTrackedReferencePair::NameTrackedReferencePair(TSCE::NameTrackedReferencePair *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD910;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_NameTrackedReferencePair_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSCE::NameTrackedReferencePair *TSCE::NameTrackedReferencePair::NameTrackedReferencePair(TSCE::NameTrackedReferencePair *this, const TSCE::NameTrackedReferencePair *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834AD910;
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TSCE::NameTrackedReferencePair::~NameTrackedReferencePair(TSCE::NameTrackedReferencePair *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  if (this != &TSCE::_NameTrackedReferencePair_default_instance_)
  {
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
  TSCE::NameTrackedReferencePair::~NameTrackedReferencePair(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::NameTrackedReferencePair::default_instance(TSCE::NameTrackedReferencePair *this)
{
  if (atomic_load_explicit(scc_info_NameTrackedReferencePair_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_NameTrackedReferencePair_default_instance_;
}

uint64_t *TSCE::NameTrackedReferencePair::Clear(uint64_t *this)
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
      this = TSP::Reference::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 32) = 0;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_221567398(v4);
  }

  return this;
}

google::protobuf::internal *TSCE::NameTrackedReferencePair::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_40;
      }

      v7 = TagFallback;
      v8 = v21;
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

            v16 = MEMORY[0x223DA0390](v15);
            LODWORD(v14) = v16;
            *(a1 + 32) = v16;
            v7 = v24;
          }

          v13 = sub_22170B7F8(a3, v14, v7);
        }

        else if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v13 = google::protobuf::internal::InlineGreedyStringParser();
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
            sub_221567188((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v24 = v13;
        if (!v13)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v17 = (v7 + 1);
      LODWORD(v18) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      v19 = *v17;
      v18 = (v18 + (v19 << 7) - 128);
      if ((v19 & 0x80000000) == 0)
      {
        v17 = (v7 + 2);
LABEL_30:
        v24 = v17;
        *(a1 + 40) = v18;
        goto LABEL_33;
      }

      v22 = google::protobuf::internal::VarintParseSlow32(v7, v18);
      v24 = v22;
      *(a1 + 40) = v23;
      if (!v22)
      {
LABEL_40:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_33:
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

unsigned __int8 *TSCE::NameTrackedReferencePair::_InternalSerialize(TSCE::NameTrackedReferencePair *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_22150C00C(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
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

  v7 = *(this + 4);
  *v4 = 18;
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
  if ((v6 & 4) != 0)
  {
LABEL_16:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 10);
    *v4 = 24;
    if (v13 > 0x7F)
    {
      v4[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++v4;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(v4 - 1) = v15;
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
    }
  }

LABEL_25:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::NameTrackedReferencePair::ByteSizeLong(TSCE::NameTrackedReferencePair *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 6) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v7 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t TSCE::NameTrackedReferencePair::MergeFrom(TSCE::NameTrackedReferencePair *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::NameTrackedReferencePair::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::NameTrackedReferencePair::MergeFrom(uint64_t this, const TSCE::NameTrackedReferencePair *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 10);
        goto LABEL_8;
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

      v6 = MEMORY[0x223DA0390](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSCE::NameTrackedReferencePair::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::NameTrackedReferencePair::Clear(this);

    return TSCE::NameTrackedReferencePair::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::NameTrackedReferencePair::CopyFrom(uint64_t *this, const TSCE::NameTrackedReferencePair *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::NameTrackedReferencePair::Clear(this);

    return TSCE::NameTrackedReferencePair::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::NameTrackedReferencePair::IsInitialized(TSCE::NameTrackedReferencePair *this)
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

  result = TSP::Reference::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCE::NameTrackedReferencePair::InternalSwap(TSCE::NameTrackedReferencePair *this, TSCE::NameTrackedReferencePair *a2)
{
  result = sub_2214E06D4(this + 1, a2 + 1);
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

TSP::CFUUIDArchive *TSCE::NamesByTrackedReferenceArchive::clear_table_id(TSCE::NamesByTrackedReferenceArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::NamesByTrackedReferenceArchive *TSCE::NamesByTrackedReferenceArchive::NamesByTrackedReferenceArchive(TSCE::NamesByTrackedReferenceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834AD9C0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_NamesByTrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::NamesByTrackedReferenceArchive *TSCE::NamesByTrackedReferenceArchive::NamesByTrackedReferenceArchive(TSCE::NamesByTrackedReferenceArchive *this, const TSCE::NamesByTrackedReferenceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834AD9C0;
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
    sub_22156A944(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_221522550(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
  sub_22156A8C0((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::NamesByTrackedReferenceArchive::~NamesByTrackedReferenceArchive(TSCE::NamesByTrackedReferenceArchive *this)
{
  if (this != &TSCE::_NamesByTrackedReferenceArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x223D9FBD0]();
    MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
  }

  sub_2214DFCF8(this + 1);
  sub_22156A8C0(this + 3);
}

{
  TSCE::NamesByTrackedReferenceArchive::~NamesByTrackedReferenceArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::NamesByTrackedReferenceArchive::default_instance(TSCE::NamesByTrackedReferenceArchive *this)
{
  if (atomic_load_explicit(scc_info_NamesByTrackedReferenceArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_NamesByTrackedReferenceArchive_default_instance_;
}

uint64_t *TSCE::NamesByTrackedReferenceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::NameTrackedReferencePair::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::CFUUIDArchive::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::NamesByTrackedReferenceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v25))
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
        v25 = (v11 + 1);
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::NameTrackedReferencePair>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v25;
LABEL_26:
        v11 = sub_2216FB87C(a3, v15, v12);
        v25 = v11;
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

        v21 = MEMORY[0x223DA0300](v20);
        LODWORD(v19) = v21;
        *(a1 + 48) = v21;
        v5 = v25;
      }

      v10 = sub_2216F7F9C(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v25 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v25;
}

unsigned __int8 *TSCE::NamesByTrackedReferenceArchive::_InternalSerialize(TSCE::NamesByTrackedReferenceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::CFUUIDArchive::_InternalSerialize(v5, v7, a3);
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

      a2 = TSCE::NameTrackedReferencePair::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::NamesByTrackedReferenceArchive::ByteSizeLong(TSP::CFUUIDArchive **this)
{
  if (this[2])
  {
    v3 = TSP::CFUUIDArchive::ByteSizeLong(this[6]);
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
      v10 = TSCE::NameTrackedReferencePair::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSCE::NamesByTrackedReferenceArchive::MergeFrom(TSCE::NamesByTrackedReferenceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::NamesByTrackedReferenceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::NamesByTrackedReferenceArchive::MergeFrom(uint64_t this, const TSCE::NamesByTrackedReferenceArchive *a2)
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
    this = sub_22156A944(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = MEMORY[0x223DA0300](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D80A28];
    }

    return TSP::CFUUIDArchive::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSCE::NamesByTrackedReferenceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::NamesByTrackedReferenceArchive::Clear(this);

    return TSCE::NamesByTrackedReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::NamesByTrackedReferenceArchive::CopyFrom(uint64_t *this, const TSCE::NamesByTrackedReferenceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::NamesByTrackedReferenceArchive::Clear(this);

    return TSCE::NamesByTrackedReferenceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::NamesByTrackedReferenceArchive::IsInitialized(TSCE::NamesByTrackedReferenceArchive *this)
{
  if (*(this + 16))
  {
    return sub_221522E44(this + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221522E44(uint64_t a1)
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
      result = TSP::Reference::IsInitialized(*(v3 + 32));
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

__n128 TSCE::NamesByTrackedReferenceArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

TSP::Reference *TSCE::NamedReferenceManagerArchive::clear_reference_tracker(TSCE::NamedReferenceManagerArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::NamedReferenceManagerArchive *TSCE::NamedReferenceManagerArchive::NamedReferenceManagerArchive(TSCE::NamedReferenceManagerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ADA70;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_NamedReferenceManagerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  return this;
}

TSCE::NamedReferenceManagerArchive *TSCE::NamedReferenceManagerArchive::NamedReferenceManagerArchive(TSCE::NamedReferenceManagerArchive *this, const TSCE::NamedReferenceManagerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ADA70;
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
    sub_22156AA88(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  return this;
}

void sub_221523138(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C407D3F2757);
  sub_22156AA04((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::NamedReferenceManagerArchive::~NamedReferenceManagerArchive(TSCE::NamedReferenceManagerArchive *this)
{
  if (this != &TSCE::_NamedReferenceManagerArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_22156AA04(this + 3);
}

{
  TSCE::NamedReferenceManagerArchive::~NamedReferenceManagerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::NamedReferenceManagerArchive::default_instance(TSCE::NamedReferenceManagerArchive *this)
{
  if (atomic_load_explicit(scc_info_NamedReferenceManagerArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_NamedReferenceManagerArchive_default_instance_;
}

uint64_t *TSCE::NamedReferenceManagerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::NamesByTrackedReferenceArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::Reference::Clear(*(v1 + 48));
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TSCE::NamedReferenceManagerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while (1)
  {
LABEL_2:
    if (sub_221567030(a3, &v25))
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
        v25 = (v11 + 1);
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
        v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::NamesByTrackedReferenceArchive>(*(a1 + 24));
        v16 = *(a1 + 32);
        v17 = *(a1 + 40) + 8 * v16;
        *(a1 + 32) = v16 + 1;
        *(v17 + 8) = v15;
        v12 = v25;
LABEL_26:
        v11 = sub_2216FB94C(a3, v15, v12);
        v25 = v11;
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

        v21 = MEMORY[0x223DA0390](v20);
        LODWORD(v19) = v21;
        *(a1 + 48) = v21;
        v5 = v25;
      }

      v10 = sub_22170B7F8(a3, v19, v5);
      goto LABEL_37;
    }

LABEL_12:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_221567188((a1 + 8));
    }

    v10 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v25 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v25;
}

unsigned __int8 *TSCE::NamedReferenceManagerArchive::_InternalSerialize(TSCE::NamedReferenceManagerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
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

      a2 = TSCE::NamesByTrackedReferenceArchive::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::NamedReferenceManagerArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[6]);
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
      v10 = TSCE::NamesByTrackedReferenceArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSCE::NamedReferenceManagerArchive::MergeFrom(TSCE::NamedReferenceManagerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::NamedReferenceManagerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::NamedReferenceManagerArchive::MergeFrom(uint64_t this, const TSCE::NamedReferenceManagerArchive *a2)
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
    this = sub_22156AA88(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

      v11 = MEMORY[0x223DA0390](v12);
      *(v3 + 48) = v11;
      v10 = *(a2 + 6);
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v11, v13);
  }

  return this;
}

uint64_t *TSCE::NamedReferenceManagerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::NamedReferenceManagerArchive::Clear(this);

    return TSCE::NamedReferenceManagerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::NamedReferenceManagerArchive::CopyFrom(uint64_t *this, const TSCE::NamedReferenceManagerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::NamedReferenceManagerArchive::Clear(this);

    return TSCE::NamedReferenceManagerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::NamedReferenceManagerArchive::IsInitialized(TSCE::NamedReferenceManagerArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_221523A6C(this + 24);
  if (result)
  {
    if ((*(this + 16) & 1) == 0)
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

BOOL sub_221523A6C(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(*(a1 + 16) + 8 * v2);
    if ((*(v4 + 16) & 1) == 0)
    {
      break;
    }

    --v2;
  }

  while ((sub_221522E44(v4 + 24) & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::NamedReferenceManagerArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  return result;
}

uint64_t TSCE::UuidSetStoreArchive_UuidSet::clear_uuid(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TSCE::UuidSetStoreArchive_UuidSet *TSCE::UuidSetStoreArchive_UuidSet::UuidSetStoreArchive_UuidSet(TSCE::UuidSetStoreArchive_UuidSet *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ADB20;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_UuidSetStoreArchive_UuidSet_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TSCE::UuidSetStoreArchive_UuidSet *TSCE::UuidSetStoreArchive_UuidSet::UuidSetStoreArchive_UuidSet(TSCE::UuidSetStoreArchive_UuidSet *this, const TSCE::UuidSetStoreArchive_UuidSet *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ADB20;
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
    sub_2215679F8(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void TSCE::UuidSetStoreArchive_UuidSet::~UuidSetStoreArchive_UuidSet(TSCE::UuidSetStoreArchive_UuidSet *this)
{
  sub_2214DFCF8(this + 1);
  sub_221567974(this + 3);
}

{
  TSCE::UuidSetStoreArchive_UuidSet::~UuidSetStoreArchive_UuidSet(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::UuidSetStoreArchive_UuidSet::default_instance(TSCE::UuidSetStoreArchive_UuidSet *this)
{
  if (atomic_load_explicit(scc_info_UuidSetStoreArchive_UuidSet_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_UuidSetStoreArchive_UuidSet_default_instance_;
}

uint64_t *TSCE::UuidSetStoreArchive_UuidSet::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
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

google::protobuf::internal *TSCE::UuidSetStoreArchive_UuidSet::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
            sub_221567188((a1 + 8));
          }

          v28 = google::protobuf::internal::UnknownFieldParse();
          if (!v28)
          {
LABEL_44:
            v28 = 0;
            goto LABEL_2;
          }

          goto LABEL_25;
        }

        v15 = v7 - 1;
        while (2)
        {
          v16 = (v15 + 1);
          v28 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_29:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_30;
          }

          v23 = *(a1 + 32);
          v18 = *v17;
          if (v23 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_29;
            }

LABEL_30:
            *v17 = v18 + 1;
            v19 = MEMORY[0x223DA0360](*(a1 + 24));
            LODWORD(v20) = v19;
            v21 = *(a1 + 32);
            v22 = *(a1 + 40) + 8 * v21;
            *(a1 + 32) = v21 + 1;
            *(v22 + 8) = v19;
            v16 = v28;
          }

          else
          {
            *(a1 + 32) = v23 + 1;
            v20 = *&v17[2 * v23 + 2];
          }

          v15 = sub_2216F813C(a3, v20, v16);
          v28 = v15;
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
        v28 = v12;
        *(a1 + 48) = v13;
        v5 = 1;
        goto LABEL_25;
      }

      v26 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v28 = v26;
      *(a1 + 48) = v27;
      v5 = 1;
      if (!v26)
      {
        goto LABEL_44;
      }

LABEL_25:
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

unsigned __int8 *TSCE::UuidSetStoreArchive_UuidSet::_InternalSerialize(TSCE::UuidSetStoreArchive_UuidSet *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::UUID::_InternalSerialize(v7, v9, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 12);
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
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
    }
  }

  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UuidSetStoreArchive_UuidSet::ByteSizeLong(TSCE::UuidSetStoreArchive_UuidSet *this)
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
      v9 = TSP::UUID::ByteSizeLong(v8);
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

uint64_t TSCE::UuidSetStoreArchive_UuidSet::MergeFrom(TSCE::UuidSetStoreArchive_UuidSet *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UuidSetStoreArchive_UuidSet::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UuidSetStoreArchive_UuidSet::MergeFrom(uint64_t this, const TSCE::UuidSetStoreArchive_UuidSet *a2)
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
    this = sub_2215679F8(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

uint64_t *TSCE::UuidSetStoreArchive_UuidSet::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidSetStoreArchive_UuidSet::Clear(this);

    return TSCE::UuidSetStoreArchive_UuidSet::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UuidSetStoreArchive_UuidSet::CopyFrom(uint64_t *this, const TSCE::UuidSetStoreArchive_UuidSet *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidSetStoreArchive_UuidSet::Clear(this);

    return TSCE::UuidSetStoreArchive_UuidSet::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::UuidSetStoreArchive_UuidSet::IsInitialized(TSCE::UuidSetStoreArchive_UuidSet *this)
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
    IsInitialized = TSP::UUID::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TSCE::UuidSetStoreArchive_UuidSet::InternalSwap(__n128 *this, __n128 *a2)
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

TSCE::UuidSetStoreArchive *TSCE::UuidSetStoreArchive::UuidSetStoreArchive(TSCE::UuidSetStoreArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ADBD0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_UuidSetStoreArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::UuidSetStoreArchive *TSCE::UuidSetStoreArchive::UuidSetStoreArchive(TSCE::UuidSetStoreArchive *this, const TSCE::UuidSetStoreArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834ADBD0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156ABCC(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::UuidSetStoreArchive::~UuidSetStoreArchive(TSCE::UuidSetStoreArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156AB48(this + 2);
}

{
  TSCE::UuidSetStoreArchive::~UuidSetStoreArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::UuidSetStoreArchive::default_instance(TSCE::UuidSetStoreArchive *this)
{
  if (atomic_load_explicit(scc_info_UuidSetStoreArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_UuidSetStoreArchive_default_instance_;
}

uint64_t *TSCE::UuidSetStoreArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::UuidSetStoreArchive_UuidSet::Clear(v4);
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

google::protobuf::internal *TSCE::UuidSetStoreArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidSetStoreArchive_UuidSet>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216FBA1C(a3, v13, v10);
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

unsigned __int8 *TSCE::UuidSetStoreArchive::_InternalSerialize(TSCE::UuidSetStoreArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::UuidSetStoreArchive_UuidSet::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UuidSetStoreArchive::ByteSizeLong(TSCE::UuidSetStoreArchive *this)
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
      v7 = TSCE::UuidSetStoreArchive_UuidSet::ByteSizeLong(v6);
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

uint64_t TSCE::UuidSetStoreArchive::MergeFrom(TSCE::UuidSetStoreArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UuidSetStoreArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UuidSetStoreArchive::MergeFrom(uint64_t this, const TSCE::UuidSetStoreArchive *a2)
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
    this = sub_22156ABCC(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::UuidSetStoreArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidSetStoreArchive::Clear(this);

    return TSCE::UuidSetStoreArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UuidSetStoreArchive::CopyFrom(uint64_t *this, const TSCE::UuidSetStoreArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidSetStoreArchive::Clear(this);

    return TSCE::UuidSetStoreArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::UuidSetStoreArchive::IsInitialized(TSCE::UuidSetStoreArchive *this)
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
    IsInitialized = TSCE::UuidSetStoreArchive_UuidSet::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while (IsInitialized);
  return v3 < 1;
}

__n128 TSCE::UuidSetStoreArchive::InternalSwap(TSCE::UuidSetStoreArchive *this, TSCE::UuidSetStoreArchive *a2)
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

TSP::UUID *TSCE::UuidReferenceMapArchive_CellRefsForUuid::clear_uuid(TSCE::UuidReferenceMapArchive_CellRefsForUuid *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::UuidReferenceMapArchive_CellRefsForUuid *TSCE::UuidReferenceMapArchive_CellRefsForUuid::UuidReferenceMapArchive_CellRefsForUuid(TSCE::UuidReferenceMapArchive_CellRefsForUuid *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ADC80;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_UuidReferenceMapArchive_CellRefsForUuid_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  return this;
}

TSCE::UuidReferenceMapArchive_CellRefsForUuid *TSCE::UuidReferenceMapArchive_CellRefsForUuid::UuidReferenceMapArchive_CellRefsForUuid(TSCE::UuidReferenceMapArchive_CellRefsForUuid *this, const TSCE::UuidReferenceMapArchive_CellRefsForUuid *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ADC80;
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
    sub_221568DF4(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

void sub_2215251D8(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40290C9B23);
  sub_221568D70((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCE::UuidReferenceMapArchive_CellRefsForUuid::~UuidReferenceMapArchive_CellRefsForUuid(TSCE::UuidReferenceMapArchive_CellRefsForUuid *this)
{
  if (this != &TSCE::_UuidReferenceMapArchive_CellRefsForUuid_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
  sub_221568D70(this + 3);
}

{
  TSCE::UuidReferenceMapArchive_CellRefsForUuid::~UuidReferenceMapArchive_CellRefsForUuid(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::UuidReferenceMapArchive_CellRefsForUuid::default_instance(TSCE::UuidReferenceMapArchive_CellRefsForUuid *this)
{
  if (atomic_load_explicit(scc_info_UuidReferenceMapArchive_CellRefsForUuid_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_UuidReferenceMapArchive_CellRefsForUuid_default_instance_;
}

uint64_t *TSCE::UuidReferenceMapArchive_CellRefsForUuid::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::InternalCellReferenceArchive::Clear(v4);
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
      this = TSP::UUID::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSCE::InternalCellRefSetArchive::Clear(*(v1 + 56));
    }
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

google::protobuf::internal *TSCE::UuidReferenceMapArchive_CellRefsForUuid::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  while (1)
  {
    if (sub_221567030(a3, &v28))
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

          v20 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v21);
          *(a1 + 56) = v20;
          v5 = v28;
        }

        v11 = sub_2216F8AFC(a3, v20, v5);
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
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellReferenceArchive>(*(a1 + 24));
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v16;
        v13 = v28;
      }

      else
      {
        *(a1 + 32) = v19 + 1;
        v16 = *&v14[2 * v19 + 2];
      }

      v12 = sub_2216F98CC(a3, v16, v13);
      v28 = v12;
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
      v22 = *(a1 + 48);
      if (!v22)
      {
        v23 = *(a1 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = MEMORY[0x223DA0360](v23);
        LODWORD(v22) = v24;
        *(a1 + 48) = v24;
        v5 = v28;
      }

      v11 = sub_2216F813C(a3, v22, v5);
      goto LABEL_44;
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

unsigned __int8 *TSCE::UuidReferenceMapArchive_CellRefsForUuid::_InternalSerialize(TSCE::UuidReferenceMapArchive_CellRefsForUuid *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
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

      a2 = TSCE::InternalCellReferenceArchive::_InternalSerialize(v14, v16, a3);
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
    v21 = *(v20 + 10);
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

    a2 = TSCE::InternalCellRefSetArchive::_InternalSerialize(v20, v22, a3);
  }

  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UuidReferenceMapArchive_CellRefsForUuid::ByteSizeLong(TSP::UUID **this)
{
  if (this[2])
  {
    v3 = TSP::UUID::ByteSizeLong(this[6]);
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
      v10 = TSCE::InternalCellReferenceArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  if ((this[2] & 2) != 0)
  {
    v11 = TSCE::InternalCellRefSetArchive::ByteSizeLong(this[7]);
    v5 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v5, this + 20);
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSCE::UuidReferenceMapArchive_CellRefsForUuid::MergeFrom(TSCE::UuidReferenceMapArchive_CellRefsForUuid *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UuidReferenceMapArchive_CellRefsForUuid::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UuidReferenceMapArchive_CellRefsForUuid::MergeFrom(uint64_t this, const TSCE::UuidReferenceMapArchive_CellRefsForUuid *a2)
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
    this = sub_221568DF4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

        v11 = MEMORY[0x223DA0360](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v11, v13);
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v15);
        *(v3 + 56) = v14;
      }

      if (*(a2 + 7))
      {
        v16 = *(a2 + 7);
      }

      else
      {
        v16 = &TSCE::_InternalCellRefSetArchive_default_instance_;
      }

      return TSCE::InternalCellRefSetArchive::MergeFrom(v14, v16);
    }
  }

  return this;
}

uint64_t *TSCE::UuidReferenceMapArchive_CellRefsForUuid::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferenceMapArchive_CellRefsForUuid::Clear(this);

    return TSCE::UuidReferenceMapArchive_CellRefsForUuid::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UuidReferenceMapArchive_CellRefsForUuid::CopyFrom(uint64_t *this, const TSCE::UuidReferenceMapArchive_CellRefsForUuid *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferenceMapArchive_CellRefsForUuid::Clear(this);

    return TSCE::UuidReferenceMapArchive_CellRefsForUuid::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCE::UuidReferenceMapArchive_CellRefsForUuid::IsInitialized(TSCE::UuidReferenceMapArchive_CellRefsForUuid *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = *(*(this + 5) + 8 * v3--);
    if ((~*(v4 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  result = TSP::UUID::IsInitialized(*(this + 6));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = sub_2214E71E0(*(this + 7) + 16);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCE::UuidReferenceMapArchive_CellRefsForUuid::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2214E06D4(&this->n128_i64[1], &a2->n128_i64[1]);
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

TSCE::UuidReferenceMapArchive *TSCE::UuidReferenceMapArchive::UuidReferenceMapArchive(TSCE::UuidReferenceMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ADD30;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_UuidReferenceMapArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSCE::UuidReferenceMapArchive *TSCE::UuidReferenceMapArchive::UuidReferenceMapArchive(TSCE::UuidReferenceMapArchive *this, const TSCE::UuidReferenceMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2834ADD30;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_22156AD10(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSCE::UuidReferenceMapArchive::~UuidReferenceMapArchive(TSCE::UuidReferenceMapArchive *this)
{
  sub_2214DFCF8(this + 1);
  sub_22156AC8C(this + 2);
}

{
  TSCE::UuidReferenceMapArchive::~UuidReferenceMapArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TSCE::UuidReferenceMapArchive::default_instance(TSCE::UuidReferenceMapArchive *this)
{
  if (atomic_load_explicit(scc_info_UuidReferenceMapArchive_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCE::_UuidReferenceMapArchive_default_instance_;
}

uint64_t *TSCE::UuidReferenceMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::UuidReferenceMapArchive_CellRefsForUuid::Clear(v4);
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

google::protobuf::internal *TSCE::UuidReferenceMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UuidReferenceMapArchive_CellRefsForUuid>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_2216FBAEC(a3, v13, v10);
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

unsigned __int8 *TSCE::UuidReferenceMapArchive::_InternalSerialize(TSCE::UuidReferenceMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCE::UuidReferenceMapArchive_CellRefsForUuid::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCE::UuidReferenceMapArchive::ByteSizeLong(TSCE::UuidReferenceMapArchive *this)
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
      v7 = TSCE::UuidReferenceMapArchive_CellRefsForUuid::ByteSizeLong(v6);
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

uint64_t TSCE::UuidReferenceMapArchive::MergeFrom(TSCE::UuidReferenceMapArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCE::UuidReferenceMapArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCE::UuidReferenceMapArchive::MergeFrom(uint64_t this, const TSCE::UuidReferenceMapArchive *a2)
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
    this = sub_22156AD10(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSCE::UuidReferenceMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferenceMapArchive::Clear(this);

    return TSCE::UuidReferenceMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCE::UuidReferenceMapArchive::CopyFrom(uint64_t *this, const TSCE::UuidReferenceMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCE::UuidReferenceMapArchive::Clear(this);

    return TSCE::UuidReferenceMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCE::UuidReferenceMapArchive::IsInitialized(TSCE::UuidReferenceMapArchive *this)
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
    IsInitialized = TSCE::UuidReferenceMapArchive_CellRefsForUuid::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSCE::UuidReferenceMapArchive::InternalSwap(TSCE::UuidReferenceMapArchive *this, TSCE::UuidReferenceMapArchive *a2)
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

TSP::UUID *TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::clear_group_node_uid(TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::GroupByNodeMapArchive_CellRefsForGroupNode(TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834ADDE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GroupByNodeMapArchive_CellRefsForGroupNode_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834ADDE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GroupByNodeMapArchive_CellRefsForGroupNode_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::GroupByNodeMapArchive_CellRefsForGroupNode(TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *this, const TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834ADDE0;
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
  return this;
}

void TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::~GroupByNodeMapArchive_CellRefsForGroupNode(TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *this)
{
  if (this != TSCE::_GroupByNodeMapArchive_CellRefsForGroupNode_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSCE::InternalCellRefSetArchive::~InternalCellRefSetArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::~GroupByNodeMapArchive_CellRefsForGroupNode(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::default_instance(TSCE::GroupByNodeMapArchive_CellRefsForGroupNode *this)
{
  if (atomic_load_explicit(scc_info_GroupByNodeMapArchive_CellRefsForGroupNode_TSCEArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TSCE::_GroupByNodeMapArchive_CellRefsForGroupNode_default_instance_;
}

uint64_t *TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::UUID::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSCE::InternalCellRefSetArchive::Clear(*(v1 + 32));
    }
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

google::protobuf::internal *TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_221567030(a3, &v19) & 1) == 0)
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
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::InternalCellRefSetArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v19;
      }

      v10 = sub_2216F8AFC(a3, v11, v5);
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
          sub_221567188((a1 + 8));
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

        v15 = MEMORY[0x223DA0360](v14);
        LODWORD(v13) = v15;
        *(a1 + 24) = v15;
        v5 = v19;
      }

      v10 = sub_2216F813C(a3, v13, v5);
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