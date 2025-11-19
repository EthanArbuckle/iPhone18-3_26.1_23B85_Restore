__n128 TSWP::ListStyleArchive_LabelImage::InternalSwap(TSWP::ListStyleArchive_LabelImage *this, TSWP::ListStyleArchive_LabelImage *a2)
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

TSS::StyleArchive *TSWP::ListStyleArchive::clear_super(TSWP::ListStyleArchive *this)
{
  result = *(this + 23);
  if (result)
  {
    result = TSS::StyleArchive::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::ShadowArchive *TSWP::ListStyleArchive::clear_shadow(TSWP::ListStyleArchive *this)
{
  result = *(this + 24);
  if (result)
  {
    result = TSD::ShadowArchive::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSP::Color *TSWP::ListStyleArchive::clear_font_color(TSWP::ListStyleArchive *this)
{
  result = *(this + 25);
  if (result)
  {
    result = TSP::Color::Clear(result);
  }

  *(this + 4) &= ~8u;
  return result;
}

TSWP::ListStyleArchive *TSWP::ListStyleArchive::ListStyleArchive(TSWP::ListStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600C00;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = a2;
  *(this + 5) = 0;
  *(this + 6) = a2;
  *(this + 7) = 0;
  *(this + 8) = a2;
  *(this + 9) = a2;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = a2;
  *(this + 14) = a2;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = a2;
  *(this + 21) = a2;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  if (atomic_load_explicit(scc_info_ListStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 22) = MEMORY[0x277D80A90];
  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 207) = 0;
  *(this + 54) = -1;
  return this;
}

void sub_276E650A8(_Unwind_Exception *a1)
{
  if (*(v1 + 164) >= 1)
  {
    sub_276F53F54(v5);
  }

  sub_276EA5984(v4);
  sub_276EA53C4(v3);
  if (*(v1 + 100) >= 1)
  {
    v7 = *(v1 + 104);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  sub_276EA58EC(v2);
  if (*(v1 + 60) >= 1)
  {
    v10 = *(v1 + 64);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  if (*(v1 + 44) >= 1)
  {
    v13 = *(v1 + 48);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v16 = *(v1 + 32);
    v18 = *(v16 - 8);
    v17 = (v16 - 8);
    if (!v18)
    {
      operator delete(v17);
    }
  }

  _Unwind_Resume(a1);
}

TSWP::ListStyleArchive *TSWP::ListStyleArchive::ListStyleArchive(TSWP::ListStyleArchive *this, const TSWP::ListStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600C00;
  *(this + 4) = *(a2 + 4);
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 28) = 0;
  v5 = *(a2 + 6);
  if (v5)
  {
    sub_276D4D210(this + 6, v5);
    v6 = *(this + 4);
    *(this + 6) += *(a2 + 6);
    memcpy(v6, *(a2 + 4), 4 * *(a2 + 6));
  }

  *(this + 5) = 0;
  *(this + 6) = 0;
  v7 = *(a2 + 10);
  if (v7)
  {
    sub_276D4D210(this + 10, v7);
    v8 = *(this + 6);
    *(this + 10) += *(a2 + 10);
    memcpy(v8, *(a2 + 6), 4 * *(a2 + 10));
  }

  *(this + 7) = 0;
  *(this + 8) = 0;
  v9 = *(a2 + 14);
  if (v9)
  {
    sub_276D4D210(this + 14, v9);
    v10 = *(this + 8);
    *(this + 14) += *(a2 + 14);
    memcpy(v10, *(a2 + 8), 4 * *(a2 + 14));
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  v11 = *(a2 + 20);
  if (v11)
  {
    v12 = *(a2 + 11);
    v13 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 72));
    sub_276EA5C8C(this + 72, v13, (v12 + 8), v11, **(this + 11) - *(this + 20));
    v14 = *(this + 20) + v11;
    *(this + 20) = v14;
    v15 = *(this + 11);
    if (*v15 < v14)
    {
      *v15 = v14;
    }
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  v16 = *(a2 + 24);
  if (v16)
  {
    sub_276D4D210(this + 24, v16);
    v17 = *(this + 13);
    *(this + 24) += *(a2 + 24);
    memcpy(v17, *(a2 + 13), 4 * *(a2 + 24));
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v18 = *(a2 + 30);
  if (v18)
  {
    v19 = *(a2 + 16);
    v20 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 112));
    sub_276EA5460((this + 112), v20, (v19 + 8), v18, **(this + 16) - *(this + 30));
    v21 = *(this + 30) + v18;
    *(this + 30) = v21;
    v22 = *(this + 16);
    if (*v22 < v21)
    {
      *v22 = v21;
    }
  }

  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v23 = *(a2 + 36);
  if (v23)
  {
    v24 = *(a2 + 19);
    v25 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 136));
    sub_276EA5D4C(this + 136, v25, (v24 + 8), v23, **(this + 19) - *(this + 36));
    v26 = *(this + 36) + v23;
    *(this + 36) = v26;
    v27 = *(this + 19);
    if (*v27 < v26)
    {
      *v27 = v26;
    }
  }

  *(this + 20) = 0;
  *(this + 21) = 0;
  v28 = *(a2 + 40);
  if (v28)
  {
    sub_276D4D368(this + 40, v28);
    v29 = *(this + 21);
    *(this + 40) += *(a2 + 40);
    memcpy(v29, *(a2 + 21), *(a2 + 40));
  }

  v30 = *(a2 + 1);
  if (v30)
  {
    sub_276EA4CDC(v4, (v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 22) = MEMORY[0x277D80A90];
  v31 = *(a2 + 4);
  if (v31)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v31 = *(a2 + 4);
  }

  if ((v31 & 2) != 0)
  {
    operator new();
  }

  *(this + 23) = 0;
  if ((v31 & 4) != 0)
  {
    operator new();
  }

  *(this + 24) = 0;
  if ((v31 & 8) != 0)
  {
    operator new();
  }

  *(this + 25) = 0;
  v32 = *(a2 + 26);
  *(this + 54) = *(a2 + 54);
  *(this + 26) = v32;
  return this;
}

void sub_276E65528(_Unwind_Exception *a1)
{
  MEMORY[0x277CA3D00](v4, 0x1081C40654DEE2BLL);
  if (*(v1 + 164) >= 1)
  {
    v7 = *(v1 + 168);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  sub_276EA5984(v5);
  sub_276EA53C4(v3);
  if (*(v1 + 100) >= 1)
  {
    v10 = *(v1 + 104);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  sub_276EA58EC(v2);
  if (*(v1 + 60) >= 1)
  {
    v13 = *(v1 + 64);
    v15 = *(v13 - 8);
    v14 = (v13 - 8);
    if (!v15)
    {
      operator delete(v14);
    }
  }

  if (*(v1 + 44) >= 1)
  {
    v16 = *(v1 + 48);
    v18 = *(v16 - 8);
    v17 = (v16 - 8);
    if (!v18)
    {
      operator delete(v17);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v19 = *(v1 + 32);
    v21 = *(v19 - 8);
    v20 = (v19 - 8);
    if (!v21)
    {
      operator delete(v20);
    }
  }

  _Unwind_Resume(a1);
}

void TSWP::ListStyleArchive::~ListStyleArchive(TSWP::ListStyleArchive *this)
{
  sub_276E6574C(this);
  sub_276E4E808(this + 1);
  if (*(this + 41) >= 1)
  {
    v2 = *(this + 21);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  sub_276EA5984(this + 17);
  sub_276EA53C4(this + 14);
  if (*(this + 25) >= 1)
  {
    v5 = *(this + 13);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  sub_276EA58EC(this + 9);
  if (*(this + 15) >= 1)
  {
    v8 = *(this + 8);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(this + 11) >= 1)
  {
    v11 = *(this + 6);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  if (*(this + 7) >= 1)
  {
    v14 = *(this + 4);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }
}

{
  TSWP::ListStyleArchive::~ListStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSP::Color *sub_276E6574C(TSP::Color *result)
{
  v1 = result;
  v2 = *(result + 22);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x277CA3D00](v2, 0x1012C40EC159624);
  }

  if (v1 != &TSWP::_ListStyleArchive_default_instance_)
  {
    if (*(v1 + 23))
    {
      v3 = MEMORY[0x277CA2C50]();
      MEMORY[0x277CA3D00](v3, 0x10A1C40AC828A93);
    }

    if (*(v1 + 24))
    {
      v4 = MEMORY[0x277CA2680]();
      MEMORY[0x277CA3D00](v4, 0x10A1C40C8B7F858);
    }

    result = *(v1 + 25);
    if (result)
    {
      TSP::Color::~Color(result);

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::ListStyleArchive::default_instance(TSWP::ListStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_ListStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ListStyleArchive_default_instance_;
}

uint64_t *TSWP::ListStyleArchive::Clear(TSWP::ListStyleArchive *this)
{
  *(this + 6) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  v2 = *(this + 20);
  if (v2 >= 1)
  {
    v3 = (*(this + 11) + 8);
    do
    {
      v4 = *v3++;
      TSWP::ListStyleArchive_LabelGeometry::Clear(v4);
      --v2;
    }

    while (v2);
    *(this + 20) = 0;
  }

  *(this + 24) = 0;
  result = sub_276EA4C0C(this + 112);
  v6 = *(this + 36);
  if (v6 >= 1)
  {
    v7 = (*(this + 19) + 8);
    do
    {
      v8 = *v7++;
      result = TSWP::ListStyleArchive_LabelImage::Clear(v8);
      --v6;
    }

    while (v6);
    *(this + 36) = 0;
  }

  *(this + 40) = 0;
  v9 = *(this + 4);
  if ((v9 & 0xF) == 0)
  {
    goto LABEL_15;
  }

  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    result = TSS::StyleArchive::Clear(*(this + 23));
    if ((v9 & 4) == 0)
    {
LABEL_13:
      if ((v9 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    goto LABEL_26;
  }

  v12 = *(this + 22) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v12 + 23) < 0)
  {
    **v12 = 0;
    *(v12 + 8) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    *v12 = 0;
    *(v12 + 23) = 0;
    if ((v9 & 2) != 0)
    {
      goto LABEL_25;
    }
  }

LABEL_12:
  if ((v9 & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_26:
  result = TSD::ShadowArchive::Clear(*(this + 24));
  if ((v9 & 8) != 0)
  {
LABEL_14:
    result = TSP::Color::Clear(*(this + 25));
  }

LABEL_15:
  if ((v9 & 0xF0) != 0)
  {
    *(this + 211) = 0;
    *(this + 52) = 0;
  }

  v11 = *(this + 8);
  v10 = this + 8;
  *(v10 + 52) = -1;
  *(v10 + 2) = 0;
  if (v11)
  {

    return sub_276EA4D28(v10);
  }

  return result;
}

google::protobuf::internal *TSWP::ListStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v101 = a2;
  v5 = 0;
  if (sub_276EA4A1C(a3, &v101))
  {
    goto LABEL_2;
  }

  v7 = (a1 + 8);
  while (2)
  {
    v8 = (v101 + 1);
    v9 = *v101;
    if ((*v101 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    v10 = *v8;
    v11 = v9 + (v10 << 7);
    v9 = v11 - 128;
    if ((v10 & 0x80000000) == 0)
    {
      v8 = (v101 + 2);
LABEL_7:
      v101 = v8;
      goto LABEL_8;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v101, (v11 - 128));
    v101 = TagFallback;
    if (!TagFallback)
    {
      goto LABEL_191;
    }

    v8 = TagFallback;
    v9 = v16;
LABEL_8:
    switch(v9 >> 3)
    {
      case 1u:
        if (v9 != 10)
        {
          goto LABEL_180;
        }

        *(a1 + 16) |= 2u;
        v12 = *(a1 + 184);
        if (!v12)
        {
          v13 = MEMORY[0x277CA3260]();
          LODWORD(v12) = v13;
          *(a1 + 184) = v13;
          v8 = v101;
        }

        v14 = sub_276F51404(a3, v12, v8);
        goto LABEL_187;
      case 0xAu:
        if (v9 != 80)
        {
          goto LABEL_180;
        }

        v5 |= 0x10u;
        v28 = (v8 + 1);
        LODWORD(v29) = *v8;
        if ((*v8 & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        v30 = *v28;
        v29 = (v29 + (v30 << 7) - 128);
        if (v30 < 0)
        {
          v92 = google::protobuf::internal::VarintParseSlow32(v8, v29);
          v101 = v92;
          *(a1 + 208) = v93;
          if (!v92)
          {
            goto LABEL_191;
          }
        }

        else
        {
          v28 = (v8 + 2);
LABEL_40:
          v101 = v28;
          *(a1 + 208) = v29;
        }

        goto LABEL_188;
      case 0xBu:
        if (v9 == 88)
        {
          v46 = (v8 - 1);
          while (1)
          {
            v101 = (v46 + 1);
            v47 = *(v46 + 1);
            v48 = (v46 + 2);
            if (v47 < 0)
            {
              v49 = *v48;
              v50 = (v49 << 7) + v47;
              LODWORD(v47) = v50 - 128;
              if (v49 < 0)
              {
                v101 = google::protobuf::internal::VarintParseSlow64((v46 + 1), (v50 - 128));
                if (!v101)
                {
                  goto LABEL_191;
                }

                LODWORD(v47) = v53;
                goto LABEL_73;
              }

              v48 = (v46 + 3);
            }

            v101 = v48;
LABEL_73:
            if (v47 > 3)
            {
              sub_276F53FA4();
            }

            else
            {
              v51 = *(a1 + 24);
              if (v51 == *(a1 + 28))
              {
                v52 = v51 + 1;
                sub_276D4D210((a1 + 24), v51 + 1);
                *(*(a1 + 32) + 4 * v51) = v47;
              }

              else
              {
                *(*(a1 + 32) + 4 * v51) = v47;
                v52 = v51 + 1;
              }

              *(a1 + 24) = v52;
            }

            v46 = v101;
            if (*a3 <= v101 || *v101 != 88)
            {
              goto LABEL_188;
            }
          }
        }

        if (v9 != 90)
        {
          goto LABEL_180;
        }

        *&v102 = a1 + 24;
        *(&v102 + 1) = TSWP::ListStyleArchive_LabelType_IsValid;
        v103 = a1 + 8;
        v104 = 11;
        goto LABEL_177;
      case 0xCu:
        if (v9 == 101)
        {
          v42 = v8 - 1;
          v43 = *(a1 + 40);
          do
          {
            v44 = (v42 + 1);
            v101 = (v42 + 1);
            v45 = *(v42 + 1);
            if (v43 == *(a1 + 44))
            {
              sub_276D4D210((a1 + 40), v43 + 1);
              *(*(a1 + 48) + 4 * v43) = v45;
              v44 = v101;
            }

            else
            {
              *(*(a1 + 48) + 4 * v43) = v45;
            }

            *(a1 + 40) = ++v43;
            v42 = v44 + 4;
            v101 = (v44 + 4);
          }

          while (*a3 > v44 + 4 && *v42 == 101);
          goto LABEL_188;
        }

        if (v9 != 98)
        {
          goto LABEL_180;
        }

        v99 = a1 + 40;
        goto LABEL_172;
      case 0xDu:
        if (v9 == 109)
        {
          v22 = v8 - 1;
          v23 = *(a1 + 56);
          do
          {
            v24 = (v22 + 1);
            v101 = (v22 + 1);
            v25 = *(v22 + 1);
            if (v23 == *(a1 + 60))
            {
              sub_276D4D210((a1 + 56), v23 + 1);
              *(*(a1 + 64) + 4 * v23) = v25;
              v24 = v101;
            }

            else
            {
              *(*(a1 + 64) + 4 * v23) = v25;
            }

            *(a1 + 56) = ++v23;
            v22 = v24 + 4;
            v101 = (v24 + 4);
          }

          while (*a3 > v24 + 4 && *v22 == 109);
          goto LABEL_188;
        }

        if (v9 != 106)
        {
          goto LABEL_180;
        }

        v99 = a1 + 56;
LABEL_172:
        v14 = MEMORY[0x277CA34C0](v99, v8, a3);
        goto LABEL_187;
      case 0xEu:
        if (v9 != 114)
        {
          goto LABEL_180;
        }

        v31 = (v8 - 1);
        while (1)
        {
          v32 = (v31 + 1);
          v101 = (v31 + 1);
          v33 = *(a1 + 88);
          if (!v33)
          {
            goto LABEL_44;
          }

          v38 = *(a1 + 80);
          v34 = *v33;
          if (v38 < *v33)
          {
            *(a1 + 80) = v38 + 1;
            v35 = *&v33[2 * v38 + 2];
            goto LABEL_48;
          }

          if (v34 == *(a1 + 84))
          {
LABEL_44:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v33 = *(a1 + 88);
            v34 = *v33;
          }

          *v33 = v34 + 1;
          v35 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ListStyleArchive_LabelGeometry>(*(a1 + 72));
          v36 = *(a1 + 80);
          v37 = *(a1 + 88) + 8 * v36;
          *(a1 + 80) = v36 + 1;
          *(v37 + 8) = v35;
          v32 = v101;
LABEL_48:
          v31 = sub_276F51A84(a3, v35, v32);
          v101 = v31;
          if (!v31)
          {
            goto LABEL_191;
          }

          if (*a3 <= v31 || *v31 != 114)
          {
            goto LABEL_188;
          }
        }

      case 0xFu:
        if (v9 == 120)
        {
          v54 = (v8 - 1);
          while (1)
          {
            v101 = (v54 + 1);
            v55 = *(v54 + 1);
            v56 = (v54 + 2);
            if (v55 < 0)
            {
              v57 = *v56;
              v58 = (v57 << 7) + v55;
              LODWORD(v55) = v58 - 128;
              if (v57 < 0)
              {
                v101 = google::protobuf::internal::VarintParseSlow64((v54 + 1), (v58 - 128));
                if (!v101)
                {
                  goto LABEL_191;
                }

                LODWORD(v55) = v61;
                goto LABEL_90;
              }

              v56 = (v54 + 3);
            }

            v101 = v56;
LABEL_90:
            if (v55 > 0x40)
            {
              sub_276F53F68();
            }

            else
            {
              v59 = *(a1 + 96);
              if (v59 == *(a1 + 100))
              {
                v60 = v59 + 1;
                sub_276D4D210((a1 + 96), v59 + 1);
                *(*(a1 + 104) + 4 * v59) = v55;
              }

              else
              {
                *(*(a1 + 104) + 4 * v59) = v55;
                v60 = v59 + 1;
              }

              *(a1 + 96) = v60;
            }

            v54 = v101;
            if (*a3 <= v101 || *v101 != 120)
            {
              goto LABEL_188;
            }
          }
        }

        if (v9 != 122)
        {
          goto LABEL_180;
        }

        *&v102 = a1 + 96;
        *(&v102 + 1) = TSWP::ListStyleArchive_NumberType_IsValid;
        v103 = a1 + 8;
        v104 = 15;
LABEL_177:
        v14 = sub_276EA5A08(a3, v8, &v102);
        goto LABEL_187;
      case 0x10u:
        if (v9 != 130)
        {
          goto LABEL_180;
        }

        v62 = v8 - 2;
        while (1)
        {
          v101 = (v62 + 2);
          v63 = *(a1 + 128);
          if (!v63)
          {
            goto LABEL_108;
          }

          v64 = *(a1 + 120);
          v65 = *v63;
          if (v64 >= *v63)
          {
            break;
          }

          *(a1 + 120) = v64 + 1;
LABEL_110:
          v62 = google::protobuf::internal::InlineGreedyStringParser();
          v101 = v62;
          if (!v62)
          {
            goto LABEL_191;
          }

          if (*a3 <= v62 || *v62 != 386)
          {
            goto LABEL_188;
          }
        }

        if (v65 == *(a1 + 124))
        {
LABEL_108:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 112));
          v63 = *(a1 + 128);
          v65 = *v63;
        }

        *v63 = v65 + 1;
        v66 = sub_276D34D8C(*(a1 + 112));
        v67 = *(a1 + 120);
        v68 = *(a1 + 128) + 8 * v67;
        *(a1 + 120) = v67 + 1;
        *(v68 + 8) = v66;
        goto LABEL_110;
      case 0x11u:
        if (v9 != 138)
        {
          goto LABEL_180;
        }

        v76 = (v8 - 2);
        while (1)
        {
          v77 = (v76 + 2);
          v101 = (v76 + 2);
          v78 = *(a1 + 152);
          if (!v78)
          {
            goto LABEL_131;
          }

          v83 = *(a1 + 144);
          v79 = *v78;
          if (v83 < *v78)
          {
            *(a1 + 144) = v83 + 1;
            v80 = *&v78[2 * v83 + 2];
            goto LABEL_135;
          }

          if (v79 == *(a1 + 148))
          {
LABEL_131:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 136));
            v78 = *(a1 + 152);
            v79 = *v78;
          }

          *v78 = v79 + 1;
          v80 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ListStyleArchive_LabelImage>(*(a1 + 136));
          v81 = *(a1 + 144);
          v82 = *(a1 + 152) + 8 * v81;
          *(a1 + 144) = v81 + 1;
          *(v82 + 8) = v80;
          v77 = v101;
LABEL_135:
          v76 = sub_276F51B54(a3, v80, v77);
          v101 = v76;
          if (!v76)
          {
            goto LABEL_191;
          }

          if (*a3 <= v76 || *v76 != 394)
          {
            goto LABEL_188;
          }
        }

      case 0x12u:
        if (v9 != 144)
        {
          goto LABEL_180;
        }

        v5 |= 0x20u;
        v74 = (v8 + 1);
        v73 = *v8;
        if ((v73 & 0x8000000000000000) == 0)
        {
          goto LABEL_127;
        }

        v75 = *v74;
        v73 = (v75 << 7) + v73 - 128;
        if (v75 < 0)
        {
          v97 = google::protobuf::internal::VarintParseSlow64(v8, v73);
          v101 = v97;
          *(a1 + 212) = v98 != 0;
          if (!v97)
          {
            goto LABEL_191;
          }
        }

        else
        {
          v74 = (v8 + 2);
LABEL_127:
          v101 = v74;
          *(a1 + 212) = v73 != 0;
        }

        goto LABEL_188;
      case 0x13u:
        if (v9 != 154)
        {
          goto LABEL_180;
        }

        *(a1 + 16) |= 4u;
        v20 = *(a1 + 192);
        if (!v20)
        {
          v21 = MEMORY[0x277CA3140]();
          LODWORD(v20) = v21;
          *(a1 + 192) = v21;
          v8 = v101;
        }

        v14 = sub_276F510C4(a3, v20, v8);
        goto LABEL_187;
      case 0x14u:
        if (v9 != 160)
        {
          goto LABEL_180;
        }

        v5 |= 0x40u;
        v40 = (v8 + 1);
        v39 = *v8;
        if ((v39 & 0x8000000000000000) == 0)
        {
          goto LABEL_58;
        }

        v41 = *v40;
        v39 = (v41 << 7) + v39 - 128;
        if (v41 < 0)
        {
          v94 = google::protobuf::internal::VarintParseSlow64(v8, v39);
          v101 = v94;
          *(a1 + 213) = v95 != 0;
          if (!v94)
          {
            goto LABEL_191;
          }
        }

        else
        {
          v40 = (v8 + 2);
LABEL_58:
          v101 = v40;
          *(a1 + 213) = v39 != 0;
        }

        goto LABEL_188;
      case 0x15u:
        if (v9 != 170)
        {
          goto LABEL_180;
        }

        *(a1 + 16) |= 8u;
        v26 = *(a1 + 200);
        if (!v26)
        {
          v27 = MEMORY[0x277CA3210]();
          LODWORD(v26) = v27;
          *(a1 + 200) = v27;
          v8 = v101;
        }

        v14 = sub_276F50FF4(a3, v26, v8);
        goto LABEL_187;
      case 0x16u:
        if (v9 != 176)
        {
          goto LABEL_180;
        }

        v5 |= 0x80u;
        v18 = (v8 + 1);
        v17 = *v8;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if (v19 < 0)
        {
          v90 = google::protobuf::internal::VarintParseSlow64(v8, v17);
          v101 = v90;
          *(a1 + 214) = v91 != 0;
          if (!v90)
          {
            goto LABEL_191;
          }
        }

        else
        {
          v18 = (v8 + 2);
LABEL_19:
          v101 = v18;
          *(a1 + 214) = v17 != 0;
        }

        goto LABEL_188;
      case 0x17u:
        if (v9 != 186)
        {
          goto LABEL_180;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v14 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_187;
      case 0x18u:
        if (v9 != 192)
        {
          goto LABEL_180;
        }

        v69 = (v8 + 1);
        v70 = *v8;
        if ((v70 & 0x8000000000000000) == 0)
        {
          goto LABEL_120;
        }

        v71 = *v69;
        v72 = (v71 << 7) + v70;
        LODWORD(v70) = v72 - 128;
        if (v71 < 0)
        {
          v101 = google::protobuf::internal::VarintParseSlow64(v8, (v72 - 128));
          if (!v101)
          {
            goto LABEL_191;
          }

          LODWORD(v70) = v96;
        }

        else
        {
          v69 = (v8 + 2);
LABEL_120:
          v101 = v69;
        }

        if ((v70 + 1) > 2)
        {
          if (*v7)
          {
            v89 = ((*v7 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v89 = sub_276EA4A94((a1 + 8));
          }

          google::protobuf::UnknownFieldSet::AddVarint(v89);
        }

        else
        {
          *(a1 + 16) |= 0x100u;
          *(a1 + 216) = v70;
        }

        goto LABEL_188;
      case 0x19u:
        if (v9 != 200)
        {
          if (v9 == 202)
          {
            v14 = google::protobuf::internal::PackedBoolParser();
          }

          else
          {
LABEL_180:
            if (v9)
            {
              v100 = (v9 & 7) == 4;
            }

            else
            {
              v100 = 1;
            }

            if (v100)
            {
              *(a3 + 80) = v9 - 1;
              goto LABEL_2;
            }

            if ((*v7 & 1) == 0)
            {
              sub_276EA4A94((a1 + 8));
            }

            v14 = google::protobuf::internal::UnknownFieldParse();
          }

LABEL_187:
          v101 = v14;
          if (!v14)
          {
            goto LABEL_191;
          }

LABEL_188:
          if (sub_276EA4A1C(a3, &v101))
          {
            goto LABEL_2;
          }

          continue;
        }

        v84 = v8 - 2;
        while (1)
        {
          v101 = (v84 + 2);
          v85 = v84[2];
          if ((v85 & 0x8000000000000000) != 0)
          {
            v85 = (v84[3] << 7) + v85 - 128;
            if (v84[3] < 0)
            {
              v84 = google::protobuf::internal::VarintParseSlow64((v84 + 2), v85);
            }

            else
            {
              v84 += 4;
            }
          }

          else
          {
            v84 += 3;
          }

          v101 = v84;
          v86 = v85 != 0;
          v87 = *(a1 + 160);
          if (v87 == *(a1 + 164))
          {
            v88 = v87 + 1;
            sub_276D4D368((a1 + 160), v87 + 1);
            *(*(a1 + 168) + v87) = v86;
            v84 = v101;
          }

          else
          {
            *(*(a1 + 168) + v87) = v86;
            v88 = v87 + 1;
          }

          *(a1 + 160) = v88;
          if (!v84)
          {
            break;
          }

          if (*a3 <= v84 || *v84 != 456)
          {
            goto LABEL_188;
          }
        }

LABEL_191:
        v101 = 0;
LABEL_2:
        *(a1 + 16) |= v5;
        return v101;
      default:
        goto LABEL_180;
    }
  }
}

unsigned __int8 *TSWP::ListStyleArchive::_InternalSerialize(TSWP::ListStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 23);
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

    v4 = TSS::StyleArchive::_InternalSerialize(v7, v9, a3);
  }

  if ((v6 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 52);
    *v4 = 80;
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
  }

  v17 = *(this + 6);
  if (v17 >= 1)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v19 = *(*(this + 4) + 4 * i);
      *v4 = 88;
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
        }

        else
        {
          v4[2] = v20;
          v4 += 3;
        }
      }

      else
      {
        v4[1] = v19;
        v4 += 2;
      }
    }
  }

  v23 = *(this + 10);
  if (v23 >= 1)
  {
    v24 = 0;
    v25 = 4 * v23;
    do
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v26 = *(*(this + 6) + v24);
      *v4 = 101;
      *(v4 + 1) = v26;
      v4 += 5;
      v24 += 4;
    }

    while (v25 != v24);
  }

  v27 = *(this + 14);
  if (v27 >= 1)
  {
    v28 = 0;
    v29 = 4 * v27;
    do
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v30 = *(*(this + 8) + v28);
      *v4 = 109;
      *(v4 + 1) = v30;
      v4 += 5;
      v28 += 4;
    }

    while (v29 != v28);
  }

  v31 = *(this + 20);
  if (v31)
  {
    for (j = 0; j != v31; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v33 = *(*(this + 11) + 8 * j + 8);
      *v4 = 114;
      v34 = *(v33 + 5);
      if (v34 > 0x7F)
      {
        v4[1] = v34 | 0x80;
        v36 = v34 >> 7;
        if (v34 >> 14)
        {
          v35 = v4 + 3;
          do
          {
            *(v35 - 1) = v36 | 0x80;
            v37 = v36 >> 7;
            ++v35;
            v38 = v36 >> 14;
            v36 >>= 7;
          }

          while (v38);
          *(v35 - 1) = v37;
        }

        else
        {
          v4[2] = v36;
          v35 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v34;
        v35 = v4 + 2;
      }

      v4 = TSWP::ListStyleArchive_LabelGeometry::_InternalSerialize(v33, v35, a3);
    }
  }

  v39 = *(this + 24);
  if (v39 >= 1)
  {
    for (k = 0; k != v39; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v41 = *(*(this + 13) + 4 * k);
      *v4 = 120;
      if (v41 > 0x7F)
      {
        v4[1] = v41 | 0x80;
        v42 = v41 >> 7;
        if (v41 >> 14)
        {
          v4 += 3;
          do
          {
            *(v4 - 1) = v42 | 0x80;
            v43 = v42 >> 7;
            ++v4;
            v44 = v42 >> 14;
            v42 >>= 7;
          }

          while (v44);
          *(v4 - 1) = v43;
        }

        else
        {
          v4[2] = v42;
          v4 += 3;
        }
      }

      else
      {
        v4[1] = v41;
        v4 += 2;
      }
    }
  }

  v45 = *(this + 30);
  if (v45 >= 1)
  {
    v46 = 8;
    do
    {
      v4 = sub_276E57174(a3, 16, *(*(this + 16) + v46), v4);
      v46 += 8;
      --v45;
    }

    while (v45);
  }

  v47 = *(this + 36);
  if (v47)
  {
    for (m = 0; m != v47; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v49 = *(*(this + 19) + 8 * m + 8);
      *v4 = 394;
      v50 = *(v49 + 5);
      if (v50 > 0x7F)
      {
        v4[2] = v50 | 0x80;
        v52 = v50 >> 7;
        if (v50 >> 14)
        {
          v51 = v4 + 4;
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
          v4[3] = v52;
          v51 = v4 + 4;
        }
      }

      else
      {
        v4[2] = v50;
        v51 = v4 + 3;
      }

      v4 = TSWP::ListStyleArchive_LabelImage::_InternalSerialize(v49, v51, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v55 = *(this + 212);
    *v4 = 400;
    v4[2] = v55;
    v4 += 3;
    if ((v6 & 4) == 0)
    {
LABEL_85:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_86;
      }

      goto LABEL_104;
    }
  }

  else if ((v6 & 4) == 0)
  {
    goto LABEL_85;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v56 = *(this + 24);
  *v4 = 410;
  v57 = *(v56 + 5);
  if (v57 > 0x7F)
  {
    v4[2] = v57 | 0x80;
    v59 = v57 >> 7;
    if (v57 >> 14)
    {
      v58 = v4 + 4;
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
      v4[3] = v59;
      v58 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v57;
    v58 = v4 + 3;
  }

  v4 = TSD::ShadowArchive::_InternalSerialize(v56, v58, a3);
  if ((v6 & 0x40) == 0)
  {
LABEL_86:
    if ((v6 & 8) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_107;
  }

LABEL_104:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v62 = *(this + 213);
  *v4 = 416;
  v4[2] = v62;
  v4 += 3;
  if ((v6 & 8) == 0)
  {
LABEL_87:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_117;
  }

LABEL_107:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v63 = *(this + 25);
  *v4 = 426;
  v64 = *(v63 + 5);
  if (v64 > 0x7F)
  {
    v4[2] = v64 | 0x80;
    v66 = v64 >> 7;
    if (v64 >> 14)
    {
      v65 = v4 + 4;
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
      v4[3] = v66;
      v65 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v64;
    v65 = v4 + 3;
  }

  v4 = TSP::Color::_InternalSerialize(v63, v65, a3);
  if ((v6 & 0x80) == 0)
  {
LABEL_88:
    if ((v6 & 1) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_120;
  }

LABEL_117:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v69 = *(this + 214);
  *v4 = 432;
  v4[2] = v69;
  v4 += 3;
  if ((v6 & 1) == 0)
  {
LABEL_89:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_121;
  }

LABEL_120:
  v4 = sub_276E5154C(a3, 23, (*(this + 22) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x100) == 0)
  {
    goto LABEL_130;
  }

LABEL_121:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v70 = *(this + 54);
  *v4 = 448;
  if (v70 > 0x7F)
  {
    v4[2] = v70 | 0x80;
    v71 = v70 >> 7;
    if (v70 >> 14)
    {
      v4 += 4;
      do
      {
        *(v4 - 1) = v71 | 0x80;
        v72 = v71 >> 7;
        ++v4;
        v73 = v71 >> 14;
        v71 >>= 7;
      }

      while (v73);
      *(v4 - 1) = v72;
    }

    else
    {
      v4[3] = v71;
      v4 += 4;
    }
  }

  else
  {
    v4[2] = v70;
    v4 += 3;
  }

LABEL_130:
  v74 = *(this + 40);
  if (v74 >= 1)
  {
    for (n = 0; n != v74; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v76 = *(*(this + 21) + n);
      *v4 = 456;
      v4[2] = v76;
      v4 += 3;
    }
  }

  v77 = *(this + 1);
  if ((v77 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v77 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ListStyleArchive::ByteSizeLong(TSS::StyleArchive **this)
{
  if ((this[2] & 2) != 0)
  {
    v3 = TSS::StyleArchive::ByteSizeLong(this[23]);
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 6);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(this[4] + v6);
      if (v7 < 0)
      {
        v8 = 10;
      }

      else
      {
        v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      }

      v5 += v8;
      ++v6;
    }

    while (v4 != v6);
  }

  else
  {
    v5 = 0;
  }

  v9 = *(this + 20);
  v10 = v2 + v4 + v5 + *(this + 10) + *(this + 14) + v9 + 4 * (*(this + 14) + *(this + 10));
  v11 = this[11];
  if (v11)
  {
    v12 = (v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    v13 = 8 * v9;
    do
    {
      v14 = *v12++;
      v15 = TSWP::ListStyleArchive_LabelGeometry::ByteSizeLong(v14);
      v10 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6);
      v13 -= 8;
    }

    while (v13);
  }

  v16 = *(this + 24);
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = *(this[13] + v18);
      if (v19 < 0)
      {
        v20 = 10;
      }

      else
      {
        v20 = (9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6;
      }

      v17 += v20;
      ++v18;
    }

    while (v16 != v18);
  }

  else
  {
    v17 = 0;
  }

  v21 = *(this + 30);
  v22 = v10 + v16 + v17 + 2 * v21;
  if (v21 >= 1)
  {
    v23 = (this[16] + 8);
    do
    {
      v24 = *v23++;
      v25 = *(v24 + 23);
      v26 = *(v24 + 8);
      if ((v25 & 0x80u) == 0)
      {
        v26 = v25;
      }

      v22 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
      --v21;
    }

    while (v21);
  }

  v27 = *(this + 36);
  v28 = v22 + 2 * v27;
  v29 = this[19];
  if (v29)
  {
    v30 = (v29 + 8);
  }

  else
  {
    v30 = 0;
  }

  if (v27)
  {
    v31 = 8 * v27;
    do
    {
      v32 = *v30++;
      v33 = TSWP::ListStyleArchive_LabelImage::ByteSizeLong(v32);
      v28 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      v31 -= 8;
    }

    while (v31);
  }

  v34 = v28 + *(this + 40) + 2 * *(this + 40);
  v35 = *(this + 4);
  if (v35)
  {
    v36 = this[22] & 0xFFFFFFFFFFFFFFFELL;
    v37 = *(v36 + 23);
    v38 = *(v36 + 8);
    if ((v37 & 0x80u) == 0)
    {
      v38 = v37;
    }

    v34 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  if ((v35 & 0xFC) != 0)
  {
    if ((v35 & 4) != 0)
    {
      v44 = TSD::ShadowArchive::ByteSizeLong(this[24]);
      v34 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if ((v35 & 8) == 0)
      {
LABEL_44:
        if ((v35 & 0x10) == 0)
        {
LABEL_46:
          v39 = v34 + 3;
          if ((v35 & 0x20) == 0)
          {
            v39 = v34;
          }

          if ((v35 & 0x40) != 0)
          {
            v39 += 3;
          }

          if ((v35 & 0x80) != 0)
          {
            v34 = v39 + 3;
          }

          else
          {
            v34 = v39;
          }

          goto LABEL_53;
        }

LABEL_45:
        v34 += ((9 * (__clz(*(this + 52) | 1) ^ 0x1F) + 73) >> 6) + 1;
        goto LABEL_46;
      }
    }

    else if ((v35 & 8) == 0)
    {
      goto LABEL_44;
    }

    v45 = TSP::Color::ByteSizeLong(this[25]);
    v34 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v35 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_53:
  if ((v35 & 0x100) != 0)
  {
    v40 = *(this + 54);
    v41 = ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v40 >= 0)
    {
      v42 = v41;
    }

    else
    {
      v42 = 12;
    }

    v34 += v42;
  }

  if (this[1])
  {

    return MEMORY[0x2821EADD8](this + 1, v34, this + 20);
  }

  else
  {
    *(this + 5) = v34;
    return v34;
  }
}

uint64_t TSWP::ListStyleArchive::MergeFrom(TSWP::ListStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ListStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ListStyleArchive::MergeFrom(uint64_t this, const TSWP::ListStyleArchive *a2)
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
    v6 = *(v3 + 24);
    sub_276D4D210((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 6);
    this = memcpy((v7 + 4 * v6), *(a2 + 4), 4 * *(a2 + 6));
  }

  v8 = *(a2 + 10);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_276D4D210((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 10);
    this = memcpy((v10 + 4 * v9), *(a2 + 6), 4 * *(a2 + 10));
  }

  v11 = *(a2 + 14);
  if (v11)
  {
    v12 = *(v3 + 56);
    sub_276D4D210((v3 + 56), v12 + v11);
    v13 = *(v3 + 64);
    *(v3 + 56) += *(a2 + 14);
    this = memcpy((v13 + 4 * v12), *(a2 + 8), 4 * *(a2 + 14));
  }

  v14 = *(a2 + 20);
  if (v14)
  {
    v15 = *(a2 + 11);
    v16 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    this = sub_276EA5C8C(v3 + 72, v16, (v15 + 8), v14, **(v3 + 88) - *(v3 + 80));
    v17 = *(v3 + 80) + v14;
    *(v3 + 80) = v17;
    v18 = *(v3 + 88);
    if (*v18 < v17)
    {
      *v18 = v17;
    }
  }

  v19 = *(a2 + 24);
  if (v19)
  {
    v20 = *(v3 + 96);
    sub_276D4D210((v3 + 96), v20 + v19);
    v21 = *(v3 + 104);
    *(v3 + 96) += *(a2 + 24);
    this = memcpy((v21 + 4 * v20), *(a2 + 13), 4 * *(a2 + 24));
  }

  v22 = *(a2 + 30);
  if (v22)
  {
    v23 = *(a2 + 16);
    v24 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 112));
    this = sub_276EA5460((v3 + 112), v24, (v23 + 8), v22, **(v3 + 128) - *(v3 + 120));
    v25 = *(v3 + 120) + v22;
    *(v3 + 120) = v25;
    v26 = *(v3 + 128);
    if (*v26 < v25)
    {
      *v26 = v25;
    }
  }

  v27 = *(a2 + 36);
  if (v27)
  {
    v28 = *(a2 + 19);
    v29 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 136));
    this = sub_276EA5D4C(v3 + 136, v29, (v28 + 8), v27, **(v3 + 152) - *(v3 + 144));
    v30 = *(v3 + 144) + v27;
    *(v3 + 144) = v30;
    v31 = *(v3 + 152);
    if (*v31 < v30)
    {
      *v31 = v30;
    }
  }

  v32 = *(a2 + 40);
  if (v32)
  {
    v33 = *(v3 + 160);
    sub_276D4D368((v3 + 160), v33 + v32);
    v34 = *(v3 + 168);
    *(v3 + 160) += *(a2 + 40);
    this = memcpy((v34 + v33), *(a2 + 21), *(a2 + 40));
  }

  v35 = *(a2 + 4);
  if (v35)
  {
    if (v35)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v35 & 2) == 0)
      {
LABEL_25:
        if ((v35 & 4) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_45;
      }
    }

    else if ((v35 & 2) == 0)
    {
      goto LABEL_25;
    }

    *(v3 + 16) |= 2u;
    v37 = *(v3 + 184);
    if (!v37)
    {
      v38 = *(v3 + 8);
      if (v38)
      {
        v38 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      v37 = MEMORY[0x277CA3260](v38);
      *(v3 + 184) = v37;
    }

    if (*(a2 + 23))
    {
      v39 = *(a2 + 23);
    }

    else
    {
      v39 = MEMORY[0x277D80BD0];
    }

    this = TSS::StyleArchive::MergeFrom(v37, v39);
    if ((v35 & 4) == 0)
    {
LABEL_26:
      if ((v35 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_53;
    }

LABEL_45:
    *(v3 + 16) |= 4u;
    v40 = *(v3 + 192);
    if (!v40)
    {
      v41 = *(v3 + 8);
      if (v41)
      {
        v41 = *(v41 & 0xFFFFFFFFFFFFFFFELL);
      }

      v40 = MEMORY[0x277CA3140](v41);
      *(v3 + 192) = v40;
    }

    if (*(a2 + 24))
    {
      v42 = *(a2 + 24);
    }

    else
    {
      v42 = MEMORY[0x277D80498];
    }

    this = TSD::ShadowArchive::MergeFrom(v40, v42);
    if ((v35 & 8) == 0)
    {
LABEL_27:
      if ((v35 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_61;
    }

LABEL_53:
    *(v3 + 16) |= 8u;
    v43 = *(v3 + 200);
    if (!v43)
    {
      v44 = *(v3 + 8);
      if (v44)
      {
        v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      v43 = MEMORY[0x277CA3210](v44);
      *(v3 + 200) = v43;
    }

    if (*(a2 + 25))
    {
      v45 = *(a2 + 25);
    }

    else
    {
      v45 = MEMORY[0x277D809E8];
    }

    this = TSP::Color::MergeFrom(v43, v45);
    if ((v35 & 0x10) == 0)
    {
LABEL_28:
      if ((v35 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_62;
    }

LABEL_61:
    *(v3 + 208) = *(a2 + 52);
    if ((v35 & 0x20) == 0)
    {
LABEL_29:
      if ((v35 & 0x40) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_63;
    }

LABEL_62:
    *(v3 + 212) = *(a2 + 212);
    if ((v35 & 0x40) == 0)
    {
LABEL_30:
      if ((v35 & 0x80) == 0)
      {
LABEL_32:
        *(v3 + 16) |= v35;
        goto LABEL_33;
      }

LABEL_31:
      *(v3 + 214) = *(a2 + 214);
      goto LABEL_32;
    }

LABEL_63:
    *(v3 + 213) = *(a2 + 213);
    if ((v35 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_33:
  if ((v35 & 0x100) != 0)
  {
    v36 = *(a2 + 54);
    *(v3 + 16) |= 0x100u;
    *(v3 + 216) = v36;
  }

  return this;
}

TSWP::ListStyleArchive *TSWP::ListStyleArchive::CopyFrom(TSWP::ListStyleArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ListStyleArchive::Clear(this);

    return TSWP::ListStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::ListStyleArchive *TSWP::ListStyleArchive::CopyFrom(TSWP::ListStyleArchive *this, const TSWP::ListStyleArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ListStyleArchive::Clear(this);

    return TSWP::ListStyleArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::ListStyleArchive::IsInitialized(TSWP::ListStyleArchive *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 0;
  }

  v3 = *(this + 36);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSWP::ListStyleArchive_LabelImage::IsInitialized(*(*(this + 19) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    result = TSS::StyleArchive::IsInitialized(*(this + 23));
    if (!result)
    {
      return result;
    }

    v6 = *(this + 4);
  }

  if ((v6 & 4) != 0)
  {
    result = TSD::ShadowArchive::IsInitialized(*(this + 24));
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

  result = TSP::Color::IsInitialized(*(this + 25));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ListStyleArchive::InternalSwap(TSWP::ListStyleArchive *this, TSWP::ListStyleArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  v11 = *(this + 10);
  v12 = *(this + 11);
  *(this + 5) = *(a2 + 5);
  *(a2 + 10) = v11;
  *(a2 + 11) = v12;
  v13 = *(this + 12);
  v14 = *(this + 13);
  *(this + 6) = *(a2 + 6);
  *(a2 + 12) = v13;
  *(a2 + 13) = v14;
  v15 = *(this + 15);
  v16 = *(this + 16);
  *(this + 120) = *(a2 + 120);
  *(a2 + 15) = v15;
  *(a2 + 16) = v16;
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
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v21;
  v22 = *(this + 23);
  v23 = *(this + 24);
  result = *(a2 + 184);
  *(this + 184) = result;
  *(a2 + 23) = v22;
  *(a2 + 24) = v23;
  v25 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v25;
  LODWORD(v25) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v25;
  LOWORD(v25) = *(this + 106);
  *(this + 106) = *(a2 + 106);
  *(a2 + 106) = v25;
  LOBYTE(v25) = *(this + 214);
  *(this + 214) = *(a2 + 214);
  *(a2 + 214) = v25;
  LODWORD(v25) = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v25;
  return result;
}

TSP::Reference *TSWP::TextStylePresetArchive::clear_paragraph_style(TSWP::TextStylePresetArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Reference *TSWP::TextStylePresetArchive::clear_list_style(TSWP::TextStylePresetArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::TextStylePresetArchive *TSWP::TextStylePresetArchive::TextStylePresetArchive(TSWP::TextStylePresetArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600CB0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_TextStylePresetArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSWP::TextStylePresetArchive *TSWP::TextStylePresetArchive::TextStylePresetArchive(TSWP::TextStylePresetArchive *this, const TSWP::TextStylePresetArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288600CB0;
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
  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  return this;
}

void TSWP::TextStylePresetArchive::~TextStylePresetArchive(TSWP::TextStylePresetArchive *this)
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

  if (this != &TSWP::_TextStylePresetArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277CA3D00]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::TextStylePresetArchive::~TextStylePresetArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::TextStylePresetArchive::default_instance(TSWP::TextStylePresetArchive *this)
{
  if (atomic_load_explicit(scc_info_TextStylePresetArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_TextStylePresetArchive_default_instance_;
}

uint64_t *TSWP::TextStylePresetArchive::Clear(uint64_t *this)
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
  this = TSP::Reference::Clear(this[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    this = TSP::Reference::Clear(*(v1 + 40));
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_276EA4D28(v3);
  }

  return this;
}

google::protobuf::internal *TSWP::TextStylePresetArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_276EA4A1C(a3, &v20) & 1) == 0)
  {
    v5 = (v20 + 1);
    v6 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v20 + 2);
LABEL_6:
      v20 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v7 - 128));
    v20 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v18;
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

        v16 = MEMORY[0x277CA3250](v15);
        LODWORD(v12) = v16;
        *(a1 + 40) = v16;
LABEL_30:
        v5 = v20;
      }

LABEL_31:
      v11 = sub_276F4F9E8(a3, v12, v5);
      goto LABEL_33;
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

        v14 = MEMORY[0x277CA3250](v13);
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
        return v20;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_276EA4A94((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_33;
    }

    *(a1 + 16) |= 1u;
    google::protobuf::internal::ArenaStringPtr::Mutable();
    v11 = google::protobuf::internal::InlineGreedyStringParser();
LABEL_33:
    v20 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *TSWP::TextStylePresetArchive::_InternalSerialize(TSWP::TextStylePresetArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276E5154C(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
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

  v4 = TSP::Reference::_InternalSerialize(v7, v9, a3);
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

    v4 = TSP::Reference::_InternalSerialize(v13, v15, a3);
  }

LABEL_26:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v19 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::TextStylePresetArchive::ByteSizeLong(TSWP::TextStylePresetArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (v2)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = TSP::Reference::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
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

uint64_t TSWP::TextStylePresetArchive::MergeFrom(TSWP::TextStylePresetArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::TextStylePresetArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::TextStylePresetArchive::MergeFrom(uint64_t this, const TSWP::TextStylePresetArchive *a2)
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
      this = google::protobuf::internal::ArenaStringPtr::Set();
    }

    v6 = MEMORY[0x277D80A18];
    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v7 = *(v3 + 32);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277CA3250](v8);
        *(v3 + 32) = v7;
      }

      if (*(a2 + 4))
      {
        v9 = *(a2 + 4);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::Reference::MergeFrom(v7, v9);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v10 = *(v3 + 40);
      if (!v10)
      {
        v11 = *(v3 + 8);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = MEMORY[0x277CA3250](v11);
        *(v3 + 40) = v10;
      }

      if (*(a2 + 5))
      {
        v12 = *(a2 + 5);
      }

      else
      {
        v12 = v6;
      }

      return TSP::Reference::MergeFrom(v10, v12);
    }
  }

  return this;
}

uint64_t *TSWP::TextStylePresetArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextStylePresetArchive::Clear(this);

    return TSWP::TextStylePresetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::TextStylePresetArchive::CopyFrom(uint64_t *this, const TSWP::TextStylePresetArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::TextStylePresetArchive::Clear(this);

    return TSWP::TextStylePresetArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSWP::TextStylePresetArchive::IsInitialized(TSWP::TextStylePresetArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::TextStylePresetArchive::InternalSwap(__n128 *this, __n128 *a2)
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

void *TSWP::ColumnsArchive_EqualColumnsArchive::ColumnsArchive_EqualColumnsArchive(void *result, uint64_t a2)
{
  *result = &unk_288600D60;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288600D60;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSWP::ColumnsArchive_EqualColumnsArchive *TSWP::ColumnsArchive_EqualColumnsArchive::ColumnsArchive_EqualColumnsArchive(TSWP::ColumnsArchive_EqualColumnsArchive *this, const TSWP::ColumnsArchive_EqualColumnsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600D60;
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

void TSWP::ColumnsArchive_EqualColumnsArchive::~ColumnsArchive_EqualColumnsArchive(TSWP::ColumnsArchive_EqualColumnsArchive *this)
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

uint64_t *TSWP::ColumnsArchive_EqualColumnsArchive::default_instance(TSWP::ColumnsArchive_EqualColumnsArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnsArchive_EqualColumnsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ColumnsArchive_EqualColumnsArchive_default_instance_;
}

uint64_t *TSWP::ColumnsArchive_EqualColumnsArchive::Clear(TSWP::ColumnsArchive_EqualColumnsArchive *this)
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

google::protobuf::internal *TSWP::ColumnsArchive_EqualColumnsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v19 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v19) & 1) == 0)
  {
    while (1)
    {
      v7 = (v19 + 1);
      v8 = *v19;
      if ((*v19 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v19, (v9 - 128));
      v19 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_33;
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
          v19 = (v7 + 4);
          goto LABEL_26;
        }

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

        v19 = google::protobuf::internal::UnknownFieldParse();
        if (!v19)
        {
LABEL_33:
          v19 = 0;
          goto LABEL_2;
        }

        goto LABEL_26;
      }

      if (v8 >> 3 != 1 || v8 != 8)
      {
        goto LABEL_12;
      }

      v5 |= 1u;
      v12 = (v7 + 1);
      LODWORD(v13) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      v14 = *v12;
      v13 = (v13 + (v14 << 7) - 128);
      if ((v14 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_25:
        v19 = v12;
        *(a1 + 24) = v13;
        goto LABEL_26;
      }

      v17 = google::protobuf::internal::VarintParseSlow32(v7, v13);
      v19 = v17;
      *(a1 + 24) = v18;
      if (!v17)
      {
        goto LABEL_33;
      }

LABEL_26:
      if (sub_276EA4A1C(a3, &v19))
      {
        goto LABEL_2;
      }
    }

    v7 = (v19 + 2);
LABEL_6:
    v19 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v19;
}

unsigned __int8 *TSWP::ColumnsArchive_EqualColumnsArchive::_InternalSerialize(TSWP::ColumnsArchive_EqualColumnsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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
        goto LABEL_13;
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
        v11 = v7 >> 7;
        ++a2;
        v12 = v7 >> 14;
        v7 >>= 7;
      }

      while (v12);
      *(a2 - 1) = v11;
      if ((v5 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }

    a2[2] = v7;
    a2 += 3;
  }

  if ((v5 & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
LABEL_13:
  v9 = *(this + 1);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ColumnsArchive_EqualColumnsArchive::ByteSizeLong(TSWP::ColumnsArchive_EqualColumnsArchive *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = ((9 * (__clz(*(this + 6) | 1) ^ 0x1F) + 73) >> 6) + 1;
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
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSWP::ColumnsArchive_EqualColumnsArchive::MergeFrom(TSWP::ColumnsArchive_EqualColumnsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ColumnsArchive_EqualColumnsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ColumnsArchive_EqualColumnsArchive::MergeFrom(uint64_t this, const TSWP::ColumnsArchive_EqualColumnsArchive *a2)
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

TSWP::ColumnsArchive_EqualColumnsArchive *TSWP::ColumnsArchive_EqualColumnsArchive::CopyFrom(TSWP::ColumnsArchive_EqualColumnsArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ColumnsArchive_EqualColumnsArchive::Clear(this);

    return TSWP::ColumnsArchive_EqualColumnsArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::ColumnsArchive_EqualColumnsArchive *TSWP::ColumnsArchive_EqualColumnsArchive::CopyFrom(TSWP::ColumnsArchive_EqualColumnsArchive *this, const TSWP::ColumnsArchive_EqualColumnsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ColumnsArchive_EqualColumnsArchive::Clear(this);

    return TSWP::ColumnsArchive_EqualColumnsArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ColumnsArchive_EqualColumnsArchive::InternalSwap(TSWP::ColumnsArchive_EqualColumnsArchive *this, TSWP::ColumnsArchive_EqualColumnsArchive *a2)
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

void *TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive(void *result, uint64_t a2)
{
  *result = &unk_288600E10;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

{
  *result = &unk_288600E10;
  result[1] = a2;
  result[2] = 0;
  result[3] = 0;
  return result;
}

TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this, const TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600E10;
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

void TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::~ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this)
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

uint64_t *TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::default_instance(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive_default_instance_;
}

uint64_t *TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::Clear(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this)
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

google::protobuf::internal *TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v17) & 1) == 0)
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
        goto LABEL_29;
      }

      v7 = TagFallback;
      v8 = v16;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 21)
        {
          v13 = *v7;
          v12 = (v7 + 4);
          v5 |= 2u;
          *(a1 + 28) = v13;
LABEL_23:
          v17 = v12;
          goto LABEL_24;
        }
      }

      else if (v8 >> 3 == 1 && v8 == 13)
      {
        v14 = *v7;
        v12 = (v7 + 4);
        v5 |= 1u;
        *(a1 + 24) = v14;
        goto LABEL_23;
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
        sub_276EA4A94((a1 + 8));
      }

      v17 = google::protobuf::internal::UnknownFieldParse();
      if (!v17)
      {
LABEL_29:
        v17 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_276EA4A1C(a3, &v17))
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

unsigned __int8 *TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::_InternalSerialize(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v6;
    a2 += 5;
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 7);
    *a2 = 21;
    *(a2 + 1) = v7;
    a2 += 5;
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::RequiredFieldsByteSizeFallback(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    return v2 + 5;
  }

  else
  {
    return v2;
  }
}

uint64_t TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::ByteSizeLong(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  if ((~v1 & 3) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 10;
  }

  if (*(this + 8))
  {
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::MergeFrom(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::MergeFrom(uint64_t this, const TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *a2)
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

TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::CopyFrom(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::Clear(this);

    return TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::CopyFrom(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this, const TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::Clear(this);

    return TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::InternalSwap(TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *this, TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive *a2)
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

TSWP::ColumnsArchive_NonEqualColumnsArchive *TSWP::ColumnsArchive_NonEqualColumnsArchive::ColumnsArchive_NonEqualColumnsArchive(TSWP::ColumnsArchive_NonEqualColumnsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600EC0;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_ColumnsArchive_NonEqualColumnsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 12) = 0;
  return this;
}

TSWP::ColumnsArchive_NonEqualColumnsArchive *TSWP::ColumnsArchive_NonEqualColumnsArchive::ColumnsArchive_NonEqualColumnsArchive(TSWP::ColumnsArchive_NonEqualColumnsArchive *this, const TSWP::ColumnsArchive_NonEqualColumnsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600EC0;
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
    sub_276EA5E0C(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
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

  *(this + 12) = *(a2 + 12);
  return this;
}

void TSWP::ColumnsArchive_NonEqualColumnsArchive::~ColumnsArchive_NonEqualColumnsArchive(TSWP::ColumnsArchive_NonEqualColumnsArchive *this)
{
  sub_276E4E808(this + 1);
  sub_276EA55DC(this + 3);
}

{
  TSWP::ColumnsArchive_NonEqualColumnsArchive::~ColumnsArchive_NonEqualColumnsArchive(this);

  JUMPOUT(0x277CA3D00);
}

void *TSWP::ColumnsArchive_NonEqualColumnsArchive::default_instance(TSWP::ColumnsArchive_NonEqualColumnsArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnsArchive_NonEqualColumnsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ColumnsArchive_NonEqualColumnsArchive_default_instance_;
}

uint64_t *TSWP::ColumnsArchive_NonEqualColumnsArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_276EA4D28(v5);
  }

  return this;
}

google::protobuf::internal *TSWP::ColumnsArchive_NonEqualColumnsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v22 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v22) & 1) == 0)
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
        goto LABEL_39;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_12;
        }

        v12 = (v7 - 1);
        while (2)
        {
          v13 = (v12 + 1);
          v22 = (v12 + 1);
          v14 = *(a1 + 40);
          if (!v14)
          {
LABEL_23:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v14 = *(a1 + 40);
            v15 = *v14;
            goto LABEL_24;
          }

          v19 = *(a1 + 32);
          v15 = *v14;
          if (v19 >= *v14)
          {
            if (v15 == *(a1 + 36))
            {
              goto LABEL_23;
            }

LABEL_24:
            *v14 = v15 + 1;
            v16 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive>(*(a1 + 24));
            v17 = *(a1 + 32);
            v18 = *(a1 + 40) + 8 * v17;
            *(a1 + 32) = v17 + 1;
            *(v18 + 8) = v16;
            v13 = v22;
          }

          else
          {
            *(a1 + 32) = v19 + 1;
            v16 = *&v14[2 * v19 + 2];
          }

          v12 = sub_276F51C24(a3, v16, v13);
          v22 = v12;
          if (!v12)
          {
            goto LABEL_39;
          }

          if (*a3 <= v12 || *v12 != 18)
          {
            goto LABEL_34;
          }

          continue;
        }
      }

      if (v8 >> 3 == 1 && v8 == 13)
      {
        *(a1 + 48) = *v7;
        v22 = (v7 + 4);
        v5 = 1;
        goto LABEL_34;
      }

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

      v22 = google::protobuf::internal::UnknownFieldParse();
      if (!v22)
      {
LABEL_39:
        v22 = 0;
        goto LABEL_2;
      }

LABEL_34:
      if (sub_276EA4A1C(a3, &v22))
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

unsigned __int8 *TSWP::ColumnsArchive_NonEqualColumnsArchive::_InternalSerialize(TSWP::ColumnsArchive_NonEqualColumnsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(this + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(this + 12);
    *a2 = 13;
    *(a2 + 1) = v5;
    a2 += 5;
  }

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

      a2 = TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ColumnsArchive_NonEqualColumnsArchive::ByteSizeLong(TSWP::ColumnsArchive_NonEqualColumnsArchive *this)
{
  if (*(this + 16))
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 8);
  v4 = v2 + v3;
  v5 = *(this + 5);
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
      v9 = TSWP::ColumnsArchive_NonEqualColumnsArchive_GapWidthArchive::ByteSizeLong(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
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

void TSWP::ColumnsArchive_NonEqualColumnsArchive::MergeFrom(TSWP::ColumnsArchive_NonEqualColumnsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWP::ColumnsArchive_NonEqualColumnsArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

float TSWP::ColumnsArchive_NonEqualColumnsArchive::MergeFrom(TSWP::ColumnsArchive_NonEqualColumnsArchive *this, const TSWP::ColumnsArchive_NonEqualColumnsArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 5);
    v8 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_276EA5E0C(this + 24, v8, (v7 + 8), v6, **(this + 5) - *(this + 8));
    v9 = *(this + 8) + v6;
    *(this + 8) = v9;
    v10 = *(this + 5);
    if (*v10 < v9)
    {
      *v10 = v9;
    }
  }

  if (*(a2 + 16))
  {
    result = *(a2 + 12);
    *(this + 4) |= 1u;
    *(this + 12) = result;
  }

  return result;
}

void TSWP::ColumnsArchive_NonEqualColumnsArchive::CopyFrom(TSWP::ColumnsArchive_NonEqualColumnsArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWP::ColumnsArchive_NonEqualColumnsArchive::Clear(this);

    TSWP::ColumnsArchive_NonEqualColumnsArchive::MergeFrom(this, a2);
  }
}

float TSWP::ColumnsArchive_NonEqualColumnsArchive::CopyFrom(TSWP::ColumnsArchive_NonEqualColumnsArchive *this, const TSWP::ColumnsArchive_NonEqualColumnsArchive *a2)
{
  if (a2 != this)
  {
    TSWP::ColumnsArchive_NonEqualColumnsArchive::Clear(this);

    return TSWP::ColumnsArchive_NonEqualColumnsArchive::MergeFrom(this, a2);
  }

  return result;
}

BOOL TSWP::ColumnsArchive_NonEqualColumnsArchive::IsInitialized(TSWP::ColumnsArchive_NonEqualColumnsArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 8);
  v3 = *(this + 5);
  do
  {
    result = v2 < 1;
    if (v2 < 1)
    {
      break;
    }

    v4 = *(v3 + 8 * v2--);
  }

  while ((~*(v4 + 16) & 3) == 0);
  return result;
}

float TSWP::ColumnsArchive_NonEqualColumnsArchive::InternalSwap(TSWP::ColumnsArchive_NonEqualColumnsArchive *this, TSWP::ColumnsArchive_NonEqualColumnsArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 4);
  v6 = *(this + 5);
  *(this + 2) = *(a2 + 2);
  *(a2 + 4) = v5;
  *(a2 + 5) = v6;
  result = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = result;
  return result;
}

TSWP::ColumnsArchive *TSWP::ColumnsArchive::ColumnsArchive(TSWP::ColumnsArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288600F70;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ColumnsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

{
  *this = &unk_288600F70;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ColumnsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  return this;
}

TSWP::ColumnsArchive *TSWP::ColumnsArchive::ColumnsArchive(TSWP::ColumnsArchive *this, const TSWP::ColumnsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288600F70;
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

void TSWP::ColumnsArchive::~ColumnsArchive(TSWP::ColumnsArchive *this)
{
  if (this != &TSWP::_ColumnsArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      sub_276E4E808((v2 + 8));
      MEMORY[0x277CA3D00](v2, 0x1081C404FE48876);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSWP::ColumnsArchive_NonEqualColumnsArchive::~ColumnsArchive_NonEqualColumnsArchive(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ColumnsArchive::~ColumnsArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ColumnsArchive::default_instance(TSWP::ColumnsArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnsArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ColumnsArchive_default_instance_;
}

uint64_t *TSWP::ColumnsArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSWP::ColumnsArchive_EqualColumnsArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSWP::ColumnsArchive_NonEqualColumnsArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TSWP::ColumnsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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

        v11 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive_NonEqualColumnsArchive>(v12);
        *(a1 + 32) = v11;
        v5 = v18;
      }

      v10 = sub_276F51DC4(a3, v11, v5);
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

        v13 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive_EqualColumnsArchive>(v14);
        *(a1 + 24) = v13;
        v5 = v18;
      }

      v10 = sub_276F51CF4(a3, v13, v5);
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

unsigned __int8 *TSWP::ColumnsArchive::_InternalSerialize(TSWP::ColumnsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
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

    a2 = TSWP::ColumnsArchive_EqualColumnsArchive::_InternalSerialize(v6, v8, a3);
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

    a2 = TSWP::ColumnsArchive_NonEqualColumnsArchive::_InternalSerialize(v12, v14, a3);
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v18 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ColumnsArchive::ByteSizeLong(TSWP::ColumnsArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 3) == 0)
  {
    v3 = 0;
    goto LABEL_8;
  }

  if (v2)
  {
    v4 = TSWP::ColumnsArchive_EqualColumnsArchive::ByteSizeLong(*(this + 3));
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
    v5 = TSWP::ColumnsArchive_NonEqualColumnsArchive::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

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

void TSWP::ColumnsArchive::MergeFrom(TSWP::ColumnsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWP::ColumnsArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

float TSWP::ColumnsArchive::MergeFrom(TSWP::ColumnsArchive *this, const TSWP::ColumnsArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v6 = *(a2 + 4);
  if ((v6 & 3) != 0)
  {
    if (v6)
    {
      *(this + 4) |= 1u;
      v7 = *(this + 3);
      if (!v7)
      {
        v8 = *(this + 1);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive_EqualColumnsArchive>(v8);
        *(this + 3) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = &TSWP::_ColumnsArchive_EqualColumnsArchive_default_instance_;
      }

      TSWP::ColumnsArchive_EqualColumnsArchive::MergeFrom(v7, v9);
    }

    if ((v6 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v10 = *(this + 4);
      if (!v10)
      {
        v11 = *(this + 1);
        if (v11)
        {
          v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive_NonEqualColumnsArchive>(v11);
        *(this + 4) = v10;
      }

      if (*(a2 + 4))
      {
        v12 = *(a2 + 4);
      }

      else
      {
        v12 = &TSWP::_ColumnsArchive_NonEqualColumnsArchive_default_instance_;
      }

      return TSWP::ColumnsArchive_NonEqualColumnsArchive::MergeFrom(v10, v12);
    }
  }

  return result;
}

void TSWP::ColumnsArchive::CopyFrom(TSWP::ColumnsArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWP::ColumnsArchive::Clear(this);

    TSWP::ColumnsArchive::MergeFrom(this, a2);
  }
}

float TSWP::ColumnsArchive::CopyFrom(TSWP::ColumnsArchive *this, const TSWP::ColumnsArchive *a2)
{
  if (a2 != this)
  {
    TSWP::ColumnsArchive::Clear(this);

    return TSWP::ColumnsArchive::MergeFrom(this, a2);
  }

  return result;
}

BOOL TSWP::ColumnsArchive::IsInitialized(TSWP::ColumnsArchive *this)
{
  if ((*(this + 16) & 2) == 0)
  {
    return 1;
  }

  v2 = *(this + 4);
  if ((*(v2 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  do
  {
    result = v3 < 1;
    if (v3 < 1)
    {
      break;
    }

    v5 = *(v4 + 8 * v3--);
  }

  while ((~*(v5 + 16) & 3) == 0);
  return result;
}

__n128 TSWP::ColumnsArchive::InternalSwap(TSWP::ColumnsArchive *this, TSWP::ColumnsArchive *a2)
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

void *TSWP::PaddingArchive::PaddingArchive(void *result, uint64_t a2)
{
  *result = &unk_288601020;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_288601020;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

TSWP::PaddingArchive *TSWP::PaddingArchive::PaddingArchive(TSWP::PaddingArchive *this, const TSWP::PaddingArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601020;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_276EA4CDC(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSWP::PaddingArchive::~PaddingArchive(TSWP::PaddingArchive *this)
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

uint64_t *TSWP::PaddingArchive::default_instance(TSWP::PaddingArchive *this)
{
  if (atomic_load_explicit(scc_info_PaddingArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_PaddingArchive_default_instance_;
}

uint64_t *TSWP::PaddingArchive::Clear(TSWP::PaddingArchive *this)
{
  if ((*(this + 16) & 0xF) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
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

google::protobuf::internal *TSWP::PaddingArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v20) & 1) == 0)
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
          if (v8 == 29)
          {
            v16 = *v7;
            v12 = (v7 + 4);
            v5 |= 4u;
            *(a1 + 32) = v16;
            goto LABEL_23;
          }
        }

        else if (v10 == 4 && v8 == 37)
        {
          v14 = *v7;
          v12 = (v7 + 4);
          v5 |= 8u;
          *(a1 + 36) = v14;
          goto LABEL_23;
        }
      }

      else if (v10 == 1)
      {
        if (v8 == 13)
        {
          v15 = *v7;
          v12 = (v7 + 4);
          v5 |= 1u;
          *(a1 + 24) = v15;
          goto LABEL_23;
        }
      }

      else if (v10 == 2 && v8 == 21)
      {
        v13 = *v7;
        v12 = (v7 + 4);
        v5 |= 2u;
        *(a1 + 28) = v13;
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
        sub_276EA4A94((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
LABEL_37:
        v20 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_276EA4A1C(a3, &v20))
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

unsigned __int8 *TSWP::PaddingArchive::_InternalSerialize(TSWP::PaddingArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v6;
    a2 += 5;
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

  v7 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v7;
  a2 += 5;
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

  v8 = *(this + 8);
  *a2 = 29;
  *(a2 + 1) = v8;
  a2 += 5;
  if ((v5 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 9);
    *a2 = 37;
    *(a2 + 1) = v9;
    a2 += 5;
  }

LABEL_18:
  v10 = *(this + 1);
  if ((v10 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::PaddingArchive::ByteSizeLong(TSWP::PaddingArchive *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
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
    return MEMORY[0x2821EADD8](this + 8, v3, this + 20);
  }

  *(this + 5) = v3;
  return v3;
}

uint64_t TSWP::PaddingArchive::MergeFrom(TSWP::PaddingArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSWP::PaddingArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSWP::PaddingArchive::MergeFrom(uint64_t this, const TSWP::PaddingArchive *a2)
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
      v3[6] = *(a2 + 6);
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

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        v3[4] |= v5;
        return this;
      }

LABEL_8:
      v3[9] = *(a2 + 9);
      goto LABEL_9;
    }

LABEL_13:
    v3[8] = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TSWP::PaddingArchive *TSWP::PaddingArchive::CopyFrom(TSWP::PaddingArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::PaddingArchive::Clear(this);

    return TSWP::PaddingArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSWP::PaddingArchive *TSWP::PaddingArchive::CopyFrom(TSWP::PaddingArchive *this, const TSWP::PaddingArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSWP::PaddingArchive::Clear(this);

    return TSWP::PaddingArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSWP::PaddingArchive::InternalSwap(TSWP::PaddingArchive *this, TSWP::PaddingArchive *a2)
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

TSWP::ColumnStylePropertiesArchive *TSWP::ColumnStylePropertiesArchive::ColumnStylePropertiesArchive(TSWP::ColumnStylePropertiesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886010D0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ColumnStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 54) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 16) = -1;
  return this;
}

TSWP::ColumnStylePropertiesArchive *TSWP::ColumnStylePropertiesArchive::ColumnStylePropertiesArchive(TSWP::ColumnStylePropertiesArchive *this, const TSWP::ColumnStylePropertiesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886010D0;
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
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  v7 = *(a2 + 3);
  *(this + 16) = *(a2 + 16);
  *(this + 3) = v7;
  return this;
}

void TSWP::ColumnStylePropertiesArchive::~ColumnStylePropertiesArchive(TSWP::ColumnStylePropertiesArchive *this)
{
  sub_276E6B1EC(this);
  sub_276E4E808(this + 1);
}

{
  TSWP::ColumnStylePropertiesArchive::~ColumnStylePropertiesArchive(this);

  JUMPOUT(0x277CA3D00);
}

TSWP::ColumnsArchive *sub_276E6B1EC(TSWP::ColumnsArchive *result)
{
  if (result != &TSWP::_ColumnStylePropertiesArchive_default_instance_)
  {
    v1 = result;
    result = *(result + 3);
    if (result)
    {
      TSWP::ColumnsArchive::~ColumnsArchive(result);
      result = MEMORY[0x277CA3D00]();
    }

    v2 = *(v1 + 4);
    if (v2)
    {
      sub_276E4E808((v2 + 8));
      result = MEMORY[0x277CA3D00](v2, 0x1081C40825B58B5);
    }

    v3 = *(v1 + 5);
    if (v3)
    {
      sub_276E4E808((v3 + 8));

      JUMPOUT(0x277CA3D00);
    }
  }

  return result;
}

void *TSWP::ColumnStylePropertiesArchive::default_instance(TSWP::ColumnStylePropertiesArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ColumnStylePropertiesArchive_default_instance_;
}

uint64_t *TSWP::ColumnStylePropertiesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSWP::ColumnsArchive::Clear(this[3]);
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

    this = TSWP::PaddingArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSWP::PaddingArchive::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  if ((v2 & 0xF8) != 0)
  {
    *(v1 + 48) = 0;
  }

  if ((v2 & 0xF00) != 0)
  {
    *(v1 + 60) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = -1;
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

google::protobuf::internal *TSWP::ColumnStylePropertiesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v61 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v61) & 1) == 0)
  {
    while (1)
    {
      v7 = (v61 + 1);
      v8 = *v61;
      if ((*v61 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v61, (v9 - 128));
      v61 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_123;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 6)
      {
        if (v8 >> 3 > 9)
        {
          if (v10 != 10)
          {
            if (v10 != 11)
            {
              if (v10 == 12 && v8 == 96)
              {
                v20 = (v7 + 1);
                v21 = *v7;
                if ((v21 & 0x8000000000000000) == 0)
                {
                  goto LABEL_44;
                }

                v22 = *v20;
                v23 = (v22 << 7) + v21;
                LODWORD(v21) = v23 - 128;
                if (v22 < 0)
                {
                  v61 = google::protobuf::internal::VarintParseSlow64(v7, (v23 - 128));
                  if (!v61)
                  {
                    goto LABEL_123;
                  }

                  LODWORD(v21) = v52;
                }

                else
                {
                  v20 = (v7 + 2);
LABEL_44:
                  v61 = v20;
                }

                if ((v21 + 1) > 2)
                {
                  v46 = *(a1 + 8);
                  if (v46)
                  {
                    v47 = ((v46 & 0xFFFFFFFFFFFFFFFELL) + 8);
                  }

                  else
                  {
                    v47 = sub_276EA4A94((a1 + 8));
                  }

                  google::protobuf::UnknownFieldSet::AddVarint(v47);
                }

                else
                {
                  *(a1 + 16) |= 0x800u;
                  *(a1 + 64) = v21;
                }

                goto LABEL_99;
              }

              goto LABEL_91;
            }

            if (v8 != 90)
            {
              goto LABEL_91;
            }

            *(a1 + 16) |= 4u;
            v15 = *(a1 + 40);
            if (!v15)
            {
              v44 = *(a1 + 8);
              if (v44)
              {
                v44 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v44);
              *(a1 + 40) = v15;
LABEL_89:
              v7 = v61;
            }

LABEL_90:
            v31 = sub_276F51F64(a3, v15, v7);
LABEL_98:
            v61 = v31;
            if (!v31)
            {
              goto LABEL_123;
            }

            goto LABEL_99;
          }

          if (v8 != 80)
          {
            goto LABEL_91;
          }

          v5 |= 0x400u;
          v33 = (v7 + 1);
          v32 = *v7;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_66;
          }

          v34 = *v33;
          v32 = (v34 << 7) + v32 - 128;
          if ((v34 & 0x80000000) == 0)
          {
            v33 = (v7 + 2);
LABEL_66:
            v61 = v33;
            *(a1 + 61) = v32 != 0;
            goto LABEL_99;
          }

          v55 = google::protobuf::internal::VarintParseSlow64(v7, v32);
          v61 = v55;
          *(a1 + 61) = v56 != 0;
          if (!v55)
          {
            goto LABEL_123;
          }
        }

        else
        {
          if (v10 == 7)
          {
            if (v8 != 58)
            {
              goto LABEL_91;
            }

            *(a1 + 16) |= 1u;
            v29 = *(a1 + 24);
            if (!v29)
            {
              v30 = *(a1 + 8);
              if (v30)
              {
                v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
              }

              v29 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive>(v30);
              *(a1 + 24) = v29;
              v7 = v61;
            }

            v31 = sub_276F51E94(a3, v29, v7);
            goto LABEL_98;
          }

          if (v10 != 8)
          {
            if (v10 != 9 || v8 != 74)
            {
              goto LABEL_91;
            }

            *(a1 + 16) |= 2u;
            v15 = *(a1 + 32);
            if (!v15)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v15 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v16);
              *(a1 + 32) = v15;
              goto LABEL_89;
            }

            goto LABEL_90;
          }

          if (v8 != 64)
          {
            goto LABEL_91;
          }

          v5 |= 0x200u;
          v39 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_76;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if ((v40 & 0x80000000) == 0)
          {
            v39 = (v7 + 2);
LABEL_76:
            v61 = v39;
            *(a1 + 60) = v38 != 0;
            goto LABEL_99;
          }

          v59 = google::protobuf::internal::VarintParseSlow64(v7, v38);
          v61 = v59;
          *(a1 + 60) = v60 != 0;
          if (!v59)
          {
            goto LABEL_123;
          }
        }
      }

      else if (v8 >> 3 > 3)
      {
        if (v10 == 4)
        {
          if (v8 == 37)
          {
            v5 |= 0x80u;
            *(a1 + 52) = *v7;
            v61 = (v7 + 4);
            goto LABEL_99;
          }

          goto LABEL_91;
        }

        if (v10 == 5)
        {
          if (v8 == 40)
          {
            v42 = (v7 + 1);
            v41 = *v7;
            if ((v41 & 0x8000000000000000) == 0)
            {
              goto LABEL_81;
            }

            v43 = *v42;
            v41 = (v43 << 7) + v41 - 128;
            if (v43 < 0)
            {
              v61 = google::protobuf::internal::VarintParseSlow64(v7, v41);
              if (!v61)
              {
LABEL_123:
                v61 = 0;
                goto LABEL_2;
              }
            }

            else
            {
              v42 = (v7 + 2);
LABEL_81:
              v61 = v42;
            }

            if (v41 > 3)
            {
              sub_276F53FE0();
            }

            else
            {
              *(a1 + 16) |= 0x100u;
              *(a1 + 56) = v41;
            }

            goto LABEL_99;
          }

LABEL_91:
          if (v8)
          {
            v45 = (v8 & 7) == 4;
          }

          else
          {
            v45 = 1;
          }

          if (v45)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_276EA4A94((a1 + 8));
          }

          v31 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_98;
        }

        if (v10 != 6 || v8 != 48)
        {
          goto LABEL_91;
        }

        v5 |= 0x40u;
        v18 = (v7 + 1);
        v17 = *v7;
        if ((v17 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        v19 = *v18;
        v17 = (v19 << 7) + v17 - 128;
        if ((v19 & 0x80000000) == 0)
        {
          v18 = (v7 + 2);
LABEL_36:
          v61 = v18;
          *(a1 + 51) = v17 != 0;
          goto LABEL_99;
        }

        v50 = google::protobuf::internal::VarintParseSlow64(v7, v17);
        v61 = v50;
        *(a1 + 51) = v51 != 0;
        if (!v50)
        {
          goto LABEL_123;
        }
      }

      else if (v10 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_91;
        }

        v5 |= 8u;
        v27 = (v7 + 1);
        v26 = *v7;
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }

        v28 = *v27;
        v26 = (v28 << 7) + v26 - 128;
        if ((v28 & 0x80000000) == 0)
        {
          v27 = (v7 + 2);
LABEL_53:
          v61 = v27;
          *(a1 + 48) = v26 != 0;
          goto LABEL_99;
        }

        v53 = google::protobuf::internal::VarintParseSlow64(v7, v26);
        v61 = v53;
        *(a1 + 48) = v54 != 0;
        if (!v53)
        {
          goto LABEL_123;
        }
      }

      else if (v10 == 2)
      {
        if (v8 != 16)
        {
          goto LABEL_91;
        }

        v5 |= 0x10u;
        v36 = (v7 + 1);
        v35 = *v7;
        if ((v35 & 0x8000000000000000) == 0)
        {
          goto LABEL_71;
        }

        v37 = *v36;
        v35 = (v37 << 7) + v35 - 128;
        if ((v37 & 0x80000000) == 0)
        {
          v36 = (v7 + 2);
LABEL_71:
          v61 = v36;
          *(a1 + 49) = v35 != 0;
          goto LABEL_99;
        }

        v57 = google::protobuf::internal::VarintParseSlow64(v7, v35);
        v61 = v57;
        *(a1 + 49) = v58 != 0;
        if (!v57)
        {
          goto LABEL_123;
        }
      }

      else
      {
        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_91;
        }

        v5 |= 0x20u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_19:
          v61 = v13;
          *(a1 + 50) = v12 != 0;
          goto LABEL_99;
        }

        v48 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v61 = v48;
        *(a1 + 50) = v49 != 0;
        if (!v48)
        {
          goto LABEL_123;
        }
      }

LABEL_99:
      if (sub_276EA4A1C(a3, &v61))
      {
        goto LABEL_2;
      }
    }

    v7 = (v61 + 2);
LABEL_6:
    v61 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v61;
}

unsigned __int8 *TSWP::ColumnStylePropertiesArchive::_InternalSerialize(TSWP::ColumnStylePropertiesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(this + 48);
    *a2 = 8;
    a2[1] = v6;
    a2 += 2;
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 49);
  *a2 = 16;
  a2[1] = v7;
  a2 += 2;
  if ((v5 & 0x20) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_20:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 50);
  *a2 = 24;
  a2[1] = v8;
  a2 += 2;
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 14);
    *a2 = 40;
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v11 = v10 >> 7;
      if (v10 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++a2;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(a2 - 1) = v12;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        a2[2] = v11;
        a2 += 3;
        if ((v5 & 0x40) != 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      a2[1] = v10;
      a2 += 2;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_37;
      }
    }

LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_23:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 13);
  *a2 = 37;
  *(a2 + 1) = v9;
  a2 += 5;
  if ((v5 & 0x100) != 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_7;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v14 = *(this + 51);
  *a2 = 48;
  a2[1] = v14;
  a2 += 2;
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_40:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v15 = *(this + 3);
  *a2 = 58;
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

  a2 = TSWP::ColumnsArchive::_InternalSerialize(v15, v17, a3);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_50:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v21 = *(this + 60);
  *a2 = 64;
  a2[1] = v21;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_63;
  }

LABEL_53:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 4);
  *a2 = 74;
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

  a2 = TSWP::PaddingArchive::_InternalSerialize(v22, v24, a3);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_66;
  }

LABEL_63:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(this + 61);
  *a2 = 80;
  a2[1] = v28;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_76;
  }

LABEL_66:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v29 = *(this + 5);
  *a2 = 90;
  v30 = *(v29 + 5);
  if (v30 > 0x7F)
  {
    a2[1] = v30 | 0x80;
    v32 = v30 >> 7;
    if (v30 >> 14)
    {
      v31 = a2 + 3;
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
      a2[2] = v32;
      v31 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v30;
    v31 = a2 + 2;
  }

  a2 = TSWP::PaddingArchive::_InternalSerialize(v29, v31, a3);
  if ((v5 & 0x800) != 0)
  {
LABEL_76:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v35 = *(this + 16);
    *a2 = 96;
    if (v35 > 0x7F)
    {
      a2[1] = v35 | 0x80;
      v36 = v35 >> 7;
      if (v35 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v36 | 0x80;
          v37 = v36 >> 7;
          ++a2;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
        *(a2 - 1) = v37;
      }

      else
      {
        a2[2] = v36;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v35;
      a2 += 2;
    }
  }

LABEL_85:
  v39 = *(this + 1);
  if ((v39 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v39 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ColumnStylePropertiesArchive::ByteSizeLong(TSWP::ColumnStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_13;
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

  v5 = TSWP::ColumnsArchive::ByteSizeLong(*(this + 3));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSWP::PaddingArchive::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v7 = TSWP::PaddingArchive::ByteSizeLong(*(this + 5));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v8.i64[0] = 0x200000002;
  v8.i64[1] = 0x200000002;
  v9 = vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_276F9A780), v8));
  if ((v2 & 0x80) != 0)
  {
    v4 = v3 + v9 + 5;
  }

  else
  {
    v4 = v3 + v9;
  }

LABEL_13:
  if ((v2 & 0xF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v10 = *(this + 14);
      v11 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 11;
      }

      v4 += v12;
    }

    v4 += ((v2 >> 9) & 2) + ((v2 >> 8) & 2);
    if ((v2 & 0x800) != 0)
    {
      v13 = *(this + 16);
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = 11;
      }

      v4 += v15;
    }
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

void TSWP::ColumnStylePropertiesArchive::MergeFrom(TSWP::ColumnStylePropertiesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWP::ColumnStylePropertiesArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSWP::ColumnStylePropertiesArchive::MergeFrom(TSWP::ColumnStylePropertiesArchive *this, const TSWP::ColumnStylePropertiesArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_ColumnsArchive_default_instance_;
      }

      TSWP::ColumnsArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 4) |= 2u;
      v9 = *(this + 4);
      if (!v9)
      {
        v10 = *(this + 1);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v10);
        *(this + 4) = v9;
      }

      if (*(a2 + 4))
      {
        v11 = *(a2 + 4);
      }

      else
      {
        v11 = &TSWP::_PaddingArchive_default_instance_;
      }

      TSWP::PaddingArchive::MergeFrom(v9, v11);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_46;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    *(this + 4) |= 4u;
    v12 = *(this + 5);
    if (!v12)
    {
      v13 = *(this + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v13);
      *(this + 5) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = &TSWP::_PaddingArchive_default_instance_;
    }

    TSWP::PaddingArchive::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(this + 48) = *(a2 + 48);
    if ((v5 & 0x10) == 0)
    {
LABEL_17:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(this + 49) = *(a2 + 49);
    if ((v5 & 0x20) == 0)
    {
LABEL_18:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_49;
    }

LABEL_48:
    *(this + 50) = *(a2 + 50);
    if ((v5 & 0x40) == 0)
    {
LABEL_19:
      if ((v5 & 0x80) == 0)
      {
LABEL_21:
        *(this + 4) |= v5;
        goto LABEL_22;
      }

LABEL_20:
      *(this + 13) = *(a2 + 13);
      goto LABEL_21;
    }

LABEL_49:
    *(this + 51) = *(a2 + 51);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_22:
  if ((v5 & 0xF00) == 0)
  {
    return;
  }

  if ((v5 & 0x100) != 0)
  {
    *(this + 14) = *(a2 + 14);
    if ((v5 & 0x200) == 0)
    {
LABEL_25:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_26;
      }

LABEL_53:
      *(this + 61) = *(a2 + 61);
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_25;
  }

  *(this + 60) = *(a2 + 60);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_53;
  }

LABEL_26:
  if ((v5 & 0x800) != 0)
  {
LABEL_27:
    *(this + 16) = *(a2 + 16);
  }

LABEL_28:
  *(this + 4) |= v5;
}

void TSWP::ColumnStylePropertiesArchive::CopyFrom(TSWP::ColumnStylePropertiesArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWP::ColumnStylePropertiesArchive::Clear(this);

    TSWP::ColumnStylePropertiesArchive::MergeFrom(this, a2);
  }
}

void TSWP::ColumnStylePropertiesArchive::CopyFrom(TSWP::ColumnStylePropertiesArchive *this, const TSWP::ColumnStylePropertiesArchive *a2)
{
  if (a2 != this)
  {
    TSWP::ColumnStylePropertiesArchive::Clear(this);

    TSWP::ColumnStylePropertiesArchive::MergeFrom(this, a2);
  }
}

BOOL TSWP::ColumnStylePropertiesArchive::IsInitialized(TSWP::ColumnStylePropertiesArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSWP::ColumnsArchive::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSWP::ColumnStylePropertiesArchive::InternalSwap(TSWP::ColumnStylePropertiesArchive *this, TSWP::ColumnStylePropertiesArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  LOWORD(v7) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v7;
  LODWORD(v7) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  return result;
}

TSS::StyleArchive *TSWP::ColumnStyleArchive::clear_super(TSWP::ColumnStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSS::StyleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::ColumnStyleArchive *TSWP::ColumnStyleArchive::ColumnStyleArchive(TSWP::ColumnStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601180;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ColumnStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_288601180;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ColumnStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSWP::ColumnStyleArchive *TSWP::ColumnStyleArchive::ColumnStyleArchive(TSWP::ColumnStyleArchive *this, const TSWP::ColumnStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601180;
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TSWP::ColumnStyleArchive::~ColumnStyleArchive(TSWP::ColumnStyleArchive *this)
{
  if (this != &TSWP::_ColumnStyleArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA2C50]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40AC828A93);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSWP::ColumnStylePropertiesArchive::~ColumnStylePropertiesArchive(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ColumnStyleArchive::~ColumnStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ColumnStyleArchive::default_instance(TSWP::ColumnStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_ColumnStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ColumnStyleArchive_default_instance_;
}

uint64_t *TSWP::ColumnStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSS::StyleArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSWP::ColumnStylePropertiesArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TSWP::ColumnStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      if (v8 >> 3 == 11)
      {
        if (v8 != 90)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 32);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnStylePropertiesArchive>(v18);
          *(a1 + 32) = v17;
          v7 = v26;
        }

        v13 = sub_276F52034(a3, v17, v7);
LABEL_36:
        v26 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v10 != 10)
      {
        if (v10 == 1 && v8 == 10)
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

            v21 = MEMORY[0x277CA3260](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v26;
          }

          v13 = sub_276F51404(a3, v19, v7);
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

        goto LABEL_36;
      }

      if (v8 != 80)
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
        *(a1 + 40) = v15;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v26 = v24;
      *(a1 + 40) = v25;
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

unsigned __int8 *TSWP::ColumnStyleArchive::_InternalSerialize(TSWP::ColumnStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 3);
    *a2 = 10;
    v10 = *(v9 + 5);
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v13 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = a2 + 3;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v18 = v13 >> 7;
          ++v11;
          v19 = v13 >> 14;
          v13 >>= 7;
        }

        while (v19);
        *(v11 - 1) = v18;
      }

      else
      {
        a2[2] = v13;
        v11 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v10;
      v11 = a2 + 2;
    }

    a2 = TSS::StyleArchive::_InternalSerialize(v9, v11, a3);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 10);
  *a2 = 80;
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
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 4);
  *a2 = 90;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v12 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v12 | 0x80;
        v14 = v12 >> 7;
        ++v8;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
      *(v8 - 1) = v14;
    }

    else
    {
      a2[2] = v12;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TSWP::ColumnStylePropertiesArchive::_InternalSerialize(v6, v8, a3);
LABEL_20:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ColumnStyleArchive::ByteSizeLong(TSWP::ColumnStyleArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSS::StyleArchive::ByteSizeLong(*(this + 3));
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
      v5 = TSWP::ColumnStylePropertiesArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void TSWP::ColumnStyleArchive::MergeFrom(TSWP::ColumnStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWP::ColumnStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSWP::ColumnStyleArchive::MergeFrom(TSWP::ColumnStyleArchive *this, const TSWP::ColumnStyleArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277CA3260](v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D80BD0];
      }

      TSS::StyleArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(this + 4) |= v5;
          return;
        }

LABEL_7:
        *(this + 10) = *(a2 + 10);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnStylePropertiesArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSWP::_ColumnStylePropertiesArchive_default_instance_;
    }

    TSWP::ColumnStylePropertiesArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }
}

void TSWP::ColumnStyleArchive::CopyFrom(TSWP::ColumnStyleArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWP::ColumnStyleArchive::Clear(this);

    TSWP::ColumnStyleArchive::MergeFrom(this, a2);
  }
}

void TSWP::ColumnStyleArchive::CopyFrom(TSWP::ColumnStyleArchive *this, const TSWP::ColumnStyleArchive *a2)
{
  if (a2 != this)
  {
    TSWP::ColumnStyleArchive::Clear(this);

    TSWP::ColumnStyleArchive::MergeFrom(this, a2);
  }
}

uint64_t TSWP::ColumnStyleArchive::IsInitialized(TSWP::ColumnStyleArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  result = TSS::StyleArchive::IsInitialized(*(this + 3));
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

    result = TSWP::ColumnsArchive::IsInitialized(*(v3 + 24));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSWP::ColumnStyleArchive::InternalSwap(TSWP::ColumnStyleArchive *this, TSWP::ColumnStyleArchive *a2)
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

TSP::Reference *TSWP::ShapeStylePropertiesArchive::clear_paragraph_style(TSWP::ShapeStylePropertiesArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Reference::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSWP::ShapeStylePropertiesArchive *TSWP::ShapeStylePropertiesArchive::ShapeStylePropertiesArchive(TSWP::ShapeStylePropertiesArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288601230;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 54) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

{
  *this = &unk_288601230;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 54) = 0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  return this;
}

TSWP::ShapeStylePropertiesArchive *TSWP::ShapeStylePropertiesArchive::ShapeStylePropertiesArchive(TSWP::ShapeStylePropertiesArchive *this, const TSWP::ShapeStylePropertiesArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288601230;
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
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  v7 = *(a2 + 6);
  *(this + 54) = *(a2 + 54);
  *(this + 6) = v7;
  return this;
}

void TSWP::ShapeStylePropertiesArchive::~ShapeStylePropertiesArchive(TSWP::ShapeStylePropertiesArchive *this)
{
  if (this != &TSWP::_ShapeStylePropertiesArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSWP::ColumnsArchive::~ColumnsArchive(v2);
      MEMORY[0x277CA3D00]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      sub_276E4E808((v3 + 8));
      MEMORY[0x277CA3D00](v3, 0x1081C40825B58B5);
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ShapeStylePropertiesArchive::~ShapeStylePropertiesArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ShapeStylePropertiesArchive::default_instance(TSWP::ShapeStylePropertiesArchive *this)
{
  if (atomic_load_explicit(scc_info_ShapeStylePropertiesArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ShapeStylePropertiesArchive_default_instance_;
}

uint64_t *TSWP::ShapeStylePropertiesArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      this = TSWP::ColumnsArchive::Clear(this[3]);
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

    this = TSWP::PaddingArchive::Clear(*(v1 + 32));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      this = TSP::Reference::Clear(*(v1 + 40));
    }
  }

LABEL_6:
  if ((v2 & 0xF8) != 0)
  {
    *(v1 + 48) = 0;
  }

  if ((v2 & 0x700) != 0)
  {
    *(v1 + 60) = 0;
    *(v1 + 56) = 0;
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

google::protobuf::internal *TSWP::ShapeStylePropertiesArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v61 = a2;
  v5 = 0;
  if ((sub_276EA4A1C(a3, &v61) & 1) == 0)
  {
    while (1)
    {
      v7 = (v61 + 1);
      v8 = *v61;
      if ((*v61 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v61, (v9 - 128));
      v61 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_114;
      }

      v7 = TagFallback;
      v8 = v25;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 5)
      {
        if (v8 >> 3 <= 2)
        {
          if (v10 != 1)
          {
            if (v10 == 2 && v8 == 16)
            {
              v22 = (v7 + 1);
              v21 = *v7;
              if ((v21 & 0x8000000000000000) == 0)
              {
                goto LABEL_43;
              }

              v23 = *v22;
              v21 = (v23 << 7) + v21 - 128;
              if (v23 < 0)
              {
                v61 = google::protobuf::internal::VarintParseSlow64(v7, v21);
                if (!v61)
                {
                  goto LABEL_114;
                }
              }

              else
              {
                v22 = (v7 + 2);
LABEL_43:
                v61 = v22;
              }

              if (v21 > 3)
              {
                sub_276F53EDC();
              }

              else
              {
                *(a1 + 16) |= 8u;
                *(a1 + 48) = v21;
              }

              goto LABEL_94;
            }

LABEL_86:
            if (v8)
            {
              v46 = (v8 & 7) == 4;
            }

            else
            {
              v46 = 1;
            }

            if (v46)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_276EA4A94((a1 + 8));
            }

            v31 = google::protobuf::internal::UnknownFieldParse();
LABEL_93:
            v61 = v31;
            if (!v31)
            {
              goto LABEL_114;
            }

            goto LABEL_94;
          }

          if (v8 != 8)
          {
            goto LABEL_86;
          }

          v5 |= 0x10u;
          v27 = (v7 + 1);
          v26 = *v7;
          if ((v26 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }

          v28 = *v27;
          v26 = (v28 << 7) + v26 - 128;
          if ((v28 & 0x80000000) == 0)
          {
            v27 = (v7 + 2);
LABEL_52:
            v61 = v27;
            *(a1 + 52) = v26 != 0;
            goto LABEL_94;
          }

          v47 = google::protobuf::internal::VarintParseSlow64(v7, v26);
          v61 = v47;
          *(a1 + 52) = v48 != 0;
          if (!v47)
          {
            goto LABEL_114;
          }
        }

        else if (v10 == 3)
        {
          if (v8 != 24)
          {
            goto LABEL_86;
          }

          v5 |= 0x20u;
          v39 = (v7 + 1);
          v38 = *v7;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_74;
          }

          v40 = *v39;
          v38 = (v40 << 7) + v38 - 128;
          if ((v40 & 0x80000000) == 0)
          {
            v39 = (v7 + 2);
LABEL_74:
            v61 = v39;
            *(a1 + 53) = v38 != 0;
            goto LABEL_94;
          }

          v53 = google::protobuf::internal::VarintParseSlow64(v7, v38);
          v61 = v53;
          *(a1 + 53) = v54 != 0;
          if (!v53)
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (v10 == 4)
          {
            if (v8 != 34)
            {
              goto LABEL_86;
            }

            *(a1 + 16) |= 1u;
            v29 = *(a1 + 24);
            if (!v29)
            {
              v30 = *(a1 + 8);
              if (v30)
              {
                v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
              }

              v29 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive>(v30);
              *(a1 + 24) = v29;
              v7 = v61;
            }

            v31 = sub_276F51E94(a3, v29, v7);
            goto LABEL_93;
          }

          if (v10 != 5 || v8 != 40)
          {
            goto LABEL_86;
          }

          v5 |= 0x40u;
          v15 = (v7 + 1);
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if ((v16 & 0x80000000) == 0)
          {
            v15 = (v7 + 2);
LABEL_25:
            v61 = v15;
            *(a1 + 54) = v14 != 0;
            goto LABEL_94;
          }

          v51 = google::protobuf::internal::VarintParseSlow64(v7, v14);
          v61 = v51;
          *(a1 + 54) = v52 != 0;
          if (!v51)
          {
            goto LABEL_114;
          }
        }
      }

      else if (v8 >> 3 > 8)
      {
        if (v10 == 9)
        {
          if (v8 != 72)
          {
            goto LABEL_86;
          }

          v5 |= 0x200u;
          v44 = (v7 + 1);
          v43 = *v7;
          if ((v43 & 0x8000000000000000) == 0)
          {
            goto LABEL_85;
          }

          v45 = *v44;
          v43 = (v45 << 7) + v43 - 128;
          if ((v45 & 0x80000000) == 0)
          {
            v44 = (v7 + 2);
LABEL_85:
            v61 = v44;
            *(a1 + 60) = v43 != 0;
            goto LABEL_94;
          }

          v59 = google::protobuf::internal::VarintParseSlow64(v7, v43);
          v61 = v59;
          *(a1 + 60) = v60 != 0;
          if (!v59)
          {
LABEL_114:
            v61 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          if (v10 == 10)
          {
            if (v8 != 82)
            {
              goto LABEL_86;
            }

            *(a1 + 16) |= 4u;
            v35 = *(a1 + 40);
            if (!v35)
            {
              v36 = *(a1 + 8);
              if (v36)
              {
                v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
              }

              v37 = MEMORY[0x277CA3250](v36);
              LODWORD(v35) = v37;
              *(a1 + 40) = v37;
              v7 = v61;
            }

            v31 = sub_276F4F9E8(a3, v35, v7);
            goto LABEL_93;
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
            goto LABEL_33;
          }

          v19 = *v18;
          v17 = (v19 << 7) + v17 - 128;
          if ((v19 & 0x80000000) == 0)
          {
            v18 = (v7 + 2);
LABEL_33:
            v61 = v18;
            *(a1 + 61) = v17 != 0;
            goto LABEL_94;
          }

          v57 = google::protobuf::internal::VarintParseSlow64(v7, v17);
          v61 = v57;
          *(a1 + 61) = v58 != 0;
          if (!v57)
          {
            goto LABEL_114;
          }
        }
      }

      else
      {
        if (v10 == 6)
        {
          if (v8 != 50)
          {
            goto LABEL_86;
          }

          *(a1 + 16) |= 2u;
          v41 = *(a1 + 32);
          if (!v41)
          {
            v42 = *(a1 + 8);
            if (v42)
            {
              v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v42);
            *(a1 + 32) = v41;
            v7 = v61;
          }

          v31 = sub_276F51F64(a3, v41, v7);
          goto LABEL_93;
        }

        if (v10 == 7)
        {
          if (v8 != 56)
          {
            goto LABEL_86;
          }

          v5 |= 0x100u;
          v32 = (v7 + 1);
          LODWORD(v33) = *v7;
          if ((*v7 & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          v34 = *v32;
          v33 = (v33 + (v34 << 7) - 128);
          if ((v34 & 0x80000000) == 0)
          {
            v32 = (v7 + 2);
LABEL_63:
            v61 = v32;
            *(a1 + 56) = v33;
            goto LABEL_94;
          }

          v49 = google::protobuf::internal::VarintParseSlow32(v7, v33);
          v61 = v49;
          *(a1 + 56) = v50;
          if (!v49)
          {
            goto LABEL_114;
          }
        }

        else
        {
          if (v10 != 8 || v8 != 64)
          {
            goto LABEL_86;
          }

          v5 |= 0x80u;
          v12 = (v7 + 1);
          v11 = *v7;
          if ((v11 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          v13 = *v12;
          v11 = (v13 << 7) + v11 - 128;
          if ((v13 & 0x80000000) == 0)
          {
            v12 = (v7 + 2);
LABEL_16:
            v61 = v12;
            *(a1 + 55) = v11 != 0;
            goto LABEL_94;
          }

          v55 = google::protobuf::internal::VarintParseSlow64(v7, v11);
          v61 = v55;
          *(a1 + 55) = v56 != 0;
          if (!v55)
          {
            goto LABEL_114;
          }
        }
      }

LABEL_94:
      if (sub_276EA4A1C(a3, &v61))
      {
        goto LABEL_2;
      }
    }

    v7 = (v61 + 2);
LABEL_6:
    v61 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v61;
}

unsigned __int8 *TSWP::ShapeStylePropertiesArchive::_InternalSerialize(TSWP::ShapeStylePropertiesArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if ((v5 & 0x10) == 0)
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 12);
    *a2 = 16;
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
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 52);
  *a2 = 8;
  a2[1] = v6;
  a2 += 2;
  if ((v5 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 53);
  *a2 = 24;
  a2[1] = v11;
  a2 += 2;
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 3);
  *a2 = 34;
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

  a2 = TSWP::ColumnsArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_43;
  }

LABEL_40:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(this + 54);
  *a2 = 40;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

LABEL_53:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 14);
    *a2 = 56;
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
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        a2[2] = v26;
        a2 += 3;
        if ((v5 & 0x80) != 0)
        {
          goto LABEL_64;
        }
      }
    }

    else
    {
      a2[1] = v25;
      a2 += 2;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_64;
      }
    }

LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_67;
  }

LABEL_43:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 4);
  *a2 = 50;
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

  a2 = TSWP::PaddingArchive::_InternalSerialize(v19, v21, a3);
  if ((v5 & 0x100) != 0)
  {
    goto LABEL_53;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_64:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v29 = *(this + 55);
  *a2 = 64;
  a2[1] = v29;
  a2 += 2;
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

LABEL_67:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v30 = *(this + 60);
  *a2 = 72;
  a2[1] = v30;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_80;
  }

LABEL_70:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(this + 5);
  *a2 = 82;
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
  if ((v5 & 0x400) != 0)
  {
LABEL_80:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(this + 61);
    *a2 = 88;
    a2[1] = v37;
    a2 += 2;
  }

LABEL_83:
  v38 = *(this + 1);
  if ((v38 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v38 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ShapeStylePropertiesArchive::ByteSizeLong(TSWP::ShapeStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v5 = TSWP::ColumnsArchive::ByteSizeLong(*(this + 3));
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
    v6 = TSWP::PaddingArchive::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v12 = TSP::Reference::ByteSizeLong(*(this + 5));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) != 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v2 & 8) != 0)
  {
LABEL_10:
    v7 = *(this + 12);
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v7 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 11;
    }

    v3 += v9;
  }

  v10.i64[0] = 0x200000002;
  v10.i64[1] = 0x200000002;
  v4 = v3 + vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v2), xmmword_276F9A790), v10));
LABEL_15:
  if ((v2 & 0x700) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v4 += ((9 * (__clz(*(this + 14) | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v4 += ((v2 >> 9) & 2) + ((v2 >> 8) & 2);
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

void TSWP::ShapeStylePropertiesArchive::MergeFrom(TSWP::ShapeStylePropertiesArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWP::ShapeStylePropertiesArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSWP::ShapeStylePropertiesArchive::MergeFrom(TSWP::ShapeStylePropertiesArchive *this, const TSWP::ShapeStylePropertiesArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if (v5)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive>(v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSWP::_ColumnsArchive_default_instance_;
      }

      TSWP::ColumnsArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_37;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSWP::_PaddingArchive_default_instance_;
    }

    TSWP::PaddingArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_45;
    }

LABEL_37:
    *(this + 4) |= 4u;
    v12 = *(this + 5);
    if (!v12)
    {
      v13 = *(this + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x277CA3250](v13);
      *(this + 5) = v12;
    }

    if (*(a2 + 5))
    {
      v14 = *(a2 + 5);
    }

    else
    {
      v14 = MEMORY[0x277D80A18];
    }

    TSP::Reference::MergeFrom(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_46;
    }

LABEL_45:
    *(this + 12) = *(a2 + 12);
    if ((v5 & 0x10) == 0)
    {
LABEL_9:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_47;
    }

LABEL_46:
    *(this + 52) = *(a2 + 52);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_48;
    }

LABEL_47:
    *(this + 53) = *(a2 + 53);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
LABEL_13:
        *(this + 4) |= v5;
        goto LABEL_14;
      }

LABEL_12:
      *(this + 55) = *(a2 + 55);
      goto LABEL_13;
    }

LABEL_48:
    *(this + 54) = *(a2 + 54);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_14:
  if ((v5 & 0x700) == 0)
  {
    return;
  }

  if ((v5 & 0x100) == 0)
  {
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

LABEL_51:
    *(this + 60) = *(a2 + 60);
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  *(this + 14) = *(a2 + 14);
  if ((v5 & 0x200) != 0)
  {
    goto LABEL_51;
  }

LABEL_17:
  if ((v5 & 0x400) != 0)
  {
LABEL_18:
    *(this + 61) = *(a2 + 61);
  }

LABEL_19:
  *(this + 4) |= v5;
}

void TSWP::ShapeStylePropertiesArchive::CopyFrom(TSWP::ShapeStylePropertiesArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    TSWP::ShapeStylePropertiesArchive::Clear(this);

    TSWP::ShapeStylePropertiesArchive::MergeFrom(this, a2);
  }
}

void TSWP::ShapeStylePropertiesArchive::CopyFrom(TSWP::ShapeStylePropertiesArchive *this, const TSWP::ShapeStylePropertiesArchive *a2)
{
  if (a2 != this)
  {
    TSWP::ShapeStylePropertiesArchive::Clear(this);

    TSWP::ShapeStylePropertiesArchive::MergeFrom(this, a2);
  }
}

uint64_t TSWP::ShapeStylePropertiesArchive::IsInitialized(TSWP::ShapeStylePropertiesArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 1) == 0 || (result = TSWP::ColumnsArchive::IsInitialized(*(this + 3)), result))
  {
    if ((v2 & 4) == 0)
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

__n128 TSWP::ShapeStylePropertiesArchive::InternalSwap(TSWP::ShapeStylePropertiesArchive *this, TSWP::ShapeStylePropertiesArchive *a2)
{
  sub_276E4FC00(this + 1, a2 + 1);
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
  LOWORD(v7) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v7;
  return result;
}

TSD::ShapeStyleArchive *TSWP::ShapeStyleArchive::clear_super(TSWP::ShapeStyleArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSD::ShapeStyleArchive::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSWP::ShapeStyleArchive *TSWP::ShapeStyleArchive::ShapeStyleArchive(TSWP::ShapeStyleArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_2886012E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_2886012E0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ShapeStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSWP::ShapeStyleArchive *TSWP::ShapeStyleArchive::ShapeStyleArchive(TSWP::ShapeStyleArchive *this, const TSWP::ShapeStyleArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2886012E0;
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
  *(this + 10) = *(a2 + 10);
  return this;
}

void TSWP::ShapeStyleArchive::~ShapeStyleArchive(TSWP::ShapeStyleArchive *this)
{
  if (this != &TSWP::_ShapeStyleArchive_default_instance_)
  {
    if (*(this + 3))
    {
      v2 = MEMORY[0x277CA2720]();
      MEMORY[0x277CA3D00](v2, 0x10A1C40A4F785B1);
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSWP::ShapeStylePropertiesArchive::~ShapeStylePropertiesArchive(v3);
      MEMORY[0x277CA3D00]();
    }
  }

  sub_276E4E808(this + 1);
}

{
  TSWP::ShapeStyleArchive::~ShapeStyleArchive(this);

  JUMPOUT(0x277CA3D00);
}

uint64_t *TSWP::ShapeStyleArchive::default_instance(TSWP::ShapeStyleArchive *this)
{
  if (atomic_load_explicit(scc_info_ShapeStyleArchive_TSWPArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSWP::_ShapeStyleArchive_default_instance_;
}

uint64_t *TSWP::ShapeStyleArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSD::ShapeStyleArchive::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSWP::ShapeStylePropertiesArchive::Clear(*(v1 + 32));
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

google::protobuf::internal *TSWP::ShapeStyleArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
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
      if (v8 >> 3 == 11)
      {
        if (v8 != 90)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v17 = *(a1 + 32);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ShapeStylePropertiesArchive>(v18);
          *(a1 + 32) = v17;
          v7 = v26;
        }

        v13 = sub_276F521D4(a3, v17, v7);
LABEL_36:
        v26 = v13;
        if (!v13)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

      if (v10 != 10)
      {
        if (v10 == 1 && v8 == 10)
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

            v21 = MEMORY[0x277CA3160](v20);
            LODWORD(v19) = v21;
            *(a1 + 24) = v21;
            v7 = v26;
          }

          v13 = sub_276F52104(a3, v19, v7);
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

        goto LABEL_36;
      }

      if (v8 != 80)
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
        *(a1 + 40) = v15;
        goto LABEL_37;
      }

      v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
      v26 = v24;
      *(a1 + 40) = v25;
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

unsigned __int8 *TSWP::ShapeStyleArchive::_InternalSerialize(TSWP::ShapeStyleArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(this + 4);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v9 = *(this + 3);
    *a2 = 10;
    v10 = *(v9 + 5);
    if (v10 > 0x7F)
    {
      a2[1] = v10 | 0x80;
      v13 = v10 >> 7;
      if (v10 >> 14)
      {
        v11 = a2 + 3;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v18 = v13 >> 7;
          ++v11;
          v19 = v13 >> 14;
          v13 >>= 7;
        }

        while (v19);
        *(v11 - 1) = v18;
      }

      else
      {
        a2[2] = v13;
        v11 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v10;
      v11 = a2 + 2;
    }

    a2 = TSD::ShapeStyleArchive::_InternalSerialize(v9, v11, a3);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_4;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 10);
  *a2 = 80;
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
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      a2[2] = v21;
      a2 += 3;
      if ((v5 & 2) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    a2[1] = v20;
    a2 += 2;
    if ((v5 & 2) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(this + 4);
  *a2 = 90;
  v7 = *(v6 + 5);
  if (v7 > 0x7F)
  {
    a2[1] = v7 | 0x80;
    v12 = v7 >> 7;
    if (v7 >> 14)
    {
      v8 = a2 + 3;
      do
      {
        *(v8 - 1) = v12 | 0x80;
        v14 = v12 >> 7;
        ++v8;
        v15 = v12 >> 14;
        v12 >>= 7;
      }

      while (v15);
      *(v8 - 1) = v14;
    }

    else
    {
      a2[2] = v12;
      v8 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v7;
    v8 = a2 + 2;
  }

  a2 = TSWP::ShapeStylePropertiesArchive::_InternalSerialize(v6, v8, a3);
LABEL_20:
  v16 = *(this + 1);
  if ((v16 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v16 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t TSWP::ShapeStyleArchive::ByteSizeLong(TSWP::ShapeStyleArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::ShapeStyleArchive::ByteSizeLong(*(this + 3));
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
      v5 = TSWP::ShapeStylePropertiesArchive::ByteSizeLong(*(this + 4));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
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

void TSWP::ShapeStyleArchive::MergeFrom(TSWP::ShapeStyleArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    TSWP::ShapeStyleArchive::MergeFrom(this, v4);
  }

  else
  {

    MEMORY[0x2821EACE0](lpsrc, this);
  }
}

void TSWP::ShapeStyleArchive::MergeFrom(TSWP::ShapeStyleArchive *this, const TSWP::ShapeStyleArchive *a2)
{
  v4 = *(a2 + 1);
  if (v4)
  {
    sub_276EA4CDC(this + 1, (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(this + 4) |= 1u;
      v6 = *(this + 3);
      if (!v6)
      {
        v7 = *(this + 1);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277CA3160](v7);
        *(this + 3) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D804D0];
      }

      TSD::ShapeStyleArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(this + 4) |= v5;
          return;
        }

LABEL_7:
        *(this + 10) = *(a2 + 10);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(this + 4) |= 2u;
    v9 = *(this + 4);
    if (!v9)
    {
      v10 = *(this + 1);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ShapeStylePropertiesArchive>(v10);
      *(this + 4) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = &TSWP::_ShapeStylePropertiesArchive_default_instance_;
    }

    TSWP::ShapeStylePropertiesArchive::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }
}