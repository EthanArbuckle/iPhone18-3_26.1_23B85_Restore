uint64_t TSD::ImageReplaceCommandArchive::MergeFrom(TSD::ImageReplaceCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageReplaceCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageReplaceCommandArchive::MergeFrom(uint64_t this, const TSD::ImageReplaceCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_78;
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

  v9 = MEMORY[0x277D80A30];
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

      v10 = MEMORY[0x277C9BA90](v11);
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

    this = TSP::DataReference::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
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

        v16 = MEMORY[0x277C9BA90](v17);
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

      this = TSP::DataReference::MergeFrom(v16, v18);
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
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

    v13 = MEMORY[0x277C9BA90](v14);
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

  this = TSP::DataReference::MergeFrom(v13, v15);
  if ((v5 & 8) != 0)
  {
    goto LABEL_34;
  }

LABEL_16:
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

      v19 = MEMORY[0x277C9BA90](v20);
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

    this = TSP::DataReference::MergeFrom(v19, v21);
  }

LABEL_50:
  v22 = MEMORY[0x277D809C8];
  if ((v5 & 0x20) != 0)
  {
    *(v3 + 16) |= 0x20u;
    v23 = *(v3 + 64);
    if (!v23)
    {
      v24 = *(v3 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v23 = MEMORY[0x277C9BAC0](v24);
      *(v3 + 64) = v23;
    }

    if (*(a2 + 8))
    {
      v25 = *(a2 + 8);
    }

    else
    {
      v25 = v22;
    }

    this = TSP::Path::MergeFrom(v23, v25);
    if ((v5 & 0x40) == 0)
    {
LABEL_52:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_70;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_52;
  }

  *(v3 + 16) |= 0x40u;
  v26 = *(v3 + 72);
  if (!v26)
  {
    v27 = *(v3 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v26 = MEMORY[0x277C9BAC0](v27);
    *(v3 + 72) = v26;
  }

  if (*(a2 + 9))
  {
    v28 = *(a2 + 9);
  }

  else
  {
    v28 = v22;
  }

  this = TSP::Path::MergeFrom(v26, v28);
  if ((v5 & 0x80) != 0)
  {
LABEL_70:
    *(v3 + 16) |= 0x80u;
    v29 = *(v3 + 80);
    if (!v29)
    {
      v30 = *(v3 + 8);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = MEMORY[0x277C9BAD0](v30);
      *(v3 + 80) = v29;
    }

    if (*(a2 + 10))
    {
      v31 = *(a2 + 10);
    }

    else
    {
      v31 = MEMORY[0x277D809D8];
    }

    this = TSP::Size::MergeFrom(v29, v31);
  }

LABEL_78:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_152;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v32 = *(v3 + 88);
    if (!v32)
    {
      v33 = *(v3 + 8);
      if (v33)
      {
        v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
      }

      v32 = MEMORY[0x277C9BAD0](v33);
      *(v3 + 88) = v32;
    }

    if (*(a2 + 11))
    {
      v34 = *(a2 + 11);
    }

    else
    {
      v34 = MEMORY[0x277D809D8];
    }

    this = TSP::Size::MergeFrom(v32, v34);
  }

  if ((v5 & 0x200) != 0)
  {
    *(v3 + 16) |= 0x200u;
    v35 = *(v3 + 96);
    if (!v35)
    {
      v36 = *(v3 + 8);
      if (v36)
      {
        v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
      }

      v35 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v36);
      *(v3 + 96) = v35;
    }

    if (*(a2 + 12))
    {
      v37 = *(a2 + 12);
    }

    else
    {
      v37 = &TSD::_GeometryArchive_default_instance_;
    }

    this = TSD::GeometryArchive::MergeFrom(v35, v37);
    if ((v5 & 0x400) == 0)
    {
LABEL_90:
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_91;
      }

      goto LABEL_112;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_90;
  }

  *(v3 + 16) |= 0x400u;
  v38 = *(v3 + 104);
  if (!v38)
  {
    v39 = *(v3 + 8);
    if (v39)
    {
      v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
    }

    v38 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v39);
    *(v3 + 104) = v38;
  }

  if (*(a2 + 13))
  {
    v40 = *(a2 + 13);
  }

  else
  {
    v40 = &TSD::_GeometryArchive_default_instance_;
  }

  this = TSD::GeometryArchive::MergeFrom(v38, v40);
  if ((v5 & 0x800) == 0)
  {
LABEL_91:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x800u;
  v41 = *(v3 + 112);
  if (!v41)
  {
    v42 = *(v3 + 8);
    if (v42)
    {
      v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
    }

    v41 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v42);
    *(v3 + 112) = v41;
  }

  if (*(a2 + 14))
  {
    v43 = *(a2 + 14);
  }

  else
  {
    v43 = &TSD::_GeometryArchive_default_instance_;
  }

  this = TSD::GeometryArchive::MergeFrom(v41, v43);
  if ((v5 & 0x1000) == 0)
  {
LABEL_92:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x1000u;
  v44 = *(v3 + 120);
  if (!v44)
  {
    v45 = *(v3 + 8);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v45);
    *(v3 + 120) = v44;
  }

  if (*(a2 + 15))
  {
    v46 = *(a2 + 15);
  }

  else
  {
    v46 = &TSD::_GeometryArchive_default_instance_;
  }

  this = TSD::GeometryArchive::MergeFrom(v44, v46);
  if ((v5 & 0x2000) == 0)
  {
LABEL_93:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x2000u;
  v47 = *(v3 + 128);
  if (!v47)
  {
    v48 = *(v3 + 8);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v48);
    *(v3 + 128) = v47;
  }

  if (*(a2 + 16))
  {
    v49 = *(a2 + 16);
  }

  else
  {
    v49 = &TSD::_ImageAdjustmentsArchive_default_instance_;
  }

  this = TSD::ImageAdjustmentsArchive::MergeFrom(v47, v49);
  if ((v5 & 0x4000) == 0)
  {
LABEL_94:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_152;
    }

    goto LABEL_144;
  }

LABEL_136:
  *(v3 + 16) |= 0x4000u;
  v50 = *(v3 + 136);
  if (!v50)
  {
    v51 = *(v3 + 8);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277C9BA90](v51);
    *(v3 + 136) = v50;
  }

  if (*(a2 + 17))
  {
    v52 = *(a2 + 17);
  }

  else
  {
    v52 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v50, v52);
  if ((v5 & 0x8000) != 0)
  {
LABEL_144:
    *(v3 + 16) |= 0x8000u;
    v53 = *(v3 + 144);
    if (!v53)
    {
      v54 = *(v3 + 8);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C9BA90](v54);
      *(v3 + 144) = v53;
    }

    if (*(a2 + 18))
    {
      v55 = *(a2 + 18);
    }

    else
    {
      v55 = MEMORY[0x277D80A30];
    }

    this = TSP::DataReference::MergeFrom(v53, v55);
  }

LABEL_152:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_161;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v56 = *(v3 + 152);
    if (!v56)
    {
      v57 = *(v3 + 8);
      if (v57)
      {
        v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
      }

      v56 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageAdjustmentsArchive>(v57);
      *(v3 + 152) = v56;
    }

    if (*(a2 + 19))
    {
      v58 = *(a2 + 19);
    }

    else
    {
      v58 = &TSD::_ImageAdjustmentsArchive_default_instance_;
    }

    this = TSD::ImageAdjustmentsArchive::MergeFrom(v56, v58);
    if ((v5 & 0x20000) == 0)
    {
LABEL_155:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_156;
      }

      goto LABEL_179;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_155;
  }

  *(v3 + 16) |= 0x20000u;
  v59 = *(v3 + 160);
  if (!v59)
  {
    v60 = *(v3 + 8);
    if (v60)
    {
      v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
    }

    v59 = MEMORY[0x277C9BA90](v60);
    *(v3 + 160) = v59;
  }

  if (*(a2 + 20))
  {
    v61 = *(a2 + 20);
  }

  else
  {
    v61 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v59, v61);
  if ((v5 & 0x40000) == 0)
  {
LABEL_156:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_157;
    }

    goto LABEL_187;
  }

LABEL_179:
  *(v3 + 16) |= 0x40000u;
  v62 = *(v3 + 168);
  if (!v62)
  {
    v63 = *(v3 + 8);
    if (v63)
    {
      v63 = *(v63 & 0xFFFFFFFFFFFFFFFELL);
    }

    v62 = MEMORY[0x277C9BA90](v63);
    *(v3 + 168) = v62;
  }

  if (*(a2 + 21))
  {
    v64 = *(a2 + 21);
  }

  else
  {
    v64 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v62, v64);
  if ((v5 & 0x80000) == 0)
  {
LABEL_157:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_195;
  }

LABEL_187:
  *(v3 + 16) |= 0x80000u;
  v65 = *(v3 + 176);
  if (!v65)
  {
    v66 = *(v3 + 8);
    if (v66)
    {
      v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
    }

    v65 = MEMORY[0x277C9BA90](v66);
    *(v3 + 176) = v65;
  }

  if (*(a2 + 22))
  {
    v67 = *(a2 + 22);
  }

  else
  {
    v67 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v65, v67);
  if ((v5 & 0x100000) == 0)
  {
LABEL_158:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_203;
  }

LABEL_195:
  *(v3 + 16) |= 0x100000u;
  v68 = *(v3 + 184);
  if (!v68)
  {
    v69 = *(v3 + 8);
    if (v69)
    {
      v69 = *(v69 & 0xFFFFFFFFFFFFFFFELL);
    }

    v68 = MEMORY[0x277C9BA90](v69);
    *(v3 + 184) = v68;
  }

  if (*(a2 + 23))
  {
    v70 = *(a2 + 23);
  }

  else
  {
    v70 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v68, v70);
  if ((v5 & 0x200000) == 0)
  {
LABEL_159:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_211;
  }

LABEL_203:
  *(v3 + 16) |= 0x200000u;
  v71 = *(v3 + 192);
  if (!v71)
  {
    v72 = *(v3 + 8);
    if (v72)
    {
      v72 = *(v72 & 0xFFFFFFFFFFFFFFFELL);
    }

    v71 = MEMORY[0x277C9BA90](v72);
    *(v3 + 192) = v71;
  }

  if (*(a2 + 24))
  {
    v73 = *(a2 + 24);
  }

  else
  {
    v73 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v71, v73);
  if ((v5 & 0x400000) == 0)
  {
LABEL_160:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_219;
  }

LABEL_211:
  *(v3 + 16) |= 0x400000u;
  v74 = *(v3 + 200);
  if (!v74)
  {
    v75 = *(v3 + 8);
    if (v75)
    {
      v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
    }

    v74 = MEMORY[0x277C9BA90](v75);
    *(v3 + 200) = v74;
  }

  if (*(a2 + 25))
  {
    v76 = *(a2 + 25);
  }

  else
  {
    v76 = MEMORY[0x277D80A30];
  }

  this = TSP::DataReference::MergeFrom(v74, v76);
  if ((v5 & 0x800000) == 0)
  {
LABEL_161:
    if ((v5 & 0x1000000) == 0)
    {
      return this;
    }

    goto LABEL_227;
  }

LABEL_219:
  *(v3 + 16) |= 0x800000u;
  v77 = *(v3 + 208);
  if (!v77)
  {
    v78 = *(v3 + 8);
    if (v78)
    {
      v78 = *(v78 & 0xFFFFFFFFFFFFFFFELL);
    }

    v77 = MEMORY[0x277C9BAD0](v78);
    *(v3 + 208) = v77;
  }

  if (*(a2 + 26))
  {
    v79 = *(a2 + 26);
  }

  else
  {
    v79 = MEMORY[0x277D809D8];
  }

  this = TSP::Size::MergeFrom(v77, v79);
  if ((v5 & 0x1000000) != 0)
  {
LABEL_227:
    *(v3 + 16) |= 0x1000000u;
    v80 = *(v3 + 216);
    if (!v80)
    {
      v81 = *(v3 + 8);
      if (v81)
      {
        v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
      }

      v80 = MEMORY[0x277C9BAD0](v81);
      *(v3 + 216) = v80;
    }

    if (*(a2 + 27))
    {
      v82 = *(a2 + 27);
    }

    else
    {
      v82 = MEMORY[0x277D809D8];
    }

    return TSP::Size::MergeFrom(v80, v82);
  }

  return this;
}

uint64_t *TSD::ImageReplaceCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageReplaceCommandArchive::Clear(this);

    return TSD::ImageReplaceCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ImageReplaceCommandArchive::CopyFrom(uint64_t *this, const TSD::ImageReplaceCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageReplaceCommandArchive::Clear(this);

    return TSD::ImageReplaceCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageReplaceCommandArchive::IsInitialized(TSD::ImageReplaceCommandArchive *this)
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
      result = TSP::DataReference::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSP::Path::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSP::Path::IsInitialized(*(this + 9));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSP::Size::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100) != 0)
    {
      result = TSP::Size::IsInitialized(*(this + 11));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x200) != 0)
    {
      result = TSD::GeometryArchive::IsInitialized(*(this + 12));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x400) != 0)
    {
      result = TSD::GeometryArchive::IsInitialized(*(this + 13));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x800) != 0)
    {
      result = TSD::GeometryArchive::IsInitialized(*(this + 14));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x1000) != 0)
    {
      result = TSD::GeometryArchive::IsInitialized(*(this + 15));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x4000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 17));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x8000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 18));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 20));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 21));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 22));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 23));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x200000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 24));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x400000) != 0)
    {
      result = TSP::DataReference::IsInitialized(*(this + 25));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x800000) != 0)
    {
      result = TSP::Size::IsInitialized(*(this + 26));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x1000000) == 0)
    {
      return 1;
    }

    result = TSP::Size::IsInitialized(*(this + 27));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

double TSD::ImageReplaceCommandArchive::InternalSwap(TSD::ImageReplaceCommandArchive *this, TSD::ImageReplaceCommandArchive *a2)
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

  *&result = sub_2768028A4(this + 5, a2 + 40).n128_u64[0];
  return result;
}

TSD::DrawableLockCommandArchive *TSD::DrawableLockCommandArchive::DrawableLockCommandArchive(TSD::DrawableLockCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B408;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableLockCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857B408;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableLockCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  return this;
}

TSD::DrawableLockCommandArchive *TSD::DrawableLockCommandArchive::DrawableLockCommandArchive(TSD::DrawableLockCommandArchive *this, const TSD::DrawableLockCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B408;
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
  *(this + 16) = *(a2 + 16);
  return this;
}

void TSD::DrawableLockCommandArchive::~DrawableLockCommandArchive(TSD::DrawableLockCommandArchive *this)
{
  if (this != &TSD::_DrawableLockCommandArchive_default_instance_)
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
  TSD::DrawableLockCommandArchive::~DrawableLockCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::DrawableLockCommandArchive::default_instance(TSD::DrawableLockCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawableLockCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawableLockCommandArchive_default_instance_;
}

uint64_t *TSD::DrawableLockCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::InfoCommandArchive::Clear(this[3]);
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

google::protobuf::internal *TSD::DrawableLockCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v28) & 1) == 0)
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
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_29:
          v28 = v18;
          *(a1 + 33) = v17 != 0;
          goto LABEL_36;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v28 = v26;
        *(a1 + 33) = v27 != 0;
        if (!v26)
        {
LABEL_45:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
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

              v20 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v21);
              *(a1 + 24) = v20;
              v7 = v28;
            }

            v13 = sub_27680EFE0(a3, v20, v7);
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

          v28 = v13;
          if (!v13)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_24:
          v28 = v15;
          *(a1 + 32) = v14 != 0;
          goto LABEL_36;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v7, v14);
        v28 = v24;
        *(a1 + 32) = v25 != 0;
        if (!v24)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      if (sub_27670AF08(a3, &v28))
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

unsigned __int8 *TSD::DrawableLockCommandArchive::_InternalSerialize(TSD::DrawableLockCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
        goto LABEL_21;
      }

      goto LABEL_18;
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

  v13 = *(this + 32);
  *a2 = 16;
  a2[1] = v13;
  a2 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 33);
    *a2 = 24;
    a2[1] = v14;
    a2 += 2;
  }

LABEL_21:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::DrawableLockCommandArchive::ByteSizeLong(TSD::DrawableLockCommandArchive *this)
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

  v5 = (v2 & 6) == 0;
  v6 = v3 + (v2 & 2) + ((v2 >> 1) & 2);
  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TSD::DrawableLockCommandArchive::MergeFrom(TSD::DrawableLockCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawableLockCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawableLockCommandArchive::MergeFrom(uint64_t this, const TSD::DrawableLockCommandArchive *a2)
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
        *(v3 + 33) = *(a2 + 33);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSD::DrawableLockCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableLockCommandArchive::Clear(this);

    return TSD::DrawableLockCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawableLockCommandArchive::CopyFrom(uint64_t *this, const TSD::DrawableLockCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableLockCommandArchive::Clear(this);

    return TSD::DrawableLockCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawableLockCommandArchive::IsInitialized(TSD::InfoCommandArchive **this)
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

uint64_t *TSD::DrawableLockCommandArchive::InternalSwap(TSD::DrawableLockCommandArchive *this, TSD::DrawableLockCommandArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOWORD(v6) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  return result;
}

TSP::Reference *TSD::DrawableInfoCommentCommandArchive::clear_old_comment(TSD::DrawableInfoCommentCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::DrawableInfoCommentCommandArchive::clear_new_comment(TSD::DrawableInfoCommentCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::DrawableInfoCommentCommandArchive *TSD::DrawableInfoCommentCommandArchive::DrawableInfoCommentCommandArchive(TSD::DrawableInfoCommentCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B4B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableInfoCommentCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_28857B4B8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableInfoCommentCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::DrawableInfoCommentCommandArchive *TSD::DrawableInfoCommentCommandArchive::DrawableInfoCommentCommandArchive(TSD::DrawableInfoCommentCommandArchive *this, const TSD::DrawableInfoCommentCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B4B8;
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
  *(this + 6) = *(a2 + 6);
  return this;
}

void TSD::DrawableInfoCommentCommandArchive::~DrawableInfoCommentCommandArchive(TSD::DrawableInfoCommentCommandArchive *this)
{
  if (this != &TSD::_DrawableInfoCommentCommandArchive_default_instance_)
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
  TSD::DrawableInfoCommentCommandArchive::~DrawableInfoCommentCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::DrawableInfoCommentCommandArchive::default_instance(TSD::DrawableInfoCommentCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawableInfoCommentCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawableInfoCommentCommandArchive_default_instance_;
}

uint64_t *TSD::DrawableInfoCommentCommandArchive::Clear(uint64_t *this)
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

    this = TSP::Reference::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Reference::Clear(*(v1 + 40));
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

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::DrawableInfoCommentCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  while ((sub_27670AF08(a3, &v28) & 1) == 0)
  {
    v5 = (v28 + 1);
    v6 = *v28;
    if (*v28 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v7 - 128));
        v28 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v26;
        goto LABEL_7;
      }

      v5 = (v28 + 2);
    }

    v28 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 != 1)
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_48:
          if (v6)
          {
            v24 = (v6 & 7) == 4;
          }

          else
          {
            v24 = 1;
          }

          if (v24)
          {
            *(a3 + 80) = v6 - 1;
            return v28;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v18 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_55;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 32);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C9BB20](v14);
          LODWORD(v13) = v15;
          *(a1 + 32) = v15;
LABEL_33:
          v5 = v28;
        }

LABEL_34:
        v18 = sub_27680B6EC(a3, v13, v5);
        goto LABEL_55;
      }

      if (v6 != 10)
      {
        goto LABEL_48;
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
        v5 = v28;
      }

      v18 = sub_27680EFE0(a3, v22, v5);
LABEL_55:
      v28 = v18;
      if (!v18)
      {
        return 0;
      }
    }

    else
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_48;
        }

        *(a1 + 16) |= 4u;
        v13 = *(a1 + 40);
        if (!v13)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C9BB20](v16);
          LODWORD(v13) = v17;
          *(a1 + 40) = v17;
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (v8 == 4)
      {
        if (v6 != 32)
        {
          goto LABEL_48;
        }

        v20 = (v5 + 1);
        v19 = *v5;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v5 + 2);
LABEL_39:
          v28 = v20;
          goto LABEL_40;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v5, v19);
        if (!v28)
        {
          return 0;
        }

LABEL_40:
        if (v19 > 3)
        {
          sub_27680D374();
        }

        else
        {
          *(a1 + 16) |= 8u;
          *(a1 + 48) = v19;
        }
      }

      else
      {
        if (v8 != 5 || v6 != 40)
        {
          goto LABEL_48;
        }

        v10 = (v5 + 1);
        v9 = *v5;
        if ((v9 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v11 = *v10;
        v9 = (v11 << 7) + v9 - 128;
        if ((v11 & 0x80000000) == 0)
        {
          v10 = (v5 + 2);
LABEL_15:
          v28 = v10;
          goto LABEL_16;
        }

        v28 = google::protobuf::internal::VarintParseSlow64(v5, v9);
        if (!v28)
        {
          return 0;
        }

LABEL_16:
        if (v9 > 3)
        {
          sub_27680FF0C();
        }

        else
        {
          *(a1 + 16) |= 0x10u;
          *(a1 + 52) = v9;
        }
      }
    }
  }

  return v28;
}

unsigned __int8 *TSD::DrawableInfoCommentCommandArchive::_InternalSerialize(TSD::DrawableInfoCommentCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 3);
    *a2 = 10;
    v9 = *(v8 + 5);
    if (v9 > 0x7F)
    {
      a2[1] = v9 | 0x80;
      v12 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = a2 + 3;
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
        a2[2] = v12;
        v10 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v9;
      v10 = a2 + 2;
    }

    a2 = TSD::InfoCommandArchive::_InternalSerialize(v8, v10, a3, a4);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
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

  v17 = *(this + 4);
  *a2 = 18;
  v18 = *(v17 + 5);
  if (v18 > 0x7F)
  {
    a2[1] = v18 | 0x80;
    v20 = v18 >> 7;
    if (v18 >> 14)
    {
      v19 = a2 + 3;
      do
      {
        *(v19 - 1) = v20 | 0x80;
        v21 = v20 >> 7;
        ++v19;
        v22 = v20 >> 14;
        v20 >>= 7;
      }

      while (v22);
      *(v19 - 1) = v21;
    }

    else
    {
      a2[2] = v20;
      v19 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v18;
    v19 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v17, v19, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
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

  v23 = *(this + 5);
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
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
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

  v29 = *(this + 12);
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
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_56;
      }
    }

    else
    {
      a2[2] = v30;
      a2 += 3;
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    a2[1] = v29;
    a2 += 2;
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_56;
    }
  }

LABEL_6:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 13);
  *a2 = 40;
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v11 = v7 >> 7;
    if (v7 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v11 | 0x80;
        v13 = v11 >> 7;
        ++a2;
        v14 = v11 >> 14;
        v11 >>= 7;
      }

      while (v14);
      *(a2 - 1) = v13;
    }

    else
    {
      a2[2] = v11;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v7;
    a2 += 2;
  }

LABEL_56:
  v33 = *(this + 1);
  if ((v33 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v33 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::DrawableInfoCommentCommandArchive::ByteSizeLong(TSD::DrawableInfoCommentCommandArchive *this)
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

  if ((v2 & 0x1E) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v2 & 4) == 0)
      {
LABEL_7:
        if ((v2 & 8) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }
    }

    else if ((v2 & 4) == 0)
    {
      goto LABEL_7;
    }

    v6 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_20;
      }

LABEL_16:
      v9 = *(this + 13);
      if (v9 < 0)
      {
        v10 = 11;
      }

      else
      {
        v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v10;
      goto LABEL_20;
    }

LABEL_12:
    v7 = *(this + 12);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v8;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

LABEL_20:
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

uint64_t TSD::DrawableInfoCommentCommandArchive::MergeFrom(TSD::DrawableInfoCommentCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawableInfoCommentCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawableInfoCommentCommandArchive::MergeFrom(uint64_t this, const TSD::DrawableInfoCommentCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_36;
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

    this = TSP::Reference::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
LABEL_18:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_17:
      *(v3 + 52) = *(a2 + 13);
      goto LABEL_18;
    }

LABEL_36:
    *(v3 + 48) = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return this;
}

uint64_t *TSD::DrawableInfoCommentCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableInfoCommentCommandArchive::Clear(this);

    return TSD::DrawableInfoCommentCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawableInfoCommentCommandArchive::CopyFrom(uint64_t *this, const TSD::DrawableInfoCommentCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableInfoCommentCommandArchive::Clear(this);

    return TSD::DrawableInfoCommentCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawableInfoCommentCommandArchive::IsInitialized(TSD::DrawableInfoCommentCommandArchive *this)
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

__n128 TSD::DrawableInfoCommentCommandArchive::InternalSwap(TSD::DrawableInfoCommentCommandArchive *this, TSD::DrawableInfoCommentCommandArchive *a2)
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
  return result;
}

TSP::Reference *TSD::DrawablePencilAnnotationCommandArchive::clear_pencil_annotation_to_add(TSD::DrawablePencilAnnotationCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::DrawablePencilAnnotationCommandArchive::clear_pencil_annotation_to_remove(TSD::DrawablePencilAnnotationCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::DrawablePencilAnnotationCommandArchive *TSD::DrawablePencilAnnotationCommandArchive::DrawablePencilAnnotationCommandArchive(TSD::DrawablePencilAnnotationCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B568;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawablePencilAnnotationCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857B568;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawablePencilAnnotationCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::DrawablePencilAnnotationCommandArchive *TSD::DrawablePencilAnnotationCommandArchive::DrawablePencilAnnotationCommandArchive(TSD::DrawablePencilAnnotationCommandArchive *this, const TSD::DrawablePencilAnnotationCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B568;
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

void TSD::DrawablePencilAnnotationCommandArchive::~DrawablePencilAnnotationCommandArchive(TSD::DrawablePencilAnnotationCommandArchive *this)
{
  if (this != &TSD::_DrawablePencilAnnotationCommandArchive_default_instance_)
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
  TSD::DrawablePencilAnnotationCommandArchive::~DrawablePencilAnnotationCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::DrawablePencilAnnotationCommandArchive::default_instance(TSD::DrawablePencilAnnotationCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawablePencilAnnotationCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawablePencilAnnotationCommandArchive_default_instance_;
}

uint64_t *TSD::DrawablePencilAnnotationCommandArchive::Clear(uint64_t *this)
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

google::protobuf::internal *TSD::DrawablePencilAnnotationCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

unsigned __int8 *TSD::DrawablePencilAnnotationCommandArchive::_InternalSerialize(TSD::DrawablePencilAnnotationCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

uint64_t TSD::DrawablePencilAnnotationCommandArchive::ByteSizeLong(TSD::DrawablePencilAnnotationCommandArchive *this)
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

uint64_t TSD::DrawablePencilAnnotationCommandArchive::MergeFrom(TSD::DrawablePencilAnnotationCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawablePencilAnnotationCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawablePencilAnnotationCommandArchive::MergeFrom(uint64_t this, const TSD::DrawablePencilAnnotationCommandArchive *a2)
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

uint64_t *TSD::DrawablePencilAnnotationCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawablePencilAnnotationCommandArchive::Clear(this);

    return TSD::DrawablePencilAnnotationCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawablePencilAnnotationCommandArchive::CopyFrom(uint64_t *this, const TSD::DrawablePencilAnnotationCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawablePencilAnnotationCommandArchive::Clear(this);

    return TSD::DrawablePencilAnnotationCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawablePencilAnnotationCommandArchive::IsInitialized(TSD::DrawablePencilAnnotationCommandArchive *this)
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

__n128 TSD::DrawablePencilAnnotationCommandArchive::InternalSwap(TSD::DrawablePencilAnnotationCommandArchive *this, TSD::DrawablePencilAnnotationCommandArchive *a2)
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

TSK::CommandArchive *TSD::AbstractGuideCommandArchive::clear_super(TSD::AbstractGuideCommandArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSK::CommandArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

uint64_t *TSD::AbstractGuideCommandArchive::clear_old_guides(uint64_t *this)
{
  v1 = *(this + 8);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSD::UserDefinedGuideArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 32) = 0;
  }

  return this;
}

uint64_t *TSD::AbstractGuideCommandArchive::clear_new_guides(uint64_t *this)
{
  v1 = *(this + 14);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[8] + 8);
    do
    {
      v4 = *v3++;
      this = TSD::UserDefinedGuideArchive::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 56) = 0;
  }

  return this;
}

TSD::AbstractGuideCommandArchive *TSD::AbstractGuideCommandArchive::AbstractGuideCommandArchive(TSD::AbstractGuideCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B618;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 6) = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  if (atomic_load_explicit(scc_info_AbstractGuideCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 9) = 0;
  return this;
}

void sub_2767F01AC(_Unwind_Exception *a1)
{
  sub_27676CC08(v2);
  sub_27676CC08(v1);
  _Unwind_Resume(a1);
}

TSD::AbstractGuideCommandArchive *TSD::AbstractGuideCommandArchive::AbstractGuideCommandArchive(TSD::AbstractGuideCommandArchive *this, const TSD::AbstractGuideCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B618;
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
    sub_27676CCA0(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_27676CCA0(this + 48, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
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

void sub_2767F035C(_Unwind_Exception *a1)
{
  MEMORY[0x277C9C1D0](v3, 0x10A1C40C24530F0);
  sub_27676CC08(v2);
  sub_27676CC08((v1 + 24));
  _Unwind_Resume(a1);
}

void TSD::AbstractGuideCommandArchive::~AbstractGuideCommandArchive(TSD::AbstractGuideCommandArchive *this)
{
  if (this != &TSD::_AbstractGuideCommandArchive_default_instance_ && *(this + 9))
  {
    v2 = MEMORY[0x277C9B420]();
    MEMORY[0x277C9C1D0](v2, 0x10A1C40C24530F0);
  }

  sub_2766FFE58(this + 1);
  sub_27676CC08(this + 6);
  sub_27676CC08(this + 3);
}

{
  TSD::AbstractGuideCommandArchive::~AbstractGuideCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::AbstractGuideCommandArchive::default_instance(TSD::AbstractGuideCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_AbstractGuideCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_AbstractGuideCommandArchive_default_instance_;
}

uint64_t *TSD::AbstractGuideCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSD::UserDefinedGuideArchive::Clear(v4);
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
      this = TSD::UserDefinedGuideArchive::Clear(v7);
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
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_27670B144(v8);
  }

  return this;
}

google::protobuf::internal *TSD::AbstractGuideCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v34 = a2;
  while (1)
  {
LABEL_2:
    if (sub_27670AF08(a3, &v34))
    {
      return v34;
    }

    v5 = (v34 + 1);
    v6 = *v34;
    if ((*v34 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v34 + 2);
LABEL_6:
      v34 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v34, (v7 - 128));
    v34 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v32;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 8)
    {
      if (v6 != 66)
      {
        goto LABEL_13;
      }

      v20 = (v5 - 1);
      while (1)
      {
        v21 = (v20 + 1);
        v34 = (v20 + 1);
        v22 = *(a1 + 64);
        if (!v22)
        {
          goto LABEL_36;
        }

        v27 = *(a1 + 56);
        v23 = *v22;
        if (v27 < *v22)
        {
          *(a1 + 56) = v27 + 1;
          v24 = *&v22[2 * v27 + 2];
          goto LABEL_40;
        }

        if (v23 == *(a1 + 60))
        {
LABEL_36:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v22 = *(a1 + 64);
          v23 = *v22;
        }

        *v22 = v23 + 1;
        v24 = google::protobuf::Arena::CreateMaybeMessage<TSD::UserDefinedGuideArchive>(*(a1 + 48));
        v25 = *(a1 + 56);
        v26 = *(a1 + 64) + 8 * v25;
        *(a1 + 56) = v25 + 1;
        *(v26 + 8) = v24;
        v21 = v34;
LABEL_40:
        v20 = sub_27680CE54(a3, v24, v21);
        v34 = v20;
        if (!v20)
        {
          return 0;
        }

        if (*a3 <= v20 || *v20 != 66)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 7)
    {
      if (v6 != 58)
      {
        goto LABEL_13;
      }

      v12 = (v5 - 1);
      while (1)
      {
        v13 = (v12 + 1);
        v34 = (v12 + 1);
        v14 = *(a1 + 40);
        if (!v14)
        {
          goto LABEL_23;
        }

        v19 = *(a1 + 32);
        v15 = *v14;
        if (v19 < *v14)
        {
          *(a1 + 32) = v19 + 1;
          v16 = *&v14[2 * v19 + 2];
          goto LABEL_27;
        }

        if (v15 == *(a1 + 36))
        {
LABEL_23:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
          v14 = *(a1 + 40);
          v15 = *v14;
        }

        *v14 = v15 + 1;
        v16 = google::protobuf::Arena::CreateMaybeMessage<TSD::UserDefinedGuideArchive>(*(a1 + 24));
        v17 = *(a1 + 32);
        v18 = *(a1 + 40) + 8 * v17;
        *(a1 + 32) = v17 + 1;
        *(v18 + 8) = v16;
        v13 = v34;
LABEL_27:
        v12 = sub_27680CE54(a3, v16, v13);
        v34 = v12;
        if (!v12)
        {
          return 0;
        }

        if (*a3 <= v12 || *v12 != 58)
        {
          goto LABEL_2;
        }
      }
    }

    if (v8 == 1 && v6 == 10)
    {
      *(a1 + 16) |= 1u;
      v28 = *(a1 + 72);
      if (!v28)
      {
        v29 = *(a1 + 8);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = MEMORY[0x277C9BA50](v29);
        LODWORD(v28) = v30;
        *(a1 + 72) = v30;
        v5 = v34;
      }

      v11 = sub_27680C3D8(a3, v28, v5);
      goto LABEL_51;
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
LABEL_51:
    v34 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v34;
}

unsigned __int8 *TSD::AbstractGuideCommandArchive::_InternalSerialize(TSD::AbstractGuideCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  if (*(this + 16))
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
      *a2 = 58;
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

      a2 = TSD::UserDefinedGuideArchive::_InternalSerialize(v14, v16, a3, a4);
    }
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
      *a2 = 66;
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

      a2 = TSD::UserDefinedGuideArchive::_InternalSerialize(v22, v24, a3, a4);
    }
  }

  v28 = *(this + 1);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v28 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::AbstractGuideCommandArchive::ByteSizeLong(TSK::CommandArchive **this)
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
      v10 = TSD::UserDefinedGuideArchive::ByteSizeLong(v9);
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
      v17 = TSD::UserDefinedGuideArchive::ByteSizeLong(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
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

uint64_t TSD::AbstractGuideCommandArchive::MergeFrom(TSD::AbstractGuideCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::AbstractGuideCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::AbstractGuideCommandArchive::MergeFrom(uint64_t this, const TSD::AbstractGuideCommandArchive *a2)
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
    this = sub_27676CCA0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_27676CCA0(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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

      v16 = MEMORY[0x277C9BA50](v17);
      *(v3 + 72) = v16;
      v15 = *(a2 + 9);
    }

    if (v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = MEMORY[0x277D80718];
    }

    return TSK::CommandArchive::MergeFrom(v16, v18);
  }

  return this;
}

uint64_t *TSD::AbstractGuideCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::AbstractGuideCommandArchive::Clear(this);

    return TSD::AbstractGuideCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::AbstractGuideCommandArchive::CopyFrom(uint64_t *this, const TSD::AbstractGuideCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::AbstractGuideCommandArchive::Clear(this);

    return TSD::AbstractGuideCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::AbstractGuideCommandArchive::IsInitialized(TSK::CommandArchive **this)
{
  if (this[2])
  {
    return TSK::CommandArchive::IsInitialized(this[9]);
  }

  else
  {
    return 0;
  }
}

__n128 TSD::AbstractGuideCommandArchive::InternalSwap(TSD::AbstractGuideCommandArchive *this, TSD::AbstractGuideCommandArchive *a2)
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

TSP::UUIDPath *TSD::GuideCommandArchive::clear_storage_id_path(TSD::GuideCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::UUIDPath::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::GuideCommandArchive *TSD::GuideCommandArchive::GuideCommandArchive(TSD::GuideCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B6C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GuideCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_28857B6C8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GuideCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSD::GuideCommandArchive *TSD::GuideCommandArchive::GuideCommandArchive(TSD::GuideCommandArchive *this, const TSD::GuideCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B6C8;
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

void TSD::GuideCommandArchive::~GuideCommandArchive(TSD::GuideCommandArchive *this)
{
  if (this != &TSD::_GuideCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::AbstractGuideCommandArchive::~AbstractGuideCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
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
  TSD::GuideCommandArchive::~GuideCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::GuideCommandArchive::default_instance(TSD::GuideCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_GuideCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GuideCommandArchive_default_instance_;
}

uint64_t *TSD::GuideCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSD::AbstractGuideCommandArchive::Clear(this[3]);
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

google::protobuf::internal *TSD::GuideCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  while ((sub_27670AF08(a3, &v19) & 1) == 0)
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
        v5 = v19;
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
          return v19;
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

        v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::AbstractGuideCommandArchive>(v15);
        *(a1 + 24) = v14;
        v5 = v19;
      }

      v10 = sub_27680F9A0(a3, v14, v5);
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

unsigned __int8 *TSD::GuideCommandArchive::_InternalSerialize(TSD::GuideCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::AbstractGuideCommandArchive::_InternalSerialize(v7, v9, a3, a4);
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

uint64_t TSD::GuideCommandArchive::RequiredFieldsByteSizeFallback(TSD::GuideCommandArchive *this)
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

  v4 = TSD::AbstractGuideCommandArchive::ByteSizeLong(*(this + 3));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(this + 4) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::UUIDPath::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t TSD::GuideCommandArchive::ByteSizeLong(TSD::GuideCommandArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v4 = TSD::GuideCommandArchive::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSD::AbstractGuideCommandArchive::ByteSizeLong(*(this + 3));
    v3 = TSP::UUIDPath::ByteSizeLong(*(this + 4));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t TSD::GuideCommandArchive::MergeFrom(TSD::GuideCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::GuideCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::GuideCommandArchive::MergeFrom(uint64_t this, const TSD::GuideCommandArchive *a2)
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::AbstractGuideCommandArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_AbstractGuideCommandArchive_default_instance_;
      }

      this = TSD::AbstractGuideCommandArchive::MergeFrom(v6, v8);
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

uint64_t *TSD::GuideCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GuideCommandArchive::Clear(this);

    return TSD::GuideCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::GuideCommandArchive::CopyFrom(uint64_t *this, const TSD::GuideCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GuideCommandArchive::Clear(this);

    return TSD::GuideCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::GuideCommandArchive::IsInitialized(TSD::GuideCommandArchive *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    return 0;
  }

  v2 = *(this + 3);
  if ((*(v2 + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSK::CommandArchive::IsInitialized(*(v2 + 72));
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

__n128 TSD::GuideCommandArchive::InternalSwap(TSD::GuideCommandArchive *this, TSD::GuideCommandArchive *a2)
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

TSD::DrawableAspectRatioLockedCommandArchive *TSD::DrawableAspectRatioLockedCommandArchive::DrawableAspectRatioLockedCommandArchive(TSD::DrawableAspectRatioLockedCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B778;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableAspectRatioLockedCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857B778;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableAspectRatioLockedCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  return this;
}

TSD::DrawableAspectRatioLockedCommandArchive *TSD::DrawableAspectRatioLockedCommandArchive::DrawableAspectRatioLockedCommandArchive(TSD::DrawableAspectRatioLockedCommandArchive *this, const TSD::DrawableAspectRatioLockedCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B778;
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
  *(this + 16) = *(a2 + 16);
  return this;
}

void TSD::DrawableAspectRatioLockedCommandArchive::~DrawableAspectRatioLockedCommandArchive(TSD::DrawableAspectRatioLockedCommandArchive *this)
{
  if (this != &TSD::_DrawableAspectRatioLockedCommandArchive_default_instance_)
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
  TSD::DrawableAspectRatioLockedCommandArchive::~DrawableAspectRatioLockedCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::DrawableAspectRatioLockedCommandArchive::default_instance(TSD::DrawableAspectRatioLockedCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawableAspectRatioLockedCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawableAspectRatioLockedCommandArchive_default_instance_;
}

uint64_t *TSD::DrawableAspectRatioLockedCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::InfoCommandArchive::Clear(this[3]);
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

google::protobuf::internal *TSD::DrawableAspectRatioLockedCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v28) & 1) == 0)
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
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_29:
          v28 = v18;
          *(a1 + 33) = v17 != 0;
          goto LABEL_36;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v28 = v26;
        *(a1 + 33) = v27 != 0;
        if (!v26)
        {
LABEL_45:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2)
        {
          if (v10 == 1 && v8 == 10)
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

              v20 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v21);
              *(a1 + 24) = v20;
              v7 = v28;
            }

            v13 = sub_27680EFE0(a3, v20, v7);
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

          v28 = v13;
          if (!v13)
          {
            goto LABEL_45;
          }

          goto LABEL_36;
        }

        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v15 = (v7 + 1);
        v14 = *v7;
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v16 = *v15;
        v14 = (v16 << 7) + v14 - 128;
        if ((v16 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_24:
          v28 = v15;
          *(a1 + 32) = v14 != 0;
          goto LABEL_36;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v7, v14);
        v28 = v24;
        *(a1 + 32) = v25 != 0;
        if (!v24)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      if (sub_27670AF08(a3, &v28))
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

unsigned __int8 *TSD::DrawableAspectRatioLockedCommandArchive::_InternalSerialize(TSD::DrawableAspectRatioLockedCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
        goto LABEL_21;
      }

      goto LABEL_18;
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

  v13 = *(this + 32);
  *a2 = 16;
  a2[1] = v13;
  a2 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(this + 33);
    *a2 = 24;
    a2[1] = v14;
    a2 += 2;
  }

LABEL_21:
  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v15 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::DrawableAspectRatioLockedCommandArchive::ByteSizeLong(TSD::DrawableAspectRatioLockedCommandArchive *this)
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

  v5 = (v2 & 6) == 0;
  v6 = v3 + (v2 & 2) + ((v2 >> 1) & 2);
  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v6;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v7;
    return v7;
  }
}

uint64_t TSD::DrawableAspectRatioLockedCommandArchive::MergeFrom(TSD::DrawableAspectRatioLockedCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawableAspectRatioLockedCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawableAspectRatioLockedCommandArchive::MergeFrom(uint64_t this, const TSD::DrawableAspectRatioLockedCommandArchive *a2)
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
        *(v3 + 33) = *(a2 + 33);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSD::DrawableAspectRatioLockedCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableAspectRatioLockedCommandArchive::Clear(this);

    return TSD::DrawableAspectRatioLockedCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawableAspectRatioLockedCommandArchive::CopyFrom(uint64_t *this, const TSD::DrawableAspectRatioLockedCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableAspectRatioLockedCommandArchive::Clear(this);

    return TSD::DrawableAspectRatioLockedCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawableAspectRatioLockedCommandArchive::IsInitialized(TSD::InfoCommandArchive **this)
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

uint64_t *TSD::DrawableAspectRatioLockedCommandArchive::InternalSwap(TSD::DrawableAspectRatioLockedCommandArchive *this, TSD::DrawableAspectRatioLockedCommandArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  LOWORD(v6) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v6;
  return result;
}

TSD::DrawableAccessibilityDescriptionCommandArchive *TSD::DrawableAccessibilityDescriptionCommandArchive::DrawableAccessibilityDescriptionCommandArchive(TSD::DrawableAccessibilityDescriptionCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B828;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_DrawableAccessibilityDescriptionCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = 0;
  return this;
}

TSD::DrawableAccessibilityDescriptionCommandArchive *TSD::DrawableAccessibilityDescriptionCommandArchive::DrawableAccessibilityDescriptionCommandArchive(TSD::DrawableAccessibilityDescriptionCommandArchive *this, const TSD::DrawableAccessibilityDescriptionCommandArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_28857B828;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSD::DrawableAccessibilityDescriptionCommandArchive::~DrawableAccessibilityDescriptionCommandArchive(TSD::DrawableAccessibilityDescriptionCommandArchive *this)
{
  v2 = *(this + 3);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277C9C1D0](v4, 0x1012C40EC159624);
  }

  if (this != &TSD::_DrawableAccessibilityDescriptionCommandArchive_default_instance_)
  {
    v5 = *(this + 5);
    if (v5)
    {
      TSD::InfoCommandArchive::~InfoCommandArchive(v5);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::DrawableAccessibilityDescriptionCommandArchive::~DrawableAccessibilityDescriptionCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::DrawableAccessibilityDescriptionCommandArchive::default_instance(TSD::DrawableAccessibilityDescriptionCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_DrawableAccessibilityDescriptionCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_DrawableAccessibilityDescriptionCommandArchive_default_instance_;
}

uint64_t *TSD::DrawableAccessibilityDescriptionCommandArchive::Clear(uint64_t *this)
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
    this = TSD::InfoCommandArchive::Clear(this[5]);
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

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::DrawableAccessibilityDescriptionCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_27670AF08(a3, &v17) & 1) == 0)
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
        sub_27670AF80((a1 + 8));
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

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v13);
      *(a1 + 40) = v12;
      v5 = v17;
    }

    v11 = sub_27680EFE0(a3, v12, v5);
LABEL_30:
    v17 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v17;
}

google::protobuf::UnknownFieldSet *TSD::DrawableAccessibilityDescriptionCommandArchive::_InternalSerialize(TSD::DrawableAccessibilityDescriptionCommandArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
      *(v4 + 1) = v10 | 0x80;
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
        *(v4 + 2) = v12;
        v11 = v4 + 3;
      }
    }

    else
    {
      *(v4 + 1) = v10;
      v11 = v4 + 2;
    }

    v4 = TSD::InfoCommandArchive::_InternalSerialize(v9, v11, a3, v4);
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

  v4 = sub_276727B88(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 2) != 0)
  {
LABEL_4:
    v4 = sub_276727B88(a3, 3, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_5:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v7 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t TSD::DrawableAccessibilityDescriptionCommandArchive::ByteSizeLong(TSD::DrawableAccessibilityDescriptionCommandArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    v4 = TSD::InfoCommandArchive::ByteSizeLong(*(this + 5));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
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

    if ((v2 & 2) != 0)
    {
      v8 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
      v9 = *(v8 + 23);
      v10 = *(v8 + 8);
      if ((v9 & 0x80u) == 0)
      {
        v10 = v9;
      }

      v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSD::DrawableAccessibilityDescriptionCommandArchive::MergeFrom(TSD::DrawableAccessibilityDescriptionCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::DrawableAccessibilityDescriptionCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::DrawableAccessibilityDescriptionCommandArchive::MergeFrom(uint64_t this, const TSD::DrawableAccessibilityDescriptionCommandArchive *a2)
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

          v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v7);
          *(v3 + 40) = v6;
        }

        if (*(a2 + 5))
        {
          v8 = *(a2 + 5);
        }

        else
        {
          v8 = &TSD::_InfoCommandArchive_default_instance_;
        }

        return TSD::InfoCommandArchive::MergeFrom(v6, v8);
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

uint64_t *TSD::DrawableAccessibilityDescriptionCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableAccessibilityDescriptionCommandArchive::Clear(this);

    return TSD::DrawableAccessibilityDescriptionCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::DrawableAccessibilityDescriptionCommandArchive::CopyFrom(uint64_t *this, const TSD::DrawableAccessibilityDescriptionCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::DrawableAccessibilityDescriptionCommandArchive::Clear(this);

    return TSD::DrawableAccessibilityDescriptionCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::DrawableAccessibilityDescriptionCommandArchive::IsInitialized(TSD::InfoCommandArchive **this)
{
  if ((this[2] & 4) != 0)
  {
    return TSD::InfoCommandArchive::IsInitialized(this[5]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::DrawableAccessibilityDescriptionCommandArchive::InternalSwap(TSD::DrawableAccessibilityDescriptionCommandArchive *this, TSD::DrawableAccessibilityDescriptionCommandArchive *a2)
{
  result = sub_276700610(this + 1, a2 + 1);
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

TSP::Reference *TSD::PasteStyleCommandArchive::clear_new_style(TSD::PasteStyleCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSD::PasteStyleCommandArchive::clear_rollback_style(TSD::PasteStyleCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::PasteStyleCommandArchive *TSD::PasteStyleCommandArchive::PasteStyleCommandArchive(TSD::PasteStyleCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B8D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PasteStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_28857B8D8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PasteStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::PasteStyleCommandArchive *TSD::PasteStyleCommandArchive::PasteStyleCommandArchive(TSD::PasteStyleCommandArchive *this, const TSD::PasteStyleCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B8D8;
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
  *(this + 48) = *(a2 + 48);
  return this;
}

void TSD::PasteStyleCommandArchive::~PasteStyleCommandArchive(TSD::PasteStyleCommandArchive *this)
{
  if (this != &TSD::_PasteStyleCommandArchive_default_instance_)
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
  TSD::PasteStyleCommandArchive::~PasteStyleCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::PasteStyleCommandArchive::default_instance(TSD::PasteStyleCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_PasteStyleCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_PasteStyleCommandArchive_default_instance_;
}

uint64_t *TSD::PasteStyleCommandArchive::Clear(uint64_t *this)
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
  *(v3 + 40) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::PasteStyleCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v28) & 1) == 0)
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
        goto LABEL_53;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
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

              v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::AbstractStyleCommandArchive>(v19);
              *(a1 + 24) = v18;
              v7 = v28;
            }

            v17 = sub_27680F180(a3, v18, v7);
            goto LABEL_45;
          }
        }

        else if (v10 == 2 && v8 == 18)
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

            v14 = MEMORY[0x277C9BB20](v13);
            LODWORD(v12) = v14;
            *(a1 + 32) = v14;
            goto LABEL_25;
          }

          goto LABEL_26;
        }

        goto LABEL_38;
      }

      if (v10 != 4)
      {
        if (v10 == 5 && v8 == 42)
        {
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
LABEL_25:
            v7 = v28;
          }

LABEL_26:
          v17 = sub_27680B6EC(a3, v12, v7);
LABEL_45:
          v28 = v17;
          if (!v17)
          {
            goto LABEL_53;
          }

          goto LABEL_46;
        }

LABEL_38:
        if (v8)
        {
          v23 = (v8 & 7) == 4;
        }

        else
        {
          v23 = 1;
        }

        if (v23)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v17 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_45;
      }

      if (v8 != 32)
      {
        goto LABEL_38;
      }

      v5 |= 8u;
      v21 = (v7 + 1);
      v20 = *v7;
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      v22 = *v21;
      v20 = (v22 << 7) + v20 - 128;
      if ((v22 & 0x80000000) == 0)
      {
        v21 = (v7 + 2);
LABEL_37:
        v28 = v21;
        *(a1 + 48) = v20 != 0;
        goto LABEL_46;
      }

      v26 = google::protobuf::internal::VarintParseSlow64(v7, v20);
      v28 = v26;
      *(a1 + 48) = v27 != 0;
      if (!v26)
      {
LABEL_53:
        v28 = 0;
        goto LABEL_2;
      }

LABEL_46:
      if (sub_27670AF08(a3, &v28))
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

unsigned __int8 *TSD::PasteStyleCommandArchive::_InternalSerialize(TSD::PasteStyleCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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
      if ((v6 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
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
  if ((v6 & 8) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 48);
  *a2 = 32;
  a2[1] = v19;
  a2 += 2;
  if ((v6 & 4) != 0)
  {
LABEL_29:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v20 = *(this + 5);
    *a2 = 42;
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

LABEL_39:
  v26 = *(this + 1);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v26 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::PasteStyleCommandArchive::ByteSizeLong(TSD::PasteStyleCommandArchive *this)
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

  if ((v2 & 0xE) != 0)
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

    v3 += (v2 >> 2) & 2;
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

uint64_t TSD::PasteStyleCommandArchive::MergeFrom(TSD::PasteStyleCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::PasteStyleCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::PasteStyleCommandArchive::MergeFrom(uint64_t this, const TSD::PasteStyleCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
        *(v3 + 48) = *(a2 + 48);
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

    this = TSP::Reference::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  return this;
}

uint64_t *TSD::PasteStyleCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PasteStyleCommandArchive::Clear(this);

    return TSD::PasteStyleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::PasteStyleCommandArchive::CopyFrom(uint64_t *this, const TSD::PasteStyleCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PasteStyleCommandArchive::Clear(this);

    return TSD::PasteStyleCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::PasteStyleCommandArchive::IsInitialized(TSD::PasteStyleCommandArchive *this)
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

__n128 TSD::PasteStyleCommandArchive::InternalSwap(TSD::PasteStyleCommandArchive *this, TSD::PasteStyleCommandArchive *a2)
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
  LOBYTE(v8) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v8;
  return result;
}

uint64_t *TSD::ImageInfoAbstractGeometryCommandArchive::clear_new_image_geometry(TSD::ImageInfoAbstractGeometryCommandArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSD::GeometryArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

uint64_t *TSD::ImageInfoAbstractGeometryCommandArchive::clear_old_image_geometry(TSD::ImageInfoAbstractGeometryCommandArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSD::GeometryArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

uint64_t *TSD::ImageInfoAbstractGeometryCommandArchive::clear_new_mask_geometry(TSD::ImageInfoAbstractGeometryCommandArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSD::GeometryArchive::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

uint64_t *TSD::ImageInfoAbstractGeometryCommandArchive::clear_old_mask_geometry(TSD::ImageInfoAbstractGeometryCommandArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSD::GeometryArchive::Clear(result);
  }

  *(this + 4) &= ~0x10u;
  return result;
}

uint64_t *TSD::ImageInfoAbstractGeometryCommandArchive::clear_new_mask_path_source(TSD::ImageInfoAbstractGeometryCommandArchive *this)
{
  result = *(this + 8);
  if (result)
  {
    result = TSD::PathSourceArchive::Clear(result);
  }

  *(this + 4) &= ~0x20u;
  return result;
}

uint64_t *TSD::ImageInfoAbstractGeometryCommandArchive::clear_old_mask_path_source(TSD::ImageInfoAbstractGeometryCommandArchive *this)
{
  result = *(this + 9);
  if (result)
  {
    result = TSD::PathSourceArchive::Clear(result);
  }

  *(this + 4) &= ~0x40u;
  return result;
}

TSP::Size *TSD::ImageInfoAbstractGeometryCommandArchive::clear_new_image_original_size(TSD::ImageInfoAbstractGeometryCommandArchive *this)
{
  result = *(this + 10);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x80u;
  return result;
}

TSP::Size *TSD::ImageInfoAbstractGeometryCommandArchive::clear_old_image_original_size(TSD::ImageInfoAbstractGeometryCommandArchive *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~0x100u;
  return result;
}

TSD::ImageInfoAbstractGeometryCommandArchive *TSD::ImageInfoAbstractGeometryCommandArchive::ImageInfoAbstractGeometryCommandArchive(TSD::ImageInfoAbstractGeometryCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857B988;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageInfoAbstractGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 82) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_28857B988;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageInfoAbstractGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 82) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSD::ImageInfoAbstractGeometryCommandArchive *TSD::ImageInfoAbstractGeometryCommandArchive::ImageInfoAbstractGeometryCommandArchive(TSD::ImageInfoAbstractGeometryCommandArchive *this, const TSD::ImageInfoAbstractGeometryCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857B988;
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
  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 8) = 0;
  if ((v5 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 9) = 0;
  if ((v5 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 10) = 0;
  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 11) = 0;
  *(this + 48) = *(a2 + 48);
  return this;
}

void TSD::ImageInfoAbstractGeometryCommandArchive::~ImageInfoAbstractGeometryCommandArchive(TSD::ImageInfoAbstractGeometryCommandArchive *this)
{
  sub_2767F4470(this);
  sub_2766FFE58(this + 1);
}

{
  TSD::ImageInfoAbstractGeometryCommandArchive::~ImageInfoAbstractGeometryCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *sub_2767F4470(uint64_t *result)
{
  if (result != &TSD::_ImageInfoAbstractGeometryCommandArchive_default_instance_)
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
      TSD::GeometryArchive::~GeometryArchive(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSD::GeometryArchive::~GeometryArchive(v4);
      MEMORY[0x277C9C1D0]();
    }

    v5 = v1[6];
    if (v5)
    {
      TSD::GeometryArchive::~GeometryArchive(v5);
      MEMORY[0x277C9C1D0]();
    }

    v6 = v1[7];
    if (v6)
    {
      TSD::GeometryArchive::~GeometryArchive(v6);
      MEMORY[0x277C9C1D0]();
    }

    v7 = v1[8];
    if (v7)
    {
      TSD::PathSourceArchive::~PathSourceArchive(v7);
      MEMORY[0x277C9C1D0]();
    }

    v8 = v1[9];
    if (v8)
    {
      TSD::PathSourceArchive::~PathSourceArchive(v8);
      MEMORY[0x277C9C1D0]();
    }

    v9 = v1[10];
    if (v9)
    {
      TSP::Size::~Size(v9);
      MEMORY[0x277C9C1D0]();
    }

    result = v1[11];
    if (result)
    {
      TSP::Size::~Size(result);

      JUMPOUT(0x277C9C1D0);
    }
  }

  return result;
}

uint64_t *TSD::ImageInfoAbstractGeometryCommandArchive::default_instance(TSD::ImageInfoAbstractGeometryCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageInfoAbstractGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageInfoAbstractGeometryCommandArchive_default_instance_;
}

uint64_t *TSD::ImageInfoAbstractGeometryCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (!v2)
  {
    goto LABEL_11;
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

      goto LABEL_19;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  this = TSD::GeometryArchive::Clear(*(v1 + 32));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = TSD::GeometryArchive::Clear(*(v1 + 40));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = TSD::GeometryArchive::Clear(*(v1 + 48));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    this = TSD::PathSourceArchive::Clear(*(v1 + 64));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = TSD::GeometryArchive::Clear(*(v1 + 56));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_23:
  this = TSD::PathSourceArchive::Clear(*(v1 + 72));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    this = TSP::Size::Clear(*(v1 + 80));
  }

LABEL_11:
  if ((v2 & 0x100) != 0)
  {
    this = TSP::Size::Clear(*(v1 + 88));
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 88) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ImageInfoAbstractGeometryCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
        goto LABEL_103;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 <= 2)
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

                v23 = google::protobuf::Arena::CreateMaybeMessage<TSD::InfoCommandArchive>(v24);
                *(a1 + 24) = v23;
                v7 = v41;
              }

              v25 = sub_27680EFE0(a3, v23, v7);
              goto LABEL_95;
            }

            goto LABEL_88;
          }

          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 2u;
          v14 = *(a1 + 32);
          if (v14)
          {
            goto LABEL_73;
          }

          v20 = *(a1 + 8);
          if (v20)
          {
            v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v20);
          *(a1 + 32) = v14;
        }

        else if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 4u;
          v14 = *(a1 + 40);
          if (v14)
          {
            goto LABEL_73;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v32);
          *(a1 + 40) = v14;
        }

        else
        {
          if (v10 != 4)
          {
            if (v10 != 5 || v8 != 42)
            {
              goto LABEL_88;
            }

            *(a1 + 16) |= 0x10u;
            v14 = *(a1 + 56);
            if (!v14)
            {
              v15 = *(a1 + 8);
              if (v15)
              {
                v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
              }

              v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v15);
              *(a1 + 56) = v14;
              goto LABEL_72;
            }

LABEL_73:
            v25 = sub_27680C4A8(a3, v14, v7);
            goto LABEL_95;
          }

          if (v8 != 34)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 8u;
          v14 = *(a1 + 48);
          if (v14)
          {
            goto LABEL_73;
          }

          v26 = *(a1 + 8);
          if (v26)
          {
            v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v26);
          *(a1 + 48) = v14;
        }

LABEL_72:
        v7 = v41;
        goto LABEL_73;
      }

      if (v8 >> 3 <= 8)
      {
        if (v10 == 6)
        {
          if (v8 != 50)
          {
            goto LABEL_88;
          }

          *(a1 + 16) |= 0x20u;
          v27 = *(a1 + 64);
          if (!v27)
          {
            v33 = *(a1 + 8);
            if (v33)
            {
              v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v33);
            *(a1 + 64) = v27;
LABEL_79:
            v7 = v41;
          }

LABEL_80:
          v25 = sub_27680C7E8(a3, v27, v7);
          goto LABEL_95;
        }

        if (v10 != 7)
        {
          if (v10 == 8 && v8 == 66)
          {
            *(a1 + 16) |= 0x80u;
            v11 = *(a1 + 80);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v13 = MEMORY[0x277C9BAD0](v12);
              LODWORD(v11) = v13;
              *(a1 + 80) = v13;
              goto LABEL_86;
            }

            goto LABEL_87;
          }

          goto LABEL_88;
        }

        if (v8 == 58)
        {
          *(a1 + 16) |= 0x40u;
          v27 = *(a1 + 72);
          if (!v27)
          {
            v28 = *(a1 + 8);
            if (v28)
            {
              v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
            }

            v27 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v28);
            *(a1 + 72) = v27;
            goto LABEL_79;
          }

          goto LABEL_80;
        }

LABEL_88:
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
          sub_27670AF80((a1 + 8));
        }

        v25 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_95;
      }

      if (v10 == 9)
      {
        if (v8 == 74)
        {
          *(a1 + 16) |= 0x100u;
          v11 = *(a1 + 88);
          if (!v11)
          {
            v34 = *(a1 + 8);
            if (v34)
            {
              v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
            }

            v35 = MEMORY[0x277C9BAD0](v34);
            LODWORD(v11) = v35;
            *(a1 + 88) = v35;
LABEL_86:
            v7 = v41;
          }

LABEL_87:
          v25 = sub_27680AB8C(a3, v11, v7);
LABEL_95:
          v41 = v25;
          if (!v25)
          {
            goto LABEL_103;
          }

          goto LABEL_96;
        }

        goto LABEL_88;
      }

      if (v10 == 10)
      {
        if (v8 != 80)
        {
          goto LABEL_88;
        }

        v5 |= 0x200u;
        v30 = (v7 + 1);
        v29 = *v7;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_66;
        }

        v31 = *v30;
        v29 = (v31 << 7) + v29 - 128;
        if ((v31 & 0x80000000) == 0)
        {
          v30 = (v7 + 2);
LABEL_66:
          v41 = v30;
          *(a1 + 96) = v29 != 0;
          goto LABEL_96;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v29);
        v41 = v37;
        *(a1 + 96) = v38 != 0;
        if (!v37)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v10 != 11 || v8 != 88)
        {
          goto LABEL_88;
        }

        v5 |= 0x400u;
        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v18 = *v17;
        v16 = (v18 << 7) + v16 - 128;
        if ((v18 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_33:
          v41 = v17;
          *(a1 + 97) = v16 != 0;
          goto LABEL_96;
        }

        v39 = google::protobuf::internal::VarintParseSlow64(v7, v16);
        v41 = v39;
        *(a1 + 97) = v40 != 0;
        if (!v39)
        {
LABEL_103:
          v41 = 0;
          goto LABEL_2;
        }
      }

LABEL_96:
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

unsigned __int8 *TSD::ImageInfoAbstractGeometryCommandArchive::_InternalSerialize(TSD::ImageInfoAbstractGeometryCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

      goto LABEL_33;
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

    goto LABEL_43;
  }

LABEL_33:
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

    goto LABEL_53;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(this + 6);
  *a2 = 34;
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

  a2 = TSD::GeometryArchive::_InternalSerialize(v25, v27, a3, a4);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_63;
  }

LABEL_53:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(this + 7);
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

  a2 = TSD::GeometryArchive::_InternalSerialize(v31, v33, a3, a4);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_73;
  }

LABEL_63:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v37 = *(this + 8);
  *a2 = 50;
  v38 = *(v37 + 5);
  if (v38 > 0x7F)
  {
    a2[1] = v38 | 0x80;
    v40 = v38 >> 7;
    if (v38 >> 14)
    {
      v39 = a2 + 3;
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
      a2[2] = v40;
      v39 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v38;
    v39 = a2 + 2;
  }

  a2 = TSD::PathSourceArchive::_InternalSerialize(v37, v39, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_83;
  }

LABEL_73:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v43 = *(this + 9);
  *a2 = 58;
  v44 = *(v43 + 5);
  if (v44 > 0x7F)
  {
    a2[1] = v44 | 0x80;
    v46 = v44 >> 7;
    if (v44 >> 14)
    {
      v45 = a2 + 3;
      do
      {
        *(v45 - 1) = v46 | 0x80;
        v47 = v46 >> 7;
        ++v45;
        v48 = v46 >> 14;
        v46 >>= 7;
      }

      while (v48);
      *(v45 - 1) = v47;
    }

    else
    {
      a2[2] = v46;
      v45 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v44;
    v45 = a2 + 2;
  }

  a2 = TSD::PathSourceArchive::_InternalSerialize(v43, v45, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_93;
  }

LABEL_83:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v49 = *(this + 10);
  *a2 = 66;
  v50 = *(v49 + 5);
  if (v50 > 0x7F)
  {
    a2[1] = v50 | 0x80;
    v52 = v50 >> 7;
    if (v50 >> 14)
    {
      v51 = a2 + 3;
      do
      {
        *(v51 - 1) = v52 | 0x80;
        v53 = v52 >> 7;
        ++v51;
        v54 = v52 >> 14;
        v52 >>= 7;
      }

      while (v54);
      *(v51 - 1) = v53;
    }

    else
    {
      a2[2] = v52;
      v51 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v50;
    v51 = a2 + 2;
  }

  a2 = TSP::Size::_InternalSerialize(v49, v51, a3);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_103;
  }

LABEL_93:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v55 = *(this + 11);
  *a2 = 74;
  v56 = *(v55 + 5);
  if (v56 > 0x7F)
  {
    a2[1] = v56 | 0x80;
    v58 = v56 >> 7;
    if (v56 >> 14)
    {
      v57 = a2 + 3;
      do
      {
        *(v57 - 1) = v58 | 0x80;
        v59 = v58 >> 7;
        ++v57;
        v60 = v58 >> 14;
        v58 >>= 7;
      }

      while (v60);
      *(v57 - 1) = v59;
    }

    else
    {
      a2[2] = v58;
      v57 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v56;
    v57 = a2 + 2;
  }

  a2 = TSP::Size::_InternalSerialize(v55, v57, a3);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_106;
  }

LABEL_103:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v61 = *(this + 96);
  *a2 = 80;
  a2[1] = v61;
  a2 += 2;
  if ((v6 & 0x400) != 0)
  {
LABEL_106:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v62 = *(this + 97);
    *a2 = 88;
    a2[1] = v62;
    a2 += 2;
  }

LABEL_109:
  v63 = *(this + 1);
  if ((v63 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v63 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ImageInfoAbstractGeometryCommandArchive::ByteSizeLong(TSD::ImageInfoAbstractGeometryCommandArchive *this)
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

  if ((v2 & 0xFE) == 0)
  {
    goto LABEL_13;
  }

  if ((v2 & 2) != 0)
  {
    v8 = TSD::GeometryArchive::ByteSizeLong(*(this + 4));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
LABEL_7:
      if ((v2 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_7;
  }

  v9 = TSD::GeometryArchive::ByteSizeLong(*(this + 5));
  v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 8) == 0)
  {
LABEL_8:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = TSD::GeometryArchive::ByteSizeLong(*(this + 6));
  v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_23:
    v12 = TSD::PathSourceArchive::ByteSizeLong(*(this + 8));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
LABEL_11:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_22:
  v11 = TSD::GeometryArchive::ByteSizeLong(*(this + 7));
  v3 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_24:
  v13 = TSD::PathSourceArchive::ByteSizeLong(*(this + 9));
  v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_12:
    v5 = TSP::Size::ByteSizeLong(*(this + 10));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  if ((v2 & 0x700) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v6 = TSP::Size::ByteSizeLong(*(this + 11));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += ((v2 >> 9) & 2) + ((v2 >> 8) & 2);
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

uint64_t TSD::ImageInfoAbstractGeometryCommandArchive::MergeFrom(TSD::ImageInfoAbstractGeometryCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageInfoAbstractGeometryCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageInfoAbstractGeometryCommandArchive::MergeFrom(uint64_t this, const TSD::ImageInfoAbstractGeometryCommandArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (!v5)
  {
    goto LABEL_78;
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

LABEL_34:
      *(v3 + 16) |= 8u;
      v15 = *(v3 + 48);
      if (!v15)
      {
        v16 = *(v3 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v16);
        *(v3 + 48) = v15;
      }

      if (*(a2 + 6))
      {
        v17 = *(a2 + 6);
      }

      else
      {
        v17 = &TSD::_GeometryArchive_default_instance_;
      }

      this = TSD::GeometryArchive::MergeFrom(v15, v17);
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_42;
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
  if ((v5 & 8) != 0)
  {
    goto LABEL_34;
  }

LABEL_16:
  if ((v5 & 0x10) != 0)
  {
LABEL_42:
    *(v3 + 16) |= 0x10u;
    v18 = *(v3 + 56);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = google::protobuf::Arena::CreateMaybeMessage<TSD::GeometryArchive>(v19);
      *(v3 + 56) = v18;
    }

    if (*(a2 + 7))
    {
      v20 = *(a2 + 7);
    }

    else
    {
      v20 = &TSD::_GeometryArchive_default_instance_;
    }

    this = TSD::GeometryArchive::MergeFrom(v18, v20);
  }

LABEL_50:
  if ((v5 & 0x20) != 0)
  {
    *(v3 + 16) |= 0x20u;
    v21 = *(v3 + 64);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v22);
      *(v3 + 64) = v21;
    }

    if (*(a2 + 8))
    {
      v23 = *(a2 + 8);
    }

    else
    {
      v23 = &TSD::_PathSourceArchive_default_instance_;
    }

    this = TSD::PathSourceArchive::MergeFrom(v21, v23);
    if ((v5 & 0x40) == 0)
    {
LABEL_52:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_70;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_52;
  }

  *(v3 + 16) |= 0x40u;
  v24 = *(v3 + 72);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = google::protobuf::Arena::CreateMaybeMessage<TSD::PathSourceArchive>(v25);
    *(v3 + 72) = v24;
  }

  if (*(a2 + 9))
  {
    v26 = *(a2 + 9);
  }

  else
  {
    v26 = &TSD::_PathSourceArchive_default_instance_;
  }

  this = TSD::PathSourceArchive::MergeFrom(v24, v26);
  if ((v5 & 0x80) != 0)
  {
LABEL_70:
    *(v3 + 16) |= 0x80u;
    v27 = *(v3 + 80);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C9BAD0](v28);
      *(v3 + 80) = v27;
    }

    if (*(a2 + 10))
    {
      v29 = *(a2 + 10);
    }

    else
    {
      v29 = MEMORY[0x277D809D8];
    }

    this = TSP::Size::MergeFrom(v27, v29);
  }

LABEL_78:
  if ((v5 & 0x700) == 0)
  {
    return this;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_81;
    }

LABEL_93:
    *(v3 + 96) = *(a2 + 96);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  *(v3 + 16) |= 0x100u;
  v30 = *(v3 + 88);
  if (!v30)
  {
    v31 = *(v3 + 8);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = MEMORY[0x277C9BAD0](v31);
    *(v3 + 88) = v30;
  }

  if (*(a2 + 11))
  {
    v32 = *(a2 + 11);
  }

  else
  {
    v32 = MEMORY[0x277D809D8];
  }

  this = TSP::Size::MergeFrom(v30, v32);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_93;
  }

LABEL_81:
  if ((v5 & 0x400) != 0)
  {
LABEL_82:
    *(v3 + 97) = *(a2 + 97);
  }

LABEL_83:
  *(v3 + 16) |= v5;
  return this;
}

uint64_t *TSD::ImageInfoAbstractGeometryCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageInfoAbstractGeometryCommandArchive::Clear(this);

    return TSD::ImageInfoAbstractGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ImageInfoAbstractGeometryCommandArchive::CopyFrom(uint64_t *this, const TSD::ImageInfoAbstractGeometryCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageInfoAbstractGeometryCommandArchive::Clear(this);

    return TSD::ImageInfoAbstractGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageInfoAbstractGeometryCommandArchive::IsInitialized(TSD::ImageInfoAbstractGeometryCommandArchive *this)
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

    if ((v3 & 4) != 0)
    {
      result = TSD::GeometryArchive::IsInitialized(*(this + 5));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 8) != 0)
    {
      result = TSD::GeometryArchive::IsInitialized(*(this + 6));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x10) != 0)
    {
      result = TSD::GeometryArchive::IsInitialized(*(this + 7));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x20) != 0)
    {
      result = TSD::PathSourceArchive::IsInitialized(*(this + 8));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x40) != 0)
    {
      result = TSD::PathSourceArchive::IsInitialized(*(this + 9));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x80) != 0)
    {
      result = TSP::Size::IsInitialized(*(this + 10));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 0x100) == 0)
    {
      return 1;
    }

    result = TSP::Size::IsInitialized(*(this + 11));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::ImageInfoAbstractGeometryCommandArchive::InternalSwap(TSD::ImageInfoAbstractGeometryCommandArchive *this, TSD::ImageInfoAbstractGeometryCommandArchive *a2)
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
  LOWORD(v14) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v14;
  return result;
}

TSD::ImageInfoGeometryCommandArchive *TSD::ImageInfoGeometryCommandArchive::ImageInfoGeometryCommandArchive(TSD::ImageInfoGeometryCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857BA38;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageInfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857BA38;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageInfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::ImageInfoGeometryCommandArchive *TSD::ImageInfoGeometryCommandArchive::ImageInfoGeometryCommandArchive(TSD::ImageInfoGeometryCommandArchive *this, const TSD::ImageInfoGeometryCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857BA38;
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

void TSD::ImageInfoGeometryCommandArchive::~ImageInfoGeometryCommandArchive(TSD::ImageInfoGeometryCommandArchive *this)
{
  if (this != &TSD::_ImageInfoGeometryCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::ImageInfoAbstractGeometryCommandArchive::~ImageInfoAbstractGeometryCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ImageInfoGeometryCommandArchive::~ImageInfoGeometryCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ImageInfoGeometryCommandArchive::default_instance(TSD::ImageInfoGeometryCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageInfoGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageInfoGeometryCommandArchive_default_instance_;
}

uint64_t *TSD::ImageInfoGeometryCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::ImageInfoAbstractGeometryCommandArchive::Clear(this[3]);
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

google::protobuf::internal *TSD::ImageInfoGeometryCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageInfoAbstractGeometryCommandArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_27680FA70(a3, v10, v5);
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

unsigned __int8 *TSD::ImageInfoGeometryCommandArchive::_InternalSerialize(TSD::ImageInfoGeometryCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::ImageInfoAbstractGeometryCommandArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ImageInfoGeometryCommandArchive::ByteSizeLong(TSD::ImageInfoAbstractGeometryCommandArchive **this)
{
  if (this[2])
  {
    v3 = TSD::ImageInfoAbstractGeometryCommandArchive::ByteSizeLong(this[3]);
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

uint64_t TSD::ImageInfoGeometryCommandArchive::MergeFrom(TSD::ImageInfoGeometryCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageInfoGeometryCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageInfoGeometryCommandArchive::MergeFrom(uint64_t this, const TSD::ImageInfoGeometryCommandArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageInfoAbstractGeometryCommandArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSD::_ImageInfoAbstractGeometryCommandArchive_default_instance_;
    }

    return TSD::ImageInfoAbstractGeometryCommandArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::ImageInfoGeometryCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageInfoGeometryCommandArchive::Clear(this);

    return TSD::ImageInfoGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ImageInfoGeometryCommandArchive::CopyFrom(uint64_t *this, const TSD::ImageInfoGeometryCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageInfoGeometryCommandArchive::Clear(this);

    return TSD::ImageInfoGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageInfoGeometryCommandArchive::IsInitialized(TSD::ImageInfoAbstractGeometryCommandArchive **this)
{
  if (this[2])
  {
    return TSD::ImageInfoAbstractGeometryCommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::ImageInfoGeometryCommandArchive::InternalSwap(TSD::ImageInfoGeometryCommandArchive *this, TSD::ImageInfoGeometryCommandArchive *a2)
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

TSD::ImageInfoMaskGeometryCommandArchive *TSD::ImageInfoMaskGeometryCommandArchive::ImageInfoMaskGeometryCommandArchive(TSD::ImageInfoMaskGeometryCommandArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857BAE8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageInfoMaskGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_28857BAE8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ImageInfoMaskGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  return this;
}

TSD::ImageInfoMaskGeometryCommandArchive *TSD::ImageInfoMaskGeometryCommandArchive::ImageInfoMaskGeometryCommandArchive(TSD::ImageInfoMaskGeometryCommandArchive *this, const TSD::ImageInfoMaskGeometryCommandArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_28857BAE8;
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

void TSD::ImageInfoMaskGeometryCommandArchive::~ImageInfoMaskGeometryCommandArchive(TSD::ImageInfoMaskGeometryCommandArchive *this)
{
  if (this != &TSD::_ImageInfoMaskGeometryCommandArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::ImageInfoAbstractGeometryCommandArchive::~ImageInfoAbstractGeometryCommandArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ImageInfoMaskGeometryCommandArchive::~ImageInfoMaskGeometryCommandArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ImageInfoMaskGeometryCommandArchive::default_instance(TSD::ImageInfoMaskGeometryCommandArchive *this)
{
  if (atomic_load_explicit(scc_info_ImageInfoMaskGeometryCommandArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ImageInfoMaskGeometryCommandArchive_default_instance_;
}

uint64_t *TSD::ImageInfoMaskGeometryCommandArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSD::ImageInfoAbstractGeometryCommandArchive::Clear(this[3]);
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

google::protobuf::internal *TSD::ImageInfoMaskGeometryCommandArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageInfoAbstractGeometryCommandArchive>(v11);
        *(a1 + 24) = v10;
        v5 = v15;
      }

      v9 = sub_27680FA70(a3, v10, v5);
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

unsigned __int8 *TSD::ImageInfoMaskGeometryCommandArchive::_InternalSerialize(TSD::ImageInfoMaskGeometryCommandArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
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

    a2 = TSD::ImageInfoAbstractGeometryCommandArchive::_InternalSerialize(v6, v8, a3, a4);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v12 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ImageInfoMaskGeometryCommandArchive::ByteSizeLong(TSD::ImageInfoAbstractGeometryCommandArchive **this)
{
  if (this[2])
  {
    v3 = TSD::ImageInfoAbstractGeometryCommandArchive::ByteSizeLong(this[3]);
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

uint64_t TSD::ImageInfoMaskGeometryCommandArchive::MergeFrom(TSD::ImageInfoMaskGeometryCommandArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ImageInfoMaskGeometryCommandArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ImageInfoMaskGeometryCommandArchive::MergeFrom(uint64_t this, const TSD::ImageInfoMaskGeometryCommandArchive *a2)
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

      v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::ImageInfoAbstractGeometryCommandArchive>(v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = &TSD::_ImageInfoAbstractGeometryCommandArchive_default_instance_;
    }

    return TSD::ImageInfoAbstractGeometryCommandArchive::MergeFrom(v6, v8);
  }

  return this;
}

uint64_t *TSD::ImageInfoMaskGeometryCommandArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageInfoMaskGeometryCommandArchive::Clear(this);

    return TSD::ImageInfoMaskGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ImageInfoMaskGeometryCommandArchive::CopyFrom(uint64_t *this, const TSD::ImageInfoMaskGeometryCommandArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ImageInfoMaskGeometryCommandArchive::Clear(this);

    return TSD::ImageInfoMaskGeometryCommandArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ImageInfoMaskGeometryCommandArchive::IsInitialized(TSD::ImageInfoAbstractGeometryCommandArchive **this)
{
  if (this[2])
  {
    return TSD::ImageInfoAbstractGeometryCommandArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

uint64_t *TSD::ImageInfoMaskGeometryCommandArchive::InternalSwap(TSD::ImageInfoMaskGeometryCommandArchive *this, TSD::ImageInfoMaskGeometryCommandArchive *a2)
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

uint64_t TSD::InfoCollectionSelectionTransformerHelperArchive::clear_info_uuid_path_list(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 32) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDPath::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 24) = 0;
  }

  return this;
}

TSD::InfoCollectionSelectionTransformerHelperArchive *TSD::InfoCollectionSelectionTransformerHelperArchive::InfoCollectionSelectionTransformerHelperArchive(TSD::InfoCollectionSelectionTransformerHelperArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_28857BB98;
  *(this + 1) = a2;
  *(this + 2) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  if (atomic_load_explicit(scc_info_InfoCollectionSelectionTransformerHelperArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

TSD::InfoCollectionSelectionTransformerHelperArchive *TSD::InfoCollectionSelectionTransformerHelperArchive::InfoCollectionSelectionTransformerHelperArchive(TSD::InfoCollectionSelectionTransformerHelperArchive *this, const TSD::InfoCollectionSelectionTransformerHelperArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_28857BB98;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2768029EC(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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

void TSD::InfoCollectionSelectionTransformerHelperArchive::~InfoCollectionSelectionTransformerHelperArchive(TSD::InfoCollectionSelectionTransformerHelperArchive *this)
{
  sub_2766FFE58(this + 1);
  sub_276802968(this + 2);
}

{
  TSD::InfoCollectionSelectionTransformerHelperArchive::~InfoCollectionSelectionTransformerHelperArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::InfoCollectionSelectionTransformerHelperArchive::default_instance(TSD::InfoCollectionSelectionTransformerHelperArchive *this)
{
  if (atomic_load_explicit(scc_info_InfoCollectionSelectionTransformerHelperArchive_TSDCommandArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_InfoCollectionSelectionTransformerHelperArchive_default_instance_;
}

uint64_t *TSD::InfoCollectionSelectionTransformerHelperArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSP::UUIDPath::Clear(v4);
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

google::protobuf::internal *TSD::InfoCollectionSelectionTransformerHelperArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  if ((sub_27670AF08(a3, &v21) & 1) == 0)
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
          v13 = MEMORY[0x277C9BB10](*(a1 + 16));
          LODWORD(v14) = v13;
          v15 = *(a1 + 24);
          v16 = *(a1 + 32) + 8 * v15;
          *(a1 + 24) = v15 + 1;
          *(v16 + 8) = v13;
          v10 = v21;
LABEL_22:
          v9 = sub_27680EB00(a3, v14, v10);
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
        sub_27670AF80((a1 + 8));
      }

      v21 = google::protobuf::internal::UnknownFieldParse();
      if (!v21)
      {
        return 0;
      }

LABEL_14:
      if (sub_27670AF08(a3, &v21))
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