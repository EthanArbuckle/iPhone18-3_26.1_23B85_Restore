uint64_t *TSA::DocumentArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::DocumentArchive::Clear(result);

    return TSA::DocumentArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::DocumentArchive::CopyFrom(uint64_t *this, const TSA::DocumentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::DocumentArchive::Clear(this);

    return TSA::DocumentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::DocumentArchive::IsInitialized(TSA::DocumentArchive *this)
{
  if ((*(this + 16) & 4) == 0)
  {
    return 0;
  }

  v3 = *(this + 8);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSWP::TextPresetDisplayItemArchive::IsInitialized(*(*(this + 5) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    result = TSK::DocumentArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x20) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 11));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x40) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 12));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x80) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 13));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x100) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 14));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x200) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 15));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 0x400) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 16));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::DocumentArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_2760D9190(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[2].n128_u64[0];
  v6 = this[2].n128_u64[1];
  this[2] = a2[2];
  a2[2].n128_u64[0] = v5;
  a2[2].n128_u64[1] = v6;
  v7 = this[3].n128_u64[0];
  this[3].n128_u64[0] = a2[3].n128_u64[0];
  a2[3].n128_u64[0] = v7;
  v8 = this[3].n128_u64[1];
  this[3].n128_u64[1] = a2[3].n128_u64[1];
  a2[3].n128_u64[1] = v8;
  v9 = this[4].n128_u64[0];
  v10 = this[4].n128_u64[1];
  this[4] = a2[4];
  a2[4].n128_u64[0] = v9;
  a2[4].n128_u64[1] = v10;
  v11 = this[5].n128_u64[0];
  v12 = this[5].n128_u64[1];
  this[5] = a2[5];
  a2[5].n128_u64[0] = v11;
  a2[5].n128_u64[1] = v12;
  v13 = this[6].n128_u64[0];
  v14 = this[6].n128_u64[1];
  this[6] = a2[6];
  a2[6].n128_u64[0] = v13;
  a2[6].n128_u64[1] = v14;
  v15 = this[7].n128_u64[0];
  v16 = this[7].n128_u64[1];
  result = a2[7];
  this[7] = result;
  a2[7].n128_u64[0] = v15;
  a2[7].n128_u64[1] = v16;
  v18 = this[8].n128_u64[0];
  this[8].n128_u64[0] = a2[8].n128_u64[0];
  a2[8].n128_u64[0] = v18;
  LODWORD(v18) = this[8].n128_u32[2];
  this[8].n128_u32[2] = a2[8].n128_u32[2];
  a2[8].n128_u32[2] = v18;
  return result;
}

uint64_t *sub_2760D9190(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  if (*result)
  {
    if ((v3 & 1) == 0)
    {
      v4 = sub_2760FB5A0(a2);
      goto LABEL_6;
    }
  }

  else if ((v3 & 1) == 0)
  {
    return result;
  }

  v4 = ((v3 & 0xFFFFFFFFFFFFFFFELL) + 8);
LABEL_6:

  return sub_2760FB944(v2, v4);
}

double TSA::FunctionBrowserStateArchive::FunctionBrowserStateArchive(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28850FAD0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  result = 0.0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  return result;
}

{
  *a1 = &unk_28850FAD0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  result = 0.0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  *(a1 + 72) = 0;
  return result;
}

TSA::FunctionBrowserStateArchive *TSA::FunctionBrowserStateArchive::FunctionBrowserStateArchive(TSA::FunctionBrowserStateArchive *this, const TSA::FunctionBrowserStateArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28850FAD0;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_2760FB368(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  v7 = *(a2 + 10);
  if (v7)
  {
    sub_2760FB368(this + 10, v7);
    v8 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v8, *(a2 + 6), 4 * *(a2 + 10));
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  v9 = *(a2 + 14);
  if (v9)
  {
    sub_2760FB368(this + 14, v9);
    v10 = *(this + 8);
    *(this + 14) += *(a2 + 14);
    memcpy(v10, *(a2 + 8), 4 * *(a2 + 14));
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    sub_2760FB7E8(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 18) = *(a2 + 18);
  return this;
}

void sub_2760D93E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 60) >= 1)
  {
    v3 = *(v1 + 64);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(v1 + 44) >= 1)
  {
    v6 = *(v1 + 48);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v9 = *(v1 + 32);
    v11 = *(v9 - 8);
    v10 = (v9 - 8);
    if (!v11)
    {
      operator delete(v10);
    }
  }

  _Unwind_Resume(exception_object);
}

void TSA::FunctionBrowserStateArchive::~FunctionBrowserStateArchive(TSA::FunctionBrowserStateArchive *this)
{
  sub_2760D7438(this + 1);
  if (*(this + 15) >= 1)
  {
    v2 = *(this + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  if (*(this + 11) >= 1)
  {
    v5 = *(this + 6);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(this + 7) >= 1)
  {
    v8 = *(this + 4);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }
}

{
  TSA::FunctionBrowserStateArchive::~FunctionBrowserStateArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::FunctionBrowserStateArchive::default_instance(TSA::FunctionBrowserStateArchive *this)
{
  if (atomic_load_explicit(scc_info_FunctionBrowserStateArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_FunctionBrowserStateArchive_default_instance_;
}

uint64_t *TSA::FunctionBrowserStateArchive::Clear(TSA::FunctionBrowserStateArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 4) = 0;
  *(result + 8) = 0;
  *(result + 12) = 0;
  *(result + 16) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2760FB834(result);
  }

  return result;
}

google::protobuf::internal *TSA::FunctionBrowserStateArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  v5 = 0;
  if (sub_2760FB2F0(a3, &v38))
  {
    goto LABEL_2;
  }

  while (1)
  {
    v7 = (v38 + 1);
    v8 = *v38;
    if ((*v38 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v9 = v8 + (*v7 << 7);
    v8 = v9 - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v38 + 2);
LABEL_6:
      v38 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v9 - 128));
    v38 = TagFallback;
    if (!TagFallback)
    {
      goto LABEL_80;
    }

    v7 = TagFallback;
    v8 = v33;
LABEL_7:
    v10 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v10 == 1)
      {
        if (v8 == 8)
        {
          v20 = v7 - 1;
          while (1)
          {
            v38 = (v20 + 1);
            v21 = v20[1];
            if (v20[1] < 0)
            {
              v22 = v21 + (v20[2] << 7);
              v21 = v22 - 128;
              if (v20[2] < 0)
              {
                v20 = google::protobuf::internal::VarintParseSlow32((v20 + 1), (v22 - 128));
                v21 = v23;
              }

              else
              {
                v20 += 3;
              }
            }

            else
            {
              v20 += 2;
            }

            v38 = v20;
            v24 = *(a1 + 24);
            if (v24 == *(a1 + 28))
            {
              v25 = v24 + 1;
              sub_2760FB368((a1 + 24), v24 + 1);
              *(*(a1 + 32) + 4 * v24) = v21;
              v20 = v38;
            }

            else
            {
              *(*(a1 + 32) + 4 * v24) = v21;
              v25 = v24 + 1;
            }

            *(a1 + 24) = v25;
            if (!v20)
            {
              goto LABEL_80;
            }

            if (*a3 <= v20 || *v20 != 8)
            {
              goto LABEL_77;
            }
          }
        }

        if (v8 == 10)
        {
          goto LABEL_68;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 16)
        {
          v11 = v7 - 1;
          while (1)
          {
            v38 = (v11 + 1);
            v12 = v11[1];
            if (v11[1] < 0)
            {
              v13 = v12 + (v11[2] << 7);
              v12 = v13 - 128;
              if (v11[2] < 0)
              {
                v11 = google::protobuf::internal::VarintParseSlow32((v11 + 1), (v13 - 128));
                v12 = v14;
              }

              else
              {
                v11 += 3;
              }
            }

            else
            {
              v11 += 2;
            }

            v38 = v11;
            v15 = *(a1 + 40);
            if (v15 == *(a1 + 44))
            {
              v16 = v15 + 1;
              sub_2760FB368((a1 + 40), v15 + 1);
              *(*(a1 + 48) + 4 * v15) = v12;
              v11 = v38;
            }

            else
            {
              *(*(a1 + 48) + 4 * v15) = v12;
              v16 = v15 + 1;
            }

            *(a1 + 40) = v16;
            if (!v11)
            {
              goto LABEL_80;
            }

            if (*a3 <= v11 || *v11 != 16)
            {
              goto LABEL_77;
            }
          }
        }

        if (v8 == 18)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_69;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 != 4 || v8 != 32)
    {
      goto LABEL_69;
    }

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
      v38 = v17;
      *(a1 + 72) = v18;
      v5 = 1;
      goto LABEL_77;
    }

    v34 = google::protobuf::internal::VarintParseSlow32(v7, v18);
    v38 = v34;
    *(a1 + 72) = v35;
    v5 = 1;
    if (!v34)
    {
      goto LABEL_80;
    }

LABEL_77:
    if (sub_2760FB2F0(a3, &v38))
    {
      goto LABEL_2;
    }
  }

  if (v8 != 24)
  {
    if (v8 == 26)
    {
LABEL_68:
      v36 = google::protobuf::internal::PackedUInt32Parser();
      goto LABEL_76;
    }

LABEL_69:
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

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2760FB5A0((a1 + 8));
    }

    v36 = google::protobuf::internal::UnknownFieldParse();
LABEL_76:
    v38 = v36;
    if (!v36)
    {
      goto LABEL_80;
    }

    goto LABEL_77;
  }

  v26 = v7 - 1;
  while (1)
  {
    v38 = (v26 + 1);
    v27 = v26[1];
    if (v26[1] < 0)
    {
      v28 = v27 + (v26[2] << 7);
      v27 = v28 - 128;
      if (v26[2] < 0)
      {
        v26 = google::protobuf::internal::VarintParseSlow32((v26 + 1), (v28 - 128));
        v27 = v29;
      }

      else
      {
        v26 += 3;
      }
    }

    else
    {
      v26 += 2;
    }

    v38 = v26;
    v30 = *(a1 + 56);
    if (v30 == *(a1 + 60))
    {
      v31 = v30 + 1;
      sub_2760FB368((a1 + 56), v30 + 1);
      *(*(a1 + 64) + 4 * v30) = v27;
      v26 = v38;
    }

    else
    {
      *(*(a1 + 64) + 4 * v30) = v27;
      v31 = v30 + 1;
    }

    *(a1 + 56) = v31;
    if (!v26)
    {
      break;
    }

    if (*a3 <= v26 || *v26 != 24)
    {
      goto LABEL_77;
    }
  }

LABEL_80:
  v38 = 0;
LABEL_2:
  *(a1 + 16) |= v5;
  return v38;
}

unsigned __int8 *TSA::FunctionBrowserStateArchive::_InternalSerialize(TSA::FunctionBrowserStateArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 6);
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(this + 4) + 4 * i);
      *a2 = 8;
      if (v7 > 0x7F)
      {
        a2[1] = v7 | 0x80;
        v8 = v7 >> 7;
        if (v7 >> 14)
        {
          a2 += 3;
          do
          {
            *(a2 - 1) = v8 | 0x80;
            v9 = v8 >> 7;
            ++a2;
            v10 = v8 >> 14;
            v8 >>= 7;
          }

          while (v10);
          *(a2 - 1) = v9;
        }

        else
        {
          a2[2] = v8;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v7;
        a2 += 2;
      }
    }
  }

  v11 = *(this + 10);
  if (v11 >= 1)
  {
    for (j = 0; j != v11; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 6) + 4 * j);
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
  }

  v17 = *(this + 14);
  if (v17 >= 1)
  {
    for (k = 0; k != v17; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 8) + 4 * k);
      *a2 = 24;
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
        }

        else
        {
          a2[2] = v20;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v19;
        a2 += 2;
      }
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(this + 18);
    *a2 = 32;
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
      }

      else
      {
        a2[2] = v24;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v23;
      a2 += 2;
    }
  }

  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::FunctionBrowserStateArchive::ByteSizeLong(TSA::FunctionBrowserStateArchive *this)
{
  v2 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v3 = *(this + 6);
  v4 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v5 = *(this + 10);
  v6 = v2 + v4 + v3 + v5 + google::protobuf::internal::WireFormatLite::UInt32Size() + *(this + 14);
  if (*(this + 16))
  {
    v6 += ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v6, this + 20);
  }

  else
  {
    *(this + 5) = v6;
    return v6;
  }
}

uint64_t TSA::FunctionBrowserStateArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::FunctionBrowserStateArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::FunctionBrowserStateArchive::MergeFrom(uint64_t this, const TSA::FunctionBrowserStateArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(v3 + 24);
    sub_2760FB368((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_2760FB368((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 10);
    this = memcpy((v10 + 4 * v9), *(a2 + 6), 4 * *(a2 + 10));
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(v3 + 56);
    sub_2760FB368((v3 + 56), v12 + v11);
    v13 = *(v3 + 64);
    *(v3 + 56) += *(a2 + 14);
    this = memcpy((v13 + 4 * v12), *(a2 + 8), 4 * *(a2 + 14));
  }

  if (*(a2 + 16))
  {
    v14 = *(a2 + 18);
    *(v3 + 16) |= 1u;
    *(v3 + 72) = v14;
  }

  return this;
}

_BYTE *TSA::FunctionBrowserStateArchive::CopyFrom(_BYTE *result, _BYTE *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = result[8];
    v5 = result + 8;
    *(v5 + 4) = 0;
    *(v5 + 8) = 0;
    *(v5 + 12) = 0;
    *(v5 + 16) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2760FB834(v5);
    }

    return TSA::FunctionBrowserStateArchive::MergeFrom(v4, lpsrc);
  }

  return result;
}

const TSA::FunctionBrowserStateArchive *TSA::FunctionBrowserStateArchive::CopyFrom(const TSA::FunctionBrowserStateArchive *this, const TSA::FunctionBrowserStateArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 4) = 0;
    *(v5 + 8) = 0;
    *(v5 + 12) = 0;
    *(v5 + 16) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_2760FB834(v5);
    }

    return TSA::FunctionBrowserStateArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSA::FunctionBrowserStateArchive::InternalSwap(TSA::FunctionBrowserStateArchive *this, TSA::FunctionBrowserStateArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
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
  LODWORD(v9) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v9;
  return result;
}

uint64_t TSA::ThemePresetsArchive::clear_caption_style_presets(uint64_t this)
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

uint64_t TSA::ThemePresetsArchive::clear_svg_import_style_presets(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 56) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 48) = 0;
  }

  return this;
}

TSA::ThemePresetsArchive *TSA::ThemePresetsArchive::ThemePresetsArchive(TSA::ThemePresetsArchive *this, google::protobuf::Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_28850FB80;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_2760DA1EC(_Unwind_Exception *a1)
{
  sub_2760FFDEC(v2);
  sub_2760FFDEC(v1);
  _Unwind_Resume(a1);
}

TSA::ThemePresetsArchive *TSA::ThemePresetsArchive::ThemePresetsArchive(TSA::ThemePresetsArchive *this, const TSA::ThemePresetsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_28850FB80;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2760FB9AC(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v9 = *(this + 6) + v6;
    *(this + 6) = v9;
    v10 = *(this + 4);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v11 = *(a2 + 12);
  if (v11)
  {
    v12 = *(a2 + 7);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 40));
    sub_2760FB9AC(this + 40, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
    v14 = *(this + 12) + v11;
    *(this + 12) = v14;
    v15 = *(this + 7);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(this + 16) = 0;
  v16 = *(a2 + 1);
  if (v16)
  {
    sub_2760FB7E8(v4, (v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_2760DA364(_Unwind_Exception *a1)
{
  sub_2760FFDEC(v2);
  sub_2760FFDEC(v1);
  _Unwind_Resume(a1);
}

void TSA::ThemePresetsArchive::~ThemePresetsArchive(TSA::ThemePresetsArchive *this)
{
  sub_2760D7438(this + 1);
  sub_2760FFDEC(this + 5);
  sub_2760FFDEC(this + 2);
}

{
  TSA::ThemePresetsArchive::~ThemePresetsArchive(this);

  JUMPOUT(0x277C95910);
}

void *TSA::ThemePresetsArchive::default_instance(TSA::ThemePresetsArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_ThemePresetsArchive_default_instance_;
}

uint64_t *TSA::ThemePresetsArchive::Clear(uint64_t *this)
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

  v5 = *(v1 + 48);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 56) + 8);
    do
    {
      v7 = *v6++;
      this = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_2760FB834(v8);
  }

  return this;
}

google::protobuf::internal *TSA::ThemePresetsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  if ((sub_2760FB2F0(a3, &v31) & 1) == 0)
  {
    while (1)
    {
      v6 = (v31 + 1);
      v7 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v8 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v30;
LABEL_7:
      if (v7 >> 3 == 2)
      {
        if (v7 != 18)
        {
          goto LABEL_12;
        }

        v11 = v6 - 1;
        while (2)
        {
          v12 = (v11 + 1);
          v31 = (v11 + 1);
          v13 = *(a1 + 56);
          if (!v13)
          {
LABEL_24:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
            v13 = *(a1 + 56);
            v14 = *v13;
            goto LABEL_25;
          }

          v19 = *(a1 + 48);
          v14 = *v13;
          if (v19 >= *v13)
          {
            if (v14 == *(a1 + 52))
            {
              goto LABEL_24;
            }

LABEL_25:
            *v13 = v14 + 1;
            v15 = MEMORY[0x277C951B0](*(a1 + 40));
            LODWORD(v16) = v15;
            v17 = *(a1 + 48);
            v18 = *(a1 + 56) + 8 * v17;
            *(a1 + 48) = v17 + 1;
            *(v18 + 8) = v15;
            v12 = v31;
          }

          else
          {
            *(a1 + 48) = v19 + 1;
            v16 = *&v13[2 * v19 + 2];
          }

          v11 = sub_27610EC84(a3, v16, v12);
          v31 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 18)
          {
            goto LABEL_19;
          }

          continue;
        }
      }

      if (v7 >> 3 == 1 && v7 == 10)
      {
        v20 = v6 - 1;
        while (1)
        {
          v21 = (v20 + 1);
          v31 = (v20 + 1);
          v22 = *(a1 + 32);
          if (!v22)
          {
            goto LABEL_36;
          }

          v28 = *(a1 + 24);
          v23 = *v22;
          if (v28 < *v22)
          {
            *(a1 + 24) = v28 + 1;
            v25 = *&v22[2 * v28 + 2];
            goto LABEL_40;
          }

          if (v23 == *(a1 + 28))
          {
LABEL_36:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v22 = *(a1 + 32);
            v23 = *v22;
          }

          *v22 = v23 + 1;
          v24 = MEMORY[0x277C951B0](*(a1 + 16));
          LODWORD(v25) = v24;
          v26 = *(a1 + 24);
          v27 = *(a1 + 32) + 8 * v26;
          *(a1 + 24) = v26 + 1;
          *(v27 + 8) = v24;
          v21 = v31;
LABEL_40:
          v20 = sub_27610EC84(a3, v25, v21);
          v31 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 10)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_12:
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
        return v31;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2760FB5A0((a1 + 8));
      }

      v31 = google::protobuf::internal::UnknownFieldParse();
      if (!v31)
      {
        return 0;
      }

LABEL_19:
      if (sub_2760FB2F0(a3, &v31))
      {
        return v31;
      }
    }

    v6 = (v31 + 2);
LABEL_6:
    v31 = v6;
    goto LABEL_7;
  }

  return v31;
}

unsigned __int8 *TSA::ThemePresetsArchive::_InternalSerialize(TSA::ThemePresetsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::Reference::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::ThemePresetsArchive::ByteSizeLong(TSA::ThemePresetsArchive *this)
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
      v14 = TSP::Reference::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v9, this + 64);
  }

  else
  {
    *(this + 16) = v9;
    return v9;
  }
}

uint64_t TSA::ThemePresetsArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::ThemePresetsArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::ThemePresetsArchive::MergeFrom(uint64_t this, const TSA::ThemePresetsArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_2760FB9AC(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 12);
  if (v10)
  {
    v11 = *(a2 + 7);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 40));
    this = sub_2760FB9AC(v3 + 40, v12, (v11 + 8), v10, **(v3 + 56) - *(v3 + 48));
    v13 = *(v3 + 48) + v10;
    *(v3 + 48) = v13;
    v14 = *(v3 + 56);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  return this;
}

uint64_t *TSA::ThemePresetsArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::ThemePresetsArchive::Clear(result);

    return TSA::ThemePresetsArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::ThemePresetsArchive::CopyFrom(uint64_t *this, const TSA::ThemePresetsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::ThemePresetsArchive::Clear(this);

    return TSA::ThemePresetsArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSA::ThemePresetsArchive::IsInitialized(TSA::ThemePresetsArchive *this)
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

  v6 = *(this + 12);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(this + 7) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

__n128 TSA::ThemePresetsArchive::InternalSwap(TSA::ThemePresetsArchive *this, TSA::ThemePresetsArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  *(this + 24) = *(a2 + 24);
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  v6 = *(this + 6);
  v7 = *(this + 7);
  result = *(a2 + 3);
  *(this + 3) = result;
  *(a2 + 6) = v6;
  *(a2 + 7) = v7;
  return result;
}

TSP::Reference *TSA::ShortcutControllerArchive_ShortcutMapEntry::clear_style(TSA::ShortcutControllerArchive_ShortcutMapEntry *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSA::ShortcutControllerArchive_ShortcutMapEntry *TSA::ShortcutControllerArchive_ShortcutMapEntry::ShortcutControllerArchive_ShortcutMapEntry(TSA::ShortcutControllerArchive_ShortcutMapEntry *this, google::protobuf::Arena *a2)
{
  *this = &unk_28850FC30;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShortcutControllerArchive_ShortcutMapEntry_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSA::ShortcutControllerArchive_ShortcutMapEntry *TSA::ShortcutControllerArchive_ShortcutMapEntry::ShortcutControllerArchive_ShortcutMapEntry(TSA::ShortcutControllerArchive_ShortcutMapEntry *this, const TSA::ShortcutControllerArchive_ShortcutMapEntry *a2)
{
  *(this + 1) = 0;
  *this = &unk_28850FC30;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2760FB7E8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSA::ShortcutControllerArchive_ShortcutMapEntry::~ShortcutControllerArchive_ShortcutMapEntry(TSA::ShortcutControllerArchive_ShortcutMapEntry *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C95910](v2, 0x1012C40EC159624);
  }

  if (this != &TSA::_ShortcutControllerArchive_ShortcutMapEntry_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C95910]();
    }
  }

  sub_2760D7438(this + 1);
}

{
  TSA::ShortcutControllerArchive_ShortcutMapEntry::~ShortcutControllerArchive_ShortcutMapEntry(this);

  JUMPOUT(0x277C95910);
}

void *TSA::ShortcutControllerArchive_ShortcutMapEntry::default_instance(TSA::ShortcutControllerArchive_ShortcutMapEntry *this)
{
  if (atomic_load_explicit(scc_info_ShortcutControllerArchive_ShortcutMapEntry_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_ShortcutControllerArchive_ShortcutMapEntry_default_instance_;
}

uint64_t *TSA::ShortcutControllerArchive_ShortcutMapEntry::Clear(uint64_t *this)
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
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_2760FB834(v4);
  }

  return this;
}

google::protobuf::internal *TSA::ShortcutControllerArchive_ShortcutMapEntry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_2760FB2F0(a3, &v17) & 1) == 0)
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

        v13 = MEMORY[0x277C951B0](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v17;
      }

      v10 = sub_27610EC84(a3, v11, v5);
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
          return v17;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2760FB5A0((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_26;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = google::protobuf::internal::InlineGreedyStringParser();
    }

LABEL_26:
    v17 = v10;
    if (!v10)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *TSA::ShortcutControllerArchive_ShortcutMapEntry::_InternalSerialize(TSA::ShortcutControllerArchive_ShortcutMapEntry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2760D85BC(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
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
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSA::ShortcutControllerArchive_ShortcutMapEntry::RequiredFieldsByteSizeFallback(TSA::ShortcutControllerArchive_ShortcutMapEntry *this)
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
    v6 = TSP::Reference::ByteSizeLong(*(this + 4));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TSA::ShortcutControllerArchive_ShortcutMapEntry::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TSA::ShortcutControllerArchive_ShortcutMapEntry::RequiredFieldsByteSizeFallback(this);
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

    v7 = TSP::Reference::ByteSizeLong(v2);
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

uint64_t TSA::ShortcutControllerArchive_ShortcutMapEntry::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::ShortcutControllerArchive_ShortcutMapEntry::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::ShortcutControllerArchive_ShortcutMapEntry::MergeFrom(uint64_t this, const TSA::ShortcutControllerArchive_ShortcutMapEntry *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
      v6 = *(v3 + 32);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C951B0](v7);
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

      return TSP::Reference::MergeFrom(v6, v8);
    }
  }

  return this;
}

uint64_t *TSA::ShortcutControllerArchive_ShortcutMapEntry::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::ShortcutControllerArchive_ShortcutMapEntry::Clear(result);

    return TSA::ShortcutControllerArchive_ShortcutMapEntry::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::ShortcutControllerArchive_ShortcutMapEntry::CopyFrom(uint64_t *this, const TSA::ShortcutControllerArchive_ShortcutMapEntry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::ShortcutControllerArchive_ShortcutMapEntry::Clear(this);

    return TSA::ShortcutControllerArchive_ShortcutMapEntry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::ShortcutControllerArchive_ShortcutMapEntry::IsInitialized(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(this[4]);
  }
}

uint64_t *TSA::ShortcutControllerArchive_ShortcutMapEntry::InternalSwap(TSA::ShortcutControllerArchive_ShortcutMapEntry *this, TSA::ShortcutControllerArchive_ShortcutMapEntry *a2)
{
  result = sub_2760D9190(this + 1, a2 + 1);
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

TSA::ShortcutControllerArchive *TSA::ShortcutControllerArchive::ShortcutControllerArchive(TSA::ShortcutControllerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28850FCE0;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_ShortcutControllerArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSA::ShortcutControllerArchive *TSA::ShortcutControllerArchive::ShortcutControllerArchive(TSA::ShortcutControllerArchive *this, const TSA::ShortcutControllerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_28850FCE0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2760FBAE0(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_2760FB7E8(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSA::ShortcutControllerArchive::~ShortcutControllerArchive(TSA::ShortcutControllerArchive *this)
{
  sub_2760D7438(this + 1);
  sub_2760FBA5C(this + 2);
}

{
  TSA::ShortcutControllerArchive::~ShortcutControllerArchive(this);

  JUMPOUT(0x277C95910);
}

void *TSA::ShortcutControllerArchive::default_instance(TSA::ShortcutControllerArchive *this)
{
  if (atomic_load_explicit(scc_info_ShortcutControllerArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_ShortcutControllerArchive_default_instance_;
}

uint64_t *TSA::ShortcutControllerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSA::ShortcutControllerArchive_ShortcutMapEntry::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_2760FB834(v5);
  }

  return this;
}

google::protobuf::internal *TSA::ShortcutControllerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_2760FB2F0(a3, &v20) & 1) == 0)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSA::ShortcutControllerArchive_ShortcutMapEntry>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_27610CEC4(a3, v13, v10);
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
        sub_2760FB5A0((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_2760FB2F0(a3, &v20))
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

unsigned __int8 *TSA::ShortcutControllerArchive::_InternalSerialize(TSA::ShortcutControllerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSA::ShortcutControllerArchive_ShortcutMapEntry::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::ShortcutControllerArchive::ByteSizeLong(TSA::ShortcutControllerArchive *this)
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
      v7 = TSA::ShortcutControllerArchive_ShortcutMapEntry::ByteSizeLong(v6);
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

uint64_t TSA::ShortcutControllerArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::ShortcutControllerArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::ShortcutControllerArchive::MergeFrom(uint64_t this, const TSA::ShortcutControllerArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_2760FBAE0(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSA::ShortcutControllerArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::ShortcutControllerArchive::Clear(result);

    return TSA::ShortcutControllerArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::ShortcutControllerArchive::CopyFrom(uint64_t *this, const TSA::ShortcutControllerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::ShortcutControllerArchive::Clear(this);

    return TSA::ShortcutControllerArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL sub_2760DC0D0(uint64_t a1)
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

__n128 TSA::ShortcutControllerArchive::InternalSwap(TSA::ShortcutControllerArchive *this, TSA::ShortcutControllerArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

TSK::CommandArchive *TSA::PropagatePresetCommandArchive::clear_super(TSA::PropagatePresetCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSA::PropagatePresetCommandArchive::clear_preset_change_command(TSA::PropagatePresetCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSA::PropagatePresetCommandArchive *TSA::PropagatePresetCommandArchive::PropagatePresetCommandArchive(TSA::PropagatePresetCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28850FD90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PropagatePresetCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_28850FD90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PropagatePresetCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

TSA::PropagatePresetCommandArchive *TSA::PropagatePresetCommandArchive::PropagatePresetCommandArchive(TSA::PropagatePresetCommandArchive *this, const TSA::PropagatePresetCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28850FD90;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSA::PropagatePresetCommandArchive::~PropagatePresetCommandArchive(TSA::PropagatePresetCommandArchive *this)
{
  if (this != &TSA::_PropagatePresetCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C95910]();
    }
  }

  sub_2760D7438(this + 1);
}

{
  TSA::PropagatePresetCommandArchive::~PropagatePresetCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::PropagatePresetCommandArchive::default_instance(TSA::PropagatePresetCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_PropagatePresetCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_PropagatePresetCommandArchive_default_instance_;
}

uint64_t *TSA::PropagatePresetCommandArchive::Clear(uint64_t *this)
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
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::PropagatePresetCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v27) & 1) == 0)
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

            v16 = MEMORY[0x277C951B0](v15);
            LODWORD(v14) = v16;
            *(a1 + 32) = v16;
            v7 = v27;
          }

          v13 = sub_27610EC84(a3, v14, v7);
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

            v22 = MEMORY[0x277C950D0](v21);
            LODWORD(v20) = v22;
            *(a1 + 24) = v22;
            v7 = v27;
          }

          v13 = sub_27610EBB4(a3, v20, v7);
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
            sub_2760FB5A0((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v27 = v13;
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
        v27 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_37;
      }

      v25 = google::protobuf::internal::VarintParseSlow64(v7, v17);
      v27 = v25;
      *(a1 + 40) = v26 != 0;
      if (!v25)
      {
LABEL_44:
        v27 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_2760FB2F0(a3, &v27))
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

unsigned __int8 *TSA::PropagatePresetCommandArchive::_InternalSerialize(TSA::PropagatePresetCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::PropagatePresetCommandArchive::RequiredFieldsByteSizeFallback(TSA::PropagatePresetCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3 + ((v2 >> 1) & 2);
    }

    goto LABEL_5;
  }

  v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  return v3 + ((v2 >> 1) & 2);
}

uint64_t TSA::PropagatePresetCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v4 = TSA::PropagatePresetCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 4;
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

uint64_t TSA::PropagatePresetCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::PropagatePresetCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::PropagatePresetCommandArchive::MergeFrom(uint64_t this, const TSA::PropagatePresetCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C950D0](v7);
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

      v9 = MEMORY[0x277C951B0](v10);
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

uint64_t *TSA::PropagatePresetCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::PropagatePresetCommandArchive::Clear(result);

    return TSA::PropagatePresetCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::PropagatePresetCommandArchive::CopyFrom(uint64_t *this, const TSA::PropagatePresetCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::PropagatePresetCommandArchive::Clear(this);

    return TSA::PropagatePresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::PropagatePresetCommandArchive::IsInitialized(TSA::PropagatePresetCommandArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
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

__n128 TSA::PropagatePresetCommandArchive::InternalSwap(TSA::PropagatePresetCommandArchive *this, TSA::PropagatePresetCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
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

TSK::CommandArchive *TSA::ShortcutCommandArchive::clear_super(TSA::ShortcutCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSA::ShortcutCommandArchive::clear_old_style(TSA::ShortcutCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSA::ShortcutCommandArchive::clear_new_style(TSA::ShortcutCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSA::ShortcutCommandArchive *TSA::ShortcutCommandArchive::ShortcutCommandArchive(TSA::ShortcutCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28850FE40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShortcutCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  return this;
}

TSA::ShortcutCommandArchive *TSA::ShortcutCommandArchive::ShortcutCommandArchive(TSA::ShortcutCommandArchive *this, const TSA::ShortcutCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_28850FE40;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2760FB7E8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSA::ShortcutCommandArchive::~ShortcutCommandArchive(TSA::ShortcutCommandArchive *this)
{
  sub_2760DD180(this);
  sub_2760D7438(this + 1);
}

{
  TSA::ShortcutCommandArchive::~ShortcutCommandArchive(this);

  JUMPOUT(0x277C95910);
}

TSP::Reference *sub_2760DD180(TSP::Reference *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C95910](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C95910](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSA::_ShortcutCommandArchive_default_instance_)
  {
    if (*(v1 + 5))
    {
      v5 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v5, 0x10A1C40C24530F0);
    }

    v6 = *(v1 + 6);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C95910]();
    }

    result = *(v1 + 7);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

void *TSA::ShortcutCommandArchive::default_instance(TSA::ShortcutCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ShortcutCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_ShortcutCommandArchive_default_instance_;
}

uint64_t *TSA::ShortcutCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
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
        goto LABEL_16;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    this = TSK::CommandArchive::Clear(this[5]);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  this = TSP::Reference::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSP::Reference::Clear(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::ShortcutCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_2760FB2F0(a3, &v23) & 1) == 0)
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
    if (v6 >> 3 <= 2)
    {
      if (v8 != 1)
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_39:
          if (v6)
          {
            v19 = (v6 & 7) == 4;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            *(a3 + 80) = v6 - 1;
            return v23;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2760FB5A0((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_46;
        }

        *(a1 + 16) |= 8u;
        v10 = *(a1 + 48);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C951B0](v11);
          LODWORD(v10) = v12;
          *(a1 + 48) = v12;
LABEL_28:
          v5 = v23;
        }

LABEL_29:
        v15 = sub_27610EC84(a3, v10, v5);
        goto LABEL_46;
      }

      if (v6 != 10)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 4u;
      v16 = *(a1 + 40);
      if (!v16)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = MEMORY[0x277C950D0](v17);
        LODWORD(v16) = v18;
        *(a1 + 40) = v18;
        v5 = v23;
      }

      v15 = sub_27610EBB4(a3, v16, v5);
    }

    else
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 0x10u;
        v10 = *(a1 + 56);
        if (!v10)
        {
          v13 = *(a1 + 8);
          if (v13)
          {
            v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277C951B0](v13);
          LODWORD(v10) = v14;
          *(a1 + 56) = v14;
          goto LABEL_28;
        }

        goto LABEL_29;
      }

      if (v8 == 4)
      {
        if (v6 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 1u;
      }

      else
      {
        if (v8 != 5 || v6 != 42)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 2u;
      }

      google::protobuf::internal::ArenaStringPtr::Mutable();
      v15 = google::protobuf::internal::InlineGreedyStringParser();
    }

LABEL_46:
    v23 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSA::ShortcutCommandArchive::_InternalSerialize(TSA::ShortcutCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      v4[1] = v10 | 0x80;
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
        v4[2] = v12;
        v11 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v10;
      v11 = v4 + 2;
    }

    v4 = TSK::CommandArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 6);
  *v4 = 18;
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
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 7);
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
  if ((v6 & 1) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_39:
  v4 = sub_2760D85BC(a3, 4, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_6:
    v4 = sub_2760D85BC(a3, 5, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_7:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSA::ShortcutCommandArchive::ByteSizeLong(TSA::ShortcutCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
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
LABEL_9:
    v7 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v12 = TSK::CommandArchive::ByteSizeLong(*(this + 5));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = TSP::Reference::ByteSizeLong(*(this + 6));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_15:
    v10 = TSP::Reference::ByteSizeLong(*(this + 7));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
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

uint64_t TSA::ShortcutCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::ShortcutCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::ShortcutCommandArchive::MergeFrom(uint64_t this, const TSA::ShortcutCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
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
          goto LABEL_18;
        }

        goto LABEL_10;
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
LABEL_18:
      v9 = MEMORY[0x277D80A18];
      if ((v5 & 8) != 0)
      {
        *(v3 + 16) |= 8u;
        v10 = *(v3 + 48);
        if (!v10)
        {
          v11 = *(v3 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C951B0](v11);
          *(v3 + 48) = v10;
        }

        if (*(a2 + 6))
        {
          v12 = *(a2 + 6);
        }

        else
        {
          v12 = v9;
        }

        this = TSP::Reference::MergeFrom(v10, v12);
      }

      if ((v5 & 0x10) != 0)
      {
        *(v3 + 16) |= 0x10u;
        v13 = *(v3 + 56);
        if (!v13)
        {
          v14 = *(v3 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C951B0](v14);
          *(v3 + 56) = v13;
        }

        if (*(a2 + 7))
        {
          v15 = *(a2 + 7);
        }

        else
        {
          v15 = v9;
        }

        return TSP::Reference::MergeFrom(v13, v15);
      }

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

      v6 = MEMORY[0x277C950D0](v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 5))
    {
      v8 = *(a2 + 5);
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v6, v8);
    goto LABEL_18;
  }

  return this;
}

uint64_t *TSA::ShortcutCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::ShortcutCommandArchive::Clear(result);

    return TSA::ShortcutCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::ShortcutCommandArchive::CopyFrom(uint64_t *this, const TSA::ShortcutCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::ShortcutCommandArchive::Clear(this);

    return TSA::ShortcutCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::ShortcutCommandArchive::IsInitialized(TSA::ShortcutCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::ShortcutCommandArchive::InternalSwap(TSA::ShortcutCommandArchive *this, TSA::ShortcutCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
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

TSK::CommandArchive *TSA::AddCustomFormatCommandArchive::clear_super(TSA::AddCustomFormatCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSK::CustomFormatArchive *TSA::AddCustomFormatCommandArchive::clear_custom_format(TSA::AddCustomFormatCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::CustomFormatArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TSA::AddCustomFormatCommandArchive::clear_custom_format_key(TSA::AddCustomFormatCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSA::AddCustomFormatCommandArchive *TSA::AddCustomFormatCommandArchive::AddCustomFormatCommandArchive(TSA::AddCustomFormatCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28850FEF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AddCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28850FEF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_AddCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSA::AddCustomFormatCommandArchive *TSA::AddCustomFormatCommandArchive::AddCustomFormatCommandArchive(TSA::AddCustomFormatCommandArchive *this, const TSA::AddCustomFormatCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28850FEF0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSA::AddCustomFormatCommandArchive::~AddCustomFormatCommandArchive(TSA::AddCustomFormatCommandArchive *this)
{
  if (this != &TSA::_AddCustomFormatCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
    }

    if (*(this + 4))
    {
      v3 = MEMORY[0x277C94B00]();
      MEMORY[0x277C95910](v3, 0x10A1C40564F9C1DLL);
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C95910]();
    }
  }

  sub_2760D7438(this + 1);
}

{
  TSA::AddCustomFormatCommandArchive::~AddCustomFormatCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::AddCustomFormatCommandArchive::default_instance(TSA::AddCustomFormatCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_AddCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_AddCustomFormatCommandArchive_default_instance_;
}

uint64_t *TSA::AddCustomFormatCommandArchive::Clear(uint64_t *this)
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

    this = TSK::CustomFormatArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::UUID::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::AddCustomFormatCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while ((sub_2760FB2F0(a3, &v24) & 1) == 0)
  {
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
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
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

        v17 = MEMORY[0x277C95170](v16);
        LODWORD(v15) = v17;
        *(a1 + 40) = v17;
        v5 = v24;
      }

      v11 = sub_27610ED54(a3, v15, v5);
    }

    else if (v8 == 2)
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

        v14 = MEMORY[0x277C950F0](v13);
        LODWORD(v12) = v14;
        *(a1 + 32) = v14;
        v5 = v24;
      }

      v11 = sub_27610CF94(a3, v12, v5);
    }

    else
    {
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
          return v24;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2760FB5A0((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_37;
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

        v20 = MEMORY[0x277C950D0](v19);
        LODWORD(v18) = v20;
        *(a1 + 24) = v20;
        v5 = v24;
      }

      v11 = sub_27610EBB4(a3, v18, v5);
    }

LABEL_37:
    v24 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v24;
}

unsigned __int8 *TSA::AddCustomFormatCommandArchive::_InternalSerialize(TSA::AddCustomFormatCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_35;
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

  a2 = TSK::CustomFormatArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
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

    a2 = TSP::UUID::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::AddCustomFormatCommandArchive::ByteSizeLong(TSA::AddCustomFormatCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
      v5 = TSK::CustomFormatArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v6 = TSP::UUID::ByteSizeLong(*(this + 5));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSA::AddCustomFormatCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::AddCustomFormatCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::AddCustomFormatCommandArchive::MergeFrom(uint64_t this, const TSA::AddCustomFormatCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C950D0](v7);
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
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

        goto LABEL_24;
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

      v9 = MEMORY[0x277C950F0](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D80730];
    }

    this = TSK::CustomFormatArchive::MergeFrom(v9, v11);
    if ((v5 & 4) != 0)
    {
LABEL_24:
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C95170](v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 5))
      {
        v14 = *(a2 + 5);
      }

      else
      {
        v14 = MEMORY[0x277D809E0];
      }

      return TSP::UUID::MergeFrom(v12, v14);
    }
  }

  return this;
}

uint64_t *TSA::AddCustomFormatCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::AddCustomFormatCommandArchive::Clear(result);

    return TSA::AddCustomFormatCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::AddCustomFormatCommandArchive::CopyFrom(uint64_t *this, const TSA::AddCustomFormatCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::AddCustomFormatCommandArchive::Clear(this);

    return TSA::AddCustomFormatCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::AddCustomFormatCommandArchive::IsInitialized(TSA::AddCustomFormatCommandArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSK::CustomFormatArchive::IsInitialized(*(this + 4));
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

    result = TSP::UUID::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSA::AddCustomFormatCommandArchive::InternalSwap(TSA::AddCustomFormatCommandArchive *this, TSA::AddCustomFormatCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
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

TSK::CommandArchive *TSA::UpdateCustomFormatCommandArchive::clear_super(TSA::UpdateCustomFormatCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSK::CustomFormatArchive *TSA::UpdateCustomFormatCommandArchive::clear_custom_format(TSA::UpdateCustomFormatCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::CustomFormatArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSK::CustomFormatArchive *TSA::UpdateCustomFormatCommandArchive::clear_old_custom_format(TSA::UpdateCustomFormatCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSK::CustomFormatArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::UUID *TSA::UpdateCustomFormatCommandArchive::clear_custom_format_key(TSA::UpdateCustomFormatCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSA::UpdateCustomFormatCommandArchive *TSA::UpdateCustomFormatCommandArchive::UpdateCustomFormatCommandArchive(TSA::UpdateCustomFormatCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28850FFA0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UpdateCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_28850FFA0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UpdateCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSA::UpdateCustomFormatCommandArchive *TSA::UpdateCustomFormatCommandArchive::UpdateCustomFormatCommandArchive(TSA::UpdateCustomFormatCommandArchive *this, const TSA::UpdateCustomFormatCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28850FFA0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSA::UpdateCustomFormatCommandArchive::~UpdateCustomFormatCommandArchive(TSA::UpdateCustomFormatCommandArchive *this)
{
  sub_2760DEFCC(this);
  sub_2760D7438(this + 1);
}

{
  TSA::UpdateCustomFormatCommandArchive::~UpdateCustomFormatCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2760DEFCC(uint64_t *result)
{
  if (result != &TSA::_UpdateCustomFormatCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C94B00]();
      MEMORY[0x277C95910](v3, 0x10A1C40564F9C1DLL);
    }

    if (v1[5])
    {
      v4 = MEMORY[0x277C94B00]();
      MEMORY[0x277C95910](v4, 0x10A1C40564F9C1DLL);
    }

    result = v1[6];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

uint64_t *TSA::UpdateCustomFormatCommandArchive::default_instance(TSA::UpdateCustomFormatCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_UpdateCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_UpdateCustomFormatCommandArchive_default_instance_;
}

uint64_t *TSA::UpdateCustomFormatCommandArchive::Clear(uint64_t *this)
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

LABEL_12:
    this = TSK::CustomFormatArchive::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  this = TSK::CommandArchive::Clear(this[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  this = TSK::CustomFormatArchive::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::UUID::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::UpdateCustomFormatCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  while ((sub_2760FB2F0(a3, &v26) & 1) == 0)
  {
    v5 = (v26 + 1);
    v6 = *v26;
    if ((*v26 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v26 + 2);
LABEL_6:
      v26 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v7 - 128));
    v26 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v24;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v10 = *(a1 + 40);
        if (!v10)
        {
          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v21 = MEMORY[0x277C950F0](v20);
          LODWORD(v10) = v21;
          *(a1 + 40) = v21;
LABEL_37:
          v5 = v26;
        }

LABEL_38:
        v16 = sub_27610CF94(a3, v10, v5);
        goto LABEL_46;
      }

      if (v8 != 4 || v6 != 34)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 8u;
      v13 = *(a1 + 48);
      if (!v13)
      {
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C95170](v14);
        LODWORD(v13) = v15;
        *(a1 + 48) = v15;
        v5 = v26;
      }

      v16 = sub_27610ED54(a3, v13, v5);
    }

    else
    {
      if (v8 != 1)
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_39:
          if (v6)
          {
            v22 = (v6 & 7) == 4;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            *(a3 + 80) = v6 - 1;
            return v26;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2760FB5A0((a1 + 8));
          }

          v16 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_46;
        }

        *(a1 + 16) |= 2u;
        v10 = *(a1 + 32);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C950F0](v11);
          LODWORD(v10) = v12;
          *(a1 + 32) = v12;
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (v6 != 10)
      {
        goto LABEL_39;
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

        v19 = MEMORY[0x277C950D0](v18);
        LODWORD(v17) = v19;
        *(a1 + 24) = v19;
        v5 = v26;
      }

      v16 = sub_27610EBB4(a3, v17, v5);
    }

LABEL_46:
    v26 = v16;
    if (!v16)
    {
      return 0;
    }
  }

  return v26;
}

unsigned __int8 *TSA::UpdateCustomFormatCommandArchive::_InternalSerialize(TSA::UpdateCustomFormatCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  a2 = TSK::CustomFormatArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
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

  a2 = TSK::CustomFormatArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
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

    a2 = TSP::UUID::_InternalSerialize(v24, v26, a3);
  }

LABEL_46:
  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::UpdateCustomFormatCommandArchive::ByteSizeLong(TSA::UpdateCustomFormatCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSK::CustomFormatArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = TSK::CustomFormatArchive::ByteSizeLong(*(this + 5));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = TSP::UUID::ByteSizeLong(*(this + 6));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
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

uint64_t TSA::UpdateCustomFormatCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::UpdateCustomFormatCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::UpdateCustomFormatCommandArchive::MergeFrom(uint64_t this, const TSA::UpdateCustomFormatCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C950D0](v7);
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

    v9 = MEMORY[0x277D80730];
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

        v10 = MEMORY[0x277C950F0](v11);
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

      this = TSK::CustomFormatArchive::MergeFrom(v10, v12);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          return this;
        }

        goto LABEL_33;
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

      v13 = MEMORY[0x277C950F0](v14);
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

    this = TSK::CustomFormatArchive::MergeFrom(v13, v15);
    if ((v5 & 8) != 0)
    {
LABEL_33:
      *(v3 + 16) |= 8u;
      v16 = *(v3 + 48);
      if (!v16)
      {
        v17 = *(v3 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x277C95170](v17);
        *(v3 + 48) = v16;
      }

      if (*(a2 + 6))
      {
        v18 = *(a2 + 6);
      }

      else
      {
        v18 = MEMORY[0x277D809E0];
      }

      return TSP::UUID::MergeFrom(v16, v18);
    }
  }

  return this;
}

uint64_t *TSA::UpdateCustomFormatCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::UpdateCustomFormatCommandArchive::Clear(result);

    return TSA::UpdateCustomFormatCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::UpdateCustomFormatCommandArchive::CopyFrom(uint64_t *this, const TSA::UpdateCustomFormatCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::UpdateCustomFormatCommandArchive::Clear(this);

    return TSA::UpdateCustomFormatCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::UpdateCustomFormatCommandArchive::IsInitialized(TSA::UpdateCustomFormatCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSK::CustomFormatArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSK::CustomFormatArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::UpdateCustomFormatCommandArchive::InternalSwap(TSA::UpdateCustomFormatCommandArchive *this, TSA::UpdateCustomFormatCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
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

TSK::CommandArchive *TSA::ReplaceCustomFormatCommandArchive::clear_super(TSA::ReplaceCustomFormatCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSK::CustomFormatArchive *TSA::ReplaceCustomFormatCommandArchive::clear_custom_format(TSA::ReplaceCustomFormatCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSK::CustomFormatArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TSA::ReplaceCustomFormatCommandArchive::clear_custom_format_key(TSA::ReplaceCustomFormatCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSK::FormatStructArchive *TSA::ReplaceCustomFormatCommandArchive::clear_replacement_format(TSA::ReplaceCustomFormatCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::FormatStructArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSA::ReplaceCustomFormatCommandArchive *TSA::ReplaceCustomFormatCommandArchive::ReplaceCustomFormatCommandArchive(TSA::ReplaceCustomFormatCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510050;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReplaceCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288510050;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReplaceCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSA::ReplaceCustomFormatCommandArchive *TSA::ReplaceCustomFormatCommandArchive::ReplaceCustomFormatCommandArchive(TSA::ReplaceCustomFormatCommandArchive *this, const TSA::ReplaceCustomFormatCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510050;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSA::ReplaceCustomFormatCommandArchive::~ReplaceCustomFormatCommandArchive(TSA::ReplaceCustomFormatCommandArchive *this)
{
  sub_2760DFF94(this);
  sub_2760D7438(this + 1);
}

{
  TSA::ReplaceCustomFormatCommandArchive::~ReplaceCustomFormatCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t *sub_2760DFF94(uint64_t *result)
{
  if (result != &TSA::_ReplaceCustomFormatCommandArchive_default_instance_)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
    }

    if (v1[4])
    {
      v3 = MEMORY[0x277C94B00]();
      MEMORY[0x277C95910](v3, 0x10A1C40564F9C1DLL);
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C95910]();
    }

    result = v1[6];
    if (result)
    {
      MEMORY[0x277C94B50]();

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

uint64_t *TSA::ReplaceCustomFormatCommandArchive::default_instance(TSA::ReplaceCustomFormatCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ReplaceCustomFormatCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_ReplaceCustomFormatCommandArchive_default_instance_;
}

uint64_t *TSA::ReplaceCustomFormatCommandArchive::Clear(uint64_t *this)
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

LABEL_12:
    this = TSK::CustomFormatArchive::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_13;
  }

  this = TSK::CommandArchive::Clear(this[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_13:
  this = TSP::UUID::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSK::FormatStructArchive::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::ReplaceCustomFormatCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  while ((sub_2760FB2F0(a3, &v27) & 1) == 0)
  {
    v5 = (v27 + 1);
    v6 = *v27;
    if ((*v27 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v27 + 2);
LABEL_6:
      v27 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v7 - 128));
    v27 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v25;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v20 = *(a1 + 40);
        if (!v20)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C95170](v21);
          LODWORD(v20) = v22;
          *(a1 + 40) = v22;
          v5 = v27;
        }

        v13 = sub_27610ED54(a3, v20, v5);
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 8u;
        v14 = *(a1 + 48);
        if (!v14)
        {
          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x277C95100](v15);
          LODWORD(v14) = v16;
          *(a1 + 48) = v16;
          v5 = v27;
        }

        v13 = sub_27610D064(a3, v14, v5);
      }
    }

    else if (v8 == 1)
    {
      if (v6 != 10)
      {
        goto LABEL_39;
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

        v19 = MEMORY[0x277C950D0](v18);
        LODWORD(v17) = v19;
        *(a1 + 24) = v19;
        v5 = v27;
      }

      v13 = sub_27610EBB4(a3, v17, v5);
    }

    else
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_39:
        if (v6)
        {
          v23 = (v6 & 7) == 4;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          *(a3 + 80) = v6 - 1;
          return v27;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2760FB5A0((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_46;
      }

      *(a1 + 16) |= 2u;
      v10 = *(a1 + 32);
      if (!v10)
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x277C950F0](v11);
        LODWORD(v10) = v12;
        *(a1 + 32) = v12;
        v5 = v27;
      }

      v13 = sub_27610CF94(a3, v10, v5);
    }

LABEL_46:
    v27 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v27;
}

unsigned __int8 *TSA::ReplaceCustomFormatCommandArchive::_InternalSerialize(TSA::ReplaceCustomFormatCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  a2 = TSK::CustomFormatArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
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

  a2 = TSP::UUID::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(this + 6);
    *a2 = 34;
    v25 = *(v24 + 12);
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

    a2 = TSK::FormatStructArchive::_InternalSerialize(v24, v26, a3);
  }

LABEL_46:
  v30 = *(this + 1);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::ReplaceCustomFormatCommandArchive::ByteSizeLong(TSA::ReplaceCustomFormatCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSK::CustomFormatArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = TSP::UUID::ByteSizeLong(*(this + 5));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) != 0)
  {
LABEL_10:
    v6 = TSK::FormatStructArchive::ByteSizeLong(*(this + 6));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_11:
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

uint64_t TSA::ReplaceCustomFormatCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::ReplaceCustomFormatCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::ReplaceCustomFormatCommandArchive::MergeFrom(uint64_t this, const TSA::ReplaceCustomFormatCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) == 0)
  {
    return this;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C950F0](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D80730];
    }

    this = TSK::CustomFormatArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return this;
      }

      goto LABEL_33;
    }

    goto LABEL_25;
  }

  *(v3 + 16) |= 1u;
  v6 = *(v3 + 24);
  if (!v6)
  {
    v7 = *(v3 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = MEMORY[0x277C950D0](v7);
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
  if ((v5 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_25:
  *(v3 + 16) |= 4u;
  v12 = *(v3 + 40);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x277C95170](v13);
    *(v3 + 40) = v12;
  }

  if (*(a2 + 5))
  {
    v14 = *(a2 + 5);
  }

  else
  {
    v14 = MEMORY[0x277D809E0];
  }

  this = TSP::UUID::MergeFrom(v12, v14);
  if ((v5 & 8) != 0)
  {
LABEL_33:
    *(v3 + 16) |= 8u;
    if (!*(v3 + 48))
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      *(v3 + 48) = MEMORY[0x277C95100](v15);
    }

    return MEMORY[0x2821EA338]();
  }

  return this;
}

uint64_t *TSA::ReplaceCustomFormatCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::ReplaceCustomFormatCommandArchive::Clear(result);

    return TSA::ReplaceCustomFormatCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::ReplaceCustomFormatCommandArchive::CopyFrom(uint64_t *this, const TSA::ReplaceCustomFormatCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::ReplaceCustomFormatCommandArchive::Clear(this);

    return TSA::ReplaceCustomFormatCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::ReplaceCustomFormatCommandArchive::IsInitialized(TSA::ReplaceCustomFormatCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSK::CustomFormatArchive::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(this + 6));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::ReplaceCustomFormatCommandArchive::InternalSwap(TSA::ReplaceCustomFormatCommandArchive *this, TSA::ReplaceCustomFormatCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
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

TSK::CommandArchive *TSA::NeedsMediaCompatibilityUpgradeCommandArchive::clear_super(TSA::NeedsMediaCompatibilityUpgradeCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSA::NeedsMediaCompatibilityUpgradeCommandArchive *TSA::NeedsMediaCompatibilityUpgradeCommandArchive::NeedsMediaCompatibilityUpgradeCommandArchive(TSA::NeedsMediaCompatibilityUpgradeCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510100;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_NeedsMediaCompatibilityUpgradeCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 30) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288510100;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_NeedsMediaCompatibilityUpgradeCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 30) = 0;
  *(this + 3) = 0;
  return this;
}

TSA::NeedsMediaCompatibilityUpgradeCommandArchive *TSA::NeedsMediaCompatibilityUpgradeCommandArchive::NeedsMediaCompatibilityUpgradeCommandArchive(TSA::NeedsMediaCompatibilityUpgradeCommandArchive *this, const TSA::NeedsMediaCompatibilityUpgradeCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510100;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_2760FB7E8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  v7 = *(a2 + 8);
  *(this + 18) = *(a2 + 18);
  *(this + 8) = v7;
  return this;
}

void TSA::NeedsMediaCompatibilityUpgradeCommandArchive::~NeedsMediaCompatibilityUpgradeCommandArchive(TSA::NeedsMediaCompatibilityUpgradeCommandArchive *this)
{
  if (this != &TSA::_NeedsMediaCompatibilityUpgradeCommandArchive_default_instance_ && *(this + 3))
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438(this + 1);
}

{
  TSA::NeedsMediaCompatibilityUpgradeCommandArchive::~NeedsMediaCompatibilityUpgradeCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t *TSA::NeedsMediaCompatibilityUpgradeCommandArchive::default_instance(TSA::NeedsMediaCompatibilityUpgradeCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_NeedsMediaCompatibilityUpgradeCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_NeedsMediaCompatibilityUpgradeCommandArchive_default_instance_;
}

uint64_t *TSA::NeedsMediaCompatibilityUpgradeCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSK::CommandArchive::Clear(this[3]);
  }

  if ((v2 & 0x7E) != 0)
  {
    *(v1 + 36) = 0;
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::NeedsMediaCompatibilityUpgradeCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v49 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v49) & 1) == 0)
  {
    while (1)
    {
      v7 = (v49 + 1);
      v8 = *v49;
      if ((*v49 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v49, (v9 - 128));
      v49 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_80;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v23 = *(a1 + 24);
            if (!v23)
            {
              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = MEMORY[0x277C950D0](v24);
              LODWORD(v23) = v25;
              *(a1 + 24) = v25;
              v7 = v49;
            }

            v26 = sub_27610EBB4(a3, v23, v7);
          }

          else
          {
LABEL_57:
            if (v8)
            {
              v36 = (v8 & 7) == 4;
            }

            else
            {
              v36 = 1;
            }

            if (v36)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2760FB5A0((a1 + 8));
            }

            v26 = google::protobuf::internal::UnknownFieldParse();
          }

          v49 = v26;
          if (!v26)
          {
            goto LABEL_80;
          }

          goto LABEL_65;
        }

        if (v10 == 2)
        {
          if (v8 != 16)
          {
            goto LABEL_57;
          }

          v5 |= 2u;
          v34 = (v7 + 1);
          v33 = *v7;
          if ((v33 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v35 = *v34;
          v33 = (v35 << 7) + v33 - 128;
          if ((v35 & 0x80000000) == 0)
          {
            v34 = (v7 + 2);
LABEL_56:
            v49 = v34;
            *(a1 + 32) = v33 != 0;
            goto LABEL_65;
          }

          v47 = google::protobuf::internal::VarintParseSlow64(v7, v33);
          v49 = v47;
          *(a1 + 32) = v48 != 0;
          if (!v47)
          {
LABEL_80:
            v49 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 3 || v8 != 24)
          {
            goto LABEL_57;
          }

          v5 |= 4u;
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
            v49 = v16;
            *(a1 + 33) = v15 != 0;
            goto LABEL_65;
          }

          v45 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v49 = v45;
          *(a1 + 33) = v46 != 0;
          if (!v45)
          {
            goto LABEL_80;
          }
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_57;
          }

          v5 |= 0x20u;
          v31 = (v7 + 1);
          v30 = *v7;
          if ((v30 & 0x8000000000000000) == 0)
          {
            goto LABEL_51;
          }

          v32 = *v31;
          v30 = (v32 << 7) + v30 - 128;
          if ((v32 & 0x80000000) == 0)
          {
            v31 = (v7 + 2);
LABEL_51:
            v49 = v31;
            *(a1 + 36) = v30 != 0;
            goto LABEL_65;
          }

          v39 = google::protobuf::internal::VarintParseSlow64(v7, v30);
          v49 = v39;
          *(a1 + 36) = v40 != 0;
          if (!v39)
          {
            goto LABEL_80;
          }
        }

        else
        {
          if (v10 != 7 || v8 != 56)
          {
            goto LABEL_57;
          }

          v5 |= 0x40u;
          v19 = (v7 + 1);
          v18 = *v7;
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_33;
          }

          v20 = *v19;
          v18 = (v20 << 7) + v18 - 128;
          if ((v20 & 0x80000000) == 0)
          {
            v19 = (v7 + 2);
LABEL_33:
            v49 = v19;
            *(a1 + 37) = v18 != 0;
            goto LABEL_65;
          }

          v43 = google::protobuf::internal::VarintParseSlow64(v7, v18);
          v49 = v43;
          *(a1 + 37) = v44 != 0;
          if (!v43)
          {
            goto LABEL_80;
          }
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_57;
        }

        v5 |= 8u;
        v28 = (v7 + 1);
        v27 = *v7;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v28 = (v7 + 2);
LABEL_46:
          v49 = v28;
          *(a1 + 34) = v27 != 0;
          goto LABEL_65;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v27);
        v49 = v37;
        *(a1 + 34) = v38 != 0;
        if (!v37)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_57;
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
          v49 = v12;
          *(a1 + 35) = v11 != 0;
          goto LABEL_65;
        }

        v41 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v49 = v41;
        *(a1 + 35) = v42 != 0;
        if (!v41)
        {
          goto LABEL_80;
        }
      }

LABEL_65:
      if (sub_2760FB2F0(a3, &v49))
      {
        goto LABEL_2;
      }
    }

    v7 = (v49 + 2);
LABEL_6:
    v49 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v49;
}

unsigned __int8 *TSA::NeedsMediaCompatibilityUpgradeCommandArchive::_InternalSerialize(TSA::NeedsMediaCompatibilityUpgradeCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      goto LABEL_22;
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

  v12 = *(this + 32);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_22:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 33);
  *a2 = 24;
  a2[1] = v13;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_25:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 34);
  *a2 = 32;
  a2[1] = v14;
  a2 += 2;
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(this + 35);
  *a2 = 40;
  a2[1] = v15;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

LABEL_31:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 36);
  *a2 = 48;
  a2[1] = v16;
  a2 += 2;
  if ((v5 & 0x40) != 0)
  {
LABEL_34:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v17 = *(this + 37);
    *a2 = 56;
    a2[1] = v17;
    a2 += 2;
  }

LABEL_37:
  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSA::NeedsMediaCompatibilityUpgradeCommandArchive::ByteSizeLong(TSA::NeedsMediaCompatibilityUpgradeCommandArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x7E) != 0)
  {
    v5.i64[0] = 0x200000002;
    v5.i64[1] = 0x200000002;
    v3 += vaddlvq_u32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_276116DE0), v5)) + (v2 & 2) + ((v2 >> 5) & 2);
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

uint64_t TSA::NeedsMediaCompatibilityUpgradeCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::NeedsMediaCompatibilityUpgradeCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::NeedsMediaCompatibilityUpgradeCommandArchive::MergeFrom(uint64_t this, const TSA::NeedsMediaCompatibilityUpgradeCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277C950D0](v7);
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
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_23:
    *(v3 + 33) = *(a2 + 33);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_24:
    *(v3 + 34) = *(a2 + 34);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(v3 + 35) = *(a2 + 35);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
LABEL_12:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_11:
      *(v3 + 37) = *(a2 + 37);
      goto LABEL_12;
    }

LABEL_26:
    *(v3 + 36) = *(a2 + 36);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return this;
}

uint64_t *TSA::NeedsMediaCompatibilityUpgradeCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::NeedsMediaCompatibilityUpgradeCommandArchive::Clear(result);

    return TSA::NeedsMediaCompatibilityUpgradeCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::NeedsMediaCompatibilityUpgradeCommandArchive::CopyFrom(uint64_t *this, const TSA::NeedsMediaCompatibilityUpgradeCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::NeedsMediaCompatibilityUpgradeCommandArchive::Clear(this);

    return TSA::NeedsMediaCompatibilityUpgradeCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::NeedsMediaCompatibilityUpgradeCommandArchive::IsInitialized(TSK::CommandArchive **this)
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

uint64_t *TSA::NeedsMediaCompatibilityUpgradeCommandArchive::InternalSwap(TSA::NeedsMediaCompatibilityUpgradeCommandArchive *this, TSA::NeedsMediaCompatibilityUpgradeCommandArchive *a2)
{
  result = sub_2760D9190(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  LOWORD(v6) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v6;
  return result;
}

TSK::CommandArchive *TSA::ChangeDocumentLocaleCommandArchive::clear_super(TSA::ChangeDocumentLocaleCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSK::FormattingSymbolsArchive *TSA::ChangeDocumentLocaleCommandArchive::clear_old_formatting_symbols(TSA::ChangeDocumentLocaleCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSK::FormattingSymbolsArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSK::FormattingSymbolsArchive *TSA::ChangeDocumentLocaleCommandArchive::clear_new_formatting_symbols(TSA::ChangeDocumentLocaleCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSK::FormattingSymbolsArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSA::ChangeDocumentLocaleCommandArchive *TSA::ChangeDocumentLocaleCommandArchive::ChangeDocumentLocaleCommandArchive(TSA::ChangeDocumentLocaleCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885101B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChangeDocumentLocaleCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  return this;
}

TSA::ChangeDocumentLocaleCommandArchive *TSA::ChangeDocumentLocaleCommandArchive::ChangeDocumentLocaleCommandArchive(TSA::ChangeDocumentLocaleCommandArchive *this, const TSA::ChangeDocumentLocaleCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2885101B0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2760FB7E8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TSA::ChangeDocumentLocaleCommandArchive::~ChangeDocumentLocaleCommandArchive(TSA::ChangeDocumentLocaleCommandArchive *this)
{
  sub_2760E1CB4(this);
  sub_2760D7438(this + 1);
}

{
  TSA::ChangeDocumentLocaleCommandArchive::~ChangeDocumentLocaleCommandArchive(this);

  JUMPOUT(0x277C95910);
}

uint64_t sub_2760E1CB4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C95910](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 32);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C95910](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSA::_ChangeDocumentLocaleCommandArchive_default_instance_)
  {
    if (*(v1 + 40))
    {
      v5 = MEMORY[0x277C94A60]();
      MEMORY[0x277C95910](v5, 0x10A1C40C24530F0);
    }

    if (*(v1 + 48))
    {
      v6 = MEMORY[0x277C94BE0]();
      MEMORY[0x277C95910](v6, 0x10A1C400B51D975);
    }

    result = *(v1 + 56);
    if (result)
    {
      MEMORY[0x277C94BE0]();

      JUMPOUT(0x277C95910);
    }
  }

  return result;
}

void *TSA::ChangeDocumentLocaleCommandArchive::default_instance(TSA::ChangeDocumentLocaleCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ChangeDocumentLocaleCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_ChangeDocumentLocaleCommandArchive_default_instance_;
}

uint64_t *TSA::ChangeDocumentLocaleCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
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
        goto LABEL_16;
      }
    }

    else
    {
      *v5 = 0;
      *(v5 + 23) = 0;
      if ((v2 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    this = TSK::CommandArchive::Clear(this[5]);
    if ((v2 & 8) == 0)
    {
LABEL_6:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    goto LABEL_21;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v6 + 23) < 0)
  {
    **v6 = 0;
    *(v6 + 8) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_21:
  this = TSK::FormattingSymbolsArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSK::FormattingSymbolsArchive::Clear(*(v1 + 56));
  }

LABEL_8:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_2760FB834(v3);
  }

  return this;
}

google::protobuf::internal *TSA::ChangeDocumentLocaleCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  while ((sub_2760FB2F0(a3, &v23) & 1) == 0)
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
    if (v6 >> 3 > 2)
    {
      if (v8 != 3)
      {
        if (v8 == 4)
        {
          if (v6 != 34)
          {
            goto LABEL_39;
          }

          *(a1 + 16) |= 8u;
          v9 = *(a1 + 48);
          if (!v9)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277C95120](v14);
            LODWORD(v9) = v15;
            *(a1 + 48) = v15;
LABEL_31:
            v5 = v23;
          }
        }

        else
        {
          if (v8 != 5 || v6 != 42)
          {
            goto LABEL_39;
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

            v11 = MEMORY[0x277C95120](v10);
            LODWORD(v9) = v11;
            *(a1 + 56) = v11;
            goto LABEL_31;
          }
        }

        v13 = sub_27610D134(a3, v9, v5);
        goto LABEL_46;
      }

      if (v6 != 26)
      {
        goto LABEL_39;
      }

      *(a1 + 16) |= 2u;
      goto LABEL_25;
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_39:
        if (v6)
        {
          v19 = (v6 & 7) == 4;
        }

        else
        {
          v19 = 1;
        }

        if (v19)
        {
          *(a3 + 80) = v6 - 1;
          return v23;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2760FB5A0((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_46;
      }

      *(a1 + 16) |= 1u;
LABEL_25:
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v13 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_46;
    }

    if (v6 != 10)
    {
      goto LABEL_39;
    }

    *(a1 + 16) |= 4u;
    v16 = *(a1 + 40);
    if (!v16)
    {
      v17 = *(a1 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C950D0](v17);
      LODWORD(v16) = v18;
      *(a1 + 40) = v18;
      v5 = v23;
    }

    v13 = sub_27610EBB4(a3, v16, v5);
LABEL_46:
    v23 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSA::ChangeDocumentLocaleCommandArchive::_InternalSerialize(TSA::ChangeDocumentLocaleCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 5);
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

    v4 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2760D85BC(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v4 = sub_2760D85BC(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

LABEL_19:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 6);
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

  v4 = TSK::FormattingSymbolsArchive::_InternalSerialize(v13, v15, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_29:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(this + 7);
    *v4 = 42;
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

    v4 = TSK::FormattingSymbolsArchive::_InternalSerialize(v19, v21, a3);
  }

LABEL_39:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSA::ChangeDocumentLocaleCommandArchive::ByteSizeLong(TSA::ChangeDocumentLocaleCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
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
LABEL_9:
    v7 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v2 & 4) != 0)
  {
    v12 = TSK::CommandArchive::ByteSizeLong(*(this + 5));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = TSK::FormattingSymbolsArchive::ByteSizeLong(*(this + 6));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_15:
    v10 = TSK::FormattingSymbolsArchive::ByteSizeLong(*(this + 7));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
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

uint64_t TSA::ChangeDocumentLocaleCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::ChangeDocumentLocaleCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::ChangeDocumentLocaleCommandArchive::MergeFrom(uint64_t this, const TSA::ChangeDocumentLocaleCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
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
          goto LABEL_18;
        }

        goto LABEL_10;
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
LABEL_18:
      v9 = MEMORY[0x277D80758];
      if ((v5 & 8) != 0)
      {
        *(v3 + 16) |= 8u;
        v10 = *(v3 + 48);
        if (!v10)
        {
          v11 = *(v3 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = MEMORY[0x277C95120](v11);
          *(v3 + 48) = v10;
        }

        if (*(a2 + 6))
        {
          v12 = *(a2 + 6);
        }

        else
        {
          v12 = v9;
        }

        this = TSK::FormattingSymbolsArchive::MergeFrom(v10, v12);
      }

      if ((v5 & 0x10) != 0)
      {
        *(v3 + 16) |= 0x10u;
        v13 = *(v3 + 56);
        if (!v13)
        {
          v14 = *(v3 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = MEMORY[0x277C95120](v14);
          *(v3 + 56) = v13;
        }

        if (*(a2 + 7))
        {
          v15 = *(a2 + 7);
        }

        else
        {
          v15 = v9;
        }

        return TSK::FormattingSymbolsArchive::MergeFrom(v13, v15);
      }

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

      v6 = MEMORY[0x277C950D0](v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 5))
    {
      v8 = *(a2 + 5);
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v6, v8);
    goto LABEL_18;
  }

  return this;
}

uint64_t *TSA::ChangeDocumentLocaleCommandArchive::CopyFrom(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    TSA::ChangeDocumentLocaleCommandArchive::Clear(result);

    return TSA::ChangeDocumentLocaleCommandArchive::MergeFrom(v4, a2);
  }

  return result;
}

uint64_t *TSA::ChangeDocumentLocaleCommandArchive::CopyFrom(uint64_t *this, const TSA::ChangeDocumentLocaleCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSA::ChangeDocumentLocaleCommandArchive::Clear(this);

    return TSA::ChangeDocumentLocaleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSA::ChangeDocumentLocaleCommandArchive::IsInitialized(TSA::ChangeDocumentLocaleCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    result = TSK::CommandArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSK::FormattingSymbolsArchive::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 0x10) == 0)
  {
    return 1;
  }

  result = TSK::FormattingSymbolsArchive::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSA::ChangeDocumentLocaleCommandArchive::InternalSwap(TSA::ChangeDocumentLocaleCommandArchive *this, TSA::ChangeDocumentLocaleCommandArchive *a2)
{
  sub_2760D9190(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
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

TSK::CommandArchive *TSA::InducedVerifyObjectsWithServerCommandArchive::clear_super(TSA::InducedVerifyObjectsWithServerCommandArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t TSA::InducedVerifyObjectsWithServerCommandArchive::clear_object_id_list(uint64_t this)
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

TSA::InducedVerifyObjectsWithServerCommandArchive *TSA::InducedVerifyObjectsWithServerCommandArchive::InducedVerifyObjectsWithServerCommandArchive(TSA::InducedVerifyObjectsWithServerCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288510260;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_InducedVerifyObjectsWithServerCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 87) = 0;
  return this;
}

void sub_2760E2B20(_Unwind_Exception *a1)
{
  sub_2760FBBA0(v2);
  sub_2760FFE70(v1);
  _Unwind_Resume(a1);
}

TSA::InducedVerifyObjectsWithServerCommandArchive *TSA::InducedVerifyObjectsWithServerCommandArchive::InducedVerifyObjectsWithServerCommandArchive(TSA::InducedVerifyObjectsWithServerCommandArchive *this, const TSA::InducedVerifyObjectsWithServerCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288510260;
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
    sub_2760FBC3C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2760FBCEC(this + 2, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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
    sub_2760FB7E8(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 9) = 0;
  v16 = *(a2 + 10);
  *(this + 87) = *(a2 + 87);
  *(this + 10) = v16;
  return this;
}

void sub_2760E2CE0(_Unwind_Exception *a1)
{
  MEMORY[0x277C95910](v3, 0x10A1C40C24530F0);
  sub_2760FBBA0(v2);
  sub_2760FFE70((v1 + 24));
  _Unwind_Resume(a1);
}

void TSA::InducedVerifyObjectsWithServerCommandArchive::~InducedVerifyObjectsWithServerCommandArchive(TSA::InducedVerifyObjectsWithServerCommandArchive *this)
{
  if (this != &TSA::_InducedVerifyObjectsWithServerCommandArchive_default_instance_ && *(this + 9))
  {
    v2 = MEMORY[0x277C94A60]();
    MEMORY[0x277C95910](v2, 0x10A1C40C24530F0);
  }

  sub_2760D7438(this + 1);
  sub_2760FBBA0(this + 6);
  sub_2760FFE70(this + 3);
}

{
  TSA::InducedVerifyObjectsWithServerCommandArchive::~InducedVerifyObjectsWithServerCommandArchive(this);

  JUMPOUT(0x277C95910);
}

void *TSA::InducedVerifyObjectsWithServerCommandArchive::default_instance(TSA::InducedVerifyObjectsWithServerCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_InducedVerifyObjectsWithServerCommandArchive_TSAArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSA::_InducedVerifyObjectsWithServerCommandArchive_default_instance_;
}

uint64_t *TSA::InducedVerifyObjectsWithServerCommandArchive::Clear(TSA::InducedVerifyObjectsWithServerCommandArchive *this)
{
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (*(this + 5) + 8);
    do
    {
      v4 = *v3++;
      TSP::UUID::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 8) = 0;
  }

  result = sub_2760FB718(this + 48);
  v6 = *(this + 4);
  if (v6)
  {
    result = TSK::CommandArchive::Clear(*(this + 9));
  }

  if ((v6 & 0x1E) != 0)
  {
    *(this + 87) = 0;
    *(this + 10) = 0;
  }

  v8 = *(this + 8);
  v7 = this + 8;
  *(v7 + 2) = 0;
  if (v8)
  {

    return sub_2760FB834(v7);
  }

  return result;
}

google::protobuf::internal *TSA::InducedVerifyObjectsWithServerCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v50 = a2;
  v5 = 0;
  if ((sub_2760FB2F0(a3, &v50) & 1) == 0)
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
        goto LABEL_87;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_70;
          }

          *(a1 + 16) |= 1u;
          v20 = *(a1 + 72);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = MEMORY[0x277C950D0](v21);
            LODWORD(v20) = v22;
            *(a1 + 72) = v22;
            v7 = v50;
          }

          v23 = sub_27610EBB4(a3, v20, v7);
          goto LABEL_77;
        }

        if (v10 != 2)
        {
          if (v10 != 3 || v8 != 24)
          {
            goto LABEL_70;
          }

          v5 |= 4u;
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
            *(a1 + 88) = v15 != 0;
            goto LABEL_78;
          }

          v48 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v50 = v48;
          *(a1 + 88) = v49 != 0;
          if (!v48)
          {
LABEL_87:
            v50 = 0;
            goto LABEL_2;
          }

          goto LABEL_78;
        }

        if (v8 != 18)
        {
          goto LABEL_70;
        }

        v34 = v7 - 1;
        while (2)
        {
          v35 = (v34 + 1);
          v50 = (v34 + 1);
          v36 = *(a1 + 40);
          if (!v36)
          {
LABEL_60:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v36 = *(a1 + 40);
            v37 = *v36;
            goto LABEL_61;
          }

          v42 = *(a1 + 32);
          v37 = *v36;
          if (v42 >= *v36)
          {
            if (v37 == *(a1 + 36))
            {
              goto LABEL_60;
            }

LABEL_61:
            *v36 = v37 + 1;
            v38 = MEMORY[0x277C95170](*(a1 + 24));
            LODWORD(v39) = v38;
            v40 = *(a1 + 32);
            v41 = *(a1 + 40) + 8 * v40;
            *(a1 + 32) = v40 + 1;
            *(v41 + 8) = v38;
            v35 = v50;
          }

          else
          {
            *(a1 + 32) = v42 + 1;
            v39 = *&v36[2 * v42 + 2];
          }

          v34 = sub_27610ED54(a3, v39, v35);
          v50 = v34;
          if (!v34)
          {
            goto LABEL_87;
          }

          if (*a3 <= v34 || *v34 != 18)
          {
            goto LABEL_78;
          }

          continue;
        }
      }

      if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_70;
          }

          v5 |= 0x10u;
          v32 = (v7 + 1);
          v31 = *v7;
          if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_56;
          }

          v33 = *v32;
          v31 = (v33 << 7) + v31 - 128;
          if ((v33 & 0x80000000) == 0)
          {
            v32 = (v7 + 2);
LABEL_56:
            v50 = v32;
            *(a1 + 90) = v31 != 0;
            goto LABEL_78;
          }

          v44 = google::protobuf::internal::VarintParseSlow64(v7, v31);
          v50 = v44;
          *(a1 + 90) = v45 != 0;
          if (!v44)
          {
            goto LABEL_87;
          }
        }

        else
        {
          if (v10 != 7 || v8 != 57)
          {
            goto LABEL_70;
          }

          v5 |= 2u;
          *(a1 + 80) = *v7;
          v50 = (v7 + 8);
        }

        goto LABEL_78;
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          v24 = v7 - 1;
          while (1)
          {
            v50 = (v24 + 1);
            v25 = *(a1 + 64);
            if (!v25)
            {
              goto LABEL_46;
            }

            v26 = *(a1 + 56);
            v27 = *v25;
            if (v26 >= *v25)
            {
              break;
            }

            *(a1 + 56) = v26 + 1;
LABEL_48:
            v24 = google::protobuf::internal::InlineGreedyStringParser();
            v50 = v24;
            if (!v24)
            {
              goto LABEL_87;
            }

            if (*a3 <= v24 || *v24 != 34)
            {
              goto LABEL_78;
            }
          }

          if (v27 == *(a1 + 60))
          {
LABEL_46:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v25 = *(a1 + 64);
            v27 = *v25;
          }

          *v25 = v27 + 1;
          v28 = sub_2760FB4C0(*(a1 + 48));
          v29 = *(a1 + 56);
          v30 = *(a1 + 64) + 8 * v29;
          *(a1 + 56) = v29 + 1;
          *(v30 + 8) = v28;
          goto LABEL_48;
        }

LABEL_70:
        if (v8)
        {
          v43 = (v8 & 7) == 4;
        }

        else
        {
          v43 = 1;
        }

        if (v43)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2760FB5A0((a1 + 8));
        }

        v23 = google::protobuf::internal::UnknownFieldParse();
LABEL_77:
        v50 = v23;
        if (!v23)
        {
          goto LABEL_87;
        }

        goto LABEL_78;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_70;
      }

      v5 |= 8u;
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
        v50 = v12;
        *(a1 + 89) = v11 != 0;
        goto LABEL_78;
      }

      v46 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v50 = v46;
      *(a1 + 89) = v47 != 0;
      if (!v46)
      {
        goto LABEL_87;
      }

LABEL_78:
      if (sub_2760FB2F0(a3, &v50))
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

unsigned __int8 *TSA::InducedVerifyObjectsWithServerCommandArchive::_InternalSerialize(TSA::InducedVerifyObjectsWithServerCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 9);
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

    v4 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 8);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(*(this + 5) + 8 * i + 8);
      *v4 = 18;
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

      v4 = TSP::UUID::_InternalSerialize(v15, v17, a3);
    }
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v21 = *(this + 88);
    *v4 = 24;
    v4[1] = v21;
    v4 += 2;
  }

  v22 = *(this + 14);
  if (v22 >= 1)
  {
    v23 = 8;
    do
    {
      v4 = sub_2760E366C(a3, 4, *(*(this + 8) + v23), v4);
      v23 += 8;
      --v22;
    }

    while (v22);
  }

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v24 = *(this + 89);
    *v4 = 40;
    v4[1] = v24;
    v4 += 2;
    if ((v6 & 0x10) == 0)
    {
LABEL_33:
      if ((v6 & 2) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }
  }

  else if ((v6 & 0x10) == 0)
  {
    goto LABEL_33;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 90);
  *v4 = 48;
  v4[1] = v25;
  v4 += 2;
  if ((v6 & 2) != 0)
  {
LABEL_41:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v26 = *(this + 10);
    *v4 = 57;
    *(v4 + 1) = v26;
    v4 += 9;
  }

LABEL_44:
  v27 = *(this + 1);
  if ((v27 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v27 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_2760E366C(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB40]();
}

uint64_t TSA::InducedVerifyObjectsWithServerCommandArchive::RequiredFieldsByteSizeFallback(TSA::InducedVerifyObjectsWithServerCommandArchive *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(this + 9));
    v2 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v1 = *(this + 4);
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  return v2 + ((v1 >> 3) & 2);
}

uint64_t TSA::InducedVerifyObjectsWithServerCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 0x13) != 0)
  {
    v3 = TSA::InducedVerifyObjectsWithServerCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[9]);
    v3 = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 12;
  }

  v4 = *(this + 8);
  v5 = v3 + v4;
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
      v10 = TSP::UUID::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(this + 14);
  v12 = v5 + v11;
  if (v11 >= 1)
  {
    v13 = (this[8] + 8);
    do
    {
      v14 = *v13++;
      v15 = *(v14 + 23);
      v16 = *(v14 + 8);
      if ((v15 & 0x80u) == 0)
      {
        v16 = v15;
      }

      v12 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6);
      --v11;
    }

    while (v11);
  }

  if ((this[2] & 0xC) != 0)
  {
    v17 = v12 + ((*(this + 4) >> 1) & 2) + ((*(this + 4) >> 2) & 2);
  }

  else
  {
    v17 = v12;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v17, this + 20);
  }

  else
  {
    *(this + 5) = v17;
    return v17;
  }
}

uint64_t TSA::InducedVerifyObjectsWithServerCommandArchive::MergeFrom(uint64_t a1, void *lpsrc)
{
  if (v4)
  {

    return TSA::InducedVerifyObjectsWithServerCommandArchive::MergeFrom(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t TSA::InducedVerifyObjectsWithServerCommandArchive::MergeFrom(uint64_t this, const TSA::InducedVerifyObjectsWithServerCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2760FB7E8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2760FBC3C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_2760FBCEC((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 4);
  if ((v15 & 0x1F) != 0)
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

        v16 = MEMORY[0x277C950D0](v17);
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
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_27;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 80) = *(a2 + 10);
    if ((v15 & 4) == 0)
    {
LABEL_13:
      if ((v15 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(v3 + 88) = *(a2 + 88);
    if ((v15 & 8) == 0)
    {
LABEL_14:
      if ((v15 & 0x10) == 0)
      {
LABEL_16:
        *(v3 + 16) |= v15;
        return this;
      }

LABEL_15:
      *(v3 + 90) = *(a2 + 90);
      goto LABEL_16;
    }

LABEL_28:
    *(v3 + 89) = *(a2 + 89);
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return this;
}