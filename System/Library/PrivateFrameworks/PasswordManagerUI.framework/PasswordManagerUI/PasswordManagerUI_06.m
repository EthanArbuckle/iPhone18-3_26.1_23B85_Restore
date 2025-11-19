void sub_21C79C130()
{
  sub_21C6E7F8C(319, &unk_27CDEA9D0, &type metadata for PMOpenURLInSafariViewControllerAction, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMAccount(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C79C200()
{
  v1 = *(type metadata accessor for PMManagePasskeyOnWebsiteLink() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_21C799714();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21C79C324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C79C38C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C79C3F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C79C464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C79C4CC(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.MockData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C79C6D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);

  v5 = sub_21C7A230C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 48);
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C79C820(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C79C930(uint64_t result)
{
  if (*(v1 + 57) == (result & 1))
  {
    *(v1 + 57) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C79CA40(uint64_t result)
{
  if (*(v1 + 58) == (result & 1))
  {
    *(v1 + 58) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810C4();
  }

  return result;
}

void sub_21C79CB50(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) = a1 & 1;

    sub_21C71AB9C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810C4();
  }
}

uint64_t sub_21C79CC8C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__didShowAppOnboardingView) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__didShowAppOnboardingView) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C79CDA4()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C79CEAC, v2, v1);
}

uint64_t sub_21C79CEAC()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 184);
  if (v3 == *(v2 + 56))
  {

    *(v2 + 56) = v3;
  }

  else
  {
    v4 = *(v0 + 176);
    v5 = *(v0 + 144);
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v3;
    *(v0 + 80) = v5;
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810C4();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_21C79D004()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) == 1)
    {
      *(result + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__isShowingOnboardingSheet) = 1;
      sub_21C71AB9C();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
      sub_21CB810C4();
    }
  }

  return result;
}

void *sub_21C79D164()
{
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_21C79D20C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_21C79D23C(v2);
}

void sub_21C79D23C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  v5 = v4;
  v6 = sub_21CB85DD4();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t sub_21C79D3BC()
{
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_21C79D474@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_21C79D534(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
}

uint64_t sub_21C79D59C()
{
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  return *(v0 + 56);
}

uint64_t sub_21C79D664()
{
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  return *(v0 + 57);
}

uint64_t sub_21C79D72C()
{
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  return *(v0 + 58);
}

uint64_t sub_21C79D83C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC28, &qword_21CB9FF50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10[-v6];
  sub_21C6EDBAC(a1, &v10[-v6], &qword_27CDEAC28, &qword_21CB9FF50);
  v8 = *a2;
  swift_getKeyPath();
  v11 = v8;
  v12 = v7;
  v13 = v8;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810C4();

  return sub_21C6EA794(v7, &qword_27CDEAC28, &qword_21CB9FF50);
}

uint64_t sub_21C79D9BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_21C95C674();
  *a2 = result;
  return result;
}

uint64_t sub_21C79D9E8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 152);
  *(*a2 + 152) = *a1;
}

uint64_t sub_21C79DA7C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  return *(v2 + *a2);
}

id sub_21C79DB1C(void *a1)
{
  v2 = sub_21CB80BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = [a1 activityType];
  v11 = sub_21CB855C4();
  v13 = v12;

  v14 = *MEMORY[0x277CCA850];
  if (v11 == sub_21CB855C4() && v13 == v15)
  {
  }

  else
  {
    v17 = sub_21CB86344();

    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  result = [a1 webpageURL];
  if (result)
  {
    v19 = result;
    sub_21CB80B94();

    (*(v3 + 32))(v9, v7, v2);
    sub_21C79DCF4(v9);
    return (*(v3 + 8))(v9, v2);
  }

  return result;
}

uint64_t sub_21C79DCF4(uint64_t a1)
{
  v237 = type metadata accessor for PMInboundOTPAuthURLContext(0);
  v2 = *(*(v237 - 8) + 64);
  MEMORY[0x28223BE20](v237);
  v238 = &v217 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAppSourceListModel.Source(0);
  v246 = *(v4 - 8);
  v247 = v4;
  v5 = *(v246 + 64);
  MEMORY[0x28223BE20](v4);
  v228 = &v217 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v7 = *(*(v233 - 8) + 64);
  MEMORY[0x28223BE20](v233);
  v240 = &v217 - v8;
  v9 = sub_21CB80BE4();
  v243 = *(v9 - 8);
  v244 = v9;
  v10 = *(v243 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v232 = &v217 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v241 = &v217 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v231 = &v217 - v16;
  v17 = sub_21CB85C44();
  v235 = *(v17 - 8);
  v236 = v17;
  v18 = *(v235 + 64);
  MEMORY[0x28223BE20](v17);
  v234 = &v217 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v217 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v221 = &v217 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v217 = &v217 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v223 = &v217 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v220 = &v217 - v33;
  MEMORY[0x28223BE20](v32);
  v218 = &v217 - v34;
  v227 = type metadata accessor for PMAccount(0);
  v226 = *(v227 - 8);
  v35 = *(v226 + 64);
  v36 = MEMORY[0x28223BE20](v227);
  v222 = &v217 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v219 = &v217 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC88, &qword_21CBB6E70);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v43 = &v217 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v217 - v44;
  v230 = sub_21CB85CA4();
  v229 = *(v230 - 8);
  v46 = *(v229 + 64);
  v47 = MEMORY[0x28223BE20](v230);
  v224 = &v217 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v225 = &v217 - v49;
  v50 = sub_21CB85614();
  v239 = *(v50 - 8);
  v51 = *(v239 + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v217 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC28, &qword_21CB9FF50);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v242 = &v217 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v61 = &v217 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v59);
  v64 = &v217 - v63;
  v65 = MEMORY[0x28223BE20](v62);
  v67 = &v217 - v66;
  MEMORY[0x28223BE20](v65);
  v245 = &v217 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC90, &qword_21CBA0160);
  v70 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69 - 8);
  v72 = (&v217 - v71);
  sub_21C9F5568(a1, (&v217 - v71));
  v73 = type metadata accessor for PMOpenURLHandler.Action();
  result = (*(*(v73 - 8) + 48))(v72, 1, v73);
  if (result != 1)
  {
    result = swift_getEnumCaseMultiPayload();
    switch(result)
    {
      case 1:
        v108 = *v72;
        v109 = v72[1];
        v110 = v247;
        v111 = v248;
        v112 = *(v248 + 16);
        v113 = *(v112 + 64);
        v114 = v245;
        swift_storeEnumTagMultiPayload();
        (*(v246 + 56))(v114, 0, 1, v110);

        sub_21C742C88(v114);

        if (v109)
        {
          sub_21CB85604();
          v115 = sub_21CB855D4();
          v117 = v116;

          result = (*(v239 + 8))(v53, v50);
          if (v117 >> 60 != 15)
          {
            sub_21CB85C74();
            v167 = v229;
            v168 = v230;
            (*(v229 + 56))(v45, 0, 1, v230);
            v169 = v225;
            (*(v167 + 32))(v225, v45, v168);
            v170 = *(v111 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
            v171 = qword_27CDEA4C0;

            if (v171 != -1)
            {
              swift_once();
            }

            sub_21CB86544();
            sub_21C7072A8(v170, v250);

            swift_getKeyPath();
            swift_getKeyPath();
            sub_21CB81DB4();

            v173 = v250;
            MEMORY[0x28223BE20](v172);
            *(&v217 - 2) = v169;
            v174 = v218;
            sub_21C968D04(sub_21C7A36B4, v173, v218);

            v175 = v226;
            v176 = v227;
            v177 = (*(v226 + 48))(v174, 1, v227);
            v178 = v220;
            if (v177 == 1)
            {
              sub_21C6EA794(v174, &unk_27CDEBE60, &unk_21CB9FF40);
              v179 = v229;
              v180 = v242;
              v181 = v169;
              v182 = v230;
              (*(v229 + 16))(v242, v181, v230);
              v183 = type metadata accessor for PMAppRootModel.StagedAccount(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v183 - 8) + 56))(v180, 0, 1, v183);
              KeyPath = swift_getKeyPath();
              v247 = &v217;
              MEMORY[0x28223BE20](KeyPath);
              *(&v217 - 2) = v111;
              *(&v217 - 1) = v180;
              v250 = v111;
              sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
              sub_21CB810C4();
              sub_21C7902FC(v115, v117);

              v185 = v225;
              sub_21C6EA794(v180, &qword_27CDEAC28, &qword_21CB9FF50);
            }

            else
            {
              v207 = v174;
              v208 = v219;
              sub_21C7A3234(v207, v219, type metadata accessor for PMAccount);
              sub_21C7A316C(v208, v178, type metadata accessor for PMAccount);
              (*(v175 + 56))(v178, 0, 1, v176);
              v209 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
              swift_beginAccess();
              v210 = v223;
              sub_21C6EDBAC(v112 + v209, v223, &unk_27CDEBE60, &unk_21CB9FF40);
              LOBYTE(v209) = sub_21C7A2AE4(v210, v178);
              sub_21C6EA794(v210, &unk_27CDEBE60, &unk_21CB9FF40);
              if (v209)
              {
                v211 = swift_getKeyPath();
                MEMORY[0x28223BE20](v211);
                *(&v217 - 2) = v112;
                *(&v217 - 1) = v178;
                v249 = v112;
                sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
                sub_21CB810C4();

                v179 = v229;
                v182 = v230;
              }

              else
              {
                sub_21C6EDBAC(v178, v210, &unk_27CDEBE60, &unk_21CB9FF40);
                sub_21C8CA328(v210);
                v182 = v230;
                v179 = v229;
              }

              sub_21C6EA794(v178, &unk_27CDEBE60, &unk_21CB9FF40);
              v215 = v219;
              sub_21C8C7090(v219);
              sub_21C7902FC(v115, v117);
              sub_21C7A31D4(v215, type metadata accessor for PMAccount);
              v185 = v225;
            }

            return (*(v179 + 8))(v185, v182);
          }
        }

        return result;
      case 2:
        v118 = *v72;
        v119 = v72[1];
        v120 = v72[2];
        v121 = v72[3];
        sub_21C7A35D0(v120, v121);
        sub_21C7A35D0(v118, v119);
        v122 = sub_21CB80C64();
        v123 = sub_21CB80C64();
        v124 = [objc_opt_self() sharablePasswordFromEncryptedData:v122 encryptionKeyReference:v123];

        sub_21C7A34C0(v118, v119);
        sub_21C7A34C0(v120, v121);
        if (v124)
        {
          v125 = v124;
          sub_21C79D23C(v124);
        }

        sub_21C7A34C0(v120, v121);
        return sub_21C7A34C0(v118, v119);
      case 3:
        v93 = v234;
        v92 = v235;
        v94 = v236;
        (*(v235 + 32))(v234, v72, v236);
        v95 = v231;
        (*(v92 + 16))(v231, v93, v94);
        (*(v92 + 56))(v95, 0, 1, v94);
        v96 = v248;
        sub_21C7A05C0(v95);
        v97 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore;
        v98 = *(v96 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore);
        v99 = qword_27CDEA4C0;

        if (v99 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        sub_21C7073E8(v98, v250);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        sub_21C71B898(v250, 1);

        v100 = *(v96 + v97);

        sub_21CB86544();
        sub_21C7073E8(v100, v250);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        sub_21C71B898(v250, 0);

        v101 = *(v96 + v97);

        sub_21CB86544();
        sub_21C7073E8(v101, v250);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        sub_21C7A07BC(v250);
        return (*(v92 + 8))(v93, v94);
      case 4:
        (*(v243 + 32))(v241, v72, v244);
        v242 = *(v248 + 16);
        v131 = *(v242 + 8);
        swift_getKeyPath();
        v250 = v131;
        sub_21C71ACE4(&qword_27CDED320, type metadata accessor for PMAppSourceListModel);

        sub_21CB810D4();

        v132 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
        swift_beginAccess();
        sub_21C6EDBAC(v131 + v132, v67, &qword_27CDEAC20, &qword_21CBAD710);

        v133 = v247;
        swift_storeEnumTagMultiPayload();
        v134 = v246;
        v239 = *(v246 + 56);
        (v239)(v64, 0, 1, v133);
        v135 = *(v233 + 48);
        v136 = v240;
        sub_21C6EDBAC(v67, v240, &qword_27CDEAC20, &qword_21CBAD710);
        sub_21C6EDBAC(v64, v136 + v135, &qword_27CDEAC20, &qword_21CBAD710);
        v137 = *(v134 + 48);
        if (v137(v136, 1, v133) == 1)
        {
          sub_21C6EA794(v64, &qword_27CDEAC20, &qword_21CBAD710);
          v138 = v240;
          sub_21C6EA794(v67, &qword_27CDEAC20, &qword_21CBAD710);
          v139 = v137(v138 + v135, 1, v133);
          v140 = v248;
          if (v139 == 1)
          {
            sub_21C6EA794(v138, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_35:
            v157 = *(v140 + 24);
            v159 = v243;
            v158 = v244;
            v160 = v238;
            v161 = v241;
            (*(v243 + 16))(v238, v241, v244);
            (*(v159 + 56))(&v160[*(v237 + 20)], 1, 1, v158);
            v162 = swift_allocObject();
            swift_weakInit();

            sub_21CA1F7B4(v160, sub_21C7A3514, v162);

            sub_21C7A31D4(v160, type metadata accessor for PMInboundOTPAuthURLContext);
            (*(v159 + 8))(v161, v158);
          }
        }

        else
        {
          sub_21C6EDBAC(v136, v61, &qword_27CDEAC20, &qword_21CBAD710);
          if (v137(v136 + v135, 1, v133) != 1)
          {
            v164 = v228;
            sub_21C7A3234(v136 + v135, v228, type metadata accessor for PMAppSourceListModel.Source);
            v165 = v136;
            v166 = sub_21C918FE4(v61, v164);
            sub_21C7A31D4(v164, type metadata accessor for PMAppSourceListModel.Source);
            sub_21C6EA794(v64, &qword_27CDEAC20, &qword_21CBAD710);
            sub_21C6EA794(v67, &qword_27CDEAC20, &qword_21CBAD710);
            sub_21C7A31D4(v61, type metadata accessor for PMAppSourceListModel.Source);
            sub_21C6EA794(v165, &qword_27CDEAC20, &qword_21CBAD710);
            v140 = v248;
            if (v166)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }

          sub_21C6EA794(v64, &qword_27CDEAC20, &qword_21CBAD710);
          v138 = v240;
          sub_21C6EA794(v67, &qword_27CDEAC20, &qword_21CBAD710);
          sub_21C7A31D4(v61, type metadata accessor for PMAppSourceListModel.Source);
        }

        sub_21C6EA794(v138, &unk_27CDED310, &unk_21CBA0150);
LABEL_34:
        v154 = *(v242 + 8);
        v155 = v245;
        v156 = v247;
        swift_storeEnumTagMultiPayload();
        (v239)(v155, 0, 1, v156);

        sub_21C742C88(v155);
        v140 = v248;

        goto LABEL_35;
      case 5:
        v143 = v243;
        v142 = v244;
        v144 = v232;
        (*(v243 + 32))(v232, v72, v244);
        v145 = *(v248 + 32);
        sub_21C9F8EDC();
        return (*(v143 + 8))(v144, v142);
      case 6:
        v126 = v248;
        if (v72[1])
        {
          v127 = *v72;
          sub_21CB85604();
          v128 = sub_21CB855D4();
          v130 = v129;

          (*(v239 + 8))(v53, v50);
          if (v130 >> 60 != 15)
          {
            sub_21CB85C74();
            v186 = v229;
            v187 = v230;
            (*(v229 + 56))(v43, 0, 1, v230);
            v188 = v224;
            (*(v186 + 32))(v224, v43, v187);
            v189 = *(v126 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
            v190 = qword_27CDEA4C0;

            if (v190 != -1)
            {
              swift_once();
            }

            sub_21CB86544();
            sub_21C7072A8(v189, v250);

            swift_getKeyPath();
            swift_getKeyPath();
            sub_21CB81DB4();

            v192 = v250;
            MEMORY[0x28223BE20](v191);
            *(&v217 - 2) = v188;
            v193 = v217;
            sub_21C968D04(sub_21C7A36B4, v192, v217);
            v194 = v193;

            v195 = v226;
            v196 = v227;
            v197 = (*(v226 + 48))(v194, 1, v227);
            v198 = v223;
            v199 = v221;
            v200 = v222;
            if (v197 == 1)
            {
              sub_21C6EA794(v194, &unk_27CDEBE60, &unk_21CB9FF40);
              v201 = v229;
              v202 = v242;
              v203 = v230;
              (*(v229 + 16))(v242, v188, v230);
              v204 = type metadata accessor for PMAppRootModel.StagedAccount(0);
              swift_storeEnumTagMultiPayload();
              (*(*(v204 - 8) + 56))(v202, 0, 1, v204);
              v205 = swift_getKeyPath();
              v244 = &v217;
              MEMORY[0x28223BE20](v205);
              v206 = v248;
              *(&v217 - 2) = v248;
              *(&v217 - 1) = v202;
              v250 = v206;
              sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
              v188 = v224;
              sub_21CB810C4();
              sub_21C7902FC(v128, v130);

              sub_21C6EA794(v202, &qword_27CDEAC28, &qword_21CB9FF50);
            }

            else
            {
              sub_21C7A3234(v194, v222, type metadata accessor for PMAccount);
              v212 = *(v248 + 16);
              sub_21C7A316C(v200, v199, type metadata accessor for PMAccount);
              (*(v195 + 56))(v199, 0, 1, v196);
              v213 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
              swift_beginAccess();
              sub_21C6EDBAC(v212 + v213, v198, &unk_27CDEBE60, &unk_21CB9FF40);
              LOBYTE(v213) = sub_21C7A2AE4(v198, v199);
              sub_21C6EA794(v198, &unk_27CDEBE60, &unk_21CB9FF40);
              if (v213)
              {
                v214 = swift_getKeyPath();
                MEMORY[0x28223BE20](v214);
                *(&v217 - 2) = v212;
                *(&v217 - 1) = v199;
                v249 = v212;
                sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
                v188 = v224;
                sub_21CB810C4();
                sub_21C7902FC(v128, v130);
              }

              else
              {
                sub_21C6EDBAC(v199, v198, &unk_27CDEBE60, &unk_21CB9FF40);
                sub_21C8CA328(v198);
                sub_21C7902FC(v128, v130);
              }

              sub_21C7A31D4(v222, type metadata accessor for PMAccount);
              sub_21C6EA794(v199, &unk_27CDEBE60, &unk_21CB9FF40);
              v201 = v229;
              v203 = v230;
            }

            (*(v201 + 8))(v188, v203);
            v126 = v248;
          }
        }

        v216 = *(*(v126 + 16) + 64);
        v91 = v245;
        v89 = v247;
        goto LABEL_58;
      case 7:
        v147 = v72[2];
        v148 = v72[3];
        v149 = v242;
        *v242 = *v72;
        *(v149 + 16) = v147;
        *(v149 + 24) = v148;
        v150 = type metadata accessor for PMAppRootModel.StagedAccount(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v150 - 8) + 56))(v149, 0, 1, v150);
        v151 = swift_getKeyPath();
        MEMORY[0x28223BE20](v151);
        v152 = v248;
        *(&v217 - 2) = v248;
        *(&v217 - 1) = v149;
        v250 = v152;
        sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
        sub_21CB810C4();

        sub_21C6EA794(v149, &qword_27CDEAC28, &qword_21CB9FF50);
        v85 = *(v152 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
        goto LABEL_28;
      case 8:
        return result;
      case 9:
        v103 = sub_21CB858E4();
        (*(*(v103 - 8) + 56))(v23, 1, 1, v103);
        sub_21CB858B4();

        v105 = sub_21CB858A4();
        v106 = swift_allocObject();
        v107 = MEMORY[0x277D85700];
        v106[2] = v105;
        v106[3] = v107;
        v106[4] = v104;
        sub_21C98B308(0, 0, v23, &unk_21CBA0298, v106);

      case 10:
        v89 = v247;
        v146 = *(*(v248 + 16) + 64);
        v91 = v245;
        goto LABEL_58;
      case 11:
        v89 = v247;
        v90 = *(*(v248 + 16) + 64);
        v91 = v245;
        goto LABEL_58;
      case 12:
        v89 = v247;
        v102 = *(*(v248 + 16) + 64);
        v91 = v245;
LABEL_58:
        swift_storeEnumTagMultiPayload();
        (*(v246 + 56))(v91, 0, 1, v89);

        sub_21C742C88(v91);

      case 13:
        v141 = *(v248 + 16);
        if (*(v141 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet) == 1)
        {
          *(v141 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__showGeneratedPasswordsSheet) = 1;
        }

        else
        {
          v163 = swift_getKeyPath();
          MEMORY[0x28223BE20](v163);
          *(&v217 - 2) = v141;
          *(&v217 - 8) = 1;
          v250 = v141;
          sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
          sub_21CB810C4();
        }

        return result;
      case 14:
        v86 = v247;
        v87 = *(*(v248 + 16) + 64);
        v88 = v245;
        swift_storeEnumTagMultiPayload();
        (*(v246 + 56))(v88, 0, 1, v86);

        sub_21C742C88(v88);

        return sub_21C8C77C0();
      default:
        v75 = *v72;
        v76 = v72[1];
        v77 = v247;
        v78 = v248;
        v79 = *(*(v248 + 16) + 64);
        v80 = v245;
        swift_storeEnumTagMultiPayload();
        (*(v246 + 56))(v80, 0, 1, v77);

        v81 = v78;
        sub_21C742C88(v80);

        v82 = v242;
        *v242 = v75;
        *(v82 + 8) = v76;
        v83 = type metadata accessor for PMAppRootModel.StagedAccount(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v83 - 8) + 56))(v82, 0, 1, v83);
        v84 = swift_getKeyPath();
        MEMORY[0x28223BE20](v84);
        *(&v217 - 2) = v81;
        *(&v217 - 1) = v82;
        v250 = v81;
        sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
        sub_21CB810C4();

        sub_21C6EA794(v82, &qword_27CDEAC28, &qword_21CB9FF50);
        v85 = *(v81 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);
LABEL_28:
        v153 = qword_27CDEA4C0;

        if (v153 != -1)
        {
          swift_once();
        }

        sub_21CB86544();
        sub_21C7072A8(v85, v250);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_21CB81DB4();

        sub_21C71C010();
    }
  }

  return result;
}

uint64_t sub_21C7A01AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_21CB858B4();
  v4[4] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21C7A0244, v6, v5);
}

uint64_t sub_21C7A0244()
{
  if ([objc_opt_self() isOngoingCredentialSharingEnabled])
  {
    v0[7] = *(v0[3] + 16);
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_21C7A0428;

    return sub_21CA857C4();
  }

  else
  {
    v4 = v0[3];
    v3 = v0[4];

    if (*(v4 + 57) == 1)
    {
      *(v4 + 57) = 1;
    }

    else
    {
      v5 = v0[3];
      swift_getKeyPath();
      v6 = swift_task_alloc();
      *(v6 + 16) = v5;
      *(v6 + 24) = 1;
      v0[2] = v5;
      sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
      sub_21CB810C4();
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_21C7A0428(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = a1;

  v4 = *(v2 + 48);
  v5 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_21C7A0550, v5, v4);
}

uint64_t sub_21C7A0550()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[4];

  sub_21C8C7608(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_21C7A05C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent;
  swift_beginAccess();
  sub_21C6EDBAC(v1 + v7, v6, &unk_27CDF20B0, &unk_21CBA0090);
  v8 = sub_21C7A2DC8(v6, a1);
  sub_21C6EA794(v6, &unk_27CDF20B0, &unk_21CBA0090);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810C4();
  }

  else
  {
    swift_beginAccess();
    sub_21C7A32E8(a1, v1 + v7, &unk_27CDF20B0, &unk_21CBA0090);
    swift_endAccess();
  }

  return sub_21C6EA794(a1, &unk_27CDF20B0, &unk_21CBA0090);
}

uint64_t sub_21C7A07BC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v8 = v12 - v7;
  if (a1)
  {
    swift_getKeyPath();
    v12[3] = v2;
    sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
    sub_21CB810D4();

    v9 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent;
    swift_beginAccess();
    sub_21C6EDBAC(v2 + v9, v8, &unk_27CDF20B0, &unk_21CBA0090);
    v10 = sub_21CB85C44();
    LODWORD(v9) = (*(*(v10 - 8) + 48))(v8, 1, v10);
    result = sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
    if (v9 != 1)
    {
      if (*(v2 + 58) == 1)
      {
        *(v2 + 58) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v12[-2] = v2;
        LOBYTE(v12[-1]) = 1;
        v12[2] = v2;
        sub_21CB810C4();
      }
    }
  }

  return result;
}

uint64_t sub_21C7A09F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    sub_21C6EDBAC(a1, v5, &unk_27CDEBE60, &unk_21CB9FF40);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
    }

    else
    {
      sub_21C7A3234(v5, v10, type metadata accessor for PMAccount);
      v13 = *(v12 + 16);
      sub_21C8C7090(v10);
      sub_21C7A31D4(v10, type metadata accessor for PMAccount);
    }
  }

  return result;
}

uint64_t sub_21C7A0BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for PMAccount.Storage(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for PMAccount(0);
  sub_21C7A316C(a1 + *(v15 + 24), v14, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7A31D4(v14, type metadata accessor for PMAccount.Storage);
    v16 = 0;
  }

  else
  {
    v17 = *v14;
    v18 = [v17 protectionSpaces];

    sub_21C6E8F4C(0, &qword_27CDEAC38, 0x277CCAD08);
    v19 = sub_21CB85824();

    v34 = a5;
    v35 = v5;
    v32[1] = a1;
    v33 = a4;
    if (v19 >> 62)
    {
LABEL_29:
      v36 = v19 & 0xFFFFFFFFFFFFFF8;
      v37 = sub_21CB85FA4();
    }

    else
    {
      v36 = v19 & 0xFFFFFFFFFFFFFF8;
      v37 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = 0;
    while (1)
    {
      if (v37 == v20)
      {
        goto LABEL_19;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x21CF15BD0](v20, v19);
        if (__OFADD__(v20, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:

          v16 = 0;
          return v16 & 1;
        }
      }

      else
      {
        if (v20 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        v21 = *(v19 + 8 * v20 + 32);
        if (__OFADD__(v20, 1))
        {
          goto LABEL_18;
        }
      }

      v22 = v21;
      v23 = [v22 host];
      v24 = sub_21CB855C4();
      v26 = v25;

      if (v24 == a2 && v26 == a3)
      {
        break;
      }

      v28 = sub_21CB86344();

      ++v20;
      if (v28)
      {
        goto LABEL_21;
      }
    }

LABEL_21:

    v29 = PMAccount.userName.getter();
    if (v30)
    {
      if (v29 == v33 && v30 == v34)
      {

        v16 = 1;
      }

      else
      {
        v16 = sub_21CB86344();
      }
    }

    else
    {
      v16 = 0;
    }
  }

  return v16 & 1;
}

uint64_t sub_21C7A0EB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CB85CA4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C7C61D0(v7);
  v8 = MEMORY[0x21CF15760](v7, a2);
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t sub_21C7A0FC8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  v9 = *a1;
  swift_beginAccess();
  return sub_21C6EDBAC(v11 + v9, a4, a2, a3);
}

uint64_t sub_21C7A10A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t *a4@<X6>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  v10 = *a2;
  swift_beginAccess();
  return sub_21C6EDBAC(v9 + v10, a5, a3, a4);
}

uint64_t sub_21C7A118C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_21C7A32E8(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

BOOL sub_21C7A120C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PMSharingGroup();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    sub_21C7A316C(a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8++, v7, type metadata accessor for PMSharingGroup);
    sub_21CB85C44();
    sub_21C71ACE4(&qword_27CDEAC48, MEMORY[0x277D49978]);
    v11 = sub_21CB85574();
    sub_21C7A31D4(v7, type metadata accessor for PMSharingGroup);
  }

  while ((v11 & 1) == 0);
  return v9 != v10;
}

BOOL sub_21C7A1394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = 0;
  v12 = *(a3 + 16);
  do
  {
    v13 = v11;
    if (v12 == v11)
    {
      break;
    }

    sub_21C7A316C(a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v10, type metadata accessor for PMAccount);
    if (*v10 == a1 && v10[1] == a2)
    {
      sub_21C7A31D4(v10, type metadata accessor for PMAccount);
      return v12 != v13;
    }

    ++v11;
    v15 = sub_21CB86344();
    sub_21C7A31D4(v10, type metadata accessor for PMAccount);
  }

  while ((v15 & 1) == 0);
  return v12 != v13;
}

uint64_t sub_21C7A1508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMWiFiNetwork();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a3 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13 = *(v8 + 72);
  while (1)
  {
    sub_21C7A316C(v12, v10, type metadata accessor for PMWiFiNetwork);
    v14 = *v10 == a1 && v10[1] == a2;
    if (v14 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    sub_21C7A31D4(v10, type metadata accessor for PMWiFiNetwork);
    v12 += v13;
    if (!--v11)
    {
      return 0;
    }
  }

  sub_21C7A31D4(v10, type metadata accessor for PMWiFiNetwork);
  return 1;
}

id sub_21C7A1664(_BYTE *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  if (*a1)
  {
    v7 = *(*(v1 + 16) + 64);
    if (*a1 == 1)
    {
      v8 = type metadata accessor for PMAppSourceListModel.Source(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v8 - 8) + 56))(v6, 0, 1, v8);

      sub_21C742C88(v6);

      return sub_21C8C7D9C();
    }

    else
    {
      v11 = type metadata accessor for PMAppSourceListModel.Source(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);

      sub_21C742C88(v6);
    }
  }

  else
  {
    result = [objc_opt_self() shouldAllowAddingNewPasswords];
    if (result)
    {
      v10 = *(v1 + 16);
      return sub_21C8C77C0();
    }
  }

  return result;
}

uint64_t sub_21C7A1808(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_21C7A1864()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__stagedAccount, &qword_27CDEAC28, &qword_21CB9FF50);
  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__accountsState);

  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__groupsStore);

  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__appDefaults);

  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__globalSearchModel);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__sharingGroupIDToPresent, &unk_27CDF20B0, &unk_21CBA0090);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel___observationRegistrar;
  v10 = sub_21CB81114();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_21C7A196C()
{
  sub_21C7A1864();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C7A1A58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C880484(v4);
}

uint64_t sub_21C7A1A98@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel);
  sub_21CB810D4();

  *a3 = *(v5 + *a2);
}

uint64_t sub_21C7A1B50@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21C7A212C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21C71DD5C(v4);
}

uint64_t sub_21C7A1C3C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21C7A2124;
  }

  else
  {
    v6 = 0;
  }

  v7 = *a2;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_21C71DD5C(v3);
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810C4();
  sub_21C71B710(v6);
}

uint64_t sub_21C7A1D98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__contentState);
}

uint64_t sub_21C7A1E50(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C718AB8(v2);
}

uint64_t sub_21C7A1E84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__detailState);
}

uint64_t sub_21C7A1F3C(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21C8C7C18(v2);
}

uint64_t sub_21C7A1F70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C71ACE4(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppRootNavigationModel__accountToShowAfterSelectingSource;
  swift_beginAccess();
  return sub_21C6EDBAC(v3 + v4, a2, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C7A2070(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v18 - v14;
  sub_21C6EDBAC(a1, &v18 - v14, a5, a6);
  v16 = *a2;
  return a7(v15);
}

uint64_t sub_21C7A212C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21C7A2154(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_21CB86484();

    sub_21CB854C4();
    v17 = sub_21CB864D4();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_21CB86344() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C7A230C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_21CB81CC4();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_27CDEAC10;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          sub_21C71ACE4(&qword_27CDEAC10, MEMORY[0x277CBCDA8]);

          v22 = sub_21CB85484();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          sub_21C71ACE4(&qword_27CDEAC18, MEMORY[0x277CBCDA8]);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (sub_21CB85574())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = &qword_27CDEAC10;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_21C7A29DC(v8, v7);
}

uint64_t sub_21C7A261C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v37 = result;
    v13 = (*(result + 48) + 112 * (v10 | (v3 << 6)));
    v15 = v13[1];
    v14 = v13[2];
    v45 = *v13;
    v46 = v15;
    v47 = v14;
    v16 = v13[6];
    v18 = v13[3];
    v17 = v13[4];
    *v50 = v13[5];
    *&v50[16] = v16;
    v48 = v18;
    v49 = v17;
    v19 = *(a2 + 40);
    sub_21CB86484();
    sub_21C7A33F0(&v45, &v39);
    sub_21C9DC744();
    v20 = sub_21CB864D4();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
LABEL_50:
      sub_21C7A344C(&v45);
      return 0;
    }

    v36 = v8;
    v23 = ~v21;
    v24 = v45;
    while (1)
    {
      v25 = (*(a2 + 48) + 112 * v22);
      v27 = v25[1];
      v26 = v25[2];
      v39 = *v25;
      v40 = v27;
      v41 = v26;
      v28 = v25[6];
      v30 = v25[3];
      v29 = v25[4];
      *v44 = v25[5];
      *&v44[16] = v28;
      v42 = v30;
      v43 = v29;
      if (*(&v39 + 1))
      {
        if (!*(&v24 + 1) || v39 != v24 && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(&v24 + 1))
      {
        goto LABEL_16;
      }

      if (*(&v40 + 1))
      {
        if (!*(&v46 + 1) || v40 != v46 && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(&v46 + 1))
      {
        goto LABEL_16;
      }

      if (v41 != v47 && (sub_21CB86344() & 1) == 0 || v42 != v48 && (sub_21CB86344() & 1) == 0 || v43 != v49 && (sub_21CB86344() & 1) == 0 || v44[0] != (v50[0] & 1) || v44[1] != v50[1] || v44[2] != v50[2])
      {
        goto LABEL_16;
      }

      if (*&v44[16])
      {
        if (!*&v50[16] || *&v44[8] != *&v50[8] && (sub_21CB86344() & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*&v50[16])
      {
        goto LABEL_16;
      }

      v31 = *&v50[24];
      if (*&v44[24])
      {
        break;
      }

      if (!*&v50[24])
      {
        goto LABEL_47;
      }

LABEL_16:
      v22 = (v22 + 1) & v23;
      if (((*(v9 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    if (!*&v50[24])
    {
      goto LABEL_16;
    }

    v34 = *&v44[24];
    sub_21C6E8F4C(0, &qword_27CDF8A90, 0x277CBDA58);
    sub_21C7A33F0(&v39, v38);
    v33 = v31;
    v35 = v34;
    v32 = sub_21CB85DD4();
    sub_21C7A344C(&v39);

    if ((v32 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_47:
    sub_21C7A344C(&v45);
    v8 = v36;
    result = v37;
  }

  while (v7);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C7A29DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_21CB85FA4();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_21CB85FF4();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C7A2AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v23 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_21C6EDBAC(a1, &v23 - v16, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C6EDBAC(a2, &v17[v18], &unk_27CDEBE60, &unk_21CB9FF40);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_21C6EDBAC(v17, v12, &unk_27CDEBE60, &unk_21CB9FF40);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      sub_21C7A3234(&v17[v18], v8, type metadata accessor for PMAccount);
      v21 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_21C7A31D4(v8, type metadata accessor for PMAccount);
      sub_21C7A31D4(v12, type metadata accessor for PMAccount);
      sub_21C6EA794(v17, &unk_27CDEBE60, &unk_21CB9FF40);
      v20 = !v21;
      return v20 & 1;
    }

    sub_21C7A31D4(v12, type metadata accessor for PMAccount);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v17, &qword_27CDEAC50, &unk_21CBA00A0);
    v20 = 1;
    return v20 & 1;
  }

  sub_21C6EA794(v17, &unk_27CDEBE60, &unk_21CB9FF40);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21C7A2DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_21C6EDBAC(a1, &v24 - v16, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(a2, &v17[v18], &unk_27CDF20B0, &unk_21CBA0090);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_21C6EDBAC(v17, v12, &unk_27CDF20B0, &unk_21CBA0090);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_21C71ACE4(&qword_27CDEAC48, MEMORY[0x277D49978]);
      v21 = sub_21CB85574();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_21C6EA794(v17, &unk_27CDF20B0, &unk_21CBA0090);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v17, &qword_27CDEAC40, &qword_21CBA1A40);
    v20 = 1;
    return v20 & 1;
  }

  sub_21C6EA794(v17, &unk_27CDF20B0, &unk_21CBA0090);
  v20 = 0;
  return v20 & 1;
}

uint64_t keypath_set_34Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_21C7A316C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7A31D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C7A3234(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7A32E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_21C7A3394(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21C7A34C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21C7A351C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C7A01AC(a1, v4, v5, v6);
}

uint64_t sub_21C7A35D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_21C7A3624()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_21C7A3748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21C7A37E0, v6, v5);
}

uint64_t sub_21C7A37E0()
{
  v1 = type metadata accessor for PMOTPAuthHandlerManager();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 48) = sub_21CA92720();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_21C7A3890;

  return sub_21CA90F70();
}

uint64_t sub_21C7A3890()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21C7A39B0, v4, v3);
}

id sub_21C7A39B0()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v3 = v0[6];
    v5 = v0[2];
    v4 = v0[3];

    v6 = sub_21CB80B74();
    sub_21C73181C(MEMORY[0x277D84F90]);
    v7 = sub_21CB85464();

    [v2 openURL:v6 withOptions:v7];

    v8 = v0[1];

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

PMOTPAuthHandlerMigration __swiftcall PMOTPAuthHandlerMigration.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for PMOTPAuthHandlerMigration()
{
  result = qword_27CDEAC98;
  if (!qword_27CDEAC98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEAC98);
  }

  return result;
}

id sub_21C7A3C8C(uint64_t a1)
{
  v2 = sub_21CB80BE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  result = [objc_opt_self() isPasswordsAppInstalled];
  if (result)
  {
    v11 = result;
    v12 = sub_21CB858E4();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    (*(v3 + 16))(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    sub_21CB858B4();
    v13 = sub_21CB858A4();
    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v15 = swift_allocObject();
    v16 = MEMORY[0x277D85700];
    *(v15 + 16) = v13;
    *(v15 + 24) = v16;
    (*(v3 + 32))(v15 + v14, v5, v2);
    sub_21C98B308(0, 0, v9, &unk_21CBA0320, v15);

    return v11;
  }

  return result;
}

uint64_t sub_21C7A3E9C(uint64_t a1)
{
  v4 = *(sub_21CB80BE4() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C7A3748(a1, v6, v7, v1 + v5);
}

uint64_t sub_21C7A3F8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C705CB4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);
  sub_21CB810D4();

  *a2 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI14PMAppRootModel__didShowAppOnboardingView);
  return result;
}

uint64_t (*sub_21C7A4068())()
{
  sub_21C726188();
  sub_21CB82F94();
  *(swift_allocObject() + 16) = v1;
  return sub_21C7A40D4;
}

uint64_t sub_21C7A40D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21C7A4134(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for PMAccount(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C725C54(a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_21C6EA794(v6, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  sub_21C725254(v6, v11, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  sub_21CB85084();
  v13 = *(v14[1] + 16);

  sub_21C8C7090(v11);

  return sub_21C719000(v11, type metadata accessor for PMAccount);
}

uint64_t sub_21C7A4304(char *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  sub_21CB85084();
  v3 = v1;
  sub_21C7A1664(&v3);
}

double sub_21C7A4364@<D0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v8 - v5;
  sub_21CB85094();
  swift_getKeyPath();
  sub_21CB850B4();

  (*(v3 + 8))(v6, v2);
  return sub_21C858AC0(v8[1], v8[2], v9, a1);
}

uint64_t sub_21C7A4478(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC28, &qword_21CB9FF50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10[-v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  sub_21CB85084();
  v6 = v13;
  v7 = a1[1];
  *v5 = *a1;
  v5[1] = v7;
  v8 = type metadata accessor for PMAppRootModel.StagedAccount(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  swift_getKeyPath();
  v11 = v6;
  v12 = v5;
  v13 = v6;
  sub_21C705CB4(&qword_27CDEABE8, type metadata accessor for PMAppRootModel);

  sub_21CB810C4();

  return sub_21C6EA794(v5, &qword_27CDEAC28, &qword_21CB9FF50);
}

unint64_t sub_21C7A4648()
{
  result = qword_27CDEAD38;
  if (!qword_27CDEAD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD08, &qword_21CBA0410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD40, &qword_21CBA0440);
    type metadata accessor for PMGlobalAnimationNamespaceContainer();
    sub_21C7A4758();
    sub_21C705CB4(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD38);
  }

  return result;
}

unint64_t sub_21C7A4758()
{
  result = qword_27CDEAD48;
  if (!qword_27CDEAD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD40, &qword_21CBA0440);
    sub_21C725AC0();
    sub_21C725BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD48);
  }

  return result;
}

unint64_t sub_21C7A47E4()
{
  result = qword_27CDEAD80;
  if (!qword_27CDEAD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD78, &qword_21CBA0460);
    sub_21C7254B4();
    sub_21C725620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAD80);
  }

  return result;
}

uint64_t sub_21C7A4874(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for PMAppRootView() - 8) + 80);

  return sub_21C7A4134(a1, a2);
}

uint64_t sub_21C7A48F4(char *a1)
{
  v2 = *(*(type metadata accessor for PMAppRootView() - 8) + 80);

  return sub_21C7A4304(a1);
}

uint64_t sub_21C7A4968()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

double sub_21C7A4990@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(*(type metadata accessor for PMAppRootView() - 8) + 80);

  return sub_21C7A4364(a1);
}

uint64_t objectdestroy_8Tm()
{
  v1 = type metadata accessor for PMAppRootView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEACA8, &qword_21CBA0358);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5]);

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB81FE4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = *(v5 + v1[8]);

  v12 = *(v5 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21C7A4B98(void *a1)
{
  v2 = *(*(type metadata accessor for PMAppRootView() - 8) + 80);

  return sub_21C7A4478(a1);
}

unint64_t sub_21C7A4C24()
{
  result = qword_27CDEAE30;
  if (!qword_27CDEAE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEADF8, &qword_21CBA04C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAD28, &qword_21CBA0430);
    sub_21CB81FE4();
    sub_21C6EADEC(&qword_27CDEADE8, &qword_27CDEAD28, &qword_21CBA0430);
    sub_21C705CB4(&qword_27CDEADF0, MEMORY[0x277CDD6C8]);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEAE38, &qword_27CDEAE40, &unk_21CBA0680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAE30);
  }

  return result;
}

char *sub_21C7A4DA0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v133 = a8;
  v134 = a3;
  v141 = a7;
  v136 = a5;
  v137 = a6;
  v135 = a4;
  v138 = a2;
  v124 = a1;
  v140 = a9;
  v11 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v105 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for PMAccount.UniqueID(0);
  v17 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v110 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PMAccount.Storage(0);
  v19 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v111 = (&v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for PMAccount(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v139 = (&v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF40, &qword_21CBA07C0);
  v131 = *(v25 - 8);
  v132 = v25;
  v26 = *(v131 + 64);
  MEMORY[0x28223BE20](v25);
  v130 = &v105 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF38, &qword_21CBA1CA0);
  v128 = *(v28 - 8);
  v129 = v28;
  v29 = *(v128 + 64);
  MEMORY[0x28223BE20](v28);
  v127 = &v105 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF30, &unk_21CBA07B0);
  v125 = *(v31 - 8);
  v126 = v31;
  v32 = *(v125 + 64);
  MEMORY[0x28223BE20](v31);
  v123 = &v105 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF28, &qword_21CBA07A8);
  v121 = *(v34 - 8);
  v122 = v34;
  v35 = *(v121 + 64);
  MEMORY[0x28223BE20](v34);
  v120 = &v105 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v118 = *(v37 - 8);
  v119 = v37;
  v38 = *(v118 + 64);
  MEMORY[0x28223BE20](v37);
  v117 = &v105 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v115 = *(v40 - 8);
  v116 = v40;
  v41 = *(v115 + 64);
  MEMORY[0x28223BE20](v40);
  v43 = &v105 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v113 = *(v44 - 8);
  v114 = v44;
  v45 = *(v113 + 64);
  MEMORY[0x28223BE20](v44);
  v112 = &v105 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF18, &qword_21CBA0798);
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  MEMORY[0x28223BE20](v47);
  v51 = &v105 - v50;
  *(v9 + 2) = swift_getKeyPath();
  *(v9 + 3) = swift_getKeyPath();
  v52 = MEMORY[0x277D84FA0];
  *(v9 + 44) = 0;
  *(v9 + 49) = v52;
  v53 = *(v22 + 56);
  v53(&v9[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection], 1, 1, v21);
  v54 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__selectedItem;
  v142 = 0;
  v143 = 0;
  LOBYTE(v144) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC1C0, &qword_21CBA3D50);
  sub_21CB81D74();
  (*(v48 + 32))(&v10[v54], v51, v47);
  v108 = v21;
  v53(&v10[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount], 1, 1, v21);
  v55 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__searchText;
  v142 = 0;
  v143 = 0xE000000000000000;
  v56 = v112;
  sub_21CB81D74();
  (*(v113 + 32))(&v10[v55], v56, v114);
  v57 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__listedAccounts;
  v58 = MEMORY[0x277D84F90];
  v142 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB81D74();
  v59 = v116;
  v60 = *(v115 + 32);
  v60(&v10[v57], v43, v116);
  v61 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accountsForPasskeyAutoFill;
  v142 = v58;
  sub_21CB81D74();
  v60(&v10[v61], v43, v59);
  v62 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accountsWithPasswordsMatchingHintStrings;
  v142 = v58;
  sub_21CB81D74();
  v60(&v10[v62], v43, v59);
  v63 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accounts;
  v142 = v58;
  sub_21CB81D74();
  v60(&v10[v63], v43, v59);
  v64 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__expectingNewAccount;
  LOBYTE(v142) = 0;
  v65 = v117;
  sub_21CB81D74();
  v66 = v119;
  v67 = *(v118 + 32);
  v67(&v10[v64], v65, v119);
  v68 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__addAccountSheetModel;
  v142 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  v69 = v120;
  sub_21CB81D74();
  (*(v121 + 32))(&v10[v68], v69, v122);
  v70 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__deleteAccountAlertConfiguration;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAEF8, &unk_21CBA0740);
  v71 = v123;
  sub_21CB81D74();
  (*(v125 + 32))(&v10[v70], v71, v126);
  v72 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__presentedDetailsAccountID;
  v142 = 0;
  v143 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  v73 = v127;
  sub_21CB81D74();
  (*(v128 + 32))(&v10[v72], v73, v129);
  v74 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__showAddSiteAlert;
  LOBYTE(v142) = 0;
  sub_21CB81D74();
  v67(&v10[v74], v65, v66);
  v75 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__showGeneratedPasswordsSheet;
  LOBYTE(v142) = 0;
  sub_21CB81D74();
  v67(&v10[v75], v65, v66);
  *&v10[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_autoFillPasskeys] = v58;
  *&v10[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions] = 0;
  v76 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_authenticationServicesAgentProxy;
  *&v10[v76] = [objc_allocWithZone(MEMORY[0x277D499C8]) init];
  *&v10[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_maxNumberOfHistoryItemsInSection] = 2;
  v77 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__selectedHistoryItem;
  v142 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF10, &qword_21CBA0750);
  v78 = v130;
  sub_21CB81D74();
  (*(v131 + 32))(&v10[v77], v78, v132);
  v79 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection;
  swift_beginAccess();
  sub_21C7AE640(v141, &v10[v79]);
  swift_endAccess();
  v80 = &v10[OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_didSelectHistoryItem];
  v81 = v140;
  *v80 = v133;
  *(v80 + 1) = v81;
  v82 = v124;
  memcpy(v10 + 32, v124, 0x140uLL);
  v83 = v135;
  *(v10 + 45) = v134;
  *(v10 + 46) = v83;
  v84 = v137;
  *(v10 + 47) = v136;
  *(v10 + 48) = v84;

  sub_21C7AE6B0(v82, &v142);
  sub_21C7A5B24();
  sub_21C7A5FE4();
  v85 = v82;
  v86 = v82[36];
  if (v86)
  {
    v87 = v82[35];
    v88 = v82[36];

    sub_21C7A6110(v87, v86);
  }

  v89 = v82[37];
  if (v89)
  {
    v90 = v111;
    *v111 = v89;
    swift_storeEnumTagMultiPayload();
    v91 = v108;
    v92 = v139;
    v93 = (v139 + *(v108 + 28));
    *v93 = 0u;
    v93[1] = 0u;
    sub_21C7AE7C8(v90, v92 + *(v91 + 24), type metadata accessor for PMAccount.Storage);
    v94 = *(v91 + 20);
    v95 = v89;
    sub_21C7C8A3C(v92 + v94);
    v96 = v110;
    sub_21C7AE7C8(v92 + v94, v110, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v97 = v106;
      sub_21C7AE944(v96, v106, type metadata accessor for PMAccount.SIWAUniqueID);
      v98 = sub_21C7CE99C();
      v100 = v99;
      v101 = type metadata accessor for PMAccount.SIWAUniqueID;
    }

    else
    {
      v97 = v105;
      sub_21C7AE944(v96, v105, type metadata accessor for PMAccount.CombinedUniqueID);
      v98 = sub_21C7CE408();
      v100 = v102;
      v101 = type metadata accessor for PMAccount.CombinedUniqueID;
    }

    sub_21C719060(v97, v101);
    sub_21C719060(v90, type metadata accessor for PMAccount.Storage);
    v103 = v139;
    *v139 = v98;
    *(v103 + 8) = v100;

    sub_21C719060(v103, type metadata accessor for PMAccount);
    swift_getKeyPath();
    swift_getKeyPath();
    v142 = v98;
    v143 = v100;

    sub_21CB81DC4();

    sub_21C7ADFB8(v85);
  }

  else
  {

    sub_21C7ADFB8(v82);
  }

  sub_21C6EA794(v141, &unk_27CDEBE60, &unk_21CB9FF40);
  return v10;
}

uint64_t sub_21C7A5B24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - v5;
  v7 = *(v0 + 16);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v7, v19);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C6EADEC(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
  sub_21CB81E04();

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v9 = *(v1 + 16);

  sub_21CB86544();
  v10 = sub_21C7072A8(v9, v19);

  v11 = *(v10 + 32);

  v19 = v11;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF80, &unk_21CBA0A30);
  sub_21C6EADEC(&qword_27CDEAF88, &qword_27CDEAF80, &unk_21CBA0A30);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v12 = *(v1 + 16);

  sub_21CB86544();
  v13 = sub_21C7072A8(v12, v19);

  v14 = *(v13 + 40);

  v19 = v14;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21C7AE728;
  *(v16 + 24) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C6EADEC(&qword_27CDEAF98, &qword_27CDEAF90, &qword_21CBA77E0);
  sub_21CB81E04();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();
}

void sub_21C7A5FE4()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = *MEMORY[0x277D49D80];
  v2 = swift_allocObject();
  swift_weakInit();
  v5[4] = sub_21C7AE70C;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21C7ADA6C;
  v5[3] = &block_descriptor_58;
  v3 = _Block_copy(v5);

  v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

uint64_t sub_21C7A6110(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v6 == a1 && v7 == a2)
  {
  }

  else
  {
    v5 = sub_21CB86344();

    if ((v5 & 1) == 0)
    {
      return sub_21C7A6364();
    }
  }

  return result;
}

uint64_t sub_21C7A6278()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7A62F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7A6364()
{
  v1 = v0;
  v90 = type metadata accessor for PMAccount.Storage(0);
  v2 = *(*(v90 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v90);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v81 - v6);
  v89 = type metadata accessor for PMAccount(0);
  v91 = *(v89 - 8);
  v8 = *(v91 + 64);
  v9 = MEMORY[0x28223BE20](v89);
  v88 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v86 = &v81 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v85 = &v81 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v81 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v81 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v81 - v21;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v24 = aBlock;
  v23 = v93;

  v25 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v87 = v1;
  if (!v25)
  {
    v84 = *(v1 + 184);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v17 = aBlock;
    v38 = *(aBlock + 2);
    v27 = v1;
    if (v38)
    {
      v85 = v20;
      v39 = 0;
      v40 = MEMORY[0x277D84F90];
      do
      {
        if (v39 >= *(v17 + 2))
        {
          goto LABEL_69;
        }

        v41 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        v42 = *(v91 + 72);
        sub_21C7AE7C8(&v17[v41 + v42 * v39], v22, type metadata accessor for PMAccount);
        sub_21C7AE7C8(&v22[*(v89 + 24)], v7, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719060(v7, type metadata accessor for PMAccount.Storage);
          sub_21C719060(v22, type metadata accessor for PMAccount);
        }

        else
        {
          v5 = *v7;
          v43 = [*v7 credentialTypes];

          if ((v43 & v84) != 0)
          {
            sub_21C7AE944(v22, v85, type metadata accessor for PMAccount);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v40;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C7B0C4C(0, *(v40 + 16) + 1, 1);
              v40 = aBlock;
            }

            v46 = *(v40 + 16);
            v45 = *(v40 + 24);
            v5 = v46 + 1;
            if (v46 >= v45 >> 1)
            {
              sub_21C7B0C4C(v45 > 1, v46 + 1, 1);
              v40 = aBlock;
            }

            *(v40 + 16) = v5;
            sub_21C7AE944(v85, v40 + v41 + v46 * v42, type metadata accessor for PMAccount);
            v27 = v87;
          }

          else
          {
            sub_21C719060(v22, type metadata accessor for PMAccount);
            v27 = v87;
          }
        }

        ++v39;
      }

      while (v38 != v39);
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = v40;

    goto LABEL_37;
  }

  v22 = *(v1 + 16);
  v26 = qword_27CDEA4C0;

  v27 = v1;
  if (v26 != -1)
  {
    goto LABEL_70;
  }

  while (1)
  {
    sub_21CB86544();
    v82 = sub_21C7072A8(v22, aBlock);

    v84 = *(v27 + 184);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v22 = aBlock;
    v28 = *(aBlock + 2);
    if (v28)
    {
      v29 = 0;
      v30 = MEMORY[0x277D84F90];
      v83 = *(aBlock + 2);
      while (v29 < *(v22 + 2))
      {
        v31 = (*(v91 + 80) + 32) & ~*(v91 + 80);
        v32 = *(v91 + 72);
        sub_21C7AE7C8(&v22[v31 + v32 * v29], v17, type metadata accessor for PMAccount);
        sub_21C7AE7C8(&v17[*(v89 + 24)], v5, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C719060(v5, type metadata accessor for PMAccount.Storage);
          sub_21C719060(v17, type metadata accessor for PMAccount);
        }

        else
        {
          v33 = *v5;
          v34 = [*v5 credentialTypes];

          if ((v34 & v84) != 0)
          {
            sub_21C7AE944(v17, v85, type metadata accessor for PMAccount);
            v35 = swift_isUniquelyReferenced_nonNull_native();
            aBlock = v30;
            if ((v35 & 1) == 0)
            {
              sub_21C7B0C4C(0, *(v30 + 16) + 1, 1);
              v30 = aBlock;
            }

            v37 = *(v30 + 16);
            v36 = *(v30 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_21C7B0C4C(v36 > 1, v37 + 1, 1);
              v30 = aBlock;
            }

            *(v30 + 16) = v37 + 1;
            sub_21C7AE944(v85, v30 + v31 + v37 * v32, type metadata accessor for PMAccount);
            v27 = v87;
            v28 = v83;
          }

          else
          {
            sub_21C719060(v17, type metadata accessor for PMAccount);
            v27 = v87;
          }
        }

        if (v28 == ++v29)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_68;
    }

    v30 = MEMORY[0x277D84F90];
LABEL_32:

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v48 = aBlock;
    v47 = v93;
    v49 = v82;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v51 = *(v49 + 24);
      ObjectType = swift_getObjectType();
      v53 = (*(v51 + 48))(ObjectType, v51);
      swift_unknownObjectRelease();
      Strong = [v53 associatedDomainsManager];
    }

    matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v30, v48, v47, Strong);
    v17 = v55;

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = matched;

LABEL_37:
    sub_21CB81DC4();
    v56 = MEMORY[0x277D84F90];
    v57 = v86;
    if (*(v27 + 256) == 1)
    {
      if (*(v27 + 304))
      {
        v58 = [objc_opt_self() mainBundle];
        v59 = [v58 bundleIdentifier];

        if (v59)
        {
          v60 = *(v27 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_authenticationServicesAgentProxy);
          v96 = sub_21C7AE5F0;
          v97 = v27;
          aBlock = MEMORY[0x277D85DD0];
          v93 = 1107296256;
          v61 = &block_descriptor_0;
LABEL_44:
          v94 = sub_21C7AC7F8;
          v95 = v61;
          v66 = _Block_copy(&aBlock);
          v17 = v97;

          [v60 getPasskeysForRunningAssertionWithApplicationIdentifier:v59 withCompletionHandler:v66];
          _Block_release(v66);
        }
      }

      else
      {
        v63 = *(v27 + 288);
        v62 = *(v27 + 296);
        v64 = *(v27 + 280);
        aBlock = *(v27 + 272);
        v93 = v64;
        v94 = v63;
        v95 = v62;
        v65 = WBSApplicationIdentifierFromAuditToken();
        if (v65)
        {
          v59 = v65;
          v60 = *(v27 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_authenticationServicesAgentProxy);
          v96 = sub_21C7AEA2C;
          v97 = v27;
          aBlock = MEMORY[0x277D85DD0];
          v93 = 1107296256;
          v61 = &block_descriptor_37;
          goto LABEL_44;
        }
      }
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = v56;

      sub_21CB81DC4();
    }

    if (!*(*(v27 + 192) + 16) && !*(*(v27 + 200) + 16))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = v56;

      goto LABEL_60;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v22 = aBlock;
    v67 = *(aBlock + 2);
    if (!v67)
    {
      break;
    }

    v5 = 0;
    v68 = MEMORY[0x277D84F90];
    while (v5 < *(v22 + 2))
    {
      v69 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v70 = *(v91 + 72);
      sub_21C7AE7C8(&v22[v69 + v70 * v5], v57, type metadata accessor for PMAccount);
      sub_21C7AC8A8(v57, v27);
      if (v71)
      {
        sub_21C7AE944(v57, v88, type metadata accessor for PMAccount);
        v72 = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v68;
        if ((v72 & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v68 + 16) + 1, 1);
          v68 = aBlock;
        }

        v74 = *(v68 + 16);
        v73 = *(v68 + 24);
        v17 = (v74 + 1);
        if (v74 >= v73 >> 1)
        {
          sub_21C7B0C4C(v73 > 1, v74 + 1, 1);
          v68 = aBlock;
        }

        *(v68 + 16) = v17;
        sub_21C7AE944(v88, v68 + v69 + v74 * v70, type metadata accessor for PMAccount);
        v57 = v86;
      }

      else
      {
        sub_21C719060(v57, type metadata accessor for PMAccount);
      }

      if (v67 == ++v5)
      {
        goto LABEL_59;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    swift_once();
  }

  v68 = MEMORY[0x277D84F90];
LABEL_59:

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock = v68;

LABEL_60:
  sub_21CB81DC4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v77 = aBlock;
  v76 = v93;
  if (v94 <= 2u)
  {
LABEL_63:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v80 = sub_21C7A1394(v77, v76, aBlock);

    if (!v80)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = 0;
      v93 = 0;
      LOBYTE(v94) = -1;

      return sub_21CB81DC4();
    }
  }

  else if (v94 == 3)
  {
    v79 = *&aBlock[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account];
    v78 = *&aBlock[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account + 8];

    sub_21C7AE5A0(v77, v76, 3u);
    v77 = v79;
    v76 = v78;
    goto LABEL_63;
  }

  return result;
}

uint64_t sub_21C7A7208()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7A729C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7A7314()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7A7388()
{
  v1 = v0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC50, &unk_21CBA00A0);
  v2 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v56 = &v44 - v3;
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v58 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = (&v44 - v9);
  MEMORY[0x28223BE20](v10);
  v62 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  if (![objc_opt_self() isSavedAccountHistoryInAutoFillEnabled])
  {
    goto LABEL_3;
  }

  v21 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection;
  swift_beginAccess();
  v55 = v21;
  sub_21C6EDBAC(v0 + v21, v20, &unk_27CDEBE60, &unk_21CB9FF40);
  v22 = *(v5 + 48);
  v54 = v5 + 48;
  v47 = v22;
  LODWORD(v21) = v22(v20, 1, v4);
  sub_21C6EA794(v20, &unk_27CDEBE60, &unk_21CB9FF40);
  if (v21 == 1)
  {
LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    return v63;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = v63;
  v53 = *(v63 + 16);
  if (!v53)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_24:

    return v23;
  }

  v25 = 0;
  v50 = v5 + 56;
  v23 = MEMORY[0x277D84F90];
  v26 = v47;
  v51 = v63;
  v52 = v1;
  v49 = v5;
  while (v25 < *(result + 16))
  {
    v60 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v61 = v23;
    v27 = v5;
    v28 = v4;
    v29 = v1;
    v59 = *(v27 + 72);
    v30 = v17;
    v31 = v62;
    sub_21C7AE7C8(result + v60 + v59 * v25, v62, type metadata accessor for PMAccount);
    v32 = v31;
    v17 = v30;
    sub_21C7AE7C8(v32, v30, type metadata accessor for PMAccount);
    (*(v27 + 56))(v30, 0, 1, v28);
    v33 = v56;
    v34 = *(v57 + 48);
    sub_21C6EDBAC(v30, v56, &unk_27CDEBE60, &unk_21CB9FF40);
    v35 = v29 + v55;
    v4 = v28;
    sub_21C6EDBAC(v35, v33 + v34, &unk_27CDEBE60, &unk_21CB9FF40);
    if (v26(v33, 1, v28) == 1)
    {
      sub_21C6EA794(v30, &unk_27CDEBE60, &unk_21CB9FF40);
      v36 = v26(v33 + v34, 1, v28);
      v5 = v49;
      if (v36 != 1)
      {
        goto LABEL_15;
      }

      sub_21C6EA794(v33, &unk_27CDEBE60, &unk_21CB9FF40);
      v23 = v61;
    }

    else
    {
      v37 = v48;
      sub_21C6EDBAC(v33, v48, &unk_27CDEBE60, &unk_21CB9FF40);
      if (v26(v33 + v34, 1, v28) == 1)
      {
        sub_21C6EA794(v30, &unk_27CDEBE60, &unk_21CB9FF40);
        v38 = v37;
        v17 = v30;
        sub_21C719060(v38, type metadata accessor for PMAccount);
        v5 = v49;
        v26 = v47;
LABEL_15:
        sub_21C6EA794(v33, &qword_27CDEAC50, &unk_21CBA00A0);
        v23 = v61;
LABEL_16:
        sub_21C7AE944(v62, v58, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v23 + 16) + 1, 1);
          v23 = v63;
        }

        v41 = *(v23 + 16);
        v40 = *(v23 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_21C7B0C4C(v40 > 1, v41 + 1, 1);
          v23 = v63;
        }

        *(v23 + 16) = v41 + 1;
        sub_21C7AE944(v58, v23 + v60 + v41 * v59, type metadata accessor for PMAccount);
        goto LABEL_8;
      }

      v42 = v45;
      sub_21C7AE944(v33 + v34, v45, type metadata accessor for PMAccount);
      v46 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v37, v42);
      sub_21C719060(v42, type metadata accessor for PMAccount);
      sub_21C6EA794(v30, &unk_27CDEBE60, &unk_21CB9FF40);
      v43 = v37;
      v17 = v30;
      sub_21C719060(v43, type metadata accessor for PMAccount);
      sub_21C6EA794(v33, &unk_27CDEBE60, &unk_21CB9FF40);
      v5 = v49;
      v26 = v47;
      v23 = v61;
      if (!v46)
      {
        goto LABEL_16;
      }
    }

    sub_21C719060(v62, type metadata accessor for PMAccount);
LABEL_8:
    ++v25;
    v1 = v52;
    result = v51;
    if (v53 == v25)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C7A7A58@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v7[1])
  {

    sub_21C7A7B1C(v7, a1, &v6);
    result = swift_bridgeObjectRelease_n();
    v5 = v6;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *a2 = v5;
  return result;
}

uint64_t sub_21C7A7B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a2 + 16);
  v7 = qword_27CDEA4C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v6, v11);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v8 = sub_21C7A1394(v5, v4, v11);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21CBA0690;
    *(v10 + 32) = v5;
    *(v10 + 40) = v4;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  *a3 = v10;
  return result;
}

uint64_t sub_21C7A7C8C(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 16))
  {
    v3 = *(v1 + 32);
    v2 = *(v1 + 40);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DC4();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C7A7DCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7A7E4C()
{
  v1 = v0;
  v2 = type metadata accessor for PMAddAccountModel.Configuration(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v22)
  {
  }

  if (v1[27])
  {
    v10 = v1[26];
    v11 = v1[27];
  }

  else
  {
    if (v1[29])
    {
      v10 = v1[28];
      v11 = v1[29];
    }

    else
    {
      v10 = 0;
      v11 = 0xE000000000000000;
    }
  }

  v12 = *(v2 + 24);
  v13 = sub_21CB85C44();
  (*(*(v13 - 8) + 56))(&v8[v12], 1, 1, v13);
  v14 = &v8[*(v2 + 28)];
  *v8 = v10;
  *(v8 + 1) = v11;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0xE000000000000000;
  v15 = v1[31];
  *v14 = v1[30];
  *(v14 + 1) = v15;
  sub_21C7AE7C8(v8, v5, type metadata accessor for PMAddAccountModel.Configuration);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = type metadata accessor for PMAddAccountModel(0);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v20 = sub_21C848014(v5, sub_21C7AE830, v16);
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v20;

  sub_21CB81DC4();
  return sub_21C719060(v8, type metadata accessor for PMAddAccountModel.Configuration);
}

uint64_t sub_21C7A80D4(uint64_t result)
{
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      return sub_21CB81DC4();
    }
  }

  return result;
}

uint64_t sub_21C7A8160()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v24 != 255)
  {
    v13 = v23;
    if (v24 == 3)
    {
      v15 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_didSelectHistoryItem);
      v14 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_didSelectHistoryItem + 8);
      v16 = v22;
      sub_21C7AE7C8(v22 + OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account, v12, type metadata accessor for PMAccount);
      (*(v2 + 56))(v12, 0, 1, v1);

      v17 = sub_21CAAA050();
      v15(v12, v17, v18);

      sub_21C7AE5A0(v16, v13, 3u);
      return sub_21C6EA794(v12, &unk_27CDEBE60, &unk_21CB9FF40);
    }

    sub_21C7AE5A0(v22, v23, v24);
  }

  v20 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
  swift_beginAccess();
  sub_21C6EDBAC(v0 + v20, v9, &unk_27CDEBE60, &unk_21CB9FF40);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_21C6EA794(v9, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  sub_21C7AE944(v9, v5, type metadata accessor for PMAccount);
  sub_21C7A8470(*v5, v5[1]);
  return sub_21C719060(v5, type metadata accessor for PMAccount);
}

uint64_t sub_21C7A8470(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v80 = type metadata accessor for PMAccount.Storage(0);
  v4 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v6 = (&v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v81 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v77 - v11;
  v13 = type metadata accessor for PMAccount(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v84 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v2;
  v17 = *(v2 + 16);
  v18 = qword_27CDEA4C0;

  if (v18 != -1)
  {
    swift_once();
  }

  v79 = qword_27CE18778;
  sub_21CB86544();
  sub_21C7072A8(v17, v85);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v20 = v85;
  v85 = a1;
  v86 = v83;
  MEMORY[0x28223BE20](v19);
  *(&v77 - 2) = &v85;
  sub_21C968D04(sub_21C7AE738, v20, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_21C6EA794(v12, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  v22 = v84;
  sub_21C7AE944(v12, v84, type metadata accessor for PMAccount);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF78, &unk_21CBA0DD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CBA0690;
  *(inited + 32) = PMAccount.highLevelDomain.getter();
  *(inited + 40) = v24;
  sub_21C7AE7C8(v22 + *(v13 + 24), v6, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v77 = v14;
  v78 = v13;
  v83 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C719060(v6, type metadata accessor for PMAccount.Storage);
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    v27 = *v6;
    v28 = [*v6 additionalSites];
    v26 = sub_21CB85824();
  }

  v29 = v82;
  v30 = *(v26 + 16);
  if (v30)
  {
    v31 = inited;
    v85 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v30, 0);
    v32 = v85;
    v33 = (v26 + 40);
    do
    {
      v34 = *(v33 - 1);
      v35 = *v33;

      v36 = sub_21CB85584();
      v37 = [v36 safari_highLevelDomainForPasswordManager];

      v38 = sub_21CB855C4();
      v40 = v39;

      v85 = v32;
      v42 = *(v32 + 16);
      v41 = *(v32 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_21C7B0C0C((v41 > 1), v42 + 1, 1);
        v32 = v85;
      }

      *(v32 + 16) = v42 + 1;
      v43 = v32 + 16 * v42;
      *(v43 + 32) = v38;
      *(v43 + 40) = v40;
      v33 += 2;
      --v30;
    }

    while (v30);

    v29 = v82;
    inited = v31;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  v44 = sub_21CA492C8(v32);

  v85 = inited;
  sub_21CAE8A88(v44);
  v45 = v85;
  if (!*(v29 + 216))
  {
    goto LABEL_22;
  }

  v46 = *(v29 + 208);
  v47 = *(v29 + 216);

  v48 = sub_21CB85584();

  v49 = [v48 safari_highLevelDomainForPasswordManager];

  v50 = sub_21CB855C4();
  v52 = v51;

  if (v50 == 0x6F632E656C707061 && v52 == 0xE90000000000006DLL)
  {

    v53 = 1;
    if (!*(v29 + 216))
    {
      goto LABEL_22;
    }
  }

  else
  {
    v53 = sub_21CB86344();

    if (!*(v29 + 216))
    {
LABEL_22:

      goto LABEL_23;
    }
  }

  if (*(v29 + 32))
  {
    goto LABEL_22;
  }

  v59 = *(v29 + 208);

  v60 = sub_21CB85584();
  v61 = [v60 safari_highLevelDomainForPasswordManager];

  v62 = sub_21CB855C4();
  v64 = v63;

  v85 = v62;
  v86 = v64;
  MEMORY[0x28223BE20](v65);
  *(&v77 - 2) = &v85;
  LOBYTE(v62) = sub_21C8A1458(sub_21C7AE9E0, (&v77 - 4), v45);

  if (v62)
  {
    goto LABEL_22;
  }

  v66 = *(v29 + 24);

  sub_21CB86544();
  v67 = sub_21C81C2D0(v66, v85);

  v68 = sub_21CB85584();
  v69 = [v67 isDomainKnownToAskForCredentialsForOtherServicesWhenEmbeddedAsThirdParty_];

  if (v69 & 1) != 0 || (v53)
  {
    goto LABEL_22;
  }

  v70 = objc_opt_self();
  v71 = sub_21CB85584();

  v72 = [v70 domainByStrippingSubdomainWildcardPrefixIfNecessary_];

  if (!v72)
  {
    sub_21CB855C4();
    v72 = sub_21CB85584();
  }

  v73 = [v70 domainIsProhibitedForSavingCredentials_];

  if ((v73 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if ((v85 & 1) == 0)
    {
      v74 = v84;
      v75 = v81;
      sub_21C7AE7C8(v84, v81, type metadata accessor for PMAccount);
      (*(v77 + 56))(v75, 0, 1, v78);
      v76 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
      swift_beginAccess();
      sub_21C7AE758(v75, v29 + v76);
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v85) = 1;

      sub_21CB81DC4();
      v58 = v74;
      return sub_21C719060(v58, type metadata accessor for PMAccount);
    }
  }

LABEL_23:
  v54 = *(v29 + 360);
  v55 = *(v29 + 368);
  v56 = v84;
  v57 = v81;
  sub_21C7AE7C8(v84, v81, type metadata accessor for PMAccount);
  (*(v77 + 56))(v57, 0, 1, v78);

  v54(v57);

  sub_21C6EA794(v57, &unk_27CDEBE60, &unk_21CB9FF40);
  v58 = v56;
  return sub_21C719060(v58, type metadata accessor for PMAccount);
}

uint64_t sub_21C7A8DE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v34 = MEMORY[0x277D84F90];
  sub_21C7B0C0C(0, v1, 0);
  v2 = v34;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = sub_21CB85F24();
  v7 = result;
  v8 = 0;
  v29 = a1 + 64;
  v30 = a1;
  v9 = a1;
  v31 = v1;
  v32 = a1 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v9 + 32))
  {
    v12 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_24;
    }

    v33 = *(v9 + 36);
    v13 = *(v9 + 48) + 24 * v7;
    v14 = *v13;
    v15 = *(v13 + 16);
    if (v15 >= 3)
    {
      v17 = &v14[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account];
      v14 = *&v14[OBJC_IVAR____TtC17PasswordManagerUI26PMAccountPickerHistoryItem_account];
      v16 = *(v17 + 1);
    }

    else
    {
      v16 = *(v13 + 8);
      result = sub_21C79B008(*v13, v16, v15);
      v9 = v30;
    }

    v19 = *(v34 + 16);
    v18 = *(v34 + 24);
    v20 = v33;
    if (v19 >= v18 >> 1)
    {
      result = sub_21C7B0C0C((v18 > 1), v19 + 1, 1);
      v20 = v33;
      v9 = v30;
    }

    *(v34 + 16) = v19 + 1;
    v21 = v34 + 16 * v19;
    *(v21 + 32) = v14;
    *(v21 + 40) = v16;
    v10 = 1 << *(v9 + 32);
    if (v7 >= v10)
    {
      goto LABEL_25;
    }

    v4 = v32;
    v22 = *(v32 + 8 * v12);
    if ((v22 & (1 << v7)) == 0)
    {
      goto LABEL_26;
    }

    if (v20 != *(v9 + 36))
    {
      goto LABEL_27;
    }

    v23 = v22 & (-2 << (v7 & 0x3F));
    if (v23)
    {
      v10 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v11 = v31;
    }

    else
    {
      v24 = v12 << 6;
      v25 = v12 + 1;
      v26 = (v29 + 8 * v12);
      v11 = v31;
      while (v25 < (v10 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          result = sub_21C7AE858(v7, v20, 0);
          v9 = v30;
          v10 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      result = sub_21C7AE858(v7, v20, 0);
      v9 = v30;
    }

LABEL_4:
    ++v8;
    v7 = v10;
    if (v8 == v11)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_21C7A904C(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = &v45 - v5;
  v46 = type metadata accessor for PMAccount.MockData(0);
  v6 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for PMAccount.Storage(0);
  v8 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v45 - v13;
  v15 = sub_21CB85BB4();
  v51 = *(v15 - 8);
  v52 = v15;
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v15);
  v48 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v45 - v20;
  v22 = type metadata accessor for PMAccount(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v2;
  sub_21CB81DB4();

  v27 = v56[0];
  v56[0] = v53;
  v56[1] = v54;
  v55 = v56;
  sub_21C968D04(sub_21C7AE9FC, v27, v21);

  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_21C6EA794(v21, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  sub_21C7AE944(v21, v26, type metadata accessor for PMAccount);
  sub_21C7AE7C8(&v26[*(v22 + 24)], v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = v47;
    sub_21C7AE944(v10, v47, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(v29 + *(v46 + 60), v14, &qword_27CDEAF58, &unk_21CBA0980);
    sub_21C719060(v29, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v30 = *v10;
    sub_21CB85BD4();
  }

  v32 = v51;
  v31 = v52;
  if ((*(v51 + 48))(v14, 1, v52) == 1)
  {
    sub_21C719060(v26, type metadata accessor for PMAccount);
    return sub_21C6EA794(v14, &qword_27CDEAF58, &unk_21CBA0980);
  }

  else
  {
    v33 = v48;
    (*(v32 + 32))();
    v34 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_autoFillPasskeys;
    v35 = v49;
    v36 = swift_beginAccess();
    v37 = *(v35 + v34);
    MEMORY[0x28223BE20](v36);
    *(&v45 - 2) = v33;

    v38 = sub_21C968D6C(sub_21C7AE864, (&v45 - 4), v37);

    if (v38)
    {
      v39 = sub_21CB858E4();
      v40 = v45;
      (*(*(v39 - 8) + 56))(v45, 1, 1, v39);
      sub_21CB858B4();
      v41 = v38;

      v42 = sub_21CB858A4();
      v43 = swift_allocObject();
      v44 = MEMORY[0x277D85700];
      v43[2] = v42;
      v43[3] = v44;
      v43[4] = v35;
      v43[5] = v41;
      sub_21C98B308(0, 0, v40, &unk_21CBA0C10, v43);
    }

    sub_21C719060(v26, type metadata accessor for PMAccount);
    return (*(v32 + 8))(v33, v31);
  }
}

uint64_t sub_21C7A96B8(id *a1)
{
  v1 = [*a1 identifier];
  v2 = [v1 credentialID];

  v3 = sub_21CB855C4();
  v5 = v4;

  if (v3 == sub_21CB85B64() && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21CB86344();
  }

  return v8 & 1;
}

uint64_t sub_21C7A9788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  sub_21CB858B4();
  v5[21] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v5[22] = v8;
  v5[23] = v7;

  return MEMORY[0x2822009F8](sub_21C7A9858, v8, v7);
}

uint64_t sub_21C7A9858()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_authenticationServicesAgentProxy);
  v4 = *(v1 + 352);
  v0[24] = v4;
  v5 = *(v1 + 344);
  v0[25] = v5;
  v0[2] = v0;
  v0[3] = sub_21C7A99B0;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7660, &unk_21CBBDB50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CAB1570;
  v0[13] = &block_descriptor_115;
  v0[14] = v6;
  [v3 userSelectedAutoFillPasskey:v2 authenticatedLAContext:v4 savedAccountContext:v5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21C7A99B0()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_21C7A9AB8, v2, v1);
}

uint64_t sub_21C7A9AB8()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];

  v7 = *(v5 + 360);
  v6 = *(v5 + 368);
  v8 = type metadata accessor for PMAccount(0);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);

  v7(v4);

  sub_21C6EA794(v4, &unk_27CDEBE60, &unk_21CB9FF40);

  v9 = v0[1];

  return v9();
}

BOOL sub_21C7A9BB0()
{
  v1 = sub_21CB80BE4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v30 - v7;
  if (v0[27])
  {
    v9 = v0[26];
    v10 = v0[27];
  }

  else
  {
    v11 = v0[25];

    sub_21C713194(v12);
    v14 = v13;

    if (!v14)
    {
      return 0;
    }
  }

  v15 = sub_21CB85584();

  v16 = [v15 safari_highLevelDomainForPasswordManager];

  v17 = sub_21CB855C4();
  v19 = v18;

  v30[0] = 0x2F2F3A7370747468;
  v30[1] = 0xE800000000000000;
  MEMORY[0x21CF151F0](v17, v19);

  v20 = sub_21CB85584();

  v21 = [v20 safari_bestURLForUserTypedString];

  if (!v21)
  {
    return 0;
  }

  sub_21CB80B94();

  (*(v2 + 32))(v8, v5, v1);
  v22 = objc_opt_self();
  v23 = sub_21CB80B74();
  v24 = [v22 safari:v23 HTMLFormProtectionSpaceForURL:?];

  v25 = [objc_opt_self() sharedStore];
  v26 = [v25 generatedPasswordsForProtectionSpace:v24 options:0];

  sub_21C6E8F4C(0, &qword_27CDEAFA0, 0x277D49A38);
  v27 = sub_21CB85824();

  if (v27 >> 62)
  {
    v28 = sub_21CB85FA4();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  (*(v2 + 8))(v8, v1);
  return v28 != 0;
}

uint64_t sub_21C7A9ECC()
{
  v1[6] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for PMAccount(0);
  v1[9] = v3;
  v4 = *(v3 - 8);
  v1[10] = v4;
  v5 = *(v4 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = sub_21CB858B4();
  v1[13] = sub_21CB858A4();
  v7 = sub_21CB85874();
  v1[14] = v7;
  v1[15] = v6;

  return MEMORY[0x2822009F8](sub_21C7AA008, v7, v6);
}

uint64_t sub_21C7AA008()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount;
  swift_beginAccess();
  sub_21C6EDBAC(v4 + v5, v3, &unk_27CDEBE60, &unk_21CB9FF40);
  v6 = (*(v2 + 48))(v3, 1, v1);
  v7 = v0[8];
  if (v6 == 1)
  {
    v8 = v0[13];

    sub_21C6EA794(v7, &unk_27CDEBE60, &unk_21CB9FF40);
LABEL_10:
    v24 = v0[11];
    v25 = v0[7];
    v26 = v0[8];

    v27 = v0[1];

    return v27();
  }

  v9 = v0[6];
  sub_21C7AE944(v0[8], v0[11], type metadata accessor for PMAccount);
  if (!*(v9 + 216))
  {
    v22 = v0[13];
    v23 = v0[11];

    sub_21C719060(v23, type metadata accessor for PMAccount);
    goto LABEL_10;
  }

  v10 = v0[6];
  v11 = *(v10 + 208);

  v12 = sub_21CB85584();

  v13 = [v12 safari_highLevelDomainForPasswordManager];

  v14 = sub_21CB855C4();
  v16 = v15;

  v0[16] = v14;
  v0[17] = v16;
  v17 = *(v10 + 16);
  v18 = qword_27CDEA4C0;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = v0[12];
  sub_21CB86544();
  v0[18] = sub_21C7072A8(v17, v0[5]);

  v0[19] = sub_21CB858A4();
  v21 = sub_21CB85874();
  v0[20] = v21;
  v0[21] = v20;

  return MEMORY[0x2822009F8](sub_21C7AA2AC, v21, v20);
}

uint64_t sub_21C7AA2AC()
{
  v1 = v0[18];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[22] = Strong;
  if (Strong)
  {
    v3 = *(v0[18] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 88);
    v17 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_21C7AA444;
    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[11];

    return v17(v9, v8, v10, ObjectType, v3);
  }

  else
  {
    v12 = v0[18];
    v13 = v0[19];
    v14 = v0[17];

    v15 = v0[14];
    v16 = v0[15];

    return MEMORY[0x2822009F8](sub_21C7AA610, v15, v16);
  }
}

uint64_t sub_21C7AA444()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 136);
  v8 = *v0;

  swift_unknownObjectRelease();
  v5 = *(v1 + 168);
  v6 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_21C7AA5A4, v6, v5);
}

uint64_t sub_21C7AA5A4()
{
  v1 = v0[18];
  v2 = v0[19];

  v3 = v0[14];
  v4 = v0[15];

  return MEMORY[0x2822009F8](sub_21C7AA610, v3, v4);
}

uint64_t sub_21C7AA610()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];

  v8 = *(v6 + 360);
  v7 = *(v6 + 368);
  sub_21C7AE7C8(v2, v5, type metadata accessor for PMAccount);
  (*(v3 + 56))(v5, 0, 1, v4);

  v8(v5);

  sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21C719060(v2, type metadata accessor for PMAccount);
  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[8];

  v12 = v0[1];

  return v12();
}

uint64_t sub_21C7AA740(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(type metadata accessor for PMAccount(0) - 8);
  v2[14] = v3;
  v4 = *(v3 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = sub_21CB858B4();
  v2[17] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v2[18] = v6;
  v2[19] = v5;

  return MEMORY[0x2822009F8](sub_21C7AA834, v6, v5);
}

uint64_t sub_21C7AA834()
{
  v1 = *(*(v0 + 104) + 16);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  *(v0 + 160) = qword_27CE18778;
  sub_21CB86544();
  v3 = sub_21C7072A8(v1, *(v0 + 48));

  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 24);

    ObjectType = swift_getObjectType();
    (*(v4 + 64))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  v6 = *(v0 + 96);
  v7 = *(v6 + 16);
  *(v0 + 168) = v7;
  if (v7)
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v10 = *(v8 + 80);
    *(v0 + 240) = v10;
    *(v0 + 176) = *(v8 + 72);
    *(v0 + 184) = 0;
    v11 = *(v0 + 160);
    sub_21C7AE7C8(v6 + ((v10 + 32) & ~v10), *(v0 + 120), type metadata accessor for PMAccount);
    v12 = *(v9 + 16);

    sub_21CB86544();
    v13 = *(v0 + 56);
    if (*(v13 + 16) && (v14 = sub_21CB10910(v12), (v15 & 1) != 0) && (sub_21C7A3394(*(v13 + 56) + 32 * v14, v0 + 16), type metadata accessor for PMAccountsState(), (swift_dynamicCast() & 1) != 0) && (v16 = *(v0 + 72)) != 0)
    {
    }

    else
    {
      if (qword_27CDEA3C8 != -1)
      {
        swift_once();
      }

      *(v0 + 80) = qword_27CE184E8;

      swift_getAtKeyPath();

      v16 = *(v0 + 64);
    }

    *(v0 + 192) = v16;
    v17 = *(v0 + 128);
    *(v0 + 200) = sub_21CB858A4();
    v19 = sub_21CB85874();
    *(v0 + 208) = v19;
    *(v0 + 216) = v18;

    return MEMORY[0x2822009F8](sub_21C7AABA4, v19, v18);
  }

  else
  {
    v20 = *(v0 + 160);
    v21 = *(v0 + 136);
    v22 = *(v0 + 104);

    v23 = *(v22 + 16);

    sub_21CB86544();
    v24 = sub_21C7072A8(v23, *(v0 + 88));

    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 24);
      v26 = swift_getObjectType();
      (*(v25 + 72))(v26, v25);
      swift_unknownObjectRelease();
    }

    v27 = *(v0 + 120);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_21C7AABA4()
{
  v1 = v0[24];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[28] = Strong;
  if (Strong)
  {
    v3 = *(v0[24] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 96);
    v14 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[29] = v7;
    *v7 = v0;
    v7[1] = sub_21C7AAD2C;
    v8 = v0[15];

    return v14(3, v8, ObjectType, v3);
  }

  else
  {
    v10 = v0[24];
    v11 = v0[25];

    v12 = v0[18];
    v13 = v0[19];

    return MEMORY[0x2822009F8](sub_21C7AAEDC, v12, v13);
  }
}

uint64_t sub_21C7AAD2C()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_21C7AAE70, v5, v4);
}

uint64_t sub_21C7AAE70()
{
  v1 = v0[24];
  v2 = v0[25];

  v3 = v0[18];
  v4 = v0[19];

  return MEMORY[0x2822009F8](sub_21C7AAEDC, v3, v4);
}

uint64_t sub_21C7AAEDC()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 184) + 1;
  sub_21C719060(*(v0 + 120), type metadata accessor for PMAccount);
  if (v2 == v1)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 136);
    v5 = *(v0 + 104);

    v6 = *(v5 + 16);

    sub_21CB86544();
    v7 = sub_21C7072A8(v6, *(v0 + 88));

    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 24);
      ObjectType = swift_getObjectType();
      (*(v8 + 72))(ObjectType, v8);
      swift_unknownObjectRelease();
    }

    v10 = *(v0 + 120);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 184) + 1;
    *(v0 + 184) = v14;
    v15 = *(v0 + 160);
    v16 = *(v0 + 104);
    sub_21C7AE7C8(*(v0 + 96) + ((*(v0 + 240) + 32) & ~*(v0 + 240)) + v13 * v14, *(v0 + 120), type metadata accessor for PMAccount);
    v17 = *(v16 + 16);

    sub_21CB86544();
    v18 = *(v0 + 56);
    if (*(v18 + 16) && (v19 = sub_21CB10910(v17), (v20 & 1) != 0) && (sub_21C7A3394(*(v18 + 56) + 32 * v19, v0 + 16), type metadata accessor for PMAccountsState(), (swift_dynamicCast() & 1) != 0) && (v21 = *(v0 + 72)) != 0)
    {
    }

    else
    {
      if (qword_27CDEA3C8 != -1)
      {
        swift_once();
      }

      *(v0 + 80) = qword_27CE184E8;

      swift_getAtKeyPath();

      v21 = *(v0 + 64);
    }

    *(v0 + 192) = v21;
    v22 = *(v0 + 128);
    *(v0 + 200) = sub_21CB858A4();
    v24 = sub_21CB85874();
    *(v0 + 208) = v24;
    *(v0 + 216) = v23;

    return MEMORY[0x2822009F8](sub_21C7AABA4, v24, v23);
  }
}

uint64_t sub_21C7AB1A4(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v22 - v8);
  v25 = sub_21C7A8DE0(a1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v11 = v26[0];
  v24 = *(v26[0] + 16);
  if (v24)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v23 = v7;
    while (v12 < *(v11 + 16))
    {
      v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = *(v3 + 72);
      v16 = sub_21C7AE7C8(v11 + v14 + v15 * v12, v9, type metadata accessor for PMAccount);
      v17 = v9[1];
      v26[0] = *v9;
      v26[1] = v17;
      MEMORY[0x28223BE20](v16);
      *(&v22 - 2) = v26;
      if (sub_21C8A13AC(sub_21C7AE838, (&v22 - 4), v25))
      {
        sub_21C7AE944(v9, v7, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v13 + 16) + 1, 1);
          v13 = v27;
        }

        v20 = *(v13 + 16);
        v19 = *(v13 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_21C7B0C4C(v19 > 1, v20 + 1, 1);
          v13 = v27;
        }

        *(v13 + 16) = v20 + 1;
        v21 = v13 + v14 + v20 * v15;
        v7 = v23;
        result = sub_21C7AE944(v23, v21, type metadata accessor for PMAccount);
      }

      else
      {
        result = sub_21C719060(v9, type metadata accessor for PMAccount);
      }

      if (v24 == ++v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_13:

    return v13;
  }

  return result;
}

uint64_t sub_21C7AB484(uint64_t a1, void *a2)
{
  v5 = sub_21CB853D4();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21CB85404();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v13 = sub_21CB85CF4();
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_21C7AE5F4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_40;
  v15 = _Block_copy(aBlock);
  v16 = a2;

  sub_21CB853E4();
  v21 = MEMORY[0x277D84F90];
  sub_21C6F17A4(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v12, v8, v15);
  _Block_release(v15);

  (*(v20 + 8))(v8, v5);
  (*(v9 + 8))(v12, v19);
}

size_t sub_21C7AB790(uint64_t a1, unint64_t a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = &v118 - v8;
  v9 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v129 = (&v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v128 = (&v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = type metadata accessor for PMAccount.UniqueID(0);
  v15 = *(*(v134 - 8) + 64);
  MEMORY[0x28223BE20](v134);
  v133 = (&v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = type metadata accessor for PMAccount.Storage(0);
  v17 = *(*(v137 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v137);
  v20 = (&v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v138 = (&v118 - v21);
  v22 = type metadata accessor for PMAccount(0);
  v135 = *(v22 - 8);
  v136 = v22;
  v23 = *(v135 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v123 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v125 = &v118 - v27;
  MEMORY[0x28223BE20](v26);
  v139 = (&v118 - v28);
  v132 = sub_21CB85BB4();
  v142 = *(v132 - 8);
  v29 = *(v142 + 64);
  v30 = MEMORY[0x28223BE20](v132);
  v130 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v131 = &v118 - v33;
  MEMORY[0x28223BE20](v32);
  v35 = (&v118 - v34);
  v36 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_autoFillPasskeys;
  swift_beginAccess();
  v37 = *(v2 + v36);
  *(v2 + v36) = a1;

  v38 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_passkeyNearbyDeviceOptions) = a2;
  v39 = a2;

  v40 = *(v2 + v36);
  if (v40 >> 62)
  {
LABEL_71:
    v117 = v40;
    v41 = sub_21CB85FA4();
    v40 = v117;
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = MEMORY[0x277D84F90];
  v127 = v2;
  if (v41)
  {
    v143 = MEMORY[0x277D84F90];
    v43 = v40;

    v2 = &v143;
    sub_21C7B10E0(0, v41 & ~(v41 >> 63), 0);
    if (v41 < 0)
    {
      __break(1u);
LABEL_73:
      v54 = MEMORY[0x21CF15BD0](0);
      goto LABEL_17;
    }

    v122 = v36;
    v126 = v20;
    v44 = 0;
    v45 = v43;
    v42 = v143;
    v140 = v142 + 32;
    v141 = v43 & 0xC000000000000001;
    v46 = v132;
    v47 = v43;
    do
    {
      if (v141)
      {
        v48 = MEMORY[0x21CF15BD0](v44, v45);
      }

      else
      {
        v48 = *(v45 + 8 * v44 + 32);
      }

      v49 = v48;
      v50 = [v48 identifier];
      a2 = [v50 credentialID];

      sub_21CB855C4();
      sub_21CB85B54();

      v143 = v42;
      v52 = *(v42 + 16);
      v51 = *(v42 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_21C7B10E0(v51 > 1, v52 + 1, 1);
        v46 = v132;
        v42 = v143;
      }

      ++v44;
      *(v42 + 16) = v52 + 1;
      (*(v142 + 32))(v42 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v52, v35, v46);
      v45 = v47;
    }

    while (v41 != v44);

    v2 = v127;
    v20 = v126;
    v36 = v122;
  }

  v3 = sub_21CB00BD4(v42);

  if (!*(v3 + 16))
  {
  }

  swift_beginAccess();
  v53 = *(v2 + v36);
  if ((v53 & 0xC000000000000001) != 0)
  {
    goto LABEL_73;
  }

  if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_75;
  }

  v54 = *(v53 + 32);
LABEL_17:
  v55 = v54;
  swift_endAccess();
  v56 = [v55 relyingPartyIdentifier];

  v57 = sub_21CB855C4();
  v59 = v58;

  if (v57 == 0x6F632E656C707061 && v59 == 0xE90000000000006DLL)
  {

    goto LABEL_22;
  }

  v61 = sub_21CB86344();

  if ((v61 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    v93 = v143;
    v36 = *(v143 + 16);
    if (!v36)
    {
      v128 = MEMORY[0x277D84F90];
LABEL_68:

      swift_getKeyPath();
      swift_getKeyPath();
      v143 = v128;
      goto LABEL_69;
    }

    v94 = 0;
    v35 = (v142 + 48);
    v129 = (v142 + 32);
    v139 = (v142 + 16);
    v140 = v3 + 56;
    v141 = v142 + 8;
    v128 = MEMORY[0x277D84F90];
    v133 = (v142 + 56);
    v95 = v124;
    v96 = v125;
    a2 = v131;
    v2 = v132;
    v126 = v20;
    v120 = v143;
    v119 = v36;
    v122 = (v142 + 48);
    while (1)
    {
      if (v94 >= *(v93 + 16))
      {
        __break(1u);
        goto LABEL_71;
      }

      v138 = ((*(v135 + 80) + 32) & ~*(v135 + 80));
      v134 = *(v135 + 72);
      sub_21C7AE7C8(v138 + v93 + v134 * v94, v96, type metadata accessor for PMAccount);
      sub_21C7AE7C8(v96 + *(v136 + 24), v20, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C719060(v96, type metadata accessor for PMAccount);
        sub_21C719060(v20, type metadata accessor for PMAccount.Storage);
        (*v133)(v95, 1, 1, v2);
      }

      else
      {
        v97 = *v20;
        sub_21CB85BD4();

        v2 = v132;
        if ((*v35)(v95, 1, v132) != 1)
        {
          (*v129)(a2, v95, v2);
          if (*(v3 + 16))
          {
            v98 = *(v3 + 40);
            sub_21C6F17A4(&qword_27CDEAF60, MEMORY[0x277D49948]);
            v99 = sub_21CB85484();
            v100 = -1 << *(v3 + 32);
            v101 = v99 & ~v100;
            if ((*(v140 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
            {
              v121 = v141 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v102 = v3;
              v103 = ~v100;
              v104 = *(v142 + 72);
              v105 = *(v142 + 16);
              while (1)
              {
                v106 = v130;
                v107 = v132;
                v105(v130, *(v102 + 48) + v104 * v101, v132);
                sub_21C6F17A4(&qword_27CDEAF68, MEMORY[0x277D49948]);
                v108 = sub_21CB85574();
                v109 = *v141;
                (*v141)(v106, v107);
                if (v108)
                {
                  break;
                }

                v101 = (v101 + 1) & v103;
                if (((*(v140 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
                {
                  v95 = v124;
                  v20 = v126;
                  a2 = v131;
                  v2 = v132;
                  v3 = v102;
                  v93 = v120;
                  v36 = v119;
                  goto LABEL_61;
                }
              }

              a2 = v131;
              v2 = v132;
              v109(v131, v132);
              v96 = v125;
              sub_21C7AE944(v125, v123, type metadata accessor for PMAccount);
              v110 = v128;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v112 = v110;
              v143 = v110;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_21C7B0C4C(0, *(v110 + 16) + 1, 1);
                v2 = v132;
                v112 = v143;
              }

              v20 = v126;
              v3 = v102;
              v93 = v120;
              v35 = v122;
              v113 = v112;
              v115 = *(v112 + 16);
              v114 = *(v112 + 24);
              v116 = v115 + 1;
              v36 = v119;
              if (v115 >= v114 >> 1)
              {
                v128 = (v115 + 1);
                sub_21C7B0C4C(v114 > 1, v115 + 1, 1);
                v116 = v128;
                v2 = v132;
                v113 = v143;
              }

              *(v113 + 16) = v116;
              v128 = v113;
              v40 = sub_21C7AE944(v123, v138 + v113 + v115 * v134, type metadata accessor for PMAccount);
              v95 = v124;
            }

            else
            {
              v109 = *v141;
              v2 = v132;
LABEL_61:
              v109(a2, v2);
              v96 = v125;
              v40 = sub_21C719060(v125, type metadata accessor for PMAccount);
              v35 = v122;
            }
          }

          else
          {
            (*v141)(a2, v2);
            v40 = sub_21C719060(v96, type metadata accessor for PMAccount);
          }

          goto LABEL_48;
        }

        sub_21C719060(v96, type metadata accessor for PMAccount);
      }

      v40 = sub_21C6EA794(v95, &qword_27CDEAF58, &unk_21CBA0980);
LABEL_48:
      if (++v94 == v36)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_22:

  a2 = *(v2 + v36);
  if (!(a2 >> 62))
  {
    v62 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

LABEL_75:
  v62 = sub_21CB85FA4();
LABEL_24:
  v63 = MEMORY[0x277D84F90];
  if (!v62)
  {
LABEL_43:
    swift_getKeyPath();
    swift_getKeyPath();
    v143 = v63;
LABEL_69:

    return sub_21CB81DC4();
  }

  v143 = MEMORY[0x277D84F90];

  result = sub_21C7B0C4C(0, v62 & ~(v62 >> 63), 0);
  if ((v62 & 0x8000000000000000) == 0)
  {
    v64 = 0;
    v63 = v143;
    v141 = a2 & 0xC000000000000001;
    v142 = a2;
    do
    {
      if (v141)
      {
        v65 = MEMORY[0x21CF15BD0](v64, a2);
      }

      else
      {
        v65 = *(a2 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = [v65 relyingPartyIdentifier];
      if (!v67)
      {
        sub_21CB855C4();
        v67 = sub_21CB85584();
      }

      v68 = [v66 username];
      if (!v68)
      {
        sub_21CB855C4();
        v68 = sub_21CB85584();
      }

      v69 = v62;
      v70 = [v66 identifier];
      v71 = [v70 credentialID];

      if (!v71)
      {
        sub_21CB855C4();
        v71 = sub_21CB85584();
      }

      v72 = objc_allocWithZone(MEMORY[0x277D49B20]);
      v73 = sub_21CB85584();
      v74 = [v72 initWithPasskeyRelyingPartyID:v67 user:v68 passkeyUserHandle:v73 passkeyCredentialID:v71];

      v75 = v138;
      *v138 = v74;
      swift_storeEnumTagMultiPayload();
      v76 = v136;
      v77 = v139;
      v78 = (v139 + *(v136 + 28));
      *v78 = 0u;
      v78[1] = 0u;
      sub_21C7AE7C8(v75, v77 + *(v76 + 24), type metadata accessor for PMAccount.Storage);
      v79 = *(v76 + 20);
      v80 = v74;
      sub_21C7C8A3C(v77 + v79);
      v81 = v133;
      sub_21C7AE7C8(v77 + v79, v133, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v82 = v81;
        v83 = v129;
        sub_21C7AE944(v82, v129, type metadata accessor for PMAccount.SIWAUniqueID);
        v84 = sub_21C7CE99C();
        v86 = v85;

        v87 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v88 = v81;
        v83 = v128;
        sub_21C7AE944(v88, v128, type metadata accessor for PMAccount.CombinedUniqueID);
        v84 = sub_21C7CE408();
        v86 = v89;

        v87 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C719060(v83, v87);
      v62 = v69;
      a2 = v142;
      sub_21C719060(v138, type metadata accessor for PMAccount.Storage);
      v90 = v139;
      *v139 = v84;
      *(v90 + 8) = v86;
      v143 = v63;
      v92 = *(v63 + 16);
      v91 = *(v63 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_21C7B0C4C(v91 > 1, v92 + 1, 1);
        v90 = v139;
        v63 = v143;
      }

      ++v64;
      *(v63 + 16) = v92 + 1;
      sub_21C7AE944(v90, v63 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v92, type metadata accessor for PMAccount);
    }

    while (v62 != v64);

    goto LABEL_43;
  }

  __break(1u);
  return result;
}

void sub_21C7AC7F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_21C6E8F4C(0, &qword_27CDEAF70, 0x277D499D0);
  v6 = sub_21CB85824();

  v7 = a3;
  v5(v6, a3);
}

void sub_21C7AC8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount.Storage(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (v67 - v9);
  v11 = *(type metadata accessor for PMAccount(0) + 24);
  sub_21C7AE7C8(a1 + v11, v10, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v10;
LABEL_8:
    sub_21C719060(v12, type metadata accessor for PMAccount.Storage);
    return;
  }

  v13 = *v10;
  if (*(a2 + 32) == 2)
  {
    v14 = PMAccount.totpGenerator.getter();
    if (v14)
    {
      v15 = v14;

      return;
    }
  }

  sub_21C7AE7C8(a1 + v11, v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v12 = v8;
    goto LABEL_8;
  }

  v16 = *v8;
  v17 = [*v8 credentialTypes];

  if (v17)
  {
    v71 = v13;
    v69 = a2;
    v18 = *(a2 + 192);
    v19 = 1 << *(v18 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v18 + 56);
    v22 = (v19 + 63) >> 6;
    v23 = *(a2 + 192);

    v24 = 0;
    while (v21)
    {
      v25 = v24;
LABEL_20:
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      v27 = (*(v18 + 48) + ((v25 << 10) | (16 * v26)));
      v28 = *v27;
      v29 = v27[1];

      v30 = sub_21CB85584();

      LOBYTE(v29) = [v71 matchesServiceNameHintString_];

      if (v29)
      {
LABEL_43:

        return;
      }
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v25 >= v22)
      {
        break;
      }

      v21 = *(v18 + 56 + 8 * v25);
      ++v24;
      if (v21)
      {
        v24 = v25;
        goto LABEL_20;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF78, &unk_21CBA0DD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    v32 = v71;
    v33 = [v71 highLevelDomain];
    if (v33)
    {
      v34 = v33;
      v35 = sub_21CB855C4();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0;
    }

    v38 = v69;
    *(inited + 32) = v35;
    *(inited + 40) = v37;
    v39 = [v32 additionalSites];
    v40 = sub_21CB85824();

    v41 = *(v40 + 16);
    if (v41)
    {
      v68 = inited;
      v70[0] = MEMORY[0x277D84F90];
      sub_21C7B0C0C(0, v41, 0);
      v42 = v70[0];
      v67[1] = v40;
      v43 = (v40 + 40);
      do
      {
        v44 = *(v43 - 1);
        v45 = *v43;

        v46 = sub_21CB85584();
        v47 = [v46 safari_highLevelDomainForPasswordManager];

        v48 = sub_21CB855C4();
        v50 = v49;

        v70[0] = v42;
        v52 = *(v42 + 16);
        v51 = *(v42 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_21C7B0C0C((v51 > 1), v52 + 1, 1);
          v42 = v70[0];
        }

        *(v42 + 16) = v52 + 1;
        v53 = v42 + 16 * v52;
        *(v53 + 32) = v48;
        *(v53 + 40) = v50;
        v43 += 2;
        --v41;
      }

      while (v41);

      inited = v68;
      v38 = v69;
    }

    else
    {

      v42 = MEMORY[0x277D84F90];
    }

    v54 = sub_21CA492C8(v42);

    v70[0] = inited;
    sub_21CAE8A88(v54);
    v69 = v70[0];
    v55 = *(v38 + 200);
    v56 = 1 << *(v55 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & *(v55 + 56);
    v59 = (v56 + 63) >> 6;
    v60 = *(v38 + 200);

    v62 = 0;
    while (v58)
    {
      v63 = v62;
LABEL_41:
      v64 = (*(v55 + 48) + ((v63 << 10) | (16 * __clz(__rbit64(v58)))));
      v65 = v64[1];
      v58 &= v58 - 1;
      v70[0] = *v64;
      v70[1] = v65;
      MEMORY[0x28223BE20](v61);
      v67[-2] = v70;

      v66 = sub_21C8A1458(sub_21C7AE620, &v67[-4], v69);

      if (v66)
      {

        goto LABEL_43;
      }
    }

    while (1)
    {
      v63 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v63 >= v59)
      {

        return;
      }

      v58 = *(v55 + 56 + 8 * v63);
      ++v62;
      if (v58)
      {
        v62 = v63;
        goto LABEL_41;
      }
    }

LABEL_46:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_21C7ACE64(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  if (v6 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DC4();
    if (*(v2 + 32) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      return sub_21CB81DC4();
    }

    else
    {
      return sub_21C7A8470(a1, a2);
    }
  }

  return result;
}

void sub_21C7ACF94(char a1, uint64_t a2)
{
  v4 = sub_21CB853D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB85404();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v22 = v12;
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v21 = sub_21CB85CF4();
    aBlock[4] = sub_21C7AE9C4;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_124;
    v15 = _Block_copy(aBlock);

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21C6F17A4(&qword_27CDEAF48, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
    sub_21CB85F14();
    v16 = v21;
    MEMORY[0x21CF15800](0, v14, v8, v15);
    _Block_release(v15);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v22);
  }

  else
  {
    if (qword_27CDEA3E0 != -1)
    {
      swift_once();
    }

    v17 = sub_21CB81C84();
    __swift_project_value_buffer(v17, qword_27CE18550);
    v22 = sub_21CB81C64();
    v18 = sub_21CB85B14();
    if (os_log_type_enabled(v22, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_21C6E5000, v22, v18, "caBLE transaction did not succeed. Leaving picker up.", v19, 2u);
      MEMORY[0x21CF16D90](v19, -1, -1);
    }

    v20 = v22;
  }
}

uint64_t sub_21C7AD35C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  if (qword_27CDEA3E0 != -1)
  {
    swift_once();
  }

  v6 = sub_21CB81C84();
  __swift_project_value_buffer(v6, qword_27CE18550);
  v7 = sub_21CB81C64();
  v8 = sub_21CB85B14();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_21C6E5000, v7, v8, "Finished caBLE transaction. Dismissing picker.", v9, 2u);
    MEMORY[0x21CF16D90](v9, -1, -1);
  }

  v11 = *(a1 + 360);
  v10 = *(a1 + 368);
  v12 = type metadata accessor for PMAccount(0);
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);

  v11(v5);

  return sub_21C6EA794(v5, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21C7AD508(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_21CB81DC4();
    sub_21C7A6364();
  }

  return result;
}

uint64_t sub_21C7AD5B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21C7ACE64(v1, v2);
  }

  return result;
}

uint64_t sub_21C7AD624(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21CB81DB4();

    if (v9)
    {
      if (v8 == *a1 && v9 == a1[1])
      {

LABEL_7:
        v7 = *a2;
        v6 = a2[1];
        swift_getKeyPath();
        swift_getKeyPath();

        return sub_21CB81DC4();
      }

      v5 = sub_21CB86344();

      if (v5)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_21C7AD764()
{
  v0 = sub_21CB853D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB85404();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
    v12 = sub_21CB85CF4();
    aBlock[4] = sub_21C7AE714;
    aBlock[5] = v11;
    v17 = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C6ECBD4;
    aBlock[3] = &block_descriptor_61;
    v16 = _Block_copy(aBlock);

    sub_21CB853E4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21C6F17A4(&qword_27CDEAF48, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    v15 = v5;
    sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
    sub_21CB85F14();
    v14 = v16;
    v13 = v17;
    MEMORY[0x21CF15800](0, v9, v4, v16);
    _Block_release(v14);

    (*(v1 + 8))(v4, v0);
    return (*(v6 + 8))(v9, v15);
  }

  return result;
}

uint64_t sub_21C7ADA6C(uint64_t a1)
{
  v2 = sub_21CB807E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_21CB807B4();

  v8(v6);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21C7ADB60()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  memcpy(v27, (v0 + 32), sizeof(v27));
  sub_21C7ADFB8(v27);

  v3 = *(v0 + 368);

  v4 = *(v0 + 384);

  v5 = *(v0 + 392);

  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_savedAccountForHistorySection, &unk_27CDEBE60, &unk_21CB9FF40);
  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_didSelectHistoryItem + 8);

  v7 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__selectedItem;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF18, &qword_21CBA0798);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_selectedAccount, &unk_27CDEBE60, &unk_21CB9FF40);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__searchText;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__listedAccounts;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v13 = *(*(v12 - 8) + 8);
  v13(v0 + v11, v12);
  v13(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accountsForPasskeyAutoFill, v12);
  v13(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accountsWithPasswordsMatchingHintStrings, v12);
  v13(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__accounts, v12);
  v14 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__expectingNewAccount;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v16 = *(*(v15 - 8) + 8);
  v16(v0 + v14, v15);
  v17 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__addAccountSheetModel;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF28, &qword_21CBA07A8);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__deleteAccountAlertConfiguration;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF30, &unk_21CBA07B0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__presentedDetailsAccountID;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF38, &qword_21CBA1CA0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v16(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__showAddSiteAlert, v15);
  v16(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__showGeneratedPasswordsSheet, v15);
  v23 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel_autoFillPasskeys);

  v24 = OBJC_IVAR____TtC17PasswordManagerUI20PMAccountPickerModel__selectedHistoryItem;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF40, &qword_21CBA07C0);
  (*(*(v25 - 8) + 8))(v0 + v24, v25);
  return v0;
}

uint64_t sub_21C7ADF58()
{
  sub_21C7ADB60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_21C7AE034@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_21C7AE0BC(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21C79B044(v2, v3, v5);
  return sub_21CB81DC4();
}

double sub_21C7AE178@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_21C7AE1F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C7AE27C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C7AE2F8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C7AE3B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t sub_21C7AE430@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C7AE4AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  return sub_21C7A6364();
}

BOOL sub_21C7AE52C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_21CB86344() & 1;
    }
  }

  return result;
}

void sub_21C7AE5A0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_21C7AE5B4(a1, a2, a3);
  }
}

void sub_21C7AE5B4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3 >= 2u)
    {
      return;
    }

LABEL_7:

    return;
  }

  if (a3 == 2)
  {
    goto LABEL_7;
  }

  if (a3 == 3)
  {
  }
}

size_t sub_21C7AE5F4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_21C7AB790(v1, v2);
}

uint64_t sub_21C7AE640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7AE758(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C7AE7C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7AE858(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_21C7AE884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C7A9788(a1, v4, v5, v7, v6);
}

uint64_t sub_21C7AE944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_21C7AEA7C()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21C7AEB28(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_21C7AEC88()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21C7AECE8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_21C7AED80;
}

void sub_21C7AED80(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *_PMTOTPMigrationController.init(migrationURL:delegate:)(uint64_t a1, uint64_t a2)
{
  v85 = a2;
  v79 = a1;
  v81 = sub_21CB80DD4();
  v77 = *(v81 - 8);
  v3 = *(v77 + 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
  v75 = *(v5 - 8);
  v6 = *(v75 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v72 - v10;
  v12 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v87 = *(v12 - 8);
  v88 = v12;
  v13 = *(v87 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFB0, &unk_21CBA0C80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v72 - v18;
  v86 = type metadata accessor for PMOfflineMigrationPayload(0);
  v20 = *(v86 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v86);
  v76 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController) = 0;
  v23 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_delegate;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_migrationURL;
  v25 = sub_21CB80BE4();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v82 = v24;
  v28 = v2 + v24;
  v29 = v79;
  v27(v28, v79, v25);
  swift_beginAccess();
  v84 = v23;
  swift_unknownObjectWeakAssign();
  v30 = [objc_allocWithZone(type metadata accessor for PMPasswordManagerState()) init];
  v78 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_appState;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_appState) = v30;
  sub_21CA9042C(v19);
  if ((*(v20 + 48))(v19, 1, v86) == 1)
  {
    v31 = *(v26 + 8);
    v31(v29, v25);
    swift_unknownObjectRelease();
    sub_21C7B09AC(v19);
LABEL_30:

    v31(v2 + v82, v25);
    sub_21C7B0A14(v2 + v84);
    type metadata accessor for _PMTOTPMigrationController();
    v69 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
    v70 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v73 = v26;
  v74 = v25;
  v32 = v76;
  sub_21C7B0CD4(v19, v76, type metadata accessor for PMOfflineMigrationPayload);
  v33 = *v32;
  v34 = *(*v32 + 16);
  if (!v34)
  {
    v31 = *(v73 + 8);
    v25 = v74;
    v31(v79, v74);
    swift_unknownObjectRelease();
    sub_21C7B1ECC(v32, type metadata accessor for PMOfflineMigrationPayload);
    goto LABEL_30;
  }

  v72 = v2;
  v89 = MEMORY[0x277D84F90];
  sub_21C7B0C90(0, v34, 0);
  v35 = v89;
  v36 = v33 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
  v37 = (v77 + 8);
  v77 = v15;
  v78 = v37;
  v86 = *(v75 + 72);
  do
  {
    sub_21C7B1E64(v36, v11, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    sub_21C7B1E64(v11, v15, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    sub_21C7B1E64(v11, v9, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    v38 = *(v9 + 10);
    if (v9[88] == 1)
    {
      if (v38 < 2)
      {
        goto LABEL_18;
      }
    }

    else if (v38 != 2)
    {
      goto LABEL_18;
    }

    if (v9[56] != 1)
    {
LABEL_18:
      sub_21C7B1ECC(v9, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
      v46 = 0;
      goto LABEL_19;
    }

    v39 = *(v9 + 6);
    v40 = v39 >= 2;
    if (v39 > 2)
    {
      if (v39 != 3)
      {
        goto LABEL_18;
      }

      v41 = 2;
    }

    else
    {
      v41 = 1;
      if (!v40)
      {
        v41 = 0;
      }
    }

    v84 = v41;
    v42 = *v9;
    v43 = *(v9 + 1);
    v83 = sub_21CB80C64();
    v44 = v80;
    sub_21CB80D74();
    v82 = sub_21CB80D24();
    (*v78)(v44, v81);
    if (v9[72])
    {
      v45 = 6;
    }

    else if (*(v9 + 8) == 8)
    {
      v45 = 8;
    }

    else
    {
      v45 = 6;
    }

    v49 = objc_allocWithZone(MEMORY[0x277D49B78]);
    v50 = *(v9 + 4);
    v51 = *(v9 + 5);
    v52 = sub_21CB85584();
    v53 = *(v9 + 2);
    v54 = *(v9 + 3);
    v55 = sub_21CB85584();
    v56 = v49;
    v58 = v82;
    v57 = v83;
    v46 = [v56 initWithKeyData:v83 initialDate:v82 codeGenerationPeriod:30 numberOfDigits:v45 algorithm:v84 issuer:v52 accountName:v55 originalURL:0];

    sub_21C7B1ECC(v9, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    if (v46)
    {
    }

    v15 = v77;
LABEL_19:
    sub_21C7B1ECC(v11, type metadata accessor for PMOfflineMigrationPayload.OTPParameters);
    *&v15[*(v88 + 20)] = v46;
    v89 = v35;
    v48 = *(v35 + 16);
    v47 = *(v35 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_21C7B0C90(v47 > 1, v48 + 1, 1);
      v35 = v89;
    }

    *(v35 + 16) = v48 + 1;
    sub_21C7B0CD4(v15, v35 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v48, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
    v36 += v86;
    --v34;
  }

  while (v34);
  v59 = type metadata accessor for PMTOTPMigrationModel(0);
  v60 = *(v59 + 48);
  v61 = *(v59 + 52);
  swift_allocObject();
  v62 = sub_21CB52A38(v35);
  v63 = v72;
  *(v72 + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_totpMigrationModel) = v62;
  v64 = type metadata accessor for _PMTOTPMigrationController();
  v90.receiver = v63;
  v90.super_class = v64;
  v65 = objc_msgSendSuper2(&v90, sel_init);
  v66 = sub_21C7AF774();
  swift_unknownObjectRelease();
  (*(v73 + 8))(v79, v74);
  sub_21C7B1ECC(v76, type metadata accessor for PMOfflineMigrationPayload);
  v67 = OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_viewController;
  swift_beginAccess();
  v68 = *&v65[v67];
  *&v65[v67] = v66;

  return v65;
}

uint64_t sub_21C7AF774()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB070, &qword_21CBA0E10);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_totpMigrationModel);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for PMTOTPMigrationModel(0);
  sub_21C7B1E1C(&qword_27CDEB078, type metadata accessor for PMTOTPMigrationModel);

  v11 = sub_21CB82674();
  v19[0] = sub_21C7B1DB0;
  v19[1] = v8;
  v19[2] = sub_21C7B1DB8;
  v19[3] = v9;
  v19[4] = sub_21C7B1DC0;
  v19[5] = v10;
  v19[6] = v11;
  v19[7] = v12;
  sub_21C7B1DC8();
  sub_21CB84064();

  v13 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_appState);
  type metadata accessor for PMPasswordManagerState();
  sub_21C7B1E1C(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState);
  v14 = sub_21CB81CE4();
  v15 = &v6[*(v3 + 44)];
  *v15 = v14;
  v15[1] = v13;
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB088, &qword_21CBA0E18));
  v17 = v13;
  return sub_21CB833B4();
}

void sub_21C7AF9E4(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for PMAccount(0);
    sub_21C7B1E64(a1 + *(v8 + 24), v5, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_21C7B1ECC(v5, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v9 = *v5;
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        [v10 totpMigrationController:v7 presentDetailsForSavedAccount:v9];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_21C7AFB4C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v4 totpMigrationController:v3 presentPickerForGenerator:a1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_21C7AFBF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 totpMigrationControllerFinishedImport_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21C7AFC94(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_21CB858B4();
  v3[5] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21C7AFD30, v5, v4);
}

uint64_t sub_21C7AFD30()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_totpMigrationModel);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_21C7AFDD4;
  v4 = v0[2];
  v3 = v0[3];

  return sub_21CB51C9C(v4, v3);
}

uint64_t sub_21C7AFDD4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21C7AFEF4, v4, v3);
}

uint64_t sub_21C7AFEF4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C7B00E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = sub_21CB858B4();
  v4[7] = sub_21CB858A4();
  v6 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C7B0184, v6, v5);
}

uint64_t sub_21C7B0184()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  v0[8] = _Block_copy(v3);
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v0[9] = sub_21CB858A4();
  v11 = sub_21CB85874();
  v0[10] = v11;
  v0[11] = v10;

  return MEMORY[0x2822009F8](sub_21C7B0244, v11, v10);
}

uint64_t sub_21C7B0244()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_totpMigrationModel);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_21C7B02E8;
  v4 = v0[2];
  v3 = v0[3];

  return sub_21CB51C9C(v4, v3);
}

uint64_t sub_21C7B02E8()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_21C7B0408, v4, v3);
}

uint64_t sub_21C7B0408()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  v2[2](v2);
  _Block_release(v2);
  v6 = v0[1];

  return v6();
}

uint64_t sub_21C7B0538()
{
  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_totpMigrationModel);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v2 = *(v4 + 16);

  return v2;
}

uint64_t sub_21C7B0628()
{
  v1 = type metadata accessor for PMTOTPMigrationModel.TOTPCode(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI26_PMTOTPMigrationController_totpMigrationModel);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v7 = v19;
  v19 = MEMORY[0x277D84F90];
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v1 + 20);
    v10 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v11 = *(v2 + 72);
    v12 = MEMORY[0x277D84F90];
    do
    {
      sub_21C7B1E64(v10, v5, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      v13 = *&v5[v9];
      v14 = v13;
      v15 = sub_21C7B1ECC(v5, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
      if (v13)
      {
        MEMORY[0x21CF15300](v15);
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21CB85834();
        }

        sub_21CB85854();
        v12 = v19;
      }

      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v12;
}

id _PMTOTPMigrationController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _PMTOTPMigrationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _PMTOTPMigrationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21C7B09AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFB0, &unk_21CBA0C80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for _PMTOTPMigrationController()
{
  result = qword_27CDEAFD0;
  if (!qword_27CDEAFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C7B0A88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  return result;
}

uint64_t sub_21C7B0B08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

size_t sub_21C7B0B84(size_t a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEB040, &qword_21CBA0DE0, type metadata accessor for PMGeneratedPassword);
  *v3 = result;
  return result;
}

size_t sub_21C7B0BC8(size_t a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &unk_27CDF7720, &qword_21CBA0D80, MEMORY[0x277D49978]);
  *v3 = result;
  return result;
}

char *sub_21C7B0C0C(char *a1, int64_t a2, char a3)
{
  result = sub_21C7B1544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21C7B0C2C(char *a1, int64_t a2, char a3)
{
  result = sub_21C7B1650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21C7B0C4C(size_t a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEC2B0, &unk_21CBA0D70, type metadata accessor for PMAccount);
  *v3 = result;
  return result;
}

size_t sub_21C7B0C90(size_t a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEB090, &unk_21CBA0E20, type metadata accessor for PMTOTPMigrationModel.TOTPCode);
  *v3 = result;
  return result;
}

uint64_t sub_21C7B0CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7B0D44()
{
  result = sub_21CB80BE4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of _PMTOTPMigrationController.add(generator:to:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB8);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_21C702EFC;

  return v10(a1, a2);
}

char *sub_21C7B10A0(char *a1, int64_t a2, char a3)
{
  result = sub_21C7B175C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21C7B10C0(void *a1, int64_t a2, char a3)
{
  result = sub_21C7B1884(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21C7B10E0(size_t a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEB038, &qword_21CBA0DC8, MEMORY[0x277D49948]);
  *v3 = result;
  return result;
}

size_t sub_21C7B1124(size_t a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEB048, &qword_21CBA0DE8, type metadata accessor for PMEditableWebsite);
  *v3 = result;
  return result;
}

char *sub_21C7B1168(char *a1, int64_t a2, char a3)
{
  result = sub_21C7B19B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21C7B1188(size_t a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEAFF8, &qword_21CBA0D68, type metadata accessor for PMSharingGroup);
  *v3 = result;
  return result;
}

char *sub_21C7B11CC(char *a1, int64_t a2, char a3)
{
  result = sub_21C7B1F2C(a1, a2, a3, *v3, &qword_27CDEB028, &unk_21CBB3650);
  *v3 = result;
  return result;
}

size_t sub_21C7B1204(size_t a1, int64_t a2, char a3)
{
  result = sub_21C6EA08C(a1, a2, a3, *v3, &qword_27CDEB008, &qword_21CBC0C30, type metadata accessor for PMWiFiNetwork);
  *v3 = result;
  return result;
}

size_t sub_21C7B1248(size_t a1, int64_t a2, char a3)
{
  result = sub_21C7B2370(a1, a2, a3, *v3, &qword_27CDEAFE8, &qword_21CBA0D58, &qword_27CDEAFF0, &qword_21CBA0D60);
  *v3 = result;
  return result;
}

char *sub_21C7B1288(char *a1, int64_t a2, char a3)
{
  result = sub_21C7B1440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21C7B12A8(size_t a1, int64_t a2, char a3)
{
  result = sub_21C7B2370(a1, a2, a3, *v3, &qword_27CDEB050, &unk_21CBA0DF0, &qword_27CDEB058, &unk_21CBB50B0);
  *v3 = result;
  return result;
}

size_t sub_21C7B12E8(size_t a1, int64_t a2, char a3)
{
  result = sub_21C7B2370(a1, a2, a3, *v3, &qword_27CDEB060, &unk_21CBA0E00, &qword_27CDEB068, &unk_21CBB9C10);
  *v3 = result;
  return result;
}

char *sub_21C7B1328(char *a1, int64_t a2, char a3)
{
  result = sub_21C7B1F2C(a1, a2, a3, *v3, &qword_27CDF7730, &unk_21CBA0E60);
  *v3 = result;
  return result;
}

char *sub_21C7B1360(char *a1, int64_t a2, char a3)
{
  result = sub_21C7B2038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21C7B1380(size_t a1, int64_t a2, char a3)
{
  result = sub_21C7B2370(a1, a2, a3, *v3, &qword_27CDEB098, &unk_21CBC1D80, &qword_27CDEB0A0, &qword_21CBA0E40);
  *v3 = result;
  return result;
}

void *sub_21C7B13C0(void *a1, int64_t a2, char a3)
{
  result = sub_21C7B213C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21C7B13E0(char *a1, int64_t a2, char a3)
{
  result = sub_21C7B2270(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21C7B1400(size_t a1, int64_t a2, char a3)
{
  result = sub_21C7B2370(a1, a2, a3, *v3, &qword_27CDEB0B0, &unk_21CBA0E50, &unk_27CDED250, &qword_21CBA64C0);
  *v3 = result;
  return result;
}

char *sub_21C7B1440(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76F0, &qword_21CBA0DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_21C7B1544(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21C7B1650(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB000, &unk_21CBB0000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21C7B175C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB018, &qword_21CBA0D90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21C7B1884(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF78, &unk_21CBA0DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21C7B19B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFE0, &qword_21CBA0D50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_21C7B1B18()
{
  result = qword_27CDEB030;
  if (!qword_27CDEB030)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDEB030);
  }

  return result;
}

uint64_t sub_21C7B1B64()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21C6F35D0;

  return sub_21C7B00E4(v2, v3, v5, v4);
}

uint64_t sub_21C7B1C24()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21C6F35D0;

  return sub_21C963D24(v2, v3, v5);
}

uint64_t sub_21C7B1CE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C6F35D0;

  return sub_21C963E0C(a1, v4, v5, v7);
}

unint64_t sub_21C7B1DC8()
{
  result = qword_27CDEB080;
  if (!qword_27CDEB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB080);
  }

  return result;
}

uint64_t sub_21C7B1E1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C7B1E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C7B1ECC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_21C7B1F2C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_21C7B2038(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB0B8, &qword_21CBAA1F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_21C7B213C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEC290, &unk_21CBA3E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF3320, &unk_21CBA0E30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21C7B2270(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB0A8, &qword_21CBA0E48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

size_t sub_21C7B2370(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_21C7B2558()
{
  v1 = *(v0 + 24);

  sub_21CB81E94();

  return v3;
}

uint64_t sub_21C7B25A4()
{
  v1 = *(v0 + 24);

  sub_21CB81EA4();
}

uint64_t (*sub_21C7B25F4(void *a1))()
{
  *a1 = *(v1 + 24);

  sub_21CB81E94();
  return sub_21C7B2650;
}

uint64_t sub_21C7B2654()
{
  v1 = *(v0 + 24);

  sub_21CB81EB4();

  return v3;
}

uint64_t sub_21C7B26A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 32);

  sub_21CB81E94();

  *a2 = v5;
  return result;
}

uint64_t sub_21C7B26FC(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 32);
  v4 = *a1;

  sub_21CB81EA4();
}

uint64_t sub_21C7B2754(char *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;

  sub_21CB81EA4();
}

uint64_t (*sub_21C7B27A8(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 32);

  sub_21CB81E94();
  return sub_21C7B2804;
}

uint64_t sub_21C7B2804(uint64_t *a1)
{
  v1 = *a1;
  *(a1 + 9) = *(a1 + 8);
  sub_21CB81EA4();
}

uint64_t sub_21C7B2850()
{
  v1 = *(v0 + 32);

  sub_21CB81EB4();
}

uint64_t sub_21C7B28A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 40);

  sub_21CB81E94();

  *a2 = v5;
  return result;
}

uint64_t sub_21C7B28F8(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 40);
  v4 = *a1;

  sub_21CB81EA4();
}

uint64_t sub_21C7B2950()
{
  v1 = *(v0 + 40);

  sub_21CB81EA4();
}

uint64_t (*sub_21C7B29A0(void *a1))()
{
  *a1 = *(v1 + 40);

  sub_21CB81E94();
  return sub_21C7B51FC;
}

uint64_t sub_21C7B29FC()
{
  v1 = *(v0 + 40);

  sub_21CB81EB4();

  return v3;
}

uint64_t sub_21C7B2A4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 48);

  sub_21CB81E94();

  *a2 = v5;
  return result;
}

uint64_t sub_21C7B2AA4(char *a1, uint64_t a2)
{
  v2 = *(*a2 + 48);
  v4 = *a1;

  sub_21CB81EA4();
}

uint64_t sub_21C7B2AFC()
{
  v1 = *(v0 + 48);

  sub_21CB81E94();

  return v3;
}

uint64_t sub_21C7B2B48()
{
  v1 = *(v0 + 48);

  sub_21CB81EA4();
}

uint64_t (*sub_21C7B2B98(void *a1))()
{
  *a1 = *(v1 + 48);

  sub_21CB81E94();
  return sub_21C7B51FC;
}

uint64_t sub_21C7B2BF4()
{
  v1 = *(v0 + 48);

  sub_21CB81EB4();

  return v3;
}

uint64_t (*sub_21C7B2C94(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21CB81DA4();
  return sub_21C7B2D38;
}

uint64_t (*sub_21C7B2D54(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingPasswordOptionsSheet;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  swift_endAccess();
  return sub_21C7B2EC4;
}

uint64_t (*sub_21C7B2F18(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21CB81DA4();
  return sub_21C7B5200;
}

uint64_t (*sub_21C7B2FD4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingFetchWebsiteNameDebuggerSheet;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  swift_endAccess();
  return sub_21C7B5204;
}

uint64_t (*sub_21C7B3194(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21CB81DA4();
  return sub_21C7B5200;
}

uint64_t (*sub_21C7B3250(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingAcceptICloudTermsAndConditionsAlert;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  swift_endAccess();
  return sub_21C7B5204;
}

uint64_t (*sub_21C7B3410(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21CB81DA4();
  return sub_21C7B5200;
}

uint64_t (*sub_21C7B34CC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__hideDebugMenuUntilRelaunch;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  swift_endAccess();
  return sub_21C7B5204;
}

uint64_t sub_21C7B363C()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  v2 = *(v0 + 16);
  if (BYTE8(v11[0]))
  {
    v3 = qword_27CDEA4C0;
    v4 = *(v1 + 16);

    if (v3 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C704000(v2, *&v11[0]);

    swift_getKeyPath();
    swift_getKeyPath();
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_21CB81DC4();
    v5 = *(v1 + 16);

    sub_21CB86544();
    v6 = sub_21C704000(v5, 0);

    v7 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 24);
    v8 = *(v6 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider + 32);
    __swift_project_boxed_opaque_existential_0((v6 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider), v7);
    (*(v8 + 40))(v7, v8);
  }

  else
  {
    v10 = qword_27CDEA4C0;

    if (v10 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C704000(v2, *&v11[0]);

    sub_21C7047E0(*&v11[0], v11);
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_21CB81DC4();
  }
}

uint64_t sub_21C7B38BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  return v1;
}

uint64_t sub_21C7B3984()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21CB81DC4();
}

uint64_t (*sub_21C7B39F0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21CB81DA4();
  return sub_21C7B5200;
}

void sub_21C7B3A94(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21C7B3AFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  return swift_endAccess();
}

uint64_t sub_21C7B3B70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D94();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_21C7B3D08(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  return swift_endAccess();
}

uint64_t sub_21C7B3D84(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D94();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_21C7B3EBC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__alwaysShowSharedGroupOnboarding;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  sub_21CB81D84();
  swift_endAccess();
  return sub_21C7B5204;
}

void sub_21C7B402C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    sub_21CB81D94();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    sub_21CB81D94();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t (*sub_21C7B41C4(void *a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isFuzzySearchEnabled);

  sub_21CB81E94();
  return sub_21C7B51FC;
}

uint64_t (*sub_21C7B4264(void *a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPromotePasskeyUpgradesEnabled);

  sub_21CB81E94();
  return sub_21C7B51FC;
}

uint64_t sub_21C7B42E0@<X0>(void *a1@<X0>, void *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *(*a1 + *a2);

  sub_21CB81E94();

  *a3 = v6;
  return result;
}

uint64_t sub_21C7B4348(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(*a2 + *a5);
  v7 = *a1;

  sub_21CB81EA4();
}

uint64_t sub_21C7B43B0(void *a1)
{
  v2 = *(v1 + *a1);

  sub_21CB81E94();

  return v4;
}

uint64_t sub_21C7B440C(uint64_t a1, void *a2)
{
  v3 = *(v2 + *a2);

  sub_21CB81EA4();
}

uint64_t (*sub_21C7B4460(void *a1))()
{
  *a1 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPasswordsAppiPadNavigationViewEnabled);

  sub_21CB81E94();
  return sub_21C7B51FC;
}

uint64_t sub_21C7B44C4(uint64_t *a1)
{
  v1 = *a1;
  *(a1 + 9) = *(a1 + 8);
  sub_21CB81EA4();
}

uint64_t sub_21C7B451C(void *a1)
{
  v2 = *(v1 + *a1);

  sub_21CB81EB4();

  return v4;
}

char *PMDebugSettingsManager.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 6);

  v6 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingPasswordOptionsSheet;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v8 = *(*(v7 - 8) + 8);
  v8(&v0[v6], v7);
  v8(&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingFetchWebsiteNameDebuggerSheet], v7);
  v8(&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingAcceptICloudTermsAndConditionsAlert], v7);
  v8(&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__hideDebugMenuUntilRelaunch], v7);
  v9 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__tipOverride;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB108, &qword_21CBA0FE8);
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v8(&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__alwaysShowSharedGroupOnboarding], v7);
  v11 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isFuzzySearchEnabled];

  v12 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPromotePasskeyUpgradesEnabled];

  v13 = *&v0[OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPasswordsAppiPadNavigationViewEnabled];

  return v0;
}

uint64_t PMDebugSettingsManager.__deallocating_deinit()
{
  PMDebugSettingsManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21C7B50EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21CB81DB4();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_21C7B5174(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_21CB81DC4();
  return sub_21C7B363C();
}

uint64_t sub_21C7B5208(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);

  v5 = sub_21C7A230C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 48);
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C7B72F8();
    sub_21CB810C4();
  }
}

uint64_t sub_21C7B5320(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C7B72F8();
    sub_21CB810C4();
  }
}

uint64_t sub_21C7B5424()
{
  v1 = *(v0 + 56);
  v2 = qword_27CDEA4C0;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v3 = sub_21C7072A8(v1, v8);

  v4 = *(v3 + 40);

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21C7B728C;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  sub_21C7B7294();
  sub_21CB81E04();

  swift_getKeyPath();
  sub_21C7B72F8();
  sub_21CB810D4();

  swift_getKeyPath();
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  swift_getKeyPath();
  sub_21CB810E4();
}

uint64_t sub_21C7B5660()
{
  swift_getKeyPath();
  sub_21C7B72F8();
  sub_21CB810D4();

  v1 = *(v0 + 16);
}

uint64_t sub_21C7B56D4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21C7B72F8();
  sub_21CB810D4();

  v2 = *(v0 + 24);
  v1 = *(v4 + 32);

  return v2;
}

uint64_t sub_21C7B5754@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C7B72F8();
  sub_21CB810D4();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_21C7B57D0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 24) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 32);
      if (sub_21CB86344())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C7B72F8();
    sub_21CB810C4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_21C7B5910()
{
  swift_getKeyPath();
  sub_21C7B72F8();
  sub_21CB810D4();

  v1 = *(v0 + 40);
}

uint64_t sub_21C7B5984(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = a2;
}

uint64_t sub_21C7B59C0()
{
  swift_getKeyPath();
  sub_21C7B72F8();
  sub_21CB810D4();

  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_21C7B5A48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21C7B72F8();
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_21C7B5AD8(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 32);
  if (v4 && (*(v1 + 24) == v3 ? (v5 = v4 == v2) : (v5 = 0), v5 || (v6 = *(v1 + 32), (sub_21CB86344() & 1) != 0)))
  {
    *(v1 + 24) = v3;
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21C7B72F8();

    sub_21CB810C4();
  }
}

id sub_21C7B5C2C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v49 - v5;
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v14 = sub_21CB80BE4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  result = [a1 exportableURL];
  if (result)
  {
    v64 = v15;
    v61 = v1;
    v20 = result;
    sub_21CB80B94();

    v59 = sub_21CB5E3D8();
    v71 = 1;
    v60 = [objc_opt_self() defaultContext];
    v63 = v14;
    sub_21CB81014();
    sub_21CB81014();
    v62 = v18;
    v21 = sub_21CB80FF4();
    v57 = v22;
    v58 = v21;
    v23 = *(v7 + 8);
    v23(v11, v6);
    v23(v13, v6);
    sub_21CB81014();
    sub_21CB81014();
    v24 = sub_21CB80FF4();
    v55 = v25;
    v56 = v24;
    v23(v11, v6);
    v23(v13, v6);
    sub_21CB81014();
    v26 = sub_21CB81004();
    v53 = v27;
    v54 = v26;
    v23(v13, v6);
    sub_21CB81014();
    v28 = sub_21CB81004();
    v51 = v29;
    v52 = v28;
    v23(v13, v6);
    sub_21CB81014();
    v30 = sub_21CB81004();
    v49 = v31;
    v50 = v30;
    v23(v13, v6);
    sub_21CB81014();
    v32 = sub_21CB81004();
    v34 = v33;
    v23(v13, v6);
    sub_21CB81014();
    v35 = sub_21CB81004();
    v37 = v36;
    v23(v13, v6);
    LOBYTE(v114[0]) = 2;
    *(v114 + 1) = *v73;
    HIDWORD(v114[0]) = *&v73[3];
    v114[2] = 0;
    v114[1] = 0;
    v114[3] = v58;
    v114[4] = v57;
    v114[5] = v56;
    v114[6] = v55;
    v114[7] = v54;
    v114[8] = v53;
    v114[9] = 0;
    v114[10] = 0xE000000000000000;
    v114[11] = v52;
    v114[12] = v51;
    v114[13] = v50;
    v114[14] = v49;
    v114[15] = v32;
    v114[16] = v34;
    v114[17] = v35;
    v114[18] = v37;
    v114[19] = 7;
    v114[20] = v59;
    v114[21] = MEMORY[0x277D84FA0];
    v118 = 0;
    v116 = 0u;
    v117 = 0u;
    v115 = 0u;
    *v119 = *v72;
    *&v119[3] = *&v72[3];
    v120 = 0u;
    v121 = 0u;
    v122 = 0;
    v123 = v71;
    v124 = v69;
    v125 = v70;
    v127 = 0;
    v126 = 0;
    v128 = 0;
    v129 = 1;
    *v130 = *v68;
    *&v130[3] = *&v68[3];
    v131 = v60;
    v74 = 2;
    *&v75[3] = *&v73[3];
    *v75 = *v73;
    v76 = 0;
    v77 = 0;
    v78 = v58;
    v79 = v57;
    v80 = v56;
    v81 = v55;
    v82 = v54;
    v83 = v53;
    v84 = 0;
    v85 = 0xE000000000000000;
    v86 = v52;
    v87 = v51;
    v88 = v50;
    v89 = v49;
    v90 = v32;
    v91 = v34;
    v92 = v35;
    v93 = v37;
    v94 = 7;
    v95 = v59;
    v96 = MEMORY[0x277D84FA0];
    v100 = 0;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    *v101 = *v72;
    *&v101[3] = *&v72[3];
    v102 = 0u;
    v103 = 0u;
    v104 = 0;
    v105 = v71;
    v106 = v69;
    v107 = v70;
    v109 = 0;
    v108 = 0;
    v110 = 0;
    v111 = 1;
    *v112 = *v68;
    *&v112[3] = *&v68[3];
    v113 = v60;
    sub_21C7AE6B0(v114, v67);
    sub_21C7ADFB8(&v74);
    v38 = swift_allocObject();
    v39 = v61;
    swift_weakInit();
    v40 = swift_allocObject();
    v41 = v66;
    *(v40 + 16) = v38;
    *(v40 + 24) = v41;
    v42 = type metadata accessor for PMAccount(0);
    v43 = v65;
    (*(*(v42 - 8) + 56))(v65, 1, 1, v42);
    v44 = type metadata accessor for PMAccountPickerModel();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v47 = v41;
    sub_21C7A4DA0(v114, 0, sub_21C7B73E8, v40, nullsub_1, 0, v43, nullsub_1, 0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v67[0] = v39;
    sub_21C7B72F8();
    sub_21CB810C4();

    return (*(v64 + 8))(v62, v63);
  }

  return result;
}

uint64_t sub_21C7B647C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29[-v7];
  v9 = type metadata accessor for PMAccount.Storage(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29[-v15];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_21C725C54(a1, v16);
    v19 = type metadata accessor for PMAccount(0);
    if ((*(*(v19 - 8) + 48))(v16, 1, v19) == 1)
    {
      sub_21C7B7380(v16);
    }

    else
    {
      sub_21C7B7408(&v16[*(v19 + 24)], v12);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v21 = *v12;
        sub_21C7190C0(v16, type metadata accessor for PMAccount);
        v22 = sub_21CB858E4();
        (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
        sub_21CB858B4();

        v23 = a3;
        v24 = v21;
        v25 = sub_21CB858A4();
        v26 = swift_allocObject();
        v27 = MEMORY[0x277D85700];
        v26[2] = v25;
        v26[3] = v27;
        v26[4] = v18;
        v26[5] = v23;
        v26[6] = v24;
        sub_21C98B308(0, 0, v8, &unk_21CBA12B8, v26);

        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *&v29[-16] = v18;
        *&v29[-8] = 0;
        v30 = v18;
        sub_21C7B72F8();
        goto LABEL_8;
      }

      sub_21C7190C0(v12, type metadata accessor for PMAccount.Storage);
      sub_21C7190C0(v16, type metadata accessor for PMAccount);
    }

    v20 = swift_getKeyPath();
    MEMORY[0x28223BE20](v20);
    *&v29[-16] = v18;
    *&v29[-8] = 0;
    v30 = v18;
    sub_21C7B72F8();
LABEL_8:
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C7B6870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  sub_21CB858B4();
  v6[6] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x2822009F8](sub_21C7B690C, v8, v7);
}

uint64_t sub_21C7B690C()
{
  v1 = v0[3];
  swift_getKeyPath();
  v0[2] = v1;
  sub_21C7B72F8();
  sub_21CB810D4();

  v0[9] = *(v1 + 16);

  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_21C7B6A00;
  v4 = v0[4];
  v3 = v0[5];

  return sub_21CB51C9C(v4, v3);
}

uint64_t sub_21C7B6A00()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v7 = *v0;

  v4 = *(v1 + 64);
  v5 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_21C7B6B44, v5, v4);
}

uint64_t sub_21C7B6B44()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21C7B6BA4()
{
  v0 = swift_allocObject();
  swift_weakInit();
  sub_21CB858B4();

  v1 = sub_21CB858A4();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D85700];
  v2[2] = v1;
  v2[3] = v3;
  v2[4] = v0;

  v4 = swift_allocObject();
  swift_weakInit();

  v5 = sub_21CB858A4();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);

  return sub_21CB84F64();
}