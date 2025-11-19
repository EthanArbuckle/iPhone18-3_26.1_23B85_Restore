uint64_t TSD::MovieFingerprintTrack::ByteSizeLong(TSD::MovieFingerprintTrack *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_32;
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
    v10 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 8) == 0)
    {
LABEL_14:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_14;
  }

  v13 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
  v14 = *(v13 + 23);
  v15 = *(v13 + 8);
  if ((v14 & 0x80u) == 0)
  {
    v15 = v14;
  }

  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_25:
  v16 = TSP::Size::ByteSizeLong(*(this + 7));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  v3 += ((9 * (__clz(*(this + 8) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_27:
  v3 += ((9 * (__clz(*(this + 9) | 1) ^ 0x3F) + 73) >> 6) + 1;
  if ((v2 & 0x80) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v17 = *(this + 20);
  if (v17 < 0)
  {
    v18 = 11;
  }

  else
  {
    v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v18;
LABEL_32:
  if ((v2 & 0xFF00) != 0)
  {
    v19 = v3 + ((v2 >> 8) & 2) + ((v2 >> 7) & 2) + ((v2 >> 9) & 2);
    if ((v2 & 0x800) != 0)
    {
      v19 += ((9 * (__clz(*(this + 11) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x1000) != 0)
    {
      v19 += 9;
    }

    if ((v2 & 0x2000) != 0)
    {
      v19 += 9;
    }

    if ((v2 & 0x4000) != 0)
    {
      v19 += 9;
    }

    if ((v2 & 0x8000) != 0)
    {
      v3 = v19 + 9;
    }

    else
    {
      v3 = v19;
    }
  }

  if ((v2 & 0xF0000) != 0)
  {
    v20 = v3 + 10;
    if ((v2 & 0x10000) == 0)
    {
      v20 = v3;
    }

    if ((v2 & 0x20000) != 0)
    {
      v20 += 10;
    }

    if ((v2 & 0x40000) != 0)
    {
      v3 = v20 + 10;
    }

    else
    {
      v3 = v20;
    }

    if ((v2 & 0x80000) != 0)
    {
      v21 = *(this + 38);
      v22 = ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v21 >= 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 11;
      }

      v3 += v23;
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

uint64_t TSD::MovieFingerprintTrack::MergeFrom(TSD::MovieFingerprintTrack *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::MovieFingerprintTrack::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::MovieFingerprintTrack::MergeFrom(uint64_t this, const TSD::MovieFingerprintTrack *a2)
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

        goto LABEL_35;
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
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_36;
    }

LABEL_35:
    *(v3 + 16) |= 4u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(v3 + 16) |= 8u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(v3 + 16) |= 0x10u;
    v6 = *(v3 + 56);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C9BAD0](v7);
      *(v3 + 56) = v6;
    }

    if (*(a2 + 7))
    {
      v8 = *(a2 + 7);
    }

    else
    {
      v8 = MEMORY[0x277D809D8];
    }

    this = TSP::Size::MergeFrom(v6, v8);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(v3 + 64) = *(a2 + 8);
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
      *(v3 + 80) = *(a2 + 20);
      goto LABEL_13;
    }

LABEL_46:
    *(v3 + 72) = *(a2 + 9);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_25;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 84) = *(a2 + 84);
    if ((v5 & 0x200) == 0)
    {
LABEL_17:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_50;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 85) = *(a2 + 85);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v3 + 86) = *(a2 + 86);
  if ((v5 & 0x800) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v3 + 88) = *(a2 + 11);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v3 + 96) = *(a2 + 12);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

LABEL_54:
    *(v3 + 112) = *(a2 + 14);
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_53:
  *(v3 + 104) = *(a2 + 13);
  if ((v5 & 0x4000) != 0)
  {
    goto LABEL_54;
  }

LABEL_22:
  if ((v5 & 0x8000) != 0)
  {
LABEL_23:
    *(v3 + 120) = *(a2 + 15);
  }

LABEL_24:
  *(v3 + 16) |= v5;
LABEL_25:
  if ((v5 & 0xF0000) == 0)
  {
    return this;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 128) = *(a2 + 16);
    if ((v5 & 0x20000) == 0)
    {
LABEL_28:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_29;
      }

LABEL_58:
      *(v3 + 144) = *(a2 + 18);
      if ((v5 & 0x80000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_28;
  }

  *(v3 + 136) = *(a2 + 17);
  if ((v5 & 0x40000) != 0)
  {
    goto LABEL_58;
  }

LABEL_29:
  if ((v5 & 0x80000) != 0)
  {
LABEL_30:
    *(v3 + 152) = *(a2 + 38);
  }

LABEL_31:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TSD::MovieFingerprintTrack::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MovieFingerprintTrack::Clear(this);

    return TSD::MovieFingerprintTrack::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::MovieFingerprintTrack::CopyFrom(uint64_t *this, const TSD::MovieFingerprintTrack *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::MovieFingerprintTrack::Clear(this);

    return TSD::MovieFingerprintTrack::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::MovieFingerprintTrack::IsInitialized(TSD::MovieFingerprintTrack *this)
{
  if ((*(this + 16) & 0x10) == 0)
  {
    return 1;
  }

  result = TSP::Size::IsInitialized(*(this + 7));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::MovieFingerprintTrack::InternalSwap(TSD::MovieFingerprintTrack *this, TSD::MovieFingerprintTrack *a2)
{
  sub_276700610(this + 1, a2 + 1);
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
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 7);
  v10 = *(this + 8);
  *(this + 56) = *(a2 + 56);
  *(a2 + 7) = v9;
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  v12 = *(this + 10);
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v11;
  *(a2 + 10) = v12;
  v13 = *(this + 11);
  v14 = *(this + 12);
  *(this + 88) = *(a2 + 88);
  *(a2 + 11) = v13;
  *(a2 + 12) = v14;
  v15 = *(this + 13);
  v16 = *(this + 14);
  *(this + 104) = *(a2 + 104);
  *(a2 + 13) = v15;
  *(a2 + 14) = v16;
  v17 = *(this + 15);
  v18 = *(this + 16);
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v17;
  *(a2 + 16) = v18;
  v19 = *(this + 17);
  v20 = *(this + 18);
  result = *(a2 + 136);
  *(this + 136) = result;
  *(a2 + 17) = v19;
  *(a2 + 18) = v20;
  LODWORD(v19) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v19;
  return result;
}

void *sub_2767689B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676D2FC(a1, 1);
  *result = &unk_2885759D8;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void *sub_276768A28(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676D3A4(a1);
}

uint64_t sub_276768AF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676D4A8(a1);
}

uint64_t sub_276768BC8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676D5AC(a1);
}

TSD::BezierPathSourceArchive *sub_276768C98(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676D6B0(a1, 1);
  TSD::BezierPathSourceArchive::BezierPathSourceArchive(v2, a1);
  return v2;
}

uint64_t sub_276768D24(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676D73C(a1);
}

uint64_t sub_276768DF8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676D844(a1);
}

TSD::EditableBezierPathSourceArchive_Node *sub_276768EC8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676D948(a1, 1);
  TSD::EditableBezierPathSourceArchive_Node::EditableBezierPathSourceArchive_Node(v2, a1);
  return v2;
}

TSD::EditableBezierPathSourceArchive_Subpath *sub_276768F54(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676D9D4(a1, 1);
  TSD::EditableBezierPathSourceArchive_Subpath::EditableBezierPathSourceArchive_Subpath(v2, a1);
  return v2;
}

TSD::EditableBezierPathSourceArchive *sub_276768FE0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676DA60(a1, 1);
  TSD::EditableBezierPathSourceArchive::EditableBezierPathSourceArchive(v2, a1);
  return v2;
}

TSD::PathSourceArchive *sub_27676906C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676DAEC(a1, 1);
  TSD::PathSourceArchive::PathSourceArchive(v2, a1);
  return v2;
}

uint64_t sub_2767690F8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676DB78(a1, 1);
  *result = &unk_288576168;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_27676916C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676DC20(a1);
}

void *sub_27676923C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676DD24(a1);
}

TSD::GradientArchive *sub_276769308(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676DE24(a1, 1);
  TSD::GradientArchive::GradientArchive(v2, a1);
  return v2;
}

uint64_t sub_276769394(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676DEB0(a1);
}

TSD::FillArchive *sub_276769470(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676DFC0(a1, 1);
  TSD::FillArchive::FillArchive(v2, a1);
  return v2;
}

uint64_t sub_2767694FC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676E04C(a1, 1);
  *result = &unk_288576588;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a1;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_276769594(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676E0D8(a1);
}

TSD::SmartStrokeArchive *sub_276769670(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676E1E8(a1, 1);
  TSD::SmartStrokeArchive::SmartStrokeArchive(v2, a1);
  return v2;
}

TSD::FrameArchive *sub_2767696FC(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676E274(a1, 1);
  TSD::FrameArchive::FrameArchive(v2, a1);
  return v2;
}

void *sub_276769788(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676E300(a1);
}

TSD::LineEndArchive *sub_27676985C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676E408(a1, 1);
  TSD::LineEndArchive::LineEndArchive(v2, a1);
  return v2;
}

TSD::ShadowArchive *sub_2767698E8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676E494(a1, 1);
  TSD::ShadowArchive::ShadowArchive(v2, a1);
  return v2;
}

uint64_t sub_276769974(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676E520(a1, 1);
  *result = &unk_288576A58;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

double sub_2767699E4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676E5C8(a1, 1);
  *v2 = &unk_288576B08;
  v2[1] = a1;
  v2[2] = 0;
  result = 0.0000000134110465;
  v2[3] = 0x3E4CCCCD00000000;
  return result;
}

uint64_t sub_276769A60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676E670(a1, 1);
  *result = &unk_288576BB8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 1058642330;
  return result;
}

uint64_t sub_276769ADC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676E718(a1, 1);
  *result = &unk_288576C68;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 1056964608;
  return result;
}

double sub_276769B54(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676E7C0(a1, 1);
  *v2 = &unk_288576D18;
  *(v2 + 8) = a1;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 62) = 0;
  *(v2 + 72) = 1065353216;
  return result;
}

uint64_t sub_276769BD8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676E868(a1);
}

uint64_t sub_276769CB4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676E978(a1);
}

uint64_t sub_276769D84(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676EA7C(a1);
}

uint64_t sub_276769E58(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676EB84(a1);
}

TSD::ThemePresetsArchive *sub_276769F28(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676EC88(a1, 1);
  TSD::ThemePresetsArchive::ThemePresetsArchive(v2, a1);
  return v2;
}

uint64_t sub_276769FB4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676ED14(a1);
}

TSD::DrawableArchive *sub_27676A08C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676EE20(a1, 1);
  TSD::DrawableArchive::DrawableArchive(v2, a1);
  return v2;
}

TSD::ContainerArchive *sub_27676A118(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676EEAC(a1, 1);
  TSD::ContainerArchive::ContainerArchive(v2, a1);
  return v2;
}

TSD::GroupArchive *sub_27676A1A4(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676EF38(a1, 1);
  TSD::GroupArchive::GroupArchive(v2, a1);
  return v2;
}

uint64_t sub_27676A230(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676EFC4(a1, 1);
  *result = &unk_2885773F8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_27676A2A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676F06C(a1);
}

uint64_t sub_27676A378(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676F174(a1);
}

uint64_t sub_27676A450(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676F280(a1);
}

TSD::ImageArchive *sub_27676A528(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676F38C(a1, 1);
  TSD::ImageArchive::ImageArchive(v2, a1);
  return v2;
}

void *sub_27676A5B4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676F418(a1);
}

uint64_t sub_27676A680(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676F518(a1);
}

TSD::MovieArchive *sub_27676A750(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676F61C(a1, 1);
  TSD::MovieArchive::MovieArchive(v2, a1);
  return v2;
}

void *sub_27676A7DC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676F6A8(a1, 1);
  *result = &unk_288577978;
  result[1] = a1;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  *(result + 37) = 0;
  return result;
}

void *sub_27676A854(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676F750(a1, 1);
  *result = &unk_288577A28;
  result[1] = a1;
  result[2] = 0;
  *(result + 23) = 0;
  return result;
}

uint64_t sub_27676A8C8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676F7F8(a1);
}

uint64_t sub_27676A998(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676F8FC(a1);
}

uint64_t sub_27676AA78(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676FA10(a1, 1);
  *result = &unk_288577C38;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_27676AAE8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676FAB8(a1, 1);
  *result = &unk_288577CE8;
  *(result + 8) = a1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 40) = 0;
  return result;
}

void *sub_27676AB60(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676FB60(a1, 1);
  *result = &unk_288577D98;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSD::GuideStorageArchive *sub_27676ABD0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676FC08(a1, 1);
  TSD::GuideStorageArchive::GuideStorageArchive(v2, a1);
  return v2;
}

TSD::CanvasSelectionArchive *sub_27676AC5C(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676FC94(a1, 1);
  TSD::CanvasSelectionArchive::CanvasSelectionArchive(v2, a1);
  return v2;
}

TSD::DrawableSelectionArchive *sub_27676ACE8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_27676FD20(a1, 1);
  TSD::DrawableSelectionArchive::DrawableSelectionArchive(v2, a1);
  return v2;
}

uint64_t sub_27676AD74(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27676FDAC(a1);
}

uint64_t sub_27676AE44(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676FEB0(a1, 1);
  *result = &unk_288578108;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_27676AEB4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27676FF58(a1, 1);
  *result = &unk_2885781B8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  return result;
}

TSD::CommentStorageArchive *sub_27676AF24(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276770000(a1, 1);
  TSD::CommentStorageArchive::CommentStorageArchive(v2, a1);
  return v2;
}

void *sub_27676AFB0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27677008C(a1);
}

void *sub_27676B080(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276770190(a1);
}

void *sub_27676B14C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276770290(a1);
}

TSD::PencilAnnotationStorageArchive *sub_27676B218(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276770390(a1, 1);
  TSD::PencilAnnotationStorageArchive::PencilAnnotationStorageArchive(v2, a1);
  return v2;
}

void *sub_27676B2A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_27677041C(a1);
}

void *sub_27676B370(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27677051C(a1, 1);
  *result = &unk_288578688;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_27676B3E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2767705C4(a1, 1);
  *result = &unk_288578738;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_27676B450(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_27677066C(a1, 1);
  *result = &unk_2885787E8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_27676B4C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276770714(a1, 1);
  *result = &unk_288578898;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_27676B534(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2767707BC(a1, 1);
  *result = &unk_288578948;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_27676B5A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276770864(a1);
}

void *sub_27676B670(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276770964(a1, 1);
  *result = &unk_288578AA8;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void *sub_27676B6E0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276770A0C(a1, 1);
  *result = &unk_288578B58;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_27676B750(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276770AB4(a1, 1);
  *result = &unk_288578C08;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_27676B7C4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276770B5C(a1);
}

uint64_t sub_27676B890(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_276770C5C(a1);
}

void *sub_27676B968(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_276770D68(a1, 1);
  *result = &unk_288578E18;
  result[1] = a1;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSD::Attribution *sub_27676B9D8(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276770E10(a1, 1);
  TSD::Attribution::Attribution(v2, a1);
  return v2;
}

TSD::MovieFingerprint *sub_27676BA64(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276770E9C(a1, 1);
  TSD::MovieFingerprint::MovieFingerprint(v2, a1);
  return v2;
}

TSD::MovieFingerprintTrack *sub_27676BAF0(google::protobuf::Arena *a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_276770F28(a1, 1);
  TSD::MovieFingerprintTrack::MovieFingerprintTrack(v2, a1);
  return v2;
}

uint64_t sub_27676C2F8(unsigned __int8 *a1, _DWORD *a2)
{
  v3 = *a1;
  if (*a1 < 0)
  {
    v5 = (v3 + (a1[1] << 7) - 128);
    if (a1[1] < 0)
    {
      result = google::protobuf::internal::VarintParseSlow32(a1, v5);
      *a2 = v6;
    }

    else
    {
      *a2 = v5;
      return (a1 + 2);
    }
  }

  else
  {
    *a2 = v3;
    return (a1 + 1);
  }

  return result;
}

void sub_27676C358(unsigned int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_2766C3850(a1, v3 + 1);
    *(*(a1 + 1) + 4 * v3) = v4;
  }

  else
  {
    *(*(a1 + 1) + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
}

void sub_27676C3BC(void *a1)
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
          TSD::EditableBezierPathSourceArchive_Node::~EditableBezierPathSourceArchive_Node(*v3);
          MEMORY[0x277C9C1D0]();
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

uint64_t sub_27676C440(uint64_t result, TSD::EditableBezierPathSourceArchive_Node **a2, TSD::EditableBezierPathSourceArchive_Node **a3, unsigned int a4, unsigned int a5)
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
      result = sub_27676C4F0(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSD::EditableBezierPathSourceArchive_Node>(v18);
      result = sub_27676C4F0(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27676C500(void *a1)
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
          TSD::EditableBezierPathSourceArchive_Subpath::~EditableBezierPathSourceArchive_Subpath(*v3);
          MEMORY[0x277C9C1D0]();
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

uint64_t sub_27676C584(uint64_t result, TSD::EditableBezierPathSourceArchive_Subpath **a2, TSD::EditableBezierPathSourceArchive_Subpath **a3, unsigned int a4, unsigned int a5)
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
      result = sub_27676C634(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSD::EditableBezierPathSourceArchive_Subpath>(v18);
      result = sub_27676C634(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27676C644(void *a1)
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
          TSD::GradientArchive_GradientStop::~GradientArchive_GradientStop(*v3);
          MEMORY[0x277C9C1D0]();
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

uint64_t sub_27676C6C8(uint64_t result, TSD::GradientArchive_GradientStop **a2, TSD::GradientArchive_GradientStop **a3, unsigned int a4, unsigned int a5)
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
      result = sub_27676C778(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSD::GradientArchive_GradientStop>(v18);
      result = sub_27676C778(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27676C788(void *a1)
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
          TSD::FillArchive::~FillArchive(*v3);
          MEMORY[0x277C9C1D0]();
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

void sub_27676C80C(void *a1)
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
          TSD::ShadowArchive::~ShadowArchive(*v3);
          MEMORY[0x277C9C1D0]();
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

void sub_27676C890(void *a1)
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
          TSP::Reference::~Reference(*v3);
          MEMORY[0x277C9C1D0]();
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

void sub_27676C914(uint64_t *a1, TSD::FillArchive **a2, TSD::FillArchive **a3, unsigned int a4, unsigned int a5)
{
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
      sub_27676C9C4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSD::FillArchive>(v18);
      sub_27676C9C4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_27676C9D4(uint64_t *a1, TSD::ShadowArchive **a2, TSD::ShadowArchive **a3, unsigned int a4, unsigned int a5)
{
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
      sub_27676CA84(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShadowArchive>(v18);
      sub_27676CA84(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

uint64_t sub_27676CA94(uint64_t result, TSP::Reference **a2, TSP::Reference **a3, unsigned int a4, unsigned int a5)
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
      result = sub_27676CB44(v13, v15);
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
      v22 = MEMORY[0x277C9BB20](v18);
      result = sub_27676CB44(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

__n128 sub_27676CB54(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  *(a1 + 4) = *(a2 + 64);
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v12 = a1[10];
  v13 = a1[11];
  *(a1 + 5) = *(a2 + 80);
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  v14 = a1[12];
  v15 = a1[13];
  result = *(a2 + 96);
  *(a1 + 6) = result;
  *(a2 + 96) = v14;
  *(a2 + 104) = v15;
  v17 = a1[14];
  a1[14] = *(a2 + 112);
  *(a2 + 112) = v17;
  LODWORD(v17) = *(a1 + 30);
  *(a1 + 30) = *(a2 + 120);
  *(a2 + 120) = v17;
  LOWORD(v17) = *(a1 + 62);
  *(a1 + 62) = *(a2 + 124);
  *(a2 + 124) = v17;
  LOBYTE(v17) = *(a1 + 126);
  *(a1 + 126) = *(a2 + 126);
  *(a2 + 126) = v17;
  return result;
}

void sub_27676CC08(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          sub_2766FFE58((v5 + 8));
          MEMORY[0x277C9C1D0](v5, 0x1081C404FE48876);
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

uint64_t sub_27676CCA0(uint64_t result, TSD::UserDefinedGuideArchive **a2, TSD::UserDefinedGuideArchive **a3, unsigned int a4, unsigned int a5)
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
      result = sub_27676CD50(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSD::UserDefinedGuideArchive>(v18);
      result = sub_27676CD50(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void sub_27676CD60(void *a1)
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
          TSD::MovieFingerprintTrack::~MovieFingerprintTrack(*v3);
          MEMORY[0x277C9C1D0]();
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

unsigned __int8 *sub_27676CDE4(google::protobuf::io::EpsCopyOutputStream *this, int a2, int *a3, unsigned int a4, unsigned __int8 *a5, uint64_t (*a6)(void))
{
  if (*this <= a5)
  {
    a5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a5);
  }

  v11 = sub_27676CEF8(this, a2, a4, a5);
  v12 = *(a3 + 1);
  v13 = &v12[*a3];
  do
  {
    if (*this <= v11)
    {
      v11 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, v11);
    }

    v14 = *v12++;
    v15 = a6(v14);
    if (v15 > 0x7F)
    {
      *v11 = v15 | 0x80;
      v16 = v15 >> 7;
      if (v15 >> 14)
      {
        v11 += 2;
        do
        {
          *(v11 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v11;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v11 - 1) = v17;
      }

      else
      {
        v11[1] = v16;
        v11 += 2;
      }
    }

    else
    {
      *v11++ = v15;
    }
  }

  while (v12 < v13);
  return v11;
}

_BYTE *sub_27676CEF8(uint64_t a1, int a2, unsigned int a3, _BYTE *a4)
{
  v4 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *a4 = v4 | 0x82;
    v6 = v4 >> 7;
    if (v4 >> 14)
    {
      v5 = a4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      a4[1] = v6;
      v5 = a4 + 2;
    }
  }

  else
  {
    *a4 = v4 | 2;
    v5 = a4 + 1;
  }

  if (a3 >= 0x80)
  {
    do
    {
      *v5++ = a3 | 0x80;
      v9 = a3 >> 7;
      v11 = a3 >> 14;
      a3 >>= 7;
    }

    while (v11);
  }

  else
  {
    LOBYTE(v9) = a3;
  }

  *v5 = v9;
  return v5 + 1;
}

uint64_t sub_27676CF8C(uint64_t result, TSD::MovieFingerprintTrack **a2, TSD::MovieFingerprintTrack **a3, unsigned int a4, unsigned int a5)
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
      result = sub_27676D03C(v13, v15);
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
      v22 = google::protobuf::Arena::CreateMaybeMessage<TSD::MovieFingerprintTrack>(v18);
      result = sub_27676D03C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_27676D04C(TSS::ThemeArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::ThemeArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSD::_ThemePresetsArchive_default_instance_);
}

uint64_t sub_27676D0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (atomic_load_explicit(scc_info_GroupArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  if (atomic_load_explicit(scc_info_FreehandDrawingArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](&TSD::_GroupArchive_default_instance_, a1, a2, 0, a3, &TSD::_FreehandDrawingArchive_default_instance_);
}

uint64_t sub_27676D170(TSP::DataAttributes *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSP::DataAttributes::default_instance(a1);
  if (atomic_load_explicit(scc_info_ImageDataAttributes_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSD::_ImageDataAttributes_default_instance_);
}

uint64_t sub_27676D1F4(TSS::CommandPropertyEntryArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::CommandPropertyEntryArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_FillArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSD::_FillArchive_default_instance_);
}

uint64_t sub_27676D278(TSS::CommandPropertyEntryArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::CommandPropertyEntryArchive::default_instance(a1);
  if (atomic_load_explicit(scc_info_StrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &TSD::_StrokeArchive_default_instance_);
}

uint64_t sub_27676D2FC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D48C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_27676D384);
}

void *sub_27676D3A4(uint64_t a1)
{
  v2 = sub_27676D41C(a1, 1);
  *v2 = &unk_288575A88;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_GeometryArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_27676D41C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D4BC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSD::GeometryArchive::~GeometryArchive);
}

uint64_t sub_27676D4A8(uint64_t a1)
{
  v2 = sub_27676D520(a1, 1);
  *v2 = &unk_288575B38;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_PointPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_27676D520(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D4EC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSD::PointPathSourceArchive::~PointPathSourceArchive);
}

uint64_t sub_27676D5AC(uint64_t a1)
{
  v2 = sub_27676D624(a1, 1);
  *v2 = &unk_288575BE8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ScalarPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_27676D624(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D51C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSD::ScalarPathSourceArchive::~ScalarPathSourceArchive);
}

uint64_t sub_27676D6B0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D54C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSD::BezierPathSourceArchive::~BezierPathSourceArchive);
}

uint64_t sub_27676D73C(uint64_t a1)
{
  v2 = sub_27676D7B8(a1, 1);
  *v2 = &unk_288575D48;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_CalloutPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_27676D7B8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D57C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSD::CalloutPathSourceArchive::~CalloutPathSourceArchive);
}

uint64_t sub_27676D844(uint64_t a1)
{
  v2 = sub_27676D8BC(a1, 1);
  *v2 = &unk_288575DF8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ConnectionLinePathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_27676D8BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D5AC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSD::ConnectionLinePathSourceArchive::~ConnectionLinePathSourceArchive);
}

uint64_t sub_27676D948(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D5DC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSD::EditableBezierPathSourceArchive_Node::~EditableBezierPathSourceArchive_Node);
}

uint64_t sub_27676D9D4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D60C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSD::EditableBezierPathSourceArchive_Subpath::~EditableBezierPathSourceArchive_Subpath);
}

uint64_t sub_27676DA60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D63C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSD::EditableBezierPathSourceArchive::~EditableBezierPathSourceArchive);
}

uint64_t sub_27676DAEC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D66C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 96, TSD::PathSourceArchive::~PathSourceArchive);
}

uint64_t sub_27676DB78(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D6A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27676DC00);
}

void *sub_27676DC20(uint64_t a1)
{
  v2 = sub_27676DC98(a1, 1);
  *v2 = &unk_288576218;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_TransformGradientArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_27676DC98(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D6D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSD::TransformGradientArchive::~TransformGradientArchive);
}

void *sub_27676DD24(uint64_t a1)
{
  v2 = sub_27676DD98(a1, 1);
  *v2 = &unk_2885762C8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_GradientArchive_GradientStop_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_27676DD98(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D708(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSD::GradientArchive_GradientStop::~GradientArchive_GradientStop);
}

uint64_t sub_27676DE24(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D738(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSD::GradientArchive::~GradientArchive);
}

uint64_t sub_27676DEB0(uint64_t a1)
{
  v2 = sub_27676DF34(a1, 1);
  *v2 = &unk_288576428;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ImageFillArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 69) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27676DF34(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D768(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSD::ImageFillArchive::~ImageFillArchive);
}

uint64_t sub_27676DFC0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D798(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSD::FillArchive::~FillArchive);
}

uint64_t sub_27676E04C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D7C8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSD::StrokePatternArchive::~StrokePatternArchive);
}

uint64_t sub_27676E0D8(uint64_t a1)
{
  v2 = sub_27676E15C(a1, 1);
  *v2 = &unk_288576638;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_StrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27676E15C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D7F8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSD::StrokeArchive::~StrokeArchive);
}

uint64_t sub_27676E1E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D828(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSD::SmartStrokeArchive::~SmartStrokeArchive);
}

uint64_t sub_27676E274(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D858(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSD::FrameArchive::~FrameArchive);
}

void *sub_27676E300(uint64_t a1)
{
  v2 = sub_27676E37C(a1, 1);
  *v2 = &unk_288576848;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_PatternedStrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = MEMORY[0x277D80A90];
  return v2;
}

uint64_t sub_27676E37C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D888(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSD::PatternedStrokeArchive::~PatternedStrokeArchive);
}

uint64_t sub_27676E408(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D8B8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSD::LineEndArchive::~LineEndArchive);
}

uint64_t sub_27676E494(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D8E8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSD::ShadowArchive::~ShadowArchive);
}

uint64_t sub_27676E520(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D918(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_27676E5A8);
}

uint64_t sub_27676E5C8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D948(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27676E650);
}

uint64_t sub_27676E670(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D978(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27676E6F8);
}

uint64_t sub_27676E718(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D9A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27676E7A0);
}

uint64_t sub_27676E7C0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680D9D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, sub_27676E848);
}

uint64_t sub_27676E868(uint64_t a1)
{
  v2 = sub_27676E8EC(a1, 1);
  *v2 = &unk_288576DC8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ShapeStylePropertiesArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 72) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27676E8EC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DA08(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSD::ShapeStylePropertiesArchive::~ShapeStylePropertiesArchive);
}

uint64_t sub_27676E978(uint64_t a1)
{
  v2 = sub_27676E9F0(a1, 1);
  *v2 = &unk_288576E78;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ShapeStyleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_27676E9F0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DA38(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSD::ShapeStyleArchive::~ShapeStyleArchive);
}

uint64_t sub_27676EA7C(uint64_t a1)
{
  v2 = sub_27676EAF8(a1, 1);
  *v2 = &unk_288576F28;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_MediaStylePropertiesArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_27676EAF8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DA68(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSD::MediaStylePropertiesArchive::~MediaStylePropertiesArchive);
}

uint64_t sub_27676EB84(uint64_t a1)
{
  v2 = sub_27676EBFC(a1, 1);
  *v2 = &unk_288576FD8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_MediaStyleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_27676EBFC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DA98(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSD::MediaStyleArchive::~MediaStyleArchive);
}

uint64_t sub_27676EC88(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DAC8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 240, TSD::ThemePresetsArchive::~ThemePresetsArchive);
}

uint64_t sub_27676ED14(uint64_t a1)
{
  v2 = sub_27676ED94(a1, 1);
  *v2 = &unk_288577138;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ThemeReplaceFillPresetCommandArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27676ED94(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DB04(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSD::ThemeReplaceFillPresetCommandArchive::~ThemeReplaceFillPresetCommandArchive);
}

uint64_t sub_27676EE20(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DB34(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 120, TSD::DrawableArchive::~DrawableArchive);
}

uint64_t sub_27676EEAC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DB70(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSD::ContainerArchive::~ContainerArchive);
}

uint64_t sub_27676EF38(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DBA0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 88, TSD::GroupArchive::~GroupArchive);
}

uint64_t sub_27676EFC4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DBD0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_27676F04C);
}

uint64_t sub_27676F06C(uint64_t a1)
{
  v2 = sub_27676F0E8(a1, 1);
  *v2 = &unk_2885774A8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27676F0E8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DC00(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, TSD::FreehandDrawingArchive::~FreehandDrawingArchive);
}

uint64_t sub_27676F174(uint64_t a1)
{
  v2 = sub_27676F1F4(a1, 1);
  *v2 = &unk_288577558;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ShapeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 52) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27676F1F4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DC30(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSD::ShapeArchive::~ShapeArchive);
}

uint64_t sub_27676F280(uint64_t a1)
{
  v2 = sub_27676F300(a1, 1);
  *v2 = &unk_288577608;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ConnectionLineArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27676F300(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DC60(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSD::ConnectionLineArchive::~ConnectionLineArchive);
}

uint64_t sub_27676F38C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DC90(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 208, TSD::ImageArchive::~ImageArchive);
}

void *sub_27676F418(uint64_t a1)
{
  v2 = sub_27676F48C(a1, 1);
  *v2 = &unk_288577768;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_MaskArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  return v2;
}

uint64_t sub_27676F48C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DCC0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSD::MaskArchive::~MaskArchive);
}

uint64_t sub_27676F518(uint64_t a1)
{
  v2 = sub_27676F590(a1, 1);
  *v2 = &unk_288577818;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_ImageDataAttributes_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_27676F590(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DCF0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSD::ImageDataAttributes::~ImageDataAttributes);
}

uint64_t sub_27676F61C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DD20(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 208, TSD::MovieArchive::~MovieArchive);
}

uint64_t sub_27676F6A8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DD50(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_27676F730);
}

uint64_t sub_27676F750(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DD80(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27676F7D8);
}

uint64_t sub_27676F7F8(uint64_t a1)
{
  v2 = sub_27676F870(a1, 1);
  *v2 = &unk_288577AD8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingContentDescription_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_27676F870(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DDB0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSD::FreehandDrawingContentDescription::~FreehandDrawingContentDescription);
}

uint64_t sub_27676F8FC(uint64_t a1)
{
  v2 = sub_27676F984(a1, 1);
  *v2 = &unk_288577B88;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_FreehandDrawingToolkitUIState_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 85) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_27676F984(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DDE0(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 104, TSD::FreehandDrawingToolkitUIState::~FreehandDrawingToolkitUIState);
}

uint64_t sub_27676FA10(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DE1C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_27676FA98);
}

uint64_t sub_27676FAB8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DE4C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_27676FB40);
}

uint64_t sub_27676FB60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DE7C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27676FBE8);
}

uint64_t sub_27676FC08(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DEAC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSD::GuideStorageArchive::~GuideStorageArchive);
}

uint64_t sub_27676FC94(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DEDC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSD::CanvasSelectionArchive::~CanvasSelectionArchive);
}

uint64_t sub_27676FD20(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DF0C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, TSD::DrawableSelectionArchive::~DrawableSelectionArchive);
}

uint64_t sub_27676FDAC(uint64_t a1)
{
  v2 = sub_27676FE24(a1, 1);
  *v2 = &unk_288578058;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_GroupSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 32) = 0;
  *(v2 + 24) = 0;
  return v2;
}

uint64_t sub_27676FE24(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DF3C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, TSD::GroupSelectionArchive::~GroupSelectionArchive);
}

uint64_t sub_27676FEB0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DF6C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_27676FF38);
}

uint64_t sub_27676FF58(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DF9C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 24, sub_27676FFE0);
}

uint64_t sub_276770000(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DFCC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, TSD::CommentStorageArchive::~CommentStorageArchive);
}

void *sub_27677008C(uint64_t a1)
{
  v2 = sub_276770104(a1, 1);
  *v2 = &unk_288578318;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_ReplaceAnnotationAuthorCommandArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

uint64_t sub_276770104(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680DFFC(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, TSD::ReplaceAnnotationAuthorCommandArchive::~ReplaceAnnotationAuthorCommandArchive);
}

void *sub_276770190(uint64_t a1)
{
  v2 = sub_276770204(a1, 1);
  *v2 = &unk_2885783C8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276770204(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E02C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSD::PencilAnnotationArchive::~PencilAnnotationArchive);
}

void *sub_276770290(uint64_t a1)
{
  v2 = sub_276770304(a1, 1);
  *v2 = &unk_288578478;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_PencilAnnotationSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276770304(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E05C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSD::PencilAnnotationSelectionArchive::~PencilAnnotationSelectionArchive);
}

uint64_t sub_276770390(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E08C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 232, TSD::PencilAnnotationStorageArchive::~PencilAnnotationStorageArchive);
}

void *sub_27677041C(uint64_t a1)
{
  v2 = sub_276770490(a1, 1);
  *v2 = &unk_2885785D8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecColorFillSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276770490(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E0C8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSD::SpecColorFillSetColorArchive::~SpecColorFillSetColorArchive);
}

uint64_t sub_27677051C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E0F8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2767705A4);
}

uint64_t sub_2767705C4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E128(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27677064C);
}

uint64_t sub_27677066C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E158(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2767706F4);
}

uint64_t sub_276770714(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E188(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_27677079C);
}

uint64_t sub_2767707BC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E1B8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276770844);
}

void *sub_276770864(uint64_t a1)
{
  v2 = sub_2767708D8(a1, 1);
  *v2 = &unk_2885789F8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecShadowSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_2767708D8(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E1E8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSD::SpecShadowSetColorArchive::~SpecShadowSetColorArchive);
}

uint64_t sub_276770964(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E218(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2767709EC);
}

uint64_t sub_276770A0C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E248(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276770A94);
}

uint64_t sub_276770AB4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E278(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276770B3C);
}

void *sub_276770B5C(uint64_t a1)
{
  v2 = sub_276770BD0(a1, 1);
  *v2 = &unk_288578CB8;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(scc_info_SpecStrokeSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2[3] = 0;
  return v2;
}

uint64_t sub_276770BD0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E2A8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, TSD::SpecStrokeSetColorArchive::~SpecStrokeSetColorArchive);
}

uint64_t sub_276770C5C(uint64_t a1)
{
  v2 = sub_276770CDC(a1, 1);
  *v2 = &unk_288578D68;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(scc_info_SpecStrokeSetPatternArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_276770CDC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E2D8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSD::SpecStrokeSetPatternArchive::~SpecStrokeSetPatternArchive);
}

uint64_t sub_276770D68(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E308(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_276770DF0);
}

uint64_t sub_276770E10(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E338(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSD::Attribution::~Attribution);
}

uint64_t sub_276770E9C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E368(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 64, TSD::MovieFingerprint::~MovieFingerprint);
}

uint64_t sub_276770F28(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_27680E398(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x277C9BB90);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 160, TSD::MovieFingerprintTrack::~MovieFingerprintTrack);
}

uint64_t sub_276771070(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_27670AF08(v1, va);
}

uint64_t sub_27677108C(google::protobuf::UnknownFieldSet *this)
{

  return google::protobuf::UnknownFieldSet::AddVarint(this);
}

uint64_t sub_2767710EC()
{

  return google::protobuf::internal::UnknownFieldParse();
}

uint64_t sub_276771104(google::protobuf::UnknownFieldSet *this)
{

  return google::protobuf::UnknownFieldSet::AddVarint(this);
}

uint64_t sub_27677111C()
{
  google::protobuf::internal::AddDescriptors();
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSD::ThemePresetsArchive::extension = 100;
  qword_2812F7110 = &TSD::_ThemePresetsArchive_default_instance_;
  sub_27676D04C(0x64, 11, 0);
  if (atomic_load_explicit(scc_info_FreehandDrawingArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSD::FreehandDrawingArchive::freehand_drawing_archive = 100;
  qword_2812F7120 = &TSD::_FreehandDrawingArchive_default_instance_;
  sub_27676D0D0(100, 11, 0);
  if (atomic_load_explicit(scc_info_ImageDataAttributes_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSD::ImageDataAttributes::image_data_attributes = 100;
  qword_2812F7130 = &TSD::_ImageDataAttributes_default_instance_;
  sub_27676D170(0x64, 11, 0);
  if (atomic_load_explicit(scc_info_FillArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSD::fill = 200;
  qword_2812F7140 = &TSD::_FillArchive_default_instance_;
  sub_27676D1F4(0xC8, 11, 0);
  if (atomic_load_explicit(scc_info_StrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  TSD::stroke = 201;
  qword_2812F7150 = &TSD::_StrokeArchive_default_instance_;

  return sub_27676D278(0xC9, 11, 0);
}

void sub_2767732AC(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    v4 = *(a1 + 16);
    v5 = 8;
    do
    {
      v6 = *(v4 + v5);
      if (v6)
      {
        sub_27668E9B4(v6);
        v4 = *(a1 + 16);
        *(v4 + v5) = 0;
        v2 = *a1;
      }

      ++v3;
      v5 += 16;
    }

    while (v3 < v2);
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    sub_27668E9B4(v7);
    *(a1 + 8) = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    sub_27668E9B4(v8);
    *(a1 + 16) = 0;
  }

  *a1 = 0;
}

void sub_276773338(int *a1, int *a2, int a3)
{
  if (*a1 == -1)
  {
    v6 = 0;
    v7 = 0;
LABEL_5:
    LODWORD(v8) = -1;
LABEL_6:
    v8 = v8;
    goto LABEL_7;
  }

  v7 = sub_27668E880(4 * (*a1 + 1));
  if (*a1 == -1)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v17 = sub_27668E880(16 * (*a1 + 1));
  v6 = v17;
  LODWORD(v8) = *a1;
  if (*a1 <= 0)
  {
    goto LABEL_6;
  }

  v18 = 0;
  v19 = 0;
  do
  {
    v20 = *(a1 + 2);
    v7[v19] = *(*(a1 + 1) + 4 * v19);
    *&v17[v18] = *(v20 + v18);
    ++v19;
    v8 = *a1;
    v18 += 16;
  }

  while (v19 < v8);
LABEL_7:
  v7[v8] = a3;
  v9 = *a2;
  v10 = &v6[16 * v8];
  *v10 = v9;
  if (v9)
  {
    v11 = sub_27668E880(16 * v9);
    v12 = *a2;
    *(v10 + 1) = v11;
    if (v12 >= 1)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        *(*(v10 + 1) + v13) = *(*(a2 + 1) + v13);
        ++v14;
        v13 += 16;
      }

      while (v14 < *a2);
    }
  }

  else
  {
    *(v10 + 1) = 0;
  }

  v15 = *(a1 + 2);
  if (v15)
  {
    sub_27668E9B4(v15);
    *(a1 + 2) = 0;
  }

  v16 = *(a1 + 1);
  if (v16)
  {
    sub_27668E9B4(v16);
  }

  ++*a1;
  *(a1 + 1) = v7;
  *(a1 + 2) = v6;
}

int *sub_276773484(int *result)
{
  if (*result >= 1)
  {
    v1 = result;
    v2 = 0;
    while (1)
    {
      v3 = *(v1 + 2) + 16 * v2;
      v4 = *v3;
      v5 = *(v3 + 8);
      if (*v3 < 2)
      {
        break;
      }

      v6 = 0;
      v7 = v4 - 1;
      v8 = (v5 + 2);
      v9 = -1;
      do
      {
        result = (v8 - 2);
        if (vabdd_f64(*(v8 - 2), *v8) <= 2.22044605e-16 && vabdd_f64(*(v8 - 1), v8[1]) <= 2.22044605e-16)
        {
          result = memmove(result, v8, 16 * (v4 + v9));
          v4 = v7;
        }

        ++v6;
        v7 = v4 - 1;
        v8 += 2;
        --v9;
      }

      while (v6 < v4 - 1);
      if (v4 < 3)
      {
        goto LABEL_12;
      }

      v10 = *v1;
LABEL_14:
      if (++v2 >= v10)
      {
        return result;
      }
    }

    if (v5)
    {
LABEL_12:
      sub_27668E9B4(v5);
    }

    result = memmove((*(v1 + 2) + 16 * v2), (*(v1 + 2) + 16 * v2 + 16), 16 * (*v1 + ~v2));
    v10 = *v1 - 1;
    *v1 = v10;
    goto LABEL_14;
  }

  return result;
}

void sub_2767735B0(unsigned int a1, unsigned int *a2, int *a3, unsigned int *a4)
{
  v4 = a4;
  v7 = a1;
  v221 = 0;
  v222[0] = 0;
  v219 = 0;
  v220 = 0;
  v218 = 0;
  v8 = *a2;
  v9 = *a3;
  if (!*a2)
  {
    if (a1 >= 2 && v9)
    {
      v10 = 0;
      goto LABEL_15;
    }

LABEL_18:
    if (a2 == a4)
    {
      sub_2767732AC(a2);
    }

    if (a3 == v4)
    {
      sub_2767732AC(a3);
    }

    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    return;
  }

  if (a1 == 1 && !v9)
  {
    goto LABEL_18;
  }

  v10 = a1 == 0;
  if (a1 <= 1 && v8 >= 1 && v9 >= 1)
  {
    sub_2767749A8(a2, a3, a1);
    v7 = a1;
    v8 = *a2;
  }

  if (v8 >= 1)
  {
    v12 = sub_276774BCC(&v219, v222, &v218, a2, 1, v7);
    goto LABEL_16;
  }

LABEL_15:
  v12 = 0;
LABEL_16:
  if (*a3 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_276774BCC(&v219, v222, &v218, a3, 0, a1);
  }

  v200 = v219;
  if (v219)
  {
    v198 = v12;
    v14 = v218;
    if (v218)
    {
      v15 = sub_27668E880(8 * v218);
    }

    else
    {
      v15 = 0;
    }

    v199 = v15;
    sub_2767750F0(&v218 + 1, v15, v222[0]);
    sub_276775150(v222);
    if (a2 == v4)
    {
      sub_2767732AC(a2);
    }

    v197 = v13;
    if (a3 == v4)
    {
      sub_2767732AC(a3);
    }

    if (v14 <= 0)
    {
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
    }

    else
    {
      v196 = v4;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v217 = 0;
      v216 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v213 = 0;
      v214 = 0;
      v23 = 0.0;
      v24 = 0.0;
      v25 = a1;
      do
      {
        v26 = v19 + 1;
        HIDWORD(v218) = v26;
        v27 = v199[v19];
        if (v26 < v14)
        {
          v24 = v199[v26];
          v23 = v24 - v27;
        }

        v28 = v200;
        if (v200 && *v200 == v27)
        {
          v29 = *(v200 + 1);
          if (v29)
          {
            v30 = v21;
            v31 = v20;
            do
            {
              sub_2767751A0(&v220, v29, 0);
              v29 = *(v29 + 160);
            }

            while (v29);
            v17 = v220;
            v25 = a1;
            v20 = v31;
            v21 = v30;
          }

          v28 = *(v200 + 2);
          v18 = v17;
        }

        *(v18 + 76 + 4 * *(v18 + 72)) = *(v18 + 40) != v27;
        *(v18 + 76 + 4 * (*(v18 + 72) == 0)) = 0;
        *(v18 + 100) = 0;
        v32 = *(v18 + 136);
        v33 = v18;
        v200 = v28;
        if (!v32)
        {
          goto LABEL_61;
        }

        do
        {
          v34 = v32 + 76;
          *(v32 + 76 + 4 * *(v32 + 72)) = *(v32 + 40) != v27;
          v35 = *(v32 + 72);
          *(v32 + 76 + 4 * (*(v32 + 72) == 0)) = 0;
          *(v32 + 100) = 0;
          v36 = *(v32 + 76 + 4 * v35);
          if (v36)
          {
            v37 = v32;
            if (vabdd_f64(*(v33 + 48), *(v32 + 48)) <= 2.22044605e-16)
            {
              v37 = v32;
              if (vabdd_f64(*(v33 + 64), *(v32 + 64)) <= 2.22044605e-16)
              {
                v37 = v32;
                if (*(v33 + 40) != v27)
                {
                  *(v34 + 4 * v35) = *(v33 + 76 + 4 * v35) ^ v36;
                  v38 = *(v32 + 72) == 0;
                  v39 = *(v33 + 76 + 4 * (*(v32 + 72) == 0));
                  *(v32 + 100) = 1;
                  *(v34 + 4 * v38) = v39;
                  *(v33 + 76) = 0;
                  *(v33 + 80) = 0;
                  *(v33 + 100) = 2;
                  v37 = v32;
                }
              }
            }
          }

          else
          {
            v37 = v33;
          }

          v32 = *(v32 + 136);
          v33 = v37;
        }

        while (v32);
        if (v18)
        {
LABEL_61:
          v40 = 0;
          v41 = 0;
          v42 = -1.79769313e308;
          v43 = v18;
          while (1)
          {
            v45 = *(v43 + 76);
            v44 = *(v43 + 80);
            v47 = *(v43 + 84);
            v46 = *(v43 + 88);
            v48 = v45 + 2 * v47;
            v49 = v44 + 2 * v46;
            if (!(v48 | v49))
            {
LABEL_184:
              v72 = v42;
              goto LABEL_185;
            }

            *(v43 + 92) = v10;
            *(v43 + 96) = v22;
            if (v25 < 2)
            {
              break;
            }

            if (v25 == 2)
            {
              HIDWORD(v217) = v22 ^ v10;
              v20 = v22 ^ v10 ^ v45 ^ v44;
              v216 = v10 ^ v22 ^ (v40 != 0) ^ (v41 != 0) ^ v47 ^ v46;
              LODWORD(v217) = v10 ^ v22 ^ (v40 != 0) ^ (v41 != 0);
              v21 = 1;
            }

            else if (v25 == 3)
            {
              if (v48)
              {
                if (v22)
                {
                  v50 = v41 == 0;
                }

                else
                {
                  v50 = 0;
                }

                v21 = !v50;
                if (!v50 || !v49)
                {
                  goto LABEL_141;
                }

LABEL_105:
                v21 = 1;
                if (v10)
                {
                  if (v48)
                  {
                    v55 = v49 == 0;
                  }

                  else
                  {
                    v55 = 1;
                  }

                  v57 = !v55 && v10 == v22;
                  if (v40)
                  {
                    v21 = 1;
                  }

                  else
                  {
                    v21 = v57;
                  }
                }
              }

              else
              {
                if (v49)
                {
                  goto LABEL_105;
                }

                v21 = 0;
              }

LABEL_141:
              HIDWORD(v217) = (v10 | v22) != 0;
              v20 = v10 != v45 || v22 != v44;
              v67 = v40 != 0;
              v68 = v41 != 0;
              v70 = v10 != v67 || v22 != v68;
              LODWORD(v217) = v70;
              v65 = (v46 ^ v68) != v22;
              if ((v47 ^ v67) != v10)
              {
                v65 = 1;
              }

LABEL_155:
              v216 = v65;
            }

            v10 ^= v45;
            if (v48)
            {
              v40 = dword_27682CEA8[6 * v40 - 2 + 2 * v48 + v10];
            }

            v22 ^= v44;
            if (v49)
            {
              v41 = dword_27682CEA8[6 * v41 + (v22 + 2 * v49 - 2)];
            }

            if (!v21)
            {
              goto LABEL_184;
            }

            v71 = 4 * HIDWORD(v217) + 8 * v20 + 2 * v216 + v217;
            v72 = *(v43 + 48);
            v21 = 1;
            if (v71 > 6)
            {
              if (v71 > 10)
              {
                if (v71 == 11)
                {
                  if (v72 != v42)
                  {
                    v99 = v20;
                    v100 = sub_27668E880(0x18uLL);
                    v20 = v99;
                    v25 = a1;
                    *v100 = v72;
                    v100[1] = v27;
                    v101 = *(v213 + 32);
                    v100[2] = *(v101 + 8);
                    *(v101 + 8) = v100;
                    v42 = v72;
                  }

                  *(v43 + 112) = v213;
                  v21 = 1;
                  v72 = v42;
                  v213 = 0;
                  goto LABEL_185;
                }

                v77 = v20;
                if (v71 != 13)
                {
                  if (v71 == 14)
                  {
                    if (v72 != v42)
                    {
                      v81 = sub_27668E880(0x18uLL);
                      *v81 = v72;
                      v81[1] = v27;
                      v81[2] = 0.0;
                      v82 = *(v213 + 32);
                      *(*(v82 + 16) + 16) = v81;
                      *(v82 + 16) = v81;
                      v42 = v72;
                    }

                    sub_276775260(v213, *(v43 + 120), v214);
                    v213 = 0;
                    *(v43 + 120) = 0;
                    goto LABEL_191;
                  }

                  goto LABEL_192;
                }

                v106 = *(v43 + 120);
                v107 = sub_27668E880(0x18uLL);
                *v107 = v72;
                v107[1] = v27;
                v107[2] = 0.0;
                v108 = *(v106 + 32);
                *(*(v108 + 16) + 16) = v107;
                *(v108 + 16) = v107;
                v213 = *(v43 + 120);
                *(v43 + 120) = 0;
                v21 = 1;
LABEL_208:
                v25 = a1;
                goto LABEL_209;
              }

              if ((v71 - 7) < 2)
              {
                v87 = v20;
                v88 = sub_27668E880(0x28uLL);
                v89 = sub_27668E880(0x18uLL);
                v20 = v87;
                *v89 = v72;
                v89[1] = v27;
                v89[2] = 0.0;
                v21 = 1;
                *v88 = 1;
                v88[3] = v214;
                v88[4] = v88;
                v88[1] = v89;
                v88[2] = v89;
                v213 = v88;
                v214 = v88;
                *(v43 + 112) = v88;
              }

              else
              {
                if (v71 == 9)
                {
                  v77 = v20;
                  if (v72 != v42)
                  {
                    v92 = sub_27668E880(0x18uLL);
                    *v92 = v72;
                    v92[1] = v27;
                    v93 = *(v213 + 32);
                    v92[2] = *(v93 + 8);
                    *(v93 + 8) = v92;
                    v42 = v72;
                  }

                  v80 = v214;
                  sub_27677520C(v213, *(v43 + 120), v214);
                  goto LABEL_196;
                }

                if (v71 == 10)
                {
                  if (*(v43 + 24) == v27)
                  {
                    v73 = *(v43 + 120);
                    v74 = v20;
                    v75 = sub_27668E880(0x18uLL);
                    v20 = v74;
                    *v75 = v72;
                    v75[1] = v27;
                    v76 = *(v73 + 32);
                    v75[2] = *(v76 + 8);
                    *(v76 + 8) = v75;
                  }

                  *(v43 + 112) = *(v43 + 120);
                  v21 = 1;
                }

                else
                {
                  v72 = v42;
                }
              }

LABEL_200:
              v25 = a1;
              goto LABEL_185;
            }

            if (v71 > 3)
            {
              if (v71 != 4)
              {
                if (v71 == 5)
                {
                  if (*(v43 + 24) == v27)
                  {
                    v102 = *(v43 + 120);
                    v103 = v20;
                    v104 = sub_27668E880(0x18uLL);
                    v20 = v103;
                    *v104 = v72;
                    v104[1] = v27;
                    v104[2] = 0.0;
                    v105 = *(v102 + 32);
                    *(*(v105 + 16) + 16) = v104;
                    *(v105 + 16) = v104;
                  }

                  *(v43 + 112) = *(v43 + 120);
                  v21 = 1;
                  v25 = a1;
                  goto LABEL_185;
                }

                v77 = v20;
                if (v72 != v42)
                {
                  v78 = sub_27668E880(0x18uLL);
                  *v78 = v72;
                  v78[1] = v27;
                  v78[2] = 0.0;
                  v79 = *(v213 + 32);
                  *(*(v79 + 16) + 16) = v78;
                  *(v79 + 16) = v78;
                  v42 = v72;
                }

                v80 = v214;
                sub_276775260(v213, *(v43 + 120), v214);
LABEL_196:
                *(v43 + 120) = 0;
                v94 = sub_27668E880(0x28uLL);
                v95 = sub_27668E880(0x18uLL);
                *v95 = v72;
                v95[1] = v27;
                v95[2] = 0.0;
                v21 = 1;
                *v94 = 1;
                v94[3] = v80;
                v94[4] = v94;
                v94[1] = v95;
                v94[2] = v95;
                v213 = v94;
                v214 = v94;
                v72 = v42;
                *(v43 + 112) = v94;
                v25 = a1;
LABEL_209:
                v20 = v77;
                goto LABEL_185;
              }

              if (v72 != v42)
              {
                v96 = v20;
                v97 = sub_27668E880(0x18uLL);
                v20 = v96;
                *v97 = v72;
                v97[1] = v27;
                v97[2] = 0.0;
                v98 = *(v213 + 32);
                *(*(v98 + 16) + 16) = v97;
                *(v98 + 16) = v97;
                v42 = v72;
              }

              *(v43 + 112) = v213;
              v21 = 1;
              v72 = v42;
              v213 = 0;
              goto LABEL_200;
            }

            if (v71 == 1)
            {
              v77 = v20;
              if (v72 != v42)
              {
                v90 = sub_27668E880(0x18uLL);
                *v90 = v72;
                v90[1] = v27;
                v91 = *(v213 + 32);
                v90[2] = *(v91 + 8);
                *(v91 + 8) = v90;
                v42 = v72;
              }

              sub_27677520C(v213, *(v43 + 120), v214);
              v213 = 0;
LABEL_191:
              v21 = 1;
LABEL_192:
              v72 = v42;
              goto LABEL_208;
            }

            if (v71 != 2)
            {
              goto LABEL_184;
            }

            v83 = *(v43 + 120);
            v84 = v20;
            v85 = sub_27668E880(0x18uLL);
            v20 = v84;
            v25 = a1;
            *v85 = v72;
            v85[1] = v27;
            v86 = *(v83 + 32);
            v85[2] = *(v86 + 8);
            *(v86 + 8) = v85;
            v213 = *(v43 + 120);
            v21 = 1;
LABEL_185:
            v43 = *(v43 + 136);
            v42 = v72;
            if (!v43)
            {
              do
              {
                v109 = *(v18 + 40);
                if (v109 == v27)
                {
                  v110 = *(v18 + 128);
                  v111 = *(v18 + 136);
                  v112 = v111;
                  if (v110)
                  {
                    *(v110 + 136) = v111;
                    v112 = v17;
                  }

                  if (v111)
                  {
                    *(v111 + 128) = v110;
                  }

                  if (v110)
                  {
                    if (*(v18 + 104) == 1 && *(v110 + 104) == 2)
                    {
                      *(v110 + 120) = *(v18 + 120);
                      *(v110 + 104) = 0;
                      v113 = *(v110 + 128);
                      if (v113)
                      {
                        if (*(v113 + 104) == 2)
                        {
                          *(v110 + 104) = 1;
                        }
                      }
                    }
                  }

                  v17 = v112;
                }

                else
                {
                  if (v109 == v24)
                  {
                    v114 = *(v18 + 32);
                  }

                  else
                  {
                    v114 = *(v18 + 16) + *(v18 + 64) * (v24 - *(v18 + 24));
                  }

                  *(v18 + 56) = v114;
                }

                v18 = *(v18 + 136);
              }

              while (v18);
              v220 = v17;
              v18 = v17;
              goto LABEL_229;
            }
          }

          if (v48)
          {
            if (v22)
            {
              v51 = 0;
            }

            else
            {
              v51 = v41 == 0;
            }

            v21 = !v51;
            if (!v51 || !v49)
            {
LABEL_119:
              if (v10)
              {
                v58 = v22 == 0;
              }

              else
              {
                v58 = 1;
              }

              v59 = !v58;
              HIDWORD(v217) = v59;
              v20 = v10 != v45 && v22 != v44;
              v61 = v40 != 0;
              v62 = v41 != 0;
              v64 = v10 != v61 && v22 != v62;
              LODWORD(v217) = v64;
              v65 = (v46 ^ v62) != v22;
              if ((v47 ^ v61) == v10)
              {
                v65 = 0;
              }

              goto LABEL_155;
            }
          }

          else if (!v49)
          {
            v21 = 0;
            goto LABEL_119;
          }

          if (v48)
          {
            v52 = v49 == 0;
          }

          else
          {
            v52 = 1;
          }

          v54 = !v52 && v22 == 0;
          if (v40)
          {
            v54 = 1;
          }

          if (v10)
          {
            v21 = 1;
          }

          else
          {
            v21 = v54;
          }

          goto LABEL_119;
        }

LABEL_229:
        v14 = v218;
        v19 = HIDWORD(v218);
        if (SHIDWORD(v218) < v218)
        {
          v205 = v21;
          v115 = v20;
          sub_2767752B8(&v221, v17, v23);
          v116 = v221;
          if (v221)
          {
            v25 = a1;
            v20 = v115;
            v21 = v205;
            while (1)
            {
              v118 = *v116;
              v117 = v116[1];
              v119 = *(*v116 + 76);
              if (v119)
              {
                v120 = *(v117 + 76);
                if (v120)
                {
                  v121 = (v118 + 112);
                  v122 = *(v118 + 112);
                  v124 = (v117 + 112);
                  v123 = *(v117 + 112);
                  v125 = *(v116 + 1);
                  if (*(v118 + 92))
                  {
                    goto LABEL_235;
                  }

                  v127 = 1;
                }

                else
                {
                  if (!*(v117 + 80))
                  {
                    goto LABEL_271;
                  }

                  v120 = 0;
                  v121 = (v118 + 112);
                  v122 = *(v118 + 112);
                  v124 = (v117 + 112);
                  v123 = *(v117 + 112);
                  v125 = *(v116 + 1);
                  v127 = *(v118 + 92) == 0;
                }
              }

              else
              {
                if (!*(v118 + 80))
                {
                  goto LABEL_271;
                }

                v120 = *(v117 + 76);
                if (v120)
                {
                  v121 = (v118 + 112);
                  v122 = *(v118 + 112);
                  v124 = (v117 + 112);
                  v123 = *(v117 + 112);
                  v125 = *(v116 + 1);
                  v126 = *(v117 + 92);
                  goto LABEL_239;
                }

                if (!*(v117 + 80))
                {
LABEL_271:
                  v136 = v20;
                  goto LABEL_324;
                }

                v121 = (v118 + 112);
                v122 = *(v118 + 112);
                v124 = (v117 + 112);
                v123 = *(v117 + 112);
                v125 = *(v116 + 1);
                v120 = *(v118 + 92);
                if (v120)
                {
                  v120 = 0;
LABEL_235:
                  v126 = *(v117 + 92);
LABEL_239:
                  v127 = v126 != 0;
                  goto LABEL_243;
                }

                v127 = 0;
              }

LABEL_243:
              v128 = *(v118 + 80);
              if (v128)
              {
                if (*(v118 + 96))
                {
                  v129 = *(v117 + 80);
                  if (v129)
                  {
                    goto LABEL_249;
                  }
                }

                else
                {
                  v129 = 1;
                }
              }

              else if (*(v117 + 80) || (v129 = *(v118 + 96)) != 0)
              {
LABEL_249:
                v129 = *(v117 + 96) != 0;
              }

              if (v25 < 2)
              {
                v216 = v120 != v127 && *(v117 + 80) != v129;
                LODWORD(v217) = v127 & v129;
                v135 = v119 != v127 && v128 != v129;
                HIDWORD(v217) = v135;
                if ((v120 ^ v119) == v127)
                {
                  v20 = 0;
                  goto LABEL_282;
                }

LABEL_280:
                v20 = (*(v117 + 80) ^ v128) != v129;
                goto LABEL_282;
              }

              if (v25 == 2)
              {
                LODWORD(v217) = v129 ^ v127;
                v131 = v120 ^ v127;
                v132 = *(v117 + 80) ^ v129;
                v216 = v132 ^ v131;
                v133 = v128 ^ v119;
                HIDWORD(v217) = v133 ^ v127 ^ v129;
                v20 = v133 ^ v131 ^ v132;
                goto LABEL_282;
              }

              if (v25 != 3)
              {
                goto LABEL_282;
              }

              v130 = v120 != v127 || *(v117 + 80) != v129;
              v216 = v130;
              v138 = v119 != v127 || v128 != v129;
              LODWORD(v217) = (v127 | v129) & 1;
              HIDWORD(v217) = v138;
              if ((v120 ^ v119) == v127)
              {
                goto LABEL_280;
              }

              v20 = 1;
LABEL_282:
              v139 = v27 + *(&v125 + 1);
              v140 = 4 * HIDWORD(v217) + 8 * v20 + 2 * v216 + v217;
              if (v140 > 7)
              {
                if (v140 <= 10)
                {
                  if (v140 == 8)
                  {
                    v136 = v20;
LABEL_309:
                    v208 = v125;
LABEL_318:
                    v156 = sub_27668E880(0x28uLL);
                    v157 = sub_27668E880(0x18uLL);
                    v21 = v205;
                    v25 = a1;
                    *v157 = v208;
                    v157[1] = v139;
                    v157[2] = 0.0;
                    *v156 = 1;
                    v156[3] = v214;
                    v156[4] = v156;
                    v156[1] = v157;
                    v156[2] = v157;
                    *v121 = v156;
                    v214 = v156;
                    *v124 = v156;
                    goto LABEL_324;
                  }

                  if (v140 == 9 && v122)
                  {
                    v136 = v20;
                    if (!v123)
                    {
                      goto LABEL_324;
                    }

                    v208 = v125;
                    v202 = v123;
                    v146 = sub_27668E880(0x18uLL);
                    *v146 = v208;
                    v146[1] = v139;
                    v147 = *(v122 + 32);
                    v146[2] = *(v147 + 8);
                    *(v147 + 8) = v146;
                    sub_27677520C(v122, v202, v214);
                    goto LABEL_318;
                  }

                  goto LABEL_319;
                }

                if (v140 == 11)
                {
                  v136 = v20;
                  if (!v122)
                  {
                    goto LABEL_324;
                  }

                  v211 = v125;
                  v152 = sub_27668E880(0x18uLL);
                  v21 = v205;
                  v25 = a1;
                  *v152 = v211;
                  v152[1] = v139;
                  v153 = *(v122 + 32);
                  v152[2] = *(v153 + 8);
                  *(v153 + 8) = v152;
                  goto LABEL_314;
                }

                if (v140 != 13)
                {
                  if (v140 != 14 || !v122)
                  {
                    goto LABEL_319;
                  }

                  v136 = v20;
                  if (!v123)
                  {
                    goto LABEL_324;
                  }

                  v206 = v125;
                  v201 = v123;
                  v141 = sub_27668E880(0x18uLL);
                  *v141 = v206;
                  v141[1] = v139;
                  v141[2] = 0.0;
                  v142 = *(v122 + 32);
                  *(*(v142 + 16) + 16) = v141;
                  *(v142 + 16) = v141;
                  sub_276775260(v122, v201, v214);
                  goto LABEL_307;
                }

                v136 = v20;
                if (!v123)
                {
                  goto LABEL_324;
                }

                v212 = v125;
                v143 = v123;
                v158 = sub_27668E880(0x18uLL);
                v21 = v205;
                v25 = a1;
                *v158 = v212;
                v158[1] = v139;
                v158[2] = 0.0;
                v159 = *(v143 + 32);
                *(*(v159 + 16) + 16) = v158;
                *(v159 + 16) = v158;
LABEL_322:
                *v121 = v143;
LABEL_323:
                *v124 = 0;
                goto LABEL_324;
              }

              if (v140 <= 3)
              {
                if (v140 != 1)
                {
                  if (v140 != 2)
                  {
                    goto LABEL_319;
                  }

                  v136 = v20;
                  if (!v123)
                  {
                    goto LABEL_324;
                  }

                  v207 = v125;
                  v143 = v123;
                  v144 = sub_27668E880(0x18uLL);
                  v21 = v205;
                  v25 = a1;
                  *v144 = v207;
                  v144[1] = v139;
                  v145 = *(v143 + 32);
                  v144[2] = *(v145 + 8);
                  *(v145 + 8) = v144;
                  goto LABEL_322;
                }

                if (!v122)
                {
                  goto LABEL_319;
                }

                v136 = v20;
                if (!v123)
                {
                  goto LABEL_324;
                }

                v209 = v125;
                v203 = v123;
                v148 = sub_27668E880(0x18uLL);
                *v148 = v209;
                v148[1] = v139;
                v149 = *(v122 + 32);
                v148[2] = *(v149 + 8);
                *(v149 + 8) = v148;
                sub_27677520C(v122, v203, v214);
LABEL_307:
                v21 = v205;
                v25 = a1;
                *v121 = 0;
                goto LABEL_323;
              }

              if (v140 == 4)
              {
                v136 = v20;
                if (!v122)
                {
                  goto LABEL_324;
                }

                v210 = v125;
                v150 = sub_27668E880(0x18uLL);
                v21 = v205;
                v25 = a1;
                *v150 = v210;
                v150[1] = v139;
                v150[2] = 0.0;
                v151 = *(v122 + 32);
                *(*(v151 + 16) + 16) = v150;
                *(v151 + 16) = v150;
LABEL_314:
                *v124 = v122;
                *v121 = 0;
                goto LABEL_324;
              }

              if (v140 == 6)
              {
                if (v122)
                {
                  v136 = v20;
                  if (!v123)
                  {
                    goto LABEL_324;
                  }

                  v208 = v125;
                  v204 = v123;
                  v154 = sub_27668E880(0x18uLL);
                  *v154 = v208;
                  v154[1] = v139;
                  v154[2] = 0.0;
                  v155 = *(v122 + 32);
                  *(*(v155 + 16) + 16) = v154;
                  *(v155 + 16) = v154;
                  sub_276775260(v122, v204, v214);
                  goto LABEL_318;
                }

LABEL_319:
                v136 = v20;
                goto LABEL_324;
              }

              v136 = v20;
              if (v140 == 7)
              {
                goto LABEL_309;
              }

LABEL_324:
              if (*(v118 + 76))
              {
                *(v117 + 92) = *(v117 + 92) == 0;
              }

              v20 = v136;
              if (*(v117 + 76))
              {
                *(v118 + 92) = *(v118 + 92) == 0;
              }

              if (*(v118 + 80))
              {
                *(v117 + 96) = *(v117 + 96) == 0;
              }

              if (*(v117 + 80))
              {
                *(v118 + 96) = *(v118 + 96) == 0;
              }

              v160 = *(v118 + 128);
              v161 = *(v117 + 136);
              if (v161)
              {
                *(v161 + 128) = v118;
              }

              if (*(v118 + 100) == 1)
              {
                while (1)
                {
                  v160 = *(v160 + 128);
                  if (!v160)
                  {
                    break;
                  }

                  if (*(v160 + 100) != 2)
                  {
                    goto LABEL_339;
                  }
                }

LABEL_340:
                v160 = 0;
                *(v17 + 128) = v117;
                *(v117 + 136) = v17;
                v163 = *(v118 + 136);
                v164 = v17;
                v17 = v163;
                goto LABEL_341;
              }

              if (!v160)
              {
                goto LABEL_340;
              }

LABEL_339:
              v162 = *(v160 + 136);
              *(v162 + 128) = v117;
              *(v117 + 136) = v162;
              v163 = *(v118 + 136);
              *(v160 + 136) = v163;
              v164 = *(v117 + 136);
LABEL_341:
              *(v163 + 128) = v160;
              *(v164 + 128) = v117;
              *(v118 + 136) = v161;
              v116 = v116[4];
              if (!v116)
              {
                goto LABEL_345;
              }
            }
          }

          v25 = a1;
          v20 = v115;
          v21 = v205;
LABEL_345:
          if (v17)
          {
            v165 = v17;
            do
            {
              v166 = *(v17 + 136);
              v167 = *(v17 + 152);
              v168 = *(v17 + 112);
              if (*(v17 + 40) != v24 || v167 == 0)
              {
                *(v17 + 120) = v168;
                *(v17 + 104) = *(v17 + 100);
                *(v17 + 84) = *(v17 + 76);
                *(v17 + 48) = *(v17 + 56);
                v18 = v165;
              }

              else
              {
                *(v167 + 120) = v168;
                *(v167 + 104) = *(v17 + 100);
                *(v167 + 84) = *(v17 + 76);
                *(v167 + 88) = *(v17 + 80);
                v170 = *(v17 + 128);
                v18 = v167;
                if (v170)
                {
                  *(v170 + 136) = v167;
                  v18 = v165;
                }

                if (v166)
                {
                  *(v166 + 128) = v167;
                }

                *(v167 + 128) = v170;
                *(v167 + 136) = v166;
                v165 = v18;
              }

              *(v17 + 112) = 0;
              v17 = v166;
            }

            while (v166);
          }

          else
          {
            v18 = 0;
          }

          v220 = v18;
          v14 = v218;
          v19 = HIDWORD(v218);
          v17 = v18;
        }
      }

      while (v19 < v14);
      v4 = v196;
      *(v196 + 1) = 0;
      *(v196 + 2) = 0;
      v171 = v214;
      if (v214)
      {
        v172 = 0;
        v173 = v214;
        v174 = v197;
        while (1)
        {
          if (*v173)
          {
            v175 = *(*(v173 + 32) + 8);
            if (!v175)
            {
              goto LABEL_372;
            }

            v176 = -1;
            v177 = *(*(v173 + 32) + 8);
            do
            {
              v177 = *(v177 + 16);
              ++v176;
            }

            while (v177);
            if (v176 <= 1)
            {
              do
              {
                v178 = v175[2];
                sub_27668E9B4(v175);
                v175 = v178;
              }

              while (v178);
LABEL_372:
              *v173 = 0;
              goto LABEL_373;
            }

            *v173 = v176 + 1;
            ++v172;
          }

LABEL_373:
          v173 = *(v173 + 24);
          if (!v173)
          {
            *v196 = v172;
            if (v172 >= 1)
            {
              *(v196 + 1) = sub_27668E880(4 * v172);
              v179 = *v196;
              if (v179)
              {
                v180 = sub_27668E880(16 * v179);
              }

              else
              {
                v180 = 0;
              }

              v181 = 0;
              *(v196 + 2) = v180;
              do
              {
                v182 = v171[3];
                if (*v171)
                {
                  v183 = v171[4];
                  v184 = *(v196 + 2);
                  *(*(v196 + 1) + 4 * v181) = *(v183 + 4);
                  v185 = *v171;
                  *(v184 + 16 * v181) = v185;
                  if (v185)
                  {
                    v186 = sub_27668E880(16 * v185);
                    v187 = (*(v196 + 2) + 16 * v181);
                    *(v187 + 1) = v186;
                    v188 = *v187;
                    v183 = v171[4];
                  }

                  else
                  {
                    v188 = 0;
                    *(v184 + 16 * v181 + 8) = 0;
                  }

                  v189 = *(v183 + 8);
                  if (v189)
                  {
                    v190 = 16 * v188 - 16;
                    do
                    {
                      v191 = v189[2];
                      *(*(*(v196 + 2) + 16 * v181 + 8) + v190) = *v189;
                      sub_27668E9B4(v189);
                      v190 -= 16;
                      v189 = v191;
                    }

                    while (v191);
                  }

                  ++v181;
                }

                sub_27668E9B4(v171);
                v171 = v182;
              }

              while (v182);
            }

LABEL_390:
            sub_276773484(v4);
            v192 = v221;
            if (v221)
            {
              do
              {
                v193 = v192[4];
                sub_27668E9B4(v192);
                v192 = v193;
              }

              while (v193);
            }

            v194 = v219;
            if (v219)
            {
              do
              {
                v195 = v194[2];
                sub_27668E9B4(v194);
                v194 = v195;
              }

              while (v195);
            }

            if (v174)
            {
              sub_27668E9B4(v174);
            }

            if (v198)
            {
              sub_27668E9B4(v198);
            }

            v16 = v199;
            if (v199)
            {
LABEL_399:

              sub_27668E9B4(v16);
            }

            return;
          }
        }
      }
    }

    *v4 = 0;
    v174 = v197;
    goto LABEL_390;
  }

  if (a2 == v4)
  {
    sub_2767732AC(a2);
  }

  if (a3 == v4)
  {
    sub_2767732AC(a3);
  }

  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  if (v12)
  {
    sub_27668E9B4(v12);
  }

  if (v13)
  {
    v16 = v13;
    goto LABEL_399;
  }
}

void sub_2767749A8(uint64_t a1, int *a2, int a3)
{
  v6 = sub_27677549C(a1);
  v7 = sub_27677549C(a2);
  v8 = *a1;
  LODWORD(v9) = *a2;
  v10 = *a2 * *a1;
  if (v10)
  {
    v11 = sub_27668E880(4 * v10);
    v8 = *a1;
    LODWORD(v9) = *a2;
  }

  else
  {
    v11 = 0;
  }

  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      if (v9 >= 1)
      {
        v13 = 0;
        v14 = &v6[32 * i];
        v15 = v14[2];
        v16 = (v7 + 16);
        do
        {
          v17 = v15 >= *(v16 - 2) && *v14 <= *v16 && v14[3] >= *(v16 - 1) && v14[1] <= v16[1];
          *(v11 + i + *a1 * v13++) = v17;
          v9 = *a2;
          v16 += 4;
        }

        while (v13 < v9);
        v8 = *a1;
      }
    }
  }

  if (v9 >= 1)
  {
    v18 = 0;
    v19 = v11;
    do
    {
      v20 = v19;
      v21 = v8 & ~(v8 >> 31);
      while (v21)
      {
        v22 = *v20++;
        --v21;
        if (v22)
        {
          goto LABEL_23;
        }
      }

      *(*(a2 + 2) + 16 * v18) = -*(*(a2 + 2) + 16 * v18);
LABEL_23:
      ++v18;
      v19 += v8;
    }

    while (v18 != v9);
  }

  if (a3 == 1 && v8 >= 1)
  {
    v23 = 0;
    v24 = v8;
    v25 = (v9 & ~(v9 >> 31)) + 1;
    v26 = 4 * v8;
    v27 = v11;
    do
    {
      v28 = v27;
      v29 = v25;
      while (--v29)
      {
        v30 = *v28;
        v28 = (v28 + v26);
        if (v30)
        {
          goto LABEL_32;
        }
      }

      *(*(a1 + 16) + 16 * v23) = -*(*(a1 + 16) + 16 * v23);
LABEL_32:
      ++v23;
      ++v27;
    }

    while (v23 != v24);
  }

  if (v6)
  {
    sub_27668E9B4(v6);
  }

  if (v7)
  {
    sub_27668E9B4(v7);
  }

  if (v11)
  {

    sub_27668E9B4(v11);
  }
}

double *sub_276774BCC(double **a1, double **a2, _DWORD *a3, unsigned int *a4, int a5, int a6)
{
  v6 = *a4;
  if (v6 < 1)
  {
    return 0;
  }

  v9 = a4;
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = (*(a4 + 2) + 16 * v10);
    v13 = *v12;
    v14 = 0;
    v15 = *v12 - 1;
    if (*v12 >= 1)
    {
      v16 = v12[1];
      v17 = v13 & 0x7FFFFFFF;
      v18 = (v16 + 8);
      v19 = 1;
      do
      {
        if (*(v16 + 16 * ((v15 + v19 - 1) % v13) + 8) != *v18)
        {
          goto LABEL_9;
        }

        v20 = v19;
        if (v17 == 1)
        {
          v20 = 0;
        }

        if (*(v16 + 16 * v20 + 8) != *v18)
        {
LABEL_9:
          ++v14;
        }

        ++v19;
        v18 += 2;
        --v17;
      }

      while (v17);
    }

    v11 += v14;
    ++v10;
  }

  while (v10 != v6);
  if (v11)
  {
    v21 = sub_27668E880(168 * v11);
    if (*v9 <= 0)
    {
      return v21;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = 0;
  v23 = 0;
  v24 = a6 == 0;
  v25 = 0uLL;
  v86 = v9;
  v26 = a3;
  do
  {
    v27 = *(v9 + 2);
    v28 = (v27 + 16 * v22);
    LODWORD(v29) = *v28;
    v89 = v23;
    if ((*v28 & 0x80000000) != 0)
    {
      *v28 = -v29;
    }

    else if (v29)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = *(v27 + 16 * v22 + 8);
        v33 = *(v32 + 16 * v30 + 8);
        if (*(v32 + 16 * ((v30 + v29 - 1) % v29) + 8) == v33 && *(v32 + 16 * ((v30 + 1) % v29) + 8) == v33)
        {
          ++v30;
        }

        else
        {
          v34 = &v21[21 * v31];
          *v34 = *(v32 + 16 * v30);
          v34[1] = v33;
          v35 = a2;
          v36 = *a2;
          if (*a2)
          {
            do
            {
              v37 = v36;
              if (*v36 <= v33)
              {
                if (*v36 >= v33)
                {
                  goto LABEL_31;
                }

                v38 = 2;
              }

              else
              {
                v38 = 1;
              }

              v36 = *&v36[v38];
            }

            while (v36);
            v35 = &v37[v38];
          }

          v39 = sub_27668E880(0x18uLL);
          v25 = 0uLL;
          *v35 = v39;
          *v39 = v33;
          v39[1] = 0.0;
          (*v35)[2] = 0.0;
          ++*v26;
          v27 = *(v9 + 2);
LABEL_31:
          ++v31;
          ++v30;
        }

        v29 = *(v27 + 16 * v22);
      }

      while (v30 < v29);
      v40 = v31 - 1;
      if (v31 >= 1)
      {
        v41 = 0;
        do
        {
          v42 = v41;
          v43 = v21[21 * ((v40 + v41) % v31) + 1];
          v44 = v21[21 * v41++ + 1];
          if (v43 >= v44)
          {
            v45 = v41 == v31 ? 0 : v41;
            v46 = v21[21 * v45 + 1];
            if (v46 > v44)
            {
              v47 = 0;
              do
              {
                v48 = v47;
                v45 = (v45 + 1) % v31;
                --v47;
                v59 = v21[21 * v45 + 1] <= v46;
                v46 = v21[21 * v45 + 1];
              }

              while (!v59);
              v49 = 0;
              v50 = 0;
              v51 = &v21[21 * v89];
              *(v51 + 26) = 0;
              *(v51 + 21) = 0;
              *(v51 + 22) = 0;
              v52 = &v21[21 * v42];
              v54 = *v52;
              v53 = v52[1];
              do
              {
                v42 = (v42 + 1) % v31;
                v55 = &v51[v49];
                v55[6] = v54;
                v55[2] = v54;
                v55[3] = v53;
                v56 = &v21[21 * v42];
                v57 = *v56;
                v58 = v56[1];
                v55[4] = *v56;
                v55[5] = v58;
                v55[8] = (v57 - v54) / (v58 - v53);
                v59 = v50 < ~v47 && -v47 > 1;
                *(v55 + 18) = a5;
                v60 = v55 + 21;
                if (!v59)
                {
                  v60 = 0;
                }

                *(v55 + 7) = v25;
                *(v55 + 8) = v25;
                v61 = v55 - 21;
                if (!(v49 * 8))
                {
                  v61 = 0;
                }

                *(v55 + 18) = v61;
                *(v55 + 19) = v60;
                v55[20] = 0.0;
                *(v55 + 23) = v24;
                *(v55 + 24) = 0;
                ++v50;
                v49 += 21;
                v53 = v58;
                v54 = v57;
              }

              while (v48 + v50 != 1);
              v89 -= v47;
              v62 = sub_2767755E4(a1, v44);
              sub_276775594(v62, v51);
              v25 = 0uLL;
              v26 = a3;
            }
          }
        }

        while (v41 != v31);
        v63 = 0;
        do
        {
          v64 = v63;
          v65 = (v40 + v63) % v31;
          v66 = v21[21 * v65 + 1];
          v67 = v21[21 * v63++ + 1];
          if (v66 > v67)
          {
            v68 = v63;
            if (v63 == v31)
            {
              v68 = 0;
            }

            if (v21[21 * v68 + 1] >= v67)
            {
              v69 = 0;
              do
              {
                v70 = v69;
                v65 = (v40 + v65) % v31;
                --v69;
                v59 = v21[21 * v65 + 1] <= v66;
                v66 = v21[21 * v65 + 1];
              }

              while (!v59);
              v71 = 0;
              v72 = 0;
              v73 = &v21[21 * v89];
              *(v73 + 26) = 0;
              *(v73 + 21) = 0;
              *(v73 + 22) = 0;
              v74 = &v21[21 * v64];
              v76 = *v74;
              v75 = v74[1];
              do
              {
                v64 = (v40 + v64) % v31;
                v77 = &v73[v71];
                v77[6] = v76;
                v77[2] = v76;
                v77[3] = v75;
                v78 = &v21[21 * v64];
                v79 = *v78;
                v80 = v78[1];
                v77[4] = *v78;
                v77[5] = v80;
                v77[8] = (v79 - v76) / (v80 - v75);
                v81 = v72 < ~v69 && -v69 > 1;
                *(v77 + 18) = a5;
                v82 = v77 + 21;
                if (!v81)
                {
                  v82 = 0;
                }

                *(v77 + 7) = v25;
                *(v77 + 8) = v25;
                v83 = v77 - 21;
                if (!(v71 * 8))
                {
                  v83 = 0;
                }

                *(v77 + 18) = v83;
                *(v77 + 19) = v82;
                v77[20] = 0.0;
                *(v77 + 23) = v24;
                *(v77 + 24) = 0;
                ++v72;
                v71 += 21;
                v75 = v80;
                v76 = v79;
              }

              while (v70 + v72 != 1);
              v89 -= v69;
              v84 = sub_2767755E4(a1, v67);
              sub_276775594(v84, v73);
              v25 = 0uLL;
              v26 = a3;
            }
          }
        }

        while (v63 != v31);
      }
    }

    ++v22;
    v9 = v86;
    v23 = v89;
  }

  while (v22 < *v86);
  return v21;
}

double sub_2767750F0(int *a1, uint64_t a2, uint64_t a3)
{
  do
  {
    if (*(a3 + 8))
    {
      sub_2767750F0(a1, a2);
    }

    result = *a3;
    v7 = *a1;
    *(a2 + 8 * v7) = *a3;
    *a1 = v7 + 1;
    a3 = *(a3 + 16);
  }

  while (a3);
  return result;
}

void sub_276775150(void **a1)
{
  if (*a1)
  {
    sub_276775150(*a1 + 1);
    sub_276775150(*a1 + 2);
    if (*a1)
    {
      sub_27668E9B4(*a1);
      *a1 = 0;
    }
  }
}

uint64_t *sub_2767751A0(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  if (*result)
  {
    v4 = *(a2 + 48);
    while (1)
    {
      v5 = *(v3 + 48);
      if (v4 < v5)
      {
        break;
      }

      v6 = v3;
      if (v4 == v5 && *(a2 + 64) < *(v3 + 64))
      {
        break;
      }

      result = (v3 + 136);
      v3 = *(v3 + 136);
      a3 = v6;
      if (!v3)
      {
        goto LABEL_10;
      }
    }

    *(a2 + 128) = a3;
    v7 = *result;
    *(a2 + 136) = *result;
    *(v7 + 128) = a2;
    *result = a2;
  }

  else
  {
    v6 = a3;
LABEL_10:
    *result = a2;
    *(a2 + 128) = v6;
    *(a2 + 136) = 0;
  }

  return result;
}

uint64_t sub_27677520C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  *(v3 + 4) = 0;
  v4 = *(result + 32);
  if (v4 != v3)
  {
    *(*(v3 + 16) + 16) = *(v4 + 8);
    *(v3 + 16) = *(v4 + 16);
    if (a3)
    {
      v5 = *(result + 32);
      do
      {
        if (*(a3 + 32) == v5)
        {
          *a3 = 0;
          *(a3 + 32) = *(a2 + 32);
        }

        a3 = *(a3 + 24);
      }

      while (a3);
    }
  }

  return result;
}

uint64_t sub_276775260(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 32);
  *(v3 + 4) = 1;
  v4 = *(result + 32);
  if (v4 != v3)
  {
    *(*(v4 + 16) + 16) = *(v3 + 8);
    *(v3 + 8) = *(v4 + 8);
    if (a3)
    {
      v5 = *(result + 32);
      do
      {
        if (*(a3 + 32) == v5)
        {
          *a3 = 0;
          *(a3 + 32) = *(a2 + 32);
        }

        a3 = *(a3 + 24);
      }

      while (a3);
    }
  }

  return result;
}

double *sub_2767752B8(double **a1, uint64_t a2, double a3)
{
  result = *a1;
  if (result)
  {
    do
    {
      v7 = *(result + 4);
      sub_27668E9B4(result);
      *a1 = v7;
      result = v7;
    }

    while (v7);
  }

  v34 = 0;
  if (a2)
  {
    do
    {
      if (*(a2 + 100) == 1 || *(a2 + 76) || *(a2 + 80))
      {
        v8 = v34;
        if (v34)
        {
          v9 = (a2 + 64);
          v10 = &v34;
          while (1)
          {
            v11 = v8[2];
            v12 = *(a2 + 56);
            if (v12 >= v11)
            {
              break;
            }

            v13 = v8[1];
            v14 = v11 - v13;
            v15 = *(a2 + 48);
            v16 = v14 - (v12 - v15);
            v17 = fabs(v16);
            if (*v9 == v8[3] || v17 <= 2.22044605e-16)
            {
              break;
            }

            v19 = (v15 - v13) / v16;
            v20 = v19 * a3;
            v21 = *a1;
            if (*a1)
            {
              v22 = a1;
              if (v21[3] <= v20)
              {
                do
                {
                  v23 = v21;
                  v21 = *(v21 + 4);
                }

                while (v21 && v21[3] <= v20);
                v22 = (v23 + 4);
              }
            }

            else
            {
              v22 = a1;
            }

            v24 = v13 + v19 * v14;
            v25 = *v8;
            v26 = sub_27668E880(0x28uLL);
            *v22 = v26;
            *v26 = v25;
            *(*v22 + 1) = a2;
            v27 = *v22;
            v27[2] = v24;
            v27[3] = v20;
            *(v27 + 4) = v21;
            v28 = *v10;
            v29 = *(v28 + 4);
            v10 = (v28 + 32);
            v8 = v29;
            if (!v29)
            {
              goto LABEL_25;
            }
          }

          v30 = sub_27668E880(0x28uLL);
          *v10 = v30;
          *v30 = a2;
          v31 = *v10;
          *(*v10 + 8) = *(a2 + 48);
        }

        else
        {
          v10 = &v34;
LABEL_25:
          v32 = sub_27668E880(0x28uLL);
          v8 = 0;
          *v10 = v32;
          *v32 = a2;
          v31 = *v10;
          *(*v10 + 8) = *(a2 + 48);
          v9 = (a2 + 64);
        }

        v31[3] = *v9;
        *(v31 + 4) = v8;
      }

      a2 = *(a2 + 136);
    }

    while (a2);
    result = v34;
    if (v34)
    {
      do
      {
        v33 = *(result + 4);
        sub_27668E9B4(result);
        result = v33;
      }

      while (v33);
    }
  }

  return result;
}

char *sub_27677549C(int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  result = sub_27668E880(32 * v1);
  v4 = *a1;
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 2);
    v7 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v8 = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    do
    {
      v9 = &result[32 * v5];
      *v9 = v7;
      v9[1] = v8;
      v10 = (v6 + 16 * v5);
      v11 = *v10;
      if (v11 >= 1)
      {
        v12 = (*(v10 + 1) + 8);
        v13 = 1.79769313e308;
        v14 = -1.79769313e308;
        v15 = -1.79769313e308;
        v16 = 1.79769313e308;
        do
        {
          v17 = *(v12 - 1);
          if (v17 < v16)
          {
            *v9->i64 = v17;
            v16 = v17;
          }

          v18 = *v12;
          if (*v12 < v13)
          {
            *&v9->i64[1] = v18;
            v13 = v18;
          }

          if (v17 > v15)
          {
            *v9[1].i64 = v17;
            v15 = v17;
          }

          if (v18 > v14)
          {
            *&v9[1].i64[1] = v18;
            v14 = v18;
          }

          v12 += 2;
          --v11;
        }

        while (v11);
      }

      ++v5;
    }

    while (v5 != v4);
  }

  return result;
}

uint64_t *sub_276775594(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(a2 + 16);
    while (1)
    {
      v4 = *(v2 + 16);
      if (v3 < v4 || v3 == v4 && *(a2 + 64) < *(v2 + 64))
      {
        break;
      }

      result = (v2 + 160);
      v2 = *(v2 + 160);
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    *result = a2;
    *(a2 + 160) = v2;
  }

  else
  {
LABEL_7:
    *result = a2;
  }

  return result;
}

double *sub_2767755E4(double **a1, double a2)
{
  v3 = a1;
  v4 = *a1;
  if (*a1 && (v5 = *v4, *v4 <= a2))
  {
    while (1)
    {
      v6 = v4;
      if (v5 >= a2)
      {
        break;
      }

      v4 = *(v4 + 2);
      if (v4)
      {
        v5 = *v4;
        if (*v4 <= a2)
        {
          continue;
        }
      }

      v3 = (v6 + 2);
      goto LABEL_7;
    }
  }

  else
  {
LABEL_7:
    v7 = sub_27668E880(0x18uLL);
    *v3 = v7;
    *v7 = a2;
    v7[1] = 0.0;
    *(*v3 + 2) = v4;
    v6 = *v3;
  }

  return v6 + 1;
}

__n128 sub_276775AC0(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 32) = result;
  return result;
}

void sub_276775B70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 168);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276775BEC;
  block[3] = &unk_27A6CC658;
  block[4] = v1;
  dispatch_sync(v2, block);
}

void sub_276775BEC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(v4 + 48) || *(v4 + 56) || (v5 = objc_msgSend_count(*(v4 + 80), a2, a3), v4 = *(a1 + 32), v5) || (v7 = objc_msgSend_count(*(v4 + 88), a2, v6), v4 = *(a1 + 32), v7))
  {
    *(v4 + 137) = 1;
    *(*(a1 + 32) + 144) = 1;
    goto LABEL_6;
  }

  v16 = *(v4 + 144);
  if (!*(v4 + 40))
  {
    if (v16)
    {
      goto LABEL_6;
    }

    v32 = 2;
    goto LABEL_25;
  }

  if (!v16)
  {
    if (TSDPlatformRisksMemoryCrashFromLargeImages())
    {
      v18 = objc_msgSend_imageData(*(a1 + 32), a2, v17);
      v19 = sub_276645F98();
      isLengthLikelyToBeGreaterThan = objc_msgSend_isLengthLikelyToBeGreaterThan_(v18, v20, v19);

      if (isLengthLikelyToBeGreaterThan)
      {
        v22 = CGImageSourceGetType(*(*(a1 + 32) + 40));
        v24 = v22;
        if (v22 && objc_msgSend_tsu_conformsToUTI_(v22, v23, *MEMORY[0x277D81478]))
        {
          *(*(a1 + 32) + 144) = 4;
          *(*(a1 + 32) + 137) = 0;
        }
      }
    }

    v25 = *(a1 + 32);
    if (!v25[18])
    {
      v26 = v25[5];
      v27 = [TSDImageRenderingConfiguration alloc];
      inited = objc_msgSend_initWantsHDR_(v27, v28, 0);
      v31 = objc_msgSend_p_newImageFromSource_renderingConfiguration_(v25, v30, v26, inited);

      *(*(a1 + 32) + 137) = v31 != 0;
      CGImageRelease(v31);
      v4 = *(a1 + 32);
      if (*(v4 + 137) == 1)
      {
        v32 = 1;
      }

      else
      {
        v32 = 3;
      }

LABEL_25:
      *(v4 + 144) = v32;
    }
  }

LABEL_6:
  v8 = *(a1 + 32);
  if (!*(v8 + 144))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDBitmapImageProvider isValid]_block_invoke_2");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 210, 0, "Didn't update validation failure type during validation! isValid? %i", *(*(a1 + 32) + 137));

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v8 = *(a1 + 32);
  }

  if ((*(v8 + 137) & 1) == 0 && qword_280A4CF00 != -1)
  {
    sub_27680E478();
  }
}

void sub_276775E78()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B970;
  qword_280A4B970 = v0;
}

void sub_2767762B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGImageRef sub_2767762D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = 80;
  v5 = objc_msgSend_count(*(*(a1 + 32) + 80), a2, a3);
  v8 = *(a1 + 32);
  if (!v5)
  {
    v4 = 88;
    result = objc_msgSend_count(*(v8 + 88), v6, v7);
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 32);
  }

  v10 = objc_msgSend_objectEnumerator(*(v8 + v4), v6, v7);
  v13 = objc_msgSend_nextObject(v10, v11, v12);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_CGImage(v13, v14, v15);

  v16 = *(*(*(a1 + 40) + 8) + 24);

  return CGImageRetain(v16);
}

void sub_27677659C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGImageRef sub_2767765B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_wantsHDR(*(a1 + 32), a2, a3);
  v7 = *(a1 + 40);
  if (!v4)
  {
    v8 = 80;
    result = objc_msgSend_count(*(v7 + 80), v5, v6);
    v12 = *(a1 + 40);
    if (!result)
    {
      v13 = *(v12 + 64);
      if (!v13)
      {
        v14 = 48;
        goto LABEL_10;
      }

LABEL_8:
      v24 = *(a1 + 48);
      v22 = a1 + 48;
      *(*(v24 + 8) + 24) = v13;
      goto LABEL_12;
    }

LABEL_6:
    v15 = objc_msgSend_objectEnumerator(*(v12 + v8), v10, v11);
    v18 = objc_msgSend_nextObject(v15, v16, v17);
    v21 = objc_msgSend_CGImage(v18, v19, v20);
    v23 = *(a1 + 48);
    v22 = a1 + 48;
    *(*(v23 + 8) + 24) = v21;

    goto LABEL_12;
  }

  v8 = 88;
  result = objc_msgSend_count(*(v7 + 88), v5, v6);
  v12 = *(a1 + 40);
  if (result)
  {
    goto LABEL_6;
  }

  v13 = *(v12 + 72);
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = 56;
LABEL_10:
  v25 = *(v12 + v14);
  if (!v25)
  {
    return result;
  }

  v26 = *(a1 + 48);
  v22 = a1 + 48;
  *(*(v26 + 8) + 24) = v25;
LABEL_12:
  v27 = *(*(*v22 + 8) + 24);

  return CGImageRetain(v27);
}

CGImageRef sub_276776948(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_wantsHDR(*(a1 + 32), a2, a3);
  v5 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedSDRImage;
  if (v4)
  {
    v5 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedHDRImage;
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 40) + *v5);
  v6 = *(*(*(a1 + 48) + 8) + 24);

  return CGImageRetain(v6);
}

CGImageRef sub_2767769B8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_wantsHDR(*(a1 + 32), a2, a3);
  v5 = &OBJC_IVAR___TSDBitmapImageProvider_mLargestSafeSDRImage;
  if (v4)
  {
    v5 = &OBJC_IVAR___TSDBitmapImageProvider_mLargestSafeHDRImage;
  }

  v6 = *v5;
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 40) + v6);
  v7 = *(*(a1 + 40) + v6);

  return CGImageRetain(v7);
}

void sub_276776BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGImageRef sub_276776BC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_wantsHDR(*(a1 + 32), a2, a3);
  v5 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedSDRImage;
  if (v4)
  {
    v5 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedHDRImage;
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 40) + *v5);
  v6 = *(*(*(a1 + 48) + 8) + 24);

  return CGImageRetain(v6);
}

void sub_276776EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276776F08()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B960;
  qword_280A4B960 = v0;
}

void sub_276776F48()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B960;
  qword_280A4B960 = v0;
}

CGImageRef sub_276776F88(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_wantsHDR(*(a1 + 32), a2, a3);
  v5 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedSDRImage;
  if (v4)
  {
    v5 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedHDRImage;
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 40) + *v5);
  v6 = *(*(*(a1 + 48) + 8) + 24);

  return CGImageRetain(v6);
}

void sub_276776FF8()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B968;
  qword_280A4B968 = v0;
}

void sub_2767772AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_276777690()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B960;
  qword_280A4B960 = v0;
}

void sub_2767778E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_wantsHDR(*(a1 + 32), a2, a3);
  v6 = &OBJC_IVAR___TSDBitmapImageProvider_mResampledSDRImages;
  if (v4)
  {
    v6 = &OBJC_IVAR___TSDBitmapImageProvider_mResampledHDRImages;
  }

  v7 = *(*(a1 + 40) + *v6);
  v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v5, *(a1 + 56));
  v14 = objc_msgSend_objectForKeyedSubscript_(v7, v9, v8);

  v12 = v14;
  if (v14)
  {
    v13 = objc_msgSend_CGImage(v14, v10, v11);
    *(*(*(a1 + 48) + 8) + 24) = CGImageRetain(v13);
    if (qword_280A4CEF0 != -1)
    {
      sub_27680E4F0();
    }

    v12 = v14;
  }
}

void sub_2767779BC()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B960;
  qword_280A4B960 = v0;
}

uint64_t sub_2767779FC(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_wantsHDR(*(a1 + 32), a2, a3))
  {
    v5 = 88;
  }

  else
  {
    v5 = 80;
  }

  v6 = *(*(a1 + 40) + v5);
  if (!v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = *(a1 + 40);
    v9 = *(v8 + v5);
    *(v8 + v5) = v7;

    v6 = *(*(a1 + 40) + v5);
  }

  v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v4, *(a1 + 56));
  v12 = objc_msgSend_objectForKeyedSubscript_(v6, v11, v10);

  if (!v12)
  {
    v14 = *(a1 + 48);
    v15 = *(*(a1 + 40) + v5);
    v16 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v13, *(a1 + 56));
    objc_msgSend_setObject_forKeyedSubscript_(v15, v17, v14, v16);
  }

  dispatch_semaphore_wait(*(*(a1 + 40) + 184), 0xFFFFFFFFFFFFFFFFLL);
  *(*(a1 + 40) + 192) = 1;
  dispatch_semaphore_signal(*(*(a1 + 40) + 184));
  v19 = *(a1 + 40);

  return MEMORY[0x2821F9670](v19, sel_p_updateEstimatedSize, v18);
}

BOOL sub_276777E44(uint64_t a1)
{
  result = CGColorSpaceIsWideGamutRGB(*(a1 + 48));
  v3 = 1;
  if (!result)
  {
    v3 = 2;
  }

  *(*(a1 + 32) + 96) = v3;
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 96);
  return result;
}

void sub_276778174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

CGImageRef sub_2767781C0(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_count(*(*(a1 + 32) + 88), a2, a3);
  v7 = *(a1 + 32);
  if (result)
  {
    v8 = objc_msgSend_objectEnumerator(*(v7 + 88), v5, v6);
    v11 = objc_msgSend_nextObject(v8, v9, v10);
    v14 = objc_msgSend_CGImage(v11, v12, v13);
    v16 = *(a1 + 40);
    v15 = a1 + 40;
    *(*(v16 + 8) + 24) = v14;
  }

  else
  {
    v17 = *(v7 + 56);
    if (!v17)
    {
      return result;
    }

    v18 = *(a1 + 40);
    v15 = a1 + 40;
    *(*(v18 + 8) + 24) = v17;
  }

  v19 = *(*(*v15 + 8) + 24);

  return CGImageRetain(v19);
}

uint64_t sub_276778284(uint64_t a1)
{
  result = TSUCGImageWantsHDRRendering();
  v3 = 1;
  if (!result)
  {
    v3 = 2;
  }

  *(*(a1 + 32) + 104) = v3;
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 104);
  return result;
}

void sub_2767789E0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B960;
  qword_280A4B960 = v0;
}

void sub_276778E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGImageRef sub_276778E6C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_wantsHDR(*(a1 + 32), a2, a3);
  v5 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedSDRImage;
  if (v4)
  {
    v5 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedHDRImage;
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 40) + *v5);
  v6 = *(*(*(a1 + 48) + 8) + 24);

  return CGImageRetain(v6);
}

void sub_276778FC0()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B968;
  qword_280A4B968 = v0;
}

char *sub_276779000(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(v4 + 64) && *(v4 + 72))
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDBitmapImageProvider p_loadFullSizedImageIfNecessaryWithRenderingConfiguration:]_block_invoke_2");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 970, 0, "Should never load full-sized image if we have been asked to load the largest safe image!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v14 = objc_msgSend_wantsHDR(*(a1 + 40), a2, a3);
  result = *(a1 + 32);
  if (v14)
  {
    v16 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedHDRImage;
  }

  else
  {
    v16 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedSDRImage;
  }

  if (!*&result[*v16])
  {
    result = objc_msgSend_i_loadState(result, v12, v13);
    if (result != 2)
    {
      v19 = *(a1 + 32);
      v20 = v19[5];
      if (v20)
      {
        CFRetain(v19[5]);
      }

      else
      {
        v20 = objc_msgSend_p_newCGImageSource(v19, v17, v18);
        if (!v20)
        {
          v24 = 0;
LABEL_16:
          if (objc_msgSend_wantsHDR(*(a1 + 40), v21, v22))
          {
            v26 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedHDRImage;
          }

          else
          {
            v26 = &OBJC_IVAR___TSDBitmapImageProvider_mFullSizedSDRImage;
          }

          *(*(a1 + 32) + *v26) = v24;
          v27 = v24 == 0;
          v28 = 1;
          if (v27)
          {
            objc_msgSend_setI_loadState_(*(a1 + 32), v25, 2);
          }

          else
          {
            objc_msgSend_setI_loadState_(*(a1 + 32), v25, 1);
          }

          dispatch_semaphore_wait(*(*(a1 + 32) + 184), 0xFFFFFFFFFFFFFFFFLL);
          v29 = *(a1 + 32);
          if ((*(v29 + 192) & 1) == 0 && !*(v29 + 48))
          {
            v28 = *(v29 + 56) != 0;
          }

          *(v29 + 192) = v28;
          dispatch_semaphore_signal(*(*(a1 + 32) + 184));
          v31 = *(a1 + 32);

          return MEMORY[0x2821F9670](v31, sel_p_updateEstimatedSize, v30);
        }
      }

      v24 = objc_msgSend_p_newImageFromSource_renderingConfiguration_(*(a1 + 32), v21, v20, *(a1 + 40));
      if (v24)
      {
        objc_msgSend_p_configureOrientationAndSizeFromImageSource_andImage_(*(a1 + 32), v23, v20, v24);
      }

      CFRelease(v20);
      goto LABEL_16;
    }
  }

  return result;
}

void sub_276779330()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B968;
  qword_280A4B968 = v0;
}

char *sub_276779370(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 48))
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSDBitmapImageProvider p_loadLargestSafeImageIfNecessaryWithRenderingConfiguration:]_block_invoke_2");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDBitmapImageProvider.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 1030, 0, "Should never load largestSafeImage if we can load the full-sized image!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  }

  v13 = objc_msgSend_wantsHDR(*(a1 + 40), a2, a3);
  result = *(a1 + 32);
  if (v13)
  {
    v15 = &OBJC_IVAR___TSDBitmapImageProvider_mLargestSafeHDRImage;
  }

  else
  {
    v15 = &OBJC_IVAR___TSDBitmapImageProvider_mLargestSafeSDRImage;
  }

  if (!*&result[*v15])
  {
    result = objc_msgSend_i_loadState(result, v11, v12);
    if (result != 2)
    {
      v18 = *(a1 + 32);
      v19 = v18[5];
      if (v19)
      {
        CFRetain(v18[5]);
      }

      else
      {
        v19 = objc_msgSend_p_newCGImageSource(v18, v16, v17);
        if (!v19)
        {
          v22 = 0;
LABEL_15:
          if (objc_msgSend_wantsHDR(*(a1 + 40), v20, v21))
          {
            v24 = &OBJC_IVAR___TSDBitmapImageProvider_mLargestSafeHDRImage;
          }

          else
          {
            v24 = &OBJC_IVAR___TSDBitmapImageProvider_mLargestSafeSDRImage;
          }

          *(*(a1 + 32) + *v24) = v22;
          v25 = v22 == 0;
          v26 = 1;
          if (v25)
          {
            objc_msgSend_setI_loadState_(*(a1 + 32), v23, 2);
          }

          else
          {
            objc_msgSend_setI_loadState_(*(a1 + 32), v23, 1);
          }

          dispatch_semaphore_wait(*(*(a1 + 32) + 184), 0xFFFFFFFFFFFFFFFFLL);
          v27 = *(a1 + 32);
          if ((*(v27 + 192) & 1) == 0 && !*(v27 + 64))
          {
            v26 = *(v27 + 72) != 0;
          }

          *(v27 + 192) = v26;
          dispatch_semaphore_signal(*(*(a1 + 32) + 184));
          v29 = *(a1 + 32);

          return MEMORY[0x2821F9670](v29, sel_p_updateEstimatedSize, v28);
        }
      }

      if (qword_280A4CEF0 != -1)
      {
        sub_27680E540();
      }

      v22 = objc_msgSend_p_newImageOfSize_fromSource_renderingConfiguration_(*(a1 + 32), v20, v19, *(a1 + 40), *(a1 + 48), *(a1 + 56));
      CFRelease(v19);
      goto LABEL_15;
    }
  }

  return result;
}

void sub_276779580()
{
  v0 = TSULogCreateCategory();
  v1 = qword_280A4B960;
  qword_280A4B960 = v0;
}

void *sub_27677963C(uint64_t a1, const char *a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (!result[5])
  {
    result = objc_msgSend_i_loadState(result, a2, a3);
    if (result != 2)
    {
      if (TSDPlatformRisksMemoryCrashFromLargeImages())
      {
        v7 = objc_msgSend_imageData(*(a1 + 32), v5, v6);
        v8 = sub_27664712C(v7);

        if ((v8 & 1) == 0)
        {
          objc_msgSend_setI_loadState_(*(a1 + 32), v5, 2);
          *(*(a1 + 32) + 144) = 4;
        }
      }

      result = objc_msgSend_i_loadState(*(a1 + 32), v5, v6);
      if (result != 2)
      {
        v12 = objc_msgSend_p_newCGImageSource(*(a1 + 32), v9, v10);
        if (v12)
        {
          objc_msgSend_p_configureRawBehaviorFromImageSource_(*(a1 + 32), v11, v12);
          objc_msgSend_p_configureOrientationAndSizeFromImageSource_andImage_(*(a1 + 32), v13, v12, 0);
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        *(*(a1 + 32) + 40) = v12;
        objc_msgSend_setI_loadState_(*(a1 + 32), v11, v14);
        dispatch_semaphore_wait(*(*(a1 + 32) + 184), 0xFFFFFFFFFFFFFFFFLL);
        v15 = *(a1 + 32);
        v16 = (*(v15 + 192) & 1) != 0 || *(v15 + 40) != 0;
        *(v15 + 192) = v16;
        v17 = *(*(a1 + 32) + 184);

        return dispatch_semaphore_signal(v17);
      }
    }
  }

  return result;
}

intptr_t sub_276779CFC(uint64_t a1)
{
  *(*(a1 + 32) + 48) = *(a1 + 40);
  dispatch_semaphore_wait(*(*(a1 + 32) + 184), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 32);
  v3 = (*(v2 + 192) & 1) != 0 || *(v2 + 48) != 0;
  *(v2 + 192) = v3;
  v4 = *(*(a1 + 32) + 184);

  return dispatch_semaphore_signal(v4);
}

void sub_276779EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_276779EF4(void *result)
{
  v1 = *(result[4] + 40);
  if (v1)
  {
    *(*(result[5] + 8) + 24) = v1;
    result = *(*(result[5] + 8) + 24);
    if (result)
    {
      return CFRetain(result);
    }
  }

  return result;
}

void sub_27677A298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef sub_27677A2B0(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 40);
  result = *(*(*(a1 + 40) + 8) + 24);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void *sub_27677A380(uint64_t a1)
{
  result = sub_27677BDE4(a1);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_27677A3B4(uint64_t result, uint64_t a2, void *a3)
{
  while (1)
  {
    v3 = result;
    if (a2)
    {
      break;
    }

LABEL_7:
    result = *(result + 16);
    a2 = v3;
    if (!result)
    {
      return result;
    }
  }

  v4 = *(result + 40);
  if (!v4)
  {
    if (*(result + 24) == a2)
    {
      *(result + 40) = 1;
    }

    if (*(result + 32) == a2)
    {
      *(result + 40) = -1;
    }

    goto LABEL_7;
  }

  if (v4 < 1)
  {
    v10 = *(result + 24);
    if (v10 != a2)
    {
      v6 = *(result + 32);
      if (v6)
      {
        v11 = *(v6 + 24);
        v12 = *(v6 + 32);
        v13 = *(result + 16);
        if ((*(v6 + 40) & 0x80000000) != 0)
        {
          *(v6 + 24) = result;
          *(result + 16) = v6;
          *(result + 24) = v10;
          if (v10)
          {
            *(v10 + 16) = result;
          }

          *(result + 32) = v11;
          if (v11)
          {
            *(v11 + 16) = result;
          }

          *(v6 + 32) = v12;
          if (v12)
          {
            *(v12 + 16) = v6;
          }

          *(v6 + 16) = v13;
          if (v13)
          {
            if (*(v13 + 24) == result)
            {
              *(v13 + 24) = v6;
            }

            if (*(v13 + 32) == result)
            {
              *(v13 + 32) = v6;
            }
          }

LABEL_78:
          if (*a3 == result)
          {
            *a3 = v6;
          }

          goto LABEL_80;
        }

        if (v11)
        {
          v15 = *(v11 + 24);
          v14 = *(v11 + 32);
          *(result + 16) = v11;
          *(v6 + 16) = v11;
          *(v11 + 24) = result;
          *(v11 + 32) = v6;
          *(result + 32) = v15;
          if (v15)
          {
            *(v15 + 16) = result;
          }

          *(result + 24) = v10;
          if (v10)
          {
            *(v10 + 16) = result;
          }

          *(v6 + 32) = v12;
          if (v12)
          {
            *(v12 + 16) = v6;
          }

          *(v6 + 24) = v14;
          if (v14)
          {
            *(v14 + 16) = v6;
          }

          *(v11 + 16) = v13;
          if (v13)
          {
            if (*(v13 + 24) == result)
            {
              *(v13 + 24) = v11;
            }

            if (*(v13 + 32) == result)
            {
              *(v13 + 32) = v11;
            }
          }

          if (*a3 == result)
          {
            *a3 = v11;
          }

          v16 = *(v11 + 40);
          *(v11 + 40) = 0;
          if (v16)
          {
            if (v16 >= 1)
            {
              result = 0;
              *(v3 + 40) = 0;
              v17 = -1;
              goto LABEL_85;
            }

            result = 0;
            v22 = 1;
LABEL_83:
            *(v3 + 40) = v22;
            goto LABEL_81;
          }

LABEL_80:
          result = 0;
          *(v3 + 40) = 0;
LABEL_81:
          *(v6 + 40) = 0;
          return result;
        }
      }

      return 1;
    }

LABEL_46:
    result = 0;
    *(v3 + 40) = 0;
    return result;
  }

  v5 = *(result + 32);
  if (v5 == a2)
  {
    goto LABEL_46;
  }

  v6 = *(result + 24);
  if (!v6)
  {
    return 1;
  }

  v8 = *(v6 + 24);
  v7 = *(v6 + 32);
  if (*(v6 + 40) >= 1)
  {
    v9 = *(result + 16);
    *(result + 16) = v6;
    *(v6 + 32) = result;
    *(result + 32) = v5;
    if (v5)
    {
      *(v5 + 16) = result;
    }

    *(result + 24) = v7;
    if (v7)
    {
      *(v7 + 16) = result;
    }

    *(v6 + 24) = v8;
    if (v8)
    {
      *(v8 + 16) = v6;
    }

    *(v6 + 16) = v9;
    if (v9)
    {
      if (*(v9 + 24) == result)
      {
        *(v9 + 24) = v6;
      }

      if (*(v9 + 32) == result)
      {
        *(v9 + 32) = v6;
      }
    }

    goto LABEL_78;
  }

  if (!v7)
  {
    return 1;
  }

  v18 = *(v7 + 24);
  v19 = *(v7 + 32);
  v20 = *(result + 16);
  *(v7 + 24) = v6;
  *(v7 + 32) = result;
  *(result + 16) = v7;
  *(v6 + 16) = v7;
  *(result + 24) = v19;
  if (v19)
  {
    *(v19 + 16) = result;
  }

  *(result + 32) = v5;
  if (v5)
  {
    *(v5 + 16) = result;
  }

  *(v6 + 24) = v8;
  if (v8)
  {
    *(v8 + 16) = v6;
  }

  *(v6 + 32) = v18;
  if (v18)
  {
    *(v18 + 16) = v6;
  }

  *(v7 + 16) = v20;
  if (v20)
  {
    if (*(v20 + 24) == result)
    {
      *(v20 + 24) = v7;
    }

    if (*(v20 + 32) == result)
    {
      *(v20 + 32) = v7;
    }
  }

  if (*a3 == result)
  {
    *a3 = v7;
  }

  v21 = *(v7 + 40);
  *(v7 + 40) = 0;
  if (!v21)
  {
    goto LABEL_80;
  }

  if (v21 >= 1)
  {
    result = 0;
    v22 = -1;
    goto LABEL_83;
  }

  result = 0;
  *(v3 + 40) = 0;
  v17 = 1;
LABEL_85:
  *(v6 + 40) = v17;
  return result;
}

uint64_t sub_27677A690(uint64_t result, int a2, void *a3)
{
  while (1)
  {
    while (1)
    {
      v3 = result;
      v4 = *(result + 40);
      if (v4 < 1)
      {
        break;
      }

      if (a2 < 0)
      {
LABEL_26:
        *(result + 40) = 0;
        result = *(result + 16);
        if (!result)
        {
          return result;
        }

        a2 = 1;
        if (*(result + 32) != v3)
        {
          v5 = *(result + 24);
          goto LABEL_29;
        }
      }

      else
      {
        if (!a2)
        {
          return 0;
        }

        v5 = *(result + 24);
        if (!v5)
        {
          return 1;
        }

        result = *(result + 16);
        v6 = *(v3 + 32);
        v8 = *(v5 + 24);
        v7 = *(v5 + 32);
        v9 = *(v5 + 40);
        if (v9 < 1)
        {
          if (!v9)
          {
            *(v5 + 32) = v3;
            *(v3 + 24) = v7;
            *(v3 + 32) = v6;
            *(v3 + 16) = v5;
            if (v8)
            {
              *(v8 + 16) = v5;
            }

            if (v6)
            {
              *(v6 + 16) = v3;
            }

            if (v7)
            {
              *(v7 + 16) = v3;
            }

            *(v5 + 16) = result;
            if (result)
            {
              if (*(result + 24) == v3)
              {
                *(result + 24) = v5;
              }

              if (*(result + 32) == v3)
              {
                *(result + 32) = v5;
              }
            }

            if (*a3 == v3)
            {
              *a3 = v5;
            }

            *(v5 + 40) = -1;
LABEL_97:
            v19 = 1;
            goto LABEL_113;
          }

          if (!v7)
          {
            return 1;
          }

          v10 = *(v7 + 24);
          v11 = *(v7 + 32);
          *(v7 + 24) = v5;
          *(v7 + 32) = v3;
          *(v3 + 24) = v11;
          *(v3 + 32) = v6;
          *(v5 + 24) = v8;
          *(v5 + 32) = v10;
          if (v6)
          {
            *(v6 + 16) = v3;
          }

          if (v11)
          {
            *(v11 + 16) = v3;
          }

          if (v8)
          {
            *(v8 + 16) = v5;
          }

          if (v10)
          {
            *(v10 + 16) = v5;
          }

          *(v3 + 16) = v7;
          *(v5 + 16) = v7;
          *(v7 + 16) = result;
          if (result)
          {
            if (*(result + 24) == v3)
            {
              *(result + 24) = v7;
            }

            if (*(result + 32) == v3)
            {
              *(result + 32) = v7;
            }
          }

          if (*a3 == v3)
          {
            *a3 = v7;
          }

          v12 = *(v7 + 40);
          *(v7 + 40) = 0;
          if (v12 < 1)
          {
            v13 = v12 != 0;
            *(v3 + 40) = 0;
          }

          else
          {
            v13 = 0;
            *(v3 + 40) = -1;
          }

          goto LABEL_75;
        }

        *(v5 + 32) = v3;
        *(v3 + 24) = v7;
        *(v3 + 32) = v6;
LABEL_7:
        *(v3 + 16) = v5;
        if (v8)
        {
          *(v8 + 16) = v5;
        }

        if (v6)
        {
          *(v6 + 16) = v3;
        }

        if (v7)
        {
          *(v7 + 16) = v3;
        }

        *(v5 + 16) = result;
        if (result)
        {
          if (*(result + 24) == v3)
          {
            *(result + 24) = v5;
          }

          if (*(result + 32) == v3)
          {
            *(result + 32) = v5;
          }
        }

        if (*a3 == v3)
        {
          *a3 = v5;
        }

        *(v5 + 40) = 0;
        *(v3 + 40) = 0;
        if (!result)
        {
          return result;
        }

        a2 = 1;
        if (v5 != *(result + 32))
        {
          v3 = *(result + 24);
LABEL_29:
          a2 = -1;
          if (v5 != v3)
          {
            return 0;
          }
        }
      }
    }

    if (!v4)
    {
      break;
    }

    if ((a2 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return 0;
      }

      goto LABEL_26;
    }

    v5 = *(result + 32);
    if (!v5)
    {
      return 1;
    }

    result = *(result + 16);
    v6 = *(v3 + 24);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v14 = *(v5 + 40);
    if (v14 < 0)
    {
      *(v5 + 24) = v3;
      *(v3 + 24) = v6;
      *(v3 + 32) = v7;
      goto LABEL_7;
    }

    if (!v14)
    {
      *(v5 + 24) = v3;
      *(v3 + 24) = v6;
      *(v3 + 32) = v7;
      *(v3 + 16) = v5;
      if (v8)
      {
        *(v8 + 16) = v5;
      }

      if (v6)
      {
        *(v6 + 16) = v3;
      }

      if (v7)
      {
        *(v7 + 16) = v3;
      }

      *(v5 + 16) = result;
      if (result)
      {
        if (*(result + 24) == v3)
        {
          *(result + 24) = v5;
        }

        if (*(result + 32) == v3)
        {
          *(result + 32) = v5;
        }
      }

      if (*a3 == v3)
      {
        *a3 = v5;
      }

      *(v5 + 40) = 1;
      goto LABEL_112;
    }

    if (!v7)
    {
      return 1;
    }

    v16 = *(v7 + 24);
    v15 = *(v7 + 32);
    *(v7 + 24) = v3;
    *(v7 + 32) = v5;
    *(v3 + 24) = v6;
    *(v3 + 32) = v16;
    *(v5 + 24) = v15;
    *(v5 + 32) = v8;
    if (v6)
    {
      *(v6 + 16) = v3;
    }

    if (v16)
    {
      *(v16 + 16) = v3;
    }

    if (v8)
    {
      *(v8 + 16) = v5;
    }

    if (v15)
    {
      *(v15 + 16) = v5;
    }

    *(v3 + 16) = v7;
    *(v5 + 16) = v7;
    *(v7 + 16) = result;
    if (result)
    {
      if (*(result + 24) == v3)
      {
        *(result + 24) = v7;
      }

      if (*(result + 32) == v3)
      {
        *(result + 32) = v7;
      }
    }

    if (*a3 == v3)
    {
      *a3 = v7;
    }

    v17 = *(v7 + 40);
    *(v7 + 40) = 0;
    v18 = v17 >> 31;
    if (v17 <= 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    *(v3 + 40) = v18;
LABEL_75:
    *(v5 + 40) = v13;
    if (!result)
    {
      return result;
    }

    a2 = 1;
    if (v7 != *(result + 32))
    {
      a2 = -1;
      if (v7 != *(result + 24))
      {
        return 0;
      }
    }
  }

  if ((a2 & 0x80000000) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    goto LABEL_97;
  }

LABEL_112:
  v19 = -1;
LABEL_113:
  result = 0;
  *(v3 + 40) = v19;
  return result;
}

uint64_t sub_27677AA04(uint64_t a1, void *a2, int a3)
{
  v9 = 0;
  v8 = 0;
  result = sub_27677AA80(a1, a2, &v9, &v8);
  if (!result && a3 && v9)
  {
    v6 = v8;
    v7 = v9;

    return sub_27677A690(v7, v6, a2);
  }

  return result;
}

uint64_t sub_27677AA80(uint64_t a1, void *a2, void *a3, _DWORD *a4)
{
  sub_27677BDEC(a1);
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (v9)
  {
    if (v8)
    {
      v10 = *(a1 + 24);
      do
      {
        v11 = v10;
        v10 = *(v10 + 32);
      }

      while (v10);
      if (v11 == v9)
      {
        *a3 = v11;
        *a4 = -1;
        v21 = *(a1 + 32);
        *(v11 + 32) = v21;
        *(v21 + 16) = v11;
        v22 = *(a1 + 16);
        *(v11 + 16) = v22;
        if (!v22)
        {
          goto LABEL_39;
        }

        if (*(v22 + 24) == a1)
        {
          *(v22 + 24) = v11;
        }

        v23 = *(v22 + 32);
        v17 = (v22 + 32);
        if (v23 != a1)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = *(v11 + 16);
        *a3 = v12;
        *a4 = 1;
        v13 = *(v11 + 24);
        *(v12 + 32) = v13;
        if (v13)
        {
          *(v13 + 16) = v12;
        }

        v14 = *(a1 + 16);
        *(v11 + 16) = v14;
        *(v11 + 32) = *(a1 + 32);
        if (v14)
        {
          if (*(v14 + 24) == a1)
          {
            *(v14 + 24) = v11;
          }

          if (*(v14 + 32) == a1)
          {
            *(v14 + 32) = v11;
          }
        }

        v15 = *(a1 + 24);
        if (v15)
        {
          *(v15 + 16) = v11;
        }

        v16 = *(a1 + 32);
        if (!v16)
        {
          goto LABEL_39;
        }

        v17 = (v16 + 16);
      }

      *v17 = v11;
LABEL_39:
      *(v11 + 40) = *(a1 + 40);
      goto LABEL_55;
    }

    v18 = *(a1 + 16);
    *a3 = v18;
    *a4 = 0;
    if (v18)
    {
      v19 = *(v18 + 24);
      if (v19 == a1)
      {
        *a4 = -1;
      }

      v20 = *(v18 + 32);
      if (v20 == a1)
      {
        *a4 = 1;
      }

      v11 = *(a1 + 24);
LABEL_31:
      if (v19 == a1)
      {
        *(v18 + 24) = v11;
      }

      if (v20 == a1)
      {
        *(v18 + 32) = v11;
      }

      goto LABEL_53;
    }

    v11 = *(a1 + 24);
    goto LABEL_53;
  }

  v18 = *(a1 + 16);
  *a3 = v18;
  *a4 = 0;
  if (v8)
  {
    if (v18)
    {
      v19 = *(v18 + 24);
      if (v19 == a1)
      {
        *a4 = -1;
      }

      v20 = *(v18 + 32);
      if (v20 == a1)
      {
        *a4 = 1;
      }

      v11 = *(a1 + 32);
      goto LABEL_31;
    }

    v11 = *(a1 + 32);
LABEL_53:
    if (*(v11 + 16) == a1)
    {
      *(v11 + 16) = v18;
    }

LABEL_55:
    if (*a2 == a1)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if (v18)
  {
    v24 = *(v18 + 24);
    if (v24 == a1)
    {
      *a4 = -1;
    }

    v25 = *(v18 + 32);
    if (v25 == a1)
    {
      *a4 = 1;
    }

    if (v24 == a1)
    {
      *(v18 + 24) = 0;
    }

    if (v25 == a1)
    {
      *(v18 + 32) = 0;
    }
  }

  if (*a2 == a1)
  {
    v11 = 0;
LABEL_56:
    *a2 = v11;
  }

LABEL_57:
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  return 0;
}

uint64_t sub_27677ACD0(void *a1, uint64_t *a2, int a3, uint64_t a4, void *a5, int a6)
{
  result = sub_27677AD38(a1, a2, a3, a4, a5);
  if (!result && a6)
  {

    return sub_27677A3B4(a1, 0, a2);
  }

  return result;
}

uint64_t sub_27677AD38(void *a1, uint64_t *a2, int a3, uint64_t a4, void *a5)
{
  v5 = *a2;
  if (!*a2)
  {
    *a2 = a1;
    return v5;
  }

  v5 = 3;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (a4)
      {
        if (!*(a4 + 32))
        {
          *(a4 + 32) = a1;
          a1[2] = a4;
          sub_27677BE18(a1, a4);
          return 0;
        }

        return 3;
      }

      return v5;
    }

    if (a3 != 4 || !a4 || !a5)
    {
      return v5;
    }

    v6 = a5 + 3;
    if (a5[3])
    {
      v6 = (a4 + 32);
      if (*(a4 + 32))
      {
        return 3;
      }

      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    *v6 = a1;
    a1[2] = v7;
    v10 = a4;
    v9 = a5;
LABEL_27:
    sub_27677BE28(a1, v10, v9);
    return 0;
  }

  if (a3 == 1)
  {
    if (!a4)
    {
      return v5;
    }

    v8 = *(a4 + 32);
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = v8[3];
      }

      while (v8);
      v9[3] = a1;
      a1[2] = v9;
      v10 = *v9;
    }

    else
    {
      *(a4 + 32) = a1;
      a1[2] = a4;
      v9 = *(a4 + 8);
      v10 = a4;
    }

    goto LABEL_27;
  }

  if (a3 == 2 && a5)
  {
    if (!a5[3])
    {
      a5[3] = a1;
      a1[2] = a5;
      sub_27677BE08(a1, a5);
      return 0;
    }

    return 3;
  }

  return v5;
}

uint64_t *sub_27677AE54(uint64_t *a1, void *a2)
{
  result = sub_27677BE40(a1, a2);
  v5 = a1[2];
  if (v5)
  {
    if (*(v5 + 24) == a1)
    {
      *(v5 + 24) = a2;
    }

    if (*(v5 + 32) == a1)
    {
      *(v5 + 32) = a2;
    }
  }

  v6 = a1[4];
  if (v6)
  {
    *(v6 + 16) = a2;
  }

  v7 = a1[3];
  if (v7)
  {
    *(v7 + 16) = a2;
  }

  v8 = a1[2];
  a2[3] = v7;
  a2[4] = v6;
  a2[2] = v8;
  return result;
}

uint64_t sub_27677AEFC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

CGFloat sub_27677AF08@<D0>(uint64_t *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v10 = a2;
  v11 = a3;
  v12 = (CGRectGetMaxX(*&a2) - a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  result = CGRectGetMaxY(v14) - a3;
  *a1 = v10;
  a1[1] = v11;
  a1[2] = v12;
  a1[3] = result;
  return result;
}

CGFloat sub_27677AF98@<D0>(uint64_t *a1@<X8>)
{
  TSUMultiplyRectScalar();

  return sub_27677AF08(a1, v2, v3, v4, v5);
}

BOOL sub_27677B000(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= *a1)
  {
    return 0;
  }

  if (a2 >= a1[2] + *a1)
  {
    return 0;
  }

  v3 = a1[1];
  return a3 > v3 && a3 < a1[3] + v3;
}

void *sub_27677B044@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = result[1] + a3;
  v5 = result[2] - 2 * a2;
  v6 = result[3] - 2 * a3;
  *a4 = *result + a2;
  a4[1] = v4;
  a4[2] = v5;
  a4[3] = v6;
  return result;
}

uint64_t sub_27677B094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 - a3;
  if (a1 - a3 < 0)
  {
    v4 = a3 - a1;
  }

  v5 = a2 - a4;
  if (a2 - a4 < 0)
  {
    v5 = a4 - a2;
  }

  return v4 + v5;
}

void sub_27677B708(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (*(v4 + 248))
  {
    v5 = objc_msgSend_objectUUID(*(v4 + 248), a2, a3);
    v8 = objc_msgSend_copy(v5, v6, v7);
    v9 = *(a1 + 32);
    v10 = *(v9 + 224);
    *(v9 + 224) = v8;
    goto LABEL_3;
  }

  if (*(v4 + 224) && *(a1 + 40) == 1)
  {
    v20 = objc_msgSend_context(v4, a2, a3);
    v11 = objc_msgSend_objectWithUUID_(v20, v21, *(*(a1 + 32) + 224));

    if (!v11)
    {
      goto LABEL_4;
    }

    v22 = *(a1 + 32);
    v5 = v11;
    v10 = *(v22 + 248);
    *(v22 + 248) = v5;
LABEL_3:

    v11 = v5;
LABEL_4:
  }

  v12 = *(a1 + 32);
  if (*(v12 + 240))
  {
    v13 = objc_msgSend_objectUUID(*(v12 + 240), a2, a3);
    v16 = objc_msgSend_copy(v13, v14, v15);
    v17 = *(a1 + 32);
    v18 = *(v17 + 232);
    *(v17 + 232) = v16;
LABEL_7:

    v19 = v13;
    goto LABEL_8;
  }

  if (!*(v12 + 232) || *(a1 + 40) != 1)
  {
    return;
  }

  v23 = objc_msgSend_context(v12, a2, a3);
  v26 = objc_msgSend_objectWithUUID_(v23, v24, *(*(a1 + 32) + 232));

  v19 = v26;
  if (v26)
  {
    v25 = *(a1 + 32);
    v13 = v26;
    v18 = *(v25 + 240);
    *(v25 + 240) = v13;
    goto LABEL_7;
  }

LABEL_8:
}

id sub_27677BBA4(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSD::ShapeArchive>(v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSDConnectionLineInfo;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void *sub_27677BDE4(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t *sub_27677BDEC(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (*result)
  {
    *(v1 + 8) = v2;
  }

  if (v2)
  {
    *v2 = v1;
  }

  *result = 0;
  result[1] = 0;
  return result;
}

uint64_t sub_27677BE08(uint64_t result, void *a2)
{
  *(result + 8) = a2;
  if (a2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_27677BE18(void *result, uint64_t a2)
{
  *result = a2;
  if (a2)
  {
    *(a2 + 8) = result;
  }

  return result;
}

void *sub_27677BE28(void *result, uint64_t a2, void *a3)
{
  if (a2)
  {
    *(a2 + 8) = result;
  }

  if (a3)
  {
    *a3 = result;
  }

  *result = a2;
  result[1] = a3;
  return result;
}

uint64_t *sub_27677BE40(uint64_t *result, void *a2)
{
  v2 = *result;
  if (*result)
  {
    *(v2 + 8) = a2;
  }

  v3 = result[1];
  if (v3)
  {
    *v3 = a2;
    v2 = *result;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

void Path::Path(Path *this)
{
  this->var2 = 0;
  *&this->var0 = 0;
  this->var3 = 0;
  *&this->var4 = -1;
  *&this->var6 = 0;
  *&this->var10 = 0;
  *&this->var8 = 0;
  HIDWORD(this->var11) = 0;
}

{
  this->var2 = 0;
  *&this->var0 = 0;
  this->var3 = 0;
  *&this->var4 = -1;
  *&this->var6 = 0;
  *&this->var10 = 0;
  *&this->var8 = 0;
  HIDWORD(this->var11) = 0;
}

void Path::~Path(Path *this)
{
  var3 = this->var3;
  if (var3)
  {
    free(var3);
    this->var3 = 0;
  }

  var11 = this->var11;
  if (var11)
  {
    free(var11);
  }

  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 0;
  *&this->var10 = 0;
  *&this->var8 = 0;
  HIDWORD(this->var11) = 0;
}

uint64_t Path::Affiche(Path *this)
{
  result = printf("path descr %i elems\n", this->var2);
  if (this->var2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      printf("  ");
      result = printf("[ %i %f %f ] ", *(this->var3 + v3 + 4), *(this->var3 + v3 + 8), *(this->var3 + v3 + 12));
      v5 = *(this->var3 + v3);
      if ((v5 & 0x10) != 0)
      {
        result = printf(" w ");
        v5 = *(this->var3 + v3);
      }

      v6 = v5 & 0xF;
      if (v6 <= 3)
      {
        if (v6 > 1)
        {
          if (v6 == 2)
          {
            result = printf("C %f %f %f %f %f %f\n");
          }

          else
          {
            result = printf("B %f %f %i\n");
          }
        }

        else if (v6)
        {
          result = printf("L %f %f\n");
        }

        else
        {
          result = printf("M %f %f %i\n");
        }

        goto LABEL_22;
      }

      if (v6 <= 5)
      {
        break;
      }

      if (v6 == 6)
      {
        result = printf("I %f %f\n");
        goto LABEL_22;
      }

      if (v6 == 7)
      {
        v7 = "F";
LABEL_17:
        result = puts(v7);
      }

LABEL_22:
      ++v4;
      v3 += 44;
      if (v4 >= this->var2)
      {
        return result;
      }
    }

    if (v6 == 4)
    {
      result = printf("A %f %f %f %f %i %i\n");
      goto LABEL_22;
    }

    v7 = "Z";
    goto LABEL_17;
  }

  return result;
}

double Path::Reset(Path *this)
{
  this->var2 = 0;
  result = NAN;
  *&this->var4 = -1;
  this->var0 = 0;
  return result;
}

void *Path::Copy(Path *this, Path *a2)
{
  Path::ResetPoints(this, 0);
  var2 = a2->var2;
  if (var2 > this->var1)
  {
    this->var1 = var2;
    v5 = malloc_type_realloc(this->var3, 44 * var2, 0x1000040D4159EFEuLL);
    this->var3 = v5;
    if (!v5)
    {
      TSUSetCrashReporterInfo();
      v10 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "void Path::Copy(Path *)", "void Path::Copy(Path *)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 91);
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v12, v14, 91, 1, "Unable to allocate memory.");

      TSUCrashBreakpoint();
      abort();
    }
  }

  Path::SetWeighted(this, a2->var6);
  v6 = a2->var2;
  this->var2 = v6;
  var3 = this->var3;
  v8 = a2->var3;

  return memcpy(var3, v8, 44 * v6);
}

Path *Path::ResetPoints(Path *this, int a2)
{
  this->var8 = 0;
  v2 = 12 * a2;
  if (this->var6)
  {
    v2 = 16 * a2;
    v3 = 24 * a2;
  }

  else
  {
    v3 = 20 * a2;
  }

  if (this->var7)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  this->var10 = v4;
  if (v4 > this->var9)
  {
    v5 = this;
    this->var9 = v4;
    this = malloc_type_realloc(this->var11, v4, 0x100004077774924uLL);
    v5->var11 = this;
    if (!this)
    {
      TSUSetCrashReporterInfo();
      v6 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void Path::ResetPoints(int)", "void Path::ResetPoints(int)", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm", 594);
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/nlivarot/Path.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 594, 1, "Unable to allocate memory.");

      TSUCrashBreakpoint();
      abort();
    }
  }

  return this;
}