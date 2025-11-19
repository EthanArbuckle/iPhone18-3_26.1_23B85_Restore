uint64_t sub_27645DFA0(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27645C884(result);

    return sub_27645DB4C(v4, a2);
  }

  return result;
}

uint64_t sub_27645DFEC(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 80);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(a1 + 88) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 128);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::UUID::IsInitialized(*(*(a1 + 136) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    result = sub_27644DF5C(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 8) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 0x10) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 176));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27645E11C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288525A98;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 120) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  if (atomic_load_explicit(dword_2812EDC40, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 169) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  return a1;
}

void sub_27645E1D8(_Unwind_Exception *a1)
{
  sub_27647791C(v5);
  sub_276477F70(v4);
  sub_27647791C(v3);
  sub_27647800C(v2);
  sub_276477F70(v1);
  _Unwind_Resume(a1);
}

void *sub_27645E220(void *a1)
{
  sub_27645E290(a1);
  sub_2763941F4(a1 + 1);
  sub_27647791C(a1 + 15);
  sub_276477F70(a1 + 12);
  sub_27647791C(a1 + 9);
  sub_27647800C(a1 + 6);
  sub_276477F70(a1 + 3);
  return a1;
}

void *sub_27645E290(void *result)
{
  if (result != &unk_2812F1C78)
  {
    v1 = result;
    v2 = result[18];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[19];
    if (v4)
    {
      TSP::UUID::~UUID(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[20];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C98580]();
    }

    v6 = v1[21];
    if (v6)
    {
      TSP::UUID::~UUID(v6);
      MEMORY[0x277C98580]();
    }

    result = v1[22];
    if (result)
    {
      TSP::UUID::~UUID(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27645E35C(void *a1)
{
  sub_27645E220(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27645E39C(uint64_t a1)
{
  sub_2764778D0(a1 + 24);
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 64) + 8);
    do
    {
      v4 = *v3++;
      sub_27640567C(v4);
      --v2;
    }

    while (v2);
    *(a1 + 56) = 0;
  }

  v5 = *(a1 + 80);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 88) + 8);
    do
    {
      v7 = *v6++;
      TSP::UUID::Clear(v7);
      --v5;
    }

    while (v5);
    *(a1 + 80) = 0;
  }

  result = sub_2764778D0(a1 + 96);
  v9 = *(a1 + 128);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 136) + 8);
    do
    {
      v11 = *v10++;
      result = TSP::UUID::Clear(v11);
      --v9;
    }

    while (v9);
    *(a1 + 128) = 0;
  }

  v12 = *(a1 + 16);
  if ((v12 & 0x1F) == 0)
  {
    goto LABEL_20;
  }

  if (v12)
  {
    result = sub_27644C464(*(a1 + 144));
    if ((v12 & 2) == 0)
    {
LABEL_16:
      if ((v12 & 4) == 0)
      {
        goto LABEL_17;
      }

LABEL_26:
      result = TSP::UUID::Clear(*(a1 + 160));
      if ((v12 & 8) == 0)
      {
LABEL_18:
        if ((v12 & 0x10) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      goto LABEL_27;
    }
  }

  else if ((v12 & 2) == 0)
  {
    goto LABEL_16;
  }

  result = TSP::UUID::Clear(*(a1 + 152));
  if ((v12 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  if ((v12 & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_27:
  result = TSP::UUID::Clear(*(a1 + 168));
  if ((v12 & 0x10) != 0)
  {
LABEL_19:
    result = TSP::UUID::Clear(*(a1 + 176));
  }

LABEL_20:
  v14 = *(a1 + 8);
  v13 = a1 + 8;
  *(v13 + 176) = 0;
  *(v13 + 8) = 0;
  if (v14)
  {

    return sub_2763D4FD4(v13);
  }

  return result;
}

google::protobuf::internal *sub_27645E4DC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v72 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v72) & 1) == 0)
  {
    while (1)
    {
      v7 = (v72 + 1);
      v8 = *v72;
      if ((*v72 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v72, (v9 - 128));
      v72 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_137;
      }

      v7 = TagFallback;
      v8 = v35;
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
              v36 = *(a1 + 144);
              if (!v36)
              {
                v37 = *(a1 + 8);
                if (v37)
                {
                  v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
                }

                v36 = sub_276476600(v37);
                *(a1 + 144) = v36;
                v7 = v72;
              }

              v38 = sub_2764AE490(a3, v36, v7);
              goto LABEL_106;
            }

LABEL_127:
            if (v8)
            {
              v69 = (v8 & 7) == 4;
            }

            else
            {
              v69 = 1;
            }

            if (v69)
            {
              *(a3 + 80) = v8 - 1;
              goto LABEL_2;
            }

            if ((*(a1 + 8) & 1) == 0)
            {
              sub_2763D4E10((a1 + 8));
            }

            v38 = google::protobuf::internal::UnknownFieldParse();
            goto LABEL_106;
          }

          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_127;
          }

          *(a1 + 16) |= 2u;
          v11 = *(a1 + 152);
          if (v11)
          {
            goto LABEL_105;
          }

          v32 = *(a1 + 8);
          if (v32)
          {
            v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
          }

          v33 = MEMORY[0x277C97B40](v32);
          LODWORD(v11) = v33;
          *(a1 + 152) = v33;
LABEL_104:
          v7 = v72;
          goto LABEL_105;
        }

        if (v10 == 3)
        {
          if (v8 != 26)
          {
            goto LABEL_127;
          }

          *(a1 + 16) |= 4u;
          v11 = *(a1 + 160);
          if (v11)
          {
            goto LABEL_105;
          }

          v55 = *(a1 + 8);
          if (v55)
          {
            v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
          }

          v56 = MEMORY[0x277C97B40](v55);
          LODWORD(v11) = v56;
          *(a1 + 160) = v56;
          goto LABEL_104;
        }

        if (v10 != 4)
        {
          if (v10 != 5 || v8 != 42)
          {
            goto LABEL_127;
          }

          v14 = (v7 - 1);
          while (2)
          {
            v15 = (v14 + 1);
            v72 = (v14 + 1);
            v16 = *(a1 + 64);
            if (!v16)
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v16 = *(a1 + 64);
              v17 = *v16;
              goto LABEL_25;
            }

            v21 = *(a1 + 56);
            v17 = *v16;
            if (v21 >= *v16)
            {
              if (v17 == *(a1 + 60))
              {
                goto LABEL_24;
              }

LABEL_25:
              *v16 = v17 + 1;
              v18 = sub_276407088(*(a1 + 48));
              v19 = *(a1 + 56);
              v20 = *(a1 + 64) + 8 * v19;
              *(a1 + 56) = v19 + 1;
              *(v20 + 8) = v18;
              v15 = v72;
            }

            else
            {
              *(a1 + 56) = v21 + 1;
              v18 = *&v16[2 * v21 + 2];
            }

            v14 = sub_2764AF330(a3, v18, v15);
            v72 = v14;
            if (!v14)
            {
              goto LABEL_137;
            }

            if (*a3 <= v14 || *v14 != 42)
            {
              goto LABEL_107;
            }

            continue;
          }
        }

        if (v8 != 34)
        {
          goto LABEL_127;
        }

        v39 = v7 - 1;
        while (2)
        {
          v72 = (v39 + 1);
          v40 = *(a1 + 40);
          if (!v40)
          {
            goto LABEL_75;
          }

          v41 = *(a1 + 32);
          v42 = *v40;
          if (v41 < *v40)
          {
            *(a1 + 32) = v41 + 1;
            goto LABEL_77;
          }

          if (v42 == *(a1 + 36))
          {
LABEL_75:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v40 = *(a1 + 40);
            v42 = *v40;
          }

          *v40 = v42 + 1;
          v43 = sub_276380DF4(*(a1 + 24));
          v44 = *(a1 + 32);
          v45 = *(a1 + 40) + 8 * v44;
          *(a1 + 32) = v44 + 1;
          *(v45 + 8) = v43;
LABEL_77:
          v39 = google::protobuf::internal::InlineGreedyStringParser();
          v72 = v39;
          if (!v39)
          {
            goto LABEL_137;
          }

          if (*a3 <= v39 || *v39 != 34)
          {
            goto LABEL_107;
          }

          continue;
        }
      }

      if (v8 >> 3 > 8)
      {
        if (v10 != 9)
        {
          if (v10 != 11)
          {
            if (v10 != 12 || v8 != 98)
            {
              goto LABEL_127;
            }

            v22 = v7 - 1;
            while (2)
            {
              v23 = (v22 + 1);
              v72 = (v22 + 1);
              v24 = *(a1 + 136);
              if (!v24)
              {
LABEL_40:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                v24 = *(a1 + 136);
                v25 = *v24;
                goto LABEL_41;
              }

              v30 = *(a1 + 128);
              v25 = *v24;
              if (v30 >= *v24)
              {
                if (v25 == *(a1 + 132))
                {
                  goto LABEL_40;
                }

LABEL_41:
                *v24 = v25 + 1;
                v26 = MEMORY[0x277C97B40](*(a1 + 120));
                LODWORD(v27) = v26;
                v28 = *(a1 + 128);
                v29 = *(a1 + 136) + 8 * v28;
                *(a1 + 128) = v28 + 1;
                *(v29 + 8) = v26;
                v23 = v72;
              }

              else
              {
                *(a1 + 128) = v30 + 1;
                v27 = *&v24[2 * v30 + 2];
              }

              v22 = sub_2764AE3C0(a3, v27, v23);
              v72 = v22;
              if (!v22)
              {
                goto LABEL_137;
              }

              if (*a3 <= v22 || *v22 != 98)
              {
                goto LABEL_107;
              }

              continue;
            }
          }

          if (v8 != 90)
          {
            goto LABEL_127;
          }

          v48 = v7 - 1;
          while (2)
          {
            v72 = (v48 + 1);
            v49 = *(a1 + 112);
            if (!v49)
            {
              goto LABEL_93;
            }

            v50 = *(a1 + 104);
            v51 = *v49;
            if (v50 < *v49)
            {
              *(a1 + 104) = v50 + 1;
              goto LABEL_95;
            }

            if (v51 == *(a1 + 108))
            {
LABEL_93:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
              v49 = *(a1 + 112);
              v51 = *v49;
            }

            *v49 = v51 + 1;
            v52 = sub_276380DF4(*(a1 + 96));
            v53 = *(a1 + 104);
            v54 = *(a1 + 112) + 8 * v53;
            *(a1 + 104) = v53 + 1;
            *(v54 + 8) = v52;
LABEL_95:
            v48 = google::protobuf::internal::InlineGreedyStringParser();
            v72 = v48;
            if (!v48)
            {
              goto LABEL_137;
            }

            if (*a3 <= v48 || *v48 != 90)
            {
              goto LABEL_107;
            }

            continue;
          }
        }

        if (v8 != 74)
        {
          goto LABEL_127;
        }

        v60 = v7 - 1;
        while (2)
        {
          v61 = (v60 + 1);
          v72 = (v60 + 1);
          v62 = *(a1 + 88);
          if (!v62)
          {
LABEL_117:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
            v62 = *(a1 + 88);
            v63 = *v62;
            goto LABEL_118;
          }

          v68 = *(a1 + 80);
          v63 = *v62;
          if (v68 >= *v62)
          {
            if (v63 == *(a1 + 84))
            {
              goto LABEL_117;
            }

LABEL_118:
            *v62 = v63 + 1;
            v64 = MEMORY[0x277C97B40](*(a1 + 72));
            LODWORD(v65) = v64;
            v66 = *(a1 + 80);
            v67 = *(a1 + 88) + 8 * v66;
            *(a1 + 80) = v66 + 1;
            *(v67 + 8) = v64;
            v61 = v72;
          }

          else
          {
            *(a1 + 80) = v68 + 1;
            v65 = *&v62[2 * v68 + 2];
          }

          v60 = sub_2764AE3C0(a3, v65, v61);
          v72 = v60;
          if (!v60)
          {
            goto LABEL_137;
          }

          if (*a3 <= v60 || *v60 != 74)
          {
            goto LABEL_107;
          }

          continue;
        }
      }

      if (v10 != 6)
      {
        if (v10 != 7)
        {
          if (v10 == 8 && v8 == 66)
          {
            *(a1 + 16) |= 0x10u;
            v11 = *(a1 + 176);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v13 = MEMORY[0x277C97B40](v12);
              LODWORD(v11) = v13;
              *(a1 + 176) = v13;
              goto LABEL_104;
            }

LABEL_105:
            v38 = sub_2764AE3C0(a3, v11, v7);
LABEL_106:
            v72 = v38;
            if (!v38)
            {
              goto LABEL_137;
            }

            goto LABEL_107;
          }

          goto LABEL_127;
        }

        if (v8 != 58)
        {
          goto LABEL_127;
        }

        *(a1 + 16) |= 8u;
        v11 = *(a1 + 168);
        if (v11)
        {
          goto LABEL_105;
        }

        v46 = *(a1 + 8);
        if (v46)
        {
          v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
        }

        v47 = MEMORY[0x277C97B40](v46);
        LODWORD(v11) = v47;
        *(a1 + 168) = v47;
        goto LABEL_104;
      }

      if (v8 != 48)
      {
        goto LABEL_127;
      }

      v5 |= 0x20u;
      v58 = (v7 + 1);
      v57 = *v7;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_113;
      }

      v59 = *v58;
      v57 = (v59 << 7) + v57 - 128;
      if ((v59 & 0x80000000) == 0)
      {
        v58 = (v7 + 2);
LABEL_113:
        v72 = v58;
        *(a1 + 184) = v57 != 0;
        goto LABEL_107;
      }

      v70 = google::protobuf::internal::VarintParseSlow64(v7, v57);
      v72 = v70;
      *(a1 + 184) = v71 != 0;
      if (!v70)
      {
LABEL_137:
        v72 = 0;
        goto LABEL_2;
      }

LABEL_107:
      if (sub_2763D4D98(a3, &v72))
      {
        goto LABEL_2;
      }
    }

    v7 = (v72 + 2);
LABEL_6:
    v72 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v72;
}

unsigned __int8 *sub_27645EC24(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 144);
    *v4 = 10;
    v8 = *(v7 + 20);
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

    v4 = sub_2764670A4(v7, v9, a3);
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

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v13 = *(a1 + 152);
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

  v4 = TSP::UUID::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(a1 + 160);
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

    v4 = TSP::UUID::_InternalSerialize(v19, v21, a3);
  }

LABEL_35:
  v25 = *(a1 + 32);
  if (v25 >= 1)
  {
    v26 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 4, *(*(a1 + 40) + v26), v4);
      v26 += 8;
      --v25;
    }

    while (v25);
  }

  v27 = *(a1 + 56);
  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v29 = *(*(a1 + 64) + 8 * i + 8);
      *v4 = 42;
      v30 = *(v29 + 40);
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

      v4 = sub_2764058C8(v29, v31, a3);
    }
  }

  if ((v6 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v35 = *(a1 + 184);
    *v4 = 48;
    v4[1] = v35;
    v4 += 2;
    if ((v6 & 8) == 0)
    {
LABEL_52:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_67;
    }
  }

  else if ((v6 & 8) == 0)
  {
    goto LABEL_52;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v36 = *(a1 + 168);
  *v4 = 58;
  v37 = *(v36 + 5);
  if (v37 > 0x7F)
  {
    v4[1] = v37 | 0x80;
    v39 = v37 >> 7;
    if (v37 >> 14)
    {
      v38 = v4 + 3;
      do
      {
        *(v38 - 1) = v39 | 0x80;
        v40 = v39 >> 7;
        ++v38;
        v41 = v39 >> 14;
        v39 >>= 7;
      }

      while (v41);
      *(v38 - 1) = v40;
    }

    else
    {
      v4[2] = v39;
      v38 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v37;
    v38 = v4 + 2;
  }

  v4 = TSP::UUID::_InternalSerialize(v36, v38, a3);
  if ((v6 & 0x10) != 0)
  {
LABEL_67:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v42 = *(a1 + 176);
    *v4 = 66;
    v43 = *(v42 + 5);
    if (v43 > 0x7F)
    {
      v4[1] = v43 | 0x80;
      v45 = v43 >> 7;
      if (v43 >> 14)
      {
        v44 = v4 + 3;
        do
        {
          *(v44 - 1) = v45 | 0x80;
          v46 = v45 >> 7;
          ++v44;
          v47 = v45 >> 14;
          v45 >>= 7;
        }

        while (v47);
        *(v44 - 1) = v46;
      }

      else
      {
        v4[2] = v45;
        v44 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v43;
      v44 = v4 + 2;
    }

    v4 = TSP::UUID::_InternalSerialize(v42, v44, a3);
  }

LABEL_77:
  v48 = *(a1 + 80);
  if (v48)
  {
    for (j = 0; j != v48; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v50 = *(*(a1 + 88) + 8 * j + 8);
      *v4 = 74;
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

      v4 = TSP::UUID::_InternalSerialize(v50, v52, a3);
    }
  }

  v56 = *(a1 + 104);
  if (v56 >= 1)
  {
    v57 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 11, *(*(a1 + 112) + v57), v4);
      v57 += 8;
      --v56;
    }

    while (v56);
  }

  v58 = *(a1 + 128);
  if (v58)
  {
    for (k = 0; k != v58; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v60 = *(*(a1 + 136) + 8 * k + 8);
      *v4 = 98;
      v61 = *(v60 + 5);
      if (v61 > 0x7F)
      {
        v4[1] = v61 | 0x80;
        v63 = v61 >> 7;
        if (v61 >> 14)
        {
          v62 = v4 + 3;
          do
          {
            *(v62 - 1) = v63 | 0x80;
            v64 = v63 >> 7;
            ++v62;
            v65 = v63 >> 14;
            v63 >>= 7;
          }

          while (v65);
          *(v62 - 1) = v64;
        }

        else
        {
          v4[2] = v63;
          v62 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v61;
        v62 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v60, v62, a3);
    }
  }

  v66 = *(a1 + 8);
  if ((v66 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v66 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27645F278(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v5 = sub_27645D760(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 144));
    v3 = TSP::UUID::ByteSizeLong(*(a1 + 152));
    v4 = TSP::UUID::ByteSizeLong(*(a1 + 160));
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v6 = *(a1 + 32);
  v7 = v5 + v6;
  if (v6 >= 1)
  {
    v8 = (*(a1 + 40) + 8);
    do
    {
      v9 = *v8++;
      v10 = *(v9 + 23);
      v11 = *(v9 + 8);
      if ((v10 & 0x80u) == 0)
      {
        v11 = v10;
      }

      v7 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      --v6;
    }

    while (v6);
  }

  v12 = *(a1 + 56);
  v13 = v7 + v12;
  v14 = *(a1 + 64);
  if (v14)
  {
    v15 = (v14 + 8);
  }

  else
  {
    v15 = 0;
  }

  if (v12)
  {
    v16 = 8 * v12;
    do
    {
      v17 = *v15++;
      v18 = sub_2764059EC(v17);
      v13 += v18 + ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6);
      v16 -= 8;
    }

    while (v16);
  }

  v19 = *(a1 + 80);
  v20 = v13 + v19;
  v21 = *(a1 + 88);
  if (v21)
  {
    v22 = (v21 + 8);
  }

  else
  {
    v22 = 0;
  }

  if (v19)
  {
    v23 = 8 * v19;
    do
    {
      v24 = *v22++;
      v25 = TSP::UUID::ByteSizeLong(v24);
      v20 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6);
      v23 -= 8;
    }

    while (v23);
  }

  v26 = *(a1 + 104);
  v27 = v20 + v26;
  if (v26 >= 1)
  {
    v28 = (*(a1 + 112) + 8);
    do
    {
      v29 = *v28++;
      v30 = *(v29 + 23);
      v31 = *(v29 + 8);
      if ((v30 & 0x80u) == 0)
      {
        v31 = v30;
      }

      v27 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6);
      --v26;
    }

    while (v26);
  }

  v32 = *(a1 + 128);
  v33 = v27 + v32;
  v34 = *(a1 + 136);
  if (v34)
  {
    v35 = (v34 + 8);
  }

  else
  {
    v35 = 0;
  }

  if (v32)
  {
    v36 = 8 * v32;
    do
    {
      v37 = *v35++;
      v38 = TSP::UUID::ByteSizeLong(v37);
      v33 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6);
      v36 -= 8;
    }

    while (v36);
  }

  v39 = *(a1 + 16);
  if ((v39 & 0x38) != 0)
  {
    if ((v39 & 8) != 0)
    {
      v40 = TSP::UUID::ByteSizeLong(*(a1 + 168));
      v33 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v39 & 0x10) != 0)
    {
      v41 = TSP::UUID::ByteSizeLong(*(a1 + 176));
      v33 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v33 += (v39 >> 4) & 2;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v33;
    return v33;
  }
}

uint64_t sub_27645F59C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527200, 0);
  if (v4)
  {

    return sub_27645DBF4(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27645F644(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27645E39C(result);

    return sub_27645F59C(v4, a2);
  }

  return result;
}

uint64_t sub_27645F690(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 80);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(a1 + 88) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 128);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::UUID::IsInitialized(*(*(a1 + 136) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    result = sub_27644DF5C(*(a1 + 144));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 2) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 152));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 160));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 8) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 168));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 0x10) == 0)
  {
    return 1;
  }

  result = TSP::UUID::IsInitialized(*(a1 + 176));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_27645F7C0(uint64_t *a1)
{
  if (a1 != &qword_2812F1D38)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27645F824(uint64_t *a1)
{
  sub_27645F7C0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27645F864(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_27644C464(result[3]);
  }

  if ((v2 & 0x1E) != 0)
  {
    v1[4] = 0;
    v1[5] = 0;
    v1[6] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27645F8D0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v31 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v31) & 1) == 0)
  {
    while (1)
    {
      v7 = (v31 + 1);
      v8 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v31, (v9 - 128));
      v31 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_54;
      }

      v7 = TagFallback;
      v8 = v26;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v21 = *(a1 + 24);
            if (!v21)
            {
              v22 = *(a1 + 8);
              if (v22)
              {
                v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
              }

              v21 = sub_276476600(v22);
              *(a1 + 24) = v21;
              v7 = v31;
            }

            v23 = sub_2764AE490(a3, v21, v7);
            goto LABEL_44;
          }

LABEL_37:
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
            sub_2763D4E10((a1 + 8));
          }

          v23 = google::protobuf::internal::UnknownFieldParse();
LABEL_44:
          v31 = v23;
          if (!v23)
          {
            goto LABEL_54;
          }

          goto LABEL_45;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_37;
        }

        v5 |= 2u;
        v14 = (v7 + 1);
        LODWORD(v15) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        v16 = *v14;
        v15 = (v15 + (v16 << 7) - 128);
        if ((v16 & 0x80000000) == 0)
        {
          v14 = (v7 + 2);
LABEL_22:
          v31 = v14;
          *(a1 + 32) = v15;
          goto LABEL_45;
        }

        v29 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v31 = v29;
        *(a1 + 32) = v30;
        if (!v29)
        {
LABEL_54:
          v31 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 3)
        {
          if (v10 == 4)
          {
            if (v8 == 33)
            {
              v20 = *v7;
              v11 = (v7 + 8);
              v5 |= 8u;
              *(a1 + 40) = v20;
              goto LABEL_30;
            }
          }

          else if (v10 == 5 && v8 == 41)
          {
            v12 = *v7;
            v11 = (v7 + 8);
            v5 |= 0x10u;
            *(a1 + 48) = v12;
LABEL_30:
            v31 = v11;
            goto LABEL_45;
          }

          goto LABEL_37;
        }

        if (v8 != 24)
        {
          goto LABEL_37;
        }

        v5 |= 4u;
        v17 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        v19 = *v17;
        v18 = (v18 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_27:
          v31 = v17;
          *(a1 + 36) = v18;
          goto LABEL_45;
        }

        v27 = google::protobuf::internal::VarintParseSlow32(v7, v18);
        v31 = v27;
        *(a1 + 36) = v28;
        if (!v27)
        {
          goto LABEL_54;
        }
      }

LABEL_45:
      if (sub_2763D4D98(a3, &v31))
      {
        goto LABEL_2;
      }
    }

    v7 = (v31 + 2);
LABEL_6:
    v31 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v31;
}

unsigned __int8 *sub_27645FB64(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
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

    a2 = sub_2764670A4(v6, v8, a3);
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

      v16 = *(a1 + 36);
      *a2 = 24;
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
          if ((v5 & 8) != 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          a2[2] = v17;
          a2 += 3;
          if ((v5 & 8) != 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        a2[1] = v16;
        a2 += 2;
        if ((v5 & 8) != 0)
        {
          goto LABEL_39;
        }
      }

LABEL_5:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
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

  v12 = *(a1 + 32);
  *a2 = 16;
  if (v12 > 0x7F)
  {
    a2[1] = v12 | 0x80;
    v13 = v12 >> 7;
    if (v12 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++a2;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(a2 - 1) = v14;
      if ((v5 & 4) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      a2[2] = v13;
      a2 += 3;
      if ((v5 & 4) != 0)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    a2[1] = v12;
    a2 += 2;
    if ((v5 & 4) != 0)
    {
      goto LABEL_28;
    }
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

  v20 = *(a1 + 40);
  *a2 = 33;
  *(a2 + 1) = v20;
  a2 += 9;
  if ((v5 & 0x10) != 0)
  {
LABEL_42:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(a1 + 48);
    *a2 = 41;
    *(a2 + 1) = v21;
    a2 += 9;
  }

LABEL_45:
  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27645FDF4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276467344(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
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
    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 8) != 0)
  {
    v3 += 9;
  }

  if ((v2 & 0x10) != 0)
  {
    return v3 + 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_27645FEBC(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x1F) != 0)
  {
    v3 = sub_27645FDF4(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 24));
    v3 = v2 + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 21;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_27645FF94(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527218, 0);
  if (v4)
  {

    return sub_27646003C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27646003C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
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

        v6 = sub_276476600(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v6, v8);
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

    *(v3 + 32) = *(a2 + 32);
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
    *(v3 + 36) = *(a2 + 36);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_9:
      *(v3 + 48) = *(a2 + 48);
      goto LABEL_10;
    }

LABEL_22:
    *(v3 + 40) = *(a2 + 40);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return result;
}

uint64_t *sub_276460128(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27645F864(result);

    return sub_27645FF94(v4, a2);
  }

  return result;
}

uint64_t sub_276460174(uint64_t a1)
{
  if ((~*(a1 + 16) & 0x1F) != 0)
  {
    return 0;
  }

  else
  {
    return sub_27644DF5C(*(a1 + 24));
  }
}

uint64_t *sub_2764601CC(uint64_t *a1)
{
  if (a1 != &qword_2812F1D70)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276460230(uint64_t *a1)
{
  sub_2764601CC(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276460270(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_27644C464(result[3]);
  }

  if ((v2 & 6) != 0)
  {
    v1[4] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_2764602D8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v28) & 1) == 0)
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
        v17 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v17;
        v18 = (v18 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_29:
          v28 = v17;
          *(a1 + 36) = v18;
          goto LABEL_36;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v18);
        v28 = v26;
        *(a1 + 36) = v27;
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

              v20 = sub_276476600(v21);
              *(a1 + 24) = v20;
              v7 = v28;
            }

            v13 = sub_2764AE490(a3, v20, v7);
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
              sub_2763D4E10((a1 + 8));
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
          v28 = v14;
          *(a1 + 32) = v15;
          goto LABEL_36;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v28 = v24;
        *(a1 + 32) = v25;
        if (!v24)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      if (sub_2763D4D98(a3, &v28))
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

unsigned __int8 *sub_276460518(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
    *a2 = 10;
    v8 = *(v7 + 20);
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

    a2 = sub_2764670A4(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
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

  v16 = *(a1 + 32);
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 36);
  *a2 = 24;
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

LABEL_34:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276460730(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276467344(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
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
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return result;
}

uint64_t sub_2764607E0(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v3 = sub_276460730(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 24));
    v3 = v2 + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_2764608B8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527230, 0);
  if (v4)
  {

    return sub_276460960(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276460960(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
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

        v6 = sub_276476600(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return result;
        }

LABEL_7:
        *(v3 + 36) = *(a2 + 36);
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

  return result;
}

uint64_t *sub_276460A2C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276460270(result);

    return sub_2764608B8(v4, a2);
  }

  return result;
}

uint64_t sub_276460A78(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  else
  {
    return sub_27644DF5C(*(a1 + 24));
  }
}

uint64_t *sub_276460AD0(uint64_t *a1)
{
  if (a1 != &qword_2812F1D98)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276460B34(uint64_t *a1)
{
  sub_276460AD0(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276460B74(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_27644C464(result[3]);
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 10) = 0;
    v1[4] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276460BE0(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v33) & 1) == 0)
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

              v18 = sub_276476600(v19);
              *(a1 + 24) = v18;
              v7 = v33;
            }

            v20 = sub_2764AE490(a3, v18, v7);
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
              sub_2763D4E10((a1 + 8));
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
      if (sub_2763D4D98(a3, &v33))
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

unsigned __int8 *sub_276460E8C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
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

    v16 = *(a1 + 32);
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

  v7 = *(a1 + 24);
  *a2 = 10;
  v8 = *(v7 + 20);
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

  a2 = sub_2764670A4(v7, v9, a3);
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

  v20 = *(a1 + 36);
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

  v6 = *(a1 + 40);
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
  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276461134(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276467344(*(a1 + 24));
    result = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
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
    result += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    result += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      return result;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return result;
  }

  result += ((9 * (__clz(*(a1 + 40) | 1) ^ 0x1F) + 73) >> 6) + 1;
  return result;
}

uint64_t sub_276461214(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xF) != 0)
  {
    v6 = sub_276461134(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 24));
    v3.i32[0] = v2 | 1;
    v3.i32[1] = *(a1 + 32) | 1;
    v3.i64[1] = *(a1 + 36) | 0x100000001;
    v4 = vclzq_s32(v3);
    v3.i64[0] = 0x1F0000001FLL;
    v3.i64[1] = 0x1F0000001FLL;
    v5.i64[0] = 0x4900000049;
    v5.i64[1] = 0x4900000049;
    v6 = vaddlvq_u32(vshrq_n_u32(vmlal_u16(v5, vmovn_s32(veorq_s8(v4, v3)), 0x9000900090009), 6uLL)) + v2 + 4;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v6;
    return v6;
  }
}

uint64_t sub_2764612D8(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527248, 0);
  if (v4)
  {

    return sub_276461380(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276461380(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
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

        v6 = sub_276476600(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v6, v8);
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

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_8:
      *(v3 + 40) = *(a2 + 40);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 36) = *(a2 + 36);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t *sub_27646145C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276460B74(result);

    return sub_2764612D8(v4, a2);
  }

  return result;
}

uint64_t sub_2764614A8(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xF) != 0)
  {
    return 0;
  }

  else
  {
    return sub_27644DF5C(*(a1 + 24));
  }
}

uint64_t *sub_276461500(uint64_t *a1)
{
  if (a1 != &qword_2812F1DC8)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276461564(uint64_t *a1)
{
  sub_276461500(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2764615A4(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_27644C464(result[3]);
  }

  if ((v2 & 6) != 0)
  {
    v1[4] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_27646160C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v28) & 1) == 0)
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
      if (v8 >> 3 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_13;
        }

        v5 |= 4u;
        v17 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v17;
        v18 = (v18 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_29:
          v28 = v17;
          *(a1 + 36) = v18;
          goto LABEL_36;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v18);
        v28 = v26;
        *(a1 + 36) = v27;
        if (!v26)
        {
LABEL_45:
          v28 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 != 3)
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

              v20 = sub_276476600(v21);
              *(a1 + 24) = v20;
              v7 = v28;
            }

            v13 = sub_2764AE490(a3, v20, v7);
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
              sub_2763D4E10((a1 + 8));
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

        if (v8 != 24)
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
          v28 = v14;
          *(a1 + 32) = v15;
          goto LABEL_36;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v28 = v24;
        *(a1 + 32) = v25;
        if (!v24)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      if (sub_2763D4D98(a3, &v28))
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

unsigned __int8 *sub_27646184C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
    *a2 = 10;
    v8 = *(v7 + 20);
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

    a2 = sub_2764670A4(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
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

  v16 = *(a1 + 32);
  *a2 = 24;
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 36);
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

LABEL_34:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276461A64(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v3 = sub_276460730(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 24));
    v3 = v2 + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_276461B3C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527260, 0);
  if (v4)
  {

    return sub_276460960(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_276461BE4(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2764615A4(result);

    return sub_276461B3C(v4, a2);
  }

  return result;
}

uint64_t sub_276461C30(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  else
  {
    return sub_27644DF5C(*(a1 + 24));
  }
}

uint64_t *sub_276461C88(uint64_t *a1)
{
  if (a1 != &qword_2812F1DF0)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276461CEC(uint64_t *a1)
{
  sub_276461C88(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276461D2C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = sub_27644C464(result[3]);
  }

  if ((v2 & 6) != 0)
  {
    v1[4] = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276461D94(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v28) & 1) == 0)
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
        v17 = (v7 + 1);
        LODWORD(v18) = *v7;
        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v17;
        v18 = (v18 + (v19 << 7) - 128);
        if ((v19 & 0x80000000) == 0)
        {
          v17 = (v7 + 2);
LABEL_29:
          v28 = v17;
          *(a1 + 36) = v18;
          goto LABEL_36;
        }

        v26 = google::protobuf::internal::VarintParseSlow32(v7, v18);
        v28 = v26;
        *(a1 + 36) = v27;
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

              v20 = sub_276476600(v21);
              *(a1 + 24) = v20;
              v7 = v28;
            }

            v13 = sub_2764AE490(a3, v20, v7);
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
              sub_2763D4E10((a1 + 8));
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
          v28 = v14;
          *(a1 + 32) = v15;
          goto LABEL_36;
        }

        v24 = google::protobuf::internal::VarintParseSlow32(v7, v15);
        v28 = v24;
        *(a1 + 32) = v25;
        if (!v24)
        {
          goto LABEL_45;
        }
      }

LABEL_36:
      if (sub_2763D4D98(a3, &v28))
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

unsigned __int8 *sub_276461FD4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 24);
    *a2 = 10;
    v8 = *(v7 + 20);
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

    a2 = sub_2764670A4(v7, v9, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_4;
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

  v16 = *(a1 + 32);
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
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      a2[2] = v17;
      a2 += 3;
      if ((v5 & 4) == 0)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    a2[1] = v16;
    a2 += 2;
    if ((v5 & 4) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_4:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 36);
  *a2 = 24;
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

LABEL_34:
  v20 = *(a1 + 8);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v20 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764621EC(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v3 = sub_276460730(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 24));
    v3 = v2 + ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_2764622C4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527278, 0);
  if (v4)
  {

    return sub_276460960(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_27646236C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276461D2C(result);

    return sub_2764622C4(v4, a2);
  }

  return result;
}

uint64_t sub_2764623B8(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  else
  {
    return sub_27644DF5C(*(a1 + 24));
  }
}

uint64_t *sub_276462410(uint64_t *a1)
{
  if (a1 != &qword_2812F1E18)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    if (a1[4])
    {
      v4 = sub_2763FFD8C();
      MEMORY[0x277C98580](v4, 0x10A1C40DFBAE579);
    }

    if (a1[5])
    {
      v5 = sub_2763FFD8C();
      MEMORY[0x277C98580](v5, 0x10A1C40DFBAE579);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_2764624AC(uint64_t *a1)
{
  sub_276462410(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_2764624EC(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_27644C464(result[3]);
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

    result = sub_2763FFDD0(v1[4]);
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_2763FFDD0(v1[5]);
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276462574(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  while ((sub_2763D4D98(a3, &v20) & 1) == 0)
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
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = sub_276406958(v14);
        *(a1 + 40) = v12;
LABEL_30:
        v5 = v20;
      }

LABEL_31:
      v11 = sub_2764AF400(a3, v12, v5);
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

        v12 = sub_276406958(v13);
        *(a1 + 32) = v12;
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
        sub_2763D4E10((a1 + 8));
      }

      v11 = google::protobuf::internal::UnknownFieldParse();
      goto LABEL_37;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_276476600(v16);
      *(a1 + 24) = v15;
      v5 = v20;
    }

    v11 = sub_2764AE490(a3, v15, v5);
LABEL_37:
    v20 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v20;
}

unsigned __int8 *sub_27646276C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
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

    a2 = sub_2764670A4(v6, v8, a3);
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

  v12 = *(a1 + 32);
  *a2 = 18;
  v13 = *(v12 + 20);
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

  a2 = sub_2763FFFEC(v12, v14, a3);
  if ((v5 & 4) != 0)
  {
LABEL_25:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(a1 + 40);
    *a2 = 26;
    v19 = *(v18 + 20);
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

    a2 = sub_2763FFFEC(v18, v20, a3);
  }

LABEL_35:
  v24 = *(a1 + 8);
  if ((v24 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v24 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27646299C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276467344(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
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
    v5 = sub_276400210(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = sub_276400210(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_276462A64(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v5 = sub_27646299C(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 24));
    v3 = sub_276400210(*(a1 + 32));
    v4 = sub_276400210(*(a1 + 40));
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v5;
    return v5;
  }
}

uint64_t sub_276462B70(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527290, 0);
  if (v4)
  {

    return sub_276462C18(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276462C18(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
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

        v6 = sub_276476600(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v6, v8);
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

        v9 = sub_276406958(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &qword_2812F0190;
      }

      result = sub_27640038C(v9, v11);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v12 = *(v3 + 40);
      if (!v12)
      {
        v13 = *(v3 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = sub_276406958(v13);
        *(v3 + 40) = v12;
      }

      if (*(a2 + 40))
      {
        v14 = *(a2 + 40);
      }

      else
      {
        v14 = &qword_2812F0190;
      }

      return sub_27640038C(v12, v14);
    }
  }

  return result;
}

uint64_t *sub_276462D60(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2764624EC(result);

    return sub_276462B70(v4, a2);
  }

  return result;
}

uint64_t sub_276462DAC(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  result = sub_27644DF5C(*(a1 + 24));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = sub_2764004DC(*(a1 + 32));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = sub_2764004DC(*(a1 + 40));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void *sub_276462E58(void *a1, uint64_t a2)
{
  *a1 = &unk_288525F68;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a2;
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = a2;
  a1[9] = 0;
  a1[10] = a2;
  if (atomic_load_explicit(dword_2812EE148, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void sub_276462EEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 76) >= 1)
  {
    sub_2764AB658(v2);
  }

  if (*(v1 + 60) >= 1)
  {
    v4 = *(v1 + 64);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  if (*(v1 + 44) >= 1)
  {
    v7 = *(v1 + 48);
    v9 = *(v7 - 8);
    v8 = (v7 - 8);
    if (!v9)
    {
      operator delete(v8);
    }
  }

  if (*(v1 + 28) >= 1)
  {
    v10 = *(v1 + 32);
    v12 = *(v10 - 8);
    v11 = (v10 - 8);
    if (!v12)
    {
      operator delete(v11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276462F60(uint64_t a1)
{
  if (a1 != qword_2812F1E48)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = *(a1 + 96);
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4((a1 + 8));
  if (*(a1 + 76) >= 1)
  {
    v5 = *(a1 + 80);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  if (*(a1 + 60) >= 1)
  {
    v8 = *(a1 + 64);
    v10 = *(v8 - 8);
    v9 = (v8 - 8);
    if (!v10)
    {
      operator delete(v9);
    }
  }

  if (*(a1 + 44) >= 1)
  {
    v11 = *(a1 + 48);
    v13 = *(v11 - 8);
    v12 = (v11 - 8);
    if (!v13)
    {
      operator delete(v12);
    }
  }

  if (*(a1 + 28) >= 1)
  {
    v14 = *(a1 + 32);
    v16 = *(v14 - 8);
    v15 = (v14 - 8);
    if (!v16)
    {
      operator delete(v15);
    }
  }

  return a1;
}

void sub_276463054(uint64_t a1)
{
  sub_276462F60(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276463094(uint64_t *result)
{
  v1 = result;
  *(result + 6) = 0;
  *(result + 10) = 0;
  *(result + 14) = 0;
  *(result + 18) = 0;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = sub_27644C464(result[11]);
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::Reference::Clear(v1[12]);
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276463114(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v40 = a2;
LABEL_2:
  while ((sub_2763D4D98(a3, &v40) & 1) == 0)
  {
    v5 = (v40 + 1);
    v6 = *v40;
    if (*v40 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v40, (v7 - 128));
        v40 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v36;
        goto LABEL_7;
      }

      v5 = (v40 + 2);
    }

    v40 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 4)
    {
      if (v8 == 5)
      {
        if (v6 == 40)
        {
          v19 = v5 - 1;
          while (1)
          {
            v40 = (v19 + 1);
            v20 = v19[1];
            if (v19[1] < 0)
            {
              v21 = v20 + (v19[2] << 7);
              v20 = v21 - 128;
              if (v19[2] < 0)
              {
                v19 = google::protobuf::internal::VarintParseSlow32((v19 + 1), (v21 - 128));
                v20 = v22;
              }

              else
              {
                v19 += 3;
              }
            }

            else
            {
              v19 += 2;
            }

            v40 = v19;
            v23 = *(a1 + 56);
            if (v23 == *(a1 + 60))
            {
              v24 = v23 + 1;
              sub_2762E9624((a1 + 56), v23 + 1);
              *(*(a1 + 64) + 4 * v23) = v20;
              v19 = v40;
            }

            else
            {
              *(*(a1 + 64) + 4 * v23) = v20;
              v24 = v23 + 1;
            }

            *(a1 + 56) = v24;
            if (!v19)
            {
              return 0;
            }

            if (*a3 <= v19 || *v19 != 40)
            {
              goto LABEL_2;
            }
          }
        }

        if (v6 != 42)
        {
LABEL_81:
          if (v6)
          {
            v38 = (v6 & 7) == 4;
          }

          else
          {
            v38 = 1;
          }

          if (v38)
          {
            *(a3 + 80) = v6 - 1;
            return v40;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v16 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_88;
        }

        goto LABEL_77;
      }

      if (v8 == 6)
      {
        if (v6 != 49)
        {
          if (v6 != 50)
          {
            goto LABEL_81;
          }

          v37 = a1 + 72;
          goto LABEL_80;
        }

        v31 = v5 - 1;
        v32 = *(a1 + 72);
        do
        {
          v33 = (v31 + 1);
          v40 = (v31 + 1);
          v34 = *(v31 + 1);
          if (v32 == *(a1 + 76))
          {
            sub_2762A9574((a1 + 72), v32 + 1);
            *(*(a1 + 80) + 8 * v32) = v34;
            v33 = v40;
          }

          else
          {
            *(*(a1 + 80) + 8 * v32) = v34;
          }

          *(a1 + 72) = ++v32;
          v31 = v33 + 8;
          v40 = (v33 + 8);
        }

        while (*a3 > v33 + 8 && *v31 == 49);
      }

      else
      {
        if (v8 != 7 || v6 != 58)
        {
          goto LABEL_81;
        }

        *(a1 + 16) |= 2u;
        v13 = *(a1 + 96);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97B90](v14);
          LODWORD(v13) = v15;
          *(a1 + 96) = v15;
          v5 = v40;
        }

        v16 = sub_2764ADCBC(a3, v13, v5);
LABEL_88:
        v40 = v16;
        if (!v16)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_81;
        }

        *(a1 + 16) |= 1u;
        v17 = *(a1 + 88);
        if (!v17)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = sub_276476600(v18);
          *(a1 + 88) = v17;
          v5 = v40;
        }

        v16 = sub_2764AE490(a3, v17, v5);
        goto LABEL_88;
      }

      if (v8 == 2)
      {
        if (v6 == 16)
        {
          v25 = v5 - 1;
          while (1)
          {
            v40 = (v25 + 1);
            v26 = v25[1];
            if (v25[1] < 0)
            {
              v27 = v26 + (v25[2] << 7);
              v26 = v27 - 128;
              if (v25[2] < 0)
              {
                v25 = google::protobuf::internal::VarintParseSlow32((v25 + 1), (v27 - 128));
                v26 = v28;
              }

              else
              {
                v25 += 3;
              }
            }

            else
            {
              v25 += 2;
            }

            v40 = v25;
            v29 = *(a1 + 24);
            if (v29 == *(a1 + 28))
            {
              v30 = v29 + 1;
              sub_2762E9624((a1 + 24), v29 + 1);
              *(*(a1 + 32) + 4 * v29) = v26;
              v25 = v40;
            }

            else
            {
              *(*(a1 + 32) + 4 * v29) = v26;
              v30 = v29 + 1;
            }

            *(a1 + 24) = v30;
            if (!v25)
            {
              return 0;
            }

            if (*a3 <= v25 || *v25 != 16)
            {
              goto LABEL_2;
            }
          }
        }

        if (v6 != 18)
        {
          goto LABEL_81;
        }

LABEL_77:
        v16 = google::protobuf::internal::PackedUInt32Parser();
        goto LABEL_88;
      }

      if (v8 != 3)
      {
        goto LABEL_81;
      }

      if (v6 != 25)
      {
        if (v6 != 26)
        {
          goto LABEL_81;
        }

        v37 = a1 + 40;
LABEL_80:
        v16 = MEMORY[0x277C97E50](v37, v5, a3);
        goto LABEL_88;
      }

      v9 = v5 - 1;
      v10 = *(a1 + 40);
      do
      {
        v11 = (v9 + 1);
        v40 = (v9 + 1);
        v12 = *(v9 + 1);
        if (v10 == *(a1 + 44))
        {
          sub_2762A9574((a1 + 40), v10 + 1);
          *(*(a1 + 48) + 8 * v10) = v12;
          v11 = v40;
        }

        else
        {
          *(*(a1 + 48) + 8 * v10) = v12;
        }

        *(a1 + 40) = ++v10;
        v9 = v11 + 8;
        v40 = (v11 + 8);
      }

      while (*a3 > v11 + 8 && *v9 == 25);
    }
  }

  return v40;
}

unsigned __int8 *sub_2764635D4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 88);
    *a2 = 10;
    v7 = *(v6 + 20);
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

    a2 = sub_2764670A4(v6, v8, a3);
  }

  v12 = *(a1 + 24);
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v14 = *(*(a1 + 32) + 4 * i);
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
        }

        else
        {
          a2[2] = v15;
          a2 += 3;
        }
      }

      else
      {
        a2[1] = v14;
        a2 += 2;
      }
    }
  }

  v18 = *(a1 + 40);
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = 8 * v18;
    do
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v21 = *(*(a1 + 48) + v19);
      *a2 = 25;
      *(a2 + 1) = v21;
      a2 += 9;
      v19 += 8;
    }

    while (v20 != v19);
  }

  v22 = *(a1 + 56);
  if (v22 >= 1)
  {
    for (j = 0; j != v22; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v24 = *(*(a1 + 64) + 4 * j);
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
  }

  v28 = *(a1 + 72);
  if (v28 >= 1)
  {
    v29 = 0;
    v30 = 8 * v28;
    do
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v31 = *(*(a1 + 80) + v29);
      *a2 = 49;
      *(a2 + 1) = v31;
      a2 += 9;
      v29 += 8;
    }

    while (v30 != v29);
  }

  if ((v5 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v32 = *(a1 + 96);
    *a2 = 58;
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

    a2 = TSP::Reference::_InternalSerialize(v32, v34, a3);
  }

  v38 = *(a1 + 8);
  if ((v38 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v38 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276463968(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276467344(*(a1 + 88));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = google::protobuf::internal::WireFormatLite::UInt32Size();
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = v4 + v2 + v5 + v6 + google::protobuf::internal::WireFormatLite::UInt32Size() + 8 * v6 + *(a1 + 56) + *(a1 + 72) + 8 * *(a1 + 72);
  if ((*(a1 + 16) & 2) != 0)
  {
    v8 = TSP::Reference::ByteSizeLong(*(a1 + 96));
    v7 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v7;
    return v7;
  }
}

uint64_t sub_276463A88(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885272A8, 0);
  if (v4)
  {

    return sub_276463B30(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276463B30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(v3 + 24);
    sub_2762E9624((v3 + 24), v6 + v5);
    v7 = *(v3 + 32);
    *(v3 + 24) += *(a2 + 24);
    result = memcpy((v7 + 4 * v6), *(a2 + 32), 4 * *(a2 + 24));
  }

  v8 = *(a2 + 40);
  if (v8)
  {
    v9 = *(v3 + 40);
    sub_2762A9574((v3 + 40), v9 + v8);
    v10 = *(v3 + 48);
    *(v3 + 40) += *(a2 + 40);
    result = memcpy((v10 + 8 * v9), *(a2 + 48), 8 * *(a2 + 40));
  }

  v11 = *(a2 + 56);
  if (v11)
  {
    v12 = *(v3 + 56);
    sub_2762E9624((v3 + 56), v12 + v11);
    v13 = *(v3 + 64);
    *(v3 + 56) += *(a2 + 56);
    result = memcpy((v13 + 4 * v12), *(a2 + 64), 4 * *(a2 + 56));
  }

  v14 = *(a2 + 72);
  if (v14)
  {
    v15 = *(v3 + 72);
    sub_2762A9574((v3 + 72), v15 + v14);
    v16 = *(v3 + 80);
    *(v3 + 72) += *(a2 + 72);
    result = memcpy((v16 + 8 * v15), *(a2 + 80), 8 * *(a2 + 72));
  }

  v17 = *(a2 + 16);
  if ((v17 & 3) != 0)
  {
    if (v17)
    {
      *(v3 + 16) |= 1u;
      v18 = *(v3 + 88);
      if (!v18)
      {
        v19 = *(v3 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = sub_276476600(v19);
        *(v3 + 88) = v18;
      }

      if (*(a2 + 88))
      {
        v20 = *(a2 + 88);
      }

      else
      {
        v20 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v18, v20);
    }

    if ((v17 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v21 = *(v3 + 96);
      if (!v21)
      {
        v22 = *(v3 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x277C97B90](v22);
        *(v3 + 96) = v21;
      }

      if (*(a2 + 96))
      {
        v23 = *(a2 + 96);
      }

      else
      {
        v23 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v21, v23);
    }
  }

  return result;
}

uint64_t *sub_276463D44(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276463094(result);

    return sub_276463A88(v4, a2);
  }

  return result;
}

uint64_t sub_276463D90(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_27644DF5C(*(a1 + 88));
  if (result)
  {
    if ((*(a1 + 16) & 2) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 96));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_276463E20(uint64_t *a1)
{
  sub_276463E54(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_276463E54(uint64_t *result)
{
  if (result != &qword_2812F1EB0)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x277C97740]();
      MEMORY[0x277C98580](v2, 0x10A1C40DFBAE579);
    }

    v3 = v1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C98580]();
    }

    v4 = v1[5];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C98580]();
    }

    result = v1[6];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276463F0C(uint64_t *a1)
{
  sub_276463E20(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276463F4C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
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
    result = TSP::Reference::Clear(v1[4]);
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

  result = TSS::ApplyThemeChildCommandArchive::Clear(result[3]);
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
  result = TSP::Reference::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = TSP::Reference::Clear(v1[6]);
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_276463FE4(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while ((sub_2763D4D98(a3, &v25) & 1) == 0)
  {
    v5 = (v25 + 1);
    v6 = *v25;
    if ((*v25 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v25 + 2);
LABEL_6:
      v25 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v7 - 128));
    v25 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v23;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_38;
        }

        *(a1 + 16) |= 4u;
        v10 = *(a1 + 40);
        if (v10)
        {
          goto LABEL_37;
        }

        v19 = *(a1 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v20 = MEMORY[0x277C97B90](v19);
        LODWORD(v10) = v20;
        *(a1 + 40) = v20;
      }

      else
      {
        if (v8 != 4 || v6 != 34)
        {
          goto LABEL_38;
        }

        *(a1 + 16) |= 8u;
        v10 = *(a1 + 48);
        if (v10)
        {
          goto LABEL_37;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C97B90](v13);
        LODWORD(v10) = v14;
        *(a1 + 48) = v14;
      }

LABEL_36:
      v5 = v25;
LABEL_37:
      v18 = sub_2764ADCBC(a3, v10, v5);
      goto LABEL_45;
    }

    if (v8 != 1)
    {
      if (v8 != 2 || v6 != 18)
      {
LABEL_38:
        if (v6)
        {
          v21 = (v6 & 7) == 4;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          *(a3 + 80) = v6 - 1;
          return v25;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_45;
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

        v12 = MEMORY[0x277C97B90](v11);
        LODWORD(v10) = v12;
        *(a1 + 32) = v12;
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    if (v6 != 10)
    {
      goto LABEL_38;
    }

    *(a1 + 16) |= 1u;
    v15 = *(a1 + 24);
    if (!v15)
    {
      v16 = *(a1 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C97BB0](v16);
      LODWORD(v15) = v17;
      *(a1 + 24) = v17;
      v5 = v25;
    }

    v18 = sub_2764AF4D0(a3, v15, v5);
LABEL_45:
    v25 = v18;
    if (!v18)
    {
      return 0;
    }
  }

  return v25;
}

unsigned __int8 *sub_276464230(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
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

    a2 = TSS::ApplyThemeChildCommandArchive::_InternalSerialize(v6, v8, a3);
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

  v12 = *(a1 + 32);
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
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
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
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(a1 + 48);
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
  }

LABEL_46:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764644F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v4 = TSS::ApplyThemeChildCommandArchive::ByteSizeLong(*(a1 + 24));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_27646458C(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v4 = sub_2764644F8(a1);
  }

  else
  {
    v2 = TSS::ApplyThemeChildCommandArchive::ByteSizeLong(*(a1 + 24));
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v5 = *(a1 + 16);
  if ((v5 & 0xC) != 0)
  {
    if ((v5 & 4) != 0)
    {
      v6 = TSP::Reference::ByteSizeLong(*(a1 + 40));
      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v5 & 8) != 0)
    {
      v7 = TSP::Reference::ByteSizeLong(*(a1 + 48));
      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_2764646D0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885272C0, 0);
  if (v4)
  {

    return sub_276464778(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276464778(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
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

        v6 = MEMORY[0x277C97BB0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80BE8];
      }

      result = TSS::ApplyThemeChildCommandArchive::MergeFrom(v6, v8);
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

        v10 = MEMORY[0x277C97B90](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = v9;
      }

      result = TSP::Reference::MergeFrom(v10, v12);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          return result;
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

      v13 = MEMORY[0x277C97B90](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = v9;
    }

    result = TSP::Reference::MergeFrom(v13, v15);
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

        v16 = MEMORY[0x277C97B90](v17);
        *(v3 + 48) = v16;
      }

      if (*(a2 + 48))
      {
        v18 = *(a2 + 48);
      }

      else
      {
        v18 = v9;
      }

      return TSP::Reference::MergeFrom(v16, v18);
    }
  }

  return result;
}

uint64_t *sub_27646490C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276463F4C(result);

    return sub_2764646D0(v4, a2);
  }

  return result;
}

uint64_t sub_276464958(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  result = TSS::ApplyThemeChildCommandArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 32));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 40));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = TSP::Reference::IsInitialized(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_276464A18(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885260C8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 72) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  if (atomic_load_explicit(dword_2812EDBB8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 128) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 132) = 1;
  return a1;
}

void sub_276464ABC(_Unwind_Exception *a1)
{
  sub_276477A60(v3);
  sub_276477A60(v2);
  sub_276477A60(v1);
  _Unwind_Resume(a1);
}

void *sub_276464AEC(void *a1)
{
  sub_276464B44(a1);
  sub_2763941F4(a1 + 1);
  sub_276477A60(a1 + 9);
  sub_276477A60(a1 + 6);
  sub_276477A60(a1 + 3);
  return a1;
}

void *sub_276464B44(void *result)
{
  if (result != &unk_2812F1EE8)
  {
    v1 = result;
    v2 = result[12];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[13];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[14];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C98580]();
    }

    result = v1[15];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276464BFC(void *a1)
{
  sub_276464AEC(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276464C3C(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_27644E1A4(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (v1[8] + 8);
    do
    {
      v7 = *v6++;
      result = sub_27644E1A4(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 20);
  if (v8 >= 1)
  {
    v9 = (v1[11] + 8);
    do
    {
      v10 = *v9++;
      result = sub_27644E1A4(v10);
      --v8;
    }

    while (v8);
    *(v1 + 20) = 0;
  }

  v11 = *(v1 + 4);
  if ((v11 & 0xF) == 0)
  {
    goto LABEL_19;
  }

  if ((v11 & 1) == 0)
  {
    if ((v11 & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    result = TSP::Reference::Clear(v1[13]);
    if ((v11 & 4) == 0)
    {
LABEL_17:
      if ((v11 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_25;
  }

  result = sub_27644C464(v1[12]);
  if ((v11 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((v11 & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_25:
  result = TSP::Reference::Clear(v1[14]);
  if ((v11 & 8) != 0)
  {
LABEL_18:
    result = TSP::Reference::Clear(v1[15]);
  }

LABEL_19:
  v13 = *(v1 + 8);
  v12 = v1 + 1;
  *(v12 + 60) = 0;
  *(v12 + 31) = 1;
  *(v12 + 2) = 0;
  if (v13)
  {

    return sub_2763D4FD4(v12);
  }

  return result;
}

google::protobuf::internal *sub_276464D64(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v62 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v62) & 1) == 0)
  {
    while (1)
    {
      v7 = (v62 + 1);
      v8 = *v62;
      if ((*v62 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v62, (v9 - 128));
      v62 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_122;
      }

      v7 = TagFallback;
      v8 = v35;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 5)
      {
        if (v8 >> 3 > 7)
        {
          if (v10 != 8)
          {
            if (v10 == 9)
            {
              if (v8 != 74)
              {
                goto LABEL_104;
              }

              *(a1 + 16) |= 8u;
              v42 = *(a1 + 120);
              if (v42)
              {
                goto LABEL_103;
              }

              v55 = *(a1 + 8);
              if (v55)
              {
                v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
              }

              v56 = MEMORY[0x277C97B90](v55);
              LODWORD(v42) = v56;
              *(a1 + 120) = v56;
              goto LABEL_102;
            }

            if (v10 != 10 || v8 != 82)
            {
              goto LABEL_104;
            }

            v14 = (v7 - 1);
            while (2)
            {
              v15 = (v14 + 1);
              v62 = (v14 + 1);
              v16 = *(a1 + 88);
              if (!v16)
              {
LABEL_24:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                v16 = *(a1 + 88);
                v17 = *v16;
                goto LABEL_25;
              }

              v21 = *(a1 + 80);
              v17 = *v16;
              if (v21 >= *v16)
              {
                if (v17 == *(a1 + 84))
                {
                  goto LABEL_24;
                }

LABEL_25:
                *v16 = v17 + 1;
                v18 = sub_276474FF8(*(a1 + 72));
                v19 = *(a1 + 80);
                v20 = *(a1 + 88) + 8 * v19;
                *(a1 + 80) = v19 + 1;
                *(v20 + 8) = v18;
                v15 = v62;
              }

              else
              {
                *(a1 + 80) = v21 + 1;
                v18 = *&v16[2 * v21 + 2];
              }

              v14 = sub_2764AE560(a3, v18, v15);
              v62 = v14;
              if (!v14)
              {
                goto LABEL_122;
              }

              if (*a3 <= v14 || *v14 != 82)
              {
                goto LABEL_112;
              }

              continue;
            }
          }

          if (v8 != 66)
          {
            goto LABEL_104;
          }

          v45 = (v7 - 1);
          while (2)
          {
            v46 = (v45 + 1);
            v62 = (v45 + 1);
            v47 = *(a1 + 64);
            if (!v47)
            {
LABEL_82:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
              v47 = *(a1 + 64);
              v48 = *v47;
              goto LABEL_83;
            }

            v52 = *(a1 + 56);
            v48 = *v47;
            if (v52 >= *v47)
            {
              if (v48 == *(a1 + 60))
              {
                goto LABEL_82;
              }

LABEL_83:
              *v47 = v48 + 1;
              v49 = sub_276474FF8(*(a1 + 48));
              v50 = *(a1 + 56);
              v51 = *(a1 + 64) + 8 * v50;
              *(a1 + 56) = v50 + 1;
              *(v51 + 8) = v49;
              v46 = v62;
            }

            else
            {
              *(a1 + 56) = v52 + 1;
              v49 = *&v47[2 * v52 + 2];
            }

            v45 = sub_2764AE560(a3, v49, v46);
            v62 = v45;
            if (!v45)
            {
              goto LABEL_122;
            }

            if (*a3 <= v45 || *v45 != 66)
            {
              goto LABEL_112;
            }

            continue;
          }
        }

        if (v10 == 6)
        {
          if (v8 != 48)
          {
            goto LABEL_104;
          }

          v5 |= 0x20u;
          v40 = (v7 + 1);
          v39 = *v7;
          if ((v39 & 0x8000000000000000) == 0)
          {
            goto LABEL_73;
          }

          v41 = *v40;
          v39 = (v41 << 7) + v39 - 128;
          if ((v41 & 0x80000000) == 0)
          {
            v40 = (v7 + 2);
LABEL_73:
            v62 = v40;
            *(a1 + 129) = v39 != 0;
            goto LABEL_112;
          }

          v58 = google::protobuf::internal::VarintParseSlow64(v7, v39);
          v62 = v58;
          *(a1 + 129) = v59 != 0;
          if (!v58)
          {
            goto LABEL_122;
          }

          goto LABEL_112;
        }

        if (v10 != 7 || v8 != 58)
        {
          goto LABEL_104;
        }

        v26 = (v7 - 1);
        while (2)
        {
          v27 = (v26 + 1);
          v62 = (v26 + 1);
          v28 = *(a1 + 40);
          if (!v28)
          {
LABEL_51:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v28 = *(a1 + 40);
            v29 = *v28;
            goto LABEL_52;
          }

          v33 = *(a1 + 32);
          v29 = *v28;
          if (v33 >= *v28)
          {
            if (v29 == *(a1 + 36))
            {
              goto LABEL_51;
            }

LABEL_52:
            *v28 = v29 + 1;
            v30 = sub_276474FF8(*(a1 + 24));
            v31 = *(a1 + 32);
            v32 = *(a1 + 40) + 8 * v31;
            *(a1 + 32) = v31 + 1;
            *(v32 + 8) = v30;
            v27 = v62;
          }

          else
          {
            *(a1 + 32) = v33 + 1;
            v30 = *&v28[2 * v33 + 2];
          }

          v26 = sub_2764AE560(a3, v30, v27);
          v62 = v26;
          if (!v26)
          {
            goto LABEL_122;
          }

          if (*a3 <= v26 || *v26 != 58)
          {
            goto LABEL_112;
          }

          continue;
        }
      }

      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v36 = *(a1 + 96);
            if (!v36)
            {
              v37 = *(a1 + 8);
              if (v37)
              {
                v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
              }

              v36 = sub_276476600(v37);
              *(a1 + 96) = v36;
              v7 = v62;
            }

            v38 = sub_2764AE490(a3, v36, v7);
            goto LABEL_111;
          }

LABEL_104:
          if (v8)
          {
            v57 = (v8 & 7) == 4;
          }

          else
          {
            v57 = 1;
          }

          if (v57)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v38 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_111;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_104;
        }

        v24 = (v7 + 1);
        v23 = *v7;
        if ((v23 & 0x8000000000000000) != 0)
        {
          v25 = *v24;
          v23 = (v25 << 7) + v23 - 128;
          if ((v25 & 0x80000000) == 0)
          {
            v24 = (v7 + 2);
            goto LABEL_43;
          }

          v62 = google::protobuf::internal::VarintParseSlow64(v7, v23);
          if (!v62)
          {
            goto LABEL_122;
          }
        }

        else
        {
LABEL_43:
          v62 = v24;
        }

        if ((v23 - 1) > 2)
        {
          sub_2764AFCF0();
        }

        else
        {
          *(a1 + 16) |= 0x40u;
          *(a1 + 132) = v23;
        }

        goto LABEL_112;
      }

      if (v10 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_104;
        }

        *(a1 + 16) |= 2u;
        v42 = *(a1 + 104);
        if (v42)
        {
          goto LABEL_103;
        }

        v43 = *(a1 + 8);
        if (v43)
        {
          v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
        }

        v44 = MEMORY[0x277C97B90](v43);
        LODWORD(v42) = v44;
        *(a1 + 104) = v44;
LABEL_102:
        v7 = v62;
        goto LABEL_103;
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 4u;
          v42 = *(a1 + 112);
          if (!v42)
          {
            v53 = *(a1 + 8);
            if (v53)
            {
              v53 = *(v53 & 0xFFFFFFFFFFFFFFFELL);
            }

            v54 = MEMORY[0x277C97B90](v53);
            LODWORD(v42) = v54;
            *(a1 + 112) = v54;
            goto LABEL_102;
          }

LABEL_103:
          v38 = sub_2764ADCBC(a3, v42, v7);
LABEL_111:
          v62 = v38;
          if (!v38)
          {
            goto LABEL_122;
          }

          goto LABEL_112;
        }

        goto LABEL_104;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_104;
      }

      v5 |= 0x10u;
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
        v62 = v12;
        *(a1 + 128) = v11 != 0;
        goto LABEL_112;
      }

      v60 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v62 = v60;
      *(a1 + 128) = v61 != 0;
      if (!v60)
      {
LABEL_122:
        v62 = 0;
        goto LABEL_2;
      }

LABEL_112:
      if (sub_2763D4D98(a3, &v62))
      {
        goto LABEL_2;
      }
    }

    v7 = (v62 + 2);
LABEL_6:
    v62 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v62;
}

unsigned __int8 *sub_2764653BC(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v12 = *(a1 + 132);
    *a2 = 16;
    if (v12 > 0x7F)
    {
      a2[1] = v12 | 0x80;
      v13 = v12 >> 7;
      if (v12 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++a2;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(a2 - 1) = v14;
        if ((v5 & 2) != 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        a2[2] = v13;
        a2 += 3;
        if ((v5 & 2) != 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      a2[1] = v12;
      a2 += 2;
      if ((v5 & 2) != 0)
      {
        goto LABEL_29;
      }
    }

LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 96);
  *a2 = 10;
  v7 = *(v6 + 20);
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

  a2 = sub_2764670A4(v6, v8, a3);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v5 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_29:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(a1 + 104);
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
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_49;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(a1 + 112);
  *a2 = 34;
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
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_52;
  }

LABEL_49:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v28 = *(a1 + 128);
  *a2 = 40;
  a2[1] = v28;
  a2 += 2;
  if ((v5 & 0x20) != 0)
  {
LABEL_52:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v29 = *(a1 + 129);
    *a2 = 48;
    a2[1] = v29;
    a2 += 2;
  }

LABEL_55:
  v30 = *(a1 + 32);
  if (v30)
  {
    for (i = 0; i != v30; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v32 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 58;
      v33 = *(v32 + 20);
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

      a2 = sub_27644E5A4(v32, v34, a3);
    }
  }

  v38 = *(a1 + 56);
  if (v38)
  {
    for (j = 0; j != v38; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v40 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 66;
      v41 = *(v40 + 20);
      if (v41 > 0x7F)
      {
        a2[1] = v41 | 0x80;
        v43 = v41 >> 7;
        if (v41 >> 14)
        {
          v42 = a2 + 3;
          do
          {
            *(v42 - 1) = v43 | 0x80;
            v44 = v43 >> 7;
            ++v42;
            v45 = v43 >> 14;
            v43 >>= 7;
          }

          while (v45);
          *(v42 - 1) = v44;
        }

        else
        {
          a2[2] = v43;
          v42 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v41;
        v42 = a2 + 2;
      }

      a2 = sub_27644E5A4(v40, v42, a3);
    }
  }

  if ((v5 & 8) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v46 = *(a1 + 120);
    *a2 = 74;
    v47 = *(v46 + 5);
    if (v47 > 0x7F)
    {
      a2[1] = v47 | 0x80;
      v49 = v47 >> 7;
      if (v47 >> 14)
      {
        v48 = a2 + 3;
        do
        {
          *(v48 - 1) = v49 | 0x80;
          v50 = v49 >> 7;
          ++v48;
          v51 = v49 >> 14;
          v49 >>= 7;
        }

        while (v51);
        *(v48 - 1) = v50;
      }

      else
      {
        a2[2] = v49;
        v48 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v47;
      v48 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v46, v48, a3);
  }

  v52 = *(a1 + 80);
  if (v52)
  {
    for (k = 0; k != v52; ++k)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v54 = *(*(a1 + 88) + 8 * k + 8);
      *a2 = 82;
      v55 = *(v54 + 20);
      if (v55 > 0x7F)
      {
        a2[1] = v55 | 0x80;
        v57 = v55 >> 7;
        if (v55 >> 14)
        {
          v56 = a2 + 3;
          do
          {
            *(v56 - 1) = v57 | 0x80;
            v58 = v57 >> 7;
            ++v56;
            v59 = v57 >> 14;
            v57 >>= 7;
          }

          while (v59);
          *(v56 - 1) = v58;
        }

        else
        {
          a2[2] = v57;
          v56 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v55;
        v56 = a2 + 2;
      }

      a2 = sub_27644E5A4(v54, v56, a3);
    }
  }

  v60 = *(a1 + 8);
  if ((v60 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v60 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764659A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276467344(*(a1 + 96));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
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
      v10 = sub_27644E98C(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  v12 = v5 + v11;
  v13 = *(a1 + 64);
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
      v17 = sub_27644E98C(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(a1 + 80);
  v19 = v12 + v18;
  v20 = *(a1 + 88);
  if (v20)
  {
    v21 = (v20 + 8);
  }

  else
  {
    v21 = 0;
  }

  if (v18)
  {
    v22 = 8 * v18;
    do
    {
      v23 = *v21++;
      v24 = sub_27644E98C(v23);
      v19 += v24 + ((9 * (__clz(v24 | 1) ^ 0x1F) + 73) >> 6);
      v22 -= 8;
    }

    while (v22);
  }

  v25 = *(a1 + 16);
  if ((v25 & 0x7E) != 0)
  {
    if ((v25 & 2) != 0)
    {
      v31 = TSP::Reference::ByteSizeLong(*(a1 + 104));
      v19 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v25 & 4) == 0)
      {
LABEL_25:
        if ((v25 & 8) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    else if ((v25 & 4) == 0)
    {
      goto LABEL_25;
    }

    v32 = TSP::Reference::ByteSizeLong(*(a1 + 112));
    v19 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v25 & 8) == 0)
    {
LABEL_27:
      v19 += ((v25 >> 4) & 2) + ((v25 >> 3) & 2);
      if ((v25 & 0x40) != 0)
      {
        v27 = *(a1 + 132);
        v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
        if (v27 >= 0)
        {
          v29 = v28;
        }

        else
        {
          v29 = 11;
        }

        v19 += v29;
      }

      goto LABEL_32;
    }

LABEL_26:
    v26 = TSP::Reference::ByteSizeLong(*(a1 + 120));
    v19 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_27;
  }

LABEL_32:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v19;
    return v19;
  }
}

uint64_t sub_276465C28(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885272D8, 0);
  if (v4)
  {

    return sub_276465CD0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276465CD0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_276477AE4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_276477AE4(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 80);
  if (v15)
  {
    v16 = *(a2 + 88);
    v17 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 72));
    result = sub_276477AE4(v3 + 72, v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 16);
  if ((v20 & 0x7F) != 0)
  {
    if (v20)
    {
      *(v3 + 16) |= 1u;
      v21 = *(v3 + 96);
      if (!v21)
      {
        v22 = *(v3 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = sub_276476600(v22);
        *(v3 + 96) = v21;
      }

      if (*(a2 + 96))
      {
        v23 = *(a2 + 96);
      }

      else
      {
        v23 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v21, v23);
    }

    v24 = MEMORY[0x277D80A18];
    if ((v20 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v25 = *(v3 + 104);
      if (!v25)
      {
        v26 = *(v3 + 8);
        if (v26)
        {
          v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
        }

        v25 = MEMORY[0x277C97B90](v26);
        *(v3 + 104) = v25;
      }

      if (*(a2 + 104))
      {
        v27 = *(a2 + 104);
      }

      else
      {
        v27 = v24;
      }

      result = TSP::Reference::MergeFrom(v25, v27);
      if ((v20 & 4) == 0)
      {
LABEL_24:
        if ((v20 & 8) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_47;
      }
    }

    else if ((v20 & 4) == 0)
    {
      goto LABEL_24;
    }

    *(v3 + 16) |= 4u;
    v28 = *(v3 + 112);
    if (!v28)
    {
      v29 = *(v3 + 8);
      if (v29)
      {
        v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
      }

      v28 = MEMORY[0x277C97B90](v29);
      *(v3 + 112) = v28;
    }

    if (*(a2 + 112))
    {
      v30 = *(a2 + 112);
    }

    else
    {
      v30 = v24;
    }

    result = TSP::Reference::MergeFrom(v28, v30);
    if ((v20 & 8) == 0)
    {
LABEL_25:
      if ((v20 & 0x10) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_55;
    }

LABEL_47:
    *(v3 + 16) |= 8u;
    v31 = *(v3 + 120);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x277C97B90](v32);
      *(v3 + 120) = v31;
    }

    if (*(a2 + 120))
    {
      v33 = *(a2 + 120);
    }

    else
    {
      v33 = v24;
    }

    result = TSP::Reference::MergeFrom(v31, v33);
    if ((v20 & 0x10) == 0)
    {
LABEL_26:
      if ((v20 & 0x20) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_56;
    }

LABEL_55:
    *(v3 + 128) = *(a2 + 128);
    if ((v20 & 0x20) == 0)
    {
LABEL_27:
      if ((v20 & 0x40) == 0)
      {
LABEL_29:
        *(v3 + 16) |= v20;
        return result;
      }

LABEL_28:
      *(v3 + 132) = *(a2 + 132);
      goto LABEL_29;
    }

LABEL_56:
    *(v3 + 129) = *(a2 + 129);
    if ((v20 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t *sub_276465F9C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276464C3C(result);

    return sub_276465C28(v4, a2);
  }

  return result;
}

uint64_t sub_276465FE8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 32);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    v5 = sub_27644EDD8(*(*(a1 + 40) + 8 * v3));
    v3 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = sub_27644EDD8(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 80);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = sub_27644EDD8(*(*(a1 + 88) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    result = sub_27644DF5C(*(a1 + 96));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 2) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 104));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 4) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 112));
    if (!result)
    {
      return result;
    }

    v12 = *(a1 + 16);
  }

  if ((v12 & 8) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 120));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_276466128(uint64_t *a1)
{
  sub_27646615C(a1);
  sub_2763941F4(a1 + 1);
  return a1;
}

uint64_t *sub_27646615C(uint64_t *result)
{
  if (result != &qword_2812F1F70)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[4];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[5];
    if (v5)
    {
      TSP::Reference::~Reference(v5);
      MEMORY[0x277C98580]();
    }

    result = v1[6];
    if (result)
    {
      sub_2763FFD8C();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_276466220(uint64_t *a1)
{
  sub_276466128(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276466260(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
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
    result = TSP::Reference::Clear(v1[4]);
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

  result = sub_27644C464(result[3]);
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
  result = TSP::Reference::Clear(v1[5]);
  if ((v2 & 8) != 0)
  {
LABEL_6:
    result = sub_2763FFDD0(v1[6]);
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 1;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_2763D4FD4(v3);
  }

  return result;
}

google::protobuf::internal *sub_2764662F8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  while ((sub_2763D4D98(a3, &v24) & 1) == 0)
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
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x277C97B90](v18);
          LODWORD(v10) = v19;
          *(a1 + 40) = v19;
LABEL_37:
          v5 = v24;
        }

LABEL_38:
        v15 = sub_2764ADCBC(a3, v10, v5);
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

        v13 = sub_276406958(v14);
        *(a1 + 48) = v13;
        v5 = v24;
      }

      v15 = sub_2764AF400(a3, v13, v5);
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
            v20 = (v6 & 7) == 4;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            *(a3 + 80) = v6 - 1;
            return v24;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v15 = google::protobuf::internal::UnknownFieldParse();
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

          v12 = MEMORY[0x277C97B90](v11);
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
      v16 = *(a1 + 24);
      if (!v16)
      {
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = sub_276476600(v17);
        *(a1 + 24) = v16;
        v5 = v24;
      }

      v15 = sub_2764AE490(a3, v16, v5);
    }

LABEL_46:
    v24 = v15;
    if (!v15)
    {
      return 0;
    }
  }

  return v24;
}

unsigned __int8 *sub_276466550(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
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

    a2 = sub_2764670A4(v6, v8, a3);
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

  v12 = *(a1 + 32);
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
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
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
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(a1 + 48);
    *a2 = 34;
    v25 = *(v24 + 20);
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

    a2 = sub_2763FFFEC(v24, v26, a3);
  }

LABEL_46:
  v30 = *(a1 + 8);
  if ((v30 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v30 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276466818(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276467344(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v7 = TSP::Reference::ByteSizeLong(*(a1 + 32));
      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
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

    v8 = TSP::Reference::ByteSizeLong(*(a1 + 40));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) != 0)
    {
LABEL_8:
      v5 = sub_276400210(*(a1 + 48));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_9:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_27646695C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885272F0, 0);
  if (v4)
  {

    return sub_276466A04(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276466A04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
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

        v6 = sub_276476600(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v6, v8);
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

        v10 = MEMORY[0x277C97B90](v11);
        *(v3 + 32) = v10;
      }

      if (*(a2 + 32))
      {
        v12 = *(a2 + 32);
      }

      else
      {
        v12 = v9;
      }

      result = TSP::Reference::MergeFrom(v10, v12);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          return result;
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

      v13 = MEMORY[0x277C97B90](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = v9;
    }

    result = TSP::Reference::MergeFrom(v13, v15);
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

        v16 = sub_276406958(v17);
        *(v3 + 48) = v16;
      }

      if (*(a2 + 48))
      {
        v18 = *(a2 + 48);
      }

      else
      {
        v18 = &qword_2812F0190;
      }

      return sub_27640038C(v16, v18);
    }
  }

  return result;
}

uint64_t *sub_276466BA0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276466260(result);

    return sub_27646695C(v4, a2);
  }

  return result;
}

uint64_t sub_276466BEC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_27644DF5C(*(a1 + 24));
  if (result)
  {
    v3 = *(a1 + 16);
    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 32));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 40));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 8) == 0)
    {
      return 1;
    }

    result = sub_2764004DC(*(a1 + 48));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t *sub_276466CA8(uint64_t *a1)
{
  if (a1 != &qword_2812F1FA8)
  {
    if (a1[3])
    {
      v2 = MEMORY[0x277C973A0]();
      MEMORY[0x277C98580](v2, 0x10A1C40C24530F0);
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C98580]();
    }

    if (a1[5])
    {
      v4 = MEMORY[0x277C97640]();
      MEMORY[0x277C98580](v4, 0x10A1C40290C9B23);
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276466D4C(uint64_t *a1)
{
  sub_276466CA8(a1);

  JUMPOUT(0x277C98580);
}

google::protobuf::internal *sub_276466D8C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v35 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v35) & 1) == 0)
  {
    while (1)
    {
      v7 = (v35 + 1);
      v8 = *v35;
      if ((*v35 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v35, (v9 - 128));
      v35 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_61;
      }

      v7 = TagFallback;
      v8 = v30;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_44;
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

            v27 = MEMORY[0x277C97AF0](v26);
            LODWORD(v25) = v27;
            *(a1 + 24) = v27;
            v7 = v35;
          }

          v18 = sub_2764AF5A0(a3, v25, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_44;
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

            v17 = MEMORY[0x277C97B90](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
            v7 = v35;
          }

          v18 = sub_2764ADCBC(a3, v15, v7);
        }

LABEL_51:
        v35 = v18;
        if (!v18)
        {
          goto LABEL_61;
        }

        goto LABEL_52;
      }

      if (v10 == 3)
      {
        if (v8 != 24)
        {
          goto LABEL_44;
        }

        v5 |= 8u;
        v20 = (v7 + 1);
        v19 = *v7;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_31;
        }

        v21 = *v20;
        v19 = (v21 << 7) + v19 - 128;
        if ((v21 & 0x80000000) == 0)
        {
          v20 = (v7 + 2);
LABEL_31:
          v35 = v20;
          *(a1 + 48) = v19 != 0;
          goto LABEL_52;
        }

        v31 = google::protobuf::internal::VarintParseSlow64(v7, v19);
        v35 = v31;
        *(a1 + 48) = v32 != 0;
        if (!v31)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v10 == 4)
        {
          if (v8 == 34)
          {
            *(a1 + 16) |= 4u;
            v22 = *(a1 + 40);
            if (!v22)
            {
              v23 = *(a1 + 8);
              if (v23)
              {
                v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
              }

              v24 = MEMORY[0x277C97B80](v23);
              LODWORD(v22) = v24;
              *(a1 + 40) = v24;
              v7 = v35;
            }

            v18 = sub_2764AF670(a3, v22, v7);
            goto LABEL_51;
          }

LABEL_44:
          if (v8)
          {
            v28 = (v8 & 7) == 4;
          }

          else
          {
            v28 = 1;
          }

          if (v28)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_2763D4E10((a1 + 8));
          }

          v18 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_51;
        }

        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_44;
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
          v35 = v12;
          *(a1 + 49) = v11 != 0;
          goto LABEL_52;
        }

        v33 = google::protobuf::internal::VarintParseSlow64(v7, v11);
        v35 = v33;
        *(a1 + 49) = v34 != 0;
        if (!v33)
        {
LABEL_61:
          v35 = 0;
          goto LABEL_2;
        }
      }

LABEL_52:
      if (sub_2763D4D98(a3, &v35))
      {
        goto LABEL_2;
      }
    }

    v7 = (v35 + 2);
LABEL_6:
    v35 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v35;
}

unsigned __int8 *sub_2764670A4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
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
      if ((v5 & 8) == 0)
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

  v12 = *(a1 + 32);
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
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 48);
  *a2 = 24;
  a2[1] = v18;
  a2 += 2;
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(a1 + 40);
  *a2 = 34;
  v20 = *(v19 + 10);
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

  a2 = TSP::UUIDPath::_InternalSerialize(v19, v21, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_40:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(a1 + 49);
    *a2 = 40;
    a2[1] = v25;
    a2 += 2;
  }

LABEL_43:
  v26 = *(a1 + 8);
  if ((v26 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
}