void sub_275542F74(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = sub_27554C778();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a1 && (v16 = [a1 addEmailURL]) != 0)
    {
      v17 = v16;
      v18 = [objc_allocWithZone(MEMORY[0x277CEC760]) initWithURLString:v16 account:*&v15[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount]];

      v19 = sub_2755422C0();
      if (v18)
      {
        v20 = [v18 urlRequest];
        if (v20)
        {
          v21 = v20;
          sub_27554C4A8();

          v22 = 0;
        }

        else
        {
          v22 = 1;
        }

        v29 = sub_27554C4D8();
        v30 = *(v29 - 8);
        (*(v30 + 56))(v6, v22, 1, v29);
        sub_2755151DC(v6, v8, &qword_2809F60B8, &qword_2755513B8);
        v28 = 0;
        if ((*(v30 + 48))(v8, 1, v29) != 1)
        {
          v28 = sub_27554C498();
          (*(v30 + 8))(v8, v29);
        }
      }

      else
      {
        v27 = sub_27554C4D8();
        (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
        v28 = 0;
      }

      [v19 loadXMLUIWithRequest_];
    }

    else
    {
      if (qword_2809F4D80 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v9, qword_2809F8DA8);
      (*(v10 + 16))(v13, v23, v9);
      v24 = sub_27554C758();
      v25 = sub_27554D438();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_27550C000, v24, v25, "Add email url is missing from bag", v26, 2u);
        MEMORY[0x277C7BAC0](v26, -1, -1);
      }

      (*(v10 + 8))(v13, v9);
    }
  }
}

uint64_t sub_275543398(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = a3;
  v7 = sub_27554D278();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_27554D2A8();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v16 = sub_27554D4A8();
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = a1;
  v17[3] = v18;
  v17[4] = a4;
  v17[5] = a2;
  aBlock[4] = sub_275547B8C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_85;
  v19 = _Block_copy(aBlock);

  v20 = a2;

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  sub_27554D538();
  MEMORY[0x277C7B170](0, v15, v11, v19);
  _Block_release(v19);

  (*(v8 + 8))(v11, v7);
  return (*(v12 + 8))(v15, v23);
}

uint64_t sub_27554364C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v7 = sub_27554C778();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return a2(v10);
  }

  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_2809F8DA8);
  (*(v8 + 16))(v12, v13, v7);
  v14 = a4;
  v15 = sub_27554C758();
  v16 = sub_27554D438();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 134218242;
    *(v17 + 4) = a1;
    *(v17 + 12) = 2112;
    if (a4)
    {
      v19 = a4;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v17 + 14) = v20;
    *v18 = v21;
    _os_log_impl(&dword_27550C000, v15, v16, "Renew credentials for legacy iCloud mail creation failed. Result: %ld error: %@", v17, 0x16u);
    sub_275514DA8(v18, &qword_2809F5868, &qword_275550398);
    MEMORY[0x277C7BAC0](v18, -1, -1);
    MEMORY[0x277C7BAC0](v17, -1, -1);
  }

  return (*(v8 + 8))(v12, v7);
}

id sub_2755438C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyMailAccountCreator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2755439BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v30 = a1;
  v31 = a5;
  v28 = a4;
  v6 = sub_27554D278();
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27554D2A8();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = *(v32 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v18 = &v27 - v17;
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v29 = sub_27554D4A8();
  sub_275514D40(v28, v18, &qword_2809F60B8, &qword_2755513B8);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = (v16 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a3;
  sub_2755151DC(v18, v21 + v19, &qword_2809F60B8, &qword_2755513B8);
  v22 = v31;
  *(v21 + v20) = v31;
  aBlock[4] = sub_275547A20;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_59;
  v23 = _Block_copy(aBlock);
  v24 = v22;

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  sub_27554D538();
  v25 = v29;
  MEMORY[0x277C7B170](0, v13, v9, v23);
  _Block_release(v23);

  (*(v34 + 8))(v9, v6);
  return (*(v32 + 8))(v13, v33);
}

char *sub_275543D34(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v106 = a4;
  v103 = a2;
  v104 = a3;
  v109 = a1;
  v4 = sub_27554C778();
  v107 = *(v4 - 8);
  v108 = v4;
  v5 = *(v107 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v105 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v98 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v98 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v98 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v98 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v98 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v98 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B0, &qword_2755513B0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v98 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v98 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v98 - v37;
  if (v109)
  {
    result = v106;
    if (v106)
    {
      v40 = [v106 URL];
      v41 = v108;
      v42 = v105;
      if (v40)
      {
        v43 = v40;
        sub_27554C5C8();

        v44 = sub_27554C5F8();
        (*(*(v44 - 8) + 56))(v33, 0, 1, v44);
      }

      else
      {
        v44 = sub_27554C5F8();
        (*(*(v44 - 8) + 56))(v33, 1, 1, v44);
      }

      sub_2755151DC(v33, v36, &qword_2809F60B0, &qword_2755513B0);
      sub_27554C5F8();
      v59 = *(v44 - 8);
      if ((*(v59 + 48))(v36, 1, v44) == 1)
      {
        sub_275514DA8(v36, &qword_2809F60B0, &qword_2755513B0);
        v60 = 0xE300000000000000;
        v61 = 7104878;
      }

      else
      {
        v61 = sub_27554C5B8();
        v60 = v62;
        (*(v59 + 8))(v36, v44);
      }

      v63 = v107;
      if (qword_2809F4D80 != -1)
      {
        swift_once();
      }

      v64 = __swift_project_value_buffer(v41, qword_2809F8DA8);
      (*(v63 + 16))(v42, v64, v41);

      v65 = sub_27554C758();
      v66 = sub_27554D438();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v110 = v68;
        *v67 = 136315138;
        v69 = sub_275545D14(v61, v60, &v110);

        *(v67 + 4) = v69;
        _os_log_impl(&dword_27550C000, v65, v66, "Token renew failed for iCloud mail create url %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v68);
        MEMORY[0x277C7BAC0](v68, -1, -1);
        MEMORY[0x277C7BAC0](v67, -1, -1);
      }

      else
      {
      }

      return (*(v63 + 8))(v42, v41);
    }

    goto LABEL_60;
  }

  v99 = v23;
  v101 = v14;
  v102 = v9;
  v105 = v20;
  v106 = v17;
  v109 = v26;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v45 = result;
  sub_275514D40(v104, v28, &qword_2809F60B8, &qword_2755513B8);
  v46 = sub_27554C4D8();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  result = v48(v28, 1, v46);
  if (result == 1)
  {
    goto LABEL_61;
  }

  sub_27554C4B8();
  v49 = *(v47 + 8);
  v103 = v47 + 8;
  v100 = v49;
  v49(v28, v46);
  v50 = sub_27554C5F8();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v38, 1, v50) != 1)
  {
    sub_27554C5B8();
    (*(v51 + 8))(v38, v50);
    v70 = v45;
    v71 = *&v45[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount];
    v72 = objc_allocWithZone(MEMORY[0x277CEC760]);
    v73 = v71;
    v74 = sub_27554D328();
    v75 = [v72 initWithURLString:v74 account:v73];

    if (v75)
    {
      v76 = [v75 urlRequest];
      v77 = v109;
      if (v76)
      {
        v78 = v99;
        v79 = v76;
        sub_27554C4A8();

        v80 = 0;
        v81 = v105;
      }

      else
      {
        v80 = 1;
        v81 = v105;
        v78 = v99;
      }

      (*(v47 + 56))(v78, v80, 1, v46);
      sub_2755151DC(v78, v77, &qword_2809F60B8, &qword_2755513B8);
    }

    else
    {
      v77 = v109;
      (*(v47 + 56))(v109, 1, 1, v46);
      v81 = v105;
    }

    v82 = v48(v77, 1, v46);
    v83 = v106;
    if (!v82)
    {
      v109 = v75;
      sub_275514D40(v104, v81, &qword_2809F60B8, &qword_2755513B8);
      result = v48(v81, 1, v46);
      if (result == 1)
      {
LABEL_63:
        __break(1u);
        return result;
      }

      sub_27554C478();
      v100(v81, v46);
      sub_27554C488();
      v75 = v109;
    }

    sub_275514D40(v104, v83, &qword_2809F60B8, &qword_2755513B8);
    result = v48(v83, 1, v46);
    if (result == 1)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    sub_27554C478();
    v85 = v84;
    v100(v83, v46);
    v86 = v101;
    if (v85)
    {
      v87 = sub_27554D368();
      v89 = v88;

      if (v87 == 1414745936 && v89 == 0xE400000000000000)
      {
      }

      else
      {
        v90 = sub_27554D678();

        if ((v90 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      if (!v48(v77, 1, v46))
      {
        v91 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_objectModels;
        swift_beginAccess();
        v92 = *&v70[v91];
        if (v92 >> 62)
        {
          result = sub_27554D5D8();
          if (result)
          {
LABEL_42:
            v93 = result - 1;
            if (__OFSUB__(result, 1))
            {
              __break(1u);
            }

            else if ((v92 & 0xC000000000000001) == 0)
            {
              if ((v93 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v93 < *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v94 = *(v92 + 8 * v93 + 32);
                goto LABEL_47;
              }

              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
              goto LABEL_62;
            }

            v94 = MEMORY[0x277C7B250](v93, v92);

LABEL_47:
            v95 = [v94 postbackData];

            if (v95)
            {
              sub_27554C618();
            }
          }
        }

        else
        {
          result = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
            goto LABEL_42;
          }
        }

        sub_27554C4C8();
      }
    }

LABEL_50:
    v96 = sub_2755422C0();
    sub_275514D40(v77, v86, &qword_2809F60B8, &qword_2755513B8);
    if (v48(v86, 1, v46) == 1)
    {
      v97 = 0;
    }

    else
    {
      v97 = sub_27554C498();
      v100(v86, v46);
    }

    [v96 loadXMLUIWithRequest_];

    return sub_275514DA8(v77, &qword_2809F60B8, &qword_2755513B8);
  }

  sub_275514DA8(v38, &qword_2809F60B0, &qword_2755513B0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v52 = v108;
  v53 = __swift_project_value_buffer(v108, qword_2809F8DA8);
  v54 = v107;
  v55 = v102;
  (*(v107 + 16))(v102, v53, v52);
  v56 = sub_27554C758();
  v57 = sub_27554D438();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_27550C000, v56, v57, "Renewing account token for AddEmail is nil", v58, 2u);
    MEMORY[0x277C7BAC0](v58, -1, -1);
  }

  return (*(v54 + 8))(v55, v52);
}

void sub_275544B48(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_accountStore);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v11[4] = sub_275547648;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_275542140;
  v11[3] = &block_descriptor_25;
  v8 = _Block_copy(v11);
  v9 = a3;
  v10 = a2;

  [v5 aa:v10 updatePropertiesForAppleAccount:v8 completion:?];
  _Block_release(v8);
}

void sub_275544C70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_accountStore);

    v11 = swift_allocObject();
    v11[2] = a3;
    v11[3] = a4;
    v11[4] = a5;
    aBlock[4] = sub_27554769C;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275542140;
    aBlock[3] = &block_descriptor_31;
    v12 = _Block_copy(aBlock);
    v13 = a5;

    v14 = a4;

    [v10 saveVerifiedAccount:v14 withCompletionHandler:v12];
    _Block_release(v12);
  }
}

void sub_275544DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5720, &qword_275550130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  v9 = *MEMORY[0x277CB9098];
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v10;
  *(inited + 48) = 1;
  v11 = *MEMORY[0x277CB90A0];
  *(inited + 56) = sub_27554D338();
  *(inited + 64) = v12;
  *(inited + 72) = 0;
  v13 = sub_2755464F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60F0, &qword_2755513D0);
  swift_arrayDestroy();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(Strong + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_accountStore);

    sub_275541E10(v13);

    v17 = sub_27554D2E8();

    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a3;
    aBlock[4] = sub_2755476AC;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_37;
    v19 = _Block_copy(aBlock);
    v20 = a5;

    [v16 renewCredentialsForAccount:a4 options:v17 completion:v19];
    _Block_release(v19);
  }

  else
  {
  }
}

uint64_t sub_275544FE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_27554D278();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_27554D2A8();
  v11 = *(v21 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v15 = sub_27554D4A8();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  aBlock[4] = sub_2755476F4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_43;
  v17 = _Block_copy(aBlock);
  v18 = a3;

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  sub_27554D538();
  MEMORY[0x277C7B170](0, v14, v10, v17);
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v21);
}

void sub_275545284(void *a1, uint64_t a2)
{
  if (a1)
  {
    [a1 stopActivityIndicator];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = sub_2755421B8();

      aBlock[4] = sub_275547BE8;
      aBlock[5] = a2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_275547BDC;
      aBlock[3] = &block_descriptor_46;
      v6 = _Block_copy(aBlock);

      [v5 dismissViewControllerAnimated:1 completion:v6];
      _Block_release(v6);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_275545434(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a1;
  v52 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v47 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B0, &qword_2755513B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v47 - v20;
  sub_275514D40(a2, &v47 - v20, &qword_2809F60B0, &qword_2755513B0);
  v22 = sub_27554C5F8();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_27554C5B8();
  v25 = v24;
  (*(v23 + 8))(v21, v22);
  v26 = *(v5 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount);
  v27 = objc_allocWithZone(MEMORY[0x277CEC760]);
  v28 = v26;
  v49 = v25;
  v29 = sub_27554D328();
  v30 = [v27 initWithURLString:v29 account:v28];

  v50 = v5;
  if (v30)
  {
    v31 = [v30 urlRequest];
    if (v31)
    {
      v32 = v31;
      sub_27554C4A8();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    v35 = sub_27554C4D8();
    (*(*(v35 - 8) + 56))(v15, v33, 1, v35);
    sub_2755151DC(v15, v17, &qword_2809F60B8, &qword_2755513B8);
  }

  else
  {
    v34 = sub_27554C4D8();
    (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
  }

  v36 = sub_27554C4D8();
  v37 = *(v36 - 8);
  v38 = *(v37 + 48);
  if (!v38(v17, 1, v36))
  {

    sub_27554C488();
  }

  if (!a4)
  {
    goto LABEL_26;
  }

  v39 = sub_27554D368();
  v48 = v30;
  if (v39 == 1414745936 && v40 == 0xE400000000000000)
  {

    v41 = v51;
  }

  else
  {
    v42 = sub_27554D678();

    v41 = v51;
    if ((v42 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (v38(v17, 1, v36))
  {
LABEL_20:
    v45 = sub_2755422C0();
    sub_275514D40(v17, v12, &qword_2809F60B8, &qword_2755513B8);
    if (v38(v12, 1, v36) == 1)
    {
      v46 = 0;
    }

    else
    {
      v46 = sub_27554C498();
      (*(v37 + 8))(v12, v36);
    }

    [v45 loadXMLUIWithRequest_];

    if (v41)
    {

      [v41 startActivityIndicator];

      sub_275514DA8(v17, &qword_2809F60B8, &qword_2755513B8);
      return;
    }

    goto LABEL_27;
  }

  if (v41)
  {
    v43 = [v41 postbackData];
    if (v43)
    {
      v44 = v43;
      sub_27554C618();
    }

    sub_27554C4C8();
    goto LABEL_20;
  }

LABEL_28:
  __break(1u);
}

void sub_275545AF8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_completionHandler);
    v2 = Strong;
    sub_2755475E0(v1);

    if (v1)
    {
      v1();
      sub_27554174C(v1);
    }
  }
}

uint64_t sub_275545CB8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_275545D14(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_275545D14(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_275545DE0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_27551E914(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_275545DE0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_275545EEC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_27554D5A8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_275545EEC(uint64_t a1, unint64_t a2)
{
  v4 = sub_275545F38(a1, a2);
  sub_275546068(&unk_28842A040);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_275545F38(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_275546154(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_27554D5A8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_27554D3B8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_275546154(v10, 0);
        result = sub_27554D578();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_275546068(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2755461C8(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_275546154(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6108, &qword_2755513E8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2755461C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6108, &qword_2755513E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_2755462BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6120, &qword_275551400);
    v3 = sub_27554D608();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_27552E278(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2755463C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6110, &unk_2755513F0);
    v3 = sub_27554D608();
    v4 = a1 + 32;

    while (1)
    {
      sub_275514D40(v4, &v13, &qword_2809F5620, &qword_27554F978);
      v5 = v13;
      v6 = v14;
      result = sub_27552E278(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_27551E990(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2755464F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6100, &qword_2755513E0);
    v3 = sub_27554D608();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27552E278(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2755465EC(void *a1, uint64_t a2)
{
  v5 = sub_27554C778();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8);
  v54 = *(v10 - 8);
  v11 = *(v54 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B0, &qword_2755513B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v50 - v17;
  if (!a1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  if ([a1 statusCode] != 401)
  {
    return;
  }

  v51 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  v53 = v2;
  sub_275514D40(a2, v14, &qword_2809F60B8, &qword_2755513B8);
  v19 = sub_27554C4D8();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    goto LABEL_15;
  }

  v50 = a2;
  sub_27554C4B8();
  (*(v20 + 8))(v14, v19);
  v21 = sub_27554C5F8();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v18, 1, v21) == 1)
  {
    sub_275514DA8(v18, &qword_2809F60B0, &qword_2755513B0);
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  else
  {
    v23 = sub_27554C5B8();
    v24 = v25;
    (*(v22 + 8))(v18, v21);
  }

  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v5, qword_2809F8DA8);
  (*(v6 + 16))(v9, v26, v5);

  v27 = sub_27554C758();
  v28 = sub_27554D458();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_275545D14(v23, v24, aBlock);
    _os_log_impl(&dword_27550C000, v27, v28, "Received 401 for URL %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x277C7BAC0](v30, -1, -1);
    MEMORY[0x277C7BAC0](v29, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
  v31 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5720, &qword_275550130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  v33 = *MEMORY[0x277CB9098];
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v34;
  *(inited + 48) = 1;
  v35 = *MEMORY[0x277CB90A0];
  *(inited + 56) = sub_27554D338();
  *(inited + 64) = v36;
  *(inited + 72) = 0;
  v37 = sub_2755464F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60F0, &qword_2755513D0);
  swift_arrayDestroy();
  v38 = *(v31 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount);
  v39 = [v38 accountStore];
  if (!v39)
  {
    goto LABEL_16;
  }

  v40 = v39;

  sub_275541E10(v37);

  v41 = sub_27554D2E8();

  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v51;
  sub_275514D40(v50, v51, &qword_2809F60B8, &qword_2755513B8);
  v44 = (*(v54 + 80) + 24) & ~*(v54 + 80);
  v45 = (v11 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v42;
  sub_2755151DC(v43, v46 + v44, &qword_2809F60B8, &qword_2755513B8);
  v47 = v52;
  *(v46 + v45) = v52;
  aBlock[4] = sub_275547830;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2755420C8;
  aBlock[3] = &block_descriptor_53;
  v48 = _Block_copy(aBlock);
  v49 = v47;

  [v40 renewCredentialsForAccount:v38 options:v41 completion:v48];
  _Block_release(v48);
}

id sub_275546CA8(void *a1, void *a2)
{
  v59 = a1;
  v3 = sub_27554D278();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x28223BE20](v3);
  v56 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_27554D2A8();
  v55 = *(v57 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v57);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27554D288();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_27554C778();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  result = MEMORY[0x28223BE20](v14);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_31;
  }

  if ([a2 topSignal] == 1)
  {
    v54 = v3;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v14, qword_2809F8DA8);
    (*(v15 + 16))(v19, v20, v14);
    v21 = sub_27554C758();
    v22 = sub_27554D458();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_27550C000, v21, v22, "Dismissing iCloud Mail Create flow", v23, 2u);
      MEMORY[0x277C7BAC0](v23, -1, -1);
    }

    (*(v15 + 8))(v19, v14);
    v24 = v60;
    v25 = *&v60[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_appleAccount];
    [v25 setEnabled:1 forDataclass:*MEMORY[0x277CB89C8]];
    sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
    (*(v10 + 104))(v13, *MEMORY[0x277D851C8], v9);
    v26 = sub_27554D4C8();
    (*(v10 + 8))(v13, v9);
    v27 = swift_allocObject();
    v27[2] = v24;
    v27[3] = v25;
    v28 = v59;
    v27[4] = v59;
    aBlock[4] = sub_275547638;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275547BDC;
    aBlock[3] = &block_descriptor_18;
    v29 = _Block_copy(aBlock);
    v30 = v28;
    v31 = v24;
    v32 = v25;
    sub_27554D298();
    aBlock[6] = MEMORY[0x277D84F90];
    sub_275521070();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
    sub_2755210C8();
    v33 = v56;
    v34 = v54;
    sub_27554D538();
    MEMORY[0x277C7B170](0, v8, v33, v29);
    _Block_release(v29);

    (*(v58 + 8))(v33, v34);
    (*(v55 + 8))(v8, v57);
  }

  result = [a2 topSignal];
  if (result != 2)
  {
    return result;
  }

  v35 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_objectModels;
  v36 = v60;
  result = swift_beginAccess();
  v37 = *&v36[v35];
  if (!(v37 >> 62))
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = v59;
    if (!v38)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  if (v37 < 0)
  {
    v52 = *&v36[v35];
  }

  result = sub_27554D5D8();
  v38 = result;
  v39 = v59;
  if (result)
  {
LABEL_11:
    if (v38 >= 1)
    {

      for (i = 0; i != v38; ++i)
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x277C7B250](i, v37);
        }

        else
        {
          v41 = *(v37 + 8 * i + 32);
        }

        v42 = v41;
        [v41 stopActivityIndicator];
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_18:
  if (!v39)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  v43 = sub_2755421B8();
  [v39 presentInParentViewController:v43 animated:1];

  [v39 setDelegate_];
  v44 = *&v36[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_presenter];
  v45 = [v44 presentedViewController];
  v46 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController;
  if (!v45 || (v47 = v45, v48 = *&v36[OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___navigationController], sub_27551EA14(0, &unk_2809F60C0, 0x277D75D28), v49 = v48, v50 = sub_27554D4F8(), v47, v49, (v50 & 1) == 0))
  {
    [v44 presentViewController:*&v36[v46] animated:1 completion:0];
  }

  swift_beginAccess();
  v51 = v39;
  MEMORY[0x277C7B080]();
  if (*((*&v36[v35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v36[v35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v53 = *((*&v36[v35] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_27554D3D8();
  }

  sub_27554D3E8();
  return swift_endAccess();
}

void sub_2755473F4(uint64_t a1, uint64_t a2)
{
  if (a2 && (a1 == 0x6C65636E6163 && a2 == 0xE600000000000000 || (sub_27554D678() & 1) != 0))
  {
    v3 = OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_objectModels;
    swift_beginAccess();
    v4 = *(v2 + v3);
    *(v2 + v3) = MEMORY[0x277D84F90];

    v5 = sub_2755422C0();
    [v5 cancel];

    [*(v2 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator____lazy_storage___ruiLoader) setDelegate_];
    v6 = *(v2 + OBJC_IVAR____TtC19iCloudMailAccountUI24LegacyMailAccountCreator_presenter);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2755475AC;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275547BDC;
    aBlock[3] = &block_descriptor_2;
    v8 = _Block_copy(aBlock);

    [v6 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }
}

uint64_t sub_275547574()
{
  MEMORY[0x277C7BB40](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2755475E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2755475F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_33Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2755476FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_27554C4D8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_275547830(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_2755439BC(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_2755478EC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 24);

  v6 = sub_27554C4D8();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

char *sub_275547A20()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60B8, &qword_2755513B8) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_275543D34(v3, v4, v0 + v2, v5);
}

uint64_t sub_275547ABC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_275547B0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_275547B4C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_275547C5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6190, &qword_275551408);
  v1 = *(v0 - 8);
  v37 = v0;
  v38 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v36 = &v33 - v3;
  v4 = sub_27554D4D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6198, &qword_275551410);
  v35 = *(v9 - 8);
  v10 = v35;
  v11 = *(v35 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v33 = &v33 - v14;
  v15 = objc_opt_self();
  v16 = [v15 defaultCenter];
  v17 = *MEMORY[0x277D76BA8];
  sub_27554D4E8();

  sub_2755480D0();
  sub_27554C838();
  v18 = *(v5 + 8);
  v18(v8, v4);
  v19 = [v15 defaultCenter];
  v20 = *MEMORY[0x277D76BA0];
  sub_27554D4E8();

  v21 = v34;
  sub_27554C838();
  v18(v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F61A8, qword_275551418);
  v22 = *(v35 + 72);
  v23 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_27554E410;
  v25 = v24 + v23;
  v26 = *(v10 + 16);
  v27 = v33;
  v26(v25, v33, v9);
  v26(v25 + v22, v21, v9);
  sub_275515E2C(&qword_2809F61B0, &qword_2809F6198, &qword_275551410);
  v28 = v36;
  sub_27554C788();
  sub_275515E2C(&qword_2809F61B8, &qword_2809F6190, &qword_275551408);
  v29 = v37;
  v30 = sub_27554C828();
  (*(v38 + 8))(v28, v29);
  v31 = *(v10 + 8);
  v31(v21, v9);
  v31(v27, v9);
  return v30;
}

unint64_t sub_2755480D0()
{
  result = qword_2809F61A0;
  if (!qword_2809F61A0)
  {
    sub_27554D4D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F61A0);
  }

  return result;
}

void *sub_27554815C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = v2;
  if (*(v1 + 80))
  {
    sub_275548308(v11);
    sub_27554BA78(v11);
  }

  else
  {
    v4 = sub_27554D218();
    v6 = v5;
    sub_275548A94(v1);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v10, __src, sizeof(v10));
    sub_275514D40(__dst, v11, &qword_2809F61C0, &qword_2755515B0);
    sub_275514DA8(v10, &qword_2809F61C0, &qword_2755515B0);
    memcpy(&v11[2], __dst, 0x3B8uLL);
    v11[0] = v4;
    v11[1] = v6;
    sub_27554B760(v11);
  }

  memcpy(v8, v11, sizeof(v8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F61C8, &qword_2755515B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F61D0, &qword_2755515C0);
  sub_27554B76C();
  sub_275515E2C(&qword_2809F6250, &qword_2809F61D0, &qword_2755515C0);
  sub_27554CC68();
  return memcpy(v3, __src, 0x3C9uLL);
}

uint64_t sub_275548308@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_27554D218();
  v6 = v5;
  sub_27554A38C(v2, &v150);
  v80 = v152;
  v81 = v153;
  v82 = v154;
  v78 = v150;
  v79 = v151;
  v83[2] = v152;
  v83[3] = v153;
  v84 = v154;
  v83[0] = v150;
  v83[1] = v151;
  sub_275514D40(&v78, &v137, &qword_2809F6258, &qword_275551600);
  sub_275514DA8(v83, &qword_2809F6258, &qword_275551600);
  v134 = v80;
  v135 = v81;
  v136 = v82;
  v133 = v79;
  v132 = v78;
  v7 = sub_27554D1D8();
  v9 = v8;
  sub_27554A7E0(v2, &v137);
  v85[8] = v145;
  v85[9] = v146;
  v85[10] = v147;
  v85[4] = v141;
  v85[5] = v142;
  v85[6] = v143;
  v85[7] = v144;
  v85[0] = v137;
  v85[1] = v138;
  v85[2] = v139;
  v85[3] = v140;
  *&v86 = v148;
  *(&v86 + 1) = v7;
  *&v77[151] = v146;
  *&v77[167] = v147;
  *&v77[87] = v142;
  *&v77[103] = v143;
  *&v77[119] = v144;
  *&v77[135] = v145;
  *&v77[23] = v138;
  *&v77[39] = v139;
  *&v77[55] = v140;
  *&v77[71] = v141;
  *&v77[7] = v137;
  *&v77[183] = v86;
  v88[8] = v145;
  v88[9] = v146;
  v88[10] = v147;
  v88[3] = v140;
  v88[4] = v141;
  v88[5] = v142;
  v88[6] = v143;
  v88[7] = v144;
  v88[0] = v137;
  v88[1] = v138;
  v87 = v9;
  *&v77[199] = v9;
  v88[2] = v139;
  v89 = v148;
  v90 = v7;
  v91 = v9;
  sub_275514D40(v85, &v150, &qword_2809F6228, &qword_2755515E8);
  sub_275514DA8(v88, &qword_2809F6228, &qword_2755515E8);
  v10 = sub_27554D1E8();
  v12 = v11;
  sub_27554AABC(v2, &v137);
  v92[8] = v145;
  v92[9] = v146;
  v92[10] = v147;
  v92[4] = v141;
  v92[5] = v142;
  v92[6] = v143;
  v92[7] = v144;
  v92[0] = v137;
  v92[1] = v138;
  v92[2] = v139;
  v92[3] = v140;
  *&v93 = v148;
  *(&v93 + 1) = v10;
  v125 = v143;
  v126 = v144;
  v128 = v146;
  v127 = v145;
  v121 = v139;
  v122 = v140;
  v124 = v142;
  v123 = v141;
  v120 = v138;
  v119 = v137;
  v129 = v147;
  v130 = v93;
  v95[8] = v145;
  v95[9] = v146;
  v95[10] = v147;
  v95[4] = v141;
  v95[5] = v142;
  v95[6] = v143;
  v95[7] = v144;
  v95[0] = v137;
  v95[1] = v138;
  v94 = v12;
  v131 = v12;
  v95[2] = v139;
  v95[3] = v140;
  v96 = v148;
  v97 = v10;
  v98 = v12;
  sub_275514D40(v92, &v150, &qword_2809F6238, &qword_2755515F0);
  sub_275514DA8(v95, &qword_2809F6238, &qword_2755515F0);
  v13 = sub_27554D208();
  v15 = v14;
  sub_27554ADA0(v2, &v137);
  v99[8] = v145;
  v99[9] = v146;
  v99[10] = v147;
  v99[4] = v141;
  v99[5] = v142;
  v99[6] = v143;
  v99[7] = v144;
  v99[0] = v137;
  v99[1] = v138;
  v99[2] = v139;
  v99[3] = v140;
  *&v100 = v148;
  *(&v100 + 1) = v13;
  v112 = v143;
  v113 = v144;
  v115 = v146;
  v114 = v145;
  v108 = v139;
  v109 = v140;
  v111 = v142;
  v110 = v141;
  v107 = v138;
  v106 = v137;
  v116 = v147;
  v117 = v100;
  v102[8] = v145;
  v102[9] = v146;
  v102[10] = v147;
  v102[4] = v141;
  v102[5] = v142;
  v102[6] = v143;
  v102[7] = v144;
  v102[0] = v137;
  v102[1] = v138;
  v101 = v15;
  v118 = v15;
  v102[2] = v139;
  v102[3] = v140;
  v103 = v148;
  v104 = v13;
  v105 = v15;
  sub_275514D40(v99, &v150, &qword_2809F6238, &qword_2755515F0);
  sub_275514DA8(v102, &qword_2809F6238, &qword_2755515F0);
  v16 = sub_27554D1F8();
  v18 = v17;
  sub_27554B07C(v2, &v65);
  v20 = v72;
  v145 = v73;
  v19 = v73;
  v146 = v74;
  v21 = v74;
  v147 = v75;
  v23 = v68;
  v141 = v69;
  v22 = v69;
  v142 = v70;
  v24 = v70;
  v143 = v71;
  v25 = v71;
  v144 = v72;
  v137 = v65;
  v138 = v66;
  v26 = v65;
  v27 = v66;
  v139 = v67;
  v28 = v67;
  v140 = v68;
  v29 = v135;
  *(a1 + 48) = v134;
  *(a1 + 64) = v29;
  v30 = v133;
  *(a1 + 16) = v132;
  *(a1 + 32) = v30;
  v31 = *&v77[16];
  *(a1 + 81) = *v77;
  v32 = *&v77[32];
  v33 = *&v77[48];
  v34 = *&v77[80];
  *(a1 + 145) = *&v77[64];
  *(a1 + 129) = v33;
  *(a1 + 113) = v32;
  *(a1 + 97) = v31;
  v35 = *&v77[96];
  v36 = *&v77[112];
  v37 = *&v77[144];
  *(a1 + 209) = *&v77[128];
  *(a1 + 193) = v36;
  *(a1 + 177) = v35;
  *(a1 + 161) = v34;
  v38 = *&v77[160];
  v39 = *&v77[176];
  v40 = v120;
  v41 = v119;
  *(a1 + 272) = *&v77[191];
  *(a1 + 257) = v39;
  *(a1 + 241) = v38;
  *(a1 + 225) = v37;
  v42 = v129;
  v43 = v130;
  v44 = v127;
  *(a1 + 432) = v128;
  *(a1 + 448) = v42;
  *(a1 + 464) = v43;
  v45 = v125;
  v46 = v126;
  v47 = v123;
  *(a1 + 368) = v124;
  *(a1 + 384) = v45;
  *(a1 + 400) = v46;
  *(a1 + 416) = v44;
  v48 = v121;
  v49 = v122;
  *(a1 + 304) = v40;
  *(a1 + 320) = v48;
  v50 = v76;
  *&v148 = v76;
  *(&v148 + 1) = v16;
  *(a1 + 336) = v49;
  *(a1 + 352) = v47;
  *(a1 + 288) = v41;
  v51 = v117;
  *(a1 + 648) = v116;
  *(a1 + 664) = v51;
  v52 = v113;
  *(a1 + 584) = v112;
  *(a1 + 600) = v52;
  v53 = v115;
  *(a1 + 616) = v114;
  *(a1 + 632) = v53;
  v54 = v109;
  *(a1 + 520) = v108;
  *(a1 + 536) = v54;
  v55 = v111;
  *(a1 + 552) = v110;
  *(a1 + 568) = v55;
  v56 = v107;
  *(a1 + 488) = v106;
  *(a1 + 504) = v56;
  v57 = v148;
  *(a1 + 848) = v147;
  *(a1 + 864) = v57;
  v58 = v144;
  *(a1 + 784) = v143;
  *(a1 + 800) = v58;
  v59 = v146;
  *(a1 + 816) = v145;
  *(a1 + 832) = v59;
  v60 = v140;
  *(a1 + 720) = v139;
  *(a1 + 736) = v60;
  v61 = v142;
  *(a1 + 752) = v141;
  *(a1 + 768) = v61;
  v62 = v138;
  *(a1 + 688) = v137;
  *(a1 + 704) = v62;
  v158 = v19;
  v159 = v21;
  v160 = v75;
  v154 = v22;
  v155 = v24;
  v156 = v25;
  v157 = v20;
  v149 = v18;
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 80) = v136;
  *(a1 + 480) = v131;
  *(a1 + 680) = v118;
  *(a1 + 880) = v18;
  v150 = v26;
  v151 = v27;
  v152 = v28;
  v153 = v23;
  v161 = v50;
  v162 = v16;
  v163 = v18;
  sub_275514D40(&v137, &v64, &qword_2809F6248, &qword_2755515F8);
  return sub_275514DA8(&v150, &qword_2809F6248, &qword_2755515F8);
}

uint64_t sub_275548A94(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v79 = v2;
  v3 = sub_27554D0A8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F62A0, &qword_275551668);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_27554E410;
  *(v8 + 32) = *(v1 + 72);

  *(v8 + 40) = sub_27554D048();
  MEMORY[0x277C7AE80](v8);
  sub_27554CBF8();
  v99 = v220;
  v102 = v222;
  v103 = v221;
  v100 = v224;
  v101 = v223;
  sub_27554D218();
  sub_27554C968();
  *&v219[6] = v225;
  *&v219[22] = v226;
  *&v219[38] = v227;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v82 = objc_opt_self();
  v83 = ObjCClassFromMetadata;
  v10 = [v82 bundleForClass_];
  sub_27554D0C8();
  LODWORD(v106) = *MEMORY[0x277CE0FE0];
  v105 = v4[13];
  (v105)(v7);
  v98 = sub_27554D0B8();

  *&v104 = v4[1];
  *&v107 = v4 + 1;
  (v104)(v7, v3);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v174) = 1;
  *&v218[6] = v228;
  *&v218[22] = v229;
  *&v218[38] = v230;
  v200 = *(v1 + 8);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v78 = v187;
  sub_27554D268();
  v96 = v12;
  v97 = v11;
  sub_27554D068();
  v95 = sub_27554D058();

  v13 = swift_allocObject();
  v14 = *(v1 + 48);
  *(v13 + 48) = *(v1 + 32);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v1 + 64);
  *(v13 + 96) = *(v1 + 80);
  v15 = *(v1 + 16);
  *(v13 + 16) = *v1;
  *(v13 + 32) = v15;
  v94 = v13;
  sub_27553CDD4(v1, &v200);
  v16 = v82;
  v17 = [v82 bundleForClass_];
  sub_27554D0C8();
  v18 = v106;
  v85 = v3;
  v19 = v105;
  (v105)(v7, v106, v3);
  v93 = sub_27554D0B8();

  v20 = v3;
  v21 = v104;
  (v104)(v7, v20);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v174) = 1;
  *&v217[6] = v231;
  *&v217[22] = v232;
  *&v217[38] = v233;
  v200 = *(v1 + 24);
  sub_27554D0E8();
  v77 = v187;
  sub_27554D268();
  v91 = v23;
  v92 = v22;
  sub_27554D068();
  v90 = sub_27554D058();

  v24 = swift_allocObject();
  v25 = *(v1 + 48);
  *(v24 + 48) = *(v1 + 32);
  *(v24 + 64) = v25;
  *(v24 + 80) = *(v1 + 64);
  *(v24 + 96) = *(v1 + 80);
  v26 = *(v1 + 16);
  *(v24 + 16) = *v1;
  *(v24 + 32) = v26;
  v89 = v24;
  sub_27553CDD4(v1, &v200);
  v27 = v16;
  v28 = v85;
  v29 = [v27 bundleForClass_];
  sub_27554D0C8();
  v81 = v4 + 13;
  (v19)(v7, v18, v28);
  v88 = sub_27554D0B8();

  *&v84 = v7;
  v21(v7, v28);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v174) = 1;
  *&v216[6] = v234;
  *&v216[22] = v235;
  *&v216[38] = v236;
  v200 = *(v1 + 40);
  sub_27554D0E8();
  v76 = v187;
  sub_27554D268();
  v74 = v31;
  v75 = v30;
  sub_27554D068();
  v87 = sub_27554D058();

  v32 = swift_allocObject();
  v33 = *(v1 + 48);
  v34 = *(v1 + 64);
  v35 = *(v1 + 16);
  *(v32 + 48) = *(v1 + 32);
  *(v32 + 64) = v33;
  *(v32 + 80) = v34;
  *(v32 + 96) = *(v1 + 80);
  *(v32 + 16) = *v1;
  *(v32 + 32) = v35;
  v86 = v32;
  v246 = *v1;
  if (v246)
  {
    sub_275514D40(&v246, &v200, &qword_2809F57D0, &qword_2755510C0);
    sub_27553CDD4(v1, &v200);
    sub_275514D40(&v246, &v200, &qword_2809F57D0, &qword_2755510C0);
    sub_27554D088();
    v36 = v84;
    (v105)(v84, v106, v28);
    v73 = sub_27554D0B8();

    (v104)(v36, v28);
    sub_27554D218();
    sub_27554C968();
    v37 = v237;
    v38 = v238;
    v39 = v239;
    v40 = v240;
    v72 = v241;
    v41 = v242;
    sub_27554D068();
    v42 = sub_27554D058();

    LOBYTE(v147[0]) = v40;
    *&v174 = v73;
    *(&v174 + 1) = v37;
    LOBYTE(v175[0]) = v38;
    *(v175 + 1) = v200;
    DWORD1(v175[0]) = *(&v200 + 3);
    *(&v175[0] + 1) = v39;
    LOBYTE(v175[1]) = v40;
    *(&v175[1] + 1) = v187;
    DWORD1(v175[1]) = *(&v187 + 3);
    *(&v175[1] + 1) = v72;
    *&v175[2] = v41;
    v175[3] = xmmword_27554E840;
    *(&v175[2] + 1) = v42;
    v176 = 0x4010000000000000;
    v188[1] = v175[1];
    v188[2] = v175[2];
    v188[3] = xmmword_27554E840;
    v189 = 0x4010000000000000;
    v187 = v174;
    v188[0] = v175[0];
    LOBYTE(v155[0]) = 0;
    BYTE8(v192) = 0;
    sub_275514D40(&v174, &v200, &qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50C0, &unk_27554EC00);
    sub_27551524C();
    sub_27554BF34(&qword_2809F50E0, &qword_2809F50C0, &unk_27554EC00, sub_275515384);
    sub_27554CC68();
    sub_275514DA8(&v246, &qword_2809F57D0, &qword_2755510C0);
    sub_275514DA8(&v174, &qword_2809F50B8, &unk_275551670);
    v251 = v201[3];
    v252 = *v202;
    v253 = *&v202[16];
    v254 = v202[32];
    v247 = v200;
    v248 = v201[0];
    v249 = v201[1];
    v250 = v201[2];
  }

  else
  {
    sub_27553CDD4(v1, &v200);
    sub_27554D098();
    v43 = v84;
    (v105)(v84, v106, v28);
    v73 = sub_27554D0B8();

    (v104)(v43, v28);
    sub_27554D218();
    sub_27554C968();
    v44 = v237;
    v45 = v238;
    v46 = v240;
    v71 = v241;
    v72 = v239;
    v70 = v242;
    v47 = sub_27554D078();
    KeyPath = swift_getKeyPath();
    LOBYTE(v200) = v45;
    LOBYTE(v187) = v46;
    v49 = sub_27554CD68();
    sub_27554D068();
    v50 = sub_27554D058();

    LOBYTE(v187) = 1;
    *&v200 = v73;
    *(&v200 + 1) = v44;
    LOBYTE(v201[0]) = v45;
    *(&v201[0] + 1) = v72;
    LOBYTE(v201[1]) = v46;
    *(&v201[1] + 1) = v71;
    *&v201[2] = v70;
    *(&v201[2] + 1) = KeyPath;
    *&v201[3] = v47;
    BYTE8(v201[3]) = v49;
    *(&v201[3] + 9) = 256;
    *&v202[8] = xmmword_27554E840;
    *v202 = v50;
    *&v202[24] = 0x4010000000000000;
    v202[32] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50C0, &unk_27554EC00);
    sub_27551524C();
    sub_27554BF34(&qword_2809F50E0, &qword_2809F50C0, &unk_27554EC00, sub_275515384);
    sub_27554CC68();
  }

  v51 = [v82 bundleForClass_];
  sub_27554D0C8();
  v52 = v84;
  v53 = v85;
  (v105)(v84, v106, v85);
  v54 = sub_27554D0B8();

  (v104)(v52, v53);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v174) = 1;
  *&v117[6] = v243;
  *&v117[22] = v244;
  *&v117[38] = v245;
  v200 = *(v1 + 56);
  sub_27554D0E8();
  v55 = v187;
  sub_27554D268();
  v57 = v56;
  v59 = v58;
  sub_27554D068();
  v60 = sub_27554D058();

  v61 = swift_allocObject();
  v62 = *(v1 + 48);
  *(v61 + 48) = *(v1 + 32);
  *(v61 + 64) = v62;
  *(v61 + 80) = *(v1 + 64);
  *(v61 + 96) = *(v1 + 80);
  v63 = *(v1 + 16);
  *(v61 + 16) = *v1;
  *(v61 + 32) = v63;
  v113 = v251;
  v114 = v252;
  v115 = v253;
  v116 = v254;
  v109 = v247;
  v110 = v248;
  v111 = v249;
  v112 = v250;
  *&v118 = v99;
  *(&v118 + 1) = v103;
  *&v119 = v102;
  *(&v119 + 1) = v101;
  *&v120[0] = v100;
  WORD4(v120[0]) = 256;
  *(&v120[3] + 1) = *&v219[46];
  *(&v120[1] + 10) = *&v219[16];
  *(&v120[2] + 10) = *&v219[32];
  *(v120 + 10) = *v219;
  v108[0] = v118;
  v108[1] = v119;
  v108[4] = v120[2];
  v108[5] = v120[3];
  v108[2] = v120[0];
  v108[3] = v120[1];
  v121[0] = v98;
  v121[1] = 0;
  LOWORD(v122[0]) = 1;
  *&v122[3] = *&v218[46];
  *(&v122[2] + 2) = *&v218[32];
  *(&v122[1] + 2) = *&v218[16];
  *(v122 + 2) = *v218;
  v64 = v78;
  *(&v122[3] + 1) = v78;
  *&v123 = v78;
  *(&v123 + 1) = v97;
  *&v124[0] = v96;
  v106 = xmmword_275551460;
  *(v124 + 8) = xmmword_275551460;
  v124[2] = xmmword_27554E840;
  *(&v124[1] + 1) = v95;
  *&v125 = 0x4010000000000000;
  v105 = sub_27554BE58;
  *(&v125 + 1) = sub_27554BE58;
  v126 = v94;
  v128 = 0;
  v127 = 0;
  v108[12] = v124[0];
  v108[13] = v124[1];
  v108[10] = v122[3];
  v108[11] = v123;
  v108[8] = v122[1];
  v108[9] = v122[2];
  v108[6] = v98;
  v108[7] = v122[0];
  *&v108[17] = 0;
  v108[15] = v125;
  v108[16] = v94;
  v108[14] = xmmword_27554E840;
  v129[0] = v93;
  v129[1] = 0;
  LOWORD(v130[0]) = 1;
  *&v130[3] = *&v217[46];
  *(&v130[2] + 2) = *&v217[32];
  *(v130 + 2) = *v217;
  *(&v130[1] + 2) = *&v217[16];
  v65 = v77;
  *(&v130[3] + 1) = v77;
  *&v131 = v77;
  *(&v131 + 1) = v92;
  *&v132[0] = v91;
  v104 = xmmword_275551470;
  *(v132 + 8) = xmmword_275551470;
  *(&v132[1] + 1) = v90;
  v132[2] = xmmword_27554E840;
  *&v133 = 0x4010000000000000;
  v85 = sub_27554BEA0;
  *(&v133 + 1) = sub_27554BEA0;
  v134 = v89;
  v135 = 0;
  v136 = 0;
  *(&v108[17] + 8) = v93;
  *(&v108[18] + 8) = v130[0];
  *(&v108[19] + 8) = v130[1];
  *(&v108[20] + 8) = v130[2];
  *(&v108[23] + 8) = v132[0];
  *(&v108[24] + 8) = v132[1];
  *(&v108[21] + 8) = v130[3];
  *(&v108[22] + 8) = v131;
  *(&v108[26] + 8) = v133;
  *(&v108[27] + 8) = v89;
  *(&v108[25] + 8) = xmmword_27554E840;
  *(&v108[28] + 1) = 0;
  v137[0] = v88;
  v137[1] = 0;
  LOWORD(v138[0]) = 1;
  *&v138[3] = *&v216[46];
  *(&v138[2] + 2) = *&v216[32];
  *(v138 + 2) = *v216;
  *(&v138[1] + 2) = *&v216[16];
  v66 = v75;
  v67 = v76;
  *(&v138[3] + 1) = v76;
  *&v139 = v76;
  *(&v139 + 1) = v75;
  v68 = v74;
  *&v140[0] = v74;
  v84 = xmmword_275551480;
  *(v140 + 8) = xmmword_275551480;
  v140[2] = xmmword_27554E840;
  v107 = xmmword_27554E840;
  *(&v140[1] + 1) = v87;
  *&v141 = 0x4010000000000000;
  v83 = sub_27554BEE8;
  *(&v141 + 1) = sub_27554BEE8;
  v142 = v86;
  v143 = 0;
  v144 = 0;
  v108[29] = v88;
  v108[30] = v138[0];
  v108[31] = v138[1];
  v108[32] = v138[2];
  v108[35] = v140[0];
  v108[36] = v140[1];
  v108[33] = v138[3];
  v108[34] = v139;
  *&v108[40] = 0;
  v108[38] = v141;
  v108[39] = v86;
  v108[37] = xmmword_27554E840;
  v145[4] = v251;
  v145[5] = v252;
  v145[6] = v253;
  v146 = v254;
  v145[0] = v247;
  v145[1] = v248;
  v145[2] = v249;
  v145[3] = v250;
  *(&v108[40] + 8) = v247;
  *(&v108[41] + 8) = v248;
  *(&v108[42] + 8) = v249;
  *(&v108[43] + 8) = v250;
  *(&v108[44] + 8) = v251;
  *(&v108[45] + 8) = v252;
  *(&v108[46] + 8) = v253;
  BYTE8(v108[47]) = v254;
  v147[0] = v54;
  v147[1] = 0;
  LOWORD(v148[0]) = 1;
  *(&v148[2] + 2) = *&v117[32];
  *(&v148[1] + 2) = *&v117[16];
  *(v148 + 2) = *v117;
  *&v148[3] = *&v117[46];
  *(&v148[3] + 1) = v55;
  *&v149 = v55;
  *(&v149 + 1) = v57;
  *&v150[0] = v59;
  v82 = xmmword_275551490;
  *(v150 + 8) = xmmword_275551490;
  *(&v150[1] + 1) = v60;
  v150[2] = xmmword_27554E840;
  *&v151 = 0x4010000000000000;
  *(&v151 + 1) = sub_27554BFB8;
  v152 = v61;
  v153 = 0;
  v154 = 0;
  *&v108[59] = 0;
  v108[51] = v148[2];
  v108[50] = v148[1];
  v108[48] = v54;
  v108[49] = v148[0];
  v108[58] = v61;
  v108[56] = xmmword_27554E840;
  v108[57] = v151;
  v108[55] = v150[1];
  v108[54] = v150[0];
  v108[53] = v149;
  v108[52] = v148[3];
  memcpy(v79, v108, 0x3B8uLL);
  v157 = *v117;
  v155[0] = v54;
  v155[1] = 0;
  v156 = 1;
  v158 = *&v117[16];
  *v159 = *&v117[32];
  *&v159[14] = *&v117[46];
  v160 = v55;
  v161 = v55;
  v162 = v57;
  v163 = v59;
  v164 = v82;
  v166 = v107;
  v165 = v60;
  v167 = 0x4010000000000000;
  v168 = sub_27554BFB8;
  v169 = v61;
  v171 = 0;
  v170 = 0;
  sub_27553CDD4(v1, &v200);
  sub_275514D40(&v118, &v200, &qword_2809F62A8, &unk_2755516A0);
  sub_275514D40(v121, &v200, &qword_2809F5158, &unk_27554EC50);
  sub_275514D40(v129, &v200, &qword_2809F5158, &unk_27554EC50);
  sub_275514D40(v137, &v200, &qword_2809F5158, &unk_27554EC50);
  sub_275514D40(v145, &v200, &qword_2809F5150, &unk_2755516B0);
  sub_275514D40(v147, &v200, &qword_2809F5158, &unk_27554EC50);
  sub_275514DA8(v155, &qword_2809F5158, &unk_27554EC50);
  v172[4] = v113;
  v172[5] = v114;
  v172[6] = v115;
  v173 = v116;
  v172[0] = v109;
  v172[1] = v110;
  v172[2] = v111;
  v172[3] = v112;
  sub_275514DA8(v172, &qword_2809F5150, &unk_2755516B0);
  *(v175 + 2) = *v216;
  v174 = v88;
  LOWORD(v175[0]) = 1;
  *(&v175[1] + 2) = *&v216[16];
  *(&v175[2] + 2) = *&v216[32];
  *&v175[3] = *&v216[46];
  *(&v175[3] + 1) = v67;
  v176 = v67;
  v177 = v66;
  v178 = v68;
  v179 = v84;
  v181 = v107;
  v180 = v87;
  v182 = 0x4010000000000000;
  v183 = v83;
  v184 = v86;
  v186 = 0;
  v185 = 0;
  sub_275514DA8(&v174, &qword_2809F5158, &unk_27554EC50);
  v187 = v93;
  LOWORD(v188[0]) = 1;
  *(v188 + 2) = *v217;
  *(&v188[1] + 2) = *&v217[16];
  *(&v188[2] + 2) = *&v217[32];
  *&v188[3] = *&v217[46];
  *(&v188[3] + 1) = v65;
  v189 = v65;
  v190 = v92;
  v191 = v91;
  v192 = v104;
  v193 = v90;
  v194 = v107;
  v195 = 0x4010000000000000;
  v196 = v85;
  v199 = 0;
  v197 = v89;
  v198 = 0;
  sub_275514DA8(&v187, &qword_2809F5158, &unk_27554EC50);
  v200 = v98;
  LOWORD(v201[0]) = 1;
  *(v201 + 2) = *v218;
  *(&v201[1] + 2) = *&v218[16];
  *(&v201[2] + 2) = *&v218[32];
  *&v201[3] = *&v218[46];
  *(&v201[3] + 1) = v64;
  *v202 = v64;
  *&v202[8] = v97;
  *&v202[16] = v96;
  *&v202[24] = v106;
  v203 = v95;
  v204 = v107;
  v205 = 0x4010000000000000;
  v206 = v105;
  v209 = 0;
  v207 = v94;
  v208 = 0;
  sub_275514DA8(&v200, &qword_2809F5158, &unk_27554EC50);
  v210[0] = v99;
  v210[1] = v103;
  v210[2] = v102;
  v210[3] = v101;
  v210[4] = v100;
  v211 = 0;
  v212 = 1;
  v213 = *v219;
  v214 = *&v219[16];
  *v215 = *&v219[32];
  *&v215[14] = *&v219[46];
  return sub_275514DA8(v210, &qword_2809F62A8, &unk_2755516A0);
}

uint64_t sub_275549F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v29 = a3;
  v5 = sub_27554D278();
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_27554D2A8();
  v31 = *(v32 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_27554D2C8();
  v28 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  sub_2755155D4();
  v26 = sub_27554D4A8();
  sub_27554D2B8();
  sub_27554D2D8();
  v27 = *(v13 + 8);
  v27(v17, v12);
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v21;
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = *(a1 + 80);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  aBlock[4] = v29;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = v30;
  v23 = _Block_copy(aBlock);
  sub_27553CDD4(a1, v34);

  sub_27554D298();
  v34[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_275515E2C(&qword_2809F60E0, &qword_2809F5168, &unk_2755513C0);
  sub_27554D538();
  v24 = v26;
  MEMORY[0x277C7B120](v19, v11, v8, v23);
  _Block_release(v23);

  (*(v33 + 8))(v8, v5);
  (*(v31 + 8))(v11, v32);
  return (v27)(v19, v28);
}

__n128 sub_27554A38C@<Q0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*a1)
  {
    v9 = *a1;
    sub_27554D088();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v10 = sub_27554D0B8();

    (*(v5 + 8))(v8, v4);
    sub_27554D068();
    v11 = sub_27554D058();

    v19[8] = 0;
    *&v26 = v10;
    *(&v26 + 1) = v11;
    v27 = xmmword_27554E840;
    *&v28[8] = v20;
    *v28 = 0x4010000000000000;
    *&v28[24] = v21;
    v29 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6260, &qword_275551638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6268, &qword_275551640);
    sub_275515A00(&qword_2809F6270, &qword_2809F6260, &qword_275551638);
    sub_27554BF34(&qword_2809F6278, &qword_2809F6268, &qword_275551640, sub_27554BCE8);
    sub_27554CC68();

    *v28 = *v24;
    *&v28[16] = *&v24[16];
    v29 = v25;
    v26 = v22;
    v27 = v23;
  }

  else
  {
    sub_27554D098();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v12 = sub_27554D0B8();

    (*(v5 + 8))(v8, v4);
    v13 = sub_27554D078();
    KeyPath = swift_getKeyPath();
    v15 = sub_27554CD68();
    sub_27554D068();
    v16 = sub_27554D058();

    LOBYTE(v20) = 1;
    *&v22 = v12;
    *(&v22 + 1) = KeyPath;
    *&v23 = v13;
    BYTE8(v23) = v15;
    *(&v23 + 9) = 256;
    *v24 = v16;
    *&v24[8] = xmmword_27554E840;
    *&v24[24] = 0x4010000000000000;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6260, &qword_275551638);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F6268, &qword_275551640);
    sub_275515A00(&qword_2809F6270, &qword_2809F6260, &qword_275551638);
    sub_27554BF34(&qword_2809F6278, &qword_2809F6268, &qword_275551640, sub_27554BCE8);
    sub_27554CC68();
  }

  v17 = *&v28[16];
  *(a2 + 32) = *v28;
  *(a2 + 48) = v17;
  *(a2 + 64) = v29;
  result = v27;
  *a2 = v26;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_27554A7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v11 = sub_27554D0B8();

  (*(v5 + 8))(v8, v4);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v30[0]) = 1;
  *&v32[6] = v33;
  *&v32[22] = v34;
  *&v32[38] = v35;
  sub_27554D068();
  v12 = sub_27554D058();

  v30[0] = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v13 = v31;
  sub_27554D268();
  v15 = v14;
  v17 = v16;
  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = *(a1 + 80);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v21 = *v32;
  v22 = *&v32[16];
  v23 = *&v32[32];
  *(a2 + 64) = *&v32[46];
  *(a2 + 72) = v12;
  *(a2 + 50) = v23;
  *(a2 + 34) = v22;
  *(a2 + 18) = v21;
  *(a2 + 80) = xmmword_27554E840;
  *(a2 + 96) = 0x4010000000000000;
  *(a2 + 104) = v13;
  *(a2 + 112) = v13;
  *(a2 + 120) = v15;
  *(a2 + 128) = v17;
  __asm { FMOV            V0.2D, #-3.0 }

  *(a2 + 136) = _Q0;
  *(a2 + 152) = sub_27554BC50;
  *(a2 + 160) = v18;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return sub_27553CDD4(a1, v30);
}

uint64_t sub_27554AABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v11 = sub_27554D0B8();

  (*(v5 + 8))(v8, v4);
  sub_27554D218();
  sub_27554C968();
  v28 = 1;
  *&v27[6] = v29;
  *&v27[22] = v30;
  *&v27[38] = v31;
  v25[0] = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v12 = v26;
  sub_27554D268();
  v14 = v13;
  v16 = v15;
  sub_27554D068();
  v17 = sub_27554D058();

  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = *(a1 + 80);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v21 = *v27;
  v22 = *&v27[16];
  v23 = *&v27[32];
  *(a2 + 64) = *&v27[46];
  *(a2 + 50) = v23;
  *(a2 + 34) = v22;
  *(a2 + 18) = v21;
  *(a2 + 72) = v12;
  *(a2 + 80) = v12;
  *(a2 + 88) = v14;
  *(a2 + 96) = v16;
  *(a2 + 104) = xmmword_2755514A0;
  *(a2 + 120) = v17;
  *(a2 + 128) = xmmword_27554E840;
  *(a2 + 144) = 0x4010000000000000;
  *(a2 + 152) = sub_27554BBC0;
  *(a2 + 160) = v18;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return sub_27553CDD4(a1, v25);
}

uint64_t sub_27554ADA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v11 = sub_27554D0B8();

  (*(v5 + 8))(v8, v4);
  sub_27554D218();
  sub_27554C968();
  v33 = 1;
  *&v32[6] = v34;
  *&v32[22] = v35;
  *&v32[38] = v36;
  v30[0] = *(a1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v12 = v31;
  sub_27554D268();
  v14 = v13;
  v16 = v15;
  sub_27554D068();
  v17 = sub_27554D058();

  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = *(a1 + 80);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v21 = *v32;
  v22 = *&v32[16];
  v23 = *&v32[32];
  *(a2 + 64) = *&v32[46];
  *(a2 + 50) = v23;
  *(a2 + 34) = v22;
  *(a2 + 18) = v21;
  *(a2 + 72) = v12;
  *(a2 + 80) = v12;
  *(a2 + 88) = v14;
  *(a2 + 96) = v16;
  __asm { FMOV            V0.2D, #3.0 }

  *(a2 + 104) = _Q0;
  *(a2 + 120) = v17;
  *(a2 + 128) = xmmword_27554E840;
  *(a2 + 144) = 0x4010000000000000;
  *(a2 + 152) = sub_27554BB2C;
  *(a2 + 160) = v18;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return sub_27553CDD4(a1, v30);
}

uint64_t sub_27554B07C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
  v11 = sub_27554D0B8();

  (*(v5 + 8))(v8, v4);
  sub_27554D218();
  sub_27554C968();
  v28 = 1;
  *&v27[6] = v29;
  *&v27[22] = v30;
  *&v27[38] = v31;
  v25[0] = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v12 = v26;
  sub_27554D268();
  v14 = v13;
  v16 = v15;
  sub_27554D068();
  v17 = sub_27554D058();

  v18 = swift_allocObject();
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = *(a1 + 80);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v21 = *v27;
  v22 = *&v27[16];
  v23 = *&v27[32];
  *(a2 + 64) = *&v27[46];
  *(a2 + 50) = v23;
  *(a2 + 34) = v22;
  *(a2 + 18) = v21;
  *(a2 + 72) = v12;
  *(a2 + 80) = v12;
  *(a2 + 88) = v14;
  *(a2 + 96) = v16;
  *(a2 + 104) = xmmword_2755514B0;
  *(a2 + 120) = v17;
  *(a2 + 128) = xmmword_27554E840;
  *(a2 + 144) = 0x4010000000000000;
  *(a2 + 152) = sub_27554BA84;
  *(a2 + 160) = v18;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  return sub_27553CDD4(a1, v25);
}

uint64_t sub_27554B364()
{
  sub_27554D238();
  sub_27554C9D8();
}

void *sub_27554B3E0(uint64_t a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 80);
  v3 = *v1;
  v4 = v1[1];
  return sub_27554815C(a1);
}

uint64_t sub_27554B42C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v4 = sub_27554C718();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v30 = 0;
  sub_27554D0D8();
  v12 = v31;
  v27 = v32;
  v30 = 0;
  sub_27554D0D8();
  v13 = v31;
  v26 = v32;
  v30 = 0;
  sub_27554D0D8();
  v14 = v31;
  v25 = v32;
  v30 = 0;
  sub_27554D0D8();
  v15 = v31;
  v16 = v32;
  v17 = v5[13];
  v17(v11, *MEMORY[0x277D245A0], v4);
  v18 = sub_27554C708();
  v19 = v5[1];
  result = v19(v11, v4);
  if (v18)
  {
    v17(v9, *MEMORY[0x277D24598], v4);
    v21 = sub_27554C708();
    result = v19(v9, v4);
  }

  else
  {
    v21 = 0;
  }

  v22 = v27;
  *a3 = v28;
  *(a3 + 8) = v12;
  *(a3 + 16) = v22;
  *(a3 + 24) = v13;
  v23 = v25;
  *(a3 + 32) = v26;
  *(a3 + 40) = v14;
  *(a3 + 48) = v23;
  *(a3 + 56) = v15;
  v24 = v29;
  *(a3 + 64) = v16;
  *(a3 + 72) = v24;
  *(a3 + 80) = v21 & 1;
  return result;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_27554B694(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27554B6DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27554B76C()
{
  result = qword_2809F61D8;
  if (!qword_2809F61D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F61C8, &qword_2755515B8);
    sub_27554B824();
    sub_275515E2C(&qword_2809F6240, &qword_2809F6248, &qword_2755515F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F61D8);
  }

  return result;
}

unint64_t sub_27554B824()
{
  result = qword_2809F61E0;
  if (!qword_2809F61E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F61E8, &qword_2755515C8);
    sub_27554B8DC();
    sub_275515E2C(&qword_2809F6230, &qword_2809F6238, &qword_2755515F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F61E0);
  }

  return result;
}

unint64_t sub_27554B8DC()
{
  result = qword_2809F61F0;
  if (!qword_2809F61F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F61F8, &qword_2755515D0);
    sub_27554B994();
    sub_275515E2C(&qword_2809F6230, &qword_2809F6238, &qword_2755515F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F61F0);
  }

  return result;
}

unint64_t sub_27554B994()
{
  result = qword_2809F6200;
  if (!qword_2809F6200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F6208, &qword_2755515D8);
    sub_275515E2C(&qword_2809F6210, &qword_2809F6218, &qword_2755515E0);
    sub_275515E2C(&qword_2809F6220, &qword_2809F6228, &qword_2755515E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F6200);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27554BCE8()
{
  result = qword_2809F6280;
  if (!qword_2809F6280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F6288, &qword_275551648);
    sub_27554BDA0();
    sub_275515E2C(&qword_2809F5138, &qword_2809F5140, &qword_275551660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F6280);
  }

  return result;
}

unint64_t sub_27554BDA0()
{
  result = qword_2809F6290;
  if (!qword_2809F6290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F6298, &unk_275551650);
    sub_27553AD58();
    sub_275515E2C(&qword_2809F5128, &qword_2809F5130, &unk_27554EC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F6290);
  }

  return result;
}

uint64_t sub_27554BF34(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27554C030()
{
  v2 = *(*(v0 + 16) + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  return sub_27554D0F8();
}

uint64_t sub_27554C0C4()
{
  v2 = *(*(v0 + 16) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  return sub_27554D0F8();
}

uint64_t sub_27554C158()
{
  v2 = *(*(v0 + 16) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  return sub_27554D0F8();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_27554C24C()
{
  v2 = *(*(v0 + 16) + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  return sub_27554D0F8();
}

unint64_t sub_27554C2B4()
{
  result = qword_2809F62B0;
  if (!qword_2809F62B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F62B8, qword_2755516C0);
    sub_27554B76C();
    sub_275515E2C(&qword_2809F6250, &qword_2809F61D0, &qword_2755515C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F62B0);
  }

  return result;
}