uint64_t TSCK::ActivityArchive::ByteSizeLong(TSCK::ActivityArchive *this)
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

  v8 = google::protobuf::internal::WireFormatLite::UInt32Size();
  if (v8)
  {
    v9 = v8;
    if ((v8 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else
    {
      v10 = ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v10;
  }

  else
  {
    v9 = 0;
  }

  *(this + 16) = v9;
  v11 = v2 + v8;
  v12 = *(this + 4);
  if (v12)
  {
    if (v12)
    {
      v18 = TSP::UUID::ByteSizeLong(*(this + 9));
      v11 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v12 & 2) == 0)
      {
LABEL_18:
        if ((v12 & 4) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_33;
      }
    }

    else if ((v12 & 2) == 0)
    {
      goto LABEL_18;
    }

    v19 = TSP::Date::ByteSizeLong(*(this + 10));
    v11 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 4) == 0)
    {
LABEL_19:
      if ((v12 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

LABEL_33:
    v20 = TSCK::ActivityNavigationInfoArchive::ByteSizeLong(*(this + 11));
    v11 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 8) == 0)
    {
LABEL_20:
      if ((v12 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_43;
    }

LABEL_34:
    v21 = *(this + 24);
    if (v21 < 0)
    {
      v22 = 11;
    }

    else
    {
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v11 += v22;
    if ((v12 & 0x10) == 0)
    {
LABEL_21:
      if ((v12 & 0x20) == 0)
      {
LABEL_26:
        v11 += ((v12 >> 6) & 2) + ((v12 >> 5) & 2);
        goto LABEL_27;
      }

LABEL_22:
      v13 = *(this + 26);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 11;
      }

      v11 += v15;
      goto LABEL_26;
    }

LABEL_43:
    v25 = *(this + 25);
    if (v25 < 0)
    {
      v26 = 11;
    }

    else
    {
      v26 = ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v11 += v26;
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_27:
  if ((v12 & 0x300) != 0)
  {
    if ((v12 & 0x100) != 0)
    {
      v16 = *(this + 28);
      if (v16 < 0)
      {
        v17 = 11;
      }

      else
      {
        v17 = ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v11 += v17;
    }

    if ((v12 & 0x200) != 0)
    {
      v23 = *(this + 29);
      if (v23 < 0)
      {
        v24 = 11;
      }

      else
      {
        v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v11 += v24;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v11, this + 20);
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

uint64_t TSCK::ActivityArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityArchive::MergeFrom(uint64_t this, const TSCK::ActivityArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662D428(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(v3 + 48);
    sub_27662CF78((v3 + 48), v12 + v11);
    v13 = *(v3 + 56);
    *(v3 + 48) += *(a2 + 12);
    this = memcpy((v13 + 4 * v12), *(a2 + 7), 4 * *(a2 + 12));
  }

  v14 = *(a2 + 4);
  if (v14)
  {
    if (v14)
    {
      *(v3 + 16) |= 1u;
      v15 = *(v3 + 72);
      if (!v15)
      {
        v16 = *(v3 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C994B0](v16);
        *(v3 + 72) = v15;
      }

      if (*(a2 + 9))
      {
        v17 = *(a2 + 9);
      }

      else
      {
        v17 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v15, v17);
      if ((v14 & 2) == 0)
      {
LABEL_11:
        if ((v14 & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_42;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_11;
    }

    *(v3 + 16) |= 2u;
    v18 = *(v3 + 80);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C994A0](v19);
      *(v3 + 80) = v18;
    }

    if (*(a2 + 10))
    {
      v20 = *(a2 + 10);
    }

    else
    {
      v20 = MEMORY[0x277D809C0];
    }

    this = TSP::Date::MergeFrom(v18, v20);
    if ((v14 & 4) == 0)
    {
LABEL_12:
      if ((v14 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_50;
    }

LABEL_42:
    *(v3 + 16) |= 4u;
    v21 = *(v3 + 88);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityNavigationInfoArchive>(v22);
      *(v3 + 88) = v21;
    }

    if (*(a2 + 11))
    {
      v23 = *(a2 + 11);
    }

    else
    {
      v23 = &TSCK::_ActivityNavigationInfoArchive_default_instance_;
    }

    this = TSCK::ActivityNavigationInfoArchive::MergeFrom(v21, v23);
    if ((v14 & 8) == 0)
    {
LABEL_13:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(v3 + 96) = *(a2 + 24);
    if ((v14 & 0x10) == 0)
    {
LABEL_14:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(v3 + 100) = *(a2 + 25);
    if ((v14 & 0x20) == 0)
    {
LABEL_15:
      if ((v14 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(v3 + 104) = *(a2 + 26);
    if ((v14 & 0x40) == 0)
    {
LABEL_16:
      if ((v14 & 0x80) == 0)
      {
LABEL_18:
        *(v3 + 16) |= v14;
        goto LABEL_19;
      }

LABEL_17:
      *(v3 + 109) = *(a2 + 109);
      goto LABEL_18;
    }

LABEL_53:
    *(v3 + 108) = *(a2 + 108);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_19:
  if ((v14 & 0x300) != 0)
  {
    if ((v14 & 0x100) != 0)
    {
      *(v3 + 112) = *(a2 + 28);
    }

    if ((v14 & 0x200) != 0)
    {
      *(v3 + 116) = *(a2 + 29);
    }

    *(v3 + 16) |= v14;
  }

  return this;
}

uint64_t TSCK::ActivityNavigationInfoArchive::MergeFrom(TSCK::ActivityNavigationInfoArchive *this, const TSCK::ActivityNavigationInfoArchive *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {

    return sub_27662D2A0(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

uint64_t *TSCK::ActivityArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityArchive::Clear(result);

    return TSCK::ActivityArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityArchive::CopyFrom(uint64_t *this, const TSCK::ActivityArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityArchive::Clear(this);

    return TSCK::ActivityArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityArchive::IsInitialized(TSCK::ActivityArchive *this)
{
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

  v6 = *(this + 4);
  if (v6)
  {
    result = TSP::UUID::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 2) != 0)
  {
    result = TSP::Date::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 4) == 0)
  {
    return 1;
  }

  result = google::protobuf::internal::ExtensionSet::IsInitialized((*(this + 11) + 16));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::ActivityArchive::InternalSwap(TSCK::ActivityArchive *this, TSCK::ActivityArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  v8 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v7;
  *(a2 + 7) = v8;
  v9 = *(this + 9);
  v10 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v9;
  *(a2 + 10) = v10;
  v11 = *(this + 11);
  v12 = *(this + 12);
  *(this + 88) = *(a2 + 88);
  *(a2 + 11) = v11;
  *(a2 + 12) = v12;
  v13 = *(this + 13);
  v14 = *(this + 14);
  result = *(a2 + 104);
  *(this + 104) = result;
  *(a2 + 13) = v13;
  *(a2 + 14) = v14;
  return result;
}

uint64_t TSCK::ActivityArchive::GetMetadata(TSCK::ActivityArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[74];
  v2 = off_2812F9CC0[75];
  return result;
}

TSP::Color *TSCK::ActivityAuthorArchive::clear_color(TSCK::ActivityAuthorArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSCK::ActivityAuthorArchive *TSCK::ActivityAuthorArchive::ActivityAuthorArchive(TSCK::ActivityAuthorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570E38;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ActivityAuthorArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 7) = v3;
  *(this + 8) = 0;
  *(this + 72) = 0;
  return this;
}

TSCK::ActivityAuthorArchive *TSCK::ActivityAuthorArchive::ActivityAuthorArchive(TSCK::ActivityAuthorArchive *this, const TSCK::ActivityAuthorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570E38;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27662D7D0(this + 1, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v5;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_27662D2A0(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v12 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  v13 = *(a2 + 4);
  if (v13)
  {
    v14 = *(a2 + 6);
    if (*v4)
    {
      v17 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v13 = *(a2 + 4);
  }

  *(this + 7) = v12;
  if ((v13 & 2) != 0)
  {
    v15 = *(a2 + 7);
    if (*v4)
    {
      v18 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v13 = *(a2 + 4);
  }

  if ((v13 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  *(this + 72) = *(a2 + 72);
  return this;
}

void sub_276618340(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x1081C40654DEE2BLL);
  sub_27662D62C((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::ActivityAuthorArchive::~ActivityAuthorArchive(TSCK::ActivityAuthorArchive *this)
{
  v2 = *(this + 6);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C999C0](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 7);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277C999C0](v4, 0x1012C40EC159624);
  }

  if (this != &TSCK::_ActivityAuthorArchive_default_instance_)
  {
    v5 = *(this + 8);
    if (v5)
    {
      TSP::Color::~Color(v5);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
  sub_27662D62C(this + 3);
}

{
  TSCK::ActivityAuthorArchive::~ActivityAuthorArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityAuthorArchive::default_instance(TSCK::ActivityAuthorArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityAuthorArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityAuthorArchive_default_instance_;
}

uint64_t *TSCK::ActivityAuthorArchive::Clear(TSCK::ActivityAuthorArchive *this)
{
  result = sub_27662D254(this + 24);
  v3 = *(this + 4);
  if ((v3 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v6 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v7 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v7 + 23) & 0x80000000) == 0)
  {
    *v7 = 0;
    *(v7 + 23) = 0;
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = TSP::Color::Clear(*(this + 8));
    goto LABEL_6;
  }

  **v7 = 0;
  *(v7 + 8) = 0;
  if ((v3 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v5 = *(this + 8);
  v4 = this + 8;
  v4[64] = 0;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_27662D2EC(v4);
  }

  return result;
}

google::protobuf::internal *TSCK::ActivityAuthorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v8 = (v39 + 1);
      v9 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v10 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_63;
      }

      v8 = TagFallback;
      v9 = v34;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 1u;
          v30 = *(a1 + 8);
          if (v30)
          {
            v37 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

LABEL_47:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v17 = google::protobuf::internal::InlineGreedyStringParser();
        }

        else
        {
          if (v11 != 2 || v9 != 18)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 4u;
          v14 = *(a1 + 64);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C994C0](v15);
            LODWORD(v14) = v16;
            *(a1 + 64) = v16;
            v8 = v39;
          }

          v17 = sub_276635C20(a3, v14, v8);
        }

LABEL_55:
        v39 = v17;
        if (!v17)
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      }

      if (v11 == 3)
      {
        if (v9 != 26)
        {
          goto LABEL_48;
        }

        v18 = v8 - 1;
        while (2)
        {
          v39 = (v18 + 1);
          v19 = *(a1 + 40);
          if (v19)
          {
            v20 = *(a1 + 32);
            v21 = *v19;
            if (v20 < *v19)
            {
              *(a1 + 32) = v20 + 1;
              v22 = *&v19[2 * v20 + 2];
              goto LABEL_35;
            }

            if (v21 == *(a1 + 36))
            {
LABEL_33:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v19 = *(a1 + 40);
              v21 = *v19;
            }

            *v19 = v21 + 1;
            v24 = sub_27662CC78(*(a1 + 24));
            v25 = *(a1 + 32);
            v26 = *(a1 + 40) + 8 * v25;
            *(a1 + 32) = v25 + 1;
            *(v26 + 8) = v24;
LABEL_35:
            v18 = google::protobuf::internal::InlineGreedyStringParser();
            v39 = v18;
            if (!v18)
            {
              goto LABEL_63;
            }

            if (*a3 <= v18 || *v18 != 26)
            {
              goto LABEL_56;
            }

            continue;
          }

          break;
        }

        v23 = *(a1 + 36);
        goto LABEL_33;
      }

      if (v11 != 4)
      {
        if (v11 == 5 && v9 == 42)
        {
          *(a1 + 16) |= 2u;
          v12 = *(a1 + 8);
          if (v12)
          {
            v38 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
          }

          goto LABEL_47;
        }

LABEL_48:
        if (v9)
        {
          v31 = (v9 & 7) == 4;
        }

        else
        {
          v31 = 1;
        }

        if (v31)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27662D0DC((a1 + 8));
        }

        v17 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_55;
      }

      if (v9 != 32)
      {
        goto LABEL_48;
      }

      v6 |= 8u;
      v28 = (v8 + 1);
      v27 = *v8;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_43;
      }

      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v28 = (v8 + 2);
LABEL_43:
        v39 = v28;
        *(a1 + 72) = v27 != 0;
        goto LABEL_56;
      }

      v35 = google::protobuf::internal::VarintParseSlow64(v8, v27);
      v39 = v35;
      *(a1 + 72) = v36 != 0;
      if (!v35)
      {
LABEL_63:
        v39 = 0;
        goto LABEL_2;
      }

LABEL_56:
      v32 = *(a3 + 92);
      if (sub_27662CC00(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v8 = (v39 + 2);
LABEL_6:
    v39 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v39;
}

unsigned __int8 *TSCK::ActivityAuthorArchive::_InternalSerialize(TSCK::ActivityAuthorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2765FB858(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 8);
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

    v4 = TSP::Color::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 8);
  if (v13 >= 1)
  {
    v14 = 8;
    do
    {
      v4 = sub_27660B498(a3, 3, *(*(this + 5) + v14), v4);
      v14 += 8;
      --v13;
    }

    while (v13);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 72);
    *v4 = 32;
    v4[1] = v15;
    v4 += 2;
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_2765FB858(a3, 5, (*(this + 7) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCK::ActivityAuthorArchive::ByteSizeLong(TSCK::ActivityAuthorArchive *this)
{
  v2 = *(this + 8);
  if (v2 < 1)
  {
    v4 = *(this + 8);
  }

  else
  {
    v3 = (*(this + 5) + 8);
    v4 = *(this + 8);
    do
    {
      v5 = *v3++;
      v6 = *(v5 + 23);
      v7 = *(v5 + 8);
      if ((v6 & 0x80u) == 0)
      {
        v7 = v6;
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      --v2;
    }

    while (v2);
  }

  v8 = *(this + 4);
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v11 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v4 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 2) == 0)
      {
LABEL_11:
        if ((v8 & 4) == 0)
        {
LABEL_13:
          v4 += (v8 >> 2) & 2;
          goto LABEL_14;
        }

LABEL_12:
        v9 = TSP::Color::ByteSizeLong(*(this + 8));
        v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_13;
      }
    }

    else if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    v14 = *(this + 7) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
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

uint64_t TSCK::ActivityAuthorArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityAuthorArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityAuthorArchive::MergeFrom(uint64_t this, const TSCK::ActivityAuthorArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662D7D0((v3 + 24), v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 0xF) != 0)
  {
    if (v11)
    {
      v12 = *(a2 + 6);
      *(v3 + 16) |= 1u;
      v13 = *(v3 + 8);
      if (v13)
      {
        v19 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v11 & 2) == 0)
      {
LABEL_9:
        if ((v11 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_20;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_9;
    }

    v14 = *(a2 + 7);
    *(v3 + 16) |= 2u;
    v15 = *(v3 + 8);
    if (v15)
    {
      v20 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v11 & 4) == 0)
    {
LABEL_10:
      if ((v11 & 8) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v11;
        return this;
      }

LABEL_11:
      *(v3 + 72) = *(a2 + 72);
      goto LABEL_12;
    }

LABEL_20:
    *(v3 + 16) |= 4u;
    v16 = *(v3 + 64);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C994C0](v17);
      *(v3 + 64) = v16;
    }

    if (*(a2 + 8))
    {
      v18 = *(a2 + 8);
    }

    else
    {
      v18 = MEMORY[0x277D809E8];
    }

    this = TSP::Color::MergeFrom(v16, v18);
    if ((v11 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

TSCK::ActivityAuthorArchive *TSCK::ActivityAuthorArchive::CopyFrom(TSCK::ActivityAuthorArchive *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityAuthorArchive::Clear(result);

    return TSCK::ActivityAuthorArchive::MergeFrom(v4, a2);
  }

  return result;
}

TSCK::ActivityAuthorArchive *TSCK::ActivityAuthorArchive::CopyFrom(TSCK::ActivityAuthorArchive *this, const TSCK::ActivityAuthorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityAuthorArchive::Clear(this);

    return TSCK::ActivityAuthorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityAuthorArchive::IsInitialized(TSCK::ActivityAuthorArchive *this)
{
  if ((*(this + 16) & 4) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(this + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::ActivityAuthorArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
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
  v10 = this[4].n128_u64[0];
  this[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v10;
  LOBYTE(v10) = this[4].n128_u8[8];
  this[4].n128_u8[8] = a2[4].n128_u8[8];
  a2[4].n128_u8[8] = v10;
  return result;
}

uint64_t TSCK::ActivityAuthorArchive::GetMetadata(TSCK::ActivityAuthorArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[76];
  v2 = off_2812F9CC0[77];
  return result;
}

uint64_t TSCK::CommandActivityBehaviorArchive::clear_selection_path_storages(uint64_t this)
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

TSCK::CommandActivityBehaviorArchive *TSCK::CommandActivityBehaviorArchive::CommandActivityBehaviorArchive(TSCK::CommandActivityBehaviorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570EE8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CommandActivityBehaviorArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  return this;
}

TSCK::CommandActivityBehaviorArchive *TSCK::CommandActivityBehaviorArchive::CommandActivityBehaviorArchive(TSCK::CommandActivityBehaviorArchive *this, const TSCK::CommandActivityBehaviorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570EE8;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27662D428(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v5;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_27662D2A0(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 6) = 0;
  v12 = *(a2 + 7);
  *(this + 16) = *(a2 + 16);
  *(this + 7) = v12;
  return this;
}

void sub_27661923C(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x10A1C40B745593BLL);
  sub_27662D3A4((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::CommandActivityBehaviorArchive::~CommandActivityBehaviorArchive(TSCK::CommandActivityBehaviorArchive *this)
{
  if (this != &TSCK::_CommandActivityBehaviorArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSCK::ActivityNavigationInfoArchive::~ActivityNavigationInfoArchive(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
  sub_27662D3A4(this + 3);
}

{
  TSCK::CommandActivityBehaviorArchive::~CommandActivityBehaviorArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::CommandActivityBehaviorArchive::default_instance(TSCK::CommandActivityBehaviorArchive *this)
{
  if (atomic_load_explicit(scc_info_CommandActivityBehaviorArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CommandActivityBehaviorArchive_default_instance_;
}

uint64_t *TSCK::CommandActivityBehaviorArchive::Clear(uint64_t *this)
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

  v5 = *(v1 + 16);
  if (v5)
  {
    this = TSCK::ActivityNavigationInfoArchive::Clear(*(v1 + 48));
  }

  if ((v5 & 0xE) != 0)
  {
    *(v1 + 64) = 0;
    *(v1 + 56) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27662D2EC(v6);
  }

  return this;
}

google::protobuf::internal *TSCK::CommandActivityBehaviorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v41) & 1) == 0)
  {
    while (1)
    {
      v8 = (v41 + 1);
      v9 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v10 - 128));
      v41 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_76;
      }

      v8 = TagFallback;
      v9 = v38;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 != 1)
        {
          if (v11 != 2 || v9 != 16)
          {
            goto LABEL_55;
          }

          v17 = (v8 + 1);
          v16 = *v8;
          if ((v16 & 0x8000000000000000) != 0)
          {
            v18 = *v17;
            v16 = (v18 << 7) + v16 - 128;
            if ((v18 & 0x80000000) == 0)
            {
              v17 = (v8 + 2);
              goto LABEL_27;
            }

            v41 = google::protobuf::internal::VarintParseSlow64(v8, v16);
            if (!v41)
            {
LABEL_76:
              v41 = 0;
              goto LABEL_2;
            }
          }

          else
          {
LABEL_27:
            v41 = v17;
          }

          if (v16 > 0xD)
          {
            sub_2766371C8((a1 + 8));
          }

          else
          {
            *(a1 + 16) |= 2u;
            *(a1 + 56) = v16;
          }

          goto LABEL_63;
        }

        if (v9 != 10)
        {
          goto LABEL_55;
        }

        v25 = v8 - 1;
        while (2)
        {
          v26 = (v25 + 1);
          v41 = (v25 + 1);
          v27 = *(a1 + 40);
          if (!v27)
          {
            v28 = *(a1 + 36);
            goto LABEL_45;
          }

          v34 = *(a1 + 32);
          v29 = *v27;
          if (v34 >= *v27)
          {
            if (v29 == *(a1 + 36))
            {
LABEL_45:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v27 = *(a1 + 40);
              v29 = *v27;
            }

            *v27 = v29 + 1;
            v30 = MEMORY[0x277C994F0](*(a1 + 24));
            LODWORD(v31) = v30;
            v32 = *(a1 + 32);
            v33 = *(a1 + 40) + 8 * v32;
            *(a1 + 32) = v32 + 1;
            *(v33 + 8) = v30;
            v26 = v41;
          }

          else
          {
            *(a1 + 32) = v34 + 1;
            v31 = *&v27[2 * v34 + 2];
          }

          v25 = sub_2766358E0(a3, v31, v26);
          v41 = v25;
          if (!v25)
          {
            goto LABEL_76;
          }

          if (*a3 <= v25 || *v25 != 10)
          {
            goto LABEL_63;
          }

          continue;
        }
      }

      if (v11 != 3)
      {
        if (v11 == 4)
        {
          if (v9 == 34)
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

              v22 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityNavigationInfoArchive>(v23);
              *(a1 + 48) = v22;
              v8 = v41;
            }

            v24 = sub_276636850(a3, v22, v8);
LABEL_62:
            v41 = v24;
            if (!v24)
            {
              goto LABEL_76;
            }

            goto LABEL_63;
          }

LABEL_55:
          if (v9)
          {
            v35 = (v9 & 7) == 4;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v24 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_62;
        }

        if (v11 != 5 || v9 != 40)
        {
          goto LABEL_55;
        }

        v13 = (v8 + 1);
        v12 = *v8;
        if ((v12 & 0x8000000000000000) != 0)
        {
          v14 = *v13;
          v12 = (v14 << 7) + v12 - 128;
          if ((v14 & 0x80000000) == 0)
          {
            v13 = (v8 + 2);
            goto LABEL_15;
          }

          v41 = google::protobuf::internal::VarintParseSlow64(v8, v12);
          if (!v41)
          {
            goto LABEL_76;
          }
        }

        else
        {
LABEL_15:
          v41 = v13;
        }

        if (v12 > 0x1B)
        {
          sub_276637204((a1 + 8));
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 64) = v12;
        }

        goto LABEL_63;
      }

      if (v9 != 24)
      {
        goto LABEL_55;
      }

      v6 |= 4u;
      v20 = (v8 + 1);
      v19 = *v8;
      if ((v19 & 0x8000000000000000) == 0)
      {
        goto LABEL_34;
      }

      v21 = *v20;
      v19 = (v21 << 7) + v19 - 128;
      if ((v21 & 0x80000000) == 0)
      {
        v20 = (v8 + 2);
LABEL_34:
        v41 = v20;
        *(a1 + 60) = v19 != 0;
        goto LABEL_63;
      }

      v39 = google::protobuf::internal::VarintParseSlow64(v8, v19);
      v41 = v39;
      *(a1 + 60) = v40 != 0;
      if (!v39)
      {
        goto LABEL_76;
      }

LABEL_63:
      v36 = *(a3 + 92);
      if (sub_27662CC00(a3, &v41))
      {
        goto LABEL_2;
      }
    }

    v8 = (v41 + 2);
LABEL_6:
    v41 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v41;
}

unsigned __int8 *TSCK::CommandActivityBehaviorArchive::_InternalSerialize(TSCK::CommandActivityBehaviorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if ((v13 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 14);
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
        if ((v13 & 4) != 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        a2[2] = v15;
        a2 += 3;
        if ((v13 & 4) != 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      a2[1] = v14;
      a2 += 2;
      if ((v13 & 4) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_15:
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

  if ((v13 & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 60);
  *a2 = 24;
  a2[1] = v18;
  a2 += 2;
  if ((v13 & 1) == 0)
  {
LABEL_16:
    if ((v13 & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

LABEL_32:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 6);
  *a2 = 34;
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

  a2 = TSCK::ActivityNavigationInfoArchive::_InternalSerialize(v19, v21, a3);
  if ((v13 & 8) != 0)
  {
LABEL_42:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 16);
    *a2 = 40;
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
      }

      else
      {
        a2[2] = v26;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v25;
      a2 += 2;
    }
  }

LABEL_51:
  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::CommandActivityBehaviorArchive::ByteSizeLong(TSCK::CommandActivityBehaviorArchive *this)
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

  v8 = *(this + 4);
  if ((v8 & 0xF) != 0)
  {
    if (v8)
    {
      v9 = TSCK::ActivityNavigationInfoArchive::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v10 = *(this + 14);
      if (v10 < 0)
      {
        v11 = 11;
      }

      else
      {
        v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v11;
    }

    v2 += (v8 >> 1) & 2;
    if ((v8 & 8) != 0)
    {
      v12 = *(this + 16);
      v13 = ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v12 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = 11;
      }

      v2 += v14;
    }
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

uint64_t TSCK::CommandActivityBehaviorArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::CommandActivityBehaviorArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CommandActivityBehaviorArchive::MergeFrom(uint64_t this, const TSCK::CommandActivityBehaviorArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662D428(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 0xF) != 0)
  {
    if (v11)
    {
      *(v3 + 16) |= 1u;
      v12 = *(v3 + 48);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityNavigationInfoArchive>(v13);
        *(v3 + 48) = v12;
      }

      if (*(a2 + 6))
      {
        v14 = *(a2 + 6);
      }

      else
      {
        v14 = &TSCK::_ActivityNavigationInfoArchive_default_instance_;
      }

      this = TSCK::ActivityNavigationInfoArchive::MergeFrom(v12, v14);
      if ((v11 & 2) == 0)
      {
LABEL_9:
        if ((v11 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_23;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_9;
    }

    *(v3 + 56) = *(a2 + 14);
    if ((v11 & 4) == 0)
    {
LABEL_10:
      if ((v11 & 8) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v11;
        return this;
      }

LABEL_11:
      *(v3 + 64) = *(a2 + 16);
      goto LABEL_12;
    }

LABEL_23:
    *(v3 + 60) = *(a2 + 60);
    if ((v11 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t *TSCK::CommandActivityBehaviorArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CommandActivityBehaviorArchive::Clear(result);

    return TSCK::CommandActivityBehaviorArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::CommandActivityBehaviorArchive::CopyFrom(uint64_t *this, const TSCK::CommandActivityBehaviorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CommandActivityBehaviorArchive::Clear(this);

    return TSCK::CommandActivityBehaviorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CommandActivityBehaviorArchive::IsInitialized(TSCK::CommandActivityBehaviorArchive *this)
{
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

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = google::protobuf::internal::ExtensionSet::IsInitialized((*(this + 6) + 16));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::CommandActivityBehaviorArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
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
  LODWORD(v7) = this[4].n128_u32[0];
  this[4].n128_u32[0] = a2[4].n128_u32[0];
  a2[4].n128_u32[0] = v7;
  return result;
}

uint64_t TSCK::CommandActivityBehaviorArchive::GetMetadata(TSCK::CommandActivityBehaviorArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[78];
  v2 = off_2812F9CC0[79];
  return result;
}

TSCK::ActivityCursorCollectionArchive *TSCK::ActivityCursorCollectionArchive::ActivityCursorCollectionArchive(TSCK::ActivityCursorCollectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288570F98;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ActivityCursorCollectionArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  return this;
}

TSCK::ActivityCursorCollectionArchive *TSCK::ActivityCursorCollectionArchive::ActivityCursorCollectionArchive(TSCK::ActivityCursorCollectionArchive *this, const TSCK::ActivityCursorCollectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288570F98;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27662DEB0(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v5;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_27662D2A0(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v12 = *(a2 + 4);
  if (v12)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v12 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v12 & 8) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v12 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  return this;
}

void sub_27661A28C(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x10A1C40F07B10CBLL);
  sub_27662DE2C((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::ActivityCursorCollectionArchive::~ActivityCursorCollectionArchive(TSCK::ActivityCursorCollectionArchive *this)
{
  sub_27661A318(this);
  sub_2765F8538(this + 1);
  sub_27662DE2C(this + 3);
}

{
  TSCK::ActivityCursorCollectionArchive::~ActivityCursorCollectionArchive(this);

  JUMPOUT(0x277C999C0);
}

void *sub_27661A318(void *result)
{
  if (result != &TSCK::_ActivityCursorCollectionArchive_default_instance_)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      TSCK::CollaboratorCursorArchive::~CollaboratorCursorArchive(v2);
      MEMORY[0x277C999C0]();
    }

    v3 = v1[7];
    if (v3)
    {
      TSCK::CollaboratorCursorArchive::~CollaboratorCursorArchive(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = v1[8];
    if (v4)
    {
      TSCK::CollaboratorCursorArchive::~CollaboratorCursorArchive(v4);
      MEMORY[0x277C999C0]();
    }

    v5 = v1[9];
    if (v5)
    {
      TSCK::CollaboratorCursorArchive::~CollaboratorCursorArchive(v5);
      MEMORY[0x277C999C0]();
    }

    result = v1[10];
    if (result)
    {
      TSCK::CollaboratorCursorArchive::~CollaboratorCursorArchive(result);

      JUMPOUT(0x277C999C0);
    }
  }

  return result;
}

void *TSCK::ActivityCursorCollectionArchive::default_instance(TSCK::ActivityCursorCollectionArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityCursorCollectionArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityCursorCollectionArchive_default_instance_;
}

uint64_t *TSCK::ActivityCursorCollectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::CollaboratorCursorArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v5 = *(v1 + 16);
  if ((v5 & 0x1F) == 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    this = TSCK::CollaboratorCursorArchive::Clear(*(v1 + 48));
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

LABEL_18:
      this = TSCK::CollaboratorCursorArchive::Clear(*(v1 + 64));
      if ((v5 & 8) == 0)
      {
LABEL_10:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  this = TSCK::CollaboratorCursorArchive::Clear(*(v1 + 56));
  if ((v5 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v5 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_19:
  this = TSCK::CollaboratorCursorArchive::Clear(*(v1 + 72));
  if ((v5 & 0x10) != 0)
  {
LABEL_11:
    this = TSCK::CollaboratorCursorArchive::Clear(*(v1 + 80));
  }

LABEL_12:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27662D2EC(v6);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityCursorCollectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = *(a3 + 92);
  while (1)
  {
    if (sub_27662CC00(a3, &v32))
    {
      return v32;
    }

    v6 = (v32 + 1);
    v7 = *v32;
    if ((*v32 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v32 + 2);
LABEL_6:
      v32 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v8 - 128));
    v32 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v30;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 3)
    {
      if (v9 == 4)
      {
        if (v7 != 34)
        {
          goto LABEL_60;
        }

        *(a1 + 16) |= 4u;
        v11 = *(a1 + 64);
        if (v11)
        {
          goto LABEL_57;
        }

        v23 = *(a1 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v23);
        *(a1 + 64) = v11;
      }

      else if (v9 == 5)
      {
        if (v7 != 42)
        {
          goto LABEL_60;
        }

        *(a1 + 16) |= 8u;
        v11 = *(a1 + 72);
        if (v11)
        {
          goto LABEL_57;
        }

        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v25);
        *(a1 + 72) = v11;
      }

      else
      {
        if (v9 != 6 || v7 != 50)
        {
          goto LABEL_60;
        }

        *(a1 + 16) |= 0x10u;
        v11 = *(a1 + 80);
        if (v11)
        {
          goto LABEL_57;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v13);
        *(a1 + 80) = v11;
      }

LABEL_56:
      v6 = v32;
      goto LABEL_57;
    }

    if (v9 == 1)
    {
      if (v7 != 10)
      {
        goto LABEL_60;
      }

      v14 = (v6 - 1);
      while (2)
      {
        v15 = (v14 + 1);
        v32 = (v14 + 1);
        v16 = *(a1 + 40);
        if (!v16)
        {
          v17 = *(a1 + 36);
          goto LABEL_31;
        }

        v22 = *(a1 + 32);
        v18 = *v16;
        if (v22 >= *v16)
        {
          if (v18 == *(a1 + 36))
          {
LABEL_31:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v18 = *v16;
          }

          *v16 = v18 + 1;
          v19 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(*(a1 + 24));
          v20 = *(a1 + 32);
          v21 = *(a1 + 40) + 8 * v20;
          *(a1 + 32) = v20 + 1;
          *(v21 + 8) = v19;
          v15 = v32;
        }

        else
        {
          *(a1 + 32) = v22 + 1;
          v19 = *&v16[2 * v22 + 2];
        }

        v14 = sub_276636920(a3, v19, v15);
        v32 = v14;
        if (!v14)
        {
          return 0;
        }

        if (*a3 <= v14 || *v14 != 10)
        {
          goto LABEL_59;
        }

        continue;
      }
    }

    if (v9 == 2)
    {
      if (v7 != 18)
      {
        goto LABEL_60;
      }

      *(a1 + 16) |= 1u;
      v11 = *(a1 + 48);
      if (v11)
      {
        goto LABEL_57;
      }

      v24 = *(a1 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v24);
      *(a1 + 48) = v11;
      goto LABEL_56;
    }

    if (v9 == 3 && v7 == 26)
    {
      *(a1 + 16) |= 2u;
      v11 = *(a1 + 56);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v12);
        *(a1 + 56) = v11;
        goto LABEL_56;
      }

LABEL_57:
      v26 = sub_276636920(a3, v11, v6);
      goto LABEL_58;
    }

LABEL_60:
    if (!v7 || (v7 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v26 = google::protobuf::internal::UnknownFieldParse();
LABEL_58:
    v32 = v26;
    if (!v26)
    {
      return 0;
    }

LABEL_59:
    v27 = *(a3 + 92);
  }

  *(a3 + 80) = v7 - 1;
  return v32;
}

unsigned __int8 *TSCK::ActivityCursorCollectionArchive::_InternalSerialize(TSCK::ActivityCursorCollectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      v8 = *(v7 + 11);
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

      a2 = TSCK::CollaboratorCursorArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 4);
  if (v13)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 6);
    *a2 = 18;
    v15 = *(v14 + 11);
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

    a2 = TSCK::CollaboratorCursorArchive::_InternalSerialize(v14, v16, a3);
    if ((v13 & 2) == 0)
    {
LABEL_15:
      if ((v13 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_39;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 7);
  *a2 = 26;
  v21 = *(v20 + 11);
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

  a2 = TSCK::CollaboratorCursorArchive::_InternalSerialize(v20, v22, a3);
  if ((v13 & 4) == 0)
  {
LABEL_16:
    if ((v13 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 8);
  *a2 = 34;
  v27 = *(v26 + 11);
  if (v27 > 0x7F)
  {
    a2[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = a2 + 3;
      do
      {
        *(v28 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++v28;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(v28 - 1) = v30;
    }

    else
    {
      a2[2] = v29;
      v28 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v27;
    v28 = a2 + 2;
  }

  a2 = TSCK::CollaboratorCursorArchive::_InternalSerialize(v26, v28, a3);
  if ((v13 & 8) == 0)
  {
LABEL_17:
    if ((v13 & 0x10) == 0)
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

  v32 = *(this + 9);
  *a2 = 42;
  v33 = *(v32 + 11);
  if (v33 > 0x7F)
  {
    a2[1] = v33 | 0x80;
    v35 = v33 >> 7;
    if (v33 >> 14)
    {
      v34 = a2 + 3;
      do
      {
        *(v34 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++v34;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(v34 - 1) = v36;
    }

    else
    {
      a2[2] = v35;
      v34 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v33;
    v34 = a2 + 2;
  }

  a2 = TSCK::CollaboratorCursorArchive::_InternalSerialize(v32, v34, a3);
  if ((v13 & 0x10) != 0)
  {
LABEL_59:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v38 = *(this + 10);
    *a2 = 50;
    v39 = *(v38 + 11);
    if (v39 > 0x7F)
    {
      a2[1] = v39 | 0x80;
      v41 = v39 >> 7;
      if (v39 >> 14)
      {
        v40 = a2 + 3;
        do
        {
          *(v40 - 1) = v41 | 0x80;
          v42 = v41 >> 7;
          ++v40;
          v43 = v41 >> 14;
          v41 >>= 7;
        }

        while (v43);
        *(v40 - 1) = v42;
      }

      else
      {
        a2[2] = v41;
        v40 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v39;
      v40 = a2 + 2;
    }

    a2 = TSCK::CollaboratorCursorArchive::_InternalSerialize(v38, v40, a3);
  }

LABEL_69:
  v44 = *(this + 1);
  if ((v44 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v44 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityCursorCollectionArchive::ByteSizeLong(TSCK::ActivityCursorCollectionArchive *this)
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
      v7 = TSCK::CollaboratorCursorArchive::ByteSizeLong(v6);
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
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = TSCK::CollaboratorCursorArchive::ByteSizeLong(*(this + 6));
    v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_20:
      v13 = TSCK::CollaboratorCursorArchive::ByteSizeLong(*(this + 8));
      v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v8 & 8) == 0)
      {
LABEL_14:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  v12 = TSCK::CollaboratorCursorArchive::ByteSizeLong(*(this + 7));
  v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 4) != 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  if ((v8 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_21:
  v14 = TSCK::CollaboratorCursorArchive::ByteSizeLong(*(this + 9));
  v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    v9 = TSCK::CollaboratorCursorArchive::ByteSizeLong(*(this + 10));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
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

uint64_t TSCK::ActivityCursorCollectionArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityCursorCollectionArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityCursorCollectionArchive::MergeFrom(uint64_t this, const TSCK::ActivityCursorCollectionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662DEB0(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 0x1F) == 0)
  {
    return this;
  }

  if (v11)
  {
    *(v3 + 16) |= 1u;
    v12 = *(v3 + 48);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v13);
      *(v3 + 48) = v12;
    }

    if (*(a2 + 6))
    {
      v14 = *(a2 + 6);
    }

    else
    {
      v14 = &TSCK::_CollaboratorCursorArchive_default_instance_;
    }

    this = TSCK::CollaboratorCursorArchive::MergeFrom(v12, v14);
    if ((v11 & 2) == 0)
    {
LABEL_9:
      if ((v11 & 4) == 0)
      {
        goto LABEL_10;
      }

LABEL_29:
      *(v3 + 16) |= 4u;
      v18 = *(v3 + 64);
      if (!v18)
      {
        v19 = *(v3 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v19);
        *(v3 + 64) = v18;
      }

      if (*(a2 + 8))
      {
        v20 = *(a2 + 8);
      }

      else
      {
        v20 = &TSCK::_CollaboratorCursorArchive_default_instance_;
      }

      this = TSCK::CollaboratorCursorArchive::MergeFrom(v18, v20);
      if ((v11 & 8) == 0)
      {
LABEL_11:
        if ((v11 & 0x10) == 0)
        {
          return this;
        }

        goto LABEL_45;
      }

      goto LABEL_37;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v3 + 16) |= 2u;
  v15 = *(v3 + 56);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v16);
    *(v3 + 56) = v15;
  }

  if (*(a2 + 7))
  {
    v17 = *(a2 + 7);
  }

  else
  {
    v17 = &TSCK::_CollaboratorCursorArchive_default_instance_;
  }

  this = TSCK::CollaboratorCursorArchive::MergeFrom(v15, v17);
  if ((v11 & 4) != 0)
  {
    goto LABEL_29;
  }

LABEL_10:
  if ((v11 & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_37:
  *(v3 + 16) |= 8u;
  v21 = *(v3 + 72);
  if (!v21)
  {
    v22 = *(v3 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v22);
    *(v3 + 72) = v21;
  }

  if (*(a2 + 9))
  {
    v23 = *(a2 + 9);
  }

  else
  {
    v23 = &TSCK::_CollaboratorCursorArchive_default_instance_;
  }

  this = TSCK::CollaboratorCursorArchive::MergeFrom(v21, v23);
  if ((v11 & 0x10) != 0)
  {
LABEL_45:
    *(v3 + 16) |= 0x10u;
    v24 = *(v3 + 80);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = google::protobuf::Arena::CreateMaybeMessage<TSCK::CollaboratorCursorArchive>(v25);
      *(v3 + 80) = v24;
    }

    if (*(a2 + 10))
    {
      v26 = *(a2 + 10);
    }

    else
    {
      v26 = &TSCK::_CollaboratorCursorArchive_default_instance_;
    }

    return TSCK::CollaboratorCursorArchive::MergeFrom(v24, v26);
  }

  return this;
}

uint64_t *TSCK::ActivityCursorCollectionArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityCursorCollectionArchive::Clear(result);

    return TSCK::ActivityCursorCollectionArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityCursorCollectionArchive::CopyFrom(uint64_t *this, const TSCK::ActivityCursorCollectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityCursorCollectionArchive::Clear(this);

    return TSCK::ActivityCursorCollectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityCursorCollectionArchive::IsInitialized(TSCK::ActivityCursorCollectionArchive *this)
{
  v2 = *(this + 8);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSCK::CollaboratorCursorArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    result = TSCK::CollaboratorCursorArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 2) != 0)
  {
    result = TSCK::CollaboratorCursorArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 4) != 0)
  {
    result = TSCK::CollaboratorCursorArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 8) != 0)
  {
    result = TSCK::CollaboratorCursorArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x10) == 0)
  {
    return 1;
  }

  result = TSCK::CollaboratorCursorArchive::IsInitialized(*(this + 10));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSCK::ActivityCursorCollectionArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
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
  this[3] = a2[3];
  a2[3].n128_u64[0] = v7;
  a2[3].n128_u64[1] = v8;
  v9 = this[4].n128_u64[0];
  v10 = this[4].n128_u64[1];
  result = a2[4];
  this[4] = result;
  a2[4].n128_u64[0] = v9;
  a2[4].n128_u64[1] = v10;
  v12 = this[5].n128_u64[0];
  this[5].n128_u64[0] = a2[5].n128_u64[0];
  a2[5].n128_u64[0] = v12;
  return result;
}

uint64_t TSCK::ActivityCursorCollectionArchive::GetMetadata(TSCK::ActivityCursorCollectionArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[80];
  v2 = off_2812F9CC0[81];
  return result;
}

TSCK::ActivityCursorCollectionPersistenceWrapperArchive *TSCK::ActivityCursorCollectionPersistenceWrapperArchive::ActivityCursorCollectionPersistenceWrapperArchive(TSCK::ActivityCursorCollectionPersistenceWrapperArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288571048;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityCursorCollectionPersistenceWrapperArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288571048;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityCursorCollectionPersistenceWrapperArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::ActivityCursorCollectionPersistenceWrapperArchive *TSCK::ActivityCursorCollectionPersistenceWrapperArchive::ActivityCursorCollectionPersistenceWrapperArchive(TSCK::ActivityCursorCollectionPersistenceWrapperArchive *this, const TSCK::ActivityCursorCollectionPersistenceWrapperArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288571048;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSCK::ActivityCursorCollectionPersistenceWrapperArchive::~ActivityCursorCollectionPersistenceWrapperArchive(TSCK::ActivityCursorCollectionPersistenceWrapperArchive *this)
{
  if (this != &TSCK::_ActivityCursorCollectionPersistenceWrapperArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCK::ActivityCursorCollectionArchive::~ActivityCursorCollectionArchive(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityCursorCollectionPersistenceWrapperArchive::~ActivityCursorCollectionPersistenceWrapperArchive(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityCursorCollectionPersistenceWrapperArchive::default_instance(TSCK::ActivityCursorCollectionPersistenceWrapperArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityCursorCollectionPersistenceWrapperArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityCursorCollectionPersistenceWrapperArchive_default_instance_;
}

uint64_t *TSCK::ActivityCursorCollectionPersistenceWrapperArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSCK::ActivityCursorCollectionArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityCursorCollectionPersistenceWrapperArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v17) & 1) == 0)
  {
    v6 = (v17 + 1);
    v7 = *v17;
    if (*v17 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v8 - 128));
        v17 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v15;
        goto LABEL_7;
      }

      v6 = (v17 + 2);
    }

    v17 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityCursorCollectionArchive>(v12);
        *(a1 + 24) = v11;
        v6 = v17;
      }

      v10 = sub_2766369F0(a3, v11, v6);
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
        return v17;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v17 = v10;
    if (!v10)
    {
      return 0;
    }

    v13 = *(a3 + 92);
  }

  return v17;
}

unsigned __int8 *TSCK::ActivityCursorCollectionPersistenceWrapperArchive::_InternalSerialize(TSCK::ActivityCursorCollectionPersistenceWrapperArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSCK::ActivityCursorCollectionArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityCursorCollectionPersistenceWrapperArchive::ByteSizeLong(TSCK::ActivityCursorCollectionArchive **this)
{
  if (this[2])
  {
    v3 = TSCK::ActivityCursorCollectionArchive::ByteSizeLong(this[3]);
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

uint64_t TSCK::ActivityCursorCollectionPersistenceWrapperArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityCursorCollectionPersistenceWrapperArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityCursorCollectionPersistenceWrapperArchive::MergeFrom(uint64_t this, const TSCK::ActivityCursorCollectionPersistenceWrapperArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityCursorCollectionArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSCK::_ActivityCursorCollectionArchive_default_instance_;
    }

    return TSCK::ActivityCursorCollectionArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSCK::ActivityCursorCollectionPersistenceWrapperArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityCursorCollectionPersistenceWrapperArchive::Clear(result);

    return TSCK::ActivityCursorCollectionPersistenceWrapperArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityCursorCollectionPersistenceWrapperArchive::CopyFrom(uint64_t *this, const TSCK::ActivityCursorCollectionPersistenceWrapperArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityCursorCollectionPersistenceWrapperArchive::Clear(this);

    return TSCK::ActivityCursorCollectionPersistenceWrapperArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityCursorCollectionPersistenceWrapperArchive::IsInitialized(TSCK::ActivityCursorCollectionPersistenceWrapperArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSCK::ActivityCursorCollectionArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSCK::ActivityCursorCollectionPersistenceWrapperArchive::InternalSwap(TSCK::ActivityCursorCollectionPersistenceWrapperArchive *this, TSCK::ActivityCursorCollectionPersistenceWrapperArchive *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSCK::ActivityCursorCollectionPersistenceWrapperArchive::GetMetadata(TSCK::ActivityCursorCollectionPersistenceWrapperArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[82];
  v2 = off_2812F9CC0[83];
  return result;
}

TSCK::ActivityNavigationInfoArchive *TSCK::ActivityNavigationInfoArchive::ActivityNavigationInfoArchive(TSCK::ActivityNavigationInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885710F8;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2885710F8;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 10) = 0;
  return this;
}

TSCK::ActivityNavigationInfoArchive *TSCK::ActivityNavigationInfoArchive::ActivityNavigationInfoArchive(TSCK::ActivityNavigationInfoArchive *this, const TSCK::ActivityNavigationInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  *this = &unk_2885710F8;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27662D2A0(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  return this;
}

void TSCK::ActivityNavigationInfoArchive::~ActivityNavigationInfoArchive(TSCK::ActivityNavigationInfoArchive *this)
{
  sub_2765F8538(this + 1);
  MEMORY[0x277C99590](this + 16);
}

{
  TSCK::ActivityNavigationInfoArchive::~ActivityNavigationInfoArchive(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityNavigationInfoArchive::default_instance(TSCK::ActivityNavigationInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityNavigationInfoArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityNavigationInfoArchive_default_instance_;
}

google::protobuf::internal *TSCK::ActivityNavigationInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  TagFallback = a2;
  v5 = *(a3 + 92);
  if ((sub_27662CC00(a3, &TagFallback) & 1) == 0)
  {
    while (1)
    {
      v6 = (TagFallback + 1);
      LODWORD(v7) = *TagFallback;
      if ((*TagFallback & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = (v7 + (*v6 << 7) - 128);
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(TagFallback, v7);
      if (!TagFallback)
      {
        return 0;
      }

LABEL_6:
      if (v7)
      {
        v8 = (v7 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        *(a3 + 80) = v7 - 1;
        return TagFallback;
      }

      if ((v7 - 800) >> 5 > 0xE0)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27662D0DC((a1 + 8));
        }

        v9 = google::protobuf::internal::UnknownFieldParse();
      }

      else
      {
        v9 = google::protobuf::internal::ExtensionSet::ParseField();
      }

      TagFallback = v9;
      if (!v9)
      {
        return 0;
      }

      v10 = *(a3 + 92);
      if (sub_27662CC00(a3, &TagFallback))
      {
        return TagFallback;
      }
    }

    v6 = (TagFallback + 2);
LABEL_5:
    TagFallback = v6;
    goto LABEL_6;
  }

  return TagFallback;
}

uint64_t TSCK::ActivityNavigationInfoArchive::_InternalSerialize(TSCK::ActivityNavigationInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 100, 1000, a2, a3);
  v6 = *(this + 1);
  if (v6)
  {

    return MEMORY[0x2821EAC40]((v6 & 0xFFFFFFFFFFFFFFFELL) + 8, result, a3);
  }

  return result;
}

uint64_t TSCK::ActivityNavigationInfoArchive::ByteSizeLong(TSCK::ActivityNavigationInfoArchive *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
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

uint64_t TSCK::ActivityNavigationInfoArchive::MergeFrom(TSCK::ActivityNavigationInfoArchive *a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityNavigationInfoArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

TSCK::ActivityNavigationInfoArchive *TSCK::ActivityNavigationInfoArchive::CopyFrom(TSCK::ActivityNavigationInfoArchive *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityNavigationInfoArchive::Clear(result);

    return TSCK::ActivityNavigationInfoArchive::MergeFrom(v4, a2);
  }

  return result;
}

TSCK::ActivityNavigationInfoArchive *TSCK::ActivityNavigationInfoArchive::CopyFrom(TSCK::ActivityNavigationInfoArchive *this, const TSCK::ActivityNavigationInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityNavigationInfoArchive::Clear(this);

    return TSCK::ActivityNavigationInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCK::ActivityNavigationInfoArchive::InternalSwap(TSCK::ActivityNavigationInfoArchive *this, TSCK::ActivityNavigationInfoArchive *a2)
{
  google::protobuf::internal::ExtensionSet::Swap();

  return sub_2765F8BC4(this + 1, a2 + 1);
}

uint64_t TSCK::ActivityNavigationInfoArchive::GetMetadata(TSCK::ActivityNavigationInfoArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[84];
  v2 = off_2812F9CC0[85];
  return result;
}

TSP::UUID *TSCK::CommentActivityNavigationInfoArchive::clear_parent_uuid(TSCK::CommentActivityNavigationInfoArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TSCK::CommentActivityNavigationInfoArchive::clear_storage_uuid(TSCK::CommentActivityNavigationInfoArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSCK::CommentActivityNavigationInfoArchive *TSCK::CommentActivityNavigationInfoArchive::CommentActivityNavigationInfoArchive(TSCK::CommentActivityNavigationInfoArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885711A8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CommentActivityNavigationInfoArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSCK::CommentActivityNavigationInfoArchive *TSCK::CommentActivityNavigationInfoArchive::CommentActivityNavigationInfoArchive(TSCK::CommentActivityNavigationInfoArchive *this, const TSCK::CommentActivityNavigationInfoArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885711A8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v5)
  {
    v7 = *(a2 + 3);
    if (*v4)
    {
      v9 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

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

void TSCK::CommentActivityNavigationInfoArchive::~CommentActivityNavigationInfoArchive(TSCK::CommentActivityNavigationInfoArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C999C0](v2, 0x1012C40EC159624);
  }

  if (this != &TSCK::_CommentActivityNavigationInfoArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C999C0]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::CommentActivityNavigationInfoArchive::~CommentActivityNavigationInfoArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::CommentActivityNavigationInfoArchive::default_instance(TSCK::CommentActivityNavigationInfoArchive *this)
{
  if (atomic_load_explicit(scc_info_CommentActivityNavigationInfoArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_CommentActivityNavigationInfoArchive_default_instance_;
}

uint64_t *TSCK::CommentActivityNavigationInfoArchive::Clear(uint64_t *this)
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
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
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

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  this = TSP::UUID::Clear(this[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    this = TSP::UUID::Clear(*(v1 + 40));
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::CommentActivityNavigationInfoArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v24) & 1) == 0)
  {
    v6 = (v24 + 1);
    v7 = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v24 + 2);
LABEL_6:
      v24 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v8 - 128));
    v24 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v21;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 == 3)
    {
      if (v7 == 26)
      {
        *(a1 + 16) |= 4u;
        v13 = *(a1 + 40);
        if (!v13)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C994B0](v16);
          LODWORD(v13) = v17;
          *(a1 + 40) = v17;
LABEL_30:
          v6 = v24;
        }

LABEL_31:
        v12 = sub_2766359B0(a3, v13, v6);
        goto LABEL_35;
      }
    }

    else if (v9 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C994B0](v14);
          LODWORD(v13) = v15;
          *(a1 + 32) = v15;
          goto LABEL_30;
        }

        goto LABEL_31;
      }
    }

    else if (v9 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v18 = *(a1 + 8);
      if (v18)
      {
        v22 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::internal::ArenaStringPtr::Mutable();
      v12 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_35;
    }

    if (v7)
    {
      v11 = (v7 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 80) = v7 - 1;
      return v24;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_35:
    v24 = v12;
    if (!v12)
    {
      return 0;
    }

    v19 = *(a3 + 92);
  }

  return v24;
}

unsigned __int8 *TSCK::CommentActivityNavigationInfoArchive::_InternalSerialize(TSCK::CommentActivityNavigationInfoArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2765FB858(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_26;
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

  v4 = TSP::UUID::_InternalSerialize(v7, v9, a3);
  if ((v6 & 4) != 0)
  {
LABEL_16:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 5);
    *v4 = 26;
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

    v4 = TSP::UUID::_InternalSerialize(v13, v15, a3);
  }

LABEL_26:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCK::CommentActivityNavigationInfoArchive::RequiredFieldsByteSizeFallback(TSCK::CommentActivityNavigationInfoArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v7 = TSP::UUID::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    goto LABEL_8;
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
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v8 = TSP::UUID::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSCK::CommentActivityNavigationInfoArchive::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v9 = TSCK::CommentActivityNavigationInfoArchive::RequiredFieldsByteSizeFallback(this);
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

    v7 = TSP::UUID::ByteSizeLong(v2);
    v8 = TSP::UUID::ByteSizeLong(this[5]);
    v9 = v6 + v7 + v8 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 3;
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

uint64_t TSCK::CommentActivityNavigationInfoArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::CommentActivityNavigationInfoArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::CommentActivityNavigationInfoArchive::MergeFrom(uint64_t this, const TSCK::CommentActivityNavigationInfoArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 8);
      if (v7)
      {
        v15 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v8 = MEMORY[0x277D809E0];
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

        v9 = MEMORY[0x277C994B0](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = v8;
      }

      this = TSP::UUID::MergeFrom(v9, v11);
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

        v12 = MEMORY[0x277C994B0](v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = v8;
      }

      return TSP::UUID::MergeFrom(v12, v14);
    }
  }

  return this;
}

uint64_t *TSCK::CommentActivityNavigationInfoArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::CommentActivityNavigationInfoArchive::Clear(result);

    return TSCK::CommentActivityNavigationInfoArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::CommentActivityNavigationInfoArchive::CopyFrom(uint64_t *this, const TSCK::CommentActivityNavigationInfoArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::CommentActivityNavigationInfoArchive::Clear(this);

    return TSCK::CommentActivityNavigationInfoArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::CommentActivityNavigationInfoArchive::IsInitialized(TSCK::CommentActivityNavigationInfoArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 4));
  if (result)
  {
    if ((*(this + 16) & 4) == 0)
    {
      return 1;
    }

    result = TSP::UUID::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCK::CommentActivityNavigationInfoArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2765F8BC4(&this->n128_i64[1], &a2->n128_i64[1]);
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

uint64_t TSCK::CommentActivityNavigationInfoArchive::GetMetadata(TSCK::CommentActivityNavigationInfoArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[86];
  v2 = off_2812F9CC0[87];
  return result;
}

TSP::UUID *TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::clear_identifier(TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::ActivityAuthorCacheArchive_ShareParticipantIDCache(TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *this, google::protobuf::Arena *a2)
{
  *this = &unk_288571258;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_ShareParticipantIDCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::ActivityAuthorCacheArchive_ShareParticipantIDCache(TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *this, const TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288571258;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v5)
  {
    v7 = *(a2 + 3);
    if (*v4)
    {
      v9 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::~ActivityAuthorCacheArchive_ShareParticipantIDCache(TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C999C0](v2, 0x1012C40EC159624);
  }

  if (this != &TSCK::_ActivityAuthorCacheArchive_ShareParticipantIDCache_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::~ActivityAuthorCacheArchive_ShareParticipantIDCache(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::default_instance(TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *this)
{
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_ShareParticipantIDCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityAuthorCacheArchive_ShareParticipantIDCache_default_instance_;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::Clear(uint64_t *this)
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
      this = TSP::UUID::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_27662D2EC(v4);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v21) & 1) == 0)
  {
    v6 = (v21 + 1);
    v7 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v21 + 2);
LABEL_6:
      v21 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v8 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 8);
        if (v12)
        {
          v19 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::internal::ArenaStringPtr::Mutable();
        v11 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 32);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C994B0](v14);
        LODWORD(v13) = v15;
        *(a1 + 32) = v15;
        v6 = v21;
      }

      v11 = sub_2766359B0(a3, v13, v6);
      goto LABEL_28;
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
      return v21;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_28:
    v21 = v11;
    if (!v11)
    {
      return 0;
    }

    v16 = *(a3 + 92);
  }

  return v21;
}

unsigned __int8 *TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::_InternalSerialize(TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSP::UUID::_InternalSerialize(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_2765FB858(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::RequiredFieldsByteSizeFallback(TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *this)
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
    v6 = TSP::UUID::ByteSizeLong(*(this + 4));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::RequiredFieldsByteSizeFallback(this);
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

    v7 = TSP::UUID::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v8, this + 20);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

uint64_t TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::MergeFrom(uint64_t this, const TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 8);
      if (v7)
      {
        v11 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v8 = *(v3 + 32);
      if (!v8)
      {
        v9 = *(v3 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        v8 = MEMORY[0x277C994B0](v9);
        *(v3 + 32) = v8;
      }

      if (*(a2 + 4))
      {
        v10 = *(a2 + 4);
      }

      else
      {
        v10 = MEMORY[0x277D809E0];
      }

      return TSP::UUID::MergeFrom(v8, v10);
    }
  }

  return this;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::Clear(result);

    return TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::CopyFrom(uint64_t *this, const TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::Clear(this);

    return TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::IsInitialized(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::UUID::IsInitialized(this[4]);
  }
}

uint64_t *TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::InternalSwap(TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *this, TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::GetMetadata(TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[88];
  v2 = off_2812F9CC0[89];
  return result;
}

TSP::UUID *TSCK::ActivityAuthorCacheArchive_PublicIDCache::clear_identifier(TSCK::ActivityAuthorCacheArchive_PublicIDCache *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCK::ActivityAuthorCacheArchive_PublicIDCache *TSCK::ActivityAuthorCacheArchive_PublicIDCache::ActivityAuthorCacheArchive_PublicIDCache(TSCK::ActivityAuthorCacheArchive_PublicIDCache *this, google::protobuf::Arena *a2)
{
  *this = &unk_288571308;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_PublicIDCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSCK::ActivityAuthorCacheArchive_PublicIDCache *TSCK::ActivityAuthorCacheArchive_PublicIDCache::ActivityAuthorCacheArchive_PublicIDCache(TSCK::ActivityAuthorCacheArchive_PublicIDCache *this, const TSCK::ActivityAuthorCacheArchive_PublicIDCache *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288571308;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v5)
  {
    v7 = *(a2 + 3);
    if (*v4)
    {
      v9 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSCK::ActivityAuthorCacheArchive_PublicIDCache::~ActivityAuthorCacheArchive_PublicIDCache(TSCK::ActivityAuthorCacheArchive_PublicIDCache *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C999C0](v2, 0x1012C40EC159624);
  }

  if (this != &TSCK::_ActivityAuthorCacheArchive_PublicIDCache_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::UUID::~UUID(v3);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityAuthorCacheArchive_PublicIDCache::~ActivityAuthorCacheArchive_PublicIDCache(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityAuthorCacheArchive_PublicIDCache::default_instance(TSCK::ActivityAuthorCacheArchive_PublicIDCache *this)
{
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_PublicIDCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityAuthorCacheArchive_PublicIDCache_default_instance_;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_PublicIDCache::Clear(uint64_t *this)
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
      this = TSP::UUID::Clear(this[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_27662D2EC(v4);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityAuthorCacheArchive_PublicIDCache::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v21) & 1) == 0)
  {
    v6 = (v21 + 1);
    v7 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v21 + 2);
LABEL_6:
      v21 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v8 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 1u;
        v12 = *(a1 + 8);
        if (v12)
        {
          v19 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        google::protobuf::internal::ArenaStringPtr::Mutable();
        v11 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_28;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 2u;
      v13 = *(a1 + 32);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C994B0](v14);
        LODWORD(v13) = v15;
        *(a1 + 32) = v15;
        v6 = v21;
      }

      v11 = sub_2766359B0(a3, v13, v6);
      goto LABEL_28;
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
      return v21;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_28:
    v21 = v11;
    if (!v11)
    {
      return 0;
    }

    v16 = *(a3 + 92);
  }

  return v21;
}

unsigned __int8 *TSCK::ActivityAuthorCacheArchive_PublicIDCache::_InternalSerialize(TSCK::ActivityAuthorCacheArchive_PublicIDCache *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSP::UUID::_InternalSerialize(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_2765FB858(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSCK::ActivityAuthorCacheArchive_PublicIDCache::RequiredFieldsByteSizeFallback(TSCK::ActivityAuthorCacheArchive_PublicIDCache *this)
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
    v6 = TSP::UUID::ByteSizeLong(*(this + 4));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TSCK::ActivityAuthorCacheArchive_PublicIDCache::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TSCK::ActivityAuthorCacheArchive_PublicIDCache::RequiredFieldsByteSizeFallback(this);
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

    v7 = TSP::UUID::ByteSizeLong(v2);
    v8 = v6 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v8, this + 20);
  }

  else
  {
    *(this + 5) = v8;
    return v8;
  }
}

uint64_t TSCK::ActivityAuthorCacheArchive_PublicIDCache::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityAuthorCacheArchive_PublicIDCache::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityAuthorCacheArchive_PublicIDCache::MergeFrom(uint64_t this, const TSCK::ActivityAuthorCacheArchive_PublicIDCache *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 8);
      if (v7)
      {
        v11 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v8 = *(v3 + 32);
      if (!v8)
      {
        v9 = *(v3 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        v8 = MEMORY[0x277C994B0](v9);
        *(v3 + 32) = v8;
      }

      if (*(a2 + 4))
      {
        v10 = *(a2 + 4);
      }

      else
      {
        v10 = MEMORY[0x277D809E0];
      }

      return TSP::UUID::MergeFrom(v8, v10);
    }
  }

  return this;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_PublicIDCache::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityAuthorCacheArchive_PublicIDCache::Clear(result);

    return TSCK::ActivityAuthorCacheArchive_PublicIDCache::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_PublicIDCache::CopyFrom(uint64_t *this, const TSCK::ActivityAuthorCacheArchive_PublicIDCache *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityAuthorCacheArchive_PublicIDCache::Clear(this);

    return TSCK::ActivityAuthorCacheArchive_PublicIDCache::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityAuthorCacheArchive_PublicIDCache::IsInitialized(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::UUID::IsInitialized(this[4]);
  }
}

uint64_t *TSCK::ActivityAuthorCacheArchive_PublicIDCache::InternalSwap(TSCK::ActivityAuthorCacheArchive_PublicIDCache *this, TSCK::ActivityAuthorCacheArchive_PublicIDCache *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::ActivityAuthorCacheArchive_PublicIDCache::GetMetadata(TSCK::ActivityAuthorCacheArchive_PublicIDCache *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[90];
  v2 = off_2812F9CC0[91];
  return result;
}

TSP::UUID *TSCK::ActivityAuthorCacheArchive_IndexCache::clear_identifier(TSCK::ActivityAuthorCacheArchive_IndexCache *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::ActivityAuthorCacheArchive_IndexCache *TSCK::ActivityAuthorCacheArchive_IndexCache::ActivityAuthorCacheArchive_IndexCache(TSCK::ActivityAuthorCacheArchive_IndexCache *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885713B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_IndexCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2885713B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_IndexCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCK::ActivityAuthorCacheArchive_IndexCache *TSCK::ActivityAuthorCacheArchive_IndexCache::ActivityAuthorCacheArchive_IndexCache(TSCK::ActivityAuthorCacheArchive_IndexCache *this, const TSCK::ActivityAuthorCacheArchive_IndexCache *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885713B8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  v7 = *(a2 + 4);
  *(this + 3) = 0;
  *(this + 4) = v7;
  return this;
}

void TSCK::ActivityAuthorCacheArchive_IndexCache::~ActivityAuthorCacheArchive_IndexCache(TSCK::ActivityAuthorCacheArchive_IndexCache *this)
{
  if (this != &TSCK::_ActivityAuthorCacheArchive_IndexCache_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityAuthorCacheArchive_IndexCache::~ActivityAuthorCacheArchive_IndexCache(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityAuthorCacheArchive_IndexCache::default_instance(TSCK::ActivityAuthorCacheArchive_IndexCache *this)
{
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_IndexCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityAuthorCacheArchive_IndexCache_default_instance_;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_IndexCache::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::UUID::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityAuthorCacheArchive_IndexCache::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v25) & 1) == 0)
  {
    while (1)
    {
      v8 = (v25 + 1);
      v9 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v10 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v8 = TagFallback;
      v9 = v22;
LABEL_7:
      if (v9 >> 3 != 2)
      {
        if (v9 >> 3 == 1 && v9 == 10)
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

            v19 = MEMORY[0x277C994B0](v18);
            LODWORD(v17) = v19;
            *(a1 + 24) = v19;
            v8 = v25;
          }

          v13 = sub_2766359B0(a3, v17, v8);
        }

        else
        {
LABEL_12:
          if (v9)
          {
            v12 = (v9 & 7) == 4;
          }

          else
          {
            v12 = 1;
          }

          if (v12)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v25 = v13;
        if (!v13)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v9 != 16)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v15 = (v8 + 1);
      v14 = *v8;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v16 = *v15;
      v14 = (v16 << 7) + v14 - 128;
      if ((v16 & 0x80000000) == 0)
      {
        v15 = (v8 + 2);
LABEL_23:
        v25 = v15;
        *(a1 + 32) = v14;
        goto LABEL_30;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v8, v14);
      v25 = v23;
      *(a1 + 32) = v24;
      if (!v23)
      {
LABEL_37:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_30:
      v20 = *(a3 + 92);
      if (sub_27662CC00(a3, &v25))
      {
        goto LABEL_2;
      }
    }

    v8 = (v25 + 2);
LABEL_6:
    v25 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v25;
}

unsigned __int8 *TSCK::ActivityAuthorCacheArchive_IndexCache::_InternalSerialize(TSCK::ActivityAuthorCacheArchive_IndexCache *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 4);
    *a2 = 16;
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

  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityAuthorCacheArchive_IndexCache::RequiredFieldsByteSizeFallback(TSCK::ActivityAuthorCacheArchive_IndexCache *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 4) | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  return result;
}

unint64_t TSCK::ActivityAuthorCacheArchive_IndexCache::ByteSizeLong(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v3 = TSCK::ActivityAuthorCacheArchive_IndexCache::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::UUID::ByteSizeLong(this[3]);
    v3 = v2 + ((9 * (__clz(this[4] | 1) ^ 0x3F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v3, this + 20);
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSCK::ActivityAuthorCacheArchive_IndexCache::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityAuthorCacheArchive_IndexCache::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityAuthorCacheArchive_IndexCache::MergeFrom(uint64_t this, const TSCK::ActivityAuthorCacheArchive_IndexCache *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C994B0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 4);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_IndexCache::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityAuthorCacheArchive_IndexCache::Clear(result);

    return TSCK::ActivityAuthorCacheArchive_IndexCache::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_IndexCache::CopyFrom(uint64_t *this, const TSCK::ActivityAuthorCacheArchive_IndexCache *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityAuthorCacheArchive_IndexCache::Clear(this);

    return TSCK::ActivityAuthorCacheArchive_IndexCache::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityAuthorCacheArchive_IndexCache::IsInitialized(TSP::UUID **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::UUID::IsInitialized(this[3]);
  }
}

__n128 TSCK::ActivityAuthorCacheArchive_IndexCache::InternalSwap(TSCK::ActivityAuthorCacheArchive_IndexCache *this, TSCK::ActivityAuthorCacheArchive_IndexCache *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::ActivityAuthorCacheArchive_IndexCache::GetMetadata(TSCK::ActivityAuthorCacheArchive_IndexCache *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[92];
  v2 = off_2812F9CC0[93];
  return result;
}

TSP::UUID *TSCK::ActivityAuthorCacheArchive_FirstJoinCache::clear_identifier(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Date *TSCK::ActivityAuthorCacheArchive_FirstJoinCache::clear_first_join_date(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCK::ActivityAuthorCacheArchive_FirstJoinCache *TSCK::ActivityAuthorCacheArchive_FirstJoinCache::ActivityAuthorCacheArchive_FirstJoinCache(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this, google::protobuf::Arena *a2)
{
  *this = &unk_288571468;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_FirstJoinCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_288571468;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_FirstJoinCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSCK::ActivityAuthorCacheArchive_FirstJoinCache *TSCK::ActivityAuthorCacheArchive_FirstJoinCache::ActivityAuthorCacheArchive_FirstJoinCache(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this, const TSCK::ActivityAuthorCacheArchive_FirstJoinCache *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288571468;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSCK::ActivityAuthorCacheArchive_FirstJoinCache::~ActivityAuthorCacheArchive_FirstJoinCache(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this)
{
  if (this != &TSCK::_ActivityAuthorCacheArchive_FirstJoinCache_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C999C0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Date::~Date(v3);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityAuthorCacheArchive_FirstJoinCache::~ActivityAuthorCacheArchive_FirstJoinCache(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityAuthorCacheArchive_FirstJoinCache::default_instance(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this)
{
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_FirstJoinCache_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityAuthorCacheArchive_FirstJoinCache_default_instance_;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_FirstJoinCache::Clear(uint64_t *this)
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
      this = TSP::Date::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27662D2EC(v3);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityAuthorCacheArchive_FirstJoinCache::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v22) & 1) == 0)
  {
    v6 = (v22 + 1);
    v7 = *v22;
    if ((*v22 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v22 + 2);
LABEL_6:
      v22 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v22, (v8 - 128));
    v22 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v20;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v12 = *(a1 + 32);
        if (!v12)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C994A0](v13);
          LODWORD(v12) = v14;
          *(a1 + 32) = v14;
          v6 = v22;
        }

        v11 = sub_276636030(a3, v12, v6);
        goto LABEL_30;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v15 = *(a1 + 24);
      if (!v15)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277C994B0](v16);
        LODWORD(v15) = v17;
        *(a1 + 24) = v17;
        v6 = v22;
      }

      v11 = sub_2766359B0(a3, v15, v6);
      goto LABEL_30;
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
      return v22;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_30:
    v22 = v11;
    if (!v11)
    {
      return 0;
    }

    v18 = *(a3 + 92);
  }

  return v22;
}

unsigned __int8 *TSCK::ActivityAuthorCacheArchive_FirstJoinCache::_InternalSerialize(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::UUID::_InternalSerialize(v6, v8, a3);
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

    a2 = TSP::Date::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityAuthorCacheArchive_FirstJoinCache::ByteSizeLong(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::UUID::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Date::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
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

uint64_t TSCK::ActivityAuthorCacheArchive_FirstJoinCache::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityAuthorCacheArchive_FirstJoinCache::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityAuthorCacheArchive_FirstJoinCache::MergeFrom(uint64_t this, const TSCK::ActivityAuthorCacheArchive_FirstJoinCache *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C994B0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E0];
      }

      this = TSP::UUID::MergeFrom(v6, v8);
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

        v9 = MEMORY[0x277C994A0](v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = MEMORY[0x277D809C0];
      }

      return TSP::Date::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_FirstJoinCache::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityAuthorCacheArchive_FirstJoinCache::Clear(result);

    return TSCK::ActivityAuthorCacheArchive_FirstJoinCache::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityAuthorCacheArchive_FirstJoinCache::CopyFrom(uint64_t *this, const TSCK::ActivityAuthorCacheArchive_FirstJoinCache *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityAuthorCacheArchive_FirstJoinCache::Clear(this);

    return TSCK::ActivityAuthorCacheArchive_FirstJoinCache::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityAuthorCacheArchive_FirstJoinCache::IsInitialized(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSP::UUID::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Date::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSCK::ActivityAuthorCacheArchive_FirstJoinCache::InternalSwap(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this, TSCK::ActivityAuthorCacheArchive_FirstJoinCache *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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

uint64_t TSCK::ActivityAuthorCacheArchive_FirstJoinCache::GetMetadata(TSCK::ActivityAuthorCacheArchive_FirstJoinCache *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[94];
  v2 = off_2812F9CC0[95];
  return result;
}

uint64_t TSCK::ActivityAuthorCacheArchive::clear_authors(uint64_t this)
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

TSP::Date *TSCK::ActivityAuthorCacheArchive::clear_last_audit_date(TSCK::ActivityAuthorCacheArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSCK::ActivityAuthorCacheArchive::clear_author_identifiers_to_remove(uint64_t this)
{
  v1 = *(this + 152);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 160) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 152) = 0;
  }

  return this;
}

TSCK::ActivityAuthorCacheArchive *TSCK::ActivityAuthorCacheArchive::ActivityAuthorCacheArchive(TSCK::ActivityAuthorCacheArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288571518;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = a2;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 18) = a2;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 21) = 0;
  return this;
}

void sub_27661FAB8(_Unwind_Exception *a1)
{
  sub_27662E180(v6);
  sub_27662D3A4(v5);
  sub_27662E0FC(v4);
  sub_27662E078(v3);
  sub_27662DFF4(v2);
  sub_27662DF70(v1);
  _Unwind_Resume(a1);
}

TSCK::ActivityAuthorCacheArchive *TSCK::ActivityAuthorCacheArchive::ActivityAuthorCacheArchive(TSCK::ActivityAuthorCacheArchive *this, const TSCK::ActivityAuthorCacheArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288571518;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27662E204(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v5;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(a2 + 8);
    v13 = *(a2 + 14);
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_27662E2C4(this + 48, v14, (v12 + 8), v11, **(this + 8) - *(this + 14));
    v15 = *(this + 14) + v11;
    *(this + 14) = v15;
    v16 = *(this + 8);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v17 = *(a2 + 20);
  if (v17)
  {
    v18 = *(a2 + 11);
    v19 = *(a2 + 20);
    v20 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_27662E384(this + 72, v20, (v18 + 8), v17, **(this + 11) - *(this + 20));
    v21 = *(this + 20) + v17;
    *(this + 20) = v21;
    v22 = *(this + 11);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v23 = *(a2 + 26);
  if (v23)
  {
    v24 = *(a2 + 14);
    v25 = *(a2 + 26);
    v26 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    sub_27662E444(this + 96, v26, (v24 + 8), v23, **(this + 14) - *(this + 26));
    v27 = *(this + 26) + v23;
    *(this + 26) = v27;
    v28 = *(this + 14);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v29 = *(a2 + 32);
  if (v29)
  {
    v30 = *(a2 + 17);
    v31 = *(a2 + 32);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120));
    sub_27662D428(this + 120, v32, (v30 + 8), v29, **(this + 17) - *(this + 32));
    v33 = *(this + 32) + v29;
    *(this + 32) = v33;
    v34 = *(this + 17);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v35 = *(a2 + 38);
  if (v35)
  {
    v36 = *(a2 + 20);
    v37 = *(a2 + 38);
    v38 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 144));
    sub_27662E504(this + 144, v38, (v36 + 8), v35, **(this + 20) - *(this + 38));
    v39 = *(this + 38) + v35;
    *(this + 38) = v39;
    v40 = *(this + 20);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  v41 = *(a2 + 1);
  if (v41)
  {
    sub_27662D2A0(v4, (v41 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 21) = 0;
  return this;
}

void sub_27661FE48(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v3, 0x1081C404FE48876);
  sub_27662E180(v7);
  sub_27662D3A4(v6);
  sub_27662E0FC(v5);
  sub_27662E078(v4);
  sub_27662DFF4(v2);
  sub_27662DF70((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::ActivityAuthorCacheArchive::~ActivityAuthorCacheArchive(TSCK::ActivityAuthorCacheArchive *this)
{
  if (this != &TSCK::_ActivityAuthorCacheArchive_default_instance_)
  {
    v2 = *(this + 21);
    if (v2)
    {
      TSP::Date::~Date(v2);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
  sub_27662E180(this + 18);
  sub_27662D3A4(this + 15);
  sub_27662E0FC(this + 12);
  sub_27662E078(this + 9);
  sub_27662DFF4(this + 6);
  sub_27662DF70(this + 3);
}

{
  TSCK::ActivityAuthorCacheArchive::~ActivityAuthorCacheArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityAuthorCacheArchive::default_instance(TSCK::ActivityAuthorCacheArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityAuthorCacheArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityAuthorCacheArchive_default_instance_;
}

uint64_t *TSCK::ActivityAuthorCacheArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::Clear(v4);
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
      this = TSCK::ActivityAuthorCacheArchive_PublicIDCache::Clear(v7);
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
      this = TSCK::ActivityAuthorCacheArchive_IndexCache::Clear(v10);
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
      this = TSCK::ActivityAuthorCacheArchive_FirstJoinCache::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 104) = 0;
  }

  v14 = *(v1 + 128);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 136) + 8);
    do
    {
      v16 = *v15++;
      this = TSP::Reference::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 128) = 0;
  }

  v17 = *(v1 + 152);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 160) + 8);
    do
    {
      v19 = *v18++;
      this = TSP::UUID::Clear(v19);
      --v17;
    }

    while (v17);
    *(v1 + 152) = 0;
  }

  if (*(v1 + 16))
  {
    this = TSP::Date::Clear(*(v1 + 168));
  }

  v21 = *(v1 + 8);
  v20 = v1 + 8;
  *(v20 + 8) = 0;
  if (v21)
  {

    return sub_27662D2EC(v20);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityAuthorCacheArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v75 = a2;
  v5 = *(a3 + 92);
  while (1)
  {
    if (sub_27662CC00(a3, &v75))
    {
      return v75;
    }

    v6 = (v75 + 1);
    v7 = *v75;
    if ((*v75 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v75 + 2);
LABEL_6:
      v75 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v75, (v8 - 128));
    v75 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v40;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 <= 4)
    {
      if (v9 != 1)
      {
        if (v9 != 3)
        {
          if (v9 != 4 || v7 != 34)
          {
            goto LABEL_108;
          }

          v20 = (v6 - 1);
          while (1)
          {
            v21 = (v20 + 1);
            v75 = (v20 + 1);
            v22 = *(a1 + 88);
            if (!v22)
            {
              break;
            }

            v28 = *(a1 + 80);
            v24 = *v22;
            if (v28 < *v22)
            {
              *(a1 + 80) = v28 + 1;
              v25 = *&v22[2 * v28 + 2];
              goto LABEL_36;
            }

            if (v24 == *(a1 + 84))
            {
              goto LABEL_32;
            }

LABEL_33:
            *v22 = v24 + 1;
            v25 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityAuthorCacheArchive_IndexCache>(*(a1 + 72));
            v26 = *(a1 + 80);
            v27 = *(a1 + 88) + 8 * v26;
            *(a1 + 80) = v26 + 1;
            *(v27 + 8) = v25;
            v21 = v75;
LABEL_36:
            v20 = sub_276636C60(a3, v25, v21);
            v75 = v20;
            if (!v20)
            {
              return 0;
            }

            if (*a3 <= v20 || *v20 != 34)
            {
              goto LABEL_116;
            }
          }

          v23 = *(a1 + 84);
LABEL_32:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
          v22 = *(a1 + 88);
          v24 = *v22;
          goto LABEL_33;
        }

        if (v7 != 26)
        {
          goto LABEL_108;
        }

        v63 = (v6 - 1);
        while (1)
        {
          v64 = (v63 + 1);
          v75 = (v63 + 1);
          v65 = *(a1 + 64);
          if (!v65)
          {
            break;
          }

          v71 = *(a1 + 56);
          v67 = *v65;
          if (v71 < *v65)
          {
            *(a1 + 56) = v71 + 1;
            v68 = *&v65[2 * v71 + 2];
            goto LABEL_102;
          }

          if (v67 == *(a1 + 60))
          {
            goto LABEL_98;
          }

LABEL_99:
          *v65 = v67 + 1;
          v68 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityAuthorCacheArchive_PublicIDCache>(*(a1 + 48));
          v69 = *(a1 + 56);
          v70 = *(a1 + 64) + 8 * v69;
          *(a1 + 56) = v69 + 1;
          *(v70 + 8) = v68;
          v64 = v75;
LABEL_102:
          v63 = sub_276636B90(a3, v68, v64);
          v75 = v63;
          if (!v63)
          {
            return 0;
          }

          if (*a3 <= v63 || *v63 != 26)
          {
            goto LABEL_116;
          }
        }

        v66 = *(a1 + 60);
LABEL_98:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
        v65 = *(a1 + 64);
        v67 = *v65;
        goto LABEL_99;
      }

      if (v7 != 10)
      {
        goto LABEL_108;
      }

      v41 = (v6 - 1);
      while (1)
      {
        v42 = (v41 + 1);
        v75 = (v41 + 1);
        v43 = *(a1 + 40);
        if (!v43)
        {
          break;
        }

        v49 = *(a1 + 32);
        v45 = *v43;
        if (v49 < *v43)
        {
          *(a1 + 32) = v49 + 1;
          v46 = *&v43[2 * v49 + 2];
          goto LABEL_68;
        }

        if (v45 == *(a1 + 36))
        {
          goto LABEL_64;
        }

LABEL_65:
        *v43 = v45 + 1;
        v46 = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache>(*(a1 + 24));
        v47 = *(a1 + 32);
        v48 = *(a1 + 40) + 8 * v47;
        *(a1 + 32) = v47 + 1;
        *(v48 + 8) = v46;
        v42 = v75;
LABEL_68:
        v41 = sub_276636AC0(a3, v46, v42);
        v75 = v41;
        if (!v41)
        {
          return 0;
        }

        if (*a3 <= v41 || *v41 != 10)
        {
          goto LABEL_116;
        }
      }

      v44 = *(a1 + 36);
LABEL_64:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
      v43 = *(a1 + 40);
      v45 = *v43;
      goto LABEL_65;
    }

    if (v7 >> 3 <= 6)
    {
      break;
    }

    if (v9 != 7)
    {
      if (v9 != 8 || v7 != 66)
      {
        goto LABEL_108;
      }

      v29 = v6 - 1;
      while (2)
      {
        v30 = (v29 + 1);
        v75 = (v29 + 1);
        v31 = *(a1 + 160);
        if (!v31)
        {
          v32 = *(a1 + 156);
          goto LABEL_48;
        }

        v38 = *(a1 + 152);
        v33 = *v31;
        if (v38 >= *v31)
        {
          if (v33 == *(a1 + 156))
          {
LABEL_48:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
            v31 = *(a1 + 160);
            v33 = *v31;
          }

          *v31 = v33 + 1;
          v34 = MEMORY[0x277C994B0](*(a1 + 144));
          LODWORD(v35) = v34;
          v36 = *(a1 + 152);
          v37 = *(a1 + 160) + 8 * v36;
          *(a1 + 152) = v36 + 1;
          *(v37 + 8) = v34;
          v30 = v75;
        }

        else
        {
          *(a1 + 152) = v38 + 1;
          v35 = *&v31[2 * v38 + 2];
        }

        v29 = sub_2766359B0(a3, v35, v30);
        v75 = v29;
        if (!v29)
        {
          return 0;
        }

        if (*a3 <= v29 || *v29 != 66)
        {
          goto LABEL_116;
        }

        continue;
      }
    }

    if (v7 != 58)
    {
      goto LABEL_108;
    }

    *(a1 + 16) |= 1u;
    v59 = *(a1 + 168);
    if (!v59)
    {
      v60 = *(a1 + 8);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      v61 = MEMORY[0x277C994A0](v60);
      LODWORD(v59) = v61;
      *(a1 + 168) = v61;
      v6 = v75;
    }

    v62 = sub_276636030(a3, v59, v6);
LABEL_115:
    v75 = v62;
    if (!v62)
    {
      return 0;
    }

LABEL_116:
    v73 = *(a3 + 92);
  }

  if (v9 == 5)
  {
    if (v7 != 42)
    {
      goto LABEL_108;
    }

    v50 = (v6 - 1);
    while (1)
    {
      v51 = (v50 + 1);
      v75 = (v50 + 1);
      v52 = *(a1 + 112);
      if (!v52)
      {
        break;
      }

      v58 = *(a1 + 104);
      v54 = *v52;
      if (v58 < *v52)
      {
        *(a1 + 104) = v58 + 1;
        Join = *&v52[2 * v58 + 2];
        goto LABEL_82;
      }

      if (v54 == *(a1 + 108))
      {
        goto LABEL_78;
      }

LABEL_79:
      *v52 = v54 + 1;
      Join = google::protobuf::Arena::CreateMaybeMessage<TSCK::ActivityAuthorCacheArchive_FirstJoinCache>(*(a1 + 96));
      v56 = *(a1 + 104);
      v57 = *(a1 + 112) + 8 * v56;
      *(a1 + 104) = v56 + 1;
      *(v57 + 8) = Join;
      v51 = v75;
LABEL_82:
      v50 = sub_276636D30(a3, Join, v51);
      v75 = v50;
      if (!v50)
      {
        return 0;
      }

      if (*a3 <= v50 || *v50 != 42)
      {
        goto LABEL_116;
      }
    }

    v53 = *(a1 + 108);
LABEL_78:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
    v52 = *(a1 + 112);
    v54 = *v52;
    goto LABEL_79;
  }

  if (v9 == 6 && v7 == 50)
  {
    v10 = v6 - 1;
    while (1)
    {
      v11 = (v10 + 1);
      v75 = (v10 + 1);
      v12 = *(a1 + 136);
      if (!v12)
      {
        break;
      }

      v19 = *(a1 + 128);
      v14 = *v12;
      if (v19 < *v12)
      {
        *(a1 + 128) = v19 + 1;
        v16 = *&v12[2 * v19 + 2];
        goto LABEL_19;
      }

      if (v14 == *(a1 + 132))
      {
        goto LABEL_15;
      }

LABEL_16:
      *v12 = v14 + 1;
      v15 = MEMORY[0x277C994F0](*(a1 + 120));
      LODWORD(v16) = v15;
      v17 = *(a1 + 128);
      v18 = *(a1 + 136) + 8 * v17;
      *(a1 + 128) = v17 + 1;
      *(v18 + 8) = v15;
      v11 = v75;
LABEL_19:
      v10 = sub_2766358E0(a3, v16, v11);
      v75 = v10;
      if (!v10)
      {
        return 0;
      }

      if (*a3 <= v10 || *v10 != 50)
      {
        goto LABEL_116;
      }
    }

    v13 = *(a1 + 132);
LABEL_15:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
    v12 = *(a1 + 136);
    v14 = *v12;
    goto LABEL_16;
  }

LABEL_108:
  if (v7)
  {
    v72 = (v7 & 7) == 4;
  }

  else
  {
    v72 = 1;
  }

  if (!v72)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27662D0DC((a1 + 8));
    }

    v62 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_115;
  }

  *(a3 + 80) = v7 - 1;
  return v75;
}

unsigned __int8 *TSCK::ActivityAuthorCacheArchive::_InternalSerialize(TSCK::ActivityAuthorCacheArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::_InternalSerialize(v7, v9, a3);
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
      *a2 = 26;
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

      a2 = TSCK::ActivityAuthorCacheArchive_PublicIDCache::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 20);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(this + 11) + 8 * k + 8);
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

      a2 = TSCK::ActivityAuthorCacheArchive_IndexCache::_InternalSerialize(v23, v25, a3);
    }
  }

  v29 = *(this + 26);
  if (v29)
  {
    for (m = 0; m != v29; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v31 = *(*(this + 14) + 8 * m + 8);
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

      a2 = TSCK::ActivityAuthorCacheArchive_FirstJoinCache::_InternalSerialize(v31, v33, a3);
    }
  }

  v37 = *(this + 32);
  if (v37)
  {
    for (n = 0; n != v37; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v39 = *(*(this + 17) + 8 * n + 8);
      *a2 = 50;
      v40 = *(v39 + 5);
      if (v40 > 0x7F)
      {
        a2[1] = v40 | 0x80;
        v42 = v40 >> 7;
        if (v40 >> 14)
        {
          v41 = a2 + 3;
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
          a2[2] = v42;
          v41 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v40;
        v41 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v39, v41, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v45 = *(this + 21);
    *a2 = 58;
    v46 = *(v45 + 5);
    if (v46 > 0x7F)
    {
      a2[1] = v46 | 0x80;
      v48 = v46 >> 7;
      if (v46 >> 14)
      {
        v47 = a2 + 3;
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
        a2[2] = v48;
        v47 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v46;
      v47 = a2 + 2;
    }

    a2 = TSP::Date::_InternalSerialize(v45, v47, a3);
  }

  v51 = *(this + 38);
  if (v51)
  {
    for (ii = 0; ii != v51; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v53 = *(*(this + 20) + 8 * ii + 8);
      *a2 = 66;
      v54 = *(v53 + 5);
      if (v54 > 0x7F)
      {
        a2[1] = v54 | 0x80;
        v56 = v54 >> 7;
        if (v54 >> 14)
        {
          v55 = a2 + 3;
          do
          {
            *(v55 - 1) = v56 | 0x80;
            v57 = v56 >> 7;
            ++v55;
            v58 = v56 >> 14;
            v56 >>= 7;
          }

          while (v58);
          *(v55 - 1) = v57;
        }

        else
        {
          a2[2] = v56;
          v55 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v54;
        v55 = a2 + 2;
      }

      a2 = TSP::UUID::_InternalSerialize(v53, v55, a3);
    }
  }

  v59 = *(this + 1);
  if ((v59 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v59 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityAuthorCacheArchive::ByteSizeLong(TSCK::ActivityAuthorCacheArchive *this)
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
      v7 = TSCK::ActivityAuthorCacheArchive_ShareParticipantIDCache::ByteSizeLong(v6);
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
      v14 = TSCK::ActivityAuthorCacheArchive_PublicIDCache::ByteSizeLong(v13);
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
      v21 = TSCK::ActivityAuthorCacheArchive_IndexCache::ByteSizeLong(v20);
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
      v28 = TSCK::ActivityAuthorCacheArchive_FirstJoinCache::ByteSizeLong(v27);
      v23 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6);
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 32);
  v30 = v23 + v29;
  v31 = *(this + 17);
  if (v31)
  {
    v32 = (v31 + 8);
  }

  else
  {
    v32 = 0;
  }

  if (v29)
  {
    v33 = 8 * v29;
    do
    {
      v34 = *v32++;
      v35 = TSP::Reference::ByteSizeLong(v34);
      v30 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      v33 -= 8;
    }

    while (v33);
  }

  v36 = *(this + 38);
  v37 = v30 + v36;
  v38 = *(this + 20);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  if (v36)
  {
    v40 = 8 * v36;
    do
    {
      v41 = *v39++;
      v42 = TSP::UUID::ByteSizeLong(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  if (*(this + 16))
  {
    v43 = TSP::Date::ByteSizeLong(*(this + 21));
    v37 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v37, this + 20);
  }

  else
  {
    *(this + 5) = v37;
    return v37;
  }
}

uint64_t TSCK::ActivityAuthorCacheArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityAuthorCacheArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityAuthorCacheArchive::MergeFrom(uint64_t this, const TSCK::ActivityAuthorCacheArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_27662E204(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(a2 + 8);
    v13 = *(a2 + 14);
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    this = sub_27662E2C4(v3 + 48, v14, (v12 + 8), v11, **(v3 + 64) - *(v3 + 56));
    v15 = *(v3 + 56) + v11;
    *(v3 + 56) = v15;
    v16 = *(v3 + 64);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 20);
  if (v17)
  {
    v18 = *(a2 + 11);
    v19 = *(a2 + 20);
    v20 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_27662E384(v3 + 72, v20, (v18 + 8), v17, **(v3 + 88) - *(v3 + 80));
    v21 = *(v3 + 80) + v17;
    *(v3 + 80) = v21;
    v22 = *(v3 + 88);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 26);
  if (v23)
  {
    v24 = *(a2 + 14);
    v25 = *(a2 + 26);
    v26 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    this = sub_27662E444(v3 + 96, v26, (v24 + 8), v23, **(v3 + 112) - *(v3 + 104));
    v27 = *(v3 + 104) + v23;
    *(v3 + 104) = v27;
    v28 = *(v3 + 112);
    if (*v28 < v27)
    {
      *v28 = v27;
    }
  }

  v29 = *(a2 + 32);
  if (v29)
  {
    v30 = *(a2 + 17);
    v31 = *(a2 + 32);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    this = sub_27662D428(v3 + 120, v32, (v30 + 8), v29, **(v3 + 136) - *(v3 + 128));
    v33 = *(v3 + 128) + v29;
    *(v3 + 128) = v33;
    v34 = *(v3 + 136);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 38);
  if (v35)
  {
    v36 = *(a2 + 20);
    v37 = *(a2 + 38);
    v38 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 144));
    this = sub_27662E504(v3 + 144, v38, (v36 + 8), v35, **(v3 + 160) - *(v3 + 152));
    v39 = *(v3 + 152) + v35;
    *(v3 + 152) = v39;
    v40 = *(v3 + 160);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  if (*(a2 + 16))
  {
    v41 = *(a2 + 21);
    *(v3 + 16) |= 1u;
    v42 = *(v3 + 168);
    if (!v42)
    {
      v43 = *(v3 + 8);
      if (v43)
      {
        v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
      }

      v42 = MEMORY[0x277C994A0](v43);
      *(v3 + 168) = v42;
      v41 = *(a2 + 21);
    }

    if (v41)
    {
      v44 = v41;
    }

    else
    {
      v44 = MEMORY[0x277D809C0];
    }

    return TSP::Date::MergeFrom(v42, v44);
  }

  return this;
}

uint64_t *TSCK::ActivityAuthorCacheArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityAuthorCacheArchive::Clear(result);

    return TSCK::ActivityAuthorCacheArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityAuthorCacheArchive::CopyFrom(uint64_t *this, const TSCK::ActivityAuthorCacheArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityAuthorCacheArchive::Clear(this);

    return TSCK::ActivityAuthorCacheArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityAuthorCacheArchive::IsInitialized(TSCK::ActivityAuthorCacheArchive *this)
{
  result = sub_276621470(this + 24);
  if (result)
  {
    result = sub_276621470(this + 48);
    if (result)
    {
      result = sub_2766214D8(this + 72);
      if (result)
      {
        v3 = *(this + 26);
        while (v3 >= 1)
        {
          v4 = v3 - 1;
          IsInitialized = TSCK::ActivityAuthorCacheArchive_FirstJoinCache::IsInitialized(*(*(this + 14) + 8 * v3));
          v3 = v4;
          if ((IsInitialized & 1) == 0)
          {
            return 0;
          }
        }

        v6 = *(this + 32);
        while (v6 >= 1)
        {
          v7 = v6 - 1;
          v8 = TSP::Reference::IsInitialized(*(*(this + 17) + 8 * v6));
          v6 = v7;
          if ((v8 & 1) == 0)
          {
            return 0;
          }
        }

        v9 = *(this + 38);
        while (v9 >= 1)
        {
          v10 = v9 - 1;
          v11 = TSP::UUID::IsInitialized(*(*(this + 20) + 8 * v9));
          result = 0;
          v9 = v10;
          if ((v11 & 1) == 0)
          {
            return result;
          }
        }

        if ((*(this + 16) & 1) == 0)
        {
          return 1;
        }

        result = TSP::Date::IsInitialized(*(this + 21));
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL sub_276621470(uint64_t a1)
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
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSP::UUID::IsInitialized(*(v4 + 32)) & 1) != 0);
  return v3 < 1;
}

BOOL sub_2766214D8(uint64_t a1)
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
    if ((~*(v4 + 16) & 3) != 0)
    {
      break;
    }

    --v2;
  }

  while ((TSP::UUID::IsInitialized(*(v4 + 24)) & 1) != 0);
  return v3 < 1;
}

__n128 TSCK::ActivityAuthorCacheArchive::InternalSwap(TSCK::ActivityAuthorCacheArchive *this, TSCK::ActivityAuthorCacheArchive *a2)
{
  sub_2765F8BC4(this + 1, a2 + 1);
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
  v13 = *(this + 16);
  v14 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v13;
  *(a2 + 17) = v14;
  v15 = *(this + 19);
  v16 = *(this + 20);
  result = *(a2 + 152);
  *(this + 152) = result;
  *(a2 + 19) = v15;
  *(a2 + 20) = v16;
  v18 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v18;
  return result;
}

uint64_t TSCK::ActivityAuthorCacheArchive::GetMetadata(TSCK::ActivityAuthorCacheArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[96];
  v2 = off_2812F9CC0[97];
  return result;
}

TSK::CommandArchive *TSCK::ActivityOnlyCommandArchive::clear_super(TSCK::ActivityOnlyCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCK::ActivityOnlyCommandArchive *TSCK::ActivityOnlyCommandArchive::ActivityOnlyCommandArchive(TSCK::ActivityOnlyCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885715C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityOnlyCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885715C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ActivityOnlyCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSCK::ActivityOnlyCommandArchive *TSCK::ActivityOnlyCommandArchive::ActivityOnlyCommandArchive(TSCK::ActivityOnlyCommandArchive *this, const TSCK::ActivityOnlyCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885715C8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27662D2A0(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  return this;
}

void TSCK::ActivityOnlyCommandArchive::~ActivityOnlyCommandArchive(TSCK::ActivityOnlyCommandArchive *this)
{
  if (this != &TSCK::_ActivityOnlyCommandArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C98FA0]();
    MEMORY[0x277C999C0](v2, 0x10A1C40C24530F0);
  }

  sub_2765F8538(this + 1);
}

{
  TSCK::ActivityOnlyCommandArchive::~ActivityOnlyCommandArchive(this);

  JUMPOUT(0x277C999C0);
}

uint64_t *TSCK::ActivityOnlyCommandArchive::default_instance(TSCK::ActivityOnlyCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityOnlyCommandArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityOnlyCommandArchive_default_instance_;
}

uint64_t *TSCK::ActivityOnlyCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSK::CommandArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27662D2EC(v2);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityOnlyCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = *(a3 + 92);
  while ((sub_27662CC00(a3, &v18) & 1) == 0)
  {
    v6 = (v18 + 1);
    v7 = *v18;
    if (*v18 < 0)
    {
      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if (*v6 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
        v18 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v6 = TagFallback;
        v7 = v16;
        goto LABEL_7;
      }

      v6 = (v18 + 2);
    }

    v18 = v6;
LABEL_7:
    if (v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v11 = *(a1 + 24);
      if (!v11)
      {
        v12 = *(a1 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x277C99420](v12);
        LODWORD(v11) = v13;
        *(a1 + 24) = v13;
        v6 = v18;
      }

      v10 = sub_276635B50(a3, v11, v6);
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
        return v18;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27662D0DC((a1 + 8));
      }

      v10 = google::protobuf::internal::UnknownFieldParse();
    }

    v18 = v10;
    if (!v10)
    {
      return 0;
    }

    v14 = *(a3 + 92);
  }

  return v18;
}

unsigned __int8 *TSCK::ActivityOnlyCommandArchive::_InternalSerialize(TSCK::ActivityOnlyCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSCK::ActivityOnlyCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[3]);
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

uint64_t TSCK::ActivityOnlyCommandArchive::MergeFrom(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (v5)
  {

    return TSCK::ActivityOnlyCommandArchive::MergeFrom(a1, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSCK::ActivityOnlyCommandArchive::MergeFrom(uint64_t this, const TSCK::ActivityOnlyCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27662D2A0((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277C99420](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    return TSK::CommandArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSCK::ActivityOnlyCommandArchive::CopyFrom(uint64_t *result, char **a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSCK::ActivityOnlyCommandArchive::Clear(result);

    return TSCK::ActivityOnlyCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSCK::ActivityOnlyCommandArchive::CopyFrom(uint64_t *this, const TSCK::ActivityOnlyCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCK::ActivityOnlyCommandArchive::Clear(this);

    return TSCK::ActivityOnlyCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCK::ActivityOnlyCommandArchive::IsInitialized(TSK::CommandArchive **this)
{
  if (this[2])
  {
    return TSK::CommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSCK::ActivityOnlyCommandArchive::InternalSwap(TSCK::ActivityOnlyCommandArchive *this, TSCK::ActivityOnlyCommandArchive *a2)
{
  result = sub_2765F8BC4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  return result;
}

uint64_t TSCK::ActivityOnlyCommandArchive::GetMetadata(TSCK::ActivityOnlyCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812F9CC0[98];
  v2 = off_2812F9CC0[99];
  return result;
}

TSP::UUID *TSCK::ActivityNotificationItemArchive::clear_unique_identifier(TSCK::ActivityNotificationItemArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSCK::ActivityNotificationItemArchive::clear_activities(uint64_t this)
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

TSP::Date *TSCK::ActivityNotificationItemArchive::clear_first_timestamp(TSCK::ActivityNotificationItemArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSCK::ActivityNotificationItemArchive *TSCK::ActivityNotificationItemArchive::ActivityNotificationItemArchive(TSCK::ActivityNotificationItemArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288571678;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ActivityNotificationItemArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  return this;
}

TSCK::ActivityNotificationItemArchive *TSCK::ActivityNotificationItemArchive::ActivityNotificationItemArchive(TSCK::ActivityNotificationItemArchive *this, const TSCK::ActivityNotificationItemArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288571678;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27662D428(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v5;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_27662D2A0(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v12 = *(a2 + 4);
  if (v12)
  {
    operator new();
  }

  *(this + 6) = 0;
  if ((v12 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  *(this + 16) = *(a2 + 16);
  return this;
}

void sub_276622158(_Unwind_Exception *a1)
{
  MEMORY[0x277C999C0](v2, 0x1081C404FE48876);
  sub_27662D3A4((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCK::ActivityNotificationItemArchive::~ActivityNotificationItemArchive(TSCK::ActivityNotificationItemArchive *this)
{
  if (this != &TSCK::_ActivityNotificationItemArchive_default_instance_)
  {
    v2 = *(this + 6);
    if (v2)
    {
      TSP::UUID::~UUID(v2);
      MEMORY[0x277C999C0]();
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSP::Date::~Date(v3);
      MEMORY[0x277C999C0]();
    }
  }

  sub_2765F8538(this + 1);
  sub_27662D3A4(this + 3);
}

{
  TSCK::ActivityNotificationItemArchive::~ActivityNotificationItemArchive(this);

  JUMPOUT(0x277C999C0);
}

void *TSCK::ActivityNotificationItemArchive::default_instance(TSCK::ActivityNotificationItemArchive *this)
{
  if (atomic_load_explicit(scc_info_ActivityNotificationItemArchive_TSCKArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCK::_ActivityNotificationItemArchive_default_instance_;
}

uint64_t *TSCK::ActivityNotificationItemArchive::Clear(uint64_t *this)
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

  v5 = *(v1 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      this = TSP::UUID::Clear(*(v1 + 48));
    }

    if ((v5 & 2) != 0)
    {
      this = TSP::Date::Clear(*(v1 + 56));
    }
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 56) = 0;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27662D2EC(v6);
  }

  return this;
}

google::protobuf::internal *TSCK::ActivityNotificationItemArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_27662CC00(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v8 = (v39 + 1);
      v9 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v10 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_61;
      }

      v8 = TagFallback;
      v9 = v36;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 > 2)
      {
        if (v11 != 3)
        {
          if (v11 != 4 || v9 != 34)
          {
            goto LABEL_46;
          }

          *(a1 + 16) |= 2u;
          v17 = *(a1 + 56);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = MEMORY[0x277C994A0](v18);
            LODWORD(v17) = v19;
            *(a1 + 56) = v19;
            v8 = v39;
          }

          v16 = sub_276636030(a3, v17, v8);
          goto LABEL_53;
        }

        if (v9 != 26)
        {
          goto LABEL_46;
        }

        v23 = v8 - 1;
        while (2)
        {
          v24 = (v23 + 1);
          v39 = (v23 + 1);
          v25 = *(a1 + 40);
          if (!v25)
          {
            v26 = *(a1 + 36);
            goto LABEL_36;
          }

          v32 = *(a1 + 32);
          v27 = *v25;
          if (v32 >= *v25)
          {
            if (v27 == *(a1 + 36))
            {
LABEL_36:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v25 = *(a1 + 40);
              v27 = *v25;
            }

            *v25 = v27 + 1;
            v28 = MEMORY[0x277C994F0](*(a1 + 24));
            LODWORD(v29) = v28;
            v30 = *(a1 + 32);
            v31 = *(a1 + 40) + 8 * v30;
            *(a1 + 32) = v30 + 1;
            *(v31 + 8) = v28;
            v24 = v39;
          }

          else
          {
            *(a1 + 32) = v32 + 1;
            v29 = *&v25[2 * v32 + 2];
          }

          v23 = sub_2766358E0(a3, v29, v24);
          v39 = v23;
          if (!v23)
          {
            goto LABEL_61;
          }

          if (*a3 <= v23 || *v23 != 26)
          {
            goto LABEL_54;
          }

          continue;
        }
      }

      if (v11 != 1)
      {
        if (v11 == 2 && v9 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 48);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277C994B0](v14);
            LODWORD(v13) = v15;
            *(a1 + 48) = v15;
            v8 = v39;
          }

          v16 = sub_2766359B0(a3, v13, v8);
        }

        else
        {
LABEL_46:
          if (v9)
          {
            v33 = (v9 & 7) == 4;
          }

          else
          {
            v33 = 1;
          }

          if (v33)
          {
            *(a3 + 80) = v9 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27662D0DC((a1 + 8));
          }

          v16 = google::protobuf::internal::UnknownFieldParse();
        }

LABEL_53:
        v39 = v16;
        if (!v16)
        {
          goto LABEL_61;
        }

        goto LABEL_54;
      }

      if (v9 != 8)
      {
        goto LABEL_46;
      }

      v6 |= 4u;
      v21 = (v8 + 1);
      LODWORD(v20) = *v8;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      v22 = *v21;
      v20 = (v20 + (v22 << 7) - 128);
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (v8 + 2);
LABEL_31:
        v39 = v21;
        *(a1 + 64) = v20;
        goto LABEL_54;
      }

      v37 = google::protobuf::internal::VarintParseSlow64(v8, v20);
      v39 = v37;
      *(a1 + 64) = v38;
      if (!v37)
      {
LABEL_61:
        v39 = 0;
        goto LABEL_2;
      }

LABEL_54:
      v34 = *(a3 + 92);
      if (sub_27662CC00(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v8 = (v39 + 2);
LABEL_6:
    v39 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v39;
}