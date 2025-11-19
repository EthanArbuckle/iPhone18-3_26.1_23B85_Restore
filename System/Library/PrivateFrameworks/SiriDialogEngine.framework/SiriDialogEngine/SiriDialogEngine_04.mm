uint64_t sub_222D30C5C(char a1)
{
  v7[39] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C450, &qword_222D56E10);
  sub_222D33800();
  result = sub_222D52F1C();
  if (!v1)
  {
    if (v11 == 1)
    {
      return 0;
    }

    else
    {
      v13 = v8;
      v14 = v9;
      v15 = v10;
      v16 = v11;
      v17 = v12;
      sub_222D31FFC(v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        v3 = sub_222D52DFC();
        swift_allocError();
        v5 = v4;
        sub_222D52DEC();
        (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84168], v3);
        return swift_willThrow();
      }
    }
  }

  return result;
}

void sub_222D30E00()
{
  OUTLINED_FUNCTION_19_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C470, &qword_222D56E18);
  OUTLINED_FUNCTION_113(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13_6();
  OUTLINED_FUNCTION_48_2();
  sub_222D32A5C();
  OUTLINED_FUNCTION_47_2();
  sub_222D531AC();
  sub_222D5217C();
  OUTLINED_FUNCTION_15_5();
  sub_222D52FDC();
  if (v1)
  {
    (*(v5 + 8))(v2, v3);
  }

  else
  {

    v9 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_siriVoiceGender);
    v10 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_siriVoiceGender + 8);
    OUTLINED_FUNCTION_15_5();
    sub_222D52FDC();
    v23 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_dialogMetadata);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C478, &qword_222D56E20);
    sub_222D32B20();
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_15_5();
    sub_222D5300C();
    v11 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_interactionId);
    v12 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_interactionId + 8);
    OUTLINED_FUNCTION_15_5();
    sub_222D52FDC();
    v13 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_executionRequestId);
    v14 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_executionRequestId + 8);
    OUTLINED_FUNCTION_15_5();
    sub_222D52FDC();
    v15 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_isMultiUserEnabled);
    OUTLINED_FUNCTION_8_9(5);
    sub_222D52FEC();
    v16 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_requiresUserGrounding);
    OUTLINED_FUNCTION_8_9(6);
    sub_222D52FEC();
    v17 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_randomSeed);
    OUTLINED_FUNCTION_8_9(7);
    sub_222D5301C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C440, &unk_222D56DF0);
    sub_222D32C34();
    OUTLINED_FUNCTION_15_5();
    sub_222D5300C();
    v18 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_currentTime);
    OUTLINED_FUNCTION_8_9(9);
    sub_222D52FFC();
    v24 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_customPronunciations);
    OUTLINED_FUNCTION_47_2();
    OUTLINED_FUNCTION_15_5();
    sub_222D5300C();
    v19 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_globalParameters);
    OUTLINED_FUNCTION_15_5();
    sub_222D31170(v20);
    v21 = *(v0 + OBJC_IVAR____TtC16SiriDialogEngine10CATGlobals_userSettings);
    OUTLINED_FUNCTION_15_5();
    sub_222D31170(v22);
    (*(v5 + 8))(v2, v3);
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_222D31170(uint64_t result)
{
  if (result)
  {

    result = sub_222D31334(v2, v3);
    if (!v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C470, &qword_222D56E18);
      sub_222D337AC();
      sub_222D5300C();
      v5 = *&v3[5];
      sub_222CDC59C(&v5, &qword_27D03C448, &unk_222D56E00);
      v4 = v3[7];
      return sub_222CDC59C(&v4, &qword_27D03C4D0, &qword_222D57130);
    }
  }

  return result;
}

id CATGlobals.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CATGlobals(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_222D312E4(void *a1@<X8>)
{
  CATGlobals.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_222D31334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = MEMORY[0x277D84F98];
  sub_222D31ECC(a1, &v6);
  if (v2)
  {
  }

  else
  {

    v5 = v6;
    *a2 = 2;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = v5;
  }

  return result;
}

uint64_t sub_222D313D0(uint64_t a1, uint64_t *a2)
{
  sub_222CE2B7C();

  sub_222CE0BC0(v29, v30);
  if (swift_dynamicCast())
  {
    sub_222CE2B7C();
    v4 = *(&v26 + 1);
    v5 = v26;
    sub_222CE2B7C();

    sub_222CE0BC0(v23, v24);
    swift_dynamicCast();
    v61 = 1;
    v32 = v25;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v6 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    *&v22 = *a2;
    v7 = &v32;
LABEL_9:
    sub_222D274B8(v7, v5, v4);
    *a2 = v22;

    v11 = &v26;
    return __swift_destroy_boxed_opaque_existential_1Tm(v11 + 2);
  }

  sub_222CE2B7C();

  sub_222CE0BC0(v29, v30);
  if (swift_dynamicCast())
  {
    sub_222CE2B7C();
    v4 = *(&v26 + 1);
    v5 = v26;
    sub_222CE2B7C();

    sub_222CE0BC0(v23, v24);
    swift_dynamicCast();
    v61 = 1;
    v40[0] = 2;
    v40[16] = 0;
    v41 = 0;
    v42 = 1;
    v44 = 0;
    v45 = 0;
    v43 = 0;
    v8 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    *&v22 = *a2;
    v7 = v40;
    goto LABEL_9;
  }

  sub_222CE2B7C();

  sub_222CE0BC0(v29, v30);
  if (swift_dynamicCast())
  {
    sub_222CE2B7C();
    v4 = *(&v26 + 1);
    v5 = v26;
    sub_222CE2B7C();

    sub_222CE0BC0(v23, v24);
    swift_dynamicCast();
    v61 = 0;
    v46 = 2;
    v47 = 0;
    v48 = 1;
    v49 = 0;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    v9 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    *&v22 = *a2;
    v7 = &v46;
    goto LABEL_9;
  }

  sub_222CE2B7C();

  sub_222CE0BC0(v29, v30);
  if (swift_dynamicCast())
  {

    sub_222CE2B7C();
    v4 = *(&v26 + 1);
    v5 = v26;
    sub_222CE2B7C();

    sub_222CE0BC0(v23, v24);
    swift_dynamicCast();
    v61 = 1;
    v25 = 1;
    v53 = 2;
    v54 = 0;
    v55 = 1;
    v56 = 0;
    v57 = 1;
    v58 = v20;
    v59 = v21;
    v60 = 0;
    v10 = *a2;
    swift_isUniquelyReferenced_nonNull_native();
    *&v22 = *a2;
    v7 = &v53;
    goto LABEL_9;
  }

  sub_222CE2B7C();

  sub_222CE0BC0(v29, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
  if (swift_dynamicCast())
  {

    sub_222CE2B7C();
    v13 = v28[1];
    v19 = v28[0];
    sub_222CE2B7C();

    sub_222CE0BC0(&v27, &v22);
    swift_dynamicCast();
    sub_222D31334(v31, *&v30[0]);
    if (!v2)
    {
      v14 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      *&v26 = *a2;
      sub_222D274B8(v31, v19, v13);
      *a2 = v26;
    }

    v11 = v28;
    return __swift_destroy_boxed_opaque_existential_1Tm(v11 + 2);
  }

  v15 = sub_222D52E1C();
  swift_allocError();
  v17 = v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C4E0, &qword_222D57140) + 48);
  v17[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C4D8, &qword_222D57138);
  *v17 = swift_allocObject();
  sub_222CE2B7C();
  sub_222D52DEC();
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D841A8], v15);
  return swift_willThrow();
}

uint64_t sub_222D31AC0(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v63 = a1;

  v8 = 0;
  v42 = v7;
  v43 = v3;
  v41 = a2;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (*(v63 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*(v63 + 56) + (v10 << 6));
      v15 = *v14;
      v50[0] = *(v14 + 1);
      *(v50 + 3) = *(v14 + 1);
      v16 = *(v14 + 1);
      v17 = v14[16];
      v49[0] = *(v14 + 17);
      *(v49 + 3) = *(v14 + 5);
      v18 = *(v14 + 3);
      v19 = v14[32];
      v20 = *(v14 + 33);
      *&v48[3] = *(v14 + 9);
      *v48 = v20;
      v21 = *(v14 + 5);
      v22 = *(v14 + 6);
      v23 = *(v14 + 7);
      v51[0] = v12;
      v51[1] = v13;
      v52 = v15;
      *&v53[3] = *(v50 + 3);
      *v53 = v50[0];
      v54 = v16;
      v55 = v17;
      *&v56[3] = *(v49 + 3);
      *v56 = v49[0];
      v57 = v18;
      v58 = v19;
      *&v59[3] = *&v48[3];
      *v59 = *v48;
      v60 = v21;
      v61 = v22;
      v62 = v23;
      if (v15 != 2)
      {
        break;
      }

      if ((v17 & 1) == 0)
      {
        v47 = MEMORY[0x277D84A28];
        *&v46 = v16;
        goto LABEL_16;
      }

      if ((v19 & 1) == 0)
      {
        v47 = MEMORY[0x277D839F8];
        *&v46 = v18;
        goto LABEL_16;
      }

      if (v22)
      {
        v47 = MEMORY[0x277D837D0];
        *&v46 = v21;
        *(&v46 + 1) = v22;

        sub_222CE2B7C();
      }

      else
      {
        v45 = MEMORY[0x277D84F98];
        if (!v23)
        {
          goto LABEL_33;
        }

        sub_222CE2B7C();
        sub_222D31AC0(v23, &v45);
        v39 = v45;
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
        *&v46 = v39;
      }

LABEL_17:
      sub_222CE0BC0(&v46, v44);
      v24 = *a2;
      swift_isUniquelyReferenced_nonNull_native();
      v45 = *a2;
      v25 = v45;
      v26 = v13;
      v27 = sub_222CE1050(v12, v13);
      if (__OFADD__(v25[2], (v28 & 1) == 0))
      {
        goto LABEL_31;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C318, &qword_222D56100);
      if (sub_222D52E4C())
      {
        v31 = sub_222CE1050(v12, v26);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_34;
        }

        v29 = v31;
      }

      v33 = v45;
      if (v30)
      {
        v34 = (v45[7] + 32 * v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        sub_222CE0BC0(v44, v34);
      }

      else
      {
        v45[(v29 >> 6) + 8] |= 1 << v29;
        v35 = (v33[6] + 16 * v29);
        *v35 = v12;
        v35[1] = v26;
        sub_222CE0BC0(v44, (v33[7] + 32 * v29));
        v36 = v33[2];
        v37 = __OFADD__(v36, 1);
        v38 = v36 + 1;
        if (v37)
        {
          goto LABEL_32;
        }

        v33[2] = v38;
      }

      v6 &= v6 - 1;
      a2 = v41;
      *v41 = v33;
      sub_222CDC59C(v51, &qword_27D03C4F0, &unk_222D57148);
      v7 = v42;
      v3 = v43;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    v47 = MEMORY[0x277D839B0];
    LOBYTE(v46) = v15 & 1;
LABEL_16:

    sub_222CE2B7C();
    goto LABEL_17;
  }

LABEL_4:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_222D5312C();
  __break(1u);
  return result;
}

uint64_t sub_222D31ECC(uint64_t a1, uint64_t *a2)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_222CE4EC0(*(a1 + 56) + 32 * v14, &v19);
    v18[0] = v16;
    v18[1] = v17;

    sub_222D313D0(v18, a2);
    result = sub_222CDC59C(v18, &qword_27D03C4D8, &qword_222D57138);
    if (v2)
    {
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_222D31FFC(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3 != 2)
  {
    *(a1 + 24) = MEMORY[0x277D839B0];
    *a1 = v3;
    return;
  }

  if ((v1[16] & 1) == 0)
  {
    v6 = *(v1 + 1);
    v7 = MEMORY[0x277D84A28];
LABEL_11:
    *(a1 + 24) = v7;
    *a1 = v6;
    return;
  }

  if ((v1[32] & 1) == 0)
  {
    v6 = *(v1 + 3);
    v7 = MEMORY[0x277D839F8];
    goto LABEL_11;
  }

  v4 = *(v1 + 6);
  if (v4)
  {
    v5 = *(v1 + 5);
    *(a1 + 24) = MEMORY[0x277D837D0];
    *a1 = v5;
    *(a1 + 8) = v4;
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
    v8 = *(v1 + 7);
    if (v8)
    {
      sub_222D31AC0(v8, &v10);
      v9 = v10;
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      *a1 = v9;
    }

    else
    {
      __break(1u);
    }
  }
}

BOOL sub_222D32108()
{
  OUTLINED_FUNCTION_32_3();
  v3 = *v2;
  v5 = *v4;
  if (v3 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }

LABEL_6:
    v7 = *(v0 + 16);
    if (*(v1 + 16))
    {
      if (!*(v0 + 16))
      {
        return 0;
      }
    }

    else
    {
      if (*(v1 + 8) != *(v0 + 8))
      {
        v7 = 1;
      }

      if (v7)
      {
        return 0;
      }
    }

    v8 = *(v0 + 32);
    if (*(v1 + 32))
    {
      if (!*(v0 + 32))
      {
        return 0;
      }
    }

    else
    {
      if (*(v1 + 24) != *(v0 + 24))
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    v9 = *(v1 + 48);
    v10 = *(v0 + 48);
    if (v9)
    {
      if (!v10)
      {
        return 0;
      }

      v11 = *(v1 + 40) == *(v0 + 40) && v9 == v10;
      if (!v11 && (sub_222D5305C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      return 0;
    }

    v12 = *(v0 + 56);
    if (*(v1 + 56))
    {
      if (!v12)
      {
        return 0;
      }

      v13 = OUTLINED_FUNCTION_112();
      v15 = sub_222D445CC(v13, v14);

      return (v15 & 1) != 0;
    }

    return !v12;
  }

  result = 0;
  if (v5 != 2 && ((v5 ^ v3) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_222D32220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756C61566C6F6F62 && a2 == 0xE900000000000065;
  if (v4 || (sub_222D5305C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61563436746E69 && a2 == 0xEA00000000006575;
    if (v6 || (sub_222D5305C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6156656C62756F64 && a2 == 0xEB0000000065756CLL;
      if (v7 || (sub_222D5305C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL;
        if (v8 || (sub_222D5305C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x616E6F6974636964 && a2 == 0xEF65756C61567972)
        {

          return 4;
        }

        else
        {
          v10 = sub_222D5305C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_222D323E4(char a1)
{
  result = 0x756C61566C6F6F62;
  switch(a1)
  {
    case 1:
      result = 0x6C61563436746E69;
      break;
    case 2:
      v3 = 0x656C62756F64;
      goto LABEL_6;
    case 3:
      v3 = 0x676E69727473;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6156000000000000;
      break;
    case 4:
      result = 0x616E6F6974636964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D32494()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C510, &qword_222D57320);
  OUTLINED_FUNCTION_113(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-v8];
  OUTLINED_FUNCTION_48_2();
  sub_222D33A90();
  OUTLINED_FUNCTION_47_2();
  sub_222D531AC();
  v10 = *v0;
  v21 = 0;
  sub_222D52F9C();
  if (!v1)
  {
    v11 = *(v0 + 1);
    v12 = v0[16];
    OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_34_4();
    sub_222D52FCC();
    v13 = *(v0 + 3);
    v14 = v0[32];
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_34_4();
    sub_222D52FAC();
    v15 = *(v0 + 5);
    v16 = *(v0 + 6);
    v20 = 3;
    OUTLINED_FUNCTION_34_4();
    sub_222D52F8C();
    v19 = *(v0 + 7);
    v18[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C520, &qword_222D57328);
    sub_222D33AE4(&qword_27D03C528, sub_222D337AC);
    sub_222D52FBC();
  }

  return (*(v4 + 8))(v9, v2);
}

void sub_222D326A4()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C530, &qword_222D57330);
  OUTLINED_FUNCTION_113(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_50();
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  v13 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_222D33A90();
  sub_222D5318C();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_21_5();
    v14 = sub_222D52EEC();
    OUTLINED_FUNCTION_62_0();
    OUTLINED_FUNCTION_21_5();
    v15 = sub_222D52F2C();
    v17 = v16;
    v28 = v15;
    OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_21_5();
    v18 = sub_222D52EFC();
    v26 = v19;
    v27 = v18;
    OUTLINED_FUNCTION_21_5();
    v24 = sub_222D52EDC();
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C520, &qword_222D57328);
    sub_222D33AE4(&qword_27D03C538, sub_222D33800);
    sub_222D52F1C();
    (*(v7 + 8))(v12, v5);
    v21 = v30;
    v29 = v26 & 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    *v4 = v14;
    *(v4 + 8) = v28;
    *(v4 + 16) = v17 & 1;
    *(v4 + 24) = v27;
    *(v4 + 32) = v29;
    v22 = v25;
    *(v4 + 40) = v24;
    *(v4 + 48) = v22;
    *(v4 + 56) = v21;
  }

  OUTLINED_FUNCTION_20();
}

uint64_t sub_222D3295C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_222D32220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_222D32984(uint64_t a1)
{
  v2 = sub_222D33A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D329C0(uint64_t a1)
{
  v2 = sub_222D33A90();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_222D329FC@<D0>(_OWORD *a1@<X8>)
{
  sub_222D326A4();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_222D32A5C()
{
  result = qword_27D03C458;
  if (!qword_27D03C458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C458);
  }

  return result;
}

uint64_t sub_222D32AB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C440, &unk_222D56DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_222D32B20()
{
  result = qword_27D03C480;
  if (!qword_27D03C480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C478, &qword_222D56E20);
    sub_222D32BC8(&qword_27D03C488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C480);
  }

  return result;
}

uint64_t sub_222D32BC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C130, &qword_222D55008);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222D32C34()
{
  result = qword_27D03C490;
  if (!qword_27D03C490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C440, &unk_222D56DF0);
    sub_222CE66DC(&qword_27D03C498, MEMORY[0x277D61CC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C490);
  }

  return result;
}

void sub_222D32CF0()
{
  v0 = sub_222D521AC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_222D32E98();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_222D32E98()
{
  if (!qword_280D3DD78)
  {
    sub_222D525AC();
    v0 = sub_222D52CBC();
    if (!v1)
    {
      atomic_store(v0, &qword_280D3DD78);
    }
  }
}

void sub_222D32EF8()
{
  v0 = sub_222D521AC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_222D32E98();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_222D5246C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of CATGlobals.Builder.withDeviceLocale(_:)()
{
  return (*(*v0 + 736))();
}

{
  return (*(*v0 + 744))();
}

uint64_t dispatch thunk of CATGlobals.Builder.withNow(_:)()
{
  return (*(*v0 + 864))();
}

{
  return (*(*v0 + 872))();
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

uint64_t sub_222D3347C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_222D334D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CATGlobals.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CATGlobals.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D336A8()
{
  result = qword_27D03C4A0;
  if (!qword_27D03C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C4A0);
  }

  return result;
}

unint64_t sub_222D33700()
{
  result = qword_27D03C4A8;
  if (!qword_27D03C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C4A8);
  }

  return result;
}

unint64_t sub_222D33758()
{
  result = qword_27D03C4B0;
  if (!qword_27D03C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C4B0);
  }

  return result;
}

unint64_t sub_222D337AC()
{
  result = qword_27D03C4C8;
  if (!qword_27D03C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C4C8);
  }

  return result;
}

unint64_t sub_222D33800()
{
  result = qword_27D03C4E8;
  if (!qword_27D03C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C4E8);
  }

  return result;
}

uint64_t sub_222D33854(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_222D5292C();
  }

  return OUTLINED_FUNCTION_6();
}

uint64_t sub_222D338B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
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

uint64_t sub_222D33904(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

unint64_t sub_222D3398C()
{
  result = qword_27D03C508;
  if (!qword_27D03C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C508);
  }

  return result;
}

unint64_t sub_222D339E4()
{
  result = qword_280D3DB60;
  if (!qword_280D3DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3DB60);
  }

  return result;
}

unint64_t sub_222D33A3C()
{
  result = qword_280D3DB68;
  if (!qword_280D3DB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3DB68);
  }

  return result;
}

unint64_t sub_222D33A90()
{
  result = qword_27D03C518;
  if (!qword_27D03C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C518);
  }

  return result;
}

uint64_t sub_222D33AE4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C520, &qword_222D57328);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypedValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D33C48()
{
  result = qword_27D03C540;
  if (!qword_27D03C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C540);
  }

  return result;
}

unint64_t sub_222D33CA0()
{
  result = qword_27D03C548;
  if (!qword_27D03C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C548);
  }

  return result;
}

unint64_t sub_222D33CF8()
{
  result = qword_27D03C550;
  if (!qword_27D03C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C550);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return sub_222D5305C();
}

uint64_t OUTLINED_FUNCTION_56_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + a2);
  *(v2 + a2) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (v3 + a3);
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return sub_222D5282C();
}

double sub_222D33DEC@<D0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  a2(v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  a3[1] = v6;
  return result;
}

uint64_t sub_222D33E2C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  sub_222CE3060(v11[0], v6);
  return a5(v11);
}

double DialogPronoun.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

double DialogPronoun.Builder.init()()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t sub_222D33EC4()
{
  type metadata accessor for DialogPronoun();
  v0 = swift_allocObject();

  DialogPronoun.init(builder:)(v1);
  return v0;
}

uint64_t DialogPronoun.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogPronoun.init(builder:)(a1);
  return v2;
}

uint64_t *DialogPronoun.Builder.deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_222CE2920(v0[2], v0[3]);
  v3 = v0[8];
  v4 = v0[9];
  sub_222CE2920(v0[6], v0[7]);
  return v0;
}

uint64_t DialogPronoun.Builder.__deallocating_deinit()
{
  DialogPronoun.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void *DialogPronoun.init(builder:)(void *a1)
{
  v1[2] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  swift_beginAccess();
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  sub_222CE3060(v3, v4);
  sub_222CE3060(v7, v8);

  v1[7] = v7;
  v1[8] = v8;
  v1[9] = v9;
  v1[10] = v10;
  return v1;
}

double sub_222D340CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x7265646E6567 && a2 == 0xE600000000000000;
  if (!v6 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    v14 = a1 == 0x506C616974696E69 && a2 == 0xEE006E756F6E6F72;
    if (v14 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v8 = v3[8];
      if (v8)
      {
        v10 = v3[9];
        v9 = v3[10];
        v11 = v3[7];
        goto LABEL_8;
      }
    }

    else
    {
      v15 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
      if (v15 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        sub_222CFBC1C();
        if (v18)
        {
          *(a3 + 24) = &type metadata for SpeakableString;
          v16 = swift_allocObject();
          *a3 = v16;
          v16[2] = v17;
          v16[3] = v18;
          v16[4] = v19;
          v16[5] = v20;
          return result;
        }
      }
    }

LABEL_25:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_25;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
LABEL_8:
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

  return result;
}

uint64_t sub_222D3428C()
{
  v0 = sub_222D52ECC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D342E0(char a1)
{
  if (a1)
  {
    return 0x506C616974696E69;
  }

  else
  {
    return 0x7265646E6567;
  }
}

uint64_t sub_222D34344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D3428C();
  *a2 = result;
  return result;
}

uint64_t sub_222D34374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D342E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D343A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D3428C();
  *a1 = result;
  return result;
}

uint64_t sub_222D343D0(uint64_t a1)
{
  v2 = sub_222D34634();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D3440C(uint64_t a1)
{
  v2 = sub_222D34634();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogPronoun.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_222CE2920(*(v0 + 24), *(v0 + 32));
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  sub_222CE2920(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t DialogPronoun.__deallocating_deinit()
{
  DialogPronoun.deinit();
  v0 = OUTLINED_FUNCTION_92();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D344AC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C558, &qword_222D57440);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D34634();
  sub_222D531AC();
  v14 = v3[4];
  v15 = v3[5];
  v16 = v3[6];
  v23 = v3[3];
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v22 = 0;
  sub_222CE3060(v23, v14);
  sub_222CF2084();
  OUTLINED_FUNCTION_6_2();
  sub_222CE2920(v23, v24);
  if (!v2)
  {
    v17 = v3[8];
    v18 = v3[9];
    v19 = v3[10];
    v23 = v3[7];
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v22 = 1;
    sub_222CE3060(v23, v17);
    OUTLINED_FUNCTION_6_2();
    sub_222CE2920(v23, v24);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D34634()
{
  result = qword_27D03C560;
  if (!qword_27D03C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C560);
  }

  return result;
}

uint64_t DialogPronoun.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogPronoun.init(from:)(a1);
  return v2;
}

uint64_t DialogPronoun.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C568, &qword_222D57448);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D34634();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogPronoun();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C();
    OUTLINED_FUNCTION_3();
    *(v1 + 24) = v12;
    *(v1 + 40) = v13;
    OUTLINED_FUNCTION_3();
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    *(v1 + 56) = v12;
    *(v1 + 72) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D34908(uint64_t a1)
{
  *(a1 + 8) = sub_222D34970(&qword_27D03C170);
  result = sub_222D34970(qword_280D3C778);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D34970(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogPronoun();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D349B0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 184))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogPronoun.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D34E68()
{
  result = qword_27D03C570;
  if (!qword_27D03C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C570);
  }

  return result;
}

unint64_t sub_222D34EC0()
{
  result = qword_27D03C578;
  if (!qword_27D03C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C578);
  }

  return result;
}

unint64_t sub_222D34F18()
{
  result = qword_27D03C580;
  if (!qword_27D03C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C580);
  }

  return result;
}

uint64_t sub_222D34FEC()
{
  type metadata accessor for DialogWeight();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogWeight.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t *DialogWeight.Builder.deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);
  return v0;
}

uint64_t DialogWeight.Builder.__deallocating_deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D35108(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_222D5305C() & 1) != 0 || (a1 == 0x6169766572626261 ? (v7 = a2 == 0xEB00000000646574) : (v7 = 0), v7 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0x6D69786F72707061 ? (v8 = a2 == 0xEB00000000657461) : (v8 = 0), v8 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0xD000000000000012 ? (v10 = 0x8000000222D5ACF0 == a2) : (v10 = 0), v10 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0xD000000000000013 ? (v11 = 0x8000000222D5AD10 == a2) : (v11 = 0), v11 || (OUTLINED_FUNCTION_1_1() & 1) != 0)))))
  {
    sub_222CFA400();
    if (v13)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v9 = swift_allocObject();
      *a3 = v9;
      v9[2] = v12;
      v9[3] = v13;
      v9[4] = v14;
      v9[5] = v15;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {

    sub_222D1C028(a1, a2, a3);
  }
}

uint64_t DialogWeight.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogWeight.init(from:)(a1);
}

uint64_t DialogWeight.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogWeight.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

double sub_222D35544@<D0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  a2(v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  a3[1] = v6;
  return result;
}

uint64_t sub_222D35584(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  sub_222CE3060(v11[0], v6);
  return a5(v11);
}

double DialogStringPair.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  return result;
}

double DialogStringPair.Builder.init()()
{
  result = 0.0;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  return result;
}

uint64_t sub_222D3561C()
{
  type metadata accessor for DialogStringPair();
  v0 = swift_allocObject();

  DialogStringPair.init(builder:)(v1);
  return v0;
}

uint64_t DialogStringPair.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogStringPair.init(builder:)(a1);
  return v2;
}

uint64_t *DialogStringPair.Builder.deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_222CE2920(v0[2], v0[3]);
  v3 = v0[8];
  v4 = v0[9];
  sub_222CE2920(v0[6], v0[7]);
  return v0;
}

uint64_t DialogStringPair.Builder.__deallocating_deinit()
{
  DialogStringPair.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void *DialogStringPair.init(builder:)(void *a1)
{
  v1[2] = 0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  swift_beginAccess();
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  sub_222CE3060(v3, v4);
  sub_222CE3060(v7, v8);

  v1[7] = v7;
  v1[8] = v8;
  v1[9] = v9;
  v1[10] = v10;
  return v1;
}

double sub_222D3581C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (!v6 && (sub_222D5305C() & 1) == 0)
  {
    v14 = a1 == 0x646E6F636573 && a2 == 0xE600000000000000;
    if (v14 || (sub_222D5305C() & 1) != 0)
    {
      v8 = v3[8];
      if (v8)
      {
        v10 = v3[9];
        v9 = v3[10];
        v11 = v3[7];
        goto LABEL_8;
      }
    }

LABEL_18:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_18;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
LABEL_8:
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

  return result;
}

uint64_t sub_222D35944()
{
  v0 = sub_222D52ECC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D35998(char a1)
{
  if (a1)
  {
    return 0x646E6F636573;
  }

  else
  {
    return 0x7473726966;
  }
}

uint64_t sub_222D359EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D35944();
  *a2 = result;
  return result;
}

uint64_t sub_222D35A1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D35998(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D35A50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D35944();
  *a1 = result;
  return result;
}

uint64_t sub_222D35A78(uint64_t a1)
{
  v2 = sub_222D35CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D35AB4(uint64_t a1)
{
  v2 = sub_222D35CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogStringPair.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_222CE2920(*(v0 + 24), *(v0 + 32));
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  sub_222CE2920(*(v0 + 56), *(v0 + 64));
  return v0;
}

uint64_t DialogStringPair.__deallocating_deinit()
{
  DialogStringPair.deinit();
  v0 = OUTLINED_FUNCTION_92();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D35B54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C588, &qword_222D576D0);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D35CDC();
  sub_222D531AC();
  v14 = v3[4];
  v15 = v3[5];
  v16 = v3[6];
  v23 = v3[3];
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v22 = 0;
  sub_222CE3060(v23, v14);
  sub_222CF2084();
  OUTLINED_FUNCTION_6_2();
  sub_222CE2920(v23, v24);
  if (!v2)
  {
    v17 = v3[8];
    v18 = v3[9];
    v19 = v3[10];
    v23 = v3[7];
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v22 = 1;
    sub_222CE3060(v23, v17);
    OUTLINED_FUNCTION_6_2();
    sub_222CE2920(v23, v24);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D35CDC()
{
  result = qword_27D03C590;
  if (!qword_27D03C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C590);
  }

  return result;
}

uint64_t DialogStringPair.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_92();
  v2 = swift_allocObject();
  DialogStringPair.init(from:)(a1);
  return v2;
}

uint64_t DialogStringPair.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C598, &qword_222D576D8);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D35CDC();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogStringPair();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C();
    OUTLINED_FUNCTION_3();
    *(v1 + 24) = v12;
    *(v1 + 40) = v13;
    OUTLINED_FUNCTION_3();
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    *(v1 + 56) = v12;
    *(v1 + 72) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D35FC0(uint64_t a1)
{
  *(a1 + 8) = sub_222D36028(&qword_27D03C5A0);
  result = sub_222D36028(&qword_27D03C5A8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D36028(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogStringPair();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D36068@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 176))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogStringPair.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D3650C()
{
  result = qword_27D03C5B0;
  if (!qword_27D03C5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C5B0);
  }

  return result;
}

unint64_t sub_222D36564()
{
  result = qword_27D03C5B8;
  if (!qword_27D03C5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C5B8);
  }

  return result;
}

unint64_t sub_222D365BC()
{
  result = qword_27D03C5C0;
  if (!qword_27D03C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C5C0);
  }

  return result;
}

uint64_t sub_222D36690()
{
  type metadata accessor for DialogPercent();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogPercent.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t *DialogPercent.Builder.deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);
  return v0;
}

uint64_t DialogPercent.Builder.__deallocating_deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D367AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0xD000000000000011 ? (v7 = 0x8000000222D5C780 == a2) : (v7 = 0), v7 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x546F54646E756F72 ? (v9 = a2 == 0xED00007368746E65) : (v9 = 0), v9 || (OUTLINED_FUNCTION_49() & 1) != 0)))
  {
    sub_222CFA468();
    if (v11)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v8 = swift_allocObject();
      *a3 = v8;
      v8[2] = v10;
      v8[3] = v11;
      v8[4] = v12;
      v8[5] = v13;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {

    sub_222D1C028(a1, a2, a3);
  }
}

uint64_t DialogPercent.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogPercent.init(from:)(a1);
}

uint64_t DialogPercent.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogPercent.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t static SirikitDeviceState.current()()
{
  type metadata accessor for SirikitDeviceState();
  sub_222D5249C();
  return SirikitDeviceState.__allocating_init(from:)(v1);
}

uint64_t SirikitDeviceState.__allocating_init(from:with:)(uint64_t *a1, uint64_t a2)
{
  sub_222CE3120(a1, v10);
  v4 = OUTLINED_FUNCTION_1_17(0, v10, a2);
  sub_222CDD130(v10, &qword_27D03C438, &unk_222D56DE0);
  OUTLINED_FUNCTION_2_17();
  v6 = v5(v4);
  v7 = sub_222D5246C();
  OUTLINED_FUNCTION_3_6(v7);
  (*(v8 + 8))(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t SirikitDeviceState.__allocating_init(currentDevice:)(uint64_t a1)
{
  v4 = sub_222D5246C();
  v5 = OUTLINED_FUNCTION_3_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_17();
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  sub_222D5245C();
  OUTLINED_FUNCTION_1_17(a1, v13, v1);
  v8 = OUTLINED_FUNCTION_5_13();
  v9(v8);
  sub_222CDD130(v13, &qword_27D03C438, &unk_222D56DE0);
  OUTLINED_FUNCTION_2_17();
  v11 = v10(v2);

  return v11;
}

uint64_t SirikitDeviceState.__allocating_init(currentDevice:deviceState:unlockPolicy:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_222CE3120(a2, v12);
  v6 = OUTLINED_FUNCTION_1_17(a1, v12, a3);
  sub_222CDD130(v12, &qword_27D03C438, &unk_222D56DE0);
  OUTLINED_FUNCTION_2_17();
  v8 = v7(v6);

  v9 = sub_222D5246C();
  OUTLINED_FUNCTION_3_6(v9);
  (*(v10 + 8))(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t SirikitDeviceState.__allocating_init(currentDevice:deviceState:unlockPolicy:companionName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_222CE6C78(a1, a2, a3, 2, a4, a5);

  OUTLINED_FUNCTION_2_17();
  v9 = v8(v7);

  v10 = sub_222D5246C();
  OUTLINED_FUNCTION_3_6(v10);
  (*(v11 + 8))(a3);
  sub_222CDD130(a2, &qword_27D03C438, &unk_222D56DE0);
  return v9;
}

uint64_t sub_222D36FDC(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[22];
  v4 = v1[23];
  v5 = v1[24];
  v6 = v1[25];
  v7 = a1[1];
  *(v1 + 11) = *a1;
  *(v1 + 12) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D3705C(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[26];
  v4 = v1[27];
  v5 = v1[28];
  v6 = v1[29];
  v7 = a1[1];
  *(v1 + 13) = *a1;
  *(v1 + 14) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D37120(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[34];
  v4 = v1[35];
  v5 = v1[36];
  v6 = v1[37];
  v7 = a1[1];
  *(v1 + 17) = *a1;
  *(v1 + 18) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D371A0(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[38];
  v4 = v1[39];
  v5 = v1[40];
  v6 = v1[41];
  v7 = a1[1];
  *(v1 + 19) = *a1;
  *(v1 + 20) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D37264(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[42];
  v4 = v1[43];
  v5 = v1[44];
  v6 = v1[45];
  v7 = a1[1];
  *(v1 + 21) = *a1;
  *(v1 + 22) = v7;
  return sub_222CE2920(v3, v4);
}

double sub_222D372EC@<D0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  a2(v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  a3[1] = v6;
  return result;
}

uint64_t sub_222D3732C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  sub_222CE3060(v11[0], v6);
  return a5(v11);
}

uint64_t sub_222D373BC(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[46];
  v4 = v1[47];
  v5 = v1[48];
  v6 = v1[49];
  v7 = a1[1];
  *(v1 + 23) = *a1;
  *(v1 + 24) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t DialogLocationAddress.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  bzero((v0 + 16), 0x180uLL);
  return v0;
}

void sub_222D374A8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[22];
  v7 = v1[23];
  v8 = v1[24];
  v9 = v1[25];
  v1[22] = v0;
  v1[23] = v2;
  v1[24] = v3;
  v1[25] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37500()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[22];
  v7 = v1[23];
  v8 = v1[24];
  v9 = v1[25];
  v1[22] = v2;
  v1[23] = v0;
  v1[24] = v3;
  v1[25] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37574()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[26];
  v7 = v1[27];
  v8 = v1[28];
  v9 = v1[29];
  v1[26] = v0;
  v1[27] = v2;
  v1[28] = v3;
  v1[29] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D375CC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[26];
  v7 = v1[27];
  v8 = v1[28];
  v9 = v1[29];
  v1[26] = v2;
  v1[27] = v0;
  v1[28] = v3;
  v1[29] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37640()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[34];
  v7 = v1[35];
  v8 = v1[36];
  v9 = v1[37];
  v1[34] = v0;
  v1[35] = v2;
  v1[36] = v3;
  v1[37] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37698()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[34];
  v7 = v1[35];
  v8 = v1[36];
  v9 = v1[37];
  v1[34] = v2;
  v1[35] = v0;
  v1[36] = v3;
  v1[37] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D3770C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[38];
  v7 = v1[39];
  v8 = v1[40];
  v9 = v1[41];
  v1[38] = v0;
  v1[39] = v2;
  v1[40] = v3;
  v1[41] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37764()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[38];
  v7 = v1[39];
  v8 = v1[40];
  v9 = v1[41];
  v1[38] = v2;
  v1[39] = v0;
  v1[40] = v3;
  v1[41] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D377D8()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[42];
  v7 = v1[43];
  v8 = v1[44];
  v9 = v1[45];
  v1[42] = v0;
  v1[43] = v2;
  v1[44] = v3;
  v1[45] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D37830()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[42];
  v7 = v1[43];
  v8 = v1[44];
  v9 = v1[45];
  v1[42] = v2;
  v1[43] = v0;
  v1[44] = v3;
  v1[45] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D378A4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_23_0(v5);
  OUTLINED_FUNCTION_67();
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  v9 = v1[49];
  v1[46] = v0;
  v1[47] = v2;
  v1[48] = v3;
  v1[49] = v4;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D378FC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    OUTLINED_FUNCTION_22();
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[46];
  v7 = v1[47];
  v8 = v1[48];
  v9 = v1[49];
  v1[46] = v2;
  v1[47] = v0;
  v1[48] = v3;
  v1[49] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D37970()
{
  type metadata accessor for DialogLocationAddress();
  v0 = swift_allocObject();

  DialogLocationAddress.init(builder:)(v1);
  return v0;
}

uint64_t DialogLocationAddress.__allocating_init(builder:)(void *a1)
{
  OUTLINED_FUNCTION_22_7();
  v2 = swift_allocObject();
  DialogLocationAddress.init(builder:)(a1);
  return v2;
}

uint64_t *DialogLocationAddress.Builder.deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_222CE2920(v0[2], v0[3]);
  v3 = v0[8];
  v4 = v0[9];
  sub_222CE2920(v0[6], v0[7]);
  v5 = v0[12];
  v6 = v0[13];
  sub_222CE2920(v0[10], v0[11]);
  v7 = v0[16];
  v8 = v0[17];
  sub_222CE2920(v0[14], v0[15]);
  v9 = v0[20];
  v10 = v0[21];
  sub_222CE2920(v0[18], v0[19]);
  v11 = v0[24];
  v12 = v0[25];
  sub_222CE2920(v0[22], v0[23]);
  v13 = v0[28];
  v14 = v0[29];
  sub_222CE2920(v0[26], v0[27]);
  v15 = v0[32];
  v16 = v0[33];
  sub_222CE2920(v0[30], v0[31]);
  v17 = v0[36];
  v18 = v0[37];
  sub_222CE2920(v0[34], v0[35]);
  v19 = v0[40];
  v20 = v0[41];
  sub_222CE2920(v0[38], v0[39]);
  v21 = v0[44];
  v22 = v0[45];
  sub_222CE2920(v0[42], v0[43]);
  v23 = v0[48];
  v24 = v0[49];
  sub_222CE2920(v0[46], v0[47]);
  return v0;
}

uint64_t DialogLocationAddress.Builder.__deallocating_deinit()
{
  DialogLocationAddress.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 400, 7);
}

void *DialogLocationAddress.init(builder:)(void *a1)
{
  v1[2] = 0;
  OUTLINED_FUNCTION_25();
  v50 = a1[3];
  v51 = a1[2];
  v3 = a1[5];
  v49 = a1[4];
  v1[3] = v51;
  v1[4] = v50;
  v1[5] = v49;
  v1[6] = v3;
  OUTLINED_FUNCTION_25();
  v47 = a1[7];
  v48 = a1[6];
  v4 = a1[9];
  v46 = a1[8];
  v1[7] = v48;
  v1[8] = v47;
  v1[9] = v46;
  v1[10] = v4;
  OUTLINED_FUNCTION_25();
  v44 = a1[11];
  v45 = a1[10];
  v5 = a1[13];
  v43 = a1[12];
  v1[11] = v45;
  v1[12] = v44;
  v1[13] = v43;
  v1[14] = v5;
  OUTLINED_FUNCTION_25();
  v41 = a1[15];
  v42 = a1[14];
  v6 = a1[17];
  v40 = a1[16];
  v1[15] = v42;
  v1[16] = v41;
  v1[17] = v40;
  v1[18] = v6;
  OUTLINED_FUNCTION_25();
  v38 = a1[19];
  v39 = a1[18];
  v7 = a1[21];
  v37 = a1[20];
  v1[19] = v39;
  v1[20] = v38;
  v1[21] = v37;
  v1[22] = v7;
  OUTLINED_FUNCTION_25();
  v35 = a1[23];
  v36 = a1[22];
  v8 = a1[25];
  v34 = a1[24];
  v1[23] = v36;
  v1[24] = v35;
  v1[25] = v34;
  v1[26] = v8;
  OUTLINED_FUNCTION_25();
  v32 = a1[27];
  v33 = a1[26];
  v9 = a1[29];
  v31 = a1[28];
  v1[27] = v33;
  v1[28] = v32;
  v1[29] = v31;
  v1[30] = v9;
  OUTLINED_FUNCTION_25();
  v29 = a1[31];
  v30 = a1[30];
  v10 = a1[33];
  v28 = a1[32];
  v1[31] = v30;
  v1[32] = v29;
  v1[33] = v28;
  v1[34] = v10;
  OUTLINED_FUNCTION_25();
  v26 = a1[35];
  v27 = a1[34];
  v11 = a1[37];
  v25 = a1[36];
  v1[35] = v27;
  v1[36] = v26;
  v1[37] = v25;
  v1[38] = v11;
  OUTLINED_FUNCTION_25();
  v23 = a1[39];
  v24 = a1[38];
  v12 = a1[41];
  v22 = a1[40];
  v1[39] = v24;
  v1[40] = v23;
  v1[41] = v22;
  v1[42] = v12;
  OUTLINED_FUNCTION_25();
  v13 = a1[42];
  v14 = a1[43];
  v15 = a1[44];
  v16 = a1[45];
  v1[43] = v13;
  v1[44] = v14;
  v1[45] = v15;
  v1[46] = v16;
  OUTLINED_FUNCTION_25();
  v17 = a1[46];
  v18 = a1[47];
  v19 = a1[48];
  v20 = a1[49];
  sub_222CE3060(v51, v50);
  sub_222CE3060(v48, v47);
  sub_222CE3060(v45, v44);
  sub_222CE3060(v42, v41);
  sub_222CE3060(v39, v38);
  sub_222CE3060(v36, v35);
  sub_222CE3060(v33, v32);
  sub_222CE3060(v30, v29);
  sub_222CE3060(v27, v26);
  sub_222CE3060(v24, v23);
  sub_222CE3060(v13, v14);
  sub_222CE3060(v17, v18);

  v1[47] = v17;
  v1[48] = v18;
  v1[49] = v19;
  v1[50] = v20;
  return v1;
}

double sub_222D37E30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (!v5 && (OUTLINED_FUNCTION_49() & 1) == 0)
  {
    v14 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
    if (v14 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v8 = v3[8];
      if (v8)
      {
        v10 = v3[9];
        v9 = v3[10];
        v11 = v3[7];
        goto LABEL_8;
      }
    }

    else
    {
      v16 = a1 == OUTLINED_FUNCTION_26_5() && a2 == v15;
      if (v16 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {
        v8 = v3[12];
        if (v8)
        {
          v10 = v3[13];
          v9 = v3[14];
          v11 = v3[11];
          goto LABEL_8;
        }
      }

      else
      {
        v17 = a1 == 0xD000000000000012 && 0x8000000222D59CB0 == a2;
        if (v17 || (OUTLINED_FUNCTION_49() & 1) != 0)
        {
          v8 = v3[16];
          if (v8)
          {
            v10 = v3[17];
            v9 = v3[18];
            v11 = v3[15];
            goto LABEL_8;
          }
        }

        else
        {
          v18 = a1 == 0xD000000000000016 && 0x8000000222D59CD0 == a2;
          if (v18 || (OUTLINED_FUNCTION_49() & 1) != 0)
          {
            v8 = v3[20];
            if (v8)
            {
              v10 = v3[21];
              v9 = v3[22];
              v11 = v3[19];
              goto LABEL_8;
            }
          }

          else
          {
            v19 = a1 == 0xD000000000000015 && 0x8000000222D59CF0 == a2;
            if (v19 || (OUTLINED_FUNCTION_49() & 1) != 0)
            {
              v8 = v3[24];
              if (v8)
              {
                v10 = v3[25];
                v9 = v3[26];
                v11 = v3[23];
                goto LABEL_8;
              }
            }

            else
            {
              v21 = a1 == OUTLINED_FUNCTION_25_5() && a2 == v20;
              if (v21 || (OUTLINED_FUNCTION_49() & 1) != 0)
              {
                v8 = v3[28];
                if (v8)
                {
                  v10 = v3[29];
                  v9 = v3[30];
                  v11 = v3[27];
                  goto LABEL_8;
                }
              }

              else
              {
                v22 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
                if (v22 || (OUTLINED_FUNCTION_49() & 1) != 0)
                {
                  v8 = v3[32];
                  if (v8)
                  {
                    v10 = v3[33];
                    v9 = v3[34];
                    v11 = v3[31];
                    goto LABEL_8;
                  }
                }

                else
                {
                  v23 = a1 == 0x65646F4374736F70 && a2 == 0xE800000000000000;
                  if (v23 || (OUTLINED_FUNCTION_49() & 1) != 0)
                  {
                    v8 = v3[36];
                    if (v8)
                    {
                      v10 = v3[37];
                      v9 = v3[38];
                      v11 = v3[35];
                      goto LABEL_8;
                    }
                  }

                  else
                  {
                    v25 = a1 == OUTLINED_FUNCTION_24_6() && a2 == v24;
                    if (v25 || (OUTLINED_FUNCTION_49() & 1) != 0)
                    {
                      v8 = v3[40];
                      if (v8)
                      {
                        v10 = v3[41];
                        v9 = v3[42];
                        v11 = v3[39];
                        goto LABEL_8;
                      }
                    }

                    else
                    {
                      v27 = a1 == OUTLINED_FUNCTION_23_7() && a2 == v26;
                      if (v27 || (OUTLINED_FUNCTION_49() & 1) != 0)
                      {
                        v8 = v3[44];
                        if (v8)
                        {
                          v10 = v3[45];
                          v9 = v3[46];
                          v11 = v3[43];
                          goto LABEL_8;
                        }
                      }

                      else
                      {
                        v28 = a1 == 0xD000000000000010 && 0x8000000222D59D40 == a2;
                        if (v28 || (OUTLINED_FUNCTION_49() & 1) != 0)
                        {
                          v8 = v3[48];
                          if (v8)
                          {
                            v10 = v3[49];
                            v9 = v3[50];
                            v11 = v3[47];
                            goto LABEL_8;
                          }
                        }

                        else
                        {
                          v29 = a1 == 0x467972746E756F63 && a2 == 0xEF65646F436D6F72;
                          if (v29 || (OUTLINED_FUNCTION_49() & 1) != 0)
                          {
                            sub_222CF9FA8();
                            if (v32)
                            {
                              *(a3 + 24) = &type metadata for SpeakableString;
                              v30 = swift_allocObject();
                              *a3 = v30;
                              v30[2] = v31;
                              v30[3] = v32;
                              v30[4] = v33;
                              v30[5] = v34;
                              return result;
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

LABEL_95:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v8 = v3[4];
  if (!v8)
  {
    goto LABEL_95;
  }

  v10 = v3[5];
  v9 = v3[6];
  v11 = v3[3];
LABEL_8:
  *(a3 + 24) = &type metadata for SpeakableString;
  v12 = swift_allocObject();
  *a3 = v12;
  v12[2] = v11;
  v12[3] = v8;
  v12[4] = v10;
  v12[5] = v9;

  return result;
}

uint64_t sub_222D38234()
{
  v0 = sub_222D52ECC();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222D38288(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x7972746E756F63;
      break;
    case 2:
      result = OUTLINED_FUNCTION_26_5();
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = OUTLINED_FUNCTION_25_5();
      break;
    case 7:
      result = 0x7974696C61636F6CLL;
      break;
    case 8:
      result = 0x65646F4374736F70;
      break;
    case 9:
      result = OUTLINED_FUNCTION_24_6();
      break;
    case 10:
      result = OUTLINED_FUNCTION_23_7();
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_222D38408@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D38234();
  *a2 = result;
  return result;
}

uint64_t sub_222D38438@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D38288(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D38480@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D38280();
  *a1 = result;
  return result;
}

uint64_t sub_222D384B4(uint64_t a1)
{
  v2 = sub_222D3895C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D384F0(uint64_t a1)
{
  v2 = sub_222D3895C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogLocationAddress.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_222CE2920(*(v0 + 24), *(v0 + 32));
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  sub_222CE2920(*(v0 + 56), *(v0 + 64));
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  sub_222CE2920(*(v0 + 88), *(v0 + 96));
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  sub_222CE2920(*(v0 + 120), *(v0 + 128));
  v9 = *(v0 + 168);
  v10 = *(v0 + 176);
  sub_222CE2920(*(v0 + 152), *(v0 + 160));
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  sub_222CE2920(*(v0 + 184), *(v0 + 192));
  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  sub_222CE2920(*(v0 + 216), *(v0 + 224));
  v15 = *(v0 + 264);
  v16 = *(v0 + 272);
  sub_222CE2920(*(v0 + 248), *(v0 + 256));
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  sub_222CE2920(*(v0 + 280), *(v0 + 288));
  v19 = *(v0 + 328);
  v20 = *(v0 + 336);
  sub_222CE2920(*(v0 + 312), *(v0 + 320));
  v21 = *(v0 + 360);
  v22 = *(v0 + 368);
  sub_222CE2920(*(v0 + 344), *(v0 + 352));
  v23 = *(v0 + 392);
  v24 = *(v0 + 400);
  sub_222CE2920(*(v0 + 376), *(v0 + 384));
  return v0;
}

uint64_t DialogLocationAddress.__deallocating_deinit()
{
  DialogLocationAddress.deinit();
  v0 = OUTLINED_FUNCTION_22_7();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D38608(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C5D0, &qword_222D57960);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v39 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3895C();
  sub_222D531AC();
  v14 = OUTLINED_FUNCTION_24_0(v3[3], v3[4], v3[5], v3[6]);
  v40 = 0;
  sub_222CE3060(v14, v15);
  sub_222CF2084();
  OUTLINED_FUNCTION_3_8();
  if (!v2)
  {
    OUTLINED_FUNCTION_26();
    v16 = OUTLINED_FUNCTION_24_0(v3[7], v3[8], v3[9], v3[10]);
    v40 = 1;
    sub_222CE3060(v16, v17);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v18 = OUTLINED_FUNCTION_24_0(v3[11], v3[12], v3[13], v3[14]);
    v40 = 2;
    sub_222CE3060(v18, v19);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v20 = OUTLINED_FUNCTION_24_0(v3[15], v3[16], v3[17], v3[18]);
    v40 = 3;
    sub_222CE3060(v20, v21);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v22 = OUTLINED_FUNCTION_24_0(v3[19], v3[20], v3[21], v3[22]);
    v40 = 4;
    sub_222CE3060(v22, v23);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v24 = OUTLINED_FUNCTION_24_0(v3[23], v3[24], v3[25], v3[26]);
    v40 = 5;
    sub_222CE3060(v24, v25);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v26 = OUTLINED_FUNCTION_24_0(v3[27], v3[28], v3[29], v3[30]);
    v40 = 6;
    sub_222CE3060(v26, v27);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v28 = OUTLINED_FUNCTION_24_0(v3[31], v3[32], v3[33], v3[34]);
    v40 = 7;
    sub_222CE3060(v28, v29);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v30 = OUTLINED_FUNCTION_24_0(v3[35], v3[36], v3[37], v3[38]);
    v40 = 8;
    sub_222CE3060(v30, v31);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v33 = OUTLINED_FUNCTION_24_0(v3[39], v3[40], v3[41], v3[42]);
    v40 = 9;
    sub_222CE3060(v33, v34);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v35 = OUTLINED_FUNCTION_24_0(v3[43], v3[44], v3[45], v3[46]);
    v40 = 10;
    sub_222CE3060(v35, v36);
    OUTLINED_FUNCTION_3_8();
    OUTLINED_FUNCTION_26();
    v37 = OUTLINED_FUNCTION_24_0(v3[47], v3[48], v3[49], v3[50]);
    v40 = 11;
    sub_222CE3060(v37, v38);
    OUTLINED_FUNCTION_3_8();
  }

  OUTLINED_FUNCTION_26();
  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D3895C()
{
  result = qword_27D03C5D8;
  if (!qword_27D03C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C5D8);
  }

  return result;
}

uint64_t DialogLocationAddress.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_22_7();
  v2 = swift_allocObject();
  DialogLocationAddress.init(from:)(a1);
  return v2;
}

uint64_t DialogLocationAddress.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C5E0, &qword_222D57968);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3895C();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogLocationAddress();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_222D0099C();
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 24) = v12;
    *(v1 + 40) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 56) = v12;
    *(v1 + 72) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 88) = v12;
    *(v1 + 104) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 120) = v12;
    *(v1 + 136) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 152) = v12;
    *(v1 + 168) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 184) = v12;
    *(v1 + 200) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 216) = v12;
    *(v1 + 232) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 248) = v12;
    *(v1 + 264) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 280) = v12;
    *(v1 + 296) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 312) = v12;
    *(v1 + 328) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    *(v1 + 344) = v12;
    *(v1 + 360) = v13;
    OUTLINED_FUNCTION_1_9();
    sub_222D52F1C();
    v10 = OUTLINED_FUNCTION_4_7();
    v11(v10);
    *(v1 + 376) = v12;
    *(v1 + 392) = v13;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D390A0(uint64_t a1)
{
  *(a1 + 8) = sub_222D39108(&qword_27D03C5E8);
  result = sub_222D39108(&qword_27D03BE68);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D39108(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogLocationAddress();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D39148@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 264))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DialogLocationAddress.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DialogLocationAddress.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D39F38()
{
  result = qword_27D03C5F0;
  if (!qword_27D03C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C5F0);
  }

  return result;
}

unint64_t sub_222D39F90()
{
  result = qword_27D03C5F8;
  if (!qword_27D03C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C5F8);
  }

  return result;
}

unint64_t sub_222D39FE8()
{
  result = qword_27D03C600;
  if (!qword_27D03C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C600);
  }

  return result;
}

double DialogTimeZone.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

double DialogTimeZone.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  return result;
}

uint64_t sub_222D3A094()
{
  type metadata accessor for DialogTimeZone();
  v0 = swift_allocObject();

  DialogTimeZone.init(builder:)(v1);
  return v0;
}

uint64_t DialogTimeZone.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_9();
  v2 = swift_allocObject();
  DialogTimeZone.init(builder:)(a1);
  return v2;
}

uint64_t DialogTimeZone.Builder.deinit()
{
  v1 = OUTLINED_FUNCTION_7_0();
  sub_222CE2920(v1, v2);
  return v0;
}

uint64_t DialogTimeZone.Builder.__deallocating_deinit()
{
  v1 = OUTLINED_FUNCTION_7_0();
  sub_222CE2920(v1, v2);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t DialogTimeZone.secs.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t DialogTimeZone.timeZone.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_222CE3060(v2, v3);
}

uint64_t DialogTimeZone.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  sub_222CE3060(v4, v5);

  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  return v1;
}

void sub_222D3A274(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 1935893875 && a2 == 0xE400000000000000;
  if (v5 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    v8 = *(v3 + 24);
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v8;
  }

  else
  {
    v9 = a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000;
    if (v9 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {
      v10 = *(v3 + 48);
      if (!v10)
      {
        goto LABEL_7;
      }

      v12 = *(v3 + 56);
      v11 = *(v3 + 64);
      v13 = *(v3 + 40);
      *(a3 + 24) = &type metadata for SpeakableString;
      v14 = swift_allocObject();
      *a3 = v14;
      v14[2] = v13;
      v14[3] = v10;
      v14[4] = v12;
      v14[5] = v11;
    }

    else
    {
      v15 = a1 == 0x685374616D726F66 && a2 == 0xEB0000000074726FLL;
      if (!v15 && (OUTLINED_FUNCTION_49() & 1) == 0)
      {
        v17 = a1 == 0x6F4C74616D726F66 && a2 == 0xEA0000000000676ELL;
        if (!v17 && (OUTLINED_FUNCTION_49() & 1) == 0)
        {
          v18 = a1 == 0xD000000000000012 && 0x8000000222D5C8C0 == a2;
          if (!v18 && (OUTLINED_FUNCTION_49() & 1) == 0)
          {
            v19 = a1 == 0xD000000000000011 && 0x8000000222D5C8E0 == a2;
            if (!v19 && (OUTLINED_FUNCTION_49() & 1) == 0)
            {
              goto LABEL_7;
            }
          }
        }
      }

      sub_222CFD850();
      if (!v21)
      {
        goto LABEL_7;
      }

      *(a3 + 24) = &type metadata for SpeakableString;
      v16 = swift_allocObject();
      *a3 = v16;
      v16[2] = v20;
      v16[3] = v21;
      v16[4] = v22;
      v16[5] = v23;
    }
  }
}

uint64_t sub_222D3A568()
{
  v0 = sub_222D52ECC();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_222D3A5BC(char a1)
{
  if (a1)
  {
    return 0x656E6F5A656D6974;
  }

  else
  {
    return 1935893875;
  }
}

uint64_t sub_222D3A610@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D3A568();
  *a2 = result;
  return result;
}

uint64_t sub_222D3A640@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D3A5BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D3A674@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D3A568();
  *a1 = result;
  return result;
}

uint64_t sub_222D3A69C(uint64_t a1)
{
  v2 = sub_222D3A8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D3A6D8(uint64_t a1)
{
  v2 = sub_222D3A8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogTimeZone.deinit()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_222CE2920(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t DialogTimeZone.__deallocating_deinit()
{
  DialogTimeZone.deinit();
  v0 = OUTLINED_FUNCTION_2_9();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D3A76C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C608, &qword_222D57C70);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3A8F8();
  sub_222D531AC();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  LOBYTE(v21) = 0;
  sub_222D52FAC();
  if (!v2)
  {
    v16 = *(v3 + 48);
    v17 = *(v3 + 56);
    v18 = *(v3 + 64);
    v21 = *(v3 + 40);
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v20[15] = 1;
    sub_222CE3060(v21, v16);
    sub_222CF2084();
    sub_222D52FBC();
    sub_222CE2920(v21, v22);
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_222D3A8F8()
{
  result = qword_27D03C610;
  if (!qword_27D03C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C610);
  }

  return result;
}

uint64_t DialogTimeZone.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_9();
  v2 = swift_allocObject();
  DialogTimeZone.init(from:)(a1);
  return v2;
}

uint64_t DialogTimeZone.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C618, &qword_222D57C78);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  *(v1 + 16) = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3A8F8();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogTimeZone();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    *(v1 + 24) = sub_222D52EFC();
    *(v1 + 32) = v13 & 1;
    v17 = 1;
    sub_222D0099C();
    sub_222D52F1C();
    (*(v7 + 8))(v11, v4);
    v15 = v16[1];
    *(v1 + 40) = v16[0];
    *(v1 + 56) = v15;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D3ABD4(uint64_t a1)
{
  *(a1 + 8) = sub_222D3AC3C(&qword_27D03C620);
  result = sub_222D3AC3C(&qword_27D03BE60);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D3AC3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogTimeZone();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D3AC7C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 208))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogTimeZone.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_222D3B1A4()
{
  result = qword_27D03C628;
  if (!qword_27D03C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C628);
  }

  return result;
}

unint64_t sub_222D3B1FC()
{
  result = qword_27D03C630;
  if (!qword_27D03C630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C630);
  }

  return result;
}

unint64_t sub_222D3B254()
{
  result = qword_27D03C638;
  if (!qword_27D03C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C638);
  }

  return result;
}

uint64_t sub_222D3B2A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = MEMORY[0x277D84F90];
    for (i = a1 + 32; ; i += 32)
    {
      sub_222CE4EC0(i, v24);
      sub_222CE4EC0(v24, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDE8, &qword_222D53BE0);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_222CE2D34(&v17, v21);
      v6 = v22;
      v5 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v7 = (*(v5 + 24))(v6, v5);
      *(&v18 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      *&v17 = v7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_15();
        v3 = v12;
      }

      v8 = *(v3 + 16);
      v1 = v8 + 1;
      if (v8 >= *(v3 + 24) >> 1)
      {
        OUTLINED_FUNCTION_7_10();
        v3 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      *(v3 + 16) = v1;
      sub_222CE0BC0(&v17, (v3 + 32 * v8 + 32));
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
LABEL_20:
      if (!--v2)
      {
        return v3;
      }
    }

    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_222D3B520(&v17);
    sub_222CE4EC0(v24, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDB0, &unk_222D53BB0);
    if (OUTLINED_FUNCTION_4_18())
    {
      v9 = sub_222D3B2A8(v17);
    }

    else
    {
      sub_222CE4EC0(v24, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      if (!OUTLINED_FUNCTION_4_18())
      {
        sub_222CE4EC0(v24, v21);
        goto LABEL_15;
      }

      v9 = sub_222CEE42C(v17);
    }

    v10 = v9;

    v22 = v1;
    v21[0] = v10;
LABEL_15:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_15();
      v3 = v14;
    }

    v11 = *(v3 + 16);
    v1 = v11 + 1;
    if (v11 >= *(v3 + 24) >> 1)
    {
      OUTLINED_FUNCTION_7_10();
      v3 = v15;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    *(v3 + 16) = v1;
    sub_222CE0BC0(v21, (v3 + 32 * v11 + 32));
    goto LABEL_20;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_222D3B520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDE0, &qword_222D53BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222D3B588(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    v4 = (v1 + 16 * v2);
    v5 = *v4;
    v6 = v4[1];
  }

  return OUTLINED_FUNCTION_6();
}

void sub_222D3B5CC(uint64_t a1)
{
  OUTLINED_FUNCTION_19_7(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C670, &qword_222D58040);
    v3 = OUTLINED_FUNCTION_10_9();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v4 = v1[8];
  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_21_6();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  v10 = v3 + 64;

  v11 = 0;
  v12 = 40;
  if (!v7)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v14 = __clz(__rbit64(v7)) | (v11 << 6);
    sub_222D3DDD0(v1[6] + v14 * v12, __src);
    sub_222CE4EC0(v1[7] + 32 * v14, &__src[2] + 8);
    memcpy(__dst, __src, sizeof(__dst));
    v40 = __src[0];
    v41 = *&__src[1];
    sub_222CE0BC0(&__dst[5], &v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDA8, &unk_222D55070);
    swift_dynamicCast();
    v44 = v42;
    v45 = v43;
    v15 = *(v3 + 40);
    v16 = sub_222D52D8C();
    OUTLINED_FUNCTION_14_6(v16);
    if (((v19 << v18) & ~*(v10 + 8 * v17)) == 0)
    {
      OUTLINED_FUNCTION_8_11();
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        if (*(v10 + 8 * v20) != -1)
        {
          OUTLINED_FUNCTION_7_11();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_3_17();
LABEL_18:
    OUTLINED_FUNCTION_6_16();
    *(v10 + v24) |= v25;
    v7 &= v7 - 1;
    v27 = *(v3 + 48) + 40 * v26;
    OUTLINED_FUNCTION_9_11(v28, v29, v30, v31, v32, v33, v34, v35, v40, v36, v41);
    v39 = (v38 + 32 * v37);
    *v39 = v44;
    v39[1] = v45;
    OUTLINED_FUNCTION_12_5();
  }

  while (v7);
LABEL_5:
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return;
    }

    v7 = v1[v13 + 8];
    ++v11;
    if (v7)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t CATValidatorStatus.hashValue.getter()
{
  v1 = *v0;
  sub_222D5313C();
  MEMORY[0x223DCBC20](v1);
  return sub_222D5315C();
}

uint64_t CATValidatorEntry.text.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_6();
}

uint64_t CATValidatorEntry.text.setter()
{
  OUTLINED_FUNCTION_115();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t CATValidatorEntry.formattedText.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_6();
}

uint64_t CATValidatorEntry.formattedText.setter()
{
  OUTLINED_FUNCTION_115();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t CATValidatorResult.errors.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t CATValidatorResult.warnings.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t CATValidatorResult.catId.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_6();
}

uint64_t CATValidatorResult.catId.setter()
{
  OUTLINED_FUNCTION_115();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t CATValidatorResult.locale.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_6();
}

uint64_t CATValidatorResult.locale.setter()
{
  OUTLINED_FUNCTION_115();
  v3 = *(v1 + 48);

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

void static CATValidator.validate(bundle:catId:locale:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a2;
  v48 = a4;
  v11 = sub_222D5210C();
  v12 = OUTLINED_FUNCTION_113(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v43 - v20;
  sub_222D33854(a1, &selRef_resourcePath);
  if (v22)
  {
    v44 = a3;
    v45 = a5;
    v46 = v6;
    v23 = [objc_allocWithZone(MEMORY[0x277D052A8]) init];
    sub_222D520BC();
    sub_222D520DC();
    v24 = *(v14 + 8);
    v24(v19, v11);
    v25 = sub_222D520FC();
    v27 = v26;
    v28 = v11;
    v29 = v23;
    v24(v21, v28);
    sub_222D3DA0C(v25, v27, v23);
    if (qword_280D3DB78 != -1)
    {
      OUTLINED_FUNCTION_0();
    }

    sub_222D52C1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_222D53970;
    v31 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v32 = sub_222CDDCB0();
    v33 = v47;
    v35 = v44;
    v34 = v45;
    *(v30 + 32) = v47;
    *(v30 + 40) = v35;
    *(v30 + 96) = v31;
    *(v30 + 104) = v32;
    v36 = v48;
    *(v30 + 64) = v32;
    *(v30 + 72) = v36;
    *(v30 + 80) = v34;

    sub_222D5280C();

    v37 = sub_222D3DA70(v33, v35, v36, v34, v29);
    if (v37)
    {
      v38 = v37;

      sub_222D3BF48(v38, v33, v35, v36, v34, v49);

      v39 = v51;
      v40 = v52;
      v41 = v53;
      v54 = 0;
      *a6 = v49[0];
      *(a6 + 8) = v50;
      *(a6 + 24) = v39;
      *(a6 + 40) = v40;
      *(a6 + 48) = v41;
      *(a6 + 56) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for CATResultProvider();
    v42 = sub_222D0B314(0xD00000000000001FLL, 0x8000000222D5C960, 0x6C616E7265746E69, 0xEE00726F7272652DLL);
    v49[0] = 1;
    *a6 = v42;
    *(a6 + 56) = 1;
  }
}

uint64_t sub_222D3BF48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_222D3D614(a1, &v58);
  v43 = v58;
  v46 = a3;

  result = sub_222D3D9B0(a1, &selRef_errors);
  if (!result)
  {
    goto LABEL_32;
  }

  v11 = result;
  result = sub_222D28280(result);
  v41 = a4;
  v42 = a5;
  v47 = a1;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v12 = 0;
    v49 = v11 & 0xC000000000000001;
    v57 = MEMORY[0x277D84F90];
    v51 = result;
    v53 = v11;
    do
    {
      if (v49)
      {
        v13 = MEMORY[0x223DCB8A0](v12, v11);
      }

      else
      {
        v13 = *(v11 + 8 * v12 + 32);
      }

      v14 = v13;
      sub_222D3D760(v13, &v58);
      v15 = v58;
      v16 = v59;
      v17 = v60;
      v18 = v61;
      v20 = v62;
      v19 = v63;
      v55 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v57 + 16);
        sub_222D285DC();
        v57 = v24;
      }

      v21 = *(v57 + 16);
      if (v21 >= *(v57 + 24) >> 1)
      {
        sub_222D285DC();
        v57 = v25;
      }

      ++v12;

      *(v57 + 16) = v21 + 1;
      v22 = (v57 + 56 * v21);
      v22[4] = v15;
      v22[5] = v16;
      v22[6] = v17;
      v22[7] = v18;
      v22[8] = v20;
      v22[9] = v19;
      v11 = v53;
      v22[10] = v55;
    }

    while (v51 != v12);
  }

  else
  {
    v57 = MEMORY[0x277D84F90];
  }

  result = sub_222D3D9B0(v47, &selRef_warnings);
  if (result)
  {
    v26 = result;
    result = sub_222D28280(result);
    if (!result)
    {
      v28 = MEMORY[0x277D84F90];
LABEL_29:

      *a6 = v43;
      *(a6 + 8) = v57;
      *(a6 + 16) = v28;
      *(a6 + 24) = a2;
      *(a6 + 32) = v46;
      *(a6 + 40) = v41;
      *(a6 + 48) = v42;
      return result;
    }

    if (result >= 1)
    {
      v27 = 0;
      v48 = v26 & 0xC000000000000001;
      v28 = MEMORY[0x277D84F90];
      v50 = result;
      v52 = v26;
      do
      {
        if (v48)
        {
          v29 = MEMORY[0x223DCB8A0](v27, v26);
        }

        else
        {
          v29 = *(v26 + 8 * v27 + 32);
        }

        v30 = v29;
        sub_222D3D760(v29, &v58);
        v31 = v59;
        v33 = v60;
        v32 = v61;
        v34 = v62;
        v35 = v63;
        v54 = v64;
        v56 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = *(v28 + 16);
          sub_222D285DC();
          v28 = v39;
        }

        v36 = *(v28 + 16);
        if (v36 >= *(v28 + 24) >> 1)
        {
          sub_222D285DC();
          v28 = v40;
        }

        ++v27;

        *(v28 + 16) = v36 + 1;
        v37 = (v28 + 56 * v36);
        v37[4] = v56;
        v37[5] = v31;
        v37[6] = v33;
        v37[7] = v32;
        v37[8] = v34;
        v37[9] = v35;
        v37[10] = v54;
        v26 = v52;
      }

      while (v50 != v27);
      goto LABEL_29;
    }

    goto LABEL_31;
  }

LABEL_33:
  __break(1u);
  return result;
}

id static CATValidator.validateAll(templateDir:catIdExceptions:)(unint64_t *a1, uint64_t a2)
{
  v148 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE40, &unk_222D54A70);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v157 = (v137 - v5);
  v144 = sub_222D5209C();
  v6 = OUTLINED_FUNCTION_113(v144);
  v143 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v158 = v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_222D5210C();
  v12 = OUTLINED_FUNCTION_113(v11);
  v146 = v13;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v159 = (v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v19 = (v137 - v18);
  v20 = sub_222D520EC();
  v22 = v21;
  if (qword_280D3DB78 != -1)
  {
LABEL_75:
    OUTLINED_FUNCTION_0();
  }

  v23 = qword_280D3DB80;
  sub_222D52C1C();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
  v25 = OUTLINED_FUNCTION_3_0();
  v165 = xmmword_222D53980;
  *(v25 + 16) = xmmword_222D53980;
  *(v25 + 56) = MEMORY[0x277D837D0];
  v26 = sub_222CDDCB0();
  *(v25 + 64) = v26;
  *(v25 + 32) = v20;
  *(v25 + 40) = v22;

  sub_222D5280C();

  v139 = a1;
  sub_222D520DC();
  v27 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C640, &qword_222D57EB0);
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_2_19(v28);
  v29 = *MEMORY[0x277CBE8A8];
  *(v30 + 32) = *MEMORY[0x277CBE8A8];
  v31 = v29;
  v145 = v19;
  v32 = sub_222D52C0C();

  v149 = v11;
  if (v32)
  {
    v141 = v22;
    v140 = v32;
    sub_222D52BFC();
    v142 = 0;
    v152 = 0;
    v156 = (v146 + 32);
    v155 = (v146 + 8);
    v153 = xmmword_222D53970;
    v154 = MEMORY[0x277D84F90];
    v164 = v23;
    v162 = v24;
    v163 = v26;
    v160 = v20;
    v33 = v157;
    OUTLINED_FUNCTION_13_7();
    while (1)
    {
      while (1)
      {
        sub_222D5208C();
        if (!v174[6])
        {
          (*(v143 + 8))(v158, v144);

          a1 = v145;
          if (!v142)
          {

            v22 = v141;
            goto LABEL_65;
          }

          v19 = v154;
          v156 = *(v154 + 2);
          if (!v156)
          {
            goto LABEL_67;
          }

          v103 = 0;
          v155 = v154 + 32;
          do
          {
            if (v103 >= v19[2])
            {
              goto LABEL_72;
            }

            v160 = v103;
            v104 = &v155[56 * v103];
            v106 = *(v104 + 1);
            v105 = *(v104 + 2);
            v107 = *(v104 + 5);
            v20 = *(v104 + 6);
            v108 = *(v104 + 3);
            v109 = *(v104 + 4);

            v161 = v105;

            sub_222D52C1C();
            v110 = swift_allocObject();
            *(v110 + 16) = v153;
            v111 = MEMORY[0x277D837D0];
            *(v110 + 56) = MEMORY[0x277D837D0];
            *(v110 + 64) = v26;
            *(v110 + 32) = v108;
            *(v110 + 40) = v109;
            *(v110 + 96) = v111;
            *(v110 + 104) = v26;
            *(v110 + 72) = v107;
            *(v110 + 80) = v20;

            sub_222D5280C();

            v112 = *(v106 + 2);
            if (v112)
            {
              v157 = v20;
              v158 = v109;

              v159 = v106;
              v113 = (v106 + 40);
              v114 = v163;
              do
              {
                v115 = *v113;
                v116 = v113[1];
                v117 = v113[2];
                v118 = v113[5];

                sub_222D52C3C();
                v119 = OUTLINED_FUNCTION_3_0();
                OUTLINED_FUNCTION_2_19(v119);
                v120[7] = MEMORY[0x277D837D0];
                v120[8] = v114;
                v120[4] = v116;
                v120[5] = v117;

                sub_222D5280C();

                v113 += 7;
                --v112;
              }

              while (v112);

              v20 = v157;
            }

            v22 = *(v161 + 16);
            a1 = v162;
            v11 = "%@";
            if (v22)
            {
              v121 = (v161 + 40);
              do
              {
                v122 = *v121;
                v123 = v121[1];
                v124 = v121[2];
                v125 = v121[5];

                sub_222D52C4C();
                v20 = OUTLINED_FUNCTION_3_0();
                OUTLINED_FUNCTION_2_19(v20);
                v126 = v163;
                v127[7] = MEMORY[0x277D837D0];
                v127[8] = v126;
                v127[4] = v123;
                v127[5] = v124;

                sub_222D5280C();

                v121 += 7;
                --v22;
              }

              while (v22);
            }

            v103 = (v160->n128_u64 + 1);

            v26 = v163;
            v19 = v154;
          }

          while (v103 != v156);
          v11 = v149;
          goto LABEL_66;
        }

        if (swift_dynamicCast())
        {
          break;
        }

        __swift_storeEnumTagSinglePayload(v33, 1, 1, v11);
        sub_222D1A39C(v33);
      }

      __swift_storeEnumTagSinglePayload(v33, 0, 1, v11);
      (*v156)(v159, v33, v11);
      v34 = (sub_222D520AC() + 16);
      if (*v34)
      {
        v35 = &v34[2 * *v34];
        v36 = *v35;
        v37 = v35[1];
      }

      else
      {
        v36 = 0;
        v37 = 0xE000000000000000;
      }

      if ((sub_222D52AAC() & 1) != 0 || (sub_222D52AAC()) && (sub_222D52A9C() & 1) == 0)
      {
        break;
      }

      v38 = OUTLINED_FUNCTION_0_21();
      v39(v38, v11);
LABEL_41:
      v33 = v157;
    }

    v166 = v36;
    v151 = v37;
    v167 = v37;
    OUTLINED_FUNCTION_18_8();
    sub_222CE0BD0();
    v40 = sub_222D52D3C();
    if (v40[2])
    {
      v19 = v40[4];
      v11 = v40[5];
    }

    else
    {
      v19 = 0;
      v11 = 0xE000000000000000;
    }

    a1 = v159;
    v41 = sub_222D520AC();
    if (!*(v41 + 16))
    {
      goto LABEL_73;
    }

    a1 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_222D3DAE8(a1);
      a1 = v99;
    }

    v42 = a1[2];
    if (!v42)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v147 = v19;
    v150 = v11;
    v43 = v42 - 1;
    v44 = a1[2 * v43 + 5];
    a1[2] = v43;

    v174[0] = a1;
    a1 = v174;
    sub_222D3D3EC();
    v45 = 0;
    v161 = *(v174[0] + 16);
    v46 = v174[0];
    v11 = (v174[0] + 40);
    v19 = MEMORY[0x277D84F90];
    while (v161 != v45)
    {
      if (v45 >= *(v46 + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v47 = *(v11 - 1);
      v48 = *v11;
      if (v47 == v22 && v48 == 0xE600000000000000)
      {
        break;
      }

      v50 = *(v11 - 1);
      v51 = *v11;
      if (sub_222D5305C())
      {
        break;
      }

      v166 = v47;
      v167 = v48;
      OUTLINED_FUNCTION_18_8();
      a1 = &v166;
      v52 = sub_222D52D3C();
      if (!*(v52 + 16))
      {
        goto LABEL_70;
      }

      v20 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_222D3DAE8(v20);
        v20 = v60;
      }

      v53 = v20[1].n128_u64[0];
      if (!v53)
      {
        goto LABEL_71;
      }

      v54 = v53 - 1;
      v55 = v20[v54 + 2].n128_u64[1];
      v20[1].n128_u64[0] = v54;

      v166 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
      sub_222D3DAFC();
      a1 = sub_222D528DC();
      v57 = v56;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = v19[2];
        sub_222D28358();
        v19 = v62;
      }

      v22 = v19[2];
      v58 = v19[3];
      if (v22 >= v58 >> 1)
      {
        OUTLINED_FUNCTION_22_8(v58);
        sub_222D28358();
        v19 = v63;
      }

      v19[2] = v22 + 1;
      v59 = &v19[2 * v22];
      *(v59 + 4) = a1;
      *(v59 + 5) = v57;
      v11 += 16;
      ++v45;
      v20 = v160;
      OUTLINED_FUNCTION_13_7();
    }

    v173 = v19;
    sub_222D3D3EC();
    v166 = v173;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C2B0, &qword_222D560C0);
    sub_222D3DAFC();
    v64 = sub_222D528DC();
    v66 = v65;

    v166 = v64;
    v167 = v66;
    MEMORY[0x28223BE20](v67);
    *&v137[-4] = &v166;
    v68 = v152;
    result = sub_222D3D900(sub_222CE9D68, &v137[-8], v148);
    v152 = v68;
    if (result)
    {

      v70 = OUTLINED_FUNCTION_0_21();
      v11 = v149;
      v71(v70, v149);

LABEL_40:
      v26 = v163;
      goto LABEL_41;
    }

    v161 = v64;
    if (__OFADD__(v142, 1))
    {
      __break(1u);
    }

    else
    {
      ++v142;
      v72 = [objc_allocWithZone(MEMORY[0x277D052A8]) init];
      v138 = v72;
      v73 = sub_222D520FC();
      sub_222D3DA0C(v73, v74, v72);
      v137[3] = sub_222D52C1C();
      v75 = swift_allocObject();
      *(v75 + 16) = v153;
      v76 = MEMORY[0x277D837D0];
      v77 = v163;
      *(v75 + 56) = MEMORY[0x277D837D0];
      *(v75 + 64) = v77;
      *(v75 + 32) = v161;
      *(v75 + 40) = v66;
      *(v75 + 96) = v76;
      *(v75 + 104) = v77;
      v78 = v147;
      v79 = v150;
      *(v75 + 72) = v147;
      *(v75 + 80) = v79;

      sub_222D5280C();

      result = sub_222D3DA70(v161, v66, v78, v79, v138);
      if (result)
      {
        v80 = result;

        sub_222D3BF48(v80, v161, v66, v78, v79, &v166);

        v81 = v166;
        v82 = v167;
        v83 = v168;
        v84 = v170;
        v85 = v172;
        if (v166)
        {
          v86 = v169;
          v87 = v171;
          v88 = v154;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v161 = v87;
          v151 = v86;
          v22 = v82;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v100 = *(v88 + 2);
            sub_222D286B8();
            v88 = v101;
          }

          v154 = v88;
          v91 = *(v88 + 2);
          v90 = *(v88 + 3);
          if (v91 >= v90 >> 1)
          {
            OUTLINED_FUNCTION_22_8(v90);
            sub_222D286B8();
            v154 = v102;
          }

          v92 = OUTLINED_FUNCTION_0_21();
          v93 = v149;
          v94(v92, v149);
          v95 = v154;
          *(v154 + 2) = v91 + 1;
          v96 = &v95[56 * v91];
          v96[32] = v81;
          v11 = v93;
          *(v96 + 5) = v22;
          *(v96 + 6) = v83;
          *(v96 + 7) = v151;
          *(v96 + 8) = v84;
          *(v96 + 9) = v161;
          *(v96 + 10) = v85;
          v20 = v160;
          OUTLINED_FUNCTION_13_7();
        }

        else
        {
          v97 = OUTLINED_FUNCTION_0_21();
          v11 = v149;
          v98(v97, v149);
        }

        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_65:
    sub_222D52C1C();
    v128 = OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_2_19(v128);
    v129[7] = MEMORY[0x277D837D0];
    v129[8] = v26;
    v129[4] = v20;
    v129[5] = v22;

    sub_222D5280C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C018, &qword_222D54A60);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_2_19(inited);
    v131 = *MEMORY[0x277CCA450];
    inited[2].n128_u64[0] = sub_222D5292C();
    inited[2].n128_u64[1] = v132;
    v166 = 0;
    v167 = 0xE000000000000000;
    sub_222D52DBC();

    v166 = 0xD000000000000021;
    v167 = 0x8000000222D5CA40;
    MEMORY[0x223DCB4F0](v20, v22);

    MEMORY[0x223DCB4F0](93, 0xE100000000000000);
    v133 = v167;
    inited[3].n128_u64[0] = v166;
    inited[3].n128_u64[1] = v133;
    v134 = sub_222D528BC();
    v135 = sub_222CDFAEC(v134);

    v136 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v11 = v149;
    v19 = sub_222D3D850(0xD00000000000001FLL, 0x8000000222D5A270, 0, v135);
LABEL_66:
    a1 = v145;
LABEL_67:
    (*(v146 + 8))(a1, v11);
    return v19;
  }

  return result;
}

void sub_222D3D3EC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      v4 = *v0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_16:
        sub_222D3DAE8(v1);
        v1 = v14;
      }

      v2 = v1 + 16 * v2 + 24;
      v5 = (v1 + 40);
      v6 = 1;
      do
      {
        if (v6 - 1 != v3)
        {
          v7 = *(v1 + 16);
          if (v6 - 1 >= v7)
          {
            __break(1u);
LABEL_14:
            __break(1u);
LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

          if (v3 >= v7)
          {
            goto LABEL_14;
          }

          v8 = *(v5 - 1);
          v9 = *v5;
          v10 = *v2;
          *(v5 - 1) = *(v2 - 8);
          *v5 = v10;
          v11 = *(v1 + 16);

          if (v3 >= v11)
          {
            goto LABEL_15;
          }

          v12 = *v2;
          *(v2 - 8) = v8;
          *v2 = v9;
        }

        --v3;
        v2 -= 16;
        v5 += 2;
      }

      while (v6++ < v3);
      *v0 = v1;
    }
  }
}

id static CATValidator.validateAll(bundle:catIdExceptions:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_222D5210C();
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [objc_opt_self() bundleTemplateDir_];
  if (result)
  {
    v13 = result;
    sub_222D5292C();

    sub_222D520BC();

    v14 = static CATValidator.validateAll(templateDir:catIdExceptions:)(v11, a2);
    (*(v7 + 8))(v11, v4);
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_222D3D614@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  result = sub_222D33854(a1, &selRef_status);
  if (v4)
  {
    v5 = sub_222D5298C();
    v7 = v6;

    v8 = v5 == 0x64696C6176 && v7 == 0xE500000000000000;
    if (v8 || (sub_222D5305C() & 1) != 0)
    {

      v9 = 0;
    }

    else
    {
      v10 = v5 == 0x64696C61766E69 && v7 == 0xE700000000000000;
      if (v10 || (sub_222D5305C() & 1) != 0)
      {

        v9 = 1;
      }

      else if (v5 == 0x73676E696E726177 && v7 == 0xE800000000000000)
      {

        v9 = 2;
      }

      else
      {
        v12 = sub_222D5305C();

        if (v12)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }
      }
    }

    *a2 = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_222D3D760@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_222D33854(a1, &selRef_text);
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = v5;
  result = sub_222D33854(a1, &selRef_textWithLineNumber);
  if (!v8)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  v10 = v8;
  result = [a1 lineNumber];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v12 = [result integerValue];

  result = sub_222D33854(a1, &selRef_filename);
  if (v13)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v12;
    a2[5] = result;
    a2[6] = v13;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_222D3D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_222D528FC();

  if (a4)
  {
    v8 = sub_222D5288C();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

BOOL sub_222D3D900(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_222D3D9B0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_222D3DD8C();
  v4 = sub_222D52B3C();

  return v4;
}

void sub_222D3DA0C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222D528FC();

  [a3 setTemplateDir_];
}

id sub_222D3DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_222D528FC();
  v7 = sub_222D528FC();
  v8 = [a5 validateFile:v6 locale:v7];

  return v8;
}

unint64_t sub_222D3DAFC()
{
  result = qword_27D03C648;
  if (!qword_27D03C648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C2B0, &qword_222D560C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C648);
  }

  return result;
}

unint64_t sub_222D3DB64()
{
  result = qword_27D03C650;
  if (!qword_27D03C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C650);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CATValidatorStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_222D3DCB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_222D3DCF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_222D3DD8C()
{
  result = qword_27D03C660;
  if (!qword_27D03C660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D03C660);
  }

  return result;
}

uint64_t CATWrapperSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  CATWrapperSimple.init(templateDir:options:globals:)(a1, a2, a3);
  return v9;
}

uint64_t CATWrapperSimple.__allocating_init(useResponseMode:options:)(char a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  CATWrapperSimple.init(useResponseMode:options:)(a1, a2);
  return v7;
}

void CATWrapperSimple.init(useResponseMode:options:)(char a1, uint64_t *a2)
{
  v6 = sub_222D5210C();
  v7 = OUTLINED_FUNCTION_3_14(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = objc_opt_self();
  OUTLINED_FUNCTION_96();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  v18 = [v15 bundleTemplateDir_];

  if (v18)
  {
    sub_222D5292C();

    sub_222D520BC();

    (*(v9 + 32))(v2 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_templateDir, v13, v3);
    *(v2 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_options) = v14;
    *(v2 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_mockGlobals) = 0;
    *(v2 + OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_useResponseMode) = a1 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_222D3E09C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_16();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_0_22(v1);

  return sub_222CDD920();
}

uint64_t sub_222D3E130()
{
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_2_20();
  v4 = *(v3 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_5_5();
  *v6 = v5;

  OUTLINED_FUNCTION_10_10();
  if (!v1)
  {
    v7 = v0;
  }

  return v8(v7);
}

uint64_t sub_222D3E218()
{
  OUTLINED_FUNCTION_4_20();
  if (v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0xEE0065646F6D206CLL;
  }

  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x6562616C206E6920;
  }

  sub_222CED828(v1, v10, v9, v6, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
  (*(v4 + 8))(v1, v0);

  v11 = v2[1];
  v12 = v2[23];

  return v11();
}

uint64_t CATWrapperSimple.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16SiriDialogEngine16CATWrapperSimple_templateDir;
  v2 = sub_222D5210C();
  OUTLINED_FUNCTION_3_6(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for CATWrapperSimple()
{
  result = qword_280D3BDB0;
  if (!qword_280D3BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222D3E3E4()
{
  result = sub_222D5210C();
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

uint64_t dispatch thunk of CATWrapperSimple.execute(catId:parameters:)()
{
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_96();
  v2 = *(v1 + 128);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_0_22(v4);

  return v7(v5);
}

uint64_t sub_222D3E674()
{
  type metadata accessor for DialogLength();
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();

  return DialogAbstractMeasurement.init(builder:)(v0);
}

uint64_t DialogLength.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogAbstractMeasurement.init(builder:)(a1);
}

uint64_t *DialogLength.Builder.deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);
  return v0;
}

uint64_t DialogLength.Builder.__deallocating_deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_222D3E790(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_4_21() & 1) != 0 || (a1 == 0x6169766572626261 ? (v7 = a2 == 0xEB00000000646574) : (v7 = 0), v7 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0x6D69786F72707061 ? (v8 = a2 == 0xEB00000000657461) : (v8 = 0), v8 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0xD000000000000012 ? (v10 = 0x8000000222D5ACF0 == a2) : (v10 = 0), v10 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0xD000000000000013 ? (v11 = 0x8000000222D5AD10 == a2) : (v11 = 0), v11 || (OUTLINED_FUNCTION_1_1() & 1) != 0 || (a1 == 0x63696C6F626D7973 ? (v12 = a2 == 0xE800000000000000) : (v12 = 0), v12 || (OUTLINED_FUNCTION_4_21() & 1) != 0))))))
  {
    sub_222CFA3CC();
    if (v14)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v9 = swift_allocObject();
      *a3 = v9;
      v9[2] = v13;
      v9[3] = v14;
      v9[4] = v15;
      v9[5] = v16;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  else
  {

    sub_222D1C028(a1, a2, a3);
  }
}

uint64_t DialogLength.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0();
  swift_allocObject();
  return DialogLength.init(from:)(a1);
}

uint64_t DialogLength.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogAbstractMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogLength.__deallocating_deinit()
{
  DialogAbstractMeasurement.deinit();
  OUTLINED_FUNCTION_2_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_222D3EE4C()
{
  result = qword_280D3B170;
  if (!qword_280D3B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3B170);
  }

  return result;
}

unint64_t sub_222D3EEA4()
{
  result = qword_280D3B168;
  if (!qword_280D3B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3B168);
  }

  return result;
}

unint64_t sub_222D3EF04()
{
  result = qword_280D3B178[0];
  if (!qword_280D3B178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D3B178);
  }

  return result;
}

unint64_t sub_222D3EF5C()
{
  result = qword_280D3B160;
  if (!qword_280D3B160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D3B160);
  }

  return result;
}

uint64_t sub_222D3EFE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_222D3F018@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

SiriDialogEngine::CATOption sub_222D3F0D4@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = CATOption.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_222D3F114@<X0>(uint64_t *a1@<X8>)
{
  result = CATOption.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CATOption(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CATOption(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_222D3F1A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t DialogMultiLevelItem.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t DialogMultiLevelItem.Builder.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_222D3F240()
{
  type metadata accessor for DialogMultiLevelItem();
  v0 = swift_allocObject();

  DialogMultiLevelItem.init(builder:)(v1);
  return v0;
}

uint64_t DialogMultiLevelItem.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v2 = swift_allocObject();
  DialogMultiLevelItem.init(builder:)(a1);
  return v2;
}

uint64_t DialogMultiLevelItem.Builder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DialogMultiLevelItem.Builder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t DialogMultiLevelItem.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_8();
  v3 = *(a1 + 16);

  *(v1 + 24) = v3;
  return v1;
}

double sub_222D3F3B4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x657449646C696863 && a2 == 0xEA0000000000736DLL;
  if (v5 || (sub_222D5305C() & 1) != 0)
  {
    v6 = *(v3 + 24);
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C680, &qword_222D582F0);
    *a3 = v6;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

BOOL sub_222D3F45C()
{
  v0 = sub_222D52ECC();

  return v0 != 0;
}

BOOL sub_222D3F4B0@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D3F45C();
  *a2 = result;
  return result;
}

BOOL sub_222D3F520@<W0>(_BYTE *a1@<X8>)
{
  result = sub_222D3F45C();
  *a1 = result;
  return result;
}

uint64_t sub_222D3F54C(uint64_t a1)
{
  v2 = sub_222D3F7A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D3F588(uint64_t a1)
{
  v2 = sub_222D3F7A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogMultiLevelItem.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t DialogMultiLevelItem.__deallocating_deinit()
{
  DialogMultiLevelItem.deinit();
  v0 = OUTLINED_FUNCTION_5_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222D3F618(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C688, &qword_222D582F8);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3F7A4();
  sub_222D531AC();
  v14[1] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C680, &qword_222D582F0);
  sub_222D3FA30(&qword_27D03C698, &qword_27D03C6A0);
  sub_222D5300C();
  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_222D3F7A4()
{
  result = qword_27D03C690;
  if (!qword_27D03C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C690);
  }

  return result;
}

uint64_t DialogMultiLevelItem.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_1();
  v2 = swift_allocObject();
  DialogMultiLevelItem.init(from:)(a1);
  return v2;
}

uint64_t DialogMultiLevelItem.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C6A8, &qword_222D58300);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v14 - v10;
  *(v1 + 16) = 0;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D3F7A4();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogMultiLevelItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C680, &qword_222D582F0);
    sub_222D3FA30(&qword_27D03C6B0, &qword_27D03C6B8);
    sub_222D52F6C();
    (*(v7 + 8))(v11, v4);
    *(v1 + 24) = v14[1];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

uint64_t sub_222D3FA30(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D03C680, &qword_222D582F0);
    sub_222D3FAB8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D3FAB8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogMultiLevelItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D3FB64(uint64_t a1)
{
  *(a1 + 8) = sub_222D3FAB8(&qword_27D03C6B8);
  result = sub_222D3FAB8(&qword_27D03C6A0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D3FBCC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogMultiLevelItem.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_222D3FF68()
{
  result = qword_27D03C6C0;
  if (!qword_27D03C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C6C0);
  }

  return result;
}

unint64_t sub_222D3FFC0()
{
  result = qword_27D03C6C8;
  if (!qword_27D03C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C6C8);
  }

  return result;
}

unint64_t sub_222D40018()
{
  result = qword_27D03C6D0;
  if (!qword_27D03C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C6D0);
  }

  return result;
}

uint64_t sub_222D400EC()
{
  type metadata accessor for DialogTemperature();
  OUTLINED_FUNCTION_5_11();
  swift_allocObject();

  return DialogConvertibleMeasurement.init(builder:)(v0);
}

uint64_t DialogTemperature.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_11();
  swift_allocObject();
  return DialogConvertibleMeasurement.init(builder:)(a1);
}

uint64_t DialogTemperature.Builder.__deallocating_deinit()
{
  v0 = DialogConvertibleMeasurement.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void sub_222D401D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1 == 0x676E697274536F74 && a2 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x6B6F7053676E6F6CLL ? (v8 = a2 == 0xEA00000000006E65) : (v8 = 0), v8 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x70536D756964656DLL ? (v9 = a2 == 0xEC0000006E656B6FLL) : (v9 = 0), v9 || (OUTLINED_FUNCTION_49() & 1) != 0 || (a1 == 0x6F705374726F6873 ? (v10 = a2 == 0xEB000000006E656BLL) : (v10 = 0), v10 || (OUTLINED_FUNCTION_49() & 1) != 0))))
  {
    sub_222CFAC68();
    if (v15)
    {
      *(a3 + 24) = &type metadata for SpeakableString;
      v7 = swift_allocObject();
      *a3 = v7;
      v7[2] = v14;
      v7[3] = v15;
      v7[4] = v16;
      v7[5] = v17;
      return;
    }

LABEL_32:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v11 = a1 == 0xD000000000000014 && 0x8000000222D5CC40 == a2;
  if (v11 || (OUTLINED_FUNCTION_49() & 1) != 0)
  {
    sub_222CFAC9C();
    if (v12)
    {
      v13 = v12;
      *(a3 + 24) = type metadata accessor for DialogPreciseTemperature();
      *a3 = v13;
      return;
    }

    goto LABEL_32;
  }

  sub_222D409D0(a1, a2, a3);
}

uint64_t DialogTemperature.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_5_11();
  swift_allocObject();
  return DialogTemperature.init(from:)(a1);
}

uint64_t DialogTemperature.init(from:)(uint64_t *a1)
{
  sub_222CE3120(a1, v4);
  v2 = DialogConvertibleMeasurement.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t DialogTemperature.__deallocating_deinit()
{
  DialogConvertibleMeasurement.deinit();
  OUTLINED_FUNCTION_5_11();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

double DialogConvertibleMeasurement.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t DialogConvertibleMeasurement.Builder.init(value:)(double a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  swift_beginAccess();
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t *DialogConvertibleMeasurement.Builder.deinit()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_222CE2920(v0[4], v0[5]);
  v3 = v0[10];
  v4 = v0[11];
  sub_222CE2920(v0[8], v0[9]);
  return v0;
}

uint64_t sub_222D40718@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_222CE3060(v3, v4);
}

uint64_t sub_222D4075C(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = a1[1];
  *(v1 + 2) = *a1;
  *(v1 + 3) = v7;
  return sub_222CE2920(v3, v4);
}

uint64_t sub_222D407A0@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_222CE3060(v3, v4);
}

uint64_t sub_222D407E4(_OWORD *a1)
{
  OUTLINED_FUNCTION_67();
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = a1[1];
  *(v1 + 4) = *a1;
  *(v1 + 5) = v7;
  return sub_222CE2920(v3, v4);
}

void sub_222D40828()
{
  OUTLINED_FUNCTION_116();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  OUTLINED_FUNCTION_67();
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v0[4] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[7] = v5;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D40884()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    v3 = v2;
    v4 = v0;
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = v3;
  v1[7] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D408FC()
{
  OUTLINED_FUNCTION_116();
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  OUTLINED_FUNCTION_67();
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = v0[11];
  v0[8] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[11] = v5;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

void sub_222D40958()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_2_1();
  if (!v5)
  {

    v3 = v2;
    v4 = v0;
  }

  OUTLINED_FUNCTION_67();
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v1[8] = v2;
  v1[9] = v0;
  v1[10] = v3;
  v1[11] = v4;

  OUTLINED_FUNCTION_117();

  OUTLINED_FUNCTION_94();
}

uint64_t sub_222D409D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0x65756C6176;
  v7 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_49(), (result & 1) != 0))
  {
    if (*(v3 + 32))
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v9 = *(v3 + 24);
    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = v9;
  }

  else
  {
    result = 0x7374696E75;
    v10 = a1 == 0x7374696E75 && a2 == 0xE500000000000000;
    if (v10 || (result = OUTLINED_FUNCTION_49(), (result & 1) != 0))
    {
      v11 = *(v3 + 48);
      if (!v11)
      {
        goto LABEL_7;
      }

      v13 = *(v3 + 56);
      v12 = *(v3 + 64);
      v14 = *(v3 + 40);
    }

    else
    {
      result = 0x6E5574757074756FLL;
      if (a1 != 0x6E5574757074756FLL || a2 != 0xEB00000000737469)
      {
        result = OUTLINED_FUNCTION_49();
        if ((result & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v11 = *(v3 + 80);
      if (!v11)
      {
        goto LABEL_7;
      }

      v13 = *(v3 + 88);
      v12 = *(v3 + 96);
      v14 = *(v3 + 72);
    }

    *(a3 + 24) = &type metadata for SpeakableString;
    v15 = swift_allocObject();
    *a3 = v15;
    v15[2] = v14;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v12;
  }

  return result;
}

uint64_t DialogConvertibleMeasurement.init(builder:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  v3 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 32) = v3;
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  swift_beginAccess();
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  *(v1 + 72) = v8;
  *(v1 + 80) = v9;
  *(v1 + 88) = v10;
  *(v1 + 96) = v11;
  OUTLINED_FUNCTION_96();
  v19 = *(v12 + 160);
  sub_222CE3060(v4, v5);
  v13 = sub_222CE3060(v8, v9);
  if ((v19(v13) & 1) == 0)
  {
    if (qword_280D3DB78 != -1)
    {
      swift_once();
    }

    sub_222D52C3C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDD8, &qword_222D53BD0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_222D53980;
    OUTLINED_FUNCTION_96();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C6D8, &qword_222D58588);
    v15 = sub_222D5297C();
    v17 = v16;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_222CDDCB0();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_222D5280C();
  }

  return v1;
}

uint64_t DialogConvertibleMeasurement.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C6E0, &qword_222D58590);
  v5 = OUTLINED_FUNCTION_113(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  *(v1 + 16) = 0;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D40F54();
  sub_222D5318C();
  if (v2)
  {

    type metadata accessor for DialogConvertibleMeasurement();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v13) = 0;
    *(v1 + 24) = sub_222D52EFC();
    *(v1 + 32) = v9 & 1;
    sub_222D0099C();
    OUTLINED_FUNCTION_3();
    *(v1 + 40) = v13;
    *(v1 + 56) = v14;
    OUTLINED_FUNCTION_3();
    v11 = OUTLINED_FUNCTION_2();
    v12(v11);
    *(v1 + 72) = v13;
    *(v1 + 88) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v1;
}

unint64_t sub_222D40F54()
{
  result = qword_27D03C6E8;
  if (!qword_27D03C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C6E8);
  }

  return result;
}

uint64_t DialogConvertibleMeasurement.deinit()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_222CE2920(*(v0 + 40), *(v0 + 48));
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_222CE2920(*(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t sub_222D41044(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C6F0, &qword_222D58598);
  v6 = OUTLINED_FUNCTION_113(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222D40F54();
  sub_222D531AC();
  v14 = *(v3 + 24);
  v15 = *(v3 + 32);
  LOBYTE(v25) = 0;
  sub_222D52FAC();
  if (!v2)
  {
    v16 = *(v3 + 48);
    v17 = *(v3 + 56);
    v18 = *(v3 + 64);
    v25 = *(v3 + 40);
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v24 = 1;
    sub_222CE3060(v25, v16);
    sub_222CF2084();
    OUTLINED_FUNCTION_3_8();
    sub_222CE2920(v25, v26);
    v19 = *(v3 + 80);
    v20 = *(v3 + 88);
    v21 = *(v3 + 96);
    v25 = *(v3 + 72);
    v26 = v19;
    v27 = v20;
    v28 = v21;
    v24 = 2;
    sub_222CE3060(v25, v19);
    OUTLINED_FUNCTION_3_8();
    sub_222CE2920(v25, v26);
  }

  return (*(v8 + 8))(v12, v5);
}

double sub_222D411F8@<D0>(uint64_t *a1@<X0>, void (*a2)(_OWORD *__return_ptr)@<X3>, _OWORD *a3@<X8>)
{
  v4 = *a1;
  a2(v7);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  a3[1] = v6;
  return result;
}

uint64_t sub_222D41238(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a2;
  v11[0] = *a1;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  sub_222CE3060(v11[0], v6);
  return a5(v11);
}

double DialogConvertibleMeasurement.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  return result;
}

uint64_t DialogConvertibleMeasurement.Builder.__allocating_init(value:)(double a1)
{
  v2 = swift_allocObject();
  DialogConvertibleMeasurement.Builder.init(value:)(a1);
  return v2;
}

uint64_t sub_222D41310()
{
  type metadata accessor for DialogConvertibleMeasurement();
  v0 = swift_allocObject();

  DialogConvertibleMeasurement.init(builder:)(v1);
  return v0;
}

uint64_t DialogConvertibleMeasurement.__allocating_init(builder:)(uint64_t a1)
{
  OUTLINED_FUNCTION_8_8();
  v2 = swift_allocObject();
  DialogConvertibleMeasurement.init(builder:)(a1);
  return v2;
}

uint64_t DialogConvertibleMeasurement.Builder.__deallocating_deinit()
{
  DialogConvertibleMeasurement.Builder.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t DialogConvertibleMeasurement.value.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t sub_222D41400()
{
  v0 = sub_222D52ECC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_222D4144C(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x7374696E75;
  }

  return 0x6E5574757074756FLL;
}

uint64_t sub_222D414C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_222D41400();
  *a2 = result;
  return result;
}

uint64_t sub_222D414F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222D4144C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_222D4152C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_222D41400();
  *a1 = result;
  return result;
}

uint64_t sub_222D41554(uint64_t a1)
{
  v2 = sub_222D40F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222D41590(uint64_t a1)
{
  v2 = sub_222D40F54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DialogConvertibleMeasurement.__deallocating_deinit()
{
  DialogConvertibleMeasurement.deinit();
  v0 = OUTLINED_FUNCTION_8_8();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t DialogConvertibleMeasurement.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_8();
  v2 = swift_allocObject();
  DialogConvertibleMeasurement.init(from:)(a1);
  return v2;
}

uint64_t sub_222D4169C(uint64_t a1)
{
  *(a1 + 8) = sub_222D41704(&qword_27D03C6F8);
  result = sub_222D41704(&qword_27D03BEA0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_222D41704(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogConvertibleMeasurement();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222D41744@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 200))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DialogConvertibleMeasurement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222D41D00()
{
  result = qword_27D03C700;
  if (!qword_27D03C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C700);
  }

  return result;
}

unint64_t sub_222D41D58()
{
  result = qword_27D03C708;
  if (!qword_27D03C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C708);
  }

  return result;
}

unint64_t sub_222D41DB0()
{
  result = qword_27D03C710;
  if (!qword_27D03C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D03C710);
  }

  return result;
}

double sub_222D41E38@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16SiriDialogEngine17CATCallbackParams_params);
  if (v3)
  {
    v4 = v3;
    v5 = sub_222D528FC();
    v6 = [v4 objectForKey_];

    if (v6)
    {
      sub_222D52D6C();

      swift_unknownObjectRelease();
    }

    else
    {

      v8 = 0u;
      v9 = 0u;
    }

    result = *&v8;
    *a1 = v8;
    a1[1] = v9;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id CATCallbackParams.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CATCallbackParams.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CATCallbackParams();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_222D42830@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = *result;
  v3 = *(result + 8);
  switch(*(result + 32))
  {
    case 1:
      v16 = *(result + 16);
      v15 = *(result + 24);
      a2[3] = &type metadata for SpeakableString;
      v17 = swift_allocObject();
      *a2 = v17;
      v17[2] = v4;
      v17[3] = v3;
      v17[4] = v16;
      v17[5] = v15;

      v18 = *MEMORY[0x277D85DE8];
      goto LABEL_13;
    case 2:
      a2[3] = MEMORY[0x277D839F8];
      *a2 = v4;
      goto LABEL_18;
    case 3:
      v12 = sub_222D51F2C();
      OUTLINED_FUNCTION_24_7(v12);
      sub_222D51F1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03C728, &qword_222D58858);
      OUTLINED_FUNCTION_0_23();
      sub_222D459C8(v13, v14);
      sub_222D51F0C();

      v20 = objc_opt_self();
      OUTLINED_FUNCTION_45();
      v21 = sub_222D5212C();
      *&v34[0] = 0;
      v22 = [v20 JSONObjectWithData:v21 options:0 error:v34];

      if (v22)
      {
        v23 = *&v34[0];
        sub_222D52D6C();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
        if (swift_dynamicCast())
        {
          v24 = OUTLINED_FUNCTION_45();
          sub_222CE6210(v24, v25);
          v26 = *&v36[0];
        }

        else
        {
          v26 = sub_222D528BC();
          v31 = OUTLINED_FUNCTION_45();
          sub_222CE6210(v31, v32);
        }
      }

      else
      {
        v27 = *&v34[0];
        v28 = sub_222D5207C();

        swift_willThrow();
        v29 = OUTLINED_FUNCTION_45();
        sub_222CE6210(v29, v30);
        v26 = sub_222D528BC();
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BE48, &unk_222D53E50);
      a2[3] = result;
      *a2 = v26;
      goto LABEL_18;
    case 4:
      v6 = *(v4 + 16);
      v7 = MEMORY[0x277D84F90];
      if (v6)
      {
        v33 = MEMORY[0x277D84F90];
        sub_222D271EC(0, v6, 0);
        v7 = v33;
        v8 = (v4 + 64);
        do
        {
          v9 = *v8;
          v34[0] = *(v8 - 2);
          v34[1] = *(v8 - 1);
          v35 = v9;
          sub_222D42830(v36, v34);
          v11 = *(v33 + 16);
          v10 = *(v33 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_222D271EC((v10 > 1), v11 + 1, 1);
          }

          *(v33 + 16) = v11 + 1;
          sub_222CE0BC0(v36, (v33 + 32 * v11 + 32));
          v8 += 40;
          --v6;
        }

        while (v6);
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D03BDB0, &unk_222D53BB0);
      a2[3] = result;
      *a2 = v7;
      goto LABEL_18;
    case 5:
      a2[3] = MEMORY[0x277D839B0];
      *a2 = v4 & 1;
      goto LABEL_18;
    case 6:
      a2[3] = MEMORY[0x277D837D0];
      *a2 = 0;
      a2[1] = 0xE000000000000000;
LABEL_18:
      v19 = *MEMORY[0x277D85DE8];
      break;
    default:
      a2[3] = MEMORY[0x277D837D0];
      *a2 = v4;
      a2[1] = v3;
      v5 = *MEMORY[0x277D85DE8];
LABEL_13:

      break;
  }

  return result;
}

uint64_t CATValue.description.getter()
{
  v1 = *v0;
  result = 0;
  switch(*(v0 + 32))
  {
    case 1:
      v6 = *v0;
      v7 = v0[1];
      v8 = v0[2];
      v9 = v0[3];

      result = sub_222D5297C();
      break;
    case 2:
      v5 = *v0;
      result = sub_222D52BDC();
      break;
    case 3:
      v4 = *v0;
      result = sub_222D528AC();
      break;
    case 4:
      result = MEMORY[0x223DCB620](*v0, &type metadata for CATValue);
      break;
    case 5:
      if (v1)
      {
        result = 1702195828;
      }

      else
      {
        result = 0x65736C6166;
      }

      break;
    case 6:
      return result;
    default:
      v3 = v0[1];

      result = v1;
      break;
  }

  return result;
}

uint64_t sub_222D42D74()
{
  sub_222CE0BD0();
  v0 = sub_222D52D3C();
  sub_222D3B588(v0);
  if (v1)
  {
    v2 = *(v0 + 16);

    if (v2 == 2)
    {
      v3 = sub_222CF62F8(1);
      MEMORY[0x223DCB480](v3);
    }
  }

  return OUTLINED_FUNCTION_6();
}

void sub_222D42E48()
{
  OUTLINED_FUNCTION_29_5();
  v3 = v3 && v2 == 0xE400000000000000;
  if (v3 || (v4 = v2, v5 = v1, (OUTLINED_FUNCTION_7_12() & 1) != 0) || (v5 == (OUTLINED_FUNCTION_2_22() & 0xFFFFFFFFFFFFLL | 0x422E000000000000) ? (v7 = v4 == v6) : (v7 = 0), v7 || (OUTLINED_FUNCTION_7_12() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_12;
  }

  v9 = v5 == 0x656C62756F44 && v4 == 0xE600000000000000;
  if (v9 || (OUTLINED_FUNCTION_7_12() & 1) != 0 || (v5 == (OUTLINED_FUNCTION_1_21() & 0xFFFFFFFFFFFFLL | 0x4E2E000000000000) ? (v11 = v4 == v10) : (v11 = 0), v11 || (OUTLINED_FUNCTION_7_12() & 1) != 0))
  {
    v8 = 1;
    goto LABEL_12;
  }

  v12 = v5 == 7630409 && v4 == 0xE300000000000000;
  if (v12 || (OUTLINED_FUNCTION_7_12() & 1) != 0)
  {
    v8 = 2;
    goto LABEL_12;
  }

  v13 = v5 == 0x676E69727453 && v4 == 0xE600000000000000;
  if (v13 || (OUTLINED_FUNCTION_7_12() & 1) != 0 || (v5 == (OUTLINED_FUNCTION_1_21() & 0xFFFFFFFFFFFFLL | 0x532E000000000000) ? (v15 = v4 == v14) : (v15 = 0), v15 || (OUTLINED_FUNCTION_7_12() & 1) != 0))
  {
    v8 = 3;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_105();
  v17 = v5 == 0xD000000000000010 && v16 == v4;
  if (v17 || (OUTLINED_FUNCTION_7_12() & 1) != 0)
  {
    v8 = 4;
    goto LABEL_12;
  }

  v18 = v5 == 1702125892 && v4 == 0xE400000000000000;
  if (v18 || (OUTLINED_FUNCTION_7_12() & 1) != 0 || ((OUTLINED_FUNCTION_27_5(), v5 == 0x432E676F6C616964) ? (v20 = v4 == v19) : (v20 = 0), v20 || (OUTLINED_FUNCTION_7_12() & 1) != 0))
  {
    v8 = 6;
    goto LABEL_12;
  }

  v22 = v5 == OUTLINED_FUNCTION_17_6() && v4 == v21;
  if (v22 || (OUTLINED_FUNCTION_7_12() & 1) != 0)
  {
    v8 = 7;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_105();
  if (v5 == 0xD000000000000014 && v23 == v4)
  {
LABEL_77:
    v8 = 8;
    goto LABEL_12;
  }

  v25 = OUTLINED_FUNCTION_7_12();
  v27 = v5 == 0x432E676F6C616964 && v4 == 0xEF79636E65727275;
  v8 = 8;
  if ((v25 & 1) == 0 && !v27)
  {
    if (OUTLINED_FUNCTION_7_12())
    {
      goto LABEL_77;
    }

    v29 = v5 == OUTLINED_FUNCTION_19_8() && v4 == v28;
    if (v29 || (OUTLINED_FUNCTION_7_12() & 1) != 0 || (v5 == (OUTLINED_FUNCTION_1_21() & 0xFFFFFFFFFFFFLL | 0x502E000000000000) ? (v31 = v4 == v30) : (v31 = 0), v31 || (OUTLINED_FUNCTION_7_12() & 1) != 0))
    {
      v8 = 9;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_105();
    v33 = v5 == 0xD000000000000019 && v32 == v4;
    if (v33 || (OUTLINED_FUNCTION_7_12() & 1) != 0 || (v5 == (OUTLINED_FUNCTION_1_21() & 0xFFFFFFFFFFFFLL | 0x4C2E000000000000) ? (v35 = v4 == v34) : (v35 = 0), v35 || (OUTLINED_FUNCTION_7_12() & 1) != 0))
    {
      v8 = 10;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_105();
    v37 = v5 == 0xD000000000000017 && v36 == v4;
    if (v37 || (OUTLINED_FUNCTION_7_12() & 1) != 0 || (v5 == (OUTLINED_FUNCTION_1_21() & 0xFFFFFFFFFFFFLL | 0x572E000000000000) ? (v39 = v4 == v38) : (v39 = 0), v39 || (OUTLINED_FUNCTION_7_12() & 1) != 0))
    {
      v8 = 11;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_105();
    v41 = v5 == 0xD00000000000001ELL && v40 == v4;
    if (v41 || (OUTLINED_FUNCTION_7_12() & 1) != 0 || ((OUTLINED_FUNCTION_105(), v5 == 0xD000000000000012) ? (v43 = v42 == v4) : (v43 = 0), v43 || (OUTLINED_FUNCTION_7_12() & 1) != 0))
    {
      v8 = 12;
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_105();
    if (v5 == 0xD000000000000018 && v44 == v4)
    {
LABEL_135:
      v8 = 13;
      goto LABEL_12;
    }

    v46 = OUTLINED_FUNCTION_7_12();
    v48 = v5 == 0x532E676F6C616964 && v4 == 0xEC00000064656570;
    v8 = 13;
    if ((v46 & 1) == 0 && !v48)
    {
      OUTLINED_FUNCTION_2_22();
      if (OUTLINED_FUNCTION_7_12())
      {
        goto LABEL_135;
      }

      OUTLINED_FUNCTION_105();
      v50 = v5 == 0xD00000000000001BLL && v49 == v4;
      if (v50 || (OUTLINED_FUNCTION_7_12() & 1) != 0 || (v5 == (OUTLINED_FUNCTION_2_22() & 0xFFFFFFFFFFFFLL | 0x442E000000000000) ? (v52 = v4 == v51) : (v52 = 0), v52))
      {
        v8 = 14;
      }

      else
      {
        v53 = OUTLINED_FUNCTION_7_12();
        v8 = 16;
        if (v53)
        {
          v8 = 14;
        }
      }
    }
  }

LABEL_12:
  *v0 = v8;
}

void sub_222D432E0()
{
  v1 = *v0;
  switch(*v0)
  {
    case 0:
      return;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 8:
    case 13:
    case 14:
    case 15:
      OUTLINED_FUNCTION_2_22();
      break;
    case 6:
    case 7:
      OUTLINED_FUNCTION_2_22();
      OUTLINED_FUNCTION_27_5();
      break;
    case 9:
    case 10:
    case 11:
      OUTLINED_FUNCTION_1_21();
      break;
    case 12:
      OUTLINED_FUNCTION_105();
      break;
    default:
      v2 = *(v1 + 16);
      if (v2 != 16)
      {
        v4 = *(v1 + 16);
        v3 = sub_222D45868(v2);
        sub_222D432E0(v3);
        MEMORY[0x223DCB4F0](23899, 0xE200000000000000);
        sub_222D45898(v2);
      }

      break;
  }
}

uint64_t sub_222D434C4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_5();
  v6 = v6 && v5 == 0xE400000000000000;
  if (v6 || (v7 = v4, (OUTLINED_FUNCTION_49() & 1) != 0))
  {

    v9 = 0;
  }

  else
  {
    v10 = v7 == 0x656C62756F44 && a2 == 0xE600000000000000;
    if (v10 || (OUTLINED_FUNCTION_49() & 1) != 0)
    {

      v9 = 1;
    }

    else
    {
      v11 = v7 == 0x676E69727453 && a2 == 0xE600000000000000;
      if (v11 || (OUTLINED_FUNCTION_49() & 1) != 0)
      {

        v9 = 3;
      }

      else
      {
        OUTLINED_FUNCTION_105();
        v13 = v7 == 0xD000000000000010 && v12 == a2;
        if (v13 || (OUTLINED_FUNCTION_49() & 1) != 0)
        {

          v9 = 4;
        }

        else
        {
          v14 = v7 == 0x6D6563616C504C43 && a2 == 0xEB000000006B7261;
          if (v14 || (OUTLINED_FUNCTION_49() & 1) != 0)
          {

            v9 = 5;
          }

          else
          {
            v15 = v7 == 1702125892 && a2 == 0xE400000000000000;
            if (v15 || (OUTLINED_FUNCTION_49() & 1) != 0)
            {

              v9 = 6;
            }

            else
            {
              v17 = v7 == OUTLINED_FUNCTION_17_6() && a2 == v16;
              if (v17 || (OUTLINED_FUNCTION_49() & 1) != 0)
              {

                v9 = 7;
              }

              else
              {
                OUTLINED_FUNCTION_105();
                v19 = v7 == 0xD000000000000014 && v18 == a2;
                if (v19 || (OUTLINED_FUNCTION_49() & 1) != 0)
                {

                  v9 = 8;
                }

                else
                {
                  v21 = v7 == OUTLINED_FUNCTION_19_8() && a2 == v20;
                  if (v21 || (OUTLINED_FUNCTION_49() & 1) != 0)
                  {

                    v9 = 9;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_105();
                    v23 = v7 == 0xD000000000000019 && v22 == a2;
                    if (v23 || (OUTLINED_FUNCTION_49() & 1) != 0)
                    {

                      v9 = 10;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_105();
                      v25 = v7 == 0xD000000000000017 && v24 == a2;
                      if (v25 || (OUTLINED_FUNCTION_49() & 1) != 0)
                      {

                        v9 = 11;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_105();
                        v27 = v7 == 0xD00000000000001ELL && v26 == a2;
                        if (v27 || (OUTLINED_FUNCTION_49() & 1) != 0)
                        {

                          v9 = 12;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_105();
                          v29 = v7 == 0xD000000000000018 && v28 == a2;
                          if (v29 || (OUTLINED_FUNCTION_49() & 1) != 0)
                          {

                            v9 = 13;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_105();
                            v31 = v7 == 0xD00000000000001BLL && v30 == a2;
                            if (v31 || (OUTLINED_FUNCTION_49() & 1) != 0)
                            {

                              v9 = 14;
                            }

                            else
                            {
                              v32 = v7 == 5001813 && a2 == 0xE300000000000000;
                              if (v32 || (OUTLINED_FUNCTION_49() & 1) != 0)
                              {

                                v9 = 15;
                              }

                              else
                              {
                                sub_222D45C98();
                                sub_222D45CEC();
                                if (sub_222D528CC())
                                {
                                  v35 = swift_allocObject();
                                  sub_222D42D74();
                                  v34 = v33;

                                  if (v34)
                                  {
                                    OUTLINED_FUNCTION_45();
                                    sub_222D42E48();
                                  }

                                  else
                                  {
                                    *(v35 + 16) = 16;
                                  }

                                  v9 = v35;
                                }

                                else
                                {

                                  v9 = 16;
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

  *v2 = v9;
  return result;
}

BOOL static NLGParameterType.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1)
  {
    case 0uLL:
      if (v3)
      {
        goto LABEL_37;
      }

      sub_222D45878(0);
      v4 = 0;
      goto LABEL_34;
    case 1uLL:
      if (v3 != 1)
      {
        goto LABEL_37;
      }

      sub_222D45878(1uLL);
      sub_222D45878(1uLL);
      return v3;
    case 2uLL:
      if (v3 != 2)
      {
        goto LABEL_37;
      }

      sub_222D45878(2uLL);
      v4 = 2;
      goto LABEL_34;
    case 3uLL:
      if (v3 != 3)
      {
        goto LABEL_37;
      }

      sub_222D45878(3uLL);
      v4 = 3;
      goto LABEL_34;
    case 4uLL:
      if (v3 != 4)
      {
        goto LABEL_37;
      }

      sub_222D45878(4uLL);
      v4 = 4;
      goto LABEL_34;
    case 5uLL:
      if (v3 != 5)
      {
        goto LABEL_37;
      }

      sub_222D45878(5uLL);
      v4 = 5;
      goto LABEL_34;
    case 6uLL:
      if (v3 != 6)
      {
        goto LABEL_37;
      }

      sub_222D45878(6uLL);
      v4 = 6;
      goto LABEL_34;
    case 7uLL:
      if (v3 != 7)
      {
        goto LABEL_37;
      }

      sub_222D45878(7uLL);
      v4 = 7;
      goto LABEL_34;
    case 8uLL:
      if (v3 != 8)
      {
        goto LABEL_37;
      }

      sub_222D45878(8uLL);
      v4 = 8;
      goto LABEL_34;
    case 9uLL:
      if (v3 != 9)
      {
        goto LABEL_37;
      }

      sub_222D45878(9uLL);
      v4 = 9;
      goto LABEL_34;
    case 0xAuLL:
      if (v3 != 10)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xAuLL);
      v4 = 10;
      goto LABEL_34;
    case 0xBuLL:
      if (v3 != 11)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xBuLL);
      v4 = 11;
      goto LABEL_34;
    case 0xCuLL:
      if (v3 != 12)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xCuLL);
      v4 = 12;
      goto LABEL_34;
    case 0xDuLL:
      if (v3 != 13)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xDuLL);
      v4 = 13;
      goto LABEL_34;
    case 0xEuLL:
      if (v3 != 14)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xEuLL);
      v4 = 14;
      goto LABEL_34;
    case 0xFuLL:
      if (v3 != 15)
      {
        goto LABEL_37;
      }

      sub_222D45878(0xFuLL);
      v4 = 15;
      goto LABEL_34;
    default:
      if (v3 >= 0x10)
      {
        v6 = *(v2 + 16);
        v7 = *(v3 + 16);
        if (v6 == 16)
        {
          OUTLINED_FUNCTION_25_6();
          sub_222D45888(0x10uLL);
          if (v7 == 16)
          {
            sub_222D45888(0x10uLL);
            sub_222D45898(0x10uLL);
            sub_222D45878(v2);
            v4 = v3;
LABEL_34:
            sub_222D45878(v4);
            return 1;
          }

          sub_222D45888(v7);
        }

        else
        {
          v10 = *(v2 + 16);
          if (v7 != 16)
          {
            v9 = v7;
            OUTLINED_FUNCTION_25_6();
            sub_222D45888(v6);
            sub_222D45888(v7);
            sub_222D45888(v6);
            v8 = static NLGParameterType.== infix(_:_:)(&v10, &v9);
            sub_222D45878(v7);
            sub_222D45878(v6);
            sub_222D45898(v6);
            sub_222D45878(v2);
            sub_222D45878(v3);
            return (v8 & 1) != 0;
          }

          OUTLINED_FUNCTION_25_6();
          sub_222D45888(v6);
          sub_222D45888(0x10uLL);
          sub_222D45888(v6);
          sub_222D45878(v6);
        }

        sub_222D45898(v6);
        sub_222D45898(v7);
        goto LABEL_38;
      }

LABEL_37:
      OUTLINED_FUNCTION_25_6();
LABEL_38:
      sub_222D45878(v2);
      sub_222D45878(v3);
      return 0;
  }
}

uint64_t static CATValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v74[0] = *a1;
  v74[1] = v3;
  v74[2] = v5;
  v74[3] = v4;
  v75 = v6;
  v76 = v7;
  v77 = v8;
  v78 = v10;
  v79 = v9;
  v80 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {

        goto LABEL_35;
      }

      if (v2 != v7 || v3 != v8)
      {
        OUTLINED_FUNCTION_11_7();
        if ((sub_222D5305C() & 1) == 0)
        {
          v70 = OUTLINED_FUNCTION_5_17();
          sub_222D24948(v70, v71, v72, v73, 1);
          v57 = OUTLINED_FUNCTION_3_19();
          v61 = 1;
          goto LABEL_37;
        }
      }

      if (v5 == v10 && v4 == v9)
      {
        v48 = 1;
        sub_222D24948(v7, v8, v5, v4, 1);
        v66 = OUTLINED_FUNCTION_3_19();
        sub_222D24948(v66, v67, v68, v69, 1);
        sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
      }

      else
      {
        v47 = sub_222D5305C();
        v48 = 1;
        v49 = OUTLINED_FUNCTION_5_17();
        sub_222D24948(v49, v50, v51, v52, 1);
        v53 = OUTLINED_FUNCTION_3_19();
        sub_222D24948(v53, v54, v55, v56, 1);
        sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
        if ((v47 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      return v48 & 1;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_36;
      }

      sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
      if (*&v2 != *&v7)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_35;
      }

      v34 = OUTLINED_FUNCTION_5_17();
      sub_222D24948(v34, v35, v36, v37, 3);
      v38 = OUTLINED_FUNCTION_3_19();
      sub_222D24948(v38, v39, v40, v41, 3);
      v42 = OUTLINED_FUNCTION_6();
      v33 = sub_222D43F54(v42, v43);
      goto LABEL_15;
    case 4:
      if (v11 != 4)
      {
        goto LABEL_35;
      }

      v23 = OUTLINED_FUNCTION_5_17();
      sub_222D24948(v23, v24, v25, v26, 4);
      v27 = OUTLINED_FUNCTION_3_19();
      sub_222D24948(v27, v28, v29, v30, 4);
      v31 = OUTLINED_FUNCTION_6();
      v33 = sub_222D448C0(v31, v32);
LABEL_15:
      v44 = v33;
      sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
      return v44 & 1;
    case 5:
      if (v11 != 5)
      {
        goto LABEL_36;
      }

      sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
      v48 = v7 ^ v2 ^ 1;
      return v48 & 1;
    case 6:
      if (v11 == 6 && !(v8 | v7 | v10 | v9))
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    default:
      if (v11)
      {
LABEL_35:

LABEL_36:
        v57 = OUTLINED_FUNCTION_5_17();
        v61 = v11;
LABEL_37:
        sub_222D24948(v57, v58, v59, v60, v61);
        sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
LABEL_38:
        v48 = 0;
      }

      else
      {
        if (v2 != v7 || v3 != v8)
        {
          v13 = sub_222D5305C();
          v14 = OUTLINED_FUNCTION_5_17();
          sub_222D24948(v14, v15, v16, v17, 0);
          v18 = OUTLINED_FUNCTION_3_19();
          sub_222D24948(v18, v19, v20, v21, 0);
          sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
          return v13 & 1;
        }

        sub_222D24948(v2, v3, v10, v9, 0);
        v62 = OUTLINED_FUNCTION_3_19();
        sub_222D24948(v62, v63, v64, v65, 0);
LABEL_41:
        sub_222CDC53C(v74, &qword_27D03C720, &qword_222D58850);
LABEL_42:
        v48 = 1;
      }

      return v48 & 1;
  }
}

uint64_t sub_222D43F54(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v72 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v73 = (v4 + 63) >> 6;
  v74 = a1;
  while (2)
  {
    if (v6)
    {
      v7 = __clz(__rbit64(v6));
      v76 = (v6 - 1) & v6;
      goto LABEL_13;
    }

    v8 = v3;
    do
    {
      v3 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_67:

        sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
        return 0;
      }

      if (v3 >= v73)
      {
        return 1;
      }

      v9 = *(v72 + 8 * v3);
      ++v8;
    }

    while (!v9);
    v7 = __clz(__rbit64(v9));
    v76 = (v9 - 1) & v9;
LABEL_13:
    v10 = v7 | (v3 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(a1 + 56) + 40 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    v18 = *(v14 + 16);
    v17 = *(v14 + 24);
    v19 = *(v14 + 32);

    v20 = v16;
    v21 = v16;
    v22 = v18;
    v23 = v18;
    v24 = v17;
    sub_222D24948(v15, v21, v23, v17, v19);
    v25 = v13 == 0;
    if (!v13)
    {
      return v25;
    }

    v26 = sub_222CE1050(v12, v13);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      v56 = v15;
      v57 = v20;
      v58 = v22;
      v59 = v24;
      goto LABEL_63;
    }

    v29 = *(v2 + 56) + 40 * v26;
    v30 = *v29;
    v31 = *(v29 + 8);
    v33 = *(v29 + 16);
    v32 = *(v29 + 24);
    v34 = *(v29 + 32);
    v77[0] = *v29;
    v77[1] = v31;
    v77[2] = v33;
    v77[3] = v32;
    v78 = v34;
    v79 = v15;
    v80 = v20;
    v81 = v22;
    v82 = v24;
    v83 = v19;
    v35 = v20;
    v36 = v22;
    v37 = v24;
    switch(v34)
    {
      case 1:
        if (v19 != 1)
        {
          v60 = v33;
          v62 = v32;
          sub_222D24948(v30, v31, v33, v32, 1);

          goto LABEL_61;
        }

        if (v30 != v15 || v31 != v20)
        {
          v52 = v32;
          v53 = v33;
          v54 = sub_222D5305C();
          v33 = v53;
          v32 = v52;
          v36 = v22;
          v37 = v24;
          if ((v54 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        if (v33 != v36 || v32 != v37)
        {
          v39 = sub_222D5305C();

          goto LABEL_42;
        }

        goto LABEL_52;
      case 2:
        if (v19 != 2)
        {
          goto LABEL_62;
        }

        sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
        a1 = v74;
        v2 = a2;
        v6 = v76;
        v25 = 0;
        if (*&v30 != *&v15)
        {
          return v25;
        }

        continue;
      case 3:
        v40 = v30;
        v41 = v31;
        if (v19 == 3)
        {
          v49 = v32;
          v50 = v33;
          sub_222D24948(v30, v31, v33, v32, 3);
          sub_222D24948(v30, v31, v50, v49, 3);
          sub_222D24948(v15, v20, v22, v24, 3);
          v71 = sub_222D43F54(v30, v15);
          sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
          sub_222D249C4(v30, v31, v50, v49, 3);
          v44 = v15;
          v45 = v20;
          v46 = v22;
          v47 = v24;
          v48 = 3;
LABEL_29:
          sub_222D249C4(v44, v45, v46, v47, v48);
          a1 = v74;
          v2 = a2;
          v6 = v76;
          v25 = 0;
          if ((v71 & 1) == 0)
          {
            return v25;
          }

          continue;
        }

        v60 = v33;
        v61 = v33;
        v62 = v32;
        v63 = v32;
        v64 = 3;
LABEL_58:
        sub_222D24948(v40, v41, v61, v63, v64);
LABEL_61:

        v37 = v24;
        v36 = v22;
        v35 = v20;
        v32 = v62;
        v33 = v60;
LABEL_62:
        v65 = v36;
        v66 = v37;
        v67 = v35;
        v68 = v32;
        v69 = v33;
        sub_222D24948(v15, v35, v36, v37, v19);
        sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
        sub_222D249C4(v30, v31, v69, v68, v34);
        v56 = v15;
        v57 = v67;
        v58 = v65;
        v59 = v66;
LABEL_63:
        sub_222D249C4(v56, v57, v58, v59, v19);
        return 0;
      case 4:
        v40 = v30;
        v41 = v31;
        if (v19 != 4)
        {
          v60 = v33;
          v61 = v33;
          v62 = v32;
          v63 = v32;
          v64 = 4;
          goto LABEL_58;
        }

        v42 = v32;
        v43 = v33;
        sub_222D24948(v30, v31, v33, v32, 4);
        sub_222D24948(v30, v31, v43, v42, 4);
        sub_222D24948(v15, v20, v22, v24, 4);
        v71 = sub_222D448C0(v30, v15);
        sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
        sub_222D249C4(v30, v31, v43, v42, 4);
        v44 = v15;
        v45 = v20;
        v46 = v22;
        v47 = v24;
        v48 = 4;
        goto LABEL_29;
      case 5:
        if (v19 != 5)
        {
          goto LABEL_62;
        }

        sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
        a1 = v74;
        v2 = a2;
        v6 = v76;
        v25 = 0;
        if ((v30 ^ v15))
        {
          return v25;
        }

        continue;
      case 6:
        if (v19 != 6)
        {
          goto LABEL_62;
        }

        if (!(v20 | v15 | v22 | v24))
        {
          goto LABEL_53;
        }

        LOBYTE(v19) = 6;
        goto LABEL_62;
      default:
        if (v19)
        {
          v60 = v33;
          v62 = v32;
          sub_222D24948(v30, v31, v33, v32, 0);
          goto LABEL_61;
        }

        if (v30 == v15 && v31 == v20)
        {
LABEL_52:

LABEL_53:
          sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
          a1 = v74;
          v2 = a2;
          v6 = v76;
        }

        else
        {
          v39 = sub_222D5305C();
LABEL_42:

          sub_222CDC53C(v77, &qword_27D03C720, &qword_222D58850);
          a1 = v74;
          v2 = a2;
          v6 = v76;
          v25 = 0;
          if ((v39 & 1) == 0)
          {
            return v25;
          }
        }

        continue;
    }
  }
}

uint64_t sub_222D445CC(uint64_t result, uint64_t a2)
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
  v31 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v32 = (v4 + 63) >> 6;
  v33 = result;
  while (v6)
  {
    v7 = __clz(__rbit64(v6));
    v8 = (v6 - 1) & v6;
LABEL_13:
    v11 = v7 | (v3 << 6);
    v12 = (*(result + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(result + 56) + (v11 << 6));
    v16 = *(v15 + 4);
    v17 = *(v15 + 3);
    v38 = *(v15 + 8);
    v18 = *(v15 + 6);
    v34 = *(v15 + 1);
    v35 = *(v15 + 5);
    v19 = *(v15 + 7);
    v20 = *v15;
    v36 = v13 == 0;

    if (!v13)
    {
      return 1;
    }

    v37 = v8;
    v21 = sub_222CE1050(v14, v13);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_46;
    }

    v24 = (*(a2 + 56) + (v21 << 6));
    v25 = *v24;
    v26 = *(v24 + 6);
    v27 = *(v24 + 7);
    if (v25 == 2)
    {
      if (v20 != 2)
      {
        goto LABEL_46;
      }
    }

    else if (v20 == 2 || ((v25 ^ v20) & 1) != 0)
    {
      goto LABEL_46;
    }

    if (v24[16])
    {
      if ((v16 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if ((v16 & 1) != 0 || *(v24 + 1) != v34)
    {
      goto LABEL_46;
    }

    if (v24[32])
    {
      if ((v38 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    else if ((v38 & 1) != 0 || *(v24 + 3) != v17)
    {
      goto LABEL_46;
    }

    if (v26)
    {
      if (!v18)
      {
        goto LABEL_47;
      }

      v28 = *(v24 + 5) == v35 && v26 == v18;
      if (!v28 && (sub_222D5305C() & 1) == 0)
      {
LABEL_46:

LABEL_47:

        return 0;
      }
    }

    else if (v18)
    {
      goto LABEL_46;
    }

    if (v27)
    {
      if (!v19)
      {
        goto LABEL_46;
      }

      v29 = sub_222D445CC(v27, v19);

      swift_bridgeObjectRelease_n();
      result = v33;
      v6 = v37;
      v30 = v36;
      if ((v29 & 1) == 0)
      {
        return v30;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_46;
      }

      result = v33;
      v6 = v37;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v32)
    {
      return 1;
    }

    v10 = *(v31 + 8 * v3);
    ++v9;
    if (v10)
    {
      v7 = __clz(__rbit64(v10));
      v8 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_222D448C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 64);
  v4 = (a1 + 64);
  while (2)
  {
    v6 = *(v4 - 4);
    v5 = *(v4 - 3);
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v10 = *v4;
    v4 += 5;
    v9 = v10;
    v11 = *(v3 - 4);
    v12 = *(v3 - 3);
    v14 = *(v3 - 2);
    v13 = *(v3 - 1);
    v16 = *v3;
    v3 += 5;
    v15 = v16;
    v64[0] = v6;
    v64[1] = v5;
    v64[2] = v8;
    v64[3] = v7;
    v65 = v9;
    v66 = v11;
    v67 = v12;
    v68 = v14;
    v69 = v13;
    v70 = v16;
    switch(v9)
    {
      case 1:
        if (v15 != 1)
        {
          v50 = v5;
          v62 = v8;
          v51 = v7;
          sub_222D24948(v6, v5, v8, v7, 1);
          v44 = v50;

          v46 = v51;
          goto LABEL_51;
        }

        if (v6 != v11 || v5 != v12)
        {
          v35 = v5;
          v63 = v8;
          v58 = v7;
          v36 = sub_222D5305C();
          v5 = v35;
          v8 = v63;
          v7 = v58;
          if ((v36 & 1) == 0)
          {
            sub_222D24948(v11, v12, v14, v13, 1);
            sub_222D24948(v6, v35, v63, v58, 1);
            sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
            return 0;
          }
        }

        v61 = v5;
        if (v8 != v14 || v7 != v13)
        {
          v38 = v8;
          v39 = v7;
          v55 = sub_222D5305C();
          sub_222D24948(v11, v12, v14, v13, 1);
          v20 = v6;
          v21 = v61;
          v22 = v38;
          v23 = v39;
          v24 = 1;
          goto LABEL_31;
        }

        v41 = v8;
        v17 = v7;
        sub_222D24948(v11, v12, v8, v7, 1);
        v40 = v61;
        goto LABEL_42;
      case 2:
        if (v15 != 2)
        {
          goto LABEL_52;
        }

        sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
        if (*&v6 != *&v11)
        {
          return 0;
        }

        goto LABEL_44;
      case 3:
        v62 = v8;
        if (v15 != 3)
        {
          v43 = v6;
          v44 = v5;
          v45 = v8;
          v46 = v7;
          v47 = v7;
          v48 = 3;
          goto LABEL_48;
        }

        v32 = v5;
        v57 = v7;
        v60 = v5;
        v33 = v7;
        sub_222D24948(v11, v12, v14, v13, 3);
        sub_222D24948(v6, v32, v62, v33, 3);
        sub_222D24948(v11, v12, v14, v13, 3);
        sub_222D24948(v6, v60, v62, v57, 3);
        v55 = sub_222D43F54(v6, v11);
        sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
        sub_222D249C4(v11, v12, v14, v13, 3);
        v27 = v6;
        v28 = v60;
        v29 = v62;
        v30 = v57;
        v31 = 3;
        goto LABEL_19;
      case 4:
        v62 = v8;
        if (v15 == 4)
        {
          v25 = v5;
          v56 = v7;
          v59 = v5;
          v26 = v7;
          sub_222D24948(v11, v12, v14, v13, 4);
          sub_222D24948(v6, v25, v62, v26, 4);
          sub_222D24948(v11, v12, v14, v13, 4);
          sub_222D24948(v6, v59, v62, v56, 4);
          v55 = sub_222D448C0(v6, v11);
          sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
          sub_222D249C4(v11, v12, v14, v13, 4);
          v27 = v6;
          v28 = v59;
          v29 = v62;
          v30 = v56;
          v31 = 4;
LABEL_19:
          sub_222D249C4(v27, v28, v29, v30, v31);
LABEL_32:
          if ((v55 & 1) == 0)
          {
            return 0;
          }

LABEL_44:
          if (!--v2)
          {
            return 1;
          }

          continue;
        }

        v43 = v6;
        v44 = v5;
        v45 = v8;
        v46 = v7;
        v47 = v7;
        v48 = 4;
LABEL_48:
        sub_222D24948(v43, v5, v45, v47, v48);
LABEL_51:

        v7 = v46;
        v8 = v62;
        v5 = v44;
LABEL_52:
        v52 = v5;
        v53 = v8;
        v54 = v7;
        sub_222D24948(v11, v12, v14, v13, v15);
        sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
        sub_222D249C4(v6, v52, v53, v54, v9);
        return 0;
      case 5:
        if (v15 != 5)
        {
          goto LABEL_52;
        }

        sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
        if ((v11 ^ v6))
        {
          return 0;
        }

        goto LABEL_44;
      case 6:
        if (v15 != 6)
        {
          goto LABEL_52;
        }

        if (!(v12 | v11 | v14 | v13))
        {
          goto LABEL_43;
        }

        LOBYTE(v15) = 6;
        goto LABEL_52;
      default:
        v62 = v8;
        if (v15)
        {
          v49 = v5;
          v46 = v7;
          sub_222D24948(v6, v5, v8, v7, 0);
          v44 = v49;
          goto LABEL_51;
        }

        v17 = v7;
        if (v6 != v11 || v5 != v12)
        {
          v19 = v5;
          v55 = sub_222D5305C();
          sub_222D24948(v11, v12, v14, v13, 0);
          v20 = v6;
          v21 = v19;
          v22 = v62;
          v23 = v17;
          v24 = 0;
LABEL_31:
          sub_222D24948(v20, v21, v22, v23, v24);
          sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
          goto LABEL_32;
        }

        v40 = v5;
        sub_222D24948(v6, v5, v14, v13, 0);
        v41 = v62;
LABEL_42:
        sub_222D24948(v6, v40, v41, v17, v9);
LABEL_43:
        sub_222CDC53C(v64, &qword_27D03C720, &qword_222D58850);
        goto LABEL_44;
    }
  }
}