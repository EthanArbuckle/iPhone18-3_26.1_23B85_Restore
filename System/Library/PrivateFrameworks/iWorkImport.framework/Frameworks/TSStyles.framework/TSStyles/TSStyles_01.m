google::protobuf::internal *TSS::StylesheetArchive_VersionedStyles::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v44 = a2;
  v5 = *(a3 + 92);
  if ((sub_276CD7ED8(a3, &v44) & 1) == 0)
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
        return 0;
      }

      v7 = TagFallback;
      v8 = v43;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        v23 = (v7 - 1);
        while (2)
        {
          v24 = (v23 + 1);
          v44 = (v23 + 1);
          v25 = *(a1 + 80);
          if (!v25)
          {
            v26 = *(a1 + 76);
            goto LABEL_40;
          }

          v31 = *(a1 + 72);
          v27 = *v25;
          if (v31 >= *v25)
          {
            if (v27 == *(a1 + 76))
            {
LABEL_40:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 64));
              v25 = *(a1 + 80);
              v27 = *v25;
            }

            *v25 = v27 + 1;
            v28 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_StyleChildrenEntry>(*(a1 + 64));
            v29 = *(a1 + 72);
            v30 = *(a1 + 80) + 8 * v29;
            *(a1 + 72) = v29 + 1;
            *(v30 + 8) = v28;
            v24 = v44;
          }

          else
          {
            *(a1 + 72) = v31 + 1;
            v28 = *&v25[2 * v31 + 2];
          }

          v23 = sub_276CE1C24(a3, v28, v24);
          v44 = v23;
          if (!v23)
          {
            return 0;
          }

          if (*a3 <= v23 || *v23 != 26)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      if (v10 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_13;
        }

        v14 = (v7 - 1);
        while (2)
        {
          v15 = (v14 + 1);
          v44 = (v14 + 1);
          v16 = *(a1 + 56);
          if (!v16)
          {
            v17 = *(a1 + 52);
            goto LABEL_26;
          }

          v22 = *(a1 + 48);
          v18 = *v16;
          if (v22 >= *v16)
          {
            if (v18 == *(a1 + 52))
            {
LABEL_26:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
              v16 = *(a1 + 56);
              v18 = *v16;
            }

            *v16 = v18 + 1;
            v19 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_IdentifiedStyleEntry>(*(a1 + 40));
            v20 = *(a1 + 48);
            v21 = *(a1 + 56) + 8 * v20;
            *(a1 + 48) = v20 + 1;
            *(v21 + 8) = v19;
            v15 = v44;
          }

          else
          {
            *(a1 + 48) = v22 + 1;
            v19 = *&v16[2 * v22 + 2];
          }

          v14 = sub_276CE1B54(a3, v19, v15);
          v44 = v14;
          if (!v14)
          {
            return 0;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_20;
          }

          continue;
        }
      }

      if (v10 == 1 && v8 == 10)
      {
        v32 = v7 - 1;
        while (1)
        {
          v33 = (v32 + 1);
          v44 = (v32 + 1);
          v34 = *(a1 + 32);
          if (!v34)
          {
            break;
          }

          v41 = *(a1 + 24);
          v36 = *v34;
          if (v41 < *v34)
          {
            *(a1 + 24) = v41 + 1;
            v38 = *&v34[2 * v41 + 2];
            goto LABEL_57;
          }

          if (v36 == *(a1 + 28))
          {
            goto LABEL_53;
          }

LABEL_54:
          *v34 = v36 + 1;
          v37 = MEMORY[0x277CA0650](*(a1 + 16));
          LODWORD(v38) = v37;
          v39 = *(a1 + 24);
          v40 = *(a1 + 32) + 8 * v39;
          *(a1 + 24) = v39 + 1;
          *(v40 + 8) = v37;
          v33 = v44;
LABEL_57:
          v32 = sub_276CE1A84(a3, v38, v33);
          v44 = v32;
          if (!v32)
          {
            return 0;
          }

          if (*a3 <= v32 || *v32 != 10)
          {
            goto LABEL_20;
          }
        }

        v35 = *(a1 + 28);
LABEL_53:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
        v34 = *(a1 + 32);
        v36 = *v34;
        goto LABEL_54;
      }

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
        return v44;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276CD7F50((a1 + 8));
      }

      v44 = google::protobuf::internal::UnknownFieldParse();
      if (!v44)
      {
        return 0;
      }

LABEL_20:
      v13 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v44))
      {
        return v44;
      }
    }

    v7 = (v44 + 2);
LABEL_6:
    v44 = v7;
    goto LABEL_7;
  }

  return v44;
}

unsigned __int8 *TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(TSS::StylesheetArchive_VersionedStyles *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  v13 = *(this + 12);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(this + 7) + 8 * j + 8);
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

      a2 = TSS::StylesheetArchive_IdentifiedStyleEntry::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 18);
  if (v21)
  {
    for (k = 0; k != v21; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v23 = *(*(this + 10) + 8 * k + 8);
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

      a2 = TSS::StylesheetArchive_StyleChildrenEntry::_InternalSerialize(v23, v25, a3);
    }
  }

  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v29 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(TSS::StylesheetArchive_VersionedStyles *this)
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

  v8 = *(this + 12);
  v9 = v2 + v8;
  v10 = *(this + 7);
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
      v14 = TSS::StylesheetArchive_IdentifiedStyleEntry::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 18);
  v16 = v9 + v15;
  v17 = *(this + 10);
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
      v21 = TSS::StylesheetArchive_StyleChildrenEntry::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v16, this + 88);
  }

  else
  {
    *(this + 22) = v16;
    return v16;
  }
}

uint64_t TSS::StylesheetArchive_VersionedStyles::MergeFrom(TSS::StylesheetArchive_VersionedStyles *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::StylesheetArchive_VersionedStyles::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::StylesheetArchive_VersionedStyles::MergeFrom(uint64_t this, const TSS::StylesheetArchive_VersionedStyles *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = *(a2 + 6);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276CD81CC(v3 + 16, v8, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v9 = *(v3 + 24) + v5;
    *(v3 + 24) = v9;
    v10 = *(v3 + 32);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = *(a2 + 12);
    v14 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 40));
    this = sub_276CD8394(v3 + 40, v14, (v12 + 8), v11, **(v3 + 56) - *(v3 + 48));
    v15 = *(v3 + 48) + v11;
    *(v3 + 48) = v15;
    v16 = *(v3 + 56);
    if (*v16 < v15)
    {
      *v16 = v15;
    }
  }

  v17 = *(a2 + 18);
  if (v17)
  {
    v18 = *(a2 + 10);
    v19 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 64));
    this = sub_276CD8454(v3 + 64, v19, (v18 + 8), v17, **(v3 + 80) - *(v3 + 72));
    v20 = *(v3 + 72) + v17;
    *(v3 + 72) = v20;
    v21 = *(v3 + 80);
    if (*v21 < v20)
    {
      *v21 = v20;
    }
  }

  return this;
}

uint64_t *TSS::StylesheetArchive_VersionedStyles::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StylesheetArchive_VersionedStyles::Clear(this);

    return TSS::StylesheetArchive_VersionedStyles::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::StylesheetArchive_VersionedStyles::CopyFrom(uint64_t *this, const TSS::StylesheetArchive_VersionedStyles *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StylesheetArchive_VersionedStyles::Clear(this);

    return TSS::StylesheetArchive_VersionedStyles::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSS::StylesheetArchive_VersionedStyles::IsInitialized(TSS::StylesheetArchive_VersionedStyles *this)
{
  v2 = *(this + 6);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  if (!sub_276CC7450(this + 40))
  {
    return 0;
  }

  v5 = *(this + 18);
  do
  {
    v6 = v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v7 = v5 - 1;
    v8 = TSS::StylesheetArchive_StyleChildrenEntry::IsInitialized(*(*(this + 10) + 8 * v5));
    v5 = v7;
  }

  while ((v8 & 1) != 0);
  return v6;
}

BOOL sub_276CC7450(uint64_t a1)
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

  while ((TSP::Reference::IsInitialized(*(v4 + 32)) & 1) != 0);
  return v3 < 1;
}

__n128 TSS::StylesheetArchive_VersionedStyles::InternalSwap(TSS::StylesheetArchive_VersionedStyles *this, TSS::StylesheetArchive_VersionedStyles *a2)
{
  sub_276CC4DA4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  v7 = *(this + 7);
  *(this + 3) = *(a2 + 3);
  *(a2 + 6) = v6;
  *(a2 + 7) = v7;
  v8 = *(this + 9);
  v9 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v8;
  *(a2 + 10) = v9;
  return result;
}

uint64_t TSS::StylesheetArchive_VersionedStyles::GetMetadata(TSS::StylesheetArchive_VersionedStyles *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[6];
  v2 = off_2812FAF80[7];
  return result;
}

uint64_t TSS::StylesheetArchive::clear_styles(uint64_t this)
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

TSP::Reference *TSS::StylesheetArchive::clear_parent(TSS::StylesheetArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSS::StylesheetArchive *TSS::StylesheetArchive::StylesheetArchive(TSS::StylesheetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6710;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 9) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (atomic_load_explicit(scc_info_StylesheetArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 120) = 256;
  return this;
}

void sub_276CC7718(_Unwind_Exception *a1)
{
  sub_276CD8310(v3);
  sub_276CD828C(v2);
  sub_276CA86B8(v1);
  _Unwind_Resume(a1);
}

TSS::StylesheetArchive *TSS::StylesheetArchive::StylesheetArchive(TSS::StylesheetArchive *this, const TSS::StylesheetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6710;
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
    sub_276CD81CC(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_276CD8394(this + 48, v14, (v12 + 8), v11, **(this + 8) - *(this + 14));
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
    sub_276CD8454(this + 72, v20, (v18 + 8), v17, **(this + 11) - *(this + 20));
    v21 = *(this + 20) + v17;
    *(this + 20) = v21;
    v22 = *(this + 11);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 1);
  if (v23)
  {
    sub_276CD80C8(v4, (v23 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v24 = *(a2 + 4);
  if (v24)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v24 & 2) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v24 & 4) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v24 & 8) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v24 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v24 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v24 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v24 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v24 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v24 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v24 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  if ((v24 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v24 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v24 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v24 & 0x4000) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v24 & 0x8000) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  if ((v24 & 0x10000) != 0)
  {
    operator new();
  }

  *(this + 28) = 0;
  if ((v24 & 0x20000) != 0)
  {
    operator new();
  }

  *(this + 29) = 0;
  *(this + 120) = *(a2 + 120);
  return this;
}

void sub_276CC7D04(_Unwind_Exception *a1)
{
  MEMORY[0x277CA0980](v4, 0x10A1C40989320B9);
  sub_276CD8310(v3);
  sub_276CD828C(v2);
  sub_276CA86B8((v1 + 24));
  _Unwind_Resume(a1);
}

void TSS::StylesheetArchive::~StylesheetArchive(TSS::StylesheetArchive *this)
{
  sub_276CC7E18(this);
  sub_276CC409C(this + 1);
  sub_276CD8310(this + 9);
  sub_276CD828C(this + 6);
  sub_276CA86B8(this + 3);
}

{
  TSS::StylesheetArchive::~StylesheetArchive(this);

  JUMPOUT(0x277CA0980);
}

void *sub_276CC7E18(void *result)
{
  if (result != &TSS::_StylesheetArchive_default_instance_)
  {
    v1 = result;
    v2 = result[12];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA0980]();
    }

    v3 = v1[13];
    if (v3)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v3);
      MEMORY[0x277CA0980]();
    }

    v4 = v1[14];
    if (v4)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v4);
      MEMORY[0x277CA0980]();
    }

    v5 = v1[15];
    if (v5)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v5);
      MEMORY[0x277CA0980]();
    }

    v6 = v1[16];
    if (v6)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v6);
      MEMORY[0x277CA0980]();
    }

    v7 = v1[17];
    if (v7)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v7);
      MEMORY[0x277CA0980]();
    }

    v8 = v1[18];
    if (v8)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v8);
      MEMORY[0x277CA0980]();
    }

    v9 = v1[19];
    if (v9)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v9);
      MEMORY[0x277CA0980]();
    }

    v10 = v1[20];
    if (v10)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v10);
      MEMORY[0x277CA0980]();
    }

    v11 = v1[21];
    if (v11)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v11);
      MEMORY[0x277CA0980]();
    }

    v12 = v1[22];
    if (v12)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v12);
      MEMORY[0x277CA0980]();
    }

    v13 = v1[23];
    if (v13)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v13);
      MEMORY[0x277CA0980]();
    }

    v14 = v1[24];
    if (v14)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v14);
      MEMORY[0x277CA0980]();
    }

    v15 = v1[25];
    if (v15)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v15);
      MEMORY[0x277CA0980]();
    }

    v16 = v1[26];
    if (v16)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v16);
      MEMORY[0x277CA0980]();
    }

    v17 = v1[27];
    if (v17)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v17);
      MEMORY[0x277CA0980]();
    }

    v18 = v1[28];
    if (v18)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(v18);
      MEMORY[0x277CA0980]();
    }

    result = v1[29];
    if (result)
    {
      TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles(result);

      JUMPOUT(0x277CA0980);
    }
  }

  return result;
}

void *TSS::StylesheetArchive::default_instance(TSS::StylesheetArchive *this)
{
  if (atomic_load_explicit(scc_info_StylesheetArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_StylesheetArchive_default_instance_;
}

uint64_t *TSS::StylesheetArchive::Clear(uint64_t *this)
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
      this = TSS::StylesheetArchive_IdentifiedStyleEntry::Clear(v7);
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
      this = TSS::StylesheetArchive_StyleChildrenEntry::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 80) = 0;
  }

  v11 = *(v1 + 16);
  if (!v11)
  {
    goto LABEL_23;
  }

  if (v11)
  {
    this = TSP::Reference::Clear(*(v1 + 96));
    if ((v11 & 2) == 0)
    {
LABEL_16:
      if ((v11 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_46;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_16;
  }

  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 104));
  if ((v11 & 4) == 0)
  {
LABEL_17:
    if ((v11 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 112));
  if ((v11 & 8) == 0)
  {
LABEL_18:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 120));
  if ((v11 & 0x10) == 0)
  {
LABEL_19:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_49:
    this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 136));
    if ((v11 & 0x40) == 0)
    {
LABEL_21:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_48:
  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 128));
  if ((v11 & 0x20) != 0)
  {
    goto LABEL_49;
  }

LABEL_20:
  if ((v11 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_50:
  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 144));
  if ((v11 & 0x80) != 0)
  {
LABEL_22:
    this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 152));
  }

LABEL_23:
  if ((v11 & 0xFF00) == 0)
  {
    goto LABEL_33;
  }

  if ((v11 & 0x100) != 0)
  {
    this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 160));
    if ((v11 & 0x200) == 0)
    {
LABEL_26:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_54;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_26;
  }

  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 168));
  if ((v11 & 0x400) == 0)
  {
LABEL_27:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 176));
  if ((v11 & 0x800) == 0)
  {
LABEL_28:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 184));
  if ((v11 & 0x1000) == 0)
  {
LABEL_29:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 192));
  if ((v11 & 0x2000) == 0)
  {
LABEL_30:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 200));
  if ((v11 & 0x4000) == 0)
  {
LABEL_31:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_58:
  this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 208));
  if ((v11 & 0x8000) != 0)
  {
LABEL_32:
    this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 216));
  }

LABEL_33:
  if ((v11 & 0x30000) != 0)
  {
    if ((v11 & 0x10000) != 0)
    {
      this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 224));
    }

    if ((v11 & 0x20000) != 0)
    {
      this = TSS::StylesheetArchive_VersionedStyles::Clear(*(v1 + 232));
    }
  }

  if ((v11 & 0xC0000) != 0)
  {
    *(v1 + 240) = 256;
  }

  v13 = *(v1 + 8);
  v12 = v1 + 8;
  *(v12 + 8) = 0;
  if (v13)
  {

    return sub_276CD8114(v12);
  }

  return this;
}

google::protobuf::internal *TSS::StylesheetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v75 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v75) & 1) == 0)
  {
    while (2)
    {
      v8 = (v75 + 1);
      v9 = *v75;
      if (*v75 < 0)
      {
        v10 = v9 + (*v8 << 7);
        v9 = v10 - 128;
        if (*v8 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v75, (v10 - 128));
          v75 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_170;
          }

          v8 = TagFallback;
          v9 = v22;
LABEL_7:
          switch(v9 >> 3)
          {
            case 1u:
              if (v9 != 10)
              {
                goto LABEL_158;
              }

              v11 = v8 - 1;
              while (1)
              {
                v12 = (v11 + 1);
                v75 = (v11 + 1);
                v13 = *(a1 + 40);
                if (!v13)
                {
                  break;
                }

                v20 = *(a1 + 32);
                v15 = *v13;
                if (v20 < *v13)
                {
                  *(a1 + 32) = v20 + 1;
                  v17 = *&v13[2 * v20 + 2];
                  goto LABEL_16;
                }

                if (v15 == *(a1 + 36))
                {
                  goto LABEL_12;
                }

LABEL_13:
                *v13 = v15 + 1;
                v16 = MEMORY[0x277CA0650](*(a1 + 24));
                LODWORD(v17) = v16;
                v18 = *(a1 + 32);
                v19 = *(a1 + 40) + 8 * v18;
                *(a1 + 32) = v18 + 1;
                *(v19 + 8) = v16;
                v12 = v75;
LABEL_16:
                v11 = sub_276CE1A84(a3, v17, v12);
                v75 = v11;
                if (!v11)
                {
                  goto LABEL_170;
                }

                if (*a3 <= v11 || *v11 != 10)
                {
                  goto LABEL_156;
                }
              }

              v14 = *(a1 + 36);
LABEL_12:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v13 = *(a1 + 40);
              v15 = *v13;
              goto LABEL_13;
            case 2u:
              if (v9 != 18)
              {
                goto LABEL_158;
              }

              v47 = (v8 - 1);
              while (1)
              {
                v48 = (v47 + 1);
                v75 = (v47 + 1);
                v49 = *(a1 + 64);
                if (!v49)
                {
                  break;
                }

                v55 = *(a1 + 56);
                v51 = *v49;
                if (v55 < *v49)
                {
                  *(a1 + 56) = v55 + 1;
                  v52 = *&v49[2 * v55 + 2];
                  goto LABEL_92;
                }

                if (v51 == *(a1 + 60))
                {
                  goto LABEL_88;
                }

LABEL_89:
                *v49 = v51 + 1;
                v52 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_IdentifiedStyleEntry>(*(a1 + 48));
                v53 = *(a1 + 56);
                v54 = *(a1 + 64) + 8 * v53;
                *(a1 + 56) = v53 + 1;
                *(v54 + 8) = v52;
                v48 = v75;
LABEL_92:
                v47 = sub_276CE1B54(a3, v52, v48);
                v75 = v47;
                if (!v47)
                {
                  goto LABEL_170;
                }

                if (*a3 <= v47 || *v47 != 18)
                {
                  goto LABEL_156;
                }
              }

              v50 = *(a1 + 60);
LABEL_88:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v49 = *(a1 + 64);
              v51 = *v49;
              goto LABEL_89;
            case 3u:
              if (v9 != 26)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 1u;
              v38 = *(a1 + 96);
              if (!v38)
              {
                v39 = *(a1 + 8);
                if (v39)
                {
                  v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
                }

                v40 = MEMORY[0x277CA0650](v39);
                LODWORD(v38) = v40;
                *(a1 + 96) = v40;
                v8 = v75;
              }

              v41 = sub_276CE1A84(a3, v38, v8);
              goto LABEL_155;
            case 4u:
              if (v9 != 32)
              {
                goto LABEL_158;
              }

              v6 |= 0x80000u;
              v44 = (v8 + 1);
              v43 = *v8;
              if ((v43 & 0x8000000000000000) == 0)
              {
                goto LABEL_78;
              }

              v45 = *v44;
              v43 = (v45 << 7) + v43 - 128;
              if (v45 < 0)
              {
                v71 = google::protobuf::internal::VarintParseSlow64(v8, v43);
                v75 = v71;
                *(a1 + 241) = v72 != 0;
                if (!v71)
                {
                  goto LABEL_170;
                }
              }

              else
              {
                v44 = (v8 + 2);
LABEL_78:
                v75 = v44;
                *(a1 + 241) = v43 != 0;
              }

              goto LABEL_156;
            case 5u:
              if (v9 != 42)
              {
                goto LABEL_158;
              }

              v27 = (v8 - 1);
              break;
            case 6u:
              if (v9 != 48)
              {
                goto LABEL_158;
              }

              v6 |= 0x40000u;
              v59 = (v8 + 1);
              v58 = *v8;
              if ((v58 & 0x8000000000000000) == 0)
              {
                goto LABEL_112;
              }

              v60 = *v59;
              v58 = (v60 << 7) + v58 - 128;
              if (v60 < 0)
              {
                v73 = google::protobuf::internal::VarintParseSlow64(v8, v58);
                v75 = v73;
                *(a1 + 240) = v74 != 0;
                if (!v73)
                {
                  goto LABEL_170;
                }
              }

              else
              {
                v59 = (v8 + 2);
LABEL_112:
                v75 = v59;
                *(a1 + 240) = v58 != 0;
              }

              goto LABEL_156;
            case 7u:
              if (v9 != 58)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 2u;
              v23 = *(a1 + 104);
              if (v23)
              {
                goto LABEL_154;
              }

              v63 = *(a1 + 8);
              if (v63)
              {
                v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v63);
              *(a1 + 104) = v23;
              goto LABEL_153;
            case 8u:
              if (v9 != 66)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 4u;
              v23 = *(a1 + 112);
              if (v23)
              {
                goto LABEL_154;
              }

              v46 = *(a1 + 8);
              if (v46)
              {
                v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v46);
              *(a1 + 112) = v23;
              goto LABEL_153;
            case 9u:
              if (v9 != 74)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 8u;
              v23 = *(a1 + 120);
              if (v23)
              {
                goto LABEL_154;
              }

              v66 = *(a1 + 8);
              if (v66)
              {
                v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v66);
              *(a1 + 120) = v23;
              goto LABEL_153;
            case 0xAu:
              if (v9 != 82)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x10u;
              v23 = *(a1 + 128);
              if (v23)
              {
                goto LABEL_154;
              }

              v37 = *(a1 + 8);
              if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v37);
              *(a1 + 128) = v23;
              goto LABEL_153;
            case 0xBu:
              if (v9 != 90)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x20u;
              v23 = *(a1 + 136);
              if (v23)
              {
                goto LABEL_154;
              }

              v65 = *(a1 + 8);
              if (v65)
              {
                v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v65);
              *(a1 + 136) = v23;
              goto LABEL_153;
            case 0xCu:
              if (v9 != 98)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x40u;
              v23 = *(a1 + 144);
              if (v23)
              {
                goto LABEL_154;
              }

              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v26);
              *(a1 + 144) = v23;
              goto LABEL_153;
            case 0xDu:
              if (v9 != 106)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x80u;
              v23 = *(a1 + 152);
              if (v23)
              {
                goto LABEL_154;
              }

              v36 = *(a1 + 8);
              if (v36)
              {
                v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v36);
              *(a1 + 152) = v23;
              goto LABEL_153;
            case 0xEu:
              if (v9 != 114)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x100u;
              v23 = *(a1 + 160);
              if (v23)
              {
                goto LABEL_154;
              }

              v62 = *(a1 + 8);
              if (v62)
              {
                v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v62);
              *(a1 + 160) = v23;
              goto LABEL_153;
            case 0xFu:
              if (v9 != 122)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x200u;
              v23 = *(a1 + 168);
              if (v23)
              {
                goto LABEL_154;
              }

              v25 = *(a1 + 8);
              if (v25)
              {
                v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v25);
              *(a1 + 168) = v23;
              goto LABEL_153;
            case 0x10u:
              if (v9 != 130)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x400u;
              v23 = *(a1 + 176);
              if (v23)
              {
                goto LABEL_154;
              }

              v42 = *(a1 + 8);
              if (v42)
              {
                v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v42);
              *(a1 + 176) = v23;
              goto LABEL_153;
            case 0x11u:
              if (v9 != 138)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x800u;
              v23 = *(a1 + 184);
              if (v23)
              {
                goto LABEL_154;
              }

              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v24);
              *(a1 + 184) = v23;
              goto LABEL_153;
            case 0x12u:
              if (v9 != 146)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x1000u;
              v23 = *(a1 + 192);
              if (v23)
              {
                goto LABEL_154;
              }

              v56 = *(a1 + 8);
              if (v56)
              {
                v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v56);
              *(a1 + 192) = v23;
              goto LABEL_153;
            case 0x13u:
              if (v9 != 154)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x2000u;
              v23 = *(a1 + 200);
              if (v23)
              {
                goto LABEL_154;
              }

              v64 = *(a1 + 8);
              if (v64)
              {
                v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v64);
              *(a1 + 200) = v23;
              goto LABEL_153;
            case 0x14u:
              if (v9 != 162)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x4000u;
              v23 = *(a1 + 208);
              if (v23)
              {
                goto LABEL_154;
              }

              v68 = *(a1 + 8);
              if (v68)
              {
                v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v68);
              *(a1 + 208) = v23;
              goto LABEL_153;
            case 0x15u:
              if (v9 != 170)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x8000u;
              v23 = *(a1 + 216);
              if (v23)
              {
                goto LABEL_154;
              }

              v57 = *(a1 + 8);
              if (v57)
              {
                v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v57);
              *(a1 + 216) = v23;
              goto LABEL_153;
            case 0x16u:
              if (v9 != 178)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x10000u;
              v23 = *(a1 + 224);
              if (v23)
              {
                goto LABEL_154;
              }

              v61 = *(a1 + 8);
              if (v61)
              {
                v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v61);
              *(a1 + 224) = v23;
              goto LABEL_153;
            case 0x17u:
              if (v9 != 186)
              {
                goto LABEL_158;
              }

              *(a1 + 16) |= 0x20000u;
              v23 = *(a1 + 232);
              if (v23)
              {
                goto LABEL_154;
              }

              v67 = *(a1 + 8);
              if (v67)
              {
                v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
              }

              v23 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v67);
              *(a1 + 232) = v23;
LABEL_153:
              v8 = v75;
LABEL_154:
              v41 = sub_276CE1CF4(a3, v23, v8);
              goto LABEL_155;
            default:
LABEL_158:
              if (v9)
              {
                v70 = (v9 & 7) == 4;
              }

              else
              {
                v70 = 1;
              }

              if (v70)
              {
                *(a3 + 80) = v9 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_276CD7F50((a1 + 8));
              }

              v41 = google::protobuf::internal::UnknownFieldParse();
LABEL_155:
              v75 = v41;
              if (!v41)
              {
LABEL_170:
                v75 = 0;
                goto LABEL_2;
              }

LABEL_156:
              v69 = *(a3 + 92);
              if (sub_276CD7ED8(a3, &v75))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v28 = (v27 + 1);
            v75 = (v27 + 1);
            v29 = *(a1 + 88);
            if (!v29)
            {
              break;
            }

            v35 = *(a1 + 80);
            v31 = *v29;
            if (v35 < *v29)
            {
              *(a1 + 80) = v35 + 1;
              v32 = *&v29[2 * v35 + 2];
              goto LABEL_47;
            }

            if (v31 == *(a1 + 84))
            {
              goto LABEL_43;
            }

LABEL_44:
            *v29 = v31 + 1;
            v32 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_StyleChildrenEntry>(*(a1 + 72));
            v33 = *(a1 + 80);
            v34 = *(a1 + 88) + 8 * v33;
            *(a1 + 80) = v33 + 1;
            *(v34 + 8) = v32;
            v28 = v75;
LABEL_47:
            v27 = sub_276CE1C24(a3, v32, v28);
            v75 = v27;
            if (!v27)
            {
              goto LABEL_170;
            }

            if (*a3 <= v27 || *v27 != 42)
            {
              goto LABEL_156;
            }
          }

          v30 = *(a1 + 84);
LABEL_43:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
          v29 = *(a1 + 88);
          v31 = *v29;
          goto LABEL_44;
        }

        v8 = (v75 + 2);
      }

      break;
    }

    v75 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v75;
}

unsigned __int8 *TSS::StylesheetArchive::_InternalSerialize(TSS::StylesheetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSS::StylesheetArchive_IdentifiedStyleEntry::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 4);
  if (v21)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v22 = *(this + 12);
    *a2 = 26;
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

    a2 = TSP::Reference::_InternalSerialize(v22, v24, a3);
  }

  if ((v21 & 0x80000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v28 = *(this + 241);
    *a2 = 32;
    a2[1] = v28;
    a2 += 2;
  }

  v29 = *(this + 20);
  if (v29)
  {
    for (k = 0; k != v29; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v31 = *(*(this + 11) + 8 * k + 8);
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

      a2 = TSS::StylesheetArchive_StyleChildrenEntry::_InternalSerialize(v31, v33, a3);
    }
  }

  if ((v21 & 0x40000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(this + 240);
    *a2 = 48;
    a2[1] = v37;
    a2 += 2;
    if ((v21 & 2) == 0)
    {
LABEL_54:
      if ((v21 & 4) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_84;
    }
  }

  else if ((v21 & 2) == 0)
  {
    goto LABEL_54;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 13);
  *a2 = 58;
  v39 = *(v38 + 22);
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

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v38, v40, a3);
  if ((v21 & 4) == 0)
  {
LABEL_55:
    if ((v21 & 8) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_94;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v44 = *(this + 14);
  *a2 = 66;
  v45 = *(v44 + 22);
  if (v45 > 0x7F)
  {
    a2[1] = v45 | 0x80;
    v47 = v45 >> 7;
    if (v45 >> 14)
    {
      v46 = a2 + 3;
      do
      {
        *(v46 - 1) = v47 | 0x80;
        v48 = v47 >> 7;
        ++v46;
        v49 = v47 >> 14;
        v47 >>= 7;
      }

      while (v49);
      *(v46 - 1) = v48;
    }

    else
    {
      a2[2] = v47;
      v46 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v45;
    v46 = a2 + 2;
  }

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v44, v46, a3);
  if ((v21 & 8) == 0)
  {
LABEL_56:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_104;
  }

LABEL_94:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v50 = *(this + 15);
  *a2 = 74;
  v51 = *(v50 + 22);
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

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v50, v52, a3);
  if ((v21 & 0x10) == 0)
  {
LABEL_57:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_114;
  }

LABEL_104:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v56 = *(this + 16);
  *a2 = 82;
  v57 = *(v56 + 22);
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

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v56, v58, a3);
  if ((v21 & 0x20) == 0)
  {
LABEL_58:
    if ((v21 & 0x40) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_124;
  }

LABEL_114:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v62 = *(this + 17);
  *a2 = 90;
  v63 = *(v62 + 22);
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

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v62, v64, a3);
  if ((v21 & 0x40) == 0)
  {
LABEL_59:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_134;
  }

LABEL_124:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v68 = *(this + 18);
  *a2 = 98;
  v69 = *(v68 + 22);
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

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v68, v70, a3);
  if ((v21 & 0x80) == 0)
  {
LABEL_60:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_144;
  }

LABEL_134:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v74 = *(this + 19);
  *a2 = 106;
  v75 = *(v74 + 22);
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

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v74, v76, a3);
  if ((v21 & 0x100) == 0)
  {
LABEL_61:
    if ((v21 & 0x200) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_154;
  }

LABEL_144:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v80 = *(this + 20);
  *a2 = 114;
  v81 = *(v80 + 22);
  if (v81 > 0x7F)
  {
    a2[1] = v81 | 0x80;
    v83 = v81 >> 7;
    if (v81 >> 14)
    {
      v82 = a2 + 3;
      do
      {
        *(v82 - 1) = v83 | 0x80;
        v84 = v83 >> 7;
        ++v82;
        v85 = v83 >> 14;
        v83 >>= 7;
      }

      while (v85);
      *(v82 - 1) = v84;
    }

    else
    {
      a2[2] = v83;
      v82 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v81;
    v82 = a2 + 2;
  }

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v80, v82, a3);
  if ((v21 & 0x200) == 0)
  {
LABEL_62:
    if ((v21 & 0x400) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_164;
  }

LABEL_154:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v86 = *(this + 21);
  *a2 = 122;
  v87 = *(v86 + 22);
  if (v87 > 0x7F)
  {
    a2[1] = v87 | 0x80;
    v89 = v87 >> 7;
    if (v87 >> 14)
    {
      v88 = a2 + 3;
      do
      {
        *(v88 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++v88;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(v88 - 1) = v90;
    }

    else
    {
      a2[2] = v89;
      v88 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v87;
    v88 = a2 + 2;
  }

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v86, v88, a3);
  if ((v21 & 0x400) == 0)
  {
LABEL_63:
    if ((v21 & 0x800) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_174;
  }

LABEL_164:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v92 = *(this + 22);
  *a2 = 386;
  v93 = *(v92 + 22);
  if (v93 > 0x7F)
  {
    a2[2] = v93 | 0x80;
    v95 = v93 >> 7;
    if (v93 >> 14)
    {
      v94 = a2 + 4;
      do
      {
        *(v94 - 1) = v95 | 0x80;
        v96 = v95 >> 7;
        ++v94;
        v97 = v95 >> 14;
        v95 >>= 7;
      }

      while (v97);
      *(v94 - 1) = v96;
    }

    else
    {
      a2[3] = v95;
      v94 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v93;
    v94 = a2 + 3;
  }

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v92, v94, a3);
  if ((v21 & 0x800) == 0)
  {
LABEL_64:
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_184;
  }

LABEL_174:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v98 = *(this + 23);
  *a2 = 394;
  v99 = *(v98 + 22);
  if (v99 > 0x7F)
  {
    a2[2] = v99 | 0x80;
    v101 = v99 >> 7;
    if (v99 >> 14)
    {
      v100 = a2 + 4;
      do
      {
        *(v100 - 1) = v101 | 0x80;
        v102 = v101 >> 7;
        ++v100;
        v103 = v101 >> 14;
        v101 >>= 7;
      }

      while (v103);
      *(v100 - 1) = v102;
    }

    else
    {
      a2[3] = v101;
      v100 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v99;
    v100 = a2 + 3;
  }

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v98, v100, a3);
  if ((v21 & 0x1000) == 0)
  {
LABEL_65:
    if ((v21 & 0x2000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_194;
  }

LABEL_184:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v104 = *(this + 24);
  *a2 = 402;
  v105 = *(v104 + 22);
  if (v105 > 0x7F)
  {
    a2[2] = v105 | 0x80;
    v107 = v105 >> 7;
    if (v105 >> 14)
    {
      v106 = a2 + 4;
      do
      {
        *(v106 - 1) = v107 | 0x80;
        v108 = v107 >> 7;
        ++v106;
        v109 = v107 >> 14;
        v107 >>= 7;
      }

      while (v109);
      *(v106 - 1) = v108;
    }

    else
    {
      a2[3] = v107;
      v106 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v105;
    v106 = a2 + 3;
  }

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v104, v106, a3);
  if ((v21 & 0x2000) == 0)
  {
LABEL_66:
    if ((v21 & 0x4000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_204;
  }

LABEL_194:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v110 = *(this + 25);
  *a2 = 410;
  v111 = *(v110 + 22);
  if (v111 > 0x7F)
  {
    a2[2] = v111 | 0x80;
    v113 = v111 >> 7;
    if (v111 >> 14)
    {
      v112 = a2 + 4;
      do
      {
        *(v112 - 1) = v113 | 0x80;
        v114 = v113 >> 7;
        ++v112;
        v115 = v113 >> 14;
        v113 >>= 7;
      }

      while (v115);
      *(v112 - 1) = v114;
    }

    else
    {
      a2[3] = v113;
      v112 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v111;
    v112 = a2 + 3;
  }

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v110, v112, a3);
  if ((v21 & 0x4000) == 0)
  {
LABEL_67:
    if ((v21 & 0x8000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_214;
  }

LABEL_204:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v116 = *(this + 26);
  *a2 = 418;
  v117 = *(v116 + 22);
  if (v117 > 0x7F)
  {
    a2[2] = v117 | 0x80;
    v119 = v117 >> 7;
    if (v117 >> 14)
    {
      v118 = a2 + 4;
      do
      {
        *(v118 - 1) = v119 | 0x80;
        v120 = v119 >> 7;
        ++v118;
        v121 = v119 >> 14;
        v119 >>= 7;
      }

      while (v121);
      *(v118 - 1) = v120;
    }

    else
    {
      a2[3] = v119;
      v118 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v117;
    v118 = a2 + 3;
  }

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v116, v118, a3);
  if ((v21 & 0x8000) == 0)
  {
LABEL_68:
    if ((v21 & 0x10000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_224;
  }

LABEL_214:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v122 = *(this + 27);
  *a2 = 426;
  v123 = *(v122 + 22);
  if (v123 > 0x7F)
  {
    a2[2] = v123 | 0x80;
    v125 = v123 >> 7;
    if (v123 >> 14)
    {
      v124 = a2 + 4;
      do
      {
        *(v124 - 1) = v125 | 0x80;
        v126 = v125 >> 7;
        ++v124;
        v127 = v125 >> 14;
        v125 >>= 7;
      }

      while (v127);
      *(v124 - 1) = v126;
    }

    else
    {
      a2[3] = v125;
      v124 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v123;
    v124 = a2 + 3;
  }

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v122, v124, a3);
  if ((v21 & 0x10000) == 0)
  {
LABEL_69:
    if ((v21 & 0x20000) == 0)
    {
      goto LABEL_244;
    }

    goto LABEL_234;
  }

LABEL_224:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v128 = *(this + 28);
  *a2 = 434;
  v129 = *(v128 + 22);
  if (v129 > 0x7F)
  {
    a2[2] = v129 | 0x80;
    v131 = v129 >> 7;
    if (v129 >> 14)
    {
      v130 = a2 + 4;
      do
      {
        *(v130 - 1) = v131 | 0x80;
        v132 = v131 >> 7;
        ++v130;
        v133 = v131 >> 14;
        v131 >>= 7;
      }

      while (v133);
      *(v130 - 1) = v132;
    }

    else
    {
      a2[3] = v131;
      v130 = a2 + 4;
    }
  }

  else
  {
    a2[2] = v129;
    v130 = a2 + 3;
  }

  a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v128, v130, a3);
  if ((v21 & 0x20000) != 0)
  {
LABEL_234:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v134 = *(this + 29);
    *a2 = 442;
    v135 = *(v134 + 22);
    if (v135 > 0x7F)
    {
      a2[2] = v135 | 0x80;
      v137 = v135 >> 7;
      if (v135 >> 14)
      {
        v136 = a2 + 4;
        do
        {
          *(v136 - 1) = v137 | 0x80;
          v138 = v137 >> 7;
          ++v136;
          v139 = v137 >> 14;
          v137 >>= 7;
        }

        while (v139);
        *(v136 - 1) = v138;
      }

      else
      {
        a2[3] = v137;
        v136 = a2 + 4;
      }
    }

    else
    {
      a2[2] = v135;
      v136 = a2 + 3;
    }

    a2 = TSS::StylesheetArchive_VersionedStyles::_InternalSerialize(v134, v136, a3);
  }

LABEL_244:
  v140 = *(this + 1);
  if ((v140 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v140 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::StylesheetArchive::ByteSizeLong(TSS::StylesheetArchive *this)
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
      v14 = TSS::StylesheetArchive_IdentifiedStyleEntry::ByteSizeLong(v13);
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
      v21 = TSS::StylesheetArchive_StyleChildrenEntry::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 4);
  if (!v22)
  {
    goto LABEL_31;
  }

  if (v22)
  {
    v28 = TSP::Reference::ByteSizeLong(*(this + 12));
    v16 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 2) == 0)
    {
LABEL_24:
      if ((v22 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_51;
    }
  }

  else if ((v22 & 2) == 0)
  {
    goto LABEL_24;
  }

  v29 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 13));
  v16 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 4) == 0)
  {
LABEL_25:
    if ((v22 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_52;
  }

LABEL_51:
  v30 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 14));
  v16 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 8) == 0)
  {
LABEL_26:
    if ((v22 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  v31 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 15));
  v16 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x10) == 0)
  {
LABEL_27:
    if ((v22 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_54:
    v33 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 17));
    v16 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x40) == 0)
    {
LABEL_29:
      if ((v22 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_53:
  v32 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 16));
  v16 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x20) != 0)
  {
    goto LABEL_54;
  }

LABEL_28:
  if ((v22 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_55:
  v34 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 18));
  v16 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x80) != 0)
  {
LABEL_30:
    v23 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 19));
    v16 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_31:
  if ((v22 & 0xFF00) == 0)
  {
    goto LABEL_41;
  }

  if ((v22 & 0x100) != 0)
  {
    v35 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 20));
    v16 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v22 & 0x200) == 0)
    {
LABEL_34:
      if ((v22 & 0x400) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_59;
    }
  }

  else if ((v22 & 0x200) == 0)
  {
    goto LABEL_34;
  }

  v36 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 21));
  v16 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v22 & 0x400) == 0)
  {
LABEL_35:
    if ((v22 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_60;
  }

LABEL_59:
  v37 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 22));
  v16 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v22 & 0x800) == 0)
  {
LABEL_36:
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_61;
  }

LABEL_60:
  v38 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 23));
  v16 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v22 & 0x1000) == 0)
  {
LABEL_37:
    if ((v22 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_62;
  }

LABEL_61:
  v39 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 24));
  v16 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v22 & 0x2000) == 0)
  {
LABEL_38:
    if ((v22 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_63;
  }

LABEL_62:
  v40 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 25));
  v16 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v22 & 0x4000) == 0)
  {
LABEL_39:
    if ((v22 & 0x8000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_63:
  v41 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 26));
  v16 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v22 & 0x8000) != 0)
  {
LABEL_40:
    v24 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 27));
    v16 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_41:
  if ((v22 & 0xF0000) != 0)
  {
    if ((v22 & 0x10000) != 0)
    {
      v25 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 28));
      v16 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v22 & 0x20000) != 0)
    {
      v26 = TSS::StylesheetArchive_VersionedStyles::ByteSizeLong(*(this + 29));
      v16 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v16 += ((v22 >> 18) & 2) + ((v22 >> 17) & 2);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v16, this + 20);
  }

  else
  {
    *(this + 5) = v16;
    return v16;
  }
}

uint64_t TSS::StylesheetArchive::MergeFrom(TSS::StylesheetArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::StylesheetArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::StylesheetArchive::MergeFrom(uint64_t this, const TSS::StylesheetArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276CD81CC(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_276CD8394(v3 + 48, v14, (v12 + 8), v11, **(v3 + 64) - *(v3 + 56));
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
    this = sub_276CD8454(v3 + 72, v20, (v18 + 8), v17, **(v3 + 88) - *(v3 + 80));
    v21 = *(v3 + 80) + v17;
    *(v3 + 80) = v21;
    v22 = *(v3 + 88);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  v23 = *(a2 + 4);
  if (!v23)
  {
    goto LABEL_86;
  }

  if (v23)
  {
    *(v3 + 16) |= 1u;
    v24 = *(v3 + 96);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = MEMORY[0x277CA0650](v25);
      *(v3 + 96) = v24;
    }

    if (*(a2 + 12))
    {
      v26 = *(a2 + 12);
    }

    else
    {
      v26 = MEMORY[0x277D80A18];
    }

    this = TSP::Reference::MergeFrom(v24, v26);
  }

  if ((v23 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v27 = *(v3 + 104);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v28);
      *(v3 + 104) = v27;
    }

    if (*(a2 + 13))
    {
      v29 = *(a2 + 13);
    }

    else
    {
      v29 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
    }

    this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v27, v29);
    if ((v23 & 4) == 0)
    {
LABEL_24:
      if ((v23 & 8) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_46;
    }
  }

  else if ((v23 & 4) == 0)
  {
    goto LABEL_24;
  }

  *(v3 + 16) |= 4u;
  v30 = *(v3 + 112);
  if (!v30)
  {
    v31 = *(v3 + 8);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v31);
    *(v3 + 112) = v30;
  }

  if (*(a2 + 14))
  {
    v32 = *(a2 + 14);
  }

  else
  {
    v32 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v30, v32);
  if ((v23 & 8) == 0)
  {
LABEL_25:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_46:
  *(v3 + 16) |= 8u;
  v33 = *(v3 + 120);
  if (!v33)
  {
    v34 = *(v3 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v34);
    *(v3 + 120) = v33;
  }

  if (*(a2 + 15))
  {
    v35 = *(a2 + 15);
  }

  else
  {
    v35 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v33, v35);
  if ((v23 & 0x10) == 0)
  {
LABEL_26:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_27;
    }

LABEL_62:
    *(v3 + 16) |= 0x20u;
    v39 = *(v3 + 136);
    if (!v39)
    {
      v40 = *(v3 + 8);
      if (v40)
      {
        v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
      }

      v39 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v40);
      *(v3 + 136) = v39;
    }

    if (*(a2 + 17))
    {
      v41 = *(a2 + 17);
    }

    else
    {
      v41 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
    }

    this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v39, v41);
    if ((v23 & 0x40) == 0)
    {
LABEL_28:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_78;
    }

    goto LABEL_70;
  }

LABEL_54:
  *(v3 + 16) |= 0x10u;
  v36 = *(v3 + 128);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v37);
    *(v3 + 128) = v36;
  }

  if (*(a2 + 16))
  {
    v38 = *(a2 + 16);
  }

  else
  {
    v38 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v36, v38);
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_62;
  }

LABEL_27:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_70:
  *(v3 + 16) |= 0x40u;
  v42 = *(v3 + 144);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v43);
    *(v3 + 144) = v42;
  }

  if (*(a2 + 18))
  {
    v44 = *(a2 + 18);
  }

  else
  {
    v44 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v42, v44);
  if ((v23 & 0x80) != 0)
  {
LABEL_78:
    *(v3 + 16) |= 0x80u;
    v45 = *(v3 + 152);
    if (!v45)
    {
      v46 = *(v3 + 8);
      if (v46)
      {
        v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
      }

      v45 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v46);
      *(v3 + 152) = v45;
    }

    if (*(a2 + 19))
    {
      v47 = *(a2 + 19);
    }

    else
    {
      v47 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
    }

    this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v45, v47);
  }

LABEL_86:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_160;
  }

  if ((v23 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v48 = *(v3 + 160);
    if (!v48)
    {
      v49 = *(v3 + 8);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v49);
      *(v3 + 160) = v48;
    }

    if (*(a2 + 20))
    {
      v50 = *(a2 + 20);
    }

    else
    {
      v50 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
    }

    this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v48, v50);
    if ((v23 & 0x200) == 0)
    {
LABEL_89:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_90;
      }

      goto LABEL_112;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_89;
  }

  *(v3 + 16) |= 0x200u;
  v51 = *(v3 + 168);
  if (!v51)
  {
    v52 = *(v3 + 8);
    if (v52)
    {
      v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
    }

    v51 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v52);
    *(v3 + 168) = v51;
  }

  if (*(a2 + 21))
  {
    v53 = *(a2 + 21);
  }

  else
  {
    v53 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v51, v53);
  if ((v23 & 0x400) == 0)
  {
LABEL_90:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x400u;
  v54 = *(v3 + 176);
  if (!v54)
  {
    v55 = *(v3 + 8);
    if (v55)
    {
      v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
    }

    v54 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v55);
    *(v3 + 176) = v54;
  }

  if (*(a2 + 22))
  {
    v56 = *(a2 + 22);
  }

  else
  {
    v56 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v54, v56);
  if ((v23 & 0x800) == 0)
  {
LABEL_91:
    if ((v23 & 0x1000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x800u;
  v57 = *(v3 + 184);
  if (!v57)
  {
    v58 = *(v3 + 8);
    if (v58)
    {
      v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
    }

    v57 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v58);
    *(v3 + 184) = v57;
  }

  if (*(a2 + 23))
  {
    v59 = *(a2 + 23);
  }

  else
  {
    v59 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v57, v59);
  if ((v23 & 0x1000) == 0)
  {
LABEL_92:
    if ((v23 & 0x2000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x1000u;
  v60 = *(v3 + 192);
  if (!v60)
  {
    v61 = *(v3 + 8);
    if (v61)
    {
      v61 = *(v61 & 0xFFFFFFFFFFFFFFFELL);
    }

    v60 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v61);
    *(v3 + 192) = v60;
  }

  if (*(a2 + 24))
  {
    v62 = *(a2 + 24);
  }

  else
  {
    v62 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v60, v62);
  if ((v23 & 0x2000) == 0)
  {
LABEL_93:
    if ((v23 & 0x4000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(v3 + 16) |= 0x2000u;
  v63 = *(v3 + 200);
  if (!v63)
  {
    v64 = *(v3 + 8);
    if (v64)
    {
      v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
    }

    v63 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v64);
    *(v3 + 200) = v63;
  }

  if (*(a2 + 25))
  {
    v65 = *(a2 + 25);
  }

  else
  {
    v65 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v63, v65);
  if ((v23 & 0x4000) == 0)
  {
LABEL_94:
    if ((v23 & 0x8000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_152;
  }

LABEL_144:
  *(v3 + 16) |= 0x4000u;
  v66 = *(v3 + 208);
  if (!v66)
  {
    v67 = *(v3 + 8);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    v66 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v67);
    *(v3 + 208) = v66;
  }

  if (*(a2 + 26))
  {
    v68 = *(a2 + 26);
  }

  else
  {
    v68 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v66, v68);
  if ((v23 & 0x8000) != 0)
  {
LABEL_152:
    *(v3 + 16) |= 0x8000u;
    v69 = *(v3 + 216);
    if (!v69)
    {
      v70 = *(v3 + 8);
      if (v70)
      {
        v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
      }

      v69 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v70);
      *(v3 + 216) = v69;
    }

    if (*(a2 + 27))
    {
      v71 = *(a2 + 27);
    }

    else
    {
      v71 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
    }

    this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v69, v71);
  }

LABEL_160:
  if ((v23 & 0xF0000) == 0)
  {
    return this;
  }

  if ((v23 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v72 = *(v3 + 224);
    if (!v72)
    {
      v73 = *(v3 + 8);
      if (v73)
      {
        v73 = *(v73 & 0xFFFFFFFFFFFFFFFELL);
      }

      v72 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v73);
      *(v3 + 224) = v72;
    }

    if (*(a2 + 28))
    {
      v74 = *(a2 + 28);
    }

    else
    {
      v74 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
    }

    this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v72, v74);
    if ((v23 & 0x20000) == 0)
    {
LABEL_163:
      if ((v23 & 0x40000) == 0)
      {
        goto LABEL_164;
      }

LABEL_184:
      *(v3 + 240) = *(a2 + 240);
      if ((v23 & 0x80000) == 0)
      {
        goto LABEL_166;
      }

      goto LABEL_165;
    }
  }

  else if ((v23 & 0x20000) == 0)
  {
    goto LABEL_163;
  }

  *(v3 + 16) |= 0x20000u;
  v75 = *(v3 + 232);
  if (!v75)
  {
    v76 = *(v3 + 8);
    if (v76)
    {
      v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
    }

    v75 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_VersionedStyles>(v76);
    *(v3 + 232) = v75;
  }

  if (*(a2 + 29))
  {
    v77 = *(a2 + 29);
  }

  else
  {
    v77 = &TSS::_StylesheetArchive_VersionedStyles_default_instance_;
  }

  this = TSS::StylesheetArchive_VersionedStyles::MergeFrom(v75, v77);
  if ((v23 & 0x40000) != 0)
  {
    goto LABEL_184;
  }

LABEL_164:
  if ((v23 & 0x80000) != 0)
  {
LABEL_165:
    *(v3 + 241) = *(a2 + 241);
  }

LABEL_166:
  *(v3 + 16) |= v23;
  return this;
}

uint64_t *TSS::StylesheetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StylesheetArchive::Clear(this);

    return TSS::StylesheetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::StylesheetArchive::CopyFrom(uint64_t *this, const TSS::StylesheetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StylesheetArchive::Clear(this);

    return TSS::StylesheetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::StylesheetArchive::IsInitialized(TSS::StylesheetArchive *this)
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

  result = sub_276CC7450(this + 48);
  if (!result)
  {
    return result;
  }

  v6 = *(this + 20);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSS::StylesheetArchive_StyleChildrenEntry::IsInitialized(*(*(this + 11) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(this + 4);
  if (v9)
  {
    result = TSP::Reference::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 2) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 4) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 8) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x10) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 16));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x20) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 17));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x40) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 18));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x80) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 19));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x100) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 20));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x200) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 21));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x400) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 22));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x800) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 23));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x1000) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 24));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x2000) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 25));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x4000) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 26));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x8000) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 27));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x10000) != 0)
  {
    result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 28));
    if (!result)
    {
      return result;
    }

    v9 = *(this + 4);
  }

  if ((v9 & 0x20000) == 0)
  {
    return 1;
  }

  result = TSS::StylesheetArchive_VersionedStyles::IsInitialized(*(this + 29));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSS::StylesheetArchive::InternalSwap(TSS::StylesheetArchive *this, TSS::StylesheetArchive *a2)
{
  sub_276CC4DA4(this + 1, a2 + 1);
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
  v11 = *(this + 12);
  v12 = *(this + 13);
  *(this + 6) = *(a2 + 6);
  *(a2 + 12) = v11;
  *(a2 + 13) = v12;
  v13 = *(this + 14);
  v14 = *(this + 15);
  *(this + 7) = *(a2 + 7);
  *(a2 + 14) = v13;
  *(a2 + 15) = v14;
  v15 = *(this + 16);
  v16 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v15;
  *(a2 + 17) = v16;
  v17 = *(this + 18);
  v18 = *(this + 19);
  *(this + 9) = *(a2 + 9);
  *(a2 + 18) = v17;
  *(a2 + 19) = v18;
  v19 = *(this + 20);
  v20 = *(this + 21);
  *(this + 10) = *(a2 + 10);
  *(a2 + 20) = v19;
  *(a2 + 21) = v20;
  v21 = *(this + 22);
  v22 = *(this + 23);
  *(this + 11) = *(a2 + 11);
  *(a2 + 22) = v21;
  *(a2 + 23) = v22;
  v23 = *(this + 24);
  v24 = *(this + 25);
  *(this + 12) = *(a2 + 12);
  *(a2 + 24) = v23;
  *(a2 + 25) = v24;
  v25 = *(this + 26);
  v26 = *(this + 27);
  *(this + 13) = *(a2 + 13);
  *(a2 + 26) = v25;
  *(a2 + 27) = v26;
  v27 = *(this + 28);
  v28 = *(this + 29);
  result = *(a2 + 14);
  *(this + 14) = result;
  *(a2 + 28) = v27;
  *(a2 + 29) = v28;
  LOBYTE(v27) = *(this + 240);
  *(this + 240) = *(a2 + 240);
  *(a2 + 240) = v27;
  LOBYTE(v27) = *(this + 241);
  *(this + 241) = *(a2 + 241);
  *(a2 + 241) = v27;
  return result;
}

uint64_t TSS::StylesheetArchive::GetMetadata(TSS::StylesheetArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[8];
  v2 = off_2812FAF80[9];
  return result;
}

TSP::Reference *TSS::ThemeArchive::clear_legacy_stylesheet(TSS::ThemeArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~2u;
  return result;
}

TSP::Reference *TSS::ThemeArchive::clear_document_stylesheet(TSS::ThemeArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~4u;
  return result;
}

uint64_t TSS::ThemeArchive::clear_old_uuids_for_preset_replacements(uint64_t this)
{
  v1 = *(this + 56);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 64) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

uint64_t TSS::ThemeArchive::clear_new_uuids_for_preset_replacements(uint64_t this)
{
  v1 = *(this + 80);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 88) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUID::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

uint64_t TSS::ThemeArchive::clear_color_presets(uint64_t this)
{
  v1 = *(this + 104);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 112) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Color::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 104) = 0;
  }

  return this;
}

TSS::ThemeArchive *TSS::ThemeArchive::ThemeArchive(TSS::ThemeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E67C0;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 12) = a2;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  if (atomic_load_explicit(scc_info_ThemeArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v4 = MEMORY[0x277D80A90];
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = v4;
  return this;
}

void sub_276CCACC0(_Unwind_Exception *a1)
{
  sub_276CD8598(v3);
  sub_276CD8514(v4);
  sub_276CD8514(v2);
  MEMORY[0x277CA06F0](v1 + 16);
  _Unwind_Resume(a1);
}

TSS::ThemeArchive *TSS::ThemeArchive::ThemeArchive(TSS::ThemeArchive *this, const TSS::ThemeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885E67C0;
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
    v8 = *(a2 + 14);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_276CD861C(this + 48, v9, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v10 = *(this + 14) + v6;
    *(this + 14) = v10;
    v11 = *(this + 8);
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v12 = *(a2 + 20);
  if (v12)
  {
    v13 = *(a2 + 11);
    v14 = *(a2 + 20);
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_276CD861C(this + 72, v15, (v13 + 8), v12, **(this + 11) - *(this + 20));
    v16 = *(this + 20) + v12;
    *(this + 20) = v16;
    v17 = *(this + 11);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v18 = *(a2 + 26);
  if (v18)
  {
    v19 = *(a2 + 14);
    v20 = *(a2 + 26);
    v21 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    sub_276CD86DC(this + 96, v21, (v19 + 8), v18, **(this + 14) - *(this + 26));
    v22 = *(this + 26) + v18;
    *(this + 26) = v22;
    v23 = *(this + 14);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 1);
  if (v24)
  {
    sub_276CD80C8(v4, (v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 15) = MEMORY[0x277D80A90];
  v25 = *(a2 + 10);
  if (v25)
  {
    v26 = *(a2 + 15);
    if (*v4)
    {
      v28 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v25 = *(a2 + 10);
  }

  if ((v25 & 2) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v25 & 4) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  return this;
}

void sub_276CCAF80(_Unwind_Exception *a1)
{
  MEMORY[0x277CA0980](v5, 0x1081C407D3F2757);
  sub_276CD8598(v4);
  sub_276CD8514(v3);
  sub_276CD8514((v1 + 48));
  MEMORY[0x277CA06F0](v2);
  _Unwind_Resume(a1);
}

void TSS::ThemeArchive::~ThemeArchive(TSS::ThemeArchive *this)
{
  v2 = *(this + 15);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA0980](v2, 0x1012C40EC159624);
  }

  if (this != &TSS::_ThemeArchive_default_instance_)
  {
    v3 = *(this + 16);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA0980]();
    }

    v4 = *(this + 17);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
  sub_276CD8598(this + 12);
  sub_276CD8514(this + 9);
  sub_276CD8514(this + 6);
  MEMORY[0x277CA06F0](this + 16);
}

{
  TSS::ThemeArchive::~ThemeArchive(this);

  JUMPOUT(0x277CA0980);
}

void *TSS::ThemeArchive::default_instance(TSS::ThemeArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemeArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_ThemeArchive_default_instance_;
}

uint64_t *TSS::ThemeArchive::Clear(TSS::ThemeArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = TSP::UUID::Clear(v5);
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
      result = TSP::UUID::Clear(v8);
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
      result = TSP::Color::Clear(v11);
      --v9;
    }

    while (v9);
    *(this + 26) = 0;
  }

  v12 = *(this + 10);
  if ((v12 & 7) == 0)
  {
    goto LABEL_18;
  }

  if ((v12 & 1) == 0)
  {
    if ((v12 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  v15 = *(this + 15) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v15 + 23) < 0)
  {
    **v15 = 0;
    *(v15 + 8) = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_26;
    }

LABEL_16:
    if ((v12 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  *v15 = 0;
  *(v15 + 23) = 0;
  if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_26:
  result = TSP::Reference::Clear(*(this + 16));
  if ((v12 & 4) != 0)
  {
LABEL_17:
    result = TSP::Reference::Clear(*(this + 17));
  }

LABEL_18:
  v14 = *(this + 8);
  v13 = this + 8;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_276CD8114(v13);
  }

  return result;
}

google::protobuf::internal *TSS::ThemeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v51 = a2;
  v5 = *(a3 + 92);
  if ((sub_276CD7ED8(a3, &v51) & 1) == 0)
  {
    while (1)
    {
      v7 = (v51 + 1);
      LODWORD(v8) = *v51;
      if ((*v51 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v51, v8);
      v51 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v7 = TagFallback;
LABEL_7:
      v9 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v9 != 5)
        {
          if (v9 != 6)
          {
            if (v9 != 10 || v8 != 82)
            {
              goto LABEL_72;
            }

            v13 = v7 - 1;
            while (2)
            {
              v14 = (v13 + 1);
              v51 = (v13 + 1);
              v15 = *(a1 + 112);
              if (!v15)
              {
                v16 = *(a1 + 108);
                goto LABEL_23;
              }

              v22 = *(a1 + 104);
              v17 = *v15;
              if (v22 >= *v15)
              {
                if (v17 == *(a1 + 108))
                {
LABEL_23:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                  v15 = *(a1 + 112);
                  v17 = *v15;
                }

                *v15 = v17 + 1;
                v18 = MEMORY[0x277CA0640](*(a1 + 96));
                LODWORD(v19) = v18;
                v20 = *(a1 + 104);
                v21 = *(a1 + 112) + 8 * v20;
                *(a1 + 104) = v20 + 1;
                *(v21 + 8) = v18;
                v14 = v51;
              }

              else
              {
                *(a1 + 104) = v22 + 1;
                v19 = *&v15[2 * v22 + 2];
              }

              v13 = sub_276CE1E94(a3, v19, v14);
              v51 = v13;
              if (!v13)
              {
                return 0;
              }

              if (*a3 <= v13 || *v13 != 82)
              {
                goto LABEL_84;
              }

              continue;
            }
          }

          if (v8 != 50)
          {
            goto LABEL_72;
          }

          v37 = v7 - 1;
          while (2)
          {
            v38 = (v37 + 1);
            v51 = (v37 + 1);
            v39 = *(a1 + 88);
            if (!v39)
            {
              v40 = *(a1 + 84);
              goto LABEL_62;
            }

            v46 = *(a1 + 80);
            v41 = *v39;
            if (v46 >= *v39)
            {
              if (v41 == *(a1 + 84))
              {
LABEL_62:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                v39 = *(a1 + 88);
                v41 = *v39;
              }

              *v39 = v41 + 1;
              v42 = MEMORY[0x277CA0630](*(a1 + 72));
              LODWORD(v43) = v42;
              v44 = *(a1 + 80);
              v45 = *(a1 + 88) + 8 * v44;
              *(a1 + 80) = v44 + 1;
              *(v45 + 8) = v42;
              v38 = v51;
            }

            else
            {
              *(a1 + 80) = v46 + 1;
              v43 = *&v39[2 * v46 + 2];
            }

            v37 = sub_276CE1DC4(a3, v43, v38);
            v51 = v37;
            if (!v37)
            {
              return 0;
            }

            if (*a3 <= v37 || *v37 != 50)
            {
              goto LABEL_84;
            }

            continue;
          }
        }

        if (v8 != 42)
        {
          goto LABEL_72;
        }

        v26 = v7 - 1;
        while (2)
        {
          v27 = (v26 + 1);
          v51 = (v26 + 1);
          v28 = *(a1 + 64);
          if (!v28)
          {
            v29 = *(a1 + 60);
            goto LABEL_44;
          }

          v35 = *(a1 + 56);
          v30 = *v28;
          if (v35 >= *v28)
          {
            if (v30 == *(a1 + 60))
            {
LABEL_44:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v28 = *(a1 + 64);
              v30 = *v28;
            }

            *v28 = v30 + 1;
            v31 = MEMORY[0x277CA0630](*(a1 + 48));
            LODWORD(v32) = v31;
            v33 = *(a1 + 56);
            v34 = *(a1 + 64) + 8 * v33;
            *(a1 + 56) = v33 + 1;
            *(v34 + 8) = v31;
            v27 = v51;
          }

          else
          {
            *(a1 + 56) = v35 + 1;
            v32 = *&v28[2 * v35 + 2];
          }

          v26 = sub_276CE1DC4(a3, v32, v27);
          v51 = v26;
          if (!v26)
          {
            return 0;
          }

          if (*a3 <= v26 || *v26 != 42)
          {
            goto LABEL_84;
          }

          continue;
        }
      }

      if (v9 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 40) |= 2u;
          v10 = *(a1 + 128);
          if (!v10)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277CA0650](v23);
            LODWORD(v10) = v24;
            *(a1 + 128) = v24;
            goto LABEL_38;
          }

LABEL_39:
          v25 = sub_276CE1A84(a3, v10, v7);
          goto LABEL_83;
        }
      }

      else if (v9 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 40) |= 1u;
          v36 = *(a1 + 8);
          if (v36)
          {
            v50 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
          }

          google::protobuf::internal::ArenaStringPtr::Mutable();
          v25 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_83;
        }
      }

      else if (v9 == 4 && v8 == 34)
      {
        *(a1 + 40) |= 4u;
        v10 = *(a1 + 136);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277CA0650](v11);
          LODWORD(v10) = v12;
          *(a1 + 136) = v12;
LABEL_38:
          v7 = v51;
          goto LABEL_39;
        }

        goto LABEL_39;
      }

LABEL_72:
      if (v8)
      {
        v47 = (v8 & 7) == 4;
      }

      else
      {
        v47 = 1;
      }

      if (v47)
      {
        *(a3 + 80) = v8 - 1;
        return v51;
      }

      if (v8 < 0x320)
      {
        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276CD7F50((a1 + 8));
        }

        v25 = google::protobuf::internal::UnknownFieldParse();
      }

      else
      {
        v25 = google::protobuf::internal::ExtensionSet::ParseField();
      }

LABEL_83:
      v51 = v25;
      if (!v25)
      {
        return 0;
      }

LABEL_84:
      v49 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v51))
      {
        return v51;
      }
    }

    v7 = (v51 + 2);
LABEL_6:
    v51 = v7;
    goto LABEL_7;
  }

  return v51;
}

uint64_t TSS::ThemeArchive::_InternalSerialize(TSS::ThemeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 16);
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
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_276CC4788(a3, 3, (*(this + 15) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 17);
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
LABEL_26:
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

      v4 = TSP::UUID::_InternalSerialize(v21, v23, a3);
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
      *v4 = 50;
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

      v4 = TSP::UUID::_InternalSerialize(v29, v31, a3);
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
      *v4 = 82;
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

      v4 = TSP::Color::_InternalSerialize(v37, v39, a3);
    }
  }

  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 100, 0x20000000, v4, a3);
  v44 = *(this + 1);
  if (v44)
  {

    return MEMORY[0x2821EAC40]((v44 & 0xFFFFFFFFFFFFFFFELL) + 8, result, a3);
  }

  return result;
}

uint64_t TSS::ThemeArchive::ByteSizeLong(TSS::ThemeArchive *this)
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
      v9 = TSP::UUID::ByteSizeLong(v8);
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
      v16 = TSP::UUID::ByteSizeLong(v15);
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
      v23 = TSP::Color::ByteSizeLong(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(this + 10);
  if ((v24 & 7) != 0)
  {
    if (v24)
    {
      v27 = *(this + 15) & 0xFFFFFFFFFFFFFFFELL;
      v28 = *(v27 + 23);
      v29 = *(v27 + 8);
      if ((v28 & 0x80u) == 0)
      {
        v29 = v28;
      }

      v18 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v24 & 2) == 0)
      {
LABEL_22:
        if ((v24 & 4) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_22;
    }

    v30 = TSP::Reference::ByteSizeLong(*(this + 16));
    v18 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v24 & 4) != 0)
    {
LABEL_23:
      v25 = TSP::Reference::ByteSizeLong(*(this + 17));
      v18 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_24:
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v18, this + 44);
  }

  else
  {
    *(this + 11) = v18;
    return v18;
  }
}

uint64_t TSS::ThemeArchive::MergeFrom(TSS::ThemeArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::ThemeArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::ThemeArchive::MergeFrom(TSS::ThemeArchive *this, const TSS::ThemeArchive *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_276CD80C8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 14);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    result = sub_276CD861C(this + 48, v9, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v10 = *(this + 14) + v6;
    *(this + 14) = v10;
    v11 = *(this + 8);
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  v12 = *(a2 + 20);
  if (v12)
  {
    v13 = *(a2 + 11);
    v14 = *(a2 + 20);
    v15 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    result = sub_276CD861C(this + 72, v15, (v13 + 8), v12, **(this + 11) - *(this + 20));
    v16 = *(this + 20) + v12;
    *(this + 20) = v16;
    v17 = *(this + 11);
    if (*v17 < v16)
    {
      *v17 = v16;
    }
  }

  v18 = *(a2 + 26);
  if (v18)
  {
    v19 = *(a2 + 14);
    v20 = *(a2 + 26);
    v21 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    result = sub_276CD86DC(this + 96, v21, (v19 + 8), v18, **(this + 14) - *(this + 26));
    v22 = *(this + 26) + v18;
    *(this + 26) = v22;
    v23 = *(this + 14);
    if (*v23 < v22)
    {
      *v23 = v22;
    }
  }

  v24 = *(a2 + 10);
  if ((v24 & 7) != 0)
  {
    if (v24)
    {
      v25 = *(a2 + 15);
      *(this + 10) |= 1u;
      v26 = *(this + 1);
      if (v26)
      {
        v34 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v27 = MEMORY[0x277D80A18];
    if ((v24 & 2) != 0)
    {
      *(this + 10) |= 2u;
      v28 = *(this + 16);
      if (!v28)
      {
        v29 = *(this + 1);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = MEMORY[0x277CA0650](v29);
        *(this + 16) = v28;
      }

      if (*(a2 + 16))
      {
        v30 = *(a2 + 16);
      }

      else
      {
        v30 = v27;
      }

      result = TSP::Reference::MergeFrom(v28, v30);
    }

    if ((v24 & 4) != 0)
    {
      *(this + 10) |= 4u;
      v31 = *(this + 17);
      if (!v31)
      {
        v32 = *(this + 1);
        if (v32)
        {
          v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = MEMORY[0x277CA0650](v32);
        *(this + 17) = v31;
      }

      if (*(a2 + 17))
      {
        v33 = *(a2 + 17);
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

TSS::ThemeArchive *TSS::ThemeArchive::CopyFrom(TSS::ThemeArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeArchive::Clear(this);

    return TSS::ThemeArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSS::ThemeArchive *TSS::ThemeArchive::CopyFrom(TSS::ThemeArchive *this, const TSS::ThemeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeArchive::Clear(this);

    return TSS::ThemeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::ThemeArchive::IsInitialized(TSS::ThemeArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    v3 = *(this + 14);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      IsInitialized = TSP::UUID::IsInitialized(*(*(this + 8) + 8 * v3));
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
      v8 = TSP::UUID::IsInitialized(*(*(this + 11) + 8 * v6));
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
      v11 = TSP::Color::IsInitialized(*(*(this + 14) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(this + 10);
    if ((v12 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 16));
      if (!result)
      {
        return result;
      }

      v12 = *(this + 10);
    }

    if ((v12 & 4) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 17));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSS::ThemeArchive::InternalSwap(TSS::ThemeArchive *this, TSS::ThemeArchive *a2)
{
  google::protobuf::internal::ExtensionSet::Swap();
  sub_276CC4DA4(this + 1, a2 + 1);
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
  v11 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v11;
  v12 = *(this + 16);
  v13 = *(this + 17);
  result = *(a2 + 8);
  *(this + 8) = result;
  *(a2 + 16) = v12;
  *(a2 + 17) = v13;
  return result;
}

uint64_t TSS::ThemeArchive::GetMetadata(TSS::ThemeArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[10];
  v2 = off_2812FAF80[11];
  return result;
}

TSK::CommandArchive *TSS::ApplyThemeCommandArchive::clear_super(TSS::ApplyThemeCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSS::ApplyThemeCommandArchive::clear_commands(uint64_t this)
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

TSP::Reference *TSS::ApplyThemeCommandArchive::clear_old_theme(TSS::ApplyThemeCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSS::ApplyThemeCommandArchive::clear_new_theme(TSS::ApplyThemeCommandArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSS::ApplyThemeCommandArchive *TSS::ApplyThemeCommandArchive::ApplyThemeCommandArchive(TSS::ApplyThemeCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6870;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ApplyThemeCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  return this;
}

TSS::ApplyThemeCommandArchive *TSS::ApplyThemeCommandArchive::ApplyThemeCommandArchive(TSS::ApplyThemeCommandArchive *this, const TSS::ApplyThemeCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6870;
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
    sub_276CD81CC(this + 24, v8, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_276CD80C8(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void sub_276CCC5D0(_Unwind_Exception *a1)
{
  MEMORY[0x277CA0980](v2, 0x1081C407D3F2757);
  sub_276CA86B8((v1 + 24));
  _Unwind_Resume(a1);
}

void TSS::ApplyThemeCommandArchive::~ApplyThemeCommandArchive(TSS::ApplyThemeCommandArchive *this)
{
  if (this != &TSS::_ApplyThemeCommandArchive_default_instance_)
  {
    if (*(this + 6))
    {
      v2 = MEMORY[0x277CA04C0]();
      MEMORY[0x277CA0980](v2, 0x10A1C40C24530F0);
    }

    v3 = *(this + 7);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA0980]();
    }

    v4 = *(this + 8);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
  sub_276CA86B8(this + 3);
}

{
  TSS::ApplyThemeCommandArchive::~ApplyThemeCommandArchive(this);

  JUMPOUT(0x277CA0980);
}

void *TSS::ApplyThemeCommandArchive::default_instance(TSS::ApplyThemeCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ApplyThemeCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_ApplyThemeCommandArchive_default_instance_;
}

uint64_t *TSS::ApplyThemeCommandArchive::Clear(uint64_t *this)
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
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      this = TSK::CommandArchive::Clear(*(v1 + 48));
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    this = TSP::Reference::Clear(*(v1 + 56));
    if ((v5 & 4) != 0)
    {
LABEL_9:
      this = TSP::Reference::Clear(*(v1 + 64));
    }
  }

LABEL_10:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_276CD8114(v6);
  }

  return this;
}

google::protobuf::internal *TSS::ApplyThemeCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = *(a3 + 92);
  while (1)
  {
    if (sub_276CD7ED8(a3, &v35))
    {
      return v35;
    }

    v6 = (v35 + 1);
    v7 = *v35;
    if ((*v35 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v35 + 2);
LABEL_6:
      v35 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v8 - 128));
    v35 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v33;
LABEL_7:
    v9 = v7 >> 3;
    if (v7 >> 3 > 2)
    {
      break;
    }

    if (v9 != 1)
    {
      if (v9 != 2 || v7 != 18)
      {
        goto LABEL_47;
      }

      v11 = v6 - 1;
      while (2)
      {
        v12 = (v11 + 1);
        v35 = (v11 + 1);
        v13 = *(a1 + 40);
        if (!v13)
        {
          v14 = *(a1 + 36);
          goto LABEL_17;
        }

        v20 = *(a1 + 32);
        v15 = *v13;
        if (v20 >= *v13)
        {
          if (v15 == *(a1 + 36))
          {
LABEL_17:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v13 = *(a1 + 40);
            v15 = *v13;
          }

          *v13 = v15 + 1;
          v16 = MEMORY[0x277CA0650](*(a1 + 24));
          LODWORD(v17) = v16;
          v18 = *(a1 + 32);
          v19 = *(a1 + 40) + 8 * v18;
          *(a1 + 32) = v18 + 1;
          *(v19 + 8) = v16;
          v12 = v35;
        }

        else
        {
          *(a1 + 32) = v20 + 1;
          v17 = *&v13[2 * v20 + 2];
        }

        v11 = sub_276CE1A84(a3, v17, v12);
        v35 = v11;
        if (!v11)
        {
          return 0;
        }

        if (*a3 <= v11 || *v11 != 18)
        {
          goto LABEL_55;
        }

        continue;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_47;
    }

    *(a1 + 16) |= 1u;
    v24 = *(a1 + 48);
    if (!v24)
    {
      v25 = *(a1 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x277CA0620](v25);
      LODWORD(v24) = v26;
      *(a1 + 48) = v26;
      v6 = v35;
    }

    v27 = sub_276CE1F64(a3, v24, v6);
LABEL_54:
    v35 = v27;
    if (!v27)
    {
      return 0;
    }

LABEL_55:
    v31 = *(a3 + 92);
  }

  if (v9 == 3)
  {
    if (v7 == 26)
    {
      *(a1 + 16) |= 2u;
      v21 = *(a1 + 56);
      if (!v21)
      {
        v28 = *(a1 + 8);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = MEMORY[0x277CA0650](v28);
        LODWORD(v21) = v29;
        *(a1 + 56) = v29;
LABEL_45:
        v6 = v35;
      }

LABEL_46:
      v27 = sub_276CE1A84(a3, v21, v6);
      goto LABEL_54;
    }
  }

  else if (v9 == 4 && v7 == 34)
  {
    *(a1 + 16) |= 4u;
    v21 = *(a1 + 64);
    if (!v21)
    {
      v22 = *(a1 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277CA0650](v22);
      LODWORD(v21) = v23;
      *(a1 + 64) = v23;
      goto LABEL_45;
    }

    goto LABEL_46;
  }

LABEL_47:
  if (v7)
  {
    v30 = (v7 & 7) == 4;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_276CD7F50((a1 + 8));
    }

    v27 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_54;
  }

  *(a3 + 80) = v7 - 1;
  return v35;
}

unsigned __int8 *TSS::ApplyThemeCommandArchive::_InternalSerialize(TSS::ApplyThemeCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
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

      a2 = TSP::Reference::_InternalSerialize(v14, v16, a3);
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

    a2 = TSP::Reference::_InternalSerialize(v20, v22, a3);
  }

  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v26 = *(this + 8);
    *a2 = 34;
    v27 = *(v26 + 5);
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

    a2 = TSP::Reference::_InternalSerialize(v26, v28, a3);
  }

  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::ApplyThemeCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if (this[2])
  {
    v3 = TSK::CommandArchive::ByteSizeLong(this[6]);
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

  v11 = *(this + 4);
  if ((v11 & 6) != 0)
  {
    if ((v11 & 2) != 0)
    {
      v12 = TSP::Reference::ByteSizeLong(this[7]);
      v5 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v11 & 4) != 0)
    {
      v13 = TSP::Reference::ByteSizeLong(this[8]);
      v5 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
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

uint64_t TSS::ApplyThemeCommandArchive::MergeFrom(TSS::ApplyThemeCommandArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::ApplyThemeCommandArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::ApplyThemeCommandArchive::MergeFrom(uint64_t this, const TSS::ApplyThemeCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_276CD81CC(v3 + 24, v8, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v9 = *(v3 + 32) + v5;
    *(v3 + 32) = v9;
    v10 = *(v3 + 40);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 4);
  if ((v11 & 7) != 0)
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

        v12 = MEMORY[0x277CA0620](v13);
        *(v3 + 48) = v12;
      }

      if (*(a2 + 6))
      {
        v14 = *(a2 + 6);
      }

      else
      {
        v14 = MEMORY[0x277D80718];
      }

      this = TSK::CommandArchive::MergeFrom(v12, v14);
    }

    v15 = MEMORY[0x277D80A18];
    if ((v11 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v16 = *(v3 + 56);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277CA0650](v17);
        *(v3 + 56) = v16;
      }

      if (*(a2 + 7))
      {
        v18 = *(a2 + 7);
      }

      else
      {
        v18 = v15;
      }

      this = TSP::Reference::MergeFrom(v16, v18);
    }

    if ((v11 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v19 = *(v3 + 64);
      if (!v19)
      {
        v20 = *(v3 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277CA0650](v20);
        *(v3 + 64) = v19;
      }

      if (*(a2 + 8))
      {
        v21 = *(a2 + 8);
      }

      else
      {
        v21 = v15;
      }

      return TSP::Reference::MergeFrom(v19, v21);
    }
  }

  return this;
}

uint64_t *TSS::ApplyThemeCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ApplyThemeCommandArchive::Clear(this);

    return TSS::ApplyThemeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::ApplyThemeCommandArchive::CopyFrom(uint64_t *this, const TSS::ApplyThemeCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ApplyThemeCommandArchive::Clear(this);

    return TSS::ApplyThemeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::ApplyThemeCommandArchive::IsInitialized(TSS::ApplyThemeCommandArchive *this)
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

  if ((v6 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 7));
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

  result = TSP::Reference::IsInitialized(*(this + 8));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSS::ApplyThemeCommandArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276CC4DA4(&this->n128_i64[1], &a2->n128_i64[1]);
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
  v10 = this[4].n128_u64[0];
  this[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[4].n128_u64[0] = v10;
  return result;
}

uint64_t TSS::ApplyThemeCommandArchive::GetMetadata(TSS::ApplyThemeCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[12];
  v2 = off_2812FAF80[13];
  return result;
}

TSK::CommandArchive *TSS::ApplyThemeChildCommandArchive::clear_super(TSS::ApplyThemeChildCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSS::ApplyThemeChildCommandArchive::clear_parent(TSS::ApplyThemeChildCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSS::ApplyThemeChildCommandArchive *TSS::ApplyThemeChildCommandArchive::ApplyThemeChildCommandArchive(TSS::ApplyThemeChildCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6920;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ApplyThemeChildCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2885E6920;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ApplyThemeChildCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSS::ApplyThemeChildCommandArchive *TSS::ApplyThemeChildCommandArchive::ApplyThemeChildCommandArchive(TSS::ApplyThemeChildCommandArchive *this, const TSS::ApplyThemeChildCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6920;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSS::ApplyThemeChildCommandArchive::~ApplyThemeChildCommandArchive(TSS::ApplyThemeChildCommandArchive *this)
{
  if (this != &TSS::_ApplyThemeChildCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA04C0]();
      MEMORY[0x277CA0980](v2, 0x10A1C40C24530F0);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
}

{
  TSS::ApplyThemeChildCommandArchive::~ApplyThemeChildCommandArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSS::ApplyThemeChildCommandArchive::default_instance(TSS::ApplyThemeChildCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ApplyThemeChildCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_ApplyThemeChildCommandArchive_default_instance_;
}

uint64_t *TSS::ApplyThemeChildCommandArchive::Clear(uint64_t *this)
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
      this = TSP::Reference::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276CD8114(v3);
  }

  return this;
}

google::protobuf::internal *TSS::ApplyThemeChildCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = *(a3 + 92);
  while ((sub_276CD7ED8(a3, &v22) & 1) == 0)
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

          v14 = MEMORY[0x277CA0650](v13);
          LODWORD(v12) = v14;
          *(a1 + 32) = v14;
          v6 = v22;
        }

        v11 = sub_276CE1A84(a3, v12, v6);
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

        v17 = MEMORY[0x277CA0620](v16);
        LODWORD(v15) = v17;
        *(a1 + 24) = v17;
        v6 = v22;
      }

      v11 = sub_276CE1F64(a3, v15, v6);
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
      sub_276CD7F50((a1 + 8));
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

unsigned __int8 *TSS::ApplyThemeChildCommandArchive::_InternalSerialize(TSS::ApplyThemeChildCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
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

    a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::ApplyThemeChildCommandArchive::ByteSizeLong(TSS::ApplyThemeChildCommandArchive *this)
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
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

uint64_t TSS::ApplyThemeChildCommandArchive::MergeFrom(TSS::ApplyThemeChildCommandArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::ApplyThemeChildCommandArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::ApplyThemeChildCommandArchive::MergeFrom(uint64_t this, const TSS::ApplyThemeChildCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277CA0620](v7);
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

        v9 = MEMORY[0x277CA0650](v10);
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

uint64_t *TSS::ApplyThemeChildCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ApplyThemeChildCommandArchive::Clear(this);

    return TSS::ApplyThemeChildCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::ApplyThemeChildCommandArchive::CopyFrom(uint64_t *this, const TSS::ApplyThemeChildCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ApplyThemeChildCommandArchive::Clear(this);

    return TSS::ApplyThemeChildCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::ApplyThemeChildCommandArchive::IsInitialized(TSS::ApplyThemeChildCommandArchive *this)
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

    result = TSP::Reference::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSS::ApplyThemeChildCommandArchive::InternalSwap(TSS::ApplyThemeChildCommandArchive *this, TSS::ApplyThemeChildCommandArchive *a2)
{
  sub_276CC4DA4(this + 1, a2 + 1);
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

uint64_t TSS::ApplyThemeChildCommandArchive::GetMetadata(TSS::ApplyThemeChildCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[14];
  v2 = off_2812FAF80[15];
  return result;
}

TSK::CommandArchive *TSS::StyleUpdatePropertyMapCommandArchive::clear_super(TSS::StyleUpdatePropertyMapCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSS::StyleUpdatePropertyMapCommandArchive::clear_current_style(TSS::StyleUpdatePropertyMapCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSS::StyleUpdatePropertyMapCommandArchive::clear_style_with_old_property_map(TSS::StyleUpdatePropertyMapCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSS::StyleUpdatePropertyMapCommandArchive::clear_style_with_new_property_map(TSS::StyleUpdatePropertyMapCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSS::StyleUpdatePropertyMapCommandArchive::clear_style_diff(TSS::StyleUpdatePropertyMapCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSS::StyleUpdatePropertyMapCommandArchive *TSS::StyleUpdatePropertyMapCommandArchive::StyleUpdatePropertyMapCommandArchive(TSS::StyleUpdatePropertyMapCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E69D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_StyleUpdatePropertyMapCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 64) = 1;
  return this;
}

TSS::StyleUpdatePropertyMapCommandArchive *TSS::StyleUpdatePropertyMapCommandArchive::StyleUpdatePropertyMapCommandArchive(TSS::StyleUpdatePropertyMapCommandArchive *this, const TSS::StyleUpdatePropertyMapCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E69D0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  *(this + 64) = *(a2 + 64);
  return this;
}

void TSS::StyleUpdatePropertyMapCommandArchive::~StyleUpdatePropertyMapCommandArchive(TSS::StyleUpdatePropertyMapCommandArchive *this)
{
  sub_276CCE1CC(this);
  sub_276CC409C(this + 1);
}

{
  TSS::StyleUpdatePropertyMapCommandArchive::~StyleUpdatePropertyMapCommandArchive(this);

  JUMPOUT(0x277CA0980);
}

void *sub_276CCE1CC(void *result)
{
  if (result != &TSS::_StyleUpdatePropertyMapCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277CA04C0]();
      MEMORY[0x277CA0980](v2, 0x10A1C40C24530F0);
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA0980]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA0980]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277CA0980]();
    }

    result = v1[7];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA0980);
    }
  }

  return result;
}

void *TSS::StyleUpdatePropertyMapCommandArchive::default_instance(TSS::StyleUpdatePropertyMapCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_StyleUpdatePropertyMapCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_StyleUpdatePropertyMapCommandArchive_default_instance_;
}

uint64_t *TSS::StyleUpdatePropertyMapCommandArchive::Clear(uint64_t *this)
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

    this = TSP::Reference::Clear(*(v1 + 32));
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
    this = TSP::Reference::Clear(*(v1 + 48));
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

    return sub_276CD8114(v3);
  }

  return this;
}

google::protobuf::internal *TSS::StyleUpdatePropertyMapCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v35) & 1) == 0)
  {
    while (1)
    {
      v8 = (v35 + 1);
      v9 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v10 - 128));
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_65;
      }

      v8 = TagFallback;
      v9 = v32;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 != 1)
        {
          if (v11 == 2)
          {
            if (v9 == 18)
            {
              *(a1 + 16) |= 2u;
              v13 = *(a1 + 32);
              if (!v13)
              {
                v24 = *(a1 + 8);
                if (v24)
                {
                  v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
                }

                v25 = MEMORY[0x277CA0650](v24);
                LODWORD(v13) = v25;
                *(a1 + 32) = v25;
                goto LABEL_43;
              }

              goto LABEL_44;
            }
          }

          else if (v11 == 3 && v9 == 26)
          {
            *(a1 + 16) |= 4u;
            v13 = *(a1 + 40);
            if (!v13)
            {
              v14 = *(a1 + 8);
              if (v14)
              {
                v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = MEMORY[0x277CA0650](v14);
              LODWORD(v13) = v15;
              *(a1 + 40) = v15;
              goto LABEL_43;
            }

            goto LABEL_44;
          }

          goto LABEL_53;
        }

        if (v9 != 10)
        {
          goto LABEL_53;
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

          v20 = MEMORY[0x277CA0620](v19);
          LODWORD(v18) = v20;
          *(a1 + 24) = v20;
          v8 = v35;
        }

        v21 = sub_276CE1F64(a3, v18, v8);
LABEL_45:
        v35 = v21;
        if (!v21)
        {
          goto LABEL_65;
        }

        goto LABEL_46;
      }

      if (v11 == 4)
      {
        if (v9 != 34)
        {
          goto LABEL_53;
        }

        *(a1 + 16) |= 8u;
        v13 = *(a1 + 48);
        if (!v13)
        {
          v22 = *(a1 + 8);
          if (v22)
          {
            v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
          }

          v23 = MEMORY[0x277CA0650](v22);
          LODWORD(v13) = v23;
          *(a1 + 48) = v23;
LABEL_43:
          v8 = v35;
        }

LABEL_44:
        v21 = sub_276CE1A84(a3, v13, v8);
        goto LABEL_45;
      }

      if (v11 != 6)
      {
        if (v11 == 7 && v9 == 58)
        {
          *(a1 + 16) |= 0x10u;
          v13 = *(a1 + 56);
          if (!v13)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = MEMORY[0x277CA0650](v16);
            LODWORD(v13) = v17;
            *(a1 + 56) = v17;
            goto LABEL_43;
          }

          goto LABEL_44;
        }

LABEL_53:
        if (v9)
        {
          v30 = (v9 & 7) == 4;
        }

        else
        {
          v30 = 1;
        }

        if (v30)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276CD7F50((a1 + 8));
        }

        v21 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_45;
      }

      if (v9 != 48)
      {
        goto LABEL_53;
      }

      v6 |= 0x20u;
      v28 = (v8 + 1);
      v27 = *v8;
      if ((v27 & 0x8000000000000000) == 0)
      {
        goto LABEL_52;
      }

      v29 = *v28;
      v27 = (v29 << 7) + v27 - 128;
      if ((v29 & 0x80000000) == 0)
      {
        v28 = (v8 + 2);
LABEL_52:
        v35 = v28;
        *(a1 + 64) = v27 != 0;
        goto LABEL_46;
      }

      v33 = google::protobuf::internal::VarintParseSlow64(v8, v27);
      v35 = v33;
      *(a1 + 64) = v34 != 0;
      if (!v33)
      {
LABEL_65:
        v35 = 0;
        goto LABEL_2;
      }

LABEL_46:
      v26 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v35))
      {
        goto LABEL_2;
      }
    }

    v8 = (v35 + 2);
LABEL_6:
    v35 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v35;
}

unsigned __int8 *TSS::StyleUpdatePropertyMapCommandArchive::_InternalSerialize(TSS::StyleUpdatePropertyMapCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
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

    goto LABEL_38;
  }

LABEL_28:
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

  a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_48;
  }

LABEL_38:
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
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_51;
  }

LABEL_48:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 64);
  *a2 = 48;
  a2[1] = v30;
  a2 += 2;
  if ((v5 & 0x10) != 0)
  {
LABEL_51:
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

    a2 = TSP::Reference::_InternalSerialize(v31, v33, a3);
  }

LABEL_61:
  v37 = *(this + 1);
  if ((v37 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v37 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::StyleUpdatePropertyMapCommandArchive::RequiredFieldsByteSizeFallback(TSS::StyleUpdatePropertyMapCommandArchive *this)
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

  v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSS::StyleUpdatePropertyMapCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSS::StyleUpdatePropertyMapCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v5 = *(this + 4);
  if ((v5 & 0x3C) != 0)
  {
    if ((v5 & 4) != 0)
    {
      v8 = TSP::Reference::ByteSizeLong(this[5]);
      v4 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v5 & 8) == 0)
      {
LABEL_7:
        if ((v5 & 0x10) == 0)
        {
LABEL_9:
          v4 += (v5 >> 4) & 2;
          goto LABEL_10;
        }

LABEL_8:
        v6 = TSP::Reference::ByteSizeLong(this[7]);
        v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_9;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    v9 = TSP::Reference::ByteSizeLong(this[6]);
    v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_10:
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

uint64_t TSS::StyleUpdatePropertyMapCommandArchive::MergeFrom(TSS::StyleUpdatePropertyMapCommandArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::StyleUpdatePropertyMapCommandArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::StyleUpdatePropertyMapCommandArchive::MergeFrom(uint64_t this, const TSS::StyleUpdatePropertyMapCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277CA0620](v7);
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

        v10 = MEMORY[0x277CA0650](v11);
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

        goto LABEL_37;
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

      v13 = MEMORY[0x277CA0650](v14);
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

      goto LABEL_45;
    }

LABEL_37:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277CA0650](v17);
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
LABEL_19:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_18:
      *(v3 + 64) = *(a2 + 64);
      goto LABEL_19;
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

      v19 = MEMORY[0x277CA0650](v20);
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

    this = TSP::Reference::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  return this;
}

uint64_t *TSS::StyleUpdatePropertyMapCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StyleUpdatePropertyMapCommandArchive::Clear(this);

    return TSS::StyleUpdatePropertyMapCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::StyleUpdatePropertyMapCommandArchive::CopyFrom(uint64_t *this, const TSS::StyleUpdatePropertyMapCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::StyleUpdatePropertyMapCommandArchive::Clear(this);

    return TSS::StyleUpdatePropertyMapCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::StyleUpdatePropertyMapCommandArchive::IsInitialized(TSS::StyleUpdatePropertyMapCommandArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 3));
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

__n128 TSS::StyleUpdatePropertyMapCommandArchive::InternalSwap(TSS::StyleUpdatePropertyMapCommandArchive *this, TSS::StyleUpdatePropertyMapCommandArchive *a2)
{
  sub_276CC4DA4(this + 1, a2 + 1);
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
  LOBYTE(v10) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v10;
  return result;
}

uint64_t TSS::StyleUpdatePropertyMapCommandArchive::GetMetadata(TSS::StyleUpdatePropertyMapCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[16];
  v2 = off_2812FAF80[17];
  return result;
}

TSK::CommandArchive *TSS::ThemeReplacePresetCommandArchive::clear_super(TSS::ThemeReplacePresetCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSS::ThemeReplacePresetCommandArchive::clear_preset(TSS::ThemeReplacePresetCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSS::ThemeReplacePresetCommandArchive::clear_oldpreset(TSS::ThemeReplacePresetCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSS::ThemeReplacePresetCommandArchive *TSS::ThemeReplacePresetCommandArchive::ThemeReplacePresetCommandArchive(TSS::ThemeReplacePresetCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6A80;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplacePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
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
  *this = &unk_2885E6A80;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplacePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

TSS::ThemeReplacePresetCommandArchive *TSS::ThemeReplacePresetCommandArchive::ThemeReplacePresetCommandArchive(TSS::ThemeReplacePresetCommandArchive *this, const TSS::ThemeReplacePresetCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6A80;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSS::ThemeReplacePresetCommandArchive::~ThemeReplacePresetCommandArchive(TSS::ThemeReplacePresetCommandArchive *this)
{
  if (this != &TSS::_ThemeReplacePresetCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA04C0]();
      MEMORY[0x277CA0980](v2, 0x10A1C40C24530F0);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA0980]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
}

{
  TSS::ThemeReplacePresetCommandArchive::~ThemeReplacePresetCommandArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSS::ThemeReplacePresetCommandArchive::default_instance(TSS::ThemeReplacePresetCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemeReplacePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_ThemeReplacePresetCommandArchive_default_instance_;
}

uint64_t *TSS::ThemeReplacePresetCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSK::CommandArchive::Clear(this[3]);
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

    return sub_276CD8114(v3);
  }

  return this;
}

google::protobuf::internal *TSS::ThemeReplacePresetCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v31) & 1) == 0)
  {
    while (1)
    {
      v8 = (v31 + 1);
      v9 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v10 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_53;
      }

      v8 = TagFallback;
      v9 = v28;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 == 1)
        {
          if (v9 == 10)
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

              v21 = MEMORY[0x277CA0620](v20);
              LODWORD(v19) = v21;
              *(a1 + 24) = v21;
              v8 = v31;
            }

            v22 = sub_276CE1F64(a3, v19, v8);
            goto LABEL_45;
          }
        }

        else if (v11 == 3 && v9 == 26)
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

            v15 = MEMORY[0x277CA0650](v14);
            LODWORD(v13) = v15;
            *(a1 + 32) = v15;
            goto LABEL_36;
          }

          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (v11 == 4)
      {
        if (v9 == 34)
        {
          *(a1 + 16) |= 4u;
          v13 = *(a1 + 40);
          if (!v13)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277CA0650](v23);
            LODWORD(v13) = v24;
            *(a1 + 40) = v24;
LABEL_36:
            v8 = v31;
          }

LABEL_37:
          v22 = sub_276CE1A84(a3, v13, v8);
LABEL_45:
          v31 = v22;
          if (!v22)
          {
            goto LABEL_53;
          }

          goto LABEL_46;
        }

LABEL_38:
        if (v9)
        {
          v25 = (v9 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276CD7F50((a1 + 8));
        }

        v22 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_45;
      }

      if (v11 != 5 || v9 != 40)
      {
        goto LABEL_38;
      }

      v6 |= 8u;
      v16 = (v8 + 1);
      LODWORD(v17) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v18 = *v16;
      v17 = (v17 + (v18 << 7) - 128);
      if ((v18 & 0x80000000) == 0)
      {
        v16 = (v8 + 2);
LABEL_24:
        v31 = v16;
        *(a1 + 48) = v17;
        goto LABEL_46;
      }

      v29 = google::protobuf::internal::VarintParseSlow32(v8, v17);
      v31 = v29;
      *(a1 + 48) = v30;
      if (!v29)
      {
LABEL_53:
        v31 = 0;
        goto LABEL_2;
      }

LABEL_46:
      v26 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v31))
      {
        goto LABEL_2;
      }
    }

    v8 = (v31 + 2);
LABEL_6:
    v31 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v31;
}

unsigned __int8 *TSS::ThemeReplacePresetCommandArchive::_InternalSerialize(TSS::ThemeReplacePresetCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
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
  *a2 = 26;
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
      goto LABEL_45;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 5);
  *a2 = 34;
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

  a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(this + 12);
    *a2 = 40;
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
      }

      else
      {
        a2[2] = v25;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v24;
      a2 += 2;
    }
  }

LABEL_45:
  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::ThemeReplacePresetCommandArchive::RequiredFieldsByteSizeFallback(TSS::ThemeReplacePresetCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSS::ThemeReplacePresetCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 0xB) != 0)
  {
    v4 = TSS::ThemeReplacePresetCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if ((this[2] & 4) != 0)
  {
    v5 = TSP::Reference::ByteSizeLong(this[5]);
    v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSS::ThemeReplacePresetCommandArchive::MergeFrom(TSS::ThemeReplacePresetCommandArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::ThemeReplacePresetCommandArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::ThemeReplacePresetCommandArchive::MergeFrom(uint64_t this, const TSS::ThemeReplacePresetCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277CA0620](v7);
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

        v10 = MEMORY[0x277CA0650](v11);
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
LABEL_17:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_16:
        *(v3 + 48) = *(a2 + 12);
        goto LABEL_17;
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

      v13 = MEMORY[0x277CA0650](v14);
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
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return this;
}

uint64_t *TSS::ThemeReplacePresetCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeReplacePresetCommandArchive::Clear(this);

    return TSS::ThemeReplacePresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::ThemeReplacePresetCommandArchive::CopyFrom(uint64_t *this, const TSS::ThemeReplacePresetCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeReplacePresetCommandArchive::Clear(this);

    return TSS::ThemeReplacePresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::ThemeReplacePresetCommandArchive::IsInitialized(TSS::ThemeReplacePresetCommandArchive *this)
{
  if ((~*(this + 4) & 0xB) != 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 3));
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

__n128 TSS::ThemeReplacePresetCommandArchive::InternalSwap(TSS::ThemeReplacePresetCommandArchive *this, TSS::ThemeReplacePresetCommandArchive *a2)
{
  sub_276CC4DA4(this + 1, a2 + 1);
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