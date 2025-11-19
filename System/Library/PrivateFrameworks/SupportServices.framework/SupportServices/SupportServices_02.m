uint64_t sub_26BD08634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BDA0850();
  v7 = OUTLINED_FUNCTION_175(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_46(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v7);
}

uint64_t sub_26BD086E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26BDA0850();
  result = OUTLINED_FUNCTION_175(v8);
  if (*(v10 + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_26BD087A8()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AuthResponse._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BD0882C()
{
  v1 = v0;
  OUTLINED_FUNCTION_17_0();
  v2 = *(type metadata accessor for AuthResponse(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for AuthResponse._StorageClass(0);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    *(v1 + v2) = sub_26BD07430(v5);
  }

  return sub_26BD088D0();
}

uint64_t sub_26BD088D0()
{
  v1 = v0;
  while (1)
  {
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        swift_beginAccess();
        sub_26BDA0920();
        goto LABEL_8;
      case 2:
      case 3:
      case 4:
      case 5:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_8;
      case 6:
        swift_beginAccess();
        sub_26BDA0990();
        goto LABEL_8;
      case 7:
        swift_beginAccess();
        type metadata accessor for PhoneNumber(0);
        sub_26BD0D430(&qword_280449910, type metadata accessor for PhoneNumber);
        goto LABEL_13;
      case 8:
        swift_beginAccess();
        type metadata accessor for AuthResponse.AuthenticationToken(0);
        sub_26BD0D430(&qword_2804498A0, type metadata accessor for AuthResponse.AuthenticationToken);
        goto LABEL_13;
      case 9:
      case 10:
        swift_beginAccess();
        type metadata accessor for AuthResponse.Account(0);
        sub_26BD0D430(&qword_2804498C0, type metadata accessor for AuthResponse.Account);
LABEL_13:
        sub_26BDA09B0();
LABEL_8:
        v1 = 0;
        swift_endAccess();
        break;
      case 11:
        swift_beginAccess();
        type metadata accessor for AuthResponse.ImproveSearchConsent(0);
        sub_26BD0D430(&qword_280449880, type metadata accessor for AuthResponse.ImproveSearchConsent);
        sub_26BDA09B0();
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD08D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + *(type metadata accessor for AuthResponse(0) + 20));
  OUTLINED_FUNCTION_129();
  result = sub_26BD08D90(v7, v8, v9, a3);
  if (!v4)
  {
    return sub_26BDA0830();
  }

  return result;
}

uint64_t sub_26BD08D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449900, &unk_26BDA3CA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v66 - v10;
  v69 = type metadata accessor for AuthResponse.ImproveSearchConsent(0);
  v11 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v66 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v71 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v66 - v17;
  v73 = type metadata accessor for AuthResponse.Account(0);
  v18 = *(*(v73 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v73);
  v67 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v70 = &v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v74 = &v66 - v24;
  v75 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  v25 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v72 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v66 - v29;
  v77 = type metadata accessor for PhoneNumber(0);
  v31 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v33 = &v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID;
  swift_beginAccess();
  if (*(a1 + v34) == 1)
  {
    result = sub_26BDA0A40();
    if (v4)
    {
      return result;
    }
  }

  v78 = a4;
  v36 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  swift_beginAccess();
  v37 = *v36;
  v38 = v36[1];
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {

    sub_26BDA0AB0();
    if (v5)
    {
    }
  }

  v40 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {

    sub_26BDA0AB0();
    if (!v5)
    {

      goto LABEL_13;
    }
  }

LABEL_13:
  v44 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  swift_beginAccess();
  v45 = *v44;
  v46 = v44[1];
  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {

    sub_26BDA0AB0();
    if (v5)
    {
    }
  }

  v48 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  swift_beginAccess();
  v49 = *v48;
  v50 = v48[1];
  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51 || (, sub_26BDA0AB0(), result = , !v5))
  {
    v52 = (a1 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
    swift_beginAccess();
    v53 = *v52;
    v54 = v52[1];
    v55 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v55 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (!v55 || (, sub_26BDA0AB0(), result = , !v5))
    {
      swift_beginAccess();
      sub_26BD0D868();
      if (__swift_getEnumTagSinglePayload(v30, 1, v77) == 1)
      {
        sub_26BD04E80(v30, &qword_280449840, &qword_26BDA36D8);
      }

      else
      {
        sub_26BD0D8C4();
        sub_26BD0D430(&qword_280449910, type metadata accessor for PhoneNumber);
        sub_26BDA0AD0();
        result = sub_26BD0D920(v33, type metadata accessor for PhoneNumber);
        if (v5)
        {
          return result;
        }
      }

      swift_beginAccess();
      v56 = v74;
      sub_26BD0D868();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56, 1, v75);
      v58 = v76;
      if (EnumTagSinglePayload == 1)
      {
        sub_26BD04E80(v56, &qword_280449848, &qword_26BDA36E0);
      }

      else
      {
        v59 = v72;
        sub_26BD0D8C4();
        sub_26BD0D430(&qword_2804498A0, type metadata accessor for AuthResponse.AuthenticationToken);
        sub_26BDA0AD0();
        result = sub_26BD0D920(v59, type metadata accessor for AuthResponse.AuthenticationToken);
        if (v5)
        {
          return result;
        }
      }

      swift_beginAccess();
      sub_26BD0D868();
      v60 = v73;
      if (__swift_getEnumTagSinglePayload(v58, 1, v73) == 1)
      {
        sub_26BD04E80(v58, &qword_280449908, &unk_26BDA9DD0);
      }

      else
      {
        v61 = v70;
        sub_26BD0D8C4();
        sub_26BD0D430(&qword_2804498C0, type metadata accessor for AuthResponse.Account);
        sub_26BDA0AD0();
        result = sub_26BD0D920(v61, type metadata accessor for AuthResponse.Account);
        if (v5)
        {
          return result;
        }
      }

      swift_beginAccess();
      v62 = v71;
      sub_26BD0D868();
      if (__swift_getEnumTagSinglePayload(v62, 1, v60) == 1)
      {
        sub_26BD04E80(v62, &qword_280449908, &unk_26BDA9DD0);
      }

      else
      {
        v63 = v67;
        sub_26BD0D8C4();
        sub_26BD0D430(&qword_2804498C0, type metadata accessor for AuthResponse.Account);
        sub_26BDA0AD0();
        result = sub_26BD0D920(v63, type metadata accessor for AuthResponse.Account);
        if (v5)
        {
          return result;
        }
      }

      swift_beginAccess();
      v64 = v68;
      sub_26BD0D868();
      if (__swift_getEnumTagSinglePayload(v64, 1, v69) == 1)
      {
        return sub_26BD04E80(v64, &qword_280449900, &unk_26BDA3CA0);
      }

      else
      {
        v65 = v66;
        sub_26BD0D8C4();
        sub_26BD0D430(&qword_280449880, type metadata accessor for AuthResponse.ImproveSearchConsent);
        sub_26BDA0AD0();
        return sub_26BD0D920(v65, type metadata accessor for AuthResponse.ImproveSearchConsent);
      }
    }
  }

  return result;
}

uint64_t sub_26BD09830()
{
  OUTLINED_FUNCTION_184();
  v2 = *(type metadata accessor for AuthResponse(0) + 20);
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {
    v5 = *(v1 + v2);

    v6 = sub_26BD09904(v3, v4);

    if (!v6)
    {
      return 0;
    }
  }

  sub_26BDA0850();
  OUTLINED_FUNCTION_0_0();
  sub_26BD0D430(v7, v8);
  return sub_26BDA0BB0() & 1;
}

BOOL sub_26BD09904(uint64_t a1, uint64_t a2)
{
  v160 = a2;
  v139 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  v3 = *(*(v139 - 8) + 64);
  MEMORY[0x28223BE20](v139);
  v135 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449918, &unk_26BDA3CC0);
  v5 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v140 = &v134 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v136 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v145 = &v134 - v11;
  v143 = type metadata accessor for PhoneNumber(0);
  v12 = *(*(v143 - 8) + 64);
  MEMORY[0x28223BE20](v143);
  v137 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449920, &qword_26BDA9390);
  v14 = *(*(v142 - 8) + 64);
  MEMORY[0x28223BE20](v142);
  v144 = &v134 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v141 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v151 = &v134 - v20;
  v149 = type metadata accessor for AuthResponse.ImproveSearchConsent(0);
  v21 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v146 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449928, &qword_26BDA3CD0);
  v23 = *(*(v148 - 8) + 64);
  MEMORY[0x28223BE20](v148);
  v150 = &v134 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449900, &unk_26BDA3CA0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v147 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v156 = &v134 - v29;
  v159 = type metadata accessor for AuthResponse.Account(0);
  v30 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v153 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449930, &qword_26BDA3CD8);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v155 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v37 = &v134 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449908, &unk_26BDA9DD0);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v152 = &v134 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v158 = &v134 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v157 = &v134 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v134 - v46;
  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  v154 = v32;
  v48 = *(v32 + 48);
  sub_26BD0D868();
  v49 = v159;
  sub_26BD0D868();
  if (__swift_getEnumTagSinglePayload(v37, 1, v49) == 1)
  {

    sub_26BD04E80(v47, &qword_280449908, &unk_26BDA9DD0);
    v50 = a1;
    if (__swift_getEnumTagSinglePayload(&v37[v48], 1, v49) == 1)
    {
      sub_26BD04E80(v37, &qword_280449908, &unk_26BDA9DD0);
      goto LABEL_9;
    }

LABEL_6:
    sub_26BD04E80(v37, &qword_280449930, &qword_26BDA3CD8);
    goto LABEL_23;
  }

  v50 = a1;
  v51 = v157;
  sub_26BD0D868();
  if (__swift_getEnumTagSinglePayload(&v37[v48], 1, v49) == 1)
  {

    sub_26BD04E80(v47, &qword_280449908, &unk_26BDA9DD0);
    sub_26BD0D920(v51, type metadata accessor for AuthResponse.Account);
    goto LABEL_6;
  }

  v52 = v153;
  sub_26BD0D8C4();

  v53 = sub_26BD0BAE4(v51, v52);
  sub_26BD0D920(v52, type metadata accessor for AuthResponse.Account);
  sub_26BD04E80(v47, &qword_280449908, &unk_26BDA9DD0);
  sub_26BD0D920(v51, type metadata accessor for AuthResponse.Account);
  sub_26BD04E80(v37, &qword_280449908, &unk_26BDA9DD0);
  if ((v53 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  swift_beginAccess();
  v54 = v50;
  v55 = v158;
  sub_26BD0D868();
  swift_beginAccess();
  v56 = v155;
  v57 = *(v154 + 48);
  sub_26BD0D868();
  sub_26BD0D868();
  if (__swift_getEnumTagSinglePayload(v56, 1, v49) == 1)
  {
    sub_26BD04E80(v55, &qword_280449908, &unk_26BDA9DD0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v56 + v57, 1, v49);
    v59 = v54;
    v60 = v156;
    if (EnumTagSinglePayload == 1)
    {
      sub_26BD04E80(v56, &qword_280449908, &unk_26BDA9DD0);
      goto LABEL_16;
    }

LABEL_14:
    v63 = &qword_280449930;
    v64 = &qword_26BDA3CD8;
    v65 = v56;
LABEL_22:
    sub_26BD04E80(v65, v63, v64);
    goto LABEL_23;
  }

  v61 = v152;
  sub_26BD0D868();
  v62 = __swift_getEnumTagSinglePayload(v56 + v57, 1, v49);
  v60 = v156;
  if (v62 == 1)
  {
    sub_26BD04E80(v158, &qword_280449908, &unk_26BDA9DD0);
    sub_26BD0D920(v61, type metadata accessor for AuthResponse.Account);
    goto LABEL_14;
  }

  v66 = v153;
  sub_26BD0D8C4();
  v67 = v56;
  v68 = sub_26BD0BAE4(v61, v66);
  sub_26BD0D920(v66, type metadata accessor for AuthResponse.Account);
  sub_26BD04E80(v158, &qword_280449908, &unk_26BDA9DD0);
  sub_26BD0D920(v61, type metadata accessor for AuthResponse.Account);
  sub_26BD04E80(v67, &qword_280449908, &unk_26BDA9DD0);
  v59 = v54;
  if ((v68 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  v69 = *(v148 + 48);
  v70 = v150;
  sub_26BD0D868();
  v71 = v70;
  sub_26BD0D868();
  v72 = v149;
  if (__swift_getEnumTagSinglePayload(v70, 1, v149) == 1)
  {
    sub_26BD04E80(v60, &qword_280449900, &unk_26BDA3CA0);
    v73 = __swift_getEnumTagSinglePayload(v70 + v69, 1, v72);
    v74 = v151;
    if (v73 == 1)
    {
      sub_26BD04E80(v71, &qword_280449900, &unk_26BDA3CA0);
      goto LABEL_37;
    }

    goto LABEL_21;
  }

  v75 = v147;
  sub_26BD0D868();
  v76 = __swift_getEnumTagSinglePayload(v70 + v69, 1, v72);
  v74 = v151;
  if (v76 == 1)
  {
    sub_26BD04E80(v60, &qword_280449900, &unk_26BDA3CA0);
    sub_26BD0D920(v75, type metadata accessor for AuthResponse.ImproveSearchConsent);
LABEL_21:
    v63 = &qword_280449928;
    v64 = &qword_26BDA3CD0;
    v65 = v71;
    goto LABEL_22;
  }

  v78 = v146;
  sub_26BD0D8C4();
  v79 = *v75 == *v78 && v75[1] == v78[1];
  if (!v79 && (sub_26BDA0FB0() & 1) == 0 || (v75[2] == v78[2] ? (v80 = v75[3] == v78[3]) : (v80 = 0), !v80 && (sub_26BDA0FB0() & 1) == 0))
  {
    sub_26BD0D920(v78, type metadata accessor for AuthResponse.ImproveSearchConsent);
    sub_26BD04E80(v60, &qword_280449900, &unk_26BDA3CA0);
    sub_26BD0D920(v75, type metadata accessor for AuthResponse.ImproveSearchConsent);
    v65 = v71;
    v63 = &qword_280449900;
    v64 = &unk_26BDA3CA0;
    goto LABEL_22;
  }

  v81 = *(v72 + 24);
  sub_26BDA0850();
  sub_26BD0D430(&qword_2804490C0, MEMORY[0x277D216C8]);
  v82 = sub_26BDA0BB0();
  sub_26BD0D920(v78, type metadata accessor for AuthResponse.ImproveSearchConsent);
  sub_26BD04E80(v60, &qword_280449900, &unk_26BDA3CA0);
  sub_26BD0D920(v75, type metadata accessor for AuthResponse.ImproveSearchConsent);
  sub_26BD04E80(v71, &qword_280449900, &unk_26BDA3CA0);
  if ((v82 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_37:
  v83 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID;
  swift_beginAccess();
  LODWORD(v83) = *(v59 + v83);
  v84 = OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedUsesPhoneNumberForAppleID;
  v85 = v160;
  swift_beginAccess();
  if (v83 != *(v85 + v84))
  {
    goto LABEL_23;
  }

  v86 = (v59 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  swift_beginAccess();
  v87 = *v86;
  v88 = v86[1];
  v89 = (v160 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedGivenName);
  swift_beginAccess();
  v90 = v87 == *v89 && v88 == v89[1];
  if (!v90 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v91 = (v59 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  swift_beginAccess();
  v92 = *v91;
  v93 = v91[1];
  v94 = (v160 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedFamilyName);
  swift_beginAccess();
  v95 = v92 == *v94 && v93 == v94[1];
  if (!v95 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v96 = (v59 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  swift_beginAccess();
  v97 = *v96;
  v98 = v96[1];
  v99 = (v160 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedNickname);
  swift_beginAccess();
  v100 = v97 == *v99 && v98 == v99[1];
  if (!v100 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v101 = (v59 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  swift_beginAccess();
  v102 = *v101;
  v103 = v101[1];
  v104 = (v160 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedEmailAddress);
  swift_beginAccess();
  v105 = v102 == *v104 && v103 == v104[1];
  if (!v105 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v106 = (v59 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
  swift_beginAccess();
  v107 = *v106;
  v108 = v106[1];
  v109 = (v160 + OBJC_IVAR____TtCV15SupportServices12AuthResponseP33_634C8733C64163B592F193A7A8756DAC13_StorageClass__deprecatedRegionCode);
  swift_beginAccess();
  v110 = v107 == *v109 && v108 == v109[1];
  if (!v110 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_23;
  }

  swift_beginAccess();
  sub_26BD0D868();
  swift_beginAccess();
  v111 = *(v142 + 48);
  v112 = v74;
  v113 = v144;
  sub_26BD0D868();
  sub_26BD0D868();
  v114 = v143;
  if (__swift_getEnumTagSinglePayload(v113, 1, v143) != 1)
  {
    v117 = v141;
    sub_26BD0D868();
    v118 = __swift_getEnumTagSinglePayload(v113 + v111, 1, v114);
    v116 = v145;
    if (v118 == 1)
    {
      sub_26BD04E80(v151, &qword_280449840, &qword_26BDA36D8);
      sub_26BD0D920(v117, type metadata accessor for PhoneNumber);
      goto LABEL_69;
    }

    v119 = v137;
    sub_26BD0D8C4();
    v120 = static PhoneNumber.== infix(_:_:)();
    sub_26BD0D920(v119, type metadata accessor for PhoneNumber);
    sub_26BD04E80(v151, &qword_280449840, &qword_26BDA36D8);
    sub_26BD0D920(v117, type metadata accessor for PhoneNumber);
    sub_26BD04E80(v113, &qword_280449840, &qword_26BDA36D8);
    if (v120)
    {
      goto LABEL_71;
    }

LABEL_23:

    return 0;
  }

  sub_26BD04E80(v112, &qword_280449840, &qword_26BDA36D8);
  v115 = __swift_getEnumTagSinglePayload(v113 + v111, 1, v114);
  v116 = v145;
  if (v115 != 1)
  {
LABEL_69:
    v63 = &qword_280449920;
    v64 = &qword_26BDA9390;
    v65 = v113;
    goto LABEL_22;
  }

  sub_26BD04E80(v113, &qword_280449840, &qword_26BDA36D8);
LABEL_71:
  swift_beginAccess();
  sub_26BD0D868();
  v121 = v116;
  swift_beginAccess();
  v122 = *(v138 + 48);
  v123 = v140;
  sub_26BD0D868();
  v124 = v123;
  sub_26BD0D868();
  v125 = v139;
  if (__swift_getEnumTagSinglePayload(v123, 1, v139) == 1)
  {

    sub_26BD04E80(v121, &qword_280449848, &qword_26BDA36E0);
    if (__swift_getEnumTagSinglePayload(v123 + v122, 1, v125) == 1)
    {
      sub_26BD04E80(v123, &qword_280449848, &qword_26BDA36E0);
      return 1;
    }

    goto LABEL_77;
  }

  v126 = v136;
  sub_26BD0D868();
  if (__swift_getEnumTagSinglePayload(v123 + v122, 1, v125) == 1)
  {

    sub_26BD04E80(v145, &qword_280449848, &qword_26BDA36E0);
    sub_26BD0D920(v126, type metadata accessor for AuthResponse.AuthenticationToken);
LABEL_77:
    v127 = &qword_280449918;
    v128 = &unk_26BDA3CC0;
    v129 = v123;
LABEL_88:
    sub_26BD04E80(v129, v127, v128);
    return 0;
  }

  v130 = v135;
  sub_26BD0D8C4();
  v131 = *v126 == *v130 && v126[1] == v130[1];
  if (!v131 && (sub_26BDA0FB0() & 1) == 0 || v126[2] != v130[2] || v126[3] != v130[3])
  {

    sub_26BD04E80(v145, &qword_280449848, &qword_26BDA36E0);
    sub_26BD0D920(v130, type metadata accessor for AuthResponse.AuthenticationToken);
    sub_26BD0D920(v126, type metadata accessor for AuthResponse.AuthenticationToken);
    v129 = v124;
    v127 = &qword_280449848;
    v128 = &qword_26BDA36E0;
    goto LABEL_88;
  }

  v132 = *(v125 + 28);
  sub_26BDA0850();
  sub_26BD0D430(&qword_2804490C0, MEMORY[0x277D216C8]);
  v133 = sub_26BDA0BB0();

  sub_26BD04E80(v145, &qword_280449848, &qword_26BDA36E0);
  sub_26BD0D920(v130, type metadata accessor for AuthResponse.AuthenticationToken);
  sub_26BD0D920(v126, type metadata accessor for AuthResponse.AuthenticationToken);
  sub_26BD04E80(v124, &qword_280449848, &qword_26BDA36E0);
  return (v133 & 1) != 0;
}

uint64_t _s15SupportServices0A19OptionTypeNamespaceV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26BDA0850();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s15SupportServices0A19OptionTypeNamespaceV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_26BDA0850();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_26BD0AE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD0D430(&qword_2804498F8, type metadata accessor for AuthResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD0AF08(uint64_t a1)
{
  v2 = sub_26BD0D430(&qword_2804498E0, type metadata accessor for AuthResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD0AFD0()
{
  sub_26BD0D430(&qword_2804498E0, type metadata accessor for AuthResponse);

  return sub_26BDA0A00();
}

uint64_t sub_26BD0B050()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459EF8);
  __swift_project_value_buffer(v0, qword_280459EF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26BDA3650;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "uses_phone_number_for_apple_id";
  *(v5 + 8) = 30;
  *(v5 + 16) = 2;
  *(v5 + 24) = "usesPhoneNumberForAppleID";
  *(v5 + 32) = 25;
  *(v5 + 40) = 2;
  v6 = *MEMORY[0x277D21878];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "given_name";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  *(v9 + 24) = "firstName";
  *(v9 + 32) = 9;
  *(v9 + 40) = 2;
  v8();
  v10 = v1[14];
  v11 = (v4 + 2 * v2);
  *v11 = 3;
  v12 = v11 + v10;
  *v12 = "family_name";
  *(v12 + 1) = 11;
  v12[16] = 2;
  *(v12 + 3) = "lastName";
  *(v12 + 4) = 8;
  v12[40] = 2;
  v8();
  v13 = v1[14];
  v14 = (v4 + 3 * v2);
  *v14 = 4;
  v15 = v14 + v13;
  *v15 = "nickname";
  *(v15 + 1) = 8;
  v15[16] = 2;
  *(v15 + 3) = "nickName";
  *(v15 + 4) = 8;
  v15[40] = 2;
  v8();
  v16 = v1[14];
  v17 = (v4 + 4 * v2);
  *v17 = 5;
  v18 = v17 + v16;
  *v18 = "email_address";
  *(v18 + 1) = 13;
  v18[16] = 2;
  *(v18 + 3) = "email";
  *(v18 + 4) = 5;
  v18[40] = 2;
  v8();
  v19 = (v4 + 5 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "region_code";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v21 = *MEMORY[0x277D21888];
  v8();
  v22 = (v4 + 6 * v2);
  v23 = v22 + v1[14];
  *v22 = 7;
  *v23 = "phone";
  *(v23 + 1) = 5;
  v23[16] = 2;
  v24 = *MEMORY[0x277D21870];
  v8();
  v25 = (v4 + 7 * v2);
  v26 = v25 + v1[14];
  *v25 = 8;
  *v26 = "facade_auth";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 8 * v2);
  v28 = v27 + v1[14];
  *v27 = 9;
  *v28 = "reachable_at";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v4 + 9 * v2);
  v30 = v29 + v1[14];
  *v29 = 10;
  *v30 = "is_age_under_thirteen";
  *(v30 + 1) = 21;
  v30[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD0B478()
{
  v1 = v0;
  while (1)
  {
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 10:
        sub_26BDA0920();
        goto LABEL_11;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        sub_26BDA0990();
        goto LABEL_11;
      case 7:
        v7 = *(type metadata accessor for AuthResponse.Account(0) + 52);
        type metadata accessor for PhoneNumber(0);
        OUTLINED_FUNCTION_1_0();
        v6 = &qword_280449910;
        goto LABEL_9;
      case 8:
        v4 = *(type metadata accessor for AuthResponse.Account(0) + 56);
        type metadata accessor for AuthResponse.AuthenticationToken(0);
        OUTLINED_FUNCTION_5_0();
        v6 = &qword_2804498A0;
LABEL_9:
        sub_26BD0D430(v6, v5);
        OUTLINED_FUNCTION_22_0();
        sub_26BDA09B0();
        goto LABEL_11;
      case 9:
        type metadata accessor for PhoneNumber(0);
        OUTLINED_FUNCTION_1_0();
        sub_26BD0D430(&qword_280449910, v8);
        OUTLINED_FUNCTION_22_0();
        sub_26BDA09A0();
LABEL_11:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD0B66C()
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v8 = &v52 - v7;
  v53 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  v9 = OUTLINED_FUNCTION_34(v53);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  v14 = v13 - v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  OUTLINED_FUNCTION_110(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  v54 = type metadata accessor for PhoneNumber(0);
  v21 = OUTLINED_FUNCTION_34(v54);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_44();
  v26 = (v25 - v24);
  if (*v0 != 1 || (result = sub_26BDA0A40(), !v1))
  {
    v28 = *(v0 + 8);
    v29 = *(v0 + 16);
    OUTLINED_FUNCTION_29();
    if (!v30 || (result = OUTLINED_FUNCTION_9_0(), (v2 = v1) == 0))
    {
      v31 = *(v0 + 24);
      v32 = *(v0 + 32);
      OUTLINED_FUNCTION_29();
      if (!v33 || (result = OUTLINED_FUNCTION_9_0(), (v2 = v1) == 0))
      {
        v34 = *(v0 + 40);
        v35 = *(v0 + 48);
        OUTLINED_FUNCTION_29();
        if (!v36 || (result = OUTLINED_FUNCTION_9_0(), (v2 = v1) == 0))
        {
          v37 = *(v0 + 56);
          v38 = *(v0 + 64);
          OUTLINED_FUNCTION_29();
          if (!v39 || (result = OUTLINED_FUNCTION_9_0(), (v2 = v1) == 0))
          {
            v40 = *(v0 + 72);
            v41 = *(v0 + 80);
            OUTLINED_FUNCTION_29();
            if (!v42 || (result = OUTLINED_FUNCTION_9_0(), (v2 = v1) == 0))
            {
              v52 = type metadata accessor for AuthResponse.Account(0);
              v43 = v52[13];
              sub_26BD0D868();
              if (__swift_getEnumTagSinglePayload(v20, 1, v54) == 1)
              {
                sub_26BD04E80(v20, &qword_280449840, &qword_26BDA36D8);
              }

              else
              {
                sub_26BD0D8C4();
                OUTLINED_FUNCTION_1_0();
                sub_26BD0D430(v44, v45);
                sub_26BDA0AD0();
                result = sub_26BD0D920(v26, type metadata accessor for PhoneNumber);
                if (v2)
                {
                  return result;
                }
              }

              v46 = v52[14];
              sub_26BD0D868();
              if (__swift_getEnumTagSinglePayload(v8, 1, v53) == 1)
              {
                sub_26BD04E80(v8, &qword_280449848, &qword_26BDA36E0);
              }

              else
              {
                OUTLINED_FUNCTION_6_0();
                sub_26BD0D8C4();
                OUTLINED_FUNCTION_5_0();
                sub_26BD0D430(v47, v48);
                sub_26BDA0AD0();
                result = sub_26BD0D920(v14, v26);
                if (v2)
                {
                  return result;
                }
              }

              if (!*(*(v0 + 88) + 16) || (OUTLINED_FUNCTION_1_0(), sub_26BD0D430(v49, v50), result = sub_26BDA0AC0(), !v2))
              {
                if (*(v0 + 96) != 1 || (result = sub_26BDA0A40(), !v2))
                {
                  v51 = v0 + v52[12];
                  return sub_26BDA0830();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BD0BAE4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v79 = type metadata accessor for AuthResponse.AuthenticationToken(0);
  v4 = OUTLINED_FUNCTION_34(v79);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449848, &qword_26BDA36E0);
  OUTLINED_FUNCTION_110(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v78 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449918, &unk_26BDA3CC0);
  OUTLINED_FUNCTION_34(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  v21 = type metadata accessor for PhoneNumber(0);
  v22 = OUTLINED_FUNCTION_34(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_44();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449840, &qword_26BDA36D8);
  OUTLINED_FUNCTION_110(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v31);
  v33 = &v74 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449920, &qword_26BDA9390);
  OUTLINED_FUNCTION_34(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v37);
  v39 = &v74 - v38;
  if (*a1 != *a2)
  {
    goto LABEL_2;
  }

  v42 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v42 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_2;
  }

  v43 = *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4);
  if (!v43 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_2;
  }

  v44 = *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6);
  if (!v44 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_2;
  }

  v45 = *(a1 + 7) == *(a2 + 7) && *(a1 + 8) == *(a2 + 8);
  if (!v45 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_2;
  }

  v46 = *(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10);
  if (!v46 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_2;
  }

  v75 = v9;
  v77 = v20;
  v76 = type metadata accessor for AuthResponse.Account(0);
  v47 = *(v76 + 52);
  v48 = *(v34 + 48);
  sub_26BD0D868();
  sub_26BD0D868();
  OUTLINED_FUNCTION_56(v39);
  if (v42)
  {
    OUTLINED_FUNCTION_56(&v39[v48]);
    if (v42)
    {
      sub_26BD04E80(v39, &qword_280449840, &qword_26BDA36D8);
      goto LABEL_39;
    }

LABEL_37:
    v50 = &qword_280449920;
    v51 = &qword_26BDA9390;
    v52 = v39;
LABEL_59:
    sub_26BD04E80(v52, v50, v51);
    goto LABEL_2;
  }

  sub_26BD0D868();
  OUTLINED_FUNCTION_56(&v39[v48]);
  if (v49)
  {
    sub_26BD0D920(v33, type metadata accessor for PhoneNumber);
    goto LABEL_37;
  }

  sub_26BD0D8C4();
  v53 = static PhoneNumber.== infix(_:_:)();
  sub_26BD0D920(v27, type metadata accessor for PhoneNumber);
  sub_26BD0D920(v33, type metadata accessor for PhoneNumber);
  sub_26BD04E80(v39, &qword_280449840, &qword_26BDA36D8);
  if ((v53 & 1) == 0)
  {
    goto LABEL_2;
  }

LABEL_39:
  v54 = v76;
  v55 = *(v76 + 56);
  v56 = *(v15 + 48);
  v57 = v77;
  sub_26BD0D868();
  v58 = v57;
  sub_26BD0D868();
  v59 = v79;
  if (__swift_getEnumTagSinglePayload(v57, 1, v79) != 1)
  {
    v66 = v78;
    sub_26BD0D868();
    if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v59) != 1)
    {
      v67 = v75;
      sub_26BD0D8C4();
      v68 = *v66 == *v67 && v66[1] == v67[1];
      if (v68 || (sub_26BDA0FB0()) && v66[2] == v67[2] && v66[3] == v67[3])
      {
        v69 = *(v59 + 28);
        sub_26BDA0850();
        OUTLINED_FUNCTION_0_0();
        sub_26BD0D430(v70, v71);
        v72 = sub_26BDA0BB0();
        OUTLINED_FUNCTION_6_0();
        sub_26BD0D920(v67, v73);
        sub_26BD0D920(v66, v59);
        sub_26BD04E80(v58, &qword_280449848, &qword_26BDA36E0);
        if ((v72 & 1) == 0)
        {
          goto LABEL_2;
        }

        goto LABEL_42;
      }

      sub_26BD0D920(v67, type metadata accessor for AuthResponse.AuthenticationToken);
      sub_26BD0D920(v66, type metadata accessor for AuthResponse.AuthenticationToken);
      v50 = &qword_280449848;
      v51 = &qword_26BDA36E0;
      goto LABEL_58;
    }

    sub_26BD0D920(v66, type metadata accessor for AuthResponse.AuthenticationToken);
LABEL_47:
    v50 = &qword_280449918;
    v51 = &unk_26BDA3CC0;
LABEL_58:
    v52 = v58;
    goto LABEL_59;
  }

  if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v59) != 1)
  {
    goto LABEL_47;
  }

  sub_26BD04E80(v57, &qword_280449848, &qword_26BDA36E0);
LABEL_42:
  v60 = *(a1 + 11);
  v61 = *(a2 + 11);
  sub_26BD00B40();
  if ((v62 & 1) != 0 && a1[96] == a2[96])
  {
    v63 = *(v54 + 48);
    sub_26BDA0850();
    OUTLINED_FUNCTION_0_0();
    sub_26BD0D430(v64, v65);
    v40 = sub_26BDA0BB0();
    return v40 & 1;
  }

LABEL_2:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_26BD0C18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD0C200(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_26BD0C274(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_26BD0C2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD0D430(&qword_280449938, type metadata accessor for AuthResponse.Account);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD0C368(uint64_t a1)
{
  v2 = sub_26BD0D430(&qword_2804498C0, type metadata accessor for AuthResponse.Account);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD0C430()
{
  sub_26BD0D430(&qword_2804498C0, type metadata accessor for AuthResponse.Account);

  return sub_26BDA0A00();
}

uint64_t sub_26BD0C4B0()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F10);
  __swift_project_value_buffer(v0, qword_280459F10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "token";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "creation_time_milliseconds";
  *(v10 + 1) = 26;
  v10[16] = 2;
  *(v10 + 3) = "epochTs";
  *(v10 + 4) = 7;
  v10[40] = 2;
  v11 = *MEMORY[0x277D21878];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ds_id";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v14 = *MEMORY[0x277D21888];
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD0C6DC()
{
  OUTLINED_FUNCTION_17_0();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0960();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t sub_26BD0C764()
{
  OUTLINED_FUNCTION_17_0();
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    if (!v0[2] || (result = OUTLINED_FUNCTION_23_0(), !v1))
    {
      if (!v0[3] || (result = OUTLINED_FUNCTION_23_0(), !v1))
      {
        v6 = v0 + *(type metadata accessor for AuthResponse.AuthenticationToken(0) + 28);
        OUTLINED_FUNCTION_129();
        return sub_26BDA0830();
      }
    }
  }

  return result;
}

uint64_t sub_26BD0C814()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0 || *(v1 + 16) != *(v0 + 16) || *(v1 + 24) != *(v0 + 24))
  {
    return 0;
  }

  v6 = *(type metadata accessor for AuthResponse.AuthenticationToken(0) + 28);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_0();
  sub_26BD0D430(v7, v8);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD0C8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD0C954(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD0C9F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD0D430(&qword_280449940, type metadata accessor for AuthResponse.AuthenticationToken);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD0CA98(uint64_t a1)
{
  v2 = sub_26BD0D430(&qword_2804498A0, type metadata accessor for AuthResponse.AuthenticationToken);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD0CB60()
{
  sub_26BD0D430(&qword_2804498A0, type metadata accessor for AuthResponse.AuthenticationToken);

  return sub_26BDA0A00();
}

uint64_t sub_26BD0CBE0()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F28);
  __swift_project_value_buffer(v0, qword_280459F28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "details";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD0CDA8()
{
  OUTLINED_FUNCTION_17_0();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t sub_26BD0CE14()
{
  OUTLINED_FUNCTION_17_0();
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    OUTLINED_FUNCTION_29();
    if (!v8 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v9 = v0 + *(type metadata accessor for AuthResponse.ImproveSearchConsent(0) + 24);
      OUTLINED_FUNCTION_129();
      return sub_26BDA0830();
    }
  }

  return result;
}

uint64_t sub_26BD0CEB0()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for AuthResponse.ImproveSearchConsent(0) + 24);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_0();
  sub_26BD0D430(v8, v9);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD0CF5C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26BDA1050();
  a1(0);
  sub_26BD0D430(a2, a3);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD0D004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD0D078(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD0D11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD0D430(&qword_280449948, type metadata accessor for AuthResponse.ImproveSearchConsent);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD0D1BC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26BDA0B10();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_26BD0D258(uint64_t a1)
{
  v2 = sub_26BD0D430(&qword_280449880, type metadata accessor for AuthResponse.ImproveSearchConsent);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD0D320()
{
  sub_26BD0D430(&qword_280449880, type metadata accessor for AuthResponse.ImproveSearchConsent);

  return sub_26BDA0A00();
}

uint64_t sub_26BD0D430(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BD0D868()
{
  OUTLINED_FUNCTION_184();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_34(v4);
  (*(v5 + 16))(v0, v1);
  return v0;
}

uint64_t sub_26BD0D8C4()
{
  OUTLINED_FUNCTION_184();
  v3 = v2(0);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26BD0D920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26BD0D978()
{
  OUTLINED_FUNCTION_184();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_34(v4);
  (*(v5 + 40))(v0, v1);
  return v0;
}

uint64_t OUTLINED_FUNCTION_9_0()
{

  return sub_26BDA0AB0();
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t *a1)
{
  result = *a1;
  v4 = *(v2 + 8);
  v5 = *v1;
  v6 = v1[1];
  return result;
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return sub_26BDA0A80();
}

uint64_t CustomerContactInfo.familyName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_147();
}

uint64_t CustomerContactInfo.familyName.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t CustomerContactInfo.country.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_147();
}

uint64_t CustomerContactInfo.country.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t CustomerContactInfo.phoneCountryCode.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_147();
}

uint64_t CustomerContactInfo.phoneCountryCode.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t CustomerContactInfo.phoneNumber.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_147();
}

uint64_t CustomerContactInfo.phoneNumber.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 88);

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t CustomerContactInfo.emailAddress.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_147();
}

uint64_t CustomerContactInfo.emailAddress.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 104);

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t CustomerContactInfo.locale.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_147();
}

uint64_t CustomerContactInfo.locale.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t CustomerContactInfo.userEnteredLanguage.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_147();
}

uint64_t CustomerContactInfo.userEnteredLanguage.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t CustomerContactInfo.clientProvidedInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_0();
  v7 = type metadata accessor for CustomerContactInfo(0);
  v8 = OUTLINED_FUNCTION_32_0(*(v7 + 56));
  sub_26BD0E880(v8, v9, &qword_2804499C8, &qword_26BDA3CE0);
  v10 = type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  v11 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v11, v12, v10);
  if (v13)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v14 = a1 + *(v10 + 20);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v15 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_112(v15, v16, v10);
    if (!v13)
    {
      return sub_26BD04E80(v1, &qword_2804499C8, &qword_26BDA3CE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    v17 = OUTLINED_FUNCTION_126();
    return sub_26BD0E8FC(v17, v18, v19);
  }

  return result;
}

uint64_t CustomerContactInfo.clientProvidedInfo.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for CustomerContactInfo(v2) + 56);
  sub_26BD04E80(v1 + v3, &qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_1_1();
  sub_26BD0E8FC(v0, v1 + v3, v4);
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t CustomerContactInfo.ClientProvidedInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0) + 20);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

void (*CustomerContactInfo.clientProvidedInfo.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for CustomerContactInfo(0) + 56);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_32_0(v11);
  sub_26BD0E880(v12, v13, &qword_2804499C8, &qword_26BDA3CE0);
  v14 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v17 = v10 + *(v7 + 20);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v18 = OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_112(v18, v19, v7);
    if (!v16)
    {
      sub_26BD04E80(v6, &qword_2804499C8, &qword_26BDA3CE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_26BD0E8FC(v6, v10, v20);
  }

  return sub_26BD0E194;
}

uint64_t CustomerContactInfo.hasClientProvidedInfo.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_0();
  v4 = type metadata accessor for CustomerContactInfo(0);
  v5 = OUTLINED_FUNCTION_32_0(*(v4 + 56));
  sub_26BD0E880(v5, v6, &qword_2804499C8, &qword_26BDA3CE0);
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  v7 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v12, v13, &qword_26BDA3CE0);
  return v11;
}

Swift::Void __swiftcall CustomerContactInfo.clearClientProvidedInfo()()
{
  v1 = type metadata accessor for CustomerContactInfo(0);
  sub_26BD04E80(v0 + *(v1 + 56), &qword_2804499C8, &qword_26BDA3CE0);
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t CustomerContactInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  v1 = *(type metadata accessor for CustomerContactInfo(v0) + 52);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_148();

  return v6(v5);
}

uint64_t CustomerContactInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for CustomerContactInfo(v0) + 52);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_234();

  return v6(v5);
}

uint64_t CustomerContactInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for CustomerContactInfo(v0) + 52);
  return OUTLINED_FUNCTION_185();
}

uint64_t CustomerContactInfo.ClientProvidedInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  v1 = *(type metadata accessor for CustomerContactInfo.ClientProvidedInfo(v0) + 20);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_148();

  return v6(v5);
}

uint64_t CustomerContactInfo.ClientProvidedInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for CustomerContactInfo.ClientProvidedInfo(v0) + 20);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_234();

  return v6(v5);
}

uint64_t CustomerContactInfo.ClientProvidedInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for CustomerContactInfo.ClientProvidedInfo(v0) + 20);
  return OUTLINED_FUNCTION_185();
}

uint64_t CustomerContactInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_34_0(v2);
  a1[14] = 0;
  a1[15] = v3;
  a1[16] = 0;
  a1[17] = v3;
  v4 = type metadata accessor for CustomerContactInfo(0);
  v5 = a1 + *(v4 + 52);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v6 = *(v4 + 56);
  type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Placemark.coordinate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_0();
  v7 = type metadata accessor for Placemark(0);
  v8 = OUTLINED_FUNCTION_32_0(*(v7 + 48));
  sub_26BD0E880(v8, v9, &qword_2804499D0, &qword_26BDA3CE8);
  v10 = type metadata accessor for Placemark.Coordinate(0);
  v11 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v11, v12, v10);
  if (v13)
  {
    OUTLINED_FUNCTION_82();
    v14 = a1 + *(v10 + 24);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v15 = OUTLINED_FUNCTION_114();
    result = OUTLINED_FUNCTION_112(v15, v16, v10);
    if (!v13)
    {
      return sub_26BD04E80(v1, &qword_2804499D0, &qword_26BDA3CE8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_0();
    v17 = OUTLINED_FUNCTION_126();
    return sub_26BD0E8FC(v17, v18, v19);
  }

  return result;
}

uint64_t sub_26BD0E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = a5(0);
  OUTLINED_FUNCTION_110(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v15 = &v17 - v14;
  sub_26BD0EBFC(a1, &v17 - v14, a6);
  return a7(v15);
}

uint64_t Placemark.coordinate.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for Placemark(v2) + 48);
  sub_26BD04E80(v1 + v3, &qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_2_0();
  sub_26BD0E8FC(v0, v1 + v3, v4);
  type metadata accessor for Placemark.Coordinate(0);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_26BD0E880(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_34(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_147();
  v9(v8);
  return a2;
}

uint64_t sub_26BD0E8FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_34(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_147();
  v8(v7);
  return a2;
}

void (*Placemark.coordinate.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Placemark.Coordinate(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_34(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Placemark(0) + 48);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_32_0(v11);
  sub_26BD0E880(v12, v13, &qword_2804499D0, &qword_26BDA3CE8);
  v14 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v14, v15, v7);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v17 = v10 + *(v7 + 24);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v18 = OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_112(v18, v19, v7);
    if (!v16)
    {
      sub_26BD04E80(v6, &qword_2804499D0, &qword_26BDA3CE8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_0();
    sub_26BD0E8FC(v6, v10, v20);
  }

  return sub_26BD0EAC8;
}

void sub_26BD0EAF0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = (*a1)[2];
  v14 = **a1;
  if (a2)
  {
    sub_26BD0EBFC((*a1)[4], v10, a5);
    sub_26BD04E80(v14 + v9, a3, a4);
    sub_26BD0E8FC(v10, v14 + v9, a5);
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    sub_26BD0EC58();
  }

  else
  {
    sub_26BD04E80(v14 + v9, a3, a4);
    sub_26BD0E8FC(v11, v14 + v9, a5);
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v13);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t sub_26BD0EBFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_34(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_147();
  v8(v7);
  return a2;
}

uint64_t sub_26BD0EC58()
{
  v1 = OUTLINED_FUNCTION_134();
  v3 = v2(v1);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Placemark.hasCoordinate.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_8_0();
  v4 = type metadata accessor for Placemark(0);
  v5 = OUTLINED_FUNCTION_32_0(*(v4 + 48));
  sub_26BD0E880(v5, v6, &qword_2804499D0, &qword_26BDA3CE8);
  type metadata accessor for Placemark.Coordinate(0);
  v7 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v12, v13, &qword_26BDA3CE8);
  return v11;
}

Swift::Void __swiftcall Placemark.clearCoordinate()()
{
  v1 = type metadata accessor for Placemark(0);
  sub_26BD04E80(v0 + *(v1 + 48), &qword_2804499D0, &qword_26BDA3CE8);
  type metadata accessor for Placemark.Coordinate(0);
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Placemark.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  v1 = *(type metadata accessor for Placemark(v0) + 44);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_148();

  return v6(v5);
}

uint64_t Placemark.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for Placemark(v0) + 44);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_234();

  return v6(v5);
}

uint64_t Placemark.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for Placemark(v0) + 44);
  return OUTLINED_FUNCTION_185();
}

uint64_t Placemark.Coordinate.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for Placemark.Coordinate(v0) + 24);
  return OUTLINED_FUNCTION_185();
}

uint64_t Placemark.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_34_0(v2);
  v3 = type metadata accessor for Placemark(0);
  v4 = a1 + *(v3 + 44);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v5 = *(v3 + 48);
  type metadata accessor for Placemark.Coordinate(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t CallContactDetails.phoneNumber.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_147();
}

uint64_t CallContactDetails.phoneNumber.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t CallContactDetails.operatingHours.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_147();
}

uint64_t CallContactDetails.operatingHours.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_26BD0F0F4()
{
  v0 = OUTLINED_FUNCTION_217();
  v2 = *(v1(v0) + 24);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_148();

  return v7(v6);
}

uint64_t sub_26BD0F19C()
{
  v0 = OUTLINED_FUNCTION_134();
  v2 = *(v1(v0) + 24);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_234();

  return v7(v6);
}

uint64_t CallContactDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for CallContactDetails(v0) + 24);
  return OUTLINED_FUNCTION_185();
}

uint64_t sub_26BD0F264@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_82();
  v3 = a1 + *(v2(0) + 24);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD0F2BC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449950);
  __swift_project_value_buffer(v0, qword_280449950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_26BDA3650;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "apple_id";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "given_name";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  *(v9 + 24) = "userEnteredFirstName";
  *(v9 + 32) = 20;
  *(v9 + 40) = 2;
  v10 = *MEMORY[0x277D21878];
  v8();
  v11 = v1[14];
  v12 = (v4 + 2 * v2);
  *v12 = 3;
  v13 = v12 + v11;
  *v13 = "family_name";
  *(v13 + 1) = 11;
  v13[16] = 2;
  *(v13 + 3) = "userEnteredLastName";
  *(v13 + 4) = 19;
  v13[40] = 2;
  v8();
  v14 = v1[14];
  v15 = (v4 + 3 * v2);
  *v15 = 4;
  v16 = v15 + v14;
  *v16 = "country";
  *(v16 + 1) = 7;
  v16[16] = 2;
  *(v16 + 3) = "userEnteredCountry";
  *(v16 + 4) = 18;
  v16[40] = 2;
  v8();
  v17 = v1[14];
  v18 = (v4 + 4 * v2);
  *v18 = 5;
  v19 = v18 + v17;
  *v19 = "phone_country_code";
  *(v19 + 1) = 18;
  v19[16] = 2;
  *(v19 + 3) = "userEnteredCountryCode";
  *(v19 + 4) = 22;
  v19[40] = 2;
  v8();
  v20 = v1[14];
  v21 = (v4 + 5 * v2);
  *v21 = 6;
  v22 = v21 + v20;
  *v22 = "phone_number";
  *(v22 + 1) = 12;
  v22[16] = 2;
  *(v22 + 3) = "userEnteredPhoneNumber";
  *(v22 + 4) = 22;
  v22[40] = 2;
  v8();
  v23 = v1[14];
  v24 = (v4 + 6 * v2);
  *v24 = 7;
  v25 = v24 + v23;
  *v25 = "email_address";
  *(v25 + 1) = 13;
  v25[16] = 2;
  *(v25 + 3) = "userEnteredEmail";
  *(v25 + 4) = 16;
  v25[40] = 2;
  v8();
  v26 = v1[14];
  v27 = (v4 + 7 * v2);
  *v27 = 8;
  v28 = v27 + v26;
  *v28 = "locale";
  *(v28 + 1) = 6;
  v28[16] = 2;
  *(v28 + 3) = "userEnteredLocale";
  *(v28 + 4) = 17;
  v28[40] = 2;
  v8();
  v29 = (v4 + 8 * v2);
  v30 = v29 + v1[14];
  *v29 = 9;
  *v30 = "user_entered_language";
  *(v30 + 1) = 21;
  v30[16] = 2;
  v8();
  v31 = (v4 + 9 * v2);
  v32 = v31 + v1[14];
  *v31 = 10;
  *v32 = "client_provided_info";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t CustomerContactInfo.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  while (1)
  {
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        sub_26BDA0990();
        goto LABEL_7;
      case 10:
        v4 = *(type metadata accessor for CustomerContactInfo(0) + 56);
        type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
        OUTLINED_FUNCTION_19_0();
        sub_26BD11FF8(&qword_2804499D8, v5);
        sub_26BDA09B0();
LABEL_7:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t CustomerContactInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_110(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_47_0();
  v9 = type metadata accessor for CustomerContactInfo.ClientProvidedInfo(v8);
  v10 = OUTLINED_FUNCTION_34(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_44();
  v15 = v14 - v13;
  v16 = *v0;
  v17 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v18 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v20 = v2[2];
    v21 = v2[3];
    OUTLINED_FUNCTION_29();
    if (!v22 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v23 = v2[4];
      v24 = v2[5];
      OUTLINED_FUNCTION_29();
      if (!v25 || (result = OUTLINED_FUNCTION_103(), !v1))
      {
        v26 = v2[6];
        v27 = v2[7];
        OUTLINED_FUNCTION_29();
        if (!v28 || (result = OUTLINED_FUNCTION_103(), !v1))
        {
          v29 = v2[8];
          v30 = v2[9];
          OUTLINED_FUNCTION_29();
          if (!v31 || (result = OUTLINED_FUNCTION_103(), !v1))
          {
            v32 = v2[10];
            v33 = v2[11];
            OUTLINED_FUNCTION_29();
            if (!v34 || (result = OUTLINED_FUNCTION_103(), !v1))
            {
              v35 = v2[12];
              v36 = v2[13];
              OUTLINED_FUNCTION_29();
              if (!v37 || (result = OUTLINED_FUNCTION_103(), !v1))
              {
                v38 = v2[14];
                v39 = v2[15];
                OUTLINED_FUNCTION_29();
                if (!v40 || (result = OUTLINED_FUNCTION_103(), !v1))
                {
                  v41 = v2[16];
                  v42 = v2[17];
                  OUTLINED_FUNCTION_29();
                  if (!v43 || (result = OUTLINED_FUNCTION_103(), !v1))
                  {
                    v44 = type metadata accessor for CustomerContactInfo(0);
                    sub_26BD0E880(v2 + *(v44 + 56), v3, &qword_2804499C8, &qword_26BDA3CE0);
                    if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
                    {
                      sub_26BD04E80(v3, &qword_2804499C8, &qword_26BDA3CE0);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_1_1();
                      sub_26BD0E8FC(v3, v15, v45);
                      OUTLINED_FUNCTION_19_0();
                      sub_26BD11FF8(v46, v47);
                      OUTLINED_FUNCTION_36_0();
                      result = sub_26BD0EC58();
                      if (v1)
                      {
                        return result;
                      }
                    }

                    v48 = *(v44 + 52);
                    return OUTLINED_FUNCTION_104();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static CustomerContactInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_171();
  v3 = type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0);
  v4 = OUTLINED_FUNCTION_34(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_110(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v15 = (&v45 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499E0, &qword_26BDA3D08);
  OUTLINED_FUNCTION_34(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_0();
  v20 = *v1 == *v0 && v1[1] == v0[1];
  if (!v20 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v21 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v21 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v22 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v22 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v23 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v23 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v24 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v24 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v25 = v1[10] == v0[10] && v1[11] == v0[11];
  if (!v25 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v26 = v1[12] == v0[12] && v1[13] == v0[13];
  if (!v26 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v27 = v1[14] == v0[14] && v1[15] == v0[15];
  if (!v27 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v28 = v1[16] == v0[16] && v1[17] == v0[17];
  if (!v28 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_56;
  }

  v46 = type metadata accessor for CustomerContactInfo(0);
  v29 = *(v46 + 56);
  v30 = *(v16 + 48);
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_28(v2);
  if (v20)
  {
    OUTLINED_FUNCTION_28(v2 + v30);
    if (v20)
    {
      sub_26BD04E80(v2, &qword_2804499C8, &qword_26BDA3CE0);
LABEL_64:
      v42 = *(v46 + 52);
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_1();
      sub_26BD11FF8(v43, v44);
      v34 = OUTLINED_FUNCTION_308();
      return v34 & 1;
    }

    goto LABEL_54;
  }

  sub_26BD0E880(v2, v15, &qword_2804499C8, &qword_26BDA3CE0);
  OUTLINED_FUNCTION_28(v2 + v30);
  if (v31)
  {
    sub_26BD0EC58();
LABEL_54:
    v32 = &qword_2804499E0;
    v33 = &qword_26BDA3D08;
LABEL_55:
    sub_26BD04E80(v2, v32, v33);
    goto LABEL_56;
  }

  OUTLINED_FUNCTION_1_1();
  sub_26BD0E8FC(v2 + v30, v9, v36);
  v37 = *v15 == *v9 && v15[1] == v9[1];
  if (!v37 && (sub_26BDA0FB0() & 1) == 0)
  {
    sub_26BD0EC58();
    sub_26BD0EC58();
    v32 = &qword_2804499C8;
    v33 = &qword_26BDA3CE0;
    goto LABEL_55;
  }

  v38 = *(v3 + 20);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_1();
  sub_26BD11FF8(v39, v40);
  v41 = OUTLINED_FUNCTION_54_0();
  sub_26BD0EC58();
  sub_26BD0EC58();
  sub_26BD04E80(v2, &qword_2804499C8, &qword_26BDA3CE0);
  if (v41)
  {
    goto LABEL_64;
  }

LABEL_56:
  v34 = 0;
  return v34 & 1;
}

uint64_t (*sub_26BD0FFC4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_26BD10018(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD11FF8(&qword_280449B08, type metadata accessor for CustomerContactInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD10098(uint64_t a1)
{
  v2 = sub_26BD11FF8(&qword_280449A28, type metadata accessor for CustomerContactInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD10108()
{
  sub_26BD11FF8(&qword_280449A28, type metadata accessor for CustomerContactInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD101A0()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449968);
  __swift_project_value_buffer(v0, qword_280449968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A00;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "formatted_name";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_26BDA0AE0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_26BDA0AF0();
}

uint64_t CustomerContactInfo.ClientProvidedInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t CustomerContactInfo.ClientProvidedInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v4 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v6 = *(type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0) + 20);
    return OUTLINED_FUNCTION_104();
  }

  return result;
}

uint64_t static CustomerContactInfo.ClientProvidedInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for CustomerContactInfo.ClientProvidedInfo(0) + 20);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_1();
  sub_26BD11FF8(v6, v7);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD10518(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD11FF8(&qword_280449B00, type metadata accessor for CustomerContactInfo.ClientProvidedInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD10598(uint64_t a1)
{
  v2 = sub_26BD11FF8(&qword_2804499D8, type metadata accessor for CustomerContactInfo.ClientProvidedInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD10608()
{
  sub_26BD11FF8(&qword_2804499D8, type metadata accessor for CustomerContactInfo.ClientProvidedInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD106A4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449980);
  __swift_project_value_buffer(v0, qword_280449980);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26BDA1A10;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "street_line_1";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  *(v5 + 24) = "streetAddress1";
  *(v5 + 32) = 14;
  *(v5 + 40) = 2;
  v6 = *MEMORY[0x277D21878];
  v7 = sub_26BDA0AE0();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "street_line_2";
  *(v9 + 8) = 13;
  *(v9 + 16) = 2;
  *(v9 + 24) = "streetAddress2";
  *(v9 + 32) = 14;
  *(v9 + 40) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "city";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v12 = *MEMORY[0x277D21870];
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "state";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "postal_code";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v17 = *MEMORY[0x277D21888];
  v8();
  v18 = v1[14];
  v19 = (v4 + 5 * v2);
  *v19 = 7;
  v20 = v19 + v18;
  *v20 = "iso_country_code";
  *(v20 + 1) = 16;
  v20[16] = 2;
  *(v20 + 3) = "country";
  *(v20 + 4) = 7;
  v20[40] = 2;
  v8();
  v21 = v1[14];
  v22 = (v4 + 6 * v2);
  *v22 = 6;
  v23 = v22 + v21;
  *v23 = "market";
  *(v23 + 1) = 6;
  v23[16] = 2;
  *(v23 + 3) = "regionName";
  *(v23 + 4) = 10;
  v23[40] = 2;
  v8();
  v24 = v1[14];
  v25 = (v4 + 7 * v2);
  *v25 = 8;
  v26 = v25 + v24;
  *v26 = "coordinate";
  *(v26 + 1) = 10;
  v26[16] = 2;
  *(v26 + 3) = "geo";
  *(v26 + 4) = 3;
  v26[40] = 2;
  v8();
  return sub_26BDA0AF0();
}

uint64_t Placemark.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  while (1)
  {
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        sub_26BDA0990();
        goto LABEL_7;
      case 8:
        v4 = *(type metadata accessor for Placemark(0) + 48);
        type metadata accessor for Placemark.Coordinate(0);
        OUTLINED_FUNCTION_20_1();
        sub_26BD11FF8(&qword_2804499F8, v5);
        sub_26BDA09B0();
LABEL_7:
        v1 = 0;
        break;
      default:
        continue;
    }
  }
}

uint64_t Placemark.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_110(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_47_0();
  v9 = type metadata accessor for Placemark.Coordinate(v8);
  v10 = OUTLINED_FUNCTION_34(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_44();
  v15 = v14 - v13;
  v16 = *v0;
  v17 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v18 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v20 = v2[2];
    v21 = v2[3];
    OUTLINED_FUNCTION_29();
    if (!v22 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v23 = v2[4];
      v24 = v2[5];
      OUTLINED_FUNCTION_29();
      if (!v25 || (result = OUTLINED_FUNCTION_103(), !v1))
      {
        v26 = v2[6];
        v27 = v2[7];
        OUTLINED_FUNCTION_29();
        if (!v28 || (result = OUTLINED_FUNCTION_103(), !v1))
        {
          v29 = v2[8];
          v30 = v2[9];
          OUTLINED_FUNCTION_29();
          if (!v31 || (result = OUTLINED_FUNCTION_103(), !v1))
          {
            v32 = v2[12];
            v33 = v2[13];
            OUTLINED_FUNCTION_29();
            if (!v34 || (result = OUTLINED_FUNCTION_103(), !v1))
            {
              v35 = v2[10];
              v36 = v2[11];
              OUTLINED_FUNCTION_29();
              if (!v37 || (result = OUTLINED_FUNCTION_103(), !v1))
              {
                v38 = type metadata accessor for Placemark(0);
                sub_26BD0E880(v2 + *(v38 + 48), v3, &qword_2804499D0, &qword_26BDA3CE8);
                if (__swift_getEnumTagSinglePayload(v3, 1, v9) == 1)
                {
                  sub_26BD04E80(v3, &qword_2804499D0, &qword_26BDA3CE8);
                }

                else
                {
                  OUTLINED_FUNCTION_2_0();
                  sub_26BD0E8FC(v3, v15, v39);
                  OUTLINED_FUNCTION_20_1();
                  sub_26BD11FF8(v40, v41);
                  OUTLINED_FUNCTION_36_0();
                  result = sub_26BD0EC58();
                  if (v1)
                  {
                    return result;
                  }
                }

                v42 = *(v38 + 44);
                return OUTLINED_FUNCTION_104();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Placemark.== infix(_:_:)()
{
  OUTLINED_FUNCTION_171();
  v3 = type metadata accessor for Placemark.Coordinate(0);
  v4 = OUTLINED_FUNCTION_34(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_44();
  v9 = (v8 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_110(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v15 = (&v44 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449A00, &unk_26BDA3D10);
  OUTLINED_FUNCTION_34(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_0();
  v20 = *v1 == *v0 && v1[1] == v0[1];
  if (!v20 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v21 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v21 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v22 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v22 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v23 = v1[6] == v0[6] && v1[7] == v0[7];
  if (!v23 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v24 = v1[8] == v0[8] && v1[9] == v0[9];
  if (!v24 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v25 = v1[10] == v0[10] && v1[11] == v0[11];
  if (!v25 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v26 = v1[12] == v0[12] && v1[13] == v0[13];
  if (!v26 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_46;
  }

  v45 = type metadata accessor for Placemark(0);
  v27 = *(v45 + 48);
  v28 = *(v16 + 48);
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_52_0();
  OUTLINED_FUNCTION_28(v2);
  if (v20)
  {
    OUTLINED_FUNCTION_28(v2 + v28);
    if (v20)
    {
      sub_26BD04E80(v2, &qword_2804499D0, &qword_26BDA3CE8);
LABEL_59:
      v41 = *(v45 + 44);
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_1();
      sub_26BD11FF8(v42, v43);
      v32 = OUTLINED_FUNCTION_308();
      return v32 & 1;
    }

    goto LABEL_44;
  }

  sub_26BD0E880(v2, v15, &qword_2804499D0, &qword_26BDA3CE8);
  OUTLINED_FUNCTION_28(v2 + v28);
  if (v29)
  {
    sub_26BD0EC58();
LABEL_44:
    v30 = &qword_280449A00;
    v31 = &unk_26BDA3D10;
LABEL_45:
    sub_26BD04E80(v2, v30, v31);
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_2_0();
  sub_26BD0E8FC(v2 + v28, v9, v34);
  v35 = *v15 == *v9 && v15[1] == v9[1];
  if (!v35 && (sub_26BDA0FB0() & 1) == 0 || (v15[2] == v9[2] ? (v36 = v15[3] == v9[3]) : (v36 = 0), !v36 && (sub_26BDA0FB0() & 1) == 0))
  {
    sub_26BD0EC58();
    sub_26BD0EC58();
    v30 = &qword_2804499D0;
    v31 = &qword_26BDA3CE8;
    goto LABEL_45;
  }

  v37 = *(v3 + 24);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_1();
  sub_26BD11FF8(v38, v39);
  v40 = OUTLINED_FUNCTION_54_0();
  sub_26BD0EC58();
  sub_26BD0EC58();
  sub_26BD04E80(v2, &qword_2804499D0, &qword_26BDA3CE8);
  if (v40)
  {
    goto LABEL_59;
  }

LABEL_46:
  v32 = 0;
  return v32 & 1;
}

uint64_t (*sub_26BD1128C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_26BD112E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD11FF8(&qword_280449AF8, type metadata accessor for Placemark);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD11360(uint64_t a1)
{
  v2 = sub_26BD11FF8(&qword_280449A50, type metadata accessor for Placemark);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD113D0()
{
  sub_26BD11FF8(&qword_280449A50, type metadata accessor for Placemark);

  return sub_26BDA0A00();
}

uint64_t sub_26BD11468()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449998);
  __swift_project_value_buffer(v0, qword_280449998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "latitude_string";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  *(v6 + 24) = "latitude";
  *(v6 + 32) = 8;
  *(v6 + 40) = 2;
  v7 = *MEMORY[0x277D21878];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude_string";
  *(v10 + 1) = 16;
  v10[16] = 2;
  *(v10 + 3) = "longitude";
  *(v10 + 4) = 9;
  v10[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD1174C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD11FF8(&qword_280449AF0, type metadata accessor for Placemark.Coordinate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD117CC(uint64_t a1)
{
  v2 = sub_26BD11FF8(&qword_2804499F8, type metadata accessor for Placemark.Coordinate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD1183C()
{
  sub_26BD11FF8(&qword_2804499F8, type metadata accessor for Placemark.Coordinate);

  return sub_26BDA0A00();
}

uint64_t sub_26BD118D4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_2804499B0);
  __swift_project_value_buffer(v0, qword_2804499B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "phone_number";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "operating_hours";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD11AC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_26BDA0B10();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_26BD11B70()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t sub_26BD11C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_60();
  v8 = *v4;
  v9 = v4[1];
  OUTLINED_FUNCTION_29();
  if (!v10 || (result = OUTLINED_FUNCTION_103(), !v5))
  {
    v12 = *(v6 + 16);
    v13 = *(v6 + 24);
    OUTLINED_FUNCTION_29();
    if (!v14 || (result = OUTLINED_FUNCTION_103(), !v5))
    {
      v15 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t sub_26BD11CAC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_86(a1, a2);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v4 + 16) == *(v3 + 16) && *(v4 + 24) == *(v3 + 24);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3(0) + 24);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_1();
  sub_26BD11FF8(v11, v12);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD11DA4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26BDA1050();
  a1(0);
  sub_26BD11FF8(a2, a3);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD11E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD11FF8(&qword_280449AE8, type metadata accessor for CallContactDetails);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD11F08(uint64_t a1)
{
  v2 = sub_26BD11FF8(&qword_280449A78, type metadata accessor for CallContactDetails);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD11F78()
{
  sub_26BD11FF8(&qword_280449A78, type metadata accessor for CallContactDetails);

  return sub_26BDA0A00();
}

uint64_t sub_26BD11FF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BD126A4()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  v4 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 52);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
    v6 = *(v1 + 56);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD12764()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = sub_26BDA0850();
    OUTLINED_FUNCTION_175(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 52);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499C8, &qword_26BDA3CE0);
      v7 = *(v3 + 56);
    }

    v8 = OUTLINED_FUNCTION_107(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_26BD1281C()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD12CA0(319, &qword_280449A98, type metadata accessor for CustomerContactInfo.ClientProvidedInfo);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26BD128F8()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 20));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD1296C()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 20));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_26BD129D4()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD12A64()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  v4 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v4);
  if (*(v5 + 84) == v0)
  {
    v6 = *(v1 + 44);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
    v6 = *(v1 + 48);
  }

  v7 = OUTLINED_FUNCTION_174(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_26BD12B24()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = sub_26BDA0850();
    OUTLINED_FUNCTION_175(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804499D0, &qword_26BDA3CE8);
      v7 = *(v3 + 48);
    }

    v8 = OUTLINED_FUNCTION_107(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

void sub_26BD12BDC()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD12CA0(319, &qword_280449AC0, type metadata accessor for Placemark.Coordinate);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BD12CA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BDA0DA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_44Tm()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_45Tm()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t OUTLINED_FUNCTION_7_0()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_34_0(uint64_t a1@<X8>)
{
  v1[4] = 0;
  v1[5] = a1;
  v1[6] = 0;
  v1[7] = a1;
  v1[8] = 0;
  v1[9] = a1;
  v1[10] = 0;
  v1[11] = a1;
  v1[12] = 0;
  v1[13] = a1;
}

uint64_t OUTLINED_FUNCTION_36_0()
{

  return sub_26BDA0AD0();
}

uint64_t OUTLINED_FUNCTION_52_0()
{

  return sub_26BD0E880(v0 + v3, v1 + v5, v2, v4);
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_26BD0E880(v0 + v3, v1, v2, v4);
}

uint64_t OUTLINED_FUNCTION_54_0()
{

  return sub_26BDA0BB0();
}

uint64_t PhoneNumber.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  v2 = type metadata accessor for PhoneNumber(0);
  v3 = v1 + *(v2 + 24);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v4 = *(v2 + 28);
  v5 = sub_26BDA07E0();

  return __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
}

uint64_t PhoneNumber.countryCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_147();
}

uint64_t PhoneNumber.countryCode.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t PhoneNumber.number.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_147();
}

uint64_t PhoneNumber.number.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t PhoneNumber.validSince.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for PhoneNumber(0);
  sub_26BD13300(v1 + *(v9 + 28), v8);
  v10 = sub_26BDA07E0();
  OUTLINED_FUNCTION_112(v8, 1, v10);
  if (!v11)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  sub_26BDA07D0();
  result = OUTLINED_FUNCTION_112(v8, 1, v10);
  if (!v11)
  {
    return sub_26BD04E80(v8, &qword_280449520, &unk_26BDA44F0);
  }

  return result;
}

uint64_t sub_26BD13300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BD13370(uint64_t a1)
{
  v2 = sub_26BDA07E0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return PhoneNumber.validSince.setter();
}

uint64_t PhoneNumber.validSince.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for PhoneNumber(v2) + 28);
  sub_26BD04E80(v1 + v3, &qword_280449520, &unk_26BDA44F0);
  v4 = sub_26BDA07E0();
  OUTLINED_FUNCTION_34(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*PhoneNumber.validSince.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_26BDA07E0();
  v3[2] = v7;
  OUTLINED_FUNCTION_18(v7);
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v12 = __swift_coroFrameAllocStub(v11);
  v3[5] = v12;
  v13 = *(type metadata accessor for PhoneNumber(0) + 28);
  *(v3 + 12) = v13;
  sub_26BD13300(v1 + v13, v6);
  OUTLINED_FUNCTION_112(v6, 1, v7);
  if (v14)
  {
    sub_26BDA07D0();
    OUTLINED_FUNCTION_112(v6, 1, v7);
    if (!v14)
    {
      sub_26BD04E80(v6, &qword_280449520, &unk_26BDA44F0);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v6, v7);
  }

  return sub_26BD1366C;
}

void sub_26BD1366C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_26BD04E80(v9 + v3, &qword_280449520, &unk_26BDA44F0);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_31_0();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_26BD04E80(v9 + v3, &qword_280449520, &unk_26BDA44F0);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_31_0();
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t PhoneNumber.hasValidSince.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for PhoneNumber(0);
  sub_26BD13300(v0 + *(v7 + 28), v6);
  v8 = sub_26BDA07E0();
  OUTLINED_FUNCTION_112(v6, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_26BD04E80(v6, &qword_280449520, &unk_26BDA44F0);
  return v10;
}

Swift::Void __swiftcall PhoneNumber.clearValidSince()()
{
  v1 = *(type metadata accessor for PhoneNumber(0) + 28);
  sub_26BD04E80(v0 + v1, &qword_280449520, &unk_26BDA44F0);
  v2 = sub_26BDA07E0();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t PhoneNumber.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for PhoneNumber(v0) + 24);
  return OUTLINED_FUNCTION_185();
}

uint64_t ProductPedigreeInfo.unknownFields.getter()
{
  v0 = *(type metadata accessor for ProductPedigreeInfo(0) + 28);
  v1 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_148();

  return v5(v4);
}

uint64_t ProductPedigreeInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for ProductPedigreeInfo(v2) + 28);
  v4 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t ProductPedigreeInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for ProductPedigreeInfo(v0) + 28);
  return OUTLINED_FUNCTION_185();
}

uint64_t ProductPedigreeInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  v3 = v1 + *(type metadata accessor for ProductPedigreeInfo(0) + 28);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t CountryCodeInfo.alpha2CountryCode.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_147();
}

uint64_t CountryCodeInfo.alpha2CountryCode.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t CountryCodeInfo.displayCountryCode.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_147();
}

uint64_t CountryCodeInfo.displayCountryCode.setter()
{
  OUTLINED_FUNCTION_171();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t CountryCodeInfo.unknownFields.getter()
{
  v0 = *(type metadata accessor for CountryCodeInfo(0) + 36);
  v1 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v1);
  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_148();

  return v5(v4);
}

uint64_t CountryCodeInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for CountryCodeInfo(v2) + 36);
  v4 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t CountryCodeInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for CountryCodeInfo(v0) + 36);
  return OUTLINED_FUNCTION_185();
}

uint64_t CountryCodeInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = v2;
  v3 = v1 + *(type metadata accessor for CountryCodeInfo(0) + 36);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD13E18(uint64_t (*a1)(void))
{
  v1 = *(a1(0) + 24);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_148();

  return v6(v5);
}

uint64_t sub_26BD13EC4()
{
  v2 = OUTLINED_FUNCTION_134();
  v4 = *(v3(v2) + 24);
  v5 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v5);
  v7 = *(v6 + 40);

  return v7(v1 + v4, v0);
}

uint64_t SymptomInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SymptomInfo(v0) + 24);
  return OUTLINED_FUNCTION_185();
}

uint64_t SymptomInfo.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_8_1(a1);
  v2 = v1 + *(type metadata accessor for SymptomInfo(0) + 24);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD13FCC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449B10);
  __swift_project_value_buffer(v0, qword_280449B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "country_code";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "number";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21870];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "valid_since";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t PhoneNumber.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  while (1)
  {
    result = sub_26BDA0900();
    if (v1 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 3)
    {
      v4 = *(type metadata accessor for PhoneNumber(0) + 28);
      sub_26BDA07E0();
      OUTLINED_FUNCTION_2_1();
      sub_26BD15EDC(&qword_280449B70, v5);
      sub_26BDA09B0();
LABEL_9:
      v1 = 0;
    }

    else if (result == 2 || result == 1)
    {
      sub_26BDA0990();
      goto LABEL_9;
    }
  }
}

uint64_t PhoneNumber.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_1();
  v31 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = sub_26BDA07E0();
  v11 = OUTLINED_FUNCTION_18(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v19 = v1[1];
  OUTLINED_FUNCTION_29();
  if (!v20 || (result = sub_26BDA0AB0(), !v0))
  {
    v22 = *(v2 + 16);
    v23 = *(v2 + 24);
    OUTLINED_FUNCTION_29();
    if (!v24 || (result = sub_26BDA0AB0(), !v0))
    {
      v25 = type metadata accessor for PhoneNumber(0);
      sub_26BD13300(v2 + *(v25 + 28), v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        sub_26BD04E80(v9, &qword_280449520, &unk_26BDA44F0);
      }

      else
      {
        v30 = v25;
        (*(v13 + 32))(v17, v9, v10);
        OUTLINED_FUNCTION_2_1();
        sub_26BD15EDC(v26, v27);
        sub_26BDA0AD0();
        if (v0)
        {
          return (*(v13 + 8))(v17, v10);
        }

        (*(v13 + 8))(v17, v10);
        v25 = v30;
      }

      v28 = v2 + *(v25 + 24);
      OUTLINED_FUNCTION_129();
      return sub_26BDA0830();
    }
  }

  return result;
}

uint64_t static PhoneNumber.== infix(_:_:)()
{
  OUTLINED_FUNCTION_171();
  v2 = sub_26BDA07E0();
  v3 = OUTLINED_FUNCTION_18(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
  OUTLINED_FUNCTION_110(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449528, &unk_26BDA34F0);
  OUTLINED_FUNCTION_34(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v19);
  v21 = &v37 - v20;
  v22 = *v1 == *v0 && v1[1] == v0[1];
  if (!v22 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v23 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v23 && (sub_26BDA0FB0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = type metadata accessor for PhoneNumber(0);
  v25 = *(v24 + 28);
  v26 = *(v16 + 48);
  sub_26BD13300(v1 + v25, v21);
  sub_26BD13300(v0 + v25, &v21[v26]);
  OUTLINED_FUNCTION_112(v21, 1, v2);
  if (v22)
  {
    OUTLINED_FUNCTION_112(&v21[v26], 1, v2);
    if (v22)
    {
      sub_26BD04E80(v21, &qword_280449520, &unk_26BDA44F0);
LABEL_22:
      v33 = *(v24 + 24);
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_2();
      sub_26BD15EDC(v34, v35);
      v28 = sub_26BDA0BB0();
      return v28 & 1;
    }

    goto LABEL_19;
  }

  sub_26BD13300(v21, v15);
  OUTLINED_FUNCTION_112(&v21[v26], 1, v2);
  if (v27)
  {
    (*(v5 + 8))(v15, v2);
LABEL_19:
    sub_26BD04E80(v21, &qword_280449528, &unk_26BDA34F0);
    goto LABEL_20;
  }

  (*(v5 + 32))(v9, &v21[v26], v2);
  OUTLINED_FUNCTION_2_1();
  sub_26BD15EDC(v29, v30);
  v31 = sub_26BDA0BB0();
  v32 = *(v5 + 8);
  v32(v9, v2);
  v32(v15, v2);
  sub_26BD04E80(v21, &qword_280449520, &unk_26BDA44F0);
  if (v31)
  {
    goto LABEL_22;
  }

LABEL_20:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_26BD1494C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD15EDC(&qword_280449C50, type metadata accessor for PhoneNumber);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD149CC(uint64_t a1)
{
  v2 = sub_26BD15EDC(&qword_280449910, type metadata accessor for PhoneNumber);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD14A3C()
{
  sub_26BD15EDC(&qword_280449910, type metadata accessor for PhoneNumber);

  return sub_26BDA0A00();
}

uint64_t sub_26BD14AD8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449B28);
  __swift_project_value_buffer(v0, qword_280449B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "super_group_id";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "family_class_id";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  *(v10 + 24) = "prodFamilyClassId";
  *(v10 + 32) = 17;
  *(v10 + 40) = 2;
  v11 = *MEMORY[0x277D21878];
  v9();
  v12 = v1[14];
  v13 = (v5 + 2 * v2);
  *v13 = 3;
  v14 = v13 + v12;
  *v14 = "group_family_id";
  *(v14 + 1) = 15;
  v14[16] = 2;
  *(v14 + 3) = "prodGroupFamilyId";
  *(v14 + 4) = 17;
  v14[40] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t ProductPedigreeInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t ProductPedigreeInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_1();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_29();
      if (!v12 || (result = OUTLINED_FUNCTION_103(), !v1))
      {
        v13 = *(type metadata accessor for ProductPedigreeInfo(0) + 28);
        return OUTLINED_FUNCTION_104();
      }
    }
  }

  return result;
}

uint64_t static ProductPedigreeInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40);
  if (!v10 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for ProductPedigreeInfo(0) + 28);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_2();
  sub_26BD15EDC(v12, v13);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD14FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD15EDC(&qword_280449C48, type metadata accessor for ProductPedigreeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD1502C(uint64_t a1)
{
  v2 = sub_26BD15EDC(&qword_280449BB0, type metadata accessor for ProductPedigreeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD1509C()
{
  sub_26BD15EDC(&qword_280449BB0, type metadata accessor for ProductPedigreeInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD15140()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449B40);
  __swift_project_value_buffer(v0, qword_280449B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "itc_code";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "country_code";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alpha_2_country_code";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_default";
  *(v14 + 1) = 10;
  v14[16] = 2;
  *(v14 + 3) = "default";
  *(v14 + 4) = 7;
  v14[40] = 2;
  v15 = *MEMORY[0x277D21878];
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "display_country_code";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t CountryCodeInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 5:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 4:
        OUTLINED_FUNCTION_129();
        sub_26BDA0920();
        break;
      default:
        continue;
    }
  }
}

uint64_t CountryCodeInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_1();
  v4 = *v1;
  v5 = v1[1];
  OUTLINED_FUNCTION_29();
  if (!v6 || (result = OUTLINED_FUNCTION_103(), (v0 = v2) == 0))
  {
    v8 = *(v3 + 16);
    v9 = *(v3 + 24);
    OUTLINED_FUNCTION_29();
    if (!v10 || (result = OUTLINED_FUNCTION_103(), (v0 = v2) == 0))
    {
      v11 = *(v3 + 32);
      v12 = *(v3 + 40);
      OUTLINED_FUNCTION_29();
      if (!v13 || (result = OUTLINED_FUNCTION_103(), (v0 = v2) == 0))
      {
        if (*(v3 + 48) != 1 || (v2 = v0, result = sub_26BDA0A40(), !v0))
        {
          v14 = *(v3 + 56);
          v15 = *(v3 + 64);
          OUTLINED_FUNCTION_29();
          if (!v16 || (result = OUTLINED_FUNCTION_103(), !v2))
          {
            v17 = *(type metadata accessor for CountryCodeInfo(0) + 36);
            return OUTLINED_FUNCTION_104();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static CountryCodeInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40);
  if (!v10 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 48) != *(v2 + 48))
  {
    return 0;
  }

  v12 = *(v3 + 56) == *(v2 + 56) && *(v3 + 64) == *(v2 + 64);
  if (!v12 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(type metadata accessor for CountryCodeInfo(0) + 36);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_2();
  sub_26BD15EDC(v14, v15);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD1573C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD15EDC(&qword_280449C40, type metadata accessor for CountryCodeInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD157BC(uint64_t a1)
{
  v2 = sub_26BD15EDC(&qword_280449BC8, type metadata accessor for CountryCodeInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD1582C()
{
  sub_26BD15EDC(&qword_280449BC8, type metadata accessor for CountryCodeInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD158CC()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280449B58);
  __swift_project_value_buffer(v0, qword_280449B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "symptom_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "symptom_category_id";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t SymptomInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_109();
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_129();
      sub_26BDA0990();
    }
  }

  return result;
}

uint64_t SymptomInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_1();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      v10 = *(type metadata accessor for SymptomInfo(0) + 24);
      return OUTLINED_FUNCTION_104();
    }
  }

  return result;
}

uint64_t static SymptomInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_86(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_221();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for SymptomInfo(0) + 24);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_2();
  sub_26BD15EDC(v9, v10);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD15C88(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26BDA1050();
  a1(0);
  sub_26BD15EDC(a2, a3);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD15D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD15EDC(&qword_280449C38, type metadata accessor for SymptomInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD15DEC(uint64_t a1)
{
  v2 = sub_26BD15EDC(&qword_280449BE0, type metadata accessor for SymptomInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD15E5C()
{
  sub_26BD15EDC(&qword_280449BE0, type metadata accessor for SymptomInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD15EDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BD163E0()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  v4 = *(OUTLINED_FUNCTION_210() - 8);
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
    v5 = *(v1 + 28);
  }

  v6 = OUTLINED_FUNCTION_174(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_26BD164A4()
{
  OUTLINED_FUNCTION_52();
  if (v2)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v3 = v1;
    v4 = v0;
    v5 = *(sub_26BDA0850() - 8);
    if (*(v5 + 84) == v4)
    {
      v6 = *(v3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449520, &unk_26BDA44F0);
      v6 = *(v3 + 28);
    }

    v7 = OUTLINED_FUNCTION_107(v6);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

void sub_26BD16560()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD165F4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26BD165F4()
{
  if (!qword_280449C00)
  {
    sub_26BDA07E0();
    v0 = sub_26BDA0DA0();
    if (!v1)
    {
      atomic_store(v0, &qword_280449C00);
    }
  }
}

uint64_t sub_26BD16660()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD166D4()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_26BD1673C()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD167D4()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 36));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD16848()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 36));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_26BD168B0()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD16954()
{
  OUTLINED_FUNCTION_102();
  if (v1)
  {
    return OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_210();
  v3 = OUTLINED_FUNCTION_174(*(v0 + 24));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_26BD169C8()
{
  OUTLINED_FUNCTION_52();
  if (v1)
  {
    OUTLINED_FUNCTION_254();
  }

  else
  {
    v2 = v0;
    sub_26BDA0850();
    v3 = OUTLINED_FUNCTION_107(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

void OUTLINED_FUNCTION_8_1(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t sub_26BD16AF4()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*v0);
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 28));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD16B6C()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BDA0850();
    v5 = OUTLINED_FUNCTION_107(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

void sub_26BD16BF8()
{
  sub_26BD16D20(319, &qword_280449C68, type metadata accessor for HMTSolutionResponse.Step);
  if (v0 <= 0x3F)
  {
    sub_26BD16D20(319, &qword_280449C70, type metadata accessor for HMTArticle);
    if (v1 <= 0x3F)
    {
      sub_26BD16D20(319, &qword_280449C78, type metadata accessor for HMTBCSSolution);
      if (v2 <= 0x3F)
      {
        sub_26BDA0850();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26BD16D20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BDA0B80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26BD16DD8()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 40));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD16E50()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BDA0850();
    v5 = OUTLINED_FUNCTION_107(*(v4 + 40));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_26BD16EBC()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BD16F60()
{
  OUTLINED_FUNCTION_102();
  if (v2)
  {
    return OUTLINED_FUNCTION_46(*(v0 + 8));
  }

  OUTLINED_FUNCTION_210();
  v4 = OUTLINED_FUNCTION_174(*(v1 + 44));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_26BD16FD8()
{
  OUTLINED_FUNCTION_52();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_26BDA0850();
    v5 = OUTLINED_FUNCTION_107(*(v4 + 44));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_26BD17044()
{
  result = sub_26BDA0850();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HMTArticle.TypeEnum(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HMTArticle.TypeEnum(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26BD1714C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26BD17168(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_26BD171AC()
{
  OUTLINED_FUNCTION_102();
  if (v3)
  {
    return OUTLINED_FUNCTION_46(*(v1 + 8));
  }

  v5 = OUTLINED_FUNCTION_210();
  OUTLINED_FUNCTION_175(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
    v7 = *(v2 + 36);
  }

  v8 = OUTLINED_FUNCTION_174(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

void sub_26BD17270()
{
  OUTLINED_FUNCTION_52();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_26BDA0850();
    OUTLINED_FUNCTION_175(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
      v9 = *(v5 + 36);
    }

    v10 = OUTLINED_FUNCTION_107(v9);

    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }
}

void sub_26BD1732C()
{
  sub_26BD17404();
  if (v0 <= 0x3F)
  {
    sub_26BDA0850();
    if (v1 <= 0x3F)
    {
      sub_26BD17758(319, &qword_280449CB8, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD17404()
{
  if (!qword_280449480)
  {
    v0 = sub_26BDA0CB0();
    if (!v1)
    {
      atomic_store(v0, &qword_280449480);
    }
  }
}

uint64_t sub_26BD17488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26BDA0850();
  v7 = OUTLINED_FUNCTION_175(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC0, &qword_26BDA4B88);
    v12 = OUTLINED_FUNCTION_175(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = *(a3 + 20);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC8, &unk_26BDA4B90);
      v14 = *(a3 + 24);
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_26BD1758C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_26BDA0850();
  v9 = OUTLINED_FUNCTION_175(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC0, &qword_26BDA4B88);
    v14 = OUTLINED_FUNCTION_175(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = *(a4 + 20);
    }

    else
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC8, &unk_26BDA4B90);
      v16 = *(a4 + 24);
    }

    v12 = a1 + v16;
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

void sub_26BD17684()
{
  sub_26BDA0850();
  if (v0 <= 0x3F)
  {
    sub_26BD17758(319, &qword_280449CE0, type metadata accessor for SymptomInfo);
    if (v1 <= 0x3F)
    {
      sub_26BD17758(319, &qword_280449CE8, type metadata accessor for ProductPedigreeInfo);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26BD17758(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26BDA0DA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26BD177D0(uint64_t a1@<X8>)
{
  sub_26BD177AC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_26BD17810(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_26BD177AC();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6 & 1;
}

uint64_t sub_26BD17848@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_26BD17934(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_47_1();
  a3(v4);
  OUTLINED_FUNCTION_45_0();
  return sub_26BDA1070();
}

uint64_t sub_26BD17990(char a1)
{
  OUTLINED_FUNCTION_47_1();
  sub_26BD816E8(a1);
  OUTLINED_FUNCTION_38_1();

  return sub_26BDA1070();
}

uint64_t sub_26BD179D8()
{
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_39_1();
  return sub_26BDA1070();
}

uint64_t sub_26BD17A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1BFC0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_26BD17AD4(uint64_t a1, char a2)
{
  sub_26BDA1050();
  sub_26BD816E8(a2);
  OUTLINED_FUNCTION_38_1();

  return sub_26BDA1070();
}

uint64_t sub_26BD17B20()
{
  sub_26BDA1050();
  OUTLINED_FUNCTION_39_1();
  return sub_26BDA1070();
}

uint64_t sub_26BD17B98(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_26BDA1050();
  a4(v5);
  OUTLINED_FUNCTION_45_0();
  return sub_26BDA1070();
}

uint64_t sub_26BD17BEC()
{
  sub_26BDA1050();
  sub_26BDA0C10();

  return sub_26BDA1070();
}

unint64_t sub_26BD17C9C()
{
  result = qword_280449CF0;
  if (!qword_280449CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449CF0);
  }

  return result;
}

unint64_t sub_26BD17CF4()
{
  result = qword_280449CF8;
  if (!qword_280449CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449CF8);
  }

  return result;
}

unint64_t sub_26BD17D4C()
{
  result = qword_280449D00;
  if (!qword_280449D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449D00);
  }

  return result;
}

uint64_t sub_26BD17DA0@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_34_1(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = v2;
  *(v1 + 56) = 0;
  *(v1 + 64) = v2;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = v2;
  v3 = v1 + *(type metadata accessor for HMTArticle(0) + 44);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD17E00@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_34_1(a1);
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v2;
  v1[5] = 0;
  v1[6] = v2;
  v1[7] = 0;
  v1[8] = v2;
  v1[9] = 0;
  v1[10] = v2;
  v3 = v1 + *(type metadata accessor for HMTBCSSolution(0) + 40);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD17E48()
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v0 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  v1 = *(v0 + 20);
  type metadata accessor for SymptomInfo(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = *(v0 + 24);
  type metadata accessor for ProductPedigreeInfo(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_26BD17EC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
  OUTLINED_FUNCTION_110(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - v4;
  v6 = *(type metadata accessor for HMTSolutionResponse.Step(0) + 36);
  sub_26BD0D868();
  v7 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  OUTLINED_FUNCTION_112(v5, 1, v7);
  if (v8)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v9 = *(v7 + 20);
    type metadata accessor for SymptomInfo(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v14 = *(v7 + 24);
    type metadata accessor for ProductPedigreeInfo(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    result = OUTLINED_FUNCTION_112(v5, 1, v7);
    if (!v8)
    {
      return sub_26BD04E80(v5, &qword_280449CA0, &qword_26BDA4B78);
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_0();
    return sub_26BD1C20C();
  }

  return result;
}

uint64_t sub_26BD18004@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_34_1(a1);
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  v3 = type metadata accessor for HMTSolutionResponse.Step(0);
  v4 = v1 + *(v3 + 32);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v5 = *(v3 + 36);
  type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_26BD18074@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HMTSolutionResponse.Step(0);
  *a1 = OUTLINED_FUNCTION_37_0();
  type metadata accessor for HMTArticle(0);
  a1[1] = OUTLINED_FUNCTION_37_0();
  type metadata accessor for HMTBCSSolution(0);
  a1[2] = OUTLINED_FUNCTION_37_0();
  v2 = a1 + *(type metadata accessor for HMTSolutionResponse(0) + 28);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t sub_26BD18104()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F40);
  __swift_project_value_buffer(v0, qword_280459F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_26BDA19F0;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = sub_26BDA0AE0();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "locale_identifier";
  *(v8 + 8) = 17;
  *(v8 + 16) = 2;
  *(v8 + 24) = "locale";
  *(v8 + 32) = 6;
  *(v8 + 40) = 2;
  v9 = *MEMORY[0x277D21878];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "rank";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "title";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "summary";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "type";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "url";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v7();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD18410()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    result = OUTLINED_FUNCTION_32_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
      case 7:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
        break;
      case 3:
        OUTLINED_FUNCTION_116();
        sub_26BDA0980();
        break;
      case 6:
        sub_26BD1BFC0();
        OUTLINED_FUNCTION_35_0();
        sub_26BDA0930();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD18504()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_29();
    if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
    {
      if (*(v2 + 32) == 0.0 || (OUTLINED_FUNCTION_8_2(), OUTLINED_FUNCTION_129(), result = sub_26BDA0AA0(), !v1))
      {
        v10 = *(v2 + 40);
        v11 = *(v2 + 48);
        OUTLINED_FUNCTION_29();
        if (!v12 || (result = OUTLINED_FUNCTION_103(), !v1))
        {
          v13 = *(v2 + 56);
          v14 = *(v2 + 64);
          OUTLINED_FUNCTION_29();
          if (!v15 || (result = OUTLINED_FUNCTION_103(), !v1))
          {
            if (!*(v2 + 72) || (v20 = *(v2 + 72), v21 = *(v2 + 80), sub_26BD1BFC0(), OUTLINED_FUNCTION_8_2(), result = sub_26BDA0A50(), !v1))
            {
              v16 = *(v2 + 88);
              v17 = *(v2 + 96);
              OUTLINED_FUNCTION_29();
              if (!v18 || (result = OUTLINED_FUNCTION_103(), !v1))
              {
                v19 = *(type metadata accessor for HMTArticle(0) + 44);
                return OUTLINED_FUNCTION_104();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BD1864C()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  v7 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v7 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_26BD3AEDC(*(v1 + 72), *(v1 + 80), *(v0 + 72), *(v0 + 80)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(v1 + 88) == *(v0 + 88) && *(v1 + 96) == *(v0 + 96);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for HMTArticle(0) + 44);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_3();
  sub_26BD1B9B8(v11, v12);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD187A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD18814(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD188B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1B9B8(&qword_280449DB8, type metadata accessor for HMTArticle);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD18958(uint64_t a1)
{
  v2 = sub_26BD1B9B8(&qword_280449D90, type metadata accessor for HMTArticle);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD18A20()
{
  sub_26BD1B9B8(&qword_280449D90, type metadata accessor for HMTArticle);

  return sub_26BDA0A00();
}

uint64_t sub_26BD18AA0()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F58);
  __swift_project_value_buffer(v0, qword_280459F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REGULAR";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USER_GUIDE";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD18CC8()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F70);
  __swift_project_value_buffer(v0, qword_280459F70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA4B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rank";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "solutionSubType";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "title";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "summary";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "url";
  *(v18 + 1) = 3;
  v18[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD18F80()
{
  while (1)
  {
    result = sub_26BDA0900();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_129();
        sub_26BDA0990();
        break;
      case 2:
        OUTLINED_FUNCTION_129();
        sub_26BDA0980();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26BD19050()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_29();
  if (!v5 || (result = OUTLINED_FUNCTION_103(), !v1))
  {
    if (*(v2 + 16) == 0.0 || (OUTLINED_FUNCTION_8_2(), OUTLINED_FUNCTION_129(), result = sub_26BDA0AA0(), !v1))
    {
      v7 = *(v2 + 24);
      v8 = *(v2 + 32);
      OUTLINED_FUNCTION_29();
      if (!v9 || (result = OUTLINED_FUNCTION_103(), !v1))
      {
        v10 = *(v2 + 40);
        v11 = *(v2 + 48);
        OUTLINED_FUNCTION_29();
        if (!v12 || (result = OUTLINED_FUNCTION_103(), !v1))
        {
          v13 = *(v2 + 56);
          v14 = *(v2 + 64);
          OUTLINED_FUNCTION_29();
          if (!v15 || (result = OUTLINED_FUNCTION_103(), !v1))
          {
            v16 = *(v2 + 72);
            v17 = *(v2 + 80);
            OUTLINED_FUNCTION_29();
            if (!v18 || (result = OUTLINED_FUNCTION_103(), !v1))
            {
              v19 = *(type metadata accessor for HMTBCSSolution(0) + 40);
              return OUTLINED_FUNCTION_104();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BD1914C()
{
  OUTLINED_FUNCTION_184();
  OUTLINED_FUNCTION_20_0(v2);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 16) != *(v0 + 16))
  {
    return 0;
  }

  v6 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v6 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v7 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v8 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v1 + 72) == *(v0 + 72) && *(v1 + 80) == *(v0 + 80);
  if (!v9 && (sub_26BDA0FB0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for HMTBCSSolution(0) + 40);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_3();
  sub_26BD1B9B8(v11, v12);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD19290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD19304(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD193A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1B9B8(&qword_280449DC8, type metadata accessor for HMTBCSSolution);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD19448(uint64_t a1)
{
  v2 = sub_26BD1B9B8(&qword_280449D70, type metadata accessor for HMTBCSSolution);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD19510()
{
  sub_26BD1B9B8(&qword_280449D70, type metadata accessor for HMTBCSSolution);

  return sub_26BDA0A00();
}

uint64_t sub_26BD19590()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459F88);
  __swift_project_value_buffer(v0, qword_280459F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stepMap";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "articleMap";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bcsSolutionMap";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void sub_26BD19798()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49();
  while (1)
  {
    v2 = OUTLINED_FUNCTION_32_1();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    switch(v2)
    {
      case 3:
        sub_26BDA0820();
        type metadata accessor for HMTBCSSolution(0);
        OUTLINED_FUNCTION_13_0();
        sub_26BD1B9B8(&qword_280449D70, v1);
        OUTLINED_FUNCTION_12_0();
        sub_26BD1B9B8(&qword_280449D78, v1);
LABEL_10:
        sub_26BDA08E0();
        break;
      case 2:
        sub_26BDA0820();
        type metadata accessor for HMTArticle(0);
        OUTLINED_FUNCTION_15_0();
        sub_26BD1B9B8(&qword_280449D90, v1);
        OUTLINED_FUNCTION_14_0();
        sub_26BD1B9B8(&qword_280449D98, v1);
        goto LABEL_10;
      case 1:
        sub_26BDA0820();
        type metadata accessor for HMTSolutionResponse.Step(0);
        v1 = sub_26BD1B9B8(&qword_280449D10, type metadata accessor for HMTSolutionResponse.Step);
        OUTLINED_FUNCTION_17_1();
        sub_26BD1B9B8(&qword_280449D18, type metadata accessor for HMTSolutionResponse.Step);
        goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD1996C()
{
  if (*(*v0 + 16))
  {
    sub_26BDA0820();
    v2 = type metadata accessor for HMTSolutionResponse.Step(0);
    sub_26BD1B9B8(&qword_280449D10, type metadata accessor for HMTSolutionResponse.Step);
    OUTLINED_FUNCTION_17_1();
    sub_26BD1B9B8(v3, type metadata accessor for HMTSolutionResponse.Step);
    result = sub_26BDA0A20();
    if (v1)
    {
      return result;
    }

    v0 = v10;
  }

  if (*(v0[1] + 16))
  {
    sub_26BDA0820();
    type metadata accessor for HMTArticle(0);
    OUTLINED_FUNCTION_15_0();
    sub_26BD1B9B8(v5, v2);
    OUTLINED_FUNCTION_14_0();
    sub_26BD1B9B8(v6, v2);
    result = sub_26BDA0A20();
    if (v1)
    {
      return result;
    }

    v0 = v10;
  }

  if (*(v0[2] + 16))
  {
    sub_26BDA0820();
    type metadata accessor for HMTBCSSolution(0);
    OUTLINED_FUNCTION_13_0();
    sub_26BD1B9B8(v7, v2);
    OUTLINED_FUNCTION_12_0();
    sub_26BD1B9B8(v8, v2);
    result = sub_26BDA0A20();
    if (v1)
    {
      return result;
    }

    v0 = v10;
  }

  v9 = v0 + *(type metadata accessor for HMTSolutionResponse(0) + 28);
  return sub_26BDA0830();
}

uint64_t sub_26BD19C24()
{
  OUTLINED_FUNCTION_184();
  v3 = *v2;
  v5 = *v4;
  sub_26BD2E240();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + 8);
  v8 = *(v0 + 8);
  sub_26BD2E954();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(v1 + 16);
  v11 = *(v0 + 16);
  sub_26BD2EE10();
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = *(type metadata accessor for HMTSolutionResponse(0) + 28);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_3();
  sub_26BD1B9B8(v14, v15);
  return OUTLINED_FUNCTION_105() & 1;
}

uint64_t sub_26BD19D18(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1B9B8(&qword_280449DD0, type metadata accessor for HMTSolutionResponse);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD19DB8(uint64_t a1)
{
  v2 = sub_26BD1B9B8(&qword_280449D50, type metadata accessor for HMTSolutionResponse);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD19E80()
{
  sub_26BD1B9B8(&qword_280449D50, type metadata accessor for HMTSolutionResponse);

  return sub_26BDA0A00();
}

uint64_t sub_26BD19F00()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459FA0);
  __swift_project_value_buffer(v0, qword_280459FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA1990;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "symptom_info";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "product_info";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

void sub_26BD1A0C8()
{
  OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_49();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_32_1();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v6 = *(type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0) + 24);
      type metadata accessor for ProductPedigreeInfo(0);
      OUTLINED_FUNCTION_19_1();
      v5 = &qword_280449BB0;
LABEL_8:
      sub_26BD1B9B8(v5, v4);
      OUTLINED_FUNCTION_35_0();
      sub_26BDA09B0();
    }

    else if (v1 == 1)
    {
      v3 = *(type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0) + 20);
      type metadata accessor for SymptomInfo(0);
      OUTLINED_FUNCTION_21_0();
      v5 = &qword_280449BE0;
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_247();
}

void sub_26BD1A1B8()
{
  OUTLINED_FUNCTION_246();
  v3 = v0;
  v44 = v4;
  v45 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC8, &unk_26BDA4B90);
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_229();
  v42 = type metadata accessor for ProductPedigreeInfo(v10);
  v11 = OUTLINED_FUNCTION_34(v42);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_44();
  v41 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC0, &qword_26BDA4B88);
  OUTLINED_FUNCTION_110(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v22 = type metadata accessor for SymptomInfo(0);
  v23 = OUTLINED_FUNCTION_34(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_44();
  v28 = v27 - v26;
  v29 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  v30 = *(v29 + 20);
  v43 = v3;
  sub_26BD0D868();
  OUTLINED_FUNCTION_42_0();
  if (__swift_getEnumTagSinglePayload(v31, v32, v33) == 1)
  {
    sub_26BD04E80(v21, &qword_280449CC0, &qword_26BDA4B88);
  }

  else
  {
    OUTLINED_FUNCTION_16_0();
    sub_26BD1C20C();
    OUTLINED_FUNCTION_21_0();
    sub_26BD1B9B8(v34, v35);
    sub_26BDA0AD0();
    sub_26BD1C1B4(v28, &qword_280449CC0);
    if (v1)
    {
      goto LABEL_8;
    }
  }

  v36 = *(v29 + 24);
  sub_26BD0D868();
  if (__swift_getEnumTagSinglePayload(v2, 1, v42) == 1)
  {
    sub_26BD04E80(v2, &qword_280449CC8, &unk_26BDA4B90);
LABEL_7:
    sub_26BDA0830();
    goto LABEL_8;
  }

  v37 = v41;
  sub_26BD1C20C();
  OUTLINED_FUNCTION_19_1();
  sub_26BD1B9B8(v38, v39);
  sub_26BDA0AD0();
  sub_26BD1C1B4(v37, type metadata accessor for ProductPedigreeInfo);
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_8:
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD1A4D0(uint64_t a1)
{
  v64 = type metadata accessor for ProductPedigreeInfo(0);
  v3 = OUTLINED_FUNCTION_34(v64);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_44();
  v60 = (v7 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC8, &unk_26BDA4B90);
  OUTLINED_FUNCTION_110(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  v61 = (&v59 - v12);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449DD8, &qword_26BDA5410);
  OUTLINED_FUNCTION_34(v63);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v15);
  v65 = &v59 - v16;
  v17 = type metadata accessor for SymptomInfo(0);
  v18 = OUTLINED_FUNCTION_34(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_44();
  v23 = (v22 - v21);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CC0, &qword_26BDA4B88);
  OUTLINED_FUNCTION_110(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v27);
  v29 = (&v59 - v28);
  v30 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449DE0, &qword_26BDA5418) - 8);
  v31 = *(*v30 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v32);
  v33 = OUTLINED_FUNCTION_229();
  v62 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(v33);
  v34 = *(v62 + 20);
  v35 = v30[14];
  v66 = a1;
  sub_26BD0D868();
  sub_26BD0D868();
  OUTLINED_FUNCTION_112(v1, 1, v17);
  if (v36)
  {
    OUTLINED_FUNCTION_112(v1 + v35, 1, v17);
    if (v36)
    {
      sub_26BD04E80(v1, &qword_280449CC0, &qword_26BDA4B88);
      goto LABEL_22;
    }

    goto LABEL_9;
  }

  sub_26BD0D868();
  OUTLINED_FUNCTION_112(v1 + v35, 1, v17);
  if (v36)
  {
    sub_26BD1C1B4(v29, type metadata accessor for SymptomInfo);
LABEL_9:
    v37 = &qword_280449DE0;
    v38 = &qword_26BDA5418;
LABEL_10:
    v39 = v1;
LABEL_31:
    sub_26BD04E80(v39, v37, v38);
    goto LABEL_32;
  }

  sub_26BD1C20C();
  v40 = *v29 == *v23 && v29[1] == v23[1];
  if (!v40 && (sub_26BDA0FB0() & 1) == 0 || (v29[2] == v23[2] ? (v41 = v29[3] == v23[3]) : (v41 = 0), !v41 && (sub_26BDA0FB0() & 1) == 0))
  {
    sub_26BD1C1B4(v23, type metadata accessor for SymptomInfo);
    sub_26BD1C1B4(v29, type metadata accessor for SymptomInfo);
    v37 = &qword_280449CC0;
    v38 = &qword_26BDA4B88;
    goto LABEL_10;
  }

  v42 = *(v17 + 24);
  sub_26BDA0850();
  OUTLINED_FUNCTION_0_3();
  sub_26BD1B9B8(v43, v44);
  v45 = sub_26BDA0BB0();
  OUTLINED_FUNCTION_16_0();
  sub_26BD1C1B4(v23, v46);
  sub_26BD1C1B4(v29, v42);
  sub_26BD04E80(v1, &qword_280449CC0, &qword_26BDA4B88);
  if ((v45 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_22:
  v47 = *(v62 + 24);
  v48 = *(v63 + 48);
  v49 = v65;
  sub_26BD0D868();
  sub_26BD0D868();
  v50 = v64;
  OUTLINED_FUNCTION_112(v49, 1, v64);
  if (v36)
  {
    OUTLINED_FUNCTION_112(v49 + v48, 1, v50);
    if (v36)
    {
      sub_26BD04E80(v49, &qword_280449CC8, &unk_26BDA4B90);
LABEL_36:
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_3();
      sub_26BD1B9B8(v57, v58);
      v53 = sub_26BDA0BB0();
      return v53 & 1;
    }

    goto LABEL_30;
  }

  v51 = v61;
  sub_26BD0D868();
  OUTLINED_FUNCTION_112(v49 + v48, 1, v50);
  if (v52)
  {
    sub_26BD1C1B4(v51, type metadata accessor for ProductPedigreeInfo);
LABEL_30:
    v37 = &qword_280449DD8;
    v38 = &qword_26BDA5410;
    v39 = v49;
    goto LABEL_31;
  }

  v55 = v60;
  sub_26BD1C20C();
  v56 = static ProductPedigreeInfo.== infix(_:_:)(v51, v55);
  sub_26BD1C1B4(v55, type metadata accessor for ProductPedigreeInfo);
  sub_26BD1C1B4(v51, type metadata accessor for ProductPedigreeInfo);
  sub_26BD04E80(v49, &qword_280449CC8, &unk_26BDA4B90);
  if (v56)
  {
    goto LABEL_36;
  }

LABEL_32:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_26BD1AACC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1B9B8(&qword_280449DF0, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD1AB6C(uint64_t a1)
{
  v2 = sub_26BD1B9B8(&qword_280449D30, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD1AC34()
{
  sub_26BD1B9B8(&qword_280449D30, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);

  return sub_26BDA0A00();
}

uint64_t sub_26BD1ACB4()
{
  v0 = sub_26BDA0B10();
  __swift_allocate_value_buffer(v0, qword_280459FB8);
  __swift_project_value_buffer(v0, qword_280459FB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495C8, &unk_26BDA3CB0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804495D0, &qword_26BDA3510) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26BDA19E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_26BDA0AE0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "article_ids";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "bcs_solution_ids";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "should_show_contact_options";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "alternative_symptom_info";
  *(v17 + 1) = 24;
  v17[16] = 2;
  v9();
  return sub_26BDA0AF0();
}

uint64_t sub_26BD1AF40()
{
  OUTLINED_FUNCTION_49();
  while (1)
  {
    result = OUTLINED_FUNCTION_32_1();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_116();
        sub_26BDA0990();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_116();
        sub_26BDA0970();
        break;
      case 4:
        OUTLINED_FUNCTION_116();
        sub_26BDA0920();
        break;
      case 5:
        v3 = *(type metadata accessor for HMTSolutionResponse.Step(0) + 36);
        type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
        OUTLINED_FUNCTION_20_2();
        sub_26BD1B9B8(&qword_280449D30, v4);
        OUTLINED_FUNCTION_35_0();
        sub_26BDA09B0();
        break;
      default:
        continue;
    }
  }
}

void sub_26BD1B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_246();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_60();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
  OUTLINED_FUNCTION_110(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  v32 = OUTLINED_FUNCTION_34(v31);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_44();
  v37 = v36 - v35;
  v38 = *v20;
  v39 = v20[1];
  OUTLINED_FUNCTION_29();
  if (!v40 || (OUTLINED_FUNCTION_103(), !v21))
  {
    if (!*(*(v22 + 16) + 16) || (OUTLINED_FUNCTION_8_2(), sub_26BDA0A90(), !v21))
    {
      if (!*(*(v22 + 24) + 16) || (OUTLINED_FUNCTION_8_2(), sub_26BDA0A90(), !v21))
      {
        if (*(v22 + 32) != 1 || (OUTLINED_FUNCTION_8_2(), sub_26BDA0A40(), !v21))
        {
          v41 = type metadata accessor for HMTSolutionResponse.Step(0);
          v42 = *(v41 + 36);
          sub_26BD0D868();
          if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
          {
            sub_26BD04E80(v30, &qword_280449CA0, &qword_26BDA4B78);
LABEL_13:
            v47 = *(v41 + 32);
            OUTLINED_FUNCTION_104();
            goto LABEL_14;
          }

          a10 = v41;
          OUTLINED_FUNCTION_18_0();
          v44 = v43;
          sub_26BD1C20C();
          OUTLINED_FUNCTION_20_2();
          sub_26BD1B9B8(v45, v46);
          OUTLINED_FUNCTION_8_2();
          sub_26BDA0AD0();
          sub_26BD1C1B4(v37, v44);
          if (!v21)
          {
            v41 = a10;
            goto LABEL_13;
          }
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_247();
}

uint64_t sub_26BD1B290()
{
  OUTLINED_FUNCTION_184();
  v2 = type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo(0);
  v3 = OUTLINED_FUNCTION_34(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_44();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449CA0, &qword_26BDA4B78);
  OUTLINED_FUNCTION_110(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449DE8, &unk_26BDA5420);
  OUTLINED_FUNCTION_34(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v21 && (sub_26BDA0FB0() & 1) == 0 || (sub_26BCFF1F4(*(v1 + 16), *(v0 + 16)) & 1) == 0 || (sub_26BCFF1F4(*(v1 + 24), *(v0 + 24)) & 1) == 0 || *(v1 + 32) != *(v0 + 32))
  {
    goto LABEL_18;
  }

  v41 = type metadata accessor for HMTSolutionResponse.Step(0);
  v22 = *(v41 + 36);
  v23 = *(v15 + 48);
  sub_26BD0D868();
  sub_26BD0D868();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_112(v24, v25, v26);
  if (v21)
  {
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_112(v27, v28, v29);
    if (v21)
    {
      sub_26BD04E80(v20, &qword_280449CA0, &qword_26BDA4B78);
LABEL_21:
      v37 = *(v41 + 32);
      sub_26BDA0850();
      OUTLINED_FUNCTION_0_3();
      sub_26BD1B9B8(v38, v39);
      v34 = OUTLINED_FUNCTION_105();
      return v34 & 1;
    }

    goto LABEL_17;
  }

  sub_26BD0D868();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_112(v30, v31, v32);
  if (v33)
  {
    sub_26BD1C1B4(v14, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);
LABEL_17:
    sub_26BD04E80(v20, &qword_280449DE8, &unk_26BDA5420);
    goto LABEL_18;
  }

  sub_26BD1C20C();
  v36 = sub_26BD1A4D0(v14);
  sub_26BD1C1B4(v8, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);
  sub_26BD1C1B4(v14, type metadata accessor for HMTSolutionResponse.AlternativeSymptomInfo);
  sub_26BD04E80(v20, &qword_280449CA0, &qword_26BDA4B78);
  if (v36)
  {
    goto LABEL_21;
  }

LABEL_18:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_26BD1B588(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_47_1();
  a1(0);
  sub_26BD1B9B8(a2, a3);
  sub_26BDA0BA0();
  return sub_26BDA1070();
}

uint64_t sub_26BD1B628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_26BD1B69C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_26BDA0850();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_26BD1B740(uint64_t a1, uint64_t a2)
{
  v4 = sub_26BD1B9B8(&qword_280449DF8, type metadata accessor for HMTSolutionResponse.Step);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26BD1B7E0(uint64_t a1)
{
  v2 = sub_26BD1B9B8(&qword_280449D10, type metadata accessor for HMTSolutionResponse.Step);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26BD1B8A8()
{
  sub_26BD1B9B8(&qword_280449D10, type metadata accessor for HMTSolutionResponse.Step);

  return sub_26BDA0A00();
}

uint64_t sub_26BD1B9B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26BD1BF14()
{
  result = qword_280449DA8;
  if (!qword_280449DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280449DB0, qword_26BDA53D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449DA8);
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

unint64_t sub_26BD1BFC0()
{
  result = qword_280449DC0;
  if (!qword_280449DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449DC0);
  }

  return result;
}

uint64_t sub_26BD1C014()
{
  sub_26BDA0C10();
}

uint64_t sub_26BD1C0A4()
{
  OUTLINED_FUNCTION_40_1();
  switch(v0)
  {
    case 1:
    case 3:
    case 5:
      OUTLINED_FUNCTION_40_1();
      break;
    default:
      break;
  }

  sub_26BDA0C10();
}

uint64_t sub_26BD1C1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26BD1C20C()
{
  OUTLINED_FUNCTION_184();
  v3 = v2(0);
  OUTLINED_FUNCTION_34(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

unint64_t sub_26BD1C268()
{
  result = qword_280449E00;
  if (!qword_280449E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449E00);
  }

  return result;
}

unint64_t sub_26BD1C2BC()
{
  result = qword_280449E08;
  if (!qword_280449E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449E08);
  }

  return result;
}

unint64_t sub_26BD1C310()
{
  result = qword_280449E10;
  if (!qword_280449E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449E10);
  }

  return result;
}

unint64_t sub_26BD1C364()
{
  result = qword_280449E18;
  if (!qword_280449E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280449E18);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_26BDA0900();
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return sub_26BDA0B70();
}

uint64_t OUTLINED_FUNCTION_38_1()
{

  return sub_26BDA0C10();
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return sub_26BDA0C10();
}

uint64_t OUTLINED_FUNCTION_45_0()
{

  return sub_26BDA0BA0();
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return sub_26BDA1050();
}

uint64_t SupportOptionDetailsRequest.caseMetaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  v10 = *(type metadata accessor for SupportOptionDetailsRequest(v9) + 24);
  OUTLINED_FUNCTION_71_0();
  v11 = type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_14();
  if (v12)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v13 = *(v11 + 20);
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226();
    }

    *(a1 + v13) = qword_28044A6A8;
    v14 = OUTLINED_FUNCTION_114();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v11);

    if (EnumTagSinglePayload != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_126();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsRequest.caseMetaData.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for SupportOptionDetailsRequest(v1);
  sub_26BD04E80(v0 + *(v2 + 24), &qword_280448F68, &qword_26BDA1A30);
  OUTLINED_FUNCTION_12_1();
  OUTLINED_FUNCTION_143();
  sub_26BD2DF9C();
  type metadata accessor for TriageRequest.CaseMetaData(0);
  v3 = OUTLINED_FUNCTION_51_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void SupportOptionDetailsRequest.caseMetaData.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_277();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = type metadata accessor for TriageRequest.CaseMetaData(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_34(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_303(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_227(v14);
  *(v0 + 40) = *(type metadata accessor for SupportOptionDetailsRequest(v15) + 24);
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_9();
  if (v16)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v17 = *(v9 + 20);
    if (qword_280448E60 != -1)
    {
      OUTLINED_FUNCTION_226();
    }

    *(v11 + v17) = qword_28044A6A8;
    v18 = OUTLINED_FUNCTION_42_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_26BD04E80(v7, &qword_280448F68, &qword_26BDA1A30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_1();
    OUTLINED_FUNCTION_147_0();
  }

  OUTLINED_FUNCTION_283();
}

uint64_t SupportOptionDetailsRequest.clientContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  v10 = *(type metadata accessor for SupportOptionDetailsRequest(v9) + 28);
  OUTLINED_FUNCTION_71_0();
  v11 = type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_14();
  if (v12)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v13 = *(v11 + 20);
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220();
    }

    *(a1 + v13) = qword_28044A6F0;
    v14 = OUTLINED_FUNCTION_114();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v11);

    if (EnumTagSinglePayload != 1)
    {
      return sub_26BD04E80(v1, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsRequest.clientContext.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for SupportOptionDetailsRequest(v1);
  sub_26BD04E80(v0 + *(v2 + 28), &qword_280448F70, &qword_26BDA1A38);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_143();
  sub_26BD2DF9C();
  type metadata accessor for TriageRequest.ClientContext(0);
  v3 = OUTLINED_FUNCTION_51_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void SupportOptionDetailsRequest.clientContext.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_277();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = type metadata accessor for TriageRequest.ClientContext(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_34(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_303(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_227(v14);
  *(v0 + 40) = *(type metadata accessor for SupportOptionDetailsRequest(v15) + 28);
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_9();
  if (v16)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v17 = *(v9 + 20);
    if (qword_280448E80 != -1)
    {
      OUTLINED_FUNCTION_220();
    }

    *(v11 + v17) = qword_28044A6F0;
    v18 = OUTLINED_FUNCTION_42_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v9);

    if (EnumTagSinglePayload != 1)
    {
      sub_26BD04E80(v7, &qword_280448F70, &qword_26BDA1A38);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_0();
    OUTLINED_FUNCTION_147_0();
  }

  OUTLINED_FUNCTION_283();
}

uint64_t SupportOptionDetailsRequest.hasClientContext.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  v7 = type metadata accessor for SupportOptionDetailsRequest(v6);
  OUTLINED_FUNCTION_32_0(*(v7 + 28));
  sub_26BD31AF8();
  type metadata accessor for TriageRequest.ClientContext(0);
  v8 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v13, v14, &qword_26BDA1A38);
  return v12;
}

Swift::Void __swiftcall SupportOptionDetailsRequest.clearClientContext()()
{
  v1 = type metadata accessor for SupportOptionDetailsRequest(0);
  sub_26BD04E80(v0 + *(v1 + 28), &qword_280448F70, &qword_26BDA1A38);
  type metadata accessor for TriageRequest.ClientContext(0);
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t SupportOptionDetailsRequest.reportingContext.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SupportOptionDetailsRequest.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOptionDetailsRequest(v0) + 20);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOptionDetailsRequest.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26BDA0B70();
  v2 = type metadata accessor for SupportOptionDetailsRequest(0);
  v3 = a1 + v2[5];
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v4 = v2[6];
  type metadata accessor for TriageRequest.CaseMetaData(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = v2[7];
  type metadata accessor for TriageRequest.ClientContext(0);
  v10 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t AssociatedProductInfo.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_217();
  v1 = *(type metadata accessor for AssociatedProductInfo(v0) + 36);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_148();

  return v6(v5);
}

uint64_t AssociatedProductInfo.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for AssociatedProductInfo(v0) + 36);
  v2 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_234();

  return v6(v5);
}

uint64_t AssociatedProductInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for AssociatedProductInfo(v0) + 36);
  return OUTLINED_FUNCTION_185();
}

uint64_t AssociatedProductInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_82();
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  v3 = a1 + *(type metadata accessor for AssociatedProductInfo(0) + 36);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t SupportOptionDetailsResponse.supportOptionType.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_3();
  result = OUTLINED_FUNCTION_230();
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_26BD1D13C@<X0>(uint64_t a1@<X8>)
{
  result = SupportOptionDetailsResponse.supportOptionType.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_26BD1D180(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return SupportOptionDetailsResponse.supportOptionType.setter(&v3);
}

uint64_t SupportOptionDetailsResponse.supportOptionType.setter(uint64_t *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = OUTLINED_FUNCTION_72_0();
  v7 = *(v1 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v8 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD24600(v8);
    *(v3 + v2) = v7;
  }

  result = OUTLINED_FUNCTION_235();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  return result;
}

uint64_t SupportOptionDetailsResponse.supportOptionType.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_142(v2) + 88) = v0;
  OUTLINED_FUNCTION_21_1();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_127();
  v5 = *(v4 + 24);
  *(v1 + 72) = *(v4 + 16);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_133();
}

void sub_26BD1D2AC()
{
  OUTLINED_FUNCTION_284();
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 84);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    OUTLINED_FUNCTION_35_1();
    v11 = OUTLINED_FUNCTION_36();
    v8 = sub_26BD24600(v11);
    *(v10 + v9) = v8;
  }

  OUTLINED_FUNCTION_235();
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  OUTLINED_FUNCTION_283();

  free(v12);
}

uint64_t SupportOptionDetailsResponse.supportOptionSubTypeString.getter()
{
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_230();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_147();
}

uint64_t sub_26BD1D39C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.supportOptionSubTypeString.setter();
}

uint64_t SupportOptionDetailsResponse.supportOptionSubTypeString.setter()
{
  OUTLINED_FUNCTION_171();
  v4 = OUTLINED_FUNCTION_72_0();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD24600(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  OUTLINED_FUNCTION_235();
  v8 = *(v5 + 40);
  *(v5 + 32) = v2;
  *(v5 + 40) = v0;
}

uint64_t SupportOptionDetailsResponse.supportOptionSubTypeString.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_142(v3) + 64) = v0;
  OUTLINED_FUNCTION_21_1();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_127();
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_128();
}

void sub_26BD1D4C0(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v4)
  {
    v5 = *(v1 + 64);

    OUTLINED_FUNCTION_130();
    SupportOptionDetailsResponse.supportOptionSubTypeString.setter();
    v6 = *(v1 + 56);
  }

  else
  {
    v7 = *(v1 + 72);
    v8 = *(v1 + 64);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 72);
      v13 = *(v1 + 64);
      OUTLINED_FUNCTION_35_1();
      v14 = OUTLINED_FUNCTION_36();
      v15 = sub_26BD24600(v14);
      OUTLINED_FUNCTION_215(v15);
    }

    OUTLINED_FUNCTION_235();
    v16 = *(v11 + 40);
    *(v11 + 32) = v3;
    *(v11 + 40) = v2;
  }

  free(v1);
}

void SupportOptionDetailsResponse.triggers.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOptionDetailsResponse.scb.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_122();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_17();
  v11 = *(v1 + *(type metadata accessor for SupportOptionDetailsResponse(v10) + 20));
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_141();
  sub_26BD31AF8();
  v12 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  OUTLINED_FUNCTION_14();
  if (v13)
  {
    v14 = MEMORY[0x277D84F90];
    *a1 = 0;
    a1[1] = v14;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v15 = a1 + *(v12 + 28);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v13)
    {
      return sub_26BD04E80(v2, &qword_280449EF0, &qword_26BDA5448);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_126();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsResponse.scb.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449EF0, &qword_26BDA5448);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_123_0();
  v6 = OUTLINED_FUNCTION_72_0();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD24600(v8);
    OUTLINED_FUNCTION_219(v9);
  }

  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_138_0();
  sub_26BD2DF9C();
  type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0);
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  return swift_endAccess();
}

uint64_t SupportOptionDetailsResponse.SCBDetails.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = 0;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v3 = a1 + *(type metadata accessor for SupportOptionDetailsResponse.SCBDetails(0) + 28);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

void SupportOptionDetailsResponse.scb.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_47(v8);
  v10 = type metadata accessor for SupportOptionDetailsResponse.SCBDetails(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = *(v11 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    v15 = MEMORY[0x277D84F90];
    *v13 = 0;
    v13[1] = v15;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    v16 = v13 + *(v10 + 28);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280449EF0, &qword_26BDA5448);
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_147_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD1DB10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_171();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_110(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_8_3();
  v15 = *a3;
  OUTLINED_FUNCTION_230();
  sub_26BD31AF8();
  v16 = a4(0);
  OUTLINED_FUNCTION_112(v6, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_26BD04E80(v6, v5, v4);
  return v18;
}

void sub_26BD1DC08()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_171();
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_110(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_131_0();
  v12 = *(type metadata accessor for SupportOptionDetailsResponse(0) + 20);
  v13 = *(v0 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v16 = OUTLINED_FUNCTION_36();
    *(v5 + v12) = sub_26BD24600(v16);
  }

  v4(0);
  v17 = OUTLINED_FUNCTION_42_1();
  __swift_storeEnumTagSinglePayload(v17, v18, 1, v19);
  v20 = *v2;
  swift_beginAccess();
  sub_26BD2E160();
  swift_endAccess();
  OUTLINED_FUNCTION_283();
}

uint64_t SupportOptionDetailsResponse.cld.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_168_0();
  v7 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  OUTLINED_FUNCTION_23(v0);
  if (v8)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v9 = *(v7 + 20);
    type metadata accessor for CallContactDetails(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_23(v0);
    if (!v8)
    {
      return sub_26BD04E80(v0, &qword_280449F00, &qword_26BDA5450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_1();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsResponse.cld.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F00, &qword_26BDA5450);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_123_0();
  v6 = OUTLINED_FUNCTION_72_0();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD24600(v8);
    OUTLINED_FUNCTION_219(v9);
  }

  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_138_0();
  sub_26BD2DF9C();
  type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  return swift_endAccess();
}

uint64_t SupportOptionDetailsResponse.CLDDetails.init()()
{
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v0 = *(type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0) + 20);
  type metadata accessor for CallContactDetails(0);
  v1 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void SupportOptionDetailsResponse.cld.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_47(v8);
  v10 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = *(v11 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_9();
  if (v13)
  {
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v14 = *(v10 + 20);
    type metadata accessor for CallContactDetails(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_9();
    if (!v13)
    {
      sub_26BD04E80(v0, &qword_280449F00, &qword_26BDA5450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_147_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BD1E0B0()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 32);
  if (v7)
  {
    OUTLINED_FUNCTION_167();
    sub_26BD2DFF4();
    v2(v3);
    OUTLINED_FUNCTION_256();
    sub_26BD2E04C();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v6);
  OUTLINED_FUNCTION_283();

  free(v8);
}

uint64_t SupportOptionDetailsResponse.c2C.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_123_0();
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_230();
  OUTLINED_FUNCTION_168_0();
  v9 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  OUTLINED_FUNCTION_23(v1);
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    v11 = a1 + *(v9 + 20);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v12 = *(v9 + 24);
    type metadata accessor for CallContactDetails(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_23(v1);
    if (!v10)
    {
      return sub_26BD04E80(v1, &qword_280449F10, &qword_26BDA5458);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsResponse.c2C.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280449F10, &qword_26BDA5458);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_123_0();
  v6 = OUTLINED_FUNCTION_72_0();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v8 = OUTLINED_FUNCTION_36();
    v9 = sub_26BD24600(v8);
    OUTLINED_FUNCTION_219(v9);
  }

  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_138_0();
  sub_26BD2DF9C();
  type metadata accessor for SupportOptionDetailsResponse.C2CDetails(0);
  OUTLINED_FUNCTION_157();
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_119_0();
  OUTLINED_FUNCTION_143();
  sub_26BD2E160();
  return swift_endAccess();
}

uint64_t SupportOptionDetailsResponse.C2CDetails.init()@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_167_0(a1);
  v3 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v2);
  v4 = v1 + *(v3 + 20);
  _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
  v5 = *(v3 + 24);
  type metadata accessor for CallContactDetails(0);
  v6 = OUTLINED_FUNCTION_48();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void SupportOptionDetailsResponse.c2C.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_165();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_47(v8);
  v10 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v9);
  OUTLINED_FUNCTION_34(v10);
  v12 = *(v11 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v12);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_9();
  if (v14)
  {
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v15 = v13 + *(v10 + 20);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    v16 = *(v10 + 24);
    type metadata accessor for CallContactDetails(0);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_9();
    if (!v14)
    {
      sub_26BD04E80(v0, &qword_280449F10, &qword_26BDA5458);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_1();
    OUTLINED_FUNCTION_147_0();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD1E5F0(uint64_t *a1)
{
  v1 = *a1;

  return SupportOptionDetailsResponse.carriersInfo.setter(v2);
}

uint64_t SupportOptionDetailsResponse.carriersInfo.modify()
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_142(v2) + 56) = v0;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_151_0(v3);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1E6C8(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_3();
  v3 = *a1;
  OUTLINED_FUNCTION_230();
  v4 = *(v1 + v3);
}

uint64_t sub_26BD1E70C(uint64_t *a1)
{
  v1 = *a1;

  return SupportOptionDetailsResponse.relatedProducts.setter(v2);
}

uint64_t sub_26BD1E744(uint64_t a1, uint64_t *a2)
{
  v5 = OUTLINED_FUNCTION_134();
  v6 = *(type metadata accessor for SupportOptionDetailsResponse(v5) + 20);
  v7 = *(v3 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v10 = OUTLINED_FUNCTION_36();
    v11 = sub_26BD24600(v10);
    OUTLINED_FUNCTION_219(v11);
  }

  v12 = *a2;
  OUTLINED_FUNCTION_235();
  v13 = *(v9 + v12);
  *(v9 + v12) = v2;
}

uint64_t SupportOptionDetailsResponse.relatedProducts.modify()
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_142(v2) + 56) = v0;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_151_0(v3);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1E868(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.grlProduct.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.grlProduct.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1E944(void *a1)
{
  OUTLINED_FUNCTION_21_1();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_230();
  v6 = *v4;
  v5 = v4[1];

  return OUTLINED_FUNCTION_259();
}

uint64_t sub_26BD1E998(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.conciergeProduct.setter(v1, v2);
}

uint64_t sub_26BD1E9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  v8 = OUTLINED_FUNCTION_90();
  v9 = *(type metadata accessor for SupportOptionDetailsResponse(v8) + 20);
  v10 = *(v4 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v13 = OUTLINED_FUNCTION_36();
    v12 = sub_26BD24600(v13);
    *(v7 + v9) = v12;
  }

  v14 = (v12 + *a3);
  OUTLINED_FUNCTION_235();
  v15 = v14[1];
  *v14 = v5;
  v14[1] = v3;
}

uint64_t SupportOptionDetailsResponse.conciergeProduct.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1EB00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.conciergeSymptom.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.conciergeSymptom.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1EBDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.randevuProduct.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.randevuProduct.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1ECB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.detectedCarrierID.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.detectedCarrierID.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1ED94(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.localizedPurchaseRequirementsDescription.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.localizedPurchaseRequirementsDescription.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t SupportOptionDetailsResponse.usesSecureFlow.getter()
{
  OUTLINED_FUNCTION_21_1();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  OUTLINED_FUNCTION_230();
  return *(v2 + v3);
}

uint64_t SupportOptionDetailsResponse.usesSecureFlow.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for SupportOptionDetailsResponse(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v8 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD24600(v8);
    *(v2 + v4) = v7;
  }

  v9 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  result = OUTLINED_FUNCTION_235();
  *(v7 + v9) = a1 & 1;
  return result;
}

uint64_t SupportOptionDetailsResponse.usesSecureFlow.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_142(v2) + 72) = v0;
  OUTLINED_FUNCTION_21_1();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  OUTLINED_FUNCTION_127();
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD1EFA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    OUTLINED_FUNCTION_35_1();
    v10 = OUTLINED_FUNCTION_36();
    v11 = sub_26BD24600(v10);
    OUTLINED_FUNCTION_215(v11);
  }

  v12 = OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__usesSecureFlow;
  OUTLINED_FUNCTION_235();
  *(v7 + v12) = v4;

  free(v1);
}

uint64_t sub_26BD1F050(uint64_t *a1)
{
  v4 = OUTLINED_FUNCTION_256();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_17();
  v11 = *(v1 + *(type metadata accessor for SupportOptionDetailsResponse(v10) + 20));
  v12 = *a1;
  OUTLINED_FUNCTION_230();
  sub_26BD31AF8();
  sub_26BDA0810();
  OUTLINED_FUNCTION_14();
  if (v13)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v13)
    {
      return sub_26BD04E80(v2, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v15 = *(v14 + 32);
    OUTLINED_FUNCTION_141();
    return v16();
  }

  return result;
}

uint64_t sub_26BD1F170(uint64_t a1, uint64_t *a2)
{
  v5 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280448F88, &qword_26BDA5440);
  OUTLINED_FUNCTION_110(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_228();
  v11 = *(type metadata accessor for SupportOptionDetailsResponse(0) + 20);
  v12 = *(v2 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v15 = OUTLINED_FUNCTION_36();
    *(v5 + v11) = sub_26BD24600(v15);
  }

  v16 = sub_26BDA0810();
  OUTLINED_FUNCTION_34(v16);
  (*(v17 + 32))(v3, a1, v16);
  OUTLINED_FUNCTION_151();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  v21 = *a2;
  swift_beginAccess();
  sub_26BD2E160();
  return swift_endAccess();
}

void SupportOptionDetailsResponse.secureFlowResources.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void SupportOptionDetailsResponse.solutionIntentResources.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD1F624(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.redirectURLString.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.redirectURLString.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

uint64_t sub_26BD1F700(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.locale.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.locale.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void SupportOptionDetailsResponse.curbsideDetails.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD1F9A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SupportOptionDetailsResponse.localizedPricingDisclaimer.setter(v1, v2);
}

uint64_t SupportOptionDetailsResponse.localizedPricingDisclaimer.modify()
{
  v0 = OUTLINED_FUNCTION_192();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_0(v1);
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_297();

  return OUTLINED_FUNCTION_128();
}

void sub_26BD1FA74()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_54(v3);
  if (v6)
  {
    v7 = v5;
    v8 = *(v0 + 64);

    v9 = OUTLINED_FUNCTION_130();
    v7(v9);
    v10 = *(v0 + 56);
  }

  else
  {
    v11 = v4;
    v12 = *(v0 + 72);
    v13 = *(v0 + 64);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v0 + 72);
      v18 = *(v0 + 64);
      OUTLINED_FUNCTION_35_1();
      v19 = OUTLINED_FUNCTION_36();
      v16 = sub_26BD24600(v19);
      *(v18 + v17) = v16;
    }

    v20 = (v16 + *v11);
    OUTLINED_FUNCTION_235();
    v21 = v20[1];
    *v20 = v2;
    v20[1] = v1;
  }

  OUTLINED_FUNCTION_283();

  free(v22);
}

void SupportOptionDetailsResponse.appleIDRequirement.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void SupportOptionDetailsResponse.emailAttributes.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t sub_26BD1FED4(uint64_t *a1)
{
  v1 = *a1;

  return SupportOptionDetailsResponse.contactCarriersInfo.setter(v2);
}

uint64_t SupportOptionDetailsResponse.contactCarriersInfo.modify()
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_142(v2) + 56) = v0;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_151_0(v3);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void SupportOptionDetailsResponse.ers.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

uint64_t SupportOptionDetailsResponse.applicationData.getter()
{
  OUTLINED_FUNCTION_21_1();
  v2 = (*(v0 + v1) + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
  OUTLINED_FUNCTION_230();
  v4 = *v2;
  v3 = v2[1];
  v5 = OUTLINED_FUNCTION_259();
  sub_26BCFEFC4(v5, v6);
  return OUTLINED_FUNCTION_259();
}

uint64_t SupportOptionDetailsResponse.applicationData.setter()
{
  OUTLINED_FUNCTION_171();
  v4 = OUTLINED_FUNCTION_72_0();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_35_1();
    v6 = OUTLINED_FUNCTION_36();
    v7 = sub_26BD24600(v6);
    OUTLINED_FUNCTION_219(v7);
  }

  v8 = (v5 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
  OUTLINED_FUNCTION_235();
  v9 = *v8;
  v10 = v8[1];
  *v8 = v2;
  v8[1] = v0;
  return sub_26BCFF01C(v9, v10);
}

uint64_t SupportOptionDetailsResponse.applicationData.modify()
{
  v2 = OUTLINED_FUNCTION_192();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_0(v3);
  OUTLINED_FUNCTION_124();
  v4 = *v0;
  v5 = v0[1];
  *(v1 + 48) = *v0;
  *(v1 + 56) = v5;
  sub_26BCFEFC4(v4, v5);
  return OUTLINED_FUNCTION_133();
}

void sub_26BD202E0(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  if (v4)
  {
    v5 = *(v1 + 64);
    v6 = OUTLINED_FUNCTION_130();
    sub_26BCFEFC4(v6, v7);
    OUTLINED_FUNCTION_130();
    SupportOptionDetailsResponse.applicationData.setter();
    v8 = *(v1 + 48);
    v9 = *(v1 + 56);
  }

  else
  {
    v10 = *(v1 + 72);
    v11 = *(v1 + 64);
    v12 = *(v11 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = *(v1 + 72);
      v16 = *(v1 + 64);
      OUTLINED_FUNCTION_35_1();
      v17 = OUTLINED_FUNCTION_36();
      v18 = sub_26BD24600(v17);
      OUTLINED_FUNCTION_215(v18);
    }

    v19 = (v14 + OBJC_IVAR____TtCV15SupportServices28SupportOptionDetailsResponseP33_A0E00AF050C16E9BEC769A1E4F34E1C613_StorageClass__applicationData);
    OUTLINED_FUNCTION_235();
    v8 = *v19;
    v9 = v19[1];
    *v19 = v3;
    v19[1] = v2;
  }

  sub_26BCFF01C(v8, v9);

  free(v1);
}

uint64_t sub_26BD203A4(uint64_t *a1)
{
  v1 = *a1;

  return SupportOptionDetailsResponse.takeInForServiceDetails.setter(v2);
}

uint64_t SupportOptionDetailsResponse.takeInForServiceDetails.modify()
{
  v1 = OUTLINED_FUNCTION_144();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_142(v2) + 56) = v0;
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_151_0(v3);
  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_240();

  return OUTLINED_FUNCTION_128();
}

void sub_26BD20470(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {
    v7 = *(v4 + 56);
    v8 = *(*a1 + 48);

    a4(v9);
    v10 = *(v4 + 48);
  }

  else
  {
    v12 = *(v4 + 64);
    v13 = *(v4 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v4 + 64);
      v18 = *(v4 + 56);
      OUTLINED_FUNCTION_35_1();
      v19 = OUTLINED_FUNCTION_36();
      v20 = sub_26BD24600(v19);
      OUTLINED_FUNCTION_215(v20);
    }

    v21 = *a3;
    OUTLINED_FUNCTION_235();
    v22 = *(v16 + v21);
    *(v16 + v21) = v5;
  }

  free(v4);
}

void SupportOptionDetailsResponse.mailIn.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void SupportOptionDetailsResponse.preContact.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void SupportOptionDetailsResponse.manageCoverageFlow.modify()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_144();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_42(v3);
  v4 = OUTLINED_FUNCTION_131();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_110(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_47(v8);
  v9 = sub_26BDA0810();
  OUTLINED_FUNCTION_6(v9);
  *(v1 + 48) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_162(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_6_1(v14);
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_9();
  if (v15)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_9();
    if (!v15)
    {
      sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_21();
    v17(v16);
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_188();
}

void sub_26BD20A28()
{
  OUTLINED_FUNCTION_284();
  v2 = v1;
  v3 = *v0;
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 64);
  if (v6)
  {
    v7 = v3[5];
    v8 = v3[6];
    v9 = v3[3];
    v10 = v3[4];
    (*(v8 + 16))(*(*v0 + 56), v5, v7);
    v2(v4);
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    v11 = v3[3];
    v10 = v3[4];
    v1(*(*v0 + 64));
  }

  free(v5);
  free(v4);
  free(v10);
  OUTLINED_FUNCTION_283();

  free(v12);
}

uint64_t SupportOptionDetailsResponse.TimeSlot.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOptionDetailsResponse.TimeSlot(v0) + 28);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOptionDetailsResponse.TimeSlot.init()@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_167_0(a1);
  v3 = type metadata accessor for SupportOptionDetailsResponse.TimeSlot(v2);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v4 = v1 + *(v3 + 28);
  return _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
}

uint64_t SupportOptionDetailsResponse.SCBDetails.timeSlots.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_26BD20D40()
{
  v0 = OUTLINED_FUNCTION_217();
  v2 = *(v1(v0) + 28);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_148();

  return v7(v6);
}

uint64_t sub_26BD20DC8()
{
  v0 = OUTLINED_FUNCTION_134();
  v2 = *(v1(v0) + 28);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_234();

  return v7(v6);
}

uint64_t SupportOptionDetailsResponse.SCBDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOptionDetailsResponse.SCBDetails(v0) + 28);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOptionDetailsResponse.CLDDetails.contactDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  v10 = *(type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v9) + 20);
  OUTLINED_FUNCTION_71_0();
  v11 = type metadata accessor for CallContactDetails(0);
  OUTLINED_FUNCTION_14();
  if (v12)
  {
    OUTLINED_FUNCTION_82();
    v13 = a1 + *(v11 + 24);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v12)
    {
      return sub_26BD04E80(v1, &qword_280449FE0, &unk_26BDA5460);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_126();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t SupportOptionDetailsResponse.CLDDetails.contactDetails.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v1);
  sub_26BD04E80(v0 + *(v2 + 20), &qword_280449FE0, &unk_26BDA5460);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_143();
  sub_26BD2DF9C();
  type metadata accessor for CallContactDetails(0);
  v3 = OUTLINED_FUNCTION_51_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void SupportOptionDetailsResponse.CLDDetails.contactDetails.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_277();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = type metadata accessor for CallContactDetails(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_34(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_303(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_227(v13);
  v15 = *(type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v14) + 20);
  *(v0 + 40) = v15;
  OUTLINED_FUNCTION_32_0(v15);
  OUTLINED_FUNCTION_139_0();
  v16 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v16, v17, v9);
  if (v18)
  {
    OUTLINED_FUNCTION_140_0();
    v19 = OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_112(v19, v20, v9);
    if (!v18)
    {
      sub_26BD04E80(v7, &qword_280449FE0, &unk_26BDA5460);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_130();
    sub_26BD2DF9C();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_283();
}

uint64_t SupportOptionDetailsResponse.CLDDetails.hasContactDetails.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  v7 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(v6);
  OUTLINED_FUNCTION_32_0(*(v7 + 20));
  sub_26BD31AF8();
  type metadata accessor for CallContactDetails(0);
  v8 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v13, v14, &unk_26BDA5460);
  return v12;
}

Swift::Void __swiftcall SupportOptionDetailsResponse.CLDDetails.clearContactDetails()()
{
  v1 = type metadata accessor for SupportOptionDetailsResponse.CLDDetails(0);
  sub_26BD04E80(v0 + *(v1 + 20), &qword_280449FE0, &unk_26BDA5460);
  type metadata accessor for CallContactDetails(0);
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t SupportOptionDetailsResponse.C2CDetails.contactDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_122();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  v9 = OUTLINED_FUNCTION_17();
  v10 = *(type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v9) + 24);
  OUTLINED_FUNCTION_71_0();
  v11 = type metadata accessor for CallContactDetails(0);
  OUTLINED_FUNCTION_14();
  if (v12)
  {
    OUTLINED_FUNCTION_82();
    v13 = a1 + *(v11 + 24);
    _s15SupportServices0A19OptionTypeNamespaceVACycfC_0();
    result = OUTLINED_FUNCTION_14();
    if (!v12)
    {
      return sub_26BD04E80(v1, &qword_280449FE0, &unk_26BDA5460);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_126();
    return sub_26BD2DF9C();
  }

  return result;
}

uint64_t sub_26BD212E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v9 = a5(0);
  OUTLINED_FUNCTION_110(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_173();
  sub_26BD2DFF4();
  return a7(v7);
}

uint64_t SupportOptionDetailsResponse.C2CDetails.contactDetails.setter()
{
  v1 = OUTLINED_FUNCTION_134();
  v2 = type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v1);
  sub_26BD04E80(v0 + *(v2 + 24), &qword_280449FE0, &unk_26BDA5460);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_143();
  sub_26BD2DF9C();
  type metadata accessor for CallContactDetails(0);
  v3 = OUTLINED_FUNCTION_51_0();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void SupportOptionDetailsResponse.C2CDetails.contactDetails.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_277();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_187(v7);
  v9 = type metadata accessor for CallContactDetails(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_34(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_303(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_227(v13);
  v15 = *(type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v14) + 24);
  *(v0 + 40) = v15;
  OUTLINED_FUNCTION_32_0(v15);
  OUTLINED_FUNCTION_139_0();
  v16 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v16, v17, v9);
  if (v18)
  {
    OUTLINED_FUNCTION_140_0();
    v19 = OUTLINED_FUNCTION_114();
    OUTLINED_FUNCTION_112(v19, v20, v9);
    if (!v18)
    {
      sub_26BD04E80(v7, &qword_280449FE0, &unk_26BDA5460);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_2();
    OUTLINED_FUNCTION_130();
    sub_26BD2DF9C();
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_283();
}

void sub_26BD2154C()
{
  OUTLINED_FUNCTION_189();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 10);
  v6 = (*v0)[3];
  v7 = (*v0)[4];
  v8 = (*v0)[1];
  v9 = (*v0)[2];
  v10 = **v0;
  if (v11)
  {
    v12 = (*v0)[4];
    sub_26BD2DFF4();
    sub_26BD04E80(v10 + v5, v4, v3);
    sub_26BD2DF9C();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v9);
    OUTLINED_FUNCTION_173();
    sub_26BD2E04C();
  }

  else
  {
    sub_26BD04E80(v10 + v5, v1, v2);
    sub_26BD2DF9C();
    OUTLINED_FUNCTION_151();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_188();

  free(v19);
}

uint64_t sub_26BD21680()
{
  OUTLINED_FUNCTION_177();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_183();
  v9 = *(v1(0) + 24);
  sub_26BD31AF8();
  v10 = v0(0);
  OUTLINED_FUNCTION_112(v2, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_129();
  sub_26BD04E80(v13, v14, v15);
  return v12;
}

uint64_t sub_26BD21774()
{
  OUTLINED_FUNCTION_177();
  v2 = *(v1(0) + 24);
  OUTLINED_FUNCTION_141();
  sub_26BD04E80(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_26BD21824()
{
  v0 = OUTLINED_FUNCTION_217();
  v2 = *(v1(v0) + 20);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_148();

  return v7(v6);
}

uint64_t sub_26BD218AC()
{
  v0 = OUTLINED_FUNCTION_134();
  v2 = *(v1(v0) + 20);
  v3 = sub_26BDA0850();
  OUTLINED_FUNCTION_34(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_234();

  return v7(v6);
}

uint64_t SupportOptionDetailsResponse.C2CDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_134();
  v1 = *(type metadata accessor for SupportOptionDetailsResponse.C2CDetails(v0) + 20);
  return OUTLINED_FUNCTION_185();
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.countryItccList.getter()
{
  v1 = OUTLINED_FUNCTION_122();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_110(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_17();
  v8 = *(type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v7) + 48);
  OUTLINED_FUNCTION_71_0();
  sub_26BDA0810();
  OUTLINED_FUNCTION_14();
  if (v9)
  {
    sub_26BDA0800();
    result = OUTLINED_FUNCTION_14();
    if (!v9)
    {
      return sub_26BD04E80(v0, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_126_0();
    v11 = *(v10 + 32);
    OUTLINED_FUNCTION_141();
    return v12();
  }

  return result;
}

uint64_t sub_26BD21A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = sub_26BDA0810();
  v7 = OUTLINED_FUNCTION_18(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v12 = v11 - v10;
  v14 = *(v13 + 16);
  v15 = OUTLINED_FUNCTION_130();
  v16(v15);
  return a5(v12);
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.countryItccList.setter()
{
  v2 = OUTLINED_FUNCTION_134();
  v3 = *(type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v2) + 48);
  sub_26BD04E80(v1 + v3, &qword_280448F88, &qword_26BDA5440);
  v4 = sub_26BDA0810();
  OUTLINED_FUNCTION_34(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_151();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
}

void SupportOptionDetailsResponse.TakeInForServiceDetails.countryItccList.modify()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_165();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_59(v2);
  v3 = OUTLINED_FUNCTION_117_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_110(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  OUTLINED_FUNCTION_187(v7);
  v8 = sub_26BDA0810();
  *(v0 + 16) = v8;
  OUTLINED_FUNCTION_18(v8);
  v10 = v9;
  *(v0 + 24) = v9;
  v12 = *(v11 + 64);
  *(v0 + 32) = __swift_coroFrameAllocStub(v12);
  *(v0 + 40) = __swift_coroFrameAllocStub(v12);
  *(v0 + 48) = *(type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0) + 48);
  OUTLINED_FUNCTION_139_0();
  OUTLINED_FUNCTION_112(v7, 1, v8);
  if (v13)
  {
    sub_26BDA0800();
    OUTLINED_FUNCTION_112(v7, 1, v8);
    if (!v13)
    {
      sub_26BD04E80(v7, &qword_280448F88, &qword_26BDA5440);
    }
  }

  else
  {
    v14 = *(v10 + 32);
    v15 = OUTLINED_FUNCTION_130();
    v16(v15);
  }

  OUTLINED_FUNCTION_188();
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.hasCountryItccList.getter()
{
  v0 = OUTLINED_FUNCTION_128();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_110(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_111();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_17();
  v7 = type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(v6);
  OUTLINED_FUNCTION_32_0(*(v7 + 48));
  sub_26BD31AF8();
  sub_26BDA0810();
  v8 = OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_112(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_126();
  sub_26BD04E80(v13, v14, &qword_26BDA5440);
  return v12;
}

Swift::Void __swiftcall SupportOptionDetailsResponse.TakeInForServiceDetails.clearCountryItccList()()
{
  v1 = type metadata accessor for SupportOptionDetailsResponse.TakeInForServiceDetails(0);
  sub_26BD04E80(v0 + *(v1 + 48), &qword_280448F88, &qword_26BDA5440);
  sub_26BDA0810();
  OUTLINED_FUNCTION_123();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t SupportOptionDetailsResponse.TakeInForServiceDetails.localizedSectionHeader.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_147();
}