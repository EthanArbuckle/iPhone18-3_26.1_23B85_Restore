unsigned __int8 *TSD::FreehandDrawingContentDescription::_InternalSerialize(TSD::FreehandDrawingContentDescription *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::DrawableContentDescription::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 32);
    *a2 = 16;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::FreehandDrawingContentDescription::ByteSizeLong(TSD::FreehandDrawingContentDescription *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::DrawableContentDescription::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3 + (v2 & 2);
    return v3 + (v2 & 2);
  }
}

uint64_t TSD::FreehandDrawingContentDescription::MergeFrom(TSD::FreehandDrawingContentDescription *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::FreehandDrawingContentDescription::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::FreehandDrawingContentDescription::MergeFrom(uint64_t this, const TSD::FreehandDrawingContentDescription *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableContentDescription>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_DrawableContentDescription_default_instance_;
      }

      this = TSD::DrawableContentDescription::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSD::FreehandDrawingContentDescription::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingContentDescription::Clear(this);

    return TSD::FreehandDrawingContentDescription::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::FreehandDrawingContentDescription::CopyFrom(uint64_t *this, const TSD::FreehandDrawingContentDescription *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingContentDescription::Clear(this);

    return TSD::FreehandDrawingContentDescription::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::FreehandDrawingContentDescription::InternalSwap(TSD::FreehandDrawingContentDescription *this, TSD::FreehandDrawingContentDescription *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
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

TSP::Color *TSD::FreehandDrawingToolkitUIState::clear_current_color(TSD::FreehandDrawingToolkitUIState *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Color *TSD::FreehandDrawingToolkitUIState::clear_pen_tool_color(TSD::FreehandDrawingToolkitUIState *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Color *TSD::FreehandDrawingToolkitUIState::clear_pencil_tool_color(TSD::FreehandDrawingToolkitUIState *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Color *TSD::FreehandDrawingToolkitUIState::clear_crayon_tool_color(TSD::FreehandDrawingToolkitUIState *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Color *TSD::FreehandDrawingToolkitUIState::clear_fill_tool_color(TSD::FreehandDrawingToolkitUIState *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSD::FreehandDrawingToolkitUIState *TSD::FreehandDrawingToolkitUIState::FreehandDrawingToolkitUIState(TSD::FreehandDrawingToolkitUIState *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577B88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingToolkitUIState_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 85) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288577B88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingToolkitUIState_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 85) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::FreehandDrawingToolkitUIState *TSD::FreehandDrawingToolkitUIState::FreehandDrawingToolkitUIState(TSD::FreehandDrawingToolkitUIState *this, const TSD::FreehandDrawingToolkitUIState *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577B88;
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
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  *(this + 93) = *(a2 + 93);
  *(this + 4) = v7;
  *(this + 5) = v8;
  return this;
}

void TSD::FreehandDrawingToolkitUIState::~FreehandDrawingToolkitUIState(TSD::FreehandDrawingToolkitUIState *this)
{
  sub_2767532F4(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::FreehandDrawingToolkitUIState::~FreehandDrawingToolkitUIState(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_2767532F4(uint64_t *result)
{
  if (result != &TSD::_FreehandDrawingToolkitUIState_default_instance_)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      TSP::Color::~Color(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Color::~Color(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Color::~Color(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSP::Color::~Color(v5);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[7];
    if (result)
    {
      TSP::Color::~Color(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::FreehandDrawingToolkitUIState::default_instance(TSD::FreehandDrawingToolkitUIState *this)
{
  if (atomic_load_explicit(scc_info_FreehandDrawingToolkitUIState_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_FreehandDrawingToolkitUIState_default_instance_;
}

uint64_t *TSD::FreehandDrawingToolkitUIState::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    goto LABEL_8;
  }

  if (v2)
  {
    this = TSP::Color::Clear(this[3]);
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

LABEL_18:
      this = TSP::Color::Clear(*(v1 + 40));
      if ((v2 & 8) == 0)
      {
LABEL_6:
        if ((v2 & 0x10) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSP::Color::Clear(*(v1 + 32));
  if ((v2 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_5:
  if ((v2 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  this = TSP::Color::Clear(*(v1 + 48));
  if ((v2 & 0x10) != 0)
  {
LABEL_7:
    this = TSP::Color::Clear(*(v1 + 56));
  }

LABEL_8:
  if ((v2 & 0xE0) != 0)
  {
    *(v1 + 72) = 0;
    *(v1 + 64) = 0;
  }

  if ((v2 & 0x7F00) != 0)
  {
    *(v1 + 84) = 0;
    *(v1 + 76) = 0;
    *(v1 + 100) = 0;
    *(v1 + 92) = 0;
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

google::protobuf::internal *TSD::FreehandDrawingToolkitUIState::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v42 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v42) & 1) == 0)
  {
    while (1)
    {
      v7 = (v42 + 1);
      v8 = *v42;
      if (*v42 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v42, (v9 - 128));
          v42 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_83;
          }

          v7 = TagFallback;
          v8 = v14;
          goto LABEL_7;
        }

        v7 = (v42 + 2);
      }

      v42 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 10)
          {
            goto LABEL_70;
          }

          *(a1 + 16) |= 1u;
          v10 = *(a1 + 24);
          if (v10)
          {
            goto LABEL_55;
          }

          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C9BAF0](v11);
          LODWORD(v10) = v12;
          *(a1 + 24) = v12;
          goto LABEL_54;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_70;
          }

          v28 = (v7 + 1);
          v27 = *v7;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_44;
          }

          v29 = *v28;
          v27 = (v29 << 7) + v27 - 128;
          if (v29 < 0)
          {
            v42 = google::protobuf::internal::VarintParseSlow64(v7, v27);
            if (!v42)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v28 = (v7 + 2);
LABEL_44:
            v42 = v28;
          }

          if (v27 > 5)
          {
            sub_27680D340();
          }

          else
          {
            *(a1 + 16) |= 0x20u;
            *(a1 + 64) = v27;
          }

          goto LABEL_68;
        case 3u:
          if (v8 != 29)
          {
            goto LABEL_70;
          }

          v24 = *v7;
          v19 = (v7 + 4);
          v5 |= 0x40u;
          *(a1 + 68) = v24;
          goto LABEL_67;
        case 4u:
          if (v8 != 37)
          {
            goto LABEL_70;
          }

          v25 = *v7;
          v19 = (v7 + 4);
          v5 |= 0x80u;
          *(a1 + 72) = v25;
          goto LABEL_67;
        case 5u:
          if (v8 != 45)
          {
            goto LABEL_70;
          }

          v20 = *v7;
          v19 = (v7 + 4);
          v5 |= 0x100u;
          *(a1 + 76) = v20;
          goto LABEL_67;
        case 6u:
          if (v8 != 53)
          {
            goto LABEL_70;
          }

          v30 = *v7;
          v19 = (v7 + 4);
          v5 |= 0x200u;
          *(a1 + 80) = v30;
          goto LABEL_67;
        case 7u:
          if (v8 != 61)
          {
            goto LABEL_70;
          }

          v34 = *v7;
          v19 = (v7 + 4);
          v5 |= 0x400u;
          *(a1 + 84) = v34;
          goto LABEL_67;
        case 8u:
          if (v8 != 69)
          {
            goto LABEL_70;
          }

          v26 = *v7;
          v19 = (v7 + 4);
          v5 |= 0x800u;
          *(a1 + 88) = v26;
          goto LABEL_67;
        case 9u:
          if (v8 != 77)
          {
            goto LABEL_70;
          }

          v38 = *v7;
          v19 = (v7 + 4);
          v5 |= 0x1000u;
          *(a1 + 92) = v38;
          goto LABEL_67;
        case 0xAu:
          if (v8 != 85)
          {
            goto LABEL_70;
          }

          v23 = *v7;
          v19 = (v7 + 4);
          v5 |= 0x2000u;
          *(a1 + 96) = v23;
LABEL_67:
          v42 = v19;
          goto LABEL_68;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_70;
          }

          v5 |= 0x4000u;
          v36 = (v7 + 1);
          v35 = *v7;
          if ((v35 & 0x8000000000000000) == 0)
          {
            goto LABEL_64;
          }

          v37 = *v36;
          v35 = (v37 << 7) + v35 - 128;
          if (v37 < 0)
          {
            v40 = google::protobuf::internal::VarintParseSlow64(v7, v35);
            v42 = v40;
            *(a1 + 100) = v41 != 0;
            if (!v40)
            {
              goto LABEL_83;
            }
          }

          else
          {
            v36 = (v7 + 2);
LABEL_64:
            v42 = v36;
            *(a1 + 100) = v35 != 0;
          }

          goto LABEL_68;
        case 0xCu:
          if (v8 != 98)
          {
            goto LABEL_70;
          }

          *(a1 + 16) |= 2u;
          v10 = *(a1 + 32);
          if (v10)
          {
            goto LABEL_55;
          }

          v17 = *(a1 + 8);
          if (v17)
          {
            v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
          }

          v18 = MEMORY[0x277C9BAF0](v17);
          LODWORD(v10) = v18;
          *(a1 + 32) = v18;
          goto LABEL_54;
        case 0xDu:
          if (v8 != 106)
          {
            goto LABEL_70;
          }

          *(a1 + 16) |= 4u;
          v10 = *(a1 + 40);
          if (v10)
          {
            goto LABEL_55;
          }

          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C9BAF0](v21);
          LODWORD(v10) = v22;
          *(a1 + 40) = v22;
          goto LABEL_54;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_70;
          }

          *(a1 + 16) |= 8u;
          v10 = *(a1 + 48);
          if (v10)
          {
            goto LABEL_55;
          }

          v31 = *(a1 + 8);
          if (v31)
          {
            v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
          }

          v32 = MEMORY[0x277C9BAF0](v31);
          LODWORD(v10) = v32;
          *(a1 + 48) = v32;
          goto LABEL_54;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_70;
          }

          *(a1 + 16) |= 0x10u;
          v10 = *(a1 + 56);
          if (v10)
          {
            goto LABEL_55;
          }

          v15 = *(a1 + 8);
          if (v15)
          {
            v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
          }

          v16 = MEMORY[0x277C9BAF0](v15);
          LODWORD(v10) = v16;
          *(a1 + 56) = v16;
LABEL_54:
          v7 = v42;
LABEL_55:
          v33 = sub_27680B3AC(a3, v10, v7);
          goto LABEL_56;
        default:
LABEL_70:
          if (v8)
          {
            v39 = (v8 & 7) == 4;
          }

          else
          {
            v39 = 1;
          }

          if (v39)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v33 = google::protobuf::internal::UnknownFieldParse();
LABEL_56:
          v42 = v33;
          if (!v33)
          {
LABEL_83:
            v42 = 0;
            goto LABEL_2;
          }

LABEL_68:
          if (sub_27670AF08(a3, &v42))
          {
            goto LABEL_2;
          }

          break;
      }
    }
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v42;
}

unsigned __int8 *TSD::FreehandDrawingToolkitUIState::_InternalSerialize(TSD::FreehandDrawingToolkitUIState *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 16);
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
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
        if ((v6 & 0x40) != 0)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_38;
      }
    }

LABEL_4:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_41;
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

  a2 = TSP::Color::_InternalSerialize(v7, v9, a3);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  if ((v6 & 0x40) == 0)
  {
    goto LABEL_4;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 17);
  *a2 = 29;
  *(a2 + 1) = v17;
  a2 += 5;
  if ((v6 & 0x80) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_41:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 18);
  *a2 = 37;
  *(a2 + 1) = v18;
  a2 += 5;
  if ((v6 & 0x100) == 0)
  {
LABEL_6:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 19);
  *a2 = 45;
  *(a2 + 1) = v19;
  a2 += 5;
  if ((v6 & 0x200) == 0)
  {
LABEL_7:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_50;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 20);
  *a2 = 53;
  *(a2 + 1) = v20;
  a2 += 5;
  if ((v6 & 0x400) == 0)
  {
LABEL_8:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 21);
  *a2 = 61;
  *(a2 + 1) = v21;
  a2 += 5;
  if ((v6 & 0x800) == 0)
  {
LABEL_9:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_56;
  }

LABEL_53:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 22);
  *a2 = 69;
  *(a2 + 1) = v22;
  a2 += 5;
  if ((v6 & 0x1000) == 0)
  {
LABEL_10:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_56:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v23 = *(this + 23);
  *a2 = 77;
  *(a2 + 1) = v23;
  a2 += 5;
  if ((v6 & 0x2000) == 0)
  {
LABEL_11:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_59:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(this + 24);
  *a2 = 85;
  *(a2 + 1) = v24;
  a2 += 5;
  if ((v6 & 0x4000) == 0)
  {
LABEL_12:
    if ((v6 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_65;
  }

LABEL_62:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 100);
  *a2 = 88;
  a2[1] = v25;
  a2 += 2;
  if ((v6 & 2) == 0)
  {
LABEL_13:
    if ((v6 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_75;
  }

LABEL_65:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v26 = *(this + 4);
  *a2 = 98;
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

  a2 = TSP::Color::_InternalSerialize(v26, v28, a3);
  if ((v6 & 4) == 0)
  {
LABEL_14:
    if ((v6 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_85;
  }

LABEL_75:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v32 = *(this + 5);
  *a2 = 106;
  v33 = *(v32 + 5);
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

  a2 = TSP::Color::_InternalSerialize(v32, v34, a3);
  if ((v6 & 8) == 0)
  {
LABEL_15:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_95;
  }

LABEL_85:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v38 = *(this + 6);
  *a2 = 114;
  v39 = *(v38 + 5);
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

  a2 = TSP::Color::_InternalSerialize(v38, v40, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_95:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v44 = *(this + 7);
    *a2 = 122;
    v45 = *(v44 + 5);
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

    a2 = TSP::Color::_InternalSerialize(v44, v46, a3);
  }

LABEL_105:
  v50 = *(this + 1);
  if ((v50 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v50 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::FreehandDrawingToolkitUIState::ByteSizeLong(TSD::FreehandDrawingToolkitUIState *this)
{
  v2 = *(this + 4);
  if (!*(this + 4))
  {
    v4 = 0;
    goto LABEL_25;
  }

  if (v2)
  {
    v5 = TSP::Color::ByteSizeLong(*(this + 3));
    v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    v6 = TSP::Color::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSP::Color::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v8 = TSP::Color::ByteSizeLong(*(this + 6));
  v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_16:
    v10 = *(this + 16);
    if (v10 < 0)
    {
      v11 = 11;
    }

    else
    {
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v11;
    goto LABEL_20;
  }

LABEL_15:
  v9 = TSP::Color::ByteSizeLong(*(this + 7));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_20:
  v12 = v3 + 5;
  if ((v2 & 0x40) == 0)
  {
    v12 = v3;
  }

  if ((v2 & 0x80) != 0)
  {
    v4 = v12 + 5;
  }

  else
  {
    v4 = v12;
  }

LABEL_25:
  if ((v2 & 0x7F00) != 0)
  {
    v13 = v4 + 5;
    if ((v2 & 0x100) == 0)
    {
      v13 = v4;
    }

    if ((v2 & 0x200) != 0)
    {
      v13 += 5;
    }

    if ((v2 & 0x400) != 0)
    {
      v13 += 5;
    }

    if ((v2 & 0x800) != 0)
    {
      v13 += 5;
    }

    if ((v2 & 0x1000) != 0)
    {
      v13 += 5;
    }

    if ((v2 & 0x2000) != 0)
    {
      v13 += 5;
    }

    v4 = v13 + ((v2 >> 13) & 2);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSD::FreehandDrawingToolkitUIState::MergeFrom(TSD::FreehandDrawingToolkitUIState *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::FreehandDrawingToolkitUIState::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::FreehandDrawingToolkitUIState::MergeFrom(uint64_t this, const TSD::FreehandDrawingToolkitUIState *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    v6 = MEMORY[0x277D809E8];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C9BAF0](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::Color::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_41;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
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

      v10 = MEMORY[0x277C9BAF0](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = v6;
    }

    this = TSP::Color::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_49;
    }

LABEL_41:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C9BAF0](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = v6;
    }

    this = TSP::Color::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_57;
    }

LABEL_49:
    *(v3 + 16) |= 8u;
    v16 = *(v3 + 48);
    if (!v16)
    {
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x277C9BAF0](v17);
      *(v3 + 48) = v16;
    }

    if (*(a2 + 6))
    {
      v18 = *(a2 + 6);
    }

    else
    {
      v18 = v6;
    }

    this = TSP::Color::MergeFrom(v16, v18);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_65;
    }

LABEL_57:
    *(v3 + 16) |= 0x10u;
    v19 = *(v3 + 56);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C9BAF0](v20);
      *(v3 + 56) = v19;
    }

    if (*(a2 + 7))
    {
      v21 = *(a2 + 7);
    }

    else
    {
      v21 = v6;
    }

    this = TSP::Color::MergeFrom(v19, v21);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_66;
    }

LABEL_65:
    *(v3 + 64) = *(a2 + 16);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(v3 + 16) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(v3 + 72) = *(a2 + 18);
      goto LABEL_13;
    }

LABEL_66:
    *(v3 + 68) = *(a2 + 17);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x7F00) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 76) = *(a2 + 19);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_70;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 80) = *(a2 + 20);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v3 + 84) = *(a2 + 21);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v3 + 88) = *(a2 + 22);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

LABEL_73:
    *(v3 + 96) = *(a2 + 24);
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_72:
  *(v3 + 92) = *(a2 + 23);
  if ((v5 & 0x2000) != 0)
  {
    goto LABEL_73;
  }

LABEL_21:
  if ((v5 & 0x4000) != 0)
  {
LABEL_22:
    *(v3 + 100) = *(a2 + 100);
  }

LABEL_23:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TSD::FreehandDrawingToolkitUIState::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingToolkitUIState::Clear(this);

    return TSD::FreehandDrawingToolkitUIState::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::FreehandDrawingToolkitUIState::CopyFrom(uint64_t *this, const TSD::FreehandDrawingToolkitUIState *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::FreehandDrawingToolkitUIState::Clear(this);

    return TSD::FreehandDrawingToolkitUIState::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::FreehandDrawingToolkitUIState::IsInitialized(TSD::FreehandDrawingToolkitUIState *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Color::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 5));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 8) != 0)
  {
    result = TSP::Color::IsInitialized(*(this + 6));
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

  result = TSP::Color::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::FreehandDrawingToolkitUIState::InternalSwap(TSD::FreehandDrawingToolkitUIState *this, TSD::FreehandDrawingToolkitUIState *a2)
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
  *(this + 40) = *(a2 + 40);
  *(a2 + 5) = v7;
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  v10 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  result = *(a2 + 72);
  *(this + 72) = result;
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  v14 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v14;
  LODWORD(v14) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v14;
  LOBYTE(v14) = *(this + 100);
  *(this + 100) = *(a2 + 100);
  *(a2 + 100) = v14;
  return result;
}

uint64_t TSD::StandinCaptionArchive::StandinCaptionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288577C38;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288577C38;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSD::StandinCaptionArchive *TSD::StandinCaptionArchive::StandinCaptionArchive(TSD::StandinCaptionArchive *this, const TSD::StandinCaptionArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288577C38;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSD::StandinCaptionArchive::~StandinCaptionArchive(TSD::StandinCaptionArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::StandinCaptionArchive::default_instance(TSD::StandinCaptionArchive *this)
{
  if (atomic_load_explicit(scc_info_StandinCaptionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_StandinCaptionArchive_default_instance_;
}

uint64_t *TSD::StandinCaptionArchive::Clear(TSD::StandinCaptionArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *TSD::StandinCaptionArchive::_InternalSerialize(TSD::StandinCaptionArchive *this, const google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v4 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

  else
  {
    return a2;
  }
}

uint64_t TSD::StandinCaptionArchive::ByteSizeLong(TSD::StandinCaptionArchive *this)
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

void *TSD::StandinCaptionArchive::MergeFrom(TSD::StandinCaptionArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSD::StandinCaptionArchive::MergeFrom(uint64_t this, const TSD::StandinCaptionArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_27670B0F8((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSD::StandinCaptionArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::StandinCaptionArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSD::StandinCaptionArchive::CopyFrom(uint64_t *this, const TSD::StandinCaptionArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_27670B144(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TSD::GuideArchive::GuideArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288577CE8;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

{
  *result = &unk_288577CE8;
  *(result + 8) = a2;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

TSD::GuideArchive *TSD::GuideArchive::GuideArchive(TSD::GuideArchive *this, const TSD::GuideArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577CE8;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 24);
  *(this + 20) = *(a2 + 20);
  *(this + 24) = v6;
  return this;
}

void TSD::GuideArchive::~GuideArchive(TSD::GuideArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::GuideArchive::default_instance(TSD::GuideArchive *this)
{
  if (atomic_load_explicit(scc_info_GuideArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GuideArchive_default_instance_;
}

uint64_t *TSD::GuideArchive::Clear(TSD::GuideArchive *this)
{
  if ((*(this + 16) & 0x3F) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
    *(this + 20) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::GuideArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v32) & 1) == 0)
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
        goto LABEL_60;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 == 8)
          {
            v18 = (v7 + 1);
            v17 = *v7;
            if ((v17 & 0x8000000000000000) == 0)
            {
              goto LABEL_28;
            }

            v19 = *v18;
            v17 = (v19 << 7) + v17 - 128;
            if (v19 < 0)
            {
              v32 = google::protobuf::internal::VarintParseSlow64(v7, v17);
              if (!v32)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v18 = (v7 + 2);
LABEL_28:
              v32 = v18;
            }

            if (v17 > 1)
            {
              sub_27680D30C();
            }

            else
            {
              *(a1 + 16) |= 1u;
              *(a1 + 24) = v17;
            }

            goto LABEL_48;
          }
        }

        else if (v10 == 2)
        {
          if (v8 == 21)
          {
            v21 = *v7;
            v12 = (v7 + 4);
            v5 |= 2u;
            *(a1 + 28) = v21;
            goto LABEL_35;
          }
        }

        else if (v10 == 3 && v8 == 29)
        {
          v13 = *v7;
          v12 = (v7 + 4);
          v5 |= 4u;
          *(a1 + 32) = v13;
LABEL_35:
          v32 = v12;
          goto LABEL_48;
        }

LABEL_41:
        if (v8)
        {
          v25 = (v8 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v32 = google::protobuf::internal::UnknownFieldParse();
        if (!v32)
        {
LABEL_60:
          v32 = 0;
          goto LABEL_2;
        }

        goto LABEL_48;
      }

      if (v10 == 4)
      {
        if (v8 == 37)
        {
          v20 = *v7;
          v12 = (v7 + 4);
          v5 |= 8u;
          *(a1 + 36) = v20;
          goto LABEL_35;
        }

        goto LABEL_41;
      }

      if (v10 == 5)
      {
        if (v8 != 40)
        {
          goto LABEL_41;
        }

        v5 |= 0x10u;
        v23 = (v7 + 1);
        v22 = *v7;
        if ((v22 & 0x8000000000000000) == 0)
        {
          goto LABEL_40;
        }

        v24 = *v23;
        v22 = (v24 << 7) + v22 - 128;
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_40:
          v32 = v23;
          *(a1 + 40) = v22 != 0;
          goto LABEL_48;
        }

        v30 = google::protobuf::internal::VarintParseSlow64(v7, v22);
        v32 = v30;
        *(a1 + 40) = v31 != 0;
        if (!v30)
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v10 != 6 || v8 != 48)
        {
          goto LABEL_41;
        }

        v5 |= 0x20u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_23;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_23:
          v32 = v15;
          *(a1 + 41) = v14 != 0;
          goto LABEL_48;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v7, v14);
        v32 = v28;
        *(a1 + 41) = v29 != 0;
        if (!v28)
        {
          goto LABEL_60;
        }
      }

LABEL_48:
      if (sub_27670AF08(a3, &v32))
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

unsigned __int8 *TSD::GuideArchive::_InternalSerialize(TSD::GuideArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
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
        if ((v6 & 2) != 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_3:
    if ((v6 & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
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

  v12 = *(this + 8);
  *a2 = 29;
  *(a2 + 1) = v12;
  a2 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
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

  v13 = *(this + 9);
  *a2 = 37;
  *(a2 + 1) = v13;
  a2 += 5;
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

LABEL_28:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 40);
  *a2 = 40;
  a2[1] = v14;
  a2 += 2;
  if ((v6 & 0x20) != 0)
  {
LABEL_31:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 41);
    *a2 = 48;
    a2[1] = v15;
    a2 += 2;
  }

LABEL_34:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v16 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::GuideArchive::ByteSizeLong(TSD::GuideArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x3F) != 0)
  {
    if (v1)
    {
      v4 = *(this + 6);
      if (v4 < 0)
      {
        v2 = 11;
      }

      else
      {
        v2 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    v3 = v2 + ((v1 >> 4) & 2) + ((v1 >> 3) & 2);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSD::GuideArchive::MergeFrom(TSD::GuideArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::GuideArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::GuideArchive::MergeFrom(uint64_t this, const TSD::GuideArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) != 0)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 28) = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    *(v3 + 36) = *(a2 + 9);
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
      *(v3 + 41) = *(a2 + 41);
      goto LABEL_11;
    }

LABEL_17:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

TSD::GuideArchive *TSD::GuideArchive::CopyFrom(TSD::GuideArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GuideArchive::Clear(this);

    return TSD::GuideArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::GuideArchive *TSD::GuideArchive::CopyFrom(TSD::GuideArchive *this, const TSD::GuideArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GuideArchive::Clear(this);

    return TSD::GuideArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSD::GuideArchive::InternalSwap(TSD::GuideArchive *this, TSD::GuideArchive *a2)
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
  LOWORD(v5) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v5;
  return result;
}

void *TSD::UserDefinedGuideArchive::UserDefinedGuideArchive(void *result, uint64_t a2)
{
  *result = &unk_288577D98;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288577D98;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSD::UserDefinedGuideArchive *TSD::UserDefinedGuideArchive::UserDefinedGuideArchive(TSD::UserDefinedGuideArchive *this, const TSD::UserDefinedGuideArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577D98;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSD::UserDefinedGuideArchive::~UserDefinedGuideArchive(TSD::UserDefinedGuideArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::UserDefinedGuideArchive::default_instance(TSD::UserDefinedGuideArchive *this)
{
  if (atomic_load_explicit(scc_info_UserDefinedGuideArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_UserDefinedGuideArchive_default_instance_;
}

uint64_t *TSD::UserDefinedGuideArchive::Clear(TSD::UserDefinedGuideArchive *this)
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
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::UserDefinedGuideArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v17) & 1) == 0)
  {
    while (1)
    {
      v7 = (v17 + 1);
      v8 = *v17;
      if ((*v17 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v17, (v9 - 128));
      v17 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_36;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 21)
        {
          v5 |= 2u;
          *(a1 + 28) = *v7;
          v17 = (v7 + 4);
          goto LABEL_28;
        }
      }

      else if (v8 >> 3 == 1 && v8 == 8)
      {
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if (v14 < 0)
        {
          v17 = google::protobuf::internal::VarintParseSlow64(v7, v12);
          if (!v17)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v13 = (v7 + 2);
LABEL_25:
          v17 = v13;
        }

        if (v12 > 1)
        {
          sub_27680D30C();
        }

        else
        {
          *(a1 + 16) |= 1u;
          *(a1 + 24) = v12;
        }

        goto LABEL_28;
      }

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
        sub_27670AF80((a1 + 8));
      }

      v17 = google::protobuf::internal::UnknownFieldParse();
      if (!v17)
      {
LABEL_36:
        v17 = 0;
        goto LABEL_2;
      }

LABEL_28:
      if (sub_27670AF08(a3, &v17))
      {
        goto LABEL_2;
      }
    }

    v7 = (v17 + 2);
LABEL_6:
    v17 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v17;
}

unsigned __int8 *TSD::UserDefinedGuideArchive::_InternalSerialize(TSD::UserDefinedGuideArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 8;
    if (v7 <= 0x7F)
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    a2[1] = v7 | 0x80;
    v8 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v12 = v8 >> 7;
        ++a2;
        v13 = v8 >> 14;
        v8 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
      if ((v6 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    a2[2] = v8;
    a2 += 3;
  }

  if ((v6 & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v9;
  a2 += 5;
LABEL_13:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v10 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::UserDefinedGuideArchive::ByteSizeLong(TSD::UserDefinedGuideArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v4 = *(this + 6);
      if (v4 < 0)
      {
        v2 = 11;
      }

      else
      {
        v2 = ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }
    }

    else
    {
      v2 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 = v2 + 5;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSD::UserDefinedGuideArchive::MergeFrom(TSD::UserDefinedGuideArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::UserDefinedGuideArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::UserDefinedGuideArchive::MergeFrom(uint64_t this, const TSD::UserDefinedGuideArchive *a2)
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

TSD::UserDefinedGuideArchive *TSD::UserDefinedGuideArchive::CopyFrom(TSD::UserDefinedGuideArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::UserDefinedGuideArchive::Clear(this);

    return TSD::UserDefinedGuideArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::UserDefinedGuideArchive *TSD::UserDefinedGuideArchive::CopyFrom(TSD::UserDefinedGuideArchive *this, const TSD::UserDefinedGuideArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::UserDefinedGuideArchive::Clear(this);

    return TSD::UserDefinedGuideArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::UserDefinedGuideArchive::InternalSwap(TSD::UserDefinedGuideArchive *this, TSD::UserDefinedGuideArchive *a2)
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

TSD::GuideStorageArchive *TSD::GuideStorageArchive::GuideStorageArchive(TSD::GuideStorageArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577E48;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_GuideStorageArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSD::GuideStorageArchive *TSD::GuideStorageArchive::GuideStorageArchive(TSD::GuideStorageArchive *this, const TSD::GuideStorageArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288577E48;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_27676CCA0(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_27670B0F8(v4, (v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSD::GuideStorageArchive::~GuideStorageArchive(TSD::GuideStorageArchive *this)
{
  sub_2766FFE58(this + 1);
  sub_27676CC08(this + 2);
}

{
  TSD::GuideStorageArchive::~GuideStorageArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::GuideStorageArchive::default_instance(TSD::GuideStorageArchive *this)
{
  if (atomic_load_explicit(scc_info_GuideStorageArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GuideStorageArchive_default_instance_;
}

uint64_t *TSD::GuideStorageArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSD::UserDefinedGuideArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return sub_27670B144(v5);
  }

  return this;
}

google::protobuf::internal *TSD::GuideStorageArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  if ((sub_27670AF08(a3, &v20) & 1) == 0)
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
          v13 = google::protobuf::Arena::CreateMaybeMessage<TSD::UserDefinedGuideArchive>(*(a1 + 16));
          v14 = *(a1 + 24);
          v15 = *(a1 + 32) + 8 * v14;
          *(a1 + 24) = v14 + 1;
          *(v15 + 8) = v13;
          v10 = v20;
LABEL_22:
          v9 = sub_27680CE54(a3, v13, v10);
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
        sub_27670AF80((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
        return 0;
      }

LABEL_14:
      if (sub_27670AF08(a3, &v20))
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

unsigned __int8 *TSD::GuideStorageArchive::_InternalSerialize(TSD::GuideStorageArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *a2 = 10;
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
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
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

      a2 = TSD::UserDefinedGuideArchive::_InternalSerialize(v8, v10, a3, a4);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::GuideStorageArchive::ByteSizeLong(TSD::GuideStorageArchive *this)
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
      v7 = TSD::UserDefinedGuideArchive::ByteSizeLong(v6);
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

uint64_t TSD::GuideStorageArchive::MergeFrom(TSD::GuideStorageArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::GuideStorageArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::GuideStorageArchive::MergeFrom(uint64_t this, const TSD::GuideStorageArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_27676CCA0(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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

uint64_t *TSD::GuideStorageArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GuideStorageArchive::Clear(this);

    return TSD::GuideStorageArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::GuideStorageArchive::CopyFrom(uint64_t *this, const TSD::GuideStorageArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GuideStorageArchive::Clear(this);

    return TSD::GuideStorageArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSD::GuideStorageArchive::InternalSwap(TSD::GuideStorageArchive *this, TSD::GuideStorageArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 3);
  v5 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t TSD::CanvasSelectionArchive::clear_infos(uint64_t this)
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

uint64_t TSD::CanvasSelectionArchive::clear_non_interactive_infos(uint64_t this)
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

TSP::Reference *TSD::CanvasSelectionArchive::clear_container(TSD::CanvasSelectionArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::CanvasSelectionArchive *TSD::CanvasSelectionArchive::CanvasSelectionArchive(TSD::CanvasSelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288577EF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_CanvasSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  return this;
}

void sub_2767566D8(_Unwind_Exception *a1)
{
  sub_27676C890(v2);
  sub_27676C890(v1);
  _Unwind_Resume(a1);
}

TSD::CanvasSelectionArchive *TSD::CanvasSelectionArchive::CanvasSelectionArchive(TSD::CanvasSelectionArchive *this, const TSD::CanvasSelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288577EF8;
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
  return this;
}

void sub_276756888(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v3, 0x1081C407D3F2757);
  sub_27676C890(v2);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::CanvasSelectionArchive::~CanvasSelectionArchive(TSD::CanvasSelectionArchive *this)
{
  if (this != &TSD::_CanvasSelectionArchive_default_instance_)
  {
    v2 = *(this + 9);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
  sub_27676C890(this + 6);
  sub_27676C890(this + 3);
}

{
  TSD::CanvasSelectionArchive::~CanvasSelectionArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::CanvasSelectionArchive::default_instance(TSD::CanvasSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_CanvasSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_CanvasSelectionArchive_default_instance_;
}

uint64_t *TSD::CanvasSelectionArchive::Clear(uint64_t *this)
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
    this = TSP::Reference::Clear(*(v1 + 72));
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_27670B144(v8);
  }

  return this;
}

google::protobuf::internal *TSD::CanvasSelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  while (1)
  {
LABEL_2:
    if (sub_27670AF08(a3, &v36))
    {
      return v36;
    }

    v5 = (v36 + 1);
    v6 = *v36;
    if ((*v36 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v36 + 2);
LABEL_6:
      v36 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v7 - 128));
    v36 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v34;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      v15 = v5 - 1;
      while (1)
      {
        v16 = (v15 + 1);
        v36 = (v15 + 1);
        v17 = *(a1 + 64);
        if (!v17)
        {
          goto LABEL_31;
        }

        v23 = *(a1 + 56);
        v18 = *v17;
        if (v23 < *v17)
        {
          *(a1 + 56) = v23 + 1;
          v20 = *&v17[2 * v23 + 2];
          goto LABEL_35;
        }

        if (v18 == *(a1 + 60))
        {
LABEL_31:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v17 = *(a1 + 64);
          v18 = *v17;
        }

        *v17 = v18 + 1;
        v19 = MEMORY[0x277C9BB20](*(a1 + 48));
        LODWORD(v20) = v19;
        v21 = *(a1 + 56);
        v22 = *(a1 + 64) + 8 * v21;
        *(a1 + 56) = v21 + 1;
        *(v22 + 8) = v19;
        v16 = v36;
LABEL_35:
        v15 = sub_27680B6EC(a3, v20, v16);
        v36 = v15;
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

    if (v8 != 2)
    {
      if (v8 != 1 || v6 != 10)
      {
        goto LABEL_13;
      }

      v24 = v5 - 1;
      while (1)
      {
        v25 = (v24 + 1);
        v36 = (v24 + 1);
        v26 = *(a1 + 40);
        if (!v26)
        {
          goto LABEL_43;
        }

        v32 = *(a1 + 32);
        v27 = *v26;
        if (v32 < *v26)
        {
          *(a1 + 32) = v32 + 1;
          v29 = *&v26[2 * v32 + 2];
          goto LABEL_47;
        }

        if (v27 == *(a1 + 36))
        {
LABEL_43:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v26 = *(a1 + 40);
          v27 = *v26;
        }

        *v26 = v27 + 1;
        v28 = MEMORY[0x277C9BB20](*(a1 + 24));
        LODWORD(v29) = v28;
        v30 = *(a1 + 32);
        v31 = *(a1 + 40) + 8 * v30;
        *(a1 + 32) = v30 + 1;
        *(v31 + 8) = v28;
        v25 = v36;
LABEL_47:
        v24 = sub_27680B6EC(a3, v29, v25);
        v36 = v24;
        if (!v24)
        {
          return 0;
        }

        if (*a3 <= v24 || *v24 != 10)
        {
          goto LABEL_2;
        }
      }
    }

    if (v6 == 18)
    {
      *(a1 + 16) |= 1u;
      v12 = *(a1 + 72);
      if (!v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C9BB20](v13);
        LODWORD(v12) = v14;
        *(a1 + 72) = v14;
        v5 = v36;
      }

      v11 = sub_27680B6EC(a3, v12, v5);
      goto LABEL_26;
    }

LABEL_13:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v11 = google::protobuf::internal::UnknownFieldParse();
LABEL_26:
    v36 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v36;
}

unsigned __int8 *TSD::CanvasSelectionArchive::_InternalSerialize(TSD::CanvasSelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 5) + 8 * i + 8);
      *a2 = 10;
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
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
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

      a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 9);
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

  v20 = *(this + 14);
  if (v20)
  {
    for (j = 0; j != v20; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v22 = *(*(this + 8) + 8 * j + 8);
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
  }

  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v28 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::CanvasSelectionArchive::ByteSizeLong(TSD::CanvasSelectionArchive *this)
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
      v14 = TSP::Reference::ByteSizeLong(v13);
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

uint64_t TSD::CanvasSelectionArchive::MergeFrom(TSD::CanvasSelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::CanvasSelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::CanvasSelectionArchive::MergeFrom(uint64_t this, const TSD::CanvasSelectionArchive *a2)
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

      v16 = MEMORY[0x277C9BB20](v17);
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

uint64_t *TSD::CanvasSelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::CanvasSelectionArchive::Clear(this);

    return TSD::CanvasSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::CanvasSelectionArchive::CopyFrom(uint64_t *this, const TSD::CanvasSelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::CanvasSelectionArchive::Clear(this);

    return TSD::CanvasSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::CanvasSelectionArchive::IsInitialized(TSD::CanvasSelectionArchive *this)
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

  v5 = *(this + 14);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 9));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::CanvasSelectionArchive::InternalSwap(TSD::CanvasSelectionArchive *this, TSD::CanvasSelectionArchive *a2)
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
  return result;
}

uint64_t TSD::DrawableSelectionArchive::clear_infos(uint64_t this)
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

uint64_t TSD::DrawableSelectionArchive::clear_non_interactive_infos(uint64_t this)
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

TSD::DrawableSelectionArchive *TSD::DrawableSelectionArchive::DrawableSelectionArchive(TSD::DrawableSelectionArchive *this, google::protobuf::Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_288577FA8;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_DrawableSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_276757638(_Unwind_Exception *a1)
{
  sub_27676C890(v2);
  sub_27676C890(v1);
  _Unwind_Resume(a1);
}

TSD::DrawableSelectionArchive *TSD::DrawableSelectionArchive::DrawableSelectionArchive(TSD::DrawableSelectionArchive *this, const TSD::DrawableSelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288577FA8;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_27676CA94(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_27676CA94(this + 40, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
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
    sub_27670B0F8(v4, (v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_2767577B0(_Unwind_Exception *a1)
{
  sub_27676C890(v2);
  sub_27676C890(v1);
  _Unwind_Resume(a1);
}

void TSD::DrawableSelectionArchive::~DrawableSelectionArchive(TSD::DrawableSelectionArchive *this)
{
  sub_2766FFE58(this + 1);
  sub_27676C890(this + 5);
  sub_27676C890(this + 2);
}

{
  TSD::DrawableSelectionArchive::~DrawableSelectionArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::DrawableSelectionArchive::default_instance(TSD::DrawableSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawableSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawableSelectionArchive_default_instance_;
}

uint64_t *TSD::DrawableSelectionArchive::Clear(uint64_t *this)
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

    return sub_27670B144(v8);
  }

  return this;
}

google::protobuf::internal *TSD::DrawableSelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  if ((sub_27670AF08(a3, &v31) & 1) == 0)
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
      if (v7 >> 3 == 3)
      {
        if (v7 != 26)
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
            v15 = MEMORY[0x277C9BB20](*(a1 + 40));
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

          v11 = sub_27680B6EC(a3, v16, v12);
          v31 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 26)
          {
            goto LABEL_19;
          }

          continue;
        }
      }

      if (v7 >> 3 == 2 && v7 == 18)
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
          v24 = MEMORY[0x277C9BB20](*(a1 + 16));
          LODWORD(v25) = v24;
          v26 = *(a1 + 24);
          v27 = *(a1 + 32) + 8 * v26;
          *(a1 + 24) = v26 + 1;
          *(v27 + 8) = v24;
          v21 = v31;
LABEL_40:
          v20 = sub_27680B6EC(a3, v25, v21);
          v31 = v20;
          if (!v20)
          {
            return 0;
          }

          if (*a3 <= v20 || *v20 != 18)
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
        sub_27670AF80((a1 + 8));
      }

      v31 = google::protobuf::internal::UnknownFieldParse();
      if (!v31)
      {
        return 0;
      }

LABEL_19:
      if (sub_27670AF08(a3, &v31))
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

unsigned __int8 *TSD::DrawableSelectionArchive::_InternalSerialize(TSD::DrawableSelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
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
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
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

      a2 = TSP::Reference::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 12);
  if (v14)
  {
    for (j = 0; j != v14; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v16 = *(*(this + 7) + 8 * j + 8);
      *a2 = 26;
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
    }
  }

  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::DrawableSelectionArchive::ByteSizeLong(TSD::DrawableSelectionArchive *this)
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

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 16) = v9;
    return v9;
  }
}

uint64_t TSD::DrawableSelectionArchive::MergeFrom(TSD::DrawableSelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawableSelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawableSelectionArchive::MergeFrom(uint64_t this, const TSD::DrawableSelectionArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_27676CA94(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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
    this = sub_27676CA94(v3 + 40, v12, (v11 + 8), v10, **(v3 + 56) - *(v3 + 48));
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

uint64_t *TSD::DrawableSelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableSelectionArchive::Clear(this);

    return TSD::DrawableSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawableSelectionArchive::CopyFrom(uint64_t *this, const TSD::DrawableSelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableSelectionArchive::Clear(this);

    return TSD::DrawableSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSD::DrawableSelectionArchive::IsInitialized(TSD::DrawableSelectionArchive *this)
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

__n128 TSD::DrawableSelectionArchive::InternalSwap(TSD::DrawableSelectionArchive *this, TSD::DrawableSelectionArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
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

TSD::GroupSelectionArchive *TSD::GroupSelectionArchive::GroupSelectionArchive(TSD::GroupSelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288578058;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GroupSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288578058;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GroupSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 32) = 0;
  *(this + 3) = 0;
  return this;
}

TSD::GroupSelectionArchive *TSD::GroupSelectionArchive::GroupSelectionArchive(TSD::GroupSelectionArchive *this, const TSD::GroupSelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578058;
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
  *(this + 32) = *(a2 + 32);
  return this;
}

void TSD::GroupSelectionArchive::~GroupSelectionArchive(TSD::GroupSelectionArchive *this)
{
  if (this != &TSD::_GroupSelectionArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::DrawableSelectionArchive::~DrawableSelectionArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::GroupSelectionArchive::~GroupSelectionArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::GroupSelectionArchive::default_instance(TSD::GroupSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_GroupSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GroupSelectionArchive_default_instance_;
}

uint64_t *TSD::GroupSelectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::DrawableSelectionArchive::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_27670B144(v2);
  }

  return this;
}

google::protobuf::internal *TSD::GroupSelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v22) & 1) == 0)
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
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableSelectionArchive>(v17);
            *(a1 + 24) = v16;
            v7 = v22;
          }

          v12 = sub_27680CF24(a3, v16, v7);
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
            sub_27670AF80((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v22 = v12;
        if (!v12)
        {
          goto LABEL_37;
        }

        goto LABEL_30;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v14 = (v7 + 1);
      v13 = *v7;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v7 + 2);
LABEL_23:
        v22 = v14;
        *(a1 + 32) = v13 != 0;
        goto LABEL_30;
      }

      v20 = google::protobuf::internal::VarintParseSlow64(v7, v13);
      v22 = v20;
      *(a1 + 32) = v21 != 0;
      if (!v20)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_30:
      if (sub_27670AF08(a3, &v22))
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

unsigned __int8 *TSD::GroupSelectionArchive::_InternalSerialize(TSD::GroupSelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
    v8 = *(v7 + 16);
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

    a2 = TSD::DrawableSelectionArchive::_InternalSerialize(v7, v9, a3, a4);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 32);
    *a2 = 16;
    a2[1] = v13;
    a2 += 2;
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v14 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::GroupSelectionArchive::ByteSizeLong(TSD::GroupSelectionArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::DrawableSelectionArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3 + (v2 & 2);
    return v3 + (v2 & 2);
  }
}

uint64_t TSD::GroupSelectionArchive::MergeFrom(TSD::GroupSelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::GroupSelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::GroupSelectionArchive::MergeFrom(uint64_t this, const TSD::GroupSelectionArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::DrawableSelectionArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_DrawableSelectionArchive_default_instance_;
      }

      this = TSD::DrawableSelectionArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 32) = *(a2 + 32);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

uint64_t *TSD::GroupSelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GroupSelectionArchive::Clear(this);

    return TSD::GroupSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::GroupSelectionArchive::CopyFrom(uint64_t *this, const TSD::GroupSelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GroupSelectionArchive::Clear(this);

    return TSD::GroupSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::GroupSelectionArchive::InternalSwap(TSD::GroupSelectionArchive *this, TSD::GroupSelectionArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
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

uint64_t TSD::PathSelectionArchive::PathSelectionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288578108;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288578108;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSD::PathSelectionArchive *TSD::PathSelectionArchive::PathSelectionArchive(TSD::PathSelectionArchive *this, const TSD::PathSelectionArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288578108;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSD::PathSelectionArchive::~PathSelectionArchive(TSD::PathSelectionArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::PathSelectionArchive::default_instance(TSD::PathSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_PathSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_PathSelectionArchive_default_instance_;
}

uint64_t *TSD::PathSelectionArchive::Clear(TSD::PathSelectionArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *TSD::PathSelectionArchive::_InternalSerialize(TSD::PathSelectionArchive *this, const google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v4 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

  else
  {
    return a2;
  }
}

uint64_t TSD::PathSelectionArchive::ByteSizeLong(TSD::PathSelectionArchive *this)
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

void *TSD::PathSelectionArchive::MergeFrom(TSD::PathSelectionArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSD::PathSelectionArchive::MergeFrom(uint64_t this, const TSD::PathSelectionArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_27670B0F8((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSD::PathSelectionArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::PathSelectionArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSD::PathSelectionArchive::CopyFrom(uint64_t *this, const TSD::PathSelectionArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_27670B144(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TSD::InfoHyperlinkSelectionArchive::InfoHyperlinkSelectionArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2885781B8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_2885781B8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSD::InfoHyperlinkSelectionArchive *TSD::InfoHyperlinkSelectionArchive::InfoHyperlinkSelectionArchive(TSD::InfoHyperlinkSelectionArchive *this, const TSD::InfoHyperlinkSelectionArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_2885781B8;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSD::InfoHyperlinkSelectionArchive::~InfoHyperlinkSelectionArchive(TSD::InfoHyperlinkSelectionArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::InfoHyperlinkSelectionArchive::default_instance(TSD::InfoHyperlinkSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_InfoHyperlinkSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_InfoHyperlinkSelectionArchive_default_instance_;
}

uint64_t *TSD::InfoHyperlinkSelectionArchive::Clear(TSD::InfoHyperlinkSelectionArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

const google::protobuf::UnknownFieldSet *TSD::InfoHyperlinkSelectionArchive::_InternalSerialize(TSD::InfoHyperlinkSelectionArchive *this, const google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v4 = *(this + 1);
  if (v4)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v4 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
  }

  else
  {
    return a2;
  }
}

uint64_t TSD::InfoHyperlinkSelectionArchive::ByteSizeLong(TSD::InfoHyperlinkSelectionArchive *this)
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

void *TSD::InfoHyperlinkSelectionArchive::MergeFrom(TSD::InfoHyperlinkSelectionArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSD::InfoHyperlinkSelectionArchive::MergeFrom(uint64_t this, const TSD::InfoHyperlinkSelectionArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_27670B0F8((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSD::InfoHyperlinkSelectionArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_27670B144(v5);
    }

    return TSD::InfoHyperlinkSelectionArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSD::InfoHyperlinkSelectionArchive::CopyFrom(uint64_t *this, const TSD::InfoHyperlinkSelectionArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_27670B144(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_27670B0F8(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

TSP::Date *TSD::CommentStorageArchive::clear_creation_date(TSD::CommentStorageArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::CommentStorageArchive::clear_author(TSD::CommentStorageArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t TSD::CommentStorageArchive::clear_replies(uint64_t this)
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

TSP::UUID *TSD::CommentStorageArchive::clear_storage_uuid(TSD::CommentStorageArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::UUID::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSD::CommentStorageArchive *TSD::CommentStorageArchive::CommentStorageArchive(TSD::CommentStorageArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288578268;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_CommentStorageArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  return this;
}

TSD::CommentStorageArchive *TSD::CommentStorageArchive::CommentStorageArchive(TSD::CommentStorageArchive *this, const TSD::CommentStorageArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578268;
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

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_27670B0F8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = MEMORY[0x277D80A90];
  v11 = *(a2 + 4);
  if (v11)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v11 = *(a2 + 4);
  }

  if ((v11 & 2) != 0)
  {
    operator new();
  }

  *(this + 7) = 0;
  if ((v11 & 4) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v11 & 8) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  return this;
}

void sub_2767596A8(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v2, 0x1081C40825B58B5);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::CommentStorageArchive::~CommentStorageArchive(TSD::CommentStorageArchive *this)
{
  sub_276759744(this);
  sub_2766FFE58(this + 1);
  sub_27676C890(this + 3);
}

{
  TSD::CommentStorageArchive::~CommentStorageArchive(this);

  JUMPOUT(0x277C9C1D0);
}

TSP::UUID *sub_276759744(TSP::UUID *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  if (v1 != &TSD::_CommentStorageArchive_default_instance_)
  {
    v3 = *(v1 + 7);
    if (v3)
    {
      TSP::Date::~Date(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C9C1D0]();
    }

    result = *(v1 + 9);
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::CommentStorageArchive::default_instance(TSD::CommentStorageArchive *this)
{
  if (atomic_load_explicit(scc_info_CommentStorageArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_CommentStorageArchive_default_instance_;
}

uint64_t *TSD::CommentStorageArchive::Clear(uint64_t *this)
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
  if ((v5 & 0xF) == 0)
  {
    goto LABEL_11;
  }

  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    this = TSP::Date::Clear(*(v1 + 56));
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_20;
  }

  v8 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v8 + 23) < 0)
  {
    **v8 = 0;
    *(v8 + 8) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *v8 = 0;
    *(v8 + 23) = 0;
    if ((v5 & 2) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_20:
  this = TSP::Reference::Clear(*(v1 + 64));
  if ((v5 & 8) != 0)
  {
LABEL_10:
    this = TSP::UUID::Clear(*(v1 + 72));
  }

LABEL_11:
  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 8) = 0;
  if (v7)
  {

    return sub_27670B144(v6);
  }

  return this;
}

google::protobuf::internal *TSD::CommentStorageArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  while (1)
  {
    if (sub_27670AF08(a3, &v33))
    {
      return v33;
    }

    v5 = (v33 + 1);
    v6 = *v33;
    if ((*v33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v33 + 2);
LABEL_6:
      v33 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v33, (v7 - 128));
    v33 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v31;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 != 1)
      {
        if (v8 == 2 && v6 == 18)
        {
          *(a1 + 16) |= 2u;
          v14 = *(a1 + 56);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v16 = MEMORY[0x277C9BAB0](v15);
            LODWORD(v14) = v16;
            *(a1 + 56) = v16;
            v5 = v33;
          }

          v12 = sub_27680D16C(a3, v14, v5);
          goto LABEL_56;
        }

        goto LABEL_49;
      }

      if (v6 != 10)
      {
        goto LABEL_49;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v12 = google::protobuf::internal::InlineGreedyStringParser();
      goto LABEL_56;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {
      if (v6 != 34)
      {
        goto LABEL_49;
      }

      v20 = v5 - 1;
LABEL_36:
      v21 = (v20 + 1);
      v33 = (v20 + 1);
      v22 = *(a1 + 40);
      if (!v22)
      {
LABEL_37:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v22 = *(a1 + 40);
        v23 = *v22;
        goto LABEL_38;
      }

      v28 = *(a1 + 32);
      v23 = *v22;
      if (v28 >= *v22)
      {
        if (v23 == *(a1 + 36))
        {
          goto LABEL_37;
        }

LABEL_38:
        *v22 = v23 + 1;
        v24 = MEMORY[0x277C9BB20](*(a1 + 24));
        LODWORD(v25) = v24;
        v26 = *(a1 + 32);
        v27 = *(a1 + 40) + 8 * v26;
        *(a1 + 32) = v26 + 1;
        *(v27 + 8) = v24;
        v21 = v33;
      }

      else
      {
        *(a1 + 32) = v28 + 1;
        v25 = *&v22[2 * v28 + 2];
      }

      v20 = sub_27680B6EC(a3, v25, v21);
      v33 = v20;
      if (!v20)
      {
        return 0;
      }

      if (*a3 <= v20 || *v20 != 34)
      {
        continue;
      }

      goto LABEL_36;
    }

    if (v8 != 5 || v6 != 42)
    {
      goto LABEL_49;
    }

    *(a1 + 16) |= 8u;
    v9 = *(a1 + 72);
    if (!v9)
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C9BAE0](v10);
      LODWORD(v9) = v11;
      *(a1 + 72) = v11;
      v5 = v33;
    }

    v12 = sub_27680C988(a3, v9, v5);
LABEL_56:
    v33 = v12;
    if (!v12)
    {
      return 0;
    }
  }

  if (v6 == 26)
  {
    *(a1 + 16) |= 4u;
    v17 = *(a1 + 64);
    if (!v17)
    {
      v18 = *(a1 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = MEMORY[0x277C9BB20](v18);
      LODWORD(v17) = v19;
      *(a1 + 64) = v19;
      v5 = v33;
    }

    v12 = sub_27680B6EC(a3, v17, v5);
    goto LABEL_56;
  }

LABEL_49:
  if (v6)
  {
    v29 = (v6 & 7) == 4;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_27670AF80((a1 + 8));
    }

    v12 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_56;
  }

  *(a3 + 80) = v6 - 1;
  return v33;
}

unsigned __int8 *TSD::CommentStorageArchive::_InternalSerialize(TSD::CommentStorageArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276727B88(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
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

  v7 = *(this + 7);
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

  v4 = TSP::Date::_InternalSerialize(v7, v9, a3);
  if ((v6 & 4) != 0)
  {
LABEL_16:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 8);
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

    v4 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  }

LABEL_26:
  v19 = *(this + 8);
  if (v19)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v21 = *(*(this + 5) + 8 * i + 8);
      *v4 = 34;
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

  if ((v6 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v27 = *(this + 9);
    *v4 = 42;
    v28 = *(v27 + 5);
    if (v28 > 0x7F)
    {
      v4[1] = v28 | 0x80;
      v30 = v28 >> 7;
      if (v28 >> 14)
      {
        v29 = v4 + 3;
        do
        {
          *(v29 - 1) = v30 | 0x80;
          v31 = v30 >> 7;
          ++v29;
          v32 = v30 >> 14;
          v30 >>= 7;
        }

        while (v32);
        *(v29 - 1) = v31;
      }

      else
      {
        v4[2] = v30;
        v29 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v28;
      v29 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v27, v29, a3);
  }

  v33 = *(this + 1);
  if ((v33 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v33 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::CommentStorageArchive::ByteSizeLong(TSD::CommentStorageArchive *this)
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
  if ((v8 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v8 & 1) == 0)
  {
    if ((v8 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v14 = TSP::Date::ByteSizeLong(*(this + 7));
    v2 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v8 & 4) == 0)
    {
LABEL_13:
      if ((v8 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v11 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v12 = *(v11 + 23);
  v13 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  v2 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((v8 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_21:
  v15 = TSP::Reference::ByteSizeLong(*(this + 8));
  v2 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v8 & 8) != 0)
  {
LABEL_14:
    v9 = TSP::UUID::ByteSizeLong(*(this + 9));
    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
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

uint64_t TSD::CommentStorageArchive::MergeFrom(TSD::CommentStorageArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::CommentStorageArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::CommentStorageArchive::MergeFrom(uint64_t this, const TSD::CommentStorageArchive *a2)
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

  v10 = *(a2 + 4);
  if ((v10 & 0xF) == 0)
  {
    return this;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    *(v3 + 16) |= 2u;
    v11 = *(v3 + 56);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277C9BAB0](v12);
      *(v3 + 56) = v11;
    }

    if (*(a2 + 7))
    {
      v13 = *(a2 + 7);
    }

    else
    {
      v13 = MEMORY[0x277D809C0];
    }

    this = TSP::Date::MergeFrom(v11, v13);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 8) == 0)
      {
        return this;
      }

      goto LABEL_29;
    }

    goto LABEL_21;
  }

  *(v3 + 16) |= 1u;
  this = google::protobuf::internal::ArenaStringPtr::Set();
  if ((v10 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((v10 & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_21:
  *(v3 + 16) |= 4u;
  v14 = *(v3 + 64);
  if (!v14)
  {
    v15 = *(v3 + 8);
    if (v15)
    {
      v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
    }

    v14 = MEMORY[0x277C9BB20](v15);
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
  if ((v10 & 8) != 0)
  {
LABEL_29:
    *(v3 + 16) |= 8u;
    v17 = *(v3 + 72);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C9BAE0](v18);
      *(v3 + 72) = v17;
    }

    if (*(a2 + 9))
    {
      v19 = *(a2 + 9);
    }

    else
    {
      v19 = MEMORY[0x277D809E0];
    }

    return TSP::UUID::MergeFrom(v17, v19);
  }

  return this;
}

uint64_t *TSD::CommentStorageArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::CommentStorageArchive::Clear(this);

    return TSD::CommentStorageArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::CommentStorageArchive::CopyFrom(uint64_t *this, const TSD::CommentStorageArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::CommentStorageArchive::Clear(this);

    return TSD::CommentStorageArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::CommentStorageArchive::IsInitialized(TSD::CommentStorageArchive *this)
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
  if ((v6 & 2) != 0)
  {
    result = TSP::Date::IsInitialized(*(this + 7));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 8));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 8) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(this + 9));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::CommentStorageArchive::InternalSwap(TSD::CommentStorageArchive *this, TSD::CommentStorageArchive *a2)
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
  return result;
}

TSK::CommandArchive *TSD::ReplaceAnnotationAuthorCommandArchive::clear_super(TSD::ReplaceAnnotationAuthorCommandArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSD::ReplaceAnnotationAuthorCommandArchive::clear_old_annotation_author(TSD::ReplaceAnnotationAuthorCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::ReplaceAnnotationAuthorCommandArchive::clear_new_annotation_author(TSD::ReplaceAnnotationAuthorCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::ReplaceAnnotationAuthorCommandArchive *TSD::ReplaceAnnotationAuthorCommandArchive::ReplaceAnnotationAuthorCommandArchive(TSD::ReplaceAnnotationAuthorCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288578318;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReplaceAnnotationAuthorCommandArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288578318;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ReplaceAnnotationAuthorCommandArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::ReplaceAnnotationAuthorCommandArchive *TSD::ReplaceAnnotationAuthorCommandArchive::ReplaceAnnotationAuthorCommandArchive(TSD::ReplaceAnnotationAuthorCommandArchive *this, const TSD::ReplaceAnnotationAuthorCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578318;
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

void TSD::ReplaceAnnotationAuthorCommandArchive::~ReplaceAnnotationAuthorCommandArchive(TSD::ReplaceAnnotationAuthorCommandArchive *this)
{
  if (this != &TSD::_ReplaceAnnotationAuthorCommandArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277C9B420]();
      MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
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
  TSD::ReplaceAnnotationAuthorCommandArchive::~ReplaceAnnotationAuthorCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ReplaceAnnotationAuthorCommandArchive::default_instance(TSD::ReplaceAnnotationAuthorCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ReplaceAnnotationAuthorCommandArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ReplaceAnnotationAuthorCommandArchive_default_instance_;
}

uint64_t *TSD::ReplaceAnnotationAuthorCommandArchive::Clear(uint64_t *this)
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

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ReplaceAnnotationAuthorCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

      v19 = MEMORY[0x277C9BA50](v18);
      LODWORD(v17) = v19;
      *(a1 + 24) = v19;
      v5 = v23;
    }

    v11 = sub_27680C3D8(a3, v17, v5);
LABEL_37:
    v23 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v23;
}

unsigned __int8 *TSD::ReplaceAnnotationAuthorCommandArchive::_InternalSerialize(TSD::ReplaceAnnotationAuthorCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

uint64_t TSD::ReplaceAnnotationAuthorCommandArchive::ByteSizeLong(TSD::ReplaceAnnotationAuthorCommandArchive *this)
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

uint64_t TSD::ReplaceAnnotationAuthorCommandArchive::MergeFrom(TSD::ReplaceAnnotationAuthorCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ReplaceAnnotationAuthorCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ReplaceAnnotationAuthorCommandArchive::MergeFrom(uint64_t this, const TSD::ReplaceAnnotationAuthorCommandArchive *a2)
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

uint64_t *TSD::ReplaceAnnotationAuthorCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ReplaceAnnotationAuthorCommandArchive::Clear(this);

    return TSD::ReplaceAnnotationAuthorCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ReplaceAnnotationAuthorCommandArchive::CopyFrom(uint64_t *this, const TSD::ReplaceAnnotationAuthorCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ReplaceAnnotationAuthorCommandArchive::Clear(this);

    return TSD::ReplaceAnnotationAuthorCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ReplaceAnnotationAuthorCommandArchive::IsInitialized(TSD::ReplaceAnnotationAuthorCommandArchive *this)
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

__n128 TSD::ReplaceAnnotationAuthorCommandArchive::InternalSwap(TSD::ReplaceAnnotationAuthorCommandArchive *this, TSD::ReplaceAnnotationAuthorCommandArchive *a2)
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

TSP::Reference *TSD::PencilAnnotationArchive::clear_pencil_annotation_storage(TSD::PencilAnnotationArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::PencilAnnotationArchive *TSD::PencilAnnotationArchive::PencilAnnotationArchive(TSD::PencilAnnotationArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885783C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2885783C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::PencilAnnotationArchive *TSD::PencilAnnotationArchive::PencilAnnotationArchive(TSD::PencilAnnotationArchive *this, const TSD::PencilAnnotationArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885783C8;
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

void TSD::PencilAnnotationArchive::~PencilAnnotationArchive(TSD::PencilAnnotationArchive *this)
{
  if (this != &TSD::_PencilAnnotationArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::PencilAnnotationArchive::~PencilAnnotationArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::PencilAnnotationArchive::default_instance(TSD::PencilAnnotationArchive *this)
{
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_PencilAnnotationArchive_default_instance_;
}

uint64_t *TSD::PencilAnnotationArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
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

google::protobuf::internal *TSD::PencilAnnotationArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_27670AF08(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277C9BB20](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27680B6EC(a3, v10, v5);
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
        sub_27670AF80((a1 + 8));
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

unsigned __int8 *TSD::PencilAnnotationArchive::_InternalSerialize(TSD::PencilAnnotationArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::PencilAnnotationArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[3]);
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

uint64_t TSD::PencilAnnotationArchive::MergeFrom(TSD::PencilAnnotationArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::PencilAnnotationArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::PencilAnnotationArchive::MergeFrom(uint64_t this, const TSD::PencilAnnotationArchive *a2)
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

      v6 = MEMORY[0x277C9BB20](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::PencilAnnotationArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PencilAnnotationArchive::Clear(this);

    return TSD::PencilAnnotationArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::PencilAnnotationArchive::CopyFrom(uint64_t *this, const TSD::PencilAnnotationArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PencilAnnotationArchive::Clear(this);

    return TSD::PencilAnnotationArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::PencilAnnotationArchive::IsInitialized(TSD::PencilAnnotationArchive *this)
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

uint64_t *TSD::PencilAnnotationArchive::InternalSwap(TSD::PencilAnnotationArchive *this, TSD::PencilAnnotationArchive *a2)
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

TSP::Reference *TSD::PencilAnnotationSelectionArchive::clear_pencil_annotation(TSD::PencilAnnotationSelectionArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::PencilAnnotationSelectionArchive *TSD::PencilAnnotationSelectionArchive::PencilAnnotationSelectionArchive(TSD::PencilAnnotationSelectionArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288578478;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_288578478;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::PencilAnnotationSelectionArchive *TSD::PencilAnnotationSelectionArchive::PencilAnnotationSelectionArchive(TSD::PencilAnnotationSelectionArchive *this, const TSD::PencilAnnotationSelectionArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578478;
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

void TSD::PencilAnnotationSelectionArchive::~PencilAnnotationSelectionArchive(TSD::PencilAnnotationSelectionArchive *this)
{
  if (this != &TSD::_PencilAnnotationSelectionArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::PencilAnnotationSelectionArchive::~PencilAnnotationSelectionArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::PencilAnnotationSelectionArchive::default_instance(TSD::PencilAnnotationSelectionArchive *this)
{
  if (atomic_load_explicit(scc_info_PencilAnnotationSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_PencilAnnotationSelectionArchive_default_instance_;
}

uint64_t *TSD::PencilAnnotationSelectionArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
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

google::protobuf::internal *TSD::PencilAnnotationSelectionArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_27670AF08(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277C9BB20](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_27680B6EC(a3, v10, v5);
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
        sub_27670AF80((a1 + 8));
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

unsigned __int8 *TSD::PencilAnnotationSelectionArchive::_InternalSerialize(TSD::PencilAnnotationSelectionArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::PencilAnnotationSelectionArchive::ByteSizeLong(TSP::Reference **this)
{
  if (this[2])
  {
    v3 = TSP::Reference::ByteSizeLong(this[3]);
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

uint64_t TSD::PencilAnnotationSelectionArchive::MergeFrom(TSD::PencilAnnotationSelectionArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::PencilAnnotationSelectionArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::PencilAnnotationSelectionArchive::MergeFrom(uint64_t this, const TSD::PencilAnnotationSelectionArchive *a2)
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

      v6 = MEMORY[0x277C9BB20](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::PencilAnnotationSelectionArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PencilAnnotationSelectionArchive::Clear(this);

    return TSD::PencilAnnotationSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::PencilAnnotationSelectionArchive::CopyFrom(uint64_t *this, const TSD::PencilAnnotationSelectionArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PencilAnnotationSelectionArchive::Clear(this);

    return TSD::PencilAnnotationSelectionArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::PencilAnnotationSelectionArchive::IsInitialized(TSD::PencilAnnotationSelectionArchive *this)
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

uint64_t *TSD::PencilAnnotationSelectionArchive::InternalSwap(TSD::PencilAnnotationSelectionArchive *this, TSD::PencilAnnotationSelectionArchive *a2)
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

TSP::Point *TSD::PencilAnnotationStorageArchive::clear_markup_offset(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::DataReference *TSD::PencilAnnotationStorageArchive::clear_rasterized_image(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::DataReference *TSD::PencilAnnotationStorageArchive::clear_legacy_encoded_drawing(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Path *TSD::PencilAnnotationStorageArchive::clear_drawing_path(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 12);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSP::Point *TSD::PencilAnnotationStorageArchive::clear_strokes_bounding_box_origin(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 13);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

TSP::Size *TSD::PencilAnnotationStorageArchive::clear_strokes_bounding_box_size(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 14);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

TSP::Size *TSD::PencilAnnotationStorageArchive::clear_original_attached_size(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 15);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Color *TSD::PencilAnnotationStorageArchive::clear_pen_color(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 16);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

uint64_t TSD::PencilAnnotationStorageArchive::clear_callout_sub_storages(uint64_t this)
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

TSP::Date *TSD::PencilAnnotationStorageArchive::clear_creation_date(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 17);
  if (result)
  {
    result = TSP::Date::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

uint64_t TSD::PencilAnnotationStorageArchive::clear_sub_storages(uint64_t this)
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

TSP::DataReference *TSD::PencilAnnotationStorageArchive::clear_encoded_drawing(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 18);
  if (result)
  {
    result = TSP::DataReference::Clear(result);
  }

  *(this + 4) &= ~0x200u;
  return result;
}

TSP::Point *TSD::PencilAnnotationStorageArchive::clear_stroke_points_frame_origin(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 19);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~0x400u;
  return result;
}

TSP::Size *TSD::PencilAnnotationStorageArchive::clear_stroke_points_frame_size(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 20);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x800u;
  return result;
}

TSP::Point *TSD::PencilAnnotationStorageArchive::clear_rendered_frame_origin(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 21);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~0x1000u;
  return result;
}

TSP::Size *TSD::PencilAnnotationStorageArchive::clear_rendered_frame_size(TSD::PencilAnnotationStorageArchive *this)
{
  result = *(this + 22);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x2000u;
  return result;
}

TSD::PencilAnnotationStorageArchive *TSD::PencilAnnotationStorageArchive::PencilAnnotationStorageArchive(TSD::PencilAnnotationStorageArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288578528;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationStorageArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  return this;
}

void sub_27675C91C(_Unwind_Exception *a1)
{
  sub_27676C890(v2);
  sub_27676C890(v1);
  _Unwind_Resume(a1);
}

TSD::PencilAnnotationStorageArchive *TSD::PencilAnnotationStorageArchive::PencilAnnotationStorageArchive(TSD::PencilAnnotationStorageArchive *this, const TSD::PencilAnnotationStorageArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288578528;
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

  v16 = *(a2 + 4);
  if (v16)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v16 & 2) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v16 & 4) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  if ((v16 & 8) != 0)
  {
    operator new();
  }

  *(this + 12) = 0;
  if ((v16 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 13) = 0;
  if ((v16 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 14) = 0;
  if ((v16 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 15) = 0;
  if ((v16 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 16) = 0;
  if ((v16 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 17) = 0;
  if ((v16 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 18) = 0;
  if ((v16 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 19) = 0;
  if ((v16 & 0x800) != 0)
  {
    operator new();
  }

  *(this + 20) = 0;
  if ((v16 & 0x1000) != 0)
  {
    operator new();
  }

  *(this + 21) = 0;
  if ((v16 & 0x2000) != 0)
  {
    operator new();
  }

  *(this + 22) = 0;
  v17 = *(a2 + 184);
  v18 = *(a2 + 200);
  *(this + 216) = *(a2 + 216);
  *(this + 200) = v18;
  *(this + 184) = v17;
  return this;
}

void sub_27675CDBC(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v3, 0x1081C404FE48876);
  sub_27676C890(v2);
  sub_27676C890((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::PencilAnnotationStorageArchive::~PencilAnnotationStorageArchive(TSD::PencilAnnotationStorageArchive *this)
{
  sub_27675CEAC(this);
  sub_2766FFE58(this + 1);
  sub_27676C890(this + 6);
  sub_27676C890(this + 3);
}

{
  TSD::PencilAnnotationStorageArchive::~PencilAnnotationStorageArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *sub_27675CEAC(void *result)
{
  if (result != &TSD::_PencilAnnotationStorageArchive_default_instance_)
  {
    v1 = result;
    v2 = result[9];
    if (v2)
    {
      TSP::Point::~Point(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = v1[10];
    if (v3)
    {
      TSP::DataReference::~DataReference(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[11];
    if (v4)
    {
      TSP::DataReference::~DataReference(v4);
      MEMORY[0x277C9C1D0]();
    }

    if (v1[12])
    {
      v5 = MEMORY[0x277C9B630]();
      MEMORY[0x277C9C1D0](v5, 0x10A1C40290C9B23);
    }

    v6 = v1[13];
    if (v6)
    {
      TSP::Point::~Point(v6);
      MEMORY[0x277C9C1D0]();
    }

    v7 = v1[14];
    if (v7)
    {
      TSP::Size::~Size(v7);
      MEMORY[0x277C9C1D0]();
    }

    v8 = v1[15];
    if (v8)
    {
      TSP::Size::~Size(v8);
      MEMORY[0x277C9C1D0]();
    }

    v9 = v1[16];
    if (v9)
    {
      TSP::Color::~Color(v9);
      MEMORY[0x277C9C1D0]();
    }

    v10 = v1[17];
    if (v10)
    {
      TSP::Date::~Date(v10);
      MEMORY[0x277C9C1D0]();
    }

    v11 = v1[18];
    if (v11)
    {
      TSP::DataReference::~DataReference(v11);
      MEMORY[0x277C9C1D0]();
    }

    v12 = v1[19];
    if (v12)
    {
      TSP::Point::~Point(v12);
      MEMORY[0x277C9C1D0]();
    }

    v13 = v1[20];
    if (v13)
    {
      TSP::Size::~Size(v13);
      MEMORY[0x277C9C1D0]();
    }

    v14 = v1[21];
    if (v14)
    {
      TSP::Point::~Point(v14);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[22];
    if (result)
    {
      TSP::Size::~Size(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

void *TSD::PencilAnnotationStorageArchive::default_instance(TSD::PencilAnnotationStorageArchive *this)
{
  if (atomic_load_explicit(scc_info_PencilAnnotationStorageArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_PencilAnnotationStorageArchive_default_instance_;
}

uint64_t *TSD::PencilAnnotationStorageArchive::Clear(uint64_t *this)
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

  v8 = *(v1 + 16);
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    this = TSP::Point::Clear(*(v1 + 72));
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_37;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  this = TSP::DataReference::Clear(*(v1 + 80));
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = TSP::DataReference::Clear(*(v1 + 88));
  if ((v8 & 8) == 0)
  {
LABEL_14:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = TSP::Path::Clear(*(v1 + 96));
  if ((v8 & 0x10) == 0)
  {
LABEL_15:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_40:
    this = TSP::Size::Clear(*(v1 + 112));
    if ((v8 & 0x40) == 0)
    {
LABEL_17:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_39:
  this = TSP::Point::Clear(*(v1 + 104));
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_16:
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_41:
  this = TSP::Size::Clear(*(v1 + 120));
  if ((v8 & 0x80) != 0)
  {
LABEL_18:
    this = TSP::Color::Clear(*(v1 + 128));
  }

LABEL_19:
  if ((v8 & 0x3F00) == 0)
  {
    goto LABEL_27;
  }

  if ((v8 & 0x100) != 0)
  {
    this = TSP::Date::Clear(*(v1 + 136));
    if ((v8 & 0x200) == 0)
    {
LABEL_22:
      if ((v8 & 0x400) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_45;
    }
  }

  else if ((v8 & 0x200) == 0)
  {
    goto LABEL_22;
  }

  this = TSP::DataReference::Clear(*(v1 + 144));
  if ((v8 & 0x400) == 0)
  {
LABEL_23:
    if ((v8 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = TSP::Point::Clear(*(v1 + 152));
  if ((v8 & 0x800) == 0)
  {
LABEL_24:
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = TSP::Size::Clear(*(v1 + 160));
  if ((v8 & 0x1000) == 0)
  {
LABEL_25:
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_47:
  this = TSP::Point::Clear(*(v1 + 168));
  if ((v8 & 0x2000) != 0)
  {
LABEL_26:
    this = TSP::Size::Clear(*(v1 + 176));
  }

LABEL_27:
  if ((v8 & 0xC000) != 0)
  {
    *(v1 + 184) = 0;
  }

  if ((v8 & 0x3F0000) != 0)
  {
    *(v1 + 224) = 0;
    *(v1 + 192) = 0u;
    *(v1 + 208) = 0u;
  }

  v10 = *(v1 + 8);
  v9 = v1 + 8;
  *(v9 + 8) = 0;
  if (v10)
  {

    return sub_27670B144(v9);
  }

  return this;
}

google::protobuf::internal *TSD::PencilAnnotationStorageArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v99 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v99) & 1) == 0)
  {
    while (2)
    {
      v7 = (v99 + 1);
      v8 = *v99;
      if (*v99 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v99, (v9 - 128));
          v99 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_173;
          }

          v7 = TagFallback;
          v8 = v14;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 8)
              {
                goto LABEL_153;
              }

              v5 |= 0x4000u;
              v11 = (v7 + 1);
              LODWORD(v10) = *v7;
              if ((v10 & 0x80) == 0)
              {
                goto LABEL_12;
              }

              v12 = *v11;
              v10 = (v10 + (v12 << 7) - 128);
              if ((v12 & 0x80000000) == 0)
              {
                v11 = (v7 + 2);
LABEL_12:
                v99 = v11;
                *(a1 + 184) = v10;
                goto LABEL_151;
              }

              v91 = google::protobuf::internal::VarintParseSlow64(v7, v10);
              v99 = v91;
              *(a1 + 184) = v92;
              if (!v91)
              {
                goto LABEL_173;
              }

              goto LABEL_151;
            case 2u:
              if (v8 != 18)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 1u;
              v48 = *(a1 + 72);
              if (v48)
              {
                goto LABEL_135;
              }

              v49 = *(a1 + 8);
              if (v49)
              {
                v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
              }

              v50 = MEMORY[0x277C9BB00](v49);
              LODWORD(v48) = v50;
              *(a1 + 72) = v50;
              goto LABEL_134;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 2u;
              v37 = *(a1 + 80);
              if (v37)
              {
                goto LABEL_142;
              }

              v38 = *(a1 + 8);
              if (v38)
              {
                v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
              }

              v39 = MEMORY[0x277C9BA90](v38);
              LODWORD(v37) = v39;
              *(a1 + 80) = v39;
              goto LABEL_141;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 4u;
              v37 = *(a1 + 88);
              if (v37)
              {
                goto LABEL_142;
              }

              v43 = *(a1 + 8);
              if (v43)
              {
                v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
              }

              v44 = MEMORY[0x277C9BA90](v43);
              LODWORD(v37) = v44;
              *(a1 + 88) = v44;
              goto LABEL_141;
            case 5u:
              if (v8 != 42)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 8u;
              v29 = *(a1 + 96);
              if (!v29)
              {
                v30 = *(a1 + 8);
                if (v30)
                {
                  v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
                }

                v31 = MEMORY[0x277C9BAC0](v30);
                LODWORD(v29) = v31;
                *(a1 + 96) = v31;
                v7 = v99;
              }

              v32 = sub_27680AC5C(a3, v29, v7);
              goto LABEL_150;
            case 6u:
              if (v8 != 50)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 0x10u;
              v48 = *(a1 + 104);
              if (v48)
              {
                goto LABEL_135;
              }

              v56 = *(a1 + 8);
              if (v56)
              {
                v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
              }

              v57 = MEMORY[0x277C9BB00](v56);
              LODWORD(v48) = v57;
              *(a1 + 104) = v57;
              goto LABEL_134;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 0x20u;
              v58 = *(a1 + 112);
              if (v58)
              {
                goto LABEL_149;
              }

              v64 = *(a1 + 8);
              if (v64)
              {
                v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
              }

              v65 = MEMORY[0x277C9BAD0](v64);
              LODWORD(v58) = v65;
              *(a1 + 112) = v65;
              goto LABEL_148;
            case 8u:
              if (v8 != 64)
              {
                goto LABEL_153;
              }

              v5 |= 0x8000u;
              v46 = (v7 + 1);
              LODWORD(v45) = *v7;
              if ((v45 & 0x80) == 0)
              {
                goto LABEL_70;
              }

              v47 = *v46;
              v45 = (v45 + (v47 << 7) - 128);
              if (v47 < 0)
              {
                v89 = google::protobuf::internal::VarintParseSlow64(v7, v45);
                v99 = v89;
                *(a1 + 188) = v90;
                if (!v89)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v46 = (v7 + 2);
LABEL_70:
                v99 = v46;
                *(a1 + 188) = v45;
              }

              goto LABEL_151;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 0x40u;
              v58 = *(a1 + 120);
              if (v58)
              {
                goto LABEL_149;
              }

              v78 = *(a1 + 8);
              if (v78)
              {
                v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
              }

              v79 = MEMORY[0x277C9BAD0](v78);
              LODWORD(v58) = v79;
              *(a1 + 120) = v79;
              goto LABEL_148;
            case 0xAu:
              if (v8 != 81)
              {
                goto LABEL_153;
              }

              v36 = *v7;
              v15 = (v7 + 8);
              v5 |= 0x10000u;
              *(a1 + 192) = v36;
              goto LABEL_49;
            case 0xBu:
              if (v8 != 88)
              {
                goto LABEL_153;
              }

              v5 |= 0x20000u;
              v76 = (v7 + 1);
              v75 = *v7;
              if ((v75 & 0x8000000000000000) == 0)
              {
                goto LABEL_123;
              }

              v77 = *v76;
              v75 = (v77 << 7) + v75 - 128;
              if (v77 < 0)
              {
                v97 = google::protobuf::internal::VarintParseSlow64(v7, v75);
                v99 = v97;
                *(a1 + 200) = v98;
                if (!v97)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v76 = (v7 + 2);
LABEL_123:
                v99 = v76;
                *(a1 + 200) = v75;
              }

              goto LABEL_151;
            case 0xCu:
              if (v8 != 96)
              {
                goto LABEL_153;
              }

              v5 |= 0x40000u;
              v27 = (v7 + 1);
              v26 = *v7;
              if ((v26 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }

              v28 = *v27;
              v26 = (v28 << 7) + v26 - 128;
              if (v28 < 0)
              {
                v87 = google::protobuf::internal::VarintParseSlow64(v7, v26);
                v99 = v87;
                *(a1 + 208) = v88;
                if (!v87)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v27 = (v7 + 2);
LABEL_34:
                v99 = v27;
                *(a1 + 208) = v26;
              }

              goto LABEL_151;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 0x80u;
              v33 = *(a1 + 128);
              if (!v33)
              {
                v34 = *(a1 + 8);
                if (v34)
                {
                  v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
                }

                v35 = MEMORY[0x277C9BAF0](v34);
                LODWORD(v33) = v35;
                *(a1 + 128) = v35;
                v7 = v99;
              }

              v32 = sub_27680B3AC(a3, v33, v7);
              goto LABEL_150;
            case 0xEu:
              if (v8 != 112)
              {
                goto LABEL_153;
              }

              v5 |= 0x80000u;
              v62 = (v7 + 1);
              LODWORD(v61) = *v7;
              if ((v61 & 0x80) == 0)
              {
                goto LABEL_100;
              }

              v63 = *v62;
              v61 = (v61 + (v63 << 7) - 128);
              if (v63 < 0)
              {
                v95 = google::protobuf::internal::VarintParseSlow64(v7, v61);
                v99 = v95;
                *(a1 + 216) = v96;
                if (!v95)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v62 = (v7 + 2);
LABEL_100:
                v99 = v62;
                *(a1 + 216) = v61;
              }

              goto LABEL_151;
            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_153;
              }

              v17 = v7 - 1;
              while (1)
              {
                v18 = (v17 + 1);
                v99 = (v17 + 1);
                v19 = *(a1 + 40);
                if (!v19)
                {
                  goto LABEL_20;
                }

                v25 = *(a1 + 32);
                v20 = *v19;
                if (v25 < *v19)
                {
                  *(a1 + 32) = v25 + 1;
                  v22 = *&v19[2 * v25 + 2];
                  goto LABEL_24;
                }

                if (v20 == *(a1 + 36))
                {
LABEL_20:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v19 = *(a1 + 40);
                  v20 = *v19;
                }

                *v19 = v20 + 1;
                v21 = MEMORY[0x277C9BB20](*(a1 + 24));
                LODWORD(v22) = v21;
                v23 = *(a1 + 32);
                v24 = *(a1 + 40) + 8 * v23;
                *(a1 + 32) = v23 + 1;
                *(v24 + 8) = v21;
                v18 = v99;
LABEL_24:
                v17 = sub_27680B6EC(a3, v22, v18);
                v99 = v17;
                if (!v17)
                {
                  goto LABEL_173;
                }

                if (*a3 <= v17 || *v17 != 122)
                {
                  goto LABEL_151;
                }
              }

            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 0x100u;
              v40 = *(a1 + 136);
              if (!v40)
              {
                v41 = *(a1 + 8);
                if (v41)
                {
                  v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
                }

                v42 = MEMORY[0x277C9BAB0](v41);
                LODWORD(v40) = v42;
                *(a1 + 136) = v42;
                v7 = v99;
              }

              v32 = sub_27680D16C(a3, v40, v7);
              goto LABEL_150;
            case 0x11u:
              if (v8 != 137)
              {
                goto LABEL_153;
              }

              v16 = *v7;
              v15 = (v7 + 8);
              v5 |= 0x200000u;
              *(a1 + 224) = v16;
LABEL_49:
              v99 = v15;
              goto LABEL_151;
            case 0x12u:
              if (v8 != 144)
              {
                goto LABEL_153;
              }

              v5 |= 0x100000u;
              v52 = (v7 + 1);
              LODWORD(v51) = *v7;
              if ((v51 & 0x80) == 0)
              {
                goto LABEL_80;
              }

              v53 = *v52;
              v51 = (v51 + (v53 << 7) - 128);
              if (v53 < 0)
              {
                v93 = google::protobuf::internal::VarintParseSlow64(v7, v51);
                v99 = v93;
                *(a1 + 220) = v94;
                if (!v93)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v52 = (v7 + 2);
LABEL_80:
                v99 = v52;
                *(a1 + 220) = v51;
              }

              goto LABEL_151;
            case 0x13u:
              if (v8 != 154)
              {
                goto LABEL_153;
              }

              v66 = v7 - 2;
              break;
            case 0x14u:
              if (v8 != 162)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 0x200u;
              v37 = *(a1 + 144);
              if (v37)
              {
                goto LABEL_142;
              }

              v82 = *(a1 + 8);
              if (v82)
              {
                v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
              }

              v83 = MEMORY[0x277C9BA90](v82);
              LODWORD(v37) = v83;
              *(a1 + 144) = v83;
LABEL_141:
              v7 = v99;
LABEL_142:
              v32 = sub_27680B7BC(a3, v37, v7);
              goto LABEL_150;
            case 0x15u:
              if (v8 != 170)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 0x400u;
              v48 = *(a1 + 152);
              if (v48)
              {
                goto LABEL_135;
              }

              v54 = *(a1 + 8);
              if (v54)
              {
                v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
              }

              v55 = MEMORY[0x277C9BB00](v54);
              LODWORD(v48) = v55;
              *(a1 + 152) = v55;
              goto LABEL_134;
            case 0x16u:
              if (v8 != 178)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 0x800u;
              v58 = *(a1 + 160);
              if (v58)
              {
                goto LABEL_149;
              }

              v59 = *(a1 + 8);
              if (v59)
              {
                v59 = *(v59 & 0xFFFFFFFFFFFFFFFELL);
              }

              v60 = MEMORY[0x277C9BAD0](v59);
              LODWORD(v58) = v60;
              *(a1 + 160) = v60;
              goto LABEL_148;
            case 0x17u:
              if (v8 != 186)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 0x1000u;
              v48 = *(a1 + 168);
              if (v48)
              {
                goto LABEL_135;
              }

              v80 = *(a1 + 8);
              if (v80)
              {
                v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
              }

              v81 = MEMORY[0x277C9BB00](v80);
              LODWORD(v48) = v81;
              *(a1 + 168) = v81;
LABEL_134:
              v7 = v99;
LABEL_135:
              v32 = sub_27680AABC(a3, v48, v7);
              goto LABEL_150;
            case 0x18u:
              if (v8 != 194)
              {
                goto LABEL_153;
              }

              *(a1 + 16) |= 0x2000u;
              v58 = *(a1 + 176);
              if (v58)
              {
                goto LABEL_149;
              }

              v84 = *(a1 + 8);
              if (v84)
              {
                v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
              }

              v85 = MEMORY[0x277C9BAD0](v84);
              LODWORD(v58) = v85;
              *(a1 + 176) = v85;
LABEL_148:
              v7 = v99;
LABEL_149:
              v32 = sub_27680AB8C(a3, v58, v7);
              goto LABEL_150;
            default:
LABEL_153:
              if (v8)
              {
                v86 = (v8 & 7) == 4;
              }

              else
              {
                v86 = 1;
              }

              if (v86)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_27670AF80((a1 + 8));
              }

              v32 = google::protobuf::internal::UnknownFieldParse();
LABEL_150:
              v99 = v32;
              if (!v32)
              {
LABEL_173:
                v99 = 0;
                goto LABEL_2;
              }

LABEL_151:
              if (sub_27670AF08(a3, &v99))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v67 = (v66 + 2);
            v99 = (v66 + 2);
            v68 = *(a1 + 64);
            if (!v68)
            {
              goto LABEL_109;
            }

            v74 = *(a1 + 56);
            v69 = *v68;
            if (v74 < *v68)
            {
              *(a1 + 56) = v74 + 1;
              v71 = *&v68[2 * v74 + 2];
              goto LABEL_113;
            }

            if (v69 == *(a1 + 60))
            {
LABEL_109:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v68 = *(a1 + 64);
              v69 = *v68;
            }

            *v68 = v69 + 1;
            v70 = MEMORY[0x277C9BB20](*(a1 + 48));
            LODWORD(v71) = v70;
            v72 = *(a1 + 56);
            v73 = *(a1 + 64) + 8 * v72;
            *(a1 + 56) = v72 + 1;
            *(v73 + 8) = v70;
            v67 = v99;
LABEL_113:
            v66 = sub_27680B6EC(a3, v71, v67);
            v99 = v66;
            if (!v66)
            {
              goto LABEL_173;
            }

            if (*a3 <= v66 || *v66 != 410)
            {
              goto LABEL_151;
            }
          }
        }

        v7 = (v99 + 2);
      }

      break;
    }

    v99 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v99;
}