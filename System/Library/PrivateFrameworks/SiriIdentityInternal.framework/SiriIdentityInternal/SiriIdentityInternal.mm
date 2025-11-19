uint64_t sub_266E530A0()
{
  v1[45] = v0;
  v2 = sub_266E9CFA4();
  v1[46] = v2;
  v3 = *(v2 - 8);
  v1[47] = v3;
  v4 = *(v3 + 64) + 15;
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v5 = type metadata accessor for Signpost.OpenSignpost();
  v1[50] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E5319C, 0, 0);
}

uint64_t sub_266E5319C()
{
  if (qword_2800E8D48 != -1)
  {
    swift_once();
  }

  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[45];
  v4 = qword_2800E92F8;
  v0[52] = qword_2800E92F8;
  v5 = v4;
  sub_266E9CF64();
  sub_266E9D1D4();
  v11 = MEMORY[0x277D84F90];
  LOBYTE(v10) = 2;
  sub_266E9CF44();
  v6 = v1 + *(v2 + 20);
  *v6 = "MafHomeMemberNames";
  *(v6 + 8) = 18;
  *(v6 + 16) = 258;
  v7 = *(v3 + 16);
  v0[2] = v0;
  v0[7] = v0 + 44;
  v0[3] = sub_266E53388;
  v8 = swift_continuation_init();
  v0[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E18, &qword_266E9E358);
  v0[36] = MEMORY[0x277D85DD0];
  v0[37] = 1107296256;
  v0[38] = sub_266E53DA8;
  v0[39] = &block_descriptor;
  v0[40] = v8;
  [v7 homeUserIdToNames_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_266E53388()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 424) = v2;
  if (v2)
  {
    v3 = sub_266E53CAC;
  }

  else
  {
    v3 = sub_266E53498;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_266E53498()
{
  v111 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = sub_266E9CFE4();
  v5 = 0;
  v6 = v2 + 64;
  v104 = v2;
  v7 = -1;
  v8 = -1 << *(v2 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v2 + 64);
  v10 = (63 - v8) >> 6;
  v101 = (v1 + 16);
  v102 = (v1 + 8);
  *&v4 = 136315138;
  v99 = v4;
LABEL_4:
  while (2)
  {
    while (2)
    {
      v11 = v5;
      v105 = v3;
      while (1)
      {
        while (1)
        {
          if (!v9)
          {
            while (1)
            {
              v5 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                __break(1u);
                goto LABEL_43;
              }

              if (v5 >= v10)
              {
                break;
              }

              v9 = *(v6 + 8 * v5);
              ++v11;
              if (v9)
              {
                goto LABEL_10;
              }
            }

            if (qword_2800E8D80 != -1)
            {
              swift_once();
            }

            v66 = v103[48];
            v67 = __swift_project_value_buffer(v103[46], qword_2800EC7E0);
            v75 = OUTLINED_FUNCTION_1(v67, v68, v69, v70, v71, v72, v73, v74, v92, v93, v94, v95, v96, v97, v99, *(&v99 + 1), v101);
            v76(v75);
            v77 = sub_266E9CF84();
            v78 = sub_266E9D194();
            v79 = os_log_type_enabled(v77, v78);
            v80 = v103[48];
            v81 = v103[46];
            if (v79)
            {
              v82 = swift_slowAlloc();
              v3 = swift_slowAlloc();
              v110[0] = v3;
              *v82 = v100;

              v83 = sub_266E9CFD4();
              v85 = v84;

              v86 = sub_266E6E7D4(v83, v85, v110);

              *(v82 + 4) = v86;
              _os_log_impl(&dword_266E51000, v77, v78, "Got these home member names from MAF: %s", v82, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v3);
              OUTLINED_FUNCTION_2();
              MEMORY[0x26D5F66A0](v82, -1, -1);
            }

            (*v102)(v80, v81);
            v87 = v103[51];
            v88 = v103[52];
            sub_266E9D1C4();
            sub_266E9CF54();
            v90 = v103[48];
            v89 = v103[49];
            sub_266E541C0(v103[51]);

            v91 = v103[1];

            v91(v3);
            return;
          }

          v5 = v11;
LABEL_10:
          v12 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v13 = v12 | (v5 << 6);
          v14 = (*(v104 + 48) + 16 * v13);
          v15 = v14[1];
          v107 = *v14;
          v16 = *(*(v104 + 56) + 8 * v13);

          v17 = v16;
          sub_266E54D04(v17);
          if (v18)
          {
            break;
          }

          sub_266E54D10(v17);
          if (v19)
          {
            break;
          }

          v98 = v17;
          if (qword_2800E8D80 != -1)
          {
            swift_once();
          }

          v29 = v103[49];
          v30 = __swift_project_value_buffer(v103[46], qword_2800EC7E0);
          v38 = OUTLINED_FUNCTION_1(v30, v31, v32, v33, v34, v35, v36, v37, v92, v93, v94, v95, v96, v98, v99, *(&v99 + 1), v101);
          v39(v38);

          v40 = sub_266E9CF84();
          v41 = sub_266E9D1A4();

          v42 = os_log_type_enabled(v40, v41);
          v43 = v103[49];
          v44 = v103[46];
          if (v42)
          {
            v3 = swift_slowAlloc();
            v96 = v43;
            v45 = swift_slowAlloc();
            v110[0] = v45;
            *v3 = v99;
            v46 = sub_266E6E7D4(v107, v15, v110);
            v108 = v44;
            v47 = v46;

            *(v3 + 4) = v47;
            _os_log_impl(&dword_266E51000, v40, v41, "Did not get first or nick name for homeUserId=%s", v3, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v45);
            MEMORY[0x26D5F66A0](v45, -1, -1);
            OUTLINED_FUNCTION_2();

            (*v102)(v96, v108);
          }

          else
          {

            (*v102)(v43, v44);
          }

          v11 = v5;
        }

        v20 = sub_266E54D04(v17);
        v22 = v21;
        v23 = sub_266E54D10(v17);
        if (v22 | v24)
        {
          break;
        }

        v25 = v17;
        v3 = v105;
        v26 = sub_266E97FDC(v107, v15);
        v28 = v27;

        if (v28)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v110[0] = v105;
          v50 = *(v105 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E20, &unk_266E9E360);
          sub_266E9D324();
          v3 = v110[0];
          v51 = *(*(v110[0] + 48) + 16 * v26 + 8);

          memcpy(v103 + 10, (v3[7] + 104 * v26), 0x68uLL);
          sub_266E54254((v103 + 10));
          sub_266E9D334();

          goto LABEL_4;
        }

        v11 = v5;
      }

      v48 = v23;
      v49 = v24;
      v97 = v17;
      v109 = MEMORY[0x277D84FA0];
      if (v22)
      {

        sub_266E63CC4(v110, v20, v22);

        if (v49)
        {
          goto LABEL_23;
        }

LABEL_26:
        v48 = 0;
      }

      else
      {
        v20 = 0;
        if (!v24)
        {
          goto LABEL_26;
        }

LABEL_23:

        sub_266E63CC4(v110, v48, v49);
      }

      v94 = v109;
      LODWORD(v96) = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v105;
      v93 = sub_266E97FDC(v107, v15);
      v52 = *(v105 + 16);
      v106 = v53;
      v54 = (v53 & 1) == 0;
      v95 = v52 + v54;
      if (__OFADD__(v52, v54))
      {
        __break(1u);
        goto LABEL_47;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E20, &unk_266E9E360);
      if ((sub_266E9D324() & 1) == 0)
      {
        v57 = v93;
        if ((v106 & 1) == 0)
        {
          break;
        }

        goto LABEL_34;
      }

      v55 = sub_266E97FDC(v107, v15);
      if ((v106 & 1) != (v56 & 1))
      {
LABEL_43:

        sub_266E9D434();
        return;
      }

      v57 = v55;
      if (v106)
      {
LABEL_34:

        v64 = v110[0];
        v65 = (*(v110[0] + 56) + 104 * v57);
        memcpy(v103 + 23, v65, 0x68uLL);
        *v65 = v20;
        v65[1] = v22;
        *(v65 + 1) = 0u;
        *(v65 + 2) = 0u;
        *(v65 + 3) = 0u;
        v65[8] = v48;
        v65[9] = v49;
        v3 = v64;
        v65[10] = 0;
        v65[11] = 0;
        v65[12] = v109;
        sub_266E54254((v103 + 23));

        continue;
      }

      break;
    }

    v58 = v110[0];
    *(v110[0] + 8 * (v57 >> 6) + 64) |= 1 << v57;
    v59 = (*(v58 + 48) + 16 * v57);
    *v59 = v107;
    v59[1] = v15;
    v60 = *(v58 + 56) + 104 * v57;
    *v60 = v20;
    *(v60 + 8) = v22;
    *(v60 + 32) = 0u;
    *(v60 + 48) = 0u;
    *(v60 + 16) = 0u;
    *(v60 + 64) = v48;
    *(v60 + 72) = v49;
    v3 = v58;
    *(v60 + 80) = 0;
    *(v60 + 88) = 0;
    *(v60 + 96) = v109;

    v61 = v3[2];
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (!v62)
    {
      v3[2] = v63;
      continue;
    }

    break;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_266E53CAC()
{
  v1 = v0[52];
  v2 = v0[53];
  v3 = v0[51];
  swift_willThrow();
  v4 = sub_266E9CFE4();

  sub_266E9D1C4();
  sub_266E9CF54();
  v6 = v0[48];
  v5 = v0[49];
  sub_266E541C0(v0[51]);

  v7 = v0[1];

  return v7(v4);
}

uint64_t sub_266E53DA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_266E53E50(v4, v5);
  }

  else
  {
    sub_266E542EC();
    v7 = sub_266E9CFC4();

    return sub_266E53EBC(v4, v7);
  }
}

uint64_t sub_266E53E50(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8E30, &qword_266EA0430);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_266E53EDC()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_266E53F94(uint64_t *a1, uint64_t *a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3(v2);
  return sub_266E9C9A4();
}

uint64_t variable initialization expression of IdentityNLv3Intent.referenceNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DA8, &unk_266E9E2E0);
  OUTLINED_FUNCTION_3(v0);
  return sub_266E9C9A4();
}

uint64_t variable initialization expression of IdentityNLv3Intent.userIdentityNode()
{
  v0 = _s24UserIdentityOntologyNodeCMa();
  OUTLINED_FUNCTION_3(v0);
  return sub_266E7A154();
}

uint64_t variable initialization expression of IdentityNLv3Intent.identityConfirmationNode()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DB0, qword_266E9E610);
  OUTLINED_FUNCTION_3(v0);
  return sub_266E9C9A4();
}

uint64_t sub_266E54110(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_266E541C0(uint64_t a1)
{
  v2 = type metadata accessor for Signpost.OpenSignpost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_266E542EC()
{
  result = qword_2800E8E28;
  if (!qword_2800E8E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E8E28);
  }

  return result;
}

void sub_266E54358(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void OUTLINED_FUNCTION_2()
{

  JUMPOUT(0x26D5F66A0);
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void sub_266E543FC()
{
  v0 = [objc_opt_self() defaultContext];
  v1 = [objc_allocWithZone(MEMORY[0x277CEF3A8]) initWithInstanceContext_];

  qword_2800E91B0 = v1;
}

uint64_t sub_266E54468()
{
  v0 = sub_266E9CFA4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800E8D40 != -1)
  {
    swift_once();
  }

  v5 = qword_2800E91B0;
  if (qword_2800E91B0)
  {
    v6 = qword_2800E91B0;
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v7 = __swift_project_value_buffer(v0, qword_2800EC7E0);
    (*(v1 + 16))(v4, v7, v0);
    v8 = sub_266E9CF84();
    v9 = sub_266E9D1A4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_266E51000, v8, v9, "Did not get AFSettingsConnection", v10, 2u);
      MEMORY[0x26D5F66A0](v10, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }

  return v5;
}

id sub_266E54644()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_266E9D014();
  v3 = sub_266E54D1C(0, 0xE000000000000000, v2, v1);

  v4 = v3;
  v5 = sub_266E9D124();
  [v4 setFullConfidence_];

  v6 = sub_266E9D124();
  [v4 setHighConfidence_];

  v7 = sub_266E9D124();
  [v4 setSetupInProgress_];

  v8 = sub_266E9D124();
  [v4 setIsMultiUserContext_];

  return v4;
}

id sub_266E54758(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91B8, &qword_266E9E430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v48[-v6];
  v8 = sub_266E9BDD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v48[-v15];
  v17 = [objc_allocWithZone(MEMORY[0x277CBDB38]) init];
  sub_266E54C6C(a1, v16);
  v18 = sub_266E9C464();
  if (__swift_getEnumTagSinglePayload(v16, 1, v18) == 1)
  {
    sub_266E54DA8(v16, &qword_2800E91C0, &unk_266E9EC70);
    goto LABEL_6;
  }

  v19 = sub_266E9C454();
  (*(*(v18 - 8) + 8))(v16, v18);
  if (!v19)
  {
LABEL_6:
    sub_266E54E08(v2, &selRef_name);
    if (v24)
    {
      sub_266E9BDE4();
      __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
      (*(v9 + 32))(v12, v7, v8);
      sub_266E9BD94();
      if (v25)
      {
        OUTLINED_FUNCTION_0_0();
        v26 = v17;
        OUTLINED_FUNCTION_4();
        v27 = OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_7(v27, sel_setGivenName_);

        OUTLINED_FUNCTION_8();
        v28 = 1;
      }

      else
      {
        v28 = 0;
      }

      sub_266E9BDB4();
      if (v38)
      {
        OUTLINED_FUNCTION_0_0();
        ++v28;
        v39 = v17;
        OUTLINED_FUNCTION_4();
        v40 = OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_7(v40, sel_setMiddleName_);

        OUTLINED_FUNCTION_8();
      }

      sub_266E9BDA4();
      if (v41)
      {
        OUTLINED_FUNCTION_0_0();
        ++v28;
        v42 = v17;
        OUTLINED_FUNCTION_4();
        v43 = OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_7(v43, sel_setFamilyName_);

        OUTLINED_FUNCTION_8();
      }

      sub_266E9BDC4();
      if (v44)
      {
        OUTLINED_FUNCTION_0_0();
        v45 = v17;
        OUTLINED_FUNCTION_4();
        v46 = OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_7(v46, sel_setNickname_);

        OUTLINED_FUNCTION_8();
        (*(v9 + 8))(v12, v8);
        return v17;
      }

      (*(v9 + 8))(v12, v8);
      if (v28)
      {
        return v17;
      }
    }

    goto LABEL_8;
  }

  sub_266E54E08(v19, &selRef_firstName);
  if (v20)
  {
    OUTLINED_FUNCTION_1_0();

    v21 = v17;
    v22 = OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5(v22, sel_setGivenName_);

    OUTLINED_FUNCTION_2_0();
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  sub_266E54E08(v19, &selRef_middleName);
  if (v29)
  {
    OUTLINED_FUNCTION_1_0();
    ++v23;
    v30 = v17;

    v31 = OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5(v31, sel_setMiddleName_);

    OUTLINED_FUNCTION_2_0();
  }

  sub_266E54E08(v19, &selRef_lastName);
  if (v32)
  {
    OUTLINED_FUNCTION_1_0();
    ++v23;
    v33 = v17;

    v34 = OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5(v34, sel_setFamilyName_);

    OUTLINED_FUNCTION_2_0();
  }

  sub_266E54E08(v19, &selRef_nickName);
  if (v35)
  {
    OUTLINED_FUNCTION_1_0();
    v36 = v17;

    v37 = OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_5(v37, sel_setNickname_);

    OUTLINED_FUNCTION_2_0();
    return v17;
  }

  if (v23)
  {
    return v17;
  }

LABEL_8:

  return 0;
}

uint64_t sub_266E54C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_266E54D1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_266E9D014();

  v7 = [a4 initWithIdentifier:v6 displayString:a3];

  return v7;
}

uint64_t sub_266E54DA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_266E54E08(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_266E9D024();

  return v4;
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return sub_266E9D014();
}

uint64_t OUTLINED_FUNCTION_4()
{
}

id OUTLINED_FUNCTION_5(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_6()
{

  return sub_266E9D014();
}

id OUTLINED_FUNCTION_7(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_8()
{

  return swift_bridgeObjectRelease_n();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_266E54F44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_266E54F98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_266E55008()
{
  v1 = sub_266E55068(v0);
  v2 = sub_266E55130(v0);
  MEMORY[0x26D5F5CB0](v2);

  return v1;
}

uint64_t sub_266E55068(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  sub_266E9D294();

  strcpy(v5, "deviceName: ");
  HIWORD(v5[1]) = -4864;
  MEMORY[0x26D5F5CB0](v2, v1);
  MEMORY[0x26D5F5CB0](2108450, 0xE300000000000000);
  return v5[0];
}

uint64_t sub_266E55130(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  MEMORY[0x26D5F5CB0]();
  MEMORY[0x26D5F5CB0](2108450, 0xE300000000000000);
  return 0x22203A6D6F6F72;
}

uint64_t sub_266E551BC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 6);
  return sub_266E55008();
}

uint64_t sub_266E55200(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = sub_266E9CFA4();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E552D8, 0, 0);
}

uint64_t sub_266E552D8()
{
  v96 = v0;
  if (qword_2800E8D80 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v1 = v0[20];
    v2 = v0[17];
    v3 = v0[14];
    v92 = __swift_project_value_buffer(v0[16], qword_2800EC7E0);
    v91 = *(v2 + 16);
    v91(v1);
    *(v0 + 5) = *(v3 + 24);
    *(v0 + 7) = *(v3 + 40);
    sub_266E56C28((v0 + 5), (v0 + 9));
    sub_266E56C28((v0 + 7), (v0 + 11));
    v4 = sub_266E9CF84();
    v5 = sub_266E9D194();
    sub_266E56C98((v0 + 5));
    sub_266E56C98((v0 + 7));
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[20];
    v8 = v0[16];
    v9 = v0[17];
    if (v6)
    {
      v89 = v0[20];
      v10 = v0[14];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v93 = v12;
      *v11 = 136315138;
      v13 = sub_266E55068(v10);
      v87 = v8;
      v15 = v14;
      v16 = sub_266E55130(v10);
      v94 = v13;
      v95 = v15;
      MEMORY[0x26D5F5CB0](v16);

      v17 = sub_266E6E7D4(v94, v95, &v93);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_266E51000, v4, v5, "#hal Invoking device resolution service with filter: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x26D5F66A0](v12, -1, -1);
      OUTLINED_FUNCTION_0_1();

      v18 = *(v9 + 8);
      v18(v89, v87);
    }

    else
    {

      v18 = *(v9 + 8);
      v18(v7, v8);
    }

    v19 = v0[15];

    sub_266E8ABF4(v20);

    v21 = swift_retain_n();
    v94 = sub_266E56A30(v21);
    sub_266E55DCC(&v94);
    v88 = v18;
    v22 = v0[19];
    v23 = v0[16];

    v24 = v0;
    v25 = v94;
    v24[13] = v94;
    (v91)(v22, v92, v23);
    v26 = sub_266E9CF84();
    v27 = sub_266E9D194();
    v28 = os_log_type_enabled(v26, v27);
    v29 = v24[19];
    v31 = v24[16];
    v30 = v24[17];
    v90 = v24;
    if (v28)
    {
      v86 = v24[19];
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v94 = v33;
      *v32 = 134218242;
      *(v32 + 4) = sub_266E8A854(v25);
      *(v32 + 12) = 2080;

      v35 = sub_266E8A01C(v34);
      v37 = v36;
      v38 = v25;

      v39 = sub_266E6E7D4(v35, v37, &v94);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_266E51000, v26, v27, "#hal %ld device(s): %s", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x26D5F66A0](v33, -1, -1);
      OUTLINED_FUNCTION_0_1();

      v40 = v86;
    }

    else
    {
      v38 = v25;

      v40 = v29;
    }

    v88(v40, v31);
    v0 = v90;
    v41 = v90[8];
    v42 = MEMORY[0x277D84F90];
    if (!v41)
    {
      break;
    }

    v43 = v90[7];
    v94 = MEMORY[0x277D84F90];
    v44 = sub_266E8B274(v38);

    for (i = 0; ; ++i)
    {
      if (v44 == i)
      {

        v53 = v94;
        swift_beginAccess();
        v90[13] = v53;

        v38 = v53;
        v42 = MEMORY[0x277D84F90];
        goto LABEL_27;
      }

      if ((v38 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x26D5F5ED0](i, v38);
      }

      else
      {
        if (i >= *(v38 + 16))
        {
          goto LABEL_53;
        }

        v46 = *(v38 + 8 * i + 32);
      }

      v47 = v46;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v48 = sub_266E9CE94();
      if (!v49)
      {
        goto LABEL_21;
      }

      if (v48 == v43 && v49 == v41)
      {
      }

      else
      {
        v51 = sub_266E9D3E4();

        if ((v51 & 1) == 0)
        {
LABEL_21:

          continue;
        }
      }

      sub_266E9D2C4();
      v52 = *(v94 + 16);
      OUTLINED_FUNCTION_1_1();
      sub_266E9D2F4();
      OUTLINED_FUNCTION_1_1();
      sub_266E9D304();
      sub_266E9D2D4();
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

LABEL_27:
  v54 = v90[6];
  if (!v54)
  {
    goto LABEL_46;
  }

  v0 = v90[5];
  v94 = v42;
  v55 = sub_266E8B274(v38);
  v56 = v38 & 0xC000000000000001;
  v57 = v38;
  v58 = v38 & 0xFFFFFFFFFFFFFF8;
  v59 = v57;

  v60 = 0;
  while (2)
  {
    if (v55 != v60)
    {
      if (v56)
      {
        v61 = MEMORY[0x26D5F5ED0](v60, v59);
      }

      else
      {
        if (v60 >= *(v58 + 16))
        {
          goto LABEL_55;
        }

        v61 = *(v59 + 8 * v60 + 32);
      }

      v62 = v61;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_54;
      }

      v63 = sub_266E9CE84();
      if (v64)
      {
        if (v63 == v0 && v64 == v54)
        {
        }

        else
        {
          v66 = sub_266E9D3E4();

          if ((v66 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        sub_266E9D2C4();
        v67 = *(v94 + 16);
        OUTLINED_FUNCTION_1_1();
        sub_266E9D2F4();
        OUTLINED_FUNCTION_1_1();
        sub_266E9D304();
        sub_266E9D2D4();
      }

      else
      {
LABEL_40:
      }

      ++v60;
      continue;
    }

    break;
  }

  swift_bridgeObjectRelease_n();
  v38 = v94;
  v0 = v90;
LABEL_46:
  (v91)(v0[18], v92, v0[16]);

  v68 = sub_266E9CF84();
  v69 = sub_266E9D194();
  v70 = os_log_type_enabled(v68, v69);
  v71 = v38;
  v73 = v0[17];
  v72 = v0[18];
  v74 = v0[16];
  if (v70)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v94 = v76;
    *v75 = 134218242;
    *(v75 + 4) = sub_266E8A854(v71);
    *(v75 + 12) = 2080;
    v77 = sub_266E8A01C(v71);
    v79 = v78;

    v80 = sub_266E6E7D4(v77, v79, &v94);

    *(v75 + 14) = v80;
    _os_log_impl(&dword_266E51000, v68, v69, "#hal %ld device(s) match provided filter: %s", v75, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v76);
    OUTLINED_FUNCTION_0_1();
    MEMORY[0x26D5F66A0](v75, -1, -1);
  }

  else
  {
  }

  v88(v72, v74);
  v82 = v90[19];
  v81 = v90[20];
  v83 = v90[18];

  v84 = v90[1];

  return v84(v71);
}

uint64_t sub_266E55AB0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_266E9CEB4();
      result = sub_266E9D0F4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_266E55B0C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91E0, &qword_266E9E4E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_266E8AA90((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_266E55CC4(uint64_t result, int64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  v10 = result;
  if (a3)
  {
    v11 = *(a4 + 24);
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if ((v12 + 0x4000000000000000) < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = *(a4 + 16);
  v14 = a5(v13, v12);
  v15 = *(a6(0) - 8);
  if (v10)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    a7(a4 + v16, v13, v14 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v14;
}

uint64_t sub_266E55DCC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_266E56DAC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_266E55E48(v6);
  return sub_266E9D2D4();
}

void sub_266E55E48(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_266E9D3C4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_266E55AB0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_266E56024(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_266E55F28(0, v3, 1, a1);
  }
}

void sub_266E55F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v18 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        sub_266E9CEA4();
        sub_266E9CEA4();
        v13 = sub_266E9CF34();
        v14 = sub_266E9CF34();

        if (v14 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v15 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v15;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v18 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_266E56024(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_92:
    v112 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v93 = (v8 + 16);
      v94 = *(v8 + 16);
      while (v94 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v95 = v8;
        v96 = (v8 + 16 * v94);
        v97 = *v96;
        v98 = &v93[2 * v94];
        v8 = v98[1];
        sub_266E566CC((*a3 + 8 * *v96), (*a3 + 8 * *v98), (*a3 + 8 * v8), v112);
        if (v5)
        {
          break;
        }

        if (v8 < v97)
        {
          goto LABEL_118;
        }

        if (v94 - 2 >= *v93)
        {
          goto LABEL_119;
        }

        *v96 = v97;
        v96[1] = v8;
        v99 = *v93 - v94;
        if (*v93 < v94)
        {
          goto LABEL_120;
        }

        v94 = *v93 - 1;
        memmove(v98, v98 + 2, 16 * v99);
        *v93 = v94;
        v8 = v95;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_266E5691C(v8);
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if ((v7 + 1) < v6)
    {
      v101 = v5;
      v103 = v8;
      v11 = (*a3 + 8 * v7);
      v12 = v7;
      v13 = 8 * v7;
      v15 = *v11;
      v14 = v11 + 2;
      v112 = v6;
      v5 = *(*a3 + 8 * v10);
      v16 = v10;
      v17 = v15;
      sub_266E9CEA4();
      sub_266E9CEA4();
      v109 = sub_266E9CF34();
      v108 = sub_266E9CF34();

      v18 = v112;
      v10 = v16;
      v105 = v12;
      v19 = v12 + 2;
      while (1)
      {
        v20 = v19;
        v21 = v10 + 1;
        if (v21 >= v18)
        {
          break;
        }

        v22 = *(v14 - 1);
        v23 = v21;
        v24 = *v14;
        v5 = v22;
        sub_266E9CEA4();
        sub_266E9CEA4();
        v25 = sub_266E9CF34();
        v26 = sub_266E9CF34();

        v10 = v23;
        v18 = v112;
        ++v14;
        v19 = (v20 + 1);
        if (v108 < v109 == v26 >= v25)
        {
          goto LABEL_9;
        }
      }

      v10 = v18;
LABEL_9:
      if (v108 >= v109)
      {
        v5 = v101;
        v8 = v103;
      }

      else
      {
        v8 = v103;
        v27 = v105;
        if (v10 < v105)
        {
          goto LABEL_124;
        }

        if (v105 >= v10)
        {
          v5 = v101;
          v9 = v105;
          goto LABEL_24;
        }

        if (v18 >= v20)
        {
          v28 = v20;
        }

        else
        {
          v28 = v18;
        }

        v29 = 8 * v28 - 8;
        v30 = v10;
        v5 = v101;
        do
        {
          if (v27 != --v30)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_131;
            }

            v32 = *(v31 + v13);
            *(v31 + v13) = *(v31 + v29);
            *(v31 + v29) = v32;
          }

          ++v27;
          v29 -= 8;
          v13 += 8;
        }

        while (v27 < v30);
      }

      v9 = v105;
    }

LABEL_24:
    v33 = a3[1];
    if (v10 < v33)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_123;
      }

      if (&v10[-v9] < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v10 < v9)
    {
      goto LABEL_122;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_266E55B0C(0, *(v8 + 16) + 1, 1, v8);
    }

    v49 = *(v8 + 16);
    v48 = *(v8 + 24);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v8 = sub_266E55B0C(v48 > 1, v49 + 1, 1, v8);
    }

    *(v8 + 16) = v50;
    v51 = v8 + 32;
    v52 = (v8 + 32 + 16 * v49);
    *v52 = v9;
    v52[1] = v10;
    v111 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    v112 = v10;
    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        v54 = (v51 + 16 * (v50 - 1));
        v55 = (v8 + 16 * v50);
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v56 = *(v8 + 32);
          v57 = *(v8 + 40);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_60:
          if (v59)
          {
            goto LABEL_109;
          }

          v71 = *v55;
          v70 = v55[1];
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_112;
          }

          v75 = v54[1];
          v76 = v75 - *v54;
          if (__OFSUB__(v75, *v54))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v73, v76))
          {
            goto LABEL_117;
          }

          if (v73 + v76 >= v58)
          {
            if (v58 < v76)
            {
              v53 = v50 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v50 < 2)
        {
          goto LABEL_111;
        }

        v78 = *v55;
        v77 = v55[1];
        v66 = __OFSUB__(v77, v78);
        v73 = v77 - v78;
        v74 = v66;
LABEL_75:
        if (v74)
        {
          goto LABEL_114;
        }

        v80 = *v54;
        v79 = v54[1];
        v66 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v66)
        {
          goto LABEL_116;
        }

        if (v81 < v73)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v85 = v8;
        v86 = (v51 + 16 * (v53 - 1));
        v87 = *v86;
        v88 = v51;
        v89 = v53;
        v8 = v51 + 16 * v53;
        v90 = *(v8 + 8);
        sub_266E566CC((*a3 + 8 * *v86), (*a3 + 8 * *v8), (*a3 + 8 * v90), v111);
        if (v5)
        {
          goto LABEL_102;
        }

        if (v90 < v87)
        {
          goto LABEL_104;
        }

        v5 = *(v85 + 16);
        if (v89 > v5)
        {
          goto LABEL_105;
        }

        *v86 = v87;
        v86[1] = v90;
        if (v89 >= v5)
        {
          goto LABEL_106;
        }

        v91 = v89;
        v50 = (v5 - 1);
        memmove(v8, (v8 + 16), 16 * &v5[-v91 - 1]);
        v8 = v85;
        *(v85 + 16) = v5 - 1;
        v92 = v5 > 2;
        v5 = 0;
        v51 = v88;
        if (!v92)
        {
          goto LABEL_89;
        }
      }

      v60 = v51 + 16 * v50;
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_107;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_108;
      }

      v67 = v55[1];
      v68 = v67 - *v55;
      if (__OFSUB__(v67, *v55))
      {
        goto LABEL_110;
      }

      v66 = __OFADD__(v58, v68);
      v69 = v58 + v68;
      if (v66)
      {
        goto LABEL_113;
      }

      if (v69 >= v63)
      {
        v83 = *v54;
        v82 = v54[1];
        v66 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v66)
        {
          goto LABEL_121;
        }

        if (v58 < v84)
        {
          v53 = v50 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v6 = a3[1];
    v7 = v112;
    if (v112 >= v6)
    {
      goto LABEL_92;
    }
  }

  v34 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_125;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v10 == v34)
  {
    goto LABEL_40;
  }

  v102 = v5;
  v104 = v8;
  v35 = *a3;
  v36 = *a3 + 8 * v10 - 8;
  v106 = v9;
  v37 = v9 - v10;
  v110 = v34;
LABEL_33:
  v112 = v10;
  v38 = *(v35 + 8 * v10);
  v39 = v37;
  v40 = v36;
  while (1)
  {
    v41 = *v40;
    v42 = v38;
    v43 = v41;
    sub_266E9CEA4();
    sub_266E9CEA4();
    v44 = sub_266E9CF34();
    v45 = sub_266E9CF34();

    if (v45 >= v44)
    {
LABEL_38:
      v10 = v112 + 1;
      v36 += 8;
      --v37;
      if (v112 + 1 == v110)
      {
        v10 = v110;
        v5 = v102;
        v8 = v104;
        v9 = v106;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (!v35)
    {
      break;
    }

    v46 = *v40;
    v38 = *(v40 + 8);
    *v40 = v38;
    *(v40 + 8) = v46;
    v40 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_266E566CC(char *a1, char *a2, id *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_266E8AA70(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    for (i = v5; ; v5 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v7;
      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      sub_266E9CEA4();
      sub_266E9CEA4();
      v16 = sub_266E9CF34();
      v17 = sub_266E9CF34();

      if (v17 >= v16)
      {
        break;
      }

      v18 = v6;
      v19 = v12;
      v20 = v12 == v6++;
      if (!v20)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 = (v19 + 1);
    }

    v18 = v4;
    v19 = v12;
    v20 = v12 == v4++;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v19 = *v18;
    goto LABEL_13;
  }

  sub_266E8AA70(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
  v35 = v7;
  v36 = v4;
LABEL_15:
  v21 = v6 - 1;
  v22 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v24 = v22;
    v25 = v21;
    v26 = *v21;
    v27 = *(v10 - 1);
    v28 = v26;
    sub_266E9CEA4();
    sub_266E9CEA4();
    v29 = sub_266E9CF34();
    v30 = sub_266E9CF34();

    v5 = v24;
    v31 = v24 + 1;
    if (v30 < v29)
    {
      v20 = v31 == v6;
      v6 = v25;
      v7 = v35;
      v4 = v36;
      if (!v20)
      {
        *v5 = *v25;
        v6 = v25;
      }

      goto LABEL_15;
    }

    if (v10 != v31)
    {
      *v24 = *(v10 - 1);
    }

    v22 = v24 - 1;
    --v10;
    v7 = v35;
    v4 = v36;
    v21 = v25;
  }

LABEL_28:
  v32 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v32])
  {
    memmove(v6, v4, 8 * v32);
  }

  return 1;
}

char *sub_266E56930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91E0, &qword_266E9E4E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_266E56A30(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_266E9D354();
    if (v4)
    {
      v5 = v4;
      v2 = sub_266E8A87C(v4, 0);
      sub_266E56AC4((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_266E56AC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_266E9D354();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_266E8A854(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_266E9CEB4();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_266E56D00();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91D0, &qword_266E9E4E0);
          v9 = sub_266E8AFB4(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_266E56C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C8, &unk_266E9ED50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E56C98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C8, &unk_266E9ED50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266E56D00()
{
  result = qword_2800E91D8;
  if (!qword_2800E91D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800E91D0, &qword_266E9E4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E91D8);
  }

  return result;
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

void OUTLINED_FUNCTION_0_1()
{

  JUMPOUT(0x26D5F66A0);
}

uint64_t IdentityNLv3Intent.domainOntologyNode.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t IdentityNLv3Intent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IdentityNLv3Intent() + 20);
  v4 = sub_266E9CC74();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for IdentityNLv3Intent()
{
  result = qword_2800E91F0;
  if (!qword_2800E91F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E56F74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = type metadata accessor for IdentityNLv3Intent();
  v4 = v3[6];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8D98, &unk_266E9E2D0);
  OUTLINED_FUNCTION_3(v30);
  v5 = sub_266E9C9A4();
  *(a2 + v4) = v5;
  v29 = v5;
  v6 = v3[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DA0, "0O");
  OUTLINED_FUNCTION_3(v7);

  v8 = sub_266E9C9A4();
  *(a2 + v6) = v8;
  v28 = v8;
  v9 = v3[8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DA8, &unk_266E9E2E0);
  OUTLINED_FUNCTION_3(v10);

  v11 = sub_266E9C9A4();
  *(a2 + v9) = v11;
  v27 = v11;
  v12 = v3[9];
  v13 = _s24UserIdentityOntologyNodeCMa();
  OUTLINED_FUNCTION_3(v13);

  v14 = sub_266E7A154();
  *(a2 + v12) = v14;
  v15 = v3[10];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E8DB0, qword_266E9E610);
  OUTLINED_FUNCTION_3(v16);

  v17 = sub_266E9C9A4();
  *(a2 + v15) = v17;
  v18 = v3[5];
  v19 = sub_266E9CC74();
  v20 = *(v19 - 8);
  (*(v20 + 16))(a2 + v18, a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9230, &unk_266E9F880);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_266E9E500;
  *(v21 + 56) = v30;
  *(v21 + 64) = sub_266E57FE8(&qword_2800E9238, &qword_2800E8D98, &unk_266E9E2D0);
  *(v21 + 32) = v29;
  *(v21 + 96) = v7;
  *(v21 + 104) = sub_266E57FE8(&qword_2800E9240, &qword_2800E8DA0, "0O");
  *(v21 + 72) = v28;
  *(v21 + 136) = v10;
  v22 = sub_266E57FE8(&qword_2800E9248, &qword_2800E8DA8, &unk_266E9E2E0);
  v23 = MEMORY[0x277D5E210];
  *(v21 + 112) = v27;
  *(v21 + 176) = v13;
  *(v21 + 184) = v23;
  *(v21 + 144) = v22;
  *(v21 + 152) = v14;
  *(v21 + 216) = v16;
  *(v21 + 224) = sub_266E57FE8(&qword_2800E9250, &qword_2800E8DB0, qword_266E9E610);
  *(v21 + 192) = v17;
  v24 = sub_266E9C994();
  OUTLINED_FUNCTION_3(v24);

  v25 = sub_266E9C984();
  result = (*(v20 + 8))(a1, v19);
  *a2 = v25;
  return result;
}

uint64_t sub_266E57308(void *a1)
{
  v2 = *(*(v1 + *(type metadata accessor for IdentityNLv3Intent() + 36)) + *a1);
  OUTLINED_FUNCTION_0_2(&qword_2800E9580);

  sub_266E9CAC4();

  return v4;
}

uint64_t sub_266E57394()
{
  v1 = *(v0 + *(type metadata accessor for IdentityNLv3Intent() + 40));
  OUTLINED_FUNCTION_0_2(&qword_2800E9580);
  sub_266E9CAC4();
  return v3;
}

uint64_t sub_266E573F8()
{
  if (sub_266E5742C())
  {
    return 2;
  }

  if (sub_266E5761C())
  {
    return 1;
  }

  return 3;
}

uint64_t sub_266E5742C()
{
  v1 = type metadata accessor for IdentityNLv3Intent();
  v2 = *(v0 + *(v1 + 24));
  sub_266E5803C(&qword_2800E9580);
  sub_266E9CAC4();
  if (v15 == 6)
  {
    goto LABEL_2;
  }

  if (IdentityVerb.rawValue.getter(v15) == 0x796669646F6DLL && v4 == 0xE600000000000000)
  {

    goto LABEL_11;
  }

  v6 = sub_266E9D3E4();

  if ((v6 & 1) == 0)
  {
LABEL_2:
    sub_266E9CAC4();
    if (v14 != 6)
    {
      return 0;
    }
  }

LABEL_11:
  v7 = *(v0 + *(v1 + 28));
  v8 = sub_266E9CAD4();
  v9 = *(v8 + 16);
  v10 = (v8 + 32);
  while (2)
  {
    v11 = v9-- != 0;
    v3 = v11;
    if (v11)
    {
      switch(*v10)
      {
        case 3:

          break;
        default:
          v12 = sub_266E9D3E4();

          ++v10;
          if ((v12 & 1) == 0)
          {
            continue;
          }

          break;
      }
    }

    break;
  }

  return v3;
}

uint64_t sub_266E5761C()
{
  v1 = type metadata accessor for IdentityNLv3Intent();
  v2 = *(v0 + *(v1 + 24));
  sub_266E5803C(&qword_2800E9580);
  sub_266E9CAC4();
  if (v18 != 6)
  {
    if (IdentityVerb.rawValue.getter(v18) == 0x796669746E656469 && v4 == 0xE800000000000000)
    {
LABEL_16:

      goto LABEL_17;
    }

    v6 = sub_266E9D3E4();

    if (v6)
    {
      goto LABEL_17;
    }
  }

  sub_266E9CAC4();
  if (v17 == 6)
  {
    return 0;
  }

  if (IdentityVerb.rawValue.getter(v17) == 0x74736575516B7361 && v7 == 0xEB000000006E6F69)
  {
    goto LABEL_16;
  }

  v9 = sub_266E9D3E4();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v10 = *(v0 + *(v1 + 28));
  v11 = sub_266E9CAD4();
  v12 = *(v11 + 16);
  v13 = (v11 + 32);
  while (2)
  {
    v14 = v12-- != 0;
    v3 = v14;
    if (v14)
    {
      switch(*v13)
      {
        case 1:
        case 2:
        case 3:
          v15 = sub_266E9D3E4();

          ++v13;
          if ((v15 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }
    }

    break;
  }

  return v3;
}

BOOL sub_266E57868()
{
  v1 = *(v0 + *(type metadata accessor for IdentityNLv3Intent() + 28));
  OUTLINED_FUNCTION_0_2(&qword_2800E9580);
  v2 = sub_266E9CAD4();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (2)
  {
    v5 = v3;
    if (v3-- != 0)
    {
      switch(*v4)
      {
        case 1:
        case 2:
        case 3:
          v7 = sub_266E9D3E4();

          ++v4;
          if ((v7 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }
    }

    break;
  }

  return v5 != 0;
}

uint64_t sub_266E5799C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_266E9CC74();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_266E57A84(uint64_t a1)
{
  v2 = sub_266E5803C(&qword_2800E9258);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_266E57AEC(uint64_t a1)
{
  v2 = sub_266E5803C(&qword_2800E9258);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_266E57B44(uint64_t a1)
{
  v2 = sub_266E5803C(&qword_2800E9258);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_266E57BB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266E9CC74();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_266E57C4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_266E9CC74();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_266E57CCC()
{
  sub_266E9C994();
  if (v0 <= 0x3F)
  {
    sub_266E9CC74();
    if (v1 <= 0x3F)
    {
      sub_266E57F34(319, &qword_2800E9200, sub_266E57E34);
      if (v2 <= 0x3F)
      {
        sub_266E57F34(319, &qword_2800E9208, sub_266E57E88);
        if (v3 <= 0x3F)
        {
          sub_266E57EDC();
          if (v4 <= 0x3F)
          {
            _s24UserIdentityOntologyNodeCMa();
            if (v5 <= 0x3F)
            {
              sub_266E57F34(319, &qword_2800E9220, sub_266E57F94);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_266E57E34()
{
  result = qword_2800E9650;
  if (!qword_2800E9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9650);
  }

  return result;
}

unint64_t sub_266E57E88()
{
  result = qword_2800E9210;
  if (!qword_2800E9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9210);
  }

  return result;
}

void sub_266E57EDC()
{
  if (!qword_2800E9218)
  {
    v0 = sub_266E9C9B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2800E9218);
    }
  }
}

void sub_266E57F34(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_266E9C9B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_266E57F94()
{
  result = qword_2800E9228;
  if (!qword_2800E9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E9228);
  }

  return result;
}

uint64_t sub_266E57FE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266E5803C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IdentityNLv3Intent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_2(unint64_t *a1)
{

  return sub_266E5803C(a1);
}

uint64_t sub_266E580A4()
{
  v0 = sub_266E9CFA4();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v9 = __swift_project_value_buffer(v0, qword_2800EC7E0);
  (*(v3 + 16))(v8, v9, v0);
  v10 = sub_266E9CF84();
  v11 = sub_266E9D194();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_5_0();
    *v12 = 0;
    _os_log_impl(&dword_266E51000, v10, v11, "EstablishUserFlowStrategy.actionForInput() called", v12, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v13 = *(v3 + 8);
  v14 = OUTLINED_FUNCTION_6_0();
  v15(v14);
  return sub_266E9C384();
}

uint64_t sub_266E5820C(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_266E9C7E4();
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = sub_266E9CFA4();
  v1[17] = v5;
  v6 = *(v5 - 8);
  v1[18] = v6;
  v7 = *(v6 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E58358, 0, 0);
}

uint64_t sub_266E58358()
{
  v88 = v0;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v3 = __swift_project_value_buffer(*(v0 + 136), qword_2800EC7E0);
  v4 = *(v2 + 16);
  v5 = OUTLINED_FUNCTION_6_0();
  v4(v5);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    *v8 = 0;
    _os_log_impl(&dword_266E51000, v6, v7, "EstablishUserFlowStrategy.makeIntentFromParse() called", v8, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  v12 = *(v0 + 96);

  v13 = *(v11 + 8);
  v13(v9, v10);
  sub_266E7B898(v12, v0 + 56);
  v14 = *(v0 + 136);
  if (!*(v0 + 80))
  {
    v86 = v13;
    v36 = *(v0 + 152);
    v37 = *(v0 + 128);
    v38 = *(v0 + 104);
    v39 = *(v0 + 112);
    v40 = *(v0 + 96);
    sub_266E59548(v0 + 56);
    v41 = OUTLINED_FUNCTION_6_0();
    v4(v41);
    v42 = *(v39 + 16);
    v42(v37, v40, v38);
    v43 = sub_266E9CF84();
    v44 = sub_266E9D1A4();
    v45 = os_log_type_enabled(v43, v44);
    v47 = *(v0 + 144);
    v46 = *(v0 + 152);
    v49 = *(v0 + 128);
    v48 = *(v0 + 136);
    if (v45)
    {
      v84 = *(v0 + 144);
      v85 = *(v0 + 136);
      v50 = *(v0 + 112);
      v51 = *(v0 + 120);
      v52 = *(v0 + 104);
      v83 = *(v0 + 152);
      v53 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v87 = v82;
      *v53 = 136315138;
      v42(v51, v49, v52);
      v54 = sub_266E9D034();
      v55 = v44;
      v57 = v56;
      (*(v50 + 8))(v49, v52);
      v58 = sub_266E6E7D4(v54, v57, &v87);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_266E51000, v43, v55, "Unable to make intent from parse %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();

      v59 = v83;
      v60 = v85;
    }

    else
    {
      v70 = *(v0 + 104);
      v69 = *(v0 + 112);

      (*(v69 + 8))(v49, v70);
      v59 = v46;
      v60 = v48;
    }

    v86(v59, v60);
    type metadata accessor for IdentityFlowError();
    swift_allocObject();
    v71 = sub_266E89698(0);
    OUTLINED_FUNCTION_1_2();
    sub_266E595B0(v72, 255, v73);
    swift_allocError();
    *v74 = v71;
    swift_willThrow();
LABEL_19:
    v76 = *(v0 + 168);
    v75 = *(v0 + 176);
    v78 = *(v0 + 152);
    v77 = *(v0 + 160);
    v80 = *(v0 + 120);
    v79 = *(v0 + 128);

    v81 = *(v0 + 8);

    return v81();
  }

  v15 = *(v0 + 168);
  sub_266E595F8((v0 + 56), v0 + 16);
  type metadata accessor for UserIdentifyIntent();
  v16 = sub_266E68014((v0 + 16));
  (v4)(v15, v3, v14);
  v17 = sub_266E9CF84();
  v18 = sub_266E9D194();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_5_0();
    *v19 = 0;
    _os_log_impl(&dword_266E51000, v17, v18, "Finished creating intent from parse", v19, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  v20 = *(v0 + 168);
  v21 = *(v0 + 136);
  v22 = *(v0 + 144);

  v13(v20, v21);
  if ([v16 caseType] == 4)
  {
    v23 = *(v0 + 160);
    v24 = *(v0 + 136);
    v25 = OUTLINED_FUNCTION_6_0();
    v4(v25);
    v26 = sub_266E9CF84();
    v27 = sub_266E9D1A4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_5_0();
      *v28 = 0;
      _os_log_impl(&dword_266E51000, v26, v27, "Unsupported Intent Case Type", v28, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    v29 = *(v0 + 160);
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);

    v13(v29, v30);
    type metadata accessor for IdentityFlowError();
    swift_allocObject();
    v32 = sub_266E89698(0);
    OUTLINED_FUNCTION_1_2();
    sub_266E595B0(v33, 255, v34);
    swift_allocError();
    *v35 = v32;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_19;
  }

  v62 = *(v0 + 168);
  v61 = *(v0 + 176);
  v64 = *(v0 + 152);
  v63 = *(v0 + 160);
  v66 = *(v0 + 120);
  v65 = *(v0 + 128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v67 = *(v0 + 8);

  return v67(v16);
}

uint64_t sub_266E589DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E58A70;

  return sub_266E5820C(a1);
}

uint64_t sub_266E58A70(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_266E58B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for EstablishUserFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_266E58BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266E59610;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_266E58C84(uint64_t a1, void *a2)
{
  v3 = sub_266E9C1D4();
  v4 = OUTLINED_FUNCTION_2_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = sub_266E9CFA4();
  v13 = OUTLINED_FUNCTION_2_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v21 = __swift_project_value_buffer(v12, qword_2800EC7E0);
  (*(v15 + 16))(v20, v21, v12);
  v22 = sub_266E9CF84();
  v23 = sub_266E9D194();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_5_0();
    *v24 = 0;
    _os_log_impl(&dword_266E51000, v22, v23, "EstablishUserIntentExecutionBehaviorStrategy.makeIntentExecutionBehavior", v24, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  (*(v15 + 8))(v20, v12);
  sub_266E9C254();
  v25 = objc_allocWithZone(type metadata accessor for EstablishUserIntentHandler());

  [v25 init];
  type metadata accessor for UserIdentifyIntent();
  v26 = a2;
  sub_266E9C1C4();
  v27 = sub_266E9C244();
  (*(v6 + 8))(v11, v3);
  return v27;
}

uint64_t sub_266E58F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for EstablishUserFlowStrategy();
  *v11 = v5;
  v11[1] = sub_266E59610;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_266E58FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for EstablishUserFlowStrategy();
  *v11 = v5;
  v11[1] = sub_266E59610;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_266E5909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for EstablishUserFlowStrategy();
  *v11 = v5;
  v11[1] = sub_266E59610;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_266E59168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for EstablishUserFlowStrategy();
  *v13 = v6;
  v13[1] = sub_266E59244;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_266E59244()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_266E59338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for EstablishUserFlowStrategy();
  *v13 = v6;
  v13[1] = sub_266E59610;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_266E59414(uint64_t a1, void *a2)
{
  v3 = sub_266E58C84(a1, a2);
  v4 = *(v2 + 8);

  return v4(v3);
}

uint64_t sub_266E59548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800E9590, &unk_266E9EC80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E595B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_266E595F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_0()
{

  JUMPOUT(0x26D5F66A0);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_slowAlloc();
}

uint64_t sub_266E596AC(uint64_t a1)
{
  v2 = sub_266E9CFA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v37 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v13 = [objc_allocWithZone(type metadata accessor for SwitchProfileIntent()) init];
  if (!a1)
  {
    if (qword_2800E8D88 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v26 = __swift_project_value_buffer(v2, qword_2800EC7F8);
    (*(v3 + 16))(v7, v26, v2);
    v27 = sub_266E9CF84();
    v28 = sub_266E9D1A4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_266E51000, v27, v28, "Either the homeUserId or name must be provided", v29, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    (*(v3 + 8))(v7, v2);
    goto LABEL_27;
  }

  v14 = v13;
  sub_266E95904(0x696669746E656469, 0xEA00000000007265, a1, v41);
  if (!v42)
  {
    sub_266E59C2C(v41);
    goto LABEL_6;
  }

  if ((OUTLINED_FUNCTION_1_3() & 1) == 0)
  {
LABEL_6:
    sub_266E95904(1701667182, 0xE400000000000000, a1, v41);
    if (v42)
    {
      if (OUTLINED_FUNCTION_1_3())
      {
        sub_266E68758(v39, v40, v14);
        v15 = 2;
        goto LABEL_9;
      }

      v30 = v3;
      v31 = v2;
    }

    else
    {
      v30 = v3;
      v31 = v2;
      sub_266E59C2C(v41);
    }

    if (qword_2800E8D88 != -1)
    {
      OUTLINED_FUNCTION_0_4();
      swift_once();
    }

    v32 = __swift_project_value_buffer(v31, qword_2800EC7F8);
    v33 = v31;
    (*(v30 + 16))(v12, v32, v31);
    v34 = sub_266E9CF84();
    v35 = sub_266E9D1A4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_266E51000, v34, v35, "Either the homeUserId or name must be provided", v36, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    (*(v30 + 8))(v12, v33);
LABEL_27:
    result = sub_266E9D374();
    __break(1u);
    return result;
  }

  sub_266E60C54(v39, v40, v14);
  v15 = 1;
LABEL_9:

  if (qword_2800E8D88 != -1)
  {
    OUTLINED_FUNCTION_0_4();
    swift_once();
  }

  v16 = __swift_project_value_buffer(v2, qword_2800EC7F8);
  (*(v3 + 16))(v10, v16, v2);
  v17 = sub_266E9CF84();
  v18 = sub_266E9D194();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38 = v2;
    v21 = v20;
    v41[0] = v20;
    *v19 = 136315138;
    v22 = SwitchType.description.getter();
    v24 = sub_266E6E7D4(v22, v23, v41);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_266E51000, v17, v18, "Setting switchType with %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_0();

    (*(v3 + 8))(v10, v38);
  }

  else
  {

    (*(v3 + 8))(v10, v2);
  }

  [v14 setSwitchType_];
  return v14;
}

uint64_t sub_266E59C2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9278, &qword_266E9F5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_dynamicCast();
}

uint64_t sub_266E59D00(unsigned __int8 a1)
{
  sub_266E9D484();
  MEMORY[0x26D5F60C0](a1);
  return sub_266E9D4A4();
}

uint64_t sub_266E59D64()
{
  v1 = *v0;
  sub_266E9D484();
  MEMORY[0x26D5F60C0](v1);
  return sub_266E9D4A4();
}

uint64_t sub_266E59DA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  v2 = OUTLINED_FUNCTION_19(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = OUTLINED_FUNCTION_22();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v5);
  sub_266E9C7F4();
  sub_266E9C6D4();
  v6 = type metadata accessor for BaseDialogProvider();
  v7 = swift_allocObject();
  v8 = sub_266E9CED4();
  v9 = sub_266E9CEC4();
  v36[3] = v6;
  v36[4] = &off_287876528;
  v36[0] = v7;
  v34 = v8;
  v35 = MEMORY[0x277D61F10];
  *&v33 = v9;
  v32[3] = &type metadata for IdentityFlowFactoryImpl;
  v32[4] = &off_2878767E8;
  v30 = &type metadata for IdentityFeatureFlagsProvider;
  v31 = &protocol witness table for IdentityFeatureFlagsProvider;
  v10 = type metadata accessor for SwitchProfileWrapperFlow();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v36, v6);
  OUTLINED_FUNCTION_3_2();
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_1();
  v19 = (v18 - v17);
  (*(v20 + 16))(v18 - v17);
  __swift_mutable_project_boxed_opaque_existential_1(v32, &type metadata for IdentityFlowFactoryImpl);
  v21 = *v19;
  v22 = (v13 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_dialogProvider);
  v22[3] = v6;
  v22[4] = &off_287876528;
  *v22 = v21;
  v23 = v13 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_flowFactory;
  *(v23 + 24) = &type metadata for IdentityFlowFactoryImpl;
  *(v23 + 32) = &off_2878767E8;
  *(v13 + 24) = 0;
  v24 = OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_input;
  __swift_storeEnumTagSinglePayload(OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_input + v13, 1, 1, v5);
  swift_beginAccess();
  v25 = v9;
  sub_266E5D098(v0, v24 + v13);
  swift_endAccess();
  sub_266E5CE50(v38, v13 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState);
  sub_266E5CE50(v37, v13 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_outputPublisher);
  sub_266E5CE50(v22, v28);
  sub_266E5CE50(v38, v27);
  sub_266E654D0(v28, v27, v13 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_identityDialogs);

  __swift_destroy_boxed_opaque_existential_0(v37);
  __swift_destroy_boxed_opaque_existential_0(v38);
  sub_266E5CF94(v0);
  sub_266E595F8(&v33, v13 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceResolutionProvider);
  *(v13 + 16) = 0;
  sub_266E595F8(&v29, v13 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_featureFlags);
  __swift_destroy_boxed_opaque_existential_0(v32);
  __swift_destroy_boxed_opaque_existential_0(v36);
  return v13;
}

uint64_t sub_266E5A0A4(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  v5 = OUTLINED_FUNCTION_19(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = OUTLINED_FUNCTION_22();
  (*(*(v8 - 8) + 16))(v2, a1, v8);
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v8);
  v9 = OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_input;
  swift_beginAccess();
  sub_266E5CEB4(v2, v9 + v1);
  swift_endAccess();
  *(v1 + 16) = 1;
  return 1;
}

uint64_t sub_266E5A19C()
{
  type metadata accessor for SwitchProfileWrapperFlow();
  sub_266E5CFFC(&qword_2800E92F0, type metadata accessor for SwitchProfileWrapperFlow);
  return sub_266E9C144();
}

uint64_t sub_266E5A22C()
{
  OUTLINED_FUNCTION_7_0();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_266E9CFA4();
  v1[7] = v3;
  OUTLINED_FUNCTION_5_1(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v7 = sub_266E9C7E4();
  v1[13] = v7;
  OUTLINED_FUNCTION_5_1(v7);
  v1[14] = v8;
  v10 = *(v9 + 64);
  v1[15] = OUTLINED_FUNCTION_18();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  OUTLINED_FUNCTION_19(v11);
  v13 = *(v12 + 64);
  v1[16] = OUTLINED_FUNCTION_18();
  v14 = sub_266E9C7A4();
  v1[17] = v14;
  OUTLINED_FUNCTION_5_1(v14);
  v1[18] = v15;
  v17 = *(v16 + 64);
  v1[19] = OUTLINED_FUNCTION_18();
  v18 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

void sub_266E5A3C0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[6];
  v4 = OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_input;
  swift_beginAccess();
  sub_266E5CF24(v4 + v3, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_266E5CF94(v0[16]);
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_5();
      swift_once();
    }

    OUTLINED_FUNCTION_13();
    v6 = v4[9];
    v5 = v4 + 9;
    v7 = *(v5 - 1);
    __swift_project_value_buffer(*(v5 - 2), qword_2800EC7E0);
    v8 = OUTLINED_FUNCTION_4_1();
    v9(v8);
    v10 = sub_266E9CF84();
    v11 = sub_266E9D1A4();
    if (OUTLINED_FUNCTION_12(v11))
    {
      v12 = "SwitchProfileWrapperFlow.execute Input is nil. Error executing request";
LABEL_6:
      v13 = *v5;
      v14 = OUTLINED_FUNCTION_5_0();
      *v14 = 0;
      _os_log_impl(&dword_266E51000, v10, v7, v12, v14, 2u);
      OUTLINED_FUNCTION_4_0();
    }

    else
    {
      v13 = *v5;
    }
  }

  else
  {
    v15 = v0[6];
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    switch(*(v15 + 16))
    {
      case 1:
        v36 = v0[19];
        v38 = v0[14];
        v37 = v0[15];
        v39 = v0[13];
        sub_266E9C794();
        v41 = *(v38 + 88);
        v40 = v38 + 88;
        v42 = OUTLINED_FUNCTION_16();
        v44 = v43(v42);
        if (v44 == *MEMORY[0x277D5C128] || v44 == *MEMORY[0x277D5C150] || v44 == *MEMORY[0x277D5C130] || v44 == *MEMORY[0x277D5C160])
        {
          v48 = v0[6];
          (*(v0[14] + 8))(v0[15], v0[13]);
          if (sub_266E5ABE4())
          {
            v49 = v0[5];
            v50 = v0[6];
            sub_266E5AC78(v0[19]);
LABEL_37:
            v52 = OUTLINED_FUNCTION_9();
            v53(v52);

            OUTLINED_FUNCTION_8_0();
            OUTLINED_FUNCTION_21();

            __asm { BRAA            X1, X16 }
          }

          swift_task_alloc();
          OUTLINED_FUNCTION_20();
          v0[20] = v23;
          *v23 = v60;
          v25 = sub_266E5A968;
LABEL_15:
          v23[1] = v25;
          v26 = v0[19];
          v27 = v0[5];
          v28 = v0[6];
          OUTLINED_FUNCTION_21();

          sub_266E5B0C4();
          return;
        }

        if (qword_2800E8D80 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        OUTLINED_FUNCTION_13();
        v56 = *(v40 + 96);
        v5 = (v40 + 96);
        v7 = *(v5 - 4);
        __swift_project_value_buffer(*(v5 - 5), qword_2800EC7E0);
        v57 = OUTLINED_FUNCTION_4_1();
        v58(v57);
        v10 = sub_266E9CF84();
        v59 = sub_266E9D1A4();
        if (OUTLINED_FUNCTION_12(v59))
        {
          v12 = "Unexpected parse type in input";
          goto LABEL_6;
        }

        v13 = *v5;
        break;
      case 2:
        if (qword_2800E8D80 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        v5 = v0 + 10;
        v30 = v0[10];
        v7 = v0[7];
        v31 = v0[8];
        v32 = __swift_project_value_buffer(v7, qword_2800EC7E0);
        (*(v31 + 16))(v30, v32, v7);
        v10 = sub_266E9CF84();
        v33 = sub_266E9D1A4();
        if (OUTLINED_FUNCTION_12(v33))
        {
          v12 = "Unexpected state in execute()";
          goto LABEL_6;
        }

        v13 = *v5;
        break;
      case 3:
        v34 = v0[5];
        v35 = v0[6];
        sub_266E5B8B4();
        goto LABEL_37;
      case 4:
        swift_task_alloc();
        OUTLINED_FUNCTION_20();
        v0[21] = v23;
        *v23 = v24;
        v25 = sub_266E5AB00;
        goto LABEL_15;
      case 5:
        v51 = v0[5];
        sub_266E9C504();
        goto LABEL_37;
      default:
        if (qword_2800E8D80 != -1)
        {
          OUTLINED_FUNCTION_0_5();
          swift_once();
        }

        OUTLINED_FUNCTION_13();
        v16 = v4[11];
        v5 = v4 + 11;
        v7 = *(v5 - 3);
        __swift_project_value_buffer(*(v5 - 4), qword_2800EC7E0);
        v17 = OUTLINED_FUNCTION_4_1();
        v18(v17);
        v10 = sub_266E9CF84();
        v19 = sub_266E9D1A4();
        if (OUTLINED_FUNCTION_12(v19))
        {
          v12 = "Flow is in .initialized state in execute(). Ensure the right constructor is being used.";
          goto LABEL_6;
        }

        v13 = *v5;
        break;
    }
  }

  v22 = v0 + 7;
  v21 = v0[7];
  v20 = v22[1];

  (*(v20 + 8))(v13, v21);
  sub_266E9D374();
  OUTLINED_FUNCTION_21();
}

uint64_t sub_266E5A968()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v2 = *(v1 + 160);
  v3 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E5AA4C()
{
  v0 = OUTLINED_FUNCTION_9();
  v1(v0);

  OUTLINED_FUNCTION_8_0();

  return v2();
}

uint64_t sub_266E5AB00()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v2 = *(v1 + 168);
  v3 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266E5ABE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_featureFlags + 24);
  v2 = *(v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_featureFlags + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_featureFlags), v1);
  if (((*(v2 + 16))(v1, v2) & 1) == 0)
  {
    return 0;
  }

  v3 = *(v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState + 32);
  __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState), *(v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState + 24));
  OUTLINED_FUNCTION_16();
  return sub_266E9C2D4() & 1;
}

uint64_t sub_266E5AC78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_266E9C7A4();
  OUTLINED_FUNCTION_3_2();
  v39 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = sub_266E9CFA4();
  OUTLINED_FUNCTION_3_2();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_1();
  v20 = v19 - v18;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v21 = __swift_project_value_buffer(v12, qword_2800EC7E0);
  (*(v14 + 16))(v20, v21, v12);
  v22 = sub_266E9CF84();
  v23 = sub_266E9D1B4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_5_0();
    *v24 = 0;
    _os_log_impl(&dword_266E51000, v22, v23, "Target device resolution is required, pushing device resolution flow", v24, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  (*(v14 + 8))(v20, v12);
  *(v2 + 16) = 2;
  v25 = OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState;
  sub_266E5CE50(v2 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState, v43);
  type metadata accessor for SwitchProfileDeviceResolutionStrategy();
  v26 = swift_allocObject();
  sub_266E595F8(v43, v26 + 16);
  *(v26 + 56) = 0;
  *(v26 + 64) = 0;
  *(v26 + 72) = 1;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  (*(v39 + 16))(v11, a1, v4);
  sub_266E5CE50(v2 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceResolutionProvider, v43);
  sub_266E5CE50(v2 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_outputPublisher, v42);
  sub_266E5CE50(v2 + v25, v41);
  sub_266E5CE50(v2 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_dialogProvider, v40);
  __swift_mutable_project_boxed_opaque_existential_1(v40, v40[3]);
  OUTLINED_FUNCTION_3_2();
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_3_1();
  v32 = (v31 - v30);
  (*(v33 + 16))(v31 - v30);
  v34 = *v32;

  v36 = sub_266E5C8A8(v35, v11, v43, v42, v41, v34);
  __swift_destroy_boxed_opaque_existential_0(v40);
  *&v43[0] = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_266E5CDE8;
  *(v37 + 24) = v2;
  type metadata accessor for ExecutionDeviceResolutionFlow();
  sub_266E5CFFC(&qword_2800E92E0, type metadata accessor for ExecutionDeviceResolutionFlow);

  sub_266E9C4D4();
}

uint64_t sub_266E5B0C4()
{
  OUTLINED_FUNCTION_7_0();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_266E9C7E4();
  v1[10] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[11] = v5;
  v7 = *(v6 + 64);
  v1[12] = OUTLINED_FUNCTION_18();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  OUTLINED_FUNCTION_19(v8);
  v10 = *(v9 + 64);
  v1[13] = OUTLINED_FUNCTION_18();
  v11 = sub_266E9CFA4();
  v1[14] = v11;
  OUTLINED_FUNCTION_5_1(v11);
  v1[15] = v12;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_266E5B1F8()
{
  v45 = v0;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[9];
  v5 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  v0[18] = v5;
  v6 = *(v3 + 16);
  v0[19] = v6;
  v0[20] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_266E9CF84();
  LOBYTE(v2) = sub_266E9D184();

  if (os_log_type_enabled(v7, v2))
  {
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v43[0] = v10;
    *v9 = 136315138;
    v11 = *(v8 + 24);
    if (v11)
    {
      v12 = [v11 description];
      v13 = sub_266E9D024();
      v15 = v14;
    }

    else
    {
      v15 = 0xE500000000000000;
      v13 = 0x3E6C696E3CLL;
    }

    v21 = v0[17];
    v22 = v0[14];
    v23 = v0[15];
    v24 = sub_266E6E7D4(v13, v15, v43);

    *(v9 + 4) = v24;
    OUTLINED_FUNCTION_14();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_10();

    v19 = *(v23 + 8);
    v19(v21, v22);
  }

  else
  {
    v16 = v0[17];
    v17 = v0[14];
    v18 = v0[15];

    v19 = *(v18 + 8);
    v20 = OUTLINED_FUNCTION_16();
    (v19)(v20);
  }

  v0[21] = v19;
  v30 = v0[12];
  v31 = v0[13];
  v32 = v0[8];
  v33 = v0[9];
  sub_266E5CE50(v33 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState, (v0 + 2));
  v34 = *(v33 + 24);
  v35 = sub_266E9C464();
  memset(v43, 0, sizeof(v43));
  v44 = 0;
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v35);
  v36 = type metadata accessor for SwitchProfileFlowStrategy();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = v34;
  v0[22] = sub_266E5D640(v0 + 2, v34, v43, 0, 0, v31);
  sub_266E9C794();
  v40 = swift_task_alloc();
  v0[23] = v40;
  *v40 = v0;
  v40[1] = sub_266E5B4FC;
  v41 = v0[12];

  return sub_266E5D8D8();
}

uint64_t sub_266E5B4FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_1_4();
  *v6 = v5;
  v7 = v4[23];
  *v6 = *v2;
  v5[24] = v1;

  v8 = v4[12];
  v9 = v4[11];
  v10 = v4[10];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);
    v11 = sub_266E5B76C;
  }

  else
  {
    v5[25] = a1;
    (*(v9 + 8))(v8, v10);
    v11 = sub_266E5B67C;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_266E5B67C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  __swift_project_boxed_opaque_existential_0((v4 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_flowFactory), *(v4 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_flowFactory + 24));
  v6 = *(v4 + 24);
  v7 = v6;
  v8 = OUTLINED_FUNCTION_16();
  sub_266E8EE84(v8, v9, v1, v6);

  sub_266E9C4F4();

  v11 = v0[16];
  v10 = v0[17];
  v13 = v0[12];
  v12 = v0[13];

  OUTLINED_FUNCTION_8_0();

  return v14();
}

uint64_t sub_266E5B76C()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[14];

  v3(v5, v4, v6);
  v7 = sub_266E9CF84();
  v8 = sub_266E9D1A4();
  if (os_log_type_enabled(v7, v8))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_14();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_10();
  }

  v14 = v0[24];
  v15 = v0[21];
  v17 = v0[15];
  v16 = v0[16];
  v18 = v0[14];
  v19 = v0[7];

  v15(v16, v18);
  sub_266E9C504();

  v21 = v0[16];
  v20 = v0[17];
  v23 = v0[12];
  v22 = v0[13];

  OUTLINED_FUNCTION_8_0();

  return v24();
}

uint64_t sub_266E5B8B4()
{
  v1 = v0;
  v2 = sub_266E9CFA4();
  OUTLINED_FUNCTION_3_2();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v11 = __swift_project_value_buffer(v2, qword_2800EC7E0);
  (*(v4 + 16))(v10, v11, v2);
  v12 = sub_266E9CF84();
  v13 = sub_266E9D194();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_5_0();
    *v14 = 0;
    _os_log_impl(&dword_266E51000, v12, v13, "Device resolution was required but none were found. Dialoging failure and completing the flow.", v14, 2u);
    OUTLINED_FUNCTION_4_0();
  }

  (*(v4 + 8))(v10, v2);
  sub_266E5CE50(v1 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_outputPublisher, v19);
  v15 = sub_266E9BF44();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  v19[0] = sub_266E9BF34();
  sub_266E9C4E4();
}

uint64_t sub_266E5BAA8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_266E9CFA4();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266E5BB68, 0, 0);
}

uint64_t sub_266E5BB68()
{
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  __swift_project_value_buffer(v0[4], qword_2800EC7E0);
  v3 = OUTLINED_FUNCTION_4_1();
  v4(v3);
  v5 = sub_266E9CF84();
  v6 = sub_266E9D194();
  if (os_log_type_enabled(v5, v6))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_14();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_10();
  }

  v13 = v0[5];
  v12 = v0[6];
  v15 = v0[3];
  v14 = v0[4];

  v16 = *(v13 + 8);
  v17 = OUTLINED_FUNCTION_16();
  v18(v17);
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  v0[7] = v19;
  *v19 = v20;
  v19[1] = sub_266E5BCCC;
  v21 = v0[2];

  return sub_266E655EC();
}

uint64_t sub_266E5BCCC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v5 = v4;

  OUTLINED_FUNCTION_8_0();

  return v6();
}

void sub_266E5BDC8(void *a1)
{
  sub_266E9CFA4();
  OUTLINED_FUNCTION_3_2();
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  if (!a1)
  {
    v11 = 3;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v11 = 5;
LABEL_7:
    *(v1 + 16) = v11;
    return;
  }

  if (a1 != 2)
  {
    v12 = *(v1 + 24);
    *(v1 + 24) = a1;
    v13 = a1;

    v11 = 4;
    goto LABEL_7;
  }

  v18 = v7;
  v19 = v10;
  v20 = v6;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_5();
    swift_once();
  }

  v14 = __swift_project_value_buffer(v20, qword_2800EC7E0);
  (*(v18 + 16))(v19, v14, v20);
  v15 = sub_266E9CF84();
  v16 = sub_266E9D1A4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_5_0();
    *v17 = 0;
    _os_log_impl(&dword_266E51000, v15, v16, "Unexpected device resolution result", v17, 2u);
    OUTLINED_FUNCTION_10();
  }

  (*(v18 + 8))(v19, v20);
  sub_266E9D374();
  __break(1u);
}

uint64_t sub_266E5BFB8()
{
  sub_266E5CF94(OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_input + v0);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceState));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_deviceResolutionProvider));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_flowFactory));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_featureFlags));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_outputPublisher));
  sub_266E5D044(v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_identityDialogs);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal24SwitchProfileWrapperFlow_dialogProvider));
  return v0;
}

uint64_t sub_266E5C058()
{
  sub_266E5BFB8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SwitchProfileWrapperFlow()
{
  result = qword_2800E92C0;
  if (!qword_2800E92C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E5C104()
{
  sub_266E5C1C4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_266E5C1C4()
{
  if (!qword_2800E92D0)
  {
    sub_266E9C7A4();
    v0 = sub_266E9D214();
    if (!v1)
    {
      atomic_store(v0, &qword_2800E92D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SwitchProfileWrapperFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SwitchProfileWrapperFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x266E5C380);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266E5C3CC()
{
  result = qword_2800E92D8;
  if (!qword_2800E92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E92D8);
  }

  return result;
}

uint64_t sub_266E5C420(uint64_t a1)
{
  v2 = *v1;
  sub_266E5A0A4(a1);
  return 1;
}

uint64_t sub_266E5C448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D5B890] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_266E5C4F8;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266E5C4F8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  OUTLINED_FUNCTION_11();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_266E5C608()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E5C6A4;

  return sub_266E5A22C();
}

uint64_t sub_266E5C6A4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v4 = v3;

  OUTLINED_FUNCTION_8_0();

  return v5();
}

uint64_t sub_266E5C784()
{
  type metadata accessor for SwitchProfileWrapperFlow();

  return sub_266E9C194();
}

uint64_t sub_266E5C7C4()
{
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_20();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_266E5C6A4;

  return sub_266E5BAA8(v3, v0);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void *sub_266E5C8A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v54 = a5;
  v55 = a4;
  v56 = a3;
  v57 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v53 - v14;
  v16 = type metadata accessor for SwitchProfileDeviceResolutionStrategy();
  v70[3] = v16;
  v70[4] = &off_287876798;
  v70[0] = a1;
  v17 = type metadata accessor for BaseDialogProvider();
  v69[3] = v17;
  v69[4] = &off_287876528;
  v69[0] = a6;
  sub_266E5CE50(v70, v67);
  v18 = sub_266E9C7A4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v15, a2, v18);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v18);
  sub_266E5CE50(a3, v66);
  sub_266E5CE50(a4, v65);
  sub_266E5CE50(a5, v64);
  sub_266E5CE50(v69, v62);
  v20 = v68;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = (&v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = v63;
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v30 = (&v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v24;
  v33 = *v30;
  v61[3] = v16;
  v61[4] = &off_287876798;
  v61[0] = v32;
  v59 = v17;
  v60 = &off_287876528;
  v58[0] = v33;
  v34 = type metadata accessor for ExecutionDeviceResolutionFlow();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v61, v16);
  v39 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v38);
  v41 = (&v53 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = v59;
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
  v45 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v47 = (&v53 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47);
  v49 = *v41;
  v50 = *v47;
  v37[10] = v16;
  v37[11] = &off_287876798;
  v37[7] = v49;
  v37[25] = v17;
  v37[26] = &off_287876528;
  v37[22] = v50;
  __swift_destroy_boxed_opaque_existential_0(v54);
  __swift_destroy_boxed_opaque_existential_0(v55);
  __swift_destroy_boxed_opaque_existential_0(v56);
  (*(v19 + 8))(v57, v18);
  __swift_destroy_boxed_opaque_existential_0(v69);
  __swift_destroy_boxed_opaque_existential_0(v70);
  v51 = OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_input;
  __swift_storeEnumTagSinglePayload(v37 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_input, 1, 1, v18);
  swift_beginAccess();
  sub_266E5CEB4(v15, v37 + v51);
  swift_endAccess();
  sub_266E595F8(v66, (v37 + 2));
  *(v37 + OBJC_IVAR____TtC20SiriIdentityInternal29ExecutionDeviceResolutionFlow_state) = 0x8000000000000000;
  sub_266E595F8(v65, (v37 + 12));
  sub_266E595F8(v64, (v37 + 17));
  __swift_destroy_boxed_opaque_existential_0(v58);
  __swift_destroy_boxed_opaque_existential_0(v61);
  __swift_destroy_boxed_opaque_existential_0(v62);
  __swift_destroy_boxed_opaque_existential_0(v67);
  return v37;
}

uint64_t sub_266E5CDEC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266E5CE24(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_266E5CE50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_266E5CEB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E5CF24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E5CF94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266E5CFFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266E5D098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E92E8, &unk_266E9E9E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_9()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[11];
  v4 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = *(v0[18] + 8);
  return v0[19];
}

void OUTLINED_FUNCTION_10()
{

  JUMPOUT(0x26D5F66A0);
}

BOOL OUTLINED_FUNCTION_12(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return sub_266E9C7A4();
}

uint64_t sub_266E5D2A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266E9CF74();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 17);
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_266E5D374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266E9CF74();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 17) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for Signpost.OpenSignpost()
{
  result = qword_2800E9300;
  if (!qword_2800E9300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E5D46C()
{
  result = sub_266E9CF74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IdentitySignpost(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 18))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentitySignpost(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_266E5D594()
{
  sub_266E5D5FC();
  result = sub_266E9D204();
  qword_2800E92F8 = result;
  return result;
}

unint64_t sub_266E5D5FC()
{
  result = qword_2800E9310;
  if (!qword_2800E9310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800E9310);
  }

  return result;
}

uint64_t sub_266E5D640(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, char **a5, uint64_t a6)
{
  v7 = v6;
  v14 = OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_remoteDevice;
  *(v7 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_remoteDevice) = 0;
  sub_266E5CE50(a1, v7 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_deviceState);
  *(v7 + v14) = a2;
  sub_266E60D4C(a3, v17, &qword_2800E9368, "jG");
  type metadata accessor for Globals();
  swift_allocObject();
  v15 = a2;
  *(v7 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_globals) = sub_266E68864(v17);
  if (a4)
  {
  }

  else
  {
    type metadata accessor for UserDefaultsProvider();
    swift_allocObject();
    a4 = sub_266E7D84C();

    a5 = &off_2878763A0;
  }

  sub_266E54DA8(a3, &qword_2800E9368, "jG");
  __swift_destroy_boxed_opaque_existential_0(a1);
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  sub_266E60DB4(a6, v7 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_identifiedUserOverride);
  return v7;
}

uint64_t sub_266E5D788()
{
  v0 = sub_266E9CFA4();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  __swift_project_value_buffer(v0, qword_2800EC7E0);
  OUTLINED_FUNCTION_18_0();
  v9(v8);
  v10 = sub_266E9CF84();
  v11 = sub_266E9D194();
  if (os_log_type_enabled(v10, v11))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_32(&dword_266E51000, v12, v13, "SwitchProfileFlowStrategy.actionForInput() called");
    OUTLINED_FUNCTION_7_1();
  }

  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_6_0();
  v16(v15);
  return sub_266E9C384();
}

uint64_t sub_266E5D8D8()
{
  OUTLINED_FUNCTION_7_0();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_266E9C7D4();
  v1[15] = v4;
  OUTLINED_FUNCTION_5_1(v4);
  v1[16] = v5;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  v8 = sub_266E9C7E4();
  v1[18] = v8;
  OUTLINED_FUNCTION_5_1(v8);
  v1[19] = v9;
  v11 = *(v10 + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v12 = sub_266E9CFA4();
  v1[24] = v12;
  OUTLINED_FUNCTION_5_1(v12);
  v1[25] = v13;
  v15 = *(v14 + 64) + 15;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_266E5DA78()
{
  v130 = v1;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v3 = *(v1 + 232);
  v4 = *(v1 + 192);
  __swift_project_value_buffer(v4, qword_2800EC7E0);
  v5 = OUTLINED_FUNCTION_17();
  v2(v5);
  v6 = sub_266E9CF84();
  v7 = sub_266E9D194();
  if (OUTLINED_FUNCTION_12(v7))
  {
    v8 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_29(v8);
    OUTLINED_FUNCTION_21_0(&dword_266E51000, v9, v4, "SwitchProfileFlowStrategy.makeIntentFromParse() called");
    OUTLINED_FUNCTION_4_2();
  }

  v10 = *(v1 + 232);
  v11 = *(v1 + 192);
  v12 = *(v1 + 200);
  v13 = *(v1 + 96);

  v14 = *(v12 + 8);
  v14(v10, v11);
  sub_266E7B898(v13, v1 + 56);
  if (!*(v1 + 80))
  {
    v126 = v2;
    v30 = *(v1 + 184);
    v31 = *(v1 + 144);
    v32 = *(v1 + 152);
    v33 = *(v1 + 96);
    sub_266E54DA8(v1 + 56, &unk_2800E9590, &unk_266E9EC80);
    v34 = *(v32 + 16);
    v34(v30, v33, v31);
    v35 = *(v32 + 88);
    v36 = OUTLINED_FUNCTION_6_0();
    if (v37(v36) != *MEMORY[0x277D5C150])
    {
      goto LABEL_21;
    }

    v123 = v14;
    v38 = *(v1 + 176);
    v39 = *(v1 + 152);
    v41 = *(v1 + 128);
    v40 = *(v1 + 136);
    v120 = *(v1 + 120);
    v34(v38, *(v1 + 184), *(v1 + 144));
    v42 = *(v39 + 96);
    v43 = OUTLINED_FUNCTION_6_0();
    v44(v43);
    (*(v41 + 32))(v40, v38, v120);
    v45 = sub_266E9C7B4();
    v47 = v46;
    if (qword_2800E8D50 != -1)
    {
      swift_once();
    }

    if (v45 == *(qword_2800EC768 + 96) && v47 == *(qword_2800EC768 + 104))
    {
    }

    else
    {
      v49 = sub_266E9D3E4();

      v14 = v123;
      if ((v49 & 1) == 0)
      {
        (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));
LABEL_21:
        v50 = *(v1 + 168);
        v51 = *(v1 + 144);
        v52 = *(v1 + 96);
        (v126)(*(v1 + 208), v0, *(v1 + 192));
        v34(v50, v52, v51);
        v53 = sub_266E9CF84();
        v54 = sub_266E9D1A4();
        v55 = os_log_type_enabled(v53, v54);
        v56 = *(v1 + 200);
        v57 = *(v1 + 208);
        v121 = *(v1 + 192);
        v58 = *(v1 + 168);
        if (v55)
        {
          v115 = v54;
          v59 = *(v1 + 152);
          v60 = *(v1 + 160);
          v61 = v34;
          v124 = v14;
          v62 = *(v1 + 144);
          v117 = *(v1 + 208);
          v63 = OUTLINED_FUNCTION_16_0();
          v64 = OUTLINED_FUNCTION_20_0();
          v129 = v64;
          *v63 = 136315138;
          v61(v60, v58, v62);
          v65 = sub_266E9D034();
          v67 = v66;
          v68 = OUTLINED_FUNCTION_23();
          v127 = v69;
          v69(v68, v62);
          v70 = sub_266E6E7D4(v65, v67, &v129);

          *(v63 + 4) = v70;
          _os_log_impl(&dword_266E51000, v53, v115, "Unable to make intent from parse %s", v63, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v64);
          OUTLINED_FUNCTION_4_0();
          OUTLINED_FUNCTION_7_1();

          v124(v117, v121);
        }

        else
        {
          v73 = *(v1 + 144);
          v72 = *(v1 + 152);

          v74 = OUTLINED_FUNCTION_23();
          v127 = v75;
          v75(v74, v73);
          v14(v57, v121);
        }

        v77 = *(v1 + 224);
        v76 = *(v1 + 232);
        v78 = *(v1 + 216);
        v79 = *(v1 + 184);
        v116 = *(v1 + 208);
        v118 = *(v1 + 176);
        v119 = *(v1 + 168);
        v122 = *(v1 + 160);
        v80 = *(v1 + 144);
        v125 = *(v1 + 136);
        type metadata accessor for IdentityFlowError();
        swift_allocObject();
        v81 = sub_266E89698(0);
        sub_266E60D04(&qword_2800E94F0, type metadata accessor for IdentityFlowError);
        swift_allocError();
        *v82 = v81;
        swift_willThrow();
        v127(v79, v80);

        v83 = *(v1 + 8);
        OUTLINED_FUNCTION_31();

        __asm { BRAA            X1, X16 }
      }
    }

    v86 = *(v1 + 104);
    if (v86)
    {
      v87 = *(v1 + 104);
    }

    else
    {
      v88 = *(v1 + 136);
      type metadata accessor for SwitchProfileIntent();
      v89 = sub_266E9C7C4();
      sub_266E596AC(v89);

      v86 = 0;
    }

    (v126)(*(v1 + 216), v0, *(v1 + 192));
    v90 = v86;
    v91 = sub_266E9CF84();
    v92 = sub_266E9D194();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_29(v93);
      OUTLINED_FUNCTION_21_0(&dword_266E51000, v94, v92, "Finished creating direct invocation intent from parse");
      OUTLINED_FUNCTION_4_2();
    }

    v95 = *(v1 + 216);
    v96 = *(v1 + 192);
    v97 = *(v1 + 200);
    v128 = *(v1 + 184);
    v99 = *(v1 + 144);
    v98 = *(v1 + 152);
    v100 = *(v1 + 128);
    v101 = *(v1 + 136);
    v102 = *(v1 + 120);

    v123(v95, v96);
    (*(v100 + 8))(v101, v102);
    (*(v98 + 8))(v128, v99);
LABEL_35:
    v104 = *(v1 + 224);
    v103 = *(v1 + 232);
    v106 = *(v1 + 208);
    v105 = *(v1 + 216);
    v108 = *(v1 + 176);
    v107 = *(v1 + 184);
    v110 = *(v1 + 160);
    v109 = *(v1 + 168);
    v111 = *(v1 + 136);

    v112 = *(v1 + 8);
    OUTLINED_FUNCTION_31();

    __asm { BRAA            X2, X16 }
  }

  v15 = *(v1 + 224);
  v16 = *(v1 + 192);
  sub_266E595F8((v1 + 56), v1 + 16);
  type metadata accessor for SwitchProfileIntent();
  v17 = sub_266E68424((v1 + 16));
  *(v1 + 240) = v17;
  v18 = OUTLINED_FUNCTION_25();
  v2(v18);
  v19 = sub_266E9CF84();
  v20 = sub_266E9D194();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_29(v21);
    OUTLINED_FUNCTION_21_0(&dword_266E51000, v22, v20, "Finished creating intent from parse");
    OUTLINED_FUNCTION_4_2();
  }

  v23 = *(v1 + 224);
  v24 = *(v1 + 192);
  v25 = *(v1 + 200);

  v14(v23, v24);
  if ([v17 switchType] != 1)
  {
    __swift_destroy_boxed_opaque_existential_0((v1 + 16));
    v71 = *(v1 + 240);
    goto LABEL_35;
  }

  v26 = swift_task_alloc();
  *(v1 + 248) = v26;
  *v26 = v1;
  v26[1] = sub_266E5E2A4;
  v27 = *(v1 + 112);
  OUTLINED_FUNCTION_31();

  return sub_266E5E614();
}

uint64_t sub_266E5E2A4()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(*v0 + 248);
  v2 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266E5E38C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v7 = v0[22];
  v6 = v0[23];
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[17];

  v11 = v0[1];

  return v11(v2);
}

uint64_t sub_266E5E470@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  OUTLINED_FUNCTION_19(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_34();
  v9 = OUTLINED_FUNCTION_2_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_1();
  v16 = v15 - v14;
  sub_266E60D4C(v1 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_identifiedUserOverride, v2, &qword_2800E91C0, &unk_266E9EC70);
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    sub_266E54DA8(v2, &qword_2800E91C0, &unk_266E9EC70);
    sub_266E9CCF4();
    if (!static SiriEnvironment.getUserIdentity()())
    {
      v18 = 1;
      return __swift_storeEnumTagSinglePayload(a1, v18, 1, v8);
    }

    sub_266E9C674();
  }

  else
  {
    v17 = *(v11 + 32);
    v17(v16, v2, v8);
    v17(a1, v16, v8);
  }

  v18 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v18, 1, v8);
}

uint64_t sub_266E5E614()
{
  OUTLINED_FUNCTION_7_0();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_266E9CFA4();
  v1[4] = v3;
  OUTLINED_FUNCTION_5_1(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266E5E6E4()
{
  v3 = *(v0 + 24);
  sub_266E5EB38();
  if (v5)
  {
    sub_266E60CAC(v4, v5, *(v0 + 16));
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v6 = *(v0 + 72);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = __swift_project_value_buffer(v7, qword_2800EC7E0);
    (*(v8 + 16))(v6, v9, v7);

    v10 = sub_266E9CF84();
    v11 = sub_266E9D194();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 72);
    v14 = *(v0 + 32);
    v15 = *(v0 + 40);
    if (v12)
    {
      v16 = OUTLINED_FUNCTION_16_0();
      v65 = OUTLINED_FUNCTION_20_0();
      *v16 = 136315138;
      v17 = OUTLINED_FUNCTION_30();
      *(v16 + 4) = sub_266E6E7D4(v17, v18, v19);
      _os_log_impl(&dword_266E51000, v10, v11, "Setting iCloudAltDSID =%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      OUTLINED_FUNCTION_8_1();
      OUTLINED_FUNCTION_4_0();
    }

    (*(v15 + 8))(v13, v14);
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v20 = *(v0 + 64);
    v21 = *(v0 + 40);
    __swift_project_value_buffer(*(v0 + 32), qword_2800EC7E0);
    v22 = OUTLINED_FUNCTION_17();
    v2(v22);
    v23 = sub_266E9CF84();
    v24 = sub_266E9D184();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_29(v25);
      _os_log_impl(&dword_266E51000, v23, v24, "Did not find iCloudAltDSID", v1, 2u);
      OUTLINED_FUNCTION_4_2();
    }

    v26 = *(v0 + 64);
    v27 = *(v0 + 32);
    v28 = *(v0 + 40);
    v29 = *(v0 + 24);

    v30 = *(v28 + 8);
    v30(v26, v27);
    sub_266E5EDE4();
    v33 = *(v0 + 32);
    if (v32)
    {
      v34 = *(v0 + 56);
      sub_266E60C54(v31, v32, *(v0 + 16));
      v35 = OUTLINED_FUNCTION_30();
      v2(v35);

      v36 = sub_266E9CF84();
      v37 = sub_266E9D194();

      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 56);
      v41 = *(v0 + 32);
      v40 = *(v0 + 40);
      if (v38)
      {
        v64 = *(v0 + 56);
        v42 = OUTLINED_FUNCTION_16_0();
        v66 = OUTLINED_FUNCTION_20_0();
        *v42 = 136315138;
        v43 = OUTLINED_FUNCTION_22_0();
        v46 = sub_266E6E7D4(v43, v44, v45);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_266E51000, v36, v37, "Setting homeUserID =%s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v66);
        OUTLINED_FUNCTION_8_1();
        OUTLINED_FUNCTION_4_0();

        v47 = v64;
      }

      else
      {

        v47 = v39;
      }

      v57 = v41;
    }

    else
    {
      v48 = *(v0 + 48);
      v49 = OUTLINED_FUNCTION_30();
      v2(v49);
      v50 = sub_266E9CF84();
      v51 = sub_266E9D1A4();
      v52 = os_log_type_enabled(v50, v51);
      v54 = *(v0 + 40);
      v53 = *(v0 + 48);
      v55 = *(v0 + 32);
      if (v52)
      {
        v56 = OUTLINED_FUNCTION_5_0();
        *v56 = 0;
        _os_log_impl(&dword_266E51000, v50, v51, "No IDs available; not setting ID in intent", v56, 2u);
        OUTLINED_FUNCTION_7_1();
      }

      v47 = v53;
      v57 = v55;
    }

    v30(v47, v57);
  }

  v59 = *(v0 + 64);
  v58 = *(v0 + 72);
  v61 = *(v0 + 48);
  v60 = *(v0 + 56);

  v62 = *(v0 + 8);

  return v62();
}

void sub_266E5EB38()
{
  OUTLINED_FUNCTION_35();
  v1 = v0;
  v2 = sub_266E9CFA4();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_2();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_globals);
  v15 = sub_266E68830();
  if ((v15 & 1) != 0 && (v16 = *(v1 + 16), v15 = sub_266E7D6EC(), v17))
  {
    v18 = v15;
    v19 = v17;
    if (qword_2800E8D80 != -1)
    {
      v15 = OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_3_3(v15, qword_2800EC7E0);
    (*(v5 + 16))(v13);

    v20 = sub_266E9CF84();
    v21 = sub_266E9D194();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_16_0();
      v23 = OUTLINED_FUNCTION_20_0();
      v32 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_266E6E7D4(v18, v19, &v32);
      _os_log_impl(&dword_266E51000, v20, v21, "default found with iCloudAltDSID = %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_4_0();
    }

    v24 = *(v5 + 8);
    v25 = OUTLINED_FUNCTION_25();
    v26(v25);
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      v15 = OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_3_3(v15, qword_2800EC7E0);
    (*(v5 + 16))(v10);
    v27 = sub_266E9CF84();
    v28 = sub_266E9D194();
    if (OUTLINED_FUNCTION_12(v28))
    {
      *OUTLINED_FUNCTION_5_0() = 0;
      OUTLINED_FUNCTION_10_0(&dword_266E51000, v29, v30, "Looking up MAF for recognized iCloudAltDSID");
      OUTLINED_FUNCTION_4_0();
    }

    (*(v5 + 8))(v10, v2);
    sub_266E5F4BC();
  }

  OUTLINED_FUNCTION_33();
}

void sub_266E5EDE4()
{
  v0 = sub_266E9CFA4();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_3_1();
  v8 = v7 - v6;
  if (qword_2800E8D80 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  __swift_project_value_buffer(v0, qword_2800EC7E0);
  OUTLINED_FUNCTION_18_0();
  v9(v8);
  v10 = sub_266E9CF84();
  v11 = sub_266E9D194();
  if (os_log_type_enabled(v10, v11))
  {
    *OUTLINED_FUNCTION_5_0() = 0;
    OUTLINED_FUNCTION_32(&dword_266E51000, v12, v13, "Looking up MAF for recognized homeUserID");
    OUTLINED_FUNCTION_7_1();
  }

  v14 = *(v3 + 8);
  v15 = OUTLINED_FUNCTION_6_0();
  v16(v15);
  sub_266E5EF34();
}

void sub_266E5EF34()
{
  OUTLINED_FUNCTION_35();
  v1 = sub_266E9CFA4();
  v2 = OUTLINED_FUNCTION_2_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_2();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v72 = (v71 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = v71 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  OUTLINED_FUNCTION_19(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v18);
  v20 = v71 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  OUTLINED_FUNCTION_19(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v24);
  v25 = OUTLINED_FUNCTION_34();
  v26 = OUTLINED_FUNCTION_2_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_1();
  v33 = v32 - v31;
  sub_266E5E470(v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v25) == 1)
  {
    v34 = sub_266E54DA8(v0, &qword_2800E91C0, &unk_266E9EC70);
LABEL_10:
    if (qword_2800E8D80 != -1)
    {
      v34 = OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_3_3(v34, qword_2800EC7E0);
    OUTLINED_FUNCTION_18_0();
    v51(v9);
    v52 = sub_266E9CF84();
    v53 = sub_266E9D1A4();
    if (OUTLINED_FUNCTION_12(v53))
    {
      *OUTLINED_FUNCTION_5_0() = 0;
      OUTLINED_FUNCTION_10_0(&dword_266E51000, v54, v55, "No homeUserID found.");
      OUTLINED_FUNCTION_4_0();
    }

    (*(v4 + 8))(v9, v1);
    goto LABEL_15;
  }

  (*(v28 + 32))(v33, v0, v25);
  sub_266E9C3A4();
  if (!v35)
  {
    v49 = OUTLINED_FUNCTION_14_0();
    v34 = v50(v49);
    goto LABEL_10;
  }

  v71[1] = v28;
  sub_266E9BE54();
  v36 = sub_266E9BE84();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v36);
  v38 = sub_266E54DA8(v20, &qword_2800E9360, &qword_266E9EE20);
  if (EnumTagSinglePayload == 1)
  {
    if (qword_2800E8D80 != -1)
    {
      v38 = OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_3_3(v38, qword_2800EC7E0);
    OUTLINED_FUNCTION_18_0();
    v39 = v72;
    v40(v72);

    v41 = sub_266E9CF84();
    v42 = sub_266E9D1A4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_16_0();
      v44 = OUTLINED_FUNCTION_20_0();
      v73 = v44;
      *v43 = 136315138;
      v45 = OUTLINED_FUNCTION_22_0();
      v48 = sub_266E6E7D4(v45, v46, v47);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_266E51000, v41, v42, "Invalid homeUserID='%s' found.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_1();

      (*(v4 + 8))(v72, v1);
    }

    else
    {

      (*(v4 + 8))(v39, v1);
    }

    v67 = OUTLINED_FUNCTION_14_0();
    v68(v67);
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      v38 = OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_3_3(v38, qword_2800EC7E0);
    OUTLINED_FUNCTION_18_0();
    v56(v14);

    v57 = sub_266E9CF84();
    v58 = sub_266E9D184();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_16_0();
      v72 = v57;
      v60 = v59;
      v61 = OUTLINED_FUNCTION_20_0();
      v73 = v61;
      *v60 = 136315138;
      v62 = OUTLINED_FUNCTION_22_0();
      *(v60 + 4) = sub_266E6E7D4(v62, v63, v64);
      v65 = v58;
      v66 = v72;
      _os_log_impl(&dword_266E51000, v72, v65, "Found new recognized user with homeUserID=%s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      OUTLINED_FUNCTION_4_0();
      OUTLINED_FUNCTION_8_1();
    }

    else
    {
    }

    (*(v4 + 8))(v14, v1);
    v69 = OUTLINED_FUNCTION_14_0();
    v70(v69);
  }

LABEL_15:
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_33();
}

void sub_266E5F4BC()
{
  OUTLINED_FUNCTION_35();
  v0 = sub_266E9CFA4();
  v1 = OUTLINED_FUNCTION_2_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_2();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v49[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  OUTLINED_FUNCTION_19(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v15);
  v17 = &v49[-v16];
  v18 = sub_266E9C464();
  v19 = OUTLINED_FUNCTION_2_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_1();
  v26 = v25 - v24;
  sub_266E5E470(v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    v27 = sub_266E54DA8(v17, &qword_2800E91C0, &unk_266E9EC70);
LABEL_10:
    if (qword_2800E8D80 != -1)
    {
      v27 = OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_3_3(v27, qword_2800EC7E0);
    OUTLINED_FUNCTION_28();
    v41(v8);
    v42 = sub_266E9CF84();
    v43 = sub_266E9D1A4();
    if (OUTLINED_FUNCTION_12(v43))
    {
      *OUTLINED_FUNCTION_5_0() = 0;
      OUTLINED_FUNCTION_10_0(&dword_266E51000, v44, v45, "No iCloudAltDSID found.");
      OUTLINED_FUNCTION_4_0();
    }

    v46 = *(v3 + 8);
    v47 = OUTLINED_FUNCTION_25();
    v48(v47);
    goto LABEL_15;
  }

  (*(v21 + 32))(v26, v17, v18);
  v28 = sub_266E9C3D4();
  if (!v29)
  {
    v27 = (*(v21 + 8))(v26, v18);
    goto LABEL_10;
  }

  v30 = v28;
  v31 = v29;
  if (qword_2800E8D80 != -1)
  {
    v28 = OUTLINED_FUNCTION_0_3();
  }

  OUTLINED_FUNCTION_3_3(v28, qword_2800EC7E0);
  OUTLINED_FUNCTION_28();
  v32(v11);

  v33 = sub_266E9CF84();
  v34 = sub_266E9D184();

  v51 = v33;
  if (os_log_type_enabled(v33, v34))
  {
    v35 = OUTLINED_FUNCTION_16_0();
    v50 = v34;
    v36 = v35;
    v37 = OUTLINED_FUNCTION_20_0();
    v52 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_266E6E7D4(v30, v31, &v52);
    _os_log_impl(&dword_266E51000, v51, v50, "Found new recognized user with iCloudAltDSID=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_4_2();
  }

  v38 = *(v3 + 8);
  v39 = OUTLINED_FUNCTION_30();
  v40(v39);
  (*(v21 + 8))(v26, v18);
LABEL_15:
  OUTLINED_FUNCTION_33();
}

uint64_t sub_266E5F878()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_266E54DA8(v0 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_identifiedUserOverride, &qword_2800E91C0, &unk_266E9EC70);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_deviceState));
  v2 = *(v0 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_globals);

  return v0;
}

uint64_t sub_266E5F8E8()
{
  sub_266E5F878();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for SwitchProfileFlowStrategy()
{
  result = qword_2800E9330;
  if (!qword_2800E9330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_266E5F994()
{
  sub_266E5FA50();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_266E5FA50()
{
  if (!qword_2800E9340)
  {
    sub_266E9C464();
    v0 = sub_266E9D214();
    if (!v1)
    {
      atomic_store(v0, &qword_2800E9340);
    }
  }
}

uint64_t sub_266E5FAC0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266E5FB68;

  return sub_266E5D8D8();
}

uint64_t sub_266E5FB68()
{
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_266E5FC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SwitchProfileFlowStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_266E5FCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5BF48] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_266E60E24;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_266E5FD70(uint64_t a1, void *a2)
{
  v39 = a2;
  v3 = sub_266E9C1D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_266E9CFA4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC20SiriIdentityInternal25SwitchProfileFlowStrategy_remoteDevice);
  if (v16)
  {
    v17 = qword_2800E8D80;
    v18 = v16;
    if (v17 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v8, qword_2800EC7E0);
    (*(v9 + 16))(v15, v19, v8);
    v20 = v18;
    v21 = sub_266E9CF84();
    v22 = sub_266E9D194();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      *(v23 + 4) = v20;
      *v24 = v16;
      v25 = v20;
      _os_log_impl(&dword_266E51000, v21, v22, "makeIntentExecutionBehavior: handle on targetDevice: %@", v23, 0xCu);
      sub_266E54DA8(v24, &qword_2800E9490, qword_266E9F590);
      MEMORY[0x26D5F66A0](v24, -1, -1);
      MEMORY[0x26D5F66A0](v23, -1, -1);
    }

    (*(v9 + 8))(v15, v8);
    sub_266E9C254();
    v26 = sub_266E9C234();
  }

  else
  {
    v37 = v7;
    v38 = v4;
    v27 = v39;
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v8, qword_2800EC7E0);
    (*(v9 + 16))(v13, v28, v8);
    v29 = sub_266E9CF84();
    v30 = sub_266E9D194();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_266E51000, v29, v30, "IntentExecutionBehaviorStrategy.makeIntentExecutionBehavior", v31, 2u);
      MEMORY[0x26D5F66A0](v31, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    sub_266E9C254();
    v32 = objc_allocWithZone(type metadata accessor for SwitchProfileIntentHandler());

    [v32 init];
    type metadata accessor for SwitchProfileIntent();
    v33 = v27;
    v34 = v37;
    sub_266E9C1C4();
    v26 = sub_266E9C244();
    (*(v38 + 8))(v34, v3);
  }

  return v26;
}

void sub_266E601C4()
{
  OUTLINED_FUNCTION_35();
  v46 = v1;
  v2 = sub_266E9C1D4();
  v3 = OUTLINED_FUNCTION_2_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_1();
  v10 = v9 - v8;
  v11 = sub_266E9CFA4();
  v12 = OUTLINED_FUNCTION_2_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_2();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v43 - v22;
  v24 = *(v0 + 104);
  if (v24)
  {
    v25 = qword_2800E8D80;
    v26 = v24;
    v27 = v26;
    if (v25 != -1)
    {
      v26 = OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_3_3(v26, qword_2800EC7E0);
    OUTLINED_FUNCTION_28();
    v28(v23);
    v29 = v27;
    v30 = sub_266E9CF84();
    v31 = sub_266E9D194();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_16_0();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      *(v32 + 4) = v29;
      *v33 = v24;
      v34 = v29;
      _os_log_impl(&dword_266E51000, v30, v31, "makeIntentExecutionBehavior: handle on targetDevice: %@", v32, 0xCu);
      sub_266E54DA8(v33, &qword_2800E9490, qword_266E9F590);
      OUTLINED_FUNCTION_7_1();
      OUTLINED_FUNCTION_4_2();
    }

    (*(v14 + 8))(v23, v11);
    sub_266E9C254();
    sub_266E9C234();
  }

  else
  {
    v44 = v10;
    v45 = v5;
    v35 = v46;
    if (qword_2800E8D80 != -1)
    {
      v21 = OUTLINED_FUNCTION_0_3();
    }

    OUTLINED_FUNCTION_3_3(v21, qword_2800EC7E0);
    OUTLINED_FUNCTION_28();
    v36(v19);
    v37 = sub_266E9CF84();
    v38 = sub_266E9D194();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_5_0();
      *v39 = 0;
      _os_log_impl(&dword_266E51000, v37, v38, "IntentExecutionBehaviorStrategy.makeIntentExecutionBehavior", v39, 2u);
      OUTLINED_FUNCTION_8_1();
    }

    (*(v14 + 8))(v19, v11);
    sub_266E9C254();
    v40 = objc_allocWithZone(type metadata accessor for SwitchProfileIntentHandler());

    [v40 init];
    type metadata accessor for SwitchProfileIntent();
    v41 = v35;
    v42 = v44;
    OUTLINED_FUNCTION_25();
    sub_266E9C1C4();
    sub_266E9C244();
    (*(v45 + 8))(v42, v2);
  }

  OUTLINED_FUNCTION_33();
}

uint64_t sub_266E60568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B498] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SwitchProfileFlowStrategy();
  *v11 = v5;
  v11[1] = sub_266E60E24;

  return MEMORY[0x2821B9D90](a1, a2, a3, v12, a5);
}

uint64_t sub_266E60638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B490] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SwitchProfileFlowStrategy();
  *v11 = v5;
  v11[1] = sub_266E60E24;

  return MEMORY[0x2821B9D88](a1, a2, a3, v12, a5);
}

uint64_t sub_266E60708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(MEMORY[0x277D5B488] + 4);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = type metadata accessor for SwitchProfileFlowStrategy();
  *v11 = v5;
  v11[1] = sub_266E60E24;

  return MEMORY[0x2821B9D80](a1, a2, a3, v12, a5);
}

uint64_t sub_266E607D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B480] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SwitchProfileFlowStrategy();
  *v13 = v6;
  v13[1] = sub_266E608B8;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_266E608B8()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_1_4();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_266E609A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(MEMORY[0x277D5B6D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  v14 = type metadata accessor for SwitchProfileFlowStrategy();
  *v13 = v6;
  v13[1] = sub_266E60E24;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v14, a6);
}

uint64_t sub_266E60A80(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = sub_266E5FD70(a1, a2);
  v6 = *(v3 + 8);

  return v6(v5);
}

void sub_266E60BE0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_266E60C54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266E9D014();
  [a3 setHomeUserId_];
}

void sub_266E60CAC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266E9D014();
  [a3 setICloudAltDSID_];
}

uint64_t sub_266E60D04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266E60D4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_266E60DB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C0, &unk_266E9EC70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_4_2()
{

  JUMPOUT(0x26D5F66A0);
}

void OUTLINED_FUNCTION_7_1()
{

  JUMPOUT(0x26D5F66A0);
}

void OUTLINED_FUNCTION_8_1()
{

  JUMPOUT(0x26D5F66A0);
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_16_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_20_0()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_21_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

void OUTLINED_FUNCTION_32(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_34()
{

  return sub_266E9C464();
}

uint64_t sub_266E61038(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_266E61078(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E610E0()
{
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  sub_266E9D294();
  v8 = v12;
  MEMORY[0x26D5F5CB0](0xD000000000000010, 0x8000000266EA1F10);
  v12 = *v0;
  v11 = *v0;
  sub_266E56C28(&v12, &v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E91C8, &unk_266E9ED50);
  v1 = sub_266E9D034();
  MEMORY[0x26D5F5CB0](v1);

  MEMORY[0x26D5F5CB0](0x3D6B63696E202CLL, 0xE700000000000000);
  v10 = v0[4];
  v11 = v10;
  sub_266E56C28(&v11, &v9);
  v2 = sub_266E9D034();
  MEMORY[0x26D5F5CB0](v2);

  MEMORY[0x26D5F5CB0](0x6C69666F7270202CLL, 0xEE003D656D614E65);
  v9 = v0[3];
  v10 = v9;
  sub_266E56C28(&v10, &v7);
  v3 = sub_266E9D034();
  MEMORY[0x26D5F5CB0](v3);

  MEMORY[0x26D5F5CB0](0x616C70736964202CLL, 0xEE003D656D614E79);
  v9 = v0[5];
  v7 = v0[5];
  sub_266E56C28(&v9, &v6);
  v4 = sub_266E9D034();
  MEMORY[0x26D5F5CB0](v4);

  MEMORY[0x26D5F5CB0](93, 0xE100000000000000);
  return v8;
}

uint64_t sub_266E612CC(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_266E9D3E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1[2] == a2[2] && v8 == v9;
    if (!v10 && (sub_266E9D3E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = a1[5];
  v12 = a2[5];
  if (v11)
  {
    if (!v12)
    {
      return 0;
    }

    v13 = a1[4] == a2[4] && v11 == v12;
    if (!v13 && (sub_266E9D3E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v14 = a1[7];
  v15 = a2[7];
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = a1[6] == a2[6] && v14 == v15;
    if (!v16 && (sub_266E9D3E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = a1[9];
  v18 = a2[9];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    v19 = a1[8] == a2[8] && v17 == v18;
    if (!v19 && (sub_266E9D3E4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v20 = a1[11];
  v21 = a2[11];
  if (v20)
  {
    if (v21)
    {
      v22 = a1[10] == a2[10] && v20 == v21;
      if (v22 || (sub_266E9D3E4() & 1) != 0)
      {
        goto LABEL_53;
      }
    }

    return 0;
  }

  if (v21)
  {
    return 0;
  }

LABEL_53:
  v23 = a1[12];
  v24 = a2[12];

  return sub_266E6146C(v23, v24);
}

uint64_t sub_266E6146C(uint64_t result, uint64_t a2)
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
  v22 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_266E9D484();

      sub_266E9D074();
      v16 = sub_266E9D4A4();
      v17 = ~(-1 << *(a2 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          return 0;
        }

        v19 = (*(a2 + 48) + 16 * v18);
        if (*v19 == v14 && v19[1] == v13)
        {
          break;
        }

        v21 = sub_266E9D3E4();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);

      result = v22;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266E6161C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266E6165C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E616BC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for UserAccount();
  v5 = OUTLINED_FUNCTION_19(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_0_6();
  v8 = OUTLINED_FUNCTION_21_1();
  sub_266E65144(v8, v9, v10);
  sub_266E5CE50(a1, v22);
  __swift_mutable_project_boxed_opaque_existential_1(v22, v22[3]);
  OUTLINED_FUNCTION_3_2();
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_1();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  v18 = *v16;
  sub_266E648A8();
  v20 = v19;
  result = __swift_destroy_boxed_opaque_existential_0(v22);
  *a2 = v20;
  return result;
}

uint64_t sub_266E617FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_266E8ACA4(0, v1, 0);
  v2 = v34;
  result = sub_266E64E40(v3);
  v7 = result;
  v8 = 0;
  v9 = v3 + 56;
  v28 = v3 + 64;
  v29 = v1;
  v30 = v3 + 56;
  v31 = v3;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(v3 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v3 + 36) != v5)
      {
        goto LABEL_25;
      }

      v33 = v6;
      v32 = v5;
      v11 = (*(v3 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      result = sub_266E9D044();
      v14 = result;
      v16 = v15;
      v18 = *(v34 + 16);
      v17 = *(v34 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_266E8ACA4((v17 > 1), v18 + 1, 1);
      }

      *(v34 + 16) = v18 + 1;
      v19 = v34 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      if (v33)
      {
        goto LABEL_29;
      }

      v9 = v30;
      v3 = v31;
      v20 = 1 << *(v31 + 32);
      if (v7 >= v20)
      {
        goto LABEL_26;
      }

      v21 = *(v30 + 8 * v10);
      if ((v21 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v31 + 36) != v32)
      {
        goto LABEL_28;
      }

      v22 = v21 & (-2 << (v7 & 0x3F));
      if (v22)
      {
        v20 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v10 << 6;
        v24 = v10 + 1;
        v25 = (v28 + 8 * v10);
        while (v24 < (v20 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_266E64E80(v7, v32, 0);
            v20 = __clz(__rbit64(v26)) + v23;
            goto LABEL_19;
          }
        }

        result = sub_266E64E80(v7, v32, 0);
      }

LABEL_19:
      if (++v8 == v29)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(v31 + 36);
      v7 = v20;
      if (v20 < 0)
      {
        break;
      }
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
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_266E61A38()
{
  sub_266E9D294();

  v1 = *(v0 + 40);
  type metadata accessor for UserAccount();
  v2 = OUTLINED_FUNCTION_18_1();
  v3 = MEMORY[0x26D5F5D00](v2);
  MEMORY[0x26D5F5CB0](v3);

  MEMORY[0x26D5F5CB0](125, 0xE100000000000000);
  return 0xD000000000000014;
}

void sub_266E61AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35();
  a19 = v20;
  a20 = v21;
  v214 = v22;
  v24 = v23;
  v26 = v25;
  v216 = v27;
  v28 = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  OUTLINED_FUNCTION_19(v29);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v32);
  v34 = &v213 - v33;
  v225 = type metadata accessor for UserAccount();
  OUTLINED_FUNCTION_3_2();
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v213 - v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v49);
  v51 = &v213 - v50;
  v52 = *(v26 + 16);
  v241 = v36;
  v234 = v44;
  if (v52)
  {
    v236 = v24;
    v53 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v54 = v36;
    v213 = v26;
    v239 = v53;
    v36 = v26 + v53;
    v55 = MEMORY[0x277D84F90];
    v238 = *(v54 + 72);
    v215 = v34;
    while (1)
    {
      v56 = v55;
      OUTLINED_FUNCTION_0_6();
      v57 = OUTLINED_FUNCTION_19_0();
      sub_266E65144(v57, v58, v59);
      sub_266E64B68(v51, v34);
      v60 = sub_266E9BE84();
      if (__swift_getEnumTagSinglePayload(v34, 1, v60) == 1)
      {
        break;
      }

      v61 = sub_266E9BE64();
      v63 = v62;
      (*(*(v60 - 8) + 8))(v34, v60);
      if (!*(v236 + 16))
      {

        goto LABEL_10;
      }

      v64 = sub_266E97FDC(v61, v63);
      v66 = v65;

      v55 = v56;
      if (v66)
      {
        v67 = (*(v236 + 56) + 104 * v64);
        v68 = v67[1];
        v69 = v67[9];
        v230 = v67[8];
        v232 = v69;
        if (v68)
        {
          v226 = *v67;
          OUTLINED_FUNCTION_10_1();
          v71 = &v51[v70];
          v72 = *(v71 + 3);
          v224 = *(v71 + 2);
          v73 = *(v71 + 5);
          v223 = *(v71 + 4);
          v74 = *(v71 + 7);
          v228 = *(v71 + 6);
          v75 = *(v71 + 11);
          v229 = *(v71 + 10);
          v76 = v68;
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_10_1();
        v86 = &v51[v85];
        v87 = *&v51[v85];
        v76 = *&v51[v85 + 8];
        v72 = *&v51[v85 + 24];
        v224 = *&v51[v85 + 16];
        v89 = *&v51[v85 + 32];
        v88 = *&v51[v85 + 40];
        v223 = v89;
        v231 = v88;
        v90 = *(v86 + 6);
        v91 = *(v86 + 7);
        v92 = *(v86 + 11);
        v229 = *(v86 + 10);
        v228 = v90;
        if (v76)
        {
          v93 = v92;
          v226 = v87;

          v75 = v93;
          v74 = v91;
          v73 = v231;
LABEL_20:
          OUTLINED_FUNCTION_24(v75, MEMORY[0x277D84FA0]);

          v231 = v73;

          v94 = OUTLINED_FUNCTION_8_2();
          v218 = v76;
          sub_266E63CC4(v94, v226, v76);

          v91 = v74;
LABEL_21:
          v95 = v230;
          if (v72)
          {

            v96 = OUTLINED_FUNCTION_8_2();
            sub_266E63CC4(v96, v224, v72);
          }

          v220 = v72;
          v97 = v231;
          v98 = v232;
          if (v231)
          {

            v99 = OUTLINED_FUNCTION_8_2();
            sub_266E63CC4(v99, v223, v97);
          }

          if (v98)
          {

            v100 = OUTLINED_FUNCTION_8_2();
            sub_266E63CC4(v100, v95, v98);
          }

          v101 = v228;
          if (v91)
          {

            v102 = OUTLINED_FUNCTION_8_2();
            sub_266E63CC4(v102, v101, v91);
          }

          v103 = v227;
          v104 = v229;
          if (v227)
          {

            v105 = OUTLINED_FUNCTION_8_2();
            sub_266E63CC4(v105, v104, v103);
          }

          v219 = v91;
          v217 = v243;
        }

        else
        {
          if (v72 || v231 || v232 || v91 || v92)
          {
            v226 = v87;
            OUTLINED_FUNCTION_24(v92, MEMORY[0x277D84FA0]);

            v218 = 0;
            goto LABEL_21;
          }

          memcpy(v245, v86, 0x68uLL);
          v217 = v245[12];
          v229 = v245[10];
          v227 = v245[11];
          v230 = v245[8];
          v232 = v245[9];
          v228 = v245[6];
          v219 = v245[7];
          v223 = v245[4];
          v231 = v245[5];
          v224 = v245[2];
          v220 = v245[3];
          v226 = v245[0];
          v218 = v245[1];
          sub_266E64D5C(v245, &v243);
        }

        v106 = v225;
        v107 = &v51[*(v225 + 24)];
        v109 = *v107;
        v108 = *(v107 + 1);
        v110 = v221;
        sub_266E64B68(v51, v221);
        v111 = &v51[v106[5]];
        v112 = *v111;
        v113 = *(v111 + 1);
        LOBYTE(v111) = v51[v106[8]];
        v114 = (v110 + v106[6]);
        *v114 = v109;
        v114[1] = v108;
        v115 = (v110 + v106[5]);
        *v115 = v112;
        v115[1] = v113;
        *(v110 + v106[8]) = v111;
        v116 = (v110 + v106[7]);
        v117 = v218;
        *v116 = v226;
        v116[1] = v117;
        v118 = v220;
        v116[2] = v224;
        v116[3] = v118;
        v119 = v231;
        v116[4] = v223;
        v116[5] = v119;
        v120 = v219;
        v116[6] = v228;
        v116[7] = v120;
        v121 = v232;
        v116[8] = v230;
        v116[9] = v121;
        v122 = v227;
        v116[10] = v229;
        v116[11] = v122;
        v116[12] = v217;
        OUTLINED_FUNCTION_0_6();
        sub_266E65144(v110, v222, v123);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = *(v55 + 16);
          v131 = OUTLINED_FUNCTION_12_0();
          v55 = sub_266E55C04(v131, v132, v133, v55);
        }

        v34 = v215;
        v79 = *(v55 + 16);
        v124 = *(v55 + 24);
        v80 = v79 + 1;
        if (v79 >= v124 >> 1)
        {
          v55 = OUTLINED_FUNCTION_15(v124);
        }

        OUTLINED_FUNCTION_1_5();
        sub_266E651A4(v221, v125);
        v81 = &v244;
        goto LABEL_16;
      }

LABEL_11:
      OUTLINED_FUNCTION_0_6();
      sub_266E65144(v51, v242, v77);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v126 = *(v55 + 16);
        v127 = OUTLINED_FUNCTION_12_0();
        v55 = sub_266E55C04(v127, v128, v129, v55);
      }

      v79 = *(v55 + 16);
      v78 = *(v55 + 24);
      v80 = v79 + 1;
      if (v79 >= v78 >> 1)
      {
        v55 = OUTLINED_FUNCTION_15(v78);
      }

      v81 = &a12;
LABEL_16:
      v82 = *(v81 - 32);
      OUTLINED_FUNCTION_1_5();
      sub_266E651A4(v51, v83);
      *(v55 + 16) = v80;
      v84 = v238;
      sub_266E64BD8(v82, v55 + v239 + v79 * v238);
      v36 += v84;
      if (!--v52)
      {

        OUTLINED_FUNCTION_22_1();
        v44 = v234;
        goto LABEL_45;
      }
    }

    sub_266E651FC(v34, &qword_2800E9360, &qword_266E9EE20);
LABEL_10:
    v55 = v56;
    goto LABEL_11;
  }

  v55 = MEMORY[0x277D84F90];
LABEL_45:
  v134 = v216;
  v216[5] = v55;
  sub_266E5CE50(v214, v134);

  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9378, &qword_266E9EE30);
  v136 = sub_266E9CFE4();
  v243 = v136;
  v137 = *(v55 + 16);
  v239 = v55;
  v138 = v237;
  v242 = v137;
  if (!v137)
  {
LABEL_71:
    v216[6] = v136;
    v182 = 0;
    v245[0] = sub_266E9CFE4();
    v183 = v233;
    while (v137 != v182)
    {
      if (v182 >= *(v55 + 16))
      {
        __break(1u);
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_13_0();
      v184 = *(v36 + 72);
      OUTLINED_FUNCTION_0_6();
      sub_266E65144(v185, v44, v186);
      sub_266E62AA4(v245, v44);
      ++v182;
      OUTLINED_FUNCTION_1_5();
      sub_266E651A4(v44, v187);
    }

    v216[7] = v245[0];
    v188 = v225;
    v44 = sub_266E9CFE4();
    if (!v137)
    {
LABEL_89:
      __swift_destroy_boxed_opaque_existential_0(v214);

      v216[8] = v44;
      OUTLINED_FUNCTION_33();
      return;
    }

    v189 = 0;
    v190 = (v183 + *(v188 + 20));
    OUTLINED_FUNCTION_13_0();
    v238 = v55 + v191;
    while (1)
    {
      if (v189 >= *(v55 + 16))
      {
        goto LABEL_92;
      }

      v28 = *(v36 + 72);
      OUTLINED_FUNCTION_0_6();
      sub_266E65144(v192, v183, v193);
      if (v190[1])
      {
        break;
      }

LABEL_88:
      ++v189;
      OUTLINED_FUNCTION_1_5();
      sub_266E651A4(v183, v211);
      if (v137 == v189)
      {
        goto LABEL_89;
      }
    }

    v194 = *v190;
    v195 = sub_266E9D044();
    v197 = v196;
    OUTLINED_FUNCTION_0_6();
    sub_266E65144(v183, v240, v198);
    swift_isUniquelyReferenced_nonNull_native();
    v245[0] = v44;
    v199 = sub_266E97FDC(v195, v197);
    if (__OFADD__(*(v44 + 2), (v200 & 1) == 0))
    {
      goto LABEL_93;
    }

    v36 = v199;
    v201 = v200;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9380, &qword_266E9EE38);
    if (sub_266E9D324())
    {
      v202 = sub_266E97FDC(v195, v197);
      v183 = v233;
      if ((v201 & 1) != (v203 & 1))
      {
        goto LABEL_97;
      }

      v36 = v202;
      if ((v201 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      v183 = v233;
      if ((v201 & 1) == 0)
      {
LABEL_83:
        v44 = v245[0];
        *(v245[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
        v204 = (*(v44 + 6) + 16 * v36);
        *v204 = v195;
        v204[1] = v197;
        v205 = OUTLINED_FUNCTION_20_1();
        sub_266E64BD8(v205, v206);
        v207 = *(v44 + 2);
        v168 = __OFADD__(v207, 1);
        v208 = v207 + 1;
        if (v168)
        {
          goto LABEL_95;
        }

        *(v44 + 2) = v208;
        goto LABEL_87;
      }
    }

    v44 = v245[0];
    v209 = OUTLINED_FUNCTION_20_1();
    sub_266E64CF8(v209, v210);
LABEL_87:
    OUTLINED_FUNCTION_22_1();
    v55 = v239;
    v137 = v242;
    goto LABEL_88;
  }

  v231 = v135;
  v139 = 0;
  OUTLINED_FUNCTION_10_1();
  v141 = &v138[v140];
  OUTLINED_FUNCTION_13_0();
  v232 = v142;
  v238 = v55 + v142;
  v236 = v141;
  while (v139 < *(v55 + 16))
  {
    v143 = *(v36 + 72);
    OUTLINED_FUNCTION_0_6();
    sub_266E65144(v144, v138, v145);
    if (*(v141 + 88))
    {
      v146 = *(v141 + 80);
      v36 = sub_266E9D044();
      v148 = v147;
      v44 = v243;
      if (!*(v243 + 2))
      {
        goto LABEL_52;
      }

      v149 = OUTLINED_FUNCTION_19_0();
      sub_266E97FDC(v149, v150);
      if ((v151 & 1) == 0)
      {
        v44 = v243;
LABEL_52:
        swift_isUniquelyReferenced_nonNull_native();
        v245[0] = v44;
        v152 = OUTLINED_FUNCTION_19_0();
        v154 = sub_266E97FDC(v152, v153);
        v156 = *(v44 + 2);
        v157 = (v155 & 1) == 0;
        v141 = v156 + v157;
        if (__OFADD__(v156, v157))
        {
          goto LABEL_94;
        }

        v158 = v154;
        v159 = v155;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9388, &qword_266E9EE40);
        v44 = v245;
        if (sub_266E9D324())
        {
          v44 = v245[0];
          v160 = OUTLINED_FUNCTION_19_0();
          v162 = sub_266E97FDC(v160, v161);
          if ((v159 & 1) != (v163 & 1))
          {
            goto LABEL_97;
          }

          v158 = v162;
        }

        v138 = v245[0];
        if (v159)
        {
          v164 = *(v245[0] + 56);
          v165 = *(v164 + 8 * v158);
          *(v164 + 8 * v158) = MEMORY[0x277D84F90];
        }

        else
        {
          *(v245[0] + 8 * (v158 >> 6) + 64) |= 1 << v158;
          v166 = (*(v138 + 6) + 16 * v158);
          *v166 = v36;
          v166[1] = v148;
          *(*(v138 + 7) + 8 * v158) = MEMORY[0x277D84F90];
          v167 = *(v138 + 2);
          v168 = __OFADD__(v167, 1);
          v169 = v167 + 1;
          if (v168)
          {
            goto LABEL_96;
          }

          *(v138 + 2) = v169;
        }

        v243 = v138;
        v55 = v239;
        OUTLINED_FUNCTION_17_0();
      }

      v170 = OUTLINED_FUNCTION_8_2();
      v172 = sub_266E629E4(v170, v36, v148);
      if (*v171)
      {
        v36 = v171;
        OUTLINED_FUNCTION_0_6();
        sub_266E65144(v138, v235, v173);
        v174 = *v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v36 = v174;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v178 = *(v174 + 16);
          v179 = OUTLINED_FUNCTION_12_0();
          v174 = sub_266E55C04(v179, v180, v181, v174);
          *v36 = v174;
        }

        v141 = *(v174 + 16);
        v176 = *(v174 + 24);
        v138 = (v141 + 1);
        if (v141 >= v176 >> 1)
        {
          v174 = sub_266E55C04(v176 > 1, v141 + 1, 1, v174);
          *v36 = v174;
        }

        OUTLINED_FUNCTION_22_1();
        *(v174 + 16) = v138;
        sub_266E64BD8(v235, v174 + v232 + v141 * v143);
        (v172)(v245, 0);
        OUTLINED_FUNCTION_17_0();
      }

      else
      {
        (v172)(v245, 0);
        OUTLINED_FUNCTION_22_1();
      }

      v44 = v234;
      v137 = v242;
    }

    ++v139;
    OUTLINED_FUNCTION_1_5();
    sub_266E651A4(v138, v177);
    if (v137 == v139)
    {
      v136 = v243;
      goto LABEL_71;
    }
  }

LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);

  OUTLINED_FUNCTION_1_5();
  sub_266E651A4(v44, v212);

  __break(1u);
LABEL_97:
  sub_266E9D434();
  __break(1u);
}

void (*sub_266E629E4(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_266E64560(v6, a2, a3);
  return sub_266E62A58;
}

void sub_266E62A58(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_266E62AA4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for UserAccount();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v48 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v7 + 36);
  v53 = a2;
  v10 = sub_266E617FC(*(a2 + v9 + 96));
  v11 = v10;
  v54 = *(v10 + 16);
  if (!v54)
  {
  }

  v47[1] = v2;
  v12 = 0;
  v13 = (v10 + 40);
  v50 = xmmword_266E9ED60;
  v51 = a1;
  v49 = v10;
  while (v12 < *(v11 + 16))
  {
    v14 = *(v13 - 1);
    v15 = *v13;
    v16 = *(*a1 + 16);

    if (v16 && (sub_266E97FDC(v14, v15), (v17 & 1) != 0))
    {
      v19 = sub_266E629E4(v55, v14, v15);
      if (*v18)
      {
        v20 = v18;
        sub_266E65144(v53, v48, type metadata accessor for UserAccount);
        v21 = *v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v20 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = sub_266E55C04(0, *(v21 + 16) + 1, 1, v21);
          *v20 = v21;
        }

        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          v21 = sub_266E55C04(v23 > 1, v24 + 1, 1, v21);
          *v20 = v21;
        }

        *(v21 + 16) = v24 + 1;
        sub_266E64BD8(v48, v21 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v24);
        (v19)(v55, 0);

        a1 = v51;
      }

      else
      {
        (v19)(v55, 0);
      }
    }

    else
    {
      v56 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9398, &qword_266E9EE50);
      v25 = *(v52 + 72);
      v26 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v50;
      sub_266E65144(v53, v27 + v26, type metadata accessor for UserAccount);
      v28 = *a1;
      swift_isUniquelyReferenced_nonNull_native();
      v55[0] = *a1;
      v29 = v55[0];
      v30 = v14;
      v31 = v14;
      v32 = v15;
      v33 = sub_266E97FDC(v31, v15);
      if (__OFADD__(*(v29 + 16), (v34 & 1) == 0))
      {
        goto LABEL_26;
      }

      v35 = v33;
      v36 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9388, &qword_266E9EE40);
      if (sub_266E9D324())
      {
        v37 = sub_266E97FDC(v30, v32);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_28;
        }

        v35 = v37;
      }

      if (v36)
      {

        v39 = v55[0];
        v40 = *(v55[0] + 56);
        v41 = *(v40 + 8 * v35);
        *(v40 + 8 * v35) = v27;
      }

      else
      {
        v39 = v55[0];
        *(v55[0] + 8 * (v35 >> 6) + 64) |= 1 << v35;
        v42 = (v39[6] + 16 * v35);
        *v42 = v30;
        v42[1] = v32;
        *(v39[7] + 8 * v35) = v27;
        v43 = v39[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_27;
        }

        v39[2] = v45;
      }

      a1 = v51;
      *v51 = v39;
      v11 = v49;
      v12 = v56;
    }

    ++v12;
    v13 += 2;
    if (v54 == v12)
    {
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_266E9D434();
  __break(1u);
  return result;
}

uint64_t sub_266E62ED0()
{
  v1 = *(v0 + 48);
  v2 = sub_266E9D044();
  v4 = sub_266E98240(v2, v3, v1);

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = *(v0 + 56);
    v7 = sub_266E9D044();
    v9 = sub_266E98240(v7, v8, v6);

    if (!v9)
    {
      return 0;
    }

    v5 = 2;
  }

  return v5;
}

void sub_266E62F74()
{
  OUTLINED_FUNCTION_35();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9370, &qword_266E9EE28);
  OUTLINED_FUNCTION_19(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for UserAccount();
  v10 = OUTLINED_FUNCTION_4_3(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3_1();
  v15 = v14 - v13;
  v25 = MEMORY[0x277D84F90];
  v16 = *(v0 + 48);
  v17 = sub_266E9D044();
  v19 = sub_266E98240(v17, v18, v16);

  if (v19 || (v20 = *(v0 + 56), v21 = sub_266E9D044(), v19 = sub_266E98240(v21, v22, v20), , v19))
  {
    sub_266E93908(v19);
  }

  if (*(v25 + 16) < 2uLL)
  {
    sub_266E63174(v25, v8);

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_266E651FC(v8, &qword_2800E9370, &qword_266E9EE28);
    }

    else
    {
      sub_266E64BD8(v8, v15);
      sub_266E64BD8(v15, v2);
    }

    type metadata accessor for UserAccountManager.LookupResult();
    OUTLINED_FUNCTION_18_1();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_33();
  }

  else
  {
    *v2 = v25;
    type metadata accessor for UserAccountManager.LookupResult();
    OUTLINED_FUNCTION_18_1();
    OUTLINED_FUNCTION_33();

    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_266E63174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for UserAccount();
  v6 = v5;
  if (v4)
  {
    sub_266E65144(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for UserAccount);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_266E6322C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UserAccount();
  OUTLINED_FUNCTION_3_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9370, &qword_266E9EE28);
  OUTLINED_FUNCTION_19(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
  v19 = *(v1 + 40);
  if (*(v19 + 16) == 2)
  {
    for (i = 0; ; ++i)
    {
      if (i == 2)
      {
        sub_266E651FC(a1, &qword_2800E9370, &qword_266E9EE28);
        v26 = 1;
LABEL_9:
        __swift_storeEnumTagSinglePayload(v17, v26, 1, v3);
        return sub_266E64C3C(v17, a1);
      }

      if (i >= *(v19 + 16))
      {
        break;
      }

      v21 = v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v22 = *(v5 + 72);
      OUTLINED_FUNCTION_0_6();
      sub_266E65144(v23, v11, v24);
      if ((*(v11 + *(v3 + 32)) & 1) == 0)
      {
        sub_266E651FC(a1, &qword_2800E9370, &qword_266E9EE28);
        sub_266E64BD8(v11, v17);
        v26 = 0;
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_1_5();
      result = sub_266E651A4(v11, v25);
    }

    __break(1u);
  }

  return result;
}

void sub_266E633FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_35();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for UserAccount();
  v27 = OUTLINED_FUNCTION_19(v26);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_3_1();
  v32 = v31 - v30;
  v33 = type metadata accessor for UserAccountManager.LookupResult();
  v34 = OUTLINED_FUNCTION_4_3(v33);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&a9 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v41 = &a9 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93C0, &qword_266E9EF18);
  OUTLINED_FUNCTION_19(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_26();
  v46 = MEMORY[0x28223BE20](v45);
  v48 = &a9 - v47;
  v49 = *(v46 + 56);
  sub_266E65144(v25, &a9 - v47, type metadata accessor for UserAccountManager.LookupResult);
  sub_266E65144(v23, &v48[v49], type metadata accessor for UserAccountManager.LookupResult);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v51 = OUTLINED_FUNCTION_5_3();
      sub_266E65144(v51, v39, v52);
      v53 = *v39;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_266E6367C(v53, *&v48[v49]);

LABEL_12:
        OUTLINED_FUNCTION_6_2();
        goto LABEL_13;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v54 = OUTLINED_FUNCTION_5_3();
    sub_266E65144(v54, v41, v55);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_266E64BD8(&v48[v49], v32);
      sub_266E7DDB0(v41, v32);
      sub_266E651A4(v32, type metadata accessor for UserAccount);
      sub_266E651A4(v41, type metadata accessor for UserAccount);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_1_5();
    sub_266E651A4(v41, v56);
  }

  sub_266E651FC(v48, &qword_2800E93C0, &qword_266E9EF18);
LABEL_13:
  OUTLINED_FUNCTION_33();
}

uint64_t sub_266E6367C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266E9BE84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E93C8, &unk_266E9EF20);
  v12 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v14 = &v49 - v13;
  v15 = type metadata accessor for UserAccount();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v23 = &v49 - v22;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    goto LABEL_32;
  }

  if (!v24 || a1 == a2)
  {
    v47 = 1;
    return v47 & 1;
  }

  v55 = v20;
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v50 = (v5 + 32);
  v52 = (v5 + 8);
  v54 = *(v21 + 72);
  v51 = v14;
  while (1)
  {
    sub_266E65144(v26, v23, type metadata accessor for UserAccount);
    sub_266E65144(v27, v19, type metadata accessor for UserAccount);
    v28 = *(v57 + 48);
    sub_266E64B68(v23, v14);
    sub_266E64B68(v19, &v14[v28]);
    if (__swift_getEnumTagSinglePayload(v14, 1, v4) != 1)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(&v14[v28], 1, v4) != 1)
    {
      goto LABEL_30;
    }

    sub_266E651FC(v14, &qword_2800E9360, &qword_266E9EE20);
    v29 = v55;
LABEL_10:
    v35 = v29[5];
    v36 = &v23[v35];
    v37 = *&v23[v35 + 8];
    v38 = &v19[v35];
    v39 = *(v38 + 1);
    if (v37)
    {
      if (!v39)
      {
        goto LABEL_31;
      }

      v40 = *v36 == *v38 && v37 == v39;
      if (!v40 && (sub_266E9D3E4() & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (v39)
    {
      goto LABEL_31;
    }

    v41 = v29[6];
    v42 = *&v23[v41];
    v43 = *&v23[v41 + 8];
    v44 = &v19[v41];
    v45 = v42 == *v44 && v43 == *(v44 + 1);
    if (!v45 && (sub_266E9D3E4() & 1) == 0)
    {
      goto LABEL_31;
    }

    memcpy(__dst, &v23[v29[7]], sizeof(__dst));
    memcpy(v59, &v19[v29[7]], sizeof(v59));
    if ((sub_266E612CC(__dst, v59) & 1) == 0)
    {
      goto LABEL_31;
    }

    v46 = v23[v29[8]] ^ v19[v29[8]];
    sub_266E651A4(v19, type metadata accessor for UserAccount);
    sub_266E651A4(v23, type metadata accessor for UserAccount);
    if ((v46 & 1) == 0)
    {
      v27 += v54;
      v26 += v54;
      if (--v24)
      {
        continue;
      }
    }

    v47 = v46 ^ 1;
    return v47 & 1;
  }

  sub_266E64B68(v14, v11);
  if (__swift_getEnumTagSinglePayload(&v14[v28], 1, v4) != 1)
  {
    v30 = &v14[v28];
    v31 = v11;
    v32 = v56;
    (*v50)(v56, v30, v4);
    sub_266E65254();
    v53 = sub_266E9D004();
    v33 = *v52;
    v34 = v32;
    v11 = v31;
    v14 = v51;
    (*v52)(v34, v4);
    v33(v11, v4);
    sub_266E651FC(v14, &qword_2800E9360, &qword_266E9EE20);
    v29 = v55;
    if ((v53 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_10;
  }

  (*v52)(v11, v4);
LABEL_30:
  sub_266E651FC(v14, &qword_2800E93C8, &unk_266E9EF20);
LABEL_31:
  sub_266E651A4(v19, type metadata accessor for UserAccount);
  sub_266E651A4(v23, type metadata accessor for UserAccount);
LABEL_32:
  v47 = 0;
  return v47 & 1;
}

unint64_t sub_266E63C18(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_266E63C60(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_266E9ED70;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_266E63CC4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_266E9D484();
  sub_266E9D074();
  v9 = sub_266E9D4A4();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_266E9D3E4() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_266E6406C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_266E63E10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9390, &qword_266E9EE48);
  result = sub_266E9D274();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_266E63C60(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_266E9D484();
    sub_266E9D074();
    result = sub_266E9D4A4();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_266E6406C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_266E63E10(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_266E6432C(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_266E9D484();
      sub_266E9D074();
      result = sub_266E9D4A4();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_266E9D3E4() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_266E641D4();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_266E9D424();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_266E641D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9390, &qword_266E9EE48);
  v2 = *v0;
  v3 = sub_266E9D264();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_266E6432C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9390, &qword_266E9EE48);
  result = sub_266E9D274();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_266E9D484();

        sub_266E9D074();
        result = sub_266E9D4A4();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

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
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void (*sub_266E64560(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_266E64874(v7);
  v7[9] = sub_266E64658(v7 + 4, a2, a3);
  return sub_266E645F8;
}

void sub_266E645F8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_266E64658(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_266E97FDC(a2, a3);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9388, &qword_266E9EE40);
  if (sub_266E9D324())
  {
    v14 = *v4;
    v15 = sub_266E97FDC(a2, a3);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_266E9D434();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_266E64798;
}

void sub_266E64798(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_266E63C18(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_266E64DEC(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9378, &qword_266E9EE30);
    sub_266E9D334();
  }

  v6 = *v1;

  free(v1);
}

uint64_t (*sub_266E64874(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_266E6489C;
}

void sub_266E648A8()
{
  OUTLINED_FUNCTION_35();
  v32 = v0;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  OUTLINED_FUNCTION_19(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;

  v9 = type metadata accessor for UserAccount();
  v10 = (v2 + v9[5]);
  v11 = *v10;
  v12 = v10[1];
  if (v12)
  {
    OUTLINED_FUNCTION_21_1();
    v13 = sub_266E9D014();
  }

  else
  {
    v13 = 0;
  }

  v14 = v2 + v9[7];
  if (*(v14 + 88))
  {
    v15 = *(v14 + 80);
    v16 = *(v14 + 88);
  }

  v17 = objc_allocWithZone(type metadata accessor for Account());

  v18 = sub_266E9D014();

  v19 = [v17 initWithIdentifier:v13 displayString:v18];

  v20 = (v2 + v9[6]);
  v21 = *v20;
  v22 = v20[1];
  v23 = v19;
  v24 = sub_266E9D014();
  [v23 setProfileId_];

  v25 = *(v2 + v9[8]);
  v26 = sub_266E9D124();
  [v23 setIsActive_];

  [v23 setMatchedMultiple_];
  if (v12)
  {
    OUTLINED_FUNCTION_21_1();
    v27 = sub_266E9D014();
  }

  else
  {
    v27 = 0;
  }

  [v23 setICloudAltDSID_];

  sub_266E64B68(v2, v8);
  v28 = sub_266E9BE84();
  if (__swift_getEnumTagSinglePayload(v8, 1, v28) == 1)
  {
    sub_266E651FC(v8, &qword_2800E9360, &qword_266E9EE20);
    v29 = 0;
  }

  else
  {
    sub_266E9BE64();
    (*(*(v28 - 8) + 8))(v8, v28);
    OUTLINED_FUNCTION_21_1();
    v29 = sub_266E9D014();
  }

  [v23 setHomeUserID_];

  [v23 setProfileImage_];
  OUTLINED_FUNCTION_1_5();
  sub_266E651A4(v2, v30);
  OUTLINED_FUNCTION_33();
}

uint64_t sub_266E64B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9360, &qword_266E9EE20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E64BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAccount();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E64C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E9370, &qword_266E9EE28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for UserAccountManager.LookupResult()
{
  result = qword_2800E93A0;
  if (!qword_2800E93A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266E64CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserAccount();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_266E64E40(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_266E9D244();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_266E64E80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_266E64E94()
{
  type metadata accessor for UserAccount();
  if (v0 <= 0x3F)
  {
    sub_266E64F08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_266E64F08()
{
  if (!qword_2800E93B0)
  {
    type metadata accessor for UserAccount();
    v0 = sub_266E9D114();
    if (!v1)
    {
      atomic_store(v0, &qword_2800E93B0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SwitchByNameType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SwitchByNameType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x266E650B4);
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

unint64_t sub_266E650F0()
{
  result = qword_2800E93B8;
  if (!qword_2800E93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E93B8);
  }

  return result;
}

uint64_t sub_266E65144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_3(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266E651A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_266E651FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_266E65254()
{
  result = qword_2800E93D0;
  if (!qword_2800E93D0)
  {
    sub_266E9BE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800E93D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return sub_266E651A4(v0, type metadata accessor for UserAccountManager.LookupResult);
}

uint64_t OUTLINED_FUNCTION_15@<X0>(unint64_t a1@<X8>)
{

  return sub_266E55C04(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 304) = a2;
  *(v2 - 432) = a1;
}

uint64_t sub_266E6542C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266E6546C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266E654D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_266E67DFC(a1, a3);
  sub_266E67D3C(a2, &v8, &qword_2800E93F0, &qword_266E9F028);
  if (v9)
  {
    sub_266E67DA0(a2, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_266E5D10C(&v8, v10);
  }

  else
  {
    sub_266E9C7F4();
    sub_266E67DA0(a2, &qword_2800E93F0, &qword_266E9F028);
    __swift_destroy_boxed_opaque_existential_0(a1);
    if (v9)
    {
      sub_266E67DA0(&v8, &qword_2800E93F0, &qword_266E9F028);
    }
  }

  sub_266E5D10C(v10, a3 + 40);
  sub_266E67DFC(a3 + 40, v10);
  type metadata accessor for LocUtil();
  v6 = swift_allocObject();
  result = sub_266E5D10C(v10, v6 + 16);
  *(a3 + 80) = v6;
  return result;
}

uint64_t sub_266E655EC()
{
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_24_0(v1);
  OUTLINED_FUNCTION_2_3(v2);
  *(v0 + 40) = v3;
  v5 = *(v4 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_18();
  v6 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266E65684()
{
  OUTLINED_FUNCTION_9_1();
  v0 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14_1(v0);
  v1 = OUTLINED_FUNCTION_7_2(&dword_266EA1210);
  v2 = OUTLINED_FUNCTION_6_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_4(v2);
  OUTLINED_FUNCTION_19_1();

  return v4();
}

uint64_t sub_266E65720()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E65818@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800E94C0, &unk_266E9EFC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v12 - v5;
  v7 = v1[9];
  __swift_project_boxed_opaque_existential_0(v1 + 5, v1[8]);
  sub_266E9C2B4();
  v8 = sub_266E9C5B4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
  v9 = sub_266E9C834();
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v10 = MEMORY[0x277D5C1D8];
  a1[3] = v9;
  a1[4] = v10;
  __swift_allocate_boxed_opaque_existential_1Tm(a1);
  sub_266E9C4A4();
  sub_266E67DA0(v12, &qword_2800E94D0, &unk_266E9F5C0);
  return sub_266E67DA0(v6, &qword_2800E94C0, &unk_266E9EFC0);
}

uint64_t sub_266E65988()
{
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_24_0(v1);
  OUTLINED_FUNCTION_2_3(v2);
  *(v0 + 40) = v3;
  v5 = *(v4 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_18();
  v6 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266E65A20()
{
  OUTLINED_FUNCTION_9_1();
  v0 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14_1(v0);
  v1 = OUTLINED_FUNCTION_7_2(&dword_266EA1210);
  v2 = OUTLINED_FUNCTION_6_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_4(v2);
  OUTLINED_FUNCTION_19_1();

  return v4();
}

uint64_t sub_266E65ABC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E65BB4()
{
  OUTLINED_FUNCTION_9_1();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_266E65818(*(v0 + 16));
  (*(v2 + 8))(v1, v4);

  OUTLINED_FUNCTION_8_0();

  return v5();
}

uint64_t sub_266E65C4C()
{
  OUTLINED_FUNCTION_7_0();
  v1 = *(v0 + 48);

  OUTLINED_FUNCTION_8_0();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_266E65CA8()
{
  OUTLINED_FUNCTION_7_0();
  v2 = OUTLINED_FUNCTION_24_0(v1);
  OUTLINED_FUNCTION_2_3(v2);
  *(v0 + 40) = v3;
  v5 = *(v4 + 64);
  *(v0 + 48) = OUTLINED_FUNCTION_18();
  v6 = OUTLINED_FUNCTION_6_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266E65D40()
{
  OUTLINED_FUNCTION_9_1();
  v0 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_14_1(v0);
  v1 = OUTLINED_FUNCTION_7_2(&dword_266EA1210);
  v2 = OUTLINED_FUNCTION_6_3(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_4(v2);
  OUTLINED_FUNCTION_19_1();

  return v4();
}

uint64_t sub_266E65DDC()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v1;
  OUTLINED_FUNCTION_1_4();
  *v7 = v6;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266E65ED4()
{
  v1 = v0;
  v2 = sub_266E9BEA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_266E9CFA4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + 80);
  v13 = sub_266E79690(0x53474E4954544553, 0xE800000000000000);
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    sub_266E67C88();
    v17 = sub_266E93AD4(v15, v16);

    return v17;
  }

  else
  {
    if (qword_2800E8D80 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v7, qword_2800EC7E0);
    (*(v8 + 16))(v11, v19, v7);
    sub_266E67BF8(v1, v35);
    v20 = sub_266E9CF84();
    v21 = sub_266E9D1A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v32 = v22;
      v33 = swift_slowAlloc();
      v34 = v33;
      *v22 = 136315138;
      __swift_project_boxed_opaque_existential_0(v36, v36[3]);
      v31 = v21;
      sub_266E9C2A4();
      sub_266E67C30();
      v23 = sub_266E9D3D4();
      v25 = v24;
      (*(v3 + 8))(v6, v2);
      sub_266E5D044(v35);
      v26 = sub_266E6E7D4(v23, v25, &v34);

      v27 = v32;
      *(v32 + 1) = v26;
      v28 = v27;
      _os_log_impl(&dword_266E51000, v20, v31, "Missing Settings label for locale:%s", v27, 0xCu);
      v29 = v33;
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x26D5F66A0](v29, -1, -1);
      MEMORY[0x26D5F66A0](v28, -1, -1);

      (*(v8 + 8))(v11, v7);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
      sub_266E5D044(v35);
    }

    return MEMORY[0x277D84F90];
  }
}