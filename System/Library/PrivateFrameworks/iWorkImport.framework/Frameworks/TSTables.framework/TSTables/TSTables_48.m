uint64_t *TST::PrefixOperatorNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PrefixOperatorNodeArchive::Clear(this);

    return TST::PrefixOperatorNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::PrefixOperatorNodeArchive::CopyFrom(uint64_t *this, const TST::PrefixOperatorNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::PrefixOperatorNodeArchive::Clear(this);

    return TST::PrefixOperatorNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::PrefixOperatorNodeArchive::InternalSwap(TST::PrefixOperatorNodeArchive *this, TST::PrefixOperatorNodeArchive *a2)
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

TST::FunctionNodeArchive *TST::FunctionNodeArchive::FunctionNodeArchive(TST::FunctionNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6BA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FunctionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TST::FunctionNodeArchive *TST::FunctionNodeArchive::FunctionNodeArchive(TST::FunctionNodeArchive *this, const TST::FunctionNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B6BA8;
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

void TST::FunctionNodeArchive::~FunctionNodeArchive(TST::FunctionNodeArchive *this)
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

  if (this != &TST::_FunctionNodeArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FunctionNodeArchive::~FunctionNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::FunctionNodeArchive::default_instance(TST::FunctionNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_FunctionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_FunctionNodeArchive_default_instance_;
}

uint64_t *TST::FunctionNodeArchive::Clear(uint64_t *this)
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
      this = TST::ExpressionNodeArchive::Clear(this[4]);
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

google::protobuf::internal *TST::FunctionNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v23) & 1) == 0)
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
        goto LABEL_40;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v13 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_32:
        v23 = v13;
        if (!v13)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      if (v10 != 2)
      {
        if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 2u;
          v17 = *(a1 + 32);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v18);
            *(a1 + 32) = v17;
            v7 = v23;
          }

          v13 = sub_2217072AC(a3, v17, v7);
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

        goto LABEL_32;
      }

      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v14 = (v7 + 1);
      LODWORD(v15) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v14;
      v15 = (v15 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_24:
        v23 = v14;
        *(a1 + 40) = v15;
        goto LABEL_33;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v23 = v21;
      *(a1 + 40) = v22;
      if (!v21)
      {
LABEL_40:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_33:
      if (sub_221567030(a3, &v23))
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

unsigned __int8 *TST::FunctionNodeArchive::_InternalSerialize(TST::FunctionNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TST::ExpressionNodeArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
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

  v15 = *(this + 10);
  *v4 = 16;
  if (v15 <= 0x7F)
  {
    v4[1] = v15;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    v4 = sub_22150C00C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_5;
  }

  v4[1] = v15 | 0x80;
  v16 = v15 >> 7;
  if (v15 >> 14)
  {
    v4 += 3;
    do
    {
      *(v4 - 1) = v16 | 0x80;
      v17 = v16 >> 7;
      ++v4;
      v18 = v16 >> 14;
      v16 >>= 7;
    }

    while (v18);
    *(v4 - 1) = v17;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[2] = v16;
    v4 += 3;
    if (v6)
    {
      goto LABEL_4;
    }
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FunctionNodeArchive::RequiredFieldsByteSizeFallback(TST::FunctionNodeArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 4));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::FunctionNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    v3 = TST::FunctionNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::ExpressionNodeArchive::ByteSizeLong(this[4]);
    v3 = v2 + ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[2])
  {
    v4 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::FunctionNodeArchive::MergeFrom(TST::FunctionNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FunctionNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FunctionNodeArchive::MergeFrom(uint64_t this, const TST::FunctionNodeArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = &TST::_ExpressionNodeArchive_default_instance_;
    }

    this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TST::FunctionNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FunctionNodeArchive::Clear(this);

    return TST::FunctionNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FunctionNodeArchive::CopyFrom(uint64_t *this, const TST::FunctionNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FunctionNodeArchive::Clear(this);

    return TST::FunctionNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::FunctionNodeArchive::IsInitialized(TST::FunctionNodeArchive *this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    return 0;
  }

  v1 = *(this + 4);
  v2 = *(v1 + 32);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

uint64_t *TST::FunctionNodeArchive::InternalSwap(TST::FunctionNodeArchive *this, TST::FunctionNodeArchive *a2)
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

TST::FunctionEndNodeArchive *TST::FunctionEndNodeArchive::FunctionEndNodeArchive(TST::FunctionEndNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6C58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FunctionEndNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B6C58;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FunctionEndNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::FunctionEndNodeArchive *TST::FunctionEndNodeArchive::FunctionEndNodeArchive(TST::FunctionEndNodeArchive *this, const TST::FunctionEndNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6C58;
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
  return this;
}

void TST::FunctionEndNodeArchive::~FunctionEndNodeArchive(TST::FunctionEndNodeArchive *this)
{
  if (this != TST::_FunctionEndNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FunctionEndNodeArchive::~FunctionEndNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::FunctionEndNodeArchive::default_instance(TST::FunctionEndNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_FunctionEndNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_FunctionEndNodeArchive_default_instance_;
}

uint64_t *TST::FunctionEndNodeArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TST::ExpressionNodeArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::FunctionEndNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_221567030(a3, &v15) & 1) == 0)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2217072AC(a3, v10, v5);
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
        sub_221567188((a1 + 8));
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

unsigned __int8 *TST::FunctionEndNodeArchive::_InternalSerialize(TST::FunctionEndNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::ExpressionNodeArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::FunctionEndNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if (this[2])
  {
    v3 = TST::ExpressionNodeArchive::ByteSizeLong(this[3]);
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

uint64_t TST::FunctionEndNodeArchive::MergeFrom(TST::FunctionEndNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::FunctionEndNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::FunctionEndNodeArchive::MergeFrom(uint64_t this, const TST::FunctionEndNodeArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_ExpressionNodeArchive_default_instance_;
    }

    return TST::ExpressionNodeArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TST::FunctionEndNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FunctionEndNodeArchive::Clear(this);

    return TST::FunctionEndNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::FunctionEndNodeArchive::CopyFrom(uint64_t *this, const TST::FunctionEndNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::FunctionEndNodeArchive::Clear(this);

    return TST::FunctionEndNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::FunctionEndNodeArchive::IsInitialized(TST::FunctionEndNodeArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

uint64_t *TST::FunctionEndNodeArchive::InternalSwap(TST::FunctionEndNodeArchive *this, TST::FunctionEndNodeArchive *a2)
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

TST::DateNodeArchive *TST::DateNodeArchive::DateNodeArchive(TST::DateNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6D08;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DateNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  return this;
}

TST::DateNodeArchive *TST::DateNodeArchive::DateNodeArchive(TST::DateNodeArchive *this, const TST::DateNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B6D08;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_22156734C(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  return this;
}

void TST::DateNodeArchive::~DateNodeArchive(TST::DateNodeArchive *this)
{
  v2 = *(this + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x223DA1450](v4, 0x1012C40EC159624);
  }

  if (this != &TST::_DateNodeArchive_default_instance_)
  {
    v5 = *(this + 5);
    if (v5)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v5);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::DateNodeArchive::~DateNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::DateNodeArchive::default_instance(TST::DateNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_DateNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_DateNodeArchive_default_instance_;
}

uint64_t *TST::DateNodeArchive::Clear(uint64_t *this)
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
  if ((*(v5 + 23) & 0x80000000) == 0)
  {
    *v5 = 0;
    *(v5 + 23) = 0;
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

  **v5 = 0;
  *(v5 + 8) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
  if ((*(v6 + 23) & 0x80000000) == 0)
  {
    *v6 = 0;
    *(v6 + 23) = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    this = TST::ExpressionNodeArchive::Clear(this[5]);
    goto LABEL_6;
  }

  **v6 = 0;
  *(v6 + 8) = 0;
  if ((v2 & 4) != 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::DateNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_221567030(a3, &v17) & 1) == 0)
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
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      goto LABEL_24;
    }

    if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 1u;
LABEL_24:
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_30;
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
        return v17;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_30;
    }

    *(a1 + 16) |= 4u;
    v12 = *(a1 + 40);
    if (!v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v13);
      *(a1 + 40) = v12;
      v5 = v17;
    }

    v11 = sub_2217072AC(a3, v12, v5);
LABEL_30:
    v17 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v17;
}

unsigned __int8 *TST::DateNodeArchive::_InternalSerialize(TST::DateNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TST::ExpressionNodeArchive::_InternalSerialize(v9, v11, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_4:
    v4 = sub_22150C00C(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::DateNodeArchive::RequiredFieldsByteSizeFallback(TST::DateNodeArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 4) == 0)
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
  if ((v1 & 4) != 0)
  {
LABEL_7:
    v6 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 5));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TST::DateNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    v7 = TST::DateNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }

    v6 = TST::ExpressionNodeArchive::ByteSizeLong(this[5]);
    v7 = v5 + v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((this[2] & 2) != 0)
  {
    v8 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    v9 = *(v8 + 23);
    v10 = *(v8 + 8);
    if ((v9 & 0x80u) == 0)
    {
      v10 = v9;
    }

    v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v7, this + 20);
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TST::DateNodeArchive::MergeFrom(TST::DateNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::DateNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::DateNodeArchive::MergeFrom(uint64_t this, const TST::DateNodeArchive *a2)
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

          v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
          *(v3 + 40) = v6;
        }

        if (*(a2 + 5))
        {
          v8 = *(a2 + 5);
        }

        else
        {
          v8 = &TST::_ExpressionNodeArchive_default_instance_;
        }

        return TST::ExpressionNodeArchive::MergeFrom(v6, v8);
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
      return this;
    }

    goto LABEL_10;
  }

  return this;
}

uint64_t *TST::DateNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DateNodeArchive::Clear(this);

    return TST::DateNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::DateNodeArchive::CopyFrom(uint64_t *this, const TST::DateNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DateNodeArchive::Clear(this);

    return TST::DateNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::DateNodeArchive::IsInitialized(TST::DateNodeArchive *this)
{
  if ((~*(this + 4) & 5) != 0)
  {
    return 0;
  }

  v1 = *(this + 5);
  v2 = *(v1 + 32);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

uint64_t *TST::DateNodeArchive::InternalSwap(TST::DateNodeArchive *this, TST::DateNodeArchive *a2)
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
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

uint64_t *TST::ReferenceNodeArchive::clear_rangereference(TST::ReferenceNodeArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSCE::RangeReferenceArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TST::ReferenceNodeArchive::clear_host_cell_ref(TST::ReferenceNodeArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSCE::CellReferenceArchive::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSP::UUID *TST::ReferenceNodeArchive::clear_table_uid(TST::ReferenceNodeArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::UUIDCoordArchive *TST::ReferenceNodeArchive::clear_range_top_left(TST::ReferenceNodeArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::UUIDCoordArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::UUIDCoordArchive *TST::ReferenceNodeArchive::clear_range_bottom_right(TST::ReferenceNodeArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::UUIDCoordArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

uint64_t *TST::ReferenceNodeArchive::clear_category_ref(TST::ReferenceNodeArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSCE::CategoryReferenceArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::UUIDRectArchive *TST::ReferenceNodeArchive::clear_uid_range_rect(TST::ReferenceNodeArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::UUIDRectArchive::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TST::ReferenceNodeArchive *TST::ReferenceNodeArchive::ReferenceNodeArchive(TST::ReferenceNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6DB8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReferenceNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 93) = 0;
  return this;
}

TST::ReferenceNodeArchive *TST::ReferenceNodeArchive::ReferenceNodeArchive(TST::ReferenceNodeArchive *this, const TST::ReferenceNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B6DB8;
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
  v6 = *(a2 + 24);
  *(this + 100) = *(a2 + 100);
  *(this + 24) = v6;
  return this;
}

void TST::ReferenceNodeArchive::~ReferenceNodeArchive(TST::ReferenceNodeArchive *this)
{
  sub_2216445A0(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::ReferenceNodeArchive::~ReferenceNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

TSCE::CellReferenceArchive *sub_2216445A0(TSCE::CellReferenceArchive *result)
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

  if (v1 != &TST::_ReferenceNodeArchive_default_instance_)
  {
    v3 = *(v1 + 4);
    if (v3)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = *(v1 + 5);
    if (v4)
    {
      TSCE::RangeReferenceArchive::~RangeReferenceArchive(v4);
      MEMORY[0x223DA1450]();
    }

    v5 = *(v1 + 6);
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 7))
    {
      v6 = MEMORY[0x223D9FCC0]();
      MEMORY[0x223DA1450](v6, 0x10A1C40DFBAE579);
    }

    if (*(v1 + 8))
    {
      v7 = MEMORY[0x223D9FCC0]();
      MEMORY[0x223DA1450](v7, 0x10A1C40DFBAE579);
    }

    v8 = *(v1 + 9);
    if (v8)
    {
      TSCE::CategoryReferenceArchive::~CategoryReferenceArchive(v8);
      MEMORY[0x223DA1450]();
    }

    if (*(v1 + 10))
    {
      v9 = MEMORY[0x223D9FC70]();
      MEMORY[0x223DA1450](v9, 0x10A1C40759568C3);
    }

    result = *(v1 + 11);
    if (result)
    {
      TSCE::CellReferenceArchive::~CellReferenceArchive(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void *TST::ReferenceNodeArchive::default_instance(TST::ReferenceNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_ReferenceNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ReferenceNodeArchive_default_instance_;
}

uint64_t *TST::ReferenceNodeArchive::Clear(uint64_t *this)
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
  this = TST::ExpressionNodeArchive::Clear(this[4]);
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
  this = TSCE::RangeReferenceArchive::Clear(*(v1 + 40));
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
  this = TSP::UUID::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_27:
    this = TSP::UUIDCoordArchive::Clear(*(v1 + 64));
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
  this = TSP::UUIDCoordArchive::Clear(*(v1 + 56));
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
  this = TSCE::CategoryReferenceArchive::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::UUIDRectArchive::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    this = TSCE::CellReferenceArchive::Clear(*(v1 + 88));
  }

  if ((v2 & 0x600) != 0)
  {
    *(v1 + 100) = 0;
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

google::protobuf::internal *TST::ReferenceNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_101;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 == 1)
          {
            if (v8 != 10)
            {
              goto LABEL_86;
            }

            *(a1 + 16) |= 2u;
            v25 = *(a1 + 32);
            if (!v25)
            {
              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v26);
              *(a1 + 32) = v25;
              v7 = v45;
            }

            v13 = sub_2217072AC(a3, v25, v7);
          }

          else
          {
            if (v10 != 2 || v8 != 18)
            {
              goto LABEL_86;
            }

            *(a1 + 16) |= 4u;
            v21 = *(a1 + 40);
            if (!v21)
            {
              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeReferenceArchive>(v22);
              *(a1 + 40) = v21;
              v7 = v45;
            }

            v13 = sub_2216F8F0C(a3, v21, v7);
          }

          goto LABEL_93;
        }

        if (v10 != 3)
        {
          if (v10 == 4)
          {
            if (v8 == 34)
            {
              *(a1 + 16) |= 1u;
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v13 = google::protobuf::internal::InlineGreedyStringParser();
              goto LABEL_93;
            }

            goto LABEL_86;
          }

          if (v10 != 5 || v8 != 42)
          {
            goto LABEL_86;
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

            v16 = MEMORY[0x223DA0360](v15);
            LODWORD(v14) = v16;
            *(a1 + 48) = v16;
            v7 = v45;
          }

          v13 = sub_2216F813C(a3, v14, v7);
          goto LABEL_93;
        }

        if (v8 != 24)
        {
          goto LABEL_86;
        }

        v5 |= 0x200u;
        v32 = (v7 + 1);
        LODWORD(v33) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        v34 = *v32;
        v33 = (v33 + (v34 << 7) - 128);
        if ((v34 & 0x80000000) == 0)
        {
          v32 = (v7 + 2);
LABEL_72:
          v45 = v32;
          *(a1 + 96) = v33;
          goto LABEL_94;
        }

        v41 = google::protobuf::internal::VarintParseSlow32(v7, v33);
        v45 = v41;
        *(a1 + 96) = v42;
        if (!v41)
        {
          goto LABEL_101;
        }
      }

      else
      {
        if (v8 >> 3 <= 8)
        {
          if (v10 == 6)
          {
            if (v8 != 50)
            {
              goto LABEL_86;
            }

            *(a1 + 16) |= 0x10u;
            v27 = *(a1 + 56);
            if (!v27)
            {
              v35 = *(a1 + 8);
              if (v35)
              {
                v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
              }

              v36 = MEMORY[0x223DA0330](v35);
              LODWORD(v27) = v36;
              *(a1 + 56) = v36;
LABEL_78:
              v7 = v45;
            }
          }

          else
          {
            if (v10 != 7)
            {
              if (v10 == 8 && v8 == 66)
              {
                *(a1 + 16) |= 0x40u;
                v11 = *(a1 + 72);
                if (!v11)
                {
                  v12 = *(a1 + 8);
                  if (v12)
                  {
                    v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
                  }

                  v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v12);
                  *(a1 + 72) = v11;
                  v7 = v45;
                }

                v13 = sub_2216FC4AC(a3, v11, v7);
                goto LABEL_93;
              }

              goto LABEL_86;
            }

            if (v8 != 58)
            {
              goto LABEL_86;
            }

            *(a1 + 16) |= 0x20u;
            v27 = *(a1 + 64);
            if (!v27)
            {
              v28 = *(a1 + 8);
              if (v28)
              {
                v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
              }

              v29 = MEMORY[0x223DA0330](v28);
              LODWORD(v27) = v29;
              *(a1 + 64) = v29;
              goto LABEL_78;
            }
          }

          v13 = sub_221705F68(a3, v27, v7);
          goto LABEL_93;
        }

        if (v10 == 9)
        {
          if (v8 != 74)
          {
            goto LABEL_86;
          }

          *(a1 + 16) |= 0x80u;
          v37 = *(a1 + 80);
          if (!v37)
          {
            v38 = *(a1 + 8);
            if (v38)
            {
              v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
            }

            v39 = MEMORY[0x223DA0320](v38);
            LODWORD(v37) = v39;
            *(a1 + 80) = v39;
            v7 = v45;
          }

          v13 = sub_221702D58(a3, v37, v7);
          goto LABEL_93;
        }

        if (v10 == 10)
        {
          if (v8 == 82)
          {
            *(a1 + 16) |= 0x100u;
            v30 = *(a1 + 88);
            if (!v30)
            {
              v31 = *(a1 + 8);
              if (v31)
              {
                v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
              }

              v30 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v31);
              *(a1 + 88) = v30;
              v7 = v45;
            }

            v13 = sub_2216F8E3C(a3, v30, v7);
            goto LABEL_93;
          }

LABEL_86:
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

          v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_93:
          v45 = v13;
          if (!v13)
          {
            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v10 != 11 || v8 != 88)
        {
          goto LABEL_86;
        }

        v5 |= 0x400u;
        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_35:
          v45 = v18;
          *(a1 + 100) = v17 != 0;
          goto LABEL_94;
        }

        v43 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v45 = v43;
        *(a1 + 100) = v44 != 0;
        if (!v43)
        {
LABEL_101:
          v45 = 0;
          goto LABEL_2;
        }
      }

LABEL_94:
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

unsigned __int8 *TST::ReferenceNodeArchive::_InternalSerialize(TST::ReferenceNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TST::ExpressionNodeArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 0x200) == 0)
      {
        goto LABEL_4;
      }

LABEL_33:
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v19 = *(this + 24);
      *v4 = 24;
      if (v19 > 0x7F)
      {
        v4[1] = v19 | 0x80;
        v20 = v19 >> 7;
        if (v19 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v20 | 0x80;
            v21 = v20 >> 7;
            ++v4;
            v22 = v20 >> 14;
            v20 >>= 7;
          }

          while (v22);
          *(v4 - 1) = v21;
          if (v6)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v4[2] = v20;
          v4 += 3;
          if (v6)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        v4[1] = v19;
        v4 += 2;
        if (v6)
        {
          goto LABEL_44;
        }
      }

LABEL_5:
      if ((v6 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_45;
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

  v13 = *(this + 5);
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

  v4 = TSCE::RangeReferenceArchive::_InternalSerialize(v13, v15, a3);
  if ((v6 & 0x200) != 0)
  {
    goto LABEL_33;
  }

LABEL_4:
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_44:
  v4 = sub_22150C00C(a3, 4, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v23 = *(this + 6);
  *v4 = 42;
  v24 = *(v23 + 5);
  if (v24 > 0x7F)
  {
    v4[1] = v24 | 0x80;
    v26 = v24 >> 7;
    if (v24 >> 14)
    {
      v25 = v4 + 3;
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
      v4[2] = v26;
      v25 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v24;
    v25 = v4 + 2;
  }

  v4 = TSP::UUID::_InternalSerialize(v23, v25, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_65;
  }

LABEL_55:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 7);
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

  v4 = TSP::UUIDCoordArchive::_InternalSerialize(v29, v31, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_75;
  }

LABEL_65:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v35 = *(this + 8);
  *v4 = 58;
  v36 = *(v35 + 5);
  if (v36 > 0x7F)
  {
    v4[1] = v36 | 0x80;
    v38 = v36 >> 7;
    if (v36 >> 14)
    {
      v37 = v4 + 3;
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
      v4[2] = v38;
      v37 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v36;
    v37 = v4 + 2;
  }

  v4 = TSP::UUIDCoordArchive::_InternalSerialize(v35, v37, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_85;
  }

LABEL_75:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v41 = *(this + 9);
  *v4 = 66;
  v42 = *(v41 + 5);
  if (v42 > 0x7F)
  {
    v4[1] = v42 | 0x80;
    v44 = v42 >> 7;
    if (v42 >> 14)
    {
      v43 = v4 + 3;
      do
      {
        *(v43 - 1) = v44 | 0x80;
        v45 = v44 >> 7;
        ++v43;
        v46 = v44 >> 14;
        v44 >>= 7;
      }

      while (v46);
      *(v43 - 1) = v45;
    }

    else
    {
      v4[2] = v44;
      v43 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v42;
    v43 = v4 + 2;
  }

  v4 = TSCE::CategoryReferenceArchive::_InternalSerialize(v41, v43, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_10:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_95;
  }

LABEL_85:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v47 = *(this + 10);
  *v4 = 74;
  v48 = *(v47 + 16);
  if (v48 > 0x7F)
  {
    v4[1] = v48 | 0x80;
    v50 = v48 >> 7;
    if (v48 >> 14)
    {
      v49 = v4 + 3;
      do
      {
        *(v49 - 1) = v50 | 0x80;
        v51 = v50 >> 7;
        ++v49;
        v52 = v50 >> 14;
        v50 >>= 7;
      }

      while (v52);
      *(v49 - 1) = v51;
    }

    else
    {
      v4[2] = v50;
      v49 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v48;
    v49 = v4 + 2;
  }

  v4 = TSP::UUIDRectArchive::_InternalSerialize(v47, v49, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_105;
  }

LABEL_95:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v53 = *(this + 11);
  *v4 = 82;
  v54 = *(v53 + 5);
  if (v54 > 0x7F)
  {
    v4[1] = v54 | 0x80;
    v56 = v54 >> 7;
    if (v54 >> 14)
    {
      v55 = v4 + 3;
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
      v4[2] = v56;
      v55 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v54;
    v55 = v4 + 2;
  }

  v4 = TSCE::CellReferenceArchive::_InternalSerialize(v53, v55, a3);
  if ((v6 & 0x400) != 0)
  {
LABEL_105:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v59 = *(this + 100);
    *v4 = 88;
    v4[1] = v59;
    v4 += 2;
  }

LABEL_108:
  v60 = *(this + 1);
  if ((v60 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v60 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ReferenceNodeArchive::RequiredFieldsByteSizeFallback(TST::ReferenceNodeArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 4));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 0x200) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 24) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

unint64_t TST::ReferenceNodeArchive::ByteSizeLong(TST::ReferenceNodeArchive *this)
{
  if ((~*(this + 4) & 0x202) != 0)
  {
    v3 = TST::ReferenceNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 4));
    v3 = v2 + ((9 * (__clz(*(this + 24) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v6 = *(v5 + 23);
    v7 = *(v5 + 8);
    if ((v6 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v4 & 0xFC) == 0)
  {
    goto LABEL_16;
  }

  if ((v4 & 4) != 0)
  {
    v12 = TSCE::RangeReferenceArchive::ByteSizeLong(*(this + 5));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 8) == 0)
    {
LABEL_11:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 8) == 0)
  {
    goto LABEL_11;
  }

  v13 = TSP::UUID::ByteSizeLong(*(this + 6));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v15 = TSP::UUIDCoordArchive::ByteSizeLong(*(this + 8));
    v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v4 & 0x40) == 0)
    {
LABEL_14:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_22:
  v14 = TSP::UUIDCoordArchive::ByteSizeLong(*(this + 7));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_14;
  }

LABEL_24:
  v16 = TSCE::CategoryReferenceArchive::ByteSizeLong(*(this + 9));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v4 & 0x80) != 0)
  {
LABEL_15:
    v8 = TSP::UUIDRectArchive::ByteSizeLong(*(this + 10));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
  if ((v4 & 0x100) != 0)
  {
    v9 = TSCE::CellReferenceArchive::ByteSizeLong(*(this + 11));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v10 = v3 + ((v4 >> 9) & 2);
  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v3 + ((v4 >> 9) & 2);
  }
}

uint64_t TST::ReferenceNodeArchive::MergeFrom(TST::ReferenceNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ReferenceNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ReferenceNodeArchive::MergeFrom(uint64_t this, const TST::ReferenceNodeArchive *a2)
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
    goto LABEL_71;
  }

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

      goto LABEL_18;
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

    v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
    *(v3 + 32) = v6;
  }

  if (*(a2 + 4))
  {
    v8 = *(a2 + 4);
  }

  else
  {
    v8 = &TST::_ExpressionNodeArchive_default_instance_;
  }

  this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_26;
  }

LABEL_18:
  *(v3 + 16) |= 4u;
  v9 = *(v3 + 40);
  if (!v9)
  {
    v10 = *(v3 + 8);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RangeReferenceArchive>(v10);
    *(v3 + 40) = v9;
  }

  if (*(a2 + 5))
  {
    v11 = *(a2 + 5);
  }

  else
  {
    v11 = TSCE::_RangeReferenceArchive_default_instance_;
  }

  this = TSCE::RangeReferenceArchive::MergeFrom(v9, v11);
  if ((v5 & 8) != 0)
  {
LABEL_26:
    *(v3 + 16) |= 8u;
    v12 = *(v3 + 48);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x223DA0360](v13);
      *(v3 + 48) = v12;
    }

    if (*(a2 + 6))
    {
      v14 = *(a2 + 6);
    }

    else
    {
      v14 = MEMORY[0x277D809E0];
    }

    this = TSP::UUID::MergeFrom(v12, v14);
  }

LABEL_34:
  v15 = MEMORY[0x277D80A50];
  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_36;
    }

LABEL_47:
    *(v3 + 16) |= 0x20u;
    v19 = *(v3 + 64);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x223DA0330](v20);
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

    this = TSP::UUIDCoordArchive::MergeFrom(v19, v21);
    if ((v5 & 0x40) == 0)
    {
LABEL_37:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    }

    goto LABEL_55;
  }

  *(v3 + 16) |= 0x10u;
  v16 = *(v3 + 56);
  if (!v16)
  {
    v17 = *(v3 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    v16 = MEMORY[0x223DA0330](v17);
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

  this = TSP::UUIDCoordArchive::MergeFrom(v16, v18);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_47;
  }

LABEL_36:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_55:
  *(v3 + 16) |= 0x40u;
  v22 = *(v3 + 72);
  if (!v22)
  {
    v23 = *(v3 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v23);
    *(v3 + 72) = v22;
  }

  if (*(a2 + 9))
  {
    v24 = *(a2 + 9);
  }

  else
  {
    v24 = TSCE::_CategoryReferenceArchive_default_instance_;
  }

  this = TSCE::CategoryReferenceArchive::MergeFrom(v22, v24);
  if ((v5 & 0x80) != 0)
  {
LABEL_63:
    *(v3 + 16) |= 0x80u;
    v25 = *(v3 + 80);
    if (!v25)
    {
      v26 = *(v3 + 8);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x223DA0320](v26);
      *(v3 + 80) = v25;
    }

    if (*(a2 + 10))
    {
      v27 = *(a2 + 10);
    }

    else
    {
      v27 = MEMORY[0x277D80A40];
    }

    this = TSP::UUIDRectArchive::MergeFrom(v25, v27);
  }

LABEL_71:
  if ((v5 & 0x700) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_74;
    }

LABEL_86:
    *(v3 + 96) = *(a2 + 24);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
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

    v28 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v29);
    *(v3 + 88) = v28;
  }

  if (*(a2 + 11))
  {
    v30 = *(a2 + 11);
  }

  else
  {
    v30 = TSCE::_CellReferenceArchive_default_instance_;
  }

  this = TSCE::CellReferenceArchive::MergeFrom(v28, v30);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_86;
  }

LABEL_74:
  if ((v5 & 0x400) != 0)
  {
LABEL_75:
    *(v3 + 100) = *(a2 + 100);
  }

LABEL_76:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TST::ReferenceNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ReferenceNodeArchive::Clear(this);

    return TST::ReferenceNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ReferenceNodeArchive::CopyFrom(uint64_t *this, const TST::ReferenceNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ReferenceNodeArchive::Clear(this);

    return TST::ReferenceNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::ReferenceNodeArchive::IsInitialized(TST::ReferenceNodeArchive *this)
{
  if ((~*(this + 4) & 0x202) != 0)
  {
    return 0;
  }

  v2 = *(this + 4);
  v3 = *(v2 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(this + 4);
  if ((v7 & 4) != 0)
  {
    result = TSCE::RangeReferenceArchive::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v7 = *(this + 4);
  }

  if ((v7 & 8) != 0)
  {
    result = TSP::UUID::IsInitialized(*(this + 6));
    if (!result)
    {
      return result;
    }

    v7 = *(this + 4);
  }

  if ((v7 & 0x10) != 0)
  {
    result = TSP::UUIDCoordArchive::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v7 = *(this + 4);
  }

  if ((v7 & 0x20) != 0)
  {
    result = TSP::UUIDCoordArchive::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v7 = *(this + 4);
  }

  if ((v7 & 0x40) != 0)
  {
    result = TSCE::CategoryReferenceArchive::IsInitialized(*(this + 9));
    if (!result)
    {
      return result;
    }

    v7 = *(this + 4);
  }

  if ((v7 & 0x80) != 0)
  {
    result = TSP::UUIDRectArchive::IsInitialized(*(this + 10));
    if (!result)
    {
      return result;
    }

    v7 = *(this + 4);
  }

  if ((v7 & 0x100) == 0)
  {
    return 1;
  }

  result = TSCE::CellReferenceArchive::IsInitialized(*(this + 11));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TST::ReferenceNodeArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  LODWORD(v12) = this[6].n128_u32[0];
  this[6].n128_u32[0] = a2[6].n128_u32[0];
  a2[6].n128_u32[0] = v12;
  LOBYTE(v12) = this[6].n128_u8[4];
  this[6].n128_u8[4] = a2[6].n128_u8[4];
  a2[6].n128_u8[4] = v12;
  return result;
}

TST::DurationNodeArchive *TST::DurationNodeArchive::DurationNodeArchive(TST::DurationNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6E68;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DurationNodeArchive_TSTArchives_2eproto, memory_order_acquire))
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
  *this = &unk_2834B6E68;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DurationNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  return this;
}

TST::DurationNodeArchive *TST::DurationNodeArchive::DurationNodeArchive(TST::DurationNodeArchive *this, const TST::DurationNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6E68;
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
  v7 = *(a2 + 2);
  *(this + 12) = *(a2 + 12);
  *(this + 2) = v7;
  return this;
}

void TST::DurationNodeArchive::~DurationNodeArchive(TST::DurationNodeArchive *this)
{
  if (this != TST::_DurationNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::DurationNodeArchive::~DurationNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::DurationNodeArchive::default_instance(TST::DurationNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_DurationNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_DurationNodeArchive_default_instance_;
}

uint64_t *TST::DurationNodeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TST::ExpressionNodeArchive::Clear(this[3]);
  }

  if ((v2 & 0x1E) != 0)
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

    return sub_221567398(v3);
  }

  return this;
}

google::protobuf::internal *TST::DurationNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v33) & 1) == 0)
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
        goto LABEL_58;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_39;
          }

          *(a1 + 16) |= 1u;
          v21 = *(a1 + 24);
          if (!v21)
          {
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v22);
            *(a1 + 24) = v21;
            v7 = v33;
          }

          v23 = sub_2217072AC(a3, v21, v7);
        }

        else
        {
          if (v10 == 2 && v8 == 17)
          {
            v5 |= 2u;
            *(a1 + 32) = *v7;
            v33 = (v7 + 8);
            goto LABEL_47;
          }

LABEL_39:
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
            sub_221567188((a1 + 8));
          }

          v23 = google::protobuf::internal::UnknownFieldParse();
        }

        v33 = v23;
        if (!v23)
        {
          goto LABEL_58;
        }

        goto LABEL_47;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_39;
        }

        v5 |= 4u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_27:
          v33 = v15;
          *(a1 + 40) = v16;
          goto LABEL_47;
        }

        v27 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v33 = v27;
        *(a1 + 40) = v28;
        if (!v27)
        {
          goto LABEL_58;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_39;
        }

        v5 |= 8u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_32:
          v33 = v18;
          *(a1 + 44) = v19;
          goto LABEL_47;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v33 = v29;
        *(a1 + 44) = v30;
        if (!v29)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_39;
        }

        v5 |= 0x10u;
        v11 = (v7 + 1);
        LODWORD(v12) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v11;
        v12 = (v12 + (v13 << 7) - 128);
        if ((v13 & 0x80000000) == 0)
        {
          v11 = (v7 + 2);
LABEL_15:
          v33 = v11;
          *(a1 + 48) = v12;
          goto LABEL_47;
        }

        v31 = google::protobuf::internal::VarintParseSlow32(v7, v12);
        v33 = v31;
        *(a1 + 48) = v32;
        if (!v31)
        {
LABEL_58:
          v33 = 0;
          goto LABEL_2;
        }
      }

LABEL_47:
      if (sub_221567030(a3, &v33))
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

unsigned __int8 *TST::DurationNodeArchive::_InternalSerialize(TST::DurationNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
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

    a2 = TST::ExpressionNodeArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_28:
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v17 = *(this + 10);
      *a2 = 24;
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
          if ((v5 & 8) != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          a2[2] = v18;
          a2 += 3;
          if ((v5 & 8) != 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        a2[1] = v17;
        a2 += 2;
        if ((v5 & 8) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_6;
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

  v16 = *(this + 4);
  *a2 = 17;
  *(a2 + 1) = v16;
  a2 += 9;
  if ((v5 & 4) != 0)
  {
    goto LABEL_28;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 11);
  *a2 = 32;
  if (v21 > 0x7F)
  {
    a2[1] = v21 | 0x80;
    v22 = v21 >> 7;
    if (v21 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++a2;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(a2 - 1) = v23;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      a2[2] = v22;
      a2 += 3;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    a2[1] = v21;
    a2 += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_50;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 12);
  *a2 = 40;
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

LABEL_50:
  v25 = *(this + 1);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::DurationNodeArchive::RequiredFieldsByteSizeFallback(TST::DurationNodeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 2) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_9:
      if ((v2 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_9;
  }

  result += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
    return result;
  }

LABEL_10:
  result += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return result;
}

unint64_t TST::DurationNodeArchive::ByteSizeLong(TST::DurationNodeArchive *this)
{
  if ((~*(this + 4) & 0x1F) != 0)
  {
    v6 = TST::DurationNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 3));
    v3.i32[0] = v2 | 1;
    v3.i32[1] = *(this + 10) | 1;
    v3.i64[1] = *(this + 44) | 0x100000001;
    v4 = vclzq_s32(v3);
    v3.i64[0] = 0x1F0000001FLL;
    v3.i64[1] = 0x1F0000001FLL;
    v5.i64[0] = 0x4900000049;
    v5.i64[1] = 0x4900000049;
    v6 = vaddlvq_u32(vshrq_n_u32(vmlal_u16(v5, vmovn_s32(veorq_s8(v4, v3)), 0x9000900090009), 6uLL)) + v2 + 13;
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

uint64_t TST::DurationNodeArchive::MergeFrom(TST::DurationNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::DurationNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::DurationNodeArchive::MergeFrom(uint64_t this, const TST::DurationNodeArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TST::_ExpressionNodeArchive_default_instance_;
      }

      this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 4);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

LABEL_21:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_9:
      *(v3 + 48) = *(a2 + 12);
      goto LABEL_10;
    }

LABEL_22:
    *(v3 + 44) = *(a2 + 11);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TST::DurationNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DurationNodeArchive::Clear(this);

    return TST::DurationNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::DurationNodeArchive::CopyFrom(uint64_t *this, const TST::DurationNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::DurationNodeArchive::Clear(this);

    return TST::DurationNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::DurationNodeArchive::IsInitialized(TST::DurationNodeArchive *this)
{
  if ((~*(this + 4) & 0x1F) != 0)
  {
    return 0;
  }

  v1 = *(this + 3);
  v2 = *(v1 + 32);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

__n128 TST::DurationNodeArchive::InternalSwap(TST::DurationNodeArchive *this, TST::DurationNodeArchive *a2)
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
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  return result;
}

TST::ArgumentPlaceholderNodeArchive *TST::ArgumentPlaceholderNodeArchive::ArgumentPlaceholderNodeArchive(TST::ArgumentPlaceholderNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6F18;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ArgumentPlaceholderNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2834B6F18;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ArgumentPlaceholderNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TST::ArgumentPlaceholderNodeArchive *TST::ArgumentPlaceholderNodeArchive::ArgumentPlaceholderNodeArchive(TST::ArgumentPlaceholderNodeArchive *this, const TST::ArgumentPlaceholderNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6F18;
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
  v7 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v7;
  return this;
}

void TST::ArgumentPlaceholderNodeArchive::~ArgumentPlaceholderNodeArchive(TST::ArgumentPlaceholderNodeArchive *this)
{
  if (this != TST::_ArgumentPlaceholderNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::ArgumentPlaceholderNodeArchive::~ArgumentPlaceholderNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::ArgumentPlaceholderNodeArchive::default_instance(TST::ArgumentPlaceholderNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_ArgumentPlaceholderNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_ArgumentPlaceholderNodeArchive_default_instance_;
}

uint64_t *TST::ArgumentPlaceholderNodeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TST::ExpressionNodeArchive::Clear(this[3]);
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 32) = 0;
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

google::protobuf::internal *TST::ArgumentPlaceholderNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v33) & 1) == 0)
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
            goto LABEL_36;
          }

          v5 |= 4u;
          v21 = (v7 + 1);
          LODWORD(v22) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          v23 = *v21;
          v22 = (v22 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v21 = (v7 + 2);
LABEL_35:
            v33 = v21;
            *(a1 + 36) = v22;
            goto LABEL_44;
          }

          v31 = google::protobuf::internal::VarintParseSlow32(v7, v22);
          v33 = v31;
          *(a1 + 36) = v32;
          if (!v31)
          {
LABEL_55:
            v33 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 != 4 || v8 != 32)
          {
            goto LABEL_36;
          }

          v5 |= 8u;
          v15 = (v7 + 1);
          LODWORD(v16) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          v17 = *v15;
          v16 = (v16 + (v17 << 7) - 128);
          if ((v17 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_24:
            v33 = v15;
            *(a1 + 40) = v16;
            goto LABEL_44;
          }

          v27 = google::protobuf::internal::VarintParseSlow32(v7, v16);
          v33 = v27;
          *(a1 + 40) = v28;
          if (!v27)
          {
            goto LABEL_55;
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

              v18 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v19);
              *(a1 + 24) = v18;
              v7 = v33;
            }

            v20 = sub_2217072AC(a3, v18, v7);
          }

          else
          {
LABEL_36:
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
              sub_221567188((a1 + 8));
            }

            v20 = google::protobuf::internal::UnknownFieldParse();
          }

          v33 = v20;
          if (!v20)
          {
            goto LABEL_55;
          }

          goto LABEL_44;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_36;
        }

        v5 |= 2u;
        v12 = (v7 + 1);
        LODWORD(v13) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v7 + 2);
LABEL_17:
          v33 = v12;
          *(a1 + 32) = v13;
          goto LABEL_44;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v33 = v29;
        *(a1 + 32) = v30;
        if (!v29)
        {
          goto LABEL_55;
        }
      }

LABEL_44:
      if (sub_221567030(a3, &v33))
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

unsigned __int8 *TST::ArgumentPlaceholderNodeArchive::_InternalSerialize(TST::ArgumentPlaceholderNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_24:
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
          goto LABEL_35;
        }
      }

      else
      {
        a2[2] = v17;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      a2[1] = v16;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_35;
      }
    }

LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_5;
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

  a2 = TST::ExpressionNodeArchive::_InternalSerialize(v7, v9, a3);
  if ((v5 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_35:
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
      if ((v5 & 8) == 0)
      {
        goto LABEL_46;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 8) == 0)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 8) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 10);
  *a2 = 32;
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

LABEL_46:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::ArgumentPlaceholderNodeArchive::ByteSizeLong(TST::ArgumentPlaceholderNodeArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v3 += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) != 0)
    {
LABEL_8:
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_9:
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

uint64_t TST::ArgumentPlaceholderNodeArchive::MergeFrom(TST::ArgumentPlaceholderNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::ArgumentPlaceholderNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::ArgumentPlaceholderNodeArchive::MergeFrom(uint64_t this, const TST::ArgumentPlaceholderNodeArchive *a2)
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
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TST::_ExpressionNodeArchive_default_instance_;
      }

      this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
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
      *(v3 + 40) = *(a2 + 10);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TST::ArgumentPlaceholderNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ArgumentPlaceholderNodeArchive::Clear(this);

    return TST::ArgumentPlaceholderNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::ArgumentPlaceholderNodeArchive::CopyFrom(uint64_t *this, const TST::ArgumentPlaceholderNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::ArgumentPlaceholderNodeArchive::Clear(this);

    return TST::ArgumentPlaceholderNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::ArgumentPlaceholderNodeArchive::IsInitialized(TST::ArgumentPlaceholderNodeArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

__n128 TST::ArgumentPlaceholderNodeArchive::InternalSwap(TST::ArgumentPlaceholderNodeArchive *this, TST::ArgumentPlaceholderNodeArchive *a2)
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
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TST::EmptyExpressionNodeArchive *TST::EmptyExpressionNodeArchive::EmptyExpressionNodeArchive(TST::EmptyExpressionNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B6FC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_EmptyExpressionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B6FC8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_EmptyExpressionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TST::EmptyExpressionNodeArchive *TST::EmptyExpressionNodeArchive::EmptyExpressionNodeArchive(TST::EmptyExpressionNodeArchive *this, const TST::EmptyExpressionNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B6FC8;
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
  return this;
}

void TST::EmptyExpressionNodeArchive::~EmptyExpressionNodeArchive(TST::EmptyExpressionNodeArchive *this)
{
  if (this != TST::_EmptyExpressionNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::EmptyExpressionNodeArchive::~EmptyExpressionNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::EmptyExpressionNodeArchive::default_instance(TST::EmptyExpressionNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_EmptyExpressionNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_EmptyExpressionNodeArchive_default_instance_;
}

uint64_t *TST::EmptyExpressionNodeArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TST::ExpressionNodeArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::EmptyExpressionNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v15 = a2;
  while ((sub_221567030(a3, &v15) & 1) == 0)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_2217072AC(a3, v10, v5);
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
        sub_221567188((a1 + 8));
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

unsigned __int8 *TST::EmptyExpressionNodeArchive::_InternalSerialize(TST::EmptyExpressionNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::ExpressionNodeArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::EmptyExpressionNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if (this[2])
  {
    v3 = TST::ExpressionNodeArchive::ByteSizeLong(this[3]);
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

uint64_t TST::EmptyExpressionNodeArchive::MergeFrom(TST::EmptyExpressionNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::EmptyExpressionNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::EmptyExpressionNodeArchive::MergeFrom(uint64_t this, const TST::EmptyExpressionNodeArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_22156734C((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TST::_ExpressionNodeArchive_default_instance_;
    }

    return TST::ExpressionNodeArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TST::EmptyExpressionNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::EmptyExpressionNodeArchive::Clear(this);

    return TST::EmptyExpressionNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::EmptyExpressionNodeArchive::CopyFrom(uint64_t *this, const TST::EmptyExpressionNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::EmptyExpressionNodeArchive::Clear(this);

    return TST::EmptyExpressionNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::EmptyExpressionNodeArchive::IsInitialized(TST::EmptyExpressionNodeArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  v3 = *(v2 + 32);
  do
  {
    v1 = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v4 = v3 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v2 + 40) + 8 * v3));
    v3 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v1;
}

uint64_t *TST::EmptyExpressionNodeArchive::InternalSwap(TST::EmptyExpressionNodeArchive *this, TST::EmptyExpressionNodeArchive *a2)
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

TST::VariableNodeArchive *TST::VariableNodeArchive::VariableNodeArchive(TST::VariableNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7078;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_VariableNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TST::VariableNodeArchive *TST::VariableNodeArchive::VariableNodeArchive(TST::VariableNodeArchive *this, const TST::VariableNodeArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B7078;
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

void TST::VariableNodeArchive::~VariableNodeArchive(TST::VariableNodeArchive *this)
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

  if (this != &TST::_VariableNodeArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::VariableNodeArchive::~VariableNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::VariableNodeArchive::default_instance(TST::VariableNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_VariableNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_VariableNodeArchive_default_instance_;
}

uint64_t *TST::VariableNodeArchive::Clear(uint64_t *this)
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
      this = TST::ExpressionNodeArchive::Clear(this[4]);
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

google::protobuf::internal *TST::VariableNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v23) & 1) == 0)
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
        goto LABEL_40;
      }

      v7 = TagFallback;
      v8 = v20;
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

          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v13 = google::protobuf::internal::InlineGreedyStringParser();
        }

        else if (v10 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 2u;
          v17 = *(a1 + 32);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v18);
            *(a1 + 32) = v17;
            v7 = v23;
          }

          v13 = sub_2217072AC(a3, v17, v7);
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

        v23 = v13;
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
      v14 = (v7 + 1);
      LODWORD(v15) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      v16 = *v14;
      v15 = (v15 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_26:
        v23 = v14;
        *(a1 + 40) = v15;
        goto LABEL_33;
      }

      v21 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v23 = v21;
      *(a1 + 40) = v22;
      if (!v21)
      {
LABEL_40:
        v23 = 0;
        goto LABEL_2;
      }

LABEL_33:
      if (sub_221567030(a3, &v23))
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

unsigned __int8 *TST::VariableNodeArchive::_InternalSerialize(TST::VariableNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TST::ExpressionNodeArchive::_InternalSerialize(v7, v9, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
    goto LABEL_25;
  }

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

LABEL_25:
  v17 = *(this + 1);
  if ((v17 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v17 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::VariableNodeArchive::RequiredFieldsByteSizeFallback(TST::VariableNodeArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 4));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::VariableNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    v3 = TST::VariableNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::ExpressionNodeArchive::ByteSizeLong(this[4]);
    v3 = v2 + ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (this[2])
  {
    v4 = this[3] & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::VariableNodeArchive::MergeFrom(TST::VariableNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::VariableNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::VariableNodeArchive::MergeFrom(uint64_t this, const TST::VariableNodeArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = &TST::_ExpressionNodeArchive_default_instance_;
    }

    this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TST::VariableNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::VariableNodeArchive::Clear(this);

    return TST::VariableNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::VariableNodeArchive::CopyFrom(uint64_t *this, const TST::VariableNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::VariableNodeArchive::Clear(this);

    return TST::VariableNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::VariableNodeArchive::IsInitialized(TST::VariableNodeArchive *this)
{
  if ((~*(this + 4) & 6) != 0)
  {
    return 0;
  }

  v1 = *(this + 4);
  v2 = *(v1 + 32);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

uint64_t *TST::VariableNodeArchive::InternalSwap(TST::VariableNodeArchive *this, TST::VariableNodeArchive *a2)
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

uint64_t *TST::SpillOriginRefNodeArchive::clear_spill_origin_coord(TST::SpillOriginRefNodeArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSCE::CellCoordinateArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TST::SpillOriginRefNodeArchive *TST::SpillOriginRefNodeArchive::SpillOriginRefNodeArchive(TST::SpillOriginRefNodeArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7128;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpillOriginRefNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2834B7128;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpillOriginRefNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TST::SpillOriginRefNodeArchive *TST::SpillOriginRefNodeArchive::SpillOriginRefNodeArchive(TST::SpillOriginRefNodeArchive *this, const TST::SpillOriginRefNodeArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7128;
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

void TST::SpillOriginRefNodeArchive::~SpillOriginRefNodeArchive(TST::SpillOriginRefNodeArchive *this)
{
  if (this != TST::_SpillOriginRefNodeArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TST::ExpressionNodeArchive::~ExpressionNodeArchive(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSCE::CellCoordinateArchive::~CellCoordinateArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::SpillOriginRefNodeArchive::~SpillOriginRefNodeArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::SpillOriginRefNodeArchive::default_instance(TST::SpillOriginRefNodeArchive *this)
{
  if (atomic_load_explicit(scc_info_SpillOriginRefNodeArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_SpillOriginRefNodeArchive_default_instance_;
}

uint64_t *TST::SpillOriginRefNodeArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TST::ExpressionNodeArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSCE::CellCoordinateArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TST::SpillOriginRefNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_2216F806C(a3, v11, v5);
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

        v13 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v18;
      }

      v10 = sub_2217072AC(a3, v13, v5);
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

unsigned __int8 *TST::SpillOriginRefNodeArchive::_InternalSerialize(TST::SpillOriginRefNodeArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TST::ExpressionNodeArchive::_InternalSerialize(v6, v8, a3);
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

    a2 = TSCE::CellCoordinateArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::SpillOriginRefNodeArchive::RequiredFieldsByteSizeFallback(TST::SpillOriginRefNodeArchive *this)
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

  v4 = TST::ExpressionNodeArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSCE::CellCoordinateArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TST::SpillOriginRefNodeArchive::ByteSizeLong(TST::ExpressionNodeArchive **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TST::SpillOriginRefNodeArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TST::ExpressionNodeArchive::ByteSizeLong(this[3]);
    v3 = TSCE::CellCoordinateArchive::ByteSizeLong(this[4]);
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

uint64_t TST::SpillOriginRefNodeArchive::MergeFrom(TST::SpillOriginRefNodeArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::SpillOriginRefNodeArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::SpillOriginRefNodeArchive::MergeFrom(uint64_t this, const TST::SpillOriginRefNodeArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::ExpressionNodeArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TST::_ExpressionNodeArchive_default_instance_;
      }

      this = TST::ExpressionNodeArchive::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSCE::_CellCoordinateArchive_default_instance_;
      }

      return TSCE::CellCoordinateArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TST::SpillOriginRefNodeArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SpillOriginRefNodeArchive::Clear(this);

    return TST::SpillOriginRefNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::SpillOriginRefNodeArchive::CopyFrom(uint64_t *this, const TST::SpillOriginRefNodeArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::SpillOriginRefNodeArchive::Clear(this);

    return TST::SpillOriginRefNodeArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::SpillOriginRefNodeArchive::IsInitialized(TST::SpillOriginRefNodeArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v1 = *(this + 3);
  v2 = *(v1 + 32);
  do
  {
    v3 = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(v1 + 40) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3;
}

__n128 TST::SpillOriginRefNodeArchive::InternalSwap(TST::SpillOriginRefNodeArchive *this, TST::SpillOriginRefNodeArchive *a2)
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

TSP::Size *TST::LayoutHintArchive::clear_maximumsize(TST::LayoutHintArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Size *TST::LayoutHintArchive::clear_effectivesize(TST::LayoutHintArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TST::LayoutHintArchive *TST::LayoutHintArchive::LayoutHintArchive(TST::LayoutHintArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B71D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LayoutHintArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2834B71D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_LayoutHintArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 52) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TST::LayoutHintArchive *TST::LayoutHintArchive::LayoutHintArchive(TST::LayoutHintArchive *this, const TST::LayoutHintArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B71D8;
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
  v7 = *(a2 + 7);
  *(this + 16) = *(a2 + 16);
  *(this + 7) = v7;
  return this;
}

void TST::LayoutHintArchive::~LayoutHintArchive(TST::LayoutHintArchive *this)
{
  sub_221649B00(this);
  sub_2214DFCF8(this + 1);
}

{
  TST::LayoutHintArchive::~LayoutHintArchive(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_221649B00(uint64_t *result)
{
  if (result != &TST::_LayoutHintArchive_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TST::CellRange::~CellRange(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = v1[4];
    if (v3)
    {
      TST::CellID::~CellID(v3);
      MEMORY[0x223DA1450]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Size::~Size(v4);
      MEMORY[0x223DA1450]();
    }

    result = v1[6];
    if (result)
    {
      TSP::Size::~Size(result);

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

uint64_t *TST::LayoutHintArchive::default_instance(TST::LayoutHintArchive *this)
{
  if (atomic_load_explicit(scc_info_LayoutHintArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_LayoutHintArchive_default_instance_;
}

uint64_t *TST::LayoutHintArchive::Clear(uint64_t *this)
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

LABEL_14:
    this = TST::CellID::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    goto LABEL_15;
  }

  this = TST::CellRange::Clear(this[3]);
  if ((v2 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  this = TSP::Size::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Size::Clear(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 64) = 0;
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

google::protobuf::internal *TST::LayoutHintArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_86;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 4)
      {
        if (v8 >> 3 > 6)
        {
          if (v10 == 7)
          {
            if (v8 == 58)
            {
              *(a1 + 16) |= 8u;
              v18 = *(a1 + 48);
              if (!v18)
              {
                v34 = *(a1 + 8);
                if (v34)
                {
                  v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
                }

                v35 = MEMORY[0x223DA0350](v34);
                LODWORD(v18) = v35;
                *(a1 + 48) = v35;
LABEL_65:
                v7 = v45;
              }

LABEL_66:
              v14 = sub_22170744C(a3, v18, v7);
LABEL_74:
              v45 = v14;
              if (!v14)
              {
                goto LABEL_86;
              }

              goto LABEL_75;
            }

LABEL_67:
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
              sub_221567188((a1 + 8));
            }

            v14 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_74;
          }

          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_67;
          }

          v5 |= 0x80u;
          v21 = (v7 + 1);
          LODWORD(v22) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_41;
          }

          v23 = *v21;
          v22 = (v22 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v21 = (v7 + 2);
LABEL_41:
            v45 = v21;
            *(a1 + 64) = v22;
            goto LABEL_75;
          }

          v43 = google::protobuf::internal::VarintParseSlow32(v7, v22);
          v45 = v43;
          *(a1 + 64) = v44;
          if (!v43)
          {
LABEL_86:
            v45 = 0;
            goto LABEL_2;
          }
        }

        else if (v10 == 5)
        {
          if (v8 != 40)
          {
            goto LABEL_67;
          }

          v5 |= 0x40u;
          v29 = (v7 + 1);
          LODWORD(v30) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          v31 = *v29;
          v30 = (v30 + (v31 << 7) - 128);
          if ((v31 & 0x80000000) == 0)
          {
            v29 = (v7 + 2);
LABEL_53:
            v45 = v29;
            *(a1 + 60) = v30;
            goto LABEL_75;
          }

          v39 = google::protobuf::internal::VarintParseSlow32(v7, v30);
          v45 = v39;
          *(a1 + 60) = v40;
          if (!v39)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v10 != 6 || v8 != 48)
          {
            goto LABEL_67;
          }

          v5 |= 0x20u;
          v16 = (v7 + 1);
          v15 = *v7;
          if ((v15 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          v17 = *v16;
          v15 = (v17 << 7) + v15 - 128;
          if ((v17 & 0x80000000) == 0)
          {
            v16 = (v7 + 2);
LABEL_27:
            v45 = v16;
            *(a1 + 57) = v15 != 0;
            goto LABEL_75;
          }

          v41 = google::protobuf::internal::VarintParseSlow64(v7, v15);
          v45 = v41;
          *(a1 + 57) = v42 != 0;
          if (!v41)
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        if (v8 >> 3 > 2)
        {
          if (v10 == 3)
          {
            if (v8 == 26)
            {
              *(a1 + 16) |= 2u;
              v32 = *(a1 + 32);
              if (!v32)
              {
                v33 = *(a1 + 8);
                if (v33)
                {
                  v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
                }

                v32 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v33);
                *(a1 + 32) = v32;
                v7 = v45;
              }

              v14 = sub_221701838(a3, v32, v7);
              goto LABEL_74;
            }
          }

          else if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 4u;
            v18 = *(a1 + 40);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x223DA0350](v19);
              LODWORD(v18) = v20;
              *(a1 + 40) = v20;
              goto LABEL_65;
            }

            goto LABEL_66;
          }

          goto LABEL_67;
        }

        if (v10 != 1)
        {
          if (v10 == 2 && v8 == 18)
          {
            *(a1 + 16) |= 1u;
            v12 = *(a1 + 24);
            if (!v12)
            {
              v13 = *(a1 + 8);
              if (v13)
              {
                v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v13);
              *(a1 + 24) = v12;
              v7 = v45;
            }

            v14 = sub_221701AA8(a3, v12, v7);
            goto LABEL_74;
          }

          goto LABEL_67;
        }

        if (v8 != 8)
        {
          goto LABEL_67;
        }

        v5 |= 0x10u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_48;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v7 + 2);
LABEL_48:
          v45 = v27;
          *(a1 + 56) = v26 != 0;
          goto LABEL_75;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v26);
        v45 = v37;
        *(a1 + 56) = v38 != 0;
        if (!v37)
        {
          goto LABEL_86;
        }
      }

LABEL_75:
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

unsigned __int8 *TST::LayoutHintArchive::_InternalSerialize(TST::LayoutHintArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 56);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 3);
  *a2 = 18;
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

  a2 = TST::CellRange::_InternalSerialize(v7, v9, a3);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_23:
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

  a2 = TST::CellID::_InternalSerialize(v13, v15, a3);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

LABEL_43:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 15);
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
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_54;
        }
      }

      else
      {
        a2[2] = v26;
        a2 += 3;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_54;
        }
      }
    }

    else
    {
      a2[1] = v25;
      a2 += 2;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_54;
      }
    }

LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_33:
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

  a2 = TSP::Size::_InternalSerialize(v19, v21, a3);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_43;
  }

LABEL_6:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_7;
  }

LABEL_54:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v29 = *(this + 57);
  *a2 = 48;
  a2[1] = v29;
  a2 += 2;
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_67;
  }

LABEL_57:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 6);
  *a2 = 58;
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

  a2 = TSP::Size::_InternalSerialize(v30, v32, a3);
  if ((v5 & 0x80) != 0)
  {
LABEL_67:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v36 = *(this + 16);
    *a2 = 64;
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

LABEL_76:
  v40 = *(this + 1);
  if ((v40 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v40 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::LayoutHintArchive::RequiredFieldsByteSizeFallback(TST::LayoutHintArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    v4 = TSP::Size::ByteSizeLong(*(this + 5));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  result = v3 + ((v2 >> 3) & 2) + ((v2 >> 4) & 2);
  if ((v2 & 0x40) != 0)
  {
    result += ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TST::LayoutHintArchive::ByteSizeLong(TST::LayoutHintArchive *this)
{
  if ((~*(this + 4) & 0x74) != 0)
  {
    v3 = TST::LayoutHintArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Size::ByteSizeLong(*(this + 5));
    v3 = v2 + ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 6;
  }

  v4 = *(this + 4);
  if ((v4 & 3) != 0)
  {
    if (v4)
    {
      v5 = TST::CellRange::ByteSizeLong(*(this + 3));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v4 & 2) != 0)
    {
      v6 = TST::CellID::ByteSizeLong(*(this + 4));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v4 & 8) != 0)
  {
    v7 = TSP::Size::ByteSizeLong(*(this + 6));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v4 & 0x80) != 0)
  {
    v3 += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::LayoutHintArchive::MergeFrom(TST::LayoutHintArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::LayoutHintArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::LayoutHintArchive::MergeFrom(uint64_t this, const TST::LayoutHintArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TST::CellRange>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = TST::_CellRange_default_instance_;
      }

      this = TST::CellRange::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = TST::_CellID_default_instance_;
      }

      this = TST::CellID::MergeFrom(v9, v11);
    }

    v12 = MEMORY[0x277D809D8];
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

        v13 = MEMORY[0x223DA0350](v14);
        *(v3 + 40) = v13;
      }

      if (*(a2 + 5))
      {
        v15 = *(a2 + 5);
      }

      else
      {
        v15 = v12;
      }

      this = TSP::Size::MergeFrom(v13, v15);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_47;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_24;
    }

    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA0350](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v12;
    }

    this = TSP::Size::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_25:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
LABEL_26:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(v3 + 57) = *(a2 + 57);
    if ((v5 & 0x40) == 0)
    {
LABEL_27:
      if ((v5 & 0x80) == 0)
      {
LABEL_29:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_28:
      *(v3 + 64) = *(a2 + 16);
      goto LABEL_29;
    }

LABEL_49:
    *(v3 + 60) = *(a2 + 15);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  return this;
}

uint64_t *TST::LayoutHintArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::LayoutHintArchive::Clear(this);

    return TST::LayoutHintArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::LayoutHintArchive::CopyFrom(uint64_t *this, const TST::LayoutHintArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::LayoutHintArchive::Clear(this);

    return TST::LayoutHintArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TST::LayoutHintArchive::IsInitialized(TST::LayoutHintArchive *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0x74) != 0)
  {
    return 0;
  }

  if (v1)
  {
    v4 = *(this + 3);
    if ((~*(v4 + 16) & 3) != 0 || (*(*(v4 + 24) + 16) & 2) == 0 || (*(*(v4 + 32) + 16) & 1) == 0)
    {
      return 0;
    }
  }

  if ((v1 & 2) != 0 && (*(*(this + 4) + 16) & 2) == 0)
  {
    return 0;
  }

  result = TSP::Size::IsInitialized(*(this + 5));
  if (result)
  {
    if ((*(this + 16) & 8) == 0)
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

__n128 TST::LayoutHintArchive::InternalSwap(TST::LayoutHintArchive *this, TST::LayoutHintArchive *a2)
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
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  LODWORD(v10) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v10;
  return result;
}

TST::CompletionTokenAttachmentArchive *TST::CompletionTokenAttachmentArchive::CompletionTokenAttachmentArchive(TST::CompletionTokenAttachmentArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7288;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CompletionTokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TST::CompletionTokenAttachmentArchive *TST::CompletionTokenAttachmentArchive::CompletionTokenAttachmentArchive(TST::CompletionTokenAttachmentArchive *this, const TST::CompletionTokenAttachmentArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2834B7288;
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
  *(this + 5) = *(a2 + 5);
  return this;
}

void TST::CompletionTokenAttachmentArchive::~CompletionTokenAttachmentArchive(TST::CompletionTokenAttachmentArchive *this)
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

  if (this != &TST::_CompletionTokenAttachmentArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TST::TokenAttachmentArchive::~TokenAttachmentArchive(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::CompletionTokenAttachmentArchive::~CompletionTokenAttachmentArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::CompletionTokenAttachmentArchive::default_instance(TST::CompletionTokenAttachmentArchive *this)
{
  if (atomic_load_explicit(scc_info_CompletionTokenAttachmentArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_CompletionTokenAttachmentArchive_default_instance_;
}

uint64_t *TST::CompletionTokenAttachmentArchive::Clear(uint64_t *this)
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
      this = TST::TokenAttachmentArchive::Clear(this[4]);
    }
  }

LABEL_7:
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_221567398(v4);
  }

  return this;
}

google::protobuf::internal *TST::CompletionTokenAttachmentArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_33;
          }

          *(a1 + 16) |= 2u;
          v16 = *(a1 + 32);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TST::TokenAttachmentArchive>(v17);
            *(a1 + 32) = v16;
            v7 = v28;
          }

          v12 = sub_22170751C(a3, v16, v7);
        }

        else if (v10 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v12 = google::protobuf::internal::InlineGreedyStringParser();
        }

        else
        {
LABEL_33:
          if (v8)
          {
            v21 = (v8 & 7) == 4;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
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

        v28 = v12;
        if (!v12)
        {
          goto LABEL_50;
        }

        goto LABEL_41;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_33;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        LODWORD(v19) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v20 = *v18;
        v19 = (v19 + (v20 << 7) - 128);
        if ((v20 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_32:
          v28 = v18;
          *(a1 + 40) = v19;
          goto LABEL_41;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v19);
        v28 = v26;
        *(a1 + 40) = v27;
        if (!v26)
        {
LABEL_50:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_33;
        }

        v5 |= 8u;
        v13 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        v15 = *v13;
        v14 = (v14 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_21:
          v28 = v13;
          *(a1 + 44) = v14;
          goto LABEL_41;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v28 = v24;
        *(a1 + 44) = v25;
        if (!v24)
        {
          goto LABEL_50;
        }
      }

LABEL_41:
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

unsigned __int8 *TST::CompletionTokenAttachmentArchive::_InternalSerialize(TST::CompletionTokenAttachmentArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 4);
    *v4 = 10;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
        do
        {
          *(v10 - 1) = v12 | 0x80;
          v15 = v12 >> 7;
          ++v10;
          v16 = v12 >> 14;
          v12 >>= 7;
        }

        while (v16);
        *(v10 - 1) = v15;
      }

      else
      {
        v4[2] = v12;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = TST::TokenAttachmentArchive::_InternalSerialize(v8, v10, a3);
    if ((v6 & 1) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_22150C00C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_5;
  }

LABEL_25:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 10);
  *v4 = 24;
  if (v17 > 0x7F)
  {
    v4[1] = v17 | 0x80;
    v18 = v17 >> 7;
    if (v17 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v18 | 0x80;
        v19 = v18 >> 7;
        ++v4;
        v20 = v18 >> 14;
        v18 >>= 7;
      }

      while (v20);
      *(v4 - 1) = v19;
      if ((v6 & 8) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v4[2] = v18;
      v4 += 3;
      if ((v6 & 8) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    v4[1] = v17;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_36;
    }
  }

LABEL_5:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 11);
  *v4 = 32;
  if (v7 > 0x7F)
  {
    v4[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++v4;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(v4 - 1) = v13;
    }

    else
    {
      v4[2] = v11;
      v4 += 3;
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
  }

LABEL_36:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::CompletionTokenAttachmentArchive::ByteSizeLong(TST::CompletionTokenAttachmentArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    v4 = TST::TokenAttachmentArchive::ByteSizeLong(*(this + 4));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v6 = *(v5 + 23);
  v7 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v7 = v6;
  }

  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  if ((v2 & 0xC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 8) != 0)
    {
      v3 += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TST::CompletionTokenAttachmentArchive::MergeFrom(TST::CompletionTokenAttachmentArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::CompletionTokenAttachmentArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::CompletionTokenAttachmentArchive::MergeFrom(uint64_t this, const TST::CompletionTokenAttachmentArchive *a2)
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

        goto LABEL_20;
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TST::TokenAttachmentArchive>(v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = TST::_TokenAttachmentArchive_default_instance_;
    }

    this = TST::TokenAttachmentArchive::MergeFrom(v6, v8);
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
      *(v3 + 44) = *(a2 + 11);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TST::CompletionTokenAttachmentArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CompletionTokenAttachmentArchive::Clear(this);

    return TST::CompletionTokenAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::CompletionTokenAttachmentArchive::CopyFrom(uint64_t *this, const TST::CompletionTokenAttachmentArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::CompletionTokenAttachmentArchive::Clear(this);

    return TST::CompletionTokenAttachmentArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::CompletionTokenAttachmentArchive::IsInitialized(TST::CompletionTokenAttachmentArchive *this)
{
  result = 0;
  if ((*(this + 16) & 2) != 0)
  {
    v1 = *(this + 4);
    v2 = *(v1 + 16);
    if (v2 & 1) != 0 && ((v2 & 2) == 0 || (TSP::Reference::IsInitialized(*(v1 + 32))))
    {
      return 1;
    }
  }

  return result;
}

__n128 TST::CompletionTokenAttachmentArchive::InternalSwap(__n128 *this, __n128 *a2)
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

TSP::CFUUIDArchive *TST::HiddenStateFormulaOwnerArchive::clear_owner_id(TST::HiddenStateFormulaOwnerArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::CFUUIDArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TST::HiddenStateFormulaOwnerArchive::clear_threshold_value(uint64_t *this)
{
  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellValueArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

TST::HiddenStateFormulaOwnerArchive *TST::HiddenStateFormulaOwnerArchive::HiddenStateFormulaOwnerArchive(TST::HiddenStateFormulaOwnerArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B7338;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_HiddenStateFormulaOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 56) = 0;
  *(this + 6) = 0;
  return this;
}

TST::HiddenStateFormulaOwnerArchive *TST::HiddenStateFormulaOwnerArchive::HiddenStateFormulaOwnerArchive(TST::HiddenStateFormulaOwnerArchive *this, const TST::HiddenStateFormulaOwnerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B7338;
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
    sub_22167DB8C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
  *(this + 56) = *(a2 + 56);
  return this;
}

void sub_22164BAEC(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
  sub_22167DA48((v1 + 24));
  _Unwind_Resume(a1);
}

void TST::HiddenStateFormulaOwnerArchive::~HiddenStateFormulaOwnerArchive(TST::HiddenStateFormulaOwnerArchive *this)
{
  if (this != &TST::_HiddenStateFormulaOwnerArchive_default_instance_ && *(this + 6))
  {
    v2 = MEMORY[0x223D9FBD0]();
    MEMORY[0x223DA1450](v2, 0x1081C401753DA55);
  }

  sub_2214DFCF8(this + 1);
  sub_22167DA48(this + 3);
}

{
  TST::HiddenStateFormulaOwnerArchive::~HiddenStateFormulaOwnerArchive(this);

  JUMPOUT(0x223DA1450);
}

void *TST::HiddenStateFormulaOwnerArchive::default_instance(TST::HiddenStateFormulaOwnerArchive *this)
{
  if (atomic_load_explicit(scc_info_HiddenStateFormulaOwnerArchive_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TST::_HiddenStateFormulaOwnerArchive_default_instance_;
}

uint64_t *TST::HiddenStateFormulaOwnerArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSCE::CellValueArchive::Clear(v4);
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
  *(v5 + 48) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_221567398(v5);
  }

  return this;
}

google::protobuf::internal *TST::HiddenStateFormulaOwnerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v32) & 1) == 0)
  {
    while (1)
    {
      v7 = (v32 + 1);
      v8 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v32, (v9 - 128));
      v32 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_51;
      }

      v7 = TagFallback;
      v8 = v29;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 != 3)
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v25 = *(a1 + 48);
            if (!v25)
            {
              v26 = *(a1 + 8);
              if (v26)
              {
                v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
              }

              v27 = MEMORY[0x223DA0300](v26);
              LODWORD(v25) = v27;
              *(a1 + 48) = v27;
              v7 = v32;
            }

            v13 = sub_2216F7F9C(a3, v25, v7);
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

          v32 = v13;
          if (!v13)
          {
            goto LABEL_51;
          }

          goto LABEL_44;
        }

        if (v8 != 18)
        {
          goto LABEL_13;
        }

        v14 = (v7 - 1);
        while (2)
        {
          v15 = (v14 + 1);
          v32 = (v14 + 1);
          v16 = *(a1 + 40);
          if (!v16)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v16 = *(a1 + 40);
            v17 = *v16;
            goto LABEL_24;
          }

          v21 = *(a1 + 32);
          v17 = *v16;
          if (v21 >= *v16)
          {
            if (v17 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v16 = v17 + 1;
            v18 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellValueArchive>(*(a1 + 24));
            v19 = *(a1 + 32);
            v20 = *(a1 + 40) + 8 * v19;
            *(a1 + 32) = v19 + 1;
            *(v20 + 8) = v18;
            v15 = v32;
          }

          else
          {
            *(a1 + 32) = v21 + 1;
            v18 = *&v16[2 * v21 + 2];
          }

          v14 = sub_2216FB46C(a3, v18, v15);
          v32 = v14;
          if (!v14)
          {
            goto LABEL_51;
          }

          if (*a3 <= v14 || *v14 != 18)
          {
            goto LABEL_44;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
      v23 = (v7 + 1);
      v22 = *v7;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v24 = *v23;
      v22 = (v24 << 7) + v22 - 128;
      if ((v24 & 0x80000000) == 0)
      {
        v23 = (v7 + 2);
LABEL_37:
        v32 = v23;
        *(a1 + 56) = v22 != 0;
        goto LABEL_44;
      }

      v30 = google::protobuf::internal::VarintParseSlow64(v7, v22);
      v32 = v30;
      *(a1 + 56) = v31 != 0;
      if (!v30)
      {
LABEL_51:
        v32 = 0;
        goto LABEL_2;
      }

LABEL_44:
      if (sub_221567030(a3, &v32))
      {
        goto LABEL_2;
      }
    }

    v7 = (v32 + 2);
LABEL_6:
    v32 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v32;
}

unsigned __int8 *TST::HiddenStateFormulaOwnerArchive::_InternalSerialize(TST::HiddenStateFormulaOwnerArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::CFUUIDArchive::_InternalSerialize(v6, v8, a3);
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

      a2 = TSCE::CellValueArchive::_InternalSerialize(v14, v16, a3);
    }
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 56);
    *a2 = 24;
    a2[1] = v20;
    a2 += 2;
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TST::HiddenStateFormulaOwnerArchive::ByteSizeLong(TST::HiddenStateFormulaOwnerArchive *this)
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
      v7 = TSCE::CellValueArchive::ByteSizeLong(v6);
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
      v9 = TSP::CFUUIDArchive::ByteSizeLong(*(this + 6));
      v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v2 += v8 & 2;
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

uint64_t TST::HiddenStateFormulaOwnerArchive::MergeFrom(TST::HiddenStateFormulaOwnerArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TST::HiddenStateFormulaOwnerArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TST::HiddenStateFormulaOwnerArchive::MergeFrom(uint64_t this, const TST::HiddenStateFormulaOwnerArchive *a2)
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
    this = sub_22167DB8C(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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

        v11 = MEMORY[0x223DA0300](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 6))
      {
        v13 = *(a2 + 6);
      }

      else
      {
        v13 = MEMORY[0x277D80A28];
      }

      this = TSP::CFUUIDArchive::MergeFrom(v11, v13);
    }

    if ((v10 & 2) != 0)
    {
      *(v3 + 56) = *(a2 + 56);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TST::HiddenStateFormulaOwnerArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HiddenStateFormulaOwnerArchive::Clear(this);

    return TST::HiddenStateFormulaOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TST::HiddenStateFormulaOwnerArchive::CopyFrom(uint64_t *this, const TST::HiddenStateFormulaOwnerArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TST::HiddenStateFormulaOwnerArchive::Clear(this);

    return TST::HiddenStateFormulaOwnerArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TST::HiddenStateFormulaOwnerArchive::IsInitialized(TST::HiddenStateFormulaOwnerArchive *this)
{
  v2 = *(this + 8);
  do
  {
    v3 = v2;
    if (v2 < 1)
    {
      break;
    }

    v4 = v2 - 1;
    IsInitialized = TSCE::CellValueArchive::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TST::HiddenStateFormulaOwnerArchive::InternalSwap(__n128 *this, __n128 *a2)
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
  LOBYTE(v8) = this[3].n128_u8[8];
  this[3].n128_u8[8] = a2[3].n128_u8[8];
  a2[3].n128_u8[8] = v8;
  return result;
}

uint64_t *TST::FormulaStoreArchive_FormulaStorePair::clear_formula(TST::FormulaStoreArchive_FormulaStorePair *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSCE::FormulaArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TST::FormulaStoreArchive_FormulaStorePair *TST::FormulaStoreArchive_FormulaStorePair::FormulaStoreArchive_FormulaStorePair(TST::FormulaStoreArchive_FormulaStorePair *this, google::protobuf::Arena *a2)
{
  *this = &unk_2834B73E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaStoreArchive_FormulaStorePair_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2834B73E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FormulaStoreArchive_FormulaStorePair_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 8) = 0;
  *(this + 3) = 0;
  return this;
}

TST::FormulaStoreArchive_FormulaStorePair *TST::FormulaStoreArchive_FormulaStorePair::FormulaStoreArchive_FormulaStorePair(TST::FormulaStoreArchive_FormulaStorePair *this, const TST::FormulaStoreArchive_FormulaStorePair *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2834B73E8;
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
  *(this + 8) = *(a2 + 8);
  return this;
}

void TST::FormulaStoreArchive_FormulaStorePair::~FormulaStoreArchive_FormulaStorePair(TST::FormulaStoreArchive_FormulaStorePair *this)
{
  if (this != TST::_FormulaStoreArchive_FormulaStorePair_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSCE::FormulaArchive::~FormulaArchive(v2);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(this + 1);
}

{
  TST::FormulaStoreArchive_FormulaStorePair::~FormulaStoreArchive_FormulaStorePair(this);

  JUMPOUT(0x223DA1450);
}

uint64_t *TST::FormulaStoreArchive_FormulaStorePair::default_instance(TST::FormulaStoreArchive_FormulaStorePair *this)
{
  if (atomic_load_explicit(scc_info_FormulaStoreArchive_FormulaStorePair_TSTArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return TST::_FormulaStoreArchive_FormulaStorePair_default_instance_;
}

uint64_t *TST::FormulaStoreArchive_FormulaStorePair::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSCE::FormulaArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_221567398(v2);
  }

  return this;
}

google::protobuf::internal *TST::FormulaStoreArchive_FormulaStorePair::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v22) & 1) == 0)
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

            v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v14);
            *(a1 + 24) = v13;
            v7 = v22;
          }

          v12 = sub_2216FE0AC(a3, v13, v7);
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
      if (sub_221567030(a3, &v22))
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