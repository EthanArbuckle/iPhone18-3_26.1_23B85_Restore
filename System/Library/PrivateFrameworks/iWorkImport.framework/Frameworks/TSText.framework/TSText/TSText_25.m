uint64_t TSWP::ContainedObjectsCommandArchive::RequiredFieldsByteSizeFallback(TSWP::ContainedObjectsCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) == 0)
  {
    v3 = 0;
    if ((v2 & 4) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSK::CommandArchive::ByteSizeLong(*(this + 7));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 4) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 8));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSWP::ContainedObjectsCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    v4 = TSWP::ContainedObjectsCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[7]);
    v3 = TSP::Reference::ByteSizeLong(this[8]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v5 = *(this + 8);
  v6 = v4 + v5;
  v7 = this[5];
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = TSP::Reference::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  if (this[2])
  {
    v12 = this[6] & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    v6 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((this[11] & 0xFFFFFFFE) == 4)
  {
    v15 = TSP::Reference::ByteSizeLong(this[9]);
    v6 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v16 = *(this + 23);
  switch(v16)
  {
    case 8:
      v17 = TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::ByteSizeLong(this[10]);
      break;
    case 7:
      v17 = TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::ByteSizeLong(this[10]);
      break;
    case 6:
      v17 = TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::ByteSizeLong(this[10]);
      break;
    default:
      goto LABEL_23;
  }

  v6 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_23:
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v6, this + 20);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

uint64_t TSWP::ContainedObjectsCommandArchive::MergeFrom(TSWP::ContainedObjectsCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ContainedObjectsCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ContainedObjectsCommandArchive::MergeFrom(uint64_t this, const TSWP::ContainedObjectsCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276EA5F50(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
          goto LABEL_28;
        }

        goto LABEL_20;
      }
    }

    else if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 16) |= 2u;
    v11 = *(v3 + 56);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277CA31C0](v12);
      *(v3 + 56) = v11;
    }

    if (*(a2 + 7))
    {
      v13 = *(a2 + 7);
    }

    else
    {
      v13 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v11, v13);
    if ((v10 & 4) != 0)
    {
LABEL_20:
      *(v3 + 16) |= 4u;
      v14 = *(v3 + 64);
      if (!v14)
      {
        v15 = *(v3 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277CA3250](v15);
        *(v3 + 64) = v14;
      }

      if (*(a2 + 8))
      {
        v16 = *(a2 + 8);
      }

      else
      {
        v16 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v14, v16);
    }
  }

LABEL_28:
  v17 = *(a2 + 22);
  if (v17 == 5)
  {
    if (*(v3 + 88) != 5)
    {
      TSWP::ContainedObjectsCommandArchive::clear_undo_object(v3);
      *(v3 + 88) = 5;
      v21 = *(v3 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277CA3250](v21);
      *(v3 + 72) = v19;
      if (*(a2 + 22) != 5)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

LABEL_36:
    v19 = *(v3 + 72);
    goto LABEL_37;
  }

  if (v17 != 4)
  {
    goto LABEL_43;
  }

  if (*(v3 + 88) == 4)
  {
    goto LABEL_36;
  }

  TSWP::ContainedObjectsCommandArchive::clear_undo_object(v3);
  *(v3 + 88) = 4;
  v18 = *(v3 + 8);
  if (v18)
  {
    v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
  }

  v19 = MEMORY[0x277CA3250](v18);
  *(v3 + 72) = v19;
  if (*(a2 + 22) != 4)
  {
LABEL_41:
    v20 = MEMORY[0x277D80A18];
    goto LABEL_42;
  }

LABEL_37:
  v20 = *(a2 + 9);
LABEL_42:
  this = TSP::Reference::MergeFrom(v19, v20);
LABEL_43:
  v22 = *(a2 + 23);
  if (v22 != 8)
  {
    if (v22 != 7)
    {
      if (v22 != 6)
      {
        return this;
      }

      if (*(v3 + 92) == 6)
      {
        v23 = *(v3 + 80);
      }

      else
      {
        TSWP::ContainedObjectsCommandArchive::clear_behavior(v3);
        *(v3 + 92) = 6;
        v30 = *(v3 + 8);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs>(v30);
        *(v3 + 80) = v23;
        if (*(a2 + 23) != 6)
        {
          v31 = &TSWP::_ContainedObjectsCommandArchive_AddBehaviorArgs_default_instance_;
          goto LABEL_74;
        }
      }

      v31 = *(a2 + 10);
LABEL_74:

      return TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::MergeFrom(v23, v31);
    }

    if (*(v3 + 92) == 7)
    {
      v24 = *(v3 + 80);
    }

    else
    {
      TSWP::ContainedObjectsCommandArchive::clear_behavior(v3);
      *(v3 + 92) = 7;
      v26 = *(v3 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs>(v26);
      *(v3 + 80) = v24;
      if (*(a2 + 23) != 7)
      {
        v27 = &TSWP::_ContainedObjectsCommandArchive_RemoveBehaviorArgs_default_instance_;
        goto LABEL_66;
      }
    }

    v27 = *(a2 + 10);
LABEL_66:

    return TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::MergeFrom(v24, v27);
  }

  if (*(v3 + 92) == 8)
  {
    v25 = *(v3 + 80);
  }

  else
  {
    TSWP::ContainedObjectsCommandArchive::clear_behavior(v3);
    *(v3 + 92) = 8;
    v28 = *(v3 + 8);
    if (v28)
    {
      v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
    }

    v25 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs>(v28);
    *(v3 + 80) = v25;
    if (*(a2 + 23) != 8)
    {
      v29 = &TSWP::_ContainedObjectsCommandArchive_RearrangeBehaviorArgs_default_instance_;
      goto LABEL_70;
    }
  }

  v29 = *(a2 + 10);
LABEL_70:

  return TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::MergeFrom(v25, v29);
}

TSWP::ContainedObjectsCommandArchive *TSWP::ContainedObjectsCommandArchive::CopyFrom(TSWP::ContainedObjectsCommandArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ContainedObjectsCommandArchive::Clear(this);

    return TSWP::ContainedObjectsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::ContainedObjectsCommandArchive *TSWP::ContainedObjectsCommandArchive::CopyFrom(TSWP::ContainedObjectsCommandArchive *this, const TSWP::ContainedObjectsCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ContainedObjectsCommandArchive::Clear(this);

    return TSWP::ContainedObjectsCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::ContainedObjectsCommandArchive::IsInitialized(TSWP::ContainedObjectsCommandArchive *this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (!TSK::CommandArchive::IsInitialized(*(this + 7)))
    {
      return 0;
    }

    v5 = *(this + 4);
  }

  if ((v5 & 4) != 0 && !TSP::Reference::IsInitialized(*(this + 8)))
  {
    return 0;
  }

  v6 = *(this + 22);
  if (v6 == 5)
  {
    if (TSP::Reference::IsInitialized(*(this + 9)))
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v6 == 4 && (TSP::Reference::IsInitialized(*(this + 9)) & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v7 = *(this + 23);
  switch(v7)
  {
    case 8:
      v18 = *(this + 10);
      v19 = *(v18 + 24);
      do
      {
        v10 = v19 < 1;
        if (v19 < 1)
        {
          break;
        }

        v20 = v19 - 1;
        v21 = TSCK::RearrangeIdOperationArgs::IsInitialized(*(*(v18 + 32) + 8 * v19));
        v19 = v20;
      }

      while ((v21 & 1) != 0);
      break;
    case 7:
      v14 = *(this + 10);
      v15 = *(v14 + 24);
      do
      {
        v10 = v15 < 1;
        if (v15 < 1)
        {
          break;
        }

        v16 = v15 - 1;
        v17 = TSCK::RemoveIdOperationArgs::IsInitialized(*(*(v14 + 32) + 8 * v15));
        v15 = v16;
      }

      while ((v17 & 1) != 0);
      break;
    case 6:
      v8 = *(this + 10);
      v9 = *(v8 + 24);
      do
      {
        v10 = v9 < 1;
        if (v9 < 1)
        {
          break;
        }

        v11 = v9 - 1;
        v12 = TSCK::AddIdOperationArgs::IsInitialized(*(*(v8 + 32) + 8 * v9));
        v9 = v11;
      }

      while ((v12 & 1) != 0);
      break;
    default:
      return 1;
  }

  return v10;
}

__n128 TSWP::ContainedObjectsCommandArchive::InternalSwap(TSWP::ContainedObjectsCommandArchive *this, TSWP::ContainedObjectsCommandArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  v8 = *(this + 7);
  v9 = *(this + 8);
  result = *(a2 + 56);
  *(this + 56) = result;
  *(a2 + 7) = v8;
  *(a2 + 8) = v9;
  v11 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v12;
  LODWORD(v12) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v12;
  LODWORD(v12) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v12;
  return result;
}

TSD::MediaInfoGeometryCommandArchive *TSWP::EquationInfoGeometryCommandArchive::clear_super(TSWP::EquationInfoGeometryCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::MediaInfoGeometryCommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::EquationInfoGeometryCommandArchive *TSWP::EquationInfoGeometryCommandArchive::EquationInfoGeometryCommandArchive(TSWP::EquationInfoGeometryCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288609210;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_EquationInfoGeometryCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288609210;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_EquationInfoGeometryCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSWP::EquationInfoGeometryCommandArchive *TSWP::EquationInfoGeometryCommandArchive::EquationInfoGeometryCommandArchive(TSWP::EquationInfoGeometryCommandArchive *this, const TSWP::EquationInfoGeometryCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288609210;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276EA4CDC(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSWP::EquationInfoGeometryCommandArchive::~EquationInfoGeometryCommandArchive(TSWP::EquationInfoGeometryCommandArchive *this)
{
  if (this != &TSWP::_EquationInfoGeometryCommandArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277CA2870]();
    MEMORY[0x277CA3D00](v2, 0x10A1C40CA074DDCLL);
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::EquationInfoGeometryCommandArchive::~EquationInfoGeometryCommandArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::EquationInfoGeometryCommandArchive::default_instance(TSWP::EquationInfoGeometryCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_EquationInfoGeometryCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_EquationInfoGeometryCommandArchive_default_instance_;
}

uint64_t *TSWP::EquationInfoGeometryCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::MediaInfoGeometryCommandArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWP::EquationInfoGeometryCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_276EA4A1C(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277CA31A0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_276F59280(a3, v10, v5);
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
        sub_276EA4A94((a1 + 8));
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

unsigned __int8 *TSWP::EquationInfoGeometryCommandArchive::_InternalSerialize(TSWP::EquationInfoGeometryCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 3);
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

    a2 = TSD::MediaInfoGeometryCommandArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::EquationInfoGeometryCommandArchive::ByteSizeLong(TSD::MediaInfoGeometryCommandArchive **this)
{
  if (this[2])
  {
    v3 = TSD::MediaInfoGeometryCommandArchive::ByteSizeLong(this[3]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v2, this + 20);
  }

  else
  {
    *(this + 5) = v2;
    return v2;
  }
}

uint64_t TSWP::EquationInfoGeometryCommandArchive::MergeFrom(TSWP::EquationInfoGeometryCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::EquationInfoGeometryCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::EquationInfoGeometryCommandArchive::MergeFrom(uint64_t this, const TSWP::EquationInfoGeometryCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    *(v3 + 16) |= 1u;
    if (!*(v3 + 24))
    {
      v5 = *(v3 + 8);
      if (v5)
      {
        v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 24) = MEMORY[0x277CA31A0](v5);
    }

    return MEMORY[0x2821E9D00]();
  }

  return this;
}

uint64_t *TSWP::EquationInfoGeometryCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::EquationInfoGeometryCommandArchive::Clear(this);

    return TSWP::EquationInfoGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::EquationInfoGeometryCommandArchive::CopyFrom(uint64_t *this, const TSWP::EquationInfoGeometryCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::EquationInfoGeometryCommandArchive::Clear(this);

    return TSWP::EquationInfoGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::EquationInfoGeometryCommandArchive::IsInitialized(TSWP::EquationInfoGeometryCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSD::MediaInfoGeometryCommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSWP::EquationInfoGeometryCommandArchive::InternalSwap(TSWP::EquationInfoGeometryCommandArchive *this, TSWP::EquationInfoGeometryCommandArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSWP::CharacterStyleChangePropertyCommand_GArchive::clear_range_list(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Range::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t *TSWP::CharacterStyleChangePropertyCommand_GArchive::clear_change_list(uint64_t *this)
{
  v1 = *(this + 14);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[8] + 8);
    do
    {
      v4 = *v3++;
      this = TSWPSOS::CharacterStylePropertyChangeSetArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TSWP::CharacterStyleChangePropertyCommand_GArchive *TSWP::CharacterStyleChangePropertyCommand_GArchive::CharacterStyleChangePropertyCommand_GArchive(TSWP::CharacterStyleChangePropertyCommand_GArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886092C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_CharacterStyleChangePropertyCommand_GArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 79) = 0;
  *(this + 9) = 0;
  return this;
}

void sub_276F2737C(_Unwind_Exception *a1)
{
  sub_276F2C3FC(v2);
  sub_276EA4C58(v1);
  _Unwind_Resume(a1);
}

TSWP::CharacterStyleChangePropertyCommand_GArchive *TSWP::CharacterStyleChangePropertyCommand_GArchive::CharacterStyleChangePropertyCommand_GArchive(TSWP::CharacterStyleChangePropertyCommand_GArchive *this, const TSWP::CharacterStyleChangePropertyCommand_GArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886092C0;
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
    sub_276EA4D78(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_276F2C480(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_276EA4CDC(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 9) = 0;
  v16 = *(a2 + 40);
  *(this + 82) = *(a2 + 82);
  *(this + 40) = v16;
  return this;
}

void sub_276F2753C(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v3, 0x10A1C40686E4BC4);
  sub_276F2C3FC(v2);
  sub_276EA4C58((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::CharacterStyleChangePropertyCommand_GArchive::~CharacterStyleChangePropertyCommand_GArchive(TSWP::CharacterStyleChangePropertyCommand_GArchive *this)
{
  if (this != &TSWP::_CharacterStyleChangePropertyCommand_GArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSWP::StorageActionCommandArchive::~StorageActionCommandArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
  sub_276F2C3FC(this + 6);
  sub_276EA4C58(this + 3);
}

{
  TSWP::CharacterStyleChangePropertyCommand_GArchive::~CharacterStyleChangePropertyCommand_GArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::CharacterStyleChangePropertyCommand_GArchive::default_instance(TSWP::CharacterStyleChangePropertyCommand_GArchive *this)
{
  if (atomic_load_explicit(scc_info_CharacterStyleChangePropertyCommand_GArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_CharacterStyleChangePropertyCommand_GArchive_default_instance_;
}

uint64_t *TSWP::CharacterStyleChangePropertyCommand_GArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Range::Clear(v4);
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
      this = TSWPSOS::CharacterStylePropertyChangeSetArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSWP::StorageActionCommandArchive::Clear(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 74) = 0;
  *(v8 + 72) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_276EA4D28(v8);
  }

  return this;
}

google::protobuf::internal *TSWP::CharacterStyleChangePropertyCommand_GArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v50 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v50) & 1) == 0)
  {
    while (1)
    {
      v7 = (v50 + 1);
      v8 = *v50;
      if ((*v50 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v50, (v9 - 128));
      v50 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_83;
      }

      v7 = TagFallback;
      v8 = v43;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 != 4)
        {
          if (v10 == 5)
          {
            if (v8 != 40)
            {
              goto LABEL_64;
            }

            v5 |= 4u;
            v39 = (v7 + 1);
            v38 = *v7;
            if ((v38 & 0x8000000000000000) == 0)
            {
              goto LABEL_63;
            }

            v40 = *v39;
            v38 = (v40 << 7) + v38 - 128;
            if ((v40 & 0x80000000) == 0)
            {
              v39 = (v7 + 2);
LABEL_63:
              v50 = v39;
              *(a1 + 81) = v38 != 0;
              goto LABEL_72;
            }

            v48 = google::protobuf::internal::VarintParseSlow64(v7, v38);
            v50 = v48;
            *(a1 + 81) = v49 != 0;
            if (!v48)
            {
LABEL_83:
              v50 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            if (v10 != 6 || v8 != 48)
            {
              goto LABEL_64;
            }

            v5 |= 8u;
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
              v50 = v16;
              *(a1 + 82) = v15 != 0;
              goto LABEL_72;
            }

            v44 = google::protobuf::internal::VarintParseSlow64(v7, v15);
            v50 = v44;
            *(a1 + 82) = v45 != 0;
            if (!v44)
            {
              goto LABEL_83;
            }
          }

          goto LABEL_72;
        }

        if (v8 != 34)
        {
          goto LABEL_64;
        }

        v21 = (v7 - 1);
        while (2)
        {
          v22 = (v21 + 1);
          v50 = (v21 + 1);
          v23 = *(a1 + 64);
          if (!v23)
          {
LABEL_36:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v23 = *(a1 + 64);
            v24 = *v23;
            goto LABEL_37;
          }

          v28 = *(a1 + 56);
          v24 = *v23;
          if (v28 >= *v23)
          {
            if (v24 == *(a1 + 60))
            {
              goto LABEL_36;
            }

LABEL_37:
            *v23 = v24 + 1;
            v25 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::CharacterStylePropertyChangeSetArchive>(*(a1 + 48));
            v26 = *(a1 + 56);
            v27 = *(a1 + 64) + 8 * v26;
            *(a1 + 56) = v26 + 1;
            *(v27 + 8) = v25;
            v22 = v50;
          }

          else
          {
            *(a1 + 56) = v28 + 1;
            v25 = *&v23[2 * v28 + 2];
          }

          v21 = sub_276F56A78(a3, v25, v22);
          v50 = v21;
          if (!v21)
          {
            goto LABEL_83;
          }

          if (*a3 <= v21 || *v21 != 34)
          {
            goto LABEL_72;
          }

          continue;
        }
      }

      if (v10 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_64;
        }

        *(a1 + 16) |= 1u;
        v18 = *(a1 + 72);
        if (!v18)
        {
          v19 = *(a1 + 8);
          if (v19)
          {
            v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StorageActionCommandArchive>(v19);
          *(a1 + 72) = v18;
          v7 = v50;
        }

        v20 = sub_276F58650(a3, v18, v7);
        goto LABEL_71;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          v29 = v7 - 1;
          while (1)
          {
            v30 = (v29 + 1);
            v50 = (v29 + 1);
            v31 = *(a1 + 40);
            if (!v31)
            {
              goto LABEL_49;
            }

            v37 = *(a1 + 32);
            v32 = *v31;
            if (v37 < *v31)
            {
              *(a1 + 32) = v37 + 1;
              v34 = *&v31[2 * v37 + 2];
              goto LABEL_53;
            }

            if (v32 == *(a1 + 36))
            {
LABEL_49:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v31 = *(a1 + 40);
              v32 = *v31;
            }

            *v31 = v32 + 1;
            v33 = MEMORY[0x277CA3230](*(a1 + 24));
            LODWORD(v34) = v33;
            v35 = *(a1 + 32);
            v36 = *(a1 + 40) + 8 * v35;
            *(a1 + 32) = v35 + 1;
            *(v36 + 8) = v33;
            v30 = v50;
LABEL_53:
            v29 = sub_276F4F918(a3, v34, v30);
            v50 = v29;
            if (!v29)
            {
              goto LABEL_83;
            }

            if (*a3 <= v29 || *v29 != 18)
            {
              goto LABEL_72;
            }
          }
        }

LABEL_64:
        if (v8)
        {
          v41 = (v8 & 7) == 4;
        }

        else
        {
          v41 = 1;
        }

        if (v41)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276EA4A94((a1 + 8));
        }

        v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_71:
        v50 = v20;
        if (!v20)
        {
          goto LABEL_83;
        }

        goto LABEL_72;
      }

      if (v10 != 3 || v8 != 24)
      {
        goto LABEL_64;
      }

      v5 |= 2u;
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
        v50 = v13;
        *(a1 + 80) = v12 != 0;
        goto LABEL_72;
      }

      v46 = google::protobuf::internal::VarintParseSlow64(v7, v12);
      v50 = v46;
      *(a1 + 80) = v47 != 0;
      if (!v46)
      {
        goto LABEL_83;
      }

LABEL_72:
      if (sub_276EA4A1C(a3, &v50))
      {
        goto LABEL_2;
      }
    }

    v7 = (v50 + 2);
LABEL_6:
    v50 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v50;
}

unsigned __int8 *TSWP::CharacterStyleChangePropertyCommand_GArchive::_InternalSerialize(TSWP::CharacterStyleChangePropertyCommand_GArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 9);
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

    a2 = TSWP::StorageActionCommandArchive::_InternalSerialize(v6, v8, a3);
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

      a2 = TSP::Range::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 80);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
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
      *a2 = 34;
      v24 = *(v23 + 6);
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

      a2 = TSWPSOS::CharacterStylePropertyChangeSetArchive::_InternalSerialize(v23, v25, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v29 = *(this + 81);
    *a2 = 40;
    a2[1] = v29;
    a2 += 2;
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 82);
    *a2 = 48;
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

uint64_t TSWP::CharacterStyleChangePropertyCommand_GArchive::RequiredFieldsByteSizeFallback(TSWP::CharacterStyleChangePropertyCommand_GArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v4 = TSWP::StorageActionCommandArchive::ByteSizeLong(*(this + 9));
    v2 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v1 = *(this + 4);
  }

  else
  {
    v2 = 0;
  }

  return v2 + ((v1 >> 2) & 2);
}

uint64_t TSWP::CharacterStyleChangePropertyCommand_GArchive::ByteSizeLong(TSWP::StorageActionCommandArchive **this)
{
  if ((~*(this + 4) & 9) != 0)
  {
    v4 = TSWP::CharacterStyleChangePropertyCommand_GArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSWP::StorageActionCommandArchive::ByteSizeLong(this[9]);
    v4 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v5 = *(this + 8);
  v6 = v4 + v5;
  v7 = this[5];
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = TSP::Range::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(this + 14);
  v13 = v6 + v12;
  v14 = this[8];
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = TSWPSOS::CharacterStylePropertyChangeSetArchive::ByteSizeLong(v17, v3);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  if ((this[2] & 6) != 0)
  {
    v19 = v13 + (this[2] & 2) + ((*(this + 4) >> 1) & 2);
  }

  else
  {
    v19 = v13;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v19, this + 20);
  }

  else
  {
    *(this + 5) = v19;
    return v19;
  }
}

uint64_t TSWP::CharacterStyleChangePropertyCommand_GArchive::MergeFrom(TSWP::CharacterStyleChangePropertyCommand_GArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::CharacterStyleChangePropertyCommand_GArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::CharacterStyleChangePropertyCommand_GArchive::MergeFrom(uint64_t this, const TSWP::CharacterStyleChangePropertyCommand_GArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276EA4D78(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_276F2C480(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 0xF) != 0)
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

        v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StorageActionCommandArchive>(v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 9))
      {
        v18 = *(a2 + 9);
      }

      else
      {
        v18 = &TSWP::_StorageActionCommandArchive_default_instance_;
      }

      this = TSWP::StorageActionCommandArchive::MergeFrom(v16, v18);
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_26;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 80) = *(a2 + 80);
    if ((v15 & 4) == 0)
    {
LABEL_13:
      if ((v15 & 8) == 0)
      {
LABEL_15:
        *(v3 + 16) |= v15;
        return this;
      }

LABEL_14:
      *(v3 + 82) = *(a2 + 82);
      goto LABEL_15;
    }

LABEL_26:
    *(v3 + 81) = *(a2 + 81);
    if ((v15 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  return this;
}

uint64_t *TSWP::CharacterStyleChangePropertyCommand_GArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CharacterStyleChangePropertyCommand_GArchive::Clear(this);

    return TSWP::CharacterStyleChangePropertyCommand_GArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::CharacterStyleChangePropertyCommand_GArchive::CopyFrom(uint64_t *this, const TSWP::CharacterStyleChangePropertyCommand_GArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::CharacterStyleChangePropertyCommand_GArchive::Clear(this);

    return TSWP::CharacterStyleChangePropertyCommand_GArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::CharacterStyleChangePropertyCommand_GArchive::IsInitialized(TSWP::CharacterStyleChangePropertyCommand_GArchive *this)
{
  if ((~*(this + 4) & 9) != 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Range::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 14);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSWPSOS::CharacterStylePropertyChangeSetArchive::IsInitialized(*(*(this + 8) + 8 * v6));
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

  result = TSWP::StorageActionCommandArchive::IsInitialized(*(this + 9));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::CharacterStyleChangePropertyCommand_GArchive::InternalSwap(TSWP::CharacterStyleChangePropertyCommand_GArchive *this, TSWP::CharacterStyleChangePropertyCommand_GArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  LOWORD(v10) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v10;
  LOBYTE(v10) = *(this + 82);
  *(this + 82) = *(a2 + 82);
  *(a2 + 82) = v10;
  return result;
}

uint64_t TSWP::ParagraphStyleChangePropertyCommand_GArchive::clear_range_list(uint64_t this)
{
  v1 = *(this + 32);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 40) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Range::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t *TSWP::ParagraphStyleChangePropertyCommand_GArchive::clear_change_list(uint64_t *this)
{
  v1 = *(this + 14);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[8] + 8);
    do
    {
      v4 = *v3++;
      this = TSWPSOS::ParagraphStylePropertyChangeSetArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TSWP::ParagraphStyleChangePropertyCommand_GArchive *TSWP::ParagraphStyleChangePropertyCommand_GArchive::ParagraphStyleChangePropertyCommand_GArchive(TSWP::ParagraphStyleChangePropertyCommand_GArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288609370;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_ParagraphStyleChangePropertyCommand_GArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0;
  *(this + 9) = 0;
  return this;
}

void sub_276F28620(_Unwind_Exception *a1)
{
  sub_276F2C540(v2);
  sub_276EA4C58(v1);
  _Unwind_Resume(a1);
}

TSWP::ParagraphStyleChangePropertyCommand_GArchive *TSWP::ParagraphStyleChangePropertyCommand_GArchive::ParagraphStyleChangePropertyCommand_GArchive(TSWP::ParagraphStyleChangePropertyCommand_GArchive *this, const TSWP::ParagraphStyleChangePropertyCommand_GArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288609370;
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
    sub_276EA4D78(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_276F2C5C4(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_276EA4CDC(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 9) = 0;
  *(this + 40) = *(a2 + 40);
  return this;
}

void sub_276F287D8(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v3, 0x10A1C40686E4BC4);
  sub_276F2C540(v2);
  sub_276EA4C58((v1 + 24));
  _Unwind_Resume(a1);
}

void TSWP::ParagraphStyleChangePropertyCommand_GArchive::~ParagraphStyleChangePropertyCommand_GArchive(TSWP::ParagraphStyleChangePropertyCommand_GArchive *this)
{
  if (this != &TSWP::_ParagraphStyleChangePropertyCommand_GArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSWP::StorageActionCommandArchive::~StorageActionCommandArchive(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
  sub_276F2C540(this + 6);
  sub_276EA4C58(this + 3);
}

{
  TSWP::ParagraphStyleChangePropertyCommand_GArchive::~ParagraphStyleChangePropertyCommand_GArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::ParagraphStyleChangePropertyCommand_GArchive::default_instance(TSWP::ParagraphStyleChangePropertyCommand_GArchive *this)
{
  if (atomic_load_explicit(scc_info_ParagraphStyleChangePropertyCommand_GArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ParagraphStyleChangePropertyCommand_GArchive_default_instance_;
}

uint64_t *TSWP::ParagraphStyleChangePropertyCommand_GArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Range::Clear(v4);
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
      this = TSWPSOS::ParagraphStylePropertyChangeSetArchive::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 56) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSWP::StorageActionCommandArchive::Clear(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 72) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_276EA4D28(v8);
  }

  return this;
}

google::protobuf::internal *TSWP::ParagraphStyleChangePropertyCommand_GArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v45 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v45) & 1) == 0)
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
        goto LABEL_75;
      }

      v7 = TagFallback;
      v8 = v40;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_58;
          }

          *(a1 + 16) |= 1u;
          v35 = *(a1 + 72);
          if (!v35)
          {
            v36 = *(a1 + 8);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            v35 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StorageActionCommandArchive>(v36);
            *(a1 + 72) = v35;
            v7 = v45;
          }

          v37 = sub_276F58650(a3, v35, v7);
          goto LABEL_65;
        }

        if (v10 != 2 || v8 != 18)
        {
          goto LABEL_58;
        }

        v15 = v7 - 1;
        while (2)
        {
          v16 = (v15 + 1);
          v45 = (v15 + 1);
          v17 = *(a1 + 40);
          if (!v17)
          {
LABEL_24:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v17 = *(a1 + 40);
            v18 = *v17;
            goto LABEL_25;
          }

          v23 = *(a1 + 32);
          v18 = *v17;
          if (v23 >= *v17)
          {
            if (v18 == *(a1 + 36))
            {
              goto LABEL_24;
            }

LABEL_25:
            *v17 = v18 + 1;
            v19 = MEMORY[0x277CA3230](*(a1 + 24));
            LODWORD(v20) = v19;
            v21 = *(a1 + 32);
            v22 = *(a1 + 40) + 8 * v21;
            *(a1 + 32) = v21 + 1;
            *(v22 + 8) = v19;
            v16 = v45;
          }

          else
          {
            *(a1 + 32) = v23 + 1;
            v20 = *&v17[2 * v23 + 2];
          }

          v15 = sub_276F4F918(a3, v20, v16);
          v45 = v15;
          if (!v15)
          {
            goto LABEL_75;
          }

          if (*a3 <= v15 || *v15 != 18)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_58;
        }

        v5 |= 2u;
        v25 = (v7 + 1);
        v24 = *v7;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_38;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if ((v26 & 0x80000000) == 0)
        {
          v25 = (v7 + 2);
LABEL_38:
          v45 = v25;
          *(a1 + 80) = v24 != 0;
          goto LABEL_66;
        }

        v41 = google::protobuf::internal::VarintParseSlow64(v7, v24);
        v45 = v41;
        *(a1 + 80) = v42 != 0;
        if (!v41)
        {
          goto LABEL_75;
        }

        goto LABEL_66;
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          v27 = (v7 - 1);
          while (1)
          {
            v28 = (v27 + 1);
            v45 = (v27 + 1);
            v29 = *(a1 + 64);
            if (!v29)
            {
              goto LABEL_42;
            }

            v34 = *(a1 + 56);
            v30 = *v29;
            if (v34 < *v29)
            {
              *(a1 + 56) = v34 + 1;
              v31 = *&v29[2 * v34 + 2];
              goto LABEL_46;
            }

            if (v30 == *(a1 + 60))
            {
LABEL_42:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v29 = *(a1 + 64);
              v30 = *v29;
            }

            *v29 = v30 + 1;
            v31 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::ParagraphStylePropertyChangeSetArchive>(*(a1 + 48));
            v32 = *(a1 + 56);
            v33 = *(a1 + 64) + 8 * v32;
            *(a1 + 56) = v32 + 1;
            *(v33 + 8) = v31;
            v28 = v45;
LABEL_46:
            v27 = sub_276F575D8(a3, v31, v28);
            v45 = v27;
            if (!v27)
            {
              goto LABEL_75;
            }

            if (*a3 <= v27 || *v27 != 34)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_58:
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
          sub_276EA4A94((a1 + 8));
        }

        v37 = google::protobuf::internal::UnknownFieldParse();
LABEL_65:
        v45 = v37;
        if (!v37)
        {
          goto LABEL_75;
        }

        goto LABEL_66;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_58;
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
        v45 = v12;
        *(a1 + 81) = v11 != 0;
        goto LABEL_66;
      }

      v43 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v45 = v43;
      *(a1 + 81) = v44 != 0;
      if (!v43)
      {
LABEL_75:
        v45 = 0;
        goto LABEL_2;
      }

LABEL_66:
      if (sub_276EA4A1C(a3, &v45))
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

unsigned __int8 *TSWP::ParagraphStyleChangePropertyCommand_GArchive::_InternalSerialize(TSWP::ParagraphStyleChangePropertyCommand_GArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 9);
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

    a2 = TSWP::StorageActionCommandArchive::_InternalSerialize(v6, v8, a3);
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

      a2 = TSP::Range::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 80);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
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
      *a2 = 34;
      v24 = *(v23 + 6);
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

      a2 = TSWPSOS::ParagraphStylePropertyChangeSetArchive::_InternalSerialize(v23, v25, a3);
    }
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v29 = *(this + 81);
    *a2 = 40;
    a2[1] = v29;
    a2 += 2;
  }

  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ParagraphStyleChangePropertyCommand_GArchive::ByteSizeLong(TSWP::StorageActionCommandArchive **this, uint32x4_t a2)
{
  if (this[2])
  {
    v4 = TSWP::StorageActionCommandArchive::ByteSizeLong(this[9]);
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 8);
  v6 = v3 + v5;
  v7 = this[5];
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = TSP::Range::ByteSizeLong(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(this + 14);
  v13 = v6 + v12;
  v14 = this[8];
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = TSWPSOS::ParagraphStylePropertyChangeSetArchive::ByteSizeLong(v17, a2);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  if ((this[2] & 6) != 0)
  {
    v19 = v13 + (this[2] & 2) + ((*(this + 4) >> 1) & 2);
  }

  else
  {
    v19 = v13;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v19, this + 20);
  }

  else
  {
    *(this + 5) = v19;
    return v19;
  }
}

uint64_t TSWP::ParagraphStyleChangePropertyCommand_GArchive::MergeFrom(TSWP::ParagraphStyleChangePropertyCommand_GArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ParagraphStyleChangePropertyCommand_GArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ParagraphStyleChangePropertyCommand_GArchive::MergeFrom(uint64_t this, const TSWP::ParagraphStyleChangePropertyCommand_GArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276EA4D78(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_276F2C5C4(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
      *(v3 + 16) |= 1u;
      v16 = *(v3 + 72);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::StorageActionCommandArchive>(v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 9))
      {
        v18 = *(a2 + 9);
      }

      else
      {
        v18 = &TSWP::_StorageActionCommandArchive_default_instance_;
      }

      this = TSWP::StorageActionCommandArchive::MergeFrom(v16, v18);
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
        *(v3 + 81) = *(a2 + 81);
        goto LABEL_14;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 80) = *(a2 + 80);
    if ((v15 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  return this;
}

uint64_t *TSWP::ParagraphStyleChangePropertyCommand_GArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ParagraphStyleChangePropertyCommand_GArchive::Clear(this);

    return TSWP::ParagraphStyleChangePropertyCommand_GArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ParagraphStyleChangePropertyCommand_GArchive::CopyFrom(uint64_t *this, const TSWP::ParagraphStyleChangePropertyCommand_GArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ParagraphStyleChangePropertyCommand_GArchive::Clear(this);

    return TSWP::ParagraphStyleChangePropertyCommand_GArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ParagraphStyleChangePropertyCommand_GArchive::IsInitialized(TSWP::ParagraphStyleChangePropertyCommand_GArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Range::IsInitialized(*(*(this + 5) + 8 * v3));
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
    v8 = TSWPSOS::ParagraphStylePropertyChangeSetArchive::IsInitialized(*(*(this + 8) + 8 * v6));
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

  result = TSWP::StorageActionCommandArchive::IsInitialized(*(this + 9));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ParagraphStyleChangePropertyCommand_GArchive::InternalSwap(TSWP::ParagraphStyleChangePropertyCommand_GArchive *this, TSWP::ParagraphStyleChangePropertyCommand_GArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  LOWORD(v10) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_276F29640(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276F2C684(a1, 1);
  *result = &unk_2886073D0;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_276F296B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2C72C(a1);
}

TSWP::StorageActionCommandArchive *sub_276F2978C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2C838(a1, 1);
  TSWP::StorageActionCommandArchive::StorageActionCommandArchive(v2, a1);
  return v2;
}

void *sub_276F29818(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2C8C4(a1);
}

void *sub_276F298E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2C9C8(a1);
}

uint64_t sub_276F299B8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2CACC(a1);
}

uint64_t sub_276F29A8C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2CBD4(a1);
}

uint64_t sub_276F29B60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2CCDC(a1);
}

uint64_t sub_276F29C34(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2CDE4(a1);
}

uint64_t sub_276F29D08(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2CEEC(a1);
}

TSWP::ApplyPlaceholderTextCommandArchive *sub_276F29DE0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2CFF8(a1, 1);
  TSWP::ApplyPlaceholderTextCommandArchive::ApplyPlaceholderTextCommandArchive(v2, a1);
  return v2;
}

uint64_t sub_276F29E6C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2D084(a1);
}

TSWP::ApplyRubyTextCommandArchive *sub_276F29F40(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2D18C(a1, 1);
  TSWP::ApplyRubyTextCommandArchive::ApplyRubyTextCommandArchive(v2, a1);
  return v2;
}

TSWP::ModifyRubyTextCommandArchive *sub_276F29FCC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2D218(a1, 1);
  TSWP::ModifyRubyTextCommandArchive::ModifyRubyTextCommandArchive(v2, a1);
  return v2;
}

void *sub_276F2A058(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2D2A4(a1);
}

void *sub_276F2A128(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2D3A8(a1);
}

uint64_t sub_276F2A1F4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2D4A8(a1);
}

uint64_t sub_276F2A2C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2D5AC(a1);
}

void *sub_276F2A3A0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2D6BC(a1);
}

uint64_t sub_276F2A470(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2D7C0(a1);
}

uint64_t sub_276F2A548(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2D8CC(a1);
}

void *sub_276F2A620(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2D9D8(a1);
}

void *sub_276F2A6EC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2DAD8(a1);
}

uint64_t sub_276F2A7BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2DBDC(a1);
}

TSWP::StyleRenameCommandArchive *sub_276F2A88C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2DCE0(a1, 1);
  TSWP::StyleRenameCommandArchive::StyleRenameCommandArchive(v2, a1);
  return v2;
}

void *sub_276F2A918(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2DD6C(a1);
}

uint64_t sub_276F2A9E8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2DE70(a1);
}

void *sub_276F2AAB8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2DF74(a1);
}

void *sub_276F2AB84(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2E074(a1);
}

void *sub_276F2AC50(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2E174(a1);
}

uint64_t sub_276F2AD1C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2E274(a1);
}

TSWP::PencilAnnotationSelectionTransformerArchive *sub_276F2ADEC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2E378(a1, 1);
  TSWP::PencilAnnotationSelectionTransformerArchive::PencilAnnotationSelectionTransformerArchive(v2, a1);
  return v2;
}

void *sub_276F2AE78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2E404(a1);
}

void *sub_276F2AF44(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2E504(a1);
}

TSWP::ObjectPropertyArchive *sub_276F2B010(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2E604(a1, 1);
  TSWP::ObjectPropertyArchive::ObjectPropertyArchive(v2, a1);
  return v2;
}

TSWP::SetObjectPropertiesCommandArchive *sub_276F2B09C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2E690(a1, 1);
  TSWP::SetObjectPropertiesCommandArchive::SetObjectPropertiesCommandArchive(v2, a1);
  return v2;
}

TSWP::UpdateFlowInfoCommandArchive *sub_276F2B128(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2E71C(a1, 1);
  TSWP::UpdateFlowInfoCommandArchive::UpdateFlowInfoCommandArchive(v2, a1);
  return v2;
}

uint64_t sub_276F2B1B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2E7A8(a1);
}

uint64_t sub_276F2B28C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2E8B4(a1);
}

TSWP::TextCommentReplyCommandArchive *sub_276F2B360(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2E9BC(a1, 1);
  TSWP::TextCommentReplyCommandArchive::TextCommentReplyCommandArchive(v2, a1);
  return v2;
}

TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs *sub_276F2B3EC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2EA48(a1, 1);
  TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::ContainedObjectsCommandArchive_AddBehaviorArgs(v2, a1);
  return v2;
}

TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs *sub_276F2B478(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2EAD4(a1, 1);
  TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::ContainedObjectsCommandArchive_RemoveBehaviorArgs(v2, a1);
  return v2;
}

TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs *sub_276F2B504(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2EB60(a1, 1);
  TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::ContainedObjectsCommandArchive_RearrangeBehaviorArgs(v2, a1);
  return v2;
}

TSWP::ContainedObjectsCommandArchive *sub_276F2B590(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2EBEC(a1, 1);
  TSWP::ContainedObjectsCommandArchive::ContainedObjectsCommandArchive(v2, a1);
  return v2;
}

void *sub_276F2B61C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276F2EC78(a1);
}

TSWP::CharacterStyleChangePropertyCommand_GArchive *sub_276F2B6E8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2ED78(a1, 1);
  TSWP::CharacterStyleChangePropertyCommand_GArchive::CharacterStyleChangePropertyCommand_GArchive(v2, a1);
  return v2;
}

TSWP::ParagraphStyleChangePropertyCommand_GArchive *sub_276F2B774(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276F2EE04(a1, 1);
  TSWP::ParagraphStyleChangePropertyCommand_GArchive::ParagraphStyleChangePropertyCommand_GArchive(v2, a1);
  return v2;
}

void sub_276F2BC64(void *a1)
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
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276F2BCE8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276F2BD98(v13, v15);
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
      v22 = MEMORY[0x277CA3200](v18);
      result = sub_276F2BD98(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276F2BDA8(void *a1)
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
          TSWP::ObjectPropertyArchive::~ObjectPropertyArchive(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276F2BE2C(uint64_t result, TSWP::ObjectPropertyArchive **a2, TSWP::ObjectPropertyArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276F2BEDC(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ObjectPropertyArchive>(v18);
      result = sub_276F2BEDC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276F2BEEC(void *a1)
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
          v5 = MEMORY[0x277CA2B90]();
          MEMORY[0x277CA3D00](v5, 0x10A1C40290C9B23);
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

uint64_t sub_276F2BF70(uint64_t result, TSP::UUIDPath **a2, TSP::UUIDPath **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276F2C020(v13, v15);
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
      v22 = MEMORY[0x277CA3240](v18);
      result = sub_276F2C020(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276F2C030(void *a1)
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
          v5 = MEMORY[0x277CA2D50]();
          MEMORY[0x277CA3D00](v5, 0x10A1C40C05B56FCLL);
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

uint64_t sub_276F2C0B4(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276F2C164(v13, v15);
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
      v22 = MEMORY[0x277CA3290](v18);
      result = sub_276F2C164(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276F2C174(void *a1)
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
          v5 = MEMORY[0x277CA2D90]();
          MEMORY[0x277CA3D00](v5, 0x10A1C40C05B56FCLL);
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

uint64_t sub_276F2C1F8(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276F2C2A8(v13, v15);
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
      v22 = MEMORY[0x277CA32A0](v18);
      result = sub_276F2C2A8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276F2C2B8(void *a1)
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
          v5 = MEMORY[0x277CA2DD0]();
          MEMORY[0x277CA3D00](v5, 0x10A1C406130BDD3);
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

uint64_t sub_276F2C33C(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
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
      result = sub_276F2C3EC(v13, v15);
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
      v22 = MEMORY[0x277CA32B0](v18);
      result = sub_276F2C3EC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276F2C3FC(void *a1)
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
          TSWPSOS::CharacterStylePropertyChangeSetArchive::~CharacterStylePropertyChangeSetArchive(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276F2C480(uint64_t result, TSWPSOS::CharacterStylePropertyChangeSetArchive **a2, TSWPSOS::CharacterStylePropertyChangeSetArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276F2C530(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::CharacterStylePropertyChangeSetArchive>(v18);
      result = sub_276F2C530(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276F2C540(void *a1)
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
          TSWPSOS::ParagraphStylePropertyChangeSetArchive::~ParagraphStylePropertyChangeSetArchive(*v3);
          MEMORY[0x277CA3D00]();
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

uint64_t sub_276F2C5C4(uint64_t result, TSWPSOS::ParagraphStylePropertyChangeSetArchive **a2, TSWPSOS::ParagraphStylePropertyChangeSetArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276F2C674(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSWPSOS::ParagraphStylePropertyChangeSetArchive>(v18);
      result = sub_276F2C674(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276F2C684(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F593C8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276F2C70C);
}

uint64_t sub_276F2C72C(uint64_t a1)
{
  v2 = sub_276F2C7AC(a1, 1);
  *v2 = &unk_288607480;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_TextCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2C7AC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F593F8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSWP::TextCommandArchive::~TextCommandArchive);
}

uint64_t sub_276F2C838(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59428(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, TSWP::StorageActionCommandArchive::~StorageActionCommandArchive);
}

void *sub_276F2C8C4(uint64_t a1)
{
  v2 = sub_276F2C93C(a1, 1);
  *v2 = &unk_2886075E0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SetColumnStyleCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276F2C93C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59464(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::SetColumnStyleCommandArchive::~SetColumnStyleCommandArchive);
}

void *sub_276F2C9C8(uint64_t a1)
{
  v2 = sub_276F2CA40(a1, 1);
  *v2 = &unk_288607690;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ReplaceAllUsesOfStyleCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276F2CA40(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59494(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ReplaceAllUsesOfStyleCommandArchive::~ReplaceAllUsesOfStyleCommandArchive);
}

uint64_t sub_276F2CACC(uint64_t a1)
{
  v2 = sub_276F2CB48(a1, 1);
  *v2 = &unk_288607740;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_InsertColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2CB48(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F594C4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::InsertColumnsCommandArchive::~InsertColumnsCommandArchive);
}

uint64_t sub_276F2CBD4(uint64_t a1)
{
  v2 = sub_276F2CC50(a1, 1);
  *v2 = &unk_2886077F0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_InsertRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2CC50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F594F4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::InsertRowsCommandArchive::~InsertRowsCommandArchive);
}

uint64_t sub_276F2CCDC(uint64_t a1)
{
  v2 = sub_276F2CD58(a1, 1);
  *v2 = &unk_2886078A0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_RemoveColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2CD58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59524(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::RemoveColumnsCommandArchive::~RemoveColumnsCommandArchive);
}

uint64_t sub_276F2CDE4(uint64_t a1)
{
  v2 = sub_276F2CE60(a1, 1);
  *v2 = &unk_288607950;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_RemoveRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2CE60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59554(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::RemoveRowsCommandArchive::~RemoveRowsCommandArchive);
}

uint64_t sub_276F2CEEC(uint64_t a1)
{
  v2 = sub_276F2CF6C(a1, 1);
  *v2 = &unk_288607A00;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_MergeCellsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2CF6C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59584(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::MergeCellsCommandArchive::~MergeCellsCommandArchive);
}

uint64_t sub_276F2CFF8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F595B4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::ApplyPlaceholderTextCommandArchive::~ApplyPlaceholderTextCommandArchive);
}

uint64_t sub_276F2D084(uint64_t a1)
{
  v2 = sub_276F2D100(a1, 1);
  *v2 = &unk_288607B60;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_UpdateDateTimeFieldCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2D100(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F595E4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::UpdateDateTimeFieldCommandArchive::~UpdateDateTimeFieldCommandArchive);
}

uint64_t sub_276F2D18C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59614(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::ApplyRubyTextCommandArchive::~ApplyRubyTextCommandArchive);
}

uint64_t sub_276F2D218(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59644(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::ModifyRubyTextCommandArchive::~ModifyRubyTextCommandArchive);
}

void *sub_276F2D2A4(uint64_t a1)
{
  v2 = sub_276F2D31C(a1, 1);
  *v2 = &unk_288607D70;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsBaseCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276F2D31C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59674(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ModifyTOCSettingsBaseCommandArchive::~ModifyTOCSettingsBaseCommandArchive);
}

void *sub_276F2D3A8(uint64_t a1)
{
  v2 = sub_276F2D41C(a1, 1);
  *v2 = &unk_288607E20;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsForTOCInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276F2D41C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F596A4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::ModifyTOCSettingsForTOCInfoCommandArchive::~ModifyTOCSettingsForTOCInfoCommandArchive);
}

uint64_t sub_276F2D4A8(uint64_t a1)
{
  v2 = sub_276F2D520(a1, 1);
  *v2 = &unk_288607ED0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ModifyTOCSettingsPresetForThemeCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276F2D520(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F596D4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ModifyTOCSettingsPresetForThemeCommandArchive::~ModifyTOCSettingsPresetForThemeCommandArchive);
}

uint64_t sub_276F2D5AC(uint64_t a1)
{
  v2 = sub_276F2D630(a1, 1);
  *v2 = &unk_288607F80;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_AnchorAttachmentCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2D630(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59704(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSWP::AnchorAttachmentCommandArchive::~AnchorAttachmentCommandArchive);
}

void *sub_276F2D6BC(uint64_t a1)
{
  v2 = sub_276F2D734(a1, 1);
  *v2 = &unk_288608030;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_TextApplyThemeCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276F2D734(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59740(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::TextApplyThemeCommandArchive::~TextApplyThemeCommandArchive);
}

uint64_t sub_276F2D7C0(uint64_t a1)
{
  v2 = sub_276F2D840(a1, 1);
  *v2 = &unk_2886080E0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_MoveColumnsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2D840(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59770(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::MoveColumnsCommandArchive::~MoveColumnsCommandArchive);
}

uint64_t sub_276F2D8CC(uint64_t a1)
{
  v2 = sub_276F2D94C(a1, 1);
  *v2 = &unk_288608190;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_MoveRowsCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2D94C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F597A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::MoveRowsCommandArchive::~MoveRowsCommandArchive);
}

void *sub_276F2D9D8(uint64_t a1)
{
  v2 = sub_276F2DA4C(a1, 1);
  *v2 = &unk_288608240;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ShapeApplyPresetCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276F2DA4C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F597D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::ShapeApplyPresetCommandArchive::~ShapeApplyPresetCommandArchive);
}

void *sub_276F2DAD8(uint64_t a1)
{
  v2 = sub_276F2DB50(a1, 1);
  *v2 = &unk_2886082F0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_StyleBaseCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276F2DB50(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59800(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::StyleBaseCommandArchive::~StyleBaseCommandArchive);
}

uint64_t sub_276F2DBDC(uint64_t a1)
{
  v2 = sub_276F2DC54(a1, 1);
  *v2 = &unk_2886083A0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_StyleCreateCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276F2DC54(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59830(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::StyleCreateCommandArchive::~StyleCreateCommandArchive);
}

uint64_t sub_276F2DCE0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59860(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::StyleRenameCommandArchive::~StyleRenameCommandArchive);
}

void *sub_276F2DD6C(uint64_t a1)
{
  v2 = sub_276F2DDE4(a1, 1);
  *v2 = &unk_288608500;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_StyleUpdateCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276F2DDE4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59890(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::StyleUpdateCommandArchive::~StyleUpdateCommandArchive);
}

uint64_t sub_276F2DE70(uint64_t a1)
{
  v2 = sub_276F2DEE8(a1, 1);
  *v2 = &unk_2886085B0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_StyleDeleteCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_276F2DEE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F598C0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::StyleDeleteCommandArchive::~StyleDeleteCommandArchive);
}

void *sub_276F2DF74(uint64_t a1)
{
  v2 = sub_276F2DFE8(a1, 1);
  *v2 = &unk_288608660;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_StyleReorderCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276F2DFE8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F598F0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::StyleReorderCommandArchive::~StyleReorderCommandArchive);
}

void *sub_276F2E074(uint64_t a1)
{
  v2 = sub_276F2E0E8(a1, 1);
  *v2 = &unk_288608710;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_StyleUpdatePropertyMapCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276F2E0E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59920(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWP::StyleUpdatePropertyMapCommandArchive::~StyleUpdatePropertyMapCommandArchive);
}

void *sub_276F2E174(uint64_t a1)
{
  v2 = sub_276F2E1E8(a1, 1);
  *v2 = &unk_2886087C0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ShapeStyleSetValueCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276F2E1E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59950(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::ShapeStyleSetValueCommandArchive::~ShapeStyleSetValueCommandArchive);
}

uint64_t sub_276F2E274(uint64_t a1)
{
  v2 = sub_276F2E2EC(a1, 1);
  *v2 = &unk_288608870;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SelectionTransformerArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276F2E2EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59980(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::SelectionTransformerArchive::~SelectionTransformerArchive);
}

uint64_t sub_276F2E378(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F599B0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::PencilAnnotationSelectionTransformerArchive::~PencilAnnotationSelectionTransformerArchive);
}

void *sub_276F2E404(uint64_t a1)
{
  v2 = sub_276F2E478(a1, 1);
  *v2 = &unk_2886089D0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ShapeSelectionTransformerArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276F2E478(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F599E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::ShapeSelectionTransformerArchive::~ShapeSelectionTransformerArchive);
}

void *sub_276F2E504(uint64_t a1)
{
  v2 = sub_276F2E578(a1, 1);
  *v2 = &unk_288608A80;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ShapeContentDescription_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276F2E578(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59A10(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSWP::ShapeContentDescription::~ShapeContentDescription);
}

uint64_t sub_276F2E604(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59A40(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSWP::ObjectPropertyArchive::~ObjectPropertyArchive);
}

uint64_t sub_276F2E690(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59A70(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSWP::SetObjectPropertiesCommandArchive::~SetObjectPropertiesCommandArchive);
}

uint64_t sub_276F2E71C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59AA0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 144, TSWP::UpdateFlowInfoCommandArchive::~UpdateFlowInfoCommandArchive);
}

uint64_t sub_276F2E7A8(uint64_t a1)
{
  v2 = sub_276F2E828(a1, 1);
  *v2 = &unk_288608D40;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_AddFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2E828(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59ADC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSWP::AddFlowInfoCommandArchive::~AddFlowInfoCommandArchive);
}

uint64_t sub_276F2E8B4(uint64_t a1)
{
  v2 = sub_276F2E930(a1, 1);
  *v2 = &unk_288608DF0;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_RemoveFlowInfoCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276F2E930(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59B0C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSWP::RemoveFlowInfoCommandArchive::~RemoveFlowInfoCommandArchive);
}

uint64_t sub_276F2E9BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59B3C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSWP::TextCommentReplyCommandArchive::~TextCommentReplyCommandArchive);
}

uint64_t sub_276F2EA48(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59B6C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ContainedObjectsCommandArchive_AddBehaviorArgs::~ContainedObjectsCommandArchive_AddBehaviorArgs);
}

uint64_t sub_276F2EAD4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59B9C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ContainedObjectsCommandArchive_RemoveBehaviorArgs::~ContainedObjectsCommandArchive_RemoveBehaviorArgs);
}

uint64_t sub_276F2EB60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59BCC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSWP::ContainedObjectsCommandArchive_RearrangeBehaviorArgs::~ContainedObjectsCommandArchive_RearrangeBehaviorArgs);
}

uint64_t sub_276F2EBEC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59BFC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSWP::ContainedObjectsCommandArchive::~ContainedObjectsCommandArchive);
}

void *sub_276F2EC78(uint64_t a1)
{
  v2 = sub_276F2ECEC(a1, 1);
  *v2 = &unk_288609210;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_EquationInfoGeometryCommandArchive_TSWPCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276F2ECEC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59C2C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSWP::EquationInfoGeometryCommandArchive::~EquationInfoGeometryCommandArchive);
}

uint64_t sub_276F2ED78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59C5C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSWP::CharacterStyleChangePropertyCommand_GArchive::~CharacterStyleChangePropertyCommand_GArchive);
}

uint64_t sub_276F2EE04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276F59C8C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA3350);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSWP::ParagraphStyleChangePropertyCommand_GArchive::~ParagraphStyleChangePropertyCommand_GArchive);
}

id sub_276F2EEAC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_layoutController(a1, a2, a3);
  v7 = objc_msgSend_canvas(v4, v5, v6);
  shouldClampGroupsToParentsByScaling = objc_msgSend_shouldClampGroupsToParentsByScaling(v7, v8, v9);

  if (shouldClampGroupsToParentsByScaling)
  {
    v13 = 0;
  }

  else
  {
    v14 = objc_msgSend_parent(a1, v11, v12);
    do
    {
      v23 = &unk_288638918;
      v15 = TSUProtocolCast();
      v18 = v15;
      if (v15 && (objc_msgSend_wantsToProvideStylesForTextLayout_(v15, v16, 0, &unk_288638918) & 1) == 0)
      {

        v18 = 0;
      }

      v19 = objc_msgSend_parent(v14, v16, v17, v23);

      if (v18)
      {
        break;
      }

      v14 = v19;
    }

    while (v19);
    if (v18)
    {
      v13 = objc_msgSend_styleProvider(v18, v20, v21);
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

id sub_276F2EFB4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_layoutController(a1, v5, v6);
  v10 = objc_msgSend_canvas(v7, v8, v9);
  if (objc_msgSend_shouldClampGroupsToParentsByScaling(v10, v11, v12))
  {
    shouldProvideStylesForLayout = objc_msgSend_tswp_shouldProvideStylesForLayout_(a1, v13, v4);

    if (shouldProvideStylesForLayout)
    {
      v17 = 0;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v18 = objc_msgSend_parent(a1, v15, v16);
  do
  {
    v26 = &unk_288638918;
    v19 = TSUProtocolCast();
    v22 = v19;
    if (v19 && (objc_msgSend_wantsToProvideStylesForTextLayout_(v19, v20, 0, &unk_288638918) & 1) == 0)
    {

      v22 = 0;
    }

    v23 = objc_msgSend_parent(v18, v20, v21, v26);

    if (v22)
    {
      break;
    }

    v18 = v23;
  }

  while (v23);
  if (v22)
  {
    v17 = objc_msgSend_styleProviderForTextLayout_(v22, v24, v4);
  }

  else
  {
    v17 = 0;
  }

LABEL_15:

  return v17;
}

uint64_t sub_276F2F0F0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_layoutController(a1, v5, v6);
  v10 = objc_msgSend_canvas(v7, v8, v9);
  if (objc_msgSend_shouldClampGroupsToParentsByScaling(v10, v11, v12))
  {
    shouldProvideStylesForLayout = objc_msgSend_tswp_shouldProvideStylesForLayout_(a1, v13, v4);
  }

  else
  {
    shouldProvideStylesForLayout = 0;
  }

  return shouldProvideStylesForLayout;
}

uint64_t sub_276F2F16C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_parent(v4, v5, v6);

  v9 = 1;
  if (v4 && v7)
  {
    v9 = objc_msgSend_protected_isNonGroupedDescendant_(a1, v8, v4) ^ 1;
  }

  return v9;
}

uint64_t sub_276F2F1D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  *a1 = &unk_288609888;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  sub_276E3E8D0(a1 + 24, 0);
  *(a1 + 424) = v7;
  *(a1 + 432) = a1;
  *(a1 + 440) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 448) = 0;
  *(a1 + 472) = 0;
  return a1;
}

uint64_t sub_276F2F25C(uint64_t a1)
{
  *a1 = &unk_288609888;
  v2 = *(a1 + 424);
  *(a1 + 424) = 0;

  sub_276F38B0C(a1 + 432);
  sub_276E3EAC4(a1 + 24);
  return a1;
}

void sub_276F2F2C4(uint64_t a1)
{
  sub_276F2F25C(a1);

  JUMPOUT(0x277CA3D00);
}

void sub_276F2F2FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = a1 + 24;
  if (!v2)
  {
    v2 = a1 + 24;
  }

  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_276E410C4(&v10, *(v2 + 336), *(v2 + 344), 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 344) - *(v2 + 336)) >> 4));
  sub_276F3CCD8(a1 + 432, &v10);
  v4 = v10;
  v5 = v11;
  while (v4 != v5)
  {
    v6 = *(a1 + 16);
    if (!v6)
    {
      v6 = v3;
    }

    sub_276EE3F9C((v6 + 360), v4);
    v4 += 48;
  }

  if (*(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = v3;
  }

  v9 = *(v7 + 336);
    ;
  }

  *(v7 + 344) = v9;
  v13 = &v10;
  sub_276E40F9C(&v13);
}

void sub_276F2F3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_276E40F9C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_276F2F3F4(uint64_t a1)
{
  *(a1 + 473) = 1;
  v2 = sub_276F38030((a1 + 432));
  *(a1 + 473) = 0;
  if (*(a1 + 16))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = a1 + 24;
  }

  sub_276E3EBC0(v3);
  sub_276F2F2FC(a1);
  if (*(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = a1 + 24;
  }

  sub_276E3EBD0(v4, a1, 1);
  return v2;
}

void sub_276F2F46C(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v2 = a1 + 24;
  }

  v3 = *(v2 + 64);
  if (v3 < 2)
  {
    if (v3 || (*(a1 + 440) & 1) != 0 || (*(v2 + 216) & 0x22) != 0)
    {
      return;
    }

    v13 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionState::validate()");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v16, v24, v15, 95, 0, "No undo/redo action group group has been set up.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    v23 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v19, @"TSWPStorageActionState", @"No undo/redo action group group has been set up.", 0);
    objc_msgSend_raise(v23, v20, v21);
  }

  else
  {
    v4 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionState::validate()");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v7, v22, v6, 85, 0, "An undo/redo action group has been nested within another group. Nesting is not supported.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
    v23 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], v10, @"TSWPStorageActionState", @"An undo/redo action group has been nested within another group. Nesting is not supported.", 0);
    objc_msgSend_raise(v23, v11, v12);
  }
}

void sub_276F2F660(uint64_t a1, int a2, const char *a3, unint64_t a4, uint64_t a5, unint64_t *a6, uint64_t a7)
{
  ++*(a1 + 448);
  if (*(a1 + 16))
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = a1 + 24;
  }

  sub_276E4069C(v7, a2, a3, a4, a5, a6, a7);
}

void sub_276F2F680(uint64_t a1, int a2, void *a3, unint64_t a4, unint64_t a5)
{
  ++*(a1 + 448);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = a1 + 24;
  }

  sub_276E406C8(v5, a2, a3, a4, a5);
}

void sub_276F2F6A0(uint64_t a1, unsigned __int16 a2, const char *a3, unint64_t a4, void *a5)
{
  ++*(a1 + 448);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = a1 + 24;
  }

  sub_276E40758(v5, a2, a3, a4, a5);
}

uint64_t *sub_276F2F6C0(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 456);
  if (result || (v7 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionState::appendInverseAction(const TSWPStorageAction &, BOOL)"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionState.mm"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 129, 0, "appendInverseAction: Expected valid inverse actions pointer."), v10, v8, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13), (result = *(a1 + 456)) != 0))
  {
    if (a3)
    {
      v14 = result[1];
      if (v14 != *result && !*(a2 + 8) && !*(v14 - 40))
      {
        v15 = *(v14 - 24);
        if (v15)
        {
          if (*(a2 + 24) && *(v14 - 32) + v15 == *(a2 + 16))
          {
            v16 = sub_276F40884(v14 - 48);
            v17 = sub_276F40884(a2);
            IsEquivalentToObject = TSWPAttributeArray::objectIsEquivalentToObject(0, v16, v17);

            if (IsEquivalentToObject)
            {
              v19 = NSUnionRange(*(v14 - 32), *(a2 + 16));
              sub_276F40798(v20, v14 - 48, v19.location, v19.length);
              sub_276F4136C(*(*(a1 + 456) + 8) - 48, v20);
              return sub_276F40794(v20);
            }

            result = *(a1 + 456);
          }
        }
      }
    }

    return sub_276EE3F9C(result, a2);
  }

  return result;
}

uint64_t sub_276F2F8B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = *(a1 + 456);
  if (v5 || (v7 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionState::assignInverseAction(const TSWPStorageAction &, NSUInteger)"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionState.mm"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 154, 0, "assignInverseAction: Expected valid inverse actions pointer."), v10, v8, result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13), (v5 = *(a1 + 456)) != 0))
  {
    v15 = *v5 + 48 * a3;

    return sub_276F4136C(v15, a2);
  }

  return result;
}

NSUInteger sub_276F2F9C4(int a1, uint64_t a2, _NSRange a3, TSWPParagraphAttributeArray *this)
{
  length = a3.length;
  location = a3.location;
  if (a3.location >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSRange TSWPStorageActionState::calculateParIndexRange(const TSWPStorageAction &, NSRange, const TSWPParagraphAttributeArray *) const");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 162, 0, "Bad range location %lx", location);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
  }

  if (length >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSRange TSWPStorageActionState::calculateParIndexRange(const TSWPStorageAction &, NSRange, const TSWPParagraphAttributeArray *) const");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionState.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 163, 0, "Bad range length %lx", length);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v22 = MEMORY[0x277D81490];
  if (this)
  {
    if ((*(a2 + 5) & 8) != 0)
    {
      v27 = (*(this->var0 + 13))(this);
      v41.location = length;
      v41.length = this;
      v23 = TSWPAttributeArray::calculateParIndexRangeFromCharRangeAndBreakingTable(location, v41, v27);
    }

    else
    {
      v40.location = location;
      v40.length = length;
      v23 = TSWPParagraphAttributeArray::paragraphRangeForCharRange(this, v40);
    }

    v25 = v23;
    v26 = v24;
    if (v23 > 0x7FFFFFFFFFFFFFFELL || &v24[v23] >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = MEMORY[0x277D81150];
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "NSRange TSWPStorageActionState::calculateParIndexRange(const TSWPStorageAction &, NSRange, const TSWPParagraphAttributeArray *) const");
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionState.mm");
      v39.location = v25;
      v39.length = v26;
      v33 = NSStringFromRange(v39);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v32, 174, 0, "Bad parIndexRange: %{public}@", v33);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
    }
  }

  else
  {
    v25 = *MEMORY[0x277D81490];
    v26 = *(MEMORY[0x277D81490] + 8);
  }

  v37 = v25 == *v22 && v26 == v22[1];
  if (v37 && *MEMORY[0x277D81500] != -1)
  {
    sub_276F59CBC();
  }

  return v25;
}

void sub_276F2FC94()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276F300B0(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276D128DC();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_276F301A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276F309C8()
{
  v0 = objc_alloc_init(TSWPFallbackFontList);
  v1 = qword_280A59228;
  qword_280A59228 = v0;
}

void sub_276F31734(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = MEMORY[0x277CBEB18];
    v7 = a2;
    v8 = [v6 alloc];
    v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, a4);
    v13 = objc_msgSend_initWithObjects_(v8, v11, v7, v10, 0);

    objc_msgSend_addObject_(*(a1 + 32), v12, v13);
  }
}

uint64_t sub_276F317E0(void *a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_objectAtIndexedSubscript_(a1, v4, 1);
  v8 = objc_msgSend_unsignedIntegerValue(v5, v6, v7);

  v10 = objc_msgSend_objectAtIndexedSubscript_(v3, v9, 1);

  v13 = objc_msgSend_unsignedIntegerValue(v10, v11, v12);
  if (v8 < v13)
  {
    return -1;
  }

  else
  {
    return v8 > v13;
  }
}

void sub_276F31920(uint64_t a1, void *a2)
{
  v3 = a2;
  *(a1 + 24) = 0;
  *(a1 + 8) = *a1;
  theString = v3;
  v6 = objc_msgSend_length(v3, v4, v5);
  v8 = v6;
  if (!v6)
  {
    goto LABEL_34;
  }

  if (v6 == 1)
  {
    v9 = objc_msgSend_characterAtIndex_(theString, v7, 0);
    v10 = v9;
    switch(v9)
    {
      case 4:
        *(a1 + 26) = 257;
        *&v19 = 0;
        WORD4(v19) = 4;
        sub_276F31B94(a1, &v19);
        break;
      case 0xE:
        *(a1 + 25) = 1;
        *&v19 = 0;
        WORD4(v19) = 14;
        sub_276F31B94(a1, &v19);
        break;
      case 0xFFFC:
        *(a1 + 24) = 1;
        *&v19 = 0;
        WORD4(v19) = -4;
        sub_276F31B94(a1, &v19);
        break;
      default:
        if (IsParagraphBreakingCharacter(v9))
        {
          *(a1 + 26) = 1;
          *&v19 = 0;
          WORD4(v19) = v10;
          sub_276F31B94(a1, &v19);
        }

        break;
    }

    goto LABEL_34;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    if (!v12)
    {
      v12 = malloc_type_malloc(0x800uLL, 0x1000040BDFB0063uLL);
    }

    v13 = v11 + 1024;
    if (v8 >= v11 + 1024)
    {
      v14 = v11 + 1024;
    }

    else
    {
      v14 = v8;
    }

    v20.location = v11;
    v20.length = v14 - v11;
    CFStringGetCharacters(theString, v20, v12);
    v15 = v12;
    if (v14 - v11 >= 1)
    {
      while (1)
      {
        v16 = IsParagraphBreakingCharacter(*v15);
        v17 = *v15;
        if (v16)
        {
          break;
        }

        if (v17 == 14)
        {
          goto LABEL_23;
        }

        if (v17 == 65532)
        {
          goto LABEL_22;
        }

LABEL_26:
        ++v11;
        ++v15;
        if (v14 == v11)
        {
          goto LABEL_27;
        }
      }

      switch(v17)
      {
        case 4:
          *(a1 + 26) = 257;
          break;
        case 0xE:
LABEL_23:
          *(a1 + 25) = 1;
          break;
        case 0xFFFC:
LABEL_22:
          *(a1 + 24) = 1;
          break;
        default:
          if (IsParagraphBreakingCharacter(v17))
          {
            *(a1 + 26) = 1;
          }

          break;
      }

      *&v19 = v11;
      WORD4(v19) = *v15;
      sub_276F31B94(a1, &v19);
      goto LABEL_26;
    }

LABEL_27:
    v11 = v14;
  }

  while (v13 < v8);
  if (v12)
  {
    free(v12);
  }

LABEL_34:
}

void sub_276F31B94(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_276D34ED8();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_276E40B30(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

id sub_276F31C6C(uint64_t *a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if ((*(a1 + 25) & 1) != 0 || (a1[3] & 1) != 0 || *(a1 + 27) == 1)
  {
    v7 = objc_msgSend_length(v3, v4, v5);
    v8 = objc_alloc(MEMORY[0x277CCAB68]);
    v10 = objc_msgSend_initWithString_(v8, v9, v6);
    if (*(a1 + 25) == 1)
    {
      v46 = 14;
      v11 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = objc_msgSend_initWithCharacters_length_(v11, v12, &v46, 1);
      v46 = 32;
      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = objc_msgSend_initWithCharacters_length_(v14, v15, &v46, 1);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v10, v17, v13, v16, 0, 0, v7);
    }

    if (*(a1 + 24) == 1)
    {
      v45 = -4;
      v18 = objc_alloc(MEMORY[0x277CCACA8]);
      v20 = objc_msgSend_initWithCharacters_length_(v18, v19, &v45, 1);
      v45 = 32;
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      v23 = objc_msgSend_initWithCharacters_length_(v21, v22, &v45, 1);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v10, v24, v20, v23, 0, 0, v7);
    }

    if (*(a1 + 27) == 1)
    {
      v44 = 4;
      v25 = objc_alloc(MEMORY[0x277CCACA8]);
      v27 = objc_msgSend_initWithCharacters_length_(v25, v26, &v44, 1);
      v44 = 10;
      v28 = objc_alloc(MEMORY[0x277CCACA8]);
      v30 = objc_msgSend_initWithCharacters_length_(v28, v29, &v44, 1);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v10, v31, v27, v30, 0, 0, v7);
    }

    v32 = v10;

    v33 = *a1;
    v34 = a1[1];
    v35 = (v34 - *a1) >> 4;
    if (v35 >= 1)
    {
      do
      {
        v36 = v33 + 16 * (v35 - 1);
        v37 = *(v36 + 8);
        if (v37 == 4)
        {
          *(v36 + 8) = 10;
        }

        else if (v37 == 65532 || v37 == 14)
        {
          if (v36 + 16 == v34)
          {
            v39 = v33 + 16 * (v35 - 1);
          }

          else
          {
            v39 = v33 + 16 * (v35 - 1);
            do
            {
              v40 = *(v39 + 16);
              v39 += 16;
              *v36 = v40;
              *(v36 + 8) = *(v36 + 24);
              v41 = v36 + 32;
              v36 = v39;
            }

            while (v41 != v34);
          }

          a1[1] = v39;
          v34 = v39;
        }
      }

      while (v35-- > 1);
    }

    *(a1 + 12) = 0;
    *(a1 + 27) = 0;
  }

  else
  {
    v32 = v3;
  }

  return v32;
}

uint64_t sub_276F31F60(uint64_t a1)
{
  if (*(a1 + 26) != 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v2 = *(a1 + 8);
  while (v2 != *a1)
  {
    v3 = v2 - 16;
    v4 = IsParagraphBreakingCharacter(*(v2 - 8));
    v2 = v3;
    if (v4)
    {
      return *v3;
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

unint64_t *operator++(unint64_t *a1, const char *a2)
{
  v3 = *a1 + 1;
  if (v3 >= 4)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPHeaderFragment &operator++(TSWPHeaderFragment &)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPHeaderFooterProvider.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 32, 0, "Invalid enum value %d", *a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    v3 = 3;
  }

  *a1 = v3;
  return a1;
}

{
  v3 = *a1 + 1;
  if (v3 >= 3)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPHeaderFooterType &operator++(TSWPHeaderFooterType &)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPHeaderFooterProvider.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 59, 0, "Invalid enum value %d", *a1);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    v3 = 2;
  }

  *a1 = v3;
  return a1;
}

uint64_t sub_276F32CA8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = sub_276F2F1D0(a1, a3, a4, a5);
  *v7 = &unk_288609920;
  *(v7 + 476) = a2;
  *(v7 + 480) = 0;
  *(v7 + 488) = 0;
  sub_276F32D20(v7, v8);
  return a1;
}

uint64_t sub_276F32D20(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 16);
  v4 = a1 + 24;
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = a1 + 24;
  }

  if (*(v5 + 64))
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPStorageActionBuilderCore::openActionGroupWithKind(TSWPStorageGroupActionKind)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilderCore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 208, 0, "TSWPStorageActionBuilderCore: group already opened.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
    v3 = *(a1 + 16);
  }

  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v13 = v4;
  }

  v14 = *(a1 + 476);

  return sub_276E3FB24(v13, v14);
}

uint64_t sub_276F32E10(void *a1)
{
  *a1 = &unk_288609920;
  if (a1[2])
  {
    v2 = a1[2];
  }

  else
  {
    v2 = (a1 + 3);
  }

  sub_276E3FD04(v2, 0);

  return sub_276F2F25C(a1);
}

uint64_t sub_276F32E84(uint64_t a1)
{
  v2 = (a1 + 24);
  if (*(a1 + 16))
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = a1 + 24;
  }

  sub_276E3FD04(v3, 0);
  if (*(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = v2;
  }

  v5 = sub_276E3EAC8(v4);
  if (objc_msgSend_shouldMigrateStyles(v5, v6, v7))
  {
    v10 = *(a1 + 16);
    v11 = objc_msgSend_documentRoot(*(a1 + 8), v8, v9);
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v2;
    }

    sub_276E3EAF4(v12, v11);
  }

  v13 = sub_276F2F3F4(a1);
  if (*(a1 + 16))
  {
    v14 = *(a1 + 16);
  }

  else
  {
    v14 = v2;
  }

  sub_276E3FB24(v14, *(a1 + 476));

  return v13;
}

NSUInteger sub_276F32F58(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D81490];
  location = *MEMORY[0x277D81490];
  length = *(MEMORY[0x277D81490] + 8);
  if ((*(a2 + 216) & 0x20) != 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual NSRange TSWPStorageActionBuilderCore::runForwardActions(TSWPStorageTransaction &)");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilderCore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 70, 0, "Should not be non-undable");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  if (*(a2 + 64))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual NSRange TSWPStorageActionBuilderCore::runForwardActions(TSWPStorageTransaction &)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilderCore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 71, 0, "Should have no open groups");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
  }

  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = *(a1 + 16);
  }

  else
  {
    v22 = a1 + 24;
  }

  if (*(v22 + 64) != 1)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual NSRange TSWPStorageActionBuilderCore::runForwardActions(TSWPStorageTransaction &)");
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilderCore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 73, 0, "unexpected open action groups");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
    v21 = *(a1 + 16);
  }

  if (v21)
  {
    v30 = v21;
  }

  else
  {
    v30 = a1 + 24;
  }

  if (*(v30 + 136) != *(v30 + 128))
  {
    v31 = MEMORY[0x277D81150];
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual NSRange TSWPStorageActionBuilderCore::runForwardActions(TSWPStorageTransaction &)");
    v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilderCore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 74, 0, "should not have any open actions");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    v21 = *(a1 + 16);
  }

  if (v21)
  {
    v38 = v21;
  }

  else
  {
    v38 = a1 + 24;
  }

  v67 = sub_276E3EAC8(v38);
  if (objc_msgSend_shouldMigrateStyles(v67, v39, v40))
  {
    v43 = objc_msgSend_documentRoot(*(a1 + 8), v41, v42);
    sub_276E3EAF4(a2, v43);
  }

  v45 = *(a2 + 24);
  v44 = *(a2 + 32);
  v68 = v44;
  while (v45 != v44)
  {
    v46 = *(a1 + 16);
    if (v46)
    {
      v47 = *(a1 + 16);
    }

    else
    {
      v47 = a1 + 24;
    }

    *(v47 + 72) = *v45;
    v48 = *(v45 + 8);
    v49 = *(v45 + 16);
    if (v48 != v49)
    {
      while (1)
      {
        if (*(a1 + 16))
        {
          v50 = *(a1 + 16);
        }

        else
        {
          v50 = a1 + 24;
        }

        sub_276E3EBC0(v50);
        sub_276EE3E28(v47 + 72, v48);
        v51.n128_f64[0] = sub_276EE3AA8(v69, *(v47 + 72));
        (*(*a1 + 32))(a1, v69, v48, *v48 == 1, v51);
        sub_276F381CC(a1 + 432, v69);
        if (*(a1 + 16))
        {
          v52 = *(a1 + 16);
        }

        else
        {
          v52 = a1 + 24;
        }

        v53.location = sub_276E3F8C4(v52);
        v54 = v4[1];
        if (location != *v4 || length != v54)
        {
          if (v53.location == *v4 && v53.length == v54)
          {
            goto LABEL_42;
          }

          v70.location = location;
          v70.length = length;
          v53 = NSUnionRange(v53, v70);
        }

        location = v53.location;
        length = v53.length;
LABEL_42:
        sub_276F33448((v47 + 72), v69);
        if (*(a1 + 16))
        {
          v57 = *(a1 + 16);
        }

        else
        {
          v57 = a1 + 24;
        }

        sub_276E3EBD0(v57, a1, 1);
        sub_276EE3B58(v69);
        v48 += 48;
        if (v48 == v49)
        {
          v46 = *(a1 + 16);
          break;
        }
      }
    }

    if (v46)
    {
      v58 = v46;
    }

    else
    {
      v58 = a1 + 24;
    }

    sub_276E3EBC0(v58);
    if (v47 + 104 != v45 + 32)
    {
      sub_276E40B78(v47 + 104, *(v45 + 32), *(v45 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v45 + 40) - *(v45 + 32)) >> 4));
    }

    if (*(a1 + 16))
    {
      v59 = *(a1 + 16);
    }

    else
    {
      v59 = a1 + 24;
    }

    sub_276E3FD04(v59, 1);
    if (*(a1 + 16))
    {
      v61 = *(a1 + 16);
    }

    else
    {
      v61 = a1 + 24;
    }

    v62 = *(v61 + 32);
    if (v62 != *(v61 + 24))
    {
      *(v62 - 40) = 1;
    }

    sub_276F32D20(a1, v60);
    if (*(a1 + 16))
    {
      v63 = *(a1 + 16);
    }

    else
    {
      v63 = a1 + 24;
    }

    sub_276E3EBD0(v63, a1, 1);
    v45 += 144;
    v44 = v68;
  }

  if (*(a1 + 16))
  {
    v64 = *(a1 + 16);
  }

  else
  {
    v64 = a1 + 24;
  }

  sub_276E3EBC0(v64);
  sub_276F2F2FC(a1);
  if (*(a1 + 16))
  {
    v65 = *(a1 + 16);
  }

  else
  {
    v65 = a1 + 24;
  }

  sub_276E3EBD0(v65, a1, 1);

  return location;
}

uint64_t sub_276F33448(uint64_t *a1, uint64_t *a2)
{
  sub_276F33F58(a1 + 7, a1[8], a2[7], a2[8], 0xAAAAAAAAAAAAAAABLL * ((a2[8] - a2[7]) >> 4));
  v4 = a1[11];
  v5 = a2[10];
  v6 = a2[11];

  return sub_276F33F58(a1 + 10, v4, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4));
}

void sub_276F334C0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v9 = a3;
  ++a1[61];
  v10 = a1[2];
  if (!v10)
  {
    v10 = a1 + 3;
  }

  if (v10[17] != v10[16])
  {
    sub_276F33734(a1, 0);
  }

  v11 = objc_msgSend_copy(v9, v7, v8);
  sub_276F3FEF8(v25, *a2, a2[1], v11, a4);
  v12 = a1[2];
  if (!v12)
  {
    v12 = a1 + 3;
  }

  v14 = v12[10];
  v13 = v12[11];
  (*(*a1 + 48))(a1, v12 + 9, v25, 0xFFFFFFFFLL);
  v15 = a1[2];
  if (!v15)
  {
    v15 = a1 + 3;
  }

  sub_276EE3E28((v15 + 9), v25);
  (*(*a1 + 56))(v24, a1, v25);
  if (*v24)
  {
    v16 = a1[2];
    if (!v16)
    {
      v16 = a1 + 3;
    }

    sub_276EE3E28((v16 + 9), v24);
  }

  v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 4);
  v18 = a1[2];
  if (v18)
  {
    v19 = a1[2];
  }

  else
  {
    v19 = a1 + 3;
  }

  v20 = 0xAAAAAAAAAAAAAAABLL * ((v19[11] - v19[10]) >> 4);
  v21 = v20 - v17;
  if (v20 > v17)
  {
    v22 = 48 * v17;
    do
    {
      v23 = a1[2];
      if (!v23)
      {
        v23 = a1 + 3;
      }

      (*(*a1 + 32))(a1, v23 + 9, v23[10] + v22, 1);
      v22 += 48;
      --v21;
    }

    while (v21);
    v18 = a1[2];
  }

  if (!v18)
  {
    v18 = a1 + 3;
  }

  if (v18[17] != v18[16])
  {
    sub_276F33734(a1, 0);
  }

  --a1[61];
  sub_276F40794(v24);
  sub_276F40794(v25);
}

void sub_276F336E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_276F40794(&a9);
  sub_276F40794(&a15);

  _Unwind_Resume(a1);
}

void sub_276F33734(uint64_t a1, const char *a2)
{
  v4 = a1 + 24;
  if (*(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = a1 + 24;
  }

  v10 = 0;
  v11 = 0;
  __p = 0;
  sub_276EE4508(&__p, *(v5 + 184), *(v5 + 192), (*(v5 + 192) - *(v5 + 184)) >> 4);
  v12 = *(v5 + 208);
  if (*(a1 + 16))
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = v4;
  }

  sub_276E3FD04(v6, a2);
  sub_276F32D20(a1, v7);
  if (*(a1 + 16))
  {
    v8 = *(a1 + 16);
  }

  else
  {
    v8 = v4;
  }

  if ((v8 + 184) != &__p)
  {
    sub_276E409B0((v8 + 184), __p, v10, (v10 - __p) >> 4);
  }

  *(v8 + 208) = v12;
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_276F337FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276F33818(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[2];
  if (!v5)
  {
    v5 = a1 + 3;
  }

  return (*(*a1 + 40))(a1, v5 + 9, a2, a3, 0, a4, a5, 0xFFFFFFFFLL);
}

void sub_276F33868(void *a1, unsigned int a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if ((a2 > 0x15 || ((1 << a2) & 0x23F0C8) == 0) && !TSWPAttributeArray::attributeKindIsOverlapping(a2))
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "void TSWPStorageActionBuilderCore::buildActionsForApplyObject(TSWPStyleAttributeArrayKind, const NSRange &, __strong id)");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilderCore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 189, 0, "applyObject:toCharRange: Bad attribute array.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  }

  if (a2 <= 0x15 && ((1 << a2) & 0x23F0C8) != 0 || TSWPAttributeArray::attributeKindIsOverlapping(a2))
  {
    IsOverlapping = TSWPAttributeArray::attributeKindIsOverlapping(a2);
    if (v7)
    {
      v9 = IsOverlapping;
    }

    else
    {
      v9 = 0;
    }

    v19 = 0;
    v10 = a1[2];
    if (!v10)
    {
      v10 = a1 + 3;
    }

    (*(*a1 + 40))(a1, v10 + 9, a2, a3, v7, &v19, v9, 0xFFFFFFFFLL);
  }
}

uint64_t sub_276F33A24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = 0;
  v6 = a1[2];
  if (!v6)
  {
    v6 = a1 + 3;
  }

  return (*(*a1 + 40))(a1, v6 + 9, a2, a3, a4, &v8, a5, a6);
}

id sub_276F33A94(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  if (TSWPAttributeArray::attributeKindUsesWPStyleDiff(*(a2 + 8)))
  {
    objc_opt_class();
    v8 = sub_276F40884(a2);
    v9 = TSUDynamicCast();

    if (!v9)
    {
      v11 = [TSWPStyleDiff alloc];
      v12 = sub_276F40884(a2);
      v9 = objc_msgSend_initWithContext_style_(v11, v13, 0, v12);
    }

    v14 = objc_msgSend_styleDiffForTable_storage_currentObject_(v9, v10, *(a2 + 8), *(a1 + 8), v7);
  }

  else
  {
    if (a4)
    {
      v15 = *(a2 + 32);
    }

    else
    {
      v15 = sub_276F40884(a2);
    }

    v14 = v15;
  }

  return v14;
}

uint64_t sub_276F33BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSWPStorageActionBuilderCore::isForwardActionFullContainedWithinParagraph(const TSWPStorageAction &, TSWPAttributeArray *)");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilderCore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 264, 0, "No attributeArray input.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    return 0;
  }

  if (!*(a3 + 24))
  {
    return 0;
  }

  v6 = *(a3 + 28);
  if (!TSWPAttributeArray::attributeKindIsBreaking(*(a3 + 28)) || v6 == 8)
  {
    return 0;
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, v8);
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "BOOL TSWPStorageActionBuilderCore::isForwardActionFullContainedWithinParagraph(const TSWPStorageAction &, TSWPAttributeArray *)");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionBuilderCore.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 272, 0, "Bad attribute index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    v19 = v8;
    v20 = v9;
  }

  else
  {
    v19 = TSWPAttributeArray::rangeForAttributeIndex(a3, v11);
    v20 = v29;
  }

  v30 = TSWPAttributeArray::supportsSingleSparseBreakingTableEntries(*(a3 + 28));
  v32 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), v31, 0);
  if (v30)
  {
    v33 = v32;
    if (v32)
    {
      v34 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v32, v8);
      v35 = TSWPAttributeArray::rangeForAttributeIndex(v33, v34);
      if (v9)
      {
        v37 = v35;
        v38 = v8 == v35 && v9 == v36;
        v39 = v38;
        if (!v38 && v34 + 1 != *(v33 + 6))
        {
          v40 = v9 + v8;
          if (v9 + v8 < v35 + v36)
          {
            return 1;
          }

          goto LABEL_39;
        }

        if (v39)
        {
          v40 = v9 + v8;
LABEL_39:
          v46 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, v40);
          return v19 == TSWPAttributeArray::rangeForAttributeIndex(a3, v46) && v20 == v47 && v19 < v37;
        }
      }

      return 1;
    }

    return 0;
  }

  v41 = v9 + v8;
  v42 = v19 + v20;
  v44 = v19 <= v8 && v42 >= v41;
  return (v11 + 1 == *(a3 + 24) || v41 != v42) && v44;
}

BOOL sub_276F33E7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_attributeArrayForKind_(*(a1 + 8), a2, 6);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = TSWPAttributeArray::exactAttributeIndexForCharIndex(v5, a2);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v7;
  if (TSWPAttributeArray::rangeForAttributeIndex(v6, v7) != a2 || &a2[v9] > &a2[a3])
  {
    return 0;
  }

  objc_opt_class();
  v12 = TSWPAttributeArray::objectForAttributeIndex(v6, v8);
  v13 = TSUDynamicCast();
  v10 = v13 != 0;

  return v10;
}

uint64_t sub_276F33F58(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 4)) >= a5)
      {
        v19 = 3 * a5;
        sub_276F34184(a1, a2, a1[1], a2 + 48 * a5);
        v20 = v7 + 16 * v19;
        v21 = v5;
        do
        {
          sub_276F4136C(v21, v7);
          v7 += 48;
          v21 += 48;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = v16 + a3;
        a1[1] = sub_276F34300(a1, v16 + a3, a4, a1[1]);
        if (v16 >= 1)
        {
          sub_276F34184(a1, v5, v10, v5 + 48 * a5);
          v18 = v5;
          do
          {
            sub_276F4136C(v18, v7);
            v7 += 48;
            v18 += 48;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 4);
      if (v12 > 0x555555555555555)
      {
        sub_276D34ED8();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 4);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x2AAAAAAAAAAAAAALL)
      {
        v15 = 0x555555555555555;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        sub_276DCFE34(a1, v15);
      }

      v22 = 16 * (v13 >> 4);
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = v22 + 48 * a5;
      v24 = 48 * a5;
      do
      {
        sub_276F406BC(v22, v7);
        v22 += 48;
        v7 += 48;
        v24 -= 48;
      }

      while (v24);
      v27 = v23;
      v5 = sub_276F34244(a1, v26, v5);
      sub_276DCFF30(v26);
    }
  }

  return v5;
}

uint64_t sub_276F34184(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = a2 + v7 - a4;
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = sub_276F406BC(v10, v8);
      v8 += 48;
      v10 += 48;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 48;
    v12 = a4 - v7;
    v13 = a2 + v7 - 48 - a4;
    do
    {
      result = sub_276F4136C(v11, v13);
      v11 -= 48;
      v13 -= 48;
      v12 += 48;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_276F34244(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_276DCFE8C(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_276DCFE8C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

uint64_t sub_276F34300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_276F406BC(a4, v6);
      v6 += 48;
      a4 += 48;
      v7 -= 48;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_276F34360(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 48;
    do
    {
      v4 = sub_276F40794(v4) - 48;
      v2 += 48;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_276F3448C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_276F344C4()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v1 = qword_280A59238;
  v14 = v0;
  qword_280A59238 = v0;

  v4 = objc_msgSend_controlCharacterSet(MEMORY[0x277CCA900], v2, v3);
  objc_msgSend_formUnionWithCharacterSet_(v14, v5, v4);

  objc_msgSend_removeCharactersInRange_(v14, v6, 8205, 1);
  v9 = objc_msgSend_illegalCharacterSet(MEMORY[0x277CCA900], v7, v8);
  objc_msgSend_formUnionWithCharacterSet_(v14, v10, v9);

  objc_msgSend_addCharactersInRange_(v14, v11, 65532, 1);
  objc_msgSend_addCharactersInRange_(v14, v12, 14, 1);
  objc_msgSend_addCharactersInRange_(v14, v13, 173, 1);
}

void sub_276F345A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_276F35008(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276D128DC();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_276F35100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_276F35510(uint64_t a1, uint64_t a2, void *a3, int *a4, int *a5, _BYTE *a6)
{
  v11 = a3;
  if ((byte_280A59250 & 1) == 0)
  {
    byte_280A59250 = 1;
    v12 = objc_msgSend_tsu_resourcesBundle(MEMORY[0x277CCA8D8], v9, v10);
    v14 = objc_msgSend_pathForResource_ofType_(v12, v13, @"ReplacementFontMap", @"plist");

    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x277CBEAC0]);
      v17 = objc_msgSend_initWithContentsOfFile_(v15, v16, v14);
      v18 = qword_280A59248;
      qword_280A59248 = v17;
    }
  }

  v19 = objc_msgSend_objectForKeyedSubscript_(qword_280A59248, v9, v11);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"font");
    v23 = objc_msgSend_objectForKeyedSubscript_(v19, v22, @"bold");
    v26 = v23;
    if (v23)
    {
      v27 = objc_msgSend_BOOLValue(v23, v24, v25);
    }

    else
    {
      v27 = -1;
    }

    *a4 = v27;
    v28 = objc_msgSend_objectForKeyedSubscript_(v19, v24, @"italic");

    if (v28)
    {
      v31 = objc_msgSend_BOOLValue(v28, v29, v30);
    }

    else
    {
      v31 = -1;
    }

    *a5 = v31;
    v32 = objc_msgSend_objectForKeyedSubscript_(v19, v29, @"quiet");

    if (v32)
    {
      *a6 = objc_msgSend_BOOLValue(v32, v33, v34);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v19;
      *a5 = -1;
      *a4 = -1;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

const __CTFont *sub_276F356FC(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = TSWPCreateFontWithName(v5, a1);
  v7 = v6;
  if (v6)
  {
    v9 = CTFontCopyPostScriptName(v6);
    if (v9 && (objc_msgSend_isEqualToString_(v5, v8, v9) & 1) == 0)
    {
      v11 = CTFontCopyFamilyName(v7);
      if (v11 && (objc_msgSend_isEqualToString_(v5, v10, v11) & 1) == 0)
      {
        v13 = qword_280A59258;
        if (!qword_280A59258)
        {
          qword_280A59258 = @"Helvetica";

          v13 = @"Helvetica";
        }

        if (objc_msgSend_isEqualToString_(v13, v12, v9))
        {
          objc_msgSend_rangeOfString_options_(v5, v14, qword_280A59258, 1);
          if (!v15)
          {
            CFRelease(v7);
            v7 = 0;
          }
        }
      }
    }
  }

  return v7;
}

BOOL sub_276F357E8(void *a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_mutableCopy(a1, v4, v5);
  v9 = objc_msgSend_mutableCopy(v3, v7, v8);

  v12 = objc_msgSend_length(v6, v10, v11);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v6, v13, @" ", &stru_28860A0F0, 3, 0, v12);
  v16 = objc_msgSend_length(v6, v14, v15);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v6, v17, @"-", &stru_28860A0F0, 3, 0, v16);
  v20 = objc_msgSend_length(v9, v18, v19);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v9, v21, @" ", &stru_28860A0F0, 3, 0, v20);
  v24 = objc_msgSend_length(v9, v22, v23);
  objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v9, v25, @"-", &stru_28860A0F0, 3, 0, v24);
  v27 = objc_msgSend_compare_options_(v6, v26, v9, 3) == 0;

  return v27;
}

id sub_276F35908(void *a1, CGFloat a2, uint64_t a3, void *a4, _BOOL4 a5, unsigned int a6, void *a7, void *a8, BOOL *a9, BOOL *a10)
{
  v17 = a10;
  v119 = *MEMORY[0x277D85DE8];
  v18 = a4;
  v19 = a7;
  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = a5;
  }

  if (a10)
  {
    *a10 = a6;
  }

  v21 = v18;
  if (!v21)
  {
    v38 = 0;
    goto LABEL_74;
  }

  v24 = objc_msgSend_objectForKeyedSubscript_(v19, v20, v21);
  if (!v24)
  {
    v104 = a1;
    v105 = a9;
    v24 = objc_alloc_init(TSWPCharacterStyleValidateFontResult);
    objc_msgSend_setBold_(v24, v25, 0xFFFFFFFFLL);
    objc_msgSend_setItalic_(v24, v26, 0xFFFFFFFFLL);
    objc_msgSend_setObject_forKeyedSubscript_(v19, v27, v24, v21);
    v30 = objc_msgSend_sharedInstance(TSWPFontVerifier, v28, v29);
    isFontWithPostscriptNameInstalled = objc_msgSend_isFontWithPostscriptNameInstalled_(v30, v31, v21);

    if (isFontWithPostscriptNameInstalled)
    {
      v35 = v104;
      FontWithName_fontSize = objc_msgSend_pCreateFontWithName_fontSize_(v104, v33, v21, a2);
      v37 = 1;
      if (!FontWithName_fontSize)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v39 = objc_msgSend_sharedInstance(TSWPFontVerifier, v33, v34);
      isDownloadableFontName = objc_msgSend_isDownloadableFontName_(v39, v40, v21);

      if (isDownloadableFontName)
      {
        goto LABEL_63;
      }

      v116 = 0;
      v114 = -1;
      v115 = -1;
      v35 = v104;
      v42 = objc_msgSend_pReplacementForMissingFontName_outBold_outItalic_outQuiet_(v104, v22, v21, &v115, &v114, &v116);
      v43 = v42;
      v37 = v42 == 0;
      if (!v42 || (v115 != -1 ? (v44 = v115 != 0) : (v44 = a5), v114 != -1 ? (v45 = v114 != 0) : (v45 = a6), FontWithName_fontSize = sub_276D357AC(v42, v44, v45, a2), objc_msgSend_setBold_(v24, v46, v115), objc_msgSend_setItalic_(v24, v47, v114), !FontWithName_fontSize))
      {
        v48 = qword_280A59260;
        v103 = v43;
        if (!qword_280A59260)
        {
          v49 = objc_alloc(MEMORY[0x277CBEAC0]);
          v51 = objc_msgSend_initWithObjectsAndKeys_(v49, v50, MEMORY[0x277CBEC38], *MEMORY[0x277CC4848], 0);
          v52 = CTFontCollectionCreateFromAvailableFonts(v51);
          if (v52)
          {
            cf = v52;
            MatchingFontDescriptors = CTFontCollectionCreateMatchingFontDescriptors(v52);
            if (MatchingFontDescriptors)
            {
              v97 = v51;
              v101 = v37;
              v98 = v19;
              v53 = objc_alloc(MEMORY[0x277CBEB18]);
              v56 = objc_msgSend_count(MatchingFontDescriptors, v54, v55);
              v58 = objc_msgSend_initWithCapacity_(v53, v57, v56);
              v59 = qword_280A59260;
              qword_280A59260 = v58;

              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v60 = MatchingFontDescriptors;
              v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v110, v118, 16);
              if (v62)
              {
                v63 = v62;
                v64 = *v111;
                v65 = *MEMORY[0x277CC4908];
                do
                {
                  for (i = 0; i != v63; ++i)
                  {
                    if (*v111 != v64)
                    {
                      objc_enumerationMutation(v60);
                    }

                    v68 = CTFontDescriptorCopyAttribute(*(*(&v110 + 1) + 8 * i), v65);
                    if (v68)
                    {
                      objc_msgSend_addObject_(v58, v67, v68);
                    }
                  }

                  v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v69, &v110, v118, 16);
                }

                while (v63);
              }

              v17 = a10;
              v19 = v98;
              v35 = v104;
              v37 = v101;
              v51 = v97;
            }

            CFRelease(cf);
          }

          v48 = qword_280A59260;
        }

        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v70 = v48;
        v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v71, &v106, v117, 16);
        if (v72)
        {
          v73 = v72;
          v102 = v37;
          v74 = v17;
          v75 = *v107;
          while (2)
          {
            for (j = 0; j != v73; ++j)
            {
              if (*v107 != v75)
              {
                objc_enumerationMutation(v70);
              }

              v77 = *(*(&v106 + 1) + 8 * j);
              if (sub_276F357E8(v21, v77))
              {
                v35 = v104;
                FontWithName_fontSize = objc_msgSend_pCreateFontWithName_fontSize_(v104, v78, v77, a2);
                v17 = v74;
                goto LABEL_47;
              }
            }

            v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v70, v78, &v106, v117, 16);
            if (v73)
            {
              continue;
            }

            break;
          }

          FontWithName_fontSize = 0;
          v17 = v74;
          v35 = v104;
LABEL_47:
          v37 = v102;
        }

        else
        {
          FontWithName_fontSize = 0;
        }

        v43 = v103;
      }

      if (!FontWithName_fontSize)
      {
        goto LABEL_63;
      }
    }

    v80 = CTFontCopyPostScriptName(FontWithName_fontSize);
    if (!v80 || (objc_msgSend_isEqualToString_(v21, v79, v80) & 1) != 0)
    {
LABEL_62:
      CFRelease(FontWithName_fontSize);

LABEL_63:
      a9 = v105;
      goto LABEL_64;
    }

    if (sub_276F357E8(v21, v80))
    {
      objc_msgSend_setMappedName_(v24, v81, v80);
      goto LABEL_62;
    }

    v82 = v37;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v83 = objc_msgSend_pReplacementForMissingFontName_outBold_outItalic_outQuiet_(v35, v81, v21, &v115, &v114, &v116);
    v85 = v83;
    if (!v83)
    {
      goto LABEL_59;
    }

    if (objc_msgSend_isEqualToString_(v83, v84, v80) && (v116 & 1) != 0)
    {
      goto LABEL_61;
    }

    v86 = v85;
    if (v82)
    {
LABEL_59:
      v86 = v80;
    }

    objc_msgSend_setMappedName_(v24, v84, v86);
LABEL_61:

    goto LABEL_62;
  }

LABEL_64:
  v87 = objc_msgSend_mappedName(v24, v22, v23);
  v90 = v87;
  if (v87)
  {
    if (a8)
    {
      v91 = v87;
      *a8 = v90;
    }

    v92 = objc_msgSend_bold(v24, v88, v89);
    if (a9 && v92 != -1)
    {
      *a9 = objc_msgSend_bold(v24, v93, v94) != 0;
    }

    v95 = objc_msgSend_italic(v24, v93, v94);
    if (v17 && v95 != -1)
    {
      *v17 = objc_msgSend_italic(v24, v88, v89) != 0;
    }
  }

  v38 = objc_msgSend_warning(v24, v88, v89);

LABEL_74:

  return v38;
}

id sub_276F35EE4(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  v11 = objc_msgSend_objectForProperty_(v7, v10, 16);
  v12 = TSUDynamicCast();

  if (!objc_msgSend_length(v12, v13, v14) || (objc_msgSend_sharedInstance(TSWPFallbackFontList, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), isMasqueradingFontName = objc_msgSend_isMasqueradingFontName_(v17, v18, v12), v17, (isMasqueradingFontName & 1) != 0))
  {
    v21 = 0;
    goto LABEL_27;
  }

  if (objc_msgSend_containsProperty_(v7, v20, 19))
  {
    v24 = objc_msgSend_intValueForProperty_(v7, v22, 19) != 0;
  }

  else
  {
    if (!v8)
    {
      v24 = 0;
      v26 = 0;
      if (objc_msgSend_containsProperty_(v7, v22, 20))
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }

    v24 = objc_msgSend_BOOLValueForProperty_defaultValue_(v8, v22, 19, 0);
  }

  if (objc_msgSend_containsProperty_(v7, v23, 20))
  {
LABEL_9:
    v26 = objc_msgSend_intValueForProperty_(v7, v25, 20) != 0;
    goto LABEL_15;
  }

  if (v8)
  {
    v26 = objc_msgSend_BOOLValueForProperty_defaultValue_(v8, v25, 20, 0);
  }

  else
  {
    v26 = 0;
  }

LABEL_15:
  if (objc_msgSend_containsProperty_(v7, v25, 17))
  {
    objc_msgSend_floatValueForProperty_(v7, v27, 17);
  }

  else
  {
    if (!v8)
    {
      v29 = 12.0;
      goto LABEL_20;
    }

    objc_msgSend_floatValueForProperty_(v8, v27, 17);
  }

  v29 = v28;
LABEL_20:
  v38 = v24;
  v37 = v26;
  v30 = MEMORY[0x277D80AD0];
  v36 = v12;
  v31 = v12;
  v21 = objc_msgSend_validateFontName_size_bold_italic_checkedFontMap_newFontName_newBold_newItalic_(v30, v32, v31, v24, v26, v9, &v36, &v38, v29, &v37);
  v33 = v36;

  if (v33)
  {
    objc_msgSend_setObject_forProperty_(v7, v34, v33, 16);
  }

  if (v38 != v24)
  {
    objc_msgSend_setIntValue_forProperty_(v7, v34, v38, 19);
  }

  if (v37 != v26)
  {
    objc_msgSend_setIntValue_forProperty_(v7, v34, v37, 20);
  }

LABEL_27:

  return v21;
}

id sub_276F3616C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  objc_opt_class();
  v6 = objc_msgSend_overrideValueForProperty_(a1, v5, 16);
  v7 = TSUDynamicCast();

  if (v7)
  {
    v9 = objc_msgSend_BOOLValueForProperty_defaultValue_(a1, v8, 19, 0);
    v11 = objc_msgSend_BOOLValueForProperty_defaultValue_(a1, v10, 20, 0);
    v38 = v9;
    v37 = v11;
    v12 = v7;
    objc_msgSend_floatValueForProperty_(a1, v13, 17);
    if (v14 == INFINITY)
    {
      v15 = 12.0;
    }

    else
    {
      v15 = v14;
    }

    v16 = objc_opt_class();
    v36 = v12;
    v18 = objc_msgSend_validateFontName_size_bold_italic_checkedFontMap_newFontName_newBold_newItalic_(v16, v17, v12, v9, v11, v4, &v36, &v38, v15, &v37);
    v19 = v36;

    if (v19)
    {
      objc_msgSend_setValue_forProperty_(a1, v20, v19, 16);
    }

    if (v38 != v9)
    {
      v21 = objc_opt_class();
      v24 = objc_msgSend_properties(v21, v22, v23);
      v26 = objc_msgSend_containsProperty_(v24, v25, 19);

      if (v26)
      {
        objc_msgSend_setBoolValue_forProperty_(a1, v27, v38, 19);
      }
    }

    if (v37 != v11)
    {
      v28 = objc_opt_class();
      v31 = objc_msgSend_properties(v28, v29, v30);
      v33 = objc_msgSend_containsProperty_(v31, v32, 20);

      if (v33)
      {
        objc_msgSend_setBoolValue_forProperty_(a1, v34, v37, 20);
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t sub_276F3638C(void *a1, const char *a2, uint64_t a3, unsigned int a4)
{
  v5 = objc_msgSend_intValueForProperty_(a1, a2, a3);
  if (v5 == 0x80000000)
  {
    return a4;
  }

  else
  {
    return v5 != 0;
  }
}

uint64_t sub_276F38030(uint64_t *a1)
{
  if (*(*a1 + 16))
  {
    v2 = *(*a1 + 16);
  }

  else
  {
    v2 = (*a1 + 24);
  }

  sub_276E3EBC0(v2);
  if (v2[8] && (v4 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "BOOL TSWPStorageActionRunner::runActions()"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 64, 0, "TSWPStorageActionRunner: there should be no open groups."), v7, v5, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10), v2[8]))
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v13 = v2[3];
    v12 = v2[4];
    v14 = 0x8E38E38E38E38E39 * ((v12 - v13) >> 4);
    v15 = v2[28];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15 + 1;
    }

    v11 = 0;
    v17 = v14 - v16;
    if (v14 > v16)
    {
      v18 = 144 * v16;
      do
      {
        v19 = v2[3] + v18;
        if ((*(v19 + 104) & 1) == 0)
        {
          v11 |= sub_276F381CC(a1, (v2[3] + v18));
          *(v19 + 104) = 1;
        }

        v18 += 144;
        --v17;
      }

      while (v17);
    }

    v20 = v14 - 1;
    if (v12 == v13)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v2[28] = v20;
    sub_276E3EBD0(v2, *a1, 1);
  }

  return v11 & 1;
}

uint64_t sub_276F381CC(uint64_t a1, const char *a2)
{
  if (*(a1 + 8) == 1 && (v4 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSWPStorageActionRunner::runActionsInGroup(TSWPStorageActionGroup &)"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 132, 0, "Attempting to run recursively."), v7, v5, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10), (*(a1 + 8) & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    *(a1 + 8) = 1;
    v58 = a1;
    sub_276EE3CC8(v63, a2);
    v14 = v64;
      ;
    }

    v65 = v14;
    v16 = v66;
      ;
    }

    v67 = v16;
    if (!LODWORD(v63[0]))
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "BOOL TSWPStorageActionRunner::runActionsInGroup(TSWPStorageActionGroup &)");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 145, 0, "Attempting to run undefined storage group action type.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    }

    v24 = *(a2 + 7);
    v25 = *(a2 + 8);
    v26 = v25 - v24;
    v27 = *(a2 + 11) - *(a2 + 10);
    if (v25 - v24 != v27)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "BOOL TSWPStorageActionRunner::runActionsInGroup(TSWPStorageActionGroup &)");
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v32, v29, v31, 151, 0, "runActionsWithActionState: actions and inverseDetailActions mismatch.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34);
      v27 = *(a2 + 11) - *(a2 + 10);
    }

    v11 = 0;
    if (v26 == v27 && v25 != v24)
    {
      v36 = 0;
      if (0xAAAAAAAAAAAAAAABLL * (v26 >> 4) <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 4);
      }

      v38 = v58;
      do
      {
        v39 = *(a2 + 7);
        sub_276F406BC(v62, *(a2 + 10) + 48 * v36);
        v40 = v39 + 48 * v36;
        v41 = *(v40 + 16);
        v42 = *(*v38 + 8);
        LODWORD(v41) = v41 == objc_msgSend_length(v42, v43, v44);

        if (sub_276F40DB4(v40, v41))
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v60 = sub_276DCFD04(&v59, v62);
          v46 = sub_276F38D34(v38, v40, &v59, (a2 + 112), a2, 1);
          if (v60 != v59)
          {
            v47 = 0;
            if (0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 4) <= 1)
            {
              v48 = 1;
            }

            else
            {
              v48 = 0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 4);
            }

            do
            {
              v49 = (v59 + v47);
              *(v59 + v47 + 4) &= ~0x2000u;
              if (*v40 || *v49)
              {
                sub_276EE3FF0(v63, v40, v49);
              }

              v47 += 48;
              --v48;
            }

            while (v48);
          }

          v11 |= v46;
          v68 = &v59;
          sub_276E40F9C(&v68);
          v38 = v58;
        }

        else
        {
          v50 = MEMORY[0x277D81150];
          v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "BOOL TSWPStorageActionRunner::runActionsInGroup(TSWPStorageActionGroup &)");
          v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v50, v54, v51, v53, 159, 0, "Attempting to run a detail action that is no-op or effectively no-op.");

          v38 = v58;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56);
          if (v62[0])
          {
            sub_276EE3FF0(v63, v40, v62);
          }
        }

        sub_276F40794(v62);
        ++v36;
      }

      while (v36 != v37);
    }

    sub_276EE4314(v63, v12);
    if (v63 != a2)
    {
      sub_276E40B78((a2 + 56), v64, v65, 0xAAAAAAAAAAAAAAABLL * ((v65 - v64) >> 4));
      sub_276E40B78((a2 + 80), v66, v67, 0xAAAAAAAAAAAAAAABLL * ((v67 - v66) >> 4));
    }

    sub_276EE3B58(v63);
    *(v58 + 8) = 0;
  }

  return v11 & 1;
}

void sub_276F3863C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  sub_276EE3B58(va);
  if (a2 == 3)
  {
    v22 = objc_begin_catch(a1);
    v25 = objc_msgSend_name(v22, v23, v24);
    v26 = MEMORY[0x277D81150];
    v29 = objc_msgSend_callStackReturnAddresses(v22, v27, v28);
    v31 = objc_msgSend_packedBacktraceStringWithReturnAddresses_(v26, v30, v29);
    v53 = objc_msgSend_reason(v22, v32, v33);
    TSUSetCrashReporterInfo();

    v34 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "BOOL TSWPStorageActionRunner::runActionsInGroup(TSWPStorageActionGroup &)");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v36, v38, 192, 1, "Exception raised while running actions");

    TSUCrashBreakpoint();
  }

  else
  {
    v40 = __cxa_begin_catch(a1);
    *(a9 + 8) = 0;
    if (a2 == 2)
    {
      v41 = v40;
      (*(*v40 + 16))(v40);
      TSUSetCrashReporterInfo();
      v42 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "BOOL TSWPStorageActionRunner::runActionsInGroup(TSWPStorageActionGroup &)");
      v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      (*(*v41 + 16))(v41);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v47, v44, v46, 196, 1, "std C++ exception while running actions: '%s'");
    }

    else
    {
      TSUSetCrashReporterInfo();
      v48 = MEMORY[0x277D81150];
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "BOOL TSWPStorageActionRunner::runActionsInGroup(TSWPStorageActionGroup &)");
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v52, v44, v51, 199, 1, "unknown C++ exception while running actions");
    }

    TSUCrashBreakpoint();
  }

  abort();
}

uint64_t sub_276F38A60(uint64_t a1, const char *a2)
{
  if (*(a1 + 8))
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPStorageActionRunner::~TSWPStorageActionRunner()");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 93, 0, "Running action should be false.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  return a1;
}

void sub_276F38B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*a1 + 16))
  {
    v6 = *(*a1 + 16);
  }

  else
  {
    v6 = *a1 + 24;
  }

  v7 = sub_276E3EAC8(v6);
  v10 = v7;
  if (*(*a1 + 473) == 1 && *(a3 + 8) == 4)
  {
    v12 = *(a3 + 4);
    if ((v12 & 1) != 0 && (v12 & 0x400) == 0 && v7 && (objc_msgSend_delegateShouldAssignPlacementIndex(v7, v8, v9) & 1) == 0)
    {
      v32 = -1;
      v31 = 0;
      v13 = sub_276F40EE0(a3, &v31, &v32);
      if (v13)
      {
        v14 = *(a2 + 16) - *(a2 + 8);
        if (v14)
        {
          v15 = 0;
          v16 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
          if (v16 <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16;
          }

          while (1)
          {
            v18 = *(a2 + 8);
            v30 = -1;
            v19 = sub_276F40EE0(v18 + v15, &v31, &v30);
            if (objc_msgSend_isEqual_(v19, v20, v13))
            {
              break;
            }

            v15 += 48;
            if (!--v17)
            {
              goto LABEL_27;
            }
          }

          v22 = v32;
          if (v30 != v32)
          {
            if (v30 != -1)
            {
              v23 = MEMORY[0x277D81150];
              v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "void TSWPStorageActionRunner::updatePlacementIndexForForwardActionInGroupWithDetailAction(TSWPStorageActionGroup &, const TSWPStorageAction &)");
              v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v27, v24, v26, 116, 0, "Expected forward action placement index to be undefined");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29);
              v22 = v32;
            }

            sub_276F41640(v18 + v15, v19, v22);
          }
        }
      }

LABEL_27:
    }
  }
}

BOOL sub_276F38D34(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  *(*a1 + 448) = 0;
  if (sub_276F41C24(a2))
  {
    v14 = objc_msgSend_documentRoot(*(*a1 + 8), v12, v13);
    sub_276F409E0(a2, v14);
  }

  else
  {
    if (!sub_276F40D48(a2))
    {
      goto LABEL_6;
    }

    v14 = objc_msgSend_documentRoot(*(*a1 + 8), v15, v16);
    sub_276F40C1C(a2, v14);
  }

LABEL_6:
  v17 = *a1;
  *(v17 + 456) = a3;
  *(v17 + 464) = a2;
  v18 = *a2;
  if (*a2 == 2)
  {
    v26 = sub_276F41CA4(a2);
    actionState = objc_msgSend_attributeArrayForKind_withCreate_actionState_(*(*a1 + 8), v27, *(a2 + 8), 0);
    if (actionState)
    {
      v31 = 1;
    }

    else
    {
      v31 = v26 == 0;
    }

    if (!v31)
    {
      objc_msgSend_willModify(*(*a1 + 8), v28, v29);
      actionState = objc_msgSend_attributeArrayForKind_withCreate_actionState_(*(*a1 + 8), v32, *(a2 + 8), 1);
    }

    if (TSWPAttributeArray::attributeKindIsBreaking(*(a2 + 8)))
    {
      if (!actionState)
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "BOOL TSWPStorageActionRunner::runAction(TSWPStorageAction &, TSWPStorageActionVector &, TSWPMarkers &, TSWPStorageActionGroup &, BOOL)");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 249, 0, "invalid nil value for '%{public}s'", "otherParagraphArray");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
      }

      sub_276F39298(a1, a2, actionState, a6);
    }

    else if (TSWPAttributeArray::attributeKindIsAttachment(*(a2 + 8)))
    {
      sub_276F39B48(a1, a2, actionState, a6);
    }

    else if (TSWPAttributeArray::attributeKindIsOverlapping(*(a2 + 8)))
    {
      sub_276F3B084(a1, a2, actionState, a6);
    }

    else
    {
      sub_276F3B3B8(a1, a2, actionState, a6);
    }
  }

  else if (v18 == 1)
  {
    sub_276F390B4(a1, a2, a4, a6);
  }

  else if (!v18)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "BOOL TSWPStorageActionRunner::runAction(TSWPStorageAction &, TSWPStorageActionVector &, TSWPMarkers &, TSWPStorageActionGroup &, BOOL)");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 230, 0, "Attempting to run undefined storage action type.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  v41 = *a1;
  if (a6)
  {
    if (!*(v41 + 448))
    {
      v42 = a3[1] - *a3;
      if (v42)
      {
        if (0xAAAAAAAAAAAAAAABLL * (v42 >> 4) <= 1)
        {
          v43 = 1;
        }

        else
        {
          v43 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
        }

        v44 = 4;
        do
        {
          v45 = (*a3 + v44);
          v47 = *v45;
          v46 = (v45 - 4);
          if ((v47 & 0x40) == 0)
          {
            sub_276F41308(v46);
          }

          v44 += 48;
          --v43;
        }

        while (v43);
        v41 = *a1;
      }
    }
  }

  v48 = *(v41 + 448) != 0;
  sub_276F38B10(a1, a5, a2);
  sub_276F41308(a2);
  v49 = *a1;
  v49[56] = 0;
  v49[57] = 0;
  v49[58] = 0;
  return v48;
}

void sub_276F390B4(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(*a1 + 448);
  v9 = objc_msgSend_string(*(*a1 + 8), a2, a3);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v38 = v9;
  if (v11 + v10 <= objc_msgSend_length(v9, v12, v13))
  {
    objc_opt_class();
    v26 = TSUDynamicCast();
    v29 = objc_msgSend_length(v26, v27, v28);
    if (a4)
    {
      v32 = v29;
      objc_msgSend_willModify(*(*a1 + 8), v30, v31);
      objc_msgSend_p_replaceRange_withString_markers_flags_actionState_(*(*a1 + 8), v33, *(a2 + 16), *(a2 + 24), v26, a3, *(a2 + 4));
      v34 = *a1;
      if (*(*a1 + 448) > v8)
      {
        v35 = *(v34 + 16);
        v36 = (v34 + 24);
        if (v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = v36;
        }

        sub_276E3F5CC(v37, *(a2 + 16), v32, v32 - *(a2 + 24), 1);
      }
    }
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSWPStorageActionRunner::runReplaceTextAction(const TSWPStorageAction &, TSWPMarkers &, BOOL)");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
    v19 = *(*a1 + 8);
    v22 = objc_msgSend_wpKind(v19, v20, v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v23, v16, v18, 765, 0, "Attempting to delete past end of storage (wpKind: %u)", v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }
}

TSWPParagraphAttributeArray *sub_276F39298(uint64_t *a1, uint64_t a2, NSUInteger a3, int a4)
{
  v4 = a4;
  if (*(a2 + 8) == 8)
  {

    return sub_276F3B620(a1, a2, a3, a4);
  }

  v9 = *(*a1 + 448);
  result = objc_msgSend_attributeArrayForKind_(*(*a1 + 8), a2, 0);
  if (result)
  {
    if (!a3)
    {
      return result;
    }

    v11 = result;
    v104 = v9;
    v12 = sub_276F2F9C4(*a1, a2, *(a2 + 16), result);
    v14 = v13;
    v16 = objc_msgSend_paragraphCount(*(*a1 + 8), v13, v15);
    v18 = objc_msgSend_textRangeForParagraphAtIndex_(*(*a1 + 8), v17, v12);
    v20 = v19;
    v22 = objc_msgSend_length(*(*a1 + 8), v19, v21);
    v25 = v20 > 1 && &v14[v12] < v16 && v18 + v20 == v22;
    v26 = *(*a1 + 8);
    v105 = v12;
    v106 = v14;
    if (v25)
    {
      v27 = objc_msgSend_textRangeForParagraphIndexRange_(v26, v23, v12, v14 + 1);
    }

    else
    {
      v27 = objc_msgSend_textRangeForParagraphIndexRange_(v26, v23, v12, v14);
    }

    v110 = v27;
    v29 = v28;
    hasObjects = TSWPAttributeArray::hasObjects(*(a3 + 28));
    if (*(a2 + 8) != *(a3 + 28))
    {
      v31 = MEMORY[0x277D81150];
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "void TSWPStorageActionRunner::runBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *, BOOL)");
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 317, 0, "action does not match the specified attribute array");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
    }

    v115[0] = 0;
    sub_276F406BC(v114, a2);
    v38 = *MEMORY[0x277D81490];
    v39 = *(MEMORY[0x277D81490] + 8);
    v40 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a3, *(a2 + 16));
    v41 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a3, *(a2 + 16));
    v42 = TSWPAttributeArray::supportsSparseNonCollapsingEntries(*(a3 + 28));
    if (v40 == 0x7FFFFFFFFFFFFFFFLL && v42)
    {
      v45 = sub_276F40884(a2);

      if (!v45)
      {
        v4 = 0;
      }

      v46 = *(a3 + 24);
    }

    else
    {
      v55 = (a3 + 24);
      v46 = *(a3 + 24);
      if (v41 < v46)
      {
        if (hasObjects)
        {
          v56 = TSWPAttributeArray::objectForAttributeIndex(a3, v41);
          if (v41 >= *v55)
          {
            v108 = 0;
LABEL_35:
            v113 = 0;
            goto LABEL_38;
          }
        }

        else
        {
          v115[0] = *TSWPAttributeRecord::paragraphData(*(a3 + 8) + 16 * v41, *(a3 + 28));
          if (v41 >= *v55)
          {
LABEL_42:
            v113 = 0;
            goto LABEL_43;
          }
        }

LABEL_33:
        v38 = TSWPAttributeArray::rangeForAttributeIndex(a3, v41);
        v39 = v57;
        if (hasObjects)
        {
          v108 = TSWPAttributeArray::objectForAttributeIndex(a3, v41);
          goto LABEL_35;
        }

        TSWPAttributeRecord::paragraphData(*(a3 + 8) + 16 * v41, *(a3 + 28));
        goto LABEL_42;
      }
    }

    v55 = (a3 + 24);
    if (v41 >= v46)
    {
      v113 = 0;
      if (hasObjects)
      {
        v108 = 0;
LABEL_38:
        v58 = sub_276F3C3D4(a1, a2);
        sub_276F407C4(v111, a2, v108);
        sub_276F40798(v112, v111, v38, v39);
        sub_276F4136C(v114, v112);
        sub_276F40794(v112);
        sub_276F40794(v111);
        v61 = v58;
        if (!v4)
        {
          goto LABEL_76;
        }

        goto LABEL_44;
      }

LABEL_43:
      v113 = sub_276F40598(a2, v43);
      sub_276F40838(v111, a2, v115);
      sub_276F40798(v112, v111, v38, v39);
      sub_276F4136C(v114, v112);
      sub_276F40794(v112);
      sub_276F40794(v111);
      v61 = 0;
      v108 = 0;
      v58 = 0;
      if ((v4 & 1) == 0)
      {
LABEL_76:

        return sub_276F40794(v114);
      }

LABEL_44:
      v107 = v61;
      objc_msgSend_willModify(*(*a1 + 8), v59, v60);
      if (!*v55)
      {
        v63 = MEMORY[0x277D81150];
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "void TSWPStorageActionRunner::runBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *, BOOL)");
        v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v67, v64, v66, 376, 0, "Paragraph attribute array(%lu) has array count 0.", *(a3 + 28));

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
      }

      if (hasObjects)
      {
        TSWPParagraphAttributeArray::applyObjectToParagraphRange(a3, v107, v105, v106, v11, *a1);
      }

      else
      {
        if (*(a3 + 28) == 1)
        {
          v71 = v113;
          if (v113 >= 9u)
          {
            v72 = MEMORY[0x277D81150];
            v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "void TSWPStorageActionRunner::runBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *, BOOL)");
            v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v72, v76, v73, v75, 380, 0, "Illegal list level: %u", v113);

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78);
            v71 = v113;
          }

          if (v71 >= 8)
          {
            LOWORD(v71) = 8;
          }

          LOWORD(v113) = v71;
        }

        TSWPParagraphAttributeArray::applyParagraphDataToParagraphRange(a3, &v113, v105, v106, v11, *a1);
      }

      actionState = objc_msgSend_attributeArrayForKind_withCreate_actionState_(*(*a1 + 8), v70, 2, 0);
      v58 = v107;
      v80 = TSWPAttributeArray::affectsListStyleArray(*(a2 + 8));
      if (actionState)
      {
        v81 = v80;
      }

      else
      {
        v81 = 0;
      }

      if (v81 == 1)
      {
        if (v29)
        {
          v82 = *(actionState + 24);
          v80 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(actionState, &v110[v29 - 1]);
          v85 = v80;
          if (v80 < v82)
          {
            v86 = objc_msgSend_stylesheet(*(*a1 + 8), v83, v84);
            v88 = objc_msgSend_styleWithIdentifier_(v86, v87, @"text-0-liststyle-None");

            v89 = TSWPAttributeArray::objectForAttributeIndex(actionState, v85);
            v92 = objc_msgSend_parent(v89, v90, v91);

            if (v92)
            {
              v95 = objc_msgSend_parent(v89, v93, v94);

              v89 = v95;
            }

            if (v89 != v88)
            {
              while (1)
              {
                v96 = TSWPAttributeArray::objectForAttributeIndex(actionState, v85);
                v99 = v96;
                if (v96 != v89)
                {
                  v100 = objc_msgSend_parent(v96, v97, v98);

                  if (v100 != v89)
                  {
                    break;
                  }
                }

                v101 = TSWPAttributeArray::rangeForAttributeIndex(actionState, v85);
                v29 = v102 - v110 + v101;

                if (v82 == ++v85)
                {
                  goto LABEL_69;
                }
              }
            }

LABEL_69:

            v58 = v107;
          }
        }
      }

      if (*(*a1 + 448) > v104 && sub_276F3C74C(v80, v114, a3, v110, v29))
      {
        if (*(*a1 + 16))
        {
          v103 = *(*a1 + 16);
        }

        else
        {
          v103 = (*a1 + 24);
        }

        sub_276E3F5CC(v103, v110, v29, 0, 0);
      }

      goto LABEL_76;
    }

    goto LABEL_33;
  }

  v47 = MEMORY[0x277D81150];
  v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "void TSWPStorageActionRunner::runBreakingTableAction(const TSWPStorageAction &, TSWPParagraphAttributeArray *, BOOL)");
  v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v51, v48, v50, 304, 0, "No paragraph array.");

  v54 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v54, v52, v53);
}

uint64_t sub_276F39B48(uint64_t *a1, uint64_t a2, TSWPAttributeArray *a3, int a4)
{
  v4 = *a1;
  *(v4 + 472) = 1;
  v5 = *(v4 + 456);
  if (!v5 || v5[1] - *v5 != 48)
  {
    TSUSetCrashReporterInfo();
    v210 = MEMORY[0x277D81150];
    v212 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v211, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)", "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm", 838);
    v214 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v213, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v210, v215, v212, v214, 838, 1, "Expected pInverseActions to not be null and to have a size of 1.");

    TSUCrashBreakpoint();
    abort();
  }

  sub_276F406BC(v263, *v5);
  v262 = 0;
  v261 = 0;
  v10 = sub_276F40EE0(a2, &v262, &v261);
  if (a4)
  {
    if (*(*a1 + 16))
    {
      v11 = *(*a1 + 16);
    }

    else
    {
      v11 = *a1 + 24;
    }

    v12 = sub_276E3EAC8(v11);
    v255 = v12;
    if (v12)
    {
      objc_msgSend_storageUUIDPath(v12, v13, v14);
    }

    else
    {
      objc_msgSend_objectUUIDPath(*(*a1 + 8), v13, v14);
    }
    v246 = ;
    v256 = *(a2 + 4);
    if (((v256 ^ ((v256 & 2) >> 1)) & 1) == 0)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 853, 0, "Should be either add or remove.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    }

    v23 = *(a2 + 24);
    v250 = a3;
    v251 = *(a2 + 16);
    v253 = v23;
    if (v23 >= 2)
    {
      v70 = MEMORY[0x277D81150];
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
      v73 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v70, v74, v71, v73, 858, 0, "The length should either be 0 or 1.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v75, v76);
    }

    else if (v23 == 1)
    {
      v24 = *(*a1 + 8);
      v27 = objc_msgSend_string(v24, v25, v26);

      v258 = v27;
      v28 = v27;
      v29 = v251;
      v248 = objc_msgSend_characterAtIndex_(v28, v30, v251);
      if (!a3)
      {
        goto LABEL_32;
      }

      v33 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a3, v251);
      if (v33 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_32;
      }

      v34 = TSWPAttributeArray::objectForAttributeIndex(a3, v33);
      if (TSWPAttributeArray::rangeForAttributeIndex(a3, v33) != v251)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
        v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 874, 0, "Current object in document is outside action range.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
      }

      v29 = v251;
      if (v34)
      {
        if ((v256 & 2) == 0)
        {
          v42 = MEMORY[0x277D81150];
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
          v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 879, 0, "We should only remove a current object in document when we are removing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
        }

        if (v248 == 14 || v248 == 65532)
        {
          v49 = sub_276D35028(v34, v246);
          v51 = v49;
          if (v49 != v10 && (objc_msgSend_isEqual_(v49, v50, v10) & 1) == 0)
          {
            v52 = MEMORY[0x277D81150];
            v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
            v54 = v51;
            v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 884, 0, "Expect paths to be in sync when removing attachment.  Storage and attachment UUID paths should be the same (%{public}@ vs %{public}@)", v54, v10);

            v51 = v54;
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
          }

          if (v255)
          {
            v60 = objc_msgSend_indexForObject_(v255, v50, v34);
            if (v60 != v261 && v261 != -1)
            {
              v62 = MEMORY[0x277D81150];
              v63 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
              v64 = v51;
              v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v62, v67, v63, v66, 888, 0, "The placement index of object in document should match that in storage action.");

              v51 = v64;
              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v68, v69);
            }
          }

          goto LABEL_40;
        }

        TSUSetCrashReporterInfo();
        v237 = MEMORY[0x277D81150];
        v239 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v238, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)", "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm", 880);
        v241 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v240, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v237, v242, v239, v241, 880, 1, "Expect current character is special when removing.");

        TSUCrashBreakpoint();
      }

      else
      {
LABEL_32:
        if (v29)
        {
          v77 = objc_msgSend_characterAtIndex_(v258, v31, (v29 - 1));
        }

        else
        {
          v77 = 0;
        }

        if ((v29 + 1) >= objc_msgSend_length(v258, v31, v32))
        {
          v79 = 0;
        }

        else
        {
          v79 = objc_msgSend_characterAtIndex_(v258, v78, (v29 + 1));
        }

        v80 = objc_opt_class();
        v51 = NSStringFromClass(v80);
        objc_opt_class();
        v81 = TSUDynamicCast();
        objc_opt_class();
        v82 = TSUDynamicCast();
        v85 = objc_msgSend_drawable(v82, v83, v84);

        v88 = objc_msgSend_exteriorTextWrap(v85, v86, v87);
        if (v248 == 32)
        {

          v34 = 0;
LABEL_40:

          v259 = v34;
LABEL_41:
          if ((v256 & 2) != 0)
          {
            if (v262)
            {
              v89 = MEMORY[0x277D81150];
              v90 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
              v92 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v91, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v89, v93, v90, v92, 906, 0, "Action object should be nil when removing.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v95);
            }

            if (!v259 && v10)
            {
              v96 = MEMORY[0x277D81150];
              v97 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
              v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v96, v100, v97, v99, 908, 0, "If we are not removing anything, UUID should also be nil.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v101, v102);
            }
          }

          v103 = *(a2 + 4);
          v249 = (v103 & 0x4000) == 0;
          if ((v256 & 1) != 0 && sub_276F40E2C(a2))
          {
            if (v10 && (v256 & 0x400) == 0 && !v262)
            {
              v104 = MEMORY[0x277D81150];
              v105 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
              v107 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v106, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v104, v108, v105, v107, 920, 0, "Action object should be not be nil when adding with uuid.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v109, v110);
            }

            if ((v103 & 0x4000) != 0)
            {
              v111 = MEMORY[0x277D81150];
              v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
              v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v113, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v111, v115, v112, v114, 922, 0, "Expect replacementLength to be 1 when we have object to add.");
            }

            else
            {
              if (v255)
              {
                v116 = objc_msgSend_actionObjectForUUIDPath_(v255, v15, v10);
                v119 = objc_msgSend_null(MEMORY[0x277CBEB68], v117, v118);

                if (v116 == v119)
                {
                  v120 = v262;
                }

                else
                {
                  v120 = v116;
                }
              }

              else
              {
                v120 = v262;
              }

              if (v120)
              {
                if (v259)
                {
                  v121 = MEMORY[0x277D81150];
                  v122 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
                  v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v123, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v121, v125, v122, v124, 938, 0, "We should not be both removing and adding object.");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v126, v127);
                  v247 = 1;
                  v128 = 1;
                }

                else
                {
                  v128 = 0;
                  v247 = 1;
                }

                v134 = v120;
LABEL_66:
                if (v10)
                {
                  if (((v247 | v128) & 1) == 0)
                  {
                    v135 = MEMORY[0x277D81150];
                    v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
                    v138 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v137, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v135, v139, v136, v138, 940, 0, "We promise to either add or remove an object in TSWPStorageActionGroup::operationsForAction().");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v140, v141);
                  }

                  if (!a3)
                  {
                    v142 = MEMORY[0x277D81150];
                    v143 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
                    v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v144, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v142, v146, v143, v145, 941, 0, "Attribute array should exist because we are going to add or remove object.");

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v147, v148);
                  }
                }

                sub_276F4046C(v260, v251, v249, (*(a2 + 4) & 0xFFFFBFFF | ((v253 != 1) << 14)) ^ 3, v259);
                sub_276F4136C(v263, v260);
                sub_276F40794(v260);
                if (v255 && (v256 & 2) != 0 && objc_msgSend_shouldDeepCopyUndoObjects(v255, v149, v150))
                {
                  v152 = objc_msgSend_context(v255, v151, v150);
                  sub_276F417A4(v263);

                  v153 = sub_276F40884(v263);
                  v154 = v153;
                  if (v259 == v153)
                  {
                  }

                  else
                  {
                    v155 = sub_276F40884(v263);

                    if (v155)
                    {
                      v157 = MEMORY[0x277D81150];
                      v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
                      v160 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v159, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
                      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v157, v161, v158, v160, 959, 0, "Expected deep copy not to affect objectForStorage aka rollback object.");

                      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v162, v163);
                    }
                  }
                }

                v164 = (v103 >> 14) & 1;
                if (v259 == v134)
                {
                  v165 = (v103 >> 14) & 1;
                }

                else
                {
                  v165 = 1;
                }

                if (v253 != 1)
                {
                  v165 = 1;
                }

                if (v253)
                {
                  LOBYTE(v164) = 0;
                }

                if ((v164 & 1) != 0 || !v165)
                {
                  goto LABEL_128;
                }

                v166 = v255;
                sub_276F3C9BC(a1, a2, v150, v134);
                v167 = *(*a1 + 8);
                objc_msgSend_willModify(v167, v168, v169);

                v170 = !v128;
                v171 = *a1;
                if (!v250)
                {
                  v170 = 1;
                }

                if ((v170 & 1) == 0)
                {
                  v172 = *(v171 + 448);
                  (*(v250->var0 + 4))();
                  v171 = *a1;
                  if (*(*a1 + 448) > v172)
                  {
                    v173 = *(v171 + 16);
                    v174 = (v171 + 24);
                    if (v173)
                    {
                      v175 = v173;
                    }

                    else
                    {
                      v175 = v174;
                    }

                    sub_276E3F5CC(v175, v251, v253, 0, 0);
                    v171 = *a1;
                  }
                }

                v260[0] = *MEMORY[0x277D81490];
                v176 = *(v171 + 448);
                v177 = *(v171 + 8);
                v179 = objc_msgSend_pFlipSpecialCharacterForObject_range_insertLength_outChangeRange_attributeArrayKind_actionState_(v177, v178, v134, v251, v253, v249, v260, *(a2 + 8), *a1);

                v180 = *a1;
                if (*(*a1 + 448) > v176)
                {
                  v181 = *(v180 + 16);
                  v182 = (v180 + 24);
                  if (v181)
                  {
                    v183 = v181;
                  }

                  else
                  {
                    v183 = v182;
                  }

                  sub_276E3F5CC(v183, *&v260[0], *(&v260[0] + 1), v179, 1);
                }

                v184 = v247 ^ 1;
                if (!v250)
                {
                  v184 = 1;
                }

                if ((v184 & 1) == 0)
                {
                  v185 = *(*a1 + 448);
                  (*(v250->var0 + 4))(v250, v134, v251, v249, *(*a1 + 424));
                  v186 = *a1;
                  if (*(*a1 + 448) > v185)
                  {
                    v187 = *(v186 + 16);
                    v188 = (v186 + 24);
                    if (v187)
                    {
                      v189 = v187;
                    }

                    else
                    {
                      v189 = v188;
                    }

                    sub_276E3F5CC(v189, v251, v249, 0, 0);
                  }
                }

                sub_276F3CA5C(a1, a2, v259, v134);
                if (!v247)
                {
                  goto LABEL_129;
                }

                v191 = sub_276D35028(v134, v246);
                if (v255)
                {
                  v192 = objc_msgSend_indexForObject_(v255, v190, v134);
                }

                else
                {
                  v192 = -1;
                }

                if ((v256 & 0x400) != 0 || (v256 & 1) == 0 || v10)
                {
                  if (v191 != v10 && (objc_msgSend_isEqual_(v191, v190, v10) & 1) == 0)
                  {
                    v193 = MEMORY[0x277D81150];
                    v194 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
                    v196 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v195, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
                    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v193, v197, v194, v196, 1023, 0, "Expect paths to be in sync after adding attachment. Storage and attachment UUID paths should be the same (%{public}@ vs %{public}@)", v191, v10);

                    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v198, v199);
                  }

                  if ((v256 & 1) == 0)
                  {
                    v200 = v261;
                    goto LABEL_125;
                  }
                }

                else
                {
                  v10 = v191;
                }

                v200 = v261;
                if ((v256 & 0x400) == 0 && v261 == -1)
                {
                  v261 = v192;
LABEL_127:

LABEL_128:
                  v166 = v255;
LABEL_129:

                  goto LABEL_130;
                }

LABEL_125:
                if (v192 != v200)
                {
                  v201 = MEMORY[0x277D81150];
                  v202 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v190, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
                  v204 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v203, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
                  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v201, v205, v202, v204, 1031, 0, "The placement index of object in document should match that in storage action.");

                  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v206, v207);
                }

                goto LABEL_127;
              }

              v129 = MEMORY[0x277D81150];
              v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)");
              v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v130, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v129, v131, v112, v114, 932, 0, "We do not have an object to add to the document.");
            }

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v132, v133);
          }

          v247 = 0;
          v134 = 0;
          v128 = v259 != 0;
          goto LABEL_66;
        }

        v257 = v77;
        v216 = v88;
        v217 = *(*a1 + 8);
        v222 = objc_msgSend_wpKind(v217, v218, v219);
        if (v85)
        {
          v224 = objc_opt_class();
          v223 = NSStringFromClass(v224);
        }

        else
        {
          v223 = &stru_28860A0F0;
        }

        if (v216)
        {
          v225 = objc_msgSend_description(v216, v220, v221);
        }

        else
        {
          v225 = &stru_28860A0F0;
        }

        v245 = v225;
        TSUSetCrashReporterInfo();
        if (v216)
        {
        }

        if (v85)
        {
        }

        v226 = MEMORY[0x277D81150];
        v228 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v227, "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)", "void TSWPStorageActionRunner::runAttachmentTableAction(TSWPStorageAction &, TSWPAttributeArray *, BOOL)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm", 901, v257, v248, v79, v222, v51, v223, v245, v246);
        v230 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v229, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStorageActionRunner.mm");
        v231 = *(*a1 + 8);
        v236 = objc_msgSend_wpKind(v231, v232, v233);
        if (v85)
        {
          v243 = objc_opt_class();
          v254 = NSStringFromClass(v243);
        }

        else
        {
          v254 = &stru_28860A0F0;
        }

        if (v216)
        {
          v252 = objc_msgSend_description(v216, v234, v235);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v226, v244, v228, v230, 901, 1, "Expect current character is space when adding attachment. Characters:U+%04x U+%04x U+%04x (wpKind: %u) attachment:%{public}@ (%{public}@ %{public}@)", v257, v248, v79, v236, v51, v254, v252);
        }

        else
        {
          v252 = &stru_28860A0F0;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v226, v234, v228, v230, 901, 1, "Expect current character is space when adding attachment. Characters:U+%04x U+%04x U+%04x (wpKind: %u) attachment:%{public}@ (%{public}@ %{public}@)", v257, v248, v79, v236, v51, v254, &stru_28860A0F0);
        }

        if (v216)
        {
        }

        if (v85)
        {
        }

        TSUCrashBreakpoint();
      }

      abort();
    }

    v259 = 0;
    goto LABEL_41;
  }

LABEL_130:
  v208 = *a1;
  sub_276F40908(v260, v263, v10, v261);
  sub_276F2F8B4(v208, v260, 0);
  sub_276F40794(v260);
  *(*a1 + 472) = 0;

  return sub_276F40794(v263);
}