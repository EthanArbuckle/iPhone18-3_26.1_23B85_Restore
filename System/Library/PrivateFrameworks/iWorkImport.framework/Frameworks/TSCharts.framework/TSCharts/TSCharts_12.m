uint64_t TSCH::ChartArchive::clear_category_axis_nonstyles(uint64_t this)
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

uint64_t TSCH::ChartArchive::clear_series_theme_styles(uint64_t this)
{
  v1 = *(this + 152);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 160) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 152) = 0;
  }

  return this;
}

TSP::SparseReferenceArray *TSCH::ChartArchive::clear_series_private_styles(TSCH::ChartArchive *this)
{
  result = *(this + 32);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 10) &= ~0x100u;
  return result;
}

TSP::SparseReferenceArray *TSCH::ChartArchive::clear_series_non_styles(TSCH::ChartArchive *this)
{
  result = *(this + 33);
  if (result)
  {
    result = TSP::SparseReferenceArray::Clear(result);
  }

  *(this + 10) &= ~0x200u;
  return result;
}

uint64_t TSCH::ChartArchive::clear_paragraph_styles(uint64_t this)
{
  v1 = *(this + 176);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (*(this + 184) + 8);
    do
    {
      v4 = *v3++;
      this = TSP::Reference::Clear(v4);
      --v1;
    }

    while (v1);
    *(v2 + 176) = 0;
  }

  return this;
}

TSP::Reference *TSCH::ChartArchive::clear_owned_preset(TSCH::ChartArchive *this)
{
  result = *(this + 34);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 10) &= ~0x400u;
  return result;
}

TSCH::ChartArchive *TSCH::ChartArchive::ChartArchive(TSCH::ChartArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520208;
  *(this + 1) = a2;
  google::protobuf::internal::ExtensionSet::ExtensionSet((this + 16), a2);
  *(this + 18) = a2;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = a2;
  *(this + 12) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = a2;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 21) = a2;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  if (atomic_load_explicit(scc_info_ChartArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 13) = 0u;
  *(this + 12) = 0u;
  *(this + 284) = 0u;
  return this;
}

void sub_2763D8A98(_Unwind_Exception *a1)
{
  v8 = v6;
  sub_276478328(v8);
  sub_276478328(v5);
  sub_276478328(v7);
  sub_276478328(v4);
  sub_276478328(v3);
  sub_276478328(v2);
  MEMORY[0x277C97D50](v1 + 16);
  _Unwind_Resume(a1);
}

TSCH::ChartArchive *TSCH::ChartArchive::ChartArchive(TSCH::ChartArchive *this, const TSCH::ChartArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v39 = (this + 16);
  *this = &unk_288520208;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  *(this + 17) = 0;
  *(this + 52) = 0;
  *(this + 60) = 0;
  *(this + 44) = 0;
  v5 = *(a2 + 14);
  if (v5)
  {
    v6 = *(a2 + 8);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    sub_2763F8D40(this + 48, v7, (v6 + 8), v5, **(this + 8) - *(this + 14));
    v8 = *(this + 14) + v5;
    *(this + 14) = v8;
    v9 = *(this + 8);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v10 = *(a2 + 20);
  if (v10)
  {
    v11 = *(a2 + 11);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_2763F8D40(this + 72, v12, (v11 + 8), v10, **(this + 11) - *(this + 20));
    v13 = *(this + 20) + v10;
    *(this + 20) = v13;
    v14 = *(this + 11);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v15 = *(a2 + 26);
  if (v15)
  {
    v16 = *(a2 + 14);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    sub_2763F8D40(this + 96, v17, (v16 + 8), v15, **(this + 14) - *(this + 26));
    v18 = *(this + 26) + v15;
    *(this + 26) = v18;
    v19 = *(this + 14);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  v20 = *(a2 + 32);
  if (v20)
  {
    v21 = *(a2 + 17);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120));
    sub_2763F8D40(this + 120, v22, (v21 + 8), v20, **(this + 17) - *(this + 32));
    v23 = *(this + 32) + v20;
    *(this + 32) = v23;
    v24 = *(this + 17);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  v25 = *(a2 + 38);
  if (v25)
  {
    v26 = *(a2 + 20);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 144));
    sub_2763F8D40(this + 144, v27, (v26 + 8), v25, **(this + 20) - *(this + 38));
    v28 = *(this + 38) + v25;
    *(this + 38) = v28;
    v29 = *(this + 20);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  v30 = *(a2 + 44);
  if (v30)
  {
    v31 = *(a2 + 23);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 168));
    sub_2763F8D40(this + 168, v32, (v31 + 8), v30, **(this + 23) - *(this + 44));
    v33 = *(this + 44) + v30;
    *(this + 44) = v33;
    v34 = *(this + 23);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 1);
  if (v35)
  {
    sub_2763D4F88(v4, (v35 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  google::protobuf::internal::ExtensionSet::MergeFrom(v39, (a2 + 16));
  v36 = *(a2 + 10);
  if (v36)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v36 & 2) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  if ((v36 & 4) != 0)
  {
    operator new();
  }

  *(this + 26) = 0;
  if ((v36 & 8) != 0)
  {
    operator new();
  }

  *(this + 27) = 0;
  if ((v36 & 0x10) != 0)
  {
    operator new();
  }

  *(this + 28) = 0;
  if ((v36 & 0x20) != 0)
  {
    operator new();
  }

  *(this + 29) = 0;
  if ((v36 & 0x40) != 0)
  {
    operator new();
  }

  *(this + 30) = 0;
  if ((v36 & 0x80) != 0)
  {
    operator new();
  }

  *(this + 31) = 0;
  if ((v36 & 0x100) != 0)
  {
    operator new();
  }

  *(this + 32) = 0;
  if ((v36 & 0x200) != 0)
  {
    operator new();
  }

  *(this + 33) = 0;
  if ((v36 & 0x400) != 0)
  {
    operator new();
  }

  *(this + 34) = 0;
  v37 = *(a2 + 280);
  *(this + 74) = *(a2 + 74);
  *(this + 280) = v37;
  return this;
}

void sub_2763D90A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x277C98580](v16, 0x1081C407D3F2757);
  sub_276478328(v15);
  sub_276478328(v14);
  sub_276478328(v13);
  sub_276478328(v12);
  sub_276478328(v11);
  sub_276478328((v10 + 48));
  MEMORY[0x277C97D50](a10);
  _Unwind_Resume(a1);
}

void TSCH::ChartArchive::~ChartArchive(TSCH::ChartArchive *this)
{
  sub_2763D9230(this);
  sub_2763941F4(this + 1);
  sub_276478328(this + 21);
  sub_276478328(this + 18);
  sub_276478328(this + 15);
  sub_276478328(this + 12);
  sub_276478328(this + 9);
  sub_276478328(this + 6);
  MEMORY[0x277C97D50](this + 16);
}

{
  TSCH::ChartArchive::~ChartArchive(this);

  JUMPOUT(0x277C98580);
}

void *sub_2763D9230(void *result)
{
  if (result != &TSCH::_ChartArchive_default_instance_)
  {
    v1 = result;
    if (result[24])
    {
      v2 = sub_2763FFD8C();
      MEMORY[0x277C98580](v2, 0x10A1C40DFBAE579);
    }

    v3 = v1[25];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C98580]();
    }

    v4 = v1[26];
    if (v4)
    {
      TSCH::ChartGridArchive::~ChartGridArchive(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[27];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C98580]();
    }

    v6 = v1[28];
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C98580]();
    }

    v7 = v1[29];
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x277C98580]();
    }

    v8 = v1[30];
    if (v8)
    {
      TSP::Reference::~Reference(v8);
      MEMORY[0x277C98580]();
    }

    v9 = v1[31];
    if (v9)
    {
      TSP::Reference::~Reference(v9);
      MEMORY[0x277C98580]();
    }

    if (v1[32])
    {
      v10 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v10, 0x10A1C40D5D207CCLL);
    }

    if (v1[33])
    {
      v11 = MEMORY[0x277C97490]();
      MEMORY[0x277C98580](v11, 0x10A1C40D5D207CCLL);
    }

    result = v1[34];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void *TSCH::ChartArchive::default_instance(TSCH::ChartArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartArchive_default_instance_;
}

uint64_t *TSCH::ChartArchive::Clear(TSCH::ChartArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::Clear((this + 16));
  v3 = *(this + 14);
  if (v3 >= 1)
  {
    v4 = (*(this + 8) + 8);
    do
    {
      v5 = *v4++;
      result = TSP::Reference::Clear(v5);
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
      result = TSP::Reference::Clear(v8);
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
      result = TSP::Reference::Clear(v11);
      --v9;
    }

    while (v9);
    *(this + 26) = 0;
  }

  v12 = *(this + 32);
  if (v12 >= 1)
  {
    v13 = (*(this + 17) + 8);
    do
    {
      v14 = *v13++;
      result = TSP::Reference::Clear(v14);
      --v12;
    }

    while (v12);
    *(this + 32) = 0;
  }

  v15 = *(this + 38);
  if (v15 >= 1)
  {
    v16 = (*(this + 20) + 8);
    do
    {
      v17 = *v16++;
      result = TSP::Reference::Clear(v17);
      --v15;
    }

    while (v15);
    *(this + 38) = 0;
  }

  v18 = *(this + 44);
  if (v18 >= 1)
  {
    v19 = (*(this + 23) + 8);
    do
    {
      v20 = *v19++;
      result = TSP::Reference::Clear(v20);
      --v18;
    }

    while (v18);
    *(this + 44) = 0;
  }

  v21 = *(this + 10);
  if (!v21)
  {
    goto LABEL_35;
  }

  if (v21)
  {
    result = sub_2763FFDD0(*(this + 24));
    if ((v21 & 2) == 0)
    {
LABEL_28:
      if ((v21 & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_50;
    }
  }

  else if ((v21 & 2) == 0)
  {
    goto LABEL_28;
  }

  result = TSP::Reference::Clear(*(this + 25));
  if ((v21 & 4) == 0)
  {
LABEL_29:
    if ((v21 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = TSCH::ChartGridArchive::Clear(*(this + 26));
  if ((v21 & 8) == 0)
  {
LABEL_30:
    if ((v21 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = TSP::Reference::Clear(*(this + 27));
  if ((v21 & 0x10) == 0)
  {
LABEL_31:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_32;
    }

LABEL_53:
    result = TSP::Reference::Clear(*(this + 29));
    if ((v21 & 0x40) == 0)
    {
LABEL_33:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    goto LABEL_54;
  }

LABEL_52:
  result = TSP::Reference::Clear(*(this + 28));
  if ((v21 & 0x20) != 0)
  {
    goto LABEL_53;
  }

LABEL_32:
  if ((v21 & 0x40) == 0)
  {
    goto LABEL_33;
  }

LABEL_54:
  result = TSP::Reference::Clear(*(this + 30));
  if ((v21 & 0x80) != 0)
  {
LABEL_34:
    result = TSP::Reference::Clear(*(this + 31));
  }

LABEL_35:
  if ((v21 & 0x700) == 0)
  {
    goto LABEL_40;
  }

  if ((v21 & 0x100) != 0)
  {
    result = TSP::SparseReferenceArray::Clear(*(this + 32));
    if ((v21 & 0x200) == 0)
    {
LABEL_38:
      if ((v21 & 0x400) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }
  }

  else if ((v21 & 0x200) == 0)
  {
    goto LABEL_38;
  }

  result = TSP::SparseReferenceArray::Clear(*(this + 33));
  if ((v21 & 0x400) != 0)
  {
LABEL_39:
    result = TSP::Reference::Clear(*(this + 34));
  }

LABEL_40:
  if ((v21 & 0xF800) != 0)
  {
    *(this + 35) = 0;
    *(this + 286) = 0;
  }

  if ((v21 & 0x30000) != 0)
  {
    *(this + 149) = 0;
    *(this + 294) = 0;
  }

  v23 = *(this + 8);
  v22 = this + 8;
  *(v22 + 8) = 0;
  if (v23)
  {

    return sub_2763D4FD4(v22);
  }

  return result;
}

uint64_t *TSCH::ChartGridArchive::Clear(TSCH::ChartGridArchive *this)
{
  sub_2764778D0(this + 24);
  result = sub_2764778D0(this + 48);
  v3 = *(this + 20);
  if (v3 >= 1)
  {
    v4 = (*(this + 11) + 8);
    do
    {
      v5 = *v4++;
      result = sub_27640567C(v5);
      --v3;
    }

    while (v3);
    *(this + 20) = 0;
  }

  if (*(this + 16))
  {
    result = TSCH::ChartGridArchive_ChartGridRowColumnIdMap::Clear(*(this + 12));
  }

  v7 = *(this + 8);
  v6 = this + 8;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *TSCH::ChartArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v125 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v125) & 1) == 0)
  {
    while (2)
    {
      v7 = (v125 + 1);
      LODWORD(v8) = *v125;
      if (*v125 < 0)
      {
        v8 = (v8 + (*v7 << 7) - 128);
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v125, v8);
          v125 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_220;
          }

          v7 = TagFallback;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 8)
              {
                goto LABEL_193;
              }

              v9 = (v7 + 1);
              v10 = *v7;
              if ((v10 & 0x8000000000000000) == 0)
              {
                goto LABEL_12;
              }

              v11 = *v9;
              v12 = (v11 << 7) + v10;
              LODWORD(v10) = v12 - 128;
              if (v11 < 0)
              {
                v125 = google::protobuf::internal::VarintParseSlow64(v7, (v12 - 128));
                if (!v125)
                {
                  goto LABEL_220;
                }

                LODWORD(v10) = v115;
              }

              else
              {
                v9 = (v7 + 2);
LABEL_12:
                v125 = v9;
              }

              if (sub_2763FFBA0(v10))
              {
                *(a1 + 40) |= 0x800u;
                *(a1 + 280) = v10;
              }

              else
              {
                sub_2764AB61C();
              }

              goto LABEL_173;
            case 2u:
              if (v8 != 16)
              {
                goto LABEL_193;
              }

              v66 = (v7 + 1);
              v67 = *v7;
              if ((v67 & 0x8000000000000000) == 0)
              {
                goto LABEL_106;
              }

              v68 = *v66;
              v69 = (v68 << 7) + v67;
              LODWORD(v67) = v69 - 128;
              if (v68 < 0)
              {
                v125 = google::protobuf::internal::VarintParseSlow64(v7, (v69 - 128));
                if (!v125)
                {
                  goto LABEL_220;
                }

                LODWORD(v67) = v116;
              }

              else
              {
                v66 = (v7 + 2);
LABEL_106:
                v125 = v66;
              }

              if (sub_2763FFBB8(v67))
              {
                *(a1 + 40) |= 0x1000u;
                *(a1 + 284) = v67;
              }

              else
              {
                sub_2764AB5E0();
              }

              goto LABEL_173;
            case 3u:
              if (v8 != 26)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 1u;
              v50 = *(a1 + 192);
              if (!v50)
              {
                v51 = *(a1 + 8);
                if (v51)
                {
                  v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
                }

                v50 = sub_276406958(v51);
                *(a1 + 192) = v50;
                v7 = v125;
              }

              v52 = sub_2764AF400(a3, v50, v7);
              goto LABEL_172;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 2u;
              v32 = *(a1 + 200);
              if (v32)
              {
                goto LABEL_171;
              }

              v62 = *(a1 + 8);
              if (v62)
              {
                v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
              }

              v63 = MEMORY[0x277C97B90](v62);
              LODWORD(v32) = v63;
              *(a1 + 200) = v63;
              goto LABEL_170;
            case 5u:
              if (v8 != 40)
              {
                goto LABEL_193;
              }

              v35 = (v7 + 1);
              v36 = *v7;
              if ((v36 & 0x8000000000000000) == 0)
              {
                goto LABEL_52;
              }

              v37 = *v35;
              v38 = (v37 << 7) + v36;
              LODWORD(v36) = v38 - 128;
              if (v37 < 0)
              {
                v125 = google::protobuf::internal::VarintParseSlow64(v7, (v38 - 128));
                if (!v125)
                {
                  goto LABEL_220;
                }

                LODWORD(v36) = v114;
              }

              else
              {
                v35 = (v7 + 2);
LABEL_52:
                v125 = v35;
              }

              if (sub_2763FFBB8(v36))
              {
                *(a1 + 40) |= 0x2000u;
                *(a1 + 288) = v36;
              }

              else
              {
                sub_2764AB5A4();
              }

              goto LABEL_173;
            case 6u:
              if (v8 != 48)
              {
                goto LABEL_193;
              }

              v5 |= 0x4000u;
              v77 = (v7 + 1);
              v76 = *v7;
              if ((v76 & 0x8000000000000000) == 0)
              {
                goto LABEL_123;
              }

              v78 = *v77;
              v76 = (v78 << 7) + v76 - 128;
              if (v78 < 0)
              {
                v119 = google::protobuf::internal::VarintParseSlow64(v7, v76);
                v125 = v119;
                *(a1 + 292) = v120 != 0;
                if (!v119)
                {
                  goto LABEL_220;
                }
              }

              else
              {
                v77 = (v7 + 2);
LABEL_123:
                v125 = v77;
                *(a1 + 292) = v76 != 0;
              }

              goto LABEL_173;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 4u;
              v91 = *(a1 + 208);
              if (!v91)
              {
                v92 = *(a1 + 8);
                if (v92)
                {
                  v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
                }

                v91 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive>(v92);
                *(a1 + 208) = v91;
                v7 = v125;
              }

              v52 = sub_2764AA548(a3, v91, v7);
              goto LABEL_172;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 8u;
              v32 = *(a1 + 216);
              if (v32)
              {
                goto LABEL_171;
              }

              v64 = *(a1 + 8);
              if (v64)
              {
                v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
              }

              v65 = MEMORY[0x277C97B90](v64);
              LODWORD(v32) = v65;
              *(a1 + 216) = v65;
              goto LABEL_170;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 0x10u;
              v32 = *(a1 + 224);
              if (v32)
              {
                goto LABEL_171;
              }

              v97 = *(a1 + 8);
              if (v97)
              {
                v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
              }

              v98 = MEMORY[0x277C97B90](v97);
              LODWORD(v32) = v98;
              *(a1 + 224) = v98;
              goto LABEL_170;
            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 0x20u;
              v32 = *(a1 + 232);
              if (v32)
              {
                goto LABEL_171;
              }

              v48 = *(a1 + 8);
              if (v48)
              {
                v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
              }

              v49 = MEMORY[0x277C97B90](v48);
              LODWORD(v32) = v49;
              *(a1 + 232) = v49;
              goto LABEL_170;
            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 0x40u;
              v32 = *(a1 + 240);
              if (v32)
              {
                goto LABEL_171;
              }

              v95 = *(a1 + 8);
              if (v95)
              {
                v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
              }

              v96 = MEMORY[0x277C97B90](v95);
              LODWORD(v32) = v96;
              *(a1 + 240) = v96;
              goto LABEL_170;
            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 0x80u;
              v32 = *(a1 + 248);
              if (v32)
              {
                goto LABEL_171;
              }

              v33 = *(a1 + 8);
              if (v33)
              {
                v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
              }

              v34 = MEMORY[0x277C97B90](v33);
              LODWORD(v32) = v34;
              *(a1 + 248) = v34;
              goto LABEL_170;
            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_193;
              }

              v39 = v7 - 1;
              while (1)
              {
                v40 = (v39 + 1);
                v125 = (v39 + 1);
                v41 = *(a1 + 64);
                if (!v41)
                {
                  goto LABEL_58;
                }

                v47 = *(a1 + 56);
                v42 = *v41;
                if (v47 < *v41)
                {
                  *(a1 + 56) = v47 + 1;
                  v44 = *&v41[2 * v47 + 2];
                  goto LABEL_62;
                }

                if (v42 == *(a1 + 60))
                {
LABEL_58:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v41 = *(a1 + 64);
                  v42 = *v41;
                }

                *v41 = v42 + 1;
                v43 = MEMORY[0x277C97B90](*(a1 + 48));
                LODWORD(v44) = v43;
                v45 = *(a1 + 56);
                v46 = *(a1 + 64) + 8 * v45;
                *(a1 + 56) = v45 + 1;
                *(v46 + 8) = v43;
                v40 = v125;
LABEL_62:
                v39 = sub_2764ADCBC(a3, v44, v40);
                v125 = v39;
                if (!v39)
                {
                  goto LABEL_220;
                }

                if (*a3 <= v39 || *v39 != 106)
                {
                  goto LABEL_173;
                }
              }

            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_193;
              }

              v82 = v7 - 1;
              while (1)
              {
                v83 = (v82 + 1);
                v125 = (v82 + 1);
                v84 = *(a1 + 88);
                if (!v84)
                {
                  goto LABEL_132;
                }

                v90 = *(a1 + 80);
                v85 = *v84;
                if (v90 < *v84)
                {
                  *(a1 + 80) = v90 + 1;
                  v87 = *&v84[2 * v90 + 2];
                  goto LABEL_136;
                }

                if (v85 == *(a1 + 84))
                {
LABEL_132:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                  v84 = *(a1 + 88);
                  v85 = *v84;
                }

                *v84 = v85 + 1;
                v86 = MEMORY[0x277C97B90](*(a1 + 72));
                LODWORD(v87) = v86;
                v88 = *(a1 + 80);
                v89 = *(a1 + 88) + 8 * v88;
                *(a1 + 80) = v88 + 1;
                *(v89 + 8) = v86;
                v83 = v125;
LABEL_136:
                v82 = sub_2764ADCBC(a3, v87, v83);
                v125 = v82;
                if (!v82)
                {
                  goto LABEL_220;
                }

                if (*a3 <= v82 || *v82 != 114)
                {
                  goto LABEL_173;
                }
              }

            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_193;
              }

              v23 = v7 - 1;
              while (1)
              {
                v24 = (v23 + 1);
                v125 = (v23 + 1);
                v25 = *(a1 + 112);
                if (!v25)
                {
                  goto LABEL_33;
                }

                v31 = *(a1 + 104);
                v26 = *v25;
                if (v31 < *v25)
                {
                  *(a1 + 104) = v31 + 1;
                  v28 = *&v25[2 * v31 + 2];
                  goto LABEL_37;
                }

                if (v26 == *(a1 + 108))
                {
LABEL_33:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                  v25 = *(a1 + 112);
                  v26 = *v25;
                }

                *v25 = v26 + 1;
                v27 = MEMORY[0x277C97B90](*(a1 + 96));
                LODWORD(v28) = v27;
                v29 = *(a1 + 104);
                v30 = *(a1 + 112) + 8 * v29;
                *(a1 + 104) = v29 + 1;
                *(v30 + 8) = v27;
                v24 = v125;
LABEL_37:
                v23 = sub_2764ADCBC(a3, v28, v24);
                v125 = v23;
                if (!v23)
                {
                  goto LABEL_220;
                }

                if (*a3 <= v23 || *v23 != 122)
                {
                  goto LABEL_173;
                }
              }

            case 0x10u:
              if (v8 != 130)
              {
                goto LABEL_193;
              }

              v53 = v7 - 2;
              while (1)
              {
                v54 = (v53 + 2);
                v125 = (v53 + 2);
                v55 = *(a1 + 136);
                if (!v55)
                {
                  goto LABEL_82;
                }

                v61 = *(a1 + 128);
                v56 = *v55;
                if (v61 < *v55)
                {
                  *(a1 + 128) = v61 + 1;
                  v58 = *&v55[2 * v61 + 2];
                  goto LABEL_86;
                }

                if (v56 == *(a1 + 132))
                {
LABEL_82:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                  v55 = *(a1 + 136);
                  v56 = *v55;
                }

                *v55 = v56 + 1;
                v57 = MEMORY[0x277C97B90](*(a1 + 120));
                LODWORD(v58) = v57;
                v59 = *(a1 + 128);
                v60 = *(a1 + 136) + 8 * v59;
                *(a1 + 128) = v59 + 1;
                *(v60 + 8) = v57;
                v54 = v125;
LABEL_86:
                v53 = sub_2764ADCBC(a3, v58, v54);
                v125 = v53;
                if (!v53)
                {
                  goto LABEL_220;
                }

                if (*a3 <= v53 || *v53 != 386)
                {
                  goto LABEL_173;
                }
              }

            case 0x11u:
              if (v8 != 138)
              {
                goto LABEL_193;
              }

              v14 = v7 - 2;
              while (1)
              {
                v15 = (v14 + 2);
                v125 = (v14 + 2);
                v16 = *(a1 + 160);
                if (!v16)
                {
                  goto LABEL_20;
                }

                v22 = *(a1 + 152);
                v17 = *v16;
                if (v22 < *v16)
                {
                  *(a1 + 152) = v22 + 1;
                  v19 = *&v16[2 * v22 + 2];
                  goto LABEL_24;
                }

                if (v17 == *(a1 + 156))
                {
LABEL_20:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
                  v16 = *(a1 + 160);
                  v17 = *v16;
                }

                *v16 = v17 + 1;
                v18 = MEMORY[0x277C97B90](*(a1 + 144));
                LODWORD(v19) = v18;
                v20 = *(a1 + 152);
                v21 = *(a1 + 160) + 8 * v20;
                *(a1 + 152) = v20 + 1;
                *(v21 + 8) = v18;
                v15 = v125;
LABEL_24:
                v14 = sub_2764ADCBC(a3, v19, v15);
                v125 = v14;
                if (!v14)
                {
                  goto LABEL_220;
                }

                if (*a3 <= v14 || *v14 != 394)
                {
                  goto LABEL_173;
                }
              }

            case 0x12u:
              if (v8 != 146)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 0x100u;
              v70 = *(a1 + 256);
              if (v70)
              {
                goto LABEL_154;
              }

              v71 = *(a1 + 8);
              if (v71)
              {
                v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
              }

              v72 = MEMORY[0x277C97B20](v71);
              LODWORD(v70) = v72;
              *(a1 + 256) = v72;
              goto LABEL_153;
            case 0x13u:
              if (v8 != 154)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 0x200u;
              v70 = *(a1 + 264);
              if (v70)
              {
                goto LABEL_154;
              }

              v93 = *(a1 + 8);
              if (v93)
              {
                v93 = *(v93 & 0xFFFFFFFFFFFFFFFELL);
              }

              v94 = MEMORY[0x277C97B20](v93);
              LODWORD(v70) = v94;
              *(a1 + 264) = v94;
LABEL_153:
              v7 = v125;
LABEL_154:
              v52 = sub_2764B09E4(a3, v70, v7);
              goto LABEL_172;
            case 0x14u:
              if (v8 != 162)
              {
                goto LABEL_193;
              }

              v101 = v7 - 2;
              break;
            case 0x15u:
              if (v8 != 168)
              {
                goto LABEL_193;
              }

              v5 |= 0x20000u;
              v73 = (v7 + 1);
              LODWORD(v74) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_118;
              }

              v75 = *v73;
              v74 = (v74 + (v75 << 7) - 128);
              if (v75 < 0)
              {
                v117 = google::protobuf::internal::VarintParseSlow32(v7, v74);
                v125 = v117;
                *(a1 + 296) = v118;
                if (!v117)
                {
                  goto LABEL_220;
                }
              }

              else
              {
                v73 = (v7 + 2);
LABEL_118:
                v125 = v73;
                *(a1 + 296) = v74;
              }

              goto LABEL_173;
            case 0x16u:
              if (v8 != 176)
              {
                goto LABEL_193;
              }

              v5 |= 0x8000u;
              v80 = (v7 + 1);
              v79 = *v7;
              if ((v79 & 0x8000000000000000) == 0)
              {
                goto LABEL_128;
              }

              v81 = *v80;
              v79 = (v81 << 7) + v79 - 128;
              if (v81 < 0)
              {
                v121 = google::protobuf::internal::VarintParseSlow64(v7, v79);
                v125 = v121;
                *(a1 + 293) = v122 != 0;
                if (!v121)
                {
                  goto LABEL_220;
                }
              }

              else
              {
                v80 = (v7 + 2);
LABEL_128:
                v125 = v80;
                *(a1 + 293) = v79 != 0;
              }

              goto LABEL_173;
            case 0x17u:
              if (v8 != 186)
              {
                goto LABEL_193;
              }

              *(a1 + 40) |= 0x400u;
              v32 = *(a1 + 272);
              if (v32)
              {
                goto LABEL_171;
              }

              v99 = *(a1 + 8);
              if (v99)
              {
                v99 = *(v99 & 0xFFFFFFFFFFFFFFFELL);
              }

              v100 = MEMORY[0x277C97B90](v99);
              LODWORD(v32) = v100;
              *(a1 + 272) = v100;
LABEL_170:
              v7 = v125;
LABEL_171:
              v52 = sub_2764ADCBC(a3, v32, v7);
              goto LABEL_172;
            case 0x18u:
              if (v8 != 192)
              {
                goto LABEL_193;
              }

              v5 |= 0x10000u;
              v111 = (v7 + 1);
              v110 = *v7;
              if ((v110 & 0x8000000000000000) == 0)
              {
                goto LABEL_192;
              }

              v112 = *v111;
              v110 = (v112 << 7) + v110 - 128;
              if (v112 < 0)
              {
                v123 = google::protobuf::internal::VarintParseSlow64(v7, v110);
                v125 = v123;
                *(a1 + 294) = v124 != 0;
                if (!v123)
                {
                  goto LABEL_220;
                }
              }

              else
              {
                v111 = (v7 + 2);
LABEL_192:
                v125 = v111;
                *(a1 + 294) = v110 != 0;
              }

              goto LABEL_173;
            default:
LABEL_193:
              if (v8)
              {
                v113 = (v8 & 7) == 4;
              }

              else
              {
                v113 = 1;
              }

              if (v113)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if (v8 >> 7 < 0x271)
              {
                if ((*(a1 + 8) & 1) == 0)
                {
                  sub_2763D4E10((a1 + 8));
                }

                v52 = google::protobuf::internal::UnknownFieldParse();
              }

              else
              {
                v52 = google::protobuf::internal::ExtensionSet::ParseField();
              }

LABEL_172:
              v125 = v52;
              if (!v52)
              {
LABEL_220:
                v125 = 0;
                goto LABEL_2;
              }

LABEL_173:
              if (sub_2763D4D98(a3, &v125))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v102 = (v101 + 2);
            v125 = (v101 + 2);
            v103 = *(a1 + 184);
            if (!v103)
            {
              goto LABEL_178;
            }

            v109 = *(a1 + 176);
            v104 = *v103;
            if (v109 < *v103)
            {
              *(a1 + 176) = v109 + 1;
              v106 = *&v103[2 * v109 + 2];
              goto LABEL_182;
            }

            if (v104 == *(a1 + 180))
            {
LABEL_178:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
              v103 = *(a1 + 184);
              v104 = *v103;
            }

            *v103 = v104 + 1;
            v105 = MEMORY[0x277C97B90](*(a1 + 168));
            LODWORD(v106) = v105;
            v107 = *(a1 + 176);
            v108 = *(a1 + 184) + 8 * v107;
            *(a1 + 176) = v107 + 1;
            *(v108 + 8) = v105;
            v102 = v125;
LABEL_182:
            v101 = sub_2764ADCBC(a3, v106, v102);
            v125 = v101;
            if (!v101)
            {
              goto LABEL_220;
            }

            if (*a3 <= v101 || *v101 != 418)
            {
              goto LABEL_173;
            }
          }
        }

        v7 = (v125 + 2);
      }

      break;
    }

    v125 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v125;
}

uint64_t TSCH::ChartArchive::_InternalSerialize(TSCH::ChartArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 10);
  if ((v6 & 0x800) == 0)
  {
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v11 = *(this + 71);
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
        if (v6)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v4[2] = v12;
        v4 += 3;
        if (v6)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      v4[1] = v11;
      v4 += 2;
      if (v6)
      {
        goto LABEL_36;
      }
    }

LABEL_4:
    if ((v6 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

  if (*a3 <= a2)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 70);
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
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v4[2] = v8;
      v4 += 3;
      if ((v6 & 0x1000) != 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v4[1] = v7;
    v4 += 2;
    if ((v6 & 0x1000) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_3:
  if ((v6 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_36:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v15 = *(this + 24);
  *v4 = 26;
  v16 = *(v15 + 20);
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

  v4 = sub_2763FFFEC(v15, v17, a3);
  if ((v6 & 2) == 0)
  {
LABEL_5:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

LABEL_56:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v27 = *(this + 72);
    *v4 = 40;
    if (v27 > 0x7F)
    {
      v4[1] = v27 | 0x80;
      v28 = v27 >> 7;
      if (v27 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v28 | 0x80;
          v29 = v28 >> 7;
          ++v4;
          v30 = v28 >> 14;
          v28 >>= 7;
        }

        while (v30);
        *(v4 - 1) = v29;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v4[2] = v28;
        v4 += 3;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_67;
        }
      }
    }

    else
    {
      v4[1] = v27;
      v4 += 2;
      if ((v6 & 0x4000) != 0)
      {
        goto LABEL_67;
      }
    }

LABEL_7:
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_70;
  }

LABEL_46:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v21 = *(this + 25);
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
  if ((v6 & 0x2000) != 0)
  {
    goto LABEL_56;
  }

LABEL_6:
  if ((v6 & 0x4000) == 0)
  {
    goto LABEL_7;
  }

LABEL_67:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v31 = *(this + 292);
  *v4 = 48;
  v4[1] = v31;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_8:
    if ((v6 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_80;
  }

LABEL_70:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(this + 26);
  *v4 = 58;
  v33 = *(v32 + 5);
  if (v33 > 0x7F)
  {
    v4[1] = v33 | 0x80;
    v35 = v33 >> 7;
    if (v33 >> 14)
    {
      v34 = v4 + 3;
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
      v4[2] = v35;
      v34 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v33;
    v34 = v4 + 2;
  }

  v4 = TSCH::ChartGridArchive::_InternalSerialize(v32, v34, a3);
  if ((v6 & 8) == 0)
  {
LABEL_9:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_90;
  }

LABEL_80:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v38 = *(this + 27);
  *v4 = 66;
  v39 = *(v38 + 5);
  if (v39 > 0x7F)
  {
    v4[1] = v39 | 0x80;
    v41 = v39 >> 7;
    if (v39 >> 14)
    {
      v40 = v4 + 3;
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
      v4[2] = v41;
      v40 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v39;
    v40 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v38, v40, a3);
  if ((v6 & 0x10) == 0)
  {
LABEL_10:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_100;
  }

LABEL_90:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v44 = *(this + 28);
  *v4 = 74;
  v45 = *(v44 + 5);
  if (v45 > 0x7F)
  {
    v4[1] = v45 | 0x80;
    v47 = v45 >> 7;
    if (v45 >> 14)
    {
      v46 = v4 + 3;
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
      v4[2] = v47;
      v46 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v45;
    v46 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v44, v46, a3);
  if ((v6 & 0x20) == 0)
  {
LABEL_11:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_110;
  }

LABEL_100:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v50 = *(this + 29);
  *v4 = 82;
  v51 = *(v50 + 5);
  if (v51 > 0x7F)
  {
    v4[1] = v51 | 0x80;
    v53 = v51 >> 7;
    if (v51 >> 14)
    {
      v52 = v4 + 3;
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
      v4[2] = v53;
      v52 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v51;
    v52 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v50, v52, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_12:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_120;
  }

LABEL_110:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v56 = *(this + 30);
  *v4 = 90;
  v57 = *(v56 + 5);
  if (v57 > 0x7F)
  {
    v4[1] = v57 | 0x80;
    v59 = v57 >> 7;
    if (v57 >> 14)
    {
      v58 = v4 + 3;
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
      v4[2] = v59;
      v58 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v57;
    v58 = v4 + 2;
  }

  v4 = TSP::Reference::_InternalSerialize(v56, v58, a3);
  if ((v6 & 0x80) != 0)
  {
LABEL_120:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v62 = *(this + 31);
    *v4 = 98;
    v63 = *(v62 + 5);
    if (v63 > 0x7F)
    {
      v4[1] = v63 | 0x80;
      v65 = v63 >> 7;
      if (v63 >> 14)
      {
        v64 = v4 + 3;
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
        v4[2] = v65;
        v64 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v63;
      v64 = v4 + 2;
    }

    v4 = TSP::Reference::_InternalSerialize(v62, v64, a3);
  }

LABEL_130:
  v68 = *(this + 14);
  if (v68)
  {
    for (i = 0; i != v68; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v70 = *(*(this + 8) + 8 * i + 8);
      *v4 = 106;
      v71 = *(v70 + 5);
      if (v71 > 0x7F)
      {
        v4[1] = v71 | 0x80;
        v73 = v71 >> 7;
        if (v71 >> 14)
        {
          v72 = v4 + 3;
          do
          {
            *(v72 - 1) = v73 | 0x80;
            v74 = v73 >> 7;
            ++v72;
            v75 = v73 >> 14;
            v73 >>= 7;
          }

          while (v75);
          *(v72 - 1) = v74;
        }

        else
        {
          v4[2] = v73;
          v72 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v71;
        v72 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v70, v72, a3);
    }
  }

  v76 = *(this + 20);
  if (v76)
  {
    for (j = 0; j != v76; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v78 = *(*(this + 11) + 8 * j + 8);
      *v4 = 114;
      v79 = *(v78 + 5);
      if (v79 > 0x7F)
      {
        v4[1] = v79 | 0x80;
        v81 = v79 >> 7;
        if (v79 >> 14)
        {
          v80 = v4 + 3;
          do
          {
            *(v80 - 1) = v81 | 0x80;
            v82 = v81 >> 7;
            ++v80;
            v83 = v81 >> 14;
            v81 >>= 7;
          }

          while (v83);
          *(v80 - 1) = v82;
        }

        else
        {
          v4[2] = v81;
          v80 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v79;
        v80 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v78, v80, a3);
    }
  }

  v84 = *(this + 26);
  if (v84)
  {
    for (k = 0; k != v84; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v86 = *(*(this + 14) + 8 * k + 8);
      *v4 = 122;
      v87 = *(v86 + 5);
      if (v87 > 0x7F)
      {
        v4[1] = v87 | 0x80;
        v89 = v87 >> 7;
        if (v87 >> 14)
        {
          v88 = v4 + 3;
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
          v4[2] = v89;
          v88 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v87;
        v88 = v4 + 2;
      }

      v4 = TSP::Reference::_InternalSerialize(v86, v88, a3);
    }
  }

  v92 = *(this + 32);
  if (v92)
  {
    for (m = 0; m != v92; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v94 = *(*(this + 17) + 8 * m + 8);
      *v4 = 386;
      v95 = *(v94 + 5);
      if (v95 > 0x7F)
      {
        v4[2] = v95 | 0x80;
        v97 = v95 >> 7;
        if (v95 >> 14)
        {
          v96 = v4 + 4;
          do
          {
            *(v96 - 1) = v97 | 0x80;
            v98 = v97 >> 7;
            ++v96;
            v99 = v97 >> 14;
            v97 >>= 7;
          }

          while (v99);
          *(v96 - 1) = v98;
        }

        else
        {
          v4[3] = v97;
          v96 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v95;
        v96 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v94, v96, a3);
    }
  }

  v100 = *(this + 38);
  if (v100)
  {
    for (n = 0; n != v100; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v102 = *(*(this + 20) + 8 * n + 8);
      *v4 = 394;
      v103 = *(v102 + 5);
      if (v103 > 0x7F)
      {
        v4[2] = v103 | 0x80;
        v105 = v103 >> 7;
        if (v103 >> 14)
        {
          v104 = v4 + 4;
          do
          {
            *(v104 - 1) = v105 | 0x80;
            v106 = v105 >> 7;
            ++v104;
            v107 = v105 >> 14;
            v105 >>= 7;
          }

          while (v107);
          *(v104 - 1) = v106;
        }

        else
        {
          v4[3] = v105;
          v104 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v103;
        v104 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v102, v104, a3);
    }
  }

  if ((v6 & 0x100) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v108 = *(this + 32);
    *v4 = 402;
    v109 = *(v108 + 5);
    if (v109 > 0x7F)
    {
      v4[2] = v109 | 0x80;
      v111 = v109 >> 7;
      if (v109 >> 14)
      {
        v110 = v4 + 4;
        do
        {
          *(v110 - 1) = v111 | 0x80;
          v112 = v111 >> 7;
          ++v110;
          v113 = v111 >> 14;
          v111 >>= 7;
        }

        while (v113);
        *(v110 - 1) = v112;
      }

      else
      {
        v4[3] = v111;
        v110 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v109;
      v110 = v4 + 3;
    }

    v4 = TSP::SparseReferenceArray::_InternalSerialize(v108, v110, a3);
  }

  if ((v6 & 0x200) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v114 = *(this + 33);
    *v4 = 410;
    v115 = *(v114 + 5);
    if (v115 > 0x7F)
    {
      v4[2] = v115 | 0x80;
      v117 = v115 >> 7;
      if (v115 >> 14)
      {
        v116 = v4 + 4;
        do
        {
          *(v116 - 1) = v117 | 0x80;
          v118 = v117 >> 7;
          ++v116;
          v119 = v117 >> 14;
          v117 >>= 7;
        }

        while (v119);
        *(v116 - 1) = v118;
      }

      else
      {
        v4[3] = v117;
        v116 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v115;
      v116 = v4 + 3;
    }

    v4 = TSP::SparseReferenceArray::_InternalSerialize(v114, v116, a3);
  }

  v120 = *(this + 44);
  if (v120)
  {
    for (ii = 0; ii != v120; ++ii)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v122 = *(*(this + 23) + 8 * ii + 8);
      *v4 = 418;
      v123 = *(v122 + 5);
      if (v123 > 0x7F)
      {
        v4[2] = v123 | 0x80;
        v125 = v123 >> 7;
        if (v123 >> 14)
        {
          v124 = v4 + 4;
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
          v4[3] = v125;
          v124 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v123;
        v124 = v4 + 3;
      }

      v4 = TSP::Reference::_InternalSerialize(v122, v124, a3);
    }
  }

  if ((v6 & 0x20000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v128 = *(this + 74);
    *v4 = 424;
    if (v128 > 0x7F)
    {
      v4[2] = v128 | 0x80;
      v129 = v128 >> 7;
      if (v128 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v129 | 0x80;
          v130 = v129 >> 7;
          ++v4;
          v131 = v129 >> 14;
          v129 >>= 7;
        }

        while (v131);
        *(v4 - 1) = v130;
        if ((v6 & 0x8000) != 0)
        {
          goto LABEL_240;
        }
      }

      else
      {
        v4[3] = v129;
        v4 += 4;
        if ((v6 & 0x8000) != 0)
        {
          goto LABEL_240;
        }
      }
    }

    else
    {
      v4[2] = v128;
      v4 += 3;
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_240;
      }
    }

LABEL_226:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_243;
  }

  if ((v6 & 0x8000) == 0)
  {
    goto LABEL_226;
  }

LABEL_240:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v132 = *(this + 293);
  *v4 = 432;
  v4[2] = v132;
  v4 += 3;
  if ((v6 & 0x400) == 0)
  {
LABEL_227:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_256;
    }

    goto LABEL_253;
  }

LABEL_243:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v133 = *(this + 34);
  *v4 = 442;
  v134 = *(v133 + 5);
  if (v134 > 0x7F)
  {
    v4[2] = v134 | 0x80;
    v136 = v134 >> 7;
    if (v134 >> 14)
    {
      v135 = v4 + 4;
      do
      {
        *(v135 - 1) = v136 | 0x80;
        v137 = v136 >> 7;
        ++v135;
        v138 = v136 >> 14;
        v136 >>= 7;
      }

      while (v138);
      *(v135 - 1) = v137;
    }

    else
    {
      v4[3] = v136;
      v135 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v134;
    v135 = v4 + 3;
  }

  v4 = TSP::Reference::_InternalSerialize(v133, v135, a3);
  if ((v6 & 0x10000) != 0)
  {
LABEL_253:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v139 = *(this + 294);
    *v4 = 448;
    v4[2] = v139;
    v4 += 3;
  }

LABEL_256:
  result = google::protobuf::internal::ExtensionSet::_InternalSerialize((this + 16), 10000, 0x20000000, v4, a3);
  v141 = *(this + 1);
  if (v141)
  {

    return MEMORY[0x2821EAC40]((v141 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

uint64_t TSCH::ChartArchive::ByteSizeLong(TSCH::ChartArchive *this)
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
      v9 = TSP::Reference::ByteSizeLong(v8);
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
      v16 = TSP::Reference::ByteSizeLong(v15);
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
      v23 = TSP::Reference::ByteSizeLong(v22);
      v18 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      v21 -= 8;
    }

    while (v21);
  }

  v24 = *(this + 32);
  v25 = v18 + 2 * v24;
  v26 = *(this + 17);
  if (v26)
  {
    v27 = (v26 + 8);
  }

  else
  {
    v27 = 0;
  }

  if (v24)
  {
    v28 = 8 * v24;
    do
    {
      v29 = *v27++;
      v30 = TSP::Reference::ByteSizeLong(v29);
      v25 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6);
      v28 -= 8;
    }

    while (v28);
  }

  v31 = *(this + 38);
  v32 = v25 + 2 * v31;
  v33 = *(this + 20);
  if (v33)
  {
    v34 = (v33 + 8);
  }

  else
  {
    v34 = 0;
  }

  if (v31)
  {
    v35 = 8 * v31;
    do
    {
      v36 = *v34++;
      v37 = TSP::Reference::ByteSizeLong(v36);
      v32 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6);
      v35 -= 8;
    }

    while (v35);
  }

  v38 = *(this + 44);
  v39 = v32 + 2 * v38;
  v40 = *(this + 23);
  if (v40)
  {
    v41 = (v40 + 8);
  }

  else
  {
    v41 = 0;
  }

  if (v38)
  {
    v42 = 8 * v38;
    do
    {
      v43 = *v41++;
      v44 = TSP::Reference::ByteSizeLong(v43);
      v39 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6);
      v42 -= 8;
    }

    while (v42);
  }

  v45 = *(this + 10);
  if (!*(this + 10))
  {
    goto LABEL_47;
  }

  if (v45)
  {
    v51 = sub_276400210(*(this + 24));
    v39 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v45 & 2) == 0)
    {
LABEL_40:
      if ((v45 & 4) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_70;
    }
  }

  else if ((v45 & 2) == 0)
  {
    goto LABEL_40;
  }

  v52 = TSP::Reference::ByteSizeLong(*(this + 25));
  v39 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v45 & 4) == 0)
  {
LABEL_41:
    if ((v45 & 8) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_71;
  }

LABEL_70:
  v53 = TSCH::ChartGridArchive::ByteSizeLong(*(this + 26));
  v39 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v45 & 8) == 0)
  {
LABEL_42:
    if ((v45 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

LABEL_71:
  v54 = TSP::Reference::ByteSizeLong(*(this + 27));
  v39 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v45 & 0x10) == 0)
  {
LABEL_43:
    if ((v45 & 0x20) == 0)
    {
      goto LABEL_44;
    }

LABEL_73:
    v56 = TSP::Reference::ByteSizeLong(*(this + 29));
    v39 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v45 & 0x40) == 0)
    {
LABEL_45:
      if ((v45 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    goto LABEL_74;
  }

LABEL_72:
  v55 = TSP::Reference::ByteSizeLong(*(this + 28));
  v39 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v45 & 0x20) != 0)
  {
    goto LABEL_73;
  }

LABEL_44:
  if ((v45 & 0x40) == 0)
  {
    goto LABEL_45;
  }

LABEL_74:
  v57 = TSP::Reference::ByteSizeLong(*(this + 30));
  v39 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v45 & 0x80) != 0)
  {
LABEL_46:
    v46 = TSP::Reference::ByteSizeLong(*(this + 31));
    v39 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_47:
  if ((v45 & 0xFF00) == 0)
  {
    goto LABEL_61;
  }

  if ((v45 & 0x100) != 0)
  {
    v58 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 32));
    v39 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v45 & 0x200) == 0)
    {
LABEL_50:
      if ((v45 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_78;
    }
  }

  else if ((v45 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  v59 = TSP::SparseReferenceArray::ByteSizeLong(*(this + 33));
  v39 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v45 & 0x400) == 0)
  {
LABEL_51:
    if ((v45 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_79;
  }

LABEL_78:
  v60 = TSP::Reference::ByteSizeLong(*(this + 34));
  v39 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v45 & 0x800) == 0)
  {
LABEL_52:
    if ((v45 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

LABEL_83:
    v64 = *(this + 71);
    v65 = ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v64 >= 0)
    {
      v66 = v65;
    }

    else
    {
      v66 = 11;
    }

    v39 += v66;
    if ((v45 & 0x2000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

LABEL_79:
  v61 = *(this + 70);
  v62 = ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v61 >= 0)
  {
    v63 = v62;
  }

  else
  {
    v63 = 11;
  }

  v39 += v63;
  if ((v45 & 0x1000) != 0)
  {
    goto LABEL_83;
  }

LABEL_53:
  if ((v45 & 0x2000) != 0)
  {
LABEL_54:
    v47 = *(this + 72);
    v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v47 >= 0)
    {
      v49 = v48;
    }

    else
    {
      v49 = 11;
    }

    v39 += v49;
  }

LABEL_58:
  if ((v45 & 0x8000) != 0)
  {
    v39 += ((v45 >> 13) & 2) + 3;
  }

  else
  {
    v39 += (v45 >> 13) & 2;
  }

LABEL_61:
  if ((v45 & 0x30000) != 0)
  {
    if ((v45 & 0x10000) != 0)
    {
      v39 += 3;
    }

    if ((v45 & 0x20000) != 0)
    {
      v39 += ((9 * (__clz(*(this + 74) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 11) = v39;
    return v39;
  }
}

uint64_t TSCH::ChartArchive::MergeFrom(TSCH::ChartArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartArchive::MergeFrom(TSCH::ChartArchive *this, const TSCH::ChartArchive *a2)
{
  result = google::protobuf::internal::ExtensionSet::MergeFrom((this + 16), (a2 + 16));
  v5 = *(a2 + 1);
  if (v5)
  {
    result = sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 14);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 48));
    result = sub_2763F8D40(this + 48, v8, (v7 + 8), v6, **(this + 8) - *(this + 14));
    v9 = *(this + 14) + v6;
    *(this + 14) = v9;
    v10 = *(this + 8);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  v11 = *(a2 + 20);
  if (v11)
  {
    v12 = *(a2 + 11);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    result = sub_2763F8D40(this + 72, v13, (v12 + 8), v11, **(this + 11) - *(this + 20));
    v14 = *(this + 20) + v11;
    *(this + 20) = v14;
    v15 = *(this + 11);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  v16 = *(a2 + 26);
  if (v16)
  {
    v17 = *(a2 + 14);
    v18 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 96));
    result = sub_2763F8D40(this + 96, v18, (v17 + 8), v16, **(this + 14) - *(this + 26));
    v19 = *(this + 26) + v16;
    *(this + 26) = v19;
    v20 = *(this + 14);
    if (*v20 < v19)
    {
      *v20 = v19;
    }
  }

  v21 = *(a2 + 32);
  if (v21)
  {
    v22 = *(a2 + 17);
    v23 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 120));
    result = sub_2763F8D40(this + 120, v23, (v22 + 8), v21, **(this + 17) - *(this + 32));
    v24 = *(this + 32) + v21;
    *(this + 32) = v24;
    v25 = *(this + 17);
    if (*v25 < v24)
    {
      *v25 = v24;
    }
  }

  v26 = *(a2 + 38);
  if (v26)
  {
    v27 = *(a2 + 20);
    v28 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 144));
    result = sub_2763F8D40(this + 144, v28, (v27 + 8), v26, **(this + 20) - *(this + 38));
    v29 = *(this + 38) + v26;
    *(this + 38) = v29;
    v30 = *(this + 20);
    if (*v30 < v29)
    {
      *v30 = v29;
    }
  }

  v31 = *(a2 + 44);
  if (v31)
  {
    v32 = *(a2 + 23);
    v33 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 168));
    result = sub_2763F8D40(this + 168, v33, (v32 + 8), v31, **(this + 23) - *(this + 44));
    v34 = *(this + 44) + v31;
    *(this + 44) = v34;
    v35 = *(this + 23);
    if (*v35 < v34)
    {
      *v35 = v34;
    }
  }

  v36 = *(a2 + 10);
  if (!v36)
  {
    goto LABEL_95;
  }

  if (v36)
  {
    *(this + 10) |= 1u;
    v37 = *(this + 24);
    if (!v37)
    {
      v38 = *(this + 1);
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      v37 = sub_276406958(v38);
      *(this + 24) = v37;
    }

    if (*(a2 + 24))
    {
      v39 = *(a2 + 24);
    }

    else
    {
      v39 = &qword_2812F0190;
    }

    result = sub_27640038C(v37, v39);
  }

  v40 = MEMORY[0x277D80A18];
  if ((v36 & 2) != 0)
  {
    *(this + 10) |= 2u;
    v41 = *(this + 25);
    if (!v41)
    {
      v42 = *(this + 1);
      if (v42)
      {
        v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
      }

      v41 = MEMORY[0x277C97B90](v42);
      *(this + 25) = v41;
    }

    if (*(a2 + 25))
    {
      v43 = *(a2 + 25);
    }

    else
    {
      v43 = v40;
    }

    result = TSP::Reference::MergeFrom(v41, v43);
    if ((v36 & 4) == 0)
    {
LABEL_33:
      if ((v36 & 8) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_55;
    }
  }

  else if ((v36 & 4) == 0)
  {
    goto LABEL_33;
  }

  *(this + 10) |= 4u;
  v44 = *(this + 26);
  if (!v44)
  {
    v45 = *(this + 1);
    if (v45)
    {
      v45 = *(v45 & 0xFFFFFFFFFFFFFFFELL);
    }

    v44 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive>(v45);
    *(this + 26) = v44;
  }

  if (*(a2 + 26))
  {
    v46 = *(a2 + 26);
  }

  else
  {
    v46 = &TSCH::_ChartGridArchive_default_instance_;
  }

  result = TSCH::ChartGridArchive::MergeFrom(v44, v46);
  if ((v36 & 8) == 0)
  {
LABEL_34:
    if ((v36 & 0x10) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_63;
  }

LABEL_55:
  *(this + 10) |= 8u;
  v47 = *(this + 27);
  if (!v47)
  {
    v48 = *(this + 1);
    if (v48)
    {
      v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
    }

    v47 = MEMORY[0x277C97B90](v48);
    *(this + 27) = v47;
  }

  if (*(a2 + 27))
  {
    v49 = *(a2 + 27);
  }

  else
  {
    v49 = v40;
  }

  result = TSP::Reference::MergeFrom(v47, v49);
  if ((v36 & 0x10) == 0)
  {
LABEL_35:
    if ((v36 & 0x20) == 0)
    {
      goto LABEL_36;
    }

LABEL_71:
    *(this + 10) |= 0x20u;
    v53 = *(this + 29);
    if (!v53)
    {
      v54 = *(this + 1);
      if (v54)
      {
        v54 = *(v54 & 0xFFFFFFFFFFFFFFFELL);
      }

      v53 = MEMORY[0x277C97B90](v54);
      *(this + 29) = v53;
    }

    if (*(a2 + 29))
    {
      v55 = *(a2 + 29);
    }

    else
    {
      v55 = v40;
    }

    result = TSP::Reference::MergeFrom(v53, v55);
    if ((v36 & 0x40) == 0)
    {
LABEL_37:
      if ((v36 & 0x80) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_87;
    }

    goto LABEL_79;
  }

LABEL_63:
  *(this + 10) |= 0x10u;
  v50 = *(this + 28);
  if (!v50)
  {
    v51 = *(this + 1);
    if (v51)
    {
      v51 = *(v51 & 0xFFFFFFFFFFFFFFFELL);
    }

    v50 = MEMORY[0x277C97B90](v51);
    *(this + 28) = v50;
  }

  if (*(a2 + 28))
  {
    v52 = *(a2 + 28);
  }

  else
  {
    v52 = v40;
  }

  result = TSP::Reference::MergeFrom(v50, v52);
  if ((v36 & 0x20) != 0)
  {
    goto LABEL_71;
  }

LABEL_36:
  if ((v36 & 0x40) == 0)
  {
    goto LABEL_37;
  }

LABEL_79:
  *(this + 10) |= 0x40u;
  v56 = *(this + 30);
  if (!v56)
  {
    v57 = *(this + 1);
    if (v57)
    {
      v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
    }

    v56 = MEMORY[0x277C97B90](v57);
    *(this + 30) = v56;
  }

  if (*(a2 + 30))
  {
    v58 = *(a2 + 30);
  }

  else
  {
    v58 = v40;
  }

  result = TSP::Reference::MergeFrom(v56, v58);
  if ((v36 & 0x80) != 0)
  {
LABEL_87:
    *(this + 10) |= 0x80u;
    v59 = *(this + 31);
    if (!v59)
    {
      v60 = *(this + 1);
      if (v60)
      {
        v60 = *(v60 & 0xFFFFFFFFFFFFFFFELL);
      }

      v59 = MEMORY[0x277C97B90](v60);
      *(this + 31) = v59;
    }

    if (*(a2 + 31))
    {
      v61 = *(a2 + 31);
    }

    else
    {
      v61 = v40;
    }

    result = TSP::Reference::MergeFrom(v59, v61);
  }

LABEL_95:
  if ((v36 & 0xFF00) == 0)
  {
    goto LABEL_106;
  }

  v62 = MEMORY[0x277D80A68];
  if ((v36 & 0x100) != 0)
  {
    *(this + 10) |= 0x100u;
    v63 = *(this + 32);
    if (!v63)
    {
      v64 = *(this + 1);
      if (v64)
      {
        v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
      }

      v63 = MEMORY[0x277C97B20](v64);
      *(this + 32) = v63;
    }

    if (*(a2 + 32))
    {
      v65 = *(a2 + 32);
    }

    else
    {
      v65 = v62;
    }

    result = TSP::SparseReferenceArray::MergeFrom(v63, v65);
    if ((v36 & 0x200) == 0)
    {
LABEL_98:
      if ((v36 & 0x400) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_129;
    }
  }

  else if ((v36 & 0x200) == 0)
  {
    goto LABEL_98;
  }

  *(this + 10) |= 0x200u;
  v66 = *(this + 33);
  if (!v66)
  {
    v67 = *(this + 1);
    if (v67)
    {
      v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
    }

    v66 = MEMORY[0x277C97B20](v67);
    *(this + 33) = v66;
  }

  if (*(a2 + 33))
  {
    v68 = *(a2 + 33);
  }

  else
  {
    v68 = v62;
  }

  result = TSP::SparseReferenceArray::MergeFrom(v66, v68);
  if ((v36 & 0x400) == 0)
  {
LABEL_99:
    if ((v36 & 0x800) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_137;
  }

LABEL_129:
  *(this + 10) |= 0x400u;
  v69 = *(this + 34);
  if (!v69)
  {
    v70 = *(this + 1);
    if (v70)
    {
      v70 = *(v70 & 0xFFFFFFFFFFFFFFFELL);
    }

    v69 = MEMORY[0x277C97B90](v70);
    *(this + 34) = v69;
  }

  if (*(a2 + 34))
  {
    v71 = *(a2 + 34);
  }

  else
  {
    v71 = MEMORY[0x277D80A18];
  }

  result = TSP::Reference::MergeFrom(v69, v71);
  if ((v36 & 0x800) == 0)
  {
LABEL_100:
    if ((v36 & 0x1000) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_138;
  }

LABEL_137:
  *(this + 70) = *(a2 + 70);
  if ((v36 & 0x1000) == 0)
  {
LABEL_101:
    if ((v36 & 0x2000) == 0)
    {
      goto LABEL_102;
    }

    goto LABEL_139;
  }

LABEL_138:
  *(this + 71) = *(a2 + 71);
  if ((v36 & 0x2000) == 0)
  {
LABEL_102:
    if ((v36 & 0x4000) == 0)
    {
      goto LABEL_103;
    }

LABEL_140:
    *(this + 292) = *(a2 + 292);
    if ((v36 & 0x8000) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

LABEL_139:
  *(this + 72) = *(a2 + 72);
  if ((v36 & 0x4000) != 0)
  {
    goto LABEL_140;
  }

LABEL_103:
  if ((v36 & 0x8000) != 0)
  {
LABEL_104:
    *(this + 293) = *(a2 + 293);
  }

LABEL_105:
  *(this + 10) |= v36;
LABEL_106:
  if ((v36 & 0x30000) != 0)
  {
    if ((v36 & 0x10000) != 0)
    {
      *(this + 294) = *(a2 + 294);
    }

    if ((v36 & 0x20000) != 0)
    {
      *(this + 74) = *(a2 + 74);
    }

    *(this + 10) |= v36;
  }

  return result;
}

uint64_t TSCH::ChartGridArchive::MergeFrom(uint64_t this, const TSCH::ChartGridArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    this = sub_2763F8F34((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    this = sub_2763F8F34((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_2763F8FE0(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  if (*(a2 + 16))
  {
    v20 = *(a2 + 12);
    *(v3 + 16) |= 1u;
    v21 = *(v3 + 96);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive_ChartGridRowColumnIdMap>(v22);
      *(v3 + 96) = v21;
      v20 = *(a2 + 12);
    }

    if (v20)
    {
      v23 = v20;
    }

    else
    {
      v23 = &TSCH::_ChartGridArchive_ChartGridRowColumnIdMap_default_instance_;
    }

    return TSCH::ChartGridArchive_ChartGridRowColumnIdMap::MergeFrom(v21, v23);
  }

  return this;
}

TSCH::ChartArchive *TSCH::ChartArchive::CopyFrom(TSCH::ChartArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartArchive::Clear(this);

    return TSCH::ChartArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::ChartArchive *TSCH::ChartArchive::CopyFrom(TSCH::ChartArchive *this, const TSCH::ChartArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartArchive::Clear(this);

    return TSCH::ChartArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::ChartArchive::IsInitialized(TSCH::ChartArchive *this)
{
  result = google::protobuf::internal::ExtensionSet::IsInitialized((this + 16));
  if (result)
  {
    v3 = *(this + 14);
    while (v3 >= 1)
    {
      v4 = v3 - 1;
      IsInitialized = TSP::Reference::IsInitialized(*(*(this + 8) + 8 * v3));
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
      v8 = TSP::Reference::IsInitialized(*(*(this + 11) + 8 * v6));
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
      v11 = TSP::Reference::IsInitialized(*(*(this + 14) + 8 * v9));
      v9 = v10;
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    v12 = *(this + 32);
    while (v12 >= 1)
    {
      v13 = v12 - 1;
      v14 = TSP::Reference::IsInitialized(*(*(this + 17) + 8 * v12));
      v12 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    v15 = *(this + 38);
    while (v15 >= 1)
    {
      v16 = v15 - 1;
      v17 = TSP::Reference::IsInitialized(*(*(this + 20) + 8 * v15));
      result = 0;
      v15 = v16;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    v18 = *(this + 44);
    while (v18 >= 1)
    {
      v19 = v18 - 1;
      v20 = TSP::Reference::IsInitialized(*(*(this + 23) + 8 * v18));
      result = 0;
      v18 = v19;
      if ((v20 & 1) == 0)
      {
        return result;
      }
    }

    v21 = *(this + 10);
    if (v21)
    {
      result = sub_2764004DC(*(this + 24));
      if (!result)
      {
        return result;
      }

      v21 = *(this + 10);
    }

    if ((v21 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(this + 25));
      if (!result)
      {
        return result;
      }

      v21 = *(this + 10);
    }

    if ((v21 & 4) == 0 || (v22 = *(this + 26), (*(v22 + 16) & 1) == 0) || (result = TSCH::ChartGridArchive_ChartGridRowColumnIdMap::IsInitialized(*(v22 + 96)), result))
    {
      if ((v21 & 8) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 27));
        if (!result)
        {
          return result;
        }

        v21 = *(this + 10);
      }

      if ((v21 & 0x10) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 28));
        if (!result)
        {
          return result;
        }

        v21 = *(this + 10);
      }

      if ((v21 & 0x20) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 29));
        if (!result)
        {
          return result;
        }

        v21 = *(this + 10);
      }

      if ((v21 & 0x40) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 30));
        if (!result)
        {
          return result;
        }

        v21 = *(this + 10);
      }

      if ((v21 & 0x80) != 0)
      {
        result = TSP::Reference::IsInitialized(*(this + 31));
        if (!result)
        {
          return result;
        }

        v21 = *(this + 10);
      }

      if ((v21 & 0x100) != 0)
      {
        result = TSP::SparseReferenceArray::IsInitialized(*(this + 32));
        if (!result)
        {
          return result;
        }

        v21 = *(this + 10);
      }

      if ((v21 & 0x200) != 0)
      {
        result = TSP::SparseReferenceArray::IsInitialized(*(this + 33));
        if (!result)
        {
          return result;
        }

        v21 = *(this + 10);
      }

      if ((v21 & 0x400) == 0)
      {
        return 1;
      }

      result = TSP::Reference::IsInitialized(*(this + 34));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL TSCH::ChartGridArchive::IsInitialized(TSCH::ChartGridArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSCH::ChartGridArchive_ChartGridRowColumnIdMap::IsInitialized(*(this + 12));
  if (result)
  {
    return 1;
  }

  return result;
}

double TSCH::ChartArchive::InternalSwap(TSCH::ChartArchive *this, TSCH::ChartArchive *a2)
{
  google::protobuf::internal::ExtensionSet::Swap((this + 16), (a2 + 16));
  sub_2763948BC(this + 1, a2 + 1);
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
  v11 = *(this + 16);
  v12 = *(this + 17);
  *(this + 8) = *(a2 + 8);
  *(a2 + 16) = v11;
  *(a2 + 17) = v12;
  v13 = *(this + 19);
  v14 = *(this + 20);
  *(this + 152) = *(a2 + 152);
  *(a2 + 19) = v13;
  *(a2 + 20) = v14;
  v15 = *(this + 22);
  v16 = *(this + 23);
  *(this + 11) = *(a2 + 11);
  *(a2 + 22) = v15;
  *(a2 + 23) = v16;
  v17 = *(this + 24);
  v18 = *(this + 25);
  *(this + 12) = *(a2 + 12);
  *(a2 + 24) = v17;
  *(a2 + 25) = v18;

  *&result = sub_2763D508C(this + 26, a2 + 208).n128_u64[0];
  return result;
}

uint64_t TSCH::ChartMultiDataIndexUpgrade::ChartMultiDataIndexUpgrade(uint64_t result, uint64_t a2)
{
  *result = &unk_2885202B8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_2885202B8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSCH::ChartMultiDataIndexUpgrade *TSCH::ChartMultiDataIndexUpgrade::ChartMultiDataIndexUpgrade(TSCH::ChartMultiDataIndexUpgrade *this, const TSCH::ChartMultiDataIndexUpgrade *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_2885202B8;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCH::ChartMultiDataIndexUpgrade::~ChartMultiDataIndexUpgrade(TSCH::ChartMultiDataIndexUpgrade *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartMultiDataIndexUpgrade::default_instance(TSCH::ChartMultiDataIndexUpgrade *this)
{
  if (atomic_load_explicit(scc_info_ChartMultiDataIndexUpgrade_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartMultiDataIndexUpgrade_default_instance_;
}

uint64_t *TSCH::ChartMultiDataIndexUpgrade::Clear(TSCH::ChartMultiDataIndexUpgrade *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t TSCH::ChartMultiDataIndexUpgrade::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TSCH::ChartMultiDataIndexUpgrade::ByteSizeLong(TSCH::ChartMultiDataIndexUpgrade *this)
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

void *TSCH::ChartMultiDataIndexUpgrade::MergeFrom(TSCH::ChartMultiDataIndexUpgrade *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSCH::ChartMultiDataIndexUpgrade::MergeFrom(uint64_t this, const TSCH::ChartMultiDataIndexUpgrade *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_2763D4F88((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSCH::ChartMultiDataIndexUpgrade::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::ChartMultiDataIndexUpgrade::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCH::ChartMultiDataIndexUpgrade::CopyFrom(uint64_t *this, const TSCH::ChartMultiDataIndexUpgrade *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_2763D4FD4(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

double TSCH::ChartGarlicMinMaxUpgrade::ChartGarlicMinMaxUpgrade(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288520368;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

{
  *a1 = &unk_288520368;
  *(a1 + 8) = a2;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  return result;
}

TSCH::ChartGarlicMinMaxUpgrade *TSCH::ChartGarlicMinMaxUpgrade::ChartGarlicMinMaxUpgrade(TSCH::ChartGarlicMinMaxUpgrade *this, const TSCH::ChartGarlicMinMaxUpgrade *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288520368;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2763D4F88(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 24);
  *(this + 40) = *(a2 + 40);
  *(this + 24) = v6;
  return this;
}

void TSCH::ChartGarlicMinMaxUpgrade::~ChartGarlicMinMaxUpgrade(TSCH::ChartGarlicMinMaxUpgrade *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartGarlicMinMaxUpgrade::default_instance(TSCH::ChartGarlicMinMaxUpgrade *this)
{
  if (atomic_load_explicit(scc_info_ChartGarlicMinMaxUpgrade_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartGarlicMinMaxUpgrade_default_instance_;
}

uint64_t *TSCH::ChartGarlicMinMaxUpgrade::Clear(TSCH::ChartGarlicMinMaxUpgrade *this)
{
  if ((*(this + 16) & 0xF) != 0)
  {
    *(this + 40) = 0u;
    *(this + 24) = 0u;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

google::protobuf::internal *TSCH::ChartGarlicMinMaxUpgrade::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v7 = (v20 + 1);
      v8 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v9 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 25)
          {
            v16 = *v7;
            v12 = (v7 + 8);
            v5 |= 4u;
            *(a1 + 40) = v16;
            goto LABEL_23;
          }
        }

        else if (v10 == 4 && v8 == 33)
        {
          v14 = *v7;
          v12 = (v7 + 8);
          v5 |= 8u;
          *(a1 + 48) = v14;
          goto LABEL_23;
        }
      }

      else if (v10 == 1)
      {
        if (v8 == 9)
        {
          v15 = *v7;
          v12 = (v7 + 8);
          v5 |= 1u;
          *(a1 + 24) = v15;
          goto LABEL_23;
        }
      }

      else if (v10 == 2 && v8 == 17)
      {
        v13 = *v7;
        v12 = (v7 + 8);
        v5 |= 2u;
        *(a1 + 32) = v13;
LABEL_23:
        v20 = v12;
        goto LABEL_24;
      }

      if (v8)
      {
        v17 = (v8 & 7) == 4;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
LABEL_37:
        v20 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_2763D4D98(a3, &v20))
      {
        goto LABEL_2;
      }
    }

    v7 = (v20 + 2);
LABEL_6:
    v20 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v20;
}

unsigned __int8 *TSCH::ChartGarlicMinMaxUpgrade::_InternalSerialize(TSCH::ChartGarlicMinMaxUpgrade *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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

  v7 = *(this + 4);
  *a2 = 17;
  *(a2 + 1) = v7;
  a2 += 9;
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 5);
  *a2 = 25;
  *(a2 + 1) = v8;
  a2 += 9;
  if ((v5 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 6);
    *a2 = 33;
    *(a2 + 1) = v9;
    a2 += 9;
  }

LABEL_18:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartGarlicMinMaxUpgrade::ByteSizeLong(TSCH::ChartGarlicMinMaxUpgrade *this)
{
  v1 = *(this + 4);
  v2 = 9;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 4) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 8) != 0)
  {
    v2 += 9;
  }

  if ((v1 & 0xF) != 0)
  {
    v3 = v2;
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

uint64_t TSCH::ChartGarlicMinMaxUpgrade::MergeFrom(TSCH::ChartGarlicMinMaxUpgrade *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartGarlicMinMaxUpgrade::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartGarlicMinMaxUpgrade::MergeFrom(uint64_t this, const TSCH::ChartGarlicMinMaxUpgrade *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 24) = *(a2 + 3);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
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
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 48) = *(a2 + 6);
      goto LABEL_9;
    }

LABEL_13:
    *(v3 + 40) = *(a2 + 5);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TSCH::ChartGarlicMinMaxUpgrade *TSCH::ChartGarlicMinMaxUpgrade::CopyFrom(TSCH::ChartGarlicMinMaxUpgrade *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartGarlicMinMaxUpgrade::Clear(this);

    return TSCH::ChartGarlicMinMaxUpgrade::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::ChartGarlicMinMaxUpgrade *TSCH::ChartGarlicMinMaxUpgrade::CopyFrom(TSCH::ChartGarlicMinMaxUpgrade *this, const TSCH::ChartGarlicMinMaxUpgrade *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartGarlicMinMaxUpgrade::Clear(this);

    return TSCH::ChartGarlicMinMaxUpgrade::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCH::ChartGarlicMinMaxUpgrade::InternalSwap(TSCH::ChartGarlicMinMaxUpgrade *this, TSCH::ChartGarlicMinMaxUpgrade *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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

TSCH::ChartGarlicLabelFormatUpgrade *TSCH::ChartGarlicLabelFormatUpgrade::ChartGarlicLabelFormatUpgrade(TSCH::ChartGarlicLabelFormatUpgrade *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520418;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartGarlicLabelFormatUpgrade_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 4) = v3;
  *(this + 5) = v3;
  *(this + 6) = v3;
  *(this + 28) = 0;
  return this;
}

TSCH::ChartGarlicLabelFormatUpgrade *TSCH::ChartGarlicLabelFormatUpgrade::ChartGarlicLabelFormatUpgrade(TSCH::ChartGarlicLabelFormatUpgrade *this, const TSCH::ChartGarlicLabelFormatUpgrade *a2)
{
  *(this + 1) = 0;
  *this = &unk_288520418;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
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

  *(this + 5) = v6;
  if ((v4 & 4) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  *(this + 6) = v6;
  if ((v4 & 8) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  *(this + 28) = *(a2 + 28);
  return this;
}

void TSCH::ChartGarlicLabelFormatUpgrade::~ChartGarlicLabelFormatUpgrade(TSCH::ChartGarlicLabelFormatUpgrade *this)
{
  sub_2763DD24C(this);
  sub_2763941F4(this + 1);
}

{
  TSCH::ChartGarlicLabelFormatUpgrade::~ChartGarlicLabelFormatUpgrade(this);

  JUMPOUT(0x277C98580);
}

uint64_t sub_2763DD24C(uint64_t result)
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

    result = MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  v4 = v1[4];
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    result = MEMORY[0x277C98580](v4, 0x1012C40EC159624);
  }

  v5 = v1[5];
  if (v5 != v3)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x277C98580](v5, 0x1012C40EC159624);
  }

  v6 = v1[6];
  if (v6 != v3)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    JUMPOUT(0x277C98580);
  }

  return result;
}

void *TSCH::ChartGarlicLabelFormatUpgrade::default_instance(TSCH::ChartGarlicLabelFormatUpgrade *this)
{
  if (atomic_load_explicit(scc_info_ChartGarlicLabelFormatUpgrade_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartGarlicLabelFormatUpgrade_default_instance_;
}

uint64_t *TSCH::ChartGarlicLabelFormatUpgrade::Clear(TSCH::ChartGarlicLabelFormatUpgrade *this)
{
  v1 = *(this + 4);
  if ((v1 & 0xF) == 0)
  {
    goto LABEL_22;
  }

  if ((v1 & 1) == 0)
  {
    if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v3 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
      if ((v1 & 4) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_5:
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

LABEL_19:
    v5 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
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

    goto LABEL_22;
  }

  v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v2 + 23) < 0)
  {
    **v2 = 0;
    *(v2 + 8) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  if ((v1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v4 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
    if ((v1 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  *v4 = 0;
  *(v4 + 23) = 0;
  if ((v1 & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v7 = *(this + 8);
  result = (this + 8);
  *(result + 24) = 0;
  *(result + 2) = 0;
  if (v7)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

google::protobuf::internal *TSCH::ChartGarlicLabelFormatUpgrade::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v26 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v26) & 1) == 0)
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
        goto LABEL_53;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 4u;
            goto LABEL_35;
          }

          goto LABEL_39;
        }

        if (v10 == 5)
        {
          if (v8 == 42)
          {
            *(a1 + 16) |= 8u;
LABEL_35:
            google::protobuf::internal::ArenaStringPtr::Mutable();
            v18 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_36:
            v26 = v18;
            if (!v18)
            {
              goto LABEL_53;
            }

            goto LABEL_37;
          }

LABEL_39:
          if (v8)
          {
            v19 = (v8 & 7) == 4;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v18 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_36;
        }

        if (v10 != 6 || v8 != 48)
        {
          goto LABEL_39;
        }

        v5 |= 0x20u;
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
          v26 = v16;
          *(a1 + 57) = v15 != 0;
          goto LABEL_37;
        }

        v22 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v26 = v22;
        *(a1 + 57) = v23 != 0;
        if (!v22)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            goto LABEL_35;
          }

          goto LABEL_39;
        }

        if (v10 == 2)
        {
          if (v8 == 18)
          {
            *(a1 + 16) |= 2u;
            goto LABEL_35;
          }

          goto LABEL_39;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_39;
        }

        v5 |= 0x10u;
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
          v26 = v13;
          *(a1 + 56) = v12 != 0;
          goto LABEL_37;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v26 = v24;
        *(a1 + 56) = v25 != 0;
        if (!v24)
        {
LABEL_53:
          v26 = 0;
          goto LABEL_2;
        }
      }

LABEL_37:
      if (sub_2763D4D98(a3, &v26))
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

unsigned __int8 *TSCH::ChartGarlicLabelFormatUpgrade::_InternalSerialize(TSCH::ChartGarlicLabelFormatUpgrade *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2763DD938(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_2763DD938(a3, 2, (*(this + 4) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 56);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = sub_2763DD938(a3, 4, (*(this + 5) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = sub_2763DD938(a3, 5, (*(this + 6) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x20) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v8 = *(this + 57);
  *v4 = 48;
  v4[1] = v8;
  v4 += 2;
LABEL_18:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2763DD938(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
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

  return MEMORY[0x2821EAB50]();
}

uint64_t TSCH::ChartGarlicLabelFormatUpgrade::ByteSizeLong(TSCH::ChartGarlicLabelFormatUpgrade *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x3F) == 0)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
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

  v2 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v7 = *(this + 4) & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(v7 + 23);
    v9 = *(v7 + 8);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    v2 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    v14 = *(this + 5) & 0xFFFFFFFFFFFFFFFELL;
    v15 = *(v14 + 23);
    v16 = *(v14 + 8);
    if ((v15 & 0x80u) == 0)
    {
      v16 = v15;
    }

    v2 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v1 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if ((v1 & 8) != 0)
  {
LABEL_14:
    v10 = *(this + 6) & 0xFFFFFFFFFFFFFFFELL;
    v11 = *(v10 + 23);
    v12 = *(v10 + 8);
    if ((v11 & 0x80u) == 0)
    {
      v12 = v11;
    }

    v2 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  v3 = v2 + ((v1 >> 4) & 2) + ((v1 >> 3) & 2);
LABEL_18:
  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSCH::ChartGarlicLabelFormatUpgrade::MergeFrom(TSCH::ChartGarlicLabelFormatUpgrade *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartGarlicLabelFormatUpgrade::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartGarlicLabelFormatUpgrade::MergeFrom(uint64_t this, const TSCH::ChartGarlicLabelFormatUpgrade *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x3F) != 0)
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

        goto LABEL_15;
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

      goto LABEL_16;
    }

LABEL_15:
    *(v3 + 16) |= 4u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
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
    *(v3 + 16) |= 8u;
    this = google::protobuf::internal::ArenaStringPtr::Set();
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
      *(v3 + 57) = *(a2 + 57);
      goto LABEL_11;
    }

LABEL_17:
    *(v3 + 56) = *(a2 + 56);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return this;
}

TSCH::ChartGarlicLabelFormatUpgrade *TSCH::ChartGarlicLabelFormatUpgrade::CopyFrom(TSCH::ChartGarlicLabelFormatUpgrade *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartGarlicLabelFormatUpgrade::Clear(this);

    return TSCH::ChartGarlicLabelFormatUpgrade::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::ChartGarlicLabelFormatUpgrade *TSCH::ChartGarlicLabelFormatUpgrade::CopyFrom(TSCH::ChartGarlicLabelFormatUpgrade *this, const TSCH::ChartGarlicLabelFormatUpgrade *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartGarlicLabelFormatUpgrade::Clear(this);

    return TSCH::ChartGarlicLabelFormatUpgrade::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartGarlicLabelFormatUpgrade::InternalSwap(TSCH::ChartGarlicLabelFormatUpgrade *this, TSCH::ChartGarlicLabelFormatUpgrade *a2)
{
  result = sub_2763948BC(this + 1, a2 + 1);
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
  v9 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v9;
  LOWORD(v9) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v9;
  return result;
}

uint64_t TSCH::ChartPasteboardAdditionsArchive::ChartPasteboardAdditionsArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2885204C8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_2885204C8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSCH::ChartPasteboardAdditionsArchive *TSCH::ChartPasteboardAdditionsArchive::ChartPasteboardAdditionsArchive(TSCH::ChartPasteboardAdditionsArchive *this, const TSCH::ChartPasteboardAdditionsArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_2885204C8;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCH::ChartPasteboardAdditionsArchive::~ChartPasteboardAdditionsArchive(TSCH::ChartPasteboardAdditionsArchive *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartPasteboardAdditionsArchive::default_instance(TSCH::ChartPasteboardAdditionsArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartPasteboardAdditionsArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartPasteboardAdditionsArchive_default_instance_;
}

uint64_t *TSCH::ChartPasteboardAdditionsArchive::Clear(TSCH::ChartPasteboardAdditionsArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t TSCH::ChartPasteboardAdditionsArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TSCH::ChartPasteboardAdditionsArchive::ByteSizeLong(TSCH::ChartPasteboardAdditionsArchive *this)
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

void *TSCH::ChartPasteboardAdditionsArchive::MergeFrom(TSCH::ChartPasteboardAdditionsArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSCH::ChartPasteboardAdditionsArchive::MergeFrom(uint64_t this, const TSCH::ChartPasteboardAdditionsArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_2763D4F88((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSCH::ChartPasteboardAdditionsArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::ChartPasteboardAdditionsArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCH::ChartPasteboardAdditionsArchive::CopyFrom(uint64_t *this, const TSCH::ChartPasteboardAdditionsArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_2763D4FD4(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TSCH::ChartPreserveAppearanceForPresetArchive::ChartPreserveAppearanceForPresetArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288520578;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288520578;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSCH::ChartPreserveAppearanceForPresetArchive *TSCH::ChartPreserveAppearanceForPresetArchive::ChartPreserveAppearanceForPresetArchive(TSCH::ChartPreserveAppearanceForPresetArchive *this, const TSCH::ChartPreserveAppearanceForPresetArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288520578;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCH::ChartPreserveAppearanceForPresetArchive::~ChartPreserveAppearanceForPresetArchive(TSCH::ChartPreserveAppearanceForPresetArchive *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartPreserveAppearanceForPresetArchive::default_instance(TSCH::ChartPreserveAppearanceForPresetArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartPreserveAppearanceForPresetArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartPreserveAppearanceForPresetArchive_default_instance_;
}

uint64_t *TSCH::ChartPreserveAppearanceForPresetArchive::Clear(TSCH::ChartPreserveAppearanceForPresetArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t TSCH::ChartPreserveAppearanceForPresetArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TSCH::ChartPreserveAppearanceForPresetArchive::ByteSizeLong(TSCH::ChartPreserveAppearanceForPresetArchive *this)
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

void *TSCH::ChartPreserveAppearanceForPresetArchive::MergeFrom(TSCH::ChartPreserveAppearanceForPresetArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSCH::ChartPreserveAppearanceForPresetArchive::MergeFrom(uint64_t this, const TSCH::ChartPreserveAppearanceForPresetArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_2763D4F88((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSCH::ChartPreserveAppearanceForPresetArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::ChartPreserveAppearanceForPresetArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCH::ChartPreserveAppearanceForPresetArchive::CopyFrom(uint64_t *this, const TSCH::ChartPreserveAppearanceForPresetArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_2763D4FD4(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::ChartSupportsProportionalBendedCalloutLinesArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288520628;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288520628;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSCH::ChartSupportsProportionalBendedCalloutLinesArchive *TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::ChartSupportsProportionalBendedCalloutLinesArchive(TSCH::ChartSupportsProportionalBendedCalloutLinesArchive *this, const TSCH::ChartSupportsProportionalBendedCalloutLinesArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288520628;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::~ChartSupportsProportionalBendedCalloutLinesArchive(TSCH::ChartSupportsProportionalBendedCalloutLinesArchive *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::default_instance(TSCH::ChartSupportsProportionalBendedCalloutLinesArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartSupportsProportionalBendedCalloutLinesArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartSupportsProportionalBendedCalloutLinesArchive_default_instance_;
}

uint64_t *TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::Clear(TSCH::ChartSupportsProportionalBendedCalloutLinesArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::ByteSizeLong(TSCH::ChartSupportsProportionalBendedCalloutLinesArchive *this)
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

void *TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::MergeFrom(TSCH::ChartSupportsProportionalBendedCalloutLinesArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::MergeFrom(uint64_t this, const TSCH::ChartSupportsProportionalBendedCalloutLinesArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_2763D4F88((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCH::ChartSupportsProportionalBendedCalloutLinesArchive::CopyFrom(uint64_t *this, const TSCH::ChartSupportsProportionalBendedCalloutLinesArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_2763D4FD4(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TSCH::ChartSupportsRoundedCornersArchive::ChartSupportsRoundedCornersArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_2885206D8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_2885206D8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSCH::ChartSupportsRoundedCornersArchive *TSCH::ChartSupportsRoundedCornersArchive::ChartSupportsRoundedCornersArchive(TSCH::ChartSupportsRoundedCornersArchive *this, const TSCH::ChartSupportsRoundedCornersArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_2885206D8;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCH::ChartSupportsRoundedCornersArchive::~ChartSupportsRoundedCornersArchive(TSCH::ChartSupportsRoundedCornersArchive *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartSupportsRoundedCornersArchive::default_instance(TSCH::ChartSupportsRoundedCornersArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartSupportsRoundedCornersArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartSupportsRoundedCornersArchive_default_instance_;
}

uint64_t *TSCH::ChartSupportsRoundedCornersArchive::Clear(TSCH::ChartSupportsRoundedCornersArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t TSCH::ChartSupportsRoundedCornersArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TSCH::ChartSupportsRoundedCornersArchive::ByteSizeLong(TSCH::ChartSupportsRoundedCornersArchive *this)
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

void *TSCH::ChartSupportsRoundedCornersArchive::MergeFrom(TSCH::ChartSupportsRoundedCornersArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSCH::ChartSupportsRoundedCornersArchive::MergeFrom(uint64_t this, const TSCH::ChartSupportsRoundedCornersArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_2763D4F88((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSCH::ChartSupportsRoundedCornersArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::ChartSupportsRoundedCornersArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCH::ChartSupportsRoundedCornersArchive::CopyFrom(uint64_t *this, const TSCH::ChartSupportsRoundedCornersArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_2763D4FD4(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TSCH::ChartSupportsSeriesPropertySpacingArchive::ChartSupportsSeriesPropertySpacingArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288520788;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288520788;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSCH::ChartSupportsSeriesPropertySpacingArchive *TSCH::ChartSupportsSeriesPropertySpacingArchive::ChartSupportsSeriesPropertySpacingArchive(TSCH::ChartSupportsSeriesPropertySpacingArchive *this, const TSCH::ChartSupportsSeriesPropertySpacingArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288520788;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCH::ChartSupportsSeriesPropertySpacingArchive::~ChartSupportsSeriesPropertySpacingArchive(TSCH::ChartSupportsSeriesPropertySpacingArchive *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartSupportsSeriesPropertySpacingArchive::default_instance(TSCH::ChartSupportsSeriesPropertySpacingArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartSupportsSeriesPropertySpacingArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartSupportsSeriesPropertySpacingArchive_default_instance_;
}

uint64_t *TSCH::ChartSupportsSeriesPropertySpacingArchive::Clear(TSCH::ChartSupportsSeriesPropertySpacingArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t TSCH::ChartSupportsSeriesPropertySpacingArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TSCH::ChartSupportsSeriesPropertySpacingArchive::ByteSizeLong(TSCH::ChartSupportsSeriesPropertySpacingArchive *this)
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

void *TSCH::ChartSupportsSeriesPropertySpacingArchive::MergeFrom(TSCH::ChartSupportsSeriesPropertySpacingArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSCH::ChartSupportsSeriesPropertySpacingArchive::MergeFrom(uint64_t this, const TSCH::ChartSupportsSeriesPropertySpacingArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_2763D4F88((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSCH::ChartSupportsSeriesPropertySpacingArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::ChartSupportsSeriesPropertySpacingArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCH::ChartSupportsSeriesPropertySpacingArchive::CopyFrom(uint64_t *this, const TSCH::ChartSupportsSeriesPropertySpacingArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_2763D4FD4(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

uint64_t TSCH::ChartSupportsStackedSummaryLabelsArchive::ChartSupportsStackedSummaryLabelsArchive(uint64_t result, uint64_t a2)
{
  *result = &unk_288520838;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

{
  *result = &unk_288520838;
  *(result + 8) = a2;
  *(result + 16) = 0;
  return result;
}

TSCH::ChartSupportsStackedSummaryLabelsArchive *TSCH::ChartSupportsStackedSummaryLabelsArchive::ChartSupportsStackedSummaryLabelsArchive(TSCH::ChartSupportsStackedSummaryLabelsArchive *this, const TSCH::ChartSupportsStackedSummaryLabelsArchive *a2)
{
  *(this + 1) = 0;
  v3 = (this + 8);
  *this = &unk_288520838;
  *(this + 4) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void TSCH::ChartSupportsStackedSummaryLabelsArchive::~ChartSupportsStackedSummaryLabelsArchive(TSCH::ChartSupportsStackedSummaryLabelsArchive *this)
{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);
}

{
  sub_2763941F4(this + 1);

  JUMPOUT(0x277C98580);
}

uint64_t *TSCH::ChartSupportsStackedSummaryLabelsArchive::default_instance(TSCH::ChartSupportsStackedSummaryLabelsArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartSupportsStackedSummaryLabelsArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartSupportsStackedSummaryLabelsArchive_default_instance_;
}

uint64_t *TSCH::ChartSupportsStackedSummaryLabelsArchive::Clear(TSCH::ChartSupportsStackedSummaryLabelsArchive *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

uint64_t TSCH::ChartSupportsStackedSummaryLabelsArchive::_InternalSerialize(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return MEMORY[0x2821EAC40]((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    return a2;
  }
}

uint64_t TSCH::ChartSupportsStackedSummaryLabelsArchive::ByteSizeLong(TSCH::ChartSupportsStackedSummaryLabelsArchive *this)
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

void *TSCH::ChartSupportsStackedSummaryLabelsArchive::MergeFrom(TSCH::ChartSupportsStackedSummaryLabelsArchive *this, const Message *lpsrc)
{
  if (result)
  {
    v5 = result[1];
    if (v5)
    {

      return sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }

  return result;
}

uint64_t TSCH::ChartSupportsStackedSummaryLabelsArchive::MergeFrom(uint64_t this, const TSCH::ChartSupportsStackedSummaryLabelsArchive *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return sub_2763D4F88((this + 8), (v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

uint64_t *TSCH::ChartSupportsStackedSummaryLabelsArchive::CopyFrom(uint64_t *this, const Message *lpsrc)
{
  if (lpsrc != this)
  {
    v4 = this;
    v6 = *(this + 8);
    v5 = this + 1;
    if (v6)
    {
      sub_2763D4FD4(v5);
    }

    return TSCH::ChartSupportsStackedSummaryLabelsArchive::MergeFrom(v4, lpsrc);
  }

  return this;
}

uint64_t *TSCH::ChartSupportsStackedSummaryLabelsArchive::CopyFrom(uint64_t *this, const TSCH::ChartSupportsStackedSummaryLabelsArchive *a2)
{
  if (a2 != this)
  {
    v3 = this + 1;
    if (this[1])
    {
      this = sub_2763D4FD4(this + 1);
    }

    v4 = *(a2 + 1);
    if (v4)
    {

      return sub_2763D4F88(v3, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }
  }

  return this;
}

TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::ChartGridArchive_ChartGridRowColumnIdMap_Entry(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this, google::protobuf::Arena *a2)
{
  *this = &unk_2885208E8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ChartGridArchive_ChartGridRowColumnIdMap_Entry_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = MEMORY[0x277D80A90];
  *(this + 8) = 0;
  return this;
}

TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::ChartGridArchive_ChartGridRowColumnIdMap_Entry(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this, const TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *a2)
{
  *(this + 1) = 0;
  *this = &unk_2885208E8;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_2763D4F88(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  *(this + 8) = *(a2 + 8);
  return this;
}

void TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::~ChartGridArchive_ChartGridRowColumnIdMap_Entry(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  sub_2763941F4(this + 1);
}

{
  TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::~ChartGridArchive_ChartGridRowColumnIdMap_Entry(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::default_instance(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this)
{
  if (atomic_load_explicit(scc_info_ChartGridArchive_ChartGridRowColumnIdMap_Entry_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartGridArchive_ChartGridRowColumnIdMap_Entry_default_instance_;
}

uint64_t *TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::Clear(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  v3 = *(this + 8);
  result = (this + 8);
  *(result + 6) = 0;
  *(result + 2) = 0;
  if (v3)
  {
    return sub_2763D4FD4(result);
  }

  return result;
}

google::protobuf::internal *TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v7 = (v20 + 1);
      v8 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v9 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_33;
      }

      v7 = TagFallback;
      v8 = v17;
LABEL_7:
      if (v8 >> 3 != 2)
      {
        if (v8 >> 3 == 1 && v8 == 10)
        {
          *(a1 + 16) |= 1u;
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v12 = google::protobuf::internal::InlineGreedyStringParser();
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
            sub_2763D4E10((a1 + 8));
          }

          v12 = google::protobuf::internal::UnknownFieldParse();
        }

        v20 = v12;
        if (!v12)
        {
          goto LABEL_33;
        }

        goto LABEL_26;
      }

      if (v8 != 16)
      {
        goto LABEL_12;
      }

      v5 |= 2u;
      v13 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      v15 = *v13;
      v14 = (v14 + (v15 << 7) - 128);
      if ((v15 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_23:
        v20 = v13;
        *(a1 + 32) = v14;
        goto LABEL_26;
      }

      v18 = google::protobuf::internal::VarintParseSlow32(v7, v14);
      v20 = v18;
      *(a1 + 32) = v19;
      if (!v18)
      {
LABEL_33:
        v20 = 0;
        goto LABEL_2;
      }

LABEL_26:
      if (sub_2763D4D98(a3, &v20))
      {
        goto LABEL_2;
      }
    }

    v7 = (v20 + 2);
LABEL_6:
    v20 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v20;
}

unsigned __int8 *TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::_InternalSerialize(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_2763DD938(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 8);
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

  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::RequiredFieldsByteSizeFallback(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this)
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
    v2 += ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::ByteSizeLong(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this)
{
  if ((~*(this + 4) & 3) != 0)
  {
    v5 = TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(v2 + 23);
    v4 = *(v2 + 8);
    if ((v3 & 0x80u) == 0)
    {
      v4 = v3;
    }

    v5 = v4 + ((9 * (__clz(*(this + 8) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v5;
    return v5;
  }
}

uint64_t TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::MergeFrom(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::MergeFrom(uint64_t this, const TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
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
      *(v3 + 32) = *(a2 + 8);
    }

    *(v3 + 16) |= v5;
  }

  return this;
}

TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::CopyFrom(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::Clear(this);

    return TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::CopyFrom(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this, const TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::Clear(this);

    return TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::InternalSwap(TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *this, TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry *a2)
{
  result = sub_2763948BC(this + 1, a2 + 1);
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

TSCH::ChartGridArchive_ChartGridRowColumnIdMap *TSCH::ChartGridArchive_ChartGridRowColumnIdMap::ChartGridArchive_ChartGridRowColumnIdMap(TSCH::ChartGridArchive_ChartGridRowColumnIdMap *this, google::protobuf::Arena *a2)
{
  *(this + 2) = a2;
  *this = &unk_288520998;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = a2;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  if (atomic_load_explicit(scc_info_ChartGridArchive_ChartGridRowColumnIdMap_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return this;
}

void sub_2763DFFFC(_Unwind_Exception *a1)
{
  sub_2763F8DF0(v2);
  sub_2763F8DF0(v1);
  _Unwind_Resume(a1);
}

TSCH::ChartGridArchive_ChartGridRowColumnIdMap *TSCH::ChartGridArchive_ChartGridRowColumnIdMap::ChartGridArchive_ChartGridRowColumnIdMap(TSCH::ChartGridArchive_ChartGridRowColumnIdMap *this, const TSCH::ChartGridArchive_ChartGridRowColumnIdMap *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = this + 16;
  *this = &unk_288520998;
  *(this + 3) = 0;
  *(this + 4) = 0;
  v6 = *(a2 + 6);
  if (v6)
  {
    v7 = *(a2 + 4);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 16));
    sub_2763F8E74(v5, v8, (v7 + 8), v6, **(this + 4) - *(this + 6));
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
    sub_2763F8E74(this + 40, v13, (v12 + 8), v11, **(this + 7) - *(this + 12));
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
    sub_2763D4F88(v4, (v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return this;
}

void sub_2763E0174(_Unwind_Exception *a1)
{
  sub_2763F8DF0(v2);
  sub_2763F8DF0(v1);
  _Unwind_Resume(a1);
}

void TSCH::ChartGridArchive_ChartGridRowColumnIdMap::~ChartGridArchive_ChartGridRowColumnIdMap(TSCH::ChartGridArchive_ChartGridRowColumnIdMap *this)
{
  sub_2763941F4(this + 1);
  sub_2763F8DF0(this + 5);
  sub_2763F8DF0(this + 2);
}

{
  TSCH::ChartGridArchive_ChartGridRowColumnIdMap::~ChartGridArchive_ChartGridRowColumnIdMap(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartGridArchive_ChartGridRowColumnIdMap::default_instance(TSCH::ChartGridArchive_ChartGridRowColumnIdMap *this)
{
  if (atomic_load_explicit(scc_info_ChartGridArchive_ChartGridRowColumnIdMap_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartGridArchive_ChartGridRowColumnIdMap_default_instance_;
}

uint64_t *TSCH::ChartGridArchive_ChartGridRowColumnIdMap::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (this[4] + 8);
    do
    {
      v4 = *v3++;
      this = TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::Clear(v4);
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
      this = TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 48) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_2763D4FD4(v8);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartGridArchive_ChartGridRowColumnIdMap::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  if ((sub_2763D4D98(a3, &v29) & 1) == 0)
  {
    while (1)
    {
      v6 = (v29 + 1);
      v7 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v8 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v28;
LABEL_7:
      if (v7 >> 3 == 2)
      {
        if (v7 != 18)
        {
          goto LABEL_12;
        }

        v11 = (v6 - 1);
        while (2)
        {
          v12 = (v11 + 1);
          v29 = (v11 + 1);
          v13 = *(a1 + 56);
          if (!v13)
          {
LABEL_24:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
            v13 = *(a1 + 56);
            v14 = *v13;
            goto LABEL_25;
          }

          v18 = *(a1 + 48);
          v14 = *v13;
          if (v18 >= *v13)
          {
            if (v14 == *(a1 + 52))
            {
              goto LABEL_24;
            }

LABEL_25:
            *v13 = v14 + 1;
            v15 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry>(*(a1 + 40));
            v16 = *(a1 + 48);
            v17 = *(a1 + 56) + 8 * v16;
            *(a1 + 48) = v16 + 1;
            *(v17 + 8) = v15;
            v12 = v29;
          }

          else
          {
            *(a1 + 48) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
          }

          v11 = sub_2764AAB3C(a3, v15, v12);
          v29 = v11;
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
        v19 = (v6 - 1);
        while (1)
        {
          v20 = (v19 + 1);
          v29 = (v19 + 1);
          v21 = *(a1 + 32);
          if (!v21)
          {
            goto LABEL_36;
          }

          v26 = *(a1 + 24);
          v22 = *v21;
          if (v26 < *v21)
          {
            *(a1 + 24) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
            goto LABEL_40;
          }

          if (v22 == *(a1 + 28))
          {
LABEL_36:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v21 = *(a1 + 32);
            v22 = *v21;
          }

          *v21 = v22 + 1;
          v23 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry>(*(a1 + 16));
          v24 = *(a1 + 24);
          v25 = *(a1 + 32) + 8 * v24;
          *(a1 + 24) = v24 + 1;
          *(v25 + 8) = v23;
          v20 = v29;
LABEL_40:
          v19 = sub_2764AAB3C(a3, v23, v20);
          v29 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
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
        return v29;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_2763D4E10((a1 + 8));
      }

      v29 = google::protobuf::internal::UnknownFieldParse();
      if (!v29)
      {
        return 0;
      }

LABEL_19:
      if (sub_2763D4D98(a3, &v29))
      {
        return v29;
      }
    }

    v6 = (v29 + 2);
LABEL_6:
    v29 = v6;
    goto LABEL_7;
  }

  return v29;
}

unsigned __int8 *TSCH::ChartGridArchive_ChartGridRowColumnIdMap::_InternalSerialize(TSCH::ChartGridArchive_ChartGridRowColumnIdMap *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

      a2 = TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::_InternalSerialize(v7, v9, a3);
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

      a2 = TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartGridArchive_ChartGridRowColumnIdMap::ByteSizeLong(TSCH::ChartGridArchive_ChartGridRowColumnIdMap *this)
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
      v7 = TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::ByteSizeLong(v6);
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
      v14 = TSCH::ChartGridArchive_ChartGridRowColumnIdMap_Entry::ByteSizeLong(v13);
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

uint64_t TSCH::ChartGridArchive_ChartGridRowColumnIdMap::MergeFrom(TSCH::ChartGridArchive_ChartGridRowColumnIdMap *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartGridArchive_ChartGridRowColumnIdMap::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartGridArchive_ChartGridRowColumnIdMap::MergeFrom(uint64_t this, const TSCH::ChartGridArchive_ChartGridRowColumnIdMap *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(a2 + 4);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    this = sub_2763F8E74(v3 + 16, v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
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
    this = sub_2763F8E74(v3 + 40, v12, (v11 + 8), v10, **(v3 + 56) - *(v3 + 48));
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

uint64_t *TSCH::ChartGridArchive_ChartGridRowColumnIdMap::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartGridArchive_ChartGridRowColumnIdMap::Clear(this);

    return TSCH::ChartGridArchive_ChartGridRowColumnIdMap::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartGridArchive_ChartGridRowColumnIdMap::CopyFrom(uint64_t *this, const TSCH::ChartGridArchive_ChartGridRowColumnIdMap *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartGridArchive_ChartGridRowColumnIdMap::Clear(this);

    return TSCH::ChartGridArchive_ChartGridRowColumnIdMap::MergeFrom(v4, a2);
  }

  return this;
}

BOOL TSCH::ChartGridArchive_ChartGridRowColumnIdMap::IsInitialized(TSCH::ChartGridArchive_ChartGridRowColumnIdMap *this)
{
  v1 = *(this + 6);
  while (v1 >= 1)
  {
    v2 = *(*(this + 4) + 8 * v1--);
    if ((~*(v2 + 16) & 3) != 0)
    {
      return 0;
    }
  }

  v4 = *(this + 12);
  v5 = *(this + 7);
  do
  {
    result = v4 < 1;
    if (v4 < 1)
    {
      break;
    }

    v6 = *(v5 + 8 * v4--);
  }

  while ((~*(v6 + 16) & 3) == 0);
  return result;
}

__n128 TSCH::ChartGridArchive_ChartGridRowColumnIdMap::InternalSwap(TSCH::ChartGridArchive_ChartGridRowColumnIdMap *this, TSCH::ChartGridArchive_ChartGridRowColumnIdMap *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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

uint64_t *TSCH::ChartGridArchive::clear_grid_row(uint64_t *this)
{
  v1 = *(this + 20);
  if (v1 >= 1)
  {
    v2 = this;
    v3 = (this[11] + 8);
    do
    {
      v4 = *v3++;
      this = sub_27640567C(v4);
      --v1;
    }

    while (v1);
    *(v2 + 80) = 0;
  }

  return this;
}

TSCH::ChartGridArchive *TSCH::ChartGridArchive::ChartGridArchive(TSCH::ChartGridArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520A48;
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
  if (atomic_load_explicit(scc_info_ChartGridArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

void sub_2763E0CB8(_Unwind_Exception *a1)
{
  sub_27647800C(v3);
  sub_276477F70(v2);
  sub_276477F70(v1);
  _Unwind_Resume(a1);
}

TSCH::ChartGridArchive *TSCH::ChartGridArchive::ChartGridArchive(TSCH::ChartGridArchive *this, const TSCH::ChartGridArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288520A48;
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
    sub_2763F8F34(this + 1, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2763F8F34(this + 2, v12, (v11 + 8), v10, **(this + 8) - *(this + 14));
    v13 = *(this + 14) + v10;
    *(this + 14) = v13;
    v14 = *(this + 8);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(a2 + 11);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_2763F8FE0(this + 72, v17, (v16 + 8), v15, **(this + 11) - *(this + 20));
    v18 = *(this + 20) + v15;
    *(this + 20) = v18;
    v19 = *(this + 11);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 1);
  if (v20)
  {
    sub_2763D4F88(v4, (v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 12) = 0;
  return this;
}

void sub_2763E0EE4(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v3, 0x10A1C40759568C3);
  sub_27647800C(v4);
  sub_276477F70(v2);
  sub_276477F70((v1 + 24));
  _Unwind_Resume(a1);
}

void TSCH::ChartGridArchive::~ChartGridArchive(TSCH::ChartGridArchive *this)
{
  if (this != &TSCH::_ChartGridArchive_default_instance_)
  {
    v2 = *(this + 12);
    if (v2)
    {
      TSCH::ChartGridArchive_ChartGridRowColumnIdMap::~ChartGridArchive_ChartGridRowColumnIdMap(v2);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(this + 1);
  sub_27647800C(this + 9);
  sub_276477F70(this + 6);
  sub_276477F70(this + 3);
}

{
  TSCH::ChartGridArchive::~ChartGridArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartGridArchive::default_instance(TSCH::ChartGridArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartGridArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartGridArchive_default_instance_;
}

google::protobuf::internal *TSCH::ChartGridArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v39))
    {
      return v39;
    }

    v5 = (v39 + 1);
    v6 = *v39;
    if ((*v39 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v39 + 2);
LABEL_6:
      v39 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v7 - 128));
    v39 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v37;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 2)
    {
      if (v8 != 1)
      {
        if (v8 != 2 || v6 != 18)
        {
          goto LABEL_60;
        }

        v10 = v5 - 1;
        while (1)
        {
          v39 = (v10 + 1);
          v11 = *(a1 + 64);
          if (!v11)
          {
            goto LABEL_20;
          }

          v12 = *(a1 + 56);
          v13 = *v11;
          if (v12 >= *v11)
          {
            break;
          }

          *(a1 + 56) = v12 + 1;
LABEL_22:
          v10 = google::protobuf::internal::InlineGreedyStringParser();
          v39 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 18)
          {
            goto LABEL_2;
          }
        }

        if (v13 == *(a1 + 60))
        {
LABEL_20:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
          v11 = *(a1 + 64);
          v13 = *v11;
        }

        *v11 = v13 + 1;
        v14 = sub_276380DF4(*(a1 + 48));
        v15 = *(a1 + 56);
        v16 = *(a1 + 64) + 8 * v15;
        *(a1 + 56) = v15 + 1;
        *(v16 + 8) = v14;
        goto LABEL_22;
      }

      if (v6 != 10)
      {
        goto LABEL_60;
      }

      v20 = v5 - 1;
      while (1)
      {
        v39 = (v20 + 1);
        v21 = *(a1 + 40);
        if (!v21)
        {
          goto LABEL_41;
        }

        v22 = *(a1 + 32);
        v23 = *v21;
        if (v22 >= *v21)
        {
          break;
        }

        *(a1 + 32) = v22 + 1;
LABEL_43:
        v20 = google::protobuf::internal::InlineGreedyStringParser();
        v39 = v20;
        if (!v20)
        {
          return 0;
        }

        if (*a3 <= v20 || *v20 != 10)
        {
          goto LABEL_2;
        }
      }

      if (v23 == *(a1 + 36))
      {
LABEL_41:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v21 = *(a1 + 40);
        v23 = *v21;
      }

      *v21 = v23 + 1;
      v24 = sub_276380DF4(*(a1 + 24));
      v25 = *(a1 + 32);
      v26 = *(a1 + 40) + 8 * v25;
      *(a1 + 32) = v25 + 1;
      *(v26 + 8) = v24;
      goto LABEL_43;
    }

    if (v8 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_60;
      }

      v27 = (v5 - 1);
LABEL_49:
      v28 = (v27 + 1);
      v39 = (v27 + 1);
      v29 = *(a1 + 88);
      if (!v29)
      {
LABEL_50:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
        v29 = *(a1 + 88);
        v30 = *v29;
        goto LABEL_51;
      }

      v34 = *(a1 + 80);
      v30 = *v29;
      if (v34 >= *v29)
      {
        if (v30 == *(a1 + 84))
        {
          goto LABEL_50;
        }

LABEL_51:
        *v29 = v30 + 1;
        v31 = sub_276407088(*(a1 + 72));
        v32 = *(a1 + 80);
        v33 = *(a1 + 88) + 8 * v32;
        *(a1 + 80) = v32 + 1;
        *(v33 + 8) = v31;
        v28 = v39;
      }

      else
      {
        *(a1 + 80) = v34 + 1;
        v31 = *&v29[2 * v34 + 2];
      }

      v27 = sub_2764AF330(a3, v31, v28);
      v39 = v27;
      if (!v27)
      {
        return 0;
      }

      if (*a3 <= v27 || *v27 != 26)
      {
        continue;
      }

      goto LABEL_49;
    }

    if (v8 == 4 && v6 == 34)
    {
      *(a1 + 16) |= 1u;
      v17 = *(a1 + 96);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartGridArchive_ChartGridRowColumnIdMap>(v18);
        *(a1 + 96) = v17;
        v5 = v39;
      }

      v19 = sub_2764AAC0C(a3, v17, v5);
      goto LABEL_67;
    }

LABEL_60:
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v19 = google::protobuf::internal::UnknownFieldParse();
LABEL_67:
    v39 = v19;
    if (!v19)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v39;
}

unsigned __int8 *TSCH::ChartGridArchive::_InternalSerialize(TSCH::ChartGridArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    v7 = 8;
    do
    {
      a2 = sub_2763E1648(a3, 1, *(*(this + 5) + v7), a2);
      v7 += 8;
      --v6;
    }

    while (v6);
  }

  v8 = *(this + 14);
  if (v8 >= 1)
  {
    v9 = 8;
    do
    {
      a2 = sub_2763E1648(a3, 2, *(*(this + 8) + v9), a2);
      v9 += 8;
      --v8;
    }

    while (v8);
  }

  v10 = *(this + 20);
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v12 = *(*(this + 11) + 8 * i + 8);
      *a2 = 26;
      v13 = *(v12 + 40);
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

      a2 = sub_2764058C8(v12, v14, a3);
    }
  }

  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 12);
    *a2 = 34;
    v19 = *(v18 + 16);
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

    a2 = TSCH::ChartGridArchive_ChartGridRowColumnIdMap::_InternalSerialize(v18, v20, a3);
  }

  v24 = *(this + 1);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2763E1648(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
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

uint64_t TSCH::ChartGridArchive::ByteSizeLong(TSCH::ChartGridArchive *this)
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

  v8 = *(this + 14);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = (*(this + 8) + 8);
    do
    {
      v11 = *v10++;
      v12 = *(v11 + 23);
      v13 = *(v11 + 8);
      if ((v12 & 0x80u) == 0)
      {
        v13 = v12;
      }

      v9 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6);
      --v8;
    }

    while (v8);
  }

  v14 = *(this + 20);
  v15 = v9 + v14;
  v16 = *(this + 11);
  if (v16)
  {
    v17 = (v16 + 8);
  }

  else
  {
    v17 = 0;
  }

  if (v14)
  {
    v18 = 8 * v14;
    do
    {
      v19 = *v17++;
      v20 = sub_2764059EC(v19);
      v15 += v20 + ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6);
      v18 -= 8;
    }

    while (v18);
  }

  if (*(this + 16))
  {
    v21 = TSCH::ChartGridArchive_ChartGridRowColumnIdMap::ByteSizeLong(*(this + 12));
    v15 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v15;
    return v15;
  }
}

uint64_t TSCH::ChartGridArchive::MergeFrom(TSCH::ChartGridArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartGridArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

TSCH::ChartGridArchive *TSCH::ChartGridArchive::CopyFrom(TSCH::ChartGridArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartGridArchive::Clear(this);

    return TSCH::ChartGridArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSCH::ChartGridArchive *TSCH::ChartGridArchive::CopyFrom(TSCH::ChartGridArchive *this, const TSCH::ChartGridArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartGridArchive::Clear(this);

    return TSCH::ChartGridArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSCH::ChartGridArchive::InternalSwap(TSCH::ChartGridArchive *this, TSCH::ChartGridArchive *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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
  result = *(a2 + 5);
  *(this + 5) = result;
  *(a2 + 10) = v9;
  *(a2 + 11) = v10;
  v12 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v12;
  return result;
}

TSP::Reference *TSCH::ChartMediatorArchive::clear_info(TSCH::ChartMediatorArchive *this)
{
  result = *(this + 7);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSCH::ChartMediatorArchive *TSCH::ChartMediatorArchive::ChartMediatorArchive(TSCH::ChartMediatorArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520AF8;
  *(this + 1) = a2;
  *(this + 4) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = a2;
  if (atomic_load_explicit(scc_info_ChartMediatorArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 7) = 0;
  return this;
}

void sub_2763E1BD0(_Unwind_Exception *a1)
{
  if (*(v1 + 44) >= 1)
  {
    sub_2764AB658(v3);
  }

  sub_2764AB66C((v1 + 28), v2);
  _Unwind_Resume(a1);
}

TSCH::ChartMediatorArchive *TSCH::ChartMediatorArchive::ChartMediatorArchive(TSCH::ChartMediatorArchive *this, const TSCH::ChartMediatorArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288520AF8;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_2762E9624(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  v7 = *(a2 + 10);
  if (v7)
  {
    sub_2762E9624(this + 10, v7);
    v8 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v8, *(a2 + 6), 4 * *(a2 + 10));
  }

  v9 = *(a2 + 1);
  if (v9)
  {
    sub_2763D4F88(v4, (v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  *(this + 7) = 0;
  return this;
}

void sub_2763E1D24(_Unwind_Exception *a1)
{
  MEMORY[0x277C98580](v2, 0x1081C407D3F2757);
  if (*(v1 + 44) >= 1)
  {
    v4 = *(v1 + 48);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v7 = *(v1 + 32);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  _Unwind_Resume(a1);
}

void TSCH::ChartMediatorArchive::~ChartMediatorArchive(TSCH::ChartMediatorArchive *this)
{
  if (this != &TSCH::_ChartMediatorArchive_default_instance_)
  {
    v2 = *(this + 7);
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(this + 1);
  if (*(this + 11) >= 1)
  {
    v3 = *(this + 6);
    v5 = *(v3 - 8);
    v4 = (v3 - 8);
    if (!v5)
    {
      operator delete(v4);
    }
  }

  if (*(this + 7) >= 1)
  {
    v6 = *(this + 4);
    v8 = *(v6 - 8);
    v7 = (v6 - 8);
    if (!v8)
    {
      operator delete(v7);
    }
  }
}

{
  TSCH::ChartMediatorArchive::~ChartMediatorArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartMediatorArchive::default_instance(TSCH::ChartMediatorArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartMediatorArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartMediatorArchive_default_instance_;
}

uint64_t *TSCH::ChartMediatorArchive::Clear(uint64_t *this)
{
  v1 = this;
  *(this + 6) = 0;
  *(this + 10) = 0;
  if (this[2])
  {
    this = TSP::Reference::Clear(this[7]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 8;
  *(v2 + 8) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartMediatorArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
LABEL_2:
  while ((sub_2763D4D98(a3, &v30) & 1) == 0)
  {
    v5 = (v30 + 1);
    v6 = *v30;
    if ((*v30 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v30 + 2);
LABEL_6:
      v30 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v7 - 128));
    v30 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v28;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 == 24)
      {
        v18 = v5 - 1;
        while (1)
        {
          v30 = (v18 + 1);
          v19 = v18[1];
          if (v18[1] < 0)
          {
            v20 = v19 + (v18[2] << 7);
            v19 = v20 - 128;
            if (v18[2] < 0)
            {
              v18 = google::protobuf::internal::VarintParseSlow32((v18 + 1), (v20 - 128));
              v19 = v21;
            }

            else
            {
              v18 += 3;
            }
          }

          else
          {
            v18 += 2;
          }

          v30 = v18;
          v22 = *(a1 + 40);
          if (v22 == *(a1 + 44))
          {
            v23 = v22 + 1;
            sub_2762E9624((a1 + 40), v22 + 1);
            *(*(a1 + 48) + 4 * v22) = v19;
            v18 = v30;
          }

          else
          {
            *(*(a1 + 48) + 4 * v22) = v19;
            v23 = v22 + 1;
          }

          *(a1 + 40) = v23;
          if (!v18)
          {
            return 0;
          }

          if (*a3 <= v18 || *v18 != 24)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 26)
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
          return v30;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_53;
      }

      goto LABEL_60;
    }

    if (v8 == 2)
    {
      if (v6 == 16)
      {
        v12 = v5 - 1;
        while (1)
        {
          v30 = (v12 + 1);
          v13 = v12[1];
          if (v12[1] < 0)
          {
            v14 = v13 + (v12[2] << 7);
            v13 = v14 - 128;
            if (v12[2] < 0)
            {
              v12 = google::protobuf::internal::VarintParseSlow32((v12 + 1), (v14 - 128));
              v13 = v15;
            }

            else
            {
              v12 += 3;
            }
          }

          else
          {
            v12 += 2;
          }

          v30 = v12;
          v16 = *(a1 + 24);
          if (v16 == *(a1 + 28))
          {
            v17 = v16 + 1;
            sub_2762E9624((a1 + 24), v16 + 1);
            *(*(a1 + 32) + 4 * v16) = v13;
            v12 = v30;
          }

          else
          {
            *(*(a1 + 32) + 4 * v16) = v13;
            v17 = v16 + 1;
          }

          *(a1 + 24) = v17;
          if (!v12)
          {
            return 0;
          }

          if (*a3 <= v12 || *v12 != 16)
          {
            goto LABEL_2;
          }
        }
      }

      if (v6 != 18)
      {
        goto LABEL_13;
      }

LABEL_60:
      v11 = google::protobuf::internal::PackedUInt32Parser();
      goto LABEL_53;
    }

    if (v8 != 1 || v6 != 10)
    {
      goto LABEL_13;
    }

    *(a1 + 16) |= 1u;
    v24 = *(a1 + 56);
    if (!v24)
    {
      v25 = *(a1 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = MEMORY[0x277C97B90](v25);
      LODWORD(v24) = v26;
      *(a1 + 56) = v26;
      v5 = v30;
    }

    v11 = sub_2764ADCBC(a3, v24, v5);
LABEL_53:
    v30 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v30;
}

unsigned __int8 *TSCH::ChartMediatorArchive::_InternalSerialize(TSCH::ChartMediatorArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 7);
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

    a2 = TSP::Reference::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(this + 6);
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v13 = *(*(this + 4) + 4 * i);
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

  v17 = *(this + 10);
  if (v17 >= 1)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(this + 6) + 4 * j);
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

  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v23 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSCH::ChartMediatorArchive::ByteSizeLong(TSP::Reference **this)
{
  v2 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v3 = *(this + 6);
  v4 = v2 + google::protobuf::internal::WireFormatLite::UInt32Size() + v3 + *(this + 10);
  if (this[2])
  {
    v5 = TSP::Reference::ByteSizeLong(this[7]);
    v4 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSCH::ChartMediatorArchive::MergeFrom(TSCH::ChartMediatorArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSCH::ChartMediatorArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSCH::ChartMediatorArchive::MergeFrom(uint64_t this, const TSCH::ChartMediatorArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_2763D4F88((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 6);
  if (v5)
  {
    v6 = *(v3 + 24);
    sub_2762E9624((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_2762E9624((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 10);
    this = memcpy((v10 + 4 * v9), *(a2 + 6), 4 * *(a2 + 10));
  }

  if (*(a2 + 16))
  {
    v11 = *(a2 + 7);
    *(v3 + 16) |= 1u;
    v12 = *(v3 + 56);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277C97B90](v13);
      *(v3 + 56) = v12;
      v11 = *(a2 + 7);
    }

    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = MEMORY[0x277D80A18];
    }

    return TSP::Reference::MergeFrom(v12, v14);
  }

  return this;
}

uint64_t *TSCH::ChartMediatorArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartMediatorArchive::Clear(this);

    return TSCH::ChartMediatorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSCH::ChartMediatorArchive::CopyFrom(uint64_t *this, const TSCH::ChartMediatorArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSCH::ChartMediatorArchive::Clear(this);

    return TSCH::ChartMediatorArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSCH::ChartMediatorArchive::IsInitialized(TSCH::ChartMediatorArchive *this)
{
  if ((*(this + 16) & 1) == 0)
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

__n128 TSCH::ChartMediatorArchive::InternalSwap(TSCH::ChartMediatorArchive *this, TSCH::ChartMediatorArchive *a2)
{
  sub_2763948BC(this + 1, a2 + 1);
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
  return result;
}

uint64_t TSCH::ChartFillSetArchive::clear_series_styles(uint64_t this)
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

TSCH::ChartFillSetArchive *TSCH::ChartFillSetArchive::ChartFillSetArchive(TSCH::ChartFillSetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288520BA8;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ChartFillSetArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  *(this + 7) = v3;
  *(this + 16) = 0;
  return this;
}

TSCH::ChartFillSetArchive *TSCH::ChartFillSetArchive::ChartFillSetArchive(TSCH::ChartFillSetArchive *this, const TSCH::ChartFillSetArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288520BA8;
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
    sub_2763F8D40(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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
    sub_2763D4F88(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v11 = MEMORY[0x277D80A90];
  *(this + 6) = MEMORY[0x277D80A90];
  v12 = *(a2 + 4);
  if (v12)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v12 = *(a2 + 4);
  }

  *(this + 7) = v11;
  if ((v12 & 2) != 0)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
  }

  *(this + 16) = *(a2 + 16);
  return this;
}

void TSCH::ChartFillSetArchive::~ChartFillSetArchive(TSCH::ChartFillSetArchive *this)
{
  v2 = *(this + 6);
  v3 = MEMORY[0x277D80A90];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 7);
  if (v4 != v3)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x277C98580](v4, 0x1012C40EC159624);
  }

  sub_2763941F4(this + 1);
  sub_276478328(this + 3);
}

{
  TSCH::ChartFillSetArchive::~ChartFillSetArchive(this);

  JUMPOUT(0x277C98580);
}

void *TSCH::ChartFillSetArchive::default_instance(TSCH::ChartFillSetArchive *this)
{
  if (atomic_load_explicit(scc_info_ChartFillSetArchive_TSCHArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSCH::_ChartFillSetArchive_default_instance_;
}

uint64_t *TSCH::ChartFillSetArchive::Clear(uint64_t *this)
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
      v6 = *(v1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v6 + 23) < 0)
      {
        **v6 = 0;
        *(v6 + 8) = 0;
        if ((v5 & 2) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_10;
      }

      *v6 = 0;
      *(v6 + 23) = 0;
    }

    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_10:
    v7 = *(v1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v7 + 23) < 0)
    {
      **v7 = 0;
      *(v7 + 8) = 0;
    }

    else
    {
      *v7 = 0;
      *(v7 + 23) = 0;
    }
  }

LABEL_15:
  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 56) = 0;
  *(v8 + 8) = 0;
  if (v9)
  {

    return sub_2763D4FD4(v8);
  }

  return this;
}

google::protobuf::internal *TSCH::ChartFillSetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v30) & 1) == 0)
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
        goto LABEL_53;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 != 1)
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_38;
          }

          *(a1 + 16) |= 2u;
LABEL_32:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v21 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_45:
          v30 = v21;
          if (!v21)
          {
            goto LABEL_53;
          }

          goto LABEL_46;
        }

        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          goto LABEL_32;
        }

LABEL_38:
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
          sub_2763D4E10((a1 + 8));
        }

        v21 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_45;
      }

      if (v10 != 3)
      {
        if (v10 != 4 || v8 != 34)
        {
          goto LABEL_38;
        }

        v12 = v7 - 1;
        while (2)
        {
          v13 = (v12 + 1);
          v30 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_20:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_21;
          }

          v20 = *(a1 + 32);
          v15 = *v14;
          if (v20 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_20;
            }

LABEL_21:
            *v14 = v15 + 1;
            v16 = MEMORY[0x277C97B90](*(a1 + 24));
            LODWORD(v17) = v16;
            v18 = *(a1 + 32);
            v19 = *(a1 + 40) + 8 * v18;
            *(a1 + 32) = v18 + 1;
            *(v19 + 8) = v16;
            v13 = v30;
          }

          else
          {
            *(a1 + 32) = v20 + 1;
            v17 = *&v14[2 * v20 + 2];
          }

          v12 = sub_2764ADCBC(a3, v17, v13);
          v30 = v12;
          if (!v12)
          {
            goto LABEL_53;
          }

          if (*a3 <= v12 || *v12 != 34)
          {
            goto LABEL_46;
          }

          continue;
        }
      }

      if (v8 != 24)
      {
        goto LABEL_38;
      }

      v5 |= 4u;
      v22 = (v7 + 1);
      LODWORD(v23) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      v24 = *v22;
      v23 = (v23 + (v24 << 7) - 128);
      if ((v24 & 0x80000000) == 0)
      {
        v22 = (v7 + 2);
LABEL_37:
        v30 = v22;
        *(a1 + 64) = v23;
        goto LABEL_46;
      }

      v28 = google::protobuf::internal::VarintParseSlow32(v7, v23);
      v30 = v28;
      *(a1 + 64) = v29;
      if (!v28)
      {
LABEL_53:
        v30 = 0;
        goto LABEL_2;
      }

LABEL_46:
      if (sub_2763D4D98(a3, &v30))
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