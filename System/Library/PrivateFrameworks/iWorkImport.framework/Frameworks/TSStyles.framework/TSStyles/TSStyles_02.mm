uint64_t TSS::ThemeReplacePresetCommandArchive::GetMetadata(TSS::ThemeReplacePresetCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[18];
  v2 = off_2812FAF80[19];
  return result;
}

TSK::CommandArchive *TSS::ThemeReplaceColorPresetCommandArchive::clear_super(TSS::ThemeReplaceColorPresetCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSS::ThemeReplaceColorPresetCommandArchive::clear_theme(TSS::ThemeReplaceColorPresetCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Color *TSS::ThemeReplaceColorPresetCommandArchive::clear_color(TSS::ThemeReplaceColorPresetCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Color *TSS::ThemeReplaceColorPresetCommandArchive::clear_old_color(TSS::ThemeReplaceColorPresetCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSS::ThemeReplaceColorPresetCommandArchive *TSS::ThemeReplaceColorPresetCommandArchive::ThemeReplaceColorPresetCommandArchive(TSS::ThemeReplaceColorPresetCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6B30;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplaceColorPresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2885E6B30;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplaceColorPresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 14) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSS::ThemeReplaceColorPresetCommandArchive *TSS::ThemeReplaceColorPresetCommandArchive::ThemeReplaceColorPresetCommandArchive(TSS::ThemeReplaceColorPresetCommandArchive *this, const TSS::ThemeReplaceColorPresetCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6B30;
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
  *(this + 14) = *(a2 + 14);
  return this;
}

void TSS::ThemeReplaceColorPresetCommandArchive::~ThemeReplaceColorPresetCommandArchive(TSS::ThemeReplaceColorPresetCommandArchive *this)
{
  sub_276CD0440(this);
  sub_276CC409C(this + 1);
}

{
  TSS::ThemeReplaceColorPresetCommandArchive::~ThemeReplaceColorPresetCommandArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *sub_276CD0440(uint64_t *result)
{
  if (result != &TSS::_ThemeReplaceColorPresetCommandArchive_default_instance_)
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
      TSP::Color::~Color(v4);
      MEMORY[0x277CA0980]();
    }

    result = v1[6];
    if (result)
    {
      TSP::Color::~Color(result);

      JUMPOUT(0x277CA0980);
    }
  }

  return result;
}

uint64_t *TSS::ThemeReplaceColorPresetCommandArchive::default_instance(TSS::ThemeReplaceColorPresetCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemeReplaceColorPresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_ThemeReplaceColorPresetCommandArchive_default_instance_;
}

uint64_t *TSS::ThemeReplaceColorPresetCommandArchive::Clear(uint64_t *this)
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
    this = TSP::Reference::Clear(*(v1 + 32));
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
  this = TSP::Color::Clear(*(v1 + 40));
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Color::Clear(*(v1 + 48));
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 48) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276CD8114(v3);
  }

  return this;
}

google::protobuf::internal *TSS::ThemeReplaceColorPresetCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v34) & 1) == 0)
  {
    while (1)
    {
      v8 = (v34 + 1);
      v9 = *v34;
      if ((*v34 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v10 - 128));
      v34 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_60;
      }

      v8 = TagFallback;
      v9 = v31;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_45;
          }

          *(a1 + 16) |= 1u;
          v25 = *(a1 + 24);
          if (!v25)
          {
            v26 = *(a1 + 8);
            if (v26)
            {
              v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = MEMORY[0x277CA0620](v26);
            LODWORD(v25) = v27;
            *(a1 + 24) = v27;
            v8 = v34;
          }

          v19 = sub_276CE1F64(a3, v25, v8);
        }

        else
        {
          if (v11 != 2 || v9 != 18)
          {
            goto LABEL_45;
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

            v18 = MEMORY[0x277CA0650](v17);
            LODWORD(v16) = v18;
            *(a1 + 32) = v18;
            v8 = v34;
          }

          v19 = sub_276CE1A84(a3, v16, v8);
        }

LABEL_52:
        v34 = v19;
        if (!v19)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      }

      if (v11 == 3)
      {
        if (v9 != 26)
        {
          goto LABEL_45;
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

          v22 = MEMORY[0x277CA0640](v21);
          LODWORD(v20) = v22;
          *(a1 + 40) = v22;
LABEL_37:
          v8 = v34;
        }

LABEL_38:
        v19 = sub_276CE1E94(a3, v20, v8);
        goto LABEL_52;
      }

      if (v11 == 4)
      {
        if (v9 == 34)
        {
          *(a1 + 16) |= 8u;
          v20 = *(a1 + 48);
          if (!v20)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277CA0640](v23);
            LODWORD(v20) = v24;
            *(a1 + 48) = v24;
            goto LABEL_37;
          }

          goto LABEL_38;
        }

LABEL_45:
        if (v9)
        {
          v28 = (v9 & 7) == 4;
        }

        else
        {
          v28 = 1;
        }

        if (v28)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276CD7F50((a1 + 8));
        }

        v19 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_52;
      }

      if (v11 != 5 || v9 != 40)
      {
        goto LABEL_45;
      }

      v6 |= 0x10u;
      v12 = (v8 + 1);
      LODWORD(v13) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v8 + 2);
LABEL_15:
        v34 = v12;
        *(a1 + 56) = v13;
        goto LABEL_53;
      }

      v32 = google::protobuf::internal::VarintParseSlow32(v8, v13);
      v34 = v32;
      *(a1 + 56) = v33;
      if (!v32)
      {
LABEL_60:
        v34 = 0;
        goto LABEL_2;
      }

LABEL_53:
      v29 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v34))
      {
        goto LABEL_2;
      }
    }

    v8 = (v34 + 2);
LABEL_6:
    v34 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v34;
}

unsigned __int8 *TSS::ThemeReplaceColorPresetCommandArchive::_InternalSerialize(TSS::ThemeReplaceColorPresetCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      goto LABEL_27;
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

    goto LABEL_37;
  }

LABEL_27:
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

  a2 = TSP::Color::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_47;
  }

LABEL_37:
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

  a2 = TSP::Color::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(this + 14);
    *a2 = 40;
    if (v30 > 0x7F)
    {
      a2[1] = v30 | 0x80;
      v31 = v30 >> 7;
      if (v30 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v31 | 0x80;
          v32 = v31 >> 7;
          ++a2;
          v33 = v31 >> 14;
          v31 >>= 7;
        }

        while (v33);
        *(a2 - 1) = v32;
      }

      else
      {
        a2[2] = v31;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v30;
      a2 += 2;
    }
  }

LABEL_56:
  v34 = *(this + 1);
  if ((v34 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v34 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::ThemeReplaceColorPresetCommandArchive::RequiredFieldsByteSizeFallback(TSS::ThemeReplaceColorPresetCommandArchive *this)
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v8 = TSP::Color::ByteSizeLong(*(this + 6));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_9;
  }

  v7 = TSP::Color::ByteSizeLong(*(this + 5));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v2 & 0x10) != 0)
  {
LABEL_9:
    v3 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSS::ThemeReplaceColorPresetCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 0x1F) != 0)
  {
    v9 = TSS::ThemeReplaceColorPresetCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = TSP::Color::ByteSizeLong(this[5]);
    v5 = TSP::Color::ByteSizeLong(this[6]);
    v6.i32[0] = v2 | 1;
    v6.i32[1] = v3 | 1;
    v6.i32[2] = v4 | 1;
    v6.i32[3] = v5 | 1;
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v8.i64[0] = 0x4900000049;
    v8.i64[1] = 0x4900000049;
    v9 = v3 + v2 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v8, vmovn_s32(veorq_s8(vclzq_s32(v6), v7)), 0x9000900090009), 6uLL)) + ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + v5 + v4 + 5;
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

uint64_t TSS::ThemeReplaceColorPresetCommandArchive::MergeFrom(TSS::ThemeReplaceColorPresetCommandArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::ThemeReplaceColorPresetCommandArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::ThemeReplaceColorPresetCommandArchive::MergeFrom(uint64_t this, const TSS::ThemeReplaceColorPresetCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      this = TSP::Reference::MergeFrom(v9, v11);
    }

    v12 = MEMORY[0x277D809E8];
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

        v13 = MEMORY[0x277CA0640](v14);
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

      this = TSP::Color::MergeFrom(v13, v15);
      if ((v5 & 8) == 0)
      {
LABEL_24:
        if ((v5 & 0x10) == 0)
        {
LABEL_26:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_25:
        *(v3 + 56) = *(a2 + 14);
        goto LABEL_26;
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

      v16 = MEMORY[0x277CA0640](v17);
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

    this = TSP::Color::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  return this;
}

uint64_t *TSS::ThemeReplaceColorPresetCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeReplaceColorPresetCommandArchive::Clear(this);

    return TSS::ThemeReplaceColorPresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::ThemeReplaceColorPresetCommandArchive::CopyFrom(uint64_t *this, const TSS::ThemeReplaceColorPresetCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeReplaceColorPresetCommandArchive::Clear(this);

    return TSS::ThemeReplaceColorPresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::ThemeReplaceColorPresetCommandArchive::IsInitialized(TSS::ThemeReplaceColorPresetCommandArchive *this)
{
  if ((~*(this + 4) & 0x1F) != 0)
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
      result = TSP::Color::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = TSP::Color::IsInitialized(*(this + 6));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSS::ThemeReplaceColorPresetCommandArchive::InternalSwap(TSS::ThemeReplaceColorPresetCommandArchive *this, TSS::ThemeReplaceColorPresetCommandArchive *a2)
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
  LODWORD(v7) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  return result;
}

uint64_t TSS::ThemeReplaceColorPresetCommandArchive::GetMetadata(TSS::ThemeReplaceColorPresetCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[20];
  v2 = off_2812FAF80[21];
  return result;
}

TSK::CommandArchive *TSS::ThemeAddStylePresetCommandArchive::clear_super(TSS::ThemeAddStylePresetCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSS::ThemeAddStylePresetCommandArchive::clear_theme(TSS::ThemeAddStylePresetCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSS::ThemeAddStylePresetCommandArchive::clear_preset(TSS::ThemeAddStylePresetCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSS::ThemeAddStylePresetCommandArchive *TSS::ThemeAddStylePresetCommandArchive::ThemeAddStylePresetCommandArchive(TSS::ThemeAddStylePresetCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6BE0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeAddStylePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 64) = 0;
  return this;
}

TSS::ThemeAddStylePresetCommandArchive *TSS::ThemeAddStylePresetCommandArchive::ThemeAddStylePresetCommandArchive(TSS::ThemeAddStylePresetCommandArchive *this, const TSS::ThemeAddStylePresetCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6BE0;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  v7 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v5)
  {
    v8 = *(a2 + 3);
    if (*v4)
    {
      v11 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

  *(this + 4) = v7;
  if ((v5 & 2) != 0)
  {
    v9 = *(a2 + 4);
    if (*v4)
    {
      v12 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

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

void TSS::ThemeAddStylePresetCommandArchive::~ThemeAddStylePresetCommandArchive(TSS::ThemeAddStylePresetCommandArchive *this)
{
  sub_276CD15E0(this);
  sub_276CC409C(this + 1);
}

{
  TSS::ThemeAddStylePresetCommandArchive::~ThemeAddStylePresetCommandArchive(this);

  JUMPOUT(0x277CA0980);
}

TSP::Reference *sub_276CD15E0(TSP::Reference *result)
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

    result = MEMORY[0x277CA0980](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277CA0980](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSS::_ThemeAddStylePresetCommandArchive_default_instance_)
  {
    if (*(v1 + 5))
    {
      v5 = MEMORY[0x277CA04C0]();
      MEMORY[0x277CA0980](v5, 0x10A1C40C24530F0);
    }

    v6 = *(v1 + 6);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277CA0980]();
    }

    result = *(v1 + 7);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA0980);
    }
  }

  return result;
}

void *TSS::ThemeAddStylePresetCommandArchive::default_instance(TSS::ThemeAddStylePresetCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemeAddStylePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_ThemeAddStylePresetCommandArchive_default_instance_;
}

uint64_t *TSS::ThemeAddStylePresetCommandArchive::Clear(uint64_t *this)
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
  *(v3 + 56) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276CD8114(v3);
  }

  return this;
}

google::protobuf::internal *TSS::ThemeAddStylePresetCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_63;
      }

      v8 = TagFallback;
      v9 = v30;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 4u;
          v19 = *(a1 + 40);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277CA0620](v20);
            LODWORD(v19) = v21;
            *(a1 + 40) = v21;
            v8 = v35;
          }

          v22 = sub_276CE1F64(a3, v19, v8);
          goto LABEL_55;
        }

        if (v11 == 2)
        {
          if (v9 != 18)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 8u;
          v13 = *(a1 + 48);
          if (!v13)
          {
            v24 = *(a1 + 8);
            if (v24)
            {
              v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = MEMORY[0x277CA0650](v24);
            LODWORD(v13) = v25;
            *(a1 + 48) = v25;
LABEL_42:
            v8 = v35;
          }
        }

        else
        {
          if (v11 != 3 || v9 != 26)
          {
            goto LABEL_48;
          }

          *(a1 + 16) |= 0x10u;
          v13 = *(a1 + 56);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277CA0650](v14);
            LODWORD(v13) = v15;
            *(a1 + 56) = v15;
            goto LABEL_42;
          }
        }

        v22 = sub_276CE1A84(a3, v13, v8);
        goto LABEL_55;
      }

      if (v11 == 4)
      {
        if (v9 != 34)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 1u;
        v23 = *(a1 + 8);
        if (v23)
        {
          v33 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

LABEL_47:
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v22 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_55;
      }

      if (v11 == 5)
      {
        if (v9 == 42)
        {
          *(a1 + 16) |= 2u;
          v26 = *(a1 + 8);
          if (v26)
          {
            v34 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          goto LABEL_47;
        }

LABEL_48:
        if (v9)
        {
          v27 = (v9 & 7) == 4;
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276CD7F50((a1 + 8));
        }

        v22 = google::protobuf::internal::UnknownFieldParse();
LABEL_55:
        v35 = v22;
        if (!v22)
        {
          goto LABEL_63;
        }

        goto LABEL_56;
      }

      if (v11 != 6 || v9 != 48)
      {
        goto LABEL_48;
      }

      v6 |= 0x20u;
      v17 = (v8 + 1);
      v16 = *v8;
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v18 = *v17;
      v16 = (v18 << 7) + v16 - 128;
      if ((v18 & 0x80000000) == 0)
      {
        v17 = (v8 + 2);
LABEL_26:
        v35 = v17;
        *(a1 + 64) = v16 != 0;
        goto LABEL_56;
      }

      v31 = google::protobuf::internal::VarintParseSlow64(v8, v16);
      v35 = v31;
      *(a1 + 64) = v32 != 0;
      if (!v31)
      {
LABEL_63:
        v35 = 0;
        goto LABEL_2;
      }

LABEL_56:
      v28 = *(a3 + 92);
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

unsigned __int8 *TSS::ThemeAddStylePresetCommandArchive::_InternalSerialize(TSS::ThemeAddStylePresetCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    if ((v6 & 8) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
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

  v13 = *(this + 6);
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
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_28:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 7);
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
  if ((v6 & 1) == 0)
  {
LABEL_5:
    if ((v6 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  v4 = sub_276CC4788(a3, 4, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_39:
  v4 = sub_276CC4788(a3, 5, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v25 = *(this + 64);
  *v4 = 48;
  v4[1] = v25;
  v4 += 2;
LABEL_43:
  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSS::ThemeAddStylePresetCommandArchive::RequiredFieldsByteSizeFallback(TSS::ThemeAddStylePresetCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v7 = TSK::CommandArchive::ByteSizeLong(*(this + 5));
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
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 8) != 0)
  {
    v10 = TSP::Reference::ByteSizeLong(*(this + 6));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_10;
  }

  if ((v2 & 0x10) != 0)
  {
LABEL_10:
    v8 = TSP::Reference::ByteSizeLong(*(this + 7));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSS::ThemeAddStylePresetCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 0x1D) != 0)
  {
    v12 = TSS::ThemeAddStylePresetCommandArchive::RequiredFieldsByteSizeFallback(this);
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

    v6 = TSK::CommandArchive::ByteSizeLong(this[5]);
    v7 = TSP::Reference::ByteSizeLong(this[6]);
    v8 = TSP::Reference::ByteSizeLong(this[7]);
    v9.i32[0] = v5 | 1;
    v9.i32[1] = v6 | 1;
    v9.i32[2] = v7 | 1;
    v9.i32[3] = v8 | 1;
    v10.i64[0] = 0x1F0000001FLL;
    v10.i64[1] = 0x1F0000001FLL;
    v11.i64[0] = 0x4900000049;
    v11.i64[1] = 0x4900000049;
    v12 = v5 + v7 + v6 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v11, vmovn_s32(veorq_s8(vclzq_s32(v9), v10)), 0x9000900090009), 6uLL)) + v8 + 4;
  }

  v13 = *(this + 4);
  if ((v13 & 2) != 0)
  {
    v14 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v12 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v17 = v12 + ((v13 >> 4) & 2);
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v17, this + 20);
  }

  else
  {
    *(this + 5) = v17;
    return v12 + ((v13 >> 4) & 2);
  }
}

uint64_t TSS::ThemeAddStylePresetCommandArchive::MergeFrom(TSS::ThemeAddStylePresetCommandArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::ThemeAddStylePresetCommandArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::ThemeAddStylePresetCommandArchive::MergeFrom(uint64_t this, const TSS::ThemeAddStylePresetCommandArchive *a2)
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
      v6 = *(a2 + 3);
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 8);
      if (v7)
      {
        v20 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 4);
    *(v3 + 16) |= 2u;
    v9 = *(v3 + 8);
    if (v9)
    {
      v21 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_22:
      v13 = MEMORY[0x277D80A18];
      if ((v5 & 8) != 0)
      {
        *(v3 + 16) |= 8u;
        v14 = *(v3 + 48);
        if (!v14)
        {
          v15 = *(v3 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277CA0650](v15);
          *(v3 + 48) = v14;
        }

        if (*(a2 + 6))
        {
          v16 = *(a2 + 6);
        }

        else
        {
          v16 = v13;
        }

        this = TSP::Reference::MergeFrom(v14, v16);
        if ((v5 & 0x10) == 0)
        {
LABEL_24:
          if ((v5 & 0x20) == 0)
          {
LABEL_26:
            *(v3 + 16) |= v5;
            return this;
          }

LABEL_25:
          *(v3 + 64) = *(a2 + 64);
          goto LABEL_26;
        }
      }

      else if ((v5 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      *(v3 + 16) |= 0x10u;
      v17 = *(v3 + 56);
      if (!v17)
      {
        v18 = *(v3 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277CA0650](v18);
        *(v3 + 56) = v17;
      }

      if (*(a2 + 7))
      {
        v19 = *(a2 + 7);
      }

      else
      {
        v19 = v13;
      }

      this = TSP::Reference::MergeFrom(v17, v19);
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_14:
    *(v3 + 16) |= 4u;
    v10 = *(v3 + 40);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277CA0620](v11);
      *(v3 + 40) = v10;
    }

    if (*(a2 + 5))
    {
      v12 = *(a2 + 5);
    }

    else
    {
      v12 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v10, v12);
    goto LABEL_22;
  }

  return this;
}

uint64_t *TSS::ThemeAddStylePresetCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeAddStylePresetCommandArchive::Clear(this);

    return TSS::ThemeAddStylePresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::ThemeAddStylePresetCommandArchive::CopyFrom(uint64_t *this, const TSS::ThemeAddStylePresetCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeAddStylePresetCommandArchive::Clear(this);

    return TSS::ThemeAddStylePresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::ThemeAddStylePresetCommandArchive::IsInitialized(TSS::ThemeAddStylePresetCommandArchive *this)
{
  if ((~*(this + 4) & 0x1D) != 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 5));
  if (result)
  {
    v3 = *(this + 4);
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

__n128 TSS::ThemeAddStylePresetCommandArchive::InternalSwap(TSS::ThemeAddStylePresetCommandArchive *this, TSS::ThemeAddStylePresetCommandArchive *a2)
{
  sub_276CC4DA4(this + 1, a2 + 1);
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
  LOBYTE(v10) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v10;
  return result;
}

uint64_t TSS::ThemeAddStylePresetCommandArchive::GetMetadata(TSS::ThemeAddStylePresetCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[22];
  v2 = off_2812FAF80[23];
  return result;
}

TSK::CommandArchive *TSS::ThemeRemoveStylePresetCommandArchive::clear_super(TSS::ThemeRemoveStylePresetCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSS::ThemeRemoveStylePresetCommandArchive::clear_theme(TSS::ThemeRemoveStylePresetCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Reference *TSS::ThemeRemoveStylePresetCommandArchive::clear_preset(TSS::ThemeRemoveStylePresetCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Reference *TSS::ThemeRemoveStylePresetCommandArchive::clear_replacement_preset(TSS::ThemeRemoveStylePresetCommandArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSS::ThemeRemoveStylePresetCommandArchive *TSS::ThemeRemoveStylePresetCommandArchive::ThemeRemoveStylePresetCommandArchive(TSS::ThemeRemoveStylePresetCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6C90;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeRemoveStylePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  return this;
}

TSS::ThemeRemoveStylePresetCommandArchive *TSS::ThemeRemoveStylePresetCommandArchive::ThemeRemoveStylePresetCommandArchive(TSS::ThemeRemoveStylePresetCommandArchive *this, const TSS::ThemeRemoveStylePresetCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6C90;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  v7 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  if (v5)
  {
    v8 = *(a2 + 3);
    if (*v4)
    {
      v11 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

  *(this + 4) = v7;
  if ((v5 & 2) != 0)
  {
    v9 = *(a2 + 4);
    if (*v4)
    {
      v12 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v5 = *(a2 + 4);
  }

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
  *(this + 18) = *(a2 + 18);
  return this;
}

void TSS::ThemeRemoveStylePresetCommandArchive::~ThemeRemoveStylePresetCommandArchive(TSS::ThemeRemoveStylePresetCommandArchive *this)
{
  sub_276CD2894(this);
  sub_276CC409C(this + 1);
}

{
  TSS::ThemeRemoveStylePresetCommandArchive::~ThemeRemoveStylePresetCommandArchive(this);

  JUMPOUT(0x277CA0980);
}

TSP::Reference *sub_276CD2894(TSP::Reference *result)
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

    result = MEMORY[0x277CA0980](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277CA0980](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSS::_ThemeRemoveStylePresetCommandArchive_default_instance_)
  {
    if (*(v1 + 5))
    {
      v5 = MEMORY[0x277CA04C0]();
      MEMORY[0x277CA0980](v5, 0x10A1C40C24530F0);
    }

    v6 = *(v1 + 6);
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277CA0980]();
    }

    v7 = *(v1 + 7);
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x277CA0980]();
    }

    result = *(v1 + 8);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA0980);
    }
  }

  return result;
}

void *TSS::ThemeRemoveStylePresetCommandArchive::default_instance(TSS::ThemeRemoveStylePresetCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemeRemoveStylePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_ThemeRemoveStylePresetCommandArchive_default_instance_;
}

uint64_t *TSS::ThemeRemoveStylePresetCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x3F) == 0)
  {
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_17:
    v6 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v2 & 4) != 0)
      {
        goto LABEL_21;
      }
    }

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    this = TSP::Reference::Clear(*(v1 + 48));
    if ((v2 & 0x10) == 0)
    {
LABEL_7:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    goto LABEL_23;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  this = TSK::CommandArchive::Clear(this[5]);
  if ((v2 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  if ((v2 & 0x10) == 0)
  {
    goto LABEL_7;
  }

LABEL_23:
  this = TSP::Reference::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    this = TSP::Reference::Clear(*(v1 + 64));
  }

LABEL_9:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 64) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276CD8114(v3);
  }

  return this;
}

google::protobuf::internal *TSS::ThemeRemoveStylePresetCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v37 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v37) & 1) == 0)
  {
    while (1)
    {
      v8 = (v37 + 1);
      v9 = *v37;
      if ((*v37 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v37, (v10 - 128));
      v37 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_70;
      }

      v8 = TagFallback;
      v9 = v20;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 3)
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_57;
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

            v23 = MEMORY[0x277CA0620](v22);
            LODWORD(v21) = v23;
            *(a1 + 40) = v23;
            v8 = v37;
          }

          v24 = sub_276CE1F64(a3, v21, v8);
          goto LABEL_64;
        }

        if (v11 == 2)
        {
          if (v9 != 18)
          {
            goto LABEL_57;
          }

          *(a1 + 16) |= 8u;
          v14 = *(a1 + 48);
          if (v14)
          {
            goto LABEL_56;
          }

          v29 = *(a1 + 8);
          if (v29)
          {
            v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
          }

          v30 = MEMORY[0x277CA0650](v29);
          LODWORD(v14) = v30;
          *(a1 + 48) = v30;
        }

        else
        {
          if (v11 != 3 || v9 != 26)
          {
            goto LABEL_57;
          }

          *(a1 + 16) |= 0x10u;
          v14 = *(a1 + 56);
          if (v14)
          {
            goto LABEL_56;
          }

          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x277CA0650](v15);
          LODWORD(v14) = v16;
          *(a1 + 56) = v16;
        }

LABEL_55:
        v8 = v37;
LABEL_56:
        v24 = sub_276CE1A84(a3, v14, v8);
        goto LABEL_64;
      }

      if (v9 >> 3 > 5)
      {
        if (v11 == 6)
        {
          if (v9 != 50)
          {
            goto LABEL_57;
          }

          *(a1 + 16) |= 2u;
          v28 = *(a1 + 8);
          if (v28)
          {
            v35 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
          }

LABEL_49:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v24 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_64;
        }

        if (v11 != 7 || v9 != 58)
        {
          goto LABEL_57;
        }

        *(a1 + 16) |= 0x20u;
        v14 = *(a1 + 64);
        if (!v14)
        {
          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277CA0650](v17);
          LODWORD(v14) = v18;
          *(a1 + 64) = v18;
          goto LABEL_55;
        }

        goto LABEL_56;
      }

      if (v11 != 4)
      {
        if (v11 == 5 && v9 == 42)
        {
          *(a1 + 16) |= 1u;
          v12 = *(a1 + 8);
          if (v12)
          {
            v36 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
          }

          goto LABEL_49;
        }

LABEL_57:
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
          sub_276CD7F50((a1 + 8));
        }

        v24 = google::protobuf::internal::UnknownFieldParse();
LABEL_64:
        v37 = v24;
        if (!v24)
        {
          goto LABEL_70;
        }

        goto LABEL_65;
      }

      if (v9 != 32)
      {
        goto LABEL_57;
      }

      v6 |= 0x40u;
      v25 = (v8 + 1);
      LODWORD(v26) = *v8;
      if ((*v8 & 0x80000000) == 0)
      {
        goto LABEL_45;
      }

      v27 = *v25;
      v26 = (v26 + (v27 << 7) - 128);
      if ((v27 & 0x80000000) == 0)
      {
        v25 = (v8 + 2);
LABEL_45:
        v37 = v25;
        *(a1 + 72) = v26;
        goto LABEL_65;
      }

      v33 = google::protobuf::internal::VarintParseSlow32(v8, v26);
      v37 = v33;
      *(a1 + 72) = v34;
      if (!v33)
      {
LABEL_70:
        v37 = 0;
        goto LABEL_2;
      }

LABEL_65:
      v32 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v37))
      {
        goto LABEL_2;
      }
    }

    v8 = (v37 + 2);
LABEL_6:
    v37 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v37;
}

unsigned __int8 *TSS::ThemeRemoveStylePresetCommandArchive::_InternalSerialize(TSS::ThemeRemoveStylePresetCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  v13 = *(this + 6);
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
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_5;
    }

LABEL_39:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 18);
    *v4 = 32;
    if (v25 > 0x7F)
    {
      v4[1] = v25 | 0x80;
      v26 = v25 >> 7;
      if (v25 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++v4;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(v4 - 1) = v27;
        if (v6)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v4[2] = v26;
        v4 += 3;
        if (v6)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      v4[1] = v25;
      v4 += 2;
      if (v6)
      {
        goto LABEL_50;
      }
    }

LABEL_6:
    if ((v6 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_29:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 7);
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
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_39;
  }

LABEL_5:
  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_50:
  v4 = sub_276CC4788(a3, 5, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_52;
  }

LABEL_51:
  v4 = sub_276CC4788(a3, 6, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_62;
  }

LABEL_52:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v29 = *(this + 8);
  *v4 = 58;
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
LABEL_62:
  v35 = *(this + 1);
  if ((v35 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v35 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t TSS::ThemeRemoveStylePresetCommandArchive::RequiredFieldsByteSizeFallback(TSS::ThemeRemoveStylePresetCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    v7 = TSK::CommandArchive::ByteSizeLong(*(this + 5));
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
  if ((v2 & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v10 = TSP::Reference::ByteSizeLong(*(this + 7));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 0x40) == 0)
    {
      return v3;
    }

    goto LABEL_11;
  }

  v9 = TSP::Reference::ByteSizeLong(*(this + 6));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v2 & 0x40) != 0)
  {
LABEL_11:
    v3 += ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSS::ThemeRemoveStylePresetCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 0x5D) != 0)
  {
    v12 = TSS::ThemeRemoveStylePresetCommandArchive::RequiredFieldsByteSizeFallback(this);
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

    v6 = TSK::CommandArchive::ByteSizeLong(this[5]);
    v7 = TSP::Reference::ByteSizeLong(this[6]);
    v8 = TSP::Reference::ByteSizeLong(this[7]);
    v9.i32[0] = v5 | 1;
    v9.i32[1] = v6 | 1;
    v9.i32[2] = v7 | 1;
    v9.i32[3] = v8 | 1;
    v10.i64[0] = 0x1F0000001FLL;
    v10.i64[1] = 0x1F0000001FLL;
    v11.i64[0] = 0x4900000049;
    v11.i64[1] = 0x4900000049;
    v12 = v6 + v5 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v11, vmovn_s32(veorq_s8(vclzq_s32(v9), v10)), 0x9000900090009), 6uLL)) + ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + v8 + v7 + 5;
  }

  v13 = *(this + 4);
  if ((v13 & 2) != 0)
  {
    v14 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v12 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v13 & 0x20) != 0)
  {
    v17 = TSP::Reference::ByteSizeLong(this[8]);
    v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v12, this + 20);
  }

  else
  {
    *(this + 5) = v12;
    return v12;
  }
}

uint64_t TSS::ThemeRemoveStylePresetCommandArchive::MergeFrom(TSS::ThemeRemoveStylePresetCommandArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::ThemeRemoveStylePresetCommandArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::ThemeRemoveStylePresetCommandArchive::MergeFrom(uint64_t this, const TSS::ThemeRemoveStylePresetCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x7F) != 0)
  {
    if (v5)
    {
      v6 = *(a2 + 3);
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 8);
      if (v7)
      {
        v23 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 4);
    *(v3 + 16) |= 2u;
    v9 = *(v3 + 8);
    if (v9)
    {
      v24 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 4) == 0)
    {
LABEL_22:
      v13 = MEMORY[0x277D80A18];
      if ((v5 & 8) != 0)
      {
        *(v3 + 16) |= 8u;
        v14 = *(v3 + 48);
        if (!v14)
        {
          v15 = *(v3 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x277CA0650](v15);
          *(v3 + 48) = v14;
        }

        if (*(a2 + 6))
        {
          v16 = *(a2 + 6);
        }

        else
        {
          v16 = v13;
        }

        this = TSP::Reference::MergeFrom(v14, v16);
        if ((v5 & 0x10) == 0)
        {
LABEL_24:
          if ((v5 & 0x20) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_45;
        }
      }

      else if ((v5 & 0x10) == 0)
      {
        goto LABEL_24;
      }

      *(v3 + 16) |= 0x10u;
      v17 = *(v3 + 56);
      if (!v17)
      {
        v18 = *(v3 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277CA0650](v18);
        *(v3 + 56) = v17;
      }

      if (*(a2 + 7))
      {
        v19 = *(a2 + 7);
      }

      else
      {
        v19 = v13;
      }

      this = TSP::Reference::MergeFrom(v17, v19);
      if ((v5 & 0x20) == 0)
      {
LABEL_25:
        if ((v5 & 0x40) == 0)
        {
LABEL_27:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_26:
        *(v3 + 72) = *(a2 + 18);
        goto LABEL_27;
      }

LABEL_45:
      *(v3 + 16) |= 0x20u;
      v20 = *(v3 + 64);
      if (!v20)
      {
        v21 = *(v3 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x277CA0650](v21);
        *(v3 + 64) = v20;
      }

      if (*(a2 + 8))
      {
        v22 = *(a2 + 8);
      }

      else
      {
        v22 = v13;
      }

      this = TSP::Reference::MergeFrom(v20, v22);
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_14:
    *(v3 + 16) |= 4u;
    v10 = *(v3 + 40);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277CA0620](v11);
      *(v3 + 40) = v10;
    }

    if (*(a2 + 5))
    {
      v12 = *(a2 + 5);
    }

    else
    {
      v12 = MEMORY[0x277D80718];
    }

    this = TSK::CommandArchive::MergeFrom(v10, v12);
    goto LABEL_22;
  }

  return this;
}

uint64_t *TSS::ThemeRemoveStylePresetCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeRemoveStylePresetCommandArchive::Clear(this);

    return TSS::ThemeRemoveStylePresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::ThemeRemoveStylePresetCommandArchive::CopyFrom(uint64_t *this, const TSS::ThemeRemoveStylePresetCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeRemoveStylePresetCommandArchive::Clear(this);

    return TSS::ThemeRemoveStylePresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::ThemeRemoveStylePresetCommandArchive::IsInitialized(TSS::ThemeRemoveStylePresetCommandArchive *this)
{
  if ((~*(this + 4) & 0x5D) != 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(this + 5));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 8) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(this + 8));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSS::ThemeRemoveStylePresetCommandArchive::InternalSwap(TSS::ThemeRemoveStylePresetCommandArchive *this, TSS::ThemeRemoveStylePresetCommandArchive *a2)
{
  sub_276CC4DA4(this + 1, a2 + 1);
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

uint64_t TSS::ThemeRemoveStylePresetCommandArchive::GetMetadata(TSS::ThemeRemoveStylePresetCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[24];
  v2 = off_2812FAF80[25];
  return result;
}

TSK::CommandArchive *TSS::ThemeMovePresetCommandArchive::clear_super(TSS::ThemeMovePresetCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSS::ThemeMovePresetCommandArchive::clear_theme(TSS::ThemeMovePresetCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::UUID *TSS::ThemeMovePresetCommandArchive::clear_preset_id(TSS::ThemeMovePresetCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSS::ThemeMovePresetCommandArchive *TSS::ThemeMovePresetCommandArchive::ThemeMovePresetCommandArchive(TSS::ThemeMovePresetCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6D40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeMovePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_2885E6D40;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeMovePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSS::ThemeMovePresetCommandArchive *TSS::ThemeMovePresetCommandArchive::ThemeMovePresetCommandArchive(TSS::ThemeMovePresetCommandArchive *this, const TSS::ThemeMovePresetCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6D40;
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
  *(this + 6) = *(a2 + 6);
  return this;
}

void TSS::ThemeMovePresetCommandArchive::~ThemeMovePresetCommandArchive(TSS::ThemeMovePresetCommandArchive *this)
{
  if (this != &TSS::_ThemeMovePresetCommandArchive_default_instance_)
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
      TSP::UUID::~UUID(v4);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
}

{
  TSS::ThemeMovePresetCommandArchive::~ThemeMovePresetCommandArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSS::ThemeMovePresetCommandArchive::default_instance(TSS::ThemeMovePresetCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemeMovePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_ThemeMovePresetCommandArchive_default_instance_;
}

uint64_t *TSS::ThemeMovePresetCommandArchive::Clear(uint64_t *this)
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
      this = TSP::UUID::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  if ((v2 & 0x18) != 0)
  {
    *(v1 + 48) = 0;
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

google::protobuf::internal *TSS::ThemeMovePresetCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v37 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v37) & 1) == 0)
  {
    while (1)
    {
      v8 = (v37 + 1);
      v9 = *v37;
      if ((*v37 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v37, (v10 - 128));
      v37 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_61;
      }

      v8 = TagFallback;
      v9 = v32;
LABEL_7:
      v11 = v9 >> 3;
      if (v9 >> 3 <= 2)
      {
        if (v11 == 1)
        {
          if (v9 != 10)
          {
            goto LABEL_44;
          }

          *(a1 + 16) |= 1u;
          v26 = *(a1 + 24);
          if (!v26)
          {
            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = MEMORY[0x277CA0620](v27);
            LODWORD(v26) = v28;
            *(a1 + 24) = v28;
            v8 = v37;
          }

          v19 = sub_276CE1F64(a3, v26, v8);
        }

        else
        {
          if (v11 != 2 || v9 != 18)
          {
            goto LABEL_44;
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

            v18 = MEMORY[0x277CA0650](v17);
            LODWORD(v16) = v18;
            *(a1 + 32) = v18;
            v8 = v37;
          }

          v19 = sub_276CE1A84(a3, v16, v8);
        }

LABEL_51:
        v37 = v19;
        if (!v19)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }

      if (v11 == 3)
      {
        if (v9 == 26)
        {
          *(a1 + 16) |= 4u;
          v20 = *(a1 + 40);
          if (!v20)
          {
            v21 = *(a1 + 8);
            if (v21)
            {
              v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
            }

            v22 = MEMORY[0x277CA0630](v21);
            LODWORD(v20) = v22;
            *(a1 + 40) = v22;
            v8 = v37;
          }

          v19 = sub_276CE1DC4(a3, v20, v8);
          goto LABEL_51;
        }

LABEL_44:
        if (v9)
        {
          v29 = (v9 & 7) == 4;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          *(a3 + 80) = v9 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_276CD7F50((a1 + 8));
        }

        v19 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_51;
      }

      if (v11 == 4)
      {
        if (v9 != 32)
        {
          goto LABEL_44;
        }

        v6 |= 8u;
        v23 = (v8 + 1);
        LODWORD(v24) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        v25 = *v23;
        v24 = (v24 + (v25 << 7) - 128);
        if ((v25 & 0x80000000) == 0)
        {
          v23 = (v8 + 2);
LABEL_37:
          v37 = v23;
          *(a1 + 48) = v24;
          goto LABEL_52;
        }

        v33 = google::protobuf::internal::VarintParseSlow32(v8, v24);
        v37 = v33;
        *(a1 + 48) = v34;
        if (!v33)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v11 != 5 || v9 != 40)
        {
          goto LABEL_44;
        }

        v6 |= 0x10u;
        v12 = (v8 + 1);
        LODWORD(v13) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v14 = *v12;
        v13 = (v13 + (v14 << 7) - 128);
        if ((v14 & 0x80000000) == 0)
        {
          v12 = (v8 + 2);
LABEL_15:
          v37 = v12;
          *(a1 + 52) = v13;
          goto LABEL_52;
        }

        v35 = google::protobuf::internal::VarintParseSlow32(v8, v13);
        v37 = v35;
        *(a1 + 52) = v36;
        if (!v35)
        {
LABEL_61:
          v37 = 0;
          goto LABEL_2;
        }
      }

LABEL_52:
      v30 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v37))
      {
        goto LABEL_2;
      }
    }

    v8 = (v37 + 2);
LABEL_6:
    v37 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v37;
}

unsigned __int8 *TSS::ThemeMovePresetCommandArchive::_InternalSerialize(TSS::ThemeMovePresetCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSK::CommandArchive::_InternalSerialize(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
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
  *a2 = 18;
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

  a2 = TSP::Reference::_InternalSerialize(v16, v18, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_35:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 5);
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

  a2 = TSP::UUID::_InternalSerialize(v22, v24, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_6;
  }

LABEL_45:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 12);
  *a2 = 32;
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
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      a2[2] = v29;
      a2 += 3;
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    a2[1] = v28;
    a2 += 2;
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_56;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 13);
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

LABEL_56:
  v32 = *(this + 1);
  if ((v32 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v32 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::ThemeMovePresetCommandArchive::RequiredFieldsByteSizeFallback(TSS::ThemeMovePresetCommandArchive *this)
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
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_8;
    }

LABEL_12:
    v3 += ((9 * (__clz(*(this + 12) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_9;
  }

  v7 = TSP::UUID::ByteSizeLong(*(this + 5));
  v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  v2 = *(this + 4);
  if ((v2 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((v2 & 0x10) != 0)
  {
LABEL_9:
    v3 += ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSS::ThemeMovePresetCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 0x1F) != 0)
  {
    v8 = TSS::ThemeMovePresetCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = TSP::UUID::ByteSizeLong(this[5]);
    v5.i32[0] = v2 | 1;
    v5.i32[1] = v3 | 1;
    v5.i32[2] = v4 | 1;
    v5.i32[3] = *(this + 12) | 1;
    v6.i64[0] = 0x1F0000001FLL;
    v6.i64[1] = 0x1F0000001FLL;
    v7.i64[0] = 0x4900000049;
    v7.i64[1] = 0x4900000049;
    v8 = v2 + v4 + v3 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v7, vmovn_s32(veorq_s8(vclzq_s32(v5), v6)), 0x9000900090009), 6uLL)) + ((9 * (__clz(*(this + 13) | 1) ^ 0x1F) + 73) >> 6) + 5;
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

uint64_t TSS::ThemeMovePresetCommandArchive::MergeFrom(TSS::ThemeMovePresetCommandArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::ThemeMovePresetCommandArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::ThemeMovePresetCommandArchive::MergeFrom(uint64_t this, const TSS::ThemeMovePresetCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
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

    this = TSP::Reference::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_28:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA0630](v13);
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
      *(v3 + 52) = *(a2 + 13);
      goto LABEL_10;
    }

LABEL_36:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TSS::ThemeMovePresetCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeMovePresetCommandArchive::Clear(this);

    return TSS::ThemeMovePresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::ThemeMovePresetCommandArchive::CopyFrom(uint64_t *this, const TSS::ThemeMovePresetCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeMovePresetCommandArchive::Clear(this);

    return TSS::ThemeMovePresetCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::ThemeMovePresetCommandArchive::IsInitialized(TSS::ThemeMovePresetCommandArchive *this)
{
  if ((~*(this + 4) & 0x1F) != 0)
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

    result = TSP::UUID::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSS::ThemeMovePresetCommandArchive::InternalSwap(TSS::ThemeMovePresetCommandArchive *this, TSS::ThemeMovePresetCommandArchive *a2)
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
  return result;
}

uint64_t TSS::ThemeMovePresetCommandArchive::GetMetadata(TSS::ThemeMovePresetCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[26];
  v2 = off_2812FAF80[27];
  return result;
}

TSK::CommandArchive *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::clear_super(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::clear_preset(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::clear_replacement_preset(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6DF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplaceStylePresetAndDisconnectStylesCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_2885E6DF0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplaceStylePresetAndDisconnectStylesCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this, const TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E6DF0;
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
  return this;
}

void TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::~ThemeReplaceStylePresetAndDisconnectStylesCommandArchive(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this)
{
  if (this != &TSS::_ThemeReplaceStylePresetAndDisconnectStylesCommandArchive_default_instance_)
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
  TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::~ThemeReplaceStylePresetAndDisconnectStylesCommandArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::default_instance(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemeReplaceStylePresetAndDisconnectStylesCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_ThemeReplaceStylePresetAndDisconnectStylesCommandArchive_default_instance_;
}

uint64_t *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::Clear(uint64_t *this)
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
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276CD8114(v3);
  }

  return this;
}

google::protobuf::internal *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = *(a3 + 92);
  while ((sub_276CD7ED8(a3, &v25) & 1) == 0)
  {
    v6 = (v25 + 1);
    v7 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v25 + 2);
LABEL_6:
      v25 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v8 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
    v7 = v23;
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

          v17 = MEMORY[0x277CA0650](v16);
          LODWORD(v13) = v17;
          *(a1 + 40) = v17;
LABEL_30:
          v6 = v25;
        }

LABEL_31:
        v12 = sub_276CE1A84(a3, v13, v6);
        goto LABEL_37;
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

          v15 = MEMORY[0x277CA0650](v14);
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
        v6 = v25;
      }

      v12 = sub_276CE1F64(a3, v18, v6);
      goto LABEL_37;
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
      return v25;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_276CD7F50((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_37:
    v25 = v12;
    if (!v12)
    {
      return 0;
    }

    v21 = *(a3 + 92);
  }

  return v25;
}

unsigned __int8 *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::_InternalSerialize(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

  a2 = TSP::Reference::_InternalSerialize(v12, v14, a3);
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

    a2 = TSP::Reference::_InternalSerialize(v18, v20, a3);
  }

LABEL_35:
  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::RequiredFieldsByteSizeFallback(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this)
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
  if ((v2 & 4) != 0)
  {
    v6 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v5 = TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(this[3]);
    v3 = TSP::Reference::ByteSizeLong(this[4]);
    v4 = TSP::Reference::ByteSizeLong(this[5]);
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
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

uint64_t TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::MergeFrom(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::MergeFrom(uint64_t this, const TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276CD80C8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      return TSP::Reference::MergeFrom(v13, v15);
    }
  }

  return this;
}

uint64_t *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::Clear(this);

    return TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::CopyFrom(uint64_t *this, const TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::Clear(this);

    return TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::IsInitialized(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this)
{
  if ((~*(this + 4) & 7) != 0)
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

__n128 TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::InternalSwap(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this, TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *a2)
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
  return result;
}

uint64_t TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::GetMetadata(TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[28];
  v2 = off_2812FAF80[29];
  return result;
}

TSP::Reference *TSS::CommandPropertyEntryArchive::clear_tsp_reference(TSS::CommandPropertyEntryArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~2u;
  return result;
}

TSS::CommandPropertyEntryArchive *TSS::CommandPropertyEntryArchive::CommandPropertyEntryArchive(TSS::CommandPropertyEntryArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6EA0;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CommandPropertyEntryArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return this;
}

TSS::CommandPropertyEntryArchive *TSS::CommandPropertyEntryArchive::CommandPropertyEntryArchive(TSS::CommandPropertyEntryArchive *this, const TSS::CommandPropertyEntryArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = (this + 16);
  *this = &unk_2885E6EA0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 11) = 0;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_276CD80C8(this + 1, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v5, (a2 + 16));
  *(this + 6) = MEMORY[0x277D80A90];
  v7 = *(a2 + 10);
  if (v7)
  {
    v8 = *(a2 + 6);
    if (*v4)
    {
      v11 = *(*v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set();
    v7 = *(a2 + 10);
  }

  if ((v7 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  v9 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v9;
  return this;
}

void sub_276CD5ABC(_Unwind_Exception *a1)
{
  MEMORY[0x277CA0980](v2, 0x1081C407D3F2757);
  MEMORY[0x277CA06F0](v1);
  _Unwind_Resume(a1);
}

void TSS::CommandPropertyEntryArchive::~CommandPropertyEntryArchive(TSS::CommandPropertyEntryArchive *this)
{
  v2 = *(this + 6);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA0980](v2, 0x1012C40EC159624);
  }

  if (this != &TSS::_CommandPropertyEntryArchive_default_instance_)
  {
    v3 = *(this + 7);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
  MEMORY[0x277CA06F0](this + 16);
}

{
  TSS::CommandPropertyEntryArchive::~CommandPropertyEntryArchive(this);

  JUMPOUT(0x277CA0980);
}

void *TSS::CommandPropertyEntryArchive::default_instance(TSS::CommandPropertyEntryArchive *this)
{
  if (atomic_load_explicit(scc_info_CommandPropertyEntryArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_CommandPropertyEntryArchive_default_instance_;
}

uint64_t *TSS::CommandPropertyEntryArchive::Clear(TSS::CommandPropertyEntryArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v3 = *(this + 10);
  if ((v3 & 3) != 0)
  {
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    v4 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    if ((*(v4 + 23) & 0x80000000) == 0)
    {
      *v4 = 0;
      *(v4 + 23) = 0;
LABEL_5:
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v3 & 2) != 0)
    {
LABEL_6:
      result = TSP::Reference::Clear(*(this + 7));
    }
  }

LABEL_7:
  if ((v3 & 0x7C) != 0)
  {
    *(this + 8) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
  }

  v6 = *(this + 8);
  v5 = this + 8;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_276CD8114(v5);
  }

  return result;
}

google::protobuf::internal *TSS::CommandPropertyEntryArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v8 = (v39 + 1);
      LODWORD(v9) = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = (v9 + (*v8 << 7) - 128);
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, v9);
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_70;
      }

      v8 = TagFallback;
LABEL_7:
      v10 = v9 >> 3;
      if (v9 >> 3 > 3)
      {
        if (v9 >> 3 > 5)
        {
          if (v10 == 6)
          {
            if (v9 != 50)
            {
              goto LABEL_51;
            }

            *(a1 + 40) |= 1u;
            v26 = *(a1 + 8);
            if (v26)
            {
              v38 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            google::protobuf::internal::ArenaStringPtr::Mutable();
            v20 = google::protobuf::internal::InlineGreedyStringParser();
          }

          else
          {
            if (v10 != 7 || v9 != 58)
            {
              goto LABEL_51;
            }

            *(a1 + 40) |= 2u;
            v17 = *(a1 + 56);
            if (!v17)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v19 = MEMORY[0x277CA0650](v18);
              LODWORD(v17) = v19;
              *(a1 + 56) = v19;
              v8 = v39;
            }

            v20 = sub_276CE1A84(a3, v17, v8);
          }
        }

        else
        {
          if (v10 == 4)
          {
            if (v9 == 37)
            {
              v25 = *v8;
              v11 = (v8 + 4);
              v6 |= 0x20u;
              *(a1 + 76) = v25;
              goto LABEL_41;
            }
          }

          else if (v10 == 5 && v9 == 41)
          {
            v12 = *v8;
            v11 = (v8 + 8);
            v6 |= 0x40u;
            *(a1 + 80) = v12;
LABEL_41:
            v39 = v11;
            goto LABEL_61;
          }

LABEL_51:
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

          if ((v9 - 64) >> 3 > 0x7C8)
          {
            if ((*(a1 + 8) & 1) == 0)
            {
              sub_276CD7F50((a1 + 8));
            }

            v20 = google::protobuf::internal::UnknownFieldParse();
          }

          else
          {
            v20 = google::protobuf::internal::ExtensionSet::ParseField();
          }
        }

        v39 = v20;
        if (!v20)
        {
          goto LABEL_70;
        }

        goto LABEL_61;
      }

      if (v10 == 1)
      {
        if (v9 != 8)
        {
          goto LABEL_51;
        }

        v6 |= 4u;
        v22 = (v8 + 1);
        LODWORD(v23) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_38;
        }

        v24 = *v22;
        v23 = (v23 + (v24 << 7) - 128);
        if ((v24 & 0x80000000) == 0)
        {
          v22 = (v8 + 2);
LABEL_38:
          v39 = v22;
          *(a1 + 64) = v23;
          goto LABEL_61;
        }

        v32 = google::protobuf::internal::VarintParseSlow32(v8, v23);
        v39 = v32;
        *(a1 + 64) = v33;
        if (!v32)
        {
          goto LABEL_70;
        }
      }

      else if (v10 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_51;
        }

        v6 |= 8u;
        v28 = (v8 + 1);
        LODWORD(v27) = *v8;
        if ((v27 & 0x80) == 0)
        {
          goto LABEL_50;
        }

        v29 = *v28;
        v27 = (v27 + (v29 << 7) - 128);
        if ((v29 & 0x80000000) == 0)
        {
          v28 = (v8 + 2);
LABEL_50:
          v39 = v28;
          *(a1 + 68) = v27;
          goto LABEL_61;
        }

        v36 = google::protobuf::internal::VarintParseSlow64(v8, v27);
        v39 = v36;
        *(a1 + 68) = v37;
        if (!v36)
        {
LABEL_70:
          v39 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 3 || v9 != 24)
        {
          goto LABEL_51;
        }

        v6 |= 0x10u;
        v15 = (v8 + 1);
        LODWORD(v14) = *v8;
        if ((v14 & 0x80) == 0)
        {
          goto LABEL_23;
        }

        v16 = *v15;
        v14 = (v14 + (v16 << 7) - 128);
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v8 + 2);
LABEL_23:
          v39 = v15;
          *(a1 + 72) = v14;
          goto LABEL_61;
        }

        v34 = google::protobuf::internal::VarintParseSlow64(v8, v14);
        v39 = v34;
        *(a1 + 72) = v35;
        if (!v34)
        {
          goto LABEL_70;
        }
      }

LABEL_61:
      v31 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v39))
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
  *(a1 + 40) |= v6;
  return v39;
}

uint64_t TSS::CommandPropertyEntryArchive::_InternalSerialize(TSS::CommandPropertyEntryArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 16);
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
        if ((v6 & 8) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
        if ((v6 & 8) != 0)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
      if ((v6 & 8) != 0)
      {
        goto LABEL_20;
      }
    }

LABEL_3:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_4;
    }

LABEL_31:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v15 = *(this + 18);
    *v4 = 24;
    if (v15 > 0x7F)
    {
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
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v4[2] = v16;
        v4 += 3;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v4[1] = v15;
      v4 += 2;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_42;
      }
    }

LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

  if ((v6 & 8) == 0)
  {
    goto LABEL_3;
  }

LABEL_20:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v11 = *(this + 17);
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
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v4[2] = v12;
      v4 += 3;
      if ((v6 & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v4[1] = v11;
    v4 += 2;
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_31;
    }
  }

LABEL_4:
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_5;
  }

LABEL_42:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v19 = *(this + 19);
  *v4 = 37;
  *(v4 + 1) = v19;
  v4 += 5;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_45:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(this + 10);
  *v4 = 41;
  *(v4 + 1) = v20;
  v4 += 9;
  if ((v6 & 1) == 0)
  {
LABEL_7:
    if ((v6 & 2) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_49;
  }

LABEL_48:
  v4 = sub_276CC4788(a3, 6, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) == 0)
  {
    goto LABEL_59;
  }

LABEL_49:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 7);
  *v4 = 58;
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
LABEL_59:
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 8, 2001, v4, a3);
  v28 = *(this + 1);
  if (v28)
  {

    return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8, result, a3);
  }

  return result;
}

uint64_t TSS::CommandPropertyEntryArchive::RequiredFieldsByteSizeFallback(TSS::CommandPropertyEntryArchive *this)
{
  v2 = *(this + 10);
  if ((v2 & 4) != 0)
  {
    result = ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 8) == 0)
    {
      return result;
    }
  }

  v4 = *(this + 17);
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

uint64_t TSS::CommandPropertyEntryArchive::ByteSizeLong(TSS::CommandPropertyEntryArchive *this)
{
  v2 = google::protobuf::internal::ExtensionSet::ByteSize((this + 16));
  v3 = *(this + 10);
  if ((~v3 & 0xC) != 0)
  {
    v8 = TSS::CommandPropertyEntryArchive::RequiredFieldsByteSizeFallback(this) + v2;
  }

  else
  {
    v4 = *(this + 17);
    v5 = v2 + ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
    v6 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v4 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 11;
    }

    v8 = v5 + v7;
  }

  if ((v3 & 3) != 0)
  {
    if (v3)
    {
      v9 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v8 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      v12 = TSP::Reference::ByteSizeLong(*(this + 7));
      v8 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if ((v3 & 0x70) != 0)
  {
    if ((v3 & 0x10) != 0)
    {
      v13 = *(this + 18);
      if (v13 < 0)
      {
        v14 = 11;
      }

      else
      {
        v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v8 += v14;
    }

    v15 = v8 + 5;
    if ((v3 & 0x20) == 0)
    {
      v15 = v8;
    }

    if ((v3 & 0x40) != 0)
    {
      v8 = v15 + 9;
    }

    else
    {
      v8 = v15;
    }
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v8, this + 44);
  }

  else
  {
    *(this + 11) = v8;
    return v8;
  }
}

uint64_t TSS::CommandPropertyEntryArchive::MergeFrom(TSS::CommandPropertyEntryArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::CommandPropertyEntryArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::CommandPropertyEntryArchive::MergeFrom(TSS::CommandPropertyEntryArchive *this, const TSS::CommandPropertyEntryArchive *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_276CD80C8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 10);
  if ((v6 & 0x7F) != 0)
  {
    if (v6)
    {
      v7 = *(a2 + 6);
      *(this + 10) |= 1u;
      v8 = *(this + 1);
      if (v8)
      {
        v12 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = google::protobuf::internal::ArenaStringPtr::Set();
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
    v9 = *(this + 7);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277CA0650](v10);
      *(this + 7) = v9;
    }

    if (*(a2 + 7))
    {
      v11 = *(a2 + 7);
    }

    else
    {
      v11 = MEMORY[0x277D80A18];
    }

    result = TSP::Reference::MergeFrom(v9, v11);
    if ((v6 & 4) == 0)
    {
LABEL_7:
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }

LABEL_25:
    *(this + 16) = *(a2 + 16);
    if ((v6 & 8) == 0)
    {
LABEL_8:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_27;
    }

LABEL_26:
    *(this + 17) = *(a2 + 17);
    if ((v6 & 0x10) == 0)
    {
LABEL_9:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_28;
    }

LABEL_27:
    *(this + 18) = *(a2 + 18);
    if ((v6 & 0x20) == 0)
    {
LABEL_10:
      if ((v6 & 0x40) == 0)
      {
LABEL_12:
        *(this + 10) |= v6;
        return result;
      }

LABEL_11:
      *(this + 10) = *(a2 + 10);
      goto LABEL_12;
    }

LABEL_28:
    *(this + 19) = *(a2 + 19);
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return result;
}

TSS::CommandPropertyEntryArchive *TSS::CommandPropertyEntryArchive::CopyFrom(TSS::CommandPropertyEntryArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::CommandPropertyEntryArchive::Clear(this);

    return TSS::CommandPropertyEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSS::CommandPropertyEntryArchive *TSS::CommandPropertyEntryArchive::CopyFrom(TSS::CommandPropertyEntryArchive *this, const TSS::CommandPropertyEntryArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::CommandPropertyEntryArchive::Clear(this);

    return TSS::CommandPropertyEntryArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSS::CommandPropertyEntryArchive::IsInitialized(TSS::CommandPropertyEntryArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    v3 = *(this + 10);
    if ((~v3 & 0xC) != 0)
    {
      return 0;
    }

    else
    {
      if ((v3 & 2) == 0)
      {
        return 1;
      }

      result = TSP::Reference::IsInitialized(*(this + 7));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 TSS::CommandPropertyEntryArchive::InternalSwap(TSS::CommandPropertyEntryArchive *this, TSS::CommandPropertyEntryArchive *a2)
{
  google::protobuf::internal::ExtensionSet::Swap();
  sub_276CC4DA4(this + 1, a2 + 1);
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 7);
  v7 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v6;
  *(a2 + 8) = v7;
  v8 = *(this + 9);
  v9 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v8;
  *(a2 + 10) = v9;
  return result;
}

uint64_t TSS::CommandPropertyEntryArchive::GetMetadata(TSS::CommandPropertyEntryArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[30];
  v2 = off_2812FAF80[31];
  return result;
}

TSS::CommandPropertyMapArchive *TSS::CommandPropertyMapArchive::CommandPropertyMapArchive(TSS::CommandPropertyMapArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E6F50;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_CommandPropertyMapArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSS::CommandPropertyMapArchive *TSS::CommandPropertyMapArchive::CommandPropertyMapArchive(TSS::CommandPropertyMapArchive *this, const TSS::CommandPropertyMapArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_2885E6F50;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = *(a2 + 6);
    v9 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276CD8820(v5, v9, (v7 + 8), v6, **(this + 4) - *(this + 6));
    v10 = *(this + 6) + v6;
    *(this + 6) = v10;
    v11 = *(this + 4);
    if (*v11 < v10)
    {
      *v11 = v10;
    }
  }

  *(this + 10) = 0;
  v12 = *(a2 + 1);
  if (v12)
  {
    sub_276CD80C8(v4, (v12 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSS::CommandPropertyMapArchive::~CommandPropertyMapArchive(TSS::CommandPropertyMapArchive *this)
{
  sub_276CC409C(this + 1);
  sub_276CD879C(this + 2);
}

{
  TSS::CommandPropertyMapArchive::~CommandPropertyMapArchive(this);

  JUMPOUT(0x277CA0980);
}

void *TSS::CommandPropertyMapArchive::default_instance(TSS::CommandPropertyMapArchive *this)
{
  if (atomic_load_explicit(scc_info_CommandPropertyMapArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSS::_CommandPropertyMapArchive_default_instance_;
}

uint64_t *TSS::CommandPropertyMapArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSS::CommandPropertyEntryArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_276CD8114(v5);
  }

  return this;
}

google::protobuf::internal *TSS::CommandPropertyMapArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v23 = a2;
  v5 = *(a3 + 92);
  if ((sub_276CD7ED8(a3, &v23) & 1) == 0)
  {
    while (1)
    {
      v6 = (v23 + 1);
      v7 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v23, (v8 - 128));
      v23 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v21;
LABEL_6:
      if (v7 == 10)
      {
        v11 = (v6 - 1);
        while (1)
        {
          v12 = (v11 + 1);
          v23 = (v11 + 1);
          v13 = *(a1 + 32);
          if (!v13)
          {
            break;
          }

          v19 = *(a1 + 24);
          v15 = *v13;
          if (v19 < *v13)
          {
            *(a1 + 24) = v19 + 1;
            v16 = *&v13[2 * v19 + 2];
            goto LABEL_23;
          }

          if (v15 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v13 = v15 + 1;
          v16 = google::protobuf::Arena::CreateMaybeMessage<TSS::CommandPropertyEntryArchive>(*(a1 + 16));
          v17 = *(a1 + 24);
          v18 = *(a1 + 32) + 8 * v17;
          *(a1 + 24) = v17 + 1;
          *(v18 + 8) = v16;
          v12 = v23;
LABEL_23:
          v11 = sub_276CE2034(a3, v16, v12);
          v23 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_14;
          }
        }

        v14 = *(a1 + 28);
LABEL_19:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
        v13 = *(a1 + 32);
        v15 = *v13;
        goto LABEL_20;
      }

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
        return v23;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276CD7F50((a1 + 8));
      }

      v23 = google::protobuf::internal::UnknownFieldParse();
      if (!v23)
      {
        return 0;
      }

LABEL_14:
      v10 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v23))
      {
        return v23;
      }
    }

    v6 = (v23 + 2);
LABEL_5:
    v23 = v6;
    goto LABEL_6;
  }

  return v23;
}

unsigned __int8 *TSS::CommandPropertyMapArchive::_InternalSerialize(TSS::CommandPropertyMapArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSS::CommandPropertyEntryArchive::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSS::CommandPropertyMapArchive::ByteSizeLong(TSS::CommandPropertyMapArchive *this)
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
      v7 = TSS::CommandPropertyEntryArchive::ByteSizeLong(v6);
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

uint64_t TSS::CommandPropertyMapArchive::MergeFrom(TSS::CommandPropertyMapArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSS::CommandPropertyMapArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSS::CommandPropertyMapArchive::MergeFrom(uint64_t this, const TSS::CommandPropertyMapArchive *a2)
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
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276CD8820(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSS::CommandPropertyMapArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::CommandPropertyMapArchive::Clear(this);

    return TSS::CommandPropertyMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSS::CommandPropertyMapArchive::CopyFrom(uint64_t *this, const TSS::CommandPropertyMapArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSS::CommandPropertyMapArchive::Clear(this);

    return TSS::CommandPropertyMapArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSS::CommandPropertyMapArchive::IsInitialized(TSS::CommandPropertyMapArchive *this)
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
    IsInitialized = TSS::CommandPropertyEntryArchive::IsInitialized(*(*(this + 4) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSS::CommandPropertyMapArchive::InternalSwap(TSS::CommandPropertyMapArchive *this, TSS::CommandPropertyMapArchive *a2)
{
  sub_276CC4DA4(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t TSS::CommandPropertyMapArchive::GetMetadata(TSS::CommandPropertyMapArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FAF80[32];
  v2 = off_2812FAF80[33];
  return result;
}

TSS::StyleArchive *sub_276CD7290(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD8960(a1, 1);
  TSS::StyleArchive::StyleArchive(v2, a1);
  return v2;
}

TSS::StylesheetArchive_IdentifiedStyleEntry *sub_276CD731C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD89EC(a1, 1);
  TSS::StylesheetArchive_IdentifiedStyleEntry::StylesheetArchive_IdentifiedStyleEntry(v2, a1);
  return v2;
}

TSS::StylesheetArchive_StyleChildrenEntry *sub_276CD73A8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD8A78(a1, 1);
  TSS::StylesheetArchive_StyleChildrenEntry::StylesheetArchive_StyleChildrenEntry(v2, a1);
  return v2;
}

TSS::StylesheetArchive_VersionedStyles *sub_276CD7434(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD8B04(a1, 1);
  TSS::StylesheetArchive_VersionedStyles::StylesheetArchive_VersionedStyles(v2, a1);
  return v2;
}

TSS::StylesheetArchive *sub_276CD74C0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD8B90(a1, 1);
  TSS::StylesheetArchive::StylesheetArchive(v2, a1);
  return v2;
}

TSS::ThemeArchive *sub_276CD754C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD8C1C(a1, 1);
  TSS::ThemeArchive::ThemeArchive(v2, a1);
  return v2;
}

TSS::ApplyThemeCommandArchive *sub_276CD75D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD8CA8(a1, 1);
  TSS::ApplyThemeCommandArchive::ApplyThemeCommandArchive(v2, a1);
  return v2;
}

void *sub_276CD7664(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CD8D34(a1);
}

TSS::StyleUpdatePropertyMapCommandArchive *sub_276CD7730(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD8E34(a1, 1);
  TSS::StyleUpdatePropertyMapCommandArchive::StyleUpdatePropertyMapCommandArchive(v2, a1);
  return v2;
}

uint64_t sub_276CD77BC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CD8EC0(a1);
}

uint64_t sub_276CD7890(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CD8FC8(a1);
}

TSS::ThemeAddStylePresetCommandArchive *sub_276CD7968(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD90D4(a1, 1);
  TSS::ThemeAddStylePresetCommandArchive::ThemeAddStylePresetCommandArchive(v2, a1);
  return v2;
}

TSS::ThemeRemoveStylePresetCommandArchive *sub_276CD79F4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD9160(a1, 1);
  TSS::ThemeRemoveStylePresetCommandArchive::ThemeRemoveStylePresetCommandArchive(v2, a1);
  return v2;
}

uint64_t sub_276CD7A80(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CD91EC(a1);
}

void *sub_276CD7B54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276CD92F4(a1);
}

TSS::CommandPropertyEntryArchive *sub_276CD7C24(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD93F8(a1, 1);
  TSS::CommandPropertyEntryArchive::CommandPropertyEntryArchive(v2, a1);
  return v2;
}

TSS::CommandPropertyMapArchive *sub_276CD7CB0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276CD9484(a1, 1);
  TSS::CommandPropertyMapArchive::CommandPropertyMapArchive(v2, a1);
  return v2;
}

uint64_t sub_276CD7ED8(uint64_t a1, uint64_t *a2)
{
  if (*a2 >= *a1)
  {
    v5 = *a2 - *(a1 + 8);
    if (*(a1 + 28) == v5)
    {
      if (v5 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v2 = 1;
    }

    else
    {
      *a2 = google::protobuf::internal::EpsCopyInputStream::DoneFallback(a1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t *sub_276CD7F50(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  sub_276CD7F98(v2);
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 1;
}

double sub_276CD7F98(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = sub_276CD7FDC(a1, 0);
  result = 0.0;
  *v1 = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t sub_276CD7FDC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2104(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276CD8064);
}

void sub_276CD8064(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  if (v3 != v4)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(v5);
    v3 = *v5;
  }

  if (v3)
  {
    *(a1 + 16) = v3;

    operator delete(v3);
  }
}

uint64_t sub_276CD80C8(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_276CD7F50(a1);
  }

  return MEMORY[0x2821EAB30](v3, a2);
}

uint64_t *sub_276CD8114(uint64_t *a1)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_276CD7F50(a1);
  }

  if (*result != result[1])
  {

    return google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t *sub_276CD8164(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    result = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    result = sub_276CD7F50(a1);
  }

  v4 = *result;
  *result = *a2;
  *a2 = v4;
  v5 = result[1];
  result[1] = a2[1];
  a2[1] = v5;
  v6 = result[2];
  result[2] = a2[2];
  a2[2] = v6;
  return result;
}

uint64_t sub_276CD81CC(uint64_t result, TSP::Reference **a2, TSP::Reference **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276CD827C(v13, v15);
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
      v22 = MEMORY[0x277CA0650](v18);
      result = sub_276CD827C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276CD828C(void *a1)
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
          TSS::StylesheetArchive_IdentifiedStyleEntry::~StylesheetArchive_IdentifiedStyleEntry(*v3);
          MEMORY[0x277CA0980]();
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

void sub_276CD8310(void *a1)
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
          TSS::StylesheetArchive_StyleChildrenEntry::~StylesheetArchive_StyleChildrenEntry(*v3);
          MEMORY[0x277CA0980]();
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

uint64_t sub_276CD8394(uint64_t result, TSS::StylesheetArchive_IdentifiedStyleEntry **a2, TSS::StylesheetArchive_IdentifiedStyleEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276CD8444(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_IdentifiedStyleEntry>(v18);
      result = sub_276CD8444(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276CD8454(uint64_t result, TSS::StylesheetArchive_StyleChildrenEntry **a2, TSS::StylesheetArchive_StyleChildrenEntry **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276CD8504(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSS::StylesheetArchive_StyleChildrenEntry>(v18);
      result = sub_276CD8504(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276CD8514(void *a1)
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
          MEMORY[0x277CA0980]();
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

void sub_276CD8598(void *a1)
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
          TSP::Color::~Color(*v3);
          MEMORY[0x277CA0980]();
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

uint64_t sub_276CD861C(uint64_t result, TSP::UUID **a2, TSP::UUID **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276CD86CC(v13, v15);
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
      v22 = MEMORY[0x277CA0630](v18);
      result = sub_276CD86CC(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276CD86DC(uint64_t result, TSP::Color **a2, TSP::Color **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276CD878C(v13, v15);
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
      v22 = MEMORY[0x277CA0640](v18);
      result = sub_276CD878C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_276CD879C(void *a1)
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
          TSS::CommandPropertyEntryArchive::~CommandPropertyEntryArchive(*v3);
          MEMORY[0x277CA0980]();
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

uint64_t sub_276CD8820(uint64_t result, TSS::CommandPropertyEntryArchive **a2, TSS::CommandPropertyEntryArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_276CD88D0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSS::CommandPropertyEntryArchive>(v18);
      result = sub_276CD88D0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_276CD88E0(TSP::Color *inited, uint64_t a2, uint64_t a3)
{
  v5 = inited;
  if (atomic_load_explicit(scc_info_CommandPropertyEntryArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    inited = google::protobuf::internal::InitSCCImpl();
  }

  v6 = TSP::Color::default_instance(inited);

  return MEMORY[0x2821EAC80](&TSS::_CommandPropertyEntryArchive_default_instance_, v5, a2, 0, a3, v6);
}

uint64_t sub_276CD8960(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2140(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSS::StyleArchive::~StyleArchive);
}

uint64_t sub_276CD89EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2170(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSS::StylesheetArchive_IdentifiedStyleEntry::~StylesheetArchive_IdentifiedStyleEntry);
}

uint64_t sub_276CD8A78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE21A0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSS::StylesheetArchive_StyleChildrenEntry::~StylesheetArchive_StyleChildrenEntry);
}

uint64_t sub_276CD8B04(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE21D0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSS::StylesheetArchive_VersionedStyles::~StylesheetArchive_VersionedStyles);
}

uint64_t sub_276CD8B90(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE220C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 248, TSS::StylesheetArchive::~StylesheetArchive);
}

uint64_t sub_276CD8C1C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2248(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 144, TSS::ThemeArchive::~ThemeArchive);
}

uint64_t sub_276CD8CA8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2284(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSS::ApplyThemeCommandArchive::~ApplyThemeCommandArchive);
}

void *sub_276CD8D34(uint64_t a1)
{
  v2 = sub_276CD8DA8(a1, 1);
  *v2 = &unk_2885E6920;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ApplyThemeChildCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_276CD8DA8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE22B4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSS::ApplyThemeChildCommandArchive::~ApplyThemeChildCommandArchive);
}

uint64_t sub_276CD8E34(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE22E4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSS::StyleUpdatePropertyMapCommandArchive::~StyleUpdatePropertyMapCommandArchive);
}

uint64_t sub_276CD8EC0(uint64_t a1)
{
  v2 = sub_276CD8F3C(a1, 1);
  *v2 = &unk_2885E6A80;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplacePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_276CD8F3C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2314(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSS::ThemeReplacePresetCommandArchive::~ThemeReplacePresetCommandArchive);
}

uint64_t sub_276CD8FC8(uint64_t a1)
{
  v2 = sub_276CD9048(a1, 1);
  *v2 = &unk_2885E6B30;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplaceColorPresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276CD9048(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2344(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSS::ThemeReplaceColorPresetCommandArchive::~ThemeReplaceColorPresetCommandArchive);
}

uint64_t sub_276CD90D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2374(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSS::ThemeAddStylePresetCommandArchive::~ThemeAddStylePresetCommandArchive);
}

uint64_t sub_276CD9160(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE23A4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSS::ThemeRemoveStylePresetCommandArchive::~ThemeRemoveStylePresetCommandArchive);
}

uint64_t sub_276CD91EC(uint64_t a1)
{
  v2 = sub_276CD9268(a1, 1);
  *v2 = &unk_2885E6D40;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ThemeMovePresetCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276CD9268(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE23E0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSS::ThemeMovePresetCommandArchive::~ThemeMovePresetCommandArchive);
}

void *sub_276CD92F4(uint64_t a1)
{
  v2 = sub_276CD936C(a1, 1);
  *v2 = &unk_2885E6DF0;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ThemeReplaceStylePresetAndDisconnectStylesCommandArchive_TSSArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276CD936C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2410(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSS::ThemeReplaceStylePresetAndDisconnectStylesCommandArchive::~ThemeReplaceStylePresetAndDisconnectStylesCommandArchive);
}

uint64_t sub_276CD93F8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE2440(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSS::CommandPropertyEntryArchive::~CommandPropertyEntryArchive);
}

uint64_t sub_276CD9484(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_276CE247C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277CA0660);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSS::CommandPropertyMapArchive::~CommandPropertyMapArchive);
}

uint64_t *sub_276CD9560(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

uint64_t sub_276CD9574()
{
  v0 = google::protobuf::internal::AddDescriptors();
  v1 = TSP::Color::default_instance(v0);
  TSS::color = 8;
  qword_2812FB680 = v1;

  return sub_276CD88E0(8, 11, 0);
}

uint64_t sub_276CD95C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812FB748 = v4;
  TSSSOS::_SpecBoolArchive_default_instance_ = &unk_2885E7530;
  if (atomic_load_explicit(scc_info_SpecBoolArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FB758 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSSSOS::_SpecBoolArchive_default_instance_);
}

uint64_t sub_276CD9678(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812FB768 = v4;
  TSSSOS::_SpecColorArchive_default_instance_ = &unk_2885E75E0;
  if (atomic_load_explicit(scc_info_SpecColorArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FB778 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSSSOS::_SpecColorArchive_default_instance_);
}

uint64_t sub_276CD9728(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812FB788 = v4;
  TSSSOS::_SpecDoubleArchive_default_instance_ = &unk_2885E7690;
  if (atomic_load_explicit(scc_info_SpecDoubleArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FB798 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSSSOS::_SpecDoubleArchive_default_instance_);
}

uint64_t sub_276CD97D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812FB7A8 = v4;
  TSSSOS::_SpecIntegerArchive_default_instance_ = &unk_2885E7740;
  if (atomic_load_explicit(scc_info_SpecIntegerArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FB7B8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSSSOS::_SpecIntegerArchive_default_instance_);
}

uint64_t sub_276CD9888(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.sos.pb.cc", a4);
  *&v4 = 0;
  *algn_2812FB690 = v4;
  TSSSOS::_SpecSetBoolArchive_default_instance_ = &unk_2885E71C0;
  word_2812FB6A0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSSSOS::_SpecSetBoolArchive_default_instance_);
}

uint64_t sub_276CD990C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.sos.pb.cc", a4);
  *&v4 = 0;
  *algn_2812FB6B0 = v4;
  TSSSOS::_SpecSetColorArchive_default_instance_ = &unk_2885E7270;
  if (atomic_load_explicit(scc_info_SpecSetColorArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812FB6C8 = 0;
  qword_2812FB6C0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSSSOS::_SpecSetColorArchive_default_instance_);
}

uint64_t sub_276CD99C0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.sos.pb.cc", a4);
  qword_2812FB6D8 = 0;
  unk_2812FB6E0 = 0;
  TSSSOS::_SpecSetDoubleArchive_default_instance_ = &unk_2885E7320;
  qword_2812FB6E8 = 0;
  byte_2812FB6F0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSSSOS::_SpecSetDoubleArchive_default_instance_);
}

uint64_t sub_276CD9A40(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.sos.pb.cc", a4);
  qword_2812FB700 = 0;
  unk_2812FB708 = 0;
  TSSSOS::_SpecSetIntegerArchive_default_instance_ = &unk_2885E73D0;
  unk_2812FB70D = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSSSOS::_SpecSetIntegerArchive_default_instance_);
}

uint64_t sub_276CD9ABC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.sos.pb.cc", a4);
  TSSSOS::SpecSetStringArchive::SpecSetStringArchive(&TSSSOS::_SpecSetStringArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSSSOS::_SpecSetStringArchive_default_instance_);
}

uint64_t sub_276CD9B2C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSSArchives.sos.pb.cc", a4);
  *&v4 = 0;
  unk_2812FB7C8 = v4;
  TSSSOS::_SpecStringArchive_default_instance_ = &unk_2885E77F0;
  if (atomic_load_explicit(scc_info_SpecStringArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812FB7D8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSSSOS::_SpecStringArchive_default_instance_);
}

uint64_t TSSSOS::SpecSetBoolArchive::SpecSetBoolArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2885E71C0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

{
  *result = &unk_2885E71C0;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

TSSSOS::SpecSetBoolArchive *TSSSOS::SpecSetBoolArchive::SpecSetBoolArchive(TSSSOS::SpecSetBoolArchive *this, const TSSSOS::SpecSetBoolArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E71C0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276CD80C8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 12) = *(a2 + 12);
  return this;
}

void TSSSOS::SpecSetBoolArchive::~SpecSetBoolArchive(TSSSOS::SpecSetBoolArchive *this)
{
  sub_276CC409C(this + 1);
}

{
  sub_276CC409C(this + 1);
}

{
  sub_276CC409C(this + 1);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSSSOS::SpecSetBoolArchive::default_instance(TSSSOS::SpecSetBoolArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetBoolArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSSSOS::_SpecSetBoolArchive_default_instance_;
}

uint64_t *TSSSOS::SpecSetBoolArchive::Clear(TSSSOS::SpecSetBoolArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  *(result + 8) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276CD8114(result);
  }

  return result;
}

google::protobuf::internal *TSSSOS::SpecSetBoolArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v8 = (v26 + 1);
      v9 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v10 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_38;
      }

      v8 = TagFallback;
      v9 = v21;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v14 = (v8 + 1);
        v13 = *v8;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = (v8 + 2);
LABEL_24:
          v26 = v14;
          *(a1 + 25) = v13 != 0;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v8, v13);
        v26 = v22;
        *(a1 + 25) = v23 != 0;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
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
            sub_276CD7F50((a1 + 8));
          }

          v26 = google::protobuf::internal::UnknownFieldParse();
          if (!v26)
          {
LABEL_38:
            v26 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v17 = (v8 + 1);
        v16 = *v8;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_28:
          v26 = v17;
          *(a1 + 24) = v16 != 0;
          goto LABEL_29;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v26 = v24;
        *(a1 + 24) = v25 != 0;
        if (!v24)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      v19 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v8 = (v26 + 2);
LABEL_6:
    v26 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v26;
}

unsigned __int8 *TSSSOS::SpecSetBoolArchive::_InternalSerialize(TSSSOS::SpecSetBoolArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 24);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 25);
    *a2 = 16;
    a2[1] = v7;
    a2 += 2;
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSSSOS::SpecSetBoolArchive::ByteSizeLong(TSSSOS::SpecSetBoolArchive *this)
{
  v3 = *(this + 8);
  v1 = this + 8;
  v2 = v3;
  if ((~*(v1 + 2) & 3) != 0)
  {
    v4 = 2 * (*(v1 + 2) & 1) + (*(v1 + 2) & 2u);
  }

  else
  {
    v4 = 4;
  }

  if (v2)
  {
    return MEMORY[0x2821EADD8](v1, v4, v1 + 12);
  }

  *(v1 + 3) = v4;
  return v4;
}

uint64_t TSSSOS::SpecSetBoolArchive::MergeFrom(TSSSOS::SpecSetBoolArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSSSOS::SpecSetBoolArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSSSOS::SpecSetBoolArchive::MergeFrom(uint64_t this, const TSSSOS::SpecSetBoolArchive *a2)
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
      *(v3 + 24) = *(a2 + 24);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 25) = *(a2 + 25);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSSSOS::SpecSetBoolArchive *TSSSOS::SpecSetBoolArchive::CopyFrom(TSSSOS::SpecSetBoolArchive *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 8) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_276CD8114(v5);
    }

    return TSSSOS::SpecSetBoolArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

const TSSSOS::SpecSetBoolArchive *TSSSOS::SpecSetBoolArchive::CopyFrom(const TSSSOS::SpecSetBoolArchive *this, const TSSSOS::SpecSetBoolArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 8;
    *(v5 + 8) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_276CD8114(v5);
    }

    return TSSSOS::SpecSetBoolArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecSetBoolArchive::InternalSwap(TSSSOS::SpecSetBoolArchive *this, TSSSOS::SpecSetBoolArchive *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  LOWORD(v5) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  return result;
}

uint64_t TSSSOS::SpecSetBoolArchive::GetMetadata(TSSSOS::SpecSetBoolArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = *off_2812FB118;
  v2 = off_2812FB118[1];
  return result;
}

TSP::Color *TSSSOS::SpecSetColorArchive::clear_color(TSSSOS::SpecSetColorArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSSSOS::SpecSetColorArchive *TSSSOS::SpecSetColorArchive::SpecSetColorArchive(TSSSOS::SpecSetColorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885E7270;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetColorArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885E7270;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_SpecSetColorArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSSSOS::SpecSetColorArchive *TSSSOS::SpecSetColorArchive::SpecSetColorArchive(TSSSOS::SpecSetColorArchive *this, const TSSSOS::SpecSetColorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E7270;
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
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSSSOS::SpecSetColorArchive::~SpecSetColorArchive(TSSSOS::SpecSetColorArchive *this)
{
  if (this != &TSSSOS::_SpecSetColorArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Color::~Color(v2);
      MEMORY[0x277CA0980]();
    }
  }

  sub_276CC409C(this + 1);
}

{
  TSSSOS::SpecSetColorArchive::~SpecSetColorArchive(this);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSSSOS::SpecSetColorArchive::default_instance(TSSSOS::SpecSetColorArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetColorArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSSSOS::_SpecSetColorArchive_default_instance_;
}

uint64_t *TSSSOS::SpecSetColorArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Color::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276CD8114(v2);
  }

  return this;
}

google::protobuf::internal *TSSSOS::SpecSetColorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v25) & 1) == 0)
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

            v19 = MEMORY[0x277CA0640](v18);
            LODWORD(v17) = v19;
            *(a1 + 24) = v19;
            v8 = v25;
          }

          v13 = sub_276CE1E94(a3, v17, v8);
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
            sub_276CD7F50((a1 + 8));
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
        *(a1 + 32) = v14 != 0;
        goto LABEL_30;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v8, v14);
      v25 = v23;
      *(a1 + 32) = v24 != 0;
      if (!v23)
      {
LABEL_37:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_30:
      v20 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v25))
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

unsigned __int8 *TSSSOS::SpecSetColorArchive::_InternalSerialize(TSSSOS::SpecSetColorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Color::_InternalSerialize(v6, v8, a3);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(this + 32);
    *a2 = 16;
    a2[1] = v12;
    a2 += 2;
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSSSOS::SpecSetColorArchive::ByteSizeLong(TSSSOS::SpecSetColorArchive *this)
{
  v2 = *(this + 4);
  v3 = v2 & 2;
  if (v2)
  {
    v4 = TSP::Color::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSSSOS::SpecSetColorArchive::MergeFrom(TSSSOS::SpecSetColorArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSSSOS::SpecSetColorArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSSSOS::SpecSetColorArchive::MergeFrom(uint64_t this, const TSSSOS::SpecSetColorArchive *a2)
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

        v6 = MEMORY[0x277CA0640](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809E8];
      }

      this = TSP::Color::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSSSOS::SpecSetColorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecSetColorArchive::Clear(this);

    return TSSSOS::SpecSetColorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecSetColorArchive::CopyFrom(uint64_t *this, const TSSSOS::SpecSetColorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecSetColorArchive::Clear(this);

    return TSSSOS::SpecSetColorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSSSOS::SpecSetColorArchive::IsInitialized(TSSSOS::SpecSetColorArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 2) == 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
  {
    return 1;
  }

  result = TSP::Color::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *TSSSOS::SpecSetColorArchive::InternalSwap(TSSSOS::SpecSetColorArchive *this, TSSSOS::SpecSetColorArchive *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t TSSSOS::SpecSetColorArchive::GetMetadata(TSSSOS::SpecSetColorArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FB118[2];
  v2 = off_2812FB118[3];
  return result;
}

uint64_t TSSSOS::SpecSetDoubleArchive::SpecSetDoubleArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2885E7320;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *result = &unk_2885E7320;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSSSOS::SpecSetDoubleArchive *TSSSOS::SpecSetDoubleArchive::SpecSetDoubleArchive(TSSSOS::SpecSetDoubleArchive *this, const TSSSOS::SpecSetDoubleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E7320;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276CD80C8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 3);
  *(this + 32) = *(a2 + 32);
  *(this + 3) = v6;
  return this;
}

void TSSSOS::SpecSetDoubleArchive::~SpecSetDoubleArchive(TSSSOS::SpecSetDoubleArchive *this)
{
  sub_276CC409C(this + 1);
}

{
  sub_276CC409C(this + 1);
}

{
  sub_276CC409C(this + 1);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSSSOS::SpecSetDoubleArchive::default_instance(TSSSOS::SpecSetDoubleArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetDoubleArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSSSOS::_SpecSetDoubleArchive_default_instance_;
}

uint64_t *TSSSOS::SpecSetDoubleArchive::Clear(TSSSOS::SpecSetDoubleArchive *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 32) = 0;
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276CD8114(result);
  }

  return result;
}

google::protobuf::internal *TSSSOS::SpecSetDoubleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v21) & 1) == 0)
  {
    while (1)
    {
      v8 = (v21 + 1);
      v9 = *v21;
      if ((*v21 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v10 - 128));
      v21 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_33;
      }

      v8 = TagFallback;
      v9 = v18;
LABEL_7:
      if (v9 >> 3 != 2)
      {
        if (v9 >> 3 == 1 && v9 == 9)
        {
          v6 |= 1u;
          *(a1 + 24) = *v8;
          v21 = (v8 + 8);
          goto LABEL_26;
        }

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
          sub_276CD7F50((a1 + 8));
        }

        v21 = google::protobuf::internal::UnknownFieldParse();
        if (!v21)
        {
LABEL_33:
          v21 = 0;
          goto LABEL_2;
        }

        goto LABEL_26;
      }

      if (v9 != 16)
      {
        goto LABEL_12;
      }

      v6 |= 2u;
      v14 = (v8 + 1);
      v13 = *v8;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v8 + 2);
LABEL_24:
        v21 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_26;
      }

      v19 = google::protobuf::internal::VarintParseSlow64(v8, v13);
      v21 = v19;
      *(a1 + 32) = v20 != 0;
      if (!v19)
      {
        goto LABEL_33;
      }

LABEL_26:
      v16 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v21))
      {
        goto LABEL_2;
      }
    }

    v8 = (v21 + 2);
LABEL_6:
    v21 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v21;
}

unsigned __int8 *TSSSOS::SpecSetDoubleArchive::_InternalSerialize(TSSSOS::SpecSetDoubleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 3);
    *a2 = 9;
    *(a2 + 1) = v6;
    a2 += 9;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 32);
    *a2 = 16;
    a2[1] = v7;
    a2 += 2;
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t TSSSOS::SpecSetDoubleArchive::RequiredFieldsByteSizeFallback(TSSSOS::SpecSetDoubleArchive *this)
{
  v1 = *(this + 4);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  return v2 | v1 & 2;
}

uint64_t TSSSOS::SpecSetDoubleArchive::ByteSizeLong(TSSSOS::SpecSetDoubleArchive *this)
{
  v1 = *(this + 4);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  v3 = v2 | v1 & 2;
  if ((~v1 & 3) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 11;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v4, this + 20);
  }

  *(this + 5) = v4;
  return v4;
}

uint64_t TSSSOS::SpecSetDoubleArchive::MergeFrom(TSSSOS::SpecSetDoubleArchive *this, const Message *lpsrc)
{
  v4 = *lpsrc->var0;
  if (v5)
  {

    return TSSSOS::SpecSetDoubleArchive::MergeFrom(this, v5);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSSSOS::SpecSetDoubleArchive::MergeFrom(uint64_t this, const TSSSOS::SpecSetDoubleArchive *a2)
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
      *(v3 + 24) = *(a2 + 3);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSSSOS::SpecSetDoubleArchive *TSSSOS::SpecSetDoubleArchive::CopyFrom(TSSSOS::SpecSetDoubleArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecSetDoubleArchive::Clear(this);

    return TSSSOS::SpecSetDoubleArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSSSOS::SpecSetDoubleArchive *TSSSOS::SpecSetDoubleArchive::CopyFrom(TSSSOS::SpecSetDoubleArchive *this, const TSSSOS::SpecSetDoubleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSSSOS::SpecSetDoubleArchive::Clear(this);

    return TSSSOS::SpecSetDoubleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSSSOS::SpecSetDoubleArchive::InternalSwap(TSSSOS::SpecSetDoubleArchive *this, TSSSOS::SpecSetDoubleArchive *a2)
{
  result = sub_276CC4DA4(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOBYTE(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  return result;
}

uint64_t TSSSOS::SpecSetDoubleArchive::GetMetadata(TSSSOS::SpecSetDoubleArchive *this)
{
  google::protobuf::internal::AssignDescriptors();
  result = off_2812FB118[4];
  v2 = off_2812FB118[5];
  return result;
}

void *TSSSOS::SpecSetIntegerArchive::SpecSetIntegerArchive(void *result, uint64_t a2)
{
  *result = &unk_2885E73D0;
  result[1] = a2;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

{
  *result = &unk_2885E73D0;
  result[1] = a2;
  result[2] = 0;
  *(result + 21) = 0;
  return result;
}

TSSSOS::SpecSetIntegerArchive *TSSSOS::SpecSetIntegerArchive::SpecSetIntegerArchive(TSSSOS::SpecSetIntegerArchive *this, const TSSSOS::SpecSetIntegerArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885E73D0;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276CD80C8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 6);
  *(this + 28) = *(a2 + 28);
  *(this + 6) = v6;
  return this;
}

void TSSSOS::SpecSetIntegerArchive::~SpecSetIntegerArchive(TSSSOS::SpecSetIntegerArchive *this)
{
  sub_276CC409C(this + 1);
}

{
  sub_276CC409C(this + 1);
}

{
  sub_276CC409C(this + 1);

  JUMPOUT(0x277CA0980);
}

uint64_t *TSSSOS::SpecSetIntegerArchive::default_instance(TSSSOS::SpecSetIntegerArchive *this)
{
  if (atomic_load_explicit(scc_info_SpecSetIntegerArchive_TSSArchives_2esos_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSSSOS::_SpecSetIntegerArchive_default_instance_;
}

uint64_t *TSSSOS::SpecSetIntegerArchive::Clear(TSSSOS::SpecSetIntegerArchive *this)
{
  if ((*(this + 16) & 3) != 0)
  {
    *(this + 28) = 0;
    *(this + 6) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276CD8114(result);
  }

  return result;
}

google::protobuf::internal *TSSSOS::SpecSetIntegerArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = *(a3 + 92);
  v6 = 0;
  if ((sub_276CD7ED8(a3, &v26) & 1) == 0)
  {
    while (1)
    {
      v8 = (v26 + 1);
      v9 = *v26;
      if ((*v26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v10 = v9 + (*v8 << 7);
      v9 = v10 - 128;
      if ((*v8 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v26, (v10 - 128));
      v26 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_38;
      }

      v8 = TagFallback;
      v9 = v21;
LABEL_7:
      if (v9 >> 3 == 2)
      {
        if (v9 != 16)
        {
          goto LABEL_12;
        }

        v6 |= 2u;
        v14 = (v8 + 1);
        v13 = *v8;
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v15 = *v14;
        v13 = (v15 << 7) + v13 - 128;
        if ((v15 & 0x80000000) == 0)
        {
          v14 = (v8 + 2);
LABEL_24:
          v26 = v14;
          *(a1 + 28) = v13 != 0;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v8, v13);
        v26 = v22;
        *(a1 + 28) = v23 != 0;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v9 >> 3 != 1 || v9 != 8)
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
            sub_276CD7F50((a1 + 8));
          }

          v26 = google::protobuf::internal::UnknownFieldParse();
          if (!v26)
          {
LABEL_38:
            v26 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v6 |= 1u;
        v17 = (v8 + 1);
        LODWORD(v16) = *v8;
        if ((v16 & 0x80) == 0)
        {
          goto LABEL_28;
        }

        v18 = *v17;
        v16 = (v16 + (v18 << 7) - 128);
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v8 + 2);
LABEL_28:
          v26 = v17;
          *(a1 + 24) = v16;
          goto LABEL_29;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v8, v16);
        v26 = v24;
        *(a1 + 24) = v25;
        if (!v24)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      v19 = *(a3 + 92);
      if (sub_276CD7ED8(a3, &v26))
      {
        goto LABEL_2;
      }
    }

    v8 = (v26 + 2);
LABEL_6:
    v26 = v8;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v6;
  return v26;
}