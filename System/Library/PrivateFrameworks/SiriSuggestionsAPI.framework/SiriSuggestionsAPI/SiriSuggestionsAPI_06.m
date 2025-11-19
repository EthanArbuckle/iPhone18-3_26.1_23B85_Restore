uint64_t static SuggestionsRFDataModels.bundleName.getter()
{
  OUTLINED_FUNCTION_84_2();

  return OUTLINED_FUNCTION_93();
}

uint64_t static SuggestionsRFDataModels.bundleName.setter(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_85_2();
  qword_1EBDFBE38 = a1;
  off_1EBDFBE40 = a2;
}

uint64_t (*static SuggestionsRFDataModels.bundleName.modify())()
{
  OUTLINED_FUNCTION_93();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BFA80340@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBDFBE40;
  *a1 = qword_1EBDFBE38;
  a1[1] = v2;
}

uint64_t sub_1BFA80390(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBDFBE38 = v2;
  off_1EBDFBE40 = v1;
}

uint64_t sub_1BFA803F4()
{
  v0 = sub_1BFAAE308();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = v19 - v9;
  v11 = MEMORY[0x1BFB61290](v8);
  sub_1BFAAF868();

  sub_1BFAAE2A8();

  v19[1] = 0;
  v19[2] = 0xE000000000000000;
  sub_1BFAAFC48();

  v19[4] = 0xD000000000000022;
  v19[5] = 0x80000001BFAB9C90;
  swift_beginAccess();
  v12 = qword_1EBDFBE38;
  v13 = off_1EBDFBE40;

  MEMORY[0x1BFB60B80](v12, v13);

  MEMORY[0x1BFB60B80](0x656C646E75622ELL, 0xE700000000000000);
  sub_1BFAAE2C8();

  v14 = *(v1 + 8);
  v14(v6, v0);
  v15 = sub_1BFAAE2E8();
  v17 = v16;
  result = (v14)(v10, v0);
  qword_1EBDFBE48 = v15;
  qword_1EBDFBE50 = v17;
  return result;
}

uint64_t *sub_1BFA805F8()
{
  if (qword_1EBDFB508 != -1)
  {
    OUTLINED_FUNCTION_9_6();
  }

  return &qword_1EBDFBE48;
}

uint64_t static SuggestionsRFDataModels.bundlePath.getter()
{
  if (qword_1EBDFB508 != -1)
  {
    OUTLINED_FUNCTION_9_6();
  }

  OUTLINED_FUNCTION_84_2();

  return OUTLINED_FUNCTION_93();
}

uint64_t static SuggestionsRFDataModels.bundlePath.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EBDFB508 != -1)
  {
    OUTLINED_FUNCTION_9_6();
  }

  OUTLINED_FUNCTION_85_2();
  qword_1EBDFBE48 = a1;
  qword_1EBDFBE50 = a2;
}

uint64_t (*static SuggestionsRFDataModels.bundlePath.modify())()
{
  if (qword_1EBDFB508 != -1)
  {
    OUTLINED_FUNCTION_9_6();
  }

  OUTLINED_FUNCTION_93();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1BFA80778@<X0>(void *a1@<X8>)
{
  sub_1BFA805F8();
  swift_beginAccess();
  v2 = qword_1EBDFBE50;
  *a1 = qword_1EBDFBE48;
  a1[1] = v2;
}

uint64_t sub_1BFA807CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_1BFA805F8();
  swift_beginAccess();
  qword_1EBDFBE48 = v2;
  qword_1EBDFBE50 = v1;
}

uint64_t SuggestionsRFDataModels.SuggestionHintsDataModel.requestId.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHintsDataModel.crossDomainHint.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t SuggestionsRFDataModels.SuggestionHintsDataModel.crossDomainHint.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1BFA80928(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001BFAB9580 == a2;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D6F4473736F7263 && a2 == 0xEF746E69486E6961)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BFAAFF08();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BFA80A58(char a1)
{
  if (!a1)
  {
    return 0x4974736575716572;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6D6F4473736F7263;
}

uint64_t sub_1BFA80ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA80928(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA80AF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA80A50();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA80B1C(uint64_t a1)
{
  v2 = sub_1BFA85AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA80B58(uint64_t a1)
{
  v2 = sub_1BFA85AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsRFDataModels.SuggestionHintsDataModel.encode(to:)()
{
  OUTLINED_FUNCTION_55_2();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE80, &qword_1BFAB5488);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_44_4();
  v12 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v16 = v0[4];
  v17 = v0[3];
  v15 = v4[4];
  OUTLINED_FUNCTION_83_1(v4, v4[3]);
  sub_1BFA85AE4();
  OUTLINED_FUNCTION_79_2();
  sub_1BFAB0008();
  sub_1BFAAFE78();
  if (!v1)
  {
    OUTLINED_FUNCTION_3();
    sub_1BFAAFE98();
    sub_1BFA85B38();

    OUTLINED_FUNCTION_3();
    sub_1BFAAFE68();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_56_2();
}

void SuggestionsRFDataModels.SuggestionHintsDataModel.init(from:)()
{
  OUTLINED_FUNCTION_55_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE88, &qword_1BFAB5490);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = v2[4];
  OUTLINED_FUNCTION_83_1(v2, v2[3]);
  sub_1BFA85AE4();
  sub_1BFAAFFF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_78_2();
    v11 = sub_1BFAAFDC8();
    v13 = v12;
    LOBYTE(v18) = 1;
    OUTLINED_FUNCTION_78_2();
    sub_1BFAAFDE8();
    v15 = v14;
    sub_1BFA85B8C();
    sub_1BFAAFDB8();
    v16 = OUTLINED_FUNCTION_57_3();
    v17(v16);

    *v4 = v11;
    v4[1] = v13;
    v4[2] = v15;
    v4[3] = v18;
    v4[4] = v19;

    __swift_destroy_boxed_opaque_existential_2Tm(v2);
  }

  OUTLINED_FUNCTION_56_2();
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.speakSuggestions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.suggestions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.otherSuggestions.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.appBundleId.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.moreSuggestionsDirectInvocation.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.learnMorePunchout.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.moreCat.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.moreCat.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.siriHelpWithAppNameCat.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.siriHelpWithAppNameCat.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.learnMoreCat.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.learnMoreCat.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.trySayingCat.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.trySayingCat.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 152);

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.otherIntro.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.otherIntro.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 168);

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.siriHelpHeader.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.siriHelpHeader.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 184);

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.unsupportedAppHeader.getter()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.unsupportedAppHeader.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 200);

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.seeOtherSuggestionsButton.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.seeOtherSuggestionsButton.setter()
{
  OUTLINED_FUNCTION_59();
  v3 = *(v1 + 216);

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.init(parameters:catDialogs:isSmartSnippet:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, 0x6CuLL);
  v55 = __dst[0];
  v7 = __dst[1];
  v6 = __dst[2];
  v8 = __dst[3];
  v61 = __dst[4];
  v9 = __dst[6];
  v59 = __dst[7];
  v60 = __dst[5];
  v10 = __dst[10];
  v58 = __dst[9];
  v63 = __dst[8];

  v57 = v6;

  v56 = v8;

  v64 = v9;

  v62 = v10;

  v11 = sub_1BFA2368C(0, a2);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v53 = v15;
  v54 = v13;
  v16 = sub_1BFA2368C(1, a2);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v14 = v17;
  }

  v50 = sub_1BFA2368C(2, a2);
  v20 = v19;
  v48 = sub_1BFA2368C(3, a2);
  v22 = v21;
  v47 = sub_1BFA2368C(4, a2);
  v24 = v23;
  v25 = sub_1BFA2368C(5, a2);
  v52 = v18;
  if (v26)
  {
    v27 = v25;
    v28 = v26;
  }

  else
  {

    v27 = v18;
    v28 = v14;
  }

  v29 = sub_1BFA2368C(7, a2);
  v51 = v14;
  v49 = v27;
  if (v30)
  {
    v31 = v30;
    v46 = v29;
  }

  else
  {

    v46 = v27;
    v31 = v28;
  }

  v32 = sub_1BFA2368C(8, a2);
  v34 = v33;

  if (v34)
  {
    sub_1BFA85BE0(__dst);
    v36 = v53;
    result = v54;
  }

  else
  {
    v36 = v53;

    sub_1BFA85BE0(__dst);
    result = v54;
    v32 = v54;
    v34 = v53;
  }

  v37 = MEMORY[0x1E69E7CC0];
  v38 = 0xE000000000000000;
  *a4 = v55;
  if (v24)
  {
    v39 = v24;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  v40 = v47;
  v41 = v48;
  if (!v24)
  {
    v40 = 0;
  }

  v42 = BYTE2(__dst[13]);
  if (v22)
  {
    v43 = v22;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  if (!v22)
  {
    v41 = 0;
  }

  if (v20)
  {
    v38 = v20;
  }

  v44 = __dst[13];
  v45 = v50;
  if (!v20)
  {
    v45 = 0;
  }

  if (v7)
  {
    v37 = v7;
  }

  *(a4 + 8) = v37;
  *(a4 + 16) = v57;
  *(a4 + 24) = v56;
  *(a4 + 32) = v61;
  *(a4 + 40) = v60;
  *(a4 + 48) = v64;
  *(a4 + 56) = v59;
  *(a4 + 64) = v63;
  *(a4 + 72) = v58;
  *(a4 + 80) = v62;
  *(a4 + 88) = a3 & 1;
  *(a4 + 89) = v44;
  *(a4 + 96) = result;
  *(a4 + 104) = v36;
  *(a4 + 112) = v52;
  *(a4 + 120) = v51;
  *(a4 + 128) = v45;
  *(a4 + 136) = v38;
  *(a4 + 144) = v41;
  *(a4 + 152) = v43;
  *(a4 + 160) = v40;
  *(a4 + 168) = v39;
  *(a4 + 176) = v49;
  *(a4 + 184) = v28;
  *(a4 + 192) = v46;
  *(a4 + 200) = v31;
  *(a4 + 208) = v32;
  *(a4 + 216) = v34;
  *(a4 + 224) = v42;
  return result;
}

uint64_t sub_1BFA81954(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001BFAB97C0 == a2;
  if (v3 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001BFAB9920 == a2;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001BFAB9940 == a2;
        if (v8 || (sub_1BFAAFF08() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001BFAB9A40 == a2;
          if (v9 || (sub_1BFAAFF08() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
            if (v10 || (sub_1BFAAFF08() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001FLL && 0x80000001BFAB9980 == a2;
              if (v11 || (sub_1BFAAFF08() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001BFAB99A0 == a2;
                if (v12 || (sub_1BFAAFF08() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x537472616D537369 && a2 == 0xEE0074657070696ELL;
                  if (v13 || (sub_1BFAAFF08() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x616E456561537369 && a2 == 0xEC00000064656C62;
                    if (v14 || (sub_1BFAAFF08() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x74614365726F6DLL && a2 == 0xE700000000000000;
                      if (v15 || (sub_1BFAAFF08() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x80000001BFAB9A60 == a2;
                        if (v16 || (sub_1BFAAFF08() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x726F4D6E7261656CLL && a2 == 0xEC00000074614365;
                          if (v17 || (sub_1BFAAFF08() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E69796153797274 && a2 == 0xEC00000074614367;
                            if (v18 || (sub_1BFAAFF08() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x746E49726568746FLL && a2 == 0xEA00000000006F72;
                              if (v19 || (sub_1BFAAFF08() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x706C654869726973 && a2 == 0xEE00726564616548;
                                if (v20 || (sub_1BFAAFF08() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000014 && 0x80000001BFAB9A80 == a2;
                                  if (v21 || (sub_1BFAAFF08() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000019 && 0x80000001BFAB8580 == a2;
                                    if (v22 || (sub_1BFAAFF08() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000014 && 0x80000001BFAB9AA0 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1BFAAFF08();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BFA81F18(char a1)
{
  result = 0x6974736567677573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6C646E7542707061;
      break;
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x537472616D537369;
      break;
    case 9:
      result = 0x616E456561537369;
      break;
    case 10:
      result = 0x74614365726F6DLL;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0x726F4D6E7261656CLL;
      break;
    case 13:
      result = 0x6E69796153797274;
      break;
    case 14:
      result = 0x746E49726568746FLL;
      break;
    case 15:
      result = 0x706C654869726973;
      break;
    case 16:
    case 18:
      result = 0xD000000000000014;
      break;
    case 17:
      v3 = 9;
      goto LABEL_14;
    default:
      v3 = 5;
LABEL_14:
      result = v3 | 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1BFA8217C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA81954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA821A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA81F10();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA821CC(uint64_t a1)
{
  v2 = sub_1BFA85C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA82208(uint64_t a1)
{
  v2 = sub_1BFA85C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsRFDataModels.SuggestionHelpDataModel.encode(to:)()
{
  OUTLINED_FUNCTION_52_5();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE90, &qword_1BFAB5498);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_44_4();
  v12 = *v0;
  v41 = *(v0 + 2);
  v42 = *(v0 + 1);
  v40 = *(v0 + 3);
  v39 = v0[32];
  v37 = *(v0 + 5);
  v38 = *(v0 + 6);
  v35 = *(v0 + 7);
  v36 = *(v0 + 8);
  v33 = *(v0 + 9);
  v34 = *(v0 + 10);
  v31 = v0[89];
  v32 = v0[88];
  v29 = *(v0 + 13);
  v30 = *(v0 + 12);
  v27 = *(v0 + 15);
  v28 = *(v0 + 14);
  v25 = *(v0 + 17);
  v26 = *(v0 + 16);
  v23 = *(v0 + 19);
  v24 = *(v0 + 18);
  v22 = *(v0 + 20);
  v21 = *(v0 + 21);
  v20 = *(v0 + 22);
  v19 = *(v0 + 23);
  v18 = *(v0 + 24);
  v17 = *(v0 + 25);
  v16 = *(v0 + 26);
  v15 = *(v0 + 27);
  v13 = v0[224];
  v14 = v4[4];
  OUTLINED_FUNCTION_83_1(v4, v4[3]);
  sub_1BFA85C10();
  OUTLINED_FUNCTION_79_2();
  sub_1BFAB0008();
  sub_1BFAAFE88();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB560, &qword_1BFAB5470);
    sub_1BFA154CC(&qword_1EBDFB568);
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFEB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBEA0, &qword_1BFAB54A0);
    sub_1BFA85CB8(&qword_1EBDFBEA8, sub_1BFA85C64);
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFEB8();
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFEB8();
    OUTLINED_FUNCTION_81_2(4);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE88();
    OUTLINED_FUNCTION_30_5(5);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_30_5(6);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_30_5(7);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_81_2(8);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE88();
    OUTLINED_FUNCTION_81_2(9);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE88();
    OUTLINED_FUNCTION_30_5(10);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_30_5(11);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_30_5(12);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_30_5(13);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_30_5(14);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_30_5(15);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_30_5(16);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_30_5(17);
    OUTLINED_FUNCTION_33_4();
    OUTLINED_FUNCTION_81_2(18);
    sub_1BFAAFE88();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_51_3();
}

void SuggestionsRFDataModels.SuggestionHelpDataModel.init(from:)()
{
  OUTLINED_FUNCTION_52_5();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBEB8, &qword_1BFAB54A8);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8, v9);
  v10 = v2[4];
  v52 = v2;
  OUTLINED_FUNCTION_83_1(v2, v2[3]);
  sub_1BFA85C10();
  sub_1BFAAFFF8();
  if (v0)
  {
    OUTLINED_FUNCTION_4_12();
    __swift_destroy_boxed_opaque_existential_2Tm(v2);

    if (v2)
    {

      if ((v10 & 1) == 0)
      {
LABEL_13:
        if (v53)
        {
LABEL_14:

          if ((v55 & 1) == 0)
          {
LABEL_15:
            if (v57)
            {
LABEL_16:

              if ((v59 & 1) == 0)
              {
LABEL_17:
                if (!v61)
                {
                  goto LABEL_19;
                }

LABEL_18:

                goto LABEL_19;
              }

LABEL_9:

              if ((v61 & 1) == 0)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }

LABEL_8:
            if (!v59)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
          }

LABEL_7:

          if (v57)
          {
            goto LABEL_16;
          }

          goto LABEL_8;
        }

LABEL_6:
        if (!v55)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }
    }

    else if (!v10)
    {
      goto LABEL_13;
    }

    if (v53)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v60 = v4;
  LOBYTE(v64[0]) = 0;
  OUTLINED_FUNCTION_21_7();
  v11 = sub_1BFAAFDD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB560, &qword_1BFAB5470);
  sub_1BFA154CC(&qword_1EDCC77A8);
  OUTLINED_FUNCTION_21_7();
  sub_1BFAAFE08();
  v51 = v64[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBEA0, &qword_1BFAB54A0);
  sub_1BFA85CB8(&qword_1EBDFBEC0, sub_1BFA85D30);
  OUTLINED_FUNCTION_21_7();
  sub_1BFAAFE08();
  v50 = v64[0];
  LOBYTE(v63[0]) = 3;
  OUTLINED_FUNCTION_21_7();
  sub_1BFAAFE08();
  v49 = v64[0];
  OUTLINED_FUNCTION_0_12(4);
  v12 = sub_1BFAAFDD8();
  OUTLINED_FUNCTION_0_12(5);
  v13 = sub_1BFAAFDC8();
  v58 = v12;
  v48 = v14;
  OUTLINED_FUNCTION_0_12(6);
  v15 = sub_1BFAAFD88();
  v99 = v16;
  OUTLINED_FUNCTION_0_12(7);
  v56 = sub_1BFAAFD88();
  v62 = v17;
  OUTLINED_FUNCTION_0_12(8);
  v54 = sub_1BFAAFDD8();
  v18 = v13;
  OUTLINED_FUNCTION_0_12(9);
  v40 = sub_1BFAAFDD8();
  OUTLINED_FUNCTION_0_12(10);
  v19 = sub_1BFAAFDC8();
  v47 = v20;
  v21 = v19;
  OUTLINED_FUNCTION_0_12(11);
  v39 = sub_1BFAAFDC8();
  v46 = v22;
  OUTLINED_FUNCTION_0_12(12);
  v38 = sub_1BFAAFDC8();
  v45 = v23;
  OUTLINED_FUNCTION_0_12(13);
  v37 = sub_1BFAAFDC8();
  v44 = v24;
  OUTLINED_FUNCTION_0_12(14);
  v36 = sub_1BFAAFDC8();
  v43 = v25;
  OUTLINED_FUNCTION_0_12(15);
  v35 = sub_1BFAAFDC8();
  v42 = v26;
  OUTLINED_FUNCTION_0_12(16);
  v34 = sub_1BFAAFDC8();
  v41 = v27;
  OUTLINED_FUNCTION_0_12(17);
  v32 = sub_1BFAAFDC8();
  v33 = v28;
  v94 = 18;
  OUTLINED_FUNCTION_21_7();
  v29 = sub_1BFAAFDD8();
  v58 &= 1u;
  v54 &= 1u;
  v30 = OUTLINED_FUNCTION_7_8();
  v31(v30);
  LOBYTE(v63[0]) = v11 & 1;
  v63[1] = v51;
  v63[2] = v50;
  v63[3] = v49;
  LOBYTE(v63[4]) = v58;
  v63[5] = v18;
  v63[6] = v48;
  v63[7] = v15;
  v63[8] = v99;
  v63[9] = v56;
  v63[10] = v62;
  LOBYTE(v63[11]) = v54;
  BYTE1(v63[11]) = v40 & 1;
  v63[12] = v21;
  v63[13] = v47;
  v63[14] = v39;
  v63[15] = v46;
  v63[16] = v38;
  v63[17] = v45;
  v63[18] = v37;
  v63[19] = v44;
  v63[20] = v36;
  v63[21] = v43;
  v63[22] = v35;
  v63[23] = v42;
  v63[24] = v34;
  v63[25] = v41;
  v63[26] = v32;
  v63[27] = v33;
  LOBYTE(v63[28]) = v29 & 1;
  memcpy(v60, v63, 0xE1uLL);
  sub_1BFA85D84(v63, v64);
  __swift_destroy_boxed_opaque_existential_2Tm(v52);
  LOBYTE(v64[0]) = v11 & 1;
  *(v64 + 1) = *v98;
  HIDWORD(v64[0]) = *&v98[3];
  v64[1] = v51;
  v64[2] = v50;
  v64[3] = v49;
  v65 = v58;
  *v66 = *v97;
  *&v66[3] = *&v97[3];
  v67 = v18;
  v68 = v48;
  v69 = v15;
  v70 = v99;
  v71 = v56;
  v72 = v62;
  v73 = v54;
  v74 = v40 & 1;
  v76 = v96;
  v75 = v95;
  v77 = v21;
  v78 = v47;
  v79 = v39;
  v80 = v46;
  v81 = v38;
  v82 = v45;
  v83 = v37;
  v84 = v44;
  v85 = v36;
  v86 = v43;
  v87 = v35;
  v88 = v42;
  v89 = v34;
  v90 = v41;
  v91 = v32;
  v92 = v33;
  v93 = v29 & 1;
  sub_1BFA85DBC(v64);
LABEL_19:
  OUTLINED_FUNCTION_51_3();
}

uint64_t SuggestionsRFDataModels.FeatureAnnouncementDataModel.announcementThumbnailName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.FeatureAnnouncementDataModel.announcementSpokenDialogSpokenText.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.FeatureAnnouncementDataModel.announcementButtonLabel.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return OUTLINED_FUNCTION_96();
}

uint64_t SuggestionsRFDataModels.FeatureAnnouncementDataModel.announcementPunchOutUri.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return OUTLINED_FUNCTION_96();
}

uint64_t sub_1BFA83264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5465727574616566 && a2 == 0xEB00000000657079;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x80000001BFAB9AC0 == a2;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001BFAB9AE0 == a2;
        if (v8 || (sub_1BFAAFF08() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001BFAB9B00 == a2;
          if (v9 || (sub_1BFAAFF08() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000023 && 0x80000001BFAB9B20 == a2;
            if (v10 || (sub_1BFAAFF08() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000022 && 0x80000001BFAB9B50 == a2;
              if (v11 || (sub_1BFAAFF08() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001BFAB9B80 == a2;
                if (v12 || (sub_1BFAAFF08() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000017 && 0x80000001BFAB9BA0 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1BFAAFF08();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BFA83534(char a1)
{
  result = 0x4974736575716572;
  switch(a1)
  {
    case 1:
      result = 0x5465727574616566;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000022;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA8366C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA83264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA83694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA8352C();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA836BC(uint64_t a1)
{
  v2 = sub_1BFA85DEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA836F8(uint64_t a1)
{
  v2 = sub_1BFA85DEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsRFDataModels.FeatureAnnouncementDataModel.encode(to:)()
{
  OUTLINED_FUNCTION_52_5();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBED0, &qword_1BFAB54B0);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_44_4();
  v12 = *v0;
  v13 = v0[1];
  v29 = *(v0 + 16);
  v27 = v0[4];
  v28 = v0[3];
  v25 = v0[6];
  v26 = v0[5];
  v23 = v0[7];
  v24 = v0[8];
  v21 = v0[9];
  v22 = v0[10];
  v19 = v0[11];
  v20 = v0[12];
  v17 = v0[13];
  v18 = v0[14];
  v15 = v0[15];
  v16 = v0[16];
  v14 = v4[4];
  OUTLINED_FUNCTION_83_1(v4, v4[3]);
  sub_1BFA85DEC();
  OUTLINED_FUNCTION_79_2();
  sub_1BFAB0008();
  sub_1BFAAFE78();
  if (!v1)
  {
    sub_1BFA85E40();
    OUTLINED_FUNCTION_3();
    sub_1BFAAFEB8();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_30_5(6);
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE38();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_51_3();
}

void SuggestionsRFDataModels.FeatureAnnouncementDataModel.init(from:)()
{
  OUTLINED_FUNCTION_52_5();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBEE8, &qword_1BFAB54B8);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8, v9);
  OUTLINED_FUNCTION_60_3();
  v10 = v2[4];
  v38 = v2;
  OUTLINED_FUNCTION_83_1(v2, v2[3]);
  sub_1BFA85DEC();
  sub_1BFAAFFF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v2);
  }

  else
  {
    LOBYTE(v40[0]) = 0;
    v11 = sub_1BFAAFDC8();
    v13 = v12;
    LOBYTE(v39[0]) = 1;
    sub_1BFA85E94();
    sub_1BFAAFE08();
    OUTLINED_FUNCTION_8_8(2);
    v31 = sub_1BFAAFD88();
    v37 = v14;
    OUTLINED_FUNCTION_8_8(3);
    v30 = sub_1BFAAFDC8();
    v36 = v15;
    OUTLINED_FUNCTION_8_8(4);
    v29 = sub_1BFAAFDC8();
    v35 = v16;
    OUTLINED_FUNCTION_8_8(5);
    v28 = sub_1BFAAFDC8();
    v34 = v17;
    OUTLINED_FUNCTION_8_8(6);
    v27 = sub_1BFAAFDC8();
    v33 = v18;
    OUTLINED_FUNCTION_8_8(7);
    v26 = sub_1BFAAFD88();
    v32 = v19;
    v20 = sub_1BFAAFD88();
    v25 = v21;
    v22 = v20;
    v23 = OUTLINED_FUNCTION_11_9();
    v24(v23);
    v39[0] = v11;
    v39[1] = v13;
    LOBYTE(v39[2]) = 0;
    v39[3] = v31;
    v39[4] = v37;
    v39[5] = v30;
    v39[6] = v36;
    v39[7] = v29;
    v39[8] = v35;
    v39[9] = v28;
    v39[10] = v34;
    v39[11] = v27;
    v39[12] = v33;
    v39[13] = v26;
    v39[14] = v32;
    v39[15] = v22;
    v39[16] = v25;
    memcpy(v4, v39, 0x88uLL);
    sub_1BFA85EE8(v39, v40);
    __swift_destroy_boxed_opaque_existential_2Tm(v38);
    v40[0] = v11;
    v40[1] = v13;
    v41 = 0;
    v42 = v31;
    v43 = v37;
    v44 = v30;
    v45 = v36;
    v46 = v29;
    v47 = v35;
    v48 = v28;
    v49 = v34;
    v50 = v27;
    v51 = v33;
    v52 = v26;
    v53 = v32;
    v54 = v22;
    v55 = v25;
    sub_1BFA85F20(v40);
  }

  OUTLINED_FUNCTION_51_3();
}

uint64_t sub_1BFA83EC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65695673746E6968 && a2 == 0xE900000000000077;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x77656956706C6568 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001BFAB9BC0 == a2;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000017 && 0x80000001BFAB9BE0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BFAAFF08();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1BFA84034(char a1)
{
  result = 0x65695673746E6968;
  switch(a1)
  {
    case 1:
      result = 0x77656956706C6568;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA840C8(uint64_t a1)
{
  v2 = sub_1BFA8604C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA84104(uint64_t a1)
{
  v2 = sub_1BFA8604C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA84148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA83EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA84170(uint64_t a1)
{
  v2 = sub_1BFA85F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA841AC(uint64_t a1)
{
  v2 = sub_1BFA85F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA841E8(uint64_t a1)
{
  v2 = sub_1BFA85FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA84224(uint64_t a1)
{
  v2 = sub_1BFA85FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA84260(uint64_t a1)
{
  v2 = sub_1BFA860F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA8429C(uint64_t a1)
{
  v2 = sub_1BFA860F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA842D8(uint64_t a1)
{
  v2 = sub_1BFA86148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA84314(uint64_t a1)
{
  v2 = sub_1BFA86148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsRFDataModels.encode(to:)()
{
  OUTLINED_FUNCTION_55_2();
  v69 = v1;
  v66 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBEF8, &qword_1BFAB54C0);
  v7 = OUTLINED_FUNCTION_2_3(v6);
  v64 = v8;
  v65 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v11, v12);
  v63 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF00, &qword_1BFAB54C8);
  v15 = OUTLINED_FUNCTION_2_3(v14);
  v61 = v16;
  v62 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_61_3();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF08, &qword_1BFAB54D0);
  v22 = OUTLINED_FUNCTION_2_3(v21);
  v59 = v23;
  v60 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v57 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF10, &qword_1BFAB54D8);
  OUTLINED_FUNCTION_2_3(v30);
  v58 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v57 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF18, &qword_1BFAB54E0);
  v39 = OUTLINED_FUNCTION_2_3(v38);
  v67 = v40;
  v68 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v43, v44);
  OUTLINED_FUNCTION_60_3();
  v45 = v5[4];
  OUTLINED_FUNCTION_83_1(v5, v5[3]);
  sub_1BFA85F50();
  sub_1BFAB0008();
  memcpy(v71, v66, 0xE1uLL);
  LODWORD(v5) = sub_1BFA2B568(v71);
  v46 = sub_1BFA074AC(v71);
  v47 = v46;
  switch(v5)
  {
    case 1:
      LOBYTE(v70[0]) = 1;
      sub_1BFA860F4();
      v52 = v68;
      OUTLINED_FUNCTION_28_5();
      sub_1BFAAFE28();
      memcpy(v70, v47, 0xE1uLL);
      sub_1BFA85FF8();
      v53 = v60;
      sub_1BFAAFEB8();
      v56 = v59;
      goto LABEL_6;
    case 2:
      LOBYTE(v70[0]) = 2;
      sub_1BFA8604C();
      v52 = v68;
      OUTLINED_FUNCTION_28_5();
      sub_1BFAAFE28();
      memcpy(v70, v47, 0x88uLL);
      sub_1BFA860A0();
      v53 = v62;
      sub_1BFAAFEB8();
      v54 = *(v61 + 8);
      v55 = v3;
      goto LABEL_7;
    case 3:
      LOBYTE(v70[0]) = 3;
      sub_1BFA85FA4();
      v29 = v63;
      v52 = v68;
      OUTLINED_FUNCTION_28_5();
      sub_1BFAAFE28();
      memcpy(v70, v47, 0xE1uLL);
      sub_1BFA85FF8();
      v53 = v65;
      sub_1BFAAFEB8();
      v56 = v64;
LABEL_6:
      v54 = *(v56 + 8);
      v55 = v29;
LABEL_7:
      v54(v55, v53);
      break;
    default:
      v48 = *(v46 + 8);
      v66 = *v46;
      v49 = *(v46 + 16);
      v51 = *(v46 + 24);
      v50 = *(v46 + 32);
      LOBYTE(v70[0]) = 0;
      sub_1BFA86148();
      v52 = v68;
      OUTLINED_FUNCTION_28_5();
      sub_1BFAAFE28();
      v70[0] = v66;
      v70[1] = v48;
      v70[2] = v49;
      v70[3] = v51;
      v70[4] = v50;
      sub_1BFA8619C();
      sub_1BFAAFEB8();
      (*(v58 + 8))(v37, v30);
      break;
  }

  (*(v67 + 8))(v2, v52);
  OUTLINED_FUNCTION_56_2();
}

void SuggestionsRFDataModels.init(from:)()
{
  OUTLINED_FUNCTION_52_5();
  v3 = v2;
  v82 = v4;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF48, &qword_1BFAB54E8);
  OUTLINED_FUNCTION_2_3(v86);
  v80 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8, v9);
  v84 = v74 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF50, &qword_1BFAB54F0);
  OUTLINED_FUNCTION_2_3(v81);
  v78 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v14, v15);
  v83 = v74 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF58, &qword_1BFAB54F8);
  OUTLINED_FUNCTION_2_3(v79);
  v77 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v74 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF60, &qword_1BFAB5500);
  OUTLINED_FUNCTION_2_3(v24);
  v76 = v25;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_61_3();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF68, &qword_1BFAB5508);
  OUTLINED_FUNCTION_2_3(v30);
  v85 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = v74 - v36;
  v39 = v3[3];
  v38 = v3[4];
  v87 = v3;
  OUTLINED_FUNCTION_83_1(v3, v39);
  sub_1BFA85F50();
  sub_1BFAAFFF8();
  if (v0)
  {
    goto LABEL_9;
  }

  v74[1] = v24;
  v74[2] = v1;
  v75 = v23;
  v40 = v37;
  v41 = sub_1BFAAFE18();
  sub_1BFA47038(v41, 0);
  v45 = v30;
  if (v43 == v44 >> 1)
  {
LABEL_8:
    v51 = sub_1BFAAFC78();
    swift_allocError();
    v53 = v52;
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBAC0, &qword_1BFAB5510) + 48);
    *v53 = &type metadata for SuggestionsRFDataModels;
    sub_1BFAAFD78();
    sub_1BFAAFC68();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v85 + 8))(v40, v45);
LABEL_9:
    v55 = v87;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_2Tm(v55);
    OUTLINED_FUNCTION_51_3();
    return;
  }

  v74[0] = 0;
  if (v43 < (v44 >> 1))
  {
    v46 = *(v42 + v43);
    sub_1BFA47A1C(v43 + 1);
    v48 = v47;
    v50 = v49;
    swift_unknownObjectRelease();
    if (v48 == v50 >> 1)
    {
      switch(v46)
      {
        case 1:
          LOBYTE(v89[0]) = 1;
          sub_1BFA860F4();
          OUTLINED_FUNCTION_35_5(&type metadata for SuggestionsRFDataModels.HelpViewCodingKeys, v89);
          sub_1BFA86304();
          v61 = v79;
          sub_1BFAAFE08();
          v62 = (v77 + 8);
          swift_unknownObjectRelease();
          (*v62)(v75, v61);
          v72 = OUTLINED_FUNCTION_18_10();
          v73(v72);
          memcpy(v88, v89, 0xE1uLL);
          sub_1BFA863C0(v88);
          v71 = v88;
          goto LABEL_15;
        case 2:
          LOBYTE(v89[0]) = 2;
          sub_1BFA8604C();
          OUTLINED_FUNCTION_35_5(&type metadata for SuggestionsRFDataModels.AnnouncementsViewCodingKeys, v89);
          v55 = v87;
          sub_1BFA8636C();
          OUTLINED_FUNCTION_50_4();
          swift_unknownObjectRelease();
          v56 = OUTLINED_FUNCTION_24_8();
          v57(v56);
          v58 = OUTLINED_FUNCTION_18_10();
          v59(v58);
          memcpy(v89, v88, 0x88uLL);
          sub_1BFA2B7F0(v89);
          v60 = v89;
          goto LABEL_14;
        case 3:
          LOBYTE(v89[0]) = 3;
          sub_1BFA85FA4();
          OUTLINED_FUNCTION_35_5(&type metadata for SuggestionsRFDataModels.ExpandedSuggestionsViewCodingKeys, v89);
          v55 = v87;
          sub_1BFA86304();
          OUTLINED_FUNCTION_50_4();
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_24_8();
          v64(v63);
          v65 = OUTLINED_FUNCTION_18_10();
          v66(v65);
          memcpy(v88, v89, 0xE1uLL);
          sub_1BFA86358(v88);
          v60 = v88;
LABEL_14:
          memcpy(v90, v60, sizeof(v90));
          break;
        default:
          LOBYTE(v89[0]) = 0;
          sub_1BFA86148();
          OUTLINED_FUNCTION_35_5(&type metadata for SuggestionsRFDataModels.HintsViewCodingKeys, v89);
          sub_1BFA863D4();
          OUTLINED_FUNCTION_50_4();
          swift_unknownObjectRelease();
          v67 = OUTLINED_FUNCTION_24_8();
          v68(v67);
          v69 = OUTLINED_FUNCTION_18_10();
          v70(v69);
          v89[0] = v88[0];
          v89[1] = v88[1];
          v89[2] = v88[2];
          *&v89[3] = *&v88[3];
          sub_1BFA5CDE4(v89);
          v71 = v89;
LABEL_15:
          memcpy(v90, v71, sizeof(v90));
          v55 = v87;
          break;
      }

      memcpy(v82, v90, 0xE1uLL);
      goto LABEL_10;
    }

    v45 = v30;
    v40 = v37;
    goto LABEL_8;
  }

  __break(1u);
}

SiriSuggestionsAPI::FeatureType_optional __swiftcall FeatureType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_59_2();
  v2 = sub_1BFAAFD58();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BFA8512C@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CrossDomainHintType.init(rawValue:)()
{
  OUTLINED_FUNCTION_59_2();
  v1 = sub_1BFAAFD58();

  *v0 = v1 != 0;
  return result;
}

uint64_t sub_1BFA85260(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  return CrossDomainHintType.init(rawValue:)();
}

uint64_t sub_1BFA8535C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954746E6968 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74786554746E6968 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BFAAFF08();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BFA8542C(char a1)
{
  if (a1)
  {
    return 0x74786554746E6968;
  }

  else
  {
    return 0x65707954746E6968;
  }
}

uint64_t sub_1BFA85464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA8535C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA8548C(uint64_t a1)
{
  v2 = sub_1BFA86428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA854C8(uint64_t a1)
{
  v2 = sub_1BFA86428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CrossDomainHint.encode(to:)()
{
  OUTLINED_FUNCTION_52_5();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF80, &qword_1BFAB5518);
  OUTLINED_FUNCTION_2_3(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v10, v11);
  OUTLINED_FUNCTION_44_4();
  v12 = v0[1];
  v14 = *v0;
  v13 = v4[4];
  OUTLINED_FUNCTION_83_1(v4, v4[3]);
  sub_1BFA86428();
  OUTLINED_FUNCTION_79_2();
  sub_1BFAB0008();
  sub_1BFA8647C();
  OUTLINED_FUNCTION_3();
  sub_1BFAAFEB8();
  if (!v1)
  {
    OUTLINED_FUNCTION_3();
    sub_1BFAAFE78();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_51_3();
}

void CrossDomainHint.init(from:)()
{
  OUTLINED_FUNCTION_52_5();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF98, &qword_1BFAB5520);
  OUTLINED_FUNCTION_2_3(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_60_3();
  v13 = v3[4];
  OUTLINED_FUNCTION_83_1(v3, v3[3]);
  sub_1BFA86428();
  sub_1BFAAFFF8();
  if (!v0)
  {
    sub_1BFA864D0();
    OUTLINED_FUNCTION_28_5();
    sub_1BFAAFE08();
    v14 = sub_1BFAAFDC8();
    v16 = v15;
    (*(v8 + 8))(v1, v6);
    *v5 = v14;
    v5[1] = v16;
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v3);
  OUTLINED_FUNCTION_51_3();
}

SiriSuggestionsAPI::SiriHelpSnippetLabel_optional __swiftcall SiriHelpSnippetLabel.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_59_2();
  v2 = sub_1BFAAFD58();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t SiriHelpSnippetLabel.rawValue.getter()
{
  result = 1701998445;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x726F4D6E7261656CLL;
      break;
    case 3:
      result = 0x6E69796173797274;
      break;
    case 4:
      result = 0x746E69726568746FLL;
      break;
    case 5:
      result = 0x706C654869726973;
      break;
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0x726F707075736E75;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BFA859A8@<X0>(unint64_t *a1@<X8>)
{
  result = SiriHelpSnippetLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BFA859D0()
{
  result = qword_1EBDFBE60;
  if (!qword_1EBDFBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBE60);
  }

  return result;
}

unint64_t sub_1BFA85A8C()
{
  result = qword_1EBDFBE78;
  if (!qword_1EBDFBE78)
  {
    sub_1BFAAE9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBE78);
  }

  return result;
}

unint64_t sub_1BFA85AE4()
{
  result = qword_1EDCC7320;
  if (!qword_1EDCC7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7320);
  }

  return result;
}

unint64_t sub_1BFA85B38()
{
  result = qword_1EDCC6AE8;
  if (!qword_1EDCC6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6AE8);
  }

  return result;
}

unint64_t sub_1BFA85B8C()
{
  result = qword_1EDCC6AE0;
  if (!qword_1EDCC6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6AE0);
  }

  return result;
}

unint64_t sub_1BFA85C10()
{
  result = qword_1EBDFBE98;
  if (!qword_1EBDFBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBE98);
  }

  return result;
}

unint64_t sub_1BFA85C64()
{
  result = qword_1EBDFBEB0;
  if (!qword_1EBDFBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBEB0);
  }

  return result;
}

uint64_t sub_1BFA85CB8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBEA0, &qword_1BFAB54A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BFA85D30()
{
  result = qword_1EBDFBEC8;
  if (!qword_1EBDFBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBEC8);
  }

  return result;
}

unint64_t sub_1BFA85DEC()
{
  result = qword_1EBDFBED8;
  if (!qword_1EBDFBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBED8);
  }

  return result;
}

unint64_t sub_1BFA85E40()
{
  result = qword_1EBDFBEE0;
  if (!qword_1EBDFBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBEE0);
  }

  return result;
}

unint64_t sub_1BFA85E94()
{
  result = qword_1EBDFBEF0;
  if (!qword_1EBDFBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBEF0);
  }

  return result;
}

unint64_t sub_1BFA85F50()
{
  result = qword_1EDCC7360;
  if (!qword_1EDCC7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7360);
  }

  return result;
}

unint64_t sub_1BFA85FA4()
{
  result = qword_1EBDFBF20;
  if (!qword_1EBDFBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF20);
  }

  return result;
}

unint64_t sub_1BFA85FF8()
{
  result = qword_1EBDFBF28;
  if (!qword_1EBDFBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF28);
  }

  return result;
}

unint64_t sub_1BFA8604C()
{
  result = qword_1EBDFBF30;
  if (!qword_1EBDFBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF30);
  }

  return result;
}

unint64_t sub_1BFA860A0()
{
  result = qword_1EBDFBF38;
  if (!qword_1EBDFBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF38);
  }

  return result;
}

unint64_t sub_1BFA860F4()
{
  result = qword_1EBDFBF40;
  if (!qword_1EBDFBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF40);
  }

  return result;
}

unint64_t sub_1BFA86148()
{
  result = qword_1EDCC7338;
  if (!qword_1EDCC7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7338);
  }

  return result;
}

unint64_t sub_1BFA8619C()
{
  result = qword_1EDCC6C98[0];
  if (!qword_1EDCC6C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC6C98);
  }

  return result;
}

void sub_1BFA861F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BFAAF858();
  [a3 setViewId_];
}

void sub_1BFA86248(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BFAAF858();

  [a3 setBundleName_];
}

void sub_1BFA862AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BFAAE328();
  [a3 setModelData_];
}

unint64_t sub_1BFA86304()
{
  result = qword_1EBDFBF70;
  if (!qword_1EBDFBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF70);
  }

  return result;
}

unint64_t sub_1BFA8636C()
{
  result = qword_1EBDFBF78;
  if (!qword_1EBDFBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF78);
  }

  return result;
}

unint64_t sub_1BFA863D4()
{
  result = qword_1EDCC6C90;
  if (!qword_1EDCC6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6C90);
  }

  return result;
}

unint64_t sub_1BFA86428()
{
  result = qword_1EBDFBF88;
  if (!qword_1EBDFBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF88);
  }

  return result;
}

unint64_t sub_1BFA8647C()
{
  result = qword_1EBDFBF90;
  if (!qword_1EBDFBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF90);
  }

  return result;
}

unint64_t sub_1BFA864D0()
{
  result = qword_1EBDFBFA0;
  if (!qword_1EBDFBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFA0);
  }

  return result;
}

unint64_t sub_1BFA86540()
{
  result = qword_1EDCC72F0;
  if (!qword_1EDCC72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC72F0);
  }

  return result;
}

unint64_t sub_1BFA86598()
{
  result = qword_1EDCC72F8;
  if (!qword_1EDCC72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC72F8);
  }

  return result;
}

unint64_t sub_1BFA865F0()
{
  result = qword_1EBDFBFA8;
  if (!qword_1EBDFBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFA8);
  }

  return result;
}

unint64_t sub_1BFA86648()
{
  result = qword_1EBDFBFB0;
  if (!qword_1EBDFBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFB0);
  }

  return result;
}

unint64_t sub_1BFA866A0()
{
  result = qword_1EBDFBFB8;
  if (!qword_1EBDFBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFB8);
  }

  return result;
}

uint64_t sub_1BFA866FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA8673C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA867B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 108))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA867F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA86874(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 225))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = ((*(a1 + 224) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 224) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void sub_1BFA868C0(char *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(a1 + 27) = 0;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[224] = 0;
    *a1 = a2 - 125;
    if (a3 >= 0x7D)
    {
      a1[225] = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      a1[225] = 0;
    }

    if (a2)
    {
      v4 = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
      bzero(a1, 0xE0uLL);
      a1[224] = v4;
    }
  }
}

uint64_t sub_1BFA86994(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA869D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA86A28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 225))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA86A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 225) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA86AF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA86B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1BFA86BD4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_76_2(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionsRFDataModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BFA86DB8(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_68_0(a1);
}

_BYTE *sub_1BFA86E04(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BFA86EB0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1BFA86F38(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_76_2(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionsRFDataModels.SuggestionHelpDataModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SuggestionsRFDataModels.SuggestionHelpDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionsRFDataModels.SuggestionHintsDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriHelpSuggestion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriHelpSuggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BFA873B8()
{
  result = qword_1EBDFBFC0;
  if (!qword_1EBDFBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFC0);
  }

  return result;
}

unint64_t sub_1BFA87410()
{
  result = qword_1EBDFBFC8;
  if (!qword_1EBDFBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFC8);
  }

  return result;
}

unint64_t sub_1BFA87468()
{
  result = qword_1EBDFBFD0;
  if (!qword_1EBDFBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFD0);
  }

  return result;
}

unint64_t sub_1BFA874C0()
{
  result = qword_1EBDFBFD8;
  if (!qword_1EBDFBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFD8);
  }

  return result;
}

unint64_t sub_1BFA87518()
{
  result = qword_1EBDFBFE0;
  if (!qword_1EBDFBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFE0);
  }

  return result;
}

unint64_t sub_1BFA87570()
{
  result = qword_1EBDFBFE8;
  if (!qword_1EBDFBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFE8);
  }

  return result;
}

unint64_t sub_1BFA875C8()
{
  result = qword_1EBDFBFF0;
  if (!qword_1EBDFBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFF0);
  }

  return result;
}

unint64_t sub_1BFA87620()
{
  result = qword_1EBDFBFF8;
  if (!qword_1EBDFBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFF8);
  }

  return result;
}

unint64_t sub_1BFA87678()
{
  result = qword_1EBDFC000;
  if (!qword_1EBDFC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC000);
  }

  return result;
}

unint64_t sub_1BFA876D0()
{
  result = qword_1EBDFC008;
  if (!qword_1EBDFC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC008);
  }

  return result;
}

unint64_t sub_1BFA87728()
{
  result = qword_1EBDFC010;
  if (!qword_1EBDFC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC010);
  }

  return result;
}

unint64_t sub_1BFA87780()
{
  result = qword_1EBDFC018;
  if (!qword_1EBDFC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC018);
  }

  return result;
}

unint64_t sub_1BFA877D8()
{
  result = qword_1EDCC7328;
  if (!qword_1EDCC7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7328);
  }

  return result;
}

unint64_t sub_1BFA87830()
{
  result = qword_1EDCC7330;
  if (!qword_1EDCC7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7330);
  }

  return result;
}

unint64_t sub_1BFA87888()
{
  result = qword_1EDCC7340;
  if (!qword_1EDCC7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7340);
  }

  return result;
}

unint64_t sub_1BFA878E0()
{
  result = qword_1EDCC7348;
  if (!qword_1EDCC7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7348);
  }

  return result;
}

unint64_t sub_1BFA87938()
{
  result = qword_1EDCC7300;
  if (!qword_1EDCC7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7300);
  }

  return result;
}

unint64_t sub_1BFA87990()
{
  result = qword_1EDCC7308;
  if (!qword_1EDCC7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7308);
  }

  return result;
}

unint64_t sub_1BFA879E8()
{
  result = qword_1EDCC7368;
  if (!qword_1EDCC7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7368);
  }

  return result;
}

unint64_t sub_1BFA87A40()
{
  result = qword_1EDCC7370;
  if (!qword_1EDCC7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7370);
  }

  return result;
}

unint64_t sub_1BFA87A98()
{
  result = qword_1EDCC7350;
  if (!qword_1EDCC7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7350);
  }

  return result;
}

unint64_t sub_1BFA87AF0()
{
  result = qword_1EDCC7358;
  if (!qword_1EDCC7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7358);
  }

  return result;
}

unint64_t sub_1BFA87B48()
{
  result = qword_1EBDFC020;
  if (!qword_1EBDFC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC020);
  }

  return result;
}

unint64_t sub_1BFA87BA0()
{
  result = qword_1EBDFC028;
  if (!qword_1EBDFC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC028);
  }

  return result;
}

unint64_t sub_1BFA87BF8()
{
  result = qword_1EBDFC030;
  if (!qword_1EBDFC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC030);
  }

  return result;
}

unint64_t sub_1BFA87C50()
{
  result = qword_1EBDFC038;
  if (!qword_1EBDFC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC038);
  }

  return result;
}

unint64_t sub_1BFA87CA8()
{
  result = qword_1EDCC7310;
  if (!qword_1EDCC7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7310);
  }

  return result;
}

unint64_t sub_1BFA87D00()
{
  result = qword_1EDCC7318;
  if (!qword_1EDCC7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7318);
  }

  return result;
}

unint64_t sub_1BFA87D58()
{
  result = qword_1EBDFC040;
  if (!qword_1EBDFC040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC040);
  }

  return result;
}

unint64_t sub_1BFA87DB0()
{
  result = qword_1EBDFC048;
  if (!qword_1EBDFC048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC048);
  }

  return result;
}

unint64_t sub_1BFA87E04()
{
  result = qword_1EDCC6C88;
  if (!qword_1EDCC6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6C88);
  }

  return result;
}

uint64_t sub_1BFA87E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA30, &unk_1BFAB5450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA87ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA30, &unk_1BFAB5450);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFA87F40()
{
  result = qword_1EBDFC058;
  if (!qword_1EBDFC058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC058);
  }

  return result;
}

unint64_t sub_1BFA87F94()
{
  result = qword_1EBDFC060;
  if (!qword_1EBDFC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC060);
  }

  return result;
}

void OUTLINED_FUNCTION_4_12()
{
  *(v0 + 188) = 0;
  *(v0 + 192) = 0;
  *(v0 + 204) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 0;
  *(v0 + 224) = 0;
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(*(a22 + 48) + 16 * v22 + 8);
}

_OWORD *OUTLINED_FUNCTION_53_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{

  return sub_1BFA27FE0(&a21, (v21 - 128));
}

_OWORD *OUTLINED_FUNCTION_56_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23)
{

  return sub_1BFA27FE0((v23 - 128), &a23);
}

uint64_t OUTLINED_FUNCTION_91_2()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
}

char *sub_1BFA88244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45[1] = a5;
  v45[2] = a4;
  v46 = a3;
  v51 = sub_1BFAAF688();
  v7 = OUTLINED_FUNCTION_2_3(v51);
  v50 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7, v11);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BFAAF748();
  v15 = OUTLINED_FUNCTION_2_3(v14);
  v47 = v16;
  v48 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC068, &unk_1BFAB6B80);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = v45 - v29;
  v32 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v32);
  (*(v31 + 8))(a2, v32, v31);
  sub_1BFA885E8(v30, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BFA88658(v27);
    sub_1BFAAF228();
    v33 = sub_1BFAAF668();
    v34 = sub_1BFAAFB88();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1BF9F6000, v33, v34, "RRSalientEntitiesService:: Entity callback from RRaSS failed", v35, 2u);
      MEMORY[0x1BFB618C0](v35, -1, -1);
    }

    (*(v50 + 8))(v13, v51);
    sub_1BFA886C0();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    (*(v47 + 32))(v21, v27, v48);
    v36 = sub_1BFA88714(v21);
    MEMORY[0x1EEE9AC00](v36, v37);
    v45[-2] = v46;
    v38 = v49;
    v39 = sub_1BFA351E4(sub_1BFA890F8, &v45[-4], v36);
    if (!v38)
    {
      v13 = v39;

      v43 = OUTLINED_FUNCTION_0_13();
      v44(v43);
      sub_1BFA88658(v30);
      return v13;
    }

    v40 = OUTLINED_FUNCTION_0_13();
    v41(v40);
  }

  sub_1BFA88658(v30);
  return v13;
}

uint64_t sub_1BFA885E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC068, &unk_1BFAB6B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA88658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC068, &unk_1BFAB6B80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BFA886C0()
{
  result = qword_1EBDFC070;
  if (!qword_1EBDFC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC070);
  }

  return result;
}

uint64_t sub_1BFA88714(uint64_t a1)
{
  v2 = sub_1BFAAF738();
  v100 = *(v2 - 8);
  v101 = v2;
  v3 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v2, v4);
  v99 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BFAAF688();
  v107 = *(v6 - 8);
  v108 = v6;
  v7 = *(v107 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v102 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v98 = &v92 - v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v105 = &v92 - v15;
  v16 = sub_1BFAAF6C8();
  v106 = *(v16 - 8);
  v17 = v106[8];
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v104 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v103 = &v92 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v92 - v25;
  v27 = sub_1BFAAF748();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = (&v92 - v35);
  v37 = *(v28 + 16);
  v37(&v92 - v35, a1, v27);
  v38 = (*(v28 + 88))(v36, v27);
  if (v38 == *MEMORY[0x1E69D2968])
  {
    (*(v28 + 96))(v36, v27);
    v39 = v106;
    v40 = v106 + 4;
    v102 = v106[4];
    (v102)(v26, v36, v16);
    sub_1BFAAF228();
    v41 = v39[2];
    v42 = v103;
    v41(v103, v26, v16);
    v43 = v104;
    v41(v104, v26, v16);
    v44 = sub_1BFAAF668();
    v45 = sub_1BFAAFB78();
    v46 = v16;
    if (os_log_type_enabled(v44, v45))
    {
      v47 = swift_slowAlloc();
      v92 = v47;
      v95 = swift_slowAlloc();
      v109 = v95;
      *v47 = 136315394;
      v48 = v99;
      v94 = v45;
      sub_1BFAAF6B8();
      v49 = sub_1BFAAF708();
      v97 = v26;
      v98 = v46;
      v51 = v50;
      v93 = v44;
      v96 = v40;
      v52 = v101;
      v53 = *(v100 + 8);
      v53(v48, v101);
      v54 = v106[1];
      v54(v42, v98);
      v55 = sub_1BF9F88A8(v49, v51, &v109);

      v56 = v92;
      *(v92 + 1) = v55;
      *(v56 + 6) = 2080;
      sub_1BFAAF6B8();
      v57 = sub_1BFAAF718();
      v53(v48, v52);
      v46 = v98;
      v58 = sub_1BFAAF698();
      v59 = MEMORY[0x1BFB60C30](v57, v58);
      v61 = v60;

      v54(v43, v46);
      v39 = v106;
      v62 = sub_1BF9F88A8(v59, v61, &v109);

      *(v56 + 14) = v62;
      v63 = v93;
      _os_log_impl(&dword_1BF9F6000, v93, v94, "RRSalientEntitiesService:: Found one match: %s %s", v56, 0x16u);
      v64 = v95;
      swift_arrayDestroy();
      MEMORY[0x1BFB618C0](v64, -1, -1);
      v65 = v56;
      v26 = v97;
      MEMORY[0x1BFB618C0](v65, -1, -1);
    }

    else
    {

      v77 = v39[1];
      v77(v43, v16);
      v77(v42, v16);
    }

    (*(v107 + 8))(v105, v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC078, &unk_1BFAB6B90);
    v78 = v39[9];
    v79 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1BFAB08E0;
    (v102)(v68 + v79, v26, v46);
  }

  else if (v38 == *MEMORY[0x1E69D2978] || v38 == *MEMORY[0x1E69D2970])
  {
    v67 = v16;
    (*(v28 + 96))(v36, v27);
    v68 = *v36;
    v69 = v98;
    sub_1BFAAF228();

    v70 = sub_1BFAAF668();
    v71 = sub_1BFAAFB78();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v109 = v73;
      *v72 = 136315138;
      v74 = MEMORY[0x1BFB60C30](v68, v67);
      v76 = sub_1BF9F88A8(v74, v75, &v109);

      *(v72 + 4) = v76;
      _os_log_impl(&dword_1BF9F6000, v70, v71, "RRSalientEntitiesService:: got multiple candidates: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v73);
      MEMORY[0x1BFB618C0](v73, -1, -1);
      MEMORY[0x1BFB618C0](v72, -1, -1);
    }

    (*(v107 + 8))(v69, v108);
  }

  else
  {
    v80 = v102;
    sub_1BFAAF228();
    v37(v33, a1, v27);
    v81 = sub_1BFAAF668();
    v82 = sub_1BFAAFB78();
    if (os_log_type_enabled(v81, v82))
    {
      v84 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v109 = v106;
      *v84 = 136315394;
      *(v84 + 4) = sub_1BF9F88A8(0x746C757365525252, 0xE800000000000000, &v109);
      *(v84 + 12) = 2080;
      sub_1BFA89150();
      LODWORD(v105) = v82;
      v85 = sub_1BFAAFEE8();
      v87 = v86;
      v88 = *(v28 + 8);
      v88(v33, v27);
      v89 = sub_1BF9F88A8(v85, v87, &v109);

      *(v84 + 14) = v89;
      _os_log_impl(&dword_1BF9F6000, v81, v105, "RRSalientEntitiesService:: No salient app entities found. result = %s ## %s", v84, 0x16u);
      v90 = v106;
      swift_arrayDestroy();
      MEMORY[0x1BFB618C0](v90, -1, -1);
      MEMORY[0x1BFB618C0](v84, -1, -1);

      (*(v107 + 8))(v102, v108);
    }

    else
    {

      v88 = *(v28 + 8);
      v88(v33, v27);
      (*(v107 + 8))(v80, v108);
    }

    v88(v36, v27);
    return MEMORY[0x1E69E7CC0];
  }

  return v68;
}

uint64_t sub_1BFA89080(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCE8, &qword_1BFAB4928);
  v2 = sub_1BFAAE818();
  v2(a1);
}

uint64_t sub_1BFA89114(void (*a1)(void))
{
  a1();

  return sub_1BFAB0048();
}

unint64_t sub_1BFA89150()
{
  result = qword_1EDCC6488;
  if (!qword_1EDCC6488)
  {
    sub_1BFAAF748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6488);
  }

  return result;
}

uint64_t SiriSuggestionsSupportingDataClient.description.getter()
{
  v1 = v0;
  sub_1BFAAFC48();

  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = *(v2 + 32);
  v4 = sub_1BFAAFEE8();
  MEMORY[0x1BFB60B80](v4);

  MEMORY[0x1BFB60B80](125, 0xE100000000000000);
  return 0x6974726F70707553;
}

uint64_t SiriSuggestionsSupportingDataClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)()
{
  OUTLINED_FUNCTION_43();
  v1[22] = v2;
  v1[23] = v0;
  v1[20] = v3;
  v1[21] = v4;
  v1[18] = v5;
  v1[19] = v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0) - 8) + 64) + 15;
  v1[24] = swift_task_alloc();
  v8 = sub_1BFAAE3F8();
  v1[25] = v8;
  v9 = *(v8 - 8);
  v1[26] = v9;
  v10 = *(v9 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v11 = swift_task_alloc();
  v1[30] = v11;
  *v11 = v1;
  v11[1] = sub_1BFA893D0;
  v12 = OUTLINED_FUNCTION_17();

  return sub_1BFA8A364(v12, v13);
}

uint64_t sub_1BFA893D0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 240);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 248) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v3 + 256) = v12;
    *v12 = v7;
    v13 = OUTLINED_FUNCTION_12_11(v12);

    return sub_1BFA8A5C4(v13, v14);
  }
}

uint64_t sub_1BFA89518()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 256);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 264) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v3 + 272) = v12;
    *v12 = v7;
    v13 = OUTLINED_FUNCTION_12_11(v12);

    return sub_1BFA8ABCC(v13, v14);
  }
}

uint64_t sub_1BFA89660()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 272);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 280) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v3 + 288) = v12;
    *v12 = v7;
    v13 = OUTLINED_FUNCTION_12_11(v12);

    return sub_1BFA8AEC0(v13, v14);
  }
}

uint64_t sub_1BFA897A8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 288);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 296) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA898A0()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[23];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(*(v3 + 24) + 16);
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_30();
  v16 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  v0[38] = v9;
  *v9 = v0;
  v9[1] = sub_1BFA899D4;
  v10 = v0[21];
  v11 = v0[22];
  v12 = v0[19];
  v13 = v0[20];
  v14 = v0[18];

  return v16(v14, v12, v13, v10, v11, v2, v4);
}

uint64_t sub_1BFA899D4()
{
  OUTLINED_FUNCTION_43();
  v1 = *v0;
  v2 = *(*v0 + 304);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = v1[29];
  v6 = v1[28];
  v7 = v1[27];
  v8 = v1[24];

  v9 = *(v3 + 8);

  return v9();
}

uint64_t sub_1BFA8A364(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8A37C()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 80);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = v1[7];
  v5 = v1[8];
  v4();
  v6 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 56) = v6;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = *(*(v3 + 16) + 8);
  *v7 = v0;
  v7[1] = sub_1BFA8A460;
  v9 = *(v0 + 72);
  v10 = OUTLINED_FUNCTION_53(*(v0 + 64));

  return sub_1BFA18E3C(v10, v11, v0 + 40, v2, v12);
}

uint64_t sub_1BFA8A460()
{
  OUTLINED_FUNCTION_43();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = v2[11];
  v6 = *v1;
  *v4 = *v1;
  v3[12] = v0;

  v7 = v2[6];
  v8 = v2[7];
  sub_1BFA8B850(v3[5]);
  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v6[1];

    return v12();
  }
}

uint64_t sub_1BFA8A5C4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8A5DC()
{
  OUTLINED_FUNCTION_51();
  sub_1BFA8B7E0(*(v0 + 112) + 88, v0 + 56);
  if (*(v0 + 80))
  {
    sub_1BF9FA474((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
    v3 = *(v2 + 8);
    OUTLINED_FUNCTION_30();
    v14 = (v4 + *v4);
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_1BFA8A808;

    return v14(v1, v2);
  }

  else
  {
    sub_1BFA20F44(v0 + 56, &qword_1EBDFB638, &qword_1BFAB6BE0);
    if (qword_1EDCC8BC0 != -1)
    {
      OUTLINED_FUNCTION_5();
    }

    v9 = sub_1BFAAF688();
    __swift_project_value_buffer(v9, qword_1EDCC8B70);
    v10 = sub_1BFAAF668();
    v11 = sub_1BFAAFB78();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1BF9F6000, v10, v11, "Unable to find a set salient entity service. This functionality is disabled", v12, 2u);
      MEMORY[0x1BFB618C0](v12, -1, -1);
    }

    OUTLINED_FUNCTION_85();

    return v13();
  }
}

uint64_t sub_1BFA8A808()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 120);
  *v3 = *v1;
  *(v2 + 128) = v6;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BFA8A908()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[14];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[18] = v4;
  v5 = *(*(v3 + 16) + 8);
  *v4 = v0;
  v4[1] = sub_1BFA8A9C8;
  v6 = v0[16];
  v7 = v0[13];
  v8 = OUTLINED_FUNCTION_53(v0[12]);

  return sub_1BFA18B0C(v8, v9, v10, v2, v11);
}

uint64_t sub_1BFA8A9C8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v8 + 152) = v0;

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA8AAC0()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 128);

  OUTLINED_FUNCTION_33_2();

  return v2();
}

uint64_t sub_1BFA8AB1C()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 136);
  OUTLINED_FUNCTION_33_2();

  return v2();
}

uint64_t sub_1BFA8AB70()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 128);

  v2 = *(v0 + 152);
  OUTLINED_FUNCTION_33_2();

  return v3();
}

uint64_t sub_1BFA8ABCC(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8ABE4()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[14];
  sub_1BF9F94C4(v1 + 16, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v4();
  v6 = swift_task_alloc();
  v0[15] = v6;
  v7 = *(*(v3 + 16) + 8);
  *v6 = v0;
  v6[1] = sub_1BFA8AD08;
  v8 = v0[13];
  v9 = OUTLINED_FUNCTION_53(v0[12]);

  return sub_1BFA192DC(v9, v10, v11, v2, v12);
}

uint64_t sub_1BFA8AD08()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 128) = v0;

  sub_1BFA20F44(v3 + 56, &qword_1EBDFB6B0, &qword_1BFAB13D0);
  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BFA8AE18()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_33_2();

  return v0();
}

uint64_t sub_1BFA8AE6C()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 128);
  OUTLINED_FUNCTION_33_2();

  return v2();
}

uint64_t sub_1BFA8AEC0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8AED8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1BFA20F44(v3 + 16, &qword_1EBDFB6A8, &qword_1BFAB13C0);
  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v12();
  }
}

uint64_t sub_1BFA8B004()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 88);
  return v2();
}

uint64_t SiriSuggestionsSupportingDataClient.submitEngagement(for:with:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8B040()
{
  OUTLINED_FUNCTION_43();
  v1 = v0[3];
  sub_1BFAAE398();
  v0[5] = v2;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1BFA8B0E8;
  v4 = v0[4];
  v5 = OUTLINED_FUNCTION_17();

  return sub_1BFA8AEC0(v5, v6);
}

uint64_t sub_1BFA8B0E8()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_78();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1BFA8B1E8()
{
  OUTLINED_FUNCTION_51();
  v1 = v0[4];
  v2 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v3 = *(*(*(v2 + 16) + 16) + 24);
  OUTLINED_FUNCTION_30();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1BFA5071C;
  v8 = v0[3];
  v9 = OUTLINED_FUNCTION_53(v0[2]);

  return v11(v9);
}

uint64_t sub_1BFA8B310()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t *SiriSuggestionsSupportingDataClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  sub_1BFA20F44((v0 + 11), &qword_1EBDFB638, &qword_1BFAB6BE0);
  v3 = v0[17];

  return v0;
}

uint64_t SiriSuggestionsSupportingDataClient.__deallocating_deinit()
{
  SiriSuggestionsSupportingDataClient.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BFA8B414()
{
  OUTLINED_FUNCTION_43();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDF08;
  v4 = OUTLINED_FUNCTION_17();

  return SiriSuggestionsSupportingDataClient.submitEngagement(for:with:)(v4, v5);
}

uint64_t sub_1BFA8B4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1BF9FDE28;

  return (sub_1BFAADB48)(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFA8B5B8()
{
  OUTLINED_FUNCTION_51();
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BF9FDE28;

  return SiriSuggestionsSupportingDataClient.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)();
}

uint64_t sub_1BFA8B680(uint64_t a1, uint64_t a2)
{
  result = sub_1BFA8B780(&qword_1EDCC7F40, a2, type metadata accessor for SiriSuggestionsSupportingDataClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BFA8B6FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BFA8B780(qword_1EDCC7F50, a2, type metadata accessor for SiriSuggestionsSupportingDataClient);
  result = sub_1BFA8B780(&qword_1EDCC7F48, v3, type metadata accessor for SiriSuggestionsSupportingDataClient);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BFA8B780(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BFA8B7E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB638, &qword_1BFAB6BE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA8B850(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_12()
{
  v2 = v0[28];
  result = v0[29];
  v3 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[18];
  v7 = *(v0[26] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_7_9()
{
  *(v2 + *(v0 + 28)) = 0xBFF0000000000000;
  v4 = v2 + *(v0 + 32);

  return sub_1BFA1B678(v1, v4);
}

id OUTLINED_FUNCTION_27_8(float a1)
{
  *v3 = a1;
  *(v2 + 136) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_44_5()
{

  return sub_1BFAAF8B8();
}

uint64_t DispatchSELFLogger.logUIActivity(generationId:suggestionIds:uiActivity:deliveryVehicle:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 57) = *a3;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8B93C()
{
  v1 = *(v0 + 57);
  v2 = *(v0 + 40);
  v3 = v2[6];
  v4 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v3);
  *(v0 + 56) = v1;
  v5 = *(v4 + 96);
  OUTLINED_FUNCTION_30();
  v14 = (v6 + *v6);
  v8 = *(v7 + 4);
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  v9[1] = sub_1BFA4C9C8;
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 16);

  return v14(v12, v10, v0 + 56, v11, v3, v4);
}

uint64_t sub_1BFA8BA80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC088, &qword_1BFAB6E28);
  v0 = sub_1BFAAEEA8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BFAB1400;
  v4 = v19 + v3;
  v5 = *(v1 + 104);
  v5(v4, *MEMORY[0x1E69D2FD8], v0);
  v5(v4 + v2, *MEMORY[0x1E69D2FC0], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC090, qword_1BFAB6E30);
  v6 = sub_1BFAAEFD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BFAB1C20;
  v11 = v10 + v9;
  v12 = *MEMORY[0x1E69D3150];
  v13 = sub_1BFAAF008();
  v14 = *(*(v13 - 8) + 104);
  v14(v11, v12, v13);
  v15 = *MEMORY[0x1E69D3118];
  v16 = *(v7 + 104);
  v16(v11, v15, v6);
  v14(v11 + v8, *MEMORY[0x1E69D3148], v13);
  v16(v11 + v8, v15, v6);
  v16(v11 + 2 * v8, *MEMORY[0x1E69D3110], v6);
  v17 = sub_1BFAAEE88();

  result = sub_1BFA48074(v17);
  qword_1EDCCBD98 = v19;
  return result;
}

uint64_t DispatchSELFLogger.__allocating_init(selfLogger:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1Tm(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_1BFA8CD98(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v10;
}

uint64_t DispatchSELFLogger.__allocating_init(selfLogger:validRequestLinkInvocationTypes:)(__int128 *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_10();
  v4 = swift_allocObject();
  sub_1BF9F97E4(a1, v4 + 24);
  *(v4 + 16) = a2;
  return v4;
}

uint64_t DispatchSELFLogger.init(selfLogger:validRequestLinkInvocationTypes:)(__int128 *a1, uint64_t a2)
{
  sub_1BF9F97E4(a1, v2 + 24);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t DispatchSELFLogger.dispatch(suggestions:presentationContext:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA8BEBC()
{
  if (*(*v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_1BFA8C03C;
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[2];

    return DispatchSELFLogger.logSuggestionsGenerated(suggestionList:presentationContext:)();
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v6 = sub_1BFAAF688();
    __swift_project_value_buffer(v6, qword_1EDCC7478);
    v7 = sub_1BFAAF668();
    v8 = sub_1BFAAFB68();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1BF9F6000, v7, v8, "Skipping SELF logging as there are no suggestions generated", v9, 2u);
      OUTLINED_FUNCTION_94();
    }

    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t sub_1BFA8C03C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_85();

  return v5();
}

uint64_t DispatchSELFLogger.logSuggestionsGenerated(suggestionList:presentationContext:)()
{
  OUTLINED_FUNCTION_40();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for PresentationContext();
  v1[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  v1[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = sub_1BFAAE3F8();
  v1[11] = v8;
  v9 = *(v8 - 8);
  v1[12] = v9;
  v10 = *(v9 + 64) + 15;
  v1[13] = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA8C25C()
{
  v35 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 40);
  sub_1BFA77EC0(*(v0 + 24) + *(v3 + 24), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1BFA5CDF4(*(v0 + 80));
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v4 = *(v0 + 48);
    v5 = *(v0 + 24);
    v6 = sub_1BFAAF688();
    __swift_project_value_buffer(v6, qword_1EDCC7478);
    sub_1BFA790C0(v5, v4);
    v7 = sub_1BFAAF668();
    v8 = sub_1BFAAFB88();
    if (os_log_type_enabled(v7, v8))
    {
      v10 = *(v0 + 64);
      v9 = *(v0 + 72);
      v11 = *(v0 + 48);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v34 = v13;
      *v12 = 136315138;
      sub_1BFA77EC0(v11 + *(v3 + 24), v9);
      v14 = sub_1BFAAF8B8();
      v16 = v15;
      sub_1BFA7825C(v11);
      v17 = sub_1BF9F88A8(v14, v16, &v34);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1BF9F6000, v7, v8, "Unable to send a SELF event as uuid's could not be calculated from: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v13);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();
    }

    else
    {
      v31 = *(v0 + 48);

      sub_1BFA7825C(v31);
    }

    OUTLINED_FUNCTION_8_9();

    OUTLINED_FUNCTION_85();

    return v32();
  }

  else
  {
    v18 = *(v0 + 32);
    v19 = *(v0 + 16);
    (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
    v20 = v18[6];
    v21 = v18[7];
    __swift_project_boxed_opaque_existential_1(v18 + 3, v20);
    v22 = *(type metadata accessor for SiriSuggestions.SuggestionList() + 24);
    *(v0 + 128) = v22;
    v23 = *(v21 + 8);
    OUTLINED_FUNCTION_30();
    v33 = (v24 + *v24);
    v26 = *(v25 + 4);
    v27 = swift_task_alloc();
    *(v0 + 112) = v27;
    *v27 = v0;
    v27[1] = sub_1BFA8C5B0;
    v28 = *(v0 + 16);
    v29 = *(v0 + 24);

    return v33(v19 + v22, v28, v29, v20, v21);
  }
}

uint64_t sub_1BFA8C5B0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA8C694()
{
  v34 = v0;
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 32) + 16);
  v3 = *(v0 + 24) + *(v1 + 20);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  LOBYTE(v2) = sub_1BFA14244(sub_1BFA8CE88, v4, v2);

  if (v2)
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4();
    }

    v5 = *(v0 + 56);
    v6 = *(v0 + 24);
    v7 = sub_1BFAAF688();
    __swift_project_value_buffer(v7, qword_1EDCC7478);
    sub_1BFA790C0(v6, v5);
    v8 = sub_1BFAAF668();
    v9 = sub_1BFAAFB68();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 56);
    if (v10)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v12 = 136315138;
      v14 = *(v1 + 20);
      sub_1BFAAEEA8();
      sub_1BFA8CF18(&qword_1EBDFB9D0, MEMORY[0x1E69D2FE0]);
      v15 = sub_1BFAAFEE8();
      v17 = v16;
      sub_1BFA7825C(v11);
      v18 = sub_1BF9F88A8(v15, v17, &v33);

      *(v12 + 4) = v18;
      _os_log_impl(&dword_1BF9F6000, v8, v9, "Emitting request link for invocationType: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v13);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();
    }

    else
    {

      sub_1BFA7825C(v11);
    }

    v21 = *(v0 + 128);
    v22 = *(v0 + 32);
    v23 = *(v0 + 16);
    v24 = v22[6];
    v25 = v22[7];
    __swift_project_boxed_opaque_existential_1(v22 + 3, v24);
    v26 = *(v25 + 40);
    OUTLINED_FUNCTION_30();
    v32 = (v27 + *v27);
    v29 = *(v28 + 4);
    v30 = swift_task_alloc();
    *(v0 + 120) = v30;
    *v30 = v0;
    v30[1] = sub_1BFA8CA1C;
    v31 = *(v0 + 104);

    return v32(v31, v23 + v21, v24, v25);
  }

  else
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    OUTLINED_FUNCTION_8_9();

    OUTLINED_FUNCTION_85();

    return v19();
  }
}

uint64_t sub_1BFA8CA1C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA8CB00()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  OUTLINED_FUNCTION_8_9();

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t DispatchSELFLogger.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 24));
  return v0;
}

uint64_t sub_1BFA8CBC0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDE28;

  return DispatchSELFLogger.dispatch(suggestions:presentationContext:)(a1, a2);
}

uint64_t sub_1BFA8CC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1BFAAFF08() & 1;
  }
}

uint64_t sub_1BFA8CD0C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1BFA8CF18(a4, a5);
  return sub_1BFAAF848() & 1;
}

uint64_t sub_1BFA8CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[3] = a3;
  v11[4] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v11);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1BF9F94C4(v11, v10);
  if (qword_1EDCC89D0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDCCBD98;

  __swift_destroy_boxed_opaque_existential_2Tm(v11);
  v8 = swift_allocObject();
  sub_1BF9F97E4(v10, v8 + 24);
  *(v8 + 16) = v7;
  return v8;
}

uint64_t sub_1BFA8CF18(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BFA8CF60(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BFA8D078;

  return v9(a1, a2);
}

uint64_t sub_1BFA8D078(uint64_t a1)
{
  OUTLINED_FUNCTION_42();
  v4 = *(v3 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;

  OUTLINED_FUNCTION_24_0();

  return v7(a1);
}

uint64_t sub_1BFA8D17C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0x737567616DLL;
  if (a1)
  {
    v6 = 0x6169646E496E6170;
  }

  v7 = 0x6B6361426F67;
  if (a1 < 0)
  {
    v7 = v6;
  }

  v9 = v7;

  OUTLINED_FUNCTION_18_11();

  MEMORY[0x1BFB60B80](a3, a4);

  return v9;
}

uint64_t sub_1BFA8D25C()
{
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC77C8);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_48(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_66_0(v4);
    OUTLINED_FUNCTION_7_10(&dword_1BF9F6000, v5, v3, "[FeatureAnnouncementCATsSimple] Executing catIDs");
    OUTLINED_FUNCTION_20_1();
  }

  v6 = *(v0 + 184);

  v7 = sub_1BFAAF7D8();
  if (*(v6 + 24) && (v8 = sub_1BFA8DFEC(), *(v0 + 192) = v8, (*(v0 + 200) = v9) != 0))
  {
    v10 = v8;
    v11 = v9;
    *(v0 + 208) = *(*(v0 + 184) + 16);
    *(v0 + 216) = v7;
    *(v0 + 264) = 0;
    v12 = byte_1F3F07BF0;
    *(v0 + 265) = byte_1F3F07BF0;
    v13 = v12 == 0;
    v14 = 0x737567616DLL;
    if (v13)
    {
      v15 = 0xE500000000000000;
    }

    else
    {
      v14 = 0x6169646E496E6170;
      v15 = 0xE800000000000000;
    }

    *(v0 + 128) = v14;
    *(v0 + 136) = v15;
    if (v13)
    {
      v16 = 0xD000000000000019;
    }

    else
    {
      v16 = 0xD00000000000001CLL;
    }

    if (v13)
    {
      v17 = "announcementSpokenDialogText";
    }

    else
    {
      v17 = "validRequestLinkInvocationTypes";
    }

    OUTLINED_FUNCTION_18_11();

    v18 = *(v0 + 136);
    *(v0 + 144) = *(v0 + 128);
    *(v0 + 152) = v18;

    MEMORY[0x1BFB60B80](v10, v11);

    v19 = *(v0 + 152);
    *(v0 + 224) = *(v0 + 144);
    *(v0 + 232) = v19;
    OUTLINED_FUNCTION_12_2(MEMORY[0x1E69CE3E8]);
    v29 = v20;
    v21 = swift_task_alloc();
    *(v0 + 240) = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_2_13(v21);
    v22 = MEMORY[0x1E69E7CC0];

    return v29(v16, v17 | 0x8000000000000000, v22);
  }

  else
  {
    v24 = sub_1BFAAF668();
    v25 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_48(v25))
    {
      v26 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_66_0(v26);
      OUTLINED_FUNCTION_7_10(&dword_1BF9F6000, v27, v25, "[FeatureAnnouncementCATsSimple] not able to get current locale. Return empty executed CAT results");
      OUTLINED_FUNCTION_20_1();
    }

    OUTLINED_FUNCTION_24_0();

    return v28(v7);
  }
}

uint64_t sub_1BFA8D52C()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v6 = *(v5 + 240);
  *v4 = *v1;
  *(v3 + 248) = v7;
  *(v3 + 256) = v0;

  if (v0)
  {
    v8 = *(v3 + 232);
    v9 = *(v3 + 265);
    v10 = *(v3 + 216);
    v11 = *(v3 + 200);

    v12 = sub_1BFA8DFD4;
  }

  else
  {
    *(v3 + 265);

    v12 = sub_1BFA8D6B8;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

void sub_1BFA8D6B8()
{
  v1 = [*(v0 + 248) dialog];
  sub_1BFA8E874();
  v2 = sub_1BFAAF9E8();

  if (v2 >> 62)
  {
    v3 = sub_1BFAAFD18();
    if (v3)
    {
LABEL_3:
      if (v3 >= 1)
      {
        OUTLINED_FUNCTION_5_11();
        v4 = 0;
        v139 = v2 & 0xC000000000000001;
        OUTLINED_FUNCTION_1_9();
        if (v39)
        {
          v6 = 17;
        }

        v136 = v5 | 0x8000000000000000;
        v137 = v6;
        OUTLINED_FUNCTION_1_9();
        if (v39)
        {
          v9 = 16;
        }

        else
        {
          v9 = v8;
        }

        v10 = v7 | 0x8000000000000000;
        OUTLINED_FUNCTION_1_9();
        if (v39)
        {
          v12 = 28;
        }

        v123 = v11 | 0x8000000000000000;
        v124 = v12;
        OUTLINED_FUNCTION_1_9();
        if (v39)
        {
          v14 = 23;
        }

        v116 = v13 | 0x8000000000000000;
        v117 = v14;
        OUTLINED_FUNCTION_1_9();
        if (v39)
        {
          v16 = v17;
        }

        v114 = v16;
        v115 = v15 | 0x8000000000000000;
        OUTLINED_FUNCTION_1_9();
        if (v39)
        {
          v19 = 25;
        }

        v112 = v19;
        v113 = v18 | 0x8000000000000000;
        v128 = 0xE000000000000000;
        v129 = 0xE000000000000000;
        v132 = v9;
        v133 = 0xE000000000000000;
        v138 = 0xE000000000000000;
        v131 = v2;
        v135 = v0;
        while (1)
        {
          if (v139)
          {
            v20 = MEMORY[0x1BFB60E90](v4, v2);
          }

          else
          {
            v20 = *(v2 + 8 * v4 + 32);
          }

          v21 = v20;
          v22 = [v20 id];
          v23 = sub_1BFAAF868();
          v25 = v24;

          *(v0 + 160) = v23;
          *(v0 + 168) = v25;
          v26 = sub_1BF9F86D0();
          v27 = MEMORY[0x1BFB60E20](35, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x1E69E6158], v26);

          v28 = *(v27 + 16);
          if (v28)
          {
            v29 = v3;
            v30 = v2;
            v31 = (v27 + 32 * v28);
            v33 = *v31;
            v32 = v31[1];
            v35 = v31[2];
            v34 = v31[3];

            v36 = v33 >> 16;
            v37 = v32 >> 16;
            OUTLINED_FUNCTION_9_8();
            v39 = v35 == v38 - 6 && v136 == v34;
            v41 = v39 && v36 == 0 && v137 == v37;
            if (v41 || (LOBYTE(v111) = 0, (OUTLINED_FUNCTION_0_14() & 1) != 0))
            {

              v42 = [v21 fullPrint];
              v134 = sub_1BFAAF868();
              v138 = v43;

              v2 = v30;
              v3 = v29;
LABEL_60:
              v0 = v135;
              goto LABEL_61;
            }

            OUTLINED_FUNCTION_9_8();
            v47 = v35 == v44 - 7 && v10 == v34 && v36 == 0 && v132 == v37;
            if (v47 || (LOBYTE(v111) = 0, (sub_1BFAAFED8() & 1) != 0))
            {

              v48 = [v21 fullPrint];
              v130 = sub_1BFAAF868();
              v133 = v49;

              v3 = v29;
LABEL_59:
              v2 = v131;
              goto LABEL_60;
            }

            OUTLINED_FUNCTION_9_8();
            v53 = v35 == v50 + 5 && v123 == v34 && v36 == 0 && v124 == v37;
            v3 = v29;
            if (v53 || (LOBYTE(v111) = 0, (OUTLINED_FUNCTION_0_14() & 1) != 0))
            {

              v54 = [v21 fullPrint];
              v127 = sub_1BFAAF868();
              v128 = v55;

              v56 = [v21 fullSpeak];
              v126 = sub_1BFAAF868();
              v129 = v57;

              goto LABEL_59;
            }

            OUTLINED_FUNCTION_9_8();
            v61 = v35 == v58 && v116 == v34 && v36 == 0 && v117 == v37;
            v0 = v135;
            if (v61 || (LOBYTE(v111) = 0, (OUTLINED_FUNCTION_0_14() & 1) != 0))
            {

              v62 = [v21 fullPrint];
              v122 = sub_1BFAAF868();
              v125 = v63;
            }

            else
            {
              OUTLINED_FUNCTION_9_8();
              v65 = v35 == v64 && v115 == v34;
              if (!v65 || v36 || v114 != v37)
              {
                LOBYTE(v111) = 0;
                if ((OUTLINED_FUNCTION_0_14() & 1) == 0)
                {
                  OUTLINED_FUNCTION_9_8();
                  v67 = v35 == v66 + 2 && v113 == v34;
                  if (v67 && !v36 && v112 == v37)
                  {

                    v2 = v131;
LABEL_93:

                    v70 = [v21 fullPrint];
                    v118 = sub_1BFAAF868();
                    v119 = v71;
                  }

                  else
                  {
                    LOBYTE(v111) = 0;
                    v68 = OUTLINED_FUNCTION_0_14();

                    v2 = v131;
                    if (v68)
                    {
                      goto LABEL_93;
                    }
                  }

                  goto LABEL_61;
                }
              }

              v62 = [v21 fullPrint];
              v120 = sub_1BFAAF868();
              v121 = v69;
            }

            v2 = v131;
          }

          else
          {
          }

LABEL_61:
          if (v3 == ++v4)
          {
            goto LABEL_97;
          }
        }
      }

      goto LABEL_119;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  OUTLINED_FUNCTION_5_11();
  v128 = 0xE000000000000000;
  v129 = 0xE000000000000000;
  v133 = 0xE000000000000000;
  v138 = 0xE000000000000000;
LABEL_97:
  v72 = *(v0 + 224);
  v73 = *(v0 + 232);
  v74 = *(v0 + 216);

  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 176) = v74;
  v75 = sub_1BFA01764(v72, v73);
  if (__OFADD__(*(v74 + 16), (v76 & 1) == 0))
  {
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v77 = v75;
  v78 = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC098, &unk_1BFAB6EE0);
  if ((sub_1BFAAFCD8() & 1) == 0)
  {
LABEL_104:
    if (v78)
    {
      v83 = *(v0 + 248);
      v84 = *(v0 + 232);
      v85 = *(v0 + 176);
      v86 = (*(v85 + 56) + 112 * v77);
      memcpy((v0 + 16), v86, 0x70uLL);
      *v86 = v134;
      v86[1] = v138;
      v86[2] = v130;
      v86[3] = v133;
      v86[4] = v127;
      v86[5] = v128;
      v86[6] = v126;
      v86[7] = v129;
      v86[8] = v122;
      v86[9] = v125;
      v86[10] = v120;
      v86[11] = v121;
      v86[12] = v118;
      v86[13] = v119;
      sub_1BFA8E8B8(v0 + 16);
    }

    else
    {
      v88 = *(v0 + 224);
      v87 = *(v0 + 232);
      v85 = *(v0 + 176);
      OUTLINED_FUNCTION_12_12();
      v90 = (v89 + 16 * v77);
      *v90 = v92;
      v90[1] = v91;
      v93 = (*(v85 + 56) + 112 * v77);
      *v93 = v134;
      v93[1] = v138;
      v93[2] = v130;
      v93[3] = v133;
      v93[4] = v127;
      v93[5] = v128;
      v93[6] = v126;
      v93[7] = v129;
      v93[8] = v122;
      v93[9] = v125;
      v93[10] = v120;
      v93[11] = v121;
      v93[12] = v118;
      v93[13] = v119;
      v94 = *(v85 + 16);
      v95 = __OFADD__(v94, 1);
      v96 = v94 + 1;
      if (v95)
      {
LABEL_120:
        __break(1u);
        return;
      }

      v97 = *(v0 + 248);
      *(v85 + 16) = v96;
    }

    if (*(v0 + 264))
    {
      v98 = *(v0 + 200);

      OUTLINED_FUNCTION_24_0();
      OUTLINED_FUNCTION_15_6();

      __asm { BRAA            X2, X16 }
    }

    *(v0 + 216) = v85;
    *(v0 + 264) = 1;
    v102 = *(v0 + 192);
    v101 = *(v0 + 200);
    v103 = byte_1F3F07BF1;
    *(v0 + 265) = byte_1F3F07BF1;
    v39 = v103 == 0;
    v104 = 0x737567616DLL;
    if (v39)
    {
      v105 = 0xE500000000000000;
    }

    else
    {
      v104 = 0x6169646E496E6170;
      v105 = 0xE800000000000000;
    }

    *(v0 + 128) = v104;
    *(v0 + 136) = v105;

    OUTLINED_FUNCTION_18_11();

    v106 = *(v0 + 136);
    *(v0 + 144) = *(v0 + 128);
    *(v0 + 152) = v106;

    MEMORY[0x1BFB60B80](v102, v101);

    v107 = *(v0 + 152);
    *(v0 + 224) = *(v0 + 144);
    *(v0 + 232) = v107;
    OUTLINED_FUNCTION_12_2(MEMORY[0x1E69CE3E8]);
    v108 = swift_task_alloc();
    *(v0 + 240) = v108;
    *v108 = v0;
    OUTLINED_FUNCTION_2_13();
    OUTLINED_FUNCTION_15_6();

    __asm { BR              X3 }
  }

  v79 = *(v0 + 176);
  v80 = sub_1BFA01764(*(v0 + 224), *(v0 + 232));
  if ((v78 & 1) == (v81 & 1))
  {
    v77 = v80;
    goto LABEL_104;
  }

  OUTLINED_FUNCTION_15_6();

  sub_1BFAAFF38();
}

uint64_t sub_1BFA8DFEC()
{
  v0 = sub_1BFAAE968();
  sub_1BFA2351C(0x656C61636F6CLL, 0xE600000000000000, v0, &v3);

  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1BFA8E90C(&v3);
    return 0;
  }
}

uint64_t sub_1BFA8E08C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BFA8E9CC;

  return sub_1BFA8D248();
}

uint64_t sub_1BFA8E130()
{
  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0();
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC77C8);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB68();
  if (OUTLINED_FUNCTION_48(v3))
  {
    v4 = OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_66_0(v4);
    OUTLINED_FUNCTION_7_10(&dword_1BF9F6000, v5, v3, "[CrossDomainHintCATsSimple] Executing catIds");
    OUTLINED_FUNCTION_20_1();
  }

  v6 = v0[2];

  v7 = sub_1BFAAF7D8();
  v0[3] = v7;
  if (*(v6 + 24) && (v8 = sub_1BFA8DFEC(), (v0[4] = v9) != 0))
  {
    v10 = v8;
    v11 = v9;
    v12 = *(v0[2] + 16);

    OUTLINED_FUNCTION_18_11();

    MEMORY[0x1BFB60B80](v10, v11);

    v0[5] = 0x6B6361426F67;
    v0[6] = 0xE600000000000000;
    OUTLINED_FUNCTION_12_2(MEMORY[0x1E69CE3E0]);
    v23 = v13;
    v14 = swift_task_alloc();
    v0[7] = v14;
    v15 = sub_1BFA8E974();
    *v14 = v0;
    v14[1] = sub_1BFA8E3D8;
    v16 = MEMORY[0x1E69E7CC0];

    return v23(0xD000000000000016, 0x80000001BFAB93A0, v16, &type metadata for CrossDomainHintCATsSimple.GoBackDialogIds, v15);
  }

  else
  {
    v18 = sub_1BFAAF668();
    v19 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_48(v19))
    {
      v20 = OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_66_0(v20);
      OUTLINED_FUNCTION_7_10(&dword_1BF9F6000, v21, v19, "[CrossDomainHintCATsSimple] not able to get current locale. Return empty executed CAT results");
      OUTLINED_FUNCTION_20_1();
    }

    OUTLINED_FUNCTION_24_0();

    return v22(v7);
  }
}

uint64_t sub_1BFA8E3D8()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_37();
  *v4 = v3;
  v6 = *(v5 + 56);
  *v4 = *v1;
  v3[8] = v7;
  v3[9] = v0;

  if (v0)
  {
    v8 = v3[6];
    v9 = v3[3];
    v10 = v3[4];

    v11 = sub_1BFA8E6D8;
  }

  else
  {
    v11 = sub_1BFA8E508;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

void sub_1BFA8E508()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v5 = sub_1BFAAE9D8();
  v7 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = sub_1BFA01764(v3, v2);
  if (__OFADD__(*(v4 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0A0, &qword_1BFAB6EF8);
  if (sub_1BFAAFCD8())
  {
    v12 = sub_1BFA01764(v0[5], v0[6]);
    if ((v11 & 1) != (v13 & 1))
    {

      sub_1BFAAFF38();
      return;
    }

    v10 = v12;
  }

  if ((v11 & 1) == 0)
  {
    v19 = v0[5];
    v18 = v0[6];
    OUTLINED_FUNCTION_12_12();
    v21 = (v20 + 16 * v10);
    *v21 = v23;
    v21[1] = v22;
    v24 = (*(v4 + 56) + 16 * v10);
    *v24 = v5;
    v24[1] = v7;
    v25 = *(v4 + 16);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      v28 = v0[8];
      *(v4 + 16) = v27;

      goto LABEL_12;
    }

LABEL_16:
    __break(1u);
    return;
  }

  v14 = v0[8];
  v15 = v0[6];
  v16 = (*(v4 + 56) + 16 * v10);
  v17 = v16[1];
  *v16 = v5;
  v16[1] = v7;

LABEL_12:
  v29 = v0[4];

  OUTLINED_FUNCTION_24_0();

  v30(v4);
}

uint64_t sub_1BFA8E6F0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BFA8E780;

  return sub_1BFA8E11C();
}

uint64_t sub_1BFA8E780(uint64_t a1)
{
  OUTLINED_FUNCTION_42();
  v5 = *(v4 + 16);
  v6 = *v2;
  OUTLINED_FUNCTION_37();
  *v7 = v6;

  OUTLINED_FUNCTION_24_0();
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

unint64_t sub_1BFA8E874()
{
  result = qword_1EDCC6408;
  if (!qword_1EDCC6408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC6408);
  }

  return result;
}

uint64_t sub_1BFA8E90C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA30, &unk_1BFAB5450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BFA8E974()
{
  result = qword_1EDCC68B0;
  if (!qword_1EDCC68B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC68B0);
  }

  return result;
}

void OUTLINED_FUNCTION_7_10(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)()
{
  OUTLINED_FUNCTION_40();
  v7 = OUTLINED_FUNCTION_4_13(v1, v2, v3, v4, v5, v6);
  v0[8] = v7;
  OUTLINED_FUNCTION_15(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_100();
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA8EA88()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  **(v0 + 80) = v3;
  v4 = *MEMORY[0x1E69D2DD0];
  (*(v1 + 104))();
  v5 = v3;
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v7 = OUTLINED_FUNCTION_1_10(v6);

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BFA8EB44()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = *v1;
  OUTLINED_FUNCTION_8();
  *v11 = v10;
  *(v3 + 96) = v0;

  v12 = OUTLINED_FUNCTION_24();
  v13(v12);
  if (!v0)
  {
    v18 = *(v3 + 80);

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BFA8ECBC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 80);

  OUTLINED_FUNCTION_85();
  v3 = *(v0 + 96);

  return v2();
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:tool:executedParameters:submitEngagement:)()
{
  OUTLINED_FUNCTION_40();
  v7 = OUTLINED_FUNCTION_4_13(v1, v2, v3, v4, v5, v6);
  v0[8] = v7;
  OUTLINED_FUNCTION_15(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_100();
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA8EDB4()
{
  OUTLINED_FUNCTION_12_13();
  v5 = sub_1BFAAF758();
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(v1, v2);
  v7 = *MEMORY[0x1E69D2E10];
  v8 = sub_1BFAAEBA8();
  OUTLINED_FUNCTION_14(v8);
  (*(v9 + 104))(v1, v7);
  (*(v4 + 104))(v1, *MEMORY[0x1E69D2DD8], v0);
  v10 = swift_task_alloc();
  *(v3 + 88) = v10;
  *v10 = v3;
  v11 = OUTLINED_FUNCTION_1_10(v10);

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v11, v12, v13, v14, v15, v16);
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:action:for:executedParameters:submitEngagement:)()
{
  OUTLINED_FUNCTION_40();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 120) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = sub_1BFAAEB98();
  *(v1 + 80) = v10;
  OUTLINED_FUNCTION_15(v10);
  *(v1 + 88) = v11;
  v13 = *(v12 + 64);
  *(v1 + 96) = OUTLINED_FUNCTION_100();
  v14 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BFA8EF8C()
{
  OUTLINED_FUNCTION_51();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  *v1 = v6;
  v1[1] = v4;
  v1[2] = v5;
  v7 = *MEMORY[0x1E69D2E08];
  v8 = sub_1BFAAEBA8();
  OUTLINED_FUNCTION_14(v8);
  (*(v9 + 104))(v1, v7);
  (*(v2 + 104))(v1, *MEMORY[0x1E69D2DD8], v3);
  v10 = v6;

  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_1BFA8F0C8;
  v12 = *(v0 + 96);
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);
  v15 = *(v0 + 120);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  v18 = *(v0 + 16);

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v18, v12, v16, v15, v17, v13);
}

uint64_t sub_1BFA8F0C8()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[13];
  v7 = v5[12];
  v8 = v5[11];
  v9 = v5[10];
  v10 = *v1;
  OUTLINED_FUNCTION_8();
  *v11 = v10;
  *(v3 + 112) = v0;

  v12 = OUTLINED_FUNCTION_24();
  v13(v12);
  if (!v0)
  {
    v18 = *(v3 + 96);

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1BFA8F240()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_85();
  v3 = *(v0 + 112);

  return v2();
}

uint64_t SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:action:executedParameters:submitEngagement:)()
{
  OUTLINED_FUNCTION_40();
  v7 = OUTLINED_FUNCTION_4_13(v1, v2, v3, v4, v5, v6);
  v0[8] = v7;
  OUTLINED_FUNCTION_15(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_100();
  v11 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1BFA8F338()
{
  OUTLINED_FUNCTION_12_13();
  v5 = sub_1BFAAE958();
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 16))(v1, v2);
  v7 = *MEMORY[0x1E69D2E00];
  v8 = sub_1BFAAEBA8();
  OUTLINED_FUNCTION_14(v8);
  (*(v9 + 104))(v1, v7);
  (*(v4 + 104))(v1, *MEMORY[0x1E69D2DD8], v0);
  v10 = swift_task_alloc();
  *(v3 + 88) = v10;
  *v10 = v3;
  v11 = OUTLINED_FUNCTION_1_10(v10);

  return SiriSuggestionsBaseAPIClient.submitCurrentIntent(for:intent:executedParameters:submitEngagement:)(v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1BFA8F45C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v6 = v5[11];
  v7 = v5[10];
  v8 = v5[9];
  v9 = v5[8];
  v10 = *v1;
  OUTLINED_FUNCTION_8();
  *v11 = v10;
  *(v3 + 96) = v0;

  v12 = OUTLINED_FUNCTION_24();
  v13(v12);
  if (!v0)
  {
    v18 = *(v3 + 80);

    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_112();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_112();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t OUTLINED_FUNCTION_4_13(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 104) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  return sub_1BFAAEB98();
}

uint64_t sub_1BFA8F5FC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v1 = sub_1BFAAF688();
  v2 = OUTLINED_FUNCTION_2_3(v1);
  v54 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBCF0, &unk_1BFAB4938);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v49 - v12;
  v14 = sub_1BFAAEC18();
  v15 = OUTLINED_FUNCTION_2_3(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v15, v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v49 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v49 - v29;
  sub_1BFAAF728();
  v31 = sub_1BFAAE5C8();

  v32 = sub_1BFA2363C(0x73656D616ELL, 0xE500000000000000, v31);

  if (!v32)
  {
    goto LABEL_9;
  }

  if ((v32 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1BFB60E90](0, v32);
LABEL_5:

    v35 = sub_1BFAAE5B8();

    if (*(v35 + 16))
    {
      v36 = sub_1BFA901C0();

      sub_1BFA6100C(v36, v13);

      if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
      {
        v52 = *(v17 + 32);
        v53 = v17 + 32;
        v52(v30, v13, v14);
        sub_1BFAAF228();
        v39 = *(v17 + 16);
        v39(v27, v30, v14);
        v40 = sub_1BFAAF668();
        v50 = sub_1BFAAFB78();
        v51 = v40;
        if (os_log_type_enabled(v40, v50))
        {
          v41 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v56 = v49;
          *v41 = 136315138;
          v39(v23, v27, v14);
          v42 = sub_1BFAAF8B8();
          v44 = v43;
          (*(v17 + 8))(v27, v14);
          v45 = sub_1BF9F88A8(v42, v44, &v56);

          v46 = v41;
          *(v41 + 4) = v45;
          v47 = v51;
          _os_log_impl(&dword_1BF9F6000, v51, v50, "Built HomeEntity from referenced entity's identifiers: %s", v46, 0xCu);
          v48 = v49;
          __swift_destroy_boxed_opaque_existential_2Tm(v49);
          MEMORY[0x1BFB618C0](v48, -1, -1);
          MEMORY[0x1BFB618C0](v46, -1, -1);
        }

        else
        {

          (*(v17 + 8))(v27, v14);
        }

        (*(v54 + 8))(v8, v1);
        v38 = v55;
        v52(v55, v30, v14);
        v37 = 0;
        return __swift_storeEnumTagSinglePayload(v38, v37, 1, v14);
      }

      sub_1BFA20F44(v13, &qword_1EBDFBCF0, &unk_1BFAB4938);
    }

    else
    {
    }

LABEL_9:
    v37 = 1;
    v38 = v55;
    return __swift_storeEnumTagSinglePayload(v38, v37, 1, v14);
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v32 + 32);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BFA8FA90()
{
  v0 = sub_1BFAAE588();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v4 = MEMORY[0x1EEE9AC00](v0, v3);
  v110 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v109 = &v102 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v107 = &v102 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v105 = &v102 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v104 = &v102 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v103 = &v102 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v102 = &v102 - v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v102 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0D8, &qword_1BFAB6F50);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0E0, &qword_1BFAB6F58);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v113 = *(v28 + 72);
  v106 = 8 * v113;
  v31 = swift_allocObject();
  v108 = v31;
  *(v31 + 16) = xmmword_1BFAB6F20;
  v32 = (v31 + v30);
  v33 = *(v29 + 56);
  v34 = v29;
  v114 = v29;
  v35 = *MEMORY[0x1E69D17A8];
  v36 = v1[13];
  v116 = v1 + 13;
  v117 = v36;
  v36(v26, v35, v0);
  v37 = sub_1BFAAE578();
  v39 = v38;
  v40 = v1[1];
  v115 = v1 + 1;
  v120 = v40;
  v40(v26, v0);
  *v32 = v37;
  v32[1] = v39;
  v111 = v32;
  v41 = *MEMORY[0x1E69D2E98];
  v118 = sub_1BFAAEBF8();
  v42 = *(v118 - 8);
  v43 = *(v42 + 104);
  v119 = v42 + 104;
  v43(v32 + v33, v41, v118);
  v112 = v43;
  v44 = v113;
  v45 = (v32 + v113);
  v46 = *(v34 + 56);
  v47 = v102;
  v48 = v117;
  v117(v102, *MEMORY[0x1E69D17B8], v0);
  v49 = sub_1BFAAE578();
  v51 = v50;
  v120(v47, v0);
  *v45 = v49;
  v45[1] = v51;
  v52 = v45 + v46;
  v53 = v118;
  v43(v52, *MEMORY[0x1E69D2EA8], v118);
  v54 = v111;
  v55 = (v111 + 2 * v44);
  v56 = *(v114 + 56);
  v57 = v103;
  v48(v103, *MEMORY[0x1E69D17B0], v0);
  v58 = v57;
  v59 = sub_1BFAAE578();
  v61 = v60;
  v62 = v58;
  v63 = v120;
  v120(v62, v0);
  *v55 = v59;
  v55[1] = v61;
  v64 = v55 + v56;
  v65 = v112;
  v112(v64, *MEMORY[0x1E69D2EA0], v53);
  v66 = v113;
  v67 = (v54 + 3 * v113);
  v103 = *(v114 + 56);
  v68 = v104;
  v117(v104, *MEMORY[0x1E69D17D8], v0);
  v69 = sub_1BFAAE578();
  v71 = v70;
  v63(v68, v0);
  *v67 = v69;
  v67[1] = v71;
  v65(&v103[v67], *MEMORY[0x1E69D2EB0], v118);
  v72 = v111;
  v73 = (v111 + 4 * v66);
  v74 = v114;
  v104 = *(v114 + 56);
  v75 = v105;
  v117(v105, *MEMORY[0x1E69D17C8], v0);
  v76 = sub_1BFAAE578();
  v78 = v77;
  v79 = v120;
  v120(v75, v0);
  *v73 = v76;
  v73[1] = v78;
  v80 = v112;
  v112(&v104[v73], *MEMORY[0x1E69D2EC8], v118);
  v81 = (v72 + 5 * v66);
  v105 = *(v74 + 56);
  v82 = v107;
  v83 = v117;
  v117(v107, *MEMORY[0x1E69D17C0], v0);
  v84 = sub_1BFAAE578();
  v86 = v85;
  v79(v82, v0);
  *v81 = v84;
  v81[1] = v86;
  v80(&v105[v81], *MEMORY[0x1E69D2EB8], v118);
  v87 = v111;
  v88 = (v111 + 6 * v66);
  v89 = v114;
  v107 = *(v114 + 56);
  v90 = v109;
  v83(v109, *MEMORY[0x1E69D17E0], v0);
  v91 = sub_1BFAAE578();
  v93 = v92;
  v120(v90, v0);
  *v88 = v91;
  v88[1] = v93;
  LODWORD(v109) = *MEMORY[0x1E69D2EC0];
  v94 = v112;
  (v112)(&v107[v88]);
  v95 = (v87 + v106 - v113);
  v96 = *(v89 + 56);
  v97 = v110;
  v117(v110, *MEMORY[0x1E69D17D0], v0);
  v98 = sub_1BFAAE578();
  v100 = v99;
  v120(v97, v0);
  *v95 = v98;
  v95[1] = v100;
  v94(v95 + v96, v109, v118);
  result = sub_1BFAAF7D8();
  qword_1EBDFC0A8 = result;
  return result;
}

uint64_t sub_1BFA901C0()
{
  v239 = sub_1BFAAF688();
  v280 = *(v239 - 8);
  v0 = *(v280 + 8);
  MEMORY[0x1EEE9AC00](v239, v1);
  v3 = &v202 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0B0, &qword_1BFAB6F30);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v214 = &v202 - v7;
  v213 = sub_1BFAAEBF8();
  v278 = *(v213 - 8);
  v8 = *(v278 + 64);
  MEMORY[0x1EEE9AC00](v213, v9);
  v212 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1BFAAEC18();
  v230 = *(v211 - 8);
  v11 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v211, v12);
  v217 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v225 = &v202 - v17;
  v226 = sub_1BFAAE3F8();
  v277 = *(v226 - 8);
  v18 = *(v277 + 64);
  v20 = MEMORY[0x1EEE9AC00](v226, v19);
  v210 = &v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v218 = &v202 - v23;
  v24 = sub_1BFAAE598();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24, v27);
  v259 = &v202 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0B8, &qword_1BFAB6F38);
  v30 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v221 = &v202 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v32, v34);
  v253 = &v202 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35, v37);
  v261 = &v202 - v39;
  MEMORY[0x1EEE9AC00](v38, v40);
  v42 = &v202 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0C0, &qword_1BFAB6F40);
  v44 = *(*(v43 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v43 - 8, v45);
  v237 = &v202 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v223 = &v202 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v222 = &v202 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v242 = &v202 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v251 = &v202 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  v257 = &v202 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61, v63);
  v256 = &v202 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64, v66);
  v264 = &v202 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67, v69);
  v232 = &v202 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70, v72);
  v245 = &v202 - v74;
  v76 = MEMORY[0x1EEE9AC00](v73, v75);
  v78 = &v202 - v77;
  MEMORY[0x1EEE9AC00](v76, v79);
  v81 = &v202 - v80;
  v281 = sub_1BFAAE568();
  v82 = *(v281 - 8);
  v83 = *(v82 + 64);
  v85 = MEMORY[0x1EEE9AC00](v281, v84);
  v216 = &v202 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = MEMORY[0x1EEE9AC00](v85, v87);
  v203 = &v202 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88, v90);
  v255 = &v202 - v92;
  v94 = MEMORY[0x1EEE9AC00](v91, v93);
  v224 = &v202 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94, v96);
  v266 = &v202 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97, v99);
  v227 = &v202 - v101;
  v103 = MEMORY[0x1EEE9AC00](v100, v102);
  v279 = &v202 - v104;
  MEMORY[0x1EEE9AC00](v103, v105);
  v231 = &v202 - v106;

  result = sub_1BFA91EEC(v107);
  v110 = v81;
  v111 = 0;
  v113 = result + 64;
  v112 = *(result + 64);
  v244 = result;
  v114 = 1 << *(result + 32);
  v115 = -1;
  if (v114 < 64)
  {
    v115 = ~(-1 << v114);
  }

  v116 = v115 & v112;
  v117 = (v114 + 63) >> 6;
  v275 = v82 + 16;
  v267 = *MEMORY[0x1E69D1B10];
  v274 = (v25 + 104);
  v258 = (v25 + 32);
  v265 = (v25 + 8);
  v276 = (v82 + 8);
  v268 = v82;
  v235 = (v82 + 32);
  v260 = *MEMORY[0x1E69D1B18];
  v252 = *MEMORY[0x1E69D1B30];
  v238 = (v280 + 8);
  v215 = (v277 + 32);
  v219 = *MEMORY[0x1E69D1B20];
  v209 = (v277 + 16);
  v206 = (v278 + 32);
  v205 = *MEMORY[0x1E69D2ED0];
  v204 = (v278 + 104);
  v208 = (v277 + 8);
  v229 = MEMORY[0x1E69E7CC0];
  v207 = v230 + 32;
  *&v109 = 136315394;
  v236 = v109;
  v269 = v29;
  v243 = v42;
  v262 = v78;
  v280 = v81;
  v240 = v117;
  v248 = v3;
  v241 = result + 64;
LABEL_4:
  v118 = v111;
  v119 = v245;
  if (!v116)
  {
    goto LABEL_6;
  }

  do
  {
    v120 = v118;
LABEL_9:
    v249 = (v116 - 1) & v116;
    v250 = v120;
    v121 = (v120 << 9) | (8 * __clz(__rbit64(v116)));
    v122 = *(v244 + 56);
    v123 = *(v244 + 48) + v121;
    v247 = *v123;
    v246 = *(v123 + 4);
    v124 = *(v122 + v121);
    v277 = *(v124 + 16);
    v278 = v124;
    if (!v277)
    {

      goto LABEL_47;
    }

    v234 = (*(v268 + 80) + 32) & ~*(v268 + 80);
    v273 = v124 + v234;

    v125 = 0;
    while (1)
    {
      if (v125 >= *(v278 + 16))
      {
        __break(1u);
        goto LABEL_80;
      }

      v270 = *(v268 + 72);
      v272 = *(v268 + 16);
      v272(v279, v273 + v270 * v125, v281);
      sub_1BFAAE548();
      v271 = *v274;
      v271(v78, v267, v24);
      __swift_storeEnumTagSinglePayload(v78, 0, 1, v24);
      v126 = *(v29 + 48);
      sub_1BFA92268(v110, v42);
      sub_1BFA92268(v78, &v42[v126]);
      if (__swift_getEnumTagSinglePayload(v42, 1, v24) == 1)
      {
        break;
      }

      sub_1BFA92268(v42, v119);
      if (__swift_getEnumTagSinglePayload(&v42[v126], 1, v24) == 1)
      {
        sub_1BFA20F44(v78, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        sub_1BFA20F44(v110, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        (*v265)(v119, v24);
        goto LABEL_17;
      }

      v127 = v259;
      (*v258)(v259, &v42[v126], v24);
      sub_1BFA922D8();
      v128 = sub_1BFAAF848();
      v129 = *v265;
      (*v265)(v127, v24);
      sub_1BFA20F44(v262, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      sub_1BFA20F44(v280, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      v129(v119, v24);
      v78 = v262;
      v29 = v269;
      v110 = v280;
      sub_1BFA20F44(v42, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      if (v128)
      {
        goto LABEL_22;
      }

LABEL_19:
      ++v125;
      result = (*v276)(v279, v281);
      if (v277 == v125)
      {
        goto LABEL_47;
      }
    }

    sub_1BFA20F44(v78, &qword_1EBDFC0C0, &qword_1BFAB6F40);
    v110 = v280;
    sub_1BFA20F44(v280, &qword_1EBDFC0C0, &qword_1BFAB6F40);
    if (__swift_getEnumTagSinglePayload(&v42[v126], 1, v24) != 1)
    {
LABEL_17:
      sub_1BFA20F44(v42, &qword_1EBDFC0B8, &qword_1BFAB6F38);
      goto LABEL_19;
    }

    sub_1BFA20F44(v42, &qword_1EBDFC0C0, &qword_1BFAB6F40);
LABEL_22:
    v130 = v231;
    v131 = v281;
    v228 = *v235;
    v228(v231, v279, v281);
    v220 = sub_1BFAAE558();
    v233 = v132;
    v263 = *v276;
    result = v263(v130, v131);
    v133 = 0;
    v134 = v273;
    v135 = v232;
    while (2)
    {
      if (v133 >= *(v278 + 16))
      {
        goto LABEL_81;
      }

      v272(v266, v134, v281);
      sub_1BFAAE548();
      v136 = v135;
      v137 = v264;
      v271(v264, v260, v24);
      __swift_storeEnumTagSinglePayload(v137, 0, 1, v24);
      v138 = *(v269 + 48);
      v139 = v261;
      sub_1BFA92268(v136, v261);
      sub_1BFA92268(v137, v139 + v138);
      if (__swift_getEnumTagSinglePayload(v139, 1, v24) != 1)
      {
        v135 = v136;
        v142 = v256;
        sub_1BFA92268(v139, v256);
        if (__swift_getEnumTagSinglePayload(v139 + v138, 1, v24) == 1)
        {
          sub_1BFA20F44(v264, &qword_1EBDFC0C0, &qword_1BFAB6F40);
          sub_1BFA20F44(v135, &qword_1EBDFC0C0, &qword_1BFAB6F40);
          (*v265)(v142, v24);
          v141 = v139;
          goto LABEL_30;
        }

        v143 = v259;
        (*v258)(v259, (v139 + v138), v24);
        sub_1BFA922D8();
        LODWORD(v254) = sub_1BFAAF848();
        v144 = *v265;
        (*v265)(v143, v24);
        sub_1BFA20F44(v264, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        sub_1BFA20F44(v135, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        v144(v142, v24);
        sub_1BFA20F44(v139, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        v110 = v280;
        if (v254)
        {
          goto LABEL_34;
        }

LABEL_32:
        ++v133;
        result = v263(v266, v281);
        v134 += v270;
        if (v277 == v133)
        {

          v29 = v269;
          goto LABEL_46;
        }

        continue;
      }

      break;
    }

    sub_1BFA20F44(v137, &qword_1EBDFC0C0, &qword_1BFAB6F40);
    sub_1BFA20F44(v136, &qword_1EBDFC0C0, &qword_1BFAB6F40);
    v140 = __swift_getEnumTagSinglePayload(v139 + v138, 1, v24) == 1;
    v141 = v139;
    v135 = v136;
    if (!v140)
    {
LABEL_30:
      sub_1BFA20F44(v141, &qword_1EBDFC0B8, &qword_1BFAB6F38);
      v110 = v280;
      goto LABEL_32;
    }

    sub_1BFA20F44(v139, &qword_1EBDFC0C0, &qword_1BFAB6F40);
    v110 = v280;
LABEL_34:
    v145 = v227;
    v146 = v281;
    v228(v227, v266, v281);
    v202 = sub_1BFAAE558();
    v254 = v147;
    result = v263(v145, v146);
    v148 = 0;
    v149 = v255;
    while (2)
    {
      v150 = v257;
      if (v148 >= *(v278 + 16))
      {
        goto LABEL_82;
      }

      v272(v149, v273, v281);
      sub_1BFAAE548();
      v151 = v251;
      v271(v251, v252, v24);
      __swift_storeEnumTagSinglePayload(v151, 0, 1, v24);
      v152 = *(v269 + 48);
      v153 = v253;
      sub_1BFA92268(v150, v253);
      sub_1BFA92268(v151, v153 + v152);
      if (__swift_getEnumTagSinglePayload(v153, 1, v24) == 1)
      {
        sub_1BFA20F44(v151, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        v110 = v280;
        sub_1BFA20F44(v150, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        v140 = __swift_getEnumTagSinglePayload(v153 + v152, 1, v24) == 1;
        v154 = v153;
        if (!v140)
        {
LABEL_42:
          sub_1BFA20F44(v154, &qword_1EBDFC0B8, &qword_1BFAB6F38);
          v29 = v269;
          goto LABEL_44;
        }

        sub_1BFA20F44(v153, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        v173 = v237;
LABEL_52:
        v174 = v224;
        v175 = v281;
        v228(v224, v255, v281);
        sub_1BFAAE558();
        v263(v174, v175);
        v176 = v225;
        sub_1BFAAE388();

        if (__swift_getEnumTagSinglePayload(v176, 1, v226) == 1)
        {

          sub_1BFA20F44(v176, &qword_1EBDFB570, &qword_1BFAB1F50);
          v78 = v262;
          v29 = v269;
          goto LABEL_47;
        }

        result = (*v215)(v218, v176, v226);
        v177 = 0;
        v178 = v278;
        v179 = v278 + v234;
        v180 = v216;
        v181 = v219;
        while (2)
        {
          if (v177 >= *(v178 + 16))
          {
            goto LABEL_83;
          }

          v273 = v179;
          (v272)(v180);
          v182 = v222;
          sub_1BFAAE548();
          v183 = v223;
          v271(v223, v181, v24);
          __swift_storeEnumTagSinglePayload(v183, 0, 1, v24);
          v184 = *(v269 + 48);
          v185 = v221;
          sub_1BFA92268(v182, v221);
          sub_1BFA92268(v183, v185 + v184);
          if (__swift_getEnumTagSinglePayload(v185, 1, v24) == 1)
          {
            sub_1BFA20F44(v183, &qword_1EBDFC0C0, &qword_1BFAB6F40);
            sub_1BFA20F44(v182, &qword_1EBDFC0C0, &qword_1BFAB6F40);
            v140 = __swift_getEnumTagSinglePayload(v185 + v184, 1, v24) == 1;
            v186 = v185;
            if (v140)
            {
              sub_1BFA20F44(v185, &qword_1EBDFC0C0, &qword_1BFAB6F40);
              v190 = v228;
LABEL_66:

              v191 = v203;
              v192 = v281;
              v190(v203, v180, v281);
              sub_1BFAAE558();
              v263(v191, v192);
LABEL_67:
              (*v209)(v210, v218, v226);
              v193 = v214;
              v194 = v213;
              v195 = v212;
              v78 = v262;
              if (qword_1EBDFB510 != -1)
              {
                swift_once();
              }

              sub_1BFA23580(v202, v254, qword_1EBDFC0A8, v193);

              if (__swift_getEnumTagSinglePayload(v193, 1, v194) == 1)
              {
                (*v204)(v195, v205, v194);
                if (__swift_getEnumTagSinglePayload(v193, 1, v194) != 1)
                {
                  sub_1BFA20F44(v193, &qword_1EBDFC0B0, &qword_1BFAB6F30);
                }
              }

              else
              {
                (*v206)(v195, v193, v194);
              }

              sub_1BFAAEC08();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v29 = v269;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1BFA1F718(0, *(v229 + 16) + 1, 1, v229);
                v229 = v200;
              }

              v42 = v243;
              v110 = v280;
              v198 = *(v229 + 16);
              v197 = *(v229 + 24);
              if (v198 >= v197 >> 1)
              {
                sub_1BFA1F718(v197 > 1, v198 + 1, 1, v229);
                v229 = v201;
              }

              (*v208)(v218, v226);
              v199 = v229;
              *(v229 + 16) = v198 + 1;
              result = (*(v230 + 32))(v199 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v198, v217, v211);
              v113 = v241;
              v117 = v240;
              v111 = v250;
              v116 = v249;
              goto LABEL_4;
            }

LABEL_62:
            sub_1BFA20F44(v186, &qword_1EBDFC0B8, &qword_1BFAB6F38);
            v178 = v278;
          }

          else
          {
            sub_1BFA92268(v185, v173);
            if (__swift_getEnumTagSinglePayload(v185 + v184, 1, v24) == 1)
            {
              sub_1BFA20F44(v223, &qword_1EBDFC0C0, &qword_1BFAB6F40);
              sub_1BFA20F44(v222, &qword_1EBDFC0C0, &qword_1BFAB6F40);
              (*v265)(v173, v24);
              v186 = v185;
              goto LABEL_62;
            }

            v187 = v259;
            (*v258)(v259, (v185 + v184), v24);
            sub_1BFA922D8();
            v188 = sub_1BFAAF848();
            v189 = *v265;
            (*v265)(v187, v24);
            sub_1BFA20F44(v223, &qword_1EBDFC0C0, &qword_1BFAB6F40);
            sub_1BFA20F44(v222, &qword_1EBDFC0C0, &qword_1BFAB6F40);
            v189(v173, v24);
            v181 = v219;
            sub_1BFA20F44(v185, &qword_1EBDFC0C0, &qword_1BFAB6F40);
            v178 = v278;
            v190 = v228;
            if (v188)
            {
              goto LABEL_66;
            }
          }

          ++v177;
          result = v263(v180, v281);
          v179 = v273 + v270;
          if (v277 == v177)
          {

            goto LABEL_67;
          }

          continue;
        }
      }

      v155 = v242;
      sub_1BFA92268(v153, v242);
      if (__swift_getEnumTagSinglePayload(v153 + v152, 1, v24) == 1)
      {
        sub_1BFA20F44(v151, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        sub_1BFA20F44(v257, &qword_1EBDFC0C0, &qword_1BFAB6F40);
        (*v265)(v155, v24);
        v154 = v153;
        v42 = v243;
        goto LABEL_42;
      }

      v156 = v259;
      (*v258)(v259, (v153 + v152), v24);
      sub_1BFA922D8();
      v157 = sub_1BFAAF848();
      v158 = *v265;
      (*v265)(v156, v24);
      sub_1BFA20F44(v151, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      sub_1BFA20F44(v257, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      v158(v155, v24);
      v110 = v280;
      sub_1BFA20F44(v153, &qword_1EBDFC0C0, &qword_1BFAB6F40);
      v173 = v237;
      v42 = v243;
      v29 = v269;
      if (v157)
      {
        goto LABEL_52;
      }

LABEL_44:
      ++v148;
      v149 = v255;
      result = v263(v255, v281);
      v273 += v270;
      if (v277 != v148)
      {
        continue;
      }

      break;
    }

LABEL_46:
    v78 = v262;
LABEL_47:
    v159 = v248;
    sub_1BFAAF228();
    v160 = v278;

    v161 = sub_1BFAAF668();
    v162 = sub_1BFAAFB78();

    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      LODWORD(v273) = v162;
      v164 = v163;
      v277 = swift_slowAlloc();
      v284 = v277;
      *v164 = v236;
      v282 = v247;
      v283 = v246;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0C8, &qword_1BFAB6F48);
      v165 = sub_1BFAAF8B8();
      v167 = sub_1BF9F88A8(v165, v166, &v284);

      *(v164 + 4) = v167;
      *(v164 + 12) = 2080;
      v168 = MEMORY[0x1BFB60C30](v160, v281);
      v170 = v169;

      v171 = sub_1BF9F88A8(v168, v170, &v284);
      v159 = v248;

      *(v164 + 14) = v171;
      v110 = v280;
      _os_log_impl(&dword_1BF9F6000, v161, v273, "Dropped identifier group %s: %s due to missing value", v164, 0x16u);
      v172 = v277;
      swift_arrayDestroy();
      MEMORY[0x1BFB618C0](v172, -1, -1);
      MEMORY[0x1BFB618C0](v164, -1, -1);
    }

    else
    {
    }

    result = (*v238)(v159, v239);
    v118 = v250;
    v119 = v245;
    v113 = v241;
    v117 = v240;
    v116 = v249;
  }

  while (v249);
LABEL_6:
  while (1)
  {
    v120 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      break;
    }

    if (v120 >= v117)
    {

      return v229;
    }

    v116 = *(v113 + 8 * v120);
    ++v118;
    if (v116)
    {
      goto LABEL_9;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_1BFA91EEC(uint64_t a1)
{
  v51 = sub_1BFAAE568();
  v2 = *(*(v51 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v51, v3);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v50 = &v41 - v7;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  v52 = MEMORY[0x1E69E7CC8];
  v10 = *(a1 + 16);
  v46 = v11;
  v47 = v10;
  v45 = v11 + 16;
  v48 = (v11 + 32);
  v42 = xmmword_1BFAB08E0;
  v43 = a1;
  while (1)
  {
    if (v47 == v8)
    {

      return v9;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v13 = *(v46 + 72);
    v49 = v8;
    (*(v46 + 16))(v50, a1 + v12 + v13 * v8, v51);
    v14 = sub_1BFAAE538();
    v15 = v14;
    v16 = HIDWORD(v14) & 1;
    v17 = v14;
    v19 = sub_1BFA1F9BC(v14 | (v16 << 32));
    v20 = v9[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_19;
    }

    v23 = v18;
    if (v9[3] < v22)
    {
      sub_1BFAAB804(v22);
      v9 = v52;
      v24 = sub_1BFA1F9BC(v17 | (v16 << 32));
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_21;
      }

      v19 = v24;
    }

    if (v23)
    {
      v26 = v9[7];
      v27 = *v48;
      (*v48)(v44, v50, v51);
      v28 = *(v26 + 8 * v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v26 + 8 * v19) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BFA1F758(0, *(v28 + 16) + 1, 1, v28);
        v28 = v38;
        *(v26 + 8 * v19) = v38;
      }

      v31 = *(v28 + 16);
      v30 = *(v28 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1BFA1F758(v30 > 1, v31 + 1, 1, v28);
        v28 = v39;
        *(v26 + 8 * v19) = v39;
      }

      a1 = v43;
      v32 = v44;
      *(v28 + 16) = v31 + 1;
      v27((v28 + v12 + v31 * v13), v32, v51);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0E8, &unk_1BFAB6F60);
      v33 = swift_allocObject();
      *(v33 + 16) = v42;
      (*v48)((v33 + v12), v50, v51);
      v9[(v19 >> 6) + 8] |= 1 << v19;
      v34 = v9[6] + 8 * v19;
      *v34 = v15;
      *(v34 + 4) = v16;
      *(v9[7] + 8 * v19) = v33;
      v35 = v9[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_20;
      }

      v9[2] = v37;
      a1 = v43;
    }

    v8 = v49 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0C8, &qword_1BFAB6F48);
  result = sub_1BFAAFF38();
  __break(1u);
  return result;
}

uint64_t sub_1BFA92268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC0C0, &qword_1BFAB6F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFA922D8()
{
  result = qword_1EBDFC0D0;
  if (!qword_1EBDFC0D0)
  {
    sub_1BFAAE598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC0D0);
  }

  return result;
}

uint64_t sub_1BFA92360(uint64_t *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1Tm(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return v12;
}

uint64_t SuggestionsOverXPCLogger.log(from:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA9246C()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(*(v3 + 16) + 8);
  v5 = *(v4 + 56);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_1BFA925A8;
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return v12(v10, v8, v9, v2, v4);
}

uint64_t sub_1BFA925A8()
{
  v1 = *(*v0 + 48);
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t SuggestionsOverXPCLogger.logEngagement(for:with:invocationType:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA926AC()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(*(v3 + 16) + 16);
  v5 = *(v4 + 8);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[5] = v7;
  *v7 = v0;
  v7[1] = sub_1BFA927E4;
  v9 = v0[2];
  v8 = v0[3];

  return v11(v9, v8, v2, v4);
}

uint64_t sub_1BFA927E4()
{
  v1 = *(*v0 + 40);
  v2 = *v0;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_1BFA928F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BFA47AAC;

  return SuggestionsOverXPCLogger.log(from:deliveryVehicle:generationId:)(a1, a2, a3);
}

uint64_t sub_1BFA929A0(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BFA45CB0;

  return SuggestionsOverXPCLogger.logEngagement(for:with:invocationType:)(a1, a2);
}

uint64_t *sub_1BFA92A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v12 = sub_1BFA92B58(v10, v11, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v12;
}

uint64_t *sub_1BFA92B58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  return a2;
}

uint64_t SiriRuntimeSuggestionsAPIClientProvider.__allocating_init(assistantTurnState:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_1BF9F9378(a1, v5 + OBJC_IVAR____TtC18SiriSuggestionsAPI39SiriRuntimeSuggestionsAPIClientProvider_assistantTurnState);
  return v5;
}

void *sub_1BFA92C40()
{
  type metadata accessor for SiriSuggestionsXPCClient();
  result = SiriSuggestionsXPCClient.__allocating_init()();
  qword_1EDCC6F68 = result;
  return result;
}

uint64_t ConfigurableSuggestionsAPIClientProvider.requestState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_requestState;
  v4 = sub_1BFAAEAC8();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t ConfigurableSuggestionsAPIClientProvider.__allocating_init(deviceState:requestState:catGlobalsHolder:salientEntitiesService:xpcClientOverride:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  ConfigurableSuggestionsAPIClientProvider.init(deviceState:requestState:catGlobalsHolder:salientEntitiesService:xpcClientOverride:)(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t ConfigurableSuggestionsAPIClientProvider.init(deviceState:requestState:catGlobalsHolder:salientEntitiesService:xpcClientOverride:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v21 = *a3;
  v10 = *(a3 + 2);
  v11 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_deviceState;
  v12 = sub_1BFAAEA88();
  OUTLINED_FUNCTION_0(v12);
  (*(v13 + 32))(v5 + v11, a1);
  v14 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_requestState;
  v15 = sub_1BFAAEAC8();
  OUTLINED_FUNCTION_0(v15);
  (*(v16 + 32))(v5 + v14, a2);
  v17 = v5 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_catGlobalsHolder;
  *v17 = v21;
  *(v17 + 16) = v10;
  v18 = v5 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_salientEntitiesService;
  *(v18 + 32) = *(a4 + 32);
  v19 = *(a4 + 16);
  *v18 = *a4;
  *(v18 + 16) = v19;
  *(v5 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_xpcClientOverride) = a5;
  return v5;
}

void *sub_1BFA92E68()
{
  v1 = v0;
  if (qword_1EDCC8BC0 != -1)
  {
    OUTLINED_FUNCTION_5();
  }

  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC8B70);

  v3 = sub_1BFAAF668();
  v4 = sub_1BFAAFB68();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v17[0] = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1BFAAEAA8();
    v8 = sub_1BF9F88A8(v6, v7, v17);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_1BFAAEA68();
    v11 = sub_1BF9F88A8(v9, v10, v17);

    *(v5 + 14) = v11;
    _os_log_impl(&dword_1BF9F6000, v3, v4, "Constructing suggestions client using state: \n%s, \ndevice state: %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  sub_1BFA29E68(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_salientEntitiesService, v17, &qword_1EBDFB638, &qword_1BFAB6BE0);
  v12 = *(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_xpcClientOverride);
  if (v12)
  {
    swift_retain_n();
    v13 = v12;
  }

  else
  {
    v14 = qword_1EDCC6F60;
    swift_retain_n();
    if (v14 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDCC6F68;
  }

  type metadata accessor for SiriSuggestionsAPIClients();

  v15 = static SiriSuggestionsAPIClients.createClient(salientEntitiesService:globals:deviceState:requestState:xpcClientOverride:)(v17, sub_1BFA940A0, v1, sub_1BFA940A8, v1, sub_1BFA940C4, v1, v13);

  sub_1BF9FAB40(v17, &qword_1EBDFB638, &qword_1BFAB6BE0);
  return v15;
}

uint64_t sub_1BFA93128@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_catGlobalsHolder);
  v2 = *(a1 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_catGlobalsHolder + 8);
  v4 = *(a1 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_catGlobalsHolder + 16);
  *a2 = v3;
  a2[1] = v2;
  a2[2] = v4;
}

uint64_t sub_1BFA93178@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_deviceState;
  v5 = sub_1BFAAEA88();
  a2[3] = v5;
  a2[4] = sub_1BFA94A24(qword_1EDCC7090, MEMORY[0x1E69D2D50]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1Tm, a1 + v4, v5);
}

uint64_t sub_1BFA9323C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_requestState;
  v5 = sub_1BFAAEAC8();
  a2[3] = v5;
  a2[4] = sub_1BFA94A24(&qword_1EDCC7088, MEMORY[0x1E69D2D60]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(boxed_opaque_existential_1Tm, a1 + v4, v5);
}

uint64_t ConfigurableSuggestionsAPIClientProvider.deinit()
{
  v1 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_deviceState;
  v2 = sub_1BFAAEA88();
  OUTLINED_FUNCTION_0(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_requestState;
  v5 = sub_1BFAAEAC8();
  OUTLINED_FUNCTION_0(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_catGlobalsHolder);
  v8 = *(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_catGlobalsHolder + 16);

  sub_1BF9FAB40(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_salientEntitiesService, &qword_1EBDFB638, &qword_1BFAB6BE0);
  v9 = *(v0 + OBJC_IVAR____TtC18SiriSuggestionsAPI40ConfigurableSuggestionsAPIClientProvider_xpcClientOverride);

  return v0;
}

uint64_t ConfigurableSuggestionsAPIClientProvider.__deallocating_deinit()
{
  ConfigurableSuggestionsAPIClientProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void *static SiriRuntimeSuggestionsAPIClientProvider.createRuntimeClient(xpcClientOverride:salientEntitiesService:assistantTurnState:featureFlagProvider:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4[3];
  v9 = a4[4];
  v10 = __swift_project_boxed_opaque_existential_1(a4, v8);

  return sub_1BFA94360(a1, a2, a3, v10, v4, v8, v9);
}

void sub_1BFA934F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (sub_1BFAAF078())
  {
    if (qword_1EDCC8BC0 != -1)
    {
      swift_once();
    }

    v4 = sub_1BFAAF688();
    __swift_project_value_buffer(v4, qword_1EDCC8B70);
    v5 = sub_1BFAAF668();
    v6 = sub_1BFAAFB68();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BF9F6000, v5, v6, "SAE is enabled meaning we can compute salient entities over the XPC service. Not setting a client side salient entity service", v7, 2u);
      MEMORY[0x1BFB618C0](v7, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v8 = type metadata accessor for RRSalientEntitiesService();
    v9 = RRSalientEntitiesService.__allocating_init()();
    *(a2 + 24) = v8;
    *(a2 + 32) = &protocol witness table for RRSalientEntitiesService;
    *a2 = v9;
  }
}

double sub_1BFA9361C@<D0>(uint64_t a1@<X8>)
{
  sub_1BFAAE998();
  sub_1BFAAE528();
  v2 = sub_1BFAAE978();
  sub_1BFA93680(&v4);

  *a1 = v4;
  result = v5[0];
  *(a1 + 8) = *v5;
  return result;
}

void sub_1BFA93680(unint64_t *a1@<X8>)
{
  v2 = sub_1BFAAE968();
  v3 = sub_1BFA93B38(v2);

  v4 = sub_1BFAAE968();
  sub_1BFA2351C(0xD000000000000010, 0x80000001BFAB9FD0, v4, &v11);

  if (!v12)
  {
    sub_1BF9FAB40(&v11, &qword_1EBDFBA30, &unk_1BFAB5450);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB958, &unk_1BFAB1EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_10;
  }

  sub_1BFA2351C(0x656369766564, 0xE600000000000000, v10, &v13);

  if (!*(&v14 + 1))
  {
LABEL_10:
    sub_1BF9FAB40(&v13, &qword_1EBDFBA30, &unk_1BFAB5450);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_12;
  }

  sub_1BFA2351C(0x614E656369766564, 0xEA0000000000656DLL, v11, &v15);

  if (!*(&v16 + 1))
  {
LABEL_12:
    sub_1BF9FAB40(&v15, &qword_1EBDFBA30, &unk_1BFAB5450);
    goto LABEL_13;
  }

  sub_1BFA94ABC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v6 = 0;
    v8 = 0;
    v5 = 0;
    goto LABEL_14;
  }

  v5 = v13;
  v6 = sub_1BFAAF8A8();
  v8 = v7;
LABEL_14:
  v9 = sub_1BFA12E44(v3);

  *a1 = v9;
  a1[1] = v6;
  a1[2] = v8;
}

uint64_t sub_1BFA93898@<X0>(uint64_t *a1@<X8>)
{
  sub_1BFAAE528();
  sub_1BFA938EC(v3, a1);
  return __swift_destroy_boxed_opaque_existential_2Tm(v3);
}

uint64_t *sub_1BFA938EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EDCC6AB0 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB688, &qword_1BFAB71E0);
  __swift_project_value_buffer(v5, qword_1EDCC6AB8);
  v6 = sub_1BFAAE818();
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    v7 = sub_1BFAAE758();
  }

  else
  {
    v7 = 0;
  }

  a2[3] = sub_1BFAAEA88();
  a2[4] = sub_1BFA94A24(qword_1EDCC7090, MEMORY[0x1E69D2D50]);
  __swift_allocate_boxed_opaque_existential_1Tm(a2);
  sub_1BF9F94C4(a1, v9);
  v9[5] = v7;

  v6(v9);

  if (!v2)
  {
    return sub_1BF9FAB40(v9, &qword_1EBDFB690, &unk_1BFAB13A0);
  }

  sub_1BF9FAB40(v9, &qword_1EBDFB690, &unk_1BFAB13A0);
  return __swift_deallocate_boxed_opaque_existential_1(a2);
}

uint64_t sub_1BFA93AB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    v4 = sub_1BFAAE758();
  }

  else
  {
    v4 = 0;
  }

  sub_1BF9FB2AC(v4, a1, a2);
}

uint64_t sub_1BFA93B38(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1BF9F8B40(*(a1 + 56) + 32 * v12, v39);
    *&v38 = v15;
    *(&v38 + 1) = v14;
    v35 = v38;
    v36 = v39[0];
    v37 = v39[1];
    sub_1BF9F8B40(&v36, &v32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB5D8, &qword_1BFAB1160);
    if (swift_dynamicCast())
    {
      if (!*(&v29 + 1))
      {
        goto LABEL_17;
      }

      sub_1BF9FA474(&v28, v34);
      v32 = v35;
      v33[0] = v36;
      v33[1] = v37;
      sub_1BF9FA474(v34, v31);
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {
        sub_1BFAAB9B4(v16 + 1);
        v2 = v40;
      }

      v17 = v32;
      v18 = *(v2 + 40);
      sub_1BFAAFF98();
      sub_1BFAAF908();
      result = sub_1BFAAFFE8();
      v19 = v2 + 64;
      v20 = -1 << *(v2 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_25;
          }
        }

        goto LABEL_28;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v2 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v2 + 48) + 16 * v23) = v17;
      sub_1BF9FA474(v31, *(v2 + 56) + 40 * v23);
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_2Tm(v33);
    }

    else
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
LABEL_17:
      sub_1BF9FAB40(&v35, &qword_1EBDFC0F8, qword_1BFAB76D0);
      result = sub_1BF9FAB40(&v28, &qword_1EBDFB5A8, &qword_1BFAB0A00);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1BFA93E6C()
{
  type metadata accessor for SiriSuggestionsXPCOnlyAPIClientProvider();
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = sub_1BFA93ECC(0);
  result = sub_1BF9FAB40(v2, &qword_1EBDFB638, &qword_1BFAB6BE0);
  qword_1EDCC7790 = v0;
  return result;
}

void *sub_1BFA93ECC(void *a1)
{
  type metadata accessor for SiriSuggestionsAPIClients();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = static SiriSuggestionsAPIClients.createClient(salientEntitiesService:globals:deviceState:requestState:xpcClientOverride:)(v4, sub_1BFA93FDC, 0, sub_1BFA93FE8, 0, sub_1BFA93FE8, 0, a1);
  sub_1BF9FAB40(v4, &qword_1EBDFB638, &qword_1BFAB6BE0);
  return v2;
}

uint64_t sub_1BFA93F80()
{
  if (qword_1EDCC7788 != -1)
  {
    swift_once();
  }
}

void sub_1BFA93FDC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double sub_1BFA93FE8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_1BFA94010()
{
  type metadata accessor for NoOpSiriSuggestionsClient();
  inited = swift_initStaticObject();
  type metadata accessor for LocalStateStoreClient();
  v1 = swift_allocObject();

  return sub_1BFA94920(inited, &unk_1BFAB1930, 0, v1);
}

void *sub_1BFA940CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v15 = &v22 - v14;
  v26[3] = sub_1BFAAF0E8();
  v26[4] = MEMORY[0x1E69D3170];
  v26[0] = a4;
  sub_1BFA29E68(a2, &v23, &qword_1EBDFB638, &qword_1BFAB6BE0);
  if (v24)
  {
    sub_1BF9FA474(&v23, v25);
  }

  else
  {

    sub_1BFA934F0(v26, v25);
    if (v24)
    {
      sub_1BF9FAB40(&v23, &qword_1EBDFB638, &qword_1BFAB6BE0);
    }
  }

  type metadata accessor for SiriSuggestionsAPIClients();
  v16 = swift_allocObject();
  *(v16 + 16) = a5;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  sub_1BFA29E68(a3, v15, &qword_1EBDFB640, &qword_1BFAB11D0);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_1BF9F9378(v15, v19 + v18);
  *(v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v20 = static SiriSuggestionsAPIClients.createClient(salientEntitiesService:globals:deviceState:requestState:xpcClientOverride:)(v25, sub_1BFA94CCC, v16, sub_1BFA94CB0, v17, sub_1BFA94CC8, v19, a1);

  sub_1BF9FAB40(v25, &qword_1EBDFB638, &qword_1BFAB6BE0);
  __swift_destroy_boxed_opaque_existential_2Tm(v26);
  return v20;
}

void *sub_1BFA94360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v17);
  v19 = &v27 - v18;
  v31[3] = a6;
  v31[4] = a7;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v31);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1Tm, a4, a6);
  sub_1BFA29E68(a2, &v28, &qword_1EBDFB638, &qword_1BFAB6BE0);
  if (v29)
  {
    sub_1BF9FA474(&v28, v30);
  }

  else
  {
    sub_1BFA934F0(v31, v30);
    if (v29)
    {
      sub_1BF9FAB40(&v28, &qword_1EBDFB638, &qword_1BFAB6BE0);
    }
  }

  type metadata accessor for SiriSuggestionsAPIClients();
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  v22 = swift_allocObject();
  *(v22 + 16) = a5;
  sub_1BFA29E68(a3, v19, &qword_1EBDFB640, &qword_1BFAB11D0);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = swift_allocObject();
  sub_1BF9F9378(v19, v24 + v23);
  *(v24 + ((v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v25 = static SiriSuggestionsAPIClients.createClient(salientEntitiesService:globals:deviceState:requestState:xpcClientOverride:)(v30, sub_1BFA949FC, v21, sub_1BFA94A04, v22, sub_1BFA94A20, v24, a1);

  sub_1BF9FAB40(v30, &qword_1EBDFB638, &qword_1BFAB6BE0);
  __swift_destroy_boxed_opaque_existential_2Tm(v31);
  return v25;
}

uint64_t sub_1BFA94660()
{
  result = sub_1BFAAEA88();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1BFAAEAC8();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1BFA947A0()
{
  sub_1BFA94880();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1BFA94880()
{
  if (!qword_1EDCC64C0)
  {
    sub_1BFAAEFD8();
    v0 = sub_1BFAAFBA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCC64C0);
    }
  }
}

void *sub_1BFA94920(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = type metadata accessor for NoOpSiriSuggestionsClient();
  v11 = sub_1BFA94A24(&qword_1EBDFB630, type metadata accessor for NoOpSiriSuggestionsClient);
  *&v9 = a1;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB880, &qword_1BFAB1938);
  sub_1BFA27F28();
  a4[14] = sub_1BFAAF7D8();
  sub_1BF9FA474(&v9, (a4 + 15));
  a4[20] = a2;
  a4[21] = a3;
  return a4;
}

uint64_t sub_1BFA94A24(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x1BFB618C0);
  }

  return result;
}

unint64_t sub_1BFA94ABC()
{
  result = qword_1EDCC63D8;
  if (!qword_1EDCC63D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC63D8);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1BFAAEFD8();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v5))
  {
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1BFA94C04@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB640, &qword_1BFAB11D0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BFA93AB4(v1 + v4, a1);
}

void *SiriSuggestionsXPCClient.__allocating_init()()
{
  sub_1BFA94D7C();
  v0 = sub_1BFA979D8(0xD000000000000019, 0x80000001BFAB9FF0, 4096);
  v1 = [objc_opt_self() interfaceWithProtocol_];
  swift_allocObject();
  return SiriSuggestionsXPCClient.init(connection:xpcInterface:)(v0, v1);
}

unint64_t sub_1BFA94D7C()
{
  result = qword_1EDCC77A0;
  if (!qword_1EDCC77A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCC77A0);
  }

  return result;
}

uint64_t sub_1BFA94DC0(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1BFAAF498();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v24 - v17;
  v19 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  sub_1BFA01D14(v2, v13, &qword_1EBDFC1A0, &qword_1BFAB7688);
  (*(v4 + 16))(v7, v25, v3);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = (v10 + *(v4 + 80) + v20) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1BFA01D64(v13, v22 + v20, &qword_1EBDFC1A0, &qword_1BFAB7688);
  (*(v4 + 32))(v22 + v21, v7, v3);
  sub_1BFA0C8A4();
}

void sub_1BFA95044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_102();
  a19 = v20;
  a20 = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  v25 = OUTLINED_FUNCTION_15(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &a9 - v36;
  v38 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
  OUTLINED_FUNCTION_94_1();
  sub_1BFA01D14(v39, v40, v41, v42);
  v43 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  OUTLINED_FUNCTION_94_1();
  sub_1BFA01D64(v45, v46, v47, v48);
  sub_1BFA0C8A4();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA951AC(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for SiriSuggestions.SuggestionList();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v24 - v17;
  v19 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  sub_1BFA01D14(v2, v13, &qword_1EBDFC128, &qword_1BFAB75C0);
  sub_1BFAA196C(v25, v7);
  v20 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v21 = (v10 + *(v4 + 80) + v20) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  sub_1BFA01D64(v13, v22 + v20, &qword_1EBDFC128, &qword_1BFAB75C0);
  sub_1BFAA1A2C(v7, v22 + v21);
  sub_1BFA0C8A4();
}

uint64_t sub_1BFA95400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1BFAAF498();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA954C0, 0, 0);
}

uint64_t sub_1BFA954C0()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  v0[7] = *(v1 + *(v2 + 44));
  OUTLINED_FUNCTION_18_12(v2);
  v0[8] = v3;
  v0[9] = *(v4 + 8);
  v5 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA95548()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 56);
  *(v0 + 80) = sub_1BFA5D280(*(v0 + 64), *(v0 + 72)) & 1;
  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA955B0()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 80) == 1)
  {
    v1 = *(v0 + 16);
    (*(*(v0 + 40) + 16))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC198, &qword_1BFAB7670);
    OUTLINED_FUNCTION_93_1();
    sub_1BFAAFA68();
  }

  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_85();

  return v3();
}

uint64_t sub_1BFA95670()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC180, &qword_1BFAB7640);
  v0[3] = *(v1 + *(v2 + 44));
  OUTLINED_FUNCTION_18_12(v2);
  v0[4] = v3;
  v0[5] = *(v4 + 8);
  v5 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA956F8()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 24);
  *(v0 + 48) = sub_1BFA5D280(*(v0 + 32), *(v0 + 40)) & 1;
  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA95760()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 48) == 1)
  {
    v1 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC178, &qword_1BFAB7620);
    sub_1BFAAFA68();
  }

  OUTLINED_FUNCTION_85();

  return v2();
}

uint64_t sub_1BFA957FC()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  v0[3] = *(v1 + *(v2 + 44));
  OUTLINED_FUNCTION_18_12(v2);
  v0[4] = v3;
  v0[5] = *(v4 + 8);
  v5 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BFA95884()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 24);
  *(v0 + 48) = sub_1BFA5D280(*(v0 + 32), *(v0 + 40)) & 1;
  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA958EC()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 48) == 1)
  {
    v1 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
    sub_1BFAAFA68();
  }

  OUTLINED_FUNCTION_85();

  return v2();
}

uint64_t sub_1BFA95968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(type metadata accessor for SiriSuggestions.SuggestionList() - 8) + 64) + 15;
  v5[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA959F8, 0, 0);
}

uint64_t sub_1BFA959F8()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 16);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC128, &qword_1BFAB75C0);
  OUTLINED_FUNCTION_11_10(v2);
  v3 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA95A68()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 40);
  *(v0 + 64) = sub_1BFA5D280(*(v0 + 48), *(v0 + 56)) & 1;
  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA95AD0()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 64) == 1)
  {
    v1 = *(v0 + 16);
    sub_1BFAA196C(*(v0 + 24), *(v0 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
    OUTLINED_FUNCTION_93_1();
    sub_1BFAAFA68();
  }

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_85();

  return v3();
}

void sub_1BFA95B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_102();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v26 = OUTLINED_FUNCTION_113_1(v22, v24, v25);
  v27 = OUTLINED_FUNCTION_15(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27, v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  OUTLINED_FUNCTION_60_0(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &a9 - v38;
  v40 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v40);
  OUTLINED_FUNCTION_94_1();
  sub_1BFA01D14(v41, v42, v43, v44);
  v45 = (v31 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  OUTLINED_FUNCTION_94_1();
  sub_1BFA01D64(v47, v48, v49, v50);
  *(v46 + v45) = v23;
  v51 = v23;
  sub_1BFA0C8A4();

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1BFA95CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BFA95D04, 0, 0);
}

uint64_t sub_1BFA95D04()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC1A0, &qword_1BFAB7688);
  OUTLINED_FUNCTION_11_10(v2);
  v3 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA95D74()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 40);
  *(v0 + 64) = sub_1BFA5D280(*(v0 + 48), *(v0 + 56)) & 1;
  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA95DDC()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 64) == 1)
  {
    OUTLINED_FUNCTION_108_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC198, &qword_1BFAB7670);
    OUTLINED_FUNCTION_93_1();
    sub_1BFAAFA58();
  }

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA95E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BFA95E78, 0, 0);
}

uint64_t sub_1BFA95E78()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC118, &qword_1BFAB7550);
  OUTLINED_FUNCTION_11_10(v2);
  v3 = OUTLINED_FUNCTION_56_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA95EE8()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 40);
  *(v0 + 64) = sub_1BFA5D280(*(v0 + 48), *(v0 + 56)) & 1;
  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1BFA95F50()
{
  OUTLINED_FUNCTION_40();
  if (*(v0 + 64) == 1)
  {
    OUTLINED_FUNCTION_108_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA48, &qword_1BFAB2A70);
    OUTLINED_FUNCTION_93_1();
    sub_1BFAAFA58();
  }

  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA95FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BFA95FF0, 0, 0);
}

uint64_t sub_1BFA95FF0()
{
  OUTLINED_FUNCTION_43();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50_5(v2);
  v4[2] = v3;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 56) = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_88_3(v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_104_1();

  return MEMORY[0x1EEE6DDE0](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BFA960D4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t sub_1BFA961D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA961F8, 0, 0);
}

uint64_t sub_1BFA961F8()
{
  OUTLINED_FUNCTION_43();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = *(MEMORY[0x1E69E88D0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  type metadata accessor for SiriSuggestions.SuggestionList();
  *v6 = v0;
  v6[1] = sub_1BFA962F4;
  v7 = *(v0 + 16);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_104_1();

  return MEMORY[0x1EEE6DDE0](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BFA962F4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v4 = *v0;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  OUTLINED_FUNCTION_85();

  return v6();
}

uint64_t sub_1BFA963F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v30 = a2;
  v7 = type metadata accessor for SiriSuggestions.SuggestionList();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC120, &qword_1BFAB75A8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB548, &qword_1BFAB08F0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = &v29 - v19;
  v21 = sub_1BFAAFA98();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
  (*(v11 + 16))(v15, a1, v10);
  sub_1BFAA196C(a3, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v23 = (v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v29 + 80) + v23 + 8) & ~*(v29 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  (*(v11 + 32))(v25 + v22, v15, v10);
  *(v25 + v23) = v30;
  sub_1BFAA1A2C(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v32;
  *v26 = v31;
  v26[1] = v27;

  sub_1BFA0C8A4();
}

uint64_t sub_1BFA9669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC178, &qword_1BFAB7620);
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v7[8] = *(v9 + 64);
  v7[9] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFC180, &qword_1BFAB7640);
  v7[10] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = sub_1BFAAE3F8();
  v7[12] = v12;
  v13 = *(v12 - 8);
  v7[13] = v13;
  v14 = *(v13 + 64) + 15;
  v7[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA9680C, 0, 0);
}

uint64_t sub_1BFA968CC()
{
  OUTLINED_FUNCTION_40();
  v0 = OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_114_1(v0, v1);

  v2 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}