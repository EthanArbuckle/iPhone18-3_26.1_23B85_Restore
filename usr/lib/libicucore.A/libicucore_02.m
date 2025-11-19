void sub_1951E59C4(void *a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F09321B8;
  v3 = a1[116];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeString::~UnicodeString(a2, (a1 + 149));
  icu::UnicodeString::~UnicodeString(v4, (a1 + 141));
  icu::UnicodeString::~UnicodeString(v5, (a1 + 133));
  icu::UnicodeString::~UnicodeString(v6, (a1 + 125));
  icu::UnicodeString::~UnicodeString(v7, (a1 + 117));
  icu::SimpleFormatter::~SimpleFormatter((a1 + 106));
  icu::SimpleFormatter::~SimpleFormatter((a1 + 97));
  icu::SimpleFormatter::~SimpleFormatter((a1 + 88));
  icu::Locale::~Locale((a1 + 60));
  icu::Locale::~Locale((a1 + 31));
  icu::Locale::~Locale((a1 + 1));

  icu::UObject::~UObject(a1);
}

void sub_1951E5A9C(void *a1@<X0>, void *a2@<X8>)
{
  sub_1951E59C4(a1, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951E5AE4(unsigned int *a1, int a2)
{
  result = 0;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a1[230];
      }
    }

    else
    {
      return a1[58];
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return a1[314];
      case 3:
        return a1[315];
      case 32:
        if (a1[314] == 513)
        {
          return 8193;
        }

        else
        {
          return 0x2000;
        }
    }
  }

  return result;
}

icu::UnicodeString *sub_1951E5B4C(uint64_t a1, unsigned int a2, icu::UnicodeString *this)
{
  v6 = *(this + 4);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 < 0)
  {
    v8 = *(this + 3);
  }

  if (v8 < 1)
  {
LABEL_11:
    if (*(a1 + 928) && (*(a1 + 920) == 258 || *(a1 + a2 + 1264) == 1))
    {
      umtx_lock(&unk_1EAEC9710);
      icu::UnicodeString::toTitle(this, *(a1 + 928), (a1 + 8), 768);
      umtx_unlock(&unk_1EAEC9710);
    }
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v10 = icu::UnicodeString::char32At(this, v9);
      if (u_isupper(v10) || u_istitle(v10))
      {
        break;
      }

      if (!u_isspace(v10))
      {
        ++v9;
        v11 = *(this + 4);
        v12 = v11;
        v13 = v11 >> 5;
        if (v12 < 0)
        {
          v13 = *(this + 3);
        }

        if (v9 < v13)
        {
          continue;
        }
      }

      goto LABEL_11;
    }
  }

  return this;
}

icu::UnicodeString *sub_1951E5C50(uint64_t a1, uint64_t a2, icu::UnicodeString *this)
{
  v138 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 216))
  {
    v134 = 0u;
    v137 = 0;
    v136 = 0u;
    v135 = 0u;
    v133 = &unk_1F0935D00;
    LOWORD(v134) = 2;
    if (*(a2 + 8))
    {
      v6 = (a2 + 8);
    }

    else
    {
      v6 = "root";
    }

    v7 = *(a2 + 32);
    v9 = (a2 + 20);
    v8 = *(a2 + 20);
    v10 = (a2 + 26);
    v11 = *(a2 + 26);
    v12 = *(*(a2 + 208) + v7);
    if (*(a2 + 26) && !*(a2 + 20) && !*(*(a2 + 208) + v7) && *(a2 + 8) == 0)
    {
      sub_1951E69B4(a1, v10, this);
      goto LABEL_170;
    }

    v110 = *(a2 + 208);
    v112 = v11 != 0;
    v111 = v8 != 0;
    if (*v6 ^ 0x687A | v6[2] && *v6 != 6649209 && *v6 ^ 0x736B | v6[2] && *v6 ^ 0x6170 | v6[2] && *v6 ^ 0x7275 | v6[2] && *v6 != 6515043 && *v6 != 7301219 && *v6 != 7827553 && *(a1 + 232) != 1)
    {
LABEL_43:
      sub_1951E6B14(a1, v6, &v133, *(a1 + 1260) == 768);
      if ((v134 & 1) == 0)
      {
        goto LABEL_44;
      }

      icu::UnicodeString::setToBogus(this);
LABEL_170:
      icu::UnicodeString::~UnicodeString(v14, &v133);
      goto LABEL_171;
    }

    v122[0] = U_ZERO_ERROR;
    v132 = 0;
    v130 = 0uLL;
    v131 = 0uLL;
    v129 = 0uLL;
    v15 = (&v129 + 5);
    v128 = (&v129 + 5);
    LODWORD(v129) = 40;
    if (v8 && v11)
    {
      icu::StringPiece::StringPiece(&v123, v6);
      v16 = icu::CharString::append(&v128, v123, v124, v122);
      v17 = icu::CharString::append(v16, 95, v122);
      icu::StringPiece::StringPiece(&v123, v9);
      v18 = icu::CharString::append(v17, v123, v124, v122);
      v19 = icu::CharString::append(v18, 95, v122);
      icu::StringPiece::StringPiece(&v123, v10);
      icu::CharString::append(v19, v123, v124, v122);
      v15 = v128;
      if (v122[0] <= U_ZERO_ERROR)
      {
        sub_1951E6B14(a1, v128, &v133, 0);
        if ((v134 & 1) == 0)
        {
          v112 = 0;
          v111 = 0;
          goto LABEL_39;
        }

        v15 = v128;
      }
    }

    else if (!v8)
    {
      goto LABEL_32;
    }

    LODWORD(v132) = 0;
    *v15 = 0;
    icu::StringPiece::StringPiece(&v123, v6);
    v20 = icu::CharString::append(&v128, v123, v124, v122);
    v21 = icu::CharString::append(v20, 95, v122);
    icu::StringPiece::StringPiece(&v123, v9);
    icu::CharString::append(v21, v123, v124, v122);
    if (v122[0] <= U_ZERO_ERROR)
    {
      sub_1951E6B14(a1, v128, &v133, 0);
      if (!v11 || (v134 & 1) == 0)
      {
        v111 = v134 & 1;
        goto LABEL_39;
      }

LABEL_36:
      LODWORD(v132) = 0;
      *v128 = 0;
      icu::StringPiece::StringPiece(&v123, v6);
      v22 = icu::CharString::append(&v128, v123, v124, v122);
      v23 = icu::CharString::append(v22, 95, v122);
      icu::StringPiece::StringPiece(&v123, v10);
      icu::CharString::append(v23, v123, v124, v122);
      if (v122[0] <= U_ZERO_ERROR)
      {
        sub_1951E6B14(a1, v128, &v133, 0);
        v112 = (v11 != 0) & v134;
      }

LABEL_39:
      if (BYTE4(v129))
      {
        free(v128);
      }

      if (v134 >= 0x20u && (v134 & 1) == 0)
      {
LABEL_44:
        v132 = 0;
        v130 = 0u;
        v131 = 0u;
        v129 = 0u;
        v128 = &unk_1F0935D00;
        LOWORD(v129) = 2;
        v127 = 0;
        v125 = 0u;
        v126 = 0u;
        v124 = 0u;
        v123 = &unk_1F0935D00;
        LOWORD(v124) = 2;
        v115 = U_ZERO_ERROR;
        if (v111)
        {
          memset(v122, 0, 64);
          sub_1951E6CD8(a1, v9, &v123, 1);
          icu::UnicodeString::UnicodeString(v122, &v123);
          if (v122[2])
          {
            goto LABEL_159;
          }

          if (SLOWORD(v122[2]) >= 0)
          {
            v24 = LOWORD(v122[2]) >> 5;
          }

          else
          {
            v24 = v122[3];
          }

          icu::UnicodeString::doAppend(&v128, v122, 0, v24);
          icu::UnicodeString::~UnicodeString(v25, v122);
        }

        if (v112)
        {
          memset(v122, 0, 64);
          sub_1951E69B4(a1, v10, &v123);
          icu::UnicodeString::UnicodeString(v122, &v123);
          if (v122[2])
          {
            goto LABEL_159;
          }

          sub_1951E6DD0(a1, &v128, v122);
          icu::UnicodeString::~UnicodeString(v26, v122);
        }

        if (!v12)
        {
LABEL_56:
          if ((v129 & 0x8000u) == 0)
          {
            v28 = v129 >> 5;
          }

          else
          {
            v28 = DWORD1(v129);
          }

          v29 = *(a1 + 944);
          v30 = v29;
          v31 = v29 >> 5;
          if (v30 >= 0)
          {
            v32 = v31;
          }

          else
          {
            v32 = *(a1 + 948);
          }

          v33 = *(a1 + 1008);
          v34 = v33;
          v35 = v33 >> 5;
          if (v34 < 0)
          {
            v35 = *(a1 + 1012);
          }

          icu::UnicodeString::findAndReplace(&v128, 0, v28, (a1 + 936), 0, v32, (a1 + 1000), 0, v35);
          if ((v129 & 0x8000u) == 0)
          {
            v36 = v129 >> 5;
          }

          else
          {
            v36 = DWORD1(v129);
          }

          v37 = *(a1 + 1072);
          v38 = v37;
          v39 = v37 >> 5;
          if (v38 >= 0)
          {
            v40 = v39;
          }

          else
          {
            v40 = *(a1 + 1076);
          }

          v41 = *(a1 + 1136);
          v42 = v41;
          v43 = v41 >> 5;
          if (v42 < 0)
          {
            v43 = *(a1 + 1140);
          }

          icu::UnicodeString::findAndReplace(&v128, 0, v36, (a1 + 1064), 0, v40, (a1 + 1128), 0, v43);
          v44 = icu::Locale::createKeywords(a2, &v115);
          v45 = v44;
          if (v44 && v115 <= U_ZERO_ERROR)
          {
            memset(&v122[2], 0, 56);
            *v122 = &unk_1F0935D00;
            LOWORD(v122[2]) = 2;
            v46 = (*(*v44 + 40))(v44, 0, &v115);
            if (v46)
            {
              v48 = v46;
              do
              {
                memset(v121, 0, sizeof(v121));
                icu::StringPiece::StringPiece(&v113, v48);
                v49 = v115;
                if (v115 >= U_ILLEGAL_ARGUMENT_ERROR)
                {
LABEL_164:
                  icu::UnicodeString::~UnicodeString(v49, v122);
                  goto LABEL_168;
                }

                v50 = v113;
                v51 = v114;
                memset(&v121[1], 0, 56);
                v121[0] = &v121[1] + 5;
                LODWORD(v121[1]) = 40;
                v116 = 0;
                *&v117 = 0;
                icu::CharStringByteSink::CharStringByteSink(&v116, v121);
                v116 = &unk_1F0931548;
                icu::Locale::getKeywordValue(a2, v50, v51, &v116, &v115);
                icu::CharStringByteSink::~CharStringByteSink(&v116);
                if (v115 > U_ZERO_ERROR)
                {
                  v49 = BYTE4(v121[1]);
                  if (BYTE4(v121[1]))
                  {
                    free(v121[0]);
                  }

                  goto LABEL_164;
                }

                sub_1951E6EF4(a1, v48, &v123, 1);
                if ((v124 & 0x8000u) == 0)
                {
                  v52 = v124 >> 5;
                }

                else
                {
                  v52 = DWORD1(v124);
                }

                v53 = *(a1 + 944);
                v54 = v53;
                v55 = v53 >> 5;
                if (v54 >= 0)
                {
                  v56 = v55;
                }

                else
                {
                  v56 = *(a1 + 948);
                }

                v57 = *(a1 + 1008);
                v58 = v57;
                v59 = v57 >> 5;
                if (v58 < 0)
                {
                  v59 = *(a1 + 1012);
                }

                icu::UnicodeString::findAndReplace(&v123, 0, v52, (a1 + 936), 0, v56, (a1 + 1000), 0, v59);
                if ((v124 & 0x8000u) == 0)
                {
                  v60 = v124 >> 5;
                }

                else
                {
                  v60 = DWORD1(v124);
                }

                v61 = *(a1 + 1072);
                v62 = v61;
                v63 = v61 >> 5;
                if (v62 >= 0)
                {
                  v64 = v63;
                }

                else
                {
                  v64 = *(a1 + 1076);
                }

                v65 = *(a1 + 1136);
                v66 = v65;
                v67 = v65 >> 5;
                if (v66 < 0)
                {
                  v67 = *(a1 + 1140);
                }

                icu::UnicodeString::findAndReplace(&v123, 0, v60, (a1 + 1064), 0, v64, (a1 + 1128), 0, v67);
                sub_1951E6F78(a1, v48, v121[0], v122, 1);
                if (SLOWORD(v122[2]) >= 0)
                {
                  v68 = LOWORD(v122[2]) >> 5;
                }

                else
                {
                  v68 = v122[3];
                }

                v69 = *(a1 + 944);
                v70 = v69;
                v71 = v69 >> 5;
                if (v70 >= 0)
                {
                  v72 = v71;
                }

                else
                {
                  v72 = *(a1 + 948);
                }

                v73 = *(a1 + 1008);
                v74 = v73;
                v75 = v73 >> 5;
                if (v74 < 0)
                {
                  v75 = *(a1 + 1012);
                }

                icu::UnicodeString::findAndReplace(v122, 0, v68, (a1 + 936), 0, v72, (a1 + 1000), 0, v75);
                if (SLOWORD(v122[2]) >= 0)
                {
                  v76 = LOWORD(v122[2]) >> 5;
                }

                else
                {
                  v76 = v122[3];
                }

                v77 = *(a1 + 1072);
                v78 = v77;
                v79 = v77 >> 5;
                if (v78 >= 0)
                {
                  v80 = v79;
                }

                else
                {
                  v80 = *(a1 + 1076);
                }

                v81 = *(a1 + 1136);
                v82 = v81;
                v83 = v81 >> 5;
                if (v82 < 0)
                {
                  v83 = *(a1 + 1140);
                }

                icu::UnicodeString::findAndReplace(v122, 0, v76, (a1 + 1064), 0, v80, (a1 + 1128), 0, v83);
                icu::UnicodeString::UnicodeString(&v116, v121[0], 0xFFFFFFFFLL, 0);
                if (v122[2])
                {
                  v89 = v117;
                  icu::UnicodeString::~UnicodeString(LOWORD(v122[2]), &v116);
                  if ((v89 & 1) == 0)
                  {
                    goto LABEL_140;
                  }
                }

                else
                {
                  if (SLOWORD(v122[2]) >= 0)
                  {
                    v84 = LOWORD(v122[2]) >> 5;
                  }

                  else
                  {
                    v84 = v122[3];
                  }

                  if ((v117 & 0x8000u) == 0)
                  {
                    v85 = v117 >> 5;
                  }

                  else
                  {
                    v85 = DWORD1(v117);
                  }

                  if ((v117 & 1) != 0 || v84 != v85)
                  {
                    icu::UnicodeString::~UnicodeString(v117, &v116);
LABEL_140:
                    sub_1951E6DD0(a1, &v128, v122);
                    goto LABEL_148;
                  }

                  if ((v117 & 2) != 0)
                  {
                    v86 = &v117 + 2;
                  }

                  else
                  {
                    v86 = v118;
                  }

                  v87 = icu::UnicodeString::doEquals(v122, v86, v84);
                  icu::UnicodeString::~UnicodeString(v88, &v116);
                  if (!v87)
                  {
                    goto LABEL_140;
                  }
                }

                icu::UnicodeString::UnicodeString(&v116, v48, 0xFFFFFFFFLL, 0);
                if (v124)
                {
                  v95 = v117;
                  icu::UnicodeString::~UnicodeString(v124, &v116);
                  if (v95)
                  {
                    goto LABEL_142;
                  }
                }

                else
                {
                  if ((v124 & 0x8000u) == 0)
                  {
                    v90 = v124 >> 5;
                  }

                  else
                  {
                    v90 = DWORD1(v124);
                  }

                  if ((v117 & 0x8000u) == 0)
                  {
                    v91 = v117 >> 5;
                  }

                  else
                  {
                    v91 = DWORD1(v117);
                  }

                  if ((v117 & 1) != 0 || v90 != v91)
                  {
                    icu::UnicodeString::~UnicodeString(v117, &v116);
                  }

                  else
                  {
                    if ((v117 & 2) != 0)
                    {
                      v92 = &v117 + 2;
                    }

                    else
                    {
                      v92 = v118;
                    }

                    v93 = icu::UnicodeString::doEquals(&v123, v92, v90);
                    icu::UnicodeString::~UnicodeString(v94, &v116);
                    if (v93)
                    {
LABEL_142:
                      sub_1951E6DD0(a1, &v128, &v123);
                      LOWORD(v116) = 61;
                      v96 = icu::UnicodeString::doAppend(&v128, &v116, 0, 1);
                      if (SLOWORD(v122[2]) >= 0)
                      {
                        v97 = LOWORD(v122[2]) >> 5;
                      }

                      else
                      {
                        v97 = v122[3];
                      }

                      icu::UnicodeString::doAppend(v96, v122, 0, v97);
                      goto LABEL_148;
                    }
                  }
                }

                v120 = 0;
                v119 = 0u;
                v118 = 0u;
                v117 = 0u;
                v116 = &unk_1F0935D00;
                LOWORD(v117) = 2;
                icu::SimpleFormatter::format((a1 + 848), &v123, v122, &v116, &v115);
                sub_1951E6DD0(a1, &v128, &v116);
                icu::UnicodeString::~UnicodeString(v98, &v116);
LABEL_148:
                if (BYTE4(v121[1]))
                {
                  free(v121[0]);
                }

                v48 = (*(*v45 + 40))(v45, 0, &v115);
              }

              while (v48);
            }

            icu::UnicodeString::~UnicodeString(v47, v122);
          }

          if (v129 < 0x20u)
          {
            icu::UnicodeString::operator=(this, &v133);
          }

          else
          {
            if (*(this + 4))
            {
              v99 = 2;
            }

            else
            {
              v99 = *(this + 4) & 0x1E;
            }

            *(this + 4) = v99;
            icu::SimpleFormatter::format((a1 + 776), &v133, &v128, this, &v115);
            v100 = sub_1951E7150(this, a1 + 1192);
            if ((v100 & 0x80000000) == 0)
            {
              v101 = v100;
              memset(v122, 0, 64);
              v102 = *(a1 + 1200);
              if ((v102 & 0x8000) != 0)
              {
                v103 = *(a1 + 1204);
              }

              else
              {
                v103 = v102 >> 5;
              }

              icu::UnicodeString::UnicodeString(v122, this, v103 + v100);
              sub_1951E71B4(this, 0, v101);
              sub_1951E6DD0(a1, this, v122);
              icu::UnicodeString::~UnicodeString(v106, v122);
            }
          }

          sub_1951E5B4C(a1, 0, this);
          if (v45)
          {
LABEL_168:
            (*(*v45 + 8))(v45);
          }

          goto LABEL_169;
        }

        memset(v122, 0, 64);
        sub_1951E6E70(a1, (v110 + v7), &v123, 1);
        icu::UnicodeString::UnicodeString(v122, &v123);
        if ((v122[2] & 1) == 0)
        {
          sub_1951E6DD0(a1, &v128, v122);
          icu::UnicodeString::~UnicodeString(v27, v122);
          goto LABEL_56;
        }

LABEL_159:
        icu::UnicodeString::setToBogus(this);
        icu::UnicodeString::~UnicodeString(v104, v122);
LABEL_169:
        icu::UnicodeString::~UnicodeString(v105, &v123);
        icu::UnicodeString::~UnicodeString(v107, &v128);
        goto LABEL_170;
      }

      goto LABEL_43;
    }

LABEL_32:
    if (!v11)
    {
      v112 = 0;
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  icu::UnicodeString::setToBogus(this);
LABEL_171:
  v108 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t sub_1951E69B4(_DWORD *a1, char *a2, uint64_t a3)
{
  if (uaprv_onCalciumDevice())
  {
    v6 = *a2 != 67 || a2[1] != 78 || a2[2] || a1[230] != 259;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1[314];
  if (v7 == 514)
  {
    sub_1951E4ED0((a1 + 118), "Countries%variant", 0, a2, a3);
    if ((*(a3 + 8) & 1) == 0)
    {
      return a3;
    }

    v7 = a1[314];
  }

  if ((v7 != 522) & ~v6) != 0 || (sub_1951E4ED0((a1 + 118), "Countries%prc", 0, a2, a3), (*(a3 + 8)))
  {
    if (*a2 == 80 && a2[1] == 83 && !a2[2] || (sub_1951E4ED0((a1 + 118), "Countries%short", 0, a2, a3), (*(a3 + 8) & 1) != 0))
    {
      v8 = (a1 + 118);
      if (a1[315] == 768)
      {
        sub_1951E4DC0(v8, "Countries", 0, a2, a3);
      }

      else
      {
        sub_1951E4ED0(v8, "Countries", 0, a2, a3);
      }
    }
  }

  return a3;
}

uint64_t sub_1951E6B14(uint64_t a1, char *a2, uint64_t a3, int a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 1256);
  if (v8 == 514)
  {
    v9 = "Languages%variant";
LABEL_5:
    sub_1951E4ED0(a1 + 240, v9, 0, a2, a3);
    if ((*(a3 + 8) & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  if (v8 == 513)
  {
    v9 = "Languages%short";
    goto LABEL_5;
  }

LABEL_6:
  sub_1951E4ED0(a1 + 240, "Languages", 0, a2, a3);
  if (*(a3 + 8))
  {
    if (!strchr(a2, 95))
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      memset(v14, 0, sizeof(v14));
      icu::Locale::createCanonical(a2, v14);
      v10 = *(&v15 + 1);
      if (*(a1 + 1256) == 513)
      {
        sub_1951E4ED0(a1 + 240, "Languages%short", 0, *(&v15 + 1), a3);
        if ((*(a3 + 8) & 1) == 0)
        {
          icu::Locale::~Locale(v14);
          goto LABEL_14;
        }
      }

      sub_1951E4ED0(a1 + 240, "Languages", 0, v10, a3);
      icu::Locale::~Locale(v14);
      if ((*(a3 + 8) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (a4)
    {
      icu::UnicodeString::UnicodeString(v14, a2, 0xFFFFFFFFLL, 0);
      icu::UnicodeString::copyFrom(a3, v14, 0);
      icu::UnicodeString::~UnicodeString(v11, v14);
    }
  }

LABEL_14:
  v12 = *MEMORY[0x1E69E9840];
  return a3;
}

icu::UnicodeString *sub_1951E6CD8(uint64_t a1, char *a2, icu::UnicodeString *a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    sub_1951E4ED0(a1 + 240, "Scripts%stand-alone", 0, a2, a3);
    if ((*(a3 + 4) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = *(a1 + 1256);
  if (v8 == 514)
  {
    v9 = "Scripts%variant";
LABEL_7:
    sub_1951E4ED0(a1 + 240, v9, 0, a2, a3);
    if ((*(a3 + 4) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v8 == 513)
  {
    v9 = "Scripts%short";
    goto LABEL_7;
  }

LABEL_8:
  v10 = a1 + 240;
  if (*(a1 + 1260) != 768)
  {
    sub_1951E4ED0(v10, "Scripts", 0, a2, a3);
    if (a4)
    {
      return a3;
    }

    goto LABEL_11;
  }

  sub_1951E4DC0(v10, "Scripts", 0, a2, a3);
LABEL_10:
  if ((a4 & 1) == 0)
  {
LABEL_11:
    sub_1951E5B4C(a1, 1u, a3);
  }

  return a3;
}

UChar **sub_1951E6DD0(uint64_t a1, UChar **a2, UChar **a3)
{
  v7[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 4) <= 0x1Fu)
  {
    icu::UnicodeString::copyFrom(a2, a3, 0);
  }

  else
  {
    v7[0] = a2;
    v7[1] = a3;
    v6 = U_ZERO_ERROR;
    icu::SimpleFormatter::formatAndReplace((a1 + 704), v7, 2u, a2, 0, 0, &v6);
  }

  v4 = *MEMORY[0x1E69E9840];
  return a2;
}

icu::UnicodeString *sub_1951E6E70(uint64_t a1, char *a2, icu::UnicodeString *a3, char a4)
{
  v7 = *(a1 + 1260);
  v8 = a1 + 240;
  if (v7 == 768)
  {
    sub_1951E4DC0(v8, "Variants", 0, a2, a3);
    if (a4)
    {
      return a3;
    }

    goto LABEL_5;
  }

  sub_1951E4ED0(v8, "Variants", 0, a2, a3);
  if ((a4 & 1) == 0)
  {
LABEL_5:
    sub_1951E5B4C(a1, 3u, a3);
  }

  return a3;
}

icu::UnicodeString *sub_1951E6EF4(uint64_t a1, char *a2, icu::UnicodeString *a3, char a4)
{
  v7 = *(a1 + 1260);
  v8 = a1 + 240;
  if (v7 == 768)
  {
    sub_1951E4DC0(v8, "Keys", 0, a2, a3);
    if (a4)
    {
      return a3;
    }

    goto LABEL_5;
  }

  sub_1951E4ED0(v8, "Keys", 0, a2, a3);
  if ((a4 & 1) == 0)
  {
LABEL_5:
    sub_1951E5B4C(a1, 4u, a3);
  }

  return a3;
}

uint64_t sub_1951E6F78(_DWORD *a1, char *__s1, char *a3, uint64_t a4, char a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!strcmp(__s1, "currency"))
  {
    v24 = 0;
    memset(v25, 0, sizeof(v25));
    icu::UnicodeString::UnicodeString(v25, a3, 0xFFFFFFFFLL, 0);
    v23 = 0;
    TerminatedBuffer = icu::UnicodeString::getTerminatedBuffer(v25);
    BaseName = icu::Locale::getBaseName((a1 + 2));
    Name = ucurr_getName(TerminatedBuffer, BaseName, 1u, 0, &v23, &v24);
    if (v24 < 1)
    {
      v15 = Name;
      v16 = v23;
      icu::UnicodeString::unBogus(a4);
      v17 = *(a4 + 8);
      v18 = v17;
      v19 = v17 >> 5;
      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = *(a4 + 12);
      }

      icu::UnicodeString::doReplace(a4, 0, v20, v15, 0, v16);
      if ((a5 & 1) == 0)
      {
        sub_1951E5B4C(a1, 5u, a4);
      }
    }

    else
    {
      icu::UnicodeString::operator=(a4, v25);
    }

    icu::UnicodeString::~UnicodeString(v14, v25);
  }

  else
  {
    if (a1[314] == 513)
    {
      sub_1951E4ED0((a1 + 60), "Types%short", __s1, a3, a4);
      if ((*(a4 + 8) & 1) == 0)
      {
LABEL_6:
        if (a5)
        {
          goto LABEL_18;
        }

        goto LABEL_11;
      }
    }

    v10 = (a1 + 60);
    if (a1[315] == 768)
    {
      sub_1951E4DC0(v10, "Types", __s1, a3, a4);
      goto LABEL_6;
    }

    sub_1951E4ED0(v10, "Types", __s1, a3, a4);
    if ((a5 & 1) == 0)
    {
LABEL_11:
      sub_1951E5B4C(a1, 5u, a4);
    }
  }

LABEL_18:
  v21 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t sub_1951E7150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x8000u) == 0)
  {
    v3 = v2 >> 5;
  }

  else
  {
    v3 = *(a2 + 12);
  }

  if (*(a1 + 8) < 0)
  {
    v4 = *(a1 + 12);
    if (v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v4 = *(a1 + 8) >> 5;
    if (v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v2 & 2) != 0)
  {
    v5 = a2 + 10;
  }

  else
  {
    v5 = *(a2 + 24);
  }

  return icu::UnicodeString::indexOf(a1, v5, 0, v3, 0, v4);
}

uint64_t sub_1951E71B4(icu::UnicodeString *this, uint64_t a2, int a3)
{
  v5 = *(this + 4);
  if (a3 || (v5 & 1) == 0)
  {
    if ((v5 & 0x8000) != 0)
    {
      v6 = *(this + 3);
    }

    else
    {
      v6 = v5 >> 5;
    }

    if (v6 > a3)
    {
      if (a3 > 1023)
      {
        *(this + 4) = v5 | 0xFFE0;
        *(this + 3) = a3;
      }

      else
      {
        *(this + 4) = *(this + 4) & 0x1F | (32 * a3);
      }
    }
  }

  else
  {
    icu::UnicodeString::unBogus(this);
  }

  return icu::UnicodeString::doReplace(this, 0, a2, 0, 0, 0);
}

uint64_t sub_1951E7250(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  icu::Locale::Locale(v8, a2, 0, 0, 0);
  v5 = (*(*a1 + 48))(a1, v8, a3);
  icu::Locale::~Locale(v8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

icu::UnicodeString *sub_1951E7304(uint64_t a1, char *a2, icu::UnicodeString *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (strcmp("root", a2) && !strchr(a2, 95))
  {
    v7 = *(a1 + 1256);
    if (v7 == 514)
    {
      v8 = "Languages%variant";
    }

    else
    {
      if (v7 != 513)
      {
LABEL_9:
        sub_1951E4ED0(a1 + 240, "Languages", 0, a2, a3);
        if (*(a3 + 4))
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v14 = 0u;
          v15 = 0u;
          memset(v13, 0, sizeof(v13));
          icu::Locale::createCanonical(a2, v13);
          v9 = *(&v14 + 1);
          if (*(a1 + 1256) == 513)
          {
            sub_1951E4ED0(a1 + 240, "Languages%short", 0, *(&v14 + 1), a3);
            if ((*(a3 + 4) & 1) == 0)
            {
              sub_1951E5B4C(a1, 0, a3);
              icu::Locale::~Locale(v13);
              goto LABEL_17;
            }
          }

          sub_1951E4ED0(a1 + 240, "Languages", 0, v9, a3);
          icu::Locale::~Locale(v13);
          if ((*(a3 + 4) & 1) != 0 && *(a1 + 1260) == 768)
          {
            icu::UnicodeString::UnicodeString(v13, a2, 0xFFFFFFFFLL, 0);
            icu::UnicodeString::copyFrom(a3, v13, 0);
            icu::UnicodeString::~UnicodeString(v10, v13);
          }
        }

LABEL_16:
        sub_1951E5B4C(a1, 0, a3);
        goto LABEL_17;
      }

      v8 = "Languages%short";
    }

    sub_1951E4ED0(a1 + 240, v8, 0, a2, a3);
    if ((*(a3 + 4) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  icu::UnicodeString::UnicodeString(v13, a2, 0xFFFFFFFFLL, 0);
  a3 = icu::UnicodeString::operator=(a3, v13);
  icu::UnicodeString::~UnicodeString(v6, v13);
LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
  return a3;
}

icu::UnicodeString *sub_1951E7524(uint64_t a1, int32_t value, icu::UnicodeString *a3)
{
  Name = uscript_getName(value);

  return sub_1951E6CD8(a1, Name, a3, 0);
}

icu::UnicodeString *sub_1951E7570(_DWORD *a1, char *a2, icu::UnicodeString *a3, char a4)
{
  if (uaprv_onCalciumDevice())
  {
    v8 = *a2 != 67 || a2[1] != 78 || a2[2] || a1[230] != 259;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[314];
  switch(v9)
  {
    case 522:
      goto LABEL_13;
    case 514:
      v10 = "Countries%variant";
      goto LABEL_14;
    case 513:
      v10 = "Countries%short";
      goto LABEL_14;
  }

  if (v8)
  {
LABEL_13:
    v10 = "Countries%prc";
LABEL_14:
    sub_1951E4ED0((a1 + 118), v10, 0, a2, a3);
    if ((*(a3 + 4) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v11 = (a1 + 118);
  if (a1[315] != 768)
  {
    sub_1951E4ED0(v11, "Countries", 0, a2, a3);
    if (a4)
    {
      return a3;
    }

    goto LABEL_18;
  }

  sub_1951E4DC0(v11, "Countries", 0, a2, a3);
LABEL_17:
  if ((a4 & 1) == 0)
  {
LABEL_18:
    sub_1951E5B4C(a1, 2u, a3);
  }

  return a3;
}

void icu::LocaleDisplayNames::createInstance()
{
  operator new();
}

{
  operator new();
}

uint64_t uldn_open(const char *a1, uint64_t a2, int *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    Default = a1;
    if (!a1)
    {
      Default = uloc_getDefault(0);
    }

    icu::Locale::Locale(v6, Default, 0, 0, 0);
    operator new();
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t uldn_openForContext(const char *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    Default = a1;
    if (!a1)
    {
      Default = uloc_getDefault(0);
    }

    icu::Locale::Locale(v7, Default, 0, 0, 0);
    operator new();
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t uldn_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t uldn_getLocale(uint64_t result)
{
  if (result)
  {
    return *((*(*result + 24))(result) + 40);
  }

  return result;
}

uint64_t uldn_getDialectHandling(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t uldn_getContext(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 40))();
  }

  else
  {
    return 0;
  }
}

uint64_t uldn_localeDisplayName(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, int *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (!a1 || !a2 || ((v9 = a4, !a3) ? (v11 = a4 <= 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), (a4 & 0x80000000) != 0 || v12))
    {
      v5 = 0;
      *a5 = 1;
    }

    else
    {
      memset(v18, 0, sizeof(v18));
      icu::UnicodeString::UnicodeString(v18, a3, 0, a4);
      (*(*a1 + 56))(a1, a2, v18);
      if (BYTE8(v18[0]))
      {
        v5 = 0;
        v13 = 1;
        *a5 = 1;
      }

      else
      {
        v17 = a3;
        v5 = icu::UnicodeString::extract(v18, &v17, v9, a5);
        v16 = v17;
        v13 = &v16;
      }

      icu::UnicodeString::~UnicodeString(v13, v18);
    }
  }

  else
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uldn_languageDisplayName(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, int *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (!a1 || !a2 || ((v9 = a4, !a3) ? (v11 = a4 <= 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), (a4 & 0x80000000) != 0 || v12))
    {
      v5 = 0;
      *a5 = 1;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
      icu::UnicodeString::UnicodeString(v17, a3, 0, a4);
      (*(*a1 + 64))(a1, a2, v17);
      v16 = a3;
      v5 = icu::UnicodeString::extract(v17, &v16, v9, a5);
      v15 = v16;
      icu::UnicodeString::~UnicodeString(&v15, v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uldn_scriptDisplayName(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, int *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (!a1 || !a2 || ((v9 = a4, !a3) ? (v11 = a4 <= 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), (a4 & 0x80000000) != 0 || v12))
    {
      v5 = 0;
      *a5 = 1;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
      icu::UnicodeString::UnicodeString(v17, a3, 0, a4);
      (*(*a1 + 72))(a1, a2, v17);
      v16 = a3;
      v5 = icu::UnicodeString::extract(v17, &v16, v9, a5);
      v15 = v16;
      icu::UnicodeString::~UnicodeString(&v15, v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uldn_scriptCodeDisplayName(uint64_t a1, int32_t value, UChar *a3, uint64_t a4, int *a5)
{
  Name = uscript_getName(value);

  return uldn_scriptDisplayName(a1, Name, a3, a4, a5);
}

uint64_t uldn_regionDisplayName(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, int *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (!a1 || !a2 || ((v9 = a4, !a3) ? (v11 = a4 <= 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), (a4 & 0x80000000) != 0 || v12))
    {
      v5 = 0;
      *a5 = 1;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
      icu::UnicodeString::UnicodeString(v17, a3, 0, a4);
      (*(*a1 + 88))(a1, a2, v17);
      v16 = a3;
      v5 = icu::UnicodeString::extract(v17, &v16, v9, a5);
      v15 = v16;
      icu::UnicodeString::~UnicodeString(&v15, v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uldn_variantDisplayName(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, int *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (!a1 || !a2 || ((v9 = a4, !a3) ? (v11 = a4 <= 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), (a4 & 0x80000000) != 0 || v12))
    {
      v5 = 0;
      *a5 = 1;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
      icu::UnicodeString::UnicodeString(v17, a3, 0, a4);
      (*(*a1 + 96))(a1, a2, v17);
      v16 = a3;
      v5 = icu::UnicodeString::extract(v17, &v16, v9, a5);
      v15 = v16;
      icu::UnicodeString::~UnicodeString(&v15, v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uldn_keyDisplayName(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, int *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (!a1 || !a2 || ((v9 = a4, !a3) ? (v11 = a4 <= 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), (a4 & 0x80000000) != 0 || v12))
    {
      v5 = 0;
      *a5 = 1;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
      icu::UnicodeString::UnicodeString(v17, a3, 0, a4);
      (*(*a1 + 104))(a1, a2, v17);
      v16 = a3;
      v5 = icu::UnicodeString::extract(v17, &v16, v9, a5);
      v15 = v16;
      icu::UnicodeString::~UnicodeString(&v15, v17);
    }
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t uldn_keyValueDisplayName(uint64_t a1, uint64_t a2, uint64_t a3, UChar *a4, uint64_t a5, int *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (a1 && a2 && a3 && ((v11 = a5, !a4) ? (v13 = a5 <= 0) : (v13 = 1), v13 ? (v14 = 0) : (v14 = 1), (a5 & 0x80000000) == 0 && !v14))
    {
      memset(v19, 0, sizeof(v19));
      icu::UnicodeString::UnicodeString(v19, a4, 0, a5);
      (*(*a1 + 112))(a1, a2, a3, v19);
      v18 = a4;
      v6 = icu::UnicodeString::extract(v19, &v18, v11, a6);
      v17 = v18;
      icu::UnicodeString::~UnicodeString(&v17, v19);
    }

    else
    {
      v6 = 0;
      *a6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

void *sub_1951E82F8(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v15 = 0;
  __s1 = a2;
  memset(v14, 0, sizeof(v14));
  result = (*(*a3 + 88))(v14, a3, a5);
  if (*a5 <= 0)
  {
    result = icu::ResourceTable::getKeyAndValue(v14, 0, &__s1, a3);
    if (result)
    {
      v9 = 1;
      while (1)
      {
        v10 = __s1;
        if (!strcmp(__s1, "key"))
        {
          break;
        }

        if (!strcmp(v10, "keyValue"))
        {
          v11 = 5;
          goto LABEL_17;
        }

        if (!strcmp(v10, "languages"))
        {
          v11 = 0;
          goto LABEL_17;
        }

        if (!strcmp(v10, "script"))
        {
          v11 = 1;
          goto LABEL_17;
        }

        if (!strcmp(v10, "territory"))
        {
          v11 = 2;
          goto LABEL_17;
        }

        if (!strcmp(v10, "variant"))
        {
          v11 = 3;
LABEL_17:
          v13 = 0;
          result = (*(*a3 + 64))(a3, &v13, a5);
          if (*a5 > 0)
          {
            return result;
          }

          if (v13 >= 2)
          {
            v12 = *(a1 + 16);
            if (*(result + (*(v12 + 920) != 259)))
            {
              *(v12 + v11 + 1264) = 1;
              *(a1 + 8) = 1;
            }
          }
        }

        result = icu::ResourceTable::getKeyAndValue(v14, v9++, &__s1, a3);
        if (!result)
        {
          return result;
        }
      }

      v11 = 4;
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_1951E84F8(char *a1, UErrorCode *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  umtx_lock(&unk_1ED442138);
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    *v11 = 0u;
    v12 = 0u;
    ulocimp_getName(a1, a2, v11);
  }

  else
  {
    DefaultLocaleID = uprv_getDefaultLocaleID();
    v13 = 0u;
    v14 = 0u;
    *v11 = 0u;
    v12 = 0u;
    ulocimp_canonicalize(DefaultLocaleID, a2, v11);
  }

  if (*a2 >= 1)
  {
    goto LABEL_5;
  }

  v6 = qword_1ED442128;
  if (!qword_1ED442128)
  {
    v10 = uhash_open(uhash_hashChars, uhash_compareChars, 0, a2);
    qword_1ED442128 = v10;
    if (*a2 >= 1)
    {
LABEL_5:
      v5 = qword_1ED442120;
      goto LABEL_9;
    }

    uhash_setValueDeleter(v10, sub_1951E86EC);
    sub_1952376A4(7u, sub_1951E8718);
    v6 = qword_1ED442128;
  }

  v7 = uhash_get(v6, v11[0]);
  if (!v7)
  {
    operator new();
  }

  v5 = v7;
  qword_1ED442120 = v7;
LABEL_9:
  if (BYTE4(v11[1]))
  {
    free(v11[0]);
  }

  umtx_unlock(&unk_1ED442138);
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1951E86EC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1951E8718()
{
  if (qword_1ED442130)
  {
    v0 = qword_1ED442130 - 16;
    v1 = *(qword_1ED442130 - 8);
    if (v1)
    {
      v2 = (qword_1ED442130 + 224 * v1 - 224);
      v3 = -224 * v1;
      do
      {
        icu::Locale::~Locale(v2);
        v2 = (v4 - 224);
        v3 += 224;
      }

      while (v3);
    }

    MEMORY[0x19A8B25E0](v0, 0x1091C80EF191B47);
  }

  qword_1ED442130 = 0;
  atomic_store(0, &dword_1ED442188);
  if (qword_1ED442128)
  {
    uhash_close(qword_1ED442128);
    qword_1ED442128 = 0;
  }

  qword_1ED442120 = 0;
  return 1;
}

icu::Locale *icu::Locale::Locale(icu::Locale *a1)
{
  *a1 = &unk_1F0932340;
  *(a1 + 5) = a1 + 48;
  *(a1 + 26) = 0;
  icu::Locale::setToBogus(a1);
  return a1;
}

{
  *a1 = &unk_1F0932340;
  *(a1 + 5) = a1 + 48;
  *(a1 + 26) = 0;
  icu::Locale::setToBogus(a1);
  return a1;
}

icu::Locale *icu::Locale::init(icu::Locale *this, char *a2, int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  *(this + 216) = 0;
  v6 = *(this + 26);
  v7 = *(this + 5);
  v8 = this + 48;
  if (v6 != v7 && v6 != v8)
  {
    free(v6);
    v7 = *(this + 5);
  }

  *(this + 26) = 0;
  if (v7 != v8)
  {
    free(v7);
    *(this + 5) = v8;
    v7 = this + 48;
  }

  v46 = 0;
  memset(v45, 0, sizeof(v45));
  __n[0] = 0;
  __n[1] = 0;
  v44 = 0;
  if (!a2)
  {
    Default = icu::Locale::getDefault(v6);
    icu::Locale::operator=(this, Default);
    goto LABEL_62;
  }

  *(this + 26) = 0;
  *(this + 20) = 0;
  *(this + 8) = 0;
  v41 = U_ZERO_ERROR;
  if (a3)
  {
    Name = uloc_canonicalize(a2, v7, 157, &v41);
  }

  else
  {
    Name = uloc_getName(a2, v7, 157, &v41);
  }

  v12 = Name;
  if (v41 == U_BUFFER_OVERFLOW_ERROR || Name >= 157)
  {
    v13 = Name + 1;
    v14 = malloc_type_malloc(Name + 1, 0x100004077774924uLL);
    if (!v14)
    {
LABEL_61:
      icu::Locale::setToBogus(this);
      goto LABEL_62;
    }

    *(this + 5) = v14;
    v41 = U_ZERO_ERROR;
    if (a3)
    {
      v15 = uloc_canonicalize(a2, v14, v13, &v41);
    }

    else
    {
      v15 = uloc_getName(a2, v14, v13, &v41);
    }

    v12 = v15;
  }

  if (v41 > U_ZERO_ERROR || v41 == U_STRING_NOT_TERMINATED_WARNING)
  {
    goto LABEL_61;
  }

  __dst = this + 8;
  v40 = a3;
  *(this + 8) = v12;
  v16 = *(this + 5);
  *&v45[0] = v16;
  v17 = strchr(v16, 64);
  v18 = strchr(v16, 95);
  v19 = 0;
  if (v18)
  {
    v20 = v16;
    while (!v17 || v18 < v17)
    {
      v21 = v18 + 1;
      *(v45 + v19 + 1) = v18 + 1;
      *(__n + v19) = v18 - v20;
      v18 = strchr(v18 + 1, 95);
      if (++v19 <= 2)
      {
        v20 = v21;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

    v21 = v20;
  }

  else
  {
    v21 = v16;
  }

LABEL_31:
  v22 = strchr(v21, 64);
  v23 = strchr(v21, 46);
  v24 = v22 <= v23 || v23 == 0;
  v25 = !v24 || v22 == 0;
  v26 = v25 ? v23 : v22;
  v27 = v26 - v21;
  v28 = v22 | v23 ? v27 : v12 + v16 - v21;
  *(__n + v19) = v28;
  v29 = LODWORD(__n[0]);
  if (SLODWORD(__n[0]) > 11)
  {
    goto LABEL_61;
  }

  if (SLODWORD(__n[0]) >= 1)
  {
    memcpy(__dst, v16, LODWORD(__n[0]));
    __dst[v29] = 0;
  }

  if (HIDWORD(__n[0]) == 4 && (v30 = *(&v45[0] + 1), uprv_isASCIILetter(**(&v45[0] + 1))) && uprv_isASCIILetter(*(v30 + 1)) && uprv_isASCIILetter(*(v30 + 2)) && uprv_isASCIILetter(*(v30 + 3)))
  {
    *(this + 5) = *v30;
    *(this + 24) = 0;
    v31 = 2;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(__n + v31);
  if ((v32 - 2) >= 2)
  {
    if (v32)
    {
      v33 = v31;
    }

    else
    {
      v33 = v31 + 1;
    }
  }

  else
  {
    memcpy(this + 26, *(v45 + v31), *(__n + v31));
    *(this + v32 + 26) = 0;
    v33 = v31 + 1;
  }

  if (*(__n + v33) >= 1)
  {
    *(this + 8) = *(v45 + v33) - *(this + 10);
  }

  v41 = U_ZERO_ERROR;
  icu::Locale::initBaseName(this, &v41);
  if (v41 > U_ZERO_ERROR)
  {
    goto LABEL_61;
  }

  if (!v40)
  {
    goto LABEL_62;
  }

  v36 = *(this + 5);
  v37 = *v36;
  if (v37 == 101)
  {
    if (v36[1] == 110 && !v36[2])
    {
      goto LABEL_62;
    }
  }

  else if (v37 == 99 && !v36[1])
  {
    goto LABEL_62;
  }

  if (!strcmp(*(this + 5), "en_US"))
  {
    goto LABEL_62;
  }

  if (atomic_load_explicit(&dword_1EAEC9780, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9780))
  {
    if (dword_1EAEC9784 >= 1)
    {
      v41 = dword_1EAEC9784;
      goto LABEL_77;
    }
  }

  else
  {
    sub_1951ED9C4(&v41);
    dword_1EAEC9784 = v41;
    icu::umtx_initImplPostInit(&dword_1EAEC9780);
  }

  if (v41 <= U_ZERO_ERROR && uhash_geti(qword_1EAEC9778, v36))
  {
    goto LABEL_62;
  }

LABEL_77:
  memset(&v42[1], 0, 56);
  v42[0] = &v42[1] + 5;
  LODWORD(v42[1]) = 40;
  if (sub_1951E9670(this, v42, &v41))
  {
    icu::Locale::init(this, v42[0], 0);
  }

  v38 = v41;
  if (BYTE4(v42[1]))
  {
    free(v42[0]);
  }

  if (v38 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    goto LABEL_61;
  }

LABEL_62:
  v34 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::Locale::getDefault(icu::Locale *this)
{
  umtx_lock(&unk_1ED442138);
  v1 = qword_1ED442120;
  umtx_unlock(&unk_1ED442138);
  if (!v1)
  {
    v3 = 0;
    return sub_1951E84F8(0, &v3);
  }

  return v1;
}

void icu::Locale::~Locale(icu::Locale *this)
{
  *this = &unk_1F0932340;
  v2 = *(this + 26);
  v3 = *(this + 5);
  v4 = this + 48;
  if (v2 != v3 && v2 != v4)
  {
    free(v2);
    v3 = *(this + 5);
  }

  *(this + 26) = 0;
  if (v3 != v4)
  {
    free(v3);
    *(this + 5) = 0;
  }

  icu::UObject::~UObject(this);
}

{
  icu::Locale::~Locale(this);

  JUMPOUT(0x19A8B2600);
}

icu::Locale *icu::Locale::Locale(icu::Locale *this)
{
  *this = &unk_1F0932340;
  *(this + 5) = this + 48;
  *(this + 26) = 0;
  return icu::Locale::init(this, 0, 0);
}

uint64_t icu::Locale::Locale(icu::Locale *this)
{
  *this = &unk_1F0932340;
  *(this + 5) = this + 48;
  *(this + 26) = 0;
  return icu::Locale::init(this, 0, 0);
}

void icu::Locale::setToBogus(icu::Locale *this)
{
  v2 = *(this + 26);
  v3 = *(this + 5);
  v4 = this + 48;
  if (v2 != v3 && v2 != v4)
  {
    free(v2);
    v3 = *(this + 5);
  }

  *(this + 26) = 0;
  if (v3 != v4)
  {
    free(v3);
    *(this + 5) = v4;
  }

  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 20) = 0;
  *(this + 26) = 0;
  *(this + 216) = 1;
  *(this + 8) = 0;
}

icu::Locale *icu::Locale::Locale(icu::Locale *this, const char *__s, const char *a3, const char *a4, char *a5)
{
  v6 = a4;
  v27[8] = *MEMORY[0x1E69E9840];
  *this = &unk_1F0932340;
  *(this + 5) = this + 48;
  *(this + 26) = 0;
  if (!__s && !a3 && !a4)
  {
    icu::Locale::init(this, 0, 0);
    goto LABEL_41;
  }

  v26 = U_ZERO_ERROR;
  if (__s)
  {
    v10 = strlen(__s);
    if (v10 > 0x15555555)
    {
      icu::Locale::setToBogus(this);
      goto LABEL_41;
    }
  }

  else
  {
    v10 = 0;
  }

  memset(&v27[1], 0, 56);
  v27[0] = &v27[1] + 5;
  LODWORD(v27[1]) = 40;
  icu::CharString::append(v27, __s, v10, &v26);
  if (a3)
  {
    v11 = strlen(a3);
    if (v11 > 0x15555555)
    {
LABEL_38:
      icu::Locale::setToBogus(this);
      goto LABEL_39;
    }

    if (v6)
    {
      goto LABEL_12;
    }

LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  v11 = 0;
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_12:
  v12 = v6 - 2;
  do
  {
    v13 = *(v12++ + 2);
  }

  while (v13 == 95);
  v14 = v12 + 1;
  v15 = strlen(v12 + 1);
  if (v15 > 0x15555555)
  {
    goto LABEL_38;
  }

  v16 = v15 & 0x1FFFFFFF;
  LODWORD(v6) = v15 != 0;
  while (v16 >= 2)
  {
    v17 = v16 - 1;
    v18 = v12[v16--];
    if (v18 != 95)
    {
      LODWORD(v6) = v17 + 1;
      break;
    }
  }

LABEL_21:
  if (a5)
  {
    v19 = strlen(a5);
    if (v19 > 0x15555555)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v6 | v11)
  {
    icu::CharString::append(v27, 95, &v26);
  }

  if (v11)
  {
    icu::StringPiece::StringPiece(&v24, a3);
    icu::CharString::append(v27, v24, v25, &v26);
  }

  if (v6)
  {
    v20 = icu::CharString::append(v27, 95, &v26);
    icu::CharString::append(v20, v14, v6, &v26);
  }

  if (v19)
  {
    if (strchr(a5, 61))
    {
      v21 = 64;
    }

    else
    {
      v21 = 95;
      icu::CharString::append(v27, 95, &v26);
      if (v6)
      {
        goto LABEL_36;
      }
    }

    icu::CharString::append(v27, v21, &v26);
LABEL_36:
    icu::StringPiece::StringPiece(&v24, a5);
    icu::CharString::append(v27, v24, v25, &v26);
  }

  if (v26 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    goto LABEL_38;
  }

  icu::Locale::init(this, v27[0], 0);
LABEL_39:
  if (BYTE4(v27[1]))
  {
    free(v27[0]);
  }

LABEL_41:
  v22 = *MEMORY[0x1E69E9840];
  return this;
}

icu::Locale *icu::Locale::Locale(icu::Locale *this, uint64_t a2)
{
  *this = &unk_1F0932340;
  *(this + 5) = this + 48;
  *(this + 26) = 0;
  return icu::Locale::operator=(this, a2);
}

{
  *this = &unk_1F0932340;
  *(this + 5) = this + 48;
  *(this + 26) = 0;
  return icu::Locale::operator=(this, a2);
}

icu::Locale *icu::Locale::operator=(icu::Locale *this, uint64_t a2)
{
  if (this != a2)
  {
    icu::Locale::setToBogus(this);
    v4 = *(a2 + 40);
    if (v4 == (a2 + 48))
    {
      strcpy(this + 48, (a2 + 48));
    }

    else if (v4)
    {
      v5 = uprv_strdup(v4);
      *(this + 5) = v5;
      if (!v5)
      {
        return this;
      }
    }

    else
    {
      *(this + 5) = 0;
    }

    v6 = *(a2 + 208);
    if (v6 == *(a2 + 40))
    {
      *(this + 26) = *(this + 5);
    }

    else if (v6)
    {
      v7 = uprv_strdup(v6);
      *(this + 26) = v7;
      if (!v7)
      {
        return this;
      }
    }

    strcpy(this + 8, (a2 + 8));
    strcpy(this + 20, (a2 + 20));
    strcpy(this + 26, (a2 + 26));
    *(this + 8) = *(a2 + 32);
    *(this + 216) = *(a2 + 216);
  }

  return this;
}

uint64_t icu::Locale::Locale(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0932340;
  *(a1 + 40) = a1 + 48;
  *(a1 + 208) = a1 + 48;
  return icu::Locale::operator=(a1, a2);
}

{
  *a1 = &unk_1F0932340;
  *(a1 + 40) = a1 + 48;
  *(a1 + 208) = a1 + 48;
  return icu::Locale::operator=(a1, a2);
}

uint64_t icu::Locale::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 208);
  v5 = *(a1 + 40);
  v6 = (a1 + 48);
  if (v4 != v5 && v4 != v6)
  {
    free(v4);
    v5 = *(a1 + 40);
  }

  if (v5 != v6)
  {
    free(v5);
  }

  v8 = *(a2 + 40);
  v9 = a2 + 48;
  v10 = *(a2 + 208);
  if (v8 == a2 + 48 || v10 == v9)
  {
    strcpy((a1 + 48), (a2 + 48));
    v8 = *(a2 + 40);
    v10 = *(a2 + 208);
  }

  if (v8 == v9)
  {
    v8 = a1 + 48;
  }

  *(a1 + 40) = v8;
  if (v10 != *(a2 + 40))
  {
    v8 = v10;
  }

  if (v10 == v9)
  {
    v12 = a1 + 48;
  }

  else
  {
    v12 = v8;
  }

  *(a1 + 208) = v12;
  strcpy((a1 + 8), (a2 + 8));
  strcpy((a1 + 20), (a2 + 20));
  strcpy((a1 + 26), (a2 + 26));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 40) = v9;
  *(a2 + 208) = v9;
  return a1;
}

uint64_t ulocimp_isCanonicalizedLocaleForTest(const char *__s)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  icu::Locale::Locale(v7, __s, 0, 0, 0);
  v5 = 0;
  memset(&v6[1], 0, 56);
  v6[0] = &v6[1] + 5;
  LODWORD(v6[1]) = 40;
  v1 = sub_1951E9670(v7, v6, &v5);
  v2 = v5;
  if (BYTE4(v6[1]))
  {
    free(v6[0]);
  }

  icu::Locale::~Locale(v7);
  v3 = *MEMORY[0x1E69E9840];
  return (v2 < 1) & ~v1;
}

uint64_t sub_1951E9670(uint64_t a1, int *a2, int *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    v3 = 0;
    goto LABEL_6;
  }

  v45 = 0u;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  *__s = 0u;
  icu::UVector::UVector(v44, 0, sub_1951EBC84, a3);
  *(&v45 + 1) = 0;
  if (*a3 > 0)
  {
    goto LABEL_4;
  }

  if (atomic_load_explicit(&dword_1EAEC9770, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9770))
  {
    if (dword_1EAEC9774 >= 1)
    {
      v3 = 0;
      *a3 = dword_1EAEC9774;
      *(&v45 + 1) = qword_1EAEC9768;
      goto LABEL_5;
    }
  }

  else
  {
    sub_1951ECBFC(a3);
    dword_1EAEC9774 = *a3;
    icu::umtx_initImplPostInit(&dword_1EAEC9770);
  }

  v9 = *a3;
  *(&v45 + 1) = qword_1EAEC9768;
  if (v9 > 0)
  {
LABEL_4:
    v3 = 0;
    goto LABEL_5;
  }

  a2[14] = 0;
  **a2 = 0;
  v10 = *(a1 + 26);
  v11 = (a1 + 8);
  if (!*(a1 + 8))
  {
    v11 = 0;
  }

  v12 = (a1 + 20);
  v13 = v55;
  if (!*(a1 + 20))
  {
    v12 = 0;
  }

  __s[0] = v11;
  __s[1] = v12;
  if (v10)
  {
    v14 = a1 + 26;
  }

  else
  {
    v14 = 0;
  }

  *&v43 = v14;
  if (*(a1 + 216))
  {
    v15 = "";
  }

  else
  {
    v15 = (*(a1 + 208) + *(a1 + 32));
  }

  memset(&v55[1], 0, 48);
  v55[0] = &v55[1] + 5;
  LODWORD(v55[1]) = 40;
  v56 = 0;
  icu::CharString::append(v55, v15, -1, a3);
  if (v56)
  {
    if (*a3 > 0)
    {
LABEL_37:
      v3 = 0;
      goto LABEL_41;
    }

    v16 = v55[0];
    T_CString_toLowerCase(v55[0]);
    v17 = strchr(v16, 95);
    if (v17 && *a3 <= 0)
    {
      v18 = v17;
      do
      {
        *v18 = 0;
        if (*v16 && (icu::UVector::indexOf(v44, v16, 0) & 0x80000000) != 0)
        {
          icu::UVector::addElement(v44, v16, a3);
        }

        v16 = v18 + 1;
        v19 = strchr(v18 + 1, 95);
        if (!v19)
        {
          break;
        }

        v18 = v19;
      }

      while (*a3 < 1);
    }

    if (*v16 && (icu::UVector::indexOf(v44, v16, 0) & 0x80000000) != 0)
    {
      icu::UVector::addElement(v44, v16, a3);
    }
  }

  if (*a3 > 0)
  {
    goto LABEL_37;
  }

  icu::UVector::sort(v44, j__strcmp, a3);
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  icu::UVector::UVector(v46, sub_1951ED848, 0, 10, a3);
  if (*a3 > 0)
  {
LABEL_39:
    v3 = 0;
    goto LABEL_40;
  }

  v20 = 0;
  while (1)
  {
    if (sub_1951EBCA4(__s, 1, 1, 1, v46, a3) & 1) != 0 || (sub_1951EBCA4(__s, 1, 1, 0, v46, a3) & 1) != 0 || (sub_1951EBCA4(__s, 1, 0, 1, v46, a3) & 1) != 0 || (sub_1951EBCA4(__s, 1, 0, 0, v46, a3) & 1) != 0 || (sub_1951EBCA4(__s, 0, 0, 1, v46, a3))
    {
      goto LABEL_51;
    }

    if (*a3 <= 0)
    {
      if (!v43)
      {
        goto LABEL_122;
      }

      v21 = uhash_get(*(*(&v45 + 1) + 24), v43);
      if (v21)
      {
        v22 = v21;
        if (!strchr(v21, 32))
        {
          *&v43 = v22;
          goto LABEL_51;
        }

        memset(v57, 0, sizeof(v57));
        icu::LocaleBuilder::LocaleBuilder(v51);
        if (__s[0])
        {
          v23 = __s[0];
        }

        else
        {
          v23 = "und";
        }

        icu::StringPiece::StringPiece(v48, v23);
        v24 = icu::LocaleBuilder::setLanguage(v51, v48[0], v48[1]);
        icu::StringPiece::StringPiece(v48, __s[1]);
        v25 = icu::LocaleBuilder::setScript(v24, v48[0], v48[1]);
        icu::LocaleBuilder::build(v25, a3, v57);
        icu::LocaleBuilder::~LocaleBuilder(v51);
        icu::Locale::addLikelySubtags(v57, a3);
        v51[0] = 0;
        if (strlen(&v57[1] + 10) && strstr(v22, &v57[1] + 10))
        {
          operator new();
        }

        if (*a3 <= 0)
        {
          operator new();
        }

        sub_1951ED8A4(v51);
        icu::Locale::~Locale(v57);
      }

      if (*a3 <= 0)
      {
LABEL_122:
        if (__s[1])
        {
          v26 = uhash_get(*(*(&v45 + 1) + 16), __s[1]);
          if (v26)
          {
            __s[1] = v26;
            goto LABEL_51;
          }
        }
      }
    }

    if (!sub_1951EC378(__s, a3))
    {
      break;
    }

LABEL_51:
    --v20;
    if (*a3 > 0)
    {
      goto LABEL_39;
    }
  }

  if (*a3 > 0)
  {
    goto LABEL_39;
  }

  KeywordsStart = locale_getKeywordsStart(*(a1 + 40));
  v28 = KeywordsStart;
  if (!v20 && SDWORD2(v44[0]) <= 1 && !KeywordsStart)
  {
    goto LABEL_39;
  }

  sub_1951EC498(__s, a2, a3);
  if (*a3 >= 1)
  {
    goto LABEL_39;
  }

  if (!v28)
  {
    goto LABEL_113;
  }

  memset(&v57[2] + 8, 0, 184);
  memset(v57 + 8, 0, 32);
  *&v57[0] = &unk_1F0932340;
  *(&v57[2] + 1) = &v57[3];
  icu::Locale::operator=(v57, a1);
  Keywords = icu::Locale::createKeywords(a1, a3);
  v30 = Keywords;
  if (!Keywords)
  {
    goto LABEL_110;
  }

  if (*a3 > 0)
  {
    goto LABEL_110;
  }

  v31 = (*(*Keywords + 40))(Keywords, 0, a3);
  if (!v31)
  {
    goto LABEL_110;
  }

  v32 = v31;
  v33 = 0;
  while (2)
  {
    v34 = *v32;
    if (v34 == 115)
    {
      v35 = *(v32 + 1);
      if (v35 == 100)
      {
        v36 = -*(v32 + 2);
      }

      else
      {
        v36 = 100 - v35;
      }
    }

    else
    {
      v36 = 115 - v34;
    }

    if (v36)
    {
      if (v34 == 114)
      {
        v37 = *(v32 + 1);
        v38 = v37 == 103 ? -*(v32 + 2) : 103 - v37;
      }

      else
      {
        v38 = 114 - v34;
      }

      if (v38)
      {
        if (v34 == 116 ? -*(v32 + 1) : 116 - v34)
        {
          goto LABEL_107;
        }
      }
    }

    v53 = 0u;
    v54 = 0u;
    *v51 = 0u;
    v52 = 0u;
    icu::StringPiece::StringPiece(v48, v32);
    sub_1951EB5A0(a1, v48[0], v48[1], a3, v51);
    if (*a3 < 1)
    {
      v50 = 0;
      memset(&v48[1], 0, 48);
      v48[0] = &v48[1] + 5;
      LODWORD(v48[1]) = 40;
      v49 = 0;
      if (strlen(v32) == 2)
      {
        v13 = v13 & 0xFFFFFFFF00000000 | DWORD2(v54);
        if ((sub_1951EC78C(__s, v51[0], v13, v48, a3) & 1) == 0)
        {
LABEL_101:
          v40 = *a3 > 0;
          if (BYTE4(v48[1]))
          {
            free(v48[0]);
          }

          goto LABEL_103;
        }
      }

      else if (!sub_1951EC848(v51, v48, a3))
      {
        goto LABEL_101;
      }

      ++v33;
      sub_1951DE32C(v57, v32, v48[0], a3);
      goto LABEL_101;
    }

    *a3 = 0;
    v40 = 6;
LABEL_103:
    if (BYTE4(v51[1]))
    {
      free(v51[0]);
    }

    if (v40 != 6 && v40)
    {
      (*(*v30 + 8))(v30);
      icu::Locale::~Locale(v57);
      goto LABEL_39;
    }

LABEL_107:
    v32 = (*(*v30 + 40))(v30, 0, a3);
    if (v32)
    {
      continue;
    }

    break;
  }

  if (v33)
  {
    v28 = locale_getKeywordsStart(*(&v57[2] + 1));
  }

LABEL_110:
  icu::StringPiece::StringPiece(v51, v28);
  icu::CharString::append(a2, v51[0], v51[1], a3);
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  icu::Locale::~Locale(v57);
  if (*a3 > 0)
  {
    goto LABEL_39;
  }

LABEL_113:
  v41 = *a2;
  if (!strcmp(*a2, *(a1 + 40)))
  {
    v3 = 0;
    a2[14] = 0;
    *v41 = 0;
  }

  else
  {
    v3 = 1;
  }

LABEL_40:
  icu::UVector::~UVector(v46);
LABEL_41:
  if (BYTE4(v55[1]))
  {
    free(v55[0]);
  }

LABEL_5:
  icu::UVector::~UVector(v44);
LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

char **icu::Locale::initBaseName(char **this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v3 = this;
    v4 = this[5];
    v5 = strchr(v4, 64);
    this = strchr(v4, 61);
    if (v5)
    {
      v6 = v5 >= this;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v3[26] = v4;
    }

    else
    {
      v7 = v5 - v4;
      this = malloc_type_malloc(((v7 << 32) + 0x100000000) >> 32, 0x100004077774924uLL);
      if (this)
      {
        v3[26] = this;
        this = strncpy(this, v3[5], v7);
        v3[26][v7] = 0;
        if (*(v3 + 8) > v7)
        {
          *(v3 + 8) = v7;
        }
      }

      else
      {
        *a2 = U_MEMORY_ALLOCATION_ERROR;
      }
    }
  }

  return this;
}

uint64_t icu::Locale::hashCode(icu::Locale *this)
{
  v1 = *(this + 5);
  v2 = strlen(v1);

  return ustr_hashCharsN(v1, v2);
}

uint64_t icu::Locale::setDefault(uint64_t this, UErrorCode *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    return sub_1951E84F8(*(this + 40), a2);
  }

  return this;
}

void icu::Locale::addLikelySubtags(char **this, UErrorCode *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v7 = 0u;
    v8 = 0u;
    *v5 = 0u;
    v6 = 0u;
    ulocimp_addLikelySubtags(this[5], a2, v5);
    if (*a2 <= 0)
    {
      icu::Locale::init(this, v5[0], 0);
      if (*(this + 216))
      {
        *a2 = U_ILLEGAL_ARGUMENT_ERROR;
      }
    }

    if (BYTE4(v5[1]))
    {
      free(v5[0]);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void icu::Locale::minimizeSubtags(char **this, UErrorCode *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v7 = 0u;
    v8 = 0u;
    *v5 = 0u;
    v6 = 0u;
    ulocimp_minimizeSubtags(this[5], a2, v5);
    if (*a2 <= 0)
    {
      icu::Locale::init(this, v5[0], 0);
      if (*(this + 216))
      {
        *a2 = U_ILLEGAL_ARGUMENT_ERROR;
      }
    }

    if (BYTE4(v5[1]))
    {
      free(v5[0]);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void icu::Locale::canonicalize(const char **this, UErrorCode *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    if (*(this + 216))
    {
      *a2 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v8 = 0;
      memset(&v7[1], 0, 48);
      icu::StringPiece::StringPiece(&v5, this[5]);
      v7[0] = &v7[1] + 5;
      LODWORD(v7[1]) = 40;
      WORD2(v7[1]) = 0;
      LODWORD(v8) = 0;
      icu::CharString::append(v7, v5, v6, a2);
      if (*a2 <= 0)
      {
        icu::Locale::init(this, v7[0], 1);
        if (*(this + 216))
        {
          *a2 = U_ILLEGAL_ARGUMENT_ERROR;
        }
      }

      if (BYTE4(v7[1]))
      {
        free(v7[0]);
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void icu::Locale::forLanguageTag(const char *a1@<X0>, int a2@<W1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  *(a4 + 40) = 0u;
  *(a4 + 216) = 0;
  *(a4 + 200) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 72) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *a4 = &unk_1F0932340;
  *(a4 + 40) = a4 + 48;
  icu::Locale::setToBogus(a4);
  if (*a3 <= 0)
  {
    v9 = 0;
    v12 = 0u;
    v13 = 0u;
    *v10 = 0u;
    v11 = 0u;
    ulocimp_forLanguageTag(a1, &v9, a3, a2, v10);
    if (*a3 <= 0)
    {
      if (v9 != a2 || (icu::Locale::init(a4, v10[0], 0), *(a4 + 216)))
      {
        *a3 = U_ILLEGAL_ARGUMENT_ERROR;
      }
    }

    if (BYTE4(v10[1]))
    {
      free(v10[0]);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void icu::Locale::toLanguageTag(char **this, icu::ByteSink *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (*(this + 216))
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      ulocimp_toLanguageTag(this[5], a2, 0, a3);
    }
  }
}

icu::Locale *icu::Locale::createFromName@<X0>(icu::Locale *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v5 = icu::Locale::Locale(a2, "", 0, 0, 0);

    return icu::Locale::init(v5, this, 0);
  }

  else
  {
    Default = icu::Locale::getDefault(0);
    *a2 = &unk_1F0932340;
    *(a2 + 40) = a2 + 48;
    *(a2 + 208) = 0;

    return icu::Locale::operator=(a2, Default);
  }
}

icu::Locale *icu::Locale::createCanonical@<X0>(icu::Locale *this@<X0>, icu::Locale *a2@<X8>)
{
  *(a2 + 12) = 0u;
  *(a2 + 13) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  v4 = icu::Locale::Locale(a2, "", 0, 0, 0);

  return icu::Locale::init(v4, this, 1);
}

uint64_t icu::Locale::getRoot(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 4032;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getLocale(icu::Locale *this)
{
  v1 = this;
  LocaleCache = icu::Locale::getLocaleCache(this);
  v3 = v1;
  if (!LocaleCache)
  {
    v3 = 0;
  }

  return LocaleCache + 224 * v3;
}

uint64_t icu::Locale::getGerman(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 448;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getItalian(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 672;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getJapanese(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 896;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getKorean(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 1120;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getChinese(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 1344;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getSimplifiedChinese(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 2688;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getTraditionalChinese(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 2912;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getFrance(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 1568;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getGermany(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 1792;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getItaly(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 2016;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getJapan(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 2240;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getKorea(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 2464;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getChina(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 2688;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getPRC(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 2688;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getTaiwan(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 2912;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getUK(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 3136;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getUS(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 3360;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getCanada(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 3584;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getCanadaFrench(icu::Locale *this)
{
  LocaleCache = icu::Locale::getLocaleCache(this);
  v2 = 3808;
  if (!LocaleCache)
  {
    v2 = 0;
  }

  return LocaleCache + v2;
}

uint64_t icu::Locale::getLocaleCache(icu::Locale *this)
{
  if (atomic_load_explicit(&dword_1ED442188, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1ED442188))
  {
    sub_1951EAB28();
  }

  return qword_1ED442130;
}

void sub_1951EB028(void **this)
{
  *this = &unk_1F0932368;
  if (*(this + 132))
  {
    free(this[15]);
  }

  icu::StringEnumeration::~StringEnumeration(this);
}

void sub_1951EB08C(void **a1)
{
  sub_1951EB028(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1951EB0C8(void **a1)
{
  sub_1951EB028(a1);

  JUMPOUT(0x19A8B2600);
}

char *icu::Locale::createKeywords(icu::Locale *this, UErrorCode *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v6 = *(this + 5);
    v2 = strchr(v6, 64);
    if (v2)
    {
      if (strchr(v6, 61) <= v2)
      {
        v2 = 0;
        *a2 = U_INVALID_FORMAT_ERROR;
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
        *v7 = 0u;
        v8 = 0u;
        ulocimp_getKeywords(v2 + 1, a2, 64, 0, v7);
        if (*a2 <= 0 && DWORD2(v10))
        {
          operator new();
        }

        v2 = 0;
        if (BYTE4(v7[1]))
        {
          free(v7[0]);
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

char *icu::Locale::createUnicodeKeywords(icu::Locale *this, UErrorCode *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v6 = *(this + 5);
    v2 = strchr(v6, 64);
    if (v2)
    {
      if (strchr(v6, 61) <= v2)
      {
        v2 = 0;
        *a2 = U_INVALID_FORMAT_ERROR;
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
        *v7 = 0u;
        v8 = 0u;
        ulocimp_getKeywords(v2 + 1, a2, 64, 0, v7);
        if (*a2 <= 0 && DWORD2(v10))
        {
          operator new();
        }

        v2 = 0;
        if (BYTE4(v7[1]))
        {
          free(v7[0]);
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

void icu::Locale::getKeywordValue(uint64_t a1, char *a2, int a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    if (*(a1 + 216))
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      ulocimp_getKeywordValue(*(a1 + 40), a2, a3, a4, a5);
    }
  }
}

void icu::Locale::getUnicodeKeywordValue(uint64_t a1, uint64_t a2, int a3, uint64_t a4, UErrorCode *a5)
{
  v19[9] = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v17 = 0uLL;
    v9 = a3;
    v18 = 0;
    ulocimp_toLegacyKeyWithFallback(a2, a3, &v17);
    if (v18)
    {
      memset(v19, 0, 64);
      if (*a5 < 1)
      {
        v10 = v17.n128_u64[0];
        v11 = v17.n128_i32[2];
        memset(&v19[1], 0, 56);
        v19[0] = (v19 | 0xD);
        LODWORD(v19[1]) = 40;
        v14 = 0;
        v15 = 0;
        icu::CharStringByteSink::CharStringByteSink(&v14, v19);
        v14 = &unk_1F0931548;
        icu::Locale::getKeywordValue(a1, v10, v11, &v14, a5);
        icu::CharStringByteSink::~CharStringByteSink(&v14);
        if (*a5 <= 0)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          v12 = ulocimp_toBcpTypeWithFallback(a2, v9, v19[0], SLODWORD(v19[7]), &v14);
          if (v16)
          {
            (*(*a4 + 16))(a4, v14, v15, v12);
          }

          else
          {
            *a5 = U_ILLEGAL_ARGUMENT_ERROR;
          }
        }
      }

      else
      {
        v19[0] = (v19 | 0xD);
        LODWORD(v19[1]) = 40;
        LODWORD(v19[7]) = 0;
      }

      if (BYTE4(v19[1]))
      {
        free(v19[0]);
      }
    }

    else
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1951EB5A0(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, UErrorCode *a4@<X3>, uint64_t a5@<X8>)
{
  if (*a4 < 1)
  {
    v11[8] = v5;
    v11[9] = v6;
    *(a5 + 8) = 0u;
    *(a5 + 56) = 0;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *a5 = a5 + 13;
    *(a5 + 8) = 40;
    *(a5 + 56) = 0;
    v11[0] = 0;
    v11[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v11, a5);
    v11[0] = &unk_1F0931548;
    icu::Locale::getKeywordValue(a1, a2, a3, v11, a4);
    icu::CharStringByteSink::~CharStringByteSink(v11);
  }

  else
  {
    *a5 = a5 + 13;
    *(a5 + 8) = 40;
    *(a5 + 12) = 0;
    *(a5 + 56) = 0;
  }
}

void icu::Locale::setKeywordValue(uint64_t a1, char *a2, int a3, char *a4, int a5, UErrorCode *a6)
{
  v8 = *a6;
  if (*a6 <= 0)
  {
    v33 = v6;
    v34 = v7;
    if (a3)
    {
      if (v8 == U_STRING_NOT_TERMINATED_WARNING)
      {
        *a6 = U_ZERO_ERROR;
      }

      v13 = *(a1 + 40);
      v14 = strlen(v13);
      v15 = v14;
      v16 = v14 + 1;
      if (v13 == (a1 + 48))
      {
        v17 = 157;
      }

      else
      {
        v17 = v14 + 1;
      }

      KeywordsStart = locale_getKeywordsStart(v13);
      if (KeywordsStart)
      {
        v19 = &KeywordsStart[-*(a1 + 40)];
      }

      else
      {
        LODWORD(v19) = v15;
      }

      v20 = a4;
      v21 = v19;
      v29 = ~v19;
      v22 = v15 - v19;
      v28 = v19;
      v23 = v19 + 1;
      while (1)
      {
        memset(v32, 0, sizeof(v32));
        icu::CheckedArrayByteSink::CheckedArrayByteSink(v32, (*(a1 + 40) + v21), v17 + v29);
        v24 = ulocimp_setKeywordValue(*(a1 + 40) + v21, v22, a2, a3, v20, a5, v32, a6);
        if (*a6 != U_BUFFER_OVERFLOW_ERROR)
        {
          break;
        }

        v17 = v23 + v24;
        v25 = malloc_type_malloc(v23 + v24, 0x100004077774924uLL);
        if (!v25)
        {
          *a6 = U_MEMORY_ALLOCATION_ERROR;
          goto LABEL_24;
        }

        v26 = v25;
        memcpy(v25, *(a1 + 40), v16);
        v27 = *(a1 + 40);
        if (v27 != (a1 + 48))
        {
          if (*(a1 + 208) == v27)
          {
            *(a1 + 208) = v26;
          }

          free(v27);
        }

        *(a1 + 40) = v26;
        *a6 = U_ZERO_ERROR;
        icu::CheckedArrayByteSink::~CheckedArrayByteSink(v32);
        v20 = a4;
      }

      if (*a6 >= 1)
      {
LABEL_24:
        icu::CheckedArrayByteSink::~CheckedArrayByteSink(v32);
        return;
      }

      u_terminateChars(*(a1 + 40), v17, (v24 + v28), a6);
      icu::CheckedArrayByteSink::~CheckedArrayByteSink(v32);
      if (*(a1 + 208) == *(a1 + 40))
      {
        icu::Locale::initBaseName(a1, a6);
      }
    }

    else
    {
      *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

void icu::Locale::setUnicodeKeywordValue(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    v21 = v6;
    v22 = v7;
    v19 = 0uLL;
    v13 = a3;
    v20 = 0;
    ulocimp_toLegacyKeyWithFallback(a2, a3, &v19);
    if (v20)
    {
      if (!a5)
      {
        v15 = 0;
        v14 = 0;
        goto LABEL_8;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      ulocimp_toLegacyTypeWithFallback(a2, v13, a4, a5, &v16);
      if (v18 == 1)
      {
        v14 = v16;
        v15 = v17;
LABEL_8:
        icu::Locale::setKeywordValue(a1, v19.n128_u64[0], v19.n128_i32[2], v14, v15, a6);
        return;
      }
    }

    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
  }
}

uint64_t sub_1951EB9FC(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(a1 + 120);
  if (!*v3)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  do
  {
    v2 = (v2 + 1);
    v4 = &v3[strlen(v3)];
    v5 = *(v4 + 1);
    v3 = v4 + 1;
  }

  while (v5);
  return v2;
}

_BYTE *sub_1951EBA58(uint64_t a1, _DWORD *a2, int *a3)
{
  if (*a3 <= 0 && (v4 = *(a1 + 184), *v4))
  {
    v5 = strlen(*(a1 + 184));
    *(a1 + 184) = &v4[v5 + 1];
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    if (a2)
    {
      v5 = 0;
LABEL_6:
      *a2 = v5;
    }
  }

  return v4;
}

char *sub_1951EBACC(icu::StringEnumeration *a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v8 = 0;
  v7 = (*(*a1 + 40))(a1, &v8, a2);
  return icu::StringEnumeration::setChars(a1, v7, v8, a2);
}

uint64_t sub_1951EBB54(uint64_t result, int *a2)
{
  if (*a2 <= 0)
  {
    *(result + 184) = *(result + 120);
  }

  return result;
}

uint64_t sub_1951EBB70(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(a1 + 120);
  if (!*v3)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  do
  {
    if (uloc_toUnicodeLocaleKey(v3))
    {
      v2 = (v2 + 1);
    }

    else
    {
      v2 = v2;
    }

    v4 = &v3[strlen(v3)];
    v5 = *(v4 + 1);
    v3 = v4 + 1;
  }

  while (v5);
  return v2;
}

const char *sub_1951EBBD8(uint64_t a1, _DWORD *a2, int *a3)
{
  if (*a3 <= 0 && (v8 = *(a1 + 184), *v8))
  {
    while (1)
    {
      *(a1 + 184) = &v8[(strlen(v8) + 1)];
      v10 = uloc_toUnicodeLocaleKey(v8);
      if (v10)
      {
        break;
      }

      if (*a3 <= 0)
      {
        v8 = *(a1 + 184);
        if (*v8)
        {
          continue;
        }
      }

      goto LABEL_2;
    }

    v4 = v10;
    if (a2)
    {
      v5 = strlen(v10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_2:
    v4 = 0;
    if (a2)
    {
      v5 = 0;
LABEL_4:
      *a2 = v5;
    }
  }

  return v4;
}

uint64_t sub_1951EBCA4(uint64_t a1, int a2, int a3, int a4, uint64_t a5, UErrorCode *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    goto LABEL_2;
  }

  v10 = a4;
  if (a3)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_2;
    }
  }

  if (!a4)
  {
    v12 = 1;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_12:
    v13 = "und";
    if (!a3)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v12 = *(a1 + 40);
  if (!v12)
  {
    goto LABEL_2;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_9:
  v13 = *a1;
  if (!a3)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v14 = *(a1 + 16);
LABEL_14:
  if (v12 >= 1)
  {
    v15 = 0;
    v16 = 0;
    v30 = v12;
    v29 = v13;
    v32 = v14;
    while (1)
    {
      if (v10)
      {
        v16 = icu::UVector::elementAt((a1 + 32), v15);
      }

      if (v16 && strlen(v16) < 4)
      {
        v16 = 0;
      }

      v39 = 0;
      memset(&v37[1], 0, 48);
      v37[0] = &v37[1] + 5;
      LODWORD(v37[1]) = 40;
      v38 = 0;
      if (*a6 >= 1)
      {
        goto LABEL_2;
      }

      icu::StringPiece::StringPiece(&v35, v13);
      icu::CharString::append(v37, v35, v36, a6);
      if (v14 && *v14)
      {
        v17 = icu::CharString::append(v37, 95, a6);
        icu::StringPiece::StringPiece(&v35, v14);
        icu::CharString::append(v17, v35, v36, a6);
      }

      if (v16 && *v16)
      {
        v18 = icu::CharString::append(v37, 95, a6);
        icu::StringPiece::StringPiece(&v35, v16);
        icu::CharString::append(v18, v35, v36, a6);
      }

      if (*a6 > 0)
      {
        v19 = 0;
        v33 = 0;
        goto LABEL_59;
      }

      v20 = uhash_get(*(*(a1 + 72) + 8), v37[0]);
      if (!v20)
      {
        v19 = 1;
        goto LABEL_59;
      }

      v34 = 0;
      if (*a6 > 0)
      {
        goto LABEL_32;
      }

      v26 = v20;
      if (strchr(v20, 95))
      {
        operator new();
      }

      v34 = v26;
      v28 = strcmp(v26, "und");
      v21 = a1;
      if (v28)
      {
LABEL_32:
        v21 = &v34;
      }

      v22 = *v21;
      v34 = *v21;
      v23 = *(a1 + 8);
      v24 = *(a1 + 16);
      v27 = v32 ? 0 : *(a1 + 16);
      v25 = *a1;
      if ((!(v22 | *a1) || (v22 == 0) == (v25 == 0) && !strcmp(v25, v22)) && (!v23 || !strcmp(v23, v23)) && (!(v24 | v27) || (v24 == 0) == (v27 == 0) && !strcmp(v24, v27)) && !v16)
      {
        break;
      }

      *(a1 + 8) = v23;
      *(a1 + 16) = v27;
      *a1 = v22;
      if (!v16)
      {
        v19 = 0;
        v33 = 1;
        goto LABEL_57;
      }

      v10 = a4;
      icu::UVector::removeElementAt((a1 + 32), v15);
      v19 = 0;
      v33 = 1;
LABEL_58:
      v12 = v30;
      v13 = v29;
      v14 = v32;
LABEL_59:
      if (BYTE4(v37[1]))
      {
        free(v37[0]);
      }

      if ((v19 & 1) == 0)
      {
        v6 = v33;
        goto LABEL_3;
      }

      if (v12 == ++v15)
      {
        goto LABEL_2;
      }
    }

    v19 = 1;
LABEL_57:
    v10 = a4;
    goto LABEL_58;
  }

LABEL_2:
  v6 = 0;
LABEL_3:
  v7 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

uint64_t sub_1951EC378(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (*(a1 + 40) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = icu::UVector::elementAt((a1 + 32), v4);
    v6 = uhash_get(*(*(a1 + 72) + 32), v5);
    if (v6)
    {
      v7 = v6;
      if (!v5 || strcmp(v5, v6))
      {
        break;
      }
    }

    if (++v4 >= *(a1 + 40))
    {
      return 0;
    }
  }

  icu::UVector::setElementAt(a1 + 32, v7, v4);
  if (strcmp(v5, "heploc") || *(a1 + 40) < 1)
  {
    return 1;
  }

  v8 = 0;
  do
  {
    v9 = icu::UVector::elementAt((a1 + 32), v8);
    if (!strcmp(v9, "hepburn"))
    {
      icu::UVector::removeElementAt((a1 + 32), v8);
    }

    ++v8;
    result = 1;
  }

  while (v8 < *(a1 + 40));
  return result;
}

int *sub_1951EC498(uint64_t a1, int *a2, UErrorCode *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    icu::StringPiece::StringPiece(v21, *a1);
    icu::CharString::append(a2, v21[0], v21[1], a3);
    v8 = *(a1 + 8);
    if (v8 && *v8)
    {
      v9 = icu::CharString::append(a2, 95, a3);
      icu::StringPiece::StringPiece(v21, *(a1 + 8));
      icu::CharString::append(v9, v21[0], v21[1], a3);
    }

    v10 = *(a1 + 16);
    if (v10 && *v10)
    {
      v11 = icu::CharString::append(a2, 95, a3);
      icu::StringPiece::StringPiece(v21, *(a1 + 16));
      icu::CharString::append(v11, v21[0], v21[1], a3);
    }

    if (*(a1 + 40) >= 1)
    {
      v12 = *(a1 + 8);
      if (!v12 || !*v12)
      {
        v13 = *(a1 + 16);
        if (!v13 || !*v13)
        {
          icu::CharString::append(a2, 95, a3);
        }
      }

      icu::UVector::sort(a1 + 32, j__strcmp_0, a3);
      v14 = a2[14];
      if (*(a1 + 40) >= 1)
      {
        v15 = 0;
        do
        {
          v16 = icu::CharString::append(a2, 95, a3);
          v17 = icu::UVector::elementAt((a1 + 32), v15);
          icu::StringPiece::StringPiece(v21, v17);
          icu::CharString::append(v16, v21[0], v21[1], a3);
          ++v15;
        }

        while (v15 < *(a1 + 40));
      }

      T_CString_toUpperCase((*a2 + v14));
    }

    v18 = *(a1 + 24);
    if (v18)
    {
      if (*v18)
      {
        v36 = 0;
        memset(&v35[1], 0, 48);
        icu::StringPiece::StringPiece(v21, "und_");
        v35[0] = &v35[1] + 5;
        LODWORD(v35[1]) = 40;
        WORD2(v35[1]) = 0;
        LODWORD(v36) = 0;
        icu::CharString::append(v35, v21[0], v21[1], a3);
        icu::StringPiece::StringPiece(v21, *(a1 + 24));
        icu::CharString::append(v35, v21[0], v21[1], a3);
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        *v21 = 0u;
        v22 = 0u;
        icu::Locale::Locale(v21, v35[0], 0, 0, 0);
        icu::StringPiece::StringPiece(&v19, (*(&v23 + 1) + 1));
        icu::CharString::append(a2, v19, v20, a3);
        icu::Locale::~Locale(v21);
        if (BYTE4(v35[1]))
        {
          free(v35[0]);
        }
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1951EC78C(uint64_t a1, uint64_t a2, uint64_t a3, icu::CharString *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  result = uhash_get(*(*(a1 + 72) + 40), a2);
  if (result)
  {
    v8 = result;
    v9 = strchr(result, 32);
    if (v9)
    {
      v10 = v9 - v8;
    }

    else
    {
      v10 = strlen(v8);
    }

    if (v10 - 2 <= 6)
    {
      icu::CharString::append(a4, v8, v10, a5);
      if (v10 == 2)
      {
        icu::CharString::append(a4, "zzzz", 4, a5);
      }
    }

    return 1;
  }

  return result;
}

BOOL sub_1951EC848(uint64_t a1, int *a2, UErrorCode *a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_28;
  }

  v5 = *(a1 + 56);
  v6 = *a1;
  v7 = sub_19526A928(*a1);
  v8 = v7;
  if (v7 == v6)
  {
    goto LABEL_18;
  }

  if (v7)
  {
    v5 = v7 + ~v6;
  }

  if (v5 < 1)
  {
LABEL_18:
    if (v8)
    {
      v31[0] = 0;
      *v29 = 0u;
      v30 = 0u;
      icu::UVector::UVector(v29, a3);
      if (*a3 > 0)
      {
LABEL_27:
        icu::UVector::~UVector(v29);
        goto LABEL_28;
      }

      do
      {
        v12 = strchr(v8, 45);
        if (!v12)
        {
          goto LABEL_26;
        }

        v10 = sub_19526A928(v12);
        v11 = v10;
        if (v10)
        {
          *(v10 - 1) = 0;
        }

        icu::UVector::insertElementAt(v29, v8, v29[2], a3);
        if (*a3 > 0)
        {
          goto LABEL_27;
        }

        v8 = v11;
      }

      while (v11);
      icu::UVector::sort(v29, j__strcmp_1, a3);
      if (v29[2] >= 1)
      {
        v15 = 0;
        while (1)
        {
          if (a2[14] >= 1)
          {
            icu::CharString::append(a2, 45, a3);
          }

          v16 = icu::UVector::elementAt(v29, v15);
          v17 = strchr(v16, 45);
          if (!v17)
          {
            break;
          }

          *v17 = 0;
          v18 = v17 + 1;
          icu::StringPiece::StringPiece(&v24, v16);
          v19 = icu::CharString::append(a2, v24, v25[0], a3);
          icu::CharString::append(v19, 45, a3);
          v24 = 0;
          memset(v25, 0, sizeof(v25));
          v20 = strlen(v16);
          v21 = strlen(v18);
          ulocimp_toBcpType(v16, v20, v18, v21, &v24);
          if (LOBYTE(v25[2]) == 1)
          {
            v18 = v24;
            v22 = v25[0];
          }

          else
          {
            v22 = strlen(v18);
          }

          icu::CharString::append(a2, v18, v22, a3);
          if (++v15 >= v29[2])
          {
            goto LABEL_39;
          }
        }

LABEL_26:
        *a3 = U_ILLEGAL_ARGUMENT_ERROR;
        goto LABEL_27;
      }

LABEL_39:
      icu::UVector::~UVector(v29);
    }

    result = *a3 < U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_29;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *v31 = 0u;
  v32 = 0u;
  *v29 = 0u;
  v30 = 0u;
  icu::LocaleBuilder::LocaleBuilder(&v24);
  v9 = icu::LocaleBuilder::setLanguageTag(&v24, v6, v5);
  icu::LocaleBuilder::build(v9, a3, v29);
  icu::LocaleBuilder::~LocaleBuilder(&v24);
  icu::Locale::canonicalize(v29, a3);
  if (*a3 < 1)
  {
    *v25 = 0u;
    v28 = 0;
    v27 = 0u;
    v26 = 0u;
    v23[1] = 0;
    v24 = &v25[1] + 1;
    v25[0] = 40;
    v23[0] = 0;
    icu::CharStringByteSink::CharStringByteSink(v23, &v24);
    v23[0] = &unk_1F0931548;
    if (*a3 <= 0)
    {
      if (BYTE8(v42))
      {
        *a3 = U_ILLEGAL_ARGUMENT_ERROR;
      }

      else
      {
        ulocimp_toLanguageTag(v31[1], v23, 0, a3);
      }
    }

    icu::CharStringByteSink::~CharStringByteSink(v23);
  }

  else
  {
    v24 = &v25[1] + 1;
    v25[0] = 40;
    LOWORD(v25[1]) = 0;
    LODWORD(v28) = 0;
  }

  icu::CharString::operator=(a2, &v24);
  if (LOBYTE(v25[1]))
  {
    free(v24);
  }

  if (*a3 <= 0)
  {
    T_CString_toLowerCase(*a2);
    icu::Locale::~Locale(v29);
    goto LABEL_18;
  }

  icu::Locale::~Locale(v29);
LABEL_28:
  result = 0;
LABEL_29:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1951ECBFC(UErrorCode *a1)
{
  sub_1952376A4(8u, sub_1951ED35C);
  if (*a1 <= 0)
  {
    v2 = ures_openDirect(0, "metadata", a1);
    v3 = ures_getByKey(v2, "alias", 0, a1);
    v4 = ures_getByKey(v3, "language", 0, a1);
    v5 = ures_getByKey(v3, "script", 0, a1);
    v6 = ures_getByKey(v3, "territory", 0, a1);
    v7 = ures_getByKey(v3, "variant", 0, a1);
    v8 = ures_getByKey(v3, "subdivision", 0, a1);
    if (*a1 <= 0)
    {
      v76 = 0;
      *v77 = 0;
      v75 = 0;
      v74 = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      memset(v67, 0, sizeof(v67));
      sub_1951ED404(v67, a1);
      v65 = 0;
      v66 = 0;
      sub_1951ED4C4(v4, v67, &v66, &v65, &v77[1], nullsub_3, nullsub_4, a1);
      v63 = 0;
      v64 = 0;
      sub_1951ED4C4(v5, v67, &v64, &v63, v77, nullsub_5, nullsub_6, a1);
      v61 = 0;
      v62 = 0;
      sub_1951ED4C4(v6, v67, &v62, &v61, &v76 + 1, nullsub_7, nullsub_8, a1);
      v59 = 0;
      v60 = 0;
      sub_1951ED4C4(v7, v67, &v60, &v59, &v76, nullsub_9, nullsub_10, a1);
      v57 = 0;
      v58 = 0;
      sub_1951ED4C4(v8, v67, &v58, &v57, &v75, nullsub_11, nullsub_12, a1);
      if (*a1 <= 0)
      {
        v54 = v6;
        v55 = v5;
        v56 = v4;
        LOBYTE(v74) = 1;
        v9 = uhash_openSize(uhash_hashChars, uhash_compareChars, uhash_compareChars, 490, a1);
        if (*a1 <= 0)
        {
          v10 = v77[1];
          if (v77[1] >= 1)
          {
            v11 = 0;
            v12 = v65;
            v13 = v66;
            do
            {
              v14 = 0;
              v15 = v12[v11];
              if (v15 >= 1 && (v74 & 1) != 0)
              {
                v14 = *v68 + v15;
              }

              uhash_put(v9, v13[v11++], v14, a1);
            }

            while (*a1 <= 0 && v11 < v10);
          }
        }

        v51 = v9;
        v17 = uhash_openSize(uhash_hashChars, uhash_compareChars, uhash_compareChars, 1, a1);
        if (*a1 <= 0)
        {
          v18 = v77[0];
          if (v77[0] >= 1)
          {
            v19 = 0;
            v20 = v63;
            v21 = v64;
            do
            {
              v22 = 0;
              v23 = v20[v19];
              if (v23 >= 1 && (v74 & 1) != 0)
              {
                v22 = *v68 + v23;
              }

              uhash_put(v17, v21[v19++], v22, a1);
            }

            while (*a1 <= 0 && v19 < v18);
          }
        }

        v53 = v7;
        v25 = uhash_openSize(uhash_hashChars, uhash_compareChars, uhash_compareChars, 650, a1);
        if (*a1 <= 0)
        {
          v26 = HIDWORD(v76);
          if (SHIDWORD(v76) >= 1)
          {
            v27 = 0;
            v28 = v61;
            v29 = v62;
            do
            {
              v30 = 0;
              v31 = v28[v27];
              if (v31 >= 1 && (v74 & 1) != 0)
              {
                v30 = *v68 + v31;
              }

              uhash_put(v25, v29[v27++], v30, a1);
            }

            while (*a1 <= 0 && v27 < v26);
          }
        }

        v52 = v8;
        v33 = uhash_openSize(uhash_hashChars, uhash_compareChars, uhash_compareChars, 2, a1);
        if (*a1 <= 0)
        {
          v34 = v76;
          if (v76 >= 1)
          {
            v35 = 0;
            v36 = v59;
            v37 = v60;
            do
            {
              v38 = 0;
              v39 = v36[v35];
              if (v39 >= 1 && (v74 & 1) != 0)
              {
                v38 = *v68 + v39;
              }

              uhash_put(v33, v37[v35++], v38, a1);
            }

            while (*a1 <= 0 && v35 < v34);
          }
        }

        v41 = uhash_openSize(uhash_hashChars, uhash_compareChars, uhash_compareChars, 2, a1);
        v42 = *a1;
        if (*a1 <= 0)
        {
          v43 = v75;
          if (v75 >= 1)
          {
            v50 = v2;
            v44 = 0;
            v46 = v57;
            v45 = v58;
            do
            {
              v47 = 0;
              v48 = v46[v44];
              if (v48 >= 1 && (v74 & 1) != 0)
              {
                v47 = *v68 + v48;
              }

              uhash_put(v41, v45[v44++], v47, a1);
              v42 = *a1;
            }

            while (*a1 <= 0 && v44 < v43);
            v2 = v50;
          }
        }

        v4 = v56;
        v8 = v52;
        if (v42 < U_ILLEGAL_ARGUMENT_ERROR)
        {
          operator new();
        }

        uhash_close(v41);
        uhash_close(v33);
        uhash_close(v25);
        uhash_close(v17);
        uhash_close(v51);
        v6 = v54;
        v5 = v55;
        v7 = v53;
      }

      free(v57);
      free(v58);
      free(v59);
      free(v60);
      free(v61);
      free(v62);
      free(v63);
      free(v64);
      free(v65);
      free(v66);
      sub_1951ED760(v67);
    }

    if (v8)
    {
      ures_close(v8);
    }

    if (v7)
    {
      ures_close(v7);
    }

    if (v6)
    {
      ures_close(v6);
    }

    if (v5)
    {
      ures_close(v5);
    }

    if (v4)
    {
      ures_close(v4);
    }

    if (v3)
    {
      ures_close(v3);
    }

    if (v2)
    {
      ures_close(v2);
    }
  }

  qword_1EAEC9768 = 0;
}

uint64_t sub_1951ED35C()
{
  atomic_store(0, &dword_1EAEC9770);
  v0 = qword_1EAEC9768;
  if (qword_1EAEC9768)
  {
    v1 = *(qword_1EAEC9768 + 48);
    if (v1)
    {
      if (*(v1 + 12))
      {
        free(*v1);
      }

      MEMORY[0x19A8B2600](v1, 0x1010C40AA5E6C2FLL);
    }

    uhash_close(v0[5]);
    uhash_close(v0[4]);
    uhash_close(v0[3]);
    uhash_close(v0[2]);
    uhash_close(v0[1]);
    MEMORY[0x19A8B2600](v0, 0x20C4079413E95);
  }

  return 1;
}

int32x2_t *sub_1951ED404(int32x2_t *a1, int *a2)
{
  a1[10] = 0;
  a1[11].i32[0] = 0;
  a1[12] = &a1[14];
  a1[13].i32[0] = 8;
  a1[13].i8[4] = 0;
  a1[22].i8[0] = 0;
  uhash_init(a1, uhash_hashUChars, uhash_compareUChars, uhash_compareLong, a2);
  if (*a2 <= 0)
  {
    operator new();
  }

  return a1;
}

void sub_1951ED4C4(uint64_t a1, uint64_t a2, void **a3, void **a4, int *a5, void (*a6)(uint64_t), void (*a7)(UChar *), int *a8)
{
  if (*a8 <= 0)
  {
    Size = ures_getSize(a1);
    *a5 = Size;
    if (Size >= 1 && (v17 = malloc_type_malloc(8 * Size, 0x50040EE9192B6uLL)) != 0 && (v18 = v17, free(*a3), *a3 = v18, v19 = *a5, v19 >= 1) && (v20 = malloc_type_malloc(4 * v19, 0x100004052888210uLL)) != 0)
    {
      v21 = v20;
      free(*a4);
      *a4 = v21;
      v22 = *a8;
      while (v22 <= 0 && ures_hasNext(a1))
      {
        NextResource = ures_getNextResource(a1, 0, a8);
        Key = ures_getKey(NextResource);
        StringByKey = ures_getStringByKey(NextResource, "replacement", 0, a8);
        if (*a8 > 0)
        {
          if (NextResource)
          {

            ures_close(NextResource);
          }

          return;
        }

        v26 = StringByKey;
        a6(Key);
        a7(v26);
        *v18 = Key;
        *v21 = sub_1951ED67C(a2, v26, a8);
        if (NextResource)
        {
          ures_close(NextResource);
        }

        v22 = *a8;
        ++v21;
        ++v18;
      }
    }

    else
    {
      *a8 = 7;
    }
  }
}

uint64_t sub_1951ED67C(uint64_t a1, UChar *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 176) == 1)
  {
    *a3 = U_NO_WRITE_PERMISSION;
    return 0xFFFFFFFFLL;
  }

  v5 = uhash_geti(a1, a2);
  if (!v5)
  {
    icu::CharString::append(*(a1 + 80), 0, a3);
    v8 = *(a1 + 80);
    v5 = *(v8 + 56);
    v9 = u_strlen(a2);
    icu::CharString::appendInvariantChars(v8, a2, v9, a3);
    uhash_puti(a1, a2, v5, a3);
  }

  return v5;
}

uint64_t sub_1951ED760(uint64_t a1)
{
  uhash_close(a1);
  v2 = *(a1 + 80);
  if (v2)
  {
    if (*(v2 + 12))
    {
      free(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1010C40AA5E6C2FLL);
  }

  sub_1951ED7C0(a1 + 88);
  return a1;
}

uint64_t sub_1951ED7C0(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1951ED848(uint64_t result)
{
  if (result)
  {
    if (*(result + 12))
    {
      free(*result);
    }

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t *sub_1951ED8A4(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 12))
    {
      free(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1010C40AA5E6C2FLL);
  }

  return a1;
}

void *sub_1951ED8F8(void *result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v5 = result;
    v6 = *result;
    if (*result)
    {
      if (*(v6 + 12))
      {
        free(*v6);
      }

      result = MEMORY[0x19A8B2600](v6, 0x1010C40AA5E6C2FLL);
    }

    *v5 = a2;
    if (!a2)
    {
      *a3 = 7;
    }
  }

  else if (a2)
  {
    if (*(a2 + 12))
    {
      free(*a2);
    }

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

void sub_1951ED9C4(int *a1)
{
  sub_1952376A4(9u, sub_1951EDAB4);
  v2 = uhash_open(uhash_hashChars, uhash_compareChars, 0, a1);
  if (*a1 > 0)
  {
    goto LABEL_7;
  }

  v3 = 0;
  do
  {
    uhash_puti(v2, off_1E73FF878[v3], 1u, a1);
    if (*a1 > 0)
    {
      break;
    }
  }

  while (v3++ < 0xB1);
  if (*a1 < 1)
  {
    qword_1EAEC9778 = v2;
  }

  else
  {
LABEL_7:
    if (v2)
    {

      uhash_close(v2);
    }
  }
}

uint64_t sub_1951EDAB4()
{
  atomic_store(0, &dword_1EAEC9780);
  if (qword_1EAEC9778)
  {
    uhash_close(qword_1EAEC9778);
  }

  return 1;
}

uint64_t sub_1951EDAEC(uint64_t a1, const char *a2, int a3, int a4, UErrorCode *a5)
{
  v10 = icu::StringEnumeration::StringEnumeration(a1);
  v11 = v10 + 133;
  *(v10 + 120) = v10 + 133;
  v12 = (v10 + 120);
  *a1 = &unk_1F0932368;
  *(a1 + 128) = 40;
  *(a1 + 132) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = v11;
  if (a3 && *a5 <= 0)
  {
    if (!a2 || a3 < 0)
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      icu::CharString::append(v12, a2, a3, a5);
      *(a1 + 184) = *(a1 + 120) + a4;
    }
  }

  return a1;
}

uint64_t uloc_addLikelySubtags(char *a1, char *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
  ulocimp_addLikelySubtags(a1, &v10, a4);
  if (*a4 <= 0)
  {
    v4 = DWORD2(v11);
    if (BYTE12(v11))
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
    }
  }

  else
  {
    v4 = 0;
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
  return v4;
}

void ulocimp_addLikelySubtags(char *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 < 1)
  {
    v7[4] = v3;
    v7[5] = v4;
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    v7[0] = 0;
    v7[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v7, a3);
    ulocimp_addLikelySubtags(a1, v7, a2);
    icu::CharStringByteSink::~CharStringByteSink(v7);
  }

  else
  {
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    *(a3 + 12) = 0;
    *(a3 + 56) = 0;
  }
}

void ulocimp_addLikelySubtags(char *a1, icu::ByteSink *a2, UErrorCode *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v8 = 0u;
    v9 = 0u;
    *__s1 = 0u;
    v7 = 0u;
    ulocimp_canonicalize(a1, a3, __s1);
    sub_1951EDDAC(__s1[0], a2, a3);
    if (BYTE4(__s1[1]))
    {
      free(__s1[0]);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1951EDDAC(char *__s1, uint64_t a2, UErrorCode *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_2;
  }

  if (!__s1)
  {
    v3 = 0;
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_3;
  }

  if (!strcmp(__s1, "root"))
  {
    v15 = strlen(__s1);
    (*(*a2 + 16))(a2, __s1, v15);
LABEL_2:
    v3 = 0;
    goto LABEL_3;
  }

  memset(&v26[1], 0, 48);
  v27 = 0;
  v26[0] = &v26[1] + 5;
  LODWORD(v26[1]) = 40;
  memset(&v24[1], 0, 48);
  v24[0] = &v24[1] + 5;
  LODWORD(v24[1]) = 40;
  v25 = 0;
  memset(&v23[1], 0, 56);
  v22 = 0;
  v23[0] = &v23[1] + 5;
  LODWORD(v23[1]) = 40;
  memset(&v21[1], 0, 48);
  __s = 0;
  v21[0] = &v21[1] + 5;
  LODWORD(v21[1]) = 40;
  ulocimp_getSubtags(__s1, v26, v24, v23, v21, &__s, a3);
  sub_1951EF3F4(__s1, v26, v24, v23, a3);
  v3 = 0;
  if (*a3 <= 0)
  {
    v9 = v22;
    if (v22 < 1)
    {
      goto LABEL_15;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = 0;
      v14 = *(v21[0] + v10);
      if (v14 != 45 && v14 != 95)
      {
        if (v12 == 8)
        {
          break;
        }

        v13 = v12 + 1;
      }

      v11 = ++v10 >= v22;
      v12 = v13;
    }

    while (v22 != v10);
    if (v11)
    {
LABEL_15:
      if (v27 == 4)
      {
        if (!v25)
        {
          icu::CharString::operator=(v24, v26);
          LODWORD(v27) = 0;
          *v26[0] = 0;
          v9 = v22;
LABEL_30:
          v16 = __s;
          v17 = strlen(__s);
          if (v9)
          {
            v16 = &__s[-v9];
            __s = v16;
            v17 = strlen(v16);
          }

          v18 = sub_1951EF56C(v26, v24, v23, v16, v17, a2, a3);
          if (*a3 <= 0 && v18)
          {
            v3 = 1;
          }

          else
          {
            v19 = strlen(__s1);
            (*(*a2 + 16))(a2, __s1, v19);
            v3 = 0;
          }

          goto LABEL_22;
        }
      }

      else if (v27 < 9)
      {
        goto LABEL_30;
      }
    }

    v3 = 0;
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
  }

LABEL_22:
  if (BYTE4(v21[1]))
  {
    free(v21[0]);
  }

  if (BYTE4(v23[1]))
  {
    free(v23[0]);
  }

  if (BYTE4(v24[1]))
  {
    free(v24[0]);
  }

  if (BYTE4(v26[1]))
  {
    free(v26[0]);
  }

LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t uloc_minimizeSubtags(char *a1, char *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v10 = 0u;
  v11 = 0u;
  icu::CheckedArrayByteSink::CheckedArrayByteSink(&v10, a2, a3);
  ulocimp_minimizeSubtags(a1, &v10, 0, a4);
  v4 = 0;
  if (*a4 <= 0)
  {
    v4 = DWORD2(v11);
    if (BYTE12(v11))
    {
      *a4 = U_BUFFER_OVERFLOW_ERROR;
    }

    else
    {
      v4 = u_terminateChars(a2, a3, DWORD2(v11), a4);
    }
  }

  icu::CheckedArrayByteSink::~CheckedArrayByteSink(&v10);
  return v4;
}

void ulocimp_minimizeSubtags(char *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 < 1)
  {
    v7[4] = v3;
    v7[5] = v4;
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    v7[0] = 0;
    v7[1] = 0;
    icu::CharStringByteSink::CharStringByteSink(v7, a3);
    ulocimp_minimizeSubtags(a1, v7, 0, a2);
    icu::CharStringByteSink::~CharStringByteSink(v7);
  }

  else
  {
    *a3 = a3 + 13;
    *(a3 + 8) = 40;
    *(a3 + 12) = 0;
    *(a3 + 56) = 0;
  }
}

void ulocimp_minimizeSubtags(char *a1, icu::ByteSink *a2, BOOL a3, UErrorCode *a4)
{
  v46[8] = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_5;
  }

  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  ulocimp_canonicalize(a1, a4, v22);
  if (*a4 <= 0)
  {
    v7 = v22[0];
    if (!v22[0])
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_3;
    }

    memset(&v46[1], 0, 56);
    v45 = 0;
    v46[0] = &v46[1] + 5;
    LODWORD(v46[1]) = 40;
    memset(&v44[1], 0, 48);
    v44[0] = &v44[1] + 5;
    LODWORD(v44[1]) = 40;
    memset(&v42[1], 0, 48);
    v43 = 0;
    v41 = 0;
    v42[0] = &v42[1] + 5;
    LODWORD(v42[1]) = 40;
    memset(&v40[1], 0, 48);
    v40[0] = &v40[1] + 5;
    LODWORD(v40[1]) = 40;
    __s = 0;
    ulocimp_getSubtags(v22[0], v46, v44, v42, v40, &__s, a4);
    if (*a4 <= 0)
    {
      if (v41 < 1)
      {
        goto LABEL_16;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = 0;
        v12 = *(v40[0] + v8);
        if (v12 != 45 && v12 != 95)
        {
          if (v10 == 8)
          {
            break;
          }

          v11 = v10 + 1;
        }

        v9 = ++v8 >= v41;
        v10 = v11;
      }

      while (v41 != v8);
      if (v9)
      {
LABEL_16:
        v13 = __s;
        v14 = strlen(__s);
        if (v41)
        {
          __s -= v41;
          v14 = strlen(&v13[-v41]);
        }

        v15 = v14;
        memset(&v39[1], 0, 56);
        v39[0] = &v39[1] + 5;
        LODWORD(v39[1]) = 40;
        memset(&__s1[1], 0, 56);
        __s1[0] = &__s1[1] + 5;
        LODWORD(__s1[1]) = 40;
        v33 = 0;
        *&v34 = 0;
        icu::CharStringByteSink::CharStringByteSink(&v33, __s1);
        sub_1951EFDE4(v46, v44, v42, 0, 0, 0, &v33, a4);
        icu::CharStringByteSink::~CharStringByteSink(&v33);
        v33 = 0;
        *&v34 = 0;
        icu::CharStringByteSink::CharStringByteSink(&v33, v39);
        if ((sub_1951EDDAC(__s1[0], &v33, a4) & 1) == 0)
        {
          v17 = strlen(v7);
          (*(*a2 + 16))(a2, v7, v17);
          icu::CharStringByteSink::~CharStringByteSink(&v33);
          goto LABEL_29;
        }

        icu::CharStringByteSink::~CharStringByteSink(&v33);
        if (*a4 > 0)
        {
          goto LABEL_29;
        }

        sub_1951EF3F4(v39[0], v46, v44, v42, a4);
        if (*a4 > 0)
        {
          goto LABEL_29;
        }

        v34 = 0u;
        v37 = 0;
        v36 = 0u;
        v35 = 0u;
        v33 = &v34 + 5;
        LODWORD(v34) = 40;
        v20[0] = 0;
        v20[1] = 0;
        icu::CharStringByteSink::CharStringByteSink(v20, &v33);
        v29 = v31 + 1;
        v30 = 40;
        v31[0] = 0;
        v32 = 0;
        v26 = v27 + 5;
        LODWORD(v27[0]) = 40;
        WORD2(v27[0]) = 0;
        v28 = 0;
        sub_1951EF56C(v46, &v29, &v26, 0, 0, v20, a4);
        if (BYTE4(v27[0]))
        {
          free(v26);
        }

        if (LOBYTE(v31[0]))
        {
          free(v29);
        }

        icu::CharStringByteSink::~CharStringByteSink(v20);
        if (*a4 <= 0)
        {
          if (uprv_strnicmp(v39[0], v33, v37))
          {
            v16 = 0;
          }

          else
          {
            v29 = v31 + 1;
            v30 = 40;
            v31[0] = 0;
            v32 = 0;
            v26 = v27 + 5;
            LODWORD(v27[0]) = 40;
            WORD2(v27[0]) = 0;
            v28 = 0;
            sub_1951EFDE4(v46, &v29, &v26, __s, v15, 0, a2, a4);
            if (BYTE4(v27[0]))
            {
              free(v26);
            }

            if (LOBYTE(v31[0]))
            {
              free(v29);
            }

            v16 = 1;
          }
        }

        else
        {
          v16 = 2;
        }

        if (BYTE4(v34))
        {
          free(v33);
        }

        if (v16 != 2)
        {
          if (v16)
          {
            goto LABEL_29;
          }

          if (v43)
          {
            v34 = 0u;
            v37 = 0;
            v36 = 0u;
            v35 = 0u;
            v33 = &v34 + 5;
            LODWORD(v34) = 40;
            v26 = 0;
            v27[0] = 0;
            icu::CharStringByteSink::CharStringByteSink(&v26, &v33);
            v29 = v31 + 1;
            v30 = 40;
            v31[0] = 0;
            v32 = 0;
            sub_1951EF56C(v46, &v29, v42, 0, 0, &v26, a4);
            if (LOBYTE(v31[0]))
            {
              free(v29);
            }

            icu::CharStringByteSink::~CharStringByteSink(&v26);
            if (*a4 <= 0)
            {
              if (v37 && !uprv_strnicmp(v39[0], v33, v37))
              {
                v29 = v31 + 1;
                v30 = 40;
                v31[0] = 0;
                v32 = 0;
                sub_1951EFDE4(v46, &v29, v42, __s, v15, 0, a2, a4);
                if (LOBYTE(v31[0]))
                {
                  free(v29);
                }

                v18 = 1;
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 2;
            }

            if (BYTE4(v34))
            {
              free(v33);
            }

            if (v18 == 2)
            {
              goto LABEL_84;
            }

            if (v18)
            {
              goto LABEL_29;
            }
          }

          if (!v45)
          {
LABEL_83:
            sub_1951EFDE4(v46, v44, v42, __s, v15, 0, a2, a4);
            goto LABEL_29;
          }

          v34 = 0u;
          v37 = 0;
          v36 = 0u;
          v35 = 0u;
          v33 = &v34 + 5;
          LODWORD(v34) = 40;
          v26 = 0;
          v27[0] = 0;
          icu::CharStringByteSink::CharStringByteSink(&v26, &v33);
          v29 = v31 + 1;
          v30 = 40;
          v31[0] = 0;
          v32 = 0;
          sub_1951EF56C(v46, v44, &v29, 0, 0, &v26, a4);
          if (LOBYTE(v31[0]))
          {
            free(v29);
          }

          icu::CharStringByteSink::~CharStringByteSink(&v26);
          if (*a4 <= 0)
          {
            if (v37 && !uprv_strnicmp(v39[0], v33, v37))
            {
              v29 = v31 + 1;
              v30 = 40;
              v31[0] = 0;
              v32 = 0;
              sub_1951EFDE4(v46, v44, &v29, __s, v15, 0, a2, a4);
              if (LOBYTE(v31[0]))
              {
                free(v29);
              }

              v19 = 1;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 2;
          }

          if (BYTE4(v34))
          {
            free(v33);
          }

          if (v19 != 2)
          {
            if (!v19)
            {
              goto LABEL_83;
            }

LABEL_29:
            if (BYTE4(__s1[1]))
            {
              free(__s1[0]);
            }

            if (BYTE4(v39[1]))
            {
              free(v39[0]);
            }

            goto LABEL_34;
          }
        }

LABEL_84:
        if (*a4 <= 0)
        {
          *a4 = U_ILLEGAL_ARGUMENT_ERROR;
        }

        goto LABEL_29;
      }

      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

LABEL_34:
    if (BYTE4(v40[1]))
    {
      free(v40[0]);
    }

    if (BYTE4(v42[1]))
    {
      free(v42[0]);
    }

    if (BYTE4(v44[1]))
    {
      free(v44[0]);
    }

    if (BYTE4(v46[1]))
    {
      free(v46[0]);
    }
  }

LABEL_3:
  if (BYTE4(v22[1]))
  {
    free(v22[0]);
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t uloc_isRightToLeft(char *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = U_ZERO_ERROR;
  memset(&v17[1], 0, 48);
  v18 = 0;
  LODWORD(v17[1]) = 40;
  memset(&alias[1], 0, 48);
  v16 = 0;
  v17[0] = &v17[1] + 5;
  alias[0] = &alias[1] + 5;
  LODWORD(alias[1]) = 40;
  v15 = 0;
  ulocimp_getSubtags(a1, v17, alias, 0, 0, 0, &v9);
  if (v9 <= U_ZERO_ERROR && v15)
  {
LABEL_14:
    PropertyValueEnum = u_getPropertyValueEnum(UCHAR_SCRIPT, alias[0]);
    isRightToLeft = uscript_isRightToLeft(PropertyValueEnum);
    goto LABEL_15;
  }

  v2 = v18;
  if (v18)
  {
    v3 = strstr("root-en-es-pt-zh-ja-ko-de-fr-it-ar+he+fa+ru-nl-pl-th-tr-", v17[0]);
    if (v3)
    {
      v4 = v3[v2];
      if (v4 == 45)
      {
        isRightToLeft = 0;
        goto LABEL_15;
      }

      if (v4 == 43)
      {
        isRightToLeft = 1;
        goto LABEL_15;
      }
    }
  }

  v9 = U_ZERO_ERROR;
  v12 = 0u;
  v13 = 0u;
  *v10 = 0u;
  v11 = 0u;
  ulocimp_addLikelySubtags(a1, &v9, v10);
  isRightToLeft = v9 <= U_ZERO_ERROR && (ulocimp_getSubtags(v10[0], 0, alias, 0, 0, 0, &v9), v9 <= U_ZERO_ERROR) && v15 != 0;
  if (BYTE4(v10[1]))
  {
    free(v10[0]);
  }

  if (isRightToLeft)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (BYTE4(alias[1]))
  {
    free(alias[0]);
  }

  if (BYTE4(v17[1]))
  {
    free(v17[0]);
  }

  v7 = *MEMORY[0x1E69E9840];
  return isRightToLeft;
}

uint64_t icu::Locale::isRightToLeft(icu::Locale *this)
{
  BaseName = icu::Locale::getBaseName(this);

  return uloc_isRightToLeft(BaseName);
}

void ulocimp_getRegionForSupplementalData(char *a1@<X0>, UErrorCode *a2@<X2>, int a3@<W1>, uint64_t a4@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a2 < 1)
  {
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    sub_1951EEDAC(a1, "rg", 2, a2, a4);
    if (*a2 <= 0 && !*(a4 + 56))
    {
      ulocimp_getRegion(a1, a2, v12);
      icu::CharString::operator=(a4, v12);
      if (BYTE4(v12[1]))
      {
        free(v12[0]);
      }

      if (*a2 <= 0 && !*(a4 + 56) && a3)
      {
        sub_1951EEDAC(a1, "sd", 2, a2, v12);
        icu::CharString::operator=(a4, v12);
        if (BYTE4(v12[1]))
        {
          free(v12[0]);
        }

        if (*a2 <= 0 && !*(a4 + 56))
        {
          v9 = U_ZERO_ERROR;
          v14 = 0u;
          v15 = 0u;
          *v12 = 0u;
          v13 = 0u;
          ulocimp_addLikelySubtags(a1, &v9, v12);
          if (v9 <= U_ZERO_ERROR)
          {
            ulocimp_getRegion(v12[0], a2, &v10);
            icu::CharString::operator=(a4, &v10);
            if (v11)
            {
              free(v10);
            }
          }

          if (BYTE4(v12[1]))
          {
            free(v12[0]);
          }
        }
      }
    }
  }

  else
  {
    *a4 = a4 + 13;
    *(a4 + 8) = 40;
    *(a4 + 12) = 0;
    *(a4 + 56) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1951EEDAC(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, UErrorCode *a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a5 + 8) = 0u;
  *(a5 + 56) = 0;
  *(a5 + 40) = 0u;
  *(a5 + 24) = 0u;
  *a5 = a5 + 13;
  *(a5 + 8) = 40;
  *(a5 + 56) = 0;
  v16 = 0u;
  v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  ulocimp_getKeywordValue(a1, a2, a3, a4, v14);
  if (*a4 <= 0 && (DWORD2(v17) - 3) <= 3 && uprv_isASCIILetter(*v14[0]))
  {
    isASCIILetter = uprv_isASCIILetter(*(v14[0] + 1));
    if (isASCIILetter)
    {
      if ((atomic_load_explicit(&qword_1ED442190, memory_order_acquire) & 1) == 0)
      {
        sub_19542FD30();
      }

      *v12 = *v14[0];
      v13 = 0;
      v8 = icu::RegionValidateMap::value(isASCIILetter, v12);
      if (v8 & 0x80000000) == 0 && ((*(&qword_1ED442190 + (v8 >> 5) + 4) >> (v8 & 0x1F)))
      {
        v9 = uprv_toupper(*v14[0]);
        icu::CharString::append(a5, v9, a4);
        v10 = uprv_toupper(*(v14[0] + 1));
        icu::CharString::append(a5, v10, a4);
      }
    }
  }

  if (BYTE4(v14[1]))
  {
    free(v14[0]);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t ulocimp_setRegionToSupplementalRegion(char *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = U_ZERO_ERROR;
  memset(v8, 0, 224);
  icu::Locale::Locale(v8, a1, 0, 0, 0);
  icu::StringPiece::StringPiece(v7, "rg");
  memset(&v4, 0, sizeof(v4));
  v6[0] = &unk_1F0932500;
  v6[1] = &v4;
  icu::Locale::getKeywordValue(v8, v7[0], v7[1], v6, &v5);
  icu::ByteSink::~ByteSink(v6);
  if (v5 <= U_ZERO_ERROR)
  {
    size = HIBYTE(v4.__r_.__value_.__r.__words[2]);
    if ((v4.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v4.__r_.__value_.__l.__size_;
    }

    if (size >= 2)
    {
      memset(v7, 0, sizeof(v7));
      icu::LocaleBuilder::LocaleBuilder(v7);
      icu::LocaleBuilder::setLocale(v7, v8);
    }
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  icu::Locale::~Locale(v8);
  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

double icu::RegionValidateMap::RegionValidateMap(icu::RegionValidateMap *this)
{
  *(this + 24) = unk_195430E70;
  *(this + 40) = xmmword_195430E80;
  *(this + 56) = unk_195430E90;
  result = 1.83800657e-307;
  *(this + 72) = xmmword_195430EA0;
  *this = &unk_1F09324C0;
  *(this + 11) = 0x100400408;
  *(this + 8) = xmmword_195430E60;
  return result;
}

{
  *(this + 24) = unk_195430E70;
  *(this + 40) = xmmword_195430E80;
  *(this + 56) = unk_195430E90;
  result = 1.83800657e-307;
  *(this + 72) = xmmword_195430EA0;
  *this = &unk_1F09324C0;
  *(this + 11) = 0x100400408;
  *(this + 8) = xmmword_195430E60;
  return result;
}

void icu::RegionValidateMap::~RegionValidateMap(icu::RegionValidateMap *this)
{
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

unint64_t icu::RegionValidateMap::isSet(icu::RegionValidateMap *this, char *a2)
{
  v3 = icu::RegionValidateMap::value(this, a2);
  if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return (*(this + (v3 >> 5) + 2) >> (v3 & 0x1F)) & 1;
  }
}

uint64_t icu::RegionValidateMap::value(icu::RegionValidateMap *this, char *a2)
{
  if (!uprv_isASCIILetter(*a2) || !uprv_isASCIILetter(a2[1]) || a2[2])
  {
    return 0xFFFFFFFFLL;
  }

  v4 = uprv_toupper(*a2);
  return uprv_toupper(a2[1]) + 26 * v4 - 1755;
}

const char *sub_1951EF3F4(const char *result, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v9 = result;
    ulocimp_getLanguage(result, a5, &v15);
    icu::CharString::operator=(a2, &v15);
    if (v17)
    {
      free(v15);
    }

    ulocimp_getScript(v9, a5, &v15);
    icu::CharString::operator=(a3, &v15);
    if (v17)
    {
      free(v15);
    }

    v10 = *(a3 + 56);
    v15 = *a3;
    v16 = v10;
    icu::StringPiece::StringPiece(&v13, "Zzzz");
    if (!icu::StringPiece::compare(&v15, v13, v14))
    {
      *(a3 + 56) = 0;
      **a3 = 0;
    }

    ulocimp_getRegion(v9, a5, &v15);
    icu::CharString::operator=(a4, &v15);
    if (v17)
    {
      free(v15);
    }

    v11 = *(a4 + 56);
    v15 = *a4;
    v16 = v11;
    icu::StringPiece::StringPiece(&v13, "ZZ");
    result = icu::StringPiece::compare(&v15, v13, v14);
    if (!result)
    {
      *(a4 + 56) = 0;
      **a4 = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1951EF56C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    goto LABEL_2;
  }

  memset(v39, 0, 157);
  v16 = *(a2 + 56);
  if (v16 && *(a3 + 56))
  {
    v35 = 0uLL;
    v37 = 0uLL;
    v36 = 0uLL;
    v34 = &v35 + 5;
    LODWORD(v35) = 40;
    v38 = 0;
    v31 = 0;
    v32[0] = 0;
    icu::CharStringByteSink::CharStringByteSink(&v31, &v34);
    sub_1951EFDE4(a1, a2, a3, 0, 0, 0, &v31, a7);
    icu::CharStringByteSink::~CharStringByteSink(&v31);
    if (*a7 <= 0 && (v17 = sub_1951EFBF8(v34, v39, a7), *a7 <= 0))
    {
      if (v17)
      {
        v31 = v32 + 5;
        LODWORD(v32[0]) = 40;
        WORD2(v32[0]) = 0;
        v33 = 0;
        v28 = v29 + 5;
        LODWORD(v29[0]) = 40;
        WORD2(v29[0]) = 0;
        v30 = 0;
        v25 = &v26 + 5;
        LODWORD(v26) = 40;
        WORD2(v26) = 0;
        v27 = 0;
        sub_1951EFDE4(&v31, &v28, &v25, a4, a5, v17, a6, a7);
        if (BYTE4(v26))
        {
          free(v25);
        }

        if (BYTE4(v29[0]))
        {
          free(v28);
        }

        if (BYTE4(v32[0]))
        {
          free(v31);
        }

        v18 = 1;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 2;
    }

    if (BYTE4(v35))
    {
      free(v34);
    }

    if (v18 == 2)
    {
      goto LABEL_46;
    }

    if (v18)
    {
LABEL_45:
      result = 1;
      goto LABEL_3;
    }

    v16 = *(a2 + 56);
  }

  if (v16)
  {
    v35 = 0u;
    v37 = 0u;
    v36 = 0u;
    v34 = &v35 + 5;
    LODWORD(v35) = 40;
    v38 = 0;
    v28 = 0;
    v29[0] = 0;
    icu::CharStringByteSink::CharStringByteSink(&v28, &v34);
    v31 = v32 + 5;
    LODWORD(v32[0]) = 40;
    WORD2(v32[0]) = 0;
    v33 = 0;
    sub_1951EFDE4(a1, a2, &v31, 0, 0, 0, &v28, a7);
    if (BYTE4(v32[0]))
    {
      free(v31);
    }

    icu::CharStringByteSink::~CharStringByteSink(&v28);
    if (*a7 <= 0 && (v19 = sub_1951EFBF8(v34, v39, a7), *a7 <= 0))
    {
      if (v19)
      {
        v31 = v32 + 5;
        LODWORD(v32[0]) = 40;
        WORD2(v32[0]) = 0;
        v33 = 0;
        v28 = v29 + 5;
        LODWORD(v29[0]) = 40;
        WORD2(v29[0]) = 0;
        v30 = 0;
        sub_1951EFDE4(&v31, &v28, a3, a4, a5, v19, a6, a7);
        if (BYTE4(v29[0]))
        {
          free(v28);
        }

        if (BYTE4(v32[0]))
        {
          free(v31);
        }

        v20 = 1;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 2;
    }

    if (BYTE4(v35))
    {
      free(v34);
    }

    if (v20 == 2)
    {
      goto LABEL_46;
    }

    if (v20)
    {
      goto LABEL_45;
    }
  }

  if (!*(a3 + 56))
  {
    goto LABEL_34;
  }

  v35 = 0u;
  v37 = 0u;
  v36 = 0u;
  v34 = &v35 + 5;
  LODWORD(v35) = 40;
  v38 = 0;
  v28 = 0;
  v29[0] = 0;
  icu::CharStringByteSink::CharStringByteSink(&v28, &v34);
  v31 = v32 + 5;
  LODWORD(v32[0]) = 40;
  WORD2(v32[0]) = 0;
  v33 = 0;
  sub_1951EFDE4(a1, &v31, a3, 0, 0, 0, &v28, a7);
  if (BYTE4(v32[0]))
  {
    free(v31);
  }

  icu::CharStringByteSink::~CharStringByteSink(&v28);
  if (*a7 <= 0 && (v21 = sub_1951EFBF8(v34, v39, a7), *a7 <= 0))
  {
    if (v21)
    {
      v31 = v32 + 5;
      LODWORD(v32[0]) = 40;
      WORD2(v32[0]) = 0;
      v33 = 0;
      v28 = v29 + 5;
      LODWORD(v29[0]) = 40;
      WORD2(v29[0]) = 0;
      v30 = 0;
      sub_1951EFDE4(&v31, a2, &v28, a4, a5, v21, a6, a7);
      if (BYTE4(v29[0]))
      {
        free(v28);
      }

      if (BYTE4(v32[0]))
      {
        free(v31);
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 2;
  }

  if (BYTE4(v35))
  {
    free(v34);
  }

  if (v22 == 2)
  {
LABEL_46:
    if (*a7 <= 0)
    {
      result = 0;
      *a7 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  if (v22)
  {
    goto LABEL_45;
  }

LABEL_34:
  v35 = 0u;
  v37 = 0u;
  v36 = 0u;
  v34 = &v35 + 5;
  LODWORD(v35) = 40;
  v38 = 0;
  v25 = 0;
  v26 = 0;
  icu::CharStringByteSink::CharStringByteSink(&v25, &v34);
  v31 = v32 + 5;
  LODWORD(v32[0]) = 40;
  WORD2(v32[0]) = 0;
  v33 = 0;
  v28 = v29 + 5;
  LODWORD(v29[0]) = 40;
  WORD2(v29[0]) = 0;
  v30 = 0;
  sub_1951EFDE4(a1, &v31, &v28, 0, 0, 0, &v25, a7);
  if (BYTE4(v29[0]))
  {
    free(v28);
  }

  if (BYTE4(v32[0]))
  {
    free(v31);
  }

  icu::CharStringByteSink::~CharStringByteSink(&v25);
  if (*a7 <= 0 && (v23 = sub_1951EFBF8(v34, v39, a7), *a7 <= 0))
  {
    if (v23)
    {
      v31 = v32 + 5;
      LODWORD(v32[0]) = 40;
      WORD2(v32[0]) = 0;
      v33 = 0;
      sub_1951EFDE4(&v31, a2, a3, a4, a5, v23, a6, a7);
      if (BYTE4(v32[0]))
      {
        free(v31);
      }

      v24 = 1;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 2;
  }

  if (BYTE4(v35))
  {
    free(v34);
  }

  if (v24 == 2)
  {
    goto LABEL_46;
  }

  if (v24)
  {
    goto LABEL_45;
  }

LABEL_2:
  result = 0;
LABEL_3:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1951EFBF8(const char *a1, char *a2, UErrorCode *a3)
{
  v16[8] = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_26;
  }

  *v15 = 0;
  v6 = ures_openDirect(0, "likelySubtags", v15);
  if (v15[0] > U_ZERO_ERROR)
  {
    a2 = 0;
    *a3 = v15[0];
    goto LABEL_23;
  }

  memset(&v16[1], 0, 56);
  v16[0] = &v16[1] + 5;
  LODWORD(v16[1]) = 40;
  if (a1)
  {
    if (*a1)
    {
      if (*a1 == 95)
      {
        icu::StringPiece::StringPiece(&v13, "und");
        icu::CharString::append(v16, v13, v14, a3);
        icu::StringPiece::StringPiece(&v13, a1);
        icu::CharString::append(v16, v13, v14, a3);
        if (*a3 > 0)
        {
          a2 = 0;
          v7 = 0;
          goto LABEL_20;
        }

        a1 = v16[0];
      }
    }

    else
    {
      a1 = "und";
    }
  }

  StringByKey = ures_getStringByKey(v6, a1, &v15[1], v15);
  v9 = v15[0];
  if (v15[0] < U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (v15[1] < (U_USELESS_COLLATOR_ERROR|0x80))
    {
      u_UCharsToChars(StringByKey, a2, v15[1] + 1);
      goto LABEL_19;
    }

    a2 = 0;
    v9 = U_INTERNAL_PROGRAM_ERROR;
    goto LABEL_17;
  }

  if (v15[0] != U_MISSING_RESOURCE_ERROR)
  {
    a2 = 0;
LABEL_17:
    *a3 = v9;
    goto LABEL_19;
  }

  a2 = 0;
LABEL_19:
  v7 = 1;
LABEL_20:
  if (BYTE4(v16[1]))
  {
    free(v16[0]);
  }

  if (v7)
  {
LABEL_23:
    v10 = 1;
    if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v10 = 0;
  if (v6)
  {
LABEL_24:
    ures_close(v6);
  }

LABEL_25:
  if (!v10)
  {
LABEL_26:
    a2 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1951EFDE4(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, UErrorCode *a8)
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = *a8;
  if (*a8 > 0)
  {
LABEL_2:
    if (v9 == U_BUFFER_OVERFLOW_ERROR || v9 <= U_ZERO_ERROR)
    {
      *a8 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    goto LABEL_19;
  }

  memset(__dst, 0, 157);
  v17 = *(result + 56);
  if (v17)
  {
    memmove(__dst, *result, v17);
  }

  else
  {
    if (!a6)
    {
      v17 = 0;
      v18 = *(a2 + 56);
      if (v18)
      {
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v29 = 0;
    v28 = 0;
    result = uloc_getLanguage(a6, &v28, 12, a8);
    v9 = *a8;
    if (*a8 > 0)
    {
      goto LABEL_2;
    }

    v17 = result;
    if (result > 11)
    {
      goto LABEL_2;
    }

    if (result)
    {
      memcpy(__dst, &v28, result);
    }
  }

  v18 = *(a2 + 56);
  if (v18)
  {
LABEL_11:
    v19 = *a2;
    *(__dst + v17) = 95;
    v20 = v17 + 1;
    memmove(__dst + v20, v19, v18);
    v17 = (v20 + v18);
    goto LABEL_12;
  }

  if (a6)
  {
    WORD2(v28) = 0;
    LODWORD(v28) = 0;
    result = uloc_getScript(a6, &v28, 6, a8);
    v9 = *a8;
    if (*a8 > 0)
    {
      goto LABEL_2;
    }

    v26 = result;
    if (result > 5)
    {
      goto LABEL_2;
    }

    if (result >= 1)
    {
      *(__dst + v17) = 95;
      v27 = v17 + 1;
      memcpy(__dst + v27, &v28, result);
      v17 = (v26 + v27);
    }
  }

LABEL_12:
  v21 = *(a3 + 56);
  if (v21)
  {
    v22 = *a3;
    *(__dst + v17) = 95;
    memmove(__dst + v17 + 1, v22, v21);
    v23 = 0;
    v17 = (v17 + 1 + v21);
  }

  else if (a6)
  {
    LODWORD(v28) = 0;
    result = uloc_getCountry(a6, &v28, 4, a8);
    v9 = *a8;
    if (*a8 > 0)
    {
      goto LABEL_2;
    }

    v25 = result;
    if (result > 3)
    {
      goto LABEL_2;
    }

    v23 = result < 1;
    if (result >= 1)
    {
      *(__dst + v17) = 95;
      memcpy(__dst + v17 + 1, &v28, result);
      v17 = (v25 + v17 + 1);
    }
  }

  else
  {
    v23 = 1;
  }

  result = (*(*a7 + 16))(a7, __dst, v17);
  if (a5 >= 1)
  {
    if (*a4 != 64)
    {
      (*(*a7 + 16))(a7, "_", 1);
      if (v23)
      {
        (*(*a7 + 16))(a7, "_", 1);
      }
    }

    result = (*(*a7 + 16))(a7, a4, a5);
  }

LABEL_19:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1951F0160(icu::ByteSink *a1)
{
  icu::ByteSink::~ByteSink(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951F01A4(uint64_t a1)
{
  free(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 48 * v4 - 48;
      v6 = -48 * v4;
      do
      {
        if (*(v5 + 24))
        {
          sub_1951F388C(v5);
        }

        v5 -= 48;
        v6 += 48;
      }

      while (v6);
    }

    MEMORY[0x19A8B25E0](v3, 0x1050C803E1AAB50);
  }

  return a1;
}

uint64_t sub_1951F0234(int *a1)
{
  v7 = 0;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  v4 = 0u;
  memset(v3, 0, sizeof(v3));
  sub_1951ED404(v3 + 1, a1);
  v7 = 0;
  memset(v6 + 8, 0, 36);
  v4 = 0u;
  v5 = 0u;
  LODWORD(v6[0]) = 0;
  sub_1951F031C(v3, a1);
  if (*a1 <= 0)
  {
    operator new();
  }

  return sub_1951F2150(v3);
}

void sub_1951F031C(uint64_t a1, UErrorCode *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    *a1 = ures_openDirect(0, "langInfo", a2);
    if (*a2 <= 0)
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      icu::StackUResourceBundle::StackUResourceBundle(v39);
      v38[2] = 0;
      v38[0] = &unk_1F0936748;
      v38[1] = 0;
      v38[3] = 0xFFFFFFFFLL;
      ures_getValueWithFallback(*a1, "likely", v39, v38, a2);
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      sub_19529111C(v38, a2, v36);
      if (*a2 > 0)
      {
LABEL_13:
        icu::ResourceValue::~ResourceValue(v38);
        icu::StackUResourceBundle::~StackUResourceBundle(v39);
        goto LABEL_14;
      }

      v34 = 0;
      v35 = 0;
      v32 = 0;
      v33 = 0;
      v31 = 0;
      if (!sub_1951F1FB4(a1, v36, "languageAliases", v38, &v35, &v32 + 1, a2) || !sub_1951F1FB4(a1, v36, "regionAliases", v38, &v34, &v32, a2) || !sub_1951F1FB4(a1, v36, "lsrs", v38, &v33, &v31, a2))
      {
LABEL_12:
        free(v33);
        free(v34);
        free(v35);
        goto LABEL_13;
      }

      if ((v32 & 0x100000000) != 0 || (v32 & 1) != 0 || (-1431655765 * v31 + 715827882) >= 0x55555555)
      {
        v4 = 3;
LABEL_11:
        *a2 = v4;
        goto LABEL_12;
      }

      if (!v31 || !icu::ResourceTable::findValue(v36, "trie", v38))
      {
        v4 = 2;
        goto LABEL_11;
      }

      v30 = 0;
      *(a1 + 208) = sub_195291030(v38, &v30, a2);
      if (*a2 > 0)
      {
        goto LABEL_12;
      }

      v29 = 0;
      ures_getValueWithFallback(*a1, "match", v39, v38, &v29);
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v6 = v29;
      if (v29 > 0)
      {
        if (v29 == 2)
        {
LABEL_20:
          *(a1 + 184) = 1;
          *(a1 + 192) = uhash_openSize(uhash_hashChars, uhash_compareChars, uhash_compareChars, SHIDWORD(v32) / 2, a2);
          uhash_close(0);
          if (SHIDWORD(v32) >= 1)
          {
            v7 = 0;
            do
            {
              v8 = *(v35 + v7);
              v9 = *(a1 + 184);
              if (v8 < 1 || v9 == 0)
              {
                v11 = 0;
              }

              else
              {
                v11 = **(a1 + 88) + v8;
              }

              v12 = *(v35 + v7 + 1);
              if (v12 < 1 || v9 == 0)
              {
                v14 = 0;
              }

              else
              {
                v14 = **(a1 + 88) + v12;
              }

              uhash_put(*(a1 + 192), v11, v14, a2);
              v7 += 2;
            }

            while (SHIDWORD(v32) > v7);
          }

          *(a1 + 200) = uhash_openSize(uhash_hashChars, uhash_compareChars, uhash_compareChars, v32 / 2, a2);
          uhash_close(0);
          if (v32 >= 1)
          {
            v15 = 0;
            do
            {
              v16 = *(v34 + v15);
              v17 = *(a1 + 184);
              if (v16 < 1 || v17 == 0)
              {
                v19 = 0;
              }

              else
              {
                v19 = **(a1 + 88) + v16;
              }

              v20 = *(v34 + v15 + 1);
              if (v20 < 1 || v17 == 0)
              {
                v22 = 0;
              }

              else
              {
                v22 = **(a1 + 88) + v20;
              }

              uhash_put(*(a1 + 200), v19, v22, a2);
              v15 += 2;
            }

            while (v32 > v15);
          }

          if (*a2 < 1)
          {
            v23 = v31 / 3;
            *(a1 + 224) = v31 / 3;
            is_mul_ok(v23, 0x30uLL);
            operator new[]();
          }

          goto LABEL_64;
        }

        goto LABEL_63;
      }

      v25 = 0;
      memset(v24, 0, sizeof(v24));
      sub_19529111C(v38, a2, v24);
      if (*a2 > 0)
      {
        goto LABEL_64;
      }

      if (icu::ResourceTable::findValue(v24, "trie", v38))
      {
        *(a1 + 232) = sub_195291030(v38, &v30, a2);
        if (*a2 > 0)
        {
          goto LABEL_64;
        }
      }

      if (icu::ResourceTable::findValue(v24, "regionToPartitions", v38))
      {
        *(a1 + 240) = sub_195291030(v38, &v30, a2);
        if (*a2 > 0)
        {
          goto LABEL_64;
        }

        if (v30 < 1677)
        {
LABEL_62:
          v6 = 3;
LABEL_63:
          *a2 = v6;
          goto LABEL_64;
        }
      }

      if (!sub_1951F1FB4(a1, v24, "partitions", v38, &v28, &v26 + 1, a2) || !sub_1951F1FB4(a1, v24, "paradigms", v38, &v27, &v26, a2))
      {
        goto LABEL_64;
      }

      if ((-1431655765 * v26 + 715827882) > 0x55555554)
      {
        goto LABEL_62;
      }

      if (!icu::ResourceTable::findValue(v24, "distances", v38))
      {
        goto LABEL_20;
      }

      *(a1 + 272) = sub_195290FCC(v38, &v30, a2);
      if (*a2 <= 0)
      {
        if (v30 >= 4)
        {
          goto LABEL_20;
        }

        goto LABEL_62;
      }

LABEL_64:
      free(v27);
      free(v28);
      goto LABEL_12;
    }
  }

LABEL_14:
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1951F0C38()
{
  if (qword_1EAEC9788)
  {
    v0 = sub_1951F0E7C(qword_1EAEC9788);
    MEMORY[0x19A8B2600](v0, 0x10F0C4066D3EC93);
  }

  qword_1EAEC9788 = 0;
  atomic_store(0, &dword_1EAEC9790);
  return 1;
}

uint64_t sub_1951F0C8C(int *a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9790, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9790))
  {
    if (dword_1EAEC9794 >= 1)
    {
      *a1 = dword_1EAEC9794;
    }
  }

  else
  {
    sub_1951F0234(a1);
    dword_1EAEC9794 = *a1;
    icu::umtx_initImplPostInit(&dword_1EAEC9790);
  }

  return qword_1EAEC9788;
}

uint64_t sub_1951F0D24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[11];
  a2[11] = 0;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = a2[24];
  a2[24] = 0;
  v5 = a2[26];
  *(a1 + 24) = a2[25];
  a2[25] = 0;
  *(a1 + 32) = 0;
  v6 = (a1 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = v5;
  *(a1 + 56) = -1;
  *(a1 + 296) = a2[27];
  *(a1 + 304) = *(a2 + 29);
  *(a1 + 320) = *(a2 + 31);
  *(a1 + 336) = *(a2 + 66);
  *(a1 + 344) = a2[34];
  a2[31] = 0;
  a2[32] = 0;
  *a2 = 0;
  a2[27] = 0;
  icu::BytesTrie::next((a1 + 32), 0x2Au);
  *(a1 + 64) = (*(a1 + 48) - *(a1 + 40)) | ((*(a1 + 56) + 2) << 59);
  icu::BytesTrie::next(v6, 0x2Au);
  *(a1 + 72) = (*(a1 + 48) - *(a1 + 40)) | ((*(a1 + 56) + 2) << 59);
  icu::BytesTrie::next(v6, 0x2Au);
  *(a1 + 80) = icu::BytesTrie::readValue((*(a1 + 48) + 1), (**(a1 + 48) >> 1));
  *(a1 + 48) = *(a1 + 40);
  *(a1 + 56) = -1;
  for (i = 11; i != 37; ++i)
  {
    v8 = icu::BytesTrie::next(v6, i + 86);
    v9 = *(a1 + 40);
    if (v8 == 1)
    {
      *(a1 + 8 * i) = (*(a1 + 48) - v9) | ((*(a1 + 56) + 2) << 59);
    }

    *(a1 + 48) = v9;
    *(a1 + 56) = -1;
  }

  return a1;
}

uint64_t sub_1951F0E7C(uint64_t a1)
{
  ures_close(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (*(v2 + 12))
    {
      free(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1010C40AA5E6C2FLL);
  }

  v3 = *(a1 + 296);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = v3 + 48 * v5 - 48;
      v7 = -48 * v5;
      do
      {
        if (*(v6 + 24))
        {
          sub_1951F388C(v6);
        }

        v6 -= 48;
        v7 += 48;
      }

      while (v7);
    }

    MEMORY[0x19A8B25E0](v4, 0x1050C803E1AAB50);
  }

  sub_1951F01A4(a1 + 304);
  icu::BytesTrie::~BytesTrie((a1 + 32));
  uhash_close(*(a1 + 24));
  uhash_close(*(a1 + 16));
  return a1;
}

void sub_1951F0F5C(uint64_t a1@<X0>, uint64_t a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 40);
  if (*v6 == 64 && v6[1] == 120 && v6[2] == 61)
  {
    *a4 = v6;
    *(a4 + 8) = "";
    *(a4 + 16) = "";
    *(a4 + 24) = 0;
    *(a4 + 32) = sub_1951F366C("");
    *(a4 + 36) = 7;
  }

  else
  {
    if (*(a2 + 216))
    {
      v7 = "";
    }

    else
    {
      v7 = (*(a2 + 208) + *(a2 + 32));
    }

    v8 = (a2 + 8);

    sub_1951F101C(v7, a1, v8, (a2 + 20), (a2 + 26), a3, a4);
  }
}

void sub_1951F101C(char *__s1@<X4>, uint64_t a2@<X0>, char *a3@<X1>, const char *a4@<X2>, char *a5@<X3>, UErrorCode *a6@<X5>, uint64_t a7@<X8>)
{
  if (*a6 >= 1)
  {
    *a7 = "und";
    *(a7 + 8) = "";
    *(a7 + 24) = 0;
    *(a7 + 32) = 0;
    *(a7 + 16) = "";
    *(a7 + 40) = 0;
    return;
  }

  v14 = *a5;
  if (v14 != 88)
  {
    goto LABEL_6;
  }

  v15 = a5[1];
  if (!a5[1] || a5[2])
  {
    goto LABEL_6;
  }

  switch(v15)
  {
    case 'C':
      v20 = a7;
      v21 = 44;
      goto LABEL_41;
    case 'B':
      v20 = a7;
      v21 = 43;
      goto LABEL_41;
    case 'A':
      v20 = a7;
      v21 = 39;
LABEL_41:
      v23 = a3;
      v24 = a4;
      v22 = a5;
      v25 = 7;
      goto LABEL_42;
  }

LABEL_6:
  if (*__s1 != 80 || __s1[1] != 83)
  {
    goto LABEL_14;
  }

  if (*a5)
  {
    v16 = 7;
  }

  else
  {
    v16 = 6;
  }

  if (!strcmp(__s1, "PSACCENT"))
  {
    if (v14)
    {
      v22 = a5;
    }

    else
    {
      v22 = "XA";
    }

    v20 = a7;
    v21 = 39;
  }

  else if (!strcmp(__s1, "PSBIDI"))
  {
    if (v14)
    {
      v22 = a5;
    }

    else
    {
      v22 = "XB";
    }

    v20 = a7;
    v21 = 43;
  }

  else
  {
    if (strcmp(__s1, "PSCRACK"))
    {
LABEL_14:
      v17 = uhash_get(*(a2 + 16), a3);
      if (v17)
      {
        a3 = v17;
      }

      v18 = uhash_get(*(a2 + 24), a5);
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = a5;
      }

      sub_1951F1260(a3, a2, a4, v19, 0, a6, a7);
      return;
    }

    if (v14)
    {
      v22 = a5;
    }

    else
    {
      v22 = "XC";
    }

    v20 = a7;
    v21 = 44;
  }

  v23 = a3;
  v24 = a4;
  v25 = v16;
LABEL_42:

  sub_1951F3700(v20, v21, v23, v24, v22, v25, a6);
}

void sub_1951F1260(char *__s@<X1>, uint64_t a2@<X0>, const char *a3@<X2>, char *a4@<X3>, int a5@<W4>, UErrorCode *a6@<X5>, uint64_t a7@<X8>)
{
  if (*a6 < 1)
  {
    v14 = strlen(__s);
    v15 = strlen(a3);
    v16 = strlen(a4);
    sub_1951F133C(a2, __s, v14, a3, v15, a4, v16, a5, a7, a6);
  }

  else
  {
    *a7 = "und";
    *(a7 + 8) = "";
    *(a7 + 24) = 0;
    *(a7 + 32) = 0;
    *(a7 + 16) = "";
    *(a7 + 40) = 0;
  }
}

void sub_1951F133C(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, const char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, UErrorCode *a10)
{
  v58 = a2;
  v59 = a3;
  v56 = a4;
  v57 = a5;
  v54 = a6;
  v55 = a7;
  if (*a10 >= 1)
  {
    *a9 = "und";
    *(a9 + 8) = "";
    *(a9 + 24) = 0;
    *(a9 + 32) = 0;
    *(a9 + 16) = "";
    *(a9 + 40) = 0;
    return;
  }

  icu::StringPiece::StringPiece(v49, "und");
  if (!icu::StringPiece::compare(&v58, *&v49[0], SDWORD2(v49[0])) || (icu::StringPiece::StringPiece(v49, "root"), !icu::StringPiece::compare(&v58, *&v49[0], SDWORD2(v49[0]))))
  {
    icu::StringPiece::StringPiece(v49, "");
    v58 = *&v49[0];
    LODWORD(v59) = DWORD2(v49[0]);
  }

  icu::StringPiece::StringPiece(v49, "Zzzz");
  if (!icu::StringPiece::compare(&v56, *&v49[0], SDWORD2(v49[0])))
  {
    icu::StringPiece::StringPiece(v49, "");
    v56 = *&v49[0];
    LODWORD(v57) = DWORD2(v49[0]);
  }

  icu::StringPiece::StringPiece(v49, "ZZ");
  if (!icu::StringPiece::compare(&v54, *&v49[0], SDWORD2(v49[0])))
  {
    icu::StringPiece::StringPiece(v49, "");
    v54 = *&v49[0];
    LODWORD(v55) = DWORD2(v49[0]);
  }

  if (v57 && v55 && v59)
  {
    v13 = v58;
    v14 = v59;
    v15 = v56;
    v16 = v57;
    v17 = v54;
    v18 = v55;
LABEL_14:
    sub_1951F3880(a9, v13, v14, v15, v16, v17, v18, 7, a10);
    return;
  }

  icu::StringPiece::StringPiece(v49, "Aran");
  if (icu::StringPiece::compare(&v56, *&v49[0], SDWORD2(v49[0])))
  {
    if (v57)
    {
      goto LABEL_26;
    }

    if (v59 || (icu::StringPiece::StringPiece(v49, "PK"), icu::StringPiece::compare(&v54, *&v49[0], SDWORD2(v49[0]))))
    {
      icu::StringPiece::StringPiece(v49, "ur");
      if (icu::StringPiece::compare(&v58, *&v49[0], SDWORD2(v49[0])))
      {
        icu::StringPiece::StringPiece(v49, "ks");
        if (icu::StringPiece::compare(&v58, *&v49[0], SDWORD2(v49[0])))
        {
          icu::StringPiece::StringPiece(v49, "pa");
          if (!icu::StringPiece::compare(&v58, *&v49[0], SDWORD2(v49[0])))
          {
            icu::StringPiece::StringPiece(v49, "PK");
            if (!icu::StringPiece::compare(&v54, *&v49[0], SDWORD2(v49[0])))
            {
              v19 = "pa";
LABEL_54:
              icu::StringPiece::StringPiece(v49, v19);
              icu::StringPiece::StringPiece(&v52, "Aran");
              v38 = "PK";
LABEL_64:
              icu::StringPiece::StringPiece(&v50, v38);
              v14 = DWORD2(v49[0]);
              v13 = *&v49[0];
              v15 = v52;
              v16 = v53;
              v17 = v50;
              v18 = v51;
              goto LABEL_14;
            }
          }

          goto LABEL_26;
        }

        if (v55)
        {
          v37 = "ks";
          goto LABEL_62;
        }

LABEL_63:
        icu::StringPiece::StringPiece(v49, "ks");
        icu::StringPiece::StringPiece(&v52, "Aran");
        v38 = "IN";
        goto LABEL_64;
      }

      if (v55)
      {
        v37 = "ur";
LABEL_62:
        icu::StringPiece::StringPiece(v49, v37);
        icu::StringPiece::StringPiece(&v52, "Aran");
        v17 = v54;
        v18 = v55;
        v14 = DWORD2(v49[0]);
        v13 = *&v49[0];
        v15 = v52;
        v16 = v53;
        goto LABEL_14;
      }
    }

LABEL_53:
    v19 = "ur";
    goto LABEL_54;
  }

  if (!v59)
  {
    if (v55)
    {
      icu::StringPiece::StringPiece(v49, "IN");
      if (!icu::StringPiece::compare(&v54, *&v49[0], SDWORD2(v49[0])))
      {
        goto LABEL_63;
      }

      icu::StringPiece::StringPiece(v49, "PK");
      if (icu::StringPiece::compare(&v54, *&v49[0], SDWORD2(v49[0])))
      {
        goto LABEL_26;
      }
    }

    goto LABEL_53;
  }

  if (v55)
  {
    goto LABEL_26;
  }

  icu::StringPiece::StringPiece(v49, "ks");
  if (!icu::StringPiece::compare(&v58, *&v49[0], SDWORD2(v49[0])))
  {
    goto LABEL_63;
  }

  icu::StringPiece::StringPiece(v49, "ur");
  if (!icu::StringPiece::compare(&v58, *&v49[0], SDWORD2(v49[0])) || (icu::StringPiece::StringPiece(v49, "pa"), !icu::StringPiece::compare(&v58, *&v49[0], SDWORD2(v49[0]))))
  {
    v35 = v58;
    v36 = v59;
    icu::StringPiece::StringPiece(v49, "Aran");
    icu::StringPiece::StringPiece(&v52, "PK");
    sub_1951F3880(a9, v35, v36, *&v49[0], SDWORD2(v49[0]), v52, v53, 7, a10);
    return;
  }

LABEL_26:
  v20 = 0;
  memset(v49, 0, sizeof(v49));
  v21 = *(a1 + 40);
  *(v49 + 8) = v21;
  DWORD2(v49[1]) = *(a1 + 56);
  v22 = *v58 - 97;
  if (v22 <= 0x19 && v59 >= 2)
  {
    v23 = *(a1 + 8 * v22 + 88);
    if (v23)
    {
      DWORD2(v49[1]) = (v23 >> 59) - 2;
      *&v49[1] = v21 + (v23 & 0x7FFFFFFFFFFFFFFLL);
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }
  }

  v24 = sub_1951F1B08(v49, v58, v59, v20);
  v25 = v24;
  if (v24 < 0)
  {
    v28 = 0;
    v27 = 0;
    v31 = *(a1 + 64);
    DWORD2(v49[1]) = (v31 >> 59) - 2;
    *&v49[1] = *(&v49[0] + 1) + (v31 & 0x7FFFFFFFFFFFFFFLL);
    v26 = 1;
  }

  else
  {
    v26 = v59 != 0;
    v27 = (*&v49[1] - *(&v49[0] + 1)) | ((DWORD2(v49[1]) + 2) << 59);
    v28 = v57 != 0;
    v29 = v57 != 0;
    if (v24 == 1)
    {
      goto LABEL_56;
    }

    v30 = v24;
    if (v24)
    {
      goto LABEL_45;
    }
  }

  v32 = sub_1951F1B08(v49, v56, v57, 0);
  if (v32 < 0)
  {
    if (!v27)
    {
      v39 = *(a1 + 72);
      DWORD2(v49[1]) = (v39 >> 59) - 2;
      *&v49[1] = *(&v49[0] + 1) + (v39 & 0x7FFFFFFFFFFFFFFLL);
      v29 = 1;
      goto LABEL_56;
    }

    DWORD2(v49[1]) = (v27 >> 59) - 2;
    *&v49[1] = *(&v49[0] + 1) + (v27 & 0x7FFFFFFFFFFFFFFLL);
    v30 = sub_1951F1BC8(v49, "", 0);
    v29 = 1;
  }

  else
  {
    v30 = v32;
    v29 = v57 != 0;
  }

  if (v30 >= 1)
  {
LABEL_45:
    v33 = 0;
    v34 = v55 != 0;
    goto LABEL_67;
  }

  v27 = (*&v49[1] - *(&v49[0] + 1)) | ((DWORD2(v49[1]) + 2) << 59);
LABEL_56:
  v40 = sub_1951F1B08(v49, v54, v55, 0);
  if (v40 < 0)
  {
    if (v27)
    {
      DWORD2(v49[1]) = (v27 >> 59) - 2;
      *&v49[1] = *(&v49[0] + 1) + (v27 & 0x7FFFFFFFFFFFFFFLL);
      v30 = sub_1951F1BC8(v49, "", 0);
      v33 = 0;
    }

    else
    {
      v33 = 0;
      v30 = *(a1 + 80);
    }

    v34 = 1;
  }

  else
  {
    v30 = v40;
    v33 = v55 != 0;
    v34 = v55 != 0;
  }

LABEL_67:
  v41 = *(a1 + 296);
  if ((v25 & 0x80000000) == 0 || v28 || !a8)
  {
    if (v59)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  if (v59)
  {
    v33 = 0;
  }

  if (v33)
  {
LABEL_75:
    icu::StringPiece::StringPiece(&v52, "und");
    v58 = v52;
    LODWORD(v59) = v53;
LABEL_76:
    v42 = v41 + 48 * v30;
    if (!v26 && !v29 && !v34)
    {
      v45 = *(v42 + 16);
      v46 = *(v42 + 36);
      *a9 = *v42;
      *(a9 + 16) = v45;
      *(a9 + 24) = 0;
      *(a9 + 32) = sub_1951F366C(v45);
      *(a9 + 36) = v46;
      *(a9 + 40) = 0;
      goto LABEL_89;
    }

    if (v26)
    {
      if (v29)
      {
        goto LABEL_79;
      }
    }

    else
    {
      icu::StringPiece::StringPiece(&v52, *v42);
      v58 = v52;
      LODWORD(v59) = v53;
      if (v29)
      {
LABEL_79:
        if (v34)
        {
LABEL_81:
          if (v26)
          {
            v43 = 4;
          }

          else
          {
            v43 = 0;
          }

          if (v29)
          {
            v44 = 2;
          }

          else
          {
            v44 = 0;
          }

          sub_1951F3880(a9, v58, v59, v56, v57, v54, v55, v43 | v44 | v34, a10);
          goto LABEL_89;
        }

LABEL_80:
        icu::StringPiece::StringPiece(&v52, *(v42 + 16));
        v54 = v52;
        LODWORD(v55) = v53;
        goto LABEL_81;
      }
    }

    icu::StringPiece::StringPiece(&v52, *(v42 + 8));
    v56 = v52;
    LODWORD(v57) = v53;
    if (v34)
    {
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  icu::StringPiece::StringPiece(&v52, "");
  icu::StringPiece::StringPiece(&v50, "");
  icu::StringPiece::StringPiece(&v47, "");
  sub_1951F3880(a9, v52, v53, v50, v51, v47, v48, 7, a10);
LABEL_89:
  icu::BytesTrie::~BytesTrie(v49);
}

uint64_t sub_1951F1B08(icu::BytesTrie *this, uint64_t a2, int a3, int a4)
{
  if (a3 == a4)
  {
    v5 = 42;
  }

  else
  {
    v6 = (a2 + a4);
    for (i = ~a4 + a3; ; --i)
    {
      v9 = *v6++;
      v8 = v9;
      if (!i)
      {
        break;
      }

      if ((icu::BytesTrie::next(this, v8) & 1) == 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v5 = v8 | 0x80;
  }

  v11 = icu::BytesTrie::next(this, v5);
  switch(v11)
  {
    case 3:
      return 1;
    case 2:
      v12 = *(this + 2);
      v14 = *v12;
      v13 = (v12 + 1);
      v15 = (v14 >> 1);

      return icu::BytesTrie::readValue(v13, v15);
    case 1:
      return 0;
    default:
      return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1951F1BC8(icu::BytesTrie *this, uint64_t a2, int a3)
{
  v5 = *(a2 + a3);
  if (v5)
  {
    v6 = (a3 + a2 + 1);
    while (1)
    {
      v8 = *v6++;
      v7 = v8;
      if (!v8)
      {
        break;
      }

      v9 = icu::BytesTrie::next(this, v5);
      v5 = v7;
      if ((v9 & 1) == 0)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v11 = v5 | 0x80;
  }

  else
  {
    v11 = 42;
  }

  v12 = icu::BytesTrie::next(this, v11);
  switch(v12)
  {
    case 3:
      return 1;
    case 2:
      v13 = *(this + 2);
      v15 = *v13;
      v14 = (v13 + 1);
      v16 = (v15 >> 1);

      return icu::BytesTrie::readValue(v14, v16);
    case 1:
      return 0;
    default:
      return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1951F1C8C(uint64_t a1, uint64_t a2, const char **a3, unsigned int a4)
{
  v8 = *a2;
  if (strcmp(*a2, *a3))
  {
    return 4294967292;
  }

  v10 = *(a2 + 8);
  if (!strcmp(v10, a3[1]))
  {
    v12 = *(a2 + 16);
    if (!strcmp(v12, a3[2]))
    {
      return a4 & 0xFFFFFFFE;
    }

    else
    {
      if ((a4 & 0x80000002) == 2)
      {
        v13 = a4 >> 2;
        v14 = a4 & 0x7FFFFFFE;
      }

      else
      {
        v13 = sub_1951F1DD0(a1, v8, v12);
        v14 = (4 * v13) | 2;
        v12 = *(a2 + 16);
      }

      return v14 | (strcmp(v12, *(*(a1 + 296) + 48 * v13 + 16)) == 0);
    }
  }

  else
  {
    if ((a4 & 0x80000002) != 0)
    {
      v11 = sub_1951F1DD0(a1, v8, "");
      a4 = 4 * v11;
      v10 = *(a2 + 8);
    }

    else
    {
      v11 = a4 >> 2;
    }

    if (!strcmp(v10, *(*(a1 + 296) + 48 * v11 + 8)))
    {
      return a4 | 1;
    }

    else
    {
      return a4 & 0xFFFFFFFC;
    }
  }
}

uint64_t sub_1951F1DD0(uint64_t a1, char *__s1, const char *a3)
{
  v4 = __s1;
  if (!strcmp(__s1, "und"))
  {
    v4 = "";
  }

  if (!strcmp(a3, "Zzzz"))
  {
    a3 = "";
  }

  memset(v20, 0, sizeof(v20));
  v6 = *(a1 + 40);
  *(v20 + 8) = v6;
  DWORD2(v20[1]) = *(a1 + 56);
  v7 = *v4 - 97;
  if (v7 <= 0x19 && v4[1] && (v8 = *(a1 + 8 * v7 + 88)) != 0)
  {
    DWORD2(v20[1]) = (v8 >> 59) - 2;
    *&v20[1] = v6 + (v8 & 0x7FFFFFFFFFFFFFFLL);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1951F1BC8(v20, v4, v9);
  if ((v10 & 0x80000000) != 0)
  {
    v17 = *(a1 + 64);
    DWORD2(v20[1]) = (v17 >> 59) - 2;
    *&v20[1] = *(&v20[0] + 1) + (v17 & 0x7FFFFFFFFFFFFFFLL);
    v15 = sub_1951F1BC8(v20, a3, 0);
    if ((v15 & 0x80000000) != 0)
    {
LABEL_19:
      v18 = *(a1 + 72);
      DWORD2(v20[1]) = (v18 >> 59) - 2;
      *&v20[1] = *(&v20[0] + 1) + (v18 & 0x7FFFFFFFFFFFFFFLL);
      goto LABEL_20;
    }
  }

  else
  {
    v11 = v10;
    if (v10 == 1)
    {
LABEL_20:
      v11 = sub_1951F1BC8(v20, "", 0);
      goto LABEL_21;
    }

    if (v10)
    {
      goto LABEL_21;
    }

    v12 = DWORD2(v20[1]);
    v14 = *(&v20[0] + 1);
    v13 = *&v20[1];
    v15 = sub_1951F1BC8(v20, a3, 0);
    if ((v15 & 0x80000000) != 0)
    {
      v16 = (v13 - v14) | ((v12 + 2) << 59);
      if (v16)
      {
        DWORD2(v20[1]) = (v16 >> 59) - 2;
        *&v20[1] = *(&v20[0] + 1) + ((v13 - v14) & 0x7FFFFFFFFFFFFFFLL);
        v15 = sub_1951F1BC8(v20, "", 0);
        goto LABEL_17;
      }

      goto LABEL_19;
    }
  }

LABEL_17:
  v11 = v15;
  if (v15 <= 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  icu::BytesTrie::~BytesTrie(v20);
  return v11;
}

uint64_t sub_1951F1FB4(uint64_t a1, icu::ResourceTable *this, char *__s1, icu::ResourceValue *a4, void **a5, int *a6, UErrorCode *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  v23 = v7;
  v24 = v8;
  if (icu::ResourceTable::findValue(this, __s1, a4))
  {
    v21[0] = 0;
    v21[1] = 0;
    v22 = 0;
    (*(*a4 + 80))(v21, a4, a7);
    if (*a7 > 0)
    {
      return 0;
    }

    v15 = v22;
    *a6 = v22;
    if (v15)
    {
      if (v15 < 1 || (v16 = malloc_type_malloc(4 * v15, 0x100004052888210uLL)) == 0)
      {
        result = 0;
        *a7 = U_MEMORY_ALLOCATION_ERROR;
        return result;
      }

      v17 = v16;
      free(*a5);
      *a5 = v17;
      if (*a6 >= 1)
      {
        v18 = 0;
        while (1)
        {
          if (icu::ResourceArray::getValue(v21, v18, a4))
          {
            v20 = 0;
            v19 = (*(*a4 + 32))(a4, &v20, a7);
            *(v17 + v18) = sub_1951ED67C(a1 + 8, v19, a7);
            if (*a7 > 0)
            {
              break;
            }
          }

          if (++v18 >= *a6)
          {
            return 1;
          }
        }

        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_1951F2150(uint64_t a1)
{
  ures_close(*a1);
  v2 = *(a1 + 216);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 48 * v4 - 48;
      v6 = -48 * v4;
      do
      {
        if (*(v5 + 24))
        {
          sub_1951F388C(v5);
        }

        v5 -= 48;
        v6 += 48;
      }

      while (v6);
    }

    MEMORY[0x19A8B25E0](v3, 0x1050C803E1AAB50);
  }

  sub_1951F01A4(a1 + 232);
  uhash_close(*(a1 + 200));
  uhash_close(*(a1 + 192));
  sub_1951ED760(a1 + 8);
  return a1;
}

size_t uprv_convertToPosix(int a1, void *a2, int a3, int *a4)
{
  v7 = &off_1E73FFE10;
  v8 = 141;
  while (1)
  {
    v9 = *v7;
    if ((a1 & 0x3FF) == **v7)
    {
      break;
    }

    v7 += 2;
    if (!--v8)
    {
      goto LABEL_18;
    }
  }

  v10 = *(v7 - 2);
  if (v10)
  {
    v11 = v9;
    while (*v11 != a1)
    {
      v11 += 4;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    v9 = v11;
  }

LABEL_11:
  v12 = *(v9 + 1);
  if (!v12)
  {
LABEL_18:
    v14 = 0;
    v16 = 1;
    goto LABEL_19;
  }

  v13 = strlen(*(v9 + 1));
  v14 = v13;
  if (v13 >= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = v13;
  }

  memcpy(a2, v12, v15);
  if (v14 >= a3)
  {
    if (v14 == a3)
    {
      v16 = -124;
    }

    else
    {
      v16 = 15;
    }
  }

  else
  {
    v16 = 0;
    *(a2 + v14) = 0;
    if (*a4 != -124)
    {
      return v14;
    }
  }

LABEL_19:
  *a4 = v16;
  return v14;
}

uint64_t uprv_convertToLCID(char *__s, char *a2, int *a3)
{
  v3 = 0;
  if (a2 && __s && *a3 <= 0)
  {
    if (strlen(__s) >= 2 && strlen(a2) >= 2)
    {
      v8 = 0;
      v9 = 0;
      v10 = 141;
      do
      {
        v11 = v8;
        v8 = (v10 + v9) >> 1;
        if (v8 == v11)
        {
          break;
        }

        v12 = strcmp(__s, *(*(&unk_1E73FFE08 + 2 * v8 + 1) + 8));
        v13 = (v10 + v9) >> 1;
        if ((v12 & 0x80000000) == 0)
        {
          v9 = (v10 + v9) >> 1;
          v13 = v10;
          if (!v12)
          {
            return sub_1951F246C(&unk_1E73FFE08 + 4 * v8, a2, a3);
          }
        }

        v10 = v13;
      }

      while (v13 > v9);
      v3 = 0xFFFFFFFFLL;
      v14 = &unk_1E73FFE08;
      v15 = 141;
      do
      {
        v18 = 0;
        v16 = sub_1951F246C(v14, a2, &v18);
        if (v18 == -128)
        {
          v3 = v16;
        }

        else if (!v18)
        {
          return v16;
        }

        v14 += 4;
        --v15;
      }

      while (v15);
      if (v3 == -1)
      {
        v3 = 0;
        v17 = 1;
      }

      else
      {
        v17 = -128;
      }

      *a3 = v17;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1951F246C(unsigned int *a1, char *__s, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v7 = strlen(__s);
  v8 = *a1;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(a1 + 1);
    while (1)
    {
      v13 = 0;
      v14 = *(v12 + 16 * v9 + 8);
      if (*__s && *__s == *v14)
      {
        v13 = 0;
        do
        {
          v15 = __s[v13 + 1];
          v16 = v14[++v13];
          if (v15)
          {
            v17 = v15 == v16;
          }

          else
          {
            v17 = 0;
          }
        }

        while (v17);
        v13 = v13;
      }

      if (v13 > v11 && !v14[v13])
      {
        v11 = v13;
        v10 = v9;
        if (v13 == v7)
        {
          return *(v12 + 16 * v9);
        }
      }

      if (++v9 == v8)
      {
        v18 = v10;
        goto LABEL_19;
      }
    }
  }

  else
  {
    v11 = 0;
    v18 = 0;
LABEL_19:
    v19 = __s[v11];
    if ((v19 == 95 || v19 == 64) && (v20 = *(a1 + 1), !*(*(v20 + 16 * v18 + 8) + v11)))
    {
      *a3 = -128;
      return *(v20 + 16 * v18);
    }

    else
    {
      result = 0;
      *a3 = 1;
    }
  }

  return result;
}

const UChar *uloc_getTableStringWithFallback(const char *a1, char *a2, char *a3, char *a4, char *a5, int *a6, int *a7)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    StringByKeyWithFallback = 0;
    goto LABEL_44;
  }

  v13 = a2;
  HIDWORD(v29) = 0;
  v15 = ures_open(a1, a2, &v29 + 1);
  if (SHIDWORD(v29) < 1)
  {
    v25 = a1;
    if (HIDWORD(v29) == -127 || HIDWORD(v29) == -128 && *a7 != -127)
    {
      *a7 = HIDWORD(v29);
    }

    StringByKeyWithFallback = 0;
    v26 = v13;
    while (1)
    {
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      icu::StackUResourceBundle::StackUResourceBundle(v35);
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      icu::StackUResourceBundle::StackUResourceBundle(v33);
      ures_getByKeyWithFallback(v15, a3, v35, &v29 + 1);
      if (a4)
      {
        ures_getByKeyWithFallback(v35, a4, v35, &v29 + 1);
      }

      v16 = HIDWORD(v29);
      if (v29 > 0)
      {
        goto LABEL_13;
      }

      StringByKeyWithFallback = ures_getStringByKeyWithFallback(v35, a5, a6, &v29 + 1);
      if (SHIDWORD(v29) < 1)
      {
        goto LABEL_35;
      }

      *a7 = HIDWORD(v29);
      HIDWORD(v29) = 0;
      if (!strcmp(a3, "Countries"))
      {
        v19 = sub_195265F3C(a5);
      }

      else
      {
        if (strcmp(a3, "Languages"))
        {
          goto LABEL_35;
        }

        v19 = sub_195266004(a5);
      }

      if (!v19 || v19 == a5)
      {
        break;
      }

      StringByKeyWithFallback = ures_getStringByKeyWithFallback(v35, v19, a6, &v29 + 1);
      v16 = HIDWORD(v29);
      if (SHIDWORD(v29) > 0)
      {
        goto LABEL_13;
      }

LABEL_14:
      v18 = 0;
      *a7 = v16;
LABEL_41:
      icu::StackUResourceBundle::~StackUResourceBundle(v33);
      icu::StackUResourceBundle::~StackUResourceBundle(v35);
      if ((v18 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v16 = HIDWORD(v29);
    if (SHIDWORD(v29) < 1)
    {
LABEL_35:
      v18 = 0;
      goto LABEL_41;
    }

LABEL_13:
    v29 = 0;
    *a7 = v16;
    v17 = ures_getStringByKeyWithFallback(v35, "Fallback", &v29, &v29 + 1);
    v16 = HIDWORD(v29);
    if (SHIDWORD(v29) < 1)
    {
      v32 = 0;
      memset(&__s1[1], 0, 48);
      __s1[0] = &__s1[1] + 5;
      LODWORD(__s1[1]) = 40;
      v31 = 0;
      icu::CharString::appendInvariantChars(__s1, v17, v29, &v29 + 1);
      icu::StringPiece::StringPiece(&__s2, v13);
      if (v31 != v28)
      {
        v20 = __s1[0];
        goto LABEL_24;
      }

      if (v28)
      {
        v20 = __s1[0];
        if (!memcmp(__s1[0], __s2, v28))
        {
          v21 = 5;
          goto LABEL_28;
        }

LABEL_24:
        v22 = ures_open(v25, v20, &v29 + 1);
        if (v15)
        {
          ures_close(v15);
        }

        v21 = HIDWORD(v29);
        if (SHIDWORD(v29) < 1)
        {
          v18 = 1;
          v15 = v22;
          v13 = v26;
        }

        else
        {
          v15 = v22;
LABEL_28:
          v13 = v26;
LABEL_38:
          v18 = 0;
          *a7 = v21;
        }

        if (BYTE4(__s1[1]))
        {
          free(__s1[0]);
        }

        goto LABEL_41;
      }

      v21 = 5;
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  StringByKeyWithFallback = 0;
  *a7 = HIDWORD(v29);
LABEL_42:
  if (v15)
  {
    ures_close(v15);
  }

LABEL_44:
  v23 = *MEMORY[0x1E69E9840];
  return StringByKeyWithFallback;
}

uint64_t sub_1951F2930(char *a1, char *a2, UErrorCode *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v14 = 0u;
    v15 = 0u;
    *v12 = 0u;
    v13 = 0u;
    ulocimp_canonicalize(a1, a3, v12);
    if (*a3 <= 0)
    {
      v11 = 0;
      TableStringWithFallback = uloc_getTableStringWithFallback(0, v12[0], "layout", 0, a2, &v11, a3);
      v3 = 4;
      if (*a3 <= 0 && v11)
      {
        HIDWORD(v10) = *TableStringWithFallback - 98;
        LODWORD(v10) = HIDWORD(v10);
        v9 = v10 >> 1;
        if (v9 < 0xA && ((0x321u >> v9) & 1) != 0)
        {
          v3 = dword_195430F2C[v9];
        }

        else
        {
          *a3 = U_INTERNAL_PROGRAM_ERROR;
        }
      }
    }

    else
    {
      v3 = 4;
    }

    if (BYTE4(v12[1]))
    {
      free(v12[0]);
    }
  }

  else
  {
    v3 = 4;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

UChar **icu::LocaleUtility::canonicalLocaleString(UChar **this, UChar **a2, icu::UnicodeString *a3)
{
  if (this)
  {
    icu::UnicodeString::operator=(a2, this);
    v4 = *(a2 + 4);
    v5 = v4;
    v6 = v4 >> 5;
    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *(a2 + 3);
    }

    v8 = icu::UnicodeString::doIndexOf(a2, 0x40u, 0, v7);
    v9 = *(a2 + 4);
    v10 = v9;
    v11 = v9 >> 5;
    if (v10 >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a2 + 3);
    }

    v13 = icu::UnicodeString::doIndexOf(a2, 0x2Eu, 0, v12);
    if (v13 >= v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v8;
    }

    v16 = *(a2 + 4);
    if (v15 < 0)
    {
      if ((v16 & 0x8000) != 0)
      {
        v15 = *(a2 + 3);
      }

      else
      {
        v15 = v16 >> 5;
      }

      v17 = v15;
    }

    else if ((v16 & 0x8000) != 0)
    {
      v17 = *(a2 + 3);
    }

    else
    {
      v17 = v16 >> 5;
    }

    v18 = icu::UnicodeString::doIndexOf(a2, 0x5Fu, 0, v17);
    if (v18 >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = v15;
    }

    if (v19 < 1)
    {
      LODWORD(v19) = 0;
    }

    else
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = *(a2 + 4);
        if ((v21 & 0x8000u) == 0)
        {
          v22 = v21 >> 5;
        }

        else
        {
          v22 = *(a2 + 3);
        }

        if (i < v22)
        {
          v23 = (v21 & 2) != 0 ? (a2 + 10) : a2[3];
          v24 = *(v23 + i);
          if ((v24 - 65) <= 0x19)
          {
            icu::UnicodeString::setCharAt(a2, i, v24 | 0x20);
          }
        }
      }
    }

    if (v19 < v15)
    {
      v25 = v19;
      do
      {
        v26 = *(a2 + 4);
        if ((v26 & 0x8000u) == 0)
        {
          v27 = v26 >> 5;
        }

        else
        {
          v27 = *(a2 + 3);
        }

        if (v25 < v27)
        {
          if ((v26 & 2) != 0)
          {
            v28 = a2 + 5;
          }

          else
          {
            v28 = a2[3];
          }

          v29 = v28[v25];
          if ((v29 - 97) <= 0x19)
          {
            icu::UnicodeString::setCharAt(a2, v25, v29 - 32);
          }
        }

        ++v25;
      }

      while (v15 != v25);
    }
  }

  else
  {
    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

const icu::UnicodeString *icu::LocaleUtility::initLocaleFromName(icu::LocaleUtility *this, const icu::UnicodeString *a2, icu::Locale *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(this + 4))
  {
    icu::Locale::setToBogus(a2);
  }

  else
  {
    v5 = 0;
    memset(&v16[1], 0, 48);
    v18 = 0;
    v16[0] = &v16[1] + 5;
    LODWORD(v16[1]) = 40;
    v17 = 0;
    v14 = U_ZERO_ERROR;
    while (1)
    {
      if (*(this + 4) < 0)
      {
        v6 = *(this + 3);
        v7 = v6 >= v5 ? v5 : *(this + 3);
      }

      else
      {
        v6 = *(this + 4) >> 5;
        v7 = v6 >= v5 ? v5 : *(this + 4) >> 5;
      }

      v8 = icu::UnicodeString::doIndexOf(this, 0x40u, v7, v6 - v7);
      if (v8 < 0)
      {
        break;
      }

      v9 = v8;
      icu::UnicodeString::tempSubString(this, v5, v8 - v5, v15);
      icu::CharString::appendInvariantChars(v16, v15, &v14);
      icu::UnicodeString::~UnicodeString(v10, v15);
      icu::CharString::append(v16, 64, &v14);
      v5 = v9 + 1;
      if (v14 > U_ZERO_ERROR)
      {
        goto LABEL_15;
      }
    }

    icu::UnicodeString::tempSubString(this, v5, 0x7FFFFFFF, v15);
    icu::CharString::appendInvariantChars(v16, v15, &v14);
    icu::UnicodeString::~UnicodeString(v11, v15);
    if (v14 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
LABEL_15:
      icu::Locale::setToBogus(a2);
      goto LABEL_16;
    }

    icu::Locale::createFromName(v16[0], v15);
    icu::Locale::operator=(a2, v15);
    icu::Locale::~Locale(v15);
LABEL_16:
    if (BYTE4(v16[1]))
    {
      free(v16[0]);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return a2;
}

const icu::Locale *icu::LocaleUtility::initNameFromLocale(icu::LocaleUtility *this, const icu::Locale *a2, icu::UnicodeString *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(this + 216))
  {
    icu::UnicodeString::setToBogus(a2);
  }

  else
  {
    icu::UnicodeString::UnicodeString(v8, *(this + 5), 0xFFFFFFFFLL, 0);
    if ((v9 & 0x8000u) == 0)
    {
      v4 = v9 >> 5;
    }

    else
    {
      v4 = v10;
    }

    icu::UnicodeString::doAppend(a2, v8, 0, v4);
    icu::UnicodeString::~UnicodeString(v5, v8);
  }

  v6 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t icu::LocaleUtility::getAvailableLocaleNames(icu::LocaleUtility *this, const icu::UnicodeString *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (atomic_load_explicit(&dword_1EAEC97A0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC97A0))
  {
    sub_1951F31E8();
  }

  v3 = qword_1EAEC9798;
  if (qword_1EAEC9798)
  {
    umtx_lock(0);
    v4 = uhash_get(*v3, this);
    umtx_unlock(0);
    if (!v4)
    {
      operator new();
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL icu::LocaleUtility::isFallbackOf(icu::LocaleUtility *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  result = 0;
  v5 = *(this + 4);
  if ((v5 & 0x8000u) == 0)
  {
    v6 = v5 >> 5;
  }

  else
  {
    v6 = *(this + 3);
  }

  if ((v5 & 1) != 0 || v6 < 1)
  {
    return result;
  }

  v8 = *(a2 + 4);
  v9 = v8;
  v10 = v8 >> 5;
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a2 + 3);
  }

  if ((v5 & 2) != 0)
  {
    v12 = this + 10;
  }

  else
  {
    v12 = *(this + 3);
  }

  if (icu::UnicodeString::indexOf(a2, v12, 0, v6, 0, v11))
  {
    return 0;
  }

  v13 = *(a2 + 4);
  if ((v13 & 0x8000u) == 0)
  {
    v14 = v13 >> 5;
  }

  else
  {
    v14 = *(a2 + 3);
  }

  if (*(this + 4) < 0)
  {
    v16 = *(this + 3);
    if (v14 != v16)
    {
      goto LABEL_22;
    }

    return 1;
  }

  v15 = *(this + 4);
  if (v14 == v15 >> 5)
  {
    return 1;
  }

  v16 = v15 >> 5;
LABEL_22:
  if (v14 <= v16)
  {
    return 0;
  }

  if ((v13 & 2) != 0)
  {
    v17 = a2 + 10;
  }

  else
  {
    v17 = *(a2 + 3);
  }

  return *&v17[2 * v16] == 95;
}

uint64_t sub_1951F3424()
{
  v0 = qword_1EAEC9798;
  if (qword_1EAEC9798)
  {
    if (*qword_1EAEC9798)
    {
      uhash_close(*qword_1EAEC9798);
    }

    MEMORY[0x19A8B2600](v0, 0x10A0C40DD2A5DBALL);
    qword_1EAEC9798 = 0;
  }

  return 1;
}

icu::UnicodeString *sub_1951F3478(icu::UnicodeString *this, _WORD **a2)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  v3 = *a2;
  if (v3 && *v3)
  {
    v4 = 0;
    do
    {
      v5 = v4 + 1;
    }

    while (v3[++v4]);
  }

  else
  {
    v5 = 0;
  }

  icu::UnicodeString::doAppend(this, v3, v5);
  return this;
}

uint64_t sub_1951F34F8(uint64_t a1, char a2, const char *a3, const char *a4, char *a5, int a6, UErrorCode *a7)
{
  v24 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a5;
  *(a1 + 24) = 0;
  *(a1 + 32) = sub_1951F366C(a5);
  *(a1 + 36) = a6;
  *(a1 + 40) = 0;
  if (*a7 <= 0)
  {
    memset(&v22[1], 0, 48);
    v23 = 0;
    v22[0] = &v22[1] + 5;
    LODWORD(v22[1]) = 40;
    v13 = icu::CharString::append(v22, a2, a7);
    icu::StringPiece::StringPiece(&v20, a3);
    v14 = icu::CharString::append(v13, v20, v21, a7);
    icu::CharString::append(v14, 0, a7);
    v15 = v23;
    v16 = icu::CharString::append(v22, a2, a7);
    icu::StringPiece::StringPiece(&v20, a4);
    icu::CharString::append(v16, v20, v21, a7);
    v17 = icu::CharString::cloneData(v22, a7);
    *(a1 + 24) = v17;
    if (*a7 <= 0)
    {
      *a1 = v17;
      *(a1 + 8) = &v17[v15];
    }

    if (BYTE4(v22[1]))
    {
      free(v22[0]);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1951F366C(char *a1)
{
  v1 = *a1;
  if ((v1 - 48) <= 9)
  {
    if ((a1[1] - 58) >= 0xF6u && (a1[2] - 58) >= 0xF6u && !a1[3])
    {
      return (a1[2] + 10 * (a1[1] + 10 * v1) - 5327);
    }

    return 0;
  }

  v3 = v1 - 65;
  if (v3 > 0x19)
  {
    return 0;
  }

  v4 = a1[1] - 65;
  if (v4 > 0x19 || a1[2])
  {
    return 0;
  }

  return v4 + 26 * v3 + 1001;
}

uint64_t sub_1951F3704(uint64_t a1, const char *a2, int a3, const char *a4, int a5, char *a6, int a7, int a8, UErrorCode *a9)
{
  v26 = *MEMORY[0x1E69E9840];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = sub_1951F366C(a6);
  *(a1 + 36) = a8;
  *(a1 + 40) = 0;
  if (*a9 <= 0)
  {
    memset(&v24[1], 0, 48);
    v25 = 0;
    v24[0] = &v24[1] + 5;
    LODWORD(v24[1]) = 40;
    v17 = icu::CharString::append(v24, a2, a3, a9);
    icu::CharString::append(v17, 0, a9);
    v18 = v25;
    v19 = icu::CharString::append(v24, a4, a5, a9);
    icu::CharString::append(v19, 0, a9);
    v20 = v25;
    icu::CharString::append(v24, a6, a7, a9);
    v21 = icu::CharString::cloneData(v24, a9);
    *(a1 + 24) = v21;
    if (*a9 <= 0)
    {
      *a1 = v21;
      *(a1 + 8) = &v21[v18];
      *(a1 + 16) = &v21[v20];
    }

    if (BYTE4(v24[1]))
    {
      free(v24[0]);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1951F3894(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    free(v4);
  }

  *a1 = *a2;
  *(a1 + 32) = *(a2 + 32);
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 40) = *(a2 + 40);
  if (v5)
  {
    *a2 = "";
    *(a2 + 8) = "";
    *(a2 + 24) = 0;
    *(a2 + 40) = 0;
  }

  return a1;
}

BOOL sub_1951F3900(uint64_t a1, uint64_t a2)
{
  if (strcmp(*a1, *a2))
  {
    return 0;
  }

  if (strcmp(*(a1 + 8), *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  if (v4 != *(a2 + 32))
  {
    return 0;
  }

  if (v4 <= 0)
  {
    return strcmp(*(a1 + 16), *(a2 + 16)) == 0;
  }

  return 1;
}

BOOL sub_1951F3980(uint64_t a1, uint64_t a2)
{
  if (!strcmp(*a1, *a2) && !strcmp(*(a1 + 8), *(a2 + 8)) && (v4 = *(a1 + 32), v4 == *(a2 + 32)) && (v4 > 0 || !strcmp(*(a1 + 16), *(a2 + 16))))
  {
    return *(a1 + 36) == *(a2 + 36);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1951F3A04(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    v2 = *a1;
    v3 = strlen(*a1);
    LODWORD(v2) = ustr_hashCharsN(v2, v3);
    v4 = strlen(*(a1 + 8));
    *(a1 + 40) = *(a1 + 36) + 37 * (*(a1 + 32) + 37 * (ustr_hashCharsN(*(a1 + 8), v4) + 37 * v2));
  }

  return a1;
}

uint64_t sub_1951F3AB4(uint64_t a1)
{
  *a1 = &unk_1F0932550;
  free(*(a1 + 8));
  return a1;
}

void sub_1951F3AFC(uint64_t a1)
{
  *a1 = &unk_1F0932550;
  free(*(a1 + 8));

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951F3B64(uint64_t a1)
{
  *a1 = &unk_1F0932580;
  free(*(a1 + 8));
  return a1;
}

void sub_1951F3BAC(uint64_t a1)
{
  *a1 = &unk_1F0932580;
  free(*(a1 + 8));

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1951F3C14(uint64_t a1, uint64_t a2, int *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_1F0932670;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = &unk_1F0932670;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = &unk_1F0932670;
  *(a1 + 96) = &unk_1F0932628;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = &unk_1F0932670;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = &unk_1F0932670;
  *(a1 + 168) = &unk_1F0932628;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = &unk_1F0932670;
  *(a1 + 216) = &unk_1F0932628;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a2;
  if (*a3 > 0)
  {
    goto LABEL_23;
  }

  v6 = ures_getByKey(a2, "embeddings", 0, a3);
  Int = ures_getInt(v6, a3);
  v8 = ures_getByKey(a2, "hunits", 0, a3);
  v9 = v8;
  if (*a3 <= 0)
  {
    v10 = ures_getInt(v8, a3);
    StringByKey = ures_getStringByKey(a2, "type", 0, a3);
    if (*a3 <= 0)
    {
      v12 = StringByKey;
      if (u_strCompare(StringByKey, -1, L"codepoints", -1, 0))
      {
        if (u_strCompare(v12, -1, "g", -1, 0))
        {
LABEL_9:
          *(a1 + 16) = ures_getStringByKey(a2, "model", 0, a3);
          v14 = ures_getByKey(a2, "data", 0, a3);
          v15 = v14;
          if (*a3 <= 0)
          {
            v35 = 0;
            IntVector = ures_getIntVector(v14, &v35, a3);
            *a1 = uhash_open(uhash_hashUChars, uhash_compareUChars, 0, a3);
            v37 = 0;
            memset(v36, 0, sizeof(v36));
            icu::StackUResourceBundle::StackUResourceBundle(v36);
            v34[2] = 0;
            v34[0] = &unk_1F0936748;
            v34[1] = 0;
            v34[3] = 0xFFFFFFFFLL;
            ures_getValueWithFallback(a2, "dict", v36, v34, a3);
            v32[0] = 0;
            v32[1] = 0;
            v33 = 0;
            sub_195291094(v34, a3, v32);
            if (*a3 <= 0)
            {
              v17 = v33;
              v31 = 0;
              if (v33 < 1)
              {
LABEL_15:
                v20 = 4 * Int * v10;
                v21 = 4 * v10 * v10;
                *(a1 + 32) = IntVector;
                *(a1 + 40) = v17 + 1;
                *(a1 + 44) = Int;
                v22 = &IntVector[(v17 + 1) * Int];
                *(a1 + 56) = v22;
                *(a1 + 64) = Int;
                *(a1 + 68) = 4 * v10;
                v23 = &v22[v20];
                *(a1 + 80) = v23;
                *(a1 + 88) = v10;
                *(a1 + 92) = 4 * v10;
                v24 = &v23[v21];
                *(a1 + 104) = v24;
                *(a1 + 112) = 4 * v10;
                v25 = &v24[4 * v10];
                *(a1 + 128) = v25;
                *(a1 + 136) = Int;
                *(a1 + 140) = 4 * v10;
                v26 = &v25[v20];
                *(a1 + 152) = v26;
                *(a1 + 160) = v10;
                *(a1 + 164) = 4 * v10;
                v27 = &v26[v21];
                *(a1 + 176) = v27;
                *(a1 + 184) = 4 * v10;
                v28 = &v27[4 * v10];
                *(a1 + 200) = v28;
                *(a1 + 208) = 2 * v10;
                *(a1 + 212) = 4;
                *(a1 + 224) = &v28[8 * v10];
                *(a1 + 232) = 4;
              }

              else
              {
                v18 = 0;
                while (1)
                {
                  icu::ResourceArray::getValue(v32, v18, v34);
                  v19 = sub_195290EAC(v34, &v31, a3);
                  uhash_putiAllowZero(*a1, v19, v18, a3);
                  if (*a3 >= 1)
                  {
                    break;
                  }

                  if (v17 == ++v18)
                  {
                    goto LABEL_15;
                  }
                }
              }
            }

            icu::ResourceValue::~ResourceValue(v34);
            icu::StackUResourceBundle::~StackUResourceBundle(v36);
          }

          if (v15)
          {
            ures_close(v15);
          }

          goto LABEL_19;
        }

        v13 = 2;
      }

      else
      {
        v13 = 1;
      }

      *(a1 + 8) = v13;
      goto LABEL_9;
    }
  }

LABEL_19:
  if (v9)
  {
    ures_close(v9);
  }

  if (v6)
  {
    ures_close(v6);
  }

LABEL_23:
  v29 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1951F4118(uint64_t a1, UText *ut, int a3, int a4, icu::UVector32 *this, icu::UVector32 *a6, UErrorCode *a7)
{
  v14 = a4 - a3;
  if (a4 - a3 < 0)
  {
    if (!icu::UVector32::expandCapacity(this, a4 - a3, a7))
    {
      return;
    }

LABEL_8:
    if (!icu::UVector32::expandCapacity(a6, v14, a7) || *a7 >= 1)
    {
      return;
    }

    goto LABEL_10;
  }

  if (*(this + 3) < v14 && !icu::UVector32::expandCapacity(this, a4 - a3, a7))
  {
    return;
  }

  if (*(a6 + 3) < v14)
  {
    goto LABEL_8;
  }

  if (*a7 > 0)
  {
    return;
  }

LABEL_10:
  utext_setNativeIndex(ut, a3);
  v21 = 0;
  if (*a7 <= 0)
  {
    do
    {
      NativeIndex = utext_getNativeIndex(ut);
      if (NativeIndex >= a4)
      {
        return;
      }

      LOWORD(v21) = utext_next32(ut);
      v15 = *(this + 2);
      if (v15 < -1 || *(this + 3) <= v15)
      {
        if (!icu::UVector32::expandCapacity(this, v15 + 1, a7))
        {
          goto LABEL_20;
        }

        v15 = *(this + 2);
      }

      *(*(this + 3) + 4 * v15) = NativeIndex;
      ++*(this + 2);
LABEL_20:
      v22 = 0;
      v17 = uhash_getiAndFound(*(a1 + 8), &v21, &v22);
      if (v22)
      {
        v18 = v17;
      }

      else
      {
        v18 = *(*(a1 + 8) + 48);
      }

      v19 = *(a6 + 2);
      if (v19 >= -1 && *(a6 + 3) > v19)
      {
        goto LABEL_27;
      }

      if (icu::UVector32::expandCapacity(a6, v19 + 1, a7))
      {
        v19 = *(a6 + 2);
LABEL_27:
        *(*(a6 + 3) + 4 * v19) = v18;
        ++*(a6 + 2);
      }
    }

    while (*a7 < 1);
  }
}

uint64_t sub_1951F42E0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  result = uhash_getiAndFound(*(a1 + 8), a2, &v4);
  if (!v4)
  {
    return *(*(a1 + 8) + 48);
  }

  return result;
}

void sub_1951F4340(uint64_t a1, UText *a2, uint64_t a3, int a4, icu::UVector32 *this, icu::UVector32 *a6, UErrorCode *a7)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    v15 = a4 - a3;
    if (a4 - a3 < 0)
    {
      if (!icu::UVector32::expandCapacity(this, a4 - a3, a7))
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (*(this + 3) < v15 && !icu::UVector32::expandCapacity(this, a4 - a3, a7))
      {
        goto LABEL_2;
      }

      if (*(a6 + 3) >= v15)
      {
        if (*a7 > 0)
        {
          goto LABEL_2;
        }

LABEL_12:
        icu::Locale::Locale(dest);
        CharacterInstance = icu::BreakIterator::createCharacterInstance(dest, a7, v16, v17);
        icu::Locale::~Locale(dest);
        if (*a7 > 0)
        {
          if (!CharacterInstance)
          {
            goto LABEL_2;
          }

          goto LABEL_16;
        }

        (*(*CharacterInstance + 64))(CharacterInstance, a2, a7);
        if (*a7 > 0)
        {
LABEL_16:
          (*(*CharacterInstance + 8))(CharacterInstance);
          goto LABEL_2;
        }

        if (a3)
        {
          (*(*CharacterInstance + 128))(CharacterInstance, a3);
        }

        *dest = 0;
        v32 = 0;
        v33 = 0;
        v19 = (*(*CharacterInstance + 104))(CharacterInstance);
        if (v19 == -1 || v19 >= a4)
        {
          v21 = a3;
LABEL_48:
          if (v21 < a4 && *a7 <= 0)
          {
            utext_extract(a2, v21, a4, dest, 10, a7);
            if (*a7 <= 0)
            {
              sub_1951D6BD0(this, v21, a7);
              v29 = sub_1951F42E0(a1, dest);
              sub_1951D6BD0(a6, v29, a7);
            }
          }

          goto LABEL_16;
        }

        v22 = a3;
        while (1)
        {
          v21 = v19;
          if (v19 > a3)
          {
            break;
          }

LABEL_44:
          v19 = (*(*CharacterInstance + 104))(CharacterInstance);
          v28 = v19 != -1 && v19 < a4;
          v22 = v21;
          if (!v28)
          {
            goto LABEL_48;
          }
        }

        utext_extract(a2, v22, v19, dest, 10, a7);
        if (*a7 > 0)
        {
          goto LABEL_16;
        }

        v23 = *(this + 2);
        if (v23 < -1 || *(this + 3) <= v23)
        {
          if (!icu::UVector32::expandCapacity(this, v23 + 1, a7))
          {
            goto LABEL_35;
          }

          v23 = *(this + 2);
        }

        *(*(this + 3) + 4 * v23) = v22;
        ++*(this + 2);
LABEL_35:
        v30 = 0;
        v25 = uhash_getiAndFound(*(a1 + 8), dest, &v30);
        if (v30)
        {
          v26 = v25;
        }

        else
        {
          v26 = *(*(a1 + 8) + 48);
        }

        v27 = *(a6 + 2);
        if (v27 < -1 || *(a6 + 3) <= v27)
        {
          if (!icu::UVector32::expandCapacity(a6, v27 + 1, a7))
          {
            goto LABEL_43;
          }

          v27 = *(a6 + 2);
        }

        *(*(a6 + 3) + 4 * v27) = v26;
        ++*(a6 + 2);
LABEL_43:
        if (*a7 > 0)
        {
          goto LABEL_16;
        }

        goto LABEL_44;
      }
    }

    if (!icu::UVector32::expandCapacity(a6, v15, a7) || *a7 >= 1)
    {
      goto LABEL_2;
    }

    goto LABEL_12;
  }

LABEL_2:
  v7 = *MEMORY[0x1E69E9840];
}