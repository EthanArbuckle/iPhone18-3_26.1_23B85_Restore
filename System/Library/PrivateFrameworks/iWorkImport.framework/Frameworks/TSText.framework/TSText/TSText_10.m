void TSWP::ShapeStyleArchive::CopyFrom(TSWP::ShapeStyleArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWP::ShapeStyleArchive::Clear(this);

    TSWP::ShapeStyleArchive::MergeFrom(this, a2);
  }
}

void TSWP::ShapeStyleArchive::CopyFrom(TSWP::ShapeStyleArchive *this, const TSWP::ShapeStyleArchive *a2)
{
  if (a2 != this)
  {
    TSWP::ShapeStyleArchive::Clear(this);

    TSWP::ShapeStyleArchive::MergeFrom(this, a2);
  }
}

uint64_t TSWP::ShapeStyleArchive::IsInitialized(TSWP::ShapeStyleArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSD::ShapeStyleArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSWP::ShapeStylePropertiesArchive::IsInitialized(*(this + 4));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWP::ShapeStyleArchive::InternalSwap(TSWP::ShapeStyleArchive *this, TSWP::ShapeStyleArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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

uint64_t TSWP::ThemePresetsArchive::clear_list_style_presets(uint64_t this)
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

uint64_t TSWP::ThemePresetsArchive::clear_text_style_presets(uint64_t this)
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

uint64_t TSWP::ThemePresetsArchive::clear_imported_text_style_presets(uint64_t this)
{
  v1 = *(this + 72);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 80) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 72) = 0;
  }

  return this;
}

uint64_t TSWP::ThemePresetsArchive::clear_toc_entry_style_presets(uint64_t this)
{
  v1 = *(this + 96);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 104) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 96) = 0;
  }

  return this;
}

uint64_t TSWP::ThemePresetsArchive::clear_toc_settings_presets(uint64_t this)
{
  v1 = *(this + 120);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 128) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 120) = 0;
  }

  return this;
}

uint64_t TSWP::ThemePresetsArchive::clear_character_style_presets(uint64_t this)
{
  v1 = *(this + 144);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 152) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 144) = 0;
  }

  return this;
}

uint64_t TSWP::ThemePresetsArchive::clear_paragraph_style_presets(uint64_t this)
{
  v1 = *(this + 168);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 176) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 168) = 0;
  }

  return this;
}

uint64_t TSWP::ThemePresetsArchive::clear_dropcap_style_presets(uint64_t this)
{
  v1 = *(this + 192);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 200) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 192) = 0;
  }

  return this;
}

TSWP::ThemePresetsArchive *TSWP::ThemePresetsArchive::ThemePresetsArchive(TSWP::ThemePresetsArchive *this, google::protobuf::Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_288601390;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = a2;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = a2;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = a2;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = a2;
  *(this + 23) = a2;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = a2;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_276E6F570(_Unwind_Exception *a1)
{
  sub_276EA5ECC(v8);
  sub_276EA5ECC(v7);
  sub_276EA5ECC(v6);
  sub_276EA5ECC(v5);
  sub_276EA5ECC(v4);
  sub_276EA5ECC(v3);
  sub_276EA5ECC(v2);
  sub_276EA5ECC(v1);
  _Unwind_Resume(a1);
}

TSWP::ThemePresetsArchive *TSWP::ThemePresetsArchive::ThemePresetsArchive(TSWP::ThemePresetsArchive *this, const TSWP::ThemePresetsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288601390;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_276EA5F50(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_276EA5F50(this + 40, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
    v14 = *(this + 12) + v11;
    *(this + 12) = v14;
    v15 = *(this + 7);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v16 = *(a2 + 18);
  if (v16)
  {
    v17 = *(a2 + 10);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 64));
    sub_276EA5F50(this + 64, v18, (v17 + 8), v16, **(this + 10) - *(this + 18));
    v19 = *(this + 18) + v16;
    *(this + 18) = v19;
    v20 = *(this + 10);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v21 = *(a2 + 24);
  if (v21)
  {
    v22 = *(a2 + 13);
    v23 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 88));
    sub_276EA5F50(this + 88, v23, (v22 + 8), v21, **(this + 13) - *(this + 24));
    v24 = *(this + 24) + v21;
    *(this + 24) = v24;
    v25 = *(this + 13);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v26 = *(a2 + 30);
  if (v26)
  {
    v27 = *(a2 + 16);
    v28 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 112));
    sub_276EA5F50(this + 112, v28, (v27 + 8), v26, **(this + 16) - *(this + 30));
    v29 = *(this + 30) + v26;
    *(this + 30) = v29;
    v30 = *(this + 16);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v31 = *(a2 + 36);
  if (v31)
  {
    v32 = *(a2 + 19);
    v33 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 136));
    sub_276EA5F50(this + 136, v33, (v32 + 8), v31, **(this + 19) - *(this + 36));
    v34 = *(this + 36) + v31;
    *(this + 36) = v34;
    v35 = *(this + 19);
    if (*v35 < v34)
    {
      *v35 = v34;
    }
  }

  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  v36 = *(a2 + 42);
  if (v36)
  {
    v37 = *(a2 + 22);
    v38 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 160));
    sub_276EA5F50(this + 160, v38, (v37 + 8), v36, **(this + 22) - *(this + 42));
    v39 = *(this + 42) + v36;
    *(this + 42) = v39;
    v40 = *(this + 22);
    if (*v40 < v39)
    {
      *v40 = v39;
    }
  }

  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  v41 = *(a2 + 48);
  if (v41)
  {
    v42 = *(a2 + 25);
    v43 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 184));
    sub_276EA5F50(this + 184, v43, (v42 + 8), v41, **(this + 25) - *(this + 48));
    v44 = *(this + 48) + v41;
    *(this + 48) = v44;
    v45 = *(this + 25);
    if (*v45 < v44)
    {
      *v45 = v44;
    }
  }

  *(this + 52) = 0;
  v46 = *(a2 + 1);
  if (v46)
  {
    sub_276EA4CDC(v4, (v46 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_276E6F9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  sub_276EA5ECC(v11);
  sub_276EA5ECC(v16);
  sub_276EA5ECC(v15);
  sub_276EA5ECC(v14);
  sub_276EA5ECC(v13);
  sub_276EA5ECC(v12);
  sub_276EA5ECC(a10);
  sub_276EA5ECC(a11);
  _Unwind_Resume(a1);
}

void TSWP::ThemePresetsArchive::~ThemePresetsArchive(TSWP::ThemePresetsArchive *this)
{
  sub_276E4E808(this + 1);
  sub_276EA5ECC(this + 23);
  sub_276EA5ECC(this + 20);
  sub_276EA5ECC(this + 17);
  sub_276EA5ECC(this + 14);
  sub_276EA5ECC(this + 11);
  sub_276EA5ECC(this + 8);
  sub_276EA5ECC(this + 5);
  sub_276EA5ECC(this + 2);
}

{
  TSWP::ThemePresetsArchive::~ThemePresetsArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::ThemePresetsArchive::default_instance(TSWP::ThemePresetsArchive *this)
{
  if (atomic_load_explicit(scc_info_ThemePresetsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ThemePresetsArchive_default_instance_;
}

uint64_t *TSWP::ThemePresetsArchive::Clear(uint64_t *this)
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

  v8 = *(v1 + 72);
  if (v8 >= 1)
  {
    v9 = (*(v1 + 80) + 8);
    do
    {
      v10 = *v9++;
      this = TSP::Reference::Clear(v10);
      --v8;
    }

    while (v8);
    *(v1 + 72) = 0;
  }

  v11 = *(v1 + 96);
  if (v11 >= 1)
  {
    v12 = (*(v1 + 104) + 8);
    do
    {
      v13 = *v12++;
      this = TSP::Reference::Clear(v13);
      --v11;
    }

    while (v11);
    *(v1 + 96) = 0;
  }

  v14 = *(v1 + 120);
  if (v14 >= 1)
  {
    v15 = (*(v1 + 128) + 8);
    do
    {
      v16 = *v15++;
      this = TSP::Reference::Clear(v16);
      --v14;
    }

    while (v14);
    *(v1 + 120) = 0;
  }

  v17 = *(v1 + 144);
  if (v17 >= 1)
  {
    v18 = (*(v1 + 152) + 8);
    do
    {
      v19 = *v18++;
      this = TSP::Reference::Clear(v19);
      --v17;
    }

    while (v17);
    *(v1 + 144) = 0;
  }

  v20 = *(v1 + 168);
  if (v20 >= 1)
  {
    v21 = (*(v1 + 176) + 8);
    do
    {
      v22 = *v21++;
      this = TSP::Reference::Clear(v22);
      --v20;
    }

    while (v20);
    *(v1 + 168) = 0;
  }

  v23 = *(v1 + 192);
  if (v23 >= 1)
  {
    v24 = (*(v1 + 200) + 8);
    do
    {
      v25 = *v24++;
      this = TSP::Reference::Clear(v25);
      --v23;
    }

    while (v23);
    *(v1 + 192) = 0;
  }

  v27 = *(v1 + 8);
  v26 = (v1 + 8);
  if (v27)
  {

    return sub_276EA4D28(v26);
  }

  return this;
}

google::protobuf::internal *TSWP::ThemePresetsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v86 = a2;
  if ((sub_276EA4A1C(a3, &v86) & 1) == 0)
  {
    while (1)
    {
      v6 = (v86 + 1);
      v7 = *v86;
      if ((*v86 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v86, (v8 - 128));
      v86 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v48;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 4)
      {
        if (v7 >> 3 <= 6)
        {
          if (v9 != 5)
          {
            if (v9 != 6 || v7 != 50)
            {
              goto LABEL_127;
            }

            v20 = v6 - 1;
            while (2)
            {
              v21 = (v20 + 1);
              v86 = (v20 + 1);
              v22 = *(a1 + 152);
              if (!v22)
              {
LABEL_33:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 136));
                v22 = *(a1 + 152);
                v23 = *v22;
                goto LABEL_34;
              }

              v28 = *(a1 + 144);
              v23 = *v22;
              if (v28 >= *v22)
              {
                if (v23 == *(a1 + 148))
                {
                  goto LABEL_33;
                }

LABEL_34:
                *v22 = v23 + 1;
                v24 = MEMORY[0x277CA3250](*(a1 + 136));
                LODWORD(v25) = v24;
                v26 = *(a1 + 144);
                v27 = *(a1 + 152) + 8 * v26;
                *(a1 + 144) = v26 + 1;
                *(v27 + 8) = v24;
                v21 = v86;
              }

              else
              {
                *(a1 + 144) = v28 + 1;
                v25 = *&v22[2 * v28 + 2];
              }

              v20 = sub_276F4F9E8(a3, v25, v21);
              v86 = v20;
              if (!v20)
              {
                return 0;
              }

              if (*a3 <= v20 || *v20 != 50)
              {
                goto LABEL_134;
              }

              continue;
            }
          }

          if (v7 != 42)
          {
            goto LABEL_127;
          }

          v58 = v6 - 1;
          while (2)
          {
            v59 = (v58 + 1);
            v86 = (v58 + 1);
            v60 = *(a1 + 128);
            if (!v60)
            {
LABEL_91:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112));
              v60 = *(a1 + 128);
              v61 = *v60;
              goto LABEL_92;
            }

            v66 = *(a1 + 120);
            v61 = *v60;
            if (v66 >= *v60)
            {
              if (v61 == *(a1 + 124))
              {
                goto LABEL_91;
              }

LABEL_92:
              *v60 = v61 + 1;
              v62 = MEMORY[0x277CA3250](*(a1 + 112));
              LODWORD(v63) = v62;
              v64 = *(a1 + 120);
              v65 = *(a1 + 128) + 8 * v64;
              *(a1 + 120) = v64 + 1;
              *(v65 + 8) = v62;
              v59 = v86;
            }

            else
            {
              *(a1 + 120) = v66 + 1;
              v63 = *&v60[2 * v66 + 2];
            }

            v58 = sub_276F4F9E8(a3, v63, v59);
            v86 = v58;
            if (!v58)
            {
              return 0;
            }

            if (*a3 <= v58 || *v58 != 42)
            {
              goto LABEL_134;
            }

            continue;
          }
        }

        if (v9 != 7)
        {
          if (v9 != 8 || v7 != 66)
          {
            goto LABEL_127;
          }

          v38 = v6 - 1;
          while (2)
          {
            v39 = (v38 + 1);
            v86 = (v38 + 1);
            v40 = *(a1 + 200);
            if (!v40)
            {
LABEL_63:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 184));
              v40 = *(a1 + 200);
              v41 = *v40;
              goto LABEL_64;
            }

            v46 = *(a1 + 192);
            v41 = *v40;
            if (v46 >= *v40)
            {
              if (v41 == *(a1 + 196))
              {
                goto LABEL_63;
              }

LABEL_64:
              *v40 = v41 + 1;
              v42 = MEMORY[0x277CA3250](*(a1 + 184));
              LODWORD(v43) = v42;
              v44 = *(a1 + 192);
              v45 = *(a1 + 200) + 8 * v44;
              *(a1 + 192) = v44 + 1;
              *(v45 + 8) = v42;
              v39 = v86;
            }

            else
            {
              *(a1 + 192) = v46 + 1;
              v43 = *&v40[2 * v46 + 2];
            }

            v38 = sub_276F4F9E8(a3, v43, v39);
            v86 = v38;
            if (!v38)
            {
              return 0;
            }

            if (*a3 <= v38 || *v38 != 66)
            {
              goto LABEL_134;
            }

            continue;
          }
        }

        if (v7 != 58)
        {
          goto LABEL_127;
        }

        v76 = v6 - 1;
        while (2)
        {
          v77 = (v76 + 1);
          v86 = (v76 + 1);
          v78 = *(a1 + 176);
          if (!v78)
          {
LABEL_117:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 160));
            v78 = *(a1 + 176);
            v79 = *v78;
            goto LABEL_118;
          }

          v84 = *(a1 + 168);
          v79 = *v78;
          if (v84 >= *v78)
          {
            if (v79 == *(a1 + 172))
            {
              goto LABEL_117;
            }

LABEL_118:
            *v78 = v79 + 1;
            v80 = MEMORY[0x277CA3250](*(a1 + 160));
            LODWORD(v81) = v80;
            v82 = *(a1 + 168);
            v83 = *(a1 + 176) + 8 * v82;
            *(a1 + 168) = v82 + 1;
            *(v83 + 8) = v80;
            v77 = v86;
          }

          else
          {
            *(a1 + 168) = v84 + 1;
            v81 = *&v78[2 * v84 + 2];
          }

          v76 = sub_276F4F9E8(a3, v81, v77);
          v86 = v76;
          if (!v76)
          {
            return 0;
          }

          if (*a3 <= v76 || *v76 != 58)
          {
            goto LABEL_134;
          }

          continue;
        }
      }

      if (v7 >> 3 > 2)
      {
        if (v9 != 3)
        {
          if (v9 != 4 || v7 != 34)
          {
            goto LABEL_127;
          }

          v29 = v6 - 1;
          while (2)
          {
            v30 = (v29 + 1);
            v86 = (v29 + 1);
            v31 = *(a1 + 104);
            if (!v31)
            {
LABEL_48:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 88));
              v31 = *(a1 + 104);
              v32 = *v31;
              goto LABEL_49;
            }

            v37 = *(a1 + 96);
            v32 = *v31;
            if (v37 >= *v31)
            {
              if (v32 == *(a1 + 100))
              {
                goto LABEL_48;
              }

LABEL_49:
              *v31 = v32 + 1;
              v33 = MEMORY[0x277CA3250](*(a1 + 88));
              LODWORD(v34) = v33;
              v35 = *(a1 + 96);
              v36 = *(a1 + 104) + 8 * v35;
              *(a1 + 96) = v35 + 1;
              *(v36 + 8) = v33;
              v30 = v86;
            }

            else
            {
              *(a1 + 96) = v37 + 1;
              v34 = *&v31[2 * v37 + 2];
            }

            v29 = sub_276F4F9E8(a3, v34, v30);
            v86 = v29;
            if (!v29)
            {
              return 0;
            }

            if (*a3 <= v29 || *v29 != 34)
            {
              goto LABEL_134;
            }

            continue;
          }
        }

        if (v7 != 26)
        {
          goto LABEL_127;
        }

        v67 = v6 - 1;
        while (2)
        {
          v68 = (v67 + 1);
          v86 = (v67 + 1);
          v69 = *(a1 + 80);
          if (!v69)
          {
LABEL_104:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 64));
            v69 = *(a1 + 80);
            v70 = *v69;
            goto LABEL_105;
          }

          v75 = *(a1 + 72);
          v70 = *v69;
          if (v75 >= *v69)
          {
            if (v70 == *(a1 + 76))
            {
              goto LABEL_104;
            }

LABEL_105:
            *v69 = v70 + 1;
            v71 = MEMORY[0x277CA3250](*(a1 + 64));
            LODWORD(v72) = v71;
            v73 = *(a1 + 72);
            v74 = *(a1 + 80) + 8 * v73;
            *(a1 + 72) = v73 + 1;
            *(v74 + 8) = v71;
            v68 = v86;
          }

          else
          {
            *(a1 + 72) = v75 + 1;
            v72 = *&v69[2 * v75 + 2];
          }

          v67 = sub_276F4F9E8(a3, v72, v68);
          v86 = v67;
          if (!v67)
          {
            return 0;
          }

          if (*a3 <= v67 || *v67 != 26)
          {
            goto LABEL_134;
          }

          continue;
        }
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_127;
        }

        v49 = v6 - 1;
        while (2)
        {
          v50 = (v49 + 1);
          v86 = (v49 + 1);
          v51 = *(a1 + 32);
          if (!v51)
          {
LABEL_78:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v51 = *(a1 + 32);
            v52 = *v51;
            goto LABEL_79;
          }

          v57 = *(a1 + 24);
          v52 = *v51;
          if (v57 >= *v51)
          {
            if (v52 == *(a1 + 28))
            {
              goto LABEL_78;
            }

LABEL_79:
            *v51 = v52 + 1;
            v53 = MEMORY[0x277CA3250](*(a1 + 16));
            LODWORD(v54) = v53;
            v55 = *(a1 + 24);
            v56 = *(a1 + 32) + 8 * v55;
            *(a1 + 24) = v55 + 1;
            *(v56 + 8) = v53;
            v50 = v86;
          }

          else
          {
            *(a1 + 24) = v57 + 1;
            v54 = *&v51[2 * v57 + 2];
          }

          v49 = sub_276F4F9E8(a3, v54, v50);
          v86 = v49;
          if (!v49)
          {
            return 0;
          }

          if (*a3 <= v49 || *v49 != 10)
          {
            goto LABEL_134;
          }

          continue;
        }
      }

      if (v9 == 2 && v7 == 18)
      {
        v11 = v6 - 1;
        while (1)
        {
          v12 = (v11 + 1);
          v86 = (v11 + 1);
          v13 = *(a1 + 56);
          if (!v13)
          {
            goto LABEL_17;
          }

          v19 = *(a1 + 48);
          v14 = *v13;
          if (v19 < *v13)
          {
            *(a1 + 48) = v19 + 1;
            v16 = *&v13[2 * v19 + 2];
            goto LABEL_21;
          }

          if (v14 == *(a1 + 52))
          {
LABEL_17:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
            v13 = *(a1 + 56);
            v14 = *v13;
          }

          *v13 = v14 + 1;
          v15 = MEMORY[0x277CA3250](*(a1 + 40));
          LODWORD(v16) = v15;
          v17 = *(a1 + 48);
          v18 = *(a1 + 56) + 8 * v17;
          *(a1 + 48) = v17 + 1;
          *(v18 + 8) = v15;
          v12 = v86;
LABEL_21:
          v11 = sub_276F4F9E8(a3, v16, v12);
          v86 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 18)
          {
            goto LABEL_134;
          }
        }
      }

LABEL_127:
      if (v7)
      {
        v85 = (v7 & 7) == 4;
      }

      else
      {
        v85 = 1;
      }

      if (v85)
      {
        *(a3 + 80) = v7 - 1;
        return v86;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276EA4A94((a1 + 8));
      }

      v86 = google::protobuf::internal::UnknownFieldParse();
      if (!v86)
      {
        return 0;
      }

LABEL_134:
      if (sub_276EA4A1C(a3, &v86))
      {
        return v86;
      }
    }

    v6 = (v86 + 2);
LABEL_6:
    v86 = v6;
    goto LABEL_7;
  }

  return v86;
}

unsigned __int8 *TSWP::ThemePresetsArchive::_InternalSerialize(TSWP::ThemePresetsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSP::Reference::_InternalSerialize(v23, v25, a3);
    }
  }

  v29 = *(this + 24);
  if (v29)
  {
    for (m = 0; m != v29; ++m)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v31 = *(*(this + 13) + 8 * m + 8);
      *a2 = 34;
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
  }

  v37 = *(this + 30);
  if (v37)
  {
    for (n = 0; n != v37; ++n)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v39 = *(*(this + 16) + 8 * n + 8);
      *a2 = 42;
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

  v45 = *(this + 36);
  if (v45)
  {
    for (ii = 0; ii != v45; ++ii)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v47 = *(*(this + 19) + 8 * ii + 8);
      *a2 = 50;
      v48 = *(v47 + 5);
      if (v48 > 0x7F)
      {
        a2[1] = v48 | 0x80;
        v50 = v48 >> 7;
        if (v48 >> 14)
        {
          v49 = a2 + 3;
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
          a2[2] = v50;
          v49 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v48;
        v49 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v47, v49, a3);
    }
  }

  v53 = *(this + 42);
  if (v53)
  {
    for (jj = 0; jj != v53; ++jj)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v55 = *(*(this + 22) + 8 * jj + 8);
      *a2 = 58;
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

      a2 = TSP::Reference::_InternalSerialize(v55, v57, a3);
    }
  }

  v61 = *(this + 48);
  if (v61)
  {
    for (kk = 0; kk != v61; ++kk)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v63 = *(*(this + 25) + 8 * kk + 8);
      *a2 = 66;
      v64 = *(v63 + 5);
      if (v64 > 0x7F)
      {
        a2[1] = v64 | 0x80;
        v66 = v64 >> 7;
        if (v64 >> 14)
        {
          v65 = a2 + 3;
          do
          {
            *(v65 - 1) = v66 | 0x80;
            v67 = v66 >> 7;
            ++v65;
            v68 = v66 >> 14;
            v66 >>= 7;
          }

          while (v68);
          *(v65 - 1) = v67;
        }

        else
        {
          a2[2] = v66;
          v65 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v64;
        v65 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v63, v65, a3);
    }
  }

  v69 = *(this + 1);
  if ((v69 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v69 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ThemePresetsArchive::ByteSizeLong(TSWP::ThemePresetsArchive *this)
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
      v21 = TSP::Reference::ByteSizeLong(v20);
      v16 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6);
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 24);
  v23 = v16 + v22;
  v24 = *(this + 13);
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

  v29 = *(this + 30);
  v30 = v23 + v29;
  v31 = *(this + 16);
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

  v36 = *(this + 36);
  v37 = v30 + v36;
  v38 = *(this + 19);
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
      v42 = TSP::Reference::ByteSizeLong(v41);
      v37 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6);
      v40 -= 8;
    }

    while (v40);
  }

  v43 = *(this + 42);
  v44 = v37 + v43;
  v45 = *(this + 22);
  if (v45)
  {
    v46 = (v45 + 8);
  }

  else
  {
    v46 = 0;
  }

  if (v43)
  {
    v47 = 8 * v43;
    do
    {
      v48 = *v46++;
      v49 = TSP::Reference::ByteSizeLong(v48);
      v44 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6);
      v47 -= 8;
    }

    while (v47);
  }

  v50 = *(this + 48);
  v51 = v44 + v50;
  v52 = *(this + 25);
  if (v52)
  {
    v53 = (v52 + 8);
  }

  else
  {
    v53 = 0;
  }

  if (v50)
  {
    v54 = 8 * v50;
    do
    {
      v55 = *v53++;
      v56 = TSP::Reference::ByteSizeLong(v55);
      v51 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6);
      v54 -= 8;
    }

    while (v54);
  }

  if (*(this + 8))
  {

    return MEMORY[0x2821EADD8](this + 8, v51, this + 208);
  }

  else
  {
    *(this + 52) = v51;
    return v51;
  }
}

uint64_t TSWP::ThemePresetsArchive::MergeFrom(TSWP::ThemePresetsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ThemePresetsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ThemePresetsArchive::MergeFrom(uint64_t this, const TSWP::ThemePresetsArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_276EA5F50(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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
    this = sub_276EA5F50(v3 + 40, v12, (v11 + 8), v10, **(v3 + 56) - *(v3 + 48));
    v13 = *(v3 + 48) + v10;
    *(v3 + 48) = v13;
    v14 = *(v3 + 56);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 18);
  if (v15)
  {
    v16 = *(a2 + 10);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 64));
    this = sub_276EA5F50(v3 + 64, v17, (v16 + 8), v15, **(v3 + 80) - *(v3 + 72));
    v18 = *(v3 + 72) + v15;
    *(v3 + 72) = v18;
    v19 = *(v3 + 80);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 24);
  if (v20)
  {
    v21 = *(a2 + 13);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 88));
    this = sub_276EA5F50(v3 + 88, v22, (v21 + 8), v20, **(v3 + 104) - *(v3 + 96));
    v23 = *(v3 + 96) + v20;
    *(v3 + 96) = v23;
    v24 = *(v3 + 104);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 30);
  if (v25)
  {
    v26 = *(a2 + 16);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 112));
    this = sub_276EA5F50(v3 + 112, v27, (v26 + 8), v25, **(v3 + 128) - *(v3 + 120));
    v28 = *(v3 + 120) + v25;
    *(v3 + 120) = v28;
    v29 = *(v3 + 128);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 36);
  if (v30)
  {
    v31 = *(a2 + 19);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 136));
    this = sub_276EA5F50(v3 + 136, v32, (v31 + 8), v30, **(v3 + 152) - *(v3 + 144));
    v33 = *(v3 + 144) + v30;
    *(v3 + 144) = v33;
    v34 = *(v3 + 152);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 42);
  if (v35)
  {
    v36 = *(a2 + 22);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 160));
    this = sub_276EA5F50(v3 + 160, v37, (v36 + 8), v35, **(v3 + 176) - *(v3 + 168));
    v38 = *(v3 + 168) + v35;
    *(v3 + 168) = v38;
    v39 = *(v3 + 176);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 48);
  if (v40)
  {
    v41 = *(a2 + 25);
    v42 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 184));
    this = sub_276EA5F50(v3 + 184, v42, (v41 + 8), v40, **(v3 + 200) - *(v3 + 192));
    v43 = *(v3 + 192) + v40;
    *(v3 + 192) = v43;
    v44 = *(v3 + 200);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  return this;
}

uint64_t *TSWP::ThemePresetsArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ThemePresetsArchive::Clear(this);

    return TSWP::ThemePresetsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ThemePresetsArchive::CopyFrom(uint64_t *this, const TSWP::ThemePresetsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ThemePresetsArchive::Clear(this);

    return TSWP::ThemePresetsArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::ThemePresetsArchive::IsInitialized(TSWP::ThemePresetsArchive *this)
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

  v5 = *(this + 12);
  while (v5 >= 1)
  {
    v6 = v5 - 1;
    v7 = TSP::Reference::IsInitialized(*(*(this + 7) + 8 * v5));
    v5 = v6;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(this + 18);
  while (v8 >= 1)
  {
    v9 = v8 - 1;
    v10 = TSP::Reference::IsInitialized(*(*(this + 10) + 8 * v8));
    v8 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(this + 24);
  while (v11 >= 1)
  {
    v12 = v11 - 1;
    v13 = TSP::Reference::IsInitialized(*(*(this + 13) + 8 * v11));
    v11 = v12;
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *(this + 30);
  while (v14 >= 1)
  {
    v15 = v14 - 1;
    v16 = TSP::Reference::IsInitialized(*(*(this + 16) + 8 * v14));
    v14 = v15;
    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = *(this + 36);
  while (v19 >= 1)
  {
    v20 = v19 - 1;
    v21 = TSP::Reference::IsInitialized(*(*(this + 19) + 8 * v19));
    v17 = 0;
    v19 = v20;
    if ((v21 & 1) == 0)
    {
      return v17;
    }
  }

  v22 = *(this + 42);
  while (v22 >= 1)
  {
    v23 = v22 - 1;
    v24 = TSP::Reference::IsInitialized(*(*(this + 22) + 8 * v22));
    v17 = 0;
    v22 = v23;
    if ((v24 & 1) == 0)
    {
      return v17;
    }
  }

  v25 = *(this + 48);
  do
  {
    v17 = v25 < 1;
    if (v25 < 1)
    {
      break;
    }

    v26 = v25 - 1;
    v27 = TSP::Reference::IsInitialized(*(*(this + 25) + 8 * v25));
    v25 = v26;
  }

  while ((v27 & 1) != 0);
  return v17;
}

__n128 TSWP::ThemePresetsArchive::InternalSwap(TSWP::ThemePresetsArchive *this, TSWP::ThemePresetsArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  *(this + 72) = *(a2 + 72);
  *(a2 + 9) = v8;
  *(a2 + 10) = v9;
  v10 = *(this + 12);
  v11 = *(this + 13);
  *(this + 6) = *(a2 + 6);
  *(a2 + 12) = v10;
  *(a2 + 13) = v11;
  v12 = *(this + 15);
  v13 = *(this + 16);
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v12;
  *(a2 + 16) = v13;
  v14 = *(this + 18);
  v15 = *(this + 19);
  *(this + 9) = *(a2 + 9);
  *(a2 + 18) = v14;
  *(a2 + 19) = v15;
  v16 = *(this + 21);
  v17 = *(this + 22);
  *(this + 168) = *(a2 + 168);
  *(a2 + 21) = v16;
  *(a2 + 22) = v17;
  v18 = *(this + 24);
  v19 = *(this + 25);
  result = *(a2 + 12);
  *(this + 12) = result;
  *(a2 + 24) = v18;
  *(a2 + 25) = v19;
  return result;
}

TSP::Reference *TSWP::TextPresetDisplayItemArchive::clear_preset(TSWP::TextPresetDisplayItemArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::TextPresetDisplayItemArchive *TSWP::TextPresetDisplayItemArchive::TextPresetDisplayItemArchive(TSWP::TextPresetDisplayItemArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601440;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TextPresetDisplayItemArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSWP::TextPresetDisplayItemArchive *TSWP::TextPresetDisplayItemArchive::TextPresetDisplayItemArchive(TSWP::TextPresetDisplayItemArchive *this, const TSWP::TextPresetDisplayItemArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288601440;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSWP::TextPresetDisplayItemArchive::~TextPresetDisplayItemArchive(TSWP::TextPresetDisplayItemArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (this != &TSWP::_TextPresetDisplayItemArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TextPresetDisplayItemArchive::~TextPresetDisplayItemArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::TextPresetDisplayItemArchive::default_instance(TSWP::TextPresetDisplayItemArchive *this)
{
  if (atomic_load_explicit(scc_info_TextPresetDisplayItemArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TextPresetDisplayItemArchive_default_instance_;
}

uint64_t *TSWP::TextPresetDisplayItemArchive::Clear(uint64_t *this)
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

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWP::TextPresetDisplayItemArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_276EA4A1C(a3, &v17) & 1) == 0)
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

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v10 = google::protobuf::internal::InlineGreedyStringParser();
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
          sub_276EA4A94((a1 + 8));
        }

        v10 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_26;
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

        v13 = MEMORY[0x277CA3250](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v17;
      }

      v10 = sub_276F4F9E8(a3, v11, v5);
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

unsigned __int8 *TSWP::TextPresetDisplayItemArchive::_InternalSerialize(TSWP::TextPresetDisplayItemArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  }

  if (v6)
  {
    v4 = sub_276E5154C(a3, 2, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TextPresetDisplayItemArchive::RequiredFieldsByteSizeFallback(TSWP::TextPresetDisplayItemArchive *this)
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

uint64_t TSWP::TextPresetDisplayItemArchive::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v8 = TSWP::TextPresetDisplayItemArchive::RequiredFieldsByteSizeFallback(this);
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

uint64_t TSWP::TextPresetDisplayItemArchive::MergeFrom(TSWP::TextPresetDisplayItemArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TextPresetDisplayItemArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TextPresetDisplayItemArchive::MergeFrom(uint64_t this, const TSWP::TextPresetDisplayItemArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277CA3250](v7);
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

uint64_t *TSWP::TextPresetDisplayItemArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextPresetDisplayItemArchive::Clear(this);

    return TSWP::TextPresetDisplayItemArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TextPresetDisplayItemArchive::CopyFrom(uint64_t *this, const TSWP::TextPresetDisplayItemArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextPresetDisplayItemArchive::Clear(this);

    return TSWP::TextPresetDisplayItemArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TextPresetDisplayItemArchive::IsInitialized(TSP::Reference **this)
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

uint64_t *TSWP::TextPresetDisplayItemArchive::InternalSwap(TSWP::TextPresetDisplayItemArchive *this, TSWP::TextPresetDisplayItemArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSP::Reference *TSWP::TOCEntryStylePropertiesArchive::clear_page_number_style(TSWP::TOCEntryStylePropertiesArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::TOCEntryStylePropertiesArchive *TSWP::TOCEntryStylePropertiesArchive::TOCEntryStylePropertiesArchive(TSWP::TOCEntryStylePropertiesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886014F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCEntryStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  return this;
}

{
  *this = &unk_2886014F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCEntryStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0;
  *(this + 3) = 0;
  return this;
}

TSWP::TOCEntryStylePropertiesArchive *TSWP::TOCEntryStylePropertiesArchive::TOCEntryStylePropertiesArchive(TSWP::TOCEntryStylePropertiesArchive *this, const TSWP::TOCEntryStylePropertiesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886014F0;
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
  *(this + 16) = *(a2 + 16);
  return this;
}

void TSWP::TOCEntryStylePropertiesArchive::~TOCEntryStylePropertiesArchive(TSWP::TOCEntryStylePropertiesArchive *this)
{
  if (this != &TSWP::_TOCEntryStylePropertiesArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TOCEntryStylePropertiesArchive::~TOCEntryStylePropertiesArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::TOCEntryStylePropertiesArchive::default_instance(TSWP::TOCEntryStylePropertiesArchive *this)
{
  if (atomic_load_explicit(scc_info_TOCEntryStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TOCEntryStylePropertiesArchive_default_instance_;
}

uint64_t *TSWP::TOCEntryStylePropertiesArchive::Clear(uint64_t *this)
{
  v1 = this;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 24) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_276EA4D28(v2);
  }

  return this;
}

google::protobuf::internal *TSWP::TOCEntryStylePropertiesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v29) & 1) == 0)
  {
    while (1)
    {
      v7 = (v29 + 1);
      v8 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v9 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
      }

      v7 = TagFallback;
      v8 = v24;
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
          goto LABEL_32;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_32:
          v29 = v18;
          *(a1 + 33) = v17 != 0;
          goto LABEL_37;
        }

        v27 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v29 = v27;
        *(a1 + 33) = v28 != 0;
        if (!v27)
        {
LABEL_46:
          v29 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 2)
        {
          if (v8 == 18)
          {
            *(a1 + 16) |= 1u;
            v14 = *(a1 + 24);
            if (!v14)
            {
              v15 = *(a1 + 8);
              if (v15)
              {
                v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
              }

              v16 = MEMORY[0x277CA3250](v15);
              LODWORD(v14) = v16;
              *(a1 + 24) = v16;
              v7 = v29;
            }

            v13 = sub_276F4F9E8(a3, v14, v7);
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
              sub_276EA4A94((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
          }

          v29 = v13;
          if (!v13)
          {
            goto LABEL_46;
          }

          goto LABEL_37;
        }

        if (v10 != 1 || v8 != 8)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v21 = (v7 + 1);
        v20 = *v7;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v22 = *v21;
        v20 = (v22 << 7) + v20 - 128;
        if ((v22 & 0x80000000) == 0)
        {
          v21 = (v7 + 2);
LABEL_36:
          v29 = v21;
          *(a1 + 32) = v20 != 0;
          goto LABEL_37;
        }

        v25 = google::protobuf::internal::VarintParseSlow64(v7, v20);
        v29 = v25;
        *(a1 + 32) = v26 != 0;
        if (!v25)
        {
          goto LABEL_46;
        }
      }

LABEL_37:
      if (sub_276EA4A1C(a3, &v29))
      {
        goto LABEL_2;
      }
    }

    v7 = (v29 + 2);
LABEL_6:
    v29 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

unsigned __int8 *TSWP::TOCEntryStylePropertiesArchive::_InternalSerialize(TSWP::TOCEntryStylePropertiesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 32);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
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

  a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
  if ((v5 & 4) != 0)
  {
LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 33);
    *a2 = 24;
    a2[1] = v13;
    a2 += 2;
  }

LABEL_21:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TOCEntryStylePropertiesArchive::ByteSizeLong(TSWP::TOCEntryStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      v5 = TSP::Reference::ByteSizeLong(*(this + 3));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 + ((v2 >> 1) & 2) + (v2 & 2);
  }

  else
  {
    v4 = 0;
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

uint64_t TSWP::TOCEntryStylePropertiesArchive::MergeFrom(TSWP::TOCEntryStylePropertiesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TOCEntryStylePropertiesArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TOCEntryStylePropertiesArchive::MergeFrom(uint64_t this, const TSWP::TOCEntryStylePropertiesArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277CA3250](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v6, v8);
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

uint64_t *TSWP::TOCEntryStylePropertiesArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCEntryStylePropertiesArchive::Clear(this);

    return TSWP::TOCEntryStylePropertiesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TOCEntryStylePropertiesArchive::CopyFrom(uint64_t *this, const TSWP::TOCEntryStylePropertiesArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCEntryStylePropertiesArchive::Clear(this);

    return TSWP::TOCEntryStylePropertiesArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TOCEntryStylePropertiesArchive::IsInitialized(TSWP::TOCEntryStylePropertiesArchive *this)
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

uint64_t *TSWP::TOCEntryStylePropertiesArchive::InternalSwap(TSWP::TOCEntryStylePropertiesArchive *this, TSWP::TOCEntryStylePropertiesArchive *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSWP::TOCEntryStyleArchive *TSWP::TOCEntryStyleArchive::TOCEntryStyleArchive(TSWP::TOCEntryStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886015A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCEntryStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2886015A0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCEntryStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSWP::TOCEntryStyleArchive *TSWP::TOCEntryStyleArchive::TOCEntryStyleArchive(TSWP::TOCEntryStyleArchive *this, const TSWP::TOCEntryStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886015A0;
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
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  return this;
}

void TSWP::TOCEntryStyleArchive::~TOCEntryStyleArchive(TSWP::TOCEntryStyleArchive *this)
{
  if (this != &TSWP::_TOCEntryStyleArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::ParagraphStyleArchive::~ParagraphStyleArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSWP::TOCEntryStylePropertiesArchive::~TOCEntryStylePropertiesArchive(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TOCEntryStyleArchive::~TOCEntryStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::TOCEntryStyleArchive::default_instance(TSWP::TOCEntryStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_TOCEntryStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TOCEntryStyleArchive_default_instance_;
}

uint64_t *TSWP::TOCEntryStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSWP::ParagraphStyleArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSWP::TOCEntryStylePropertiesArchive::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::TOCEntryStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  while ((sub_276EA4A1C(a3, &v18) & 1) == 0)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TOCEntryStylePropertiesArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_276F52374(a3, v11, v5);
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
          sub_276EA4A94((a1 + 8));
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

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParagraphStyleArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v18;
      }

      v10 = sub_276F522A4(a3, v13, v5);
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

unsigned __int8 *TSWP::TOCEntryStyleArchive::_InternalSerialize(TSWP::TOCEntryStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::ParagraphStyleArchive::_InternalSerialize(v6, v8, a3);
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

    a2 = TSWP::TOCEntryStylePropertiesArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TOCEntryStyleArchive::ByteSizeLong(TSWP::TOCEntryStyleArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSWP::ParagraphStyleArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSWP::TOCEntryStylePropertiesArchive::ByteSizeLong(*(this + 4));
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

uint64_t TSWP::TOCEntryStyleArchive::MergeFrom(TSWP::TOCEntryStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TOCEntryStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TOCEntryStyleArchive::MergeFrom(uint64_t this, const TSWP::TOCEntryStyleArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ParagraphStyleArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_ParagraphStyleArchive_default_instance_;
      }

      this = TSWP::ParagraphStyleArchive::MergeFrom(v6, v8);
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

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TOCEntryStylePropertiesArchive>(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSWP::_TOCEntryStylePropertiesArchive_default_instance_;
      }

      return TSWP::TOCEntryStylePropertiesArchive::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSWP::TOCEntryStyleArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCEntryStyleArchive::Clear(this);

    return TSWP::TOCEntryStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TOCEntryStyleArchive::CopyFrom(uint64_t *this, const TSWP::TOCEntryStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCEntryStyleArchive::Clear(this);

    return TSWP::TOCEntryStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TOCEntryStyleArchive::IsInitialized(TSWP::TOCEntryStyleArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSWP::ParagraphStyleArchive::IsInitialized(*(this + 3));
  if (result)
  {
    if ((*(this + 16) & 2) == 0)
    {
      return 1;
    }

    v3 = *(this + 4);
    if ((*(v3 + 16) & 1) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(v3 + 24));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWP::TOCEntryStyleArchive::InternalSwap(TSWP::TOCEntryStyleArchive *this, TSWP::TOCEntryStyleArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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

TSP::Reference *TSWP::TOCSettingsArchive_TOCEntryData::clear_paragraph_style(TSWP::TOCSettingsArchive_TOCEntryData *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Reference *TSWP::TOCSettingsArchive_TOCEntryData::clear_toc_entry_style(TSWP::TOCSettingsArchive_TOCEntryData *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::TOCSettingsArchive_TOCEntryData *TSWP::TOCSettingsArchive_TOCEntryData::TOCSettingsArchive_TOCEntryData(TSWP::TOCSettingsArchive_TOCEntryData *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601650;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCSettingsArchive_TOCEntryData_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_288601650;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCSettingsArchive_TOCEntryData_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

TSWP::TOCSettingsArchive_TOCEntryData *TSWP::TOCSettingsArchive_TOCEntryData::TOCSettingsArchive_TOCEntryData(TSWP::TOCSettingsArchive_TOCEntryData *this, const TSWP::TOCSettingsArchive_TOCEntryData *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601650;
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
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  *(this + 40) = *(a2 + 40);
  return this;
}

void TSWP::TOCSettingsArchive_TOCEntryData::~TOCSettingsArchive_TOCEntryData(TSWP::TOCSettingsArchive_TOCEntryData *this)
{
  if (this != &TSWP::_TOCSettingsArchive_TOCEntryData_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TOCSettingsArchive_TOCEntryData::~TOCSettingsArchive_TOCEntryData(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::TOCSettingsArchive_TOCEntryData::default_instance(TSWP::TOCSettingsArchive_TOCEntryData *this)
{
  if (atomic_load_explicit(scc_info_TOCSettingsArchive_TOCEntryData_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TOCSettingsArchive_TOCEntryData_default_instance_;
}

uint64_t *TSWP::TOCSettingsArchive_TOCEntryData::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Reference::Clear(this[3]);
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

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::TOCSettingsArchive_TOCEntryData::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v26) & 1) == 0)
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
        goto LABEL_44;
      }

      v7 = TagFallback;
      v8 = v23;
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

            v16 = MEMORY[0x277CA3250](v15);
            LODWORD(v14) = v16;
            *(a1 + 32) = v16;
LABEL_34:
            v7 = v26;
          }
        }

        else
        {
          if (v10 != 1 || v8 != 10)
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
              sub_276EA4A94((a1 + 8));
            }

            v13 = google::protobuf::internal::UnknownFieldParse();
LABEL_36:
            v26 = v13;
            if (!v13)
            {
              goto LABEL_44;
            }

            goto LABEL_37;
          }

          *(a1 + 16) |= 1u;
          v14 = *(a1 + 24);
          if (!v14)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277CA3250](v20);
            LODWORD(v14) = v21;
            *(a1 + 24) = v21;
            goto LABEL_34;
          }
        }

        v13 = sub_276F4F9E8(a3, v14, v7);
        goto LABEL_36;
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
        goto LABEL_29;
      }

      v19 = *v18;
      v17 = (v19 << 7) + v17 - 128;
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_29:
        v26 = v18;
        *(a1 + 40) = v17 != 0;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow64(v7, v17);
      v26 = v24;
      *(a1 + 40) = v25 != 0;
      if (!v24)
      {
LABEL_44:
        v26 = 0;
        goto LABEL_2;
      }

LABEL_37:
      if (sub_276EA4A1C(a3, &v26))
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

unsigned __int8 *TSWP::TOCSettingsArchive_TOCEntryData::_InternalSerialize(TSWP::TOCSettingsArchive_TOCEntryData *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
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

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TOCSettingsArchive_TOCEntryData::ByteSizeLong(TSP::Reference **this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v4 = 0;
    goto LABEL_9;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSP::Reference::ByteSizeLong(this[3]);
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::Reference::ByteSizeLong(this[4]);
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v4 = v3 + ((v2 >> 1) & 2);
LABEL_9:
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

uint64_t TSWP::TOCSettingsArchive_TOCEntryData::MergeFrom(TSWP::TOCSettingsArchive_TOCEntryData *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TOCSettingsArchive_TOCEntryData::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TOCSettingsArchive_TOCEntryData::MergeFrom(uint64_t this, const TSWP::TOCSettingsArchive_TOCEntryData *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    v6 = MEMORY[0x277D80A18];
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

        v7 = MEMORY[0x277CA3250](v8);
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

      this = TSP::Reference::MergeFrom(v7, v9);
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
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277CA3250](v11);
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

    this = TSP::Reference::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSWP::TOCSettingsArchive_TOCEntryData::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCSettingsArchive_TOCEntryData::Clear(this);

    return TSWP::TOCSettingsArchive_TOCEntryData::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TOCSettingsArchive_TOCEntryData::CopyFrom(uint64_t *this, const TSWP::TOCSettingsArchive_TOCEntryData *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCSettingsArchive_TOCEntryData::Clear(this);

    return TSWP::TOCSettingsArchive_TOCEntryData::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TOCSettingsArchive_TOCEntryData::IsInitialized(TSWP::TOCSettingsArchive_TOCEntryData *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
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

__n128 TSWP::TOCSettingsArchive_TOCEntryData::InternalSwap(TSWP::TOCSettingsArchive_TOCEntryData *this, TSWP::TOCSettingsArchive_TOCEntryData *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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

TSWP::TOCSettingsArchive *TSWP::TOCSettingsArchive::TOCSettingsArchive(TSWP::TOCSettingsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601700;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_TOCSettingsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 14) = 0;
  return this;
}

TSWP::TOCSettingsArchive *TSWP::TOCSettingsArchive::TOCSettingsArchive(TSWP::TOCSettingsArchive *this, const TSWP::TOCSettingsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601700;
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
    sub_276EA6094(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_276EA4CDC(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 6) = MEMORY[0x277D80A90];
  if (*(a2 + 16))
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  *(this + 14) = *(a2 + 14);
  return this;
}

void TSWP::TOCSettingsArchive::~TOCSettingsArchive(TSWP::TOCSettingsArchive *this)
{
  v2 = *(this + 6);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  sub_276E4E808(this + 1);
  sub_276EA6010(this + 3);
}

{
  TSWP::TOCSettingsArchive::~TOCSettingsArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::TOCSettingsArchive::default_instance(TSWP::TOCSettingsArchive *this)
{
  if (atomic_load_explicit(scc_info_TOCSettingsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TOCSettingsArchive_default_instance_;
}

uint64_t *TSWP::TOCSettingsArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::TOCSettingsArchive_TOCEntryData::Clear(v4);
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

    return sub_276EA4D28(v6);
  }

  return this;
}

google::protobuf::internal *TSWP::TOCSettingsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v29) & 1) == 0)
  {
    while (1)
    {
      v7 = (v29 + 1);
      v8 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v9 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_47;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        v17 = (v7 - 1);
        while (2)
        {
          v18 = (v17 + 1);
          v29 = (v17 + 1);
          v19 = *(a1 + 40);
          if (!v19)
          {
LABEL_28:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v19 = *(a1 + 40);
            v20 = *v19;
            goto LABEL_29;
          }

          v24 = *(a1 + 32);
          v20 = *v19;
          if (v24 >= *v19)
          {
            if (v20 == *(a1 + 36))
            {
              goto LABEL_28;
            }

LABEL_29:
            *v19 = v20 + 1;
            v21 = google::protobuf::Arena::CreateMaybeMessage<TSWP::TOCSettingsArchive_TOCEntryData>(*(a1 + 24));
            v22 = *(a1 + 32);
            v23 = *(a1 + 40) + 8 * v22;
            *(a1 + 32) = v22 + 1;
            *(v23 + 8) = v21;
            v18 = v29;
          }

          else
          {
            *(a1 + 32) = v24 + 1;
            v21 = *&v19[2 * v24 + 2];
          }

          v17 = sub_276F52444(a3, v21, v18);
          v29 = v17;
          if (!v17)
          {
            goto LABEL_47;
          }

          if (*a3 <= v17 || *v17 != 26)
          {
            goto LABEL_40;
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
            sub_276EA4A94((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v29 = v13;
        if (!v13)
        {
          goto LABEL_47;
        }

        goto LABEL_40;
      }

      if (v8 != 16)
      {
        goto LABEL_13;
      }

      v5 |= 2u;
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
        v29 = v14;
        *(a1 + 56) = v15;
        goto LABEL_40;
      }

      v27 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v29 = v27;
      *(a1 + 56) = v28;
      if (!v27)
      {
LABEL_47:
        v29 = 0;
        goto LABEL_2;
      }

LABEL_40:
      if (sub_276EA4A1C(a3, &v29))
      {
        goto LABEL_2;
      }
    }

    v7 = (v29 + 2);
LABEL_6:
    v29 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

unsigned __int8 *TSWP::TOCSettingsArchive::_InternalSerialize(TSWP::TOCSettingsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276E5154C(a3, 1, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 14);
    *v4 = 16;
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
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v7;
      v4 += 2;
    }
  }

  v11 = *(this + 8);
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v13 = *(*(this + 5) + 8 * i + 8);
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

      v4 = TSWP::TOCSettingsArchive_TOCEntryData::_InternalSerialize(v13, v15, a3);
    }
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TOCSettingsArchive::ByteSizeLong(TSWP::TOCSettingsArchive *this)
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
      v7 = TSWP::TOCSettingsArchive_TOCEntryData::ByteSizeLong(v6);
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
      v9 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v2 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v8 & 2) != 0)
    {
      v2 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::TOCSettingsArchive::MergeFrom(TSWP::TOCSettingsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TOCSettingsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TOCSettingsArchive::MergeFrom(uint64_t this, const TSWP::TOCSettingsArchive *a2)
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
    this = sub_276EA6094(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
      *(v3 + 56) = *(a2 + 14);
    }

    *(v3 + 16) |= v10;
  }

  return this;
}

uint64_t *TSWP::TOCSettingsArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCSettingsArchive::Clear(this);

    return TSWP::TOCSettingsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TOCSettingsArchive::CopyFrom(uint64_t *this, const TSWP::TOCSettingsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCSettingsArchive::Clear(this);

    return TSWP::TOCSettingsArchive::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSWP::TOCSettingsArchive::IsInitialized(TSWP::TOCSettingsArchive *this)
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
    IsInitialized = TSWP::TOCSettingsArchive_TOCEntryData::IsInitialized(*(*(this + 5) + 8 * v2));
    v2 = v4;
  }

  while ((IsInitialized & 1) != 0);
  return v3 < 1;
}

__n128 TSWP::TOCSettingsArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
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
  LODWORD(v8) = this[3].n128_u32[2];
  this[3].n128_u32[2] = a2[3].n128_u32[2];
  a2[3].n128_u32[2] = v8;
  return result;
}

TSP::Reference *TSWP::TOCEntryInstanceArchive::clear_indexed_style(TSWP::TOCEntryInstanceArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Reference *TSWP::TOCEntryInstanceArchive::clear_indexed_list_style(TSWP::TOCEntryInstanceArchive *this)
{
  result = *(this + 6);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSWP::TOCEntryInstanceArchive *TSWP::TOCEntryInstanceArchive::TOCEntryInstanceArchive(TSWP::TOCEntryInstanceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886017B0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TOCEntryInstanceArchive_TSWPArchives_2eproto, memory_order_acquire))
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

TSWP::TOCEntryInstanceArchive *TSWP::TOCEntryInstanceArchive::TOCEntryInstanceArchive(TSWP::TOCEntryInstanceArchive *this, const TSWP::TOCEntryInstanceArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_2886017B0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
  v7 = *(a2 + 56);
  *(this + 18) = *(a2 + 18);
  *(this + 56) = v7;
  return this;
}

void TSWP::TOCEntryInstanceArchive::~TOCEntryInstanceArchive(TSWP::TOCEntryInstanceArchive *this)
{
  sub_276E74F34(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::TOCEntryInstanceArchive::~TOCEntryInstanceArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSP::Reference *sub_276E74F34(TSP::Reference *result)
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

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  v4 = *(v1 + 4);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277CA3D00](v4, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_TOCEntryInstanceArchive_default_instance_)
  {
    v5 = *(v1 + 5);
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277CA3D00]();
    }

    result = *(v1 + 6);
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::TOCEntryInstanceArchive::default_instance(TSWP::TOCEntryInstanceArchive *this)
{
  if (atomic_load_explicit(scc_info_TOCEntryInstanceArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TOCEntryInstanceArchive_default_instance_;
}

uint64_t *TSWP::TOCEntryInstanceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    goto LABEL_7;
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

    goto LABEL_21;
  }

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

LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  *v6 = 0;
  *(v6 + 23) = 0;
  if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_21:
  this = TSP::Reference::Clear(this[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    this = TSP::Reference::Clear(*(v1 + 48));
  }

LABEL_7:
  if ((v2 & 0xF0) != 0)
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 64) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::TOCEntryInstanceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v46 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v46) & 1) == 0)
  {
    while (1)
    {
      v7 = (v46 + 1);
      v8 = *v46;
      if ((*v46 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v46, (v9 - 128));
      v46 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_87;
      }

      v7 = TagFallback;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 4)
      {
        if (v8 >> 3 > 2)
        {
          if (v10 != 3)
          {
            if (v10 == 4 && v8 == 34)
            {
              *(a1 + 16) |= 1u;
LABEL_29:
              google::protobuf::internal::ArenaStringPtr::Mutable();
              v15 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_73:
              v46 = v15;
              if (!v15)
              {
                goto LABEL_87;
              }

              goto LABEL_74;
            }

LABEL_66:
            if (v8)
            {
              v35 = (v8 & 7) == 4;
            }

            else
            {
              v35 = 1;
            }

            if (v35)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_276EA4A94((a1 + 8));
            }

            v15 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_73;
          }

          if (v8 != 24)
          {
            goto LABEL_66;
          }

          v5 |= 0x40u;
          v24 = (v7 + 1);
          LODWORD(v25) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

          v26 = *v24;
          v25 = (v25 + (v26 << 7) - 128);
          if ((v26 & 0x80000000) == 0)
          {
            v24 = (v7 + 2);
LABEL_48:
            v46 = v24;
            *(a1 + 64) = v25;
            goto LABEL_74;
          }

          v40 = google::protobuf::internal::VarintParseSlow32(v7, v25);
          v46 = v40;
          *(a1 + 64) = v41;
          if (!v40)
          {
            goto LABEL_87;
          }
        }

        else if (v10 == 1)
        {
          if (v8 != 8)
          {
            goto LABEL_66;
          }

          v5 |= 0x10u;
          v21 = (v7 + 1);
          LODWORD(v22) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_43;
          }

          v23 = *v21;
          v22 = (v22 + (v23 << 7) - 128);
          if ((v23 & 0x80000000) == 0)
          {
            v21 = (v7 + 2);
LABEL_43:
            v46 = v21;
            *(a1 + 56) = v22;
            goto LABEL_74;
          }

          v38 = google::protobuf::internal::VarintParseSlow32(v7, v22);
          v46 = v38;
          *(a1 + 56) = v39;
          if (!v38)
          {
            goto LABEL_87;
          }
        }

        else
        {
          if (v10 != 2 || v8 != 16)
          {
            goto LABEL_66;
          }

          v5 |= 0x20u;
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
            v46 = v12;
            *(a1 + 60) = v13;
            goto LABEL_74;
          }

          v36 = google::protobuf::internal::VarintParseSlow32(v7, v13);
          v46 = v36;
          *(a1 + 60) = v37;
          if (!v36)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        if (v8 >> 3 <= 6)
        {
          if (v10 == 5)
          {
            if (v8 != 42)
            {
              goto LABEL_66;
            }

            *(a1 + 16) |= 4u;
            v16 = *(a1 + 40);
            if (!v16)
            {
              v30 = *(a1 + 8);
              if (v30)
              {
                v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
              }

              v31 = MEMORY[0x277CA3250](v30);
              LODWORD(v16) = v31;
              *(a1 + 40) = v31;
LABEL_59:
              v7 = v46;
            }
          }

          else
          {
            if (v10 != 6 || v8 != 50)
            {
              goto LABEL_66;
            }

            *(a1 + 16) |= 8u;
            v16 = *(a1 + 48);
            if (!v16)
            {
              v17 = *(a1 + 8);
              if (v17)
              {
                v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
              }

              v18 = MEMORY[0x277CA3250](v17);
              LODWORD(v16) = v18;
              *(a1 + 48) = v18;
              goto LABEL_59;
            }
          }

          v15 = sub_276F4F9E8(a3, v16, v7);
          goto LABEL_73;
        }

        if (v10 == 7)
        {
          if (v8 != 56)
          {
            goto LABEL_66;
          }

          v5 |= 0x80u;
          v27 = (v7 + 1);
          LODWORD(v28) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_53;
          }

          v29 = *v27;
          v28 = (v28 + (v29 << 7) - 128);
          if ((v29 & 0x80000000) == 0)
          {
            v27 = (v7 + 2);
LABEL_53:
            v46 = v27;
            *(a1 + 68) = v28;
            goto LABEL_74;
          }

          v42 = google::protobuf::internal::VarintParseSlow32(v7, v28);
          v46 = v42;
          *(a1 + 68) = v43;
          if (!v42)
          {
            goto LABEL_87;
          }
        }

        else
        {
          if (v10 != 8)
          {
            if (v10 == 9 && v8 == 74)
            {
              *(a1 + 16) |= 2u;
              goto LABEL_29;
            }

            goto LABEL_66;
          }

          if (v8 != 64)
          {
            goto LABEL_66;
          }

          v5 |= 0x100u;
          v32 = (v7 + 1);
          LODWORD(v33) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          v34 = *v32;
          v33 = (v33 + (v34 << 7) - 128);
          if ((v34 & 0x80000000) == 0)
          {
            v32 = (v7 + 2);
LABEL_65:
            v46 = v32;
            *(a1 + 72) = v33;
            goto LABEL_74;
          }

          v44 = google::protobuf::internal::VarintParseSlow32(v7, v33);
          v46 = v44;
          *(a1 + 72) = v45;
          if (!v44)
          {
LABEL_87:
            v46 = 0;
            goto LABEL_2;
          }
        }
      }

LABEL_74:
      if (sub_276EA4A1C(a3, &v46))
      {
        goto LABEL_2;
      }
    }

    v7 = (v46 + 2);
LABEL_6:
    v46 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v46;
}

unsigned __int8 *TSWP::TOCEntryInstanceArchive::_InternalSerialize(TSWP::TOCEntryInstanceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 14);
    *v4 = 8;
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v10 = v9 >> 7;
      if (v9 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v4;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v4 - 1) = v11;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 0x20) != 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      v4[1] = v9;
      v4 += 2;
      if ((v6 & 0x20) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_3:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_4;
    }

LABEL_35:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v17 = *(this + 16);
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
        if (v6)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v4[2] = v18;
        v4 += 3;
        if (v6)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v4[1] = v17;
      v4 += 2;
      if (v6)
      {
        goto LABEL_46;
      }
    }

LABEL_5:
    if ((v6 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_3;
  }

LABEL_24:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 15);
  *v4 = 16;
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
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v4[2] = v14;
      v4 += 3;
      if ((v6 & 0x40) != 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v4[1] = v13;
    v4 += 2;
    if ((v6 & 0x40) != 0)
    {
      goto LABEL_35;
    }
  }

LABEL_4:
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_46:
  v4 = sub_276E5154C(a3, 4, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 4) == 0)
  {
LABEL_6:
    if ((v6 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_47:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 5);
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

  v4 = TSP::Reference::_InternalSerialize(v21, v23, a3);
  if ((v6 & 8) == 0)
  {
LABEL_7:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_67:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v33 = *(this + 17);
    *v4 = 56;
    if (v33 > 0x7F)
    {
      v4[1] = v33 | 0x80;
      v34 = v33 >> 7;
      if (v33 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v34 | 0x80;
          v35 = v34 >> 7;
          ++v4;
          v36 = v34 >> 14;
          v34 >>= 7;
        }

        while (v36);
        *(v4 - 1) = v35;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v4[2] = v34;
        v4 += 3;
        if ((v6 & 0x100) != 0)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      v4[1] = v33;
      v4 += 2;
      if ((v6 & 0x100) != 0)
      {
        goto LABEL_78;
      }
    }

LABEL_9:
    if ((v6 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_57:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v27 = *(this + 6);
  *v4 = 50;
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

  v4 = TSP::Reference::_InternalSerialize(v27, v29, a3);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_67;
  }

LABEL_8:
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_9;
  }

LABEL_78:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v37 = *(this + 18);
  *v4 = 64;
  if (v37 <= 0x7F)
  {
    v4[1] = v37;
    v4 += 2;
    if ((v6 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    v4 = sub_276E5154C(a3, 9, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_11;
  }

  v4[1] = v37 | 0x80;
  v38 = v37 >> 7;
  if (v37 >> 14)
  {
    v4 += 3;
    do
    {
      *(v4 - 1) = v38 | 0x80;
      v39 = v38 >> 7;
      ++v4;
      v40 = v38 >> 14;
      v38 >>= 7;
    }

    while (v40);
    *(v4 - 1) = v39;
    if ((v6 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4[2] = v38;
    v4 += 3;
    if ((v6 & 2) != 0)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TOCEntryInstanceArchive::RequiredFieldsByteSizeFallback(TSWP::TOCEntryInstanceArchive *this)
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
    v7 = TSP::Reference::ByteSizeLong(*(this + 5));
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
  if ((v2 & 0x10) == 0)
  {
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v3 += ((9 * (__clz(*(this + 15) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x40) == 0)
    {
      return v3;
    }

    goto LABEL_11;
  }

  v3 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v2 & 0x40) != 0)
  {
LABEL_11:
    v3 += ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

unint64_t TSWP::TOCEntryInstanceArchive::ByteSizeLong(TSP::Reference **this)
{
  if ((~*(this + 4) & 0x75) != 0)
  {
    v10 = TSWP::TOCEntryInstanceArchive::RequiredFieldsByteSizeFallback(this);
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

    v6 = TSP::Reference::ByteSizeLong(this[5]);
    v7.i32[0] = v5 | 1;
    v7.i32[1] = v6 | 1;
    v7.i64[1] = this[7] | 0x100000001;
    v8 = vclzq_s32(v7);
    v7.i64[0] = 0x1F0000001FLL;
    v7.i64[1] = 0x1F0000001FLL;
    v9.i64[0] = 0x4900000049;
    v9.i64[1] = 0x4900000049;
    v10 = v6 + v5 + vaddlvq_u32(vshrq_n_u32(vmlal_u16(v9, vmovn_s32(veorq_s8(v8, v7)), 0x9000900090009), 6uLL)) + ((9 * (__clz(*(this + 16) | 1) ^ 0x1F) + 73) >> 6) + 5;
  }

  v11 = *(this + 4);
  if ((v11 & 2) != 0)
  {
    v13 = this[4] & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(v13 + 23);
    v15 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v15 = v14;
    }

    v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v11 & 8) == 0)
    {
LABEL_9:
      if ((v11 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((v11 & 8) == 0)
  {
    goto LABEL_9;
  }

  v16 = TSP::Reference::ByteSizeLong(this[6]);
  v10 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v11 & 0x80) == 0)
  {
LABEL_10:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_18:
  v10 += ((9 * (__clz(*(this + 17) | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v11 & 0x100) != 0)
  {
LABEL_11:
    v10 += ((9 * (__clz(*(this + 18) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v10, this + 20);
  }

  else
  {
    *(this + 5) = v10;
    return v10;
  }
}

uint64_t TSWP::TOCEntryInstanceArchive::MergeFrom(TSWP::TOCEntryInstanceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TOCEntryInstanceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TOCEntryInstanceArchive::MergeFrom(uint64_t this, const TSWP::TOCEntryInstanceArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v6 = MEMORY[0x277D80A18];
    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v8 = *(v3 + 40);
      if (!v8)
      {
        v9 = *(v3 + 8);
        if (v9)
        {
          v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
        }

        v8 = MEMORY[0x277CA3250](v9);
        *(v3 + 40) = v8;
      }

      if (*(a2 + 5))
      {
        v10 = *(a2 + 5);
      }

      else
      {
        v10 = v6;
      }

      this = TSP::Reference::MergeFrom(v8, v10);
      if ((v5 & 8) == 0)
      {
LABEL_10:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_35;
      }
    }

    else if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    *(v3 + 16) |= 8u;
    v11 = *(v3 + 48);
    if (!v11)
    {
      v12 = *(v3 + 8);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = MEMORY[0x277CA3250](v12);
      *(v3 + 48) = v11;
    }

    if (*(a2 + 6))
    {
      v13 = *(a2 + 6);
    }

    else
    {
      v13 = v6;
    }

    this = TSP::Reference::MergeFrom(v11, v13);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_36;
    }

LABEL_35:
    *(v3 + 56) = *(a2 + 14);
    if ((v5 & 0x20) == 0)
    {
LABEL_12:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_37;
    }

LABEL_36:
    *(v3 + 60) = *(a2 + 15);
    if ((v5 & 0x40) == 0)
    {
LABEL_13:
      if ((v5 & 0x80) == 0)
      {
LABEL_15:
        *(v3 + 16) |= v5;
        goto LABEL_16;
      }

LABEL_14:
      *(v3 + 68) = *(a2 + 17);
      goto LABEL_15;
    }

LABEL_37:
    *(v3 + 64) = *(a2 + 16);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_16:
  if ((v5 & 0x100) != 0)
  {
    v7 = *(a2 + 18);
    *(v3 + 16) |= 0x100u;
    *(v3 + 72) = v7;
  }

  return this;
}

uint64_t *TSWP::TOCEntryInstanceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCEntryInstanceArchive::Clear(this);

    return TSWP::TOCEntryInstanceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TOCEntryInstanceArchive::CopyFrom(uint64_t *this, const TSWP::TOCEntryInstanceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TOCEntryInstanceArchive::Clear(this);

    return TSWP::TOCEntryInstanceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TOCEntryInstanceArchive::IsInitialized(TSWP::TOCEntryInstanceArchive *this)
{
  if ((~*(this + 4) & 0x75) != 0)
  {
    return 0;
  }

  result = TSP::Reference::IsInitialized(*(this + 5));
  if (result)
  {
    if ((*(this + 16) & 8) == 0)
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

__n128 TSWP::TOCEntryInstanceArchive::InternalSwap(TSWP::TOCEntryInstanceArchive *this, TSWP::TOCEntryInstanceArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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

uint64_t TSWP::UndoTransaction_GenericTransaction::UndoTransaction_GenericTransaction(uint64_t result, uint64_t a2)
{
  *result = &unk_288601860;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

{
  *result = &unk_288601860;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

TSWP::UndoTransaction_GenericTransaction *TSWP::UndoTransaction_GenericTransaction::UndoTransaction_GenericTransaction(TSWP::UndoTransaction_GenericTransaction *this, const TSWP::UndoTransaction_GenericTransaction *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601860;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 3);
  *(this + 8) = *(a2 + 8);
  *(this + 3) = v6;
  return this;
}

void TSWP::UndoTransaction_GenericTransaction::~UndoTransaction_GenericTransaction(TSWP::UndoTransaction_GenericTransaction *this)
{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::UndoTransaction_GenericTransaction::default_instance(TSWP::UndoTransaction_GenericTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_GenericTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_GenericTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_GenericTransaction::Clear(TSWP::UndoTransaction_GenericTransaction *this)
{
  if ((*(this + 16) & 7) != 0)
  {
    *(this + 8) = 0;
    *(this + 3) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::UndoTransaction_GenericTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v30) & 1) == 0)
  {
    while (1)
    {
      v7 = (v30 + 1);
      v8 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
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
        v16 = (v7 + 1);
        LODWORD(v17) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

        v18 = *v16;
        v17 = (v17 + (v18 << 7) - 128);
        if ((v18 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_30:
          v30 = v16;
          *(a1 + 32) = v17;
          goto LABEL_35;
        }

        v28 = google::protobuf::internal::VarintParseSlow32(v7, v17);
        v30 = v28;
        *(a1 + 32) = v29;
        if (!v28)
        {
          goto LABEL_46;
        }
      }

      else if (v10 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v13 = (v7 + 1);
        LODWORD(v14) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        v15 = *v13;
        v14 = (v14 + (v15 << 7) - 128);
        if ((v15 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_25:
          v30 = v13;
          *(a1 + 28) = v14;
          goto LABEL_35;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v14);
        v30 = v24;
        *(a1 + 28) = v25;
        if (!v24)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v10 != 1 || v8 != 8)
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
            sub_276EA4A94((a1 + 8));
          }

          v30 = google::protobuf::internal::UnknownFieldParse();
          if (!v30)
          {
LABEL_46:
            v30 = 0;
            goto LABEL_2;
          }

          goto LABEL_35;
        }

        v5 |= 1u;
        v19 = (v7 + 1);
        LODWORD(v20) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

        v21 = *v19;
        v20 = (v20 + (v21 << 7) - 128);
        if ((v21 & 0x80000000) == 0)
        {
          v19 = (v7 + 2);
LABEL_34:
          v30 = v19;
          *(a1 + 24) = v20;
          goto LABEL_35;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v20);
        v30 = v26;
        *(a1 + 24) = v27;
        if (!v26)
        {
          goto LABEL_46;
        }
      }

LABEL_35:
      if (sub_276EA4A1C(a3, &v30))
      {
        goto LABEL_2;
      }
    }

    v7 = (v30 + 2);
LABEL_6:
    v30 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

unsigned __int8 *TSWP::UndoTransaction_GenericTransaction::_InternalSerialize(TSWP::UndoTransaction_GenericTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
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
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v9 | 0x80;
          v12 = v9 >> 7;
          ++a2;
          v13 = v9 >> 14;
          v9 >>= 7;
        }

        while (v13);
        *(a2 - 1) = v12;
        if ((v5 & 2) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        a2[2] = v9;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_3:
    if ((v5 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_4;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

LABEL_24:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 7);
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    a2[1] = v14;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_35;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 8);
  *a2 = 24;
  if (v6 > 0x7F)
  {
    a2[1] = v6 | 0x80;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v8 | 0x80;
        v10 = v8 >> 7;
        ++a2;
        v11 = v8 >> 14;
        v8 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
    }

    else
    {
      a2[2] = v8;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
  }

LABEL_35:
  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_GenericTransaction::RequiredFieldsByteSizeFallback(TSWP::UndoTransaction_GenericTransaction *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSWP::UndoTransaction_GenericTransaction::ByteSizeLong(TSWP::UndoTransaction_GenericTransaction *this)
{
  if ((~*(this + 4) & 7) != 0)
  {
    v3 = TSWP::UndoTransaction_GenericTransaction::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = vshr_n_u32(vmla_s32(0x4900000049, veor_s8(vclz_s32((*(this + 28) | 0x100000001)), 0x1F0000001FLL), 0x900000009), 6uLL);
    v3 = v2.i32[0] + ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + v2.i32[1] + 3;
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

uint64_t TSWP::UndoTransaction_GenericTransaction::MergeFrom(TSWP::UndoTransaction_GenericTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_GenericTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_GenericTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_GenericTransaction *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          v3[4] |= v5;
          return this;
        }

LABEL_7:
        v3[8] = *(a2 + 8);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

TSWP::UndoTransaction_GenericTransaction *TSWP::UndoTransaction_GenericTransaction::CopyFrom(TSWP::UndoTransaction_GenericTransaction *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_GenericTransaction::Clear(this);

    return TSWP::UndoTransaction_GenericTransaction::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::UndoTransaction_GenericTransaction *TSWP::UndoTransaction_GenericTransaction::CopyFrom(TSWP::UndoTransaction_GenericTransaction *this, const TSWP::UndoTransaction_GenericTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_GenericTransaction::Clear(this);

    return TSWP::UndoTransaction_GenericTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_GenericTransaction::InternalSwap(TSWP::UndoTransaction_GenericTransaction *this, TSWP::UndoTransaction_GenericTransaction *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSWP::UndoTransaction_TextTransaction *TSWP::UndoTransaction_TextTransaction::UndoTransaction_TextTransaction(TSWP::UndoTransaction_TextTransaction *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601910;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_TextTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  return this;
}

TSWP::UndoTransaction_TextTransaction *TSWP::UndoTransaction_TextTransaction::UndoTransaction_TextTransaction(TSWP::UndoTransaction_TextTransaction *this, const TSWP::UndoTransaction_TextTransaction *a2)
{
  *(this + 1) = 0;
  *this = &unk_288601910;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  *(this + 4) = *(a2 + 4);
  return this;
}

void TSWP::UndoTransaction_TextTransaction::~UndoTransaction_TextTransaction(TSWP::UndoTransaction_TextTransaction *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::UndoTransaction_TextTransaction::~UndoTransaction_TextTransaction(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::UndoTransaction_TextTransaction::default_instance(TSWP::UndoTransaction_TextTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_TextTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_TextTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_TextTransaction::Clear(TSWP::UndoTransaction_TextTransaction *this)
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

  if ((v1 & 6) != 0)
  {
    *(this + 4) = 0;
  }

  v4 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v4)
  {
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::UndoTransaction_TextTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v26) & 1) == 0)
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
        goto LABEL_42;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 26)
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
            sub_276EA4A94((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v26 = v13;
        if (!v13)
        {
          goto LABEL_42;
        }

        goto LABEL_33;
      }

      if (v10 == 2)
      {
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
          v26 = v14;
          *(a1 + 36) = v15;
          goto LABEL_33;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v26 = v22;
        *(a1 + 36) = v23;
        if (!v22)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v10 != 1 || v8 != 8)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v17 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_32;
        }

        v19 = *v17;
        v18 = (v18 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_32:
          v26 = v17;
          *(a1 + 32) = v18;
          goto LABEL_33;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v18);
        v26 = v24;
        *(a1 + 32) = v25;
        if (!v24)
        {
LABEL_42:
          v26 = 0;
          goto LABEL_2;
        }
      }

LABEL_33:
      if (sub_276EA4A1C(a3, &v26))
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

unsigned __int8 *TSWP::UndoTransaction_TextTransaction::_InternalSerialize(TSWP::UndoTransaction_TextTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 8);
    *v4 = 8;
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v10 = v9 >> 7;
      if (v9 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v4;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v4 - 1) = v11;
        if ((v6 & 4) != 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v4[2] = v10;
        v4 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v4[1] = v9;
      v4 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_3:
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_18:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(this + 9);
  *v4 = 16;
  if (v13 <= 0x7F)
  {
    v4[1] = v13;
    v4 += 2;
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_4:
    v4 = sub_276E5154C(a3, 3, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
    goto LABEL_5;
  }

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
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4[2] = v14;
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

uint64_t TSWP::UndoTransaction_TextTransaction::RequiredFieldsByteSizeFallback(TSWP::UndoTransaction_TextTransaction *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSWP::UndoTransaction_TextTransaction::ByteSizeLong(TSWP::UndoTransaction_TextTransaction *this)
{
  v2 = *(this + 4);
  if ((~v2 & 6) != 0)
  {
    v3 = TSWP::UndoTransaction_TextTransaction::RequiredFieldsByteSizeFallback(this);
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
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

uint64_t TSWP::UndoTransaction_TextTransaction::MergeFrom(TSWP::UndoTransaction_TextTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_TextTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_TextTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_TextTransaction *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      v3[4] |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          v3[4] |= v5;
          return this;
        }

LABEL_7:
        v3[9] = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[8] = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

TSWP::UndoTransaction_TextTransaction *TSWP::UndoTransaction_TextTransaction::CopyFrom(TSWP::UndoTransaction_TextTransaction *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_TextTransaction::Clear(this);

    return TSWP::UndoTransaction_TextTransaction::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::UndoTransaction_TextTransaction *TSWP::UndoTransaction_TextTransaction::CopyFrom(TSWP::UndoTransaction_TextTransaction *this, const TSWP::UndoTransaction_TextTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_TextTransaction::Clear(this);

    return TSWP::UndoTransaction_TextTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_TextTransaction::InternalSwap(TSWP::UndoTransaction_TextTransaction *this, TSWP::UndoTransaction_TextTransaction *a2)
{
  result = sub_276E4FC00(this + 1, a2 + 1);
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

TSP::Reference *TSWP::UndoTransaction_CharIndexTransaction::clear_object(TSWP::UndoTransaction_CharIndexTransaction *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::UndoTransaction_CharIndexTransaction *TSWP::UndoTransaction_CharIndexTransaction::UndoTransaction_CharIndexTransaction(TSWP::UndoTransaction_CharIndexTransaction *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886019C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_CharIndexTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_2886019C0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_CharIndexTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSWP::UndoTransaction_CharIndexTransaction *TSWP::UndoTransaction_CharIndexTransaction::UndoTransaction_CharIndexTransaction(TSWP::UndoTransaction_CharIndexTransaction *this, const TSWP::UndoTransaction_CharIndexTransaction *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886019C0;
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
  *(this + 4) = *(a2 + 4);
  return this;
}

void TSWP::UndoTransaction_CharIndexTransaction::~UndoTransaction_CharIndexTransaction(TSWP::UndoTransaction_CharIndexTransaction *this)
{
  if (this != &TSWP::_UndoTransaction_CharIndexTransaction_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::UndoTransaction_CharIndexTransaction::~UndoTransaction_CharIndexTransaction(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::UndoTransaction_CharIndexTransaction::default_instance(TSWP::UndoTransaction_CharIndexTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_CharIndexTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_CharIndexTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_CharIndexTransaction::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSP::Reference::Clear(this[3]);
  }

  if ((v2 & 6) != 0)
  {
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::UndoTransaction_CharIndexTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v29) & 1) == 0)
  {
    while (1)
    {
      v7 = (v29 + 1);
      v8 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v9 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_46;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 26)
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

            v19 = MEMORY[0x277CA3250](v18);
            LODWORD(v17) = v19;
            *(a1 + 24) = v19;
            v7 = v29;
          }

          v13 = sub_276F4F9E8(a3, v17, v7);
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
            sub_276EA4A94((a1 + 8));
          }

          v13 = google::protobuf::internal::UnknownFieldParse();
        }

        v29 = v13;
        if (!v13)
        {
          goto LABEL_46;
        }

        goto LABEL_37;
      }

      if (v10 == 2)
      {
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
          v29 = v14;
          *(a1 + 36) = v15;
          goto LABEL_37;
        }

        v25 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v29 = v25;
        *(a1 + 36) = v26;
        if (!v25)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v10 != 1 || v8 != 8)
        {
          goto LABEL_13;
        }

        v5 |= 2u;
        v20 = (v7 + 1);
        LODWORD(v21) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        v22 = *v20;
        v21 = (v21 + (v22 << 7) - 128);
        if ((v22 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_36:
          v29 = v20;
          *(a1 + 32) = v21;
          goto LABEL_37;
        }

        v27 = google::protobuf::internal::VarintParseSlow32(v7, v21);
        v29 = v27;
        *(a1 + 32) = v28;
        if (!v27)
        {
LABEL_46:
          v29 = 0;
          goto LABEL_2;
        }
      }

LABEL_37:
      if (sub_276EA4A1C(a3, &v29))
      {
        goto LABEL_2;
      }
    }

    v7 = (v29 + 2);
LABEL_6:
    v29 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

unsigned __int8 *TSWP::UndoTransaction_CharIndexTransaction::_InternalSerialize(TSWP::UndoTransaction_CharIndexTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 8);
    *a2 = 8;
    if (v9 > 0x7F)
    {
      a2[1] = v9 | 0x80;
      v11 = v9 >> 7;
      if (v9 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v11 | 0x80;
          v16 = v11 >> 7;
          ++a2;
          v17 = v11 >> 14;
          v11 >>= 7;
        }

        while (v17);
        *(a2 - 1) = v16;
        if ((v5 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v9;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_4;
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 9);
  *a2 = 16;
  if (v18 > 0x7F)
  {
    a2[1] = v18 | 0x80;
    v19 = v18 >> 7;
    if (v18 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++a2;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(a2 - 1) = v20;
      if ((v5 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      a2[2] = v19;
      a2 += 3;
      if ((v5 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    a2[1] = v18;
    a2 += 2;
    if ((v5 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 3);
  *a2 = 26;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v10 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v10 | 0x80;
        v12 = v10 >> 7;
        ++v8;
        v13 = v10 >> 14;
        v10 >>= 7;
      }

      while (v13);
      *(v8 - 1) = v12;
    }

    else
    {
      a2[2] = v10;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v6, v8, a3);
LABEL_22:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_CharIndexTransaction::RequiredFieldsByteSizeFallback(TSWP::UndoTransaction_CharIndexTransaction *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSWP::UndoTransaction_CharIndexTransaction::ByteSizeLong(TSWP::UndoTransaction_CharIndexTransaction *this)
{
  v2 = *(this + 4);
  if ((~v2 & 6) != 0)
  {
    v3 = TSWP::UndoTransaction_CharIndexTransaction::RequiredFieldsByteSizeFallback(this);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 9) | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v2)
  {
LABEL_5:
    v4 = TSP::Reference::ByteSizeLong(*(this + 3));
    v3 += v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::UndoTransaction_CharIndexTransaction::MergeFrom(TSWP::UndoTransaction_CharIndexTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_CharIndexTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_CharIndexTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_CharIndexTransaction *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

        v6 = MEMORY[0x277CA3250](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      this = TSP::Reference::MergeFrom(v6, v8);
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
        *(v3 + 36) = *(a2 + 9);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_CharIndexTransaction::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_CharIndexTransaction::Clear(this);

    return TSWP::UndoTransaction_CharIndexTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_CharIndexTransaction::CopyFrom(uint64_t *this, const TSWP::UndoTransaction_CharIndexTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_CharIndexTransaction::Clear(this);

    return TSWP::UndoTransaction_CharIndexTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::UndoTransaction_CharIndexTransaction::IsInitialized(TSWP::UndoTransaction_CharIndexTransaction *this)
{
  v1 = *(this + 4);
  if ((~v1 & 6) != 0)
  {
    return 0;
  }

  if ((v1 & 1) == 0)
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

__n128 TSWP::UndoTransaction_CharIndexTransaction::InternalSwap(TSWP::UndoTransaction_CharIndexTransaction *this, TSWP::UndoTransaction_CharIndexTransaction *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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

void *TSWP::UndoTransaction_ReplaceCharIndexTransaction::UndoTransaction_ReplaceCharIndexTransaction(void *result, uint64_t a2)
{
  *result = &unk_288601A70;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288601A70;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSWP::UndoTransaction_ReplaceCharIndexTransaction *TSWP::UndoTransaction_ReplaceCharIndexTransaction::UndoTransaction_ReplaceCharIndexTransaction(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this, const TSWP::UndoTransaction_ReplaceCharIndexTransaction *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601A70;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 3) = *(a2 + 3);
  return this;
}

void TSWP::UndoTransaction_ReplaceCharIndexTransaction::~UndoTransaction_ReplaceCharIndexTransaction(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this)
{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);
}

{
  sub_276E4E808(this + 1);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::UndoTransaction_ReplaceCharIndexTransaction::default_instance(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_ReplaceCharIndexTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_ReplaceCharIndexTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_ReplaceCharIndexTransaction::Clear(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this)
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
    return sub_276EA4D28(result);
  }

  return result;
}

google::protobuf::internal *TSWP::UndoTransaction_ReplaceCharIndexTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v24) & 1) == 0)
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
        goto LABEL_38;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_12;
        }

        v5 |= 2u;
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
          v24 = v12;
          *(a1 + 28) = v13;
          goto LABEL_29;
        }

        v20 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v24 = v20;
        *(a1 + 28) = v21;
        if (!v20)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v8 >> 3 != 1 || v8 != 8)
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
            sub_276EA4A94((a1 + 8));
          }

          v24 = google::protobuf::internal::UnknownFieldParse();
          if (!v24)
          {
LABEL_38:
            v24 = 0;
            goto LABEL_2;
          }

          goto LABEL_29;
        }

        v5 |= 1u;
        v15 = (v7 + 1);
        LODWORD(v16) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_28;
        }

        v17 = *v15;
        v16 = (v16 + (v17 << 7) - 128);
        if ((v17 & 0x80000000) == 0)
        {
          v15 = (v7 + 2);
LABEL_28:
          v24 = v15;
          *(a1 + 24) = v16;
          goto LABEL_29;
        }

        v22 = google::protobuf::internal::VarintParseSlow32(v7, v16);
        v24 = v22;
        *(a1 + 24) = v23;
        if (!v22)
        {
          goto LABEL_38;
        }
      }

LABEL_29:
      if (sub_276EA4A1C(a3, &v24))
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

unsigned __int8 *TSWP::UndoTransaction_ReplaceCharIndexTransaction::_InternalSerialize(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 8;
    if (v6 <= 0x7F)
    {
      a2[1] = v6;
      a2 += 2;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[1] = v6 | 0x80;
    v7 = v6 >> 7;
    if (v6 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v7 | 0x80;
        v10 = v7 >> 7;
        ++a2;
        v11 = v7 >> 14;
        v7 >>= 7;
      }

      while (v11);
      *(a2 - 1) = v10;
      if ((v5 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 16;
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v9 = v8 >> 7;
    if (v8 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v9 | 0x80;
        v12 = v9 >> 7;
        ++a2;
        v13 = v9 >> 14;
        v9 >>= 7;
      }

      while (v13);
      *(a2 - 1) = v12;
    }

    else
    {
      a2[2] = v9;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v8;
    a2 += 2;
  }

LABEL_23:
  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_ReplaceCharIndexTransaction::RequiredFieldsByteSizeFallback(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSWP::UndoTransaction_ReplaceCharIndexTransaction::ByteSizeLong(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v2 = TSWP::UndoTransaction_ReplaceCharIndexTransaction::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 7) | 1) ^ 0x1F) + 73) >> 6) + 2;
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

uint64_t TSWP::UndoTransaction_ReplaceCharIndexTransaction::MergeFrom(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_ReplaceCharIndexTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_ReplaceCharIndexTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_ReplaceCharIndexTransaction *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

TSWP::UndoTransaction_ReplaceCharIndexTransaction *TSWP::UndoTransaction_ReplaceCharIndexTransaction::CopyFrom(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_ReplaceCharIndexTransaction::Clear(this);

    return TSWP::UndoTransaction_ReplaceCharIndexTransaction::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::UndoTransaction_ReplaceCharIndexTransaction *TSWP::UndoTransaction_ReplaceCharIndexTransaction::CopyFrom(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this, const TSWP::UndoTransaction_ReplaceCharIndexTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_ReplaceCharIndexTransaction::Clear(this);

    return TSWP::UndoTransaction_ReplaceCharIndexTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_ReplaceCharIndexTransaction::InternalSwap(TSWP::UndoTransaction_ReplaceCharIndexTransaction *this, TSWP::UndoTransaction_ReplaceCharIndexTransaction *a2)
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

TSP::Reference *TSWP::UndoTransaction_AttributeIndexTransaction::clear_object(TSWP::UndoTransaction_AttributeIndexTransaction *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::UndoTransaction_AttributeIndexTransaction *TSWP::UndoTransaction_AttributeIndexTransaction::UndoTransaction_AttributeIndexTransaction(TSWP::UndoTransaction_AttributeIndexTransaction *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601B20;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_AttributeIndexTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSWP::UndoTransaction_AttributeIndexTransaction *TSWP::UndoTransaction_AttributeIndexTransaction::UndoTransaction_AttributeIndexTransaction(TSWP::UndoTransaction_AttributeIndexTransaction *this, const TSWP::UndoTransaction_AttributeIndexTransaction *a2)
{
  *(this + 1) = 0;
  *this = &unk_288601B20;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSWP::UndoTransaction_AttributeIndexTransaction::~UndoTransaction_AttributeIndexTransaction(TSWP::UndoTransaction_AttributeIndexTransaction *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (this != &TSWP::_UndoTransaction_AttributeIndexTransaction_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::UndoTransaction_AttributeIndexTransaction::~UndoTransaction_AttributeIndexTransaction(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::UndoTransaction_AttributeIndexTransaction::default_instance(TSWP::UndoTransaction_AttributeIndexTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_AttributeIndexTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_AttributeIndexTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_AttributeIndexTransaction::Clear(uint64_t *this)
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
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}

google::protobuf::internal *TSWP::UndoTransaction_AttributeIndexTransaction::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v29) & 1) == 0)
  {
    while (1)
    {
      v7 = (v29 + 1);
      v8 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v9 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_33;
          }

          *(a1 + 16) |= 2u;
          v19 = *(a1 + 32);
          if (!v19)
          {
            v20 = *(a1 + 8);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = MEMORY[0x277CA3250](v20);
            LODWORD(v19) = v21;
            *(a1 + 32) = v21;
            v7 = v29;
          }

          v15 = sub_276F4F9E8(a3, v19, v7);
        }

        else
        {
          if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 1u;
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v15 = google::protobuf::internal::InlineGreedyStringParser();
            goto LABEL_40;
          }

LABEL_33:
          if (v8)
          {
            v22 = (v8 & 7) == 4;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
        }

LABEL_40:
        v29 = v15;
        if (!v15)
        {
          goto LABEL_50;
        }

        goto LABEL_41;
      }

      if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_33;
        }

        v5 |= 4u;
        v16 = (v7 + 1);
        LODWORD(v17) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        v18 = *v16;
        v17 = (v17 + (v18 << 7) - 128);
        if ((v18 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_26:
          v29 = v16;
          *(a1 + 40) = v17;
          goto LABEL_41;
        }

        v27 = google::protobuf::internal::VarintParseSlow32(v7, v17);
        v29 = v27;
        *(a1 + 40) = v28;
        if (!v27)
        {
LABEL_50:
          v29 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_33;
        }

        v5 |= 8u;
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
          v29 = v12;
          *(a1 + 44) = v13;
          goto LABEL_41;
        }

        v25 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v29 = v25;
        *(a1 + 44) = v26;
        if (!v25)
        {
          goto LABEL_50;
        }
      }

LABEL_41:
      if (sub_276EA4A1C(a3, &v29))
      {
        goto LABEL_2;
      }
    }

    v7 = (v29 + 2);
LABEL_6:
    v29 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v29;
}

unsigned __int8 *TSWP::UndoTransaction_AttributeIndexTransaction::_InternalSerialize(TSWP::UndoTransaction_AttributeIndexTransaction *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 4) == 0)
  {
    if ((v6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_19:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 11);
    *v4 = 16;
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
        if ((v6 & 2) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v4[2] = v14;
        v4 += 3;
        if ((v6 & 2) != 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      v4[1] = v13;
      v4 += 2;
      if ((v6 & 2) != 0)
      {
        goto LABEL_30;
      }
    }

LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 10);
  *v4 = 8;
  if (v9 > 0x7F)
  {
    v4[1] = v9 | 0x80;
    v10 = v9 >> 7;
    if (v9 >> 14)
    {
      v4 += 3;
      do
      {
        *(v4 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v4;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v4 - 1) = v11;
      if ((v6 & 8) != 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4[2] = v10;
      v4 += 3;
      if ((v6 & 8) != 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4[1] = v9;
    v4 += 2;
    if ((v6 & 8) != 0)
    {
      goto LABEL_19;
    }
  }

LABEL_3:
  if ((v6 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_30:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v17 = *(this + 4);
  *v4 = 26;
  v18 = *(v17 + 5);
  if (v18 > 0x7F)
  {
    v4[1] = v18 | 0x80;
    v20 = v18 >> 7;
    if (v18 >> 14)
    {
      v19 = v4 + 3;
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
      v4[2] = v20;
      v19 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v18;
    v19 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v17, v19, a3);
  if (v6)
  {
LABEL_5:
    v4 = sub_276E5154C(a3, 4, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

LABEL_6:
  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::UndoTransaction_AttributeIndexTransaction::RequiredFieldsByteSizeFallback(TSWP::UndoTransaction_AttributeIndexTransaction *this)
{
  v2 = *(this + 4);
  if ((v2 & 4) != 0)
  {
    result = ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = 0;
  if ((v2 & 8) != 0)
  {
LABEL_5:
    result += ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t TSWP::UndoTransaction_AttributeIndexTransaction::ByteSizeLong(TSWP::UndoTransaction_AttributeIndexTransaction *this)
{
  v2 = *(this + 4);
  if ((~v2 & 0xC) != 0)
  {
    v3 = TSWP::UndoTransaction_AttributeIndexTransaction::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v3 = ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(this + 11) | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 2) != 0)
    {
      v7 = TSP::Reference::ByteSizeLong(*(this + 4));
      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

uint64_t TSWP::UndoTransaction_AttributeIndexTransaction::MergeFrom(TSWP::UndoTransaction_AttributeIndexTransaction *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::UndoTransaction_AttributeIndexTransaction::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::UndoTransaction_AttributeIndexTransaction::MergeFrom(uint64_t this, const TSWP::UndoTransaction_AttributeIndexTransaction *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_276EA4CDC((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

      v6 = MEMORY[0x277CA3250](v7);
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

uint64_t *TSWP::UndoTransaction_AttributeIndexTransaction::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_AttributeIndexTransaction::Clear(this);

    return TSWP::UndoTransaction_AttributeIndexTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::UndoTransaction_AttributeIndexTransaction::CopyFrom(uint64_t *this, const TSWP::UndoTransaction_AttributeIndexTransaction *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::UndoTransaction_AttributeIndexTransaction::Clear(this);

    return TSWP::UndoTransaction_AttributeIndexTransaction::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::UndoTransaction_AttributeIndexTransaction::IsInitialized(TSWP::UndoTransaction_AttributeIndexTransaction *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0xC) != 0)
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

__n128 TSWP::UndoTransaction_AttributeIndexTransaction::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276E4FC00(&this->n128_i64[1], &a2->n128_i64[1]);
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

TSP::Reference *TSWP::UndoTransaction_InsertAttributeTransaction::clear_object(TSWP::UndoTransaction_InsertAttributeTransaction *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSWP::UndoTransaction_InsertAttributeTransaction *TSWP::UndoTransaction_InsertAttributeTransaction::UndoTransaction_InsertAttributeTransaction(TSWP::UndoTransaction_InsertAttributeTransaction *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601BD0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_UndoTransaction_InsertAttributeTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSWP::UndoTransaction_InsertAttributeTransaction *TSWP::UndoTransaction_InsertAttributeTransaction::UndoTransaction_InsertAttributeTransaction(TSWP::UndoTransaction_InsertAttributeTransaction *this, const TSWP::UndoTransaction_InsertAttributeTransaction *a2)
{
  *(this + 1) = 0;
  *this = &unk_288601BD0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

void TSWP::UndoTransaction_InsertAttributeTransaction::~UndoTransaction_InsertAttributeTransaction(TSWP::UndoTransaction_InsertAttributeTransaction *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (this != &TSWP::_UndoTransaction_InsertAttributeTransaction_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::UndoTransaction_InsertAttributeTransaction::~UndoTransaction_InsertAttributeTransaction(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::UndoTransaction_InsertAttributeTransaction::default_instance(TSWP::UndoTransaction_InsertAttributeTransaction *this)
{
  if (atomic_load_explicit(scc_info_UndoTransaction_InsertAttributeTransaction_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_UndoTransaction_InsertAttributeTransaction_default_instance_;
}

uint64_t *TSWP::UndoTransaction_InsertAttributeTransaction::Clear(uint64_t *this)
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
  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
  }

  v5 = *(v1 + 8);
  v4 = v1 + 8;
  *(v4 + 8) = 0;
  if (v5)
  {

    return sub_276EA4D28(v4);
  }

  return this;
}