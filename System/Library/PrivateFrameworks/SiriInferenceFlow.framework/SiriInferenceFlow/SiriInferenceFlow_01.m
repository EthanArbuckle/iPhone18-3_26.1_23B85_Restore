uint64_t OUTLINED_FUNCTION_69(uint64_t a1, _BYTE *a2)
{
  *a2 = 4;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_71(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v10 + 152) = a9;
  *(v10 + 160) = v9;
  *(v10 + 136) = a7;
  *(v10 + 144) = a8;
  *(v10 + 120) = a5;
  *(v10 + 128) = a6;
  *(v10 + 104) = a2;
  *(v10 + 112) = a3;
  *(v10 + 96) = result;
  *(v10 + 201) = *a4;
  return result;
}

uint64_t sub_222D9EB88(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_222DDB920();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)()
{
  OUTLINED_FUNCTION_38_2();
  v2 = v1;
  v66 = v3;
  v65 = v4;
  v64 = v5;
  v75 = v6;
  v68 = v7;
  v58 = v8;
  OUTLINED_FUNCTION_56();
  v9 = sub_222DDA1D0();
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_3();
  v63 = v15 - v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v17);
  v74 = &v55 - v18;
  sub_222DA2AD0();
  v20 = v19;
  v67 = v0;
  v21 = sub_222D9EB88(v0);
  if (v21)
  {
    v22 = v21;
    v84 = MEMORY[0x277D84F90];
    sub_222DDB8B0();
    if ((v22 & 0x8000000000000000) == 0)
    {
      v23 = v67;
      v62 = sub_222D9EB88(v67);
      v24 = 0;
      v61 = v23 & 0xC000000000000001;
      v56 = v23 & 0xFFFFFFFFFFFFFF8;
      v73 = (v12 + 8);
      v57 = xmmword_222DDC9B0;
      v59 = v22;
      v60 = v20;
      while (v24 < v62)
      {
        if (v61)
        {
          v25 = MEMORY[0x223DCE590](v24, v67);
        }

        else
        {
          if (v24 >= *(v56 + 16))
          {
            goto LABEL_28;
          }

          v25 = *(v67 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v75[4];
        __swift_project_boxed_opaque_existential_1(v75, v75[3]);
        OUTLINED_FUNCTION_35_1();
        sub_222DDA460();
        v28 = [v26 personHandle];
        if (v28)
        {
          v29 = v28;
          v30 = [v28 label];
          if (v30)
          {
            v31 = v30;
            v81 = sub_222DDA1A0();
            v82 = v32;
            v79 = 45;
            v80 = 0xE100000000000000;
            v77 = 95;
            v78 = 0xE100000000000000;
            v54 = sub_222D8F710();
            OUTLINED_FUNCTION_15_2();
            sub_222DDB770();
            v76 = v26;

            sub_222DDA6A0();

            v33 = sub_222DDB4C0();

            OUTLINED_FUNCTION_21_2();
            v34 = sub_222DDB4C0();
            [v29 setValue:v33 forKey:v34];

            v35 = v29;
            OUTLINED_FUNCTION_6_3();
            v29 = sub_222DDB4C0();
            v26 = v76;
            [v76 setValue:v35 forKey:v29];
          }
        }

        v36 = *v73;
        (*v73)(v74, v9);
        if (v68)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
          inited = swift_initStackObject();
          OUTLINED_FUNCTION_23_2(inited, &v83);
          *(v38 + 72) = MEMORY[0x277D83B88];
          *(v38 + 48) = v24;
          v39 = sub_222DDB460();
          v40 = sub_222D9F1C0(v58, v68, v39, v75);
          v72 = v41;
          if (v2)
          {

            goto LABEL_24;
          }

          v42 = v40;
        }

        else
        {
          v42 = 0;
          v72 = 0;
        }

        v81 = v24;
        v43 = sub_222DDBAB0();
        v76 = v44;
        if (v24 >= *(v20 + 16))
        {
          goto LABEL_27;
        }

        v45 = v43;
        v70 = v42;
        v46 = v36;
        v47 = v9;
        v71 = v2;
        v49 = v75[3];
        v48 = v75[4];
        v69 = *(v20 + v24 + 32);
        __swift_project_boxed_opaque_existential_1(v75, v49);
        v50 = v26;
        v51 = v63;
        sub_222DDA460();
        v52 = v71;
        sub_222DA1960(v70, v72, v69, v51, v64, v65, v66, v45, v76, v54, v55, v56, v57, *(&v57 + 1), v58, v59, v60, v61, v62, v63, v64);
        v2 = v52;
        if (v52)
        {
          v46(v51, v47);

LABEL_24:

          goto LABEL_25;
        }

        ++v24;
        v9 = v47;
        v46(v51, v47);

        sub_222DDB890();
        v53 = *(v84 + 16);
        sub_222DDB8C0();
        sub_222DDB8D0();
        sub_222DDB8A0();
        v20 = v60;
        if (v59 == v24)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_20:

LABEL_25:
    OUTLINED_FUNCTION_37_2();
  }
}

NSObject *sub_222D9F1C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_222D9E3E4(0, &qword_27D047C40, 0x277D5C220);

  v7 = sub_222DA2A5C();
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = sub_222DDB460();
  }

  sub_222DA8C4C(v8);

  v9 = OUTLINED_FUNCTION_52_1();
  sub_222DA7A2C(v9, v10);
  v11 = objc_opt_self();
  v12 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  v13 = sub_222DDA530();
  v14 = [v11 runSiriKitExecutorCommandWithContext:v13 payload:v7];

  v15 = sub_222DDB710();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v18 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v18, qword_27D04C928);
    v17 = sub_222DDB3C0();
    sub_222DDB6C0();
    v19 = OUTLINED_FUNCTION_7_3();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_14_2();
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_222D8A000, v17, v4, "ContactResolutionHelper::serializeDirectInvocation - Unable to serialize direct invocation.", v21, 2u);
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    sub_222D95EDC();
    OUTLINED_FUNCTION_50_0();
    *v22 = 3;
    swift_willThrow();
  }

  return v17;
}

void sub_222D9F3E0()
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B28, "|M");
  v4 = OUTLINED_FUNCTION_8(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_3();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v107 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v107 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v107 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v107 - v21;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_39_1();
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v107 - v25;
  if (v2 >> 62)
  {
    v27 = sub_222DDB920();
  }

  else
  {
    v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v27 < 2)
  {
    goto LABEL_11;
  }

  v113 = v9;
  v114 = v16;
  v112 = v13;
  v28 = v2 & 0xC000000000000001;
  v29 = OUTLINED_FUNCTION_42_1();
  sub_222D9E450(v29, v30, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x223DCE590](0, v2);
  }

  else
  {
    v31 = *(v2 + 32);
  }

  v32 = v31;
  v33 = [v31 nameComponents];

  if (v33)
  {
    sub_222DDA070();
  }

  sub_222DDA0B0();
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  v38 = OUTLINED_FUNCTION_47_1();
  sub_222DA835C(v38, v39, v40, v41);
  sub_222DDA0B0();
  OUTLINED_FUNCTION_24_2();
  if (__swift_getEnumTagSinglePayload(v42, v43, v44))
  {
    v45 = v26;
LABEL_10:
    sub_222DA8300(v45, &qword_27D047B28, "|M");
LABEL_11:
    OUTLINED_FUNCTION_36_1();
    return;
  }

  v46 = sub_222DD9FD0();
  v48 = v47;
  sub_222DA8300(v26, &qword_27D047B28, "|M");
  if (!v48)
  {
    goto LABEL_11;
  }

  v111 = v46;
  if (v28)
  {
    v49 = MEMORY[0x223DCE590](0, v2);
  }

  else
  {
    v49 = *(v2 + 32);
  }

  v50 = v49;
  v51 = [v49 nameComponents];

  if (v51)
  {
    sub_222DDA070();
  }

  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  sub_222DA835C(v22, v0, &qword_27D047B28, "|M");
  OUTLINED_FUNCTION_24_2();
  if (__swift_getEnumTagSinglePayload(v56, v57, v58))
  {

    v45 = v0;
    goto LABEL_10;
  }

  sub_222DD9FF0();
  v60 = v59;
  sub_222DA8300(v0, &qword_27D047B28, "|M");
  if (!v60)
  {
LABEL_59:

    goto LABEL_11;
  }

  v61 = sub_222D9EB88(v2);
  if (v61 >= 1)
  {
    v62 = v61;
    sub_222DA80C4(1, v2);
    sub_222DA80C4(v62, v2);
    if (!v28 || v62 == 1)
    {
    }

    else
    {
      sub_222D9E3E4(0, &qword_27D047BB0, 0x277CD3E90);

      v63 = 1;
      do
      {
        v64 = v63 + 1;
        sub_222DDB840();
        v63 = v64;
      }

      while (v62 != v64);
    }

    if (v2 >> 62)
    {

      v108 = sub_222DDB930();
      v110 = v66;
      v65 = v67;
      v62 = v68 >> 1;
    }

    else
    {
      v108 = v2 & 0xFFFFFFFFFFFFFF8;
      v110 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      v65 = 1;
    }

    v69 = v112;
    v70 = &off_2784BF000;
    if (v65 == v62)
    {
LABEL_32:

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v71 = &qword_27D047B28;
    v109 = v62;
    while (v65 < v62)
    {
      v72 = *(v110 + 8 * v65);
      v73 = v70[177];
      v112 = v72;
      v74 = [v72 v73];
      if (v74)
      {
        v75 = v74;
        v76 = v114;
        sub_222DDA070();
      }

      else
      {
        v76 = v114;
      }

      OUTLINED_FUNCTION_29_2();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
      sub_222DA835C(v76, v19, v71, "|M");
      OUTLINED_FUNCTION_24_2();
      if (__swift_getEnumTagSinglePayload(v81, v82, v83))
      {
        sub_222DA8300(v19, &qword_27D047B28, "|M");
LABEL_55:

        goto LABEL_58;
      }

      v84 = v71;
      v85 = v69;
      v86 = v70;
      v87 = v48;
      v88 = sub_222DD9FD0();
      v90 = v89;
      v91 = v84;
      sub_222DA8300(v19, v84, "|M");
      if (!v90)
      {
        goto LABEL_55;
      }

      if (v88 == v111 && v90 == v87)
      {

        v48 = v87;
      }

      else
      {
        OUTLINED_FUNCTION_47_1();
        v93 = sub_222DDBAC0();

        v48 = v87;
        if ((v93 & 1) == 0)
        {

          swift_unknownObjectRelease();
          goto LABEL_59;
        }
      }

      v70 = v86;
      v94 = [v112 v86 + 3515];
      if (v94)
      {
        v95 = v94;
        v96 = v113;
        sub_222DDA070();
      }

      else
      {
        v96 = v113;
      }

      v69 = v85;
      OUTLINED_FUNCTION_29_2();
      __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
      v101 = v85;
      v71 = v91;
      sub_222DA835C(v96, v101, v91, "|M");
      OUTLINED_FUNCTION_24_2();
      if (__swift_getEnumTagSinglePayload(v102, v103, v104))
      {

        sub_222DA8300(v69, &qword_27D047B28, "|M");
LABEL_57:

LABEL_58:
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

      sub_222DD9FF0();
      v106 = v105;

      sub_222DA8300(v69, v91, "|M");
      if (!v106)
      {
        goto LABEL_57;
      }

      ++v65;

      v62 = v109;
      if (v109 == v65)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_222D9FAB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while ((a1 & 0xC000000000000001) == 0)
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_17;
        }

        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = v3 + 1;
        v8 = *(*(a1 + 32 + 8 * v3) + qword_27D047A18);
        if (v8 != 2 && (v8 & 1) != 0)
        {
          return 1;
        }

LABEL_13:
        v3 = v6;
        if (v6 == v2)
        {
          return 0;
        }
      }

      v4 = OUTLINED_FUNCTION_17_2();
      v5 = MEMORY[0x223DCE590](v4);
      v6 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        break;
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v2 = OUTLINED_FUNCTION_45_1();
      if (!v2)
      {
        return 0;
      }
    }

    v7 = *(v5 + qword_27D047A18);
    swift_unknownObjectRelease();
    if (v7 != 2 && (v7 & 1) != 0)
    {
      return 1;
    }

    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_222D9FBA4()
{
  OUTLINED_FUNCTION_56();
  v1 = sub_222DDA770();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v7 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_222DDA760();
  v8 = sub_222DDA4A0();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_49_1();
  result = v11(v10);
  if ((v8 & 1) == 0)
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v13 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v13, qword_27D04C928);
    v14 = sub_222DDB3C0();
    v15 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v15))
    {
      OUTLINED_FUNCTION_14_2();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_1(v16);
      OUTLINED_FUNCTION_18_2(&dword_222D8A000, v17, v18, "cannot create view if device is locked. Please unlock to continue.");
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    sub_222D95EDC();
    OUTLINED_FUNCTION_50_0();
    *v19 = 6;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_222D9FD30(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return OUTLINED_FUNCTION_49_1();
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = OUTLINED_FUNCTION_52_1();
        v7 = MEMORY[0x223DCE590](v6);
      }

      else
      {
        v7 = *(v1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = sub_222DA1104();

      if (v9 == 1)
      {
        v10 = __OFADD__(v3++, 1);
        if (v10)
        {
          goto LABEL_16;
        }
      }

      else if (v9 == 2)
      {
        v10 = __OFADD__(v4++, 1);
        if (v10)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          result = OUTLINED_FUNCTION_45_1();
          v2 = result;
          if (!result)
          {
            return OUTLINED_FUNCTION_49_1();
          }

          goto LABEL_3;
        }
      }

      if (v2 == ++v5)
      {
        return OUTLINED_FUNCTION_49_1();
      }
    }
  }

  __break(1u);
  return result;
}

void sub_222D9FE18()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v2 = v0 >> 62;
  if (v0 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_222DDB920())
  {
    if (i < 2 || ((v4 = v1 & 0xC000000000000001, v5 = OUTLINED_FUNCTION_42_1(), sub_222D9E450(v5, v6, v1), (v1 & 0xC000000000000001) != 0) ? (v7 = MEMORY[0x223DCE590](0, v1)) : (v7 = *(v1 + 32)), v8 = v7, v9 = [v7 personHandle], v8, !v9))
    {
LABEL_25:
      OUTLINED_FUNCTION_36_1();
      return;
    }

    v10 = [v9 type];

    v11 = sub_222D9EB88(v1);
    if (v11 < 1)
    {
      break;
    }

    v12 = v11;
    sub_222DA80C4(1, v1);
    v13 = OUTLINED_FUNCTION_41_1();
    sub_222DA80C4(v13, v14);
    if (!v4 || v12 == 1)
    {

      if (!v2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v4 = sub_222D9E3E4(0, &qword_27D047BB0, 0x277CD3E90);

      v15 = 1;
      do
      {
        v16 = v15 + 1;
        sub_222DDB840();
        v15 = v16;
      }

      while (v12 != v16);
      if (!v2)
      {
LABEL_13:
        v1 &= 0xFFFFFFFFFFFFFF8uLL;
        v4 = v1 + 32;
        v2 = 1;
        goto LABEL_17;
      }
    }

    sub_222DDB930();
    OUTLINED_FUNCTION_57_0();
    v2 = v17;
    v12 = v18 >> 1;
LABEL_17:
    swift_unknownObjectRetain();
    while (1)
    {
      if (v12 == v2)
      {
        goto LABEL_24;
      }

      if (v2 >= v12)
      {
        break;
      }

      v19 = *(v4 + 8 * v2);
      v20 = [v19 personHandle];
      if (!v20)
      {

LABEL_24:
        swift_unknownObjectRelease_n();
        goto LABEL_25;
      }

      v21 = v20;
      ++v2;
      v22 = [v20 type];

      if (v22 != v10)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
}

uint64_t ContactResolutionResponseHandler.directInvocationValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  return sub_222DA7E84(v2, v3, v4, v5);
}

uint64_t ContactResolutionResponseHandler.init(userData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result)
  {
    sub_222DA0284(0x6E6F74747562, 0xE600000000000000, result, &v12);
    if (v13)
    {
      if (OUTLINED_FUNCTION_27_2())
      {
        v4 = v10 == 0x7972616D697270 && v11 == 0xE700000000000000;
        if (v4 || (sub_222DDBAC0() & 1) != 0)
        {

          v5 = 0;
          v6 = 0;
        }

        else if (v10 == 0x7261646E6F636573 && v11 == 0xE900000000000079)
        {

          v5 = 0;
          v6 = 1;
        }

        else
        {
          v9 = sub_222DDBAC0();

          v5 = 0;
          if (v9)
          {
            v6 = 1;
          }

          else
          {
            v6 = 4;
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
      sub_222DA8300(&v12, &qword_27D047AE0, &qword_222DDDD30);
    }

    sub_222DA0284(0x49746361746E6F63, 0xE900000000000064, v2, &v12);
    if (v13)
    {
      result = OUTLINED_FUNCTION_27_2();
      if (result)
      {
        v7 = v10;
        v5 = v11;
        v6 = 3;
        goto LABEL_23;
      }
    }

    else
    {
      sub_222DA8300(&v12, &qword_27D047AE0, &qword_222DDDD30);
    }

    sub_222DA0284(0x7865646E69, 0xE500000000000000, v2, &v12);
    if (v13)
    {
      result = OUTLINED_FUNCTION_27_2();
      if (result)
      {
        v7 = v10;
        v6 = 2;
        v5 = v2;
LABEL_22:
        v2 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      result = sub_222DA8300(&v12, &qword_27D047AE0, &qword_222DDDD30);
    }

    v5 = 0;
    v6 = 4;
LABEL_21:
    v7 = v2;
    goto LABEL_22;
  }

  v7 = 0;
  v5 = 0;
  v6 = 4;
LABEL_23:
  *a2 = v7;
  *(a2 + 8) = v5;
  *(a2 + 16) = v2;
  *(a2 + 24) = v6;
  return result;
}

double sub_222DA0284@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_222DCC9E4(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_222D8FDAC(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_222DA02E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_222DCC9E4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

double sub_222DA0340@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_222DCCA5C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_222D8FDAC(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

BOOL sub_222DA03A4()
{
  v1 = [v0 personHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 label];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_222DDB500();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v7 != 0;
}

BOOL sub_222DA0448()
{
  v1 = [v0 personHandle];
  if (!v1)
  {
    return 0;
  }

  v2 = sub_222DA7AAC(v1);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v6 != 0;
}

uint64_t sub_222DA04B8()
{
  v1 = sub_222DDA0B0();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  result = [v0 nameComponents];
  if (result)
  {
    v8 = result;
    sub_222DDA070();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C00, &qword_222DDD698);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222DDC9C0;
    *(inited + 32) = sub_222DD9FD0();
    *(inited + 40) = v10;
    *(inited + 48) = sub_222DDA010();
    *(inited + 56) = v11;
    *(inited + 64) = sub_222DD9FF0();
    *(inited + 72) = v12;
    v13 = sub_222DDA080();
    v14 = 0;
    *(inited + 80) = v13;
    *(inited + 88) = v15;
    while (1)
    {
      if (v14 == 64)
      {
        swift_setDeallocating();
        sub_222D9DF70();
        v18 = *(v4 + 8);
        v19 = OUTLINED_FUNCTION_17_2();
        v20(v19);
        return 0;
      }

      v16 = *(inited + v14 + 40);
      if (v16)
      {
        if ((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : *(inited + v14 + 32) & 0xFFFFFFFFFFFFLL)
        {
          break;
        }
      }

      v14 += 16;
    }

    v21 = *(v4 + 8);
    v22 = OUTLINED_FUNCTION_17_2();
    v23(v22);
    swift_setDeallocating();
    sub_222D9DF70();
    return 1;
  }

  return result;
}

void sub_222DA0658()
{
  OUTLINED_FUNCTION_32_2();
  v3 = sub_222DD9F60();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_3();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_1();
  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v18 = [v0 personHandle];
  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = v18;
  v20 = sub_222DA7B8C(v18, &selRef_value);
  if (!v21)
  {

    goto LABEL_6;
  }

  v22 = v21;
  v50 = v20;
  if (sub_222DA04B8())
  {

    goto LABEL_6;
  }

  v49 = v6;
  v23 = sub_222DA7B8C(v0, &selRef__displayName);
  if (!v24)
  {
LABEL_17:

    goto LABEL_6;
  }

  v25 = v23;
  v26 = v24;
  OUTLINED_FUNCTION_58_0();
  if (!v27)
  {

    goto LABEL_17;
  }

  if ([v19 type] == 2)
  {
    sub_222DD9EF0();
    sub_222DD9F00();
    v48 = v25;
    sub_222DD9F40();
    v47 = v26;
    v28 = v11;
    v29 = *(v49 + 8);
    v29(v28, v3);
    v29(v2, v3);
    sub_222DD9F20();
    sub_222DD9F40();
    v30 = v2;
    v31 = v29;
    v29(v30, v3);
    v32 = OUTLINED_FUNCTION_17_2();
    (v29)(v32);
    sub_222DD9F30();
    sub_222DD9F40();
    v33 = OUTLINED_FUNCTION_17_2();
    (v29)(v33);
    v34 = v47;
    v35 = (v29)(v1, v3);
    MEMORY[0x28223BE20](v35);
    *(&v46 - 2) = v17;

    v36 = sub_222DA0B60(sub_222DA81EC, (&v46 - 4), v48, v34);

    if (v36)
    {
      sub_222DA0D58();
      v38 = v37;
      v40 = v39;
      sub_222DA0D58();
      if (v38 != v42 || v40 != v41)
      {
        sub_222DDBAC0();
      }
    }

    v45 = OUTLINED_FUNCTION_48_1();
    v31(v45);
  }

  else
  {
    if (v25 != v50 || v26 != v22)
    {
      sub_222DDBAC0();
    }
  }

LABEL_6:
  OUTLINED_FUNCTION_36_1();
}

void sub_222DA0A6C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = sub_222D9EB88(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DCE590](v6, a3);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if (v10)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_222DA0B60(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_26:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v21 = a4 & 0xFFFFFFFFFFFFFFLL;
  v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_222DDB830();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) == 0)
    {
      v11 = v10;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v11 = sub_222DDB880();
      }

      v12 = (v11 + v9);
      v13 = *(v11 + v9);
      v14 = *(v11 + v9);
      if (v13 < 0)
      {
        switch(__clz(v14 ^ 0xFF))
        {
          case 0x1Au:
            goto LABEL_20;
          case 0x1Bu:
            goto LABEL_21;
          case 0x1Cu:
            goto LABEL_22;
          default:
            break;
        }
      }

LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v20[0] = a3;
    v20[1] = v21;
    v12 = v20 + v9;
    v14 = *(v20 + v9);
    if ((*(v20 + v9) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    switch(__clz(v14 ^ 0xFF))
    {
      case 0x1Au:
LABEL_20:
        v14 = v12[1] & 0x3F | ((v14 & 0x1F) << 6);
        v16 = 2;
        break;
      case 0x1Bu:
LABEL_21:
        v14 = ((v14 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
        v16 = 3;
        break;
      case 0x1Cu:
LABEL_22:
        v14 = ((v14 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
        v16 = 4;
        break;
      default:
        goto LABEL_14;
    }

LABEL_15:
    LODWORD(v20[0]) = v14;
    v17 = a1(v20);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_26;
    }
  }

  v18 = 0;
  return v18 & 1;
}

void sub_222DA0D58()
{
  OUTLINED_FUNCTION_38_2();
  v3 = v2;
  OUTLINED_FUNCTION_56();
  v27 = sub_222DD9F60();
  v4 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[2] = 0;
  v26[3] = 0xE000000000000000;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v8 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = v0;
    v23[1] = v1;
    v10 = 0;
    v24 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = v3 & 0xFFFFFFFFFFFFFFLL;
    v11 = (v5 + 8);
    do
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        sub_222DDB830();
        v17 = v16;
      }

      else
      {
        if ((v3 & 0x2000000000000000) != 0)
        {
          v26[0] = v9;
          v26[1] = v25;
          v13 = *(v26 + v10);
          if (v13 < 0)
          {
            OUTLINED_FUNCTION_43_1();
            switch(v19)
            {
              case 1:
LABEL_20:
                v20 = v14[1] & 0x3F | ((v13 & 0x1F) << 6);
                v17 = 2;
                break;
              case 2:
LABEL_21:
                v21 = ((v13 & 0xF) << 12) | ((v14[1] & 0x3F) << 6) | v14[2] & 0x3Fu;
                v17 = 3;
                break;
              case 3:
LABEL_22:
                v22 = ((v13 & 0xF) << 18) | ((v14[1] & 0x3F) << 12) | ((v14[2] & 0x3F) << 6) | v14[3] & 0x3Fu;
                v17 = 4;
                break;
              default:
                goto LABEL_14;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v12 = v24;
          if ((v9 & 0x1000000000000000) == 0)
          {
            v12 = sub_222DDB880();
          }

          v13 = *(v12 + v10);
          if (v13 < 0)
          {
            OUTLINED_FUNCTION_43_1();
            switch(v15)
            {
              case 1:
                goto LABEL_20;
              case 2:
                goto LABEL_21;
              case 3:
                goto LABEL_22;
              default:
                break;
            }
          }
        }

LABEL_14:
        v17 = 1;
      }

LABEL_15:
      sub_222DD9F00();
      v18 = sub_222DD9F50();
      (*v11)(v7, v27);
      if (v18)
      {
        sub_222DDB550();
      }

      v10 += v17;
    }

    while (v10 < v8);
  }

  OUTLINED_FUNCTION_37_2();
}

void sub_222DA0FD4()
{
  v1 = [v0 personHandle];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 type];

    if (!v3)
    {

      sub_222DA0658();
    }
  }
}

uint64_t sub_222DA1054()
{
  v1 = sub_222DA7B8C(v0, &selRef_contactIdentifier);
  if (v2)
  {
    return v1;
  }

  v1 = sub_222DA7B8C(v0, &selRef_customIdentifier);
  if (v3)
  {
    return v1;
  }

  v6 = [v0 personHandle];
  if (v6)
  {
    v1 = sub_222DA7AAC(v6);
    if (v7)
    {
      return v1;
    }
  }

  v8 = [v0 displayName];
  v4 = sub_222DDB500();

  return v4;
}

id sub_222DA1104()
{
  result = [v0 personHandle];
  if (result)
  {
    v2 = result;
    v3 = [result type];

    return v3;
  }

  return result;
}

void sub_222DA1158()
{
  OUTLINED_FUNCTION_38_2();
  v3 = v0;
  v98 = v4;
  v100 = v5;
  v99 = sub_222DDA1D0();
  v6 = OUTLINED_FUNCTION_2(v99);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v15 = OUTLINED_FUNCTION_8(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v96 = &v92 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B28, "|M");
  v20 = OUTLINED_FUNCTION_8(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_3();
  v25 = v23 - v24;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v92 - v28;
  MEMORY[0x28223BE20](v27);
  v97 = &v92 - v30;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_54_0();
  MEMORY[0x28223BE20](v32);
  v34 = &v92 - v33;
  v35 = [v3 nameComponents];
  if (v35)
  {
    v36 = v35;
    sub_222DDA070();
  }

  v37 = sub_222DDA0B0();
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  sub_222DA835C(v2, v34, &qword_27D047B28, "|M");
  sub_222DDA0B0();
  OUTLINED_FUNCTION_24_2();
  if (__swift_getEnumTagSinglePayload(v42, v43, v44))
  {
    v45 = v34;
LABEL_5:
    sub_222DA8300(v45, &qword_27D047B28, "|M");
    goto LABEL_6;
  }

  v95 = sub_222DD9FD0();
  v50 = v49;
  sub_222DA8300(v34, &qword_27D047B28, "|M");
  if (!v50)
  {
    goto LABEL_6;
  }

  v51 = [v3 personHandle];
  if (!v51 || (v52 = sub_222DA7AAC(v51), !v53))
  {
LABEL_28:

    goto LABEL_6;
  }

  v93 = v52;
  v94 = v1;
  v54 = [v3 personHandle];
  if (!v54 || (v55 = v54, v92 = [v54 type], v55, v92 != 2))
  {

    goto LABEL_28;
  }

  v92 = sub_222DA1864();
  v95 = v56;

  v57 = sub_222DA1864();
  v59 = v58;

  v60 = v92 == v57 && v95 == v59;
  if (v60)
  {
  }

  else
  {
    LODWORD(v93) = sub_222DDBAC0();

    if ((v93 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v68 = [v3 nameComponents];
  if (v68)
  {
    v69 = v68;
    sub_222DDA070();
  }

  v70 = v97;
  OUTLINED_FUNCTION_29_2();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  sub_222DA835C(v29, v70, &qword_27D047B28, "|M");
  OUTLINED_FUNCTION_24_2();
  if (__swift_getEnumTagSinglePayload(v75, v76, v77))
  {
    sub_222DA8414(v70, v25);
    OUTLINED_FUNCTION_24_2();
    if (__swift_getEnumTagSinglePayload(v78, v79, v80) == 1)
    {
      v81 = 0;
    }

    else
    {
      v81 = sub_222DDA050();
      OUTLINED_FUNCTION_28_2(v37);
      (*(v85 + 8))(v25, v37);
    }

    [v3 setNameComponents_];

    v45 = v70;
    goto LABEL_5;
  }

  sub_222DDAE90();
  v82 = [v3 personHandle];
  if (sub_222DDAE80())
  {
    v83 = v96;
    sub_222DDAE70();

    v84 = sub_222DDB240();
    OUTLINED_FUNCTION_61_0(v83);
    if (v60)
    {
      sub_222DA8300(v83, &qword_27D0479C0, &qword_222DDE100);
    }

    else
    {
      sub_222DDB220();
      OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_28_2(v84);
      (*(v86 + 8))();
    }
  }

  OUTLINED_FUNCTION_53_0();
  sub_222DD9FE0();
  OUTLINED_FUNCTION_24_2();
  if (__swift_getEnumTagSinglePayload(v87, v88, v89) == 1)
  {
    v90 = 0;
  }

  else
  {
    v90 = sub_222DDA050();
    OUTLINED_FUNCTION_28_2(v37);
    (*(v91 + 8))(v70, v37);
  }

  [v3 setNameComponents_];

LABEL_6:
  sub_222DDB0D0();
  (*(v8 + 16))(v13, v100, v99);
  v46 = v3;
  if (sub_222DDAF40())
  {
    v47 = v98;
    sub_222DDAED0();
    if (sub_222DDAEE0())
    {
      v48 = v47;
      sub_222DDAE50();
    }
  }

  else
  {
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v61 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v61, qword_27D04C928);
    v62 = sub_222DDB3C0();
    v63 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v63))
    {
      OUTLINED_FUNCTION_14_2();
      v64 = swift_slowAlloc();
      OUTLINED_FUNCTION_50_1(v64);
      OUTLINED_FUNCTION_18_2(&dword_222D8A000, v65, v66, "INPerson::toDialogPerson - Unable to convert INPerson to DialogPerson");
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    sub_222D95EDC();
    OUTLINED_FUNCTION_50_0();
    *v67 = 1;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_37_2();
}

uint64_t sub_222DA1864()
{
  OUTLINED_FUNCTION_58_0();

  while (1)
  {
    sub_222DDB5B0();
    if (!v0)
    {
      break;
    }

    OUTLINED_FUNCTION_55_0();
    if ((sub_222DDB490() & 1) == 0)
    {
      v1 = OUTLINED_FUNCTION_17_2();
      MEMORY[0x223DCE2D0](v1);
    }
  }

  OUTLINED_FUNCTION_20_2();
  while (1)
  {
    sub_222DDB5B0();
    if (!v2)
    {
      break;
    }

    OUTLINED_FUNCTION_55_0();
    if ((sub_222DDB4A0() & 1) == 0)
    {
      v3 = OUTLINED_FUNCTION_17_2();
      MEMORY[0x223DCE2D0](v3);
    }
  }

  OUTLINED_FUNCTION_20_2();
  while (1)
  {
    sub_222DDB5B0();
    if (!v4)
    {
      break;
    }

    OUTLINED_FUNCTION_55_0();
    if ((sub_222DDB480() & 1) == 0)
    {
      v5 = OUTLINED_FUNCTION_17_2();
      MEMORY[0x223DCE2D0](v5);
    }
  }

  return 0;
}

void sub_222DA1960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_38_2();
  a19 = v24;
  a20 = v25;
  v26 = v22;
  v27 = v21;
  v159 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v163 = v37;
  v39 = v38;
  v162 = v40;
  v167 = sub_222DDB240();
  v41 = OUTLINED_FUNCTION_2(v167);
  v164 = v42;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_3();
  v157 = v45 - v46;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v47);
  v158 = &v148 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v50 = OUTLINED_FUNCTION_8(v49);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_39_1();
  MEMORY[0x28223BE20](v53);
  v160 = &v148 - v54;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v55);
  v161 = &v148 - v56;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v57);
  v59 = &v148 - v58;
  if (v30)
  {
    v152 = v36;
    v153 = v34;
    v165 = v39;
    v154 = v23;
    v155 = &v148 - v58;
    v60 = sub_222DA7B8C(v27, &selRef_contactIdentifier);
    if (v61)
    {
      v62 = v60;
    }

    else
    {
      v62 = 0;
    }

    if (v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = 0xE000000000000000;
    }

    sub_222DA264C();
    v166 = v27;
    v65 = v64;
    v67 = v66;
    v68 = sub_222DD9EE0();
    v69 = *(v68 + 48);
    v70 = *(v68 + 52);
    swift_allocObject();

    sub_222DD9ED0();
    v169 = v62;
    v170 = v63;
    v171 = v65;
    v172 = v67;
    v173 = v32;
    v174 = v30;
    sub_222DA83C0();
    v71 = sub_222DD9EC0();
    v168 = v22;
    if (v22)
    {

      goto LABEL_55;
    }

    v73 = v71;
    v74 = v72;
    v150 = v62;
    v149 = v32;

    v151 = sub_222DDA120();
    v156 = v75;
    sub_222D9322C(v73, v74);
    if (qword_27D0475B0 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v76 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v76, qword_27D04C928);

    v77 = sub_222DDB3C0();
    v78 = sub_222DDB6B0();

    v79 = os_log_type_enabled(v77, v78);
    v80 = v150;
    if (v79)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v148 = v77;
      v83 = v82;
      a10 = v82;
      *v81 = 136315138;
      v169 = v80;
      v170 = v63;
      v171 = v65;
      v172 = v67;
      v173 = v149;
      v174 = v30;
      v84 = sub_222DDB540();
      v86 = sub_222D8F7F0(v84, v85, &a10);

      *(v81 + 4) = v86;
      v87 = v148;
      _os_log_impl(&dword_222D8A000, v148, v78, "Creating toContactDialogPerson with viewData=%s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    else
    {
    }

    v26 = v168;
    v23 = v154;
    v59 = v155;
    v39 = v165;
    v27 = v166;
    v30 = v156;
  }

  else
  {
    v151 = 0;
  }

  OUTLINED_FUNCTION_47_1();
  sub_222DA1158();
  if (v26)
  {

    goto LABEL_55;
  }

  v165 = v39;
  v156 = v30;
  v154 = [v27 searchProvider];
  if (v154 == 3)
  {
    LODWORD(v155) = 1;
  }

  else
  {
    LODWORD(v155) = sub_222DDBAC0();
  }

  v88 = v164;
  v89 = v161;

  v90 = v167;
  __swift_storeEnumTagSinglePayload(v59, 1, 1, v167);
  sub_222DDB0A0();
  OUTLINED_FUNCTION_61_0(v89);
  v168 = 0;
  v166 = v27;
  if (v91)
  {
    sub_222DA8300(v89, &qword_27D0479C0, &qword_222DDE100);
  }

  else
  {
    v92 = v59;
    v93 = *(v88 + 32);
    v94 = v89;
    v95 = v158;
    v93(v158, v94, v90);
    sub_222DDB220();
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_11_2();
    if (v96)
    {
      sub_222DDB230();
      OUTLINED_FUNCTION_31_2();
      OUTLINED_FUNCTION_11_2();
      if (v97)
      {
        sub_222DA8300(v92, &qword_27D0479C0, &qword_222DDE100);
        v98 = v167;
        v93(v92, v95, v167);
        __swift_storeEnumTagSinglePayload(v92, 0, 1, v98);
        goto LABEL_40;
      }
    }

    v88 = v164;
    v90 = v167;
    (*(v164 + 8))(v95, v167);
    v59 = v92;
    v27 = v166;
  }

  v99 = v160;
  sub_222DDB0A0();
  v100 = v99;
  OUTLINED_FUNCTION_61_0(v99);
  if (v91)
  {
    sub_222DA8300(v99, &qword_27D0479C0, &qword_222DDE100);
  }

  else
  {
    v101 = v157;
    (*(v88 + 32))(v157, v100, v90);
    sub_222DDB220();
    OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_11_2();
    if (v102 || (sub_222DDB230(), OUTLINED_FUNCTION_31_2(), OUTLINED_FUNCTION_11_2(), v103))
    {
      (*(v88 + 8))(v101, v167);
    }

    else
    {
      v137 = [v27 personHandle];
      if (v137)
      {
        v138 = v137;
        v139 = [v137 type];
        v140 = v164;
        v141 = v157;
        if (!v139)
        {
          sub_222DA7B8C(v138, &selRef_value);
          if (v142)
          {
            v92 = v59;
            if (qword_27D0475B0 != -1)
            {
              OUTLINED_FUNCTION_0_4();
            }

            v143 = sub_222DDB3E0();
            OUTLINED_FUNCTION_63_0(v143, qword_27D04C928);
            v144 = sub_222DDB3C0();
            v145 = sub_222DDB6D0();
            if (os_log_type_enabled(v144, v145))
            {
              OUTLINED_FUNCTION_14_2();
              v146 = swift_slowAlloc();
              *v146 = 0;
              _os_log_impl(&dword_222D8A000, v144, v145, "Created fullName using handle value", v146, 2u);
              OUTLINED_FUNCTION_16_2();
              MEMORY[0x223DCEF40]();
            }

            sub_222DDB210();
            v147 = v167;
            (*(v164 + 8))(v157, v167);
            sub_222DA8300(v92, &qword_27D0479C0, &qword_222DDE100);
            __swift_storeEnumTagSinglePayload(v23, 0, 1, v147);
            sub_222DA835C(v23, v92, &qword_27D0479C0, &qword_222DDE100);
            goto LABEL_40;
          }

          v140 = v164;
        }

        (*(v140 + 8))(v141, v167);
      }

      else
      {
        (*(v164 + 8))(v157, v167);
      }
    }
  }

  if (qword_27D0475B0 != -1)
  {
    OUTLINED_FUNCTION_0_4();
  }

  v104 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v104, qword_27D04C928);
  v105 = sub_222DDB3C0();
  v106 = sub_222DDB6D0();
  if (OUTLINED_FUNCTION_34_2(v106))
  {
    OUTLINED_FUNCTION_14_2();
    v107 = swift_slowAlloc();
    OUTLINED_FUNCTION_50_1(v107);
    OUTLINED_FUNCTION_18_2(&dword_222D8A000, v108, v109, "Unable to determine INPerson fullName");
    OUTLINED_FUNCTION_16_2();
    MEMORY[0x223DCEF40]();
  }

  OUTLINED_FUNCTION_26_2();
  sub_222DDB0A0();
  v110 = OUTLINED_FUNCTION_52_1();
  sub_222DA8300(v110, v111, &qword_222DDE100);
  sub_222DA835C(v23, v59, &qword_27D0479C0, &qword_222DDE100);
  v92 = v59;
LABEL_40:
  v167 = a21;
  v112 = type metadata accessor for ContactDialogPerson.Builder(0);
  v113 = *(v112 + 48);
  v114 = *(v112 + 52);
  swift_allocObject();
  sub_222D8FE40();
  sub_222D8FEC8(v151, v156);

  sub_222D8FED4(v162, v165);

  if (v154 == 3)
  {
    v115 = 0x707041726568746FLL;
  }

  else
  {
    v115 = 1701736302;
  }

  if (v154 == 3)
  {
    v116 = 0xE900000000000073;
  }

  else
  {
    v116 = 0xE400000000000000;
  }

  v117 = sub_222D8FEE0(v115, v116);

  *(v117 + qword_27D047A78) = v155 & 1;
  v118 = sub_222D967A4(v163);
  sub_222D8FEEC(v118, v119);

  OUTLINED_FUNCTION_26_2();
  sub_222DDB0C0();
  sub_222DDAFB0();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_26_2();
  sub_222DDAEC0();
  sub_222DDAFD0();

  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_26_2();
  sub_222DDAEB0();
  sub_222DDAFC0();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_26_2();
  sub_222DDB0B0();
  sub_222DDAFA0();

  OUTLINED_FUNCTION_22_2();
  v120 = v92;
  sub_222DDAF90();

  sub_222DDB080();
  sub_222DDAF70();

  OUTLINED_FUNCTION_26_2();
  sub_222DDB070();
  sub_222DDAF60();

  OUTLINED_FUNCTION_22_2();
  sub_222DDAF10();
  sub_222DDB000();
  OUTLINED_FUNCTION_60_0();
  sub_222DDB090();
  sub_222DDAF80();

  sub_222DDAEE0();
  sub_222DDAF50();

  sub_222DDAF20();
  sub_222DDB010();

  OUTLINED_FUNCTION_26_2();
  sub_222DDAEF0();
  sub_222DDAFE0();
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_22_2();
  sub_222DDAF00();
  v121 = sub_222DDAFF0();

  v122 = v166;
  v123 = sub_222DA7B8C(v166, &selRef_contactIdentifier);
  if (v124 || (v123 = sub_222DA7B8C(v122, &selRef_customIdentifier), v124))
  {
    v125 = v120;
    v126 = sub_222D8FEF8(v123, v124);

    v121 = v126;
  }

  else
  {
    v125 = v120;
  }

  if (v167)
  {
    v127 = sub_222D8FF60(v159, v167);

    v121 = v127;
  }

  v128 = [v122 image];
  if (v128)
  {
    v129 = sub_222DA7B1C(v128);
    if (v130 >> 60 != 15)
    {
      v131 = v129;
      v132 = v130;
      v133 = sub_222D8FF04(v129, v130);
      sub_222D93218(v131, v132);

      v121 = v133;
    }
  }

  v134 = type metadata accessor for ContactDialogPerson(0);
  v135 = *(v134 + 48);
  v136 = *(v134 + 52);
  swift_allocObject();
  sub_222D9089C(v121);

  sub_222DA8300(v125, &qword_27D0479C0, &qword_222DDE100);
LABEL_55:
  OUTLINED_FUNCTION_37_2();
}

void sub_222DA264C()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v2 = sub_222DDA0B0();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  [v14 setStyle_];
  [v14 set:1 ignoresFallbacks:?];
  v15 = [v1 nameComponents];
  if (v15)
  {
    v16 = v15;
    sub_222DDA070();

    v17 = sub_222DDA050();
    v18 = [v14 stringFromPersonNameComponents_];

    sub_222DDB500();
    (*(v5 + 8))(v13, v2);
    goto LABEL_20;
  }

  v19 = [v1 displayName];
  v20 = sub_222DDB500();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v23 && (sub_222DA7B8C(v1, &selRef_contactIdentifier), v24))
  {

    v25 = [v1 displayName];
    if (!v25)
    {
      sub_222DDB500();
      v25 = sub_222DDB4C0();
    }

    v26 = [v14 personNameComponentsFromString_];

    if (v26)
    {
      sub_222DDA070();

      v27 = sub_222DDA050();
      v28 = [v14 stringFromPersonNameComponents_];

      sub_222DDB500();
      (*(v5 + 8))(v10, v2);
LABEL_20:
      OUTLINED_FUNCTION_36_1();
      return;
    }

    v37 = [v1 displayName];
    sub_222DDB500();
    OUTLINED_FUNCTION_57_0();
  }

  else
  {
    v10 = 0;
    v1 = 0xE000000000000000;
  }

  v38 = v10;
  v39 = v1;
  v29 = sub_222D8F710();
  v30 = MEMORY[0x223DCE4D0](32, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v29);

  v31 = 0;
  v38 = 0;
  v39 = 0xE000000000000000;
  v32 = (v30 + 56);
  v33 = *(v30 + 16);
  while (1)
  {
    if (v33 == v31)
    {

      goto LABEL_20;
    }

    if (v31 >= *(v30 + 16))
    {
      break;
    }

    if ((*(v32 - 2) ^ *(v32 - 3)) >= 0x4000)
    {
      v35 = *(v32 - 1);
      v34 = *v32;

      v36 = sub_222DDB740();
      MEMORY[0x223DCE2D0](v36);
    }

    v32 += 4;
    ++v31;
  }

  __break(1u);
}

uint64_t static ContactResolutionHelper.sortINPersonBySearchProvider(inpersons:)()
{

  v2 = sub_222DA7BEC(v0);
  sub_222DA5BE8(&v2, 0);
  return v2;
}

id sub_222DA2A5C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_222DDB4C0();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

void sub_222DA2AD0()
{
  OUTLINED_FUNCTION_32_2();
  v3 = v2;
  sub_222DA36F0();
  v5 = v4;
  sub_222DA38E0(v3);
  sub_222DA39F4(v3);
  v7 = v6;
  v8 = sub_222D9EB88(v3);
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (v8)
    {
      if (v8 >= 1)
      {
        v18 = 0;
        v19 = MEMORY[0x277D84F90];
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v20 = OUTLINED_FUNCTION_52_1();
            v21 = MEMORY[0x223DCE590](v20);
          }

          else
          {
            v21 = *(v3 + 8 * v18 + 32);
          }

          v22 = v21;
          if (v5)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_4_4();
              v19 = v25;
            }

            OUTLINED_FUNCTION_19_2();
            if (v16)
            {
              OUTLINED_FUNCTION_13_2();
              v19 = v26;
            }

            v23 = 6;
          }

          else
          {
            v0 = sub_222DA1104();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (v0 == 1)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_4_4();
                v19 = v29;
              }

              OUTLINED_FUNCTION_19_2();
              if (v16)
              {
                OUTLINED_FUNCTION_13_2();
                v19 = v30;
              }

              v23 = 4;
            }

            else if (v0 == 2)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_4_4();
                v19 = v27;
              }

              OUTLINED_FUNCTION_19_2();
              if (v16)
              {
                OUTLINED_FUNCTION_13_2();
                v19 = v28;
              }

              v23 = 3;
            }

            else
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_4_4();
                v19 = v31;
              }

              OUTLINED_FUNCTION_19_2();
              if (v16)
              {
                OUTLINED_FUNCTION_13_2();
                v19 = v32;
              }

              v23 = 5;
            }
          }

          ++v18;

          *(v19 + 16) = v0;
          *(v19 + v1 + 32) = v23;
        }

        while (v9 != v18);
        goto LABEL_57;
      }

      goto LABEL_59;
    }

LABEL_57:
    OUTLINED_FUNCTION_36_1();
    return;
  }

  if (!v8)
  {
    goto LABEL_57;
  }

  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v11 = OUTLINED_FUNCTION_48_1();
        v12 = MEMORY[0x223DCE590](v11);
      }

      else
      {
        v12 = *(v3 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = sub_222DA1104();
      v15 = swift_isUniquelyReferenced_nonNull_native();
      if (v14 == 1)
      {
        if ((v15 & 1) == 0)
        {
          OUTLINED_FUNCTION_4_4();
        }

        OUTLINED_FUNCTION_10_2();
        if (v16)
        {
          OUTLINED_FUNCTION_9_2();
        }
      }

      else if (v14 == 2)
      {
        if ((v15 & 1) == 0)
        {
          OUTLINED_FUNCTION_4_4();
        }

        OUTLINED_FUNCTION_10_2();
        if (v16)
        {
          OUTLINED_FUNCTION_9_2();
        }
      }

      else
      {
        if ((v15 & 1) == 0)
        {
          OUTLINED_FUNCTION_4_4();
        }

        OUTLINED_FUNCTION_10_2();
        if (v16)
        {
          OUTLINED_FUNCTION_9_2();
        }
      }

      ++v10;

      OUTLINED_FUNCTION_46_1();
    }

    while (!v17);
    goto LABEL_57;
  }

  __break(1u);
LABEL_59:
  __break(1u);
}

void static ContactResolutionHelper.localizeContactLabel(contact:locale:)(void *a1)
{
  v2 = [a1 personHandle];
  if (v2)
  {
    v12 = v2;
    v3 = [v2 label];
    if (v3)
    {
      v4 = v3;
      sub_222DDA1A0();
      v11 = sub_222D8F710();
      v10 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_15_2();
      v5 = sub_222DDB770();

      OUTLINED_FUNCTION_41_1();
      sub_222DDA6A0();
      OUTLINED_FUNCTION_57_0();

      OUTLINED_FUNCTION_53_0();
      v6 = sub_222DDB4C0();
      OUTLINED_FUNCTION_35_1();

      OUTLINED_FUNCTION_21_2();
      v7 = sub_222DDB4C0();
      [v12 setValue:v5 forKey:{v7, v10, v11, v11, v11}];

      v8 = v12;
      OUTLINED_FUNCTION_6_3();
      v9 = sub_222DDB4C0();
      [a1 setValue:v8 forKey:v9];
    }

    else
    {
    }
  }
}

void static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:directInvocationKey:deviceState:globals:)()
{
  OUTLINED_FUNCTION_38_2();
  v86 = v1;
  v75 = v2;
  v84 = v3;
  v5 = v4;
  v66 = v6;
  v78 = v7;
  v68 = v8;
  OUTLINED_FUNCTION_56();
  v9 = sub_222DDA1D0();
  v10 = OUTLINED_FUNCTION_2(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_3();
  v74 = v15 - v16;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v65 - v18;
  sub_222DA2AD0();
  v21 = v20;
  v77 = v0;
  v22 = sub_222D9EB88(v0);
  if (v22)
  {
    v23 = v22;
    v76 = v21;
    v94 = MEMORY[0x277D84F90];
    sub_222DDB8B0();
    if ((v23 & 0x8000000000000000) == 0)
    {
      v24 = v77;
      v73 = sub_222D9EB88(v77);
      v25 = 0;
      v72 = v24 & 0xC000000000000001;
      v65 = v24 & 0xFFFFFFFFFFFFFF8;
      v82 = (v12 + 8);
      v67 = xmmword_222DDC9B0;
      v70 = v19;
      v69 = v23;
      v71 = v5;
      while (v25 < v73)
      {
        v81 = v25;
        if (v72)
        {
          v26 = MEMORY[0x223DCE590](v25, v77);
        }

        else
        {
          if (v25 >= *(v65 + 16))
          {
            goto LABEL_31;
          }

          v26 = *(v77 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = v84[4];
        __swift_project_boxed_opaque_existential_1(v84, v84[3]);
        OUTLINED_FUNCTION_35_1();
        sub_222DDA460();
        v83 = v27;
        v29 = [v27 personHandle];
        if (v29)
        {
          v30 = v29;
          v31 = [v29 label];
          if (v31)
          {
            v32 = v31;
            v91 = sub_222DDA1A0();
            v92 = v33;
            v89 = 45;
            v90 = 0xE100000000000000;
            v87 = 95;
            v88 = 0xE100000000000000;
            v64 = sub_222D8F710();
            OUTLINED_FUNCTION_15_2();
            v34 = sub_222DDB770();

            OUTLINED_FUNCTION_47_1();
            sub_222DDA6A0();
            OUTLINED_FUNCTION_57_0();

            OUTLINED_FUNCTION_53_0();
            v35 = sub_222DDB4C0();
            OUTLINED_FUNCTION_35_1();

            OUTLINED_FUNCTION_21_2();
            v36 = sub_222DDB4C0();
            [v30 setValue:v34 forKey:v36];

            v37 = v30;
            OUTLINED_FUNCTION_6_3();
            v30 = sub_222DDB4C0();
            [v83 setValue:v37 forKey:v30];
          }
        }

        v38 = *v82;
        (*v82)(v19, v9);
        if (v78)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
          v39 = v81;
          if (v5)
          {
            inited = swift_initStackObject();
            *(inited + 16) = v67;
            *(inited + 32) = v66;
            *(inited + 40) = v5;
            *(inited + 72) = MEMORY[0x277D83B88];
            *(inited + 48) = v39;
          }

          else
          {
            v43 = swift_initStackObject();
            OUTLINED_FUNCTION_23_2(v43, &v93);
            *(v44 + 72) = MEMORY[0x277D83B88];
            *(v44 + 48) = v39;
          }

          v45 = sub_222DDB460();
          v46 = v86;
          v47 = sub_222D9F1C0(v68, v78, v45, v84);
          v86 = v46;
          if (v46)
          {

            goto LABEL_27;
          }

          v41 = v47;
          v42 = v48;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v39 = v81;
        }

        v91 = v39;
        v49 = sub_222DDBAB0();
        v85 = v50;
        if (v39 >= *(v76 + 16))
        {
          goto LABEL_30;
        }

        v51 = v49;
        v80 = v38;
        v52 = v84[3];
        v53 = v84[4];
        v79 = *(v76 + v39 + 32);
        __swift_project_boxed_opaque_existential_1(v84, v52);
        v54 = v74;
        OUTLINED_FUNCTION_35_1();
        sub_222DDA460();
        v55 = v83;
        v56 = sub_222DA7B8C(v83, &selRef_sourceAppBundleIdentifier);
        v57 = v86;
        sub_222DA1960(v41, v42, v79, v54, v75, v56, v58, v51, v85, v64, v65, v66, v67, *(&v67 + 1), v68, v69, v70, v71, v72, v73, v74);
        v86 = v57;
        if (v57)
        {
          v62 = OUTLINED_FUNCTION_30_2();
          v63(v62);

LABEL_27:

          goto LABEL_28;
        }

        v25 = v39 + 1;
        v59 = OUTLINED_FUNCTION_30_2();
        v60(v59);

        sub_222DDB890();
        v61 = *(v94 + 16);
        sub_222DDB8C0();
        sub_222DDB8D0();
        sub_222DDB8A0();
        v5 = v71;
        v19 = v70;
        if (v69 == v25)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

LABEL_28:
    OUTLINED_FUNCTION_37_2();
  }
}

void sub_222DA36F0()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v23 = sub_222DD9F60();
  v2 = OUTLINED_FUNCTION_2(v23);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v9 = v8 - v7;
  v10 = sub_222D9EB88(v1);
  v11 = 0;
  v25 = v1;
  v26 = v1 & 0xC000000000000001;
  v24 = v1 & 0xFFFFFFFFFFFFFF8;
  v12 = (v4 + 8);
  while (1)
  {
    if (v10 == v11)
    {
      goto LABEL_17;
    }

    if (v26)
    {
      v13 = MEMORY[0x223DCE590](v11, v25);
    }

    else
    {
      if (v11 >= *(v24 + 16))
      {
        goto LABEL_19;
      }

      v13 = *(v25 + 8 * v11 + 32);
    }

    v14 = v13;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v15 = [v13 personHandle];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 label];
      if (!v17)
      {

LABEL_17:
        OUTLINED_FUNCTION_36_1();
        return;
      }

      v18 = v17;
      sub_222DDB500();
      sub_222DD9F30();
      sub_222D8F710();
      v19 = sub_222DDB760();
      v21 = v20;

      (*v12)(v9, v23);

      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (!v22)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    ++v11;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_222DA38E0(unint64_t a1)
{
  v2 = MEMORY[0x277D84FA0];
  v12 = MEMORY[0x277D84FA0];
  result = sub_222D9EB88(a1);
  if (!result)
  {
LABEL_9:
    v10 = *(v2 + 16);

    return v10 == sub_222D9EB88(a1);
  }

  v4 = result;
  if (result >= 1)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223DCE590](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 personHandle];
      v9 = [v8 label];

      sub_222DA68F0(&v11, v9);
    }

    while (v4 != v5);
    v2 = v12;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_222DA39F4(unint64_t a1)
{
  v2 = sub_222D9EB88(a1);
  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223DCE590](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v8 = v5;
    v7 = sub_222DA3AC4(&v8, a1);

    v3 = v4 + 1;
  }

  while ((v7 & 1) != 0);
}

uint64_t sub_222DA3AC4(id *a1, uint64_t a2)
{
  v3 = [*a1 personHandle];
  v4 = [v3 label];

  sub_222D9E450(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DCE590](0, a2);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  v6 = v5;
  v7 = [v5 personHandle];

  v8 = [v7 label];
  if (v4)
  {
    if (v8)
    {
      v9 = sub_222DDB500();
      v11 = v10;
      v12 = sub_222DDB500();
      v14 = v13;

      if (v9 == v12 && v11 == v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_222DDBAC0();
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (!v8)
    {
      v16 = 1;
      return v16 & 1;
    }

    v16 = 0;
    v4 = v8;
  }

  return v16 & 1;
}

void sub_222DA3C38()
{
  OUTLINED_FUNCTION_38_2();
  v1 = v0;
  v2 = sub_222D9EB88(v0);
  if (v2 == 1)
  {
    v10 = OUTLINED_FUNCTION_42_1();
    sub_222D9E450(v10, v11, v1);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223DCE590](0, v1);
    }

    else
    {
      v12 = *(v1 + 32);
    }

    v13 = v12;
    sub_222DA1104();

    goto LABEL_31;
  }

  if (v2)
  {
    v14 = OUTLINED_FUNCTION_42_1();
    sub_222D9E450(v14, v15, v1);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x223DCE590](0, v1);
    }

    else
    {
      v16 = *(v1 + 32);
    }

    v17 = v16;
    v18 = [v16 personHandle];

    if (!v18)
    {
      goto LABEL_31;
    }

    v19 = [v18 type];

    v20 = sub_222D9EB88(v1);
    if (v20 < 1)
    {
      __break(1u);
    }

    else
    {
      v21 = v20;
      sub_222DA80C4(1, v1);
      v22 = OUTLINED_FUNCTION_49_1();
      sub_222DA80C4(v22, v23);
      if ((v1 & 0xC000000000000001) == 0 || v21 == 1)
      {
      }

      else
      {
        sub_222D9E3E4(0, &qword_27D047BB0, 0x277CD3E90);

        v24 = 1;
        do
        {
          v25 = v24 + 1;
          sub_222DDB840();
          v24 = v25;
        }

        while (v21 != v25);
      }

      if (!(v1 >> 62))
      {
        v26 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
        v27 = 1;
        goto LABEL_22;
      }
    }

    sub_222DDB930();
    v26 = v32;
    v27 = v33;
    v21 = v34 >> 1;
LABEL_22:
    swift_unknownObjectRetain();
    while (1)
    {
      if (v21 == v27)
      {
        goto LABEL_30;
      }

      if (v27 >= v21)
      {
        break;
      }

      v28 = *(v26 + 8 * v27);
      v29 = [v28 personHandle];
      if (!v29)
      {

LABEL_30:
        swift_unknownObjectRelease_n();
        goto LABEL_31;
      }

      v30 = v29;
      ++v27;
      v31 = [v29 type];

      if (v31 != v19)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  if (qword_27D0475B0 != -1)
  {
LABEL_33:
    OUTLINED_FUNCTION_0_4();
  }

  v3 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v3, qword_27D04C928);
  v4 = sub_222DDB3C0();
  v5 = sub_222DDB6C0();
  if (OUTLINED_FUNCTION_34_2(v5))
  {
    OUTLINED_FUNCTION_14_2();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_50_1(v6);
    OUTLINED_FUNCTION_18_2(&dword_222D8A000, v7, v8, "ContactResolutionHelper::getSameHandleTypes - Input array empty");
    OUTLINED_FUNCTION_16_2();
    MEMORY[0x223DCEF40]();
  }

  sub_222D95EDC();
  OUTLINED_FUNCTION_50_0();
  *v9 = 0;
  swift_willThrow();
LABEL_31:
  OUTLINED_FUNCTION_37_2();
}

void sub_222DA3F38()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v4 = sub_222DDA1D0();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v13 = sub_222DDAAA0();
  v14 = OUTLINED_FUNCTION_2(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  if (v3 >> 62)
  {
    if (!OUTLINED_FUNCTION_45_1())
    {
      goto LABEL_8;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  v22 = OUTLINED_FUNCTION_42_1();
  sub_222D9E450(v22, v23, v3);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x223DCE590](0, v3);
  }

  else
  {
    v24 = *(v3 + 32);
  }

  v25 = v24;
  if (sub_222D9EB88(v3) < 2)
  {
  }

  else
  {
    (*(v7 + 16))(v12, v1, v4);
    sub_222DDAA80();
    v26 = [v25 displayName];
    sub_222DDB500();

    v27 = sub_222DDAA90();

    MEMORY[0x28223BE20](v28);
    *&v32[-16] = v27;
    *&v32[-8] = v21;
    sub_222DA0A6C(sub_222DA8220, &v32[-32], v3);

    v29 = *(v16 + 8);
    v30 = OUTLINED_FUNCTION_53_0();
    v31(v30);
  }

LABEL_8:
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DA4190(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (!sub_222DA03A4() && !sub_222DA0448())
  {
    return 0;
  }

  v4 = [v3 displayName];
  sub_222DDB500();

  v5 = sub_222DDAA90();

  v6 = sub_222DA4254(v5, a2);

  return v6 & 1;
}

uint64_t sub_222DA4254(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  v4 = *(result + 16);
  v5 = a2 + 32;
  for (i = (result + 40); ; i += 2)
  {
    if (v2 == v3)
    {
      if (!v4)
      {
        return 1;
      }

      v7 = 0;
      v8 = 0;
      v2 = v3;
      goto LABEL_9;
    }

    if (v2 >= v3)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_27;
    }

    v9 = (v5 + 16 * v2);
    v8 = *v9;
    v7 = v9[1];

    if (!v4)
    {
      if (v7)
      {
        goto LABEL_23;
      }

      return 1;
    }

    ++v2;
LABEL_9:
    v11 = *(i - 1);
    v10 = *i;

    if (!v7)
    {
      if (v10)
      {
LABEL_23:

        return 0;
      }

      return 1;
    }

    if (!v10)
    {
      goto LABEL_23;
    }

    if (v8 == v11 && v7 == v10)
    {
    }

    else
    {
      v13 = sub_222DDBAC0();

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    --v4;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t static ContactResolutionHelper.nullHandleLabelHelper(contacts:)()
{
  v0 = sub_222DDA1D0();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  sub_222DDA910();
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  sub_222DDA460();
  v6 = OUTLINED_FUNCTION_17_2();
  v8 = static ContactResolutionHelper.nullHandleLabelHelper(contacts:locale:)(v6, v7);
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_49_1();
  v11(v10);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v8 & 1;
}

uint64_t static ContactResolutionHelper.nullHandleLabelHelper(contacts:locale:)(char *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_64;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_65:
    v31 = 0;
    v30 = 8;
    goto LABEL_66;
  }

LABEL_3:
  sub_222DA3F38();
  v6 = v5;
  v85 = MEMORY[0x277D84F90];
  sub_222DA54C8(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
LABEL_68:
    OUTLINED_FUNCTION_3_4();
LABEL_13:
    v19 = sub_222DDB3E0();
    __swift_project_value_buffer(v19, qword_27D04C910);
    v20 = sub_222DDB3C0();
    v21 = sub_222DDB6D0();
    a1 = v84;
    if (os_log_type_enabled(v20, v21))
    {
      OUTLINED_FUNCTION_14_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_59_0(&dword_222D8A000, v22, v23, "ContactResolutionHelper::nullHandleLabelHelper - single candidate -> confirmation");
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    v24 = sub_222DDB3C0();
    sub_222DDB6D0();
    v25 = OUTLINED_FUNCTION_7_3();
    if (!os_log_type_enabled(v25, v26))
    {
      v30 = 0;
      v31 = 0;
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_14_2();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_1(v27);
    OUTLINED_FUNCTION_12_2(&dword_222D8A000, v28, v29, "ContactResolutionHelper::nullHandleLabelHelper - Yes/No Clarification: Contact Name");
    v30 = 0;
LABEL_17:
    v31 = 0;
    goto LABEL_47;
  }

  v83 = v6;
  v84 = a1;
  v7 = 0;
  a1 = v85;
  v8 = a2 & 0xC000000000000001;
  do
  {
    if (v8)
    {
      v9 = MEMORY[0x223DCE590](v7, a2);
    }

    else
    {
      v9 = *(a2 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = sub_222DA1054();
    v13 = v12;

    v15 = *(v85 + 16);
    v14 = *(v85 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_222DA54C8((v14 > 1), v15 + 1, 1);
    }

    ++v7;
    *(v85 + 16) = v15 + 1;
    v16 = v85 + 16 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v13;
  }

  while (v4 != v7);

  v18 = sub_222DA4AF8(v17);
  if (v4 == 1)
  {

    if (qword_27D0475A8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

  v32 = sub_222D9EB88(a2);
  v33 = 0;
  do
  {
    if (v32 == v33)
    {

      if (qword_27D0475A8 != -1)
      {
        OUTLINED_FUNCTION_3_4();
      }

      v52 = sub_222DDB3E0();
      __swift_project_value_buffer(v52, qword_27D04C910);
      v24 = sub_222DDB3C0();
      sub_222DDB6B0();
      v53 = OUTLINED_FUNCTION_7_3();
      a1 = v84;
      if (os_log_type_enabled(v53, v54))
      {
        OUTLINED_FUNCTION_14_2();
        v55 = swift_slowAlloc();
        OUTLINED_FUNCTION_19_1(v55);
        v58 = "ContactResolutionHelper::nullHandleLabelHelper - Unnamed unknown handle!";
LABEL_46:
        OUTLINED_FUNCTION_12_2(&dword_222D8A000, v56, v57, v58);
        v31 = 0;
        v30 = 1;
        goto LABEL_47;
      }

LABEL_48:
      v31 = 0;
      v30 = 1;
      goto LABEL_49;
    }

    if (v8)
    {
      v34 = MEMORY[0x223DCE590](v33, a2);
    }

    else
    {
      if (v33 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v34 = *(a2 + 8 * v33 + 32);
    }

    v35 = v34;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v4 = sub_222DDB920();
      if (!v4)
      {
        goto LABEL_65;
      }

      goto LABEL_3;
    }

    sub_222DA0FD4();
    v37 = v36;

    ++v33;
  }

  while ((v37 & 1) != 0);
  v38 = *(v18 + 16);

  v39 = *(v85 + 16);

  if (!((v38 != v39) | v83 & 1))
  {
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4();
    }

    v59 = sub_222DDB3E0();
    __swift_project_value_buffer(v59, qword_27D04C910);
    v60 = sub_222DDB3C0();
    v61 = sub_222DDB6D0();
    a1 = v84;
    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_14_2();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_59_0(&dword_222D8A000, v62, v63, "ContactResolutionHelper::nullHandleLabelHelper - multiple candidates with different contact ids && different names -> contact name disambiguation");
      OUTLINED_FUNCTION_16_2();
      MEMORY[0x223DCEF40]();
    }

    v24 = sub_222DDB3C0();
    sub_222DDB6D0();
    v64 = OUTLINED_FUNCTION_7_3();
    if (os_log_type_enabled(v64, v65))
    {
      OUTLINED_FUNCTION_14_2();
      v66 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_1(v66);
      v58 = "ContactResolutionHelper::nullHandleLabelHelper - Detailed Disambiguation: Contact Names";
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4();
  }

  v40 = sub_222DDB3E0();
  __swift_project_value_buffer(v40, qword_27D04C910);
  v41 = sub_222DDB3C0();
  v42 = sub_222DDB6D0();
  if (os_log_type_enabled(v41, v42))
  {
    OUTLINED_FUNCTION_14_2();
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_222D8A000, v41, v42, "ContactResolutionHelper::nullHandleLabelHelper - multiple candidates with same contactId -> handle disambiguation", v43, 2u);
    OUTLINED_FUNCTION_16_2();
    MEMORY[0x223DCEF40]();
  }

  sub_222DA36F0();
  v45 = v44;
  v46 = sub_222DA38E0(a2);
  if ((v45 & 1) != 0 || (v46 & 1) == 0)
  {
    sub_222DA39F4(a2);
    a1 = v84;
    if (v67)
    {
      v24 = sub_222DDB3C0();
      sub_222DDB6D0();
      v68 = OUTLINED_FUNCTION_7_3();
      if (!os_log_type_enabled(v68, v69))
      {
        v31 = 1;
        v30 = 10;
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_14_2();
      v70 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_1(v70);
      OUTLINED_FUNCTION_12_2(&dword_222D8A000, v71, v72, "ContactResolutionHelper::nullHandleLabelHelper - Detailed Disambiguation: Multiple handles same label");
      v31 = 1;
      v30 = 10;
    }

    else
    {
      v24 = sub_222DDB3C0();
      sub_222DDB6D0();
      v73 = OUTLINED_FUNCTION_7_3();
      v75 = os_log_type_enabled(v73, v74);
      if (v4 < 4)
      {
        if (!v75)
        {
          v31 = 1;
          v30 = 4;
          goto LABEL_49;
        }

        OUTLINED_FUNCTION_14_2();
        v79 = swift_slowAlloc();
        OUTLINED_FUNCTION_19_1(v79);
        OUTLINED_FUNCTION_12_2(&dword_222D8A000, v80, v81, "ContactResolutionHelper::nullHandleLabelHelper - Simple Disambiguation: Mixed Labels");
        v31 = 1;
        v30 = 4;
      }

      else
      {
        if (!v75)
        {
          v31 = 1;
          v30 = 9;
          goto LABEL_49;
        }

        OUTLINED_FUNCTION_14_2();
        v76 = swift_slowAlloc();
        OUTLINED_FUNCTION_19_1(v76);
        OUTLINED_FUNCTION_12_2(&dword_222D8A000, v77, v78, "ContactResolutionHelper::nullHandleLabelHelper - Detailed Disambiguation: Mixed Labels");
        v31 = 1;
        v30 = 9;
      }
    }

LABEL_47:
    OUTLINED_FUNCTION_16_2();
    MEMORY[0x223DCEF40]();
    goto LABEL_49;
  }

  v24 = sub_222DDB3C0();
  sub_222DDB6D0();
  v47 = OUTLINED_FUNCTION_7_3();
  a1 = v84;
  if (os_log_type_enabled(v47, v48))
  {
    v30 = 2;
    OUTLINED_FUNCTION_14_2();
    v49 = swift_slowAlloc();
    OUTLINED_FUNCTION_19_1(v49);
    OUTLINED_FUNCTION_12_2(&dword_222D8A000, v50, v51, "ContactResolutionHelper::nullHandleLabelHelper - Simple Disambiguation: Unique Labels");
    goto LABEL_17;
  }

  v31 = 0;
  v30 = 2;
LABEL_49:

LABEL_66:
  *a1 = v30;
  return v31;
}

uint64_t sub_222DA4AF8(uint64_t a1)
{
  result = MEMORY[0x223DCE3C0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_222DA6AC0(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_222DA4BB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000222DE0D00 == a2;
  if (v3 || (sub_222DDBAC0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x49746361746E6F63 && a2 == 0xEF736C616974696ELL;
    if (v6 || (sub_222DDBAC0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_222DDBAC0();

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

uint64_t sub_222DA4CE0(unsigned __int8 a1)
{
  sub_222DDBB60();
  MEMORY[0x223DCE8B0](a1);
  return sub_222DDBB90();
}

uint64_t sub_222DA4D28(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x49746361746E6F63;
  }

  return 0x6449656C646E7562;
}

uint64_t sub_222DA4D90(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C48, &qword_222DDD788);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222DA8534();
  sub_222DDBBC0();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  OUTLINED_FUNCTION_44_1();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21[14] = 1;
    OUTLINED_FUNCTION_44_1();
    v18 = v3[4];
    v19 = v3[5];
    v21[13] = 2;
    OUTLINED_FUNCTION_44_1();
  }

  return (*(v8 + 8))(v12, v5);
}

void sub_222DA4EEC()
{
  OUTLINED_FUNCTION_38_2();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C58, &qword_222DDD790);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_222DA8534();
  sub_222DDBBB0();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v14 = sub_222DDB9C0();
    v26 = v15;
    v24 = sub_222DDB9C0();
    v25 = v16;
    v17 = sub_222DDB9C0();
    v18 = v12;
    v20 = v19;
    (*(v8 + 8))(v18, v5);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v21 = v26;
    *v4 = v14;
    v4[1] = v21;
    v22 = v25;
    v4[2] = v24;
    v4[3] = v22;
    v4[4] = v17;
    v4[5] = v20;
  }

  OUTLINED_FUNCTION_37_2();
}

uint64_t sub_222DA5114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222DA4BB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222DA515C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222DA4CD8();
  *a1 = result;
  return result;
}

uint64_t sub_222DA5184(uint64_t a1)
{
  v2 = sub_222DA8534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222DA51C0(uint64_t a1)
{
  v2 = sub_222DA8534();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_222DA51FC@<D0>(_OWORD *a1@<X8>)
{
  sub_222DA4EEC();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_222DA5258(uint64_t result)
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
      sub_222D9E3E4(0, &qword_27D047BB0, 0x277CD3E90);
      result = sub_222DDB650();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

char *sub_222DA52C4(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

char *sub_222DA52EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_4(a3, result);
  }

  return result;
}

char *sub_222DA5324(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_2_4(a3, result);
  }

  return result;
}

void sub_222DA5364(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), OUTLINED_FUNCTION_28_2(v8), a1 + *(v9 + 72) * a2 <= a3))
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_41_1();

    MEMORY[0x2821FE828](v11);
  }

  else if (a3 != a1)
  {
    v10 = OUTLINED_FUNCTION_41_1();

    MEMORY[0x2821FE820](v10);
  }
}

uint64_t sub_222DA5438(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_222DDD440;
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

void *sub_222DA54A8(void *a1, int64_t a2, char a3)
{
  result = sub_222DA55D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222DA54C8(char *a1, int64_t a2, char a3)
{
  result = sub_222DA5708(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222DA54E8(char *a1, int64_t a2, char a3)
{
  result = sub_222DA5810(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_222DA5508(char *a1, int64_t a2, char a3)
{
  result = sub_222DA5928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_222DA5528()
{
  v1 = *v0;
  sub_222DA5A30();
  *v0 = v2;
}

void sub_222DA5580()
{
  v1 = *v0;
  sub_222DA5A30();
  *v0 = v2;
}

void *sub_222DA55D8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C30, &unk_222DDD6C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B38, &unk_222DDCAE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222DA5708(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C10, &qword_222DDD6A8);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222DA5810(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BE8, &qword_222DDD680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_222DA5928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BE0, &qword_222DDD678);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_222DA5A30()
{
  OUTLINED_FUNCTION_32_2();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = *(v7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_19:
  v22 = *(v7(0) - 8);
  if (v10)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    sub_222DA5364(v8 + v23, v14, v19 + v23, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DA5BE8(uint64_t *a1, void *a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_222DA82EC(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_222DA5C6C(v8, a2);
  return sub_222DDB8A0();
}

void sub_222DA5C6C(uint64_t *a1, void *a2)
{
  v5 = a1[1];
  v6 = sub_222DDBAA0();
  if (v6 < v5)
  {
    v7 = v6;
    v8 = sub_222DA5258(v5 / 2);
    v10[0] = v9;
    v10[1] = (v5 / 2);
    sub_222DA5E68(v10, v11, a1, v7, a2);
    if (v2)
    {
      if (v5 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v5 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_222DA5D60(0, v5, 1, a1, a2);
  }
}

void sub_222DA5D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, id a5)
{
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
    while (2)
    {
      v21 = a3;
      v9 = *(v6 + 8 * a3);
      v19 = v8;
      v20 = v7;
      do
      {
        v10 = *v7;
        v11 = v9;
        v12 = v10;
        v13 = [v11 searchProvider];
        v14 = [v12 searchProvider];

        if (v13 != a5)
        {
          if (v14 == a5)
          {
            break;
          }

          if (v13 == 1 && v14 == 3)
          {
            break;
          }
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v16 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v16;
        v7 -= 8;
      }

      while (!__CFADD__(v8++, 1));
      a3 = v21 + 1;
      v7 = v20 + 8;
      v8 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_222DA5E68(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, id a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    i = MEMORY[0x277D84F90];
LABEL_114:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_155;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_116:
      v113 = i;
      v93 = (i + 16);
      for (i = *(i + 16); i >= 2; *v93 = i)
      {
        if (!*a3)
        {
          goto LABEL_152;
        }

        v94 = (v113 + 16 * i);
        v95 = *v94;
        v96 = &v93[2 * i];
        v97 = v96[1];
        sub_222DA6538((*a3 + 8 * *v94), (*a3 + 8 * *v96), (*a3 + 8 * v97), v8, a5);
        if (v114)
        {
          break;
        }

        if (v97 < v95)
        {
          goto LABEL_140;
        }

        if (i - 2 >= *v93)
        {
          goto LABEL_141;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v93 - i;
        if (*v93 < i)
        {
          goto LABEL_142;
        }

        v114 = 0;
        i = *v93 - 1;
        memmove(v96, v96 + 2, 16 * v98);
      }

LABEL_124:

      return;
    }

LABEL_149:
    i = sub_222DA67DC(i);
    goto LABEL_116;
  }

  v6 = 0;
  i = MEMORY[0x277D84F90];
  while (2)
  {
    v8 = v6;
    v9 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_40;
    }

    v110 = i;
    v10 = *a3;
    v11 = *(*a3 + 8 * v6);
    v106 = v5;
    v12 = *(*a3 + 8 * v9);
    v13 = v11;
    i = &off_2784BF000;
    v14 = [v12 searchProvider];
    v15 = [v13 searchProvider];

    v17 = v14 != 1 || v15 != 3;
    if (v15 == a5)
    {
      v17 = 0;
    }

    if (v14 == a5)
    {
      v17 = 1;
    }

    v104 = v17;
    v18 = v106;
    v101 = v8;
    v19 = 8 * v8;
    v20 = (v10 + 8 * v8 + 16);
    v99 = v19;
    for (j = v19 + 8; ; j += 8)
    {
      v22 = v9++;
      if (v9 >= v18)
      {
        break;
      }

      v23 = *(v20 - 1);
      v24 = *v20;
      v25 = v23;
      i = &off_2784BF000;
      v26 = [v24 searchProvider];
      v27 = [v25 searchProvider];

      if (v26 == a5)
      {
        if (v27 != a5)
        {
          v18 = v106;
          goto LABEL_25;
        }
      }

      else if (v27 == a5)
      {
        v18 = v106;
LABEL_27:
        if (v104)
        {
          goto LABEL_30;
        }

        goto LABEL_28;
      }

      v28 = v26 == 1 && v27 == 3;
      v18 = v106;
      if (v28)
      {
        goto LABEL_27;
      }

LABEL_25:
      if (!v104)
      {
        v9 = v22 + 1;
LABEL_39:
        i = v110;
        v8 = v101;
        goto LABEL_40;
      }

LABEL_28:
      ++v20;
    }

    if (!v104)
    {
      goto LABEL_39;
    }

LABEL_30:
    v9 = v22 + 1;
    v8 = v101;
    if (v22 + 1 < v101)
    {
      goto LABEL_146;
    }

    if (v101 >= v9)
    {
      i = v110;
    }

    else
    {
      v29 = v101;
      i = v110;
      v30 = v99;
      do
      {
        if (v29 != v22)
        {
          v31 = *a3;
          if (!*a3)
          {
            goto LABEL_153;
          }

          v32 = *(v31 + v30);
          *(v31 + v30) = *(v31 + j);
          *(v31 + j) = v32;
        }

        v29 = (v29 + 1);
        j -= 8;
        v30 += 8;
      }

      while (v29 < v22--);
    }

LABEL_40:
    v34 = a3[1];
    if (v9 >= v34)
    {
      goto LABEL_61;
    }

    if (__OFSUB__(v9, v8))
    {
      goto LABEL_145;
    }

    if (v9 - v8 >= a4)
    {
LABEL_61:
      if (v9 < v8)
      {
        goto LABEL_144;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = *(i + 16);
        sub_222DD7500();
        i = v91;
      }

      v50 = *(i + 16);
      v51 = v50 + 1;
      if (v50 >= *(i + 24) >> 1)
      {
        sub_222DD7500();
        i = v92;
      }

      *(i + 16) = v51;
      v52 = i + 32;
      v53 = (i + 32 + 16 * v50);
      *v53 = v8;
      v53[1] = v9;
      v108 = v9;
      v54 = *a1;
      if (!*a1)
      {
        goto LABEL_154;
      }

      if (!v50)
      {
LABEL_111:
        v6 = v108;
        v5 = a3[1];
        if (v108 >= v5)
        {
          goto LABEL_114;
        }

        continue;
      }

      v112 = i;
      while (1)
      {
        v55 = v51 - 1;
        v56 = (v52 + 16 * (v51 - 1));
        v57 = (i + 16 * v51);
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(i + 32);
          v59 = *(i + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_82:
          if (v61)
          {
            goto LABEL_131;
          }

          v73 = *v57;
          v72 = v57[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_134;
          }

          v77 = v56[1];
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_137;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_139;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v51 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v51 < 2)
        {
          goto LABEL_133;
        }

        v80 = *v57;
        v79 = v57[1];
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_97:
        if (v76)
        {
          goto LABEL_136;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_138;
        }

        if (v83 < v75)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v55 - 1 >= v51)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*a3)
        {
          goto LABEL_151;
        }

        v87 = (v52 + 16 * (v55 - 1));
        i = *v87;
        v88 = (v52 + 16 * v55);
        v89 = v88[1];
        sub_222DA6538((*a3 + 8 * *v87), (*a3 + 8 * *v88), (*a3 + 8 * v89), v54, a5);
        if (v114)
        {
          goto LABEL_124;
        }

        if (v89 < i)
        {
          goto LABEL_126;
        }

        v8 = *(v112 + 16);
        if (v55 > v8)
        {
          goto LABEL_127;
        }

        *v87 = i;
        v87[1] = v89;
        if (v55 >= v8)
        {
          goto LABEL_128;
        }

        v114 = 0;
        v51 = v8 - 1;
        memmove((v52 + 16 * v55), v88 + 2, 16 * (v8 - 1 - v55));
        i = v112;
        *(v112 + 16) = v8 - 1;
        if (v8 <= 2)
        {
          goto LABEL_111;
        }
      }

      v62 = v52 + 16 * v51;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_129;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_130;
      }

      v69 = v57[1];
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_132;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_135;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_143;
        }

        if (v60 < v86)
        {
          v55 = v51 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

    break;
  }

  v35 = (v8 + a4);
  if (__OFADD__(v8, a4))
  {
    goto LABEL_147;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v8)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v9 == v35)
  {
    goto LABEL_61;
  }

  v111 = i;
  v36 = *a3;
  v37 = *a3 + 8 * v9 - 8;
  v102 = v8;
  v38 = (v8 - v9);
  v105 = v35;
LABEL_49:
  v107 = v9;
  v39 = *(v36 + 8 * v9);
  v40 = v38;
  v41 = v37;
  while (1)
  {
    v42 = *v41;
    v43 = v39;
    v44 = v42;
    v45 = [v43 searchProvider];
    v46 = [v44 searchProvider];

    if (v45 != a5)
    {
      if (v46 == a5 || (v45 == 1 ? (v47 = v46 == 3) : (v47 = 0), v47))
      {
LABEL_59:
        v9 = v107 + 1;
        v37 += 8;
        --v38;
        if ((v107 + 1) == v105)
        {
          v9 = v105;
          i = v111;
          v8 = v102;
          goto LABEL_61;
        }

        goto LABEL_49;
      }
    }

    if (!v36)
    {
      break;
    }

    v48 = *v41;
    v39 = *(v41 + 8);
    *v41 = v39;
    *(v41 + 8) = v48;
    v41 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_222DA6538(void **__src, id *__dst, void **a3, void **a4, id a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = a3 - __dst;
  if (v9 < v10)
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    for (i = &v5[v9]; ; i = v14)
    {
      if (v5 >= i || v7 >= v6)
      {
        v24 = v8;
        goto LABEL_50;
      }

      v14 = i;
      v15 = v6;
      v16 = *v5;
      v17 = *v7;
      v18 = v16;
      v19 = [v17 searchProvider];
      v20 = [v18 searchProvider];

      if (v19 == a5)
      {
        break;
      }

      if (v20 != a5)
      {
        v22 = v19 == 1 && v20 == 3;
        if (!v22)
        {
          break;
        }
      }

      v21 = v5;
      v22 = v8 == v5++;
      if (!v22)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v8;
      v6 = v15;
    }

    v21 = v7;
    v22 = v8 == v7++;
    if (v22)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v8 = *v21;
    goto LABEL_15;
  }

  if (a4 != __dst || &__dst[v10] <= a4)
  {
    memmove(a4, __dst, 8 * v10);
  }

  i = &v5[v10];
  v40 = v8;
LABEL_31:
  v24 = v7;
  v41 = v7 - 1;
  v25 = v6 - 1;
  while (i > v5 && v24 > v8)
  {
    v27 = v25;
    v28 = v5;
    v29 = i;
    v30 = i - 1;
    v31 = *v41;
    v32 = *(i - 1);
    v33 = v31;
    v34 = [v32 searchProvider];
    v35 = [v33 searchProvider];

    if (v34 == a5 || v35 != a5 && (v34 == 1 ? (v36 = v35 == 3) : (v36 = 0), !v36))
    {
      v6 = v27;
      v22 = v27 + 1 == v24;
      v5 = v28;
      i = v29;
      v8 = v40;
      v7 = v41;
      if (!v22)
      {
        *v6 = *v41;
      }

      goto LABEL_31;
    }

    if (v29 != v27 + 1)
    {
      *v27 = *v30;
    }

    v25 = v27 - 1;
    i = v30;
    v5 = v28;
    v8 = v40;
  }

LABEL_50:
  v37 = i - v5;
  if (v24 != v5 || v24 >= &v5[v37])
  {
    memmove(v24, v5, 8 * v37);
  }

  return 1;
}

char *sub_222DA67F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C28, &qword_222DDD6B8);
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

uint64_t sub_222DA68F0(void *a1, void *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_222DDBB60();
  sub_222DDBB80();
  if (a2)
  {
    sub_222DDB500();
    sub_222DDB560();
  }

  v7 = sub_222DDBB90();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_15:
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    v19 = a2;
    sub_222DA70A8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v23;
    *a1 = a2;
    return 1;
  }

  v10 = ~v8;
  while (1)
  {
    if (!*(*(v5 + 48) + 8 * v9))
    {
      if (!a2)
      {
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    if (!a2)
    {
      goto LABEL_14;
    }

    v11 = sub_222DDB500();
    v13 = v12;
    if (v11 == sub_222DDB500() && v13 == v14)
    {
      break;
    }

    v16 = sub_222DDBAC0();

    if (v16)
    {

      goto LABEL_17;
    }

LABEL_14:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_17:
  v21 = *(*(v5 + 48) + 8 * v9);
  *a1 = v21;
  v22 = v21;
  return 0;
}

BOOL sub_222DA6AC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_222DDBB60();
  sub_222DDB560();
  v9 = sub_222DDBB90();
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
    if (v14 || (sub_222DDBAC0() & 1) != 0)
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

  sub_222DA72B8(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

unint64_t sub_222DA6C0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BF8, &qword_222DDD690);
  result = sub_222DDB800();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v3 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_222DA6FCC(*(*(v3 + 48) + 8 * (v13 | (v7 << 6))), v6))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      ;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_13;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      sub_222DA5438(0, (v16 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_222DA6D70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C08, &qword_222DDD6A0);
  result = sub_222DDB800();
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
      sub_222DA5438(0, (v30 + 63) >> 6, v3 + 56);
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
    sub_222DDBB60();
    sub_222DDB560();
    result = sub_222DDBB90();
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

unint64_t sub_222DA6FCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_222DDBB60();
  sub_222DDBB80();
  if (a1)
  {
    sub_222DDB500();
    sub_222DDB560();
  }

  sub_222DDBB90();
  v5 = -1 << *(a2 + 32);
  result = sub_222DDB7B0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_222DA70A8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_222DA6C0C(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_222DA7420();
        goto LABEL_22;
      }

      sub_222DA76C8(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_222DDBB60();
    sub_222DDBB80();
    if (v5)
    {
      sub_222DDB500();
      sub_222DDB560();
    }

    result = sub_222DDBB90();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        result = *(*(v8 + 48) + 8 * a2);
        if (result)
        {
          if (v5)
          {
            v12 = sub_222DDB500();
            v14 = v13;
            if (v12 == sub_222DDB500() && v14 == v15)
            {
              goto LABEL_25;
            }

            v17 = sub_222DDBAC0();

            if (v17)
            {
              goto LABEL_26;
            }
          }
        }

        else if (!v5)
        {
          goto LABEL_26;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_22:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_25:

LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BF0, &qword_222DDD688);
    result = sub_222DDBAE0();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

uint64_t sub_222DA72B8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_222DA6D70(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_222DA77F8(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_222DDBB60();
      sub_222DDB560();
      result = sub_222DDBB90();
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
        if (v19 || (sub_222DDBAC0() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_222DA7570();
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
    result = sub_222DDBAE0();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

id sub_222DA7420()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BF8, &qword_222DDD690);
  v2 = *v0;
  v3 = sub_222DDB7F0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_222DA7570()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C08, &qword_222DDD6A0);
  v2 = *v0;
  v3 = sub_222DDB7F0();
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

unint64_t sub_222DA76C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BF8, &qword_222DDD690);
  result = sub_222DDB800();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_222DA6FCC(v15, v6))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_13:
      v15 = *(*(v3 + 48) + 8 * (v12 | (v7 << 6)));
      v16 = v15;
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_15;
      }

      v14 = *(v3 + 56 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_222DA77F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C08, &qword_222DDD6A0);
  result = sub_222DDB800();
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
        sub_222DDBB60();

        sub_222DDB560();
        result = sub_222DDBB90();
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

void sub_222DA7A2C(uint64_t a1, void *a2)
{
  v3 = sub_222DDB440();

  [a2 setUserData_];
}

uint64_t sub_222DA7AAC(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_222DDB500();

  return v3;
}

uint64_t sub_222DA7B1C(void *a1)
{
  v2 = [a1 _imageData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_222DDA130();

  return v3;
}

uint64_t sub_222DA7B8C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_222DDB500();

  return v4;
}

uint64_t sub_222DA7BEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_222DDB920();
    if (v4)
    {
      v5 = v4;
      v2 = sub_222DD7A44(v4, 0);
      sub_222DA7C80((v2 + 4), v5, a1);
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

uint64_t sub_222DA7C80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_222DDB920();
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
    result = sub_222D9EB88(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_222D9E3E4(0, &qword_27D047BB0, 0x277CD3E90);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_222DA8240();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C18, &qword_222DDD6B0);
          v9 = sub_222DA7DF4(v12, i, a3);
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

void (*sub_222DA7DF4(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_222DA549C(a3);
  sub_222D9E450(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_41_1();
    v7 = MEMORY[0x223DCE590](v9);
  }

  *a1 = v7;
  return sub_222DA7E7C;
}

uint64_t sub_222DA7E84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 0:
    case 1:
    case 2:
    case 4:
      goto LABEL_3;
    case 3:

LABEL_3:

      break;
    default:
      return result;
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_222DA7F24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_222DA7F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactResolutionHelper(unsigned int *a1, int a2)
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

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ContactResolutionHelper(_BYTE *result, int a2, int a3)
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

uint64_t sub_222DA80C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_222DDB920();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_222DA811C()
{
  sub_222DDB500();
  OUTLINED_FUNCTION_55_0();
  if (v1 == sub_222DDB500() && v0 == v2)
  {
    v4 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_17_2();
    v4 = sub_222DDBAC0();
  }

  return v4 & 1;
}

uint64_t sub_222DA8198()
{
  sub_222DDB500();
  sub_222DDB560();
}

uint64_t sub_222DA81EC(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return sub_222DD9F50() & 1;
}

unint64_t sub_222DA8240()
{
  result = qword_27D047C20;
  if (!qword_27D047C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D047C18, &qword_222DDD6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C20);
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

uint64_t sub_222DA8300(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_28_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_222DA835C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_28_2(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

unint64_t sub_222DA83C0()
{
  result = qword_27D047C38;
  if (!qword_27D047C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C38);
  }

  return result;
}

uint64_t sub_222DA8414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B28, "|M");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_222DA8498(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_222DA84D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222DA8534()
{
  result = qword_27D047C50;
  if (!qword_27D047C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriInferenceFlowsViewDataModels.ViewData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222DA8678()
{
  result = qword_27D047C60;
  if (!qword_27D047C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C60);
  }

  return result;
}

unint64_t sub_222DA86D0()
{
  result = qword_27D047C68;
  if (!qword_27D047C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C68);
  }

  return result;
}

unint64_t sub_222DA8728()
{
  result = qword_27D047C70;
  if (!qword_27D047C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047C70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_4()
{
  v2 = *(v0 + 16) + 1;

  sub_222DD7444();
}

void OUTLINED_FUNCTION_9_2()
{

  sub_222DD7444();
}

void OUTLINED_FUNCTION_12_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

void OUTLINED_FUNCTION_13_2()
{

  sub_222DD7444();
}

void OUTLINED_FUNCTION_18_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_22_2()
{

  return sub_222DA8300(v2, v0, v1);
}

__n128 OUTLINED_FUNCTION_23_2@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = *(a2 - 256);
  a1[1] = result;
  a1[2].n128_u64[0] = 0x7865646E69;
  a1[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_2()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_30_2()
{
  result = v0;
  v3 = *(v1 - 336);
  v4 = *(v1 - 352);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_2()
{
}

BOOL OUTLINED_FUNCTION_34_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_44_1()
{

  return sub_222DDBA50();
}

uint64_t OUTLINED_FUNCTION_45_1()
{

  return sub_222DDB920();
}

void OUTLINED_FUNCTION_59_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_60_0()
{
}

uint64_t sub_222DA8C4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CA8, &qword_222DDDD40);
    v2 = sub_222DDB940();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_222D8FDAC(*(a1 + 56) + 32 * v11, v36);
    *&v35 = v14;
    *(&v35 + 1) = v13;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_222D93798(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_222D93798(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_222D93798(v32, v33);
    v15 = *(v2 + 40);
    result = sub_222DDB7C0();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v2 + 48) + 40 * v19;
    *v24 = v25;
    *(v24 + 16) = v26;
    *(v24 + 32) = v27;
    result = sub_222D93798(v33, (*(v2 + 56) + 32 * v19));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t ContactResolutionSnippetGenerator.__allocating_init(appBundleId:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_52_0();
  v6 = swift_allocObject();
  ContactResolutionSnippetGenerator.init(appBundleId:globals:)(a1, a2, a3);
  return v6;
}

void *ContactResolutionSnippetGenerator.init(appBundleId:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_222DDA910();
  sub_222D97C84(&v5, (v3 + 5));
  return v3;
}

void *ContactResolutionSnippetGenerator.__allocating_init(appBundleId:globals:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  OUTLINED_FUNCTION_52_0();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_222D97C84(a4, (v8 + 5));
  return v8;
}

void *ContactResolutionSnippetGenerator.init(appBundleId:globals:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_222D97C84(a4, (v4 + 5));
  return v4;
}

uint64_t ContactResolutionSnippetGenerator.generateSimpleDisambiguationUniqueLabels(contacts:directInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v1[35] = *v0;
  v7 = sub_222DDA560();
  v1[36] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[37] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_68_0(v11);
  v1[39] = v12;
  OUTLINED_FUNCTION_10_1(v12);
  v1[40] = v13;
  v15 = *(v14 + 64);
  v1[41] = OUTLINED_FUNCTION_48_0();
  v16 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_222DA9284()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *(v4 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v8 = v7;
  *(v9 + 352) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222DA9398()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DB13EC;

  return sub_222DA9460();
}

uint64_t sub_222DA9460()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_40_2(v1, v2, v3, v4);
  v5 = sub_222DDA770();
  v0[27] = v5;
  OUTLINED_FUNCTION_10_1(v5);
  v0[28] = v6;
  v8 = *(v7 + 64);
  v0[29] = OUTLINED_FUNCTION_48_0();
  v9 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222DA9500()
{
  OUTLINED_FUNCTION_14_1();
  if (sub_222DA8780(v0[23]))
  {
    v1 = v0[23];
    sub_222D9E144();
    v2 = swift_task_alloc();
    v0[30] = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_42_2(v2);

    return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v3);
  }

  else
  {
    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v5 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v5, qword_27D04C940);
    v6 = sub_222DDB3C0();
    v7 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_25_1(v7))
    {
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v8);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v9, v10, "contacts array is empty: contacts array cannot be empty");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    v11 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_38_1(v11, v12);
    v13 = v0[29];

    OUTLINED_FUNCTION_29_1();

    return v14();
  }
}

uint64_t sub_222DA965C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  v4 = *(v3 + 240);
  *v2 = *v0;
  *(v1 + 248) = v5;

  v6 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_222DA9744()
{
  v25 = v1;
  v2 = v1[31];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[24];
  v7 = v4[3];
  v6 = v4[4];
  v8 = v4[2];
  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
  OUTLINED_FUNCTION_71_0();
  v9 = v1[23];
  sub_222DA3C38();
  v10 = v1[29];
  v11 = v1[26];
  v22 = v1[27];
  v23 = v1[28];
  v20 = v1[24];
  v21 = v1[25];
  OUTLINED_FUNCTION_64_0();
  v12 = *(v11 + 72);
  __swift_project_boxed_opaque_existential_1(v4 + 5, *(v11 + 64));

  sub_222DDA760();
  OUTLINED_FUNCTION_54_1();
  v19 = *(v23 + 8);
  v19(v10, v22);
  v13 = OUTLINED_FUNCTION_78();

  v14 = *(v11 + 72);
  OUTLINED_FUNCTION_74(v4 + 5, *(v11 + 64));
  LOBYTE(v2) = OUTLINED_FUNCTION_54_1();
  v19(v10, v22);
  sub_222DAE0B4(v0, (v2 & 1) == 0, v20, v21, __src);
  v16 = v1[29];
  v17 = v1[22];

  memcpy(v1 + 2, __src, 0x80uLL);
  OUTLINED_FUNCTION_41_2();
  *(v17 + 153) = 1;
  *(v17 + 160) = v13;

  OUTLINED_FUNCTION_13_3();

  return v18();
}

uint64_t sub_222DA9918()
{
  OUTLINED_FUNCTION_12_1();
  v1[155] = v0;
  v1[154] = v2;
  v1[153] = v3;
  v1[152] = v4;
  v1[151] = v5;
  v1[150] = v6;
  v1[149] = v7;
  v8 = sub_222DDA800();
  v1[156] = v8;
  OUTLINED_FUNCTION_10_1(v8);
  v1[157] = v9;
  v11 = *(v10 + 64);
  v1[158] = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_222DA99D4()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[153];
  (*(v0[157] + 16))(v0[158], v0[150], v0[156]);
  v7 = (v1 + *v1);
  v2 = v1[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_23_3();
  v0[159] = v3;
  *v3 = v4;
  v3[1] = sub_222DA9AE0;
  v5 = v0[154];

  return v7(v0 + 10);
}

uint64_t sub_222DA9AE0()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v5 = *(v4 + 1272);
  v6 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v7 = v6;
  *(v8 + 1280) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222DA9BD8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 1216);
  memcpy((v0 + 248), (v0 + 80), 0xA8uLL);
  if (v1)
  {
    *(v0 + 1328) = v1;
    *(v0 + 401);
    v4 = *(v0 + 1264);
    v5 = v1;
    sub_222DDA7F0();
    memcpy((v0 + 584), (v0 + 248), 0xA8uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_3();
    *(v0 + 1336) = v6;
    *v6 = v7;
    OUTLINED_FUNCTION_27_3(v6);
    OUTLINED_FUNCTION_31_1();

    return sub_222DAE984();
  }

  else
  {
    v2 = *(v0 + 1240);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v0 + 1288) = [objc_opt_self() bundleForClass_];
    *(v0 + 401);
    v10 = *(v0 + 1208);
    objc_opt_self();
    *(v0 + 1296) = sub_222DDB4C0();

    sub_222DA8C4C(*(v0 + 408));
    *(v0 + 1304) = sub_222DDB440();

    sub_222DDB160();
    *(v0 + 1312) = sub_222DDB440();

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1184;
    *(v0 + 24) = sub_222DAA03C;
    v11 = swift_continuation_init();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C88, &qword_222DDDD18);
    *(v0 + 1136) = v12;
    *(v0 + 1112) = v11;
    *(v0 + 1080) = MEMORY[0x277D85DD0];
    *(v0 + 1088) = 1107296256;
    *(v0 + 1096) = sub_222DB13F8;
    *(v0 + 1104) = &block_descriptor_67;
    OUTLINED_FUNCTION_61_1(v12, sel_execute_catId_parameters_globals_completion_);
    OUTLINED_FUNCTION_31_1();

    return MEMORY[0x282200938]();
  }
}

uint64_t sub_222DAA03C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1320) = *(v3 + 48);
  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_222DAA138()
{
  OUTLINED_FUNCTION_34_3();
  v1 = *(v0 + 1312);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 1288);
  v5 = *(v0 + 1184);

  *(v0 + 1328) = v5;
  *(v0 + 401);
  v6 = *(v0 + 1264);
  v7 = *(v0 + 1216);
  sub_222DDA7F0();
  memcpy((v0 + 584), (v0 + 248), 0xA8uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_3();
  *(v0 + 1336) = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_27_3(v8);

  return sub_222DAE984();
}

uint64_t sub_222DAA304()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  v3 = v2;
  OUTLINED_FUNCTION_19_3();
  *v4 = v3;
  v6 = *(v5 + 1336);
  v7 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v8 = v7;
  *(v3 + 1344) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222DAA410()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  v1 = v0[166];
  v2 = v0[149];
  memcpy(v0 + 94, v0 + 52, 0xA8uLL);
  v3 = sub_222DDA690();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v0[169] = sub_222DDA680();
  v0[146] = &type metadata for ContactDisambiguationSnippetPluginModel;
  v0[147] = sub_222DB1010();
  v6 = swift_allocObject();
  v0[143] = v6;
  memcpy((v6 + 16), v0 + 94, 0x99uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v7 = swift_allocObject();
  v0[170] = v7;
  *(v7 + 16) = xmmword_222DDD2F0;
  *(v7 + 32) = v1;
  sub_222DB11CC((v0 + 94), (v0 + 115));
  v8 = *(MEMORY[0x277D5BD38] + 4);
  v22 = *MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38];
  v9 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_3();
  v0[171] = v10;
  *v10 = v11;
  v10[1] = sub_222DAA588;
  v12 = v0[158];
  OUTLINED_FUNCTION_81();

  return v17(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_222DAA588()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_24_3();
  v2 = v1;
  OUTLINED_FUNCTION_19_3();
  *v3 = v2;
  v5 = v4[171];
  v6 = v4[170];
  v7 = v4[169];
  v8 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v9 = v8;

  __swift_destroy_boxed_opaque_existential_0((v2 + 1144));
  v10 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222DAA6B0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  v1 = v0[166];
  v2 = v0[158];
  v3 = v0[157];
  v4 = v0[156];
  v5 = v0[149];
  sub_222DB0FBC((v0 + 31));
  (*(v3 + 8))(v2, v4);
  memcpy(v5, v0 + 94, 0xA8uLL);
  v5[21] = v1;

  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_81();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_222DAA758()
{
  OUTLINED_FUNCTION_12_1();
  (*(v0[157] + 8))(v0[158], v0[156]);
  v1 = v0[160];
  v2 = v0[158];

  OUTLINED_FUNCTION_29_1();

  return v3();
}

uint64_t sub_222DAA7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  v13 = v12[165];
  v14 = v12[164];
  v15 = v12[163];
  v16 = v12[162];
  v17 = v12[161];
  v18 = v12[158];
  v19 = v12[157];
  v20 = v12[156];
  swift_willThrow();
  sub_222DB0FBC((v12 + 31));
  (*(v19 + 8))(v18, v20);

  v21 = v12[165];
  v22 = v12[158];

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_43_2();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_222DAA888()
{
  OUTLINED_FUNCTION_14_1();
  v1 = *(v0 + 1264);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1248);

  (*(v2 + 8))(v1, v3);
  sub_222DB0FBC(v0 + 248);
  v4 = *(v0 + 1344);
  v5 = *(v0 + 1264);

  OUTLINED_FUNCTION_29_1();

  return v6();
}

uint64_t ContactResolutionSnippetGenerator.generateSimpleDisambiguationMixedLabels(contacts:directInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v1[35] = *v0;
  v7 = sub_222DDA560();
  v1[36] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[37] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_68_0(v11);
  v1[39] = v12;
  OUTLINED_FUNCTION_10_1(v12);
  v1[40] = v13;
  v15 = *(v14 + 64);
  v1[41] = OUTLINED_FUNCTION_48_0();
  v16 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_222DAAB7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DB13EC;

  return sub_222DAAC44();
}

uint64_t sub_222DAAC44()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_40_2(v1, v2, v3, v4);
  v5 = sub_222DDA770();
  v0[27] = v5;
  OUTLINED_FUNCTION_10_1(v5);
  v0[28] = v6;
  v8 = *(v7 + 64);
  v0[29] = OUTLINED_FUNCTION_48_0();
  v9 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222DAACE4()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0[26];
  sub_222D9FBA4();
  v0[30] = 0;
  if (sub_222DA8780(v0[23]))
  {
    v5 = v0[23];
    sub_222D9E144();
    v6 = swift_task_alloc();
    v0[31] = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_42_2(v6);

    return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v7);
  }

  else
  {
    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v8 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v8, qword_27D04C940);
    v9 = sub_222DDB3C0();
    v10 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_25_1(v10))
    {
      v11 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v11);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v12, v13, "contacts array is empty: contacts array cannot be empty");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    v14 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_38_1(v14, v15);
    v2 = v0[29];

    OUTLINED_FUNCTION_29_1();

    return v3();
  }
}

uint64_t sub_222DAAE60()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  v4 = *(v3 + 248);
  *v2 = *v0;
  *(v1 + 256) = v5;

  v6 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t ContactResolutionSnippetGenerator.generateDetailedDisambiguationContactNames(contacts:directInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v1[35] = *v0;
  v7 = sub_222DDA560();
  v1[36] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[37] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_68_0(v11);
  v1[39] = v12;
  OUTLINED_FUNCTION_10_1(v12);
  v1[40] = v13;
  v15 = *(v14 + 64);
  v1[41] = OUTLINED_FUNCTION_48_0();
  v16 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_222DAB334()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v5 = *(v4 + 344);
  v6 = *(v4 + 336);
  v7 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v8 = v7;
  *(v9 + 352) = v0;

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222DAB448()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0[38];
  v2 = v0[29];
  (*(v0[40] + 8))(v0[41], v0[39]);
  sub_222D93674((v0 + 24), v2);
  sub_222DB0380((v0 + 2));

  OUTLINED_FUNCTION_13_3();

  return v3();
}

uint64_t sub_222DAB4E4()
{
  OUTLINED_FUNCTION_12_1();
  v1 = v0[38];
  (*(v0[40] + 8))(v0[41], v0[39]);

  OUTLINED_FUNCTION_29_1();
  v3 = v0[44];

  return v2();
}

uint64_t sub_222DAB564()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DAB62C;

  return sub_222DAB70C();
}

uint64_t sub_222DAB62C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v4 = v3;

  OUTLINED_FUNCTION_29_1();

  return v5();
}

uint64_t sub_222DAB70C()
{
  OUTLINED_FUNCTION_12_1();
  v5 = OUTLINED_FUNCTION_40_2(v1, v2, v3, v4);
  v6 = type metadata accessor for ContactResolutionDisambiguationParameters(v5);
  *(v0 + 216) = v6;
  v7 = *(*(v6 - 8) + 64);
  *(v0 + 224) = OUTLINED_FUNCTION_48_0();
  v8 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_222DAB788()
{
  OUTLINED_FUNCTION_14_1();
  if (sub_222DA8780(*(v0 + 184)))
  {
    v1 = *(v0 + 184);
    sub_222D9E144();
    sub_222D9F3E0();
    *(v0 + 169) = v2 & 1;
    v3 = swift_task_alloc();
    *(v0 + 232) = v3;
    *v3 = v0;
    v4 = OUTLINED_FUNCTION_42_2(v3);

    return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v4);
  }

  else
  {
    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v6 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v6, qword_27D04C940);
    v7 = sub_222DDB3C0();
    v8 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_25_1(v8))
    {
      v9 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v9);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v10, v11, "contacts array is empty: contacts array cannot be empty");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    v12 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_38_1(v12, v13);
    v14 = *(v0 + 224);

    OUTLINED_FUNCTION_29_1();

    return v15();
  }
}

uint64_t sub_222DAB8F8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  v4 = *(v3 + 232);
  *v2 = *v0;
  *(v1 + 240) = v5;

  v6 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_222DAB9E0()
{
  v24 = v1;
  v2 = *(v1 + 240);
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  OUTLINED_FUNCTION_21_3(*(v1 + 208));
  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
  OUTLINED_FUNCTION_71_0();
  v5 = *(v1 + 169);
  v7 = *(v1 + 216);
  v6 = *(v1 + 224);
  v8 = sub_222D9FAB0(v0);
  v9 = v7[5];
  v10 = sub_222DDA830();
  __swift_storeEnumTagSinglePayload(v6 + v9, 1, 1, v10);
  *v6 = v0;
  *(v6 + v7[6]) = v5;
  *(v6 + v7[7]) = v8 & 1;

  v11 = sub_222D945EC();
  v13 = *(v1 + 192);
  v12 = *(v1 + 200);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15._countAndFlagsBits = v13;
  v15._object = v12;
  ContactDisambiguationModel.init(contacts:prompt:contactSelectionDirectInvocationID:)(&v23, v0, v14, v15);
  if (v16)
  {
    sub_222DB0F58(*(v1 + 224));

    v17 = *(v1 + 224);

    OUTLINED_FUNCTION_29_1();
  }

  else
  {
    v20 = *(v1 + 176);
    sub_222DB0F58(*(v1 + 224));
    v21 = *&v23.prompt._object;
    *(v1 + 16) = *&v23.contacts._rawValue;
    *(v1 + 32) = v21;
    v22 = *&v23.contactSelectionDirectInvocationKey.value._object;
    *(v1 + 48) = *&v23.contactSelectionDirectInvocationID._object;
    *(v1 + 64) = v22;
    sub_222DB0FB4(v1 + 16);
    memcpy(v20, (v1 + 16), 0x99uLL);
    *(v20 + 153) = 0;
    *(v20 + 160) = v11;

    OUTLINED_FUNCTION_13_3();
  }

  return v18();
}

uint64_t ContactResolutionSnippetGenerator.generateDetailedDisambiguationForMultipleHandlesWithSameLabel(contacts:directInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v1[35] = *v0;
  v7 = sub_222DDA560();
  v1[36] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[37] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_68_0(v11);
  v1[39] = v12;
  OUTLINED_FUNCTION_10_1(v12);
  v1[40] = v13;
  v15 = *(v14 + 64);
  v1[41] = OUTLINED_FUNCTION_48_0();
  v16 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_222DABDD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DB13EC;

  return sub_222DABE98();
}

uint64_t sub_222DABE98()
{
  OUTLINED_FUNCTION_12_1();
  v5 = OUTLINED_FUNCTION_79(v1, v2, v3, v4);
  v0[29] = v5;
  OUTLINED_FUNCTION_10_1(v5);
  v0[30] = v6;
  v8 = *(v7 + 64);
  v0[31] = OUTLINED_FUNCTION_48_0();
  v9 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222DABF34()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0[28];
  sub_222D9FBA4();
  v0[32] = 0;
  if (sub_222DA8780(v0[25]))
  {
    v5 = v0[25];
    sub_222D9E144();
    v0[22] = sub_222D9FD30(v5);
    v0[23] = v6;
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_76(v7);

    return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v8);
  }

  else
  {
    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v9, qword_27D04C940);
    v10 = sub_222DDB3C0();
    v11 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_25_1(v11))
    {
      v12 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v12);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v13, v14, "contacts array is empty: contacts array cannot be empty");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    v15 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_38_1(v15, v16);
    v2 = v0[31];

    OUTLINED_FUNCTION_29_1();

    return v3();
  }
}

uint64_t sub_222DAC0C0()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  v4 = *(v3 + 264);
  *v2 = *v0;
  *(v1 + 272) = v5;

  v6 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t ContactResolutionSnippetGenerator.generateDetailedDisambiguationForMixedLabels(contacts:directInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_12_1();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v1[29] = v5;
  v1[30] = v6;
  v1[35] = *v0;
  v7 = sub_222DDA560();
  v1[36] = v7;
  OUTLINED_FUNCTION_10_1(v7);
  v1[37] = v8;
  v10 = *(v9 + 64);
  v11 = OUTLINED_FUNCTION_48_0();
  v12 = OUTLINED_FUNCTION_68_0(v11);
  v1[39] = v12;
  OUTLINED_FUNCTION_10_1(v12);
  v1[40] = v13;
  v15 = *(v14 + 64);
  v1[41] = OUTLINED_FUNCTION_48_0();
  v16 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_222DAC52C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_222DB13EC;

  return sub_222DAC5F4();
}

uint64_t sub_222DAC5F4()
{
  OUTLINED_FUNCTION_12_1();
  v5 = OUTLINED_FUNCTION_79(v1, v2, v3, v4);
  v0[29] = v5;
  OUTLINED_FUNCTION_10_1(v5);
  v0[30] = v6;
  v8 = *(v7 + 64);
  v0[31] = OUTLINED_FUNCTION_48_0();
  v9 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222DAC690()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0[28];
  sub_222D9FBA4();
  v0[32] = 0;
  if (sub_222DA8780(v0[25]))
  {
    v5 = v0[25];
    sub_222D9E144();
    v0[22] = sub_222D9FD30(v5);
    v0[23] = v6;
    v7 = swift_task_alloc();
    v0[33] = v7;
    *v7 = v0;
    v8 = OUTLINED_FUNCTION_76(v7);

    return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v8);
  }

  else
  {
    if (qword_27D0475B8 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v9, qword_27D04C940);
    v10 = sub_222DDB3C0();
    v11 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_25_1(v11))
    {
      v12 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v12);
      OUTLINED_FUNCTION_9_1(&dword_222D8A000, v13, v14, "contacts array is empty: contacts array cannot be empty");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222D95EDC();
    v15 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_38_1(v15, v16);
    v2 = v0[31];

    OUTLINED_FUNCTION_29_1();

    return v3();
  }
}

uint64_t sub_222DAC81C()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  v4 = *(v3 + 264);
  *v2 = *v0;
  *(v1 + 272) = v5;

  v6 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t ContactResolutionSnippetGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:outputGenerationManifest:)()
{
  OUTLINED_FUNCTION_49_0();
  *(v0 + 32) = *v1;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_10_3(v2);
  *v3 = v4;
  v3[1] = sub_222DACB14;
  OUTLINED_FUNCTION_31_1();

  return ContactResolutionSnippetGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_222DACB14()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29_1();

    return v12();
  }
}

uint64_t ContactResolutionSnippetGenerator.generateYesNoClarificationContactName(contact:contactVerb:primaryButtonInvocationID:secondaryButtonInvocationID:dialogOverride:outputGenerationManifest:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 288) = v14;
  *(v9 + 296) = v8;
  *(v9 + 272) = a7;
  *(v9 + 280) = a8;
  *(v9 + 256) = a5;
  *(v9 + 264) = a6;
  *(v9 + 240) = a2;
  *(v9 + 248) = a4;
  *(v9 + 232) = a1;
  *(v9 + 304) = *v8;
  *(v9 + 336) = *a3;
  v10 = OUTLINED_FUNCTION_45_0();
  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222DACC98()
{
  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_49_0();
  if (qword_27D0475B8 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v2 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v2, qword_27D04C940);
  v3 = sub_222DDB3C0();
  v4 = sub_222DDB6D0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v5);
    _os_log_impl(&dword_222D8A000, v3, v4, "ContactResolutionOutputGenerator::generateYesNoClarificationContactName", v0, 2u);
    OUTLINED_FUNCTION_16_1();
  }

  v6 = *(v1 + 336);
  v8 = *(v1 + 296);
  v7 = *(v1 + 304);
  v10 = *(v1 + 264);
  v9 = *(v1 + 272);
  v20 = *(v1 + 248);
  v11 = *(v1 + 240);

  v12 = *(v8 + 32);
  v13 = swift_task_alloc();
  *(v1 + 312) = v13;
  *(v13 + 16) = v8;
  *(v13 + 24) = v11;
  *(v13 + 32) = v6;
  *(v13 + 40) = v20;
  *(v13 + 56) = v10;
  *(v13 + 64) = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_3();
  *(v1 + 320) = v14;
  *v14 = v15;
  v14[1] = sub_222DACE14;
  v17 = *(v1 + 280);
  v16 = *(v1 + 288);
  OUTLINED_FUNCTION_43_2();

  return sub_222DA9918();
}

uint64_t sub_222DACE14()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  v3 = v2;
  OUTLINED_FUNCTION_19_3();
  *v4 = v3;
  v6 = *(v5 + 320);
  v7 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v8 = v7;
  *(v3 + 328) = v0;

  if (!v0)
  {
    v9 = *(v3 + 312);
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222DACF18()
{
  OUTLINED_FUNCTION_12_1();
  sub_222D93674(v0 + 192, *(v0 + 232));
  sub_222DB0380(v0 + 16);
  OUTLINED_FUNCTION_13_3();

  return v1();
}

uint64_t sub_222DACF7C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *(v0 + 312);

  OUTLINED_FUNCTION_29_1();
  v3 = *(v0 + 328);

  return v2();
}

uint64_t sub_222DACFD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 32) = a4;
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_222DAD0C4;

  return sub_222DAD1FC();
}

uint64_t sub_222DAD0C4()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_3_3();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_29_1();

    return v12();
  }
}

uint64_t sub_222DAD1D8()
{
  OUTLINED_FUNCTION_29_1();
  v1 = *(v0 + 24);
  return v2();
}

uint64_t sub_222DAD1FC()
{
  OUTLINED_FUNCTION_12_1();
  v3 = v2;
  *(v1 + 256) = v4;
  *(v1 + 264) = v0;
  *(v1 + 240) = v5;
  *(v1 + 248) = v6;
  *(v1 + 224) = v7;
  *(v1 + 232) = v8;
  *(v1 + 216) = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100) - 8) + 64) + 15;
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 169) = *v3;
  v11 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_222DAD2B0()
{
  OUTLINED_FUNCTION_34_3();
  v1 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDD2F0;
  *(inited + 32) = v1;
  v3 = v1;
  sub_222D9E144();
  swift_setDeallocating();
  sub_222D9DF30();
  v4 = swift_allocObject();
  v0[36] = v4;
  *(v4 + 16) = xmmword_222DDD2F0;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = swift_task_alloc();
  v0[37] = v6;
  *v6 = v0;
  v6[1] = sub_222DAD3C8;

  return ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(v4);
}

uint64_t sub_222DAD3C8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  v4 = *(v3 + 296);
  v5 = *(v3 + 288);
  v6 = *v0;
  OUTLINED_FUNCTION_3_3();
  *v7 = v6;
  *(v9 + 304) = v8;

  v10 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_222DAD4C8()
{
  v62 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 264);
  v4 = v2[3];
  v3 = v2[4];
  v5 = v2[2];
  OUTLINED_FUNCTION_57();
  static ContactResolutionHelper.makeContactDialogPersons(inpersons:directInvocationID:deviceState:globals:appBundleId:)();
  v7 = v6;
  v8 = *(v0 + 304);

  if (!sub_222DA8780(v7))
  {

    sub_222D95EDC();
    OUTLINED_FUNCTION_50_0();
    *v29 = 2;
    swift_willThrow();
    v10 = *(v0 + 272);
    v9 = *(v0 + 280);

    OUTLINED_FUNCTION_29_1();
    goto LABEL_16;
  }

  sub_222D9E450(0, (v7 & 0xC000000000000001) == 0, v7);
  if ((v7 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x223DCE590](0, v7);
  }

  else
  {
    v12 = *(v7 + 32);
  }

  v13 = *(v0 + 169);
  v14 = *(v0 + 256);
  v15 = *(v0 + 240);

  LOBYTE(v56) = v13;
  v16 = 0xE000000000000000;
  v57 = 0;
  v58 = 0xE000000000000000;
  v59 = 0;
  v60 = 0xE000000000000000;
  v61 = v12;

  v55 = sub_222D943DC(v17, v18, v19, v20, v21, v22, v23, v24);

  sub_222DCE24C(&v56);
  v53 = v57;
  v54 = v56;
  v51 = v59;
  v52 = v58;
  v49 = v61;
  v50 = v60;
  if (!sub_222DDAEE0())
  {
    goto LABEL_7;
  }

  v25 = *(v0 + 280);
  sub_222DDAE60();

  v26 = sub_222DDB240();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v26);
  v28 = *(v0 + 280);
  if (EnumTagSinglePayload == 1)
  {
    sub_222DA8300(*(v0 + 280), &qword_27D0479C0, &qword_222DDE100);
LABEL_7:
    v48 = 0;
    goto LABEL_10;
  }

  v48 = sub_222DDB220();
  v16 = v30;
  OUTLINED_FUNCTION_28_2(v26);
  (*(v31 + 8))(v28, v26);
LABEL_10:
  v32 = sub_222DDAEE0();

  if (v32)
  {
    v33 = *(v0 + 272);
    sub_222DDAE70();

    v34 = sub_222DDB240();
    v35 = __swift_getEnumTagSinglePayload(v33, 1, v34);
    v36 = *(v0 + 272);
    if (v35 != 1)
    {
      v38 = *(v0 + 272);
      v32 = sub_222DDB220();
      v37 = v39;
      OUTLINED_FUNCTION_28_2(v34);
      (*(v40 + 8))(v36, v34);
      goto LABEL_15;
    }

    sub_222DA8300(*(v0 + 272), &qword_27D0479C0, &qword_222DDE100);
    v32 = 0;
  }

  v37 = 0xE000000000000000;
LABEL_15:
  v42 = *(v0 + 272);
  v41 = *(v0 + 280);
  v43 = *(v0 + 248);
  v44 = *(v0 + 256);
  v47 = *(v0 + 232);
  v45 = *(v0 + 216);
  swift_bridgeObjectRelease_n();

  *(v0 + 16) = v12;
  *(v0 + 24) = v47;
  *(v0 + 40) = v43;
  *(v0 + 48) = v44;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = v54;
  *(v0 + 96) = v53;
  *(v0 + 104) = v52;
  *(v0 + 112) = v51;
  *(v0 + 120) = v50;
  *(v0 + 128) = v49;
  *(v0 + 136) = v48;
  *(v0 + 144) = v16;
  *(v0 + 152) = v32;
  *(v0 + 160) = v37;
  sub_222DB0F40(v0 + 16);
  memcpy(v45, (v0 + 16), 0x99uLL);
  *(v45 + 153) = 5;
  *(v45 + 160) = v55;

  OUTLINED_FUNCTION_13_3();
LABEL_16:

  return v11();
}

uint64_t ContactResolutionSnippetGenerator.convertINPersonImageData(contacts:)(uint64_t a1)
{
  *(v1 + 152) = a1;
  v2 = OUTLINED_FUNCTION_45_0();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_222DAD8A0()
{
  v1 = sub_222DA8780(v0[19]);
  v0[20] = v1;
  for (i = 4; ; ++i)
  {
    v3 = v0[19];
    if (i - 4 == v1)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223DCE590](i - 4, v0[19]);
    }

    else
    {
      OUTLINED_FUNCTION_55_1(v3 & 0xFFFFFFFFFFFFFF8);
      if (v5)
      {
        goto LABEL_21;
      }

      v4 = *(v3 + 8 * i);
    }

    v6 = v4;
    v0[21] = v4;
    v0[22] = i - 3;
    if (__OFADD__(i - 4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return MEMORY[0x282200938](v4);
    }

    v7 = [v4 image];
    v0[23] = v7;
    if (v7)
    {
      OUTLINED_FUNCTION_58_1();
      if (v12)
      {
        v13 = MEMORY[0x223DCE590](i - 4);
      }

      else
      {
        OUTLINED_FUNCTION_55_1(v11 & 0xFFFFFFFFFFFFFF8);
        if (v5)
        {
          goto LABEL_22;
        }

        v13 = *(v14 + 8 * i);
      }

      v0[24] = v13;
      v0[2] = v0;
      v0[7] = v0 + 18;
      OUTLINED_FUNCTION_14_3();
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C78, &qword_222DDD968);
      OUTLINED_FUNCTION_12_3(v15);
      v0[11] = 1107296256;
      OUTLINED_FUNCTION_11_3(&block_descriptor);
      [v3 retrieveImageDataWithCompletion_];
      v4 = v0 + 2;

      return MEMORY[0x282200938](v4);
    }

    v1 = v0[20];
  }

  OUTLINED_FUNCTION_29_1();
  v16 = v8;

  return v16(v9);
}

uint64_t sub_222DADA7C()
{
  OUTLINED_FUNCTION_12_1();
  v1 = *v0;
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 200) = v5;
  if (v5)
  {
  }

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_222DADB84()
{
  v1 = v0[18];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[21];
  [v2 setImage_];

  for (i = v0[22] + 4; ; ++i)
  {
    v6 = v0[19];
    if (i - 4 == v0[20])
    {
      break;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223DCE590](i - 4, v0[19]);
    }

    else
    {
      OUTLINED_FUNCTION_55_1(v6 & 0xFFFFFFFFFFFFFF8);
      if (v8)
      {
        goto LABEL_21;
      }

      v7 = *(v6 + 8 * i);
    }

    v9 = v7;
    v0[21] = v7;
    v0[22] = i - 3;
    if (__OFADD__(i - 4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return MEMORY[0x282200938](v7);
    }

    v10 = [v7 image];
    v0[23] = v10;
    if (v10)
    {
      OUTLINED_FUNCTION_58_1();
      if (v15)
      {
        v16 = MEMORY[0x223DCE590](i - 4);
      }

      else
      {
        OUTLINED_FUNCTION_55_1(v14 & 0xFFFFFFFFFFFFFF8);
        if (v8)
        {
          goto LABEL_22;
        }

        v16 = *(v17 + 8 * i);
      }

      v0[24] = v16;
      v0[2] = v0;
      v0[7] = v0 + 18;
      OUTLINED_FUNCTION_14_3();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C78, &qword_222DDD968);
      OUTLINED_FUNCTION_12_3(v18);
      v0[11] = 1107296256;
      OUTLINED_FUNCTION_11_3(&block_descriptor);
      [v6 retrieveImageDataWithCompletion_];
      v7 = v0 + 2;

      return MEMORY[0x282200938](v7);
    }
  }

  OUTLINED_FUNCTION_29_1();
  v19 = v11;

  return v19(v12);
}

uint64_t sub_222DADD90(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_63();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_44_2();
  a22 = v24;
  v27 = v24[25];
  swift_willThrow();
  if (qword_27D0475B8 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_0_5();
  }

  v28 = v24 + 18;
  v29 = v24[21];
  v30 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v30, qword_27D04C940);
  v31 = v29;
  v32 = sub_222DDB3C0();
  v33 = sub_222DDB6C0();

  v34 = os_log_type_enabled(v32, v33);
  v35 = v24[25];
  v36 = v24[23];
  v37 = v24[21];
  if (v34)
  {
    v68 = v24[25];
    v38 = swift_slowAlloc();
    a12 = swift_slowAlloc();
    v39 = a12;
    *v38 = 136315138;
    v40 = [v37 displayName];
    v41 = sub_222DDB500();
    v43 = v42;

    v44 = sub_222D8F7F0(v41, v43, &a12);

    *(v38 + 4) = v44;
    _os_log_impl(&dword_222D8A000, v32, v33, "Failed to get INImage from %s.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    v28 = v24 + 18;
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_48_2();
  }

  else
  {
  }

  for (i = v24[22] + 4; ; ++i)
  {
    v46 = v24[19];
    if (i - 4 == v24[20])
    {
      break;
    }

    if ((v46 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x223DCE590](i - 4, v24[19]);
    }

    else
    {
      OUTLINED_FUNCTION_55_1(v46 & 0xFFFFFFFFFFFFFF8);
      if (v47)
      {
        goto LABEL_25;
      }

      v48 = *(v46 + 8 * i);
    }

    v49 = v48;
    v24[21] = v48;
    v24[22] = i - 3;
    if (__OFADD__(i - 4, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v50 = [v48 image];
    v24[23] = v50;
    if (v50)
    {
      OUTLINED_FUNCTION_58_1();
      if (v62)
      {
        v63 = MEMORY[0x223DCE590](i - 4);
LABEL_21:
        v24[24] = v63;
        v24[2] = v24;
        v24[7] = v28;
        OUTLINED_FUNCTION_14_3();
        v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C78, &qword_222DDD968);
        OUTLINED_FUNCTION_12_3(v66);
        v24[11] = 1107296256;
        OUTLINED_FUNCTION_11_3(&block_descriptor);
        [v46 retrieveImageDataWithCompletion_];
        OUTLINED_FUNCTION_42_0();
      }

      else
      {
        OUTLINED_FUNCTION_55_1(v61 & 0xFFFFFFFFFFFFFF8);
        if (!v47)
        {
          v63 = *(v65 + 8 * i);
          goto LABEL_21;
        }

        __break(1u);
      }

      return MEMORY[0x282200938](v64);
    }
  }

  v69 = OUTLINED_FUNCTION_29_1();
  v70 = v51;

  OUTLINED_FUNCTION_42_0();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, v69, v70, a12, a13, a14, a15, a16);
}

uint64_t sub_222DAE0B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (sub_222DA8780(a1))
  {
    sub_222D9E450(0, (a1 & 0xC000000000000001) == 0, a1);
    v31 = a3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223DCE590](0, a1);
    }

    else
    {
      v10 = *(a1 + 32);
    }

    v32 = a4;

    sub_222DCE24C(&v33);
    v30 = v10;

    v11 = v33;
    v28 = v34;
    v29 = *(&v33 + 1);
    v26 = v35;
    v27 = *(&v34 + 1);
    v25 = *(&v35 + 1);
    result = sub_222DA8780(a1);
    v13 = MEMORY[0x277D84F90];
    if (!result)
    {
LABEL_14:
      *a5 = v30;
      *(a5 + 8) = a1;
      *(a5 + 16) = a2 & 1;
      *(a5 + 24) = v31;
      *(a5 + 32) = v32;
      *(a5 + 40) = 0;
      *(a5 + 48) = 0;
      *(a5 + 56) = 0;
      *(a5 + 64) = 0xE000000000000000;
      *(a5 + 72) = v11;
      *(a5 + 80) = v29;
      *(a5 + 88) = v28;
      *(a5 + 96) = v27;
      *(a5 + 104) = v26;
      *(a5 + 112) = v25;
      *(a5 + 120) = v13;
      return result;
    }

    v14 = result;
    v24 = v11;
    v37 = MEMORY[0x277D84F90];
    result = sub_222DA5508(0, result & ~(result >> 63), 0);
    if ((v14 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v13 = v37;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DCE590](v15, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v15 + 32);
        }

        sub_222DCF124(&v33);

        v37 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          result = sub_222DA5508((v17 > 1), v18 + 1, 1);
          v13 = v37;
        }

        ++v15;
        *(v13 + 16) = v18 + 1;
        v19 = (v13 + (v18 << 6));
        v20 = v33;
        v21 = v34;
        v22 = v36;
        v19[4] = v35;
        v19[5] = v22;
        v19[2] = v20;
        v19[3] = v21;
      }

      while (v14 != v15);
      v11 = v24;
      goto LABEL_14;
    }

    __break(1u);
  }

  else
  {
    sub_222D95EDC();
    swift_allocError();
    *v23 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_222DAE2FC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 160) = a2;
  *(v4 + 168) = v3;
  *(v4 + 152) = a1;
  *(v4 + 216) = *a3;
  v5 = OUTLINED_FUNCTION_45_0();
  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_222DAE330()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 216);
  v2 = *(v0 + 168);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + 176) = [objc_opt_self() bundleForClass_];
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  objc_opt_self();
  *(v0 + 184) = sub_222DDB4C0();

  *(v0 + 192) = sub_222DDB440();
  sub_222DDB160();
  *(v0 + 200) = sub_222DDB440();

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_222DAE604;
  v6 = swift_continuation_init();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CA0, &qword_222DDDD38);
  *(v0 + 136) = v7;
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_222DB13F8;
  *(v0 + 104) = &block_descriptor_76;
  *(v0 + 112) = v6;
  OUTLINED_FUNCTION_61_1(v7, sel_execute_catId_parameters_globals_completion_);
  OUTLINED_FUNCTION_31_1();

  return MEMORY[0x282200938]();
}

uint64_t sub_222DAE604()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  OUTLINED_FUNCTION_6_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 208) = *(v3 + 48);
  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_222DAE700()
{
  OUTLINED_FUNCTION_34_3();
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 216);
  v5 = *(v0 + 144);

  v6 = 0xD000000000000031;
  v7 = "eLabelNoWindowing";
  switch(v4)
  {
    case 1:
      v7 = "ntactNames_Dialog";
      v6 = 0xD000000000000030;
      break;
    case 2:
      v7 = "actLabels_Dialog";
      v6 = 0xD00000000000002ELL;
      break;
    case 3:
      v7 = "sambiguationMixedLabels_Dialog";
      v6 = 0xD000000000000048;
      break;
    case 4:
      v7 = "eLabelNoWindowing_Dialog";
      v6 = 0xD00000000000003BLL;
      break;
    case 5:
      v7 = "xedLabelsNoWindowing_Dialog";
      v6 = 0xD00000000000002CLL;
      break;
    case 6:
      v7 = "rificationContactName_Dialog";
      v6 = 0xD00000000000001CLL;
      break;
    case 7:
      v7 = "contact#DisambiguationLabels";
      v6 = 0xD00000000000001BLL;
      break;
    case 8:
      v7 = "ContactLabels#PrimaryButton";
      v6 = 0xD00000000000001DLL;
      break;
    case 9:
      v7 = "ContactLabels#SecondaryButton";
      v6 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  v8 = sub_222DBAEBC(v6, v7 | 0x8000000000000000, v5);
  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_222DAE884()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_34_3();
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  swift_willThrow();

  OUTLINED_FUNCTION_29_1();
  v6 = v0[26];
  OUTLINED_FUNCTION_81();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_222DAE900(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C80, &unk_222DDDFF0);
  v4 = OUTLINED_FUNCTION_50_0();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_222DAE984()
{
  OUTLINED_FUNCTION_12_1();
  v3 = v2;
  *(v1 + 1920) = v0;
  *(v1 + 1912) = v4;
  *(v1 + 1904) = v5;
  *(v1 + 1896) = v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100) - 8) + 64) + 15;
  *(v1 + 1928) = swift_task_alloc();
  *(v1 + 1936) = swift_task_alloc();
  memcpy((v1 + 16), v3, 0x99uLL);
  *(v1 + 174) = *(v3 + 153);
  *(v1 + 1944) = *(v3 + 160);
  v8 = OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_222DAEA50()
{
  OUTLINED_FUNCTION_14_1();
  *(v0 + 1952) = sub_222DA8C4C(*(v0 + 1944));
  *(v0 + 169) = 6;
  v1 = swift_task_alloc();
  *(v0 + 1960) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_56_0(v1);

  return sub_222DAE2FC(v2, v3, v4);
}

uint64_t sub_222DAEAF8()
{
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_24_3();
  v3 = v2;
  OUTLINED_FUNCTION_19_3();
  *v4 = v3;
  v6 = *(v5 + 1960);
  *v4 = *v1;
  v3[246] = v7;
  v3[247] = v0;

  v8 = v3[244];

  OUTLINED_FUNCTION_57();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_222DAEC10(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, void **a13, SiriInferenceFlow::ContactDisambiguationModel *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  OUTLINED_FUNCTION_62_0();
  a35 = v37;
  a36 = v38;
  OUTLINED_FUNCTION_72();
  a34 = v36;
  OUTLINED_FUNCTION_83((v36 + 176));
  v39 = sub_222DB1228(v36 + 176);
  if (!v39)
  {
    v44 = *(v36 + 1968);
    v45 = nullsub_1(v36 + 176);
    OUTLINED_FUNCTION_83((v36 + 1136));
    v46 = nullsub_1(v36 + 1136);
    sub_222DB133C(v46, v36 + 1736);
    v47 = OUTLINED_FUNCTION_75();
    v48 = sub_222DA02E8(v47, 0xE800000000000000, v44);
    v50 = v49;

    if (!v50)
    {
      sub_222DB128C(v36 + 16);
      if (qword_27D0475B8 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v100 = sub_222DDB3E0();
      OUTLINED_FUNCTION_63_0(v100, qword_27D04C940);
      v101 = sub_222DDB3C0();
      v102 = sub_222DDB6C0();
      if (OUTLINED_FUNCTION_25_1(v102))
      {
        v103 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_19_1(v103);
        OUTLINED_FUNCTION_9_1(&dword_222D8A000, v104, v105, "localized value not found: could not find localized value for label 'whichOne'");
        OUTLINED_FUNCTION_16_1();
      }

      sub_222D95EDC();
      v106 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_53_1(v106, v107);
      goto LABEL_68;
    }

    v51 = [*(v36 + 1904) dialog];
    sub_222DB1398();
    v52 = sub_222DDB630();

    if (!sub_222DA8780(v52))
    {
      goto LABEL_65;
    }

    sub_222D9E450(0, (v52 & 0xC000000000000001) == 0, v52);
    if ((v52 & 0xC000000000000001) == 0)
    {
      v53 = *(v52 + 32);
      goto LABEL_10;
    }

LABEL_75:
    v53 = MEMORY[0x223DCE590](0, v52);
LABEL_10:
    v54 = v53;

    v55 = [v54 unfilteredSupportingPrint];

    v56 = sub_222DDB500();
    v58 = v57;

    v59 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v59 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      if (qword_27D0475B8 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v60 = sub_222DDB3E0();
      OUTLINED_FUNCTION_63_0(v60, qword_27D04C940);
      v61 = sub_222DDB3C0();
      v62 = sub_222DDB6D0();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&a21 = v64;
        *v63 = 136315138;

        v65 = sub_222D8F7F0(v48, v50, &a21);

        *(v63 + 4) = v65;
        _os_log_impl(&dword_222D8A000, v61, v62, "augmented localized prompt: %s", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_48_2();
      }

      v48 = v56;
      goto LABEL_66;
    }

LABEL_65:

    v58 = v50;
LABEL_66:
    v115 = *(v36 + 1976);
    v116._rawValue = *v45;
    v118 = v45[3];
    v117 = v45[4];

    v119._countAndFlagsBits = v48;
    v119._object = v58;
    v120._countAndFlagsBits = v118;
    v120._object = v117;
    ContactDisambiguationModel.init(contacts:prompt:contactSelectionDirectInvocationID:)(&a21, v116, v119, v120);
    if (v121)
    {
      sub_222DB128C(v36 + 16);

      goto LABEL_68;
    }

    v88 = v36 + 1296;
    sub_222DB128C(v36 + 16);

    v122 = a22;
    *(v36 + 1296) = a21;
    *(v36 + 1312) = v122;
    v123 = a24;
    *(v36 + 1328) = a23;
    *(v36 + 1344) = v123;
    sub_222DB0FB4(v36 + 1296);
    v108 = (v36 + 336);
    v109 = (v36 + 1296);
LABEL_70:
    memcpy(v108, v109, 0x99uLL);
    OUTLINED_FUNCTION_49_2();
    *(v48 + 153) = v58;
    *(v48 + 160) = v88;

    OUTLINED_FUNCTION_13_3();
    goto LABEL_71;
  }

  if (v39 == 1)
  {
    v40 = *(v36 + 1944);
    v41 = nullsub_1(v36 + 176);
    OUTLINED_FUNCTION_83((v36 + 816));
    v42 = nullsub_1(v36 + 816);
    sub_222DB12E0(v42, v36 + 1608);
    sub_222DA0284(0xD000000000000013, 0x8000000222DE0B90, v40, (v36 + 1800));
    if (*(v36 + 1824))
    {
      if (swift_dynamicCast())
      {
        v43 = *(v36 + 173);
        goto LABEL_23;
      }
    }

    else
    {
      sub_222DA8300(v36 + 1800, &qword_27D047AE0, &qword_222DDDD30);
    }

    v43 = 0;
LABEL_23:
    sub_222DA0284(0xD000000000000013, 0x8000000222DE0BB0, *(v36 + 1944), (v36 + 1832));
    if (*(v36 + 1856))
    {
      if (swift_dynamicCast())
      {
        v74 = *(v36 + 172);
        goto LABEL_28;
      }
    }

    else
    {
      sub_222DA8300(v36 + 1832, &qword_27D047AE0, &qword_222DDDD30);
    }

    v74 = 0;
LABEL_28:
    sub_222DA0284(0xD000000000000010, 0x8000000222DE0A90, *(v36 + 1944), (v36 + 1864));
    if (*(v36 + 1888))
    {
      if (swift_dynamicCast())
      {
        if (((v43 | v74) & 1) == 0 && (*(v36 + 171) & 1) == 0)
        {
LABEL_32:
          v75 = *(v36 + 1968);
          v76 = OUTLINED_FUNCTION_75();
          v45 = sub_222DA02E8(v76, 0xEB00000000726F46, v75);
          v50 = v77;

          if (!v50)
          {
            if (qword_27D0475B8 != -1)
            {
              OUTLINED_FUNCTION_0_5();
            }

            v78 = sub_222DDB3E0();
            OUTLINED_FUNCTION_63_0(v78, qword_27D04C940);
            v79 = sub_222DDB3C0();
            v80 = sub_222DDB6C0();
            if (!OUTLINED_FUNCTION_25_1(v80))
            {
              goto LABEL_64;
            }

            v81 = OUTLINED_FUNCTION_43_0();
            OUTLINED_FUNCTION_19_1(v81);
            v84 = "localized value not found: could not find localized value for label 'whichOneFor'";
LABEL_63:
            OUTLINED_FUNCTION_9_1(&dword_222D8A000, v82, v83, v84);
            OUTLINED_FUNCTION_16_1();
LABEL_64:

            sub_222D95EDC();
            v113 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_53_1(v113, v114);
            sub_222DB128C(v36 + 16);
LABEL_68:
            OUTLINED_FUNCTION_82();

            OUTLINED_FUNCTION_29_1();
LABEL_71:
            OUTLINED_FUNCTION_52_2();

            return v125(v124, v125, v126, v127, v128, v129, v130, v131, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, *(&a21 + 1), a22, *(&a22 + 1), a23, *(&a23 + 1), a24, *(&a24 + 1), a25, a26, a27, a28);
          }

LABEL_40:
          v48 = *v41;
          v58 = *(v41 + 8);
          v86 = *(v41 + 16);
          v87 = *(v41 + 24);
          a19 = *(v41 + 32);

          sub_222DCE24C(&a21);
          v88 = a21;
          a17 = a22;
          a18 = *(&a21 + 1);
          a15 = a23;
          a16 = *(&a22 + 1);
          a14 = *(&a23 + 1);
          v89 = sub_222DA8780(v58);
          if (!v89)
          {
            sub_222DB128C(v36 + 16);
            v92 = MEMORY[0x277D84F90];
LABEL_57:
            *(v36 + 976) = v48;
            *(v36 + 984) = v58;
            *(v36 + 992) = v86;
            *(v36 + 1000) = v87;
            *(v36 + 1008) = a19;
            *(v36 + 1016) = 0u;
            *(v36 + 1032) = v45;
            *(v36 + 1040) = v50;
            *(v36 + 1048) = v88;
            *(v36 + 1056) = a18;
            *(v36 + 1064) = a17;
            *(v36 + 1072) = a16;
            *(v36 + 1080) = a15;
            *(v36 + 1088) = a14;
            *(v36 + 1096) = v92;
            sub_222DB0F4C(v36 + 976);
            v108 = (v36 + 336);
            v109 = (v36 + 976);
            goto LABEL_70;
          }

          v90 = v89;
          a9 = v88;
          a10 = v87;
          HIDWORD(a11) = v86;
          a12 = v50;
          a13 = v45;
          a20 = MEMORY[0x277D84F90];
          v52 = &a20;
          sub_222DA5508(0, v89 & ~(v89 >> 63), 0);
          if ((v90 & 0x8000000000000000) == 0)
          {
            v91 = 0;
            v92 = a20;
            if ((v58 & 0xC000000000000001) == 0)
            {
              goto LABEL_44;
            }

LABEL_43:
            MEMORY[0x223DCE590](v91, v58);
            while (1)
            {
              sub_222DCF124(&a21);

              a20 = v92;
              v95 = *(v92 + 16);
              v94 = *(v92 + 24);
              if (v95 >= v94 >> 1)
              {
                sub_222DA5508((v94 > 1), v95 + 1, 1);
                v92 = a20;
              }

              *(v92 + 16) = v95 + 1;
              v96 = (v92 + (v95 << 6));
              v97 = a21;
              v98 = a22;
              v99 = a24;
              v96[4] = a23;
              v96[5] = v99;
              v96[2] = v97;
              v96[3] = v98;
              if (v90 - 1 == v91)
              {
                break;
              }

              ++v91;
              if ((v58 & 0xC000000000000001) != 0)
              {
                goto LABEL_43;
              }

LABEL_44:
              v93 = *(v58 + 8 * v91 + 32);
            }

            sub_222DB128C(v36 + 16);
            v50 = a12;
            v88 = a9;
            v87 = a10;
            goto LABEL_57;
          }

          __break(1u);
          goto LABEL_75;
        }

LABEL_39:
        v45 = sub_222DA02E8(0xD000000000000016, 0x8000000222DE0DB0, *(v36 + 1968));
        v50 = v85;

        if (!v50)
        {
          if (qword_27D0475B8 != -1)
          {
            OUTLINED_FUNCTION_0_5();
          }

          v110 = sub_222DDB3E0();
          OUTLINED_FUNCTION_63_0(v110, qword_27D04C940);
          v79 = sub_222DDB3C0();
          v111 = sub_222DDB6C0();
          if (!OUTLINED_FUNCTION_25_1(v111))
          {
            goto LABEL_64;
          }

          v112 = OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_19_1(v112);
          v84 = "localized value not found: could not find localized value for label 'whichSameHandleTypeFor'";
          goto LABEL_63;
        }

        goto LABEL_40;
      }
    }

    else
    {
      sub_222DA8300(v36 + 1864, &qword_27D047AE0, &qword_222DDDD30);
    }

    if (((v43 | v74) & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_39;
  }

  v66 = *(v36 + 1944);
  *(v36 + 1984) = nullsub_1(v36 + 176);
  OUTLINED_FUNCTION_83((v36 + 496));
  v67 = nullsub_1(v36 + 496);
  sub_222DB1230(v67, v36 + 1456);
  *(v36 + 1992) = sub_222DA8C4C(v66);
  *(v36 + 170) = 7;
  v68 = swift_task_alloc();
  *(v36 + 2000) = v68;
  *v68 = v36;
  OUTLINED_FUNCTION_56_0(v68);
  OUTLINED_FUNCTION_52_2();

  return sub_222DAE2FC(v69, v70, v71);
}