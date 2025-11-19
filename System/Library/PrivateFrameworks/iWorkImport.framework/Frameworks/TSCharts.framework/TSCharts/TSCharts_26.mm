uint64_t sub_276467344(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = TSK::CommandArchive::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0x1E) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = TSP::Reference::ByteSizeLong(*(a1 + 32));
      v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 4) != 0)
    {
      v6 = TSP::UUIDPath::ByteSizeLong(*(a1 + 40));
      v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += ((v2 >> 3) & 2) + ((v2 >> 2) & 2);
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

uint64_t sub_276467464(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527308, 0);
  if (v4)
  {

    return sub_27644DC54(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t *sub_27646750C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27644C464(result);

    return sub_276467464(v4, a2);
  }

  return result;
}

void *sub_276467594(void *a1, uint64_t a2)
{
  *a1 = &unk_2885262D8;
  a1[1] = a2;
  a1[2] = 0;
  a1[3] = a2;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = a2;
  a1[7] = 0;
  a1[8] = 0;
  a1[9] = a2;
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = a2;
  a1[13] = 0;
  a1[14] = 0;
  a1[15] = a2;
  a1[30] = a2;
  a1[16] = 0;
  a1[17] = 0;
  a1[18] = a2;
  a1[19] = 0;
  a1[20] = 0;
  a1[21] = a2;
  a1[22] = 0;
  a1[23] = 0;
  a1[24] = a2;
  a1[27] = a2;
  a1[25] = 0;
  a1[26] = 0;
  a1[28] = 0;
  a1[29] = 0;
  a1[31] = 0;
  a1[32] = 0;
  a1[33] = a2;
  a1[36] = a2;
  a1[34] = 0;
  a1[35] = 0;
  a1[37] = 0;
  a1[38] = 0;
  if (atomic_load_explicit(dword_2812EDF08, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[39] = 0;
  a1[40] = 0;
  return a1;
}

void sub_2764676C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *a10, void *a11, void *a12)
{
  sub_27647791C(v14);
  sub_27647791C(v13);
  sub_27647791C(v20);
  sub_27647791C(v12);
  sub_27647791C(v17);
  sub_27647791C(v16);
  sub_276477F70(v15);
  sub_276477F70(v19);
  sub_276477F70(v18);
  sub_276477F70(a10);
  sub_27647800C(a11);
  sub_27647800C(a12);
  _Unwind_Resume(a1);
}

void *sub_276467760(void *a1)
{
  if (a1 != qword_2812F1FE0)
  {
    v2 = a1[39];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }
  }

  sub_2763941F4(a1 + 1);
  sub_27647791C(a1 + 36);
  sub_27647791C(a1 + 33);
  sub_27647791C(a1 + 30);
  sub_27647791C(a1 + 27);
  sub_27647791C(a1 + 24);
  sub_27647791C(a1 + 21);
  sub_276477F70(a1 + 18);
  sub_276477F70(a1 + 15);
  sub_276477F70(a1 + 12);
  sub_276477F70(a1 + 9);
  sub_27647800C(a1 + 6);
  sub_27647800C(a1 + 3);
  return a1;
}

void sub_276467854(void *a1)
{
  sub_276467760(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276467894(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 40) + 8);
    do
    {
      v4 = *v3++;
      sub_27640567C(v4);
      --v2;
    }

    while (v2);
    *(a1 + 32) = 0;
  }

  v5 = *(a1 + 56);
  if (v5 >= 1)
  {
    v6 = (*(a1 + 64) + 8);
    do
    {
      v7 = *v6++;
      sub_27640567C(v7);
      --v5;
    }

    while (v5);
    *(a1 + 56) = 0;
  }

  sub_2764778D0(a1 + 72);
  sub_2764778D0(a1 + 96);
  sub_2764778D0(a1 + 120);
  result = sub_2764778D0(a1 + 144);
  v9 = *(a1 + 176);
  if (v9 >= 1)
  {
    v10 = (*(a1 + 184) + 8);
    do
    {
      v11 = *v10++;
      result = TSP::UUID::Clear(v11);
      --v9;
    }

    while (v9);
    *(a1 + 176) = 0;
  }

  v12 = *(a1 + 200);
  if (v12 >= 1)
  {
    v13 = (*(a1 + 208) + 8);
    do
    {
      v14 = *v13++;
      result = TSP::UUID::Clear(v14);
      --v12;
    }

    while (v12);
    *(a1 + 200) = 0;
  }

  v15 = *(a1 + 224);
  if (v15 >= 1)
  {
    v16 = (*(a1 + 232) + 8);
    do
    {
      v17 = *v16++;
      result = TSP::UUID::Clear(v17);
      --v15;
    }

    while (v15);
    *(a1 + 224) = 0;
  }

  v18 = *(a1 + 248);
  if (v18 >= 1)
  {
    v19 = (*(a1 + 256) + 8);
    do
    {
      v20 = *v19++;
      result = TSP::UUID::Clear(v20);
      --v18;
    }

    while (v18);
    *(a1 + 248) = 0;
  }

  v21 = *(a1 + 272);
  if (v21 >= 1)
  {
    v22 = (*(a1 + 280) + 8);
    do
    {
      v23 = *v22++;
      result = TSP::UUID::Clear(v23);
      --v21;
    }

    while (v21);
    *(a1 + 272) = 0;
  }

  v24 = *(a1 + 296);
  if (v24 >= 1)
  {
    v25 = (*(a1 + 304) + 8);
    do
    {
      v26 = *v25++;
      result = TSP::UUID::Clear(v26);
      --v24;
    }

    while (v24);
    *(a1 + 296) = 0;
  }

  v27 = *(a1 + 16);
  if (v27)
  {
    result = sub_27644C464(*(a1 + 312));
  }

  if ((v27 & 6) != 0)
  {
    *(a1 + 320) = 0;
  }

  v29 = *(a1 + 8);
  v28 = a1 + 8;
  *(v28 + 8) = 0;
  if (v29)
  {

    return sub_2763D4FD4(v28);
  }

  return result;
}

google::protobuf::internal *sub_276467A68(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v124 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v124) & 1) == 0)
  {
    while (2)
    {
      v7 = (v124 + 1);
      v8 = *v124;
      if (*v124 < 0)
      {
        v9 = v8 + (*v7 << 7);
        v8 = v9 - 128;
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v124, (v9 - 128));
          v124 = TagFallback;
          if (!TagFallback)
          {
            goto LABEL_195;
          }

          v7 = TagFallback;
          v8 = v14;
LABEL_7:
          switch(v8 >> 3)
          {
            case 1u:
              if (v8 != 10)
              {
                goto LABEL_182;
              }

              *(a1 + 16) |= 1u;
              v10 = *(a1 + 312);
              if (!v10)
              {
                v11 = *(a1 + 8);
                if (v11)
                {
                  v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
                }

                v10 = sub_276476600(v11);
                *(a1 + 312) = v10;
                v7 = v124;
              }

              v12 = sub_2764AE490(a3, v10, v7);
              goto LABEL_189;
            case 4u:
              if (v8 != 34)
              {
                goto LABEL_182;
              }

              v60 = (v7 - 1);
              while (1)
              {
                v61 = (v60 + 1);
                v124 = (v60 + 1);
                v62 = *(a1 + 40);
                if (!v62)
                {
                  goto LABEL_89;
                }

                v67 = *(a1 + 32);
                v63 = *v62;
                if (v67 < *v62)
                {
                  *(a1 + 32) = v67 + 1;
                  v64 = *&v62[2 * v67 + 2];
                  goto LABEL_93;
                }

                if (v63 == *(a1 + 36))
                {
LABEL_89:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
                  v62 = *(a1 + 40);
                  v63 = *v62;
                }

                *v62 = v63 + 1;
                v64 = sub_276407088(*(a1 + 24));
                v65 = *(a1 + 32);
                v66 = *(a1 + 40) + 8 * v65;
                *(a1 + 32) = v65 + 1;
                *(v66 + 8) = v64;
                v61 = v124;
LABEL_93:
                v60 = sub_2764AF330(a3, v64, v61);
                v124 = v60;
                if (!v60)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v60 || *v60 != 34)
                {
                  goto LABEL_190;
                }
              }

            case 5u:
              if (v8 != 42)
              {
                goto LABEL_182;
              }

              v36 = (v7 - 1);
              while (1)
              {
                v37 = (v36 + 1);
                v124 = (v36 + 1);
                v38 = *(a1 + 64);
                if (!v38)
                {
                  goto LABEL_50;
                }

                v43 = *(a1 + 56);
                v39 = *v38;
                if (v43 < *v38)
                {
                  *(a1 + 56) = v43 + 1;
                  v40 = *&v38[2 * v43 + 2];
                  goto LABEL_54;
                }

                if (v39 == *(a1 + 60))
                {
LABEL_50:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
                  v38 = *(a1 + 64);
                  v39 = *v38;
                }

                *v38 = v39 + 1;
                v40 = sub_276407088(*(a1 + 48));
                v41 = *(a1 + 56);
                v42 = *(a1 + 64) + 8 * v41;
                *(a1 + 56) = v41 + 1;
                *(v42 + 8) = v40;
                v37 = v124;
LABEL_54:
                v36 = sub_2764AF330(a3, v40, v37);
                v124 = v36;
                if (!v36)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v36 || *v36 != 42)
                {
                  goto LABEL_190;
                }
              }

            case 6u:
              if (v8 != 50)
              {
                goto LABEL_182;
              }

              v87 = v7 - 1;
              while (1)
              {
                v124 = (v87 + 1);
                v88 = *(a1 + 88);
                if (!v88)
                {
                  goto LABEL_137;
                }

                v89 = *(a1 + 80);
                v90 = *v88;
                if (v89 >= *v88)
                {
                  break;
                }

                *(a1 + 80) = v89 + 1;
LABEL_139:
                v87 = google::protobuf::internal::InlineGreedyStringParser();
                v124 = v87;
                if (!v87)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v87 || *v87 != 50)
                {
                  goto LABEL_190;
                }
              }

              if (v90 == *(a1 + 84))
              {
LABEL_137:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72));
                v88 = *(a1 + 88);
                v90 = *v88;
              }

              *v88 = v90 + 1;
              v91 = sub_276380DF4(*(a1 + 72));
              v92 = *(a1 + 80);
              v93 = *(a1 + 88) + 8 * v92;
              *(a1 + 80) = v92 + 1;
              *(v93 + 8) = v91;
              goto LABEL_139;
            case 7u:
              if (v8 != 58)
              {
                goto LABEL_182;
              }

              v94 = v7 - 1;
              while (1)
              {
                v124 = (v94 + 1);
                v95 = *(a1 + 112);
                if (!v95)
                {
                  goto LABEL_150;
                }

                v96 = *(a1 + 104);
                v97 = *v95;
                if (v96 >= *v95)
                {
                  break;
                }

                *(a1 + 104) = v96 + 1;
LABEL_152:
                v94 = google::protobuf::internal::InlineGreedyStringParser();
                v124 = v94;
                if (!v94)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v94 || *v94 != 58)
                {
                  goto LABEL_190;
                }
              }

              if (v97 == *(a1 + 108))
              {
LABEL_150:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 96));
                v95 = *(a1 + 112);
                v97 = *v95;
              }

              *v95 = v97 + 1;
              v98 = sub_276380DF4(*(a1 + 96));
              v99 = *(a1 + 104);
              v100 = *(a1 + 112) + 8 * v99;
              *(a1 + 104) = v99 + 1;
              *(v100 + 8) = v98;
              goto LABEL_152;
            case 8u:
              if (v8 != 66)
              {
                goto LABEL_182;
              }

              v44 = v7 - 1;
              while (1)
              {
                v124 = (v44 + 1);
                v45 = *(a1 + 136);
                if (!v45)
                {
                  goto LABEL_67;
                }

                v46 = *(a1 + 128);
                v47 = *v45;
                if (v46 >= *v45)
                {
                  break;
                }

                *(a1 + 128) = v46 + 1;
LABEL_69:
                v44 = google::protobuf::internal::InlineGreedyStringParser();
                v124 = v44;
                if (!v44)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v44 || *v44 != 66)
                {
                  goto LABEL_190;
                }
              }

              if (v47 == *(a1 + 132))
              {
LABEL_67:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 120));
                v45 = *(a1 + 136);
                v47 = *v45;
              }

              *v45 = v47 + 1;
              v48 = sub_276380DF4(*(a1 + 120));
              v49 = *(a1 + 128);
              v50 = *(a1 + 136) + 8 * v49;
              *(a1 + 128) = v49 + 1;
              *(v50 + 8) = v48;
              goto LABEL_69;
            case 9u:
              if (v8 != 74)
              {
                goto LABEL_182;
              }

              v68 = v7 - 1;
              while (1)
              {
                v124 = (v68 + 1);
                v69 = *(a1 + 160);
                if (!v69)
                {
                  goto LABEL_106;
                }

                v70 = *(a1 + 152);
                v71 = *v69;
                if (v70 >= *v69)
                {
                  break;
                }

                *(a1 + 152) = v70 + 1;
LABEL_108:
                v68 = google::protobuf::internal::InlineGreedyStringParser();
                v124 = v68;
                if (!v68)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v68 || *v68 != 74)
                {
                  goto LABEL_190;
                }
              }

              if (v71 == *(a1 + 156))
              {
LABEL_106:
                google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 144));
                v69 = *(a1 + 160);
                v71 = *v69;
              }

              *v69 = v71 + 1;
              v72 = sub_276380DF4(*(a1 + 144));
              v73 = *(a1 + 152);
              v74 = *(a1 + 160) + 8 * v73;
              *(a1 + 152) = v73 + 1;
              *(v74 + 8) = v72;
              goto LABEL_108;
            case 0xAu:
              if (v8 != 82)
              {
                goto LABEL_182;
              }

              v75 = v7 - 1;
              while (1)
              {
                v76 = (v75 + 1);
                v124 = (v75 + 1);
                v77 = *(a1 + 184);
                if (!v77)
                {
                  goto LABEL_115;
                }

                v83 = *(a1 + 176);
                v78 = *v77;
                if (v83 < *v77)
                {
                  *(a1 + 176) = v83 + 1;
                  v80 = *&v77[2 * v83 + 2];
                  goto LABEL_119;
                }

                if (v78 == *(a1 + 180))
                {
LABEL_115:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 168));
                  v77 = *(a1 + 184);
                  v78 = *v77;
                }

                *v77 = v78 + 1;
                v79 = MEMORY[0x277C97B40](*(a1 + 168));
                LODWORD(v80) = v79;
                v81 = *(a1 + 176);
                v82 = *(a1 + 184) + 8 * v81;
                *(a1 + 176) = v81 + 1;
                *(v82 + 8) = v79;
                v76 = v124;
LABEL_119:
                v75 = sub_2764AE3C0(a3, v80, v76);
                v124 = v75;
                if (!v75)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v75 || *v75 != 82)
                {
                  goto LABEL_190;
                }
              }

            case 0xBu:
              if (v8 != 90)
              {
                goto LABEL_182;
              }

              v110 = v7 - 1;
              while (1)
              {
                v111 = (v110 + 1);
                v124 = (v110 + 1);
                v112 = *(a1 + 208);
                if (!v112)
                {
                  goto LABEL_172;
                }

                v118 = *(a1 + 200);
                v113 = *v112;
                if (v118 < *v112)
                {
                  *(a1 + 200) = v118 + 1;
                  v115 = *&v112[2 * v118 + 2];
                  goto LABEL_176;
                }

                if (v113 == *(a1 + 204))
                {
LABEL_172:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 192));
                  v112 = *(a1 + 208);
                  v113 = *v112;
                }

                *v112 = v113 + 1;
                v114 = MEMORY[0x277C97B40](*(a1 + 192));
                LODWORD(v115) = v114;
                v116 = *(a1 + 200);
                v117 = *(a1 + 208) + 8 * v116;
                *(a1 + 200) = v116 + 1;
                *(v117 + 8) = v114;
                v111 = v124;
LABEL_176:
                v110 = sub_2764AE3C0(a3, v115, v111);
                v124 = v110;
                if (!v110)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v110 || *v110 != 90)
                {
                  goto LABEL_190;
                }
              }

            case 0xCu:
              if (v8 != 98)
              {
                goto LABEL_182;
              }

              v101 = v7 - 1;
              while (1)
              {
                v102 = (v101 + 1);
                v124 = (v101 + 1);
                v103 = *(a1 + 232);
                if (!v103)
                {
                  goto LABEL_159;
                }

                v109 = *(a1 + 224);
                v104 = *v103;
                if (v109 < *v103)
                {
                  *(a1 + 224) = v109 + 1;
                  v106 = *&v103[2 * v109 + 2];
                  goto LABEL_163;
                }

                if (v104 == *(a1 + 228))
                {
LABEL_159:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 216));
                  v103 = *(a1 + 232);
                  v104 = *v103;
                }

                *v103 = v104 + 1;
                v105 = MEMORY[0x277C97B40](*(a1 + 216));
                LODWORD(v106) = v105;
                v107 = *(a1 + 224);
                v108 = *(a1 + 232) + 8 * v107;
                *(a1 + 224) = v107 + 1;
                *(v108 + 8) = v105;
                v102 = v124;
LABEL_163:
                v101 = sub_2764AE3C0(a3, v106, v102);
                v124 = v101;
                if (!v101)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v101 || *v101 != 98)
                {
                  goto LABEL_190;
                }
              }

            case 0xDu:
              if (v8 != 106)
              {
                goto LABEL_182;
              }

              v18 = v7 - 1;
              while (1)
              {
                v19 = (v18 + 1);
                v124 = (v18 + 1);
                v20 = *(a1 + 256);
                if (!v20)
                {
                  goto LABEL_24;
                }

                v26 = *(a1 + 248);
                v21 = *v20;
                if (v26 < *v20)
                {
                  *(a1 + 248) = v26 + 1;
                  v23 = *&v20[2 * v26 + 2];
                  goto LABEL_28;
                }

                if (v21 == *(a1 + 252))
                {
LABEL_24:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 240));
                  v20 = *(a1 + 256);
                  v21 = *v20;
                }

                *v20 = v21 + 1;
                v22 = MEMORY[0x277C97B40](*(a1 + 240));
                LODWORD(v23) = v22;
                v24 = *(a1 + 248);
                v25 = *(a1 + 256) + 8 * v24;
                *(a1 + 248) = v24 + 1;
                *(v25 + 8) = v22;
                v19 = v124;
LABEL_28:
                v18 = sub_2764AE3C0(a3, v23, v19);
                v124 = v18;
                if (!v18)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v18 || *v18 != 106)
                {
                  goto LABEL_190;
                }
              }

            case 0xEu:
              if (v8 != 114)
              {
                goto LABEL_182;
              }

              v51 = v7 - 1;
              while (1)
              {
                v52 = (v51 + 1);
                v124 = (v51 + 1);
                v53 = *(a1 + 280);
                if (!v53)
                {
                  goto LABEL_76;
                }

                v59 = *(a1 + 272);
                v54 = *v53;
                if (v59 < *v53)
                {
                  *(a1 + 272) = v59 + 1;
                  v56 = *&v53[2 * v59 + 2];
                  goto LABEL_80;
                }

                if (v54 == *(a1 + 276))
                {
LABEL_76:
                  google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 264));
                  v53 = *(a1 + 280);
                  v54 = *v53;
                }

                *v53 = v54 + 1;
                v55 = MEMORY[0x277C97B40](*(a1 + 264));
                LODWORD(v56) = v55;
                v57 = *(a1 + 272);
                v58 = *(a1 + 280) + 8 * v57;
                *(a1 + 272) = v57 + 1;
                *(v58 + 8) = v55;
                v52 = v124;
LABEL_80:
                v51 = sub_2764AE3C0(a3, v56, v52);
                v124 = v51;
                if (!v51)
                {
                  goto LABEL_195;
                }

                if (*a3 <= v51 || *v51 != 114)
                {
                  goto LABEL_190;
                }
              }

            case 0xFu:
              if (v8 != 122)
              {
                goto LABEL_182;
              }

              v27 = v7 - 1;
              break;
            case 0x10u:
              if (v8 != 128)
              {
                goto LABEL_182;
              }

              v5 |= 2u;
              v16 = (v7 + 1);
              v15 = *v7;
              if ((v15 & 0x8000000000000000) == 0)
              {
                goto LABEL_20;
              }

              v17 = *v16;
              v15 = (v17 << 7) + v15 - 128;
              if (v17 < 0)
              {
                v120 = google::protobuf::internal::VarintParseSlow64(v7, v15);
                v124 = v120;
                *(a1 + 320) = v121 != 0;
                if (!v120)
                {
                  goto LABEL_195;
                }
              }

              else
              {
                v16 = (v7 + 2);
LABEL_20:
                v124 = v16;
                *(a1 + 320) = v15 != 0;
              }

              goto LABEL_190;
            case 0x11u:
              if (v8 != 136)
              {
                goto LABEL_182;
              }

              v5 |= 4u;
              v84 = (v7 + 1);
              LODWORD(v85) = *v7;
              if ((*v7 & 0x80000000) == 0)
              {
                goto LABEL_129;
              }

              v86 = *v84;
              v85 = (v85 + (v86 << 7) - 128);
              if (v86 < 0)
              {
                v122 = google::protobuf::internal::VarintParseSlow32(v7, v85);
                v124 = v122;
                *(a1 + 324) = v123;
                if (!v122)
                {
                  goto LABEL_195;
                }
              }

              else
              {
                v84 = (v7 + 2);
LABEL_129:
                v124 = v84;
                *(a1 + 324) = v85;
              }

              goto LABEL_190;
            default:
LABEL_182:
              if (v8)
              {
                v119 = (v8 & 7) == 4;
              }

              else
              {
                v119 = 1;
              }

              if (v119)
              {
                *(a3 + 80) = v8 - 1;
                goto LABEL_2;
              }

              if ((*(a1 + 8) & 1) == 0)
              {
                sub_2763D4E10((a1 + 8));
              }

              v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_189:
              v124 = v12;
              if (!v12)
              {
LABEL_195:
                v124 = 0;
                goto LABEL_2;
              }

LABEL_190:
              if (sub_2763D4D98(a3, &v124))
              {
                goto LABEL_2;
              }

              continue;
          }

          while (1)
          {
            v28 = (v27 + 1);
            v124 = (v27 + 1);
            v29 = *(a1 + 304);
            if (!v29)
            {
              goto LABEL_37;
            }

            v35 = *(a1 + 296);
            v30 = *v29;
            if (v35 < *v29)
            {
              *(a1 + 296) = v35 + 1;
              v32 = *&v29[2 * v35 + 2];
              goto LABEL_41;
            }

            if (v30 == *(a1 + 300))
            {
LABEL_37:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 288));
              v29 = *(a1 + 304);
              v30 = *v29;
            }

            *v29 = v30 + 1;
            v31 = MEMORY[0x277C97B40](*(a1 + 288));
            LODWORD(v32) = v31;
            v33 = *(a1 + 296);
            v34 = *(a1 + 304) + 8 * v33;
            *(a1 + 296) = v33 + 1;
            *(v34 + 8) = v31;
            v28 = v124;
LABEL_41:
            v27 = sub_2764AE3C0(a3, v32, v28);
            v124 = v27;
            if (!v27)
            {
              goto LABEL_195;
            }

            if (*a3 <= v27 || *v27 != 122)
            {
              goto LABEL_190;
            }
          }
        }

        v7 = (v124 + 2);
      }

      break;
    }

    v124 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v124;
}

unsigned __int8 *sub_276468664(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if (v6)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 312);
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
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v15 = *(*(a1 + 40) + 8 * i + 8);
      *v4 = 34;
      v16 = *(v15 + 40);
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

      v4 = sub_2764058C8(v15, v17, a3);
    }
  }

  v21 = *(a1 + 56);
  if (v21)
  {
    for (j = 0; j != v21; ++j)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v23 = *(*(a1 + 64) + 8 * j + 8);
      *v4 = 42;
      v24 = *(v23 + 40);
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

      v4 = sub_2764058C8(v23, v25, a3);
    }
  }

  v29 = *(a1 + 80);
  if (v29 >= 1)
  {
    v30 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 6, *(*(a1 + 88) + v30), v4);
      v30 += 8;
      --v29;
    }

    while (v29);
  }

  v31 = *(a1 + 104);
  if (v31 >= 1)
  {
    v32 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 7, *(*(a1 + 112) + v32), v4);
      v32 += 8;
      --v31;
    }

    while (v31);
  }

  v33 = *(a1 + 128);
  if (v33 >= 1)
  {
    v34 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 8, *(*(a1 + 136) + v34), v4);
      v34 += 8;
      --v33;
    }

    while (v33);
  }

  v35 = *(a1 + 152);
  if (v35 >= 1)
  {
    v36 = 8;
    do
    {
      v4 = sub_2763E1648(a3, 9, *(*(a1 + 160) + v36), v4);
      v36 += 8;
      --v35;
    }

    while (v35);
  }

  v37 = *(a1 + 176);
  if (v37)
  {
    for (k = 0; k != v37; ++k)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v39 = *(*(a1 + 184) + 8 * k + 8);
      *v4 = 82;
      v40 = *(v39 + 5);
      if (v40 > 0x7F)
      {
        v4[1] = v40 | 0x80;
        v42 = v40 >> 7;
        if (v40 >> 14)
        {
          v41 = v4 + 3;
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
          v4[2] = v42;
          v41 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v40;
        v41 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v39, v41, a3);
    }
  }

  v45 = *(a1 + 200);
  if (v45)
  {
    for (m = 0; m != v45; ++m)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v47 = *(*(a1 + 208) + 8 * m + 8);
      *v4 = 90;
      v48 = *(v47 + 5);
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

      v4 = TSP::UUID::_InternalSerialize(v47, v49, a3);
    }
  }

  v53 = *(a1 + 224);
  if (v53)
  {
    for (n = 0; n != v53; ++n)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v55 = *(*(a1 + 232) + 8 * n + 8);
      *v4 = 98;
      v56 = *(v55 + 5);
      if (v56 > 0x7F)
      {
        v4[1] = v56 | 0x80;
        v58 = v56 >> 7;
        if (v56 >> 14)
        {
          v57 = v4 + 3;
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
          v4[2] = v58;
          v57 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v56;
        v57 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v55, v57, a3);
    }
  }

  v61 = *(a1 + 248);
  if (v61)
  {
    for (ii = 0; ii != v61; ++ii)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v63 = *(*(a1 + 256) + 8 * ii + 8);
      *v4 = 106;
      v64 = *(v63 + 5);
      if (v64 > 0x7F)
      {
        v4[1] = v64 | 0x80;
        v66 = v64 >> 7;
        if (v64 >> 14)
        {
          v65 = v4 + 3;
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
          v4[2] = v66;
          v65 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v64;
        v65 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v63, v65, a3);
    }
  }

  v69 = *(a1 + 272);
  if (v69)
  {
    for (jj = 0; jj != v69; ++jj)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v71 = *(*(a1 + 280) + 8 * jj + 8);
      *v4 = 114;
      v72 = *(v71 + 5);
      if (v72 > 0x7F)
      {
        v4[1] = v72 | 0x80;
        v74 = v72 >> 7;
        if (v72 >> 14)
        {
          v73 = v4 + 3;
          do
          {
            *(v73 - 1) = v74 | 0x80;
            v75 = v74 >> 7;
            ++v73;
            v76 = v74 >> 14;
            v74 >>= 7;
          }

          while (v76);
          *(v73 - 1) = v75;
        }

        else
        {
          v4[2] = v74;
          v73 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v72;
        v73 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v71, v73, a3);
    }
  }

  v77 = *(a1 + 296);
  if (v77)
  {
    for (kk = 0; kk != v77; ++kk)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v79 = *(*(a1 + 304) + 8 * kk + 8);
      *v4 = 122;
      v80 = *(v79 + 5);
      if (v80 > 0x7F)
      {
        v4[1] = v80 | 0x80;
        v82 = v80 >> 7;
        if (v80 >> 14)
        {
          v81 = v4 + 3;
          do
          {
            *(v81 - 1) = v82 | 0x80;
            v83 = v82 >> 7;
            ++v81;
            v84 = v82 >> 14;
            v82 >>= 7;
          }

          while (v84);
          *(v81 - 1) = v83;
        }

        else
        {
          v4[2] = v82;
          v81 = v4 + 3;
        }
      }

      else
      {
        v4[1] = v80;
        v81 = v4 + 2;
      }

      v4 = TSP::UUID::_InternalSerialize(v79, v81, a3);
    }
  }

  if ((v6 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v85 = *(a1 + 320);
    *v4 = 384;
    v4[2] = v85;
    v4 += 3;
  }

  if ((v6 & 4) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v86 = *(a1 + 324);
    *v4 = 392;
    if (v86 > 0x7F)
    {
      v4[2] = v86 | 0x80;
      v87 = v86 >> 7;
      if (v86 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v87 | 0x80;
          v88 = v87 >> 7;
          ++v4;
          v89 = v87 >> 14;
          v87 >>= 7;
        }

        while (v89);
        *(v4 - 1) = v88;
      }

      else
      {
        v4[3] = v87;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v86;
      v4 += 3;
    }
  }

  v90 = *(a1 + 8);
  if ((v90 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v90 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276468EC8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276467344(*(a1 + 312));
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
      v10 = sub_2764059EC(v9);
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
      v17 = sub_2764059EC(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(a1 + 80);
  v19 = v12 + v18;
  if (v18 >= 1)
  {
    v20 = (*(a1 + 88) + 8);
    do
    {
      v21 = *v20++;
      v22 = *(v21 + 23);
      v23 = *(v21 + 8);
      if ((v22 & 0x80u) == 0)
      {
        v23 = v22;
      }

      v19 += v23 + ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6);
      --v18;
    }

    while (v18);
  }

  v24 = *(a1 + 104);
  v25 = v19 + v24;
  if (v24 >= 1)
  {
    v26 = (*(a1 + 112) + 8);
    do
    {
      v27 = *v26++;
      v28 = *(v27 + 23);
      v29 = *(v27 + 8);
      if ((v28 & 0x80u) == 0)
      {
        v29 = v28;
      }

      v25 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
      --v24;
    }

    while (v24);
  }

  v30 = *(a1 + 128);
  v31 = v25 + v30;
  if (v30 >= 1)
  {
    v32 = (*(a1 + 136) + 8);
    do
    {
      v33 = *v32++;
      v34 = *(v33 + 23);
      v35 = *(v33 + 8);
      if ((v34 & 0x80u) == 0)
      {
        v35 = v34;
      }

      v31 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6);
      --v30;
    }

    while (v30);
  }

  v36 = *(a1 + 152);
  v37 = v31 + v36;
  if (v36 >= 1)
  {
    v38 = (*(a1 + 160) + 8);
    do
    {
      v39 = *v38++;
      v40 = *(v39 + 23);
      v41 = *(v39 + 8);
      if ((v40 & 0x80u) == 0)
      {
        v41 = v40;
      }

      v37 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6);
      --v36;
    }

    while (v36);
  }

  v42 = *(a1 + 176);
  v43 = v37 + v42;
  v44 = *(a1 + 184);
  if (v44)
  {
    v45 = (v44 + 8);
  }

  else
  {
    v45 = 0;
  }

  if (v42)
  {
    v46 = 8 * v42;
    do
    {
      v47 = *v45++;
      v48 = TSP::UUID::ByteSizeLong(v47);
      v43 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6);
      v46 -= 8;
    }

    while (v46);
  }

  v49 = *(a1 + 200);
  v50 = v43 + v49;
  v51 = *(a1 + 208);
  if (v51)
  {
    v52 = (v51 + 8);
  }

  else
  {
    v52 = 0;
  }

  if (v49)
  {
    v53 = 8 * v49;
    do
    {
      v54 = *v52++;
      v55 = TSP::UUID::ByteSizeLong(v54);
      v50 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6);
      v53 -= 8;
    }

    while (v53);
  }

  v56 = *(a1 + 224);
  v57 = v50 + v56;
  v58 = *(a1 + 232);
  if (v58)
  {
    v59 = (v58 + 8);
  }

  else
  {
    v59 = 0;
  }

  if (v56)
  {
    v60 = 8 * v56;
    do
    {
      v61 = *v59++;
      v62 = TSP::UUID::ByteSizeLong(v61);
      v57 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6);
      v60 -= 8;
    }

    while (v60);
  }

  v63 = *(a1 + 248);
  v64 = v57 + v63;
  v65 = *(a1 + 256);
  if (v65)
  {
    v66 = (v65 + 8);
  }

  else
  {
    v66 = 0;
  }

  if (v63)
  {
    v67 = 8 * v63;
    do
    {
      v68 = *v66++;
      v69 = TSP::UUID::ByteSizeLong(v68);
      v64 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6);
      v67 -= 8;
    }

    while (v67);
  }

  v70 = *(a1 + 272);
  v71 = v64 + v70;
  v72 = *(a1 + 280);
  if (v72)
  {
    v73 = (v72 + 8);
  }

  else
  {
    v73 = 0;
  }

  if (v70)
  {
    v74 = 8 * v70;
    do
    {
      v75 = *v73++;
      v76 = TSP::UUID::ByteSizeLong(v75);
      v71 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6);
      v74 -= 8;
    }

    while (v74);
  }

  v77 = *(a1 + 296);
  v78 = v71 + v77;
  v79 = *(a1 + 304);
  if (v79)
  {
    v80 = (v79 + 8);
  }

  else
  {
    v80 = 0;
  }

  if (v77)
  {
    v81 = 8 * v77;
    do
    {
      v82 = *v80++;
      v83 = TSP::UUID::ByteSizeLong(v82);
      v78 += v83 + ((9 * (__clz(v83 | 1) ^ 0x1F) + 73) >> 6);
      v81 -= 8;
    }

    while (v81);
  }

  v84 = *(a1 + 16);
  if ((v84 & 6) != 0)
  {
    if ((v84 & 2) != 0)
    {
      v78 += 3;
    }

    if ((v84 & 4) != 0)
    {
      v78 += ((9 * (__clz(*(a1 + 324) | 1) ^ 0x1F) + 73) >> 6) + 2;
    }
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v78;
    return v78;
  }
}

uint64_t sub_276469384(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527320, 0);
  if (v4)
  {

    return sub_27646942C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27646942C(uint64_t result, uint64_t a2)
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
    result = sub_2763F8FE0(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_2763F8FE0(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
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
    result = sub_2763F8F34((v3 + 72), v17, (v16 + 8), v15, **(v3 + 88) - *(v3 + 80));
    v18 = *(v3 + 80) + v15;
    *(v3 + 80) = v18;
    v19 = *(v3 + 88);
    if (*v19 < v18)
    {
      *v19 = v18;
    }
  }

  v20 = *(a2 + 104);
  if (v20)
  {
    v21 = *(a2 + 112);
    v22 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 96));
    result = sub_2763F8F34((v3 + 96), v22, (v21 + 8), v20, **(v3 + 112) - *(v3 + 104));
    v23 = *(v3 + 104) + v20;
    *(v3 + 104) = v23;
    v24 = *(v3 + 112);
    if (*v24 < v23)
    {
      *v24 = v23;
    }
  }

  v25 = *(a2 + 128);
  if (v25)
  {
    v26 = *(a2 + 136);
    v27 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 120));
    result = sub_2763F8F34((v3 + 120), v27, (v26 + 8), v25, **(v3 + 136) - *(v3 + 128));
    v28 = *(v3 + 128) + v25;
    *(v3 + 128) = v28;
    v29 = *(v3 + 136);
    if (*v29 < v28)
    {
      *v29 = v28;
    }
  }

  v30 = *(a2 + 152);
  if (v30)
  {
    v31 = *(a2 + 160);
    v32 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 144));
    result = sub_2763F8F34((v3 + 144), v32, (v31 + 8), v30, **(v3 + 160) - *(v3 + 152));
    v33 = *(v3 + 152) + v30;
    *(v3 + 152) = v33;
    v34 = *(v3 + 160);
    if (*v34 < v33)
    {
      *v34 = v33;
    }
  }

  v35 = *(a2 + 176);
  if (v35)
  {
    v36 = *(a2 + 184);
    v37 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 168));
    result = sub_2764779A0(v3 + 168, v37, (v36 + 8), v35, **(v3 + 184) - *(v3 + 176));
    v38 = *(v3 + 176) + v35;
    *(v3 + 176) = v38;
    v39 = *(v3 + 184);
    if (*v39 < v38)
    {
      *v39 = v38;
    }
  }

  v40 = *(a2 + 200);
  if (v40)
  {
    v41 = *(a2 + 208);
    v42 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 192));
    result = sub_2764779A0(v3 + 192, v42, (v41 + 8), v40, **(v3 + 208) - *(v3 + 200));
    v43 = *(v3 + 200) + v40;
    *(v3 + 200) = v43;
    v44 = *(v3 + 208);
    if (*v44 < v43)
    {
      *v44 = v43;
    }
  }

  v45 = *(a2 + 224);
  if (v45)
  {
    v46 = *(a2 + 232);
    v47 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 216));
    result = sub_2764779A0(v3 + 216, v47, (v46 + 8), v45, **(v3 + 232) - *(v3 + 224));
    v48 = *(v3 + 224) + v45;
    *(v3 + 224) = v48;
    v49 = *(v3 + 232);
    if (*v49 < v48)
    {
      *v49 = v48;
    }
  }

  v50 = *(a2 + 248);
  if (v50)
  {
    v51 = *(a2 + 256);
    v52 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 240));
    result = sub_2764779A0(v3 + 240, v52, (v51 + 8), v50, **(v3 + 256) - *(v3 + 248));
    v53 = *(v3 + 248) + v50;
    *(v3 + 248) = v53;
    v54 = *(v3 + 256);
    if (*v54 < v53)
    {
      *v54 = v53;
    }
  }

  v55 = *(a2 + 272);
  if (v55)
  {
    v56 = *(a2 + 280);
    v57 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 264));
    result = sub_2764779A0(v3 + 264, v57, (v56 + 8), v55, **(v3 + 280) - *(v3 + 272));
    v58 = *(v3 + 272) + v55;
    *(v3 + 272) = v58;
    v59 = *(v3 + 280);
    if (*v59 < v58)
    {
      *v59 = v58;
    }
  }

  v60 = *(a2 + 296);
  if (v60)
  {
    v61 = *(a2 + 304);
    v62 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 288));
    result = sub_2764779A0(v3 + 288, v62, (v61 + 8), v60, **(v3 + 304) - *(v3 + 296));
    v63 = *(v3 + 296) + v60;
    *(v3 + 296) = v63;
    v64 = *(v3 + 304);
    if (*v64 < v63)
    {
      *v64 = v63;
    }
  }

  v65 = *(a2 + 16);
  if ((v65 & 7) != 0)
  {
    if (v65)
    {
      *(v3 + 16) |= 1u;
      v66 = *(v3 + 312);
      if (!v66)
      {
        v67 = *(v3 + 8);
        if (v67)
        {
          v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
        }

        v66 = sub_276476600(v67);
        *(v3 + 312) = v66;
      }

      if (*(a2 + 312))
      {
        v68 = *(a2 + 312);
      }

      else
      {
        v68 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v66, v68);
      if ((v65 & 2) == 0)
      {
LABEL_42:
        if ((v65 & 4) == 0)
        {
LABEL_44:
          *(v3 + 16) |= v65;
          return result;
        }

LABEL_43:
        *(v3 + 324) = *(a2 + 324);
        goto LABEL_44;
      }
    }

    else if ((v65 & 2) == 0)
    {
      goto LABEL_42;
    }

    *(v3 + 320) = *(a2 + 320);
    if ((v65 & 4) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  return result;
}

uint64_t sub_276469948(uint64_t result, void *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276467894(result);

    return sub_276469384(v4, a2);
  }

  return result;
}

uint64_t sub_276469994(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 176);
  while (v3 >= 1)
  {
    v4 = v3 - 1;
    IsInitialized = TSP::UUID::IsInitialized(*(*(a1 + 184) + 8 * v3));
    v3 = v4;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 200);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::UUID::IsInitialized(*(*(a1 + 208) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 224);
  while (v9 >= 1)
  {
    v10 = v9 - 1;
    v11 = TSP::UUID::IsInitialized(*(*(a1 + 232) + 8 * v9));
    v9 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *(a1 + 248);
  while (v12 >= 1)
  {
    v13 = v12 - 1;
    v14 = TSP::UUID::IsInitialized(*(*(a1 + 256) + 8 * v12));
    v12 = v13;
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 272);
  while (v15 >= 1)
  {
    v16 = v15 - 1;
    v17 = TSP::UUID::IsInitialized(*(*(a1 + 280) + 8 * v15));
    result = 0;
    v15 = v16;
    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  v18 = *(a1 + 296);
  while (v18 >= 1)
  {
    v19 = v18 - 1;
    v20 = TSP::UUID::IsInitialized(*(*(a1 + 304) + 8 * v18));
    result = 0;
    v18 = v19;
    if ((v20 & 1) == 0)
    {
      return result;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = sub_27644DF5C(*(a1 + 312));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_276469B20(void *a1, uint64_t a2)
{
  *a1 = &unk_288526388;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_2812EDF98, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  a1[3] = MEMORY[0x277D80A90];
  a1[4] = 0;
  return a1;
}

void *sub_276469B90(void *a1)
{
  v2 = a1[3];
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C98580](v2, 0x1012C40EC159624);
  }

  if (a1 != qword_2812F2128)
  {
    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C98580]();
    }
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_276469C30(void *a1)
{
  sub_276469B90(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_276469C70(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if ((v2 & 1) == 0)
    {
      goto LABEL_5;
    }

    v3 = result[3] & 0xFFFFFFFFFFFFFFFELL;
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
      result = TSP::Reference::Clear(result[4]);
    }
  }

LABEL_7:
  v5 = *(v1 + 8);
  v4 = v1 + 1;
  *(v4 + 2) = 0;
  if (v5)
  {

    return sub_2763D4FD4(v4);
  }

  return result;
}

google::protobuf::internal *sub_276469D04(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v17 = a2;
  while ((sub_2763D4D98(a3, &v17) & 1) == 0)
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
          sub_2763D4E10((a1 + 8));
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

        v13 = MEMORY[0x277C97B90](v12);
        LODWORD(v11) = v13;
        *(a1 + 32) = v13;
        v5 = v17;
      }

      v10 = sub_2764ADCBC(a3, v11, v5);
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

unsigned __int8 *sub_276469EA4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(a1 + 16);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(a1 + 32);
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
    v4 = sub_2763DD938(a3, 2, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_276469FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      return v2;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
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
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v2 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v2;
}

uint64_t sub_27646A068(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v8 = sub_276469FC8(a1);
  }

  else
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
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

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v8;
    return v8;
  }
}

uint64_t sub_27646A148(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527338, 0);
  if (v4)
  {

    return sub_27646A1F0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27646A1F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      result = google::protobuf::internal::ArenaStringPtr::Set();
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

        v6 = MEMORY[0x277C97B90](v7);
        *(v3 + 32) = v6;
      }

      if (*(a2 + 32))
      {
        v8 = *(a2 + 32);
      }

      else
      {
        v8 = MEMORY[0x277D80A18];
      }

      return TSP::Reference::MergeFrom(v6, v8);
    }
  }

  return result;
}

uint64_t *sub_27646A2DC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_276469C70(result);

    return sub_27646A148(v4, a2);
  }

  return result;
}

uint64_t sub_27646A328(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  else
  {
    return TSP::Reference::IsInitialized(*(a1 + 32));
  }
}

uint64_t sub_27646A384(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288526438;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812EDF68, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void *sub_27646A418(void *a1)
{
  sub_27646A458(a1);
  sub_2763941F4(a1 + 1);
  sub_2764780A0(a1 + 3);
  return a1;
}

void *sub_27646A458(void *result)
{
  if (result != &unk_2812F2150)
  {
    v1 = result;
    if (result[6])
    {
      v2 = MEMORY[0x277C973A0]();
      MEMORY[0x277C98580](v2, 0x10A1C40C24530F0);
    }

    v3 = v1[7];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x277C98580]();
    }

    v4 = v1[8];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C98580]();
    }

    result = v1[9];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27646A510(void *a1)
{
  sub_27646A418(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27646A550(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_276469C70(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
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

LABEL_16:
    result = TSP::Reference::Clear(v1[7]);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_17;
  }

  result = TSK::CommandArchive::Clear(v1[6]);
  if ((v5 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v5 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_17:
  result = TSP::Reference::Clear(v1[8]);
  if ((v5 & 8) != 0)
  {
LABEL_10:
    result = TSP::Reference::Clear(v1[9]);
  }

LABEL_11:
  v7 = *(v1 + 8);
  v6 = v1 + 1;
  v6[9] = 0;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *sub_27646A620(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v39) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_73;
      }

      v7 = TagFallback;
      v8 = v36;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v18 = *(a1 + 48);
            if (!v18)
            {
              v19 = *(a1 + 8);
              if (v19)
              {
                v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
              }

              v20 = MEMORY[0x277C97AF0](v19);
              LODWORD(v18) = v20;
              *(a1 + 48) = v20;
              v7 = v39;
            }

            v21 = sub_2764AF5A0(a3, v18, v7);
LABEL_65:
            v39 = v21;
            if (!v21)
            {
              goto LABEL_73;
            }

            goto LABEL_66;
          }
        }

        else
        {
          if (v10 != 2)
          {
            if (v10 != 3 || v8 != 26)
            {
              goto LABEL_58;
            }

            *(a1 + 16) |= 4u;
            v12 = *(a1 + 64);
            if (v12)
            {
              goto LABEL_44;
            }

            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x277C97B90](v13);
            LODWORD(v12) = v14;
            *(a1 + 64) = v14;
            goto LABEL_43;
          }

          if (v8 == 18)
          {
            *(a1 + 16) |= 2u;
            v12 = *(a1 + 56);
            if (!v12)
            {
              v24 = *(a1 + 8);
              if (v24)
              {
                v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
              }

              v25 = MEMORY[0x277C97B90](v24);
              LODWORD(v12) = v25;
              *(a1 + 56) = v25;
LABEL_43:
              v7 = v39;
              goto LABEL_44;
            }

            goto LABEL_44;
          }
        }

        goto LABEL_58;
      }

      if (v10 == 4)
      {
        if (v8 == 34)
        {
          *(a1 + 16) |= 8u;
          v12 = *(a1 + 72);
          if (!v12)
          {
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v23 = MEMORY[0x277C97B90](v22);
            LODWORD(v12) = v23;
            *(a1 + 72) = v23;
            goto LABEL_43;
          }

LABEL_44:
          v21 = sub_2764ADCBC(a3, v12, v7);
          goto LABEL_65;
        }

LABEL_58:
        if (v8)
        {
          v34 = (v8 & 7) == 4;
        }

        else
        {
          v34 = 1;
        }

        if (v34)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_2763D4E10((a1 + 8));
        }

        v21 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_65;
      }

      if (v10 == 5)
      {
        if (v8 != 42)
        {
          goto LABEL_58;
        }

        v26 = (v7 - 1);
        while (2)
        {
          v27 = (v26 + 1);
          v39 = (v26 + 1);
          v28 = *(a1 + 40);
          if (!v28)
          {
LABEL_48:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
            v28 = *(a1 + 40);
            v29 = *v28;
            goto LABEL_49;
          }

          v33 = *(a1 + 32);
          v29 = *v28;
          if (v33 >= *v28)
          {
            if (v29 == *(a1 + 36))
            {
              goto LABEL_48;
            }

LABEL_49:
            *v28 = v29 + 1;
            v30 = sub_276476760(*(a1 + 24));
            v31 = *(a1 + 32);
            v32 = *(a1 + 40) + 8 * v31;
            *(a1 + 32) = v31 + 1;
            *(v32 + 8) = v30;
            v27 = v39;
          }

          else
          {
            *(a1 + 32) = v33 + 1;
            v30 = *&v28[2 * v33 + 2];
          }

          v26 = sub_2764AF740(a3, v30, v27);
          v39 = v26;
          if (!v26)
          {
            goto LABEL_73;
          }

          if (*a3 <= v26 || *v26 != 42)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v10 != 6 || v8 != 48)
      {
        goto LABEL_58;
      }

      v5 |= 0x10u;
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
        v39 = v16;
        *(a1 + 80) = v15;
        goto LABEL_66;
      }

      v37 = google::protobuf::internal::VarintParseSlow64(v7, v15);
      v39 = v37;
      *(a1 + 80) = v38;
      if (!v37)
      {
LABEL_73:
        v39 = 0;
        goto LABEL_2;
      }

LABEL_66:
      if (sub_2763D4D98(a3, &v39))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *sub_27646A9C4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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

  v12 = *(a1 + 56);
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

  v18 = *(a1 + 64);
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

    v24 = *(a1 + 72);
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
      *a2 = 42;
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

      a2 = sub_276469EA4(v32, v34, a3);
    }
  }

  if ((v5 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v38 = *(a1 + 80);
    *a2 = 48;
    if (v38 > 0x7F)
    {
      a2[1] = v38 | 0x80;
      v39 = v38 >> 7;
      if (v38 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v39 | 0x80;
          v40 = v39 >> 7;
          ++a2;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
        *(a2 - 1) = v40;
      }

      else
      {
        a2[2] = v39;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v38;
      a2 += 2;
    }
  }

  v42 = *(a1 + 8);
  if ((v42 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v42 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27646ADD0(uint64_t a1)
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

  v4 = TSK::CommandArchive::ByteSizeLong(*(a1 + 48));
  v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((*(a1 + 16) & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 56));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_27646AE64(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    v4 = sub_27646ADD0(a1);
  }

  else
  {
    v2 = TSK::CommandArchive::ByteSizeLong(*(a1 + 48));
    v3 = TSP::Reference::ByteSizeLong(*(a1 + 56));
    v4 = v2 + v3 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

  v5 = *(a1 + 32);
  v6 = v4 + v5;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  if (v5)
  {
    v9 = 8 * v5;
    do
    {
      v10 = *v8++;
      v11 = sub_27646A068(v10);
      v6 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6);
      v9 -= 8;
    }

    while (v9);
  }

  v12 = *(a1 + 16);
  if ((v12 & 0x1C) != 0)
  {
    if ((v12 & 4) != 0)
    {
      v14 = TSP::Reference::ByteSizeLong(*(a1 + 64));
      v6 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v12 & 8) == 0)
      {
LABEL_13:
        if ((v12 & 0x10) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if ((v12 & 8) == 0)
    {
      goto LABEL_13;
    }

    v15 = TSP::Reference::ByteSizeLong(*(a1 + 72));
    v6 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v12 & 0x10) != 0)
    {
LABEL_14:
      v6 += ((9 * (__clz(*(a1 + 80) | 1) ^ 0x3F) + 73) >> 6) + 1;
    }
  }

LABEL_15:
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

uint64_t sub_27646B024(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527350, 0);
  if (v4)
  {

    return sub_27646B0CC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27646B0CC(uint64_t result, uint64_t a2)
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
    result = sub_276478124(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x1F) != 0)
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

        v11 = MEMORY[0x277C97AF0](v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = MEMORY[0x277D80718];
      }

      result = TSK::CommandArchive::MergeFrom(v11, v13);
    }

    v14 = MEMORY[0x277D80A18];
    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v15 = *(v3 + 56);
      if (!v15)
      {
        v16 = *(v3 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C97B90](v16);
        *(v3 + 56) = v15;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = v14;
      }

      result = TSP::Reference::MergeFrom(v15, v17);
      if ((v10 & 4) == 0)
      {
LABEL_18:
        if ((v10 & 8) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_39;
      }
    }

    else if ((v10 & 4) == 0)
    {
      goto LABEL_18;
    }

    *(v3 + 16) |= 4u;
    v18 = *(v3 + 64);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C97B90](v19);
      *(v3 + 64) = v18;
    }

    if (*(a2 + 64))
    {
      v20 = *(a2 + 64);
    }

    else
    {
      v20 = v14;
    }

    result = TSP::Reference::MergeFrom(v18, v20);
    if ((v10 & 8) == 0)
    {
LABEL_19:
      if ((v10 & 0x10) == 0)
      {
LABEL_21:
        *(v3 + 16) |= v10;
        return result;
      }

LABEL_20:
      *(v3 + 80) = *(a2 + 80);
      goto LABEL_21;
    }

LABEL_39:
    *(v3 + 16) |= 8u;
    v21 = *(v3 + 72);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C97B90](v22);
      *(v3 + 72) = v21;
    }

    if (*(a2 + 72))
    {
      v23 = *(a2 + 72);
    }

    else
    {
      v23 = v14;
    }

    result = TSP::Reference::MergeFrom(v21, v23);
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t *sub_27646B2C0(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27646A550(result);

    return sub_27646B024(v4, a2);
  }

  return result;
}

uint64_t sub_27646B30C(uint64_t a1)
{
  if ((~*(a1 + 16) & 3) != 0)
  {
    return 0;
  }

  result = sub_27646B3A8(a1 + 24);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      result = TSK::CommandArchive::IsInitialized(*(a1 + 48));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 2) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 56));
      if (!result)
      {
        return result;
      }

      v3 = *(a1 + 16);
    }

    if ((v3 & 4) != 0)
    {
      result = TSP::Reference::IsInitialized(*(a1 + 64));
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

    result = TSP::Reference::IsInitialized(*(a1 + 72));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_27646B3A8(uint64_t a1)
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

uint64_t *sub_27646B44C(uint64_t *a1)
{
  if (a1 != &qword_2812F21A8 && a1[3])
  {
    v2 = MEMORY[0x277C973A0]();
    MEMORY[0x277C98580](v2, 0x10A1C40C24530F0);
  }

  sub_2763941F4(a1 + 1);
  return a1;
}

void sub_27646B4B0(uint64_t *a1)
{
  sub_27646B44C(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27646B4F0(uint64_t *result)
{
  v1 = result;
  if (result[2])
  {
    result = TSK::CommandArchive::Clear(result[3]);
  }

  v3 = *(v1 + 8);
  v2 = v1 + 1;
  *(v2 + 2) = 0;
  if (v3)
  {

    return sub_2763D4FD4(v2);
  }

  return result;
}

google::protobuf::internal *sub_27646B54C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v16 = a2;
  while ((sub_2763D4D98(a3, &v16) & 1) == 0)
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

        v12 = MEMORY[0x277C97AF0](v11);
        LODWORD(v10) = v12;
        *(a1 + 24) = v12;
        v5 = v16;
      }

      v9 = sub_2764AF5A0(a3, v10, v5);
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
        sub_2763D4E10((a1 + 8));
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

unsigned __int8 *sub_27646B694(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 24);
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

    a2 = TSK::CommandArchive::_InternalSerialize(v5, v7, a3);
  }

  v11 = *(a1 + 8);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v11 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27646B784(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = TSK::CommandArchive::ByteSizeLong(*(a1 + 24));
    v2 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v2 = 0;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v2;
    return v2;
  }
}

uint64_t sub_27646B810(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527368, 0);
  if (v4)
  {

    return sub_27646B8B8(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27646B8B8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_2763D4F88((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    v6 = *(v3 + 24);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C97AF0](v7);
      *(v3 + 24) = v6;
      v5 = *(a2 + 24);
    }

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = MEMORY[0x277D80718];
    }

    return TSK::CommandArchive::MergeFrom(v6, v8);
  }

  return result;
}

uint64_t *sub_27646B960(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27646B4F0(result);

    return sub_27646B810(v4, a2);
  }

  return result;
}

uint64_t sub_27646B9AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return TSK::CommandArchive::IsInitialized(*(a1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27646BA00(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288526598;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812EDEE8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return a1;
}

uint64_t sub_27646BA70(uint64_t a1)
{
  if (a1 != &unk_2812F21C8 && *(a1 + 24))
  {
    v2 = MEMORY[0x277C97400]();
    MEMORY[0x277C98580](v2, 0x10A1C4029F168B5);
  }

  sub_2763941F4((a1 + 8));
  return a1;
}

void sub_27646BAD4(uint64_t a1)
{
  sub_27646BA70(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27646BB14(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = TSK::FormatStructArchive::Clear(result[3]);
  }

  if ((v2 & 0xE) != 0)
  {
    v1[4] = 0;
    *(v1 + 10) = 1;
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

google::protobuf::internal *sub_27646BB84(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v32 = a2;
  v5 = 0;
  if ((sub_2763D4D98(a3, &v32) & 1) == 0)
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
        goto LABEL_58;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 != 3)
        {
          if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 1u;
            v15 = *(a1 + 24);
            if (!v15)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = MEMORY[0x277C97B00](v16);
              LODWORD(v15) = v17;
              *(a1 + 24) = v17;
              v7 = v32;
            }

            v18 = sub_2764A8D08(a3, v15, v7);
            goto LABEL_45;
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

          v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_45:
          v32 = v18;
          if (!v18)
          {
            goto LABEL_58;
          }

          goto LABEL_46;
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
          v32 = v22;
          *(a1 + 36) = v23;
          goto LABEL_46;
        }

        v30 = google::protobuf::internal::VarintParseSlow32(v7, v23);
        v32 = v30;
        *(a1 + 36) = v31;
        if (!v30)
        {
LABEL_58:
          v32 = 0;
          goto LABEL_2;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 == 8)
          {
            v20 = (v7 + 1);
            v19 = *v7;
            if ((v19 & 0x8000000000000000) == 0)
            {
              goto LABEL_30;
            }

            v21 = *v20;
            v19 = (v21 << 7) + v19 - 128;
            if (v21 < 0)
            {
              v32 = google::protobuf::internal::VarintParseSlow64(v7, v19);
              if (!v32)
              {
                goto LABEL_58;
              }
            }

            else
            {
              v20 = (v7 + 2);
LABEL_30:
              v32 = v20;
            }

            if ((v19 - 1) > 4)
            {
              sub_2764AB61C();
            }

            else
            {
              *(a1 + 16) |= 8u;
              *(a1 + 40) = v19;
            }

            goto LABEL_46;
          }

          goto LABEL_38;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_38;
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
          v32 = v12;
          *(a1 + 32) = v13;
          goto LABEL_46;
        }

        v28 = google::protobuf::internal::VarintParseSlow32(v7, v13);
        v32 = v28;
        *(a1 + 32) = v29;
        if (!v28)
        {
          goto LABEL_58;
        }
      }

LABEL_46:
      if (sub_2763D4D98(a3, &v32))
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

unsigned __int8 *sub_27646BE4C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 8) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_28:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(a1 + 32);
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
        if ((v5 & 4) != 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        a2[2] = v19;
        a2 += 3;
        if ((v5 & 4) != 0)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      a2[1] = v18;
      a2 += 2;
      if ((v5 & 4) != 0)
      {
        goto LABEL_39;
      }
    }

LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(a1 + 40);
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
      if ((v5 & 2) != 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      a2[2] = v11;
      a2 += 3;
      if ((v5 & 2) != 0)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
    a2[1] = v9;
    a2 += 2;
    if ((v5 & 2) != 0)
    {
      goto LABEL_28;
    }
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_39:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(a1 + 36);
  *a2 = 24;
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v23 = v22 >> 7;
    if (v22 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++a2;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(a2 - 1) = v24;
      if ((v5 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      a2[2] = v23;
      a2 += 3;
      if ((v5 & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    a2[1] = v22;
    a2 += 2;
    if ((v5 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v6 = *(a1 + 24);
  *a2 = 34;
  v7 = *(v6 + 12);
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

  a2 = TSK::FormatStructArchive::_InternalSerialize(v6, v8, a3);
LABEL_23:
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v14 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27646C0FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 24));
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
    v3 += ((9 * (__clz(*(a1 + 32) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(a1 + 36) | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    v5 = *(a1 + 40);
    if (v5 < 0)
    {
      v6 = 11;
    }

    else
    {
      v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v6;
    goto LABEL_16;
  }

  if ((v2 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_16:
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

uint64_t sub_27646C228(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527380, 0);
  if (v4)
  {

    return sub_27646C2D0(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27646C2D0(uint64_t result, uint64_t a2)
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

        v6 = MEMORY[0x277C97B00](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80740];
      }

      result = TSK::FormatStructArchive::MergeFrom(v6, v8);
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

uint64_t *sub_27646C3AC(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27646BB14(result);

    return sub_27646C228(v4, a2);
  }

  return result;
}

uint64_t sub_27646C3F8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSK::FormatStructArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27646C464(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288526648;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2812EDEB0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_27646C4F4(_Unwind_Exception *a1)
{
  sub_2764781E4(v2);
  sub_2764781E4(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_27646C518(uint64_t *a1)
{
  sub_27646C564(a1);
  sub_2763941F4(a1 + 1);
  sub_2764781E4(a1 + 6);
  sub_2764781E4(a1 + 3);
  return a1;
}

uint64_t sub_27646C564(uint64_t result)
{
  if (result != &unk_2812F21F8)
  {
    v1 = result;
    v2 = *(result + 72);
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[10];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C98580]();
    }

    if (v1[11])
    {
      v5 = MEMORY[0x277C97400]();
      MEMORY[0x277C98580](v5, 0x10A1C4029F168B5);
    }

    result = v1[12];
    if (result)
    {
      MEMORY[0x277C97400]();

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27646C628(uint64_t *a1)
{
  sub_27646C518(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27646C668(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = sub_27646BB14(v4);
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
      result = sub_27646BB14(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 4);
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
    result = TSP::Reference::Clear(v1[10]);
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

  result = sub_27644C464(v1[9]);
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
  result = TSK::FormatStructArchive::Clear(v1[11]);
  if ((v8 & 8) != 0)
  {
LABEL_14:
    result = TSK::FormatStructArchive::Clear(v1[12]);
  }

LABEL_15:
  v10 = *(v1 + 8);
  v9 = v1 + 1;
  *(v9 + 2) = 0;
  if (v10)
  {

    return sub_2763D4FD4(v9);
  }

  return result;
}

google::protobuf::internal *sub_27646C75C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v41 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v41))
    {
      return v41;
    }

    v5 = (v41 + 1);
    v6 = *v41;
    if ((*v41 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v41 + 2);
LABEL_6:
      v41 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v41, (v7 - 128));
    v41 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v39;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 3)
    {
      if (v8 == 1)
      {
        if (v6 == 10)
        {
          *(a1 + 16) |= 1u;
          v21 = *(a1 + 72);
          if (!v21)
          {
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = sub_276476600(v22);
            *(a1 + 72) = v21;
            v5 = v41;
          }

          v23 = sub_2764AE490(a3, v21, v5);
          goto LABEL_74;
        }
      }

      else
      {
        if (v8 != 2)
        {
          if (v8 != 3 || v6 != 26)
          {
            goto LABEL_67;
          }

          *(a1 + 16) |= 4u;
          v10 = *(a1 + 88);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = MEMORY[0x277C97B00](v11);
            LODWORD(v10) = v12;
            *(a1 + 88) = v12;
LABEL_46:
            v5 = v41;
            goto LABEL_47;
          }

          goto LABEL_47;
        }

        if (v6 == 18)
        {
          *(a1 + 16) |= 2u;
          v26 = *(a1 + 80);
          if (!v26)
          {
            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = MEMORY[0x277C97B90](v27);
            LODWORD(v26) = v28;
            *(a1 + 80) = v28;
            v5 = v41;
          }

          v23 = sub_2764ADCBC(a3, v26, v5);
          goto LABEL_74;
        }
      }

      goto LABEL_67;
    }

    if (v8 != 4)
    {
      break;
    }

    if (v6 != 34)
    {
      goto LABEL_67;
    }

    *(a1 + 16) |= 8u;
    v10 = *(a1 + 96);
    if (!v10)
    {
      v24 = *(a1 + 8);
      if (v24)
      {
        v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = MEMORY[0x277C97B00](v24);
      LODWORD(v10) = v25;
      *(a1 + 96) = v25;
      goto LABEL_46;
    }

LABEL_47:
    v23 = sub_2764A8D08(a3, v10, v5);
LABEL_74:
    v41 = v23;
    if (!v23)
    {
      return 0;
    }
  }

  if (v8 != 5)
  {
    if (v8 != 6 || v6 != 50)
    {
      goto LABEL_67;
    }

    v13 = (v5 - 1);
    while (2)
    {
      v14 = (v13 + 1);
      v41 = (v13 + 1);
      v15 = *(a1 + 64);
      if (!v15)
      {
LABEL_25:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
        v15 = *(a1 + 64);
        v16 = *v15;
        goto LABEL_26;
      }

      v20 = *(a1 + 56);
      v16 = *v15;
      if (v20 >= *v15)
      {
        if (v16 == *(a1 + 60))
        {
          goto LABEL_25;
        }

LABEL_26:
        *v15 = v16 + 1;
        v17 = sub_276476944(*(a1 + 48));
        v18 = *(a1 + 56);
        v19 = *(a1 + 64) + 8 * v18;
        *(a1 + 56) = v18 + 1;
        *(v19 + 8) = v17;
        v14 = v41;
      }

      else
      {
        *(a1 + 56) = v20 + 1;
        v17 = *&v15[2 * v20 + 2];
      }

      v13 = sub_2764AF810(a3, v17, v14);
      v41 = v13;
      if (!v13)
      {
        return 0;
      }

      if (*a3 <= v13 || *v13 != 50)
      {
        goto LABEL_2;
      }

      continue;
    }
  }

  if (v6 == 42)
  {
    v29 = (v5 - 1);
    while (1)
    {
      v30 = (v29 + 1);
      v41 = (v29 + 1);
      v31 = *(a1 + 40);
      if (!v31)
      {
        goto LABEL_57;
      }

      v36 = *(a1 + 32);
      v32 = *v31;
      if (v36 < *v31)
      {
        *(a1 + 32) = v36 + 1;
        v33 = *&v31[2 * v36 + 2];
        goto LABEL_61;
      }

      if (v32 == *(a1 + 36))
      {
LABEL_57:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v31 = *(a1 + 40);
        v32 = *v31;
      }

      *v31 = v32 + 1;
      v33 = sub_276476944(*(a1 + 24));
      v34 = *(a1 + 32);
      v35 = *(a1 + 40) + 8 * v34;
      *(a1 + 32) = v34 + 1;
      *(v35 + 8) = v33;
      v30 = v41;
LABEL_61:
      v29 = sub_2764AF810(a3, v33, v30);
      v41 = v29;
      if (!v29)
      {
        return 0;
      }

      if (*a3 <= v29 || *v29 != 42)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_67:
  if (v6)
  {
    v37 = (v6 & 7) == 4;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v23 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_74;
  }

  *(a3 + 80) = v6 - 1;
  return v41;
}

unsigned __int8 *sub_27646CB54(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 72);
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

  v12 = *(a1 + 80);
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

  v18 = *(a1 + 88);
  *a2 = 26;
  v19 = *(v18 + 12);
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

  a2 = TSK::FormatStructArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(a1 + 96);
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
      *a2 = 42;
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

      a2 = sub_27646BE4C(v32, v34, a3);
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
      *a2 = 50;
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

      a2 = sub_27646BE4C(v40, v42, a3);
    }
  }

  v46 = *(a1 + 8);
  if ((v46 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v46 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27646CF90(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276467344(*(a1 + 72));
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
      v10 = sub_27646C0FC(v9);
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
      v17 = sub_27646C0FC(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  v18 = *(a1 + 16);
  if ((v18 & 0xE) != 0)
  {
    if ((v18 & 2) != 0)
    {
      v21 = TSP::Reference::ByteSizeLong(*(a1 + 80));
      v12 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v18 & 4) == 0)
      {
LABEL_19:
        if ((v18 & 8) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else if ((v18 & 4) == 0)
    {
      goto LABEL_19;
    }

    v22 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 88));
    v12 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v18 & 8) != 0)
    {
LABEL_20:
      v19 = TSK::FormatStructArchive::ByteSizeLong(*(a1 + 96));
      v12 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_21:
  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v12;
    return v12;
  }
}

uint64_t sub_27646D174(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_288527398, 0);
  if (v4)
  {

    return sub_27646D21C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27646D21C(uint64_t result, uint64_t a2)
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
    result = sub_276478268(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_276478268(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 16);
  if ((v15 & 0xF) != 0)
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

        v16 = sub_276476600(v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v16, v18);
    }

    if ((v15 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v19 = *(v3 + 80);
      if (!v19)
      {
        v20 = *(v3 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x277C97B90](v20);
        *(v3 + 80) = v19;
      }

      if (*(a2 + 80))
      {
        v21 = *(a2 + 80);
      }

      else
      {
        v21 = MEMORY[0x277D80A18];
      }

      result = TSP::Reference::MergeFrom(v19, v21);
    }

    v22 = MEMORY[0x277D80740];
    if ((v15 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v23 = *(v3 + 88);
      if (!v23)
      {
        v24 = *(v3 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = MEMORY[0x277C97B00](v24);
        *(v3 + 88) = v23;
      }

      if (*(a2 + 88))
      {
        v25 = *(a2 + 88);
      }

      else
      {
        v25 = v22;
      }

      result = TSK::FormatStructArchive::MergeFrom(v23, v25);
    }

    if ((v15 & 8) != 0)
    {
      *(v3 + 16) |= 8u;
      v26 = *(v3 + 96);
      if (!v26)
      {
        v27 = *(v3 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x277C97B00](v27);
        *(v3 + 96) = v26;
      }

      if (*(a2 + 96))
      {
        v28 = *(a2 + 96);
      }

      else
      {
        v28 = v22;
      }

      return TSK::FormatStructArchive::MergeFrom(v26, v28);
    }
  }

  return result;
}

uint64_t *sub_27646D468(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27646C668(result);

    return sub_27646D174(v4, a2);
  }

  return result;
}

uint64_t sub_27646D4B4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  result = sub_2763F717C(a1 + 24);
  if (result)
  {
    result = sub_2763F717C(a1 + 48);
    if (result)
    {
      v3 = *(a1 + 16);
      if (v3)
      {
        result = sub_27644DF5C(*(a1 + 72));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 16);
      }

      if ((v3 & 2) != 0)
      {
        result = TSP::Reference::IsInitialized(*(a1 + 80));
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 16);
      }

      if ((v3 & 4) != 0)
      {
        result = TSK::FormatStructArchive::IsInitialized(*(a1 + 88));
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

      result = TSK::FormatStructArchive::IsInitialized(*(a1 + 96));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_27646D590(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885266F8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2812EDB50, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  return a1;
}

void sub_27646D624(_Unwind_Exception *a1)
{
  sub_276478328(v2);
  sub_276478328(v1);
  _Unwind_Resume(a1);
}

void *sub_27646D648(void *a1)
{
  sub_27646D694(a1);
  sub_2763941F4(a1 + 1);
  sub_276478328(a1 + 6);
  sub_276478328(a1 + 3);
  return a1;
}

void *sub_27646D694(void *result)
{
  if (result != &unk_2812F2260)
  {
    v1 = result;
    v2 = result[9];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[10];
    if (v4)
    {
      TSCH::ChartAxisIDArchive::~ChartAxisIDArchive(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[11];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C98580]();
    }

    v6 = v1[12];
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C98580]();
    }

    result = v1[13];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27646D778(void *a1)
{
  sub_27646D648(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27646D7B8(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
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
      result = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v8 = *(v1 + 4);
  if ((v8 & 0x1F) == 0)
  {
    goto LABEL_16;
  }

  if (v8)
  {
    result = sub_27644C464(v1[9]);
    if ((v8 & 2) == 0)
    {
LABEL_12:
      if ((v8 & 4) == 0)
      {
        goto LABEL_13;
      }

LABEL_22:
      result = TSP::UUID::Clear(v1[11]);
      if ((v8 & 8) == 0)
      {
LABEL_14:
        if ((v8 & 0x10) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_12;
  }

  result = TSCH::ChartAxisIDArchive::Clear(v1[10]);
  if ((v8 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v8 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_23:
  result = TSP::Reference::Clear(v1[12]);
  if ((v8 & 0x10) != 0)
  {
LABEL_15:
    result = TSP::Reference::Clear(v1[13]);
  }

LABEL_16:
  v10 = *(v1 + 8);
  v9 = v1 + 1;
  *(v9 + 2) = 0;
  if (v10)
  {

    return sub_2763D4FD4(v9);
  }

  return result;
}

google::protobuf::internal *sub_27646D8BC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v45 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v45))
    {
      return v45;
    }

    v5 = (v45 + 1);
    v6 = *v45;
    if ((*v45 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v45 + 2);
LABEL_6:
      v45 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v45, (v7 - 128));
    v45 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v27;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 3)
    {
      if (v8 == 1)
      {
        if (v6 == 10)
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

            v28 = sub_276476600(v29);
            *(a1 + 72) = v28;
            v5 = v45;
          }

          v16 = sub_2764AE490(a3, v28, v5);
          goto LABEL_84;
        }
      }

      else if (v8 == 2)
      {
        if (v6 == 18)
        {
          *(a1 + 16) |= 2u;
          v41 = *(a1 + 80);
          if (!v41)
          {
            v42 = *(a1 + 8);
            if (v42)
            {
              v42 = *(v42 & 0xFFFFFFFFFFFFFFFELL);
            }

            v41 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v42);
            *(a1 + 80) = v41;
            v5 = v45;
          }

          v16 = sub_2764AF8E0(a3, v41, v5);
          goto LABEL_84;
        }
      }

      else if (v8 == 3 && v6 == 26)
      {
        *(a1 + 16) |= 4u;
        v13 = *(a1 + 88);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97B40](v14);
          LODWORD(v13) = v15;
          *(a1 + 88) = v15;
          v5 = v45;
        }

        v16 = sub_2764AE3C0(a3, v13, v5);
        goto LABEL_84;
      }

      goto LABEL_77;
    }

    if (v6 >> 3 > 5)
    {
      break;
    }

    if (v8 == 4)
    {
      if (v6 != 34)
      {
        goto LABEL_77;
      }

      *(a1 + 16) |= 8u;
      v9 = *(a1 + 96);
      if (!v9)
      {
        v30 = *(a1 + 8);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v31 = MEMORY[0x277C97B90](v30);
        LODWORD(v9) = v31;
        *(a1 + 96) = v31;
        goto LABEL_56;
      }
    }

    else
    {
      if (v8 != 5 || v6 != 42)
      {
        goto LABEL_77;
      }

      *(a1 + 16) |= 0x10u;
      v9 = *(a1 + 104);
      if (!v9)
      {
        v10 = *(a1 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C97B90](v10);
        LODWORD(v9) = v11;
        *(a1 + 104) = v11;
LABEL_56:
        v5 = v45;
      }
    }

    v16 = sub_2764ADCBC(a3, v9, v5);
LABEL_84:
    v45 = v16;
    if (!v16)
    {
      return 0;
    }
  }

  if (v8 == 6)
  {
    if (v6 != 50)
    {
      goto LABEL_77;
    }

    v32 = v5 - 1;
    while (1)
    {
      v33 = (v32 + 1);
      v45 = (v32 + 1);
      v34 = *(a1 + 40);
      if (!v34)
      {
        goto LABEL_61;
      }

      v40 = *(a1 + 32);
      v35 = *v34;
      if (v40 < *v34)
      {
        *(a1 + 32) = v40 + 1;
        v37 = *&v34[2 * v40 + 2];
        goto LABEL_65;
      }

      if (v35 == *(a1 + 36))
      {
LABEL_61:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v34 = *(a1 + 40);
        v35 = *v34;
      }

      *v34 = v35 + 1;
      v36 = MEMORY[0x277C97B90](*(a1 + 24));
      LODWORD(v37) = v36;
      v38 = *(a1 + 32);
      v39 = *(a1 + 40) + 8 * v38;
      *(a1 + 32) = v38 + 1;
      *(v39 + 8) = v36;
      v33 = v45;
LABEL_65:
      v32 = sub_2764ADCBC(a3, v37, v33);
      v45 = v32;
      if (!v32)
      {
        return 0;
      }

      if (*a3 <= v32 || *v32 != 50)
      {
        goto LABEL_2;
      }
    }
  }

  if (v8 == 7 && v6 == 58)
  {
    v17 = v5 - 1;
    while (1)
    {
      v18 = (v17 + 1);
      v45 = (v17 + 1);
      v19 = *(a1 + 64);
      if (!v19)
      {
        goto LABEL_33;
      }

      v25 = *(a1 + 56);
      v20 = *v19;
      if (v25 < *v19)
      {
        *(a1 + 56) = v25 + 1;
        v22 = *&v19[2 * v25 + 2];
        goto LABEL_37;
      }

      if (v20 == *(a1 + 60))
      {
LABEL_33:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
        v19 = *(a1 + 64);
        v20 = *v19;
      }

      *v19 = v20 + 1;
      v21 = MEMORY[0x277C97B90](*(a1 + 48));
      LODWORD(v22) = v21;
      v23 = *(a1 + 56);
      v24 = *(a1 + 64) + 8 * v23;
      *(a1 + 56) = v23 + 1;
      *(v24 + 8) = v21;
      v18 = v45;
LABEL_37:
      v17 = sub_2764ADCBC(a3, v22, v18);
      v45 = v17;
      if (!v17)
      {
        return 0;
      }

      if (*a3 <= v17 || *v17 != 58)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_77:
  if (v6)
  {
    v43 = (v6 & 7) == 4;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v16 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_84;
  }

  *(a3 + 80) = v6 - 1;
  return v45;
}

unsigned __int8 *sub_27646DD14(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 72);
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

  v12 = *(a1 + 80);
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

  a2 = TSCH::ChartAxisIDArchive::_InternalSerialize(v12, v14, a3);
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

  v18 = *(a1 + 88);
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
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(a1 + 96);
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
  if ((v5 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(a1 + 104);
    *a2 = 42;
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

    a2 = TSP::Reference::_InternalSerialize(v30, v32, a3);
  }

LABEL_57:
  v36 = *(a1 + 32);
  if (v36)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v38 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 50;
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

      a2 = TSP::Reference::_InternalSerialize(v38, v40, a3);
    }
  }

  v44 = *(a1 + 56);
  if (v44)
  {
    for (j = 0; j != v44; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v46 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 58;
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
  }

  v52 = *(a1 + 8);
  if ((v52 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v52 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27646E1E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276467344(*(a1 + 72));
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
    v5 = TSCH::ChartAxisIDArchive::ByteSizeLong(*(a1 + 80));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = TSP::Reference::ByteSizeLong(*(a1 + 96));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_27646E2B0(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xB) != 0)
  {
    v5 = sub_27646E1E8(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 72));
    v3 = TSCH::ChartAxisIDArchive::ByteSizeLong(*(a1 + 80));
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 96));
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v6 = *(a1 + 32);
  v7 = v5 + v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = TSP::Reference::ByteSizeLong(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(a1 + 56);
  v14 = v7 + v13;
  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = (v15 + 8);
  }

  else
  {
    v16 = 0;
  }

  if (v13)
  {
    v17 = 8 * v13;
    do
    {
      v18 = *v16++;
      v19 = TSP::Reference::ByteSizeLong(v18);
      v14 += v19 + ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6);
      v17 -= 8;
    }

    while (v17);
  }

  v20 = *(a1 + 16);
  if ((v20 & 4) != 0)
  {
    v21 = TSP::UUID::ByteSizeLong(*(a1 + 88));
    v14 += v21 + ((9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v20 & 0x10) != 0)
  {
    v22 = TSP::Reference::ByteSizeLong(*(a1 + 104));
    v14 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if (*(a1 + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(a1 + 20) = v14;
    return v14;
  }
}

uint64_t sub_27646E4C0(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885273B0, 0);
  if (v4)
  {

    return sub_27646E568(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27646E568(uint64_t result, uint64_t a2)
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
    result = sub_2763F8D40(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
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
    result = sub_2763F8D40(v3 + 48, v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 16);
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

        v16 = sub_276476600(v17);
        *(v3 + 72) = v16;
      }

      if (*(a2 + 72))
      {
        v18 = *(a2 + 72);
      }

      else
      {
        v18 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v16, v18);
      if ((v15 & 2) == 0)
      {
LABEL_12:
        if ((v15 & 4) == 0)
        {
LABEL_38:
          v25 = MEMORY[0x277D80A18];
          if ((v15 & 8) != 0)
          {
            *(v3 + 16) |= 8u;
            v26 = *(v3 + 96);
            if (!v26)
            {
              v27 = *(v3 + 8);
              if (v27)
              {
                v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
              }

              v26 = MEMORY[0x277C97B90](v27);
              *(v3 + 96) = v26;
            }

            if (*(a2 + 96))
            {
              v28 = *(a2 + 96);
            }

            else
            {
              v28 = v25;
            }

            result = TSP::Reference::MergeFrom(v26, v28);
          }

          if ((v15 & 0x10) != 0)
          {
            *(v3 + 16) |= 0x10u;
            v29 = *(v3 + 104);
            if (!v29)
            {
              v30 = *(v3 + 8);
              if (v30)
              {
                v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
              }

              v29 = MEMORY[0x277C97B90](v30);
              *(v3 + 104) = v29;
            }

            if (*(a2 + 104))
            {
              v31 = *(a2 + 104);
            }

            else
            {
              v31 = v25;
            }

            return TSP::Reference::MergeFrom(v29, v31);
          }

          return result;
        }

LABEL_30:
        *(v3 + 16) |= 4u;
        v22 = *(v3 + 88);
        if (!v22)
        {
          v23 = *(v3 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v22 = MEMORY[0x277C97B40](v23);
          *(v3 + 88) = v22;
        }

        if (*(a2 + 88))
        {
          v24 = *(a2 + 88);
        }

        else
        {
          v24 = MEMORY[0x277D809E0];
        }

        result = TSP::UUID::MergeFrom(v22, v24);
        goto LABEL_38;
      }
    }

    else if ((v15 & 2) == 0)
    {
      goto LABEL_12;
    }

    *(v3 + 16) |= 2u;
    v19 = *(v3 + 80);
    if (!v19)
    {
      v20 = *(v3 + 8);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v20);
      *(v3 + 80) = v19;
    }

    if (*(a2 + 80))
    {
      v21 = *(a2 + 80);
    }

    else
    {
      v21 = &TSCH::_ChartAxisIDArchive_default_instance_;
    }

    result = TSCH::ChartAxisIDArchive::MergeFrom(v19, v21);
    if ((v15 & 4) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  return result;
}

uint64_t *sub_27646E80C(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27646D7B8(result);

    return sub_27646E4C0(v4, a2);
  }

  return result;
}

uint64_t sub_27646E858(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xB) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 56);
  while (v6 >= 1)
  {
    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(a1 + 64) + 8 * v6));
    v6 = v7;
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    result = sub_27644DF5C(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v9 = *(a1 + 16);
  }

  if ((v9 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 96));
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

  result = TSP::Reference::IsInitialized(*(a1 + 104));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27646E978(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2885267A8;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812EDCA0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  return a1;
}

void *sub_27646EA0C(void *a1)
{
  sub_27646EA4C(a1);
  sub_2763941F4(a1 + 1);
  sub_276478328(a1 + 3);
  return a1;
}

void *sub_27646EA4C(void *result)
{
  if (result != &unk_2812F22D0)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[7];
    if (v4)
    {
      TSCH::ChartAxisIDArchive::~ChartAxisIDArchive(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[8];
    if (v5)
    {
      TSP::UUID::~UUID(v5);
      MEMORY[0x277C98580]();
    }

    v6 = v1[9];
    if (v6)
    {
      TSP::Reference::~Reference(v6);
      MEMORY[0x277C98580]();
    }

    v7 = v1[10];
    if (v7)
    {
      TSP::Reference::~Reference(v7);
      MEMORY[0x277C98580]();
    }

    result = v1[11];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27646EB44(void *a1)
{
  sub_27646EA0C(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27646EB84(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if ((v5 & 0x3F) == 0)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    result = sub_27644C464(v1[6]);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = TSCH::ChartAxisIDArchive::Clear(v1[7]);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = TSP::Reference::Clear(v1[9]);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = TSP::UUID::Clear(v1[8]);
  if ((v5 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_21:
  result = TSP::Reference::Clear(v1[10]);
  if ((v5 & 0x20) != 0)
  {
LABEL_12:
    result = TSP::Reference::Clear(v1[11]);
  }

LABEL_13:
  v7 = *(v1 + 8);
  v6 = v1 + 1;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *sub_27646EC70(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v38 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v38))
    {
      return v38;
    }

    v5 = (v38 + 1);
    v6 = *v38;
    if ((*v38 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v38 + 2);
LABEL_6:
      v38 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v38, (v7 - 128));
    v38 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v20;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 <= 3)
    {
      if (v8 == 1)
      {
        if (v6 == 10)
        {
          *(a1 + 16) |= 1u;
          v21 = *(a1 + 48);
          if (!v21)
          {
            v22 = *(a1 + 8);
            if (v22)
            {
              v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
            }

            v21 = sub_276476600(v22);
            *(a1 + 48) = v21;
            v5 = v38;
          }

          v16 = sub_2764AE490(a3, v21, v5);
          goto LABEL_76;
        }
      }

      else if (v8 == 2)
      {
        if (v6 == 18)
        {
          *(a1 + 16) |= 2u;
          v34 = *(a1 + 56);
          if (!v34)
          {
            v35 = *(a1 + 8);
            if (v35)
            {
              v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
            }

            v34 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v35);
            *(a1 + 56) = v34;
            v5 = v38;
          }

          v16 = sub_2764AF8E0(a3, v34, v5);
          goto LABEL_76;
        }
      }

      else if (v8 == 3 && v6 == 26)
      {
        *(a1 + 16) |= 4u;
        v13 = *(a1 + 64);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v15 = MEMORY[0x277C97B40](v14);
          LODWORD(v13) = v15;
          *(a1 + 64) = v15;
          v5 = v38;
        }

        v16 = sub_2764AE3C0(a3, v13, v5);
        goto LABEL_76;
      }

      goto LABEL_69;
    }

    if (v6 >> 3 > 5)
    {
      break;
    }

    if (v8 == 4)
    {
      if (v6 != 34)
      {
        goto LABEL_69;
      }

      *(a1 + 16) |= 8u;
      v9 = *(a1 + 72);
      if (!v9)
      {
        v23 = *(a1 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = MEMORY[0x277C97B90](v23);
        LODWORD(v9) = v24;
        *(a1 + 72) = v24;
        goto LABEL_48;
      }
    }

    else
    {
      if (v8 != 5 || v6 != 42)
      {
        goto LABEL_69;
      }

      *(a1 + 16) |= 0x10u;
      v9 = *(a1 + 80);
      if (!v9)
      {
        v10 = *(a1 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x277C97B90](v10);
        LODWORD(v9) = v11;
        *(a1 + 80) = v11;
LABEL_48:
        v5 = v38;
      }
    }

LABEL_49:
    v16 = sub_2764ADCBC(a3, v9, v5);
LABEL_76:
    v38 = v16;
    if (!v16)
    {
      return 0;
    }
  }

  if (v8 != 6)
  {
    if (v8 != 7 || v6 != 58)
    {
      goto LABEL_69;
    }

    *(a1 + 16) |= 0x20u;
    v9 = *(a1 + 88);
    if (!v9)
    {
      v17 = *(a1 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = MEMORY[0x277C97B90](v17);
      LODWORD(v9) = v18;
      *(a1 + 88) = v18;
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  if (v6 == 50)
  {
    v25 = v5 - 1;
    while (1)
    {
      v26 = (v25 + 1);
      v38 = (v25 + 1);
      v27 = *(a1 + 40);
      if (!v27)
      {
        goto LABEL_53;
      }

      v33 = *(a1 + 32);
      v28 = *v27;
      if (v33 < *v27)
      {
        *(a1 + 32) = v33 + 1;
        v30 = *&v27[2 * v33 + 2];
        goto LABEL_57;
      }

      if (v28 == *(a1 + 36))
      {
LABEL_53:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v27 = *(a1 + 40);
        v28 = *v27;
      }

      *v27 = v28 + 1;
      v29 = MEMORY[0x277C97B90](*(a1 + 24));
      LODWORD(v30) = v29;
      v31 = *(a1 + 32);
      v32 = *(a1 + 40) + 8 * v31;
      *(a1 + 32) = v31 + 1;
      *(v32 + 8) = v29;
      v26 = v38;
LABEL_57:
      v25 = sub_2764ADCBC(a3, v30, v26);
      v38 = v25;
      if (!v25)
      {
        return 0;
      }

      if (*a3 <= v25 || *v25 != 50)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_69:
  if (v6)
  {
    v36 = (v6 & 7) == 4;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    if ((*(a1 + 8) & 1) == 0)
    {
      sub_2763D4E10((a1 + 8));
    }

    v16 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_76;
  }

  *(a3 + 80) = v6 - 1;
  return v38;
}

unsigned __int8 *sub_27646F044(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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

  v12 = *(a1 + 56);
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

  a2 = TSCH::ChartAxisIDArchive::_InternalSerialize(v12, v14, a3);
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

  v18 = *(a1 + 64);
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
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(a1 + 72);
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
  if ((v5 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(a1 + 80);
    *a2 = 42;
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

    a2 = TSP::Reference::_InternalSerialize(v30, v32, a3);
  }

LABEL_57:
  v36 = *(a1 + 32);
  if (v36)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v38 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 50;
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

      a2 = TSP::Reference::_InternalSerialize(v38, v40, a3);
    }
  }

  if ((v5 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v44 = *(a1 + 88);
    *a2 = 58;
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

    a2 = TSP::Reference::_InternalSerialize(v44, v46, a3);
  }

  v50 = *(a1 + 8);
  if ((v50 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v50 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_27646F4F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_276467344(*(a1 + 48));
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
    v5 = TSCH::ChartAxisIDArchive::ByteSizeLong(*(a1 + 56));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TSP::UUID::ByteSizeLong(*(a1 + 64));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  return v3;
}

uint64_t sub_27646F5C0(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    v5 = sub_27646F4F8(a1);
  }

  else
  {
    v2 = sub_276467344(*(a1 + 48));
    v3 = TSCH::ChartAxisIDArchive::ByteSizeLong(*(a1 + 56));
    v4 = TSP::UUID::ByteSizeLong(*(a1 + 64));
    v5 = v2 + v3 + v4 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 3;
  }

  v6 = *(a1 + 32);
  v7 = v5 + v6;
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = (v8 + 8);
  }

  else
  {
    v9 = 0;
  }

  if (v6)
  {
    v10 = 8 * v6;
    do
    {
      v11 = *v9++;
      v12 = TSP::Reference::ByteSizeLong(v11);
      v7 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      v10 -= 8;
    }

    while (v10);
  }

  v13 = *(a1 + 16);
  if ((v13 & 0x38) != 0)
  {
    if ((v13 & 8) != 0)
    {
      v16 = TSP::Reference::ByteSizeLong(*(a1 + 72));
      v7 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if ((v13 & 0x10) == 0)
      {
LABEL_13:
        if ((v13 & 0x20) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }
    }

    else if ((v13 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    v17 = TSP::Reference::ByteSizeLong(*(a1 + 80));
    v7 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v13 & 0x20) != 0)
    {
LABEL_14:
      v14 = TSP::Reference::ByteSizeLong(*(a1 + 88));
      v7 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

LABEL_15:
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

uint64_t sub_27646F7C4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885273C8, 0);
  if (v4)
  {

    return sub_27646F86C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_27646F86C(uint64_t result, uint64_t a2)
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
    result = sub_2763F8D40(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x3F) == 0)
  {
    return result;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    *(v3 + 16) |= 2u;
    v14 = *(v3 + 56);
    if (!v14)
    {
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartAxisIDArchive>(v15);
      *(v3 + 56) = v14;
    }

    if (*(a2 + 56))
    {
      v16 = *(a2 + 56);
    }

    else
    {
      v16 = &TSCH::_ChartAxisIDArchive_default_instance_;
    }

    result = TSCH::ChartAxisIDArchive::MergeFrom(v14, v16);
    if ((v10 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_27;
  }

  *(v3 + 16) |= 1u;
  v11 = *(v3 + 48);
  if (!v11)
  {
    v12 = *(v3 + 8);
    if (v12)
    {
      v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
    }

    v11 = sub_276476600(v12);
    *(v3 + 48) = v11;
  }

  if (*(a2 + 48))
  {
    v13 = *(a2 + 48);
  }

  else
  {
    v13 = &qword_2812F1FA8;
  }

  result = sub_27644DC54(v11, v13);
  if ((v10 & 2) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((v10 & 4) != 0)
  {
LABEL_27:
    *(v3 + 16) |= 4u;
    v17 = *(v3 + 64);
    if (!v17)
    {
      v18 = *(v3 + 8);
      if (v18)
      {
        v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
      }

      v17 = MEMORY[0x277C97B40](v18);
      *(v3 + 64) = v17;
    }

    if (*(a2 + 64))
    {
      v19 = *(a2 + 64);
    }

    else
    {
      v19 = MEMORY[0x277D809E0];
    }

    result = TSP::UUID::MergeFrom(v17, v19);
  }

LABEL_35:
  v20 = MEMORY[0x277D80A18];
  if ((v10 & 8) != 0)
  {
    *(v3 + 16) |= 8u;
    v21 = *(v3 + 72);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = MEMORY[0x277C97B90](v22);
      *(v3 + 72) = v21;
    }

    if (*(a2 + 72))
    {
      v23 = *(a2 + 72);
    }

    else
    {
      v23 = v20;
    }

    result = TSP::Reference::MergeFrom(v21, v23);
    if ((v10 & 0x10) == 0)
    {
LABEL_37:
      if ((v10 & 0x20) == 0)
      {
        return result;
      }

      goto LABEL_55;
    }
  }

  else if ((v10 & 0x10) == 0)
  {
    goto LABEL_37;
  }

  *(v3 + 16) |= 0x10u;
  v24 = *(v3 + 80);
  if (!v24)
  {
    v25 = *(v3 + 8);
    if (v25)
    {
      v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
    }

    v24 = MEMORY[0x277C97B90](v25);
    *(v3 + 80) = v24;
  }

  if (*(a2 + 80))
  {
    v26 = *(a2 + 80);
  }

  else
  {
    v26 = v20;
  }

  result = TSP::Reference::MergeFrom(v24, v26);
  if ((v10 & 0x20) != 0)
  {
LABEL_55:
    *(v3 + 16) |= 0x20u;
    v27 = *(v3 + 88);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = MEMORY[0x277C97B90](v28);
      *(v3 + 88) = v27;
    }

    if (*(a2 + 88))
    {
      v29 = *(a2 + 88);
    }

    else
    {
      v29 = v20;
    }

    return TSP::Reference::MergeFrom(v27, v29);
  }

  return result;
}

uint64_t *sub_27646FB00(uint64_t *result, uint64_t *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_27646EB84(result);

    return sub_27646F7C4(v4, a2);
  }

  return result;
}

uint64_t sub_27646FB4C(uint64_t a1)
{
  if ((~*(a1 + 16) & 7) != 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    result = sub_27644DF5C(*(a1 + 48));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 4) != 0)
  {
    result = TSP::UUID::IsInitialized(*(a1 + 64));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 8) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x10) != 0)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v6 = *(a1 + 16);
  }

  if ((v6 & 0x20) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 88));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_27646FC58(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288526858;
  *(a1 + 8) = a2;
  *(a1 + 24) = a2;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (atomic_load_explicit(dword_2812EDE78, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  return a1;
}

void *sub_27646FCEC(void *a1)
{
  sub_27646FD2C(a1);
  sub_2763941F4(a1 + 1);
  sub_2764783BC(a1 + 3);
  return a1;
}

void *sub_27646FD2C(void *result)
{
  if (result != &unk_2812F2330)
  {
    v1 = result;
    v2 = result[6];
    if (v2)
    {
      v3 = sub_276466CA8(v2);
      MEMORY[0x277C98580](v3, 0x10A1C4025A55CD8);
    }

    v4 = v1[7];
    if (v4)
    {
      TSP::Reference::~Reference(v4);
      MEMORY[0x277C98580]();
    }

    v5 = v1[8];
    if (v5)
    {
      TSCH::PropertyValueStorageContainerArchive::~PropertyValueStorageContainerArchive(v5);
      MEMORY[0x277C98580]();
    }

    v6 = v1[9];
    if (v6)
    {
      TSCH::PropertyValueStorageContainerArchive::~PropertyValueStorageContainerArchive(v6);
      MEMORY[0x277C98580]();
    }

    result = v1[10];
    if (result)
    {
      TSP::Reference::~Reference(result);

      JUMPOUT(0x277C98580);
    }
  }

  return result;
}

void sub_27646FE14(void *a1)
{
  sub_27646FCEC(a1);

  JUMPOUT(0x277C98580);
}

uint64_t *sub_27646FE54(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (result[5] + 8);
    do
    {
      v4 = *v3++;
      result = TSCH::ChartSelectionPathArchive::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 4);
  if ((v5 & 0x1F) == 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    result = sub_27644C464(v1[6]);
    if ((v5 & 2) == 0)
    {
LABEL_8:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

LABEL_18:
      result = TSCH::PropertyValueStorageContainerArchive::Clear(v1[8]);
      if ((v5 & 8) == 0)
      {
LABEL_10:
        if ((v5 & 0x10) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = TSP::Reference::Clear(v1[7]);
  if ((v5 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v5 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_19:
  result = TSCH::PropertyValueStorageContainerArchive::Clear(v1[9]);
  if ((v5 & 0x10) != 0)
  {
LABEL_11:
    result = TSP::Reference::Clear(v1[10]);
  }

LABEL_12:
  v7 = *(v1 + 8);
  v6 = v1 + 1;
  *(v6 + 2) = 0;
  if (v7)
  {

    return sub_2763D4FD4(v6);
  }

  return result;
}

google::protobuf::internal *sub_27646FF30(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v33 = a2;
  while (1)
  {
LABEL_2:
    if (sub_2763D4D98(a3, &v33))
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
    if (v6 >> 3 <= 3)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          if (v8 != 3 || v6 != 26)
          {
            goto LABEL_60;
          }

          *(a1 + 16) |= 4u;
          v10 = *(a1 + 64);
          if (v10)
          {
            goto LABEL_47;
          }

          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v10 = google::protobuf::Arena::CreateMaybeMessage<TSCH::PropertyValueStorageContainerArchive>(v11);
          *(a1 + 64) = v10;
          goto LABEL_46;
        }

        if (v6 != 18)
        {
          goto LABEL_60;
        }

        *(a1 + 16) |= 2u;
        v24 = *(a1 + 56);
        if (v24)
        {
LABEL_59:
          v22 = sub_2764ADCBC(a3, v24, v5);
          goto LABEL_67;
        }

        v25 = *(a1 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = MEMORY[0x277C97B90](v25);
        LODWORD(v24) = v26;
        *(a1 + 56) = v26;
LABEL_58:
        v5 = v33;
        goto LABEL_59;
      }

      if (v6 == 10)
      {
        *(a1 + 16) |= 1u;
        v20 = *(a1 + 48);
        if (!v20)
        {
          v21 = *(a1 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = sub_276476600(v21);
          *(a1 + 48) = v20;
          v5 = v33;
        }

        v22 = sub_2764AE490(a3, v20, v5);
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    if (v8 != 4)
    {
      break;
    }

    if (v6 != 34)
    {
      goto LABEL_60;
    }

    *(a1 + 16) |= 8u;
    v10 = *(a1 + 72);
    if (v10)
    {
      goto LABEL_47;
    }

    v23 = *(a1 + 8);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::Arena::CreateMaybeMessage<TSCH::PropertyValueStorageContainerArchive>(v23);
    *(a1 + 72) = v10;
LABEL_46:
    v5 = v33;
LABEL_47:
    v22 = sub_2764AF9B0(a3, v10, v5);
LABEL_67:
    v33 = v22;
    if (!v22)
    {
      return 0;
    }
  }

  if (v8 == 5)
  {
    if (v6 != 42)
    {
      goto LABEL_60;
    }

    *(a1 + 16) |= 0x10u;
    v24 = *(a1 + 80);
    if (v24)
    {
      goto LABEL_59;
    }

    v27 = *(a1 + 8);
    if (v27)
    {
      v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
    }

    v28 = MEMORY[0x277C97B90](v27);
    LODWORD(v24) = v28;
    *(a1 + 80) = v28;
    goto LABEL_58;
  }

  if (v8 == 6 && v6 == 50)
  {
    v12 = (v5 - 1);
    while (1)
    {
      v13 = (v12 + 1);
      v33 = (v12 + 1);
      v14 = *(a1 + 40);
      if (!v14)
      {
        goto LABEL_25;
      }

      v19 = *(a1 + 32);
      v15 = *v14;
      if (v19 < *v14)
      {
        *(a1 + 32) = v19 + 1;
        v16 = *&v14[2 * v19 + 2];
        goto LABEL_29;
      }

      if (v15 == *(a1 + 36))
      {
LABEL_25:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
        v14 = *(a1 + 40);
        v15 = *v14;
      }

      *v14 = v15 + 1;
      v16 = google::protobuf::Arena::CreateMaybeMessage<TSCH::ChartSelectionPathArchive>(*(a1 + 24));
      v17 = *(a1 + 32);
      v18 = *(a1 + 40) + 8 * v17;
      *(a1 + 32) = v17 + 1;
      *(v18 + 8) = v16;
      v13 = v33;
LABEL_29:
      v12 = sub_2764AFA80(a3, v16, v13);
      v33 = v12;
      if (!v12)
      {
        return 0;
      }

      if (*a3 <= v12 || *v12 != 50)
      {
        goto LABEL_2;
      }
    }
  }

LABEL_60:
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
      sub_2763D4E10((a1 + 8));
    }

    v22 = google::protobuf::internal::UnknownFieldParse();
    goto LABEL_67;
  }

  *(a3 + 80) = v6 - 1;
  return v33;
}

unsigned __int8 *sub_2764702A4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 48);
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

  v12 = *(a1 + 56);
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

  v18 = *(a1 + 64);
  *a2 = 26;
  v19 = *(v18 + 11);
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

  a2 = TSCH::PropertyValueStorageContainerArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v24 = *(a1 + 72);
  *a2 = 34;
  v25 = *(v24 + 11);
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

  a2 = TSCH::PropertyValueStorageContainerArchive::_InternalSerialize(v24, v26, a3);
  if ((v5 & 0x10) != 0)
  {
LABEL_47:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v30 = *(a1 + 80);
    *a2 = 42;
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

    a2 = TSP::Reference::_InternalSerialize(v30, v32, a3);
  }

LABEL_57:
  v36 = *(a1 + 32);
  if (v36)
  {
    for (i = 0; i != v36; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v38 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 50;
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

      a2 = TSCH::ChartSelectionPathArchive::_InternalSerialize(v38, v40, a3);
    }
  }

  v44 = *(a1 + 8);
  if ((v44 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v44 & 0xFFFFFFFFFFFFFFFELL) + 8);
}

uint64_t sub_2764706C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_276467344(*(a1 + 48));
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
      v10 = TSCH::ChartSelectionPathArchive::ByteSizeLong(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 16);
  if ((v11 & 0x1E) == 0)
  {
    goto LABEL_16;
  }

  if ((v11 & 2) == 0)
  {
    if ((v11 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_19:
    v15 = TSCH::PropertyValueStorageContainerArchive::ByteSizeLong(*(a1 + 64));
    v5 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v11 & 8) == 0)
    {
LABEL_14:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v14 = TSP::Reference::ByteSizeLong(*(a1 + 56));
  v5 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v11 & 4) != 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((v11 & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_20:
  v16 = TSCH::PropertyValueStorageContainerArchive::ByteSizeLong(*(a1 + 72));
  v5 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v11 & 0x10) != 0)
  {
LABEL_15:
    v12 = TSP::Reference::ByteSizeLong(*(a1 + 80));
    v5 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_16:
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

uint64_t sub_27647088C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2885273E0, 0);
  if (v4)
  {

    return sub_276470934(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_276470934(uint64_t result, uint64_t a2)
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
    result = sub_2763F91D4(v3 + 24, v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x1F) != 0)
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

        v11 = sub_276476600(v12);
        *(v3 + 48) = v11;
      }

      if (*(a2 + 48))
      {
        v13 = *(a2 + 48);
      }

      else
      {
        v13 = &qword_2812F1FA8;
      }

      result = sub_27644DC54(v11, v13);
    }

    v14 = MEMORY[0x277D80A18];
    if ((v10 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v15 = *(v3 + 56);
      if (!v15)
      {
        v16 = *(v3 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = MEMORY[0x277C97B90](v16);
        *(v3 + 56) = v15;
      }

      if (*(a2 + 56))
      {
        v17 = *(a2 + 56);
      }

      else
      {
        v17 = v14;
      }

      result = TSP::Reference::MergeFrom(v15, v17);
    }

    if ((v10 & 4) != 0)
    {
      *(v3 + 16) |= 4u;
      v18 = *(v3 + 64);
      if (!v18)
      {
        v19 = *(v3 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = google::protobuf::Arena::CreateMaybeMessage<TSCH::PropertyValueStorageContainerArchive>(v19);
        *(v3 + 64) = v18;
      }

      if (*(a2 + 64))
      {
        v20 = *(a2 + 64);
      }

      else
      {
        v20 = &TSCH::_PropertyValueStorageContainerArchive_default_instance_;
      }

      result = TSCH::PropertyValueStorageContainerArchive::MergeFrom(v18, v20);
      if ((v10 & 8) == 0)
      {
LABEL_27:
        if ((v10 & 0x10) == 0)
        {
          return result;
        }

        goto LABEL_45;
      }
    }

    else if ((v10 & 8) == 0)
    {
      goto LABEL_27;
    }

    *(v3 + 16) |= 8u;
    v21 = *(v3 + 72);
    if (!v21)
    {
      v22 = *(v3 + 8);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCH::PropertyValueStorageContainerArchive>(v22);
      *(v3 + 72) = v21;
    }

    if (*(a2 + 72))
    {
      v23 = *(a2 + 72);
    }

    else
    {
      v23 = &TSCH::_PropertyValueStorageContainerArchive_default_instance_;
    }

    result = TSCH::PropertyValueStorageContainerArchive::MergeFrom(v21, v23);
    if ((v10 & 0x10) != 0)
    {
LABEL_45:
      *(v3 + 16) |= 0x10u;
      v24 = *(v3 + 80);
      if (!v24)
      {
        v25 = *(v3 + 8);
        if (v25)
        {
          v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
        }

        v24 = MEMORY[0x277C97B90](v25);
        *(v3 + 80) = v24;
      }

      if (*(a2 + 80))
      {
        v26 = *(a2 + 80);
      }

      else
      {
        v26 = v14;
      }

      return TSP::Reference::MergeFrom(v24, v26);
    }
  }

  return result;
}